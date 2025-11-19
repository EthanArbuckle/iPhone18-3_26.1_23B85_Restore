uint64_t sub_21DD70BB8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_21DD8BFE8();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = (a1 + *a4);
  swift_beginAccess();
  v10 = v9[1];
  *v9 = v6;
  v9[1] = v8;
}

uint64_t sub_21DD70CD4(uint64_t a1, void *a2, uint64_t a3, void (**a4)(void, void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE8EED0, &unk_21DD8D6B0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v30 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  _Block_copy(a4);
  if (qword_281221BD8 != -1)
  {
    swift_once();
  }

  v13 = sub_21DD8BF08();
  __swift_project_value_buffer(v13, qword_281221D58);
  v14 = a2;
  v15 = sub_21DD8BEE8();
  v16 = sub_21DD8C1E8();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    *(v17 + 4) = v14;
    *v18 = v14;
    v19 = v14;
    _os_log_impl(&dword_21DD6F000, v15, v16, "Launching app with options: %@", v17, 0xCu);
    sub_21DD71200(v18, &unk_27CE8EF10, &unk_21DD8D530);
    MEMORY[0x223D47710](v18, -1, -1);
    MEMORY[0x223D47710](v17, -1, -1);
  }

  sub_21DD71260(a1, v14, v38);
  sub_21DD83564(v38, v36, &unk_27CE8EF70, &unk_21DD8D580);
  sub_21DD83564(v36, v35, &unk_27CE8EF70, &unk_21DD8D580);
  v20 = swift_allocObject();
  v21 = v36[1];
  *(v20 + 16) = v36[0];
  *(v20 + 32) = v21;
  *(v20 + 48) = v37;
  *(v20 + 56) = sub_21DD74F24;
  *(v20 + 64) = v12;
  sub_21DD83564(v38, &v30, &unk_27CE8EF70, &unk_21DD8D580);
  v22 = v31;

  if (v22)
  {
    sub_21DD71200(v35, &unk_27CE8EF70, &unk_21DD8D580);
    sub_21DD72A14(&v30, v32);
    v23 = sub_21DD8C198();
    (*(*(v23 - 8) + 56))(v11, 1, 1, v23);
    sub_21DD73140(v32, &v30);
    v24 = swift_allocObject();
    v24[2] = 0;
    v24[3] = 0;
    sub_21DD72A14(&v30, (v24 + 4));
    v24[9] = a3;
    v24[10] = sub_21DD74F44;
    v24[11] = v20;
    v24[12] = a1;
    v24[13] = v14;
    v25 = v14;

    sub_21DD8426C(0, 0, v11, &unk_21DD8D718, v24);

    sub_21DD71200(v11, &unk_27CE8EED0, &unk_21DD8D6B0);
    __swift_destroy_boxed_opaque_existential_1(v32);
  }

  else
  {
    sub_21DD71200(&v30, &unk_27CE8EF70, &unk_21DD8D580);
    v26 = sub_21DD74CEC();
    if ((isInternal() & 1) == 0)
    {
      sub_21DD83564(v35, v32, &unk_27CE8EF70, &unk_21DD8D580);
      v27 = v33;
      if (v33)
      {
        v28 = v34;
        __swift_project_boxed_opaque_existential_1(v32, v33);
        (*(v28 + 104))(v27, v28);
        __swift_destroy_boxed_opaque_existential_1(v32);
      }

      else
      {
        sub_21DD71200(v32, &unk_27CE8EF70, &unk_21DD8D580);
      }
    }

    (a4)[2](a4, v26);

    sub_21DD71200(v35, &unk_27CE8EF70, &unk_21DD8D580);
  }

  sub_21DD71200(v38, &unk_27CE8EF70, &unk_21DD8D580);
}

uint64_t sub_21DD71188()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_21DD71200(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_21DD71260(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v66 = a1;
  v67 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EDD0, &qword_21DD8D1D0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v65 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v64 = &v63 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v63 = &v63 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v63 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EDD8, &qword_21DD8D1D8);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v63 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EDC8, &qword_21DD8D500);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v63 - v20;
  v22 = sub_21DD8BD58();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v63 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v63 - v28;
  v30 = &a2[OBJC_IVAR___ObjCDiagnosticsReporterLaunchOptions_log_path];
  swift_beginAccess();
  if (!*(v30 + 1))
  {
    goto LABEL_4;
  }

  v31 = *v30;

  sub_21DD8BC98();

  sub_21DD71A38(v27, v21);
  v32 = *(v23 + 8);
  v32(v27, v22);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_21DD71200(v21, &qword_27CE8EDC8, &qword_21DD8D500);
LABEL_4:
    if (qword_281221BD8 != -1)
    {
      swift_once();
    }

    v33 = sub_21DD8BF08();
    __swift_project_value_buffer(v33, qword_281221D58);
    v34 = sub_21DD8BEE8();
    v35 = sub_21DD8C1D8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_21DD6F000, v34, v35, "Invalid log_path.", v36, 2u);
      MEMORY[0x223D47710](v36, -1, -1);
    }

LABEL_9:
    v37 = v67;
    *(v67 + 32) = 0;
    *v37 = 0u;
    v37[1] = 0u;
    return;
  }

  (*(v23 + 32))(v29, v21, v22);
  v38 = v66;
  if (v66 <= 1)
  {
    if (!v66)
    {
      sub_21DD85584(0, a2, v17);
      v51 = type metadata accessor for PanicLog();
      if ((*(*(v51 - 8) + 48))(v17, 1, v51) == 1)
      {
        v32(v29, v22);
        v43 = &qword_27CE8EDD8;
        v44 = &qword_21DD8D1D8;
        v45 = v17;
        goto LABEL_26;
      }

      v62 = v67;
      *(v67 + 24) = v51;
      v62[4] = &off_282F1C410;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v62);
      v49 = type metadata accessor for PanicLog;
      v50 = v17;
      goto LABEL_34;
    }

    if (v66 == 1)
    {
      (*(v23 + 16))(v27, v29, v22);
      v39 = v63;
      v40 = v63;
      v41 = 3;
      goto LABEL_21;
    }

LABEL_27:
    if (qword_281221BD8 != -1)
    {
      swift_once();
    }

    v53 = sub_21DD8BF08();
    __swift_project_value_buffer(v53, qword_281221D58);
    v54 = sub_21DD8BEE8();
    v55 = sub_21DD8C1D8();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = v38;
      v58 = v22;
      v59 = v56;
      *v56 = 134217984;
      *(v56 + 4) = v57;
      _os_log_impl(&dword_21DD6F000, v54, v55, "Invalid Log Type %ld", v56, 0xCu);
      v60 = v59;
      v22 = v58;
      MEMORY[0x223D47710](v60, -1, -1);
    }

    v32(v29, v22);
    goto LABEL_9;
  }

  if (v66 != 2)
  {
    if (v66 == 3)
    {
      (*(v23 + 16))(v27, v29, v22);
      v39 = v64;
      v40 = v64;
      v41 = 1;
      goto LABEL_21;
    }

    if (v66 == 4)
    {
      (*(v23 + 16))(v27, v29, v22);
      v39 = v65;
      v40 = v65;
      v41 = 2;
LABEL_21:
      sub_21DD7203C(v41, v27, v40);
      v46 = type metadata accessor for CrashLog();
      if ((*(*(v46 - 8) + 48))(v39, 1, v46) == 1)
      {
        v32(v29, v22);
        v43 = &qword_27CE8EDD0;
        v44 = &qword_21DD8D1D0;
        v45 = v39;
        goto LABEL_26;
      }

      v47 = v67;
      *(v67 + 24) = v46;
      v47[4] = &off_282F1BFC0;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v47);
      v49 = type metadata accessor for CrashLog;
      v50 = v39;
      goto LABEL_34;
    }

    goto LABEL_27;
  }

  (*(v23 + 16))(v27, v29, v22);
  sub_21DD7203C(0, v27, v13);
  v42 = type metadata accessor for CrashLog();
  if ((*(*(v42 - 8) + 48))(v13, 1, v42) == 1)
  {
    v32(v29, v22);
    v43 = &qword_27CE8EDD0;
    v44 = &qword_21DD8D1D0;
    v45 = v13;
LABEL_26:
    sub_21DD71200(v45, v43, v44);
    v52 = v67;
    *v67 = 0u;
    *(v52 + 16) = 0u;
    *(v52 + 32) = 0;
    return;
  }

  v61 = v67;
  *(v67 + 24) = v42;
  v61[4] = &off_282F1BFC0;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v61);
  v49 = type metadata accessor for CrashLog;
  v50 = v13;
LABEL_34:
  sub_21DD730D8(v50, boxed_opaque_existential_1, v49);
  v32(v29, v22);
}

uint64_t sub_21DD71A38@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EDC8, &qword_21DD8D500);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v44 - v5;
  v7 = sub_21DD8BD58();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v44 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v44 - v16;
  v46 = [objc_opt_self() defaultManager];
  if (sub_21DD8BCF8())
  {
    sub_21DD8BCE8();
    sub_21DD8BD28();
    v18 = sub_21DD8BFC8();

    v19 = v46;
    v20 = [v46 fileExistsAtPath_];

    if (v20)
    {
      sub_21DD8BD28();
      v21 = sub_21DD8BFC8();

      v22 = [v19 isReadableFileAtPath_];

      if (v22)
      {

        v23 = v45;
        (*(v8 + 32))(v45, v17, v7);
LABEL_15:
        v42 = 0;
        return (*(v8 + 56))(v23, v42, 1, v7);
      }

      v47 = 0;
      v48 = 0xE000000000000000;
      sub_21DD8C2D8();

      v25 = 0x800000021DD8E300;
      v26 = 0xD000000000000018;
    }

    else
    {
      v47 = 0;
      v48 = 0xE000000000000000;
      sub_21DD8C2D8();

      v25 = 0x800000021DD8E2E0;
      v26 = 0xD000000000000016;
    }

    v47 = v26;
    v48 = v25;
    v27 = sub_21DD8BD28();
    MEMORY[0x223D46C80](v27);

    v24 = sub_21DD7A99C(v47, v48);

    swift_willThrow();
    (*(v8 + 8))(v17, v7);
  }

  else
  {
    v24 = sub_21DD7A99C(0xD000000000000018, 0x800000021DD8E2C0);
    swift_willThrow();
  }

  sub_21DD7871C(v6);
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {

    v41 = *(v8 + 32);
    v41(v15, v6, v7);
    v23 = v45;
    v41(v45, v15, v7);
    goto LABEL_15;
  }

  sub_21DD71200(v6, &qword_27CE8EDC8, &qword_21DD8D500);
  if (qword_27CE8ED50 != -1)
  {
    swift_once();
  }

  v28 = sub_21DD8BF08();
  __swift_project_value_buffer(v28, qword_27CE8FEF0);
  (*(v8 + 16))(v12, a1, v7);
  v29 = v24;
  v30 = sub_21DD8BEE8();
  v31 = sub_21DD8C1D8();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v47 = v33;
    *v32 = 136446466;
    sub_21DD79364();
    v34 = sub_21DD8C418();
    v36 = v35;
    (*(v8 + 8))(v12, v7);
    v37 = sub_21DD74A90(v34, v36, &v47);

    *(v32 + 4) = v37;
    *(v32 + 12) = 2082;
    swift_getErrorValue();
    v38 = sub_21DD8C448();
    v40 = sub_21DD74A90(v38, v39, &v47);

    *(v32 + 14) = v40;
    _os_log_impl(&dword_21DD6F000, v30, v31, "Error accessing %{public}s. %{public}s", v32, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D47710](v33, -1, -1);
    MEMORY[0x223D47710](v32, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v12, v7);
  }

  v42 = 1;
  v23 = v45;
  return (*(v8 + 56))(v23, v42, 1, v7);
}

