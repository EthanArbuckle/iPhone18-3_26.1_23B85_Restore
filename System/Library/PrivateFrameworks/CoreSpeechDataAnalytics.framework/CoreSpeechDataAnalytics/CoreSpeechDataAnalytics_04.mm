uint64_t sub_2479328C8()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 64);
  v8 = *v0;

  (*(v3 + 8))(v2, v4);
  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_247932A4C, 0, 0);
}

uint64_t sub_247932A4C()
{
  v122 = v0;
  v121[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2478E9620(v3, &qword_27EE57278, &unk_247950590);
    if (qword_27EE571C0 != -1)
    {
LABEL_57:
      swift_once();
    }

    v4 = *(v0 + 144);
    v5 = *(v0 + 152);
    v6 = *(v0 + 128);
    v7 = *(v0 + 136);
    v8 = sub_24794ED34();
    __swift_project_value_buffer(v8, qword_27EE58DF8);
    (*(v7 + 16))(v4, v5, v6);
    v9 = sub_24794ED14();
    v10 = sub_24794F164();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 144);
    v119 = *(v0 + 152);
    v14 = *(v0 + 128);
    v13 = *(v0 + 136);
    if (v11)
    {
      v116 = *(v0 + 192);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v121[0] = v16;
      *v15 = 136315138;
      sub_24793373C();
      v17 = sub_24794F4D4();
      v19 = v18;
      v20 = *(v13 + 8);
      v20(v12, v14);
      v21 = sub_247924380(v17, v19, v121);

      *(v15 + 4) = v21;
      _os_log_impl(&dword_2478E1000, v9, v10, "#EnrollmentRecordsGenerator: cannot donate audio file: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x24C1AF180](v16, -1, -1);
      MEMORY[0x24C1AF180](v15, -1, -1);

      v20(v119, v14);
    }

    else
    {

      v36 = *(v13 + 8);
      v36(v12, v14);
      v36(v119, v14);
    }

    v27 = *(v0 + 176);
    v37 = *(v0 + 184);
  }

  else
  {
    v22 = *(v0 + 176);
    v24 = *(v0 + 112);
    v23 = *(v0 + 120);
    v25 = *(v2 + 32);
    v25(v23, v3, v1);
    (*(v2 + 16))(v24, v23, v1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *(v0 + 176);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v27 = sub_24793AADC(0, v27[2] + 1, 1, *(v0 + 176));
    }

    v29 = v27[2];
    v28 = v27[3];
    if (v29 >= v28 >> 1)
    {
      v27 = sub_24793AADC(v28 > 1, v29 + 1, 1, v27);
    }

    v30 = *(v0 + 192);
    v32 = *(v0 + 104);
    v31 = *(v0 + 112);
    v33 = *(v0 + 96);
    v27[2] = v29 + 1;
    v25(v27 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v29, v31, v33);
    v34 = [v30 triggerPhrase];
    if (v34 == 2)
    {
      v120 = 0xE400000000000000;
      v35 = 1769105747;
    }

    else if (v34 == 1)
    {
      v120 = 0xE200000000000000;
      v35 = 21320;
    }

    else
    {
      v120 = 0xE700000000000000;
      v35 = 0x6E776F6E6B6E55;
    }

    v117 = v35;
    v38 = *(v0 + 184);
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v37 = *(v0 + 184);
    if ((v39 & 1) == 0)
    {
      v37 = sub_24793A9D0(0, *(v37 + 2) + 1, 1, *(v0 + 184));
    }

    v41 = *(v37 + 2);
    v40 = *(v37 + 3);
    if (v41 >= v40 >> 1)
    {
      v37 = sub_24793A9D0((v40 > 1), v41 + 1, 1, v37);
    }

    v42 = *(v0 + 152);
    v43 = *(v0 + 128);
    v44 = *(v0 + 136);
    v45 = *(v0 + 120);
    v47 = *(v0 + 96);
    v46 = *(v0 + 104);

    (*(v46 + 8))(v45, v47);
    (*(v44 + 8))(v42, v43);
    *(v37 + 2) = v41 + 1;
    v48 = &v37[16 * v41];
    *(v48 + 4) = v117;
    *(v48 + 5) = v120;
  }

  v49 = *(v0 + 200);
  if (v49 == *(v0 + 168))
  {
LABEL_22:
    v50 = *(v0 + 160);

    v52 = *(v0 + 144);
    v51 = *(v0 + 152);
    v54 = *(v0 + 112);
    v53 = *(v0 + 120);
    v56 = *(v0 + 80);
    v55 = *(v0 + 88);

    v57 = *(v0 + 8);
    v58 = *MEMORY[0x277D85DE8];

    return v57(v27, v37);
  }

  v60 = off_278EB5000;
  v61 = 0x27EE57000uLL;
  while (1)
  {
    *(v0 + 176) = v27;
    *(v0 + 184) = v37;
    v62 = *(v0 + 160);
    if ((v62 & 0xC000000000000001) != 0)
    {
      v63 = MEMORY[0x24C1AE890](v49);
    }

    else
    {
      if (v49 >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_56;
      }

      v63 = *(v62 + 8 * v49 + 32);
    }

    v64 = v63;
    *(v0 + 192) = v63;
    *(v0 + 200) = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v65 = [v63 v60[490]];
    if (!v65)
    {
      if (*(v61 + 448) != -1)
      {
        swift_once();
      }

      v86 = sub_24794ED34();
      __swift_project_value_buffer(v86, qword_27EE58DF8);
      v87 = sub_24794ED14();
      v88 = sub_24794F164();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        *v89 = 0;
        _os_log_impl(&dword_2478E1000, v87, v88, "#EnrollmentRecordsGenerator: cannot get audioUrl", v89, 2u);
        v90 = v89;
        v61 = 0x27EE57000;
        MEMORY[0x24C1AF180](v90, -1, -1);
      }

      goto LABEL_27;
    }

    v66 = *(v0 + 152);
    v67 = v65;
    sub_24794EA64();

    v68 = objc_allocWithZone(MEMORY[0x277CB8398]);
    v69 = sub_24794EA34();
    *(v0 + 16) = 0;
    v70 = [v68 initForReading:v69 commonFormat:3 interleaved:0 error:v0 + 16];

    v71 = *(v0 + 16);
    if (!v70)
    {
      v91 = v71;
      v92 = sub_24794E9D4();

      swift_willThrow();
      if (*(v61 + 448) != -1)
      {
        swift_once();
      }

      v93 = sub_24794ED34();
      __swift_project_value_buffer(v93, qword_27EE58DF8);
      v94 = v92;
      v95 = sub_24794ED14();
      v96 = sub_24794F164();

      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        *v97 = 138412290;
        v99 = v92;
        v100 = _swift_stdlib_bridgeErrorToNSError();
        *(v97 + 4) = v100;
        *v98 = v100;
        _os_log_impl(&dword_2478E1000, v95, v96, "#EnrollmentRecordsGenerator: error creating AVAudioFile: %@", v97, 0xCu);
        sub_2478E9620(v98, &qword_27EE57280, &unk_2479503C0);
        v101 = v98;
        v60 = off_278EB5000;
        MEMORY[0x24C1AF180](v101, -1, -1);
        v102 = v97;
        v61 = 0x27EE57000;
        MEMORY[0x24C1AF180](v102, -1, -1);
      }

      else
      {
      }

      goto LABEL_51;
    }

    v72 = v71;
    v73 = [v70 processingFormat];
    [v73 sampleRate];
    v75 = v74;

    if (v75 == 16000.0)
    {
      break;
    }

    if (*(v61 + 448) != -1)
    {
      swift_once();
    }

    v76 = sub_24794ED34();
    __swift_project_value_buffer(v76, qword_27EE58DF8);
    v77 = v70;
    v78 = sub_24794ED14();
    v79 = sub_24794F164();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      *v80 = 134217984;
      v81 = [v77 processingFormat];
      [v81 sampleRate];
      v83 = v82;

      v61 = 0x27EE57000;
      *(v80 + 4) = v83;
      _os_log_impl(&dword_2478E1000, v78, v79, "#EnrollmentRecordsGenerator: audio sampling rate: %f is not 16kHz, skipping utterance sampling", v80, 0xCu);
      v84 = v80;
      v60 = off_278EB5000;
      MEMORY[0x24C1AF180](v84, -1, -1);
      v85 = v64;
      v64 = v78;
    }

    else
    {
      v85 = v77;
      v77 = v78;
    }

LABEL_51:
    (*(*(v0 + 136) + 8))(*(v0 + 152), *(v0 + 128));
LABEL_27:
    v49 = *(v0 + 200);
    if (v49 == *(v0 + 168))
    {
      goto LABEL_22;
    }
  }

  v103 = *(v0 + 80);
  v105 = *(v0 + 48);
  v104 = *(v0 + 56);
  v106 = *(v0 + 40);

  v108 = *(v104 + 32);
  v107 = *(v104 + 40);

  sub_24794EC14();
  v118 = (*(v107 + 208) + **(v107 + 208));
  v109 = *(*(v107 + 208) + 4);
  v110 = swift_task_alloc();
  *(v0 + 208) = v110;
  *v110 = v0;
  v110[1] = sub_2479328C8;
  v111 = *(v0 + 152);
  v113 = *(v0 + 80);
  v112 = *(v0 + 88);
  v114 = *(v0 + 32);
  v115 = *MEMORY[0x277D85DE8];

  return v118(v112, v114, v111, v113, v108, v107);
}

uint64_t sub_247933544()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics26EnrollmentRecordsGenerator_currentDate;
  v4 = sub_24794EBB4();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EnrollmentRecordsGenerator()
{
  result = qword_27EE57650;
  if (!qword_27EE57650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_247933644()
{
  result = sub_24794EBB4();
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

unint64_t sub_2479336F0()
{
  result = qword_27EE572E0;
  if (!qword_27EE572E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE572E0);
  }

  return result;
}

unint64_t sub_24793373C()
{
  result = qword_27EE57660;
  if (!qword_27EE57660)
  {
    sub_24794EA84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE57660);
  }

  return result;
}

_OWORD *sub_247933794(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2479337A4()
{
  v1[12] = v0;
  v2 = sub_24794EC04();
  v1[13] = v2;
  v3 = *(v2 - 8);
  v1[14] = v3;
  v4 = *(v3 + 64) + 15;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v5 = sub_24794EC24();
  v1[17] = v5;
  v6 = *(v5 - 8);
  v1[18] = v6;
  v7 = *(v6 + 64) + 15;
  v1[19] = swift_task_alloc();
  v8 = sub_24794EBB4();
  v1[20] = v8;
  v9 = *(v8 - 8);
  v1[21] = v9;
  v10 = *(v9 + 64) + 15;
  v1[22] = swift_task_alloc();
  v11 = sub_24794EA84();
  v1[23] = v11;
  v12 = *(v11 - 8);
  v1[24] = v12;
  v13 = *(v12 + 64) + 15;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57278, &unk_247950590) - 8) + 64) + 15;
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_247933A1C, 0, 0);
}

uint64_t sub_247933A1C()
{
  v1 = v0[34];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[12];
  v5 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics23EnrollmentUtteranceData_donationId;
  v0[35] = OBJC_IVAR____TtC23CoreSpeechDataAnalytics23EnrollmentUtteranceData_donationId;
  swift_beginAccess();
  sub_2478E9680(v4 + v5, v1, &qword_27EE57278, &unk_247950590);
  v6 = *(v3 + 48);
  v0[36] = v6;
  v0[37] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  LODWORD(v2) = v6(v1, 1, v2);
  sub_2478E9620(v1, &qword_27EE57278, &unk_247950590);
  if (v2 == 1)
  {
    v7 = *(v0[12] + OBJC_IVAR____TtC23CoreSpeechDataAnalytics23EnrollmentUtteranceData_enrollmentUtterance);
    v0[38] = v7;
    v8 = [v7 enrollmentUtteranceUrl];
    if (v8)
    {
      v9 = v0[29];
      v10 = v0[30];
      v11 = v0[23];
      v12 = v0[24];
      v13 = v0[12];
      v14 = v8;
      sub_24794EA64();

      v15 = *(v12 + 32);
      v0[39] = v15;
      v0[40] = (v12 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v15(v10, v9, v11);
      v17 = *(v13 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics23EnrollmentUtteranceData_samplingUtils);
      v16 = *(v13 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics23EnrollmentUtteranceData_samplingUtils + 8);
      (*(v16 + 248))(v10, v17, v16);
      v49 = v0[22];
      v50 = v0[19];
      v51 = v0[12];
      sub_24794EBA4();
      v52 = v51 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics23EnrollmentUtteranceData_locale;
      v53 = *(v51 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics23EnrollmentUtteranceData_locale);
      v54 = *(v52 + 8);

      sub_24794EC14();
      v55 = *(v16 + 208);
      v70 = (v55 + *v55);
      v56 = v55[1];
      v57 = swift_task_alloc();
      v0[41] = v57;
      *v57 = v0;
      v57[1] = sub_247934164;
      v58 = v0[33];
      v59 = v0[30];
      v60 = v0[22];
      v61 = v0[19];

      return v70(v58, v60, v59, v61, v17, v16);
    }

    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v33 = sub_24794ED34();
    __swift_project_value_buffer(v33, qword_27EE58DF8);
    v34 = sub_24794ED14();
    v35 = sub_24794F164();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_2478E1000, v34, v35, "#EnrollmentUtterance: Unable to generate donation ID - missing audioFileURL", v36, 2u);
      MEMORY[0x24C1AF180](v36, -1, -1);
    }

    sub_24791EF84();
    swift_allocError();
    *v37 = 0x8000000000000008;
    swift_willThrow();
    v39 = v0[33];
    v38 = v0[34];
    v41 = v0[31];
    v40 = v0[32];
    v43 = v0[29];
    v42 = v0[30];
    v45 = v0[27];
    v44 = v0[28];
    v46 = v0[25];
    v47 = v0[26];
    v62 = v0[22];
    v64 = v0[19];
    v66 = v0[16];
    v68 = v0[15];

    v32 = v0[1];
  }

  else
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
      _os_log_impl(&dword_2478E1000, v19, v20, "#EnrollmentUtterance: Donation ID already exists, skipping generation", v21, 2u);
      MEMORY[0x24C1AF180](v21, -1, -1);
    }

    v23 = v0[33];
    v22 = v0[34];
    v25 = v0[31];
    v24 = v0[32];
    v27 = v0[29];
    v26 = v0[30];
    v29 = v0[27];
    v28 = v0[28];
    v31 = v0[25];
    v30 = v0[26];
    v63 = v0[22];
    v65 = v0[19];
    v67 = v0[16];
    v69 = v0[15];

    v32 = v0[1];
  }

  return v32();
}

uint64_t sub_247934164()
{
  v1 = *(*v0 + 328);
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 168);
  v4 = *(*v0 + 160);
  v5 = *(*v0 + 152);
  v6 = *(*v0 + 144);
  v7 = *(*v0 + 136);
  v9 = *v0;

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_247934318, 0, 0);
}

uint64_t sub_247934318()
{
  v112 = v0;
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[32];
  v4 = v0[13];
  sub_2478E9680(v0[33], v3, &qword_27EE57278, &unk_247950590);
  v5 = v2(v3, 1, v4);
  v6 = v0[32];
  if (v5 != 1)
  {
    v106 = *(v0[14] + 32);
    v106(v0[16], v0[32], v0[13]);
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v26 = v0[15];
    v27 = v0[16];
    v28 = v0[13];
    v29 = v0[14];
    v30 = v0[12];
    v31 = sub_24794ED34();
    __swift_project_value_buffer(v31, qword_27EE58DF8);
    (*(v29 + 16))(v26, v27, v28);

    v32 = sub_24794ED14();
    v33 = sub_24794F154();
    if (os_log_type_enabled(v32, v33))
    {
      v102 = v33;
      v34 = v0[38];
      v36 = v0[14];
      v35 = v0[15];
      v37 = v0[12];
      v38 = v0[13];
      v39 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v111[0] = v99;
      *v39 = 136315394;
      sub_2479359D8(&qword_27EE57250, MEMORY[0x277CC95F0]);
      v40 = sub_24794F4D4();
      v42 = v41;
      (*(v36 + 8))(v35, v38);
      v43 = sub_247924380(v40, v42, v111);

      *(v39 + 4) = v43;
      *(v39 + 12) = 2080;
      v44 = [v34 enrollmentUtteranceUrl];

      if (!v44)
      {
LABEL_20:
        __break(1u);
        return result;
      }

      v45 = v0[39];
      v46 = v0[40];
      v96 = v0[33];
      v97 = v0[30];
      v47 = v0[27];
      v48 = v0[28];
      v49 = v0[23];
      v50 = v0[24];
      sub_24794EA64();

      v45(v48, v47, v49);
      sub_2479359D8(&qword_27EE57660, MEMORY[0x277CC9260]);
      v51 = sub_24794F4D4();
      v53 = v52;
      v54 = *(v50 + 8);
      v54(v48, v49);
      v55 = sub_247924380(v51, v53, v111);

      *(v39 + 14) = v55;
      _os_log_impl(&dword_2478E1000, v32, v102, "#EnrollmentUtterance: generated donationId: %s for %s", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1AF180](v99, -1, -1);
      MEMORY[0x24C1AF180](v39, -1, -1);

      sub_2478E9620(v96, &qword_27EE57278, &unk_247950590);
      v54(v97, v49);
    }

    else
    {
      v73 = v0[33];
      v74 = v0[30];
      v75 = v0[23];
      v76 = v0[24];
      v78 = v0[14];
      v77 = v0[15];
      v80 = v0[12];
      v79 = v0[13];

      (*(v78 + 8))(v77, v79);
      sub_2478E9620(v73, &qword_27EE57278, &unk_247950590);
      (*(v76 + 8))(v74, v75);
    }

    v81 = v0[35];
    v82 = v0[31];
    v83 = v0[13];
    v84 = v0[14];
    v85 = v0[12];
    v106(v82, v0[16], v83);
    (*(v84 + 56))(v82, 0, 1, v83);
    swift_beginAccess();
    sub_247904DD0(v82, v85 + v81);
    swift_endAccess();
    v87 = v0[33];
    v86 = v0[34];
    v89 = v0[31];
    v88 = v0[32];
    v91 = v0[29];
    v90 = v0[30];
    v93 = v0[27];
    v92 = v0[28];
    v95 = v0[25];
    v94 = v0[26];
    v101 = v0[22];
    v104 = v0[19];
    v108 = v0[16];
    v110 = v0[15];

    v72 = v0[1];
    goto LABEL_16;
  }

  sub_2478E9620(v0[32], &qword_27EE57278, &unk_247950590);
  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v7 = v0[12];
  v8 = sub_24794ED34();
  __swift_project_value_buffer(v8, qword_27EE58DF8);

  v9 = sub_24794ED14();
  v10 = sub_24794F164();
  if (!os_log_type_enabled(v9, v10))
  {
    v56 = v0[12];

    goto LABEL_13;
  }

  v109 = v10;
  v11 = v0[38];
  v12 = v0[12];
  v13 = swift_slowAlloc();
  v105 = swift_slowAlloc();
  v111[0] = v105;
  *v13 = 136315138;
  v14 = [v11 enrollmentUtteranceUrl];

  if (!v14)
  {
    __break(1u);
    goto LABEL_20;
  }

  v16 = v0[39];
  v17 = v0[40];
  v19 = v0[25];
  v18 = v0[26];
  v21 = v0[23];
  v20 = v0[24];
  sub_24794EA64();

  v16(v18, v19, v21);
  sub_2479359D8(&qword_27EE57660, MEMORY[0x277CC9260]);
  v22 = sub_24794F4D4();
  v24 = v23;
  (*(v20 + 8))(v18, v21);
  v25 = sub_247924380(v22, v24, v111);

  *(v13 + 4) = v25;
  _os_log_impl(&dword_2478E1000, v9, v109, "#EnrollmentUtterance: DonationId cannot be generated from donation API for utterance: %s", v13, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v105);
  MEMORY[0x24C1AF180](v105, -1, -1);
  MEMORY[0x24C1AF180](v13, -1, -1);

LABEL_13:
  v57 = v0[33];
  v58 = v0[30];
  v60 = v0[23];
  v59 = v0[24];
  sub_24791EF84();
  swift_allocError();
  *v61 = 0x8000000000000010;
  swift_willThrow();
  sub_2478E9620(v57, &qword_27EE57278, &unk_247950590);
  (*(v59 + 8))(v58, v60);
  v63 = v0[33];
  v62 = v0[34];
  v65 = v0[31];
  v64 = v0[32];
  v67 = v0[29];
  v66 = v0[30];
  v69 = v0[27];
  v68 = v0[28];
  v70 = v0[25];
  v71 = v0[26];
  v98 = v0[22];
  v100 = v0[19];
  v103 = v0[16];
  v107 = v0[15];

  v72 = v0[1];
LABEL_16:

  return v72();
}

