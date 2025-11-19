_BYTE *sub_24790B3A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57278, &unk_247950590);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v118 = &v96 - v4;
  v5 = &qword_27EE572D0;
  v6 = &unk_2479504E0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v96 - v9;
  v108 = sub_24794EBB4();
  v11 = *(v108 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v108);
  v97 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v104 = &v96 - v15;
  v16 = sub_24794EC04();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v123 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v122 = &v96 - v22;
  MEMORY[0x28223BE20](v21);
  v115 = &v96 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57468, &qword_247951058);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v28 = &v96 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v111 = &v96 - v29;
  v30 = *(a1 + 64);
  v113 = a1 + 64;
  v31 = 1 << *(a1 + 32);
  v32 = -1;
  v99 = MEMORY[0x277D84F90];
  v130 = MEMORY[0x277D84F90];
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & v30;
  v112 = (v31 + 63) >> 6;
  v116 = (v17 + 16);
  v121 = (v17 + 32);
  v105 = (v11 + 48);
  v102 = (v11 + 32);
  v117 = (v17 + 48);
  v106 = v17;
  v119 = (v17 + 8);
  v96 = (v11 + 16);
  v101 = (v11 + 8);
  v107 = a1;

  v35 = 0;
  v128 = v16;
  v114 = v28;
  v110 = v10;
LABEL_4:
  v36 = v113;
  v37 = v112;
  while (v33)
  {
    v38 = v5;
    v39 = v6;
    v40 = v35;
LABEL_17:
    v43 = __clz(__rbit64(v33));
    v33 &= v33 - 1;
    v44 = v43 | (v40 << 6);
    v45 = v107;
    v46 = v106;
    v47 = v115;
    (*(v106 + 16))(v115, *(v107 + 48) + *(v106 + 72) * v44, v16);
    v48 = *(*(v45 + 56) + 8 * v44);
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57470, &unk_247951060);
    v50 = v16;
    v51 = v49;
    v52 = *(v49 + 48);
    v53 = *(v46 + 32);
    v28 = v114;
    v53(v114, v47, v50);
    *&v28[v52] = v48;
    (*(*(v51 - 8) + 56))(v28, 0, 1, v51);

LABEL_18:
    v54 = v111;
    sub_24790C0BC(v28, v111);
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57470, &unk_247951060);
    if ((*(*(v55 - 8) + 48))(v54, 1, v55) == 1)
    {

      return v99;
    }

    v56 = *(v54 + *(v55 + 48));
    v57 = v54;
    v16 = v128;
    v109 = *v121;
    v109(v122, v57, v128);
    if (v56 >> 62)
    {
      result = sub_24794F414();
    }

    else
    {
      result = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v58 = v123;
    v6 = v39;
    v5 = v38;
    v59 = v110;
    v126 = result;
    if (!result)
    {

      goto LABEL_6;
    }

    v129 = v56 & 0xC000000000000001;
    if ((v56 & 0xC000000000000001) != 0)
    {
      v60 = MEMORY[0x24C1AE890](0, v56);
    }

    else
    {
      if (!*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_71;
      }

      v60 = *(v56 + 32);
    }

    v61 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_date;
    swift_beginAccess();
    sub_2478E9680(v60 + v61, v59, v5, v6);
    v62 = v108;
    if ((*v105)(v59, 1, v108) == 1)
    {

      sub_2478E9620(v59, v5, v6);
      v16 = v128;
      goto LABEL_6;
    }

    v103 = v60;
    v63 = *v102;
    result = (*v102)(v104, v59, v62);
    v64 = v126;
    if (v126 < 1)
    {
      goto LABEL_72;
    }

    v100 = v63;
    v124 = 0;
    v125 = 0;
    v65 = 0;
    v120 = 0;
    v66 = 0;
    v67 = 0;
    do
    {
      if (v129)
      {
        result = MEMORY[0x24C1AE890](v67, v56);
        v68 = result;
      }

      else
      {
        v68 = *(v56 + 8 * v67 + 32);
      }

      if (v68[OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_invocationSource + 4])
      {
LABEL_29:

        goto LABEL_30;
      }

      v69 = *&v68[OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_invocationSource];
      if (v69 > 78)
      {
        if (v69 == 79)
        {
          v71 = __OFADD__(v124++, 1);
          if (v71)
          {
            goto LABEL_69;
          }
        }

        else
        {
          if (v69 != 80)
          {
            goto LABEL_29;
          }

          v71 = __OFADD__(v125++, 1);
          if (v71)
          {
            goto LABEL_70;
          }
        }
      }

      else
      {
        if (v69 != 17 && v69 != 25)
        {
          goto LABEL_29;
        }

        v71 = __OFADD__(v65++, 1);
        if (v71)
        {
          goto LABEL_68;
        }
      }

      if (v66)
      {
        goto LABEL_29;
      }

      v127 = v65;
      v72 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_requestId;
      swift_beginAccess();
      v73 = v118;
      sub_2478E9680(&v68[v72], v118, &qword_27EE57278, &unk_247950590);
      v74 = v128;
      if ((*v117)(v73, 1, v128))
      {

        sub_2478E9620(v73, &qword_27EE57278, &unk_247950590);
        v120 = 0;
        v66 = 0;
      }

      else
      {
        v75 = v115;
        (*v116)(v115, v73, v74);
        sub_2478E9620(v73, &qword_27EE57278, &unk_247950590);
        v120 = sub_24794EBD4();
        v66 = v76;

        (*v119)(v75, v74);
      }

      v58 = v123;
      v64 = v126;
      v65 = v127;
LABEL_30:
      ++v67;
    }

    while (v64 != v67);
    v6 = &unk_2479504E0;
    if (v65 || v125 || v124)
    {
      v78 = v97;
      v79 = v104;
      v80 = v108;
      (*v96)(v97, v104, v108);
      v81 = v128;
      (*v116)(v58, v122, v128);
      result = [*(v98 + 16) locale];
      if (!result)
      {
        goto LABEL_73;
      }

      v82 = result;

      v129 = sub_24794EF04();
      v127 = v83;

      (*v101)(v79, v80);
      v84 = type metadata accessor for SiriSession();
      v85 = *(v84 + 48);
      v86 = *(v84 + 52);
      v87 = swift_allocObject();
      v100(v87 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_date, v78, v80);
      v88 = (v87 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_requestInfo);
      v90 = v124;
      v89 = v125;
      *v88 = v65;
      v88[1] = v89;
      v91 = v120;
      v88[2] = v90;
      v88[3] = v91;
      v88[4] = v66;
      v109((v87 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_sessionClockId), v123, v81);
      v92 = (v87 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_locale);
      v93 = v127;
      *v92 = v129;
      v92[1] = v93;

      MEMORY[0x24C1AE560](v94);
      if (*((v130 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v130 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v95 = *((v130 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_24794F084();
      }

      sub_24794F0A4();

      result = (*v119)(v122, v81);
      v99 = v130;
      v5 = &qword_27EE572D0;
      v6 = &unk_2479504E0;
      v16 = v81;
      v28 = v114;
      goto LABEL_4;
    }

    (*v101)(v104, v108);
    v5 = &qword_27EE572D0;
    v16 = v128;
    v28 = v114;
LABEL_6:
    result = (*v119)(v122, v16);
    v36 = v113;
    v37 = v112;
  }

  if (v37 <= v35 + 1)
  {
    v41 = v35 + 1;
  }

  else
  {
    v41 = v37;
  }

  v42 = v41 - 1;
  while (1)
  {
    v40 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v40 >= v37)
    {
      v38 = v5;
      v39 = v6;
      v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57470, &unk_247951060);
      (*(*(v77 - 8) + 56))(v28, 1, 1, v77);
      v33 = 0;
      v35 = v42;
      goto LABEL_18;
    }

    v33 = *(v36 + 8 * v40);
    ++v35;
    if (v33)
    {
      v38 = v5;
      v39 = v6;
      v35 = v40;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_24790BFE0()
{

  return swift_deallocClassInstance();
}

uint64_t (*sub_24790C03C(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x24C1AE890](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return sub_24790C20C;
  }

  __break(1u);
  return result;
}

uint64_t sub_24790C0BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57468, &qword_247951058);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t (*sub_24790C12C(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x24C1AE890](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return sub_24790C1AC;
  }

  __break(1u);
  return result;
}

unint64_t sub_24790C1B4()
{
  result = qword_27EE57250;
  if (!qword_27EE57250)
  {
    sub_24794EC04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE57250);
  }

  return result;
}

uint64_t sub_24790C240()
{
  v34 = v0;
  v1 = *(v0[2] + 64);
  v0[3] = v1;
  if (!(*(**(v1 + 16) + 392))())
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v13 = sub_24794ED34();
    __swift_project_value_buffer(v13, qword_27EE58DF8);
    v14 = sub_24794ED14();
    v15 = sub_24794F164();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2478E1000, v14, v15, "#SpkrIdOneSessionActionEvent: cannot find storedSession to generate final manifest", v16, 2u);
      MEMORY[0x24C1AF180](v16, -1, -1);
    }

    sub_24790E750();
    swift_allocError();
    *v17 = 0;
    v17[1] = 0;
    goto LABEL_12;
  }

  v3 = (*(**(v1 + 16) + 376))(v2);
  v0[4] = v3;
  if (!v3)
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v19 = sub_24794ED34();
    __swift_project_value_buffer(v19, qword_27EE58DF8);
    v20 = sub_24794ED14();
    v21 = sub_24794F164();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2478E1000, v20, v21, "#SpkrIdOneSessionActionEvent: cannot find enrollmentMetadata to generate enrollment metadata", v22, 2u);
      MEMORY[0x24C1AF180](v22, -1, -1);
    }

    sub_24790E750();
    swift_allocError();
    *v23 = xmmword_247951070;
LABEL_12:
    swift_willThrow();
    v18 = *(v1 + 48);
    *(v18 + 24);
    goto LABEL_24;
  }

  v4 = sub_24794EBD4();
  v6 = v5;
  v7 = objc_opt_self();
  v8 = sub_24794EEF4();
  v9 = [v7 getVoiceProfileWithVoiceProfileId_];
  v0[5] = v9;

  if (v9)
  {

    v10 = swift_task_alloc();
    v0[6] = v10;
    *v10 = v0;
    v10[1] = sub_24790C8A8;
    v11 = v0[2];

    return sub_24790CCD4(v9);
  }

  if (qword_27EE571C0 != -1)
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
    v28 = swift_slowAlloc();
    v33 = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_247924380(v4, v6, &v33);
    _os_log_impl(&dword_2478E1000, v25, v26, "Cannot get voice profile with id: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x24C1AF180](v28, -1, -1);
    MEMORY[0x24C1AF180](v27, -1, -1);
  }

  sub_24790E750();
  swift_allocError();
  *v29 = v4;
  v29[1] = v6;
  swift_willThrow();

  v18 = *(v1 + 48);
  if (*(v18 + 24) <= 1u)
  {
    *(v18 + 24);
  }

LABEL_24:
  v30 = *(v18 + 16);
  v31 = sub_24794EEF4();

  [v30 removeObjectForKey_];

  v32 = v0[1];

  return v32();
}

uint64_t sub_24790C8A8(uint64_t a1)
{
  v2 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 56) = a1;

  return MEMORY[0x2822009F8](sub_24790C9A8, 0, 0);
}

uint64_t sub_24790C9A8()
{
  v1 = v0[7];
  if (v1)
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v2 = sub_24794ED34();
    __swift_project_value_buffer(v2, qword_27EE58DF8);
    v3 = sub_24794ED14();
    v4 = sub_24794F144();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2478E1000, v3, v4, "#SpkrIdSamplingOneSessionActionEvent: generating manifest event for upload", v5, 2u);
      MEMORY[0x24C1AF180](v5, -1, -1);
    }

    if (qword_27EE571E8 != -1)
    {
      swift_once();
    }

    v6 = v0[4];
    v7 = v0[5];
    v8 = v0[3];
    sub_247939A88(v1);

    v9 = *(v8 + 48);
    if (*(v9 + 24) <= 1u)
    {
      *(v9 + 24);
    }

    v15 = *(v9 + 16);
    v16 = sub_24794EEF4();

    [v15 removeObjectForKey_];

    v17 = v0[1];
  }

  else
  {
    v10 = v0[4];
    v11 = v0[5];
    v12 = v0[3];
    sub_24790E750();
    swift_allocError();
    *v13 = xmmword_247951080;
    swift_willThrow();

    v14 = *(v12 + 48);
    if (*(v14 + 24) <= 1u)
    {
      *(v14 + 24);
    }

    v18 = *(v14 + 16);
    v19 = sub_24794EEF4();

    [v18 removeObjectForKey_];

    v17 = v0[1];
  }

  return v17();
}

uint64_t sub_24790CCD4(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x2822009F8](sub_24790CCF4, 0, 0);
}

uint64_t sub_24790CCF4()
{
  v2 = v0[7];
  v1 = v0[8];
  type metadata accessor for EnrollmentProfileDataGenerator();
  v7 = *(v1 + 48);
  inited = swift_initStackObject();
  v0[9] = inited;
  *(inited + 16) = v2;
  *(inited + 24) = v7;
  v4 = v2;
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_24790CDC0;

  return sub_247930460();
}

uint64_t sub_24790CDC0(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = a1;

  return MEMORY[0x2822009F8](sub_24790CEC0, 0, 0);
}

uint64_t sub_24790CEC0()
{
  if (!v0[11])
  {
    v4 = v0[9];
LABEL_20:

LABEL_21:
    v21 = 0;
    goto LABEL_22;
  }

  v1 = v0[11];
  v2 = sub_24792EF34();
  if (!v2)
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v5 = sub_24794ED34();
    __swift_project_value_buffer(v5, qword_27EE58DF8);
    v6 = sub_24794ED14();
    v7 = sub_24794F164();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[9];
    if (v8)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2478E1000, v6, v7, "#SpkrIdSamplingOneSessionActionEvent: Cannot get enrollmentProfile event for upload", v10, 2u);
      MEMORY[0x24C1AF180](v10, -1, -1);
    }

    goto LABEL_19;
  }

  v3 = v2;
  if (!(*(**(*(v0[8] + 64) + 16) + 392))() || (v11 = sub_2479489B8(), , !v11))
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v16 = sub_24794ED34();
    __swift_project_value_buffer(v16, qword_27EE58DF8);
    v6 = sub_24794ED14();
    v17 = sub_24794F164();
    v18 = os_log_type_enabled(v6, v17);
    v19 = v0[9];
    if (v18)
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2478E1000, v6, v17, "#SpkrIdSamplingOneSessionActionEvent: Cannot get session event for upload", v20, 2u);
      MEMORY[0x24C1AF180](v20, -1, -1);
    }

LABEL_19:

    goto LABEL_20;
  }

  v12 = [objc_allocWithZone(MEMORY[0x277D58910]) init];
  if (!v12)
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v24 = sub_24794ED34();
    __swift_project_value_buffer(v24, qword_27EE58DF8);
    v25 = sub_24794ED14();
    v26 = sub_24794F164();
    v27 = os_log_type_enabled(v25, v26);
    v28 = v0[9];
    if (v27)
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_2478E1000, v25, v26, "#SpkrIdSamplingOneSessionActionEvent: Cannot create sample session report", v29, 2u);
      MEMORY[0x24C1AF180](v29, -1, -1);
    }

    goto LABEL_21;
  }

  v13 = v12;
  v14 = sub_24794EEF4();
  v15 = MGGetStringAnswer();

  if (v15)
  {
    sub_24794EF04();
  }

  v30 = v0[9];
  [v13 setEnrollmentData_];
  [v13 setClockSessionInfo_];
  v31 = sub_24794EEF4();

  [v13 setSystemBuild_];

  v21 = v13;
LABEL_22:
  v22 = v0[1];

  return v22(v21);
}

void sub_24790D458(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_24794EBB4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57278, &unk_247950590);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v90 - v13;
  v15 = sub_24794EC04();
  v16 = *(v15 - 8);
  v96 = v15;
  v97 = v16;
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v95 = &v90 - v21;
  v22 = *(*(v2 + 72) + 80);
  v23 = sub_24790A4C4(a1);
  v24 = sub_24790B3A0(v23);

  v25 = sub_247911158(v24);

  if (v25)
  {
    v27 = *(v3 + 64);
    v37 = (*(**(v27 + 16) + 392))(v26);
    v92 = v27;
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v38 = sub_24794ED34();
    v39 = __swift_project_value_buffer(v38, qword_27EE58DF8);

    v40 = sub_24794ED14();
    v41 = sub_24794F144();

    if (os_log_type_enabled(v40, v41))
    {
      v93 = v39;
      v42 = v25;
      v43 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v98 = v90;
      *v43 = 136315394;
      v94 = v37;
      LODWORD(v91) = v41;
      if (v37)
      {
        sub_24794879C();
      }

      else
      {
        sub_24794D0D4(MEMORY[0x277D84F90]);
      }

      v44 = sub_24794EE94();
      v46 = v45;

      v47 = sub_247924380(v44, v46, &v98);

      *(v43 + 4) = v47;
      *(v43 + 12) = 2080;
      sub_24794879C();
      v48 = sub_24794EE94();
      v50 = v49;

      v51 = sub_247924380(v48, v50, &v98);

      *(v43 + 14) = v51;
      _os_log_impl(&dword_2478E1000, v40, v91, "stored session: %s, selected session: %s", v43, 0x16u);
      v52 = v90;
      swift_arrayDestroy();
      MEMORY[0x24C1AF180](v52, -1, -1);
      v53 = v43;
      v25 = v42;
      MEMORY[0x24C1AF180](v53, -1, -1);

      v39 = v93;
      v37 = v94;
    }

    else
    {
    }

    v54 = [*(*(v3 + 32) + 16) getVoiceProfile];
    if (!v54)
    {
      goto LABEL_25;
    }

    v55 = v54;
    v56 = [v54 profileID];
    if (!v56)
    {

      goto LABEL_25;
    }

    v91 = v25;
    v57 = v56;
    sub_24794EF04();

    sub_24794EBC4();

    v59 = v96;
    v58 = v97;
    if ((*(v97 + 48))(v14, 1, v96) == 1)
    {

      sub_2478E9620(v14, &qword_27EE57278, &unk_247950590);
LABEL_25:
      v78 = sub_24794ED14();
      v79 = sub_24794F164();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        *v80 = 0;
        _os_log_impl(&dword_2478E1000, v78, v79, "#SpkrIdOneSessionActionEvent: No voiceProfileId UUID can be found", v80, 2u);
        MEMORY[0x24C1AF180](v80, -1, -1);
      }

      return;
    }

    v94 = v37;
    v60 = *(v58 + 32);
    v61 = v95;
    v60(v95, v14, v59);
    v62 = [v55 locale];
    if (!v62)
    {
      (*(v58 + 8))(v61, v59);

      goto LABEL_25;
    }

    v93 = v39;
    v63 = v58;
    v64 = v62;
    v65 = v59;
    v90 = sub_24794EF04();
    v66 = v61;
    v68 = v67;

    (*(v63 + 16))(v20, v66, v65);
    v69 = type metadata accessor for EnrollmentMetadata();
    v70 = *(v69 + 48);
    v71 = *(v69 + 52);
    v72 = swift_allocObject();
    v60((v72 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics18EnrollmentMetadata_voiceProfileId), v20, v65);
    v73 = (v72 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics18EnrollmentMetadata_locale);
    v74 = v90;
    *v73 = v90;
    v73[1] = v68;

    v75 = v91;
    LOBYTE(v74) = sub_24790E2FC(v91, v94, v74, v68);

    if (v74)
    {
      v76 = v92;
      v77 = *(**(v92 + 16) + 400);

      v77(v75);

      sub_247940408();

      v84 = *(**(v76 + 16) + 384);

      v84(v72);

      sub_247940408();

      v85 = sub_24794ED14();
      v86 = sub_24794F144();
      v87 = os_log_type_enabled(v85, v86);
      v88 = v95;
      if (v87)
      {
        v89 = swift_slowAlloc();
        *v89 = 0;
        _os_log_impl(&dword_2478E1000, v85, v86, "#SpkrIdOneSessionActionEvent: Successfully stored better session and enrollment metadata", v89, 2u);
        MEMORY[0x24C1AF180](v89, -1, -1);
      }

      else
      {
      }

      (*(v97 + 8))(v88, v96);
    }

    else
    {
      v81 = sub_24794ED14();
      v82 = sub_24794F144();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        *v83 = 0;
        _os_log_impl(&dword_2478E1000, v81, v82, "#SpkrIdOneSessionActionEvent: Selected session should not replace stored session", v83, 2u);
        MEMORY[0x24C1AF180](v83, -1, -1);
      }

      else
      {
      }

      (*(v97 + 8))(v95, v96);
    }
  }

  else
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v28 = sub_24794ED34();
    __swift_project_value_buffer(v28, qword_27EE58DF8);
    (*(v7 + 16))(v10, a2, v6);
    v29 = sub_24794ED14();
    v30 = sub_24794F144();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v98 = v32;
      *v31 = 136315138;
      sub_2478EC590();
      v33 = sub_24794F4D4();
      v35 = v34;
      (*(v7 + 8))(v10, v6);
      v36 = sub_247924380(v33, v35, &v98);

      *(v31 + 4) = v36;
      _os_log_impl(&dword_2478E1000, v29, v30, "#SpkrIdOneSessionActionEvent: No session from the date: %s is selected", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x24C1AF180](v32, -1, -1);
      MEMORY[0x24C1AF180](v31, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }
  }
}

uint64_t sub_24790E1CC()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[8];

  v5 = v0[9];

  return swift_deallocClassInstance();
}

uint64_t sub_24790E26C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2478E8998;

  return sub_24790C220();
}

BOOL sub_24790E2FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 1;
  }

  v6 = *(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_locale);
  v7 = *(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_locale + 8);
  if (v6 == a3 && v7 == a4)
  {
    v24 = (a2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_locale);
    v18 = *(a2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_locale);
    v17 = *(a2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_locale + 8);
    v25 = v18 == a3 && v17 == a4;
    if (v25 || (v26 = *v24, v27 = v24[1], (sub_24794F4E4() & 1) != 0))
    {
LABEL_24:
      v35 = *(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_requestInfo);
      v36 = *(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_requestInfo + 8);
      v37 = __OFADD__(v35, v36);
      v38 = v35 + v36;
      if (v37)
      {
        __break(1u);
      }

      else
      {
        v39 = *(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_requestInfo + 16);
        v37 = __OFADD__(v38, v39);
        v40 = v38 + v39;
        if (!v37)
        {
          v41 = *(a2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_requestInfo);
          v42 = *(a2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_requestInfo + 8);
          v37 = __OFADD__(v41, v42);
          v43 = v41 + v42;
          if (!v37)
          {
            v44 = *(a2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_requestInfo + 16);
            v37 = __OFADD__(v43, v44);
            v45 = v43 + v44;
            if (!v37)
            {
              if (v40 == v45)
              {
                return v35 < v41;
              }

              else
              {
                return v45 < v40;
              }
            }

            goto LABEL_43;
          }

LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }
      }

      __break(1u);
      goto LABEL_42;
    }

LABEL_19:
    v28 = qword_27EE571C0;

    if (v28 == -1)
    {
LABEL_20:
      v29 = sub_24794ED34();
      __swift_project_value_buffer(v29, qword_27EE58DF8);

      v30 = sub_24794ED14();
      v31 = sub_24794F144();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v54 = v33;
        *v32 = 136315394;
        *(v32 + 4) = sub_247924380(v6, v7, &v54);
        *(v32 + 12) = 2080;

        v34 = sub_247924380(v18, v17, &v54);

        *(v32 + 14) = v34;
        _os_log_impl(&dword_2478E1000, v30, v31, "#SpkrIdOneSessionActionEvent: Selected session locale (%s) matches current locale, stored session locale (%s) is outdated", v32, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1AF180](v33, -1, -1);
        MEMORY[0x24C1AF180](v32, -1, -1);
      }

      return 1;
    }

