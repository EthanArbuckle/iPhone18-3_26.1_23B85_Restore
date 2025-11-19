uint64_t sub_2154587D4()
{
  if (*(v0 + 340) == 1)
  {
    v2 = *(v0 + 136);
    v1 = *(v0 + 144);
    v4 = *(v0 + 120);
    v3 = *(v0 + 128);
    v5 = *(v0 + 104);
    v6 = *(v0 + 112);
    v7 = *(v0 + 96);
    sub_21549F3FC();
    sub_21549F47C();
    v8 = *(v2 + 8);
    v8(v1, v3);
    (*(v5 + 104))(v6, *MEMORY[0x277CD8F78], v7);
    v9 = sub_21549F45C();
    v10 = *(v5 + 8);
    v10(v6, v7);
    v10(v4, v7);
    if ((v9 & 1) == 0)
    {
      v19 = *(v0 + 256);
      v20 = *(v0 + 240);
      v21 = *(v0 + 192);
      v22 = *(v0 + 152);

      v20(v21, *MEMORY[0x277D35AA0], v22);
      v19(v21, 0, 1, v22);
      v18 = v21;
      goto LABEL_7;
    }

    v11 = *(v0 + 144);
    v12 = *(v0 + 128);
    sub_21549F3FC();
    v13 = sub_21549F44C();
    v8(v11, v12);
    v14 = *(v0 + 256);
    v15 = *(v0 + 240);
    v16 = *(v0 + 192);
    v17 = *(v0 + 152);
    if (v13)
    {

      v15(v16, *MEMORY[0x277D35AA8], v17);
      v14(v16, 0, 1, v17);
      v18 = v16;
LABEL_7:
      sub_215457804(v18);
      goto LABEL_8;
    }

    v15(*(v0 + 192), *(v0 + 336), *(v0 + 152));
    v14(v16, 0, 1, v17);
    sub_215457804(v16);
    if (qword_27CA59920 != -1)
    {
      swift_once();
    }

    v25 = sub_21549F11C();
    *(v0 + 296) = __swift_project_value_buffer(v25, qword_27CA5E668);
    v26 = sub_21549F0FC();
    v27 = sub_2154A225C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_2151A1000, v26, v27, "Downloading transcription ASR model…", v28, 2u);
      MEMORY[0x21606B520](v28, -1, -1);
    }

    v29 = *(v0 + 80);

    v30 = *(v29 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_attachmentModel);
    v31 = [v30 attachment];
    if (v31)
    {
      v34 = v31;
      [v31 setNeedsTranscription_];

      v31 = [v30 attachment];
      if (v31)
      {
        v35 = v31;
        v36 = sub_2154A1D2C();
        [v35 updateChangeCountWithReason_];

        v31 = [v30 attachment];
        if (v31)
        {
          v37 = v31;
          v38 = [v31 managedObjectContext];

          [v38 ic_save];
          v39 = swift_task_alloc();
          *(v0 + 304) = v39;
          *v39 = v0;
          v39[1] = sub_215458CC4;
          v32 = sub_215459700;
          v31 = 0;
          v33 = 0;

          return MEMORY[0x2821951D8](v31, v32, v33);
        }

LABEL_23:
        __break(1u);
        return MEMORY[0x2821951D8](v31, v32, v33);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_8:

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_215458CC4()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  v3 = *(v2 + 232);
  v4 = *(v2 + 224);
  if (v0)
  {
    v5 = sub_2154592C0;
  }

  else
  {
    v5 = sub_215458E00;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_215458E00()
{
  v1 = *(v0 + 192);
  (*(v0 + 256))(v1, 1, 1, *(v0 + 152));
  sub_215457804(v1);
  v2 = sub_21549F0FC();
  v3 = sub_2154A225C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2151A1000, v2, v3, "Downloaded transcription ASR model", v4, 2u);
    MEMORY[0x21606B520](v4, -1, -1);
  }

  v5 = *(v0 + 88);

  v6 = sub_21549E56C();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v10 = (*MEMORY[0x277D35AE0] + MEMORY[0x277D35AE0]);
  v7 = swift_task_alloc();
  *(v0 + 320) = v7;
  *v7 = v0;
  v7[1] = sub_215458F9C;
  v8 = *(v0 + 88);

  return v10(v8);
}

uint64_t sub_215458F9C()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  *(*v1 + 328) = v0;

  sub_2151ADCD8(v3, &unk_27CA5B090);
  v4 = *(v2 + 232);
  v5 = *(v2 + 224);
  if (v0)
  {
    v6 = sub_2154594E0;
  }

  else
  {
    v6 = sub_215459104;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_215459104()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2154591DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2154592C0()
{
  v1 = v0[39];
  v2 = v0[32];
  v3 = v0[30];
  v4 = v0[24];
  v5 = v0[19];

  v3(v4, *MEMORY[0x277D35A98], v5);
  v2(v4, 0, 1, v5);
  sub_215457804(v4);
  v6 = v1;
  v7 = sub_21549F0FC();
  v8 = sub_2154A226C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_2151A1000, v7, v8, "Error downloading transcription ASR model {error: %@}", v9, 0xCu);
    sub_2151ADCD8(v10, &unk_27CA59E90);
    MEMORY[0x21606B520](v10, -1, -1);
    MEMORY[0x21606B520](v9, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_2154594E0()
{
  v1 = v0[41];
  v2 = v0[32];
  v3 = v0[30];
  v4 = v0[24];
  v5 = v0[19];

  v3(v4, *MEMORY[0x277D35A98], v5);
  v2(v4, 0, 1, v5);
  sub_215457804(v4);
  v6 = v1;
  v7 = sub_21549F0FC();
  v8 = sub_2154A226C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_2151A1000, v7, v8, "Error downloading transcription ASR model {error: %@}", v9, 0xCu);
    sub_2151ADCD8(v10, &unk_27CA59E90);
    MEMORY[0x21606B520](v10, -1, -1);
    MEMORY[0x21606B520](v9, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

void sub_215459700(uint64_t a1)
{
  if (qword_27CA59920 != -1)
  {
    swift_once();
  }

  v2 = sub_21549F11C();
  __swift_project_value_buffer(v2, qword_27CA5E668);
  oslog = sub_21549F0FC();
  v3 = sub_2154A224C();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = a1;
    _os_log_impl(&dword_2151A1000, oslog, v3, "Downloading transcription ASR model… {progress: %ld}", v4, 0xCu);
    MEMORY[0x21606B520](v4, -1, -1);
  }
}

uint64_t sub_215459800()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D410);
  v1[3] = swift_task_alloc();
  v1[4] = sub_2154A1FFC();
  v1[5] = sub_2154A1FEC();
  sub_21549ED0C();
  v2 = swift_task_alloc();
  v1[6] = v2;
  *v2 = v1;
  v2[1] = sub_2154598F0;

  return MEMORY[0x2821951E8]();
}

uint64_t sub_2154598F0()
{

  v1 = sub_2154A1FCC();

  return MEMORY[0x2822009F8](sub_215459A2C, v1, v0);
}

uint64_t sub_215459A2C()
{
  v1 = *(v0 + 24);

  v2 = sub_21549EB6C();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  sub_215457804(v1);
  if (qword_27CA59920 != -1)
  {
    swift_once();
  }

  v3 = sub_21549F11C();
  __swift_project_value_buffer(v3, qword_27CA5E668);
  v4 = sub_21549F0FC();
  v5 = sub_2154A225C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2151A1000, v4, v5, "Removed transcription ASR model", v6, 2u);
    MEMORY[0x21606B520](v6, -1, -1);
  }

  v7 = *(v0 + 8);

  return v7();
}

void sub_215459BA0()
{
  if ((sub_215457DE8() & 1) == 0)
  {
    return;
  }

  v1 = *(v0 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_attachmentModel);
  v2 = [v1 attachment];
  if (!v2)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v3 = v2;
  v4 = [v2 note];

  if (!v4)
  {
    return;
  }

  v5 = [v4 isEditable];

  if (!v5)
  {
    return;
  }

  v6 = [v1 audioDocument];
  if (!v6)
  {
    goto LABEL_23;
  }

  v7 = v6;
  oslog = sub_2154A238C();

  v8 = oslog;
  if (!oslog)
  {
    if (qword_27CA59920 != -1)
    {
      swift_once();
    }

    v9 = sub_21549F11C();
    v10 = __swift_project_value_buffer(v9, qword_27CA5E668);

    v11 = sub_21549F0FC();
    v12 = sub_2154A225C();

    if (os_log_type_enabled(v11, v12))
    {
      oslog = v10;
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v37 = v14;
      *v13 = 136315138;
      v15 = [v1 attachment];
      if (!v15)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v16 = v15;
      v17 = [v15 shortLoggingDescription];

      v18 = sub_2154A1D6C();
      v20 = v19;

      v21 = sub_215348D98(v18, v20, &v37);

      *(v13 + 4) = v21;
      _os_log_impl(&dword_2151A1000, v11, v12, "Generating top-line summary… {attachment: %s}", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      MEMORY[0x21606B520](v14, -1, -1);
      MEMORY[0x21606B520](v13, -1, -1);
    }

    else
    {
    }

    v22 = [v1 attachment];
    if (v22)
    {
      v23 = v22;
      v24 = [v22 objectID];

      sub_21549ECBC();

      osloga = sub_21549F0FC();
      v25 = sub_2154A225C();

      if (os_log_type_enabled(osloga, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v37 = v27;
        *v26 = 136315138;
        v28 = [v1 attachment];
        if (v28)
        {
          v29 = v28;
          v30 = [v28 shortLoggingDescription];

          v31 = sub_2154A1D6C();
          v33 = v32;

          v34 = sub_215348D98(v31, v33, &v37);

          *(v26 + 4) = v34;
          _os_log_impl(&dword_2151A1000, osloga, v25, "Generated top-line summary {attachment: %s}", v26, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v27);
          MEMORY[0x21606B520](v27, -1, -1);
          MEMORY[0x21606B520](v26, -1, -1);

          return;
        }

LABEL_26:
        __break(1u);
        return;
      }

      v8 = osloga;
      goto LABEL_19;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_19:
}

void sub_215459FC0()
{
  v1 = v0;
  v2 = sub_21549EB6C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v124 = &v102[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E6F0);
  MEMORY[0x28223BE20](v5);
  v118 = &v102[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v121 = &v102[-v8];
  MEMORY[0x28223BE20](v9);
  v11 = &v102[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D410);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v102[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v115 = &v102[-v16];
  MEMORY[0x28223BE20](v17);
  v111 = &v102[-v18];
  MEMORY[0x28223BE20](v19);
  v120 = &v102[-v20];
  MEMORY[0x28223BE20](v21);
  v116 = &v102[-v22];
  MEMORY[0x28223BE20](v23);
  v123 = &v102[-v24];
  MEMORY[0x28223BE20](v25);
  v27 = &v102[-v26];
  MEMORY[0x28223BE20](v28);
  v30 = &v102[-v29];
  if ((sub_21545724C() & 1) == 0)
  {
    goto LABEL_18;
  }

  v104 = v27;
  v117 = v14;
  swift_getKeyPath();
  v31 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel___observationRegistrar;
  v126 = v1;
  v32 = sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  v109 = v31;
  v107 = v32;
  sub_21549ED9C();

  v33 = v2;
  v34 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__transcriptionModelState;
  swift_beginAccess();
  v35 = *MEMORY[0x277D35AA8];
  v113 = *(v3 + 104);
  v114 = v3 + 104;
  (v113)(v30, v35, v33);
  v36 = *(v3 + 56);
  v112 = v3 + 56;
  v119 = v36;
  v36(v30, 0, 1, v33);
  v37 = v3;
  v105 = v5;
  v38 = *(v5 + 48);
  v108 = v34;
  v106 = v1;
  v39 = v1 + v34;
  v2 = v33;
  sub_215324EEC(v39, v11, &qword_27CA5D410);
  sub_215324EEC(v30, &v11[v38], &qword_27CA5D410);
  v122 = v37;
  v40 = *(v37 + 48);
  v41 = v40(v11, 1, v33);
  v110 = v40;
  if (v41 == 1)
  {
    sub_2151ADCD8(v30, &qword_27CA5D410);
    v42 = v40(&v11[v38], 1, v33);
    v3 = v122;
    v14 = v117;
    v1 = v106;
    if (v42 == 1)
    {
      goto LABEL_17;
    }

    goto LABEL_7;
  }

  v43 = v104;
  sub_215324EEC(v11, v104, &qword_27CA5D410);
  if (v40(&v11[v38], 1, v33) == 1)
  {
    sub_2151ADCD8(v30, &qword_27CA5D410);
    (*(v122 + 8))(v43, v33);
    v14 = v117;
    v1 = v106;
LABEL_7:
    sub_2151ADCD8(v11, &qword_27CA5E6F0);
    v44 = v119;
    v45 = v105;
    goto LABEL_8;
  }

  v73 = v122;
  v74 = v124;
  (*(v122 + 32))(v124, &v11[v38], v33);
  sub_2154681B8(&qword_27CA5E6F8, MEMORY[0x277D35AB0]);
  v103 = sub_2154A1D1C();
  v75 = *(v73 + 8);
  v75(v74, v33);
  sub_2151ADCD8(v30, &qword_27CA5D410);
  v75(v43, v33);
  v3 = v73;
  sub_2151ADCD8(v11, &qword_27CA5D410);
  v14 = v117;
  v44 = v119;
  v45 = v105;
  v1 = v106;
  if (v103)
  {
    goto LABEL_18;
  }

LABEL_8:
  swift_getKeyPath();
  v126 = v1;
  sub_21549ED9C();

  v46 = v44;
  v47 = v123;
  LODWORD(v106) = *MEMORY[0x277D35A80];
  v113(v123);
  v46(v47, 0, 1, v33);
  v48 = *(v45 + 48);
  v11 = v121;
  sub_215324EEC(v1 + v108, v121, &qword_27CA5D410);
  sub_215324EEC(v47, &v11[v48], &qword_27CA5D410);
  v49 = v110;
  if (v110(v11, 1, v33) == 1)
  {
    sub_2151ADCD8(v47, &qword_27CA5D410);
    v50 = v49(&v11[v48], 1, v33);
    v3 = v122;
    if (v50 == 1)
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  v51 = v116;
  sub_215324EEC(v11, v116, &qword_27CA5D410);
  if (v49(&v11[v48], 1, v2) == 1)
  {
    sub_2151ADCD8(v123, &qword_27CA5D410);
    v3 = v122;
    (*(v122 + 8))(v51, v2);
LABEL_13:
    sub_2151ADCD8(v11, &qword_27CA5E6F0);
    v52 = v119;
    goto LABEL_14;
  }

  v84 = v122;
  v85 = &v11[v48];
  v86 = v124;
  (*(v122 + 32))(v124, v85, v2);
  sub_2154681B8(&qword_27CA5E6F8, MEMORY[0x277D35AB0]);
  v87 = sub_2154A1D1C();
  v88 = *(v84 + 8);
  v88(v86, v2);
  sub_2151ADCD8(v123, &qword_27CA5D410);
  v88(v51, v2);
  v52 = v119;
  v3 = v84;
  v14 = v117;
  sub_2151ADCD8(v121, &qword_27CA5D410);
  if (v87)
  {
    goto LABEL_18;
  }

LABEL_14:
  swift_getKeyPath();
  v126 = v1;
  sub_21549ED9C();

  v53 = v52;
  v54 = v120;
  (v113)(v120, *MEMORY[0x277D35A98], v2);
  v53(v54, 0, 1, v2);
  v55 = *(v45 + 48);
  v56 = v118;
  sub_215324EEC(v1 + v108, v118, &qword_27CA5D410);
  sub_215324EEC(v54, &v56[v55], &qword_27CA5D410);
  v57 = v110;
  if (v110(v56, 1, v2) == 1)
  {
    sub_2151ADCD8(v54, &qword_27CA5D410);
    if (v57(&v56[v55], 1, v2) == 1)
    {
      v11 = v56;
      v14 = v117;
LABEL_17:
      sub_2151ADCD8(v11, &qword_27CA5D410);
      goto LABEL_18;
    }

    goto LABEL_36;
  }

  v76 = v57;
  v77 = v111;
  sub_215324EEC(v56, v111, &qword_27CA5D410);
  if (v76(&v56[v55], 1, v2) == 1)
  {
    sub_2151ADCD8(v120, &qword_27CA5D410);
    (*(v3 + 8))(v77, v2);
LABEL_36:
    sub_2151ADCD8(v56, &qword_27CA5E6F0);
    v78 = v119;
    goto LABEL_37;
  }

  v95 = v124;
  (*(v3 + 32))(v124, &v56[v55], v2);
  sub_2154681B8(&qword_27CA5E6F8, MEMORY[0x277D35AB0]);
  v96 = v77;
  v97 = sub_2154A1D1C();
  v98 = v56;
  v99 = *(v122 + 8);
  v99(v95, v2);
  sub_2151ADCD8(v120, &qword_27CA5D410);
  v99(v96, v2);
  v3 = v122;
  sub_2151ADCD8(v98, &qword_27CA5D410);
  v14 = v117;
  v78 = v119;
  if (v97)
  {
LABEL_18:
    swift_getKeyPath();
    v126 = v1;
    sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
    sub_21549ED9C();

    v58 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__transcriptionModelState;
    swift_beginAccess();
    sub_215324EEC(v1 + v58, v14, &qword_27CA5D410);
    if ((*(v3 + 48))(v14, 1, v2))
    {
      sub_2151ADCD8(v14, &qword_27CA5D410);
    }

    else
    {
      v64 = v124;
      (*(v3 + 16))(v124, v14, v2);
      sub_2151ADCD8(v14, &qword_27CA5D410);
      v65 = sub_21549EB2C();
      v67 = v66;
      (*(v3 + 8))(v64, v2);
      if (v67)
      {
        if (qword_27CA59920 != -1)
        {
          swift_once();
        }

        v68 = sub_21549F11C();
        __swift_project_value_buffer(v68, qword_27CA5E668);

        v60 = sub_21549F0FC();
        v69 = sub_2154A225C();

        if (!os_log_type_enabled(v60, v69))
        {

          goto LABEL_30;
        }

        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v125 = v71;
        *v70 = 136315138;
        v72 = sub_215348D98(v65, v67, &v125);

        *(v70 + 4) = v72;
        _os_log_impl(&dword_2151A1000, v60, v69, "Short circuiting setTranscriptionStateIfNeeded since transcriptionModelState is %s.", v70, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v71);
        MEMORY[0x21606B520](v71, -1, -1);
        v63 = v70;
LABEL_29:
        MEMORY[0x21606B520](v63, -1, -1);
LABEL_30:

        return;
      }
    }

    if (qword_27CA59920 != -1)
    {
      swift_once();
    }

    v59 = sub_21549F11C();
    __swift_project_value_buffer(v59, qword_27CA5E668);
    v60 = sub_21549F0FC();
    v61 = sub_2154A225C();
    if (!os_log_type_enabled(v60, v61))
    {
      goto LABEL_30;
    }

    v62 = swift_slowAlloc();
    *v62 = 0;
    _os_log_impl(&dword_2151A1000, v60, v61, "Short circuiting setTranscriptionStateIfNeeded since allowsTranscriptionRead is false.", v62, 2u);
    v63 = v62;
    goto LABEL_29;
  }

LABEL_37:
  sub_21549E89C();
  v79 = sub_21549E88C();
  v80 = sub_21549E86C();

  if (v80)
  {
    v81 = v115;
    v82 = v115;
    v83 = v106;
    goto LABEL_50;
  }

  v89 = sub_21549E88C();
  v90 = sub_21549E87C();

  v91 = [*(v1 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_attachmentModel) attachment];
  if (v91)
  {
    v92 = v91;
    sub_2151A6C9C(0, &qword_281199490);
    v93 = [v92 objectID];

    LOBYTE(v92) = sub_2154A291C();
    if (v92)
    {
      v94 = MEMORY[0x277D35A88];
    }

    else
    {
      if (sub_215457DE8())
      {
        v81 = v115;
        v100 = v115;
        v101 = 1;
LABEL_51:
        v78(v100, v101, 1, v2);
        sub_215457804(v81);
        return;
      }

      v94 = MEMORY[0x277D35A90];
    }

    v83 = *v94;
    v81 = v115;
    v82 = v115;
LABEL_50:
    (v113)(v82, v83, v2);
    v100 = v81;
    v101 = 0;
    goto LABEL_51;
  }

  __break(1u);
}

uint64_t sub_21545AFF8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5ACE0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20 - v4;
  v6 = sub_21549EB6C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6, v8);
  v11 = (*(v7 + 88))(v10, v6);
  if (v11 != *MEMORY[0x277D35AA8] && v11 != *MEMORY[0x277D35AA0] && v11 != *MEMORY[0x277D35A98])
  {
    return (*(v7 + 8))(v10, v6);
  }

  v14 = sub_2154A202C();
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  sub_2154A1FFC();

  v15 = v1;
  v16 = sub_2154A1FEC();
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  v17[2] = v16;
  v17[3] = v18;
  v17[4] = v15;
  sub_2152F4D50(0, 0, v5, &unk_2154C3D58, v17);
}

uint64_t sub_21545B230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_2154A1FFC();
  v4[4] = sub_2154A1FEC();
  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = sub_21545B2E0;

  return sub_215457F18();
}

uint64_t sub_21545B2E0()
{
  *(*v1 + 48) = v0;

  v3 = sub_2154A1FCC();
  if (v0)
  {
    v4 = sub_21546AF5C;
  }

  else
  {
    v4 = sub_21546AE60;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

id sub_21545B43C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E700);
  v59 = *(v2 - 8);
  v60 = v2;
  MEMORY[0x28223BE20](v2);
  v58 = v46 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E708);
  v62 = *(v4 - 8);
  v63 = v4;
  MEMORY[0x28223BE20](v4);
  v61 = v46 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E710);
  MEMORY[0x28223BE20](v6 - 8);
  v57 = v46 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B520);
  v52 = *(v8 - 8);
  v53 = v8;
  MEMORY[0x28223BE20](v8);
  v51 = v46 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E718);
  v55 = *(v10 - 8);
  v56 = v10;
  MEMORY[0x28223BE20](v10);
  v54 = v46 - v11;
  sub_2151A6C9C(0, &unk_2811995C0);
  v12 = sub_2154A245C();
  sub_21549F41C();

  swift_allocObject();
  swift_weakInit();

  sub_21549F40C();

  v13 = objc_opt_self();
  v14 = [v13 defaultCenter];
  v15 = *&v1[OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_attachmentModel];
  result = [v15 attachment];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v17 = result;
  [v14 addObserver:v1 selector:sel_handleTimeNotificationWithNotification_ name:*MEMORY[0x277D36480] object:result];

  v18 = [v13 defaultCenter];
  result = [v15 attachment];
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v19 = result;
  [v18 addObserver:v1 selector:sel_audioControllerPlaybackStateChanged_ name:*MEMORY[0x277D36470] object:result];

  v20 = [v13 defaultCenter];
  result = [v15 attachment];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v21 = result;
  [v20 addObserver:v1 selector:sel_audioControllerPlaybackStateChanged_ name:*MEMORY[0x277D36468] object:result];

  v22 = [v13 defaultCenter];
  result = [v15 attachment];
  if (result)
  {
    v23 = result;
    [v22 addObserver:v1 selector:sel_audioControllerPlaybackStateChanged_ name:*MEMORY[0x277D36478] object:result];

    v24 = [v13 defaultCenter];
    v25 = sub_2154A1D2C();
    [v24 addObserver:v1 selector:sel_handleBackgroundTranscriptionStarted_ name:v25 object:0];

    v26 = [v13 defaultCenter];
    v27 = sub_2154A1D2C();
    [v26 addObserver:v1 selector:sel_handleBackgroundTranscriptionFinished_ name:v27 object:0];

    v28 = [v13 defaultCenter];
    v29 = sub_2154A1D2C();
    [v28 addObserver:v1 selector:sel_handleDownloadStartedNotification_ name:v29 object:0];

    v30 = [v13 defaultCenter];
    v31 = sub_2154A1D2C();
    [v30 addObserver:v1 selector:sel_handleDownloadFinishedNotification_ name:v31 object:0];

    swift_getKeyPath();
    v64 = v1;
    sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
    sub_21549ED9C();

    v50 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingManager;
    v32 = *&v1[OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingManager];
    v33 = v51;
    sub_21549F74C();

    v34 = sub_2154A245C();
    v64 = v34;
    v48 = sub_2154A243C();
    v35 = *(v48 - 8);
    v47 = *(v35 + 56);
    v49 = v35 + 56;
    v36 = v57;
    v47(v57, 1, 1, v48);
    v46[2] = MEMORY[0x277CBCEC8];
    sub_2151ACC5C(&qword_27CA5B528, &qword_27CA5B520);
    v46[1] = sub_21532210C(&qword_27CA5E728, &unk_2811995C0);
    v37 = v53;
    v38 = v54;
    sub_21549F3BC();
    sub_2151ADCD8(v36, &qword_27CA5E710);

    (*(v52 + 8))(v33, v37);
    swift_allocObject();
    swift_weakInit();
    v53 = MEMORY[0x277CBCD60];
    sub_2151ACC5C(&qword_27CA5E730, &qword_27CA5E718);
    v39 = v56;
    sub_21549F3EC();

    (*(v55 + 8))(v38, v39);
    swift_getKeyPath();
    v64 = v1;
    sub_21549ED9C();

    v64 = v1;
    swift_getKeyPath();
    sub_21549EDBC();

    swift_beginAccess();
    sub_21549F30C();
    swift_endAccess();

    v64 = v1;
    swift_getKeyPath();
    sub_21549EDAC();

    swift_getKeyPath();
    v64 = v1;
    sub_21549ED9C();

    v40 = *&v1[v50];
    v41 = v58;
    sub_21549F76C();

    v42 = sub_2154A245C();
    v64 = v42;
    v47(v36, 1, 1, v48);
    sub_2151ACC5C(&qword_27CA5E740, &qword_27CA5E700);
    v43 = v60;
    v44 = v61;
    sub_21549F3BC();
    sub_2151ADCD8(v36, &qword_27CA5E710);

    (*(v59 + 8))(v41, v43);
    swift_allocObject();
    swift_weakInit();
    sub_2151ACC5C(&qword_27CA5E748, &qword_27CA5E708);
    v45 = v63;
    sub_21549F3EC();

    (*(v62 + 8))(v44, v45);
    swift_getKeyPath();
    v64 = v1;
    sub_21549ED9C();

    v64 = v1;
    swift_getKeyPath();
    sub_21549EDBC();

    swift_beginAccess();
    sub_21549F30C();
    swift_endAccess();

    v64 = v1;
    swift_getKeyPath();
    sub_21549EDAC();

    return sub_21549ED7C();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_21545C084(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5ACE0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_2154A202C();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a2;

  sub_2152F5364(0, 0, v5, &unk_2154C6160, v7);
}

uint64_t sub_21545C190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5ACE0);
  v4[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21545C22C, 0, 0);
}

