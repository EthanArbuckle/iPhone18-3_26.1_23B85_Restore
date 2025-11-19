uint64_t sub_1C4426A00(uint64_t result)
{
  *(v2 - 88) = result;
  v3 = *(v1 + 16);
  return result;
}

uint64_t sub_1C4426A0C(uint64_t a1, uint64_t a2)
{
  *(v2 - 112) = a1;
  *(v2 - 104) = a2;
  return 0;
}

void sub_1C4426A30(uint64_t a1@<X8>)
{
  *(v6 + a1) = v1;
  v7 = (v6 + v5[7]);
  *v7 = v3;
  v7[1] = v4;
  *(v6 + v5[8]) = v2;
  v8 = v5[9];
}

void sub_1C4426A80()
{
  if (*(*v0 + 24) > v1)
  {
    v2 = *(*v0 + 24);
  }
}

uint64_t sub_1C4426AB8(uint64_t a1, uint64_t a2)
{

  return sub_1C446C964(a1, a2, v2, v3);
}

uint64_t sub_1C4426B00()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_1C4426B20(uint64_t a1, uint64_t a2)
{

  return sub_1C446C964(a1, a2, v2, v3);
}

uint64_t sub_1C4426B60()
{
  v2 = **(v1 - 160);
  result = v0;
  v4 = *(v1 - 112);
  return result;
}

void sub_1C4426B80()
{
  *(v2 - 120) = v1;
  *(v2 - 112) = v1 + 56;
  v3 = ~(-1 << *(v1 + 32));
  *(v2 - 104) = v0 + 16;
  *(v2 - 128) = v0 + 8;
}

uint64_t sub_1C4426BD4()
{

  return sqlite3_column_type(v1, v0);
}

uint64_t sub_1C4426C64()
{
}

uint64_t sub_1C4426C90(uint64_t a1)
{
  v3 = (v1 + *(a1 + 44));
  v4 = *v3;
  v5 = v3[1];

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4426CD4()
{
  v1 = *(v0 - 104);
  result = *(v0 - 168);
  v3 = *(v0 - 160);
  v4 = *(v0 - 152);
  v5 = *(v0 - 144);
  return result;
}

id sub_1C4426D1C(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_1C4426D4C(uint64_t a1, unint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return sub_1C441D828(a1, a2, va);
}

uint64_t sub_1C4426D64()
{

  return swift_once();
}

uint64_t sub_1C4426D9C()
{

  return sub_1C4B0E424(0x6F436C6174736F70, 0xEA00000000006564, v0);
}

uint64_t sub_1C4426DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  *(v8 - 348) = a8;
  *(v8 - 360) = a7;
  *(v8 - 368) = a6;
  *(v8 - 344) = a5;
  *(v8 - 224) = a3;
  v10 = *(v8 + 40);
  *(v8 - 208) = *(v8 + 32);
  *(v8 - 200) = v10;

  return sub_1C4F00DD8();
}

uint64_t sub_1C4426E18()
{

  return swift_once();
}

uint64_t sub_1C4426E84()
{

  return swift_once();
}

uint64_t sub_1C4426EA4(__n128 a1, uint64_t a2, __n128 *a3)
{
  a3[3] = a1;
  a3[4].n128_u8[0] = 0;

  return swift_willThrow();
}

uint64_t sub_1C4426ECC()
{
  result = v0;
  *(v2 - 208) = v1;
  return result;
}

uint64_t sub_1C4426F2C()
{

  return sub_1C4F025E8();
}

void sub_1C4426F4C()
{

  sub_1C459E828();
}

double sub_1C4426F6C()
{
  v2 = *(v1 + 376);
  v3 = *(v1 + 352);
  v4 = *(v1 + 360);
  v5 = *(v1 + 344);
  v10 = *(v1 + 328);
  v7 = *(v1 + 312);
  v6 = *(v1 + 320);
  v8 = *(v1 + 304);
  *(v0 + 32) = 0;
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  return result;
}

uint64_t sub_1C4426F9C()
{
  v2 = *(v0 + 16);

  return swift_beginAccess();
}

uint64_t sub_1C4426FDC(float a1)
{
  *v1 = a1;
  *(v2 - 192) = 0;
  *(v2 - 184) = 0xE000000000000000;

  return sub_1C4F02248();
}

uint64_t sub_1C4427000()
{
  result = *(v0 - 256);
  v3 = *(v1 - 296);
  return result;
}

uint64_t sub_1C4427028()
{
  v2 = *(v1 - 248);
  v3 = *(*(v1 - 256) + 8);
  return v0;
}

uint64_t sub_1C442704C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*(v2 - 216) + 16);
  result = v1 + a1;
  v5 = *(v2 - 72);
  return result;
}

uint64_t sub_1C4427064()
{
  result = v0 - 72;
  v2 = *(v0 - 216);
  return result;
}

uint64_t type metadata accessor for KeyValueStore()
{
  result = qword_1EDDFF420;
  if (!qword_1EDDFF420)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C44270DC()
{
  sub_1C43FD97C();
  v1 = sub_1C4411EC0();
  sub_1C442711C(v1);
  os_unfair_lock_unlock(v0 + 6);
}

uint64_t sub_1C442715C(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  v8 = *a1;
  swift_beginAccess();
  v9 = *(v8 + 16);
  sub_1C43FE83C();
  if (v11)
  {
    v12 = v10;
    v13 = *(v8 + 16);
    swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v8 + 16);
    v14 = v20[3];
    sub_1C456902C(a3, a4);
    sub_1C4F02458();
    v15 = v20[6];
    v16 = sub_1C4EF98F8();
    sub_1C43FBCE0(v16);
    (*(v17 + 8))(v15 + *(v17 + 72) * v12, v16);
    v18 = *(v20[7] + 8 * v12);
    a5(0);
    sub_1C494A7D4(&qword_1EDDFFA00, MEMORY[0x1E6968FB0]);
    sub_1C4F02478();
    *(v8 + 16) = v20;
  }

  return swift_endAccess();
}

void sub_1C4427314()
{
  sub_1C43FD97C();
  v1 = sub_1C4411EC0();
  sub_1C44272D4(v1);
  os_unfair_lock_unlock(v0 + 6);
}

void sub_1C4427394()
{
  sub_1C43FD97C();
  v1 = sub_1C4411EC0();
  sub_1C4427354(v1);
  os_unfair_lock_unlock(v0 + 6);
}

uint64_t sub_1C44273D4()
{
  sub_1C43FC784();
  v1 = sub_1C43FDCD8();
  sub_1C44274E4(v1, v2);
  sub_1C4461D38();
  if (v0)
  {
    return sub_1C440246C();
  }

  if (v4)
  {
    if (qword_1EDDFEC88 != -1)
    {
      sub_1C4410E64();
    }

    return sub_1C440246C();
  }

  sub_1C443288C();
  result = sub_1C44122F4();
  __break(1u);
  return result;
}

uint64_t sub_1C4427468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1C43FE424(a1, a2, sub_1C44019F8, type metadata accessor for ViewDatabase, sub_1C44FC100, sub_1C4662528);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C4427500()
{
  sub_1C43FBCD4();
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1C442F080;
  v3 = sub_1C4414C5C();

  return sub_1C4428070(v3, v0);
}

uint64_t sub_1C4427590(uint64_t a1, __int16 a2, char a3, char a4, char a5, _BYTE *a6)
{
  *(v7 + 69) = a5;
  *(v7 + 68) = a4;
  *(v7 + 67) = a3;
  *(v7 + 64) = a2;
  *(v7 + 16) = a1;
  *(v7 + 24) = v6;
  *(v7 + 70) = *a6;
  return sub_1C43FEB04();
}

void sub_1C44275BC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 64);

  sub_1C4428D8C(v1, v3);
  sub_1C441E858(OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate7Manager_liveState);
  sub_1C4426228();
  sub_1C44276F4(v4);
  if (v3)
  {

    os_unfair_lock_unlock(v1 + 6);
  }

  else
  {
    v5 = *(v0 + 70);
    v6 = *(v0 + 24);
    os_unfair_lock_unlock(v1 + 6);
    *(v0 + 32) = v15;
    v7 = *(v6 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate7Manager_synchronizedUpdater);
    *(v0 + 66) = v5;
    v8 = swift_task_alloc();
    *(v0 + 40) = v8;
    *v8 = v0;
    v8[1] = sub_1C4474EA0;
    v9 = *(v0 + 69);
    v10 = *(v0 + 68);
    v11 = *(v0 + 67);
    v13 = *(v0 + 16);
    v12 = *(v0 + 24);
    v14 = *(v0 + 64);

    sub_1C4428090(v13, v14, v11, v10, v9, (v0 + 66), v12);
  }
}

uint64_t sub_1C442770C()
{
  v17 = v0;
  v1 = *(v0 + 100);
  v2 = *(v0 + 99);
  v3 = *(v0 + 98);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 96);
  v16[0] = *(v0 + 101);
  updated = type metadata accessor for ViewUpdate.ViewUpdateJob(0);
  v8 = *(updated + 48);
  v9 = *(updated + 52);
  swift_allocObject();
  sub_1C4428D8C(v5, v6);

  v11 = sub_1C44280C0(v10, v5, v6, v3, v2, v1, v16);
  *(v0 + 40) = updated;
  *(v0 + 48) = &off_1F440C260;
  *(v0 + 16) = v11;
  swift_task_alloc();
  sub_1C43FBE70();
  *(v0 + 80) = v12;
  *v12 = v13;
  sub_1C443397C(v12);
  sub_1C440A264();

  return sub_1C4427880();
}

uint64_t sub_1C4427880()
{
  sub_1C43FBCD4();
  v1[6] = v2;
  v1[7] = v0;
  v3 = _s12JobSchedulerC13JobIdentifierVMa(0);
  v1[8] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4428220, v0, 0);
}

uint64_t sub_1C4427910()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  sub_1C440B750();
  v5 = sub_1C4428DF0(v3, v4);
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  v12 = *(v0 + 32);
  *(v6 + 16) = v2;
  *(v6 + 24) = v12;
  *(v6 + 40) = v1;
  v7 = *(MEMORY[0x1E69E8920] + 4);
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  v9 = sub_1C456902C(&unk_1EC0C6118, &unk_1C4F6A7E0);
  *v8 = v0;
  v8[1] = sub_1C4474460;
  v10 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v10, v12, v5, 0xD000000000000010, 0x80000001C4FC4600, sub_1C442848C, v6, v9);
}

uint64_t sub_1C4427A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C4427910, a3, 0);
}

uint64_t sub_1C4427A88(void (*a1)(uint64_t))
{
  v2 = v1;
  v4 = sub_1C4F018C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v7);
  v10 = OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_didEmitTooManyJobsFault;
  if ((*(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_didEmitTooManyJobsFault) & 1) == 0)
  {
    v11 = OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_jobs;
    swift_beginAccess();
    if (sub_1C4428DA0(*(v2 + v11)) >= 11)
    {
      *(v2 + v10) = 1;
      if (qword_1EDDFD018 != -1)
      {
        swift_once();
      }

      v12 = sub_1C4F00978();
      sub_1C442B738(v12, qword_1EDE2DDF8);

      v13 = sub_1C4F00968();
      v14 = sub_1C4F01CE8();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v31 = v29;
        *v15 = 134218242;
        *(v15 + 4) = sub_1C4428DA0(*(v2 + v11));

        *(v15 + 12) = 2080;
        v16 = *(v2 + v11);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4C529A0(10, v16);
        v30 = v5;
        _s12JobSchedulerC10JobTrackerCMa(0);
        v17 = sub_1C4F02088();
        v19 = v18;
        swift_unknownObjectRelease();
        v20 = sub_1C441D828(v17, v19, &v31);
        v5 = v30;

        *(v15 + 14) = v20;
        _os_log_impl(&dword_1C43F8000, v13, v14, "ViewUpdate.JobScheduler/Mutate: Exceeded 10 pending View jobs. Currently have %ld jobs: %s", v15, 0x16u);
        v21 = v29;
        sub_1C440962C(v29);
        MEMORY[0x1C6942830](v21, -1, -1);
        MEMORY[0x1C6942830](v15, -1, -1);
      }

      else
      {
      }
    }
  }

  if (*(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_executionLoop))
  {
    v22 = *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_currentlyRunningJob);
    if (v22)
    {
      v23 = *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_currentlyRunningJob);

      v24 = sub_1C4428BF0();
      v25 = v24;
      if (v24 && v24 != v22)
      {
        sub_1C44FFA6C();
        v26 = v25[5];
        v27 = v25[6];
        sub_1C4409678(v25 + 2, v26);
        (*(v27 + 8))(&v31, v26, v27);
        if (v31 >= 2u)
        {
          sub_1C4F018A8();
        }

        else
        {
          sub_1C4F01898();
        }

        sub_1C44FFDE4(v9);

        (*(v5 + 8))(v9, v4);
      }

      else
      {
        if (*(v22 + OBJC_IVAR____TtCCO24IntelligencePlatformCore10ViewUpdate12JobScheduler10JobTracker_cancelled) == 1)
        {
          sub_1C44FFA6C();
        }
      }
    }
  }

  else
  {
    sub_1C4429198();
  }

  return sub_1C44293C4();
}

uint64_t sub_1C4427E50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C4427EF8()
{
  sub_1C44249B4();
  sub_1C4404D98();
  sub_1C440A280();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  sub_1C4432DFC(v1);
  sub_1C442642C();

  return sub_1C442804C(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1C4427F84()
{
  sub_1C4475B28();
  v9 = v1;
  sub_1C43FEAEC();
  sub_1C44BBF4C();
  sub_1C440FE6C();
  sub_1C4430798();
  sub_1C446073C(MEMORY[0x1E69E7CD0]);
  sub_1C4408120();
  v2 = *(v0 + 4);
  v3 = swift_task_alloc();
  v4 = sub_1C447FAC0(v3);
  *v4 = v5;
  v6 = sub_1C4401314(v4);

  return v7(v6);
}

uint64_t sub_1C442804C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[8] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1C4427F84, 0, 0);
}

uint64_t sub_1C4428090(uint64_t a1, __int16 a2, char a3, char a4, char a5, _BYTE *a6, uint64_t a7)
{
  *(v8 + 64) = a7;
  *(v8 + 72) = v7;
  *(v8 + 100) = a5;
  *(v8 + 99) = a4;
  *(v8 + 98) = a3;
  *(v8 + 96) = a2;
  *(v8 + 56) = a1;
  *(v8 + 101) = *a6;
  return sub_1C4413C08();
}

uint64_t sub_1C44280C0(uint64_t a1, unint64_t a2, unsigned int a3, char a4, char a5, char a6, unsigned __int8 *a7)
{
  v14 = *a7;
  swift_defaultActor_initialize();
  *(v7 + 112) = 0;
  _s7MetricsO7PayloadVMa();
  sub_1C43FCF64();
  sub_1C440BAA8(v15, v16, v17, v18);
  if (v14 != 3)
  {
    goto LABEL_4;
  }

  if ((a3 & 0x8000) == 0)
  {
    goto LABEL_3;
  }

  if (BYTE2(a2))
  {
    if (BYTE2(a2) == 1)
    {
      LOBYTE(v14) = 0;
      goto LABEL_4;
    }

LABEL_3:
    LOBYTE(v14) = 2;
    goto LABEL_4;
  }

  if (a2)
  {
    goto LABEL_3;
  }

  LOBYTE(v14) = 1;
LABEL_4:
  *(v7 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate13ViewUpdateJob_priority) = v14;
  *(v7 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate13ViewUpdateJob_type) = 0;
  if (a3 >> 14)
  {
    if (a3 >> 14 == 1)
    {
      LODWORD(v19) = (a3 >> 8) & 0x3F;
    }

    else
    {
      v19 = a2 >> 16;
    }
  }

  else
  {
    LOBYTE(v19) = a2;
  }

  *(v7 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate13ViewUpdateJob_updateContext) = v19;
  v20 = v7 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate13ViewUpdateJob_viewQuery;
  *v20 = a2;
  *(v20 + 8) = a3;
  if (a5)
  {
    v21 = 2;
  }

  else
  {
    v21 = 0;
  }

  if (a4)
  {
    v21 = 1;
  }

  *(v7 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate13ViewUpdateJob_runMode) = v21;
  *(v7 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate13ViewUpdateJob_checkSLA) = a6 & 1;
  *(v7 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate13ViewUpdateJob_manager) = a1;
  return v7;
}

uint64_t sub_1C4428220()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  v1 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  *v2 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v5 = v2 + *(v1 + 20);
  sub_1C4EF9058();
  _s12JobSchedulerC13WrappedCancelCMa();
  inited = swift_initStackObject();
  v0[10] = inited;
  *(inited + 16) = 0;
  v7 = swift_task_alloc();
  v0[11] = v7;
  v7[2] = inited;
  v7[3] = v3;
  v7[4] = v4;
  v7[5] = v2;
  v8 = swift_task_alloc();
  v0[12] = v8;
  v8[2] = inited;
  v8[3] = v3;
  v8[4] = v2;
  sub_1C440B750();
  sub_1C4428DF0(v9, v10);
  v11 = *(MEMORY[0x1E69E88F0] + 4);
  v12 = swift_task_alloc();
  v0[13] = v12;
  sub_1C456902C(&unk_1EC0C6118, &unk_1C4F6A7E0);
  *v12 = v0;
  v12[1] = sub_1C4475148;
  sub_1C4426C44();

  return MEMORY[0x1EEE6DE18](v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_1C44283C4()
{
  if (MEMORY[0x1E69E7D58])
  {
    return sub_1C456902C(&qword_1EC0C60F8, &qword_1C4F6A538);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1C44283F4()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  sub_1C44048B0();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = sub_1C43FCF54(v3);
  *v4 = v5;
  sub_1C4408024(v4);
  sub_1C4426C44();

  return sub_1C4427A60(v6, v7, v8, v9, v10);
}

uint64_t sub_1C442848C(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  return sub_1C4428498(a1, v1[2]);
}

uint64_t sub_1C4428498(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + 16);
  v3 = atomic_load((a2 + 16));
  if (v3)
  {
    sub_1C4F01828();
    sub_1C4428DF0(&qword_1EDDFCF00, MEMORY[0x1E69E8550]);
    swift_allocError();
    sub_1C4F00EA8();
    sub_1C456902C(&qword_1EC0C6128, &qword_1C4F6A840);
    return sub_1C4F01808();
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    result = sub_1C4427A88(sub_1C4428800);
    v5 = atomic_load(v2);
    if (v5)
    {
      MEMORY[0x1EEE9AC00](result);
      return sub_1C4427A88(sub_1C4CDD38C);
    }
  }

  return result;
}

uint64_t sub_1C4428608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = _s12JobSchedulerC13JobIdentifierVMa(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v24[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C442E860(a2, v24);
  sub_1C4427E50(a3, v11, _s12JobSchedulerC13JobIdentifierVMa);
  sub_1C456902C(&unk_1EC0C6130, &qword_1C4F6A880);
  v12 = sub_1C456902C(&qword_1EC0C6128, &qword_1C4F6A840);
  v13 = *(v12 - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1C4F0D130;
  (*(v13 + 16))(v16 + v15, a4, v12);
  v17 = _s12JobSchedulerC10JobTrackerCMa(0);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  sub_1C4428870(v24, v11, v16);
  v20 = OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_jobs;
  v21 = swift_beginAccess();
  MEMORY[0x1C6940330](v21);
  sub_1C4427EF0(*((*(a1 + v20) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_1C4F01748();
  return swift_endAccess();
}

uint64_t sub_1C442880C(uint64_t a1, uint64_t a2)
{
  v4 = _s12JobSchedulerC13JobIdentifierVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4428870(void *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + OBJC_IVAR____TtCCO24IntelligencePlatformCore10ViewUpdate12JobScheduler10JobTracker_continuations) = MEMORY[0x1E69E7CC0];
  v11 = *(a1 + 3);
  v7 = a1[3];
  v8 = sub_1C4409678(a1, v7);
  *(v3 + 40) = v11;
  v9 = sub_1C4422F90((v3 + 16));
  (*(*(v7 - 8) + 16))(v9, v8, v7);
  sub_1C442880C(a2, v3 + OBJC_IVAR____TtCCO24IntelligencePlatformCore10ViewUpdate12JobScheduler10JobTracker_identifier);
  *(v3 + OBJC_IVAR____TtCCO24IntelligencePlatformCore10ViewUpdate12JobScheduler10JobTracker_cancelled) = 0;
  *(v3 + OBJC_IVAR____TtCCO24IntelligencePlatformCore10ViewUpdate12JobScheduler10JobTracker_continuations) = a3;
  sub_1C440962C(a1);
  return v3;
}

uint64_t sub_1C4428958()
{
  v2 = *(v0 - 328);
  v3 = *(v0 - 320);

  return sub_1C4434000(v2, v3);
}

uint64_t sub_1C4428988(uint64_t result)
{
  **(v1 - 120) = result;
  *(v1 - 96) = 1;
  return result;
}

uint64_t sub_1C442899C()
{

  return sub_1C4F02798();
}

uint64_t sub_1C44289D0()
{
  v2 = *(v0 - 520);
  v3 = *(v0 - 528);

  return sub_1C44239FC(v2);
}

uint64_t sub_1C44289FC()
{

  return sub_1C4EFD548();
}

void sub_1C4428A40(uint64_t a1@<X8>)
{
  v2[24] = v1;
  v2[25] = v3;
  v2[23] = a1;
  v4 = *(v2[20] + 16);
}

uint64_t sub_1C4428A74()
{

  return sub_1C4F02618();
}

uint64_t sub_1C4428A8C()
{
  *(v3 - 224) = v0;
  v4 = *(v1 + 8);
  return v2;
}

void sub_1C4428AAC()
{
  v2 = (v0 + *(v1 + 44));
  *v2 = 0;
  v2[1] = 0;
  v3 = *(v1 + 48);
}

uint64_t sub_1C4428AD0()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 40);
  sub_1C440EEA0();
  Strong = swift_weakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {
    *(v0 + 72) = 3;
    v3 = swift_task_alloc();
    *(v0 + 56) = v3;
    *v3 = v0;
    v3[1] = sub_1C44748C4;

    return sub_1C4427590(0, 0x8000, 0, 0, 1, (v0 + 72));
  }

  else
  {
    sub_1C43FBDA0();

    return v5();
  }
}

uint64_t sub_1C4428BC4(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_1C4F016D8();
  }

  return result;
}

uint64_t sub_1C4428BF0()
{
  v1 = OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_jobs;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C4F02128())
  {
    v4 = v2 & 0xC000000000000001;
    sub_1C4431590(0, (v2 & 0xC000000000000001) == 0);
    if ((v2 & 0xC000000000000001) != 0)
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v5 = MEMORY[0x1C6940F90](0, v2);
    }

    else
    {
      v5 = *(v2 + 32);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    for (j = 1; ; ++j)
    {
      if (i == j)
      {

        return v5;
      }

      sub_1C4431590(j, v4 == 0);
      if (v4)
      {
        v7 = MEMORY[0x1C6940F90](j, v2);
      }

      else
      {
        v7 = *(v2 + 8 * j + 32);
      }

      if (__OFADD__(j, 1))
      {
        break;
      }

      v8 = sub_1C44FFC84();
      v9 = sub_1C44FFC84();
      v10 = sub_1C44FFD74(v9, v8);

      if (v10)
      {
        v5 = v7;
      }
    }

    __break(1u);
LABEL_15:
    ;
  }

  return 0;
}

uint64_t sub_1C4428D8C(uint64_t a1, __int16 a2)
{
  if ((a2 & 0xC000) == 0x4000)
  {
    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  return result;
}

uint64_t _s7MetricsO7PayloadVMa()
{
  result = qword_1EDDEBD30;
  if (!qword_1EDDEBD30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4428DF0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C4428E88()
{
  *(v4 + 16) = v5;
  v7 = (v4 + 32 * v0);
  v7[4] = v1;
  v7[5] = v3;
  v7[6] = v6;
  v7[7] = v2;
}

uint64_t sub_1C4428EA4()
{

  return sub_1C4EF93B8();
}

uint64_t sub_1C4428EC4()
{
  v2 = *(v0 - 720);
  v3 = *(v0 - 736);

  return sub_1C44239FC(v2);
}

uint64_t sub_1C4428F00()
{
  result = v0;
  v3 = *(v1 - 152);
  v4 = *(v1 - 192);
  return result;
}

uint64_t sub_1C4428F30()
{
  v3 = v0 + *(v1 + 28);

  return sub_1C4EFEC38();
}

uint64_t sub_1C4428F48()
{
  v2 = *(v0 + 20);

  return sub_1C4EFEEF8();
}

uint64_t sub_1C4428F60(uint64_t a1, _BYTE *a2)
{
  *a2 = 5;
  *(v2 - 120) = a1;

  return swift_willThrow();
}

uint64_t sub_1C4428F80()
{

  return type metadata accessor for FAFamilyStructs.GroupRelationshipType(0);
}

uint64_t sub_1C4428FA0()
{

  return sub_1C4F027E8();
}

uint64_t sub_1C4428FCC()
{
  *(v0 + 240) = *(v1 + 1104);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4429060()
{

  return sub_1C44DDE2C();
}

uint64_t sub_1C4429078()
{
  v2 = *(v0 - 1048);
  v3 = *(v0 - 1056);

  return sub_1C44239FC(v2);
}

uint64_t sub_1C4429098()
{
}

uint64_t sub_1C44290B0(uint64_t result)
{
  v1 = *(result + 24);
  v2 = *(result + 16) + 1;
  return result;
}

uint64_t sub_1C44290C4()
{
  v3 = *(v1 - 88);

  return sub_1C4471BAC(v0, v3);
}

void sub_1C44290F0()
{

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C4429150()
{

  return swift_beginAccess();
}

uint64_t sub_1C4429198()
{
  v1 = v0;
  v2 = sub_1C456902C(&qword_1EC0BC660, &qword_1C4F29150);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20[-v7];
  v9 = sub_1C4428BF0();
  if (v9)
  {
    sub_1C442E860(v9 + 16, v21 + 1);

    v10 = v22;
    v11 = v23;
    sub_1C4409678((v21 + 1), v22);
    (*(v11 + 8))(v21, v10, v11);
    if (LOBYTE(v21[0]) >= 2u)
    {
      sub_1C4F018A8();
    }

    else
    {
      sub_1C4F01898();
    }

    v13 = sub_1C4F018C8();
    sub_1C440BAA8(v8, 0, 1, v13);
    sub_1C440962C((v21 + 1));
  }

  else
  {
    v12 = sub_1C4F018C8();
    sub_1C440BAA8(v8, 1, 1, v12);
  }

  sub_1C44316B0(v8, v6);
  v14 = sub_1C4428DF0(qword_1EDDEC900, _s12JobSchedulerCMa);
  v15 = swift_allocObject();
  v15[2] = v1;
  v15[3] = v14;
  v15[4] = v1;
  swift_retain_n();
  sub_1C4785250();
  v17 = v16;
  sub_1C4420C3C(v8, &qword_1EC0BC660, &qword_1C4F29150);
  v18 = *(v1 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_executionLoop);
  *(v1 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_executionLoop) = v17;
}

uint64_t sub_1C44293C4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_jobs;
  swift_beginAccess();
  v3 = *(v1 + v2);
  swift_beginAccess();

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v4 = sub_1C44295B0((v1 + v2), v1);
  v5 = sub_1C4428DA0(*(v1 + v2));
  if (v5 < v4)
  {
    __break(1u);
  }

  else
  {
    sub_1C44298CC(v4, v5);
    swift_endAccess();
    v6 = sub_1C4428DA0(v3);
    if (!v6)
    {
    }

    v7 = v6;
    if (v6 >= 1)
    {
      v8 = 0;
      v9 = OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_executionLoopOwnedJob;
      do
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x1C6940F90](v8, v3);
        }

        else
        {
          v10 = *(v3 + 8 * v8 + 32);
        }

        if (*(v10 + OBJC_IVAR____TtCCO24IntelligencePlatformCore10ViewUpdate12JobScheduler10JobTracker_cancelled) == 1)
        {
          v11 = *(v1 + v9);
          if (v11)
          {
            v12 = v10 == v11;
          }

          else
          {
            v12 = 0;
          }

          if (!v12)
          {
            sub_1C4F01828();
            sub_1C4428DF0(&qword_1EDDFCF00, MEMORY[0x1E69E8550]);
            v13 = swift_allocError();
            sub_1C4F00EA8();
            sub_1C4474164(v10, v13, 1);
          }
        }

        ++v8;
      }

      while (v7 != v8);
    }
  }

  __break(1u);
  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t sub_1C44295B0(unint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = sub_1C4428DA0(*a1);
  v22 = OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_executionLoopOwnedJob;

  v6 = 0;
  while (v4 != v6)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1C6940F90](v6, v3);
    }

    else
    {
      if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
        return result;
      }

      v7 = *(v3 + 8 * v6 + 32);
    }

    if (*(v7 + OBJC_IVAR____TtCCO24IntelligencePlatformCore10ViewUpdate12JobScheduler10JobTracker_cancelled) == 1)
    {
      v8 = *(a2 + v22);
      if (!v8)
      {

LABEL_18:

        v10 = v6 + 1;
        if (!__OFADD__(v6, 1))
        {
          while (2)
          {
            if (v3 >> 62)
            {
              result = sub_1C4F02128();
            }

            else
            {
              result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (v10 == result)
            {
              goto LABEL_16;
            }

            if ((v3 & 0xC000000000000001) != 0)
            {
              v11 = MEMORY[0x1C6940F90](v10, v3);
            }

            else
            {
              if ((v10 & 0x8000000000000000) != 0)
              {
                goto LABEL_58;
              }

              if (v10 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_59;
              }

              v11 = *(v3 + 8 * v10 + 32);
            }

            if (*(v11 + OBJC_IVAR____TtCCO24IntelligencePlatformCore10ViewUpdate12JobScheduler10JobTracker_cancelled) == 1)
            {
              v12 = *(a2 + v22);

              if (!v12 || v11 != v12)
              {
LABEL_49:
                v9 = __OFADD__(v10++, 1);
                if (v9)
                {
                  goto LABEL_60;
                }

                continue;
              }
            }

            else
            {
            }

            break;
          }

          if (v6 != v10)
          {
            if ((v3 & 0xC000000000000001) != 0)
            {
              v13 = MEMORY[0x1C6940F90](v6, v3);
              v14 = MEMORY[0x1C6940F90](v10, v3);
            }

            else
            {
              if ((v6 & 0x8000000000000000) != 0)
              {
                goto LABEL_63;
              }

              v15 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v6 >= v15)
              {
                goto LABEL_64;
              }

              if (v10 >= v15)
              {
                goto LABEL_65;
              }

              v13 = *(v3 + 32 + 8 * v6);
              v14 = *(v3 + 32 + 8 * v10);
            }

            if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
            {
              v3 = sub_1C4836300(v3);
              v16 = (v3 >> 62) & 1;
            }

            else
            {
              LODWORD(v16) = 0;
            }

            v17 = v3 & 0xFFFFFFFFFFFFFF8;
            v18 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20);
            *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20) = v14;

            if ((v3 & 0x8000000000000000) != 0 || v16)
            {
              result = sub_1C4836300(v3);
              v3 = result;
              v17 = result & 0xFFFFFFFFFFFFFF8;
              if ((v10 & 0x8000000000000000) != 0)
              {
LABEL_55:
                __break(1u);
                goto LABEL_56;
              }
            }

            else if ((v10 & 0x8000000000000000) != 0)
            {
              goto LABEL_55;
            }

            if (v10 >= *(v17 + 16))
            {
              goto LABEL_62;
            }

            v19 = v17 + 8 * v10;
            v20 = *(v19 + 32);
            *(v19 + 32) = v13;

            *a1 = v3;
          }

          v9 = __OFADD__(v6++, 1);
          if (v9)
          {
            goto LABEL_61;
          }

          goto LABEL_49;
        }

        goto LABEL_66;
      }

      if (v7 != v8)
      {
        goto LABEL_18;
      }
    }

    else
    {
    }

    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_57;
    }
  }

  v6 = sub_1C4428DA0(v3);