uint64_t sub_21DD7203C@<X0>(unsigned __int8 a1@<W0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v81 = a3;
  v5 = a1;
  v6 = sub_21DD8BD58();
  v82 = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v73 = &v68[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v76 = &v68[-v11];
  v12 = type metadata accessor for CrashLog();
  v80 = *(v12 - 1);
  v13 = *(v80 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v68[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = (v16 + *(v14 + 32));
  *v17 = 0x6873617243;
  v17[1] = 0xE500000000000000;
  if (v5 == 4)
  {
    v18 = 3;
  }

  else
  {
    v18 = a1;
  }

  *(v16 + 16) = v18;
  v19 = *(v7 + 16);
  v74 = *(v14 + 28);
  (v19)(v16 + v74, a2, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8ED90, &qword_21DD8D090);
  v20 = *(v7 + 72);
  v78 = v7;
  v21 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_21DD8CF30;
  v79 = a2;
  v75 = v19;
  (v19)(v22 + v21, a2, v6);
  v23 = v12[9];
  v72 = v22;
  *(v16 + v23) = v22;
  v77 = sub_21DD728E4(MEMORY[0x277D84F90]);
  if (!v18)
  {
    goto LABEL_9;
  }

  v24 = sub_21DD8C428();

  v25 = &off_282F1BF18;
  v26 = &type metadata for CriticalPolicy;
  if (v24)
  {
    goto LABEL_10;
  }

  if (v18 == 1)
  {
LABEL_9:

    v25 = &off_282F1BF18;
    v26 = &type metadata for CriticalPolicy;
  }

  else
  {
    v27 = sub_21DD8C428();

    if ((v27 & 1) == 0)
    {
      v26 = &type metadata for DefaultPolicy;
      v25 = &off_282F1C4A0;
    }
  }

LABEL_10:
  v28 = v75;
  *(&v86 + 1) = v26;
  v87 = v25;
  v29 = v12[11];
  sub_21DD72A14(&v85, &v29[v16]);
  sub_21DD8BEA8();
  v30 = v79;
  v31 = v82;
  (v28)(v76, v79, v82);
  if (sub_21DD8BE88())
  {
    v76 = v12;
    v32 = v12[10];
    v33 = sub_21DD8BE78();

    *(v16 + v32) = v33;
    *v16 = sub_21DD8BE98();
    *(v16 + 8) = v34;
    v35 = *MEMORY[0x277D36C20];
    v36 = sub_21DD8BFE8();
    v38 = v37;
    v39 = sub_21DD8BC08();
    v40 = *(v39 + 48);
    v41 = *(v39 + 52);
    swift_allocObject();
    v42 = sub_21DD8BBF8();
    v85 = 0uLL;
    v43 = MEMORY[0x28223BE20](v42);
    *&v68[-48] = v30;
    *&v68[-40] = v36;
    *&v68[-32] = v38;
    *&v68[-24] = 128;
    *&v68[-16] = &v85;
    v83 = 0;
    v84 = v43;
    sub_21DD72A38(sub_21DD72B14);

    v44 = *(&v85 + 1);
    if (*(&v85 + 1))
    {
      v45 = v85;

      (*(v78 + 8))(v30, v82);
    }

    else
    {
      v59 = v82;
      if (*(v33 + 16) && (v60 = sub_21DD72C7C(1701667182, 0xE400000000000000), (v61 & 1) != 0))
      {
        sub_21DD72CF4(*(v33 + 56) + 32 * v60, &v85);
      }

      else
      {

        v85 = 0u;
        v86 = 0u;
      }

      (*(v78 + 8))(v30, v59);
      if (*(&v86 + 1))
      {
        v64 = swift_dynamicCast();
        if (v64)
        {
          v44 = v84;
        }

        else
        {
          v44 = 0;
        }

        if (v64)
        {
          v45 = v83;
        }

        else
        {
          v45 = 0;
        }
      }

      else
      {
        sub_21DD774CC(&v85);
        v44 = 0;
        v45 = 0;
      }
    }

    v65 = v76;
    v66 = (v16 + *(v76 + 12));
    *v66 = v45;
    v66[1] = v44;
    *(v16 + 17) = 0;
    v67 = v81;
    sub_21DD72E08(v16, v81);
    (*(v80 + 56))(v67, 0, 1, v65);
    return sub_21DD72E6C(v16);
  }

  else
  {
    v76 = v29;
    if (qword_281221BD8 != -1)
    {
      swift_once();
    }

    v46 = sub_21DD8BF08();
    __swift_project_value_buffer(v46, qword_281221D58);
    v47 = v73;
    (v28)(v73, v30, v31);
    v48 = sub_21DD8BEE8();
    v49 = sub_21DD8C1D8();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v70 = v50;
      v75 = swift_slowAlloc();
      *&v85 = v75;
      *v50 = 136446210;
      v71 = v48;
      v51 = sub_21DD8BC88();
      v53 = v52;
      v69 = v49;
      v54 = *(v78 + 8);
      v54(v47, v31);
      v55 = sub_21DD74A90(v51, v53, &v85);

      v56 = v70;
      v57 = v71;
      *(v70 + 1) = v55;
      _os_log_impl(&dword_21DD6F000, v57, v69, "Unable to read header from URL: %{public}s", v56, 0xCu);
      v58 = v75;
      __swift_destroy_boxed_opaque_existential_1(v75);
      MEMORY[0x223D47710](v58, -1, -1);
      MEMORY[0x223D47710](v56, -1, -1);
    }

    else
    {

      v54 = *(v78 + 8);
      v54(v47, v31);
    }

    v54(v30, v31);
    v62 = v76;
    v54((v16 + v74), v31);

    __swift_destroy_boxed_opaque_existential_1(&v62[v16]);
    return (*(v80 + 56))(v81, 1, 1, v12);
  }
}

uint64_t type metadata accessor for CrashLog()
{
  result = qword_281221D28;
  if (!qword_281221D28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21DD728E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EF00, &qword_21DD8D520);
    v3 = sub_21DD8C378();
    v4 = a1 + 32;

    while (1)
    {
      sub_21DD83564(v4, &v13, &unk_27CE8EEF0, &unk_21DD8D740);
      v5 = v13;
      v6 = v14;
      result = sub_21DD72C7C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_21DD74E40(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_21DD72A14(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_21DD72A38(void (*a1)(uint64_t, uint64_t))
{
  result = sub_21DD8BD78();
  v4 = *v1;
  v5 = v1[1];
  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v12 = a1;
  v6 = *(v1 + 1);

  result = sub_21DD8BBC8();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = result;
  result = sub_21DD8BBE8();
  v8 = v4 - result;
  if (__OFSUB__(v4, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = v5 - v4;
  v10 = sub_21DD8BBD8();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12(v7 + v8, v7 + v8 + v11);
}

uint64_t sub_21DD72B14(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  return sub_21DD72B38(a1);
}

uint64_t sub_21DD72B38(uint64_t result)
{
  if (result)
  {
    MEMORY[0x28223BE20](result);
    return sub_21DD8BD18();
  }

  return result;
}

uint64_t sub_21DD72BE0(const char *a1, uint64_t a2, uint64_t a3, void *a4, size_t a5, uint64_t *a6)
{
  v10 = sub_21DD8C068();
  v11 = getxattr(a1, (v10 + 32), a4, a5, 0, 0);

  if (v11 >= 1)
  {
    v13 = MEMORY[0x223D46C50](a4);
    v14 = a6[1];
    *a6 = v13;
    a6[1] = v15;
  }

  return result;
}

unint64_t sub_21DD72C7C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_21DD8C458();
  sub_21DD8C098();
  v6 = sub_21DD8C478();

  return sub_21DD72D50(a1, a2, v6);
}

uint64_t sub_21DD72CF4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_21DD72D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_21DD8C428())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_21DD72E08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CrashLog();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DD72E6C(uint64_t a1)
{
  v2 = type metadata accessor for CrashLog();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21DD72EDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21DD8BD58();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21DD72FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DD8BD58();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_21DD730D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21DD73140(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_21DD73240(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21DD83BD8;

  return sub_21DD732F8(a1, v5);
}

uint64_t sub_21DD732F8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21DD75048;

  return v7(a1);
}

uint64_t sub_21DD733F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = v1[11];
  v9 = v1[12];
  v10 = v1[13];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_21DD74F54;

  return sub_21DD734DC(a1, v4, v5, (v1 + 4), v6, v7, v8, v9);
}

uint64_t sub_21DD734DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *MEMORY[0x277D85DE8];
  v8[61] = a8;
  v8[62] = v16;
  v8[59] = a6;
  v8[60] = a7;
  v8[58] = a4;
  v9 = sub_21DD8BD58();
  v8[63] = v9;
  v10 = *(v9 - 8);
  v8[64] = v10;
  v11 = *(v10 + 64) + 15;
  v8[65] = swift_task_alloc();
  v12 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_21DD735D8, 0, 0);
}

uint64_t sub_21DD735D8()
{
  v75 = v0;
  v74[1] = *MEMORY[0x277D85DE8];
  sub_21DD73CD4(*(v0 + 464), v0 + 16);
  if (qword_281221BD8 != -1)
  {
    swift_once();
  }

  v1 = sub_21DD8BF08();
  __swift_project_value_buffer(v1, qword_281221D58);
  sub_21DD74C68(v0 + 16, v0 + 72);
  v2 = sub_21DD8BEE8();
  v3 = sub_21DD8C1C8();
  sub_21DD74CBC(v0 + 16);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v74[0] = v5;
    *v4 = 136315138;
    v6 = *(v0 + 32);
    *(v0 + 128) = *(v0 + 16);
    *(v0 + 144) = v6;
    *(v0 + 160) = *(v0 + 48);
    *(v0 + 176) = *(v0 + 64);
    sub_21DD74C68(v0 + 16, v0 + 184);
    v7 = sub_21DD8C048();
    v9 = sub_21DD74A90(v7, v8, v74);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_21DD6F000, v2, v3, "Feedback alert type: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x223D47710](v5, -1, -1);
    MEMORY[0x223D47710](v4, -1, -1);
  }

  v10 = *(v0 + 16);
  v11 = *(v0 + 24);
  v13 = *(v0 + 32);
  v12 = *(v0 + 40);
  v14 = *(v0 + 48);
  v15 = *(v0 + 56);
  v16 = *(v0 + 64);
  if (!*(v0 + 65))
  {
    v21 = *(v0 + 464);
    *(v0 + 296) = v10;
    *(v0 + 304) = v11;
    *(v0 + 312) = v13;
    *(v0 + 320) = v12;
    *(v0 + 328) = v14;
    *(v0 + 336) = v15;
    *(v0 + 344) = v16;
    sub_21DD8540C(v0 + 296, v0 + 352);
    v22 = sub_21DD84BCC(v21);
    if (v22)
    {
      v23 = v22;
      *(v0 + 456) = 0;
      CFUserNotificationReceiveResponse(v22, 0.0, (v0 + 456));
      v24 = *(v0 + 456);
      if (!v24)
      {
        v41 = sub_21DD8BEE8();
        v42 = sub_21DD8C1B8();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          *v43 = 0;
          _os_log_impl(&dword_21DD6F000, v41, v42, "Chose default response. Showing app.", v43, 2u);
          MEMORY[0x223D47710](v43, -1, -1);
        }

        v44 = *(v0 + 464);

        v45 = v44[3];
        v46 = v44[4];
        __swift_project_boxed_opaque_existential_1(v44, v45);
        v73 = (*(v46 + 72))(v45, v46);
        v48 = v47;
        v49 = v44[3];
        v50 = v44[4];
        __swift_project_boxed_opaque_existential_1(v44, v49);
        (*(v50 + 24))(v49, v50);
        v51 = sub_21DD8C058();
        v53 = v52;

        v55 = v44[3];
        v54 = v44[4];
        __swift_project_boxed_opaque_existential_1(v44, v55);
        v56 = (*(v54 + 32))(v55, v54);
        if (*(v56 + 16))
        {
          v57 = *(v0 + 520);
          v72 = v48;
          v58 = v51;
          v60 = *(v0 + 504);
          v59 = *(v0 + 512);
          (*(v59 + 16))(v57, v56 + ((*(v59 + 80) + 32) & ~*(v59 + 80)), v60);

          v61 = sub_21DD8BD28();
          v63 = v62;
          (*(v59 + 8))(v57, v60);
          v51 = v58;
          v48 = v72;
        }

        else
        {

          v61 = 0;
          v63 = 0;
        }

        v68 = *(v0 + 320);
        *(v0 + 408) = *(v0 + 304);
        *(v0 + 424) = v68;
        *(v0 + 440) = *(v0 + 336);
        sub_21DD81658((v0 + 408), v73, v48, v51, v53, v61, v63);

        sub_21DD74CBC(v0 + 16);

        goto LABEL_38;
      }

      sub_21DD74CBC(v0 + 16);
      v26 = *(v0 + 472);
      v25 = *(v0 + 480);
      if (v24 != 1)
      {
        v64 = sub_21DD74CEC();
        v26();

        sub_21DD74CBC(v0 + 16);
LABEL_35:

        goto LABEL_39;
      }

      CFUserNotificationCancel(v23);
      (v26)(0);
    }

    else
    {
      v40 = *(v0 + 472);
      v39 = *(v0 + 480);
      sub_21DD74CBC(v0 + 16);
      v23 = sub_21DD74CEC();
      v40();
    }

LABEL_27:

LABEL_38:
    sub_21DD74CBC(v0 + 16);
    goto LABEL_39;
  }

  if (*(v0 + 65) == 1)
  {
    *(v0 + 240) = v10;
    *(v0 + 248) = v11;
    *(v0 + 256) = v13;
    *(v0 + 264) = v12;
    *(v0 + 272) = v14;
    *(v0 + 280) = v15;
    *(v0 + 288) = v16;
    if (qword_281221B08 != -1)
    {
      swift_once();
    }

    v17 = swift_task_alloc();
    *(v0 + 528) = v17;
    *v17 = v0;
    v17[1] = sub_21DD840B0;
    v18 = *(v0 + 464);
    v19 = *MEMORY[0x277D85DE8];

    return sub_21DD7C970(v18, v0 + 240);
  }

  if (*(v0 + 64) || v13 | v11 | v10 | v12 | v14 | v15 || (v27 = sub_21DD84BCC(*(v0 + 464))) == 0)
  {
    v38 = *(v0 + 472);
    v37 = *(v0 + 480);
    v23 = sub_21DD74CEC();
  }

  else
  {
    v23 = v27;
    *(v0 + 448) = 0;
    CFUserNotificationReceiveResponse(v27, 0.0, (v0 + 448));
    v28 = *(v0 + 448);
    if (v28 != 1)
    {
      if (!v28)
      {
        v29 = sub_21DD8BEE8();
        v30 = sub_21DD8C1B8();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          _os_log_impl(&dword_21DD6F000, v29, v30, "Chose default response. Showing app.", v31, 2u);
          MEMORY[0x223D47710](v31, -1, -1);
        }

        v33 = *(v0 + 488);
        v32 = *(v0 + 496);
        v35 = *(v0 + 472);
        v34 = *(v0 + 480);
        v36 = *(v0 + 464);

        sub_21DD84F28(v36, v33, v32, v35, v34);
        goto LABEL_27;
      }

      v67 = *(v0 + 472);
      v66 = *(v0 + 480);
      v64 = sub_21DD74CEC();
      v67();

      goto LABEL_35;
    }

    v38 = *(v0 + 472);
    v65 = *(v0 + 480);
    CFUserNotificationCancel(v23);
  }

  v38();

LABEL_39:
  v69 = *(v0 + 520);

  v70 = *(v0 + 8);
  v71 = *MEMORY[0x277D85DE8];

  return v70();
}

void sub_21DD73CD4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21DD8BD58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!OSAIsFeedbackPromptingEnabled())
  {
    if (qword_281221BD8 != -1)
    {
      swift_once();
    }

    v12 = sub_21DD8BF08();
    __swift_project_value_buffer(v12, qword_281221D58);
    v13 = sub_21DD8BEE8();
    v14 = sub_21DD8C1D8();
    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_17;
    }

    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v66 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_21DD74A90(0xD00000000000001ALL, 0x800000021DD8E6E0, v66);
    v17 = "%s Feedback prompting is disabled.";
    goto LABEL_16;
  }

  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  if (((*(v10 + 80))(v9, v10) & 1) == 0)
  {
    if (qword_281221BD8 != -1)
    {
      swift_once();
    }

    v18 = sub_21DD8BF08();
    __swift_project_value_buffer(v18, qword_281221D58);
    v13 = sub_21DD8BEE8();
    v14 = sub_21DD8C1D8();
    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_17;
    }

    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v66 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_21DD74A90(0xD00000000000001ALL, 0x800000021DD8E6E0, v66);
    v17 = "%s Failed isUseful check.";
LABEL_16:
    _os_log_impl(&dword_21DD6F000, v13, v14, v17, v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x223D47710](v16, -1, -1);
    MEMORY[0x223D47710](v15, -1, -1);
LABEL_17:

    v19 = 0;
    v20 = xmmword_21DD8D450;
    v21 = 0uLL;
    v22 = 2;
    v23 = 0uLL;
    goto LABEL_39;
  }

  has_internal_diagnostics = isForceSeedFeedbackPromptingEnabled();
  if (has_internal_diagnostics)
  {
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
  }

  *v66 = 1;
  memset(&v66[8], 0, 41);
  v66[49] = 2;
  if (!has_internal_diagnostics || (sub_21DD83614(a1) & 1) == 0)
  {
    if (!isInternal())
    {
      goto LABEL_34;
    }

    v24 = a1[3];
    v25 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v24);
    if ((*(v25 + 24))(v24, v25) == 0x6873617243 && v26 == 0xE500000000000000)
    {
    }

    else
    {
      v27 = sub_21DD8C428();

      if ((v27 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    v28 = a1[3];
    v29 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v28);
    if ((*(v29 + 64))(v28, v29) == 4541505 && v30 == 0xE300000000000000)
    {
      goto LABEL_25;
    }

    v31 = sub_21DD8C428();

    if ((v31 & 1) == 0)
    {
      v49 = a1[3];
      v50 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v49);
      if ((*(v50 + 64))(v49, v50) == 0x647261646E617453 && v51 == 0xE800000000000000)
      {
LABEL_25:

        goto LABEL_27;
      }

      v52 = sub_21DD8C428();

      if ((v52 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

LABEL_27:
    v32 = a1[3];
    v33 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v32);
    (*(v33 + 8))(v32, v33);
    sub_21DD896B8(v67);
    (*(v5 + 8))(v8, v4);
    v34 = v67[0];
    if (v67[0] != 1)
    {
      v36 = v67[1];
      v35 = v67[2];
      v38 = v67[3];
      v37 = v67[4];
      v39 = v67[5];
      v40 = v68;
      v62 = *v66;
      v63 = *&v66[16];
      v64 = *&v66[32];
      v65 = *&v66[48];
      sub_21DD74CBC(&v62);
      if (isShouldShowAlertEnabled() && v40 != 2 && (v40 & 1) != 0 && (sub_21DD83614(a1) & 1) != 0)
      {
        *v66 = v34;
        *&v66[8] = v36;
        *&v66[16] = v35;
        *&v66[24] = v38;
        *&v66[32] = v37;
        *&v66[40] = v39;
        *&v66[48] = v40;
      }

      else
      {
        *v66 = v34;
        *&v66[8] = v36;
        *&v66[16] = v35;
        *&v66[24] = v38;
        *&v66[32] = v37;
        *&v66[40] = v39;
        v66[48] = v40;
        v66[49] = 1;
      }
    }

    goto LABEL_34;
  }

  v62 = *v66;
  v63 = *&v66[16];
  v64 = *&v66[32];
  v65 = *&v66[48];
  sub_21DD74CBC(&v62);
  memset(v66, 0, 48);
  *&v66[48] = 512;
LABEL_34:
  if (qword_281221BD8 != -1)
  {
    swift_once();
  }

  v41 = sub_21DD8BF08();
  __swift_project_value_buffer(v41, qword_281221D58);
  v62 = *v66;
  v63 = *&v66[16];
  v64 = *&v66[32];
  v65 = *&v66[48];
  sub_21DD74C68(&v62, &v58);
  v42 = sub_21DD8BEE8();
  v43 = sub_21DD8C1E8();
  sub_21DD74CBC(&v62);
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v53[0] = v45;
    *v44 = 136315394;
    *(v44 + 4) = sub_21DD74A90(0xD00000000000001ALL, 0x800000021DD8E6E0, v53);
    *(v44 + 12) = 2080;
    v58 = v62;
    v59 = v63;
    v60 = v64;
    v61 = v65;
    sub_21DD74C68(&v62, &v54);
    v46 = sub_21DD8C048();
    v48 = sub_21DD74A90(v46, v47, v53);

    *(v44 + 14) = v48;
    _os_log_impl(&dword_21DD6F000, v42, v43, "%s Notice type: %s.", v44, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D47710](v45, -1, -1);
    MEMORY[0x223D47710](v44, -1, -1);
  }

  swift_beginAccess();
  v54 = *v66;
  v55 = *&v66[16];
  v56 = *&v66[32];
  v57 = *&v66[48];
  v58 = *v66;
  v59 = *&v66[16];
  v60 = *&v66[32];
  v61 = *&v66[48];
  sub_21DD74C68(&v54, v53);
  sub_21DD74CBC(&v58);
  v20 = v54;
  v21 = v55;
  v23 = v56;
  v19 = v57;
  v22 = HIBYTE(v57);
LABEL_39:
  *a2 = v20;
  *(a2 + 16) = v21;
  *(a2 + 32) = v23;
  *(a2 + 48) = v19;
  *(a2 + 49) = v22;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

BOOL sub_21DD7450C()
{
  v1 = *(v0 + 16);
  if (v1 <= 1 && !*(v0 + 16))
  {
    goto LABEL_16;
  }

  v2 = sub_21DD8C428();

  if (v2)
  {
    return 1;
  }

  if (v1 == 1)
  {
LABEL_16:

    return 1;
  }

  v3 = sub_21DD8C428();

  if (v3)
  {
    return 1;
  }

  v4 = *(v0 + *(type metadata accessor for CrashLog() + 40));
  if ((sub_21DD74880(v4) & 1) == 0 && (sub_21DD779C8(v4) & 1) == 0)
  {
    if (*(v4 + 16))
    {
      v5 = sub_21DD72C7C(0x4449656C646E7562, 0xE800000000000000);
      if (v6)
      {
        sub_21DD72CF4(*(v4 + 56) + 32 * v5, v23);
        v7 = swift_dynamicCast();
        v8 = v7 == 0;
        v9 = v7 ? v21 : 0;
        v10 = v8 ? 0 : v22;
      }

      else
      {
        v9 = 0;
        v10 = 0;
      }
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    v12 = sub_21DD77A6C(v9, v10);

    if (v12)
    {
      v13 = *(v0 + 8);
      if (v13 >> 60 == 15)
      {
        return 1;
      }

      v14 = *v0;
      sub_21DD8BEA8();
      sub_21DD77B88(v14, v13);
      v15 = MEMORY[0x223D46A40](v14, v13);
      if (v15)
      {
        v16 = v15;
        if (!*(v15 + 16) || (v17 = sub_21DD72C7C(0x74616E696D726574, 0xEB000000006E6F69), (v18 & 1) == 0))
        {
LABEL_31:
          sub_21DD77BDC(v14, v13);
          goto LABEL_16;
        }

        sub_21DD72CF4(*(v16 + 56) + 32 * v17, v23);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EDA8, &qword_21DD8D180);
        if (swift_dynamicCast())
        {
          if (*(v21 + 16))
          {
            v19 = sub_21DD72C7C(1701080931, 0xE400000000000000);
            if (v20)
            {
              sub_21DD72CF4(*(v21 + 56) + 32 * v19, v23);
              sub_21DD77BDC(v14, v13);

              if (swift_dynamicCast())
              {
                return v21 != 2343432205;
              }

              return 1;
            }
          }

          goto LABEL_31;
        }
      }

      sub_21DD77BDC(v14, v13);
      return 1;
    }
  }

  return 0;
}

uint64_t sub_21DD74880(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = sub_21DD72C7C(0x4449656C646E7562, 0xE800000000000000);
    if (v3)
    {
      sub_21DD72CF4(*(a1 + 56) + 32 * v2, v13);
      swift_dynamicCast();
    }
  }

  v4 = sub_21DD8C108();

  if (!*(a1 + 16) || (v5 = sub_21DD72C7C(0x74737269665F7369, 0xEE0079747261705FLL), (v6 & 1) == 0) || (sub_21DD72CF4(*(a1 + 56) + 32 * v5, v13), (swift_dynamicCast() & 1) == 0))
  {
    if ((v4 & 1) == 0)
    {
      goto LABEL_8;
    }

    return 0;
  }

  if ((v4 & (v12 != 0)) != 0)
  {
    return 0;
  }

LABEL_8:
  if (qword_281221BD8 != -1)
  {
    swift_once();
  }

  v7 = sub_21DD8BF08();
  __swift_project_value_buffer(v7, qword_281221D58);
  v8 = sub_21DD8BEE8();
  v9 = sub_21DD8C1E8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_21DD6F000, v8, v9, "3rd party app crash report.", v10, 2u);
    MEMORY[0x223D47710](v10, -1, -1);
  }

  return 1;
}