uint64_t sub_21545C22C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    *(v0 + 72) = sub_2154A1FFC();
    *(v0 + 80) = sub_2154A1FEC();
    v3 = sub_2154A1FCC();

    return MEMORY[0x2822009F8](sub_21545C330, v3, v2);
  }

  else
  {
    **(v0 + 40) = 1;

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_21545C330()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);

  v3 = sub_2154A202C();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);

  v4 = sub_2154A1FEC();
  v5 = swift_allocObject();
  v6 = MEMORY[0x277D85700];
  v5[2] = v4;
  v5[3] = v6;
  v5[4] = v1;
  sub_2152F4D50(0, 0, v2, &unk_2154C6168, v5);

  return MEMORY[0x2822009F8](sub_21545C44C, 0, 0);
}

uint64_t sub_21545C44C()
{
  **(v0 + 40) = *(v0 + 64) == 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21545C4BC(uint64_t a1)
{
  v53 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5ACE0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v44 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5EA70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v44 - v5;
  v7 = sub_21549E95C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v44 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v44 - v15;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = result;
    v51 = v3;
    v48 = v6;
    v49 = v10;
    swift_getKeyPath();
    v19 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel___observationRegistrar;
    v56 = v18;
    v50 = sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
    sub_21549ED9C();

    v20 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingState;
    swift_beginAccess();
    v52 = v8[2];
    v52(v16, v18 + v20, v7);
    sub_2154681B8(&qword_27CA5AE28, MEMORY[0x277D359F0]);
    LOBYTE(v20) = sub_2154A1D1C();
    v21 = v8[1];
    v21(v16, v7);
    if (v20)
    {
    }

    v46 = v19;
    v22 = v53;
    v23 = v18;
    v24 = v52;
    v52(v16, v53, v7);
    v47 = v23;
    sub_215453460(v16);
    v24(v13, v22, v7);
    v45 = v8;
    v25 = v8[11];
    LODWORD(v23) = v25(v13, v7);
    v26 = *MEMORY[0x277D359E8];
    v21(v13, v7);
    if (v23 == v26)
    {
      swift_getKeyPath();
      v27 = v47;
      v55 = v47;
      sub_21549ED9C();

      v28 = *(v27 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingManager);
      sub_21549F71C();
      v30 = v29;

      v31 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingDurationWhenResumed;
      swift_beginAccess();
      v32 = v51;
      if (*(v27 + v31) == v30)
      {
        *(v27 + v31) = v30;
LABEL_13:
        v40 = sub_2154A202C();
        (*(*(v40 - 8) + 56))(v32, 1, 1, v40);
        sub_2154A1FFC();

        v41 = sub_2154A1FEC();
        v42 = swift_allocObject();
        v43 = MEMORY[0x277D85700];
        v42[2] = v41;
        v42[3] = v43;
        v42[4] = v27;
        sub_2152F4D50(0, 0, v32, &unk_2154C6148, v42);
      }

      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v44 - 2) = v27;
      *(&v44 - 1) = v30;
      v54 = v27;
    }

    else
    {
      v27 = v47;
      v33 = v49;
      v52(v49, v53, v7);
      v34 = v25(v33, v7);
      v32 = v51;
      if (v34 != *MEMORY[0x277D359D8])
      {
        v21(v33, v7);
        goto LABEL_13;
      }

      (v45[12])(v33, v7);
      v35 = swift_projectBox();
      v36 = v48;
      sub_215324EEC(v35, v48, &unk_27CA5EA70);
      v21(v36, v7);

      v37 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingDurationWhenResumed;
      swift_beginAccess();
      if (*(v27 + v37) == 0.0)
      {
        *(v27 + v37) = 0;
        goto LABEL_13;
      }

      v39 = swift_getKeyPath();
      MEMORY[0x28223BE20](v39);
      *(&v44 - 2) = v27;
      *(&v44 - 1) = 0;
      v54 = v27;
    }

    sub_21549ED8C();

    goto LABEL_13;
  }

  return result;
}

uint64_t sub_21545CB88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a4;
  sub_2154A1FFC();
  v4[22] = sub_2154A1FEC();
  v6 = sub_2154A1FCC();
  v4[23] = v6;
  v4[24] = v5;

  return MEMORY[0x2822009F8](sub_21545CC20, v6, v5);
}

uint64_t sub_21545CC20()
{
  v1 = [objc_opt_self() isMainThread];
  if (!v1)
  {
    __break(1u);
    goto LABEL_14;
  }

  v1 = [*(v0[21] + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_attachmentModel) attachment];
  if (!v1)
  {
LABEL_14:
    __break(1u);
    return MEMORY[0x282200938](v1);
  }

  v2 = v1;
  v3 = [v1 audioModel];
  v0[25] = v3;

  if (v3)
  {
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_215456EDC;
    v4 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E7D0);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_21537B6B0;
    v0[13] = &block_descriptor_256;
    v0[14] = v4;
    [v3 assetWithCompletion_];
    v1 = v0 + 2;

    return MEMORY[0x282200938](v1);
  }

  v5 = v0[21];
  v6 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__canBePlayedBack;
  swift_beginAccess();
  if (*(v5 + v6))
  {
    v7 = v0[21];
    swift_getKeyPath();
    v8 = swift_task_alloc();
    *(v8 + 16) = v7;
    *(v8 + 24) = 0;
    v0[18] = v7;
    sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
    sub_21549ED8C();
  }

  else
  {
    *(v5 + v6) = 0;
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_21545CED4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_21549F7AC();
  }

  return result;
}

uint64_t sub_21545CF58()
{
  swift_getKeyPath();
  sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED9C();
}

uint64_t sub_21545CFF4(uint64_t a1)
{
  v2 = sub_2154A10EC();
  v13 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2154A110C();
  v5 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2151A6C9C(0, &unk_2811995C0);
  v8 = sub_2154A245C();
  aBlock[4] = sub_21546AA28;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2151BD7E4;
  aBlock[3] = &block_descriptor_244;
  v9 = _Block_copy(aBlock);

  sub_2154A10FC();
  v14 = MEMORY[0x277D84F90];
  sub_2154681B8(&qword_281199700, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA59E00);
  sub_2151ACC5C(&qword_2811996F0, &qword_27CA59E00);
  sub_2154A2BEC();
  MEMORY[0x216069000](0, v7, v4, v9);
  _Block_release(v9);

  (*(v13 + 8))(v4, v2);
  (*(v5 + 8))(v7, v12);
}

uint64_t sub_21545D2D0(uint64_t a1)
{
  v2 = [objc_opt_self() defaultCenter];
  v3 = sub_2154A1D2C();
  [v2 postNotificationName:v3 object:a1];

  return sub_21549ED7C();
}

uint64_t sub_21545D3A8()
{
  v1 = v0;
  v2 = sub_21549E18C();
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = v2;
  sub_2154A1D6C();
  sub_2154A2D3C();
  if (!*(v3 + 16) || (v4 = sub_2153B1010(v14), (v5 & 1) == 0))
  {

    sub_21533FC34(v14);
LABEL_9:
    v15 = 0u;
    v16 = 0u;
    return sub_2151ADCD8(&v15, &qword_27CA5ABC0);
  }

  sub_21533FC88(*(v3 + 56) + 32 * v4, &v15);
  sub_21533FC34(v14);

  if (!*(&v16 + 1))
  {
    return sub_2151ADCD8(&v15, &qword_27CA5ABC0);
  }

  result = swift_dynamicCast();
  if (result)
  {
    v7 = *v14;
    v8 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__playbackTime;
    swift_beginAccess();
    if (*(v1 + v8) == v7)
    {
      *(v1 + v8) = v7;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *&v15 = v1;
      sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
      sub_21549ED8C();
    }

    v10 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__lastPlaybackTime;
    swift_beginAccess();
    if (*(v1 + v10) == v7)
    {
      *(v1 + v10) = v7;
    }

    else
    {
      v11 = swift_getKeyPath();
      MEMORY[0x28223BE20](v11);
      sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
      sub_21549ED8C();
    }

    v12 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__needsSeekToTime;
    result = swift_beginAccess();
    if (*(v1 + v12))
    {
      v13 = swift_getKeyPath();
      MEMORY[0x28223BE20](v13);
      sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
      sub_21549ED8C();
    }

    else
    {
      *(v1 + v12) = 0;
    }
  }

  return result;
}

void sub_21545D7D4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D410);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v16[-1] - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v16[-1] - v4;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_21549E17C();
    if (!v16[3])
    {

      sub_2151ADCD8(v16, &qword_27CA5ABC0);
      return;
    }

    sub_2151A6C9C(0, &qword_2811995F0);
    if (swift_dynamicCast())
    {
      v8 = v15;
      v9 = [*(v7 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_attachmentModel) attachment];
      if (!v9)
      {
        __break(1u);
        return;
      }

      v10 = v9;
      sub_2151A6C9C(0, &qword_281199490);
      v11 = [v10 objectID];

      LOBYTE(v10) = sub_2154A291C();
      if (v10)
      {
        swift_getKeyPath();
        v16[0] = v7;
        sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
        sub_21549ED9C();

        v12 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__transcriptionModelState;
        swift_beginAccess();
        sub_215324EEC(v7 + v12, v5, &qword_27CA5D410);
        v13 = sub_21549EB6C();
        v14 = *(v13 - 8);
        if ((*(v14 + 48))(v5, 1, v13) == 1)
        {

          sub_2151ADCD8(v5, &qword_27CA5D410);
        }

        else
        {
          sub_2151ADCD8(v5, &qword_27CA5D410);
          (*(v14 + 104))(v2, *MEMORY[0x277D35A88], v13);
          (*(v14 + 56))(v2, 0, 1, v13);
          sub_215457804(v2);
        }

        return;
      }
    }
  }
}

uint64_t sub_21545DB6C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v5 = sub_21549E19C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21549E16C();

  a4(v8);

  return (*(v6 + 8))(v8, v5);
}

