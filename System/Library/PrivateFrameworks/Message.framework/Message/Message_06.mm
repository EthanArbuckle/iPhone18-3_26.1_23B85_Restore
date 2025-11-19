uint64_t sub_1B04191F8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0419264()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04192FC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B041933C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04193D4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0419414()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04194AC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04194EC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0419584()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04195C4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B041965C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B041969C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04196DC(uint64_t a1, uint64_t (*a2)(uint64_t, double))
{
  v10 = static MonotonicTime.now()();
  MonotonicTime.seconds(since:)(a1, v10);
  v11 = v3;
  result = MonotonicTime.seconds(since:)(*(v2 + 16), v10);
  if (*(v2 + 8) <= v11 && *v8 <= v5)
  {
    *(v8 + 16) = v10;
    return a2(result, v11);
  }

  return result;
}

uint64_t sub_1B04197E4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_1B0419910(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

uint64_t sub_1B0419F68()
{
  sub_1B039A494();
  sub_1B041A044();
  v4 = sub_1B041A060(v0);
  v3 = *(v2 + OBJC_IVAR____TtCE7MessageV16IMAP2Persistence11Environment27ContentProtectionObservable_observer);
  MEMORY[0x1E69E5928](v3);
  swift_getObjectType();
  MEMORY[0x1E69E5928](v4);
  [v3 observerDidReceiveResult_];
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](v3);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1B041A0E8()
{
  v1 = sub_1B0E44468();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_queue);
  *v6 = v7;
  (*(v2 + 104))(v6, *MEMORY[0x1E69E8020], v1, v4);
  v8 = v7;
  LOBYTE(v7) = sub_1B0E44488();
  (*(v2 + 8))(v6, v1);
  if (v7)
  {
    v1 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
    swift_beginAccess();
    v9 = *(v0 + v1);
    if (!(v9 >> 62))
    {
      result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_4;
      }

LABEL_15:
      if (*(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_collectDataTransferTimer))
      {

        RestartableTimer.stop()();
      }

LABEL_21:
      __break(1u);
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  result = sub_1B0E46138();
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_4:
  v11 = *(v0 + v1);
  if (v11 >> 62)
  {
    result = sub_1B0E46138();
    v12 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      return result;
    }
  }

  if (v12 < 1)
  {
    __break(1u);
    goto LABEL_21;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  for (i = 0; i != v12; ++i)
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1B2728410](i, v11);
    }

    else
    {
      v14 = *(v11 + 8 * i + 32);
    }

    CommandConnection.collectDataTransferReport()();
  }
}

Swift::Void __swiftcall CommandConnection.collectDataTransferReport()()
{
  if (*(v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_dataTransferReportCollector))
  {

    sub_1B041A35C();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B041A35C()
{
  v1 = v0;
  v2 = sub_1B0E44468();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v0 + 32);
  *v7 = v8;
  (*(v3 + 104))(v7, *MEMORY[0x1E69E8020], v2, v5);
  v9 = v8;
  v10 = sub_1B0E44488();
  result = (*(v3 + 8))(v7, v2);
  if (v10)
  {
    v12 = *(v1 + 72);
    if (v12)
    {
      v13 = *(v1 + 64);
      v14 = *(v1 + 24);
      v16 = *(v1 + 40);
      v15 = *(v1 + 48);
      v17 = swift_allocObject();
      *(v17 + 16) = v13;
      *(v17 + 24) = v12;
      *(v17 + 32) = v16;
      *(v17 + 40) = v15;
      *(v17 + 48) = v14;
      swift_retain_n();

      sub_1B0E43DA8();
    }

    v18 = *(v1 + 16);
    v19 = sub_1B0E43D98();
    v20 = static MonotonicTime.now()();
    v21 = *(v1 + 72);
    *(v1 + 64) = v20;
    *(v1 + 72) = v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B041A538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(int *), uint64_t a5, int a6)
{
  v29 = a6;
  v30 = a5;
  v31 = a4;
  v8 = sub_1B0E43D38();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v28[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v28[-v14];
  v16 = sub_1B0E43D58();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v28[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v17 + 16))(v20, a1, v16);
  sub_1B0E43D48();
  v22 = v21;
  sub_1B0E43D08();
  v23 = sub_1B0E43D28();
  v24 = *(v9 + 8);
  v24(v15, v8);
  v25 = v23 & ~(v23 >> 63);
  sub_1B0E43D08();
  v26 = sub_1B0E43D18();
  v24(v13, v8);
  (*(v17 + 8))(v20, v16);
  v32 = v29;
  v33 = a2;
  v34 = v22;
  v35 = v25;
  v36 = v26 & ~(v26 >> 63);
  return v31(&v32);
}

void sub_1B041A76C(double *a1)
{
  v2 = v1;
  v4 = sub_1B0E44468();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + 16);
  *v8 = v9;
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4);
  v10 = v9;
  LOBYTE(v9) = sub_1B0E44488();
  (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B03904C0();
  sub_1B03904C0();
  v11 = sub_1B0E43988();
  v12 = sub_1B0E458D8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v30 = v14;
    *v13 = 68159746;
    *(v13 + 4) = 2;
    *(v13 + 8) = 256;
    *(v13 + 10) = *(v2 + 24);

    *(v13 + 11) = 2082;
    v15 = ConnectionID.debugDescription.getter(*a1);
    v17 = sub_1B0399D64(v15, v16, &v30);

    *(v13 + 13) = v17;
    *(v13 + 21) = 1040;
    *(v13 + 23) = 3;
    *(v13 + 27) = 2048;
    v18 = a1[2];
    *(v13 + 29) = v18;
    *(v13 + 37) = 2048;
    v20 = *(a1 + 3);
    v19 = *(a1 + 4);
    *(v13 + 39) = v20;
    *(v13 + 47) = 2048;
    *(v13 + 49) = v19;
    *(v13 + 57) = 2048;
    if (v18 <= 0.0)
    {
      v24 = 0;
    }

    else
    {
      if ((v20 - 0x1000000000000000) >> 61 != 7)
      {
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v21 = (8 * v20) / v18;
      v22 = round(v21);
      v23 = v22 >= 9.22337204e18 || v22 <= -9.22337204e18;
      v24 = llround(v21);
      if (v23)
      {
        v24 = 0;
      }
    }

    *(v13 + 59) = v24;
    *(v13 + 67) = 2048;
    *(v13 + 69) = v24;
    _os_log_impl(&dword_1B0389000, v11, v12, "[%.*hhx] Connection %{public}s sent data transfer report for the past %.*g seconds: received %{iec-bytes}ld, sent %{iec-bytes}ld, received throughput %{iec-bitrate}ld, sent throughput %{iec-bitrate}ld.", v13, 0x4Du);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x1B272C230](v14, -1, -1);
    MEMORY[0x1B272C230](v13, -1, -1);
  }

  else
  {

    v20 = *(a1 + 3);
    v19 = *(a1 + 4);
  }

  v25 = v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl29DataTransferReportAccumulator_state;
  if (*(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl29DataTransferReportAccumulator_state + 16))
  {
    goto LABEL_17;
  }

  v26 = __OFADD__(*v25, v20);
  v20 += *v25;
  if (v26)
  {
    goto LABEL_20;
  }

  v27 = *(v25 + 8);
  v26 = __OFADD__(v27, v19);
  v19 += v27;
  if (v26)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_17:
  *v25 = v20;
  *(v25 + 8) = v19;
  *(v25 + 16) = 0;
  if (*(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl29DataTransferReportAccumulator_timer))
  {
    v28 = *(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl29DataTransferReportAccumulator_timer);

    RestartableTimer.start()();

    return;
  }

LABEL_23:
  __break(1u);
}

uint64_t sub_1B041AAC8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(result + 32);
    v5 = *(result + 40);
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    v6(v7 | 0xA000000000000006);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = v0[2];

  sub_1B0391D50(v0[4], v0[5]);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1B041AC10()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B041AC68();
  }

  return result;
}

uint64_t sub_1B041AC68()
{
  v1 = v0;
  v2 = sub_1B0E44468();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + 16);
  *v7 = v8;
  (*(v3 + 104))(v7, *MEMORY[0x1E69E8020], v2, v5);
  v9 = v8;
  LOBYTE(v8) = sub_1B0E44488();
  result = (*(v3 + 8))(v7, v2);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v11 = (v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl29DataTransferReportAccumulator_state);
  if (*(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl29DataTransferReportAccumulator_state + 16))
  {
    return result;
  }

  v12 = *v11;
  v13 = v11[1];
  *v11 = 0;
  v11[1] = 0;
  *(v11 + 16) = 1;
  if (!*(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl29DataTransferReportAccumulator_timer))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v14 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl29DataTransferReportAccumulator_timer);

  RestartableTimer.stop()();

  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v15 = sub_1B0E43988();
  v16 = sub_1B0E45908();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 68158464;
    *(v17 + 4) = 2;
    *(v17 + 8) = 256;
    *(v17 + 10) = *(v1 + 24);

    *(v17 + 11) = 2048;
    *(v17 + 13) = v12;
    *(v17 + 21) = 2048;
    *(v17 + 23) = v13;
    _os_log_impl(&dword_1B0389000, v15, v16, "[%.*hhx] Account data transfer report: received %{iec-bytes}ld, sent %{iec-bytes}ld.", v17, 0x1Fu);
    MEMORY[0x1B272C230](v17, -1, -1);
  }

  else
  {
  }

  v18 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl29DataTransferReportAccumulator_handler + 8);
  return (*(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl29DataTransferReportAccumulator_handler))(v12, v13);
}

uint64_t sub_1B041AEB8()
{
  sub_1B041AF18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1A08, &unk_1B0E9AC90);
  return sub_1B0E45338();
}

void OUTLINED_FUNCTION_1(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_2(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = result;
  return result;
}

void OUTLINED_FUNCTION_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

NSString *OUTLINED_FUNCTION_3_0()
{

  return NSStringFromSelector(v0);
}

uint64_t OUTLINED_FUNCTION_1_1(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2114;
  *(a3 + 14) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_6(uint64_t result, uint64_t a2, float a3)
{
  *result = a3;
  *(result + 4) = a2;
  *(result + 12) = 2048;
  *(result + 14) = 0x4066800000000000;
  return result;
}

void _powerChanged(uint64_t a1, uint64_t a2, uint64_t a3, intptr_t a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = MFLogGeneral();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    HIDWORD(v8) = a3 + 536870288;
    LODWORD(v8) = a3 + 536870288;
    v7 = v8 >> 4;
    if (v7 < 0xC && ((0xA07u >> v7) & 1) != 0)
    {
      v9 = off_1E7AA76E8[v7];
    }

    else
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", a3];
    }

    *buf = 138412290;
    v12 = v9;
    _os_log_impl(&dword_1B0389000, v6, OS_LOG_TYPE_INFO, "Power changed: %@", buf, 0xCu);
  }

  switch(a3)
  {
    case 0xE0000300:
      dispatch_async(MEMORY[0x1E69E96A0], &__block_literal_global_102);
      break;
    case 0xE0000280:
      dispatch_async(MEMORY[0x1E69E96A0], &__block_literal_global_98);
      IOAllowPowerChange(sRootDomainConnect, a4);
      break;
    case 0xE0000270:
      IOAllowPowerChange(sRootDomainConnect, a4);
      break;
  }

  v10 = *MEMORY[0x1E69E9840];
}

unint64_t sub_1B041B1D8()
{
  result = qword_1EB6DE180;
  if (!qword_1EB6DE180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DE180);
  }

  return result;
}

void sub_1B041B22C(uint64_t a1)
{
  if (!qword_1EB6DE9A0)
  {
    MEMORY[0x1EEE9AC00](a1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E6408, &qword_1B0EE63C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E2990, &qword_1B0E9B060);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB6DE9A0);
    }
  }
}