LABEL_44:
    swift_once();
    goto LABEL_20;
  }

  v9 = *(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_locale);
  v12 = sub_24794F4E4();
  v13 = a3;
  v14 = a4;
  v15 = v12;
  v16 = (a2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_locale);
  v18 = *(a2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_locale);
  v17 = *(a2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_locale + 8);
  if (v18 == v13 && v17 == v14)
  {
    if (v12)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v20 = *v16;
    v21 = v16[1];
    v22 = sub_24794F4E4();
    if (v15)
    {
      if (v22)
      {
        goto LABEL_24;
      }

      goto LABEL_19;
    }

    if ((v22 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  v47 = qword_27EE571C0;

  if (v47 != -1)
  {
    swift_once();
  }

  v48 = sub_24794ED34();
  __swift_project_value_buffer(v48, qword_27EE58DF8);

  v49 = sub_24794ED14();
  v50 = sub_24794F144();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v54 = v52;
    *v51 = 136315394;

    v53 = sub_247924380(v18, v17, &v54);

    *(v51 + 4) = v53;
    *(v51 + 12) = 2080;
    *(v51 + 14) = sub_247924380(v6, v7, &v54);
    _os_log_impl(&dword_2478E1000, v49, v50, "#SpkrIdOneSessionActionEvent: Stored session locale (%s) matches current locale, selected session locale (%s) doesn't match - keeping stored session", v51, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1AF180](v52, -1, -1);
    MEMORY[0x24C1AF180](v51, -1, -1);
  }

  return 0;
}

unint64_t sub_24790E750()
{
  result = qword_27EE57478;
  if (!qword_27EE57478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE57478);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_23CoreSpeechDataAnalytics19DeviceSamplingErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_24790E7C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24790E824(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *sub_24790E874(void *result, int a2)
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

uint64_t sub_24790E8A4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  *(v4 + 72) = 0;
  *(v4 + 80) = 2;
  v7 = *a3;
  if (!*a3)
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
      _os_log_impl(&dword_2478E1000, v15, v16, "#CSDASpkrIdSamplingOneSessionPolicy: init failed: samplingUtils is nil", v17, 2u);
      MEMORY[0x24C1AF180](v17, -1, -1);
    }

    v40 = a3[2];
    sub_2478E9620(&v40, &qword_27EE57290, &unk_2479504F0);
    v39 = a3[3];
    sub_2478E9620(&v39, &qword_27EE57298, &unk_2479503D0);
    v38 = a3[4];
    sub_2478E9620(&v38, &qword_27EE572A0, &unk_247950500);
    v37 = a3[5];
    v18 = &qword_27EE572A8;
    v19 = &unk_2479503E0;
    v20 = &v37;
    goto LABEL_16;
  }

  v8 = a3[5];
  if (!v8)
  {

    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v21 = sub_24794ED34();
    __swift_project_value_buffer(v21, qword_27EE58DF8);
    v22 = sub_24794ED14();
    v23 = sub_24794F164();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_2478E1000, v22, v23, "#CSDASpkrIdSamplingOneSessionPolicy: init failed: metadataManager is nil", v24, 2u);
      MEMORY[0x24C1AF180](v24, -1, -1);
    }

    v40 = a3[2];
    sub_2478E9620(&v40, &qword_27EE57290, &unk_2479504F0);
    v39 = a3[3];
    sub_2478E9620(&v39, &qword_27EE57298, &unk_2479503D0);
    v38 = a3[4];
    v18 = &qword_27EE572A0;
    v19 = &unk_247950500;
    v20 = &v38;
LABEL_16:
    sub_2478E9620(v20, v18, v19);
LABEL_29:

    type metadata accessor for SpkrIdSamplingOneSessionPolicy();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v9 = a3[1];
  v10 = a3[3];
  v40 = v10;
  if (!v10)
  {

    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v25 = sub_24794ED34();
    __swift_project_value_buffer(v25, qword_27EE58DF8);
    v26 = sub_24794ED14();
    v27 = sub_24794F164();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_2478E1000, v26, v27, "#CSDASpkrIdSamplingOneSessionPolicy: init failed: siriProfileManager is nil", v28, 2u);
      MEMORY[0x24C1AF180](v28, -1, -1);

      v39 = a3[2];
      sub_2478E9620(&v39, &qword_27EE57290, &unk_2479504F0);
      v29 = &qword_27EE57298;
      v30 = &unk_2479503D0;
      v31 = &v40;
    }

    else
    {

      v39 = a3[2];
      v29 = &qword_27EE57290;
      v30 = &unk_2479504F0;
      v31 = &v39;
    }

    goto LABEL_28;
  }

  v11 = a3[2];
  v39 = v11;
  if (!v11)
  {

    sub_2478E9680(&v40, &v38, &qword_27EE57298, &unk_2479503D0);

    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v32 = sub_24794ED34();
    __swift_project_value_buffer(v32, qword_27EE58DF8);
    v33 = sub_24794ED14();
    v34 = sub_24794F164();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_2478E1000, v33, v34, "#CSDASpkrIdSamplingOneSessionPolicy: init failed: configUserDefaults is nil", v35, 2u);
      MEMORY[0x24C1AF180](v35, -1, -1);

      sub_2478E9620(&v40, &qword_27EE57298, &unk_2479503D0);

      sub_2478E9620(&v39, &qword_27EE57290, &unk_2479504F0);
    }

    else
    {

      sub_2478E9620(&v40, &qword_27EE57298, &unk_2479503D0);
    }

    v31 = &v40;
    v29 = &qword_27EE57298;
    v30 = &unk_2479503D0;
LABEL_28:
    sub_2478E9620(v31, v29, v30);
    v38 = a3[4];
    sub_2478E9620(&v38, &qword_27EE572A0, &unk_247950500);

    goto LABEL_29;
  }

  v38 = a3[4];
  sub_2478E9620(&v38, &qword_27EE572A0, &unk_247950500);
  *(v4 + 16) = v7;
  *(v4 + 24) = v9;
  *(v4 + 32) = v8;
  *(v4 + 40) = a1;
  *(v4 + 48) = a2;
  *(v4 + 56) = v10;
  v13 = *(v4 + 72);
  *(v4 + 64) = v11;
  *(v4 + 72) = 0;

  return v4;
}

void sub_24790EEA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v74 = a1;
  v5 = sub_24794EBB4();
  v76 = *(v5 - 8);
  isa = v76[8].isa;
  MEMORY[0x28223BE20](v5);
  v75 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v64 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v64 - v16;
  v18 = v2[2];
  v19 = v3[3];
  v20 = (*(v19 + 232))(v18, v19);
  if (v21)
  {
    v22 = v21;
    LOBYTE(v77) = 3;
    v67 = v5;
    v23 = v3[8];
    v24 = *(v19 + 32);
    v73 = v20;
    v65 = v24(&v77, v23, v18, v19);
    v68 = v25;
    v26 = v74;
    (*(v19 + 64))(v23, v74, a2, v18, v19);
    v27 = v3[5];
    v28 = v3[6];
    v71 = v3;
    v72 = v17;
    sub_2478E9680(v17, v15, &qword_27EE572D0, &unk_2479504E0);
    v69 = type metadata accessor for DeterministicUserSelector();
    v29 = objc_allocWithZone(v69);
    v30 = &v29[OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_locale];
    v64 = v27;
    *v30 = v27;
    v30[1] = v28;
    v31 = &v29[OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_deviceID];
    *v31 = v73;
    *(v31 + 1) = v22;
    v32 = &v29[OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_siriSharedUserId];
    *v32 = v26;
    *(v32 + 1) = a2;
    v33 = a2;
    sub_2478E9680(v15, v12, &qword_27EE572D0, &unk_2479504E0);
    v34 = v76[6].isa;
    v35 = v67;
    v36 = (v34)(v12, 1);
    v70 = v15;
    v66 = v28;
    if (v36 == 1)
    {
      v37 = v34;
      v38 = qword_27EE571D0;

      if (v38 != -1)
      {
        swift_once();
      }

      v39 = __swift_project_value_buffer(v35, qword_27EE57578);
      v41 = v75;
      v40 = v76;
      (v76[2].isa)(v75, v39, v35);
      v42 = v40;
      if (v37(v12, 1, v35) != 1)
      {
        sub_2478E9620(v12, &qword_27EE572D0, &unk_2479504E0);
      }
    }

    else
    {
      v41 = v75;
      v42 = v76;
      (v76[4].isa)(v75, v12, v35);
    }

    (v42[4].isa)(&v29[OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_anchorDate], v41, v35);
    v47 = v71;
    if (v68)
    {
      if (qword_27EE571C8 != -1)
      {
        swift_once();
      }

      v48 = off_27EE57570;
      v49 = 1.0;
      if (*(off_27EE57570 + 2))
      {
        v50 = sub_24792BEF8(v64, v66);
        if (v51)
        {
          v49 = *(v48[7] + 8 * v50);
        }
      }
    }

    else
    {
      v49 = *&v65;
    }

    v52 = fmin(v49, 1.0);
    if (v52 < 0.0)
    {
      v52 = 0.0;
    }

    *&v29[OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_samplingPercentage] = v52;
    v78.receiver = v29;
    v78.super_class = v69;
    v53 = objc_msgSendSuper2(&v78, sel_init);
    sub_2478E9620(v70, &qword_27EE572D0, &unk_2479504E0);
    v54 = v47[9];
    v47[9] = v53;

    if (v33)
    {
      v55 = 0xD000000000000015;
    }

    else
    {
      v55 = 0xD000000000000018;
    }

    if (v33)
    {
      v56 = "without siriSharedUserId";
    }

    else
    {
      v56 = "_cachedDeviceEligibility";
    }

    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v57 = sub_24794ED34();
    __swift_project_value_buffer(v57, qword_27EE58DF8);

    v58 = sub_24794ED14();
    v59 = sub_24794F144();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v77 = v61;
      *v60 = 136315394;
      v62 = sub_247924380(v73, v22, &v77);

      *(v60 + 4) = v62;
      *(v60 + 12) = 2080;
      v63 = sub_247924380(v55, v56 | 0x8000000000000000, &v77);

      *(v60 + 14) = v63;
      _os_log_impl(&dword_2478E1000, v58, v59, "#SpkrIdSamplingOneSessionPolicy: initialized user selector with deviceId: %s %s", v60, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1AF180](v61, -1, -1);
      MEMORY[0x24C1AF180](v60, -1, -1);
    }

    else
    {
    }

    sub_2478E9620(v72, &qword_27EE572D0, &unk_2479504E0);
  }

  else
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v43 = sub_24794ED34();
    __swift_project_value_buffer(v43, qword_27EE58DF8);
    v76 = sub_24794ED14();
    v44 = sub_24794F164();
    if (os_log_type_enabled(v76, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_2478E1000, v76, v44, "#SpkrIdSamplingOneSessionPolicy: failed to get device ID", v45, 2u);
      MEMORY[0x24C1AF180](v45, -1, -1);
    }

    v46 = v76;
  }
}

uint64_t sub_24790F610()
{
  v1 = *(v0 + 80);
  if (v1 == 2)
  {
    v2 = sub_2479106A0();
    *(v0 + 80) = v2 & 1;
    if ((v2 & 1) == 0)
    {
      return 0;
    }

LABEL_5:
    if (sub_247910468())
    {
      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v3 = sub_24794ED34();
      __swift_project_value_buffer(v3, qword_27EE58DF8);
      v4 = sub_24794ED14();
      v5 = sub_24794F144();
      if (!os_log_type_enabled(v4, v5))
      {
        goto LABEL_11;
      }

      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "#SpkrIdSamplingOneSessionPolicy: current user selected for sampling";
    }

    else
    {
      if (!(*(**(*(v0 + 32) + 16) + 392))())
      {
        if (qword_27EE571C0 != -1)
        {
          swift_once();
        }

        v10 = sub_24794ED34();
        __swift_project_value_buffer(v10, qword_27EE58DF8);
        v11 = sub_24794ED14();
        v12 = sub_24794F144();
        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          *v13 = 0;
          _os_log_impl(&dword_2478E1000, v11, v12, "#SpkrIdSamplingOneSessionPolicy: not selected for current window and no selected siri session found, device not selected for sampling", v13, 2u);
          MEMORY[0x24C1AF180](v13, -1, -1);
        }

        return 0;
      }

      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v9 = sub_24794ED34();
      __swift_project_value_buffer(v9, qword_27EE58DF8);
      v4 = sub_24794ED14();
      v5 = sub_24794F144();
      if (!os_log_type_enabled(v4, v5))
      {
LABEL_11:

        return 1;
      }

      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "#SpkrIdSamplingOneSessionPolicy: not selected for current window but selected siri session found, should process";
    }

    _os_log_impl(&dword_2478E1000, v4, v5, v7, v6, 2u);
    MEMORY[0x24C1AF180](v6, -1, -1);
    goto LABEL_11;
  }

  if (v1)
  {
    goto LABEL_5;
  }

  return 0;
}

void sub_24790F9EC()
{
  v1 = sub_24794EBB4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - v14;
  v16 = *(v0 + 80);
  if (v16 == 2)
  {
    v17 = sub_2479106A0();
    *(v0 + 80) = v17 & 1;
    if ((v17 & 1) == 0)
    {
      return;
    }
  }

  else if ((v16 & 1) == 0)
  {
    return;
  }

  if (sub_247910468())
  {
    v29 = *(v0 + 32);
    isa = v29[2].isa;
    v19 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_collectionStartDate;
    swift_beginAccess();
    sub_2478E9680(isa + v19, v15, &qword_27EE572D0, &unk_2479504E0);
    LODWORD(isa) = (*(v2 + 48))(v15, 1, v1);
    sub_2478E9620(v15, &qword_27EE572D0, &unk_2479504E0);
    if (isa == 1)
    {
      type metadata accessor for Utils();
      sub_24794EBA4();
      sub_247940B60(v6, v8);
      v20 = *(v2 + 8);
      v20(v6, v1);
      (*(v2 + 16))(v13, v8, v1);
      (*(v2 + 56))(v13, 0, 1, v1);
      v21 = v29;
      v22 = v29[2].isa;
      v23 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_collectionStartDate;
      swift_beginAccess();

      sub_2479096C8(v13, v22 + v23);
      swift_endAccess();

      sub_247940408();
      sub_2478E9620(v13, &qword_27EE572D0, &unk_2479504E0);
      *(v21[2].isa + 16) = 1;
      sub_247940408();
      v20(v8, v1);
    }
  }

  else
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v24 = sub_24794ED34();
    __swift_project_value_buffer(v24, qword_27EE58DF8);
    v29 = sub_24794ED14();
    v25 = sub_24794F144();
    if (os_log_type_enabled(v29, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2478E1000, v29, v25, "#SpkrIdSamplingOneSessionPolicy: checkAndSelectDeviceForSampling: device is not selected for sampling", v26, 2u);
      MEMORY[0x24C1AF180](v26, -1, -1);
    }

    v27 = v29;
  }
}

BOOL sub_24790FDD8()
{
  if (sub_24790FEEC())
  {
    v1 = *(v0 + 32);
    sub_2479409C0();
  }

  v2 = sub_247910468();
  if (v2)
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v3 = sub_24794ED34();
    __swift_project_value_buffer(v3, qword_27EE58DF8);
    v4 = sub_24794ED14();
    v5 = sub_24794F144();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2478E1000, v4, v5, "#SpkrIdSamplingOneSessionPolicy: device is still in sampling window", v6, 2u);
      MEMORY[0x24C1AF180](v6, -1, -1);
    }
  }

  return !v2;
}

uint64_t sub_24790FEEC()
{
  v1 = sub_24794EC04();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*(**(*(v0 + 32) + 16) + 376))(v4);
  if (!v7)
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v18 = sub_24794ED34();
    __swift_project_value_buffer(v18, qword_27EE58DF8);
    v19 = sub_24794ED14();
    v20 = sub_24794F154();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2478E1000, v19, v20, "#SpkrIdSamplingOneSessionPolicy: no enrollment metadata to compare, don't need to remove enrollmentMetadata", v21, 2u);
      MEMORY[0x24C1AF180](v21, -1, -1);
    }

    return 0;
  }

  v8 = v7;
  v9 = [*(*(v0 + 56) + 16) getVoiceProfile];
  if (!v9)
  {

    return 0;
  }

  v10 = v9;
  v11 = [v9 locale];
  if (!v11)
  {
LABEL_27:

    return 0;
  }

  v12 = v11;
  v13 = sub_24794EF04();
  v15 = v14;

  if (v13 == *(v8 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics18EnrollmentMetadata_locale) && v15 == *(v8 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics18EnrollmentMetadata_locale + 8))
  {
  }

  else
  {
    v17 = sub_24794F4E4();

    if ((v17 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v22 = [v10 profileID];
  if (v22)
  {
    v23 = v22;
    v24 = sub_24794EF04();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  (*(v2 + 16))(v6, v8 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics18EnrollmentMetadata_voiceProfileId, v1);
  v27 = sub_24794EBD4();
  v29 = v28;
  (*(v2 + 8))(v6, v1);
  if (v26)
  {
    if (v24 == v27 && v26 == v29)
    {

      return 0;
    }

    v30 = sub_24794F4E4();

    if (v30)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v32 = sub_24794ED34();
  __swift_project_value_buffer(v32, qword_27EE58DF8);
  v33 = sub_24794ED14();
  v34 = sub_24794F154();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_2478E1000, v33, v34, "#SpkrIdSamplingOneSessionPolicy: should discard enrollmentMetadata as profileId is different for the same locale", v35, 2u);
    MEMORY[0x24C1AF180](v35, -1, -1);
  }

  return 1;
}

BOOL sub_247910468()
{
  v1 = sub_24794EBB4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v18 - v8;
  v10 = *(v0 + 72);
  if (v10)
  {
    (*(v2 + 56))(v9, 1, 1, v1);
    v11 = v10;
    sub_24794EBA4();
    v12 = sub_24792A018(v5, v9);

    (*(v2 + 8))(v5, v1);
    sub_2478E9620(v9, &qword_27EE572D0, &unk_2479504E0);
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
    v15 = sub_24794F164();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2478E1000, v14, v15, "#SpkrIdSamplingOneSessionPolicy: userSelector is nil, device not selected", v16, 2u);
      MEMORY[0x24C1AF180](v16, -1, -1);
    }

    return 0;
  }

  return v12;
}

uint64_t sub_2479106A0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  if ((v1[10](v2, v1) & 1) == 0 || (v1[11](v2, v1) & 1) == 0)
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v4 = sub_24794ED34();
    __swift_project_value_buffer(v4, qword_27EE58DF8);
    v5 = sub_24794ED14();
    v6 = sub_24794F144();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_11;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "#SpkrIdSamplingOneSessionPolicy: Opt-in is not enabled, shoud not sample device";
    goto LABEL_10;
  }

  if ((v1[12](v2, v1) & 1) == 0)
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v9 = sub_24794ED34();
    __swift_project_value_buffer(v9, qword_27EE58DF8);
    v5 = sub_24794ED14();
    v6 = sub_24794F144();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_11;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "#SpkrIdSamplingOneSessionPolicy: rpi is not turned on, should not sample device";
    goto LABEL_10;
  }

  if (v1[13](v2, v1))
  {
    return 1;
  }

  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v10 = sub_24794ED34();
  __swift_project_value_buffer(v10, qword_27EE58DF8);
  v5 = sub_24794ED14();
  v6 = sub_24794F144();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "#SpkrIdSamplingOneSessionPolicy: location service is not enabled, should not sample device";
LABEL_10:
    _os_log_impl(&dword_2478E1000, v5, v6, v8, v7, 2u);
    MEMORY[0x24C1AF180](v7, -1, -1);
  }

LABEL_11:

  return 0;
}

uint64_t sub_247910938()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  return swift_deallocClassInstance();
}

void sub_247910A28()
{
  v1 = *(*v0 + 32);
  v2 = *(v1 + 48);
  v3 = sub_24793B3D0();
  if (v3)
  {
    v4 = *(v1 + 16);
    *(v1 + 16) = v3;
  }

  sub_24790EEA0(0, 0);
}

void *sub_247910A80(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = 3;
  type metadata accessor for SiriRequestRecordFactory();
  v6 = swift_allocObject();
  *(v6 + 16) = 3;
  *(v3 + 40) = v6;
  v7 = *a3;
  if (!*a3)
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v15 = sub_24794ED34();
    __swift_project_value_buffer(v15, qword_27EE58DF8);
    v16 = sub_24794ED14();
    v17 = sub_24794F164();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2478E1000, v16, v17, "#SpkrIdSamplingOneSessionSelectionRule: samplingUtils is not defined", v18, 2u);
      MEMORY[0x24C1AF180](v18, -1, -1);
    }

    v41 = a3[2];
    sub_2478E9620(&v41, &qword_27EE57290, &unk_2479504F0);
    v40 = a3[3];
    sub_2478E9620(&v40, &qword_27EE57298, &unk_2479503D0);
    v39 = a3[4];
    sub_2478E9620(&v39, &qword_27EE572A0, &unk_247950500);
    v38 = a3[5];
    sub_2478E9620(&v38, &qword_27EE572A8, &unk_2479503E0);
    goto LABEL_27;
  }

  v8 = a3[5];
  if (!v8)
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v19 = sub_24794ED34();
    __swift_project_value_buffer(v19, qword_27EE58DF8);
    v20 = sub_24794ED14();
    v21 = sub_24794F164();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2478E1000, v20, v21, "#SpkrIdSamplingOneSessionSelectionRule: metadata manager is not defined", v22, 2u);
      MEMORY[0x24C1AF180](v22, -1, -1);
    }

    v41 = a3[2];
    sub_2478E9620(&v41, &qword_27EE57290, &unk_2479504F0);
    v40 = a3[3];
    sub_2478E9620(&v40, &qword_27EE57298, &unk_2479503D0);
    v39 = a3[4];
    sub_2478E9620(&v39, &qword_27EE572A0, &unk_247950500);
    goto LABEL_27;
  }

  v9 = a3[1];
  v10 = a3[3];
  v41 = v10;
  if (!v10)
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
      _os_log_impl(&dword_2478E1000, v25, v26, "#SpkrIdSamplingOneSessionSelectionRule: siriProfileManager is not defined", v27, 2u);
      MEMORY[0x24C1AF180](v27, -1, -1);

      v40 = a3[2];
      sub_2478E9620(&v40, &qword_27EE57290, &unk_2479504F0);
      v28 = &qword_27EE57298;
      v29 = &unk_2479503D0;
      v30 = &v41;
    }

    else
    {

      v40 = a3[2];
      v28 = &qword_27EE57290;
      v29 = &unk_2479504F0;
      v30 = &v40;
    }

    goto LABEL_26;
  }

  v11 = *(v10 + 16);

  sub_2479113F0(&v41, &v40);
  v12 = [v11 getVoiceProfile];
  if (!v12)
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v31 = sub_24794ED34();
    __swift_project_value_buffer(v31, qword_27EE58DF8);
    v32 = sub_24794ED14();
    v33 = sub_24794F164();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_2478E1000, v32, v33, "#SpkrIdSamplingOneSessionSelectionRule: Cannot get voice profile from siriProfileManager", v34, 2u);
      MEMORY[0x24C1AF180](v34, -1, -1);
    }

    sub_2478E9620(&v41, &qword_27EE57298, &unk_2479503D0);
    v40 = a3[2];
    sub_2478E9620(&v40, &qword_27EE57290, &unk_2479504F0);
    v30 = &v41;
    v28 = &qword_27EE57298;
    v29 = &unk_2479503D0;