LABEL_16:

  return v6;
}

uint64_t sub_1C44298CC(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = result;
  v5 = *v2;
  result = sub_1C443156C(*v2);
  if (result < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (__OFSUB__(a2, v4))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = v4 - a2;
  if (__OFSUB__(0, a2 - v4))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = sub_1C4428DA0(v5);
  v8 = __OFADD__(v7, v6);
  result = v7 + v6;
  if (v8)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_1C4429970(result, 1);

  return sub_1C4429978(v4, a2, 0);
}

uint64_t sub_1C4429978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  _s12JobSchedulerC10JobTrackerCMa(0);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v9)
  {
    goto LABEL_12;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    goto LABEL_6;
  }

LABEL_16:
  result = sub_1C4F02128();
LABEL_6:
  if (__OFSUB__(result, v6))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_1C4474DF4(&v7[v6], result - v6, v5 + 8 * v3);
  if (v8)
  {
    result = sub_1C4F02128();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_18;
  }

  v4[2] = result + v9;
LABEL_12:
  if (v3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C4429A78(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_1C4F02128();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_1C4F022B8();
  *v1 = result;
  return result;
}

uint64_t sub_1C4429B18()
{
  v2 = v1;
  v3 = v0;
  if (qword_1EDDFD018 != -1)
  {
    sub_1C441A86C();
    swift_once();
  }

  v4 = sub_1C4F00978();
  sub_1C442B738(v4, qword_1EDE2DDF8);
  swift_retain_n();
  v5 = sub_1C4F00968();
  v6 = sub_1C4F01CF8();
  v7 = &dword_1EDE2D000;
  if (os_log_type_enabled(v5, v6))
  {
    v77 = v4;
    v8 = swift_slowAlloc();
    v74[0] = swift_slowAlloc();
    *v8 = 136446722;
    v9 = sub_1C442A10C(*(v3 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate13ViewUpdateJob_viewQuery), *(v3 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate13ViewUpdateJob_viewQuery + 8));
    sub_1C441D828(v9, v10, v74);
    sub_1C443EFD8();

    *(v8 + 4) = &dword_1EDE2D000;
    *(v8 + 12) = 2082;
    LOBYTE(v71[0]) = *(v3 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate13ViewUpdateJob_runMode);
    v11 = sub_1C4F01198();
    sub_1C441D828(v11, v12, v74);
    sub_1C443EFD8();

    *(v8 + 14) = &dword_1EDE2D000;
    *(v8 + 22) = 1026;
    v13 = *(v3 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate13ViewUpdateJob_checkSLA);

    *(v8 + 24) = v13;
    v2 = v1;
    v7 = &dword_1EDE2D000;

    _os_log_impl(&dword_1C43F8000, v5, v6, "ViewUpdate: Beginning update job for %{public}s [runMode: %{public}s, checkSLA: %{BOOL,public}d]", v8, 0x1Cu);
    swift_arrayDestroy();
    v14 = sub_1C4416E14();
    MEMORY[0x1C6942830](v14);
    v4 = v77;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {
  }

  v15 = v3 + *(v7 + 87);
  v16 = *v15;
  v17 = *(v15 + 8);
  if (!(v17 >> 14))
  {
    v18 = 1;
    goto LABEL_10;
  }

  if (v17 >> 14 == 1)
  {
    v18 = (v17 & 0x3F00) != 0;
LABEL_10:
    v19 = 11;
    goto LABEL_11;
  }

  if (*v15 != 11 && (*v15 & 0x100) == 0)
  {
    v36 = *(v3 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate13ViewUpdateJob_manager);
    v37 = *v15;
    updated = type metadata accessor for ViewUpdate.ViewUpdateJob.ScheduledViewQueue();
    v39 = swift_allocObject();
    *(v39 + 16) = v36;
    v77 = v37;
    *(v39 + 24) = v37;
    v75 = updated;
    v76 = sub_1C443D71C(&qword_1EDDECDF8, v40, type metadata accessor for ViewUpdate.ViewUpdateJob.ScheduledViewQueue);
    v74[0] = v39;
    v41 = qword_1EDDFECD0;

    if (v41 != -1)
    {
      sub_1C4400FC0();
      swift_once();
    }

    sub_1C442B738(v4, qword_1EDE2DF70);
    v42 = sub_1C4F00968();
    v43 = sub_1C4F01CF8();
    if (os_log_type_enabled(v42, v43))
    {
      sub_1C43FECF0();
      swift_slowAlloc();
      sub_1C440A2C8();
      v44 = swift_slowAlloc();
      v71[0] = v44;
      *v7 = 136315138;
      v45 = sub_1C4424B10(v77);
      v47 = sub_1C441D828(v45, v46, v71);

      *(v7 + 1) = v47;
      _os_log_impl(&dword_1C43F8000, v42, v43, "ViewUpdate: Starting schedule run %s", v7, 0xCu);
      sub_1C440962C(v44);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      v48 = sub_1C43FEF7C();
      MEMORY[0x1C6942830](v48);
    }

    v68 = MEMORY[0x1E69E7CD0];
    v70 = 1;
    goto LABEL_24;
  }

  v18 = 1;
  v19 = *v15;
LABEL_11:
  v20 = *(v3 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate13ViewUpdateJob_manager);
  v21 = sub_1C4D11E90(v16, v17, v19, *(v3 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate13ViewUpdateJob_checkSLA));
  if (v2)
  {
    return v20;
  }

  v24 = v21;
  v67 = v22;
  HIDWORD(v69) = v18;
  v77 = v16;
  v25 = *(v20 + 16);
  v26 = type metadata accessor for ViewUpdate.ViewUpdateJob.NamedViewQueue(0);
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  v29 = swift_allocObject();

  sub_1C4D1CCB8(v24, v25, v30, v31, v32, v33, v34, v35, v65, v66, v67, v69, v71[0], v71[1], v71[2], v72, v73, v74[0], v74[1], v74[2]);
  v75 = v26;
  v76 = sub_1C443D71C(&qword_1EDDECEC0, 255, type metadata accessor for ViewUpdate.ViewUpdateJob.NamedViewQueue);
  v74[0] = v29;
LABEL_24:
  if (qword_1EDDFECD0 != -1)
  {
    sub_1C4400FC0();
    swift_once();
  }

  sub_1C442B738(v4, qword_1EDE2DF70);
  sub_1C442E860(v74, v71);
  v49 = sub_1C4F00968();
  v50 = sub_1C4F01CF8();
  if (os_log_type_enabled(v49, v50))
  {
    sub_1C43FECF0();
    v51 = swift_slowAlloc();
    *v51 = 134217984;
    v53 = v72;
    v52 = v73;
    sub_1C4409678(v71, v72);
    v54 = (*(v52 + 40))(v53, v52);
    sub_1C440962C(v71);
    *(v51 + 4) = v54;
    sub_1C44BBF64();
    _os_log_impl(v55, v56, v57, v58, v59, v60);
    v61 = sub_1C4416E14();
    MEMORY[0x1C6942830](v61);
  }

  else
  {
    sub_1C440962C(v71);
  }

  v62 = v77;
  sub_1C442E860(v74, v71);
  v63 = *(v3 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate13ViewUpdateJob_runMode);
  type metadata accessor for ViewUpdate.ViewUpdateJob.ProcessingState();
  v20 = swift_allocObject();
  sub_1C4428D8C(v62, v17);
  sub_1C443DCD0(v71, v62, v17, v68, v63, v70);
  sub_1C440962C(v74);
  return v20;
}

uint64_t sub_1C442A10C(uint64_t a1, unsigned __int16 a2)
{
  if (!(a2 >> 14))
  {
    sub_1C43FCB04();
    sub_1C443D664();
    v2 = v15;
    v3 = *(v15 + 16);
    v16 = *(v15 + 24);
    v17 = (v3 + 1);
    if (v3 >= v16 >> 1)
    {
      sub_1C43FCFE8(v16);
      sub_1C4401E28();
      sub_1C443D664();
      v2 = v29;
    }

    v6 = 0xE800000000000000;
    v18 = 0x73776569566C6C61;
    goto LABEL_16;
  }

  v5 = a1;
  v6 = 0x80000001C4FBE560;
  if (a2 >> 14 == 1)
  {
    v7 = a2;
    v33 = a1;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44ECB2C(&v33);
    v2 = v33;
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C443D694();
    v3 = &v33;
    v8 = sub_1C4F01048();
    v10 = v9;

    sub_1C43FCB04();
    sub_1C443D664();
    sub_1C441DEB0(v11);
    if (v13)
    {
      sub_1C43FCFE8(v12);
      sub_1C4401E28();
      sub_1C443D664();
      v2 = v30;
    }

    *(v2 + 16) = &v33;
    v14 = v2 + 16 * v4;
    *(v14 + 32) = v8;
    *(v14 + 40) = v10;
    if ((v7 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  v19 = sub_1C4424B10(a1);
  v21 = v20;
  sub_1C43FCB04();
  sub_1C443D664();
  sub_1C441DEB0(v22);
  if (v13)
  {
    sub_1C43FCFE8(v23);
    sub_1C4401E28();
    sub_1C443D664();
    v2 = v31;
  }

  *(v2 + 16) = v3;
  v24 = v2 + 16 * v4;
  *(v24 + 32) = v19;
  *(v24 + 40) = v21;
  if ((v5 & 0x100) != 0)
  {
LABEL_13:
    v25 = *(v2 + 24);
    v17 = (v4 + 2);
    if (v4 + 2 > (v25 >> 1))
    {
      sub_1C43FCFE8(v25);
      sub_1C4401E28();
      sub_1C443D664();
      v2 = v32;
    }

    v18 = 0xD000000000000013;
LABEL_16:
    *(v2 + 16) = v17;
    v26 = v2 + 16 * v3;
    *(v26 + 32) = v18;
    *(v26 + 40) = v6;
  }

LABEL_17:
  v33 = v2;
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C443D694();
  v27 = sub_1C4F01048();

  return v27;
}

uint64_t sub_1C442A378()
{
  *(v2 + v5[5]) = v1;
  v8 = (v2 + v5[7]);
  *v8 = v4;
  v8[1] = v6;
  *(v2 + v5[8]) = v0;
  *(v2 + v5[9]) = v3 & 1;

  return type metadata accessor for PhaseStores();
}

double sub_1C442A3B4()
{
  result = 0.0;
  *v0 = 0u;
  v0[1] = 0u;
  return result;
}

uint64_t sub_1C442A3C0()
{
  v1 = v0[50];
  result = v0[46];
  v4 = v0[42];
  v3 = v0[43];
  v5 = v0[41];
  v6 = v0[22];
  return result;
}

uint64_t sub_1C442A410()
{
  result = *(v0 - 160);
  v2 = *(v0 - 152);
  v3 = *(v0 - 176);
  v4 = *(v0 - 168);
  return result;
}

char *sub_1C442A434(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  v4 = *(v2 + 16);
  return a1 + v3;
}

uint64_t sub_1C442A458()
{
  if (v1)
  {
    return v0;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1C442A4AC()
{
  v2 = *(v0 + 512);
  *(v1 - 240) = *(v0 + 496);
  *(v1 - 224) = v2;
  result = *(v0 + 528);
  *(v1 - 208) = result;
  return result;
}

uint64_t sub_1C442A4C0()
{
  v2 = *(v0 - 72);

  return swift_arrayInitWithTakeFrontToBack();
}

uint64_t sub_1C442A4F0(uint64_t a1, uint64_t a2)
{
  *(v2 - 232) = a1;
  *(v2 - 224) = a2;

  return sub_1C4F01308();
}

uint64_t sub_1C442A514@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return sub_1C4EFB758();
}

void sub_1C442A554()
{
  v2 = *(v0 + 24);
  v3 = *(v1 - 96);
  v4 = *(*(v1 - 104) + 16);
}

uint64_t sub_1C442A564@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 96);
  v5 = *(v1 - 256);
  v6 = *(v1 - 344);
  v7 = *(v1 - 136);

  return sub_1C4F026C8();
}

uint64_t sub_1C442A5AC@<X0>(char a1@<W8>)
{
  *(v1 - 104) = a1;

  return sub_1C4F02618();
}

uint64_t sub_1C442A5F4@<X0>(void *a1@<X8>)
{
  *a1 = v1;
  a1[1] = v2;
  *(v3 + *(v4 + 44)) = v7;
  *(v3 + *(v4 + 48)) = *(v5 - 108);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C442A62C()
{
  v2 = *(v0 - 400);

  return sub_1C4F00968();
}

uint64_t *sub_1C442A644@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  a1[7] = v2;
  a1[8] = a2;
  v4 = a1 + 4;

  return sub_1C4422F90(v4);
}

uint64_t sub_1C442A67C()
{

  return sub_1C4EFEEF8();
}

void sub_1C442A6E8()
{
  v2 = -1;
  if (v0 < 64)
  {
    v2 = ~(-1 << v0);
  }

  v3 = v2 & *(v1 + 56);
}

uint64_t sub_1C442A718()
{
  v2 = *(v0 + 16);
}

uint64_t sub_1C442A74C()
{

  return sub_1C4F010B8();
}

void sub_1C442A790(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t sub_1C442A79C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a2 - 256);

  return sub_1C448D19C(a1, v3);
}

uint64_t sub_1C442A7E4(uint64_t a1, _BYTE *a2)
{
  *a2 = 5;

  return swift_willThrow();
}

uint64_t sub_1C442A80C()
{
  v9 = (v3 + v0[8]);
  *v9 = v1;
  v9[1] = v2;
  v10 = (v3 + v0[10]);
  *v10 = v4;
  v10[1] = v5;
  *(v3 + v0[11]) = v8;
  *(v3 + v0[12]) = *(v6 - 220);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C442A870()
{
  result = *(v0 - 256);
  v3 = *(v1 - 184);
  return result;
}

void sub_1C442A8B0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1C442A8DC()
{
}

uint64_t sub_1C442A918(uint64_t a1)
{
  v3 = *(v1 + *(a1 + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

id sub_1C442A93C()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

id sub_1C442A974(float a1)
{
  *v2 = a1;
  *v3 = v1;

  return v1;
}

uint64_t sub_1C442A990()
{

  return sub_1C443113C(v2 + v1, v0);
}

void sub_1C442A9A8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v7 = *(v5 - 564);
  v8 = *(v5 - 576);

  _os_log_impl(a1, v8, v7, a4, v4, 0x1Cu);
}

uint64_t sub_1C442AA2C()
{

  return swift_getErrorValue();
}

uint64_t sub_1C442AA48@<X0>(sqlite3_stmt *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 16) = v2;
  *(a2 - 8) = 2;

  return sqlite3_column_type(a1, 2);
}

uint64_t sub_1C442AA64()
{

  return sub_1C448D19C(v0, v1);
}

uint64_t sub_1C442AA80()
{

  return sub_1C4418280(v1 - 176, v0);
}

uint64_t sub_1C442AB20()
{
  *(v2 + v0[5]) = 9;
  v9 = (v2 + v0[7]);
  *v9 = v3;
  v9[1] = v4;
  *(v2 + v0[8]) = v1;
  *(v2 + v0[9]) = v5 & 1;
  v10 = v6 + *(*(v7 - 136) + 20);

  return type metadata accessor for PhaseStores();
}

uint64_t sub_1C442AB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 56);
  result = *(v6 + 8 * v5);
  *(v6 + 8 * v5) = v4;
  return result;
}

uint64_t sub_1C442AB8C(unint64_t *a1)
{

  return sub_1C4798580(a1);
}

uint64_t sub_1C442ABB0@<X0>(uint64_t a1@<X8>)
{

  return sub_1C4420C3C(v1 + a1, v2, v3);
}

uint64_t sub_1C442ABCC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = *(a2 + 16);
  return result;
}

uint64_t sub_1C442ABEC()
{

  return sub_1C4F01578();
}

void sub_1C442AC28()
{
  v4 = *(v0 + 20);
  *(v3 - 208) = v2;
  *(v3 - 200) = v1;
  v5 = *(v2 + 16);
}

uint64_t sub_1C442AC3C()
{
  *(v0 - 88) = 0;
  *(v0 - 80) = 0xE000000000000000;

  return sub_1C4F02248();
}

void sub_1C442AC70()
{

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C442AC94(float a1)
{
  *v1 = a1;
  v3 = sub_1C4409678((v2 - 208), *(v2 - 184));
  v4 = v3[2];
  v5 = v3[3];

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

void sub_1C442ACCC(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);
  v3 = *(v1 - 392);
  v4 = *(v1 - 264);
}

id sub_1C442AD08(uint64_t a1, void **a2)
{
  v3 = *a2;

  return v3;
}

uint64_t sub_1C442ADA0()
{
  result = v1 + v0;
  v4 = *(v2 - 132);
  return result;
}

uint64_t sub_1C442ADB0()
{
  v2 = *(v0 - 120);

  return sub_1C4F02658();
}

void sub_1C442AE14()
{
  sub_1C43FE96C();
  sub_1C44238D0();
  v4 = v3;
  v5 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1C440101C();
  v10 = sub_1C43FCDF8(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBCC4();
  sub_1C441C544();
  sub_1C441E000(v2);
  sub_1C4402530();
  if (!v1)
  {
    v13 = *(v2 + 40);

    sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v14 = sub_1C4404370();
    *(v14 + 16) = xmmword_1C4F0CE60;
    v15 = sub_1C4424B10(v4);
    v16 = MEMORY[0x1E69A0138];
    *(v14 + 56) = MEMORY[0x1E69E6158];
    *(v14 + 64) = v16;
    v17 = MEMORY[0x1E69E6530];
    *(v14 + 32) = v15;
    *(v14 + 40) = v18;
    sub_1C4443490(v17);
    sub_1C4EFC088();
    v19 = sub_1C43FBF04();
    v20(v19);
    v21 = sub_1C44038D0();
    sub_1C44554A8(v21, v22, v23);
    sub_1C4420C3C(v0, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  sub_1C4403810();
  sub_1C43FBC80();
}

uint64_t sub_1C442AFA8()
{
  v1 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate7Manager_liveTaskState);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  swift_beginAccess();
  sub_1C442B0C8(&v4, 1);
  swift_endAccess();
  os_unfair_lock_unlock((v1 + 24));
  sub_1C43FBDBC();
  swift_allocObject();
  swift_weakInit();
  os_unfair_lock_lock((v1 + 24));
  sub_1C442B508();
  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_1C442B094()
{
  swift_weakDestroy();
  sub_1C43FBDBC();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

BOOL sub_1C442B0C8(uint64_t a1, char a2)
{
  sub_1C4851BE8();
  v6 = a2 & 1;
  sub_1C4F02B18();
  sub_1C4F02B68();
  v7 = *(v4 + 32);
  sub_1C44584AC();
  while (1)
  {
    v12 = v8 & v10;
    v13 = (v11 << (v8 & v10)) & *(v9 + (((v8 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v13)
    {
      v14 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      sub_1C442B1AC(a2 & 1, v12, isUniquelyReferenced_nonNull_native);
      *v3 = v17;
      goto LABEL_7;
    }

    if (*(*(v4 + 48) + v12) == (a2 & 1))
    {
      break;
    }

    v8 = v12 + 1;
  }

  v6 = *(*(v4 + 48) + v12);
LABEL_7:
  result = v13 == 0;
  *v2 = v6;
  return result;
}

uint64_t sub_1C442B1AC(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1C48424EC(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1C442B2EC(v6 + 1);
LABEL_10:
      v12 = *v3;
      v13 = *(*v3 + 40);
      sub_1C4F02AF8();
      sub_1C4F02B18();
      result = sub_1C4F02B68();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v14;
        if (((*(v12 + 56 + (((result & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + a2) == (v5 & 1))
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_1C484AA38();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + a2) = v5 & 1;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_1C4F029E8();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

uint64_t sub_1C442B2EC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1C456902C(&qword_1EC0BDE48, &unk_1C4F32290);
  result = sub_1C4F021D8();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
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
        v16 = *(*(v3 + 48) + (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        sub_1C4F02AF8();
        sub_1C4F02B18();
        result = sub_1C4F02B68();
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + v21) = v16;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
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

          v2 = v26;
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

void sub_1C442B508()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_1C4CE6098();
}

uint64_t sub_1C442B544@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C442B574();
  *a2 = result;
  return result;
}

uint64_t sub_1C442B574()
{
  v0 = sub_1C4F025D8();

  if (v0 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C442B5C0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_1C4430578(-1);
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
    if (v4)
    {
      return sub_1C4430578((*a1 | (v4 << 8)) - 11);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return sub_1C4430578((*a1 | (v4 << 8)) - 11);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_1C4430578((*a1 | (v4 << 8)) - 11);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_1C4430578(v8);
}

uint64_t sub_1C442B64C()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_1C43FBDAC();
  *v3 = v2;

  sub_1C43FBDA0();

  return v4();
}

uint64_t sub_1C442B738(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_1C442B770(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1C4434D94(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_1C4F022F8();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1C442B870(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1C442B8CC()
{

  return sub_1C440BAA8(v1, 0, 1, v0);
}

void sub_1C442B910()
{

  JUMPOUT(0x1C69407C0);
}

id sub_1C442B92C()
{

  return [v1 (v0 + 2367)];
}

uint64_t sub_1C442B95C()
{

  return sub_1C4418280(v1 - 200, v0);
}

void sub_1C442B994(uint64_t a1@<X8>)
{
  *(v4 + a1) = v1;
  v8 = (v4 + v3[7]);
  *v8 = v6;
  v8[1] = v7;
  *(v4 + v3[8]) = v2;
  *(v4 + v3[9]) = v5 & 1;
}

uint64_t sub_1C442BA34()
{

  return sub_1C4F01298();
}

void sub_1C442BA70()
{

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C442BA8C()
{

  return sub_1C4F00938();
}

void sub_1C442BAAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v26 = *(v24 - 280);

  sub_1C4601D10(a1, 4, v23, v22, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1C442BAD0()
{

  return type metadata accessor for ExtractedMatch();
}

uint64_t sub_1C442BAE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v10 - 96) = &a9 - v9;

  return sub_1C4EFAD98();
}

uint64_t sub_1C442BB0C()
{

  return sub_1C4F00498();
}

void sub_1C442BB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  sub_1C49A54E0(sub_1C47FD134, 0, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1C442BB6C()
{

  return sub_1C4F02AF8();
}

uint64_t sub_1C442BBA0()
{
  v5 = *(v0 + 48) + v2 * v1;
  result = v3;
  v8 = *(v4 - 168);
  v7 = *(v4 - 160);
  return result;
}

uint64_t sub_1C442BBD0()
{
  v2 = *(v0 - 72);

  return swift_dynamicCast();
}

void sub_1C442BBF0(void *a1@<X8>)
{
  *a1 = v1;
  a1[1] = v2;
  v4 = *(v3 + 56);
}

void sub_1C442BC88(uint64_t a1@<X8>)
{
  *(v1 - 128) = a1;

  sub_1C44CD9C0();
}

void sub_1C442BCC0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0xCu);
}

uint64_t sub_1C442BD28()
{

  return sub_1C4460108(v4 + v3, v5 + v2, v0, v1);
}

id sub_1C442BD54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1C4673B1C(a1, a2, a3, a4, v4, v5);
}

uint64_t sub_1C442BD80(uint64_t a1)
{
  *(v2 - 104) = a1;
  *(v2 - 96) = v1;
  *(v2 - 67) = 2;
  return v2 - 67;
}

uint64_t sub_1C442BDA0()
{

  return sub_1C4F02678();
}

void sub_1C442BDBC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t sub_1C442BDDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = *(a10 + 40);

  return sub_1C4F000F8();
}

void *sub_1C442BE08(uint64_t a1, uint64_t a2)
{
  v5 = *(v3 + *(v2 + 32));

  return sub_1C44F927C(a1, a2, v5);
}

uint64_t sub_1C442BE24()
{
  v2 = *(v0 - 424);
  v4 = *v2;
  v3 = v2[1];
  v5 = *(v0 - 440);
  v6 = *v5;
  v7 = v5[1];

  return sub_1C4F00FF8();
}

__n128 *sub_1C442BE4C(__n128 *result, __n128 a2)
{
  *(v4 - 88) = result;
  result[1] = a2;
  v5 = *(v2 + 56);
  result->n128_u8[v3] = 0;
  return result;
}

uint64_t sub_1C442BE94()
{

  return swift_once();
}

uint64_t sub_1C442BEB4()
{

  return sub_1C4F008F8();
}

uint64_t sub_1C442BED4()
{
  v3 = v0[42];
  v2 = v0[43];
  v4 = v0[41];
  v5 = v0[39];

  return sub_1C4EF9AE8();
}

void sub_1C442BEF0(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

void sub_1C442BF0C()
{
  v8 = *(v7 - 256);
  *(v8 + 16) = v6;
  v9 = v8 + (v1 << 6);
  *(v9 + 32) = v4;
  *(v9 + 40) = v0;
  *(v9 + 48) = *(v7 - 352);
  *(v9 + 56) = v5;
  *(v9 + 64) = *(v7 - 320);
  *(v9 + 72) = v3;
  *(v9 + 80) = v2;
  *(v9 + 88) = *(v7 - 264);
  v10 = *(v7 - 272);
  v11 = *(v7 - 280);
  v12 = *(v7 - 248);
}

uint64_t sub_1C442BF5C()
{

  return swift_once();
}

uint64_t sub_1C442BF9C()
{

  return swift_once();
}

uint64_t sub_1C442BFE0@<X0>(char a1@<W8>)
{
  *(v1 - 144) = a1;

  return sub_1C4F027B8();
}

uint64_t sub_1C442C024()
{
  v2 = *(v0 + 128);

  return sub_1C443C0C8(v2, type metadata accessor for Configuration);
}

uint64_t sub_1C442C04C()
{
  v1 = v0[10];
  v2 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[5];
  v6 = v0[8] + 8;
  return v0[11];
}

uint64_t sub_1C442C068(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 - 168) = result;
  *(v7 - 160) = v6;
  *(v7 - 144) = a6;
  *(v7 - 136) = a5;
  *(v7 - 176) = a4;
  *(v7 - 208) = a3;
  *(v7 - 240) = a2;
  return result;
}

uint64_t sub_1C442C0D4()
{

  return sub_1C4F02938();
}

uint64_t sub_1C442C128()
{
  result = *(v0 - 232);
  v2 = *(*(v0 - 224) + 8);
  v3 = *(v0 - 216);
  return result;
}

uint64_t sub_1C442C158(uint64_t result)
{
  *(result + 16) = 0;
  *(v1 - 352) = result + 16;
  return result;
}

uint64_t sub_1C442C170()
{

  return sub_1C4F00FD8();
}

uint64_t sub_1C442C190()
{
  result = *(v0 - 152);
  v2 = *(*(v0 - 144) + 8);
  v3 = *(v0 - 136);
  return result;
}

uint64_t sub_1C442C1A4()
{
  v3 = *(v0 + 552);

  return sub_1C448D1F8(v1, v3);
}

uint64_t sub_1C442C1EC()
{
  *(v1 - 72) = v0;
  v3 = *(v1 - 96);

  return sub_1C4F027E8();
}

uint64_t sub_1C442C21C()
{
  v2 = *(v0 - 296);

  return sub_1C4F02778();
}

uint64_t sub_1C442C2B8()
{
  v9 = (v5 + v4[8]);
  *v9 = v1;
  v9[1] = v0;
  v10 = (v5 + v4[10]);
  *v10 = v3;
  v10[1] = v2;
  *(v5 + v4[11]) = v8;
  *(v5 + v4[12]) = *(v6 - 96);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C442C2F8()
{

  return sub_1C4F02618();
}

uint64_t sub_1C442C318(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_1C4401CBC(a1, a2, a3);
}

size_t sub_1C442C33C(void *a1)
{
  result = j__malloc_size(a1);
  a1[2] = v1;
  a1[3] = 2 * ((result - 32) / 8);
  return result;
}

uint64_t sub_1C442C368()
{

  return swift_allocObject();
}

void sub_1C442C3D8()
{

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C442C404(uint64_t a1)
{

  return MEMORY[0x1EEE49F08](a1, 0, 1, 0, 1, 0, 1, 100);
}

uint64_t sub_1C442C430()
{

  return sub_1C45BBFB4(v0, v1);
}

unint64_t sub_1C442C48C(uint64_t a1, uint64_t *a2)
{
  result = v2 & 0xFFFFFFFF000000FFLL | ((*&v5 & 0xFFFFFFLL) << 8) | (v3 << 32) | (v4 << 40);
  v7 = *a2;
  v8 = a2[1];
  return result;
}

uint64_t sub_1C442C4A4(unint64_t *a1)
{

  return sub_1C4403D50(a1);
}

uint64_t sub_1C442C514()
{
  sub_1C440BAA8(v1, 0, 1, v2);
  result = v0;
  v5 = *(v3 - 96);
  return result;
}

void sub_1C442C544(uint64_t a1@<X8>)
{
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 16) = a1;
  *(v2 + 40) = v1;
}

uint64_t *sub_1C442C554()
{
  result = sub_1C4409678((v0 + 32), *(v0 + 56));
  v2 = *result;
  return result;
}

void *sub_1C442C574(void *a1, uint64_t a2)
{
  result = sub_1C4409678(a1, a2);
  v4 = *(*(v2 + 8) + 8);
  return result;
}

uint64_t sub_1C442C590()
{
  result = *(v0 - 288);
  v2 = *(v0 - 296);
  return result;
}

void sub_1C442C614(unint64_t a1@<X8>)
{
  *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a1;
  v5 = (*(v1 + 48) + 16 * a1);
  *v5 = v2;
  v5[1] = v3;
  v6 = *(v1 + 56);
}

__n128 sub_1C442C690(__n128 *a1)
{
  result = *(v1 - 320);
  a1[1] = result;
  return result;
}

uint64_t sub_1C442C6A0()
{

  return swift_once();
}

uint64_t sub_1C442C6C0()
{

  return swift_once();
}

uint64_t sub_1C442C700()
{

  return swift_once();
}

uint64_t sub_1C442C74C(uint64_t a1)
{
  v1[4] = a1;
  *v1 = v2;
  v6 = v3[21];
  v5 = v3[22];
  v7 = v3[20];
  v8 = v3[18];
}

void sub_1C442C7FC()
{
  v2 = *(v0 + 56);

  sub_1C46B7244();
}

uint64_t sub_1C442C81C()
{

  return sub_1C4F02938();
}

uint64_t sub_1C442C838@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 16) = a1;

  return sub_1C46E19E0(v2, v1 + 56 * v3 + 32);
}

uint64_t sub_1C442C85C()
{

  return sub_1C440BAA8(v1 + v0, 0, 1, v2);
}

uint64_t sub_1C442C8AC()
{
  v2 = *(*(v1 - 96) + 8);
  result = v0;
  v4 = *(v1 - 208);
  return result;
}

uint64_t sub_1C442C914()
{

  return sub_1C4EFAD68();
}

uint64_t sub_1C442C940(uint64_t a1)
{
  *(a1 + 8) = sub_1C477DCEC;
  result = v1[19];
  v4 = v1[6];
  v3 = v1[7];
  v5 = v1[4];
  return result;
}

uint64_t sub_1C442C998(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_1C4401CBC(a1, a2, a3);
}

uint64_t sub_1C442C9F4()
{
  v2 = *(v0 - 144);

  return sub_1C47CD188(v2, type metadata accessor for FAFamilyStructs.IdentifierRelationshipType);
}

uint64_t sub_1C442CA1C()
{

  return sub_1C47D0B14(v0, type metadata accessor for FavoriteSportsTeamStructs.SportsTeam);
}

uint64_t sub_1C442CA44()
{
  v2 = *(v0 + 176);
  *(v0 + 80) = 0;

  return type metadata accessor for PhaseStores();
}

__n128 sub_1C442CB08(__n128 *a1)
{
  result = *(v1 - 304);
  a1[1] = result;
  return result;
}

uint64_t sub_1C442CB30()
{
  v4 = *(v2 + 16);
  v5 = *(*(v3 - 120) + 48) + *(v2 + 72) * v1;
  result = v0;
  v7 = *(v3 - 104);
  return result;
}

uint64_t sub_1C442CB80(uint64_t result)
{
  v3 = *(v2 - 264);
  *(v2 - 136) = v1;
  *(v2 - 128) = v3;
  *(v2 - 160) = 8;
  *(result + 56) = *(v2 - 272);
  return result;
}

uint64_t sub_1C442CBCC()
{

  return sub_1C4888C54(v1, v2, v0);
}

double sub_1C442CC10()
{
  *(v0 + 32) = 0;
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  return result;
}

void sub_1C442CC74(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

void sub_1C442CCB8()
{
  v3 = v0[123];
  v4 = v0[121];
  v5 = v0[120];
  v6 = v0[119];
  v1 = v0[118];
  v2 = v0[117];
}

uint64_t sub_1C442CCF0(uint64_t a1)
{
  *(a1 + 8) = sub_1C498BB0C;
  v3 = *(v2 + 136);
  return v1;
}

uint64_t sub_1C442CD48()
{

  return swift_once();
}

uint64_t sub_1C442CD68()
{
  v2 = *(*(v1 - 296) + 8);
  result = v0;
  v4 = *(v1 - 288);
  return result;
}

uint64_t sub_1C442CD98(uint64_t result)
{
  v1 = *(result + 64);
  *(result + 32);
  return result;
}

uint64_t sub_1C442CDF0()
{

  return swift_once();
}

_OWORD *sub_1C442CE10()
{
  *(v1 - 176) = v0;

  return sub_1C46601FC();
}

uint64_t sub_1C442CE50@<X0>(unint64_t a1@<X8>)
{
  STACK[0x2E8] = a1;
  v4 = v1[88];
  *(v2 - 256) = v1[89];
  *(v2 - 248) = v4;
  v5 = v1[86];
  *(v2 - 240) = v1[87];
  *(v2 - 232) = v5;
  v6 = v1[84];
  *(v2 - 224) = v1[85];
  *(v2 - 216) = v6;
  v7 = v1[82];
  *(v2 - 208) = v1[83];
  *(v2 - 200) = v7;
  v8 = v1[80];
  *(v2 - 192) = v1[81];
  *(v2 - 184) = v8;
  v9 = v1[78];
  *(v2 - 176) = v1[79];
  *(v2 - 168) = v9;
  v10 = v1[76];
  *(v2 - 160) = v1[77];
  *(v2 - 152) = v10;
  v11 = v1[74];
  *(v2 - 144) = v1[75];
  *(v2 - 136) = v11;
  v12 = v1[72];
  *(v2 - 128) = v1[73];
  *(v2 - 120) = v12;
  v13 = v1[70];
  *(v2 - 112) = v1[71];
  *(v2 - 104) = v13;
  *(v2 - 96) = v1[69];
}

BOOL sub_1C442CEFC(uint64_t a1, uint64_t a2)
{
  *(v2 - 112) = 0;
  v4 = *(v2 - 272);

  return sub_1C49F27E4(a1, a2);
}

uint64_t sub_1C442CF20()
{
  v2 = v0[52];
  result = v0[53];
  v4 = v0[50];
  v3 = v0[51];
  v6 = v0[48];
  v5 = v0[49];
  v7 = v0[47];
  v8 = v0[45];
  v10 = v0[42];
  v9 = v0[43];
  v11 = v0[39];
  return result;
}

void sub_1C442CF68()
{
  v1 = v0[77];
  v2 = v0[76];
  v3 = v0[73];
  v4 = v0[72];
  v5 = v0[70];
}

uint64_t sub_1C442CF80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1C441D828(v10, v9, &a9);
}

void *sub_1C442CFB4(void *result)
{
  result[4] = 43200;
  result[5] = 0x3FE0000000000000;
  result[2] = v1;
  result[3] = 0x4072C00000000000;
  return result;
}

uint64_t sub_1C442CFD0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_1C4401CBC(a1, a2, a3);
}

uint64_t sub_1C442CFF4(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  *v9 = a1;

  return sub_1C441D828(v8, v7, va);
}

uint64_t sub_1C442D05C(uint64_t a1)
{
  v4 = *(v2 + v1);
  *(v2 + v1) = a1;
}

uint64_t sub_1C442D0AC(uint64_t a1)
{
  *(a1 + 8) = sub_1C4A71590;
  v2 = *(v1 + 192);
  return *(v1 + 152);
}

uint64_t sub_1C442D0E4(uint64_t result)
{
  *(v2 - 184) = v1 + 56;
  *(v2 - 176) = v1;
  v3 = result & ~(-1 << *(v1 + 32));
  v4 = *(v1 + 56 + ((v3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v3;
  return result;
}

uint64_t sub_1C442D15C()
{

  return swift_once();
}

void sub_1C442D1F4(uint64_t *a1@<X8>)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
}

void sub_1C442D214()
{
  v2 = *(v0 + 16) + 1;

  sub_1C458A900();
}

uint64_t sub_1C442D238(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C442B738(v2, a2);
  result = *v3;
  v5 = v3[1];
  return result;
}

uint64_t sub_1C442D260()
{

  return sub_1C4AF2D00(v1, v2, v0);
}

uint64_t sub_1C442D2AC(uint64_t result)
{
  *(v1 + 264) = result;
  *(v1 + 208) = MEMORY[0x1E69E9820];
  return result;
}

unint64_t sub_1C442D2E4()
{

  return sub_1C4415EA8();
}

uint64_t sub_1C442D320()
{

  return swift_once();
}

uint64_t sub_1C442D360()
{

  return sub_1C4F025E8();
}

double sub_1C442D414()
{
  v1 = *(v0 + 56);
  *(v1 + 32) = 0;
  result = 0.0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  return result;
}

uint64_t sub_1C442D480(uint64_t a1, uint64_t a2)
{
  sub_1C442B738(v2, a2);

  return swift_beginAccess();
}

uint64_t sub_1C442D4D8()
{

  return sub_1C4F02BF8();
}

void sub_1C442D534()
{
  v0[1] = 0;
  *(v1 - 72) = 0;
  v0[2] = 0;
  v0[4] = 0;
  v0[6] = 0;
}

uint64_t sub_1C442D554()
{

  return sub_1C4F02938();
}

uint64_t sub_1C442D5A0()
{
  v6 = v2[2];
  v5 = v2[3];
  v7 = v2[4];
  *(v3 - 112) = v0;
  v9 = v2[5];
  v8 = v2[6];
  v11 = *(v1 + 184);
  v10 = *(v1 + 192);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C442D5EC()
{
  v2 = *(v0 + 16);
}

void sub_1C442D638(uint64_t a1, void *a2)
{
  a2[2] = 0xD000000000000023;
  a2[3] = v2;
  a2[4] = 0;
  a2[5] = 0xE000000000000000;
}

void sub_1C442D668(uint64_t a1, void *a2)
{
  a2[2] = 0xD00000000000002ALL;
  a2[3] = v2;
  a2[4] = 0;
  a2[5] = 0xE000000000000000;
}

void sub_1C442D690(uint64_t a1, void *a2)
{
  a2[2] = 0xD00000000000001FLL;
  a2[3] = v2;
  a2[4] = 0;
  a2[5] = 0xE000000000000000;
}

void sub_1C442D708(uint64_t a1@<X8>)
{
  v1[6] = v2;
  v1[7] = v3 + 23;
  v1[8] = (a1 - 32) | 0x8000000000000000;
}

uint64_t sub_1C442D738()
{

  return sub_1C443C0C8(v0, _s10ViewConfigVMa);
}

uint64_t sub_1C442D760(void *a1)
{
  sub_1C4409678(a1, v1);
  v3 = *(v2 + 8);
  return v1;
}

void sub_1C442D7B8()
{
  *(v0 - 360) = 0;
  *(v0 - 352) = 0;
  *(v0 - 344) = 0;
  *(v0 - 336) = 0;
  *(v0 - 328) = 0;
}

uint64_t sub_1C442D7EC()
{

  return sub_1C4F02658();
}

uint64_t sub_1C442D81C()
{
  result = v0;
  v3 = *(v1 - 184);
  return result;
}

uint64_t sub_1C442D848(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v2[24];
  v3 = v2[25];
  return v2[20];
}

uint64_t sub_1C442D874(uint64_t a1)
{
  sub_1C440BAA8(v1 + v3, 1, 1, a1);
  sub_1C440BAA8(v1 + v2[11], 1, 1, a1);
  sub_1C440BAA8(v1 + v2[12], 1, 1, a1);
  sub_1C440BAA8(v1 + v2[13], 1, 1, a1);
  sub_1C440BAA8(v1 + v2[14], 1, 1, a1);
  sub_1C440BAA8(v1 + v2[15], 1, 1, a1);
  sub_1C440BAA8(v1 + v2[16], 1, 1, a1);
  v5 = v2[9];

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

void sub_1C442D9A0()
{

  sub_1C458A900();
}

uint64_t sub_1C442D9F0()
{
  *(v0 - 192) = 0x6E696C657069503CLL;
  *(v0 - 184) = 0xEF203A6570795465;
  result = 0x6E776F6E6B6E75;
  v2 = *(v0 - 248);
  return result;
}

uint64_t sub_1C442DA34@<X0>(uint64_t a1@<X8>)
{
  v7 = *(v6 - 88);
  *(*(v6 - 96) + 8 * a1) = v2 | v1;
  result = *(v4 + 48) + v3 * v5;
  v9 = **(v6 - 152);
  return result;
}

void sub_1C442DABC()
{
  *(v0 - 568) = 0;
  *(v0 - 560) = 0;
  *(v0 - 552) = 0;
  *(v0 - 544) = 0;
  *(v0 - 536) = 0;
  *(v0 - 528) = 0;
  *(v0 - 520) = 0;
  *(v0 - 512) = 0;
  *(v0 - 504) = 0;
}

uint64_t sub_1C442DCA4()
{

  return sub_1C4F02938();
}

uint64_t sub_1C442DCD0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C442DD18(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

void sub_1C442DD34(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1C442DD98@<X0>(uint64_t a1@<X8>)
{
  *(v7 + a1) = v1;
  v9 = (v7 + v2[7]);
  *v9 = v4;
  v9[1] = v5;
  *(v7 + v2[8]) = v3;
  *(v7 + v2[9]) = v6 & 1;

  return type metadata accessor for PhaseStores();
}

uint64_t sub_1C442DDE4()
{

  return sub_1C45FE854(v0);
}

uint64_t sub_1C442DE10(uint64_t result)
{
  v4 = *(v1 + *(result + 24));
  *(v3 - 96) = v2;
  return result;
}

uint64_t sub_1C442DE2C()
{

  return type metadata accessor for Configuration();
}

uint64_t sub_1C442DE64()
{
  v3 = v0[37];
  v2 = v0[38];
  v5 = v0[33];
  v4 = v0[34];
  v7 = v0[30];
  v6 = v0[31];
}

uint64_t sub_1C442DE80(uint64_t a1, _BYTE *a2)
{
  *a2 = 0;

  return swift_willThrow();
}

id sub_1C442DE98(uint64_t a1, uint64_t a2)
{
  sub_1C442B738(a1, a2);

  return v2;
}

__n128 sub_1C442DEC4(__n128 *a1)
{
  result = *(v1 - 176);
  a1[1] = result;
  return result;
}

void sub_1C442DED4()
{
  v2 = *(v0 - 248);

  sub_1C49D3A70(v2);
}

uint64_t sub_1C442DEEC()
{

  return type metadata accessor for EntityTaggingPersonDataCollection(0);
}

uint64_t sub_1C442DF38()
{
  *(v0 + *(*(v2 - 192) + 52)) = *(v1 + *(*(v2 - 168) + 48));

  return sub_1C4EF9CD8();
}

uint64_t sub_1C442DFA8()
{

  return swift_dynamicCast();
}

uint64_t sub_1C442E004(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_1C442E02C@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

uint64_t sub_1C442E04C()
{

  return swift_allocObject();
}

uint64_t sub_1C442E068()
{

  return sub_1C4F017F8();
}

void sub_1C442E0AC()
{
  *(v0 - 576) = 0;
  *(v0 - 584) = 0;
  *(v0 - 560) = 0;
  *(v0 - 568) = 0;
  *(v0 - 536) = 0;
  *(v0 - 552) = 0;
  *(v0 - 272) = 0;
  *(v0 - 544) = 0;
  *(v0 - 592) = 0;
  *(v0 - 600) = 0;
  *(v0 - 608) = 0;
  *(v0 - 616) = 0;
}

uint64_t sub_1C442E11C()
{
  *(v1 - 72) = v0;
  result = v1 - 72;
  v3 = *(v1 - 96);
  return result;
}

void *sub_1C442E134()
{

  return sub_1C4D2C7B8(v3, v2, v1, v0);
}

void sub_1C442E15C()
{
  v2 = v0[186];
  v3 = v0[185];
  v4 = v0[184];
  v5 = v0[183];
  v6 = v0[182];
  v7 = v0[181];
  v8 = v0[180];
  v9 = v0[179];
  v10 = v0[178];
  v11 = v0[177];
  v12 = v0[176];
  v13 = v0[175];
  v14 = v0[174];
  v15 = v0[173];
  v16 = v0[172];
  v17 = v0[171];
  v18 = v0[170];
  v19 = v0[169];
  v20 = v0[168];
  v21 = v0[167];
  v22 = v0[166];
  v23 = v0[165];
  v24 = v0[164];
  v25 = v0[162];
  v26 = v0[161];
  v27 = v0[160];
  v28 = v0[159];
  v29 = v0[158];
  v30 = v0[157];
  v31 = v0[156];
  v32 = v0[155];
  v33 = v0[154];
  v34 = v0[153];
  v35 = v0[152];
  v36 = v0[151];
  v37 = v0[150];
  v38 = v0[149];
  v39 = v0[148];
  v40 = v0[147];
  v41 = v0[146];
  v42 = v0[145];
  v43 = v0[144];
  v44 = v0[143];
  v45 = v0[142];
  v46 = v0[141];
  v47 = v0[140];
  v48 = v0[139];
  v49 = v0[138];
  v50 = v0[137];
  v51 = v0[136];
  v52 = v0[135];
  v53 = v0[134];
  v54 = v0[133];
  v55 = v0[132];
  v56 = v0[131];
  v57 = v0[130];
  v58 = v0[129];
  v59 = v0[127];
  v60 = v0[126];
  v61 = v0[125];
  STACK[0x200] = v0[123];
  STACK[0x208] = v0[122];
  STACK[0x210] = v0[119];
  STACK[0x218] = v0[118];
  STACK[0x220] = v0[117];
  STACK[0x228] = v0[116];
  STACK[0x230] = v0[115];
  STACK[0x238] = v0[114];
  STACK[0x240] = v0[113];
  STACK[0x248] = v0[112];
  STACK[0x250] = v0[111];
  STACK[0x258] = v0[110];
  STACK[0x260] = v0[109];
  STACK[0x268] = v0[108];
  STACK[0x270] = v0[107];
  STACK[0x278] = v0[106];
  STACK[0x280] = v0[105];
  STACK[0x288] = v0[104];
  STACK[0x290] = v0[103];
  STACK[0x298] = v0[102];
  STACK[0x2A0] = v0[100];
  STACK[0x2A8] = v0[99];
  STACK[0x2B0] = v0[98];
  STACK[0x2B8] = v0[97];
  STACK[0x2C0] = v0[96];
  STACK[0x2C8] = v0[95];
  STACK[0x2D0] = v0[94];
  STACK[0x2D8] = v0[93];
  STACK[0x2E0] = v0[92];
  v1 = v0[91];
}

uint64_t sub_1C442E3C8()
{
  v0 = type metadata accessor for LongitudinalEventData._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t sub_1C442E404()
{
  v2 = v0[5];
  v3 = v0[6];
  v0[40] = v2;
  v0[41] = v3;

  return sub_1C4418280((v0 + 2), v2);
}

uint64_t sub_1C442E424()
{
  result = v0 + 16;
  v2 = *(v0 + 16);
  return result;
}

void sub_1C442E440()
{

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C442E45C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{

  return sub_1C4851520(v26 - 160, &a26);
}

uint64_t sub_1C442E474()
{
  v3 = *(v1 + 16);

  return sub_1C4A721C4(v0, v3);
}

id sub_1C442E494()
{

  return [v0 (v1 + 3557)];
}

uint64_t sub_1C442E4B8(int a1)
{
  *(v4 - 368) = a1;
  *(v4 - 192) = v1;
  *(v4 - 256) = v3;

  return sub_1C445FAA8(v2, v3);
}

uint64_t sub_1C442E4E0()
{

  return swift_once();
}

uint64_t sub_1C442E500()
{

  return sub_1C4EFD618();
}

uint64_t sub_1C442E530()
{
  v2 = *(v0 + 368);
  v3 = *(v0 + 344);

  return sub_1C4F01828();
}

uint64_t sub_1C442E54C()
{
  v2 = *(v0 + 16);

  return type metadata accessor for Source();
}

uint64_t sub_1C442E570()
{
  result = v0;
  v3 = *(v1 - 112);
  return result;
}

uint64_t sub_1C442E584(uint64_t result)
{
  *(v1 + 48) = result;
  v3 = *(v2 + 16);
  return result;
}

uint64_t sub_1C442E59C@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];

  return sub_1C4F013E8();
}

void sub_1C442E5BC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C442E5D4()
{

  return swift_once();
}

uint64_t sub_1C442E620@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  *(v2 - 200) = &a2 - a1;

  return sub_1C4EFD678();
}

void sub_1C442E654(uint64_t a1, uint64_t a2)
{
  *a2 = 0xD000000000000019;
  *(a2 + 8) = v2;
  *(a2 + 16) = 4;
}

uint64_t sub_1C442E670(unint64_t *a1)
{

  return sub_1C4401CBC(a1, v1, v2);
}

uint64_t sub_1C442E69C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return sub_1C4F025E8();
}

uint64_t sub_1C442E6C0()
{

  return sub_1C4F02938();
}

uint64_t sub_1C442E6E0()
{
  v2 = *(v0 + 408);

  return sub_1C4EFB728();
}

uint64_t sub_1C442E750()
{

  return sub_1C4F02858();
}

uint64_t sub_1C442E7B4()
{
  v2 = *(v0 - 152);

  return sub_1C4F026C8();
}

uint64_t sub_1C442E7E0@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 72) = *(*(v1 - 176) + a1);
  *(v1 - 153) = 8;
  return type metadata accessor for LifeEventStructs.Place(0);
}

uint64_t sub_1C442E828()
{
  v4 = *(v0 + 16);
  result = v1 + *(v2 + 20);
  v6 = *(v3 - 128);
  return result;
}

uint64_t sub_1C442E860(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1C442E8C4()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_1C43FBDAC();
  *v4 = v3;

  sub_1C43FBDA0();

  return v5();
}

uint64_t sub_1C442E9A4()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *(v1 + 96);
  v3 = *(v1 + 88);
  v4 = *v0;
  sub_1C43FBDAC();
  *v5 = v4;

  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C442EAA4()
{

  return sub_1C4EF9CD8();
}

uint64_t sub_1C442EAD4()
{

  return sub_1C4F00FD8();
}

uint64_t sub_1C442EAF8()
{

  return sub_1C4EF9328();
}

uint64_t sub_1C442EB14()
{

  return swift_arrayDestroy();
}

uint64_t sub_1C442EB4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v11 - 240) = &a9 - v9;
  *(v11 - 232) = v10;
  v13 = *(*v10 + 40);

  return sub_1C4F02AF8();
}

uint64_t sub_1C442EB78@<X0>(char a1@<W8>)
{
  *(v1 - 104) = a1;
  result = v1 - 104;
  v3 = *(v1 - 168);
  return result;
}

uint64_t sub_1C442EB90()
{

  return sub_1C4924B90(v1, v0);
}

uint64_t sub_1C442EBB8()
{

  return sub_1C4EF9B78();
}

uint64_t sub_1C442EBD8(uint64_t a1)
{
  *(a1 + 8) = sub_1C496F364;
  result = *(v1 + 136);
  v3 = *(v1 + 144);
  return result;
}

uint64_t sub_1C442EC10@<X0>(uint64_t a1@<X8>)
{
  *(a1 - 16) = v1;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

void sub_1C442EC28()
{
  v1 = *(v0 - 248);
  v3 = *(v0 - 208);
  v2 = *(v0 - 200);
  v4 = *(v0 - 176);
}

uint64_t sub_1C442EC40()
{
  *(v1 + *(v0 + 28)) = 0;
  v3 = v1 + *(v0 + 32);
  return v2;
}

uint64_t sub_1C442EC58()
{

  return sub_1C4A25FEC();
}

id sub_1C442EC74()
{
  v2 = *(v0 + 200);

  return sub_1C4475EF8(2048);
}

uint64_t sub_1C442ECA4()
{

  return sub_1C4EFD5E8();
}

uint64_t sub_1C442ECE4()
{
  v1 = *(*(v0 - 264) + 32);
  result = *(v0 - 232);
  v3 = *(v0 - 256);
  return result;
}

uint64_t sub_1C442ED08()
{
  v2 = v0[44];
  v3 = v0[41];
  v4 = v0[42];
  v5 = v0[39];
  v6 = v0[37];
}

uint64_t sub_1C442ED58()
{

  return sub_1C4B960D0(v0);
}

uint64_t sub_1C442ED74()
{
  v3 = *(v0 - 128);
  v2 = *(v0 - 120);

  return sub_1C4F026C8();
}

uint64_t sub_1C442EDB8()
{
  v2 = *(*(v1 - 152) + 8);
  result = v0;
  v4 = *(v1 - 72);
  return result;
}

__n128 sub_1C442EDE0()
{
  result = *(v0 + v1);
  v3 = *(v0 + v1 + 16);
  v4 = *(v0 + v1 + 28);
  return result;
}

uint64_t sub_1C442EE00()
{

  return sub_1C4F02938();
}

uint64_t sub_1C442EE30(uint64_t a1)
{
  *(v1 - 328) = a1;

  return sub_1C442E860(a1, v1 - 136);
}

uint64_t sub_1C442EEB8()
{
  v2 = *(v1 - 224);
  v3 = *(*(v1 - 232) + 8);
  return v0;
}

uint64_t sub_1C442EF08()
{
  result = v1;
  v3 = v0[16];
  v4 = v0[1];
  v5 = v0[2];
  return result;
}

uint64_t sub_1C442EF34(uint64_t a1)
{
  result = sub_1C440BAA8(v1, 0, 1, a1);
  v4 = *(v2 + 20);
  return result;
}

uint64_t sub_1C442EF74()
{
  sub_1C4475B28();
  v11 = v2;
  sub_1C43FEAEC();
  sub_1C4475DF8();
  sub_1C4426F9C();
  sub_1C441CF44();
  if (v1)
  {
    sub_1C44BBF4C();
    sub_1C440FE6C();
    sub_1C4430798();
    sub_1C446073C(MEMORY[0x1E69E7CD0]);
    sub_1C4408120();
    v3 = *(v0 + 4);
    v4 = swift_task_alloc();
    v5 = sub_1C447FAC0(v4);
    *v5 = v6;
    v7 = sub_1C4401314(v5);

    return v8(v7);
  }

  else
  {
    sub_1C43FBDA0();

    return v10();
  }
}

uint64_t sub_1C442F090()
{
  v2 = *(v0 + 32);

  return sub_1C4F00978();
}

void sub_1C442F0A8()
{

  sub_1C458E820();
}

uint64_t sub_1C442F0D8()
{

  return sub_1C45A24C0(v0, 3);
}

uint64_t sub_1C442F148()
{

  return sub_1C4F02548();
}

uint64_t sub_1C442F160@<X0>(uint64_t a1@<X8>)
{
  *(v2 + v3) = a1;

  return sub_1C440BAA8(v2, 0, 1, v1);
}

uint64_t sub_1C442F184()
{

  return swift_slowAlloc();
}

id sub_1C442F1A4()
{
  *(v1 - 72) = v0;

  return v0;
}

uint64_t sub_1C442F1BC()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t sub_1C442F1F0()
{
  *(v1 - 96) = v0;

  return sub_1C4F00FD8();
}

uint64_t sub_1C442F214()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 24);

  return sub_1C4418280(v0, v3);
}

uint64_t sub_1C442F244(uint64_t a1)
{
  *(a1 + 8) = sub_1C4975B5C;
  v2 = *(v1 + 152);
  return *(v1 + 136);
}

uint64_t sub_1C442F280@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 256) = v1;
  *(v3 - 160) = a1 + 8;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C442F2A0()
{
}

uint64_t sub_1C442F2B8()
{
  *(v0 + *(v1 + 28)) = *(v3 - 120);
  v5 = *(v2 + *(*(v3 - 152) + 28));
}

uint64_t sub_1C442F2F8()
{
}

uint64_t sub_1C442F34C()
{

  return swift_dynamicCast();
}

uint64_t sub_1C442F368()
{
  v2 = ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72);

  return swift_allocObject();
}

uint64_t sub_1C442F39C()
{
  v2 = *(v1 - 344) + 8;
  result = v0;
  v4 = *(v1 - 312);
  v5 = *(v1 - 400);
  return result;
}

uint64_t sub_1C442F3D8()
{
}

uint64_t sub_1C442F3F0()
{
  *(v1 + 4) = v2;
  *(v1 + 12) = 2048;
  v4 = *(v0 + 16);
}

double sub_1C442F414()
{
  result = 0.0;
  v0[28] = 0u;
  v0[29] = 0u;
  v0[26] = 0u;
  v0[27] = 0u;
  v0[25] = 0u;
  return result;
}

__n128 sub_1C442F428@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a2 - 256);
  a1[1] = result;
  return result;
}

uint64_t sub_1C442F468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, __int128 a11)
{
  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = a9;
  *(a2 + 32) = v12;
  *(a2 + 40) = v11;
  *(a2 + 48) = a11;
  *(a2 + 64) = 0;

  return swift_willThrow();
}

uint64_t sub_1C442F4B4()
{

  return swift_dynamicCast();
}

uint64_t sub_1C442F4D8()
{
}

void sub_1C442F4F0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t sub_1C442F54C()
{

  return sub_1C4F02738();
}

uint64_t sub_1C442F568()
{
  v2 = *(v0 - 232);
  v3 = *(v0 - 144);

  return sub_1C4F02658();
}

uint64_t sub_1C442F5A0()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);

  return sub_1C4F02738();
}

uint64_t sub_1C442F5C4()
{
  v4 = (v0 + *(v1 + 44));
  v5 = *v4;
  v6 = v4[1];
  *(v2 - 72) = 7;

  return sub_1C4F02738();
}

uint64_t sub_1C442F5F8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(*(a1 - 256) + 8);
  result = *(v1 - 104);
  v4 = *(v1 - 304);
  return result;
}

void sub_1C442F634(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1C442F654(uint64_t result)
{
  v1 = *(result + 24);
  v2 = *(result + 16) + 1;
  return result;
}

uint64_t sub_1C442F680()
{

  return sub_1C456902C(v0, v1);
}

uint64_t sub_1C442F69C()
{

  return swift_cvw_initStructMetadataWithLayoutString();
}

uint64_t sub_1C442F6CC()
{

  return sub_1C44CDA7C();
}

uint64_t sub_1C442F718()
{

  return sub_1C4EFF808();
}

void sub_1C442F750(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

uint64_t sub_1C442F778()
{
  v3 = *(v0 + 208);
  v2 = *(v0 + 216);

  return swift_slowAlloc();
}

uint64_t sub_1C442F794()
{

  return sub_1C4BB44E0(v0, v1);
}

uint64_t sub_1C442F7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13)
{
  *v13 = a13;
}

uint64_t sub_1C442F7D8()
{

  return sub_1C44157D4(v0, 1, v1);
}

uint64_t sub_1C442F81C@<X0>(uint64_t a1@<X8>)
{
  result = v2 + *(v1 + 28);
  v5 = *(v3 - 96) + a1;
  return result;
}

uint64_t sub_1C442F8B8()
{
}

uint64_t sub_1C442F8E4()
{
  *(v1 - 96) = v0;

  return sub_1C4F00FD8();
}

uint64_t sub_1C442F914()
{

  return sub_1C4F026C8();
}

uint64_t sub_1C442F938()
{
  v2 = *(v0 - 288);
  v3 = *(v0 - 304);

  return sub_1C44239FC(v2);
}

uint64_t sub_1C442F964()
{
  v4 = *v1;
  v5 = v1[1];
  *(v2 - 176) = *(v2 - 376);
  *(v2 - 168) = v0;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t *sub_1C442F988@<X0>(uint64_t a1@<X8>)
{
  *(v4 - 184) = a1;
  *(v4 - 176) = v1;
  *(v4 - 208) = *(v4 - 296);
  *(v4 - 104) = v3;
  *(v4 - 96) = v2;

  return sub_1C4422F90((v4 - 128));
}

uint64_t sub_1C442F9D4()
{
  result = v0;
  v3 = *(v1 - 144);
  return result;
}

void sub_1C442F9E0()
{
  v4 = (v1 + *(v2 + 40));
  *v4 = *(v3 - 152);
  v4[1] = v0;
  v5 = *(v2 + 44);
}

uint64_t sub_1C442FA38()
{
  v2 = *(v1 - 240);
  v3 = *(*(v1 - 248) + 8);
  return v0;
}

uint64_t sub_1C442FADC()
{
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[9];
}

BOOL sub_1C442FAFC()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_1C442FB14(uint64_t a1)
{

  return sub_1C4423A0C(a1, v1, v2);
}

void sub_1C442FB40(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_1C442FB60(uint64_t a1)
{
  v4 = *(v1 + v2);
  *(v1 + v2) = a1;
}

uint64_t sub_1C442FB80()
{

  return sub_1C44157D4(v1, 2, v0);
}

uint64_t sub_1C442FB9C()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 216);
  return result;
}

__n128 sub_1C442FBE8@<Q0>(__int128 *a1@<X8>)
{
  result = *(a1 + 25);
  v3 = *a1;
  v2 = a1[1];
  return result;
}

uint64_t sub_1C442FBF4()
{
  v2 = *(v0 - 328);

  return sub_1C4F02938();
}

void sub_1C442FC2C()
{

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C442FC44()
{
  result = v0;
  v3 = *(v1 - 160);
  return result;
}

uint64_t sub_1C442FC64()
{

  return sub_1C448C9D8();
}

double sub_1C442FCC4()
{
  v1 = *(v0 + 120);
  *(v1 + 32) = 0;
  result = 0.0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  return result;
}

id sub_1C442FD08()
{
  v2 = *(v0 + 3752);

  return objc_allocWithZone(v2);
}

uint64_t sub_1C442FD50()
{
  v2 = v0[15];
  v3 = v0[16];
  v0[85] = v2;
  v0[86] = v3;

  return sub_1C4418280((v0 + 12), v2);
}

uint64_t sub_1C442FD94()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v0;
}

uint64_t sub_1C442FDA4()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 120);
  return result;
}

uint64_t sub_1C442FDC0(uint64_t result)
{
  *(v4 - 104) = result;
  *(v4 - 96) = v2;
  *(v4 - 128) = v3;
  *(v4 - 88) = v1;
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  return result;
}

void sub_1C442FDF8()
{
}

uint64_t sub_1C442FE10()
{
  v0 = type metadata accessor for HUTenPointContext.VirtualInteraction._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

void sub_1C442FE50()
{
  v2 = (v1 + *(v0 + 48));
  *v2 = 0;
  v2[1] = 0;
  v3 = v1 + *(v0 + 52);
}

uint64_t sub_1C442FE68@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 16);
}

uint64_t sub_1C442FE94()
{

  return sub_1C44594A4(v1, v0, _s7MetricsO7PayloadVMa);
}

void sub_1C442FED0()
{

  sub_1C44CD9C0();
}

void sub_1C442FF30()
{

  sub_1C458A85C();
}

__n128 sub_1C442FFB4(__n128 *a1)
{
  result = *(v1 - 528);
  a1[1] = result;
  a1[2].n128_u64[0] = 0x736C69616D65;
  return result;
}

void sub_1C442FFE4(void *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *a1 = v12;
  a1[1] = v10;
  a1[2] = a8;
  a1[3] = v9;
  a1[4] = a9;
  a1[5] = v11;
}

uint64_t sub_1C4430004()
{

  return sub_1C4485564(v0, type metadata accessor for ConstructionGraphTriple);
}

uint64_t sub_1C443003C()
{
  v1 = v0[30];
  sub_1C4409678(v0 + 26, v0[29]);

  return sub_1C4EFF7D8();
}

uint64_t sub_1C443009C()
{
  result = *(*(v2 - 472) + 48) + *(v1 + 72) * v0;
  v4 = *(v1 + 16);
  v5 = *(v2 - 360);
  return result;
}

uint64_t sub_1C44300C8()
{
  v2 = *(*(v1 - 192) + 8);
  result = v0;
  v4 = *(v1 - 176);
  return result;
}

void sub_1C44300DC()
{

  sub_1C443D664();
}

BOOL sub_1C4430110(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_1C443012C()
{

  return swift_once();
}

uint64_t sub_1C4430170()
{

  return swift_once();
}

uint64_t sub_1C44301AC()
{
  v2 = *(*(v1 - 216) + 8);
  result = v0;
  v4 = *(v1 - 128);
  return result;
}

void sub_1C44301C0()
{

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C44301E4()
{

  return swift_once();
}

uint64_t sub_1C4430204()
{

  return sub_1C4B9B2FC(v1, v0, type metadata accessor for ViewDatabaseArtifact.Property);
}

void sub_1C4430244(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v2 = *(v1 + 56);
}

uint64_t sub_1C4430294()
{
  *(v1 + 72) = *(v2 + 8);
  *(v1 + 80) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return v0;
}

uint64_t sub_1C44302B4()
{
  v2 = *(v0 - 152);
  v3 = *(v0 - 192);

  return sub_1C4EFB308();
}

uint64_t sub_1C4430308()
{

  return swift_dynamicCast();
}

void sub_1C4430328(int a1@<W8>)
{
  *(v1 - 256) = a1;
  *(v2 - 72) = a1;
  *(v2 - 360) = a1;
  *(v2 - 352) = a1;
}

void sub_1C4430348(uint64_t a1@<X8>)
{
  *(v2 - 104) = v1 + 11;
  *(v2 - 96) = a1;
  v4 = *(v2 - 152);
  v5 = *(v2 - 128);

  JUMPOUT(0x1C6940010);
}

void sub_1C443036C()
{

  sub_1C458E108();
}

__n128 sub_1C443039C(__n128 *a1)
{
  result = v1[30];
  a1[1] = result;
  return result;
}

uint64_t sub_1C44303A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0xD000000000000035;
  *(a2 + 24) = v10;
  *(a2 + 32) = a9;
  *(a2 + 48) = a10;
  *(a2 + 64) = 3;

  return swift_willThrow();
}

uint64_t sub_1C44303E4()
{

  return sub_1C4F016D8();
}

void sub_1C4430424()
{
  *(v2 + 16) = v0;
  v3 = v2 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
  v4 = *(v1 + 72);
}

uint64_t sub_1C443046C()
{
  *(v1 - 320) = v0;

  return swift_beginAccess();
}

uint64_t sub_1C44304BC()
{
  v7 = (v3 + v0[8]);
  *v7 = v1;
  v7[1] = v2;
  v8 = (v3 + v0[10]);
  v9 = *(v4 - 96);
  *v8 = *(v4 - 104);
  v8[1] = v9;
  *(v3 + v0[11]) = v6;
  *(v3 + v0[12]) = *(v4 - 108);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

void sub_1C443052C()
{
  *(v6 - 160) = v1;
  *(v6 - 296) = v4;
  *(v6 - 304) = v0;
  *(v6 - 312) = v3;
  *(v6 - 320) = v5;
  *(v6 - 328) = v2;
  *(v6 - 112) = 0;
}

__n128 sub_1C44305CC@<Q0>(uint64_t a1@<X8>)
{
  result = *(a1 - 256);
  *v1 = result.n128_u32[0];
  return result;
}

uint64_t sub_1C44305D8()
{

  return sub_1C4F019A8();
}

uint64_t sub_1C44305F8()
{

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4430610(float *a1, float a2)
{
  *a1 = a2;

  return swift_beginAccess();
}

uint64_t sub_1C4430634()
{

  return swift_dynamicCast();
}

uint64_t sub_1C4430684()
{
  v2 = *(v0 - 120);
  *(v0 - 160) = v2 + 16;
  *(v0 - 152) = v2 + 8;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C44306B4()
{

  return sub_1C4F02938();
}

uint64_t sub_1C44306F8()
{

  return sub_1C4B0E994(v0 + 16, v0 + 96, v1, v2);
}

uint64_t sub_1C4430718()
{
  result = v0;
  v3 = *(v1 - 104);
  return result;
}

void sub_1C4430738(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t sub_1C443077C(uint64_t a1, uint64_t a2)
{
  *(v2 - 128) = a2;
  *(v2 - 96) = 1;
  return v2 - 96;
}

uint64_t sub_1C4430818()
{
  v2 = *(v1 - 112) + 8;
  result = v0;
  v4 = *(v1 - 208);
  return result;
}

uint64_t sub_1C4430848(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C44308A8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C43FBE94();
  v5 = v4(v3);
  sub_1C43FBCE0(v5);
  v7 = *(v6 + 16);
  v8 = sub_1C43FBC98();
  v9(v8);
  return a2;
}

uint64_t sub_1C4430900(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v6 = v5(v4);
  sub_1C43FCE50(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t sub_1C4430958(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C44309B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v6 = v5(v4);
  sub_1C43FBCE0(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t sub_1C4430A14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v6 = v5(v4);
  sub_1C43FBCE0(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t sub_1C4430A70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FCE50(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C4430ACC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C43FBE94();
  v5 = v4(v3);
  sub_1C43FBCE0(v5);
  v7 = *(v6 + 16);
  v8 = sub_1C43FBC98();
  v9(v8);
  return a2;
}

uint64_t sub_1C4430B24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C4430B8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C4430BEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C4430C4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C4430CAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C4430D14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C4430D74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C4430DD4()
{
  sub_1C4404078();
  v2 = v1(0);
  sub_1C43FBCE0(v2);
  v4 = *(v3 + 16);
  v5 = sub_1C43FBC98();
  v6(v5);
  return v0;
}

uint64_t sub_1C4430E2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_1C43FBCE0(v4);
  v6 = *(v5 + 16);
  v7 = sub_1C43FBC98();
  v8(v7);
  return a2;
}

uint64_t sub_1C4430E88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C4430EE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C4430F48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C4430FB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v6 = v5(v4);
  (*(*(v6 - 8) + 16))(a2, v2, v6);
  return a2;
}

uint64_t sub_1C4431014(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C4431074(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C44310D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C443113C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C43FBE94();
  v5 = v4(v3);
  sub_1C43FBCE0(v5);
  v7 = *(v6 + 16);
  v8 = sub_1C43FBC98();
  v9(v8);
  return a2;
}

uint64_t sub_1C4431194(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_1C43FBCE0(v4);
  v6 = *(v5 + 16);
  v7 = sub_1C43FBC98();
  v8(v7);
  return a2;
}

uint64_t sub_1C44311F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C4431258(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C44312C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v6 = v5(v4);
  sub_1C43FBCE0(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t sub_1C443131C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

void sub_1C443137C()
{
  v1 = v0;
  v2 = sub_1C4EF9CD8();
  v3 = sub_1C43FCDF8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBD08();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23[-v12];
  v14 = *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_lockedBox);
  os_unfair_lock_lock((v14 + 24));
  sub_1C4EF9C88();
  v15 = *(v14 + 16);
  v16 = OBJC_IVAR____TtCC24IntelligencePlatformCore25ErrorHandlingDatabasePool11GuardedData_lastVaccumDate;
  swift_beginAccess();
  (*(v5 + 16))(v10, v15 + v16, v2);
  sub_1C4EF9B78();
  v18 = v17;
  v19 = *(v5 + 8);
  v19(v10, v2);
  if (v18 <= 10.0)
  {
    v19(v13, v2);
    os_unfair_lock_unlock((v14 + 24));
  }

  else
  {
    v20 = *(v14 + 16);
    v21 = OBJC_IVAR____TtCC24IntelligencePlatformCore25ErrorHandlingDatabasePool11GuardedData_lastVaccumDate;
    swift_beginAccess();
    (*(v5 + 24))(v20 + v21, v13, v2);
    swift_endAccess();
    v19(v13, v2);
    os_unfair_lock_unlock((v14 + 24));
    do
    {
      sub_1C44653AC();
    }

    while (v22 == 250);
  }
}

uint64_t sub_1C443156C(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_1C4F02128();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

unint64_t sub_1C4431598(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C44315D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1C4EF9CD8();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 36);
    }

    else
    {
      v9 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
      v10 = *(a4 + 40);
    }

    return sub_1C440BAA8(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1C44316B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BC660, &qword_1C4F29150);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4431720()
{
  v45 = v0;
  v1 = v0[4];
  v2 = sub_1C4428BF0();
  v0[6] = v2;
  v3 = v0[4];
  if (!v2)
  {
    v11 = *(v3 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_executionLoop);
    *(v3 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_executionLoop) = 0;

    v12 = (v3 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_lastOnWorkerJob);
    goto LABEL_11;
  }

  v4 = v2;
  v5 = OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_executionLoopOwnedJob;
  v0[7] = OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_executionLoopOwnedJob;
  if (*(v3 + v5))
  {
    if (qword_1EDDFD018 != -1)
    {
      sub_1C4400660();
    }

    v6 = sub_1C4F00978();
    sub_1C442B738(v6, qword_1EDE2DDF8);
    v7 = sub_1C4F00968();
    v8 = sub_1C4F01CE8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1C43F8000, v7, v8, "ViewUpdate.JobScheduler/ExecutionLoop: executionLoopOwnedJob expected to be nil. Multiple execution loops may be running.", v9, 2u);
      sub_1C43FEA20();
    }

    v10 = *(v3 + v5);
  }

  *(v3 + v5) = v4;
  swift_retain_n();

  v13 = v0[4];
  if (*(v4 + OBJC_IVAR____TtCCO24IntelligencePlatformCore10ViewUpdate12JobScheduler10JobTracker_cancelled))
  {

    sub_1C4F01828();
    sub_1C4411404();
    sub_1C4428DF0(v14, v15);
    v16 = swift_allocError();
    sub_1C4F00EA8();
    sub_1C4474164(v4, v16, 1);

    v17 = v0[6];
    v12 = (v0[4] + v0[7]);
    sub_1C4429198();

LABEL_11:
    v18 = *v12;
    *v12 = 0;

    v19 = v0[5];

    sub_1C43FBDA0();
    sub_1C440A264();

    __asm { BRAA            X1, X16 }
  }

  v22 = OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_lastOnWorkerJob;
  v23 = *(v13 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_lastOnWorkerJob);
  v24 = v4[5];
  v25 = v4[6];
  sub_1C4409678(v4 + 2, v24);
  (*(v25 + 8))(&v44, v24, v25);
  v26 = v0[5];
  if (v44 >= 2u)
  {
    sub_1C4F018A8();
  }

  else
  {
    sub_1C4F01898();
  }

  v27 = v0[4];
  v28 = v0[5];
  v29 = sub_1C4F018C8();
  sub_1C440BAA8(v28, 0, 1, v29);
  sub_1C440B750();
  v32 = sub_1C4428DF0(v30, v31);
  v33 = swift_allocObject();
  *(v33 + 16) = v27;
  *(v33 + 24) = v32;
  *(v33 + 32) = v27;
  *(v33 + 40) = v4;
  *(v33 + 48) = v23 != v4;
  swift_retain_n();

  sub_1C4785480();
  v35 = v34;
  v0[8] = v34;
  v36 = *(v13 + v22);
  *(v13 + v22) = v4;

  v37 = *(v27 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_currentlyRunningJob);
  *(v27 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_currentlyRunningJob) = v4;

  v38 = *(v27 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_currentJobTask);
  *(v27 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_currentJobTask) = v35;

  v39 = *(MEMORY[0x1E69E86C0] + 4);
  swift_task_alloc();
  sub_1C43FBE70();
  v0[9] = v40;
  *v40 = v41;
  v40[1] = sub_1C44599A4;
  sub_1C440A264();

  return MEMORY[0x1EEE6DA40]();
}

uint64_t sub_1C4431B24()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_1C4431B6C()
{
  sub_1C43FCF70();
  sub_1C44048B0();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = sub_1C43FCF54(v2);
  *v3 = v4;
  sub_1C4408024(v3);

  return sub_1C4431C00();
}

uint64_t sub_1C4431C00()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C442E8C4;

  return sub_1C4431C90();
}

uint64_t sub_1C4431C90()
{
  *(v1 + 32) = v0;
  v2 = *(*(sub_1C456902C(&qword_1EC0BC660, &qword_1C4F29150) - 8) + 64) + 15;
  *(v1 + 40) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4431720, v0, 0);
}

uint64_t sub_1C4431D2C()
{
  sub_1C43FCF70();
  sub_1C44250A8();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  v3 = sub_1C4406C84(v1);

  return v4(v3);
}

uint64_t sub_1C4431DBC()
{
  sub_1C43FEAEC();
  sub_1C44048B0();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = swift_task_alloc();
  v5 = sub_1C43FCF54(v4);
  *v5 = v6;
  v7 = sub_1C4408024(v5);

  return sub_1C44362AC(v7, v8, v9, v1, v2, v3);
}

uint64_t sub_1C4431E64(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1C44344B8(a1, a2);
  }

  return a1;
}

void sub_1C4431E90(uint64_t a1@<X8>)
{
  *(v6 + v1) |= v2;
  v7 = (*(v3 + 48) + 16 * a1);
  *v7 = v4;
  v7[1] = v5;
  v8 = *(v3 + 56);
}

uint64_t sub_1C4431EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(*(a10 + 48) + 16 * v10 + 8);
}

void sub_1C4431EE4()
{

  JUMPOUT(0x1C6940010);
}

void sub_1C4431F38(void *a1@<X8>)
{
  *a1 = v3;
  a1[1] = v2;
  v6 = *(v4 - 152);
  v5 = *(v4 - 144);
  a1[2] = v1;
  a1[3] = v6;
  a1[4] = v5;
}

id sub_1C4431F4C(uint64_t a1)
{
  *(v2 + 14) = a1;
  *(v2 + 22) = 2112;

  return v1;
}

uint64_t sub_1C4431FBC()
{

  return sub_1C4F01578();
}

void sub_1C4432008()
{
  *(v3 + v2[5]) = 9;
  v6 = (v3 + v2[7]);
  *v6 = v4;
  v6[1] = v5;
  *(v3 + v2[8]) = v1;
  *(v3 + v2[9]) = v0 & 1;
}

uint64_t sub_1C4432038()
{
  v2 = *(v0 - 128);

  return sub_1C465B5E0(v2, type metadata accessor for BMAppleMusicEventStructs.Song);
}

uint64_t sub_1C4432060()
{

  return sub_1C4EFDAC8();
}

uint64_t sub_1C4432088()
{

  return sub_1C449F128();
}

void sub_1C44320B0()
{
  v3 = *(v1 + 24);
  *(v2 - 136) = v0;
  v4 = *(v0 + v3);
}

uint64_t sub_1C44320F0(uint64_t result)
{
  v4 = (v1 + *(result + 20));
  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t sub_1C443211C()
{
  result = v0[46];
  v2 = v0[43];
  v4 = v0[39];
  v3 = v0[40];
  v6 = v0[36];
  v5 = v0[37];
  v8 = v0[34];
  v7 = v0[35];
  v9 = v0[32];
  v10 = v0[33];
  return result;
}

uint64_t sub_1C4432138()
{

  return sub_1C440BAA8(v0, 1, 1, v1);
}

uint64_t sub_1C4432158()
{

  return sub_1C4F01068();
}

uint64_t sub_1C443217C()
{
  v3 = v0[58];
  v2 = v0[59];
  v5 = v0[56];
  v4 = v0[57];
  v6 = v0[52];
  v8 = v0[48];
  v7 = v0[49];
  v9 = v0[47];
  v10 = v0[43];
}

uint64_t sub_1C44321A4@<X0>(uint64_t a1@<X8>)
{
  v6 = v4 + a1;
  *v6 = v2;
  *(v6 + 8) = 0;

  return sub_1C46EF088(v3 + v1);
}

uint64_t sub_1C44321EC()
{
  v2 = *(v0 - 336);
  v3 = *(v0 - 264);

  return sub_1C47241D8(v2);
}

id sub_1C4432224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1C4673B1C(0xD000000000000013, a2, a3, a4, 0, 0);
}

__n128 sub_1C44322E0(__n128 *a1)
{
  result = *(v1 - 336);
  a1[1] = result;
  return result;
}

uint64_t sub_1C44322F4()
{
  v1 = v0[4];
  sub_1C4409678(v0, v0[3]);
  return 0;
}

uint64_t sub_1C4432358()
{

  return swift_slowAlloc();
}

void sub_1C4432374()
{

  JUMPOUT(0x1C6940010);
}

void sub_1C4432394()
{
  v2 = (v0 + *(*(v1 - 248) + 36));
  v3 = *v2;
  v4 = v2[1];
  *(v1 - 168) = 0;
}

uint64_t sub_1C44323C4()
{
  result = v0 + 56;
  v3 = v1 + 56 + 8 * (((1 << *(v0 + 32)) + 63) >> 6);
  return result;
}

uint64_t sub_1C44323EC()
{
}

uint64_t sub_1C443241C()
{

  return MEMORY[0x1EEE09CC8](v0 - 160);
}

uint64_t sub_1C4432464()
{
  v1 = *(v0 + *(type metadata accessor for HUTenPointBehaviors(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

void sub_1C4432588()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
}

uint64_t sub_1C4432598(uint64_t result)
{
  v2[30] = *(v1 + 336);
  v2[33] = result;
  v2[34] = 0x656C61636F6CLL;
  v2[35] = 0xE600000000000000;
  return result;
}

uint64_t sub_1C44325E8()
{
}

uint64_t sub_1C4432674()
{
}

uint64_t sub_1C44326A8()
{
  v2 = *(v0 - 296);

  return sub_1C4A31CB4(v2, type metadata accessor for EntityMatch);
}

uint64_t sub_1C44326E4()
{

  return sub_1C4F02938();
}

uint64_t sub_1C4432760()
{

  return sub_1C4F02BC8();
}

uint64_t sub_1C44327E4()
{

  return swift_beginAccess();
}

void sub_1C4432824()
{
  v5 = *(v3 - 192);
  v5[(v0 >> 6) + 8] |= 1 << v0;
  v6 = (v5[6] + 16 * v0);
  *v6 = v1;
  v6[1] = v2;
  *(v5[7] + 8 * v0) = v4;
  v7 = v5[2];
}

uint64_t sub_1C443287C()
{
  v2 = *(v0 + 8);
  result = *(v1 - 200);
  v4 = *(v1 - 216);
  return result;
}

uint64_t sub_1C44328A0()
{

  return sub_1C446F0D0(v0);
}

uint64_t sub_1C44328B8()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_1C44328E0()
{
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[10];
}

void sub_1C443290C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
}

uint64_t sub_1C4432918()
{
  v2 = *(v1 - 128);
  v3 = *(*(v1 - 136) + 16);
  return v0;
}

uint64_t sub_1C4432980()
{
  v1 = *(v0 - 296) + 8;
  result = *(v0 - 288);
  v3 = *(v0 - 496);
  v4 = *(v0 - 512);
  return result;
}

uint64_t sub_1C44329A8()
{

  return sub_1C4F02938();
}

uint64_t sub_1C44329E0()
{

  return swift_once();
}

uint64_t sub_1C4432A54()
{

  return sub_1C4423A0C(v0, v1, v2);
}

uint64_t sub_1C4432A84()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 168);
  return result;
}

uint64_t sub_1C4432A94()
{
  v0[9] = v4;
  v0[10] = 0x79676F6C6F746E4FLL;
  v0[11] = v2;

  return sub_1C44098F0(v1, v3);
}

uint64_t sub_1C4432AC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = (v3 + a3);
  v6 = *(v3 + a3 + 8);
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1C4432B00()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_1C4432B50()
{

  return MEMORY[0x1EEE12868](v1, v0);
}

uint64_t sub_1C4432B88()
{
  v2 = *(v0 + 32);

  return sub_1C4EF9328();
}

uint64_t sub_1C4432BAC()
{

  return sub_1C4423A0C(v2 - 144, v0, v1);
}

uint64_t sub_1C4432BD4()
{
  result = v0[26];
  v2 = v0[27];
  v3 = v0[28];
  v4 = v0[29];
  v5 = v0[30];
  v6 = v0[31];
  v7 = v0[32];
  return result;
}

uint64_t sub_1C4432C18()
{
  v2 = *(v0 + 64);

  return swift_arrayDestroy();
}

uint64_t sub_1C4432C38(unint64_t *a1)
{

  return sub_1C4401CBC(a1, v1, v2);
}

void sub_1C4432C74()
{
  v1 = v0[3];
  v0[9] = *(*(v0[2] + 56) + 96);
  v0[10] = *(v1 + 32);
}

uint64_t sub_1C4432C90(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  v4 = *(v2 + 28);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4432D08()
{

  return sub_1C4C47184(v0, type metadata accessor for GraphTriple);
}

void *sub_1C4432D30(void *a1)
{
  result = sub_1C4409678(a1, v1);
  v4 = *(v2 + 16);
  return result;
}

uint64_t sub_1C4432DA8()
{

  return swift_arrayDestroy();
}

uint64_t sub_1C4432DC4()
{

  return sub_1C4F02438();
}

uint64_t sub_1C4432E3C(void *a1)
{
  sub_1C4409678(a1, v1);
  v3 = *(v2 + 104);
  return v1;
}

uint64_t sub_1C4432E68()
{

  return swift_dynamicCast();
}

uint64_t sub_1C4432E8C()
{
  v1 = *(*(v0 - 392) + 8);
  result = *(v0 - 328);
  v3 = *(v0 - 352);
  return result;
}

uint64_t sub_1C4432EAC()
{

  return swift_beginAccess();
}

void sub_1C4432F00()
{
  v1 = *(v0 - 112);
  v2 = *(v0 - 128);
  v3 = *(v0 - 144);
}

uint64_t sub_1C4432F50()
{

  return swift_once();
}

uint64_t sub_1C4433038()
{

  return sub_1C4F02938();
}

uint64_t sub_1C4433058()
{

  return sub_1C4F025E8();
}

uint64_t sub_1C443307C()
{

  return sub_1C4F02938();
}

uint64_t sub_1C443309C()
{
  v2 = *(v0 + 40);

  return sub_1C4F02AF8();
}

void sub_1C4433104(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t sub_1C4433124()
{
  result = v1;
  *(v3 - 104) = v1;
  *(v3 - 96) = v0;
  *(v3 - 160) = v2;
  return result;
}

uint64_t sub_1C44331AC()
{

  return swift_allocObject();
}

uint64_t sub_1C44331C4()
{

  return sub_1C440BAA8(v0, 1, 1, v1);
}

uint64_t sub_1C44331F4()
{
  v2 = *(v0 + 112);
  v3 = *(v0 + 64);
}

uint64_t sub_1C443327C()
{

  return sub_1C45D72D0(v0, (v1 + 16), v2 - 232);
}

uint64_t sub_1C4433298()
{
  v2 = v0[22];
  v3 = v0[18];
  v4 = v0[16];

  return sub_1C448D818(v2);
}

void sub_1C44332B4()
{
  v1 = v0[14];
  v2 = v0[8];
  v3 = v0[9] + 8;
}

uint64_t sub_1C44332C4()
{

  return swift_once();
}

uint64_t sub_1C44332E4(uint64_t a1)
{
  *(a1 + 8) = sub_1C46FA8FC;
  v2 = *(v1 + 104);
  return v1 + 40;
}

uint64_t sub_1C4433340@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  *v4 = result;
  v4[1] = a2;
  return result;
}

double sub_1C443335C()
{

  return sub_1C465C7A0(v0, v1);
}

uint64_t *sub_1C44333C8()
{
  v3 = *(v0 + 8);
  *(v1 - 168) = v3;
  *(v1 - 88) = v3;

  return sub_1C4422F90((v1 - 120));
}

void sub_1C44333E8()
{
  v3 = v1[104];
  v4 = v1[103];
  v5 = v1[102];
  v6 = v1[101];
  v7 = v1[100];
  v8 = v1[72];
}

void sub_1C4433434()
{

  sub_1C459D100();
}

BOOL sub_1C4433458(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_1C4433474(uint64_t result)
{
  v2 = result & ~(-1 << *(v1 + 32));
  v3 = *(v1 + 56 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v2;
  return result;
}

__n128 sub_1C443349C(__n128 *a1)
{
  result = *(v1 - 288);
  a1[1] = result;
  return result;
}

uint64_t sub_1C44334B8()
{

  return swift_once();
}

uint64_t sub_1C44334D8(uint64_t a1, uint64_t a2)
{
  result = sub_1C440BAA8(a1, a2, 1, v2);
  v5 = *(v3 + 20);
  return result;
}

uint64_t sub_1C44334F8()
{
  v3 = (v1 + *(v0 + 40));
  *v3 = 0;
  v3[1] = 0;
  v4 = v1 + *(v0 + 44);

  return sub_1C4EFE478();
}

uint64_t sub_1C4433540()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_1C44335C4()
{
  v2 = v0[15];
  v3 = v0[16];
  v0[90] = v2;
  v0[91] = v3;

  return sub_1C4418280((v0 + 12), v2);
}

uint64_t sub_1C44335E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = *(a14 + 16);

  return sub_1C4F02358();
}

uint64_t sub_1C4433608(uint64_t a1)
{
  v3 = *(a1 + 28);
  v4 = *(v2 + 16);
  return v1;
}

uint64_t sub_1C4433648()
{

  return swift_beginAccess();
}

uint64_t sub_1C4433678@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v2 - 208);

  return sub_1C447212C(a1 + v1, v4);
}

void sub_1C44336BC()
{
  v1 = *(v0 - 288);
  v2 = *(v1 + 44);
  *(v0 - 400) = *(v1 + 40);
}

uint64_t sub_1C443373C()
{

  return swift_once();
}

uint64_t sub_1C443375C()
{

  return swift_once();
}

uint64_t sub_1C443377C()
{

  return swift_once();
}

uint64_t sub_1C443379C@<X0>(uint64_t a1@<X8>, int a2, __int16 a3, char a4, char a5)
{
  a5 = *(v5 + a1);

  return sub_1C4495FC0(&a5);
}

void sub_1C44337B8()
{

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C4433834()
{

  return sub_1C4EF9498();
}

uint64_t sub_1C4433858()
{

  return swift_once();
}

uint64_t sub_1C4433898()
{

  return sub_1C4EFB638();
}

uint64_t sub_1C44338B8()
{

  return sub_1C4423A0C(v2 - 120, v0, v1);
}

uint64_t sub_1C44338D4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[26] = result;
  v7[27] = a2;
  v7[28] = a3;
  v7[29] = a4;
  v7[30] = a5;
  v7[31] = a6;
  v7[32] = a7;
  return result;
}

uint64_t sub_1C44338E8@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v2 - 96);
  *(v4 + 24) = a1;
  *(v4 + 32) = v1;

  return swift_unownedRetain();
}

void *sub_1C4433950()
{

  return sub_1C4409678(v0, v1);
}

uint64_t sub_1C443397C(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 72);
  return v2 + 16;
}

uint64_t sub_1C4433990(double a1)
{

  return sub_1C4CF7188(0x6F69746172657469, 0xEE0074726174536ELL, v1, a1);
}

double sub_1C44339FC(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  return result;
}

uint64_t sub_1C4433A20()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t *sub_1C4433A40()
{
  v2 = *(v0 - 256);

  return BMEventBase.ingestBaseEvent(startTime:endTime:pipelineType:stores:)(0, 1, (v0 - 160));
}

uint64_t sub_1C4433A70()
{

  return sub_1C4D5F434(v0, type metadata accessor for WalletTransactionOrderStructs.IdentifierRelationshipType);
}

void sub_1C4433A98(uint64_t a1@<X8>)
{
  *(a1 - 256) = 0;
  *(v1 - 472) = 0;
  *(v1 - 464) = 0;
}

uint64_t sub_1C4433AE4()
{
  result = *(v0 - 256);
  v3 = *(v1 - 312);
  v4 = *(v1 - 280);
  return result;
}

uint64_t sub_1C4433B18()
{
  *(v3 - 216) = v1;
  v4 = *(v2 + 16);
  return v0;
}

uint64_t sub_1C4433BBC()
{

  return swift_unknownObjectRelease();
}

void sub_1C4433C2C()
{
  v2 = v0[61];
  v1 = v0[62];
  v3 = v0[58];
  v5 = v0[55];
  v4 = v0[56];
  v6 = v0[54];
}

uint64_t sub_1C4433C5C()
{

  return sub_1C4F02858();
}

uint64_t sub_1C4433C7C(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 48);
  v4 = *(v2 + 56);
  return v2 + 40;
}

uint64_t sub_1C4433CB8()
{

  return swift_willThrow();
}

uint64_t sub_1C4433CD0()
{

  return sub_1C4460108(v1, v0, v2, v3);
}

uint64_t sub_1C4433D0C()
{
  result = *(v0 - 136);
  v2 = *(v0 - 104);
  return result;
}

uint64_t sub_1C4433D44()
{

  return swift_beginAccess();
}

uint64_t sub_1C4433D90()
{
  *(v1 - 120) = *(v0 + 2573);
  result = *(v0 + 1584);
  v3 = *(v0 + 1576);
  return result;
}

uint64_t sub_1C4433DB4()
{
  v2 = v0[15];
  v3 = v0[16];
  v0[41] = v2;
  v0[42] = v3;

  return sub_1C4418280((v0 + 12), v2);
}

uint64_t sub_1C4433E08()
{
  v1 = v0[22];
  v2 = v0[23];
  return v0[21];
}

uint64_t sub_1C4433E14()
{
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xE000000000000000;

  return sub_1C4EF9CD8();
}

uint64_t sub_1C4433E30()
{
  v2 = *(v0 - 256);

  return sub_1C4F00AA8();
}

void sub_1C4433E74()
{
}

uint64_t sub_1C4433E8C()
{

  return sub_1C4EFB998();
}

uint64_t sub_1C4433EF8()
{

  return sub_1C4F01748();
}

uint64_t sub_1C4433F10(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 104);
  return *(v2 + 96);
}

uint64_t sub_1C4433F24(uint64_t a1)
{
  *(a1 + 16) = 0;

  return type metadata accessor for PhaseStores();
}

void sub_1C4433FCC()
{
  *(v0 - 328) = 0;
  *(v0 - 320) = 0;
  *(v0 - 208) = 0;
  *(v0 - 192) = 0;
}

uint64_t sub_1C4434000(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_1C4434068()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
}

uint64_t sub_1C4434074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 - 96) = a6;
  *(v6 - 88) = a1;
  return 0;
}

uint64_t sub_1C4434094()
{
  v3 = *v0;
  result = v1;
  v5 = *(v2 - 88);
  return result;
}

void sub_1C44340FC(uint64_t a1, unint64_t *a2)
{

  sub_1C47AA700(319, a2, type metadata accessor for FeatureValue);
}

uint64_t sub_1C4434144()
{

  return sub_1C4F02458();
}

uint64_t sub_1C44341E8()
{

  return swift_allocObject();
}

uint64_t sub_1C4434200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  a13 = a4;
  a14 = a5;
  a10 = a1;
  a11 = a2;

  return sub_1C442E860(&a10, a3 + 16);
}

__n128 sub_1C4434224()
{
  result = *(v0 - 224);
  *(v0 - 176) = *(v0 - 240);
  *(v0 - 160) = result;
  v2 = *(v0 - 152);
  return result;
}

uint64_t sub_1C4434234()
{
  v1 = *(v0 - 504);
  result = *(v0 - 256);
  v3 = *(v0 - 264);
  return result;
}

uint64_t sub_1C443426C@<X0>(char a1@<W8>)
{
  *(v1 - 128) = a1;
  v3 = *(v1 - 232);

  return sub_1C4F02698();
}

void sub_1C4434290(char a1@<W8>)
{
  *v2 = a1;
  *(v2 + 8) = *(v1 + 136);
  *(v2 + 16) = v3;
}

uint64_t sub_1C44342BC()
{

  return sub_1C4F02BC8();
}

void sub_1C44342E0()
{

  JUMPOUT(0x1C693FEF0);
}

uint64_t sub_1C4434328()
{

  return sub_1C4F02248();
}

void sub_1C4434354()
{

  sub_1C44F4214();
}

uint64_t sub_1C443439C()
{
  v3 = *(v0 + 28);
  *(v1 - 68) = 3;

  return type metadata accessor for Source();
}

uint64_t sub_1C44343F0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 136);
  v5 = *(v1 - 128);

  return sub_1C4F026C8();
}

