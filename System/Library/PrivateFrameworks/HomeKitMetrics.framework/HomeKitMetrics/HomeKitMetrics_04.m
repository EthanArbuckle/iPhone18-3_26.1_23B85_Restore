uint64_t sub_22B0C38BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 128) = a5;
  *(v5 + 96) = a3;
  *(v5 + 104) = a4;
  *(v5 + 88) = a2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5C38, &qword_22B0E5480) - 8) + 64) + 15;
  *(v5 + 112) = swift_task_alloc();
  *(v5 + 120) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B0C396C, 0, 0);
}

uint64_t sub_22B0C396C(__n128 a1)
{
  v59 = v1;
  v2 = *(v1 + 96);
  v3 = *(v2 + 16);
  if (v3)
  {
    v49 = *(v1 + 128);
    v4 = *(v1 + 104);
    v5 = (v2 + 72);
    v48 = **(v1 + 88);
    v47 = v4[12];
    v46 = v4[13];
    v45 = v4[14];
    a1.n128_u64[0] = 136315138;
    v44 = a1;
    do
    {
      v54 = v3;
      v9 = *(v5 - 5);
      v8 = *(v5 - 4);
      v10 = *(v5 - 2);
      v11 = *v5;
      v51 = *(v5 - 1);
      v52 = *(v5 - 3);
      v12 = qword_2813E9AA0;

      if (v12 != -1)
      {
        swift_once();
      }

      v13 = sub_22B0DF1B0();
      __swift_project_value_buffer(v13, qword_2813EBE78);

      v14 = sub_22B0DF190();
      v15 = sub_22B0DF670();

      v56 = v11;
      v53 = v5;
      v55 = v8;
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v57 = v17;
        *v16 = v44.n128_u32[0];
        *(v16 + 4) = sub_22B07B428(v9, v8, &v57);
        _os_log_impl(&dword_22B074000, v14, v15, "Running daily block %s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v17);
        MEMORY[0x23188A520](v17, -1, -1);
        MEMORY[0x23188A520](v16, -1, -1);
      }

      v18 = *(v1 + 112);
      v19 = *(v1 + 120);
      v20 = type metadata accessor for BlockSchedulerLogEvent();
      v21 = objc_allocWithZone(v20);
      *&v21[OBJC_IVAR____TtC14HomeKitMetrics22BlockSchedulerLogEvent_coreAnalyticsEventOptions] = 0;
      v57 = v47;
      v58 = v46;

      MEMORY[0x231889070](0x6C7564656863732ELL, 0xEE006E75722E7265);
      v22 = v58;
      v23 = &v21[OBJC_IVAR____TtC14HomeKitMetrics22BlockSchedulerLogEvent_coreAnalyticsEventName];
      *v23 = v57;
      v23[1] = v22;
      v24 = 0x6669636570736E55;
      if (v10)
      {
        v24 = v52;
      }

      v25 = 0xEB00000000646569;
      if (v10)
      {
        v25 = v10;
      }

      v26 = &v21[OBJC_IVAR____TtC14HomeKitMetrics22BlockSchedulerLogEvent_publicBlockName];
      *v26 = v24;
      v26[1] = v25;
      v27 = &v21[OBJC_IVAR____TtC14HomeKitMetrics22BlockSchedulerLogEvent_secondsSinceLastRun];
      *v27 = 0;
      v27[8] = 1;
      v21[OBJC_IVAR____TtC14HomeKitMetrics22BlockSchedulerLogEvent_isDailyBlock] = 1;
      *(v1 + 72) = v21;
      *(v1 + 80) = v20;
      v28 = objc_msgSendSuper2((v1 + 72), sel_init, *&v44);
      [v45 submitLogEvent_];

      v29 = sub_22B0DF5C0();
      v30 = *(v29 - 8);
      (*(v30 + 56))(v19, 1, 1, v29);
      v31 = swift_allocObject();
      *(v31 + 16) = 0;
      v50 = (v31 + 16);
      *(v31 + 24) = 0;
      *(v31 + 32) = v9;
      *(v31 + 40) = v55;
      *(v31 + 48) = v52;
      *(v31 + 56) = v10;
      *(v31 + 64) = v51;
      *(v31 + 72) = v56;
      *(v31 + 80) = v49;
      sub_22B0898A8(v19, v18, &qword_27D8B5C38, &qword_22B0E5480);
      v32 = (*(v30 + 48))(v18, 1, v29);

      v33 = *(v1 + 112);
      if (v32 == 1)
      {
        sub_22B07D02C(*(v1 + 112), &qword_27D8B5C38, &qword_22B0E5480);
      }

      else
      {
        sub_22B0DF5B0();
        (*(v30 + 8))(v33, v29);
      }

      if (*v50)
      {
        v34 = *(v31 + 24);
        v35 = *v50;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v36 = sub_22B0DF570();
        v38 = v37;
        swift_unknownObjectRelease();
      }

      else
      {
        v36 = 0;
        v38 = 0;
      }

      v39 = swift_allocObject();
      *(v39 + 16) = &unk_22B0E6100;
      *(v39 + 24) = v31;

      if (v38 | v36)
      {
        v6 = v1 + 16;
        *(v1 + 16) = 0;
        *(v1 + 24) = 0;
        *(v1 + 32) = v36;
        *(v1 + 40) = v38;
      }

      else
      {
        v6 = 0;
      }

      v5 = v53 + 6;
      v7 = *(v1 + 120);
      *(v1 + 48) = 1;
      *(v1 + 56) = v6;
      *(v1 + 64) = v48;
      swift_task_create();

      sub_22B07D02C(v7, &qword_27D8B5C38, &qword_22B0E5480);
      v3 = v54 - 1;
    }

    while (v54 != 1);
  }

  v41 = *(v1 + 112);
  v40 = *(v1 + 120);

  v42 = *(v1 + 8);

  return v42();
}

uint64_t sub_22B0C3F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + 40);
  v10 = (*(a3 + 32) + **(a3 + 32));
  v7 = *(*(a3 + 32) + 4);
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_22B0A5698;

  return v10(a4);
}

uint64_t sub_22B0C4048(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 104) = a4;
  *(v4 + 72) = a2;
  *(v4 + 80) = a3;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5C38, &qword_22B0E5480) - 8) + 64) + 15;
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B0C40F4, 0, 0);
}

uint64_t sub_22B0C40F4()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  if (v2)
  {
    v27 = *(v0 + 104);
    v3 = (v1 + 72);
    do
    {
      v6 = *(v3 - 1);
      if (v6)
      {
        v31 = v2;
        v28 = *(v3 - 3);
        v32 = *(v3 - 4);
        v33 = *(v3 - 2);
        v7 = *v3;
        v9 = *(v0 + 88);
        v8 = *(v0 + 96);
        v10 = sub_22B0DF5C0();
        v11 = *(v10 - 8);
        (*(v11 + 56))(v8, 1, 1, v10);
        v12 = swift_allocObject();
        *(v12 + 16) = 0;
        v29 = (v12 + 16);
        *(v12 + 24) = 0;
        *(v12 + 32) = v6;
        *(v12 + 40) = v7;
        *(v12 + 48) = v27;
        sub_22B0898A8(v8, v9, &qword_27D8B5C38, &qword_22B0E5480);
        v30 = v11;
        v13 = v11;
        v14 = v6;
        LODWORD(v9) = (*(v13 + 48))(v9, 1, v10);
        sub_22B0A7418(v6);
        sub_22B0A7418(v6);
        sub_22B0A7418(v6);

        sub_22B0A7418(v28);
        v15 = *(v0 + 88);
        if (v9 == 1)
        {
          sub_22B07D02C(*(v0 + 88), &qword_27D8B5C38, &qword_22B0E5480);
        }

        else
        {
          sub_22B0DF5B0();
          (*(v30 + 8))(v15, v10);
        }

        if (*v29)
        {
          v16 = *(v12 + 24);
          v17 = *v29;
          swift_getObjectType();
          swift_unknownObjectRetain();
          v18 = sub_22B0DF570();
          v20 = v19;
          swift_unknownObjectRelease();
        }

        else
        {
          v18 = 0;
          v20 = 0;
        }

        v21 = **(v0 + 72);
        v22 = swift_allocObject();
        *(v22 + 16) = &unk_22B0E4B40;
        *(v22 + 24) = v12;

        if (v20 | v18)
        {
          v4 = v0 + 16;
          *(v0 + 16) = 0;
          *(v0 + 24) = 0;
          *(v0 + 32) = v18;
          *(v0 + 40) = v20;
        }

        else
        {
          v4 = 0;
        }

        v5 = *(v0 + 96);
        *(v0 + 48) = 1;
        *(v0 + 56) = v4;
        *(v0 + 64) = v21;
        swift_task_create();

        sub_22B094864(v28);
        sub_22B094864(v14);

        sub_22B094864(v14);
        sub_22B07D02C(v5, &qword_27D8B5C38, &qword_22B0E5480);
        v2 = v31;
      }

      v3 += 6;
      --v2;
    }

    while (v2);
  }

  v24 = *(v0 + 88);
  v23 = *(v0 + 96);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_22B0C44A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 48);
  *(v3 + 48) = *(a1 + 32);
  *(v3 + 64) = v5;
  *(v3 + 80) = *(a1 + 64);
  v6 = *(a1 + 16);
  *(v3 + 16) = *a1;
  *(v3 + 32) = v6;
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = *(a1 + 48);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D8B5C60, &unk_22B0E4BB0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  v13 = *(*v12 + 128);
  v14 = sub_22B0DF990();
  v15 = *(*(v14 - 8) + 56);
  v15(&v12[v13], 1, 1, v14);
  v15(&v12[*(*v12 + 136)], 1, 1, v14);
  *(v12 + 2) = 0xD000000000000011;
  *(v12 + 3) = 0x800000022B0E7320;
  *(v12 + 4) = 0xD000000000000011;
  *(v12 + 5) = 0x800000022B0E7320;
  *(v12 + 6) = &unk_22B0E6010;
  *(v12 + 7) = v7;
  *(v12 + 8) = a2;
  *(v12 + 9) = a3;
  v16 = &v8[*(*v8 + 136)];
  sub_22B0898A8(a1, v21, &qword_27D8B65A0, &qword_22B0E5FD8);
  swift_retain_n();
  os_unfair_lock_lock(v16);
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5F20, &unk_22B0E54F0) + 28);
  sub_22B0C5BF8(v16 + v17, 0xD000000000000011, 0x800000022B0E7320);
  os_unfair_lock_unlock(v16);
  os_unfair_lock_lock(v16);
  sub_22B0C5F44((&v16->_os_unfair_lock_opaque + v17), v12, v8);
  os_unfair_lock_unlock(v16);

  sub_22B07D02C(a1, &qword_27D8B65A0, &qword_22B0E5FD8);

  return v3;
}

uint64_t sub_22B0C4718()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_22B0C47A4();
  }

  v2 = *(v0 + 8);

  return v2();
}

void sub_22B0C47A4()
{
  v42 = *MEMORY[0x277D85DE8];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  *buffer = 0u;
  v1 = getpid();
  v2 = proc_pid_rusage(v1, 6, buffer);
  if (v2)
  {
    v3 = v2;
    sub_22B07BA9C(0, &qword_27D8B5CE8, 0x277D86200);
    v4 = sub_22B0DF760();
    v5 = sub_22B0DF6A0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 67109120;
      *(v6 + 4) = v3;
      _os_log_impl(&dword_22B074000, v4, v5, "Unable to retrieve memory foot-print, result: %d", v6, 8u);
      MEMORY[0x23188A520](v6, -1, -1);
    }
  }

  else
  {
    v7 = *(&v17 + 1);
    v8 = *(&v30 + 1);
    proc_reset_footprint_interval();
    v9 = type metadata accessor for ProcessMemorySampleLogEvent();
    v10 = objc_allocWithZone(v9);
    *&v10[OBJC_IVAR____TtC14HomeKitMetrics27ProcessMemorySampleLogEvent_currentMemoryUsage] = v7;
    *&v10[OBJC_IVAR____TtC14HomeKitMetrics27ProcessMemorySampleLogEvent_intervalMaxMemoryUsage] = v8;
    v12.receiver = v10;
    v12.super_class = v9;
    v4 = objc_msgSendSuper2(&v12, sel_init);
    [*(v0 + 48) submitLogEvent_];
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22B0C4984()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_22B0C4A0C();
  }

  v4 = *(v0 + 8);

  return v4();
}

void sub_22B0C4A0C()
{
  v1 = v0;
  v52 = sub_22B0DF0E0();
  v2 = *(v52 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v52);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D85000];
  v7 = (v0 + *((*MEMORY[0x277D85000] & *v0) + 0x78));
  v8 = [v7[2] startOfDayByAddingDayCount_];
  sub_22B0DF0B0();

  v9 = *v1;
  v10 = *v6;
  v11 = *(v1 + *((*v6 & *v1) + 0x90));
  if (v11)
  {
    v13 = *(v1 + *((*v6 & *v1) + 0x70));
    if (!v13)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    os_unfair_lock_lock(v13 + 22);
    sub_22B097390();
    v14 = sub_22B099028(0xD000000000000015, 0x800000022B0E73D0, v5);
    v16 = v15;

    os_unfair_lock_unlock(v13 + 22);
    if (v16)
    {
      v17 = 0;
    }

    else
    {
      v17 = v14;
    }

    v51 = v17;
    v9 = *v1;
    v10 = *v6;
    if ((v11 & 2) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v51 = 0;
    if ((v11 & 2) == 0)
    {
LABEL_3:
      v12 = 0;
      goto LABEL_14;
    }
  }

  v18 = *(v1 + *((v10 & v9) + 0x70));
  if (!v18)
  {
LABEL_33:
    __break(1u);
    return;
  }

  os_unfair_lock_lock(v18 + 22);
  sub_22B097390();
  v19 = sub_22B099028(0xD000000000000016, 0x800000022B0E73F0, v5);
  v21 = v20;

  os_unfair_lock_unlock(v18 + 22);
  if (v21)
  {
    v12 = 0;
  }

  else
  {
    v12 = v19;
  }

  v9 = *v1;
  v10 = *v6;
LABEL_14:
  v22 = *(v1 + *((v10 & v9) + 0x70));
  if (!v22)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  os_unfair_lock_lock(v22 + 22);
  sub_22B0975F8();
  sub_22B09D024(v5);
  v24 = v23;
  if (*(v23 + 16) && (v25 = sub_22B0768A8(0x694879726F6D656DLL, 0xEF72657461776867), (v26 & 1) != 0))
  {
    v27 = *(*(v24 + 56) + 40 * v25 + 8);

    v28 = 0;
  }

  else
  {

    v27 = 0;
    v28 = 1;
  }

  os_unfair_lock_unlock(v22 + 22);
  os_unfair_lock_lock(v22 + 22);
  sub_22B0975F8();
  sub_22B09D024(v5);
  v30 = v29;
  if (!*(v29 + 16))
  {
    goto LABEL_25;
  }

  v31 = sub_22B0768A8(0x615379726F6D656DLL, 0xEC000000656C706DLL);
  if ((v32 & 1) == 0)
  {
    goto LABEL_25;
  }

  v33 = *(v30 + 56) + 40 * v31;
  v35 = *(v33 + 16);
  v34 = *(v33 + 24);

  os_unfair_lock_unlock(v22 + 22);
  v36 = v34 / v35;
  if (COERCE__INT64(fabs(v36)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v36 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (v36 >= 9.22337204e18)
  {
    __break(1u);
LABEL_25:

    os_unfair_lock_unlock(v22 + 22);
    v36 = 0.0;
  }

  v37 = (v11 & 2) == 0;
  v38 = (v11 & 1) == 0;
  if (v28)
  {
    v27 = 0;
  }

  v40 = *v7;
  v39 = v7[1];
  v61 = v38;
  v60 = v37;
  v50 = v5;
  v41 = v7;
  v42 = v36 & ~(v36 >> 63);
  v58 = v36 < 1;
  v56 = v28;
  v43 = type metadata accessor for ProcessMemorySummaryLogEvent();
  v44 = objc_allocWithZone(v43);
  *&v44[OBJC_IVAR____TtC14HomeKitMetrics28ProcessMemorySummaryLogEvent_coreAnalyticsEventOptions] = 1;
  v54 = v40;
  v55 = v39;

  MEMORY[0x231889070](0xD000000000000015, 0x800000022B0E7430);
  v45 = v55;
  v46 = &v44[OBJC_IVAR____TtC14HomeKitMetrics28ProcessMemorySummaryLogEvent_coreAnalyticsEventName];
  *v46 = v54;
  *(v46 + 1) = v45;
  v47 = &v44[OBJC_IVAR____TtC14HomeKitMetrics28ProcessMemorySummaryLogEvent_counts];
  *v47 = v51;
  v47[8] = v61;
  *(v47 + 9) = v54;
  *(v47 + 3) = *(&v54 + 3);
  *(v47 + 2) = v12;
  v47[24] = v60;
  *(v47 + 25) = *v59;
  *(v47 + 7) = *&v59[3];
  *(v47 + 4) = v42;
  v47[40] = v58;
  LODWORD(v45) = *v57;
  *(v47 + 11) = *&v57[3];
  *(v47 + 41) = v45;
  *(v47 + 6) = v27;
  v47[56] = v56;
  v53.receiver = v44;
  v53.super_class = v43;
  v48 = objc_msgSendSuper2(&v53, sel_init);
  [v41[4] submitLogEvent_];

  (*(v2 + 8))(v50, v52);
}

id sub_22B0C4F88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = MEMORY[0x277D85000];
  v10 = v3 + *((*MEMORY[0x277D85000] & *v3) + 0x70);
  v11 = *(a1 + 48);
  *(v10 + 2) = *(a1 + 32);
  *(v10 + 3) = v11;
  *(v10 + 8) = *(a1 + 64);
  v12 = *(a1 + 16);
  *v10 = *a1;
  *(v10 + 1) = v12;
  type metadata accessor for NamedGroupSpecifier();
  v13 = swift_allocObject();
  *(v13 + 16) = 0xD000000000000011;
  *(v13 + 24) = 0x800000022B0E74C0;
  sub_22B0898A8(a1, v32, &qword_27D8B65A0, &qword_22B0E5FD8);
  v14 = sub_22B08C5E8(v13);

  *(v4 + *((*v9 & *v4) + 0x78)) = v14;
  v15 = (v4 + *((*v9 & *v4) + 0x80));
  *v15 = a2;
  v15[1] = a3;
  v31.receiver = v4;
  v31.super_class = ObjectType;

  v16 = objc_msgSendSuper2(&v31, sel_init);
  v17 = *(a1 + 40);
  type metadata accessor for ProcessLaunchLogEvent();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = v16;
  [v17 addObserver:v19 forEventClass:ObjCClassFromMetadata];
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = *(a1 + 56);

  os_unfair_lock_lock((v21 + 56));
  v22 = *(v21 + 64);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v21 + 64) = v22;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v28 = v22[2];

    v29 = sub_22B0831BC(0, v28 + 1, 1, v22);
    v30 = *(v21 + 64);
    *(v21 + 64) = v29;

    v22 = *(v21 + 64);
  }

  v25 = v22[2];
  v24 = v22[3];
  if (v25 >= v24 >> 1)
  {
    v22 = sub_22B0831BC((v24 > 1), v25 + 1, 1, v22);
    *(v21 + 64) = v22;
  }

  v22[2] = v25 + 1;
  v26 = *(v21 + 64) + 48 * v25;
  strcpy((v26 + 32), "ProcessLaunch");
  *(v26 + 46) = -4864;
  *(v26 + 48) = xmmword_22B0E5E30;
  *(v26 + 64) = &unk_22B0E6080;
  *(v26 + 72) = v20;
  os_unfair_lock_unlock((v21 + 56));

  sub_22B07D02C(a1, &qword_27D8B65A0, &qword_22B0E5FD8);

  return v19;
}