uint64_t sub_247934B70()
{
  v2 = sub_24794EA84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v32 - v8;
  v10 = (v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics23EnrollmentUtteranceData_dedupeHashBytes);
  if (*(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics23EnrollmentUtteranceData_dedupeHashBytes + 8) >> 60 != 15)
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
      _os_log_impl(&dword_2478E1000, v22, v23, "Dedupe hash bytes already exist, skipping generation", v24, 2u);
      MEMORY[0x24C1AF180](v24, -1, -1);
    }

    sub_24791EF84();
    swift_allocError();
    v26 = 0x8000000000000000;
    goto LABEL_11;
  }

  v11 = [*(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics23EnrollmentUtteranceData_enrollmentUtterance) enrollmentUtteranceUrl];
  if (!v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57698, &qword_247951C98);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_247951560;
    *(v27 + 56) = MEMORY[0x277D837D0];
    *(v27 + 32) = 0xD00000000000003ELL;
    *(v27 + 40) = 0x8000000247957280;
    sub_24794F574();

    sub_24791EF84();
    swift_allocError();
    v26 = 0x8000000000000008;
LABEL_11:
    *v25 = v26;
    return swift_willThrow();
  }

  v12 = v11;
  sub_24794EA64();

  (*(v3 + 32))(v9, v7, v2);
  v13 = sub_247936030(v9);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57698, &qword_247951C98);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_247951560;
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_24794F344();

    v33 = 0xD000000000000024;
    v34 = 0x80000002479572C0;
    swift_getErrorValue();
    v16 = sub_24794F524();
    MEMORY[0x24C1AE4C0](v16);

    v17 = v33;
    v18 = v34;
    *(v15 + 56) = MEMORY[0x277D837D0];
    *(v15 + 32) = v17;
    *(v15 + 40) = v18;
    sub_24794F574();

    sub_24791EF84();
    swift_allocError();
    *v19 = v1 | 0x4000000000000000;
    swift_willThrow();
    return (*(v3 + 8))(v9, v2);
  }

  else
  {
    v28 = v13;
    v29 = v14;
    (*(v3 + 8))(v9, v2);
    v30 = *v10;
    v31 = v10[1];
    *v10 = v28;
    v10[1] = v29;
    return sub_24792DDA8(v30, v31);
  }
}

uint64_t sub_247934FA4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v70 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v65 = &v61 - v6;
  MEMORY[0x28223BE20](v5);
  v69 = &v61 - v7;
  v8 = sub_24794EC04();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v66 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v67 = &v61 - v13;
  v14 = sub_24794EA84();
  v63 = *(v14 - 8);
  v64 = v14;
  v15 = *(v63 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v61 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v62 = &v61 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57278, &unk_247950590);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v61 - v24;
  v26 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics23EnrollmentUtteranceData_donationId;
  swift_beginAccess();
  sub_2478E9680(v0 + v26, v25, &qword_27EE57278, &unk_247950590);
  v68 = v9;
  v27 = *(v9 + 48);
  v28 = v27(v25, 1, v8);
  sub_2478E9620(v25, &qword_27EE57278, &unk_247950590);
  if (v28 == 1)
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v29 = sub_24794ED34();
    __swift_project_value_buffer(v29, qword_27EE58DF8);

    v30 = sub_24794ED14();
    v31 = sub_24794F164();
    if (!os_log_type_enabled(v30, v31))
    {

      goto LABEL_14;
    }

    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v71 = v33;
    *v32 = 136315138;
    v34 = [*(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics23EnrollmentUtteranceData_enrollmentUtterance) enrollmentUtteranceUrl];

    if (v34)
    {
      v36 = v61;
      sub_24794EA64();

      v38 = v62;
      v37 = v63;
      v39 = v64;
      (*(v63 + 32))(v62, v36, v64);
      sub_2479359D8(&qword_27EE57660, MEMORY[0x277CC9260]);
      v40 = sub_24794F4D4();
      v42 = v41;
      (*(v37 + 8))(v38, v39);
      v43 = sub_247924380(v40, v42, &v71);

      *(v32 + 4) = v43;
      _os_log_impl(&dword_2478E1000, v30, v31, "#EnrollmentUtterance: donationId wasn't generated for %s, aborting schema conversion", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x24C1AF180](v33, -1, -1);
LABEL_12:
      MEMORY[0x24C1AF180](v32, -1, -1);
LABEL_14:

      return 0;
    }

    __break(1u);
  }

  else
  {
    sub_2478E9680(v0 + v26, v23, &qword_27EE57278, &unk_247950590);
    if (v27(v23, 1, v8) == 1)
    {
      sub_2478E9620(v23, &qword_27EE57278, &unk_247950590);
      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v44 = sub_24794ED34();
      __swift_project_value_buffer(v44, qword_27EE58DF8);
      v30 = sub_24794ED14();
      v45 = sub_24794F164();
      if (!os_log_type_enabled(v30, v45))
      {
        goto LABEL_14;
      }

      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_2478E1000, v30, v45, "#EnrollmentUtterance: Cannot get donationId for schema conversion after generation attempt", v32, 2u);
      goto LABEL_12;
    }

    v46 = v8;
    v47 = v67;
    v48 = v68;
    (*(v68 + 32))(v67, v23, v8);
    v49 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics23EnrollmentUtteranceData_enrollmentUtterance);
    v50 = [v49 approximateGenerationDate];
    if (v50)
    {
      v51 = v65;
      v52 = v50;
      sub_24794EB94();

      v53 = 0;
      v54 = v69;
    }

    else
    {
      v53 = 1;
      v54 = v69;
      v51 = v65;
    }

    v55 = sub_24794EBB4();
    (*(*(v55 - 8) + 56))(v51, v53, 1, v55);
    sub_24793591C(v51, v54);
    v56 = [v49 triggerPhrase];
    if (v56 == 2)
    {
      v69 = 0xE400000000000000;
      v57 = 1769105747;
    }

    else if (v56 == 1)
    {
      v69 = 0xE200000000000000;
      v57 = 21320;
    }

    else
    {
      v69 = 0xE700000000000000;
      v57 = 0x6E776F6E6B6E55;
    }

    sub_24793598C();
    v58 = v66;
    (*(v48 + 16))(v66, v47, v46);
    v59 = v70;
    sub_2478E9680(v54, v70, &qword_27EE572D0, &unk_2479504E0);
    v60 = sub_24791A3D8(v58, v57, v69, v59);
    sub_2478E9620(v54, &qword_27EE572D0, &unk_2479504E0);
    (*(v48 + 8))(v47, v46);
    return v60;
  }

  return result;
}