uint64_t sub_1C44344B8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_1C443451C(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

id sub_1C443454C(id a1)
{
  v4 = v1[9];
  v3 = v1[10];
  v5 = v1[7];
  v6 = v1[8];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[3];

  return a1;
}

uint64_t sub_1C4434578()
{

  return sub_1C441D828(v0, v1, (v2 - 120));
}

uint64_t sub_1C4434594()
{

  return sub_1C4EF9BE8();
}

void sub_1C44345C0()
{
  v4 = *(v3 - 232);
  v5 = *(v3 - 224) + 1;
  *(v0 + 16) = v1;
  *(v0 + 24 * v2 + 32) = v4;
}

uint64_t sub_1C44345DC()
{

  return sub_1C4418280(v1 - 128, v0);
}

void sub_1C4434640()
{
  v4 = *(v2 - 112);
  v5 = *(v2 - 104);

  sub_1C4A8DF38(v1, v4, v5, v0);
}

uint64_t sub_1C4434670()
{
  v2 = *(v0 - 248);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_1C4434688()
{

  return sub_1C4EF97B8();
}

uint64_t sub_1C44346D0()
{
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[14];
  v5 = v0[11];
}

void sub_1C44346EC()
{
  v2 = *(v0 - 480);
  v3 = *(v0 - 256);

  sub_1C4B1E304();
}

uint64_t sub_1C4434758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  sub_1C4C10CD0(a1, a2, a3, a4, a5);

  return sub_1C4C10BC0(v5 - 144);
}

uint64_t sub_1C4434780(float a1)
{
  *v1 = a1;

  return sub_1C441D828(v3, v2, (v4 - 88));
}

uint64_t sub_1C44347A0()
{
  v3 = *(v1 - 592);

  return sub_1C441D828(v3, v0, (v1 - 128));
}

uint64_t sub_1C44347C0()
{

  return sub_1C4F01048();
}

uint64_t sub_1C44347EC()
{

  return sub_1C442B870(v0, v1 - 96);
}

uint64_t sub_1C4434810(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *v10 = a1;

  return sub_1C441D828(v12, v11, &a10);
}

uint64_t sub_1C4434830()
{

  return sub_1C4F02938();
}

uint64_t *sub_1C443486C()
{
  v2 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];

  return sub_1C4D215A4(v5, v3, v4);
}