uint64_t sub_22B0C529C()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_22B0C5324();
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22B0C5324()
{
  v1 = sub_22B0DF0E0();
  v46 = *(v1 - 8);
  v47 = v1;
  v2 = *(v46 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277D85000];
  v6 = (v0 + *((*MEMORY[0x277D85000] & *v0) + 0x70));
  v7 = [v6[2] startOfDayByAddingDayCount_];
  sub_22B0DF0B0();

  v8 = *(v0 + *((*v5 & *v0) + 0x78));
  os_unfair_lock_lock(v8 + 22);
  sub_22B097390();
  v45 = sub_22B099028(0x736568636E75616CLL, 0xE800000000000000, v4);
  LOBYTE(v7) = v9;

  os_unfair_lock_unlock(v8 + 22);
  v59 = v7 & 1;
  os_unfair_lock_lock(v8 + 22);
  sub_22B097390();
  v44 = sub_22B099028(0x6C616D726F6E6261, 0xEC00000074697845, v4);
  LOBYTE(v7) = v10;

  os_unfair_lock_unlock(v8 + 22);
  v58 = v7 & 1;
  os_unfair_lock_lock(v8 + 22);
  sub_22B097390();
  v43 = sub_22B099028(0x7261746E756C6F76, 0xED00007469784579, v4);
  LOBYTE(v7) = v11;

  os_unfair_lock_unlock(v8 + 22);
  v57 = v7 & 1;
  os_unfair_lock_lock(v8 + 22);
  sub_22B097390();
  v42 = sub_22B099028(0x6D617374656ALL, 0xE600000000000000, v4);
  LOBYTE(v7) = v12;

  os_unfair_lock_unlock(v8 + 22);
  v56 = v7 & 1;
  os_unfair_lock_lock(v8 + 22);
  sub_22B097390();
  v41 = sub_22B099028(0x6574617768676968, 0xE900000000000072, v4);
  LOBYTE(v7) = v13;

  os_unfair_lock_unlock(v8 + 22);
  v55 = v7 & 1;
  os_unfair_lock_lock(v8 + 22);
  sub_22B097390();
  v40 = sub_22B099028(0x4C737365636F7270, 0xEC00000074696D69, v4);
  LOBYTE(v7) = v14;

  os_unfair_lock_unlock(v8 + 22);
  v54 = v7 & 1;
  os_unfair_lock_lock(v8 + 22);
  sub_22B097390();
  v39 = sub_22B099028(0x74697845656C6469, 0xE800000000000000, v4);
  LOBYTE(v7) = v15;

  os_unfair_lock_unlock(v8 + 22);
  v53 = v7 & 1;
  os_unfair_lock_lock(v8 + 22);
  sub_22B097390();
  v38 = sub_22B099028(0x6873617263, 0xE500000000000000, v4);
  LOBYTE(v7) = v16;

  os_unfair_lock_unlock(v8 + 22);
  v52 = v7 & 1;
  os_unfair_lock_lock(v8 + 22);
  sub_22B097390();
  v37 = sub_22B099028(0x676F646863746177, 0xE800000000000000, v4);
  v18 = v17;

  os_unfair_lock_unlock(v8 + 22);
  v19 = v18 & 1;
  v51 = v18 & 1;
  v36 = v6;
  v21 = *v6;
  v20 = v6[1];
  LOBYTE(v6) = v59;
  LOBYTE(v5) = v58;
  v22 = v57;
  v31 = v56;
  v32 = v55;
  v33 = v54;
  v34 = v53;
  v35 = v52;
  v23 = type metadata accessor for ProcessLaunchSummaryLogEvent();
  v24 = objc_allocWithZone(v23);
  *&v24[OBJC_IVAR____TtC14HomeKitMetrics28ProcessLaunchSummaryLogEvent_coreAnalyticsEventOptions] = 1;
  v49 = v21;
  v50 = v20;

  MEMORY[0x231889070](0xD000000000000015, 0x800000022B0E6CD0);
  v25 = v50;
  v26 = &v24[OBJC_IVAR____TtC14HomeKitMetrics28ProcessLaunchSummaryLogEvent_coreAnalyticsEventName];
  *v26 = v49;
  *(v26 + 1) = v25;
  v27 = &v24[OBJC_IVAR____TtC14HomeKitMetrics28ProcessLaunchSummaryLogEvent_counts];
  *v27 = v45;
  v27[8] = v6;
  *(v27 + 9) = v49;
  *(v27 + 3) = *(&v49 + 3);
  *(v27 + 2) = v44;
  v27[24] = v5;
  *(v27 + 25) = *v66;
  *(v27 + 7) = *&v66[3];
  *(v27 + 4) = v43;
  v27[40] = v22;
  *(v27 + 41) = *v65;
  *(v27 + 11) = *&v65[3];
  *(v27 + 6) = v42;
  v27[56] = v31;
  LODWORD(v25) = *v64;
  *(v27 + 15) = *&v64[3];
  *(v27 + 57) = v25;
  *(v27 + 8) = v41;
  v27[72] = v32;
  LODWORD(v25) = *v63;
  *(v27 + 19) = *&v63[3];
  *(v27 + 73) = v25;
  *(v27 + 10) = v40;
  v27[88] = v33;
  LODWORD(v25) = *v62;
  *(v27 + 23) = *&v62[3];
  *(v27 + 89) = v25;
  *(v27 + 12) = v39;
  v27[104] = v34;
  LODWORD(v25) = *v61;
  *(v27 + 27) = *&v61[3];
  *(v27 + 105) = v25;
  *(v27 + 14) = v38;
  v27[120] = v35;
  LODWORD(v25) = *v60;
  *(v27 + 31) = *&v60[3];
  *(v27 + 121) = v25;
  *(v27 + 16) = v37;
  v27[136] = v19;
  v48.receiver = v24;
  v48.super_class = v23;
  v28 = objc_msgSendSuper2(&v48, sel_init);
  [v36[4] submitLogEvent_];

  return (*(v46 + 8))(v4, v47);
}

uint64_t sub_22B0C59B4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B65C0, &unk_22B0E6018);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  v8 = sub_22B0DF990();
  sub_22B076354(&unk_2813E9940, MEMORY[0x277D858F8]);
  sub_22B0DF9D0();
  v9 = v1[8];
  v10 = v2[9];
  result = sub_22B0DFDE0();
  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v12 >= 9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *&v16 = v9;
  *(&v16 + 1) = v10;
  if (!__OFADD__(v12, 1))
  {
    sub_22B0DFA00();
    v16 = v15;
    sub_22B0DF9C0();
    v13 = *(v8 - 8);
    (*(v13 + 16))(v7, a1, v8);
    (*(v13 + 56))(v7, 0, 1, v8);
    v14 = *(*v2 + 136);
    swift_beginAccess();
    sub_22B0CDF00(v7, v2 + v14);
    return swift_endAccess();
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_22B0C5BF8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*a1 == 1)
  {

    MEMORY[0x231889140](v4);
    if (*((*(a1 + 8) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + 8) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v12 = *((*(a1 + 8) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22B0DF4D0();
    }

    sub_22B0DF500();
  }

  else
  {
    if (qword_2813E9AA0 != -1)
    {
      swift_once();
    }

    v7 = sub_22B0DF1B0();
    __swift_project_value_buffer(v7, qword_2813EBE78);

    v8 = sub_22B0DF190();
    v9 = sub_22B0DF690();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_22B07B428(a2, a3, &v13);
      _os_log_impl(&dword_22B074000, v8, v9, "Trying to schedule block %s while the scheduler is not running. Ignoring.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x23188A520](v11, -1, -1);
      MEMORY[0x23188A520](v10, -1, -1);
    }
  }
}

uint64_t sub_22B0C5DB8()
{
  v1 = *(*v0 + 128);
  sub_22B0DF990();
  sub_22B076354(&unk_2813E9940, MEMORY[0x277D858F8]);
  sub_22B0DF9D0();
  v2 = sub_22B0DFDD0();
  v3 = v2 / 3600;
  v4 = v2 % 60;
  v5 = v2 / 60 % 60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5F00, &unk_22B0E29F0);
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D84A28];
  *(v6 + 16) = xmmword_22B0E2C10;
  v8 = MEMORY[0x277D84A90];
  *(v6 + 56) = v7;
  *(v6 + 64) = v8;
  *(v6 + 32) = v3;
  *(v6 + 96) = v7;
  *(v6 + 104) = v8;
  *(v6 + 72) = v5;
  *(v6 + 136) = v7;
  *(v6 + 144) = v8;
  *(v6 + 112) = v4;
  v9 = sub_22B0DF340();
  MEMORY[0x231889070](v9);

  return 11092;
}

uint64_t sub_22B0C5F44(void *a1, uint64_t a2, char *a3)
{
  v46 = a1;
  v54 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B65C0, &unk_22B0E6018);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v49 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v50 = &v42 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v42 - v10;
  v12 = sub_22B0DF990();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v42 - v18;
  v20 = *(*a3 + 128);
  v21 = *(*a3 + 96);
  sub_22B0DF9B0();
  sub_22B076354(&unk_2813E9930, MEMORY[0x277D85928]);
  v22 = v46;
  sub_22B0DFCB0();
  v51 = a3;
  sub_22B0C59B4(v19);
  v23 = v17;
  v24 = v12;
  v47 = v13[1];
  v48 = v13 + 1;
  v47(v23, v12);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5F10, &unk_22B0E54E0);
  v25 = *(v54 + 44);
  sub_22B0898A8(v22 + v25, v11, &qword_27D8B65C0, &unk_22B0E6018);
  v52 = v13[6];
  v53 = v13 + 6;
  LODWORD(v21) = v52(v11, 1, v12);
  sub_22B07D02C(v11, &qword_27D8B65C0, &unk_22B0E6018);
  if (v21 == 1)
  {
    goto LABEL_4;
  }

  v26 = v50;
  sub_22B0898A8(v22 + v25, v50, &qword_27D8B65C0, &unk_22B0E6018);
  result = v52(v26, 1, v12);
  if (result == 1)
  {
LABEL_38:
    __break(1u);
    return result;
  }

  sub_22B076354(&unk_2813E9950, MEMORY[0x277D858F8]);
  v28 = sub_22B0DF2C0();
  v47(v26, v12);
  if (v28)
  {
LABEL_4:
    sub_22B0C6594(v19, v22);
  }

  v29 = *(v54 + 48);
  v30 = *(v22 + v29);
  v31 = v30 >> 62;
  if (v30 >> 62)
  {
    goto LABEL_33;
  }

  result = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    return (v47)(v19, v24);
  }

LABEL_7:
  v44 = v31;
  v45 = v19;
  v31 = v22[1];
  v54 = v30;
  v43 = v29;
  if (v31 >> 62)
  {
    result = sub_22B0DF830();
    v51 = result;
  }

  else
  {
    v51 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v50 = v24;
  if (v51)
  {
    v30 = 0;
    v22 = &unk_22B0E6018;
    do
    {
      if ((v31 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x2318895C0](v30, v31);
        v32 = result;
        v19 = (v30 + 1);
        if (__OFADD__(v30, 1))
        {
LABEL_19:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v30 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_33:
          result = sub_22B0DF830();
          if (!result)
          {
            return (v47)(v19, v24);
          }

          goto LABEL_7;
        }

        v32 = *(v31 + 8 * v30 + 32);

        v19 = (v30 + 1);
        if (__OFADD__(v30, 1))
        {
          goto LABEL_19;
        }
      }

      v33 = *(*v32 + 136);
      swift_beginAccess();
      v34 = v32 + v33;
      v35 = v49;
      sub_22B0898A8(v34, v49, &qword_27D8B65C0, &unk_22B0E6018);
      v24 = v35;

      v36 = v35;
      v29 = v50;
      if (v52(v36, 1, v50) == 1)
      {
        v47(v45, v29);
        return sub_22B07D02C(v24, &qword_27D8B65C0, &unk_22B0E6018);
      }

      result = sub_22B07D02C(v24, &qword_27D8B65C0, &unk_22B0E6018);
      ++v30;
    }

    while (v19 != v51);
  }

  if (v44)
  {
    v37 = v54;
    result = sub_22B0DF830();
    v38 = result;
    v39 = v46;
    if (!result)
    {
      goto LABEL_29;
    }

LABEL_22:
    if (v38 >= 1)
    {

      v40 = 0;
      do
      {
        if ((v37 & 0xC000000000000001) != 0)
        {
          MEMORY[0x2318895C0](v40, v54);
        }

        else
        {
          v41 = *(v54 + 8 * v40 + 32);
        }

        ++v40;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5EF0, &qword_22B0E5478);
        sub_22B0DF580();
      }

      while (v38 != v40);
      goto LABEL_30;
    }

    __break(1u);
    goto LABEL_38;
  }

  v37 = v54;
  v38 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v39 = v46;
  if (v38)
  {
    goto LABEL_22;
  }

LABEL_29:

LABEL_30:
  v47(v45, v50);
  result = swift_bridgeObjectRelease_n();
  *(v39 + v43) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_22B0C6594(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5C38, &qword_22B0E5480);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v50 = &v43 - v7;
  v8 = sub_22B0DF990();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v47 = v12;
  v48 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v43 - v13;
  if (qword_2813E9AA0 != -1)
  {
    swift_once();
  }

  v15 = sub_22B0DF1B0();
  __swift_project_value_buffer(v15, qword_2813EBE78);
  v16 = *(v9 + 16);
  v45 = v9 + 16;
  v46 = v16;
  v16(v14, a1, v8);

  v17 = sub_22B0DF190();
  v18 = sub_22B0DF670();

  v19 = os_log_type_enabled(v17, v18);
  v51 = a1;
  v49 = v2;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v52 = v21;
    *v20 = 136446210;
    v22 = sub_22B0C5DB8();
    v44 = a2;
    v24 = v23;
    (*(v9 + 8))(v14, v8);
    v25 = sub_22B07B428(v22, v24, &v52);
    a2 = v44;

    *(v20 + 4) = v25;
    _os_log_impl(&dword_22B074000, v17, v18, "Scheduled next run for T+%{public}s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x23188A520](v21, -1, -1);
    MEMORY[0x23188A520](v20, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v14, v8);
  }

  v26 = *(a2 + 16);
  if (v26)
  {
    v27 = *(a2 + 16);
    sub_22B0DF5D0();
  }

  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5F10, &unk_22B0E54E0);
  v44 = v26;
  v29 = *(v28 + 44);
  v30 = a2;
  sub_22B07D02C(a2 + v29, &qword_27D8B65C0, &unk_22B0E6018);
  v31 = v46;
  v46((a2 + v29), v51, v8);
  (*(v9 + 56))(a2 + v29, 0, 1, v8);
  v32 = v49;
  v33 = *(*v49 + 104);
  v34 = sub_22B0DF5C0();
  v35 = *(v34 - 8);
  v36 = v50;
  (*(v35 + 16))(v50, v32 + v33, v34);
  (*(v35 + 56))(v36, 0, 1, v34);
  v37 = swift_allocObject();
  swift_weakInit();
  v38 = v48;
  v31(v48, v51, v8);
  v39 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v40 = swift_allocObject();
  *(v40 + 2) = 0;
  *(v40 + 3) = 0;
  *(v40 + 4) = v37;
  (*(v9 + 32))(&v40[v39], v38, v8);
  v41 = sub_22B0C8B9C(0, 0, v36, &unk_22B0E6030, v40);
  sub_22B07D02C(v36, &qword_27D8B5C38, &qword_22B0E5480);

  *(v30 + 16) = v41;
  return result;
}

uint64_t sub_22B0C6A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v6 = sub_22B0DF990();
  v5[20] = v6;
  v7 = *(v6 - 8);
  v5[21] = v7;
  v8 = *(v7 + 64) + 15;
  v5[22] = swift_task_alloc();
  v9 = sub_22B0DF9B0();
  v5[23] = v9;
  v10 = *(v9 - 8);
  v5[24] = v10;
  v11 = *(v10 + 64) + 15;
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B0C6BAC, 0, 0);
}

uint64_t sub_22B0C6BAC()
{
  v1 = *(v0 + 144);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(v0 + 200);
    v4 = *(v0 + 208);
    v5 = *(v0 + 184);
    v6 = *(v0 + 192);
    v8 = *(v0 + 168);
    v7 = *(v0 + 176);
    v10 = *(v0 + 152);
    v9 = *(v0 + 160);
    (*(v6 + 16))(v3, Strong + *(*Strong + 96), v5);

    (*(v6 + 32))(v4, v3, v5);
    v11 = sub_22B076354(&unk_2813E9930, MEMORY[0x277D85928]);
    sub_22B0DFCB0();
    sub_22B076354(&unk_2813E9940, MEMORY[0x277D858F8]);
    sub_22B0DF9D0();
    (*(v8 + 8))(v7, v9);
    *(v0 + 120) = *(v0 + 104);
    sub_22B0DF9F0();
    *(v0 + 64) = *(v0 + 88);
    *(v0 + 80) = 0;
    v12 = *(MEMORY[0x277D85A58] + 4);
    v13 = swift_task_alloc();
    *(v0 + 216) = v13;
    *v13 = v0;
    v13[1] = sub_22B0C6EFC;
    v14 = *(v0 + 208);
    v15 = *(v0 + 184);
    v16 = *(v0 + 152);

    return MEMORY[0x2822008C8](v16, v0 + 64, v15, v11);
  }

  else
  {
    if (qword_2813E9AA0 != -1)
    {
      swift_once();
    }

    v17 = sub_22B0DF1B0();
    __swift_project_value_buffer(v17, qword_2813EBE78);
    v18 = sub_22B0DF190();
    v19 = sub_22B0DF670();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_22B074000, v18, v19, "Weak self is nil", v20, 2u);
      MEMORY[0x23188A520](v20, -1, -1);
    }

    v22 = *(v0 + 200);
    v21 = *(v0 + 208);
    v23 = *(v0 + 176);

    v24 = *(v0 + 8);

    return v24();
  }
}

