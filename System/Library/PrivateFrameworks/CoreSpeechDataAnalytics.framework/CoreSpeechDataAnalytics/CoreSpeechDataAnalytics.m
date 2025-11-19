_DWORD *sub_2478E2E5C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_2478E2E7C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = a2;
  LOBYTE(a3) = v6(a2, a3);

  return a3 & 1;
}

uint64_t sub_2478E2ED8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2478E2F10()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2478E2F88(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2478E2FEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2478E30B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2478E3178()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2478E31C4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2478E3214()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void *sub_2478E3250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t *a7)
{
  v8 = v7;
  v10 = *a5;
  *(v7 + 120) = a1;
  *(v7 + 128) = a2;
  *(v7 + 88) = a6;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 48) = a3;
  *(v7 + 56) = a4;
  *(v7 + 80) = v10;
  type metadata accessor for SiriRequestRecordFactory();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v7 + 72) = v11;
  *(v7 + 96) = MEMORY[0x277D84F90];
  v12 = *a7;
  if (!*a7)
  {
    v16 = qword_27EE571C0;

    if (v16 != -1)
    {
      swift_once();
    }

    v17 = sub_24794ED34();
    __swift_project_value_buffer(v17, qword_27EE58DF8);
    v18 = sub_24794ED14();
    v19 = sub_24794F164();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2478E1000, v18, v19, "#BaseSiriRequestSamplingActionEvent: cannot get samplingUtils from dependencies", v20, 2u);
      MEMORY[0x24C1AF180](v20, -1, -1);
    }

    v48 = a7[2];
    sub_2478E9620(&v48, &qword_27EE57290, &unk_2479504F0);
    v47 = a7[3];
    v21 = &qword_27EE57298;
    v22 = &unk_2479503D0;
    goto LABEL_19;
  }

  v13 = a7[1];
  v14 = a7[3];
  v48 = v14;
  if (!v14)
  {
    v23 = qword_27EE571C0;

    if (v23 != -1)
    {
      swift_once();
    }

    v24 = sub_24794ED34();
    __swift_project_value_buffer(v24, qword_27EE58DF8);
    v25 = sub_24794ED14();
    v26 = sub_24794F164();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2478E1000, v25, v26, "#BaseSiriRequestSamplingActionEvent: siriProfileManager is nil", v27, 2u);
      MEMORY[0x24C1AF180](v27, -1, -1);

      v47 = a7[2];
      sub_2478E9620(&v47, &qword_27EE57290, &unk_2479504F0);
      v21 = &qword_27EE57298;
      v22 = &unk_2479503D0;
      v28 = &v48;
LABEL_20:
      sub_2478E9620(v28, v21, v22);
      v46 = a7[4];
      v33 = &qword_27EE572A0;
      v34 = &unk_247950500;
      v35 = &v46;
LABEL_21:
      sub_2478E9620(v35, v33, v34);
      v45 = a7[5];
      sub_2478E9620(&v45, &qword_27EE572A8, &unk_2479503E0);
      v36 = v8[3];

      v37 = v8[7];

      v38 = v8[9];

      v39 = v8[11];

      v40 = v8[12];

      v41 = v8[16];

      type metadata accessor for BaseSiriRequestSamplingActionEvent();
      swift_deallocPartialClassInstance();
      return 0;
    }

    v47 = a7[2];
    v21 = &qword_27EE57290;
    v22 = &unk_2479504F0;
LABEL_19:
    v28 = &v47;
    goto LABEL_20;
  }

  v15 = a7[4];
  v47 = v15;
  if (!v15)
  {

    sub_2478E9680(&v48, &v46, &qword_27EE57298, &unk_2479503D0);
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v29 = sub_24794ED34();
    __swift_project_value_buffer(v29, qword_27EE58DF8);
    v30 = sub_24794ED14();
    v31 = sub_24794F164();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_2478E1000, v30, v31, "#BaseSiriRequestSamplingActionEvent: audioFileManager is nil", v32, 2u);
      MEMORY[0x24C1AF180](v32, -1, -1);
      sub_2478E9620(&v48, &qword_27EE57298, &unk_2479503D0);

      v46 = a7[2];
      sub_2478E9620(&v46, &qword_27EE57290, &unk_2479504F0);
      sub_2478E9620(&v48, &qword_27EE57298, &unk_2479503D0);
      v33 = &qword_27EE572A0;
      v34 = &unk_247950500;
      v35 = &v47;
    }

    else
    {
      sub_2478E9620(&v48, &qword_27EE57298, &unk_2479503D0);

      v46 = a7[2];
      sub_2478E9620(&v46, &qword_27EE57290, &unk_2479504F0);
      v35 = &v48;
      v33 = &qword_27EE57298;
      v34 = &unk_2479503D0;
    }

    goto LABEL_21;
  }

  *(v7 + 64) = v14;
  *(v7 + 104) = v15;
  *(v7 + 32) = v12;
  *(v7 + 40) = v13;
  v44 = v10;
  type metadata accessor for SiriRequestBiomeProcessor();
  swift_allocObject();

  sub_2478E9680(&v48, &v46, &qword_27EE57298, &unk_2479503D0);
  sub_2478E9680(&v47, &v46, &qword_27EE572A0, &unk_247950500);
  v43 = sub_2478EE784(&v44);

  v46 = a7[2];
  sub_2478E9620(&v46, &qword_27EE57290, &unk_2479504F0);
  sub_2478E9620(&v48, &qword_27EE57298, &unk_2479503D0);
  sub_2478E9620(&v47, &qword_27EE572A0, &unk_247950500);
  v45 = a7[5];
  sub_2478E9620(&v45, &qword_27EE572A8, &unk_2479503E0);
  v8[14] = v43;
  return v8;
}

uint64_t sub_2478E3AE0(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_24794EBB4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v11 = sub_24794ED34();
  __swift_project_value_buffer(v11, qword_27EE58DF8);
  (*(v7 + 16))(v10, a2, v6);

  v12 = sub_24794ED14();
  v13 = sub_24794F154();
  if (os_log_type_enabled(v12, v13))
  {
    v23 = v3;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v24 = v15;
    *v14 = 134218242;
    if (a1 >> 62)
    {
      v16 = sub_24794F414();
    }

    else
    {
      v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v14 + 4) = v16;

    *(v14 + 12) = 2080;
    sub_2478E94A4(&qword_27EE57288, MEMORY[0x277CC9578]);
    v17 = sub_24794F4D4();
    v19 = v18;
    (*(v7 + 8))(v10, v6);
    v20 = sub_247924380(v17, v19, &v24);

    *(v14 + 14) = v20;
    _os_log_impl(&dword_2478E1000, v12, v13, "#BaseSiriRequestActionEvent: adding requests into daily requests: %ld for date: %s", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x24C1AF180](v15, -1, -1);
    MEMORY[0x24C1AF180](v14, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  swift_beginAccess();

  sub_24790058C(v21);
  return swift_endAccess();
}

uint64_t sub_2478E3DD4()
{
  swift_beginAccess();
  v1 = *(v0 + 96);
  v2 = (*(*(*(v0 + 88) + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_metaDataManager) + 16) + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_userSamplingId);
  v3 = *v2;
  v4 = v2[1];

  sub_2478E7F30(v5, v3, v4);
}

uint64_t sub_2478E3E98()
{
  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v1 = sub_24794ED34();
  __swift_project_value_buffer(v1, qword_27EE58DF8);
  v2 = sub_24794ED14();
  v3 = sub_24794F164();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2478E1000, v2, v3, "#BaseSiriRequestSamplingActionEvent: deviceSamplingEnded should be implemented in sub class", v4, 2u);
    MEMORY[0x24C1AF180](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2478E3FCC()
{
  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v1 = sub_24794ED34();
  __swift_project_value_buffer(v1, qword_27EE58DF8);
  v2 = sub_24794ED14();
  v3 = sub_24794F164();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2478E1000, v2, v3, "#BaseSiriRequestSamplingActionEvent: aggregateEvents should be implemented in sub class", v4, 2u);
    MEMORY[0x24C1AF180](v4, -1, -1);
  }

  sub_2478E95CC();
  swift_allocError();
  *v5 = xmmword_24794FEE0;
  *(v5 + 16) = 2;
  swift_willThrow();
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2478E411C()
{
  v1[2] = v0;
  v2 = sub_24794EBB4();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2478E41DC, 0, 0);
}

uint64_t sub_2478E41DC()
{
  v1 = v0[2];
  v2 = (*(**(*(*(v1 + 88) + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_metaDataManager) + 16) + 272))();
  v0[6] = 0;
  v0[7] = v2;
  v0[8] = v3;
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];
  v7 = *(v6 + 64);
  v8 = *(v6 + 72);
  v17 = *(v6 + 32);
  v9 = *(v1 + 88) + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_currentDate;
  v10 = v0[5];
  (*(v5 + 16))();
  v11 = type metadata accessor for EnrollmentRecordsGenerator();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  v0[9] = v14;
  *(v14 + 16) = v7;
  *(v14 + 24) = v8;
  *(v14 + 32) = v17;
  (*(v5 + 32))(v14 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics26EnrollmentRecordsGenerator_currentDate, v10, v4);

  v15 = swift_task_alloc();
  v0[10] = v15;
  *v15 = v0;
  v15[1] = sub_2478E43C8;

  return sub_247930984();
}

uint64_t sub_2478E43C8(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = a1;

  return MEMORY[0x2822009F8](sub_2478E44C8, 0, 0);
}

uint64_t sub_2478E44C8()
{
  v1 = v0[9];
  v2 = v0[3];
  v3 = v0[4];
  swift_setDeallocating();
  v4 = v1[2];

  v5 = v1[3];

  (*(v3 + 8))(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics26EnrollmentRecordsGenerator_currentDate, v2);
  v6 = *(*v1 + 48);
  v7 = *(*v1 + 52);
  swift_deallocClassInstance();
  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v8 = v0[11];
  v9 = sub_24794ED34();
  __swift_project_value_buffer(v9, qword_27EE58DF8);

  v10 = sub_24794ED14();
  v11 = sub_24794F144();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[11];
  if (v12)
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    if (v13 >> 62)
    {
      v0[11];
      v32 = v14;
      v15 = sub_24794F414();
      v14 = v32;
    }

    else
    {
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = v0[11];
    *(v14 + 4) = v15;
    v17 = v14;

    _os_log_impl(&dword_2478E1000, v10, v11, "#BaseSiriRequestSamplingActionEvent: generated enrollment Records: %ld", v17, 0xCu);
    MEMORY[0x24C1AF180](v17, -1, -1);
  }

  else
  {
    v18 = v0[11];
  }

  v19 = v0[11];
  v20 = v0[6];
  v21 = (*(*(*(v0[2] + 88) + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_metaDataManager) + 16) + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_userSamplingId);
  v23 = *v21;
  v22 = v21[1];

  sub_2478E7F30(v19, v23, v22);
  if (v20)
  {
    v24 = v0[11];
    v25 = v0[8];

    v26 = v0[5];

    v27 = v0[1];

    return v27();
  }

  else
  {

    v29 = swift_task_alloc();
    v0[12] = v29;
    *v29 = v0;
    v29[1] = sub_2478E47C8;
    v30 = v0[11];
    v31 = v0[2];

    return sub_2478E7180(v30);
  }
}

uint64_t sub_2478E47C8()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v6 = *(v2 + 64);

    v7 = *(v2 + 40);

    v8 = *(v5 + 8);

    return v8();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2478E493C, 0, 0);
  }
}

uint64_t sub_2478E493C()
{
  v1 = v0[13];
  v3 = v0[7];
  v2 = v0[8];
  v4 = *(**(*(*(v0[2] + 88) + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_metaDataManager) + 16) + 336);

  v4(v3, v2);
  v5 = v0[8];
  if (v1)
  {

    v6 = v0[5];
  }

  else
  {
    v8 = v0[5];
    v9 = v0[8];

    sub_247940408();
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_2478E4A7C()
{
  v1[12] = v0;
  v2 = sub_24794EC04();
  v1[13] = v2;
  v3 = *(v2 - 8);
  v1[14] = v3;
  v4 = *(v3 + 64) + 15;
  v1[15] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57278, &unk_247950590) - 8) + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2478E4B80, 0, 0);
}

uint64_t sub_2478E4B80()
{
  v104 = v0;
  v0[11] = MEMORY[0x277D84F90];
  v1 = (v0 + 11);
  v2 = v0[12];
  swift_beginAccess();
  v3 = *(v2 + 96);
  v0[18] = v3;
  if (v3 >> 62)
  {
LABEL_44:
    v72 = sub_24794F414();
    v0[19] = v72;
    if (v72)
    {
      goto LABEL_3;
    }

LABEL_45:
    v6 = 0;
    v97 = MEMORY[0x277D84F90];
LABEL_46:
    v73 = v0[12];
    v74 = *(v73 + 96);
    if (v74 >> 62)
    {
      v77 = sub_24794F414();
      v74 = *(v73 + 96);
      if (v77)
      {
LABEL_48:
        if (v74 >> 62)
        {
          if (v6 < sub_24794F414())
          {
            goto LABEL_50;
          }
        }

        else if (v6 < *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_50:
          v75 = v0[12];
          v76 = *(v75 + 96);
LABEL_53:
          v78 = v0[16];
          v79 = v0[17];
          v80 = v0[15];
          *(v75 + 96) = v97;

          v81 = v0[1];
LABEL_60:

          return v81();
        }

        if (qword_27EE571C0 != -1)
        {
          swift_once();
        }

        v82 = sub_24794ED34();
        __swift_project_value_buffer(v82, qword_27EE58DF8);
        v83 = sub_24794ED14();
        v84 = sub_24794F164();
        if (os_log_type_enabled(v83, v84))
        {
          v85 = swift_slowAlloc();
          *v85 = 0;
          _os_log_impl(&dword_2478E1000, v83, v84, "#BaseSiriRequestSamplingActionEvent: all audio upload failed", v85, 2u);
          MEMORY[0x24C1AF180](v85, -1, -1);
        }

        v87 = v0[16];
        v86 = v0[17];
        v88 = v0[15];

        sub_2478E95CC();
        swift_allocError();
        *v89 = xmmword_24794FF00;
        *(v89 + 16) = 2;
        swift_willThrow();

        v81 = v0[1];
        goto LABEL_60;
      }
    }

    else if (*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_48;
    }

    v75 = v0[12];
    goto LABEL_53;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v0[19] = v4;
  if (!v4)
  {
    goto LABEL_45;
  }

LABEL_3:
  v5 = v1 - 48;

  v6 = 0;
  v1 = 0;
  v7 = &unk_247950590;
  v97 = MEMORY[0x277D84F90];
  v96 = MEMORY[0x277D84F90];
  v90 = v5;
  v100 = v0;
  while (1)
  {
    v0[21] = v97;
    v0[22] = v96;
    v0[20] = v6;
    v8 = v0[18];
    if ((v8 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x24C1AE890](v1);
    }

    else
    {
      if (v1 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v9 = *(v8 + 8 * v1 + 32);
    }

    v0[23] = v9;
    v0[24] = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v101 = v6;
    v10 = v0[17];
    v11 = v0[13];
    v12 = v0[14];
    v13 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_requestId;
    swift_beginAccess();
    v0 = v100;
    sub_2478E9680(v9 + v13, v10, &qword_27EE57278, v7);
    v14 = v5;
    v15 = v7;
    v16 = *(v12 + 48);
    v17 = v16(v10, 1, v11);
    v18 = v100[17];
    if (v17)
    {
      sub_2478E9620(v100[17], &qword_27EE57278, v15);
      v7 = v15;
      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v19 = sub_24794ED34();
      __swift_project_value_buffer(v19, qword_27EE58DF8);
      v1 = sub_24794ED14();
      v20 = sub_24794F164();
      v5 = v14;
      if (os_log_type_enabled(v1, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_2478E1000, v1, v20, "#BaseSiriRequestSamplingActionEvent: Cannot get requestId", v21, 2u);
        v0 = v100;
        MEMORY[0x24C1AF180](v21, -1, -1);
      }

      v6 = v101 + 1;
      if (__OFADD__(v101, 1))
      {
        goto LABEL_40;
      }

      goto LABEL_5;
    }

    v22 = v100[15];
    v95 = v100[16];
    v24 = v100[13];
    v23 = v100[14];
    v93 = *(v23 + 16);
    v93(v22, v18, v24);
    sub_2478E9620(v18, &qword_27EE57278, v15);
    v91 = sub_24794EBD4();
    v92 = *(v23 + 8);
    v100[25] = v91;
    v100[26] = v25;
    v94 = v25;
    v92(v22, v24);
    v26 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_audioId;
    swift_beginAccess();
    sub_2478E9680(v9 + v26, v95, &qword_27EE57278, v15);
    v27 = v16(v95, 1, v24);
    v28 = v100[16];
    if (v27)
    {
      sub_2478E9620(v100[16], &qword_27EE57278, v15);
      v7 = v15;
      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v29 = sub_24794ED34();
      __swift_project_value_buffer(v29, qword_27EE58DF8);

      v1 = sub_24794ED14();
      v30 = sub_24794F164();

      if (os_log_type_enabled(v1, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v103[0] = v32;
        *v31 = 136315138;
        v33 = sub_247924380(v91, v94, v103);

        *(v31 + 4) = v33;
        _os_log_impl(&dword_2478E1000, v1, v30, "#BaseSiriRequestSamplingActionEvent: Cannot get audioId for requestId: %s", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v32);
        MEMORY[0x24C1AF180](v32, -1, -1);
        MEMORY[0x24C1AF180](v31, -1, -1);
      }

      else
      {
      }

      v5 = v90;
      v0 = v100;
      v6 = v101 + 1;
      if (__OFADD__(v101, 1))
      {
        goto LABEL_42;
      }

      goto LABEL_5;
    }

    v34 = v100[15];
    v36 = v100[12];
    v35 = v100[13];
    v93(v34, v100[16], v35);
    sub_2478E9620(v28, &qword_27EE57278, v15);
    v37 = sub_24794EBD4();
    v39 = v38;
    v100[27] = v37;
    v100[28] = v38;
    v92(v34, v35);
    v40 = *(v36 + 104);
    v41 = v40[6];
    if (v41)
    {
      break;
    }

    v42 = sub_24793A2EC();
    v0 = v100;
    v43 = v40[6];
    v40[6] = v42;

    v41 = v40[6];
    if (v41)
    {
      goto LABEL_36;
    }

    sub_2478E95CC();
    v44 = swift_allocError();
    *v45 = xmmword_24794FEF0;
    *(v45 + 16) = 2;
    swift_willThrow();
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v46 = v100[28];
    v47 = v100[26];
    v48 = sub_24794ED34();
    __swift_project_value_buffer(v48, qword_27EE58DF8);

    v49 = v44;
    v1 = sub_24794ED14();
    v50 = sub_24794F164();

    v51 = os_log_type_enabled(v1, v50);
    v52 = v100[28];
    if (v51)
    {
      v53 = v100[26];
      v98 = v100[27];
      v54 = v100[25];
      v102 = v100[23];
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v103[0] = v57;
      *v55 = 136315650;
      v58 = sub_247924380(v54, v53, v103);

      *(v55 + 4) = v58;
      *(v55 + 12) = 2080;
      v59 = sub_247924380(v98, v52, v103);

      *(v55 + 14) = v59;
      *(v55 + 22) = 2112;
      v60 = v44;
      v61 = _swift_stdlib_bridgeErrorToNSError();
      *(v55 + 24) = v61;
      *v56 = v61;
      _os_log_impl(&dword_2478E1000, v1, v50, "#BaseSiriRequestSamplingActionEvent: upload audio file failed for requestId: %s, audioId: %s with error: %@", v55, 0x20u);
      sub_2478E9620(v56, &qword_27EE57280, &unk_2479503C0);
      MEMORY[0x24C1AF180](v56, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x24C1AF180](v57, -1, -1);
      v0 = v100;
      MEMORY[0x24C1AF180](v55, -1, -1);
    }

    else
    {
      v62 = v100[26];
      v63 = v100[23];
    }

    v5 = v90;
    v64 = v0[20];
    v6 = v64 + 1;
    v7 = &unk_247950590;
    if (__OFADD__(v64, 1))
    {
      goto LABEL_43;
    }

    v96 = v0[22];
    v97 = v0[21];
LABEL_5:
    v1 = v0[24];
    if (v1 == v0[19])
    {
      v65 = v0[18];

      goto LABEL_46;
    }
  }

  v0 = v100;
LABEL_36:
  v0[29] = v41;
  v66 = v40[4];
  v67 = v40[5];
  v68 = *(v67 + 128);

  v99 = (v68 + *v68);
  v69 = v68[1];
  v70 = swift_task_alloc();
  v0[30] = v70;
  *v70 = v0;
  v70[1] = sub_2478E5728;

  return v99(v91, v94, v37, v39, v41, v66, v67);
}

uint64_t sub_2478E5728()
{
  v2 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_2478E63D4;
  }

  else
  {
    v3 = sub_2478E583C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_2478E583C()
{
  v106 = v0;
  v2 = *(v0 + 28);
  v3 = *(v0 + 29);
  v4 = *(v0 + 26);
  v5 = *(v0 + 23);

  MEMORY[0x24C1AE560](v6);
  if (*((*(v0 + 11) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 11) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_50:
    sub_24794F084();
  }

  v7 = *(v0 + 23);
  sub_24794F0A4();

  v8 = *(v0 + 11);
  v9 = *(v0 + 24);
  v10 = *(v0 + 20);
  if (v9 == *(v0 + 19))
  {
    v100 = *(v0 + 11);
LABEL_4:
    v11 = *(v0 + 18);

    v12 = *(v0 + 12);
    v13 = *(v12 + 96);
    if (v13 >> 62)
    {
      v80 = sub_24794F414();
      v13 = *(v12 + 96);
      if (v80)
      {
LABEL_6:
        if (v13 >> 62)
        {
          if (v10 < sub_24794F414())
          {
            goto LABEL_8;
          }
        }

        else if (v10 < *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_8:
          v14 = *(v0 + 12);
          v15 = *(v14 + 96);
LABEL_53:
          v81 = *(v0 + 16);
          v82 = *(v0 + 17);
          v83 = *(v0 + 15);
          *(v14 + 96) = v100;

          v84 = *(v0 + 1);
LABEL_60:

          v84();
          return;
        }

        if (qword_27EE571C0 != -1)
        {
          swift_once();
        }

        v85 = sub_24794ED34();
        __swift_project_value_buffer(v85, qword_27EE58DF8);
        v86 = sub_24794ED14();
        v87 = sub_24794F164();
        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          *v88 = 0;
          _os_log_impl(&dword_2478E1000, v86, v87, "#BaseSiriRequestSamplingActionEvent: all audio upload failed", v88, 2u);
          MEMORY[0x24C1AF180](v88, -1, -1);
        }

        v90 = *(v0 + 16);
        v89 = *(v0 + 17);
        v91 = *(v0 + 15);

        sub_2478E95CC();
        swift_allocError();
        *v92 = xmmword_24794FF00;
        *(v92 + 16) = 2;
        swift_willThrow();

        v84 = *(v0 + 1);
        goto LABEL_60;
      }
    }

    else if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    v14 = *(v0 + 12);
    goto LABEL_53;
  }

  v16 = &OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_requestId;
  v17 = &unk_247950590;
  v93 = *(v0 + 31);
  v100 = *(v0 + 11);
  v99 = v100;
  while (1)
  {
    *(v0 + 21) = v100;
    *(v0 + 22) = v8;
    *(v0 + 20) = v10;
    v18 = *(v0 + 18);
    if ((v18 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x24C1AE890](v9);
    }

    else
    {
      if (v9 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_48;
      }

      v19 = *(v18 + 8 * v9 + 32);
    }

    *(v0 + 23) = v19;
    *(v0 + 24) = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    v103 = v10;
    v20 = *(v0 + 17);
    v21 = *(v0 + 13);
    v22 = *(v0 + 14);
    v23 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_requestId;
    swift_beginAccess();
    sub_2478E9680(v19 + v23, v20, &qword_27EE57278, &unk_247950590);
    v1 = *(v22 + 48);
    v24 = v1(v20, 1, v21);
    v25 = *(v0 + 17);
    if (v24)
    {
      sub_2478E9620(*(v0 + 17), &qword_27EE57278, &unk_247950590);
      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v26 = sub_24794ED34();
      __swift_project_value_buffer(v26, qword_27EE58DF8);
      v27 = sub_24794ED14();
      v28 = sub_24794F164();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_2478E1000, v27, v28, "#BaseSiriRequestSamplingActionEvent: Cannot get requestId", v29, 2u);
        MEMORY[0x24C1AF180](v29, -1, -1);
      }

      v10 = v103 + 1;
      if (__OFADD__(v103, 1))
      {
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v8 = v99;
LABEL_12:
      v9 = *(v0 + 24);
      if (v9 == *(v0 + 19))
      {
        goto LABEL_4;
      }
    }

    else
    {
      v30 = *(v0 + 15);
      v98 = *(v0 + 16);
      v31 = *(v0 + 13);
      v32 = *(v0 + 14);
      v95 = *(v32 + 16);
      v95(v30, v25, v31);
      sub_2478E9620(v25, &qword_27EE57278, &unk_247950590);
      v33 = sub_24794EBD4();
      v34 = *(v32 + 8);
      v96 = v33;
      v97 = v35;
      *(v0 + 25) = v33;
      *(v0 + 26) = v35;
      v94 = v34;
      v34(v30, v31);
      v36 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_audioId;
      swift_beginAccess();
      sub_2478E9680(v19 + v36, v98, &qword_27EE57278, &unk_247950590);
      v37 = v1(v98, 1, v31);
      v1 = v0;
      if (v37)
      {
        sub_2478E9620(*(v0 + 16), &qword_27EE57278, &unk_247950590);
        if (qword_27EE571C0 != -1)
        {
          swift_once();
        }

        v38 = sub_24794ED34();
        __swift_project_value_buffer(v38, qword_27EE58DF8);

        v39 = sub_24794ED14();
        v40 = sub_24794F164();

        v8 = v99;
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v105[0] = v42;
          *v41 = 136315138;
          v43 = sub_247924380(v96, v97, v105);

          *(v41 + 4) = v43;
          _os_log_impl(&dword_2478E1000, v39, v40, "#BaseSiriRequestSamplingActionEvent: Cannot get audioId for requestId: %s", v41, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v42);
          MEMORY[0x24C1AF180](v42, -1, -1);
          MEMORY[0x24C1AF180](v41, -1, -1);
        }

        else
        {
        }

        v16 = &OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_requestId;
        v10 = v103 + 1;
        v17 = &unk_247950590;
        if (__OFADD__(v103, 1))
        {
          goto LABEL_49;
        }

        goto LABEL_12;
      }

      v44 = *(v0 + 15);
      v46 = *(v0 + 12);
      v45 = *(v0 + 13);
      v47 = *(v0 + 16);
      v95(*(v1 + 15), v47, *(v1 + 13));
      sub_2478E9620(v47, &qword_27EE57278, &unk_247950590);
      v19 = sub_24794EBD4();
      v17 = v48;
      *(v1 + 27) = v19;
      *(v1 + 28) = v48;
      v94(v44, v45);
      v9 = *(v46 + 104);
      v16 = *(v9 + 48);
      if (v16)
      {
        goto LABEL_43;
      }

      v49 = sub_24793A2EC();
      v50 = v93;
      v0 = v1;
      if (!v93)
      {
        v51 = *(v9 + 48);
        *(v9 + 48) = v49;

        v16 = *(v9 + 48);
        if (v16)
        {
          goto LABEL_44;
        }

        sub_2478E95CC();
        v50 = swift_allocError();
        *v52 = xmmword_24794FEF0;
        *(v52 + 16) = 2;
        swift_willThrow();
      }

      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v53 = *(v1 + 28);
      v54 = *(v1 + 26);
      v55 = sub_24794ED34();
      __swift_project_value_buffer(v55, qword_27EE58DF8);

      v56 = v50;
      v57 = sub_24794ED14();
      v58 = sub_24794F164();

      v59 = os_log_type_enabled(v57, v58);
      v60 = *(v1 + 28);
      if (v59)
      {
        v61 = *(v1 + 26);
        v62 = *(v1 + 25);
        v101 = *(v1 + 27);
        v104 = *(v1 + 23);
        v63 = v50;
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v105[0] = v66;
        *v64 = 136315650;
        v67 = sub_247924380(v62, v61, v105);

        *(v64 + 4) = v67;
        *(v64 + 12) = 2080;
        v68 = sub_247924380(v101, v60, v105);

        *(v64 + 14) = v68;
        *(v64 + 22) = 2112;
        v69 = v63;
        v70 = v63;
        v71 = _swift_stdlib_bridgeErrorToNSError();
        *(v64 + 24) = v71;
        *v65 = v71;
        _os_log_impl(&dword_2478E1000, v57, v58, "#BaseSiriRequestSamplingActionEvent: upload audio file failed for requestId: %s, audioId: %s with error: %@", v64, 0x20u);
        sub_2478E9620(v65, &qword_27EE57280, &unk_2479503C0);
        MEMORY[0x24C1AF180](v65, -1, -1);
        swift_arrayDestroy();
        v0 = v1;
        MEMORY[0x24C1AF180](v66, -1, -1);
        MEMORY[0x24C1AF180](v64, -1, -1);
      }

      else
      {
        v72 = *(v1 + 26);
        v73 = *(v1 + 23);
      }

      v16 = &OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_requestId;
      v17 = &unk_247950590;
      v74 = *(v0 + 20);
      v10 = v74 + 1;
      if (__OFADD__(v74, 1))
      {
        __break(1u);
        return;
      }

      v93 = 0;
      v8 = *(v0 + 22);
      v100 = *(v0 + 21);
      v9 = *(v0 + 24);
      if (v9 == *(v0 + 19))
      {
        goto LABEL_4;
      }

      v99 = *(v0 + 22);
    }
  }

  __break(1u);
LABEL_43:
  v0 = v1;
LABEL_44:
  *(v0 + 29) = v16;
  v75 = *(v9 + 32);
  v76 = *(v9 + 40);
  v77 = *(v76 + 128);

  v102 = (v77 + *v77);
  v78 = v77[1];
  v79 = swift_task_alloc();
  *(v0 + 30) = v79;
  *v79 = v0;
  v79[1] = sub_2478E5728;

  v102(v96, v97, v19, v17, v16, v75, v76);
}

uint64_t sub_2478E63D4()
{
  v100 = v0;
  v1 = v0;
  v2 = v0[29];

  v3 = qword_27EE58DF8;
  v4 = v0[31];
  v5 = 0x27EE57000uLL;
  v6 = &qword_27EE57278;
  v97 = v1;
LABEL_2:
  if (*(v5 + 448) != -1)
  {
    swift_once();
  }

  v7 = v1[28];
  v8 = v1[26];
  v93 = sub_24794ED34();
  __swift_project_value_buffer(v93, qword_27EE58DF8);

  v9 = v4;
  v10 = sub_24794ED14();
  v11 = sub_24794F164();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v1[28];
  if (v12)
  {
    v95 = v1[27];
    v14 = v4;
    v15 = v1[25];
    v16 = v1[26];
    v98 = v1[23];
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v99[0] = v19;
    *v17 = 136315650;
    v20 = sub_247924380(v15, v16, v99);

    *(v17 + 4) = v20;
    *(v17 + 12) = 2080;
    v21 = sub_247924380(v95, v13, v99);

    *(v17 + 14) = v21;
    *(v17 + 22) = 2112;
    v22 = v14;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 24) = v23;
    *v18 = v23;
    _os_log_impl(&dword_2478E1000, v10, v11, "#BaseSiriRequestSamplingActionEvent: upload audio file failed for requestId: %s, audioId: %s with error: %@", v17, 0x20u);
    sub_2478E9620(v18, &qword_27EE57280, &unk_2479503C0);
    v24 = v18;
    v1 = v97;
    MEMORY[0x24C1AF180](v24, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1AF180](v19, -1, -1);
    v25 = v17;
    v3 = qword_27EE58DF8;
    MEMORY[0x24C1AF180](v25, -1, -1);
  }

  else
  {
    v26 = v1[26];
    v19 = v1[23];
  }

  v27 = v1[20];
  v28 = v27 + 1;
  if (__OFADD__(v27, 1))
  {
    __break(1u);
LABEL_48:
    v75 = sub_24794F414();
    isa = v10[12].isa;
    if (v75)
    {
      goto LABEL_35;
    }

LABEL_49:
    v66 = v1[12];
    goto LABEL_50;
  }

  v29 = v6;
  v94 = v1[22];
  v95 = v1[21];
  while (1)
  {
    v30 = v1[24];
    if (v30 == v1[19])
    {
      break;
    }

    v1[21] = v95;
    v1[22] = v94;
    v1[20] = v28;
    v31 = v1[18];
    if ((v31 & 0xC000000000000001) != 0)
    {
      v32 = MEMORY[0x24C1AE890](v30);
    }

    else
    {
      if (v30 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v32 = *(v31 + 8 * v30 + 32);
    }

    v1[23] = v32;
    v1[24] = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
LABEL_39:
      v1 = v97;
LABEL_44:
      v1[29] = v28;
      v68 = v1;
      v69 = *(v30 + 32);
      v70 = *(v30 + 40);
      v71 = *(v70 + 16);

      v96 = (v71 + *v71);
      v72 = v71[1];
      v73 = swift_task_alloc();
      v68[30] = v73;
      *v73 = v68;
      v73[1] = sub_2478E5728;

      return v96(v90, v91, v3, v98, v28, v69, v70);
    }

    v98 = v28;
    v33 = v1[17];
    v34 = v1[13];
    v35 = v1[14];
    v36 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_requestId;
    swift_beginAccess();
    sub_2478E9680(v32 + v36, v33, v29, &unk_247950590);
    v37 = v29;
    v39 = *(v35 + 48);
    v19 = v35 + 48;
    v38 = v39;
    v40 = v39(v33, 1, v34);
    v41 = v1[17];
    if (v40)
    {
      sub_2478E9620(v1[17], v37, &unk_247950590);
      v29 = v37;
      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v93, qword_27EE58DF8);
      v30 = sub_24794ED14();
      v42 = sub_24794F164();
      v1 = v97;
      if (os_log_type_enabled(v30, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_2478E1000, v30, v42, "#BaseSiriRequestSamplingActionEvent: Cannot get requestId", v43, 2u);
        MEMORY[0x24C1AF180](v43, -1, -1);
      }

      v28 = v98 + 1;
      if (__OFADD__(v98, 1))
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        v3 = v19;
        goto LABEL_44;
      }
    }

    else
    {
      v44 = v1[15];
      v92 = v1[16];
      v45 = v1[13];
      v46 = v1[14];
      v89 = *(v46 + 16);
      v89(v44, v41, v45);
      sub_2478E9620(v41, v37, &unk_247950590);
      v47 = sub_24794EBD4();
      v48 = *(v46 + 8);
      v90 = v47;
      v1[25] = v47;
      v1[26] = v49;
      v91 = v49;
      v88 = v48;
      v48(v44, v45);
      v50 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_audioId;
      swift_beginAccess();
      sub_2478E9680(v32 + v50, v92, v37, &unk_247950590);
      v51 = v38(v92, 1, v45);
      v52 = v1[16];
      if (!v51)
      {
        v56 = v97[15];
        v58 = v97[12];
        v57 = v97[13];
        v59 = v1[16];
        v89(v56, v52, v57);
        sub_2478E9620(v59, v37, &unk_247950590);
        v3 = sub_24794EBD4();
        v97[27] = v3;
        v97[28] = v60;
        v98 = v60;
        v88(v56, v57);
        v30 = *(v58 + 104);
        v28 = *(v30 + 48);
        if (v28)
        {
          goto LABEL_39;
        }

        v6 = v37;
        v19 = v3;
        v61 = sub_24793A2EC();
        v5 = 0x27EE57000;
        v3 = qword_27EE58DF8;
        v1 = v97;
        v62 = *(v30 + 48);
        *(v30 + 48) = v61;

        v28 = *(v30 + 48);
        if (!v28)
        {
          sub_2478E95CC();
          v4 = swift_allocError();
          *v63 = xmmword_24794FEF0;
          *(v63 + 16) = 2;
          swift_willThrow();
          goto LABEL_2;
        }

        goto LABEL_43;
      }

      sub_2478E9620(v52, v37, &unk_247950590);
      v29 = v37;
      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v3 = qword_27EE58DF8;
      __swift_project_value_buffer(v93, qword_27EE58DF8);

      v30 = sub_24794ED14();
      v53 = sub_24794F164();

      v1 = v97;
      if (os_log_type_enabled(v30, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v99[0] = v55;
        *v54 = 136315138;
        v19 = sub_247924380(v90, v91, v99);

        *(v54 + 4) = v19;
        _os_log_impl(&dword_2478E1000, v30, v53, "#BaseSiriRequestSamplingActionEvent: Cannot get audioId for requestId: %s", v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v55);
        MEMORY[0x24C1AF180](v55, -1, -1);
        MEMORY[0x24C1AF180](v54, -1, -1);
      }

      else
      {
      }

      v28 = v98 + 1;
      if (__OFADD__(v98, 1))
      {
        goto LABEL_42;
      }
    }
  }

  v64 = v1[18];

  v10 = v1[12];
  isa = v10[12].isa;
  if (isa >> 62)
  {
    goto LABEL_48;
  }

  if (!*((isa & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_49;
  }

LABEL_35:
  if (isa >> 62)
  {
    if (v28 < sub_24794F414())
    {
      goto LABEL_37;
    }

LABEL_52:

    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v93, qword_27EE58DF8);
    v80 = sub_24794ED14();
    v81 = sub_24794F164();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&dword_2478E1000, v80, v81, "#BaseSiriRequestSamplingActionEvent: all audio upload failed", v82, 2u);
      MEMORY[0x24C1AF180](v82, -1, -1);
    }

    v84 = v1[16];
    v83 = v1[17];
    v85 = v1;
    v86 = v1[15];

    sub_2478E95CC();
    swift_allocError();
    *v87 = xmmword_24794FF00;
    *(v87 + 16) = 2;
    swift_willThrow();

    v79 = v85[1];
    goto LABEL_57;
  }

  if (v28 >= *((isa & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_52;
  }

LABEL_37:
  v66 = v1[12];
  v67 = *(v66 + 96);
LABEL_50:
  v76 = v1[16];
  v77 = v1[17];
  v78 = v1[15];
  *(v66 + 96) = v95;

  v79 = v1[1];
LABEL_57:

  return v79();
}

uint64_t sub_2478E6EE0()
{
  v1 = *(v0 + 112);

  sub_2478EEE7C();
}

uint64_t sub_2478E7180(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57278, &unk_247950590) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2478E721C, 0, 0);
}

