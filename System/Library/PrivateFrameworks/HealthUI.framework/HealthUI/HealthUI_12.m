uint64_t sub_1C3CE2958(uint64_t a1, void *a2, char a3, uint64_t a4, unint64_t a5, void *a6, const char *a7, uint64_t a8, const char *a9, unint64_t *a10, uint64_t (*a11)(uint64_t))
{
  v57 = a4;
  v16 = sub_1C3D1EDA4();
  v58 = *(v16 - 1);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v53 - v20;
  if (a3)
  {
    sub_1C3D1ED64();
    sub_1C3CB4764(a2, 1);

    v22 = sub_1C3D1ED84();
    v23 = sub_1C3D204F4();

    sub_1C3C7DFB8(a2, 1);
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *&v60 = v55;
      *v24 = 136446722;
      v25 = sub_1C3D20CD4();
      v27 = sub_1C3C22C28(v25, v26, &v60);
      v56 = v16;
      v28 = a6;
      v29 = v27;

      *(v24 + 4) = v29;
      a6 = v28;
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_1C3C22C28(v57, a5, &v60);
      *(v24 + 22) = 2114;
      v30 = a2;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 24) = v31;
      v32 = v54;
      *v54 = v31;
      _os_log_impl(&dword_1C3942000, v22, v23, "[%{public}s.%s] Query failed with error: %{public}@", v24, 0x20u);
      sub_1C3CE4418(v32, sub_1C3C346D8);
      MEMORY[0x1C69321D0](v32, -1, -1);
      v33 = v55;
      swift_arrayDestroy();
      MEMORY[0x1C69321D0](v33, -1, -1);
      MEMORY[0x1C69321D0](v24, -1, -1);

      (*(v58 + 8))(v18, v56);
    }

    else
    {

      (*(v58 + 8))(v18, v16);
    }

    v60 = 0u;
    v61 = 0u;
    (a6)(&v60, a2);
    v50 = MEMORY[0x1E69E6720];
    v51 = MEMORY[0x1E69E7CA0] + 8;
  }

  else
  {
    v55 = a10;
    v56 = a11;

    sub_1C3D1ED64();
    sub_1C3CB4764(a2, 0);

    v34 = sub_1C3D1ED84();
    v35 = sub_1C3D204D4();

    sub_1C3C7DFB8(a2, 0);
    v36 = os_log_type_enabled(v34, v35);
    v37 = MEMORY[0x1E69E7CA0];
    if (v36)
    {
      v53[0] = a9;
      v38 = swift_slowAlloc();
      v53[1] = a7;
      v39 = v38;
      v40 = swift_slowAlloc();
      v54 = a6;
      v41 = v40;
      *&v60 = v40;
      *v39 = 136446722;
      v42 = sub_1C3D20CD4();
      v44 = sub_1C3C22C28(v42, v43, &v60);

      *(v39 + 4) = v44;
      *(v39 + 12) = 2080;
      *(v39 + 14) = sub_1C3C22C28(v57, a5, &v60);
      *(v39 + 22) = 2080;
      v59 = a2[2];
      v45 = sub_1C3D20A14();
      v47 = sub_1C3C22C28(v45, v46, &v60);

      *(v39 + 24) = v47;
      _os_log_impl(&dword_1C3942000, v34, v35, v53[0], v39, 0x20u);
      v37 = MEMORY[0x1E69E7CA0];
      swift_arrayDestroy();
      v48 = v41;
      a6 = v54;
      MEMORY[0x1C69321D0](v48, -1, -1);
      MEMORY[0x1C69321D0](v39, -1, -1);
    }

    (*(v58 + 8))(v21, v16);
    sub_1C3CE43B4(0, v55, v56, MEMORY[0x1E69E62F8]);
    *(&v61 + 1) = v49;
    *&v60 = a2;
    (a6)(&v60, 0);
    v50 = MEMORY[0x1E69E6720];
    v51 = v37 + 8;
  }

  return sub_1C3CB41C0(&v60, &qword_1EC0810F0, v51, v50, sub_1C396C43C);
}

id sub_1C3CE2F8C(uint64_t a1)
{
  sub_1C396C578(a1, v4);
  if (v5)
  {
    sub_1C3CE43B4(0, &unk_1EC087630, sub_1C3C47190, MEMORY[0x1E69E62F8]);
    if (swift_dynamicCast())
    {
      v1 = sub_1C3CE3630(v3);

      return v1;
    }
  }

  else
  {
    sub_1C3CB41C0(v4, &qword_1EC0810F0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1C396C43C);
  }

  return 0;
}

uint64_t sub_1C3CE3180@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v49 = a1;
  v47 = a2;
  sub_1C3C29A0C();
  v45 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v46 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v44 = &v44 - v8;
  v53 = sub_1C3D1E3C4();
  v9 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C3D1E1E4();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = sub_1C3D1FE54();
  v52 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v51 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v44 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v50 = &v44 - v19;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v44 - v22;
  v24 = [a1 startDate];
  sub_1C3D1E1A4();

  v25 = OBJC_IVAR___HKBalanceChartDataSource_gregorianCalendar;
  v26 = *(v9 + 16);
  v48 = v9 + 16;
  v27 = v53;
  v26(v11, v3 + OBJC_IVAR___HKBalanceChartDataSource_gregorianCalendar, v53);
  sub_1C3D1FE14();
  v28 = [v49 endDate];
  sub_1C3D1E1A4();

  v29 = v23;
  v30 = v27;
  v31 = v52;
  v26(v11, v3 + v25, v30);
  v32 = v50;
  sub_1C3D1FE14();
  v33 = v51;
  sub_1C3D1FDD4();
  sub_1C3D1FDF4();
  v34 = *(v31 + 8);
  v34(v33, v13);
  v34(v17, v13);
  sub_1C3CE41C8(&qword_1EC086290, MEMORY[0x1E696B418]);
  result = sub_1C3D20004();
  if (result)
  {
    v36 = *(v31 + 32);
    v37 = v44;
    v36(v44, v29, v13);
    v38 = v45;
    v36((v37 + *(v45 + 48)), v32, v13);
    v39 = v46;
    sub_1C3C7E020(v37, v46, sub_1C3C29A0C);
    v40 = *(v38 + 48);
    v41 = v47;
    v36(v47, v39, v13);
    v34((v39 + v40), v13);
    sub_1C3CE4478(v37, v39);
    v42 = *(v38 + 48);
    sub_1C3C29314();
    v36(&v41[*(v43 + 36)], (v39 + v42), v13);
    return (v34)(v39, v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1C3CE3630(uint64_t a1)
{
  sub_1C3CE43B4(0, &qword_1EC085770, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v19 - v4;
  v6 = sub_1C3D1E1E4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v19 - v11;
  v19[0] = [objc_allocWithZone(HKGraphSeriesDataBlock) init];
  sub_1C3D1E1B4();
  sub_1C3D1E354();
  v13 = *(v7 + 8);
  v13(v9, v6);
  v14 = *(v7 + 48);
  if (v14(v5, 1, v6) == 1)
  {
    sub_1C3D1E1B4();
    v15 = v14(v5, 1, v6);
    if (v15 != 1)
    {
      v15 = sub_1C3CB41C0(v5, &qword_1EC085770, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1C3CE43B4);
    }
  }

  else
  {
    v15 = (*(v7 + 32))(v12, v5, v6);
  }

  MEMORY[0x1EEE9AC00](v15);
  v19[-2] = v1;
  v19[-1] = v12;
  if (sub_1C3C288FC(sub_1C3CE4380, &v19[-4], a1) >> 62)
  {
    sub_1C3C315FC();
    sub_1C3D20954();
  }

  else
  {

    sub_1C3D20A64();
    sub_1C3C315FC();
  }

  sub_1C3C315FC();
  v16 = sub_1C3D202A4();

  v17 = v19[0];
  [v19[0] setChartPoints_];

  v13(v12, v6);
  return v17;
}

uint64_t sub_1C3CE3998@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void (*a3)()@<X2>, uint64_t *a4@<X8>)
{
  v57 = a3;
  v60 = a2;
  v56 = a4;
  v5 = sub_1C3D1FE54();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C29314();
  v51 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C3D1E1E4();
  v53 = *(v12 - 8);
  v54 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v48 = v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v49 = v45 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v59 = v45 - v17;
  v18 = objc_opt_self();
  v19 = a1[3];
  v55 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v19);
  sub_1C3D1EA14();
  v20 = *(v6 + 16);
  v20(v8, v11, v5);
  sub_1C3CE4418(v11, sub_1C3C29314);
  v21 = sub_1C3D1FE34();
  v22 = *(v6 + 8);
  v52 = v5;
  v58 = v6 + 8;
  v50 = v22;
  v22(v8, v5);
  v23 = OBJC_IVAR___HKBalanceChartDataSource_gregorianCalendar;
  v24 = sub_1C3D1E364();
  v47 = v18;
  v25 = [v18 hk:v21 dateOnDayIndex:0 atHour:v24 calendar:?];

  v26 = v59;
  sub_1C3D1E1A4();

  if ((sub_1C3D1E194() & 1) == 0)
  {
    result = (*(v53 + 8))(v26, v54);
    v43 = 0;
    goto LABEL_8;
  }

  v45[1] = v23;
  v27 = v55;
  v46 = v20;
  __swift_project_boxed_opaque_existential_0(v55, v55[3]);
  sub_1C3D1EA14();
  v28 = v52;
  v20(v8, v11, v52);
  v57 = sub_1C3C29314;
  sub_1C3CE4418(v11, sub_1C3C29314);
  v29 = sub_1C3D1FE34();
  v30 = v50;
  v50(v8, v28);
  v31 = v29;
  __swift_project_boxed_opaque_existential_0(v27, v27[3]);
  sub_1C3D1EA14();
  v46(v8, &v11[*(v51 + 36)], v28);
  sub_1C3CE4418(v11, v57);
  v32 = sub_1C3D1FE34();
  result = v30(v8, v28);
  if (v31 > v32)
  {
    __break(1u);
    goto LABEL_10;
  }

  v34 = ceil((v32 - v31) * 0.5 + v31);
  if ((*&v34 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v34 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v34 < 9.22337204e18)
  {
    v35 = v34;
    v36 = sub_1C3D1E364();
    v37 = [v47 hk:v35 noonWithDayIndex:v36 calendar:?];

    v38 = v49;
    sub_1C3D1E1A4();

    sub_1C3C4D7A4(v55, v61);
    v40 = v53;
    v39 = v54;
    v41 = v48;
    (*(v53 + 16))(v48, v38, v54);
    v42 = objc_allocWithZone(type metadata accessor for BalanceChartPoint());
    v43 = sub_1C3C4ED90(v61, v41);
    v44 = *(v40 + 8);
    v44(v38, v39);
    result = (v44)(v59, v39);
LABEL_8:
    *v56 = v43;
    return result;
  }

LABEL_12:
  __break(1u);
  return result;
}

id BalanceChartDataSource.__allocating_init(dataType:healthStore:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithDataType:a1 healthStore:a2];

  return v5;
}

id BalanceChartDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BalanceChartDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BalanceChartDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1C3CE4134()
{
  if (!qword_1EC087610)
  {
    sub_1C3D1E8F4();
    sub_1C3CE41C8(&qword_1EC087618, MEMORY[0x1E69A2EB8]);
    v0 = sub_1C3D1E914();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC087610);
    }
  }
}

uint64_t sub_1C3CE41C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C3CE42CC()
{
  result = sub_1C3D1E3C4();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1C3CE43B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1C3CE4418(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C3CE4478(uint64_t a1, uint64_t a2)
{
  sub_1C3C29A0C();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C3CE44DC(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    v9 = sub_1C3D20184();
    if (v10)
    {
      a2 = v8;
    }

    else
    {
      a2 = v9;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return MEMORY[0x1EEE69100](a1, a2, a3, a4);
}

id AudiogramAnalyticsManager.__allocating_init(healthStore:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1C3CE5060(a1);

  return v4;
}

uint64_t AudiogramAnalyticsManager.submitPerformanceAnalytics(metric:)(void *a1)
{
  type metadata accessor for AudiogramPerformanceAnalytics.Event();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = &protocol witness table for AudiogramPerformanceAnalytics.Metric;
  v4 = a1;

  sub_1C3CE4D50(v5, v1);
}

id AudiogramAnalyticsManager.init(healthStore:)(void *a1)
{
  v2 = sub_1C3CE5060(a1);

  return v2;
}

void sub_1C3CE4730(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR___HKAudiogramAnalyticsManager_uuid);
    v4 = *(Strong + OBJC_IVAR___HKAudiogramAnalyticsManager_uuid + 8);
    v6 = *(Strong + OBJC_IVAR___HKAudiogramAnalyticsManager_eventSubmissionManager);
    v7 = Strong;
    v8 = swift_allocObject();
    *(v8 + 16) = v5;
    *(v8 + 24) = v4;
    aBlock[4] = sub_1C3CE54C8;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C3C37218;
    aBlock[3] = &block_descriptor_11;
    v9 = _Block_copy(aBlock);

    v10 = v6;

    [v10 submitEvent:a2 completion:v9];
    _Block_release(v9);
  }

  else
  {
    if (qword_1EC081090 != -1)
    {
      swift_once();
    }

    v11 = sub_1C3D1EDA4();
    __swift_project_value_buffer(v11, qword_1EC08DBE8);
    v10 = sub_1C3D1ED84();
    v12 = sub_1C3D204F4();
    if (os_log_type_enabled(v10, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1C3942000, v10, v12, "[AudiogramAnalytics] self found nil when submitting analytics", v13, 2u);
      MEMORY[0x1C69321D0](v13, -1, -1);
    }
  }
}

void sub_1C3CE4924(char a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (a1)
  {
    if (qword_1EC081090 != -1)
    {
      swift_once();
    }

    v6 = sub_1C3D1EDA4();
    __swift_project_value_buffer(v6, qword_1EC08DBE8);

    oslog = sub_1C3D1ED84();
    v7 = sub_1C3D20514();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v22 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_1C3C22C28(a3, a4, &v22);
      _os_log_impl(&dword_1C3942000, oslog, v7, "[AudiogramAnalytics] %s Successfully submitted analytics", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x1C69321D0](v9, -1, -1);
      v10 = v8;
LABEL_16:
      MEMORY[0x1C69321D0](v10, -1, -1);

      return;
    }
  }

  else
  {
    if (qword_1EC081090 != -1)
    {
      swift_once();
    }

    v12 = sub_1C3D1EDA4();
    __swift_project_value_buffer(v12, qword_1EC08DBE8);

    v13 = a2;
    oslog = sub_1C3D1ED84();
    v14 = sub_1C3D204F4();

    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22 = v17;
      *v15 = 136315394;
      *(v15 + 4) = sub_1C3C22C28(a3, a4, &v22);
      *(v15 + 12) = 2112;
      if (a2)
      {
        v18 = a2;
        v19 = _swift_stdlib_bridgeErrorToNSError();
        v20 = v19;
      }

      else
      {
        v19 = 0;
        v20 = 0;
      }

      *(v15 + 14) = v19;
      *v16 = v20;
      _os_log_impl(&dword_1C3942000, oslog, v14, "[AudiogramAnalytics] %s Failed to submit analytics error: %@", v15, 0x16u);
      sub_1C3C3467C(v16);
      MEMORY[0x1C69321D0](v16, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x1C69321D0](v17, -1, -1);
      v10 = v15;
      goto LABEL_16;
    }
  }
}

id AudiogramAnalyticsManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AudiogramAnalyticsManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C3CE4D50(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3D1FD54();
  v17 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C3D1FD74();
  v7 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + OBJC_IVAR___HKAudiogramAnalyticsManager_queue);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a1;
  v11[4] = &off_1F42FBA78;
  aBlock[4] = sub_1C3CE54A4;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C3C95F84;
  aBlock[3] = &block_descriptor_20;
  v12 = _Block_copy(aBlock);

  sub_1C3D1FD64();
  v18 = MEMORY[0x1E69E7CC0];
  v13 = MEMORY[0x1E69E7F60];
  sub_1C3CE54D0(&qword_1EC087078, MEMORY[0x1E69E7F60]);
  sub_1C3CE5518(0, &qword_1EC087080, v13);
  sub_1C3CE556C(&qword_1EC087088, &qword_1EC087080, v13);
  sub_1C3D207B4();
  MEMORY[0x1C692FC30](0, v9, v6, v12);
  _Block_release(v12);
  (*(v17 + 8))(v6, v4);
  (*(v7 + 8))(v9, v16);
}