uint64_t sub_22B0C6EFC()
{
  v2 = *(*v1 + 216);
  v5 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = sub_22B0C72B4;
  }

  else
  {
    v3 = sub_22B0C7010;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_22B0C7010()
{
  if (sub_22B0DF5E0())
  {
    if (qword_2813E9AA0 != -1)
    {
      swift_once();
    }

    v1 = sub_22B0DF1B0();
    __swift_project_value_buffer(v1, qword_2813EBE78);
    v2 = sub_22B0DF190();
    v3 = sub_22B0DF670();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_14;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "Task cancelled";
LABEL_13:
    _os_log_impl(&dword_22B074000, v2, v3, v5, v4, 2u);
    MEMORY[0x23188A520](v4, -1, -1);
LABEL_14:
    v14 = v0[26];
    v15 = v0[23];
    v16 = v0[24];

    goto LABEL_15;
  }

  v6 = v0[18];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    if (qword_2813E9AA0 != -1)
    {
      swift_once();
    }

    v13 = sub_22B0DF1B0();
    __swift_project_value_buffer(v13, qword_2813EBE78);
    v2 = sub_22B0DF190();
    v3 = sub_22B0DF670();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_14;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "Weak self is nil";
    goto LABEL_13;
  }

  v8 = Strong;
  v9 = v0[28];
  v10 = v0[26];
  v11 = (Strong + *(*Strong + 136));
  os_unfair_lock_lock(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5F20, &unk_22B0E54F0);
  sub_22B0C748C(v11 + *(v12 + 28), v10, v8);
  os_unfair_lock_unlock(v11);
  if (v9)
  {
    return;
  }

  v14 = v0[26];
  v15 = v0[23];
  v16 = v0[24];

LABEL_15:
  (*(v16 + 8))(v14, v15);
  v18 = v0[25];
  v17 = v0[26];
  v19 = v0[22];

  v20 = v0[1];

  v20();
}

uint64_t sub_22B0C72B4()
{
  (*(v0[24] + 8))(v0[26], v0[23]);
  if (qword_2813E9AA0 != -1)
  {
    swift_once();
  }

  v1 = v0[28];
  v2 = sub_22B0DF1B0();
  __swift_project_value_buffer(v2, qword_2813EBE78);
  v3 = v1;
  v4 = sub_22B0DF190();
  v5 = sub_22B0DF670();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[28];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_22B074000, v4, v5, "Task error, likely due to cancellation: %@", v8, 0xCu);
    sub_22B07D02C(v9, &qword_27D8B5660, &qword_22B0E54A0);
    MEMORY[0x23188A520](v9, -1, -1);
    MEMORY[0x23188A520](v8, -1, -1);
  }

  else
  {
  }

  v13 = v0[25];
  v12 = v0[26];
  v14 = v0[22];

  v15 = v0[1];

  return v15();
}

uint64_t sub_22B0C748C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5C38, &qword_22B0E5480);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v149 = &v135 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v163 = &v135 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B65C0, &unk_22B0E6018);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v152 = &v135 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v148 = &v135 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v138 = &v135 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v154 = &v135 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v165 = (&v135 - v21);
  v22 = MEMORY[0x28223BE20](v20);
  v166 = (&v135 - v23);
  v24 = MEMORY[0x28223BE20](v22);
  v164 = &v135 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v171 = (&v135 - v27);
  v28 = MEMORY[0x28223BE20](v26);
  v141 = &v135 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v140 = &v135 - v31;
  MEMORY[0x28223BE20](v30);
  v150 = &v135 - v32;
  v33 = sub_22B0DF990();
  v34 = *(v33 - 1);
  v35 = v34[8];
  v36 = MEMORY[0x28223BE20](v33);
  v136 = &v135 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v145 = &v135 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v167 = &v135 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v162 = &v135 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v46 = &v135 - v45;
  MEMORY[0x28223BE20](v44);
  v48 = (&v135 - v47);
  v49 = *(a1 + 16);

  *(a1 + 16) = 0;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5F10, &unk_22B0E54E0);
  v50 = *(v137 + 44);
  sub_22B07D02C(a1 + v50, &qword_27D8B65C0, &unk_22B0E6018);
  v51 = v34[7];
  v143 = a1;
  v157 = v34 + 7;
  v156 = v51;
  v51(a1 + v50, 1, 1, v33);
  sub_22B0DF9B0();
  sub_22B076354(&unk_2813E9930, MEMORY[0x277D85928]);
  sub_22B0DFCB0();
  if (qword_2813E9AA0 != -1)
  {
    goto LABEL_69;
  }

  while (1)
  {
    v52 = sub_22B0DF1B0();
    __swift_project_value_buffer(v52, qword_2813EBE78);
    v53 = v34[2];
    v147 = v34 + 2;
    v146 = v53;
    v53(v46, v48, v33);

    v54 = sub_22B0DF190();
    v55 = sub_22B0DF670();

    v56 = os_log_type_enabled(v54, v55);
    v179 = v33;
    v155 = v48;
    v151 = a3;
    if (v56)
    {
      v48 = swift_slowAlloc();
      v170 = swift_slowAlloc();
      v176 = v170;
      *v48 = 136446210;
      v57 = *a3;
      LODWORD(v169) = v55;
      v58 = v57[16];
      sub_22B076354(&unk_2813E9940, MEMORY[0x277D858F8]);
      sub_22B0DF9D0();
      v59 = sub_22B0DFDD0();
      v60 = v59 / 3600;
      v61 = v59 % 60;
      v62 = v59 / 60 % 60;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5F00, &unk_22B0E29F0);
      v63 = swift_allocObject();
      v64 = MEMORY[0x277D84A28];
      *(v63 + 16) = xmmword_22B0E2C10;
      v65 = MEMORY[0x277D84A90];
      *(v63 + 56) = v64;
      *(v63 + 64) = v65;
      *(v63 + 32) = v60;
      *(v63 + 96) = v64;
      *(v63 + 104) = v65;
      *(v63 + 72) = v62;
      *(v63 + 136) = v64;
      *(v63 + 144) = v65;
      *(v63 + 112) = v61;
      v66 = sub_22B0DF340();
      v177 = 11092;
      v178 = 0xE200000000000000;
      MEMORY[0x231889070](v66);

      v67 = v177;
      v68 = v178;
      v158 = v34[1];
      v158(v46, v179);
      v69 = sub_22B07B428(v67, v68, &v176);

      *(v48 + 4) = v69;
      _os_log_impl(&dword_22B074000, v54, v169, "Running blocks at T+%{public}s", v48, 0xCu);
      v70 = v170;
      __swift_destroy_boxed_opaque_existential_0(v170);
      MEMORY[0x23188A520](v70, -1, -1);
      MEMORY[0x23188A520](v48, -1, -1);
    }

    else
    {

      v158 = v34[1];
      v158(v46, v33);
    }

    v71 = v171;
    v72 = *(v143 + 8);
    v142 = v34;
    v139 = v72 >> 62;
    if (v72 >> 62)
    {
      v73 = sub_22B0DF830();
    }

    else
    {
      v73 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v34 = v150;
    v168 = v72;
    if (v73)
    {
      if (v73 < 1)
      {
        __break(1u);
        goto LABEL_73;
      }

      v74 = 0;
      v75 = v72 & 0xC000000000000001;
      v144 = *(*v151 + 104);
      v169 = (v142 + 6);
      v159 = (v142 + 4);
      v153 = v142 + 1;
      v48 = &qword_27D8B65C0;
      v161 = v73;
      v160 = (v72 & 0xC000000000000001);
      do
      {
        v170 = v74;
        if (v75)
        {
          v76 = MEMORY[0x2318895C0]();
        }

        else
        {
          v76 = *(v72 + 8 * v74 + 32);
        }

        v77 = *(*v76 + 136);
        swift_beginAccess();
        sub_22B0898A8(v76 + v77, v34, &qword_27D8B65C0, &unk_22B0E6018);
        v78 = v179;
        if ((*v169)(v34, 1, v179) == 1)
        {

          sub_22B07D02C(v34, &qword_27D8B65C0, &unk_22B0E6018);
        }

        else
        {
          v79 = v162;
          (*v159)(v162, v34, v78);
          sub_22B076354(&unk_2813E9950, MEMORY[0x277D858F8]);
          v80 = v155;
          v81 = sub_22B0DF2E0();
          v158(v79, v78);
          if (v81)
          {
            v82 = v151;
            sub_22B0C8E5C(v76, v80, 0);
            v83 = v148;
            v146(v148, v80, v78);
            v84 = v156;
            v156(v83, 0, 1, v78);
            v85 = *(*v76 + 128);
            swift_beginAccess();
            sub_22B0CDF00(v83, v76 + v85);
            swift_endAccess();
            v84(v83, 1, 1, v78);
            swift_beginAccess();
            sub_22B0CDF00(v83, v76 + v77);
            swift_endAccess();
            v86 = sub_22B0DF5C0();
            v87 = *(v86 - 8);
            v88 = v163;
            (*(v87 + 16))(v163, v82 + v144, v86);
            (*(v87 + 56))(v88, 0, 1, v86);
            v89 = swift_allocObject();
            swift_weakInit();
            v90 = swift_allocObject();
            *(v90 + 16) = 0;
            *(v90 + 24) = 0;
            *(v90 + 32) = v76;
            *(v90 + 40) = 0;
            *(v90 + 48) = v89;
            v91 = v149;
            sub_22B0898A8(v88, v149, &qword_27D8B5C38, &qword_22B0E5480);
            v92 = (*(v87 + 48))(v91, 1, v86);
            swift_retain_n();

            if (v92 == 1)
            {
              sub_22B07D02C(v91, &qword_27D8B5C38, &qword_22B0E5480);
            }

            else
            {
              sub_22B0DF5B0();
              (*(v87 + 8))(v91, v86);
            }

            v93 = *(v90 + 16);
            v94 = *(v90 + 24);
            swift_unknownObjectRetain();

            v34 = v150;
            if (v93)
            {
              swift_getObjectType();
              v95 = sub_22B0DF570();
              v97 = v96;
              swift_unknownObjectRelease();
            }

            else
            {

              v95 = 0;
              v97 = 0;
            }

            v72 = v168;
            v98 = swift_allocObject();
            *(v98 + 16) = &unk_22B0E6068;
            *(v98 + 24) = v90;
            if (v97 | v95)
            {
              v172 = 0;
              v173 = 0;
              v174 = v95;
              v175 = v97;
            }

            v75 = v160;
            v48 = &qword_27D8B65C0;
            swift_task_create();

            sub_22B07D02C(v163, &qword_27D8B5C38, &qword_22B0E5480);

            v73 = v161;
          }

          else
          {

            v72 = v168;
            v73 = v161;
            v75 = v160;
            v48 = &qword_27D8B65C0;
          }
        }

        v71 = v171;
        v74 = (v170 + 1);
      }

      while (v73 != (v170 + 1));
    }

    v99 = v141;
    v156(v141, 1, 1, v179);
    sub_22B0898A8(v99, v71, &qword_27D8B65C0, &unk_22B0E6018);
    if (!v139)
    {
      v100 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v33 = v165;
      v34 = v166;
      if (!v100)
      {
        break;
      }

      goto LABEL_31;
    }

    v100 = sub_22B0DF830();
    v33 = v165;
    v34 = v166;
    if (!v100)
    {
      break;
    }

LABEL_31:
    a3 = 0;
    v163 = v72 & 0xC000000000000001;
    v162 = (v72 & 0xFFFFFFFFFFFFFF8);
    v160 = (v142 + 6);
    v153 = v142 + 1;
    v46 = &qword_27D8B65C0;
    v48 = &unk_22B0E6018;
    v161 = v100;
    v159 = (v142 + 4);
    while (v163)
    {
      v105 = MEMORY[0x2318895C0](a3, v72);
      v106 = (a3 + 1);
      if (__OFADD__(a3, 1))
      {
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

LABEL_37:
      v169 = a3;
      v170 = v106;
      v107 = *(*v105 + 136);
      swift_beginAccess();
      sub_22B0898A8(v105 + v107, v34, &qword_27D8B65C0, &unk_22B0E6018);
      sub_22B0898A8(v71, v33, &qword_27D8B65C0, &unk_22B0E6018);
      v108 = *v160;
      v109 = v179;
      if ((*v160)(v33, 1, v179) == 1)
      {

        sub_22B07D02C(v71, &qword_27D8B65C0, &unk_22B0E6018);
        sub_22B07D02C(v33, &qword_27D8B65C0, &unk_22B0E6018);
        v101 = v164;
        sub_22B0CE508(v34, v164, &qword_27D8B65C0, &unk_22B0E6018);
        v102 = v170;
        v72 = v168;
        v103 = v169;
      }

      else
      {
        v110 = *v159;
        (*v159)(v167, v33, v109);
        v111 = v154;
        sub_22B0898A8(v34, v154, &qword_27D8B65C0, &unk_22B0E6018);
        if (v108(v111, 1, v109) == 1)
        {
          v112 = v110;

          sub_22B07D02C(v166, &qword_27D8B65C0, &unk_22B0E6018);
          sub_22B07D02C(v171, &qword_27D8B65C0, &unk_22B0E6018);
          sub_22B07D02C(v111, &qword_27D8B65C0, &unk_22B0E6018);
          v72 = v168;
          v103 = v169;
LABEL_43:
          v101 = v164;
          v115 = v179;
          (v112)(v164, v167, v179);
          v156(v101, 0, 1, v115);
          v34 = v166;
          v102 = v170;
          v71 = v171;
          goto LABEL_33;
        }

        v113 = v145;
        v110();
        sub_22B076354(&unk_2813E9950, MEMORY[0x277D858F8]);
        v114 = sub_22B0DF2C0();

        sub_22B07D02C(v166, &qword_27D8B65C0, &unk_22B0E6018);
        sub_22B07D02C(v171, &qword_27D8B65C0, &unk_22B0E6018);
        v112 = v110;
        v103 = v169;
        if ((v114 & 1) == 0)
        {
          v158(v113, v109);
          v72 = v168;
          goto LABEL_43;
        }

        v158(v167, v109);
        v101 = v164;
        (v112)(v164, v113, v109);
        v156(v101, 0, 1, v109);
        v34 = v166;
        v102 = v170;
        v71 = v171;
        v72 = v168;
      }

LABEL_33:
      sub_22B0CE508(v101, v71, &qword_27D8B65C0, &unk_22B0E6018);
      a3 = v103 + 1;
      v104 = v102 == v161;
      v33 = v165;
      if (v104)
      {
        goto LABEL_47;
      }
    }

    if (a3 < *(v162 + 2))
    {
      v105 = *(v72 + 8 * a3 + 32);

      v106 = (a3 + 1);
      if (__OFADD__(a3, 1))
      {
        goto LABEL_46;
      }

      goto LABEL_37;
    }

    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    swift_once();
  }

LABEL_47:
  sub_22B07D02C(v141, &qword_27D8B65C0, &unk_22B0E6018);
  v116 = v140;
  sub_22B0CE508(v71, v140, &qword_27D8B65C0, &unk_22B0E6018);
  v117 = v116;
  v118 = v138;
  sub_22B0898A8(v117, v138, &qword_27D8B65C0, &unk_22B0E6018);
  v119 = v142;
  v120 = v179;
  v170 = v142[6];
  v171 = v142 + 6;
  if ((v170)(v118, 1, v179) == 1)
  {
    sub_22B07D02C(v118, &qword_27D8B65C0, &unk_22B0E6018);
    v121 = v143;
  }

  else
  {
    v122 = v136;
    (v119[4])(v136, v118, v120);
    v121 = v143;
    sub_22B0C6594(v122, v143);
    v158(v122, v120);
  }

  v123 = v155;
  v124 = *(v137 + 48);
  v46 = *(v121 + v124);
  if (v46 >> 62)
  {
    result = sub_22B0DF830();
  }

  else
  {
    result = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!result)
  {
LABEL_65:
    sub_22B07D02C(v140, &qword_27D8B65C0, &unk_22B0E6018);
    return (v158)(v123, v120);
  }

  v166 = v124;
  v167 = (v46 >> 62);
  v72 = *(v143 + 8);
  v168 = v46;
  if (v72 >> 62)
  {
LABEL_73:
    result = sub_22B0DF830();
    v120 = result;
    if (result)
    {
      goto LABEL_55;
    }

LABEL_74:
    if (v167)
    {
      v129 = v168;
      result = sub_22B0DF830();
      v130 = result;
      v131 = v179;
      v132 = v155;
      if (!result)
      {
        goto LABEL_85;
      }
    }

    else
    {
      v129 = v168;
      v130 = *((v168 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v131 = v179;
      v132 = v155;
      if (!v130)
      {
        goto LABEL_85;
      }
    }

    if (v130 < 1)
    {
      __break(1u);
      return result;
    }

    v133 = 0;
    do
    {
      if ((v129 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2318895C0](v133, v129);
      }

      else
      {
        v134 = *(v129 + 8 * v133 + 32);
      }

      ++v133;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5EF0, &qword_22B0E5478);
      sub_22B0DF580();
    }

    while (v130 != v133);

    v131 = v179;
    v132 = v155;
LABEL_85:
    sub_22B07D02C(v140, &qword_27D8B65C0, &unk_22B0E6018);
    v158(v132, v131);

    *(v166 + v143) = MEMORY[0x277D84F90];
    return result;
  }

  v120 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v120)
  {
    goto LABEL_74;
  }

LABEL_55:
  v126 = 0;
  v169 = (v72 & 0xC000000000000001);
  v123 = v72 & 0xFFFFFFFFFFFFFF8;
  v33 = &qword_27D8B65C0;
  a3 = &unk_22B0E6018;
  while (1)
  {
    if (v169)
    {
      v48 = MEMORY[0x2318895C0](v126, v72);
      v34 = (v126 + 1);
      if (__OFADD__(v126, 1))
      {
        goto LABEL_64;
      }
    }

    else
    {
      if (v126 >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_68;
      }

      v48 = *(v72 + 8 * v126 + 32);

      v34 = (v126 + 1);
      if (__OFADD__(v126, 1))
      {
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }
    }

    v127 = *(*v48 + 136);
    swift_beginAccess();
    v128 = v48 + v127;
    v46 = v152;
    sub_22B0898A8(v128, v152, &qword_27D8B65C0, &unk_22B0E6018);

    if ((v170)(v46, 1, v179) == 1)
    {
      break;
    }

    result = sub_22B07D02C(v46, &qword_27D8B65C0, &unk_22B0E6018);
    ++v126;
    if (v34 == v120)
    {
      goto LABEL_74;
    }
  }

  sub_22B07D02C(v140, &qword_27D8B65C0, &unk_22B0E6018);
  v158(v155, v179);
  return sub_22B07D02C(v46, &qword_27D8B65C0, &unk_22B0E6018);
}