uint64_t sub_1C44348A0@<X0>(uint64_t a1@<X8>)
{
  result = v2 + *(v1 + 28);
  v5 = *(v3 - 96) + a1;
  return result;
}

uint64_t sub_1C44348B8()
{
  v2 = *(v1 - 168);
  v3 = *(*(v1 - 176) + 8);
  return v0;
}

void sub_1C44348C8(unint64_t a1@<X8>)
{

  sub_1C44C9240(a1 > 1, v2, 1, v1);
}

uint64_t sub_1C44348EC(uint64_t result)
{
  *(v1 - 72) = result;
  v2 = *(result - 8);
  return result;
}

void sub_1C4434924(uint64_t a1@<X8>)
{
  v2 = (*(v1 + 160) + a1);
  v3 = *v2;
  v4 = v2[1];
}

uint64_t sub_1C4434964(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_1C4F01358())
  {
    result = sub_1C4434A7C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1C4F02208();
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
          result = sub_1C4F022F8();
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

void *sub_1C4434A7C(uint64_t a1, uint64_t a2)
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

  sub_1C456902C(&qword_1EC0BD2E8, &unk_1C4F2DAA0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

uint64_t sub_1C4434AEC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_1C44A05DC(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1C4434BD0@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, void *a4@<X8>)
{
  v18[4] = *MEMORY[0x1E69E9840];
  v5 = objc_opt_self();
  v6 = [objc_opt_self() bm_allowedClassesForSecureCodingBMBookmark];
  sub_1C4F01AB8();

  v7 = sub_1C4F01AA8();

  v8 = sub_1C4EF9A38();
  v18[0] = 0;
  v9 = [v5 unarchivedObjectOfClasses:v7 fromData:v8 error:v18];

  if (v9)
  {
    v10 = v18[0];
    sub_1C4F02078();
    swift_unknownObjectRelease();
    sub_1C456902C(a2, a3);
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      *a4 = 0;
    }
  }

  else
  {
    v12 = v18[0];
    v13 = sub_1C4EF97A8();

    result = swift_willThrow();
    *a1 = v13;
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C4434D94(uint64_t a1, unint64_t a2)
{
  v4 = sub_1C4434964(a1, a2);
  sub_1C4434AEC(&unk_1F43D0FD8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1C4434E40()
{

  return swift_beginAccess();
}

void sub_1C4434E60()
{
  v3 = *(v0 + v1);

  sub_1C4660C74();
}

uint64_t sub_1C4434EBC()
{

  return sub_1C45FE854(v0);
}

void sub_1C4434ED4(uint64_t a1@<X8>)
{
  v3 = *(v1 + 56);
  v4 = (*(v1 + 48) + 16 * (a1 | (v2 << 6)));
  v5 = *v4;
  v6 = v4[1];
}

uint64_t *sub_1C4434EE8(uint64_t a1)
{
  *(v1 - 88) = a1;

  return sub_1C4422F90((v1 - 120));
}

uint64_t sub_1C4434F24()
{

  return swift_once();
}

void sub_1C4434F44()
{
  v1 = v0[59];
  v2 = v0[46];
  v3 = v0[42];
  v4 = v0[43];
  v5 = v0[41];
  v6 = v0[32];
  v7 = v0[29];
  v8 = v0[30];
}

uint64_t sub_1C4434F80()
{
  result = v0[14];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[2];
  v0[15] = *(v3 + 16);
  v0[16] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  return result;
}

void sub_1C4434FA0()
{

  JUMPOUT(0x1C6940010);
}

id sub_1C4434FC4()
{
  v2 = *(v0 + 3752);

  return objc_allocWithZone(v2);
}

uint64_t sub_1C4435018()
{
  sub_1C44482AC((v0 - 160), (v0 - 192));

  return swift_isUniquelyReferenced_nonNull_native();
}

unint64_t sub_1C44350A0()
{
  v4 = (v0 + *(v1 + 44));
  v5 = v4[1];
  *(v2 - 96) = *v4;
  *(v2 - 88) = v5;
  *(v2 - 65) = 7;

  return sub_1C485AC04();
}

uint64_t sub_1C4435104()
{
  v2 = *(v0 + 272);
  v3 = *(*(v0 + 264) + 16);
  return v1;
}

uint64_t sub_1C4435120(uint64_t result)
{
  *(result + 72) = v1;
  strcpy((result + 80), "updateStatus");
  *(result + 93) = 0;
  *(result + 94) = -5120;
  v3 = *(v2 + 32);
  return result;
}

uint64_t sub_1C443514C(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 192);
  return *(v2 + 152);
}

void sub_1C443517C()
{

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C44351A0()
{
  sub_1C440962C((v0 + 32));
  *(v0 + 16) = 0;
  return v0;
}

uint64_t sub_1C44351F0()
{
  v3 = *v0;
  result = v1;
  v5 = *(v2 - 416);
  return result;
}

uint64_t sub_1C4435224()
{
}

uint64_t sub_1C4435250()
{

  return sub_1C4485564(v0, type metadata accessor for GraphTriple);
}

id sub_1C4435278()
{

  return [v1 (v0 + 663)];
}

uint64_t sub_1C44352A8()
{

  return sub_1C44869B4(v0 + 336, v2, v1);
}

uint64_t sub_1C4435324()
{

  return swift_once();
}

void sub_1C4435358()
{
  v2 = *(v0 - 400);
}

uint64_t sub_1C443537C()
{
  v2 = *(v0 + 336);
  v3 = *(v0 + 312);

  return sub_1C4F00978();
}

uint64_t sub_1C4435398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  result = v11 + *(a11 + 36);
  v15 = v12 + *(v13 + 48);
  return result;
}

uint64_t sub_1C44353B4()
{

  return sub_1C4F02438();
}

uint64_t sub_1C44353D0()
{

  return swift_once();
}

void sub_1C4435404()
{
  *(v1 + 16) = v2;
  v6 = (v1 + 32 + 16 * v0);
  *v6 = v3;
  v6[1] = v4;
  *(v5 - 112) = **(v5 - 208);
}

__n128 sub_1C4435424()
{
  v2 = *(v0 + 496);
  *(v1 - 240) = *(v0 + 480);
  *(v1 - 224) = v2;
  result = *(v0 + 512);
  *(v1 - 208) = result;
  return result;
}

uint64_t sub_1C4435438()
{

  return type metadata accessor for Configuration();
}

uint64_t sub_1C443546C()
{

  return swift_once();
}

_OWORD *sub_1C443548C()
{

  return sub_1C44482AC((v0 - 176), (v0 - 120));
}

void sub_1C44354A4(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v2 = *(v1 + 72);
}

uint64_t sub_1C44354B4()
{
}

uint64_t sub_1C44354CC()
{
  v2 = *(v0 - 184);

  return sub_1C4EFBCD8();
}

uint64_t sub_1C44354FC()
{

  return sub_1C4F02248();
}

uint64_t sub_1C4435540()
{

  return sub_1C4F02938();
}

uint64_t sub_1C44355B0()
{
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 64);
  v5 = *(v0 + 56);

  return sub_1C444F05C(v2, v3);
}

uint64_t sub_1C44355F4(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 24);
  v4 = *(v2 + 72);
  return *(v2 + 32);
}

uint64_t sub_1C443560C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 104) = a2;
  *(a1 + 72) = v3;
  v5 = *(v2 + 408);

  return sub_1C4EFB728();
}