uint64_t sub_2478E721C()
{
  v39 = v0;
  v1 = v0[5];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v35 = v0[5];
    }

    result = sub_24794F414();
    v0[8] = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_24:
    v36 = v0[7];

    v34 = v0[1];
    goto LABEL_25;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v0[8] = result;
  if (!result)
  {
    goto LABEL_24;
  }

LABEL_3:
  v3 = v0[5];
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x24C1AE890](0);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v4 = *(v3 + 32);
  }

  v0[9] = v4;
  v0[10] = 1;
  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v5 = sub_24794ED34();
  v6 = __swift_project_value_buffer(v5, qword_27EE58DF8);
  v0[11] = v6;

  v7 = sub_24794ED14();
  v8 = sub_24794F154();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v38 = v10;
    *v9 = 136315138;
    v11 = *(*v4 + 1264);

    v13 = v11(v12);
    v15 = v14;

    v16 = sub_247924380(v13, v15, &v38);

    *(v9 + 4) = v16;
    _os_log_impl(&dword_2478E1000, v7, v8, "#BaseSiriRequestSamplingActionEvent: processing for record: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x24C1AF180](v10, -1, -1);
    MEMORY[0x24C1AF180](v9, -1, -1);
  }

  v17 = v0[7];
  v18 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_audioId;
  swift_beginAccess();
  sub_2478E9680(v4 + v18, v17, &qword_27EE57278, &unk_247950590);
  v19 = sub_24794EC04();
  LODWORD(v17) = (*(*(v19 - 8) + 48))(v17, 1, v19);
  sub_2478E9620(v0[7], &qword_27EE57278, &unk_247950590);
  if (v17 == 1 || !*(v4 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_deviceType + 8))
  {
    v29 = sub_24794ED14();
    v30 = sub_24794F164();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_2478E1000, v29, v30, "#BaseSiriRequestSamplingActionEvent: key fields are missing in request)", v31, 2u);
      MEMORY[0x24C1AF180](v31, -1, -1);
    }
  }

  else
  {
    v20 = sub_2478F45D0();
    v0[12] = v20;
    if (v20)
    {
      v21 = v20;
      v22 = v0[6];
      v23 = v22[4];
      v24 = v22[5];
      v25 = v22[6];
      v26 = v22[7];
      v37 = (*(v24 + 136) + **(v24 + 136));
      v27 = *(*(v24 + 136) + 4);
      v28 = swift_task_alloc();
      v0[13] = v28;
      *v28 = v0;
      v28[1] = sub_2478E7724;

      return v37(v21, v25, v26, v6, v23, v24);
    }
  }

  sub_2478E95CC();
  swift_allocError();
  *v32 = 0;
  *(v32 + 8) = 0;
  *(v32 + 16) = 2;
  swift_willThrow();

  v33 = v0[7];

  v34 = v0[1];
LABEL_25:

  return v34();
}

uint64_t sub_2478E7724()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_2478E7EBC;
  }

  else
  {
    v3 = sub_2478E7838;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2478E7838()
{
  v59 = v0;
  v1 = v0[11];
  v2 = v0[9];

  v3 = sub_24794ED14();
  v4 = sub_24794F154();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[9];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v58[0] = v7;
    *v6 = 136315138;
    v8 = *(*v5 + 1264);

    v10 = v8(v9);
    v12 = v11;

    v13 = sub_247924380(v10, v12, v58);

    *(v6 + 4) = v13;
    _os_log_impl(&dword_2478E1000, v3, v4, "#BaseSiriRequestSamplingActionEvent: generated odsample Event for %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x24C1AF180](v7, -1, -1);
    MEMORY[0x24C1AF180](v6, -1, -1);
  }

  v14 = *(v0[6] + 88);
  v15 = *(*(v14 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_metaDataManager) + 16);
  v16 = *(v15 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_uploadedNumRecords);
  v17 = __CFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    v19 = v0[12];
    v20 = v0[9];
    v21 = v0[10];
    v22 = v0[8];
    *(v15 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_uploadedNumRecords) = v18;

    sub_247940408();

    if (v21 == v22)
    {
      v24 = v0[7];

      v25 = v0[1];
LABEL_24:

      return v25();
    }

    v26 = v0[10];
    v27 = v0[5];
    if ((v27 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x24C1AE890](v0[10]);
    }

    else
    {
      if (v26 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v14 = *(v27 + 8 * v26 + 32);
    }

    v0[9] = v14;
    v0[10] = v26 + 1;
    if (!__OFADD__(v26, 1))
    {
      if (qword_27EE571C0 == -1)
      {
        goto LABEL_12;
      }

      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_29:
  swift_once();
LABEL_12:
  v28 = sub_24794ED34();
  v29 = __swift_project_value_buffer(v28, qword_27EE58DF8);
  v0[11] = v29;

  v30 = sub_24794ED14();
  v31 = sub_24794F154();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v58[0] = v33;
    *v32 = 136315138;
    v34 = *(*v14 + 1264);

    v36 = v34(v35);
    v38 = v37;

    v39 = sub_247924380(v36, v38, v58);

    *(v32 + 4) = v39;
    _os_log_impl(&dword_2478E1000, v30, v31, "#BaseSiriRequestSamplingActionEvent: processing for record: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x24C1AF180](v33, -1, -1);
    MEMORY[0x24C1AF180](v32, -1, -1);
  }

  v40 = v0[7];
  v41 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_audioId;
  swift_beginAccess();
  sub_2478E9680(v14 + v41, v40, &qword_27EE57278, &unk_247950590);
  v42 = sub_24794EC04();
  LODWORD(v40) = (*(*(v42 - 8) + 48))(v40, 1, v42);
  sub_2478E9620(v0[7], &qword_27EE57278, &unk_247950590);
  if (v40 == 1 || !*(v14 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_deviceType + 8))
  {
    v52 = sub_24794ED14();
    v53 = sub_24794F164();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_2478E1000, v52, v53, "#BaseSiriRequestSamplingActionEvent: key fields are missing in request)", v54, 2u);
      MEMORY[0x24C1AF180](v54, -1, -1);
    }

    goto LABEL_23;
  }

  v43 = sub_2478F45D0();
  v0[12] = v43;
  if (!v43)
  {
LABEL_23:
    sub_2478E95CC();
    swift_allocError();
    *v55 = 0;
    *(v55 + 8) = 0;
    *(v55 + 16) = 2;
    swift_willThrow();

    v56 = v0[7];

    v25 = v0[1];
    goto LABEL_24;
  }

  v44 = v43;
  v45 = v0[6];
  v46 = v45[4];
  v47 = v45[5];
  v48 = v45[6];
  v49 = v45[7];
  v57 = (*(v47 + 136) + **(v47 + 136));
  v50 = *(*(v47 + 136) + 4);
  v51 = swift_task_alloc();
  v0[13] = v51;
  *v51 = v0;
  v51[1] = sub_2478E7724;

  return v57(v44, v48, v49, v29, v46, v47);
}

uint64_t sub_2478E7EBC()
{
  v1 = v0[12];
  v2 = v0[9];

  v3 = v0[14];
  v4 = v0[7];

  v5 = v0[1];

  return v5();
}

uint64_t sub_2478E7F30(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v7 = *(v3 + 112);

    sub_2478EE858(a1, a2, a3);
  }

  else
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v9 = sub_24794ED34();
    __swift_project_value_buffer(v9, qword_27EE58DF8);
    v10 = sub_24794ED14();
    v11 = sub_24794F164();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2478E1000, v10, v11, "#BaseSiriRequestSamplingActionEvent: store biome events failed with userSamplingId being nil", v12, 2u);
      MEMORY[0x24C1AF180](v12, -1, -1);
    }

    sub_2478E95CC();
    swift_allocError();
    *v13 = xmmword_24794FF10;
    *(v13 + 16) = 2;
    return swift_willThrow();
  }
}

void *sub_2478E8084()
{
  v1 = v0[3];

  v2 = v0[7];

  v3 = v0[8];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[12];

  v7 = v0[13];

  v8 = v0[14];

  v9 = v0[16];

  return v0;
}

uint64_t sub_2478E80E4()
{
  sub_2478E8084();

  return swift_deallocClassInstance();
}

uint64_t sub_2478E82B8()
{
  v1 = v0[5];
  swift_beginAccess();
  v2 = *(v1 + 96);
  v0[6] = v2;

  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_2478E8380;
  v4 = v0[5];

  return sub_2478E7180(v2);
}

uint64_t sub_2478E8380()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2478E84BC, 0, 0);
  }

  else
  {
    v4 = v3[6];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_2478E84BC()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_2478E8520()
{
  v2 = *(**v0 + 280);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2478E975C;

  return v6();
}

uint64_t sub_2478E863C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2478E975C;

  return sub_2478E4A7C();
}

uint64_t sub_2478E86CC()
{
  v2 = *(**v0 + 288);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2478E975C;

  return v6();
}

uint64_t sub_2478E87E8()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 96);
  *(v1 + 96) = MEMORY[0x277D84F90];
}

uint64_t sub_2478E887C()
{
  v2 = *(**v0 + 272);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2478E8998;

  return v6();
}

uint64_t sub_2478E8998()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2478E8A8C()
{
  v1 = *v0;
  sub_24794F584();
  sub_24794F5A4();
  return sub_24794F5B4();
}

uint64_t sub_2478E8B00()
{
  v1 = *v0;
  sub_24794F584();
  sub_24794F5A4();
  return sub_24794F5B4();
}