id sub_1C3CE5060(void *a1)
{
  v2 = v1;
  v27 = a1;
  ObjectType = swift_getObjectType();
  v3 = sub_1C3D205B4();
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C3D20594();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C3D1FD74();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1C3D1E224();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &v2[OBJC_IVAR___HKAudiogramAnalyticsManager_uuid];
  sub_1C3D1E214();
  v12 = sub_1C3D1E1F4();
  v14 = v13;
  (*(v8 + 8))(v10, v7);
  *v11 = v12;
  v11[1] = v14;
  v23 = sub_1C3C27CB4(0, &qword_1EC087070);
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_1C3D20834();

  v30 = 0xD000000000000025;
  v31 = 0x80000001C3D87D50;
  v15 = *v11;
  v16 = v11[1];

  MEMORY[0x1C692F800](v15, v16);

  sub_1C3D1FD64();
  v30 = MEMORY[0x1E69E7CC0];
  v17 = MEMORY[0x1E69E8030];
  sub_1C3CE54D0(&qword_1EC087680, MEMORY[0x1E69E8030]);
  sub_1C3CE5518(0, &qword_1EC087688, v17);
  sub_1C3CE556C(&unk_1EC087690, &qword_1EC087688, v17);
  sub_1C3D207B4();
  (*(v25 + 104))(v24, *MEMORY[0x1E69E8090], v26);
  *&v2[OBJC_IVAR___HKAudiogramAnalyticsManager_queue] = sub_1C3D205E4();
  v18 = v27;
  *&v2[OBJC_IVAR___HKAudiogramAnalyticsManager_healthStore] = v27;
  v19 = v18;
  v20 = HKLogHearingCategory();
  v21 = [objc_allocWithZone(MEMORY[0x1E696BF00]) initWithLoggingCategory:v20 healthDataSource:v19];

  *&v2[OBJC_IVAR___HKAudiogramAnalyticsManager_eventSubmissionManager] = v21;
  v29.receiver = v2;
  v29.super_class = ObjectType;
  return objc_msgSendSuper2(&v29, sel_init);
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C3CE54D0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C3CE5518(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C3D20304();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C3CE556C(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1C3CE5518(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C3CE55C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C3D1DC54();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 32);
  sub_1C3D1DC04();

  v9(v8, a3);

  return (*(v6 + 8))(v8, v5);
}

id LevelDateRangeDataSourceDelegate.__allocating_init(baseDisplayType:lowerBound:upperBound:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  v11 = objc_allocWithZone(v5);
  *&v11[OBJC_IVAR____TtC8HealthUI32LevelDateRangeDataSourceDelegate_baseDisplayType] = a1;
  v12 = &v11[OBJC_IVAR____TtC8HealthUI32LevelDateRangeDataSourceDelegate_lowerBound];
  *v12 = a2;
  v12[8] = a3 & 1;
  v13 = &v11[OBJC_IVAR____TtC8HealthUI32LevelDateRangeDataSourceDelegate_upperBound];
  *v13 = a4;
  v13[8] = a5 & 1;
  v15.receiver = v11;
  v15.super_class = v5;
  return objc_msgSendSuper2(&v15, sel_init);
}

id LevelDateRangeDataSourceDelegate.init(baseDisplayType:lowerBound:upperBound:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  *&v5[OBJC_IVAR____TtC8HealthUI32LevelDateRangeDataSourceDelegate_baseDisplayType] = a1;
  v6 = &v5[OBJC_IVAR____TtC8HealthUI32LevelDateRangeDataSourceDelegate_lowerBound];
  *v6 = a2;
  v6[8] = a3 & 1;
  v7 = &v5[OBJC_IVAR____TtC8HealthUI32LevelDateRangeDataSourceDelegate_upperBound];
  *v7 = a4;
  v7[8] = a5 & 1;
  v9.receiver = v5;
  v9.super_class = type metadata accessor for LevelDateRangeDataSourceDelegate();
  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_1C3CE5800(void *a1, void *a2)
{
  v69 = a2;
  v3 = sub_1C3D1DC54();
  v68 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v71 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1C3D1DCF4();
  v70 = *(v67 - 8);
  v5 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v65 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v73 = &v59 - v7;
  v8 = sub_1C3D1E1E4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v64 = (&v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v59 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v59 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v72 = &v59 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v59 - v20;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v59 - v24;
  v26 = [a1 startDate];
  if (!v26)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v27 = v26;
  v61 = v3;
  sub_1C3D1E1A4();

  v28 = *(v9 + 32);
  v28(v25, v21, v8);
  v29 = [a1 endDate];
  if (!v29)
  {
    (*(v9 + 8))(v25, v8);
    return MEMORY[0x1E69E7CC0];
  }

  v62 = v25;
  v63 = v9;
  v30 = v29;
  sub_1C3D1E1A4();

  v31 = v72;
  v28(v72, v16, v8);
  v32 = objc_opt_self();
  v69 = [v32 configurationForZoomLevel_];
  v33 = [v69 seriesPointIntervalComponentsAtResolution_];
  v34 = v73;
  sub_1C3D1DCA4();

  result = [v32 defaultCalendar];
  v60 = result;
  if (result)
  {
    v36 = *(v63 + 16);
    v36(v13, v62, v8);
    v59 = v8;
    v36(v64, v31, v8);
    sub_1C3D1DC24();
    v37 = swift_allocObject();
    *(v37 + 16) = MEMORY[0x1E69E7CC0];
    v64 = (v37 + 16);
    v38 = sub_1C3D1DBE4();
    v39 = sub_1C3D1DC94();
    v40 = v70;
    v41 = v65;
    v42 = v67;
    (*(v70 + 16))(v65, v34, v67);
    v43 = (*(v40 + 80) + 24) & ~*(v40 + 80);
    v44 = v5 + v43;
    v45 = v42;
    v46 = (v44 + 7) & 0xFFFFFFFFFFFFFFF8;
    v47 = swift_allocObject();
    v48 = v66;
    *(v47 + 16) = v66;
    (*(v40 + 32))(v47 + v43, v41, v45);
    *(v47 + v46) = v37;
    aBlock[4] = sub_1C3CE5F50;
    aBlock[5] = v47;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C3CE55C4;
    aBlock[3] = &block_descriptor_21;
    v49 = _Block_copy(aBlock);
    v50 = v48;

    v51 = v60;
    [v60 hk:v38 enumerateDateInterval:v39 byDateComponents:v49 block:?];
    _Block_release(v49);

    v52 = v64;
    swift_beginAccess();
    v53 = *v52;
    if (*v52 >> 62)
    {
      sub_1C3C315FC();

      v54 = sub_1C3D20954();
    }

    else
    {
      swift_bridgeObjectRetain_n();
      sub_1C3D20A64();
      sub_1C3C315FC();
      v54 = v53;
    }

    v55 = v61;
    v56 = v68;

    (*(v56 + 8))(v71, v55);
    (*(v70 + 8))(v73, v45);
    v57 = *(v63 + 8);
    v58 = v59;
    v57(v72, v59);
    v57(v62, v58);

    return v54;
  }

  __break(1u);
  return result;
}

void sub_1C3CE5E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1C3CE60A4(a1, a4);
  swift_beginAccess();
  v7 = v6;
  MEMORY[0x1C692F8F0]();
  if (*((*(a5 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a5 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1C3D202C4();
  }

  sub_1C3D202F4();
  swift_endAccess();
}

void sub_1C3CE5F50(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_1C3D1DCF4() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  sub_1C3CE5E98(a1, a2, v8, v2 + v6, v7);
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1C3CE60A4(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v29 = sub_1C3D1E1E4();
  v3 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() countUnit];
  v7 = 0;
  if ((*(v2 + OBJC_IVAR____TtC8HealthUI32LevelDateRangeDataSourceDelegate_lowerBound + 8) & 1) == 0)
  {
    v8 = (v2 + OBJC_IVAR____TtC8HealthUI32LevelDateRangeDataSourceDelegate_lowerBound);
    v7 = [objc_opt_self() quantityWithUnit:v6 doubleValue:*v8];
  }

  v10 = *(v2 + OBJC_IVAR____TtC8HealthUI32LevelDateRangeDataSourceDelegate_upperBound + 8);
  v30 = v2;
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v9 = (v2 + OBJC_IVAR____TtC8HealthUI32LevelDateRangeDataSourceDelegate_upperBound);
    v11 = [objc_opt_self() quantityWithUnit:v6 doubleValue:*v9];
  }

  v12 = [objc_allocWithZone(HKInteractiveChartSinglePointData) init];
  [v12 setUnit_];
  if (v7)
  {
    [v7 doubleValueForUnit_];
  }

  else
  {
    v13 = -1.79769313e308;
  }

  [v12 setMinValue_];
  v27 = v6;
  if (v11)
  {
    [v11 doubleValueForUnit_];
  }

  else
  {
    v14 = 1.79769313e308;
  }

  [v12 setMaxValue_];
  [v12 setRepresentsRange_];
  [v12 setRecordCount_];
  v15 = sub_1C3D1DC94();
  [v12 setStatisticsInterval_];

  v16 = [objc_allocWithZone(HKQuantityTypeDataSourceValue) init];
  [v16 setMinQuantity_];
  [v16 setMaxQuantity_];
  sub_1C3D1DC34();
  v17 = sub_1C3D1E174();
  v18 = *(v3 + 8);
  v19 = v11;
  v20 = v29;
  v18(v5, v29);
  [v16 setStartDate_];

  sub_1C3D1DC14();
  v21 = sub_1C3D1E174();
  v18(v5, v20);
  [v16 setEndDate_];

  v22 = *(v30 + OBJC_IVAR____TtC8HealthUI32LevelDateRangeDataSourceDelegate_baseDisplayType);
  v23 = objc_allocWithZone(HKHealthChartPoint);
  v24 = v27;
  v25 = [v23 initWithDataSourceValue:v16 options:12 unit:v27 displayType:v22];
  [v25 setUserInfo_];

  return v25;
}

id LevelDateRangeDataSourceDelegate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LevelDateRangeDataSourceDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LevelDateRangeDataSourceDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t HKAddDataHeaderView.init(title:iconSystemImageName:iconImageColor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = 0;
  v6 = *(type metadata accessor for HKAddDataHeaderView() + 32);
  *(a3 + v6) = swift_getKeyPath();
  sub_1C3CE8FB4(0, &qword_1EC086908, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = sub_1C3D1FBA4();
  result = sub_1C3D1FAD4();
  *(a3 + 32) = result;
  return result;
}

uint64_t type metadata accessor for HKAddDataHeaderView()
{
  result = qword_1EC0877D8;
  if (!qword_1EC0877D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void HKAddDataHeaderView.init(title:bundledIconImage:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 32) = 0;
  v8 = *(type metadata accessor for HKAddDataHeaderView() + 32);
  *(a4 + v8) = swift_getKeyPath();
  sub_1C3CE8FB4(0, &qword_1EC086908, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  *a4 = a1;
  *(a4 + 8) = a2;
  v9 = [a3 imageWithRenderingMode_];
  v10 = sub_1C3D1FB74();

  *(a4 + 16) = v10;
  *(a4 + 24) = 1;
}

uint64_t HKAddDataHeaderView.body.getter()
{
  v1 = sub_1C3D1F6A4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3CE7AC0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v7 = sub_1C3D1F424();
  *(v7 + 1) = 0;
  v7[16] = 1;
  sub_1C3CE8798();
  sub_1C3CE6968(v0, &v7[*(v8 + 44)]);
  sub_1C3D1F684();
  sub_1C3CE8750(&qword_1EC0877C8, sub_1C3CE7AC0);
  sub_1C3D1FA44();
  (*(v2 + 8))(v4, v1);
  return sub_1C3CE8B10(v7, sub_1C3CE7AC0);
}

uint64_t sub_1C3CE6968@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  sub_1C3CE85D8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v6 = v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3CE833C(0);
  v72[0] = v7;
  MEMORY[0x1EEE9AC00](v7);
  v74 = v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v72 - v10;
  sub_1C3CE7BEC(0);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v73 = v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v72 - v16;
  sub_1C3D20374();
  v72[1] = sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v18 = sub_1C3D1FD14();
  v20 = v19;
  sub_1C3CE70BC(a1, &v99);
  v93 = v105;
  v94 = v106;
  v95 = v107;
  v89 = v101;
  v90 = v102;
  v91 = v103;
  v92 = v104;
  v87 = v99;
  v88 = v100;
  v97[6] = v105;
  v97[7] = v106;
  v97[8] = v107;
  v97[2] = v101;
  v97[3] = v102;
  v97[4] = v103;
  v97[5] = v104;
  v96 = v108;
  v98 = v108;
  v97[0] = v99;
  v97[1] = v100;
  sub_1C3CE8EE4(&v87, &v76, sub_1C3CE7D74);
  sub_1C3CE89C0(v97, sub_1C3CE7D74);
  v83 = v93;
  v84 = v94;
  v85 = v95;
  v86 = v96;
  v79 = v89;
  v80 = v90;
  v81 = v91;
  v82 = v92;
  v77 = v87;
  v78 = v88;
  *&v76 = v18;
  *(&v76 + 1) = v20;
  sub_1C3CE7CE0();
  sub_1C3CE8750(&qword_1EC0877E8, sub_1C3CE7CE0);
  sub_1C3D1FA34();
  v107 = v84;
  v108 = v85;
  v109 = v86;
  v103 = v80;
  v104 = v81;
  v105 = v82;
  v106 = v83;
  v99 = v76;
  v100 = v77;
  v101 = v78;
  v102 = v79;
  sub_1C3CE89C0(&v99, sub_1C3CE7CE0);
  sub_1C3D1FD14();
  sub_1C3D1F0F4();
  sub_1C3CE7C3C();
  v22 = &v17[*(v21 + 36)];
  v23 = v111;
  *v22 = v110;
  *(v22 + 1) = v23;
  *(v22 + 2) = v112;
  LOBYTE(v18) = sub_1C3D1F754();
  sub_1C3D1F014();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_1C3CE7C14(0);
  v33 = &v17[*(v32 + 36)];
  *v33 = v18;
  *(v33 + 1) = v25;
  *(v33 + 2) = v27;
  *(v33 + 3) = v29;
  *(v33 + 4) = v31;
  v33[40] = 0;
  LOBYTE(v18) = sub_1C3D1F764();
  sub_1C3D1F014();
  v34 = &v17[*(v13 + 36)];
  *v34 = v18;
  *(v34 + 1) = v35;
  *(v34 + 2) = v36;
  *(v34 + 3) = v37;
  *(v34 + 4) = v38;
  v34[40] = 0;
  v40 = *a1;
  v39 = a1[1];
  v41 = &v6[*(v4 + 36)];
  sub_1C3CE8638(0);
  v43 = *(v42 + 28);
  v44 = sub_1C3D1F934();
  (*(*(v44 - 8) + 56))(v41 + v43, 1, 1, v44);
  *v41 = swift_getKeyPath();
  *v6 = v40;
  *(v6 + 1) = v39;
  v6[16] = 0;
  *(v6 + 3) = MEMORY[0x1E69E7CC0];
  sub_1C3CE86A0();

  sub_1C3D1FA74();
  sub_1C3CE89C0(v6, sub_1C3CE85D8);
  v45 = sub_1C3D1F7B4();
  KeyPath = swift_getKeyPath();
  sub_1C3CE7F6C(0, &qword_1EC087780, sub_1C3CE8554, sub_1C3CE82C0, MEMORY[0x1E697E830]);
  v48 = &v11[*(v47 + 36)];
  *v48 = KeyPath;
  v48[1] = v45;
  v49 = [objc_opt_self() labelColor];
  v50 = sub_1C3D1FAD4();
  sub_1C3CE847C();
  *&v11[*(v51 + 36)] = v50;
  v52 = swift_getKeyPath();
  sub_1C3CE83F0();
  v54 = &v11[*(v53 + 36)];
  *v54 = v52;
  v54[8] = 1;
  LOBYTE(v52) = sub_1C3D1F764();
  sub_1C3D1F014();
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  sub_1C3CE8364(0);
  v64 = &v11[*(v63 + 36)];
  *v64 = v52;
  *(v64 + 1) = v56;
  *(v64 + 2) = v58;
  *(v64 + 3) = v60;
  *(v64 + 4) = v62;
  v64[40] = 0;
  sub_1C3D1FD14();
  sub_1C3D1F0F4();
  v65 = &v11[*(v72[0] + 36)];
  v66 = v77;
  *v65 = v76;
  *(v65 + 1) = v66;
  *(v65 + 2) = v78;
  v67 = v73;
  sub_1C3CE8EE4(v17, v73, sub_1C3CE7BEC);
  v68 = v74;
  sub_1C3976BF8(v11, v74);
  v69 = v75;
  sub_1C3CE8EE4(v67, v75, sub_1C3CE7BEC);
  sub_1C3CE7DB0(0, &qword_1EC0876C8, sub_1C3CE7BEC, sub_1C3CE833C);
  sub_1C3976BF8(v68, v69 + *(v70 + 48));
  sub_1C3CE8B10(v11, sub_1C3CE833C);
  sub_1C3CE89C0(v17, sub_1C3CE7BEC);
  sub_1C3CE8B10(v68, sub_1C3CE833C);
  sub_1C3CE89C0(v67, sub_1C3CE7BEC);
}

uint64_t sub_1C3CE70BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = [objc_opt_self() tertiarySystemBackgroundColor];
  v5 = sub_1C3D1FAD4();
  sub_1C3D1FD14();
  sub_1C3D1F0F4();
  *&v40[6] = v47;
  *&v40[22] = v48;
  *&v40[38] = v49;
  if (*(a1 + 24) == 1)
  {
    sub_1C3CE7454(&v28);
    v36 = v30;
    v37 = v31;
    v38 = v32;
    v34 = v28;
    v35 = v29;
    LOBYTE(v14) = 0;
    v39 = 0;
  }

  else
  {
    sub_1C3CE761C(&v41);
    LOBYTE(v28) = 1;
    v34 = v41;
    v35 = v42;
    v39 = 1;
  }

  sub_1C3CE7FF0(0);
  sub_1C3CE8198();
  sub_1C3CE8CF4(&qword_1EC0877F0, sub_1C3CE7FF0, sub_1C3CE8B70);
  sub_1C3CE8CF4(&qword_1EC087810, sub_1C3CE8198, sub_1C3CE8D70);
  sub_1C3D1F564();
  v36 = v43;
  v37 = v44;
  v38 = v45;
  v39 = v46;
  v34 = v41;
  v35 = v42;
  *v27 = v5;
  *&v27[8] = 256;
  *&v27[10] = *v40;
  *&v27[56] = *&v40[46];
  *&v27[42] = *&v40[32];
  *&v27[26] = *&v40[16];
  *&v18[31] = *&v27[16];
  v19 = *&v27[32];
  *&v18[23] = *v27;
  v28 = v41;
  v29 = v42;
  v33 = v46;
  v31 = v44;
  v32 = v45;
  v30 = v43;
  v20 = *&v27[48];
  v21 = v41;
  v26 = v46;
  v24 = v44;
  v25 = v45;
  v22 = v42;
  v23 = v43;
  v6 = *&v27[16];
  *a2 = *v27;
  *(a2 + 16) = v6;
  v7 = v19;
  v8 = v20;
  v9 = v22;
  v10 = v23;
  *(a2 + 64) = v21;
  *(a2 + 80) = v9;
  *(a2 + 32) = v7;
  *(a2 + 48) = v8;
  v11 = v24;
  v12 = v25;
  *(a2 + 144) = v26;
  *(a2 + 112) = v11;
  *(a2 + 128) = v12;
  *(a2 + 96) = v10;
  sub_1C3CE8EE4(v27, &v14, sub_1C3CE7E2C);
  sub_1C3CE8EE4(&v28, &v14, sub_1C3CE7F24);
  sub_1C3CE89C0(&v34, sub_1C3CE7F24);
  v14 = v5;
  v15 = 256;
  v16 = *v40;
  v17 = *&v40[16];
  *v18 = *&v40[32];
  *&v18[7] = *&v40[46];
  sub_1C3CE89C0(&v14, sub_1C3CE7E2C);
}

void sub_1C3CE7454(uint64_t a1@<X8>)
{
  v3 = sub_1C3D1FB94();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 16))
  {
    (*(v4 + 104))(v7, *MEMORY[0x1E6981630], v3, v5);

    v8 = sub_1C3D1FBD4();
    (*(v4 + 8))(v7, v3);
    sub_1C3D1FD14();
    sub_1C3D1F0F4();
    v17 = 1;
    v15 = v19;
    v16 = v18;
    v14 = v20;
    v9 = 1;
    v10 = *(v1 + 32);
    if (v10)
    {
    }

    else
    {
      v10 = sub_1C3D1FB34();
    }

    v12 = v15;
    v11 = v16;
    v13 = v14;
  }

  else
  {
    v8 = 0;
    v10 = 0;
    v9 = 0;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
  }

  *a1 = v8;
  *(a1 + 8) = 0;
  *(a1 + 16) = v9;
  *(a1 + 24) = v11;
  *(a1 + 40) = v12;
  *(a1 + 56) = v13;
  *(a1 + 72) = v10;
}

uint64_t sub_1C3CE761C@<X0>(uint64_t *a1@<X8>)
{
  sub_1C3CE8F4C(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3CE8F80(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 16))
  {

    sub_1C3D1F444();
    v9 = sub_1C3D1F454();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
    v10 = sub_1C3D1FBB4();
    sub_1C3CE89C0(v8, sub_1C3CE8F80);
    v11 = *(v1 + 32);
    if (!v11)
    {
      v11 = sub_1C3D1FB34();
    }

    v12 = sub_1C3D1F814();
    (*(*(v12 - 8) + 56))(v5, 1, 1, v12);

    v13 = sub_1C3D1F844();

    sub_1C3CE89C0(v5, sub_1C3CE8F4C);
    result = swift_getKeyPath();
  }

  else
  {
    v10 = 0;
    v11 = 0;
    result = 0;
    v13 = 0;
  }

  *a1 = v10;
  a1[1] = v11;
  a1[2] = result;
  a1[3] = v13;
  return result;
}

uint64_t sub_1C3CE7820()
{
  v1 = sub_1C3D1F6A4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3CE7AC0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v7 = sub_1C3D1F424();
  *(v7 + 1) = 0;
  v7[16] = 1;
  sub_1C3CE8798();
  sub_1C3CE6968(v0, &v7[*(v8 + 44)]);
  sub_1C3D1F684();
  sub_1C3CE8750(&qword_1EC0877C8, sub_1C3CE7AC0);
  sub_1C3D1FA44();
  (*(v2 + 8))(v4, v1);
  return sub_1C3CE8B10(v7, sub_1C3CE7AC0);
}

uint64_t sub_1C3CE79F8(uint64_t a1)
{
  v2 = sub_1C3D1F034();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1C3D1F224();
}

void sub_1C3CE7AC0()
{
  if (!qword_1EC0876B8)
  {
    sub_1C3CE7B54(255);
    sub_1C3CE8750(&qword_1EC0877B8, sub_1C3CE7B54);
    v0 = sub_1C3D1FC84();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC0876B8);
    }
  }
}

void sub_1C3CE7B90(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1C3CE7DB0(255, a3, a4, a5);
    v6 = sub_1C3D1FD34();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1C3CE7C3C()
{
  if (!qword_1EC0876E0)
  {
    sub_1C3CE7F6C(255, &qword_1EC0876E8, sub_1C3CE7CE0, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
    v0 = sub_1C3D1F1A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC0876E0);
    }
  }
}

void sub_1C3CE7CE0()
{
  if (!qword_1EC0876F0)
  {
    sub_1C3CE7D74(255);
    sub_1C3CE8750(&qword_1EC087758, sub_1C3CE7D74);
    v0 = sub_1C3D1FC94();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC0876F0);
    }
  }
}

void sub_1C3CE7DB0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1C3CE7E54()
{
  if (!qword_1EC087710)
  {
    sub_1C3CE7ED0();
    v0 = sub_1C3D1F024();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC087710);
    }
  }
}

unint64_t sub_1C3CE7ED0()
{
  result = qword_1EC087718;
  if (!qword_1EC087718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC087718);
  }

  return result;
}

void sub_1C3CE7F6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1C3CE8024()
{
  if (!qword_1EC087730)
  {
    sub_1C3CE80B8();
    sub_1C3CE8144(255, &qword_1EC085EC0, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980480]);
    v0 = sub_1C3D1F1A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC087730);
    }
  }
}

void sub_1C3CE80B8()
{
  if (!qword_1EC087738)
  {
    sub_1C3CE8144(255, &qword_1EC0812F8, MEMORY[0x1E6981748], MEMORY[0x1E697F578], MEMORY[0x1E697E830]);
    v0 = sub_1C3D1F1A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC087738);
    }
  }
}

void sub_1C3CE8144(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1C3CE8198()
{
  if (!qword_1EC087740)
  {
    sub_1C3CE7F6C(255, &qword_1EC087748, sub_1C3CE8234, sub_1C3CE82C0, MEMORY[0x1E697E830]);
    v0 = sub_1C3D206E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC087740);
    }
  }
}

void sub_1C3CE8234()
{
  if (!qword_1EC087750)
  {
    sub_1C3CE8144(255, &qword_1EC085EC0, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980480]);
    v0 = sub_1C3D1F1A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC087750);
    }
  }
}

void sub_1C3CE82C0()
{
  if (!qword_1EC081220)
  {
    sub_1C3CE8970(255, &qword_1EC0811E0, MEMORY[0x1E6980F50], MEMORY[0x1E69E6720]);
    v0 = sub_1C3D1F6D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC081220);
    }
  }
}

void sub_1C3CE838C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C3D1F1A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C3CE83F0()
{
  if (!qword_1EC087770)
  {
    sub_1C3CE847C();
    sub_1C3CE8970(255, &qword_1EC081230, MEMORY[0x1E697E1E0], MEMORY[0x1E6980A08]);
    v0 = sub_1C3D1F1A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC087770);
    }
  }
}

void sub_1C3CE847C()
{
  if (!qword_1EC087778)
  {
    sub_1C3CE7F6C(255, &qword_1EC087780, sub_1C3CE8554, sub_1C3CE82C0, MEMORY[0x1E697E830]);
    sub_1C3CE8144(255, &qword_1EC085EC0, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980480]);
    v0 = sub_1C3D1F1A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC087778);
    }
  }
}

void sub_1C3CE8554()
{
  if (!qword_1EC087788)
  {
    sub_1C3CE85D8();
    sub_1C3CE86A0();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC087788);
    }
  }
}

void sub_1C3CE85D8()
{
  if (!qword_1EC087790)
  {
    sub_1C3CE8638(255);
    v0 = sub_1C3D1F1A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC087790);
    }
  }
}

unint64_t sub_1C3CE86A0()
{
  result = qword_1EC0877A8;
  if (!qword_1EC0877A8)
  {
    sub_1C3CE85D8();
    sub_1C3CE8750(&qword_1EC0877B0, sub_1C3CE8638);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0877A8);
  }

  return result;
}

uint64_t sub_1C3CE8750(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C3CE8798()
{
  if (!qword_1EC0877C0)
  {
    sub_1C3CE7B54(255);
    v0 = sub_1C3D1F144();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC0877C0);
    }
  }
}

void sub_1C3CE8844()
{
  sub_1C3CE8970(319, &qword_1EC0811A8, MEMORY[0x1E6981748], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1C3CE8970(319, &qword_1EC0811B0, MEMORY[0x1E69815C0], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1C3CE8FB4(319, &qword_1EC0877D0, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C3CE8970(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1C3CE89C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C3CE8A20@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C3D1F2D4();
  *a1 = result;
  return result;
}

uint64_t sub_1C3CE8A74(uint64_t a1)
{
  sub_1C3CE866C(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1C3CE8EE4(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), sub_1C3CE866C);
  return sub_1C3D1F344();
}

uint64_t sub_1C3CE8B10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1C3CE8B70()
{
  result = qword_1EC0877F8;
  if (!qword_1EC0877F8)
  {
    sub_1C3CE8024();
    sub_1C3CE8BF0();
    sub_1C3CE8C70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0877F8);
  }

  return result;
}

unint64_t sub_1C3CE8BF0()
{
  result = qword_1EC087800;
  if (!qword_1EC087800)
  {
    sub_1C3CE80B8();
    sub_1C3C2D700();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC087800);
  }

  return result;
}

unint64_t sub_1C3CE8C70()
{
  result = qword_1EC087808;
  if (!qword_1EC087808)
  {
    sub_1C3CE8144(255, &qword_1EC085EC0, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980480]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC087808);
  }

  return result;
}

uint64_t sub_1C3CE8CF4(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C3CE8D70()
{
  result = qword_1EC087818;
  if (!qword_1EC087818)
  {
    sub_1C3CE7F6C(255, &qword_1EC087748, sub_1C3CE8234, sub_1C3CE82C0, MEMORY[0x1E697E830]);
    sub_1C3CE8E64();
    sub_1C3CE8750(&qword_1EC081228, sub_1C3CE82C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC087818);
  }

  return result;
}

unint64_t sub_1C3CE8E64()
{
  result = qword_1EC087820;
  if (!qword_1EC087820)
  {
    sub_1C3CE8234();
    sub_1C3CE8C70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC087820);
  }

  return result;
}

uint64_t sub_1C3CE8EE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1C3CE8FB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1C3CE9044(uint64_t a1)
{
  sub_1C3CE97BC();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x1EEE9AC00](isCurrentExecutor);
  *&v9[-16] = a1;
  sub_1C3D1FCE4();
  v10 = *(a1 + 32);
  v11 = v10;
  sub_1C3C67F24(&v11, v9);
  MEMORY[0x1C692F800](0x65756C61562ELL, 0xE600000000000000);
  sub_1C3CE98C8();
  sub_1C3D1FA64();

  (*(v4 + 8))(v6, v3);
}

void sub_1C3CE922C(uint64_t a1@<X8>)
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1C3C4999C();

  v2 = sub_1C3D1F994();
  v4 = v3;
  v6 = v5;
  v7 = [objc_opt_self() preferredFontForTextStyle_];
  v8 = PSHighLegibilityAlternateFont();

  if (v8)
  {
    sub_1C3D1F8C4();
    v9 = sub_1C3D1F954();
    v11 = v10;
    v13 = v12;
    v15 = v14;

    sub_1C3C2EE8C(v2, v4, v6 & 1);

    *a1 = v9;
    *(a1 + 8) = v11;
    *(a1 + 16) = v13 & 1;
    *(a1 + 24) = v15;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C3CE93C4@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v2 = sub_1C3D1F5B4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3CE96D4();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3CE9944();
  v12 = *(v11 - 8);
  v21 = v11;
  v22 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v1[1];
  v30[0] = *v1;
  v30[1] = v15;
  v30[2] = v1[2];
  v24 = v30;
  sub_1C3CE9754();
  sub_1C3CE9818();
  sub_1C3D1F8D4();
  sub_1C3D1F5A4();
  v16 = sub_1C3CE9A18(&qword_1EC087860, sub_1C3CE96D4);
  v17 = MEMORY[0x1E697C750];
  sub_1C3D1FAC4();
  (*(v3 + 8))(v5, v2);
  (*(v8 + 8))(v10, v7);
  v29 = v30[0];
  v25 = v7;
  v26 = v2;
  v27 = v16;
  v28 = v17;
  swift_getOpaqueTypeConformance2();
  sub_1C3C4999C();
  v18 = v21;
  sub_1C3D1FA14();
  return (*(v22 + 8))(v14, v18);
}

void sub_1C3CE96D4()
{
  if (!qword_1EC087830)
  {
    sub_1C3CE9754();
    sub_1C3CE9818();
    v0 = sub_1C3D1F8E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC087830);
    }
  }
}

void sub_1C3CE9754()
{
  if (!qword_1EC087838)
  {
    sub_1C3CE97BC();
    sub_1C3D1F6E4();
    v0 = sub_1C3D1F1A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC087838);
    }
  }
}

void sub_1C3CE97BC()
{
  if (!qword_1EC087840)
  {
    v0 = sub_1C3D1FD04();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC087840);
    }
  }
}

unint64_t sub_1C3CE9818()
{
  result = qword_1EC087848;
  if (!qword_1EC087848)
  {
    sub_1C3CE9754();
    sub_1C3CE98C8();
    sub_1C3CE9A18(&qword_1EC0811E8, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC087848);
  }

  return result;
}

unint64_t sub_1C3CE98C8()
{
  result = qword_1EC087850;
  if (!qword_1EC087850)
  {
    sub_1C3CE97BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC087850);
  }

  return result;
}

void sub_1C3CE9944()
{
  if (!qword_1EC087858)
  {
    sub_1C3CE96D4();
    sub_1C3D1F5B4();
    sub_1C3CE9A18(&qword_1EC087860, sub_1C3CE96D4);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC087858);
    }
  }
}