void sub_21545DC8C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D410);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v13 - v4;
  sub_21549E17C();
  if (v15)
  {
    sub_2151A6C9C(0, &qword_2811995F0);
    if (swift_dynamicCast())
    {
      v6 = v13[1];
      v7 = [*(a2 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_attachmentModel) attachment];
      if (v7)
      {
        v8 = v7;
        sub_2151A6C9C(0, &qword_281199490);
        v9 = [v8 objectID];

        LOBYTE(v8) = sub_2154A291C();
        if (v8)
        {
          v10 = *MEMORY[0x277D35A80];
          v11 = sub_21549EB6C();
          v12 = *(v11 - 8);
          (*(v12 + 104))(v5, v10, v11);
          (*(v12 + 56))(v5, 0, 1, v11);
          sub_215457804(v5);
        }
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    sub_2151ADCD8(v14, &qword_27CA5ABC0);
  }
}

uint64_t sub_21545DEEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a3;
  v22 = a4;
  v20[0] = a2;
  v5 = sub_2154A10EC();
  v25 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2154A110C();
  v23 = *(v8 - 8);
  v24 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21549E19C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_2151A6C9C(0, &unk_2811995C0);
  v14 = sub_2154A245C();
  (*(v12 + 16))(v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  v15 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = swift_allocObject();
  (*(v12 + 32))(v16 + v15, v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  v17 = v21;
  *(v16 + ((v13 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v20[1];
  aBlock[4] = v17;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2151BD7E4;
  aBlock[3] = v22;
  v18 = _Block_copy(aBlock);

  sub_2154A10FC();
  v26 = MEMORY[0x277D84F90];
  sub_2154681B8(&qword_281199700, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA59E00);
  sub_2151ACC5C(&qword_2811996F0, &qword_27CA59E00);
  sub_2154A2BEC();
  MEMORY[0x216069000](0, v10, v7, v18);
  _Block_release(v18);

  (*(v25 + 8))(v7, v5);
  (*(v23 + 8))(v10, v24);
}

void sub_21545E2A0(uint64_t a1, uint64_t a2)
{
  v3 = sub_21549EB6C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E6F0);
  MEMORY[0x28223BE20](v7);
  v9 = &v36 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D410);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v36 - v17;
  sub_21549E17C();
  if (!v46[3])
  {
    sub_2151ADCD8(v46, &qword_27CA5ABC0);
    return;
  }

  sub_2151A6C9C(0, &qword_2811995F0);
  if (swift_dynamicCast())
  {
    v42 = v6;
    v43 = v4;
    v19 = v45;
    v44 = a2;
    v20 = [*(a2 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_attachmentModel) attachment];
    if (!v20)
    {
      __break(1u);
      return;
    }

    v21 = v20;
    sub_2151A6C9C(0, &qword_281199490);
    v22 = [v21 objectID];

    LOBYTE(v21) = sub_2154A291C();
    if ((v21 & 1) == 0)
    {

      return;
    }

    v40 = v12;
    v41 = v19;
    swift_getKeyPath();
    v24 = v43;
    v23 = v44;
    v46[0] = v44;
    sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
    sub_21549ED9C();

    v25 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__transcriptionModelState;
    swift_beginAccess();
    v26 = *MEMORY[0x277D35A80];
    v27 = *(v24 + 104);
    v39 = v24 + 104;
    v37 = v27;
    v27(v18, v26, v3);
    v28 = *(v24 + 56);
    v38 = v24 + 56;
    v36 = v28;
    v28(v18, 0, 1, v3);
    v29 = *(v7 + 48);
    sub_215324EEC(v23 + v25, v9, &qword_27CA5D410);
    sub_215324EEC(v18, &v9[v29], &qword_27CA5D410);
    v30 = *(v24 + 48);
    if (v30(v9, 1, v3) == 1)
    {
      sub_2151ADCD8(v18, &qword_27CA5D410);
      if (v30(&v9[v29], 1, v3) == 1)
      {
        sub_2151ADCD8(v9, &qword_27CA5D410);
        v31 = v41;
        goto LABEL_15;
      }
    }

    else
    {
      sub_215324EEC(v9, v15, &qword_27CA5D410);
      if (v30(&v9[v29], 1, v3) != 1)
      {
        v32 = v42;
        (*(v24 + 32))(v42, &v9[v29], v3);
        sub_2154681B8(&qword_27CA5E6F8, MEMORY[0x277D35AB0]);
        v33 = sub_2154A1D1C();
        v34 = *(v24 + 8);
        v34(v32, v3);
        sub_2151ADCD8(v18, &qword_27CA5D410);
        v34(v15, v3);
        sub_2151ADCD8(v9, &qword_27CA5D410);
        v31 = v41;
        if ((v33 & 1) == 0)
        {
LABEL_16:

          return;
        }

LABEL_15:
        v35 = v40;
        v37(v40, *MEMORY[0x277D35AA8], v3);
        v36(v35, 0, 1, v3);
        sub_215457804(v35);
        goto LABEL_16;
      }

      sub_2151ADCD8(v18, &qword_27CA5D410);
      (*(v24 + 8))(v15, v3);
    }

    sub_2151ADCD8(v9, &qword_27CA5E6F0);
  }
}

uint64_t sub_21545E904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a3;
  v23 = a4;
  v20[2] = a2;
  v5 = sub_2154A10EC();
  v26 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2154A110C();
  v24 = *(v8 - 8);
  v25 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21549E19C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_2151A6C9C(0, &unk_2811995C0);
  v21 = sub_2154A245C();
  v14 = swift_allocObject();
  swift_weakInit();
  (*(v12 + 16))(v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  v15 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  (*(v12 + 32))(v16 + v15, v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  aBlock[4] = v22;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2151BD7E4;
  aBlock[3] = v23;
  v17 = _Block_copy(aBlock);

  sub_2154A10FC();
  v27 = MEMORY[0x277D84F90];
  sub_2154681B8(&qword_281199700, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA59E00);
  sub_2151ACC5C(&qword_2811996F0, &qword_27CA59E00);
  sub_2154A2BEC();
  v18 = v21;
  MEMORY[0x216069000](0, v10, v7, v17);
  _Block_release(v17);

  (*(v26 + 8))(v7, v5);
  (*(v24 + 8))(v10, v25);
}

void sub_21545ECDC(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D410);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v25[-v4 - 8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_21549E17C();
    if (!v26)
    {

      sub_2151ADCD8(v25, &qword_27CA5ABC0);
      return;
    }

    sub_2151A6C9C(0, &qword_2811995F0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_16;
    }

    v8 = v24;
    v9 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_attachmentModel;
    v10 = [*(v7 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_attachmentModel) attachment];
    if (v10)
    {
      v11 = v10;
      sub_2151A6C9C(0, &qword_281199490);
      v12 = [v11 objectID];

      a2 = sub_2154A291C();
      if ((a2 & 1) == 0)
      {
        goto LABEL_15;
      }

      v13 = [*(v7 + v9) attachment];
      if (v13)
      {
        v14 = v13;
        a2 = [v13 identifier];

        if (a2)
        {
          v15 = [*(v7 + v9) attachment];
          if (v15)
          {
            v16 = v15;
            v17 = [v15 managedObjectContext];

            if (!v17)
            {

              return;
            }

            v18 = [objc_opt_self() attachmentWithIdentifier:a2 context:v17];

            if (!v18)
            {
              goto LABEL_20;
            }

            v19 = [v18 audioModel];
            if (!v19)
            {

              goto LABEL_20;
            }

            v20 = v19;

            v21 = [v20 audioDocument];
            if (v21)
            {
              v22 = v21;
              sub_2154A23BC();

              sub_21549EC6C();

LABEL_20:
              v23 = sub_21549EB6C();
              (*(*(v23 - 8) + 56))(v5, 1, 1, v23);
              sub_215457804(v5);

              sub_21549EC9C();

              goto LABEL_16;
            }

LABEL_24:
            __break(1u);
            return;
          }

LABEL_23:

          __break(1u);
          goto LABEL_24;
        }

LABEL_15:

LABEL_16:

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_23;
  }
}

void sub_21545F080()
{
  v1 = v0;
  v2 = sub_2154A10EC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2154A110C();
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [*(v0 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_attachmentModel) attachment];
  if (v19)
  {
    v11 = [*(v0 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_audioController) currentAttachment];
    if (v11)
    {
      v12 = v11;
      sub_2151A6C9C(0, &qword_281199690);
      v13 = sub_2154A291C();

      if (v13)
      {
        sub_2151A6C9C(0, &unk_2811995C0);
        v19 = sub_2154A245C();
        aBlock[4] = sub_215469A50;
        aBlock[5] = v1;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_2151BD7E4;
        aBlock[3] = &block_descriptor_202;
        v14 = _Block_copy(aBlock);

        sub_2154A10FC();
        v20 = MEMORY[0x277D84F90];
        sub_2154681B8(&qword_281199700, MEMORY[0x277D85198]);
        v18 = v6;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA59E00);
        sub_2151ACC5C(&qword_2811996F0, &qword_27CA59E00);
        sub_2154A2BEC();
        v15 = v19;
        MEMORY[0x216069000](0, v10, v5, v14);
        _Block_release(v14);

        (*(v3 + 8))(v5, v2);
        (*(v7 + 8))(v10, v18);
      }
    }

    else
    {
      v16 = v19;
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21545F420(uint64_t a1)
{
  v2 = [*(a1 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_audioController) isPlaying];
  v3 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__isPlaying;
  result = swift_beginAccess();
  if (v2 == *(a1 + v3))
  {
    *(a1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
    sub_21549ED8C();
  }

  return result;
}

uint64_t sub_21545F650()
{
  v1[9] = v0;
  v2 = sub_21549E95C();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  sub_2154A1FFC();
  v1[13] = sub_2154A1FEC();
  v4 = sub_2154A1FCC();
  v1[14] = v4;
  v1[15] = v3;

  return MEMORY[0x2822009F8](sub_21545F744, v4, v3);
}

uint64_t sub_21545F744()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  [*(v4 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_audioController) stop];
  swift_getKeyPath();
  v0[5] = v4;
  sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED9C();

  v5 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingState;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v5, v3);
  v6 = (*(v2 + 88))(v1, v3);
  if (v6 == *MEMORY[0x277D359E8])
  {
    v7 = v0[9];
    (*(v0[11] + 8))(v0[12], v0[10]);
    swift_getKeyPath();
    v0[8] = v7;
    sub_21549ED9C();

    v8 = *(v7 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingManager);
    v0[16] = v8;
    v17 = (*MEMORY[0x277D36370] + MEMORY[0x277D36370]);
    v8;
    v9 = swift_task_alloc();
    v0[17] = v9;
    *v9 = v0;
    v10 = sub_21545FB8C;
LABEL_7:
    v9[1] = v10;

    return v17();
  }

  if (v6 == *MEMORY[0x277D359D8])
  {
    v11 = v0[9];
    (*(v0[11] + 8))(v0[12], v0[10]);
    swift_getKeyPath();
    v0[7] = v11;
    sub_21549ED9C();

    v12 = *(v11 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingManager);
    v0[20] = v12;
    v17 = (*MEMORY[0x277D36380] + MEMORY[0x277D36380]);
    v12;
    v9 = swift_task_alloc();
    v0[21] = v9;
    *v9 = v0;
    v10 = sub_21545FE9C;
    goto LABEL_7;
  }

  if (v6 == *MEMORY[0x277D359D0])
  {
    v13 = v0[9];
    swift_getKeyPath();
    v0[6] = v13;
    sub_21549ED9C();

    v14 = *(v13 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingManager);
    v0[23] = v14;
    v17 = (*MEMORY[0x277D36378] + MEMORY[0x277D36378]);
    v14;
    v9 = swift_task_alloc();
    v0[24] = v9;
    *v9 = v0;
    v10 = sub_215460024;
    goto LABEL_7;
  }

  if (v6 == *MEMORY[0x277D359E0])
  {

    v16 = v0[1];

    return v16();
  }

  else
  {

    return sub_2154A2F9C();
  }
}

uint64_t sub_21545FB8C()
{
  v2 = *v1;
  *(v2 + 144) = v0;

  if (v0)
  {
    v3 = *(v2 + 112);
    v4 = *(v2 + 120);

    return MEMORY[0x2822009F8](sub_215460140, v3, v4);
  }

  else
  {

    v5 = swift_task_alloc();
    *(v2 + 152) = v5;
    *v5 = v2;
    v5[1] = sub_21545FCFC;

    return MEMORY[0x2821959E0]();
  }
}

uint64_t sub_21545FCFC()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return MEMORY[0x2822009F8](sub_21545FE1C, v3, v2);
}

uint64_t sub_21545FE1C()
{

  sub_21535ADE8();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21545FE9C()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_2154601BC;
  }

  else
  {

    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_21545FFB8;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21545FFB8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_215460024()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_215460238;
  }

  else
  {

    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_21546AE5C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_215460140()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2154601BC()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_215460238()
{
  v1 = *(v0 + 184);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2154602B4()
{
  v1[3] = v0;
  v1[4] = sub_2154A1FFC();
  v1[5] = sub_2154A1FEC();
  v2 = swift_task_alloc();
  v1[6] = v2;
  *v2 = v1;
  v2[1] = sub_215460360;

  return MEMORY[0x2821959E0]();
}

uint64_t sub_215460360()
{
  v1 = *v0;

  v3 = sub_2154A1FCC();
  *(v1 + 56) = v3;
  *(v1 + 64) = v2;

  return MEMORY[0x2822009F8](sub_2154604A4, v3, v2);
}

uint64_t sub_2154604A4()
{
  v1 = v0[3];
  swift_getKeyPath();
  v0[2] = v1;
  sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED9C();

  v2 = *(v1 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingManager);
  v0[9] = v2;
  v5 = (*MEMORY[0x277D36388] + MEMORY[0x277D36388]);
  v2;
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_2154605E8;

  return v5(0);
}

uint64_t sub_2154605E8()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_2154607F4;
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_215460704;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

id sub_215460704()
{
  v1 = *(v0 + 24);

  v2 = [objc_opt_self() sharedGenerator];
  result = [*(v1 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_attachmentModel) attachment];
  if (result)
  {
    v4 = result;
    [v2 generatePreviewIfNeededForAttachment_];

    sub_21535ADE8();
    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2154607F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_215460864()
{
  v1[9] = v0;
  v2 = sub_21549E56C();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5EA70);
  v1[13] = swift_task_alloc();
  v3 = sub_21549E95C();
  v1[14] = v3;
  v1[15] = *(v3 - 8);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2154609DC, 0, 0);
}

uint64_t sub_2154609DC()
{
  *(v0 + 160) = sub_2154A1FFC();
  *(v0 + 168) = sub_2154A1FEC();
  v2 = sub_2154A1FCC();

  return MEMORY[0x2822009F8](sub_215460A74, v2, v1);
}

uint64_t sub_215460A74()
{
  v1 = *(v0 + 72);

  v2 = [*(v1 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_attachmentModel) attachment];
  *(v0 + 176) = v2;
  if (v2)
  {
    v2 = sub_215460B0C;
    v3 = 0;
    v4 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_215460B0C()
{
  v1 = [*(v0 + 176) managedObjectContext];
  *(v0 + 184) = v1;
  if (v1)
  {
    *(v0 + 192) = sub_2154A1FEC();
    v3 = sub_2154A1FCC();

    return MEMORY[0x2822009F8](sub_215460CE4, v3, v2);
  }

  else
  {
    v4 = *(v0 + 176);
    v5 = sub_21549E98C();
    sub_2154681B8(&qword_27CA5E750, MEMORY[0x277D35A20]);
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, *MEMORY[0x277D35A18], v5);
    swift_willThrow();

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_215460CE4()
{
  v1 = v0[19];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[9];

  swift_getKeyPath();
  v0[25] = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel___observationRegistrar;
  v0[5] = v4;
  v0[26] = sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED9C();

  v5 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingState;
  v0[27] = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingState;
  swift_beginAccess();
  v6 = *(v3 + 16);
  v0[28] = v6;
  v0[29] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4 + v5, v2);

  return MEMORY[0x2822009F8](sub_215460E30, 0, 0);
}

uint64_t sub_215460E30()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = *(v3 + 88);
  *(v0 + 240) = v4;
  *(v0 + 248) = (v3 + 88) & 0xFFFFFFFFFFFFLL | 0xA3B5000000000000;
  v5 = v4(v1, v2);
  v6 = *MEMORY[0x277D359E8];
  *(v0 + 544) = *MEMORY[0x277D359E8];
  if (v5 == v6)
  {
    v7 = *(v0 + 152);
    (*(*(v0 + 120) + 96))(v7, *(v0 + 112));
    v8 = *(*v7 + 16);

    v9 = [v8 objectID];

    *(v0 + 280) = v9;
    v10 = *(v0 + 176);
    if (v9)
    {
      v11 = swift_allocObject();
      *(v0 + 288) = v11;
      *(v11 + 16) = v10;
      *(v11 + 24) = v9;
      v12 = v9;
      v13 = v10;
      v14 = swift_task_alloc();
      *(v0 + 296) = v14;
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E768);
      *v14 = v0;
      v14[1] = sub_215461534;
      v16 = sub_215468434;
      v17 = v0 + 64;
      v18 = v11;
    }

    else
    {
      v25 = swift_allocObject();
      *(v0 + 416) = v25;
      *(v25 + 16) = v10;
      v26 = v10;
      v27 = swift_task_alloc();
      *(v0 + 424) = v27;
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E758);
      *v27 = v0;
      v27[1] = sub_215461DA8;
      v16 = sub_215468418;
      v17 = v0 + 56;
      v18 = v25;
    }

    return MEMORY[0x282195358](v17, v16, v18, v15);
  }

  else
  {
    v19 = *(v0 + 152);
    v20 = *(v0 + 112);
    v21 = *(v0 + 120);
    v22 = *(v21 + 8);
    *(v0 + 256) = v22;
    *(v0 + 264) = (v21 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v22(v19, v20);
    *(v0 + 272) = sub_2154A1FEC();
    v24 = sub_2154A1FCC();

    return MEMORY[0x2822009F8](sub_215461108, v24, v23);
  }
}

uint64_t sub_215461108()
{
  v1 = v0[28];
  v2 = v0[27];
  v3 = v0[17];
  v4 = v0[14];
  v5 = v0[9];

  swift_getKeyPath();
  v0[6] = v5;
  sub_21549ED9C();

  v1(v3, v5 + v2, v4);

  return MEMORY[0x2822009F8](sub_2154611E8, 0, 0);
}

uint64_t sub_2154611E8()
{
  v1 = (v0 + 136);
  if ((*(v0 + 240))(*(v0 + 136), *(v0 + 112)) != *MEMORY[0x277D359D8])
  {
    goto LABEL_6;
  }

  v1 = (v0 + 128);
  v2 = *(v0 + 128);
  v32 = *(v0 + 544);
  v31 = *(v0 + 240);
  v3 = *(v0 + 224);
  v4 = *(v0 + 144);
  v5 = *(v0 + 112);
  v6 = *(v0 + 120);
  v7 = *(v0 + 104);
  v30 = *(v6 + 96);
  v30(*(v0 + 136), v5);
  v8 = swift_projectBox();
  sub_215324EEC(v8, v7, &unk_27CA5EA70);
  (*(v6 + 32))(v4, v7, v5);

  v3(v2, v4, v5);
  v9 = v31(v2, v5);
  v10 = *(v0 + 256);
  v11 = *(v0 + 144);
  if (v9 != v32)
  {
    v10(*(v0 + 144), *(v0 + 112));
LABEL_6:
    (*(v0 + 256))(*v1, *(v0 + 112));
    goto LABEL_7;
  }

  v12 = *(v0 + 128);
  v13 = *(v0 + 112);
  v30(v12, v13);
  v14 = *(*v12 + 16);

  v15 = [v14 objectID];

  v10(v11, v13);
  *(v0 + 280) = v15;
  if (v15)
  {
    v16 = *(v0 + 176);
    v17 = swift_allocObject();
    *(v0 + 288) = v17;
    *(v17 + 16) = v16;
    *(v17 + 24) = v15;
    v18 = v15;
    v19 = v16;
    v20 = swift_task_alloc();
    *(v0 + 296) = v20;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E768);
    *v20 = v0;
    v20[1] = sub_215461534;
    v22 = sub_215468434;
    v23 = v0 + 64;
    v24 = v17;
    goto LABEL_8;
  }

LABEL_7:
  v25 = *(v0 + 176);
  v26 = swift_allocObject();
  *(v0 + 416) = v26;
  *(v26 + 16) = v25;
  v27 = v25;
  v28 = swift_task_alloc();
  *(v0 + 424) = v28;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E758);
  *v28 = v0;
  v28[1] = sub_215461DA8;
  v22 = sub_215468418;
  v23 = v0 + 56;
  v24 = v26;
LABEL_8:

  return MEMORY[0x282195358](v23, v22, v24, v21);
}

void sub_215461534()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {

    MEMORY[0x2822009F8](sub_215461678, 0, 0);
  }
}

uint64_t sub_215461678()
{
  v1 = *(v0 + 64);
  *(v0 + 304) = v1;
  v2 = *(v1 + 16);
  *(v0 + 312) = v2;
  if (v2)
  {
    v3 = *(v0 + 88);
    *(v0 + 320) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E770);
    v4 = *(v3 + 80);
    *(v0 + 548) = v4;
    *(v0 + 328) = *(v3 + 72);
    v5 = *(v3 + 16);
    v6 = MEMORY[0x277CC08F0];
    *(v0 + 552) = *(MEMORY[0x277CC08F0] + 8);
    v7 = *(v6 + 16);
    *(v0 + 336) = v5;
    *(v0 + 344) = v7;
    *(v0 + 360) = 0;
    *(v0 + 368) = 0;
    *(v0 + 352) = 0;
    v8 = *(v0 + 96);
    v9 = *(v0 + 80);
    v5(v8, v1 + ((v4 + 32) & ~v4), v9);
    v10 = objc_allocWithZone(MEMORY[0x277CE6650]);
    v11 = sub_21549E49C();
    (*(v3 + 8))(v8, v9);
    *(v0 + 376) = [v10 initWithURL:v11 options:0];

    v12 = sub_21549EDEC();
    *(v0 + 384) = v12;
    v13 = swift_task_alloc();
    *(v0 + 392) = v13;
    *v13 = v0;
    v13[1] = sub_2154618A8;

    return MEMORY[0x2821FAF00](v0 + 520, v12, 0, 0);
  }

  else
  {

    *(v0 + 400) = 0;
    *(v0 + 408) = sub_2154A1FEC();
    v15 = sub_2154A1FCC();

    return MEMORY[0x2822009F8](sub_215461C54, v15, v14);
  }
}

uint64_t sub_2154618A8()
{

  if (v0)
  {

    v1 = sub_215462438;
  }

  else
  {

    v1 = sub_2154619F0;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_2154619F0()
{
  v1 = sub_2154A288C();
  v2 = *(v0 + 376);
  if (v1)
  {
    v3 = *(v0 + 360);
    sub_2154A287C();
    v5 = v4;

    v6 = vdupq_lane_s64(COERCE__INT64(v3 + v5), 0);
  }

  else
  {

    v6 = *(v0 + 352);
  }

  v7 = *(v0 + 368) + 1;
  if (v7 == *(v0 + 312))
  {
    v18 = v6.i64[0];

    *(v0 + 400) = v18;
    *(v0 + 408) = sub_2154A1FEC();
    v9 = sub_2154A1FCC();

    return MEMORY[0x2822009F8](sub_215461C54, v9, v8);
  }

  else
  {
    *(v0 + 368) = v7;
    *(v0 + 352) = v6;
    v11 = *(v0 + 88);
    v10 = *(v0 + 96);
    v12 = *(v0 + 80);
    (*(v0 + 336))(v10, *(v0 + 304) + ((*(v0 + 548) + 32) & ~*(v0 + 548)) + *(v0 + 328) * v7, v12);
    v13 = objc_allocWithZone(MEMORY[0x277CE6650]);
    v14 = sub_21549E49C();
    (*(v11 + 8))(v10, v12);
    *(v0 + 376) = [v13 initWithURL:v14 options:0];

    v15 = sub_21549EDEC();
    *(v0 + 384) = v15;
    v16 = swift_task_alloc();
    *(v0 + 392) = v16;
    *v16 = v0;
    v16[1] = sub_2154618A8;

    return MEMORY[0x2821FAF00](v0 + 520, v15, 0, 0);
  }
}

uint64_t sub_215461C54()
{
  v1 = *(v0 + 400);

  sub_215462A84(v1, 0);
  sub_215464680(0);

  return MEMORY[0x2822009F8](sub_215461CD4, 0, 0);
}

uint64_t sub_215461CD4()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 280);
  v3 = *(v0 + 184);

  v4 = *(v0 + 8);
  v5.n128_u64[0] = v1;

  return v4(v5);
}

void sub_215461DA8()
{

  if (v0)
  {
  }

  else
  {

    MEMORY[0x2822009F8](sub_215461EE4, 0, 0);
  }
}

uint64_t sub_215461EE4()
{
  v1 = v0[7];
  v0[54] = v1;
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E760);
    v2 = sub_21549EDEC();
    v0[55] = v2;
    v3 = swift_task_alloc();
    v0[56] = v3;
    *v3 = v0;
    v3[1] = sub_2154620F0;

    return MEMORY[0x2821FAF00](v0 + 62, v2, 0, 0);
  }

  else
  {
    v5 = v0[22];
    v4 = v0[23];
    v6 = sub_21549E98C();
    sub_2154681B8(&qword_27CA5E750, MEMORY[0x277D35A20]);
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, *MEMORY[0x277D35A10], v6);
    swift_willThrow();

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_2154620F0()
{
  *(*v1 + 456) = v0;

  if (v0)
  {
    v2 = sub_2154626A4;
  }

  else
  {
    v2 = sub_215462224;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_215462224()
{
  v1 = *(v0 + 496);
  *(v0 + 560) = *(v0 + 504);
  *(v0 + 564) = *(v0 + 508);
  v2 = *(v0 + 512);
  *(v0 + 464) = v1;
  *(v0 + 472) = v2;
  sub_2154A287C();
  *(v0 + 480) = v3;
  *(v0 + 488) = sub_2154A1FEC();
  v5 = sub_2154A1FCC();

  return MEMORY[0x2822009F8](sub_2154622D8, v5, v4);
}

uint64_t sub_2154622D8()
{
  v1 = *(v0 + 480);

  sub_215462A84(v1, 0);
  sub_215464680(0);

  return MEMORY[0x2822009F8](sub_215462358, 0, 0);
}

uint64_t sub_215462358()
{
  sub_2154A287C();
  v2 = v1;
  v3 = *(v0 + 432);
  v4 = *(v0 + 184);

  v5 = *(v0 + 8);
  v6.n128_u64[0] = v2;

  return v5(v6);
}

uint64_t sub_215462438()
{
  v1 = sub_2154A288C();
  v2 = *(v0 + 376);
  if (v1)
  {
    v3 = *(v0 + 360);
    sub_2154A287C();
    v5 = v4;

    v6 = vdupq_lane_s64(COERCE__INT64(v3 + v5), 0);
  }

  else
  {

    v6 = *(v0 + 352);
  }

  v7 = *(v0 + 368) + 1;
  if (v7 == *(v0 + 312))
  {
    v18 = v6.i64[0];

    *(v0 + 400) = v18;
    *(v0 + 408) = sub_2154A1FEC();
    v9 = sub_2154A1FCC();

    return MEMORY[0x2822009F8](sub_215461C54, v9, v8);
  }

  else
  {
    *(v0 + 368) = v7;
    *(v0 + 352) = v6;
    v11 = *(v0 + 88);
    v10 = *(v0 + 96);
    v12 = *(v0 + 80);
    (*(v0 + 336))(v10, *(v0 + 304) + ((*(v0 + 548) + 32) & ~*(v0 + 548)) + *(v0 + 328) * v7, v12);
    v13 = objc_allocWithZone(MEMORY[0x277CE6650]);
    v14 = sub_21549E49C();
    (*(v11 + 8))(v10, v12);
    *(v0 + 376) = [v13 initWithURL:v14 options:0];

    v15 = sub_21549EDEC();
    *(v0 + 384) = v15;
    v16 = swift_task_alloc();
    *(v0 + 392) = v16;
    *v16 = v0;
    v16[1] = sub_2154618A8;

    return MEMORY[0x2821FAF00](v0 + 520, v15, 0, 0);
  }
}

uint64_t sub_2154626A4()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 184);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_21546275C@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = [a1 subAttachments];
  if (v5)
  {
    v6 = v5;
    sub_2151A6C9C(0, &qword_281199690);
    sub_21532210C(&qword_281199680, &qword_281199690);
    v7 = sub_2154A20CC();
  }

  else if (MEMORY[0x277D84F90] >> 62 && sub_2154A2C8C())
  {
    sub_21532A754(MEMORY[0x277D84F90]);
    v7 = v12;
  }

  else
  {
    v7 = MEMORY[0x277D84FA0];
  }

  v8 = a2;
  v9 = sub_21546A774(v7, v8);

  v10 = sub_2154520BC(v9);

  *a3 = v10;
  return result;
}

void sub_2154628A4(void *a1@<X0>, void *a2@<X8>)
{
  v3 = [a1 audioModel];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 asset];
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

uint64_t sub_215462918()
{
  swift_getKeyPath();
  sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED9C();

  return *(v0 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__lastKnownAssetDuration);
}

uint64_t sub_2154629C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED9C();

  v5 = *(v3 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__lastKnownAssetDuration + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__lastKnownAssetDuration);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_215462A84(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__lastKnownAssetDuration;
  if ((*(v2 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__lastKnownAssetDuration + 8) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *v3 != *&result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *v3 = *&result;
    *(v3 + 8) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED8C();
  *&result = COERCE_DOUBLE();
  return result;
}

void sub_215462BC8(uint64_t a1, char a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_audioController);
  v6 = [*(v2 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_attachmentModel) attachment];
  if (v6)
  {
    v7 = v6;
    [v5 play_];

    if ((a2 & 1) == 0)
    {
      v9[4] = nullsub_1;
      v9[5] = 0;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 1107296256;
      v9[2] = sub_2153DF054;
      v9[3] = &block_descriptor_33;
      v8 = _Block_copy(v9);
      [v5 seekToTime:v8 completion:*&a1];
      _Block_release(v8);
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_215462D68(uint64_t a1, SEL *a2)
{
  swift_getKeyPath();
  sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED9C();

  if ((*(v2 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__lastKnownAssetDuration + 8) & 1) == 0)
  {
    return [*(v2 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_audioController) *a2];
  }

  return result;
}

void sub_215462E58(NSObject *a1)
{
  v2 = v1;
  v59 = a1;
  v3 = sub_21549E20C();
  MEMORY[0x28223BE20](v3);
  v4 = sub_21549E28C();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_attachmentModel);
  v10 = [v9 attachment];
  if (!v10)
  {
    goto LABEL_32;
  }

  v11 = v10;
  v12 = [v10 note];

  if (v12)
  {
    v13 = [v12 textStorage];

    if (v13)
    {
      v57 = v2;
      v58 = v9;
      v14 = [objc_opt_self() shared];
      v15 = [objc_opt_self() mainBundle];
      v16 = sub_2154A1D2C();
      v17 = [v15 localizedStringForKey:v16 value:0 table:0];

      if (!v17)
      {
        sub_2154A1D6C();
        v17 = sub_2154A1D2C();
      }

      [v14 setActionName_];

      v18 = v57;
      sub_21549EC0C();
      sub_21549E1AC();
      (*(v5 + 8))(v8, v4);
      sub_2154681B8(&unk_27CA5C7C0, MEMORY[0x277CC8B30]);
      v19 = sub_2154A1EFC();
      v21 = v20;
      v22 = v59;
      if ([v59 isEditable])
      {
        v23 = [v22 selectedRange];
        v25 = v24;
        v26 = &selRef__dataOwnerForCopy;
        v27 = [v58 attachment];
        if (!v27)
        {
LABEL_35:
          __break(1u);
          return;
        }

        v28 = v27;
        v29 = [v27 rangeInNote];

        if (v29 < v23)
        {
          goto LABEL_23;
        }

        if (__OFSUB__(v29, v23))
        {
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        if (v29 - v23 >= v25)
        {
LABEL_23:
          v33 = [v59 selectedRange];
          v34 = v50;
        }

        else
        {
          v30 = v59;
          v31 = [v59 selectedRange];
          [v30 selectedRange];
          v33 = &v31[v32];
          if (__OFADD__(v31, v32))
          {
LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
LABEL_33:
            __break(1u);
LABEL_34:
            __break(1u);
            goto LABEL_35;
          }

          v34 = 0;
        }

        v60 = 10;
        v61 = 0xE100000000000000;
        MEMORY[0x2160689F0](v19, v21);
        MEMORY[0x2160689F0](10, 0xE100000000000000);
        [v13 beginEditing];
        v51 = sub_2154A1D2C();

        [v13 replaceCharactersInRange:v33 withString:{v34, v51}];

        [v13 endEditing];
        v49 = v33 + 1;
        if (!__OFADD__(v33, 1))
        {
          v22 = v59;
LABEL_26:
          v52 = sub_2154A1E0C();

          [v22 setSelectedRange:v49, v52];
          v53 = [v58 v26[373]];
          if (v53)
          {
            v54 = v53;
            v55 = [v53 note];

            [v55 updateModificationDateAndChangeCountAndSaveImmediately];
            sub_215465150(*(v18 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_transcriptTarget), *(v18 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_transcriptTarget + 8), *(v18 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_fullInsertToNoteActionType), *(v18 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_fullInsertToNoteActionType + 8));

            return;
          }

          goto LABEL_33;
        }
      }

      else
      {
        v47 = [v13 length];
        v60 = 2570;
        v61 = 0xE200000000000000;
        MEMORY[0x2160689F0](v19, v21);
        [v13 beginEditing];
        v48 = sub_2154A1D2C();

        [v13 replaceCharactersInRange:v47 withString:{0, v48}];

        [v13 endEditing];
        v49 = v47 + 1;
        if (!__OFADD__(v47, 1))
        {
          v26 = &selRef__dataOwnerForCopy;
          goto LABEL_26;
        }

        __break(1u);
      }

      __break(1u);
      goto LABEL_30;
    }
  }

  if (qword_27CA59920 != -1)
  {
    swift_once();
  }

  v35 = sub_21549F11C();
  __swift_project_value_buffer(v35, qword_27CA5E668);

  v59 = sub_21549F0FC();
  v36 = sub_2154A226C();

  if (os_log_type_enabled(v59, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v60 = v38;
    *v37 = 136315138;
    v39 = [v9 attachment];
    if (v39)
    {
      v40 = v39;
      v41 = [v39 shortLoggingDescription];

      v42 = sub_2154A1D6C();
      v44 = v43;

      v45 = sub_215348D98(v42, v44, &v60);

      *(v37 + 4) = v45;
      _os_log_impl(&dword_2151A1000, v59, v36, "Cannot insert transcript into note because text storage is unavailable {attachment: %s}", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v38);
      MEMORY[0x21606B520](v38, -1, -1);
      MEMORY[0x21606B520](v37, -1, -1);

      return;
    }

    goto LABEL_34;
  }

  v46 = v59;
}

uint64_t sub_215463590()
{
  v1 = v0;
  v6 = sub_21549EC2C();
  v7 = v2;
  sub_2154A1F0C();
  v3 = [objc_opt_self() generalPasteboard];
  v4 = sub_2154A1D2C();

  [v3 setString_];

  return sub_215465150(*(v1 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_transcriptTarget), *(v1 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_transcriptTarget + 8), *(v1 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_copyActionType), *(v1 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_copyActionType + 8));
}

void sub_21546367C()
{
  v1 = *(v0 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_attachmentModel);
  v2 = [v1 attachment];
  if (!v2)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v3 = v2;
  v4 = [v2 note];

  if (!v4 || (v5 = [v4 textStorage], v4, !v5))
  {
    if (qword_27CA59920 != -1)
    {
      swift_once();
    }

    v16 = sub_21549F11C();
    __swift_project_value_buffer(v16, qword_27CA5E668);

    oslog = sub_21549F0FC();
    v17 = sub_2154A226C();

    if (!os_log_type_enabled(oslog, v17))
    {
      goto LABEL_14;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v28 = v19;
    *v18 = 136315138;
    v20 = [v1 attachment];
    if (v20)
    {
      v21 = v20;
      v22 = [v20 shortLoggingDescription];

      v23 = sub_2154A1D6C();
      v25 = v24;

      v26 = sub_215348D98(v23, v25, &v28);

      *(v18 + 4) = v26;
      _os_log_impl(&dword_2151A1000, oslog, v17, "Cannot delete attachment because text storage is unavailable {attachment: %s}", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
      MEMORY[0x21606B520](v19, -1, -1);
      MEMORY[0x21606B520](v18, -1, -1);
      goto LABEL_14;
    }

LABEL_20:
    __break(1u);
    return;
  }

  v6 = [objc_opt_self() shared];
  v7 = [objc_opt_self() mainBundle];
  v8 = sub_2154A1D2C();
  v9 = [v7 localizedStringForKey:v8 value:0 table:0];

  if (!v9)
  {
    sub_2154A1D6C();
    v9 = sub_2154A1D2C();
  }

  [v6 setActionName_];

  [v5 beginEditing];
  v10 = [v1 attachment];
  if (!v10)
  {
    goto LABEL_18;
  }

  v11 = v10;
  v12 = [v10 rangeInNote];
  v14 = v13;

  v15 = sub_2154A1D2C();
  [v5 replaceCharactersInRange:v12 withString:{v14, v15}];

  [v5 endEditing];
  oslog = [v1 attachment];
  if (!oslog)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_2151A6C9C(0, &qword_281199690);
  [swift_getObjCClassFromMetadata() deleteAttachment_];

LABEL_14:
}

void *sub_215463A5C(uint64_t a1, double a2)
{
  v5 = sub_21549EBCC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_215463EA8(a2);
  if ((v10 & 1) == 0)
  {
    v11 = result - a1;
    if (__OFSUB__(result, a1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      return result;
    }

    if ((v11 & 0x8000000000000000) == 0)
    {
      if (v11 == result)
      {
        goto LABEL_10;
      }

      goto LABEL_8;
    }

    if (result)
    {
      v11 = 0;
LABEL_8:
      v12 = *(v2 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_audioController);
      result = sub_21549EC8C();
      if (v11 < result[2])
      {
        (*(v6 + 16))(v8, result + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v11, v5);

        sub_21549EBBC();
        v14 = v13;
        (*(v6 + 8))(v8, v5);
        return [v12 skipBackByInterval:0 completion:a2 - v14];
      }

      goto LABEL_14;
    }
  }

LABEL_10:
  v15 = *(v2 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_audioController);

  return [v15 skipBackByInterval:0 completion:a2];
}

void *sub_215463C34(uint64_t a1, double a2)
{
  v3 = v2;
  v6 = sub_21549EBCC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  v13 = sub_215463EA8(a2);
  if (v14)
  {
    goto LABEL_7;
  }

  v15 = v13;
  result = sub_21549EC8C();
  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v15 >= result[2])
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  (*(v7 + 16))(v12, result + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, v6);

  sub_21549EBBC();
  v18 = TSUFloatsLessThanButNotAlmostEqual(a2, v17);
  result = (*(v7 + 8))(v12, v6);
  if (!v18)
  {
LABEL_7:
    v20 = 0;
    goto LABEL_8;
  }

  if (__OFSUB__(a1--, 1))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v20 = 1;
LABEL_8:
  result = sub_215464088(a1, v20, a2);
  if (v21)
  {
    return result;
  }

  v22 = result;
  v23 = *(v3 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_audioController);
  result = sub_21549EC8C();
  if ((v22 & 0x8000000000000000) != 0)
  {
    goto LABEL_15;
  }

  if (v22 >= result[2])
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  (*(v7 + 16))(v9, result + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v22, v6);

  sub_21549EBBC();
  v25 = v24;
  (*(v7 + 8))(v9, v6);
  return [v23 skipAheadByInterval:0 completion:v25 - a2];
}

uint64_t sub_215463EA8(double a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E7C8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_21549EBCC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21549EC8C();
  type metadata accessor for TranscriptViewController();
  sub_21547890C(v9, v4, a1);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {

    sub_2151ADCD8(v4, &qword_27CA5E7C8);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v11 = sub_215495904(v8, v9);

    (*(v6 + 8))(v8, v5);
    return v11;
  }
}

uint64_t sub_215464088(uint64_t a1, char a2, double a3)
{
  result = sub_215463EA8(a3);
  if ((v6 & 1) == 0)
  {
    v7 = __OFADD__(result, a1);
    v8 = result + a1;
    if (v7)
    {
      __break(1u);
    }

    else
    {
      v9 = result;
      v10 = *(sub_21549EC8C() + 16);

      v11 = v10 - 1;
      if (v10 - 1 >= v8)
      {
        v11 = v8;
      }

      if ((v11 != v9) | a2 & 1)
      {
        return v11;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t RecordingViewModel.MicrophoneState.hashValue.getter()
{
  v1 = *v0;
  sub_2154A30DC();
  MEMORY[0x216069C80](v1);
  return sub_2154A312C();
}

uint64_t sub_2154641A0@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED9C();

  *a1 = *(v1 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__microphoneState);
  return result;
}

uint64_t sub_215464264@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED9C();

  *a3 = *(v5 + *a2);
  return result;
}

void sub_215464350()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 isInputAvailable];

  if ((v2 ^ 1) == *(v0 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__microphoneState))
  {
    *(v0 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__microphoneState) = v2 ^ 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
    sub_21549ED8C();
  }
}

uint64_t sub_2154644A0()
{
  swift_getKeyPath();
  sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED9C();

  return *(v0 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__accessibilityScrubMode);
}

uint64_t sub_215464548(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__accessibilityScrubMode);
  if (v2 == 3)
  {
    if (result != 3)
    {
LABEL_3:
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
      sub_21549ED8C();
    }
  }

  else if (v2 != result)
  {
    goto LABEL_3;
  }

  *(v1 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__accessibilityScrubMode) = result;
  return result;
}

uint64_t sub_215464680(char a1)
{
  v2 = v1;
  swift_getKeyPath();
  sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED9C();

  v5 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__accessibilityScrubMode;
  if (*(v1 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__accessibilityScrubMode) == 3)
  {
    if (a1)
    {
      result = sub_215469DAC(v1);
      v6 = result;
      if (result == 3)
      {
        v7 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__showTranscriptToggle;
        swift_getKeyPath();
        sub_21549ED9C();

        swift_beginAccess();
        if ((*(v2 + v7) & 1) != 0 && (v8 = *(sub_21549EC8C() + 16), result = , v8 >= 2))
        {
          v6 = 2;
        }

        else
        {
          v12 = v2 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__lastKnownAssetDuration;
          swift_getKeyPath();
          sub_21549ED9C();

          if ((*(v12 + 8) & 1) != 0 || *v12 <= 15.0)
          {
            swift_getKeyPath();
            sub_21549ED9C();

            if (*(v12 + 8))
            {
              v6 = 3;
            }

            else
            {
              v6 = 0;
            }
          }

          else
          {
            v6 = 1;
          }
        }
      }

      v13 = *(v2 + v5);
      if (v13 == 3)
      {
        if (v6 != 3)
        {
LABEL_24:
          KeyPath = swift_getKeyPath();
          MEMORY[0x28223BE20](KeyPath);
          sub_21549ED8C();
        }
      }

      else if (v13 != v6)
      {
        goto LABEL_24;
      }

      goto LABEL_26;
    }

    swift_getKeyPath();
    sub_21549ED9C();

    if ((*(v1 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__lastKnownAssetDuration + 8) & 1) == 0)
    {
      swift_getKeyPath();
      sub_21549ED9C();

      v9 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__showTranscriptToggle;
      swift_beginAccess();
      if (*(v2 + v9) != 1 || (sub_21549EC3C() & 1) == 0 || (v10 = *(sub_21549EC8C() + 16), result = , v10 >= 2))
      {
        result = sub_215469DAC(v2);
        v6 = result;
        v11 = *(v2 + v5);
        if (v11 == 3)
        {
          if (result != 3)
          {
            goto LABEL_24;
          }
        }

        else if (v11 != result)
        {
          goto LABEL_24;
        }

LABEL_26:
        *(v2 + v5) = v6;
      }
    }
  }

  return result;
}

void sub_215464A88(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xED0000656D695420;
  v5 = 0x746E6174736E6F43;
  if (v2 != 1)
  {
    v5 = 0x697263736E617254;
    v4 = 0xEA00000000007470;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746E6563726550;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

void *sub_215464AF8(char a1, char a2, double a3)
{
  v4 = v3;
  v8 = sub_21549E95C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v27 = v3;
  sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED9C();

  v12 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__isPlaying;
  result = swift_beginAccess();
  if ((*(v4 + v12) & 1) == 0)
  {
    swift_getKeyPath();
    v26 = v4;
    sub_21549ED9C();

    v14 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingState;
    swift_beginAccess();
    (*(v9 + 16))(v11, v4 + v14, v8);
    LODWORD(v14) = (*(v9 + 88))(v11, v8);
    v15 = *MEMORY[0x277D359E8];
    result = (*(v9 + 8))(v11, v8);
    if (v14 != v15)
    {
      sub_215464680(1);
      swift_getKeyPath();
      v25 = v4;
      sub_21549ED9C();

      v16 = *(v4 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__accessibilityScrubMode);
      if (v16 != 3)
      {
        v17 = 10;
        if (v16 == 1)
        {
          v17 = 60;
        }

        v18 = 15;
        if (v16 != 1)
        {
          v18 = 1;
        }

        if (a1)
        {
          v19 = v18;
        }

        else
        {
          v19 = v17;
        }

        if ((a2 & 1) == 0)
        {
          if (*(v4 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__accessibilityScrubMode))
          {
            if (v16 != 1)
            {
              return sub_215463A5C(v19, a3);
            }

            v22 = v19;
            v23 = *(v4 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_audioController);
          }

          else
          {
            swift_getKeyPath();
            v25 = v4;
            sub_21549ED9C();

            if (*(v4 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__lastKnownAssetDuration + 8))
            {
              return result;
            }

            v23 = *(v4 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_audioController);
            v22 = *(v4 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__lastKnownAssetDuration) * v19 / 100.0;
          }

          return [v23 skipBackByInterval:0 completion:v22];
        }

        if (!*(v4 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__accessibilityScrubMode))
        {
          swift_getKeyPath();
          v25 = v4;
          sub_21549ED9C();

          if (*(v4 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__lastKnownAssetDuration + 8))
          {
            return result;
          }

          v21 = *(v4 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_audioController);
          v20 = *(v4 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__lastKnownAssetDuration) * v19 / 100.0;
          return [v21 skipAheadByInterval:0 completion:v20];
        }

        if (v16 == 1)
        {
          v20 = v19;
          v21 = *(v4 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_audioController);
          return [v21 skipAheadByInterval:0 completion:v20];
        }

        return sub_215463C34(v19, a3);
      }
    }
  }

  return result;
}

uint64_t sub_215464EE0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__transcriptViewed;
  swift_beginAccess();
  if (*(v1 + v2))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
    sub_21549ED8C();
  }

  else
  {
    *(v1 + v2) = 0;
  }

  v4 = MEMORY[0x277D84F90];
  sub_215454C94(MEMORY[0x277D84F90]);
  return sub_215454EB4(v4);
}

uint64_t sub_215465024()
{
  v1 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__transcriptViewed;
  result = swift_beginAccess();
  if (*(v0 + v1) == 1)
  {
    *(v0 + v1) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
    sub_21549ED8C();
  }

  return result;
}

uint64_t sub_215465150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_getKeyPath();
  sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);

  sub_21549ED9C();

  v23 = v4;
  swift_getKeyPath();
  sub_21549EDBC();

  v9 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__transcriptInteractionTargets;
  swift_beginAccess();
  v10 = *(v4 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v23 + v9) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_215317E44(0, *(v10 + 2) + 1, 1, v10);
    *(v5 + v9) = v10;
  }

  v13 = *(v10 + 2);
  v12 = *(v10 + 3);
  if (v13 >= v12 >> 1)
  {
    v10 = sub_215317E44((v12 > 1), v13 + 1, 1, v10);
  }

  *(v10 + 2) = v13 + 1;
  v14 = &v10[16 * v13];
  *(v14 + 4) = a1;
  *(v14 + 5) = a2;
  *(v5 + v9) = v10;
  swift_endAccess();
  swift_getKeyPath();
  sub_21549EDAC();

  swift_getKeyPath();

  sub_21549ED9C();

  swift_getKeyPath();
  sub_21549EDBC();

  v15 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__transcriptInteractionActionTypes;
  swift_beginAccess();
  v16 = *(v5 + v15);
  v17 = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + v15) = v16;
  if ((v17 & 1) == 0)
  {
    v16 = sub_215317E44(0, *(v16 + 2) + 1, 1, v16);
    *(v5 + v15) = v16;
  }

  v19 = *(v16 + 2);
  v18 = *(v16 + 3);
  if (v19 >= v18 >> 1)
  {
    v16 = sub_215317E44((v18 > 1), v19 + 1, 1, v16);
  }

  *(v16 + 2) = v19 + 1;
  v20 = &v16[16 * v19];
  *(v20 + 4) = a3;
  *(v20 + 5) = a4;
  *(v5 + v15) = v16;
  swift_endAccess();
  swift_getKeyPath();
  sub_21549EDAC();
}

uint64_t RecordingViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingState;
  v2 = sub_21549E95C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_2151ADCD8(v0 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__transcriptionModelState, &qword_27CA5D410);

  v3 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel___observationRegistrar;
  v4 = sub_21549EDDC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t RecordingViewModel.__deallocating_deinit()
{
  RecordingViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_215465684(void *a1, void *a2, uint64_t a3, int a4)
{
  v33 = a4;
  v32 = a3;
  v31 = sub_21549E56C();
  v6 = *(v31 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v31);
  v30 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5ACE0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v28 - v9;
  v11 = sub_21549E70C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21549E6FC();
  sub_21549E6BC();
  (*(v12 + 8))(v14, v11);
  v15 = sub_2154A1D2C();

  v16 = [a1 addAudioAttachmentWithIdentifier_];
  v28 = v16;

  v29 = [objc_allocWithZone(MEMORY[0x277D366A8]) initWithNote_];
  v17 = sub_2154A1D2C();
  [a1 updateChangeCountWithReason_];

  [a2 ic_save];
  v18 = sub_2154A202C();
  v19 = v10;
  (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
  v20 = v30;
  v21 = v31;
  (*(v6 + 16))(v30, v32, v31);
  v22 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v23 = v22 + v7;
  v24 = (v22 + v7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  (*(v6 + 32))(v25 + v22, v20, v21);
  *(v25 + v23) = v33;
  *(v25 + v24 + 8) = a2;
  *(v25 + ((v24 + 23) & 0xFFFFFFFFFFFFFFF8)) = v28;
  v26 = a2;
  sub_215354B4C(0, 0, v19, &unk_2154C60E0, v25);
}

uint64_t sub_215465A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 24) = a6;
  *(v7 + 32) = a7;
  *(v7 + 64) = a5;
  *(v7 + 16) = a4;
  return MEMORY[0x2822009F8](sub_215465A44, 0, 0);
}

uint64_t sub_215465A44()
{
  v1 = *(v0 + 32);
  sub_21549EA6C();
  v2 = [v1 objectID];
  *(v0 + 40) = v2;
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_215465B18;
  v4 = *(v0 + 64);
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);

  return MEMORY[0x282195098](v6, v4, v5, v2);
}

uint64_t sub_215465B18()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_215465C54, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_215465C54()
{
  v1 = *(v0 + 8);

  return v1();
}

unint64_t *sub_215465CB8(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
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

    v8 = a4;
    sub_21546A2C0(v7, a2, a3);
    v10 = v9;

    return v10;
  }

  return result;
}

uint64_t sub_215465D50(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = (a2 & 0xFFFFFFFFFFFFFF8);
      }

      return MEMORY[0x2821FCF40](v5, v4);
    }

    v8 = v4;
    v7 = a2;
  }

  else
  {
    if (!v3)
    {
      if (a1 == a2)
      {
        return 1;
      }

      if (*(a1 + 16) == *(a2 + 16))
      {
        v10 = a1 + 56;
        v11 = 1 << *(a1 + 32);
        if (v11 < 64)
        {
          v12 = ~(-1 << v11);
        }

        else
        {
          v12 = -1;
        }

        v13 = v12 & *(a1 + 56);
        sub_21549F32C();
        v14 = 0;
        v15 = (v11 + 63) >> 6;
        v16 = a2 + 56;
        v5 = &qword_27CA5A808;
        if (!v13)
        {
LABEL_27:
          v17 = v14;
          while (1)
          {
            v14 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
              break;
            }

            if (v14 >= v15)
            {
              return 1;
            }

            v18 = *(v10 + 8 * v14);
            ++v17;
            if (v18)
            {
              v23 = (v18 - 1) & v18;
              goto LABEL_32;
            }
          }

          __break(1u);
          return MEMORY[0x2821FCF40](v5, v4);
        }

        while (1)
        {
          v23 = (v13 - 1) & v13;
LABEL_32:
          sub_2154681B8(&qword_27CA5A808, MEMORY[0x277CBCDA8]);

          v19 = sub_2154A1C9C();
          v20 = -1 << *(a2 + 32);
          v21 = v19 & ~v20;
          if (((*(v16 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            break;
          }

          v22 = ~v20;
          sub_2154681B8(&qword_27CA5A810, MEMORY[0x277CBCDA8]);
          while ((sub_2154A1D1C() & 1) == 0)
          {
            v21 = (v21 + 1) & v22;
            if (((*(v16 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
            {
              goto LABEL_40;
            }
          }

          v15 = (v11 + 63) >> 6;
          v13 = v23;
          v5 = &qword_27CA5A808;
          if (!v23)
          {
            goto LABEL_27;
          }
        }

LABEL_40:
      }

      return 0;
    }

    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
  }

  return sub_215466044(v8, v7);
}

uint64_t sub_215466044(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = sub_2154A2C8C();
  if (v3 != result)
  {
    return 0;
  }

  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v8 &= v8 - 1;
LABEL_12:

    v12 = sub_2154A2CEC();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v5;
  while (1)
  {
    v5 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return 1;
    }

    v11 = *(a2 + 56 + 8 * v5);
    ++v10;
    if (v11)
    {
      v8 = (v11 - 1) & v11;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_215466148(uint64_t a1, uint64_t a2)
{
  v4 = sub_21549EB6C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D410);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E6F0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_215324EEC(a1, &v21 - v12, &qword_27CA5D410);
  sub_215324EEC(a2, &v13[v15], &qword_27CA5D410);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_215324EEC(v13, v10, &qword_27CA5D410);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_2154681B8(&qword_27CA5E6F8, MEMORY[0x277D35AB0]);
      v18 = sub_2154A1D1C();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_2151ADCD8(v13, &qword_27CA5D410);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_2151ADCD8(v13, &qword_27CA5E6F0);
    v17 = 1;
    return v17 & 1;
  }

  sub_2151ADCD8(v13, &qword_27CA5D410);
  v17 = 0;
  return v17 & 1;
}

char *sub_215466468(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5ACE0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v163 - v9;
  v11 = sub_21549EB6C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v164 = &v163 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E6F0);
  MEMORY[0x28223BE20](v170);
  v171 = &v163 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D410);
  MEMORY[0x28223BE20](v15 - 8);
  v165 = &v163 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v182 = &v163 - v18;
  v178 = sub_21549E75C();
  v177 = *(v178 - 8);
  MEMORY[0x28223BE20](v178);
  v176 = &v163 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E7D8);
  MEMORY[0x28223BE20](v20 - 8);
  v179 = &v163 - v21;
  v175 = sub_21549E77C();
  v174 = *(v175 - 8);
  MEMORY[0x28223BE20](v175);
  v173 = &v163 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v172 = &v163 - v24;
  v25 = sub_21549E95C();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v166 = &v163 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5B090);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v163 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v31);
  v163 = &v163 - v33;
  (*(v26 + 104))(&v4[OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingState], *MEMORY[0x277D359D0], v25, v32);
  v4[OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__isPlaying] = 0;
  *&v4[OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__playbackTime] = 0;
  *&v4[OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__lastPlaybackTime] = 0;
  v4[OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__needsSeekToTime] = 0;
  *&v4[OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingDurationWhenResumed] = 0;
  v4[OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__showTranscriptToggle] = 0;
  v4[OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__transcriptViewed] = 0;
  v34 = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__transcriptInteractionTargets] = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__transcriptInteractionActionTypes] = v34;
  v35 = [objc_opt_self() sharedAudioController];
  if (!v35)
  {
    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  *&v4[OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_audioController] = v35;
  v181 = v10;
  if (v34 >> 62 && sub_2154A2C8C())
  {
    v36 = sub_21532B158(MEMORY[0x277D84F90]);
  }

  else
  {
    v36 = MEMORY[0x277D84FA0];
  }

  *&v4[OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__observers] = v36;
  v4[OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__canBePlayedBack] = 0;
  v37 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__isCallRecording;
  v4[OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__isCallRecording] = 0;
  v4[OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__shouldShowTextViewOnFreshLaunch] = 0;
  v38 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_networkMonitor;
  sub_21549F43C();
  swift_allocObject();
  *&v4[v38] = sub_21549F42C();
  v39 = *(v12 + 56);
  v169 = v12 + 56;
  v168 = v39;
  v39(&v4[OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__transcriptionModelState], 1, 1, v11);
  v40 = &v4[OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__lastKnownAssetDuration];
  *v40 = 0;
  v40[8] = 1;
  v4[OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__microphoneState] = 1;
  v4[OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__accessibilityScrubMode] = 3;
  v41 = &v4[OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_transcriptTarget];
  *v41 = 0x6172546F69647561;
  *(v41 + 1) = 0xEF7470697263736ELL;
  v42 = &v4[OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_unknownTarget];
  *v42 = 0x6E776F6E6B6E75;
  *(v42 + 1) = 0xE700000000000000;
  v43 = &v4[OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_fullInsertToNoteActionType];
  *v43 = 0xD000000000000010;
  *(v43 + 1) = 0x80000002154DBDA0;
  v44 = &v4[OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_partialInsertToNoteActionType];
  *v44 = 0xD000000000000013;
  *(v44 + 1) = 0x80000002154DBDC0;
  v45 = &v4[OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_copyActionType];
  *v45 = 2037411683;
  *(v45 + 1) = 0xE400000000000000;
  v46 = &v4[OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_unknownActionType];
  *v46 = 0x6E776F6E6B6E75;
  *(v46 + 1) = 0xE700000000000000;
  sub_21549EDCC();
  *&v4[OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_attachmentModel] = a1;
  v47 = a1;
  if (![v47 attachment])
  {
    goto LABEL_85;
  }

  v180 = v12;
  v167 = v11;
  sub_21549F80C();
  swift_allocObject();
  *&v4[OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_generator] = sub_21549F78C();
  *&v4[OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_liveTranscriptionCoordinator] = a2;

  v48 = [v47 audioDocument];
  if (!v48)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v49 = v48;
  v50 = [v48 isCallRecording];

  v4[v37] = v50;
  *&v4[OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_summaryViewModel] = a3;

  v51 = [v47 attachment];
  if (!v51)
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v52 = v51;
  v53 = [v51 subAttachments];

  if (!v53)
  {
    goto LABEL_15;
  }

  sub_2151A6C9C(0, &qword_281199690);
  sub_21532210C(&qword_281199680, &qword_281199690);
  v54 = sub_2154A20CC();

  if ((v54 & 0xC000000000000001) == 0)
  {
    if (!*(v54 + 16))
    {
      goto LABEL_12;
    }

LABEL_14:

    goto LABEL_15;
  }

  if (sub_2154A2C8C())
  {
    goto LABEL_14;
  }

LABEL_12:
  result = [v47 audioDocument];
  if (!result)
  {
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v56 = result;
  v57 = [result isCallRecording];

  if (v57)
  {
    goto LABEL_14;
  }

  result = [v47 attachment];
  if (!result)
  {
LABEL_92:
    __break(1u);
    return result;
  }

  v142 = result;

  v143 = [v142 media];

  if (!v143)
  {
    v147 = sub_21549E56C();
    v145 = v163;
    (*(*(v147 - 8) + 56))(v163, 1, 1, v147);
LABEL_80:
    sub_2151ADCD8(v145, &unk_27CA5B090);
    goto LABEL_15;
  }

  v144 = [v143 mediaURL];

  v145 = v163;
  if (v144)
  {
    sub_21549E51C();

    v146 = sub_21549E56C();
    (*(*(v146 - 8) + 56))(v30, 0, 1, v146);
  }

  else
  {
    v146 = sub_21549E56C();
    (*(*(v146 - 8) + 56))(v30, 1, 1, v146);
  }

  sub_215323B30(v30, v145);
  sub_21549E56C();
  if ((*(*(v146 - 8) + 48))(v145, 1, v146) == 1)
  {
    goto LABEL_80;
  }

  sub_2151ADCD8(v145, &unk_27CA5B090);
  [v47 transformNewlyAddedMediaAttachment];
LABEL_15:
  sub_21549F93C();
  sub_21549F90C();
  v58 = sub_21549F8EC();

  v59 = v47;
  if (v58)
  {
    v60 = sub_21549F72C();
    v62 = v61;
    v63 = [v47 attachment];

    if (!v63)
    {
LABEL_89:
      __break(1u);
LABEL_90:

      __break(1u);
      goto LABEL_91;
    }

    v64 = [v63 identifier];

    if (v64)
    {
      v65 = sub_2154A1D6C();
      v67 = v66;

      if (v60 == v65 && v62 == v67)
      {

LABEL_23:
        *&v4[OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingManager] = v58;
        v69 = v58;
        v70 = v166;
        sub_21549F73C();
        sub_215453460(v70);

        goto LABEL_25;
      }

      v68 = sub_2154A2FAC();

      v59 = v58;
      if (v68)
      {
        goto LABEL_23;
      }
    }

    else
    {

      v59 = v58;
    }
  }

  v71 = objc_allocWithZone(sub_21549F77C());
  v72 = v47;

  *&v4[OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingManager] = sub_21549F75C();
LABEL_25:
  sub_215464350();
  sub_215459FC0();
  sub_215459BA0();
  if (qword_27CA59920 != -1)
  {
    swift_once();
  }

  v73 = sub_21549F11C();
  __swift_project_value_buffer(v73, qword_27CA5E668);
  swift_retain_n();
  v74 = sub_21549F0FC();
  v75 = sub_2154A225C();
  v76 = os_log_type_enabled(v74, v75);
  v77 = v182;
  if (!v76)
  {

    goto LABEL_39;
  }

  LODWORD(v166) = v75;
  v78 = swift_slowAlloc();
  v163 = swift_slowAlloc();
  v188 = v163;
  *v78 = 67110658;
  v79 = objc_opt_self();
  v80 = [v79 sharedInstance];
  v81 = [v80 supportsGeneralASR];

  *(v78 + 4) = v81;
  *(v78 + 8) = 1024;
  v82 = [v79 sharedInstance];
  LODWORD(v80) = [v82 supportsCallTranscription];

  *(v78 + 10) = v80;
  *(v78 + 14) = 2080;
  v83 = v172;
  sub_21549E73C();
  sub_2154681B8(&qword_27CA5E7E0, MEMORY[0x277CC9788]);
  v84 = v175;
  v85 = sub_2154A2F7C();
  v87 = v86;
  v88 = *(v174 + 8);
  v88(v83, v84);
  v89 = sub_215348D98(v85, v87, &v188);

  *(v78 + 16) = v89;
  *(v78 + 24) = 2080;
  v90 = v173;
  sub_21549E73C();
  v91 = v176;
  sub_21549E76C();
  v88(v90, v84);
  v92 = v179;
  sub_21549E74C();
  (*(v177 + 8))(v91, v178);
  v93 = sub_21549E72C();
  v94 = *(v93 - 8);
  if ((*(v94 + 48))(v92, 1, v93) == 1)
  {
    sub_2151ADCD8(v92, &qword_27CA5E7D8);
    v95 = 0;
    v96 = 0xE000000000000000;
  }

  else
  {
    v97 = sub_21549E71C();
    v98 = v92;
    v99 = v97;
    v96 = v100;
    (*(v94 + 8))(v98, v93);
    v95 = v99;
  }

  v101 = sub_215348D98(v95, v96, &v188);

  *(v78 + 26) = v101;
  *(v78 + 34) = 1024;
  swift_getKeyPath();
  v187 = v4;
  sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED9C();

  v102 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__isCallRecording;
  swift_beginAccess();
  LODWORD(v102) = v4[v102];

  *(v78 + 36) = v102;

  *(v78 + 40) = 1024;
  v103 = [*&v4[OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_attachmentModel] attachment];
  v77 = v182;
  if (!v103)
  {
    goto LABEL_90;
  }

  v104 = v103;
  v105 = [v103 note];

  if (!v105)
  {

    goto LABEL_37;
  }

  v106 = [v105 isEditable];

  if ((v106 & 1) == 0)
  {
LABEL_37:
    v107 = 0;
    goto LABEL_38;
  }

  v107 = 1;
LABEL_38:
  *(v78 + 42) = v107;

  *(v78 + 46) = 1024;
  v108 = sub_215457DE8();

  *(v78 + 48) = v108 & 1;

  _os_log_impl(&dword_2151A1000, v74, v166, "TRANSCRIPTION AVAILABILITY info: GASR enabled: %{BOOL}d Call transcription enabled: %{BOOL}d, locale: %s language: %s isCallRecording: %{BOOL}d, note is editable: %{BOOL}d hasTranscriptGuts: %{BOOL}d", v78, 0x34u);
  v109 = v163;
  swift_arrayDestroy();
  MEMORY[0x21606B520](v109, -1, -1);
  MEMORY[0x21606B520](v78, -1, -1);

LABEL_39:
  v110 = sub_21545724C() & 1;
  v111 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__showTranscriptToggle;
  swift_beginAccess();
  if (v110 == v4[v111])
  {
    v4[v111] = v110;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v163 - 2) = v4;
    *(&v163 - 8) = v110;
    v187 = v4;
    sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
    sub_21549ED8C();
  }

  if (sub_21545724C())
  {
    swift_getKeyPath();
    v187 = v4;
    sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
    sub_21549ED9C();

    v113 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__transcriptionModelState;
    swift_beginAccess();
    v114 = v180;
    v115 = v167;
    (*(v180 + 104))(v77, *MEMORY[0x277D35A90], v167);
    v168(v77, 0, 1, v115);
    v116 = *(v170 + 48);
    v117 = &v4[v113];
    v118 = v171;
    sub_215324EEC(v117, v171, &qword_27CA5D410);
    sub_215324EEC(v77, v118 + v116, &qword_27CA5D410);
    v119 = *(v114 + 48);
    if (v119(v118, 1, v115) == 1)
    {
      sub_2151ADCD8(v77, &qword_27CA5D410);
      if (v119(v118 + v116, 1, v115) == 1)
      {
        sub_2151ADCD8(v118, &qword_27CA5D410);
        goto LABEL_46;
      }
    }

    else
    {
      v123 = v165;
      sub_215324EEC(v118, v165, &qword_27CA5D410);
      if (v119(v118 + v116, 1, v115) != 1)
      {
        v137 = v180;
        v138 = v164;
        (*(v180 + 32))(v164, v118 + v116, v115);
        sub_2154681B8(&qword_27CA5E6F8, MEMORY[0x277D35AB0]);
        v139 = sub_2154A1D1C();
        v140 = v118;
        v141 = *(v137 + 8);
        v141(v138, v115);
        sub_2151ADCD8(v77, &qword_27CA5D410);
        v141(v123, v115);
        sub_2151ADCD8(v140, &qword_27CA5D410);
        v120 = v139 ^ 1;
        v121 = &v4[OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__shouldShowTextViewOnFreshLaunch];
        if (v4[OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__shouldShowTextViewOnFreshLaunch] != (v120 & 1))
        {
          goto LABEL_47;
        }

        goto LABEL_51;
      }

      sub_2151ADCD8(v77, &qword_27CA5D410);
      (*(v180 + 8))(v123, v115);
    }

    sub_2151ADCD8(v118, &qword_27CA5E6F0);
    v121 = &v4[OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__shouldShowTextViewOnFreshLaunch];
    v120 = 1;
    if ((v4[OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__shouldShowTextViewOnFreshLaunch] & 1) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_51;
  }

LABEL_46:
  v120 = 0;
  v121 = &v4[OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__shouldShowTextViewOnFreshLaunch];
  if (v4[OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__shouldShowTextViewOnFreshLaunch])
  {
LABEL_47:
    v122 = swift_getKeyPath();
    MEMORY[0x28223BE20](v122);
    *(&v163 - 2) = v4;
    *(&v163 - 8) = v120 & 1;
    v187 = v4;
    sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
    sub_21549ED8C();

    goto LABEL_52;
  }

LABEL_51:
  *v121 = v120 & 1;
LABEL_52:
  v124 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_audioController;
  v125 = [*&v4[OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_audioController] currentAttachment];
  v126 = [*&v4[OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_attachmentModel] attachment];
  if (!v126)
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v127 = v126;
  if (v125)
  {
    sub_2151A6C9C(0, &qword_281199690);
    v128 = sub_2154A291C();

    if (v128)
    {
      v129 = [*&v4[v124] isPlaying];
      v130 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__isPlaying;
      swift_beginAccess();
      if (v129 == v4[v130])
      {
        v4[v130] = v129;
      }

      else
      {
        v131 = swift_getKeyPath();
        MEMORY[0x28223BE20](v131);
        *(&v163 - 2) = v4;
        *(&v163 - 8) = v129;
        v186 = v4;
        sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
        sub_21549ED8C();
      }

      v132 = [*&v4[v124] currentPlayer];
      if (v132)
      {
        v133 = v132;
        [v132 currentTime];

        if (sub_2154A288C())
        {
          sub_2154A287C();
          v135 = v134;
          v136 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__playbackTime;
          swift_beginAccess();
          if (*&v4[v136] == v135)
          {
            *&v4[v136] = v135;
          }

          else
          {
            v148 = swift_getKeyPath();
            MEMORY[0x28223BE20](v148);
            *(&v163 - 2) = v4;
            *(&v163 - 1) = v135;
            v185 = v4;
            sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
            sub_21549ED8C();
          }

          sub_2154A287C();
          v150 = v149;
          v151 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__lastPlaybackTime;
          swift_beginAccess();
          if (*&v4[v151] == v150)
          {
            *&v4[v151] = v150;
          }

          else
          {
            v152 = swift_getKeyPath();
            MEMORY[0x28223BE20](v152);
            *(&v163 - 2) = v4;
            *(&v163 - 1) = v150;
            v184 = v4;
            sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
            sub_21549ED8C();
          }

          v153 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__needsSeekToTime;
          swift_beginAccess();
          if (v4[v153])
          {
            v154 = swift_getKeyPath();
            MEMORY[0x28223BE20](v154);
            *(&v163 - 2) = v4;
            *(&v163 - 8) = 0;
            v183 = v4;
            sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
            sub_21549ED8C();
          }

          else
          {
            v4[v153] = 0;
          }
        }
      }
    }
  }

  else
  {
  }

  v155 = sub_2154A202C();
  v156 = *(*(v155 - 8) + 56);
  v157 = v181;
  v156(v181, 1, 1, v155);
  sub_2154A1FFC();

  v158 = sub_2154A1FEC();
  v159 = swift_allocObject();
  v160 = MEMORY[0x277D85700];
  v159[2] = v158;
  v159[3] = v160;
  v159[4] = v4;
  sub_2152F4D50(0, 0, v157, &unk_2154C6180, v159);

  v156(v157, 1, 1, v155);

  v161 = sub_2154A1FEC();
  v162 = swift_allocObject();
  v162[2] = v161;
  v162[3] = v160;
  v162[4] = v4;
  sub_2152F4D50(0, 0, v157, &unk_2154C6190, v162);

  sub_21545B43C();
  return v4;
}

uint64_t type metadata accessor for RecordingViewModel()
{
  result = qword_27CA5E7A0;
  if (!qword_27CA5E7A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2154681B8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21546846C()
{
  result = qword_27CA5E788;
  if (!qword_27CA5E788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E788);
  }

  return result;
}

void sub_2154684C8()
{
  sub_21549E95C();
  if (v0 <= 0x3F)
  {
    sub_215469750();
    if (v1 <= 0x3F)
    {
      sub_21549EDDC();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of RecordingViewModel.downloadTranscriptionModelIfNeeded()()
{
  v4 = (*(*v0 + 1176) + **(*v0 + 1176));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2151BD278;

  return v4();
}

uint64_t dispatch thunk of RecordingViewModel.removeTranscriptionModel()()
{
  v4 = (*(*v0 + 1184) + **(*v0 + 1184));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2151BD36C;

  return v4();
}

uint64_t dispatch thunk of RecordingViewModel.didTapRecordingButton()()
{
  v4 = (*(*v0 + 1288) + **(*v0 + 1288));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2151BD36C;

  return v4();
}

uint64_t dispatch thunk of RecordingViewModel.stopRecordingFinal()()
{
  v4 = (*(*v0 + 1296) + **(*v0 + 1296));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2151BD36C;

  return v4();
}

uint64_t dispatch thunk of RecordingViewModel.assetDuration.getter()
{
  v4 = (*(*v0 + 1304) + **(*v0 + 1304));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2154693BC;

  return v4();
}

uint64_t sub_2154693BC(double a1)
{
  v6 = *v1;

  v3 = *(v6 + 8);
  v4.n128_f64[0] = a1;

  return v3(v4);
}

void sub_215469750()
{
  if (!qword_27CA5E7B0)
  {
    sub_21549EB6C();
    v0 = sub_2154A2B5C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CA5E7B0);
    }
  }
}

unint64_t sub_21546981C()
{
  result = qword_27CA5E7C0;
  if (!qword_27CA5E7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E7C0);
  }

  return result;
}

uint64_t sub_215469870()
{
  v1 = *(sub_21549E56C() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
  v5 = *(v4 + *(v1 + 64));

  return sub_215465684(v2, v3, v4, v5);
}

uint64_t sub_2154698F4(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_21549E56C() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v7);
  v11 = *(v1 + (v7 & 0xFFFFFFFFFFFFFFF8) + 8);
  v12 = *(v1 + (((v7 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_2151BD36C;

  return sub_215465A1C(a1, v8, v9, v1 + v6, v10, v11, v12);
}

uint64_t objectdestroy_212Tm()
{
  v1 = sub_21549E19C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_215469B3C(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(sub_21549E19C() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v4);
}

uint64_t objectdestroy_206Tm()
{
  v1 = sub_21549E19C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_215469CB8(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(sub_21549E19C() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

void sub_215469D6C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingManager);
  *(v1 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingManager) = v2;
  v4 = v2;
}

uint64_t sub_215469DAC(uint64_t a1)
{
  v42 = sub_21549EBCC();
  v2 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v41 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel___observationRegistrar;
  v5 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__showTranscriptToggle;
  v6 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_liveTranscriptionCoordinator;
  v7 = a1 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__lastKnownAssetDuration;
  swift_beginAccess();
  v8 = 0;
  v39 = (v2 + 8);
  v40 = v2 + 16;
  while (byte_28274DB38[v8 + 32])
  {
    if (byte_28274DB38[v8 + 32] == 1)
    {
      swift_getKeyPath();
      v43 = a1;
      sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
      sub_21549ED9C();

      if ((*(v7 + 8) & 1) == 0 && *v7 > 15.0)
      {
        swift_getKeyPath();
        v43 = a1;
        sub_21549ED9C();

        if ((*(v7 + 8) & 1) == 0 && *v7 > 15.0)
        {
          return 1;
        }
      }
    }

    else
    {
      swift_getKeyPath();
      v43 = a1;
      sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
      sub_21549ED9C();

      if (*(a1 + v5))
      {
        v9 = *(sub_21549EC8C() + 16);

        if (v9 >= 2)
        {
          swift_getKeyPath();
          v43 = a1;
          sub_21549ED9C();

          if ((*(v7 + 8) & 1) == 0)
          {
            v37 = v7;
            v38 = v6;
            v10 = *v7;
            v11 = sub_21549EC8C();
            v12 = *(v11 + 16);
            if (v12)
            {
              v34 = v5;
              v35 = v4;
              v43 = MEMORY[0x277D84F90];
              sub_21531B754(0, v12, 0);
              v13 = v43;
              v14 = *(v2 + 80);
              v33 = v11;
              v15 = v11 + ((v14 + 32) & ~v14);
              v16 = *(v2 + 72);
              v36 = v2;
              v17 = *(v2 + 16);
              do
              {
                v18 = v41;
                v19 = v42;
                v17(v41, v15, v42);
                sub_21549EBAC();
                v21 = v20;
                (*v39)(v18, v19);
                v43 = v13;
                v23 = *(v13 + 16);
                v22 = *(v13 + 24);
                if (v23 >= v22 >> 1)
                {
                  sub_21531B754((v22 > 1), v23 + 1, 1);
                  v13 = v43;
                }

                *(v13 + 16) = v23 + 1;
                *(v13 + 8 * v23 + 32) = v21;
                v15 += v16;
                --v12;
              }

              while (v12);

              v4 = v35;
              v2 = v36;
              v5 = v34;
            }

            else
            {

              v13 = MEMORY[0x277D84F90];
            }

            v24 = *(v13 + 16);
            v6 = v38;
            if (v24)
            {
              if (v24 <= 3)
              {
                v25 = 0;
                v26 = 0.0;
                goto LABEL_28;
              }

              v25 = v24 & 0x7FFFFFFFFFFFFFFCLL;
              v27 = (v13 + 48);
              v26 = 0.0;
              v28 = v24 & 0x7FFFFFFFFFFFFFFCLL;
              do
              {
                v26 = v26 + *(v27 - 2) + *(v27 - 1) + *v27 + v27[1];
                v27 += 4;
                v28 -= 4;
              }

              while (v28);
              if (v24 != v25)
              {
LABEL_28:
                v29 = v24 - v25;
                v30 = (v13 + 8 * v25 + 32);
                do
                {
                  v31 = *v30++;
                  v26 = v26 + v31;
                  --v29;
                }

                while (v29);
              }
            }

            else
            {
              v26 = 0.0;
            }

            v7 = v37;
            if (v10 * 0.5 <= v26)
            {
              return 2;
            }
          }
        }
      }
    }

LABEL_3:
    if (++v8 == 3)
    {
      return 3;
    }
  }

  swift_getKeyPath();
  v43 = a1;
  sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED9C();

  if (*(v7 + 8))
  {
    goto LABEL_3;
  }

  return 0;
}

void sub_21546A2C0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  v23 = 0;
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
LABEL_12:
    v13 = v10 | (v4 << 6);
    v14 = *(*(a3 + 48) + 8 * v13);
    v15 = [v14 objectID];
    sub_2151A6C9C(0, &qword_2811995F0);
    v16 = sub_2154A291C();

    if ((v16 & 1) != 0 || (v17 = [v14 media]) == 0)
    {
    }

    else
    {
      v18 = v17;
      v19 = [v17 hasFile];

      if (v19)
      {
        *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        if (__OFADD__(v23++, 1))
        {
          __break(1u);
LABEL_18:

          sub_21531B2C8(a1, v21, v23, a3);
          return;
        }
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
      goto LABEL_18;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_21546A484(uint64_t a1, void *a2)
{
  v3 = v2;
  v34 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = (8 * v7);
  v9 = a2;
  v33 = v9;
  if (v6 > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v29 = v7;
    v30 = v3;
    v28[1] = v28;
    MEMORY[0x28223BE20](v9);
    v31 = v28 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v31, v8);
    v32 = 0;
    v10 = 0;
    v3 = a1 + 56;
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v7 = v12 & *(a1 + 56);
    v13 = (v11 + 63) >> 6;
    while (v7)
    {
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v17 = v14 | (v10 << 6);
      v8 = *(*(a1 + 48) + 8 * v17);
      v18 = [v8 objectID];
      sub_2151A6C9C(0, &qword_2811995F0);
      v19 = sub_2154A291C();

      if ((v19 & 1) != 0 || (v20 = [v8 media]) == 0)
      {
      }

      else
      {
        v21 = v20;
        v22 = [v20 hasFile];

        if (v22)
        {
          *&v31[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
          if (__OFADD__(v32++, 1))
          {
            __break(1u);
LABEL_19:
            v24 = sub_21531B2C8(v31, v29, v32, a1);

            return v24;
          }
        }
      }
    }

    v15 = v10;
    while (1)
    {
      v10 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v10 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v3 + 8 * v10);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v7 = (v16 - 1) & v16;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v26 = swift_slowAlloc();
  v27 = v33;
  v24 = sub_215465CB8(v26, v7, a1, v27);

  MEMORY[0x21606B520](v26, -1, -1);

  return v24;
}

uint64_t sub_21546A774(uint64_t a1, void *a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_21546A484(a1, a2);
  }

  v2 = MEMORY[0x277D84FA0];
  v21 = MEMORY[0x277D84FA0];
  v3 = a2;
  sub_2154A2C3C();
  if (sub_2154A2CDC())
  {
    sub_2151A6C9C(0, &qword_281199690);
    do
    {
      swift_dynamicCast();
      v4 = [v20 objectID];
      sub_2151A6C9C(0, &qword_2811995F0);
      v5 = sub_2154A291C();

      if (v5 & 1) == 0 && (v6 = [v20 media]) != 0 && (v7 = v6, v8 = objc_msgSend(v6, sel_hasFile), v7, (v8))
      {
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_2153EC26C(v9 + 1);
        }

        v2 = v21;
        result = sub_2154A290C();
        v11 = v21 + 56;
        v12 = -1 << *(v21 + 32);
        v13 = result & ~v12;
        v14 = v13 >> 6;
        if (((-1 << v13) & ~*(v21 + 56 + 8 * (v13 >> 6))) != 0)
        {
          v15 = __clz(__rbit64((-1 << v13) & ~*(v21 + 56 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v16 = 0;
          v17 = (63 - v12) >> 6;
          do
          {
            if (++v14 == v17 && (v16 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v18 = v14 == v17;
            if (v14 == v17)
            {
              v14 = 0;
            }

            v16 |= v18;
            v19 = *(v11 + 8 * v14);
          }

          while (v19 == -1);
          v15 = __clz(__rbit64(~v19)) + (v14 << 6);
        }

        *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
        *(*(v21 + 48) + 8 * v15) = v20;
        ++*(v21 + 16);
      }

      else
      {
      }
    }

    while (sub_2154A2CDC());
  }

  return v2;
}

void sub_21546AA00()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__lastKnownAssetDuration;
  *v2 = *(v0 + 24);
  *(v2 + 8) = v1;
}

uint64_t sub_21546AA30(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2151BD36C;

  return sub_21545CB88(a1, v4, v5, v6);
}

uint64_t sub_21546AAFC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2151BD36C;

  return sub_21545C190(a1, v4, v5, v6);
}

uint64_t sub_21546ABB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D410);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21546AC3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2151BD36C;

  return sub_215456768(a1, v4, v5, v6);
}

uint64_t sub_21546ACF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2151BD278;

  return sub_215456B90(a1, v4, v5, v6);
}

uint64_t sub_21546ADA4(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  result = swift_beginAccess();
  *(v2 + v4) = v3;
  return result;
}

uint64_t sub_21546AFF0()
{
  v0 = sub_21549F11C();
  __swift_allocate_value_buffer(v0, qword_27CA5E7E8);
  __swift_project_value_buffer(v0, qword_27CA5E7E8);
  return sub_21549F09C();
}

uint64_t sub_21546B07C(uint64_t *a1, id a2)
{
  v3 = [a2 visibleAttachments];
  sub_2151A6C9C(0, &qword_281199690);
  sub_215329E1C();
  v4 = sub_2154A20CC();

  *a1 = v4;
}

uint64_t sub_21546B1A8(void *a1)
{
  v141 = a1;
  v2 = sub_21549E56C();
  v139 = *(v2 - 8);
  v140 = v2;
  MEMORY[0x28223BE20](v2);
  v136 = v127 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B3A8);
  MEMORY[0x28223BE20](v137);
  v5 = v127 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v135 = v127 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = v127 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5B090);
  MEMORY[0x28223BE20](v11 - 8);
  v129 = v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v131 = v127 - v14;
  MEMORY[0x28223BE20](v15);
  v132 = v127 - v16;
  MEMORY[0x28223BE20](v17);
  v130 = v127 - v18;
  MEMORY[0x28223BE20](v19);
  v133 = v127 - v20;
  MEMORY[0x28223BE20](v21);
  v134 = v127 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = v127 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = v127 - v27;
  *&v30 = MEMORY[0x28223BE20](v29).n128_u64[0];
  v32 = v127 - v31;
  v138 = v1;
  v33 = [v1 activityType];
  v34 = sub_2154A1D6C();
  v36 = v35;

  if (v34 == 0xD000000000000024 && 0x80000002154DBE50 == v36)
  {
    goto LABEL_3;
  }

  v37 = sub_2154A2FAC();

  if (v37)
  {
    goto LABEL_5;
  }

  v128 = v5;
  v52 = [v141 activityType];
  v53 = sub_2154A1D6C();
  v55 = v54;

  if (v53 == 0xD000000000000024 && 0x80000002154DBE50 == v55)
  {
LABEL_3:

    goto LABEL_5;
  }

  v56 = sub_2154A2FAC();

  if (v56)
  {
LABEL_5:
    v38 = [v138 webpageURL];
    if (v38)
    {
      v39 = v38;
      sub_21549E51C();

      v40 = v139;
      v41 = *(v139 + 56);
      v42 = v32;
      v43 = 0;
    }

    else
    {
      v40 = v139;
      v41 = *(v139 + 56);
      v42 = v32;
      v43 = 1;
    }

    v44 = v140;
    v41(v42, v43, 1, v140);
    v45 = [v141 webpageURL];
    if (v45)
    {
      v46 = v45;
      sub_21549E51C();

      v47 = 0;
    }

    else
    {
      v47 = 1;
    }

    v41(v28, v47, 1, v44);
    v48 = *(v137 + 48);
    sub_215365FAC(v32, v10);
    sub_215365FAC(v28, &v10[v48]);
    v49 = *(v40 + 48);
    if (v49(v10, 1, v44) == 1)
    {
      sub_2151ADCD8(v28, &unk_27CA5B090);
      sub_2151ADCD8(v32, &unk_27CA5B090);
      if (v49(&v10[v48], 1, v44) == 1)
      {
        sub_2151ADCD8(v10, &unk_27CA5B090);
        v50 = 1;
        return v50 & 1;
      }
    }

    else
    {
      sub_215365FAC(v10, v25);
      if (v49(&v10[v48], 1, v44) != 1)
      {
        v69 = &v10[v48];
        v70 = v136;
        (*(v40 + 32))(v136, v69, v44);
        sub_21537AF08();
        v50 = sub_2154A1D1C();
        v71 = *(v40 + 8);
        v71(v70, v44);
        sub_2151ADCD8(v28, &unk_27CA5B090);
        sub_2151ADCD8(v32, &unk_27CA5B090);
        v71(v25, v44);
        sub_2151ADCD8(v10, &unk_27CA5B090);
        return v50 & 1;
      }

      sub_2151ADCD8(v28, &unk_27CA5B090);
      sub_2151ADCD8(v32, &unk_27CA5B090);
      (*(v40 + 8))(v25, v44);
    }

    goto LABEL_16;
  }

  v57 = v138;
  v58 = [v138 activityType];
  v59 = sub_2154A1D6C();
  v61 = v60;

  v62 = [v141 activityType];
  v63 = sub_2154A1D6C();
  v65 = v64;

  if (v59 == v63 && v61 == v65)
  {

    v67 = v139;
    v66 = v140;
    v68 = v134;
  }

  else
  {
    v73 = sub_2154A2FAC();

    v67 = v139;
    v66 = v140;
    v68 = v134;
    if ((v73 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v74 = [v57 webpageURL];
  if (v74)
  {
    v75 = v74;
    sub_21549E51C();

    v76 = *(v67 + 56);
    v76(v68, 0, 1, v66);
  }

  else
  {
    v76 = *(v67 + 56);
    v76(v68, 1, 1, v66);
  }

  v77 = [v141 webpageURL];
  if (v77)
  {
    v78 = v133;
    v79 = v77;
    sub_21549E51C();

    v80 = 0;
  }

  else
  {
    v80 = 1;
    v78 = v133;
  }

  v127[1] = v67 + 56;
  v76(v78, v80, 1, v66);
  v81 = *(v137 + 48);
  v82 = v135;
  sub_215365FAC(v68, v135);
  sub_215365FAC(v78, v82 + v81);
  v83 = *(v67 + 48);
  if (v83(v82, 1, v66) == 1)
  {
    sub_2151ADCD8(v78, &unk_27CA5B090);
    v10 = v135;
    sub_2151ADCD8(v68, &unk_27CA5B090);
    if (v83(&v10[v81], 1, v66) == 1)
    {
      sub_2151ADCD8(v10, &unk_27CA5B090);
      v84 = v57;
      goto LABEL_40;
    }

LABEL_16:
    v51 = v10;
LABEL_17:
    sub_2151ADCD8(v51, &qword_27CA5B3A8);
LABEL_18:
    v50 = 0;
    return v50 & 1;
  }

  v85 = v130;
  sub_215365FAC(v82, v130);
  if (v83((v82 + v81), 1, v66) == 1)
  {
    sub_2151ADCD8(v133, &unk_27CA5B090);
    v10 = v135;
    sub_2151ADCD8(v134, &unk_27CA5B090);
    (*(v67 + 8))(v85, v66);
    goto LABEL_16;
  }

  v86 = v136;
  (*(v67 + 32))(v136, v82 + v81, v66);
  sub_21537AF08();
  v87 = sub_2154A1D1C();
  v66 = v140;
  v88 = v87;
  v89 = v85;
  v90 = *(v67 + 8);
  v90(v86, v140);
  sub_2151ADCD8(v133, &unk_27CA5B090);
  sub_2151ADCD8(v134, &unk_27CA5B090);
  v90(v89, v66);
  v84 = v138;
  v67 = v139;
  sub_2151ADCD8(v135, &unk_27CA5B090);
  if ((v88 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_40:
  v91 = [v84 _canonicalURL];
  if (v91)
  {
    v92 = v132;
    v93 = v91;
    sub_21549E51C();

    v94 = 0;
  }

  else
  {
    v94 = 1;
    v92 = v132;
  }

  v95 = 1;
  v76(v92, v94, 1, v66);
  v96 = [v141 _canonicalURL];
  v97 = v131;
  if (v96)
  {
    v98 = v96;
    sub_21549E51C();

    v95 = 0;
  }

  v76(v97, v95, 1, v66);
  v99 = *(v137 + 48);
  v100 = v132;
  v101 = v128;
  sub_215365FAC(v132, v128);
  sub_215365FAC(v97, v101 + v99);
  if (v83(v101, 1, v66) == 1)
  {
    sub_2151ADCD8(v97, &unk_27CA5B090);
    sub_2151ADCD8(v100, &unk_27CA5B090);
    if (v83((v101 + v99), 1, v66) == 1)
    {
      sub_2151ADCD8(v101, &unk_27CA5B090);
      goto LABEL_52;
    }

LABEL_50:
    v51 = v101;
    goto LABEL_17;
  }

  v102 = v129;
  sub_215365FAC(v101, v129);
  if (v83((v101 + v99), 1, v66) == 1)
  {
    sub_2151ADCD8(v131, &unk_27CA5B090);
    sub_2151ADCD8(v132, &unk_27CA5B090);
    (*(v67 + 8))(v102, v66);
    goto LABEL_50;
  }

  v103 = v136;
  (*(v67 + 32))(v136, v101 + v99, v66);
  sub_21537AF08();
  v104 = sub_2154A1D1C();
  v105 = *(v67 + 8);
  v105(v103, v66);
  sub_2151ADCD8(v131, &unk_27CA5B090);
  sub_2151ADCD8(v132, &unk_27CA5B090);
  v105(v102, v66);
  sub_2151ADCD8(v101, &unk_27CA5B090);
  if ((v104 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_52:
  v106 = [v84 targetContentIdentifier];
  if (v106)
  {
    v107 = v106;
    v108 = sub_2154A1D6C();
    v110 = v109;
  }

  else
  {
    v108 = 0;
    v110 = 0;
  }

  v111 = [v141 targetContentIdentifier];
  if (v111)
  {
    v112 = v111;
    v113 = sub_2154A1D6C();
    v115 = v114;

    if (v110)
    {
      if (!v115)
      {
        goto LABEL_78;
      }

      if (v108 == v113 && v110 == v115)
      {
      }

      else
      {
        v116 = sub_2154A2FAC();

        if ((v116 & 1) == 0)
        {
          goto LABEL_18;
        }
      }
    }

    else if (v115)
    {
LABEL_78:

      goto LABEL_18;
    }
  }

  else if (v110)
  {
    goto LABEL_78;
  }

  v117 = [v84 persistentIdentifier];
  if (v117)
  {
    v118 = v117;
    v119 = sub_2154A1D6C();
    v121 = v120;
  }

  else
  {
    v119 = 0;
    v121 = 0;
  }

  v122 = [v141 persistentIdentifier];
  if (!v122)
  {
    if (v121)
    {
      goto LABEL_78;
    }

    goto LABEL_79;
  }

  v123 = v122;
  v124 = sub_2154A1D6C();
  v126 = v125;

  if (!v121)
  {
    if (v126)
    {
      goto LABEL_78;
    }

LABEL_79:
    v50 = 1;
    return v50 & 1;
  }

  if (!v126)
  {
    goto LABEL_78;
  }

  if (v119 == v124 && v121 == v126)
  {

    v50 = 1;
  }

  else
  {
    v50 = sub_2154A2FAC();
  }

  return v50 & 1;
}

id PaperCommonUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PaperCommonUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PaperCommonUtilities.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL sub_21546C0EC(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*a1 == *a2 && v4 == v5)
    {
      return 1;
    }

    else
    {
      return sub_2154A2FAC() & 1;
    }
  }

  return result;
}

void *_s11NotesEditor20PaperCommonUtilitiesC19activitiesToExclude7forNote19currentUserActivitySaySo06NSUserM0CGSo6ICNoteC_AHSgtFZ_0(void *a1, void *a2)
{
  v167 = *MEMORY[0x277D85DE8];
  v4 = sub_21549E56C();
  v5 = *(v4 - 1);
  MEMORY[0x28223BE20](v4);
  v154 = &v131 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v131 - v8;
  MEMORY[0x28223BE20](v10);
  v140 = &v131 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5B090);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v131 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v142 = &v131 - v16;
  *&v18 = MEMORY[0x28223BE20](v17).n128_u64[0];
  v147 = &v131 - v19;
  v158 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_104;
  }

LABEL_2:
  v20 = MEMORY[0x277D84FA0];
LABEL_3:
  v157 = v20;
  v21 = [a1 managedObjectContext];
  if (!v21)
  {
    if (qword_27CA59928 == -1)
    {
LABEL_8:
      v31 = sub_21549F11C();
      __swift_project_value_buffer(v31, qword_27CA5E7E8);
      v32 = sub_21549F0FC();
      v33 = sub_2154A226C();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_2151A1000, v32, v33, "Note didn't have a MOC. Not providing any activities to exclude.", v34, 2u);
        MEMORY[0x21606B520](v34, -1, -1);
      }

      v35 = 0;
      v36 = MEMORY[0x277D84F90];
      goto LABEL_110;
    }

LABEL_114:
    swift_once();
    goto LABEL_8;
  }

  v138 = v14;
  v131 = v9;
  v22 = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = &v157;
  *(v23 + 24) = a1;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_21546DE8C;
  *(v24 + 24) = v23;
  v146 = v23;
  v165 = sub_2153252BC;
  v166 = v24;
  aBlock = MEMORY[0x277D85DD0];
  v162 = 1107296256;
  v163 = sub_2152F1C04;
  v164 = &block_descriptor_34;
  v14 = _Block_copy(&aBlock);
  v25 = a1;

  v145 = v22;
  [v22 performBlockAndWait_];
  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_107:
    v109 = sub_2154A2C8C();
    if (!v109)
    {
      goto LABEL_108;
    }

LABEL_83:
    if (v109 >= 1)
    {
      v110 = 0;
      v111 = MEMORY[0x277D84F90];
      while (1)
      {
        v112 = (v22 & 0xC000000000000001) != 0 ? MEMORY[0x216069960](v110, v22) : *(v22 + 8 * v110 + 32);
        v113 = v112;
        v114 = [v112 activityType];
        v115 = sub_2154A1D6C();
        v117 = v116;

        if (v115 == sub_2154A1D6C() && v117 == v118)
        {
          break;
        }

        v120 = sub_2154A2FAC();

        if (v120)
        {
          goto LABEL_97;
        }

LABEL_86:
        if (v109 == ++v110)
        {
          goto LABEL_109;
        }
      }

LABEL_97:
      v121 = objc_allocWithZone(MEMORY[0x277CCAE58]);
      v122 = sub_2154A1D2C();
      v123 = [v121 initWithActivityType_];

      v124 = [v113 webpageURL];
      if (v124)
      {
        v125 = v154;
        v126 = v124;
        sub_21549E51C();

        v127 = sub_21549E49C();
        (v151->isa)(v125, v152);
      }

      else
      {
        v127 = 0;
      }

      [v123 setWebpageURL_];

      v128 = v123;
      MEMORY[0x216068AC0]();
      if (*((v160[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v160[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2154A1F8C();
      }

      sub_2154A1FAC();

      v111 = v160[0];
      goto LABEL_86;
    }

    __break(1u);
    goto LABEL_114;
  }

  v144 = a2;
  v152 = v4;
  v27 = v157;
  if ((v157 & 0xC000000000000001) != 0)
  {

    sub_2154A2C3C();
    sub_2151A6C9C(0, &qword_281199690);
    sub_215329E1C();
    sub_2154A20FC();
    v27 = aBlock;
    a1 = v162;
    v29 = v163;
    v30 = v164;
    a2 = v165;
  }

  else
  {
    v37 = -1 << *(v157 + 32);
    a1 = (v157 + 56);
    v29 = ~v37;
    v38 = -v37;
    if (v38 < 64)
    {
      v39 = ~(-1 << v38);
    }

    else
    {
      v39 = -1;
    }

    a2 = (v39 & *(v157 + 56));

    v30 = 0;
  }

  v149 = 0;
  v143 = v29;
  v9 = ((v29 + 64) >> 6);
  v141 = v5 + 7;
  v155 = "shouldResumeLastQuickNote";
  v137 = v5 + 6;
  v132 = v5 + 2;
  v151 = v5 + 1;
  v22 = MEMORY[0x277D84F90];
  *&v28 = 136315394;
  v139 = v28;
  v150 = v9;
  v148 = a1;
  while (1)
  {
    if ((v27 & 0x8000000000000000) == 0)
    {
      v40 = v30;
      v41 = a2;
      v42 = v30;
      if (a2)
      {
LABEL_21:
        v153 = (v41 - 1) & v41;
        v4 = *(*(v27 + 48) + ((v42 << 9) | (8 * __clz(__rbit64(v41)))));
        if (!v4)
        {
          break;
        }

        goto LABEL_25;
      }

      while (1)
      {
        v42 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          break;
        }

        if (v42 >= v9)
        {
          goto LABEL_78;
        }

        v41 = *(a1 + v42);
        ++v40;
        if (v41)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_104:
      if (!sub_2154A2C8C())
      {
        goto LABEL_2;
      }

      sub_21532A754(MEMORY[0x277D84F90]);
      v20 = v129;
      goto LABEL_3;
    }

    v43 = sub_2154A2CDC();
    if (!v43)
    {
      break;
    }

    v156 = v43;
    sub_2151A6C9C(0, &qword_281199690);
    swift_dynamicCast();
    v4 = v160[0];
    v42 = v30;
    v153 = a2;
    if (!v160[0])
    {
      break;
    }

LABEL_25:
    v44 = [v4 synapseData];
    if (v44)
    {
      v45 = v44;
      v46 = sub_21549E59C();
      v48 = v47;

      v49 = objc_allocWithZone(MEMORY[0x277D6B790]);
      sub_215324200(v46, v48);
      v50 = sub_21549E58C();
      v160[0] = 0;
      v51 = [v49 initWithData:v50 error:v160];

      v5 = v160[0];
      if (!v51)
      {
        v61 = v160[0];
        v62 = sub_21549E3DC();

        swift_willThrow();
        sub_215324170(v46, v48);
        v160[0] = v62;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA59E88);
        sub_2151A6C9C(0, &qword_27CA5E800);
        swift_dynamicCast();
        v63 = v156;
        if (qword_27CA59928 != -1)
        {
          swift_once();
        }

        v64 = sub_21549F11C();
        __swift_project_value_buffer(v64, qword_27CA5E7E8);
        v65 = v4;
        v14 = v63;
        v5 = sub_21549F0FC();
        v66 = sub_2154A226C();

        if (os_log_type_enabled(v5, v66))
        {
          v4 = swift_slowAlloc();
          v134 = swift_slowAlloc();
          v159 = v134;
          *v4 = v139;
          v67 = [v65 ic_loggingIdentifier];
          v136 = v22;
          v135 = v27;
          v68 = v67;
          v69 = sub_2154A1D6C();
          v70 = v14;
          v133 = v14;
          v71 = v69;
          v149 = v65;
          v73 = v72;

          v74 = sub_215348D98(v71, v73, &v159);

          *(v4 + 1) = v74;
          *(v4 + 6) = 2080;
          v75 = [v70 localizedDescription];
          v14 = sub_2154A1D6C();
          v77 = v76;

          v78 = sub_215348D98(v14, v77, &v159);
          v27 = v135;
          v22 = v136;

          *(v4 + 14) = v78;
          _os_log_impl(&dword_2151A1000, v5, v66, "Encountered error trying to create synapse item {attachment: %s, error: %s}", v4, 0x16u);
          v79 = v134;
          swift_arrayDestroy();
          MEMORY[0x21606B520](v79, -1, -1);
          MEMORY[0x21606B520](v4, -1, -1);
          sub_215324170(v46, v48);
        }

        else
        {
          sub_215324170(v46, v48);
        }

        v149 = 0;
        v30 = v42;
        a2 = v153;
        goto LABEL_59;
      }

      v52 = v160[0];
      sub_215324170(v46, v48);
      v53 = [v51 userActivity];
      if (v53)
      {
        v14 = v53;
        v5 = &v158;
        MEMORY[0x216068AC0]();
        if (*((v158 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v158 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2154A1F8C();
        }

        sub_2154A1FAC();

        sub_215324170(v46, v48);
LABEL_31:
        v22 = v158;
        goto LABEL_55;
      }

      sub_215324170(v46, v48);

LABEL_55:
      v30 = v42;
      a2 = v153;
      v9 = v150;
    }

    else
    {
      v5 = &selRef__dataOwnerForCopy;
      if ([v4 attachmentType] != 13)
      {
        if ([v4 attachmentType] != 8)
        {

          goto LABEL_77;
        }

        v80 = [v4 URL];
        if (!v80)
        {

          v91 = v147;
          (v141->isa)(v147, 1, 1, v152);
          sub_2151ADCD8(v91, &unk_27CA5B090);
          goto LABEL_55;
        }

        v81 = v147;
        v82 = v80;
        sub_21549E51C();

        isa = v141->isa;
        v84 = 1;
        v85 = v152;
        (v141->isa)(v81, 0, 1, v152);
        sub_2151ADCD8(v81, &unk_27CA5B090);
        v86 = objc_allocWithZone(MEMORY[0x277CCAE58]);
        v87 = sub_2154A1D2C();
        v136 = [v86 initWithActivityType_];

        v88 = [v4 URL];
        v89 = v138;
        if (v88)
        {
          v90 = v88;
          sub_21549E51C();

          v84 = 0;
        }

        v92 = v142;
        isa(v89, v84, 1, v85);
        sub_215323B30(v89, v92);
        if ((v137->isa)(v92, 1, v85))
        {
          v93 = a1;
          v94 = sub_2151ADCD8(v92, &unk_27CA5B090);
        }

        else
        {
          v97 = v140;
          (v132->isa)(v140, v92, v85);
          sub_2151ADCD8(v92, &unk_27CA5B090);
          sub_21549E54C();
          v99 = v98;
          v94 = (v151->isa)(v97, v85);
          v93 = a1;
          if (v99)
          {
            v95 = sub_2154A1DAC();
            v96 = v100;

            goto LABEL_67;
          }
        }

        v95 = 0;
        v96 = 0;
LABEL_67:
        v160[0] = v95;
        v160[1] = v96;
        MEMORY[0x28223BE20](v94);
        *(&v131 - 2) = v160;
        v101 = v149;
        v102 = sub_215384F64(sub_21546DE94, (&v131 - 4), &unk_28274DBB0);
        v149 = v101;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5ADE0);
        swift_arrayDestroy();

        a1 = v93;
        v14 = v136;
        if (v102)
        {
          v103 = [v4 URL];
          if (v103)
          {
            v104 = v131;
            v105 = v103;
            sub_21549E51C();

            v106 = sub_21549E49C();
            (v151->isa)(v104, v85);
          }

          else
          {
            v106 = 0;
          }

          [v14 setWebpageURL_];
        }

        v107 = v14;
        v5 = &v158;
        MEMORY[0x216068AC0]();
        if (*((v158 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v158 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v14 = *((v158 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_2154A1F8C();
        }

        sub_2154A1FAC();

        goto LABEL_31;
      }

      v5 = sub_21549ED3C();
      v54 = MEMORY[0x2160658C0](v4);
      v55 = v54;
      if (v54 >> 62)
      {
        v56 = sub_2154A2C8C();
        if (v56)
        {
          goto LABEL_35;
        }

        goto LABEL_76;
      }

      v56 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v56)
      {
LABEL_35:
        if (v56 < 1)
        {
          __break(1u);
LABEL_112:
          sub_2154A1F8C();
LABEL_80:
          sub_2154A1FAC();
          v22 = v158;
          goto LABEL_81;
        }

        for (i = 0; i != v56; ++i)
        {
          if ((v55 & 0xC000000000000001) != 0)
          {
            v58 = MEMORY[0x216069960](i, v55);
          }

          else
          {
            v58 = *(v55 + 8 * i + 32);
          }

          v14 = v58;
          v59 = [v58 userActivity];
          if (v59)
          {
            v60 = v59;
            v5 = &v158;
            MEMORY[0x216068AC0]();
            if (*((v158 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v158 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v136 = *((v158 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_2154A1F8C();
            }

            sub_2154A1FAC();

            v22 = v158;
          }

          else
          {
          }
        }

        v30 = v42;
        a2 = v153;
LABEL_59:
        a1 = v148;
        v9 = v150;
      }

      else
      {
LABEL_76:

LABEL_77:
        v30 = v42;
        a2 = v153;
      }
    }
  }

LABEL_78:
  sub_2151A66EC();
  if (v144)
  {
    v108 = v144;
    MEMORY[0x216068AC0]();
    if (*((v158 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v158 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_80;
    }

    goto LABEL_112;
  }

LABEL_81:
  v160[0] = MEMORY[0x277D84F90];
  if (v22 >> 62)
  {
    goto LABEL_107;
  }

  v109 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v109)
  {
    goto LABEL_83;
  }

LABEL_108:
  v111 = MEMORY[0x277D84F90];
LABEL_109:
  v156 = v22;
  sub_21547ED9C(v111);

  v36 = v156;
  v35 = sub_21546DE8C;
LABEL_110:

  sub_21532594C(v35);
  return v36;
}

void *sub_21546D400(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {
    v6 = a2;
    v7 = _s11NotesEditor20PaperCommonUtilitiesC19activitiesToExclude7forNote19currentUserActivitySaySo06NSUserM0CGSo6ICNoteC_AHSgtFZ_0(v6, 0);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(a1 + 16);
  v9 = v7 & 0xFFFFFFFFFFFFFF8;
  v61 = v7 & 0xFFFFFFFFFFFFFF8;
  if (v7 < 0)
  {
    v9 = v7;
  }

  if (v8)
  {
    v51 = v9;
    v52 = a1;
    v10 = 0;
    v58 = a1 + 32;
    v60 = v7 & 0xC000000000000001;
    v55 = MEMORY[0x277D84F90];
    v56 = *(a1 + 16);
    v53 = v7;
    v54 = a4;
    while (1)
    {
      if (v10 >= v8)
      {
        goto LABEL_56;
      }

      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_57;
      }

      v59 = *(v58 + 16 * v10);
      sub_2154A16EC();
      v12 = swift_dynamicCastClass();
      swift_unknownObjectRetain();
      if (!v12)
      {
        break;
      }

      ++v10;
      swift_unknownObjectRetain();
      if (a4 && (v13 = sub_2154A16CC(), v14 = [v13 sourceIdentifier], v13, v15 = sub_2154A1D6C(), v17 = v16, v14, v62[0] = v15, v62[1] = v17, sub_215324954(), v18 = sub_2154A2BAC(), , v18))
      {
        swift_unknownObjectRelease();
        if (qword_27CA59928 != -1)
        {
          swift_once();
        }

        v19 = sub_21549F11C();
        __swift_project_value_buffer(v19, qword_27CA5E7E8);
        swift_unknownObjectRetain();

        v20 = sub_21549F0FC();
        v21 = sub_2154A225C();

        swift_unknownObjectRelease();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          v62[0] = v23;
          *v22 = 136643075;
          v24 = sub_2154A16CC();
          v25 = [v24 sourceIdentifier];

          v26 = sub_2154A1D6C();
          v28 = v27;

          v29 = sub_215348D98(v26, v28, v62);
          v8 = v56;

          *(v22 + 4) = v29;
          *(v22 + 12) = 2085;
          *(v22 + 14) = sub_215348D98(a3, v54, v62);
          _os_log_impl(&dword_2151A1000, v20, v21, "Ignoring link from %{sensitive}s since it doesn't match the host %{sensitive}s", v22, 0x16u);
          swift_arrayDestroy();
          v30 = v23;
          a4 = v54;
          MEMORY[0x21606B520](v30, -1, -1);
          MEMORY[0x21606B520](v22, -1, -1);

          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        v7 = v53;
      }

      else
      {
        v31 = sub_2154A16CC();
        v32 = [v31 userActivity];

        if (v32)
        {
          v33 = [v32 activityType];
          if (!v33)
          {
            sub_2154A1D6C();
            v33 = sub_2154A1D2C();
          }

          v34 = [v33 isEqual_];

          if (v34)
          {

            swift_unknownObjectRelease_n();
          }

          else
          {
            v35 = [v32 activityType];
            if (!v35)
            {
              sub_2154A1D6C();
              v35 = sub_2154A1D2C();
            }

            v36 = sub_2154A1D2C();
            v37 = [v35 isEqual_];

            if ((v37 & 1) == 0)
            {
              if (v7 >> 62)
              {
                v38 = sub_2154A2C8C();
              }

              else
              {
                v38 = *(v61 + 16);
              }

              v39 = 0;
              while (1)
              {
                if (v38 == v39)
                {

                  v8 = v56;
                  goto LABEL_41;
                }

                if (v60)
                {
                  v40 = MEMORY[0x216069960](v39, v7);
                }

                else
                {
                  if (v39 >= *(v61 + 16))
                  {
                    goto LABEL_55;
                  }

                  v40 = *(v7 + 8 * v39 + 32);
                }

                v41 = v40;
                if (__OFADD__(v39, 1))
                {
                  break;
                }

                v42 = sub_21546B1A8(v32);

                ++v39;
                if (v42)
                {
                  goto LABEL_27;
                }
              }

              __break(1u);
LABEL_55:
              __break(1u);
LABEL_56:
              __break(1u);
LABEL_57:
              __break(1u);
              goto LABEL_58;
            }

LABEL_27:

            swift_unknownObjectRelease_n();
            v8 = v56;
          }
        }

        else
        {
LABEL_41:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v55 = sub_2153189BC(0, v55[2] + 1, 1, v55);
          }

          v44 = v55[2];
          v43 = v55[3];
          if (v44 >= v43 >> 1)
          {
            v55 = sub_2153189BC((v43 > 1), v44 + 1, 1, v55);
          }

          swift_unknownObjectRelease();
          v55[2] = v44 + 1;
          *&v55[2 * v44 + 4] = v59;
        }
      }

      if (v11 == v8)
      {
        goto LABEL_48;
      }
    }

    if (qword_27CA59928 == -1)
    {
      goto LABEL_50;
    }

LABEL_58:
    swift_once();
LABEL_50:
    v46 = sub_21549F11C();
    __swift_project_value_buffer(v46, qword_27CA5E7E8);
    v47 = sub_21549F0FC();
    v48 = sub_2154A226C();
    v45 = v52;
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_2151A1000, v47, v48, "Expected link to be of type SynapseLinkItem, but wasn't. Not filtering.", v49, 2u);
      MEMORY[0x21606B520](v49, -1, -1);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v55 = MEMORY[0x277D84F90];
LABEL_48:

    return v55;
  }

  return v45;
}

uint64_t _s11NotesEditor20PaperCommonUtilitiesC37shouldShowLinksWhenComposingQuickNoteSbvgZ_0()
{
  v0 = objc_opt_self();
  v1 = sub_2154A1D2C();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_2154A2BCC();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10 = v8;
  v11 = v9;
  if (*(&v9 + 1))
  {
    if (swift_dynamicCast())
    {
      return v7;
    }
  }

  else
  {
    sub_2151ADCD8(&v10, &qword_27CA5ABC0);
  }

  v3 = [objc_opt_self() standardUserDefaults];
  v4 = sub_2154A1D2C();
  v5 = [v3 objectForKey_];

  if (v5)
  {
    sub_2154A2BCC();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10 = v8;
  v11 = v9;
  if (*(&v9 + 1))
  {
    if (swift_dynamicCast())
    {
      return v7;
    }
  }

  else
  {
    sub_2151ADCD8(&v10, &qword_27CA5ABC0);
  }

  return 1;
}

uint64_t _s11NotesEditor20PaperCommonUtilitiesC25shouldResumeLastQuickNoteSbvgZ_0()
{
  v0 = objc_opt_self();
  v1 = sub_2154A1D2C();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_2154A2BCC();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10 = v8;
  v11 = v9;
  if (*(&v9 + 1))
  {
    if (swift_dynamicCast())
    {
      return v7;
    }
  }

  else
  {
    sub_2151ADCD8(&v10, &qword_27CA5ABC0);
  }

  v3 = [objc_opt_self() standardUserDefaults];
  v4 = sub_2154A1D2C();
  v5 = [v3 objectForKey_];

  if (v5)
  {
    sub_2154A2BCC();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10 = v8;
  v11 = v9;
  if (*(&v9 + 1))
  {
    if (swift_dynamicCast())
    {
      return v7;
    }
  }

  else
  {
    sub_2151ADCD8(&v10, &qword_27CA5ABC0);
  }

  return 1;
}

uint64_t sub_21546DEB4()
{
  v0 = sub_21549F11C();
  __swift_allocate_value_buffer(v0, qword_27CA5E808);
  __swift_project_value_buffer(v0, qword_27CA5E808);
  return sub_21549F0BC();
}

char *sub_21546DF00(void *a1)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC11NotesEditor14TranscriptView_scrollAnimationDuration] = 0x3FD0000000000000;
  *&v1[OBJC_IVAR____TtC11NotesEditor14TranscriptView_bottomInset] = 0x4035000000000000;
  *&v1[OBJC_IVAR____TtC11NotesEditor14TranscriptView_padding] = 0x4018000000000000;
  *&v1[OBJC_IVAR____TtC11NotesEditor14TranscriptView_summaryButton] = 0;
  swift_unknownObjectWeakAssign();
  v22.receiver = v1;
  v22.super_class = type metadata accessor for TranscriptView();
  v4 = objc_msgSendSuper2(&v22, sel_initWithFrame_textContainer_, 0, 0.0, 0.0, 0.0, 0.0);
  [v4 setEditable_];
  v5 = v4;
  [v5 setSelectable_];
  v6 = objc_opt_self();
  v7 = [v6 clearColor];
  [v5 setBackgroundColor_];

  v8 = [v5 linkTextAttributes];
  if (v8)
  {
    v9 = v8;
    type metadata accessor for Key(0);
    sub_21547393C(&qword_27CA59D70, type metadata accessor for Key);
    sub_2154A1C8C();
  }

  else
  {
    sub_215327E80(MEMORY[0x277D84F90]);
  }

  v10 = *MEMORY[0x277D740C0];
  v11 = [v6 tintColor];
  v21 = sub_2151A6C9C(0, &qword_2811994C0);
  *&v20 = v11;
  sub_21531E8D0(&v20, v19);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_215472DD0(v19, v10, isUniquelyReferenced_nonNull_native, sub_2153B1B20, sub_2153DD690, sub_2153DBA9C, type metadata accessor for Key);
  type metadata accessor for Key(0);
  sub_21547393C(&qword_27CA59D70, type metadata accessor for Key);
  v13 = sub_2154A1C7C();

  [v5 setLinkTextAttributes_];

  [v5 setDelegate_];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  [v5 setAlwaysBounceVertical_];

  [v5 setFindInteractionEnabled_];
  v14 = [objc_opt_self() sharedInstance];
  LODWORD(v13) = [v14 supportsPrivateCloudComputeSummary];

  v15 = 76.0;
  if (!v13)
  {
    v15 = 12.0;
  }

  [v5 setTextContainerInset_];

  sub_2151A6C9C(0, &qword_2811995B8);
  sub_2154A248C();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = ObjectType;
  sub_2154A28EC();

  swift_unknownObjectRelease();

  return v5;
}

void sub_21546E3A0()
{
  v0 = sub_21549E28C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;

      sub_21549EC0C();

      sub_21546EE90(v3);

      (*(v1 + 8))(v3, v0);
    }

    else
    {
    }
  }
}

void sub_21546E5AC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DDF8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v35 - v2;
  v4 = type metadata accessor for SummaryViewLauncher(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v35 - v8);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v36 = Strong;
    v11 = [objc_opt_self() sharedInstance];
    v12 = [v11 supportsPrivateCloudComputeSummary];

    if (v12)
    {
      v13 = OBJC_IVAR____TtC11NotesEditor14TranscriptView_summaryButton;
      v14 = *&v0[OBJC_IVAR____TtC11NotesEditor14TranscriptView_summaryButton];
      if (!v14)
      {
        v15 = *(*&v36[OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_model] + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_summaryViewModel);
        *(v9 + v4[5]) = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B7C0);
        swift_storeEnumTagMultiPayload();
        *v9 = v15;
        v16 = v9 + v4[6];
        LOBYTE(v37) = 0;

        sub_2154A0DDC();
        v17 = *(&v38 + 1);
        *v16 = v38;
        *(v16 + 1) = v17;
        v18 = v9 + v4[7];
        v37 = xmmword_2154C6200;
        type metadata accessor for CGSize(0);
        sub_2154A0DDC();
        v19 = v39;
        *v18 = v38;
        *(v18 + 2) = v19;
        v20 = (v9 + v4[8]);
        v21 = sub_21549EEEC();
        (*(*(v21 - 8) + 56))(v3, 1, 1, v21);
        v22 = objc_allocWithZone(sub_2154A11FC());
        *&v37 = sub_2154A11DC();
        sub_2154A0DDC();
        v23 = *(&v38 + 1);
        *v20 = v38;
        v20[1] = v23;
        sub_2153BB1AC(v9, v6);
        v24 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E8B0));
        v25 = sub_21549FCDC();
        [v0 addSubview_];
        sub_215473ACC(v9);
        v26 = *&v0[v13];
        *&v0[v13] = v25;

        v14 = *&v0[v13];
      }

      [v14 sizeToFit];
      v27 = *&v0[v13];
      if (v27)
      {
        v28 = v27;
        v29 = [v0 textContainer];
        [v29 size];

        [v28 frame];
        [v28 setFrame_];

        v30 = *&v0[v13];
        if (v30)
        {
          v31 = v30;
          [v0 ic_textContainerOrigin];
          v33 = v32;
          [v31 frame];
          [v31 setFrame_];
        }
      }
    }

    else
    {
      v34 = v36;
    }
  }
}

void sub_21546E9C0(uint64_t a1, uint64_t a2)
{
  [v2 ic:a1 rectForRange:a2];
  MinY = CGRectGetMinY(v14);
  [v2 textContainerInset];
  v5 = MinY - v4;
  [v2 contentInset];
  v7 = -v6;
  if (v5 <= v7)
  {
    v5 = v7;
  }

  v8 = objc_opt_self();
  if ([v8 areAnimationsEnabled])
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v2;
    *(v9 + 24) = 0;
    *(v9 + 32) = v5;
    v12[4] = sub_215473AB4;
    v12[5] = v9;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 1107296256;
    v12[2] = sub_2151BD7E4;
    v12[3] = &block_descriptor_35;
    v10 = _Block_copy(v12);
    v11 = v2;

    [v8 animateWithDuration:0 delay:v10 options:0 animations:0.75 completion:0.0];
    _Block_release(v10);
  }

  else
  {

    [v2 setContentOffset:0 animated:{0.0, v5}];
  }
}

void sub_21546EB68(uint64_t a1, uint64_t a2)
{
  v20.receiver = v2;
  v20.super_class = type metadata accessor for TranscriptView();
  objc_msgSendSuper2(&v20, sel_findInteraction_didBeginFindSession_, a1, a2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v8 = *&Strong[OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_representableAdapter + 16];
    v7 = *&Strong[OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_representableAdapter + 32];
    v15[0] = *&Strong[OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_representableAdapter];
    v15[1] = v8;
    v15[2] = v7;
    v9 = *&Strong[OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_representableAdapter + 96];
    v11 = *&Strong[OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_representableAdapter + 48];
    v10 = *&Strong[OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_representableAdapter + 64];
    v18 = *&Strong[OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_representableAdapter + 80];
    v19 = v9;
    v16 = v11;
    v17 = v10;
    if (*(&v15[0] + 1))
    {
      v13 = v16;
      v14 = v17 & 1;
      v12[119] = 1;
      sub_215324EEC(v15, v12, &qword_27CA5E8C8);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B230);
      sub_2154A0ECC();

      sub_2151ADCD8(v15, &qword_27CA5E8C8);
    }

    else
    {
    }
  }
}

id sub_21546ED34(void *a1, uint64_t a2)
{
  v3 = v2;
  v14.receiver = v3;
  v14.super_class = type metadata accessor for TranscriptView();
  objc_msgSendSuper2(&v14, sel_findInteraction_didEndFindSession_, a1, a2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = [a1 searchText];
    if (v8)
    {
      v9 = v8;
      v10 = sub_2154A1D6C();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0;
    }

    sub_2154766F4(v10, v12);
  }

  return [v3 setSelectedTextRange_];
}

void sub_21546EE90(NSObject *a1)
{
  v47 = a1;
  v2 = sub_21549E28C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v46 = &v39[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5ACE0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v39[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E7C8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v39[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5EA00);
  v45 = *(v11 - 8);
  v12 = *(v45 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v39[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v16 = &v39[-v15];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v42 = v2;
    v43 = v7;
    v44 = v1;
    v19 = OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_activeSegment;
    swift_beginAccess();
    sub_215324EEC(v18 + v19, v10, &qword_27CA5E7C8);
    v20 = sub_21549EBCC();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v10, 1, v20) == 1)
    {
      sub_2151ADCD8(v10, &qword_27CA5E7C8);
      v22 = 1;
    }

    else
    {
      sub_21549EB8C();
      (*(v21 + 8))(v10, v20);
      v22 = 0;
    }

    v27 = sub_21549E70C();
    (*(*(v27 - 8) + 56))(v16, v22, 1, v27);
    v28 = v16;
    v41 = v16;
    v40 = sub_215473C50();
    v29 = sub_2154A202C();
    v30 = v43;
    (*(*(v29 - 8) + 56))(v43, 1, 1, v29);
    v31 = v46;
    v32 = v42;
    (*(v3 + 16))(v46, v47, v42);
    sub_215324EEC(v28, v13, &unk_27CA5EA00);
    v33 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v34 = (v4 + *(v45 + 80) + v33) & ~*(v45 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    (*(v3 + 32))(v35 + v33, v31, v32);
    sub_21533FB7C(v13, v35 + v34, &unk_27CA5EA00);
    v36 = v35 + ((v12 + v34 + 7) & 0xFFFFFFFFFFFFFFF8);
    v37 = v44;
    *v36 = v44;
    *(v36 + 8) = v40 & 1;
    v38 = v37;
    sub_215471358(0, 0, v30, &unk_2154C6238, v35);

    sub_2151ADCD8(v30, &unk_27CA5ACE0);
    sub_2151ADCD8(v41, &unk_27CA5EA00);
  }

  else
  {
    if (qword_27CA59930 != -1)
    {
      swift_once();
    }

    v23 = sub_21549F11C();
    __swift_project_value_buffer(v23, qword_27CA5E808);
    v47 = sub_21549F0FC();
    v24 = sub_2154A226C();
    if (os_log_type_enabled(v47, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_2151A1000, v47, v24, "No transcriptViewController available in resetAttributedText. Bailing out.", v25, 2u);
      MEMORY[0x21606B520](v25, -1, -1);
    }

    v26 = v47;
  }
}

uint64_t sub_21546F454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 672) = a7;
  *(v7 + 232) = a5;
  *(v7 + 240) = a6;
  *(v7 + 224) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5ACE0);
  *(v7 + 248) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5EA30);
  *(v7 + 256) = v8;
  *(v7 + 264) = *(v8 - 8);
  *(v7 + 272) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E850);
  *(v7 + 280) = v9;
  *(v7 + 288) = *(v9 - 8);
  *(v7 + 296) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5EA40);
  *(v7 + 304) = v10;
  *(v7 + 312) = *(v10 - 8);
  *(v7 + 320) = swift_task_alloc();
  *(v7 + 328) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5EA50);
  *(v7 + 336) = v11;
  *(v7 + 344) = *(v11 - 8);
  *(v7 + 352) = swift_task_alloc();
  *(v7 + 360) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E858);
  *(v7 + 368) = swift_task_alloc();
  *(v7 + 376) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E860);
  *(v7 + 384) = v12;
  *(v7 + 392) = *(v12 - 8);
  *(v7 + 400) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E868);
  *(v7 + 408) = v13;
  *(v7 + 416) = *(v13 - 8);
  *(v7 + 424) = swift_task_alloc();
  *(v7 + 432) = swift_task_alloc();
  v14 = sub_21549E23C();
  *(v7 + 440) = v14;
  *(v7 + 448) = *(v14 - 8);
  *(v7 + 456) = swift_task_alloc();
  *(v7 + 464) = swift_task_alloc();
  v15 = sub_21549E28C();
  *(v7 + 472) = v15;
  v16 = *(v15 - 8);
  *(v7 + 480) = v16;
  *(v7 + 488) = *(v16 + 64);
  *(v7 + 496) = swift_task_alloc();
  *(v7 + 504) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E870);
  *(v7 + 512) = swift_task_alloc();
  *(v7 + 520) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21546F8EC, 0, 0);
}