void sub_2478E8B44(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57260, &qword_2479503A8);
      v7 = *(sub_24794EC04() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        v13 = *(sub_24794EC04() - 8);
        v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        v15 = *(v13 + 72);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void sub_2478E8CE4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        type metadata accessor for SiriRequestRecord(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57268, &unk_2479503B0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

id sub_2478E8DC8(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v10 = sub_24794EC04();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v62 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v58 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v58 - v18;
  if (a5)
  {
    if (a4 != 2)
    {

LABEL_24:
      sub_2478E9538(0, &qword_27EE57248, 0x277D59540);

      v40 = sub_247919B08(a1, a2, a3, a4);
      v29 = [objc_allocWithZone(MEMORY[0x277D59528]) init];
      sub_24794EBF4();
      [v29 setSpeakerIdModelSampleManifestReported_];
      if (v29)
      {
        sub_2478E9538(0, &qword_27EE57258, 0x277D59530);
        (*(v11 + 16))(v17, v19, v10);
        v41 = v29;
        v42 = sub_247919F48(v17);
        [v41 setEventMetadata_];
      }

      v43 = v62;
      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v44 = sub_24794ED34();
      __swift_project_value_buffer(v44, qword_27EE58DF8);
      (*(v11 + 16))(v43, v19, v10);
      v45 = sub_24794ED14();
      v46 = sub_24794F144();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v61 = v40;
        v48 = v47;
        v49 = swift_slowAlloc();
        v63 = v49;
        *v48 = 136315138;
        sub_2478E94A4(&qword_27EE57250, MEMORY[0x277CC95F0]);
        v50 = sub_24794F4D4();
        v51 = v43;
        v53 = v52;
        v60 = v19;
        v54 = *(v11 + 8);
        v54(v51, v10);
        v55 = sub_247924380(v50, v53, &v63);

        *(v48 + 4) = v55;
        _os_log_impl(&dword_2478E1000, v45, v46, "#Generated Manifest Event with UUID: %s", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v49);
        MEMORY[0x24C1AF180](v49, -1, -1);
        MEMORY[0x24C1AF180](v48, -1, -1);

        v54(v60, v10);
      }

      else
      {

        v56 = *(v11 + 8);
        v56(v43, v10);
        v56(v19, v10);
      }

      return v29;
    }

    v60 = a1;
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v20 = sub_24794ED34();
    __swift_project_value_buffer(v20, qword_27EE58DF8);
    v21 = sub_24794ED14();
    v22 = sub_24794F144();
    v23 = os_log_type_enabled(v21, v22);
    LODWORD(v61) = 2;
    if (v23)
    {
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      if ((a5 & 0x8000000000000000) == 0)
      {
        a4 = v24;
        *(v24 + 4) = a5;
        _os_log_impl(&dword_2478E1000, v21, v22, "#BaseSiriRequestSamplingActionEvent: triming the sampleIds to it first %ld", v24, 0xCu);
        MEMORY[0x24C1AF180](a4, -1, -1);

        LODWORD(a4) = v61;
        goto LABEL_15;
      }
    }

    else
    {

      if ((a5 & 0x8000000000000000) == 0)
      {
LABEL_15:
        v21 = sub_24792E250(a5, a3);
        v22 = v32;
        if ((v32 & 1) == 0)
        {
          v33 = v30;
          v34 = v31;

          v35 = v34;
          v36 = v33;
LABEL_17:
          sub_2478E8B44(v21, v36, v35, v22);
          a3 = v37;
          swift_unknownObjectRelease();
          a1 = v60;
          goto LABEL_24;
        }

        v58 = v30;
        v59 = v31;
        a4 = v19;
        sub_24794F4F4();
        swift_unknownObjectRetain_n();

        v38 = swift_dynamicCastClass();
        if (!v38)
        {
          swift_unknownObjectRelease();
          v38 = MEMORY[0x277D84F90];
        }

        v39 = *(v38 + 16);

        if (!__OFSUB__(v22 >> 1, v59))
        {
          if (v39 == (v22 >> 1) - v59)
          {
            a3 = swift_dynamicCastClass();
            swift_unknownObjectRelease();
            v19 = a4;
            LODWORD(a4) = v61;
            a1 = v60;
            if (!a3)
            {
              swift_unknownObjectRelease();
              a3 = MEMORY[0x277D84F90];
            }

            goto LABEL_24;
          }

          goto LABEL_35;
        }

LABEL_34:
        __break(1u);
LABEL_35:
        swift_unknownObjectRelease();
        v19 = a4;
        LODWORD(a4) = v61;
        v36 = v58;
        v35 = v59;
        goto LABEL_17;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_34;
  }

  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v25 = sub_24794ED34();
  __swift_project_value_buffer(v25, qword_27EE58DF8);
  v26 = sub_24794ED14();
  v27 = sub_24794F144();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_2478E1000, v26, v27, "#BaseSiriRequestSamplingActionEvent: maxUploadCount is 0, do not generate manifest event", v28, 2u);
    MEMORY[0x24C1AF180](v28, -1, -1);
  }

  return 0;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2478E94A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_2478E9538(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
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

unint64_t sub_2478E95CC()
{
  result = qword_27EE57270;
  if (!qword_27EE57270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE57270);
  }

  return result;
}

uint64_t sub_2478E9620(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2478E9680(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_2478E9710(uint64_t a1, unint64_t *a2)
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

uint64_t sub_2478E976C(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, double a9)
{
  v10 = v9;
  v20 = sub_24794EBB4();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = (v10 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_locale);
  *v24 = a1;
  v24[1] = a2;
  v67 = v24;
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v26 = v25;
  *(v10 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_maxNumRecordsPerDay) = a4;
  *(v10 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_maxSamplingDurationInDays) = a7;
  *(v10 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_intermediateUploadCount) = a6;
  *(v10 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_maxTotalRecordsCount) = a5;
  *(v10 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_userSelectionChance) = a9;
  LOBYTE(a7) = *a3;
  *(v10 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_isNewVoiceProfile) = 0;
  *(v10 + 32) = a7;
  v28 = v27;

  sub_24794EBA4();
  v29 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_currentDate;
  (*(v26 + 32))(v10 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_currentDate, v23, v28);
  type metadata accessor for SiriRequestRecordFactory();
  v30 = swift_allocObject();
  *(v30 + 16) = a7;
  v31 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_requestRecordFactory;
  *(v10 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_requestRecordFactory) = v30;
  v32 = *a8;
  if (!*a8)
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v39 = sub_24794ED34();
    __swift_project_value_buffer(v39, qword_27EE58DF8);
    v40 = sub_24794ED14();
    v41 = sub_24794F164();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_2478E1000, v40, v41, "#BaseSiriRequestSamplingPolicy: cannot get samplingUtils from dependencies", v42, 2u);
      MEMORY[0x24C1AF180](v42, -1, -1);
    }

    v71 = a8[2];
    sub_2478E9620(&v71, &qword_27EE57290, &unk_2479504F0);
    v70 = a8[3];
    sub_2478E9620(&v70, &qword_27EE57298, &unk_2479503D0);
    v69 = a8[4];
    sub_2478E9620(&v69, &qword_27EE572A0, &unk_247950500);
    v68 = a8[5];
    v43 = &qword_27EE572A8;
    v44 = &unk_2479503E0;
    v45 = &v68;
    goto LABEL_28;
  }

  v33 = a8[2];
  if (!v33)
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v46 = sub_24794ED34();
    __swift_project_value_buffer(v46, qword_27EE58DF8);
    v47 = sub_24794ED14();
    v48 = sub_24794F164();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_2478E1000, v47, v48, "#BaseSiriRequestSamplingPolicy: cannot get configUserDefaults from dependencies", v49, 2u);
      MEMORY[0x24C1AF180](v49, -1, -1);
    }

    v71 = a8[3];
    sub_2478E9620(&v71, &qword_27EE57298, &unk_2479503D0);
    v70 = a8[4];
    sub_2478E9620(&v70, &qword_27EE572A0, &unk_247950500);
    v69 = a8[5];
    v43 = &qword_27EE572A8;
    v44 = &unk_2479503E0;
    goto LABEL_25;
  }

  v34 = a8[1];
  v35 = a8[5];
  v71 = v35;
  if (!v35)
  {
    v50 = qword_27EE571C0;
    v51 = v33;
    if (v50 != -1)
    {
      swift_once();
    }

    v52 = sub_24794ED34();
    __swift_project_value_buffer(v52, qword_27EE58DF8);
    v53 = sub_24794ED14();
    v54 = sub_24794F164();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_2478E1000, v53, v54, "#BaseSiriRequestSamplingPolicy: cannot get metadataManager from dependencies", v55, 2u);
      MEMORY[0x24C1AF180](v55, -1, -1);

      v70 = a8[3];
      sub_2478E9620(&v70, &qword_27EE57298, &unk_2479503D0);
      v69 = a8[4];
      sub_2478E9620(&v69, &qword_27EE572A0, &unk_247950500);
      v43 = &qword_27EE572A8;
      v44 = &unk_2479503E0;
      v45 = &v71;
LABEL_28:
      sub_2478E9620(v45, v43, v44);
      v61 = *(v10 + 24);

      (*(v26 + 8))(v10 + v29, v28);
      v62 = *(v10 + v31);

      v63 = v67[1];

      type metadata accessor for BaseSiriRequestSamplingPolicy();
      v64 = *(*v10 + 48);
      v65 = *(*v10 + 52);
      swift_deallocPartialClassInstance();
      return 0;
    }

    v70 = a8[3];
    sub_2478E9620(&v70, &qword_27EE57298, &unk_2479503D0);
    v69 = a8[4];
    v43 = &qword_27EE572A0;
    v44 = &unk_247950500;
LABEL_25:
    v45 = &v69;
    goto LABEL_28;
  }

  v36 = a8[3];
  v70 = v36;
  if (!v36)
  {
    v56 = v33;
    sub_2478E9680(&v71, &v69, &qword_27EE572A8, &unk_2479503E0);
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v57 = sub_24794ED34();
    __swift_project_value_buffer(v57, qword_27EE58DF8);
    v58 = sub_24794ED14();
    v59 = sub_24794F164();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_2478E1000, v58, v59, "#BaseSiriRequestSamplingPolicy: cannot get siriProfileManager from dependencies", v60, 2u);
      MEMORY[0x24C1AF180](v60, -1, -1);

      sub_2478E9620(&v71, &qword_27EE572A8, &unk_2479503E0);
      sub_2478E9620(&v70, &qword_27EE57298, &unk_2479503D0);
    }

    else
    {

      sub_2478E9620(&v71, &qword_27EE572A8, &unk_2479503E0);
    }

    v69 = a8[4];
    sub_2478E9620(&v69, &qword_27EE572A0, &unk_247950500);
    v45 = &v71;
    v43 = &qword_27EE572A8;
    v44 = &unk_2479503E0;
    goto LABEL_28;
  }

  v37 = (v10 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_samplingUtils);
  *v37 = v32;
  v37[1] = v34;
  *(v10 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_configUserDefaults) = v33;
  *(v10 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_metaDataManager) = v35;
  *(v10 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_siriProfileManager) = v36;
  v38 = v33;
  sub_2478E9680(&v71, &v69, &qword_27EE572A8, &unk_2479503E0);
  sub_2478E9680(&v70, &v69, &qword_27EE57298, &unk_2479503D0);
  sub_2478EA1B4();

  sub_2478E9620(&v70, &qword_27EE57298, &unk_2479503D0);
  v69 = a8[4];
  sub_2478E9620(&v69, &qword_27EE572A0, &unk_247950500);
  sub_2478E9620(&v71, &qword_27EE572A8, &unk_2479503E0);
  return v10;
}

void sub_2478EA1B4()
{
  v2 = v0;
  v3 = [*(*(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_siriProfileManager) + 16) getVoiceProfile];
  if (v3)
  {
    v4 = v3;
    v5 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_metaDataManager);
    v6 = *(v5 + 48);
    v7 = sub_24793B3D0();
    if (v7)
    {
      v8 = *(v5 + 16);
      *(v5 + 16) = v7;
    }

    v9 = *(v5 + 16);
    if (!v9[16])
    {
      *(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_isNewVoiceProfile) = 1;
    }

    v10 = (*(*v9 + 272))(v7);
    if (v1)
    {

      return;
    }

    v17 = v11;
    v18 = v10;
    v19 = [v4 profileID];
    if (v19)
    {
      v20 = v19;
      v21 = sub_24794EF04();
      v23 = v22;

      if (v18 == v21 && v17 == v23)
      {

        return;
      }

      v25 = sub_24794F4E4();

      if (v25)
      {

        return;
      }
    }

    *(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_isNewVoiceProfile) = 1;
    v26 = [v4 profileID];
    if (v26)
    {
      v27 = v26;

      v28 = sub_24794EF04();
      v30 = v29;

      v31 = *(**(v5 + 16) + 280);

      v31(v28, v30);

      sub_247940408();
      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v32 = sub_24794ED34();
      __swift_project_value_buffer(v32, qword_27EE58DF8);
      v33 = v4;
      v34 = sub_24794ED14();
      v35 = sub_24794F174();
      if (!os_log_type_enabled(v34, v35))
      {

        return;
      }

      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v43 = v37;
      *v36 = 136315138;
      v38 = [v33 profileID];

      if (v38)
      {
        v39 = sub_24794EF04();
        v41 = v40;

        v42 = sub_247924380(v39, v41, &v43);

        *(v36 + 4) = v42;
        _os_log_impl(&dword_2478E1000, v34, v35, "#BaseSiriRequestSamplingPolicy: policy metadata voice profile has changed, updating to %s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v37);
        MEMORY[0x24C1AF180](v37, -1, -1);
        MEMORY[0x24C1AF180](v36, -1, -1);

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v12 = sub_24794ED34();
    __swift_project_value_buffer(v12, qword_27EE58DF8);
    v13 = sub_24794ED14();
    v14 = sub_24794F164();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2478E1000, v13, v14, "#BaseSiriRequestSamplingPolicy: can't get voiceProfile", v15, 2u);
      MEMORY[0x24C1AF180](v15, -1, -1);
    }

    sub_2478E95CC();
    swift_allocError();
    *v16 = xmmword_247950430;
    *(v16 + 16) = 2;
    swift_willThrow();
  }
}

BOOL sub_2478EA6BC()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_samplingUtils;
  v3 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_samplingUtils);
  v4 = *(v2 + 8);
  return ((*(v4 + 80))(v3, v4) & 1) != 0 && ((*(v4 + 88))(v3, v4) & 1) != 0 && *(*(*(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_metaDataManager) + 16) + 16) == 1;
}

void sub_2478EA758()
{
  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v0 = sub_24794ED34();
  __swift_project_value_buffer(v0, qword_27EE58DF8);
  oslog = sub_24794ED14();
  v1 = sub_24794F164();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_2478E1000, oslog, v1, "#BaseSiriRequestSamplingPolicy: checkAndSelectDeviceForSampling should be implemented in sub class", v2, 2u);
    MEMORY[0x24C1AF180](v2, -1, -1);
  }
}

uint64_t sub_2478EA840()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v25 - v5;
  v7 = sub_24794EBB4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_metaDataManager);
  v13 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_maxTotalRecordsCount);
  v28 = *(*(v12 + 16) + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_uploadedNumRecords);
  v27 = v13;
  v14 = v28 >= v13;
  if (v28 >= v13)
  {
    v26 = 1;
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v15 = sub_24794ED34();
    __swift_project_value_buffer(v15, qword_27EE58DF8);
    v16 = sub_24794ED14();
    v17 = sub_24794F174();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v25 = v1;
      v19 = v18;
      *v18 = 0;
      _os_log_impl(&dword_2478E1000, v16, v17, "#BaseSiriRequestSamplingPolicy: Device sampling finished as max total records reached.", v18, 2u);
      MEMORY[0x24C1AF180](v19, -1, -1);
    }

    v14 = v26;
  }

  v20 = *(v12 + 16);
  v21 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_collectionStartDate;
  swift_beginAccess();
  sub_2478E9680(v20 + v21, v6, &qword_27EE572D0, &unk_2479504E0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_2478E9620(v6, &qword_27EE572D0, &unk_2479504E0);
  }

  else
  {
    v22 = v28 >= v27;
    (*(v8 + 32))(v11, v6, v7);
    v23 = sub_247945000(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_currentDate, v11, *(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_maxSamplingDurationInDays));
    (*(v8 + 8))(v11, v7);
    v14 = v22 | v23 ^ 1;
  }

  return v14 & 1;
}

uint64_t sub_2478EAB54()
{
  v1 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_metaDataManager);
  v2 = (*(**(v1 + 16) + 352))();
  v3 = (*(**(v1 + 16) + 272))();
  v6 = sub_2478EC498(v3, v5, v2);

  return (v6 ^ 1) & 1;
}

uint64_t sub_2478EAE30(uint64_t a1, const char *a2)
{
  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v3 = sub_24794ED34();
  __swift_project_value_buffer(v3, qword_27EE58DF8);
  v4 = sub_24794ED14();
  v5 = sub_24794F154();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2478E1000, v4, v5, a2, v6, 2u);
    MEMORY[0x24C1AF180](v6, -1, -1);
  }

  sub_2478E95CC();
  swift_allocError();
  *v7 = xmmword_24794FEE0;
  *(v7 + 16) = 2;
  return swift_willThrow();
}

uint64_t sub_2478EAFA8(const char *a1)
{
  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v2 = sub_24794ED34();
  __swift_project_value_buffer(v2, qword_27EE58DF8);
  v3 = sub_24794ED14();
  v4 = sub_24794F154();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2478E1000, v3, v4, a1, v5, 2u);
    MEMORY[0x24C1AF180](v5, -1, -1);
  }

  sub_2478E95CC();
  swift_allocError();
  *v6 = xmmword_24794FEE0;
  *(v6 + 16) = 2;
  return swift_willThrow();
}

BOOL sub_2478EB0C0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v14 - v3;
  v5 = sub_24794EBB4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_metaDataManager) + 16);
  v11 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_collectionStartDate;
  swift_beginAccess();
  sub_2478E9680(v10 + v11, v4, &qword_27EE572D0, &unk_2479504E0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_2478E9620(v4, &qword_27EE572D0, &unk_2479504E0);
    return 0;
  }

  (*(v6 + 32))(v9, v4, v5);
  v12 = sub_247945000(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_currentDate, v9, *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_maxSamplingDurationInDays));
  (*(v6 + 8))(v9, v5);
  return (v12 & 1) == 0;
}

uint64_t sub_2478EB2C4(char *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_samplingUtils;
  v5 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_samplingUtils);
  v6 = *(v4 + 8);
  v19 = *a1;
  v7 = *(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_configUserDefaults);
  v8 = (v6)[2](&v19, v7, v5, v6);
  if ((v9 & 1) == 0)
  {
    *(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_maxNumRecordsPerDay) = v8;
  }

  v18 = v3;
  v10 = (v6)[1](&v18, v7, v5, v6);
  if ((v11 & 1) == 0)
  {
    *(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_intermediateUploadCount) = v10;
  }

  v17 = v3;
  v12 = (v6)[3](&v17, v7, v5, v6);
  if ((v13 & 1) == 0)
  {
    *(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_maxTotalRecordsCount) = v12;
  }

  v16 = v3;
  result = (v6)[4](&v16, v7, v5, v6);
  if ((v15 & 1) == 0)
  {
    *(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_userSelectionChance) = result;
  }

  return result;
}

uint64_t sub_2478EB3FC(char *a1)
{
  v2 = v1;
  v67 = a1;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  v3 = *(*(v66 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v66);
  v65 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v63 - v6;
  v8 = sub_24794EBB4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v64 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v63 = &v63 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v63 - v15;
  v17 = *(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_metaDataManager);
  v18 = *(v17 + 16);
  v19 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_collectionStartDate;
  swift_beginAccess();
  v20 = v18 + v19;
  v21 = v9;
  v22 = v8;
  sub_2478E9680(v20, v7, &qword_27EE572D0, &unk_2479504E0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_2478E9620(v7, &qword_27EE572D0, &unk_2479504E0);
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v23 = sub_24794ED34();
    __swift_project_value_buffer(v23, qword_27EE58DF8);

    v24 = sub_24794ED14();
    v25 = sub_24794F164();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v69 = v27;
      *v26 = 136315138;
      v28 = *(v17 + 16);
      v29 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_collectionStartDate;
      swift_beginAccess();
      sub_2478E9680(v28 + v29, v65, &qword_27EE572D0, &unk_2479504E0);
      v30 = sub_24794EF14();
      v32 = sub_247924380(v30, v31, &v69);

      *(v26 + 4) = v32;
      _os_log_impl(&dword_2478E1000, v24, v25, "#BaseSiriRequestSamplingPolicy: collection start date - %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x24C1AF180](v27, -1, -1);
      MEMORY[0x24C1AF180](v26, -1, -1);
    }

    return 0;
  }

  (*(v9 + 32))(v16, v7, v8);
  v34 = *(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_samplingUtils);
  v35 = v67;
  v36 = v16;
  if (((*(*(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_samplingUtils + 8) + 72))(v67, v16, *(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_maxSamplingDurationInDays)) & 1) == 0)
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v49 = sub_24794ED34();
    __swift_project_value_buffer(v49, qword_27EE58DF8);
    v50 = v64;
    (*(v9 + 16))(v64, v35, v22);
    v51 = sub_24794ED14();
    v52 = sub_24794F144();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v67 = v36;
      v68[0] = v54;
      v55 = v54;
      *v53 = 136315138;
      sub_2478EC590();
      v56 = sub_24794F4D4();
      v58 = v57;
      v59 = *(v21 + 8);
      v59(v50, v22);
      v60 = sub_247924380(v56, v58, v68);

      *(v53 + 4) = v60;
      _os_log_impl(&dword_2478E1000, v51, v52, "#BaseSiriRequestSamplingPolicy: date %s is not within sampling cycle", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v55);
      MEMORY[0x24C1AF180](v55, -1, -1);
      MEMORY[0x24C1AF180](v53, -1, -1);

      v59(v67, v22);
    }

    else
    {

      v61 = *(v21 + 8);
      v61(v50, v22);
      v61(v36, v22);
    }

    return 0;
  }

  if (*(*(v17 + 16) + 16) != 1)
  {
    (*(v9 + 8))(v16, v22);
    return 0;
  }

  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v37 = sub_24794ED34();
  __swift_project_value_buffer(v37, qword_27EE58DF8);
  v38 = v63;
  (*(v9 + 16))(v63, v35, v22);
  v39 = sub_24794ED14();
  v40 = sub_24794F154();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v68[0] = v42;
    *v41 = 136315138;
    sub_2478EC590();
    v43 = sub_24794F4D4();
    v44 = v38;
    v46 = v45;
    v47 = *(v21 + 8);
    v47(v44, v22);
    v48 = sub_247924380(v43, v46, v68);

    *(v41 + 4) = v48;
    _os_log_impl(&dword_2478E1000, v39, v40, "#BaseSiriRequestSamplingPolicy: accept record for date: %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v42);
    MEMORY[0x24C1AF180](v42, -1, -1);
    MEMORY[0x24C1AF180](v41, -1, -1);

    v47(v36, v22);
  }

  else
  {

    v62 = *(v21 + 8);
    v62(v38, v22);
    v62(v16, v22);
  }

  return 1;
}

uint64_t sub_2478EBB7C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v31 - v3;
  v5 = sub_24794EBB4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_metaDataManager);
  v11 = *(v10 + 16);
  if (*(v11 + 16))
  {
    if (*(v11 + 16) != 2)
    {
      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v18 = sub_24794ED34();
      __swift_project_value_buffer(v18, qword_27EE58DF8);

      v19 = sub_24794ED14();
      v20 = sub_24794F154();
      if (!os_log_type_enabled(v19, v20))
      {

        return 0;
      }

      v21 = swift_slowAlloc();
      *v21 = 134217984;
      *(v21 + 4) = *(*(v10 + 16) + 16);

      _os_log_impl(&dword_2478E1000, v19, v20, "#BaseSiriRequestSamplingPolicy: sampling status : %ld is not eligible for sampling start", v21, 0xCu);
      v22 = v21;
      goto LABEL_20;
    }

    v12 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_collectionStartDate;
    swift_beginAccess();
    sub_2478E9680(v11 + v12, v4, &qword_27EE572D0, &unk_2479504E0);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_2478E9620(v4, &qword_27EE572D0, &unk_2479504E0);
LABEL_16:
      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v24 = sub_24794ED34();
      __swift_project_value_buffer(v24, qword_27EE58DF8);
      v19 = sub_24794ED14();
      v25 = sub_24794F144();
      if (!os_log_type_enabled(v19, v25))
      {
        goto LABEL_21;
      }

      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2478E1000, v19, v25, "#BaseSiriRequestSamplingPolicy: last cyecle finished but has not passed the sampling cycle yet", v26, 2u);
      v22 = v26;
LABEL_20:
      MEMORY[0x24C1AF180](v22, -1, -1);
LABEL_21:

      return 0;
    }

    (*(v6 + 32))(v9, v4, v5);
    v23 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_samplingUtils);
    if ((*(*(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_samplingUtils + 8) + 72))(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_currentDate, v9, *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_maxSamplingDurationInDays)))
    {
      (*(v6 + 8))(v9, v5);
      goto LABEL_16;
    }

    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v27 = sub_24794ED34();
    __swift_project_value_buffer(v27, qword_27EE58DF8);
    v28 = sub_24794ED14();
    v29 = sub_24794F144();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_2478E1000, v28, v29, "#BaseSiriRequestSamplingPolicy: last cycle finished and sampling cycle days passed, start sampling", v30, 2u);
      MEMORY[0x24C1AF180](v30, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
    return 1;
  }

  else
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v13 = sub_24794ED34();
    __swift_project_value_buffer(v13, qword_27EE58DF8);
    v14 = sub_24794ED14();
    v15 = sub_24794F144();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2478E1000, v14, v15, "#BaseSiriRequestSamplingPolicy: metadata status is unkown, start sampling", v16, 2u);
      MEMORY[0x24C1AF180](v16, -1, -1);
    }

    return 1;
  }
}

uint64_t sub_2478EC0C8()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_currentDate;
  v3 = sub_24794EBB4();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *&v0[OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_requestRecordFactory];

  v5 = *&v0[OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_metaDataManager];

  v6 = *&v0[OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_siriProfileManager];

  v7 = *&v0[OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_locale + 8];

  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BaseSiriRequestSamplingPolicy()
{
  result = qword_27EE572C0;
  if (!qword_27EE572C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2478EC214()
{
  result = sub_24794EBB4();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_2478EC39C()
{
  v2 = *v0;
  v3 = (*(*v2 + 392))();
  v4 = v3;
  if (!v1 && (v3 & 1) != 0)
  {
    *(*(*(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_metaDataManager) + 16) + 16) = 2;
    sub_247940408();
  }

  return v4 & 1;
}

uint64_t sub_2478EC498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_24794F584();
  sub_24794EF74();
  v7 = sub_24794F5B4();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_24794F4E4() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t sub_2478EC590()
{
  result = qword_27EE57288;
  if (!qword_27EE57288)
  {
    sub_24794EBB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE57288);
  }

  return result;
}

uint64_t sub_2478EC5E8(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t *a5)
{
  v6 = v5;
  v9 = *a3;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 48) = v9;
  type metadata accessor for SiriRequestRecordFactory();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v6 + 56) = v10;
  v11 = *a5;
  if (!*a5)
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v14 = sub_24794ED34();
    __swift_project_value_buffer(v14, qword_27EE58DF8);
    v15 = sub_24794ED14();
    v16 = sub_24794F164();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2478E1000, v15, v16, "#BaseSiriRequestSamplingSelectionRule: samplingUtils is not defined", v17, 2u);
      MEMORY[0x24C1AF180](v17, -1, -1);
    }

    goto LABEL_15;
  }

  if (!a4)
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v18 = sub_24794ED34();
    __swift_project_value_buffer(v18, qword_27EE58DF8);
    v19 = sub_24794ED14();
    v20 = sub_24794F164();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2478E1000, v19, v20, "#BaseSiriRequestSamplingSelectionRule: samplingPolicy is not defined", v21, 2u);
      MEMORY[0x24C1AF180](v21, -1, -1);
    }

LABEL_15:
    v35 = a5[2];
    sub_2478E9620(&v35, &qword_27EE57290, &unk_2479504F0);
    v34 = a5[3];
    sub_2478E9620(&v34, &qword_27EE57298, &unk_2479503D0);
    v33 = a5[4];
    v22 = &qword_27EE572A0;
    v23 = &unk_247950500;
    goto LABEL_16;
  }

  v12 = a5[1];
  v13 = a5[4];
  v35 = v13;
  if (!v13)
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v28 = sub_24794ED34();
    __swift_project_value_buffer(v28, qword_27EE58DF8);
    v29 = sub_24794ED14();
    v30 = sub_24794F164();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_2478E1000, v29, v30, "#BaseSiriRequestSamplingSelectionRule: audioFileManager is not defined in dependencies", v31, 2u);
      MEMORY[0x24C1AF180](v31, -1, -1);

      v34 = a5[2];
      sub_2478E9620(&v34, &qword_27EE57290, &unk_2479504F0);
      v33 = a5[3];
      sub_2478E9620(&v33, &qword_27EE57298, &unk_2479503D0);
      v22 = &qword_27EE572A0;
      v23 = &unk_247950500;
      v24 = &v35;
      goto LABEL_17;
    }

    v34 = a5[2];
    sub_2478E9620(&v34, &qword_27EE57290, &unk_2479504F0);
    v33 = a5[3];
    v22 = &qword_27EE57298;
    v23 = &unk_2479503D0;
LABEL_16:
    v24 = &v33;