uint64_t sub_247935760()
{
  sub_2478E9620(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics23EnrollmentUtteranceData_donationId, &qword_27EE57278, &unk_247950590);
  sub_24792DDA8(*(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics23EnrollmentUtteranceData_dedupeHashBytes), *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics23EnrollmentUtteranceData_dedupeHashBytes + 8));

  v1 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics23EnrollmentUtteranceData_locale + 8);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EnrollmentUtteranceData()
{
  result = qword_27EE57688;
  if (!qword_27EE57688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_247935860()
{
  sub_247904628();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24793591C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24793598C()
{
  result = qword_27EE57640;
  if (!qword_27EE57640)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE57640);
  }

  return result;
}

uint64_t sub_2479359D8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t get_enum_tag_for_layout_string_23CoreSpeechDataAnalytics24EnrollmentUtteranceErrorO(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_247935A48(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_247935AA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_247935B04(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

id sub_247935B40(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = sub_24794EA34();
  v12[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForReadingFromURL:v2 error:v12];

  v4 = v12[0];
  if (v3)
  {
    v5 = sub_24794EA84();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v12[0];
    sub_24794E9D4();

    swift_willThrow();
    v9 = sub_24794EA84();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v3;
}

_BYTE *sub_247935CBC@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_2479366F8(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_2479367B0(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_24793682C(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_247935D50(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      sub_24794EE64();
      sub_2479366B0(&qword_27EE57600, MEMORY[0x277CC5540]);
      result = sub_24794EE04();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_247935F30(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_247935F30(uint64_t a1, uint64_t a2)
{
  result = sub_24794E8C4();
  if (!result || (result = sub_24794E8F4(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_24794E8E4();
      sub_24794EE64();
      sub_2479366B0(&qword_27EE57600, MEMORY[0x277CC5540]);
      return sub_24794EE04();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_247936010(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

void *sub_247936030(uint64_t a1)
{
  v49 = *MEMORY[0x277D85DE8];
  v2 = sub_24794EE34();
  v39 = *(v2 - 8);
  v3 = *(v39 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24794EE64();
  v41 = *(v6 - 8);
  v7 = *(v41 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24794EA84();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247936610();
  (*(v11 + 16))(v14, a1, v10);
  v15 = v42;
  v16 = sub_247935B40(v14);
  v17 = v15;
  if (!v15)
  {
    v19 = v16;
    v37 = 0;
    v38 = v2;
    sub_24794EE54();
    v20 = v39;
    v21 = v6;
    v22 = v41;
    v23 = v9;
    v42 = v19;
    v40 = v5;
    while (1)
    {
      while (1)
      {
        v24 = [v19 readDataOfLength_];
        v25 = sub_24794EB04();
        v27 = v26;

        v28 = v27 >> 62;
        if ((v27 >> 62) <= 1)
        {
          break;
        }

        if (v28 != 2 || *(v25 + 16) == *(v25 + 24))
        {
LABEL_22:
          sub_24791EFD8(v25, v27);
          sub_24794EE44();
          v33 = v38;
          v47 = v38;
          v48 = sub_2479366B0(&qword_27EE57608, MEMORY[0x277CC5290]);
          v34 = __swift_allocate_boxed_opaque_existential_1(&v44);
          (*(v20 + 16))(v34, v5, v33);
          __swift_project_boxed_opaque_existential_1(&v44, v47);
          sub_24794E9B4();
          (*(v20 + 8))(v5, v33);
          v17 = v43;
          __swift_destroy_boxed_opaque_existential_0(&v44);
          (*(v22 + 8))(v23, v21);
          [v19 closeFile];

          goto LABEL_23;
        }

LABEL_13:
        v29 = v21;
        v30 = v20;
        if (v28 == 2)
        {
          v32 = *(v25 + 16);
          v31 = *(v25 + 24);

          if (sub_24794E8C4() && __OFSUB__(v32, sub_24794E8F4()))
          {
            goto LABEL_26;
          }

          if (__OFSUB__(v31, v32))
          {
            goto LABEL_25;
          }
        }

        else
        {
          if (v25 >> 32 < v25)
          {
            __break(1u);
LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
LABEL_27:
            __break(1u);
          }

          if (sub_24794E8C4() && __OFSUB__(v25, sub_24794E8F4()))
          {
            goto LABEL_27;
          }
        }

        sub_24794E8E4();
        sub_2479366B0(&qword_27EE57600, MEMORY[0x277CC5540]);
        v21 = v29;
        sub_24794EE04();
        sub_24791EFD8(v25, v27);
        sub_24791EFD8(v25, v27);
        v20 = v30;
        v5 = v40;
        v22 = v41;
        v19 = v42;
      }

      if (v28)
      {
        if (v25 == v25 >> 32)
        {
          goto LABEL_22;
        }

        goto LABEL_13;
      }

      if ((v27 & 0xFF000000000000) == 0)
      {
        goto LABEL_22;
      }

      v44 = v25;
      v45 = v27;
      v46 = WORD2(v27);
      sub_2479366B0(&qword_27EE57600, MEMORY[0x277CC5540]);
      sub_24794EE04();
      v19 = v42;
      sub_24791EFD8(v25, v27);
      sub_24791EFD8(v25, v27);
    }
  }

  sub_24793665C();
  swift_allocError();
  *v18 = v15;
  swift_willThrow();
LABEL_23:
  v35 = *MEMORY[0x277D85DE8];
  return v17;
}

unint64_t sub_247936610()
{
  result = qword_27EE576A0;
  if (!qword_27EE576A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE576A0);
  }

  return result;
}

unint64_t sub_24793665C()
{
  result = qword_27EE576A8;
  if (!qword_27EE576A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE576A8);
  }

  return result;
}

uint64_t sub_2479366B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2479366F8(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2479367B0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_24794E904();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_24794E8B4();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_24794EAB4();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_24793682C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_24794E904();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_24794E8B4();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_2479368B0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_247936900(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_247936954(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_24793696C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

void sub_24793699C(char *a1@<X8>)
{
  v28[3] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_self();
  v3 = sub_24794EEF4();
  v4 = [v2 getSiriLanguageWithFallback_];

  v5 = [objc_opt_self() sharedManager];
  if (!v5)
  {

    __break(1u);
  }

  v6 = v5;
  v28[0] = 0;
  v7 = [v5 getEnrollmentSelectionStatusWithLocale:v4 error:v28];

  v8 = v28[0];
  if (v28[0])
  {
    v9 = qword_27EE571C0;
    v10 = v28[0];
    if (v9 != -1)
    {
      swift_once();
    }

    v11 = sub_24794ED34();
    __swift_project_value_buffer(v11, qword_27EE58DF8);
    v12 = sub_24794ED14();
    v13 = sub_24794F154();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      *(v14 + 4) = v10;
      *v15 = v8;
      v16 = v10;
      _os_log_impl(&dword_2478E1000, v12, v13, "#Utils: Cannot get enrollment status with error: %@", v14, 0xCu);
      sub_2478E9620(v15, &qword_27EE57280, &unk_2479503C0);
      MEMORY[0x24C1AF180](v15, -1, -1);
      MEMORY[0x24C1AF180](v14, -1, -1);
    }

    v17 = 3;
  }

  else
  {
    v27 = 3;
    if (v7)
    {
      if (v7 == 2)
      {
        v27 = 2;
      }

      else if (v7 == 1)
      {
        v27 = 1;
      }
    }

    else
    {
      v27 = 0;
    }

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
      v22 = swift_slowAlloc();
      v28[0] = v22;
      *v21 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE576B0, &qword_247951DC8);
      v23 = sub_24794EF14();
      v25 = sub_247924380(v23, v24, v28);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_2478E1000, v19, v20, "#Utils: sampling selection status from legacy: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x24C1AF180](v22, -1, -1);
      MEMORY[0x24C1AF180](v21, -1, -1);
    }

    swift_beginAccess();
    v17 = v27;
  }

  *a1 = v17;
  v26 = *MEMORY[0x277D85DE8];
}

uint64_t sub_247936D44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v78 = a3;
  v5 = sub_24794ED04();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24794EBB4();
  v80 = *(v10 - 8);
  v11 = *(v80 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v72 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v69 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v74 = &v69 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v69 - v24;
  if (qword_27EE571E0 != -1)
  {
    v68 = v23;
    swift_once();
    v23 = v68;
  }

  v26 = qword_27EE58E58;
  if (qword_27EE58E58)
  {
    v70 = v20;
    v71 = v23;
    *&v83[0] = a1;
    *(&v83[0] + 1) = a2;

    v27 = v26;
    MEMORY[0x24C1AE4C0](45, 0xE100000000000000);

    MEMORY[0x24C1AE4C0](0x6F697463656C6553, 0xED0000657461446ELL);

    v28 = v83[0];
    v75 = *(v80 + 56);
    v75(v25, 1, 1, v10);
    v76 = v28 >> 64;
    v73 = v28;
    v29 = sub_24794EEF4();
    v77 = v27;
    v30 = [v27 stringForKey_];

    if (v30)
    {
      v31 = sub_24794EF04();
      v79 = v32;
    }

    else
    {
      v31 = 0;
      v79 = 0xE000000000000000;
    }

    v40 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v41 = sub_24794EEF4();
    [v40 setDateFormat_];

    sub_24794ECF4();
    v42 = sub_24794ECE4();
    (*(v6 + 8))(v9, v5);
    [v40 setTimeZone_];

    v43 = sub_24794EEF4();
    v44 = [v40 dateFromString_];

    v45 = v31;
    if (v44)
    {
      sub_24794EB94();

      sub_2478E9620(v25, &qword_27EE572D0, &unk_2479504E0);
      (*(v80 + 32))(v25, v15, v10);
      v75(v25, 0, 1, v10);
      v47 = v76;
      v46 = v77;
LABEL_24:
      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v55 = sub_24794ED34();
      __swift_project_value_buffer(v55, qword_27EE58DF8);

      v56 = sub_24794ED14();
      v57 = sub_24794F154();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = v79;
        v60 = v58;
        v61 = swift_slowAlloc();
        *&v83[0] = v61;
        *v60 = 136315650;
        swift_beginAccess();
        sub_2478EE3C8(v25, v70);
        v62 = sub_24794EF14();
        v64 = v45;
        v65 = sub_247924380(v62, v63, v83);

        *(v60 + 4) = v65;
        *(v60 + 12) = 2080;
        v66 = sub_247924380(v73, v47, v83);

        *(v60 + 14) = v66;
        *(v60 + 22) = 2080;
        v67 = sub_247924380(v64, v59, v83);

        *(v60 + 24) = v67;
        _os_log_impl(&dword_2478E1000, v56, v57, "#Utils: get legacy selectionStartDate: %s with key: %s with dateStr: %s", v60, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C1AF180](v61, -1, -1);
        MEMORY[0x24C1AF180](v60, -1, -1);
      }

      else
      {
      }

      swift_beginAccess();
      sub_2478EE3C8(v25, v78);
      return sub_2478E9620(v25, &qword_27EE572D0, &unk_2479504E0);
    }

    v47 = v76;
    v48 = sub_24794EEF4();
    v46 = v77;
    v49 = [v77 objectForKey_];

    if (v49)
    {
      sub_24794F284();
      swift_unknownObjectRelease();
    }

    else
    {
      v81 = 0u;
      v82 = 0u;
    }

    v50 = v74;
    v51 = v75;
    v83[0] = v81;
    v83[1] = v82;
    if (*(&v82 + 1))
    {
      v52 = swift_dynamicCast();
      v51(v50, v52 ^ 1u, 1, v10);
      if ((*(v80 + 48))(v50, 1, v10) != 1)
      {
        v53 = *(v80 + 32);
        v80 += 32;
        v54 = v72;
        v53(v72, v50, v10);
        sub_2478E9620(v25, &qword_27EE572D0, &unk_2479504E0);
        v53(v25, v54, v10);
        v51(v25, 0, 1, v10);
        goto LABEL_24;
      }
    }

    else
    {
      sub_2478E9620(v83, &qword_27EE57348, &unk_2479521B0);
      v51(v50, 1, 1, v10);
    }

    sub_2478E9620(v50, &qword_27EE572D0, &unk_2479504E0);
    goto LABEL_24;
  }

  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v33 = sub_24794ED34();
  __swift_project_value_buffer(v33, qword_27EE58DF8);
  v34 = sub_24794ED14();
  v35 = sub_24794F154();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_2478E1000, v34, v35, "#Utils: Cannot get defaults", v36, 2u);
    MEMORY[0x24C1AF180](v36, -1, -1);
  }

  v37 = *(v80 + 56);
  v38 = v78;

  return v37(v38, 1, 1, v10);
}

uint64_t sub_247937684@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57278, &unk_247950590);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v52 - v8;
  v10 = sub_24794EC04();
  v55 = *(v10 - 8);
  v11 = *(v55 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EE571E0 != -1)
  {
    swift_once();
  }

  v14 = qword_27EE58E58;
  if (qword_27EE58E58)
  {
    v56 = a1;
    v57 = a2;

    v15 = v14;
    MEMORY[0x24C1AE4C0](0xD000000000000014, 0x8000000247957360);
    v17 = v56;
    v16 = v57;
    v18 = sub_24794EEF4();
    v19 = [v15 stringForKey_];

    if (v19)
    {

      v20 = sub_24794EF04();
      v22 = v21;

      sub_24794EBC4();
      if ((*(v55 + 48))(v9, 1, v10) == 1)
      {
        sub_2478E9620(v9, &qword_27EE57278, &unk_247950590);
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
          v27 = swift_slowAlloc();
          v56 = v27;
          *v26 = 136315138;
          v28 = sub_247924380(v20, v22, &v56);

          *(v26 + 4) = v28;
          _os_log_impl(&dword_2478E1000, v24, v25, "#Utils: Cannot get userSamplingIdUUID from %s", v26, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v27);
          MEMORY[0x24C1AF180](v27, -1, -1);
          MEMORY[0x24C1AF180](v26, -1, -1);
        }

        else
        {
        }

        return (*(v55 + 56))(a3, 1, 1, v10);
      }

      else
      {
        v39 = *(v55 + 32);
        v39(v13, v9, v10);
        if (qword_27EE571C0 != -1)
        {
          swift_once();
        }

        v40 = sub_24794ED34();
        __swift_project_value_buffer(v40, qword_27EE58DF8);

        v41 = sub_24794ED14();
        v42 = sub_24794F154();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v53 = v39;
          v44 = v43;
          v45 = swift_slowAlloc();
          v54 = a3;
          v46 = v45;
          v56 = v45;
          *v44 = 136315138;
          v47 = sub_247924380(v20, v22, &v56);

          *(v44 + 4) = v47;
          _os_log_impl(&dword_2478E1000, v41, v42, "#Utils: get userSamplingIdUUID: %s", v44, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v46);
          v48 = v46;
          a3 = v54;
          MEMORY[0x24C1AF180](v48, -1, -1);
          v49 = v44;
          v39 = v53;
          MEMORY[0x24C1AF180](v49, -1, -1);
        }

        else
        {
        }

        v39(a3, v13, v10);
        return (*(v55 + 56))(a3, 0, 1, v10);
      }
    }

    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v33 = sub_24794ED34();
    __swift_project_value_buffer(v33, qword_27EE58DF8);

    v34 = sub_24794ED14();
    v35 = sub_24794F154();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v56 = v37;
      *v36 = 136315138;
      v38 = sub_247924380(v17, v16, &v56);

      *(v36 + 4) = v38;
      _os_log_impl(&dword_2478E1000, v34, v35, "#Utils: Cannot get userSamplingId with userSamplingIdKey: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x24C1AF180](v37, -1, -1);
      MEMORY[0x24C1AF180](v36, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v29 = sub_24794ED34();
    __swift_project_value_buffer(v29, qword_27EE58DF8);
    v30 = sub_24794ED14();
    v31 = sub_24794F154();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_2478E1000, v30, v31, "#Utils: Cannot get defaults", v32, 2u);
      MEMORY[0x24C1AF180](v32, -1, -1);
    }
  }

  v50 = *(v55 + 56);

  return v50(a3, 1, 1, v10);
}

void sub_247937DB0()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_24794EEF4();
  v2 = [v0 initWithSuiteName_];

  qword_27EE58E58 = v2;
}

uint64_t sub_247937E20()
{
  v22[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() sharedManager];
  if (!v0)
  {
    __break(1u);
  }

  v1 = v0;
  v2 = sub_24794EEF4();
  v22[0] = 0;
  v3 = [v1 getEnrollmentIdWithLocale:v2 error:v22];

  v4 = v22[0];
  if (v3)
  {
    v5 = sub_24794EF04();
    v7 = v6;
    v8 = v4;

    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v9 = sub_24794ED34();
    __swift_project_value_buffer(v9, qword_27EE58DF8);

    v10 = sub_24794ED14();
    v11 = sub_24794F154();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v22[0] = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_247924380(v5, v7, v22);
      _os_log_impl(&dword_2478E1000, v10, v11, "#Utils: get enrollmentId: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x24C1AF180](v13, -1, -1);
      MEMORY[0x24C1AF180](v12, -1, -1);
    }
  }

  else
  {
    v14 = v22[0];
    v15 = sub_24794E9D4();

    swift_willThrow();
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v16 = sub_24794ED34();
    __swift_project_value_buffer(v16, qword_27EE58DF8);
    v17 = sub_24794ED14();
    v18 = sub_24794F154();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2478E1000, v17, v18, "#Utils: Cannot get enrollmentId for locale", v19, 2u);
      MEMORY[0x24C1AF180](v19, -1, -1);
    }

    v5 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_247938110(uint64_t a1, uint64_t a2)
{
  if (qword_27EE571E0 != -1)
  {
    v21 = a1;
    v22 = a2;
    swift_once();
    a1 = v21;
    a2 = v22;
  }

  v2 = qword_27EE58E58;
  if (!qword_27EE58E58)
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v7 = sub_24794ED34();
    __swift_project_value_buffer(v7, qword_27EE58DF8);
    v3 = sub_24794ED14();
    v8 = sub_24794F154();
    if (os_log_type_enabled(v3, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2478E1000, v3, v8, "#Utils: Cannot get defaults", v9, 2u);
      MEMORY[0x24C1AF180](v9, -1, -1);
    }

    goto LABEL_26;
  }

  *&v26[0] = a1;
  *(&v26[0] + 1) = a2;

  v3 = v2;
  MEMORY[0x24C1AE4C0](45, 0xE100000000000000);

  MEMORY[0x24C1AE4C0](0xD00000000000001DLL, 0x8000000247957320);

  v4 = v26[0];
  v5 = sub_24794EEF4();
  v6 = [v3 objectForKey:v5];

  if (v6)
  {
    sub_24794F284();
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v26[0] = v24;
  v26[1] = v25;
  if (!*(&v25 + 1))
  {
    sub_2478E9620(v26, &qword_27EE57348, &unk_2479521B0);
LABEL_20:
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v15 = sub_24794ED34();
    __swift_project_value_buffer(v15, qword_27EE58DF8);

    v16 = sub_24794ED14();
    v17 = sub_24794F154();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *&v26[0] = v19;
      *v18 = 136315138;
      v20 = sub_247924380(v4, *(&v4 + 1), v26);

      *(v18 + 4) = v20;
      _os_log_impl(&dword_2478E1000, v16, v17, "#Utils: Cannot get aggregated sample count from legacy for: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x24C1AF180](v19, -1, -1);
      MEMORY[0x24C1AF180](v18, -1, -1);
    }

    else
    {
    }

LABEL_26:
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0 || v23 < 0)
  {
    goto LABEL_20;
  }

  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v10 = sub_24794ED34();
  __swift_project_value_buffer(v10, qword_27EE58DF8);
  v11 = sub_24794ED14();
  v12 = sub_24794F154();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = v23;
    _os_log_impl(&dword_2478E1000, v11, v12, "#Utils: get uploaded SampleCount from LegacyVersion is %ld ", v13, 0xCu);
    MEMORY[0x24C1AF180](v13, -1, -1);
  }

  return v23;
}

void sub_24793857C()
{
  [objc_opt_self() removeAllSamplingMetaData];
  if (qword_27EE571E0 != -1)
  {
    goto LABEL_36;
  }

  while (qword_27EE58E58)
  {
    v0 = qword_27EE571C0;
    v37 = qword_27EE58E58;
    if (v0 != -1)
    {
      swift_once();
    }

    v1 = sub_24794ED34();
    __swift_project_value_buffer(v1, qword_27EE58DF8);
    v2 = sub_24794ED14();
    v3 = sub_24794F154();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2478E1000, v2, v3, "#SpkrIdSamplingPolicy: Removing legacy user default", v4, 2u);
      MEMORY[0x24C1AF180](v4, -1, -1);
    }

    v5 = [v37 dictionaryRepresentation];
    v6 = sub_24794EE84();

    v7 = sub_24794ED14();
    v8 = sub_24794F154();

    v36 = v6;
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v39 = v10;
      *v9 = 136315138;
      v11 = sub_24794EE94();
      v13 = sub_247924380(v11, v12, &v39);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_2478E1000, v7, v8, "#SpkrIdSamplingPolicy: speakerIdUserDefaultDict: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x24C1AF180](v10, -1, -1);
      MEMORY[0x24C1AF180](v9, -1, -1);
    }

    v14 = 0;
    v15 = v6 + 64;
    v16 = 1 << *(v6 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v6 + 64);
    v19 = (v16 + 63) >> 6;
    while (v18)
    {
      while (1)
      {
LABEL_18:
        v22 = (*(v6 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v18)))));
        v24 = *v22;
        v23 = v22[1];
        swift_bridgeObjectRetain_n();
        v25 = sub_24794ED14();
        v26 = sub_24794F154();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v39 = v28;
          *v27 = 136315138;
          *(v27 + 4) = sub_247924380(v24, v23, &v39);
          _os_log_impl(&dword_2478E1000, v25, v26, "#SpkrIdSamplingPolicy: Iterating over userDefaultKey: %s", v27, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v28);
          MEMORY[0x24C1AF180](v28, -1, -1);
          MEMORY[0x24C1AF180](v27, -1, -1);
        }

        v18 &= v18 - 1;
        v39 = v24;
        v40 = v23;
        sub_24791F02C();
        if (sub_24794F274())
        {
          break;
        }

        v39 = v24;
        v40 = v23;
        if (sub_24794F274())
        {
          break;
        }

        v39 = v24;
        v40 = v23;
        if (sub_24794F274())
        {
          break;
        }

        v6 = v36;
        if (!v18)
        {
          goto LABEL_14;
        }
      }

      v29 = sub_24794ED14();
      v30 = sub_24794F154();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v39 = v32;
        *v31 = 136315138;
        *(v31 + 4) = sub_247924380(v24, v23, &v39);
        _os_log_impl(&dword_2478E1000, v29, v30, "#SpkrIdSamplingPolicy: Remove legacy user default key: %s", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v32);
        MEMORY[0x24C1AF180](v32, -1, -1);
        MEMORY[0x24C1AF180](v31, -1, -1);
      }

      v6 = v36;
      v20 = sub_24794EEF4();

      [v37 removeObjectForKey_];
    }

LABEL_14:
    while (1)
    {
      v21 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v21 >= v19)
      {

        return;
      }

      v18 = *(v15 + 8 * v21);
      ++v14;
      if (v18)
      {
        v14 = v21;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_36:
    swift_once();
  }

  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v33 = sub_24794ED34();
  __swift_project_value_buffer(v33, qword_27EE58DF8);
  v38 = sub_24794ED14();
  v34 = sub_24794F154();
  if (os_log_type_enabled(v38, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_2478E1000, v38, v34, "#SpkrIdSamplingPolicy: cannot get uerDefaults from legacy build", v35, 2u);
    MEMORY[0x24C1AF180](v35, -1, -1);
  }
}

id sub_247938C78()
{
  type metadata accessor for ODSampleSELFReporter();
  v0 = swift_allocObject();
  result = [objc_opt_self() sharedLoggerWithPersistenceConfiguration_];
  *(v0 + 16) = result;
  qword_27EE58E60 = v0;
  return result;
}

uint64_t ODSampleSELFReporter.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_opt_self() sharedLoggerWithPersistenceConfiguration_];
  return v0;
}

uint64_t sub_247938D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_247938D9C, 0, 0);
}

uint64_t sub_247938D9C()
{
  v1 = [*(v0 + 16) wrapAsAnyEvent];
  *(v0 + 56) = v1;
  v2 = *(v0 + 24);
  if (v1)
  {
    v3 = v1;
    v4 = v1;
    v5 = sub_24794ED14();
    v6 = sub_24794F154();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      *(v7 + 4) = v4;
      *v8 = v3;
      v9 = v4;
      _os_log_impl(&dword_2478E1000, v5, v6, "#SELFODSampleReporter: FBF Shared reporter: store the event %@ and send to server", v7, 0xCu);
      sub_2478EFF2C(v8);
      MEMORY[0x24C1AF180](v8, -1, -1);
      MEMORY[0x24C1AF180](v7, -1, -1);
    }

    v10 = swift_task_alloc();
    *(v0 + 64) = v10;
    *v10 = v0;
    v10[1] = sub_247938FC8;
    v11 = *(v0 + 40);
    v12 = *(v0 + 48);
    v13 = *(v0 + 24);
    v14 = *(v0 + 32);

    return sub_24793950C(v4, v13, v14, v11);
  }

  else
  {
    v16 = sub_24794ED14();
    v17 = sub_24794F164();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2478E1000, v16, v17, "#SELFODSampleReporter: Couldn't package event in AnyEvent wrapper.", v18, 2u);
      MEMORY[0x24C1AF180](v18, -1, -1);
    }

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_247938FC8()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_247939140;
  }

  else
  {
    v3 = sub_2479390DC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2479390DC()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_247939140()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 72);

  return v1();
}

uint64_t sub_2479391A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2479391CC, 0, 0);
}

uint64_t sub_2479391CC()
{
  v1 = [*(v0 + 16) wrapAsAnyEvent];
  *(v0 + 56) = v1;
  v2 = *(v0 + 24);
  if (v1)
  {
    v3 = v1;
    v4 = v1;
    v5 = sub_24794ED14();
    v6 = sub_24794F154();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      *(v7 + 4) = v4;
      *v8 = v3;
      v9 = v4;
      _os_log_impl(&dword_2478E1000, v5, v6, "#ODDSiriSchemaODDSiriClientEvent: FBF Shared reporter: store the event %@ and send to server", v7, 0xCu);
      sub_2478EFF2C(v8);
      MEMORY[0x24C1AF180](v8, -1, -1);
      MEMORY[0x24C1AF180](v7, -1, -1);
    }

    v10 = swift_task_alloc();
    *(v0 + 64) = v10;
    *v10 = v0;
    v10[1] = sub_2479393F8;
    v11 = *(v0 + 40);
    v12 = *(v0 + 48);
    v13 = *(v0 + 24);
    v14 = *(v0 + 32);

    return sub_24793950C(v4, v13, v14, v11);
  }

  else
  {
    v16 = sub_24794ED14();
    v17 = sub_24794F164();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2478E1000, v16, v17, "#ODDSiriSchemaODDSiriClientEvent: Couldn't package event in AnyEvent wrapper.", v18, 2u);
      MEMORY[0x24C1AF180](v18, -1, -1);
    }

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_2479393F8()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_24793A2E4;
  }

  else
  {
    v3 = sub_24793A2E8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24793950C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[21] = a4;
  v5[22] = v4;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  return MEMORY[0x2822009F8](sub_247939534, 0, 0);
}