uint64_t sub_1C443562C()
{

  return swift_bridgeObjectRelease_n();
}

double sub_1C4435658@<D0>(uint64_t a1@<X8>)
{
  result = *(v2 + a1);
  v4 = *(v1 + a1);
  return result;
}

uint64_t sub_1C44356B8()
{
  result = v0 + *(v2 + 28);
  v5 = *(v3 - 272) + v1;
  v6 = *(v3 - 272);
  return result;
}

uint64_t sub_1C44356DC()
{
  v3 = *(v2 - 248);
  v4 = *(*(v2 - 256) + 16);
  result = v0 + *(v1 + 24);
  v6 = *(v2 - 344);
  return result;
}

uint64_t sub_1C4435744()
{
  v8 = (v3 + v4[8]);
  *v8 = v1;
  v8[1] = v0;
  v9 = (v3 + v4[10]);
  v10 = *(v5 - 120);
  *v9 = *(v5 - 128);
  v9[1] = v10;
  *(v3 + v4[11]) = v7;
  *(v3 + v4[12]) = v2;
  v11 = *(v5 - 120);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

void sub_1C443579C()
{
  v3 = *(v1 + 40);
  v4 = *(v1 + 16);
}

uint64_t sub_1C44357B4()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t sub_1C4435804(uint64_t a1, uint64_t a2, int a3)
{
  *(v3 - 132) = a3;

  return type metadata accessor for ConstructionProgressTokens(0);
}

BOOL sub_1C443583C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_1C4435874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 32) = v2;
  v3 = *(a2 + 88);
  v5 = *(v3 + 24);
  return v3 + 24;
}