LABEL_17:
    sub_2478E9620(v24, v22, v23);
    v32 = a5[5];
    sub_2478E9620(&v32, &qword_27EE572A8, &unk_2479503E0);
    v25 = *(v6 + 24);

    v26 = *(v6 + 56);

    type metadata accessor for BaseSiriRequestSamplingSelectionRule();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v34 = a5[2];
  sub_2478E9680(&v35, &v33, &qword_27EE572A0, &unk_247950500);
  sub_2478E9620(&v34, &qword_27EE57290, &unk_2479504F0);
  v33 = a5[3];
  sub_2478E9620(&v33, &qword_27EE57298, &unk_2479503D0);
  sub_2478E9620(&v35, &qword_27EE572A0, &unk_247950500);
  v32 = a5[5];
  sub_2478E9620(&v32, &qword_27EE572A8, &unk_2479503E0);
  *(v6 + 32) = v11;
  *(v6 + 40) = v12;
  *(v6 + 64) = a4;
  *(v6 + 72) = v13;
  return v6;
}

uint64_t sub_2478ECA98(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v37[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57278, &unk_247950590);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v37[-v9];
  v11 = sub_24794EC04();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v37[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_requestId;
  swift_beginAccess();
  sub_2478E9680(a1 + v16, v10, &qword_27EE57278, &unk_247950590);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    v17 = &qword_27EE57278;
    v18 = &unk_247950590;
    v19 = v10;
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
    v20 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_date;
    swift_beginAccess();
    sub_2478E9680(a1 + v20, v6, &qword_27EE572D0, &unk_2479504E0);
    v21 = sub_24794EBB4();
    if ((*(*(v21 - 8) + 48))(v6, 1, v21) != 1)
    {
      sub_2478E9620(v6, &qword_27EE572D0, &unk_2479504E0);
      v28 = *(v1 + 72);
      v29 = sub_24794EBD4();
      v31 = v30;
      v32 = sub_24793B298();
      v33 = *(v28 + 32);
      v34 = *(v28 + 40);
      v35 = *(v34 + 152);
      v36 = v32;

      v26 = v35(v29, v31, v36, v33, v34);

      (*(v12 + 8))(v15, v11);
      return v26 & 1;
    }

    (*(v12 + 8))(v15, v11);
    v17 = &qword_27EE572D0;
    v18 = &unk_2479504E0;
    v19 = v6;
  }

  sub_2478E9620(v19, v17, v18);
  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v22 = sub_24794ED34();
  __swift_project_value_buffer(v22, qword_27EE58DF8);
  v23 = sub_24794ED14();
  v24 = sub_24794F164();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_2478E1000, v23, v24, "#BaseSiriRequestSamplingSelectionRule: no requestId or date not valid", v25, 2u);
    MEMORY[0x24C1AF180](v25, -1, -1);
  }

  v26 = 0;
  return v26 & 1;
}

uint64_t sub_2478ECFF0(uint64_t a1, char *a2)
{
  v3 = v2;
  v5 = *(v2 + 64);
  v6 = sub_2478EB3FC(a2);
  v7 = MEMORY[0x277D84F90];
  if ((v6 & 1) == 0)
  {
    return v7;
  }

  v8 = sub_2478ED524(a1);
  v9 = v8;
  v47 = v7;
  v10 = v8 & 0xFFFFFFFFFFFFFF8;
  if (!(v8 >> 62))
  {
    v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_4;
    }

LABEL_22:
    v13 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

LABEL_21:
  v11 = sub_24794F414();
  if (!v11)
  {
    goto LABEL_22;
  }

LABEL_4:
  v12 = 0;
  v7 = v9 & 0xC000000000000001;
  v13 = MEMORY[0x277D84F90];
  do
  {
    v46 = v13;
    v14 = v12;
    while (1)
    {
      if (v7)
      {
        v15 = MEMORY[0x24C1AE890](v14, v9);
        v12 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v14 >= *(v10 + 16))
        {
          goto LABEL_20;
        }

        v15 = *(v9 + 8 * v14 + 32);

        v12 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
LABEL_19:
          __break(1u);
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }
      }

      if ((*(*v3 + 136))(v15))
      {
        break;
      }

      ++v14;
      if (v12 == v11)
      {
        v13 = v46;
        goto LABEL_23;
      }
    }

    MEMORY[0x24C1AE560]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v16 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_24794F084();
    }

    sub_24794F0A4();
    v13 = v47;
  }

  while (v12 != v11);
LABEL_23:

  v17 = *(v5 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_maxNumRecordsPerDay);
  v18 = *(*(*(v5 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_metaDataManager) + 16) + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_uploadedNumRecords);
  v19 = *(v5 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_maxTotalRecordsCount);
  v20 = v19 >= v18;
  v21 = v19 - v18;
  if (v20)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v23 = sub_24794ED34();
  __swift_project_value_buffer(v23, qword_27EE58DF8);
  v24 = sub_24794ED14();
  v25 = sub_24794F154();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 134218240;
    *(v26 + 4) = v18;
    *(v26 + 12) = 2048;
    *(v26 + 14) = v22;
    _os_log_impl(&dword_2478E1000, v24, v25, "#BaseSiriRequestSamplingSelectionRule: uploadedNumRecords: %lu, remainingCount: %lu", v26, 0x16u);
    MEMORY[0x24C1AF180](v26, -1, -1);
  }

  v47 = sub_247900104(v27);
  v28 = &v47;
  sub_2478FA9B8();
  if (v17 < 0)
  {
    __break(1u);
  }

  else
  {
    v28 = v47;
    if (!(v13 >> 62))
    {
      v29 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_33;
    }
  }

  v29 = sub_24794F414();
LABEL_33:

  if (v22 < 0)
  {
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  if (v29 >= v17)
  {
    v30 = v17;
  }

  else
  {
    v30 = v29;
  }

  if (v22 >= v30)
  {
    v7 = v30;
  }

  else
  {
    v7 = v22;
  }

  if (v29 < 0)
  {
    goto LABEL_84;
  }

  LODWORD(v18) = v28 < 0 || (v28 & 0x4000000000000000) != 0;
  if (v18 != 1)
  {
    v31 = *(v28 + 16);
    goto LABEL_46;
  }

LABEL_85:
  v31 = sub_24794F414();
LABEL_46:
  if (v31 <= 0)
  {
    v32 = v7;
  }

  else
  {
    v32 = 0;
  }

  if (v31 >= v7)
  {
    v33 = v7;
  }

  else
  {
    v33 = v31;
  }

  if (v31 < 0)
  {
    v33 = v7;
  }

  if (v7 >= 1)
  {
    v34 = v33;
  }

  else
  {
    v34 = v32;
  }

  if (v18)
  {
    if (sub_24794F414() < 0)
    {
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    v35 = sub_24794F414();
  }

  else
  {
    v35 = *(v28 + 16);
  }

  if (v35 < v34)
  {
    __break(1u);
    goto LABEL_87;
  }

  if ((v28 & 0xC000000000000001) != 0 && v34)
  {
    type metadata accessor for SiriRequestRecord(0);

    v36 = 0;
    do
    {
      v37 = v36 + 1;
      sub_24794F364();
      v36 = v37;
    }

    while (v34 != v37);
  }

  else
  {
  }

  if (!v18)
  {
    v7 = 0;
    v29 = v28 + 32;
    v34 = (2 * v34) | 1;
    if (v34)
    {
      goto LABEL_73;
    }

LABEL_72:
    sub_2478E8CE4(v28, v29, v7, v34);
    v7 = v42;
LABEL_79:
    swift_unknownObjectRelease();
    return v7;
  }

  v38 = sub_24794F454();
  v29 = v39;
  v7 = v40;
  v34 = v41;

  v28 = v38;
  if ((v34 & 1) == 0)
  {
    goto LABEL_72;
  }

LABEL_73:
  sub_24794F4F4();
  swift_unknownObjectRetain_n();
  v43 = swift_dynamicCastClass();
  if (!v43)
  {
    swift_unknownObjectRelease();
    v43 = MEMORY[0x277D84F90];
  }

  v44 = *(v43 + 16);

  if (__OFSUB__(v34 >> 1, v7))
  {
    goto LABEL_88;
  }

  if (v44 != (v34 >> 1) - v7)
  {
LABEL_89:
    swift_unknownObjectRelease_n();
    goto LABEL_72;
  }

  v7 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (!v7)
  {
    v7 = MEMORY[0x277D84F90];
    goto LABEL_79;
  }

  return v7;
}

uint64_t sub_2478ED524(uint64_t a1)
{
  result = MEMORY[0x277D84F90];
  v28 = MEMORY[0x277D84F90];
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = *(v1 + 56);
    for (i = (a1 + 32); ; ++i)
    {
      v7 = *i;
      if (*(v5 + 16) <= 1u)
      {
        break;
      }

      if (*(v5 + 16) != 2)
      {
        goto LABEL_10;
      }

      v19 = type metadata accessor for MetricsCalcRecord(0);
      v20 = *(v19 + 48);
      v21 = *(v19 + 52);
      swift_allocObject();

      sub_247900C7C(v22);
LABEL_11:
      MEMORY[0x24C1AE560]();
      if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v27 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_24794F084();
      }

      sub_24794F0A4();
      if (!--v4)
      {
        return v28;
      }
    }

    if (*(v5 + 16))
    {
      v8 = type metadata accessor for ButtonPressRequestRecord(0);
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      *(swift_allocObject() + OBJC_IVAR____TtC23CoreSpeechDataAnalytics24ButtonPressRequestRecord_wakeWord) = 0;

      v12 = sub_2478F0B18(v11);
      v13 = v12;
      v14 = (v12 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_postItn1Best);
      if (*(v12 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_postItn1Best + 8))
      {
        v15 = *(v12 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_siriInputLocale);
        if (v15)
        {
          v16 = *v14;
          v17 = v14[1];

          v18 = v15;
          SISchemaISOLocale.toString()();

          LOBYTE(v18) = sub_247944340();

          *(v13 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics24ButtonPressRequestRecord_wakeWord) = v18;
        }
      }

      goto LABEL_11;
    }

LABEL_10:
    v23 = type metadata accessor for SiriRequestRecord(0);
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    swift_allocObject();

    sub_2478F0B18(v26);
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_2478ED71C()
{
  v1 = v0[3];

  v2 = v0[7];

  v3 = v0[8];

  v4 = v0[9];

  return swift_deallocClassInstance();
}

uint64_t sub_2478ED7D4()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  return swift_deallocClassInstance();
}

id sub_2478ED848@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v36 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v36 - v12;
  v14 = *(v2 + 16);
  v15 = [v14 getVoiceProfile];
  if (v15)
  {
    v16 = v15;
    result = [v15 tdtiEnrollmentUtterances];
    if (result)
    {
      v18 = result;
      sub_2478E9538(0, &qword_27EE572E0, 0x277D65398);
      v19 = sub_24794F064();

      sub_2478EDDE4(v19, v13);

      sub_2478EE3C8(v13, v11);
      v20 = sub_24794EBB4();
      if ((*(*(v20 - 8) + 48))(v11, 1, v20) != 1)
      {

        sub_2478E9620(v11, &qword_27EE572D0, &unk_2479504E0);
        return sub_2478EE360(v13, a1, &qword_27EE572D0, &unk_2479504E0);
      }

      sub_2478E9620(v11, &qword_27EE572D0, &unk_2479504E0);
      result = [v16 tdEnrollmentUtterances];
      if (result)
      {
        v21 = result;
        v22 = sub_24794F064();

        sub_2478EDDE4(v22, v8);

        sub_2478E9620(v13, &qword_27EE572D0, &unk_2479504E0);
        sub_2478EE360(v8, v13, &qword_27EE572D0, &unk_2479504E0);
        return sub_2478EE360(v13, a1, &qword_27EE572D0, &unk_2479504E0);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v23 = sub_24794ED34();
    __swift_project_value_buffer(v23, qword_27EE58DF8);

    v24 = sub_24794ED14();
    v25 = sub_24794F164();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v37 = v27;
      *v26 = 136315138;
      v28 = [v14 userProfileIdentifier];
      if (v28)
      {
        v29 = v28;
        v30 = sub_24794EF04();
        v32 = v31;
      }

      else
      {
        v32 = 0xE300000000000000;
        v30 = 7104878;
      }

      v33 = sub_247924380(v30, v32, &v37);

      *(v26 + 4) = v33;
      _os_log_impl(&dword_2478E1000, v24, v25, "#SiriProfileManager: voiceProfile not found with userProfileIdentifier: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x24C1AF180](v27, -1, -1);
      MEMORY[0x24C1AF180](v26, -1, -1);
    }

    v34 = sub_24794EBB4();
    v35 = *(*(v34 - 8) + 56);

    return v35(a1, 1, 1, v34);
  }

  return result;
}

unint64_t sub_2478EDC88()
{
  v1 = [*(v0 + 16) getVoiceProfile];
  if (!v1)
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v9 = sub_24794ED34();
    __swift_project_value_buffer(v9, qword_27EE58DF8);
    v2 = sub_24794ED14();
    v10 = sub_24794F164();
    if (os_log_type_enabled(v2, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2478E1000, v2, v10, "#SiriProfileManager: voiceProfile not found", v11, 2u);
      MEMORY[0x24C1AF180](v11, -1, -1);
    }

    goto LABEL_8;
  }

  v2 = v1;
  v3 = [v1 profilePitch];
  if (!v3)
  {
LABEL_8:

    v8 = 0;
    v7 = 1;
    return v8 | (v7 << 32);
  }

  v4 = v3;
  [v3 floatValue];
  v6 = v5;

  v7 = 0;
  v8 = v6;
  return v8 | (v7 << 32);
}

uint64_t sub_2478EDDE4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v45 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D8, &qword_247950660);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v45 - v13;
  v15 = sub_24794EA84();
  v16 = *(v15 - 8);
  v17 = v16[8];
  v18 = MEMORY[0x28223BE20](v15);
  v49 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v45 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v45 - v24;
  if (!(a1 >> 62))
  {
    v26 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v26)
    {
      goto LABEL_3;
    }

LABEL_17:
    v35 = sub_24794EBB4();
    return (*(*(v35 - 8) + 56))(a2, 1, 1, v35);
  }

LABEL_24:
  v44 = v23;
  v26 = sub_24794F414();
  v23 = v44;
  if (!v26)
  {
    goto LABEL_17;
  }

LABEL_3:
  v46 = v25;
  v47 = v22;
  v50 = v16;
  v51 = v23;
  v48 = v7;
  v52 = a2;
  v7 = 0;
  v22 = (a1 & 0xC000000000000001);
  v25 = (a1 & 0xFFFFFFFFFFFFFF8);
  v16 = off_278EB5000;
  while (1)
  {
    if (v22)
    {
      v23 = MEMORY[0x24C1AE890](v7, a1);
    }

    else
    {
      if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v23 = *(a1 + 8 * v7 + 32);
    }

    v27 = v23;
    a2 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if ([v23 isExplicit])
    {
      break;
    }

    ++v7;
    if (a2 == v26)
    {
      (v50[7])(v14, 1, 1, v51);
      a2 = v52;
LABEL_16:
      sub_2478E9620(v14, &qword_27EE572D8, &qword_247950660);
      goto LABEL_17;
    }
  }

  v28 = [v27 enrollmentUtteranceUrl];

  if (v28)
  {
    sub_24794EA64();

    v29 = v50;
    v30 = v50[7];
    v31 = v12;
    v32 = 0;
  }

  else
  {
    v29 = v50;
    v30 = v50[7];
    v31 = v12;
    v32 = 1;
  }

  v33 = v51;
  (v30)(v31, v32, 1, v51);
  a2 = v52;
  v34 = v48;
  sub_2478EE360(v12, v14, &qword_27EE572D8, &qword_247950660);
  if ((v29[6])(v14, 1, v33) == 1)
  {
    goto LABEL_16;
  }

  (v29[4])(v46, v14, v33);
  v37 = v49;
  sub_24794EA44();
  sub_24794EA54();
  v38 = v29[1];
  (v38)(v37, v33);
  v39 = objc_opt_self();
  v40 = sub_24794EA34();
  v41 = [v39 recordedTimeStampOfFile_];

  if (v41)
  {
    sub_24794EB94();

    v42 = 0;
  }

  else
  {
    v42 = 1;
  }

  (v38)(v47, v33);
  (v38)(v46, v33);
  v43 = sub_24794EBB4();
  (*(*(v43 - 8) + 56))(v34, v42, 1, v43);
  return sub_2478EE360(v34, a2, &qword_27EE572D0, &unk_2479504E0);
}

uint64_t sub_2478EE2F4()
{
  v1 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_2478EE360(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2478EE3C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_2478EE438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v20[0] = sub_24794F194();
  v10 = *(v20[0] - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v20[0]);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24794F184();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v16 = sub_24794EDC4();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);

  v6[4] = 0;
  v6[5] = 0;
  v6[2] = a5;
  v6[6] = a3;
  v6[7] = a4;
  sub_2478E9538(0, &qword_27EE572E8, 0x277D85C78);
  v18 = a5;
  sub_24794EDB4();
  v20[1] = MEMORY[0x277D84F90];
  sub_2478EE680();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572F8, &qword_247950668);
  sub_2478EE6D8();
  sub_24794F294();
  (*(v10 + 104))(v13, *MEMORY[0x277D85260], v20[0]);
  v6[3] = sub_24794F1A4();
  return v6;
}

unint64_t sub_2478EE680()
{
  result = qword_27EE572F0;
  if (!qword_27EE572F0)
  {
    sub_24794F184();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE572F0);
  }

  return result;
}

unint64_t sub_2478EE6D8()
{
  result = qword_27EE57300;
  if (!qword_27EE57300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE572F8, &qword_247950668);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE57300);
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

uint64_t sub_2478EE784(char *a1)
{
  v2 = *a1;
  *(v1 + 32) = 0;
  *(v1 + 16) = v2;
  type metadata accessor for SiriRequestRecordFactory();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v1 + 24) = v3;
  v4 = [BiomeLibrary() Siri];
  swift_unknownObjectRelease();
  v5 = [v4 OnDeviceAnalytics];
  swift_unknownObjectRelease();
  v6 = [v5 AttentionAndInvocationSampling];
  swift_unknownObjectRelease();
  *(v1 + 40) = v6;
  return v1;
}

unint64_t sub_2478EE858(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = [*(v3 + 40) source];
  result = sub_2478EF948(a1, a2, a3);
  v9 = result;
  if (!(result >> 62))
  {
    v10 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_10:
  }

  result = sub_24794F414();
  v10 = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v10 >= 1)
  {
    for (i = 0; i != v10; ++i)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x24C1AE890](i, v9);
      }

      else
      {
        v12 = *(v9 + 8 * i + 32);
      }

      v13 = v12;
      [v7 sendEvent_];
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void sub_2478EE968(void *a1, uint64_t a2)
{
  v3 = [a1 eventBody];
  if (v3)
  {
    v4 = v3;
    swift_beginAccess();
    v5 = v4;
    MEMORY[0x24C1AE560]();
    if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v6 = *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_24794F084();
    }

    sub_24794F0A4();
    swift_endAccess();
  }
}

void sub_2478EEA34(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v45 = a2;
  v46 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v40 - v9;
  v47 = [*(v3 + 40) source];
  if (a1 >> 62)
  {
LABEL_28:
    v11 = sub_24794F414();
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_29:

    return;
  }

  v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
    goto LABEL_29;
  }

LABEL_3:
  v12 = 0;
  v48 = a1 & 0xC000000000000001;
  v40[1] = v5;
  v41 = a1 & 0xFFFFFFFFFFFFFF8;
  v42 = "noWakeWord";
  v43 = v11;
  v13 = off_278EB5000;
  v44 = a1;
  v51 = v10;
  while (1)
  {
    if (v48)
    {
      v21 = MEMORY[0x24C1AE890](v12, a1);
    }

    else
    {
      if (v12 >= *(v41 + 16))
      {
        goto LABEL_27;
      }

      v21 = *(a1 + 8 * v12 + 32);
    }

    v5 = v21;
    v20 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v22 = [v21 v13[508]];
    v23 = sub_24794F064();

    v24 = *(v23 + 16);

    if (v24)
    {
      break;
    }

LABEL_6:

    ++v12;
    if (v20 == v11)
    {
      goto LABEL_29;
    }
  }

  v25 = sub_24794EEF4();
  v26 = MGGetStringAnswer();

  if (v26)
  {
    sub_24794EF04();
    v28 = v27;

    v29 = [v5 timestamp];
    v49 = v28;
    v50 = v12 + 1;
    if (v29)
    {
      v30 = v29;
      sub_24794EB94();

      v31 = 0;
    }

    else
    {
      v31 = 1;
    }

    v32 = sub_24794EBB4();
    v33 = *(v32 - 8);
    (*(v33 + 56))(v10, v31, 1, v32);
    v34 = [v5 v13[508]];
    v35 = sub_24794F064();

    if (v35[2])
    {
      v37 = v35[4];
      v36 = v35[5];
    }

    else
    {
      v36 = 0;
    }

    v38 = v51;
    if ((*(v33 + 48))(v51, 1, v32) == 1)
    {
      v39 = 0;
      if (!v36)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v39 = sub_24794EB34();
      (*(v33 + 8))(v38, v32);
      if (!v36)
      {
LABEL_24:
        v14 = 0;
        goto LABEL_5;
      }
    }

    v14 = sub_24794EEF4();

LABEL_5:
    v15 = objc_allocWithZone(MEMORY[0x277CF1458]);
    v16 = sub_24794EEF4();
    v17 = sub_24794EEF4();
    v18 = sub_24794EEF4();

    v19 = [v15 initWithTimestamp:v39 onDeviceSampleIdentifier:v14 userSamplingIdentifier:v16 dataCollectionUseCase:v17 deviceType:v18];

    [v47 sendEvent_];
    v5 = v19;
    v11 = v43;
    a1 = v44;
    v10 = v51;
    v13 = off_278EB5000;
    v20 = v50;
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_2478EEE7C()
{
  v1 = [*(v0 + 40) pruner];
  v2 = sub_24794EEF4();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_2478EFFC0;
  *(v3 + 24) = v0;
  v6[4] = sub_2478EFFC8;
  v6[5] = v3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_2478F0AF0;
  v6[3] = &block_descriptor_37;
  v4 = _Block_copy(v6);

  [v1 deleteWithPolicy:v2 eventsPassingTest:v4];

  _Block_release(v4);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2478EF004(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1 && (v4 = [a1 eventBody]) != 0)
  {
    v5 = v4;
    v6 = *(a3 + 16);
    v7 = [v4 dataCollectionUseCase];
    if (v7)
    {
      v8 = v7;
      sub_24794EF04();

      v9 = sub_24794F004();
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_2478EF144(char *a1, void *a2)
{
  v4 = *a1;
  v5 = swift_allocObject();
  v6 = MEMORY[0x277D84F90];
  *(v5 + 16) = MEMORY[0x277D84F90];
  v7 = v5 + 16;
  v33 = nullsub_1;
  v34 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v30 = 1107296256;
  v31 = sub_2478F0B14;
  v32 = &block_descriptor_25;
  v8 = _Block_copy(&aBlock);
  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  *(v9 + 24) = v5;
  v33 = sub_2478EFFB4;
  v34 = v9;
  aBlock = MEMORY[0x277D85DD0];
  v30 = 1107296256;
  v31 = sub_2478F0B14;
  v32 = &block_descriptor_31;
  v10 = _Block_copy(&aBlock);

  v11 = [a2 sinkWithCompletion:v8 receiveInput:v10];
  _Block_release(v10);
  _Block_release(v8);

  if (qword_27EE571C0 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v12 = sub_24794ED34();
    __swift_project_value_buffer(v12, qword_27EE58DF8);

    v13 = sub_24794ED14();
    v14 = sub_24794F154();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      swift_beginAccess();
      v16 = *v7;
      if (*v7 >> 62)
      {
        if (v16 < 0)
        {
          v26 = *v7;
        }

        v17 = sub_24794F414();
      }

      else
      {
        v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v15 + 4) = v17;

      _os_log_impl(&dword_2478E1000, v13, v14, "#SiriRequestBiomeProcessor: Fetched all %ld", v15, 0xCu);
      MEMORY[0x24C1AF180](v15, -1, -1);
    }

    else
    {
    }

    swift_beginAccess();
    v7 = *v7;
    v28 = v6;
    v18 = v7 >> 62 ? sub_24794F414() : *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v18)
    {
      break;
    }

    v19 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x24C1AE890](v19, v7);
      }

      else
      {
        if (v19 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v20 = *(v7 + 8 * v19 + 32);
      }

      v21 = v20;
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      v23 = *(v27 + 24);
      sub_2478F6700(v20);
      if (v2)
      {

        goto LABEL_23;
      }

      MEMORY[0x24C1AE560]();
      if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v24 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_24794F084();
      }

      sub_24794F0A4();
      v6 = v28;
      ++v19;
      if (v22 == v18)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    swift_once();
  }

LABEL_21:

LABEL_23:

  return v6;
}