uint64_t sub_247939534()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 144);
  v3 = sub_24794ED14();
  v4 = sub_24794F154();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 144);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    _os_log_impl(&dword_2478E1000, v3, v4, "#SELFODSampleReporter: FBF reporter: store the event %@ and send to server", v6, 0xCu);
    sub_2478EFF2C(v7);
    MEMORY[0x24C1AF180](v7, -1, -1);
    MEMORY[0x24C1AF180](v6, -1, -1);
  }

  v9 = *(v0 + 168);
  v10 = *(v0 + 176);
  v11 = *(v0 + 160);
  v12 = *(v0 + 144);

  v13 = *(v10 + 16);
  v14 = sub_24794EEF4();
  *(v0 + 184) = v14;
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_247939738;
  v15 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE576B8, &unk_247951E20);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_24793991C;
  *(v0 + 104) = &block_descriptor_0;
  *(v0 + 112) = v15;
  [v13 reportSiriInstrumentationEvent:v12 forBundleID:v14 completion:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_247939738()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_2479398AC;
  }

  else
  {
    v3 = sub_247939848;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_247939848()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2479398AC()
{
  v1 = v0[23];
  v2 = v0[24];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[24];

  return v3();
}

uint64_t sub_24793991C(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574A8, &qword_247951540);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t ODSampleSELFReporter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_247939A88(uint64_t a1)
{
  v2 = sub_24794EBB4();
  v78 = *(v2 - 8);
  isa = v78[8].isa;
  v4 = MEMORY[0x28223BE20](v2);
  v76 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v66 - v6;
  v8 = sub_24794EC04();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v77 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v66 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v66 - v16;
  v18 = [objc_allocWithZone(MEMORY[0x277D587F0]) init];
  if (v18)
  {
    v19 = v18;
    v20 = [objc_allocWithZone(MEMORY[0x277D587F8]) init];
    if (v20)
    {
      v75 = v2;
      v21 = v20;
      sub_24794EBF4();
      v22 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v23 = sub_24794EBE4();
      v24 = [v22 initWithNSUUID_];

      v73 = *(v9 + 8);
      v74 = v9 + 8;
      v73(v17, v8);
      [v21 setMhId_];

      [v19 setSpeakerIdModelOneSessionReportedTier1_];
      v72 = v21;
      v25 = v21;
      v26 = v15;
      [v19 setEventMetadata_];
      v27 = v7;
      sub_24794EBA4();
      v28 = [objc_opt_self() sharedAnalytics];
      v29 = [v28 defaultMessageStream];

      sub_24794EBF4();
      sub_24794EB74();
      if ((*&v30 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v30 > -1.0)
      {
        if (v30 < 1.84467441e19)
        {
          v31 = v30;
          v32 = sub_24794EBE4();
          v71 = v29;
          [v29 emitMessage:v19 timestamp:v31 isolatedStreamUUID:v32];

          if (qword_27EE571C0 == -1)
          {
            goto LABEL_7;
          }

          goto LABEL_25;
        }

LABEL_24:
        __break(1u);
LABEL_25:
        swift_once();
LABEL_7:
        v33 = sub_24794ED34();
        __swift_project_value_buffer(v33, qword_27EE58DF8);
        v34 = v78;
        v35 = v78[2].isa;
        v36 = v76;
        v37 = v27;
        v70 = v27;
        v38 = v75;
        (v35)(v76, v37, v75);
        v39 = v77;
        (*(v9 + 16))(v77, v26, v8);
        v40 = sub_24794ED14();
        v41 = sub_24794F144();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v69 = v26;
          v43 = v38;
          v44 = v42;
          v68 = swift_slowAlloc();
          v79 = v68;
          *v44 = 136315394;
          sub_24793A29C(&qword_27EE57288, MEMORY[0x277CC9578]);
          v67 = v41;
          v45 = sub_24794F4D4();
          v47 = v46;
          v66 = v40;
          v48 = v34[1].isa;
          v48(v36, v43);
          v49 = sub_247924380(v45, v47, &v79);

          *(v44 + 4) = v49;
          *(v44 + 12) = 2080;
          sub_24793A29C(&qword_27EE57250, MEMORY[0x277CC95F0]);
          v50 = sub_24794F4D4();
          v52 = v51;
          v53 = v73;
          v73(v39, v8);
          v54 = sub_247924380(v50, v52, &v79);

          *(v44 + 14) = v54;
          v55 = v66;
          _os_log_impl(&dword_2478E1000, v66, v67, "#MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1: SiriAnalytics emitted message at: %s with stream UUID: %s", v44, 0x16u);
          v56 = v68;
          swift_arrayDestroy();
          MEMORY[0x24C1AF180](v56, -1, -1);
          MEMORY[0x24C1AF180](v44, -1, -1);

          v53(v69, v8);
          v48(v70, v75);
        }

        else
        {

          v64 = v73;
          v73(v39, v8);
          v65 = v34[1].isa;
          v65(v36, v38);
          v64(v26, v8);
          v65(v70, v38);
        }

        return;
      }

      __break(1u);
      goto LABEL_24;
    }

    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v60 = sub_24794ED34();
    __swift_project_value_buffer(v60, qword_27EE58DF8);
    v78 = sub_24794ED14();
    v61 = sub_24794F164();
    if (os_log_type_enabled(v78, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_2478E1000, v78, v61, "#ODSampleSELFReporter: Cannot create event metadata", v62, 2u);
      MEMORY[0x24C1AF180](v62, -1, -1);
    }
  }

  else
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v57 = sub_24794ED34();
    __swift_project_value_buffer(v57, qword_27EE58DF8);
    v78 = sub_24794ED14();
    v58 = sub_24794F164();
    if (os_log_type_enabled(v78, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_2478E1000, v78, v58, "#ODSampleSELFReporter: Cannot create topLevel Message", v59, 2u);
      MEMORY[0x24C1AF180](v59, -1, -1);
    }
  }

  v63 = v78;
}

uint64_t sub_24793A29C(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_24793A2EC()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D8, &qword_247950660);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v51 - v4;
  v6 = sub_24794E9F4();
  v58 = *(v6 - 8);
  v59 = v6;
  v7 = *(v58 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24794EA84();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v51 - v16;
  v18 = [objc_opt_self() defaultManager];
  v19 = *(v0 + 16);
  v20 = *(v0 + 24);
  sub_24794EA14();
  v21 = sub_24794F134();
  if (v21)
  {
    v54 = v18;
    v55 = v17;
    v56 = v1;
    v53 = v21;
    sub_24794F124();
    v62 = v9;
    sub_24794E9E4();
    v57 = v11;
    if (v61)
    {
      v22 = (v11 + 56);
      v23 = (v11 + 32);
      v24 = (v11 + 8);
      v60 = MEMORY[0x277D84F90];
      v25 = v62;
      while (1)
      {
        v26 = swift_dynamicCast();
        v27 = *v22;
        if (v26)
        {
          v27(v5, 0, 1, v10);
          (*v23)(v15, v5, v10);
          if (sub_24794EA04() == 7168880 && v28 == 0xE300000000000000)
          {

LABEL_13:
            v30 = sub_24794EA74();
            v51 = v31;
            v52 = v30;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v60 = sub_24793A9D0(0, *(v60 + 2) + 1, 1, v60);
            }

            v33 = *(v60 + 2);
            v32 = *(v60 + 3);
            if (v33 >= v32 >> 1)
            {
              v60 = sub_24793A9D0((v32 > 1), v33 + 1, 1, v60);
            }

            (*v24)(v15, v10);
            v34 = v60;
            *(v60 + 2) = v33 + 1;
            v35 = &v34[16 * v33];
            v36 = v51;
            *(v35 + 4) = v52;
            *(v35 + 5) = v36;
            v25 = v62;
            goto LABEL_10;
          }

          v29 = sub_24794F4E4();

          if (v29)
          {
            goto LABEL_13;
          }

          (*v24)(v15, v10);
          v25 = v62;
        }

        else
        {
          v27(v5, 1, 1, v10);
          sub_24793B230(v5);
        }

LABEL_10:
        sub_24794E9E4();
        if (!v61)
        {
          goto LABEL_24;
        }
      }
    }

    v60 = MEMORY[0x277D84F90];
    v25 = v62;
LABEL_24:
    (*(v58 + 8))(v25, v59);
    v43 = v54;
    v42 = v55;
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v44 = sub_24794ED34();
    __swift_project_value_buffer(v44, qword_27EE58DF8);
    v18 = v60;
    swift_bridgeObjectRetain_n();
    v45 = sub_24794ED14();
    v46 = sub_24794F154();
    v47 = os_log_type_enabled(v45, v46);
    v48 = v57;
    if (v47)
    {
      v49 = swift_slowAlloc();
      *v49 = 134217984;
      *(v49 + 4) = *(v18 + 2);
      swift_bridgeObjectRelease_n();
      _os_log_impl(&dword_2478E1000, v45, v46, "#RequestAudioFileManager: Found %ld PCM files", v49, 0xCu);
      MEMORY[0x24C1AF180](v49, -1, -1);

      (*(v48 + 8))(v42, v10);
    }

    else
    {

      (*(v48 + 8))(v42, v10);
    }
  }

  else
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v37 = sub_24794ED34();
    __swift_project_value_buffer(v37, qword_27EE58DF8);
    v38 = sub_24794ED14();
    v39 = sub_24794F164();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_2478E1000, v38, v39, "#RequestAudioFileManager: Failed to get all PCM files with error", v40, 2u);
      MEMORY[0x24C1AF180](v40, -1, -1);
    }

    sub_2478E95CC();
    swift_allocError();
    *v41 = xmmword_247951E30;
    *(v41 + 16) = 2;
    swift_willThrow();

    (*(v11 + 8))(v17, v10);
  }

  return v18;
}

uint64_t sub_24793A96C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return swift_deallocClassInstance();
}

char *sub_24793A9D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE576C0, &qword_247951E80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

size_t sub_24793AADC(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57260, &qword_2479503A8);
  v10 = *(sub_24794EC04() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_24794EC04() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_24793ACD8(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57430, &qword_247950E88);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57428, &qword_247950E80) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57428, &qword_247950E80) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_24793AEC8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE576D0, &qword_247951E90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_24793AFF0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_24793B124(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE576E8, &unk_247951EB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_24793B230(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D8, &qword_247950660);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_24793B298()
{
  result = *(v0 + 48);
  if (!result)
  {
    result = sub_24793A2EC();
    if (!v1)
    {
      v3 = *(v0 + 48);
      *(v0 + 48) = result;

      result = *(v0 + 48);
      if (!result)
      {
        sub_2478E95CC();
        swift_allocError();
        *v4 = xmmword_24794FEF0;
        *(v4 + 16) = 2;
        return swift_willThrow();
      }
    }
  }

  return result;
}

uint64_t SamplingMetaDataPrefStore.deinit()
{
  v1 = *(v0 + 32);

  return v0;
}

uint64_t SamplingMetaDataPrefStore.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

_BYTE *sub_24793B3D0()
{
  *(v0 + 24);
  v1 = *(v0 + 16);
  v2 = sub_24794EEF4();

  v3 = [v1 dictionaryForKey_];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_24794EE84();

  v5 = *(v0 + 32);
  v6 = sub_24793F6A8(v4);

  return v6;
}

void sub_24793B51C(void *a1)
{
  v1 = [a1 dictionaryRepresentation];
  v2 = sub_24794EE84();

  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = sub_24793DFD0(*(v2 + 16), 0);
    v5 = sub_24793F3FC(&v15, v4 + 4, v3, v2);
    sub_2478FE384();
    if (v5 == v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v4 = MEMORY[0x277D84F90];
LABEL_5:
  v14 = v4[2];
  if (v14)
  {
    v6 = 0;
    v7 = v4 + 5;
    while (v6 < v4[2])
    {
      v10 = *(v7 - 1);
      v9 = *v7;
      ++v6;

      v11 = sub_24794F004();

      if (v11 & 1) != 0 || (v12 = sub_24794F004(), , (v12))
      {
        v8 = sub_24794EEF4();

        [a1 removeObjectForKey_];
      }

      else
      {
      }

      v7 += 2;
      if (v14 == v6)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:
  }
}

CoreSpeechDataAnalytics::SamplingSelectionStatus_optional __swiftcall SamplingSelectionStatus.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_24793B7F0()
{
  result = qword_27EE576F0;
  if (!qword_27EE576F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE576F0);
  }

  return result;
}

_BYTE *sub_24793B85C(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics31SiriSessionUserSamplingMetaData_siriSessionSelected;
  *(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics31SiriSessionUserSamplingMetaData_siriSessionSelected) = 0;
  v5 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics31SiriSessionUserSamplingMetaData_enrollmentMetadata;
  *(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics31SiriSessionUserSamplingMetaData_enrollmentMetadata) = 0;
  if (!*(a1 + 16))
  {
    goto LABEL_7;
  }

  v6 = sub_24792BEF8(0xD000000000000013, 0x8000000247957820);
  if ((v7 & 1) == 0)
  {
    goto LABEL_7;
  }

  sub_2478E9680(*(a1 + 56) + 32 * v6, &v16, &qword_27EE57348, &unk_2479521B0);
  v18 = v16;
  v19 = v17;
  if (!*(&v17 + 1))
  {
    sub_2478E9620(&v18, &qword_27EE57348, &unk_2479521B0);
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57738, &unk_247952148);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v8 = sub_24794D76C(v15);

LABEL_8:
  v9 = *(v2 + v4);
  *(v2 + v4) = v8;

  if (!*(a1 + 16))
  {
    goto LABEL_14;
  }

  v10 = sub_24792BEF8(0xD000000000000015, 0x8000000247957840);
  if ((v11 & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_2478E9680(*(a1 + 56) + 32 * v10, &v16, &qword_27EE57348, &unk_2479521B0);
  v18 = v16;
  v19 = v17;
  if (!*(&v17 + 1))
  {
    sub_2478E9620(&v18, &qword_27EE57348, &unk_2479521B0);
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57738, &unk_247952148);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

  v12 = sub_24792DF78(v15);

LABEL_15:
  v13 = *(v2 + v5);
  *(v2 + v5) = v12;

  return sub_24793BA70(a1);
}

_BYTE *sub_24793BA70(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v44 - v9;
  v11 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_collectionStartDate;
  v12 = sub_24794EBB4();
  v13 = *(*(v12 - 8) + 56);
  v13(&v2[v11], 1, 1, v12);
  v14 = &v2[OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_userSamplingId];
  *v14 = 0;
  v14[1] = 0;
  v2[16] = 0;
  v13(v10, 1, 1, v12);
  swift_beginAccess();
  sub_24793F5EC(v10, &v2[v11]);
  swift_endAccess();
  if (*(a1 + 16))
  {
    v15 = sub_24792BEF8(0xD00000000000001CLL, 0x8000000247957760);
    if (v16)
    {
      sub_2478E9680(*(a1 + 56) + 32 * v15, &v48, &qword_27EE57348, &unk_2479521B0);
      v50 = v48;
      v51 = v49;
      if (!*(&v49 + 1))
      {
        sub_2478E9620(&v50, &qword_27EE57348, &unk_2479521B0);
        if (!*(a1 + 16))
        {
          goto LABEL_15;
        }

        goto LABEL_7;
      }

      if (swift_dynamicCast())
      {
        v17 = v47;
        v18 = v14[1];
        *v14 = v46;
        v14[1] = v17;
      }
    }
  }

  if (!*(a1 + 16))
  {
    goto LABEL_15;
  }

LABEL_7:
  v19 = sub_24792BEF8(0xD000000000000017, 0x8000000247957780);
  if (v20)
  {
    sub_2478E9680(*(a1 + 56) + 32 * v19, &v48, &qword_27EE57348, &unk_2479521B0);
    v50 = v48;
    v51 = v49;
    if (*(&v49 + 1))
    {
      if (swift_dynamicCast())
      {
        v45 = v46;
        v21 = [objc_opt_self() defaultDateFormatter];
        v44 = v21;
        v45 = sub_24794EEF4();

        v22 = v45;
        v23 = [v21 dateFromString_];

        if (v23)
        {
          sub_24794EB94();

          v24 = 0;
        }

        else
        {
          v24 = 1;
        }

        v13(v8, v24, 1, v12);
        swift_beginAccess();
        sub_24793F5EC(v8, &v2[v11]);
        swift_endAccess();
        if (!*(a1 + 16))
        {
          goto LABEL_37;
        }

        goto LABEL_16;
      }
    }

    else
    {
      sub_2478E9620(&v50, &qword_27EE57348, &unk_2479521B0);
    }
  }

LABEL_15:
  if (!*(a1 + 16))
  {
    goto LABEL_37;
  }

LABEL_16:
  v25 = sub_24792BEF8(0xD000000000000013, 0x80000002479577A0);
  if ((v26 & 1) == 0)
  {
    goto LABEL_37;
  }

  sub_2478E9680(*(a1 + 56) + 32 * v25, &v48, &qword_27EE57348, &unk_2479521B0);
  v50 = v48;
  v51 = v49;
  if (*(&v49 + 1))
  {
    if ((swift_dynamicCast() & 1) != 0 && v46 < 3)
    {
      v2[16] = v46;
      if (*(a1 + 16))
      {
        v27 = sub_24792BEF8(0xD000000000000014, 0x80000002479577C0);
        if (v28)
        {
          sub_2478E9680(*(a1 + 56) + 32 * v27, &v48, &qword_27EE57348, &unk_2479521B0);
          v50 = v48;
          v51 = v49;
          if (!*(&v49 + 1))
          {

            sub_2478E9620(&v50, &qword_27EE57348, &unk_2479521B0);
            goto LABEL_31;
          }

          if (swift_dynamicCast())
          {
            v29 = v47;
            v30 = &v2[OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_locale];
            *v30 = v46;
            v30[1] = v29;
            if (*(a1 + 16) && (v31 = sub_24792BEF8(0xD000000000000012, 0x8000000247957700), (v32 & 1) != 0))
            {
              sub_2478E9680(*(a1 + 56) + 32 * v31, &v48, &qword_27EE57348, &unk_2479521B0);

              v50 = v48;
              v51 = v49;
              if (*(&v49 + 1))
              {
                if (swift_dynamicCast())
                {
                  v33 = v46;
LABEL_48:
                  *&v2[OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_uploadedNumRecords] = v33;
                  return v2;
                }
              }

              else
              {
                sub_2478E9620(&v50, &qword_27EE57348, &unk_2479521B0);
              }
            }

            else
            {
            }

            v33 = 0;
            goto LABEL_48;
          }
        }
      }

LABEL_31:
      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v34 = sub_24794ED34();
      __swift_project_value_buffer(v34, qword_27EE58DF8);
      v35 = sub_24794ED14();
      v36 = sub_24794F164();
      if (!os_log_type_enabled(v35, v36))
      {
        goto LABEL_43;
      }

      v37 = swift_slowAlloc();
      *v37 = 0;
      v38 = "#SamplingPolicyMetaData: DataCollectionType cannot be created";
      goto LABEL_42;
    }

LABEL_37:

    goto LABEL_38;
  }

  sub_2478E9620(&v50, &qword_27EE57348, &unk_2479521B0);
LABEL_38:
  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v39 = sub_24794ED34();
  __swift_project_value_buffer(v39, qword_27EE58DF8);
  v35 = sub_24794ED14();
  v36 = sub_24794F164();
  if (!os_log_type_enabled(v35, v36))
  {
    goto LABEL_43;
  }

  v37 = swift_slowAlloc();
  *v37 = 0;
  v38 = "#SamplingPolicyMetaData: DataCollectionState cannot be created";
LABEL_42:
  _os_log_impl(&dword_2478E1000, v35, v36, v38, v37, 2u);
  MEMORY[0x24C1AF180](v37, -1, -1);
LABEL_43:

  sub_2478E9620(&v2[v11], &qword_27EE572D0, &unk_2479504E0);
  v40 = v14[1];

  type metadata accessor for SamplingPolicyMetaData(0);
  v41 = *(*v2 + 48);
  v42 = *(*v2 + 52);
  swift_deallocPartialClassInstance();
  return 0;
}

unint64_t sub_24793C1DC()
{
  v1 = v0;
  v2 = sub_24793C420();
  if (*(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics31SiriSessionUserSamplingMetaData_siriSessionSelected))
  {
    v3 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics31SiriSessionUserSamplingMetaData_siriSessionSelected);

    v4 = sub_24794879C();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57738, &unk_247952148);
    *&v17 = v4;
    sub_247933794(&v17, v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_24794B0E4(v16, 0xD000000000000013, 0x8000000247957820, isUniquelyReferenced_nonNull_native);
  }

  v6 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics31SiriSessionUserSamplingMetaData_enrollmentMetadata);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57740, &qword_247952158);
    inited = swift_initStackObject();
    strcpy((inited + 32), "voiceProfileId");
    *(inited + 16) = xmmword_247951F10;
    *(inited + 47) = -18;

    v8 = sub_24794EBD4();
    v9 = MEMORY[0x277D837D0];
    *(inited + 48) = v8;
    *(inited + 56) = v10;
    *(inited + 72) = v9;
    *(inited + 80) = 0x656C61636F6CLL;
    *(inited + 88) = 0xE600000000000000;
    v12 = *(v6 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics18EnrollmentMetadata_locale);
    v11 = *(v6 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics18EnrollmentMetadata_locale + 8);
    *(inited + 120) = v9;
    *(inited + 96) = v12;
    *(inited + 104) = v11;

    v13 = sub_24794D0D4(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57748, &qword_247952160);
    swift_arrayDestroy();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57738, &unk_247952148);
    *&v17 = v13;
    sub_247933794(&v17, v16);
    v14 = swift_isUniquelyReferenced_nonNull_native();
    sub_24794B0E4(v16, 0xD000000000000015, 0x8000000247957840, v14);
  }

  return v2;
}