uint64_t sub_22B0C8B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5C38, &qword_22B0E5480);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_22B0898A8(a3, v27 - v11, &qword_27D8B5C38, &qword_22B0E5480);
  v13 = sub_22B0DF5C0();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_22B07D02C(v12, &qword_27D8B5C38, &qword_22B0E5480);
  }

  else
  {
    sub_22B0DF5B0();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_22B0DF570();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_22B0DF360() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

void sub_22B0C8E5C(void *a1, uint64_t a2, int a3)
{
  v4 = v3;
  v62 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B65C0, &unk_22B0E6018);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v55 - v8;
  v10 = sub_22B0DF990();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(*a1 + 128);
  swift_beginAccess();
  sub_22B0898A8(a1 + v15, v9, &qword_27D8B65C0, &unk_22B0E6018);
  v61 = (*(v11 + 48))(v9, 1, v10);
  if (v61 == 1)
  {
    sub_22B07D02C(v9, &qword_27D8B65C0, &unk_22B0E6018);
    if (qword_2813E9AA0 != -1)
    {
      swift_once();
    }

    v16 = sub_22B0DF1B0();
    __swift_project_value_buffer(v16, qword_2813EBE78);

    v17 = sub_22B0DF190();
    v18 = sub_22B0DF670();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v64 = v20;
      *v19 = 136315394;
      *(v19 + 4) = sub_22B07B428(a1[2], a1[3], &v64);
      *(v19 + 12) = 1024;
      *(v19 + 14) = v62 & 1;
      _os_log_impl(&dword_22B074000, v17, v18, "Scheduled block %s, isDaily = %{BOOL}d, ran for the first time.", v19, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x23188A520](v20, -1, -1);
      MEMORY[0x23188A520](v19, -1, -1);
    }

    v59 = 0;
    v60 = 0;
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    sub_22B076354(&unk_2813E9940, MEMORY[0x277D858F8]);
    sub_22B0DF9D0();
    v21 = v64;
    v22 = v65;
    v23 = v14;
    if (qword_2813E9AA0 != -1)
    {
      swift_once();
    }

    v24 = sub_22B0DF1B0();
    __swift_project_value_buffer(v24, qword_2813EBE78);

    v25 = sub_22B0DF190();
    v26 = sub_22B0DF670();

    v27 = os_log_type_enabled(v25, v26);
    v59 = v22;
    v60 = v21;
    if (v27)
    {
      v28 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v64 = v58;
      *v28 = 136315650;
      *(v28 + 4) = sub_22B07B428(a1[2], a1[3], &v64);
      *(v28 + 12) = 1024;
      *(v28 + 14) = v62 & 1;
      *(v28 + 18) = 2080;
      v29 = sub_22B0DFDD0();
      v30 = v29 / 3600;
      v56 = v29 % 60;
      v57 = v23;
      v31 = v29 / 60 % 60;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5F00, &unk_22B0E29F0);
      v32 = swift_allocObject();
      v33 = MEMORY[0x277D84A28];
      *(v32 + 16) = xmmword_22B0E2C10;
      v34 = MEMORY[0x277D84A90];
      *(v32 + 56) = v33;
      *(v32 + 64) = v34;
      *(v32 + 32) = v30;
      *(v32 + 96) = v33;
      *(v32 + 104) = v34;
      *(v32 + 72) = v31;
      *(v32 + 136) = v33;
      *(v32 + 144) = v34;
      *(v32 + 112) = v56;
      v35 = sub_22B0DF340();
      v37 = sub_22B07B428(v35, v36, &v64);

      *(v28 + 20) = v37;
      _os_log_impl(&dword_22B074000, v25, v26, "Scheduled block %s, isDaily = %{BOOL}d, ran after %s, privacy: .public) after previous run.", v28, 0x1Cu);
      v38 = v58;
      swift_arrayDestroy();
      MEMORY[0x23188A520](v38, -1, -1);
      MEMORY[0x23188A520](v28, -1, -1);

      (*(v11 + 8))(v57, v10);
    }

    else
    {

      (*(v11 + 8))(v23, v10);
    }
  }

  v39 = (v4 + *(*v4 + 112));
  v41 = *v39;
  v40 = v39[1];
  v43 = a1[4];
  v42 = a1[5];
  v44 = type metadata accessor for BlockSchedulerLogEvent();
  v45 = objc_allocWithZone(v44);
  *&v45[OBJC_IVAR____TtC14HomeKitMetrics22BlockSchedulerLogEvent_coreAnalyticsEventOptions] = 0;
  v64 = v41;
  v65 = v40;

  MEMORY[0x231889070](0x6C7564656863732ELL, 0xEE006E75722E7265);
  v46 = 0;
  v47 = v65;
  v48 = &v45[OBJC_IVAR____TtC14HomeKitMetrics22BlockSchedulerLogEvent_coreAnalyticsEventName];
  *v48 = v64;
  v48[1] = v47;
  v49 = 0x6669636570736E55;
  if (v42)
  {
    v49 = v43;
  }

  v50 = 0xEB00000000646569;
  if (v42)
  {
    v50 = v42;
  }

  v51 = &v45[OBJC_IVAR____TtC14HomeKitMetrics22BlockSchedulerLogEvent_publicBlockName];
  *v51 = v49;
  v51[1] = v50;
  v52 = v61;
  if (v61 != 1)
  {
    v46 = sub_22B0DFDD0();
  }

  v53 = &v45[OBJC_IVAR____TtC14HomeKitMetrics22BlockSchedulerLogEvent_secondsSinceLastRun];
  *v53 = v46;
  v53[8] = v52 == 1;
  v45[OBJC_IVAR____TtC14HomeKitMetrics22BlockSchedulerLogEvent_isDailyBlock] = v62 & 1;
  v63.receiver = v45;
  v63.super_class = v44;
  v54 = objc_msgSendSuper2(&v63, sel_init);
  [*(v4 + *(*v4 + 120)) submitLogEvent_];
}

uint64_t sub_22B0C9550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 72) = a5;
  *(v6 + 48) = a4;
  *(v6 + 56) = a6;
  return MEMORY[0x2822009F8](sub_22B0C9574, 0, 0);
}

uint64_t sub_22B0C9574()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 56);
  v7 = (*(v1 + 48) + **(v1 + 48));
  v3 = *(*(v1 + 48) + 4);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_22B0C9668;
  v5 = *(v0 + 72);

  return v7(v5);
}

uint64_t sub_22B0C9668()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B0C9764, 0, 0);
}

uint64_t sub_22B0C9764()
{
  v1 = v0[7];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = v0[6];
    v5 = (Strong + *(*Strong + 136));
    os_unfair_lock_lock(v5);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5F20, &unk_22B0E54F0);
    sub_22B0C5F44((&v5->_os_unfair_lock_opaque + *(v6 + 28)), v4, v3);
    os_unfair_lock_unlock(v5);
  }

  v7 = v0[1];

  return v7();
}

id BaseMetricsManagerProvider.makeMetricsManager(coreAnalyticsEventPrefix:coreAnalyticsDelegate:coreAnalyticsFilters:counterStoragePath:dailySchedulerPreferencesKey:processLaunchEvent:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t (**a6)(uint64_t a1), uint64_t a7, uint64_t (**a8)(uint64_t a1), void *a9)
{
  v68 = a8;
  v65 = a3;
  v66 = a7;
  v62 = a5;
  v63 = a6;
  v11 = sub_22B0DF9B0();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22B0DF5C0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v59 - v21;
  v23 = objc_allocWithZone(HMMCoreAnalyticsLogEventObserver);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B6368, &qword_22B0E5E58);
  v24 = sub_22B0DF4A0();
  v65 = [v23 initWithDelegate:v65 filters:v24];

  v25 = [objc_allocWithZone(HMMLogEventDispatcher) init];
  sub_22B0DF5A0();
  v26 = v25;
  sub_22B0DF9A0();
  (*(v16 + 16))(v20, v22, v15);

  v27 = sub_22B0CCF08(v14, v20, a1, a2, v26);
  (*(v16 + 8))(v22, v15);
  v28 = v26;
  v60 = a1;
  v61 = a2;
  v29 = sub_22B0CCA5C(v27, v66, v68, a1, a2, v28);

  v68 = [objc_opt_self() sharedInstance];
  v30 = [objc_opt_self() sharedInstance];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B6370, &qword_22B0E5E60);
  v31 = swift_allocObject();
  *(v31 + 88) = 0;
  *(v31 + 96) = MEMORY[0x277D84F90];
  v32 = v28;

  v66 = v29;

  v64 = v27;
  if (!v63)
  {

    type metadata accessor for EmptyCounterStorage();
    v39 = swift_allocObject();
    *(v39 + 16) = 0;
    type metadata accessor for CountersManager();
    v40 = swift_allocObject();
    v41 = sub_22B0CD260(v39, v68, v30, v40, type metadata accessor for EmptyCounterStorage, &off_283EED480);
    *(v31 + 104) = 0;
    *(v31 + 112) = 0;
    v42 = v66;
    goto LABEL_8;
  }

  v33 = v63;
  type metadata accessor for PersistentFlatFileCounterStorage();
  swift_allocObject();
  v34 = v68;

  v35 = v30;
  v36 = v67;
  v37 = sub_22B0A27F4(v62, v33, v34);
  p_aBlock = v36;

  if (v36)
  {

    sub_22B07D02C(v31 + 96, &qword_27D8B6378, &qword_22B0E5E68);

    swift_deallocPartialClassInstance();
    return v31;
  }

  else
  {
    type metadata accessor for CountersManager();
    v43 = swift_allocObject();
    v44 = sub_22B0CD260(v37, v34, v35, v43, type metadata accessor for PersistentFlatFileCounterStorage, &off_283EEBAB8);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B6380, &qword_22B0E5E70);
    v46 = objc_allocWithZone(v45);
    *&v46[qword_27D8B6388] = v44;
    v69.receiver = v46;
    v69.super_class = v45;
    v41 = v44;

    *(v31 + 104) = objc_msgSendSuper2(&v69, sel_init);
    if (qword_27D8B53D0 != -1)
    {
      goto LABEL_15;
    }

    while (1)
    {
      result = [objc_allocWithZone(MEMORY[0x277D0F920]) initWithTimeInterval:4 options:*&qword_27D8B6360];
      *(v31 + 112) = result;
      v27 = v64;
      v42 = v66;
      if (!result)
      {
        break;
      }

      v67 = p_aBlock;
      [result setDelegate_];
LABEL_8:
      v48 = v61;
      *(v31 + 16) = v60;
      *(v31 + 24) = v48;
      v49 = v68;
      *(v31 + 32) = v68;
      *(v31 + 40) = v30;
      *(v31 + 48) = v32;
      *(v31 + 56) = v32;
      *(v31 + 64) = v27;
      *(v31 + 72) = v42;
      *(v31 + 80) = v41;
      v63 = v32;

      v32 = v49;
      v50 = v30;

      v30 = v65;
      sub_22B0CAEC4(v65);
      if (!a9)
      {
        goto LABEL_12;
      }

      v68 = v50;
      v51 = a9;
      v52 = v63;
      [v63 submitLogEvent_];
      v53 = [v52 clientQueue];
      v74 = nullsub_1;
      v75 = 0;
      p_aBlock = &aBlock;
      aBlock = MEMORY[0x277D85DD0];
      v71 = 1107296256;
      v30 = &v72;
      v72 = sub_22B0CACC8;
      v73 = &block_descriptor_0;
      v54 = _Block_copy(&aBlock);

      dispatch_sync(v53, v54);

      _Block_release(v54);
      if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
      {
        v55 = v63;
        v56 = [v63 clientQueue];
        v74 = nullsub_1;
        v75 = 0;
        aBlock = MEMORY[0x277D85DD0];
        v71 = 1107296256;
        v72 = sub_22B0CACC8;
        v73 = &block_descriptor_3;
        v57 = _Block_copy(&aBlock);

        dispatch_sync(v56, v57);

        _Block_release(v57);

        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
        v50 = v67;
        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
          return v31;
        }

        __break(1u);
LABEL_12:

        return v31;
      }

      __break(1u);
LABEL_15:
      swift_once();
    }

    __break(1u);
  }

  return result;
}

uint64_t BaseMetricsManagerGeneric.__allocating_init(coreAnalyticsEventPrefix:coreAnalyticsObserver:counterStoragePath:dateProvider:uptimeProvider:logEventDispatcher:repeatingScheduler:dailyScheduler:processLaunchEvent:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, void *a11)
{
  v19 = *(v11 + 48);
  v20 = *(v11 + 52);
  v21 = swift_allocObject();
  BaseMetricsManagerGeneric.init(coreAnalyticsEventPrefix:coreAnalyticsObserver:counterStoragePath:dateProvider:uptimeProvider:logEventDispatcher:repeatingScheduler:dailyScheduler:processLaunchEvent:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  return v21;
}

uint64_t BaseMetricsManagerGeneric.analyzerDataSource.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 112);
  v6 = *(*v1 + 80);
  v7 = *(*v1 + 96);
  v4 = type metadata accessor for BaseAnalyzerDataSource();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

id sub_22B0CA1E8(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  ObjectType = swift_getObjectType();
  *&v3[qword_27D8B6388] = a1;
  v6.receiver = v3;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

void sub_22B0CA240(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_22B0CDB68();
}

void sub_22B0CA2A0(void *a1)
{
  v1 = *((*MEMORY[0x277D85000] & *a1) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *a1) + 0x58);
  v3 = *((*MEMORY[0x277D85000] & *a1) + 0x60);
  v4 = *((*MEMORY[0x277D85000] & *a1) + 0x68);
  sub_22B0CDC70();
}

uint64_t *BaseMetricsManagerGeneric.init(coreAnalyticsEventPrefix:coreAnalyticsObserver:counterStoragePath:dateProvider:uptimeProvider:logEventDispatcher:repeatingScheduler:dailyScheduler:processLaunchEvent:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, void *a11)
{
  v12 = v11;
  v81 = a8;
  v78 = a4;
  v82 = a3;
  v79 = a2;
  v77 = a1;
  v80 = a11;
  v85 = a10;
  v86 = a9;
  v16 = *v11;
  v17 = *(*v11 + 88);
  v84 = *(v17 - 8);
  v18 = *(v84 + 64);
  v19 = MEMORY[0x28223BE20](a1);
  v76 = &v69 - v20;
  v21 = *(v16 + 80);
  v83 = *(v21 - 8);
  v22 = *(v83 + 64);
  MEMORY[0x28223BE20](v19);
  v75 = &v69 - v23;
  v88 = *(v24 + 96);
  *&aBlock = v21;
  *(&aBlock + 1) = v17;
  v91 = v88;
  v74 = type metadata accessor for BaseAnalyzerDataSource();
  v73 = *(v74 - 8);
  v25 = *(v73 + 64);
  MEMORY[0x28223BE20](v74);
  v72 = &v69 - v26;
  v27 = *(v16 + 120);
  v28 = MEMORY[0x277D84F90];
  *(v12 + v27) = 0;
  v94 = v28;
  *(v12 + v27 + 8) = 0;
  v29 = v12 + v27 + 8;
  *&v87 = v21;
  *(&v87 + 1) = v17;
  *&aBlock = v21;
  *(&aBlock + 1) = v17;
  v91 = v88;
  v30 = type metadata accessor for BaseMetricsManagerGeneric.State();
  (*(*(v30 - 8) + 32))(v29, &v94, v30);
  if (!a5)
  {
    type metadata accessor for EmptyCounterStorage();
    v40 = swift_allocObject();
    *(v40 + 16) = 0;
    type metadata accessor for CountersManager();
    v41 = swift_allocObject();
    ObjectType = swift_getObjectType();
    v70 = a6;
    v43 = a6;
    swift_unknownObjectRetain();
    v78 = sub_22B0900CC(v40, v43, a7, v41, ObjectType);
    *(v12 + *(*v12 + 128)) = 0;
    *(v12 + *(*v12 + 136)) = 0;
    v44 = v85;
    v45 = v86;
    v46 = v84;
    v47 = v81;
    goto LABEL_8;
  }

  type metadata accessor for PersistentFlatFileCounterStorage();
  swift_allocObject();
  v31 = a6;
  v32 = a6;
  swift_unknownObjectRetain();

  v33 = v89;
  v34 = sub_22B0A27F4(v78, a5, v32);
  v89 = v33;
  if (v33)
  {

    swift_unknownObjectRelease();

    swift_unknownObjectRelease_n();

    v35 = *(&v87 + 1);
    (*(v84 + 8))(v85, *(&v87 + 1));
    v36 = v87;
    (*(v83 + 8))(v86, v87);
    v37 = sub_22B0DF180();
    sub_22B0A67A4(v37);
    *&aBlock = v36;
    *(&aBlock + 1) = v35;
    v91 = v88;
    type metadata accessor for BaseMetricsManagerGeneric();
    v38 = *(*v12 + 48);
    v39 = *(*v12 + 52);
    swift_deallocPartialClassInstance();
    return v12;
  }

  else
  {
    v70 = v31;
    v48 = v34;
    type metadata accessor for CountersManager();
    v49 = swift_allocObject();
    v50 = swift_getObjectType();
    v71 = a7;
    v51 = sub_22B0900EC(v48, v32, a7, v49, v50);

    aBlock = v87;
    v91 = v88;
    type metadata accessor for BaseMetricsManagerGeneric.CountersSaveTimerDelegate();

    v53 = sub_22B0CA1E8(v52);
    v54 = *(*v12 + 128);
    *(&v54->isa + v12) = v53;
    if (qword_27D8B53D0 != -1)
    {
      goto LABEL_15;
    }

    while (1)
    {
      result = [objc_allocWithZone(MEMORY[0x277D0F920]) initWithTimeInterval:4 options:*&qword_27D8B6360];
      *(v12 + *(*v12 + 136)) = result;
      v44 = v85;
      v45 = v86;
      v46 = v84;
      v47 = v81;
      if (!result)
      {
        break;
      }

      [result setDelegate_];
      a7 = v71;
      v78 = v51;
LABEL_8:
      v56 = v12;
      v57 = v75;
      v58 = v87;
      (*(v83 + 16))(v75, v45, v87);
      v59 = v76;
      v60 = *(&v87 + 1);
      (*(v46 + 16))(v76, v44, *(&v87 + 1));
      v68 = v60;
      v61 = v72;
      v62 = v70;
      BaseAnalyzerDataSource.init(coreAnalyticsEventPrefix:dateProvider:uptimeProvider:logEventDispatcher:repeatingScheduler:dailyScheduler:countersManager:)(v77, v79, v70, a7, v47, v57, v59, v78, v72, v58, v68);
      (*(v73 + 32))(v56 + *(*v56 + 112), v61, v74);
      v63 = *(*v56 + 160);
      v64 = v62;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();

      v51 = v82;
      v63(v82);
      v12 = v56;
      if (!v80)
      {
        goto LABEL_12;
      }

      v71 = a7;
      v51 = v80;
      [v47 submitLogEvent_];
      v54 = [v47 clientQueue];
      v92 = nullsub_1;
      v93 = 0;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v91 = sub_22B0CACC8;
      *(&v91 + 1) = &block_descriptor_6;
      v65 = _Block_copy(&aBlock);

      dispatch_sync(v54, v65);

      _Block_release(v65);
      if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
      {
        v66 = [v47 clientQueue];
        v92 = nullsub_1;
        v93 = 0;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        *&v91 = sub_22B0CACC8;
        *(&v91 + 1) = &block_descriptor_9;
        v67 = _Block_copy(&aBlock);

        dispatch_sync(v66, v67);
        _Block_release(v67);

        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        (*(v84 + 8))(v85, *(&v87 + 1));
        (*(v83 + 8))(v86, v87);
        if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
        {
          return v12;
        }

        __break(1u);
LABEL_12:

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        (*(v84 + 8))(v85, *(&v87 + 1));
        (*(v83 + 8))(v86, v87);
        return v12;
      }

      __break(1u);
LABEL_15:
      swift_once();
    }

    __break(1u);
  }

  return result;
}