uint64_t sub_21DD74A90(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_21DD74B5C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_21DD72CF4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_21DD74B5C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_21DD87E00(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_21DD8C328();
    a6 = v11;
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

uint64_t get_enum_tag_for_layout_string_27DiagnosticsReporterServices8NotifierV10NoticeTypeO(uint64_t a1)
{
  if ((*(a1 + 49) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 49) & 3;
  }
}

id sub_21DD74CEC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EDE8, &unk_21DD8D510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DD8CF30;
  v1 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_21DD8BFE8();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v2;
  *(inited + 48) = 0xD000000000000017;
  *(inited + 56) = 0x800000021DD8E7C0;
  sub_21DD728E4(inited);
  swift_setDeallocating();
  sub_21DD71200(inited + 32, &unk_27CE8EEF0, &unk_21DD8D740);
  v3 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v4 = sub_21DD8BFC8();
  v5 = sub_21DD8BF58();

  v6 = [v3 initWithDomain:v4 code:1 userInfo:v5];

  return v6;
}

_OWORD *sub_21DD74E40(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_21DD74E50(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if ((isInternal() & 1) == 0)
  {
    sub_21DD83564(a2, v9, &unk_27CE8EF70, &unk_21DD8D580);
    v6 = v10;
    if (v10)
    {
      v7 = v11;
      __swift_project_boxed_opaque_existential_1(v9, v10);
      (*(v7 + 104))(v6, v7);
      __swift_destroy_boxed_opaque_existential_1(v9);
    }

    else
    {
      sub_21DD71200(v9, &unk_27CE8EF70, &unk_21DD8D580);
    }
  }

  return a3(a1);
}

uint64_t sub_21DD74F54()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_21DD75048()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t objectdestroy_2Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  v2 = *(v0 + 88);

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t objectdestroyTm()
{
  if (v0[5])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  }

  v1 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_21DD75250@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___ObjCDiagnosticsReporterLaunchOptions_files_to_attach;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_21DD75308()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21DD7535C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21DD7539C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21DD753DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DD8BD58();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_21DD754A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21DD8BD58();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21DD75560()
{
  if (v0[2] != 1)
  {

    if (v0[4])
    {

      v1 = v0[6];
    }
  }

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

uint64_t sub_21DD755B4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

BOOL sub_21DD75750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v21[0] = a1;
  v21[1] = a2;
  v22 = sub_21DD8BE58();
  v3 = *(v22 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v22);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DD8BC38();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DD8BE38();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8ED70, qword_21DD8D880);
  v12 = sub_21DD8BE48();
  v13 = *(v12 - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_21DD8CF30;
  (*(v13 + 104))(v16 + v15, *MEMORY[0x277CC9980], v12);
  sub_21DD802FC(v16);
  swift_setDeallocating();
  (*(v13 + 8))(v16 + v15, v12);
  swift_deallocClassInstance();
  sub_21DD8BE28();

  (*(v3 + 8))(v6, v22);
  v17 = sub_21DD8BC28();
  LOBYTE(v15) = v18;
  (*(v8 + 8))(v11, v7);
  if (v15)
  {
    v19 = 0;
  }

  else
  {
    v19 = v17;
  }

  return v19 < v23;
}

unsigned __int8 *sub_21DD75A74()
{
  result = sub_21DD7A350(0xD000000000000023, 0x800000021DD8E040);
  if (v1)
  {
    v2 = 10;
  }

  else
  {
    v2 = result;
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    v3 = sub_21DD75DD0(0x64uLL);
    return (v3 < 0x7FFFFFFFFFFFFFFFLL && v2 >= (v3 + 1));
  }

  return result;
}

BOOL sub_21DD75AF4(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_21DD75B4C()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_21DD8BED8();
}

uint64_t sub_21DD75B98()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_21DD8BEC8();
}

uint64_t sub_21DD75BF0()
{
  sub_21DD8C458();
  v1 = *v0;
  swift_getWitnessTable();
  sub_21DD8BEC8();
  return sub_21DD8C478();
}

uint64_t sub_21DD75C58(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_21DD8BEB8();
}

void type metadata accessor for CFString()
{
  if (!qword_27CE8ED58)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27CE8ED58);
    }
  }
}

uint64_t sub_21DD75D8C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CFString();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21DD75DD0(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x223D47720](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x223D47720](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
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

void sub_21DD75EB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8ED78, &unk_21DD8D190);
  inited = swift_initStackObject();
  *(inited + 32) = 0x737574617473;
  *(inited + 16) = xmmword_21DD8CF30;
  *(inited + 40) = 0xE600000000000000;
  v5 = sub_21DD8BFC8();

  *(inited + 48) = v5;
  v6 = sub_21DD8061C(inited);
  swift_setDeallocating();
  sub_21DD76770(inited + 32);
  if (*(a2 + 24))
  {
    sub_21DD76824(a2, v110);
    v7 = v111;
    if (!v111)
    {
      goto LABEL_87;
    }

    v8 = v112;
    __swift_project_boxed_opaque_existential_1(v110, v111);
    v9 = (*(v8 + 56))(v7, v8);
    v10 = v9 + 64;
    v11 = 1 << *(v9 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v9 + 64);
    v14 = (v11 + 63) >> 6;
    v105 = v9;

    v15 = 0;
    while (v13)
    {
      v18 = v15;
LABEL_14:
      v19 = __clz(__rbit64(v13)) | (v18 << 6);
      v20 = (*(v105 + 48) + 16 * v19);
      v22 = *v20;
      v21 = v20[1];
      v23 = *(*(v105 + 56) + 8 * v19);

      v108 = v23;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = sub_21DD72C7C(v22, v21);
      v27 = *(v6 + 16);
      v28 = (v26 & 1) == 0;
      v29 = __OFADD__(v27, v28);
      v30 = v27 + v28;
      if (v29)
      {
        goto LABEL_82;
      }

      v31 = v26;
      if (*(v6 + 24) >= v30)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v32 = v6;
        }

        else
        {
          v98 = v25;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8ED88, &unk_21DD8D060);
          v37 = sub_21DD8C358();
          v32 = v37;
          if (*(v6 + 16))
          {
            v38 = (v37 + 64);
            v39 = (v6 + 64);
            v40 = ((1 << *(v32 + 32)) + 63) >> 6;
            if (v32 != v6 || v38 >= &v39[8 * v40])
            {
              memmove(v38, v39, 8 * v40);
            }

            v41 = 0;
            *(v32 + 16) = *(v6 + 16);
            v42 = 1 << *(v6 + 32);
            if (v42 < 64)
            {
              v43 = ~(-1 << v42);
            }

            else
            {
              v43 = -1;
            }

            v44 = v43 & *(v6 + 64);
            v45 = (v42 + 63) >> 6;
            v99 = v45;
            if (v44)
            {
              do
              {
                v46 = __clz(__rbit64(v44));
                v103 = (v44 - 1) & v44;
LABEL_37:
                v49 = v46 | (v41 << 6);
                v50 = (*(v6 + 48) + 16 * v49);
                v51 = v50[1];
                v101 = *(*(v6 + 56) + 8 * v49);
                v52 = (*(v32 + 48) + 16 * v49);
                *v52 = *v50;
                v52[1] = v51;
                *(*(v32 + 56) + 8 * v49) = v101;

                v53 = v101;
                v45 = v99;
                v44 = v103;
              }

              while (v103);
            }

            v47 = v41;
            while (1)
            {
              v41 = v47 + 1;
              if (__OFADD__(v47, 1))
              {
                goto LABEL_86;
              }

              if (v41 >= v45)
              {
                break;
              }

              v48 = *(v6 + 64 + 8 * v41);
              ++v47;
              if (v48)
              {
                v46 = __clz(__rbit64(v48));
                v103 = (v48 - 1) & v48;
                goto LABEL_37;
              }
            }
          }

          v25 = v98;
        }
      }

      else
      {
        sub_21DD7F7F0(v30, isUniquelyReferenced_nonNull_native);
        v32 = v6;
        v25 = sub_21DD72C7C(v22, v21);
        if ((v31 & 1) != (v33 & 1))
        {
          goto LABEL_88;
        }
      }

      v13 &= v13 - 1;
      if (v31)
      {
        v16 = *(v32 + 56);
        v17 = *(v16 + 8 * v25);
        *(v16 + 8 * v25) = v108;
      }

      else
      {
        *(v32 + 8 * (v25 >> 6) + 64) |= 1 << v25;
        v34 = (*(v32 + 48) + 16 * v25);
        *v34 = v22;
        v34[1] = v21;
        *(*(v32 + 56) + 8 * v25) = v108;
        v35 = *(v32 + 16);
        v29 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v29)
        {
          goto LABEL_84;
        }

        *(v32 + 16) = v36;
      }

      v15 = v18;
      v6 = v32;
    }

    while (1)
    {
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v18 >= v14)
      {

        __swift_destroy_boxed_opaque_existential_1(v110);
        goto LABEL_41;
      }

      v13 = *(v10 + 8 * v18);
      ++v15;
      if (v13)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
LABEL_41:
    v54 = 1 << *(a3 + 32);
    if (v54 < 64)
    {
      v55 = ~(-1 << v54);
    }

    else
    {
      v55 = -1;
    }

    v56 = v55 & *(a3 + 64);
    v57 = (v54 + 63) >> 6;

    v58 = 0;
    while (v56)
    {
      v61 = v58;
LABEL_52:
      v62 = __clz(__rbit64(v56)) | (v61 << 6);
      v63 = (*(a3 + 48) + 16 * v62);
      v65 = *v63;
      v64 = v63[1];
      v66 = *(*(a3 + 56) + 8 * v62);

      v109 = v66;
      v67 = swift_isUniquelyReferenced_nonNull_native();
      v110[0] = v6;
      v68 = sub_21DD72C7C(v65, v64);
      v70 = *(v6 + 16);
      v71 = (v69 & 1) == 0;
      v29 = __OFADD__(v70, v71);
      v72 = v70 + v71;
      if (v29)
      {
        goto LABEL_81;
      }

      v73 = v69;
      if (*(v6 + 24) >= v72)
      {
        if (v67)
        {
          v74 = v6;
        }

        else
        {
          v100 = v68;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8ED88, &unk_21DD8D060);
          v79 = sub_21DD8C358();
          v74 = v79;
          if (*(v6 + 16))
          {
            v80 = (v79 + 64);
            v81 = (v6 + 64);
            v82 = ((1 << *(v74 + 32)) + 63) >> 6;
            if (v74 != v6 || v80 >= &v81[8 * v82])
            {
              memmove(v80, v81, 8 * v82);
            }

            v83 = 0;
            *(v74 + 16) = *(v6 + 16);
            v84 = 1 << *(v6 + 32);
            if (v84 < 64)
            {
              v85 = ~(-1 << v84);
            }

            else
            {
              v85 = -1;
            }

            v86 = v85 & *(v6 + 64);
            v87 = (v84 + 63) >> 6;
            v102 = v87;
            if (v86)
            {
              do
              {
                v88 = __clz(__rbit64(v86));
                v106 = (v86 - 1) & v86;
LABEL_75:
                v91 = v88 | (v83 << 6);
                v92 = (*(v6 + 48) + 16 * v91);
                v93 = v92[1];
                v104 = *(*(v6 + 56) + 8 * v91);
                v94 = (*(v74 + 48) + 16 * v91);
                *v94 = *v92;
                v94[1] = v93;
                *(*(v74 + 56) + 8 * v91) = v104;

                v95 = v104;
                v87 = v102;
                v86 = v106;
              }

              while (v106);
            }

            v89 = v83;
            while (1)
            {
              v83 = v89 + 1;
              if (__OFADD__(v89, 1))
              {
                goto LABEL_85;
              }

              if (v83 >= v87)
              {
                break;
              }

              v90 = *(v6 + 64 + 8 * v83);
              ++v89;
              if (v90)
              {
                v88 = __clz(__rbit64(v90));
                v106 = (v90 - 1) & v90;
                goto LABEL_75;
              }
            }
          }

          v68 = v100;
        }
      }

      else
      {
        sub_21DD7F7F0(v72, v67);
        v74 = v110[0];
        v68 = sub_21DD72C7C(v65, v64);
        if ((v73 & 1) != (v75 & 1))
        {
          goto LABEL_88;
        }
      }

      v56 &= v56 - 1;
      if (v73)
      {
        v59 = *(v74 + 56);
        v60 = *(v59 + 8 * v68);
        *(v59 + 8 * v68) = v109;
      }

      else
      {
        *(v74 + 8 * (v68 >> 6) + 64) |= 1 << v68;
        v76 = (*(v74 + 48) + 16 * v68);
        *v76 = v65;
        v76[1] = v64;
        *(*(v74 + 56) + 8 * v68) = v109;
        v77 = *(v74 + 16);
        v29 = __OFADD__(v77, 1);
        v78 = v77 + 1;
        if (v29)
        {
          goto LABEL_83;
        }

        *(v74 + 16) = v78;
      }

      v58 = v61;
      v6 = v74;
    }

    while (1)
    {
      v61 = v58 + 1;
      if (__OFADD__(v58, 1))
      {
        break;
      }

      if (v61 >= v57)
      {

        v96 = sub_21DD8BFC8();
        sub_21DD767D8();
        v97 = sub_21DD8BF58();
        AnalyticsSendEvent();

        return;
      }

      v56 = *(a3 + 64 + 8 * v61);
      ++v58;
      if (v56)
      {
        goto LABEL_52;
      }
    }

    __break(1u);
  }

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
LABEL_87:
  __break(1u);
LABEL_88:
  sub_21DD8C438();
  __break(1u);
}

uint64_t sub_21DD76770(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8ED80, &qword_21DD8D058);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21DD767D8()
{
  result = qword_281221AA8;
  if (!qword_281221AA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281221AA8);
  }

  return result;
}

uint64_t sub_21DD76824(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE8EF70, &unk_21DD8D580);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DD76894(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 4541505;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0xD000000000000014;
    }

    else
    {
      v4 = 0x647261646E617453;
    }

    if (v3 == 2)
    {
      v5 = 0x800000021DD8DFC0;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x61576D6574737953;
    }

    else
    {
      v4 = 4541505;
    }

    if (v3)
    {
      v5 = 0xEE00676F64686374;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0xD000000000000014;
  v8 = 0x800000021DD8DFC0;
  if (a2 != 2)
  {
    v7 = 0x647261646E617453;
    v8 = 0xE800000000000000;
  }

  if (a2)
  {
    v2 = 0x61576D6574737953;
    v6 = 0xEE00676F64686374;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21DD8C428();
  }

  return v11 & 1;
}

uint64_t sub_21DD769F4()
{
  v1 = *v0;
  sub_21DD8C458();
  sub_21DD8C098();

  return sub_21DD8C478();
}

uint64_t sub_21DD76AC0()
{
  *v0;
  *v0;
  *v0;
  sub_21DD8C098();
}

uint64_t sub_21DD76B78()
{
  v1 = *v0;
  sub_21DD8C458();
  sub_21DD8C098();

  return sub_21DD8C478();
}

uint64_t sub_21DD76C40@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21DD7797C();
  *a2 = result;
  return result;
}

void sub_21DD76C70(unint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 4541505;
  v4 = 0x800000021DD8DFC0;
  v5 = 0xD000000000000014;
  if (*v1 != 2)
  {
    v5 = 0x647261646E617453;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 0x61576D6574737953;
    v2 = 0xEE00676F64686374;
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

uint64_t sub_21DD76CF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v11 = MEMORY[0x277D84F90];
    sub_21DD771C4(0, v1, 0);
    v2 = v11;
    v4 = (a1 + 40);
    do
    {
      v8 = *(v4 - 1);
      v9 = *v4;

      swift_dynamicCast();
      v11 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_21DD771C4((v5 > 1), v6 + 1, 1);
        v2 = v11;
      }

      *(v2 + 16) = v6 + 1;
      sub_21DD74E40(&v10, (v2 + 32 * v6 + 32));
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

unint64_t sub_21DD76DF8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8ED78, &unk_21DD8D190);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DD8D070;
  *(inited + 32) = 0x737365636F7270;
  *(inited + 40) = 0xE700000000000000;
  v2 = type metadata accessor for CrashLog();
  v3 = *(v0 + *(v2 + 40));
  if (*(v3 + 16) && (v4 = sub_21DD72C7C(1701667182, 0xE400000000000000), (v5 & 1) != 0) && (sub_21DD72CF4(*(v3 + 56) + 32 * v4, v16), sub_21DD77C48(), (swift_dynamicCast() & 1) != 0))
  {
    v6 = v15;
  }

  else
  {
    sub_21DD77C48();
    v6 = sub_21DD8C238();
  }

  *(inited + 48) = v6;
  *(inited + 56) = 0x746E656469636E69;
  *(inited + 64) = 0xEB0000000064695FLL;
  if (*(v3 + 16) && (v7 = sub_21DD72C7C(0x746E656469636E69, 0xEB0000000064695FLL), (v8 & 1) != 0) && (sub_21DD72CF4(*(v3 + 56) + 32 * v7, v16), sub_21DD77C48(), (swift_dynamicCast() & 1) != 0))
  {
    v9 = v15;
  }

  else
  {
    sub_21DD77C48();
    v9 = sub_21DD8C238();
  }

  *(inited + 72) = v9;
  *(inited + 80) = 1701869940;
  *(inited + 88) = 0xE400000000000000;
  v10 = (v0 + *(v2 + 32));
  v11 = *v10;
  v12 = v10[1];
  *(inited + 96) = sub_21DD8BFC8();
  v13 = sub_21DD8061C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8ED80, &qword_21DD8D058);
  swift_arrayDestroy();
  return v13;
}

uint64_t sub_21DD77018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_21DD8BD58();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_21DD7708C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 32));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