uint64_t sub_1C3CE9A18(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1C3CE9A94()
{
  _s8SentinelCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EC08DBD8 = result;
  return result;
}

HKQuantity_optional __swiftcall HKHearingLevelClassification.maximumQuantityForDisplay()()
{
  v0 = HKMaximumDecibelQuantityForHearingLevelClassification();
  if (v0)
  {
    v2 = v0;
    v3 = objc_opt_self();
    v4 = [v3 decibelHearingLevelUnit];
    [v2 doubleValueForUnit_];
    v6 = v5;

    v7 = [v3 decibelHearingLevelUnit];
    v8 = [objc_opt_self() quantityWithUnit:v7 doubleValue:floor(v6)];
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  result.value.super.isa = v9;
  result.is_nil = v1;
  return result;
}

HKQuantity_optional __swiftcall HKHearingLevelClassification.minimumQuantityForDisplay()()
{
  v0 = HKMinimumDecibelQuantityForHearingLevelClassification();
  if (v0)
  {
    v2 = v0;
    v3 = objc_opt_self();
    v4 = [v3 decibelHearingLevelUnit];
    [v2 doubleValueForUnit_];
    v6 = v5;

    v7 = [v3 decibelHearingLevelUnit];
    v8 = [objc_opt_self() quantityWithUnit:v7 doubleValue:ceil(v6)];
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  result.value.super.isa = v9;
  result.is_nil = v1;
  return result;
}

id static HKHearingLevelSummary.emptySummary.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x1E696C1D8]);

  return [v0 initWithLeftEarMetrics:0 rightEarMetrics:0];
}

id sub_1C3CE9CEC()
{
  if (*v0 <= 0)
  {
    v3 = 0;
    v2 = *(v0 + 32);
  }

  else
  {
    v2 = *(v0 + 32);
    v1 = *v0;
    v3 = [objc_opt_self() quantityWithUnit:v2 doubleValue:round(*(v0 + 8) / v1)];
  }

  v4 = *(v0 + 16);
  v5 = objc_opt_self();
  v6 = [v5 quantityWithUnit:v2 doubleValue:v4];
  v7 = [v5 quantityWithUnit:v2 doubleValue:*(v0 + 24)];
  v8 = [objc_allocWithZone(MEMORY[0x1E696C1D0]) initWithAverageSensitivity:v3 minimumSensitivity:v6 maximumSensitivity:v7];

  return v8;
}

uint64_t sub_1C3CE9E00(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_31;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  result = v2;
  v51 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
LABEL_38:
    v50 = objc_allocWithZone(MEMORY[0x1E696C1D8]);

    return [v50 initWithLeftEarMetrics:0 rightEarMetrics:0];
  }

  if (v2 < 2)
  {
    goto LABEL_33;
  }

  do
  {
    v4 = objc_opt_self();
    v5 = [v4 decibelHearingLevelUnit];
    v6 = [v4 decibelHearingLevelUnit];
    if (v51 < 1)
    {
      __break(1u);
      goto LABEL_42;
    }

    v7 = v6;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0.0;
    v12 = 1.79769313e308;
    v13 = 2.22507386e-308;
    v14 = 2.22507386e-308;
    v15 = 0.0;
    v16 = 1.79769313e308;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x1C692FEB0](v8, a1);
      }

      else
      {
        v17 = *(a1 + 8 * v8 + 32);
      }

      v18 = v17;
      v19 = [v17 hearingLevelSummary];
      v20 = [v19 leftEarMetrics];

      if (!v20)
      {
        goto LABEL_19;
      }

      v21 = [v20 averageSensitivity];
      if (v21)
      {
        break;
      }

LABEL_15:
      v26 = [v20 minimumSensitivity];
      [v26 doubleValueForUnit_];
      v28 = v27;

      if (v28 < v16)
      {
        v16 = v28;
      }

      v29 = [v20 maximumSensitivity];
      [v29 doubleValueForUnit_];
      v31 = v30;

      if (v14 <= v31)
      {
        v14 = v31;
      }

LABEL_19:
      v32 = [v18 hearingLevelSummary];
      v33 = [v32 rightEarMetrics];

      if (v33)
      {
        v34 = [v33 averageSensitivity];
        if (v34)
        {
          v35 = v34;
          [v34 doubleValueForUnit_];
          v37 = v36;

          v25 = __OFADD__(v9++, 1);
          if (v25)
          {
            goto LABEL_30;
          }

          v11 = v11 + round(v37);
        }

        v38 = [v33 minimumSensitivity];
        [v38 doubleValueForUnit_];
        v40 = v39;

        if (v40 < v12)
        {
          v12 = v40;
        }

        v41 = [v33 maximumSensitivity];
        [v41 doubleValueForUnit_];
        v43 = v42;

        if (v13 <= v43)
        {
          v13 = v43;
        }
      }

      else
      {
      }

      if (v51 == ++v8)
      {
        v44 = sub_1C3CE9CEC();
        v45 = sub_1C3CE9CEC();
        v46 = [objc_allocWithZone(MEMORY[0x1E696C1D8]) initWithLeftEarMetrics:v44 rightEarMetrics:v45];

        return v46;
      }
    }

    v22 = v21;
    [v21 doubleValueForUnit_];
    v24 = v23;

    v25 = __OFADD__(v10++, 1);
    if (!v25)
    {
      v15 = v15 + round(v24);
      goto LABEL_15;
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    v51 = sub_1C3D20964();
    if (!v51)
    {
      goto LABEL_38;
    }

    result = sub_1C3D20964();
  }

  while (result >= 2);
LABEL_33:
  if ((a1 & 0xC000000000000001) != 0)
  {
LABEL_42:
    v47 = MEMORY[0x1C692FEB0](0, a1);
LABEL_36:
    v48 = v47;
    v49 = [v47 hearingLevelSummary];

    if (v49)
    {
      return v49;
    }

    goto LABEL_38;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v47 = *(a1 + 32);
    goto LABEL_36;
  }

  __break(1u);
  return result;
}

uint64_t FeatureRegulatoryInfoProvider.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8HealthUI29FeatureRegulatoryInfoProvider_logger;
  v4 = sub_1C3D1EDA4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1C3CEA324()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C3D1EFA4();
}

uint64_t sub_1C3CEA3A0(uint64_t a1, void **a2)
{
  v4 = type metadata accessor for FeatureRegulatoryInfo(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  sub_1C3CEB608(a1, &v13 - v8);
  v10 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C3CEB608(v9, v6);
  v11 = v10;
  sub_1C3D1EFB4();
  return sub_1C3CEB66C(v9);
}

uint64_t sub_1C3CEA498()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C3D1EFA4();
}

uint64_t sub_1C3CEA510()
{
  swift_beginAccess();
  sub_1C3CEB6C8(0, &qword_1EC087878, MEMORY[0x1E695C070]);
  sub_1C3D1EF84();
  return swift_endAccess();
}

uint64_t sub_1C3CEA598(uint64_t a1)
{
  sub_1C3CEB6C8(0, &qword_1EC0878A8, MEMORY[0x1E695C060]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  sub_1C3CEB6C8(0, &qword_1EC087878, MEMORY[0x1E695C070]);
  sub_1C3D1EF94();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_1C3CEA73C()
{
  swift_beginAccess();
  sub_1C3CEB6C8(0, &qword_1EC087878, MEMORY[0x1E695C070]);
  sub_1C3D1EF84();
  return swift_endAccess();
}

id FeatureRegulatoryInfoProvider.__allocating_init(featureAvailabilityStore:pairedDeviceFeatureAttributesProvider:logger:infoTransform:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void, uint64_t), uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = sub_1C3CEAFFC(a1, a2, a3, a4, a5);

  return v12;
}

id FeatureRegulatoryInfoProvider.init(featureAvailabilityStore:pairedDeviceFeatureAttributesProvider:logger:infoTransform:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void, uint64_t), uint64_t a5)
{
  v6 = sub_1C3CEAFFC(a1, a2, a3, a4, a5);

  return v6;
}

void sub_1C3CEA890()
{
  v0 = sub_1C3D1ED84();
  v1 = sub_1C3D20514();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v9[0] = v3;
    *v2 = 136446210;
    v4 = sub_1C3D20CD4();
    v6 = sub_1C3C22C28(v4, v5, v9);

    *(v2 + 4) = v6;
    _os_log_impl(&dword_1C3942000, v0, v1, "[%{public}s] Observed change to paired device feature attributes provider", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v3);
    MEMORY[0x1C69321D0](v3, -1, -1);
    MEMORY[0x1C69321D0](v2, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_1C3CEA9CC();
  }
}

uint64_t sub_1C3CEA9CC()
{
  v1 = v0;
  v45[1] = *MEMORY[0x1E69E9840];
  swift_getObjectType();
  v2 = type metadata accessor for FeatureRegulatoryInfo(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v42[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v42[-v7];
  v9 = *&v0[OBJC_IVAR____TtC8HealthUI29FeatureRegulatoryInfoProvider_featureAvailabilityStore];
  v45[0] = 0;
  v10 = [v9 featureOnboardingRecordWithError_];
  v11 = v45[0];
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v13 = v11;
    v14 = sub_1C3D1DFA4();

    swift_willThrow();
    v15 = v1;
    v16 = v14;
    v17 = sub_1C3D1ED84();
    v18 = sub_1C3D204F4();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45[0] = v44;
      *v19 = 136446722;
      v20 = sub_1C3D20CD4();
      v22 = sub_1C3C22C28(v20, v21, v45);
      v43 = v18;
      v23 = v22;

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      v24 = [v9 featureIdentifier];
      v25 = sub_1C3D20104();
      v27 = v26;

      v28 = sub_1C3C22C28(v25, v27, v45);

      *(v19 + 14) = v28;
      *(v19 + 22) = 2080;
      ErrorValue = swift_getErrorValue();
      v30 = MEMORY[0x1EEE9AC00](ErrorValue);
      (*(v32 + 16))(&v42[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)], v30);
      v33 = sub_1C3D20134();
      v35 = sub_1C3C22C28(v33, v34, v45);

      *(v19 + 24) = v35;
      _os_log_impl(&dword_1C3942000, v17, v43, "[%{public}s] Error getting onboarding record for %s: %s", v19, 0x20u);
      v36 = v44;
      swift_arrayDestroy();
      MEMORY[0x1C69321D0](v36, -1, -1);
      MEMORY[0x1C69321D0](v19, -1, -1);
    }

    else
    {
    }

    v12 = 0;
  }

  v37 = *&v1[OBJC_IVAR____TtC8HealthUI29FeatureRegulatoryInfoProvider_infoTransform];
  v38 = *&v1[OBJC_IVAR____TtC8HealthUI29FeatureRegulatoryInfoProvider_pairedDeviceFeatureAttributesProvider];
  v39 = v10;
  v37(v12, v38);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C3CEB608(v8, v4);
  v40 = v1;
  sub_1C3D1EFB4();

  return sub_1C3CEB66C(v8);
}

id FeatureRegulatoryInfoProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FeatureRegulatoryInfoProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeatureRegulatoryInfoProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C3CEAFBC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for FeatureRegulatoryInfoProvider();
  result = sub_1C3D1EED4();
  *a1 = result;
  return result;
}