LABEL_26:
    sub_2478E9620(v30, v28, v29);
    v39 = a3[4];
    sub_2478E9620(&v39, &qword_27EE572A0, &unk_247950500);

LABEL_27:
    v35 = v4[3];

    v36 = v4[5];

    type metadata accessor for SpkrIdSamplingOneSessionSelectionRule();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v13 = v12;
  v40 = a3[2];
  sub_2478E9620(&v40, &qword_27EE57290, &unk_2479504F0);
  sub_2478E9620(&v41, &qword_27EE57298, &unk_2479503D0);
  v39 = a3[4];
  sub_2478E9620(&v39, &qword_27EE572A0, &unk_247950500);

  v4[9] = v10;
  type metadata accessor for SiriSessionGenerator();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v4[10] = v14;
  v4[6] = v7;
  v4[7] = v9;
  v4[8] = v8;
  return v4;
}

uint64_t sub_2479110AC()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[8];

  v4 = v0[9];

  v5 = v0[10];

  return swift_deallocClassInstance();
}

uint64_t sub_247911158(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_39;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
LABEL_40:
    if (qword_27EE571C0 != -1)
    {
      goto LABEL_46;
    }

    goto LABEL_41;
  }

LABEL_3:
  if (v2 >= 1)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v3 = 0;
      v4 = 0;
      while (1)
      {
        v6 = MEMORY[0x24C1AE890](v4, v1);
        if (v3)
        {
          v7 = *(v6 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_requestInfo + 8);
          v8 = __OFADD__(*(v6 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_requestInfo), v7);
          v9 = *(v6 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_requestInfo) + v7;
          if (v8)
          {
            __break(1u);
LABEL_32:
            __break(1u);
LABEL_33:
            __break(1u);
LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
            goto LABEL_36;
          }

          v10 = *(v6 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_requestInfo + 16);
          v8 = __OFADD__(v9, v10);
          v11 = v9 + v10;
          if (v8)
          {
            goto LABEL_32;
          }

          v12 = *(v3 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_requestInfo);
          v13 = *(v3 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_requestInfo + 8);
          v8 = __OFADD__(v12, v13);
          v14 = v12 + v13;
          if (v8)
          {
            goto LABEL_33;
          }

          v15 = *(v3 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_requestInfo + 16);
          v8 = __OFADD__(v14, v15);
          v16 = v14 + v15;
          if (v8)
          {
            goto LABEL_34;
          }

          v17 = *(v6 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_requestInfo) < v12;
          if (v11 != v16)
          {
            v17 = v16 < v11;
          }

          if (!v17)
          {
            swift_unknownObjectRelease();
            goto LABEL_8;
          }

          v5 = v6;

          v6 = v5;
        }

        v3 = v6;
LABEL_8:
        if (v2 == ++v4)
        {
          return v3;
        }
      }
    }

    v3 = 0;
    v18 = (v1 + 32);
    v19 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_requestInfo;
    while (1)
    {
      v1 = *v18;
      if (!v3)
      {
        break;
      }

      v21 = *(v1 + v19);
      v22 = *(v1 + v19 + 8);
      v8 = __OFADD__(v21, v22);
      v23 = v21 + v22;
      if (v8)
      {
        goto LABEL_35;
      }

      v24 = *(v1 + v19 + 16);
      v8 = __OFADD__(v23, v24);
      v25 = v23 + v24;
      if (v8)
      {
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        v2 = sub_24794F414();
        if (!v2)
        {
          goto LABEL_40;
        }

        goto LABEL_3;
      }

      v26 = *(v3 + v19);
      v27 = *(v3 + v19 + 8);
      v8 = __OFADD__(v26, v27);
      v28 = v26 + v27;
      if (v8)
      {
        goto LABEL_37;
      }

      v29 = *(v3 + v19 + 16);
      v8 = __OFADD__(v28, v29);
      v30 = v28 + v29;
      if (v8)
      {
        goto LABEL_38;
      }

      v31 = v21 < v26;
      if (v25 != v30)
      {
        v31 = v30 < v25;
      }

      if (v31)
      {
        v32 = *v18;

        v19 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_requestInfo;
        goto LABEL_20;
      }

LABEL_21:
      ++v18;
      if (!--v2)
      {
        return v3;
      }
    }

    v20 = *v18;

LABEL_20:
    v3 = v1;
    goto LABEL_21;
  }

  __break(1u);
LABEL_46:
  swift_once();
LABEL_41:
  v33 = sub_24794ED34();
  __swift_project_value_buffer(v33, qword_27EE58DF8);
  v34 = sub_24794ED14();
  v35 = sub_24794F144();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_2478E1000, v34, v35, "#SpkrIdSamplingOneSessionSelectionRule: No sessions generated from records for date", v36, 2u);
    MEMORY[0x24C1AF180](v36, -1, -1);
  }

  return 0;
}

uint64_t sub_2479113F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57298, &unk_2479503D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_247911460(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE00435346737365;
  v3 = 0x72506E6F74747562;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xD000000000000011;
    }

    else
    {
      v5 = 0xD000000000000013;
    }

    if (v4 == 2)
    {
      v6 = 0x8000000247952580;
    }

    else
    {
      v6 = 0x80000002479525A0;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x72506E6F74747562;
    }

    else
    {
      v5 = 0xD000000000000015;
    }

    if (v4)
    {
      v6 = 0xEE00435346737365;
    }

    else
    {
      v6 = 0x8000000247952550;
    }
  }

  v7 = 0x8000000247952580;
  v8 = 0xD000000000000013;
  if (a2 == 2)
  {
    v8 = 0xD000000000000011;
  }

  else
  {
    v7 = 0x80000002479525A0;
  }

  if (!a2)
  {
    v3 = 0xD000000000000015;
    v2 = 0x8000000247952550;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24794F4E4();
  }

  return v11 & 1;
}

unint64_t SamplingDataCollectionType.rawValue.getter()
{
  v1 = 0x72506E6F74747562;
  v2 = 0xD000000000000013;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000011;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

CoreSpeechDataAnalytics::SamplingDataCollectionType_optional __swiftcall SamplingDataCollectionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24794F4A4();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_247911688()
{
  v1 = *v0;
  sub_24794F584();
  sub_24794EF74();

  return sub_24794F5B4();
}

uint64_t sub_24791175C()
{
  *v0;
  sub_24794EF74();
}

uint64_t sub_24791181C()
{
  v1 = *v0;
  sub_24794F584();
  sub_24794EF74();

  return sub_24794F5B4();
}

void sub_2479118F8(unint64_t *a1@<X8>)
{
  v2 = 0xEE00435346737365;
  v3 = 0x72506E6F74747562;
  v4 = 0x8000000247952580;
  v5 = 0xD000000000000013;
  if (*v1 == 2)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v4 = 0x80000002479525A0;
  }

  if (!*v1)
  {
    v3 = 0xD000000000000015;
    v2 = 0x8000000247952550;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

id AudioRequestInvocationData.__allocating_init(isVoiceTrigger:isButtonPress:)(char a1, char a2)
{
  v5 = objc_allocWithZone(v2);
  v5[OBJC_IVAR____TtC23CoreSpeechDataAnalytics26AudioRequestInvocationData_isVoiceTrigger] = a1;
  v5[OBJC_IVAR____TtC23CoreSpeechDataAnalytics26AudioRequestInvocationData_isButtonPress] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id AudioRequestInvocationData.init(isVoiceTrigger:isButtonPress:)(char a1, char a2)
{
  v2[OBJC_IVAR____TtC23CoreSpeechDataAnalytics26AudioRequestInvocationData_isVoiceTrigger] = a1;
  v2[OBJC_IVAR____TtC23CoreSpeechDataAnalytics26AudioRequestInvocationData_isButtonPress] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for AudioRequestInvocationData();
  return objc_msgSendSuper2(&v4, sel_init);
}

id AudioRequestInvocationData.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AudioRequestInvocationData.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudioRequestInvocationData();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_247911BA4()
{
  result = qword_27EE57490;
  if (!qword_27EE57490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE57490);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SamplingDataCollectionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SamplingDataCollectionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_247911D74(uint64_t a1)
{
  v2[32] = a1;
  v2[33] = v1;
  v3 = sub_24794EBB4();
  v2[34] = v3;
  v4 = *(v3 - 8);
  v2[35] = v4;
  v5 = *(v4 + 64) + 15;
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57498, &unk_247951530) - 8) + 64) + 15;
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_247911E90, 0, 0);
}

uint64_t sub_247911E90()
{
  *(v0 + 240) = 0;
  v51 = (v0 + 136);
  v1 = (v0 + 176);
  v2 = *(v0 + 256);
  v3 = sub_24794E30C(MEMORY[0x277D84F90]);
  v4 = *(v2 + 32);
  *(v0 + 233) = v4;
  v5 = 1 << v4;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(v2 + 64);

  v9 = 0;
  *(v0 + 328) = v3;
  if (v7)
  {
    v10 = *(v0 + 256);
LABEL_14:
    v15 = *(v0 + 304);
    v14 = *(v0 + 312);
    v17 = *(v0 + 272);
    v16 = *(v0 + 280);
    v18 = (v7 - 1) & v7;
    v19 = __clz(__rbit64(v7)) | (v9 << 6);
    (*(v16 + 16))(v15, *(v10 + 48) + *(v16 + 72) * v19, v17);
    v20 = *(*(v10 + 56) + 8 * v19);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574A0, &unk_247951720);
    v22 = *(v21 + 48);
    (*(v16 + 32))(v14, v15, v17);
    *(v14 + v22) = v20;
    (*(*(v21 - 8) + 56))(v14, 0, 1, v21);

    v12 = v9;
    v1 = (v0 + 176);
LABEL_15:
    *(v0 + 336) = v18;
    *(v0 + 344) = v12;
    v23 = *(v0 + 320);
    sub_247917674(*(v0 + 312), v23);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574A0, &unk_247951720);
    if ((*(*(v24 - 8) + 48))(v23, 1, v24) == 1)
    {
      v36 = *(v0 + 256);
      v37 = *(v0 + 264);

      sub_247917728(v37 + 96, v0 + 16);
      v38 = *(v0 + 40);
      v39 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v38);
      v40 = *(v39 + 48);
      v52 = (v40 + *v40);
      v41 = v40[1];
      v42 = swift_task_alloc();
      *(v0 + 392) = v42;
      *v42 = v0;
      v42[1] = sub_247913AA4;

      return v52(v38, v39);
    }

    else
    {
      v25 = *(v0 + 296);
      v26 = *(v0 + 272);
      v27 = *(v0 + 264);
      v28 = *(*(v0 + 320) + *(v24 + 48));
      (*(*(v0 + 280) + 32))(v25);
      sub_247917728(v27 + 96, v51);
      v29 = *(v0 + 160);
      v30 = *(v0 + 168);
      __swift_project_boxed_opaque_existential_1(v51, v29);
      (*(v30 + 72))(v29, v30);
      __swift_destroy_boxed_opaque_existential_0(v51);
      sub_247917728(v27 + 56, v1);
      v31 = *(v0 + 200);
      v32 = *(v0 + 208);
      __swift_project_boxed_opaque_existential_1(v1, v31);
      v33 = (*(v32 + 16))(v28, v25, v31, v32);
      *(v0 + 352) = v33;
      v43 = v33;
      v44 = *(v0 + 264);

      __swift_destroy_boxed_opaque_existential_0(v1);
      if (*(v44 + 184) == 3)
      {
        v45 = swift_task_alloc();
        *(v0 + 360) = v45;
        *v45 = v0;
        v45[1] = sub_24791275C;
        v46 = *(v0 + 296);
        v47 = *(v0 + 264);

        return sub_247916730(v43, v46);
      }

      else
      {
        v48 = swift_task_alloc();
        *(v0 + 376) = v48;
        *v48 = v0;
        v48[1] = sub_247913100;
        v49 = *(v0 + 296);
        v50 = *(v0 + 264);

        return sub_2479168C8(v43, v49, v0 + 240);
      }
    }
  }

  else
  {
    if (((1 << *(v0 + 233)) + 63) >> 6 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = ((1 << *(v0 + 233)) + 63) >> 6;
    }

    v12 = v11 - 1;
    while (1)
    {
      v13 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v13 >= (((1 << *(v0 + 233)) + 63) >> 6))
      {
        v34 = *(v0 + 312);
        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574A0, &unk_247951720);
        (*(*(v35 - 8) + 56))(v34, 1, 1, v35);
        v18 = 0;
        goto LABEL_15;
      }

      v10 = *(v0 + 256);
      v7 = *(v10 + 8 * v13 + 64);
      ++v9;
      if (v7)
      {
        v9 = v13;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24791275C()
{
  v2 = *v1;
  v3 = *(*v1 + 360);
  v4 = *v1;
  *(*v1 + 368) = v0;

  v5 = *(v2 + 352);

  if (v0)
  {
    v6 = sub_247914D04;
  }

  else
  {
    v6 = sub_247912890;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

void sub_247912890()
{
  v83 = v0;
  v1 = *(v0 + 368);
  (*(*(v0 + 280) + 8))(*(v0 + 296), *(v0 + 272));
LABEL_2:
  v2 = *(v0 + 336);
  v3 = *(v0 + 344);
  while (v2)
  {
    v79 = v1;
    v11 = *(v0 + 256);
LABEL_15:
    v16 = *(v0 + 304);
    v17 = *(v0 + 312);
    v18 = *(v0 + 272);
    v19 = *(v0 + 280);
    v20 = (v2 - 1) & v2;
    v21 = __clz(__rbit64(v2)) | (v3 << 6);
    (*(v19 + 16))(v16, *(v11 + 48) + *(v19 + 72) * v21, v18);
    v22 = *(*(v11 + 56) + 8 * v21);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574A0, &unk_247951720);
    v24 = *(v23 + 48);
    (*(v19 + 32))(v17, v16, v18);
    *(v17 + v24) = v22;
    (*(*(v23 - 8) + 56))(v17, 0, 1, v23);

    v25 = v20;
    v14 = v3;
    v1 = v79;
LABEL_16:
    *(v0 + 336) = v25;
    *(v0 + 344) = v14;
    v26 = *(v0 + 320);
    sub_247917674(*(v0 + 312), v26);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574A0, &unk_247951720);
    if ((*(*(v27 - 8) + 48))(v26, 1, v27) == 1)
    {
      v62 = *(v0 + 256);
      v63 = *(v0 + 264);

      sub_247917728(v63 + 96, v0 + 16);
      v64 = *(v0 + 40);
      v65 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v64);
      v66 = *(v65 + 48);
      v81 = (v66 + *v66);
      v67 = v66[1];
      v68 = swift_task_alloc();
      *(v0 + 392) = v68;
      *v68 = v0;
      v68[1] = sub_247913AA4;

      v81(v64, v65);
      return;
    }

    v28 = *(v0 + 296);
    v29 = *(v0 + 272);
    v30 = *(v0 + 264);
    v31 = *(*(v0 + 320) + *(v27 + 48));
    (*(*(v0 + 280) + 32))(v28);
    sub_247917728(v30 + 96, v0 + 136);
    v32 = *(v0 + 160);
    v33 = *(v0 + 168);
    __swift_project_boxed_opaque_existential_1((v0 + 136), v32);
    (*(v33 + 72))(v32, v33);
    __swift_destroy_boxed_opaque_existential_0((v0 + 136));
    sub_247917728(v30 + 56, v0 + 176);
    v34 = *(v0 + 200);
    v35 = *(v0 + 208);
    __swift_project_boxed_opaque_existential_1((v0 + 176), v34);
    v36 = (*(v35 + 16))(v31, v28, v34, v35);
    *(v0 + 352) = v36;
    if (!v1)
    {
      v69 = v36;
      v70 = *(v0 + 264);

      __swift_destroy_boxed_opaque_existential_0((v0 + 176));
      if (*(v70 + 184) == 3)
      {
        v71 = swift_task_alloc();
        *(v0 + 360) = v71;
        *v71 = v0;
        v71[1] = sub_24791275C;
        v72 = *(v0 + 296);
        v73 = *(v0 + 264);

        sub_247916730(v69, v72);
      }

      else
      {
        v74 = swift_task_alloc();
        *(v0 + 376) = v74;
        *v74 = v0;
        v74[1] = sub_247913100;
        v75 = *(v0 + 296);
        v76 = *(v0 + 264);

        sub_2479168C8(v69, v75, v0 + 240);
      }

      return;
    }

    __swift_destroy_boxed_opaque_existential_0((v0 + 176));
    *(v0 + 248) = v1;
    v37 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574A8, &qword_247951540);
    if (swift_dynamicCast())
    {
      v38 = *(v0 + 216);
      v39 = *(v0 + 224);
      v40 = *(v0 + 232);
      if (v40 == 2 && v38 == 12 && !v39)
      {
        (*(*(v0 + 280) + 8))(*(v0 + 296), *(v0 + 272));

        v1 = 0;
        goto LABEL_2;
      }

      sub_24791778C(v38, v39, v40);
    }

    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v41 = *(v0 + 288);
    v42 = *(v0 + 296);
    v44 = *(v0 + 272);
    v43 = *(v0 + 280);
    v45 = sub_24794ED34();
    __swift_project_value_buffer(v45, qword_27EE58DF8);
    (*(v43 + 16))(v41, v42, v44);
    v46 = v1;
    v47 = sub_24794ED14();
    v48 = sub_24794F164();

    v49 = os_log_type_enabled(v47, v48);
    v51 = *(v0 + 280);
    v50 = *(v0 + 288);
    v52 = *(v0 + 272);
    if (v49)
    {
      v53 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v82 = v80;
      *v53 = 138412546;
      v54 = v1;
      v55 = _swift_stdlib_bridgeErrorToNSError();
      *(v53 + 4) = v55;
      *v78 = v55;
      *(v53 + 12) = 2080;
      sub_2479176E4(&qword_27EE57288);
      v77 = v48;
      v56 = sub_24794F4D4();
      v58 = v57;
      v4 = *(v51 + 8);
      v4(v50, v52);
      v59 = sub_247924380(v56, v58, &v82);

      *(v53 + 14) = v59;
      _os_log_impl(&dword_2478E1000, v47, v77, "#CollectionManager: daily processing failed with error: %@ for date: %s", v53, 0x16u);
      sub_2478E9620(v78, &qword_27EE57280, &unk_2479503C0);
      MEMORY[0x24C1AF180](v78, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v80);
      MEMORY[0x24C1AF180](v80, -1, -1);
      MEMORY[0x24C1AF180](v53, -1, -1);
    }

    else
    {

      v4 = *(v51 + 8);
      v4(v50, v52);
    }

    v5 = *(v0 + 328);
    v6 = *(v0 + 296);
    v7 = *(v0 + 272);
    v8 = *(v0 + 280) + 8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v82 = v5;
    sub_24794B724(v1, v6, isUniquelyReferenced_nonNull_native);
    v10 = v82;
    v4(v6, v7);
    v1 = 0;
    v2 = *(v0 + 336);
    v3 = *(v0 + 344);
    *(v0 + 328) = v10;
  }

  v12 = ((1 << *(v0 + 233)) + 63) >> 6;
  if (v12 <= (v3 + 1))
  {
    v13 = v3 + 1;
  }

  else
  {
    v13 = ((1 << *(v0 + 233)) + 63) >> 6;
  }

  v14 = v13 - 1;
  while (1)
  {
    v15 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      v60 = *(v0 + 312);
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574A0, &unk_247951720);
      (*(*(v61 - 8) + 56))(v60, 1, 1, v61);
      v25 = 0;
      goto LABEL_16;
    }

    v11 = *(v0 + 256);
    v2 = *(v11 + 8 * v15 + 64);
    ++v3;
    if (v2)
    {
      v79 = v1;
      v3 = v15;
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_247913100()
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v4 = *v1;
  *(*v1 + 384) = v0;

  v5 = *(v2 + 352);

  if (v0)
  {
    v6 = sub_247915550;
  }

  else
  {
    v6 = sub_247913234;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

void sub_247913234()
{
  v83 = v0;
  v1 = *(v0 + 384);
  (*(*(v0 + 280) + 8))(*(v0 + 296), *(v0 + 272));
LABEL_2:
  v2 = *(v0 + 336);
  v3 = *(v0 + 344);
  while (v2)
  {
    v79 = v1;
    v11 = *(v0 + 256);
LABEL_15:
    v16 = *(v0 + 304);
    v17 = *(v0 + 312);
    v18 = *(v0 + 272);
    v19 = *(v0 + 280);
    v20 = (v2 - 1) & v2;
    v21 = __clz(__rbit64(v2)) | (v3 << 6);
    (*(v19 + 16))(v16, *(v11 + 48) + *(v19 + 72) * v21, v18);
    v22 = *(*(v11 + 56) + 8 * v21);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574A0, &unk_247951720);
    v24 = *(v23 + 48);
    (*(v19 + 32))(v17, v16, v18);
    *(v17 + v24) = v22;
    (*(*(v23 - 8) + 56))(v17, 0, 1, v23);

    v25 = v20;
    v14 = v3;
    v1 = v79;
LABEL_16:
    *(v0 + 336) = v25;
    *(v0 + 344) = v14;
    v26 = *(v0 + 320);
    sub_247917674(*(v0 + 312), v26);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574A0, &unk_247951720);
    if ((*(*(v27 - 8) + 48))(v26, 1, v27) == 1)
    {
      v62 = *(v0 + 256);
      v63 = *(v0 + 264);

      sub_247917728(v63 + 96, v0 + 16);
      v64 = *(v0 + 40);
      v65 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v64);
      v66 = *(v65 + 48);
      v81 = (v66 + *v66);
      v67 = v66[1];
      v68 = swift_task_alloc();
      *(v0 + 392) = v68;
      *v68 = v0;
      v68[1] = sub_247913AA4;

      v81(v64, v65);
      return;
    }

    v28 = *(v0 + 296);
    v29 = *(v0 + 272);
    v30 = *(v0 + 264);
    v31 = *(*(v0 + 320) + *(v27 + 48));
    (*(*(v0 + 280) + 32))(v28);
    sub_247917728(v30 + 96, v0 + 136);
    v32 = *(v0 + 160);
    v33 = *(v0 + 168);
    __swift_project_boxed_opaque_existential_1((v0 + 136), v32);
    (*(v33 + 72))(v32, v33);
    __swift_destroy_boxed_opaque_existential_0((v0 + 136));
    sub_247917728(v30 + 56, v0 + 176);
    v34 = *(v0 + 200);
    v35 = *(v0 + 208);
    __swift_project_boxed_opaque_existential_1((v0 + 176), v34);
    v36 = (*(v35 + 16))(v31, v28, v34, v35);
    *(v0 + 352) = v36;
    if (!v1)
    {
      v69 = v36;
      v70 = *(v0 + 264);

      __swift_destroy_boxed_opaque_existential_0((v0 + 176));
      if (*(v70 + 184) == 3)
      {
        v71 = swift_task_alloc();
        *(v0 + 360) = v71;
        *v71 = v0;
        v71[1] = sub_24791275C;
        v72 = *(v0 + 296);
        v73 = *(v0 + 264);

        sub_247916730(v69, v72);
      }

      else
      {
        v74 = swift_task_alloc();
        *(v0 + 376) = v74;
        *v74 = v0;
        v74[1] = sub_247913100;
        v75 = *(v0 + 296);
        v76 = *(v0 + 264);

        sub_2479168C8(v69, v75, v0 + 240);
      }

      return;
    }

    __swift_destroy_boxed_opaque_existential_0((v0 + 176));
    *(v0 + 248) = v1;
    v37 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574A8, &qword_247951540);
    if (swift_dynamicCast())
    {
      v38 = *(v0 + 216);
      v39 = *(v0 + 224);
      v40 = *(v0 + 232);
      if (v40 == 2 && v38 == 12 && !v39)
      {
        (*(*(v0 + 280) + 8))(*(v0 + 296), *(v0 + 272));

        v1 = 0;
        goto LABEL_2;
      }

      sub_24791778C(v38, v39, v40);
    }

    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v41 = *(v0 + 288);
    v42 = *(v0 + 296);
    v44 = *(v0 + 272);
    v43 = *(v0 + 280);
    v45 = sub_24794ED34();
    __swift_project_value_buffer(v45, qword_27EE58DF8);
    (*(v43 + 16))(v41, v42, v44);
    v46 = v1;
    v47 = sub_24794ED14();
    v48 = sub_24794F164();

    v49 = os_log_type_enabled(v47, v48);
    v51 = *(v0 + 280);
    v50 = *(v0 + 288);
    v52 = *(v0 + 272);
    if (v49)
    {
      v53 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v82 = v80;
      *v53 = 138412546;
      v54 = v1;
      v55 = _swift_stdlib_bridgeErrorToNSError();
      *(v53 + 4) = v55;
      *v78 = v55;
      *(v53 + 12) = 2080;
      sub_2479176E4(&qword_27EE57288);
      v77 = v48;
      v56 = sub_24794F4D4();
      v58 = v57;
      v4 = *(v51 + 8);
      v4(v50, v52);
      v59 = sub_247924380(v56, v58, &v82);

      *(v53 + 14) = v59;
      _os_log_impl(&dword_2478E1000, v47, v77, "#CollectionManager: daily processing failed with error: %@ for date: %s", v53, 0x16u);
      sub_2478E9620(v78, &qword_27EE57280, &unk_2479503C0);
      MEMORY[0x24C1AF180](v78, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v80);
      MEMORY[0x24C1AF180](v80, -1, -1);
      MEMORY[0x24C1AF180](v53, -1, -1);
    }

    else
    {

      v4 = *(v51 + 8);
      v4(v50, v52);
    }

    v5 = *(v0 + 328);
    v6 = *(v0 + 296);
    v7 = *(v0 + 272);
    v8 = *(v0 + 280) + 8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v82 = v5;
    sub_24794B724(v1, v6, isUniquelyReferenced_nonNull_native);
    v10 = v82;
    v4(v6, v7);
    v1 = 0;
    v2 = *(v0 + 336);
    v3 = *(v0 + 344);
    *(v0 + 328) = v10;
  }

  v12 = ((1 << *(v0 + 233)) + 63) >> 6;
  if (v12 <= (v3 + 1))
  {
    v13 = v3 + 1;
  }

  else
  {
    v13 = ((1 << *(v0 + 233)) + 63) >> 6;
  }

  v14 = v13 - 1;
  while (1)
  {
    v15 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      v60 = *(v0 + 312);
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574A0, &unk_247951720);
      (*(*(v61 - 8) + 56))(v60, 1, 1, v61);
      v25 = 0;
      goto LABEL_16;
    }

    v11 = *(v0 + 256);
    v2 = *(v11 + 8 * v15 + 64);
    ++v3;
    if (v2)
    {
      v79 = v1;
      v3 = v15;
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_247913AA4()
{
  v2 = *(*v1 + 392);
  v5 = *v1;
  *(*v1 + 400) = v0;

  if (v0)
  {
    v3 = sub_247915D9C;
  }

  else
  {
    v3 = sub_247913BB8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_247913BB8()
{
  v79 = v0;
  v1 = v0[50];
  v0[51] = 0;
  v2 = v0[33];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_247917728(v2 + 16, (v0 + 7));
  v3 = v0[10];
  v4 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v3);
  v5 = (*(v4 + 24))(v3, v4);
  if (v1)
  {
    v6 = v0[41];

    __swift_destroy_boxed_opaque_existential_0(v0 + 7);
LABEL_3:
    v8 = v0[39];
    v7 = v0[40];
    v10 = v0[37];
    v9 = v0[38];
    v11 = v0[36];

    v12 = v0[1];
LABEL_4:

    return v12();
  }

  v14 = v5;
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  if ((v14 & 1) == 0)
  {
    v21 = v0[30];
    if (v21 >= 1)
    {

      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v22 = v0[32];
      v23 = sub_24794ED34();
      __swift_project_value_buffer(v23, qword_27EE58DF8);

      v24 = sub_24794ED14();
      v25 = sub_24794F164();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = v0[34];
        v27 = v0[32];
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v78[0] = v29;
        *v28 = 134218242;
        *(v28 + 4) = v21;
        *(v28 + 12) = 2080;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574B8, &qword_247951548);
        sub_2479176E4(&qword_27EE574B0);
        v30 = sub_24794EEA4();
        v32 = sub_247924380(v30, v31, v78);

        *(v28 + 14) = v32;
        _os_log_impl(&dword_2478E1000, v24, v25, "#CollectionManager: some audio upload failed, count: %ld for days: %s", v28, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v29);
        MEMORY[0x24C1AF180](v29, -1, -1);
        MEMORY[0x24C1AF180](v28, -1, -1);
      }

      v33 = v0[51];
      sub_2478E95CC();
      swift_allocError();
      *v34 = xmmword_24794FF00;
      *(v34 + 16) = 2;
      swift_willThrow();

      goto LABEL_3;
    }

    if (*(v0[41] + 16))
    {
      v35 = v0[41];
      if (qword_27EE571C0 != -1)
      {
        swift_once();
        v76 = v0[41];
      }

      v36 = sub_24794ED34();
      __swift_project_value_buffer(v36, qword_27EE58DF8);

      v37 = sub_24794ED14();
      v38 = sub_24794F164();
      v39 = os_log_type_enabled(v37, v38);
      v40 = v0[41];
      if (v39)
      {
        v41 = v0[34];
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v78[0] = v43;
        *v42 = 134218242;
        *(v42 + 4) = *(v35 + 16);

        *(v42 + 12) = 2080;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574A8, &qword_247951540);
        sub_2479176E4(&qword_27EE574B0);
        v44 = sub_24794EEA4();
        v46 = v45;

        v47 = sub_247924380(v44, v46, v78);

        *(v42 + 14) = v47;
        _os_log_impl(&dword_2478E1000, v37, v38, "#CollectionManager: daily processing failed for %ld days: %s", v42, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v43);
        MEMORY[0x24C1AF180](v43, -1, -1);
        MEMORY[0x24C1AF180](v42, -1, -1);
      }

      else
      {
        v59 = v0[41];
        swift_bridgeObjectRelease_n();
      }

      v48 = v0[51];
      if (v48)
      {
        goto LABEL_31;
      }
    }

    else
    {

      v48 = v0[51];
      if (v48)
      {
LABEL_31:
        if (qword_27EE571C0 != -1)
        {
          swift_once();
        }

        v60 = sub_24794ED34();
        __swift_project_value_buffer(v60, qword_27EE58DF8);
        v61 = v48;
        v62 = sub_24794ED14();
        v63 = sub_24794F164();

        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          *v64 = 138412290;
          v66 = v48;
          v67 = _swift_stdlib_bridgeErrorToNSError();
          *(v64 + 4) = v67;
          *v65 = v67;
          _os_log_impl(&dword_2478E1000, v62, v63, "#CollectionManager: data aggregation failed with error: %@", v64, 0xCu);
          sub_2478E9620(v65, &qword_27EE57280, &unk_2479503C0);
          MEMORY[0x24C1AF180](v65, -1, -1);
          MEMORY[0x24C1AF180](v64, -1, -1);
        }

        swift_willThrow();
        goto LABEL_3;
      }
    }

    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v49 = v0[33];
    v50 = sub_24794ED34();
    __swift_project_value_buffer(v50, qword_27EE58DF8);

    v51 = sub_24794ED14();
    v52 = sub_24794F144();

    if (!os_log_type_enabled(v51, v52))
    {
LABEL_45:

      v72 = v0[39];
      v71 = v0[40];
      v74 = v0[37];
      v73 = v0[38];
      v75 = v0[36];

      v12 = v0[1];
      goto LABEL_4;
    }

    v53 = v0[33];
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v78[0] = v55;
    *v54 = 136315138;
    v56 = *(v53 + 184);
    if (v56 > 1)
    {
      v68 = v56 == 2;
      if (v56 == 2)
      {
        v58 = "kerId";
      }

      else
      {
        v58 = "metricsCalculator";
      }

      if (v68)
      {
        v57 = 0xD000000000000011;
      }

      else
      {
        v57 = 0xD000000000000013;
      }
    }

    else
    {
      if (*(v53 + 184))
      {
        v69 = 0xEE00435346737365;
        v57 = 0x72506E6F74747562;
        goto LABEL_44;
      }

      v57 = 0xD000000000000015;
      v58 = "noWakeWord";
    }

    v69 = v58 | 0x8000000000000000;