unint64_t sub_21DD770E4()
{
  v1 = 4541505;
  v2 = 0xD000000000000014;
  if (*(v0 + 16) != 2)
  {
    v2 = 0x647261646E617453;
  }

  if (*(v0 + 16))
  {
    v1 = 0x61576D6574737953;
  }

  if (*(v0 + 16) <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21DD77168(uint64_t a1)
{
  v2 = (v1 + *(a1 + 48));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

size_t sub_21DD771A4(size_t a1, int64_t a2, char a3)
{
  result = sub_21DD771E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21DD771C4(char *a1, int64_t a2, char a3)
{
  result = sub_21DD773BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_21DD771E4(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EDB8, &qword_21DD8D1A0);
  v10 = *(sub_21DD8BDC8() - 8);
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
  v15 = *(sub_21DD8BDC8() - 8);
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

char *sub_21DD773BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EDB0, &qword_21DD8D188);
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

uint64_t sub_21DD774CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8ED98, qword_21DD8D098);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21DD77534()
{
  sub_21DD77778(319, &qword_281221D40);
  if (v0 <= 0x3F)
  {
    sub_21DD8BD58();
    if (v1 <= 0x3F)
    {
      sub_21DD77658();
      if (v2 <= 0x3F)
      {
        sub_21DD776B0();
        if (v3 <= 0x3F)
        {
          sub_21DD77714();
          if (v4 <= 0x3F)
          {
            sub_21DD77778(319, &qword_281221BC8);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_21DD77658()
{
  if (!qword_281221BC0)
  {
    sub_21DD8BD58();
    v0 = sub_21DD8C168();
    if (!v1)
    {
      atomic_store(v0, &qword_281221BC0);
    }
  }
}

void sub_21DD776B0()
{
  if (!qword_281221BD0)
  {
    v0 = sub_21DD8BF78();
    if (!v1)
    {
      atomic_store(v0, &qword_281221BD0);
    }
  }
}

unint64_t sub_21DD77714()
{
  result = qword_281221D38;
  if (!qword_281221D38)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_281221D38);
  }

  return result;
}

void sub_21DD77778(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_21DD8C248();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for CrashLog.Type(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CrashLog.Type(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21DD77928()
{
  result = qword_27CE8EDA0;
  if (!qword_27CE8EDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE8EDA0);
  }

  return result;
}

uint64_t sub_21DD7797C()
{
  v0 = sub_21DD8C388();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_21DD779C8(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = sub_21DD72C7C(0x617465625F7369, 0xE700000000000000);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_21DD72CF4(*(a1 + 56) + 32 * v2, v6);
  result = swift_dynamicCast();
  if (result)
  {
    return v5 == 1;
  }

  return result;
}

id sub_21DD77A6C(uint64_t a1, void *a2)
{
  v2 = a2;
  if (a2)
  {
    v3 = [objc_allocWithZone(MEMORY[0x277D66AB8]) init];
    v4 = [v3 allHomeScreenApplicationBundleIdentifiers];

    v5 = sub_21DD8C148();
    sub_21DD76CF8(v5);

    v6 = objc_allocWithZone(MEMORY[0x277CBEB98]);
    v7 = sub_21DD8C138();

    v8 = [v6 initWithArray_];

    v9 = sub_21DD8BFC8();
    v2 = [v8 containsObject_];
  }

  return v2;
}

uint64_t sub_21DD77B88(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_21DD77BDC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_21DD77BF0(a1, a2);
  }

  return a1;
}

uint64_t sub_21DD77BF0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_21DD77C48()
{
  result = qword_281221AA0;
  if (!qword_281221AA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281221AA0);
  }

  return result;
}

void sub_21DD77C94(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  v4 = *(v3 + 24);
  if (v4(v2, v3) == 0x63696E6150 && v5 == 0xE500000000000000)
  {

    goto LABEL_20;
  }

  v7 = sub_21DD8C428();

  if (v7)
  {
LABEL_20:
    v21 = sub_21DD8BFC8();
    v22 = [objc_opt_self() bundleWithIdentifier_];

    if (v22)
    {
      sub_21DD8BC48();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EDC0, &qword_21DD8D1A8);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_21DD8CF30;
      v24 = sub_21DD8BFC8();
      v25 = MGGetStringAnswer();

      if (v25)
      {
        v26 = sub_21DD8BFE8();
        v28 = v27;

        *(v23 + 56) = MEMORY[0x277D837D0];
        *(v23 + 64) = sub_21DD783E4();
        *(v23 + 32) = v26;
        *(v23 + 40) = v28;
        sub_21DD8BFD8();

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v4(v2, v3) == 0x6873617243 && v8 == 0xE500000000000000)
  {
  }

  else
  {
    v10 = sub_21DD8C428();

    if ((v10 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v29 = a1[3];
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v29);
  if ((*(v30 + 64))(v29, v30) == 4541505 && v31 == 0xE300000000000000)
  {
    goto LABEL_31;
  }

  v33 = sub_21DD8C428();

  if (v33)
  {
    goto LABEL_32;
  }

  v34 = a1[3];
  v35 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v34);
  if ((*(v35 + 64))(v34, v35) == 0x61576D6574737953 && v36 == 0xEE00676F64686374)
  {
LABEL_31:

    goto LABEL_32;
  }

  v39 = sub_21DD8C428();

  if (v39)
  {
LABEL_32:
    v37 = sub_21DD8BFC8();
    v38 = [objc_opt_self() bundleWithIdentifier_];

    if (v38)
    {
      sub_21DD8BC48();

      sub_21DD8BFD8();

      return;
    }

    goto LABEL_38;
  }

LABEL_11:
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  v13 = (*(v12 + 72))(v11, v12);
  v15 = v14;
  v16 = sub_21DD8BFC8();
  v17 = [objc_opt_self() bundleWithIdentifier_];

  if (!v17)
  {
LABEL_39:
    __break(1u);
    return;
  }

  if (v15)
  {
    v18 = v15;
  }

  else
  {
    v18 = 0xE700000000000000;
  }

  if (v15)
  {
    v19 = v13;
  }

  else
  {
    v19 = 0x6E776F6E6B6E55;
  }

  sub_21DD8BC48();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EDC0, &qword_21DD8D1A8);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_21DD8CF30;
  *(v20 + 56) = MEMORY[0x277D837D0];
  *(v20 + 64) = sub_21DD783E4();
  *(v20 + 32) = v19;
  *(v20 + 40) = v18;
  sub_21DD8BFD8();
}

void sub_21DD7826C(void *a1, char a2)
{
  v4 = sub_21DD8BFC8();
  v5 = [objc_opt_self() bundleWithIdentifier_];

  if (v5)
  {
    sub_21DD8BC48();

    sub_21DD8BFD8();

    sub_21DD77C94(a1);
    if (a2)
    {
      v6 = "\nTap to create a radar.";

      v7 = 0xD000000000000020;
    }

    else
    {
      v6 = "Diagnostics Reporter header";

      v7 = 0xD000000000000017;
    }

    MEMORY[0x223D46C80](v7, v6 | 0x8000000000000000);
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_21DD783E4()
{
  result = qword_281221AE0;
  if (!qword_281221AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281221AE0);
  }

  return result;
}

void sub_21DD78438(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_21DD8BE18();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_21DD8BFB8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = sub_21DD8BFC8();
  v9 = objc_opt_self();
  v10 = [v9 bundleWithIdentifier_];

  if (v10)
  {
    sub_21DD8BC48();

    v11 = sub_21DD8BFD8();
    v26 = v12;
    v27 = v11;

    sub_21DD77C94(a1);
    v25 = v13;
    v15 = v14;
    sub_21DD8BFA8();
    v16 = sub_21DD8BFC8();
    v17 = [v9 bundleWithIdentifier_];

    sub_21DD8BE08();
    v18 = sub_21DD8C038();
    v20 = v19;
    sub_21DD8BFA8();
    v21 = sub_21DD8BFC8();
    v22 = [v9 0x2783383F8];

    sub_21DD8BE08();
    v23 = sub_21DD8C038();
    *a2 = v25;
    a2[1] = v15;
    a2[2] = v27;
    a2[3] = v26;
    a2[4] = v18;
    a2[5] = v20;
    a2[6] = v23;
    a2[7] = v24;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21DD7871C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21DD8BD58();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (MEMORY[0x28223BE20])();
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v19 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - v11;
  sub_21DD8BD08();
  sub_21DD8BCC8();
  v13 = *(v3 + 8);
  v13(v7, v2);
  sub_21DD8BCA8();
  sub_21DD8BCD8();

  v13(v10, v2);
  v14 = [objc_opt_self() defaultManager];
  sub_21DD8BD28();
  v15 = sub_21DD8BFC8();

  v16 = [v14 fileExistsAtPath_];

  if (v16)
  {
    (*(v3 + 32))(a1, v12, v2);
    v17 = 0;
  }

  else
  {
    v13(v12, v2);
    v17 = 1;
  }

  return (*(v3 + 56))(a1, v17, 1, v2);
}

uint64_t sub_21DD7895C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EDF0, qword_21DD8D1E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v23 - v4;
  v6 = sub_21DD8BDC8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v25 = &v23 - v12;
  v13 = *(a1 + 16);
  v27 = MEMORY[0x277D84F90];
  sub_21DD771A4(0, v13, 0);
  v14 = v27;
  if (v13)
  {
    v15 = a1 + 32;
    v23 = v5;
    v24 = (v7 + 56);
    v16 = (v7 + 32);
    while (1)
    {
      sub_21DD72CF4(v15, v26);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      (*v24)(v5, 0, 1, v6);
      v17 = *v16;
      v18 = v25;
      (*v16)(v25, v5, v6);
      v17(v11, v18, v6);
      v27 = v14;
      v19 = v11;
      v21 = *(v14 + 16);
      v20 = *(v14 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_21DD771A4(v20 > 1, v21 + 1, 1);
        v14 = v27;
      }

      *(v14 + 16) = v21 + 1;
      v17((v14 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v21), v19, v6);
      v15 += 32;
      --v13;
      v11 = v19;
      v5 = v23;
      if (!v13)
      {
        return v14;
      }
    }

    (*v24)(v5, 1, 1, v6);
    sub_21DD71200(v5, &qword_27CE8EDF0, qword_21DD8D1E0);
    return 0;
  }

  return v14;
}

uint64_t sub_21DD78C20(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v40 = sub_21DD8BDC8();
  v7 = *(*(v40 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v40);
  v37 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = &v29 - v12;
  v36 = *(a3 + 16);
  if (v36)
  {
    v13 = 0;
    v33 = (v11 + 8);
    v34 = (v11 + 32);
    v35 = v11 + 16;
    v38 = MEMORY[0x277D84F90];
    v31 = a2;
    v32 = a3;
    v30 = a1;
    while (v13 < *(a3 + 16))
    {
      v14 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v15 = *(v11 + 72);
      v16 = a3;
      v17 = a3 + v14 + v15 * v13;
      v18 = v11;
      v19 = a1;
      v20 = v39;
      (*(v11 + 16))(v39, v17, v40);
      v21 = v20;
      a1 = v19;
      v22 = v19(v21);
      if (v3)
      {
        (*v33)(v39, v40);
        v28 = v38;

        return v28;
      }

      if (v22)
      {
        v23 = *v34;
        (*v34)(v37, v39, v40);
        v24 = v38;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21DD771A4(0, *(v24 + 16) + 1, 1);
          v24 = v41;
        }

        v27 = *(v24 + 16);
        v26 = *(v24 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_21DD771A4(v26 > 1, v27 + 1, 1);
          v24 = v41;
        }

        *(v24 + 16) = v27 + 1;
        v38 = v24;
        result = (v23)(v24 + v14 + v27 * v15, v37, v40);
        a3 = v32;
        a1 = v30;
      }

      else
      {
        result = (*v33)(v39, v40);
        a3 = v16;
      }

      ++v13;
      v11 = v18;
      if (v36 == v13)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v38 = MEMORY[0x277D84F90];
LABEL_14:

    return v38;
  }

  return result;
}

uint64_t sub_21DD78EF0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EDC8, &qword_21DD8D500);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v30 - v6;
  v8 = sub_21DD8BD58();
  v30 = *(v8 - 8);
  v9 = *(v30 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - v13;
  v15 = [objc_opt_self() defaultManager];
  sub_21DD8BD28();
  v16 = sub_21DD8BFC8();

  v17 = [v15 fileExistsAtPath_];

  if (v17)
  {
    (*(v30 + 16))(a2, a1, v8);
    v18 = *(v30 + 56);

    return v18(a2, 0, 1, v8);
  }

  else
  {
    sub_21DD7871C(v7);
    if ((*(v30 + 48))(v7, 1, v8) == 1)
    {
      sub_21DD71200(v7, &qword_27CE8EDC8, &qword_21DD8D500);
      if (qword_281221BD8 != -1)
      {
        swift_once();
      }

      v20 = sub_21DD8BF08();
      __swift_project_value_buffer(v20, qword_281221D58);
      (*(v30 + 16))(v12, a1, v8);
      v21 = sub_21DD8BEE8();
      v22 = sub_21DD8C1D8();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v31 = v24;
        *v23 = 136315394;
        *(v23 + 4) = sub_21DD74A90(0xD000000000000015, 0x800000021DD8E2A0, &v31);
        *(v23 + 12) = 2080;
        v25 = sub_21DD8BD28();
        v27 = v26;
        (*(v30 + 8))(v12, v8);
        v28 = sub_21DD74A90(v25, v27, &v31);

        *(v23 + 14) = v28;
        _os_log_impl(&dword_21DD6F000, v21, v22, "%s: No valid log path found for %s", v23, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223D47710](v24, -1, -1);
        MEMORY[0x223D47710](v23, -1, -1);
      }

      else
      {

        (*(v30 + 8))(v12, v8);
      }

      return (*(v30 + 56))(a2, 1, 1, v8);
    }

    else
    {
      v29 = *(v30 + 32);
      v29(v14, v7, v8);
      v29(a2, v14, v8);
      return (*(v30 + 56))(a2, 0, 1, v8);
    }
  }
}

unint64_t sub_21DD79364()
{
  result = qword_27CE8EDE0;
  if (!qword_27CE8EDE0)
  {
    sub_21DD8BD58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE8EDE0);
  }

  return result;
}

unsigned __int8 *sub_21DD793BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_21DD8C118();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_21DD79948();
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
      result = sub_21DD8C328();
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

uint64_t sub_21DD79948()
{
  v0 = sub_21DD8C128();
  v4 = sub_21DD799C8(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_21DD799C8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_21DD8C088();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_21DD8C258();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_21DD88068(v9, 0);
  v12 = sub_21DD79B20(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_21DD8C088();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_21DD8C328();
LABEL_4:

  return sub_21DD8C088();
}

unint64_t sub_21DD79B20(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_21DD79D40(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_21DD8C0E8();
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
          result = sub_21DD8C328();
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

    result = sub_21DD79D40(v12, a6, a7);
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

    result = sub_21DD8C0C8();
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

uint64_t sub_21DD79D40(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_21DD8C0F8();
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
    v5 = MEMORY[0x223D46CB0](15, a1 >> 16);
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

void sub_21DD79DBC()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 operatingSystemVersionString];

  v2 = v1;
  if (!v1)
  {
    sub_21DD8BFE8();
    v2 = sub_21DD8BFC8();
  }

  v3 = sub_21DD8BFE8();
  v5 = v4;
  if (qword_281221AD0 != -1)
  {
    swift_once();
  }

  v6 = qword_281221D48;
  v7 = sub_21DD8BFC8();
  v8 = [v6 stringForKey_];

  if (!v8)
  {
    goto LABEL_13;
  }

  v9 = sub_21DD8BFE8();
  v11 = v10;

  if (v9 == v3 && v11 == v5)
  {

LABEL_13:

    goto LABEL_14;
  }

  v13 = sub_21DD8C428();

  if ((v13 & 1) == 0)
  {
    v14 = sub_21DD8BFC8();
    [v6 removeObjectForKey_];
  }

LABEL_14:
  v15 = sub_21DD8BFC8();
  [v6 setValue:v2 forKey:v15];
}

BOOL sub_21DD79FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21DD8BDC8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v31 - v14;
  if (qword_281221AD0 != -1)
  {
    swift_once();
  }

  v16 = qword_281221D48;
  v31[1] = a1;
  v31[2] = a2;
  v17 = sub_21DD8BFC8();
  v18 = [v16 arrayForKey_];

  if (v18 && (v19 = sub_21DD8C148(), v18, v20 = sub_21DD7895C(v19), , v20))
  {
  }

  else
  {

    v20 = MEMORY[0x277D84F90];
  }

  sub_21DD8BDB8();
  v21 = v20[2];

  if (v21 >= a3)
  {
    MEMORY[0x28223BE20](v22);
    v31[-4] = a4;
    v31[-3] = v23;
    v31[-2] = v15;

    v24 = sub_21DD78C20(sub_21DD7AB5C, &v31[-6], v20);

    v20 = v24;
  }

  v25 = v20[2];
  if (v25 < a3)
  {
    (*(v9 + 16))(v13, v15, v8);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_21DD86E78(0, v25 + 1, 1, v20);
    }

    v27 = v20[2];
    v26 = v20[3];
    if (v27 >= v26 >> 1)
    {
      v20 = sub_21DD86E78(v26 > 1, v27 + 1, 1, v20);
    }

    v20[2] = v27 + 1;
    (*(v9 + 32))(v20 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v27, v13, v8);
    v28 = sub_21DD8C138();

    v29 = sub_21DD8BFC8();
    [v16 setValue:v28 forKey:v29];
  }

  else
  {
  }

  (*(v9 + 8))(v15, v8);
  return v25 >= a3;
}

unsigned __int8 *sub_21DD7A350(uint64_t a1, unint64_t a2)
{
  if (qword_281221AD0 != -1)
  {
    swift_once();
  }

  v4 = qword_281221D48;
  v5 = sub_21DD8BFC8();
  v6 = [v4 objectForKey_];

  if (v6)
  {
    sub_21DD8C268();
    swift_unknownObjectRelease();
  }

  else
  {
    v44 = 0u;
    v45 = 0u;
  }

  v46 = v44;
  v47 = v45;
  sub_21DD7AAEC(&v46, &v44);
  v7 = *(&v45 + 1);
  sub_21DD71200(&v44, &qword_27CE8ED98, qword_21DD8D098);
  if (v7)
  {
    if (qword_281221BD8 != -1)
    {
      swift_once();
    }

    v8 = sub_21DD8BF08();
    __swift_project_value_buffer(v8, qword_281221D58);

    v9 = sub_21DD8BEE8();
    v10 = sub_21DD8C1E8();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *&v44 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_21DD74A90(a1, a2, &v44);
      _os_log_impl(&dword_21DD6F000, v9, v10, "Using defaults value for %s.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x223D47710](v12, -1, -1);
      MEMORY[0x223D47710](v11, -1, -1);
    }
  }

  else
  {
    v13 = [objc_opt_self() sharedInstance];
    v14 = sub_21DD8BFC8();
    v15 = [v13 getTaskingKey_];

    if (v15)
    {
      sub_21DD8C268();
      swift_unknownObjectRelease();
      sub_21DD71200(&v46, &qword_27CE8ED98, qword_21DD8D098);
    }

    else
    {
      sub_21DD71200(&v46, &qword_27CE8ED98, qword_21DD8D098);
      v44 = 0u;
      v45 = 0u;
    }

    v46 = v44;
    v47 = v45;
  }

  sub_21DD7AAEC(&v46, &v44);
  if (!*(&v45 + 1))
  {
    sub_21DD71200(&v46, &qword_27CE8ED98, qword_21DD8D098);
    v25 = &v44;
LABEL_39:
    sub_21DD71200(v25, &qword_27CE8ED98, qword_21DD8D098);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    v25 = &v46;
    goto LABEL_39;
  }

  result = v42;
  v17 = HIBYTE(v43) & 0xF;
  v18 = v42 & 0xFFFFFFFFFFFFLL;
  if ((v43 & 0x2000000000000000) != 0)
  {
    v19 = HIBYTE(v43) & 0xF;
  }

  else
  {
    v19 = v42 & 0xFFFFFFFFFFFFLL;
  }

  if (!v19)
  {
    sub_21DD71200(&v46, &qword_27CE8ED98, qword_21DD8D098);

    return 0;
  }

  if ((v43 & 0x1000000000000000) == 0)
  {
    if ((v43 & 0x2000000000000000) != 0)
    {
      *&v44 = v42;
      *(&v44 + 1) = v43 & 0xFFFFFFFFFFFFFFLL;
      if (v42 == 43)
      {
        if (v17)
        {
          if (--v17)
          {
            v21 = 0;
            v32 = &v44 + 1;
            while (1)
            {
              v33 = *v32 - 48;
              if (v33 > 9)
              {
                break;
              }

              v34 = 10 * v21;
              if ((v21 * 10) >> 64 != (10 * v21) >> 63)
              {
                break;
              }

              v21 = v34 + v33;
              if (__OFADD__(v34, v33))
              {
                break;
              }

              ++v32;
              if (!--v17)
              {
                goto LABEL_83;
              }
            }
          }

          goto LABEL_82;
        }

LABEL_93:
        __break(1u);
        return result;
      }

      if (v42 != 45)
      {
        if (v17)
        {
          v21 = 0;
          v37 = &v44;
          while (1)
          {
            v38 = *v37 - 48;
            if (v38 > 9)
            {
              break;
            }

            v39 = 10 * v21;
            if ((v21 * 10) >> 64 != (10 * v21) >> 63)
            {
              break;
            }

            v21 = v39 + v38;
            if (__OFADD__(v39, v38))
            {
              break;
            }

            ++v37;
            if (!--v17)
            {
              goto LABEL_83;
            }
          }
        }

        goto LABEL_82;
      }

      if (v17)
      {
        if (--v17)
        {
          v21 = 0;
          v26 = &v44 + 1;
          while (1)
          {
            v27 = *v26 - 48;
            if (v27 > 9)
            {
              break;
            }

            v28 = 10 * v21;
            if ((v21 * 10) >> 64 != (10 * v21) >> 63)
            {
              break;
            }

            v21 = v28 - v27;
            if (__OFSUB__(v28, v27))
            {
              break;
            }

            ++v26;
            if (!--v17)
            {
              goto LABEL_83;
            }
          }
        }

        goto LABEL_82;
      }
    }

    else
    {
      if ((v42 & 0x1000000000000000) != 0)
      {
        result = ((v43 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_21DD8C328();
      }

      v20 = *result;
      if (v20 == 43)
      {
        if (v18 >= 1)
        {
          v17 = v18 - 1;
          if (v18 != 1)
          {
            v21 = 0;
            if (result)
            {
              v29 = result + 1;
              while (1)
              {
                v30 = *v29 - 48;
                if (v30 > 9)
                {
                  goto LABEL_82;
                }

                v31 = 10 * v21;
                if ((v21 * 10) >> 64 != (10 * v21) >> 63)
                {
                  goto LABEL_82;
                }

                v21 = v31 + v30;
                if (__OFADD__(v31, v30))
                {
                  goto LABEL_82;
                }

                ++v29;
                if (!--v17)
                {
                  goto LABEL_83;
                }
              }
            }

            goto LABEL_74;
          }

          goto LABEL_82;
        }

        goto LABEL_92;
      }

      if (v20 != 45)
      {
        if (v18)
        {
          v21 = 0;
          if (result)
          {
            while (1)
            {
              v35 = *result - 48;
              if (v35 > 9)
              {
                goto LABEL_82;
              }

              v36 = 10 * v21;
              if ((v21 * 10) >> 64 != (10 * v21) >> 63)
              {
                goto LABEL_82;
              }

              v21 = v36 + v35;
              if (__OFADD__(v36, v35))
              {
                goto LABEL_82;
              }

              ++result;
              if (!--v18)
              {
                goto LABEL_74;
              }
            }
          }

          goto LABEL_74;
        }

LABEL_82:
        v21 = 0;
        LOBYTE(v17) = 1;
        goto LABEL_83;
      }

      if (v18 >= 1)
      {
        v17 = v18 - 1;
        if (v18 != 1)
        {
          v21 = 0;
          if (result)
          {
            v22 = result + 1;
            while (1)
            {
              v23 = *v22 - 48;
              if (v23 > 9)
              {
                goto LABEL_82;
              }

              v24 = 10 * v21;
              if ((v21 * 10) >> 64 != (10 * v21) >> 63)
              {
                goto LABEL_82;
              }

              v21 = v24 - v23;
              if (__OFSUB__(v24, v23))
              {
                goto LABEL_82;
              }

              ++v22;
              if (!--v17)
              {
                goto LABEL_83;
              }
            }
          }

LABEL_74:
          LOBYTE(v17) = 0;
LABEL_83:
          v40 = v17;
          goto LABEL_84;
        }

        goto LABEL_82;
      }

      __break(1u);
    }

    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v21 = sub_21DD793BC(v42, v43, 10);
  v40 = v41;
LABEL_84:
  sub_21DD71200(&v46, &qword_27CE8ED98, qword_21DD8D098);

  if (v40)
  {
    return 0;
  }

  else
  {
    return v21;
  }
}

id sub_21DD7A99C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EDE8, &unk_21DD8D510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DD8CF30;
  v5 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_21DD8BFE8();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v6;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  sub_21DD728E4(inited);
  swift_setDeallocating();
  sub_21DD71200(inited + 32, &unk_27CE8EEF0, &unk_21DD8D740);
  v7 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v8 = sub_21DD8BFC8();
  v9 = sub_21DD8BF58();

  v10 = [v7 initWithDomain:v8 code:1 userInfo:v9];

  return v10;
}

uint64_t sub_21DD7AAEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8ED98, qword_21DD8D098);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DD7AD54()
{
  v1 = OBJC_IVAR___ObjCDiagnosticsReporterLaunchOptions_files_to_attach;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_21DD7AD9C(uint64_t a1)
{
  v3 = OBJC_IVAR___ObjCDiagnosticsReporterLaunchOptions_files_to_attach;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_21DD7ADF4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___ObjCDiagnosticsReporterLaunchOptions_files_to_attach;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

id sub_21DD7AF4C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  swift_beginAccess();
  if (v3[1])
  {
    v4 = *v3;

    v5 = sub_21DD8BFC8();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_21DD7AFE0(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  return v4;
}

uint64_t sub_21DD7B040(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = v6[1];
  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_21DD7B09C(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (*a2 + *a5);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v6;
  v7[1] = v5;
}

id DiagnosticsReporterLaunchOptions.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DiagnosticsReporterLaunchOptions.init()()
{
  *&v0[OBJC_IVAR___ObjCDiagnosticsReporterLaunchOptions_files_to_attach] = MEMORY[0x277D84F90];
  v1 = &v0[OBJC_IVAR___ObjCDiagnosticsReporterLaunchOptions_log_path];
  *v1 = 0;
  *(v1 + 1) = 0;
  v2 = &v0[OBJC_IVAR___ObjCDiagnosticsReporterLaunchOptions_panic_string];
  v3 = type metadata accessor for DiagnosticsReporterLaunchOptions();
  *v2 = 0;
  *(v2 + 1) = 0;
  v5.receiver = v0;
  v5.super_class = v3;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_21DD7B220()
{
  v1 = *v0;
  sub_21DD8C458();
  MEMORY[0x223D47040](v1);
  return sub_21DD8C478();
}

uint64_t sub_21DD7B294()
{
  v1 = *v0;
  sub_21DD8C458();
  MEMORY[0x223D47040](v1);
  return sub_21DD8C478();
}

uint64_t sub_21DD7B2D8()
{
  v1 = 0x687461705F676F6CLL;
  if (*v0 != 1)
  {
    v1 = 0x74735F63696E6170;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F745F73656C6966;
  }
}

uint64_t sub_21DD7B348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21DD7C0EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21DD7B37C(uint64_t a1)
{
  v2 = sub_21DD7B6CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DD7B3B8(uint64_t a1)
{
  v2 = sub_21DD7B6CC();

  return MEMORY[0x2821FE720](a1, v2);
}

id DiagnosticsReporterLaunchOptions.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DiagnosticsReporterLaunchOptions();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21DD7B428(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EE10, " ");
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DD7B6CC();
  sub_21DD8C4A8();
  v11 = OBJC_IVAR___ObjCDiagnosticsReporterLaunchOptions_files_to_attach;
  swift_beginAccess();
  v21 = *(v3 + v11);
  v20 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EE20, &qword_21DD8D268);
  sub_21DD7BB00(&qword_27CE8EE28);
  sub_21DD8C408();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = (v3 + OBJC_IVAR___ObjCDiagnosticsReporterLaunchOptions_log_path);
  swift_beginAccess();
  v14 = *v13;
  v15 = v13[1];
  v20 = 1;

  sub_21DD8C3F8();

  v16 = (v3 + OBJC_IVAR___ObjCDiagnosticsReporterLaunchOptions_panic_string);
  swift_beginAccess();
  v17 = *v16;
  v18 = v16[1];
  v19[7] = 2;

  sub_21DD8C3F8();
  (*(v6 + 8))(v9, v5);
}

unint64_t sub_21DD7B6CC()
{
  result = qword_27CE8EE18;
  if (!qword_27CE8EE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE8EE18);
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

char *DiagnosticsReporterLaunchOptions.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EE30, &qword_21DD8D270);
  v32 = *(v5 - 8);
  v33 = v5;
  v6 = *(v32 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - v7;
  v34 = OBJC_IVAR___ObjCDiagnosticsReporterLaunchOptions_files_to_attach;
  *&v1[OBJC_IVAR___ObjCDiagnosticsReporterLaunchOptions_files_to_attach] = MEMORY[0x277D84F90];
  v9 = &v1[OBJC_IVAR___ObjCDiagnosticsReporterLaunchOptions_log_path];
  *v9 = 0;
  v9[1] = 0;
  v10 = &v1[OBJC_IVAR___ObjCDiagnosticsReporterLaunchOptions_panic_string];
  *v10 = 0;
  v10[1] = 0;
  v39 = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DD7B6CC();
  sub_21DD8C498();
  if (v2)
  {
    v12 = v34;
    __swift_destroy_boxed_opaque_existential_1(a1);
    v22 = *&v1[v12];

    v23 = v9[1];

    v24 = v39[1];

    type metadata accessor for DiagnosticsReporterLaunchOptions();
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EE20, &qword_21DD8D268);
    v38 = 0;
    sub_21DD7BB00(&qword_27CE8EE38);
    v13 = v8;
    sub_21DD8C3E8();
    v14 = v37;
    v15 = v34;
    swift_beginAccess();
    v16 = *&v3[v15];
    *&v3[v15] = v14;

    LOBYTE(v37) = 1;
    v17 = v33;
    v18 = sub_21DD8C398();
    v20 = v19;
    swift_beginAccess();
    v21 = v9[1];
    *v9 = v18;
    v9[1] = v20;

    v36 = 2;
    v26 = sub_21DD8C398();
    v28 = v27;
    v29 = v39;
    swift_beginAccess();
    v30 = v29[1];
    *v29 = v26;
    v29[1] = v28;

    v31 = type metadata accessor for DiagnosticsReporterLaunchOptions();
    v35.receiver = v3;
    v35.super_class = v31;
    v3 = objc_msgSendSuper2(&v35, sel_init);
    (*(v32 + 8))(v13, v17);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

uint64_t sub_21DD7BB00(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE8EE20, &qword_21DD8D268);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_21DD7BB6C@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for DiagnosticsReporterLaunchOptions());
  result = DiagnosticsReporterLaunchOptions.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t keypath_get_2Tm@<X0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;
}

uint64_t getEnumTagSinglePayload for DiagnosticsReporterLaunchOptions.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DiagnosticsReporterLaunchOptions.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21DD7BFE8()
{
  result = qword_27CE8EE40;
  if (!qword_27CE8EE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE8EE40);
  }

  return result;
}

unint64_t sub_21DD7C040()
{
  result = qword_27CE8EE48;
  if (!qword_27CE8EE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE8EE48);
  }

  return result;
}

unint64_t sub_21DD7C098()
{
  result = qword_27CE8EE50;
  if (!qword_27CE8EE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE8EE50);
  }

  return result;
}

uint64_t sub_21DD7C0EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F745F73656C6966 && a2 == 0xEF6863617474615FLL;
  if (v4 || (sub_21DD8C428() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x687461705F676F6CLL && a2 == 0xE800000000000000 || (sub_21DD8C428() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74735F63696E6170 && a2 == 0xEC000000676E6972)
  {

    return 2;
  }

  else
  {
    v6 = sub_21DD8C428();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_21DD7C2AC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_21DD8BF08();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_21DD8BEF8();
}

uint64_t Array.appendIfNotNil(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = sub_21DD8C248();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v18 - v8;
  v10 = *(v3 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v7);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v18 - v15;
  (*(v5 + 16))(v9, a1, v4);
  if ((*(v10 + 48))(v9, 1, v3) == 1)
  {
    return (*(v5 + 8))(v9, v4);
  }

  (*(v10 + 32))(v16, v9, v3);
  (*(v10 + 16))(v14, v16, v3);
  sub_21DD8C158();
  return (*(v10 + 8))(v16, v3);
}

id sub_21DD7C53C()
{
  result = [objc_allocWithZone(type metadata accessor for AlertDelegate()) init];
  qword_281221D50 = result;
  return result;
}

char *sub_21DD7C56C()
{
  v1 = OBJC_IVAR____TtC27DiagnosticsReporterServices13AlertDelegate_userNotificationCenter;
  v2 = objc_allocWithZone(MEMORY[0x277CE2028]);
  v3 = sub_21DD8BFC8();
  v4 = [v2 initWithBundleIdentifier_];

  *&v0[v1] = v4;
  v10.receiver = v0;
  v10.super_class = type metadata accessor for AlertDelegate();
  v5 = objc_msgSendSuper2(&v10, sel_init);
  v6 = OBJC_IVAR____TtC27DiagnosticsReporterServices13AlertDelegate_userNotificationCenter;
  v7 = *&v5[OBJC_IVAR____TtC27DiagnosticsReporterServices13AlertDelegate_userNotificationCenter];
  v8 = v5;
  [v7 setDelegate_];
  [*&v5[v6] setWantsNotificationResponsesDelivered];

  return v8;
}

void sub_21DD7C674(char a1)
{
  v2 = v1;
  v4 = sub_21DD8BFC8();
  v5 = sub_21DD8BFC8();
  v6 = objc_opt_self();
  v7 = [v6 actionWithIdentifier:v4 title:v5 options:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE8EF40, &qword_21DD8D560);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_21DD8D440;
  *(v8 + 32) = v7;
  v9 = v7;
  if (a1)
  {
    v10 = sub_21DD8BFC8();
    v11 = sub_21DD8BFC8();
    v12 = [v6 actionWithIdentifier:v10 title:v11 options:0];

    sub_21DD80AB0(0, 0, v12);
  }

  v13 = sub_21DD8BFC8();
  sub_21DD834B4(0, &qword_281221AC8, 0x277CE1F80);
  v14 = sub_21DD8C138();

  v15 = sub_21DD8C138();
  v16 = [objc_opt_self() categoryWithIdentifier:v13 actions:v14 intentIdentifiers:v15 options:0];

  v17 = *(v2 + OBJC_IVAR____TtC27DiagnosticsReporterServices13AlertDelegate_userNotificationCenter);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DD8D440;
  *(inited + 32) = v16;
  v19 = v16;
  sub_21DD80B9C(inited);
  swift_setDeallocating();
  v20 = *(inited + 16);
  swift_arrayDestroy();
  sub_21DD834B4(0, &qword_281221AC0, 0x277CE1F98);
  sub_21DD834FC();
  v21 = sub_21DD8C1A8();

  [v17 setNotificationCategories_];
}

uint64_t sub_21DD7C970(uint64_t a1, uint64_t a2)
{
  v3[154] = v2;
  v3[153] = a2;
  v3[152] = a1;
  v4 = sub_21DD8BDF8();
  v3[155] = v4;
  v5 = *(v4 - 8);
  v3[156] = v5;
  v6 = *(v5 + 64) + 15;
  v3[157] = swift_task_alloc();
  v7 = sub_21DD8BD58();
  v3[158] = v7;
  v8 = *(v7 - 8);
  v3[159] = v8;
  v9 = *(v8 + 64) + 15;
  v3[160] = swift_task_alloc();
  v3[161] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EDC8, &qword_21DD8D500) - 8) + 64) + 15;
  v3[162] = swift_task_alloc();
  v3[163] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21DD7CAE4, 0, 0);
}

uint64_t sub_21DD7CAE4()
{
  v1 = *(v0[154] + OBJC_IVAR____TtC27DiagnosticsReporterServices13AlertDelegate_userNotificationCenter);
  v0[164] = v1;
  v0[10] = v0;
  v0[15] = v0 + 169;
  v0[11] = sub_21DD7CC14;
  v2 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EF08, &qword_21DD8D528);
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_21DD7E3CC;
  v0[21] = &block_descriptor;
  v0[22] = v2;
  [v1 requestAuthorizationWithOptions:6 completionHandler:v0 + 18];

  return MEMORY[0x282200938](v0 + 10);
}

uint64_t sub_21DD7CC14()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 1320) = v2;
  if (v2)
  {
    v3 = sub_21DD7DFCC;
  }

  else
  {
    v3 = sub_21DD7CD24;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21DD7CD24()
{
  if (*(v0 + 1352) == 1)
  {
    v1 = **(v0 + 1224);
    if (v1 && *(v1 + 16))
    {
      v2 = *(v0 + 1304);
      v3 = *(v0 + 1272);
      v4 = *(v0 + 1264);
      *(v0 + 1208) = *(v1 + 32);
      v5 = sub_21DD8C418();
      MEMORY[0x223D46C80](v5);

      sub_21DD8BD38();

      v6 = (*(v3 + 48))(v2, 1, v4) != 1;
    }

    else
    {
      (*(*(v0 + 1272) + 56))(*(v0 + 1304), 1, 1, *(v0 + 1264));
      v6 = 0;
    }

    v18 = *(v0 + 1232);
    v19 = *(v0 + 1216);
    sub_21DD7C674(v6);
    v20 = [objc_allocWithZone(MEMORY[0x277CE1F60]) init];
    *(v0 + 1328) = v20;
    sub_21DD7826C(v19, v6);

    v21 = sub_21DD8BFC8();

    [v20 setTitle_];

    v22 = sub_21DD8BFC8();

    [v20 setBody_];

    v23 = [objc_opt_self() defaultSound];
    [v20 setSound_];

    v24 = sub_21DD8BFC8();
    [v20 setCategoryIdentifier_];

    sub_21DD80720(MEMORY[0x277D84F90]);
    v25 = sub_21DD8BF58();

    [v20 setUserInfo_];

    *(v0 + 1112) = 0x79726F6765746163;
    *(v0 + 1120) = 0xE800000000000000;
    v26 = MEMORY[0x277D837D0];
    sub_21DD8C2A8();
    v27 = v19[3];
    v28 = v19[4];
    __swift_project_boxed_opaque_existential_1(v19, v27);
    (*(v28 + 24))(v27, v28);
    v29 = sub_21DD8C058();
    v31 = v30;

    *(v0 + 896) = v26;
    *(v0 + 872) = v29;
    *(v0 + 880) = v31;
    v32 = [v20 userInfo];
    sub_21DD8BF68();

    if (*(v0 + 896))
    {
      sub_21DD74E40((v0 + 872), (v0 + 1000));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_21DD7FEF0((v0 + 1000), v0 + 312, isUniquelyReferenced_nonNull_native);
    }

    else
    {
      sub_21DD71200(v0 + 872, &qword_27CE8ED98, qword_21DD8D098);
      sub_21DD7F74C(v0 + 312, (v0 + 712));
      sub_21DD71200(v0 + 712, &qword_27CE8ED98, qword_21DD8D098);
    }

    sub_21DD833D8(v0 + 312);
    v34 = *(v0 + 1216);
    v35 = sub_21DD8BF58();

    [v20 setUserInfo_];

    v36 = v19[3];
    v37 = v19[4];
    __swift_project_boxed_opaque_existential_1(v34, v36);
    v38 = (*(v37 + 72))(v36, v37);
    if (v39)
    {
      v40 = v38;
      v41 = v39;
      *(v0 + 1176) = 0x4E79616C70736964;
      *(v0 + 1184) = 0xEB00000000656D61;
      sub_21DD8C2A8();
      *(v0 + 1056) = v26;
      *(v0 + 1032) = v40;
      *(v0 + 1040) = v41;
      v42 = [v20 userInfo];
      sub_21DD8BF68();

      if (*(v0 + 1056))
      {
        sub_21DD74E40((v0 + 1032), (v0 + 552));
        v43 = swift_isUniquelyReferenced_nonNull_native();
        sub_21DD7FEF0((v0 + 552), v0 + 392, v43);
      }

      else
      {
        sub_21DD71200(v0 + 1032, &qword_27CE8ED98, qword_21DD8D098);
        sub_21DD7F74C(v0 + 392, (v0 + 1064));
        sub_21DD71200(v0 + 1064, &qword_27CE8ED98, qword_21DD8D098);
      }

      sub_21DD833D8(v0 + 392);
      v44 = sub_21DD8BF58();

      [v20 setUserInfo_];
    }

    v46 = v19[3];
    v45 = v19[4];
    __swift_project_boxed_opaque_existential_1(*(v0 + 1216), v46);
    v47 = (*(v45 + 32))(v46, v45);
    if (*(v47 + 16))
    {
      v48 = *(v0 + 1288);
      v49 = *(v0 + 1272);
      v50 = *(v0 + 1264);
      (*(v49 + 16))(v48, v47 + ((*(v49 + 80) + 32) & ~*(v49 + 80)), v50);

      v51 = sub_21DD8BD28();
      v53 = v52;
      (*(v49 + 8))(v48, v50);
      *(v0 + 1096) = 0x656D686361747461;
      *(v0 + 1104) = 0xEA0000000000746ELL;
      v54 = MEMORY[0x277D837D0];
      sub_21DD8C2A8();
      *(v0 + 672) = v54;
      *(v0 + 648) = v51;
      *(v0 + 656) = v53;
      v55 = [v20 userInfo];
      sub_21DD8BF68();

      if (*(v0 + 672))
      {
        sub_21DD74E40((v0 + 648), (v0 + 968));
        v56 = swift_isUniquelyReferenced_nonNull_native();
        sub_21DD7FEF0((v0 + 968), v0 + 352, v56);
      }

      else
      {
        sub_21DD71200(v0 + 648, &qword_27CE8ED98, qword_21DD8D098);
        sub_21DD7F74C(v0 + 352, (v0 + 616));
        sub_21DD71200(v0 + 616, &qword_27CE8ED98, qword_21DD8D098);
      }

      sub_21DD833D8(v0 + 352);
      v57 = sub_21DD8BF58();

      [v20 setUserInfo_];
    }

    else
    {
    }

    v58 = *(v0 + 1296);
    v59 = *(v0 + 1272);
    v60 = *(v0 + 1264);
    sub_21DD83564(*(v0 + 1304), v58, &qword_27CE8EDC8, &qword_21DD8D500);
    v61 = (*(v59 + 48))(v58, 1, v60);
    v62 = *(v0 + 1296);
    if (v61 == 1)
    {
      sub_21DD71200(*(v0 + 1296), &qword_27CE8EDC8, &qword_21DD8D500);
    }

    else
    {
      v63 = *(v0 + 1280);
      v64 = *(v0 + 1272);
      v65 = *(v0 + 1264);
      (*(v64 + 32))(v63, *(v0 + 1296), v65);
      *(v0 + 1160) = 0x4C52557261646172;
      *(v0 + 1168) = 0xE800000000000000;
      v66 = MEMORY[0x277D837D0];
      sub_21DD8C2A8();
      v67 = sub_21DD8BC88();
      *(v0 + 928) = v66;
      *(v0 + 904) = v67;
      *(v0 + 912) = v68;
      v69 = [v20 userInfo];
      sub_21DD8BF68();

      sub_21DD74E40((v0 + 904), (v0 + 936));
      v70 = swift_isUniquelyReferenced_nonNull_native();
      sub_21DD7FEF0((v0 + 936), v0 + 432, v70);
      sub_21DD833D8(v0 + 432);
      v71 = sub_21DD8BF58();

      [v20 setUserInfo_];

      (*(v64 + 8))(v63, v65);
    }

    v72 = *(v0 + 1224);
    v73 = v72[2];
    if (v73)
    {
      v74 = v72[4];
      v96 = v72[3];
      v97 = v72[5];
      v75 = v72[1];
      *(v0 + 1128) = 0xD000000000000012;
      *(v0 + 1136) = 0x800000021DD8E5B0;
      v76 = MEMORY[0x277D837D0];
      sub_21DD8C2A8();
      *(v0 + 608) = v76;
      *(v0 + 584) = v75;
      *(v0 + 592) = v73;

      v77 = [v20 userInfo];
      sub_21DD8BF68();

      sub_21DD74E40((v0 + 584), (v0 + 840));
      v78 = swift_isUniquelyReferenced_nonNull_native();
      sub_21DD7FEF0((v0 + 840), v0 + 272, v78);
      sub_21DD833D8(v0 + 272);
      v79 = sub_21DD8BF58();

      [v20 setUserInfo_];

      *(v0 + 1192) = 0xD000000000000015;
      *(v0 + 1200) = 0x800000021DD8E5D0;
      sub_21DD8C2A8();
      *(v0 + 704) = v76;
      *(v0 + 680) = v96;
      *(v0 + 688) = v74;

      v80 = [v20 userInfo];
      sub_21DD8BF68();

      sub_21DD74E40((v0 + 680), (v0 + 808));
      v81 = swift_isUniquelyReferenced_nonNull_native();
      sub_21DD7FEF0((v0 + 808), v0 + 512, v81);
      sub_21DD833D8(v0 + 512);
      v82 = sub_21DD8BF58();

      [v20 setUserInfo_];

      *(v0 + 1144) = 0xD000000000000010;
      *(v0 + 1152) = 0x800000021DD8E5F0;
      sub_21DD8C2A8();
      *(v0 + 768) = MEMORY[0x277D83E88];
      *(v0 + 744) = v97;
      v83 = [v20 userInfo];
      sub_21DD8BF68();

      sub_21DD74E40((v0 + 744), (v0 + 776));
      v84 = swift_isUniquelyReferenced_nonNull_native();
      sub_21DD7FEF0((v0 + 776), v0 + 472, v84);
      sub_21DD833D8(v0 + 472);
      v85 = sub_21DD8BF58();

      [v20 setUserInfo_];
    }

    v98 = *(v0 + 1312);
    v86 = *(v0 + 1256);
    v87 = *(v0 + 1248);
    v88 = *(v0 + 1240);
    [v20 setShouldBackgroundDefaultAction_];
    [v20 setShouldAuthenticateDefaultAction_];
    sub_21DD8C2D8();

    sub_21DD8BDE8();
    v89 = sub_21DD8BDD8();
    v91 = v90;
    (*(v87 + 8))(v86, v88);
    MEMORY[0x223D46C80](v89, v91);

    v92 = v20;
    v93 = sub_21DD8BFC8();

    v94 = [objc_opt_self() requestWithIdentifier:v93 content:v92 trigger:0];
    *(v0 + 1336) = v94;

    *(v0 + 16) = v0;
    *(v0 + 24) = sub_21DD7DD44;
    v95 = swift_continuation_init();
    *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EF20, &qword_21DD8D540);
    *(v0 + 208) = MEMORY[0x277D85DD0];
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_21DD7E498;
    *(v0 + 232) = &block_descriptor_26;
    *(v0 + 240) = v95;
    [v98 addNotificationRequest:v94 withCompletionHandler:v0 + 208];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    if (qword_281221BD8 != -1)
    {
      swift_once();
    }

    v7 = sub_21DD8BF08();
    __swift_project_value_buffer(v7, qword_281221D58);
    v8 = sub_21DD8BEE8();
    v9 = sub_21DD8C1E8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_21DD6F000, v8, v9, "Notifications were not authorized", v10, 2u);
      MEMORY[0x223D47710](v10, -1, -1);
    }

    v11 = *(v0 + 1304);
    v12 = *(v0 + 1296);
    v13 = *(v0 + 1288);
    v14 = *(v0 + 1280);
    v15 = *(v0 + 1256);

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_21DD7DD44()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 1344) = v2;
  if (v2)
  {
    v3 = sub_21DD7E1B0;
  }

  else
  {
    v3 = sub_21DD7DE54;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21DD7DE54()
{
  if (qword_281221BD8 != -1)
  {
    swift_once();
  }

  v1 = sub_21DD8BF08();
  __swift_project_value_buffer(v1, qword_281221D58);
  v2 = sub_21DD8BEE8();
  v3 = sub_21DD8C1E8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21DD6F000, v2, v3, "Successfully showed notification", v4, 2u);
    MEMORY[0x223D47710](v4, -1, -1);
  }

  v5 = *(v0 + 1336);
  v6 = *(v0 + 1304);

  sub_21DD71200(v6, &qword_27CE8EDC8, &qword_21DD8D500);
  v7 = *(v0 + 1304);
  v8 = *(v0 + 1296);
  v9 = *(v0 + 1288);
  v10 = *(v0 + 1280);
  v11 = *(v0 + 1256);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_21DD7DFCC()
{
  v1 = v0[165];
  swift_willThrow();
  if (qword_281221BD8 != -1)
  {
    swift_once();
  }

  v2 = v0[165];
  v3 = sub_21DD8BF08();
  __swift_project_value_buffer(v3, qword_281221D58);
  v4 = v2;
  v5 = sub_21DD8BEE8();
  v6 = sub_21DD8C1E8();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[165];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_21DD6F000, v5, v6, "Error requesting notification authorization: %@", v9, 0xCu);
    sub_21DD71200(v10, &unk_27CE8EF10, &unk_21DD8D530);
    MEMORY[0x223D47710](v10, -1, -1);
    MEMORY[0x223D47710](v9, -1, -1);
  }

  else
  {
  }

  v13 = v0[163];
  v14 = v0[162];
  v15 = v0[161];
  v16 = v0[160];
  v17 = v0[157];

  v18 = v0[1];

  return v18();
}

uint64_t sub_21DD7E1B0()
{
  v1 = v0[168];
  swift_willThrow();
  if (qword_281221BD8 != -1)
  {
    swift_once();
  }

  v2 = v0[168];
  v3 = sub_21DD8BF08();
  __swift_project_value_buffer(v3, qword_281221D58);
  v4 = v2;
  v5 = sub_21DD8BEE8();
  v6 = sub_21DD8C1D8();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[168];
  v9 = v0[167];
  v10 = v0[166];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v8;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_21DD6F000, v5, v6, "Failed to show UNUserNotification. Error: %@", v11, 0xCu);
    sub_21DD71200(v12, &unk_27CE8EF10, &unk_21DD8D530);
    MEMORY[0x223D47710](v12, -1, -1);
    MEMORY[0x223D47710](v11, -1, -1);
  }

  else
  {
  }

  sub_21DD71200(v0[163], &qword_27CE8EDC8, &qword_21DD8D500);
  v15 = v0[163];
  v16 = v0[162];
  v17 = v0[161];
  v18 = v0[160];
  v19 = v0[157];

  v20 = v0[1];

  return v20();
}

uint64_t sub_21DD7E3CC(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EF30, &qword_21DD8D550);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_21DD7E498(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EF30, &qword_21DD8D550);
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

id sub_21DD7E544()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AlertDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21DD7E5AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 notification];
  v4 = [v3 request];

  v5 = [v4 content];
  v6 = [v5 userInfo];

  v7 = sub_21DD8BF68();
  sub_21DD8C2A8();
  if (*(v7 + 16) && (v8 = sub_21DD7F480(v12), (v9 & 1) != 0))
  {
    sub_21DD72CF4(*(v7 + 56) + 32 * v8, v13);
    sub_21DD833D8(v12);

    if (swift_dynamicCast())
    {
      sub_21DD8BD38();
    }
  }

  else
  {

    sub_21DD833D8(v12);
  }

  v11 = sub_21DD8BD58();
  return (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
}