uint64_t sub_1C4435894()
{

  return sub_1C4F00308();
}

uint64_t sub_1C44358B0()
{
  v2 = *(v0 - 232);

  return sub_1C4EFBCD8();
}

void sub_1C44358D4()
{
  v1 = *(v0 - 120);
  v2 = *(v0 - 136);
  v3 = *(v0 - 152);
}

uint64_t sub_1C4435934()
{

  return sub_1C446C37C(v0, v1);
}

uint64_t sub_1C443594C(uint64_t result)
{
  v1[39] = result;
  v1[40] = 0x6E656469666E6F63;
  v1[41] = 0xEA00000000006563;
  return result;
}

void sub_1C4435970(unint64_t a1)
{

  sub_1C457E054(a1, v3, v1, v2);
}

void sub_1C4435998(uint64_t a1)
{
  v4 = *(v1 - 144);

  sub_1C4839234(v4, a1);
}

void sub_1C44359B4()
{
  v1 = v0[186];
  v2 = v0[185];
  v3 = v0[184];
  v4 = v0[183];
  v5 = v0[182];
  v6 = v0[181];
  v7 = v0[180];
  v8 = v0[179];
  v9 = v0[178];
  v10 = v0[177];
  v11 = v0[176];
  v12 = v0[175];
  v13 = v0[174];
  v14 = v0[173];
  v15 = v0[172];
  v16 = v0[171];
  v17 = v0[170];
  v18 = v0[169];
  v19 = v0[168];
  v20 = v0[167];
  v21 = v0[166];
  v22 = v0[165];
  v23 = v0[164];
  v24 = v0[162];
  v25 = v0[161];
  v26 = v0[160];
  v27 = v0[159];
  v28 = v0[158];
  v29 = v0[157];
  v30 = v0[156];
  v31 = v0[155];
  v32 = v0[154];
  v33 = v0[153];
  v34 = v0[152];
  v35 = v0[151];
  v36 = v0[150];
  v37 = v0[149];
  v38 = v0[148];
  v39 = v0[147];
  v40 = v0[146];
  v41 = v0[145];
  v42 = v0[144];
  v43 = v0[143];
  v44 = v0[142];
  v45 = v0[141];
  v46 = v0[140];
  v47 = v0[139];
  v48 = v0[138];
  v49 = v0[137];
  v50 = v0[136];
  v51 = v0[135];
  v52 = v0[134];
  v53 = v0[133];
  v54 = v0[132];
  v55 = v0[131];
  v56 = v0[130];
  v57 = v0[129];
  v58 = v0[127];
  STACK[0x200] = v0[125];
  STACK[0x208] = v0[124];
  STACK[0x210] = v0[123];
  STACK[0x218] = v0[122];
  STACK[0x220] = v0[119];
  STACK[0x228] = v0[118];
  STACK[0x230] = v0[117];
  STACK[0x238] = v0[116];
  STACK[0x240] = v0[115];
  STACK[0x248] = v0[114];
  STACK[0x250] = v0[113];
  STACK[0x258] = v0[112];
  STACK[0x260] = v0[111];
  STACK[0x268] = v0[110];
  STACK[0x270] = v0[109];
  STACK[0x278] = v0[108];
  STACK[0x280] = v0[107];
  STACK[0x288] = v0[106];
  STACK[0x290] = v0[105];
  STACK[0x298] = v0[104];
  STACK[0x2A0] = v0[103];
  STACK[0x2A8] = v0[102];
  STACK[0x2B0] = v0[100];
  STACK[0x2B8] = v0[99];
  STACK[0x2C0] = v0[98];
  STACK[0x2C8] = v0[97];
  STACK[0x2D0] = v0[96];
  STACK[0x2D8] = v0[95];
  STACK[0x2E0] = v0[94];
  STACK[0x2E8] = v0[93];
  STACK[0x2F0] = v0[92];
  STACK[0x2F8] = v0[91];
  STACK[0x300] = v0[90];
  STACK[0x308] = v0[89];
}

uint64_t sub_1C4435C2C()
{

  return sub_1C4420C3C(v2, v0, v1);
}

uint64_t sub_1C4435C84()
{
  *(v3 - 432) = v0;
  *(v3 - 376) = v1;
  *(v3 - 392) = v2;
  *(v3 - 384) = *(v3 - 192);

  return type metadata accessor for Source();
}

void *sub_1C4435CFC(void *result)
{
  result[2] = v4;
  result[3] = v6;
  result[4] = v2;
  result[5] = v1;
  result[6] = v5;
  result[7] = v3;
  return result;
}

void sub_1C4435DA8(void *a1@<X0>, const char *a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(a3 - 256);

  _os_log_impl(a1, v4, v6, a2, v3, 0x1Cu);
}

uint64_t sub_1C4435DCC()
{

  return sub_1C4F02658();
}

void sub_1C4435DFC(char a1)
{

  sub_1C44C9240(a1, v1, 1, v2);
}

uint64_t sub_1C4435E18()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);

  return sub_1C4F02778();
}

uint64_t sub_1C4435E5C()
{
  v3 = (v0 + *(*(v1 - 88) + 32));
  v4 = *v3;
  v5 = v3[1];
  *(v1 - 69) = 4;

  return sub_1C4F02738();
}

uint64_t sub_1C4435EC0(uint64_t a1, int *a2)
{
  *(v2 + 32) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 40) = v4;
  *v4 = v2;
  v4[1] = sub_1C445B22C;

  return v6(v2 + 16);
}

uint64_t sub_1C4435FB4()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_currentJobStopClosure;
  *(v0 + 72) = OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_currentJobStopClosure;
  v4 = (v2 + v3);
  v6 = *v4;
  v5 = v4[1];
  *v4 = &unk_1C4F6A878;
  v4[1] = v1;

  sub_1C44239FC(v6);
  sub_1C4F01968();
  v7 = *(v0 + 64);
  v8 = v7[5];
  v9 = v7[6];
  sub_1C4409678(v7 + 2, v8);
  v14 = (sub_1C43FCFC0() + 32);
  v15 = (*v14 + **v14);
  v10 = (*v14)[1];
  v11 = swift_task_alloc();
  *(v0 + 80) = v11;
  *v11 = v0;
  v11[1] = sub_1C445AEFC;
  v12 = *(v0 + 104);

  return v15(v12, v8, v9);
}

uint64_t sub_1C44362AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 104) = a6;
  *(v6 + 56) = a4;
  *(v6 + 64) = a5;
  *(v6 + 48) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C4435FB4, a4, 0);
}

uint64_t sub_1C44362D4()
{
  sub_1C43FBCD4();
  v1[20] = v0;
  v2 = sub_1C4EF9CD8();
  v1[21] = v2;
  v3 = *(v2 - 8);
  sub_1C4404280();
  v1[22] = v4;
  v6 = *(v5 + 64);
  v1[23] = sub_1C43FBE7C();
  v7 = sub_1C456902C(&qword_1EC0C6428, &unk_1C4F6D7E8);
  sub_1C43FBD18(v7);
  v9 = *(v8 + 64) + 15;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4436860, v0, 0);
}

uint64_t sub_1C44363DC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C445AEF8;

  return sub_1C44362D4();
}

uint64_t sub_1C4436470()
{
  v2 = *v0;

  return swift_isUniquelyReferenced_nonNull_native();
}

void sub_1C44364AC()
{

  JUMPOUT(0x1C6940010);
}

void sub_1C4436500()
{
  v2[60] = v0;
  v2[61] = v3;
  v4 = v2[23];
  v5 = *(v1 + 48) + 16 * (__clz(__rbit64(v0)) | (v3 << 6));
}

uint64_t sub_1C4436528()
{
  v3 = v0[13];
  v2 = v0[14];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[10];
  v7 = v0[6];
}

uint64_t sub_1C4436574()
{
  result = *(v0 - 312);
  v2 = *(v0 - 248);
  return result;
}

uint64_t sub_1C443658C()
{
  v2 = *(v1 - 320) + 8;
  result = v0;
  v4 = *(v1 - 328);
  return result;
}

uint64_t sub_1C44365BC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  v3 = *(v2 + 16);
  return result;
}

uint64_t sub_1C443661C()
{
  result = *(v0 + 16);
  v3 = *(v0 + 24);
  v2 = *(v0 + 192);
  return result;
}

uint64_t sub_1C4436644()
{
  v2 = v0[15];
  v3 = v0[16];
  v0[42] = v2;
  v0[43] = v3;

  return sub_1C4418280((v0 + 12), v2);
}

uint64_t sub_1C4436664()
{
  result = v1;
  *(v2 - 512) = *(v0 + 8);
  return result;
}

uint64_t sub_1C44366C0()
{
  *(v0 + 120) = v2;
  *(v0 + 80) = v1;

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1C44366E0()
{
  v2 = *(v0 - 336);

  return sub_1C4F00C28();
}

uint64_t sub_1C4436700()
{
  v2 = *(v0 - 320);
}

void sub_1C4436718()
{

  sub_1C4BB6B24();
}

uint64_t sub_1C4436750()
{
  v3 = *(v0 + 112);
  v4 = *(v2 - 100) & 1;
  return v1;
}

uint64_t sub_1C443676C(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 3;

  return swift_willThrow();
}

void sub_1C44367A4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1C44367DC@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = v2;
  a2[1] = result;
  v4 = *(v3 + 44);
  return result;
}

uint64_t sub_1C4436800()
{
  v1 = *(v0 - 328);
  v2 = *(v0 - 128);
  result = *(v2 + v1);
  *(v2 + v1) = *(v0 - 112);
  return result;
}

uint64_t sub_1C443682C()
{
  v1 = *(*(v0 - 312) + 8);
  result = *(v0 - 104);
  v3 = *(v0 - 304);
  return result;
}