LABEL_44:
    v70 = sub_247924380(v57, v69, v78);

    *(v54 + 4) = v70;
    _os_log_impl(&dword_2478E1000, v51, v52, "#CollectionManager: finished process for : %s", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v55);
    MEMORY[0x24C1AF180](v55, -1, -1);
    MEMORY[0x24C1AF180](v54, -1, -1);
    goto LABEL_45;
  }

  sub_247917728(v0[33] + 96, (v0 + 12));
  v15 = v0[15];
  v16 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v15);
  v17 = *(v16 + 8);
  v18 = *(v17 + 8);
  v77 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  v0[52] = v20;
  *v20 = v0;
  v20[1] = sub_24791449C;

  return v77(v15, v17);
}

uint64_t sub_24791449C()
{
  v2 = *v1;
  v3 = *(*v1 + 416);
  v7 = *v1;
  *(*v1 + 424) = v0;

  if (v0)
  {
    v4 = *(v2 + 328);

    v5 = sub_247916684;
  }

  else
  {
    v5 = sub_2479145B8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2479145B8()
{
  v65 = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  v1 = v0[30];
  if (v1 >= 1)
  {

    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v2 = v0[32];
    v3 = sub_24794ED34();
    __swift_project_value_buffer(v3, qword_27EE58DF8);

    v4 = sub_24794ED14();
    v5 = sub_24794F164();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = v0[34];
      v7 = v0[32];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v64[0] = v9;
      *v8 = 134218242;
      *(v8 + 4) = v1;
      *(v8 + 12) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574B8, &qword_247951548);
      sub_2479176E4(&qword_27EE574B0);
      v10 = sub_24794EEA4();
      v12 = sub_247924380(v10, v11, v64);

      *(v8 + 14) = v12;
      _os_log_impl(&dword_2478E1000, v4, v5, "#CollectionManager: some audio upload failed, count: %ld for days: %s", v8, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x24C1AF180](v9, -1, -1);
      MEMORY[0x24C1AF180](v8, -1, -1);
    }

    v13 = v0[51];
    sub_2478E95CC();
    swift_allocError();
    *v14 = xmmword_24794FF00;
    *(v14 + 16) = 2;
    swift_willThrow();

LABEL_26:
    v49 = v0[39];
    v48 = v0[40];
    v51 = v0[37];
    v50 = v0[38];
    v52 = v0[36];

    v53 = v0[1];
    goto LABEL_27;
  }

  if (*(v0[41] + 16))
  {
    v15 = v0[41];
    if (qword_27EE571C0 != -1)
    {
      swift_once();
      v63 = v0[41];
    }

    v16 = sub_24794ED34();
    __swift_project_value_buffer(v16, qword_27EE58DF8);

    v17 = sub_24794ED14();
    v18 = sub_24794F164();
    v19 = os_log_type_enabled(v17, v18);
    v20 = v0[41];
    if (v19)
    {
      v21 = v0[34];
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v64[0] = v23;
      *v22 = 134218242;
      *(v22 + 4) = *(v15 + 16);

      *(v22 + 12) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574A8, &qword_247951540);
      sub_2479176E4(&qword_27EE574B0);
      v24 = sub_24794EEA4();
      v26 = v25;

      v27 = sub_247924380(v24, v26, v64);

      *(v22 + 14) = v27;
      _os_log_impl(&dword_2478E1000, v17, v18, "#CollectionManager: daily processing failed for %ld days: %s", v22, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x24C1AF180](v23, -1, -1);
      MEMORY[0x24C1AF180](v22, -1, -1);
    }

    else
    {
      v39 = v0[41];
      swift_bridgeObjectRelease_n();
    }

    v28 = v0[51];
    if (v28)
    {
      goto LABEL_21;
    }
  }

  else
  {

    v28 = v0[51];
    if (v28)
    {
LABEL_21:
      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v40 = sub_24794ED34();
      __swift_project_value_buffer(v40, qword_27EE58DF8);
      v41 = v28;
      v42 = sub_24794ED14();
      v43 = sub_24794F164();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *v44 = 138412290;
        v46 = v28;
        v47 = _swift_stdlib_bridgeErrorToNSError();
        *(v44 + 4) = v47;
        *v45 = v47;
        _os_log_impl(&dword_2478E1000, v42, v43, "#CollectionManager: data aggregation failed with error: %@", v44, 0xCu);
        sub_2478E9620(v45, &qword_27EE57280, &unk_2479503C0);
        MEMORY[0x24C1AF180](v45, -1, -1);
        MEMORY[0x24C1AF180](v44, -1, -1);
      }

      swift_willThrow();
      goto LABEL_26;
    }
  }

  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v29 = v0[33];
  v30 = sub_24794ED34();
  __swift_project_value_buffer(v30, qword_27EE58DF8);

  v31 = sub_24794ED14();
  v32 = sub_24794F144();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = v0[33];
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v64[0] = v35;
    *v34 = 136315138;
    v36 = *(v33 + 184);
    if (v36 > 1)
    {
      v55 = v36 == 2;
      if (v36 == 2)
      {
        v38 = "kerId";
      }

      else
      {
        v38 = "metricsCalculator";
      }

      if (v55)
      {
        v37 = 0xD000000000000011;
      }

      else
      {
        v37 = 0xD000000000000013;
      }
    }

    else
    {
      if (*(v33 + 184))
      {
        v56 = 0xEE00435346737365;
        v37 = 0x72506E6F74747562;
        goto LABEL_38;
      }

      v37 = 0xD000000000000015;
      v38 = "noWakeWord";
    }

    v56 = v38 | 0x8000000000000000;
LABEL_38:
    v57 = sub_247924380(v37, v56, v64);

    *(v34 + 4) = v57;
    _os_log_impl(&dword_2478E1000, v31, v32, "#CollectionManager: finished process for : %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x24C1AF180](v35, -1, -1);
    MEMORY[0x24C1AF180](v34, -1, -1);
  }

  v59 = v0[39];
  v58 = v0[40];
  v61 = v0[37];
  v60 = v0[38];
  v62 = v0[36];

  v53 = v0[1];
LABEL_27:

  return v53();
}

void sub_247914D04()
{
  v84 = v0;
  v1 = *(v0 + 368);
  *(v0 + 248) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574A8, &qword_247951540);
  if (!swift_dynamicCast())
  {
LABEL_10:
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 288);
    v9 = *(v0 + 296);
    v10 = *(v0 + 272);
    v11 = *(v0 + 280);
    v12 = sub_24794ED34();
    __swift_project_value_buffer(v12, qword_27EE58DF8);
    (*(v11 + 16))(v8, v9, v10);
    v13 = v1;
    v14 = sub_24794ED14();
    v15 = sub_24794F164();

    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 280);
    v18 = *(v0 + 288);
    v19 = *(v0 + 272);
    if (v16)
    {
      v20 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v83 = v80;
      *v20 = 138412546;
      v21 = v1;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v22;
      *v79 = v22;
      *(v20 + 12) = 2080;
      sub_2479176E4(&qword_27EE57288);
      v23 = sub_24794F4D4();
      v78 = v15;
      v25 = v24;
      v26 = *(v17 + 8);
      v26(v18, v19);
      v27 = sub_247924380(v23, v25, &v83);

      *(v20 + 14) = v27;
      _os_log_impl(&dword_2478E1000, v14, v78, "#CollectionManager: daily processing failed with error: %@ for date: %s", v20, 0x16u);
      sub_2478E9620(v79, &qword_27EE57280, &unk_2479503C0);
      MEMORY[0x24C1AF180](v79, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v80);
      MEMORY[0x24C1AF180](v80, -1, -1);
      MEMORY[0x24C1AF180](v20, -1, -1);
    }

    else
    {

      v26 = *(v17 + 8);
      v26(v18, v19);
    }

    v28 = *(v0 + 328);
    v29 = *(v0 + 296);
    v30 = *(v0 + 272);
    v31 = *(v0 + 280) + 8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v83 = v28;
    sub_24794B724(v1, v29, isUniquelyReferenced_nonNull_native);
    v33 = v83;
    v26(v29, v30);
    v34 = *(v0 + 336);
    v35 = *(v0 + 344);
    *(v0 + 328) = v33;
    if (v34)
    {
      goto LABEL_16;
    }

    goto LABEL_18;
  }

  v3 = *(v0 + 216);
  v4 = *(v0 + 224);
  v5 = *(v0 + 232);
  if (v5 != 2 || v3 != 12 || v4 != 0)
  {
    sub_24791778C(v3, v4, v5);
    goto LABEL_10;
  }

  (*(*(v0 + 280) + 8))(*(v0 + 296), *(v0 + 272));

  v34 = *(v0 + 336);
  v35 = *(v0 + 344);
  if (v34)
  {
LABEL_16:
    v36 = *(v0 + 256);
LABEL_26:
    v41 = *(v0 + 304);
    v42 = *(v0 + 312);
    v43 = *(v0 + 272);
    v44 = *(v0 + 280);
    v81 = (v34 - 1) & v34;
    v45 = __clz(__rbit64(v34)) | (v35 << 6);
    (*(v44 + 16))(v41, *(v36 + 48) + *(v44 + 72) * v45, v43);
    v46 = *(*(v36 + 56) + 8 * v45);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574A0, &unk_247951720);
    v48 = *(v47 + 48);
    (*(v44 + 32))(v42, v41, v43);
    *(v42 + v48) = v46;
    (*(*(v47 - 8) + 56))(v42, 0, 1, v47);

    v49 = v81;
    v39 = v35;
LABEL_27:
    *(v0 + 336) = v49;
    *(v0 + 344) = v39;
    v50 = *(v0 + 320);
    sub_247917674(*(v0 + 312), v50);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574A0, &unk_247951720);
    if ((*(*(v51 - 8) + 48))(v50, 1, v51) == 1)
    {
      v63 = *(v0 + 256);
      v64 = *(v0 + 264);

      sub_247917728(v64 + 96, v0 + 16);
      v65 = *(v0 + 40);
      v66 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v65);
      v67 = *(v66 + 48);
      v82 = (v67 + *v67);
      v68 = v67[1];
      v69 = swift_task_alloc();
      *(v0 + 392) = v69;
      *v69 = v0;
      v69[1] = sub_247913AA4;

      v82(v65, v66);
    }

    else
    {
      v52 = *(v0 + 296);
      v53 = *(v0 + 272);
      v54 = *(v0 + 264);
      v55 = *(*(v0 + 320) + *(v51 + 48));
      (*(*(v0 + 280) + 32))(v52);
      sub_247917728(v54 + 96, v0 + 136);
      v56 = *(v0 + 160);
      v57 = *(v0 + 168);
      __swift_project_boxed_opaque_existential_1((v0 + 136), v56);
      (*(v57 + 72))(v56, v57);
      __swift_destroy_boxed_opaque_existential_0((v0 + 136));
      sub_247917728(v54 + 56, v0 + 176);
      v58 = *(v0 + 200);
      v59 = *(v0 + 208);
      __swift_project_boxed_opaque_existential_1((v0 + 176), v58);
      v60 = (*(v59 + 16))(v55, v52, v58, v59);
      *(v0 + 352) = v60;
      v70 = v60;
      v71 = *(v0 + 264);

      __swift_destroy_boxed_opaque_existential_0((v0 + 176));
      if (*(v71 + 184) == 3)
      {
        v72 = swift_task_alloc();
        *(v0 + 360) = v72;
        *v72 = v0;
        v72[1] = sub_24791275C;
        v73 = *(v0 + 296);
        v74 = *(v0 + 264);

        sub_247916730(v70, v73);
      }

      else
      {
        v75 = swift_task_alloc();
        *(v0 + 376) = v75;
        *v75 = v0;
        v75[1] = sub_247913100;
        v76 = *(v0 + 296);
        v77 = *(v0 + 264);

        sub_2479168C8(v70, v76, v0 + 240);
      }
    }

    return;
  }

LABEL_18:
  v37 = ((1 << *(v0 + 233)) + 63) >> 6;
  if (v37 <= (v35 + 1))
  {
    v38 = v35 + 1;
  }

  else
  {
    v38 = ((1 << *(v0 + 233)) + 63) >> 6;
  }

  v39 = v38 - 1;
  while (1)
  {
    v40 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v40 >= v37)
    {
      v61 = *(v0 + 312);
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574A0, &unk_247951720);
      (*(*(v62 - 8) + 56))(v61, 1, 1, v62);
      v49 = 0;
      goto LABEL_27;
    }

    v36 = *(v0 + 256);
    v34 = *(v36 + 8 * v40 + 64);
    ++v35;
    if (v34)
    {
      v35 = v40;
      goto LABEL_26;
    }
  }

  __break(1u);
}