uint64_t sub_21DD7E900(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_21DD7E9E8;

  return (sub_21DD82390)(v9);
}

uint64_t sub_21DD7E9E8()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);
  v5 = *(*v0 + 16);
  v8 = *v0;

  v2[2](v2);
  _Block_release(v2);
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_21DD7EB58()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_21DD74F54;

  return sub_21DD7E900(v2, v3, v5, v4);
}

uint64_t sub_21DD7EC18(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_21DD7EC78(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_21DD83BD8;

  return v7();
}

uint64_t sub_21DD7ED60()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_21DD83BD8;

  return sub_21DD7EC78(v2, v3, v5);
}

uint64_t sub_21DD7EE20(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_21DD74F54;

  return v8();
}

uint64_t objectdestroy_4Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21DD7EF48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21DD83BD8;

  return sub_21DD7EE20(a1, v4, v5, v7);
}

uint64_t sub_21DD7F014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE8EED0, &unk_21DD8D6B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_21DD83564(a3, v25 - v11, &unk_27CE8EED0, &unk_21DD8D6B0);
  v13 = sub_21DD8C198();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_21DD71200(v12, &unk_27CE8EED0, &unk_21DD8D6B0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_21DD8C188();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_21DD8C178();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_21DD8C068() + 32;
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

    sub_21DD71200(a3, &unk_27CE8EED0, &unk_21DD8D6B0);

    return v23;
  }