unint64_t sub_24793C420()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v35 - v4;
  v6 = sub_24794EBB4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24794D0D4(MEMORY[0x277D84F90]);
  v12 = *(v1 + 16);
  v39 = MEMORY[0x277D83B88];
  *&v38 = v12;
  sub_247933794(&v38, v37);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36 = v11;
  sub_24794B0E4(v37, 0xD000000000000013, 0x80000002479577A0, isUniquelyReferenced_nonNull_native);
  v14 = v36;
  v15 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_collectionStartDate;
  swift_beginAccess();
  sub_2478E9680(v1 + v15, v5, &qword_27EE572D0, &unk_2479504E0);
  v16 = (*(v7 + 48))(v5, 1, v6);
  v17 = MEMORY[0x277D837D0];
  if (v16 == 1)
  {
    sub_2478E9620(v5, &qword_27EE572D0, &unk_2479504E0);
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    v18 = [objc_opt_self() defaultDateFormatter];
    v19 = sub_24794EB34();
    v20 = [v18 stringFromDate_];

    v21 = sub_24794EF04();
    v23 = v22;

    v39 = v17;
    *&v38 = v21;
    *(&v38 + 1) = v23;
    sub_247933794(&v38, v37);
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v35 = v14;
    sub_24794B0E4(v37, 0xD000000000000017, 0x8000000247957780, v24);
    (*(v7 + 8))(v10, v6);
    v14 = v35;
  }

  v25 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_userSamplingId + 8);
  if (v25)
  {
    v26 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_userSamplingId);
    v39 = v17;
    *&v38 = v26;
    *(&v38 + 1) = v25;
    sub_247933794(&v38, v37);

    v27 = swift_isUniquelyReferenced_nonNull_native();
    v35 = v14;
    sub_24794B0E4(v37, 0xD00000000000001CLL, 0x8000000247957760, v27);
    v14 = v35;
  }

  v28 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_locale);
  v29 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_locale + 8);
  v39 = v17;
  *&v38 = v28;
  *(&v38 + 1) = v29;
  sub_247933794(&v38, v37);

  v30 = swift_isUniquelyReferenced_nonNull_native();
  v35 = v14;
  sub_24794B0E4(v37, 0xD000000000000014, 0x80000002479577C0, v30);
  v31 = v35;
  v32 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_uploadedNumRecords);
  v39 = MEMORY[0x277D83E88];
  *&v38 = v32;
  sub_247933794(&v38, v37);
  v33 = swift_isUniquelyReferenced_nonNull_native();
  v35 = v31;
  sub_24794B0E4(v37, 0xD000000000000012, 0x8000000247957700, v33);
  return v35;
}

uint64_t sub_24793C8C8(uint64_t a1, void *a2)
{
  v3 = *(v2 + *a2);
  *(v2 + *a2) = a1;
}

uint64_t sub_24793C904(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics31SiriSessionUserSamplingMetaData_enrollmentMetadata);
  *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics31SiriSessionUserSamplingMetaData_enrollmentMetadata) = 0;

  v4 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics31SiriSessionUserSamplingMetaData_siriSessionSelected);
  *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics31SiriSessionUserSamplingMetaData_siriSessionSelected) = 0;

  return sub_24793C960(a1);
}

uint64_t sub_24793C960(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21 - v6;
  v8 = sub_24794EC04();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24794EBF4();
  v13 = sub_24794EBD4();
  v15 = v14;
  (*(v9 + 8))(v12, v8);
  *(v2 + 16) = 1;
  type metadata accessor for Utils();
  sub_247940B60(a1, v7);
  v16 = sub_24794EBB4();
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_collectionStartDate;
  swift_beginAccess();
  sub_24793F5EC(v7, v2 + v17);
  swift_endAccess();
  v18 = (v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_userSamplingId);
  v19 = *(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_userSamplingId + 8);
  *v18 = v13;
  v18[1] = v15;

  *(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_uploadedNumRecords) = 0;
  return result;
}

uint64_t sub_24793CB48()
{
  v1 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics31SiriSessionUserSamplingMetaData_siriSessionSelected);

  v2 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics31SiriSessionUserSamplingMetaData_enrollmentMetadata);
}

uint64_t sub_24793CB88()
{
  sub_2478E9620(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_collectionStartDate, &qword_27EE572D0, &unk_2479504E0);
  v1 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_userSamplingId + 8);

  v2 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_locale + 8);

  v3 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics31SiriSessionUserSamplingMetaData_siriSessionSelected);

  v4 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics31SiriSessionUserSamplingMetaData_enrollmentMetadata);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

_BYTE *sub_24793CCE8(uint64_t a1)
{
  v2 = v1;
  if (!*(a1 + 16))
  {
    goto LABEL_10;
  }

  v4 = sub_24792BEF8(0xD000000000000014, 0x80000002479577E0);
  if ((v5 & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_2478E9680(*(a1 + 56) + 32 * v4, &v16, &qword_27EE57348, &unk_2479521B0);
  v18 = v16;
  v19 = v17;
  if (!*(&v17 + 1))
  {

    sub_2478E9620(&v18, &qword_27EE57348, &unk_2479521B0);
    goto LABEL_11;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:

LABEL_11:
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
      _os_log_impl(&dword_2478E1000, v10, v11, "#SamplingPolicyMetaData: uploadedNumRecordsHS is nil", v12, 2u);
      MEMORY[0x24C1AF180](v12, -1, -1);
    }

    goto LABEL_16;
  }

  *(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics31ButtonPressUserSamplingMetaData_uploadedNumRecordsHS) = v15;
  if (*(a1 + 16))
  {
    v6 = sub_24792BEF8(0xD000000000000014, 0x8000000247957800);
    if (v7)
    {
      sub_2478E9680(*(a1 + 56) + 32 * v6, &v16, &qword_27EE57348, &unk_2479521B0);
      v18 = v16;
      v19 = v17;
      if (!*(&v17 + 1))
      {

        sub_2478E9620(&v18, &qword_27EE57348, &unk_2479521B0);
        goto LABEL_16;
      }

      if (swift_dynamicCast())
      {
        *(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics31ButtonPressUserSamplingMetaData_uploadedNumRecordsJS) = v15;
        return sub_24793CF98(a1);
      }
    }
  }

LABEL_16:
  type metadata accessor for ButtonPressUserSamplingMetaData(0);
  v13 = *(*v2 + 48);
  v14 = *(*v2 + 52);
  swift_deallocPartialClassInstance();
  return 0;
}

_BYTE *sub_24793CF98(uint64_t a1)
{
  v2 = v1;
  v4 = v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics28EnrolledUserSamplingMetaData_aggregatedEventCountFromLegacy;
  *v4 = 0;
  *(v4 + 8) = 1;
  if (*(a1 + 16))
  {
    v5 = sub_24792BEF8(0xD000000000000012, 0x8000000247957720);
    if (v6)
    {
      sub_2478E9680(*(a1 + 56) + 32 * v5, &v27, &qword_27EE57348, &unk_2479521B0);
      v29 = v27;
      v30 = v28;
      if (!*(&v28 + 1))
      {

        sub_2478E9620(&v29, &qword_27EE57348, &unk_2479521B0);
        goto LABEL_11;
      }

      if (swift_dynamicCast())
      {
        v7 = (v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics28EnrolledUserSamplingMetaData_voiceProfileId);
        *v7 = v25;
        v7[1] = v26;
        if (*(a1 + 16))
        {
          v8 = sub_24792BEF8(0xD000000000000014, 0x8000000247957630);
          if (v9)
          {
            sub_2478E9680(*(a1 + 56) + 32 * v8, &v27, &qword_27EE57348, &unk_2479521B0);
            v29 = v27;
            v30 = v28;
            if (*(&v28 + 1))
            {
              if (swift_dynamicCast())
              {
                v10 = v25;
LABEL_19:
                *(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics28EnrolledUserSamplingMetaData_aggregatedNumRecords) = v10;
                if (*(a1 + 16))
                {
                  v18 = sub_24792BEF8(0xD000000000000019, 0x8000000247957740);
                  if (v19)
                  {
                    sub_2478E9680(*(a1 + 56) + 32 * v18, &v27, &qword_27EE57348, &unk_2479521B0);
                    v29 = v27;
                    v30 = v28;
                    if (*(&v28 + 1))
                    {
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57560, &unk_2479519C0);
                      if (swift_dynamicCast())
                      {
                        v20 = sub_24793F554(v25);

LABEL_26:
                        *(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics28EnrolledUserSamplingMetaData_voiceProfileIdsSampled) = v20;
                        if (*(a1 + 16))
                        {
                          v21 = sub_24792BEF8(0xD00000000000001ELL, 0x8000000247957670);
                          if (v22)
                          {
                            sub_2478E9680(*(a1 + 56) + 32 * v21, &v27, &qword_27EE57348, &unk_2479521B0);
                            v29 = v27;
                            v30 = v28;
                            if (*(&v28 + 1))
                            {
                              if (swift_dynamicCast())
                              {
                                v23 = 0;
                                v24 = v25;
LABEL_33:
                                *v4 = v24;
                                *(v4 + 8) = v23;
                                return sub_24793BA70(a1);
                              }
                            }

                            else
                            {
                              sub_2478E9620(&v29, &qword_27EE57348, &unk_2479521B0);
                            }
                          }
                        }

                        v24 = 0;
                        v23 = 1;
                        goto LABEL_33;
                      }
                    }

                    else
                    {
                      sub_2478E9620(&v29, &qword_27EE57348, &unk_2479521B0);
                    }
                  }
                }

                v20 = MEMORY[0x277D84FA0];
                goto LABEL_26;
              }
            }

            else
            {
              sub_2478E9620(&v29, &qword_27EE57348, &unk_2479521B0);
            }
          }
        }

        v10 = 0;
        goto LABEL_19;
      }
    }
  }

LABEL_11:
  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v11 = sub_24794ED34();
  __swift_project_value_buffer(v11, qword_27EE58DF8);
  v12 = sub_24794ED14();
  v13 = sub_24794F164();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2478E1000, v12, v13, "#SamplingPolicyMetaData: voiceProfileId is nil", v14, 2u);
    MEMORY[0x24C1AF180](v14, -1, -1);
  }

  type metadata accessor for EnrolledUserSamplingMetaData(0);
  v15 = *(*v2 + 48);
  v16 = *(*v2 + 52);
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_24793D3DC()
{
  v1 = v0;
  v2 = sub_24793D4CC();
  v3 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics31ButtonPressUserSamplingMetaData_uploadedNumRecordsHS);
  v4 = MEMORY[0x277D83E88];
  v11 = MEMORY[0x277D83E88];
  *&v10 = v3;
  sub_247933794(&v10, v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24794B0E4(v9, 0xD000000000000014, 0x80000002479577E0, isUniquelyReferenced_nonNull_native);
  v6 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics31ButtonPressUserSamplingMetaData_uploadedNumRecordsJS);
  v11 = v4;
  *&v10 = v6;
  sub_247933794(&v10, v9);
  v7 = swift_isUniquelyReferenced_nonNull_native();
  sub_24794B0E4(v9, 0xD000000000000014, 0x8000000247957800, v7);
  return v2;
}

uint64_t sub_24793D4CC()
{
  v1 = v0;
  v2 = sub_24793C420();
  v3 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics28EnrolledUserSamplingMetaData_voiceProfileId);
  v4 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics28EnrolledUserSamplingMetaData_voiceProfileId + 8);
  v21 = MEMORY[0x277D837D0];
  *&v20 = v3;
  *(&v20 + 1) = v4;
  sub_247933794(&v20, v23);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = v2;
  sub_24794B0E4(v23, 0xD000000000000012, 0x8000000247957720, isUniquelyReferenced_nonNull_native);
  v6 = v22;
  v7 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics28EnrolledUserSamplingMetaData_aggregatedNumRecords);
  v8 = MEMORY[0x277D83E88];
  v21 = MEMORY[0x277D83E88];
  *&v20 = v7;
  sub_247933794(&v20, v23);
  v9 = swift_isUniquelyReferenced_nonNull_native();
  v22 = v6;
  sub_24794B0E4(v23, 0xD000000000000014, 0x8000000247957630, v9);
  v10 = v22;
  v11 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics28EnrolledUserSamplingMetaData_voiceProfileIdsSampled;
  swift_beginAccess();
  v12 = *(v1 + v11);
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = sub_24793DFD0(v13, 0);
    v15 = sub_24793F1A4(&v20, v14 + 4, v13, v12);

    result = sub_2478FE384();
    if (v15 != v13)
    {
      __break(1u);
      return result;
    }

    v8 = MEMORY[0x277D83E88];
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57560, &unk_2479519C0);
  *&v20 = v14;
  sub_247933794(&v20, v23);
  v17 = swift_isUniquelyReferenced_nonNull_native();
  sub_24794B0E4(v23, 0xD000000000000019, 0x8000000247957740, v17);
  if ((*(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics28EnrolledUserSamplingMetaData_aggregatedEventCountFromLegacy + 8) & 1) == 0)
  {
    v18 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics28EnrolledUserSamplingMetaData_aggregatedEventCountFromLegacy);
    v21 = v8;
    *&v20 = v18;
    sub_247933794(&v20, v23);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    sub_24794B0E4(v23, 0xD00000000000001ELL, 0x8000000247957670, v19);
  }

  return v10;
}

uint64_t sub_24793D798(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics31ButtonPressUserSamplingMetaData_uploadedNumRecordsHS) = 0;
  *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics31ButtonPressUserSamplingMetaData_uploadedNumRecordsJS) = 0;
  *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics28EnrolledUserSamplingMetaData_aggregatedNumRecords) = 0;
  v3 = v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics28EnrolledUserSamplingMetaData_aggregatedEventCountFromLegacy;
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics28EnrolledUserSamplingMetaData_voiceProfileIdsSampled;
  swift_beginAccess();
  v5 = *(v1 + v4);
  *(v1 + v4) = MEMORY[0x277D84FA0];

  return sub_24793C960(a1);
}

uint64_t sub_24793D83C(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics28EnrolledUserSamplingMetaData_aggregatedNumRecords) = 0;
  v3 = v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics28EnrolledUserSamplingMetaData_aggregatedEventCountFromLegacy;
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics28EnrolledUserSamplingMetaData_voiceProfileIdsSampled;
  swift_beginAccess();
  v5 = *(v1 + v4);
  *(v1 + v4) = MEMORY[0x277D84FA0];

  return sub_24793C960(a1);
}

uint64_t sub_24793D8C8()
{
  sub_2478E9620(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_collectionStartDate, &qword_27EE572D0, &unk_2479504E0);
  v1 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_userSamplingId + 8);

  v2 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_locale + 8);

  v3 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics28EnrolledUserSamplingMetaData_voiceProfileId + 8);

  v4 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics28EnrolledUserSamplingMetaData_voiceProfileIdsSampled);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_24793DA18(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();

  sub_24793E0DC(&v5, a1, a2);
  swift_endAccess();
}