void sub_2478EF568(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = [a1 eventBody];
  if (v4)
  {
    v18 = v4;
    v5 = [v4 dataCollectionUseCase];
    if (v5 && (v6 = v5, sub_24794EF04(), v6, v7 = sub_24794F004(), , , (v7 & 1) != 0) && (v8 = [v18 onDeviceSampleIdentifier]) != 0)
    {

      swift_beginAccess();
      v9 = v18;
      MEMORY[0x24C1AE560]();
      if (*((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v17 = *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_24794F084();
      }

      sub_24794F0A4();
      swift_endAccess();
      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v10 = sub_24794ED34();
      __swift_project_value_buffer(v10, qword_27EE58DF8);
      v11 = v9;
      v12 = sub_24794ED14();
      v13 = sub_24794F154();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        *v14 = 138412290;
        *(v14 + 4) = v11;
        *v15 = v18;
        v16 = v11;
        _os_log_impl(&dword_2478E1000, v12, v13, "#Utils: Current eventBody: %@ from BiomeStream", v14, 0xCu);
        sub_2478EFF2C(v15);
        MEMORY[0x24C1AF180](v15, -1, -1);
        MEMORY[0x24C1AF180](v14, -1, -1);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_2478EF874(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_2478EF8DC()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

unint64_t sub_2478EF948(unint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v11 = MEMORY[0x277D84F90];
  if (!(result >> 62))
  {
    v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

  result = sub_24794F414();
  v6 = result;
  if (!result)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  if (v6 < 1)
  {
    __break(1u);
  }

  else
  {
    v7 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x24C1AE890](v7, v5);
      }

      else
      {
        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = (*(*v8 + 1256))(a2, a3);
      MEMORY[0x24C1AE560]();
      if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v10 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_24794F084();
      }

      ++v7;
      sub_24794F0A4();
    }

    while (v6 != v7);
    return v11;
  }

  return result;
}

uint64_t sub_2478EFACC()
{
  v0 = [BiomeLibrary() Siri];
  swift_unknownObjectRelease();
  v1 = [v0 OnDeviceAnalytics];
  swift_unknownObjectRelease();
  v2 = [v1 SpeakerIdSampling];
  swift_unknownObjectRelease();
  v3 = [v2 publisher];

  v4 = swift_allocObject();
  *(v4 + 16) = MEMORY[0x277D84F90];
  v14 = nullsub_1;
  v15 = 0;
  v10 = MEMORY[0x277D85DD0];
  v11 = 1107296256;
  v12 = sub_2478F0B14;
  v13 = &block_descriptor_16;
  v5 = _Block_copy(&v10);
  v14 = sub_2478EFFAC;
  v15 = v4;
  v10 = MEMORY[0x277D85DD0];
  v11 = 1107296256;
  v12 = sub_2478F0B14;
  v13 = &block_descriptor_19;
  v6 = _Block_copy(&v10);

  v7 = [v3 sinkWithCompletion:v5 receiveInput:v6];

  _Block_release(v6);
  _Block_release(v5);

  swift_beginAccess();
  v8 = *(v4 + 16);

  return v8;
}

uint64_t sub_2478EFCFC()
{
  v0 = [BiomeLibrary() Siri];
  swift_unknownObjectRelease();
  v1 = [v0 OnDeviceAnalytics];
  swift_unknownObjectRelease();
  v2 = [v1 SpeakerIdSampling];
  swift_unknownObjectRelease();
  v3 = [v2 pruner];

  v4 = sub_24794EEF4();
  v7[4] = sub_2478EEA2C;
  v7[5] = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_2478F0AF0;
  v7[3] = &block_descriptor;
  v5 = _Block_copy(v7);

  [v3 deleteWithPolicy:v4 eventsPassingTest:v5];

  _Block_release(v5);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2478EFE9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2478EFACC();
  sub_2478EFCFC();
  sub_2478EEA34(v4, a1, a2);
  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);

    return v5;
  }

  v5 = sub_24794F414();

  if ((v5 & 0x8000000000000000) == 0)
  {
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_2478EFF2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57280, &unk_2479503C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2478EFFC8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t sub_2478EFFF4(void *a1)
{
  v1 = a1;
  v53[1] = *MEMORY[0x277D85DE8];
  v53[0] = 0;
  v2 = [a1 remoteDevicesWithError_];
  v3 = v53[0];
  v4 = sub_2478F0A84();
  v5 = sub_24794F064();
  v6 = v3;

  v46 = v6;
  if (v6)
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v7 = sub_24794ED34();
    __swift_project_value_buffer(v7, qword_27EE58DF8);
    v8 = sub_24794ED14();
    v9 = sub_24794F164();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = v5;
      v12 = swift_slowAlloc();
      *v10 = 138412290;
      *(v10 + 4) = v46;
      *v12 = v3;
      v13 = v46;
      _os_log_impl(&dword_2478E1000, v8, v9, "#BiomeStreamProcess: get remove device failed with error: %@", v10, 0xCu);
      sub_2478EFF2C(v12);
      v14 = v12;
      v5 = v11;
      MEMORY[0x24C1AF180](v14, -1, -1);
      MEMORY[0x24C1AF180](v10, -1, -1);
    }
  }

  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v15 = sub_24794ED34();
  __swift_project_value_buffer(v15, qword_27EE58DF8);

  v16 = sub_24794ED14();
  v17 = sub_24794F174();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v53[0] = v19;
    *v18 = 136315138;
    v20 = MEMORY[0x24C1AE590](v5, v4);
    v22 = sub_247924380(v20, v21, v53);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_2478E1000, v16, v17, "#BiomeStreamProcess: remote devices: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x24C1AF180](v19, -1, -1);
    MEMORY[0x24C1AF180](v18, -1, -1);
  }

  v53[0] = MEMORY[0x277D84F90];
  if (v5 >> 62)
  {
    v23 = sub_24794F414();
    if (v23)
    {
      goto LABEL_13;
    }

LABEL_25:
    v43 = MEMORY[0x277D84F90];
    goto LABEL_26;
  }

  v23 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v23)
  {
    goto LABEL_25;
  }

LABEL_13:
  if (v23 < 1)
  {
    __break(1u);
  }

  v24 = 0;
  v25 = v5 & 0xC000000000000001;
  v47 = v5;
  v48 = v5 & 0xC000000000000001;
  do
  {
    if (v25)
    {
      v26 = MEMORY[0x24C1AE890](v24, v5);
    }

    else
    {
      v26 = *(v5 + 8 * v24 + 32);
    }

    v27 = v26;
    v50 = [v1 prunerForDevice_];
    v28 = v27;
    v29 = sub_24794ED14();
    v30 = sub_24794F154();

    v51 = v28;
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v52 = v49;
      *v31 = 136315138;
      v32 = [v28 description];
      v33 = v23;
      v34 = sub_24794EF04();
      v35 = v1;
      v37 = v36;

      v38 = v34;
      v23 = v33;
      v39 = sub_247924380(v38, v37, &v52);
      v1 = v35;

      *(v31 + 4) = v39;
      v5 = v47;
      _os_log_impl(&dword_2478E1000, v29, v30, "#BiomeStreamProcess: got device pruner for device: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x24C1AF180](v49, -1, -1);
      v40 = v31;
      v25 = v48;
      MEMORY[0x24C1AF180](v40, -1, -1);
    }

    v41 = v50;
    MEMORY[0x24C1AE560]();
    if (*((v53[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v42 = *((v53[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_24794F084();
      v25 = v48;
    }

    ++v24;
    sub_24794F0A4();
  }

  while (v23 != v24);
  v43 = v53[0];
LABEL_26:

  v44 = *MEMORY[0x277D85DE8];
  return v43;
}

uint64_t sub_2478F0540(void *a1)
{
  v1 = [a1 pruner];
  v2 = sub_24794EEF4();
  v5[4] = sub_2478EEA2C;
  v5[5] = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_2478F0AF0;
  v5[3] = &block_descriptor_40;
  v3 = _Block_copy(v5);

  [v1 deleteWithPolicy:v2 eventsPassingTest:v3];

  _Block_release(v3);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  return result;
}

void sub_2478F0668()
{
  v1 = [BiomeLibrary() Siri];
  swift_unknownObjectRelease();
  v2 = [v1 OnDeviceAnalytics];
  swift_unknownObjectRelease();
  v3 = [v2 AttentionAndInvocationSampling];
  swift_unknownObjectRelease();
  sub_2478F0540(v3);
  if (v0)
  {
  }

  else
  {
    v4 = sub_2478EFFF4(v3);
    v5 = v4;
    if (v4 >> 62)
    {
      goto LABEL_15;
    }

    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      while (1)
      {
        v11 = v3;
        if (v6 < 1)
        {
          break;
        }

        v3 = 0;
        while (1)
        {
          v7 = (v5 & 0xC000000000000001) != 0 ? MEMORY[0x24C1AE890](v3, v5) : *(v5 + 8 * v3 + 32);
          v8 = v7;
          v9 = sub_24794EEF4();
          aBlock[4] = sub_2478EEA2C;
          aBlock[5] = 0;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_2478F0AF0;
          aBlock[3] = &block_descriptor_46;
          v10 = _Block_copy(aBlock);

          [v8 deleteWithPolicy:v9 eventsPassingTest:v10];

          _Block_release(v10);
          if (swift_isEscapingClosureAtFileLocation())
          {
            break;
          }

          v3 = v3 + 1;
          if (v6 == v3)
          {

            return;
          }
        }

        __break(1u);
LABEL_15:
        v6 = sub_24794F414();
        if (!v6)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_16:
    }
  }
}

uint64_t sub_2478F08E4()
{
  v0 = [BiomeLibrary() Siri];
  swift_unknownObjectRelease();
  v1 = [v0 OnDeviceAnalytics];
  swift_unknownObjectRelease();
  v2 = [v1 SpeakerIdSampling];
  swift_unknownObjectRelease();
  v3 = [v2 pruner];
  v4 = sub_24794EEF4();
  v7[4] = sub_2478EEA2C;
  v7[5] = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_2478F0AF0;
  v7[3] = &block_descriptor_43;
  v5 = _Block_copy(v7);

  [v3 deleteWithPolicy:v4 eventsPassingTest:v5];

  _Block_release(v5);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2478F0A84()
{
  result = qword_27EE57308;
  if (!qword_27EE57308)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE57308);
  }

  return result;
}

uint64_t sub_2478F0B18(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v219 = &v213 - v6;
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57278, &unk_247950590);
  v7 = *(*(v237 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v237);
  v235 = &v213 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v248 = &v213 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v213 - v12;
  v14 = sub_24794EC04();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v215 = &v213 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 16) = 514;
  v18 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_date;
  v19 = sub_24794EBB4();
  v20 = *(v19 - 8);
  v21 = *(v20 + 56);
  v218 = v18;
  v217 = v21;
  v216 = v20 + 56;
  v21(v1 + v18, 1, 1, v19);
  v22 = (v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_deviceType);
  *v22 = 0;
  v22[1] = 0;
  v240 = v22;
  v23 = (v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_systemBuild);
  *v23 = 0;
  v23[1] = 0;
  v241 = v23;
  v24 = (v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_audioInterfaceVendorId);
  *v24 = 0;
  v24[1] = 0;
  v239 = v24;
  v25 = (v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_firstPartyAudioInterfaceProductId);
  *v25 = 0;
  v25[1] = 0;
  v238 = v25;
  v220 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_siriInputLocale;
  *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_siriInputLocale) = 0;
  v26 = v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_invocationSource;
  *v26 = 0;
  v221 = v26;
  *(v26 + 4) = 1;
  v27 = v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_motionActivity;
  *v27 = 0;
  v222 = v27;
  *(v27 + 4) = 1;
  v228 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_isWakeFromSleep;
  *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_isWakeFromSleep) = 2;
  v229 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_isMediaPlaying;
  *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_isMediaPlaying) = 2;
  v230 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_isDeviceHandHeld;
  *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_isDeviceHandHeld) = 2;
  v28 = v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_audioCodec;
  *v28 = 0;
  v223 = v28;
  *(v28 + 4) = 1;
  v29 = v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_audioSource;
  *v29 = 0;
  v224 = v29;
  *(v29 + 4) = 1;
  v30 = v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_asrTask;
  *v30 = 0;
  v225 = v30;
  *(v30 + 4) = 1;
  v31 = (v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_audioSkippedNumSamples);
  *v31 = 0;
  v246 = v31;
  v31[8] = 1;
  v32 = (v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_postItn1Best);
  *v32 = 0;
  v32[1] = 0;
  v243 = v32;
  v33 = (v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_subDomain);
  *v33 = 0;
  v33[1] = 0;
  v242 = v33;
  *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_isPersonalRequest) = 2;
  *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_isPersonalizedRequest) = 2;
  v34 = (v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_responseId);
  *v34 = 0;
  v34[1] = 0;
  v35 = v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_orchCancelledReason;
  *v35 = 0;
  v226 = v35;
  *(v35 + 4) = 1;
  v36 = *(v15 + 56);
  v249 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_audioId;
  v36(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_audioId, 1, 1, v14);
  v37 = v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_triggerPhrase;
  *v37 = 0;
  v227 = v37;
  *(v37 + 4) = 1;
  v38 = (v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_enrollmentId);
  *v38 = 0;
  v38[1] = 0;
  v214 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_location;
  *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_location) = 0;
  v244 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_sampleId;
  v36(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_sampleId, 1, 1, v14);
  v236 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_requestId;
  v36(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_requestId, 1, 1, v14);
  v39 = (v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_uniqueSpeakerIdentifier);
  *v39 = 0;
  v39[1] = 0;
  v231 = v39;
  v245 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_odSampleId;
  v36(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_odSampleId, 1, 1, v14);
  v40 = (v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_userSamplingId);
  *v40 = 0;
  v40[1] = 0;
  v232 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_isMultiUserRequest;
  *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_isMultiUserRequest) = 2;
  v41 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_clockSessionId;
  v247 = v14;
  v250 = v15 + 56;
  v36(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_clockSessionId, 1, 1, v14);
  v42 = v36;
  v43 = v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_userIdentifyClassification;
  *v43 = 0;
  v233 = v43;
  *(v43 + 4) = 1;
  v234 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_userOptIn;
  *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_userOptIn) = 0;
  strcpy(v251, "logic_clock_id");
  HIBYTE(v251[1]) = -18;
  sub_24794F2E4();
  if (*(a1 + 16) && (v44 = sub_24792BEB4(&v253), (v45 & 1) != 0))
  {
    sub_2478F65EC(*(a1 + 56) + 32 * v44, &v254);
    sub_2478F6598(&v253);
    if (swift_dynamicCast())
    {
      sub_24794EBC4();

      v46 = v247;
      if ((*(v15 + 48))(v13, 1, v247) == 1)
      {
        sub_2478E9620(v13, &qword_27EE57278, &unk_247950590);
      }

      else
      {
        v151 = *(v15 + 32);
        v152 = v215;
        v151(v215, v13, v46);
        v153 = v248;
        v151(v248, v152, v46);
        v42(v153, 0, 1, v46);
        swift_beginAccess();
        sub_2478F6648(v153, v1 + v41, &qword_27EE57278, &unk_247950590);
        swift_endAccess();
      }
    }
  }

  else
  {
    sub_2478F6598(&v253);
  }

  v251[0] = 0xD000000000000017;
  v251[1] = 0x8000000247952D50;
  sub_24794F2E4();
  if (*(a1 + 16) && (v47 = sub_24792BEB4(&v253), (v48 & 1) != 0))
  {
    sub_2478F65EC(*(a1 + 56) + 32 * v47, &v254);
    sub_2478F6598(&v253);
    if (swift_dynamicCast())
    {
      v49 = v219;
      sub_24794EB64();
      v217(v49, 0, 1, v19);
      v50 = v218;
      swift_beginAccess();
      sub_2478F6648(v49, v2 + v50, &qword_27EE572D0, &unk_2479504E0);
      swift_endAccess();
    }
  }

  else
  {
    sub_2478F6598(&v253);
  }

  strcpy(v251, "sat_triggered");
  HIWORD(v251[1]) = -4864;
  sub_24794F2E4();
  if (*(a1 + 16) && (v51 = sub_24792BEB4(&v253), (v52 & 1) != 0))
  {
    sub_2478F65EC(*(a1 + 56) + 32 * v51, &v254);
    sub_2478F6598(&v253);
    if (swift_dynamicCast())
    {
      *(v2 + 17) = v251[0];
      goto LABEL_22;
    }
  }

  else
  {
    sub_2478F6598(&v253);
  }

  strcpy(v251, "sat_triggered");
  HIWORD(v251[1]) = -4864;
  sub_24794F2E4();
  if (*(a1 + 16))
  {
    v53 = sub_24792BEB4(&v253);
    if (v54)
    {
      sub_2478F65EC(*(a1 + 56) + 32 * v53, &v254);
      sub_2478F6598(&v253);
      v55 = swift_dynamicCast();
      v56 = v248;
      if (v55)
      {
        *(v2 + 17) = v251[0] == 1;
      }

      goto LABEL_23;
    }
  }

  sub_2478F6598(&v253);
LABEL_22:
  v56 = v248;