void sub_22B0CACF0()
{
  v1 = *v0;
  v2 = v0 + *(*v0 + 120);
  os_unfair_lock_lock(v2);
  v3 = v1[10];
  v4 = v1[11];
  v5 = v1[12];
  v6 = v1[13];
  sub_22B0CAE44((v2 + 8));
  type metadata accessor for BaseMetricsManagerGeneric.State();
  j__os_unfair_lock_unlock(v2);
}

uint64_t sub_22B0CAE44(void *a1)
{
  v2 = swift_unknownObjectRetain();
  MEMORY[0x231889140](v2);
  if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v4 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22B0DF4D0();
  }

  return sub_22B0DF500();
}

void sub_22B0CAEC4(void *a1)
{
  v2 = v1;
  [*(v2 + 56) addObserver:a1 forProtocol:&unk_283EF59E0];
  os_unfair_lock_lock((v2 + 88));
  v4 = a1;
  MEMORY[0x231889140]();
  if (*((*(v2 + 96) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 96) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v15 = *((*(v2 + 96) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22B0DF4D0();
  }

  sub_22B0DF500();
  os_unfair_lock_unlock((v2 + 88));
  v5 = *(v2 + 64);
  v21[2] = *(v2 + 48);
  v21[3] = v5;
  v22 = *(v2 + 80);
  v6 = *(v2 + 32);
  v21[0] = *(v2 + 16);
  v21[1] = v6;
  v7 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B6598, &qword_22B0E5FD0));
  sub_22B0898A8(v21, v19, &qword_27D8B65A0, &qword_22B0E5FD8);
  v8 = sub_22B0C4F88(v21, sub_22B0AD188, 0);
  os_unfair_lock_lock((v2 + 88));
  v9 = swift_unknownObjectRetain();
  MEMORY[0x231889140](v9);
  if (*((*(v2 + 96) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 96) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v16 = *((*(v2 + 96) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22B0DF4D0();
  }

  sub_22B0DF500();
  os_unfair_lock_unlock((v2 + 88));

  v10 = *(v2 + 64);
  v19[2] = *(v2 + 48);
  v19[3] = v10;
  v20 = *(v2 + 80);
  v11 = *(v2 + 32);
  v19[0] = *(v2 + 16);
  v19[1] = v11;
  v12 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B65A8, &qword_22B0E5FE0));
  sub_22B0898A8(v19, v18, &qword_27D8B65A0, &qword_22B0E5FD8);
  v13 = sub_22B0CD348(v19, 3, 0.0);
  sub_22B07D02C(v19, &qword_27D8B65A0, &qword_22B0E5FD8);
  os_unfair_lock_lock((v2 + 88));
  v14 = swift_unknownObjectRetain();
  MEMORY[0x231889140](v14);
  if (*((*(v2 + 96) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 96) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v17 = *((*(v2 + 96) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22B0DF4D0();
  }

  sub_22B0DF500();
  os_unfair_lock_unlock((v2 + 88));
}

void sub_22B0CB150(uint64_t a1)
{
  v2 = *v1;
  v3 = v1 + *(*v1 + 112);
  [*(v3 + 40) addObserver:a1 forProtocol:&unk_283EF59E0];
  sub_22B0CACF0();
  v4 = v2[10];
  v5 = v2[11];
  v6 = v2[12];
  v7 = v2[13];
  type metadata accessor for ProcessLaunchAnalyzer();
  v8 = sub_22B0AF58C(v3);
  sub_22B0CACF0();

  type metadata accessor for ProcessMemoryEventAnalyzer();
  v9 = sub_22B0A98F4(v3, 3, 0.0);
  sub_22B0CACF0();
}

uint64_t BaseMetricsManagerGeneric.deinit()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  v4 = v2[10];
  v5 = v2[11];
  v6 = v2[12];
  v7 = v2[13];
  v8 = type metadata accessor for BaseAnalyzerDataSource();
  (*(*(v8 - 8) + 8))(v1 + v3, v8);
  v9 = v1 + *(*v1 + 120);
  type metadata accessor for BaseMetricsManagerGeneric.State();
  v10 = sub_22B0DF180();
  sub_22B0A67A4(v10);

  return v1;
}

uint64_t BaseMetricsManagerGeneric.__deallocating_deinit()
{
  BaseMetricsManagerGeneric.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void *BaseMetricsManager.__allocating_init(coreAnalyticsEventPrefix:coreAnalyticsDelegate:coreAnalyticsFilters:counterStoragePath:dailySchedulerIdentifier:dailySchedulerPreferencesKey:processLaunchEvent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, void *a11)
{
  v76 = a1;
  v71 = a6;
  v67 = a5;
  v69 = a11;
  v77 = a2;
  v78 = a9;
  v73 = a10;
  v12 = sub_22B0DF9B0();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_22B0DF5C0();
  v16 = *(v70 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v70);
  v20 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v66 - v21;

  v23 = swift_allocObject();
  v24 = objc_allocWithZone(HMMCoreAnalyticsLogEventObserver);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B6368, &qword_22B0E5E58);
  v25 = sub_22B0DF4A0();

  v74 = [v24 initWithDelegate:a3 filters:v25];
  v68 = a3;
  v26 = v23;
  swift_unknownObjectRelease();

  v27 = [objc_allocWithZone(HMMLogEventDispatcher) init];
  sub_22B0DF5A0();
  v28 = v27;
  sub_22B0DF9A0();
  v29 = v70;
  (*(v16 + 16))(v20, v22, v70);
  v30 = v77;

  v31 = v76;
  v32 = sub_22B0CCF08(v15, v20, v76, v30, v28);
  (*(v16 + 8))(v22, v29);
  if (v73)
  {
    v33 = v78;
  }

  else
  {
    v33 = 0xD000000000000029;
  }

  if (v73)
  {
    v34 = v73;
  }

  else
  {
    v34 = 0x800000022B0E7CE0;
  }

  v35 = v28;
  v36 = sub_22B0CCA5C(v32, v33, v34, v31, v30, v35);

  v37 = [objc_opt_self() sharedInstance];
  v38 = [objc_opt_self() sharedInstance];
  *(v26 + 88) = 0;
  v78 = v26;
  *(v26 + 96) = MEMORY[0x277D84F90];
  v39 = v26 + 96;
  v40 = v35;

  v73 = v36;

  v72 = v32;
  if (!v71)
  {

    type metadata accessor for EmptyCounterStorage();
    v46 = swift_allocObject();
    *(v46 + 16) = 0;
    type metadata accessor for CountersManager();
    v47 = swift_allocObject();
    v48 = sub_22B0CD260(v46, v37, v38, v47, type metadata accessor for EmptyCounterStorage, &off_283EED480);
    v49 = v78;
    v78[13] = 0;
    v49[14] = 0;
    v50 = v73;
    p_aBlock = v74;
    goto LABEL_14;
  }

  v41 = v71;
  type metadata accessor for PersistentFlatFileCounterStorage();
  swift_allocObject();
  v42 = v37;

  v43 = v38;
  v44 = v75;
  v45 = sub_22B0A27F4(v67, v41, v42);
  if (v44)
  {

    sub_22B07D02C(v39, &qword_27D8B6378, &qword_22B0E5E68);

    swift_unknownObjectRelease();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B6370, &qword_22B0E5E60);
    swift_deallocPartialClassInstance();
    return v78;
  }

  else
  {
    v75 = 0;
    v52 = v45;

    type metadata accessor for CountersManager();
    v53 = swift_allocObject();
    v48 = sub_22B0CD260(v52, v42, v43, v53, type metadata accessor for PersistentFlatFileCounterStorage, &off_283EEBAB8);

    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B6380, &qword_22B0E5E70);
    v55 = objc_allocWithZone(v54);
    *&v55[qword_27D8B6388] = v48;
    v79.receiver = v55;
    v79.super_class = v54;

    v56 = objc_msgSendSuper2(&v79, sel_init);
    v78[13] = v56;
    if (qword_27D8B53D0 != -1)
    {
      goto LABEL_21;
    }

    while (1)
    {
      result = [objc_allocWithZone(MEMORY[0x277D0F920]) initWithTimeInterval:4 options:*&qword_27D8B6360];
      v78[14] = result;
      p_aBlock = v74;
      v32 = v72;
      if (!result)
      {
        break;
      }

      [result setDelegate_];
      v50 = v73;
LABEL_14:
      v58 = v77;
      v59 = v78;
      v78[2] = v76;
      v59[3] = v58;
      v59[4] = v37;
      v59[5] = v38;
      v59[6] = v40;
      v59[7] = v40;
      v59[8] = v32;
      v59[9] = v50;
      v59[10] = v48;
      v40 = v40;
      v37 = v37;
      v38 = v38;

      sub_22B0CAEC4(p_aBlock);
      v60 = v69;
      if (!v69)
      {
        goto LABEL_18;
      }

      v61 = v37;
      [v40 submitLogEvent_];
      v62 = [v40 clientQueue];
      v84 = nullsub_1;
      v85 = 0;
      p_aBlock = &aBlock;
      aBlock = MEMORY[0x277D85DD0];
      v81 = 1107296256;
      v37 = &v82;
      v82 = sub_22B0CACC8;
      v83 = &block_descriptor_12;
      v63 = _Block_copy(&aBlock);

      dispatch_sync(v62, v63);

      _Block_release(v63);
      if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
      {
        v64 = [v40 clientQueue];
        v84 = nullsub_1;
        v85 = 0;
        aBlock = MEMORY[0x277D85DD0];
        v81 = 1107296256;
        v82 = sub_22B0CACC8;
        v83 = &block_descriptor_15;
        v65 = _Block_copy(&aBlock);

        dispatch_sync(v64, v65);

        swift_unknownObjectRelease();
        _Block_release(v65);

        if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
        {
          return v78;
        }

        __break(1u);
LABEL_18:

        swift_unknownObjectRelease();
        return v78;
      }

      __break(1u);
LABEL_21:
      swift_once();
    }

    __break(1u);
  }

  return result;
}

void *BaseMetricsManager.init(coreAnalyticsEventPrefix:coreAnalyticsDelegate:coreAnalyticsFilters:counterStoragePath:dailySchedulerIdentifier:dailySchedulerPreferencesKey:processLaunchEvent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, void *a11)
{
  v79 = a1;
  v70 = a5;
  v80 = a2;
  v72 = a11;
  v73 = a6;
  v74 = a10;
  v12 = sub_22B0DF9B0();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22B0DF5C0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v68 - v22;

  v24 = objc_allocWithZone(HMMCoreAnalyticsLogEventObserver);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B6368, &qword_22B0E5E58);
  v25 = sub_22B0DF4A0();

  v26 = [v24 initWithDelegate:a3 filters:v25];
  v71 = a3;
  swift_unknownObjectRelease();

  v27 = [objc_allocWithZone(HMMLogEventDispatcher) init];
  sub_22B0DF5A0();
  v28 = v27;
  sub_22B0DF9A0();
  (*(v17 + 16))(v21, v23, v16);
  v29 = v80;

  v30 = v79;
  v31 = sub_22B0CCF08(v15, v21, v79, v29, v28);
  (*(v17 + 8))(v23, v16);
  if (v74)
  {
    v32 = v77;
  }

  else
  {
    v32 = 0xD000000000000029;
  }

  if (v74)
  {
    v33 = v74;
  }

  else
  {
    v33 = 0x800000022B0E7CE0;
  }

  v34 = v28;
  v35 = sub_22B0CCA5C(v31, v32, v33, v30, v29, v34);

  p_aBlock = [objc_opt_self() sharedInstance];
  v37 = objc_opt_self();
  v38 = v78;
  v39 = [v37 sharedInstance];
  v38[12] = MEMORY[0x277D84F90];
  *(v38 + 22) = 0;
  v40 = v34;
  v74 = v31;

  v77 = v35;

  v75 = v26;
  if (!v73)
  {

    type metadata accessor for EmptyCounterStorage();
    v47 = swift_allocObject();
    *(v47 + 16) = 0;
    type metadata accessor for CountersManager();
    v48 = swift_allocObject();
    v49 = p_aBlock;
    v50 = sub_22B0CD260(v47, p_aBlock, v39, v48, type metadata accessor for EmptyCounterStorage, &off_283EED480);
    v38[13] = 0;
    v38[14] = 0;
    v51 = v74;
    v52 = v77;
    goto LABEL_14;
  }

  v41 = v73;
  v69 = v40;
  type metadata accessor for PersistentFlatFileCounterStorage();
  swift_allocObject();
  v42 = p_aBlock;

  v43 = v39;
  v44 = v76;
  v45 = sub_22B0A27F4(v70, v41, v42);
  if (v44)
  {

    v46 = v69;

    sub_22B07D02C((v38 + 12), &qword_27D8B6378, &qword_22B0E5E68);

    swift_unknownObjectRelease();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B6370, &qword_22B0E5E60);
    swift_deallocPartialClassInstance();
    return v38;
  }

  else
  {
    v70 = v39;
    v76 = 0;
    v53 = v45;

    type metadata accessor for CountersManager();
    v54 = swift_allocObject();
    v50 = sub_22B0CD260(v53, v42, v43, v54, type metadata accessor for PersistentFlatFileCounterStorage, &off_283EEBAB8);

    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B6380, &qword_22B0E5E70);
    v56 = objc_allocWithZone(v55);
    *&v56[qword_27D8B6388] = v50;
    v81.receiver = v56;
    v81.super_class = v55;

    v38[13] = objc_msgSendSuper2(&v81, sel_init);
    if (qword_27D8B53D0 != -1)
    {
      goto LABEL_21;
    }

    while (1)
    {
      result = [objc_allocWithZone(MEMORY[0x277D0F920]) initWithTimeInterval:4 options:*&qword_27D8B6360];
      v38[14] = result;
      v52 = v77;
      if (!result)
      {
        break;
      }

      v49 = p_aBlock;
      [result setDelegate_];
      v51 = v74;
      v40 = v69;
      v39 = v70;
LABEL_14:
      v58 = v80;
      v38[2] = v79;
      v38[3] = v58;
      v38[4] = v49;
      v38[5] = v39;
      v38[6] = v40;
      v38[7] = v40;
      v38[8] = v51;
      v38[9] = v52;
      v38[10] = v50;
      v59 = *(*v38 + 160);
      v60 = v40;
      v61 = v49;
      v62 = v39;

      v63 = v75;
      v59(v75);
      v38 = v72;
      if (!v72)
      {
        goto LABEL_18;
      }

      [v60 submitLogEvent_];
      v64 = [v60 clientQueue];
      v86 = nullsub_1;
      v87 = 0;
      p_aBlock = &aBlock;
      aBlock = MEMORY[0x277D85DD0];
      v83 = 1107296256;
      v50 = &v84;
      v84 = sub_22B0CACC8;
      v85 = &block_descriptor_18;
      v65 = _Block_copy(&aBlock);

      dispatch_sync(v64, v65);

      _Block_release(v65);
      if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
      {
        v66 = [v60 clientQueue];
        v86 = nullsub_1;
        v87 = 0;
        aBlock = MEMORY[0x277D85DD0];
        v83 = 1107296256;
        v84 = sub_22B0CACC8;
        v85 = &block_descriptor_21;
        v63 = _Block_copy(&aBlock);

        dispatch_sync(v66, v63);

        swift_unknownObjectRelease();
        _Block_release(v63);

        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
        v38 = v78;
        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
          return v38;
        }

        __break(1u);
LABEL_18:

        swift_unknownObjectRelease();
        return v78;
      }

      __break(1u);
LABEL_21:
      swift_once();
    }

    __break(1u);
  }

  return result;
}

uint64_t BaseMetricsManager.deinit()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v8 = *(v0 + 72);
  v7 = *(v0 + 80);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_22B07D02C(v0 + 96, &qword_27D8B6378, &qword_22B0E5E68);

  return v0;
}

uint64_t BaseMetricsManager.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v8 = *(v0 + 72);
  v7 = *(v0 + 80);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_22B07D02C(v0 + 96, &qword_27D8B6378, &qword_22B0E5E68);

  return MEMORY[0x2821FE8D8](v0, 120, 7);
}

void sub_22B0CC708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t *a10)
{
  v10 = *a10;

  v11 = *a9;

  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_22B0CC784(int *a1)
{
  v5 = (a1 + *a1);
  v2 = a1[1];
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22B0CC86C;

  return v5();
}

uint64_t sub_22B0CC86C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_22B0CC964(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B0CE58C;

  return v7(a1);
}

uint64_t sub_22B0CCA5C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = type metadata accessor for RunDatePreferencesStorage.State(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for RunDatePreferencesStorage(0);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = swift_allocObject();
  v20 = (v19 + OBJC_IVAR____TtC14HomeKitMetrics25RunDatePreferencesStorage_mutex);
  v21 = sub_22B0DF0E0();
  (*(*(v21 - 8) + 56))(v15, 1, 1, v21);
  *v20 = 0;

  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5C40, &unk_22B0E2DC0) + 28);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5C48, &qword_22B0E4B90);
  bzero(v20 + v22, *(*(v23 - 8) + 64));
  sub_22B0A7744(v15, v20 + v22);
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  v24 = objc_opt_self();

  v25 = [v24 sharedInstance];

  return sub_22B0CCC1C(a1, v19, v25, a4, a5, a6);
}