uint64_t sub_24793DA94()
{
  v1 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics28EnrolledUserSamplingMetaData_voiceProfileIdsSampled;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_24793DAE4()
{
  result = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics28EnrolledUserSamplingMetaData_aggregatedEventCountFromLegacy);
  v2 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics28EnrolledUserSamplingMetaData_aggregatedEventCountFromLegacy + 8);
  return result;
}

uint64_t sub_24793DAFC(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics28EnrolledUserSamplingMetaData_aggregatedEventCountFromLegacy;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_24793DB18()
{
  v1 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics28EnrolledUserSamplingMetaData_voiceProfileId);
  v2 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics28EnrolledUserSamplingMetaData_voiceProfileId + 8);

  return v1;
}

uint64_t sub_24793DB6C(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics28EnrolledUserSamplingMetaData_voiceProfileId);
  v4 = *(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics28EnrolledUserSamplingMetaData_voiceProfileId + 8);
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_24793DBB4()
{
  v1 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics28EnrolledUserSamplingMetaData_voiceProfileId + 8);

  v2 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics28EnrolledUserSamplingMetaData_voiceProfileIdsSampled);
}

uint64_t sub_24793DBF8()
{
  sub_2478E9620(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_collectionStartDate, &qword_27EE572D0, &unk_2479504E0);
  v1 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_userSamplingId + 8);

  v2 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_locale + 8);

  v3 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics28EnrolledUserSamplingMetaData_voiceProfileId + 8);

  v4 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics28EnrolledUserSamplingMetaData_voiceProfileIdsSampled);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_24793DD68()
{
  sub_2478E9620(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_collectionStartDate, &qword_27EE572D0, &unk_2479504E0);
  v1 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_userSamplingId + 8);

  v2 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_locale + 8);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_24793DE2C()
{
  sub_247928B88();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24793DEE8()
{
  v1 = *v0;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_24793DF74;
  *(v2 + 24) = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57728, &qword_247952130);
  return sub_24794EF14();
}

uint64_t sub_24793DFA0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  return result;
}

void *sub_24793DFD0(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE576C0, &qword_247951E80);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_24793E054(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57268, &unk_2479503B0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_24793E0DC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_24794F584();
  sub_24794EF74();
  v9 = sub_24794F5B4();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_24794F4E4() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_24793E7D4(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_24793E22C(int *a1, int a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_24794F584();
  sub_24794F5A4();
  v7 = sub_24794F5B4();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 4 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_24793E954(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_24793E324(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57730, &unk_247952138);
  result = sub_24794F304();
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
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_24794F584();
      sub_24794EF74();
      result = sub_24794F5B4();
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
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
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

uint64_t sub_24793E584(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57750, &qword_247952168);
  result = sub_24794F304();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 4 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_24794F584();
      sub_24794F5A4();
      result = sub_24794F5B4();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 4 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_24793E7D4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_24793E324(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_24793EAB0();
      goto LABEL_16;
    }

    sub_24793ED4C(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_24794F584();
  sub_24794EF74();
  result = sub_24794F5B4();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_24794F4E4();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_24794F504();
  __break(1u);
  return result;
}

void sub_24793E954(int a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_24793E584(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_24793EC0C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_24793EF84(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_24794F584();
  sub_24794F5A4();
  v10 = sub_24794F5B4();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    v13 = v10 & ~v11;
    type metadata accessor for SISchemaInvocationSource(0);
    a2 = v13;
    while (*(*(v8 + 48) + 4 * a2) != a1)
    {
      a2 = (a2 + 1) & v12;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 4 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_24794F504();
  __break(1u);
}

void *sub_24793EAB0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57730, &unk_247952138);
  v2 = *v0;
  v3 = sub_24794F2F4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_24793EC0C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57750, &qword_247952168);
  v2 = *v0;
  v3 = sub_24794F2F4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_24793ED4C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57730, &unk_247952138);
  result = sub_24794F304();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
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
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_24794F584();

      sub_24794EF74();
      result = sub_24794F5B4();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_24793EF84(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57750, &qword_247952168);
  result = sub_24794F304();
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
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 4 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_24794F584();
      sub_24794F5A4();
      result = sub_24794F5B4();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 4 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

void *sub_24793F1A4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_24793F2FC(void *result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 8) | (4 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_24793F3FC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_24793F554(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x24C1AE630](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_24793E0DC(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_24793F5EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

_BYTE *sub_24793F6A8(uint64_t a1)
{
  if (*(v1 + 16) <= 1u)
  {
    if (*(v1 + 16))
    {
      v2 = sub_24793F75C(a1);
      v3 = type metadata accessor for ButtonPressUserSamplingMetaData(0);
      v4 = *(v3 + 48);
      v5 = *(v3 + 52);
      swift_allocObject();
      return sub_24793CCE8(v2);
    }

    goto LABEL_5;
  }

  if (*(v1 + 16) == 2)
  {
LABEL_5:
    v7 = sub_24793F75C(a1);
    v8 = type metadata accessor for EnrolledUserSamplingMetaData(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    return sub_24793CF98(v7);
  }

  v11 = sub_24793F75C(a1);
  v12 = type metadata accessor for SiriSessionUserSamplingMetaData(0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  return sub_24793B85C(v11);
}

unint64_t sub_24793F75C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57758, &qword_2479521A8);
    v1 = sub_24794F494();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  if (v4)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v11 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v11);
    ++v7;
    if (v4)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v4));
        v4 &= v4 - 1;
        v13 = v12 | (v11 << 6);
        v14 = (*(a1 + 48) + 16 * v13);
        v15 = *v14;
        v16 = v14[1];
        sub_2478F65EC(*(a1 + 56) + 32 * v13, v34);
        *&v33 = v15;
        *(&v33 + 1) = v16;
        v31 = v33;
        v32[0] = v34[0];
        v32[1] = v34[1];
        v17 = v33;
        sub_247933794(v32, &v25);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57348, &unk_2479521B0);
        swift_dynamicCast();
        v29 = v27;
        v30 = v28;
        v26 = v27;
        v27 = v28;
        result = sub_24792BEF8(v17, *(&v17 + 1));
        if (v18)
        {
          v8 = v1[6] + 16 * result;
          v9 = *(v8 + 8);
          *v8 = v17;
          v10 = result;

          result = sub_2478F6648(&v26, v1[7] + 32 * v10, &qword_27EE57348, &unk_2479521B0);
          v7 = v11;
          if (!v4)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v1[2] >= v1[3])
          {
            goto LABEL_20;
          }

          *(v1 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v1[6] + 16 * result) = v17;
          v19 = (v1[7] + 32 * result);
          v20 = v27;
          *v19 = v26;
          v19[1] = v20;
          v21 = v1[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v1[2] = v23;
          v7 = v11;
          if (!v4)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_24793F9E8(uint64_t a1, uint64_t a2)
{
  v103 = a1;
  v104 = a2;
  v2 = sub_24794EBB4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v94 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v95 = &v94 - v8;
  MEMORY[0x28223BE20](v7);
  v98 = &v94 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v94 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v94 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v94 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v96 = &v94 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v97 = &v94 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v94 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v102 = &v94 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v94 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  v38 = &v94 - v37;
  v39 = MEMORY[0x28223BE20](v36);
  v41 = &v94 - v40;
  MEMORY[0x28223BE20](v39);
  v100 = v3;
  v101 = v2;
  v42 = v3 + 56;
  v43 = *(v3 + 56);
  v45 = &v94 - v44;
  v105 = v43;
  v106 = v42;
  v43();
  if (*(v99 + 16) > 1u)
  {
    if (*(v99 + 16) != 2)
    {
      v75 = v45;
      sub_2478EE3C8(v45, v20);
      v76 = type metadata accessor for SiriSessionUserSamplingMetaData(0);
      v77 = *(v76 + 48);
      v78 = *(v76 + 52);
      v50 = swift_allocObject();
      v79 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics31SiriSessionUserSamplingMetaData_enrollmentMetadata;
      *(v50 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics31SiriSessionUserSamplingMetaData_siriSessionSelected) = 0;
      *(v50 + v79) = 0;
      sub_2478EE3C8(v20, v17);
      v80 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_collectionStartDate;
      v81 = v101;
      v82 = v105;
      (v105)(v50 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_collectionStartDate, 1, 1, v101);
      v83 = (v50 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_userSamplingId);
      *v83 = 0;
      v83[1] = 0;
      v99 = v83;
      *(v50 + 16) = 0;
      sub_2478EE3C8(v17, v14);
      v84 = v100;
      if ((*(v100 + 48))(v14, 1, v81) == 1)
      {
        sub_2478F6EA4(v17);
        sub_2478F6EA4(v20);
        sub_2478F6EA4(v75);
        sub_2478F6EA4(v14);
        v73 = v102;
        (v82)(v102, 1, 1, v81);
        swift_beginAccess();
        v74 = v50 + v80;
        goto LABEL_10;
      }

      v90 = v94;
      (*(v84 + 32))(v94, v14, v81);
      type metadata accessor for Utils();
      v87 = v102;
      sub_247940B60(v90, v102);
      (*(v84 + 8))(v90, v81);
      sub_2478F6EA4(v17);
      sub_2478F6EA4(v20);
      sub_2478F6EA4(v75);
      (v105)(v87, 0, 1, v81);
      swift_beginAccess();
      v74 = v50 + v80;
LABEL_15:
      v85 = v87;
      goto LABEL_16;
    }

LABEL_6:
    v62 = v45;
    sub_2478EE3C8(v45, v41);
    v63 = type metadata accessor for EnrolledUserSamplingMetaData(0);
    v64 = *(v63 + 48);
    v65 = *(v63 + 52);
    v50 = swift_allocObject();
    v66 = v50 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics28EnrolledUserSamplingMetaData_aggregatedEventCountFromLegacy;
    v67 = (v50 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics28EnrolledUserSamplingMetaData_voiceProfileId);
    *v67 = 0;
    v67[1] = 0xE000000000000000;
    *(v50 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics28EnrolledUserSamplingMetaData_aggregatedNumRecords) = 0;
    *(v50 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics28EnrolledUserSamplingMetaData_voiceProfileIdsSampled) = MEMORY[0x277D84FA0];
    *v66 = 0;
    *(v66 + 8) = 1;
    sub_2478EE3C8(v41, v38);
    v68 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_collectionStartDate;
    v69 = v101;
    v70 = v105;
    (v105)(v50 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_collectionStartDate, 1, 1, v101);
    v71 = (v50 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_userSamplingId);
    *v71 = 0;
    v71[1] = 0;
    v99 = v71;
    *(v50 + 16) = 0;
    sub_2478EE3C8(v38, v35);
    v72 = v100;
    if ((*(v100 + 48))(v35, 1, v69) == 1)
    {
      sub_2478F6EA4(v38);
      sub_2478F6EA4(v41);
      sub_2478F6EA4(v62);
      sub_2478F6EA4(v35);
      v73 = v102;
      (v70)(v102, 1, 1, v69);
      swift_beginAccess();
      v74 = v50 + v68;
LABEL_10:
      v85 = v73;
LABEL_16:
      sub_2478F6648(v85, v74, &qword_27EE572D0, &unk_2479504E0);
      swift_endAccess();
      v57 = v99;
      goto LABEL_17;
    }

    v86 = v98;
    (*(v72 + 32))(v98, v35, v69);
    type metadata accessor for Utils();
    v94 = v62;
    v87 = v102;
    sub_247940B60(v86, v102);
    (*(v72 + 8))(v86, v69);
    sub_2478F6EA4(v38);
    sub_2478F6EA4(v41);
    sub_2478F6EA4(v94);
    (v70)(v87, 0, 1, v69);
    swift_beginAccess();
    v74 = v50 + v68;
    goto LABEL_15;
  }

  if (!*(v99 + 16))
  {
    goto LABEL_6;
  }

  v46 = v45;
  sub_2478EE3C8(v45, v30);
  v47 = type metadata accessor for ButtonPressUserSamplingMetaData(0);
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  v50 = swift_allocObject();
  *(v50 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics31ButtonPressUserSamplingMetaData_uploadedNumRecordsHS) = 0;
  *(v50 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics31ButtonPressUserSamplingMetaData_uploadedNumRecordsJS) = 0;
  v51 = v97;
  sub_2478EE3C8(v30, v97);
  v52 = v50 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics28EnrolledUserSamplingMetaData_aggregatedEventCountFromLegacy;
  v53 = (v50 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics28EnrolledUserSamplingMetaData_voiceProfileId);
  *v53 = 0;
  v53[1] = 0xE000000000000000;
  *(v50 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics28EnrolledUserSamplingMetaData_aggregatedNumRecords) = 0;
  *(v50 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics28EnrolledUserSamplingMetaData_voiceProfileIdsSampled) = MEMORY[0x277D84FA0];
  *v52 = 0;
  *(v52 + 8) = 1;
  v54 = v96;
  sub_2478EE3C8(v51, v96);
  v55 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_collectionStartDate;
  v56 = v101;
  (v105)(v50 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_collectionStartDate, 1, 1, v101);
  v57 = (v50 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_userSamplingId);
  *v57 = 0;
  v57[1] = 0;
  *(v50 + 16) = 0;
  sub_2478EE3C8(v54, v23);
  v58 = v100;
  if ((*(v100 + 48))(v23, 1, v56) == 1)
  {
    sub_2478F6EA4(v54);
    sub_2478F6EA4(v51);
    sub_2478F6EA4(v30);
    sub_2478F6EA4(v46);
    sub_2478F6EA4(v23);
    v59 = v102;
    v60 = v102;
    v61 = 1;
  }

  else
  {
    v88 = *(v58 + 32);
    v99 = v30;
    v89 = v95;
    v88(v95, v23, v56);
    type metadata accessor for Utils();
    v94 = v46;
    v59 = v102;
    sub_247940B60(v89, v102);
    (*(v58 + 8))(v89, v56);
    sub_2478F6EA4(v54);
    sub_2478F6EA4(v51);
    sub_2478F6EA4(v99);
    sub_2478F6EA4(v94);
    v60 = v59;
    v61 = 0;
  }

  (v105)(v60, v61, 1, v56);
  swift_beginAccess();
  sub_2478F6648(v59, v50 + v55, &qword_27EE572D0, &unk_2479504E0);
  swift_endAccess();
LABEL_17:
  v91 = (v50 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_locale);
  v92 = v104;
  *v91 = v103;
  v91[1] = v92;
  *v57 = 0;
  v57[1] = 0;
  *(v50 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_uploadedNumRecords) = 0;

  return v50;
}

void sub_247940408()
{
  v1 = *(v0 + 48);
  *(v1 + 24);
  v2 = *(**(v0 + 16) + 256);

  v2(v3);
  v4 = *(v1 + 16);
  v5 = sub_24794EE74();

  v6 = sub_24794EEF4();

  [v4 setObject:v5 forKey:v6];
}

void sub_247940594()
{
  v2 = v0;
  v3 = (*(**(v0 + 16) + 272))();
  if (!v1)
  {
    v5 = v4;
    v6 = *(v0 + 56);
    v7 = v3;
    v8 = sub_24793F9E8(v2[8], v2[9]);
    v9 = v2[2];
    v2[2] = v8;

    (*(*v8 + 280))(v7, v5);

    sub_247940408();
  }
}

void sub_2479406A8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24794EBB4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(**(v1 + 16) + 408);

  v9(a1);

  sub_247940408();
  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v10 = sub_24794ED34();
  __swift_project_value_buffer(v10, qword_27EE58DF8);
  (*(v5 + 16))(v8, a1, v4);

  v11 = sub_24794ED14();
  v12 = sub_24794F174();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24 = v14;
    *v13 = 136315394;
    sub_2478EC590();
    v15 = sub_24794F4D4();
    v17 = v16;
    (*(v5 + 8))(v8, v4);
    v18 = sub_247924380(v15, v17, &v24);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2080;
    v19 = (*(v2 + 16) + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_userSamplingId);
    if (v19[1])
    {
      v20 = *v19;
      v21 = v19[1];
    }

    else
    {
      v21 = 0xE300000000000000;
      v20 = 7104878;
    }

    v22 = sub_247924380(v20, v21, &v24);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_2478E1000, v11, v12, "#SamplingPolicyMetaDataManager: Device selected for sampling on %s with new userSamplingId: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1AF180](v14, -1, -1);
    MEMORY[0x24C1AF180](v13, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }
}

void sub_2479409C0()
{
  v1 = v0[6];
  *(v1 + 24);
  v2 = *(v1 + 16);
  v3 = sub_24794EEF4();

  [v2 removeObjectForKey_];

  v4 = v0[8];
  v5 = v0[9];
  v6 = v0;
  v7 = v0[7];
  v8 = sub_24793F9E8(v4, v5);
  v9 = v6[2];
  v6[2] = v8;

  sub_247940408();
}

uint64_t sub_247940AE4()
{
  v1 = v0[2];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[9];

  return swift_deallocClassInstance();
}

uint64_t sub_247940B60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v25 = sub_24794EBB4();
  v3 = *(v25 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v25);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24794ED04();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v13 = sub_24794EEF4();
  [v12 setDateFormat_];

  sub_24794ECF4();
  v14 = sub_24794ECE4();
  v15 = *(v8 + 8);
  v15(v11, v7);
  [v12 setTimeZone_];

  v24 = a1;
  v16 = sub_24794EB34();
  v17 = [v12 stringFromDate_];

  if (!v17)
  {
    sub_24794EF04();
    v17 = sub_24794EEF4();
  }

  v18 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v19 = sub_24794EEF4();
  [v18 setDateFormat_];

  sub_24794ECF4();
  v20 = sub_24794ECE4();
  v15(v11, v7);
  [v18 setTimeZone_];

  v21 = [v18 dateFromString_];
  if (!v21)
  {
    return (*(v3 + 16))(v26, v24, v25);
  }

  sub_24794EB94();

  return (*(v3 + 32))(v26, v6, v25);
}

uint64_t sub_247940E90@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v58 = a4;
  v7 = sub_24794ED04();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_24794EBB4();
  v59 = *(v57 - 8);
  v12 = *(v59 + 64);
  v13 = MEMORY[0x28223BE20](v57);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v56 = &v56 - v16;
  v60 = 0xD000000000000013;
  v61 = 0x80000002479525A0;
  MEMORY[0x24C1AE4C0](0x6144726F68636E41, 0xEA00000000006574);
  v18 = v60;
  v17 = v61;
  if (a3)
  {

    MEMORY[0x24C1AE4C0](95, 0xE100000000000000);

    MEMORY[0x24C1AE4C0](a2, a3);

    v18 = v60;
    v17 = v61;
  }

  if (a1 && (v19 = sub_24794EEF4(), v20 = [a1 stringForKey_], v19, v20))
  {

    v21 = sub_24794EF04();
    v23 = v22;
    v24 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v25 = sub_24794EEF4();
    [v24 setDateFormat_];

    sub_24794ECF4();
    v26 = sub_24794ECE4();
    (*(v8 + 8))(v11, v7);
    [v24 setTimeZone_];

    v27 = [v24 dateFromString_];
    if (v27)
    {

      v28 = v56;
      sub_24794EB94();

      v29 = v57;
      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v30 = sub_24794ED34();
      __swift_project_value_buffer(v30, qword_27EE58DF8);
      (*(v59 + 16))(v15, v28, v29);
      v31 = sub_24794ED14();
      v32 = sub_24794F154();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v60 = v34;
        *v33 = 136315138;
        sub_2479176E4(&qword_27EE57288);
        v35 = sub_24794F4D4();
        v37 = v36;
        (*(v59 + 8))(v15, v29);
        v38 = sub_247924380(v35, v37, &v60);

        *(v33 + 4) = v38;
        _os_log_impl(&dword_2478E1000, v31, v32, "#SamplingUtils: get UserDefault SpeakerIdOneSession AnchorDate is %s", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v34);
        MEMORY[0x24C1AF180](v34, -1, -1);
        MEMORY[0x24C1AF180](v33, -1, -1);
      }

      else
      {

        (*(v59 + 8))(v15, v29);
      }

      v55 = v58;
      (*(v59 + 32))(v58, v28, v29);
      return (*(v59 + 56))(v55, 0, 1, v29);
    }

    else
    {
      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v49 = sub_24794ED34();
      __swift_project_value_buffer(v49, qword_27EE58DF8);

      v50 = sub_24794ED14();
      v51 = sub_24794F164();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v60 = v53;
        *v52 = 136315138;
        v54 = sub_247924380(v21, v23, &v60);

        *(v52 + 4) = v54;
        _os_log_impl(&dword_2478E1000, v50, v51, "#SamplingUtils: failed to parse SpeakerIdOneSession anchor date string: %s", v52, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v53);
        MEMORY[0x24C1AF180](v53, -1, -1);
        MEMORY[0x24C1AF180](v52, -1, -1);
      }

      else
      {
      }

      return (*(v59 + 56))(v58, 1, 1, v57);
    }
  }

  else
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v39 = sub_24794ED34();
    __swift_project_value_buffer(v39, qword_27EE58DF8);

    v40 = sub_24794ED14();
    v41 = sub_24794F154();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v60 = v43;
      *v42 = 136315138;
      v44 = sub_247924380(v18, v17, &v60);

      *(v42 + 4) = v44;
      _os_log_impl(&dword_2478E1000, v40, v41, "#SamplingUtils: get UserDefault SpeakerIdOneSession AnchorDate is nil for key: %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x24C1AF180](v43, -1, -1);
      MEMORY[0x24C1AF180](v42, -1, -1);
    }

    else
    {
    }

    v46 = v57;
    v45 = v58;
    v47 = *(v59 + 56);

    return v47(v45, 1, 1, v46);
  }
}