id sub_1C3CEAFFC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void, uint64_t), uint64_t a5)
{
  v6 = v5;
  v36 = a3;
  ObjectType = swift_getObjectType();
  v12 = sub_1C3D1EDA4();
  v38 = *(v12 - 8);
  v13 = v38;
  v40 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v39 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for FeatureRegulatoryInfo(0);
  MEMORY[0x1EEE9AC00](v35);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v35 - v19;
  *&v6[OBJC_IVAR____TtC8HealthUI29FeatureRegulatoryInfoProvider_subscribers] = MEMORY[0x1E69E7CD0];
  *&v6[OBJC_IVAR____TtC8HealthUI29FeatureRegulatoryInfoProvider_featureAvailabilityStore] = a1;
  *&v6[OBJC_IVAR____TtC8HealthUI29FeatureRegulatoryInfoProvider_pairedDeviceFeatureAttributesProvider] = a2;
  v37 = *(v13 + 16);
  v37(&v6[OBJC_IVAR____TtC8HealthUI29FeatureRegulatoryInfoProvider_logger], a3, v12, v18);
  v21 = &v6[OBJC_IVAR____TtC8HealthUI29FeatureRegulatoryInfoProvider_infoTransform];
  *v21 = a4;
  *(v21 + 1) = a5;
  v22 = a1;

  a4(0, a2);
  swift_beginAccess();
  sub_1C3CEB608(v20, v16);
  sub_1C3D1EF74();
  sub_1C3CEB66C(v20);
  swift_endAccess();
  v23 = type metadata accessor for FeatureRegulatoryInfoProvider();
  v42.receiver = v6;
  v42.super_class = v23;
  v24 = objc_msgSendSuper2(&v42, sel_init);
  sub_1C3CEA9CC();
  type metadata accessor for PairedDeviceFeatureAttributesProvider();
  sub_1C3CEB728();
  v35 = sub_1C3D1EED4();
  v43 = v35;
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = v39;
  v27 = v36;
  v28 = v12;
  (v37)(v39, v36, v12);
  v29 = v38;
  v30 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v31 = (v40 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  (*(v29 + 32))(v32 + v30, v26, v28);
  *(v32 + v31) = v25;
  *(v32 + ((v31 + 15) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_1C3CEB780;
  *(v33 + 24) = v32;
  sub_1C3D1EF54();
  sub_1C3D1EFF4();

  swift_beginAccess();
  sub_1C3D1EEA4();
  swift_endAccess();

  (*(v29 + 8))(v27, v28);
  return v24;
}

uint64_t type metadata accessor for FeatureRegulatoryInfoProvider()
{
  result = qword_1EC087898;
  if (!qword_1EC087898)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C3CEB458()
{
  sub_1C3D1EDA4();
  if (v0 <= 0x3F)
  {
    sub_1C3CEB6C8(319, &qword_1EC087878, MEMORY[0x1E695C070]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1C3CEB608(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeatureRegulatoryInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C3CEB66C(uint64_t a1)
{
  v2 = type metadata accessor for FeatureRegulatoryInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C3CEB6C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for FeatureRegulatoryInfo(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1C3CEB728()
{
  result = qword_1EC0878B0;
  if (!qword_1EC0878B0)
  {
    type metadata accessor for PairedDeviceFeatureAttributesProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0878B0);
  }

  return result;
}

void sub_1C3CEB780()
{
  sub_1C3D1EDA4();

  sub_1C3CEA890();
}

uint64_t AccessoryCircularTimeView.init(time:symbolName:baseAccessibilityIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for AccessoryCircularTimeView();
  sub_1C3D1E284();
  v13 = a6 + v12[8];
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  v14 = v12[9];
  *(a6 + v14) = swift_getKeyPath();
  sub_1C3CECDF4(0, &qword_1EC081398, MEMORY[0x1E6985778], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v15 = sub_1C3D1E1E4();
  result = (*(*(v15 - 8) + 32))(a6, a1, v15);
  v17 = (a6 + v12[5]);
  *v17 = a2;
  v17[1] = a3;
  v18 = (a6 + v12[7]);
  *v18 = a4;
  v18[1] = a5;
  return result;
}

uint64_t type metadata accessor for AccessoryCircularTimeView()
{
  result = qword_1EC087980;
  if (!qword_1EC087980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C3CEB99C()
{
  v1 = sub_1C3D1F3B4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for AccessoryCircularTimeView() + 32);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_1C3D20504();
    v7 = sub_1C3D1F6F4();
    sub_1C3D1ED54();

    sub_1C3D1F3A4();
    swift_getAtKeyPath();
    sub_1C3C2ECC8(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_1C3CEBAF4@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v2 = sub_1C3D1FEA4();
  v49 = *(v2 - 8);
  v50 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v47 - v6;
  sub_1C3C659C0();
  v53 = *(v7 - 8);
  v54 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v52 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for AccessoryCircularTimeView();
  v9 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v10 = sub_1C3D200C4();
  [v9 setLocalizedDateFormatFromTemplate_];

  v56 = v1;
  v11 = sub_1C3D1E234();
  [v9 setLocale_];

  v12 = sub_1C3D1E174();
  v13 = [v9 stringFromDate_];

  v14 = sub_1C3D20104();
  v16 = v15;

  v57 = v14;
  v58 = v16;
  sub_1C3C4999C();
  v17 = sub_1C3D1F994();
  v19 = v18;
  v21 = v20;
  sub_1C3D1F894();
  v22 = sub_1C3D1F954();
  v24 = v23;
  v26 = v25;
  v27 = v48;

  v28 = v21 & 1;
  v29 = v49;
  sub_1C3C2EE8C(v17, v19, v28);
  v30 = v50;

  sub_1C3CEBF38(v27);
  sub_1C3D1FE94();
  LOBYTE(v17) = sub_1C3D1FE84();
  v31 = *(v29 + 8);
  v31(v4, v30);
  if (v17)
  {
    sub_1C3D1FB34();
  }

  else
  {
    sub_1C3D1FAE4();
  }

  v31(v27, v30);
  v32 = sub_1C3D1F914();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_1C3C2EE8C(v22, v24, v26 & 1);

  v57 = v32;
  v58 = v34;
  v39 = v36 & 1;
  v59 = v36 & 1;
  v60 = v38;
  v40 = MEMORY[0x1E6981148];
  v41 = MEMORY[0x1E6981138];
  v42 = v52;
  sub_1C3D1F9A4();
  sub_1C3C2EE8C(v32, v34, v39);

  v43 = (v56 + *(v51 + 28));
  v44 = v43[1];
  v57 = *v43;
  v58 = v44;

  MEMORY[0x1C692F800](0xD000000000000029, 0x80000001C3D88020);
  v57 = v40;
  v58 = v41;
  swift_getOpaqueTypeConformance2();
  v45 = v54;
  sub_1C3D1FA64();

  return (*(v53 + 8))(v42, v45);
}

uint64_t sub_1C3CEBF38@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C3D1F3B4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3CECDF4(0, &qword_1EC081398, MEMORY[0x1E6985778], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for AccessoryCircularTimeView();
  sub_1C3CEE7B4(v1 + *(v10 + 36), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1C3D1FEA4();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1C3D20504();
    v13 = sub_1C3D1F6F4();
    sub_1C3D1ED54();

    sub_1C3D1F3A4();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1C3CEC14C@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v2 = sub_1C3D1FEA4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - v7;
  sub_1C3CED0D4();
  v30 = *(v9 - 8);
  v31 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for AccessoryCircularTimeView();

  v27 = sub_1C3D1FB84();
  v12 = sub_1C3D1F894();
  KeyPath = swift_getKeyPath();
  v29 = v1;
  sub_1C3CEBF38(v8);
  sub_1C3D1FE94();
  v14 = sub_1C3D1FE84();
  v15 = *(v3 + 8);
  v15(v5, v2);
  if (v14)
  {
    v16 = sub_1C3D1FB34();
  }

  else
  {
    v16 = sub_1C3D1FAE4();
  }

  v17 = v16;
  v15(v8, v2);
  v18 = swift_getKeyPath();
  v33 = v27;
  v34 = KeyPath;
  v35 = v12;
  v36 = v18;
  v37 = v17;
  sub_1C3CED158();
  v20 = v19;
  v21 = sub_1C3CED244();
  sub_1C3D1F9A4();

  v22 = (v29 + *(v28 + 28));
  v23 = v22[1];
  v33 = *v22;
  v34 = v23;

  MEMORY[0x1C692F800](0xD000000000000021, 0x80000001C3D87FF0);
  v33 = v20;
  v34 = v21;
  swift_getOpaqueTypeConformance2();
  v24 = v31;
  sub_1C3D1FA64();

  return (*(v30 + 8))(v11, v24);
}

uint64_t sub_1C3CEC45C()
{
  type metadata accessor for AccessoryCircularTimeView();
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v1 = sub_1C3D200C4();
  [v0 setLocalizedDateFormatFromTemplate_];

  v2 = sub_1C3D1E234();
  [v0 setLocale_];

  v3 = sub_1C3D1E174();
  v4 = [v0 stringFromDate_];

  sub_1C3D20104();
  sub_1C3C4999C();
  v5 = sub_1C3D1F994();
  v7 = v6;
  v9 = v8;
  sub_1C3D1F7F4();
  sub_1C3D1F824();
  sub_1C3D1F874();

  v10 = sub_1C3D1F954();
  v12 = v11;
  v14 = v13;

  sub_1C3C2EE8C(v5, v7, v9 & 1);

  MEMORY[0x1C692F800](0xD000000000000023, 0x80000001C3D87FC0);
  sub_1C3D1FA64();

  sub_1C3C2EE8C(v10, v12, v14 & 1);
}

double AccessoryCircularTimeView.body.getter@<D0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1C3D1FD14();
  a1[1] = v3;
  sub_1C3CEE5D0(0, &qword_1EC0878B8, sub_1C3CECDC0);
  sub_1C3CEC744(v1, a1 + *(v4 + 44));
  sub_1C3D1FD14();
  sub_1C3D1F0F4();
  sub_1C3CED6E0();
  v6 = (a1 + *(v5 + 36));
  *v6 = v8;
  v6[1] = v9;
  result = *&v10;
  v6[2] = v10;
  return result;
}

uint64_t sub_1C3CEC744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37[1] = a1;
  v41 = a2;
  sub_1C3CED334(0);
  v40 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3CED050(0, &qword_1EC0879A0, sub_1C3CECF10, sub_1C3CED334, MEMORY[0x1E697F948]);
  v37[0] = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v37 - v6;
  sub_1C3CECF10(0);
  v37[3] = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3CECEC8(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v39 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v38 = v37 - v14;
  v15 = sub_1C3D1FE74();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C2CD3C(0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v37 - v23;
  sub_1C3D20374();
  v37[2] = sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (sub_1C3CEB99C())
  {
    (*(v16 + 56))(v24, 1, 1, v15);
  }

  else
  {
    sub_1C3D1FE64();
    (*(v16 + 32))(v24, v18, v15);
    (*(v16 + 56))(v24, 0, 1, v15);
  }

  type metadata accessor for AccessoryCircularTimeView();
  v25 = sub_1C3D1E234();
  v26 = [v25 hk_isIn24HourTime];

  v27 = sub_1C3D1F424();
  v28 = v38;
  if (v26)
  {
    *v10 = v27;
    *(v10 + 1) = 0xBFF0000000000000;
    v10[16] = 0;
    sub_1C3CEE5D0(0, &qword_1EC0879C0, sub_1C3CECF4C);
    sub_1C3CEDFC8(&v10[*(v29 + 44)]);
    sub_1C3CEE508(v10, v7, sub_1C3CECF10);
    swift_storeEnumTagMultiPayload();
    sub_1C3CED698(&qword_1EC0879B0, sub_1C3CECF10);
    sub_1C3CED698(&qword_1EC0879B8, sub_1C3CED334);
    sub_1C3D1F564();
    v30 = v10;
    v31 = sub_1C3CECF10;
  }

  else
  {
    *v4 = v27;
    *(v4 + 1) = 0xBFF0000000000000;
    v4[16] = 0;
    sub_1C3CEE5D0(0, &qword_1EC0879A8, sub_1C3CED404);
    sub_1C3CED7F0(&v4[*(v32 + 44)]);
    sub_1C3CEE508(v4, v7, sub_1C3CED334);
    swift_storeEnumTagMultiPayload();
    sub_1C3CED698(&qword_1EC0879B0, sub_1C3CECF10);
    sub_1C3CED698(&qword_1EC0879B8, sub_1C3CED334);
    sub_1C3D1F564();
    v30 = v4;
    v31 = sub_1C3CED334;
  }

  sub_1C3CEE570(v30, v31);
  sub_1C3CEE63C(v24, v21, sub_1C3C2CD3C);
  v33 = v39;
  sub_1C3CEE508(v28, v39, sub_1C3CECEC8);
  v34 = v41;
  sub_1C3CEE63C(v21, v41, sub_1C3C2CD3C);
  sub_1C3CECE58();
  sub_1C3CEE508(v33, v34 + *(v35 + 48), sub_1C3CECEC8);
  sub_1C3CEE570(v28, sub_1C3CECEC8);
  sub_1C3CEE6A4(v24, sub_1C3C2CD3C);
  sub_1C3CEE570(v33, sub_1C3CECEC8);
  sub_1C3CEE6A4(v21, sub_1C3C2CD3C);
}

void sub_1C3CECDF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1C3CECE58()
{
  if (!qword_1EC0878C8)
  {
    sub_1C3C2CD3C(255);
    sub_1C3CECEC8(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC0878C8);
    }
  }
}

void sub_1C3CECF80()
{
  if (!qword_1EC0878E8)
  {
    sub_1C3CED008(255);
    sub_1C3C65900();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EC0878E8);
    }
  }
}

void sub_1C3CED050(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1C3CED0D4()
{
  if (!qword_1EC0878F8)
  {
    sub_1C3CED158();
    sub_1C3CED244();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC0878F8);
    }
  }
}

void sub_1C3CED158()
{
  if (!qword_1EC087900)
  {
    sub_1C3C2D514();
    sub_1C3CED1D8(255, &qword_1EC081210, &qword_1EC0811B0, MEMORY[0x1E69815C0]);
    v0 = sub_1C3D1F1A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC087900);
    }
  }
}

void sub_1C3CED1D8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1C3CEE408(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = sub_1C3D1F6D4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1C3CED244()
{
  result = qword_1EC087908;
  if (!qword_1EC087908)
  {
    sub_1C3CED158();
    sub_1C3C2D828();
    sub_1C3CED2E4(&qword_1EC081218, &qword_1EC081210, &qword_1EC0811B0, MEMORY[0x1E69815C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC087908);
  }

  return result;
}

uint64_t sub_1C3CED2E4(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1C3CED1D8(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1C3CED370(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1C3CED698(a4, a5);
    v8 = sub_1C3D1FC84();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1C3CED438()
{
  if (!qword_1EC087928)
  {
    sub_1C3CED4A4(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC087928);
    }
  }
}

void sub_1C3CED604(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1C3C65900();
    a4(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

uint64_t sub_1C3CED698(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C3CED6E0()
{
  if (!qword_1EC087968)
  {
    sub_1C3CED740();
    v0 = sub_1C3D1F1A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC087968);
    }
  }
}

void sub_1C3CED740()
{
  if (!qword_1EC087970)
  {
    sub_1C3CECDC0(255);
    sub_1C3CED698(&qword_1EC087978, sub_1C3CECDC0);
    v0 = sub_1C3D1FC94();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC087970);
    }
  }
}

uint64_t sub_1C3CED7F0@<X0>(void *a1@<X8>)
{
  v53 = a1;
  sub_1C3CED59C(0);
  v52 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3CED050(0, &qword_1EC0879C8, sub_1C3CED4EC, sub_1C3CED59C, MEMORY[0x1E697F948]);
  v47[1] = v4;
  MEMORY[0x1EEE9AC00](v4);
  v51 = v47 - v5;
  sub_1C3CED4EC(0);
  v50 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3CED008(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v54 = v47 - v13;
  sub_1C3C65900();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v47 - v18;
  sub_1C3CED554(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v47 - v24;
  sub_1C3CED4A4(0);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v49 = v47 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v48 = v47 - v29;
  sub_1C3D20374();
  v47[2] = sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for AccessoryCircularTimeView();
  if (Locale.isAMPMSymbolBeforeTime.getter())
  {
    v30 = v25;
    v47[0] = v25;
    sub_1C3CEBAF4(v25);
    sub_1C3CEC45C();
    v31 = v54;
    sub_1C3CEC14C(v54);
    sub_1C3CEE508(v30, v22, sub_1C3CED554);
    sub_1C3CEE63C(v19, v16, sub_1C3C65900);
    sub_1C3CEE508(v31, v11, sub_1C3CED008);
    sub_1C3CEE508(v22, v8, sub_1C3CED554);
    sub_1C3CED520(0);
    v33 = v32;
    sub_1C3CEE63C(v16, &v8[*(v32 + 48)], sub_1C3C65900);
    sub_1C3CEE508(v11, &v8[*(v33 + 64)], sub_1C3CED008);
    sub_1C3CEE570(v11, sub_1C3CED008);
    sub_1C3CEE6A4(v16, sub_1C3C65900);
    sub_1C3CEE570(v22, sub_1C3CED554);
    sub_1C3CEE508(v8, v51, sub_1C3CED4EC);
    swift_storeEnumTagMultiPayload();
    sub_1C3CED698(&qword_1EC0879D0, sub_1C3CED4EC);
    sub_1C3CED698(&qword_1EC0879D8, sub_1C3CED59C);
    v34 = v48;
    sub_1C3D1F564();
    sub_1C3CEE570(v8, sub_1C3CED4EC);
    sub_1C3CEE570(v31, sub_1C3CED008);
    sub_1C3CEE6A4(v19, sub_1C3C65900);
    v35 = v47[0];
    v36 = sub_1C3CED554;
  }

  else
  {
    v37 = v54;
    sub_1C3CEC14C(v54);
    sub_1C3CEC45C();
    sub_1C3CEBAF4(v25);
    sub_1C3CEE508(v37, v11, sub_1C3CED008);
    sub_1C3CEE63C(v19, v16, sub_1C3C65900);
    sub_1C3CEE508(v25, v22, sub_1C3CED554);
    sub_1C3CEE508(v11, v3, sub_1C3CED008);
    sub_1C3CED5D0(0);
    v39 = v38;
    sub_1C3CEE63C(v16, &v3[*(v38 + 48)], sub_1C3C65900);
    sub_1C3CEE508(v22, &v3[*(v39 + 64)], sub_1C3CED554);
    sub_1C3CEE570(v22, sub_1C3CED554);
    sub_1C3CEE6A4(v16, sub_1C3C65900);
    sub_1C3CEE570(v11, sub_1C3CED008);
    sub_1C3CEE508(v3, v51, sub_1C3CED59C);
    swift_storeEnumTagMultiPayload();
    sub_1C3CED698(&qword_1EC0879D0, sub_1C3CED4EC);
    sub_1C3CED698(&qword_1EC0879D8, sub_1C3CED59C);
    v34 = v48;
    sub_1C3D1F564();
    sub_1C3CEE570(v3, sub_1C3CED59C);
    sub_1C3CEE570(v25, sub_1C3CED554);
    sub_1C3CEE6A4(v19, sub_1C3C65900);
    v35 = v54;
    v36 = sub_1C3CED008;
  }

  sub_1C3CEE570(v35, v36);
  v40 = v49;
  sub_1C3CEE508(v34, v49, sub_1C3CED4A4);
  v41 = v34;
  v42 = v53;
  *v53 = 0;
  *(v42 + 8) = 1;
  sub_1C3CED438();
  v44 = v43;
  sub_1C3CEE508(v40, v42 + *(v43 + 48), sub_1C3CED4A4);
  v45 = v42 + *(v44 + 64);
  *v45 = 0;
  v45[8] = 1;
  sub_1C3CEE570(v41, sub_1C3CED4A4);
  sub_1C3CEE570(v40, sub_1C3CED4A4);
}

uint64_t sub_1C3CEDFC8@<X0>(uint64_t a1@<X8>)
{
  sub_1C3C65900();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  sub_1C3CED008(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - v12;
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1C3CEC14C(v13);
  sub_1C3CEC45C();
  sub_1C3CEE508(v13, v10, sub_1C3CED008);
  sub_1C3CEE63C(v7, v4, sub_1C3C65900);
  *a1 = 0;
  *(a1 + 8) = 1;
  sub_1C3CECF80();
  v15 = v14;
  sub_1C3CEE508(v10, a1 + *(v14 + 48), sub_1C3CED008);
  sub_1C3CEE63C(v4, a1 + *(v15 + 64), sub_1C3C65900);
  v16 = a1 + *(v15 + 80);
  *v16 = 0;
  *(v16 + 8) = 1;
  sub_1C3CEE6A4(v7, sub_1C3C65900);
  sub_1C3CEE570(v13, sub_1C3CED008);
  sub_1C3CEE6A4(v4, sub_1C3C65900);
  sub_1C3CEE570(v10, sub_1C3CED008);
}

double sub_1C3CEE218@<D0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1C3D1FD14();
  a1[1] = v3;
  sub_1C3CEE5D0(0, &qword_1EC0878B8, sub_1C3CECDC0);
  sub_1C3CEC744(v1, a1 + *(v4 + 44));
  sub_1C3D1FD14();
  sub_1C3D1F0F4();
  sub_1C3CED6E0();
  v6 = (a1 + *(v5 + 36));
  *v6 = v8;
  v6[1] = v9;
  result = *&v10;
  v6[2] = v10;
  return result;
}

void sub_1C3CEE2F8()
{
  sub_1C3D1E1E4();
  if (v0 <= 0x3F)
  {
    sub_1C3D1E294();
    if (v1 <= 0x3F)
    {
      sub_1C3CEE408(319, &qword_1EC081378, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1C3CECDF4(319, &qword_1EC081388, MEMORY[0x1E6985778], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C3CEE408(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1C3CEE458()
{
  result = qword_1EC087990;
  if (!qword_1EC087990)
  {
    sub_1C3CED6E0();
    sub_1C3CED698(&qword_1EC087998, sub_1C3CED740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC087990);
  }

  return result;
}

uint64_t sub_1C3CEE508(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C3CEE570(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1C3CEE5D0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C3D1F144();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C3CEE63C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C3CEE6A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C3CEE704@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C3D1F254();
  *a1 = result;
  return result;
}

uint64_t sub_1C3CEE75C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C3D1F2F4();
  *a1 = result;
  return result;
}

uint64_t sub_1C3CEE7B4(uint64_t a1, uint64_t a2)
{
  sub_1C3CECDF4(0, &qword_1EC081398, MEMORY[0x1E6985778], MEMORY[0x1E697DCB8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1C3CEE848()
{
  v0 = sub_1C3D1EC04();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_allocWithZone(HKCodableHealthChartsData) init];
  if (result)
  {
    v5 = result;
    sub_1C3D1EC14();
    v6 = sub_1C3D1EBF4();
    (*(v1 + 8))(v3, v0);
    v7 = sub_1C3CEE9D0(v6);

    sub_1C3C9B17C(v7);

    v8 = objc_allocWithZone(MEMORY[0x1E695DF70]);
    v9 = sub_1C3D202A4();

    v10 = [v8 initWithArray_];

    [v5 setSeries_];
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1C3CEE9D0(uint64_t a1)
{
  v2 = sub_1C3D1EB44();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1C3D208C4();
    v9 = *(v3 + 16);
    v8 = v3 + 16;
    v13 = v9;
    v10 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v11 = (v8 - 8);
    v12 = *(v8 + 56);
    v9(v5, v10, v2);
    while (1)
    {
      sub_1C3D1EB34();
      if (v15)
      {
        sub_1C3972F30(&v14, v16);
        __swift_project_boxed_opaque_existential_0(v16, v16[3]);
        sub_1C3CEF048();
        (*v11)(v5, v2);
        __swift_destroy_boxed_opaque_existential_0(v16);
      }

      else
      {
        sub_1C3CF33B4(&v14, &qword_1EC085860, sub_1C3CF3464);
        result = [objc_allocWithZone(HKCodableHealthChartsSeries) init];
        if (!result)
        {
          __break(1u);
          return result;
        }

        [result setShapeType_];
        (*v11)(v5, v2);
      }

      sub_1C3D20894();
      sub_1C3D208D4();
      sub_1C3D208E4();
      sub_1C3D208A4();
      v10 += v12;
      if (!--v6)
      {
        return v17;
      }

      v13(v5, v10, v2);
    }
  }

  return result;
}

uint64_t sub_1C3CEEC08()
{
  v1 = v0;
  v2 = sub_1C3D1EB44();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x1E69A3038])
  {
    (*(v3 + 96))(v5, v2);
    sub_1C3CF38E0(0, &qword_1EC087A28, MEMORY[0x1E69A3008]);
    (*(*(v7 - 8) + 8))(v5, v7);
    return 0;
  }

  else if (v6 == *MEMORY[0x1E69A3040])
  {
    (*(v3 + 96))(v5, v2);
    sub_1C3CF37EC(0, &qword_1EC087A20, MEMORY[0x1E69A3008]);
    (*(*(v9 - 8) + 8))(v5, v9);
    return 1;
  }

  else if (v6 == *MEMORY[0x1E69A3030])
  {
    (*(v3 + 96))(v5, v2);
    sub_1C3CF3734(0, &qword_1EC087A18, MEMORY[0x1E69A3008]);
    (*(*(v10 - 8) + 8))(v5, v10);
    return 2;
  }

  else if (v6 == *MEMORY[0x1E69A3010])
  {
    (*(v3 + 96))(v5, v2);
    sub_1C3CF3640(0, &qword_1EC087A10, MEMORY[0x1E69A3008]);
    (*(*(v11 - 8) + 8))(v5, v11);
    return 3;
  }

  else if (v6 == *MEMORY[0x1E69A3018])
  {
    (*(v3 + 96))(v5, v2);
    sub_1C3CF35D0(0, &qword_1EC087A08, MEMORY[0x1E69A3008]);
    (*(*(v12 - 8) + 8))(v5, v12);
    return 4;
  }

  else if (v6 == *MEMORY[0x1E69A3020])
  {
    (*(v3 + 96))(v5, v2);
    sub_1C3CF3528(0, &qword_1EC087A00, MEMORY[0x1E69A3008]);
    (*(*(v13 - 8) + 8))(v5, v13);
    return 5;
  }

  else
  {
    if (v6 != *MEMORY[0x1E69A3028])
    {
      (*(v3 + 8))(v5, v2);
    }

    return 6;
  }
}

id sub_1C3CEF048()
{
  result = [objc_allocWithZone(HKCodableHealthChartsSeries) init];
  if (result)
  {
    v1 = result;
    [result setShapeType_];
    v2 = sub_1C3CEF0F0();
    [v1 setSeriesData_];

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1C3CEF0F0()
{
  sub_1C3CF3410(0, &qword_1EC085880, MEMORY[0x1E69A3070]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v25 = &v22 - v1;
  v2 = sub_1C3D1EB74();
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_allocWithZone(HKCodableHealthChartsSeriesData) init];
  if (result)
  {
    v6 = result;
    v7 = sub_1C3D1EC94();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v9 = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v11 = swift_getAssociatedConformanceWitness();
    v26 = AssociatedTypeWitness;
    v27 = v9;
    v28 = AssociatedConformanceWitness;
    v29 = v11;
    v12 = sub_1C3D1EBB4();
    v13 = sub_1C3CEF4D8(v7, v12, &off_1F42FDF90);

    sub_1C3C9B28C(v13);

    v14 = objc_allocWithZone(MEMORY[0x1E695DF70]);
    v15 = sub_1C3D202A4();

    v16 = [v14 initWithArray_];

    [v6 setPoints_];
    sub_1C3D1EC74();
    v17 = sub_1C3D1EB64();
    (*(v23 + 8))(v4, v24);
    [v6 setAggregation_];
    v18 = v25;
    sub_1C3D1EC84();
    v19 = sub_1C3D1EC44();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v18, 1, v19) == 1)
    {
      sub_1C3CF33B4(v18, &qword_1EC085880, MEMORY[0x1E69A3070]);
      v21 = 0;
    }

    else
    {
      swift_getKeyPath();
      sub_1C3D1EC34();

      (*(v20 + 8))(v18, v19);
      v21 = sub_1C3D200C4();
    }

    [v6 setUnitString_];

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C3CEF4D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[5] = a1;
  v8[2] = a2;
  v8[3] = a3;
  v3 = sub_1C3D20304();
  v4 = sub_1C3C27CB4(0, &unk_1EC086C00);
  WitnessTable = swift_getWitnessTable();
  return sub_1C3C2EEA0(sub_1C3CF34D4, v8, v3, v4, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v6);
}

void sub_1C3CEF590(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 symbol];
  v4 = sub_1C3D20104();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

unint64_t sub_1C3CEF5E8(void *a1)
{
  v2 = v1;
  sub_1C3CF3528(0, &qword_1EC085C90, MEMORY[0x1E69A3068]);
  v24 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - v6;
  v25 = a1;
  result = [a1 pointsCount];
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_17:
    __break(1u);
  }

  else
  {
    v9 = result;
    if (result)
    {
      v10 = 0;
      v23 = v5 + 32;
      v11 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v12 = [v25 pointsAtIndex_];
        if (v12)
        {
          v13 = v12;
          sub_1C3C35B98();
          v15 = v14;
          v16 = sub_1C3CF336C(&qword_1EC0879F8, sub_1C3C35B98);
          (*(v16 + 16))(&v29, v13, &v28, v15, v16);
          if (v2)
          {
            v22 = v28;

            return v22;
          }

          v2 = 0;
          [v13 yStart];
          v18 = v17;
          result = [v13 yEnd];
          if (v18 > v19)
          {
            __break(1u);
            goto LABEL_17;
          }

          v26 = v18;
          v27 = v19;
          sub_1C3CF336C(&qword_1EC085C50, sub_1C3C35B98);
          sub_1C3D1EBC4();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_1C3C46358(0, v11[2] + 1, 1, v11);
          }

          v21 = v11[2];
          v20 = v11[3];
          if (v21 >= v20 >> 1)
          {
            v11 = sub_1C3C46358(v20 > 1, v21 + 1, 1, v11);
          }

          v11[2] = v21 + 1;
          (*(v5 + 32))(v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v21, v7, v24);
        }

        if (v9 == ++v10)
        {
          return v11;
        }
      }
    }

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

unint64_t sub_1C3CEF8F4(void *a1)
{
  v2 = v1;
  sub_1C3CF35D0(0, &qword_1EC085C80, MEMORY[0x1E69A3068]);
  v19 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - v6;
  v20 = a1;
  result = [a1 pointsCount];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    return result;
  }

  v9 = result;
  if (!result)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v10 = 0;
  v17 = v5 + 32;
  v11 = MEMORY[0x1E69E7CC0];
  v18 = result;
  while (1)
  {
    v12 = [v20 pointsAtIndex_];
    if (v12)
    {
      break;
    }

LABEL_5:
    if (v9 == ++v10)
    {
      return v11;
    }
  }

  v13 = v12;
  sub_1C3CF188C(v12, &v22, &v23);
  if (!v2)
  {
    sub_1C3CF1930(v13, &v22, &v21);
    v2 = 0;
    sub_1C3D1EBC4();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1C3C4638C(0, v11[2] + 1, 1, v11);
    }

    v15 = v11[2];
    v14 = v11[3];
    if (v15 >= v14 >> 1)
    {
      v11 = sub_1C3C4638C(v14 > 1, v15 + 1, 1, v11);
    }

    v11[2] = v15 + 1;
    (*(v5 + 32))(v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v15, v7, v19);
    v9 = v18;
    goto LABEL_5;
  }

  v16 = v22;

  return v16;
}

uint64_t sub_1C3CEFB78(void *a1)
{
  v61 = sub_1C3D1DC54();
  v3 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C3D1E1E4();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v59 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v58 = &v47 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v57 = &v47 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v56 = &v47 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v47 - v15;
  sub_1C3CF3640(0, &qword_1EC085C70, MEMORY[0x1E69A3068]);
  v55 = v17;
  v62 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v47 - v18;
  v63 = a1;
  result = [a1 pointsCount];
  if (result < 0)
  {
LABEL_20:
    __break(1u);
  }

  else
  {
    v21 = result;
    v47 = v1;
    if (result)
    {
      v22 = 0;
      v52 = (v6 + 8);
      v53 = (v6 + 16);
      v51 = (v3 + 8);
      v48 = v62 + 32;
      v23 = MEMORY[0x1E69E7CC0];
      v24 = &selRef_setSleepStageLabelColor_;
      v25 = &selRef_dateIntervalsByValuesCount;
      v54 = v16;
      v49 = result;
      v50 = v19;
      while (1)
      {
        v26 = [v63 pointsAtIndex_];
        if (v26)
        {
          v65 = v26;
          v27 = [v26 dateInterval];
          if (!v27)
          {
            LOBYTE(v66) = 0;
            sub_1C3C3154C();
            swift_willThrowTypedImpl();

            return 0;
          }

          v28 = v27;
          [v27 v24[500]];
          v30 = v29;
          [v28 v25[369]];
          if (v30 != v31)
          {
            LOBYTE(v66) = 1;
            sub_1C3C3154C();
            swift_willThrowTypedImpl();

            return 1;
          }

          v64 = v23;
          [v28 v24[500]];
          v32 = v25;
          v33 = HKDecodeDateForValue();
          v34 = v56;
          sub_1C3D1E1A4();

          [v28 v32 + 2936];
          v35 = HKDecodeDateForValue();
          v36 = v57;
          sub_1C3D1E1A4();

          v37 = *v53;
          (*v53)(v58, v34, v5);
          v37(v59, v36, v5);
          v38 = v60;
          sub_1C3D1DC24();
          v39 = *v52;
          (*v52)(v36, v5);
          v39(v34, v5);
          sub_1C3D1DC34();

          (*v51)(v38, v61);
          v40 = v65;
          [v65 yStart];
          v42 = v41;
          result = [v40 yEnd];
          if (v42 > v43)
          {
            __break(1u);
            goto LABEL_20;
          }

          v66 = v42;
          v67 = v43;
          sub_1C3C35B98();
          sub_1C3CF336C(&qword_1EC085C30, MEMORY[0x1E6969530]);
          sub_1C3CF336C(&qword_1EC085C50, sub_1C3C35B98);
          v44 = v50;
          sub_1C3D1EBC4();
          v23 = v64;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v23 = sub_1C3C463C0(0, v23[2] + 1, 1, v23);
          }

          v21 = v49;
          v24 = &selRef_setSleepStageLabelColor_;
          v46 = v23[2];
          v45 = v23[3];
          if (v46 >= v45 >> 1)
          {
            v23 = sub_1C3C463C0(v45 > 1, v46 + 1, 1, v23);
          }

          v23[2] = v46 + 1;
          (*(v62 + 32))(v23 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v46, v44, v55);
          v25 = &selRef_dateIntervalsByValuesCount;
        }

        if (v21 == ++v22)
        {
          return v23;
        }
      }
    }

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

unint64_t sub_1C3CF01D8(void *a1)
{
  v2 = v1;
  v4 = sub_1C3D1DC54();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3CF3734(0, &qword_1EC085C60, MEMORY[0x1E69A3068]);
  v23 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v22 - v10;
  v25 = a1;
  result = [a1 pointsCount];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    return result;
  }

  v24 = result;
  if (!result)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v22[1] = v5;
  v13 = 0;
  v14 = MEMORY[0x1E69E7CC0];
  v22[2] = v9 + 32;
  v22[3] = v7;
  v15 = v24;
  while (1)
  {
    v16 = [v25 pointsAtIndex_];
    if (v16)
    {
      break;
    }

LABEL_5:
    if (v15 == ++v13)
    {
      return v14;
    }
  }

  v17 = v16;
  v18 = sub_1C3CF336C(&qword_1EC0879F0, MEMORY[0x1E6968130]);
  (*(v18 + 16))(v17, &v27, v4, v18);
  if (!v2)
  {
    sub_1C3CF1930(v17, &v27, &v26);
    v2 = 0;
    sub_1C3CF336C(&qword_1EC085C48, MEMORY[0x1E6968130]);
    sub_1C3D1EBC4();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_1C3C463F4(0, v14[2] + 1, 1, v14);
    }

    v20 = v14[2];
    v19 = v14[3];
    if (v20 >= v19 >> 1)
    {
      v14 = sub_1C3C463F4(v19 > 1, v20 + 1, 1, v14);
    }

    v14[2] = v20 + 1;
    (*(v9 + 32))(v14 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v20, v11, v23);
    v15 = v24;
    goto LABEL_5;
  }

  v21 = v27;

  return v21;
}

unint64_t sub_1C3CF0588(void *a1)
{
  v2 = v1;
  v4 = sub_1C3D1DC54();
  MEMORY[0x1EEE9AC00](v4);
  v26 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3CF37EC(0, &qword_1EC085C40, MEMORY[0x1E69A3068]);
  v23 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v24 = a1;
  v25 = &v22 - v8;
  result = [a1 pointsCount];
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_17:
    __break(1u);
  }

  else
  {
    v10 = result;
    if (result)
    {
      v11 = 0;
      v22 = v7 + 32;
      v12 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v13 = [v24 pointsAtIndex_];
        if (v13)
        {
          v14 = v13;
          v15 = sub_1C3CF336C(&qword_1EC0879F0, MEMORY[0x1E6968130]);
          (*(v15 + 16))(v14, &v29, v4, v15);
          if (v2)
          {
            v21 = v29;

            return v21;
          }

          v2 = 0;
          [v14 yStart];
          v17 = v16;
          result = [v14 yEnd];
          if (v17 > v18)
          {
            __break(1u);
            goto LABEL_17;
          }

          v27 = v17;
          v28 = v18;
          sub_1C3C35B98();
          sub_1C3CF336C(&qword_1EC085C48, MEMORY[0x1E6968130]);
          sub_1C3CF336C(&qword_1EC085C50, sub_1C3C35B98);
          sub_1C3D1EBC4();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v12 = sub_1C3C46428(0, v12[2] + 1, 1, v12);
          }

          v20 = v12[2];
          v19 = v12[3];
          if (v20 >= v19 >> 1)
          {
            v12 = sub_1C3C46428(v19 > 1, v20 + 1, 1, v12);
          }

          v12[2] = v20 + 1;
          (*(v7 + 32))(v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v20, v25, v23);
        }

        if (v10 == ++v11)
        {
          return v12;
        }
      }
    }

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

unint64_t sub_1C3CF0918(void *a1)
{
  v55 = sub_1C3D1DC54();
  v2 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v54 = v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C3D1E1E4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v53 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v52 = v43 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v51 = v43 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v50 = v43 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = v43 - v14;
  sub_1C3CF38E0(0, &qword_1EC085C28, MEMORY[0x1E69A3068]);
  v49 = v16;
  v56 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v43 - v17;
  v57 = a1;
  result = [a1 pointsCount];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    return result;
  }

  v20 = result;
  if (!result)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v21 = 0;
  v47 = (v5 + 16);
  v48 = (v5 + 8);
  v46 = (v2 + 8);
  v43[1] = v56 + 32;
  v22 = MEMORY[0x1E69E7CC0];
  v23 = &selRef_setSleepStageLabelColor_;
  v44 = result;
  v45 = v18;
  while (1)
  {
    v24 = [v57 pointsAtIndex_];
    if (v24)
    {
      break;
    }

LABEL_5:
    if (v20 == ++v21)
    {
      return v22;
    }
  }

  v25 = v24;
  v26 = [v24 dateInterval];
  if (!v26)
  {
    v65 = 0;
    sub_1C3C3154C();
    swift_willThrowTypedImpl();

    v22 = 0;
    goto LABEL_18;
  }

  v27 = v26;
  v60 = v25;
  [v26 v23[500]];
  v29 = v28;
  [v27 endDate];
  if (v29 != v30)
  {
    v64 = 1;
    sub_1C3C3154C();
    swift_willThrowTypedImpl();

    v22 = 1;
    goto LABEL_18;
  }

  v58 = v21;
  v59 = v22;
  [v27 v23[500]];
  v31 = HKDecodeDateForValue();
  v32 = v50;
  sub_1C3D1E1A4();

  [v27 endDate];
  v33 = HKDecodeDateForValue();
  v34 = v51;
  sub_1C3D1E1A4();

  v35 = *v47;
  (*v47)(v52, v32, v4);
  v35(v53, v34, v4);
  v36 = v54;
  sub_1C3D1DC24();
  v37 = *v48;
  (*v48)(v34, v4);
  v37(v32, v4);
  sub_1C3D1DC34();

  (*v46)(v36, v55);
  v38 = v60;
  v39 = v61;
  sub_1C3CF1930(v60, &v62, &v63);
  v61 = v39;
  if (!v39)
  {
    sub_1C3CF336C(&qword_1EC085C30, MEMORY[0x1E6969530]);
    v40 = v45;
    sub_1C3D1EBC4();
    v22 = v59;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_1C3C4645C(0, *(v22 + 16) + 1, 1, v22);
    }

    v21 = v58;
    v42 = *(v22 + 16);
    v41 = *(v22 + 24);
    if (v42 >= v41 >> 1)
    {
      v22 = sub_1C3C4645C(v41 > 1, v42 + 1, 1, v22);
    }

    *(v22 + 16) = v42 + 1;
    (*(v56 + 32))(v22 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v42, v40, v49);
    v20 = v44;
    v23 = &selRef_setSleepStageLabelColor_;
    goto LABEL_5;
  }

  v22 = v62;
  v37(v15, v4);

LABEL_18:
  v61 = 1;
  return v22;
}

id sub_1C3CF0F50(uint64_t a1)
{
  v2 = *(a1 + 24);
  v18 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C3D1DC54();
  v5 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v9);
  result = [objc_allocWithZone(HKCodableHealthChartsSeriesPoint) init];
  if (result)
  {
    v11 = result;
    sub_1C3D1EB94();
    sub_1C3C34F20();
    v12 = swift_dynamicCast();
    v17 = v1;
    if (v12)
    {
      sub_1C3972F30(v19, v20);
      __swift_project_boxed_opaque_existential_0(v20, v21);
      sub_1C3D1ECC4();
      v13 = sub_1C3CF31E4();
      (*(v5 + 8))(v7, v16);
      [v11 setDateInterval_];
    }

    else
    {
      sub_1C3D1EB94();
      sub_1C3C34F8C();
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_7:
        sub_1C3D1EBA4();
        sub_1C3D1ECB4();
        v14 = *(v18 + 8);
        v14(v4, v2);
        [v11 setYStart_];
        sub_1C3D1EBA4();
        sub_1C3D1ECA4();
        v14(v4, v2);
        [v11 setYEnd_];
        return v11;
      }

      sub_1C3972F30(v19, v20);
      __swift_project_boxed_opaque_existential_0(v20, v21);
      sub_1C3C27CB4(0, &qword_1EC0879E0);
      v13 = sub_1C3CF12E8();
      [v11 setScalarInterval_];
    }

    __swift_destroy_boxed_opaque_existential_0(v20);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

id sub_1C3CF12E8()
{
  result = [objc_allocWithZone(HKCodableClosedRange) init];
  if (result)
  {
    v1 = result;
    sub_1C3D1ECB4();
    [v1 setLowerBound_];
    sub_1C3D1ECA4();
    [v1 setUpperBound_];
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C3CF1394(void *a1, char *a2)
{
  v4 = sub_1C3D1DC54();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = [a1 dateInterval];
  if (v9)
  {
    v10 = v9;
    [v9 startDate];
    v12 = v11;
    [v10 endDate];
    if (v12 == v13)
    {
      sub_1C3CF1534(v10);
      sub_1C3D1DC34();

      (*(v5 + 8))(v8, v4);
      return;
    }

    v14 = 1;
    v15[14] = 1;
    sub_1C3C3154C();
    swift_willThrowTypedImpl();
  }

  else
  {
    v15[15] = 0;
    sub_1C3C3154C();
    swift_willThrowTypedImpl();
    v14 = 0;
  }

  *a2 = v14;
}

uint64_t sub_1C3CF1534(void *a1)
{
  v2 = sub_1C3D1E1E4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v21 - v14;
  [a1 startDate];
  v16 = HKDecodeDateForValue();
  sub_1C3D1E1A4();

  [a1 endDate];
  v17 = HKDecodeDateForValue();
  sub_1C3D1E1A4();

  v18 = *(v3 + 16);
  v18(v8, v15, v2);
  v18(v5, v11, v2);
  sub_1C3D1DC24();
  v19 = *(v3 + 8);
  v19(v11, v2);
  return (v19)(v15, v2);
}

void sub_1C3CF1720(void *a1, _BYTE *a2)
{
  sub_1C3CF1394(a1, &v4);
  if (v2)
  {
    *a2 = v4;
  }
}

uint64_t sub_1C3CF1758(uint64_t a1)
{
  result = sub_1C3CF336C(&qword_1EC085C30, MEMORY[0x1E6969530]);
  *(a1 + 8) = result;
  return result;
}

void sub_1C3CF17B0(void *a1, _BYTE *a2)
{
  v3 = [a1 dateInterval];
  if (v3)
  {
    v4 = v3;
    sub_1C3CF1534(v3);
  }

  else
  {
    sub_1C3C3154C();
    swift_willThrowTypedImpl();
    *a2 = 0;
  }
}

uint64_t sub_1C3CF1834(uint64_t a1)
{
  result = sub_1C3CF336C(&qword_1EC085C48, MEMORY[0x1E6968130]);
  *(a1 + 8) = result;
  return result;
}

void sub_1C3CF188C(void *a1@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  v5 = [a1 scalarInterval];
  if (v5)
  {
    v6 = v5;
    [v5 lowerBound];
    v8 = v7;

    *a3 = v8;
  }

  else
  {
    sub_1C3C3154C();
    swift_willThrowTypedImpl();
    *a2 = 2;
  }
}

id sub_1C3CF1930@<X0>(void *a1@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  [a1 yStart];
  v7 = v6;
  [a1 yEnd];
  if (v7 == v8)
  {
    result = [a1 yStart];
    *a3 = v10;
  }

  else
  {
    sub_1C3C3154C();
    result = swift_willThrowTypedImpl();
    *a2 = 3;
  }

  return result;
}

void sub_1C3CF19E4(void *a1@<X0>, _BYTE *a2@<X1>, double *a3@<X8>)
{
  v5 = [a1 scalarInterval];
  if (v5)
  {
    v6 = v5;
    [v5 lowerBound];
    v8 = v7;
    [v6 upperBound];
    v10 = v9;

    if (v8 > v10)
    {
      __break(1u);
    }

    else
    {
      *a3 = v8;
      a3[1] = v10;
    }
  }

  else
  {
    sub_1C3C3154C();
    swift_willThrowTypedImpl();
    *a2 = 2;
  }
}

id sub_1C3CF1AA0@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  [a1 yStart];
  v5 = v4;
  result = [a1 yEnd];
  if (v5 > v7)
  {
    __break(1u);
  }

  else
  {
    *a2 = v5;
    a2[1] = v7;
  }

  return result;
}

unint64_t sub_1C3CF1B0C(void *a1)
{
  sub_1C3CF3410(0, &qword_1EC085880, MEMORY[0x1E69A3070]);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v111 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v111 - v7;
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v111 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v123 = &v111 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v122 = &v111 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v121 = &v111 - v16;
  sub_1C3CF3410(0, &qword_1EC0879E8, MEMORY[0x1E69A3058]);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v133 = &v111 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v132 = &v111 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v131 = &v111 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v130 = &v111 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v129 = &v111 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v128 = &v111 - v28;
  v149 = sub_1C3D1EB74();
  v29 = *(v149 - 8);
  v30 = MEMORY[0x1EEE9AC00](v149);
  v140 = &v111 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v127 = &v111 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v139 = &v111 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v126 = &v111 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v138 = &v111 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v142 = &v111 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v137 = &v111 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v125 = &v111 - v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v136 = &v111 - v47;
  v48 = MEMORY[0x1EEE9AC00](v46);
  v141 = &v111 - v49;
  v50 = MEMORY[0x1EEE9AC00](v48);
  v135 = &v111 - v51;
  MEMORY[0x1EEE9AC00](v50);
  v124 = &v111 - v52;
  v156 = sub_1C3D1EB44();
  v53 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v155 = &v111 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 seriesCount];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
    return result;
  }

  v56 = result;
  if (!result)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v118 = v11;
  v119 = v8;
  v120 = v5;
  v57 = 0;
  v147 = (v29 + 32);
  v148 = (v29 + 48);
  v145 = (v29 + 16);
  v146 = (v29 + 8);
  v117 = *MEMORY[0x1E69A3020];
  v152 = (v53 + 104);
  v116 = *MEMORY[0x1E69A3018];
  v115 = *MEMORY[0x1E69A3010];
  v114 = *MEMORY[0x1E69A3030];
  v113 = *MEMORY[0x1E69A3040];
  v112 = *MEMORY[0x1E69A3038];
  v151 = v53 + 32;
  v143 = *MEMORY[0x1E69A3028];
  v58 = MEMORY[0x1E69E7CC0];
  v144 = a1;
  v59 = v149;
  v134 = v53;
  v153 = result;
  while (1)
  {
    v60 = [a1 seriesAtIndex_];
    if (v60)
    {
      break;
    }

LABEL_5:
    if (v56 == ++v57)
    {
      return v58;
    }
  }

  v61 = v60;
  v62 = [v60 seriesData];
  if (!v62)
  {
    (*v152)(v155, v143, v156);
LABEL_61:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v56 = v153;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v58 = sub_1C3C46490(0, v58[2] + 1, 1, v58);
    }

    v110 = v58[2];
    v109 = v58[3];
    if (v110 >= v109 >> 1)
    {
      v58 = sub_1C3C46490(v109 > 1, v110 + 1, 1, v58);
    }

    v58[2] = v110 + 1;
    (*(v53 + 32))(v58 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v110, v155, v156);
    goto LABEL_5;
  }

  v63 = v62;
  v64 = [v61 shapeType];
  if (v64 > 2)
  {
    if (v64 != 3)
    {
      if (v64 == 4)
      {
        [v63 aggregation];
        v90 = v132;
        sub_1C3D1EB54();
        if ((*v148)(v90, 1, v59) == 1)
        {
          sub_1C3CF33B4(v90, &qword_1EC0879E8, MEMORY[0x1E69A3058]);
          v161 = 4;
          sub_1C3C3154C();
          goto LABEL_75;
        }

        v91 = v126;
        (*v147)(v126, v90, v59);
        v92 = v154;
        v93 = sub_1C3CEF8F4(v63);
        if (v92)
        {
          (*v146)(v91, v59);
          goto LABEL_77;
        }

        v154 = 0;
        (*v145)(v139, v91, v59);
        if ([v63 hasUnitString])
        {
          v150 = v93;
          result = [v63 unitString];
          if (!result)
          {
            goto LABEL_81;
          }

          v94 = result;
          v95 = [objc_opt_self() unitFromString_];

          sub_1C3D20674();
        }

        else
        {
          v106 = sub_1C3D1EC44();
          (*(*(v106 - 8) + 56))(v119, 1, 1, v106);
        }

        v107 = v155;
        sub_1C3D1EB24();
        v59 = v149;
        (*v146)(v91, v149);
        (*v152)(v107, v116, v156);
        goto LABEL_60;
      }

      if (v64 == 5)
      {
        [v63 aggregation];
        v71 = v133;
        sub_1C3D1EB54();
        if ((*v148)(v71, 1, v59) != 1)
        {
          v66 = v127;
          (*v147)(v127, v71, v59);
          v72 = v154;
          v68 = sub_1C3CEF5E8(v63);
          if (v72)
          {
            goto LABEL_67;
          }

          v150 = v68;
          v154 = 0;
          (*v145)(v140, v66, v59);
          if ([v63 hasUnitString])
          {
            result = [v63 unitString];
            if (!result)
            {
              goto LABEL_86;
            }

            v73 = result;
            v74 = [objc_opt_self() unitFromString_];

            sub_1C3D20674();
          }

          else
          {
            v102 = sub_1C3D1EC44();
            (*(*(v102 - 8) + 56))(v120, 1, 1, v102);
          }

          sub_1C3C35B98();
          sub_1C3CF336C(&qword_1EC085C50, sub_1C3C35B98);
          v103 = v155;
          sub_1C3D1EB24();
          v59 = v149;
          (*v146)(v66, v149);
          (*v152)(v103, v117, v156);
          goto LABEL_60;
        }

        sub_1C3CF33B4(v71, &qword_1EC0879E8, MEMORY[0x1E69A3058]);
        v162 = 4;
        sub_1C3C3154C();
        goto LABEL_75;
      }

      goto LABEL_36;
    }

    [v63 aggregation];
    v79 = v131;
    sub_1C3D1EB54();
    if ((*v148)(v79, 1, v59) == 1)
    {
      sub_1C3CF33B4(v79, &qword_1EC0879E8, MEMORY[0x1E69A3058]);
      v160 = 4;
      sub_1C3C3154C();
      goto LABEL_75;
    }

    v80 = v142;
    (*v147)(v142, v79, v59);
    v81 = v154;
    v150 = sub_1C3CEFB78(v63);
    if (v81)
    {
      goto LABEL_68;
    }

    (*v145)(v138, v80, v59);
    v82 = [v63 hasUnitString];
    v154 = 0;
    if (v82)
    {
      result = [v63 unitString];
      if (!result)
      {
        goto LABEL_84;
      }

      v83 = result;
      v84 = [objc_opt_self() unitFromString_];

      sub_1C3D20674();
    }

    else
    {
      v98 = sub_1C3D1EC44();
      (*(*(v98 - 8) + 56))(v118, 1, 1, v98);
    }

    sub_1C3D1E1E4();
    sub_1C3C35B98();
    sub_1C3CF336C(&qword_1EC085C30, MEMORY[0x1E6969530]);
    sub_1C3CF336C(&qword_1EC085C50, sub_1C3C35B98);
    v99 = v155;
    sub_1C3D1EB24();
    v59 = v149;
    (*v146)(v142, v149);
    (*v152)(v99, v115, v156);
LABEL_57:

    a1 = v144;
    v53 = v134;
    goto LABEL_61;
  }

  if (v64)
  {
    if (v64 != 1)
    {
      if (v64 == 2)
      {
        [v63 aggregation];
        v65 = v130;
        sub_1C3D1EB54();
        if ((*v148)(v65, 1, v59) != 1)
        {
          v66 = v125;
          (*v147)(v125, v65, v59);
          v67 = v154;
          v68 = sub_1C3CF01D8(v63);
          if (v67)
          {
            goto LABEL_67;
          }

          v150 = v68;
          v154 = 0;
          (*v145)(v137, v66, v59);
          if ([v63 hasUnitString])
          {
            result = [v63 unitString];
            if (!result)
            {
              goto LABEL_83;
            }

            v69 = result;
            v70 = [objc_opt_self() unitFromString_];

            sub_1C3D20674();
          }

          else
          {
            v100 = sub_1C3D1EC44();
            (*(*(v100 - 8) + 56))(v123, 1, 1, v100);
          }

          sub_1C3D1DC54();
          sub_1C3CF336C(&qword_1EC085C48, MEMORY[0x1E6968130]);
          v101 = v155;
          sub_1C3D1EB24();
          v59 = v149;
          (*v146)(v66, v149);
          (*v152)(v101, v114, v156);
          goto LABEL_60;
        }

        sub_1C3CF33B4(v65, &qword_1EC0879E8, MEMORY[0x1E69A3058]);
        v159 = 4;
        sub_1C3C3154C();
LABEL_75:
        swift_willThrowTypedImpl();

        LOBYTE(v93) = 4;
        return v93;
      }

LABEL_36:
      (*v152)(v155, v143, v156);

      goto LABEL_61;
    }

    [v63 aggregation];
    v85 = v129;
    sub_1C3D1EB54();
    if ((*v148)(v85, 1, v59) == 1)
    {
      sub_1C3CF33B4(v85, &qword_1EC0879E8, MEMORY[0x1E69A3058]);
      v158 = 4;
      sub_1C3C3154C();
      goto LABEL_75;
    }

    v80 = v141;
    (*v147)(v141, v85, v59);
    v86 = v154;
    v150 = sub_1C3CF0588(v63);
    if (v86)
    {
LABEL_68:
      (*v146)(v80, v59);

      LOBYTE(v93) = v150;
      return v93;
    }

    (*v145)(v136, v80, v59);
    v87 = [v63 hasUnitString];
    v154 = 0;
    if (v87)
    {
      result = [v63 unitString];
      if (!result)
      {
        goto LABEL_85;
      }

      v88 = result;
      v89 = [objc_opt_self() unitFromString_];

      sub_1C3D20674();
    }

    else
    {
      v104 = sub_1C3D1EC44();
      (*(*(v104 - 8) + 56))(v122, 1, 1, v104);
    }

    sub_1C3D1DC54();
    sub_1C3C35B98();
    sub_1C3CF336C(&qword_1EC085C48, MEMORY[0x1E6968130]);
    sub_1C3CF336C(&qword_1EC085C50, sub_1C3C35B98);
    v105 = v155;
    sub_1C3D1EB24();
    v59 = v149;
    (*v146)(v141, v149);
    (*v152)(v105, v113, v156);
    goto LABEL_57;
  }

  [v63 aggregation];
  v75 = v128;
  sub_1C3D1EB54();
  if ((*v148)(v75, 1, v59) == 1)
  {
    sub_1C3CF33B4(v75, &qword_1EC0879E8, MEMORY[0x1E69A3058]);
    v157 = 4;
    sub_1C3C3154C();
    goto LABEL_75;
  }

  v66 = v124;
  (*v147)(v124, v75, v59);
  v76 = v154;
  v68 = sub_1C3CF0918(v63);
  if (!v76)
  {
    v150 = v68;
    v154 = 0;
    (*v145)(v135, v66, v59);
    if ([v63 hasUnitString])
    {
      result = [v63 unitString];
      if (!result)
      {
        goto LABEL_82;
      }

      v77 = result;
      v78 = [objc_opt_self() unitFromString_];

      sub_1C3D20674();
    }

    else
    {
      v96 = sub_1C3D1EC44();
      (*(*(v96 - 8) + 56))(v121, 1, 1, v96);
    }

    sub_1C3D1E1E4();
    sub_1C3CF336C(&qword_1EC085C30, MEMORY[0x1E6969530]);
    v97 = v155;
    sub_1C3D1EB24();
    v59 = v149;
    (*v146)(v66, v149);
    (*v152)(v97, v112, v156);
LABEL_60:

    a1 = v144;
    goto LABEL_61;
  }

LABEL_67:
  LOBYTE(v93) = v68;
  (*v146)(v66, v59);
LABEL_77:

  return v93;
}

id sub_1C3CF31E4()
{
  v0 = sub_1C3D1E1E4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_allocWithZone(HKCodableDateInterval) init];
  if (result)
  {
    v5 = result;
    sub_1C3D1DC34();
    v6 = sub_1C3D1E174();
    v7 = *(v1 + 8);
    v7(v3, v0);
    v8 = HKEncodeValueForDate(v6);

    [v5 setStartDate_];
    sub_1C3D1DC14();
    v9 = sub_1C3D1E174();
    v7(v3, v0);
    v10 = HKEncodeValueForDate(v9);

    [v5 setEndDate_];
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C3CF336C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C3CF33B4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1C3CF3410(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1C3CF3410(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C3D206E4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1C3CF3464()
{
  result = qword_1EC085868;
  if (!qword_1EC085868)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC085868);
  }

  return result;
}

uint64_t sub_1C3CF34D4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(*(v1 + 24) + 8))(*(v1 + 16));
  *a1 = result;
  return result;
}

void sub_1C3CF3528(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    sub_1C3C35B98();
    v9[0] = v6;
    v9[1] = v6;
    v10 = sub_1C3CF336C(&qword_1EC085C50, sub_1C3C35B98);
    v11 = v10;
    v7 = a3(a1, v9);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1C3CF35D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v8[6] = v3;
    v8[7] = v4;
    v8[0] = MEMORY[0x1E69E63B0];
    v8[1] = MEMORY[0x1E69E63B0];
    v8[2] = MEMORY[0x1E69A30B8];
    v8[3] = MEMORY[0x1E69A30B8];
    v6 = a3(0, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1C3CF3640(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = sub_1C3D1E1E4();
    sub_1C3C35B98();
    v10[0] = v6;
    v10[1] = v7;
    v10[2] = sub_1C3CF336C(&qword_1EC085C30, MEMORY[0x1E6969530]);
    v10[3] = sub_1C3CF336C(&qword_1EC085C50, sub_1C3C35B98);
    v8 = a3(a1, v10);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1C3CF3734(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = sub_1C3D1DC54();
    v7 = sub_1C3CF336C(&qword_1EC085C48, MEMORY[0x1E6968130]);
    v10[0] = v6;
    v10[1] = MEMORY[0x1E69E63B0];
    v10[2] = v7;
    v10[3] = MEMORY[0x1E69A30B8];
    v8 = a3(a1, v10);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1C3CF37EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = sub_1C3D1DC54();
    sub_1C3C35B98();
    v10[0] = v6;
    v10[1] = v7;
    v10[2] = sub_1C3CF336C(&qword_1EC085C48, MEMORY[0x1E6968130]);
    v10[3] = sub_1C3CF336C(&qword_1EC085C50, sub_1C3C35B98);
    v8 = a3(a1, v10);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1C3CF38E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = sub_1C3D1E1E4();
    v7 = sub_1C3CF336C(&qword_1EC085C30, MEMORY[0x1E6969530]);
    v10[0] = v6;
    v10[1] = MEMORY[0x1E69E63B0];
    v10[2] = v7;
    v10[3] = MEMORY[0x1E69A30B8];
    v8 = a3(a1, v10);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for HealthChartsDataCodingError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HealthChartsDataCodingError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C3CF3AEC()
{
  result = qword_1EC087A30;
  if (!qword_1EC087A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC087A30);
  }

  return result;
}

double static CalendarMonthHeaderView.referenceHeight.getter()
{
  if (qword_1EC085128 != -1)
  {
    swift_once();
  }

  v0 = [objc_allocWithZone(MEMORY[0x1E69DCA40]) initForTextStyle_];
  [v0 scaledValueForValue_];
  v2 = v1;

  return v2;
}

id CalendarMonthHeaderView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

uint64_t CalendarMonthHeaderView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC8HealthUI23CalendarMonthHeaderView_monthLabel;
  v10 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v11 = [objc_opt_self() labelColor];
  [v10 setTextColor_];

  [v10 setTextAlignment_];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v9] = v10;
  *&v4[OBJC_IVAR____TtC8HealthUI23CalendarMonthHeaderView_horizontalSectionInset] = 0;
  *&v4[OBJC_IVAR____TtC8HealthUI23CalendarMonthHeaderView_weekday] = 0;
  *&v4[OBJC_IVAR____TtC8HealthUI23CalendarMonthHeaderView_numberOfDaysPerWeek] = 7;
  *&v4[OBJC_IVAR____TtC8HealthUI23CalendarMonthHeaderView_xPositionConstraint] = 0;
  v48.receiver = v4;
  v48.super_class = type metadata accessor for CalendarMonthHeaderView();
  v12 = objc_msgSendSuper2(&v48, sel_initWithFrame_, a1, a2, a3, a4);
  v13 = OBJC_IVAR____TtC8HealthUI23CalendarMonthHeaderView_monthLabel;
  v14 = *&v12[OBJC_IVAR____TtC8HealthUI23CalendarMonthHeaderView_monthLabel];
  v15 = v12;
  [v15 addSubview_];
  v16 = [*&v12[v13] centerXAnchor];
  v17 = [v15 leadingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:0.0];

  v19 = OBJC_IVAR____TtC8HealthUI23CalendarMonthHeaderView_xPositionConstraint;
  v20 = *&v15[OBJC_IVAR____TtC8HealthUI23CalendarMonthHeaderView_xPositionConstraint];
  *&v15[OBJC_IVAR____TtC8HealthUI23CalendarMonthHeaderView_xPositionConstraint] = v18;
  v21 = v18;

  LODWORD(v22) = 1144750080;
  [v21 setPriority_];

  sub_1C3C27C60();
  result = swift_allocObject();
  *(result + 16) = xmmword_1C3D61370;
  v24 = *&v15[v19];
  if (v24)
  {
    v25 = result;
    v26 = objc_opt_self();
    v25[4] = v24;
    v27 = *&v12[v13];
    v28 = v24;
    v29 = [v27 bottomAnchor];
    v30 = [v15 bottomAnchor];

    v31 = [v29 constraintEqualToAnchor_];
    v25[5] = v31;
    v32 = [*&v12[v13] leadingAnchor];
    v33 = [v15 layoutMarginsGuide];

    v34 = [v33 leadingAnchor];
    v35 = [v32 constraintGreaterThanOrEqualToAnchor_];

    v25[6] = v35;
    v36 = [v15 layoutMarginsGuide];

    v37 = [v36 trailingAnchor];
    v38 = [*&v12[v13] trailingAnchor];
    v39 = [v37 constraintGreaterThanOrEqualToAnchor_];

    v25[7] = v39;
    sub_1C3CD508C();
    v40 = sub_1C3D202A4();

    [v26 activateConstraints_];

    v41 = *&v12[v13];
    v42 = objc_opt_self();
    if (qword_1EC085128 != -1)
    {
      v47 = v42;
      swift_once();
      v42 = v47;
    }

    v43 = [v42 hk:qword_1EC087A40 preferredFontForTextStyle:2 symbolicTraits:?];
    [v41 setFont_];

    sub_1C3CF48E4();
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1C3D5F370;
    v45 = sub_1C3D1EE44();
    v46 = MEMORY[0x1E69DC2B0];
    *(v44 + 32) = v45;
    *(v44 + 40) = v46;
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1C3CD24C0();
    sub_1C3D20684();

    swift_unknownObjectRelease();

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C3CF418C(uint64_t a1, void *a2)
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    return;
  }

  v4 = Strong;
  if (a2)
  {
    v5 = a2;
    v6 = [v4 traitCollection];
    v7 = [v6 preferredContentSizeCategory];

    v8 = [v5 preferredContentSizeCategory];
    v9 = sub_1C3D20104();
    v11 = v10;
    if (v9 == sub_1C3D20104() && v11 == v12)
    {

LABEL_10:

      return;
    }

    v13 = sub_1C3D20A54();

    if (v13)
    {
      goto LABEL_10;
    }
  }

  v14 = *&v4[OBJC_IVAR____TtC8HealthUI23CalendarMonthHeaderView_monthLabel];
  v15 = objc_opt_self();
  if (qword_1EC085128 != -1)
  {
    v17 = v15;
    swift_once();
    v15 = v17;
  }

  v16 = [v15 hk:qword_1EC087A40 preferredFontForTextStyle:2 symbolicTraits:?];
  [v14 setFont_];
}

id sub_1C3CF4560(uint64_t a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for CalendarMonthHeaderView();
  objc_msgSendSuper2(&v8, sel_applyLayoutAttributes_, a1);
  type metadata accessor for CalendarViewLayoutAttributes();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = OBJC_IVAR____TtC8HealthUI28CalendarViewLayoutAttributes_horizontalSectionInset;
    v5 = v3;
    swift_beginAccess();
    *&v1[OBJC_IVAR____TtC8HealthUI23CalendarMonthHeaderView_horizontalSectionInset] = *(v5 + v4);
    v6 = OBJC_IVAR____TtC8HealthUI28CalendarViewLayoutAttributes_numberOfDaysPerWeek;
    swift_beginAccess();
    *&v1[OBJC_IVAR____TtC8HealthUI23CalendarMonthHeaderView_numberOfDaysPerWeek] = *(v5 + v6);
  }

  return sub_1C3CF462C();
}

id sub_1C3CF462C()
{
  [v0 bounds];
  result = *&v0[OBJC_IVAR____TtC8HealthUI23CalendarMonthHeaderView_xPositionConstraint];
  if (!result)
  {
    goto LABEL_7;
  }

  v3 = *&v0[OBJC_IVAR____TtC8HealthUI23CalendarMonthHeaderView_weekday];
  v4 = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (v4)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = *&v0[OBJC_IVAR____TtC8HealthUI23CalendarMonthHeaderView_horizontalSectionInset];
  v7 = (v1 - (v6 + v6)) / *&v0[OBJC_IVAR____TtC8HealthUI23CalendarMonthHeaderView_numberOfDaysPerWeek];
  v8 = v7 * 0.5 + v6 + v7 * v5;

  return [result setConstant_];
}

id CalendarMonthHeaderView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CalendarMonthHeaderView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall CalendarMonthHeaderView.setMonthText(_:alignedToWeekday:)(Swift::String_optional _, Swift::Int alignedToWeekday)
{
  v4 = *(v2 + OBJC_IVAR____TtC8HealthUI23CalendarMonthHeaderView_monthLabel);
  if (_.value._object)
  {
    v5 = sub_1C3D200C4();
  }

  else
  {
    v5 = 0;
  }

  [v4 setText_];

  *(v2 + OBJC_IVAR____TtC8HealthUI23CalendarMonthHeaderView_weekday) = alignedToWeekday;

  sub_1C3CF462C();
}

void sub_1C3CF48E4()
{
  if (!qword_1EC087350)
  {
    sub_1C3CD240C();
    v0 = sub_1C3D20A24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC087350);
    }
  }
}

void sub_1C3CF495C()
{
  v1 = OBJC_IVAR____TtC8HealthUI23CalendarMonthHeaderView_monthLabel;
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v3 = [objc_opt_self() labelColor];
  [v2 setTextColor_];

  [v2 setTextAlignment_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v1) = v2;
  *(v0 + OBJC_IVAR____TtC8HealthUI23CalendarMonthHeaderView_horizontalSectionInset) = 0;
  *(v0 + OBJC_IVAR____TtC8HealthUI23CalendarMonthHeaderView_weekday) = 0;
  *(v0 + OBJC_IVAR____TtC8HealthUI23CalendarMonthHeaderView_numberOfDaysPerWeek) = 7;
  *(v0 + OBJC_IVAR____TtC8HealthUI23CalendarMonthHeaderView_xPositionConstraint) = 0;
  sub_1C3D20944();
  __break(1u);
}

id static HKInteractiveChartOverlayPredicate.stateOfMindSampleCountOverlay(for:)(uint64_t a1)
{
  v2 = objc_opt_self();
  sub_1C3C27C60();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C3D5EAE0;
  sub_1C3C258C4();
  HKStateOfMindAssociationFromDomain();
  *(v3 + 32) = sub_1C3D20694();
  v4 = sub_1C3D202A4();

  v5 = [v2 predicateForStatesOfMindWithAssociations_];

  v6 = HKUILocalizedStringForStateOfMindDomain(a1);
  if (!v6)
  {
    sub_1C3D20104();
    v6 = sub_1C3D200C4();
  }

  v7 = [objc_allocWithZone(HKInteractiveChartOverlayPredicate) initWithPredicate:v5 name:v6];

  return v7;
}

id static HKInteractiveChartOverlayPredicate.stateOfMindSampleCountOverlay(for:title:)()
{
  v0 = objc_opt_self();
  v1 = [v0 predicateForStatesOfMindWithKind_];
  v2 = objc_allocWithZone(HKInteractiveChartOverlayPredicate);
  v3 = sub_1C3D200C4();
  v4 = [v2 initWithPredicate:v1 name:v3];

  return v4;
}

id sub_1C3CF4C4C(uint64_t a1)
{
  v2 = sub_1C3D1E8C4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v60 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v46 - v6;
  v8 = sub_1C3D1E8A4();
  v9 = *(v8 + 16);
  if (!v9)
  {

    goto LABEL_21;
  }

  v47 = a1;
  v62 = MEMORY[0x1E69E7CC0];
  sub_1C3C23BDC(0, v9, 0);
  v10 = v62;
  v12 = *(v3 + 16);
  v11 = v3 + 16;
  v13 = (*(v11 + 64) + 32) & ~*(v11 + 64);
  v46 = v8;
  v14 = v8 + v13;
  v57 = *(v11 + 56);
  v58 = v12;
  v56 = (v11 + 72);
  v55 = *MEMORY[0x1E69A2E60];
  v54 = *MEMORY[0x1E69A2E50];
  v53 = *MEMORY[0x1E69A2E48];
  v52 = *MEMORY[0x1E69A2E58];
  v15 = (v11 - 8);
  v49 = 0x80000001C3D881C0;
  v48 = *MEMORY[0x1E69A2E40];
  v51 = 0x80000001C3D881A0;
  v59 = v11;
  do
  {
    v16 = v58;
    v58(v7, v14, v2);
    v17 = v60;
    v16(v60, v7, v2);
    v18 = (*v56)(v17, v2);
    if (v18 == v55)
    {
      (*v15)(v7, v2);
      v19 = 0x2E7472616568;
    }

    else
    {
      if (v18 != v54)
      {
        if (v18 == v53)
        {
          (*v15)(v7, v2);
          v20 = 0xD000000000000010;
          v21 = v51;
        }

        else if (v18 == v52)
        {
          (*v15)(v7, v2);
          v20 = 0xD000000000000014;
          v21 = v49;
        }

        else
        {
          v25 = v10;
          v26 = *v15;
          v27 = v18;
          (*v15)(v7, v2);
          if (v27 == v48)
          {
            v20 = 0x62756F642E646562;
            v21 = 0xEF6C6C69662E656CLL;
          }

          else
          {
            v26(v60, v2);
            v20 = 0x69662E7472616568;
            v21 = 0xEA00000000006C6CLL;
          }

          v10 = v25;
        }

        goto LABEL_8;
      }

      (*v15)(v7, v2);
      v19 = 0x2E73676E756CLL;
    }

    v20 = v19 & 0xFFFFFFFFFFFFLL | 0x6966000000000000;
    v21 = 0xEA00000000006C6CLL;
LABEL_8:
    v62 = v10;
    v23 = *(v10 + 16);
    v22 = *(v10 + 24);
    if (v23 >= v22 >> 1)
    {
      sub_1C3C23BDC((v22 > 1), v23 + 1, 1);
      v10 = v62;
    }

    *(v10 + 16) = v23 + 1;
    v24 = v10 + 16 * v23;
    *(v24 + 32) = v20;
    *(v24 + 40) = v21;
    v14 += v57;
    --v9;
  }

  while (v9);

  a1 = v47;
LABEL_21:
  v28 = sub_1C3D1E364();
  v29 = [objc_allocWithZone(HKAxisStyle) init];
  v30 = objc_opt_self();
  v31 = [v30 hk_chartAxisLabelColor];
  v32 = objc_opt_self();
  v33 = [v32 strokeStyleWithColor:v31 lineWidth:1.0];

  [v29 setAxisLineStyle_];
  v34 = [v30 hk_chartAxisLabelColor];
  v35 = [objc_opt_self() hk:15.0 roundedSystemFontWithSize:*MEMORY[0x1E69DB970] weight:?];
  v36 = [objc_opt_self() labelStyleWithColor:v34 font:v35 horizontalAlignment:1 verticalAlignment:3 isSystemSymbol:1];

  [v29 setLabelStyle_];
  [v29 setTickPositions_];
  [v29 setAxisLabelPosition_];
  [v29 setShowGridLines_];
  [v29 setLocation_];
  v37 = [v30 hk_chartAxisMajorGridColor];
  v38 = [v32 strokeStyleWithColor:v37 lineWidth:0.5];

  [v38 setDashStyle_];
  [v29 setGridLineStyle_];
  v39 = [v30 hk_chartGrayGraphColor];
  v40 = [v32 strokeStyleWithColor:v39 lineWidth:0.5];

  [v40 setDashStyle_];
  [v29 setReferenceGridLineStyle_];

  v41 = sub_1C3D202A4();

  v42 = type metadata accessor for BalanceDayXAxis();
  v61.receiver = v50;
  v61.super_class = v42;
  v43 = objc_msgSendSuper2(&v61, sel_initWithCurrentCalendar_axisStyle_categoryTitles_, v28, v29, v41);

  v44 = sub_1C3D1E3C4();
  (*(*(v44 - 8) + 8))(a1, v44);
  return v43;
}

id sub_1C3CF5444()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BalanceDayXAxis();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id BreathingDisturbancesAxis.init(displayType:)(void *a1)
{
  *&v1[OBJC_IVAR___HKBreathingDisturbancesAxis_displayType] = a1;
  v3 = objc_allocWithZone(HKNumericAxisConfiguration);
  v4 = a1;
  v5 = [v3 init];
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 preferredAxisStyle];
  [v7 setPreferredStyle_];

  [v7 setTopVerticalLabelPadding_];
  [v7 setBottomVerticalLabelPadding_];
  v11.receiver = v1;
  v11.super_class = type metadata accessor for BreathingDisturbancesAxis();
  v9 = objc_msgSendSuper2(&v11, sel_initWithConfiguration_, v7);

  return v9;
}

id sub_1C3CF573C(void *a1)
{
  swift_getObjectType();
  v2 = [a1 maxValue];
  if (v2 && (v23 = v2, (swift_dynamicCast() & 1) != 0))
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v5 = [objc_opt_self() valueRangeWithMinValue:v3 maxValue:v4];

    return v5;
  }

  else
  {
    if (qword_1EC0850B8 != -1)
    {
      swift_once();
    }

    v7 = sub_1C3D1EDA4();
    __swift_project_value_buffer(v7, qword_1EC08DCC8);
    v21 = a1;
    v8 = sub_1C3D1ED84();
    v9 = sub_1C3D204F4();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v23 = v11;
      *v10 = 136446466;
      v12 = sub_1C3D20CD4();
      v14 = sub_1C3C22C28(v12, v13, &v23);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2082;
      v15 = v21;
      v16 = [v15 description];
      v17 = sub_1C3D20104();
      v19 = v18;

      v20 = sub_1C3C22C28(v17, v19, &v23);

      *(v10 + 14) = v20;
      _os_log_impl(&dword_1C3942000, v8, v9, "[%{public}s] Cannot adjust values for incompatible range: %{public}s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C69321D0](v11, -1, -1);
      MEMORY[0x1C69321D0](v10, -1, -1);
    }

    return v21;
  }
}

id BreathingDisturbancesAxis.__allocating_init(configuration:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithConfiguration_];

  return v3;
}

id BreathingDisturbancesAxis.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BreathingDisturbancesAxis();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C3CF5B5C(uint64_t a1, void *a2, char a3, double a4, double a5)
{
  v26 = MEMORY[0x1E69E7CC0];
  if (a3)
  {
    v9 = [objc_allocWithZone(HKAxisLabel) init];
    [v9 setLabelType_];
    v10 = [a2 &selRef_renderContentToContext_];
    [v10 adjustedDoubleForDaemonDouble_];

    v11 = sub_1C3D1E804();
    [v9 setLocation_];

    v12 = v9;
    MEMORY[0x1C692F8F0]();
    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C3D202C4();
    }

    sub_1C3D202F4();
  }

  v13 = [objc_allocWithZone(HKAxisLabel) init];
  [v13 setLabelType_];
  v14 = [a2 presentation];
  [v14 adjustedDoubleForDaemonDouble_];

  v15 = sub_1C3D1E804();
  [v13 setLocation_];

  sub_1C3D20834();

  if (a1 == 1)
  {
    v16 = 0x4445544156454C45;
  }

  else
  {
    v16 = 0x56454C455F544F4ELL;
  }

  if (a1 == 1)
  {
    v17 = 0xE800000000000000;
  }

  else
  {
    v17 = 0xEC00000044455441;
  }

  MEMORY[0x1C692F800](v16, v17);

  MEMORY[0x1C692F800](0x49545F534958415FLL, 0xEB00000000454C54);
  if (qword_1EC080DC0 != -1)
  {
    swift_once();
  }

  v18 = qword_1EC08DBD8;
  sub_1C3D1DEC4();

  v19 = sub_1C3D200C4();

  [v13 setText_];

  v20 = v13;
  MEMORY[0x1C692F8F0]();
  if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1C3D202C4();
  }

  sub_1C3D202F4();
  v21 = [objc_allocWithZone(HKAxisLabel) init];
  [v21 setLabelType_];
  v22 = [a2 presentation];
  [v22 adjustedDoubleForDaemonDouble_];

  v23 = sub_1C3D1E804();
  [v21 setLocation_];

  v24 = v21;
  MEMORY[0x1C692F8F0]();
  if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1C3D202C4();
  }

  sub_1C3D202F4();

  return v26;
}

uint64_t sub_1C3CF5FD8(void *a1)
{
  swift_getObjectType();
  if (a1 && (v3 = [a1 minValue]) != 0 && (v41 = v3, swift_dynamicCast()) && (v4 = objc_msgSend(a1, sel_maxValue)) != 0 && (v41 = v4, (swift_dynamicCast() & 1) != 0) && (*&v40 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && ((v5 = (COERCE__INT64(fabs(v40 - v40)) - 0x10000000000000) >> 53, COERCE__INT64(v40 - v40) >= 0) ? (v6 = v5 > 0x3FE) : (v6 = 1), v6 ? (v7 = (COERCE__INT64(v40 - v40) - 1) > 0xFFFFFFFFFFFFELL) : (v7 = 0), !v7))
  {
    v8 = HKAppleSleepingBreathingDisturbancesMinimumQuantityForClassification();
    [v8 _value];
    v10 = v9;

    v11 = HKAppleSleepingBreathingDisturbancesMinimumQuantityForClassification();
    [v11 _value];
    v13 = v12;

    v14 = *(v1 + OBJC_IVAR___HKBreathingDisturbancesAxis_displayType);
    v39 = sub_1C3CF5B5C(0, v14, 1, v10, v13);
    v41 = MEMORY[0x1E69E7CC0];
    v15 = [objc_allocWithZone(HKAxisLabel) init];
    [v15 setLabelType_];
    v16 = [v14 presentation];
    [v16 adjustedDoubleForDaemonDouble_];

    v17 = sub_1C3D1E804();
    [v15 setLocation_];

    if (qword_1EC080DC0 != -1)
    {
      swift_once();
    }

    v18 = qword_1EC08DBD8;
    sub_1C3D1DEC4();

    v19 = sub_1C3D200C4();

    [v15 setText_];

    v20 = v15;
    MEMORY[0x1C692F8F0]();
    if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C3D202C4();
    }

    sub_1C3D202F4();
    v21 = [objc_allocWithZone(HKAxisLabel) init];
    [v21 setLabelType_];
    v22 = [v14 presentation];
    [v22 adjustedDoubleForDaemonDouble_];

    v23 = sub_1C3D1E804();
    [v21 setLocation_];

    v24 = v21;
    MEMORY[0x1C692F8F0]();
    if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C3D202C4();
    }

    sub_1C3D202F4();

    sub_1C3C8EC94(v41);
    return v39;
  }

  else
  {
    if (qword_1EC0850B8 != -1)
    {
      swift_once();
    }

    v26 = sub_1C3D1EDA4();
    __swift_project_value_buffer(v26, qword_1EC08DCC8);
    v27 = a1;
    v28 = sub_1C3D1ED84();
    v29 = sub_1C3D204F4();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v41 = v31;
      *v30 = 136446466;
      v32 = sub_1C3D20CD4();
      v34 = sub_1C3C22C28(v32, v33, &v41);

      *(v30 + 4) = v34;
      *(v30 + 12) = 2082;
      sub_1C3C92454();
      v35 = v27;
      v36 = sub_1C3D20134();
      v38 = sub_1C3C22C28(v36, v37, &v41);

      *(v30 + 14) = v38;
      _os_log_impl(&dword_1C3942000, v28, v29, "[%{public}s] Asked to create axis labels for incompatible range: %{public}s", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C69321D0](v31, -1, -1);
      MEMORY[0x1C69321D0](v30, -1, -1);
    }

    return 0;
  }
}