void sub_247915550()
{
  v84 = v0;
  v1 = *(v0 + 384);
  *(v0 + 248) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574A8, &qword_247951540);
  if (!swift_dynamicCast())
  {
LABEL_10:
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 288);
    v9 = *(v0 + 296);
    v10 = *(v0 + 272);
    v11 = *(v0 + 280);
    v12 = sub_24794ED34();
    __swift_project_value_buffer(v12, qword_27EE58DF8);
    (*(v11 + 16))(v8, v9, v10);
    v13 = v1;
    v14 = sub_24794ED14();
    v15 = sub_24794F164();

    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 280);
    v18 = *(v0 + 288);
    v19 = *(v0 + 272);
    if (v16)
    {
      v20 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v83 = v80;
      *v20 = 138412546;
      v21 = v1;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v22;
      *v79 = v22;
      *(v20 + 12) = 2080;
      sub_2479176E4(&qword_27EE57288);
      v23 = sub_24794F4D4();
      v78 = v15;
      v25 = v24;
      v26 = *(v17 + 8);
      v26(v18, v19);
      v27 = sub_247924380(v23, v25, &v83);

      *(v20 + 14) = v27;
      _os_log_impl(&dword_2478E1000, v14, v78, "#CollectionManager: daily processing failed with error: %@ for date: %s", v20, 0x16u);
      sub_2478E9620(v79, &qword_27EE57280, &unk_2479503C0);
      MEMORY[0x24C1AF180](v79, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v80);
      MEMORY[0x24C1AF180](v80, -1, -1);
      MEMORY[0x24C1AF180](v20, -1, -1);
    }

    else
    {

      v26 = *(v17 + 8);
      v26(v18, v19);
    }

    v28 = *(v0 + 328);
    v29 = *(v0 + 296);
    v30 = *(v0 + 272);
    v31 = *(v0 + 280) + 8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v83 = v28;
    sub_24794B724(v1, v29, isUniquelyReferenced_nonNull_native);
    v33 = v83;
    v26(v29, v30);
    v34 = *(v0 + 336);
    v35 = *(v0 + 344);
    *(v0 + 328) = v33;
    if (v34)
    {
      goto LABEL_16;
    }

    goto LABEL_18;
  }

  v3 = *(v0 + 216);
  v4 = *(v0 + 224);
  v5 = *(v0 + 232);
  if (v5 != 2 || v3 != 12 || v4 != 0)
  {
    sub_24791778C(v3, v4, v5);
    goto LABEL_10;
  }

  (*(*(v0 + 280) + 8))(*(v0 + 296), *(v0 + 272));

  v34 = *(v0 + 336);
  v35 = *(v0 + 344);
  if (v34)
  {
LABEL_16:
    v36 = *(v0 + 256);
LABEL_26:
    v41 = *(v0 + 304);
    v42 = *(v0 + 312);
    v43 = *(v0 + 272);
    v44 = *(v0 + 280);
    v81 = (v34 - 1) & v34;
    v45 = __clz(__rbit64(v34)) | (v35 << 6);
    (*(v44 + 16))(v41, *(v36 + 48) + *(v44 + 72) * v45, v43);
    v46 = *(*(v36 + 56) + 8 * v45);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574A0, &unk_247951720);
    v48 = *(v47 + 48);
    (*(v44 + 32))(v42, v41, v43);
    *(v42 + v48) = v46;
    (*(*(v47 - 8) + 56))(v42, 0, 1, v47);

    v49 = v81;
    v39 = v35;
LABEL_27:
    *(v0 + 336) = v49;
    *(v0 + 344) = v39;
    v50 = *(v0 + 320);
    sub_247917674(*(v0 + 312), v50);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574A0, &unk_247951720);
    if ((*(*(v51 - 8) + 48))(v50, 1, v51) == 1)
    {
      v63 = *(v0 + 256);
      v64 = *(v0 + 264);

      sub_247917728(v64 + 96, v0 + 16);
      v65 = *(v0 + 40);
      v66 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v65);
      v67 = *(v66 + 48);
      v82 = (v67 + *v67);
      v68 = v67[1];
      v69 = swift_task_alloc();
      *(v0 + 392) = v69;
      *v69 = v0;
      v69[1] = sub_247913AA4;

      v82(v65, v66);
    }

    else
    {
      v52 = *(v0 + 296);
      v53 = *(v0 + 272);
      v54 = *(v0 + 264);
      v55 = *(*(v0 + 320) + *(v51 + 48));
      (*(*(v0 + 280) + 32))(v52);
      sub_247917728(v54 + 96, v0 + 136);
      v56 = *(v0 + 160);
      v57 = *(v0 + 168);
      __swift_project_boxed_opaque_existential_1((v0 + 136), v56);
      (*(v57 + 72))(v56, v57);
      __swift_destroy_boxed_opaque_existential_0((v0 + 136));
      sub_247917728(v54 + 56, v0 + 176);
      v58 = *(v0 + 200);
      v59 = *(v0 + 208);
      __swift_project_boxed_opaque_existential_1((v0 + 176), v58);
      v60 = (*(v59 + 16))(v55, v52, v58, v59);
      *(v0 + 352) = v60;
      v70 = v60;
      v71 = *(v0 + 264);

      __swift_destroy_boxed_opaque_existential_0((v0 + 176));
      if (*(v71 + 184) == 3)
      {
        v72 = swift_task_alloc();
        *(v0 + 360) = v72;
        *v72 = v0;
        v72[1] = sub_24791275C;
        v73 = *(v0 + 296);
        v74 = *(v0 + 264);

        sub_247916730(v70, v73);
      }

      else
      {
        v75 = swift_task_alloc();
        *(v0 + 376) = v75;
        *v75 = v0;
        v75[1] = sub_247913100;
        v76 = *(v0 + 296);
        v77 = *(v0 + 264);

        sub_2479168C8(v70, v76, v0 + 240);
      }
    }

    return;
  }

LABEL_18:
  v37 = ((1 << *(v0 + 233)) + 63) >> 6;
  if (v37 <= (v35 + 1))
  {
    v38 = v35 + 1;
  }

  else
  {
    v38 = ((1 << *(v0 + 233)) + 63) >> 6;
  }

  v39 = v38 - 1;
  while (1)
  {
    v40 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v40 >= v37)
    {
      v61 = *(v0 + 312);
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574A0, &unk_247951720);
      (*(*(v62 - 8) + 56))(v61, 1, 1, v62);
      v49 = 0;
      goto LABEL_27;
    }

    v36 = *(v0 + 256);
    v34 = *(v36 + 8 * v40 + 64);
    ++v35;
    if (v34)
    {
      v35 = v40;
      goto LABEL_26;
    }
  }

  __break(1u);
}

uint64_t sub_247915D9C()
{
  v76 = v0;
  v0[51] = v0[50];
  v1 = v0[33];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_247917728(v1 + 16, (v0 + 7));
  v2 = v0[10];
  v3 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v2);
  v11 = (*(v3 + 24))(v2, v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  if (v11)
  {
    sub_247917728(v0[33] + 96, (v0 + 12));
    v12 = v0[15];
    v13 = v0[16];
    __swift_project_boxed_opaque_existential_1(v0 + 12, v12);
    v14 = *(v13 + 8);
    v15 = *(v14 + 8);
    v74 = (v15 + *v15);
    v16 = v15[1];
    v17 = swift_task_alloc();
    v0[52] = v17;
    *v17 = v0;
    v17[1] = sub_24791449C;

    return v74(v12, v14);
  }

  v18 = v0[30];
  if (v18 < 1)
  {
    if (*(v0[41] + 16))
    {
      v32 = v0[41];
      if (qword_27EE571C0 != -1)
      {
        swift_once();
        v73 = v0[41];
      }

      v33 = sub_24794ED34();
      __swift_project_value_buffer(v33, qword_27EE58DF8);

      v34 = sub_24794ED14();
      v35 = sub_24794F164();
      v36 = os_log_type_enabled(v34, v35);
      v37 = v0[41];
      if (v36)
      {
        v38 = v0[34];
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v75[0] = v40;
        *v39 = 134218242;
        *(v39 + 4) = *(v32 + 16);

        *(v39 + 12) = 2080;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574A8, &qword_247951540);
        sub_2479176E4(&qword_27EE574B0);
        v41 = sub_24794EEA4();
        v43 = v42;

        v44 = sub_247924380(v41, v43, v75);

        *(v39 + 14) = v44;
        _os_log_impl(&dword_2478E1000, v34, v35, "#CollectionManager: daily processing failed for %ld days: %s", v39, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v40);
        MEMORY[0x24C1AF180](v40, -1, -1);
        MEMORY[0x24C1AF180](v39, -1, -1);
      }

      else
      {
        v56 = v0[41];
        swift_bridgeObjectRelease_n();
      }

      v45 = v0[51];
      if (v45)
      {
        goto LABEL_30;
      }
    }

    else
    {

      v45 = v0[51];
      if (v45)
      {
LABEL_30:
        if (qword_27EE571C0 != -1)
        {
          swift_once();
        }

        v57 = sub_24794ED34();
        __swift_project_value_buffer(v57, qword_27EE58DF8);
        v58 = v45;
        v59 = sub_24794ED14();
        v60 = sub_24794F164();

        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          *v61 = 138412290;
          v63 = v45;
          v64 = _swift_stdlib_bridgeErrorToNSError();
          *(v61 + 4) = v64;
          *v62 = v64;
          _os_log_impl(&dword_2478E1000, v59, v60, "#CollectionManager: data aggregation failed with error: %@", v61, 0xCu);
          sub_2478E9620(v62, &qword_27EE57280, &unk_2479503C0);
          MEMORY[0x24C1AF180](v62, -1, -1);
          MEMORY[0x24C1AF180](v61, -1, -1);
        }

        swift_willThrow();
        goto LABEL_2;
      }
    }

    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v46 = v0[33];
    v47 = sub_24794ED34();
    __swift_project_value_buffer(v47, qword_27EE58DF8);

    v48 = sub_24794ED14();
    v49 = sub_24794F144();

    if (!os_log_type_enabled(v48, v49))
    {
LABEL_44:

      v69 = v0[39];
      v68 = v0[40];
      v71 = v0[37];
      v70 = v0[38];
      v72 = v0[36];

      v9 = v0[1];
      goto LABEL_3;
    }

    v50 = v0[33];
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v75[0] = v52;
    *v51 = 136315138;
    v53 = *(v50 + 184);
    if (v53 > 1)
    {
      v65 = v53 == 2;
      if (v53 == 2)
      {
        v55 = "kerId";
      }

      else
      {
        v55 = "metricsCalculator";
      }

      if (v65)
      {
        v54 = 0xD000000000000011;
      }

      else
      {
        v54 = 0xD000000000000013;
      }
    }

    else
    {
      if (*(v50 + 184))
      {
        v66 = 0xEE00435346737365;
        v54 = 0x72506E6F74747562;
        goto LABEL_43;
      }

      v54 = 0xD000000000000015;
      v55 = "noWakeWord";
    }

    v66 = v55 | 0x8000000000000000;
LABEL_43:
    v67 = sub_247924380(v54, v66, v75);

    *(v51 + 4) = v67;
    _os_log_impl(&dword_2478E1000, v48, v49, "#CollectionManager: finished process for : %s", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v52);
    MEMORY[0x24C1AF180](v52, -1, -1);
    MEMORY[0x24C1AF180](v51, -1, -1);
    goto LABEL_44;
  }

  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v19 = v0[32];
  v20 = sub_24794ED34();
  __swift_project_value_buffer(v20, qword_27EE58DF8);

  v21 = sub_24794ED14();
  v22 = sub_24794F164();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = v0[34];
    v24 = v0[32];
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v75[0] = v26;
    *v25 = 134218242;
    *(v25 + 4) = v18;
    *(v25 + 12) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574B8, &qword_247951548);
    sub_2479176E4(&qword_27EE574B0);
    v27 = sub_24794EEA4();
    v29 = sub_247924380(v27, v28, v75);

    *(v25 + 14) = v29;
    _os_log_impl(&dword_2478E1000, v21, v22, "#CollectionManager: some audio upload failed, count: %ld for days: %s", v25, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x24C1AF180](v26, -1, -1);
    MEMORY[0x24C1AF180](v25, -1, -1);
  }

  v30 = v0[51];
  sub_2478E95CC();
  swift_allocError();
  *v31 = xmmword_24794FF00;
  *(v31 + 16) = 2;
  swift_willThrow();

LABEL_2:
  v5 = v0[39];
  v4 = v0[40];
  v7 = v0[37];
  v6 = v0[38];
  v8 = v0[36];

  v9 = v0[1];
LABEL_3:

  return v9();
}

uint64_t sub_247916684()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  v1 = *(v0 + 424);
  v3 = *(v0 + 312);
  v2 = *(v0 + 320);
  v5 = *(v0 + 296);
  v4 = *(v0 + 304);
  v6 = *(v0 + 288);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_247916730(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return MEMORY[0x2822009F8](sub_247916754, 0, 0);
}

uint64_t sub_247916754()
{
  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v1 = sub_24794ED34();
  __swift_project_value_buffer(v1, qword_27EE58DF8);
  v2 = sub_24794ED14();
  v3 = sub_24794F144();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2478E1000, v2, v3, "speakerIdOneSession processing records", v4, 2u);
    MEMORY[0x24C1AF180](v4, -1, -1);
  }

  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[7];

  sub_247917728(v6 + 96, (v0 + 2));
  v8 = v0[5];
  v9 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v8);
  (*(v9 + 24))(v7, v5, v8, v9);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v10 = v0[1];

  return v10();
}

uint64_t sub_2479168C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[24] = a3;
  v4[25] = v3;
  v4[22] = a1;
  v4[23] = a2;
  v5 = sub_24794EBB4();
  v4[26] = v5;
  v6 = *(v5 - 8);
  v4[27] = v6;
  v7 = *(v6 + 64) + 15;
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_247916998, 0, 0);
}

uint64_t sub_247916998()
{
  v39 = v0;
  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[27];
  v5 = v0[22];
  v4 = v0[23];
  v6 = sub_24794ED34();
  v0[30] = __swift_project_value_buffer(v6, qword_27EE58DF8);
  v7 = *(v3 + 16);
  v0[31] = v7;
  v0[32] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v4, v2);

  v8 = sub_24794ED14();
  v9 = sub_24794F154();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[29];
  v12 = v0[26];
  v13 = v0[27];
  if (v10)
  {
    v14 = v0[22];
    v15 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v38 = v36;
    *v15 = 136315394;
    v16 = type metadata accessor for SiriRequestRecord(0);
    v17 = MEMORY[0x24C1AE590](v14, v16);
    v19 = sub_247924380(v17, v18, &v38);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    sub_2479176E4(&qword_27EE57288);
    v20 = sub_24794F4D4();
    v22 = v21;
    v23 = *(v13 + 8);
    v23(v11, v12);
    v24 = sub_247924380(v20, v22, &v38);

    *(v15 + 14) = v24;
    _os_log_impl(&dword_2478E1000, v8, v9, "#CollectionManager: selectedRecords: %s for date: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1AF180](v36, -1, -1);
    MEMORY[0x24C1AF180](v15, -1, -1);
  }

  else
  {

    v23 = *(v13 + 8);
    v23(v11, v12);
  }

  v0[33] = v23;
  v25 = v0[25];
  v26 = v0[22];
  v27 = v0[23];
  sub_247917728(v25 + 96, (v0 + 2));
  v28 = v0[5];
  v29 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v28);
  (*(v29 + 16))(v26, v27, v28, v29);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_247917728(v25 + 96, (v0 + 7));
  v30 = v0[10];
  v31 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v30);
  v32 = *(v31 + 56);
  v37 = (v32 + *v32);
  v33 = v32[1];
  v34 = swift_task_alloc();
  v0[34] = v34;
  *v34 = v0;
  v34[1] = sub_247916D50;

  return v37(v30, v31);
}

uint64_t sub_247916D50()
{
  v2 = *(*v1 + 272);
  v5 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = sub_2479171B8;
  }

  else
  {
    v3 = sub_247916E64;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_247916E64()
{
  v1 = v0[25];
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  sub_247917728(v1 + 96, (v0 + 12));
  v2 = v0[15];
  v3 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v2);
  v4 = *(v3 + 40);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[36] = v6;
  *v6 = v0;
  v6[1] = sub_247916FA0;

  return v8(v2, v3);
}

uint64_t sub_247916FA0()
{
  v2 = *(*v1 + 288);
  v5 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = sub_24791748C;
  }

  else
  {
    v3 = sub_2479170B4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2479170B4()
{
  v1 = v0[37];
  v2 = v0[25];
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  sub_247917728(v2 + 96, (v0 + 17));
  v3 = v0[20];
  v4 = v0[21];
  __swift_project_boxed_opaque_existential_1(v0 + 17, v3);
  (*(v4 + 32))(v3, v4);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 17);
    v6 = v0[28];
    v5 = v0[29];
  }

  else
  {
    v8 = v0[28];
    v9 = v0[29];
    __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  }

  v7 = v0[1];

  return v7();
}

void sub_2479171B8()
{
  v36 = v0;
  v1 = v0[35];
  v3 = v0[31];
  v2 = v0[32];
  v4 = v0[30];
  v5 = v0[28];
  v6 = v0[26];
  v7 = v0[23];
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v3(v5, v7, v6);
  v8 = v1;
  v9 = sub_24794ED14();
  v10 = sub_24794F164();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[35];
    v12 = v0[28];
    v33 = v0[27];
    v34 = v0[33];
    v13 = v0[26];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v35 = v16;
    *v14 = 138412546;
    v17 = v11;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v18;
    *v15 = v18;
    *(v14 + 12) = 2080;
    sub_2479176E4(&qword_27EE57288);
    v19 = sub_24794F4D4();
    v21 = v20;
    v34(v12, v13);
    v22 = sub_247924380(v19, v21, &v35);

    *(v14 + 14) = v22;
    _os_log_impl(&dword_2478E1000, v9, v10, "#CollectionManager: upload audio failed with error: %@ for date: %s", v14, 0x16u);
    sub_2478E9620(v15, &qword_27EE57280, &unk_2479503C0);
    MEMORY[0x24C1AF180](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x24C1AF180](v16, -1, -1);
    MEMORY[0x24C1AF180](v14, -1, -1);
  }

  else
  {
    v23 = v0[33];
    v25 = v0[27];
    v24 = v0[28];
    v26 = v0[26];

    v23(v24, v26);
  }

  v27 = v0[24];
  if (__OFADD__(*v27, 1))
  {
    __break(1u);
  }

  else
  {
    v28 = v0[35];
    ++*v27;
    sub_2478E95CC();
    swift_allocError();
    *v29 = xmmword_24794FF00;
    *(v29 + 16) = 2;
    swift_willThrow();

    v31 = v0[28];
    v30 = v0[29];

    v32 = v0[1];

    v32();
  }
}

uint64_t sub_24791748C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  v1 = v0[37];
  v3 = v0[28];
  v2 = v0[29];

  v4 = v0[1];

  return v4();
}

uint64_t sub_247917500()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  sub_2478E9620((v0 + 17), &qword_27EE574C0, &unk_247951550);
  v1 = v0[22];

  return swift_deallocClassInstance();
}

uint64_t sub_24791758C()
{
  v1 = *v0;
  BYTE8(v3) = 0;
  sub_24794F344();
  MEMORY[0x24C1AE4C0](0xD000000000000022, 0x8000000247955B30);
  *&v3 = *(v1 + 184);
  sub_24794F3F4();
  MEMORY[0x24C1AE4C0](41, 0xE100000000000000);
  return *(&v3 + 1);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_247917674(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57498, &unk_247951530);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2479176E4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_24794EBB4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_247917728(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24791778C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

id sub_2479177A4(uint64_t a1, uint64_t (**a2)(void, void), uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v12 = sub_24794ECC4();
  v69 = *(v12 - 8);
  v70 = v12;
  v13 = *(v69 + 64);
  MEMORY[0x28223BE20](v12);
  v72 = v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24794E974();
  v67 = *(v15 - 8);
  v68 = v15;
  v16 = *(v67 + 64);
  MEMORY[0x28223BE20](v15);
  v66 = v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = v65 - v20;
  v22 = sub_24794EBB4();
  v23 = *(v22 - 8);
  v73 = v22;
  v74 = v23;
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v71 = v65 - v28;
  v29 = type metadata accessor for SiriProfileManager();
  v79 = v29;
  v80 = &off_2859852E8;
  v78[0] = a3;
  *(a6 + 24) = sub_24794DCFC(MEMORY[0x277D84F90]);
  v75 = a2[22](a1, a2);
  if (!v30)
  {
    goto LABEL_8;
  }

  v31 = v30;
  type metadata accessor for MetricsCalcSELFReporter();
  swift_allocObject();

  v32 = sub_247905564(a1, a2, a4, a5);
  if (!v32)
  {

LABEL_8:

LABEL_9:
    v40 = *(a6 + 24);

    type metadata accessor for MetricsCalcActionEvent();
    swift_deallocPartialClassInstance();
    a6 = 0;
LABEL_15:
    __swift_destroy_boxed_opaque_existential_0(v78);
    return a6;
  }

  v33 = v32;
  v34 = _sSo17SISchemaISOLocaleC23CoreSpeechDataAnalyticsE10fromStringyABSgSSFZ_0(v75, v31);
  if (!v34)
  {

    goto LABEL_9;
  }

  v65[0] = v33;
  v65[1] = a5;

  v35 = *__swift_project_boxed_opaque_existential_1(v78, v29);
  sub_2478ED848(v21);
  v36 = v73;
  v37 = v74;
  if ((*(v74 + 48))(v21, 1, v73) == 1)
  {
    sub_2478E9620(v21, &qword_27EE572D0, &unk_2479504E0);
    v38 = 0;
    v39 = 1;
  }

  else
  {
    (*(v37 + 32))(v71, v21, v36);
    sub_24794EC94();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574E0, &qword_247951588);
    v41 = sub_24794ECB4();
    v42 = *(v41 - 8);
    v43 = *(v42 + 72);
    v44 = (*(v42 + 80) + 32) & ~*(v42 + 80);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_247951560;
    (*(v42 + 104))(v45 + v44, *MEMORY[0x277CC9998], v41);
    sub_24792CE2C(v45);
    swift_setDeallocating();
    (*(v42 + 8))(v45 + v44, v41);
    swift_deallocClassInstance();
    sub_24794EBA4();
    v46 = v66;
    v48 = v71;
    v47 = v72;
    sub_24794EC64();

    v49 = *(v74 + 8);
    v74 += 8;
    v50 = v27;
    v51 = v73;
    v49(v50, v73);
    (*(v69 + 8))(v47, v70);
    v52 = sub_24794E944();
    v54 = v53;
    (*(v67 + 8))(v46, v68);
    v55 = v48;
    v38 = v52;
    v56 = v51;
    v39 = v54;
    v49(v55, v56);
  }

  v57 = a2[23](a1, a2);
  v59 = v58;
  v60 = a2[25](a1, a2);
  result = _sSo17SISchemaISOLocaleC23CoreSpeechDataAnalyticsE10fromStringyABSgSSFZ_0(v75, v31);
  if (result || (result = [objc_allocWithZone(MEMORY[0x277D5A900]) init]) != 0)
  {
    v62 = result;

    v63 = *__swift_project_boxed_opaque_existential_1(v78, v79);
    v64 = sub_2478EDC88();
    v77 = v39 & 1;
    v76 = BYTE4(v64) & 1;
    *(a6 + 32) = v57;
    *(a6 + 40) = v59;
    *(a6 + 48) = v60;
    *(a6 + 56) = v62;
    *(a6 + 64) = v38;
    *(a6 + 72) = v39 & 1;
    *(a6 + 76) = v64;
    *(a6 + 80) = BYTE4(v64) & 1;
    *(a6 + 16) = v65[0];
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_247917DF8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  sub_2478E9680(a2, &v35, &qword_27EE574D8, &qword_247951580);
  if (!v36)
  {
    sub_2478E9620(&v35, &qword_27EE574D8, &qword_247951580);
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
      _os_log_impl(&dword_2478E1000, v13, v14, "#CollectionManager: CollectionManager cannot be created without a valid policy", v15, 2u);
      MEMORY[0x24C1AF180](v15, -1, -1);
    }

    return 0;
  }

  sub_2478E2F88(&v35, v37);
  sub_2478E9680(a3, &v33, &qword_27EE574D0, &qword_247951578);
  if (!v34)
  {
    sub_2478E9620(&v33, &qword_27EE574D0, &qword_247951578);
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v16 = sub_24794ED34();
    __swift_project_value_buffer(v16, qword_27EE58DF8);
    v17 = sub_24794ED14();
    v18 = sub_24794F164();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2478E1000, v17, v18, "#CollectionManager: CollectionManager cannot be created without record selection rules", v19, 2u);
      MEMORY[0x24C1AF180](v19, -1, -1);
    }

    goto LABEL_21;
  }

  sub_2478E2F88(&v33, &v35);
  sub_2478E9680(a4, &v31, &qword_27EE574C8, &qword_247951570);
  if (!v32)
  {
    sub_2478E9620(&v31, &qword_27EE574C8, &qword_247951570);
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v20 = sub_24794ED34();
    __swift_project_value_buffer(v20, qword_27EE58DF8);
    v21 = sub_24794ED14();
    v22 = sub_24794F164();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_2478E1000, v21, v22, "#CollectionManager: CollectionManager cannot be created without a valid action", v23, 2u);
      MEMORY[0x24C1AF180](v23, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_0(&v35);
LABEL_21:
    __swift_destroy_boxed_opaque_existential_0(v37);
    return 0;
  }

  sub_2478E2F88(&v31, &v33);
  sub_2478E9680(a5, &v29, &qword_27EE574C0, &unk_247951550);
  if (v30)
  {
    sub_2478E2F88(&v29, &v31);
    sub_2478E2F88(v37, &v29);
    sub_2478E2F88(&v35, v28);
    sub_2478E2F88(&v33, v26);
    sub_2478E2F88(&v31, v25);
    type metadata accessor for CollectionManager();
    v11 = swift_allocObject();
    *(v11 + 152) = 0u;
    *(v11 + 168) = 0u;
    *(v11 + 136) = 0u;
    sub_2478E2F88(&v29, v11 + 16);
    sub_2478E2F88(v28, v11 + 56);
    sub_2478E2F88(v26, v11 + 96);
    swift_beginAccess();
    sub_24791995C(v25, v11 + 136);
  }

  else
  {
    sub_2478E9620(&v29, &qword_27EE574C0, &unk_247951550);
    sub_2478E2F88(v37, &v31);
    sub_2478E2F88(&v35, &v29);
    sub_2478E2F88(&v33, v28);
    type metadata accessor for CollectionManager();
    memset(v26, 0, sizeof(v26));
    v27 = 0;
    v11 = swift_allocObject();
    *(v11 + 152) = 0u;
    *(v11 + 168) = 0u;
    *(v11 + 136) = 0u;
    sub_2478E2F88(&v31, v11 + 16);
    sub_2478E2F88(&v29, v11 + 56);
    sub_2478E2F88(v28, v11 + 96);
    swift_beginAccess();
    sub_24791995C(v26, v11 + 136);
  }

  swift_endAccess();
  *(v11 + 176) = a6;
  *(v11 + 184) = v10;

  return v11;
}