uint64_t sub_247941654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[25] = a5;
  v6[26] = a6;
  v6[24] = a4;
  return MEMORY[0x2822009F8](sub_247941678, 0, 0);
}

uint64_t sub_247941678()
{
  v1 = v0[24];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_247941794;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57790, &unk_247952320);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_247941BC8;
  v0[13] = &block_descriptor_33;
  v0[14] = v2;
  [v1 currentAuthorizationStyle_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_247941794()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 216) = v2;
  if (v2)
  {
    v3 = sub_2479419FC;
  }

  else
  {
    v3 = sub_2479418A4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2479418A4()
{
  if ((v0[18] - 3) > 1)
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
      _os_log_impl(&dword_2478E1000, v3, v4, "#SamplingUtils: Location service is not authorized", v5, 2u);
      MEMORY[0x24C1AF180](v5, -1, -1);
    }

    v1 = 0;
  }

  else
  {
    v1 = 1;
  }

  v7 = v0[25];
  v6 = v0[26];
  swift_beginAccess();
  *(v7 + 16) = v1;
  sub_24794F1D4();
  v8 = v0[1];

  return v8();
}

uint64_t sub_2479419FC()
{
  v1 = v0[27];
  swift_willThrow();
  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v2 = v0[27];
  v3 = sub_24794ED34();
  __swift_project_value_buffer(v3, qword_27EE58DF8);
  v4 = v2;
  v5 = sub_24794ED14();
  v6 = sub_24794F144();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[27];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_2478E1000, v5, v6, "#SamplingUtils: Unable to check location access authorization: %@", v9, 0xCu);
    sub_2478E9620(v10, &qword_27EE57280, &unk_2479503C0);
    MEMORY[0x24C1AF180](v10, -1, -1);
    MEMORY[0x24C1AF180](v9, -1, -1);
  }

  else
  {
  }

  v13 = v0[25];
  v14 = v0[26];
  swift_beginAccess();
  *(v13 + 16) = 0;
  sub_24794F1D4();
  v15 = v0[1];

  return v15();
}

uint64_t sub_247941BC8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574A8, &qword_247951540);
    v8 = swift_allocError();
    *v9 = a4;
    v10 = a4;

    return MEMORY[0x282200958](v7, v8);
  }

  else
  {
    v11 = *(*(v7 + 64) + 40);
    *v11 = a2;
    v11[1] = a3;

    return MEMORY[0x282200950](v7);
  }
}

uint64_t sub_247941C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57788, &qword_2479522F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_2478E9680(a3, v27 - v11, &qword_27EE57788, &qword_2479522F0);
  v13 = sub_24794F0E4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2478E9620(v12, &qword_27EE57788, &qword_2479522F0);
  }

  else
  {
    sub_24794F0D4();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_24794F0C4();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_24794EF44() + 32;
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

      sub_2478E9620(a3, &qword_27EE57788, &qword_2479522F0);

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

  sub_2478E9620(a3, &qword_27EE57788, &qword_2479522F0);
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

uint64_t sub_247941F98(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v7 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574A8, &qword_247951540);
    v8 = swift_allocError();
    *v9 = a4;
    v10 = a4;

    return MEMORY[0x282200958](v7, v8);
  }

  else
  {
    if (a3)
    {
      v11 = sub_24794EF04();
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    v13 = *(*(v7 + 64) + 40);
    *v13 = a2;
    *(v13 + 8) = v11;
    *(v13 + 16) = v12;

    return MEMORY[0x282200950](v7);
  }
}

uint64_t sub_247942084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57278, &unk_247950590) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57760, &qword_2479522B8) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57768, &qword_2479522C0) - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57770, &qword_2479522C8) - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v9 = sub_24794EC24();
  v4[10] = v9;
  v10 = *(v9 - 8);
  v4[11] = v10;
  v11 = *(v10 + 64) + 15;
  v4[12] = swift_task_alloc();
  v12 = sub_24794EA84();
  v4[13] = v12;
  v13 = *(v12 - 8);
  v4[14] = v13;
  v14 = *(v13 + 64) + 15;
  v4[15] = swift_task_alloc();
  v15 = sub_24794EBB4();
  v4[16] = v15;
  v16 = *(v15 - 8);
  v4[17] = v16;
  v17 = *(v16 + 64) + 15;
  v4[18] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57778, &qword_2479522D0) - 8) + 64) + 15;
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_247942324, 0, 0);
}

uint64_t sub_247942324()
{
  v42 = v0[20];
  v43 = v0[19];
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[11];
  v37 = v0[12];
  v38 = v0[10];
  v39 = v0[9];
  v40 = v0[8];
  v41 = v0[7];
  v8 = v0[4];
  v36 = v0[5];
  v9 = v0[3];
  v10 = *MEMORY[0x277D65378];
  sub_24794EF04();
  (*(v2 + 16))(v1, v9, v3);
  (*(v5 + 16))(v4, v8, v6);
  (*(v7 + 16))(v37, v36, v38);
  v11 = sub_24794ED64();
  (*(*(v11 - 8) + 56))(v39, 1, 1, v11);
  v12 = sub_24794ED94();
  (*(*(v12 - 8) + 56))(v40, 1, 1, v12);
  v13 = sub_24794ED44();
  (*(*(v13 - 8) + 56))(v41, 1, 1, v13);
  sub_24794ED54();
  sub_2478E9680(v42, v43, &qword_27EE57778, &qword_2479522D0);
  v14 = sub_24794ED84();
  v0[21] = v14;
  v15 = *(v14 - 8);
  v0[22] = v15;
  if ((*(v15 + 48))(v43, 1, v14) == 1)
  {
    v16 = v0[19];
    v17 = v0[6];
    sub_2478E9620(v0[20], &qword_27EE57778, &qword_2479522D0);
    sub_2478E9620(v16, &qword_27EE57778, &qword_2479522D0);
    v18 = sub_24794EC04();
    v19 = *(*(v18 - 8) + 56);
    v19(v17, 1, 1, v18);
    v20 = v0[2];
    sub_2478E9620(v0[6], &qword_27EE57278, &unk_247950590);
    v19(v20, 1, 1, v18);
    v22 = v0[19];
    v21 = v0[20];
    v23 = v0[18];
    v24 = v0[15];
    v25 = v0[12];
    v27 = v0[8];
    v26 = v0[9];
    v29 = v0[6];
    v28 = v0[7];

    v30 = v0[1];

    return v30();
  }

  else
  {
    v32 = *(MEMORY[0x277CDCA80] + 4);
    v33 = swift_task_alloc();
    v0[23] = v33;
    *v33 = v0;
    v33[1] = sub_247942750;
    v34 = v0[19];
    v35 = v0[6];

    return MEMORY[0x28212BC78](v35);
  }
}

uint64_t sub_247942750()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 168);
  v4 = *(*v0 + 152);
  v6 = *v0;

  (*(v2 + 8))(v4, v3);

  return MEMORY[0x2822009F8](sub_2479428A8, 0, 0);
}

uint64_t sub_2479428A8()
{
  v1 = v0[6];
  sub_2478E9620(v0[20], &qword_27EE57778, &qword_2479522D0);
  v2 = sub_24794EC04();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[6];
  v6 = v0[2];
  if (v4 == 1)
  {
    sub_2478E9620(v0[6], &qword_27EE57278, &unk_247950590);
    v7 = 1;
  }

  else
  {
    (*(v3 + 32))(v0[2], v0[6], v2);
    v7 = 0;
  }

  (*(v3 + 56))(v6, v7, 1, v2);
  v9 = v0[19];
  v8 = v0[20];
  v10 = v0[18];
  v11 = v0[15];
  v12 = v0[12];
  v14 = v0[8];
  v13 = v0[9];
  v16 = v0[6];
  v15 = v0[7];

  v17 = v0[1];

  return v17();
}

uint64_t sub_247942B3C()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedPreferences];
  v2 = [v1 assistantIsEnabled];

  if (v2)
  {
    return 1;
  }

  v4 = [v0 sharedPreferences];
  v5 = [v4 dictationIsEnabled];

  return v5;
}

BOOL sub_247942BD8()
{
  v0 = [objc_opt_self() sharedPreferences];
  v1 = [v0 siriDataSharingOptInStatus];

  return v1 == 1;
}

uint64_t sub_247942C34()
{
  v0 = [objc_opt_self() sharedPreferences];
  v1 = [v0 longLivedIdentifierUploadingEnabled];

  return v1 ^ 1;
}

uint64_t sub_247942CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2478E8998;

  return sub_247944700(a1, a2, a3, a4, a5);
}

uint64_t sub_247942D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_247942DA4, 0, 0);
}