uint64_t sub_22B0CCC1C(char *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5C50, &qword_22B0E4B98);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_22B0E4950;
  *(v12 + 32) = 0x4072C00000000000;
  *(v12 + 40) = 0xD000000000000014;
  *(v12 + 48) = 0x800000022B0E72F0;
  *(v12 + 56) = 0;
  v13 = MEMORY[0x277D84F90];
  *(v12 + 64) = MEMORY[0x277D84F90];
  *(v12 + 72) = v13;
  *(v12 + 144) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5C58, &unk_22B0E4BA0);
  *(v12 + 152) = &protocol witness table for CoalescingRepeatingScheduler<A>;
  *(v12 + 80) = a2;
  *(v12 + 88) = a3;
  *(v12 + 96) = a4;
  *(v12 + 104) = a5;
  *(v12 + 112) = a6;
  *(v12 + 120) = a1;
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D8B5C60, &unk_22B0E4BB0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  v19 = *(*v18 + 128);
  v20 = sub_22B0DF990();
  v21 = *(*(v20 - 8) + 56);
  v21(v18 + v19, 1, 1, v20);
  v21(v18 + *(*v18 + 136), 1, 1, v20);
  *(v18 + 16) = 0xD000000000000014;
  *(v18 + 24) = 0x800000022B0E72F0;
  *(v18 + 32) = 0xD000000000000014;
  *(v18 + 40) = 0x800000022B0E72F0;
  *(v18 + 48) = &unk_22B0E6090;
  *(v18 + 56) = v14;
  *(v18 + 64) = xmmword_22B0E4950;
  v22 = &a1[*(*a1 + 136)];
  swift_bridgeObjectRetain_n();

  v28 = a3;
  v23 = a6;
  swift_retain_n();
  os_unfair_lock_lock(v22);
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5F20, &unk_22B0E54F0) + 28);
  sub_22B0C5BF8(v22 + v24, 0xD000000000000014, 0x800000022B0E72F0);
  os_unfair_lock_unlock(v22);
  os_unfair_lock_lock(v22);
  sub_22B0C5F44((&v22->_os_unfair_lock_opaque + v24), v18, a1);
  os_unfair_lock_unlock(v22);

  return v12;
}

uint64_t sub_22B0CCF08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a4;
  v35 = a5;
  v33 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5F10, &unk_22B0E54E0);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5C58, &unk_22B0E4BA0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  v16 = (v15 + *(*v15 + 136));
  *v11 = 1;
  v17 = MEMORY[0x277D84F90];
  *(v11 + 1) = MEMORY[0x277D84F90];
  *(v11 + 2) = 0;
  v18 = *(v8 + 52);
  v19 = sub_22B0DF990();
  (*(*(v19 - 8) + 56))(&v11[v18], 1, 1, v19);
  *&v11[*(v8 + 56)] = v17;
  *v16 = 0;
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5F20, &unk_22B0E54F0) + 28);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D8B5F28, &unk_22B0E6120);
  bzero(v16 + v20, *(*(v21 - 8) + 64));
  sub_22B0CE508(v11, v16 + v20, &unk_27D8B5F10, &unk_22B0E54E0);
  v22 = *(*v15 + 96);
  v23 = sub_22B0DF9B0();
  v24 = *(v23 - 8);
  (*(v24 + 16))(v15 + v22, a1, v23);
  v25 = *(*v15 + 104);
  v26 = sub_22B0DF5C0();
  v27 = *(v26 - 8);
  (*(v27 + 16))(v15 + v25, a2, v26);
  v28 = (v15 + *(*v15 + 112));
  v29 = v34;
  *v28 = v33;
  v28[1] = v29;
  *(v15 + *(*v15 + 120)) = v35;
  v30 = *(*v15 + 128);
  sub_22B076354(&unk_2813E9930, MEMORY[0x277D85928]);
  sub_22B0DFCB0();
  (*(v27 + 8))(a2, v26);
  (*(v24 + 8))(a1, v23);
  return v15;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B0CD260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v14 = a5(0);
  v15 = a6;
  *&v13 = a1;
  *(a4 + 80) = 0;
  v11 = MEMORY[0x277D84F98];
  *(a4 + 88) = MEMORY[0x277D84F98];
  *(a4 + 96) = v11;
  *(a4 + 16) = [objc_allocWithZone(HMMDailyPartitionProvider) initWithDateProvider_];
  sub_22B0781A8(&v13, a4 + 24);
  *(a4 + 64) = a2;
  *(a4 + 72) = a3;
  return a4;
}

void *sub_22B0CD348(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = MEMORY[0x277D85000];
  v10 = v3 + *((*MEMORY[0x277D85000] & *v3) + 0x78);
  v11 = *(a1 + 48);
  *(v10 + 2) = *(a1 + 32);
  *(v10 + 3) = v11;
  *(v10 + 8) = *(a1 + 64);
  v12 = *(a1 + 16);
  *v10 = *a1;
  *(v10 + 1) = v12;
  *(v3 + *((*v9 & *v3) + 0x90)) = a2;
  v13 = *(a1 + 64);
  type metadata accessor for NamedGroupSpecifier();
  v14 = swift_allocObject();
  *(v14 + 16) = 0xD000000000000018;
  *(v14 + 24) = 0x800000022B0E7410;
  sub_22B0898A8(a1, v42, &qword_27D8B65A0, &qword_22B0E5FD8);
  v15 = sub_22B08C5E8(v14);

  *(v4 + *((*v9 & *v4) + 0x70)) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B65B0, &qword_22B0E5FE8);
  swift_allocObject();
  sub_22B0898A8(a1, v42, &qword_27D8B65A0, &qword_22B0E5FD8);
  *(v4 + *((*v9 & *v4) + 0x80)) = sub_22B0C44A4(a1, 0x94049F30F7200000, 97);
  *(v4 + *((*v9 & *v4) + 0x88)) = [objc_allocWithZone(MEMORY[0x277D0F810]) init];
  v41.receiver = v4;
  v41.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v41, sel_init);
  v17 = *(a1 + 40);
  type metadata accessor for ProcessMemorySampleLogEvent();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = v16;
  [v17 addObserver:v19 forEventClass:ObjCClassFromMetadata];
  type metadata accessor for ProcessMemorySummaryLogEvent();
  [v17 addObserver:v19 forEventClass:swift_getObjCClassFromMetadata()];
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v21 = *(a1 + 56);

  os_unfair_lock_lock((v21 + 56));
  v22 = *(v21 + 64);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v21 + 64) = v22;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v38 = v22[2];

    v39 = sub_22B0831BC(0, v38 + 1, 1, v22);
    v40 = *(v21 + 64);
    *(v21 + 64) = v39;

    v22 = *(v21 + 64);
  }

  v25 = v22[2];
  v24 = v22[3];
  if (v25 >= v24 >> 1)
  {
    v22 = sub_22B0831BC((v24 > 1), v25 + 1, 1, v22);
    *(v21 + 64) = v22;
  }

  v22[2] = v25 + 1;
  v26 = *(v21 + 64) + 48 * v25;
  strcpy((v26 + 32), "MemoryEvents");
  *(v26 + 45) = 0;
  *(v26 + 46) = -5120;
  *(v26 + 48) = xmmword_22B0E5E40;
  *(v26 + 64) = &unk_22B0E5FF8;
  *(v26 + 72) = v20;
  os_unfair_lock_unlock((v21 + 56));

  if (a2)
  {
    v27 = *(v19 + *((*v9 & *v19) + 0x88));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5888, &unk_22B0E3990);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22B0E4D80;
    v29 = v27;
    *(inited + 32) = sub_22B0DF620();
    sub_22B0A9038(inited);
    swift_setDeallocating();
    v30 = *(inited + 16);
    swift_arrayDestroy();
    sub_22B07BA9C(0, &qword_27D8B5860, 0x277CCABB0);
    sub_22B0A9D8C();
    v31 = sub_22B0DF5F0();

    [v29 addObserver:v19 debounceInterval:v31 events:a3];
  }

  if ((a2 & 2) != 0)
  {
    v32 = *(v19 + *((*v9 & *v19) + 0x88));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5888, &unk_22B0E3990);
    v33 = swift_initStackObject();
    *(v33 + 16) = xmmword_22B0E4D80;
    v34 = v32;
    *(v33 + 32) = sub_22B0DF620();
    sub_22B0A9038(v33);
    swift_setDeallocating();
    v35 = *(v33 + 16);
    swift_arrayDestroy();
    sub_22B07BA9C(0, &qword_27D8B5860, 0x277CCABB0);
    sub_22B0A9D8C();
    v36 = sub_22B0DF5F0();

    [v34 addObserver:v19 debounceInterval:v36 events:a3];

LABEL_11:
    [*(v19 + *((*v9 & *v19) + 0x88)) start];
    return v19;
  }

  if (a2)
  {
    goto LABEL_11;
  }

  return v19;
}

uint64_t sub_22B0CD900(uint64_t a1)
{
  v3 = *(a1 + 80);
  v5 = *(a1 + 96);
  result = type metadata accessor for BaseAnalyzerDataSource();
  if (v2 <= 0x3F)
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

uint64_t type metadata accessor for BaseMetricsManager()
{
  result = qword_27D8B64F8;
  if (!qword_27D8B64F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22B0CDB2C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_22B0CDB68()
{
  v1 = *(v0 + qword_27D8B6388);
  os_unfair_lock_lock((v1 + 80));
  v2 = *(v1 + 88);

  os_unfair_lock_unlock((v1 + 80));
  v13 = v2;
  v10 = sub_22B0913BC;
  v11 = &v12;
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1((v1 + 24), v3);
  v8[2] = sub_22B0CDCA0;
  v8[3] = &v9;
  v5 = *(v4 + 32);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B6590, &qword_22B0E3E10);
  v5(&v14, sub_22B0CDCBC, v8, v6, v3, v4);
}

uint64_t sub_22B0CDCD8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22B0A78E4;

  return sub_22B0C4964(a1, v1);
}

uint64_t sub_22B0CDD70(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22B0A78E4;

  return sub_22B0C46F8(a1, v1);
}

uint64_t sub_22B0CDE08(uint64_t a1)
{
  v4 = *(sub_22B0DF990() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22B0A78E4;

  return sub_22B0C6A84(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_22B0CDF00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B65C0, &unk_22B0E6018);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B0CDF70(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22B0A78E4;

  return sub_22B0C9550(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_22B0CE03C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22B0A78E4;

  return sub_22B0C527C(a1, v1);
}

uint64_t sub_22B0CE0D4(char a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22B0A5698;

  return sub_22B0C24D8(a1, v1);
}

uint64_t sub_22B0CE16C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22B0A78E4;

  return sub_22B0C3468(a1, a2, v6, v7);
}

uint64_t sub_22B0CE224(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_22B0A78E4;

  return sub_22B0C38BC(a1, a2, v6, v7, v8);
}

uint64_t sub_22B0CE2E8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22B0A78E4;

  return sub_22B0C4048(a1, a2, v6, v7);
}

uint64_t sub_22B0CE3A0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 80);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22B0A78E4;

  return sub_22B0C3F54(v2, v3, v0 + 32, v4);
}

uint64_t sub_22B0CE44C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_22B0A78E4;

  return sub_22B0A55A0(v2, v3, v4, v5, v6);
}

uint64_t sub_22B0CE508(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_22B0CE5D0(uint64_t a1, uint64_t a2)
{
  v70 = a1;
  v71 = a2;
  v85 = *MEMORY[0x277D85DE8];
  v62 = *v2;
  v65 = sub_22B0DEF00();
  v64 = *(v65 - 8);
  v3 = *(v64 + 64);
  MEMORY[0x28223BE20](v65);
  v63 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B65D0, &unk_22B0E6180);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v80 = &v62 - v7;
  v75 = sub_22B0DF160();
  v78 = *(v75 - 8);
  v8 = *(v78 + 64);
  MEMORY[0x28223BE20](v75);
  v69 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_22B0DF010();
  v77 = *(v79 - 8);
  v10 = *(v77 + 64);
  MEMORY[0x28223BE20](v79);
  v82 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_22B0DEFF0();
  v74 = *(v76 - 8);
  v12 = *(v74 + 64);
  MEMORY[0x28223BE20](v76);
  v81 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_22B0DEFD0();
  v14 = *(v73 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v73);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22B0DEFE0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_22B0DF060();
  v23 = *(v68 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v68);
  v27 = &v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v62 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v62 - v31;
  v33 = *MEMORY[0x277CC9460];
  v34 = *(v19 + 104);
  v66 = v22;
  v35 = v22;
  v36 = v75;
  v34(v35, v33, v18);
  v37 = v78;
  v38 = *MEMORY[0x277CC9458];
  v39 = *(v14 + 104);
  v67 = v17;
  v39(v17, v38, v73);
  v40 = v80;
  (*(v74 + 104))(v81, *MEMORY[0x277CC9468], v76);
  (*(v77 + 104))(v82, *MEMORY[0x277CC9480], v79);
  sub_22B0DF150();
  if ((*(v37 + 48))(v40, 1, v36) == 1)
  {
    __break(1u);
  }

  v41 = OBJC_IVAR____TtC14HomeKitMetrics15FlatFileManager_dailyPartitionDateFormat;
  (*(v37 + 32))(v69, v40, v36);
  sub_22B0DF000();
  sub_22B0DF030();
  v42 = *(v23 + 8);
  v43 = v68;
  v42(v27, v68);
  sub_22B0DF040();
  v42(v30, v43);
  v44 = v72;
  v82 = v41;
  v45 = v42;
  sub_22B0DF020();
  v42(v32, v43);
  v46 = [objc_opt_self() defaultManager];
  v84 = 0;
  v47 = sub_22B0DF300();
  v48 = [v46 fileExistsAtPath:v47 isDirectory:&v84];

  if (!v48)
  {
    goto LABEL_6;
  }

  if ((v84 & 1) == 0)
  {
    v49 = sub_22B0DF300();
    v83 = 0;
    v50 = [v46 removeItemAtPath:v49 error:&v83];

    v51 = v83;
    if (!v50)
    {
      goto LABEL_9;
    }

    v52 = v83;
LABEL_6:
    v53 = sub_22B0DF300();
    v83 = 0;
    v54 = [v46 createDirectoryAtPath:v53 withIntermediateDirectories:1 attributes:0 error:&v83];

    v51 = v83;
    if (v54)
    {
      v55 = v83;
      goto LABEL_8;
    }

LABEL_9:
    v57 = v51;

    sub_22B0DEE80();

    swift_willThrow();
    v45(&v82[v44], v43);
    v58 = *(*v44 + 48);
    v59 = *(*v44 + 52);
    swift_deallocPartialClassInstance();
    goto LABEL_10;
  }

LABEL_8:
  v56 = v63;
  sub_22B0DEE90();

  (*(v64 + 32))(v44 + OBJC_IVAR____TtC14HomeKitMetrics15FlatFileManager_directoryURL, v56, v65);
LABEL_10:
  v60 = *MEMORY[0x277D85DE8];
  return v44;
}