uint64_t sub_247918304(unsigned __int8 *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t (**a8)(void, void), char a9)
{
  v143 = a6;
  v142 = a5;
  v141 = sub_24794EBB4();
  v140 = *(v141 - 8);
  v15 = *(v140 + 64);
  MEMORY[0x28223BE20](v141);
  v139 = &v137 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  type metadata accessor for SamplingPolicyMetaDataManager();
  v18 = swift_allocObject();
  *(v18 + 24) = v17;
  type metadata accessor for SamplingMetaDataPrefStore();
  *(v18 + 32) = 0;
  *(v18 + 40) = 0;
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = v17;
  type metadata accessor for SamplingPolicyMetaDataFactory();
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  *(v19 + 32) = v20;
  *(v18 + 48) = v19;
  *(v18 + 64) = a2;
  *(v18 + 72) = a3;
  v21 = swift_allocObject();
  *(v21 + 16) = v17;
  *(v18 + 56) = v21;
  v22 = a4;

  v23 = sub_24793F9E8(a2, a3);

  *(v18 + 16) = v23;
  v24 = objc_allocWithZone(MEMORY[0x277D653F0]);
  v25 = sub_24794EEF4();
  v26 = [v24 initWithLocale_];

  v138 = type metadata accessor for SiriProfileManager();
  swift_allocObject();

  v145 = a2;
  v144 = a3;
  v27 = sub_2478EE438(a2, a3, a7, a8, v26);

  type metadata accessor for RequestAudioFileManager();
  v28 = swift_allocObject();
  v28[6] = 0;
  v29 = [objc_opt_self() sharedPreferences];
  v30 = [v29 getRPIAssistantAudioSamplingDirectory];

  v31 = sub_24794EF04();
  v33 = v32;

  v34 = v28;
  v28[2] = v31;
  v28[3] = v33;
  v35 = v27;
  v28[4] = a7;
  v28[5] = a8;
  v28[6] = 0;

  v146 = a7;
  v167[0] = a7;
  v167[1] = a8;
  v147 = a8;
  v36 = v22;
  v167[2] = v22;
  v167[3] = v35;
  v167[4] = v28;
  v167[5] = v18;
  if (v17 <= 1)
  {
    if (!v17)
    {
      v37 = type metadata accessor for SpkrIdSamplingPolicy();
      v38 = *(v37 + 48);
      v39 = *(v37 + 52);
      v138 = v37;
      v40 = swift_allocObject();
      v41 = (v40 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_locale);
      v42 = v145;
      v43 = v144;
      *v41 = v145;
      v41[1] = v43;
      *(v40 + 16) = v42;
      *(v40 + 24) = v43;
      *(v40 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_maxNumRecordsPerDay) = 4;
      *(v40 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_maxSamplingDurationInDays) = 180;
      *(v40 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_intermediateUploadCount) = 25;
      *(v40 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_maxTotalRecordsCount) = 150;
      *(v40 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_userSelectionChance) = 0x3FC1EB851EB851ECLL;
      *(v40 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_isNewVoiceProfile) = 0;
      *(v40 + 32) = 0;
      swift_retain_n();
      v44 = v22;
      swift_bridgeObjectRetain_n();
      swift_retain_n();
      swift_retain_n();
      v45 = v44;
      v46 = v139;
      sub_24794EBA4();
      (*(v140 + 32))(v40 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_currentDate, v46, v141);
      v141 = type metadata accessor for SiriRequestRecordFactory();
      v47 = swift_allocObject();
      *(v40 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_requestRecordFactory) = v47;
      v48 = (v40 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_samplingUtils);
      v49 = v147;
      *v48 = v146;
      v48[1] = v49;
      *(v40 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_configUserDefaults) = v45;
      *(v40 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_metaDataManager) = v18;
      *(v47 + 16) = 0;
      *(v40 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_siriProfileManager) = v35;
      v50 = v45;

      sub_2478EA1B4();

      v140 = type metadata accessor for SpkrIdRecordSelectionRule();
      *(swift_allocObject() + 80) = v50;
      LOBYTE(v161) = 0;
      v108 = v50;

      v109 = sub_2478EC5E8(v42, v43, &v161, v40, v167);

      if (v109)
      {
      }

      v145 = v109;
      if (v40)
      {
        type metadata accessor for SpkrIdActionEvent();
        v110 = swift_allocObject();
        *(v110 + 136) = a9 & 1;
        *(v110 + 120) = v42;
        *(v110 + 128) = v43;
        *(v110 + 88) = v40;
        *(v110 + 16) = v42;
        *(v110 + 24) = v43;
        v111 = v143;
        *(v110 + 48) = v142;
        *(v110 + 56) = v111;
        *(v110 + 80) = 0;
        v112 = swift_allocObject();
        *(v112 + 16) = 0;
        v113 = MEMORY[0x277D84F90];
        *(v110 + 64) = v35;
        *(v110 + 72) = v112;
        *(v110 + 96) = v113;
        *(v110 + 104) = v34;
        v114 = v147;
        *(v110 + 32) = v146;
        *(v110 + 40) = v114;
        LOBYTE(v161) = 0;
        type metadata accessor for SiriRequestBiomeProcessor();
        swift_allocObject();
        swift_retain_n();
        swift_bridgeObjectRetain_n();
        swift_retain_n();
        swift_retain_n();
        v115 = v108;

        v124 = sub_2478EE784(&v161);

        *(v110 + 112) = v124;
      }

      else
      {
        type metadata accessor for SpkrIdActionEvent();
        swift_allocObject();
        v116 = qword_27EE571C0;
        v147 = v108;
        v117 = v108;

        if (v116 != -1)
        {
          swift_once();
        }

        v118 = sub_24794ED34();
        __swift_project_value_buffer(v118, qword_27EE58DF8);
        v119 = sub_24794ED14();
        v120 = sub_24794F164();
        if (os_log_type_enabled(v119, v120))
        {
          v121 = v35;
          v122 = swift_slowAlloc();
          *v122 = 0;
          _os_log_impl(&dword_2478E1000, v119, v120, "#SpkrIdActionEvent: Cannot create sampling policy", v122, 2u);
          v123 = v122;
          v35 = v121;
          MEMORY[0x24C1AF180](v123, -1, -1);
        }

        swift_deallocPartialClassInstance();
        v110 = 0;
        v108 = v147;
      }

      v125 = v145;
      v126 = type metadata accessor for SpkrIdAudioStoreRule();
      v127 = swift_allocObject();
      v166 = 0;
      if (v40)
      {
        v128 = &off_285985290;
        v129 = v40;
        v130 = v138;
      }

      else
      {
        v129 = 0;
        v130 = 0;
        v128 = 0;
        v162 = 0;
        v163 = 0;
      }

      v161 = v129;
      v164 = v130;
      v165 = v128;
      if (v125)
      {
        v131 = &off_2859852D0;
        v132 = v125;
        v133 = v140;
      }

      else
      {
        v132 = 0;
        v133 = 0;
        v131 = 0;
        v157 = 0;
        v158 = 0;
      }

      v156 = v132;
      v159 = v133;
      v160 = v131;
      v134 = 0;
      if (v110)
      {
        v134 = type metadata accessor for SpkrIdActionEvent();
        v135 = &off_2859851F0;
      }

      else
      {
        v135 = 0;
        v152 = 0;
        v153 = 0;
      }

      v151 = v110;
      v154 = v134;
      v155 = v135;
      v150 = &off_2859857B0;
      *(&v149 + 1) = v126;
      *&v148 = v127;

      v103 = sub_247917DF8(&v166, &v161, &v156, &v151, &v148, v35);

      goto LABEL_45;
    }

    v71 = v22;
    swift_retain_n();
    v72 = v71;
    swift_retain_n();
    swift_retain_n();
    v73 = v72;
    v74 = v144;

    v75 = v145;
    v76 = sub_2478FBC2C(v145, v74, v73, v167);
    v146 = type metadata accessor for ButtonPressRecordSelectionRule();
    swift_allocObject();
    LOBYTE(v161) = 1;
    v77 = v35;
    v78 = v73;

    v79 = sub_2478EC5E8(v75, v74, &v161, v76, v167);
    v80 = type metadata accessor for ButtonPressActionEvent();
    swift_allocObject();
    v147 = v78;

    v141 = v34;

    v81 = v143;

    v82 = sub_2478F6F64(v75, v74, v142, v81, v76, v167);
    v83 = type metadata accessor for ButtonPressAudioStoreRule();
    v84 = swift_allocObject();
    *(v84 + 16) = v75;
    *(v84 + 24) = v74;
    v166 = 1;
    if (v76)
    {
      v85 = type metadata accessor for ButtonPressSamplingPolicy();
      v86 = &off_285985290;
      v87 = v76;
    }

    else
    {
      v87 = 0;
      v85 = 0;
      v86 = 0;
      v162 = 0;
      v163 = 0;
    }

    v161 = v87;
    v164 = v85;
    v165 = v86;
    if (v79)
    {
      v104 = &off_2859852D0;
      v105 = v79;
      v106 = v146;
    }

    else
    {
      v105 = 0;
      v106 = 0;
      v104 = 0;
      v157 = 0;
      v158 = 0;
    }

    v156 = v105;
    v159 = v106;
    v160 = v104;
    if (v82)
    {
      v107 = &off_2859851F0;
    }

    else
    {
      v80 = 0;
      v107 = 0;
      v152 = 0;
      v153 = 0;
    }

    v151 = v82;
    v154 = v80;
    v155 = v107;
    v150 = &off_285985598;
    *(&v149 + 1) = v83;
    *&v148 = v84;

    v103 = sub_247917DF8(&v166, &v161, &v156, &v151, &v148, v77);

LABEL_23:

LABEL_45:

LABEL_46:
    sub_2478E9620(&v148, &qword_27EE574C0, &unk_247951550);
    sub_2478E9620(&v151, &qword_27EE574C8, &qword_247951570);
    sub_2478E9620(&v156, &qword_27EE574D0, &qword_247951578);
    sub_2478E9620(&v161, &qword_27EE574D8, &qword_247951580);
    return v103;
  }

  if (v17 == 2)
  {
    v144 = type metadata accessor for MetricsCalcSamplingPolicy();
    v51 = swift_allocObject();
    v52 = v147;
    *(v51 + 16) = v146;
    *(v51 + 24) = v52;
    v140 = type metadata accessor for MetricsCalcRecordSelectionRule();
    v53 = swift_allocObject();
    type metadata accessor for SiriRequestRecordFactory();
    v54 = swift_allocObject();
    *(v54 + 16) = 2;
    *(v53 + 16) = v54;
    v55 = v138;
    v164 = v138;
    v165 = &off_2859852E8;
    v161 = v35;
    v139 = type metadata accessor for MetricsCalcActionEvent();
    v56 = swift_allocObject();
    v57 = __swift_mutable_project_boxed_opaque_existential_1(&v161, v55);
    v58 = *(*(v55 - 8) + 64);
    MEMORY[0x28223BE20](v57);
    v60 = v35;
    v61 = (&v137 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v62 + 16))(v61);
    v63 = *v61;
    v145 = v60;
    swift_retain_n();
    v64 = v36;

    v141 = v34;

    v65 = v143;

    v66 = sub_2479177A4(v146, v147, v63, v142, v65, v56);
    __swift_destroy_boxed_opaque_existential_0(&v161);
    v67 = type metadata accessor for MetricsCalcAudioStoreRule();
    v68 = swift_allocObject();
    v166 = 2;
    v164 = v144;
    v165 = &off_285985770;
    v161 = v51;
    v159 = v140;
    v160 = &off_285985758;
    v156 = v53;
    if (v66)
    {
      v69 = &off_285985650;
      v70 = v139;
    }

    else
    {
      v70 = 0;
      v69 = 0;
      v152 = 0;
      v153 = 0;
    }

    v151 = v66;
    v154 = v70;
    v155 = v69;
    v150 = &off_2859856B0;
    *(&v149 + 1) = v67;
    *&v148 = v68;

    v103 = sub_247917DF8(&v166, &v161, &v156, &v151, &v148, 0);

    goto LABEL_23;
  }

  v143 = type metadata accessor for SpkrIdSamplingOneSessionPolicy();
  swift_allocObject();
  v88 = v22;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  v89 = v88;
  v90 = v144;

  v91 = v145;
  v92 = sub_24790E8A4(v145, v90, v167);
  v93 = type metadata accessor for SpkrIdSamplingOneSessionSelectionRule();
  swift_allocObject();
  v94 = v89;

  v95 = sub_247910A80(v91, v90, v167);
  if (v95)
  {
    v96 = v95;
    v142 = v94;
    v97 = type metadata accessor for SpkrIdSamplingOneSessionActionEvent();
    v98 = swift_allocObject();
    v98[2] = v91;
    v98[3] = v90;
    v98[4] = v35;
    v99 = v147;
    v98[6] = v146;
    v98[7] = v99;
    v98[8] = v18;
    v98[9] = v96;
    type metadata accessor for SiriRequestRecordFactory();
    v100 = swift_allocObject();
    *(v100 + 16) = 3;
    v98[5] = v100;
    v166 = 3;
    if (v92)
    {
      v101 = &off_2859858C8;
      v102 = v143;
    }

    else
    {
      v102 = 0;
      v101 = 0;
      v162 = 0;
      v163 = 0;
    }

    v161 = v92;
    v164 = v102;
    v165 = v101;
    v159 = v93;
    v160 = &off_285985908;
    v156 = v96;
    v154 = v97;
    v155 = &off_2859857D8;
    v151 = v98;
    v150 = 0;
    v149 = 0u;
    v148 = 0u;
    swift_retain_n();

    v103 = sub_247917DF8(&v166, &v161, &v156, &v151, &v148, 0);

    goto LABEL_46;
  }

  return 0;
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

uint64_t sub_24791995C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574C0, &unk_247951550);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t CollectionManagerProcessResult.errorMessage.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

void *CollectionManagerProcessResult.error.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_247919A48(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_247919AA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

void *sub_247919B08(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v48 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57278, &unk_247950590);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v41 - v9;
  v11 = sub_24794EC04();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v41 - v17;
  v19 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v20 = v19;
  if (v19)
  {
    v47 = a4;
    v21 = *(a3 + 16);
    if (v21)
    {
      v42 = a2;
      v43 = v10;
      v44 = v16;
      v45 = v12;
      v49 = *(v12 + 16);
      v22 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v41[1] = a3;
      v23 = a3 + v22;
      v24 = *(v12 + 72);
      v25 = v11;
      v26 = (v12 + 8);
      v46 = v19;
      v27 = v19;
      do
      {
        v49(v18, v23, v25);
        v28 = objc_allocWithZone(MEMORY[0x277D5AC78]);
        v29 = sub_24794EBE4();
        (*v26)(v18, v25);
        v30 = [v28 initWithNSUUID_];

        [v27 addOdsampleIds_];
        v23 += v24;
        --v21;
      }

      while (v21);

      v12 = v45;
      v20 = v46;
      v11 = v25;
      v10 = v43;
      v16 = v44;
      a2 = v42;
    }

    else
    {
      v31 = v19;
    }

    [v20 setCollectionStatus_];

    if (a2)
    {
      sub_24794EBC4();

      if ((*(v12 + 48))(v10, 1, v11) != 1)
      {
        (*(v12 + 32))(v16, v10, v11);
        v36 = objc_allocWithZone(MEMORY[0x277D5AC78]);
        v37 = v20;
        v38 = sub_24794EBE4();
        v39 = [v36 initWithNSUUID_];

        [v37 setUserSamplingId_];
        (*(v12 + 8))(v16, v11);

        return v20;
      }

      sub_2478E9620(v10, &qword_27EE57278, &unk_247950590);
    }

    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v32 = sub_24794ED34();
    __swift_project_value_buffer(v32, qword_27EE58DF8);
    v33 = sub_24794ED14();
    v34 = sub_24794F164();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_2478E1000, v33, v34, "#SiriRequestRecord: Cannot initialize ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleManifestReported", v35, 2u);
      MEMORY[0x24C1AF180](v35, -1, -1);
    }

    return 0;
  }

  else
  {
  }

  return v20;
}

id sub_247919F48(char *a1)
{
  v2 = sub_24794EC04();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v8 = result;
    (*(v3 + 16))(v6, a1, v2);
    v9 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v10 = v8;
    v11 = sub_24794EBE4();
    v12 = [v9 initWithNSUUID_];

    v13 = *(v3 + 8);
    v13(v6, v2);
    [v10 setOdsampleId_];

    v13(a1, v2);
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::String __swiftcall SISchemaISOLocale.toString()()
{
  v1 = v0;
  v2 = [v0 languageCode];
  if (v2 > 0xB9)
  {
    v3 = @"ISOLANGUAGECODE_UNKNOWN";
    v4 = @"ISOLANGUAGECODE_UNKNOWN";
  }

  else
  {
    v3 = off_278EB41F8[v2];
    v4 = off_278EB47C8[v2];
  }

  v5 = v3;
  v6 = v4;
  sub_24794EF04();

  v7 = [v1 countryCode];
  if (v7 > 0xFA)
  {
    v8 = @"COUNTRYCODE_UNKNOWN";
    v9 = @"COUNTRYCODE_UNKNOWN";
  }

  else
  {
    v8 = off_278EB4D98[v7];
    v9 = off_278EB5570[v7];
  }

  v10 = v8;
  v11 = v9;
  v12 = sub_24794EF04();
  v14 = v13;

  v15 = sub_24794EF24();
  v17 = v16;

  if (sub_24794F004())
  {
    v18 = sub_24794EF84();
    v19 = sub_24791EE78(v18, v12, v14);
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v12 = MEMORY[0x24C1AE470](v19, v21, v23, v25);
    v14 = v26;
  }

  MEMORY[0x24C1AE4C0](45, 0xE100000000000000);

  MEMORY[0x24C1AE4C0](v12, v14);

  v27 = v15;
  v28 = v17;
  result._object = v28;
  result._countAndFlagsBits = v27;
  return result;
}

void sub_24791A2DC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v1;
    v5 = *(sub_24794EC04() - 8);
    v6 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v7 = *(v5 + 72);
    do
    {
      v8 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v9 = sub_24794EBE4();
      v10 = [v8 initWithNSUUID_];

      [v3 addOdsampleIds_];
      v6 += v7;
      --v2;
    }

    while (v2);
  }
}

id sub_24791A3D8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a2;
  v30 = a1;
  v6 = sub_24794EC04();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v29 - v13;
  v15 = sub_24794EBB4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (!result)
  {
    goto LABEL_14;
  }

  v21 = result;
  sub_2478EE3C8(a4, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_2478E9620(v14, &qword_27EE572D0, &unk_2479504E0);
    if (!a3)
    {
LABEL_5:
      v23 = v30;
      (*(v7 + 16))(v10, v30, v6);
      v24 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v25 = sub_24794EBE4();
      v26 = [v24 initWithNSUUID_];

      v27 = *(v7 + 8);
      v27(v10, v6);
      [v21 setEnrollmentDonationId_];

      sub_2478E9620(a4, &qword_27EE572D0, &unk_2479504E0);
      v27(v23, v6);
      return v21;
    }

LABEL_4:
    v22 = sub_2479440D4(v29, a3);

    [v21 setTriggerPhrase_];
    goto LABEL_5;
  }

  (*(v16 + 32))(v19, v14, v15);
  result = sub_24794EB74();
  if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v28 > -1.0)
  {
    if (v28 < 1.84467441e19)
    {
      [v21 setApproximateGenerationTimeStamp_];
      (*(v16 + 8))(v19, v15);
      if (!a3)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    goto LABEL_13;
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_24791A758(char *a1, uint64_t a2, char *a3)
{
  v6 = sub_24794EC04();
  v7 = *(v6 - 8);
  v8 = v7[8];
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (!v11)
  {
    v18 = v7[1];
    goto LABEL_7;
  }

  v27 = a1;
  v28 = a2;
  v12 = v7[2];
  v12(v10, a1, v6);
  v13 = a3;
  v14 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v25 = v11;
  v15 = v11;
  v16 = sub_24794EBE4();
  v17 = [v14 initWithNSUUID_];

  v18 = v7[1];
  v18(v10, v6);
  [v15 setClockIdentifier_];

  v26 = v13;
  v12(v10, v13, v6);
  a2 = v28;
  v19 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v20 = sub_24794EBE4();
  v21 = [v19 initWithNSUUID_];

  v18(v10, v6);
  [v15 setRequestId_];

  result = sub_24794EB74();
  if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v23 <= -1.0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v23 < 1.84467441e19)
  {
    [v15 setApproximateSessionTimeStamp_];

    a3 = v26;
    a1 = v27;
    v11 = v25;
LABEL_7:
    v18(a3, v6);
    v24 = sub_24794EBB4();
    (*(*(v24 - 8) + 8))(a2, v24);
    v18(a1, v6);
    return v11;
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_24791AA24(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    sub_24794F344();

    v4 = 0xD00000000000001ELL;
    swift_getErrorValue();
    goto LABEL_5;
  }

  if (a1 >> 62 == 1)
  {
    sub_24794F344();

    v4 = 0xD000000000000018;
    swift_getErrorValue();
LABEL_5:
    v1 = sub_24794F524();
    MEMORY[0x24C1AE4C0](v1);

    return v4;
  }

  v3 = 0xD00000000000002FLL;
  if (a1 == 0x8000000000000008)
  {
    v3 = 0xD000000000000037;
  }

  if (a1 == 0x8000000000000000)
  {
    return 0xD000000000000040;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_24791ABA0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    sub_24794F344();

    v5 = 0xD00000000000001BLL;
    swift_getErrorValue();
    v3 = sub_24794F524();
    MEMORY[0x24C1AE4C0](v3);
  }

  else
  {
    v5 = 0;
    sub_24794F344();
    MEMORY[0x24C1AE4C0](0xD000000000000025, 0x8000000247955C80);
    sub_24794F0F4();
    MEMORY[0x24C1AE4C0](0x20747562202C7A48, 0xEC00000020746F67);
    sub_24794F0F4();
    MEMORY[0x24C1AE4C0](31304, 0xE200000000000000);
  }

  return v5;
}

uint64_t sub_24791AD04@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    v8 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v8 == 2)
      {
        v10 = *(a2 + 16);
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = 0;
        v10 = 0;
      }
    }

    else
    {
      if (v8)
      {
        v9 = a2 >> 32;
      }

      else
      {
        v9 = BYTE6(a3);
      }

      if (v8)
      {
        v10 = a2;
      }

      else
      {
        v10 = 0;
      }
    }

    v11 = sub_24792FCA8(v10, v9, a2, a3);
    if (v6 && v11 < v6)
    {
      if (v8 == 2)
      {
        v14 = *(a2 + 24);
      }
    }

    else
    {
      v12 = sub_24792FC44(v10, v6, a2, a3);
      if (v8 > 1)
      {
        if (v8 == 2)
        {
          v13 = *(a2 + 24);
        }

        else
        {
          v13 = 0;
        }
      }

      else if (v8)
      {
        v13 = a2 >> 32;
      }

      else
      {
        v13 = BYTE6(a3);
      }

      if (v13 < v12)
      {
        __break(1u);
      }
    }

    v15 = sub_24794EAE4();
    v17 = v16;
    result = sub_24791EFD8(a2, a3);
    *a4 = v15;
    a4[1] = v17;
  }

  return result;
}