uint64_t sub_21546F8EC()
{
  v1 = objc_opt_self();
  v0[66] = [v1 labelColor];
  v0[67] = [v1 secondaryLabelColor];
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom];
  v0[68] = v3;

  v4 = *MEMORY[0x277D76A20];
  v0[69] = *MEMORY[0x277D76A20];
  v5 = *MEMORY[0x277D76A28];
  v0[70] = *MEMORY[0x277D76A28];
  if ((v3 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v6;
  v8 = objc_opt_self();
  v9 = [v8 ic:v7 preferredFontForStyle:*MEMORY[0x277D74410] withFontWeight:?];
  if (!v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  v12 = v9;
  v13 = [v9 ic_fontWithSingleLineA];
  v0[71] = v13;

  if (!v13)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v14 = [MEMORY[0x277D75418] currentDevice];
  v15 = [v14 userInterfaceIdiom];

  v16 = 16.0;
  if ((v15 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v16 = 18.0;
  }

  v9 = [v13 ic:v16 fontWithSize:?];
  v0[72] = v9;
  if (!v9)
  {
    goto LABEL_15;
  }

  v0[73] = sub_21549EB0C();
  v0[74] = sub_21547393C(&qword_27CA5E878, MEMORY[0x277D35A78]);
  sub_21549E1BC();

  v17 = [v8 preferredFontForTextStyle_];
  v18 = [v17 ic_fontWithSingleLineA];
  v0[75] = v18;

  if (!v18)
  {
LABEL_16:
    __break(1u);
    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  v0[76] = sub_21549F93C();
  v0[77] = sub_2154A1FFC();
  v0[78] = sub_2154A1FEC();
  v19 = sub_2154A1FCC();
  v21 = v20;
  v9 = sub_21546FBB0;
  v10 = v19;
  v11 = v21;

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_21546FBB0()
{

  *(v0 + 632) = sub_21549F90C();

  return MEMORY[0x2822009F8](sub_21546FC24, 0, 0);
}

uint64_t sub_21546FC24()
{
  *(v0 + 640) = sub_2154A1FEC();
  v2 = sub_2154A1FCC();

  return MEMORY[0x2822009F8](sub_21546FCB0, v2, v1);
}

uint64_t sub_21546FCB0()
{

  *(v0 + 673) = sub_21549F8DC() & 1;

  return MEMORY[0x2822009F8](sub_21546FD30, 0, 0);
}

id sub_21546FD30()
{
  v1 = objc_opt_self();
  result = [v1 sharedAudioController];
  if (!result)
  {
    __break(1u);
    goto LABEL_35;
  }

  v3 = result;
  v4 = [result currentPlayer];

  v86 = v4;
  if (v4)
  {
    v5 = v4;
    [v5 currentTime];
    *(v0 + 648) = v98;
    *(v0 + 656) = v99;
    *(v0 + 664) = v100;
    if (CMTimeGetSeconds((v0 + 648)) != 0.0)
    {
      if (*(v0 + 673))
      {
        v13 = (v0 + 528);
      }

      else
      {
        v13 = (v0 + 536);
      }

      v12 = *v13;

      goto LABEL_16;
    }

    result = [v1 sharedAudioController];
    if (result)
    {
      v6 = result;
      v7 = *(v0 + 673);
      v8 = *(v0 + 536);
      v9 = *(v0 + 528);
      v10 = [result isPlaying];

      if (v10)
      {
        v11 = v8;
      }

      else
      {
        v11 = v9;
      }

      if (v7)
      {
        v12 = v9;
      }

      else
      {
        v12 = v11;
      }

      goto LABEL_16;
    }

LABEL_35:
    __break(1u);
    return result;
  }

  v12 = *(v0 + 528);
LABEL_16:
  v14 = *(v0 + 576);
  v15 = *(v0 + 464);
  v16 = *(v0 + 448);
  v87 = *(v0 + 440);
  v83 = *(v0 + 432);
  v90 = *(v0 + 424);
  v17 = *(v0 + 416);
  v89 = *(v0 + 408);
  v92 = *(v0 + 376);
  v18 = *(v0 + 344);
  v96 = *(v0 + 336);
  v85 = *(*(v0 + 480) + 16);
  v85(*(v0 + 504), *(v0 + 224), *(v0 + 472));
  *(v0 + 176) = v14;
  sub_215324F74();
  v94 = v12;
  v19 = v14;
  sub_21549E2AC();
  sub_21549E25C();
  sub_21549E96C();
  sub_21547393C(&qword_27CA5EA10, MEMORY[0x277D35A08]);
  sub_21549E24C();
  v84 = *(v16 + 8);
  v84(v15, v87);
  (*(v17 + 16))(v90, v83, v89);
  sub_2151ACC5C(&qword_27CA5E880, &qword_27CA5E868);
  sub_2154A1F1C();
  sub_2151ACC5C(&qword_27CA5E888, &qword_27CA5E860);
  sub_2154A2B6C();
  v95 = *(v18 + 48);
  if (v95(v92, 1, v96) != 1)
  {
    do
    {
      v40 = *(v0 + 360);
      sub_21533FB7C(*(v0 + 376), v40, &qword_27CA5EA50);
      if (*v40)
      {
        v41 = *(v0 + 600);
        v42 = v41;
        sub_2151ACC5C(&qword_27CA5E8A0, &unk_27CA5EA30);
        v43 = sub_21549E2BC();
        *(v0 + 208) = v41;
        sub_21549E33C();
        v43(v0 + 112, 0);
        v44 = v94;
        v45 = sub_21549E2BC();
        *(v0 + 216) = v94;
        sub_215324FC8();
        sub_21549E33C();
        v45(v0 + 144, 0);
      }

      v38 = *(v0 + 376);
      v39 = *(v0 + 336);
      sub_2151ADCD8(*(v0 + 360), &qword_27CA5EA50);
      sub_2154A2B6C();
    }

    while (v95(v38, 1, v39) != 1);
  }

  v20 = *(v0 + 456);
  v21 = *(v0 + 432);
  v88 = *(v0 + 440);
  v23 = *(v0 + 408);
  v22 = *(v0 + 416);
  v91 = *(v0 + 368);
  v24 = *(v0 + 328);
  v93 = *(v0 + 336);
  v25 = *(v0 + 312);
  v82 = *(v0 + 320);
  v26 = *(v0 + 304);
  (*(*(v0 + 392) + 8))(*(v0 + 400), *(v0 + 384));
  (*(v22 + 8))(v21, v23);
  sub_21549E25C();
  sub_21549E24C();
  v84(v20, v88);
  (*(v25 + 16))(v82, v24, v26);
  sub_2151ACC5C(&qword_27CA5E890, &unk_27CA5EA40);
  sub_2154A1F1C();
  sub_2151ACC5C(&qword_27CA5E898, &qword_27CA5E850);
  sub_2154A2B6C();
  if (v95(v91, 1, v93) != 1)
  {
    do
    {
      v48 = *(v0 + 352);
      sub_21533FB7C(*(v0 + 368), v48, &qword_27CA5EA50);
      if (*v48)
      {
        v49 = *(v0 + 568);
        v50 = v49;
        sub_2151ACC5C(&qword_27CA5E8A0, &unk_27CA5EA30);
        v51 = sub_21549E2BC();
        *(v0 + 192) = v49;
        sub_21549E33C();
        v51(v0 + 48, 0);
        v52 = v94;
        v53 = sub_21549E2BC();
        *(v0 + 200) = v94;
        sub_215324FC8();
        sub_21549E33C();
        v53(v0 + 80, 0);
      }

      v46 = *(v0 + 368);
      v47 = *(v0 + 336);
      sub_2151ADCD8(*(v0 + 352), &qword_27CA5EA50);
      sub_2154A2B6C();
    }

    while (v95(v46, 1, v47) != 1);
  }

  v27 = *(v0 + 520);
  v28 = *(v0 + 512);
  v29 = *(v0 + 328);
  v30 = *(v0 + 304);
  v31 = *(v0 + 312);
  v33 = *(v0 + 288);
  v32 = *(v0 + 296);
  v34 = *(v0 + 280);
  v35 = *(v0 + 264);
  v97 = *(v0 + 256);

  (*(v33 + 8))(v32, v34);
  (*(v31 + 8))(v29, v30);
  sub_215324EEC(v27, v28, &qword_27CA5E870);
  if ((*(v35 + 48))(v28, 1, v97) == 1)
  {
    v36 = *(v0 + 512);
    v37 = &qword_27CA5E870;
  }

  else
  {
    v54 = *(v0 + 528);
    v55 = *(v0 + 272);
    sub_21533FB7C(*(v0 + 512), v55, &unk_27CA5EA30);
    v56 = v54;
    sub_2151ACC5C(&qword_27CA5E8A0, &unk_27CA5EA30);
    v57 = sub_21549E2BC();
    *(v0 + 184) = v54;
    sub_215324FC8();
    sub_21549E33C();
    v57(v0 + 16, 0);
    v36 = v55;
    v37 = &unk_27CA5EA30;
  }

  sub_2151ADCD8(v36, v37);
  v80 = *(v0 + 576);
  v76 = *(v0 + 600);
  v77 = *(v0 + 568);
  v58 = (v0 + 560);
  v79 = *(v0 + 536);
  v78 = *(v0 + 528);
  v81 = *(v0 + 520);
  v59 = *(v0 + 504);
  v74 = v59;
  v60 = *(v0 + 488);
  v61 = *(v0 + 496);
  v62 = *(v0 + 472);
  v63 = *(v0 + 480);
  v73 = *(v0 + 672);
  if ((*(v0 + 544) & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v58 = (v0 + 552);
  }

  v64 = *(v0 + 248);
  v75 = *v58;
  v65 = sub_2154A202C();
  (*(*(v65 - 8) + 56))(v64, 1, 1, v65);
  v66 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v85(v61, v59, v62);

  v67 = sub_2154A1FEC();
  v68 = (*(v63 + 80) + 32) & ~*(v63 + 80);
  v69 = v68 + v60;
  v70 = swift_allocObject();
  v71 = MEMORY[0x277D85700];
  *(v70 + 16) = v67;
  *(v70 + 24) = v71;
  (*(v63 + 32))(v70 + v68, v61, v62);
  *(v70 + v69) = v73;
  *(v70 + (v69 & 0xFFFFFFFFFFFFFFF8) + 8) = v66;

  sub_2152F4D50(0, 0, v64, &unk_2154C6280, v70);

  sub_2151ADCD8(v81, &qword_27CA5E870);
  (*(v63 + 8))(v74, v62);

  v72 = *(v0 + 8);

  return v72();
}

uint64_t sub_215470A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 144) = a5;
  *(v6 + 64) = a4;
  *(v6 + 72) = a6;
  v7 = sub_21549E56C();
  *(v6 + 80) = v7;
  *(v6 + 88) = *(v7 - 8);
  *(v6 + 96) = swift_task_alloc();
  *(v6 + 104) = swift_task_alloc();
  v8 = sub_21549E28C();
  *(v6 + 112) = v8;
  *(v6 + 120) = *(v8 - 8);
  *(v6 + 128) = swift_task_alloc();
  sub_2154A1FFC();
  *(v6 + 136) = sub_2154A1FEC();
  v10 = sub_2154A1FCC();

  return MEMORY[0x2822009F8](sub_215470B80, v10, v9);
}

void sub_215470B80()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 112);
  v4 = *(v0 + 144);
  v5 = *(v0 + 64);
  sub_2151A6C9C(0, &qword_27CA5E8A8);
  (*(v2 + 16))(v1, v5, v3);
  v6 = sub_2154A24AC();
  if (v4 != 1)
  {
    goto LABEL_13;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_13;
  }

  v8 = Strong;
  v9 = swift_unknownObjectWeakLoadStrong();

  if (!v9)
  {
    goto LABEL_13;
  }

  v10 = *&v9[OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_model];

  v11 = [*(v10 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_attachmentModel) attachment];
  if (!v11)
  {
    __break(1u);
LABEL_20:

    __break(1u);
    goto LABEL_21;
  }

  v12 = v11;

  v13 = [v12 identifier];

  if (!v13)
  {
LABEL_13:

    goto LABEL_14;
  }

  v14 = objc_opt_self();
  v78 = v13;
  v15 = [v14 mainBundle];
  v16 = sub_2154A1D2C();
  v17 = [v15 localizedStringForKey:v16 value:0 table:0];

  v18 = v17;
  if (!v17)
  {
    sub_2154A1D6C();
    v18 = sub_2154A1D2C();
  }

  v76 = v18;
  v75 = sub_2154A1D6C();
  v20 = v19;
  v21 = [v14 mainBundle];
  v22 = sub_2154A1D2C();
  v23 = [v21 localizedStringForKey:v22 value:0 table:0];

  v24 = v23;
  if (!v23)
  {
    sub_2154A1D6C();
    v24 = sub_2154A1D2C();
  }

  v25 = sub_2154A1D6C();
  v27 = v26;
  v28 = [v14 mainBundle];
  v29 = sub_2154A1D2C();
  v30 = [v28 localizedStringForKey:v29 value:0 table:0];

  sub_2154A1D6C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A6D0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_2154BDB40;
  v32 = MEMORY[0x277D837D0];
  *(v31 + 56) = MEMORY[0x277D837D0];
  v33 = sub_215333D20();
  *(v31 + 32) = v75;
  *(v31 + 40) = v20;
  *(v31 + 96) = v32;
  *(v31 + 104) = v33;
  *(v31 + 64) = v33;
  *(v31 + 72) = v25;
  *(v31 + 80) = v27;

  sub_2154A1D3C();

  v34 = sub_2154A1D2C();

  v35 = [v34 rangeOfString_];
  v74 = v36;

  v37 = [v34 rangeOfString:v24 options:4];
  v39 = v38;

  v40 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithString_];
  v41 = [objc_opt_self() ic:*MEMORY[0x277D76968] preferredFontForStyle:*MEMORY[0x277D74418] withFontWeight:?];
  if (!v41)
  {
    goto LABEL_20;
  }

  v42 = v41;
  v71 = v35;
  v72 = v39;
  v73 = v37;
  v77 = v34;
  v43 = [v41 ic_fontWithSingleLineA];

  if (!v43)
  {
LABEL_21:

    __break(1u);
    return;
  }

  v68 = *(v0 + 104);
  v69 = *(v0 + 96);
  v44 = *(v0 + 88);
  v70 = *(v0 + 80);

  v45 = *MEMORY[0x277D740A8];
  v46 = v43;
  v47 = v40;
  v48 = [v47 ic_range];
  [v47 addAttribute:v45 value:v46 range:{v48, v49}];

  v50 = *MEMORY[0x277D740C0];
  v51 = [objc_opt_self() secondaryLabelColor];
  v52 = [v47 ic_range];
  v54 = v53;

  [v47 &selRef_addedPencilStrokeCount];
  v55 = objc_opt_self();
  v56 = [v55 appURLForTranscriptionDonationForAttachmentIdentifier:v78 isPositive:1];

  sub_21549E51C();
  v57 = [v55 appURLForTranscriptionDonationForAttachmentIdentifier:v78 isPositive:0];

  sub_21549E51C();
  v58 = *MEMORY[0x277D740E8];
  v59 = sub_21549E49C();
  [v47 addAttribute:v58 value:v59 range:{v71, v74}];

  v60 = sub_21549E49C();
  [v47 addAttribute:v58 value:v60 range:{v73, v72}];

  v61 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v62 = sub_2154A1D2C();
  v63 = [v61 initWithString_];

  [v47 insertAttributedString:v63 atIndex:0];
  [v6 appendAttributedString_];

  v64 = *(v44 + 8);
  v64(v69, v70);
  v64(v68, v70);
LABEL_14:
  swift_beginAccess();
  v65 = swift_unknownObjectWeakLoadStrong();
  if (v65)
  {
    v66 = v65;
    [v65 setAttributedText_];
  }

  v67 = *(v0 + 8);

  v67();
}

uint64_t sub_215471358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5ACE0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_215324EEC(a3, v25 - v10, &unk_27CA5ACE0);
  v12 = sub_2154A202C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2151ADCD8(v11, &unk_27CA5ACE0);
  }

  else
  {
    sub_2154A201C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2154A1FCC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2154A1DEC() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_215471688()
{
  v32.receiver = v0;
  v32.super_class = type metadata accessor for TranscriptView();
  v1 = objc_msgSendSuper2(&v32, sel_accessibilityElements);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2154A1F4C();

  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;
    do
    {
      sub_21533FC88(v5, &v30);
      sub_21533FC88(&v30, v29);
      sub_2151A6C9C(0, &qword_27CA5E8B8);
      if (swift_dynamicCast())
      {
        v6 = *&v25[0];
      }

      else
      {
        v6 = 0;
      }

      sub_215471B1C(v6);

      __swift_destroy_boxed_opaque_existential_0Tm(&v30);
      v5 += 32;
      --v4;
    }

    while (v4);
  }

  v7 = &v26;
  v8 = *&v0[OBJC_IVAR____TtC11NotesEditor14TranscriptView_summaryButton];
  if (v8)
  {
    v9 = sub_2151A6C9C(0, &qword_2811994D0);
  }

  else
  {
    v9 = 0;
    v27[1] = 0;
    v27[2] = 0;
  }

  v27[0] = v8;
  v27[3] = v9;
  v10 = v8;
  sub_215324EEC(v27, &v30, &qword_27CA5ABC0);
  v25[0] = v30;
  v25[1] = v31;
  v11 = MEMORY[0x277D84F90];
  if (!*(&v31 + 1))
  {
    sub_2151ADCD8(v25, &qword_27CA5ABC0);
    v12 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  sub_21531E8D0(v25, v29);
  v12 = MEMORY[0x277D84F90];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_51;
  }

  while (1)
  {
    v14 = *(v12 + 2);
    v13 = *(v12 + 3);
    if (v14 >= v13 >> 1)
    {
      v12 = sub_2153179B0((v13 > 1), v14 + 1, 1, v12);
    }

    *(v12 + 2) = v14 + 1;
    sub_21531E8D0(v29, &v12[32 * v14 + 32]);
LABEL_18:
    sub_2151ADCD8(v7 + 32, &qword_27CA5ABC0);
    v27[8] = v12;
    v28 = v3;
    v15 = *(v12 + 2);
    v7 = *(v11 + 2);
    v11 = (v7 + v15);
    if (__OFADD__(v7, v15))
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v3 = MEMORY[0x277D84F90];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v11 <= *(v3 + 24) >> 1)
    {
      if (!*(v12 + 2))
      {
        goto LABEL_30;
      }
    }

    else
    {
      if (v7 <= v11)
      {
        v18 = v7 + v15;
      }

      else
      {
        v18 = v7;
      }

      v3 = sub_2153179B0(isUniquelyReferenced_nonNull_native, v18, 1, MEMORY[0x277D84F90]);
      if (!*(v12 + 2))
      {
LABEL_30:

        if (v15)
        {
          goto LABEL_48;
        }

        v7 = *(v3 + 16);
        goto LABEL_32;
      }
    }

    if ((*(v3 + 24) >> 1) - *(v3 + 16) < v15)
    {
      goto LABEL_49;
    }

    swift_arrayInitWithCopy();

    v7 = *(v3 + 16);
    if (v15)
    {
      v17 = __OFADD__(v7, v15);
      v7 += v15;
      if (v17)
      {
        goto LABEL_50;
      }

      *(v3 + 16) = v7;
    }

LABEL_32:
    v19 = v28;
    v12 = *(v28 + 16);
    v11 = &v12[v7];
    if (__OFADD__(v7, v12))
    {
      goto LABEL_47;
    }

    v20 = swift_isUniquelyReferenced_nonNull_native();
    if (!v20 || v11 > *(v3 + 24) >> 1)
    {
      if (v7 <= v11)
      {
        v23 = &v12[v7];
      }

      else
      {
        v23 = v7;
      }

      v3 = sub_2153179B0(v20, v23, 1, v3);
      if (*(v19 + 16))
      {
        goto LABEL_36;
      }

LABEL_44:

      if (!v12)
      {
        goto LABEL_45;
      }

LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    if (!*(v19 + 16))
    {
      goto LABEL_44;
    }

LABEL_36:
    if ((*(v3 + 24) >> 1) - *(v3 + 16) < v12)
    {
      goto LABEL_49;
    }

    swift_arrayInitWithCopy();

    if (!v12)
    {
      goto LABEL_45;
    }

    v21 = *(v3 + 16);
    v17 = __OFADD__(v21, v12);
    v22 = &v12[v21];
    if (!v17)
    {
      break;
    }

LABEL_50:
    __break(1u);
LABEL_51:
    v12 = sub_2153179B0(0, *(v12 + 2) + 1, 1, v12);
  }

  *(v3 + 16) = v22;
LABEL_45:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E8C0);
  swift_arrayDestroy();
  return v3;
}