id MeasureLineSeries.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MeasureLineSeries.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MeasureLineSeries();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MeasureLineSeries.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MeasureLineSeries();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1C3CF66F8(uint64_t a1)
{
  v2 = [objc_allocWithZone(type metadata accessor for MeasureLineSeries()) init];
  v3 = objc_allocWithZone(HKNumericAxisConfiguration);
  v4 = v2;
  v5 = [v3 init];
  v6 = [objc_opt_self() standardNumericYAxisWithConfigurationOverrides_];

  [v4 setYAxis_];
  [v4 setAllowsSelection_];
  v7 = [objc_opt_self() displayTypeWithIdentifier_];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 hk:0 axisScalingRuleForChartSizeClass:a1 unitController:?];
  }

  else
  {
    v9 = 0;
  }

  [v4 setAxisScalingRule_];

  swift_unknownObjectRelease();
  v10 = [objc_allocWithZone(HKLineSeriesPresentationStyle) init];
  v11 = objc_opt_self();
  v12 = [v11 blueColor];
  v13 = [objc_opt_self() strokeStyleWithColor:v12 lineWidth:3.0];

  [v10 setStrokeStyle_];
  v14 = [v11 blackColor];
  v15 = [objc_allocWithZone(HKLineSeriesPointMarkerStyle) initWithColor:v14 radius:0 style:3.0];

  [v10 setPointMarkerStyle_];
  sub_1C3C27C60();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1C3D5EAE0;
  *(v16 + 32) = v10;
  sub_1C3C599B4();
  v17 = v4;
  v18 = v10;
  v19 = sub_1C3D202A4();

  [v17 setUnhighlightedPresentationStyles_];

  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1C3D5EAE0;
  *(v20 + 32) = v18;
  v21 = v18;
  v22 = sub_1C3D202A4();

  [v17 setHighlightedPresentationStyles_];

  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1C3D5EAE0;
  *(v23 + 32) = v21;
  v24 = v21;
  v25 = sub_1C3D202A4();

  [v17 setSelectedPresentationStyles_];

  [v17 setInactivePresentationStyle_];
  v26 = [v24 pointMarkerStyle];
  [v17 setSelectedPointMarkerStyle_];

  return v17;
}