id _sSo17SISchemaISOLocaleC23CoreSpeechDataAnalyticsE10fromStringyABSgSSFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24794E894();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24794E884();
  v33[0] = a1;
  v33[1] = a2;
  sub_24791F02C();
  v9 = sub_24794F254();
  v10 = v9;
  v11 = v9[2];
  if (v11 == 2)
  {
    v19 = v9[4];
    v20 = v10[5];
    sub_24794EF34();
    v21 = sub_24794EEF4();

    v16 = v21;
    if ([v16 isEqualToString:@"ISOLANGUAGECODE_UNKNOWN"])
    {
      v17 = 0;
    }

    else if ([v16 isEqualToString:@"AB"])
    {
      v17 = 1;
    }

    else if ([v16 isEqualToString:@"AA"])
    {
      v17 = 2;
    }

    else if ([v16 isEqualToString:@"AF"])
    {
      v17 = 3;
    }

    else if ([v16 isEqualToString:@"AK"])
    {
      v17 = 4;
    }

    else if ([v16 isEqualToString:@"SQ"])
    {
      v17 = 5;
    }

    else if ([v16 isEqualToString:@"AM"])
    {
      v17 = 6;
    }

    else if ([v16 isEqualToString:@"AR"])
    {
      v17 = 7;
    }

    else if ([v16 isEqualToString:@"AN"])
    {
      v17 = 8;
    }

    else if ([v16 isEqualToString:@"HY"])
    {
      v17 = 9;
    }

    else if ([v16 isEqualToString:@"AS"])
    {
      v17 = 10;
    }

    else if ([v16 isEqualToString:@"AV"])
    {
      v17 = 11;
    }

    else if ([v16 isEqualToString:@"AE"])
    {
      v17 = 12;
    }

    else if ([v16 isEqualToString:@"AY"])
    {
      v17 = 13;
    }

    else if ([v16 isEqualToString:@"AZ"])
    {
      v17 = 14;
    }

    else if ([v16 isEqualToString:@"BM"])
    {
      v17 = 15;
    }

    else if ([v16 isEqualToString:@"BA"])
    {
      v17 = 16;
    }

    else if ([v16 isEqualToString:@"EU"])
    {
      v17 = 17;
    }

    else if ([v16 isEqualToString:@"BE"])
    {
      v17 = 18;
    }

    else if ([v16 isEqualToString:@"BN"])
    {
      v17 = 19;
    }

    else if ([v16 isEqualToString:@"BI"])
    {
      v17 = 20;
    }

    else if ([v16 isEqualToString:@"BS"])
    {
      v17 = 21;
    }

    else if ([v16 isEqualToString:@"BR"])
    {
      v17 = 22;
    }

    else if ([v16 isEqualToString:@"BG"])
    {
      v17 = 23;
    }

    else if ([v16 isEqualToString:@"MY"])
    {
      v17 = 24;
    }

    else if ([v16 isEqualToString:@"CA"])
    {
      v17 = 25;
    }

    else if ([v16 isEqualToString:@"CH"])
    {
      v17 = 26;
    }

    else if ([v16 isEqualToString:@"CE"])
    {
      v17 = 27;
    }

    else if ([v16 isEqualToString:@"NY"])
    {
      v17 = 28;
    }

    else if ([v16 isEqualToString:@"ZH"])
    {
      v17 = 29;
    }

    else if ([v16 isEqualToString:@"CV"])
    {
      v17 = 30;
    }

    else if ([v16 isEqualToString:@"KW"])
    {
      v17 = 31;
    }

    else if ([v16 isEqualToString:@"CO"])
    {
      v17 = 32;
    }

    else if ([v16 isEqualToString:@"CR"])
    {
      v17 = 33;
    }

    else if ([v16 isEqualToString:@"HR"])
    {
      v17 = 34;
    }

    else if ([v16 isEqualToString:@"CS"])
    {
      v17 = 35;
    }

    else if ([v16 isEqualToString:@"DA"])
    {
      v17 = 36;
    }

    else if ([v16 isEqualToString:@"DV"])
    {
      v17 = 37;
    }

    else if ([v16 isEqualToString:@"NL"])
    {
      v17 = 38;
    }

    else if ([v16 isEqualToString:@"DZ"])
    {
      v17 = 39;
    }

    else if ([v16 isEqualToString:@"EN"])
    {
      v17 = 40;
    }

    else if ([v16 isEqualToString:@"EO"])
    {
      v17 = 41;
    }

    else if ([v16 isEqualToString:@"ET"])
    {
      v17 = 42;
    }

    else if ([v16 isEqualToString:@"EE"])
    {
      v17 = 43;
    }

    else if ([v16 isEqualToString:@"FO"])
    {
      v17 = 44;
    }

    else if ([v16 isEqualToString:@"FJ"])
    {
      v17 = 45;
    }

    else if ([v16 isEqualToString:@"FI"])
    {
      v17 = 46;
    }

    else if ([v16 isEqualToString:@"FR"])
    {
      v17 = 47;
    }

    else if ([v16 isEqualToString:@"FF"])
    {
      v17 = 48;
    }

    else if ([v16 isEqualToString:@"GL"])
    {
      v17 = 49;
    }

    else if ([v16 isEqualToString:@"KA"])
    {
      v17 = 50;
    }

    else if ([v16 isEqualToString:@"DE"])
    {
      v17 = 51;
    }

    else if ([v16 isEqualToString:@"EL"])
    {
      v17 = 52;
    }

    else if ([v16 isEqualToString:@"GN"])
    {
      v17 = 53;
    }

    else if ([v16 isEqualToString:@"GU"])
    {
      v17 = 54;
    }

    else if ([v16 isEqualToString:@"HT"])
    {
      v17 = 55;
    }

    else if ([v16 isEqualToString:@"HA"])
    {
      v17 = 56;
    }

    else if ([v16 isEqualToString:@"HE"])
    {
      v17 = 57;
    }

    else if ([v16 isEqualToString:@"HZ"])
    {
      v17 = 58;
    }

    else if ([v16 isEqualToString:@"HI"])
    {
      v17 = 59;
    }

    else if ([v16 isEqualToString:@"HO"])
    {
      v17 = 60;
    }

    else if ([v16 isEqualToString:@"HU"])
    {
      v17 = 61;
    }

    else if ([v16 isEqualToString:@"IA"])
    {
      v17 = 62;
    }

    else if ([v16 isEqualToString:@"ID"])
    {
      v17 = 63;
    }

    else if ([v16 isEqualToString:@"IE"])
    {
      v17 = 64;
    }

    else if ([v16 isEqualToString:@"GA"])
    {
      v17 = 65;
    }

    else if ([v16 isEqualToString:@"IG"])
    {
      v17 = 66;
    }

    else if ([v16 isEqualToString:@"IK"])
    {
      v17 = 67;
    }

    else if ([v16 isEqualToString:@"IO"])
    {
      v17 = 68;
    }

    else if ([v16 isEqualToString:@"IS"])
    {
      v17 = 69;
    }

    else if ([v16 isEqualToString:@"IT"])
    {
      v17 = 70;
    }

    else if ([v16 isEqualToString:@"IU"])
    {
      v17 = 71;
    }

    else if ([v16 isEqualToString:@"JA"])
    {
      v17 = 72;
    }

    else if ([v16 isEqualToString:@"JV"])
    {
      v17 = 73;
    }

    else if ([v16 isEqualToString:@"KL"])
    {
      v17 = 74;
    }

    else if ([v16 isEqualToString:@"KN"])
    {
      v17 = 75;
    }

    else if ([v16 isEqualToString:@"KR"])
    {
      v17 = 76;
    }

    else if ([v16 isEqualToString:@"KS"])
    {
      v17 = 77;
    }

    else if ([v16 isEqualToString:@"KK"])
    {
      v17 = 78;
    }

    else if ([v16 isEqualToString:@"KM"])
    {
      v17 = 79;
    }

    else if ([v16 isEqualToString:@"KI"])
    {
      v17 = 80;
    }

    else if ([v16 isEqualToString:@"RW"])
    {
      v17 = 81;
    }

    else if ([v16 isEqualToString:@"KY"])
    {
      v17 = 82;
    }

    else if ([v16 isEqualToString:@"KV"])
    {
      v17 = 83;
    }

    else if ([v16 isEqualToString:@"KG"])
    {
      v17 = 84;
    }

    else if ([v16 isEqualToString:@"KO"])
    {
      v17 = 85;
    }

    else if ([v16 isEqualToString:@"KU"])
    {
      v17 = 86;
    }

    else if ([v16 isEqualToString:@"KJ"])
    {
      v17 = 87;
    }

    else if ([v16 isEqualToString:@"LA"])
    {
      v17 = 88;
    }

    else if ([v16 isEqualToString:@"LB"])
    {
      v17 = 89;
    }

    else if ([v16 isEqualToString:@"LG"])
    {
      v17 = 90;
    }

    else if ([v16 isEqualToString:@"LI"])
    {
      v17 = 91;
    }

    else if ([v16 isEqualToString:@"LN"])
    {
      v17 = 92;
    }

    else if ([v16 isEqualToString:@"LO"])
    {
      v17 = 93;
    }

    else if ([v16 isEqualToString:@"LT"])
    {
      v17 = 94;
    }

    else if ([v16 isEqualToString:@"LU"])
    {
      v17 = 95;
    }

    else if ([v16 isEqualToString:@"LV"])
    {
      v17 = 96;
    }

    else if ([v16 isEqualToString:@"GV"])
    {
      v17 = 97;
    }

    else if ([v16 isEqualToString:@"MK"])
    {
      v17 = 98;
    }

    else if ([v16 isEqualToString:@"MG"])
    {
      v17 = 99;
    }

    else if ([v16 isEqualToString:@"MS"])
    {
      v17 = 100;
    }

    else if ([v16 isEqualToString:@"ML"])
    {
      v17 = 101;
    }

    else if ([v16 isEqualToString:@"MT"])
    {
      v17 = 102;
    }

    else if ([v16 isEqualToString:@"MI"])
    {
      v17 = 103;
    }

    else if ([v16 isEqualToString:@"MR"])
    {
      v17 = 104;
    }

    else if ([v16 isEqualToString:@"MH"])
    {
      v17 = 105;
    }

    else if ([v16 isEqualToString:@"MN"])
    {
      v17 = 106;
    }

    else if ([v16 isEqualToString:@"NA"])
    {
      v17 = 107;
    }

    else if ([v16 isEqualToString:@"NV"])
    {
      v17 = 108;
    }

    else if ([v16 isEqualToString:@"ND"])
    {
      v17 = 109;
    }

    else if ([v16 isEqualToString:@"NE"])
    {
      v17 = 110;
    }

    else if ([v16 isEqualToString:@"NG"])
    {
      v17 = 111;
    }

    else if ([v16 isEqualToString:@"NB"])
    {
      v17 = 112;
    }

    else if ([v16 isEqualToString:@"NN"])
    {
      v17 = 113;
    }

    else if ([v16 isEqualToString:@"NO"])
    {
      v17 = 114;
    }

    else if ([v16 isEqualToString:@"II"])
    {
      v17 = 115;
    }

    else if ([v16 isEqualToString:@"NR"])
    {
      v17 = 116;
    }

    else if ([v16 isEqualToString:@"OC"])
    {
      v17 = 117;
    }

    else if ([v16 isEqualToString:@"OJ"])
    {
      v17 = 118;
    }

    else if ([v16 isEqualToString:@"CU"])
    {
      v17 = 119;
    }

    else if ([v16 isEqualToString:@"OM"])
    {
      v17 = 120;
    }

    else if ([v16 isEqualToString:@"OR"])
    {
      v17 = 121;
    }

    else if ([v16 isEqualToString:@"OS"])
    {
      v17 = 122;
    }

    else if ([v16 isEqualToString:@"PA"])
    {
      v17 = 123;
    }

    else if ([v16 isEqualToString:@"PI"])
    {
      v17 = 124;
    }

    else if ([v16 isEqualToString:@"FA"])
    {
      v17 = 125;
    }

    else if ([v16 isEqualToString:@"PL"])
    {
      v17 = 126;
    }

    else if ([v16 isEqualToString:@"PS"])
    {
      v17 = 127;
    }

    else if ([v16 isEqualToString:@"PT"])
    {
      v17 = 128;
    }

    else if ([v16 isEqualToString:@"QU"])
    {
      v17 = 129;
    }

    else if ([v16 isEqualToString:@"RM"])
    {
      v17 = 130;
    }

    else if ([v16 isEqualToString:@"RN"])
    {
      v17 = 131;
    }

    else if ([v16 isEqualToString:@"RO"])
    {
      v17 = 132;
    }

    else if ([v16 isEqualToString:@"RU"])
    {
      v17 = 133;
    }

    else if ([v16 isEqualToString:@"SA"])
    {
      v17 = 134;
    }

    else if ([v16 isEqualToString:@"SC"])
    {
      v17 = 135;
    }

    else if ([v16 isEqualToString:@"SD"])
    {
      v17 = 136;
    }

    else if ([v16 isEqualToString:@"SE"])
    {
      v17 = 137;
    }

    else if ([v16 isEqualToString:@"SM"])
    {
      v17 = 138;
    }

    else if ([v16 isEqualToString:@"SG"])
    {
      v17 = 139;
    }

    else if ([v16 isEqualToString:@"SR"])
    {
      v17 = 140;
    }

    else if ([v16 isEqualToString:@"GD"])
    {
      v17 = 141;
    }

    else if ([v16 isEqualToString:@"SN"])
    {
      v17 = 142;
    }

    else if ([v16 isEqualToString:@"SI"])
    {
      v17 = 143;
    }

    else if ([v16 isEqualToString:@"SK"])
    {
      v17 = 144;
    }

    else if ([v16 isEqualToString:@"SL"])
    {
      v17 = 145;
    }

    else if ([v16 isEqualToString:@"SO"])
    {
      v17 = 146;
    }

    else if ([v16 isEqualToString:@"ST"])
    {
      v17 = 147;
    }

    else if ([v16 isEqualToString:@"ES"])
    {
      v17 = 148;
    }

    else if ([v16 isEqualToString:@"SU"])
    {
      v17 = 149;
    }

    else if ([v16 isEqualToString:@"SW"])
    {
      v17 = 150;
    }

    else if ([v16 isEqualToString:@"SS"])
    {
      v17 = 151;
    }

    else if ([v16 isEqualToString:@"SV"])
    {
      v17 = 152;
    }

    else if ([v16 isEqualToString:@"TA"])
    {
      v17 = 153;
    }

    else if ([v16 isEqualToString:@"TE"])
    {
      v17 = 154;
    }

    else if ([v16 isEqualToString:@"TG"])
    {
      v17 = 155;
    }

    else if ([v16 isEqualToString:@"TH"])
    {
      v17 = 156;
    }

    else if ([v16 isEqualToString:@"TI"])
    {
      v17 = 157;
    }

    else if ([v16 isEqualToString:@"BO"])
    {
      v17 = 158;
    }

    else if ([v16 isEqualToString:@"TK"])
    {
      v17 = 159;
    }

    else if ([v16 isEqualToString:@"TL"])
    {
      v17 = 160;
    }

    else if ([v16 isEqualToString:@"TN"])
    {
      v17 = 161;
    }

    else if ([v16 isEqualToString:@"TO"])
    {
      v17 = 162;
    }

    else if ([v16 isEqualToString:@"TR"])
    {
      v17 = 163;
    }

    else if ([v16 isEqualToString:@"TS"])
    {
      v17 = 164;
    }

    else if ([v16 isEqualToString:@"TT"])
    {
      v17 = 165;
    }

    else if ([v16 isEqualToString:@"TW"])
    {
      v17 = 166;
    }

    else if ([v16 isEqualToString:@"TY"])
    {
      v17 = 167;
    }

    else if ([v16 isEqualToString:@"UG"])
    {
      v17 = 168;
    }

    else if ([v16 isEqualToString:@"UK"])
    {
      v17 = 169;
    }

    else if ([v16 isEqualToString:@"UR"])
    {
      v17 = 170;
    }

    else if ([v16 isEqualToString:@"UZ"])
    {
      v17 = 171;
    }

    else if ([v16 isEqualToString:@"VE"])
    {
      v17 = 172;
    }

    else if ([v16 isEqualToString:@"VI"])
    {
      v17 = 173;
    }

    else if ([v16 isEqualToString:@"VO"])
    {
      v17 = 174;
    }

    else if ([v16 isEqualToString:@"WA"])
    {
      v17 = 175;
    }

    else if ([v16 isEqualToString:@"CY"])
    {
      v17 = 176;
    }

    else if ([v16 isEqualToString:@"WO"])
    {
      v17 = 177;
    }

    else if ([v16 isEqualToString:@"FY"])
    {
      v17 = 178;
    }

    else if ([v16 isEqualToString:@"XH"])
    {
      v17 = 179;
    }

    else if ([v16 isEqualToString:@"YI"])
    {
      v17 = 180;
    }

    else if ([v16 isEqualToString:@"YO"])
    {
      v17 = 181;
    }

    else if ([v16 isEqualToString:@"ZA"])
    {
      v17 = 182;
    }

    else if ([v16 isEqualToString:@"ZU"])
    {
      v17 = 183;
    }

    else if ([v16 isEqualToString:@"WUU"])
    {
      v17 = 184;
    }

    else if ([v16 isEqualToString:@"YUE"])
    {
      v17 = 185;
    }

    else
    {
      v17 = 0;
    }

    v23 = objc_opt_self();
    if (v10[2] >= 2uLL)
    {
      v24 = v23;
      v25 = v10[6];
      v26 = v10[7];

      sub_24794EF34();

      v10 = sub_24794EEF4();
LABEL_1131:

      v22 = [v24 convertCountryCodeToSchemaCountryCode_];
LABEL_1137:

      goto LABEL_1138;
    }

    __break(1u);
    goto LABEL_1126;
  }

  if (v11 == 3)
  {
    v12 = v9[4] == 0x454C41434F4CLL && v9[5] == 0xE600000000000000;
    if (v12 || (sub_24794F4E4() & 1) != 0)
    {
      v13 = v10[6];
      v14 = v10[7];

      v15 = sub_24794EEF4();

      v16 = v15;
      if ([v16 isEqualToString:@"ISOLANGUAGECODE_UNKNOWN"])
      {
        v17 = 0;
LABEL_1129:

        v27 = objc_opt_self();
        if (v10[2] >= 3uLL)
        {
          v24 = v27;
          v28 = v10[8];
          v29 = v10[9];

          v10 = sub_24794EEF4();
          goto LABEL_1131;
        }

        __break(1u);
        goto LABEL_1133;
      }

      if ([v16 isEqualToString:@"AB"])
      {
        v17 = 1;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"AA"])
      {
        v17 = 2;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"AF"])
      {
        v17 = 3;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"AK"])
      {
        v17 = 4;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"SQ"])
      {
        v17 = 5;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"AM"])
      {
        v17 = 6;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"AR"])
      {
        v17 = 7;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"AN"])
      {
        v17 = 8;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"HY"])
      {
        v17 = 9;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"AS"])
      {
        v17 = 10;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"AV"])
      {
        v17 = 11;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"AE"])
      {
        v17 = 12;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"AY"])
      {
        v17 = 13;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"AZ"])
      {
        v17 = 14;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"BM"])
      {
        v17 = 15;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"BA"])
      {
        v17 = 16;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"EU"])
      {
        v17 = 17;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"BE"])
      {
        v17 = 18;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"BN"])
      {
        v17 = 19;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"BI"])
      {
        v17 = 20;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"BS"])
      {
        v17 = 21;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"BR"])
      {
        v17 = 22;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"BG"])
      {
        v17 = 23;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"MY"])
      {
        v17 = 24;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"CA"])
      {
        v17 = 25;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"CH"])
      {
        v17 = 26;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"CE"])
      {
        v17 = 27;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"NY"])
      {
        v17 = 28;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"ZH"])
      {
        v17 = 29;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"CV"])
      {
        v17 = 30;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"KW"])
      {
        v17 = 31;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"CO"])
      {
        v17 = 32;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"CR"])
      {
        v17 = 33;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"HR"])
      {
        v17 = 34;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"CS"])
      {
        v17 = 35;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"DA"])
      {
        v17 = 36;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"DV"])
      {
        v17 = 37;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"NL"])
      {
        v17 = 38;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"DZ"])
      {
        v17 = 39;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"EN"])
      {
        v17 = 40;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"EO"])
      {
        v17 = 41;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"ET"])
      {
        v17 = 42;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"EE"])
      {
        v17 = 43;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"FO"])
      {
        v17 = 44;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"FJ"])
      {
        v17 = 45;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"FI"])
      {
        v17 = 46;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"FR"])
      {
        v17 = 47;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"FF"])
      {
        v17 = 48;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"GL"])
      {
        v17 = 49;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"KA"])
      {
        v17 = 50;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"DE"])
      {
        v17 = 51;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"EL"])
      {
        v17 = 52;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"GN"])
      {
        v17 = 53;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"GU"])
      {
        v17 = 54;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"HT"])
      {
        v17 = 55;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"HA"])
      {
        v17 = 56;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"HE"])
      {
        v17 = 57;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"HZ"])
      {
        v17 = 58;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"HI"])
      {
        v17 = 59;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"HO"])
      {
        v17 = 60;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"HU"])
      {
        v17 = 61;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"IA"])
      {
        v17 = 62;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"ID"])
      {
        v17 = 63;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"IE"])
      {
        v17 = 64;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"GA"])
      {
        v17 = 65;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"IG"])
      {
        v17 = 66;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"IK"])
      {
        v17 = 67;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"IO"])
      {
        v17 = 68;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"IS"])
      {
        v17 = 69;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"IT"])
      {
        v17 = 70;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"IU"])
      {
        v17 = 71;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"JA"])
      {
        v17 = 72;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"JV"])
      {
        v17 = 73;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"KL"])
      {
        v17 = 74;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"KN"])
      {
        v17 = 75;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"KR"])
      {
        v17 = 76;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"KS"])
      {
        v17 = 77;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"KK"])
      {
        v17 = 78;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"KM"])
      {
        v17 = 79;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"KI"])
      {
        v17 = 80;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"RW"])
      {
        v17 = 81;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"KY"])
      {
        v17 = 82;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"KV"])
      {
        v17 = 83;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"KG"])
      {
        v17 = 84;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"KO"])
      {
        v17 = 85;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"KU"])
      {
        v17 = 86;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"KJ"])
      {
        v17 = 87;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"LA"])
      {
        v17 = 88;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"LB"])
      {
        v17 = 89;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"LG"])
      {
        v17 = 90;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"LI"])
      {
        v17 = 91;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"LN"])
      {
        v17 = 92;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"LO"])
      {
        v17 = 93;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"LT"])
      {
        v17 = 94;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"LU"])
      {
        v17 = 95;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"LV"])
      {
        v17 = 96;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"GV"])
      {
        v17 = 97;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"MK"])
      {
        v17 = 98;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"MG"])
      {
        v17 = 99;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"MS"])
      {
        v17 = 100;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"ML"])
      {
        v17 = 101;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"MT"])
      {
        v17 = 102;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"MI"])
      {
        v17 = 103;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"MR"])
      {
        v17 = 104;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"MH"])
      {
        v17 = 105;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"MN"])
      {
        v17 = 106;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"NA"])
      {
        v17 = 107;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"NV"])
      {
        v17 = 108;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"ND"])
      {
        v17 = 109;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"NE"])
      {
        v17 = 110;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"NG"])
      {
        v17 = 111;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"NB"])
      {
        v17 = 112;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"NN"])
      {
        v17 = 113;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"NO"])
      {
        v17 = 114;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"II"])
      {
        v17 = 115;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"NR"])
      {
        v17 = 116;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"OC"])
      {
        v17 = 117;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"OJ"])
      {
        v17 = 118;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"CU"])
      {
        v17 = 119;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"OM"])
      {
        v17 = 120;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"OR"])
      {
        v17 = 121;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"OS"])
      {
        v17 = 122;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"PA"])
      {
        v17 = 123;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"PI"])
      {
        v17 = 124;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"FA"])
      {
        v17 = 125;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"PL"])
      {
        v17 = 126;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"PS"])
      {
        v17 = 127;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"PT"])
      {
        v17 = 128;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"QU"])
      {
        v17 = 129;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"RM"])
      {
        v17 = 130;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"RN"])
      {
        v17 = 131;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"RO"])
      {
        v17 = 132;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"RU"])
      {
        v17 = 133;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"SA"])
      {
        v17 = 134;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"SC"])
      {
        v17 = 135;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"SD"])
      {
        v17 = 136;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"SE"])
      {
        v17 = 137;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"SM"])
      {
        v17 = 138;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"SG"])
      {
        v17 = 139;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"SR"])
      {
        v17 = 140;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"GD"])
      {
        v17 = 141;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"SN"])
      {
        v17 = 142;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"SI"])
      {
        v17 = 143;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"SK"])
      {
        v17 = 144;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"SL"])
      {
        v17 = 145;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"SO"])
      {
        v17 = 146;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"ST"])
      {
        v17 = 147;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"ES"])
      {
        v17 = 148;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"SU"])
      {
        v17 = 149;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"SW"])
      {
        v17 = 150;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"SS"])
      {
        v17 = 151;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"SV"])
      {
        v17 = 152;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"TA"])
      {
        v17 = 153;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"TE"])
      {
        v17 = 154;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"TG"])
      {
        v17 = 155;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"TH"])
      {
        v17 = 156;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"TI"])
      {
        v17 = 157;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"BO"])
      {
        v17 = 158;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"TK"])
      {
        v17 = 159;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"TL"])
      {
        v17 = 160;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"TN"])
      {
        v17 = 161;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"TO"])
      {
        v17 = 162;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"TR"])
      {
        v17 = 163;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"TS"])
      {
        v17 = 164;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"TT"])
      {
        v17 = 165;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"TW"])
      {
        v17 = 166;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"TY"])
      {
        v17 = 167;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"UG"])
      {
        v17 = 168;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"UK"])
      {
        v17 = 169;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"UR"])
      {
        v17 = 170;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"UZ"])
      {
        v17 = 171;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"VE"])
      {
        v17 = 172;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"VI"])
      {
        v17 = 173;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"VO"])
      {
        v17 = 174;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"WA"])
      {
        v17 = 175;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"CY"])
      {
        v17 = 176;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"WO"])
      {
        v17 = 177;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"FY"])
      {
        v17 = 178;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"XH"])
      {
        v17 = 179;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"YI"])
      {
        v17 = 180;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"YO"])
      {
        v17 = 181;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"ZA"])
      {
        v17 = 182;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"ZU"])
      {
        v17 = 183;
        goto LABEL_1129;
      }

      if ([v16 isEqualToString:@"WUU"])
      {
        v17 = 184;
        goto LABEL_1129;
      }