uint64_t sub_247942DA4()
{
  if (qword_27EE571E8 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_247942E74;
  v3 = v0[4];
  v2 = v0[5];
  v5 = v0[2];
  v4 = v0[3];

  return sub_247938D74(v5, v2, v4, v3);
}

uint64_t sub_247942E74()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

id sub_247942F68()
{
  v0 = objc_opt_self();
  v1 = sub_24794EEF4();
  v2 = [v0 supportsMphForLanguageCode_];

  return v2;
}

uint64_t sub_247942FDC()
{
  v0 = [objc_opt_self() getSiriLanguageWithFallback_];
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = sub_24794EF04();

  return v2;
}

uint64_t sub_24794305C()
{
  v0 = [objc_opt_self() sharedPreferences];
  v1 = [v0 siriDataSharingOptInStatus];

  if (v1 >= 4)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_2479430B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2478E8998;

  return sub_247942084(a1, a2, a3, a4);
}

uint64_t sub_24794317C(uint64_t a1, uint64_t a2, SEL *a3)
{
  v3 = [objc_opt_self() *a3];
  v4 = sub_24794EF04();

  return v4;
}

id sub_24794321C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v18[1] = *MEMORY[0x277D85DE8];
  v8 = sub_24794EA34();
  v18[0] = 0;
  v9 = [v4 initForReading:v8 commonFormat:a2 interleaved:a3 & 1 error:v18];

  v10 = v18[0];
  if (v9)
  {
    v11 = sub_24794EA84();
    v12 = *(*(v11 - 8) + 8);
    v13 = v10;
    v12(a1, v11);
  }

  else
  {
    v14 = v18[0];
    sub_24794E9D4();

    swift_willThrow();
    v15 = sub_24794EA84();
    (*(*(v15 - 8) + 8))(a1, v15);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t sub_247943378(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_247943470;

  return v7(a1);
}

uint64_t sub_247943470()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void *sub_247943568(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57530, &unk_247951740);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_2479435DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_24794F024();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_247943B68();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_24794F394();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_247943B68()
{
  v0 = sub_24794F034();
  v4 = sub_247943BE8(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_247943BE8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_24794EF64();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_24794F244();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_247943568(v9, 0);
  v12 = sub_247943D40(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_24794EF64();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_24794F394();
LABEL_4:

  return sub_24794EF64();
}

unint64_t sub_247943D40(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_247943F60(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_24794EFE4();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_24794F394();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_247943F60(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_24794EFC4();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_247943F60(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_24794EFF4();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x24C1AE4F0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

BOOL sub_247943FDC(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_24794F334();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

uint64_t sub_2479440D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE577B0, &qword_247952348);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  v17 = a1;
  v18 = a2;
  v15 = 1769105747;
  v16 = 0xE400000000000000;
  v8 = sub_24794EC24();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 1, 1, v8);
  sub_24791F02C();
  v10 = sub_24794F264();
  sub_2478E9620(v7, &qword_27EE577B0, &qword_247952348);
  if (!v10)
  {
    return 2;
  }

  v17 = a1;
  v18 = a2;
  v15 = 21320;
  v16 = 0xE200000000000000;
  v11 = 1;
  v9(v7, 1, 1, v8);
  v12 = sub_24794F264();
  sub_2478E9620(v7, &qword_27EE577B0, &qword_247952348);
  if (v12)
  {
    v17 = a1;
    v18 = a2;
    v15 = 0x6972695320796548;
    v16 = 0xE800000000000000;
    v9(v7, 1, 1, v8);
    v13 = sub_24794F264();
    sub_2478E9620(v7, &qword_27EE577B0, &qword_247952348);
    return v13 == 0;
  }

  return v11;
}

uint64_t sub_247944340()
{
  v0 = objc_opt_self();
  result = [v0 sharedPreferences];
  if (!result)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v2 = result;
  v3 = sub_24794EEF4();
  v4 = [v2 localizedTriggerPhraseForLanguageCode_];

  if (v4)
  {
    sub_24794EF04();
  }

  result = [v0 sharedPreferences];
  if (!result)
  {
    goto LABEL_13;
  }

  v5 = result;
  v6 = sub_24794EEF4();
  v7 = [v5 localizedCompactTriggerPhraseForLanguageCode_];

  if (v7)
  {
    sub_24794EF04();
  }

  sub_24794EF24();
  sub_24794EF24();

  v8 = sub_24794F004();

  if (v8)
  {

    return 1;
  }

  else
  {
    sub_24794EF24();
    sub_24794EF24();

    v9 = sub_24794F004();

    if (v9)
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_247944574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[1] = a2;
  v4 = sub_24794EA84();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  if (v9)
  {
    v10 = (v6 + 8);
    v11 = (a3 + 40);
    do
    {
      v13 = *(v11 - 1);
      v12 = *v11;

      sub_24794EA14();
      sub_24794EA24();
      (*v10)(v8, v4);
      if (sub_24794F004())
      {
        v14 = sub_24794F014();

        if (v14)
        {
          return v13;
        }
      }

      else
      {
      }

      v11 += 2;
      --v9;
    }

    while (v9);
  }

  return 0;
}

uint64_t sub_247944700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[24] = a4;
  v5[25] = a5;
  v5[22] = a2;
  v5[23] = a3;
  v5[21] = a1;
  return MEMORY[0x2822009F8](sub_247944728, 0, 0);
}

uint64_t sub_247944728()
{
  v23 = v0;
  sub_247944574(v0[21], v0[22], v0[25]);
  if (v1)
  {
    v3 = v0[23];
    v2 = v0[24];
    v5 = v0[21];
    v4 = v0[22];
    v21 = objc_opt_self();
    v6 = sub_24794EEF4();
    v0[26] = v6;

    v7 = sub_24794EEF4();
    v0[27] = v7;
    v8 = sub_24794EEF4();
    v0[28] = v8;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_247944A64;
    v9 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57780, &unk_2479522E0);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_247941F98;
    v0[13] = &block_descriptor_1;
    v0[14] = v9;
    [v21 uploadAudioFilePath:v6 requestId:v7 audioId:v8 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v10 = v0[22];
    v11 = sub_24794ED34();
    __swift_project_value_buffer(v11, qword_27EE58DF8);

    v12 = sub_24794ED14();
    v13 = sub_24794F164();

    if (os_log_type_enabled(v12, v13))
    {
      v15 = v0[21];
      v14 = v0[22];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_247924380(v15, v14, &v22);
      _os_log_impl(&dword_2478E1000, v12, v13, "SamplingUtils: Cannot get the file path for requestId: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x24C1AF180](v17, -1, -1);
      MEMORY[0x24C1AF180](v16, -1, -1);
    }

    sub_2478E95CC();
    swift_allocError();
    *v18 = xmmword_24794FEF0;
    *(v18 + 16) = 2;
    swift_willThrow();
    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_247944A64()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 232) = v2;
  if (v2)
  {
    v3 = sub_247944F7C;
  }

  else
  {
    v3 = sub_247944B74;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_247944B74()
{
  v35 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 208);
  v3 = *(v0 + 144);
  v5 = *(v0 + 152);
  v4 = *(v0 + 160);

  if (v3 == 1)
  {

    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 192);
    v7 = *(v0 + 176);
    v8 = sub_24794ED34();
    __swift_project_value_buffer(v8, qword_27EE58DF8);

    v9 = sub_24794ED14();
    v10 = sub_24794F154();

    if (os_log_type_enabled(v9, v10))
    {
      v12 = *(v0 + 184);
      v11 = *(v0 + 192);
      v14 = *(v0 + 168);
      v13 = *(v0 + 176);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v34[0] = v16;
      *v15 = 136315394;
      *(v15 + 4) = sub_247924380(v14, v13, v34);
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_247924380(v12, v11, v34);
      _os_log_impl(&dword_2478E1000, v9, v10, "#SamplingUtils: upload requestId: %s with audioId: %s successfully finished", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1AF180](v16, -1, -1);
      MEMORY[0x24C1AF180](v15, -1, -1);
    }

    v17 = *(v0 + 8);
  }

  else
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v18 = *(v0 + 192);
    v19 = *(v0 + 176);
    v20 = sub_24794ED34();
    __swift_project_value_buffer(v20, qword_27EE58DF8);

    v21 = sub_24794ED14();
    v22 = sub_24794F164();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = *(v0 + 184);
      v33 = *(v0 + 192);
      v25 = *(v0 + 168);
      v24 = *(v0 + 176);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v34[0] = v27;
      *v26 = 136315650;
      *(v26 + 4) = sub_247924380(v25, v24, v34);
      *(v26 + 12) = 2080;
      *(v26 + 14) = sub_247924380(v23, v33, v34);
      *(v26 + 22) = 2080;
      *(v0 + 80) = v5;
      *(v0 + 88) = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57438, &qword_247950E90);
      v28 = sub_24794EF14();
      v30 = sub_247924380(v28, v29, v34);

      *(v26 + 24) = v30;
      _os_log_impl(&dword_2478E1000, v21, v22, "#SamplingUtils: upload requestId: %s with audioId: %s did not success as with error message: %s", v26, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1AF180](v27, -1, -1);
      MEMORY[0x24C1AF180](v26, -1, -1);
    }

    else
    {
    }

    sub_2478E95CC();
    swift_allocError();
    *v31 = xmmword_24794FF00;
    *(v31 + 16) = 2;
    swift_willThrow();
    v17 = *(v0 + 8);
  }

  return v17();
}

uint64_t sub_247944F7C()
{
  v1 = v0[28];
  v2 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  swift_willThrow();

  v5 = v0[29];
  v6 = v0[1];

  return v6();
}

uint64_t sub_247945000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a2;
  v25[1] = a1;
  v4 = sub_24794ECB4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_24794ECC4();
  v9 = *(v26 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v26);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v25 - v15;
  v17 = sub_24794EBB4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24794EC94();
  result = (*(v5 + 104))(v8, *MEMORY[0x277CC9968], v4);
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_24794EC84();
    (*(v5 + 8))(v8, v4);
    (*(v9 + 8))(v12, v26);
    if ((*(v18 + 48))(v16, 1, v17) == 1)
    {
      sub_2478E9620(v16, &qword_27EE572D0, &unk_2479504E0);
      v23 = 0;
    }

    else
    {
      (*(v18 + 32))(v21, v16, v17);
      sub_2479176E4(&qword_27EE57798);
      v24 = sub_24794EED4();
      (*(v18 + 8))(v21, v17);
      v23 = v24 ^ 1;
    }

    return v23 & 1;
  }

  return result;
}

unsigned __int8 *sub_24794534C(_BYTE *a1, void *a2)
{
  v2 = 0xEE00435346737365;
  v3 = 0x72506E6F74747562;
  v4 = 0x8000000247952580;
  v5 = 0xD000000000000013;
  if (*a1 == 2)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v4 = 0x80000002479525A0;
  }

  if (!*a1)
  {
    v3 = 0xD000000000000015;
    v2 = 0x8000000247952550;
  }

  if (*a1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*a1 <= 1u)
  {
    v7 = v2;
  }

  else
  {
    v7 = v4;
  }

  v51 = v6;
  v52 = v7;

  MEMORY[0x24C1AE4C0](0x726550746E756F43, 0xEB00000000796144);

  if (a2 && (v9 = sub_24794EEF4(), v10 = [a2 stringForKey_], v9, v10))
  {
    v11 = sub_24794EF04();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0xE000000000000000;
  }

  v14 = HIBYTE(v13) & 0xF;
  v15 = v11 & 0xFFFFFFFFFFFFLL;
  if ((v13 & 0x2000000000000000) != 0)
  {
    v16 = HIBYTE(v13) & 0xF;
  }

  else
  {
    v16 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {

    v39 = 0;
    v38 = 1;
    goto LABEL_81;
  }

  if ((v13 & 0x1000000000000000) != 0)
  {

    LOBYTE(v50) = 0;
    v20 = sub_2479435DC(v11, v13, 10);
    v38 = v48;
    goto LABEL_78;
  }

  if ((v13 & 0x2000000000000000) == 0)
  {

    if ((v11 & 0x1000000000000000) == 0)
    {
      goto LABEL_92;
    }

    result = ((v13 & 0xFFFFFFFFFFFFFFFLL) + 32);
    while (1)
    {
      v18 = *result;
      if (v18 == 43)
      {
        if (v15 < 1)
        {
          goto LABEL_95;
        }

        v19 = v15 - 1;
        if (v15 == 1)
        {
          goto LABEL_76;
        }

        v20 = 0;
        if (result)
        {
          v27 = result + 1;
          while (1)
          {
            v28 = *v27 - 48;
            if (v28 > 9)
            {
              goto LABEL_76;
            }

            v29 = 10 * v20;
            if ((v20 * 10) >> 64 != (10 * v20) >> 63)
            {
              goto LABEL_76;
            }

            v20 = v29 + v28;
            if (__OFADD__(v29, v28))
            {
              goto LABEL_76;
            }

            ++v27;
            if (!--v19)
            {
              goto LABEL_77;
            }
          }
        }
      }

      else if (v18 == 45)
      {
        if (v15 < 1)
        {
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
          goto LABEL_96;
        }

        v19 = v15 - 1;
        if (v15 == 1)
        {
          goto LABEL_76;
        }

        v20 = 0;
        if (result)
        {
          v21 = result + 1;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v20;
            if ((v20 * 10) >> 64 != (10 * v20) >> 63)
            {
              break;
            }

            v20 = v23 - v22;
            if (__OFSUB__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v19)
            {
              goto LABEL_77;
            }
          }

LABEL_76:
          v20 = 0;
          LOBYTE(v19) = 1;
          goto LABEL_77;
        }
      }

      else
      {
        if (!v15)
        {
          goto LABEL_76;
        }

        v20 = 0;
        if (result)
        {
          do
          {
            v33 = *result - 48;
            if (v33 > 9)
            {
              goto LABEL_76;
            }

            v34 = 10 * v20;
            if ((v20 * 10) >> 64 != (10 * v20) >> 63)
            {
              goto LABEL_76;
            }

            v20 = v34 + v33;
            if (__OFADD__(v34, v33))
            {
              goto LABEL_76;
            }

            ++result;
          }

          while (--v15);
        }
      }

LABEL_75:
      LOBYTE(v19) = 0;
LABEL_77:
      LOBYTE(v50) = v19;
      v38 = v19;
LABEL_78:

      if (v38)
      {
        v39 = 0;
      }

      else
      {
        v39 = v20;
      }

LABEL_81:
      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v40 = sub_24794ED34();
      __swift_project_value_buffer(v40, qword_27EE58DF8);
      v41 = sub_24794ED14();
      v42 = sub_24794F154();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v50 = v44;
        v51 = v39;
        *v43 = 136315138;
        LOBYTE(v52) = v38 & 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE577A0, &unk_247952330);
        v45 = sub_24794EF14();
        v47 = sub_247924380(v45, v46, &v50);

        *(v43 + 4) = v47;
        _os_log_impl(&dword_2478E1000, v41, v42, "#SamplingUtils: get SamplingCountPerDayLimit is %s", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v44);
        MEMORY[0x24C1AF180](v44, -1, -1);
        MEMORY[0x24C1AF180](v43, -1, -1);
      }

      if (v38)
      {
        return 0;
      }

      if ((v39 & 0x8000000000000000) == 0)
      {
        return v39;
      }

      __break(1u);
LABEL_92:
      result = sub_24794F394();
      v15 = v49;
    }
  }

  v51 = v11;
  v52 = v13 & 0xFFFFFFFFFFFFFFLL;
  if (v11 != 43)
  {
    if (v11 != 45)
    {
      if (!v14)
      {
        goto LABEL_76;
      }

      v20 = 0;
      v35 = &v51;
      do
      {
        v36 = *v35 - 48;
        if (v36 > 9)
        {
          goto LABEL_76;
        }

        v37 = 10 * v20;
        if ((v20 * 10) >> 64 != (10 * v20) >> 63)
        {
          goto LABEL_76;
        }

        v20 = v37 + v36;
        if (__OFADD__(v37, v36))
        {
          goto LABEL_76;
        }

        v35 = (v35 + 1);
        --v14;
      }

      while (v14);
      goto LABEL_75;
    }

    if (v14)
    {
      v19 = v14 - 1;
      if (v14 != 1)
      {
        v20 = 0;
        v24 = &v51 + 1;
        while (1)
        {
          v25 = *v24 - 48;
          if (v25 > 9)
          {
            break;
          }

          v26 = 10 * v20;
          if ((v20 * 10) >> 64 != (10 * v20) >> 63)
          {
            break;
          }

          v20 = v26 - v25;
          if (__OFSUB__(v26, v25))
          {
            break;
          }

          ++v24;
          if (!--v19)
          {
            goto LABEL_77;
          }
        }
      }

      goto LABEL_76;
    }

    goto LABEL_94;
  }

  if (v14)
  {
    v19 = v14 - 1;
    if (v14 != 1)
    {
      v20 = 0;
      v30 = &v51 + 1;
      while (1)
      {
        v31 = *v30 - 48;
        if (v31 > 9)
        {
          break;
        }

        v32 = 10 * v20;
        if ((v20 * 10) >> 64 != (10 * v20) >> 63)
        {
          break;
        }

        v20 = v32 + v31;
        if (__OFADD__(v32, v31))
        {
          break;
        }

        ++v30;
        if (!--v19)
        {
          goto LABEL_77;
        }
      }
    }

    goto LABEL_76;
  }

LABEL_96:
  __break(1u);
  return result;
}

unsigned __int8 *sub_2479458E0(_BYTE *a1, void *a2)
{
  v2 = 0xEE00435346737365;
  v3 = 0x72506E6F74747562;
  v4 = 0x8000000247952580;
  v5 = 0xD000000000000013;
  if (*a1 == 2)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v4 = 0x80000002479525A0;
  }

  if (!*a1)
  {
    v3 = 0xD000000000000015;
    v2 = 0x8000000247952550;
  }

  if (*a1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*a1 <= 1u)
  {
    v7 = v2;
  }

  else
  {
    v7 = v4;
  }

  v51 = v6;
  v52 = v7;

  MEMORY[0x24C1AE4C0](0xD00000000000001ELL, 0x80000002479579F0);

  if (a2 && (v9 = sub_24794EEF4(), v10 = [a2 stringForKey_], v9, v10))
  {
    v11 = sub_24794EF04();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0xE000000000000000;
  }

  v14 = HIBYTE(v13) & 0xF;
  v15 = v11 & 0xFFFFFFFFFFFFLL;
  if ((v13 & 0x2000000000000000) != 0)
  {
    v16 = HIBYTE(v13) & 0xF;
  }

  else
  {
    v16 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {

    v39 = 0;
    v38 = 1;
    goto LABEL_81;
  }

  if ((v13 & 0x1000000000000000) != 0)
  {

    LOBYTE(v50) = 0;
    v20 = sub_2479435DC(v11, v13, 10);
    v38 = v48;
    goto LABEL_78;
  }

  if ((v13 & 0x2000000000000000) == 0)
  {

    if ((v11 & 0x1000000000000000) == 0)
    {
      goto LABEL_92;
    }

    result = ((v13 & 0xFFFFFFFFFFFFFFFLL) + 32);
    while (1)
    {
      v18 = *result;
      if (v18 == 43)
      {
        if (v15 < 1)
        {
          goto LABEL_95;
        }

        v19 = v15 - 1;
        if (v15 == 1)
        {
          goto LABEL_76;
        }

        v20 = 0;
        if (result)
        {
          v27 = result + 1;
          while (1)
          {
            v28 = *v27 - 48;
            if (v28 > 9)
            {
              goto LABEL_76;
            }

            v29 = 10 * v20;
            if ((v20 * 10) >> 64 != (10 * v20) >> 63)
            {
              goto LABEL_76;
            }

            v20 = v29 + v28;
            if (__OFADD__(v29, v28))
            {
              goto LABEL_76;
            }

            ++v27;
            if (!--v19)
            {
              goto LABEL_77;
            }
          }
        }
      }

      else if (v18 == 45)
      {
        if (v15 < 1)
        {
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
          goto LABEL_96;
        }

        v19 = v15 - 1;
        if (v15 == 1)
        {
          goto LABEL_76;
        }

        v20 = 0;
        if (result)
        {
          v21 = result + 1;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v20;
            if ((v20 * 10) >> 64 != (10 * v20) >> 63)
            {
              break;
            }

            v20 = v23 - v22;
            if (__OFSUB__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v19)
            {
              goto LABEL_77;
            }
          }

LABEL_76:
          v20 = 0;
          LOBYTE(v19) = 1;
          goto LABEL_77;
        }
      }

      else
      {
        if (!v15)
        {
          goto LABEL_76;
        }

        v20 = 0;
        if (result)
        {
          do
          {
            v33 = *result - 48;
            if (v33 > 9)
            {
              goto LABEL_76;
            }

            v34 = 10 * v20;
            if ((v20 * 10) >> 64 != (10 * v20) >> 63)
            {
              goto LABEL_76;
            }

            v20 = v34 + v33;
            if (__OFADD__(v34, v33))
            {
              goto LABEL_76;
            }

            ++result;
          }

          while (--v15);
        }
      }

LABEL_75:
      LOBYTE(v19) = 0;
LABEL_77:
      LOBYTE(v50) = v19;
      v38 = v19;
LABEL_78:

      if (v38)
      {
        v39 = 0;
      }

      else
      {
        v39 = v20;
      }

LABEL_81:
      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v40 = sub_24794ED34();
      __swift_project_value_buffer(v40, qword_27EE58DF8);
      v41 = sub_24794ED14();
      v42 = sub_24794F154();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v50 = v44;
        v51 = v39;
        *v43 = 136315138;
        LOBYTE(v52) = v38 & 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE577A0, &unk_247952330);
        v45 = sub_24794EF14();
        v47 = sub_247924380(v45, v46, &v50);

        *(v43 + 4) = v47;
        _os_log_impl(&dword_2478E1000, v41, v42, "#SamplingUtils: get UserDefault Total SamplingCount is %s", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v44);
        MEMORY[0x24C1AF180](v44, -1, -1);
        MEMORY[0x24C1AF180](v43, -1, -1);
      }

      if (v38)
      {
        return 0;
      }

      if ((v39 & 0x8000000000000000) == 0)
      {
        return v39;
      }

      __break(1u);
LABEL_92:
      result = sub_24794F394();
      v15 = v49;
    }
  }

  v51 = v11;
  v52 = v13 & 0xFFFFFFFFFFFFFFLL;
  if (v11 != 43)
  {
    if (v11 != 45)
    {
      if (!v14)
      {
        goto LABEL_76;
      }

      v20 = 0;
      v35 = &v51;
      do
      {
        v36 = *v35 - 48;
        if (v36 > 9)
        {
          goto LABEL_76;
        }

        v37 = 10 * v20;
        if ((v20 * 10) >> 64 != (10 * v20) >> 63)
        {
          goto LABEL_76;
        }

        v20 = v37 + v36;
        if (__OFADD__(v37, v36))
        {
          goto LABEL_76;
        }

        v35 = (v35 + 1);
        --v14;
      }

      while (v14);
      goto LABEL_75;
    }

    if (v14)
    {
      v19 = v14 - 1;
      if (v14 != 1)
      {
        v20 = 0;
        v24 = &v51 + 1;
        while (1)
        {
          v25 = *v24 - 48;
          if (v25 > 9)
          {
            break;
          }

          v26 = 10 * v20;
          if ((v20 * 10) >> 64 != (10 * v20) >> 63)
          {
            break;
          }

          v20 = v26 - v25;
          if (__OFSUB__(v26, v25))
          {
            break;
          }

          ++v24;
          if (!--v19)
          {
            goto LABEL_77;
          }
        }
      }

      goto LABEL_76;
    }

    goto LABEL_94;
  }

  if (v14)
  {
    v19 = v14 - 1;
    if (v14 != 1)
    {
      v20 = 0;
      v30 = &v51 + 1;
      while (1)
      {
        v31 = *v30 - 48;
        if (v31 > 9)
        {
          break;
        }

        v32 = 10 * v20;
        if ((v20 * 10) >> 64 != (10 * v20) >> 63)
        {
          break;
        }

        v20 = v32 + v31;
        if (__OFADD__(v32, v31))
        {
          break;
        }

        ++v30;
        if (!--v19)
        {
          goto LABEL_77;
        }
      }
    }

    goto LABEL_76;
  }

LABEL_96:
  __break(1u);
  return result;
}