uint64_t HKStateOfMindDomain.init(preferredOverlay:)(uint64_t a1)
{
  v2 = sub_1C3D1EDA4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  result = 1;
  switch(a1)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
      sub_1C3D1ED74();
      v10 = sub_1C3D1ED84();
      v11 = sub_1C3D204F4();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v19 = v13;
        *v12 = 136446466;
        *(v12 + 4) = sub_1C3C22C28(0xD000000000000013, 0x80000001C3D882A0, &v19);
        *(v12 + 12) = 2048;
        *(v12 + 14) = a1;
        _os_log_impl(&dword_1C3942000, v10, v11, "[%{public}s] Cannot create state of mind for preferred overlay: %ld", v12, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v13);
        MEMORY[0x1C69321D0](v13, -1, -1);
        MEMORY[0x1C69321D0](v12, -1, -1);
      }

      (*(v3 + 8))(v8, v2);
      goto LABEL_5;
    case 100:
      return result;
    case 101:
      result = 2;
      break;
    case 102:
      result = 3;
      break;
    case 103:
      result = 4;
      break;
    case 104:
      result = 5;
      break;
    case 105:
      result = 6;
      break;
    case 106:
      result = 7;
      break;
    case 107:
      result = 8;
      break;
    case 108:
      result = 9;
      break;
    case 109:
      result = 10;
      break;
    case 110:
      result = 11;
      break;
    case 111:
      result = 12;
      break;
    case 112:
      result = 13;
      break;
    case 113:
      result = 14;
      break;
    case 114:
      result = 15;
      break;
    case 115:
      result = 16;
      break;
    case 116:
      result = 17;
      break;
    case 117:
      result = 18;
      break;
    default:
      sub_1C3D1ED74();
      v14 = sub_1C3D1ED84();
      v15 = sub_1C3D204F4();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v19 = v17;
        *v16 = 136446466;
        *(v16 + 4) = sub_1C3C22C28(0xD000000000000013, 0x80000001C3D882A0, &v19);
        *(v16 + 12) = 2048;
        *(v16 + 14) = a1;
        _os_log_impl(&dword_1C3942000, v14, v15, "[%{public}s] Cannot create state of mind for unknown preferred overlay: %ld", v16, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v17);
        MEMORY[0x1C69321D0](v17, -1, -1);
        MEMORY[0x1C69321D0](v16, -1, -1);
      }

      (*(v3 + 8))(v5, v2);
LABEL_5:
      result = 0;
      break;
  }

  return result;
}