LABEL_1126:
      if ([v16 isEqualToString:@"YUE"])
      {
        v17 = 185;
      }

      else
      {
        v17 = 0;
      }

      goto LABEL_1129;
    }
  }

  if (sub_24794EF84() == 2)
  {
    sub_24794EF34();
    v18 = sub_24794EEF4();

    v10 = v18;
    if ([v10 isEqualToString:@"ISOLANGUAGECODE_UNKNOWN"])
    {
      v17 = 0;
    }

    else if ([v10 isEqualToString:@"AB"])
    {
      v17 = 1;
    }

    else if ([v10 isEqualToString:@"AA"])
    {
      v17 = 2;
    }

    else if ([v10 isEqualToString:@"AF"])
    {
      v17 = 3;
    }

    else if ([v10 isEqualToString:@"AK"])
    {
      v17 = 4;
    }

    else if ([v10 isEqualToString:@"SQ"])
    {
      v17 = 5;
    }

    else if ([v10 isEqualToString:@"AM"])
    {
      v17 = 6;
    }

    else if ([v10 isEqualToString:@"AR"])
    {
      v17 = 7;
    }

    else if ([v10 isEqualToString:@"AN"])
    {
      v17 = 8;
    }

    else if ([v10 isEqualToString:@"HY"])
    {
      v17 = 9;
    }

    else if ([v10 isEqualToString:@"AS"])
    {
      v17 = 10;
    }

    else if ([v10 isEqualToString:@"AV"])
    {
      v17 = 11;
    }

    else if ([v10 isEqualToString:@"AE"])
    {
      v17 = 12;
    }

    else if ([v10 isEqualToString:@"AY"])
    {
      v17 = 13;
    }

    else if ([v10 isEqualToString:@"AZ"])
    {
      v17 = 14;
    }

    else if ([v10 isEqualToString:@"BM"])
    {
      v17 = 15;
    }

    else if ([v10 isEqualToString:@"BA"])
    {
      v17 = 16;
    }

    else if ([v10 isEqualToString:@"EU"])
    {
      v17 = 17;
    }

    else if ([v10 isEqualToString:@"BE"])
    {
      v17 = 18;
    }

    else if ([v10 isEqualToString:@"BN"])
    {
      v17 = 19;
    }

    else if ([v10 isEqualToString:@"BI"])
    {
      v17 = 20;
    }

    else if ([v10 isEqualToString:@"BS"])
    {
      v17 = 21;
    }

    else if ([v10 isEqualToString:@"BR"])
    {
      v17 = 22;
    }

    else if ([v10 isEqualToString:@"BG"])
    {
      v17 = 23;
    }

    else if ([v10 isEqualToString:@"MY"])
    {
      v17 = 24;
    }

    else if ([v10 isEqualToString:@"CA"])
    {
      v17 = 25;
    }

    else if ([v10 isEqualToString:@"CH"])
    {
      v17 = 26;
    }

    else if ([v10 isEqualToString:@"CE"])
    {
      v17 = 27;
    }

    else if ([v10 isEqualToString:@"NY"])
    {
      v17 = 28;
    }

    else if ([v10 isEqualToString:@"ZH"])
    {
      v17 = 29;
    }

    else if ([v10 isEqualToString:@"CV"])
    {
      v17 = 30;
    }

    else if ([v10 isEqualToString:@"KW"])
    {
      v17 = 31;
    }

    else if ([v10 isEqualToString:@"CO"])
    {
      v17 = 32;
    }

    else if ([v10 isEqualToString:@"CR"])
    {
      v17 = 33;
    }

    else if ([v10 isEqualToString:@"HR"])
    {
      v17 = 34;
    }

    else if ([v10 isEqualToString:@"CS"])
    {
      v17 = 35;
    }

    else if ([v10 isEqualToString:@"DA"])
    {
      v17 = 36;
    }

    else if ([v10 isEqualToString:@"DV"])
    {
      v17 = 37;
    }

    else if ([v10 isEqualToString:@"NL"])
    {
      v17 = 38;
    }

    else if ([v10 isEqualToString:@"DZ"])
    {
      v17 = 39;
    }

    else if ([v10 isEqualToString:@"EN"])
    {
      v17 = 40;
    }

    else if ([v10 isEqualToString:@"EO"])
    {
      v17 = 41;
    }

    else if ([v10 isEqualToString:@"ET"])
    {
      v17 = 42;
    }

    else if ([v10 isEqualToString:@"EE"])
    {
      v17 = 43;
    }

    else if ([v10 isEqualToString:@"FO"])
    {
      v17 = 44;
    }

    else if ([v10 isEqualToString:@"FJ"])
    {
      v17 = 45;
    }

    else if ([v10 isEqualToString:@"FI"])
    {
      v17 = 46;
    }

    else if ([v10 isEqualToString:@"FR"])
    {
      v17 = 47;
    }

    else if ([v10 isEqualToString:@"FF"])
    {
      v17 = 48;
    }

    else if ([v10 isEqualToString:@"GL"])
    {
      v17 = 49;
    }

    else if ([v10 isEqualToString:@"KA"])
    {
      v17 = 50;
    }

    else if ([v10 isEqualToString:@"DE"])
    {
      v17 = 51;
    }

    else if ([v10 isEqualToString:@"EL"])
    {
      v17 = 52;
    }

    else if ([v10 isEqualToString:@"GN"])
    {
      v17 = 53;
    }

    else if ([v10 isEqualToString:@"GU"])
    {
      v17 = 54;
    }

    else if ([v10 isEqualToString:@"HT"])
    {
      v17 = 55;
    }

    else if ([v10 isEqualToString:@"HA"])
    {
      v17 = 56;
    }

    else if ([v10 isEqualToString:@"HE"])
    {
      v17 = 57;
    }

    else if ([v10 isEqualToString:@"HZ"])
    {
      v17 = 58;
    }

    else if ([v10 isEqualToString:@"HI"])
    {
      v17 = 59;
    }

    else if ([v10 isEqualToString:@"HO"])
    {
      v17 = 60;
    }

    else if ([v10 isEqualToString:@"HU"])
    {
      v17 = 61;
    }

    else if ([v10 isEqualToString:@"IA"])
    {
      v17 = 62;
    }

    else if ([v10 isEqualToString:@"ID"])
    {
      v17 = 63;
    }

    else if ([v10 isEqualToString:@"IE"])
    {
      v17 = 64;
    }

    else if ([v10 isEqualToString:@"GA"])
    {
      v17 = 65;
    }

    else if ([v10 isEqualToString:@"IG"])
    {
      v17 = 66;
    }

    else if ([v10 isEqualToString:@"IK"])
    {
      v17 = 67;
    }

    else if ([v10 isEqualToString:@"IO"])
    {
      v17 = 68;
    }

    else if ([v10 isEqualToString:@"IS"])
    {
      v17 = 69;
    }

    else if ([v10 isEqualToString:@"IT"])
    {
      v17 = 70;
    }

    else if ([v10 isEqualToString:@"IU"])
    {
      v17 = 71;
    }

    else if ([v10 isEqualToString:@"JA"])
    {
      v17 = 72;
    }

    else if ([v10 isEqualToString:@"JV"])
    {
      v17 = 73;
    }

    else if ([v10 isEqualToString:@"KL"])
    {
      v17 = 74;
    }

    else if ([v10 isEqualToString:@"KN"])
    {
      v17 = 75;
    }

    else if ([v10 isEqualToString:@"KR"])
    {
      v17 = 76;
    }

    else if ([v10 isEqualToString:@"KS"])
    {
      v17 = 77;
    }

    else if ([v10 isEqualToString:@"KK"])
    {
      v17 = 78;
    }

    else if ([v10 isEqualToString:@"KM"])
    {
      v17 = 79;
    }

    else if ([v10 isEqualToString:@"KI"])
    {
      v17 = 80;
    }

    else if ([v10 isEqualToString:@"RW"])
    {
      v17 = 81;
    }

    else if ([v10 isEqualToString:@"KY"])
    {
      v17 = 82;
    }

    else if ([v10 isEqualToString:@"KV"])
    {
      v17 = 83;
    }

    else if ([v10 isEqualToString:@"KG"])
    {
      v17 = 84;
    }

    else if ([v10 isEqualToString:@"KO"])
    {
      v17 = 85;
    }

    else if ([v10 isEqualToString:@"KU"])
    {
      v17 = 86;
    }

    else if ([v10 isEqualToString:@"KJ"])
    {
      v17 = 87;
    }

    else if ([v10 isEqualToString:@"LA"])
    {
      v17 = 88;
    }

    else if ([v10 isEqualToString:@"LB"])
    {
      v17 = 89;
    }

    else if ([v10 isEqualToString:@"LG"])
    {
      v17 = 90;
    }

    else if ([v10 isEqualToString:@"LI"])
    {
      v17 = 91;
    }

    else if ([v10 isEqualToString:@"LN"])
    {
      v17 = 92;
    }

    else if ([v10 isEqualToString:@"LO"])
    {
      v17 = 93;
    }

    else if ([v10 isEqualToString:@"LT"])
    {
      v17 = 94;
    }

    else if ([v10 isEqualToString:@"LU"])
    {
      v17 = 95;
    }

    else if ([v10 isEqualToString:@"LV"])
    {
      v17 = 96;
    }

    else if ([v10 isEqualToString:@"GV"])
    {
      v17 = 97;
    }

    else if ([v10 isEqualToString:@"MK"])
    {
      v17 = 98;
    }

    else if ([v10 isEqualToString:@"MG"])
    {
      v17 = 99;
    }

    else if ([v10 isEqualToString:@"MS"])
    {
      v17 = 100;
    }

    else if ([v10 isEqualToString:@"ML"])
    {
      v17 = 101;
    }

    else if ([v10 isEqualToString:@"MT"])
    {
      v17 = 102;
    }

    else if ([v10 isEqualToString:@"MI"])
    {
      v17 = 103;
    }

    else if ([v10 isEqualToString:@"MR"])
    {
      v17 = 104;
    }

    else if ([v10 isEqualToString:@"MH"])
    {
      v17 = 105;
    }

    else if ([v10 isEqualToString:@"MN"])
    {
      v17 = 106;
    }

    else if ([v10 isEqualToString:@"NA"])
    {
      v17 = 107;
    }

    else if ([v10 isEqualToString:@"NV"])
    {
      v17 = 108;
    }

    else if ([v10 isEqualToString:@"ND"])
    {
      v17 = 109;
    }

    else if ([v10 isEqualToString:@"NE"])
    {
      v17 = 110;
    }

    else if ([v10 isEqualToString:@"NG"])
    {
      v17 = 111;
    }

    else if ([v10 isEqualToString:@"NB"])
    {
      v17 = 112;
    }

    else if ([v10 isEqualToString:@"NN"])
    {
      v17 = 113;
    }

    else if ([v10 isEqualToString:@"NO"])
    {
      v17 = 114;
    }

    else if ([v10 isEqualToString:@"II"])
    {
      v17 = 115;
    }

    else if ([v10 isEqualToString:@"NR"])
    {
      v17 = 116;
    }

    else if ([v10 isEqualToString:@"OC"])
    {
      v17 = 117;
    }

    else if ([v10 isEqualToString:@"OJ"])
    {
      v17 = 118;
    }

    else if ([v10 isEqualToString:@"CU"])
    {
      v17 = 119;
    }

    else if ([v10 isEqualToString:@"OM"])
    {
      v17 = 120;
    }

    else if ([v10 isEqualToString:@"OR"])
    {
      v17 = 121;
    }

    else if ([v10 isEqualToString:@"OS"])
    {
      v17 = 122;
    }

    else if ([v10 isEqualToString:@"PA"])
    {
      v17 = 123;
    }

    else if ([v10 isEqualToString:@"PI"])
    {
      v17 = 124;
    }

    else if ([v10 isEqualToString:@"FA"])
    {
      v17 = 125;
    }

    else if ([v10 isEqualToString:@"PL"])
    {
      v17 = 126;
    }

    else if ([v10 isEqualToString:@"PS"])
    {
      v17 = 127;
    }

    else if ([v10 isEqualToString:@"PT"])
    {
      v17 = 128;
    }

    else if ([v10 isEqualToString:@"QU"])
    {
      v17 = 129;
    }

    else if ([v10 isEqualToString:@"RM"])
    {
      v17 = 130;
    }

    else if ([v10 isEqualToString:@"RN"])
    {
      v17 = 131;
    }

    else if ([v10 isEqualToString:@"RO"])
    {
      v17 = 132;
    }

    else if ([v10 isEqualToString:@"RU"])
    {
      v17 = 133;
    }

    else if ([v10 isEqualToString:@"SA"])
    {
      v17 = 134;
    }

    else if ([v10 isEqualToString:@"SC"])
    {
      v17 = 135;
    }

    else if ([v10 isEqualToString:@"SD"])
    {
      v17 = 136;
    }

    else if ([v10 isEqualToString:@"SE"])
    {
      v17 = 137;
    }

    else if ([v10 isEqualToString:@"SM"])
    {
      v17 = 138;
    }

    else if ([v10 isEqualToString:@"SG"])
    {
      v17 = 139;
    }

    else if ([v10 isEqualToString:@"SR"])
    {
      v17 = 140;
    }

    else if ([v10 isEqualToString:@"GD"])
    {
      v17 = 141;
    }

    else if ([v10 isEqualToString:@"SN"])
    {
      v17 = 142;
    }

    else if ([v10 isEqualToString:@"SI"])
    {
      v17 = 143;
    }

    else if ([v10 isEqualToString:@"SK"])
    {
      v17 = 144;
    }

    else if ([v10 isEqualToString:@"SL"])
    {
      v17 = 145;
    }

    else if ([v10 isEqualToString:@"SO"])
    {
      v17 = 146;
    }

    else if ([v10 isEqualToString:@"ST"])
    {
      v17 = 147;
    }

    else if ([v10 isEqualToString:@"ES"])
    {
      v17 = 148;
    }

    else if ([v10 isEqualToString:@"SU"])
    {
      v17 = 149;
    }

    else if ([v10 isEqualToString:@"SW"])
    {
      v17 = 150;
    }

    else if ([v10 isEqualToString:@"SS"])
    {
      v17 = 151;
    }

    else if ([v10 isEqualToString:@"SV"])
    {
      v17 = 152;
    }

    else if ([v10 isEqualToString:@"TA"])
    {
      v17 = 153;
    }

    else if ([v10 isEqualToString:@"TE"])
    {
      v17 = 154;
    }

    else if ([v10 isEqualToString:@"TG"])
    {
      v17 = 155;
    }

    else if ([v10 isEqualToString:@"TH"])
    {
      v17 = 156;
    }

    else if ([v10 isEqualToString:@"TI"])
    {
      v17 = 157;
    }

    else if ([v10 isEqualToString:@"BO"])
    {
      v17 = 158;
    }

    else if ([v10 isEqualToString:@"TK"])
    {
      v17 = 159;
    }

    else if ([v10 isEqualToString:@"TL"])
    {
      v17 = 160;
    }

    else if ([v10 isEqualToString:@"TN"])
    {
      v17 = 161;
    }

    else if ([v10 isEqualToString:@"TO"])
    {
      v17 = 162;
    }

    else if ([v10 isEqualToString:@"TR"])
    {
      v17 = 163;
    }

    else if ([v10 isEqualToString:@"TS"])
    {
      v17 = 164;
    }

    else if ([v10 isEqualToString:@"TT"])
    {
      v17 = 165;
    }

    else if ([v10 isEqualToString:@"TW"])
    {
      v17 = 166;
    }

    else if ([v10 isEqualToString:@"TY"])
    {
      v17 = 167;
    }

    else if ([v10 isEqualToString:@"UG"])
    {
      v17 = 168;
    }

    else if ([v10 isEqualToString:@"UK"])
    {
      v17 = 169;
    }

    else if ([v10 isEqualToString:@"UR"])
    {
      v17 = 170;
    }

    else if ([v10 isEqualToString:@"UZ"])
    {
      v17 = 171;
    }

    else if ([v10 isEqualToString:@"VE"])
    {
      v17 = 172;
    }

    else if ([v10 isEqualToString:@"VI"])
    {
      v17 = 173;
    }

    else if ([v10 isEqualToString:@"VO"])
    {
      v17 = 174;
    }

    else if ([v10 isEqualToString:@"WA"])
    {
      v17 = 175;
    }

    else if ([v10 isEqualToString:@"CY"])
    {
      v17 = 176;
    }

    else if ([v10 isEqualToString:@"WO"])
    {
      v17 = 177;
    }

    else if ([v10 isEqualToString:@"FY"])
    {
      v17 = 178;
    }

    else if ([v10 isEqualToString:@"XH"])
    {
      v17 = 179;
    }

    else if ([v10 isEqualToString:@"YI"])
    {
      v17 = 180;
    }

    else if ([v10 isEqualToString:@"YO"])
    {
      v17 = 181;
    }

    else if ([v10 isEqualToString:@"ZA"])
    {
      v17 = 182;
    }

    else if ([v10 isEqualToString:@"ZU"])
    {
      v17 = 183;
    }

    else
    {
      if (([v10 isEqualToString:@"WUU"] & 1) == 0)
      {
LABEL_1133:
        if ([v10 isEqualToString:@"YUE"])
        {
          v17 = 185;
        }

        else
        {
          v17 = 0;
        }

        goto LABEL_1136;
      }

      v17 = 184;
    }

LABEL_1136:

    v22 = 0;
    goto LABEL_1137;
  }

  v22 = 0;
  v17 = 0;
LABEL_1138:
  v30 = [objc_allocWithZone(MEMORY[0x277D5A900]) init];
  v31 = v30;
  [v31 setLanguageCode_];
  [v31 setCountryCode_];

  (*(v5 + 8))(v8, v4);
  return v30;
}