LABEL_23:
  strcpy(v251, "request_id");
  BYTE3(v251[1]) = 0;
  HIDWORD(v251[1]) = -369098752;
  sub_24794F2E4();
  if (*(a1 + 16) && (v57 = sub_24792BEB4(&v253), (v58 & 1) != 0))
  {
    sub_2478F65EC(*(a1 + 56) + 32 * v57, &v254);
    sub_2478F6598(&v253);
    if (swift_dynamicCast())
    {
      sub_24794EBC4();

      v59 = v236;
      swift_beginAccess();
      sub_2478F6648(v56, v2 + v59, &qword_27EE57278, &unk_247950590);
      swift_endAccess();
    }
  }

  else
  {
    sub_2478F6598(&v253);
  }

  v251[0] = 0xD000000000000011;
  v251[1] = 0x8000000247952D70;
  sub_24794F2E4();
  if (*(a1 + 16) && (v60 = sub_24792BEB4(&v253), (v61 & 1) != 0))
  {
    sub_2478F65EC(*(a1 + 56) + 32 * v60, &v254);
    sub_2478F6598(&v253);
    if (swift_dynamicCast())
    {
      v62 = _sSo17SISchemaISOLocaleC23CoreSpeechDataAnalyticsE10fromStringyABSgSSFZ_0(v251[0], v251[1]);

      v63 = *(v2 + v220);
      *(v2 + v220) = v62;
    }
  }

  else
  {
    sub_2478F6598(&v253);
  }

  v251[0] = 0xD000000000000011;
  v251[1] = 0x8000000247952D90;
  sub_24794F2E4();
  if (*(a1 + 16) && (v64 = sub_24792BEB4(&v253), (v65 & 1) != 0))
  {
    sub_2478F65EC(*(a1 + 56) + 32 * v64, &v254);
    sub_2478F6598(&v253);
    if (swift_dynamicCast())
    {
      v66 = sub_24794EEF4();

      v67 = v66;
      if ([v67 isEqualToString:@"INVOCATIONSOURCE_UNKNOWN_INVOCATION_SOURCE"])
      {
        v68 = 0;
      }

      else if ([v67 isEqualToString:@"INVOCATIONSOURCE_HOME_BUTTON"])
      {
        v68 = 1;
      }

      else if ([v67 isEqualToString:@"INVOCATIONSOURCE_LOCK_BUTTON"])
      {
        v68 = 2;
      }

      else if ([v67 isEqualToString:@"INVOCATIONSOURCE_BLUETOOTH_HEADSET_BUTTON"])
      {
        v68 = 3;
      }

      else if ([v67 isEqualToString:@"INVOCATIONSOURCE_STEERING_WHEEL_BUTTON"])
      {
        v68 = 4;
      }

      else if ([v67 isEqualToString:@"INVOCATIONSOURCE_TOUCHBAR_BUTTON"])
      {
        v68 = 5;
      }

      else if ([v67 isEqualToString:@"INVOCATIONSOURCE_KEYBOARD_SHORTCUT"])
      {
        v68 = 6;
      }

      else if ([v67 isEqualToString:@"INVOCATIONSOURCE_APPLICATION_ICON"])
      {
        v68 = 7;
      }

      else if ([v67 isEqualToString:@"INVOCATIONSOURCE_WIRED_MICROPHONE_BUTTON"])
      {
        v68 = 8;
      }

      else if ([v67 isEqualToString:@"INVOCATIONSOURCE_REMOTE_MICROPHONE_BUTTON"])
      {
        v68 = 9;
      }

      else if ([v67 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_BANNER"])
      {
        v68 = 10;
      }

      else
      {
        if ([v67 isEqualToString:@"INVOCATIONSOURCE_CARD_SECTION"])
        {
          v68 = 11;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_TAP_TO_EDIT"])
        {
          v68 = 12;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_STRUCTURED_DICTATION"])
        {
          v68 = 13;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_SOFT_BUTTON"])
        {
          v68 = 14;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_AUTO_PROMPT"])
        {
          v68 = 15;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_RAISE_TO_SPEAK"])
        {
          v68 = 16;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_VOICE_TRIGGER"])
        {
          v68 = 17;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_HARDWARE_BUTTON"])
        {
          v68 = 18;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_HANDOFF"])
        {
          v68 = 19;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_TRANSCRIPT_ELEMENT"])
        {
          v68 = 20;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_BLUETOOTH_HEADSET_VOICE_TRIGGER"])
        {
          v68 = 21;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_MENU_BAR"])
        {
          v68 = 22;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DOCK_ICON"])
        {
          v68 = 23;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_HOME_BUTTON"])
        {
          v68 = 24;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_VOICETRIGGER"])
        {
          v68 = 25;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_GATEKEEPER"])
        {
          v68 = 26;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_SIRI_BUTTON"])
        {
          v68 = 27;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_IN_APP_SIRI_AFFORDANCE"])
        {
          v68 = 28;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_BREADCRUMB"])
        {
          v68 = 29;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_GUIDE_BUTTON"])
        {
          v68 = 30;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_TRANSCRIPT_VERTICAL_SWIPE"])
        {
          v68 = 31;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_SPOTLIGHT_SUGGESTION"])
        {
          v68 = 32;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_SPOTLIGHT_ASK_SIRI"])
        {
          v68 = 33;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_SIRI_COMPLICATION"])
        {
          v68 = 34;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_TV_REMOTE_BUTTON"])
        {
          v68 = 35;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_NONAPPLE_REMOTE"])
        {
          v68 = 36;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_REMOTE_APP"])
        {
          v68 = 37;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_REMOTE_UI"])
        {
          v68 = 38;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_MIC_BUTTON"])
        {
          v68 = 39;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_INPUT_FIELD_MIC_BUTTON"])
        {
          v68 = 40;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_SPEECH_API"])
        {
          v68 = 41;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_TV_REMOTE"])
        {
          v68 = 42;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_SIRI_VOICE_SHORTCUT_ENROLLMENT"])
        {
          v68 = 43;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_SIRI_VOICE_TRIGGER_ENROLLMENT"])
        {
          v68 = 44;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_SIRI_VOICE_TRIGGER_PROXIMITY_ENROLLMENT"])
        {
          v68 = 45;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_SIRI_SECONDARY_DEVICE"])
        {
          v68 = 46;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_SIRI_ANNOUNCE"])
        {
          v68 = 47;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_SIRI_TRIGGERLESS"])
        {
          v68 = 48;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_SIRI_NOTIFICATION"])
        {
          v68 = 49;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_TEST_AUTOMATION"])
        {
          v68 = 50;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_WAVEFORM_GLYPH_BUTTON"])
        {
          v68 = 51;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_SIRI_AUTO_PROMPT"])
        {
          v68 = 52;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_GLOBE_BUTTON"])
        {
          v68 = 53;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_MIC_BUTTON_LONG_PRESS"])
        {
          v68 = 54;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_ACCESSIBILITY_BACKTAP"])
        {
          v68 = 55;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_VOICECOMMAND_BUTTON"])
        {
          v68 = 56;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_VOICECOMMAND_BUTTON"])
        {
          v68 = 57;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_APPLETV_REMOTE_DEVICE"])
        {
          v68 = 58;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_MESSAGE_SEND_BUTTON"])
        {
          v68 = 59;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_MIC_BUTTON_WITH_INPUT_SWITCHER"])
        {
          v68 = 60;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_INPUT_FIELD_MIC_BUTTON_FIRST_RESPONDER"])
        {
          v68 = 61;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_SAFARI_MIC_BUTTON_IN_ADDRESS_BAR"])
        {
          v68 = 62;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_SAFARI_MIC_BUTTON_IN_ADDRESS_BAR_FIRST_RESPONDER"])
        {
          v68 = 63;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_FROM_KEYBOARD_WHILE_SEARCH_BAR_VISIBLE"])
        {
          v68 = 64;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_FROM_KEYBOARD_WITH_INPUT_SWITCHER_WHILE_SEARCH_MIC_VISIBLE"])
        {
          v68 = 65;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_FROM_KEYBOARD_WHILE_SAFARI_MIC_VISIBLE"])
        {
          v68 = 66;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_FROM_KEYBOARD_WITH_INPUT_SWITCHER_WHILE_SAFARI_MIC_VISIBLE"])
        {
          v68 = 67;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_MIC_BUTTON_FROM_QUICKBOARD"])
        {
          v68 = 68;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_MESSAGES_TEXT_FIELD_MIC_BUTTON"])
        {
          v68 = 69;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_MIC_ICON_UCBBAR"])
        {
          v68 = 70;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_GLOBE_BUTTON_SHORTCUT"])
        {
          v68 = 71;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_STANDARD_SHORTCUT"])
        {
          v68 = 72;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_SIRI_ANNOUNCE_CALL"])
        {
          v68 = 73;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_SIRI_ANNOUNCE_NOTIFICATION"])
        {
          v68 = 74;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_AIRPODS_MAX_BUTTON_PRESS"])
        {
          v68 = 75;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_QUICKBOARD_TEXT_INPUT_AUTO_START"])
        {
          v68 = 76;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_QUICKBOARD_TEXT_INPUT_MIC_BUTTON_PRESSED"])
        {
          v68 = 77;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_QUICKBOARD_TEXT_INPUT_LANGUAGE_PICKER_ITEM_SELECTED"])
        {
          v68 = 78;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_FLEXIBLE_FOLLOW_UPS"])
        {
          v68 = 79;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_JS_VOICE_TRIGGER"])
        {
          v68 = 80;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_MESSAGES_TEXT_FIELD_MIC_BUTTON_WHILE_KEYBOARD_NOT_VISIBLE"])
        {
          v68 = 81;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_POP_UP_UI_LANGUAGE_SWITCHER_ICON"])
        {
          v68 = 82;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_LONG_PRESS_TEXT_INPUT_FIELD"])
        {
          v68 = 83;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_SIRI_ANNOUNCE_DROP_IN"])
        {
          v68 = 84;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_TYPE_TO_SIRI"])
        {
          v68 = 85;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_PINCH"])
        {
          v68 = 87;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_GAZE"])
        {
          v68 = 88;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_EXECUTE_ON_REMOTE_REQUEST"])
        {
          v68 = 89;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_WATCH_GESTURE_PRIMARY"])
        {
          v68 = 90;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_QUICK_TYPE_TO_SIRI"])
        {
          v68 = 91;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_HEAD_GESTURE"])
        {
          v68 = 92;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_SOFT_KEYBOARD_BUTTON"])
        {
          v68 = 93;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_WRITING_TOOLS"])
        {
          v68 = 94;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_GENERATIVE_FIELD"])
        {
          v68 = 95;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_SUGGESTION"])
        {
          v68 = 96;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_TYPE_TO_SIRI_CONTROL_CENTER"])
        {
          v68 = 97;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_VISUAL_INTELLIGENCE"])
        {
          v68 = 98;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_VISUAL_INTELLIGENCE_QUICK_TYPE"])
        {
          v68 = 99;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_QUICK_TYPE_TO_SIRI_KEYBOARD_SHORTCUT"])
        {
          v68 = 100;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_QUICK_TYPE_TO_SIRI_MENU_BAR"])
        {
          v68 = 101;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_TEXTFIELD_TAP"])
        {
          v68 = 102;
        }

        else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_TEXTFIELD_TRAILING_MIC_BUTTON"])
        {
          v68 = 103;
        }

        else
        {
          v68 = 0;
        }

        v56 = v248;
      }

      v212 = v221;
      *v221 = v68;
      *(v212 + 4) = 0;
    }
  }

  else
  {
    sub_2478F6598(&v253);
  }

  v251[0] = 0x615F6E6F69746F6DLL;
  v251[1] = 0xEF79746976697463;
  sub_24794F2E4();
  if (*(a1 + 16) && (v69 = sub_24792BEB4(&v253), (v70 & 1) != 0))
  {
    sub_2478F65EC(*(a1 + 56) + 32 * v69, &v254);
    sub_2478F6598(&v253);
    if (swift_dynamicCast())
    {
      v71 = sub_24794EEF4();

      v72 = v71;
      if ([v72 isEqualToString:@"ORCHMOTIONACTIVITY_UNKNOWN"])
      {
        v73 = 0;
      }

      else if ([v72 isEqualToString:@"ORCHMOTIONACTIVITY_MOVING"])
      {
        v73 = 1;
      }

      else if ([v72 isEqualToString:@"ORCHMOTIONACTIVITY_STATIONARY"])
      {
        v73 = 2;
      }

      else if ([v72 isEqualToString:@"ORCHMOTIONACTIVITY_IN_VEHICLE_MOVING"])
      {
        v73 = 3;
      }

      else if ([v72 isEqualToString:@"ORCHMOTIONACTIVITY_IN_VEHICLE_STATIC"])
      {
        v73 = 4;
      }

      else if ([v72 isEqualToString:@"ORCHMOTIONACTIVITY_IN_VEHICLE_STATIONARY"])
      {
        v73 = 5;
      }

      else
      {
        v73 = 0;
      }

      v208 = v222;
      *v222 = v73;
      *(v208 + 4) = 0;
    }
  }

  else
  {
    sub_2478F6598(&v253);
  }

  strcpy(v251, "audio_codec");
  HIDWORD(v251[1]) = -352321536;
  sub_24794F2E4();
  if (*(a1 + 16) && (v74 = sub_24792BEB4(&v253), (v75 & 1) != 0))
  {
    sub_2478F65EC(*(a1 + 56) + 32 * v74, &v254);
    sub_2478F6598(&v253);
    if (swift_dynamicCast())
    {
      v76 = sub_24794EEF4();

      v77 = v76;
      if ([v77 isEqualToString:@"MHASRAUDIOCODEC_UNKNOWN"])
      {
        v78 = 0;
      }

      else if ([v77 isEqualToString:@"MHASRAUDIOCODEC_PCM_MONO_16BIT_8000HZ_VALUE"])
      {
        v78 = 1;
      }

      else if ([v77 isEqualToString:@"MHASRAUDIOCODEC_PCM_MONO_16BIT_11025HZ_VALUE"])
      {
        v78 = 2;
      }

      else if ([v77 isEqualToString:@"MHASRAUDIOCODEC_PCM_MONO_16BIT_16000HZ_VALUE"])
      {
        v78 = 3;
      }

      else if ([v77 isEqualToString:@"MHASRAUDIOCODEC_PCM_MONO_16BIT_22050HZ_VALUE"])
      {
        v78 = 4;
      }

      else if ([v77 isEqualToString:@"MHASRAUDIOCODEC_PCM_MONO_16BIT_32000HZ_VALUE"])
      {
        v78 = 5;
      }

      else if ([v77 isEqualToString:@"MHASRAUDIOCODEC_SPEEX_NB_QUALITY7_VALUE"])
      {
        v78 = 6;
      }

      else if ([v77 isEqualToString:@"MHASRAUDIOCODEC_SPEEX_WB_QUALITY8_VALUE"])
      {
        v78 = 7;
      }

      else if ([v77 isEqualToString:@"MHASRAUDIOCODEC_ALAC_MONO_8000HZ_VALUE"])
      {
        v78 = 8;
      }

      else if ([v77 isEqualToString:@"MHASRAUDIOCODEC_ALAC_MONO_16000HZ_VALUE"])
      {
        v78 = 9;
      }

      else if ([v77 isEqualToString:@"MHASRAUDIOCODEC_OPUS_MONO_8000HZ_VALUE"])
      {
        v78 = 10;
      }

      else if ([v77 isEqualToString:@"MHASRAUDIOCODEC_OPUS_MONO_16000HZ_VALUE"])
      {
        v78 = 11;
      }

      else
      {
        v78 = 0;
      }

      v211 = v223;
      *v223 = v78;
      *(v211 + 4) = 0;
    }
  }

  else
  {
    sub_2478F6598(&v253);
  }

  strcpy(v251, "audio_source");
  BYTE5(v251[1]) = 0;
  HIWORD(v251[1]) = -5120;
  sub_24794F2E4();
  if (*(a1 + 16) && (v79 = sub_24792BEB4(&v253), (v80 & 1) != 0))
  {
    sub_2478F65EC(*(a1 + 56) + 32 * v79, &v254);
    sub_2478F6598(&v253);
    if (swift_dynamicCast())
    {
      v81 = sub_24794EEF4();

      v82 = v81;
      if ([v82 isEqualToString:@"MHASSISTANTDAEMONAUDIOSOURCE_UNKNOWN"])
      {
        v83 = 0;
      }

      else if ([v82 isEqualToString:@"MHASSISTANTDAEMONAUDIOSOURCE_LINEIN"])
      {
        v83 = 1;
      }

      else if ([v82 isEqualToString:@"MHASSISTANTDAEMONAUDIOSOURCE_BUILTIN_MIC"])
      {
        v83 = 2;
      }

      else if ([v82 isEqualToString:@"MHASSISTANTDAEMONAUDIOSOURCE_WIREDHEADSET_MIC"])
      {
        v83 = 3;
      }

      else if ([v82 isEqualToString:@"MHASSISTANTDAEMONAUDIOSOURCE_BLUETOOTH_HANDSFREE_DEVICE"])
      {
        v83 = 4;
      }

      else if ([v82 isEqualToString:@"MHASSISTANTDAEMONAUDIOSOURCE_USB_AUDIO"])
      {
        v83 = 5;
      }

      else if ([v82 isEqualToString:@"MHASSISTANTDAEMONAUDIOSOURCE_CAR_AUDIO"])
      {
        v83 = 6;
      }

      else if ([v82 isEqualToString:@"MHASSISTANTDAEMONAUDIOSOURCE_BLUETOOTH_DOAP_DEVICE"])
      {
        v83 = 7;
      }

      else if ([v82 isEqualToString:@"MHASSISTANTDAEMONAUDIOSOURCE_ENHANCED_CARPLAY_DEVICE"])
      {
        v83 = 8;
      }

      else
      {
        v83 = 0;
      }

      v209 = v224;
      *v224 = v83;
      *(v209 + 4) = 0;
    }
  }

  else
  {
    sub_2478F6598(&v253);
  }

  strcpy(v251, "asr_task");
  BYTE1(v251[1]) = 0;
  WORD1(v251[1]) = 0;
  HIDWORD(v251[1]) = -402653184;
  sub_24794F2E4();
  if (*(a1 + 16) && (v84 = sub_24792BEB4(&v253), (v85 & 1) != 0))
  {
    sub_2478F65EC(*(a1 + 56) + 32 * v84, &v254);
    sub_2478F6598(&v253);
    if (swift_dynamicCast())
    {
      v86 = sub_24794EEF4();

      v87 = v86;
      if ([v87 isEqualToString:@"ASRDATAPACKTASK_UNKNOWN"])
      {
        v88 = 0;
      }

      else if ([v87 isEqualToString:@"ASRDATAPACKTASK_SEARCH_OR_MESSAGING"])
      {
        v88 = 1;
      }

      else if ([v87 isEqualToString:@"ASRDATAPACKTASK_DICTATION"])
      {
        v88 = 2;
      }

      else if ([v87 isEqualToString:@"ASRDATAPACKTASK_WEB_SEARCH"])
      {
        v88 = 3;
      }

      else if ([v87 isEqualToString:@"ASRDATAPACKTASK_TSHOT"])
      {
        v88 = 4;
      }

      else if ([v87 isEqualToString:@"ASRDATAPACKTASK_SIRI_DICTATION"])
      {
        v88 = 5;
      }

      else if ([v87 isEqualToString:@"ASRDATAPACKTASK_DICTATION_WITH_VOICE_COMMAND"])
      {
        v88 = 6;
      }

      else if ([v87 isEqualToString:@"ASRDATAPACKTASK_BETO"])
      {
        v88 = 7;
      }

      else if ([v87 isEqualToString:@"ASRDATAPACKTASK_BETO_DICTATION"])
      {
        v88 = 8;
      }

      else
      {
        v88 = 0;
      }

      v210 = v225;
      *v225 = v88;
      *(v210 + 4) = 0;
    }
  }

  else
  {
    sub_2478F6598(&v253);
  }

  v251[0] = 0xD000000000000015;
  v251[1] = 0x8000000247952DB0;
  sub_24794F2E4();
  if (*(a1 + 16) && (v89 = sub_24792BEB4(&v253), (v90 & 1) != 0))
  {
    sub_2478F65EC(*(a1 + 56) + 32 * v89, &v254);
    sub_2478F6598(&v253);
    if (swift_dynamicCast())
    {
      v91 = sub_24794EEF4();

      v92 = v91;
      if ([v92 isEqualToString:@"ORCHREQUESTCANCELLATIONREASON_UNKNOWN"])
      {
        v93 = 0;
      }

      else if ([v92 isEqualToString:@"ORCHREQUESTCANCELLATIONREASON_MITIGATED"])
      {
        v93 = 1;
      }

      else if ([v92 isEqualToString:@"ORCHREQUESTCANCELLATIONREASON_CANCEL_COMMAND"])
      {
        v93 = 2;
      }

      else
      {
        v93 = 0;
      }

      v154 = v226;
      *v226 = v93;
      *(v154 + 4) = 0;
    }
  }

  else
  {
    sub_2478F6598(&v253);
  }

  strcpy(v251, "trigger_phrase");
  HIBYTE(v251[1]) = -18;
  sub_24794F2E4();
  if (*(a1 + 16) && (v94 = sub_24792BEB4(&v253), (v95 & 1) != 0))
  {
    sub_2478F65EC(*(a1 + 56) + 32 * v94, &v254);
    sub_2478F6598(&v253);
    if (swift_dynamicCast())
    {
      v96 = sub_2479440D4(v251[0], v251[1]);

      v97 = v227;
      *v227 = v96;
      *(v97 + 4) = 0;
    }
  }

  else
  {
    sub_2478F6598(&v253);
  }

  v251[0] = 0xD000000000000019;
  v251[1] = 0x8000000247952DD0;
  sub_24794F2E4();
  if (*(a1 + 16) && (v98 = sub_24792BEB4(&v253), (v99 & 1) != 0))
  {
    sub_2478F65EC(*(a1 + 56) + 32 * v98, &v254);
    sub_2478F6598(&v253);
    if (swift_dynamicCast())
    {
      v100 = v246;
      *v246 = v251[0];
      *(v100 + 8) = 0;
    }
  }

  else
  {
    sub_2478F6598(&v253);
  }

  v246 = [objc_allocWithZone(MEMORY[0x277D5A950]) init];
  strcpy(v251, "latitude");
  BYTE1(v251[1]) = 0;
  WORD1(v251[1]) = 0;
  HIDWORD(v251[1]) = -402653184;
  sub_24794F2E4();
  if (!*(a1 + 16) || (v101 = sub_24792BEB4(&v253), (v102 & 1) == 0))
  {
    sub_2478F6598(&v253);
LABEL_89:
    strcpy(v251, "latitude");
    BYTE1(v251[1]) = 0;
    WORD1(v251[1]) = 0;
    HIDWORD(v251[1]) = -402653184;
    sub_24794F2E4();
    if (*(a1 + 16))
    {
      v113 = sub_24792BEB4(&v253);
      if (v114)
      {
        sub_2478F65EC(*(a1 + 56) + 32 * v113, &v254);
        sub_2478F6598(&v253);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_99;
        }

        v115 = *v251;
        strcpy(v251, "longitude");
        WORD1(v251[1]) = 0;
        HIDWORD(v251[1]) = -385875968;
        sub_24794F2E4();
        if (*(a1 + 16))
        {
          v116 = sub_24792BEB4(&v253);
          if (v117)
          {
            sub_2478F65EC(*(a1 + 56) + 32 * v116, &v254);
            sub_2478F6598(&v253);
            if (swift_dynamicCast())
            {
              v119 = v246;
              if (v246)
              {
                v120 = *v251;
                *&v118 = v115;
                [v246 setLatitude_];
                *&v121 = v120;
                [v119 setLongitude_];
              }

              v122 = *(v2 + v214);
              *(v2 + v214) = v119;
              v123 = v119;
LABEL_103:

              goto LABEL_104;
            }

LABEL_99:
            if (qword_27EE571C0 != -1)
            {
              swift_once();
            }

            v124 = sub_24794ED34();
            __swift_project_value_buffer(v124, qword_27EE58DF8);

            v122 = sub_24794ED14();
            v125 = sub_24794F154();

            if (os_log_type_enabled(v122, v125))
            {
              v126 = swift_slowAlloc();
              v127 = swift_slowAlloc();
              v253 = v127;
              *v126 = 136315138;
              v128 = v236;
              swift_beginAccess();
              sub_2478E9680(v2 + v128, v56, &qword_27EE57278, &unk_247950590);
              v129 = sub_24794EF14();
              v131 = v42;
              v132 = sub_247924380(v129, v130, &v253);

              *(v126 + 4) = v132;
              v42 = v131;
              _os_log_impl(&dword_2478E1000, v122, v125, "#SiriRequestRecord: Unable to fetch location for the current request: %s", v126, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v127);
              MEMORY[0x24C1AF180](v127, -1, -1);
              MEMORY[0x24C1AF180](v126, -1, -1);
            }

            goto LABEL_103;
          }
        }
      }
    }

    sub_2478F6598(&v253);
    goto LABEL_99;
  }

  sub_2478F65EC(*(a1 + 56) + 32 * v101, &v254);
  sub_2478F6598(&v253);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_88;
  }

  v103 = v251[0];
  strcpy(v251, "longitude");
  WORD1(v251[1]) = 0;
  HIDWORD(v251[1]) = -385875968;
  sub_24794F2E4();
  if (!*(a1 + 16) || (v104 = sub_24792BEB4(&v253), (v105 & 1) == 0))
  {
    sub_2478F6598(&v253);
    goto LABEL_88;
  }

  sub_2478F65EC(*(a1 + 56) + 32 * v104, &v254);
  sub_2478F6598(&v253);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_88:
    v56 = v248;
    goto LABEL_89;
  }

  v106 = v251[0];
  v107 = v246;
  v108 = v246;
  LODWORD(v109) = v103;
  [v108 setLatitude_];
  LODWORD(v110) = v106;
  [v108 setLongitude_];

  v111 = *(v2 + v214);
  *(v2 + v214) = v107;
  v112 = v108;

  v56 = v248;
LABEL_104:
  v252[0] = 0xD000000000000012;
  v252[1] = 0x8000000247952DF0;
  sub_24794F2E4();
  if (*(a1 + 16) && (v133 = sub_24792BEB4(&v253), (v134 & 1) != 0))
  {
    sub_2478F65EC(*(a1 + 56) + 32 * v133, &v254);
    sub_2478F6598(&v253);
    if (swift_dynamicCast())
    {
      *(v2 + v228) = v252[0];
    }
  }

  else
  {
    sub_2478F6598(&v253);
  }

  v252[0] = 0xD000000000000010;
  v252[1] = 0x8000000247952E10;
  sub_24794F2E4();
  if (*(a1 + 16) && (v135 = sub_24792BEB4(&v253), (v136 & 1) != 0))
  {
    sub_2478F65EC(*(a1 + 56) + 32 * v135, &v254);
    sub_2478F6598(&v253);
    if (swift_dynamicCast())
    {
      *(v2 + v229) = v252[0];
    }
  }

  else
  {
    sub_2478F6598(&v253);
  }

  v252[0] = 0xD000000000000012;
  v252[1] = 0x8000000247952E30;
  sub_24794F2E4();
  if (*(a1 + 16) && (v137 = sub_24792BEB4(&v253), (v138 & 1) != 0))
  {
    sub_2478F65EC(*(a1 + 56) + 32 * v137, &v254);
    sub_2478F6598(&v253);
    if (swift_dynamicCast())
    {
      *(v2 + v230) = v252[0];
    }
  }

  else
  {
    sub_2478F6598(&v253);
  }

  v252[0] = 0xD000000000000011;
  v252[1] = 0x8000000247952E50;
  sub_24794F2E4();
  if (*(a1 + 16) && (v139 = sub_24792BEB4(&v253), (v140 & 1) != 0))
  {
    sub_2478F65EC(*(a1 + 56) + 32 * v139, &v254);
  }

  else
  {
    v254 = 0u;
    v255 = 0u;
  }

  sub_2478F6598(&v253);
  if (*(&v255 + 1))
  {
    if (swift_dynamicCast())
    {
      v141 = v252[1];
      v142 = v231;
      v143 = v231[1];
      *v231 = v252[0];
      v142[1] = v141;
    }
  }

  else
  {
    sub_2478E9620(&v254, &qword_27EE57348, &unk_2479521B0);
  }

  strcpy(v252, "is_multi_user");
  HIWORD(v252[1]) = -4864;
  sub_24794F2E4();
  if (*(a1 + 16) && (v144 = sub_24792BEB4(&v253), (v145 & 1) != 0))
  {
    sub_2478F65EC(*(a1 + 56) + 32 * v144, &v254);
  }

  else
  {
    v254 = 0u;
    v255 = 0u;
  }

  sub_2478F6598(&v253);
  if (*(&v255 + 1))
  {
    if (swift_dynamicCast())
    {
      *(v2 + v232) = v252[0];
    }
  }

  else
  {
    sub_2478E9620(&v254, &qword_27EE57348, &unk_2479521B0);
  }

  v252[0] = 0xD000000000000018;
  v252[1] = 0x8000000247952E70;
  sub_24794F2E4();
  if (*(a1 + 16) && (v146 = sub_24792BEB4(&v253), (v147 & 1) != 0))
  {
    sub_2478F65EC(*(a1 + 56) + 32 * v146, &v254);
  }

  else
  {
    v254 = 0u;
    v255 = 0u;
  }

  sub_2478F6598(&v253);
  if (*(&v255 + 1))
  {
    if (swift_dynamicCast())
    {
      v148 = sub_24794EEF4();

      v149 = v148;
      if ([v149 isEqualToString:@"ORCHUSERIDENTITYCLASSIFICATION_UNKNOWN"])
      {
        v150 = 0;
      }

      else if ([v149 isEqualToString:@"ORCHUSERIDENTITYCLASSIFICATION_CONFIDENT"])
      {
        v150 = 1;
      }

      else if ([v149 isEqualToString:@"ORCHUSERIDENTITYCLASSIFICATION_KNOWN"])
      {
        v150 = 2;
      }

      else if ([v149 isEqualToString:@"ORCHUSERIDENTITYCLASSIFICATION_UNSURE_1"])
      {
        v150 = 3;
      }

      else if ([v149 isEqualToString:@"ORCHUSERIDENTITYCLASSIFICATION_UNSURE_N"])
      {
        v150 = 4;
      }

      else if ([v149 isEqualToString:@"ORCHUSERIDENTITYCLASSIFICATION_UNKNOWN_USER"])
      {
        v150 = 6;
      }

      else
      {
        v150 = 0;
      }

      v155 = v233;
      *v233 = v150;
      *(v155 + 4) = 0;
    }
  }

  else
  {
    sub_2478E9620(&v254, &qword_27EE57348, &unk_2479521B0);
  }

  v252[0] = 0xD000000000000019;
  v252[1] = 0x8000000247952E90;
  sub_24794F2E4();
  sub_247900904(&v253, a1, &v254);
  sub_2478F6598(&v253);
  if (*(&v255 + 1))
  {
    if (swift_dynamicCast())
    {
      if (v252[0] == 0x4E495F444554504FLL && v252[1] == 0xE800000000000000)
      {

        v156 = 1;
      }

      else
      {
        v156 = sub_24794F4E4();
      }

      *(v2 + v234) = v156 & 1;
    }
  }

  else
  {
    sub_2478E9620(&v254, &qword_27EE57348, &unk_2479521B0);
  }

  *&v254 = 0xD00000000000001ALL;
  *(&v254 + 1) = 0x8000000247952EB0;
  sub_24794F2E4();
  sub_247900904(&v253, a1, &v254);
  sub_2478F6598(&v253);
  if (*(&v255 + 1))
  {
    v157 = swift_dynamicCast();
    v158 = v252[0];
    v159 = v252[1];
    if (!v157)
    {
      v158 = 0;
      v159 = 0;
    }
  }

  else
  {
    sub_2478E9620(&v254, &qword_27EE57348, &unk_2479521B0);
    v158 = 0;
    v159 = 0;
  }

  v160 = v238;
  v161 = v238[1];
  *v238 = v158;
  v160[1] = v159;

  *&v254 = 0xD000000000000019;
  *(&v254 + 1) = 0x8000000247952ED0;
  sub_24794F2E4();
  sub_247900904(&v253, a1, &v254);
  sub_2478F6598(&v253);
  if (*(&v255 + 1))
  {
    v162 = swift_dynamicCast();
    v163 = v252[0];
    v164 = v252[1];
    if (!v162)
    {
      v163 = 0;
      v164 = 0;
    }
  }

  else
  {
    sub_2478E9620(&v254, &qword_27EE57348, &unk_2479521B0);
    v163 = 0;
    v164 = 0;
  }

  v165 = v239;
  v166 = v239[1];
  *v239 = v163;
  v165[1] = v164;

  *&v254 = 0x745F656369766564;
  *(&v254 + 1) = 0xEB00000000657079;
  sub_24794F2E4();
  sub_247900904(&v253, a1, &v254);
  sub_2478F6598(&v253);
  if (*(&v255 + 1))
  {
    v167 = swift_dynamicCast();
    v168 = v252[0];
    v169 = v252[1];
    if (!v167)
    {
      v168 = 0;
      v169 = 0;
    }
  }

  else
  {
    sub_2478E9620(&v254, &qword_27EE57348, &unk_2479521B0);
    v168 = 0;
    v169 = 0;
  }

  v170 = v240;
  v171 = v240[1];
  *v240 = v168;
  v170[1] = v169;

  strcpy(&v254, "system_build");
  BYTE13(v254) = 0;
  HIWORD(v254) = -5120;
  sub_24794F2E4();
  sub_247900904(&v253, a1, &v254);
  sub_2478F6598(&v253);
  if (*(&v255 + 1))
  {
    v172 = swift_dynamicCast();
    v173 = v252[0];
    v174 = v252[1];
    if (!v172)
    {
      v173 = 0;
      v174 = 0;
    }
  }

  else
  {
    sub_2478E9620(&v254, &qword_27EE57348, &unk_2479521B0);
    v173 = 0;
    v174 = 0;
  }

  v175 = v241;
  v176 = v241[1];
  *v241 = v173;
  v175[1] = v174;

  *&v254 = 0x616D6F645F627573;
  *(&v254 + 1) = 0xEA00000000006E69;
  sub_24794F2E4();
  sub_247900904(&v253, a1, &v254);
  sub_2478F6598(&v253);
  if (*(&v255 + 1))
  {
    v177 = swift_dynamicCast();
    v178 = v252[0];
    v179 = v252[1];
    if (!v177)
    {
      v178 = 0;
      v179 = 0;
    }
  }

  else
  {
    sub_2478E9620(&v254, &qword_27EE57348, &unk_2479521B0);
    v178 = 0;
    v179 = 0;
  }

  v180 = v242;
  v181 = v242[1];
  *v242 = v178;
  v180[1] = v179;

  strcpy(&v254, "post_itn_1best");
  HIBYTE(v254) = -18;
  sub_24794F2E4();
  sub_247900904(&v253, a1, &v254);
  sub_2478F6598(&v253);
  if (*(&v255 + 1))
  {
    v182 = swift_dynamicCast();
    v183 = v252[0];
    v184 = v252[1];
    if (!v182)
    {
      v183 = 0;
      v184 = 0;
    }
  }

  else
  {
    sub_2478E9620(&v254, &qword_27EE57348, &unk_2479521B0);
    v183 = 0;
    v184 = 0;
  }

  v185 = v243;
  v186 = v243[1];
  *v243 = v183;
  v185[1] = v184;

  *(v2 + 16) = 0;
  v252[0] = 0xD000000000000014;
  v252[1] = 0x8000000247952EF0;
  sub_24794F2E4();
  sub_247900904(&v253, a1, &v254);
  sub_2478F6598(&v253);
  if (!*(&v255 + 1))
  {

    sub_2478E9620(&v254, &qword_27EE57348, &unk_2479521B0);
LABEL_241:
    sub_24794EBF4();
    v188 = v247;
    v42(v56, 0, 1, v247);
    v191 = v249;
    swift_beginAccess();
    v192 = v2 + v191;
    v193 = v56;
    goto LABEL_244;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_241;
  }

  *(v2 + 16) = v252[0];
  v252[0] = 0xD000000000000016;
  v252[1] = 0x8000000247952F10;
  sub_24794F2E4();
  sub_247900904(&v253, a1, &v254);

  sub_2478F6598(&v253);
  if (*(&v255 + 1))
  {
    v187 = v235;
    v188 = v247;
    v189 = swift_dynamicCast() ^ 1;
    v190 = v187;
  }

  else
  {
    sub_2478E9620(&v254, &qword_27EE57348, &unk_2479521B0);
    v187 = v235;
    v190 = v235;
    v189 = 1;
    v188 = v247;
  }

  v42(v190, v189, 1, v188);
  v194 = v249;
  swift_beginAccess();
  v192 = v2 + v194;
  v193 = v187;
LABEL_244:
  sub_2478F6648(v193, v192, &qword_27EE57278, &unk_247950590);
  swift_endAccess();
  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v195 = sub_24794ED34();
  __swift_project_value_buffer(v195, qword_27EE58DF8);

  v196 = sub_24794ED14();
  v197 = sub_24794F154();

  if (os_log_type_enabled(v196, v197))
  {
    v198 = swift_slowAlloc();
    v199 = swift_slowAlloc();
    v253 = v199;
    *v198 = 136315138;
    v200 = v249;
    swift_beginAccess();
    sub_2478E9680(v2 + v200, v56, &qword_27EE57278, &unk_247950590);
    v201 = sub_24794EF14();
    v203 = v42;
    v204 = sub_247924380(v201, v202, &v253);

    *(v198 + 4) = v204;
    v42 = v203;
    _os_log_impl(&dword_2478E1000, v196, v197, "#SiriRequestRecord - created request with audioId: %s", v198, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v199);
    MEMORY[0x24C1AF180](v199, -1, -1);
    MEMORY[0x24C1AF180](v198, -1, -1);
  }

  sub_24794EBF4();
  v42(v56, 0, 1, v188);
  v205 = v244;
  swift_beginAccess();
  sub_2478F6648(v56, v2 + v205, &qword_27EE57278, &unk_247950590);
  swift_endAccess();
  sub_24794EBF4();

  v42(v56, 0, 1, v188);
  v206 = v245;
  swift_beginAccess();
  sub_2478F6648(v56, v2 + v206, &qword_27EE57278, &unk_247950590);
  swift_endAccess();
  return v2;
}

uint64_t sub_2478F4188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v48 = a6;
  v49 = a7;
  v46 = a4;
  v47 = a5;
  v45 = a3;
  v43[1] = a1;
  v43[2] = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57278, &unk_247950590);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v43 - v10;
  *(v7 + 16) = 514;
  v12 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_date;
  v44 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_date;
  v13 = sub_24794EBB4();
  (*(*(v13 - 8) + 56))(v7 + v12, 1, 1, v13);
  v14 = (v7 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_deviceType);
  *v14 = 0;
  v14[1] = 0;
  v15 = (v7 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_systemBuild);
  *v15 = 0;
  v15[1] = 0;
  v16 = (v7 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_audioInterfaceVendorId);
  *v16 = 0;
  v16[1] = 0;
  v17 = (v7 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_firstPartyAudioInterfaceProductId);
  *v17 = 0;
  v17[1] = 0;
  *(v7 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_siriInputLocale) = 0;
  v18 = v7 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_invocationSource;
  *v18 = 0;
  *(v18 + 4) = 1;
  v19 = v7 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_motionActivity;
  *v19 = 0;
  *(v19 + 4) = 1;
  *(v7 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_isWakeFromSleep) = 2;
  *(v7 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_isMediaPlaying) = 2;
  *(v7 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_isDeviceHandHeld) = 2;
  v20 = v7 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_audioCodec;
  *v20 = 0;
  *(v20 + 4) = 1;
  v21 = v7 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_audioSource;
  *v21 = 0;
  *(v21 + 4) = 1;
  v22 = v7 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_asrTask;
  *v22 = 0;
  *(v22 + 4) = 1;
  v23 = v7 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_audioSkippedNumSamples;
  *v23 = 0;
  *(v23 + 8) = 1;
  v24 = (v7 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_postItn1Best);
  *v24 = 0;
  v24[1] = 0;
  v25 = (v7 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_subDomain);
  *v25 = 0;
  v25[1] = 0;
  *(v7 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_isPersonalRequest) = 2;
  *(v7 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_isPersonalizedRequest) = 2;
  v26 = (v7 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_responseId);
  *v26 = 0;
  v26[1] = 0;
  v27 = v7 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_orchCancelledReason;
  *v27 = 0;
  *(v27 + 4) = 1;
  v28 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_audioId;
  v29 = sub_24794EC04();
  v30 = *(*(v29 - 8) + 56);
  v30(v7 + v28, 1, 1, v29);
  v31 = v7 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_triggerPhrase;
  *v31 = 0;
  *(v31 + 4) = 1;
  v32 = (v7 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_enrollmentId);
  *v32 = 0;
  v32[1] = 0;
  *(v7 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_location) = 0;
  v30(v7 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_sampleId, 1, 1, v29);
  v30(v7 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_requestId, 1, 1, v29);
  v33 = (v7 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_uniqueSpeakerIdentifier);
  *v33 = 0;
  v33[1] = 0;
  v34 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_odSampleId;
  v30(v7 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_odSampleId, 1, 1, v29);
  v35 = (v7 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_userSamplingId);
  *v35 = 0;
  v35[1] = 0;
  *(v7 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_isMultiUserRequest) = 2;
  v30(v7 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_clockSessionId, 1, 1, v29);
  v36 = v7 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_userIdentifyClassification;
  *v36 = 0;
  *(v36 + 4) = 1;
  *(v7 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_userOptIn) = 0;
  sub_24794EBC4();

  swift_beginAccess();
  sub_2478F6648(v11, v7 + v34, &qword_27EE57278, &unk_247950590);
  swift_endAccess();
  v37 = v14[1];
  v38 = v46;
  *v14 = v45;
  v14[1] = v38;

  v39 = v35[1];
  v40 = v48;
  *v35 = v47;
  v35[1] = v40;

  v41 = v44;
  swift_beginAccess();
  sub_2478F6648(v49, v7 + v41, &qword_27EE572D0, &unk_2479504E0);
  swift_endAccess();
  return v7;
}

uint64_t sub_2478F45D0()
{
  v1 = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57278, &unk_247950590) - 8) + 64);
  v3 = (MEMORY[0x28223BE20])();
  v81 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v78 - v5;
  v82 = sub_24794EC04();
  v7 = *(v82 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v82);
  v79 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v80 = &v78 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v78 - v13;
  v15 = sub_24794EBB4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  v21 = (*(*(v20 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v78 - v22;
  v24 = [objc_allocWithZone(MEMORY[0x277D59548]) init];
  v25 = v24;
  if (v24)
  {
    [v24 setSiriInputLocale_];
    if (*(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_invocationSource + 4))
    {
      v26 = 0;
    }

    else
    {
      v26 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_invocationSource);
    }

    [v25 setInvocationSource_];
    if (*(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_motionActivity + 4))
    {
      v27 = 0;
    }

    else
    {
      v27 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_motionActivity);
    }

    [v25 setMotionActivity_];
    if (*(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_audioCodec + 4))
    {
      v28 = 0;
    }

    else
    {
      v28 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_audioCodec);
    }

    [v25 setAudioCodec_];
    if (*(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_audioSource + 4))
    {
      v29 = 0;
    }

    else
    {
      v29 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_audioSource);
    }

    [v25 setAudioSource_];
    if (*(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_asrTask + 4))
    {
      v30 = 0;
    }

    else
    {
      v30 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_asrTask);
    }

    [v25 setAsrTask_];
    if (*(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_triggerPhrase + 4))
    {
      v31 = 0;
    }

    else
    {
      v31 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_triggerPhrase);
    }

    [v25 setTriggerPhrase_];
  }

  v32 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_date;
  swift_beginAccess();
  sub_2478E9680(v1 + v32, v23, &qword_27EE572D0, &unk_2479504E0);
  if ((*(v16 + 48))(v23, 1, v15))
  {
    sub_2478E9620(v23, &qword_27EE572D0, &unk_2479504E0);
    v33 = v14;
    v34 = v7;
    v35 = v82;
    goto LABEL_28;
  }

  (*(v16 + 16))(v19, v23, v15);
  sub_2478E9620(v23, &qword_27EE572D0, &unk_2479504E0);
  sub_24794EB74();
  v37 = v36;
  result = (*(v16 + 8))(v19, v15);
  v33 = v14;
  v34 = v7;
  v35 = v82;
  if (v25)
  {
    if ((*&v37 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v37 > -1.0)
    {
      if (v37 < 1.84467441e19)
      {
        [v25 setStartDatestampInDaysSince1970_];
        goto LABEL_28;
      }

LABEL_75:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_75;
  }

LABEL_28:
  if ((*(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_audioSkippedNumSamples + 8) & 1) == 0)
  {
    [v25 setAudioSkippedNumSamples_];
  }

  if (v25 && *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_location))
  {
    [v25 setLocation_];
  }

  v39 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_isWakeFromSleep);
  if (v39 != 2)
  {
    [v25 setIsWakeFromSleep_];
  }

  v40 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_isMediaPlaying);
  if (v40 != 2)
  {
    [v25 setIsMediaPlaying_];
  }

  v41 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_isDeviceHandHeld);
  if (v41 != 2)
  {
    [v25 setIsDeviceHandHeld_];
  }

  if (v25 && *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_firstPartyAudioInterfaceProductId + 8))
  {
    v42 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_firstPartyAudioInterfaceProductId);
    v43 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_firstPartyAudioInterfaceProductId + 8);

    v44 = v25;
    v45 = sub_24794EEF4();

    [v44 setFirstPartyAudioInterfaceProductId_];
  }

  if (v25 && *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_audioInterfaceVendorId + 8))
  {
    v46 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_audioInterfaceVendorId);
    v47 = v25;

    v48 = sub_24794EEF4();

    [v47 setAudioInterfaceVendorId_];
  }

  if (v25 && *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_deviceType + 8))
  {
    v49 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_deviceType);
    v50 = v25;

    v51 = sub_24794EEF4();

    [v50 setDeviceType_];
  }

  if (v25 && *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_subDomain + 8))
  {
    v52 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_subDomain);
    v53 = v25;

    v54 = sub_24794EEF4();

    [v53 setSubDomain_];
  }

  if (v25 && *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_postItn1Best + 8))
  {
    v55 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_postItn1Best);
    v56 = v25;

    v57 = sub_24794EEF4();

    [v56 setPostItn1Best_];
  }

  v58 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_audioId;
  swift_beginAccess();
  sub_2478E9680(v1 + v58, v6, &qword_27EE57278, &unk_247950590);
  v59 = *(v34 + 48);
  if (v59(v6, 1, v35) != 1)
  {
    (*(v34 + 32))(v33, v6, v35);
    if (v25)
    {
      v60 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v61 = v25;
      v62 = sub_24794EBE4();
      v63 = [v60 initWithNSUUID_];

      [v61 setAudioId_];
    }

    (*(v34 + 8))(v33, v35);
    if (!v25)
    {
      goto LABEL_62;
    }

    goto LABEL_60;
  }

  sub_2478E9620(v6, &qword_27EE57278, &unk_247950590);
  if (v25)
  {
LABEL_60:
    if (*(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_systemBuild + 8))
    {
      v64 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_systemBuild);
      v65 = v25;

      v66 = sub_24794EEF4();

      [v65 setSystemBuild_];
    }
  }

LABEL_62:
  v67 = *(v1 + 16);
  if (v67 != 2)
  {
    [v25 setIsEnrollmentSample_];
  }

  v68 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_odSampleId;
  swift_beginAccess();
  v69 = v1 + v68;
  v70 = v81;
  sub_2478E9680(v69, v81, &qword_27EE57278, &unk_247950590);
  if (v59(v70, 1, v35) == 1)
  {
    sub_2478E9620(v70, &qword_27EE57278, &unk_247950590);
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v71 = sub_24794ED34();
    __swift_project_value_buffer(v71, qword_27EE58DF8);
    v72 = sub_24794ED14();
    v73 = sub_24794F164();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_2478E1000, v72, v73, "odSampleId is not being initialized", v74, 2u);
      MEMORY[0x24C1AF180](v74, -1, -1);
    }
  }

  else
  {
    v75 = v80;
    (*(v34 + 32))(v80, v70, v35);
    sub_2478F66B0();
    v76 = v79;
    (*(v34 + 16))(v79, v75, v35);
    v72 = sub_247919F48(v76);
    v77 = [objc_allocWithZone(MEMORY[0x277D59528]) init];
    [v77 setSpeakerIdModelSampleReported_];
    if (v77)
    {
      [v77 setEventMetadata_];

      (*(v34 + 8))(v75, v35);
      return v77;
    }

    (*(v34 + 8))(v75, v35);
  }

  return 0;
}

id sub_2478F50F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v34 = a1;
  v35 = a2;
  v4 = sub_24794EC04();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57278, &unk_247950590);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v34 - v15;
  v17 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_date;
  swift_beginAccess();
  sub_2478E9680(v3 + v17, v16, &qword_27EE572D0, &unk_2479504E0);
  v18 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_odSampleId;
  swift_beginAccess();
  sub_2478E9680(v3 + v18, v12, &qword_27EE57278, &unk_247950590);
  if ((*(v5 + 48))(v12, 1, v4))
  {
    sub_2478E9620(v12, &qword_27EE57278, &unk_247950590);
    v19 = 0;
  }

  else
  {
    (*(v5 + 16))(v8, v12, v4);
    sub_2478E9620(v12, &qword_27EE57278, &unk_247950590);
    sub_24794EBD4();
    v19 = v20;
    (*(v5 + 8))(v8, v4);
  }

  v22 = *(v3 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_deviceType);
  v21 = *(v3 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_deviceType + 8);
  v23 = sub_24794EBB4();
  v24 = *(v23 - 8);
  v25 = (*(v24 + 48))(v16, 1, v23);

  v26 = 0;
  if (v25 != 1)
  {
    v26 = sub_24794EB34();
    (*(v24 + 8))(v16, v23);
  }

  if (v19)
  {
    v27 = sub_24794EEF4();
  }

  else
  {
    v27 = 0;
  }

  v28 = sub_24794EEF4();
  v29 = sub_24794EEF4();
  if (v21)
  {
    v30 = sub_24794EEF4();
  }

  else
  {
    v30 = 0;
  }

  v31 = objc_allocWithZone(MEMORY[0x277CF1458]);
  v32 = [v31 initWithTimestamp:v26 onDeviceSampleIdentifier:v27 userSamplingIdentifier:v28 dataCollectionUseCase:v29 deviceType:{v30, v34, v35}];

  return v32;
}

uint64_t sub_2478F54C0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v15[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57278, &unk_247950590);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v15[-v8];
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_24794F344();

  v18 = 0x4974736575716572;
  v19 = 0xEB00000000203A64;
  v10 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_requestId;
  swift_beginAccess();
  sub_2478E9680(v1 + v10, v9, &qword_27EE57278, &unk_247950590);
  v11 = sub_24794EF14();
  MEMORY[0x24C1AE4C0](v11);

  MEMORY[0x24C1AE4C0](0x65746144206E6F20, 0xEA0000000000203ALL);
  v12 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_date;
  swift_beginAccess();
  sub_2478E9680(v1 + v12, v5, &qword_27EE572D0, &unk_2479504E0);
  v13 = sub_24794EF14();
  MEMORY[0x24C1AE4C0](v13);

  return v18;
}

uint64_t sub_2478F56BC()
{
  sub_2478E95CC();
  swift_allocError();
  *v0 = xmmword_24794FEE0;
  *(v0 + 16) = 2;
  return swift_willThrow();
}

uint64_t sub_2478F5718()
{
  sub_2478E9620(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_date, &qword_27EE572D0, &unk_2479504E0);
  v1 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_deviceType + 8);

  v2 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_systemBuild + 8);

  v3 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_audioInterfaceVendorId + 8);

  v4 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_firstPartyAudioInterfaceProductId + 8);

  v5 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_postItn1Best + 8);

  v6 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_subDomain + 8);

  v7 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_responseId + 8);

  sub_2478E9620(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_audioId, &qword_27EE57278, &unk_247950590);
  v8 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_enrollmentId + 8);

  sub_2478E9620(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_sampleId, &qword_27EE57278, &unk_247950590);
  sub_2478E9620(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_requestId, &qword_27EE57278, &unk_247950590);
  v9 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_uniqueSpeakerIdentifier + 8);

  sub_2478E9620(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_odSampleId, &qword_27EE57278, &unk_247950590);
  v10 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_userSamplingId + 8);

  sub_2478E9620(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_clockSessionId, &qword_27EE57278, &unk_247950590);
  return v0;
}

void sub_2478F58FC()
{
  sub_2478F5A80(319, &qword_27EE57320, MEMORY[0x277CC9578]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_2478F5A80(319, &qword_27EE57328, MEMORY[0x277CC95F0]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_2478F5A80(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24794F234();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_2478F5B30(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v38 = a1;
  v39 = a2;
  v4 = sub_24794EC04();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57278, &unk_247950590);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v36 - v15;
  v17 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_date;
  swift_beginAccess();
  sub_2478E9680(v3 + v17, v16, &qword_27EE572D0, &unk_2479504E0);
  v18 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_odSampleId;
  swift_beginAccess();
  sub_2478E9680(v3 + v18, v12, &qword_27EE57278, &unk_247950590);
  if ((*(v5 + 48))(v12, 1, v4))
  {
    sub_2478E9620(v12, &qword_27EE57278, &unk_247950590);
    v37 = 0;
    v19 = 0;
  }

  else
  {
    (*(v5 + 16))(v8, v12, v4);
    sub_2478E9620(v12, &qword_27EE57278, &unk_247950590);
    v37 = sub_24794EBD4();
    v19 = v20;
    (*(v5 + 8))(v8, v4);
  }

  v21 = *(v3 + 16);
  if (v21 == 2 || (v21 & 1) == 0)
  {
    if (*(v3 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics24ButtonPressRequestRecord_wakeWord))
    {
      v22 = 0xE200000000000000;
      if (*(v3 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics24ButtonPressRequestRecord_wakeWord) == 1)
      {
        v23 = 21320;
      }

      else
      {
        v23 = 21322;
      }
    }

    else
    {
      v22 = 0xEA00000000006472;
      v23 = 0x6F57656B61576F6ELL;
    }

    v40 = 0x72506E6F74747562;
    v41 = 0xEF2D435346737365;
    MEMORY[0x24C1AE4C0](v23, v22);
  }

  v25 = *(v3 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_deviceType);
  v24 = *(v3 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_deviceType + 8);
  v26 = sub_24794EBB4();
  v27 = *(v26 - 8);
  v28 = (*(v27 + 48))(v16, 1, v26);

  v29 = 0;
  if (v28 != 1)
  {
    v29 = sub_24794EB34();
    (*(v27 + 8))(v16, v26);
  }

  if (v19)
  {
    v30 = sub_24794EEF4();
  }

  else
  {
    v30 = 0;
  }

  v31 = sub_24794EEF4();
  v32 = sub_24794EEF4();

  if (v24)
  {
    v33 = sub_24794EEF4();
  }

  else
  {
    v33 = 0;
  }

  v34 = [objc_allocWithZone(MEMORY[0x277CF1458]) initWithTimestamp:v29 onDeviceSampleIdentifier:v30 userSamplingIdentifier:v31 dataCollectionUseCase:v32 deviceType:v33];

  return v34;
}

uint64_t sub_2478F5FA0()
{
  sub_2478F5718();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2478F6020(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SamplingSelectionStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SamplingSelectionStatus(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2478F620C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 21320;
  if (v2 != 1)
  {
    v3 = 21322;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x6F57656B61576F6ELL;
  }

  if (v2)
  {
    v5 = 0xE200000000000000;
  }

  else
  {
    v5 = 0xEA00000000006472;
  }

  v6 = 21320;
  if (*a2 != 1)
  {
    v6 = 21322;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x6F57656B61576F6ELL;
  }

  if (*a2)
  {
    v8 = 0xE200000000000000;
  }

  else
  {
    v8 = 0xEA00000000006472;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_24794F4E4();
  }

  return v9 & 1;
}

uint64_t sub_2478F62E0()
{
  v1 = *v0;
  sub_24794F584();
  sub_24794EF74();

  return sub_24794F5B4();
}

uint64_t sub_2478F6370()
{
  *v0;
  *v0;
  sub_24794EF74();
}

uint64_t sub_2478F63EC()
{
  v1 = *v0;
  sub_24794F584();
  sub_24794EF74();

  return sub_24794F5B4();
}

uint64_t sub_2478F6478@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2478F654C();
  *a2 = result;
  return result;
}

void sub_2478F64A8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006472;
  v4 = 21320;
  if (v2 != 1)
  {
    v4 = 21322;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6F57656B61576F6ELL;
  }

  if (!v5)
  {
    v3 = 0xE200000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_2478F64F8()
{
  result = qword_27EE57340;
  if (!qword_27EE57340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE57340);
  }

  return result;
}

uint64_t sub_2478F654C()
{
  v0 = sub_24794F4A4();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2478F65EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2478F6648(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_2478F66B0()
{
  result = qword_27EE57258;
  if (!qword_27EE57258)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE57258);
  }

  return result;
}

uint64_t sub_2478F6700(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v54 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v54 - v11;
  v13 = [a1 onDeviceSampleIdentifier];
  if (!v13)
  {
    goto LABEL_12;
  }

  v14 = v13;
  v15 = sub_24794EF04();
  v17 = v16;

  v18 = [a1 deviceType];
  if (!v18)
  {
LABEL_11:

LABEL_12:
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v30 = sub_24794ED34();
    __swift_project_value_buffer(v30, qword_27EE58DF8);
    v31 = sub_24794ED14();
    v32 = sub_24794F164();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_2478E1000, v31, v32, "#SiriRequestRecordFactory: Can't get fundamental info from biomeEvent", v33, 2u);
      MEMORY[0x24C1AF180](v33, -1, -1);
    }

    v34 = 2;
    goto LABEL_17;
  }

  v59 = v15;
  v19 = v18;
  v58 = sub_24794EF04();
  v21 = v20;

  v22 = [a1 dataCollectionUseCase];
  if (!v22)
  {
LABEL_10:

    goto LABEL_11;
  }

  v60 = v21;
  v23 = v22;
  v56 = sub_24794EF04();

  v24 = [a1 userSamplingIdentifier];
  if (!v24)
  {

    goto LABEL_10;
  }

  v25 = v24;
  v55 = sub_24794EF04();
  v57 = v26;

  if (*(v1 + 16) > 1u)
  {

    v34 = 8;
LABEL_17:
    sub_2478E95CC();
    swift_allocError();
    *v35 = v34;
    *(v35 + 8) = 0;
    *(v35 + 16) = 2;
    swift_willThrow();
    return v34;
  }

  if (!*(v1 + 16))
  {

    v27 = [a1 timestamp];
    if (v27)
    {
      v28 = v27;
      sub_24794EB94();

      v29 = sub_24794EBB4();
      (*(*(v29 - 8) + 56))(v12, 0, 1, v29);
    }

    else
    {
      v40 = sub_24794EBB4();
      (*(*(v40 - 8) + 56))(v12, 1, 1, v40);
    }

    v41 = v60;
    v42 = v59;
    v43 = type metadata accessor for SiriRequestRecord(0);
    v44 = *(v43 + 48);
    v45 = *(v43 + 52);
    swift_allocObject();
    return sub_2478F4188(v42, v17, v58, v41, v55, v57, v12);
  }

  v37 = [a1 timestamp];
  if (v37)
  {
    v38 = v37;
    sub_24794EB94();

    v39 = sub_24794EBB4();
    (*(*(v39 - 8) + 56))(v10, 0, 1, v39);
  }

  else
  {
    v46 = sub_24794EBB4();
    (*(*(v46 - 8) + 56))(v10, 1, 1, v46);
  }

  v47 = type metadata accessor for ButtonPressRequestRecord(0);
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  v50 = swift_allocObject();
  v51 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics24ButtonPressRequestRecord_wakeWord;
  *(v50 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics24ButtonPressRequestRecord_wakeWord) = 0;
  if (sub_24794F004())
  {
    v52 = 1;
  }

  else
  {
    if ((sub_24794F004() & 1) == 0)
    {
      goto LABEL_30;
    }

    v52 = 2;
  }

  *(v50 + v51) = v52;
LABEL_30:
  sub_2478EE3C8(v10, v7);
  v34 = sub_2478F4188(v59, v17, v58, v60, v55, v57, v7);
  v53 = sub_24794F004();

  sub_2478F6EA4(v10);
  if (v53)
  {
    *(v34 + 16) = 1;
  }

  return v34;
}

uint64_t sub_2478F6C7C(uint64_t a1)
{
  v3 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v3)
  {
    v28 = MEMORY[0x277D84F90];
    sub_24794F3C4();
    v5 = *(v1 + 16);
    for (i = (a1 + 32); ; ++i)
    {
      v12 = *i;
      if (v5 > 1)
      {
        if (v5 == 2)
        {
          v24 = type metadata accessor for MetricsCalcRecord(0);
          v25 = *(v24 + 48);
          v26 = *(v24 + 52);
          swift_allocObject();

          sub_247900C7C(v27);
          goto LABEL_4;
        }
      }

      else if (v5)
      {
        v13 = type metadata accessor for ButtonPressRequestRecord(0);
        v14 = *(v13 + 48);
        v15 = *(v13 + 52);
        *(swift_allocObject() + OBJC_IVAR____TtC23CoreSpeechDataAnalytics24ButtonPressRequestRecord_wakeWord) = 0;

        v17 = sub_2478F0B18(v16);
        v18 = v17;
        v19 = (v17 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_postItn1Best);
        if (*(v17 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_postItn1Best + 8))
        {
          v20 = *(v17 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_siriInputLocale);
          if (v20)
          {
            v21 = *v19;
            v22 = v19[1];

            v23 = v20;
            SISchemaISOLocale.toString()();

            LOBYTE(v23) = sub_247944340();

            *(v18 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics24ButtonPressRequestRecord_wakeWord) = v23;
          }
        }

        goto LABEL_4;
      }

      v7 = type metadata accessor for SiriRequestRecord(0);
      v8 = *(v7 + 48);
      v9 = *(v7 + 52);
      swift_allocObject();

      sub_2478F0B18(v10);
LABEL_4:
      sub_24794F3A4();
      v11 = *(v28 + 16);
      sub_24794F3D4();
      sub_24794F3E4();
      sub_24794F3B4();
      if (!--v3)
      {
        return v28;
      }
    }
  }

  return result;
}

uint64_t sub_2478F6EA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2478F6F0C()
{
  v1 = *(v0 + 136);
  if (v1 == 2)
  {
    v2 = *(v0 + 32);
    LOBYTE(v1) = (*(*(v0 + 40) + 144))(*(v0 + 120), *(v0 + 128));
    *(v0 + 136) = v1 & 1;
  }

  return v1 & 1;
}

void *sub_2478F6F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v7 = v6;
  *(v7 + 136) = 2;
  if (a5 && (type metadata accessor for ButtonPressSamplingPolicy(), (v13 = swift_dynamicCastClass()) != 0))
  {
    v14 = v13;
    LOBYTE(v24) = 1;

    v15 = sub_2478E3250(a1, a2, a3, a4, &v24, v14, a6);

    if (v15)
    {

      return v15;
    }
  }

  else
  {

    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v17 = sub_24794ED34();
    __swift_project_value_buffer(v17, qword_27EE58DF8);
    v18 = sub_24794ED14();
    v19 = sub_24794F164();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2478E1000, v18, v19, "#ButtonPressActionEvent: Cannot create sampling policy", v20, 2u);
      MEMORY[0x24C1AF180](v20, -1, -1);
    }

    v24 = a6[2];
    sub_2478E9620(&v24, &qword_27EE57290, &unk_2479504F0);
    v23 = a6[3];
    sub_2478E9620(&v23, &qword_27EE57298, &unk_2479503D0);
    v22 = a6[4];
    sub_2478E9620(&v22, &qword_27EE572A0, &unk_247950500);
    v21 = a6[5];
    sub_2478E9620(&v21, &qword_27EE572A8, &unk_2479503E0);

    type metadata accessor for ButtonPressActionEvent();
    swift_deallocPartialClassInstance();
  }

  return 0;
}

uint64_t sub_2478F71C4()
{
  v1 = *(*(v0 + 16) + 112);

  sub_2478EEE7C();

  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_2478F72B8;
  v3 = *(v0 + 16);

  return sub_2478E411C();
}

uint64_t sub_2478F72B8()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2478F73AC()
{
  v1[14] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57278, &unk_247950590) - 8) + 64) + 15;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v3 = sub_24794EC04();
  v1[19] = v3;
  v4 = *(v3 - 8);
  v1[20] = v4;
  v5 = *(v4 + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2478F74EC, 0, 0);
}

uint64_t sub_2478F74EC()
{
  v217 = v0;
  v1 = *(v0[14] + 112);
  v2 = *(v1 + 40);

  v3 = [v2 publisher];
  LOBYTE(v216) = *(v1 + 16);
  v4 = sub_2478EF144(&v216, v3);

  v216 = MEMORY[0x277D84F90];
  if (v4 >> 62)
  {
    goto LABEL_46;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
LABEL_47:
    v18 = MEMORY[0x277D84F90];
    v24 = MEMORY[0x277D84F90];
    v23 = MEMORY[0x277D84F90];
    goto LABEL_48;
  }

LABEL_3:
  v214 = v0;
  v6 = 0;
  v0 = (v4 & 0xC000000000000001);
  do
  {
    if (v0)
    {
      v8 = MEMORY[0x24C1AE890](v6, v4);
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
LABEL_15:
        __break(1u);

        goto LABEL_29;
      }
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        v5 = sub_24794F414();
        if (!v5)
        {
          goto LABEL_47;
        }

        goto LABEL_3;
      }

      v8 = *(v4 + 8 * v6 + 32);

      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_15;
      }
    }

    if ((*(*v8 + 1272))() == 1)
    {

LABEL_5:
      sub_24794F3A4();
      v7 = *(v216 + 16);
      sub_24794F3D4();
      sub_24794F3E4();
      sub_24794F3B4();
      goto LABEL_6;
    }

    v10 = sub_24794F4E4();

    if (v10)
    {
      goto LABEL_5;
    }

LABEL_6:
    ++v6;
  }

  while (v9 != v5);
  v11 = 0;
  v210 = v216;
  v216 = MEMORY[0x277D84F90];
  do
  {
    if (v0)
    {
      v13 = MEMORY[0x24C1AE890](v11, v4);
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (v11 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_44;
      }

      v13 = *(v4 + 8 * v11 + 32);

      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
LABEL_28:
        __break(1u);

LABEL_29:

        v16 = v214;
LABEL_49:
        v35 = v16[23];
        v34 = v16[24];
        v37 = v16[21];
        v36 = v16[22];
        v39 = v16[17];
        v38 = v16[18];
        v41 = v16[15];
        v40 = v16[16];

        v42 = v16[1];
LABEL_50:

        return v42();
      }
    }

    if ((*(*v13 + 1272))() > 1u)
    {

LABEL_18:
      sub_24794F3A4();
      v12 = *(v216 + 16);
      sub_24794F3D4();
      sub_24794F3E4();
      sub_24794F3B4();
      goto LABEL_19;
    }

    v15 = sub_24794F4E4();

    if (v15)
    {
      goto LABEL_18;
    }

LABEL_19:
    ++v11;
  }

  while (v14 != v5);
  v17 = 0;
  v18 = v216;
  v216 = MEMORY[0x277D84F90];
  while (v0)
  {
    v19 = MEMORY[0x24C1AE890](v17, v4);
    v20 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_41;
    }

LABEL_36:
    v21 = *(v19 + 16);
    if (v21 == 2 || (v21 & 1) == 0)
    {
    }

    else
    {
      sub_24794F3A4();
      v22 = *(v216 + 16);
      sub_24794F3D4();
      sub_24794F3E4();
      sub_24794F3B4();
    }

    ++v17;
    if (v20 == v5)
    {
      goto LABEL_42;
    }
  }

  if (v17 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_45;
  }

  v19 = *(v4 + 8 * v17 + 32);

  v20 = v17 + 1;
  if (!__OFADD__(v17, 1))
  {
    goto LABEL_36;
  }

LABEL_41:
  __break(1u);
LABEL_42:
  v0 = v214;
  v23 = v216;
  v24 = v210;
LABEL_48:
  v0[25] = v18;
  v25 = v0[14];

  v26 = *(**(v25 + 88) + 488);

  v28 = v26(v27);

  v29 = *(**(v25 + 88) + 496);

  v0[26] = v29(v30);

  v31 = *(**(v25 + 88) + 504);

  v33 = v31(v32);

  v211 = v33;
  v44 = v24;
  v45 = *(**(v25 + 88) + 512);

  v0[27] = v45(v46);

  v47 = *(**(v25 + 88) + 544);

  v49 = v47(v48);

  v192 = v49;
  v50 = *(**(v25 + 88) + 552);

  v0[28] = v50(v51);

  v215 = v0;
  v52 = *(**(v25 + 88) + 536);

  v54 = v52(v53);

  v55 = v23 < 0 || (v23 & 0x4000000000000000) != 0;
  if (v55)
  {
    v72 = sub_24794F414();
    if (v72 < 1 || v54 >= v72)
    {
      goto LABEL_90;
    }

    v73 = sub_24794F414();
    result = sub_24794F414();
    if (result < 0)
    {
      __break(1u);
      return result;
    }

    if (v73 >= v54)
    {
      v74 = v54;
    }

    else
    {
      v74 = v73;
    }

    if (v73 < 0)
    {
      v74 = v54;
    }

    if (v54)
    {
      v54 = v74;
    }

    else
    {
      v54 = 0;
    }

    if (sub_24794F414() < v54)
    {
      __break(1u);
      goto LABEL_90;
    }

LABEL_59:
    if ((v23 & 0xC000000000000001) != 0)
    {

      if (v54)
      {
        type metadata accessor for SiriRequestRecord(0);
        v57 = 0;
        do
        {
          v58 = v57 + 1;
          sub_24794F364();
          v57 = v58;
        }

        while (v54 != v58);
      }
    }

    else
    {
    }

    if (v55)
    {
      v59 = sub_24794F454();
      v61 = v60;
      v63 = v62;
      v65 = v64;

      v23 = v59;
    }

    else
    {
      v63 = 0;
      v61 = v23 + 32;
      v65 = (2 * v54) | 1;
    }

    if (v65)
    {
      sub_24794F4F4();
      swift_unknownObjectRetain_n();
      v68 = swift_dynamicCastClass();
      if (!v68)
      {
        swift_unknownObjectRelease();
        v68 = MEMORY[0x277D84F90];
      }

      v69 = *(v68 + 16);

      if (__OFSUB__(v65 >> 1, v63))
      {
        __break(1u);
      }

      else if (v69 == (v65 >> 1) - v63)
      {
        v67 = swift_dynamicCastClass();
        swift_unknownObjectRelease_n();
        v70 = v215;
        v71 = v44;
        if (v67)
        {
          goto LABEL_92;
        }

        v67 = MEMORY[0x277D84F90];
LABEL_76:
        swift_unknownObjectRelease();
        goto LABEL_91;
      }

      swift_unknownObjectRelease_n();
    }

    sub_2478E8CE4(v23, v61, v63, v65);
    v67 = v66;
    goto LABEL_76;
  }

  v56 = *(v23 + 16);
  if (v56 && v54 < v56)
  {
    goto LABEL_59;
  }

LABEL_90:
  v67 = v23;
LABEL_91:
  v70 = v215;
  v71 = v44;
LABEL_92:
  *(v70 + 232) = v67;
  v75 = *(v25 + 88);
  v76 = (*(*(v75 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_metaDataManager) + 16) + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_userSamplingId);
  v77 = *v76;
  *(v70 + 240) = *v76;
  v78 = v76[1];
  *(v70 + 248) = v78;
  v189 = v77;
  v190 = v78;
  if (!v78)
  {

    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v90 = sub_24794ED34();
    __swift_project_value_buffer(v90, qword_27EE58DF8);
    v91 = sub_24794ED14();
    v92 = sub_24794F164();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      *v93 = 0;
      _os_log_impl(&dword_2478E1000, v91, v92, "#ButtonPressActionEvent: userSamplingId being nil for events aggregation", v93, 2u);
      MEMORY[0x24C1AF180](v93, -1, -1);
    }

    sub_2478E95CC();
    swift_allocError();
    *v94 = xmmword_24794FF10;
    *(v94 + 16) = 2;
    swift_willThrow();
    v16 = v215;
    goto LABEL_49;
  }

  v79 = v67;

  v80 = v75;
  v187 = sub_2478EB0C0();
  *(v70 + 336) = v187;

  if (v71 < 0 || (v71 & 0x4000000000000000) != 0)
  {
    goto LABEL_118;
  }

  v81 = *(v71 + 16);
  v188 = v79;
  if (v81)
  {
LABEL_96:
    v80 = 0;
    v82 = *(v70 + 160);
    v199 = (v82 + 48);
    v203 = v71 & 0xC000000000000001;
    v194 = v82;
    v196 = (v82 + 32);
    v207 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v203)
      {
        v75 = MEMORY[0x24C1AE890](v80, v44);
        v83 = (v80 + 1);
        if (__OFADD__(v80, 1))
        {
          goto LABEL_116;
        }
      }

      else
      {
        if (v80 >= *(v44 + 16))
        {
          goto LABEL_117;
        }

        v75 = *(v44 + 8 * v80 + 32);

        v83 = (v80 + 1);
        if (__OFADD__(v80, 1))
        {
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          v81 = sub_24794F414();
          v188 = v79;
          if (!v81)
          {
            break;
          }

          goto LABEL_96;
        }
      }

      v71 = v81;
      v79 = v215;
      v85 = v215[18];
      v84 = v215[19];
      v70 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_odSampleId;
      swift_beginAccess();
      sub_2478FA014(v75 + v70, v85);

      if ((*v199)(v85, 1, v84) == 1)
      {
        sub_2478E9620(v215[18], &qword_27EE57278, &unk_247950590);
      }

      else
      {
        v70 = *v196;
        (*v196)(v215[24], v215[18], v215[19]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v207 = sub_24793AADC(0, v207[2] + 1, 1, v207);
        }

        v87 = v207[2];
        v86 = v207[3];
        v75 = v87 + 1;
        if (v87 >= v86 >> 1)
        {
          v207 = sub_24793AADC(v86 > 1, v87 + 1, 1, v207);
        }

        v88 = v215[24];
        v89 = v215[19];
        v207[2] = v75;
        (v70)(v207 + ((*(v194 + 80) + 32) & ~*(v194 + 80)) + *(v194 + 72) * v87, v88, v89);
      }

      v81 = v71;
      ++v80;
      if (v83 == v71)
      {
        goto LABEL_120;
      }
    }
  }

  v207 = MEMORY[0x277D84F90];
LABEL_120:

  v95 = v188;
  if (v188 >> 62)
  {
    goto LABEL_186;
  }

  v96 = *((v188 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_122:
  v97 = v215;
  v215[32] = v96;
  if (v96)
  {
    v80 = 0;
    v98 = v215[20];
    v197 = v95 & 0xFFFFFFFFFFFFFF8;
    v200 = v95 & 0xC000000000000001;
    v191 = v98;
    v193 = (v98 + 32);
    v195 = (v98 + 48);
    v204 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v200)
      {
        v44 = v95;
        v75 = MEMORY[0x24C1AE890](v80);
        v99 = (v80 + 1);
        if (__OFADD__(v80, 1))
        {
          goto LABEL_182;
        }
      }

      else
      {
        if (v80 >= *(v197 + 16))
        {
          goto LABEL_183;
        }

        v44 = v95;
        v75 = *(v95 + 8 * v80 + 32);

        v99 = (v80 + 1);
        if (__OFADD__(v80, 1))
        {
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          v80 = v95;
          v151 = sub_24794F414();
          v95 = v80;
          v96 = v151;
          goto LABEL_122;
        }
      }

      v100 = *(v97 + 152);
      v101 = *(v97 + 136);
      v70 = v97;
      v102 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_odSampleId;
      swift_beginAccess();
      sub_2478FA014(v75 + v102, v101);

      if ((*v195)(v101, 1, v100) == 1)
      {
        sub_2478E9620(*(v70 + 136), &qword_27EE57278, &unk_247950590);
        v97 = v70;
      }

      else
      {
        v103 = *v193;
        (*v193)(*(v70 + 184), *(v70 + 136), *(v70 + 152));
        v97 = v70;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v204 = sub_24793AADC(0, *(v204 + 2) + 1, 1, v204);
        }

        v105 = *(v204 + 2);
        v104 = *(v204 + 3);
        v75 = v105 + 1;
        if (v105 >= v104 >> 1)
        {
          v204 = sub_24793AADC(v104 > 1, v105 + 1, 1, v204);
        }

        v106 = *(v70 + 184);
        v107 = *(v70 + 152);
        *(v204 + 2) = v75;
        v103(&v204[((*(v191 + 80) + 32) & ~*(v191 + 80)) + *(v191 + 72) * v105], v106, v107);
      }

      v95 = v44;
      ++v80;
      if (v99 == v96)
      {
        goto LABEL_139;
      }
    }
  }

  v204 = MEMORY[0x277D84F90];
LABEL_139:
  v108 = v207[2];
  if (v108 >= v211 || v187)
  {
    v109 = 2;
    goto LABEL_148;
  }

  if (__CFADD__(v192, v28))
  {
    __break(1u);
LABEL_188:
    swift_once();
LABEL_154:
    v119 = sub_24794ED34();
    v120 = __swift_project_value_buffer(v119, qword_27EE58DF8);
    v121 = *(v28 + 136);
    v212 = (v121 + *v121);
    v122 = v121[1];
    v123 = swift_task_alloc();
    v215[35] = v123;
    *v123 = v215;
    v124 = sub_2478F8FB8;
    goto LABEL_155;
  }

  if (v108 < v192 + v28)
  {

    if (qword_27EE571C0 == -1)
    {
      goto LABEL_144;
    }

    goto LABEL_192;
  }

  v109 = 1;
LABEL_148:
  v75 = sub_2478E8DC8(v189, v190, v207, v109, v211);
  v215[33] = v75;

  if (v75)
  {
    v114 = [v75 speakerIdModelSampleManifestReported];
    if (!v114 || (v115 = v114, v28 = [v114 odsampleIdsCount], v115, (v28 & 0x8000000000000000) == 0))
    {
      v215[34] = v28;
      v116 = [v75 speakerIdModelSampleManifestReported];
      if (v116)
      {
        v117 = v116;
        sub_24791A2DC(v204);
      }

      v118 = v215[14];

      v80 = v118[4];
      v28 = v118[5];
      v70 = v118[6];
      v44 = v118[7];
      if (qword_27EE571C0 == -1)
      {
        goto LABEL_154;
      }

      goto LABEL_188;
    }

    __break(1u);
LABEL_192:
    swift_once();
LABEL_144:
    v110 = sub_24794ED34();
    __swift_project_value_buffer(v110, qword_27EE58DF8);
    v111 = sub_24794ED14();
    v112 = sub_24794F154();
    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      *v113 = 0;
      _os_log_impl(&dword_2478E1000, v111, v112, "#ButtonPressActionEvent: not enough events in biome stream to create manifest", v113, 2u);
      MEMORY[0x24C1AF180](v113, -1, -1);
    }
  }

  else
  {
  }

  v215[37] = v28;
  v70 = *(v215[14] + 88);
  v125 = *(*v70 + 528);
  v44 = *v70 + 528;

  v125(v28);
  v126 = v215[14];

  if ((sub_2478F6F0C() & 1) == 0)
  {
    v80 = v215[31];
    v138 = v215[29];
    v139 = v215[25];

    v140 = v215[26];
    goto LABEL_179;
  }

  v80 = v215[25];
  if ((v80 & 0x8000000000000000) != 0 || (v80 & 0x4000000000000000) != 0)
  {
    goto LABEL_194;
  }

  v205 = *(v80 + 16);
  v207 = v215[25];
  if (v205)
  {
LABEL_163:
    v70 = 0;
    v127 = v215;
    v128 = v215[20];
    v201 = v80 & 0xC000000000000001;
    v75 = v128 + 48;
    v28 = v128 + 32;
    v211 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v201)
      {
        v129 = MEMORY[0x24C1AE890](v70, v127[25]);
        v44 = v70 + 1;
        if (__OFADD__(v70, 1))
        {
          goto LABEL_184;
        }
      }

      else
      {
        if (v70 >= v207[2])
        {
          goto LABEL_185;
        }

        v129 = v207[v70 + 4];

        v44 = v70 + 1;
        if (__OFADD__(v70, 1))
        {
          goto LABEL_184;
        }
      }

      v130 = v127[19];
      v80 = v127;
      v131 = v127[16];
      v132 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_odSampleId;
      swift_beginAccess();
      sub_2478FA014(v129 + v132, v131);

      if ((*v75)(v131, 1, v130) == 1)
      {
        sub_2478E9620(*(v80 + 128), &qword_27EE57278, &unk_247950590);
        v127 = v80;
      }

      else
      {
        v133 = *v28;
        (*v28)(*(v80 + 176), *(v80 + 128), *(v80 + 152));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v211 = sub_24793AADC(0, *(v211 + 2) + 1, 1, v211);
        }

        v135 = *(v211 + 2);
        v134 = *(v211 + 3);
        if (v135 >= v134 >> 1)
        {
          v211 = sub_24793AADC(v134 > 1, v135 + 1, 1, v211);
        }

        v127 = v215;
        v136 = v215[22];
        v137 = v215[19];
        *(v211 + 2) = v135 + 1;
        v133(&v211[((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v135], v136, v137);
      }

      ++v70;
      if (v44 == v205)
      {
        v208 = v127[25];
        goto LABEL_196;
      }
    }
  }

  while (2)
  {
    v211 = MEMORY[0x277D84F90];
LABEL_196:
    v152 = v215[32];

    if (!v152)
    {
      v28 = MEMORY[0x277D84F90];
LABEL_213:
      v163 = *(v215 + 336);
      v164 = v215[29];
      v75 = v215[27];

      v165 = *(v211 + 2);
      v166 = 2;
      if (v165 < v75 && (v163 & 1) == 0)
      {
        v167 = v215[28];
        v168 = v215[26];
        v142 = __CFADD__(v167, v168);
        v169 = v167 + v168;
        if (v142)
        {
          goto LABEL_237;
        }

        if (v165 < v169)
        {

          if (qword_27EE571C0 != -1)
          {
            swift_once();
          }

          v170 = sub_24794ED34();
          __swift_project_value_buffer(v170, qword_27EE58DF8);
          v171 = sub_24794ED14();
          v172 = sub_24794F154();
          v173 = os_log_type_enabled(v171, v172);
          v174 = v215[31];
          if (v173)
          {
            v175 = swift_slowAlloc();
            *v175 = 0;
            _os_log_impl(&dword_2478E1000, v171, v172, "#ButtonPressActionEvent: not enough events in biome stream to create manifest", v175, 2u);
            MEMORY[0x24C1AF180](v175, -1, -1);

            goto LABEL_234;
          }

LABEL_233:

LABEL_234:
          v140 = v215[26];
          v80 = *(v215[14] + 88);
          v186 = *(*v80 + 520);
          v70 = *v80 + 520;

          v186(v140);

LABEL_179:
          v141 = v215[37];
          v142 = __CFADD__(v141, v140);
          v143 = v141 + v140;
          if (!v142)
          {
            v145 = v215[23];
            v144 = v215[24];
            v147 = v215[21];
            v146 = v215[22];
            v149 = v215[17];
            v148 = v215[18];
            v150 = v215[16];
            v213 = v215[15];
            *(*(*(*(v215[14] + 88) + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_metaDataManager) + 16) + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_uploadedNumRecords) = v143;

            sub_247940408();

            v42 = v215[1];
            goto LABEL_50;
          }

          __break(1u);
LABEL_194:
          v205 = sub_24794F414();
          v207 = v215[25];
          if (v205)
          {
            goto LABEL_163;
          }

          continue;
        }

        v166 = 1;
      }

      v75 = sub_2478E8DC8(v215[30], v215[31], v211, v166, v215[27]);
      v215[38] = v75;

      if (v75)
      {
        v176 = [v75 speakerIdModelSampleManifestReported];
        if (!v176)
        {
          v178 = v215[26];
LABEL_228:
          v215[39] = v178;
          v180 = [v75 speakerIdModelSampleManifestReported];
          if (v180)
          {
            v181 = v180;
            sub_24791A2DC(v28);
          }

          v182 = v215[14];

          v80 = v182[4];
          v28 = v182[5];
          v70 = v182[6];
          v44 = v182[7];
          if (qword_27EE571C0 != -1)
          {
            goto LABEL_238;
          }

          goto LABEL_231;
        }

        v177 = v176;
        v178 = [v176 odsampleIdsCount];

        if ((v178 & 0x8000000000000000) == 0)
        {
          goto LABEL_228;
        }

        __break(1u);
      }

      v179 = v215[31];

      goto LABEL_233;
    }

    break;
  }

  v75 = 0;
  v153 = v215[29];
  v206 = v153 & 0xFFFFFFFFFFFFFF8;
  v209 = v153 & 0xC000000000000001;
  v198 = v215[20];
  v202 = v153 + 32;
  v70 = v198 + 32;
  v28 = MEMORY[0x277D84F90];
  while (v209)
  {
    v154 = MEMORY[0x24C1AE890](v75, v215[29]);
    v44 = v75 + 1;
    if (__OFADD__(v75, 1))
    {
      goto LABEL_235;
    }

LABEL_203:
    v80 = v215;
    v155 = v215[19];
    v156 = v215[15];
    v157 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_odSampleId;
    swift_beginAccess();
    sub_2478FA014(v154 + v157, v156);

    if ((*(v198 + 48))(v156, 1, v155) == 1)
    {
      sub_2478E9620(v215[15], &qword_27EE57278, &unk_247950590);
    }

    else
    {
      v158 = *v70;
      (*v70)(v215[21], v215[15], v215[19]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_24793AADC(0, *(v28 + 16) + 1, 1, v28);
      }

      v160 = *(v28 + 16);
      v159 = *(v28 + 24);
      if (v160 >= v159 >> 1)
      {
        v28 = sub_24793AADC(v159 > 1, v160 + 1, 1, v28);
      }

      v80 = v215;
      v161 = v215[21];
      v162 = v215[19];
      *(v28 + 16) = v160 + 1;
      v158(v28 + ((*(v198 + 80) + 32) & ~*(v198 + 80)) + *(v198 + 72) * v160, v161, v162);
    }

    ++v75;
    if (v44 == *(v80 + 256))
    {
      goto LABEL_213;
    }
  }

  if (v75 >= *(v206 + 16))
  {
    goto LABEL_236;
  }

  v154 = *(v202 + 8 * v75);

  v44 = v75 + 1;
  if (!__OFADD__(v75, 1))
  {
    goto LABEL_203;
  }

LABEL_235:
  __break(1u);
LABEL_236:
  __break(1u);
LABEL_237:
  __break(1u);
LABEL_238:
  swift_once();
LABEL_231:
  v183 = sub_24794ED34();
  v120 = __swift_project_value_buffer(v183, qword_27EE58DF8);
  v184 = *(v28 + 136);
  v212 = (v184 + *v184);
  v185 = v184[1];
  v123 = swift_task_alloc();
  v215[40] = v123;
  *v123 = v215;
  v124 = sub_2478F9B64;
LABEL_155:
  v123[1] = v124;

  return v212(v75, v70, v44, v120, v80, v28);
}