void *sub_22B0CEDD0()
{
  v74[3] = *MEMORY[0x277D85DE8];
  v65 = sub_22B0DF060();
  v1 = *(v65 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v65);
  v64 = v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5670, &unk_22B0E32C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v56 - v6;
  v73 = sub_22B0DF0E0();
  v58 = *(v73 - 8);
  v8 = *(v58 + 64);
  MEMORY[0x28223BE20](v73);
  v60 = v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22B0DEF00();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v68 = v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_opt_self() defaultManager];
  v66 = v0;
  v15 = sub_22B0DEEB0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B65C8, &unk_22B0E6170);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_22B0E4000;
  v17 = *MEMORY[0x277CBE8A8];
  *(v16 + 32) = *MEMORY[0x277CBE8A8];
  type metadata accessor for URLResourceKey(0);
  v18 = v17;
  v19 = sub_22B0DF4A0();

  v74[0] = 0;
  v20 = [v14 contentsOfDirectoryAtURL:v15 includingPropertiesForKeys:v19 options:0 error:v74];

  v21 = v74[0];
  if (!v20)
  {
    v53 = v74[0];
    v54 = sub_22B0DEE80();

    swift_willThrow();
LABEL_22:
    result = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

  v57 = v14;
  v22 = sub_22B0DF4B0();
  v23 = v21;

  v24 = *(v22 + 16);
  if (!v24)
  {

    goto LABEL_22;
  }

  v27 = *(v11 + 16);
  v26 = v11 + 16;
  v25 = v27;
  v62 = OBJC_IVAR____TtC14HomeKitMetrics15FlatFileManager_dailyPartitionDateFormat;
  v28 = (*(v26 + 64) + 32) & ~*(v26 + 64);
  v56[1] = v22;
  v29 = v22 + v28;
  v30 = *(v26 + 56);
  v70 = (v26 - 8);
  v71 = v30;
  v61 = (v1 + 16);
  v72 = (v58 + 56);
  v59 = (v58 + 32);
  v67 = MEMORY[0x277D84F90];
  v31 = v68;
  v63 = v26;
  v69 = v27;
  do
  {
    v25(v31, v29, v10);
    sub_22B0DEEA0();
    if ((sub_22B0DF3E0() & 1) == 0)
    {
      (*v70)(v31, v10);

LABEL_11:
      (*v72)(v7, 1, 1, v73);
      sub_22B07D02C(v7, &unk_27D8B5670, &unk_22B0E32C0);
      goto LABEL_12;
    }

    if ((sub_22B0DF3F0() & 1) == 0)
    {
      (*v70)(v31, v10);

      v25 = v69;
      goto LABEL_11;
    }

    v32 = v10;
    sub_22B0DF390();
    v33 = sub_22B0DF3B0();
    if (__OFSUB__(0, sub_22B0DF390()))
    {
      __break(1u);
LABEL_25:
      __break(1u);
    }

    if (sub_22B0DF3B0() >> 14 < v33 >> 14)
    {
      goto LABEL_25;
    }

    v34 = sub_22B0DF410();
    v36 = v35;
    v38 = v37;
    v39 = v7;
    v41 = v40;

    v42 = MEMORY[0x231889020](v34, v36, v38, v41);
    v44 = v43;
    v7 = v39;

    v74[0] = v42;
    v74[1] = v44;
    (*v61)(v64, v66 + v62, v65);
    sub_22B0D0764();
    sub_22B0DF0F0();
    v10 = v32;
    (*v70)(v68, v32);
    v45 = v73;
    (*v72)(v39, 0, 1, v73);
    v46 = *v59;
    (*v59)(v60, v39, v45);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v69;
    if (isUniquelyReferenced_nonNull_native)
    {
      v48 = v67;
    }

    else
    {
      v48 = sub_22B082E70(0, v67[2] + 1, 1, v67);
    }

    v50 = v48[2];
    v49 = v48[3];
    if (v50 >= v49 >> 1)
    {
      v48 = sub_22B082E70(v49 > 1, v50 + 1, 1, v48);
    }

    v48[2] = v50 + 1;
    v51 = (*(v58 + 80) + 32) & ~*(v58 + 80);
    v67 = v48;
    v46(v48 + v51 + *(v58 + 72) * v50, v60, v73);
    v31 = v68;
LABEL_12:
    v29 += v71;
    --v24;
  }

  while (v24);

  result = v67;
LABEL_23:
  v55 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22B0CF560(uint64_t (*a1)(char *), uint64_t a2)
{
  v119 = a1;
  v120 = a2;
  v132[2] = *MEMORY[0x277D85DE8];
  v116 = sub_22B0DF0E0();
  v3 = *(v116 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v116);
  v121 = v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_22B0DF060();
  v130 = *(v113 - 8);
  v6 = *(v130 + 64);
  MEMORY[0x28223BE20](v113);
  v112 = v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5670, &unk_22B0E32C0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v127 = v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v128 = v102 - v12;
  v13 = sub_22B0DEF00();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v109 = v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = v102 - v18;
  v20 = [objc_opt_self() defaultManager];
  v114 = v2;
  v21 = sub_22B0DEEB0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B65C8, &unk_22B0E6170);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_22B0E4000;
  v23 = *MEMORY[0x277CBE8A8];
  *(v22 + 32) = *MEMORY[0x277CBE8A8];
  type metadata accessor for URLResourceKey(0);
  v24 = v23;
  v25 = sub_22B0DF4A0();

  v132[0] = 0;
  v115 = v20;
  v26 = [v20 contentsOfDirectoryAtURL:v21 includingPropertiesForKeys:v25 options:0 error:v132];

  v27 = v132[0];
  if (!v26)
  {
    v88 = v132[0];
    v32 = sub_22B0DEE80();

    swift_willThrow();
    if (qword_2813E9AA8 != -1)
    {
      goto LABEL_42;
    }

    goto LABEL_36;
  }

  v28 = sub_22B0DF4B0();
  v29 = v27;

  v31 = v28;
  v32 = *(v28 + 16);
  if (!v32)
  {
LABEL_34:

    goto LABEL_39;
  }

  v122 = 0;
  v34 = *(v14 + 16);
  v33 = v14 + 16;
  v129 = v34;
  v35 = *(v33 + 64);
  v111 = OBJC_IVAR____TtC14HomeKitMetrics15FlatFileManager_dailyPartitionDateFormat;
  v102[1] = v31;
  v36 = v31 + ((v35 + 32) & ~v35);
  v37 = *(v33 + 56);
  v125 = (v3 + 56);
  v126 = v37;
  v110 = (v130 + 16);
  v117 = (v3 + 8);
  v118 = (v3 + 32);
  v130 = v33;
  v123 = (v33 - 8);
  v124 = (v3 + 48);
  *&v30 = 136315138;
  v104 = v30;
  *&v30 = 136315394;
  v103 = v30;
  v38 = v116;
  v39 = v121;
  v131 = v13;
  v34(v19, v36, v13);
  while (1)
  {
    v41 = sub_22B0DEEA0();
    v43 = v42;
    if ((sub_22B0DF3E0() & 1) == 0)
    {
      v52 = 1;
      v53 = v127;
      v45 = v128;
      goto LABEL_18;
    }

    v44 = sub_22B0DF3F0();
    v45 = v128;
    if (v44)
    {
      break;
    }

    v52 = 1;
LABEL_17:
    v53 = v127;
LABEL_18:
    (*v125)(v45, v52, 1, v38);
    sub_22B07D9F0(v45, v53);
    if ((*v124)(v53, 1, v38) == 1)
    {

      sub_22B07D02C(v45, &unk_27D8B5670, &unk_22B0E32C0);
      v40 = v131;
      (*v123)(v19, v131);
      sub_22B07D02C(v53, &unk_27D8B5670, &unk_22B0E32C0);
      goto LABEL_5;
    }

    (*v118)(v39, v53, v38);
    if ((v119(v39) & 1) == 0)
    {

      (*v117)(v39, v38);
      goto LABEL_26;
    }

    v54 = sub_22B0DEEB0();
    v132[0] = 0;
    v55 = [v115 removeItemAtURL:v54 error:v132];

    if (v55)
    {
      v56 = qword_2813E9AA8;
      v57 = v132[0];
      if (v56 != -1)
      {
        swift_once();
      }

      v58 = sub_22B0DF1B0();
      __swift_project_value_buffer(v58, qword_2813EBE90);

      v59 = sub_22B0DF190();
      v60 = sub_22B0DF6A0();

      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = v45;
        v63 = swift_slowAlloc();
        v132[0] = v63;
        *v61 = v104;
        v64 = sub_22B07B428(v41, v43, v132);

        *(v61 + 4) = v64;
        _os_log_impl(&dword_22B074000, v59, v60, "Removed counter partition file %s", v61, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v63);
        MEMORY[0x23188A520](v63, -1, -1);
        v65 = v61;
        v38 = v116;
        MEMORY[0x23188A520](v65, -1, -1);

        v39 = v121;
        (*v117)(v121, v38);
        v66 = v62;
      }

      else
      {

        v39 = v121;
        (*v117)(v121, v38);
LABEL_26:
        v66 = v45;
      }

      sub_22B07D02C(v66, &unk_27D8B5670, &unk_22B0E32C0);
      v40 = v131;
      (*v123)(v19, v131);
      goto LABEL_5;
    }

    v67 = v132[0];

    v68 = sub_22B0DEE80();

    swift_willThrow();
    if (qword_2813E9AA8 != -1)
    {
      swift_once();
    }

    v122 = 0;
    v69 = sub_22B0DF1B0();
    __swift_project_value_buffer(v69, qword_2813EBE90);
    v70 = v109;
    v129(v109, v19, v131);
    v71 = v68;
    v72 = sub_22B0DF190();
    v73 = sub_22B0DF690();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v132[0] = v108;
      *v74 = v103;
      v106 = v72;
      v75 = sub_22B0DEEF0();
      v77 = v76;
      v105 = v73;
      v78 = *v123;
      (*v123)(v70, v131);
      v79 = sub_22B07B428(v75, v77, v132);

      *(v74 + 4) = v79;
      *(v74 + 12) = 2112;
      v80 = v68;
      v81 = _swift_stdlib_bridgeErrorToNSError();
      *(v74 + 14) = v81;
      v82 = v107;
      *v107 = v81;
      v83 = v106;
      _os_log_impl(&dword_22B074000, v106, v105, "Failed to remove partition file %s: %@", v74, 0x16u);
      sub_22B07D02C(v82, &qword_27D8B5660, &qword_22B0E54A0);
      MEMORY[0x23188A520](v82, -1, -1);
      v84 = v108;
      __swift_destroy_boxed_opaque_existential_0(v108);
      MEMORY[0x23188A520](v84, -1, -1);
      v85 = v74;
      v38 = v116;
      MEMORY[0x23188A520](v85, -1, -1);

      v39 = v121;
      (*v117)(v121, v38);
      sub_22B07D02C(v128, &unk_27D8B5670, &unk_22B0E32C0);
      v40 = v131;
      v78(v19, v131);
    }

    else
    {

      v86 = *v123;
      v87 = v131;
      (*v123)(v70, v131);
      v39 = v121;
      (*v117)(v121, v38);
      sub_22B07D02C(v45, &unk_27D8B5670, &unk_22B0E32C0);
      v86(v19, v87);
      v40 = v87;
    }

LABEL_5:
    v36 += v126;
    if (!--v32)
    {
      goto LABEL_34;
    }

    v129(v19, v36, v40);
  }

  sub_22B0DF390();
  v46 = sub_22B0DF3B0();
  if (!__OFSUB__(0, sub_22B0DF390()))
  {
    if (sub_22B0DF3B0() >> 14 < v46 >> 14)
    {
      goto LABEL_41;
    }

    v47 = sub_22B0DF410();
    v48 = MEMORY[0x231889020](v47);
    v50 = v49;

    v132[0] = v48;
    v132[1] = v50;
    (*v110)(v112, v114 + v111, v113);
    sub_22B0D0764();
    v51 = v122;
    sub_22B0DF0F0();
    if (v51)
    {

      v122 = 0;
      v52 = 1;
    }

    else
    {
      v122 = 0;
      v52 = 0;
    }

    v38 = v116;
    v39 = v121;
    goto LABEL_17;
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  swift_once();
LABEL_36:
  v89 = sub_22B0DF1B0();
  __swift_project_value_buffer(v89, qword_2813EBE90);

  v90 = v32;
  v91 = sub_22B0DF190();
  v92 = sub_22B0DF690();

  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v132[0] = v95;
    *v93 = 136315394;
    v96 = sub_22B0DEEF0();
    v98 = sub_22B07B428(v96, v97, v132);

    *(v93 + 4) = v98;
    *(v93 + 12) = 2112;
    v99 = v32;
    v100 = _swift_stdlib_bridgeErrorToNSError();
    *(v93 + 14) = v100;
    *v94 = v100;
    _os_log_impl(&dword_22B074000, v91, v92, "Failed to get list of partitions in %s: %@", v93, 0x16u);
    sub_22B07D02C(v94, &qword_27D8B5660, &qword_22B0E54A0);
    MEMORY[0x23188A520](v94, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v95);
    MEMORY[0x23188A520](v95, -1, -1);
    MEMORY[0x23188A520](v93, -1, -1);
  }

  else
  {
  }

LABEL_39:
  v101 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22B0D0368()
{
  v0 = sub_22B0DEF00();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22B0DF050();
  v8[0] = 0x2D796C696144;
  v8[1] = 0xE600000000000000;
  MEMORY[0x231889070](v5);

  MEMORY[0x231889070](0x7265746E756F632ELL, 0xE900000000000073);

  sub_22B0DEEC0();

  v6 = sub_22B0DEF10();
  (*(v1 + 8))(v4, v0);
  return v6;
}

uint64_t sub_22B0D04FC()
{
  v1 = OBJC_IVAR____TtC14HomeKitMetrics15FlatFileManager_dailyPartitionDateFormat;
  v2 = sub_22B0DF060();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14HomeKitMetrics15FlatFileManager_directoryURL;
  v4 = sub_22B0DEF00();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t type metadata accessor for FlatFileManager()
{
  result = qword_2813EA758;
  if (!qword_2813EA758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22B0D062C()
{
  result = sub_22B0DF060();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_22B0DEF00();
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

unint64_t sub_22B0D0764()
{
  result = qword_2813EAD88;
  if (!qword_2813EAD88)
  {
    sub_22B0DF060();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813EAD88);
  }

  return result;
}

uint64_t MinimumTimeIntervalRadarRequestFilterPreferencesStorage.__allocating_init(lastRequestDateKey:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  MinimumTimeIntervalRadarRequestFilterPreferencesStorage.init(lastRequestDateKey:)(a1, a2);
  return v7;
}

uint64_t MinimumTimeIntervalRadarRequestFilterPreferencesStorage.init(lastRequestDateKey:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5670, &unk_22B0E32C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v20 - v7;
  v9 = sub_22B0DF0E0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v14 = objc_opt_self();

  v15 = [v14 standardUserDefaults];
  v16 = sub_22B0DF300();

  v17 = [v15 objectForKey_];

  if (v17)
  {
    sub_22B0DF7A0();
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  v22[0] = v20;
  v22[1] = v21;
  if (*(&v21 + 1))
  {
    v18 = swift_dynamicCast();
    (*(v10 + 56))(v8, v18 ^ 1u, 1, v9);
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      (*(v10 + 32))(v13, v8, v9);
      goto LABEL_10;
    }
  }

  else
  {
    sub_22B07D02C(v22, &qword_27D8B5770, &unk_22B0E2E40);
    (*(v10 + 56))(v8, 1, 1, v9);
  }

  sub_22B0DEFB0();
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    sub_22B07D02C(v8, &unk_27D8B5670, &unk_22B0E32C0);
  }

LABEL_10:
  (*(v10 + 32))(v2 + OBJC_IVAR____TtC14HomeKitMetrics55MinimumTimeIntervalRadarRequestFilterPreferencesStorage_lastRequestDate, v13, v9);
  return v2;
}

uint64_t sub_22B0D0B2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14HomeKitMetrics55MinimumTimeIntervalRadarRequestFilterPreferencesStorage_lastRequestDate;
  swift_beginAccess();
  v5 = sub_22B0DF0E0();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_22B0D0BB8(uint64_t a1, uint64_t *a2)
{
  v4 = sub_22B0DF0E0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  v9 = *a2;
  return sub_22B0D0D0C(v7);
}

uint64_t sub_22B0D0C84@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14HomeKitMetrics55MinimumTimeIntervalRadarRequestFilterPreferencesStorage_lastRequestDate;
  swift_beginAccess();
  v4 = sub_22B0DF0E0();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_22B0D0D0C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22B0DF0E0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC14HomeKitMetrics55MinimumTimeIntervalRadarRequestFilterPreferencesStorage_lastRequestDate;
  swift_beginAccess();
  (*(v5 + 24))(v2 + v9, a1, v4);
  swift_endAccess();
  v10 = [objc_opt_self() standardUserDefaults];
  (*(v5 + 16))(v8, v2 + v9, v4);
  v11 = sub_22B0DF070();
  v12 = *(v5 + 8);
  v12(v8, v4);
  v13 = *(v2 + 16);
  v14 = *(v2 + 24);
  v15 = sub_22B0DF300();
  [v10 setObject:v11 forKey:v15];

  return (v12)(a1, v4);
}

void (*sub_22B0D0EB4(uint64_t *a1))(void **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x40uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = sub_22B0DF0E0();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v9 = OBJC_IVAR____TtC14HomeKitMetrics55MinimumTimeIntervalRadarRequestFilterPreferencesStorage_lastRequestDate;
  v5[6] = v8;
  v5[7] = v9;
  swift_beginAccess();
  return sub_22B0D0FA4;
}

void sub_22B0D0FA4(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if (a2)
  {
    v4 = v3[6];
  }

  else
  {
    v4 = v3[6];
    v5 = v3[7];
    v6 = v3[4];
    v7 = v3[5];
    v8 = v3[3];
    v9 = [objc_opt_self() standardUserDefaults];
    (*(v7 + 16))(v4, v8 + v5, v6);
    v10 = sub_22B0DF070();
    (*(v7 + 8))(v4, v6);
    v11 = *(v8 + 16);
    v12 = *(v8 + 24);
    v13 = sub_22B0DF300();
    [v9 setObject:v10 forKey:v13];
  }

  free(v4);

  free(v3);
}

uint64_t MinimumTimeIntervalRadarRequestFilterPreferencesStorage.deinit()
{
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtC14HomeKitMetrics55MinimumTimeIntervalRadarRequestFilterPreferencesStorage_lastRequestDate;
  v3 = sub_22B0DF0E0();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t MinimumTimeIntervalRadarRequestFilterPreferencesStorage.__deallocating_deinit()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtC14HomeKitMetrics55MinimumTimeIntervalRadarRequestFilterPreferencesStorage_lastRequestDate;
  v3 = sub_22B0DF0E0();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t sub_22B0D11BC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC14HomeKitMetrics55MinimumTimeIntervalRadarRequestFilterPreferencesStorage_lastRequestDate;
  swift_beginAccess();
  v5 = sub_22B0DF0E0();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

void (*sub_22B0D126C(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  v3[4] = sub_22B0D0EB4(v3);
  return sub_22B07DE44;
}

uint64_t sub_22B0D12F0(uint64_t a1, uint64_t *a2)
{
  sub_22B07D124(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14HomeKitMetrics37MinimumTimeIntervalRadarRequestFilter_filterStorage;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v3 + v4));
  sub_22B0781A8(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_22B0D135C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14HomeKitMetrics37MinimumTimeIntervalRadarRequestFilter_filterStorage;
  swift_beginAccess();
  return sub_22B07D124(v1 + v3, a1);
}

uint64_t sub_22B0D13B4(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC14HomeKitMetrics37MinimumTimeIntervalRadarRequestFilter_filterStorage;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v1 + v3));
  sub_22B0781A8(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t MinimumTimeIntervalRadarRequestFilter.dateFactory.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14HomeKitMetrics37MinimumTimeIntervalRadarRequestFilter_dateFactory);
  v2 = *(v0 + OBJC_IVAR____TtC14HomeKitMetrics37MinimumTimeIntervalRadarRequestFilter_dateFactory + 8);

  return v1;
}

uint64_t MinimumTimeIntervalRadarRequestFilter.__allocating_init(minimumRequestInterval:lastRequestDatePreferencesKey:)(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v8 = type metadata accessor for MinimumTimeIntervalRadarRequestFilterPreferencesStorage();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  MinimumTimeIntervalRadarRequestFilterPreferencesStorage.init(lastRequestDateKey:)(a1, a2);
  v13[3] = v8;
  v13[4] = &protocol witness table for MinimumTimeIntervalRadarRequestFilterPreferencesStorage;
  v13[0] = v11;
  return (*(v4 + 128))(v13, sub_22B0D15C4, 0, a3);
}

uint64_t type metadata accessor for MinimumTimeIntervalRadarRequestFilterPreferencesStorage()
{
  result = qword_2813E9A90;
  if (!qword_2813E9A90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id MinimumTimeIntervalRadarRequestFilter.__allocating_init(minimumRequestInterval:filterStorage:dateFactory:)(uint64_t *a1, uint64_t a2, uint64_t a3, double a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR____TtC14HomeKitMetrics37MinimumTimeIntervalRadarRequestFilter_minimumRequestInterval] = a4;
  sub_22B07D124(a1, &v9[OBJC_IVAR____TtC14HomeKitMetrics37MinimumTimeIntervalRadarRequestFilter_filterStorage]);
  v10 = &v9[OBJC_IVAR____TtC14HomeKitMetrics37MinimumTimeIntervalRadarRequestFilter_dateFactory];
  *v10 = a2;
  *(v10 + 1) = a3;
  v13.receiver = v9;
  v13.super_class = v4;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v11;
}

id MinimumTimeIntervalRadarRequestFilter.init(minimumRequestInterval:filterStorage:dateFactory:)(uint64_t *a1, uint64_t a2, uint64_t a3, double a4)
{
  *&v4[OBJC_IVAR____TtC14HomeKitMetrics37MinimumTimeIntervalRadarRequestFilter_minimumRequestInterval] = a4;
  sub_22B07D124(a1, &v4[OBJC_IVAR____TtC14HomeKitMetrics37MinimumTimeIntervalRadarRequestFilter_filterStorage]);
  v8 = &v4[OBJC_IVAR____TtC14HomeKitMetrics37MinimumTimeIntervalRadarRequestFilter_dateFactory];
  *v8 = a2;
  *(v8 + 1) = a3;
  v11.receiver = v4;
  v11.super_class = type metadata accessor for MinimumTimeIntervalRadarRequestFilter();
  v9 = objc_msgSendSuper2(&v11, sel_init);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v9;
}

uint64_t sub_22B0D175C()
{
  v1 = v0;
  v2 = sub_22B0DF0E0();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR____TtC14HomeKitMetrics37MinimumTimeIntervalRadarRequestFilter_dateFactory);
  v8 = *(v0 + OBJC_IVAR____TtC14HomeKitMetrics37MinimumTimeIntervalRadarRequestFilter_dateFactory + 8);
  v7(v4);
  v9 = v1 + OBJC_IVAR____TtC14HomeKitMetrics37MinimumTimeIntervalRadarRequestFilter_filterStorage;
  swift_beginAccess();
  v10 = *(v9 + 24);
  v11 = *(v9 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v9, v10);
  (*(v11 + 16))(v6, v10, v11);
  return swift_endAccess();
}

id MinimumTimeIntervalRadarRequestFilter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MinimumTimeIntervalRadarRequestFilter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MinimumTimeIntervalRadarRequestFilter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL sub_22B0D1A68()
{
  v1 = v0;
  v2 = sub_22B0DF0E0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v20[-v9];
  v11 = *(v0 + OBJC_IVAR____TtC14HomeKitMetrics37MinimumTimeIntervalRadarRequestFilter_dateFactory);
  v12 = *(v0 + OBJC_IVAR____TtC14HomeKitMetrics37MinimumTimeIntervalRadarRequestFilter_dateFactory + 8);
  v11(v8);
  v13 = OBJC_IVAR____TtC14HomeKitMetrics37MinimumTimeIntervalRadarRequestFilter_filterStorage;
  swift_beginAccess();
  sub_22B07D124(v1 + v13, v21);
  v14 = v22;
  v15 = v23;
  __swift_project_boxed_opaque_existential_1(v21, v22);
  (*(v15 + 8))(v14, v15);
  __swift_destroy_boxed_opaque_existential_0(v21);
  sub_22B0DEFC0();
  v17 = v16;
  v18 = *(v3 + 8);
  v18(v7, v2);
  v18(v10, v2);
  return *(v1 + OBJC_IVAR____TtC14HomeKitMetrics37MinimumTimeIntervalRadarRequestFilter_minimumRequestInterval) <= v17;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_22B0D1CAC()
{
  result = sub_22B0DF0E0();
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

uint64_t sub_22B0D2068()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_22B0D20CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_22B0D2140(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_22B0D21AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_22B0D221C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

BOOL sub_22B0D228C@<W0>(uint64_t *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  result = sub_22B077F9C();
  *a3 = result;
  return result;
}

BOOL sub_22B0D2300@<W0>(void *a1@<X2>, _BYTE *a2@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  result = sub_22B077F9C();
  *a2 = result;
  return result;
}

uint64_t sub_22B0D2338@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  result = sub_22B07C194();
  *a2 = result & 1;
  return result;
}

uint64_t sub_22B0D2370(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_22B0D23C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_22B0D2418(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = a3;
  v16 = a7;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  type metadata accessor for CounterSet.CodingKeys();
  swift_getWitnessTable();
  v8 = sub_22B0DFC10();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22B0DFDC0();
  v19 = v15;
  sub_22B0DF270();
  v17 = MEMORY[0x277D837D8];
  v18 = v16;
  swift_getWitnessTable();
  sub_22B0DFC00();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_22B0D25E4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15[1] = a2;
  v15[4] = a2;
  v15[5] = a3;
  v16 = a4;
  v15[6] = a4;
  v15[7] = a5;
  type metadata accessor for CounterSet.CodingKeys();
  swift_getWitnessTable();
  v7 = sub_22B0DFBC0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v15 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22B0DFDB0();
  if (v5)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    sub_22B0DF270();
    v15[2] = MEMORY[0x277D83808];
    v15[3] = v16;
    swift_getWitnessTable();
    sub_22B0DFBB0();
    (*(v8 + 8))(v11, v7);
    __swift_destroy_boxed_opaque_existential_0(a1);
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_22B0D27FC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_22B0D25E4(a1, a2[2], a2[3], a2[4], a2[5]);
  if (!v3)
  {
    *a3 = result & 1;
    *(a3 + 8) = v6;
  }

  return result;
}

id sub_22B0D28E4()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22B0DF300();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_22B0D294C(void *a1)
{
  [v1 setGroup_];
}

uint64_t sub_22B0D2994()
{
  v1 = [v0 name];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_22B0DF330();

  return v3;
}

void sub_22B0D29FC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_22B0DF300();
  }

  else
  {
    v3 = 0;
  }

  [v2 setName_];
}

void sub_22B0D2A68(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22B0DF0E0();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(a1, 1, v4);
  v7 = 0;
  if (v6 != 1)
  {
    v8 = sub_22B0DF070();
    (*(v5 + 8))(a1, v4);
    v7 = v8;
  }

  v9 = v7;
  [v2 setDate_];
}

uint64_t sub_22B0D2B60@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_22B0DF8F0();
  *a1 = result;
  return result;
}

id sub_22B0D2B8C()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22B0DF300();
  v2 = [v0 initWithEntityName_];

  return v2;
}