void sub_215471B1C(void *a1)
{
  if (a1)
  {
    v3 = objc_opt_self();
    v39 = a1;
    v4 = [v3 mainBundle];
    v5 = sub_2154A1D2C();
    v6 = [v4 localizedStringForKey:v5 value:0 table:0];

    if (!v6)
    {
      sub_2154A1D6C();
      v6 = sub_2154A1D2C();
    }

    [v39 setAccessibilityHint_];

    v7 = *MEMORY[0x277D76548];
    v8 = [v39 accessibilityTraits];
    if ((v7 & ~v8) != 0)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0;
    }

    [v39 setAccessibilityTraits_];
    [v39 setAccessibilityRespondsToUserInteraction_];
    Strong = swift_unknownObjectWeakLoadStrong();
    v11 = v39;
    if (Strong)
    {
      v12 = sub_215473228(v39);
      if (v14)
      {
        goto LABEL_18;
      }

      v15 = v12;
      v16 = v13;
      v17 = [v1 attributedText];
      if (!v17)
      {
        __break(1u);
        return;
      }

      v18 = v17;
      v19 = [v17 attributedSubstringFromRange_];

      if (!v19)
      {
LABEL_18:
      }

      else
      {
        v20 = [v19 ic_range];
        v22 = v21;
        v25 = sub_215478DE8();
        if ((v26 & 1) == 0 && v23 == v20 && v24 == v22)
        {
          sub_21547350C(v39, v25);
        }

        v29 = sub_2154791B0();
        if (v30)
        {
        }

        else
        {
          if (v27 == v20 && v28 == v22)
          {
            sub_21547350C(v39, v29);
          }

          else
          {
          }
        }
      }

      v11 = v39;
    }

    v31 = sub_215471E38(v11);
    v32 = *MEMORY[0x277D76598];
    v33 = [v39 accessibilityTraits];
    v34 = -1;
    if ((v33 & v32) != 0)
    {
      v34 = ~v32;
    }

    v35 = v34 & v33;
    if ((v33 & v32) == v32)
    {
      v36 = 0;
    }

    else
    {
      v36 = v32;
    }

    v37 = v36 | v33;
    if (v31)
    {
      v38 = v37;
    }

    else
    {
      v38 = v35;
    }

    [v39 setAccessibilityTraits_];
  }
}