void sub_1B041B36C()
{
  sub_1B0CF2B9C();
  if (v0 <= 0x3F)
  {
    sub_1B0CF2C14(319, &qword_1EB6DB6B0);
    if (v1 <= 0x3F)
    {
      sub_1B043739C();
      if (v2 <= 0x3F)
      {
        sub_1B0CF2CF4(319, &qword_1EB6DE938, &qword_1EB6E63E8, &qword_1B0EE63B8);
        if (v3 <= 0x3F)
        {
          sub_1B0CF2C14(319, &qword_1EB6DE9A8);
          if (v4 <= 0x3F)
          {
            sub_1B0CF2C64();
            if (v5 <= 0x3F)
            {
              sub_1B0CF2CF4(319, &qword_1EB6DE950, &qword_1EB6E6400, &qword_1B0EF66E0);
              if (v6 <= 0x3F)
              {
                sub_1B041B22C(319);
                if (v7 <= 0x3F)
                {
                  sub_1B0CF2D58();
                  if (v8 <= 0x3F)
                  {
                    sub_1B041BFF0(319, qword_1EB6DE420);
                    if (v9 <= 0x3F)
                    {
                      sub_1B041BFF0(319, &qword_1EB6DE418);
                      if (v10 <= 0x3F)
                      {
                        sub_1B041BFF0(319, &qword_1EB6DE410);
                        if (v11 <= 0x3F)
                        {
                          sub_1B0CF2DD0();
                          if (v12 <= 0x3F)
                          {
                            sub_1B041C078();
                            if (v13 <= 0x3F)
                            {
                              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
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
        }
      }
    }
  }
}

uint64_t type metadata accessor for SearchReturnOption()
{
  result = qword_1EB6DE5C8;
  if (!qword_1EB6DE5C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B041B5DC()
{
  sub_1B041B648();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_1B041B648()
{
  if (!qword_1EB6DE078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E6440, &unk_1B0EF3530);
    sub_1B041BD44();
    v0 = type metadata accessor for KeyValue();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6DE078);
    }
  }
}

uint64_t type metadata accessor for ParameterValue()
{
  result = qword_1EB6DE728;
  if (!qword_1EB6DE728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B041B720()
{
  sub_1B041B794();
  if (v0 <= 0x3F)
  {
    sub_1B041BC68();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1B041B794()
{
  if (!qword_1EB6DE798[0])
  {
    sub_1B041B7F0();
    CommandSet = type metadata accessor for LastCommandSet();
    if (!v1)
    {
      atomic_store(CommandSet, qword_1EB6DE798);
    }
  }
}

unint64_t sub_1B041B7F0()
{
  result = qword_1EB6DE6C8;
  if (!qword_1EB6DE6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DE6C8);
  }

  return result;
}

unint64_t sub_1B041B844(void *a1)
{
  a1[1] = sub_1B041B894();
  a1[2] = sub_1B041B8E8();
  a1[3] = sub_1B041B93C();
  a1[4] = sub_1B041B990();
  a1[5] = sub_1B041B9E4();
  result = sub_1B041BAA4();
  a1[6] = result;
  return result;
}

unint64_t sub_1B041B894()
{
  result = qword_1EB6DE6D0;
  if (!qword_1EB6DE6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DE6D0);
  }

  return result;
}

unint64_t sub_1B041B8E8()
{
  result = qword_1EB6DE6E8;
  if (!qword_1EB6DE6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DE6E8);
  }

  return result;
}

unint64_t sub_1B041B93C()
{
  result = qword_1EB6DE708;
  if (!qword_1EB6DE708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DE708);
  }

  return result;
}

unint64_t sub_1B041B990()
{
  result = qword_1EB6DE6D8;
  if (!qword_1EB6DE6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DE6D8);
  }

  return result;
}

unint64_t sub_1B041B9E4()
{
  result = qword_1EB6DE700;
  if (!qword_1EB6DE700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DE700);
  }

  return result;
}

unint64_t sub_1B041BA50()
{
  result = qword_1EB6DE6F0;
  if (!qword_1EB6DE6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DE6F0);
  }

  return result;
}

unint64_t sub_1B041BAA4()
{
  result = qword_1EB6DE6E0;
  if (!qword_1EB6DE6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DE6E0);
  }

  return result;
}

unint64_t sub_1B041BAFC()
{
  result = qword_1EB6DE6F8;
  if (!qword_1EB6DE6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DE6F8);
  }

  return result;
}

uint64_t sub_1B041BB88(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  v3 = type metadata accessor for MessageIdentifierSetNonEmpty();
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v3;
}

void sub_1B041BC04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1B03D06F8();
    v7 = a3(a1, &type metadata for MessageIdentificationShiftWrapper, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1B041BC68()
{
  v4 = qword_1EB6DB088;
  if (!qword_1EB6DB088)
  {
    v3 = sub_1B0E45358();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EB6DB088);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1B041BCFC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B041BD44()
{
  result = qword_1EB6DE720;
  if (!qword_1EB6DE720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E6440, &unk_1B0EF3530);
    sub_1B041BCFC(&qword_1EB6DE740, type metadata accessor for ParameterValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DE720);
  }

  return result;
}

unint64_t sub_1B041BDF8()
{
  result = qword_1EB6DE738;
  if (!qword_1EB6DE738)
  {
    type metadata accessor for ParameterValue();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DE738);
  }

  return result;
}

uint64_t sub_1B041BE50(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  result = type metadata accessor for MessageIdentifierSet();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B041BECC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t, ValueMetadata *, unint64_t))
{
  sub_1B041BC04(319, a4, a5);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1B041BF64(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B041BFF0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

ValueMetadata *type metadata accessor for UID()
{
  return &type metadata for UID;
}

{
  return &type metadata for UID;
}

void sub_1B041C078()
{
  if (!qword_1EB6DC948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E3850, &qword_1B0E9B600);
    v0 = sub_1B0E435A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6DC948);
    }
  }
}

uint64_t *sub_1B041C0EC(uint64_t *a1)
{
  if (a1[3])
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return a1;
}

void sub_1B041C13C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_1B041C194()
{
  result = qword_1EB6DE188;
  if (!qword_1EB6DE188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DE188);
  }

  return result;
}

unint64_t sub_1B041C1E8()
{
  v2 = qword_1EB6DE1A0;
  if (!qword_1EB6DE1A0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DE1A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B041C260(uint64_t result, char a2)
{
  if (result < 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v3 = v2;
  v5 = result;
  v8 = v2[1];
  v6 = v2 + 1;
  v7 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v7 + 24) >> 1)
  {
    v10 = *v3;
    if (*v3)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (*(v7 + 16) <= v5)
    {
      v14 = v5;
    }

    else
    {
      v14 = *(v7 + 16);
    }

    sub_1B041D32C(isUniquelyReferenced_nonNull_native, v14, 0);
    v7 = *v6;
    v10 = *v3;
    if (*v3)
    {
LABEL_5:
      swift_beginAccess();
      v11 = *(v10 + 16) & 0x3FLL;
      v12 = MEMORY[0x1B27256A0](v5);
      if (a2)
      {
        v13 = v12;
        if (v11 >= v12)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v16 = v12;
        swift_beginAccess();
        v12 = v16;
        v13 = *(v10 + 24) & 0x3FLL;
        if (v11 >= v12)
        {
          goto LABEL_20;
        }
      }

LABEL_16:
      if (v13 <= v12)
      {
        v15 = v12;
      }

      else
      {
        v15 = v13;
      }

      goto LABEL_30;
    }
  }

  v12 = MEMORY[0x1B27256A0](v5);
  v11 = 0;
  if (a2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v12 > 0)
  {
    goto LABEL_16;
  }

LABEL_20:
  v17 = *(v7 + 16);
  if (v13 <= v12)
  {
    v18 = v12;
  }

  else
  {
    v18 = v13;
  }

  result = MEMORY[0x1B27256A0](*(v7 + 16));
  if (result <= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = result;
  }

  if (v19 < v11)
  {
    if (v13 <= v19)
    {
      v15 = v19;
    }

    else
    {
      v15 = v13;
    }

LABEL_30:
    v20 = sub_1B0C0895C(v7, v15, 0, v13);

    *v3 = v20;
    return result;
  }

  if (!v10 || (v21 = *v3, result = swift_isUniquelyReferenced_native(), (result & 1) != 0))
  {
    v22 = *v3;
    if (*v3)
    {
      goto LABEL_35;
    }

LABEL_39:
    if (!v13)
    {
      return result;
    }

    __break(1u);
    goto LABEL_41;
  }

  if (!*v3)
  {
LABEL_42:
    __break(1u);
    return result;
  }

  v23 = *v3;
  v22 = sub_1B0E43578();

  *v3 = v22;
  if (!v22)
  {
    goto LABEL_39;
  }

LABEL_35:
  result = swift_beginAccess();
  if ((*(v22 + 24) & 0x3FLL) != v13)
  {
    *(v22 + 24) = *(v22 + 24) & 0xFFFFFFFFFFFFFFC0 | v13 & 0x3F;
  }

  return result;
}

uint64_t sub_1B041C440()
{
  v0 = 15;
  while (sub_1B0E44EA8() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1B0E46A78();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1B0E44D08();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x40000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.move = 1163284301;
  *algn_1EB738008 = 0xE400000000000000;
  qword_1EB738010 = v0;
  byte_1EB738018 = v5 & 1;
  return result;
}

uint64_t sub_1B041C51C()
{
  v1 = v0;
  v2 = type metadata accessor for StateWithTasks();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_state;
  swift_beginAccess();
  (*(v3 + 16))(v6, v1 + v7, v2);
  StateWithTasks.inSyncMailboxes.getter(v14);
  (*(v3 + 8))(v6, v2);
  __swift_project_boxed_opaque_existential_0(v14, v14[3]);
  v13[2] = sub_1B03C8E00(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3580, &qword_1B0EA2000);
  sub_1B0E44FD8();
  v8 = v13[3];
  __swift_destroy_boxed_opaque_existential_0Tm(v14);
  if (!*(v8 + 16))
  {
  }

  v10 = *(v1 + 32);
  v9 = *(v1 + 40);
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  v10(v11 | 0x9000000000000004);
}

uint64_t sub_1B041C6F4()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t StateWithTasks.inSyncMailboxes.getter@<X0>(void *a1@<X8>)
{
  if (*(v1 + 192) == 1)
  {
    v3 = *(v1 + 168);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3DD8, &qword_1B0EC0F10);
    v5 = sub_1B039E3F8(&qword_1EB6DA400, &qword_1EB6E3DD8, &qword_1B0EC0F10);
    v6 = swift_allocObject();
    v6[2] = v3;
    v6[3] = sub_1B03FFDF0;
    v6[4] = 0;
    v6[5] = sub_1B0A8F5AC;
    v6[6] = 0;
    result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  else
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3DD0, &qword_1B0EC0F08);
    result = sub_1B039E3F8(&qword_1EB6DB4A8, &qword_1EB6E3DD0, &qword_1B0EC0F08);
    v5 = result;
    v6 = MEMORY[0x1E69E7CC0];
  }

  a1[3] = v4;
  a1[4] = v5;
  *a1 = v6;
  return result;
}

uint64_t sub_1B041C864()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return swift_deallocObject();
}

uint64_t sub_1B041C8AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B041C914(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B041C97C(uint64_t a1, uint64_t a2)
{
  v4 = _s6LoggerVMa_0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B041C9E0(uint64_t a1)
{
  v2 = _s6LoggerVMa_0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B041CA3C()
{
  v1 = _s15MissingMessagesO10IncompleteVMa(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s15MissingMessagesOMa(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v0[19];
  v9 = v0[20];
  v11 = v0[21];
  if (sub_1B0A94670(12, v10) & 1) == 0 || (sub_1B0A94670(12, v9) & 1) != 0 || (sub_1B03BE324(v10, v9) & 1) != 0 && (sub_1B0A94670(12, v11))
  {
    goto LABEL_3;
  }

  v14 = type metadata accessor for MailboxSyncState();
  sub_1B03BD4C8(v0 + *(v14 + 68), v8, _s15MissingMessagesOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
LABEL_13:
    v12 = sub_1B041CC20() ^ 1;
    return v12 & 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1B03BD5FC(v8, _s15MissingMessagesOMa);
    goto LABEL_13;
  }

  sub_1B03D008C(v8, v4, _s15MissingMessagesO10IncompleteVMa);
  v16 = sub_1B0B4BE48();
  v18 = v17;
  sub_1B03BD5FC(v4, _s15MissingMessagesO10IncompleteVMa);
  if ((v18 & 1) != 0 || !v16)
  {
    goto LABEL_13;
  }

LABEL_3:
  v12 = 0;
  return v12 & 1;
}

uint64_t sub_1B041CC20()
{
  v1 = 0;
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[21];
  v5 = v2 + 56;
  v6 = v3 + 56;
  v7 = v4 + 56;
  v8 = &unk_1F27105A0;
  while (*(v2 + 16))
  {
    v9 = v8;
    v10 = v8[v1 + 32];
    v11 = *(v2 + 40);
    sub_1B0E46C28();
    MEMORY[0x1B2728D70](v10);
    v12 = sub_1B0E46CB8();
    v13 = -1 << *(v2 + 32);
    v14 = v12 & ~v13;
    if (((*(v5 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      break;
    }

    ++v1;
    v15 = ~v13;
    while (*(*(v2 + 48) + v14) != v10)
    {
      v14 = (v14 + 1) & v15;
      if (((*(v5 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        return 1;
      }
    }

    if (*(v3 + 16))
    {
      v16 = *(v3 + 40);
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v10);
      v17 = sub_1B0E46CB8();
      v18 = -1 << *(v3 + 32);
      v19 = v17 & ~v18;
      if ((*(v6 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
      {
        v20 = ~v18;
        while (*(*(v3 + 48) + v19) != v10)
        {
          v19 = (v19 + 1) & v20;
          if (((*(v6 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        return 1;
      }
    }

LABEL_13:
    if (sub_1B03BE324(v2, v3))
    {
      if (*(v4 + 16))
      {
        v21 = *(v4 + 40);
        sub_1B0E46C28();
        MEMORY[0x1B2728D70](v10);
        v22 = sub_1B0E46CB8();
        v23 = -1 << *(v4 + 32);
        v24 = v22 & ~v23;
        if ((*(v7 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
        {
          v25 = ~v23;
          while (*(*(v4 + 48) + v24) != v10)
          {
            v24 = (v24 + 1) & v25;
            if (((*(v7 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
            {
              goto LABEL_19;
            }
          }

          return 1;
        }
      }
    }

LABEL_19:
    v8 = v9;
    if (v1 == 7)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1B041CE34(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B041CE94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B041CEFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B041CF6C()
{
  v2 = sub_1B04376A0();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_1B041D024()
{
  result = type metadata accessor for MessageSectionData.Segment(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B041D0D8()
{
  type metadata accessor for Task.Logger(319);
  if (v0 <= 0x3F)
  {
    sub_1B041D1CC();
    if (v1 <= 0x3F)
    {
      sub_1B041D4C0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B041D1CC()
{
  if (!qword_1EB6DEAD8)
  {
    v0 = sub_1B0E45D88();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6DEAD8);
    }
  }
}

uint64_t sub_1B041D21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 + 16);
  if (!a3)
  {
    if (v9)
    {
      v11 = 0;
      for (i = (a4 + 40); ; i += 2)
      {
        result = *(i - 1);
        if (result == a1 && *i == a2)
        {
          break;
        }

        result = sub_1B0E46A78();
        if (result)
        {
          break;
        }

        if (v9 == ++v11)
        {
          return 0;
        }
      }

      goto LABEL_4;
    }

    return 0;
  }

  v11 = sub_1B0C08B5C(a1, a2, a4 + 32, v9, (a3 + 16));
  v13 = v12;

  if (v13)
  {
    return 0;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_18;
  }

LABEL_4:
  if (v11 < *(a5 + 16))
  {
    v15 = a5 + 16 * v11;
    v16 = *(v15 + 32);
    v17 = *(v15 + 40);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return v16;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1B041D32C(char *a1, int64_t a2, char a3)
{
  result = sub_1B041D34C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B041D34C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E37F8, &qword_1B0EA2E00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1B041D458()
{
  if (!qword_1EB6DC9E0)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB6DC9E0);
    }
  }
}

unint64_t sub_1B041D4C0()
{
  result = qword_1EB6DA2C8;
  if (!qword_1EB6DA2C8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EB6DA2C8);
  }

  return result;
}

void sub_1B041D510()
{
  sub_1B041D6E0(319, &qword_1EB6DB648);
  if (v0 <= 0x3F)
  {
    sub_1B041C13C(319, &qword_1EB6DE960);
    if (v1 <= 0x3F)
    {
      sub_1B041D6E0(319, &qword_1EB6DB560);
      if (v2 <= 0x3F)
      {
        sub_1B041D72C(319, &qword_1EB6DAD98, sub_1B041C194, &type metadata for Flag, MEMORY[0x1E69E64E8]);
        if (v3 <= 0x3F)
        {
          sub_1B041D72C(319, &qword_1EB6DE3E0, sub_1B041C1E8, &type metadata for UID, type metadata accessor for MessageIdentifierSet);
          if (v4 <= 0x3F)
          {
            sub_1B041C078();
            if (v5 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1B041D6E0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1B0E45358();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1B041D72C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1B041D794(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v16 = MEMORY[0x1E69E7CC0];
  v3 = *(a1 + 16);
  sub_1B041C260(v3, 0);
  sub_1B041DB10(0, v3, 0);
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  v5 = a1 + 32;
  while (1)
  {
    v6 = v5 + 32 * v4;
    v8 = *v6;
    v7 = *(v6 + 8);
    v9 = *(v16 + 16);
    v15 = *(v6 + 16);
    if (v9)
    {
      break;
    }

LABEL_11:
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0C07E68(v8, v7);
    v13 = *(v2 + 16);
    v12 = *(v2 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_1B041DB10((v12 > 1), v13 + 1, 1);
    }

    ++v4;
    *(v2 + 16) = v13 + 1;
    *(v2 + 16 * v13 + 32) = v15;
    if (v4 == v3)
    {
      return 0;
    }
  }

  v10 = (v16 + 40);
  while (1)
  {
    v11 = *(v10 - 1) == v8 && *v10 == v7;
    if (v11 || (sub_1B0E46A78() & 1) != 0)
    {
      break;
    }

    v10 += 2;
    if (!--v9)
    {
      goto LABEL_11;
    }
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __break(1u);
  __break(1u);
  return result;
}

double sub_1B041D974()
{
  v0 = sub_1B041D794(MEMORY[0x1E69E7CC0]);
  sub_1B041DB30(v0, v1, v2, v4);
  xmmword_1EB737CC0 = v10;
  unk_1EB737CD0 = v11;
  xmmword_1EB737CE0 = v12;
  xmmword_1EB737C80 = v6;
  unk_1EB737C90 = v7;
  xmmword_1EB737CA0 = v8;
  unk_1EB737CB0 = v9;
  static ServerID.empty = v4[0];
  *algn_1EB737C50 = v4[1];
  result = *&v5;
  xmmword_1EB737C60 = v4[2];
  unk_1EB737C70 = v5;
  return result;
}

void *sub_1B041D9DC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5638, &unk_1B0EFA5B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3850, &qword_1B0E9B600);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B041DB10(void *a1, int64_t a2, char a3)
{
  result = sub_1B041D9DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

__n128 sub_1B041DB30@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1B041D21C(1701667182, 0xE400000000000000, a1, a2, a3);
  if (v9 == 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = v8;
  }

  if (v9 == 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = v9;
  }

  v72 = v11;
  v73 = v10;
  v12 = sub_1B041D21C(0x6E6F6973726576, 0xE700000000000000, a1, a2, a3);
  if (v13 == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = v12;
  }

  if (v13 == 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = v13;
  }

  v70 = v15;
  v71 = v14;
  v16 = sub_1B041D21C(29551, 0xE200000000000000, a1, a2, a3);
  if (v17 == 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = v16;
  }

  if (v17 == 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = v17;
  }

  v68 = v19;
  v69 = v18;
  v20 = sub_1B041D21C(0x69737265762D736FLL, 0xEA00000000006E6FLL, a1, a2, a3);
  if (v21 == 1)
  {
    v22 = 0;
  }

  else
  {
    v22 = v20;
  }

  if (v21 == 1)
  {
    v23 = 0;
  }

  else
  {
    v23 = v21;
  }

  v66 = v23;
  v67 = v22;
  v24 = sub_1B041D21C(0x726F646E6576, 0xE600000000000000, a1, a2, a3);
  if (v25 == 1)
  {
    v26 = 0;
  }

  else
  {
    v26 = v24;
  }

  if (v25 == 1)
  {
    v27 = 0;
  }

  else
  {
    v27 = v25;
  }

  v64 = v27;
  v65 = v26;
  v28 = sub_1B041D21C(0x2D74726F70707573, 0xEB000000006C7275, a1, a2, a3);
  if (v29 == 1)
  {
    v30 = 0;
  }

  else
  {
    v30 = v28;
  }

  if (v29 == 1)
  {
    v31 = 0;
  }

  else
  {
    v31 = v29;
  }

  v62 = v31;
  v63 = v30;
  v32 = sub_1B041D21C(0x73736572646461, 0xE700000000000000, a1, a2, a3);
  if (v33 == 1)
  {
    v34 = 0;
  }

  else
  {
    v34 = v32;
  }

  if (v33 == 1)
  {
    v35 = 0;
  }

  else
  {
    v35 = v33;
  }

  v60 = v35;
  v61 = v34;
  v36 = sub_1B041D21C(1702125924, 0xE400000000000000, a1, a2, a3);
  if (v37 == 1)
  {
    v38 = 0;
  }

  else
  {
    v38 = v36;
  }

  if (v37 == 1)
  {
    v39 = 0;
  }

  else
  {
    v39 = v37;
  }

  v58 = v39;
  v59 = v38;
  v40 = sub_1B041D21C(0x646E616D6D6F63, 0xE700000000000000, a1, a2, a3);
  if (v41 == 1)
  {
    v42 = 0;
  }

  else
  {
    v42 = v40;
  }

  if (v41 == 1)
  {
    v43 = 0;
  }

  else
  {
    v43 = v41;
  }

  v44 = sub_1B041D21C(0x746E656D75677261, 0xE900000000000073, a1, a2, a3);
  if (v45 == 1)
  {
    v46 = 0;
  }

  else
  {
    v46 = v44;
  }

  if (v45 == 1)
  {
    v47 = 0;
  }

  else
  {
    v47 = v45;
  }

  v48 = sub_1B041D21C(0x6D6E6F7269766E65, 0xEB00000000746E65, a1, a2, a3);
  v50 = v49;

  if (v50 == 1)
  {
    v51 = 0;
  }

  else
  {
    v51 = v48;
  }

  if (v50 == 1)
  {
    v52 = 0;
  }

  else
  {
    v52 = v50;
  }

  *&v75 = v73;
  *(&v75 + 1) = v72;
  *&v76 = v71;
  *(&v76 + 1) = v70;
  *&v77 = v69;
  *(&v77 + 1) = v68;
  v78.n128_u64[0] = v67;
  v78.n128_u64[1] = v66;
  *&v79 = v65;
  *(&v79 + 1) = v64;
  *&v80 = v63;
  *(&v80 + 1) = v62;
  *&v81 = v61;
  *(&v81 + 1) = v60;
  *&v82 = v59;
  *(&v82 + 1) = v58;
  *&v83 = v42;
  *(&v83 + 1) = v43;
  *&v84 = v46;
  *(&v84 + 1) = v47;
  *&v85 = v51;
  *(&v85 + 1) = v52;
  v86[0] = v73;
  v86[1] = v72;
  v86[2] = v71;
  v86[3] = v70;
  v86[4] = v69;
  v86[5] = v68;
  v86[6] = v67;
  v86[7] = v66;
  v86[8] = v65;
  v86[9] = v64;
  v86[10] = v63;
  v86[11] = v62;
  v86[12] = v61;
  v86[13] = v60;
  v86[14] = v59;
  v86[15] = v58;
  v86[16] = v42;
  v86[17] = v43;
  v86[18] = v46;
  v86[19] = v47;
  v86[20] = v51;
  v86[21] = v52;
  sub_1B039F420(&v75, &v74);
  sub_1B039FF14(v86);
  v53 = v84;
  *(a4 + 128) = v83;
  *(a4 + 144) = v53;
  *(a4 + 160) = v85;
  v54 = v80;
  *(a4 + 64) = v79;
  *(a4 + 80) = v54;
  v55 = v82;
  *(a4 + 96) = v81;
  *(a4 + 112) = v55;
  v56 = v76;
  *a4 = v75;
  *(a4 + 16) = v56;
  result = v78;
  *(a4 + 32) = v77;
  *(a4 + 48) = result;
  return result;
}

void *sub_1B041DEEC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4470, &qword_1B0EC51E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4478, &qword_1B0EC51F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1B041E020(uint64_t result, unsigned int a2, uint64_t a3)
{
  v6 = result;
  v7 = *v3;
  v8 = *(*v3 + 16);
  if (v8)
  {
    v9 = v8 - 1;
    v10 = v7 + 32;
    if (*(v7 + 32 + 16 * (v8 - 1) + 12) > a3)
    {
      v7 = 0;
      do
      {
        while (1)
        {
          if (__OFSUB__(v9, v7))
          {
            __break(1u);
LABEL_23:
            __break(1u);
LABEL_24:
            __break(1u);
LABEL_25:
            __break(1u);
            goto LABEL_26;
          }

          v11 = v7 + (v9 - v7) / 2;
          if (__OFADD__(v7, (v9 - v7) / 2))
          {
            goto LABEL_23;
          }

          if (v11 >= v8)
          {
            goto LABEL_24;
          }

          v12 = *(v10 + 16 * v11 + 12);
          if (v12 < a3)
          {
            break;
          }

          if (v12 <= a3)
          {
            return result;
          }

          v9 = v11 - 1;
          if ((v11 - 1) < v7)
          {
            goto LABEL_12;
          }
        }

        v7 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_25;
        }
      }

      while (v9 >= v7);
LABEL_12:
      if (v8 < v7)
      {
        __break(1u);
      }

      else if ((v7 & 0x8000000000000000) == 0)
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0BAB8C4(v7, v7, v6, a2 | (a3 << 32));
      }

      __break(1u);
      return result;
    }
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_26:
    result = sub_1B041DEEC(0, v8 + 1, 1, v7);
    v7 = result;
  }

  v14 = *(v7 + 16);
  v13 = *(v7 + 24);
  if (v14 >= v13 >> 1)
  {
    result = sub_1B041DEEC((v13 > 1), v14 + 1, 1, v7);
    v7 = result;
  }

  *(v7 + 16) = v14 + 1;
  v15 = v7 + 16 * v14;
  *(v15 + 32) = v6;
  *(v15 + 40) = a2;
  *(v15 + 44) = a3;
  *v3 = v7;
  return result;
}

uint64_t sub_1B041E1C0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4330, &qword_1B0EDC420);
  result = sub_1B0E46208();
  v6 = result;
  if (*(v3 + 16))
  {
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
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = *(v3 + 48) + 16 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v6 + 40);
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v21 | (v21 << 32));
      result = sub_1B0E46CB8();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 16 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_1B041E424()
{
  result = qword_1EB6DE2D8;
  if (!qword_1EB6DE2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DE2D8);
  }

  return result;
}

void *sub_1B041E494(void *result, void *a2)
{
  if (((*a2 | *result) & 0x8000000000000000) == 0)
  {
    return (*a2 == *result);
  }

  __break(1u);
  return result;
}

uint64_t static UIDValidityWith<A>.__derived_struct_equals(_:_:)(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(type metadata accessor for UIDValidityWith() + 28);
  return sub_1B0E44A28() & 1;
}

uint64_t sub_1B041E574(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B041E5BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B041E604(uint64_t a1, uint64_t a2, uint64_t a3, void *aBlock)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = _Block_copy(aBlock);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7(a2, a3, sub_1B0430EA8, v9);

  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t sub_1B041E6D0()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1B041E710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;

  sub_1B0C2EBD8(a1, a2, sub_1B0430EA0, v8);
}

uint64_t sub_1B041E7AC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B041E7E8(unsigned int a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v35 = a5;
  v38 = a2;
  v11 = _s6LoggerVMa_0();
  v36 = *(v11 - 8);
  v12 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v37 = &v31[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_1B0E44468();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v31[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EB6DCDB0 != -1)
  {
    swift_once();
  }

  v18 = qword_1EB6DCDB8;
  *v17 = qword_1EB6DCDB8;
  (*(v14 + 104))(v17, *MEMORY[0x1E69E8020], v13);
  v19 = v18;
  LOBYTE(v18) = sub_1B0E44488();
  result = (*(v14 + 8))(v17, v13);
  if (v18)
  {
    v32 = HIWORD(a1);
    v21 = swift_allocObject();
    v21[2] = v6;
    v21[3] = a4;
    v21[4] = v35;
    v21[5] = a6;
    v34 = qword_1EB737B88;
    v22 = *v6;
    v33 = a6;
    v23 = *(v22 + 136);
    v35 = qword_1EB737B78;
    v24 = *(v6 + qword_1EB737B80);
    v25 = v37;
    sub_1B041EC54(v6 + qword_1EB737B88, v37, _s6LoggerVMa_0);
    v26 = a4;
    v27 = (*(v36 + 80) + 64) & ~*(v36 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = sub_1B0430E48;
    *(v28 + 24) = v21;
    *(v28 + 32) = v24;
    *(v28 + 40) = a1;
    *(v28 + 42) = v32;
    *(v28 + 48) = v38;
    *(v28 + 56) = a3;
    sub_1B041ECBC(v25, v28 + v27);
    v29 = *(v6 + v23);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    v30 = v26;

    sub_1B0C2FED8(v24, v6 + v35, v30, v6 + v34, sub_1B042FF4C, v28, v29);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B041EB30()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1B041EB78()
{
  v1 = *(_s6LoggerVMa_0() - 8);
  v2 = (*(v1 + 80) + 64) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(v0 + 24);

  v5 = *(v0 + 56);

  v6 = sub_1B0E439A8();
  (*(*(v6 - 8) + 8))(v0 + v2, v6);

  return swift_deallocObject();
}

uint64_t sub_1B041EC54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B041ECBC(uint64_t a1, uint64_t a2)
{
  v4 = _s6LoggerVMa_0();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B041ED50(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = *(result + 32);

    if (v6 == a2)
    {
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v8 = *(Strong + 16);
        *(Strong + 16) = 0;
      }

      return a3(Strong);
    }
  }

  return result;
}

int64_t sub_1B041EE30()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AF8, &unk_1B0EDC3E0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v26[-v3];
  v5 = sub_1B0E44468();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_queue);
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8020], v5);
  v11 = v10;
  LOBYTE(v10) = sub_1B0E44488();
  result = (*(v6 + 8))(v9, v5);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v13 = v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_backoff;
  swift_beginAccess();
  if (*(v13 + 16))
  {
    return sub_1B041F1A8();
  }

  v14 = *(v13 + 8);
  result = static MonotonicTime.now()();
  v15 = __OFSUB__(v14, result);
  v16 = v14 - result;
  if (v14 >= result)
  {
LABEL_8:
    if (!v15)
    {
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }

  if (__OFSUB__(result, v14))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v15 = __OFSUB__(0, result - v14);
  v16 = v14 - result;
  if (v15)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  v17 = v16 / 1000000000.0;
  if (v17 < 0.0)
  {
    return sub_1B041F1A8();
  }

  v18 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  swift_beginAccess();
  sub_1B03B5C80(v0 + v18, v4, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
  v19 = sub_1B0E439A8();
  v20 = *(v19 - 8);
  result = (*(v20 + 48))(v4, 1, v19);
  if (result == 1)
  {
    goto LABEL_19;
  }

  v21 = v0;

  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v22 = sub_1B0E43988();
  v23 = sub_1B0E458E8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 68158208;
    *(v24 + 4) = 2;
    *(v24 + 8) = 256;
    *(v24 + 10) = *(v21 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

    *(v24 + 11) = 2048;
    *(v24 + 13) = v17;
    _os_log_impl(&dword_1B0389000, v22, v23, "[%.*hhx] Backoff timer expired, but we still have to wait %f seconds.", v24, 0x15u);
    MEMORY[0x1B272C230](v24, -1, -1);
  }

  else
  {
  }

  v25 = (*(v20 + 8))(v4, v19);
  return sub_1B0C50C9C(v25);
}

uint64_t sub_1B041F1A8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AF8, &unk_1B0EDC3E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v13 - v4;
  v6 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  swift_beginAccess();
  sub_1B03B5C80(v1 + v6, v5, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
  v7 = sub_1B0E439A8();
  v8 = *(v7 - 8);
  result = (*(v8 + 48))(v5, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v10 = sub_1B0E43988();
    v11 = sub_1B0E458C8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 68157952;
      *(v12 + 4) = 2;
      *(v12 + 8) = 256;
      *(v12 + 10) = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

      _os_log_impl(&dword_1B0389000, v10, v11, "[%.*hhx] Backoff timer has expired. Re-trying.", v12, 0xBu);
      MEMORY[0x1B272C230](v12, -1, -1);
    }

    else
    {
    }

    (*(v8 + 8))(v5, v7);
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_1B041F3D0(MEMORY[0x1E69E7CC0]);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1B041F3D0(uint64_t a1)
{
  v3 = sub_1B0E44468();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + 16);
  *v7 = v8;
  v10 = v4 + 13;
  v9 = v4[13];
  v56 = *MEMORY[0x1E69E8020];
  v55 = v9;
  v9(v7);
  v11 = v8;
  v12 = sub_1B0E44488();
  v13 = v4[1];
  v57 = v7;
  v58 = v4 + 1;
  v51 = v3;
  v54 = v13;
  result = v13(v7, v3);
  if ((v12 & 1) == 0)
  {
    goto LABEL_30;
  }

  v15 = *(a1 + 16);
  if (v15)
  {
    v49 = v1;
    v50 = v10;
    v59 = MEMORY[0x1E69E7CC0];
    sub_1B0C57BF8(0, v15, 0);
    v16 = v59;
    v53 = a1;
    v17 = (a1 + 64);
    v18 = v15;
    do
    {
      v19 = *(v17 - 8);
      v20 = *(v17 - 3);
      v21 = *(v17 - 4);
      v23 = *(v17 - 1);
      v22 = *v17;
      v24 = swift_allocObject();
      *(v24 + 16) = v19;
      *(v24 + 24) = v20;
      *(v24 + 32) = v21;
      *(v24 + 40) = v23;
      *(v24 + 48) = v22;
      sub_1B044CD04(v20);
      v59 = v16;
      v26 = *(v16 + 16);
      v25 = *(v16 + 24);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      if (v26 >= v25 >> 1)
      {
        sub_1B0C57BF8((v25 > 1), v26 + 1, 1);
        v16 = v59;
      }

      *(v16 + 16) = v26 + 1;
      *(v16 + 8 * v26 + 32) = v24;
      v17 += 5;
      --v18;
    }

    while (v18);
    v27 = v49;
    sub_1B038DED0(v16);

    v28 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_betterPathEvaluator;
    v29 = (v53 + 64);
    v48 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_betterPathEvaluator;
    while (1)
    {
      v30 = *(v29 - 3);
      v31 = *(v27 + v28);
      if (v31)
      {
        v32 = v30 >> 60 == 7;
      }

      else
      {
        v32 = 0;
      }

      if (!v32)
      {
        goto LABEL_8;
      }

      v33 = *(v29 - 1);
      v53 = *v29;
      v34 = *((v30 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v35 = *(v31 + 16);
      v36 = v57;
      *v57 = v35;
      v37 = v51;
      v55(v36, v56, v51);
      v38 = v35;
      v52 = v33;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      sub_1B044CD04(v30);
      LOBYTE(v35) = sub_1B0E44488();
      result = v54(v36, v37);
      if ((v35 & 1) == 0)
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        return result;
      }

      v39 = static MonotonicTime.now()();
      swift_beginAccess();
      v40 = *(v31 + 64);
      if (v34)
      {
        break;
      }

      if (v40 == 1)
      {
        v39 = 0;
        v41 = 0;
LABEL_22:
        *(v31 + 56) = v39;
        *(v31 + 64) = v41;
      }

LABEL_23:
      v42 = v57;
      *v57 = v38;
      v55(v42, v56, v37);
      v43 = sub_1B0E44488();
      result = v54(v42, v37);
      if ((v43 & 1) == 0)
      {
        goto LABEL_29;
      }

      sub_1B044E4C4();
      sub_1B044E8FC();

      sub_1B044CEF8(v30);

      v28 = v48;
      v27 = v49;
LABEL_8:
      v29 += 5;
      if (!--v15)
      {
        return result;
      }
    }

    if (*(v31 + 64) && (v40 != 1 || *(v31 + 56) >= v39))
    {
      goto LABEL_23;
    }

    v41 = 1;
    goto LABEL_22;
  }

  v44 = v57;
  *v57 = v11;
  v45 = v51;
  v55(v44, v56, v51);
  v46 = v11;
  v47 = sub_1B0E44488();
  result = v54(v44, v45);
  if ((v47 & 1) == 0)
  {
    goto LABEL_31;
  }

  sub_1B038DED0(&unk_1F2721090);
  return sub_1B0425738(&unk_1F27210B0);
}

uint64_t sub_1B041F834()
{
  sub_1B044CEF8(v0[3]);
  v1 = v0[5];

  v2 = v0[6];

  return swift_deallocObject();
}

char *MailboxesSelectionUsage.sortedIdleConnections(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v42 = MEMORY[0x1E69E7CC0];
    v41 = v2;
    sub_1B04544CC(0, v2, 0);
    v6 = v41;
    v7 = 0;
    v8 = a1 + 32;
    v9 = v42;
    v10 = (a2 + 32);
    v11 = *(a2 + 16) + 1;
    do
    {
      v12 = *(v8 + 4 * v7);
      v13 = v11;
      v14 = v10;
      while (--v13)
      {
        v15 = v14 + 10;
        v16 = *v14;
        v14 += 10;
        if (v16 == v12)
        {
          v17 = *(v15 - 8);
          v18 = *(v15 - 2);
          goto LABEL_8;
        }
      }

      v18 = 0;
      v17 = 1;
LABEL_8:
      v42 = v9;
      v20 = *(v9 + 2);
      v19 = *(v9 + 3);
      v21 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        v23 = v8;
        sub_1B04544CC((v19 > 1), v20 + 1, 1);
        v8 = v23;
        v6 = v41;
        v9 = v42;
      }

      *(v9 + 2) = v21;
      v22 = &v9[32 * v20];
      *(v22 + 4) = v7;
      *(v22 + 10) = v12;
      *(v22 + 6) = v18;
      v22[56] = v17;
      ++v7;
    }

    while (v7 != v6);
  }

  else
  {
    v21 = *(MEMORY[0x1E69E7CC0] + 16);
    v9 = MEMORY[0x1E69E7CC0];
    if (!v21)
    {
      goto LABEL_25;
    }
  }

  v24 = (v9 + 56);
  v3 = MEMORY[0x1E69E7CC0];
  do
  {
    v28 = *(v24 - 1);
    v29 = *v24;
    if (v29 != 1 || v28 == 0)
    {
      v31 = *(v24 - 3);
      v32 = *(v24 - 4);
      v42 = v3;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B04544CC(0, *(v3 + 2) + 1, 1);
        v3 = v42;
      }

      v26 = *(v3 + 2);
      v25 = *(v3 + 3);
      if (v26 >= v25 >> 1)
      {
        sub_1B04544CC((v25 > 1), v26 + 1, 1);
        v3 = v42;
      }

      *(v3 + 2) = v26 + 1;
      v27 = &v3[32 * v26];
      *(v27 + 4) = v31;
      *(v27 + 10) = v32;
      *(v27 + 6) = v28;
      v27[56] = v29;
    }

    v24 += 32;
    --v21;
  }

  while (v21);
LABEL_25:

  v42 = v3;

  sub_1B0454500(&v42);

  v33 = v42;
  v34 = *(v42 + 2);
  if (v34)
  {
    v42 = MEMORY[0x1E69E7CC0];
    sub_1B04543AC(0, v34, 0);
    v35 = v42;
    v36 = *(v42 + 2);
    v37 = 40;
    do
    {
      v38 = *&v33[v37];
      v42 = v35;
      v39 = *(v35 + 3);
      if (v36 >= v39 >> 1)
      {
        sub_1B04543AC((v39 > 1), v36 + 1, 1);
        v35 = v42;
      }

      *(v35 + 2) = v36 + 1;
      *&v35[4 * v36 + 32] = v38;
      v37 += 32;
      ++v36;
      --v34;
    }

    while (v34);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v35;
}

uint64_t sub_1B041FB64(uint64_t a1, uint64_t a2)
{
  v62 = a1;
  v60 = type metadata accessor for ConnectionConfiguration(0);
  v3 = *(*(v60 - 1) + 64);
  v4 = MEMORY[0x1EEE9AC00](v60);
  v61 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v63 = &v55 - v6;
  v59 = type metadata accessor for ConnectionConfiguration();
  v7 = *(*(v59 - 8) + 64);
  MEMORY[0x1EEE9AC00](v59);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_nextConnectionID;
  v10 = *(a2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_nextConnectionID);
  v11 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  swift_beginAccess();
  v57 = v11;
LABEL_2:
  v12 = *&v11[a2];
  if (v12 >> 62)
  {
    v13 = sub_1B0E46138();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (!v13)
  {
LABEL_17:

    *(a2 + v58) = v10 + 1;
    v17 = *(a2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);
    sub_1B03C623C(a2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_configuration, v9, type metadata accessor for ConnectionConfiguration);
    v18 = *(a2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connectionTraits);
    v19 = *(a2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_queue);
    v20 = v9;
    v21 = *(a2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_dataTransferReportAccumulator);
    v22 = v59;
    v23 = v20;
    v24 = v20[*(v59 + 28)];
    LODWORD(v58) = v17;
    v57 = v19;
    if (v24 >> 6)
    {
      if (v24 >> 6 == 1)
      {
        v25 = v24 & 0x3F | 0x40;
      }

      else
      {
        v25 = 0x80;
      }
    }

    else
    {
      v25 = v24;
    }

    v26 = sub_1B0E43BC8();
    v27 = v63;
    (*(*(v26 - 8) + 16))(v63, v23, v26);
    v28 = *(v23 + v22[5]);
    v29 = *(v23 + v22[6]);
    v30 = (v23 + v22[8]);
    v31 = *v30;
    v56 = v30[1];
    v32 = v56;
    v33 = (v23 + v22[10]);
    v34 = *v33;
    v35 = v33[1];
    v36 = v60;
    v37 = v61;
    v38 = (v27 + v60[8]);
    v39 = (v27 + v60[9]);
    v40 = v60[6];
    *(v27 + v60[5]) = v28;
    *(v27 + v40) = v29;
    *(v27 + v36[7]) = v25;
    *v38 = v31;
    v38[1] = v32;
    *v39 = v34;
    v39[1] = v35;
    sub_1B03C623C(v27, v37, type metadata accessor for ConnectionConfiguration);
    v41 = type metadata accessor for CommandConnection();
    v42 = *(v41 + 48);
    v43 = *(v41 + 52);
    v60 = swift_allocObject();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v44 = v62;

    swift_retain_n();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v45 = v57;

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v54 = CommandConnection.init(id:engineID:configuration:connectionTraits:makeCredentials:getPushInformation:finishPushRegistration:queue:delegate:reportDataTransfer:test_overrideIdleRefreshInterval:)(v10, v58, v37, v18, sub_1B044AFA8, a2, sub_1B0C5A0D8, a2, v46, v47, v48, v49, v50, v51, v52, v53, sub_1B0C5A0DC, a2, v45, v44, &off_1F2721AA0, sub_1B041AAB4, v21, 0.0, 1);
    sub_1B038C824(v23, type metadata accessor for ConnectionConfiguration);
    sub_1B038C824(v27, type metadata accessor for ConnectionConfiguration);
    return v54;
  }

  v15 = 0;
  while ((v12 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x1B2728410](v15, v12);
    if (__OFADD__(v15++, 1))
    {
      goto LABEL_25;
    }

    LODWORD(v56) = *(result + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);
    result = swift_unknownObjectRelease();
    if (v56 == v10)
    {
LABEL_15:

      v10 = (v10 + 1);
      v11 = v57;
      goto LABEL_2;
    }

LABEL_11:
    if (v15 == v13)
    {
      goto LABEL_17;
    }
  }

  if ((v15 & 0x8000000000000000) == 0)
  {
    if (v15 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_24;
    }

    if (*(*(v12 + 32 + 8 * v15) + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id) == v10)
    {
      goto LABEL_15;
    }

    ++v15;
    goto LABEL_11;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for ConnectionConfiguration()
{
  result = qword_1EB6DCA20;
  if (!qword_1EB6DCA20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ConnectionConfiguration.TransportLayerSecurity.init(_:)(uint64_t result)
{
  if (result >> 6 == 1)
  {
    v1 = result & 0x3F | 0x40;
  }

  else
  {
    v1 = 128;
  }

  if (result >> 6)
  {
    return v1;
  }

  else
  {
    return result;
  }
}

uint64_t ConnectionConfiguration.init(endpoint:prohibitConstrainedPaths:prohibitedInterfaceTypes:transportLayerSecurity:sourceApplicationBundleIdentifier:networkAccountIdentifier:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v15 = type metadata accessor for ConnectionConfiguration(0);
  v16 = v15[6];
  v17 = (a9 + v15[8]);
  v18 = (a9 + v15[9]);
  v19 = sub_1B0E43BC8();
  result = (*(*(v19 - 8) + 32))(a9, a1, v19);
  *(a9 + v15[5]) = a2;
  *(a9 + v16) = a3;
  *(a9 + v15[7]) = a4;
  *v17 = a5;
  v17[1] = a6;
  *v18 = a7;
  v18[1] = a8;
  return result;
}

uint64_t type metadata accessor for CommandConnection()
{
  result = qword_1EB6DD028;
  if (!qword_1EB6DD028)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B04201EC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = a4;
  v7 = a3;
  v61 = a4;
  v62 = a3;
  v71 = a2;
  v9 = sub_1B0E43828();
  v73 = *(v9 - 8);
  v74 = v9;
  v10 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v66 = v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1B0E43868();
  v69 = *(v67 - 8);
  v12 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v68 = v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1B0E43BC8();
  v70 = *(v72 - 8);
  v14 = *(v70 + 8);
  MEMORY[0x1EEE9AC00](v72);
  v65 = v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B0E43E78();
  v63 = *(v16 - 8);
  v64 = v16;
  v17 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v60 = v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ConnectionConfiguration(0);
  v20 = (v19 - 8);
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = _s6LoggerVMa_0();
  v25 = v24 - 8;
  v26 = *(*(v24 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = v58 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v31 = v58 - v30;
  *(v5 + OBJC_IVAR____TtC15IMAP2Connection10Connection_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v32 = OBJC_IVAR____TtC15IMAP2Connection10Connection_receiveTranscoder;
  *(v5 + v32) = ServerResponseTranscoder.init()();
  *(v5 + OBJC_IVAR____TtC15IMAP2Connection10Connection_pendingHandshakeReplyCount) = 0;
  v33 = v5 + OBJC_IVAR____TtC15IMAP2Connection10Connection_throttleInfo;
  *v33 = 0;
  *(v33 + 8) = 0;
  *(v33 + 16) = 1;
  v34 = OBJC_IVAR____TtC15IMAP2Connection10Connection_lastMessageTime;
  *(v5 + v34) = static MonotonicTime.now()();
  sub_1B0E43998();
  v35 = &v31[*(v25 + 28)];
  *v35 = v7;
  *(v35 + 1) = v6;
  v58[1] = sub_1B0E43E68();
  v59 = type metadata accessor for ConnectionConfiguration;
  sub_1B03FD208(a1, v23, type metadata accessor for ConnectionConfiguration);
  sub_1B03FD208(v31, v29, _s6LoggerVMa_0);
  sub_1B04208F4(v23, v29);
  v36 = v23[v20[7]];
  sub_1B0E43EB8();
  v37 = *&v23[v20[8]];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E43EC8();
  v38 = &v23[v20[10]];
  v40 = *v38;
  v39 = *(v38 + 1);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v41 = v66;
  sub_1B0E43ED8();
  v42 = &v23[v20[11]];
  v43 = *v42;
  v44 = *(v42 + 1);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v45 = a1;
  sub_1B0E43EF8();
  (*(v63 + 104))(v60, *MEMORY[0x1E6977C40], v64);
  sub_1B0E43E88();
  (*(v70 + 2))(v65, v23, v72);
  v46 = sub_1B0E43DB8();
  sub_1B03D6AC4(v29, _s6LoggerVMa_0);
  sub_1B03D6AC4(v23, type metadata accessor for ConnectionConfiguration);
  v70 = v31;
  v47 = v67;
  sub_1B03FD208(v31, v5 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger, _s6LoggerVMa_0);
  *(v5 + OBJC_IVAR____TtC15IMAP2Connection10Connection_createdAt) = static MonotonicTime.now()();
  v72 = v45;
  sub_1B03FD208(v45, v5 + OBJC_IVAR____TtC15IMAP2Connection10Connection_configuration, v59);
  v48 = v71;
  *(v5 + OBJC_IVAR____TtC15IMAP2Connection10Connection_queue) = v71;
  *(v5 + OBJC_IVAR____TtC15IMAP2Connection10Connection_connection) = v46;
  v49 = v48;

  *(v5 + OBJC_IVAR____TtC15IMAP2Connection10Connection_underlyingID) = sub_1B0E43C68();
  v50 = tracingSignposter.unsafeMutableAddressor();
  v51 = v68;
  v52 = v69;
  (*(v69 + 16))(v68, v50, v47);
  sub_1B0E43838();
  v53 = sub_1B0E43858();
  v54 = sub_1B0E45AE8();
  if (sub_1B0E45D38())
  {
    v55 = swift_slowAlloc();
    *v55 = 67109120;
    *(v55 + 4) = 1;
    v56 = sub_1B0E43818();
    _os_signpost_emit_with_name_impl(&dword_1B0389000, v53, v54, v56, "Connection.networkStateUpdate", "%u", v55, 8u);
    MEMORY[0x1B272C230](v55, -1, -1);
  }

  sub_1B03D6AC4(v72, type metadata accessor for ConnectionConfiguration);
  (*(v73 + 8))(v41, v74);
  (*(v52 + 8))(v51, v47);
  sub_1B03D6AC4(v70, _s6LoggerVMa_0);
  return v5;
}

uint64_t ServerResponseTranscoder.init()()
{
  v0 = *sub_1B0E435B8();
}

uint64_t sub_1B04208F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5530, &qword_1B0ED0CF8);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v34 - v9;
  v11 = sub_1B0E43F38();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = sub_1B0E43F28();
  sub_1B0E43F18();
  v15 = *(a1 + *(type metadata accessor for ConnectionConfiguration(0) + 28));
  sub_1B0E43F08();
  if ((v15 & 0xC0) == 0x40)
  {
    v16 = sub_1B0420CD0(a1, v15 & 0x3F, a2);

    v17 = v16;
  }

  else
  {

    v17 = 0;
  }

  v18 = MEMORY[0x1B2726000](v17, v14);
  v19 = qword_1EB6DCDA8;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = sub_1B0E44048();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();

  v23 = sub_1B0E44038();
  v24 = a2 + *(_s6LoggerVMa_0() + 20);
  v25 = *(v24 + 4);
  v26 = *v24;
  *(&v35 + 1) = &type metadata for ConnectionLoggerID;
  LOBYTE(v34) = v26;
  DWORD1(v34) = v25;
  sub_1B0E44068();
  sub_1B0E43838();
  v27 = sub_1B0E43828();
  v28 = *(v27 - 8);
  (*(v28 + 56))(v10, 0, 1, v27);
  sub_1B03B5C80(v10, v8, &qword_1EB6E5530, &qword_1B0ED0CF8);
  if ((*(v28 + 48))(v8, 1, v27) == 1)
  {
    sub_1B0398EFC(v8, &qword_1EB6E5530, &qword_1B0ED0CF8);
    v34 = 0u;
    v35 = 0u;
  }

  else
  {
    *(&v35 + 1) = v27;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v34);
    (*(v28 + 32))(boxed_opaque_existential_0, v8, v27);
  }

  sub_1B0E44068();
  sub_1B0398EFC(v10, &qword_1EB6E5530, &qword_1B0ED0CF8);
  sub_1B0E43EA8();

  v31 = sub_1B0E43E98();
  if (!(*v30 >> 62))
  {
    goto LABEL_10;
  }

  if (*v30 < 0)
  {
    v33 = *v30;
  }

  result = sub_1B0E46138();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
LABEL_10:
    sub_1B042104C(0, 0, v23);

    v31(&v34, 0);

    return v18;
  }

  return result;
}

uint64_t sub_1B0420CD0(uint64_t a1, char a2, uint64_t a3)
{
  v6 = sub_1B0E43BC8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s6LoggerVMa_0();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ConnectionConfiguration(0);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B041EC54(a1, v19, type metadata accessor for ConnectionConfiguration);
  sub_1B041EC54(a3, v14, _s6LoggerVMa_0);
  (*(v7 + 16))(v10, v19, v6);
  v20 = &v19[*(v16 + 44)];
  v22 = *v20;
  v21 = *(v20 + 1);
  v23 = qword_1EB6DCDD8;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v23 != -1)
  {
    swift_once();
  }

  v24 = qword_1EB6DCDE0;

  sub_1B038D6F0(v19, type metadata accessor for ConnectionConfiguration);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E58E8, qword_1B0ED9EA0);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  v28 = swift_allocObject();
  (*(v7 + 32))(v28 + qword_1EB737B78, v10, v6);
  v29 = (v28 + qword_1EB737B90);
  *v29 = v22;
  v29[1] = v21;
  *(v28 + qword_1EB737B80) = a2;
  *(v28 + *(*v28 + 136)) = v24;
  sub_1B041ECBC(v14, v28 + qword_1EB737B88);
  v30 = sub_1B0421A34(v28);

  return v30;
}

uint64_t block_copy_helper_1_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_1B042104C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1B0E46138();
  if (result < v5)
  {
    goto LABEL_15;
  }

LABEL_4:
  v10 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = 1 - v10;
  if (__OFSUB__(1, v10))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v8)
  {
    v12 = sub_1B0E46138();
  }

  else
  {
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = v12 + v11;
  if (v13)
  {
    goto LABEL_18;
  }

  sub_1B0BE1DA8(result);

  return sub_1B0423DB8(v6, v5, 1, v3);
}

uint64_t CommandConnection.init(id:engineID:configuration:connectionTraits:makeCredentials:getPushInformation:finishPushRegistration:queue:delegate:reportDataTransfer:test_overrideIdleRefreshInterval:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, void *a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, double a24, char a25)
{
  v18 = v17;
  v94 = a8;
  v87 = a7;
  v93 = a6;
  v85 = a5;
  v88 = a4;
  v91 = a23;
  v92 = a18;
  v86 = a17;
  v84 = a21;
  v79 = sub_1B0E44208();
  v78 = *(v79 - 8);
  v23 = *(v78 + 64);
  v24 = MEMORY[0x1EEE9AC00](v79);
  v81 = &v76[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v24);
  v80 = &v76[-v26];
  v83 = sub_1B0E43DF8();
  v95 = *(v83 - 8);
  v27 = v95[8];
  v28 = MEMORY[0x1EEE9AC00](v83);
  v90 = &v76[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v28);
  v89 = &v76[-v30];
  v31 = type metadata accessor for ConnectionConfiguration(0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v34 = &v76[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35 = v18 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_delegate;
  *(v18 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v18 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_commandCounter) = 0;
  v36 = v18 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_runningCommands;
  v37 = MEMORY[0x1E69E7CC0];
  *v36 = MEMORY[0x1E69E7CC0];
  *(v36 + 8) = 0;
  *(v36 + 16) = 1;
  *(v18 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_recentErrors) = v37;
  *(v18 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_enqueuedEvents) = 0;
  *(v18 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_pathAttributes) = MEMORY[0x1E69E7CD0];
  *(v18 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_dataTransferReportCollector) = 0;
  v38 = (v18 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_idle);
  *v38 = 0u;
  v38[1] = 0u;
  v38[2] = 0u;
  *(v38 + 44) = 0u;
  *(v18 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_stuckConnectionCheckTimer) = 0;
  *(v18 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id) = a1;
  *(v18 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_engineID) = a2;
  *(v18 + 24) = a19;
  v82 = a3;
  sub_1B038C9A4(a3, v34, type metadata accessor for ConnectionConfiguration);
  v39 = type metadata accessor for Connection(0);
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();
  v42 = a19;
  v77 = a1;
  v43 = sub_1B04201EC(v34, v42, a2, a1);

  sub_1B038C9A4(v43 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger, v18 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, _s6LoggerVMa_0);
  *(v35 + 8) = v84;
  v84 = a20;
  swift_unknownObjectWeakAssign();
  v44 = (v18 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_makeCredentials);
  *v44 = v85;
  v44[1] = a6;
  v45 = (v18 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_getPushInformation);
  v46 = v94;
  *v45 = v87;
  v45[1] = v46;
  v47 = (v18 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_finishPushRegistration);
  v48 = v92;
  *v47 = v86;
  v47[1] = v48;
  *(v18 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_connectionTraits) = v88;
  v49 = *MEMORY[0x1E6977C08];
  v88 = v95[13];
  v50 = v83;
  v88(v18 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state, v49, v83);
  type metadata accessor for ConnectionState();
  swift_storeEnumTagMultiPayload();
  *(v18 + 16) = v43;
  *(v43 + OBJC_IVAR____TtC15IMAP2Connection10Connection_delegate + 8) = &off_1F271C898;
  swift_unknownObjectWeakAssign();
  v51 = *(v43 + OBJC_IVAR____TtC15IMAP2Connection10Connection_connection);
  _s27DataTransferReportCollectorCMa();
  v52 = swift_allocObject();
  *(v52 + 56) = 0;
  *(v52 + 64) = 0;
  *(v52 + 72) = 0;
  v86 = v42;

  v87 = v43;

  v53 = v91;

  v54 = v89;
  sub_1B0E43E18();
  v55 = v90;
  v56 = v50;
  v88(v90, v49, v50);
  v57 = v54;
  LOBYTE(v54) = MEMORY[0x1B2725F00](v54, v55);
  v58 = v95[1];
  v58(v55, v56);
  result = (v58)(v57, v56);
  if (v54)
  {
    *(v52 + 16) = v51;
    *(v52 + 24) = v77;
    v60 = v86;
    *(v52 + 32) = v86;
    *(v52 + 40) = a22;
    *(v52 + 48) = v53;
    v61 = *(v18 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_dataTransferReportCollector);
    *(v18 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_dataTransferReportCollector) = v52;

    if (a25)
    {
      v62 = 285.0;
    }

    else
    {
      v62 = a24;
    }

    v63 = v60;

    sub_1B0421B80(v63, v97, v62);
    v64 = (v18 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_idle);
    swift_beginAccess();
    v65 = v64[1];
    v99[0] = *v64;
    v99[1] = v65;
    *v100 = v64[2];
    *&v100[12] = *(v64 + 44);
    v66 = v97[1];
    *v64 = v97[0];
    v64[1] = v66;
    v64[2] = *v98;
    *(v64 + 44) = *&v98[12];
    sub_1B0398EFC(v99, &qword_1EB6E5438, &qword_1B0ED0350);
    v67 = v80;
    *v80 = 9;
    v68 = *MEMORY[0x1E69E7F48];
    v69 = *(v78 + 104);
    v70 = v79;
    v69(v67, v68, v79);
    v71 = v81;
    *v81 = 1;
    v69(v71, v68, v70);
    v72 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1B038D2E4;
    aBlock[5] = v72;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B038C908;
    aBlock[3] = &block_descriptor_5;
    v73 = _Block_copy(aBlock);
    type metadata accessor for RestartableTimer();
    swift_allocObject();

    v74 = RestartableTimer.init(queue:repeating:leeway:closure:)(v63, v67, v71, v73);
    swift_unknownObjectRelease();

    sub_1B038D690(v82, type metadata accessor for ConnectionConfiguration);

    v75 = *(v18 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_stuckConnectionCheckTimer);
    *(v18 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_stuckConnectionCheckTimer) = v74;

    return v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B04219F8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1B0421A34(uint64_t a1)
{
  v2 = sub_1B0E43F78();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = sub_1B0E43F68();
  v6 = sub_1B0E43F58();
  sec_protocol_options_add_tls_application_protocol(v6, "imap");
  swift_unknownObjectRelease();
  v7 = sub_1B0E43F58();
  v10[4] = sub_1B041E708;
  v10[5] = a1;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1B041E604;
  v10[3] = &block_descriptor_3_1;
  v8 = _Block_copy(v10);

  if (qword_1EB6DCDB0 != -1)
  {
    swift_once();
  }

  sec_protocol_options_set_verify_block(v7, v8, qword_1EB6DCDB8);
  _Block_release(v8);
  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_1B0421B80@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_1B0E44208();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = aBlock - v12;
  *(aBlock - v12) = 500;
  v14 = *MEMORY[0x1E69E7F38];
  v15 = *(v7 + 104);
  v15(aBlock - v12, v14, v6);
  *v11 = 100;
  v15(v11, v14, v6);
  v16 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1B038CC1C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B038C908;
  aBlock[3] = &block_descriptor_77;
  v17 = _Block_copy(aBlock);
  type metadata accessor for RestartableTimer();
  swift_allocObject();
  v18 = a1;

  v19 = RestartableTimer.init(queue:repeating:leeway:closure:)(v18, v13, v11, v17);

  LODWORD(v11) = sub_1B0421E9C(0x1000001uLL);

  v21 = (vcvts_n_f32_u32(v11, 0x18uLL) * 0.17) + 0.83;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 2;
  *(a2 + 40) = v19;
  if (v11 == 0x1000000)
  {
    v21 = 1.0;
  }

  *(a2 + 48) = a3;
  *(a2 + 56) = v21;
  return result;
}

unint64_t sub_1B0421E38()
{
  v2 = qword_1EB6DEDC0;
  if (!qword_1EB6DEDC0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DEDC0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B0421E9C(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = result;
    v5 = 0;
    MEMORY[0x1B272C250](&v5, 8);
    v3 = v5 * v2;
    if (v3 < v1)
    {
      for (i = -v1 % v1; i > v3; v3 = v5 * v2)
      {
        v5 = 0;
        MEMORY[0x1B272C250](&v5, 8);
      }
    }

    return HIDWORD(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0421F28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 60))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

Swift::Void __swiftcall CommandConnection.start()()
{
  v1 = v0;
  v2 = type metadata accessor for ConnectionState();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - v7;
  v9 = sub_1B0E44468();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v1 + 24);
  *v13 = v14;
  (*(v10 + 104))(v13, *MEMORY[0x1E69E8020], v9);
  v15 = v14;
  LOBYTE(v14) = sub_1B0E44488();
  (*(v10 + 8))(v13, v9);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v16 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  sub_1B038C9A4(v1 + v16, v8, type metadata accessor for ConnectionState);
  v17 = *MEMORY[0x1E6977C08];
  v18 = sub_1B0E43DF8();
  (*(*(v18 - 8) + 104))(v6, v17, v18);
  swift_storeEnumTagMultiPayload();
  v19 = _s15IMAP2Connection0B5StateO21__derived_enum_equalsySbAC_ACtFZ_0(v8, v6);
  sub_1B038D690(v6, type metadata accessor for ConnectionState);
  sub_1B038D690(v8, type metadata accessor for ConnectionState);
  if ((v19 & 1) == 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (!*(v1 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_dataTransferReportCollector))
  {
LABEL_9:
    __break(1u);
    return;
  }

  v20 = *(v1 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_dataTransferReportCollector);

  sub_1B0422238();

  v21 = *(v1 + 16);
  sub_1B0423148();
  if (*(v1 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_stuckConnectionCheckTimer))
  {
    v22 = *(v1 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_stuckConnectionCheckTimer);

    RestartableTimer.start()();
  }
}

uint64_t sub_1B0422238()
{
  v1 = sub_1B0E43DF8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B0E44468();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = v0[4];
  *v10 = v11;
  (*(v7 + 104))(v10, *MEMORY[0x1E69E8020], v6);
  v12 = v11;
  LOBYTE(v11) = sub_1B0E44488();
  result = (*(v7 + 8))(v10, v6);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v0[9])
  {
    return result;
  }

  v14 = v0;
  v15 = v0[2];
  sub_1B0E43E18();
  v16 = (*(v2 + 88))(v5, v1);
  v17 = *MEMORY[0x1E6977C08];
  (*(v2 + 8))(v5, v1);
  if (v16 != v17)
  {
LABEL_7:
    result = sub_1B0E465B8();
    __break(1u);
    return result;
  }

  v18 = sub_1B0E43D98();
  v19 = static MonotonicTime.now()();
  v20 = v14[9];
  v14[8] = v19;
  v14[9] = v18;
}

uint64_t sub_1B0422494(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t RestartableTimer.init(queue:repeating:leeway:closure:)(void *a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v40 = a3;
  v33 = a4;
  v39 = a2;
  v35 = a1;
  v38 = sub_1B0E443F8();
  v42 = *(v38 - 8);
  v5 = *(v42 + 64);
  v6 = MEMORY[0x1EEE9AC00](v38);
  v37 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v36 = &v32 - v8;
  v9 = sub_1B0E45A38();
  v34 = *(v9 - 8);
  v10 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B0E44238();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v15 = sub_1B0E44288();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  _Block_copy(a4);
  sub_1B0E44278();
  v43 = MEMORY[0x1E69E7CC0];
  sub_1B039E46C(&qword_1EB6DEE50, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1880, &unk_1B0E99EA0);
  sub_1B03CFB8C(&qword_1EB6DEE20, &qword_1EB6E1880, &unk_1B0E99EA0);
  sub_1B0E460A8();
  v17 = sub_1B0E44458();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  sub_1B0E44428();
  sub_1B0421E38();
  v43 = MEMORY[0x1E69E7CC0];
  sub_1B039E46C(&qword_1EB6DAA70, MEMORY[0x1E69E80B0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AA0, &qword_1B0EDC030);
  sub_1B03CFB8C(&qword_1EB6DAFA0, &qword_1EB6E5AA0, &qword_1B0EDC030);
  sub_1B0E460A8();
  v20 = v35;
  v32 = v20;
  v21 = sub_1B0E45A48();

  (*(v34 + 8))(v12, v9);
  ObjectType = swift_getObjectType();
  sub_1B0E45A68();
  v23 = v37;
  sub_1B0E443D8();
  v24 = v36;
  v25 = v39;
  sub_1B0E443E8();
  v26 = *(v42 + 8);
  v42 += 8;
  v27 = v38;
  v26(v23, v38);
  v28 = v40;
  MEMORY[0x1B2727D90](v24, v25, v40, ObjectType);

  _Block_release(v33);
  v29 = sub_1B0E44208();
  v30 = *(*(v29 - 8) + 8);
  v30(v28, v29);
  v30(v25, v29);
  v26(v24, v27);
  result = v41;
  *(v41 + 32) = v32;
  *(result + 16) = v21;
  *(result + 24) = 1;
  return result;
}

uint64_t _s15IMAP2Connection0B5StateO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnauthenticatedStateWithTasks();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v51 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B0E43DF8();
  v52 = *(v7 - 8);
  v53 = v7;
  v8 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v50 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ConnectionState();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = (&v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v50 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v50 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v50 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5478, &unk_1B0ED2770);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v27 = (&v50 + *(v25 + 56) - v26);
  v28 = a1;
  v29 = &v50 - v26;
  sub_1B038CA0C(v28, &v50 - v26, type metadata accessor for ConnectionState);
  sub_1B038CA0C(a2, v27, type metadata accessor for ConnectionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 4)
      {
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          goto LABEL_25;
        }
      }

      else if (swift_getEnumCaseMultiPayload() == 5)
      {
        goto LABEL_25;
      }

LABEL_29:
      sub_1B0398EFC(v29, &qword_1EB6E5478, &unk_1B0ED2770);
LABEL_30:
      v32 = 0;
      return v32 & 1;
    }

    sub_1B038CA0C(v29, v14, type metadata accessor for ConnectionState);
    v34 = *v14;
    v33 = v14[1];
    v35 = v14[2];
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      sub_1B0BD1488(v34, v33, v35);
      goto LABEL_29;
    }

    v36 = *v27;
    v37 = v27[1];
    v38 = v27[2];
    if (v35 > 1)
    {
      if (v35 == 2)
      {
        if (v38 == 2)
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (v35 != 3)
        {
          goto LABEL_39;
        }

        if (v38 == 3)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
      if (v35)
      {
        if (v35 == 1)
        {
          if (v38 == 1)
          {
            goto LABEL_25;
          }

          goto LABEL_44;
        }

LABEL_39:
        if (v38 >= 4)
        {
          v46 = *v27;
          v47 = v27[1];
          v48 = v27[2];
          v49 = static ResponseText.__derived_struct_equals(_:_:)(v34, v33);
          sub_1B0BD1488(v46, v47, v48);
          sub_1B0BD1488(v34, v33, v35);
          if ((v49 & 1) == 0)
          {
            goto LABEL_45;
          }

          goto LABEL_25;
        }

        sub_1B0BD1488(v36, v37, v38);
        v36 = v34;
        v37 = v33;
        v38 = v35;
        goto LABEL_44;
      }

      if (!v38)
      {
        goto LABEL_25;
      }
    }

LABEL_44:
    sub_1B0BD1488(v36, v37, v38);
    goto LABEL_45;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1B038CA0C(v29, v22, type metadata accessor for ConnectionState);
    if (!swift_getEnumCaseMultiPayload())
    {
      v41 = v52;
      v42 = v50;
      v43 = v27;
      v44 = v53;
      (*(v52 + 32))(v50, v43, v53);
      v32 = MEMORY[0x1B2725F00](v22, v42);
      v45 = *(v41 + 8);
      v45(v42, v44);
      v45(v22, v44);
      goto LABEL_34;
    }

    (*(v52 + 8))(v22, v53);
    goto LABEL_29;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1B038CA0C(v29, v20, type metadata accessor for ConnectionState);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v31 = v51;
      sub_1B04478FC(v27, v51, type metadata accessor for UnauthenticatedStateWithTasks);
      v32 = _s15IMAP2Connection29UnauthenticatedStateWithTasksV2eeoiySbAC_ACtFZ_0(v20, v31);
      sub_1B038C704(v31, type metadata accessor for UnauthenticatedStateWithTasks);
      sub_1B038C704(v20, type metadata accessor for UnauthenticatedStateWithTasks);
LABEL_34:
      sub_1B038C704(v29, type metadata accessor for ConnectionState);
      return v32 & 1;
    }

    sub_1B038C704(v20, type metadata accessor for UnauthenticatedStateWithTasks);
    goto LABEL_29;
  }

  sub_1B038CA0C(v29, v17, type metadata accessor for ConnectionState);
  memcpy(v55, v17, sizeof(v55));
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1B0BE278C(v55);
    goto LABEL_29;
  }

  memcpy(v54, v27, sizeof(v54));
  if ((sub_1B0BE5360(*v55, *v54) & 1) == 0)
  {
    goto LABEL_32;
  }

  v60[8] = *&v55[136];
  v60[9] = *&v55[152];
  v60[10] = *&v55[168];
  v60[4] = *&v55[72];
  v60[5] = *&v55[88];
  v60[7] = *&v55[120];
  v60[6] = *&v55[104];
  v60[0] = *&v55[8];
  v60[1] = *&v55[24];
  v60[3] = *&v55[56];
  v60[2] = *&v55[40];
  v61[8] = *&v54[136];
  v61[9] = *&v54[152];
  v61[10] = *&v54[168];
  v61[4] = *&v54[72];
  v61[5] = *&v54[88];
  v61[7] = *&v54[120];
  v61[6] = *&v54[104];
  v61[0] = *&v54[8];
  v61[1] = *&v54[24];
  v61[3] = *&v54[56];
  v61[2] = *&v54[40];
  if ((static ServerID.__derived_struct_equals(_:_:)(v60, v61) & 1) == 0 || (sub_1B038F0C4(*&v55[184], *&v54[184]) & 1) == 0)
  {
LABEL_32:
    sub_1B0BE278C(v54);
    sub_1B0BE278C(v55);
LABEL_45:
    sub_1B038C704(v29, type metadata accessor for ConnectionState);
    goto LABEL_30;
  }

  v56[8] = *&v55[320];
  v56[9] = *&v55[336];
  v57 = *&v55[352];
  v56[4] = *&v55[256];
  v56[5] = *&v55[272];
  v56[6] = *&v55[288];
  v56[7] = *&v55[304];
  v56[0] = *&v55[192];
  v56[1] = *&v55[208];
  v56[2] = *&v55[224];
  v56[3] = *&v55[240];
  v58[8] = *&v54[320];
  v58[9] = *&v54[336];
  v59 = *&v54[352];
  v58[4] = *&v54[256];
  v58[5] = *&v54[272];
  v58[7] = *&v54[304];
  v58[6] = *&v54[288];
  v58[0] = *&v54[192];
  v58[1] = *&v54[208];
  v58[2] = *&v54[224];
  v58[3] = *&v54[240];
  v39 = sub_1B0BF4164(v56, v58);
  sub_1B0BE278C(v54);
  sub_1B0BE278C(v55);
  if ((v39 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_25:
  sub_1B038C704(v29, type metadata accessor for ConnectionState);
  v32 = 1;
  return v32 & 1;
}

uint64_t sub_1B0423148()
{
  v1 = sub_1B0E44238();
  v54 = *(v1 - 8);
  v55 = v1;
  v2 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v52 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1B0E44288();
  v51 = *(v53 - 8);
  v4 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v50 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = _s6LoggerVMa_0();
  v48 = *(v46 - 8);
  v6 = *(v48 + 64);
  v7 = MEMORY[0x1EEE9AC00](v46);
  v49 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v46 - v8;
  v10 = sub_1B0E43DF8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v46 - v16;
  v56 = v0;
  v18 = *(v0 + OBJC_IVAR____TtC15IMAP2Connection10Connection_connection);
  sub_1B0E43E18();
  (*(v11 + 104))(v15, *MEMORY[0x1E6977C08], v10);
  v19 = MEMORY[0x1B2725F00](v17, v15);
  v20 = *(v11 + 8);
  v20(v15, v10);
  result = (v20)(v17, v10);
  if (v19)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5520, &qword_1B0ED0CE8);
    v22 = swift_allocBox();
    (*(v11 + 56))(v23, 1, 1, v10);
    v24 = swift_allocObject();
    v25 = v56;
    swift_weakInit();
    v26 = v25 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger;
    v47 = _s6LoggerVMa_0;
    sub_1B03FD208(v25 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger, v9, _s6LoggerVMa_0);
    v27 = (*(v48 + 80) + 16) & ~*(v48 + 80);
    v28 = (v6 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = swift_allocObject();
    sub_1B0423D50(v9, v29 + v27, _s6LoggerVMa_0);
    *(v29 + v28) = v24;
    *(v29 + ((v28 + 15) & 0xFFFFFFFFFFFFFFF8)) = v22;

    sub_1B0423B38(sub_1B044EF48);
    sub_1B0E43D68();

    swift_allocObject();
    swift_weakInit();

    sub_1B0423B38(sub_1B042581C);
    sub_1B0E43CF8();

    swift_allocObject();
    swift_weakInit();

    sub_1B0423B38(sub_1B0455E58);
    sub_1B0E43D78();

    swift_allocObject();
    swift_weakInit();

    sub_1B0423B38(sub_1B0BEFC74);
    sub_1B0E43D88();

    v30 = v49;
    sub_1B03FD208(v26, v49, v47);

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v31 = sub_1B0E43988();
    v32 = sub_1B0E439A8();
    (*(*(v32 - 8) + 8))(v30, v32);
    v33 = sub_1B0E45908();
    if (os_log_type_enabled(v31, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      aBlock[0] = v35;
      *v34 = 68158210;
      *(v34 + 4) = 2;
      *(v34 + 8) = 256;
      v36 = v26 + *(v46 + 20);
      *(v34 + 10) = *v36;

      *(v34 + 11) = 2082;
      v37 = ConnectionID.debugDescription.getter(*(v36 + 4));
      v39 = sub_1B0399D64(v37, v38, aBlock);

      *(v34 + 13) = v39;
      _os_log_impl(&dword_1B0389000, v31, v33, "[%.*hhx-%{public}s] Starting", v34, 0x15u);
      __swift_destroy_boxed_opaque_existential_0Tm(v35);
      MEMORY[0x1B272C230](v35, -1, -1);
      MEMORY[0x1B272C230](v34, -1, -1);
    }

    else
    {
    }

    v40 = *(v56 + OBJC_IVAR____TtC15IMAP2Connection10Connection_queue);
    sub_1B0E43E08();
    v41 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1B042578C;
    aBlock[5] = v41;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B038C908;
    aBlock[3] = &block_descriptor_26;
    v42 = _Block_copy(aBlock);

    v43 = v50;
    sub_1B0E44258();
    v57 = MEMORY[0x1E69E7CC0];
    sub_1B0422494(&qword_1EB6DEE50, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1880, &unk_1B0E99EA0);
    sub_1B039E3F8(&qword_1EB6DEE20, &qword_1EB6E1880, &unk_1B0E99EA0);
    v44 = v52;
    v45 = v55;
    sub_1B0E460A8();
    MEMORY[0x1B2727B00](0, v43, v44, v42);
    _Block_release(v42);
    (*(v54 + 8))(v44, v45);
    (*(v51 + 8))(v43, v53);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0423A08()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1B0423A40()
{
  v1 = *(_s6LoggerVMa_0() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = sub_1B0E439A8();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  v5 = *(v0 + v3);

  v6 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_1B0423B38(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B0423B48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0423BB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0423C18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0423C80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0423CE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0423D50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0423DB8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_1B0E44118();
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = result - v7;
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_1B0E46138();
    v15 = result - v7;
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_1B0E46138();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = result + v11;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;

    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

Swift::Void __swiftcall StateWithTasks.logForDidCreateFirstConnection()()
{
  v1 = 0;
  v164 = type metadata accessor for StateWithTasks();
  v2 = *(*(v164 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v164);
  v160 = &v145 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v174 = &v145 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v145 - v7;
  v161 = type metadata accessor for State.Logger();
  v9 = *(*(v161 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v161);
  v159 = &v145 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v145 - v12;
  v165 = v0;
  v14 = *(v0 + 64);
  *&v179 = MEMORY[0x1E69E7CD0];
  v15 = 1 << *(v14 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v14 + 64);
  v18 = (v15 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v163 = 0;
  if (v17)
  {
    while (1)
    {
      v19 = v1;
LABEL_9:
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      sub_1B03FFC1C(&v177, *(*(v14 + 56) + ((v19 << 11) | (32 * v20))));
      if (!v17)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v19 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
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
      return;
    }

    if (v19 >= v18)
    {
      break;
    }

    v17 = *(v14 + 64 + 8 * v19);
    ++v1;
    if (v17)
    {
      v1 = v19;
      goto LABEL_9;
    }
  }

  v21 = v179;
  v22 = v164;
  v23 = v165;
  v162 = *(v164 + 28);
  sub_1B0390720(v165 + v162, v13, type metadata accessor for State.Logger);
  sub_1B0390720(v23, v8, type metadata accessor for StateWithTasks);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v24 = v174;
  sub_1B0390720(v23, v174, type metadata accessor for StateWithTasks);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v25 = sub_1B0E43988();
  v26 = sub_1B0E439A8();
  v27 = *(v26 - 8);
  v157 = *(v27 + 8);
  v158 = v26;
  v156 = v27 + 8;
  v157(v13);
  v28 = sub_1B0E45908();

  v173 = v25;
  if (os_log_type_enabled(v25, v28))
  {
    v29 = swift_slowAlloc();
    LODWORD(v171) = v28;
    v30 = v29;
    v172 = swift_slowAlloc();
    *&v179 = v172;
    *v30 = 68158978;
    *(v30 + 4) = 2;
    *(v30 + 8) = 256;
    v31 = v8[*(v22 + 28) + *(v161 + 20)];
    v170 = type metadata accessor for StateWithTasks;
    sub_1B0390574(v8, type metadata accessor for StateWithTasks);
    *(v30 + 10) = v31;
    *(v30 + 11) = 2048;
    *(v30 + 13) = *(v14 + 16);

    *(v30 + 21) = 2082;
    v32 = v163;
    v33 = sub_1B0424F24(v14);
    v169 = v32;
    v177 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
    sub_1B039E3F8(&qword_1EB6DB070, &qword_1EB6E2A70, &qword_1B0E9B5F0);
    v34 = sub_1B0E448E8();
    v36 = v35;

    v37 = sub_1B0399D64(v34, v36, &v179);

    *(v30 + 23) = v37;
    *(v30 + 31) = 2082;
    v38 = v169;
    v39 = sub_1B04252E0(v21);
    v163 = v38;

    v177 = v39;
    v23 = v165;
    v40 = sub_1B0E448E8();
    v42 = v41;

    v43 = sub_1B0399D64(v40, v42, &v179);

    *(v30 + 33) = v43;
    *(v30 + 41) = 2082;
    if (*(v174 + 25))
    {
      v44 = 0x756F72676B636162;
    }

    else
    {
      v44 = 0x656C6269736976;
    }

    if (*(v174 + 25))
    {
      v45 = 0xEC0000006465646ELL;
    }

    else
    {
      v45 = 0xE700000000000000;
    }

    sub_1B0390574(v174, v170);
    v46 = sub_1B0399D64(v44, v45, &v179);

    *(v30 + 43) = v46;
    v47 = v173;
    _os_log_impl(&dword_1B0389000, v173, v171, "[%.*hhx] [1st connection] Running sync requests %ld: {%{public}s}, kinds: %{public}s; App state: %{public}s", v30, 0x33u);
    v48 = v172;
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v48, -1, -1);
    MEMORY[0x1B272C230](v30, -1, -1);
  }

  else
  {
    sub_1B0390574(v8, type metadata accessor for StateWithTasks);

    swift_bridgeObjectRelease_n();
    sub_1B0390574(v24, type metadata accessor for StateWithTasks);
  }

  if (*(v23 + 192) == 1)
  {
    v49 = *(v23 + 168);
    v50 = sub_1B0398D1C();
    v53 = sub_1B0BC9560(v50, v52, v51 & 1);
    v55 = v54;
    v57 = v56;
    v58 = *(v23 + *(v164 + 32));
    *(v191 + 12) = *(v23 + 228);
    v59 = *(v23 + 216);
    v190[2] = *(v23 + 200);
    v191[0] = v59;
    v60 = *(v23 + 184);
    v190[0] = *(v23 + 168);
    v190[1] = v60;
    sub_1B03A3668(v190, &v179);
    v167 = v57;
    sub_1B0BCC328(v53, v55, v57, v23 + v162, v58, v190);
    sub_1B03AD10C(v190);
    v62 = v55;
    v173 = *(v49 + 16);
    v174 = v49;
    if (v173)
    {
      v168 = 0;
      v63 = 0;
      v172 = v174 + 32;
      v64 = (v55 + 32);
      v166 = v167 + 32;
      *&v61 = 68160515;
      v149 = v61;
      v170 = (v55 + 32);
      v171 = v55;
      while (1)
      {
        if (v63 >= *(v174 + 16))
        {
          goto LABEL_117;
        }

        v65 = (v172 + 176 * v63);
        v66 = *v65;
        v67 = v65[2];
        v180 = v65[1];
        v181 = v67;
        v179 = v66;
        v68 = v65[3];
        v69 = v65[4];
        v70 = v65[6];
        v184 = v65[5];
        v185 = v70;
        v182 = v68;
        v183 = v69;
        v71 = v65[7];
        v72 = v65[8];
        v73 = v65[10];
        v188 = v65[9];
        v189 = v73;
        v186 = v71;
        v187 = v72;
        v74 = v180;
        v75 = DWORD2(v180);
        v76 = DWORD1(v184);
        v77 = BYTE8(v184);
        v63 = (v63 + 1);
        v78 = *(v62 + 16);
        if (v53)
        {
          sub_1B0BA7CA4(v180, DWORD2(v180), v64, v78, (v53 + 16));
          if ((v79 & 1) == 0)
          {
            LODWORD(v169) = v76;
            v80 = 0;
            v78 = *(v62 + 16);
            goto LABEL_57;
          }
        }

        else if (v78)
        {
          for (i = 0; i != v78; ++i)
          {
            v82 = (v64 + 16 * i);
            if ((v82[2] | (v82[2] << 32)) == (DWORD2(v180) | (DWORD2(v180) << 32)))
            {
              v83 = *v82;
              v84 = *(*v82 + 16);
              if (v84 == *(v180 + 16))
              {
                if (!v84 || v83 == v180)
                {
LABEL_40:
                  LODWORD(v169) = DWORD1(v184);
                  v80 = 0;
                  goto LABEL_41;
                }

                v85 = (v83 + 32);
                v86 = (v180 + 32);
                while (*v85 == *v86)
                {
                  ++v85;
                  ++v86;
                  if (!--v84)
                  {
                    goto LABEL_40;
                  }
                }
              }
            }
          }
        }

        if (v168 > 7)
        {
          goto LABEL_25;
        }

        LODWORD(v169) = v76;
        v78 = *(v62 + 16);
        v80 = 1;
        if (!v53)
        {
LABEL_41:
          if (!v78)
          {
            goto LABEL_58;
          }

          v87 = 0;
          while (1)
          {
            v88 = (v64 + 16 * v87);
            if ((v88[2] | (v88[2] << 32)) == (v75 | (v75 << 32)))
            {
              v89 = *v88;
              v90 = *(*v88 + 16);
              if (v90 == *(v74 + 16))
              {
                break;
              }
            }

LABEL_43:
            if (++v87 == v78)
            {
              goto LABEL_58;
            }
          }

          if (v90)
          {
            v91 = v89 == v74;
          }

          else
          {
            v91 = 1;
          }

          if (!v91)
          {
            v92 = (v89 + 32);
            v93 = (v74 + 32);
            while (v90)
            {
              if (*v92 != *v93)
              {
                goto LABEL_43;
              }

              ++v92;
              ++v93;
              if (!--v90)
              {
                goto LABEL_60;
              }
            }

            goto LABEL_116;
          }

          goto LABEL_60;
        }

LABEL_57:
        v94 = sub_1B0BA7CA4(v74, v75, v64, v78, (v53 + 16));
        if (v95)
        {
LABEL_58:
          sub_1B03A35B8(&v179, &v177);
          v96 = 63740;
          goto LABEL_62;
        }

        v87 = v94;

        if ((v87 & 0x8000000000000000) != 0)
        {
          goto LABEL_118;
        }

LABEL_60:
        if (v87 >= *(v167 + 16))
        {
          goto LABEL_119;
        }

        v96 = *(v166 + 2 * v87);
        sub_1B03A35B8(&v179, &v177);

LABEL_62:
        v97 = BYTE12(v185);
        v98 = *(*(&v187 + 1) + 16);
        v99 = *(v188 + 16) != 0;
        v100 = *(*(&v188 + 1) + 16) != 0;
        if (v77)
        {
          if (v98 == 0 && *(v188 + 16) == 0 && *(*(&v188 + 1) + 16) == 0)
          {
            if ((v80 & 1) == 0)
            {
              LODWORD(v169) = v80;
              v101 = __OFADD__(v168++, 1);
              if (v101)
              {
                goto LABEL_121;
              }

              v99 = 0;
              v100 = 0;
              v154 = 0;
LABEL_78:
              v150 = v96;
              v151 = *(&v187 + 1);
              v152 = v97;
              v153 = v187;
              v147 = DWORD2(v185);
              v148 = *(&v186 + 1);
              v104 = 0;
              v103 = 0xE000000000000000;
              goto LABEL_79;
            }

            goto LABEL_24;
          }

          goto LABEL_74;
        }

        if (BYTE12(v185))
        {
          if (v98 == 0 && *(v188 + 16) == 0 && *(*(&v188 + 1) + 16) == 0)
          {
            if (!v80)
            {
              LODWORD(v169) = 0;
              v101 = __OFADD__(v168++, 1);
              if (v101)
              {
                goto LABEL_122;
              }

              v99 = 0;
              v100 = 0;
              v97 = 1;
              v154 = 1;
              goto LABEL_78;
            }

            goto LABEL_24;
          }

          v97 = 1;
LABEL_74:
          v102 = v77 ^ 1;
LABEL_75:
          v101 = __OFADD__(v168++, 1);
          if (v101)
          {
            goto LABEL_120;
          }

          LODWORD(v169) = v80;
          v154 = v102;
          if (!v98)
          {
            goto LABEL_78;
          }

          v150 = v96;
          v151 = *(&v187 + 1);
          v152 = v97;
          v153 = v187;
          v147 = DWORD2(v185);
          v148 = *(&v186 + 1);
          v103 = 0xE100000000000000;
          v104 = 82;
LABEL_79:
          v105 = !v99;
          v106 = 68;
          if (v105)
          {
            v106 = 0;
          }

          v155 = v106;
          if (v105)
          {
            v107 = 0xE000000000000000;
          }

          else
          {
            v107 = 0xE100000000000000;
          }

          v177 = v104;
          v178 = v103;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          MEMORY[0x1B2726E80](v155, v107);

          v108 = 83;
          if (!v100)
          {
            v108 = 0;
          }

          v155 = v108;
          if (v100)
          {
            v109 = 0xE100000000000000;
          }

          else
          {
            v109 = 0xE000000000000000;
          }

          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          MEMORY[0x1B2726E80](v155, v109);

          v110 = 76;
          if (v154)
          {
            v110 = 0;
          }

          v155 = v110;
          if (v154)
          {
            v111 = 0xE000000000000000;
          }

          else
          {
            v111 = 0xE100000000000000;
          }

          v112 = 0xE100000000000000;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          MEMORY[0x1B2726E80](v155, v111);

          if (v169)
          {
            v113 = 0;
          }

          else
          {
            v113 = 42;
          }

          if (v169)
          {
            v112 = 0xE000000000000000;
          }

          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          MEMORY[0x1B2726E80](v113, v112);

          v114 = v178;
          v169 = v177;
          v115 = v165;
          v116 = v159;
          sub_1B0390720(v165 + v162, v159, type metadata accessor for State.Logger);
          v117 = v160;
          sub_1B0390720(v115, v160, type metadata accessor for StateWithTasks);
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B03A35B8(&v179, &v177);
          sub_1B03A35B8(&v179, &v177);
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B03A35B8(&v179, &v177);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v118 = sub_1B0E43988();
          (v157)(v116, v158);
          v119 = sub_1B0E45908();

          sub_1B03A3614(&v179);
          sub_1B03A3614(&v179);
          if (os_log_type_enabled(v118, v119))
          {
            v154 = v119;
            v155 = v118;
            v120 = swift_slowAlloc();
            v121 = swift_slowAlloc();
            v145 = v114;
            v146 = v121;
            v176 = v121;
            *v120 = v149;
            *(v120 + 4) = 2;
            *(v120 + 8) = 256;
            v122 = *(v117 + *(v164 + 28) + *(v161 + 20));
            sub_1B0390574(v117, type metadata accessor for StateWithTasks);
            *(v120 + 10) = v122;
            *(v120 + 11) = 2048;
            *(v120 + 13) = v168;
            *(v120 + 21) = 1040;
            *(v120 + 23) = 2;
            *(v120 + 27) = 512;
            *(v120 + 29) = WORD6(v189);
            sub_1B03A3614(&v179);
            *(v120 + 31) = 2160;
            *(v120 + 33) = 0x786F626C69616DLL;
            *(v120 + 41) = 2085;
            v177 = v74;
            LODWORD(v178) = v75;
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v123 = sub_1B0E44BA8();
            v125 = sub_1B0399D64(v123, v124, &v176);

            *(v120 + 43) = v125;
            *(v120 + 51) = 2082;
            v126 = sub_1B0399D64(v169, v145, &v176);

            *(v120 + 53) = v126;
            *(v120 + 61) = 2082;
            if ((~v150 & 0xF8FC) != 0)
            {
              v128 = sub_1B0425504(v150);
              v127 = v129;
            }

            else
            {
              v127 = 0xE100000000000000;
              v128 = 47;
            }

            v130 = sub_1B0399D64(v128, v127, &v176);

            *(v120 + 63) = v130;
            *(v120 + 71) = 2082;
            v131 = v163;
            v132 = sub_1B0BA7198(v151);
            v163 = v131;
            v177 = v132;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
            sub_1B039E3F8(&qword_1EB6DB070, &qword_1EB6E2A70, &qword_1B0E9B5F0);
            v133 = 0xE100000000000000;
            v134 = sub_1B0E448E8();
            v136 = v135;

            v137 = sub_1B0399D64(v134, v136, &v176);

            *(v120 + 73) = v137;
            *(v120 + 81) = 2082;
            if (v152)
            {
              v138 = 47;
            }

            else
            {
              v177 = 0;
              v178 = 0xE000000000000000;
              v175 = v147;
              sub_1B0E46508();
              v138 = v177;
              v133 = v178;
            }

            v139 = sub_1B0399D64(v138, v133, &v176);

            *(v120 + 83) = v139;
            *(v120 + 91) = 2082;
            if (v153)
            {
              v140 = 0xE100000000000000;
              v141 = 47;
            }

            else
            {
              v177 = v148;
              v141 = sub_1B0E469C8();
              v140 = v142;
            }

            v143 = sub_1B0399D64(v141, v140, &v176);

            *(v120 + 93) = v143;
            v118 = v155;
            _os_log_impl(&dword_1B0389000, v155, v154, "[%.*hhx] {%ld} [1st connection] Mailbox: {%.*hx} '%{sensitive,mask.mailbox}s' %{public}s, %{public}s, {%{public}s} last sync:  {local: %{public}s, remote: %{public}s}", v120, 0x65u);
            v144 = v146;
            swift_arrayDestroy();
            MEMORY[0x1B272C230](v144, -1, -1);
            MEMORY[0x1B272C230](v120, -1, -1);
          }

          else
          {
            sub_1B0390574(v117, type metadata accessor for StateWithTasks);
            sub_1B03A3614(&v179);
          }

          sub_1B03A3614(&v179);
          v64 = v170;
          v62 = v171;
          if (v63 == v173)
          {
            break;
          }
        }

        else
        {
          if (v98 != 0 || *(v188 + 16) != 0 || *(*(&v188 + 1) + 16) != 0 || (v80 & 1) == 0)
          {
            v97 = 0;
            v102 = DWORD2(v185) < v169;
            goto LABEL_75;
          }

LABEL_24:
          sub_1B03A3614(&v179);
          v64 = v170;
          v62 = v171;
LABEL_25:
          if (v63 == v173)
          {
            break;
          }
        }
      }
    }
  }
}

uint64_t sub_1B0424F24(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v32 = MEMORY[0x1E69E7CC0];
    sub_1B041D32C(0, v2, 0);
    v4 = v32;
    v5 = v1 + 64;
    v6 = -1 << *(v1 + 32);
    result = sub_1B0E460B8();
    v7 = result;
    v8 = 0;
    v26 = v1 + 72;
    v27 = v2;
    v28 = v1 + 64;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v1 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v5 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_22;
      }

      v29 = v8;
      v30 = *(v1 + 36);
      v31 = *(*(v1 + 48) + 4 * v7);
      result = sub_1B0E469C8();
      v11 = result;
      v13 = v12;
      v14 = v4;
      v33 = v4;
      v15 = v1;
      v17 = *(v14 + 16);
      v16 = *(v14 + 24);
      if (v17 >= v16 >> 1)
      {
        result = sub_1B041D32C((v16 > 1), v17 + 1, 1);
        v14 = v33;
      }

      *(v14 + 16) = v17 + 1;
      v18 = v14 + 16 * v17;
      *(v18 + 32) = v11;
      *(v18 + 40) = v13;
      v9 = 1 << *(v15 + 32);
      if (v7 >= v9)
      {
        goto LABEL_23;
      }

      v5 = v28;
      v19 = *(v28 + 8 * v10);
      if ((v19 & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      v1 = v15;
      v4 = v14;
      if (v30 != *(v1 + 36))
      {
        goto LABEL_25;
      }

      v20 = v19 & (-2 << (v7 & 0x3F));
      if (v20)
      {
        v9 = __clz(__rbit64(v20)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v10 << 6;
        v22 = v10 + 1;
        v23 = (v26 + 8 * v10);
        while (v22 < (v9 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_1B0425168(v7, v30, 0);
            v9 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        result = sub_1B0425168(v7, v30, 0);
      }

LABEL_4:
      v8 = v29 + 1;
      v7 = v9;
      if (v29 + 1 == v27)
      {
        return v4;
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
  }

  return result;
}

uint64_t sub_1B0425168(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

char *sub_1B0425174(char *result, uint64_t a2, char a3, uint64_t a4)
{
  v7 = result;
  v9 = *(a4 + 24) >> 1;
  if (a3)
  {
    if (v9 < a2)
    {
      if ((v9 * 2) >> 64 != (2 * v9) >> 63)
      {
        __break(1u);
        return result;
      }

      if (2 * v9 < a2)
      {
        v6 = a2;
      }

      else
      {
        v6 = 2 * v9;
      }
    }

    else
    {
      v6 = *(a4 + 24) >> 1;
    }
  }

  else
  {
    v6 = a2;
  }

  v4 = *(a4 + 16);
  v5 = sub_1B03B7A3C(v4, v6);
  if (v7)
  {
    sub_1B06BCC28((a4 + 32), v4, v5 + 32);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    *(a4 + 16) = 0;
  }

  else
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    sub_1B03B0648((a4 + 32), v4, v5 + 32);
    swift_unknownObjectRelease();
  }

  return v5;
}

uint64_t sub_1B04252E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v27 = MEMORY[0x1E69E7CC0];
  sub_1B041D32C(0, v1, 0);
  v2 = v27;
  v4 = -1 << *(a1 + 32);
  v26 = a1 + 56;
  result = sub_1B0E460B8();
  v6 = result;
  v7 = 0;
  v25 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v26 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(a1 + 36);
    result = SyncRequest.Kind.description.getter(*(*(a1 + 48) + v6));
    v14 = *(v27 + 16);
    v13 = *(v27 + 24);
    if (v14 >= v13 >> 1)
    {
      v23 = v12;
      v24 = result;
      sub_1B041D32C((v13 > 1), v14 + 1, 1);
      v12 = v23;
      result = v24;
    }

    *(v27 + 16) = v14 + 1;
    v15 = v27 + 16 * v14;
    *(v15 + 32) = result;
    *(v15 + 40) = v12;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v16 = *(v26 + 8 * v10);
    if ((v16 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v11 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (v6 & 0x3F));
    if (v17)
    {
      v8 = __clz(__rbit64(v17)) | v6 & 0x7FFFFFFFFFFFFFC0;
      v9 = v25;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v9 = v25;
      v20 = (a1 + 64 + 8 * v10);
      while (v19 < (v8 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          result = sub_1B0425168(v6, v11, 0);
          v8 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      result = sub_1B0425168(v6, v11, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v9)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1B0425504(unsigned __int16 a1)
{
  if ((a1 >> 14) <= 1u)
  {
    if (!(a1 >> 14))
    {
      sub_1B0E46298();
      MEMORY[0x1B2726E80](0xD000000000000016, 0x80000001B0F2C2F0);
      sub_1B0E46508();
      MEMORY[0x1B2726E80](8236, 0xE200000000000000);
      v1 = sub_1B0E44BA8();
      MEMORY[0x1B2726E80](v1);

LABEL_8:
      MEMORY[0x1B2726E80](41, 0xE100000000000000);
      return 0;
    }

    sub_1B0E46298();
    v3 = 0x80000001B0F2C2D0;
    v2 = 0xD000000000000014;
LABEL_7:
    MEMORY[0x1B2726E80](v2, v3);
    sub_1B0E46508();
    goto LABEL_8;
  }

  if (a1 >> 14 == 2)
  {
    v2 = 0x6154657669746361;
    v3 = 0xEB00000000286B73;
    goto LABEL_7;
  }

  v5 = 0x6973695672657375;
  v6 = 0x6E7953736465656ELL;
  if (a1 != 49154)
  {
    v6 = 0x797469726F697270;
  }

  if (a1 != 49152)
  {
    v5 = 0x7953657669746361;
  }

  if (a1 <= 0xC001u)
  {
    return v5;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_1B04257B8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + OBJC_IVAR____TtC15IMAP2Connection10Connection_lastMessageTime) = static MonotonicTime.now()();
  }

  return result;
}

uint64_t sub_1B042584C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3(a1);
  }

  return result;
}

uint64_t sub_1B04258C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5810, &unk_1B0ED8630);
  v1 = v0 - 8;
  v2 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v19 - v3;
  v5 = sub_1B0E44158();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B0E44188();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0E44198();
  sub_1B0E44168();
  v15 = *(v1 + 56);
  (*(v11 + 32))(v4, v14, v10);
  (*(v6 + 32))(&v4[v15], v9, v5);
  v16 = (*(v11 + 88))(v4, v10);
  if (v16 == *MEMORY[0x1E6977D40])
  {
    (*(v6 + 8))(&v4[v15], v5);
    return 0x6569667369746173;
  }

  else if (v16 == *MEMORY[0x1E6977D30])
  {
    v18 = (*(v6 + 88))(&v4[v15], v5);
    if (v18 == *MEMORY[0x1E6977D10])
    {
      return 0x6C69617641746F6ELL;
    }

    else if (v18 == *MEMORY[0x1E6977D18])
    {
      return 0x72616C756C6C6563;
    }

    else if (v18 == *MEMORY[0x1E6977D00])
    {
      return 0x696E654469666977;
    }

    else if (v18 == *MEMORY[0x1E6977CF8])
    {
      return 0xD000000000000012;
    }

    else if (v18 == *MEMORY[0x1E6977D08])
    {
      return 0x7463616E496E7076;
    }

    else
    {
      (*(v6 + 8))(&v4[v15], v5);
      return 0x6673697461736E75;
    }
  }

  else if (v16 == *MEMORY[0x1E6977D38])
  {
    (*(v6 + 8))(&v4[v15], v5);
    return 0xD000000000000012;
  }

  else
  {
    sub_1B0398EFC(v4, &qword_1EB6E5810, &unk_1B0ED8630);
    return 63;
  }
}

uint64_t sub_1B0425CC8()
{
  v0 = sub_1B0E43BD8();
  v45 = *(v0 - 8);
  v1 = *(v45 + 64);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v44 - v6;
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v44 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v44 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5808, &qword_1B0ED8628);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v44 - v15;
  v17 = sub_1B0E43C38();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0E43C48();
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_1B0398EFC(v16, &qword_1EB6E5808, &qword_1B0ED8628);
    sub_1B0E43BF8();
    v22 = v45;
    (*(v45 + 16))(v4, v7, v0);
    v23 = (*(v22 + 88))(v4, v0);
    v24 = v0;
    if (v23 == *MEMORY[0x1E6977B48])
    {
      v25 = 0x726568746FLL;
      (*(v22 + 8))(v7, v0);
    }

    else if (v23 == *MEMORY[0x1E6977B40])
    {
      v25 = 1768319351;
      (*(v22 + 8))(v7, v0);
    }

    else if (v23 == *MEMORY[0x1E6977B50])
    {
      v25 = 0x72616C756C6C6563;
      (*(v22 + 8))(v7, v0);
    }

    else if (v23 == *MEMORY[0x1E6977B38])
    {
      v25 = 0x6874456465726977;
      (*(v22 + 8))(v7, v0);
    }

    else
    {
      v33 = *MEMORY[0x1E6977B58];
      v34 = *(v22 + 8);
      v35 = v23;
      v36 = v24;
      v34(v7);
      if (v35 == v33)
      {
        return 0x6B636162706F6F6CLL;
      }

      else
      {
        v25 = 0x6E776F6E6B6E75;
        (v34)(v4, v36);
      }
    }
  }

  else
  {
    (*(v18 + 32))(v21, v16, v17);
    v46 = 0;
    v47 = 0xE000000000000000;
    sub_1B0E43BF8();
    v26 = v45;
    (*(v45 + 16))(v10, v12, v0);
    v27 = (*(v26 + 88))(v10, v0);
    v28 = v0;
    v29 = v12;
    if (v27 == *MEMORY[0x1E6977B48])
    {
      v30 = v18;
      v31 = 0x726568746FLL;
      (*(v26 + 8))(v29, v28);
      v32 = 0xE500000000000000;
    }

    else if (v27 == *MEMORY[0x1E6977B40])
    {
      v30 = v18;
      v31 = 1768319351;
      (*(v26 + 8))(v29, v28);
      v32 = 0xE400000000000000;
    }

    else
    {
      v30 = v18;
      if (v27 == *MEMORY[0x1E6977B50])
      {
        v31 = 0x72616C756C6C6563;
        (*(v26 + 8))(v29, v28);
        v32 = 0xE800000000000000;
      }

      else if (v27 == *MEMORY[0x1E6977B38])
      {
        v31 = 0x6874456465726977;
        (*(v26 + 8))(v29, v28);
        v32 = 0xED000074656E7265;
      }

      else
      {
        v37 = v28;
        v38 = v21;
        v39 = *MEMORY[0x1E6977B58];
        v40 = *(v26 + 8);
        v41 = v27;
        v40(v29);
        if (v41 == v39)
        {
          v31 = 0x6B636162706F6F6CLL;
          v32 = 0xE800000000000000;
        }

        else
        {
          v31 = 0x6E776F6E6B6E75;
          (v40)(v10, v37);
          v32 = 0xE700000000000000;
        }

        v21 = v38;
      }
    }

    MEMORY[0x1B2726E80](v31, v32);

    MEMORY[0x1B2726E80](45, 0xE100000000000000);
    v42 = sub_1B0C1A4FC();
    MEMORY[0x1B2726E80](v42);

    v25 = v46;
    (*(v30 + 8))(v21, v17);
  }

  return v25;
}

void sub_1B0426318(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1B0E44468();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + 24);
  *v8 = v9;
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4);
  v10 = v9;
  LOBYTE(v9) = sub_1B0E44488();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    v11 = static MonotonicTime.now()();
    swift_beginAccess();
    sub_1B044540C(v11, a1);
    swift_endAccess();
    v12 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_enqueuedEvents;
    swift_beginAccess();
    if (*(v2 + v12))
    {
      v13 = *(a1 + 16);
      if (v13)
      {
        v14 = *(type metadata accessor for ConnectionEvent(0) - 8);
        v15 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
        v16 = *(v14 + 72);
        do
        {
          sub_1B0426594(v15);
          v15 += v16;
          --v13;
        }

        while (v13);
      }
    }

    else
    {
      *(v2 + v12) = MEMORY[0x1E69E7CC0];
      v17 = *(a1 + 16);
      if (v17)
      {
        v18 = *(type metadata accessor for ConnectionEvent(0) - 8);
        v19 = a1 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
        v20 = *(v18 + 72);
        do
        {
          sub_1B0426594(v19);
          v19 += v20;
          --v17;
        }

        while (v17);
      }

      sub_1B044DBD8();
    }
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1B0426594(uint64_t a1)
{
  v430 = a1;
  v414 = type metadata accessor for ConnectionConfiguration(0);
  v1 = *(*(v414 - 8) + 64);
  MEMORY[0x1EEE9AC00](v414);
  v422 = (&v397 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v429 = type metadata accessor for UntaggedResponse(0);
  v3 = *(*(v429 - 8) + 64);
  MEMORY[0x1EEE9AC00](v429);
  v428 = &v397 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v416 = type metadata accessor for ConnectionState();
  v5 = *(*(v416 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v416);
  v421 = (&v397 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x1EEE9AC00](v6);
  v423 = &v397 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v425 = &v397 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v418 = &v397 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v417 = &v397 - v14;
  v409 = sub_1B0E441D8();
  v410 = *(v409 - 8);
  v15 = *(v410 + 64);
  v16 = MEMORY[0x1EEE9AC00](v409);
  v398 = &v397 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v399 = &v397 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v402 = &v397 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v408 = &v397 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v411 = &v397 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v404 = &v397 - v26;
  v424 = _s6LoggerVMa_0();
  v27 = *(*(v424 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v424);
  v415 = &v397 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v413 = &v397 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v420 = &v397 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v419 = &v397 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v407 = &v397 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v412 = &v397 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v406 = &v397 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v405 = &v397 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v427 = (&v397 - v45);
  v46 = MEMORY[0x1EEE9AC00](v44);
  v397 = &v397 - v47;
  v48 = MEMORY[0x1EEE9AC00](v46);
  v400 = &v397 - v49;
  v50 = MEMORY[0x1EEE9AC00](v48);
  v403 = &v397 - v51;
  v52 = MEMORY[0x1EEE9AC00](v50);
  v401 = &v397 - v53;
  v54 = MEMORY[0x1EEE9AC00](v52);
  v56 = &v397 - v55;
  v57 = MEMORY[0x1EEE9AC00](v54);
  v59 = (&v397 - v58);
  MEMORY[0x1EEE9AC00](v57);
  v61 = &v397 - v60;
  v62 = type metadata accessor for ConnectionEvent.FailureReason(0);
  v63 = *(*(v62 - 8) + 64);
  v64 = MEMORY[0x1EEE9AC00](v62);
  v66 = &v397 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v64);
  v68 = &v397 - v67;
  v69 = sub_1B0E43DF8();
  v426 = *(v69 - 8);
  v70 = *(v426 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v72 = &v397 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for ConnectionEvent(0);
  v74 = *(*(v73 - 8) + 64);
  MEMORY[0x1EEE9AC00](v73);
  v76 = &v397 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B038C9A4(v430, v76, type metadata accessor for ConnectionEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    v420 = v61;
    v421 = v59;
    v91 = v427;
    v422 = v66;
    v430 = v68;
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v92 = v426;
        (*(v426 + 32))(v72, v76, v69);
        sub_1B0BDDD9C(v72);
        return (*(v92 + 8))(v72, v69);
      }

      v121 = v430;
      sub_1B038CB4C(v76, v430, type metadata accessor for ConnectionEvent.FailureReason);
      v122 = v431;
      v123 = *(v431 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);
      v124 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_runningCommands;
      swift_beginAccess();
      v125 = *(v122 + v124);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      LODWORD(v123) = sub_1B044CC18(v123, v125);
      v428 = v126;
      v429 = v127;

      v128 = v422;
      sub_1B038C9A4(v121, v422, type metadata accessor for ConnectionEvent.FailureReason);
      v129 = swift_getEnumCaseMultiPayload();
      LODWORD(v419) = v123;
      if (v129 > 1)
      {
        if (v129 == 2)
        {
          v426 = v124;
          v171 = v122 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
          v172 = v420;
          sub_1B038C9A4(v122 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v420, _s6LoggerVMa_0);
          swift_retain_n();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          swift_retain_n();
          v173 = v428;
          swift_bridgeObjectRetain_n();
          v174 = v429;
          swift_bridgeObjectRetain_n();
          v175 = sub_1B0E43988();
          v176 = sub_1B0E439A8();
          (*(*(v176 - 8) + 8))(v172, v176);
          v177 = sub_1B0E45908();
          if (os_log_type_enabled(v175, v177))
          {
            v178 = swift_slowAlloc();
            v179 = swift_slowAlloc();
            v434 = v179;
            *v178 = 68158722;
            *(v178 + 4) = 2;
            *(v178 + 8) = 256;
            v180 = v171 + *(v424 + 20);
            *(v178 + 10) = *v180;
            *(v178 + 11) = 2082;
            v181 = ConnectionID.debugDescription.getter(*(v180 + 4));
            v183 = sub_1B0399D64(v181, v182, &v434);

            *(v178 + 13) = v183;

            *(v178 + 21) = 2048;
            v184 = *(*(v122 + 16) + OBJC_IVAR____TtC15IMAP2Connection10Connection_underlyingID);

            *(v178 + 23) = v184;

            *(v178 + 31) = 2048;
            v185 = *(v173 + 16);

            *(v178 + 33) = v185;

            _os_log_impl(&dword_1B0389000, v175, v177, "[%.*hhx-%{public}s] [C%llu] Connection did fail (%ld running command(s)): Closed", v178, 0x29u);
            __swift_destroy_boxed_opaque_existential_0Tm(v179);
            MEMORY[0x1B272C230](v179, -1, -1);
            MEMORY[0x1B272C230](v178, -1, -1);
          }

          else
          {

            swift_bridgeObjectRelease_n();
            swift_bridgeObjectRelease_n();
          }

          v322 = v417;
          v323 = v418;
          goto LABEL_71;
        }

        v264 = v122 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
        sub_1B038C9A4(v122 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v56, _s6LoggerVMa_0);
        swift_retain_n();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        swift_retain_n();
        v173 = v428;
        swift_bridgeObjectRetain_n();
        v174 = v429;
        swift_bridgeObjectRetain_n();
        v265 = sub_1B0E43988();
        v266 = sub_1B0E439A8();
        (*(*(v266 - 8) + 8))(v56, v266);
        v267 = sub_1B0E458E8();
        if (os_log_type_enabled(v265, v267))
        {
          v268 = swift_slowAlloc();
          v426 = v124;
          v269 = v268;
          v270 = swift_slowAlloc();
          v434 = v270;
          *v269 = 68158722;
          *(v269 + 4) = 2;
          *(v269 + 8) = 256;
          v271 = v264 + *(v424 + 20);
          *(v269 + 10) = *v271;
          *(v269 + 11) = 2082;
          v272 = ConnectionID.debugDescription.getter(*(v271 + 4));
          v274 = sub_1B0399D64(v272, v273, &v434);

          *(v269 + 13) = v274;

          *(v269 + 21) = 2048;
          v275 = *(*(v122 + 16) + OBJC_IVAR____TtC15IMAP2Connection10Connection_underlyingID);

          *(v269 + 23) = v275;

          *(v269 + 31) = 2048;
          v276 = *(v173 + 16);

          *(v269 + 33) = v276;

          _os_log_impl(&dword_1B0389000, v265, v267, "[%.*hhx-%{public}s] [C%llu] Connection did fail (%ld running command(s)): invalid continuation state.", v269, 0x29u);
          __swift_destroy_boxed_opaque_existential_0Tm(v270);
          MEMORY[0x1B272C230](v270, -1, -1);
          v277 = v269;
          v124 = v426;
          MEMORY[0x1B272C230](v277, -1, -1);
        }

        else
        {

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
        }

        v322 = v417;
        v323 = v418;
        v324 = v430;
LABEL_96:
        v390 = *(v122 + v124);
        *(v122 + v124) = MEMORY[0x1E69E7CC0];

        v391 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
        swift_beginAccess();
        sub_1B038C9A4(v122 + v391, v322, type metadata accessor for ConnectionState);
        sub_1B038C9A4(v322, v323, type metadata accessor for ConnectionState);
        v392 = swift_getEnumCaseMultiPayload();
        if (v392 <= 2)
        {
          sub_1B038D690(v323, type metadata accessor for ConnectionState);
LABEL_100:
          sub_1B038D690(v322, type metadata accessor for ConnectionState);
          v393 = v425;
          swift_storeEnumTagMultiPayload();
          v394 = v423;
          sub_1B038C9A4(v122 + v391, v423, type metadata accessor for ConnectionState);
          swift_beginAccess();
          sub_1B044B474(v393, v122 + v391);
          swift_endAccess();
          sub_1B042D734(v394);
          sub_1B038D690(v393, type metadata accessor for ConnectionState);
          sub_1B038D690(v394, type metadata accessor for ConnectionState);
          v395 = swift_allocObject();
          v396 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_recentErrors;
          swift_beginAccess();
          *(v395 + 16) = *(v122 + v396);
          *(v395 + 24) = v419;
          *(v395 + 32) = v173;
          *(v395 + 40) = v174;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0BDAD70(v395 | 0x1000000000000000);

          return sub_1B038D690(v324, type metadata accessor for ConnectionEvent.FailureReason);
        }

        if (v392 == 3)
        {
          sub_1B038D690(v323, type metadata accessor for ConnectionState);
        }

        else if (v392 != 4)
        {
          goto LABEL_100;
        }

        sub_1B038D690(v322, type metadata accessor for ConnectionState);
        sub_1B038D690(v324, type metadata accessor for ConnectionEvent.FailureReason);
      }

      v426 = v124;
      if (!v129)
      {
        sub_1B038D690(v128, type metadata accessor for ConnectionEvent.FailureReason);
        v130 = v122 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
        v131 = v421;
        sub_1B038C9A4(v122 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v421, _s6LoggerVMa_0);
        swift_retain_n();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        swift_retain_n();
        v132 = sub_1B0E43988();
        v133 = sub_1B0E439A8();
        (*(*(v133 - 8) + 8))(v131, v133);
        v134 = sub_1B0E458E8();
        if (os_log_type_enabled(v132, v134))
        {
          v135 = swift_slowAlloc();
          v136 = swift_slowAlloc();
          v434 = v136;
          *v135 = 68158466;
          *(v135 + 4) = 2;
          *(v135 + 8) = 256;
          v137 = v130 + *(v424 + 20);
          *(v135 + 10) = *v137;
          *(v135 + 11) = 2082;
          v138 = ConnectionID.debugDescription.getter(*(v137 + 4));
          v140 = sub_1B0399D64(v138, v139, &v434);

          *(v135 + 13) = v140;

          *(v135 + 21) = 2048;
          v141 = *(*(v122 + 16) + OBJC_IVAR____TtC15IMAP2Connection10Connection_underlyingID);

          *(v135 + 23) = v141;

          _os_log_impl(&dword_1B0389000, v132, v134, "[%.*hhx-%{public}s] [C%llu] Connection did fail to authenticate.", v135, 0x1Fu);
          __swift_destroy_boxed_opaque_existential_0Tm(v136);
          MEMORY[0x1B272C230](v136, -1, -1);
          MEMORY[0x1B272C230](v135, -1, -1);
        }

        else
        {
        }

        v322 = v417;
        v323 = v418;
        v173 = v428;
        v174 = v429;
LABEL_71:
        v124 = v426;
        v324 = v430;
        goto LABEL_96;
      }

      v241 = v410;
      v242 = *(v410 + 88);
      v243 = v409;
      v244 = v242(v128, v409);
      v245 = *MEMORY[0x1E6977D68];
      if (v244 == *MEMORY[0x1E6977D68])
      {
        v246 = *(v241 + 16);
        v247 = v241;
        v248 = v243;
        v249 = v404;
        v246(v404, v128, v248);
        (*(v247 + 96))(v249, v248);
        v250 = *v249;
        v243 = v248;
        v241 = v247;
        if (v250 == 89)
        {
          v251 = v122 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
          v252 = v401;
          sub_1B038C9A4(v122 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v401, _s6LoggerVMa_0);
          swift_retain_n();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          swift_retain_n();
          v173 = v428;
          swift_bridgeObjectRetain_n();
          v174 = v429;
          swift_bridgeObjectRetain_n();
          v253 = sub_1B0E43988();
          v254 = sub_1B0E439A8();
          (*(*(v254 - 8) + 8))(v252, v254);
          v255 = sub_1B0E45908();
          if (os_log_type_enabled(v253, v255))
          {
            v256 = swift_slowAlloc();
            v257 = swift_slowAlloc();
            v434 = v257;
            *v256 = 68158722;
            *(v256 + 4) = 2;
            *(v256 + 8) = 256;
            v258 = v251 + *(v424 + 20);
            *(v256 + 10) = *v258;
            *(v256 + 11) = 2082;
            v259 = ConnectionID.debugDescription.getter(*(v258 + 4));
            v261 = sub_1B0399D64(v259, v260, &v434);

            *(v256 + 13) = v261;

            *(v256 + 21) = 2048;
            v262 = *(*(v122 + 16) + OBJC_IVAR____TtC15IMAP2Connection10Connection_underlyingID);

            *(v256 + 23) = v262;

            *(v256 + 31) = 2048;
            v263 = *(v173 + 16);

            *(v256 + 33) = v263;

            _os_log_impl(&dword_1B0389000, v253, v255, "[%.*hhx-%{public}s] [C%llu] Connection did fail (%ld running command(s)): Operation canceled", v256, 0x29u);
            __swift_destroy_boxed_opaque_existential_0Tm(v257);
            MEMORY[0x1B272C230](v257, -1, -1);
            MEMORY[0x1B272C230](v256, -1, -1);
          }

          else
          {

            swift_bridgeObjectRelease_n();
            swift_bridgeObjectRelease_n();
          }

          v322 = v417;
          v323 = v418;
          v324 = v430;
          (*(v410 + 8))(v422, v409);
          goto LABEL_95;
        }
      }

      v282 = v411;
      (*(v241 + 32))(v411, v128, v243);
      v283 = v408;
      v422 = *(v241 + 16);
      (v422)(v408, v282, v243);
      v284 = v242(v283, v243);
      if (v284 == v245)
      {
        (*(v241 + 96))(v283, v243);
        LODWORD(v427) = *v283;
        v122 = v431;
        v285 = v431 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
        v286 = v403;
        sub_1B038C9A4(v431 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v403, _s6LoggerVMa_0);
        swift_retain_n();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        swift_retain_n();
        v287 = v428;
        swift_bridgeObjectRetain_n();
        v288 = v241;
        v174 = v429;
        swift_bridgeObjectRetain_n();
        v289 = sub_1B0E43988();
        v290 = sub_1B0E439A8();
        (*(*(v290 - 8) + 8))(v286, v290);
        v291 = sub_1B0E458E8();
        if (os_log_type_enabled(v289, v291))
        {
          v292 = swift_slowAlloc();
          v293 = swift_slowAlloc();
          v434 = v293;
          *v292 = 68158978;
          *(v292 + 4) = 2;
          *(v292 + 8) = 256;
          v294 = v285 + *(v424 + 20);
          *(v292 + 10) = *v294;
          *(v292 + 11) = 2082;
          v295 = ConnectionID.debugDescription.getter(*(v294 + 4));
          v297 = sub_1B0399D64(v295, v296, &v434);

          *(v292 + 13) = v297;

          *(v292 + 21) = 2048;
          v298 = *(*(v122 + 16) + OBJC_IVAR____TtC15IMAP2Connection10Connection_underlyingID);

          *(v292 + 23) = v298;

          *(v292 + 31) = 2048;
          v299 = *(v287 + 16);

          *(v292 + 33) = v299;

          *(v292 + 41) = 1024;
          *(v292 + 43) = sub_1B0E43AF8();
          _os_log_impl(&dword_1B0389000, v289, v291, "[%.*hhx-%{public}s] [C%llu] Connection did fail (%ld running command(s)): posix %{darwin.errno}d", v292, 0x2Fu);
          __swift_destroy_boxed_opaque_existential_0Tm(v293);
          v300 = v293;
          v174 = v429;
          MEMORY[0x1B272C230](v300, -1, -1);
          MEMORY[0x1B272C230](v292, -1, -1);
        }

        else
        {

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
        }

        (*(v288 + 8))(v411, v243);
        v322 = v417;
        v323 = v418;
        goto LABEL_87;
      }

      if (v284 == *MEMORY[0x1E6977D58])
      {
        v325 = v408;
        (*(v241 + 96))(v408, v243);
        LODWORD(v427) = *v325;
        v326 = v431;
        v327 = v282;
        v328 = v431 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
        v329 = v400;
        sub_1B038C9A4(v431 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v400, _s6LoggerVMa_0);
        swift_retain_n();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v330 = v402;
        (v422)(v402, v327, v243);
        v122 = v326;
        swift_retain_n();
        v287 = v428;
        swift_bridgeObjectRetain_n();
        v331 = v429;
        swift_bridgeObjectRetain_n();
        v332 = sub_1B0E43988();
        v333 = sub_1B0E439A8();
        (*(*(v333 - 8) + 8))(v329, v333);
        v334 = sub_1B0E458E8();
        if (os_log_type_enabled(v332, v334))
        {
          v335 = swift_slowAlloc();
          v422 = swift_slowAlloc();
          v434 = v422;
          *v335 = 68159234;
          *(v335 + 4) = 2;
          *(v335 + 8) = 256;
          v336 = v328 + *(v424 + 20);
          *(v335 + 10) = *v336;
          *(v335 + 11) = 2082;
          v337 = ConnectionID.debugDescription.getter(*(v336 + 4));
          v339 = sub_1B0399D64(v337, v338, &v434);

          *(v335 + 13) = v339;

          *(v335 + 21) = 2048;
          v340 = *(*(v122 + 16) + OBJC_IVAR____TtC15IMAP2Connection10Connection_underlyingID);

          *(v335 + 23) = v340;

          *(v335 + 31) = 2048;
          v341 = *(v287 + 16);

          *(v335 + 33) = v341;

          *(v335 + 41) = 1024;
          *(v335 + 43) = v427;
          *(v335 + 47) = 2080;
          v342 = v402;
          v343 = sub_1B0E441B8();
          v345 = sub_1B0399D64(v343, v344, &v434);

          *(v335 + 49) = v345;
          v346 = *(v241 + 8);
          v346(v342, v243);
          v347 = "[%.*hhx-%{public}s] [C%llu] Connection did fail (%ld running command(s)): DNS %d, %s";
LABEL_85:
          _os_log_impl(&dword_1B0389000, v332, v334, v347, v335, 0x39u);
          v364 = v422;
          swift_arrayDestroy();
          MEMORY[0x1B272C230](v364, -1, -1);
          MEMORY[0x1B272C230](v335, -1, -1);

          v346(v411, v243);
          v322 = v417;
          v323 = v418;
          v324 = v430;
          v173 = v287;
LABEL_94:
          v174 = v429;
          goto LABEL_95;
        }
      }

      else
      {
        if (v284 != *MEMORY[0x1E6977D60])
        {
          v366 = v431;
          v367 = v431 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
          v368 = v91;
          sub_1B038C9A4(v431 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v91, _s6LoggerVMa_0);
          swift_retain_n();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          v369 = v398;
          (v422)(v398, v282, v243);
          swift_retain_n();
          v370 = v428;
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          v371 = sub_1B0E43988();
          v372 = sub_1B0E439A8();
          (*(*(v372 - 8) + 8))(v368, v372);
          v373 = sub_1B0E458E8();
          v427 = v371;
          if (os_log_type_enabled(v371, v373))
          {
            v374 = swift_slowAlloc();
            LODWORD(v420) = v373;
            v375 = v374;
            v376 = swift_slowAlloc();
            v421 = swift_slowAlloc();
            v434 = v421;
            *v375 = 68158978;
            *(v375 + 4) = 2;
            *(v375 + 8) = 256;
            v377 = v367 + *(v424 + 20);
            *(v375 + 10) = *v377;
            *(v375 + 11) = 2082;
            v378 = ConnectionID.debugDescription.getter(*(v377 + 4));
            v380 = sub_1B0399D64(v378, v379, &v434);

            *(v375 + 13) = v380;

            *(v375 + 21) = 2048;
            v381 = *(*(v366 + 16) + OBJC_IVAR____TtC15IMAP2Connection10Connection_underlyingID);

            *(v375 + 23) = v381;

            *(v375 + 31) = 2048;
            v382 = *(v370 + 16);

            *(v375 + 33) = v382;

            *(v375 + 41) = 2112;
            sub_1B0BE2B48(&qword_1EB6DB9A0, MEMORY[0x1E6977D78]);
            v383 = swift_allocError();
            (v422)(v384, v369, v243);
            v385 = sub_1B0E42CC8();

            *(v375 + 43) = v385;
            v386 = v376;
            *v376 = v385;
            v387 = *(v410 + 8);
            v387(v369, v243);
            v388 = v427;
            _os_log_impl(&dword_1B0389000, v427, v420, "[%.*hhx-%{public}s] [C%llu] Connection did fail (%ld running command(s)): %@", v375, 0x33u);
            sub_1B0398EFC(v386, &unk_1EB6E2630, &qword_1B0E97970);
            MEMORY[0x1B272C230](v386, -1, -1);
            v389 = v421;
            __swift_destroy_boxed_opaque_existential_0Tm(v421);
            MEMORY[0x1B272C230](v389, -1, -1);
            MEMORY[0x1B272C230](v375, -1, -1);
          }

          else
          {

            swift_bridgeObjectRelease_n();
            swift_bridgeObjectRelease_n();
            v387 = *(v410 + 8);
            v387(v369, v243);
          }

          v387(v411, v243);
          v122 = v366;
          v322 = v417;
          v323 = v418;
          v387(v408, v243);
          v324 = v430;
          v173 = v428;
          goto LABEL_94;
        }

        v348 = v408;
        (*(v241 + 96))(v408, v243);
        LODWORD(v427) = *v348;
        v349 = v431;
        v350 = v282;
        v351 = v431 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
        v352 = v397;
        sub_1B038C9A4(v431 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v397, _s6LoggerVMa_0);
        swift_retain_n();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v330 = v399;
        (v422)(v399, v350, v243);
        v122 = v349;
        swift_retain_n();
        v287 = v428;
        swift_bridgeObjectRetain_n();
        v331 = v429;
        swift_bridgeObjectRetain_n();
        v332 = sub_1B0E43988();
        v353 = sub_1B0E439A8();
        (*(*(v353 - 8) + 8))(v352, v353);
        v334 = sub_1B0E458E8();
        if (os_log_type_enabled(v332, v334))
        {
          v335 = swift_slowAlloc();
          v422 = swift_slowAlloc();
          v434 = v422;
          *v335 = 68159234;
          *(v335 + 4) = 2;
          *(v335 + 8) = 256;
          v354 = v351 + *(v424 + 20);
          *(v335 + 10) = *v354;
          *(v335 + 11) = 2082;
          v355 = ConnectionID.debugDescription.getter(*(v354 + 4));
          v357 = sub_1B0399D64(v355, v356, &v434);

          *(v335 + 13) = v357;

          *(v335 + 21) = 2048;
          v358 = *(*(v122 + 16) + OBJC_IVAR____TtC15IMAP2Connection10Connection_underlyingID);

          *(v335 + 23) = v358;

          *(v335 + 31) = 2048;
          v359 = *(v287 + 16);

          *(v335 + 33) = v359;

          *(v335 + 41) = 1024;
          *(v335 + 43) = v427;
          *(v335 + 47) = 2080;
          v360 = v399;
          v361 = sub_1B0E441B8();
          v363 = sub_1B0399D64(v361, v362, &v434);

          *(v335 + 49) = v363;
          v346 = *(v241 + 8);
          v346(v360, v243);
          v347 = "[%.*hhx-%{public}s] [C%llu] Connection did fail (%ld running command(s)): TLS %d, %s";
          goto LABEL_85;
        }
      }

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      v365 = *(v241 + 8);
      v365(v330, v243);

      v365(v411, v243);
      v322 = v417;
      v323 = v418;
      v174 = v331;
LABEL_87:
      v324 = v430;
      v173 = v287;
LABEL_95:
      v124 = v426;
      goto LABEL_96;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v94 = v428;
      sub_1B038CB4C(v76, v428, type metadata accessor for UntaggedResponse);
      v95 = swift_allocBox();
      sub_1B038C9A4(v94, v96, type metadata accessor for UntaggedResponse);
      sub_1B0BDAD70(v95 | 0x3000000000000000);

      return sub_1B038D690(v94, type metadata accessor for UntaggedResponse);
    }

    v142 = *v76;
    v143 = *(v76 + 1);
    v144 = *(v76 + 2);
    v145 = v76[24];
    v146 = v76[28];
    v147 = *(v76 + 8);
    v148 = v431;
    swift_beginAccess();
    v149 = static MonotonicTime.now()();
    v150 = v146 | (v147 << 32);
    v151 = sub_1B0C2700C(v150, v149);
    v153 = v152;
    swift_endAccess();
    LODWORD(v430) = v145;
    if ((v153 & 1) == 0)
    {
      v428 = HIDWORD(v151);
      v186 = v148 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
      v187 = v412;
      sub_1B038C9A4(v148 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v412, _s6LoggerVMa_0);
      swift_retain_n();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v188 = sub_1B0E43988();
      v189 = sub_1B0E439A8();
      (*(*(v189 - 8) + 8))(v187, v189);
      v190 = sub_1B0E458D8();
      if (os_log_type_enabled(v188, v190))
      {
        v191 = swift_slowAlloc();
        v192 = swift_slowAlloc();
        v429 = v144;
        v193 = v192;
        v433[0] = v192;
        *v191 = 68158466;
        *(v191 + 4) = 2;
        *(v191 + 8) = 256;
        v194 = v186 + *(v424 + 20);
        *(v191 + 10) = *v194;
        *(v191 + 11) = 2082;
        v195 = ConnectionID.debugDescription.getter(*(v194 + 4));
        v197 = sub_1B0399D64(v195, v196, v433);

        *(v191 + 13) = v197;

        *(v191 + 21) = 2082;
        v198 = Tag.debugDescription.getter(v151 & 0xFFFFFFFF000000FFLL);
        v200 = sub_1B0399D64(v198, v199, v433);

        *(v191 + 23) = v200;
        _os_log_impl(&dword_1B0389000, v188, v190, "[%.*hhx-%{public}s] Command %{public}s completed.", v191, 0x1Fu);
        swift_arrayDestroy();
        v201 = v193;
        v144 = v429;
        MEMORY[0x1B272C230](v201, -1, -1);
        MEMORY[0x1B272C230](v191, -1, -1);
      }

      else
      {
      }

      v278 = swift_allocObject();
      v279 = v428;
      *(v278 + 16) = v151;
      *(v278 + 20) = v279;
      *(v278 + 24) = v142;
      *(v278 + 32) = v143;
      *(v278 + 40) = v144;
      v280 = v430;
      *(v278 + 48) = v430;
      sub_1B0A91FD0(v142, v143, v144, v280);
      sub_1B0BDAD70(v278 | 0x4000000000000000);

      goto LABEL_66;
    }

    v429 = v144;
    v154 = v148 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
    if (v151)
    {
      if (v151 == 1)
      {
        v155 = v406;
        sub_1B038C9A4(v148 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v406, _s6LoggerVMa_0);
        swift_retain_n();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v156 = sub_1B0E43988();
        v157 = sub_1B0E439A8();
        (*(*(v157 - 8) + 8))(v155, v157);
        v158 = sub_1B0E45908();
        if (os_log_type_enabled(v156, v158))
        {
          v159 = swift_slowAlloc();
          v160 = swift_slowAlloc();
          v433[0] = v160;
          *v159 = 68158466;
          *(v159 + 4) = 2;
          *(v159 + 8) = 256;
          v161 = v154 + *(v424 + 20);
          *(v159 + 10) = *v161;
          *(v159 + 11) = 2082;
          v162 = ConnectionID.debugDescription.getter(*(v161 + 4));
          v164 = sub_1B0399D64(v162, v163, v433);

          *(v159 + 13) = v164;

          *(v159 + 21) = 2082;
          v165 = Tag.debugDescription.getter(v150);
          v167 = sub_1B0399D64(v165, v166, v433);

          *(v159 + 23) = v167;
          v168 = "[%.*hhx-%{public}s] %{public}s IDLE completed.";
LABEL_60:
          _os_log_impl(&dword_1B0389000, v156, v158, v168, v159, 0x1Fu);
          swift_arrayDestroy();
          v310 = v160;
LABEL_63:
          MEMORY[0x1B272C230](v310, -1, -1);
          MEMORY[0x1B272C230](v159, -1, -1);
LABEL_65:

          v144 = v429;
          v280 = v430;
LABEL_66:
          sub_1B038CC7C(v281);
          return sub_1B0BB6FE0(v142, v143, v144, v280);
        }
      }

      else
      {
        v311 = v407;
        sub_1B038C9A4(v148 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v407, _s6LoggerVMa_0);
        swift_retain_n();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v156 = sub_1B0E43988();
        v312 = sub_1B0E439A8();
        (*(*(v312 - 8) + 8))(v311, v312);
        v313 = sub_1B0E458E8();
        if (os_log_type_enabled(v156, v313))
        {
          v159 = swift_slowAlloc();
          v428 = swift_slowAlloc();
          v433[0] = v428;
          *v159 = 68158466;
          *(v159 + 4) = 2;
          *(v159 + 8) = 256;
          v314 = v154 + *(v424 + 20);
          *(v159 + 10) = *v314;
          *(v159 + 11) = 2082;
          v315 = ConnectionID.debugDescription.getter(*(v314 + 4));
          v317 = sub_1B0399D64(v315, v316, v433);

          *(v159 + 13) = v317;

          *(v159 + 21) = 2082;
          v318 = Tag.debugDescription.getter(v150);
          v320 = sub_1B0399D64(v318, v319, v433);

          *(v159 + 23) = v320;
          _os_log_impl(&dword_1B0389000, v156, v313, "[%.*hhx-%{public}s] Command with unknown tag %{public}s completed.", v159, 0x1Fu);
          v321 = v428;
          swift_arrayDestroy();
          v310 = v321;
          goto LABEL_63;
        }
      }
    }

    else
    {
      v301 = v405;
      sub_1B038C9A4(v148 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v405, _s6LoggerVMa_0);
      swift_retain_n();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v156 = sub_1B0E43988();
      v302 = sub_1B0E439A8();
      (*(*(v302 - 8) + 8))(v301, v302);
      v158 = sub_1B0E458D8();
      if (os_log_type_enabled(v156, v158))
      {
        v159 = swift_slowAlloc();
        v160 = swift_slowAlloc();
        v433[0] = v160;
        *v159 = 68158466;
        *(v159 + 4) = 2;
        *(v159 + 8) = 256;
        v303 = v154 + *(v424 + 20);
        *(v159 + 10) = *v303;
        *(v159 + 11) = 2082;
        v304 = ConnectionID.debugDescription.getter(*(v303 + 4));
        v306 = sub_1B0399D64(v304, v305, v433);

        *(v159 + 13) = v306;

        *(v159 + 21) = 2082;
        v307 = Tag.debugDescription.getter(v150);
        v309 = sub_1B0399D64(v307, v308, v433);

        *(v159 + 23) = v309;
        v168 = "[%.*hhx-%{public}s] %{public}s NOOP completed.";
        goto LABEL_60;
      }
    }

    goto LABEL_65;
  }

  if (EnumCaseMultiPayload > 5)
  {
    v78 = v431;
    if (EnumCaseMultiPayload == 6)
    {
      v119 = *v76;
      v120 = swift_allocObject();
      *(v120 + 16) = v119;
      sub_1B0BDAD70(v120 | 0x7000000000000000);
    }

    else if (EnumCaseMultiPayload == 7)
    {
      v79 = v431 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
      v80 = v420;
      sub_1B038C9A4(v431 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v420, _s6LoggerVMa_0);
      swift_retain_n();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v81 = sub_1B0E43988();
      v82 = sub_1B0E439A8();
      (*(*(v82 - 8) + 8))(v80, v82);
      v83 = sub_1B0E45908();
      v84 = os_log_type_enabled(v81, v83);
      v430 = v79;
      if (v84)
      {
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v433[0] = v86;
        *v85 = 68158210;
        *(v85 + 4) = 2;
        *(v85 + 8) = 256;
        v87 = v79 + *(v424 + 20);
        *(v85 + 10) = *v87;
        *(v85 + 11) = 2082;
        v88 = ConnectionID.debugDescription.getter(*(v87 + 4));
        v90 = sub_1B0399D64(v88, v89, v433);

        *(v85 + 13) = v90;

        _os_log_impl(&dword_1B0389000, v81, v83, "[%.*hhx-%{public}s] Connection did start TLS.", v85, 0x15u);
        __swift_destroy_boxed_opaque_existential_0Tm(v86);
        MEMORY[0x1B272C230](v86, -1, -1);
        MEMORY[0x1B272C230](v85, -1, -1);
      }

      else
      {
      }

      v202 = v422;
      v203 = *(v78 + 16);
      v204 = sub_1B0447ABC();
      v207 = v204;
      v208 = v206;
      v429 = v205;
      if (v206 == 1)
      {
        v209 = 0;
        v210 = 0;
        v211 = 0x8000000000000000;
      }

      else
      {
        if (*(v203 + OBJC_IVAR____TtC15IMAP2Connection10Connection_configuration + *(v414 + 28)) >= 0)
        {
          v211 = v204 | 0x4000000000000000;
        }

        else
        {
          v211 = v204;
        }

        v209 = v205;
        v210 = v206;
      }

      sub_1B038C9A4(v203 + OBJC_IVAR____TtC15IMAP2Connection10Connection_configuration, v202, type metadata accessor for ConnectionConfiguration);
      v212 = sub_1B0447BC4();
      v214 = v213;
      v216 = v215;
      sub_1B038D690(v202, type metadata accessor for ConnectionConfiguration);
      v433[0] = v211;
      v433[1] = v209;
      v433[2] = v210;
      v433[3] = v212;
      v433[4] = v214;
      v433[5] = v216;
      v217 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
      v218 = v431;
      swift_beginAccess();
      v219 = v425;
      sub_1B038C9A4(v218 + v217, v425, type metadata accessor for ConnectionState);
      sub_1B0BF0E90(v433, v430);
      sub_1B0429C7C(v207, v429, v208);
      sub_1B0429C7C(v212, v214, v216);
      v220 = v423;
      sub_1B038C9A4(v218 + v217, v423, type metadata accessor for ConnectionState);
      swift_beginAccess();
      sub_1B044B474(v219, v218 + v217);
      swift_endAccess();
      sub_1B042D734(v220);
      sub_1B038D690(v219, type metadata accessor for ConnectionState);
      sub_1B038D690(v220, type metadata accessor for ConnectionState);
      return sub_1B0BDE9C8();
    }

    else
    {
      return sub_1B0BDEBD8();
    }
  }

  v97 = v431;
  if (EnumCaseMultiPayload == 4)
  {
    v99 = *v76;
    v98 = *(v76 + 1);
    v100 = v76[16];
    v101 = v431 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
    v102 = v419;
    sub_1B038C9A4(v431 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v419, _s6LoggerVMa_0);
    swift_retain_n();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v103 = sub_1B0E43988();
    v104 = sub_1B0E439A8();
    v105 = *(v104 - 8);
    v106 = *(v105 + 8);
    v429 = v105 + 8;
    v106(v102, v104);
    v107 = sub_1B0E458D8();
    v108 = os_log_type_enabled(v103, v107);
    v430 = v106;
    if (v108)
    {
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      LODWORD(v428) = v100;
      v427 = v98;
      v111 = v99;
      v112 = v110;
      v433[0] = v110;
      *v109 = 68158210;
      *(v109 + 4) = 2;
      *(v109 + 8) = 256;
      v113 = v101 + *(v424 + 20);
      *(v109 + 10) = *v113;
      *(v109 + 11) = 2082;
      v114 = ConnectionID.debugDescription.getter(*(v113 + 4));
      v116 = v101;
      v117 = sub_1B0399D64(v114, v115, v433);

      *(v109 + 13) = v117;
      v101 = v116;

      _os_log_impl(&dword_1B0389000, v103, v107, "[%.*hhx-%{public}s] Received handshake.", v109, 0x15u);
      __swift_destroy_boxed_opaque_existential_0Tm(v112);
      v118 = v112;
      v99 = v111;
      v98 = v427;
      v100 = v428;
      MEMORY[0x1B272C230](v118, -1, -1);
      MEMORY[0x1B272C230](v109, -1, -1);
    }

    else
    {
    }

    v221 = v97;
    v222 = v421;
    v223 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
    swift_beginAccess();
    sub_1B038C9A4(v221 + v223, v222, type metadata accessor for ConnectionState);

    sub_1B0BF0A30(v99, v98, v100, v101, sub_1B0BE2F40, v221, sub_1B0BE2B1C, v221);
    v240 = v425;
    sub_1B038C9A4(v221 + v223, v425, type metadata accessor for ConnectionState);
    swift_beginAccess();
    sub_1B044B474(v222, v221 + v223);
    swift_endAccess();
    sub_1B042D734(v240);
    sub_1B038D690(v222, type metadata accessor for ConnectionState);
    sub_1B038D690(v240, type metadata accessor for ConnectionState);

    sub_1B0BDE9C8();
    sub_1B0446050(0x8000000000000008);
    return sub_1B0BCDEB0(v99, v98, v100);
  }

  v169 = *v76;
  v170 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_pathAttributes;
  swift_beginAccess();
  if (sub_1B0429CE0(*(v97 + v170), v169))
  {
  }

  v224 = *(v97 + v170);
  *(v97 + v170) = v169;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  v225 = v97 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
  v226 = v413;
  sub_1B038C9A4(v97 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v413, _s6LoggerVMa_0);
  swift_retain_n();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  swift_bridgeObjectRetain_n();
  v227 = sub_1B0E43988();
  v228 = sub_1B0E439A8();
  (*(*(v228 - 8) + 8))(v226, v228);
  v229 = sub_1B0E45908();
  if (os_log_type_enabled(v227, v229))
  {
    v230 = swift_slowAlloc();
    v231 = swift_slowAlloc();
    v432 = v231;
    *v230 = 68158466;
    *(v230 + 4) = 2;
    *(v230 + 8) = 256;
    v232 = v225 + *(v424 + 20);
    *(v230 + 10) = *v232;
    *(v230 + 11) = 2082;
    v233 = ConnectionID.debugDescription.getter(*(v232 + 4));
    v235 = sub_1B0399D64(v233, v234, &v432);

    *(v230 + 13) = v235;

    *(v230 + 21) = 1024;
    if (*(v169 + 16))
    {
      v236 = *(v169 + 40);
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](0);
      v237 = sub_1B0E46CB8() & ~(-1 << *(v169 + 32));
      v238 = *(v169 + ((v237 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v237;

      v239 = v238 & 1;
    }

    else
    {

      v239 = 0;
    }

    *(v230 + 23) = v239;
    swift_bridgeObjectRelease_n();
    _os_log_impl(&dword_1B0389000, v227, v229, "[%.*hhx-%{public}s] Path did change. Constrained: %{BOOL}d", v230, 0x1Bu);
    __swift_destroy_boxed_opaque_existential_0Tm(v231);
    MEMORY[0x1B272C230](v231, -1, -1);
    MEMORY[0x1B272C230](v230, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  return sub_1B0BDC398();
}

uint64_t sub_1B0429C7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_1B0429CA0()
{
  sub_1B0BB6FE0(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_1B0429CE0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
LABEL_7:
    v7 &= v7 - 1;
    v9 = *(a2 + 40);
    sub_1B0E46C28();
    MEMORY[0x1B2728D70](0);
    result = sub_1B0E46CB8();
    v10 = result & ~(-1 << *(a2 + 32));
    if (((*(a2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  while (1)
  {
    v11 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
      return 1;
    }

    v7 = *(v4 + 8 * v11);
    ++v3;
    if (v7)
    {
      v3 = v11;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0429DF4(uint64_t a1, void *a2, uint64_t a3, void (*a4)(char *, uint64_t, uint64_t))
{
  v475 = a4;
  v470 = a3;
  v478 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5520, &qword_1B0ED0CE8);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v456 = &v417 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v463 = &v417 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v464 = &v417 - v11;
  v459 = type metadata accessor for ConnectionEvent(0);
  v460 = *(v459 - 8);
  v12 = *(v460 + 64);
  v13 = MEMORY[0x1EEE9AC00](v459);
  v455 = &v417 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v422 = &v417 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v453 = &v417 - v17;
  v474 = sub_1B0E441D8();
  v476 = *(v474 - 8);
  v18 = *(v476 + 64);
  v19 = MEMORY[0x1EEE9AC00](v474);
  v430 = &v417 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v429 = &v417 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v437 = &v417 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v451 = &v417 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v458 = (&v417 - v28);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v448 = &v417 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v438 = &v417 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v447 = &v417 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v452 = (&v417 - v36);
  MEMORY[0x1EEE9AC00](v35);
  v462 = (&v417 - v37);
  v38 = _s6LoggerVMa_0();
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v420 = &v417 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x1EEE9AC00](v40);
  v421 = &v417 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v418 = &v417 - v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v419 = &v417 - v47;
  v48 = MEMORY[0x1EEE9AC00](v46);
  v426 = &v417 - v49;
  v50 = MEMORY[0x1EEE9AC00](v48);
  v428 = &v417 - v51;
  v52 = MEMORY[0x1EEE9AC00](v50);
  v425 = &v417 - v53;
  v54 = MEMORY[0x1EEE9AC00](v52);
  v427 = &v417 - v55;
  v56 = MEMORY[0x1EEE9AC00](v54);
  v435 = &v417 - v57;
  v58 = MEMORY[0x1EEE9AC00](v56);
  v436 = &v417 - v59;
  v60 = MEMORY[0x1EEE9AC00](v58);
  v445 = &v417 - v61;
  v62 = MEMORY[0x1EEE9AC00](v60);
  v446 = &v417 - v63;
  v64 = MEMORY[0x1EEE9AC00](v62);
  v423 = &v417 - v65;
  v66 = MEMORY[0x1EEE9AC00](v64);
  v424 = &v417 - v67;
  v68 = MEMORY[0x1EEE9AC00](v66);
  v431 = &v417 - v69;
  v70 = MEMORY[0x1EEE9AC00](v68);
  v432 = &v417 - v71;
  v72 = MEMORY[0x1EEE9AC00](v70);
  v434 = &v417 - v73;
  v74 = MEMORY[0x1EEE9AC00](v72);
  v444 = &v417 - v75;
  v76 = MEMORY[0x1EEE9AC00](v74);
  v433 = &v417 - v77;
  v78 = MEMORY[0x1EEE9AC00](v76);
  v443 = &v417 - v79;
  v80 = MEMORY[0x1EEE9AC00](v78);
  v441 = &v417 - v81;
  v82 = MEMORY[0x1EEE9AC00](v80);
  v442 = &v417 - v83;
  v84 = MEMORY[0x1EEE9AC00](v82);
  v449 = &v417 - v85;
  v86 = MEMORY[0x1EEE9AC00](v84);
  v450 = &v417 - v87;
  v88 = MEMORY[0x1EEE9AC00](v86);
  v439 = &v417 - v89;
  MEMORY[0x1EEE9AC00](v88);
  v440 = &v417 - v90;
  v91 = sub_1B0E43DF8();
  v92 = *(v91 - 8);
  v93 = *(v92 + 64);
  v94 = MEMORY[0x1EEE9AC00](v91);
  v465 = (&v417 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0));
  v96 = MEMORY[0x1EEE9AC00](v94);
  v98 = &v417 - v97;
  MEMORY[0x1EEE9AC00](v96);
  v100 = &v417 - v99;
  v101 = sub_1B0E43828();
  v468 = *(v101 - 8);
  v469 = v101;
  v102 = *(v468 + 8);
  MEMORY[0x1EEE9AC00](v101);
  v104 = (&v417 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0));
  v105 = sub_1B0E43868();
  v106 = *(v105 - 1);
  v107 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v105);
  v109 = &v417 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
  v472 = swift_projectBox();
  v110 = tracingSignposter.unsafeMutableAddressor();
  v111 = *(v106 + 16);
  v466 = v105;
  v111(v109, v110, v105);
  v454 = v38;
  v112 = *(v38 + 20);
  v461 = a2;
  v113 = (*(a2 + v112 + 4) << 27) | (*(a2 + v112) << 59) | 0x800000;
  v467 = v104;
  sub_1B0E43838();
  v114 = *(v92 + 16);
  v114(v100, v478, v91);
  v115 = sub_1B0E43858();
  LODWORD(v457) = sub_1B0E45AE8();
  v116 = sub_1B0E45D38();
  v117 = MEMORY[0x1E6977C18];
  v477 = v92;
  v473 = v91;
  v471 = v92 + 16;
  v475 = v114;
  if ((v116 & 1) == 0)
  {
    v121 = *(v92 + 8);
    v121(v100, v91);
    v122 = v91;
    v120 = v474;
    v123 = v467;
    goto LABEL_18;
  }

  v417 = swift_slowAlloc();
  *v417 = 67109120;
  v114(v98, v100, v91);
  v118 = (*(v92 + 88))(v98, v91);
  if (v118 == *v117)
  {
    v119 = 4;
    v120 = v474;
  }

  else
  {
    v120 = v474;
    if (v118 != *MEMORY[0x1E6977C10])
    {
      if (v118 == *MEMORY[0x1E6977C08])
      {
        v119 = 3;
      }

      else if (v118 == *MEMORY[0x1E6977C28])
      {
        v119 = 5;
      }

      else if (v118 == *MEMORY[0x1E6977C00])
      {
        v119 = 6;
      }

      else
      {
        if (v118 != *MEMORY[0x1E6977C20])
        {
          v119 = 0;
          goto LABEL_7;
        }

        v119 = 8;
      }

      v125 = v473;
      v124 = v477;
      goto LABEL_17;
    }

    v119 = 7;
  }

LABEL_7:
  v124 = v477;
  v125 = v473;
  (*(v477 + 8))(v98, v473);
LABEL_17:
  v121 = *(v124 + 8);
  v121(v100, v125);
  v126 = v417;
  *(v417 + 1) = v119;
  v123 = v467;
  v127 = sub_1B0E43818();
  _os_signpost_emit_with_name_impl(&dword_1B0389000, v115, v457, v127, "Connection.networkStateUpdate", "%u", v126, 8u);
  MEMORY[0x1B272C230](v126, -1, -1);
  v122 = v125;
LABEL_18:

  (*(v468 + 1))(v123, v469);
  (*(v106 + 8))(v109, v466);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v130 = v475;
  v129 = v476;
  if (!result)
  {
    return result;
  }

  v131 = result;
  v132 = v465;
  v475(v465, v478, v122);
  v133 = v477;
  v134 = *(v477 + 88);
  v469 = v477 + 88;
  v135 = v134(v132, v122);
  v136 = *MEMORY[0x1E6977C18];
  v467 = v121;
  if (v135 == v136)
  {
    v470 = v131;
    (*(v133 + 96))(v132, v122);
    v137 = v462;
    (*(v129 + 32))(v462, v132, v120);
    v138 = *(v129 + 16);
    v139 = v452;
    (v138)(v452, v137, v120);
    v140 = (*(v129 + 88))(v139, v120);
    if (v140 == *MEMORY[0x1E6977D68])
    {
      (*(v129 + 96))(v139, v120);
      v141 = *v139;
      v142 = v129;
      v143 = v461;
      v144 = v450;
      sub_1B03FD208(v461, v450, _s6LoggerVMa_0);
      v145 = v449;
      sub_1B03FD208(v143, v449, _s6LoggerVMa_0);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v146 = sub_1B0E43988();
      v147 = sub_1B0E45908();
      if (os_log_type_enabled(v146, v147))
      {
        v148 = swift_slowAlloc();
        v468 = v134;
        v149 = v148;
        v150 = swift_slowAlloc();
        v479 = v150;
        *v149 = 68158466;
        *(v149 + 4) = 2;
        *(v149 + 8) = 256;
        LODWORD(v466) = v141;
        v151 = v454;
        v152 = v145;
        v153 = *(v145 + *(v454 + 20));
        sub_1B03D6AC4(v152, _s6LoggerVMa_0);
        *(v149 + 10) = v153;
        *(v149 + 11) = 2082;
        v154 = *(v144 + *(v151 + 20) + 4);
        sub_1B03D6AC4(v144, _s6LoggerVMa_0);
        v155 = ConnectionID.debugDescription.getter(v154);
        v157 = sub_1B0399D64(v155, v156, &v479);

        *(v149 + 13) = v157;
        *(v149 + 21) = 1024;
        *(v149 + 23) = sub_1B0E43AF8();
        _os_log_impl(&dword_1B0389000, v146, v147, "[%.*hhx-%{public}s] state: waiting, POSIX %{darwin.errno}d", v149, 0x1Bu);
        __swift_destroy_boxed_opaque_existential_0Tm(v150);
        v158 = v150;
        v133 = v477;
        MEMORY[0x1B272C230](v158, -1, -1);
        v159 = v149;
        v134 = v468;
        MEMORY[0x1B272C230](v159, -1, -1);

        (*(v142 + 8))(v462, v474);
      }

      else
      {
        sub_1B03D6AC4(v145, _s6LoggerVMa_0);

        sub_1B03D6AC4(v144, _s6LoggerVMa_0);
        (*(v142 + 8))(v462, v120);
      }

      v223 = v464;
      v224 = v463;
      v226 = v472;
      v225 = v473;
      v130 = v475;
      goto LABEL_81;
    }

    if (v140 == *MEMORY[0x1E6977D58])
    {
      v184 = v461;
      v185 = v442;
      sub_1B03FD208(v461, v442, _s6LoggerVMa_0);
      v186 = v441;
      sub_1B03FD208(v184, v441, _s6LoggerVMa_0);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v187 = v447;
      v466 = v138;
      (v138)(v447, v137, v120);
      v188 = sub_1B0E43988();
      v189 = sub_1B0E45908();
      if (!os_log_type_enabled(v188, v189))
      {
        sub_1B03D6AC4(v186, _s6LoggerVMa_0);

        v278 = *(v476 + 8);
        v278(v187, v120);
        sub_1B03D6AC4(v185, _s6LoggerVMa_0);
        v278(v462, v120);
        v223 = v464;
        v224 = v463;
        v226 = v472;
        v225 = v473;
        v130 = v475;
        v133 = v477;
        goto LABEL_81;
      }

      v190 = swift_slowAlloc();
      LODWORD(v461) = v189;
      v191 = v190;
      v458 = swift_slowAlloc();
      v192 = swift_slowAlloc();
      v468 = v134;
      v465 = v192;
      v479 = v192;
      *v191 = 68158466;
      *(v191 + 4) = 2;
      *(v191 + 8) = 256;
      v193 = v454;
      v194 = v187;
      v195 = *(v186 + *(v454 + 20));
      v196 = v120;
      sub_1B03D6AC4(v186, _s6LoggerVMa_0);
      *(v191 + 10) = v195;
      *(v191 + 11) = 2082;
      v197 = *(v185 + *(v193 + 20) + 4);
      sub_1B03D6AC4(v185, _s6LoggerVMa_0);
      v198 = ConnectionID.debugDescription.getter(v197);
      v200 = sub_1B0399D64(v198, v199, &v479);

      *(v191 + 13) = v200;
      *(v191 + 21) = 2112;
      sub_1B0422494(&qword_1EB6DB9A0, MEMORY[0x1E6977D78]);
      v201 = swift_allocError();
      (v466)(v202, v194, v196);
      v203 = sub_1B0E42CC8();
      v204 = *(v476 + 8);
      v204(v194, v196);

      *(v191 + 23) = v203;
      v205 = v458;
      v458->isa = v203;
      _os_log_impl(&dword_1B0389000, v188, v461, "[%.*hhx-%{public}s] state: waiting, DNS %@", v191, 0x1Fu);
      sub_1B0398EFC(v205, &unk_1EB6E2630, &qword_1B0E97970);
      v133 = v477;
      MEMORY[0x1B272C230](v205, -1, -1);
      v206 = &v480;
    }

    else
    {
      if (v140 != *MEMORY[0x1E6977D60])
      {
        v296 = v461;
        sub_1B03FD208(v461, v444, _s6LoggerVMa_0);
        v297 = v434;
        sub_1B03FD208(v296, v434, _s6LoggerVMa_0);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        (v138)(v448, v137, v120);
        v298 = sub_1B0E43988();
        v299 = sub_1B0E45908();
        if (os_log_type_enabled(v298, v299))
        {
          v300 = swift_slowAlloc();
          LODWORD(v465) = v299;
          v301 = v300;
          v461 = swift_slowAlloc();
          v302 = swift_slowAlloc();
          v468 = v134;
          v466 = v302;
          v479 = v302;
          *v301 = 68158466;
          *(v301 + 4) = 2;
          *(v301 + 8) = 256;
          v303 = v454;
          v304 = v448;
          v305 = *(v297 + *(v454 + 20));
          v458 = v298;
          v306 = v120;
          sub_1B03D6AC4(v297, _s6LoggerVMa_0);
          *(v301 + 10) = v305;
          *(v301 + 11) = 2082;
          v307 = *(v444 + *(v303 + 20) + 4);
          sub_1B03D6AC4(v444, _s6LoggerVMa_0);
          v308 = ConnectionID.debugDescription.getter(v307);
          v310 = sub_1B0399D64(v308, v309, &v479);

          *(v301 + 13) = v310;
          *(v301 + 21) = 2112;
          sub_1B0422494(&qword_1EB6DB9A0, MEMORY[0x1E6977D78]);
          v311 = swift_allocError();
          (v138)(v312, v304, v306);
          v313 = sub_1B0E42CC8();
          v314 = *(v476 + 8);
          v314(v304, v306);

          *(v301 + 23) = v313;
          v315 = v461;
          *v461 = v313;
          v316 = v458;
          _os_log_impl(&dword_1B0389000, v458, v465, "[%.*hhx-%{public}s] state: waiting, %@", v301, 0x1Fu);
          sub_1B0398EFC(v315, &unk_1EB6E2630, &qword_1B0E97970);
          v133 = v477;
          MEMORY[0x1B272C230](v315, -1, -1);
          v317 = v466;
          __swift_destroy_boxed_opaque_existential_0Tm(v466);
          v318 = v317;
          v134 = v468;
          MEMORY[0x1B272C230](v318, -1, -1);
          MEMORY[0x1B272C230](v301, -1, -1);

          v314(v462, v306);
          v223 = v464;
        }

        else
        {
          sub_1B03D6AC4(v297, _s6LoggerVMa_0);

          v314 = *(v476 + 8);
          v314(v448, v120);
          sub_1B03D6AC4(v444, _s6LoggerVMa_0);
          v314(v462, v120);
          v223 = v464;
          v306 = v120;
        }

        v226 = v472;
        v314(v139, v306);
        v224 = v463;
        v225 = v473;
        goto LABEL_68;
      }

      v248 = v461;
      sub_1B03FD208(v461, v443, _s6LoggerVMa_0);
      v249 = v433;
      sub_1B03FD208(v248, v433, _s6LoggerVMa_0);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v250 = v438;
      (v138)(v438, v137, v120);
      v188 = sub_1B0E43988();
      v251 = sub_1B0E45908();
      if (!os_log_type_enabled(v188, v251))
      {
        sub_1B03D6AC4(v249, _s6LoggerVMa_0);

        v337 = *(v476 + 8);
        v337(v250, v120);
        sub_1B03D6AC4(v443, _s6LoggerVMa_0);
        v337(v462, v120);
        goto LABEL_63;
      }

      v252 = swift_slowAlloc();
      LODWORD(v465) = v251;
      v191 = v252;
      v461 = swift_slowAlloc();
      v253 = swift_slowAlloc();
      v468 = v134;
      v466 = v253;
      v479 = v253;
      *v191 = 68158466;
      *(v191 + 4) = 2;
      *(v191 + 8) = 256;
      v254 = v454;
      v255 = *(v249 + *(v454 + 20));
      v256 = v443;
      v196 = v120;
      sub_1B03D6AC4(v249, _s6LoggerVMa_0);
      *(v191 + 10) = v255;
      *(v191 + 11) = 2082;
      v257 = *(v256 + *(v254 + 20) + 4);
      sub_1B03D6AC4(v256, _s6LoggerVMa_0);
      v258 = ConnectionID.debugDescription.getter(v257);
      v260 = sub_1B0399D64(v258, v259, &v479);

      *(v191 + 13) = v260;
      *(v191 + 21) = 2112;
      sub_1B0422494(&qword_1EB6DB9A0, MEMORY[0x1E6977D78]);
      v261 = swift_allocError();
      v262 = v438;
      (v138)(v263, v438, v196);
      v264 = sub_1B0E42CC8();
      v204 = *(v476 + 8);
      v204(v262, v196);

      *(v191 + 23) = v264;
      v265 = v461;
      *v461 = v264;
      _os_log_impl(&dword_1B0389000, v188, v465, "[%.*hhx-%{public}s] state: waiting, TLS %@", v191, 0x1Fu);
      sub_1B0398EFC(v265, &unk_1EB6E2630, &qword_1B0E97970);
      v133 = v477;
      MEMORY[0x1B272C230](v265, -1, -1);
      v206 = &v481;
    }

    v266 = *(v206 - 32);
    __swift_destroy_boxed_opaque_existential_0Tm(v266);
    v267 = v266;
    v134 = v468;
    MEMORY[0x1B272C230](v267, -1, -1);
    MEMORY[0x1B272C230](v191, -1, -1);

    v204(v462, v196);
LABEL_63:
    v223 = v464;
    v224 = v463;
    v226 = v472;
    v225 = v473;
LABEL_68:
    v130 = v475;
    goto LABEL_81;
  }

  if (v135 == *MEMORY[0x1E6977C10])
  {
    v470 = v131;
    (*(v133 + 96))(v132, v122);
    v160 = v458;
    (*(v129 + 32))(v458, v132, v120);
    v161 = (v129 + 16);
    v162 = v451;
    v163 = v160;
    v164 = *(v129 + 16);
    (v164)(v451, v163, v120);
    v165 = (*(v129 + 88))(v162, v120);
    v166 = v165 == *MEMORY[0x1E6977D68];
    v466 = v164;
    if (v166)
    {
      (*(v129 + 96))(v162, v120);
      v167 = *v162;
      v168 = v461;
      v169 = v446;
      sub_1B03FD208(v461, v446, _s6LoggerVMa_0);
      v170 = v445;
      sub_1B03FD208(v168, v445, _s6LoggerVMa_0);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v171 = sub_1B0E43988();
      v172 = sub_1B0E458E8();
      if (os_log_type_enabled(v171, v172))
      {
        v173 = swift_slowAlloc();
        v468 = v134;
        v174 = v173;
        v175 = swift_slowAlloc();
        v479 = v175;
        *v174 = 68158466;
        *(v174 + 4) = 2;
        *(v174 + 8) = 256;
        LODWORD(v465) = v167;
        v176 = v454;
        v177 = *(v170 + *(v454 + 20));
        sub_1B03D6AC4(v170, _s6LoggerVMa_0);
        *(v174 + 10) = v177;
        *(v174 + 11) = 2082;
        v178 = *(v169 + *(v176 + 20) + 4);
        sub_1B03D6AC4(v169, _s6LoggerVMa_0);
        v179 = ConnectionID.debugDescription.getter(v178);
        v181 = sub_1B0399D64(v179, v180, &v479);

        *(v174 + 13) = v181;
        *(v174 + 21) = 1024;
        *(v174 + 23) = sub_1B0E43AF8();
        _os_log_impl(&dword_1B0389000, v171, v172, "[%.*hhx-%{public}s] state: failed, POSIX %{darwin.errno}d", v174, 0x1Bu);
        __swift_destroy_boxed_opaque_existential_0Tm(v175);
        v182 = v175;
        v133 = v477;
        MEMORY[0x1B272C230](v182, -1, -1);
        v183 = v174;
        v134 = v468;
        MEMORY[0x1B272C230](v183, -1, -1);
      }

      else
      {
        sub_1B03D6AC4(v170, _s6LoggerVMa_0);

        sub_1B03D6AC4(v169, _s6LoggerVMa_0);
      }

      v223 = v464;
      v226 = v472;
      v238 = v474;
      goto LABEL_76;
    }

    if (v165 == *MEMORY[0x1E6977D58])
    {
      v227 = v461;
      v228 = v436;
      sub_1B03FD208(v461, v436, _s6LoggerVMa_0);
      v229 = v435;
      sub_1B03FD208(v227, v435, _s6LoggerVMa_0);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v230 = v437;
      (v164)(v437, v458, v120);
      v231 = sub_1B0E43988();
      LODWORD(v461) = sub_1B0E458E8();
      v462 = v231;
      if (os_log_type_enabled(v231, v461))
      {
        v232 = swift_slowAlloc();
        v452 = swift_slowAlloc();
        v233 = swift_slowAlloc();
        v468 = v134;
        v457 = v233;
        v479 = v233;
        *v232 = 68158466;
        *(v232 + 4) = 2;
        *(v232 + 8) = 256;
        v234 = v454;
        v235 = *(v454 + 20);
        v465 = v161;
        v236 = *(v229 + v235);
        v237 = v230;
        v238 = v120;
        sub_1B03D6AC4(v229, _s6LoggerVMa_0);
        *(v232 + 10) = v236;
        *(v232 + 11) = 2082;
        v239 = *(v228 + *(v234 + 20) + 4);
        sub_1B03D6AC4(v228, _s6LoggerVMa_0);
        v240 = ConnectionID.debugDescription.getter(v239);
        v242 = sub_1B0399D64(v240, v241, &v479);

        *(v232 + 13) = v242;
        *(v232 + 21) = 2112;
        sub_1B0422494(&qword_1EB6DB9A0, MEMORY[0x1E6977D78]);
        v243 = swift_allocError();
        (v164)(v244, v237, v238);
        v245 = sub_1B0E42CC8();
        (*(v476 + 8))(v237, v238);

        *(v232 + 23) = v245;
        v246 = v452;
        *v452 = v245;
        v247 = "[%.*hhx-%{public}s] state: failed, DNS %@";
LABEL_55:
        v293 = v462;
        _os_log_impl(&dword_1B0389000, v462, v461, v247, v232, 0x1Fu);
        sub_1B0398EFC(v246, &unk_1EB6E2630, &qword_1B0E97970);
        v133 = v477;
        MEMORY[0x1B272C230](v246, -1, -1);
        v294 = v457;
        __swift_destroy_boxed_opaque_existential_0Tm(v457);
        v295 = v294;
        v134 = v468;
        MEMORY[0x1B272C230](v295, -1, -1);
        MEMORY[0x1B272C230](v232, -1, -1);

        v223 = v464;
        v226 = v472;
LABEL_76:
        v380 = v453;
        (v466)(v453, v458, v238);
        type metadata accessor for ConnectionEvent.FailureReason(0);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5508, &unk_1B0ED0CC0);
        v381 = *(v460 + 72);
        v382 = (*(v460 + 80) + 32) & ~*(v460 + 80);
        v383 = swift_allocObject();
        *(v383 + 16) = xmmword_1B0EC1E70;
        sub_1B03FD208(v380, v383 + v382, type metadata accessor for ConnectionEvent);
        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_1B0426318(v383);

          swift_unknownObjectRelease();
        }

        else
        {
        }

        sub_1B03D6AC4(v453, type metadata accessor for ConnectionEvent);
        (*(v476 + 8))(v458, v474);
LABEL_80:
        v224 = v463;
        v225 = v473;
        goto LABEL_81;
      }
    }

    else
    {
      if (v165 != *MEMORY[0x1E6977D60])
      {
        v468 = v134;
        v338 = v461;
        v339 = v428;
        sub_1B03FD208(v461, v428, _s6LoggerVMa_0);
        v340 = v426;
        sub_1B03FD208(v338, v426, _s6LoggerVMa_0);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v341 = v430;
        (v164)(v430, v458, v120);
        v342 = sub_1B0E43988();
        v343 = sub_1B0E458E8();
        if (os_log_type_enabled(v342, v343))
        {
          v344 = swift_slowAlloc();
          LODWORD(v462) = v343;
          v345 = v344;
          v461 = swift_slowAlloc();
          v465 = swift_slowAlloc();
          v479 = v465;
          *v345 = 68158466;
          *(v345 + 4) = 2;
          *(v345 + 8) = 256;
          v346 = v454;
          v347 = v340;
          v348 = *(v340 + *(v454 + 20));
          v349 = v341;
          v238 = v120;
          sub_1B03D6AC4(v347, _s6LoggerVMa_0);
          *(v345 + 10) = v348;
          *(v345 + 11) = 2082;
          v350 = *(v339 + *(v346 + 20) + 4);
          sub_1B03D6AC4(v339, _s6LoggerVMa_0);
          v351 = ConnectionID.debugDescription.getter(v350);
          v353 = sub_1B0399D64(v351, v352, &v479);

          *(v345 + 13) = v353;
          *(v345 + 21) = 2112;
          sub_1B0422494(&qword_1EB6DB9A0, MEMORY[0x1E6977D78]);
          v354 = swift_allocError();
          (v164)(v355, v349, v238);
          v356 = sub_1B0E42CC8();
          v357 = *(v476 + 8);
          v357(v349, v238);

          *(v345 + 23) = v356;
          v358 = v461;
          *v461 = v356;
          _os_log_impl(&dword_1B0389000, v342, v462, "[%.*hhx-%{public}s] state: failed, %@", v345, 0x1Fu);
          sub_1B0398EFC(v358, &unk_1EB6E2630, &qword_1B0E97970);
          v359 = v358;
          v133 = v477;
          MEMORY[0x1B272C230](v359, -1, -1);
          v360 = v465;
          __swift_destroy_boxed_opaque_existential_0Tm(v465);
          MEMORY[0x1B272C230](v360, -1, -1);
          MEMORY[0x1B272C230](v345, -1, -1);

          v223 = v464;
        }

        else
        {
          sub_1B03D6AC4(v340, _s6LoggerVMa_0);

          v357 = *(v476 + 8);
          v357(v341, v120);
          sub_1B03D6AC4(v339, _s6LoggerVMa_0);
          v223 = v464;
          v238 = v120;
        }

        v226 = v472;
        v357(v451, v238);
        v130 = v475;
        v134 = v468;
        goto LABEL_76;
      }

      v279 = v461;
      v228 = v427;
      sub_1B03FD208(v461, v427, _s6LoggerVMa_0);
      v229 = v425;
      sub_1B03FD208(v279, v425, _s6LoggerVMa_0);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v230 = v429;
      (v164)(v429, v458, v120);
      v280 = sub_1B0E43988();
      LODWORD(v461) = sub_1B0E458E8();
      v462 = v280;
      if (os_log_type_enabled(v280, v461))
      {
        v232 = swift_slowAlloc();
        v452 = swift_slowAlloc();
        v281 = swift_slowAlloc();
        v468 = v134;
        v457 = v281;
        v479 = v281;
        *v232 = 68158466;
        *(v232 + 4) = 2;
        *(v232 + 8) = 256;
        v282 = v454;
        v283 = *(v454 + 20);
        v465 = v161;
        v284 = *(v229 + v283);
        v285 = v230;
        v238 = v120;
        sub_1B03D6AC4(v229, _s6LoggerVMa_0);
        *(v232 + 10) = v284;
        *(v232 + 11) = 2082;
        v286 = *(v228 + *(v282 + 20) + 4);
        sub_1B03D6AC4(v228, _s6LoggerVMa_0);
        v287 = ConnectionID.debugDescription.getter(v286);
        v289 = sub_1B0399D64(v287, v288, &v479);

        *(v232 + 13) = v289;
        *(v232 + 21) = 2112;
        sub_1B0422494(&qword_1EB6DB9A0, MEMORY[0x1E6977D78]);
        v290 = swift_allocError();
        (v164)(v291, v285, v238);
        v292 = sub_1B0E42CC8();
        (*(v476 + 8))(v285, v238);

        *(v232 + 23) = v292;
        v246 = v452;
        *v452 = v292;
        v247 = "[%.*hhx-%{public}s] state: failed, TLS %@";
        goto LABEL_55;
      }
    }

    sub_1B03D6AC4(v229, _s6LoggerVMa_0);

    (*(v476 + 8))(v230, v120);
    sub_1B03D6AC4(v228, _s6LoggerVMa_0);
    v223 = v464;
    v238 = v120;
    v226 = v472;
    goto LABEL_76;
  }

  if (v135 == *MEMORY[0x1E6977C08])
  {
    v207 = v461;
    v208 = v440;
    sub_1B03FD208(v461, v440, _s6LoggerVMa_0);
    v209 = v439;
    sub_1B03FD208(v207, v439, _s6LoggerVMa_0);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v210 = sub_1B0E43988();
    v211 = sub_1B0E458D8();
    if (os_log_type_enabled(v210, v211))
    {
      v212 = swift_slowAlloc();
      v213 = swift_slowAlloc();
      v468 = v134;
      v214 = v213;
      v479 = v213;
      *v212 = 68158210;
      *(v212 + 4) = 2;
      *(v212 + 8) = 256;
      v215 = v454;
      v216 = v209;
      v217 = *(v209 + *(v454 + 20));
      sub_1B03D6AC4(v216, _s6LoggerVMa_0);
      *(v212 + 10) = v217;
      *(v212 + 11) = 2082;
      v218 = *(v208 + *(v215 + 20) + 4);
      sub_1B03D6AC4(v208, _s6LoggerVMa_0);
      v219 = ConnectionID.debugDescription.getter(v218);
      v221 = sub_1B0399D64(v219, v220, &v479);
      v133 = v477;

      *(v212 + 13) = v221;
      v222 = "[%.*hhx-%{public}s] state: setup";
LABEL_46:
      _os_log_impl(&dword_1B0389000, v210, v211, v222, v212, 0x15u);
      __swift_destroy_boxed_opaque_existential_0Tm(v214);
      v277 = v214;
      v134 = v468;
      MEMORY[0x1B272C230](v277, -1, -1);
      MEMORY[0x1B272C230](v212, -1, -1);

LABEL_48:
      v223 = v464;
      v224 = v463;
      v226 = v472;
      v225 = v473;
      goto LABEL_81;
    }

    goto LABEL_47;
  }

  if (v135 == *MEMORY[0x1E6977C28])
  {
    v268 = v461;
    v208 = v432;
    sub_1B03FD208(v461, v432, _s6LoggerVMa_0);
    v209 = v431;
    sub_1B03FD208(v268, v431, _s6LoggerVMa_0);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v210 = sub_1B0E43988();
    v211 = sub_1B0E458D8();
    if (os_log_type_enabled(v210, v211))
    {
      v212 = swift_slowAlloc();
      v269 = swift_slowAlloc();
      v468 = v134;
      v214 = v269;
      v479 = v269;
      *v212 = 68158210;
      *(v212 + 4) = 2;
      *(v212 + 8) = 256;
      v270 = v454;
      v271 = v209;
      v272 = *(v209 + *(v454 + 20));
      sub_1B03D6AC4(v271, _s6LoggerVMa_0);
      *(v212 + 10) = v272;
      *(v212 + 11) = 2082;
      v273 = *(v208 + *(v270 + 20) + 4);
      sub_1B03D6AC4(v208, _s6LoggerVMa_0);
      v274 = ConnectionID.debugDescription.getter(v273);
      v276 = sub_1B0399D64(v274, v275, &v479);
      v133 = v477;

      *(v212 + 13) = v276;
      v222 = "[%.*hhx-%{public}s] state: preparing";
      goto LABEL_46;
    }

LABEL_47:
    sub_1B03D6AC4(v209, _s6LoggerVMa_0);

    sub_1B03D6AC4(v208, _s6LoggerVMa_0);
    goto LABEL_48;
  }

  if (v135 == *MEMORY[0x1E6977C00])
  {
    v319 = v461;
    v320 = v424;
    sub_1B03FD208(v461, v424, _s6LoggerVMa_0);
    v321 = v423;
    sub_1B03FD208(v319, v423, _s6LoggerVMa_0);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v322 = sub_1B0E43988();
    v323 = sub_1B0E45908();
    if (os_log_type_enabled(v322, v323))
    {
      v324 = swift_slowAlloc();
      v325 = swift_slowAlloc();
      v468 = v134;
      v326 = v325;
      v479 = v325;
      *v324 = 68158210;
      *(v324 + 4) = 2;
      *(v324 + 8) = 256;
      v327 = v131;
      v328 = v454;
      v329 = v321;
      v330 = *(v321 + *(v454 + 20));
      sub_1B03D6AC4(v329, _s6LoggerVMa_0);
      *(v324 + 10) = v330;
      *(v324 + 11) = 2082;
      v331 = *(v328 + 20);
      v131 = v327;
      v332 = *(v320 + v331 + 4);
      sub_1B03D6AC4(v320, _s6LoggerVMa_0);
      v333 = ConnectionID.debugDescription.getter(v332);
      v335 = sub_1B0399D64(v333, v334, &v479);
      v133 = v477;

      *(v324 + 13) = v335;
      _os_log_impl(&dword_1B0389000, v322, v323, "[%.*hhx-%{public}s] state: ready", v324, 0x15u);
      __swift_destroy_boxed_opaque_existential_0Tm(v326);
      v336 = v326;
      v134 = v468;
      MEMORY[0x1B272C230](v336, -1, -1);
      MEMORY[0x1B272C230](v324, -1, -1);
    }

    else
    {
      sub_1B03D6AC4(v321, _s6LoggerVMa_0);

      sub_1B03D6AC4(v320, _s6LoggerVMa_0);
    }

    v226 = v472;
    v377 = *(v131 + OBJC_IVAR____TtC15IMAP2Connection10Connection_connection);
    v378 = swift_allocObject();
    swift_weakInit();
    v379 = swift_allocObject();
    *(v379 + 16) = sub_1B0443904;
    *(v379 + 24) = v378;
    swift_retain_n();
    sub_1B0E43CE8();

    v223 = v464;
    goto LABEL_80;
  }

  if (v135 == *MEMORY[0x1E6977C20])
  {
    v361 = v461;
    v362 = v419;
    sub_1B03FD208(v461, v419, _s6LoggerVMa_0);
    v363 = v418;
    sub_1B03FD208(v361, v418, _s6LoggerVMa_0);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v364 = sub_1B0E43988();
    v365 = sub_1B0E458C8();
    if (os_log_type_enabled(v364, v365))
    {
      v366 = swift_slowAlloc();
      v367 = swift_slowAlloc();
      v468 = v134;
      v368 = v367;
      v479 = v367;
      *v366 = 68158210;
      *(v366 + 4) = 2;
      *(v366 + 8) = 256;
      v369 = v454;
      v370 = v363;
      v371 = *(v363 + *(v454 + 20));
      sub_1B03D6AC4(v370, _s6LoggerVMa_0);
      *(v366 + 10) = v371;
      *(v366 + 11) = 2082;
      v372 = *(v362 + *(v369 + 20) + 4);
      sub_1B03D6AC4(v362, _s6LoggerVMa_0);
      v373 = ConnectionID.debugDescription.getter(v372);
      v375 = sub_1B0399D64(v373, v374, &v479);
      v133 = v477;

      *(v366 + 13) = v375;
      _os_log_impl(&dword_1B0389000, v364, v365, "[%.*hhx-%{public}s] state: cancelled", v366, 0x15u);
      __swift_destroy_boxed_opaque_existential_0Tm(v368);
      v376 = v368;
      v134 = v468;
      MEMORY[0x1B272C230](v376, -1, -1);
      MEMORY[0x1B272C230](v366, -1, -1);
    }

    else
    {
      sub_1B03D6AC4(v363, _s6LoggerVMa_0);

      sub_1B03D6AC4(v362, _s6LoggerVMa_0);
    }

    v223 = v464;
    v412 = v472;
    v413 = v422;
    type metadata accessor for ConnectionEvent.FailureReason(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5508, &unk_1B0ED0CC0);
    v414 = *(v460 + 72);
    v415 = (*(v460 + 80) + 32) & ~*(v460 + 80);
    v416 = swift_allocObject();
    *(v416 + 16) = xmmword_1B0EC1E70;
    sub_1B03FD208(v413, v416 + v415, type metadata accessor for ConnectionEvent);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1B0426318(v416);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    v225 = v473;
    sub_1B03D6AC4(v413, type metadata accessor for ConnectionEvent);
    v224 = v463;
    v226 = v412;
  }

  else
  {
    v396 = v461;
    v397 = v421;
    sub_1B03FD208(v461, v421, _s6LoggerVMa_0);
    v398 = v420;
    sub_1B03FD208(v396, v420, _s6LoggerVMa_0);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v399 = sub_1B0E43988();
    v400 = sub_1B0E458E8();
    if (os_log_type_enabled(v399, v400))
    {
      v401 = swift_slowAlloc();
      v402 = swift_slowAlloc();
      v468 = v134;
      v403 = v402;
      v479 = v402;
      *v401 = 68158210;
      *(v401 + 4) = 2;
      *(v401 + 8) = 256;
      v404 = v454;
      v405 = v398;
      v406 = *(v398 + *(v454 + 20));
      sub_1B03D6AC4(v405, _s6LoggerVMa_0);
      *(v401 + 10) = v406;
      *(v401 + 11) = 2082;
      v132 = v465;
      v407 = *(v397 + *(v404 + 20) + 4);
      sub_1B03D6AC4(v397, _s6LoggerVMa_0);
      v408 = ConnectionID.debugDescription.getter(v407);
      v410 = sub_1B0399D64(v408, v409, &v479);
      v133 = v477;

      *(v401 + 13) = v410;
      _os_log_impl(&dword_1B0389000, v399, v400, "[%.*hhx-%{public}s] state: <unknown>", v401, 0x15u);
      __swift_destroy_boxed_opaque_existential_0Tm(v403);
      v411 = v403;
      v134 = v468;
      MEMORY[0x1B272C230](v411, -1, -1);
      MEMORY[0x1B272C230](v401, -1, -1);
    }

    else
    {
      sub_1B03D6AC4(v398, _s6LoggerVMa_0);

      sub_1B03D6AC4(v397, _s6LoggerVMa_0);
    }

    v223 = v464;
    v226 = v472;
    v225 = v473;
    v467(v132, v473);
    v224 = v463;
  }

LABEL_81:
  swift_beginAccess();
  sub_1B03B5C80(v226, v223, &qword_1EB6E5520, &qword_1B0ED0CE8);
  if ((*(v133 + 48))(v223, 1, v225) == 1)
  {
LABEL_82:
    v384 = v133;
    v385 = v455;
    v386 = v130;
    v387 = v478;
    v388 = v225;
    v389 = v386;
    (v386)(v455);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5508, &unk_1B0ED0CC0);
    v390 = *(v460 + 72);
    v391 = (*(v460 + 80) + 32) & ~*(v460 + 80);
    v392 = swift_allocObject();
    *(v392 + 16) = xmmword_1B0EC1E70;
    sub_1B03FD208(v385, v392 + v391, type metadata accessor for ConnectionEvent);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1B0426318(v392);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    sub_1B03D6AC4(v385, type metadata accessor for ConnectionEvent);
    v394 = v456;
    v389(v456, v387, v388);
    (*(v384 + 56))(v394, 0, 1, v388);
    v395 = v472;
    swift_beginAccess();
    sub_1B0455DE8(v394, v395);
    return sub_1B0398EFC(v223, &qword_1EB6E5520, &qword_1B0ED0CE8);
  }

  sub_1B03B5C80(v223, v224, &qword_1EB6E5520, &qword_1B0ED0CE8);
  v393 = v134(v224, v225);
  if (v393 == *MEMORY[0x1E6977C10])
  {

    v467(v224, v225);
  }

  else
  {
    if (v393 != *MEMORY[0x1E6977C20])
    {
      v467(v224, v225);
      goto LABEL_82;
    }
  }

  return sub_1B0398EFC(v223, &qword_1EB6E5520, &qword_1B0ED0CE8);
}

uint64_t sub_1B042D30C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B042D344(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5558, &qword_1B0ED2728);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - v7;
  v9 = type metadata accessor for ConnectionState();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B038CA0C(v2, v12, type metadata accessor for ConnectionState);
  result = swift_getEnumCaseMultiPayload();
  if (result > 2)
  {
    if (result == 3)
    {
      return sub_1B038C704(v12, type metadata accessor for ConnectionState);
    }

    if (result == 4)
    {
      return result;
    }
  }

  else
  {
    sub_1B038C704(v12, type metadata accessor for ConnectionState);
  }

  v14 = *(v5 + 48);
  sub_1B038CA0C(v2, v8, type metadata accessor for ConnectionState);
  v15 = sub_1B0E43DF8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 16);
  v17(&v8[v14], a1, v15);
  v18 = (*(v16 + 88))(&v8[v14], v15);
  if (v18 == *MEMORY[0x1E6977C10])
  {
LABEL_6:
    sub_1B038C704(v2, type metadata accessor for ConnectionState);
    swift_storeEnumTagMultiPayload();
    (*(v16 + 8))(&v8[v14], v15);
    return sub_1B038C704(v8, type metadata accessor for ConnectionState);
  }

  if (v18 == *MEMORY[0x1E6977C00])
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1B038C704(v2, type metadata accessor for ConnectionState);
      v19 = static MonotonicTime.now()();
      v20 = type metadata accessor for UnauthenticatedStateWithTasks();
      *&v2[*(v20 + 28)] = MEMORY[0x1E69E7CC0];
      *v2 = a2;
      *(v2 + 1) = v19;
      v21 = *(v20 + 24);
      type metadata accessor for UnauthenticatedState();
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v22 = v8;
      goto LABEL_15;
    }
  }

  else if (v18 == *MEMORY[0x1E6977C20])
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload())
  {
    return sub_1B0398EFC(v8, &qword_1EB6E5558, &qword_1B0ED2728);
  }

  sub_1B038C704(v2, type metadata accessor for ConnectionState);
  v17(v2, a1, v15);
  swift_storeEnumTagMultiPayload();
  v22 = v8;
LABEL_15:
  sub_1B038C704(v22, type metadata accessor for ConnectionState);
  return (*(v16 + 8))(&v8[v14], v15);
}

void sub_1B042D734(uint64_t a1)
{
  v3 = type metadata accessor for ConnectionState();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v17 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = v17 - v11;
  v13 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  sub_1B038C9A4(v1 + v13, v12, type metadata accessor for ConnectionState);
  v14 = _s15IMAP2Connection0B5StateO21__derived_enum_equalsySbAC_ACtFZ_0(a1, v12);
  sub_1B038D690(v12, type metadata accessor for ConnectionState);
  if ((v14 & 1) == 0)
  {
    sub_1B038C9A4(a1, v10, type metadata accessor for ConnectionState);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      memcpy(v22, v10, sizeof(v22));
      sub_1B038C9A4(v1 + v13, v7, type metadata accessor for ConnectionState);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        memcpy(v19, v7, sizeof(v19));
        v20[8] = *&v22[320];
        v20[9] = *&v22[336];
        v21 = *&v22[352];
        v20[4] = *&v22[256];
        v20[5] = *&v22[272];
        v20[6] = *&v22[288];
        v20[7] = *&v22[304];
        v20[0] = *&v22[192];
        v20[1] = *&v22[208];
        v20[2] = *&v22[224];
        v20[3] = *&v22[240];
        if (sub_1B0BE2780(v20) == 1)
        {
          sub_1B03DB9A4(v20);
          sub_1B0BE278C(v22);
          v17[8] = *&v19[320];
          v17[9] = *&v19[336];
          v18 = *&v19[352];
          v17[4] = *&v19[256];
          v17[5] = *&v19[272];
          v17[6] = *&v19[288];
          v17[7] = *&v19[304];
          v17[0] = *&v19[192];
          v17[1] = *&v19[208];
          v17[2] = *&v19[224];
          v17[3] = *&v19[240];
          if (sub_1B0BE2780(v17) == 1)
          {
            sub_1B03DB9A4(v17);
            sub_1B0BE278C(v19);
            return;
          }

          v15 = v19;
        }

        else
        {
          sub_1B0BE278C(v19);
          v15 = v22;
        }

        sub_1B0BE278C(v15);
      }

      else
      {
        sub_1B0BE278C(v22);
        sub_1B038D690(v7, type metadata accessor for ConnectionState);
      }
    }

    else
    {
      sub_1B038D690(v10, type metadata accessor for ConnectionState);
    }

    v16 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_enqueuedEvents;
    swift_beginAccess();
    if (*(v1 + v16))
    {
      sub_1B042DA54(a1);
    }

    else
    {
      *(v1 + v16) = MEMORY[0x1E69E7CC0];
      sub_1B042DA54(a1);
      sub_1B044DBD8();
    }
  }
}

uint64_t sub_1B042DA54(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5470, &unk_1B0ED0460);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v100 = (&v96 - v6);
  v102 = type metadata accessor for ConnectionEvent(0);
  v7 = *(*(v102 - 8) + 64);
  MEMORY[0x1EEE9AC00](v102);
  v101 = (&v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v103 = _s6LoggerVMa_0();
  v9 = *(*(v103 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v103);
  v104 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v99 = &v96 - v12;
  v13 = type metadata accessor for ConnectionState();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v106 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = (&v96 - v18);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v96 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5478, &unk_1B0ED2770);
  v23 = v22 - 8;
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v96 - v25;
  sub_1B044C2EC();
  v27 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  v28 = *(v23 + 56);
  v107 = a1;
  sub_1B038C9A4(a1, v26, type metadata accessor for ConnectionState);
  v29 = v1;
  v105 = v27;
  v30 = v28;
  sub_1B038C9A4(v29 + v27, &v26[v28], type metadata accessor for ConnectionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v44 = v101;
    sub_1B038C9A4(&v26[v30], v19, type metadata accessor for ConnectionState);
    v45 = *v19;
    v46 = v19[1];
    v47 = v19[2];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v97 = static MonotonicTime.now()();
      v98 = v47;
      *v44 = v45;
      v44[1] = v46;
      v44[2] = v47;
      type metadata accessor for ConnectionEvent.FailureReason(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v99 = v26;
      v48 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_recentErrors;
      v2 = v29;
      swift_beginAccess();
      v49 = v100;
      sub_1B038C9A4(v44, v100, type metadata accessor for ConnectionEvent);
      sub_1B0BD67B0(v45, v46, v47);
      v102 = v30;
      sub_1B0BDD224(v97, v49);
      sub_1B0398EFC(v49, &qword_1EB6E5470, &unk_1B0ED0460);
      sub_1B038D690(v44, type metadata accessor for ConnectionEvent);
      swift_endAccess();
      v50 = swift_allocObject();
      *(v50 + 16) = *(v2 + v48);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      *(v50 + 24) = *ConnectionID.invalid.unsafeMutableAddressor();
      v51 = MEMORY[0x1E69E7CD0];
      *(v50 + 32) = MEMORY[0x1E69E7CD0];
      *(v50 + 40) = v51;
      sub_1B0BDAD70(v50 | 0x1000000000000000);

      v52 = *(*(v2 + 16) + OBJC_IVAR____TtC15IMAP2Connection10Connection_connection);
      sub_1B0E43E28();
      sub_1B0BD1488(v45, v46, v98);
      v53 = v99;
      sub_1B038D690(v99, type metadata accessor for ConnectionState);
      v54 = v53 + v102;
      goto LABEL_23;
    }

    sub_1B0BD1488(v45, v46, v47);
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload != 2)
  {
LABEL_11:
    v2 = v29;
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      v60 = swift_getEnumCaseMultiPayload();
      v61 = v106;
      if (v60 == 4)
      {
        v62 = *(*(v29 + 16) + OBJC_IVAR____TtC15IMAP2Connection10Connection_connection);
        sub_1B0E43E28();
        sub_1B038D690(v26, type metadata accessor for ConnectionState);
      }

      else
      {
        sub_1B0398EFC(v26, &qword_1EB6E5478, &unk_1B0ED2770);
      }

      v63 = v107;
      goto LABEL_24;
    }

    v54 = &v26[v30];
    goto LABEL_23;
  }

  v102 = v28;
  sub_1B038C9A4(&v26[v28], v21, type metadata accessor for ConnectionState);
  memcpy(v112, v21, sizeof(v112));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = v26;
    v33 = v29 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
    v34 = v99;
    sub_1B038C9A4(v29 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v99, _s6LoggerVMa_0);

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v35 = sub_1B0E43988();
    v36 = sub_1B0E439A8();
    (*(*(v36 - 8) + 8))(v34, v36);
    v37 = sub_1B0E458D8();
    if (os_log_type_enabled(v35, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *&v108[0] = v39;
      *v38 = 68158210;
      *(v38 + 4) = 2;
      *(v38 + 8) = 256;
      v40 = v33 + *(v103 + 20);
      *(v38 + 10) = *v40;

      *(v38 + 11) = 2082;
      v41 = ConnectionID.debugDescription.getter(*(v40 + 4));
      v43 = sub_1B0399D64(v41, v42, v108);

      *(v38 + 13) = v43;
      _os_log_impl(&dword_1B0389000, v35, v37, "[%.*hhx-%{public}s] Connection did authenticate.", v38, 0x15u);
      __swift_destroy_boxed_opaque_existential_0Tm(v39);
      MEMORY[0x1B272C230](v39, -1, -1);
      MEMORY[0x1B272C230](v38, -1, -1);
    }

    else
    {
    }

    v64 = *v112;
    v65 = Capability.idle.unsafeMutableAddressor();
    v66 = *v65;
    v67 = v65[1];
    v68 = v65[2];
    v69 = *(v65 + 24);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v70 = sub_1B039F8EC(v66, v67, v68, v69, v64);

    v71 = v2 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_idle;
    result = swift_beginAccess();
    if (!*(v71 + 40))
    {
      __break(1u);
      return result;
    }

    if (v70)
    {
      v73 = 2;
    }

    else
    {
      v73 = 1;
    }

    sub_1B0C09438(v73);
    swift_endAccess();
    v74 = swift_allocObject();
    *(v74 + 16) = v64;
    *(v74 + 136) = *&v112[120];
    *(v74 + 152) = *&v112[136];
    *(v74 + 168) = *&v112[152];
    *(v74 + 184) = *&v112[168];
    *(v74 + 72) = *&v112[56];
    *(v74 + 88) = *&v112[72];
    *(v74 + 104) = *&v112[88];
    *(v74 + 120) = *&v112[104];
    *(v74 + 24) = *&v112[8];
    *(v74 + 40) = *&v112[24];
    *(v74 + 56) = *&v112[40];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B039F420(&v112[8], v108);
    sub_1B0446050(v74);

    sub_1B0BE278C(v112);
    sub_1B038D690(v32, type metadata accessor for ConnectionState);
    v54 = v32 + v102;
    goto LABEL_23;
  }

  v55 = *(v21 + 21);
  v108[8] = *(v21 + 20);
  v108[9] = v55;
  v109 = *(v21 + 176);
  v56 = *(v21 + 17);
  v108[4] = *(v21 + 16);
  v108[5] = v56;
  v57 = *(v21 + 19);
  v108[6] = *(v21 + 18);
  v108[7] = v57;
  v58 = *(v21 + 13);
  v108[0] = *(v21 + 12);
  v108[1] = v58;
  v59 = *(v21 + 15);
  v108[2] = *(v21 + 14);
  v108[3] = v59;
  if (!sub_1B0BE2780(v108))
  {
    v87 = sub_1B03DB9A4(v108);
    v88 = *v87;
    if (*v87)
    {
      v89 = v26;
      v91 = v87[3];
      v90 = v87[4];
      v93 = v87[1];
      v92 = v87[2];
      v94 = swift_allocObject();
      *(v94 + 16) = v88;
      *(v94 + 24) = v93;
      *(v94 + 32) = v92;
      *(v94 + 40) = v91;
      *(v94 + 48) = v90;
      sub_1B0BE2E00(&v112[192], v110);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0B6DCB0(v92, v91, v90);
      v2 = v29;
      sub_1B0446050(v94 | 0x5000000000000000);

      sub_1B0B6DCF0(v92, v91, v90);
      sub_1B0BE278C(v112);
      sub_1B038D690(&v89[v102], type metadata accessor for ConnectionState);
      v54 = v89;
      goto LABEL_23;
    }

    v110[8] = *&v112[320];
    v110[9] = *&v112[336];
    v111 = *&v112[352];
    v110[4] = *&v112[256];
    v110[5] = *&v112[272];
    v110[6] = *&v112[288];
    v110[7] = *&v112[304];
    v110[0] = *&v112[192];
    v110[1] = *&v112[208];
    v110[2] = *&v112[224];
    v110[3] = *&v112[240];
    v95 = sub_1B03DB9A4(v110);
    sub_1B0BE2DA8(*v95, *(v95 + 8), *(v95 + 16), *(v95 + 24), *(v95 + 32));
  }

  sub_1B0BE278C(v112);
  sub_1B038D690(&v26[v102], type metadata accessor for ConnectionState);
  v54 = v26;
LABEL_23:
  sub_1B038D690(v54, type metadata accessor for ConnectionState);
  v61 = v106;
  v63 = v107;
LABEL_24:
  sub_1B038C9A4(v2 + v105, v61, type metadata accessor for ConnectionState);
  v75 = ConnectionState.mailboxSelectionPayload(old:)(v63);
  sub_1B038D690(v61, type metadata accessor for ConnectionState);
  if ((~v75 & 0xF000000000000007) != 0)
  {
    v76 = v2 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
    v77 = v104;
    sub_1B038C9A4(v2 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v104, _s6LoggerVMa_0);

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v78 = sub_1B0E43988();
    v79 = sub_1B0E439A8();
    (*(*(v79 - 8) + 8))(v77, v79);
    v80 = sub_1B0E458D8();
    if (os_log_type_enabled(v78, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      *v112 = v82;
      *v81 = 68158210;
      *(v81 + 4) = 2;
      *(v81 + 8) = 256;
      v83 = v76 + *(v103 + 20);
      *(v81 + 10) = *v83;

      *(v81 + 11) = 2082;
      v84 = ConnectionID.debugDescription.getter(*(v83 + 4));
      v86 = sub_1B0399D64(v84, v85, v112);

      *(v81 + 13) = v86;
      _os_log_impl(&dword_1B0389000, v78, v80, "[%.*hhx-%{public}s] Mailbox selection changed.", v81, 0x15u);
      __swift_destroy_boxed_opaque_existential_0Tm(v82);
      MEMORY[0x1B272C230](v82, -1, -1);
      MEMORY[0x1B272C230](v81, -1, -1);
    }

    else
    {
    }

    sub_1B0446050(v75);
    sub_1B0BE2D94(v75);
  }

  sub_1B0BDC398();
  return sub_1B0446050(0x8000000000000010);
}

uint64_t sub_1B042E67C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return swift_deallocObject();
}

uint64_t sub_1B042E6C4()
{
  v1 = v0[2];

  if (v0[6])
  {
    if ((~v0[4] & 0xF000000000000007) != 0)
    {
      sub_1B0447F14(v0[4]);
      v2 = v0[6];
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1B042E724()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[10];

  v6 = v0[12];

  v7 = v0[14];

  v8 = v0[16];

  v9 = v0[18];

  v10 = v0[20];

  v11 = v0[22];

  v12 = v0[24];

  return swift_deallocObject();
}