uint64_t sub_1C4436860()
{
  v157 = v0;
  v1 = *(v0 + 160);
  if (*(v1 + 112))
  {
    v2 = *(v1 + 112);
  }

  else
  {
    v2 = sub_1C4429B18();
    v20 = *(v1 + 112);
  }

  *(v0 + 224) = v2;
  *(v1 + 112) = v2;

  v3 = v2[6];
  sub_1C4409678(v2 + 2, v2[5]);
  v4 = *(v3 + 16);
  v5 = sub_1C4404BCC();
  v7 = v6(v5);
  *(v0 + 232) = v7;
  *(v0 + 240) = v8;
  *(v0 + 248) = v9;
  v10 = v9;
  if (!v9)
  {
    if (qword_1EDDFD018 != -1)
    {
      sub_1C441A86C();
      swift_once();
    }

    v21 = *(v0 + 160);
    v22 = sub_1C4F00978();
    sub_1C442B738(v22, qword_1EDE2DDF8);
    sub_1C43FCFC0();

    v23 = sub_1C4F00968();
    sub_1C4F01CF8();
    sub_1C440D060();

    if (sub_1C44020E0())
    {
      v24 = *(v0 + 160);
      sub_1C43FECF0();
      v25 = swift_slowAlloc();
      sub_1C43FEC60();
      v26 = swift_slowAlloc();
      __src[0] = v26;
      *v25 = 136446210;
      v27 = sub_1C442A10C(*(v24 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate13ViewUpdateJob_viewQuery), *(v24 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate13ViewUpdateJob_viewQuery + 8));
      v30 = sub_1C448602C(v27, v28, v29);

      *(v25 + 4) = v30;
      sub_1C4402B48();
      _os_log_impl(v31, v32, v33, v34, v35, 0xCu);
      sub_1C440962C(v26);
      v36 = sub_1C43FEF7C();
      MEMORY[0x1C6942830](v36);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    sub_1C440F1BC();
    swift_beginAccess();
    v37 = v2[11];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v39 = *(v0 + 208);
    v38 = *(v0 + 216);
    v41 = *(v0 + 192);
    v40 = *(v0 + 200);
    v42 = *(v0 + 184);

    sub_1C4D1ECD4();
    sub_1C4409A94();

    __asm { BRAA            X3, X16 }
  }

  v11 = *(v0 + 160) + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate13ViewUpdateJob_viewQuery;
  v12 = *v11;
  *(v0 + 256) = *v11;
  LODWORD(v11) = *(v11 + 8);
  *(v0 + 376) = v11;
  v13 = v11 >> 14;
  v14 = (v11 >> 8) & 0x3F;
  if (v13 != 1)
  {
    LOBYTE(v14) = BYTE2(v12);
  }

  if (v13)
  {
    v15 = v14;
  }

  else
  {
    v15 = v12;
  }

  v16 = v7;
  v17 = v8;
  v18 = qword_1EDDDC0A0;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  if (v18 != -1)
  {
    swift_once();
  }

  v19 = qword_1EDE2C950;
  os_unfair_lock_lock((qword_1EDE2C950 + 24));
  sub_1C444949C((v19 + 16), __src);
  os_unfair_lock_unlock((v19 + 24));
  v45 = *(v0 + 216);
  v154 = *(v0 + 184);
  v47 = *(v0 + 160);
  v46 = *(v0 + 168);
  LOBYTE(v19) = __src[0];
  v48 = _s7MetricsO7PayloadVMa();
  *(v0 + 264) = v48;
  sub_1C44165A4(v45 + v48[10]);
  sub_1C44165A4(v45 + v48[11]);
  sub_1C44165A4(v45 + v48[12]);
  sub_1C44165A4(v45 + v48[13]);
  sub_1C44165A4(v45 + v48[14]);
  sub_1C44165A4(v45 + v48[15]);
  sub_1C44165A4(v45 + v48[16]);
  v49 = v45 + v48[9];
  sub_1C4EF9CC8();
  *v45 = v17;
  *(v45 + 8) = v10;
  *(v45 + 16) = 0;
  *(v45 + 24) = 0;
  *(v45 + 32) = 0;
  *(v45 + 33) = v15;
  *(v45 + 34) = v19;
  *(v45 + v48[17]) = 0;
  *(v45 + v48[18]) = 0;
  *(v45 + v48[19]) = 0;
  sub_1C43FBD94();
  sub_1C440BAA8(v50, v51, v52, v48);
  *(v0 + 272) = OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate13ViewUpdateJob_metricsPayload;
  sub_1C4403138();
  sub_1C468282C();
  swift_endAccess();
  sub_1C4EF9C88();
  if (qword_1EDDFD018 != -1)
  {
    sub_1C441A86C();
    swift_once();
  }

  v53 = sub_1C4F00978();
  *(v0 + 280) = sub_1C43FCEE8(v53, qword_1EDE2DDF8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v54 = sub_1C4F00968();
  sub_1C4F01CF8();
  sub_1C44624E4();

  if (os_log_type_enabled(v54, v45))
  {
    sub_1C43FECF0();
    v55 = swift_slowAlloc();
    sub_1C43FEC60();
    v155 = swift_slowAlloc();
    __src[0] = v155;
    *v55 = 136446210;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C43FE5F8();
    v56 = sub_1C444AB08();
    v58 = v57;

    v59 = sub_1C441D828(v56, v58, __src);

    *(v55 + 4) = v59;
    _os_log_impl(&dword_1C43F8000, v54, v45, "ViewUpdate: %{public}s: Beginning view update attempt", v55, 0xCu);
    sub_1C440962C(v155);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  sub_1C4F01968();
  v60 = *(*(v0 + 160) + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate13ViewUpdateJob_manager);
  *(v0 + 288) = v60;
  v61 = *(v60 + 16);
  v62 = swift_task_alloc();
  v62[2] = v16;
  v62[3] = v17;
  v62[4] = v10;
  v63 = *(v61 + OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_pool);
  v64 = swift_task_alloc();
  v64[2] = sub_1C4449808;
  v64[3] = v62;
  v64[4] = v61;

  sub_1C4449610(sub_1C4D1ECA8, v64, v65, v66, v67, v68, v69, v70);

  memcpy((v0 + 16), __src, 0x48uLL);
  v71 = *(v0 + 32);
  *(v0 + 296) = v71;
  if (qword_1EDDECB20 != -1)
  {
    swift_once();
  }

  if (qword_1EDE2D2B0 >= v71)
  {
    if (*(v0 + 64))
    {
      if (*(v0 + 296) < 2)
      {
        goto LABEL_46;
      }

      sub_1C44264D0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v97 = sub_1C4F00968();
      sub_1C4F01CF8();
      sub_1C440D060();

      if (sub_1C44020E0())
      {
        v99 = *(v0 + 240);
        v98 = *(v0 + 248);
        v100 = *(v0 + 232);
        sub_1C43FECF0();
        v101 = swift_slowAlloc();
        sub_1C43FEC60();
        swift_slowAlloc();
        sub_1C442AD20();
        *v101 = 136446210;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C43FE990();
        sub_1C444AB08();

        v102 = sub_1C43FFE24();
        v105 = sub_1C441D828(v102, v103, v104);

        *(v101 + 4) = v105;
        sub_1C4402B48();
        _os_log_impl(v106, v107, v108, v109, v110, 0xCu);
        sub_1C440962C(v62);
        v111 = sub_1C4416E14();
        MEMORY[0x1C6942830](v111);
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      if ((*(v0 + 56) & 2) != 0)
      {
LABEL_46:
        v142 = *(v0 + 248);
        v143 = swift_task_alloc();
        *(v0 + 336) = v143;
        *v143 = v0;
        sub_1C4430404(v143);
        v144 = *(v0 + 240);
        v145 = *(v0 + 224);
        v146 = *(v0 + 184);
        v147 = *(v0 + 160);
        sub_1C440F4D4(*(v0 + 232));
        sub_1C4409A94();

        return sub_1C4449BAC(v148, v149, v150, v151, v152);
      }

      else
      {
        v112 = *(v0 + 248);
        v113 = swift_task_alloc();
        *(v0 + 320) = v113;
        *v113 = v0;
        v113[1] = sub_1C4D12450;
        v114 = *(v0 + 288);
        v115 = *(v0 + 240);
        sub_1C440F4D4(*(v0 + 232));
        sub_1C4409A94();

        return sub_1C4D137F4(v116, v117, v118, v119);
      }
    }

    else
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v121 = sub_1C4F00968();
      v122 = sub_1C4F01CF8();

      if (os_log_type_enabled(v121, v122))
      {
        sub_1C43FECF0();
        v123 = swift_slowAlloc();
        sub_1C43FEC60();
        v124 = swift_slowAlloc();
        __src[0] = v124;
        *v123 = 136446210;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C43FE5F8();
        v125 = sub_1C444AB08();

        v126 = sub_1C43FD574();
        sub_1C441D828(v126, v127, v128);
        sub_1C443EFD8();

        *(v123 + 4) = v125;
        sub_1C44BBF64();
        _os_log_impl(v129, v130, v131, v132, v133, v134);
        sub_1C440962C(v124);
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
        v135 = sub_1C4416E14();
        MEMORY[0x1C6942830](v135);
      }

      v136 = swift_task_alloc();
      *(v0 + 304) = v136;
      *v136 = v0;
      v136[1] = sub_1C4D1214C;
      sub_1C43FE5F8();
      sub_1C4409A94();

      return sub_1C4D12F80(v137, v138, v139, v140);
    }
  }

  else
  {
    sub_1C446D0DC();
    sub_1C441C114();
    v72 = swift_allocError();
    *v73 = 0xD000000000000050;
    v73[1] = 0x80000001C4FC66A0;
    sub_1C442F9BC(v73, 2);
    swift_willThrow();
    sub_1C444AF3C(v0 + 16);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v74 = sub_1C4F00968();
    sub_1C4F01CF8();
    sub_1C44624E4();

    if (sub_1C444AD54())
    {
      sub_1C43FECF0();
      v75 = swift_slowAlloc();
      sub_1C43FEC60();
      swift_slowAlloc();
      sub_1C44C1320();
      *v75 = 136446210;
      sub_1C43FE5F8();
      v76 = sub_1C444AB08();
      v78 = sub_1C441D828(v76, v77, __src);

      *(v75 + 4) = v78;
      sub_1C43FD0B4();
      sub_1C44BBF64();
      _os_log_impl(v79, v80, v81, v82, v83, v84);
      sub_1C4415138();
      v85 = sub_1C4416E14();
      MEMORY[0x1C6942830](v85);
    }

    *(v0 + 352) = v72;
    v86 = *(v0 + 248);
    v87 = swift_task_alloc();
    v88 = sub_1C4480598(v87);
    *v88 = v89;
    sub_1C4413CC8(v88);
    sub_1C4409A94();

    return sub_1C4D14DE4(v90, v91, v92, v93, v94);
  }
}

void sub_1C4437394()
{
  sub_1C43FE96C();
  v77 = v2;
  v78 = v3;
  v5 = v4;
  v7 = v6;
  v8 = _s10ViewConfigVMa(0);
  v9 = sub_1C43FBCE0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  v69 = v13 - v12;
  v14 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v14);
  v16 = *(v15 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBC74();
  v71 = v18;
  sub_1C43FBE44();
  v19 = sub_1C4EFBC98();
  v20 = sub_1C43FCDF8(v19);
  v75 = v21;
  v76 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBCC4();
  v26 = v25 - v24;
  v27 = sub_1C4EFB678();
  v28 = sub_1C43FCDF8(v27);
  v73 = v29;
  v74 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBD08();
  v34 = v32 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v69 - v36;
  v38 = sub_1C456902C(&dword_1EC0C4518, &unk_1C4F628C0);
  v39 = sub_1C43FBD18(v38);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FBD08();
  v70 = v42 - v43;
  v45 = MEMORY[0x1EEE9AC00](v44);
  v72 = &v69 - v46;
  MEMORY[0x1EEE9AC00](v45);
  v48 = &v69 - v47;
  v49 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_configCache);
  v79.n128_u64[0] = v7;
  v79.n128_u64[1] = v5;
  v80 = v7;
  v81 = v5;
  os_unfair_lock_lock((v49 + 24));
  sub_1C4437998((v49 + 16));
  if (!v1)
  {
    os_unfair_lock_unlock((v49 + 24));
    if (sub_1C44157D4(v48, 1, v8) == 1)
    {
      sub_1C4420C3C(v48, &dword_1EC0C4518, &unk_1C4F628C0);
      sub_1C4EFB648();
      sub_1C43FE984();
      sub_1C4EFB638();
      v82 = v79;
      sub_1C4415EA8();
      sub_1C4EFB668();
      sub_1C4EFB638();
      (*(v73 + 32))(v34, v37, v74);
      sub_1C4EFBC88();
      sub_1C4EFBEE8();
      (*(v75 + 8))(v26, v76);
      v51 = objc_autoreleasePoolPush();
      sub_1C4EFB768();
      v52 = v71;
      sub_1C43FCF64();
      sub_1C440BAA8(v53, v54, v55, v56);
      sub_1C442D4F8();
      sub_1C4505F5C(v57, v58);
      sub_1C440BFD0();
      v59 = v72;
      sub_1C4EFBA08();
      sub_1C4420C3C(&v82, &unk_1EC0BC770, &qword_1C4F10DC0);
      sub_1C4420C3C(v52, &unk_1EC0C06C0, &unk_1C4F10DB0);
      objc_autoreleasePoolPop(v51);
      v60 = v70;
      sub_1C445FFF0(v59, v70, &dword_1EC0C4518, &unk_1C4F628C0);
      v61 = sub_1C440D3D8();
      if (sub_1C44157D4(v61, v62, v8) == 1)
      {
        sub_1C4420C3C(v60, &dword_1EC0C4518, &unk_1C4F628C0);
        sub_1C450B034();
        sub_1C441C114();
        v63 = swift_allocError();
        v64 = v79.n128_u64[1];
        v65->n128_u64[0] = v79.n128_u64[0];
        v65->n128_u64[1] = v64;
        v65[1].n128_u64[0] = 0;
        v65[1].n128_u64[1] = 0;
        v65[2].n128_u64[0] = 0;
        v65[2].n128_u64[1] = 0xE000000000000000;
        sub_1C4426EA4(v82, v63, v65);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

        sub_1C4420C3C(v59, &dword_1EC0C4518, &unk_1C4F628C0);
        goto LABEL_6;
      }

      sub_1C43FDF54();
      v66 = v60;
      v50 = v69;
      v67 = sub_1C4437D00(v66, v69);
      MEMORY[0x1EEE9AC00](v67);
      v68 = v79;
      *(&v69 - 4) = v50;
      *(&v69 - 3) = v68;
      os_unfair_lock_lock((v49 + 24));
      sub_1C4509848((v49 + 16));
      os_unfair_lock_unlock((v49 + 24));

      sub_1C4420C3C(v59, &dword_1EC0C4518, &unk_1C4F628C0);
    }

    else
    {
      v50 = v48;
    }

    sub_1C43FDF54();
    sub_1C4437D00(v50, v78);
LABEL_6:
    sub_1C43FBC80();
    return;
  }

  os_unfair_lock_unlock((v49 + 24));
  __break(1u);
}

void sub_1C4437948()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  sub_1C4437394();
}

uint64_t sub_1C4437998(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1C4437358(a1);
}

uint64_t sub_1C44379C8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C456902C(&qword_1EC0C44F8, &qword_1C4F594B8);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 72);
    }

    else
    {
      v9 = sub_1C456902C(&qword_1EC0BDCB0, &unk_1C4F54830);
      v10 = *(a3 + 80);
    }

    return sub_1C44157D4(a1 + v10, a2, v9);
  }
}