uint64_t sub_215471E38(void *a1)
{
  v1 = sub_215473228(a1);
  if (v3)
  {
    return 0;
  }

  v5 = v1;
  v6 = v2;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    sub_2154791B0();
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = v12 & 1;

    sub_215478DE8();
    v16 = v15;
    v18 = v17;
    v20 = v19;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E848);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2154BDB40;
    *(inited + 32) = v9;
    *(inited + 40) = v11;
    *(inited + 48) = v14;
    *(inited + 56) = v16;
    *(inited + 64) = v18;
    *(inited + 72) = v20 & 1;
    if ((v13 & 1) == 0)
    {
      v22 = sub_215317AC0(0, 1, 1, MEMORY[0x277D84F90]);
      v14 = *(v22 + 2);
      v23 = *(v22 + 3);
      v27 = (v14 + 1);
      if (v14 >= v23 >> 1)
      {
        goto LABEL_29;
      }

      goto LABEL_19;
    }

    v22 = MEMORY[0x277D84F90];

    if ((v20 & 1) == 0)
    {
      goto LABEL_20;
    }

    while (1)
    {
      v24 = *(v22 + 2);
      if (!v24)
      {
        break;
      }

      while (1)
      {
        v25 = v24 - 1;
        v26 = v22 + 40;
        v27 = v22 + 40;
        while (1)
        {
          v28 = *v27;
          v27 += 16;
          v29 = v28 - 1;
          if (__OFSUB__(v28, 1))
          {
            break;
          }

          v30 = v5 == *(v26 - 1) && v6 == v29;
          v31 = v30;
          if (!v30)
          {
            v23 = v25--;
            v26 = v27;
            if (v23)
            {
              continue;
            }
          }

          goto LABEL_26;
        }

        __break(1u);
LABEL_29:
        v37 = v27;
        v36 = sub_215317AC0((v23 > 1), v27, 1, v22);
        v27 = v37;
        v22 = v36;
LABEL_19:
        *(v22 + 2) = v27;
        v32 = &v22[16 * v14];
        *(v32 + 4) = v9;
        *(v32 + 5) = v11;

        if (v20)
        {
          break;
        }

LABEL_20:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_215317AC0(0, *(v22 + 2) + 1, 1, v22);
        }

        v11 = *(v22 + 2);
        v33 = *(v22 + 3);
        v9 = v11 + 1;
        if (v11 >= v33 >> 1)
        {
          v22 = sub_215317AC0((v33 > 1), v11 + 1, 1, v22);
        }

        *(v22 + 2) = v9;
        v34 = &v22[16 * v11];
        *(v34 + 4) = v16;
        *(v34 + 5) = v18;
        v24 = *(v22 + 2);
        if (!v24)
        {
          goto LABEL_25;
        }
      }
    }