LABEL_8:
  sub_21DD71200(a3, &unk_27CE8EED0, &unk_21DD8D6B0);
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

uint64_t sub_21DD7F310(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21DD83BD8;

  return sub_21DD732F8(a1, v5);
}

uint64_t sub_21DD7F3C8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21DD74F54;

  return sub_21DD732F8(a1, v5);
}

unint64_t sub_21DD7F480(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_21DD8C288();

  return sub_21DD7F578(a1, v5);
}

unint64_t sub_21DD7F4C4(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_21DD8C458();
  type metadata accessor for CFString();
  sub_21DD835CC(&qword_27CE8EF68, type metadata accessor for CFString);
  sub_21DD8BEC8();
  v4 = sub_21DD8C478();

  return sub_21DD7F640(a1, v4);
}

unint64_t sub_21DD7F578(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_21DD8342C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x223D46E70](v9, a1);
      sub_21DD833D8(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_21DD7F640(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString();
    sub_21DD835CC(&qword_27CE8EF68, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_21DD8BEB8();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

double sub_21DD7F74C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_21DD7F480(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_21DD800B8();
      v11 = v13;
    }

    sub_21DD833D8(*(v11 + 48) + 40 * v8);
    sub_21DD74E40((*(v11 + 56) + 32 * v8), a2);
    sub_21DD7FD4C(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_21DD7F7F0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8ED88, &unk_21DD8D060);
  v39 = a2;
  result = sub_21DD8C368();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_21DD8C458();
      sub_21DD8C098();
      result = sub_21DD8C478();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_21DD7FA94(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EF28, &qword_21DD8D548);
  result = sub_21DD8C368();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v40 = *(v24 + 32);
        v38 = v25;
        v39 = v26;
        sub_21DD74E40((*(v5 + 56) + 32 * v23), v37);
      }

      else
      {
        sub_21DD8342C(v24, &v38);
        sub_21DD72CF4(*(v5 + 56) + 32 * v23, v37);
      }

      v27 = *(v8 + 40);
      result = sub_21DD8C288();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v38;
      v19 = v39;
      *(v17 + 32) = v40;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_21DD74E40(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_21DD7FD4C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21DD8C278() + 1) & ~v5;
    do
    {
      sub_21DD8342C(*(a2 + 48) + 40 * v6, v26);
      v10 = *(a2 + 40);
      v11 = sub_21DD8C288();
      result = sub_21DD833D8(v26);
      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = v15 + 40 * v3;
          v17 = (v15 + 40 * v6);
          if (v3 != v6 || v16 >= v17 + 40)
          {
            v18 = *v17;
            v19 = v17[1];
            *(v16 + 32) = *(v17 + 4);
            *v16 = v18;
            *(v16 + 16) = v19;
          }

          v20 = *(a2 + 56);
          v21 = (v20 + 32 * v3);
          v22 = (v20 + 32 * v6);
          if (v3 != v6 || v21 >= v22 + 2)
          {
            v9 = v22[1];
            *v21 = *v22;
            v21[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_21DD7FEF0(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_21DD7F480(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_21DD800B8();
      goto LABEL_7;
    }

    sub_21DD7FA94(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_21DD7F480(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_21DD8342C(a2, v22);
      return sub_21DD8003C(v10, v22, a1, v16);
    }

LABEL_15:
    result = sub_21DD8C438();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_1(v17);

  return sub_21DD74E40(a1, v17);
}

_OWORD *sub_21DD8003C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_21DD74E40(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

void *sub_21DD800B8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EF28, &qword_21DD8D548);
  v2 = *v0;
  v3 = sub_21DD8C358();
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
        v18 = 40 * v17;
        sub_21DD8342C(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_21DD72CF4(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_21DD74E40(v22, (*(v4 + 56) + v17));
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

uint64_t sub_21DD8025C(uint64_t a1)
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
    sub_21DD8C348();
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
  result = sub_21DD8C2F8();
  *v1 = result;
  return result;
}

uint64_t sub_21DD802FC(uint64_t a1)
{
  v2 = sub_21DD8BE48();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EF80, &qword_21DD8D678);
    v10 = sub_21DD8C2B8();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_21DD835CC(&qword_27CE8EF88, MEMORY[0x277CC99D0]);
      v18 = sub_21DD8BF88();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_21DD835CC(&unk_27CE8EF90, MEMORY[0x277CC99D0]);
          v25 = sub_21DD8BF98();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

unint64_t sub_21DD8061C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8ED88, &unk_21DD8D060);
    v3 = sub_21DD8C378();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_21DD72C7C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21DD80720(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EF28, &qword_21DD8D548);
    v3 = sub_21DD8C378();
    v4 = a1 + 32;

    while (1)
    {
      sub_21DD83564(v4, v13, &qword_27CE8EF38, &qword_21DD8D558);
      result = sub_21DD7F480(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_21DD74E40(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21DD8085C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EF58, &qword_21DD8D570);
    v3 = sub_21DD8C378();
    v4 = a1 + 32;

    while (1)
    {
      sub_21DD83564(v4, &v11, &qword_27CE8EF60, &qword_21DD8D578);
      v5 = v11;
      result = sub_21DD7F4C4(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_21DD74E40(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

char *sub_21DD80984(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
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
  sub_21DD834B4(0, &qword_281221AC8, 0x277CE1F80);
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
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_21DD8C348();
    v15 = &result[-v7];
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
        result = sub_21DD8C348();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
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
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

char *sub_21DD80AB0(uint64_t a1, uint64_t a2, void *a3)
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

  result = sub_21DD8C348();
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
    v12 = sub_21DD8C348();
  }

  else
  {
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = (v12 + v11);
  if (v13)
  {
    goto LABEL_18;
  }

  sub_21DD8025C(result);

  return sub_21DD80984(v6, v5, 1, v3);
}

void sub_21DD80B9C(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_21DD8C348())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EF50, &qword_21DD8D568);
      v3 = sub_21DD8C2B8();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_21DD8C348();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v40 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v38 = v1;
    while (1)
    {
      v8 = MEMORY[0x223D46EC0](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = *(v3 + 40);
      v12 = sub_21DD8C218();
      v13 = -1 << *(v3 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = *(v6 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) != 0)
      {
        v18 = ~v13;
        sub_21DD834B4(0, &qword_281221AC0, 0x277CE1F98);
        while (1)
        {
          v19 = *(*(v3 + 48) + 8 * v14);
          v20 = sub_21DD8C228();

          if (v20)
          {
            break;
          }

          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = *(v6 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            v1 = v38;
            v5 = v40;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v38;
        v5 = v40;
        if (v7 == v40)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v15) = v17 | v16;
        *(*(v3 + 48) + 8 * v14) = v10;
        v21 = *(v3 + 16);
        v9 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v22;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v23 = 0;
    v37 = v1 + 32;
    v39 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v23 != v39)
    {
      v24 = *(v3 + 40);
      v25 = *(v37 + 8 * v23);
      v26 = sub_21DD8C218();
      v27 = -1 << *(v3 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      v30 = *(v6 + 8 * (v28 >> 6));
      v31 = 1 << v28;
      if (((1 << v28) & v30) != 0)
      {
        v32 = ~v27;
        sub_21DD834B4(0, &qword_281221AC0, 0x277CE1F98);
        do
        {
          v33 = *(*(v3 + 48) + 8 * v28);
          v34 = sub_21DD8C228();

          if (v34)
          {

            v5 = v40;
            goto LABEL_23;
          }

          v28 = (v28 + 1) & v32;
          v29 = v28 >> 6;
          v30 = *(v6 + 8 * (v28 >> 6));
          v31 = 1 << v28;
        }

        while (((1 << v28) & v30) != 0);
        v5 = v40;
      }

      *(v6 + 8 * v29) = v31 | v30;
      *(*(v3 + 48) + 8 * v28) = v25;
      v35 = *(v3 + 16);
      v9 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v36;
LABEL_23:
      if (++v23 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_21DD80E8C(uint64_t a1)
{
  v2 = sub_21DD8BD58();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281221BD8 != -1)
  {
    swift_once();
  }

  v7 = sub_21DD8BF08();
  __swift_project_value_buffer(v7, qword_281221D58);
  (*(v3 + 16))(v6, a1, v2);
  v8 = sub_21DD8BEE8();
  v9 = sub_21DD8C1E8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136315138;
    sub_21DD835CC(&qword_27CE8EDE0, MEMORY[0x277CC9260]);
    v12 = sub_21DD8C418();
    v14 = v13;
    (*(v3 + 8))(v6, v2);
    v15 = sub_21DD74A90(v12, v14, &v24);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_21DD6F000, v8, v9, "Tracking radar URL to be opened: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x223D47710](v11, -1, -1);
    MEMORY[0x223D47710](v10, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  v16 = [objc_opt_self() defaultWorkspace];
  if (v16)
  {
    v17 = v16;
    v18 = sub_21DD8BCB8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EDE8, &unk_21DD8D510);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21DD8CF30;
    v20 = *MEMORY[0x277D0AC58];
    *(inited + 32) = sub_21DD8BFE8();
    *(inited + 40) = v21;
    *(inited + 72) = MEMORY[0x277D839B0];
    *(inited + 48) = 1;
    sub_21DD728E4(inited);
    swift_setDeallocating();
    sub_21DD71200(inited + 32, &unk_27CE8EEF0, &unk_21DD8D740);
    v22 = sub_21DD8BF58();

    [v17 openSensitiveURL:v18 withOptions:v22];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21DD8120C@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = [a1 notification];
  v5 = [v4 request];

  v6 = [v5 content];
  v7 = [v6 userInfo];

  v8 = sub_21DD8BF68();
  sub_21DD8C2A8();
  if (!*(v8 + 16))
  {
    goto LABEL_13;
  }

  v9 = sub_21DD7F480(v31);
  if ((v10 & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_21DD72CF4(*(v8 + 56) + 32 * v9, v32);
  sub_21DD833D8(v31);

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_14:
    v13 = 0;
    v12 = 0;
    v22 = 0;
    v21 = 0;
    v30 = 0;
    goto LABEL_15;
  }

  v13 = 0xD000000000000012;
  v12 = 0x800000021DD8E5B0;
  v14 = [a1 notification];
  v15 = [v14 &selRef_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler_];

  v16 = [v15 0x278338378];
  v17 = [v16 userInfo];

  v18 = sub_21DD8BF68();
  sub_21DD8C2A8();
  if (!*(v18 + 16) || (v19 = sub_21DD7F480(v31), (v20 & 1) == 0))
  {

LABEL_13:

    result = sub_21DD833D8(v31);
    goto LABEL_14;
  }

  sub_21DD72CF4(*(v18 + 56) + 32 * v19, v32);
  sub_21DD833D8(v31);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:

    goto LABEL_14;
  }

  v22 = 0xD000000000000015;
  v21 = 0x800000021DD8E5D0;
  v23 = [a1 notification];
  v24 = [v23 request];

  v25 = [v24 0x278338378];
  v26 = [v25 userInfo];

  v27 = sub_21DD8BF68();
  sub_21DD8C2A8();
  if (!*(v27 + 16) || (v28 = sub_21DD7F480(v31), (v29 & 1) == 0))
  {

    goto LABEL_13;
  }

  sub_21DD72CF4(*(v27 + 56) + 32 * v28, v32);
  sub_21DD833D8(v31);

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {

    goto LABEL_17;
  }

  v30 = 0xD000000000000010;
LABEL_15:
  *a2 = v13;
  a2[1] = v12;
  a2[2] = v22;
  a2[3] = v21;
  a2[4] = v30;
  return result;
}

void sub_21DD81658(void (*a1)(char *, char *, uint64_t), uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  v102 = a7;
  v105 = a6;
  v106 = a1;
  v101 = sub_21DD8BC78();
  v100 = *(v101 - 8);
  v11 = *(v100 + 64);
  MEMORY[0x28223BE20](v101);
  v99 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_21DD8BD58();
  v112 = *(v104 - 8);
  v13 = *(v112 + 64);
  v14 = MEMORY[0x28223BE20](v104);
  v97 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v108 = &v97 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v110 = &v97 - v19;
  MEMORY[0x28223BE20](v18);
  v98 = &v97 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EDC8, &qword_21DD8D500);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v107 = &v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v97 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v97 - v28;
  v116 = 0;
  v117 = 0xE000000000000000;
  if (a3)
  {
    v30 = a2;
  }

  else
  {
    v30 = 0x6E776F6E6B6E55;
  }

  if (a3)
  {
    v31 = a3;
  }

  else
  {
    v31 = 0xE700000000000000;
  }

  MEMORY[0x223D46C80](v30, v31);

  MEMORY[0x223D46C80](32, 0xE100000000000000);
  if (a5)
  {
    v32 = a4;
  }

  else
  {
    v32 = 0;
  }

  if (a5)
  {
    v33 = a5;
  }

  else
  {
    v33 = 0xE000000000000000;
  }

  MEMORY[0x223D46C80](v32, v33);
  v34 = v102;

  v103 = v116;
  v109 = v117;
  v116 = 0;
  v117 = 0xE000000000000000;
  sub_21DD8C2D8();

  MEMORY[0x223D46C80](v30, v31);

  MEMORY[0x223D46C80](0xD000000000000017, 0x800000021DD8E500);
  v35 = v116;
  v111 = v117;
  if (v34)
  {
    v36 = v112;
    v37 = v104;
    (*(v112 + 56))(v27, 1, 1, v104);
    (*(v100 + 104))(v99, *MEMORY[0x277CC91D8], v101);

    v38 = v98;
    v39 = v105;
    sub_21DD8BD48();
    sub_21DD78EF0(v38, v29);
    v40 = *(v36 + 8);
    v40(v38, v37);
    v41 = v36;
    if ((*(v36 + 48))(v29, 1, v37) == 1)
    {
      sub_21DD71200(v29, &qword_27CE8EDC8, &qword_21DD8D500);
    }

    else
    {
      v39 = sub_21DD8BD28();
      v43 = v42;
      v40(v29, v37);
      v34 = v43;
    }
  }

  else
  {
    v39 = v105;
    v37 = v104;
    v41 = v112;
  }

  v44 = v109;
  v116 = 0;
  v117 = 0xE000000000000000;
  sub_21DD8C2D8();
  MEMORY[0x223D46C80](0xD000000000000019, 0x800000021DD8E520);
  MEMORY[0x223D46C80](v103, v44);
  MEMORY[0x223D46C80](0x7069726373654426, 0xED00003D6E6F6974);
  MEMORY[0x223D46C80](v35, v111);
  MEMORY[0x223D46C80](0xD00000000000004ELL, 0x800000021DD8E540);
  if (v34)
  {
    v45 = v39;
  }

  else
  {
    v45 = 0;
  }

  if (v34)
  {
    v46 = v34;
  }

  else
  {
    v46 = 0xE000000000000000;
  }

  MEMORY[0x223D46C80](v45, v46);

  MEMORY[0x223D46C80](0x64726F7779654B26, 0xEA00000000003D73);
  MEMORY[0x223D46C80](0x34393635323032, 0xE700000000000000);
  v47 = v116;
  v48 = v117;
  v49 = *(v106 + 1);
  if (v49)
  {
    v50 = *(v106 + 3);
    v51 = *(v106 + 4);
    v52 = *(v106 + 2);
    v53 = *v106;
    v114 = 0;
    v115 = 0xE000000000000000;
    sub_21DD8C2D8();
    MEMORY[0x223D46C80](0x656E6F706D6F4326, 0xEF3D656D614E746ELL);
    MEMORY[0x223D46C80](v53, v49);
    MEMORY[0x223D46C80](0xD000000000000012, 0x800000021DD8E590);
    MEMORY[0x223D46C80](v52, v50);
    MEMORY[0x223D46C80](0x656E6F706D6F4326, 0xED00003D4449746ELL);
    v113 = v51;
    v41 = v112;
    v54 = sub_21DD8C418();
    MEMORY[0x223D46C80](v54);

    MEMORY[0x223D46C80](v114, v115);

    v47 = v116;
    v48 = v117;
  }

  v55 = v110;
  v56 = v107;
  v57 = v108;
  sub_21DD8BD38();
  if ((*(v41 + 48))(v56, 1, v37) == 1)
  {

    sub_21DD71200(v56, &qword_27CE8EDC8, &qword_21DD8D500);
    if (qword_281221BD8 != -1)
    {
      swift_once();
    }

    v58 = sub_21DD8BF08();
    __swift_project_value_buffer(v58, qword_281221D58);

    v59 = sub_21DD8BEE8();
    v60 = sub_21DD8C1D8();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v114 = v62;
      *v61 = 136315138;
      v63 = sub_21DD74A90(v47, v48, &v114);

      *(v61 + 4) = v63;
      _os_log_impl(&dword_21DD6F000, v59, v60, "Failed to construct TTR URL from string: %s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v62);
      MEMORY[0x223D47710](v62, -1, -1);
      MEMORY[0x223D47710](v61, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    (*(v41 + 32))(v55, v56, v37);
    if (qword_281221BD8 != -1)
    {
      swift_once();
    }

    v64 = sub_21DD8BF08();
    v65 = __swift_project_value_buffer(v64, qword_281221D58);
    v66 = *(v41 + 16);
    v107 = (v41 + 16);
    v106 = v66;
    v66(v57, v55, v37);
    v108 = v65;
    v67 = sub_21DD8BEE8();
    v68 = sub_21DD8C1E8();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = v57;
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v114 = v71;
      *v70 = 136315138;
      sub_21DD835CC(&qword_27CE8EDE0, MEMORY[0x277CC9260]);
      v72 = sub_21DD8C418();
      v73 = v37;
      v75 = v74;
      v76 = *(v41 + 8);
      v76(v69, v73);
      v77 = sub_21DD74A90(v72, v75, &v114);
      v37 = v73;
      v55 = v110;

      *(v70 + 4) = v77;
      _os_log_impl(&dword_21DD6F000, v67, v68, "TTR URL: %s", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v71);
      MEMORY[0x223D47710](v71, -1, -1);
      MEMORY[0x223D47710](v70, -1, -1);
    }

    else
    {

      v76 = *(v41 + 8);
      v76(v57, v37);
    }

    v78 = [objc_opt_self() defaultWorkspace];
    if (v78)
    {
      v79 = v78;

      v80 = sub_21DD8BCB8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EDE8, &unk_21DD8D510);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_21DD8CF30;
      v82 = *MEMORY[0x277D0AC58];
      *(inited + 32) = sub_21DD8BFE8();
      *(inited + 40) = v83;
      *(inited + 72) = MEMORY[0x277D839B0];
      *(inited + 48) = 1;
      sub_21DD728E4(inited);
      swift_setDeallocating();
      sub_21DD71200(inited + 32, &unk_27CE8EEF0, &unk_21DD8D740);
      v84 = sub_21DD8BF58();

      v85 = [v79 openSensitiveURL:v80 withOptions:v84];

      if (v85)
      {
        v76(v55, v37);
      }

      else
      {
        v86 = v97;
        v106(v97, v55, v37);
        v87 = sub_21DD8BEE8();
        v88 = sub_21DD8C1D8();
        if (os_log_type_enabled(v87, v88))
        {
          v89 = swift_slowAlloc();
          v90 = v55;
          v91 = swift_slowAlloc();
          v114 = v91;
          *v89 = 136315138;
          sub_21DD835CC(&qword_27CE8EDE0, MEMORY[0x277CC9260]);
          v92 = sub_21DD8C418();
          v93 = v86;
          v95 = v94;
          v76(v93, v37);
          v96 = sub_21DD74A90(v92, v95, &v114);

          *(v89 + 4) = v96;
          _os_log_impl(&dword_21DD6F000, v87, v88, "Failed to create TTR URL: %s", v89, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v91);
          MEMORY[0x223D47710](v91, -1, -1);
          MEMORY[0x223D47710](v89, -1, -1);

          v76(v90, v37);
        }

        else
        {

          v76(v86, v37);
          v76(v55, v37);
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_21DD82390(uint64_t a1)
{
  v1[91] = swift_getObjectType();
  v1[90] = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EDC8, &qword_21DD8D500) - 8) + 64) + 15;
  v1[92] = swift_task_alloc();
  v1[93] = swift_task_alloc();
  v4 = sub_21DD8BD58();
  v1[94] = v4;
  v5 = *(v4 - 8);
  v1[95] = v5;
  v6 = *(v5 + 64) + 15;
  v1[96] = swift_task_alloc();
  v1[97] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21DD824B0, 0, 0);
}

uint64_t sub_21DD824B0()
{
  v116 = v0;
  if (qword_281221BD8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 720);
  v2 = sub_21DD8BF08();
  __swift_project_value_buffer(v2, qword_281221D58);
  v3 = v1;
  v4 = sub_21DD8BEE8();
  v5 = sub_21DD8C1E8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 720);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v115 = v8;
    *v7 = 136315138;
    v9 = [v6 actionIdentifier];
    v10 = sub_21DD8BFE8();
    v12 = v11;

    v13 = sub_21DD74A90(v10, v12, &v115);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_21DD6F000, v4, v5, "Received notification response: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x223D47710](v8, -1, -1);
    MEMORY[0x223D47710](v7, -1, -1);
  }

  v14 = *(v0 + 720);
  v15 = [v14 notification];
  v16 = [v15 request];

  v17 = [v16 content];
  v18 = [v17 userInfo];

  v19 = sub_21DD8BF68();
  v20 = [v14 notification];
  v21 = [v20 request];

  v22 = [v21 content];
  v23 = [v22 categoryIdentifier];

  v24 = sub_21DD8BFE8();
  v26 = v25;

  if (v24 == 0x4C415F4853415243 && v26 == 0xEB00000000545245)
  {
  }

  else
  {
    v27 = sub_21DD8C428();

    if ((v27 & 1) == 0)
    {

      goto LABEL_58;
    }
  }

  v28 = [*(v0 + 720) &selRef_content];
  v29 = sub_21DD8BFE8();
  v31 = v30;

  if (v29 == 0xD00000000000001ALL && 0x800000021DD8E4C0 == v31 || (sub_21DD8C428() & 1) != 0)
  {

    v32 = sub_21DD8BEE8();
    v33 = sub_21DD8C1E8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_21DD6F000, v32, v33, "User has tapped open tracking radar", v34, 2u);
      MEMORY[0x223D47710](v34, -1, -1);
    }

    v35 = *(v0 + 760);
    v36 = *(v0 + 752);
    v37 = *(v0 + 744);
    v38 = *(v0 + 720);

    sub_21DD7E5AC(v38, v37);
    if ((*(v35 + 48))(v37, 1, v36) == 1)
    {
      sub_21DD71200(*(v0 + 744), &qword_27CE8EDC8, &qword_21DD8D500);
      v39 = sub_21DD8BEE8();
      v40 = sub_21DD8C1D8();
      if (!os_log_type_enabled(v39, v40))
      {
LABEL_18:

        goto LABEL_58;
      }

      v41 = swift_slowAlloc();
      *v41 = 0;
      v42 = "Unable to open tracking radar URL";
LABEL_17:
      _os_log_impl(&dword_21DD6F000, v39, v40, v42, v41, 2u);
      MEMORY[0x223D47710](v41, -1, -1);
      goto LABEL_18;
    }

    (*(*(v0 + 760) + 32))(*(v0 + 776), *(v0 + 744), *(v0 + 752));
    v43 = sub_21DD8BEE8();
    v44 = sub_21DD8C1E8();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_21DD6F000, v43, v44, "Opening existing tracking radar", v45, 2u);
      MEMORY[0x223D47710](v45, -1, -1);
    }

    v46 = *(v0 + 776);
    goto LABEL_22;
  }

  if (v29 == 0xD000000000000017 && 0x800000021DD8E4E0 == v31 || (sub_21DD8C428() & 1) != 0)
  {

    v49 = sub_21DD8BEE8();
    v50 = sub_21DD8C1E8();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_21DD6F000, v49, v50, "User has tapped create new radar", v51, 2u);
      MEMORY[0x223D47710](v51, -1, -1);
    }

    v52 = *(v0 + 720);

    sub_21DD8120C(v52, (v0 + 16));
    *(v0 + 560) = 0x4E79616C70736964;
    *(v0 + 568) = 0xEB00000000656D61;
    sub_21DD8C2A8();
    if (*(v19 + 16) && (v53 = sub_21DD7F480(v0 + 256), (v54 & 1) != 0))
    {
      sub_21DD72CF4(*(v19 + 56) + 32 * v53, v0 + 336);
      sub_21DD833D8(v0 + 256);
      v55 = swift_dynamicCast();
      if (v55)
      {
        v56 = *(v0 + 704);
      }

      else
      {
        v56 = 0;
      }

      if (v55)
      {
        v57 = *(v0 + 712);
      }

      else
      {
        v57 = 0;
      }
    }

    else
    {
      sub_21DD833D8(v0 + 256);
      v56 = 0;
      v57 = 0;
    }

    *(v0 + 608) = 0x79726F6765746163;
    *(v0 + 616) = 0xE800000000000000;
    sub_21DD8C2A8();
    if (*(v19 + 16) && (v58 = sub_21DD7F480(v0 + 216), (v59 & 1) != 0))
    {
      sub_21DD72CF4(*(v19 + 56) + 32 * v58, v0 + 496);
      sub_21DD833D8(v0 + 216);
      v60 = swift_dynamicCast();
      if (v60)
      {
        v61 = *(v0 + 688);
      }

      else
      {
        v61 = 0;
      }

      if (v60)
      {
        v62 = *(v0 + 696);
      }

      else
      {
        v62 = 0;
      }
    }

    else
    {
      sub_21DD833D8(v0 + 216);
      v61 = 0;
      v62 = 0;
    }

    *(v0 + 656) = 0x656D686361747461;
    *(v0 + 664) = 0xEA0000000000746ELL;
    sub_21DD8C2A8();
    if (*(v19 + 16) && (v63 = sub_21DD7F480(v0 + 96), (v64 & 1) != 0))
    {
      sub_21DD72CF4(*(v19 + 56) + 32 * v63, v0 + 432);
      sub_21DD833D8(v0 + 96);

      v65 = swift_dynamicCast();
      v66 = *(v0 + 672);
      if (v65)
      {
        v67 = *(v0 + 672);
      }

      else
      {
        v67 = 0;
      }

      if (v65)
      {
        v68 = *(v0 + 680);
      }

      else
      {
        v68 = 0;
      }
    }

    else
    {

      sub_21DD833D8(v0 + 96);
      v67 = 0;
      v68 = 0;
    }

    sub_21DD81658((v0 + 16), v56, v57, v61, v62, v67, v68);

    v69 = v0 + 16;
  }

  else
  {
    v76 = *MEMORY[0x277CE20E8];
    if (sub_21DD8BFE8() == v29 && v77 == v31)
    {
    }

    else
    {
      v78 = sub_21DD8C428();

      if ((v78 & 1) == 0)
      {

        v112 = *MEMORY[0x277CE20F0];
        if (sub_21DD8BFE8() == v29 && v113 == v31)
        {
        }

        else
        {
          v114 = sub_21DD8C428();

          if ((v114 & 1) == 0)
          {
            v39 = sub_21DD8BEE8();
            v40 = sub_21DD8C1E8();
            if (!os_log_type_enabled(v39, v40))
            {
              goto LABEL_18;
            }

            v41 = swift_slowAlloc();
            *v41 = 0;
            v42 = "Unknown response action identifier";
            goto LABEL_17;
          }
        }

        v39 = sub_21DD8BEE8();
        v40 = sub_21DD8C1E8();
        if (!os_log_type_enabled(v39, v40))
        {
          goto LABEL_18;
        }

        v41 = swift_slowAlloc();
        *v41 = 0;
        v42 = "User dismissed notification";
        goto LABEL_17;
      }
    }

    v79 = sub_21DD8BEE8();
    v80 = sub_21DD8C1E8();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&dword_21DD6F000, v79, v80, "User has tapped notification", v81, 2u);
      MEMORY[0x223D47710](v81, -1, -1);
    }

    v82 = *(v0 + 760);
    v83 = *(v0 + 752);
    v84 = *(v0 + 736);
    v85 = *(v0 + 720);

    sub_21DD7E5AC(v85, v84);
    if ((*(v82 + 48))(v84, 1, v83) != 1)
    {
      v95 = *(v0 + 768);
      v96 = *(v0 + 760);
      v97 = *(v0 + 752);
      v98 = *(v0 + 736);

      (*(v96 + 32))(v95, v98, v97);
      v43 = sub_21DD8BEE8();
      v99 = sub_21DD8C1E8();
      if (os_log_type_enabled(v43, v99))
      {
        v100 = swift_slowAlloc();
        *v100 = 0;
        _os_log_impl(&dword_21DD6F000, v43, v99, "Opening existing tracking radar", v100, 2u);
        MEMORY[0x223D47710](v100, -1, -1);
      }

      v46 = *(v0 + 768);
LABEL_22:
      v47 = *(v0 + 760);
      v48 = *(v0 + 752);

      sub_21DD80E8C(v46);
      (*(v47 + 8))(v46, v48);
      goto LABEL_58;
    }

    sub_21DD71200(*(v0 + 736), &qword_27CE8EDC8, &qword_21DD8D500);
    v86 = sub_21DD8BEE8();
    v87 = sub_21DD8C1E8();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&dword_21DD6F000, v86, v87, "Opening new TTR draft", v88, 2u);
      MEMORY[0x223D47710](v88, -1, -1);
    }

    v89 = *(v0 + 720);

    sub_21DD8120C(v89, (v0 + 296));
    *(v0 + 640) = 0x4E79616C70736964;
    *(v0 + 648) = 0xEB00000000656D61;
    sub_21DD8C2A8();
    if (*(v19 + 16) && (v90 = sub_21DD7F480(v0 + 56), (v91 & 1) != 0))
    {
      sub_21DD72CF4(*(v19 + 56) + 32 * v90, v0 + 368);
      sub_21DD833D8(v0 + 56);
      v92 = swift_dynamicCast();
      if (v92)
      {
        v93 = *(v0 + 528);
      }

      else
      {
        v93 = 0;
      }

      if (v92)
      {
        v94 = *(v0 + 536);
      }

      else
      {
        v94 = 0;
      }
    }

    else
    {
      sub_21DD833D8(v0 + 56);
      v93 = 0;
      v94 = 0;
    }

    *(v0 + 624) = 0x79726F6765746163;
    *(v0 + 632) = 0xE800000000000000;
    sub_21DD8C2A8();
    if (*(v19 + 16) && (v101 = sub_21DD7F480(v0 + 136), (v102 & 1) != 0))
    {
      sub_21DD72CF4(*(v19 + 56) + 32 * v101, v0 + 400);
      sub_21DD833D8(v0 + 136);
      v103 = swift_dynamicCast();
      if (v103)
      {
        v104 = *(v0 + 544);
      }

      else
      {
        v104 = 0;
      }

      if (v103)
      {
        v105 = *(v0 + 552);
      }

      else
      {
        v105 = 0;
      }
    }

    else
    {
      sub_21DD833D8(v0 + 136);
      v104 = 0;
      v105 = 0;
    }

    *(v0 + 592) = 0x656D686361747461;
    *(v0 + 600) = 0xEA0000000000746ELL;
    sub_21DD8C2A8();
    if (*(v19 + 16) && (v106 = sub_21DD7F480(v0 + 176), (v107 & 1) != 0))
    {
      sub_21DD72CF4(*(v19 + 56) + 32 * v106, v0 + 464);
      sub_21DD833D8(v0 + 176);

      v108 = swift_dynamicCast();
      v109 = *(v0 + 576);
      if (v108)
      {
        v110 = *(v0 + 576);
      }

      else
      {
        v110 = 0;
      }

      if (v108)
      {
        v111 = *(v0 + 584);
      }

      else
      {
        v111 = 0;
      }
    }

    else
    {

      sub_21DD833D8(v0 + 176);
      v110 = 0;
      v111 = 0;
    }

    sub_21DD81658((v0 + 296), v93, v94, v104, v105, v110, v111);

    v69 = v0 + 296;
  }

  sub_21DD71200(v69, &unk_27CE8EEE0, &qword_21DD8D508);
LABEL_58:
  v70 = *(v0 + 776);
  v71 = *(v0 + 768);
  v72 = *(v0 + 744);
  v73 = *(v0 + 736);

  v74 = *(v0 + 8);

  return v74();
}

uint64_t sub_21DD834B4(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_21DD834FC()
{
  result = qword_281221AB8;
  if (!qword_281221AB8)
  {
    sub_21DD834B4(255, &qword_281221AC0, 0x277CE1F98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281221AB8);
  }

  return result;
}

uint64_t sub_21DD83564(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_21DD835CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21DD83614(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  (*(v3 + 48))(v30, v2, v3);
  v4 = v31;
  v5 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  v6 = (*(v5 + 16))(v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v30);
  if ((v6 & 1) == 0)
  {
    if (qword_281221BD8 != -1)
    {
      swift_once();
    }

    v19 = sub_21DD8BF08();
    __swift_project_value_buffer(v19, qword_281221D58);
    v20 = sub_21DD8BEE8();
    v21 = sub_21DD8C1D8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v30[0] = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_21DD74A90(0xD000000000000016, 0x800000021DD8E700, v30);
      _os_log_impl(&dword_21DD6F000, v20, v21, "%s Sampled out.", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x223D47710](v23, -1, -1);
      MEMORY[0x223D47710](v22, -1, -1);
    }

    sub_21DD73140(a1, v30);
    v17 = sub_21DD8061C(MEMORY[0x277D84F90]);
    v18 = 5;
    goto LABEL_13;
  }

  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  (*(v8 + 48))(v30, v7, v8);
  v9 = v31;
  v10 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  v11 = (*(v10 + 8))(v9, v10);
  __swift_destroy_boxed_opaque_existential_1(v30);
  if (v11)
  {
    if (qword_281221BD8 != -1)
    {
      swift_once();
    }

    v12 = sub_21DD8BF08();
    __swift_project_value_buffer(v12, qword_281221D58);
    v13 = sub_21DD8BEE8();
    v14 = sub_21DD8C1D8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v30[0] = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_21DD74A90(0xD000000000000016, 0x800000021DD8E700, v30);
      _os_log_impl(&dword_21DD6F000, v13, v14, "%s Exceeded show limit.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x223D47710](v16, -1, -1);
      MEMORY[0x223D47710](v15, -1, -1);
    }

    sub_21DD73140(a1, v30);
    v17 = sub_21DD8061C(MEMORY[0x277D84F90]);
    v18 = 4;
LABEL_13:
    sub_21DD75EB4(v18, v30, v17);

    sub_21DD71200(v30, &unk_27CE8EF70, &unk_21DD8D580);
    return 0;
  }

  if (qword_281221BD8 != -1)
  {
    swift_once();
  }

  v25 = sub_21DD8BF08();
  __swift_project_value_buffer(v25, qword_281221D58);
  v26 = sub_21DD8BEE8();
  v27 = sub_21DD8C1E8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30[0] = v29;
    *v28 = 136315138;
    *(v28 + 4) = sub_21DD74A90(0xD000000000000016, 0x800000021DD8E700, v30);
    _os_log_impl(&dword_21DD6F000, v26, v27, "%s Success.", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x223D47710](v29, -1, -1);
    MEMORY[0x223D47710](v28, -1, -1);
  }

  return 1;
}

uint64_t get_enum_tag_for_layout_string_27DiagnosticsReporterServices11SpeedTracerV8ResponseV5RadarV9ComponentVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_21DD83AFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 50))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 49);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21DD83B44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 50) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 50) = 0;
    }

    if (a2)
    {
      *(result + 49) = -a2;
    }
  }

  return result;
}