uint64_t sub_1C3CF6E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1C3CA24B0(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_1C3CA0224(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_1C3CF9720();
        v14 = v16;
      }

      result = sub_1C3CF8944(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_1C3CF6F58@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

char *sub_1C3CF6FB8(CGFloat *a1, char a2)
{
  v3 = v2;
  swift_getObjectType();
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v10 = a1[4];
  v11 = a1[5];
  v39.y = *(v3 + OBJC_IVAR____TtC8HealthUI32HKMultiLineSeriesBlockCoordinate_minYValue);
  v38.a = *a1;
  a = v38.a;
  v38.b = v7;
  v38.c = v8;
  v38.d = v9;
  v38.tx = v10;
  v38.ty = v11;
  v39.x = 0.0;
  v12 = CGPointApplyAffineTransform(v39, &v38);
  y = v12.y;
  v40.y = *(v3 + OBJC_IVAR____TtC8HealthUI32HKMultiLineSeriesBlockCoordinate_maxYValue);
  v38.a = a;
  v38.b = v7;
  v38.c = v8;
  v38.d = v9;
  v38.tx = v10;
  v38.ty = v11;
  v40.x = 0.0;
  v15 = CGPointApplyAffineTransform(v40, &v38);
  v14 = v15.y;
  if (a2)
  {
    HKUIFloorCGPointToScreenScale(v12.x, v12.y);
    y = v16;
    HKUIFloorCGPointToScreenScale(v15.x, v15.y);
  }

  v36 = v14;
  v17 = *(v3 + OBJC_IVAR____TtC8HealthUI32HKMultiLineSeriesBlockCoordinate_coordinates);
  v18 = *(v17 + 16);
  v19 = MEMORY[0x1E69E7CC0];
  if (v18)
  {
    v34 = y;
    v35 = v3;
    v37 = MEMORY[0x1E69E7CC0];
    sub_1C3C23F14(0, v18, 0);
    v19 = v37;
    v20 = (v17 + 64);
    do
    {
      v22 = *(v20 - 4);
      v21 = *(v20 - 3);
      v41 = *(v20 - 1);
      v23 = *v20;
      v38.a = a;
      v38.b = v7;
      v38.c = v8;
      v38.d = v9;
      v38.tx = v10;
      v38.ty = v11;
      v24 = CGPointApplyAffineTransform(v41, &v38);
      x = v24.x;
      v26 = v24.y;

      v27 = v23;
      if (a2)
      {
        x = HKUIFloorCGPointToScreenScale(v24.x, v24.y);
        v26 = v28;
      }

      v30 = *(v37 + 16);
      v29 = *(v37 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_1C3C23F14((v29 > 1), v30 + 1, 1);
      }

      *(v37 + 16) = v30 + 1;
      v31 = (v37 + 40 * v30);
      *(v31 + 4) = v22;
      *(v31 + 5) = v21;
      v31[6] = x;
      v31[7] = v26;
      *(v31 + 8) = v23;
      v20 += 5;
      --v18;
    }

    while (v18);
    v3 = v35;
    y = v34;
  }

  v32 = *(v3 + OBJC_IVAR____TtC8HealthUI32HKMultiLineSeriesBlockCoordinate_userInfo);
  swift_getObjectType();
  swift_unknownObjectRetain();
  return sub_1C3CF9880(v19, v32, y, v36);
}

void sub_1C3CF73E4(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (a1)
  {
    type metadata accessor for HKMultiLineSeriesBlockCoordinate();
    if (swift_dynamicCastClass())
    {
      v13 = a10;
      swift_unknownObjectRetain();

      sub_1C3CF995C(v12, (a9 + 16), v13, a2);

      swift_unknownObjectRelease();
    }
  }
}

void sub_1C3CF74B4(uint64_t *a1, uint64_t *a2, CGContext *a3, double a4)
{
  v7 = *a1;
  v8 = a1[1];
  v10 = *(a1 + 2);
  v9 = *(a1 + 3);
  v11 = a1[4];
  swift_beginAccess();
  v12 = *a2;
  if (*(*a2 + 16) && (v13 = sub_1C3CA0224(v7, v8), (v14 & 1) != 0))
  {
    v15 = *(*(v12 + 56) + 8 * v13);
    swift_endAccess();
    v16 = v15;
    [v16 currentPoint];
    v18 = vabdd_f64(v10, v17);
    if (vabdd_f64(v18, a4) < 0.01 || v18 <= a4)
    {
      [v16 addLineToPoint_];
      v20 = [objc_allocWithZone(MEMORY[0x1E69DC728]) init];
      v21 = [v11 strokeStyle];
      if (v21)
      {
        v22 = v21;
        [v20 appendPath_];
        [v22 applyToContext_];
        v23 = [v20 CGPath];
        CGContextAddPath(a3, v23);

        CGContextStrokePath(a3);
      }
    }

    [v16 moveToPoint_];
  }

  else
  {
    swift_endAccess();
    v24 = objc_allocWithZone(MEMORY[0x1E69DC728]);

    v25 = [v24 init];
    swift_beginAccess();
    sub_1C3CF6E60(v25, v7, v8);
    swift_endAccess();
    swift_beginAccess();
    v26 = *a2;
    if (*(*a2 + 16) && (v27 = sub_1C3CA0224(v7, v8), (v28 & 1) != 0))
    {
      v29 = *(*(v26 + 56) + 8 * v27);
      swift_endAccess();
      [v29 moveToPoint_];
    }

    else
    {
      swift_endAccess();
    }
  }
}

char *sub_1C3CF7730(char *result)
{
  if (result)
  {
    type metadata accessor for HKMultiLineSeriesBlockCoordinate();
    result = swift_dynamicCastClass();
    if (result)
    {
      v1 = *&result[OBJC_IVAR____TtC8HealthUI32HKMultiLineSeriesBlockCoordinate_coordinates];
      v2 = *(v1 + 16);
      swift_unknownObjectRetain();

      if (v2)
      {
        v3 = 0;
        v4 = (v1 + 64);
        while (v3 < *(v1 + 16))
        {
          v5 = *(v4 - 2);
          v6 = *(v4 - 1);
          v7 = *v4;

          v8 = v7;
          v9 = [v8 pointMarkerStyle];
          if (v9)
          {
            v10 = v9;
            result = [objc_opt_self() chartPointWithLineSeriesPresentationStyle_];
            if (!result)
            {
              goto LABEL_17;
            }

            v11 = result;
            v12 = HKChartSeriesPointMarkerBaseRect(result);
            v14 = v13;
            v16 = v15;
            v18 = v17;
            v19 = [v11 CGImage];
            if (v19)
            {
              v20 = v19;
              v22.origin.x = v12;
              v22.origin.y = v14;
              v22.size.width = v16;
              v22.size.height = v18;
              CGRectOffset(v22, v5, v6);
              sub_1C3D204A4();

              v10 = v11;
              v11 = v20;
            }
          }

          ++v3;

          v4 += 5;
          if (v2 == v3)
          {
            goto LABEL_13;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
      }

      else
      {
LABEL_13:

        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

void sub_1C3CF7930(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  swift_getObjectType();
  v11 = &selRef_chartDataRangeForTimeScope_dataRange_firstWeekday_calendar_cadence_alignment_;
  v12 = [a1 chartPoints];
  if (v12 && (v13 = v12, sub_1C3C77FEC(0, &qword_1EC085850), v14 = sub_1C3D202B4(), v13, v15 = sub_1C3C8213C(v14), , v15))
  {
    v37 = a4;
    v16 = [a5 transform];
    v17 = [a6 transform];
    v11 = 0;
    v18 = MEMORY[0x1E69E7CC0];
    v39[0] = MEMORY[0x1E69E7CC0];
    v19 = *(v15 + 16);
LABEL_4:
    v20 = 16 * v11 + 32;
    while (v19 != v11)
    {
      if (v11 >= *(v15 + 16))
      {
        __break(1u);
        goto LABEL_22;
      }

      v11 = (v11 + 1);
      v21 = v20 + 16;
      a1 = *(v15 + v20);
      swift_unknownObjectRetain();
      v22 = sub_1C3C9C170(v16, v17);
      v23 = swift_unknownObjectRelease();
      v20 = v21;
      if (v22)
      {
        MEMORY[0x1C692F8F0](v23);
        if (*((v39[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C3D202C4();
        }

        a1 = v39;
        sub_1C3D202F4();
        v18 = v39[0];
        goto LABEL_4;
      }
    }

    if (v18 >> 62)
    {
      sub_1C3C77FEC(0, &unk_1EC086B40);

      sub_1C3D20954();
    }

    else
    {

      sub_1C3D20A64();
      sub_1C3C77FEC(0, &unk_1EC086B40);
    }

    sub_1C3C77FEC(0, &unk_1EC086B40);
    v34 = sub_1C3D202A4();

    v35 = objc_opt_self();
    v39[0] = a2;
    v39[1] = a3;
    v39[2] = v37;
    v36 = [v35 coordinateListWithCoordinates:v34 blockPath:v39];

    if (v36)
    {
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_1EC0850A8 != -1)
    {
LABEL_22:
      swift_once();
    }

    v24 = sub_1C3D1EDA4();
    __swift_project_value_buffer(v24, qword_1EC08DCB0);
    v25 = a1;
    v26 = sub_1C3D1ED84();
    v27 = sub_1C3D204F4();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v39[0] = v29;
      *v28 = 136446722;
      v30 = sub_1C3D20CD4();
      v32 = sub_1C3C22C28(v30, v31, v39);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2080;
      *(v28 + 14) = sub_1C3C22C28(0xD000000000000027, 0x80000001C3D88460, v39);
      *(v28 + 22) = 2080;

      *(v28 + 24) = sub_1C3C22C28(0xD00000000000001DLL, 0x80000001C3D88490, v39);
      _os_log_impl(&dword_1C3942000, v26, v27, "%{public}s] %s: Unable to cast chartPoints to [HKMultiLineChartPoint], found: %s", v28, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1C69321D0](v29, -1, -1);
      MEMORY[0x1C69321D0](v28, -1, -1);
    }

    v33 = objc_allocWithZone(HKGraphSeriesBlockCoordinateList);

    [v33 init];
  }
}

double sub_1C3CF7FC4(void *a1, double a2, double a3, uint64_t a4, uint64_t a5, double (*a6)(uint64_t, double, double))
{
  swift_unknownObjectRetain();
  v11 = a1;
  v12 = a6(a5, a2, a3);
  swift_unknownObjectRelease();

  return v12;
}

BOOL sub_1C3CF803C()
{
  swift_getObjectType();
  type metadata accessor for HKMultiLineSeriesBlockCoordinate();
  v0 = swift_dynamicCastClass();
  if (v0)
  {
    swift_unknownObjectRetain();
  }

  v1 = swift_dynamicCastClass();
  if (v1 && (swift_unknownObjectRetain(), v0))
  {
    v2 = *&v0[OBJC_IVAR____TtC8HealthUI32HKMultiLineSeriesBlockCoordinate_minYValue];

    v3 = *&v1[OBJC_IVAR____TtC8HealthUI32HKMultiLineSeriesBlockCoordinate_minYValue];
    return v2 < v3;
  }

  else
  {
    if (qword_1EC0850A8 != -1)
    {
      swift_once();
    }

    v5 = sub_1C3D1EDA4();
    __swift_project_value_buffer(v5, qword_1EC08DCB0);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v6 = sub_1C3D1ED84();
    v7 = sub_1C3D204F4();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v19 = v9;
      *v8 = 136446978;
      v10 = sub_1C3D20CD4();
      v12 = sub_1C3C22C28(v10, v11, &v19);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2080;
      *(v8 + 14) = sub_1C3C22C28(0xD00000000000001CLL, 0x80000001C3D883E0, &v19);
      *(v8 + 22) = 2080;
      swift_getObjectType();
      v13 = sub_1C3D20CD4();
      v15 = sub_1C3C22C28(v13, v14, &v19);

      *(v8 + 24) = v15;
      *(v8 + 32) = 2080;
      swift_getObjectType();
      v16 = sub_1C3D20CD4();
      v18 = sub_1C3C22C28(v16, v17, &v19);

      *(v8 + 34) = v18;
      _os_log_impl(&dword_1C3942000, v6, v7, "%{public}s] %s: Unable to compare block coordinates, found type: %s and %s", v8, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1C69321D0](v9, -1, -1);
      MEMORY[0x1C69321D0](v8, -1, -1);
    }

    return 0;
  }
}

BOOL sub_1C3CF82F8()
{
  swift_getObjectType();
  type metadata accessor for HKMultiLineSeriesBlockCoordinate();
  v0 = swift_dynamicCastClass();
  if (v0)
  {
    swift_unknownObjectRetain();
  }

  v1 = swift_dynamicCastClass();
  if (v1 && (swift_unknownObjectRetain(), v0))
  {
    v2 = *&v0[OBJC_IVAR____TtC8HealthUI32HKMultiLineSeriesBlockCoordinate_maxYValue];

    v3 = *&v1[OBJC_IVAR____TtC8HealthUI32HKMultiLineSeriesBlockCoordinate_maxYValue];
    return v3 < v2;
  }

  else
  {
    if (qword_1EC0850A8 != -1)
    {
      swift_once();
    }

    v5 = sub_1C3D1EDA4();
    __swift_project_value_buffer(v5, qword_1EC08DCB0);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v6 = sub_1C3D1ED84();
    v7 = sub_1C3D204F4();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v19 = v9;
      *v8 = 136446978;
      v10 = sub_1C3D20CD4();
      v12 = sub_1C3C22C28(v10, v11, &v19);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2080;
      *(v8 + 14) = sub_1C3C22C28(0xD00000000000001FLL, 0x80000001C3D883C0, &v19);
      *(v8 + 22) = 2080;
      swift_getObjectType();
      v13 = sub_1C3D20CD4();
      v15 = sub_1C3C22C28(v13, v14, &v19);

      *(v8 + 24) = v15;
      *(v8 + 32) = 2080;
      swift_getObjectType();
      v16 = sub_1C3D20CD4();
      v18 = sub_1C3C22C28(v16, v17, &v19);

      *(v8 + 34) = v18;
      _os_log_impl(&dword_1C3942000, v6, v7, "%{public}s] %s: Unable to compare block coordinates, found type: %s and %s", v8, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1C69321D0](v9, -1, -1);
      MEMORY[0x1C69321D0](v8, -1, -1);
    }

    return 0;
  }
}

uint64_t sub_1C3CF85B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v9 = a1;
  LOBYTE(a5) = a5(a3, a4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return a5 & 1;
}

id sub_1C3CF8684(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C3CF86F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C3CF873C(uint64_t result, int a2, int a3)
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

uint64_t sub_1C3CF8794(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C3D207D4() + 1) & ~v5;
    do
    {
      sub_1C3D20B04();

      sub_1C3D20164();
      v10 = sub_1C3D20B34();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1C3CF8944(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C3D207D4() + 1) & ~v5;
    do
    {
      sub_1C3D20B04();

      sub_1C3D20164();
      v9 = sub_1C3D20B34();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_1C3CF8AF4()
{
  v1 = v0;
  sub_1C3C766EC();
  v2 = *v0;
  v3 = sub_1C3D20974();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1C3C233C8(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1C3C233B8(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_1C3CF8C8C()
{
  v1 = v0;
  sub_1C3C767B8();
  v2 = *v0;
  v3 = sub_1C3D20974();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1C3CF8DF8()
{
  v1 = v0;
  v31 = sub_1C3D1E8C4();
  v33 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C76080();
  v3 = *v0;
  v4 = sub_1C3D20974();
  v5 = v4;
  if (*(v3 + 16))
  {
    v27 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v35 = (v13 - 1) & v13;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v21 = v30;
        v22 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v18 *= 16;
        v23 = v32;
        v24 = *(v32 + 48);
        v25 = *(v19 + 32);
        v34 = *(*(v3 + 56) + v18);
        result = v25(v24 + v20, v21, v22);
        *(*(v23 + 56) + v18) = v34;
        v13 = v35;
      }

      while (v35);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v27;
        v5 = v32;
        goto LABEL_21;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v35 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v5;
  }

  return result;
}

id sub_1C3CF9090()
{
  v1 = v0;
  sub_1C3C91880();
  v2 = *v0;
  v3 = sub_1C3D20974();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1C3CF9200(unint64_t *a1, unint64_t *a2)
{
  v5 = v2;
  v35 = sub_1C3D1E8C4();
  v37 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3CFA174(0, a1, a2);
  v7 = *v2;
  v8 = sub_1C3D20974();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    v30 = v5;
    v31 = (v7 + 64);
    if (v9 != v7 || result >= v7 + 64 + 8 * v11)
    {
      result = memmove(result, v31, 8 * v11);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v36 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v17)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
LABEL_17:
        v22 = v19 | (v13 << 6);
        v23 = v37;
        v24 = *(v37 + 72) * v22;
        v26 = v34;
        v25 = v35;
        (*(v37 + 16))(v34, *(v7 + 48) + v24, v35);
        v27 = *(*(v7 + 56) + 8 * v22);
        v28 = v36;
        (*(v23 + 32))(*(v36 + 48) + v24, v26, v25);
        *(*(v28 + 56) + 8 * v22) = v27;

        v17 = v38;
      }

      while (v38);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v5 = v30;
        v9 = v36;
        goto LABEL_21;
      }

      v21 = *(v31 + v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v38 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v9;
  }

  return result;
}

void *sub_1C3CF94B0(uint64_t (*a1)(void), void (*a2)(void, double))
{
  v4 = v2;
  v35 = a1(0);
  v37 = *(v35 - 8);
  v5 = MEMORY[0x1EEE9AC00](v35);
  v34 = &v29 - v6;
  a2(0, v5);
  v7 = *v2;
  v8 = sub_1C3D20974();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    v30 = v4;
    v31 = (v7 + 64);
    if (v9 != v7 || result >= v7 + 64 + 8 * v11)
    {
      result = memmove(result, v31, 8 * v11);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v36 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    v19 = v9;
    if (v17)
    {
      do
      {
        v20 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
LABEL_17:
        v23 = v20 | (v13 << 6);
        v24 = v37;
        v25 = *(v37 + 72) * v23;
        v27 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v7 + 48) + v25, v35);
        v28 = *(*(v7 + 56) + 8 * v23);
        result = (*(v24 + 32))(*(v19 + 48) + v25, v27, v26);
        *(*(v19 + 56) + 8 * v23) = v28;
        v17 = v38;
      }

      while (v38);
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v4 = v30;
        v9 = v36;
        goto LABEL_21;
      }

      v22 = *(v31 + v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v38 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v9;
  }

  return result;
}

id sub_1C3CF9720()
{
  v1 = v0;
  sub_1C3C75F98();
  v2 = *v0;
  v3 = sub_1C3D20974();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

char *sub_1C3CF9880(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = type metadata accessor for HKMultiLineSeriesBlockCoordinate();
  result = objc_allocWithZone(v8);
  *&result[OBJC_IVAR____TtC8HealthUI32HKMultiLineSeriesBlockCoordinate_coordinates] = a1;
  v10 = *(a1 + 16);
  if (v10)
  {
    v12 = *(a1 + 48);
    v11 = (a1 + 48);
    v13 = v12;
    v14 = v12;
    do
    {
      v15 = *v11;
      v11 += 5;
      v16 = v15;
      if (v15 < v14)
      {
        v14 = v16;
      }

      if (v13 <= v16)
      {
        v13 = v16;
      }

      --v10;
    }

    while (v10);
    *&result[OBJC_IVAR____TtC8HealthUI32HKMultiLineSeriesBlockCoordinate_minYValue] = a3;
    *&result[OBJC_IVAR____TtC8HealthUI32HKMultiLineSeriesBlockCoordinate_maxYValue] = a4;
    *&result[OBJC_IVAR____TtC8HealthUI32HKMultiLineSeriesBlockCoordinate_startXValue] = v14;
    *&result[OBJC_IVAR____TtC8HealthUI32HKMultiLineSeriesBlockCoordinate_endXValue] = v13;
    *&result[OBJC_IVAR____TtC8HealthUI32HKMultiLineSeriesBlockCoordinate_userInfo] = a2;
    v17.receiver = result;
    v17.super_class = v8;
    return objc_msgSendSuper2(&v17, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C3CF995C(uint64_t result, uint64_t *a2, CGContext *a3, double a4)
{
  v5 = v4;
  v6 = *(result + 16);
  if (v6)
  {
    for (i = (result + 64); ; i += 5)
    {
      v11 = *i;
      v12 = *(i - 3);
      v14[0] = *(i - 4);
      v14[1] = v12;
      v15 = *(i - 1);
      v16 = v11;

      v13 = v11;
      sub_1C3CF74B4(v14, a2, a3, a4);
      if (v5)
      {
        break;
      }

      if (!--v6)
      {
        return result;
      }
    }
  }

  return result;
}

void sub_1C3CF9A30(void *a1, uint64_t *a2, CGContextRef c, void *a4)
{
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];
  v12 = a2[4];
  v13 = a2[5];
  CGContextSaveGState(c);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1C3C75ABC(MEMORY[0x1E69E7CC0]);
  [a4 virtualMarginInsets];
  v16 = v15;
  v18 = v17;
  [a4 screenRectForSeries_];
  v19 = (CGRectGetWidth(v33) - v16 - v18) * 1.4;
  v20 = swift_allocObject();
  *(v20 + 16) = v14;
  *(v20 + 24) = v19;
  *(v20 + 32) = c;
  v31 = sub_1C3CFA104;
  v32 = v20;
  v27 = MEMORY[0x1E69E9820];
  v28 = 1107296256;
  v29 = sub_1C3C71C64;
  v30 = &block_descriptor_22;
  v21 = _Block_copy(&v27);

  v22 = c;

  v27 = v8;
  v28 = v9;
  v29 = v10;
  v30 = v11;
  v31 = v12;
  v32 = v13;
  [a1 enumerateCoordinatesWithTransform:&v27 roundToViewScale:1 block:v21];
  _Block_release(v21);
  CGContextRestoreGState(v22);

  CGContextSaveGState(v22);
  v23 = swift_allocObject();
  *(v23 + 16) = v4;
  *(v23 + 24) = v22;
  v31 = sub_1C3CFA14C;
  v32 = v23;
  v27 = MEMORY[0x1E69E9820];
  v28 = 1107296256;
  v29 = sub_1C3C71C64;
  v30 = &block_descriptor_17;
  v24 = _Block_copy(&v27);
  v25 = v22;
  v26 = v4;

  v27 = v8;
  v28 = v9;
  v29 = v10;
  v30 = v11;
  v31 = v12;
  v32 = v13;
  [a1 enumerateCoordinatesWithTransform:&v27 roundToViewScale:1 block:v24];
  _Block_release(v24);
  CGContextRestoreGState(v25);
}

void sub_1C3CF9CC4()
{
  swift_getObjectType();
  type metadata accessor for HKMultiLineSeriesBlockCoordinate();
  if (!swift_dynamicCastClass())
  {
    if (qword_1EC0850A8 != -1)
    {
      swift_once();
    }

    v0 = sub_1C3D1EDA4();
    __swift_project_value_buffer(v0, qword_1EC08DCB0);
    swift_unknownObjectRetain();
    v1 = sub_1C3D1ED84();
    v2 = sub_1C3D204F4();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v11 = v4;
      *v3 = 136446722;
      v5 = sub_1C3D20CD4();
      v7 = sub_1C3C22C28(v5, v6, &v11);

      *(v3 + 4) = v7;
      *(v3 + 12) = 2080;
      *(v3 + 14) = sub_1C3C22C28(0xD00000000000002ELL, 0x80000001C3D88430, &v11);
      *(v3 + 22) = 2080;
      swift_getObjectType();
      v8 = sub_1C3D20CD4();
      v10 = sub_1C3C22C28(v8, v9, &v11);

      *(v3 + 24) = v10;
      _os_log_impl(&dword_1C3942000, v1, v2, "%{public}s] %s: Unable to calculate x axis distance, found type: %s instead of HKMultiLineSeriesBlockCoordinate", v3, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1C69321D0](v4, -1, -1);
      MEMORY[0x1C69321D0](v3, -1, -1);
    }
  }
}

void sub_1C3CF9ED4()
{
  swift_getObjectType();
  type metadata accessor for HKMultiLineSeriesBlockCoordinate();
  if (!swift_dynamicCastClass())
  {
    if (qword_1EC0850A8 != -1)
    {
      swift_once();
    }

    v0 = sub_1C3D1EDA4();
    __swift_project_value_buffer(v0, qword_1EC08DCB0);
    swift_unknownObjectRetain();
    v1 = sub_1C3D1ED84();
    v2 = sub_1C3D204F4();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v11 = v4;
      *v3 = 136446722;
      v5 = sub_1C3D20CD4();
      v7 = sub_1C3C22C28(v5, v6, &v11);

      *(v3 + 4) = v7;
      *(v3 + 12) = 2080;
      *(v3 + 14) = sub_1C3C22C28(0xD00000000000002ELL, 0x80000001C3D88400, &v11);
      *(v3 + 22) = 2080;
      swift_getObjectType();
      v8 = sub_1C3D20CD4();
      v10 = sub_1C3C22C28(v8, v9, &v11);

      *(v3 + 24) = v10;
      _os_log_impl(&dword_1C3942000, v1, v2, "%{public}s] %s: Unable to calculate y axis difference, found type: %s instead of HKMultiLineSeriesBlockCoordinate", v3, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1C69321D0](v4, -1, -1);
      MEMORY[0x1C69321D0](v3, -1, -1);
    }
  }
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1C3CFA174(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1C3D1E8C4();
    sub_1C3C761F4(255, a3);
    sub_1C3CFA230(&unk_1EC086CD0, MEMORY[0x1E69A2E68]);
    v5 = sub_1C3D209A4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1C3CFA230(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C3CFA294(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepScoreChartData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id SleepScoreCoordinateInfo.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SleepScoreCoordinateInfo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SleepScoreCoordinateInfo()
{
  result = qword_1EC087AD8;
  if (!qword_1EC087AD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C3CFA428()
{
  result = type metadata accessor for SleepScoreChartData();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C3CFA4D0(uint64_t a1)
{
  v2 = type metadata accessor for SleepScoreChartData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1C3CFA5E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BalanceYAxis();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1C3CFA640()
{
  v0 = [objc_allocWithZone(HKAxisLabel) init];
  [v0 setLabelType_];
  v1 = sub_1C3D1E804();
  [v0 setLocation_];

  if (qword_1EC080DC0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EC08DBD8;
  sub_1C3D1DEC4();

  v3 = sub_1C3D200C4();

  [v0 setText_];

  return v0;
}

id sub_1C3CFA794(void *a1)
{
  sub_1C3D1E994();
  if (!a1)
  {
    return 0;
  }

  v6 = v4;
  v7 = v5;
  result = [a1 minValue];
  if (!result)
  {
    return result;
  }

  if (!swift_dynamicCast())
  {
    return 0;
  }

  result = [a1 maxValue];
  if (!result)
  {
    return result;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  result = 0;
  if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return result;
  }

  v9 = (COERCE__INT64(fabs(v27 - v27)) - 0x10000000000000) >> 53;
  v10 = COERCE__INT64(v27 - v27) < 0 || v9 > 0x3FE;
  v11 = v10 && (COERCE__INT64(v27 - v27) - 1) > 0xFFFFFFFFFFFFELL;
  v12 = !v11 && v7 < v27;
  if (!v12 || v27 >= v6)
  {
    return 0;
  }

  v28 = MEMORY[0x1E69E7CC0];
  v14 = [objc_allocWithZone(HKAxisLabel) init];
  [v14 setLabelType_];
  v15 = sub_1C3D1E804();
  v16 = &selRef_setLayoutMarginsRelativeArrangement_;
  [v14 setLocation_];

  v17 = v14;
  MEMORY[0x1C692F8F0]();
  if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v1 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1C3D202C4();
  }

  sub_1C3D202F4();
  if (v27 > v6)
  {
    __break(1u);
  }

  else
  {
    v2 = 0xD000000000000012;
    v1 = sub_1C3CFA640();
    MEMORY[0x1C692F8F0]();
    if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_26;
    }
  }

  sub_1C3D202C4();
LABEL_26:
  sub_1C3D202F4();
  v18 = [objc_allocWithZone(HKAxisLabel) init];
  [v18 setLabelType_];
  v19 = sub_1C3D1E804();
  [v18 setLocation_];

  v20 = v18;
  MEMORY[0x1C692F8F0]();
  if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v16 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1C3D202C4();
  }

  sub_1C3D202F4();
  if (v6 > v7)
  {
    __break(1u);
  }

  else
  {
    v16 = sub_1C3CFA640();
    MEMORY[0x1C692F8F0]();
    if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_30;
    }
  }

  sub_1C3D202C4();
LABEL_30:
  sub_1C3D202F4();
  v21 = [objc_allocWithZone(HKAxisLabel) init];
  [v21 setLabelType_];
  v22 = sub_1C3D1E804();
  [v21 setLocation_];

  v23 = v21;
  MEMORY[0x1C692F8F0]();
  if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1C3D202C4();
  }

  sub_1C3D202F4();
  if (v7 > v27)
  {
    __break(1u);
    goto LABEL_42;
  }

  v2 = sub_1C3CFA640();
  MEMORY[0x1C692F8F0]();
  if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_42:
    sub_1C3D202C4();
  }

  sub_1C3D202F4();
  v24 = [objc_allocWithZone(HKAxisLabel) init];
  [v24 setLabelType_];
  v25 = sub_1C3D1E804();
  [v24 setLocation_];

  v26 = v24;
  MEMORY[0x1C692F8F0]();
  if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1C3D202C4();
  }

  sub_1C3D202F4();

  return v28;
}

uint64_t PairedDeviceFeatureAttributesProvider.hasActivePairedDevice.getter()
{
  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  return (*(v1 + 24))(ObjectType, v1) & 1;
}

uint64_t PairedDeviceFeatureAttributesProvider.pairedDeviceAttributes.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v5 = v3[4](ObjectType, v3);
  v6 = v3[1](ObjectType, v3);
  v8 = v7;
  v9 = [v5 localAttributes];
  v10 = v3[2](ObjectType, v3);
  v12 = v11;
  if (v11)
  {
    v13 = v10;
    v14 = [v5 pairedAttributes];

    if (!v14)
    {

      v13 = 0;
      v12 = 0;
    }
  }

  else
  {

    v13 = 0;
    v14 = 0;
  }

  v17[0] = v6;
  v17[1] = v8;
  v17[2] = v9;
  v16[0] = v13;
  v16[1] = v12;
  v16[2] = v14;
  return PairedDeviceFeatureAttributes.init(localFeatureAttributes:remoteFeatureAttributes:)(v17, v16, a1);
}

uint64_t PairedDeviceFeatureAttributesProvider.__allocating_init(pairedDeviceAttributesDataSource:logger:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return sub_1C3CFB584(a1, a3, v3, ObjectType, a2);
}

uint64_t PairedDeviceFeatureAttributesProvider.init(pairedDeviceAttributesDataSource:logger:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return sub_1C3CFB7F0(a1, a3, v3, ObjectType, a2);
}

uint64_t sub_1C3CFB1E4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    type metadata accessor for PairedDeviceFeatureAttributesProvider();
    sub_1C3CFBB78(&qword_1EC0878B0, type metadata accessor for PairedDeviceFeatureAttributesProvider);
    sub_1C3D1EED4();

    sub_1C3D1EF44();
  }

  return result;
}

uint64_t PairedDeviceFeatureAttributesProvider.deinit()
{
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC8HealthUI37PairedDeviceFeatureAttributesProvider_logger;
  v2 = sub_1C3D1EDA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t PairedDeviceFeatureAttributesProvider.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC8HealthUI37PairedDeviceFeatureAttributesProvider_logger;
  v2 = sub_1C3D1EDA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1C3CFB3C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C3D1EED4();
  *a1 = result;
  return result;
}

uint64_t static PairedDeviceFeatureAttributesProvider.makeDefaultProvider(featureIdentifier:healthStore:logger:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C3D1EDA4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(MEMORY[0x1E696C160]) initWithFeatureIdentifier:a1 healthStore:a2];
  v11 = *(v7 + 16);
  v11(v9, a3, v6);
  v12 = objc_allocWithZone(type metadata accessor for DefaultPairedDeviceFeatureAttributesDataSource());
  v13 = sub_1C3D05B10(v10, v9);
  v11(v9, a3, v6);
  v14 = swift_allocObject();
  v15 = v13;
  v16 = sub_1C3CFB5F0(v15, v9, v14);

  return v16;
}

uint64_t sub_1C3CFB584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();

  return sub_1C3CFB7F0(a1, a2, v9, a4, a5);
}

uint64_t sub_1C3CFB5F0(void *a1, uint64_t a2, uint64_t a3)
{
  *(a3 + OBJC_IVAR____TtC8HealthUI37PairedDeviceFeatureAttributesProvider_cancellable) = 0;
  *(a3 + 16) = a1;
  *(a3 + 24) = &protocol witness table for DefaultPairedDeviceFeatureAttributesDataSource;
  v6 = OBJC_IVAR____TtC8HealthUI37PairedDeviceFeatureAttributesProvider_logger;
  v7 = sub_1C3D1EDA4();
  v8 = *(v7 - 8);
  (*(v8 + 16))(a3 + v6, a2, v7);
  v9 = off_1F42FE570[0];
  type metadata accessor for DefaultPairedDeviceFeatureAttributesDataSource();
  v10 = a1;
  v9();
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1C3CFBB0C;
  *(v12 + 24) = v11;
  sub_1C3CFBB14();
  sub_1C3CFBB78(&qword_1EC087B10, sub_1C3CFBB14);
  v13 = sub_1C3D1EFF4();

  (*(v8 + 8))(a2, v7);

  *(a3 + OBJC_IVAR____TtC8HealthUI37PairedDeviceFeatureAttributesProvider_cancellable) = v13;

  return a3;
}

uint64_t sub_1C3CFB7F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a3 + OBJC_IVAR____TtC8HealthUI37PairedDeviceFeatureAttributesProvider_cancellable) = 0;
  *(a3 + 16) = a1;
  *(a3 + 24) = a5;
  v9 = OBJC_IVAR____TtC8HealthUI37PairedDeviceFeatureAttributesProvider_logger;
  v10 = sub_1C3D1EDA4();
  v11 = *(v10 - 8);
  (*(v11 + 16))(a3 + v9, a2, v10);
  v12 = *(a5 + 40);
  swift_unknownObjectRetain();
  v12(a4, a5);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1C3CFBBC0;
  *(v14 + 24) = v13;
  sub_1C3CFBB14();
  sub_1C3CFBB78(&qword_1EC087B10, sub_1C3CFBB14);
  v15 = sub_1C3D1EFF4();
  swift_unknownObjectRelease();

  (*(v11 + 8))(a2, v10);

  *(a3 + OBJC_IVAR____TtC8HealthUI37PairedDeviceFeatureAttributesProvider_cancellable) = v15;

  return a3;
}

uint64_t type metadata accessor for PairedDeviceFeatureAttributesProvider()
{
  result = qword_1EC087B00;
  if (!qword_1EC087B00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C3CFBA3C()
{
  result = sub_1C3D1EDA4();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1C3CFBB14()
{
  if (!qword_1EC087CD0)
  {
    v0 = sub_1C3D1EE94();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC087CD0);
    }
  }
}

uint64_t sub_1C3CFBB78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t StandardIndicator.dataProvider()@<X0>(uint64_t *a1@<X8>)
{
  v34 = a1;
  sub_1C3CFC120();
  v35 = *(v1 - 8);
  v36 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v33 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1C3D1E834();
  v3 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C3D1E2A4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C3D1E3C4();
  MEMORY[0x1EEE9AC00](v10 - 8);
  sub_1C3CFC180(0, &qword_1EC087B20, MEMORY[0x1E69A2FE8]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v31 - v12;
  sub_1C3CFC180(0, &qword_1EC087558, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v31 - v15;
  v32 = MEMORY[0x1E69A2FE0];
  sub_1C3CFC180(0, &qword_1EC087B28, MEMORY[0x1E69A2FE0]);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v31 - v18;
  sub_1C3CFC1D4();
  v20 = sub_1C3D200C4();
  v21 = MEMORY[0x1C692FB90](v20);
  v22 = sub_1C3D1DC54();
  (*(*(v22 - 8) + 56))(v16, 1, 1, v22);
  v23 = sub_1C3D1E864();
  (*(*(v23 - 8) + 56))(v13, 1, 1, v23);
  (*(v7 + 104))(v9, *MEMORY[0x1E6969868], v6);
  sub_1C3D1E2B4();
  (*(v7 + 8))(v9, v6);
  (*(v3 + 104))(v5, *MEMORY[0x1E69A2FD8], v31);
  sub_1C3D1E844();
  v24 = sub_1C3D1E854();
  (*(*(v24 - 8) + 56))(v19, 0, 1, v24);
  v25 = v33;
  sub_1C3D1EC54();
  v26 = sub_1C3D200C4();
  v27 = [objc_opt_self() unitFromString_];

  v28 = sub_1C3D1E824();
  v29 = v34;
  v34[3] = v28;
  v29[4] = sub_1C3CFC974();
  __swift_allocate_boxed_opaque_existential_0(v29);
  sub_1C3D1ECE4();
  sub_1C3D1E814();

  (*(v35 + 8))(v25, v36);
  return sub_1C3CFCA8C(v19, &qword_1EC087B28, v32);
}

void sub_1C3CFC120()
{
  if (!qword_1EC087B18)
  {
    sub_1C3D1ECE4();
    v0 = sub_1C3D1EC64();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC087B18);
    }
  }
}

void sub_1C3CFC180(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C3D206E4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1C3CFC1D4()
{
  result = qword_1EC087B30;
  if (!qword_1EC087B30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC087B30);
  }

  return result;
}

id sub_1C3CFC238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_1C3CFC180(0, &qword_1EC087558, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v28 - v11;
  sub_1C3CFC180(0, &qword_1EC085770, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v28 - v14;
  v16 = *(a3 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v20, a1, a3, v18);
  sub_1C3CDF814(a2, v12);
  v21 = sub_1C3D1DC54();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v12, 1, v21) == 1)
  {
    sub_1C3CFCA8C(v12, &qword_1EC087558, MEMORY[0x1E6968130]);
    v23 = 1;
  }

  else
  {
    sub_1C3D1DC14();
    (*(v22 + 8))(v12, v21);
    v23 = 0;
  }

  v24 = sub_1C3D1E1E4();
  (*(*(v24 - 8) + 56))(v15, v23, 1, v24);
  result = [v5 _buildApplicationItems];
  if (result)
  {
    v26 = result;
    type metadata accessor for MeasureOverlayViewController();
    v27 = sub_1C3C8EA38(v20, v15, v26, 0, 0, a3, a4);

    (*(v16 + 8))(v20, a3);
    return v27;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id HKHealthChartFactory.interactiveChart(from:displayDateInterval:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C3D1EA94();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3D1EAC4();
  swift_allocObject();
  sub_1C3D1EAB4();

  sub_1C3D1EA74();
  sub_1C3D1EAA4();

  (*(v5 + 8))(v7, v4);
  if (v20)
  {
    sub_1C3972F30(&v19, v22);
    sub_1C3C4D7A4(v22, v18);
    sub_1C3C31974(0, &qword_1EC087B48);
    sub_1C3C31974(0, &qword_1EC087B50);
    if (swift_dynamicCast())
    {
      sub_1C3972F30(v16, &v19);
      v8 = v20;
      v9 = v21;
      v10 = __swift_project_boxed_opaque_existential_0(&v19, v20);
      v11 = sub_1C3CFC238(v10, a3, v8, v9);
      __swift_destroy_boxed_opaque_existential_0(v22);
      __swift_destroy_boxed_opaque_existential_0(&v19);
      return v11;
    }

    __swift_destroy_boxed_opaque_existential_0(v22);
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    v13 = &unk_1EC087B58;
    v14 = &qword_1EC087B50;
    v15 = v16;
  }

  else
  {
    v13 = &unk_1EC087B40;
    v14 = &qword_1EC087B48;
    v15 = &v19;
  }

  sub_1C3CFCA24(v15, v13, v14);
  return 0;
}

unint64_t sub_1C3CFC974()
{
  result = qword_1EC087B38;
  if (!qword_1EC087B38)
  {
    sub_1C3D1E824();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC087B38);
  }

  return result;
}

void sub_1C3CFC9CC(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1C3C31974(255, a3);
    v4 = sub_1C3D206E4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C3CFCA24(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  sub_1C3CFC9CC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C3CFCA8C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1C3CFC180(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C3CFCAE8(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for OverlayConfiguration() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t CalendarViewLayout.calendar.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8HealthUI18CalendarViewLayout_calendar;
  v4 = sub_1C3D1E3C4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

double sub_1C3CFCC7C()
{
  v1 = OBJC_IVAR____TtC8HealthUI18CalendarViewLayout_itemHeight;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C3CFCCC0(double a1)
{
  v3 = OBJC_IVAR____TtC8HealthUI18CalendarViewLayout_itemHeight;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id CalendarViewLayout.__allocating_init(calendar:overlays:itemHeight:minimumSectionInsets:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7)
{
  v8 = v7;
  v16 = type metadata accessor for OverlayConfiguration();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = objc_allocWithZone(v7);
  v21 = OBJC_IVAR____TtC8HealthUI18CalendarViewLayout_calendar;
  v22 = sub_1C3D1E3C4();
  v23 = *(v22 - 8);
  (*(v23 + 16))(&v20[v21], a1, v22);
  *&v20[OBJC_IVAR____TtC8HealthUI18CalendarViewLayout_overlays] = a2;

  *&v20[OBJC_IVAR____TtC8HealthUI18CalendarViewLayout_numberOfDaysPerWeek] = sub_1C3D1E334();
  *&v20[OBJC_IVAR____TtC8HealthUI18CalendarViewLayout_itemHeight] = a3;
  v24 = &v20[OBJC_IVAR____TtC8HealthUI18CalendarViewLayout_minimumSectionInsets];
  *v24 = a4;
  v24[1] = a5;
  v24[2] = a6;
  v24[3] = a7;
  v39.receiver = v20;
  v39.super_class = v8;
  v25 = objc_msgSendSuper2(&v39, sel_init);
  [v25 setMinimumLineSpacing_];
  [v25 setMinimumInteritemSpacing_];
  v26 = *(a2 + 16);
  if (v26)
  {
    v35 = v23;
    v36 = v22;
    v38 = a1;
    sub_1C3D20374();
    v27 = *(v17 + 80);
    v37 = a2;
    v28 = a2 + ((v27 + 32) & ~v27);
    v29 = *(v17 + 72);
    do
    {
      sub_1C3CFD3D8(v28, v19);
      sub_1C3D20364();
      sub_1C3D20314();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v30 = *(v19 + 5);
      v31 = *(v19 + 6);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      (*(v31 + 8))(v30, v31);
      v33 = sub_1C3D200C4();

      [v25 registerClass:ObjCClassFromMetadata forDecorationViewOfKind:v33];

      sub_1C3CFD43C(v19);

      v28 += v29;
      --v26;
    }

    while (v26);

    a1 = v38;
    v23 = v35;
    v22 = v36;
  }

  else
  {
  }

  (*(v23 + 8))(a1, v22);
  return v25;
}

id CalendarViewLayout.init(calendar:overlays:itemHeight:minimumSectionInsets:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7)
{
  v8 = v7;
  v16 = type metadata accessor for OverlayConfiguration();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC8HealthUI18CalendarViewLayout_calendar;
  v21 = sub_1C3D1E3C4();
  v22 = *(v21 - 8);
  (*(v22 + 16))(&v8[v20], a1, v21);
  *&v8[OBJC_IVAR____TtC8HealthUI18CalendarViewLayout_overlays] = a2;

  *&v8[OBJC_IVAR____TtC8HealthUI18CalendarViewLayout_numberOfDaysPerWeek] = sub_1C3D1E334();
  *&v8[OBJC_IVAR____TtC8HealthUI18CalendarViewLayout_itemHeight] = a3;
  v23 = &v8[OBJC_IVAR____TtC8HealthUI18CalendarViewLayout_minimumSectionInsets];
  *v23 = a4;
  v23[1] = a5;
  v23[2] = a6;
  v23[3] = a7;
  v24 = type metadata accessor for CalendarViewLayout();
  v39.receiver = v8;
  v39.super_class = v24;
  v25 = objc_msgSendSuper2(&v39, sel_init);
  [v25 setMinimumLineSpacing_];
  [v25 setMinimumInteritemSpacing_];
  v26 = *(a2 + 16);
  if (v26)
  {
    v35 = v22;
    v36 = v21;
    v38 = a1;
    sub_1C3D20374();
    v27 = *(v17 + 80);
    v37 = a2;
    v28 = a2 + ((v27 + 32) & ~v27);
    v29 = *(v17 + 72);
    do
    {
      sub_1C3CFD3D8(v28, v19);
      sub_1C3D20364();
      sub_1C3D20314();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v30 = *(v19 + 5);
      v31 = *(v19 + 6);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      (*(v31 + 8))(v30, v31);
      v33 = sub_1C3D200C4();

      [v25 registerClass:ObjCClassFromMetadata forDecorationViewOfKind:v33];

      sub_1C3CFD43C(v19);

      v28 += v29;
      --v26;
    }

    while (v26);

    a1 = v38;
    v22 = v35;
    v21 = v36;
  }

  else
  {
  }

  (*(v22 + 8))(a1, v21);
  return v25;
}

uint64_t sub_1C3CFD3D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OverlayConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C3CFD43C(uint64_t a1)
{
  v2 = type metadata accessor for OverlayConfiguration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for CalendarViewLayout()
{
  result = qword_1EC087B78;
  if (!qword_1EC087B78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id CalendarViewLayout.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t sub_1C3CFD63C()
{
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
    v4 = v3;
  }

  else
  {
    v4 = 1200.0;
  }

  v5 = OBJC_IVAR____TtC8HealthUI18CalendarViewLayout_itemHeight;
  swift_beginAccess();
  v6 = *&v0[v5];
  result = [v0 minimumLineSpacing];
  v9 = ceil(v4 / (v6 + v8));
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v9 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = *&v0[OBJC_IVAR____TtC8HealthUI18CalendarViewLayout_numberOfDaysPerWeek];
  result = v10 * v9;
  if ((v10 * v9) >> 64 != result >> 63)
  {
LABEL_12:
    __break(1u);
  }

  return result;
}

double sub_1C3CFD750()
{
  result = *(v0 + OBJC_IVAR____TtC8HealthUI18CalendarViewLayout_minimumSectionInsets + 8);
  if (result <= *(v0 + OBJC_IVAR____TtC8HealthUI18CalendarViewLayout_minimumSectionInsets + 24))
  {
    return *(v0 + OBJC_IVAR____TtC8HealthUI18CalendarViewLayout_minimumSectionInsets + 24);
  }

  return result;
}

void sub_1C3CFD770()
{
  v1 = v0;
  swift_getObjectType();
  v2 = [v0 collectionView];
  if (v2)
  {
    v3 = v2;
    [v3 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = [v3 window];
    if (!v12 || (v13 = v12, v14 = [v12 screen], v13, !v14))
    {
      v14 = [objc_opt_self() mainScreen];
    }

    [v14 scale];
    v16 = v15;

    if (qword_1EC0850A8 != -1)
    {
      goto LABEL_23;
    }

    while (1)
    {
      v17 = sub_1C3D1EDA4();
      __swift_project_value_buffer(v17, qword_1EC08DCB0);
      v18 = sub_1C3D1ED84();
      v19 = sub_1C3D204E4();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v45[0] = v21;
        *v20 = 136446466;
        v22 = sub_1C3D20CD4();
        v24 = sub_1C3C22C28(v22, v23, v45);

        *(v20 + 4) = v24;
        *(v20 + 12) = 2080;
        v41 = v5;
        v42 = v7;
        v43 = v9;
        v44 = v11;
        type metadata accessor for CGRect(0);
        v25 = sub_1C3D20134();
        v27 = sub_1C3C22C28(v25, v26, v45);

        *(v20 + 14) = v27;
        _os_log_impl(&dword_1C3942000, v18, v19, "%{public}s: prepare() for bounds: %s", v20, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1C69321D0](v21, -1, -1);
        MEMORY[0x1C69321D0](v20, -1, -1);
      }

      v28 = OBJC_IVAR____TtC8HealthUI18CalendarViewLayout_itemHeight;
      swift_beginAccess();
      v11 = *&v1[v28];
      v29 = OBJC_IVAR____TtC8HealthUI18CalendarViewLayout_overlays;
      swift_beginAccess();
      v30 = *&v1[v29];
      v31 = v30[2];
      if (!v31)
      {
        break;
      }

      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v1[v29] = v30;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v30 = sub_1C3CFF140(v30);
      }

      v33 = 0;
      while (v33 < v30[2])
      {
        v34 = *(type metadata accessor for OverlayConfiguration() - 8);
        v35 = v30 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v33;
        *(v35 + 8) = v5;
        *(v35 + 16) = v7;
        *(v35 + 24) = v9;
        *(v35 + 32) = v11;
        if (v31 == ++v33)
        {
          *&v1[v29] = v30;
          swift_endAccess();
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_23:
      swift_once();
    }

LABEL_15:
    v36 = &v1[OBJC_IVAR____TtC8HealthUI18CalendarViewLayout_minimumSectionInsets];
    if (*&v1[OBJC_IVAR____TtC8HealthUI18CalendarViewLayout_minimumSectionInsets + 8] > *&v1[OBJC_IVAR____TtC8HealthUI18CalendarViewLayout_minimumSectionInsets + 24])
    {
      v37 = *&v1[OBJC_IVAR____TtC8HealthUI18CalendarViewLayout_minimumSectionInsets + 8];
    }

    else
    {
      v37 = *&v1[OBJC_IVAR____TtC8HealthUI18CalendarViewLayout_minimumSectionInsets + 24];
    }

    [v1 setItemSize_];
    [v1 setSectionInset_];
    if (qword_1EC085128 != -1)
    {
      swift_once();
    }

    v38 = [objc_allocWithZone(MEMORY[0x1E69DCA40]) initForTextStyle_];
    [v38 scaledValueForValue_];
    v40 = v39;

    [v1 setHeaderReferenceSize_];
    [v3 bounds];
    CGRectGetHeight(v46);
    [v3 contentInset];
    [v3 setContentInset_];
  }
}