LABEL_25:
    v31 = 0;
LABEL_26:
    v35 = v31;

    return v35;
  }

  return result;
}

id sub_21547209C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TranscriptView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_21547216C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_2153B0E6C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2153D9080(v16, a4 & 1);
      result = sub_2153B0E6C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        type metadata accessor for _NSRange(0);
        result = sub_2154A300C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_2153DC068();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    v22 = (v21[6] + 16 * result);
    *v22 = a2;
    v22[1] = a3;
    *(v21[7] + 8 * result) = a1;
    v23 = v21[2];
    v15 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v15)
    {
      v21[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  *(v21[7] + 8 * result) = a1;
}

uint64_t sub_2154722D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v29 = a1;
  v30 = a2;
  v10 = sub_21549E56C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v5;
  v16 = sub_2153B0F3C(a4);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 < v19 || (a5 & 1) == 0)
  {
    if (v21 >= v19 && (a5 & 1) == 0)
    {
      sub_2153DC614();
      goto LABEL_9;
    }

    sub_2153D9D90(v19, a5 & 1);
    v22 = sub_2153B0F3C(a4);
    if ((v20 & 1) == (v23 & 1))
    {
      v16 = v22;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_2154A300C();
    __break(1u);
    return result;
  }

LABEL_9:
  v24 = v30;
  v25 = *v6;
  if (v20)
  {
    v26 = (v25[7] + 24 * v16);
    v27 = v26[2];
    *v26 = v29;
    v26[1] = v24;
    v26[2] = a3;
  }

  else
  {
    (*(v11 + 16))(v13, a4, v10);
    return sub_215472F4C(v16, v13, v29, v24, a3, v25);
  }
}