uint64_t sub_1C4437AAC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1C4437AEC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF6 && *(a1 + 33))
    {
      v2 = *a1 + 245;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 9)
      {
        v2 = -1;
      }

      else
      {
        v2 = (v3 ^ 0xFF) - 1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C4437B30(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1C4437B70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C4437BCC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1C4437C20(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1C456902C(&qword_1EC0C44F8, &qword_1C4F594B8);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 72);
    }

    else
    {
      v9 = sub_1C456902C(&qword_1EC0BDCB0, &unk_1C4F54830);
      v10 = *(a4 + 80);
    }

    return sub_1C440BAA8(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1C4437D00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v6 = v5(v4);
  sub_1C43FBCE0(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t sub_1C4437D94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C456902C(&qword_1EC0C4668, "TZ\b");
    v9 = a1 + *(a3 + 44);

    return sub_1C44157D4(v9, a2, v8);
  }
}

uint64_t sub_1C4437E28(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1C4437E68(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1C4437EA8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

char *sub_1C4437EE8(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v122 = a6;
  v118 = a4;
  v117 = a2;
  v116 = a1;
  v8 = type metadata accessor for Configuration();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v115 = &v113 - v13;
  v14 = _s10ViewConfigVMa(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = (&v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v114 = (&v113 - v19);
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v113 - v21);
  MEMORY[0x1EEE9AC00](v23);
  v25 = (&v113 - v24);
  MEMORY[0x1EEE9AC00](v26);
  v28 = (&v113 - v27);
  MEMORY[0x1EEE9AC00](v29);
  isUniquelyReferenced_nonNull_native = &v113 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v113 - v33;
  v124 = sub_1C4428DA0();
  if (v124)
  {
    v113 = v11;
    v11 = a3;
    sub_1C4431590(0, (a5 & 0xC000000000000001) == 0);
    v121 = a5;
    v120 = a5 & 0xC000000000000001;
    if ((a5 & 0xC000000000000001) != 0)
    {
LABEL_69:
      v35 = MEMORY[0x1C6940F90](0, a5);
    }

    else
    {
      v35 = *(a5 + 32);
    }

    switch(v11)
    {
      case 1:
        v38 = v35;
        sub_1C456902C(&qword_1EC0B87C0, &unk_1C4F0DBB0);
        v11 = swift_allocObject();
        *(v11 + 1) = xmmword_1C4F0D130;
        sub_1C4431074(v122, v34, _s10ViewConfigVMa);
        v81 = v115;
        sub_1C4431074(v119 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate19ViewInProcessRunner_config, v115, type metadata accessor for Configuration);
        v82 = type metadata accessor for GraphStore();
        v83 = *(v82 + 48);
        v84 = *(v82 + 52);
        swift_allocObject();
        v85 = v123;
        v86 = GraphStore.init(config:)(v81);
        if (v85)
        {
          v87 = v34;
          goto LABEL_42;
        }

        v100 = v86;
        v101 = _s20KnowledgeGraphSourceCMa();
        v38 = v38;
        v49 = sub_1C4CDE6C8(v38, v34, v100);
        *(v11 + 7) = v101;
        v50 = &qword_1EDDFC3F8;
        v51 = _s20KnowledgeGraphSourceCMa;
        goto LABEL_50;
      case 2:
        v52 = v35;
        sub_1C456902C(&qword_1EC0B87C0, &unk_1C4F0DBB0);
        v11 = swift_allocObject();
        *(v11 + 1) = xmmword_1C4F0D130;
        updated = _s18AlwaysUpdateSourceCMa();
        sub_1C4431074(v122, isUniquelyReferenced_nonNull_native, _s10ViewConfigVMa);
        v38 = v52;
        v54 = v123;
        sub_1C4CBFCB8(v38, isUniquelyReferenced_nonNull_native);
        if (v54)
        {
          goto LABEL_43;
        }

        v41 = v55;
        *(v11 + 7) = updated;
        v42 = &qword_1EDDFC888;
        v43 = _s18AlwaysUpdateSourceCMa;
        goto LABEL_12;
      case 3:
        v56 = *(v122 + 248);
        if (!v56 || *(v56 + 16) <= v118)
        {
          v97 = v35;
          sub_1C446D0DC();
          swift_allocError();
          *v98 = 0xD000000000000026;
          *(v98 + 8) = 0x80000001C4FC4270;
          *(v98 + 16) = 2;
          swift_willThrow();

          return v11;
        }

        v114 = v35;
        if (v118 < 0)
        {
          goto LABEL_72;
        }

        v57 = (v56 + (v118 << 6));
        v58 = v57[2];
        v59 = v57[3];
        v60 = v57[5];
        v126[2] = v57[4];
        v126[3] = v60;
        v126[0] = v58;
        v126[1] = v59;
        v127 = MEMORY[0x1E69E7CC0];
        sub_1C445CD7C(v126, v125);
        a5 = 0;
        v17 = 0;
        v61 = v121;
        v115 = v121 & 0xFFFFFFFFFFFFFF8;
        v62 = MEMORY[0x1E69E7CC8];
        break;
      case 4:
        v45 = v35;
        sub_1C456902C(&qword_1EC0B87C0, &unk_1C4F0DBB0);
        v11 = swift_allocObject();
        *(v11 + 1) = xmmword_1C4F0D130;
        sub_1C4431074(v122, v28, _s10ViewConfigVMa);
        v46 = _s10ViewSourceCMa();
        swift_allocObject();
        v38 = v45;
        v47 = v123;
        v48 = sub_1C4CF8844(v38, v28);
        if (v47)
        {
          goto LABEL_43;
        }

        v49 = v48;
        *(v11 + 7) = v46;
        v50 = &qword_1EDDFC780;
        v51 = _s10ViewSourceCMa;
        goto LABEL_50;
      case 5:
        v88 = v35;
        sub_1C456902C(&qword_1EC0B87C0, &unk_1C4F0DBB0);
        v11 = swift_allocObject();
        *(v11 + 1) = xmmword_1C4F0D130;
        v89 = _s14KeyValueSourceCMa();
        sub_1C4431074(v122, v22, _s10ViewConfigVMa);
        v38 = v88;
        v90 = v123;
        v91 = sub_1C4CDD598(v38, v22);
        if (v90)
        {
          goto LABEL_43;
        }

        v49 = v91;
        *(v11 + 7) = v89;
        v50 = &qword_1EDDF9B40;
        v51 = _s14KeyValueSourceCMa;
        goto LABEL_50;
      case 6:
        v38 = v35;
        sub_1C456902C(&qword_1EC0B87C0, &unk_1C4F0DBB0);
        v11 = swift_allocObject();
        *(v11 + 1) = xmmword_1C4F0D130;
        v92 = v114;
        sub_1C4431074(v122, v114, _s10ViewConfigVMa);
        type metadata accessor for GlobalKnowledgeStore(0);
        v93 = v113;
        sub_1C4431074(v119 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate19ViewInProcessRunner_config, v113, type metadata accessor for Configuration);
        v94 = v123;
        v95 = sub_1C48300AC(v93);
        if (v94)
        {
          v87 = v92;
LABEL_42:
          sub_1C445442C(v87, _s10ViewConfigVMa);
LABEL_43:

          goto LABEL_44;
        }

        v102 = v95;
        v103 = _s26GlobalKnowledgeGraphSourceCMa();
        v38 = v38;
        v49 = sub_1C4CD9248(v38, v92, v102);
        *(v11 + 7) = v103;
        v50 = &qword_1EDDF97C8;
        v51 = _s26GlobalKnowledgeGraphSourceCMa;
LABEL_50:
        *(v11 + 8) = sub_1C4CD8A5C(v50, v51);
        *(v11 + 4) = v49;
LABEL_51:

        return v11;
      case 7:
        v76 = v35;
        sub_1C456902C(&qword_1EC0B87C0, &unk_1C4F0DBB0);
        v11 = swift_allocObject();
        *(v11 + 1) = xmmword_1C4F0D130;
        v77 = _s18NotificationSourceCMa();
        sub_1C4431074(v122, v17, _s10ViewConfigVMa);
        v78 = v76;
        v79 = v123;
        v80 = sub_1C4CE3894(v78, v17);
        if (v79)
        {

LABEL_44:
          *(v11 + 2) = 0;
        }

        else
        {
          v99 = v80;
          *(v11 + 7) = v77;
          *(v11 + 8) = sub_1C4CD8A5C(&qword_1EDDF9A20, _s18NotificationSourceCMa);
          *(v11 + 4) = v99;
        }

        return v11;
      default:
        v36 = v35;
        sub_1C456902C(&qword_1EC0B87C0, &unk_1C4F0DBB0);
        v11 = swift_allocObject();
        *(v11 + 1) = xmmword_1C4F0D130;
        v37 = _s13ControlSourceCMa();
        sub_1C4431074(v122, v25, _s10ViewConfigVMa);
        v38 = v36;
        v39 = v123;
        v40 = sub_1C443BBA8(v38, v25);
        if (v39)
        {
          goto LABEL_43;
        }

        v41 = v40;
        *(v11 + 7) = v37;
        v42 = &qword_1EDDFC678;
        v43 = _s13ControlSourceCMa;
LABEL_12:
        *(v11 + 8) = sub_1C4CD8A5C(v42, v43);
        *(v11 + 4) = v41;
        goto LABEL_51;
    }

    do
    {
      if (v120)
      {
        v63 = MEMORY[0x1C6940F90](a5);
      }

      else
      {
        if (a5 >= *(v115 + 16))
        {
          goto LABEL_71;
        }

        v63 = *(v61 + 8 * a5 + 32);
      }

      if (__OFADD__(a5, 1))
      {
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      v122 = a5 + 1;
      v11 = v63;
      v64 = [v63 configIdentifier];
      v34 = [v64 sourceIdentifier];

      v25 = sub_1C4F01138();
      v28 = v65;

      sub_1C44239FC(v17);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v125[0] = v62;
      v22 = v62;
      v66 = sub_1C445FAA8(v25, v28);
      if (__OFADD__(*(v62 + 16), (v67 & 1) == 0))
      {
        goto LABEL_67;
      }

      v68 = v66;
      v34 = v67;
      sub_1C456902C(&qword_1EC0C5F98, &unk_1C4F69F60);
      if (sub_1C4F02458())
      {
        v69 = sub_1C445FAA8(v25, v28);
        if ((v34 & 1) != (v70 & 1))
        {
          goto LABEL_73;
        }

        v68 = v69;
      }

      v62 = v125[0];
      if (v34)
      {
      }

      else
      {
        *(v125[0] + 8 * (v68 >> 6) + 64) |= 1 << v68;
        v71 = (*(v62 + 48) + 16 * v68);
        *v71 = v25;
        v71[1] = v28;
        *(*(v62 + 56) + 8 * v68) = MEMORY[0x1E69E7CC0];
        v72 = *(v62 + 16);
        v73 = __OFADD__(v72, 1);
        v74 = v72 + 1;
        if (v73)
        {
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          sub_1C4F029F8();
          __break(1u);
          JUMPOUT(0x1C4438CE0);
        }

        *(v62 + 16) = v74;
      }

      v22 = (*(v62 + 56) + 8 * v68);
      v75 = v11;
      MEMORY[0x1C6940330]();
      v28 = *((*v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v28 >= *((*v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C4F016D8();
      }

      sub_1C4F01748();

      ++a5;
      v17 = sub_1C48362FC;
      v61 = v121;
    }

    while (v122 != v124);
    v25 = (v62 + 64);
    v104 = 1 << *(v62 + 32);
    v105 = -1;
    if (v104 < 64)
    {
      v105 = ~(-1 << v104);
    }

    v34 = v105 & *(v62 + 64);
    v124 = OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate19ViewInProcessRunner_syncDeviceRetriever;
    v11 = ((v104 + 63) >> 6);

    isUniquelyReferenced_nonNull_native = 0;
    v17 = MEMORY[0x1E69E7CC0];
    if (v34)
    {
LABEL_59:
      while (1)
      {
        v107 = *(*(v62 + 56) + ((isUniquelyReferenced_nonNull_native << 9) | (8 * __clz(__rbit64(v34)))));
        _s11BiomeSourceCMa();
        a5 = *(v119 + v124);
        sub_1C445CD7C(v126, v125);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v108 = v117;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

        v109 = v108;
        v110 = v123;
        sub_1C445CDD8(v116, v109, 3, v118, v126, v107, a5, 0);
        v123 = v110;
        if (v110)
        {
          break;
        }

        v28 = v111;
        v22 = &v127;
        MEMORY[0x1C6940330]();
        if (*((v127 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v127 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C4F016D8();
        }

        v34 &= v34 - 1;
        sub_1C4F01748();
        v17 = v127;
        if (!v34)
        {
          goto LABEL_55;
        }
      }

      sub_1C445DA1C(v126);
    }

    else
    {
      while (1)
      {
LABEL_55:
        v106 = isUniquelyReferenced_nonNull_native + 1;
        if (__OFADD__(isUniquelyReferenced_nonNull_native, 1))
        {
          goto LABEL_68;
        }

        if (v106 >= v11)
        {
          break;
        }

        v34 = v25[v106];
        ++isUniquelyReferenced_nonNull_native;
        if (v34)
        {
          isUniquelyReferenced_nonNull_native = v106;
          goto LABEL_59;
        }
      }

      sub_1C445DA1C(v126);

      sub_1C445DA70();
      v11 = v112;
    }
  }

  else
  {
    sub_1C446D0DC();
    swift_allocError();
    *v44 = 0xD00000000000001DLL;
    *(v44 + 8) = 0x80000001C4FC42A0;
    *(v44 + 16) = 2;
    swift_willThrow();
  }

  return v11;
}

void sub_1C4438D00(uint64_t a1@<X8>)
{
  v3 = v1;
  v267 = a1;
  v4 = sub_1C456902C(&qword_1EC0C44F8, &qword_1C4F594B8);
  sub_1C43FBD18(v4);
  v6 = *(v5 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v254 - v8;
  v10 = type metadata accessor for VectorDB.Config(0);
  v11 = sub_1C43FBCE0(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  sub_1C4422BD8();
  v14 = sub_1C456902C(&qword_1EC0C4500, &unk_1C4F594C0);
  sub_1C43FBD18(v14);
  v16 = *(v15 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBC74();
  v263 = v18;
  sub_1C43FBE44();
  v264 = sub_1C4EFA6A8();
  v19 = sub_1C43FCDF8(v264);
  *&v260 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBCC4();
  *&v259 = v24 - v23;
  sub_1C43FBE44();
  v25 = sub_1C4F01188();
  v26 = sub_1C43FCDF8(v25);
  v261 = v27;
  v262 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBCC4();
  v32 = v31 - v30;
  v33 = _s10ViewConfigVMa(0);
  v34 = sub_1C43FBCE0(v33);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBD08();
  v39 = (v37 - v38);
  v41 = MEMORY[0x1EEE9AC00](v40);
  v43 = (v254 - v42);
  v44 = (v3 + *(v41 + 76));
  v265 = v44[1];
  if (v265)
  {
    v258 = v10;
    v266 = *v44;
    if (qword_1EDDFECD0 != -1)
    {
      sub_1C44066DC();
    }

    v45 = sub_1C4F00978();
    v46 = sub_1C442B738(v45, qword_1EDE2DF70);
    sub_1C44038A8();
    sub_1C443BF44(v3, v43);
    v254[1] = v46;
    v47 = sub_1C4F00968();
    v48 = sub_1C4F01CB8();
    v49 = os_log_type_enabled(v47, v48);
    *&v255 = v2;
    if (v49)
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v269 = v51;
      *v50 = 136315138;
      v52 = v3;
      v54 = *v43;
      v53 = v43[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44204E4();
      sub_1C443C070(v43, v55);
      v56 = sub_1C4400068();
      v59 = sub_1C441D828(v56, v57, v58);
      v3 = v52;

      *(v50 + 4) = v59;
      _os_log_impl(&dword_1C43F8000, v47, v48, "Using target provided in IntelligencePlatform for view: (%s)", v50, 0xCu);
      sub_1C440962C(v51);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {

      sub_1C44204E4();
      sub_1C443C070(v43, v69);
    }

    sub_1C4EFA598();
    v70 = v265;
    swift_bridgeObjectRetain_n();
    if (sub_1C4EFA528())
    {
      v71 = sub_1C4EFA5C8();
      v72 = v254;
      MEMORY[0x1EEE9AC00](v71);
      v252 = v3;
      v73 = sub_1C443C2E4(sub_1C443C368, &v254[-4], v71);

      if (v73)
      {
        sub_1C440BFC0();
        sub_1C4EFA6D8();
        v74 = sub_1C443C388();
        v75 = v74;
        v76 = v74;
        sub_1C440BFC0();
        sub_1C4EFA6F8();
        sub_1C4F01178();
        *&v256 = sub_1C4F01148();
        v78 = v77;

        (*(v261 + 8))(v32, v262);
        if (v78 >> 60 != 15)
        {
          v79 = v78;
          v80 = v263;
          sub_1C440BFC0();
          sub_1C4EFA6B8();
          v81 = v264;
          if (sub_1C44157D4(v80, 1, v264) == 1)
          {
            sub_1C4420C3C(v80, &qword_1EC0C4500, &unk_1C4F594C0);
            swift_bridgeObjectRelease_n();
            v261 = 0;
            v262 = 0;
            v263 = 0;
            v82 = 0;
            v83 = 0;
            v257 = 0;
            v84 = 0;
            v85 = 2;
          }

          else
          {
            v86 = v260;
            v78 = v259;
            (*(v260 + 32))(v259, v80, v81);
            v261 = sub_1C4EFA698();
            v262 = v87;
            v263 = sub_1C4EFA678();
            v82 = v88;
            v83 = sub_1C4EFA688();
            v257 = v89;
            sub_1C4EFA668();
            v91 = v90;
            (*(v86 + 8))(v78, v81);
            swift_bridgeObjectRelease_n();
            v84 = v91;
            v85 = 1;
          }

          switch(v75)
          {
            case 0:
              sub_1C441063C();
              v151 = sub_1C4EF9348();
              sub_1C44099C4(v151);
              v123 = sub_1C4EF9338();
              sub_1C4BB1D68();
              sub_1C4432B88();
              sub_1C43FC970();
              v256 = *v269;
              v152 = *&v269[16];
              v153 = v269[26];
              v154 = *&v269[24];
              v155 = _s6ConfigVMa();
              sub_1C4416480(v155);
              v128 = v267;
              sub_1C43FCF64();
              sub_1C440BAA8(v156, v157, v158, v258);
              *v128 = 0;
              v159 = sub_1C443F7D4();
              bzero(v159, 0xC8uLL);
              *(v128 + 224) = v256;
              *(v128 + 240) = v152;
              *(v128 + 250) = v153;
              *(v128 + 248) = v154;
              *(v128 + 256) = 0;
              *(v128 + 264) = 0;
              *(v128 + 272) = 0;
              *(v128 + v123[12]) = v85;
              sub_1C4400FFC((v128 + v123[13]));
              *(v160 + 48) = v259;
              v134.n128_f64[0] = sub_1C4407D44(v128 + v123[16]);
              v162 = v128 + v161;
              *v162 = 0;
              *(v162 + 8) = 0;
              *(v162 + 16) = 0;
              goto LABEL_31;
            case 1:
              sub_1C44366C0();
              v164 = sub_1C4EF9348();
              sub_1C44099C4(v164);
              v165 = sub_1C4EF9338();
              sub_1C4BB1DBC();
              sub_1C4432B88();
              sub_1C43FC970();
              v259 = *v269;
              v255 = *&v269[32];
              v256 = *&v269[16];
              v166 = *&v269[48];
              v167 = _s6ConfigVMa();
              sub_1C4416480(v167);
              v168 = v267;
              sub_1C43FCF64();
              sub_1C440BAA8(v169, v170, v171, v258);
              *v168 = 1;
              *(v168 + 8) = v266;
              *(v168 + 16) = v70;
              bzero((v168 + 24), 0x90uLL);
              *(v168 + 168) = v259;
              v172 = v255;
              *(v168 + 184) = v256;
              *(v168 + 200) = v172;
              *(v168 + 216) = v166;
              *(v168 + 224) = 0;
              *(v168 + 232) = 0;
              *(v168 + 240) = 0;
              *(v168 + 247) = 0;
              *(v168 + 256) = 0;
              *(v168 + 264) = 0;
              *(v168 + 272) = 0;
              *(v168 + v165[12]) = v85;
              sub_1C4400FFC((v168 + v165[13]));
              *(v173 + 48) = v84;
              sub_1C4407D44(v168 + v165[16]);
              sub_1C4430244(v168 + v174);
              sub_1C44354A4(v168 + v175);
              v177 = (v168 + v176);
              *v177 = v178;
              v177[1] = v178;
              goto LABEL_38;
            case 2:
              sub_1C44224E8();
              v137 = sub_1C4EF9348();
              sub_1C44099C4(v137);
              v138 = sub_1C4EF9338();
              sub_1C443C3D0();
              sub_1C4432B88();
              sub_1C43FC970();
              v259 = *&v269[16];
              v260 = *v269;
              v139 = *&v269[32];
              v140 = _s6ConfigVMa();
              sub_1C4416480(v140);
              v141 = v267;
              sub_1C43FCF64();
              sub_1C440BAA8(v142, v143, v144, v258);
              sub_1C4434290(2);
              v145 = v259;
              *(v141 + 24) = v260;
              *(v141 + 40) = v145;
              *(v141 + 56) = v139;
              bzero((v141 + 64), 0xBBuLL);
              sub_1C44185E8();
              *(v141 + v146) = v85;
              sub_1C440B484((v141 + v138[13]));
              v147[4] = v83;
              goto LABEL_36;
            case 3:
              sub_1C44224E8();
              v148 = sub_1C4EF9348();
              sub_1C44099C4(v148);
              v78 = sub_1C4EF9338();
              sub_1C4BB1E10();
              sub_1C4432B88();
              sub_1C43FC970();
              memcpy(v268, v269, sizeof(v268));
              v149 = _s6ConfigVMa();
              sub_1C440D980(v149);
              MEMORY[0] = 3;
              MEMORY[8] = v266;
              MEMORY[0x10] = v70;
              MEMORY[0x18] = 0u;
              MEMORY[0x28] = 0u;
              MEMORY[0x38] = 0;
              memcpy(0x40, v268, 0x68uLL);
              MEMORY[0xA8] = 0u;
              MEMORY[0xB8] = 0u;
              MEMORY[0xC8] = 0u;
              MEMORY[0xD8] = 0u;
              MEMORY[0xE8] = 0u;
              MEMORY[0xF7] = 0;
              MEMORY[0x100] = 0;
              MEMORY[0x108] = 0;
              MEMORY[0x110] = 0;
              **(v78 + 48) = v85;
              sub_1C440B484(*(v78 + 52));
              sub_1C4404780(v150);
              *(v116 + 80) = 0;
              goto LABEL_25;
            case 4:
            case 5:
            case 6:
            case 7:
              swift_bridgeObjectRelease_n();
              sub_1C441DFEC(v256, v79);
              v92 = _s6ConfigVMa();
              sub_1C440D980(v92);
              MEMORY[0] = v76;
              goto LABEL_24;
            case 8:
              swift_bridgeObjectRelease_n();
              sub_1C441DFEC(v256, v79);
              v113 = _s6ConfigVMa();
              sub_1C440D980(v113);
              MEMORY[0] = 8;
LABEL_24:
              sub_1C4451418();
              MEMORY[0x100] = 0;
              MEMORY[0x108] = 0;
              MEMORY[0x110] = 0;
              **(v78 + 48) = v85;
              v114 = *(v78 + 52);
              v115 = v262;
              *v114 = v261;
              v114[1] = v115;
              v114[2] = v263;
              v114[3] = v82;
              sub_1C4404780(v114);
              *(v116 + 80) = 0;
              v117 = 0uLL;
LABEL_25:
              *(v116 + 48) = v117;
              *(v116 + 64) = v117;
              *(v116 + 16) = v117;
              *(v116 + 32) = v117;
              *v116 = v117;
              sub_1C4430244(*(v78 + 68));
              sub_1C44354A4(v118);
              goto LABEL_26;
            case 9:
              LODWORD(v259) = v85;
              sub_1C44366C0();
              v193 = sub_1C4EF9348();
              sub_1C44099C4(v193);
              sub_1C4EF9338();
              sub_1C4505F5C(&qword_1EDDFEAF0, type metadata accessor for VectorDB.Config);
              v194 = v255;
              sub_1C4EF9328();
              sub_1C43FC970();
              v138 = _s6ConfigVMa();
              v141 = v267;
              sub_1C4437D00(v194, v267 + v138[11]);
              sub_1C442BC40();
              sub_1C440BAA8(v195, v196, v197, v198);
              sub_1C4434290(9);
              bzero((v141 + 24), 0xE3uLL);
              sub_1C44185E8();
              *(v141 + v199) = v259;
              sub_1C440B484((v141 + v138[13]));
              v147[4] = v260;
LABEL_36:
              v147[5] = v257;
              v147[6] = v84;
              sub_1C4407D44(v141 + v138[16]);
              sub_1C4430244(v141 + v200);
              sub_1C44354A4(v141 + v201);
              sub_1C444ADB0((v141 + v202), v203);
              v121 = (v141 + v204);
              goto LABEL_39;
            case 10:
              sub_1C44224E8();
              v217 = sub_1C4EF9348();
              sub_1C44099C4(v217);
              v218 = sub_1C4EF9338();
              sub_1C4707CC4();
              sub_1C4432B88();
              sub_1C43FC970();
              memcpy(__dst, v269, sizeof(__dst));
              v219 = _s6ConfigVMa();
              sub_1C440D980(v219);
              MEMORY[0] = 10;
              sub_1C4451418();
              MEMORY[0x100] = 0;
              MEMORY[0x108] = 0;
              MEMORY[0x110] = 0;
              *v218[12] = v85;
              sub_1C440B484(v218[13]);
              sub_1C4404780(v220);
              memcpy(v221, __dst, 0x58uLL);
              sub_1C4430244(v218[17]);
              sub_1C44354A4(v222);
              v120 = 0uLL;
LABEL_26:
              sub_1C444ADB0(v119, v120);
              goto LABEL_39;
            case 11:
              sub_1C441063C();
              v122 = sub_1C4EF9348();
              sub_1C44099C4(v122);
              v123 = sub_1C4EF9338();
              sub_1C4BB1D14();
              sub_1C4432B88();
              sub_1C43FC970();
              v124 = *v269;
              v125 = *&v269[8];
              v126 = v269[16];
              v127 = _s6ConfigVMa();
              sub_1C4416480(v127);
              v128 = v267;
              sub_1C43FCF64();
              sub_1C440BAA8(v129, v130, v131, v258);
              *v128 = 11;
              v132 = sub_1C443F7D4();
              bzero(v132, 0xE3uLL);
              *(v128 + 256) = 0;
              *(v128 + 264) = 0;
              *(v128 + 272) = 0;
              *(v128 + v123[12]) = v85;
              sub_1C4400FFC((v128 + v123[13]));
              *(v133 + 48) = v259;
              v134.n128_f64[0] = sub_1C4407D44(v128 + v123[16]);
              v136 = v128 + v135;
              *v136 = v124;
              *(v136 + 8) = v125;
              *(v136 + 16) = v126;
LABEL_31:
              v163 = v128 + v123[14];
              *v163 = 0;
              *(v163 + 8) = 0;
              *(v163 + 16) = 0;
              goto LABEL_34;
            case 12:
              sub_1C441063C();
              v179 = sub_1C4EF9348();
              sub_1C44099C4(v179);
              v123 = sub_1C4EF9338();
              sub_1C4BB1C6C();
              sub_1C4432B88();
              sub_1C43FC970();
              v180 = *v269;
              v181 = *&v269[8];
              v182 = v269[16];
              v183 = _s6ConfigVMa();
              sub_1C4416480(v183);
              v128 = v267;
              sub_1C43FCF64();
              sub_1C440BAA8(v184, v185, v186, v258);
              *v128 = 12;
              v187 = sub_1C443F7D4();
              bzero(v187, 0xE3uLL);
              *(v128 + 256) = 0;
              *(v128 + 264) = 0;
              *(v128 + 272) = 0;
              *(v128 + v123[12]) = v85;
              sub_1C4400FFC((v128 + v123[13]));
              *(v188 + 48) = v259;
              sub_1C4407D44(v128 + v123[16]);
              sub_1C4430244(v128 + v189);
              v191 = v128 + v190;
              *v191 = v180;
              *(v191 + 8) = v181;
              *(v191 + 16) = v182;
LABEL_34:
              sub_1C444ADB0((v128 + v123[18]), v134);
              v121 = (v128 + v192);
              goto LABEL_39;
            case 13:
              sub_1C44366C0();
              v205 = sub_1C4EF9348();
              sub_1C44099C4(v205);
              v165 = sub_1C4EF9338();
              sub_1C4BB1CC0();
              sub_1C4432B88();
              sub_1C43FC970();
              v206 = *v269;
              v207 = *&v269[24];
              v208 = _s6ConfigVMa();
              sub_1C4416480(v208);
              v259 = *&v269[8];
              v168 = v267;
              sub_1C43FCF64();
              sub_1C440BAA8(v209, v210, v211, v258);
              *v168 = 13;
              *(v168 + 8) = v266;
              *(v168 + 16) = v70;
              bzero((v168 + 24), 0xE3uLL);
              *(v168 + 256) = 0;
              *(v168 + 264) = 0;
              *(v168 + 272) = 0;
              *(v168 + v165[12]) = v85;
              sub_1C4400FFC((v168 + v165[13]));
              *(v212 + 48) = v84;
              sub_1C4407D44(v168 + v165[16]);
              sub_1C4430244(v168 + v213);
              sub_1C44354A4(v168 + v214);
              v216 = v168 + v215;
              *v216 = v206;
              *(v216 + 8) = v259;
              *(v216 + 24) = v207;
LABEL_38:
              v121 = (v168 + v165[15]);
LABEL_39:
              *v121 = 0;
              v121[1] = 0;
              v121[2] = 0;
              return;
            case 14:
              sub_1C44224E8();
              v96 = sub_1C4EF9348();
              sub_1C44099C4(v96);
              v97 = sub_1C4EF9338();
              sub_1C4BB1C18();
              sub_1C4432B88();
              sub_1C43FC970();
              v98 = *v269;
              v99 = _s6ConfigVMa();
              sub_1C4416480(v99);
              v260 = *&v269[8];
              v100 = v267;
              sub_1C43FCF64();
              sub_1C440BAA8(v101, v102, v103, v258);
              sub_1C4434290(14);
              bzero((v100 + 24), 0xE3uLL);
              sub_1C44185E8();
              *(v100 + v104) = v85;
              sub_1C440B484((v100 + *(v97 + 52)));
              sub_1C4404780(v105);
              sub_1C4407D44(v100 + v106);
              sub_1C4430244(v100 + v107);
              sub_1C44354A4(v100 + v108);
              sub_1C444ADB0((v100 + v109), v110);
              v112 = v100 + v111;
              *v112 = v98;
              *(v112 + 8) = v260;
              return;
            default:
              v233 = *v84;
              v232 = v84[1];
              sub_1C442F744();
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              sub_1C4F02248();

              sub_1C4415D08();
              v268[0] = v235;
              v268[1] = v234;
              sub_1C440BFC0();
              v236 = sub_1C4EFA6D8();
              MEMORY[0x1C6940010](v236);

              v72 = v268[0];
              v237 = v268[1];
              sub_1C450B034();
              sub_1C441C114();
              v229 = swift_allocError();
              *v238 = v233;
              *(v238 + 8) = v232;
              *(v238 + 16) = v72;
              *(v238 + 24) = v237;
              v239 = *&v269[16];
              *(v238 + 32) = *v269;
              *(v238 + 48) = v239;
              v240 = 3;
              goto LABEL_47;
          }
        }

        v242 = *v3;
        v241 = v3[1];
        v72 = 0x80000001C4FB4A60;
        sub_1C450B034();
        sub_1C441C114();
        v229 = swift_allocError();
        *v238 = v242;
        *(v238 + 8) = v241;
        *(v238 + 16) = 0xD000000000000017;
        *(v238 + 24) = 0x80000001C4FB4A60;
        v243 = *&v269[16];
        *(v238 + 32) = *v269;
        *(v238 + 48) = v243;
        v240 = 4;
LABEL_47:
        *(v238 + 64) = v240;
        goto LABEL_48;
      }

      v231 = *v3;
      v230 = v3[1];
      sub_1C450B034();
      sub_1C441C114();
      v229 = swift_allocError();
      *v228 = v231;
      *(v228 + 8) = v230;
      *(v228 + 16) = xmmword_1C4F59250;
      strcpy((v228 + 32), "no view found");
      *(v228 + 46) = -4864;
    }

    else
    {
      v72 = *v3;
      v223 = v3[1];
      sub_1C442F744();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4F02248();

      sub_1C4415D08();
      v268[0] = v225 + 6;
      v268[1] = v224;
      MEMORY[0x1C6940010](v266, v70);
      MEMORY[0x1C6940010](0x64656C69616620, 0xE700000000000000);
      v227 = v268[0];
      v226 = v268[1];
      sub_1C450B034();
      sub_1C441C114();
      v229 = swift_allocError();
      *v228 = v72;
      *(v228 + 8) = v223;
      *(v228 + 16) = xmmword_1C4F59250;
      *(v228 + 32) = v227;
      *(v228 + 40) = v226;
    }

    *(v228 + 48) = *v269;
    *(v228 + 64) = 0;
LABEL_48:
    swift_willThrow();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v244 = v229;
    v245 = sub_1C4F00968();
    v9 = sub_1C4F01CF8();

    if (os_log_type_enabled(v245, v9))
    {
      v72 = swift_slowAlloc();
      v246 = swift_slowAlloc();
      *v72 = 138412290;
      v247 = v229;
      v248 = _swift_stdlib_bridgeErrorToNSError();
      *(v72 + 4) = v248;
      *v246 = v248;
      _os_log_impl(&dword_1C43F8000, v245, v9, "%@", v72, 0xCu);
      sub_1C4420C3C(v246, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    sub_1C442F744();
    v268[0] = v229;
    sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
    sub_1C4F02438();
    v253 = 0;
    for (i = 147; ; i = 73)
    {
      v252 = i;
      sub_1C4F024A8();
      __break(1u);
LABEL_52:
      sub_1C4420C3C(v9, &qword_1EC0C44F8, &qword_1C4F594B8);
      sub_1C442F744();
      sub_1C4F02248();

      sub_1C4415D08();
      *v269 = v251 + 15;
      *&v269[8] = v250;
      MEMORY[0x1C6940010](*v72, v72[1]);
      v253 = 0;
    }
  }

  if (qword_1EDDFECD0 != -1)
  {
    sub_1C44066DC();
  }

  v60 = sub_1C4F00978();
  sub_1C442B738(v60, qword_1EDE2DF70);
  sub_1C44038A8();
  v266 = v3;
  sub_1C443BF44(v3, v39);
  v61 = sub_1C4F00968();
  v62 = sub_1C4F01CB8();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *v269 = v64;
    *v63 = 136315138;
    v65 = *v39;
    v66 = v39[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44204E4();
    sub_1C443C070(v39, v67);
    v68 = sub_1C441D828(v65, v66, v269);

    *(v63 + 4) = v68;
    _os_log_impl(&dword_1C43F8000, v61, v62, "Using artifact configuration for view: (%s)", v63, 0xCu);
    sub_1C440962C(v64);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {

    sub_1C44204E4();
    sub_1C443C070(v39, v93);
  }

  v94 = *(v33 + 72);
  v72 = v266;
  sub_1C445FFF0(v266 + v94, v9, &qword_1EC0C44F8, &qword_1C4F594B8);
  v95 = _s6ConfigVMa();
  if (sub_1C44157D4(v9, 1, v95) == 1)
  {
    goto LABEL_52;
  }

  sub_1C4437D00(v9, v267);
}