uint64_t sub_21DD83B98(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 33) = 0u;
    LOBYTE(a2) = 2;
  }

  *(result + 49) = a2;
  return result;
}

uint64_t sub_21DD83BDC()
{
  if (qword_281221B08 != -1)
  {
    return swift_once();
  }

  return result;
}

uint64_t sub_21DD83C3C(uint64_t a1, void *a2, void (*a3)(id), uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE8EED0, &unk_21DD8D6B0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v31 - v12;
  if (qword_281221BD8 != -1)
  {
    swift_once();
  }

  v14 = sub_21DD8BF08();
  __swift_project_value_buffer(v14, qword_281221D58);
  v15 = a2;
  v16 = sub_21DD8BEE8();
  v17 = sub_21DD8C1E8();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    *(v18 + 4) = v15;
    *v19 = v15;
    v20 = v15;
    _os_log_impl(&dword_21DD6F000, v16, v17, "Launching app with options: %@", v18, 0xCu);
    sub_21DD71200(v19, &unk_27CE8EF10, &unk_21DD8D530);
    MEMORY[0x223D47710](v19, -1, -1);
    MEMORY[0x223D47710](v18, -1, -1);
  }

  sub_21DD71260(a1, v15, v39);
  sub_21DD83564(v39, v37, &unk_27CE8EF70, &unk_21DD8D580);
  sub_21DD83564(v37, v36, &unk_27CE8EF70, &unk_21DD8D580);
  v21 = swift_allocObject();
  v22 = v37[1];
  *(v21 + 16) = v37[0];
  *(v21 + 32) = v22;
  *(v21 + 48) = v38;
  *(v21 + 56) = a3;
  *(v21 + 64) = a4;
  sub_21DD83564(v39, &v31, &unk_27CE8EF70, &unk_21DD8D580);
  v23 = v32;

  if (v23)
  {
    sub_21DD71200(v36, &unk_27CE8EF70, &unk_21DD8D580);
    sub_21DD72A14(&v31, v33);
    v24 = sub_21DD8C198();
    (*(*(v24 - 8) + 56))(v13, 1, 1, v24);
    sub_21DD73140(v33, &v31);
    v25 = swift_allocObject();
    v25[2] = 0;
    v25[3] = 0;
    sub_21DD72A14(&v31, (v25 + 4));
    v25[9] = v5;
    v25[10] = sub_21DD74F38;
    v25[11] = v21;
    v25[12] = a1;
    v25[13] = v15;
    v26 = v15;

    sub_21DD8426C(0, 0, v13, &unk_21DD8D6C8, v25);

    sub_21DD71200(v13, &unk_27CE8EED0, &unk_21DD8D6B0);
    __swift_destroy_boxed_opaque_existential_1(v33);
  }

  else
  {
    sub_21DD71200(&v31, &unk_27CE8EF70, &unk_21DD8D580);
    v27 = sub_21DD74CEC();
    if ((isInternal() & 1) == 0)
    {
      sub_21DD83564(v36, v33, &unk_27CE8EF70, &unk_21DD8D580);
      v28 = v34;
      if (v34)
      {
        v29 = v35;
        __swift_project_boxed_opaque_existential_1(v33, v34);
        (*(v29 + 104))(v28, v29);
        __swift_destroy_boxed_opaque_existential_1(v33);
      }

      else
      {
        sub_21DD71200(v33, &unk_27CE8EF70, &unk_21DD8D580);
      }
    }

    a3(v27);

    sub_21DD71200(v36, &unk_27CE8EF70, &unk_21DD8D580);
  }

  return sub_21DD71200(v39, &unk_27CE8EF70, &unk_21DD8D580);
}

uint64_t sub_21DD840B0()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 528);
  v5 = *v0;

  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_21DD841D8, 0, 0);
}

uint64_t sub_21DD841D8()
{
  v5 = *MEMORY[0x277D85DE8];
  sub_21DD74CBC(v0 + 16);
  v1 = *(v0 + 520);

  v2 = *(v0 + 8);
  v3 = *MEMORY[0x277D85DE8];

  return v2();
}

uint64_t sub_21DD8426C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE8EED0, &unk_21DD8D6B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_21DD83564(a3, v27 - v11, &unk_27CE8EED0, &unk_21DD8D6B0);
  v13 = sub_21DD8C198();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_21DD71200(v12, &unk_27CE8EED0, &unk_21DD8D6B0);
  }

  else
  {
    sub_21DD8C188();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_21DD8C178();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_21DD8C068() + 32;
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