void sub_2154724C8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_21549E56C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_2153B0F3C(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_2153DC338();
      goto LABEL_7;
    }

    sub_2153D95A4(v17, a3 & 1);
    v23 = sub_2153B0F3C(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_215473020(v14, v11, a1, v20, MEMORY[0x277CC9260]);
      return;
    }

LABEL_15:
    sub_2154A300C();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

unint64_t sub_2154726A8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_2153B1B24(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_2153DA5AC(v14, a3 & 1);
      result = sub_2153B1B24(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_2154A300C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_2153DCB60();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

void sub_215472820(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_2153B0D68(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      a6(v20, a4 & 1);
      v15 = sub_2153B0D68(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        sub_2154A300C();
        __break(1u);
        return;
      }
    }

    else
    {
      v23 = v15;
      a5();
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    v26 = v25[7];
    v27 = *(v26 + 8 * v15);
    *(v26 + 8 * v15) = a1;

    return;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v28 = (v25[6] + 16 * v15);
  *v28 = a2;
  v28[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v29 = v25[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v30;
}

void sub_2154729B4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_21549E70C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_2153B11FC(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_2153DCF7C();
      goto LABEL_7;
    }

    sub_2153DAD78(v17, a3 & 1);
    v23 = sub_2153B11FC(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_215473020(v14, v11, a1, v20, MEMORY[0x277CC95F0]);
      return;
    }

LABEL_15:
    sub_2154A300C();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

uint64_t sub_215472BE8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_21549E70C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_2153B11FC(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_2153DD38C();
      goto LABEL_7;
    }

    sub_2153DB3D0(v17, a3 & 1);
    v24 = sub_2153B11FC(a2);
    if ((v18 & 1) == (v25 & 1))
    {
      v14 = v24;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_2154730DC(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_2154A300C();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = v21 + *(*(type metadata accessor for TextElementAnimationConfiguration() - 8) + 72) * v14;

  return sub_215473B28(a1, v22);
}

_OWORD *sub_215472DD0(_OWORD *a1, void *a2, char a3, uint64_t (*a4)(void *), void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(void))
{
  v12 = v7;
  v15 = *v7;
  v16 = a4(a2);
  v18 = v15[2];
  v19 = (v17 & 1) == 0;
  v20 = __OFADD__(v18, v19);
  v21 = v18 + v19;
  if (v20)
  {
    __break(1u);
    goto LABEL_16;
  }

  v22 = v17;
  v23 = v15[3];
  if (v23 < v21 || (a3 & 1) == 0)
  {
    if (v23 >= v21 && (a3 & 1) == 0)
    {
      v24 = v16;
      a5();
      v16 = v24;
      goto LABEL_8;
    }

    a6(v21, a3 & 1);
    v16 = a4(a2);
    if ((v22 & 1) != (v25 & 1))
    {
LABEL_16:
      a7(0);
      result = sub_2154A300C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v26 = *v12;
  if (v22)
  {
    v27 = (v26[7] + 32 * v16);
    __swift_destroy_boxed_opaque_existential_0Tm(v27);

    return sub_21531E8D0(a1, v27);
  }

  else
  {
    sub_2154731B8(v16, a2, a1, v26);

    return a2;
  }
}