id sub_22B0D2BFC()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22B0DF300();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_22B0D2C64@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedNamedGroup();
  result = sub_22B0DF8F0();
  *a1 = result;
  return result;
}

void sub_22B0D4074(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

id HMMLogEventEndDateAfterStartDate(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEAA8] date];
  if ([v2 compare:v1] == -1)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = HMFGetLogIdentifier();
      v9 = 138543874;
      v10 = v5;
      v11 = 2114;
      v12 = v2;
      v13 = 2114;
      v14 = v1;
      _os_log_impl(&dword_22B074000, v4, OS_LOG_TYPE_ERROR, "%{public}@Log event end date %{public}@ is before start date %{public}@", &v9, 0x20u);
    }

    objc_autoreleasePoolPop(v3);
    v6 = v1;

    v2 = v6;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v2;
}

id HMMSafeHomeUUIDFromLogEvent(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 homeUUID];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id HMDTaggedLoggingCreateDictionary(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v23[0] = 0;
  v10 = 8 * a1;
  MEMORY[0x28223BE20](a1);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v11, v10);
  MEMORY[0x28223BE20](v12);
  bzero(v11, v10);
  v23[0] = &a9;
  v13 = 0;
  if (a1)
  {
    v14 = a1;
    do
    {
      --v14;
      v15 = v23[0];
      v23[0] += 8;
      objc_storeStrong(&v11[8 * v13], *v15);
      v16 = v23[0];
      v23[0] += 8;
      v17 = *v16;
      objc_storeStrong(&v11[8 * v13], *v16);
      if (v17)
      {
        ++v13;
      }
    }

    while (v14);
  }

  v18 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjects:v11 forKeys:v11 count:v13];
  if (a1)
  {
    v19 = v10;
    do
    {

      v19 -= 8;
    }

    while (v19);
    v20 = v11 - 8;
    do
    {

      v10 -= 8;
    }

    while (v10);
  }

  v21 = *MEMORY[0x277D85DE8];

  return v18;
}

void sub_22B0D69C8(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

uint64_t HMMDispatchQueueName(void *a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v5 = a1;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  if (v4)
  {
    v8 = @".";
  }

  else
  {
    v8 = &stru_283EED8E0;
  }

  if (v4)
  {
    v9 = v4;
  }

  else
  {
    v9 = &stru_283EED8E0;
  }

  v10 = [v5 hash];

  v11 = [v3 stringWithFormat:@"com.apple.HomeKitMetrics.%@%@%@.%tu", v7, v8, v9, v10];

  v12 = [v11 UTF8String];
  return v12;
}

id getLowestError(void *a1)
{
  v1 = a1;
  v2 = [v1 userInfo];
  v3 = *MEMORY[0x277CCA7E8];
  v4 = [v2 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = 0;
    do
    {
      v8 = [v4 userInfo];
      v9 = [v8 objectForKeyedSubscript:v3];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      v11 = v10;

      if (!v11)
      {
        v16 = MEMORY[0x277CCA9B8];
        v17 = [v4 domain];
        v15 = [v16 errorWithDomain:v17 code:objc_msgSend(v4 userInfo:{"code"), 0}];

        goto LABEL_17;
      }

      if (!v9)
      {
        break;
      }

      v4 = v9;
    }

    while (v7++ < 3);
    if (!v9)
    {
      goto LABEL_15;
    }

    v13 = MEMORY[0x277CCA9B8];
    v14 = [v9 domain];
    v15 = [v13 errorWithDomain:v14 code:objc_msgSend(v9 userInfo:{"code"), 0}];

    v4 = v9;
  }

  else
  {
LABEL_15:
    v15 = v1;
    v4 = 0;
  }

LABEL_17:

  return v15;
}

void sub_22B0D9B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void HMMLogTagWithError(void *a1, void *a2, void *a3, void *a4)
{
  v7 = MEMORY[0x277D0F770];
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v11 = a1;
  v12 = [v7 currentTagProcessorList];
  _HMMLogTagActivityWithError(v11, v10, v9, v8, 0, 0, v12);
}

void _HMMLogTagActivityWithError(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v141 = *MEMORY[0x277D85DE8];
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v114 = v14;
  if (v14)
  {
    v20 = [v14 userInfo];
    v21 = v20;
    v111 = v13;
    v112 = v15;
    v113 = v18;
    if (v20 && ([v20 objectForKey:*MEMORY[0x277CCA7E8]], (v106 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v22 = objc_autoreleasePoolPush();
      v23 = v13;
      v24 = HMFGetOSLogHandle();
      v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
      v105 = v17;
      v107 = v19;
      if (!v17)
      {
        if (v25)
        {
          v85 = HMFGetLogIdentifier();
          v86 = [v14 domain];
          v87 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v14, "code")}];
          [(HMMTaggedEvent *)v106 domain];
          v88 = v110 = v22;
          v89 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMMTaggedEvent code](v106, "code")}];
          *buf = 138545922;
          v116 = v85;
          v117 = 2114;
          v118 = v112;
          v119 = 2112;
          v120 = v16;
          v121 = 2114;
          v122 = @"errorDomain";
          v123 = 2112;
          v124 = v86;
          v125 = 2114;
          v126 = @"errorCode";
          v127 = 2112;
          v128 = v87;
          v129 = 2114;
          v130 = @"underlyingErrorDomain";
          v131 = 2112;
          v132 = v88;
          v133 = 2114;
          v134 = @"underlyingErrorCode";
          v135 = 2112;
          v136 = v89;
          _os_log_impl(&dword_22B074000, v24, OS_LOG_TYPE_ERROR, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@", buf, 0x70u);

          v22 = v110;
        }

        objc_autoreleasePoolPop(v22);
        v90 = +[HMMTagManager sharedInstance];
        v91 = [HMMTaggedEvent alloc];
        v92 = [v14 domain];
        v34 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v14, "code")}];
        v35 = [(HMMTaggedEvent *)v106 domain];
        v103 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMMTaggedEvent code](v106, "code")}];
        v109 = v92;
        v100 = HMDTaggedLoggingCreateDictionary(4, v93, v94, v95, v96, v97, v98, v99, @"errorDomain");
        v101 = [(HMMTaggedEvent *)v91 initWithTag:v112 data:v100];
        v46 = v90;
        [v90 submitTaggedEvent:v101 processorList:v107];

        v19 = v107;
        v48 = v106;

        v15 = v112;
        v17 = 0;
        v47 = v113;
        goto LABEL_19;
      }

      v108 = v21;
      if (v25)
      {
        v26 = HMFGetLogIdentifier();
        v27 = [v14 domain];
        v28 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v14, "code")}];
        [(HMMTaggedEvent *)v106 domain];
        v30 = v29 = v22;
        v31 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMMTaggedEvent code](v106, "code")}];
        *buf = 138546434;
        v116 = v26;
        v117 = 2114;
        v118 = v112;
        v119 = 2112;
        v120 = v16;
        v121 = 2114;
        v122 = @"errorDomain";
        v123 = 2112;
        v124 = v27;
        v125 = 2114;
        v126 = @"errorCode";
        v127 = 2112;
        v128 = v28;
        v129 = 2114;
        v130 = @"underlyingErrorDomain";
        v131 = 2112;
        v132 = v30;
        v133 = 2114;
        v134 = @"underlyingErrorCode";
        v135 = 2112;
        v136 = v31;
        v137 = 2114;
        v138 = v105;
        v139 = 2112;
        v140 = v113;
        _os_log_impl(&dword_22B074000, v24, OS_LOG_TYPE_ERROR, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@", buf, 0x84u);

        v22 = v29;
      }

      objc_autoreleasePoolPop(v22);
      v104 = +[HMMTagManager sharedInstance];
      v32 = [HMMTaggedEvent alloc];
      v33 = [v14 domain];
      v34 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v14, "code")}];
      v35 = [(HMMTaggedEvent *)v106 domain];
      v102 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMMTaggedEvent code](v106, "code")}];
      v109 = v33;
      HMDTaggedLoggingCreateDictionary(5, v36, v37, v38, v39, v40, v41, v42, @"errorDomain");
      v44 = v43 = v16;
      v15 = v112;
      v45 = [(HMMTaggedEvent *)v32 initWithTag:v112 data:v44];
      v46 = v104;
      v19 = v107;
      [v104 submitTaggedEvent:v45 processorList:v107];

      v16 = v43;
      v47 = v113;
      v17 = v105;

      v48 = v106;
    }

    else
    {
      v108 = v21;
      v49 = objc_autoreleasePoolPush();
      v50 = v13;
      v51 = HMFGetOSLogHandle();
      v52 = os_log_type_enabled(v51, OS_LOG_TYPE_ERROR);
      if (v17)
      {
        if (v52)
        {
          v53 = HMFGetLogIdentifier();
          v54 = [v14 domain];
          v55 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v14, "code")}];
          *buf = 138545410;
          v116 = v53;
          v117 = 2114;
          v118 = v112;
          v119 = 2112;
          v120 = v16;
          v121 = 2114;
          v122 = @"errorDomain";
          v123 = 2112;
          v124 = v54;
          v125 = 2114;
          v126 = @"errorCode";
          v127 = 2112;
          v128 = v55;
          v129 = 2114;
          v130 = v17;
          v131 = 2112;
          v132 = v113;
          _os_log_impl(&dword_22B074000, v51, OS_LOG_TYPE_ERROR, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@", buf, 0x5Cu);
        }

        objc_autoreleasePoolPop(v49);
        v48 = +[HMMTagManager sharedInstance];
        v56 = [HMMTaggedEvent alloc];
        v57 = [v14 domain];
        [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v14, "code")}];
        v109 = v47 = v113;
        v46 = v57;
        v34 = HMDTaggedLoggingCreateDictionary(3, v58, v59, v60, v61, v62, v63, v64, @"errorDomain");
        v15 = v112;
        v35 = [(HMMTaggedEvent *)v56 initWithTag:v112 data:v34];
        [(HMMTaggedEvent *)v48 submitTaggedEvent:v35 processorList:v19];
      }

      else
      {
        if (v52)
        {
          v72 = HMFGetLogIdentifier();
          v73 = [v14 domain];
          v74 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v14, "code")}];
          *buf = 138544898;
          v116 = v72;
          v117 = 2114;
          v118 = v112;
          v119 = 2112;
          v120 = v16;
          v121 = 2114;
          v122 = @"errorDomain";
          v123 = 2112;
          v124 = v73;
          v125 = 2114;
          v126 = @"errorCode";
          v127 = 2112;
          v128 = v74;
          _os_log_impl(&dword_22B074000, v51, OS_LOG_TYPE_ERROR, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@", buf, 0x48u);
        }

        objc_autoreleasePoolPop(v49);
        v48 = +[HMMTagManager sharedInstance];
        v75 = [HMMTaggedEvent alloc];
        v76 = [v14 domain];
        v109 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v14, "code")}];
        v46 = v76;
        v34 = HMDTaggedLoggingCreateDictionary(2, v77, v78, v79, v80, v81, v82, v83, @"errorDomain");
        v15 = v112;
        v35 = [(HMMTaggedEvent *)v75 initWithTag:v112 data:v34];
        [(HMMTaggedEvent *)v48 submitTaggedEvent:v35 processorList:v19];
        v47 = v113;
      }
    }

    v21 = v108;
LABEL_19:

    v13 = v111;
    goto LABEL_20;
  }

  v47 = v18;
  v65 = objc_autoreleasePoolPush();
  v66 = v13;
  v67 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
  {
    HMFGetLogIdentifier();
    v68 = v19;
    v70 = v69 = v16;
    *buf = 138543874;
    v116 = v70;
    v117 = 2114;
    v118 = v15;
    v119 = 2112;
    v120 = v69;
    _os_log_impl(&dword_22B074000, v67, OS_LOG_TYPE_ERROR, "%{public}@tag=%{public}@ desc=%@", buf, 0x20u);

    v16 = v69;
    v19 = v68;
  }

  objc_autoreleasePoolPop(v65);
  v21 = +[HMMTagManager sharedInstance];
  v71 = [HMMTaggedEvent alloc];
  v48 = [(HMMTaggedEvent *)v71 initWithTag:v15 data:MEMORY[0x277CBEC10]];
  [v21 submitTaggedEvent:v48 processorList:v19];
LABEL_20:

  v84 = *MEMORY[0x277D85DE8];
}

void HMMLogTagActivityWithError(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a3;
  v11 = a2;
  v12 = a1;
  v13 = [a5 tagProcessorList];
  _HMMLogTagActivityWithError(v12, v11, v10, v9, 0, 0, v13);
}

void HMMLogTagWithErrorAndField(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = MEMORY[0x277D0F770];
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = a2;
  v17 = a1;
  v18 = [v11 currentTagProcessorList];
  _HMMLogTagActivityWithError(v17, v16, v15, v14, v13, v12, v18);
}

void HMMLogTagActivityWithErrorAndField(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = a2;
  v18 = a1;
  v19 = [a7 tagProcessorList];
  _HMMLogTagActivityWithError(v18, v17, v16, v15, v14, v13, v19);
}

void sub_22B0DE5A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getRadarComponentClass_block_invoke(uint64_t a1)
{
  TapToRadarKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("RadarComponent");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRadarComponentClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np();
    TapToRadarKitLibrary();
  }
}

void TapToRadarKitLibrary()
{
  if (!TapToRadarKitLibraryCore())
  {
    v0 = abort_report_np();
    free(v0);
  }
}

uint64_t TapToRadarKitLibraryCore()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!TapToRadarKitLibraryCore_frameworkLibrary)
  {
    TapToRadarKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = TapToRadarKitLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __TapToRadarKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  TapToRadarKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22B0DE888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getRadarDraftClass_block_invoke(uint64_t a1)
{
  TapToRadarKitLibrary();
  result = objc_getClass("RadarDraft");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRadarDraftClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return [(HMMTapToRadarShim *)v3 isTapToRadarServiceAuthorized];
  }

  return result;
}

Class __getTapToRadarServiceClass_block_invoke(uint64_t a1)
{
  TapToRadarKitLibrary();
  result = objc_getClass("TapToRadarService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getTapToRadarServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return +[(HMMTapToRadarShim *)v3];
  }

  return result;
}