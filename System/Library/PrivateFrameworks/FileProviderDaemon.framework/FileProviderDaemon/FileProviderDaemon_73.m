void sub_1CF79AF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_rtcReporter);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4CD0, &unk_1CFA17EB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CF9FA450;
    v10 = v6;
    v11 = MEMORY[0x1E69E6158];
    sub_1CF9E7898();
    *(inited + 96) = v11;
    *(inited + 72) = a1;
    *(inited + 80) = a2;

    sub_1CF4E0E00(inited);
    swift_setDeallocating();
    sub_1CEFCCC44(inited + 32, &qword_1EC4C0600, &unk_1CF9FE790);
    v12 = sub_1CF9E6618();

    v13 = sub_1CF9E57E8();
    [v10 postReportWithCategory:1 type:1 payload:v12 error:v13];
  }

  if (a4)
  {
    v14 = sub_1CF9E6888();
    v15 = sub_1CF9E6888();
    v16 = sub_1CF9E57E8();
    FPCaptureLogsForOperation();
  }
}

void sub_1CF79B0F4(void (*a1)(_BYTE *, uint64_t))
{
  v123 = a1;
  v127[1] = *MEMORY[0x1E69E9840];
  v117 = sub_1CF9E6118();
  v119 = *(v117 - 8);
  v1 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v117);
  v113 = &v105[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v3);
  v120 = &v105[-v4];
  v5 = sub_1CF9E5A58();
  v121 = *(v5 - 1);
  v122 = v5;
  v6 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v114 = &v105[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v111 = &v105[-v8];
  MEMORY[0x1EEE9AC00](v9);
  v112 = &v105[-v10];
  MEMORY[0x1EEE9AC00](v11);
  v115 = &v105[-v12];
  MEMORY[0x1EEE9AC00](v13);
  v116 = &v105[-v14];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v105[-v16];
  v18 = sub_1CF9E53C8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v105[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LODWORD(v127[0]) = 17;
  sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
  sub_1CF7A4E50(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
  sub_1CF9E57D8();
  v23 = sub_1CF9E53A8();
  v24 = v125;
  (*(v19 + 8))(v22, v18);
  sub_1CF79AF1C(0xD000000000000022, 0x80000001CFA5A6A0, 0xD000000000000018, 0x80000001CFA5A6D0);

  v25 = v124;
  sub_1CF797D80();
  if (v25)
  {
LABEL_16:
    v104 = *MEMORY[0x1E69E9840];
    return;
  }

  v26 = v116;
  v27 = v120;
  v108 = v6;
  v124 = 0;
  v118 = v17;
  v28 = *(v24 + OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_volume);
  if (v28)
  {
    v29 = [v28 removedURL];
    v30 = v118;
    sub_1CF9E59D8();

    v31 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v32 = v121;
    v33 = v121 + 16;
    v34 = *(v121 + 16);
    v35 = v26;
    v36 = v26;
    v37 = v122;
    v34(v36, v123, v122);
    v38 = v115;
    v110 = v33;
    v109 = v34;
    v34(v115, v30, v37);
    v39 = sub_1CF9E6108();
    v40 = sub_1CF9E7288();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v127[0] = v107;
      *v41 = 136315394;
      v106 = v40;
      v42 = sub_1CF9E5928();
      v43 = [v42 fp_shortDescription];

      v44 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v45 = v32;
      v47 = v46;

      v48 = v38;
      v49 = *(v45 + 8);
      (v49)(v35, v122);
      v50 = sub_1CEFD0DF0(v44, v47, v127);

      *(v41 + 4) = v50;
      *(v41 + 12) = 2080;
      v51 = sub_1CF9E5928();
      v52 = [v51 fp_shortDescription];

      v53 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v55 = v54;

      v116 = v49;
      (v49)(v48, v122);
      v37 = v122;
      v56 = sub_1CEFD0DF0(v53, v55, v127);

      *(v41 + 14) = v56;
      _os_log_impl(&dword_1CEFC7000, v39, v106, "trying to move un-owned directory %s to the purgatory %s", v41, 0x16u);
      v57 = v107;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v57, -1, -1);
      MEMORY[0x1D386CDC0](v41, -1, -1);

      v58 = *(v119 + 8);
      v59 = v117;
      v58(v120, v117);
    }

    else
    {

      v61 = *(v32 + 8);
      (v61)(v38, v37);
      v116 = v61;
      (v61)(v35, v37);
      v58 = *(v119 + 8);
      v59 = v117;
      v58(v27, v117);
    }

    v60 = v114;
    v62 = [objc_opt_self() defaultManager];
    v63 = sub_1CF9E5928();
    v64 = sub_1CF9E5928();
    v127[0] = 0;
    v65 = [v62 moveItemAtURL:v63 toURL:v64 error:v127];

    if (v65)
    {
      v66 = qword_1EDEA70C8;
      v67 = v127[0];
      if (v66 != -1)
      {
        swift_once();
      }

      v68 = qword_1EDEA70D0;
      v69 = v112;
      sub_1CF9E5988();
      v70 = v111;
      if (qword_1EDEA70E0 != -1)
      {
        swift_once();
      }

      v71 = fpfs_current_log();
      v109(v70, v69, v37);
      v72 = v121;
      v73 = v70;
      v74 = (*(v121 + 80) + 24) & ~*(v121 + 80);
      v75 = v69;
      v76 = swift_allocObject();
      *(v76 + 16) = v68;
      (*(v72 + 32))(v76 + v74, v73, v37);
      v77 = v68;
      sub_1CF01001C(v71, "purgeAsync(at:)", 15, 2, sub_1CF1B80A8, v76);

      v78 = v116;
      (v116)(v75, v37);
      v78(v118, v37);
    }

    else
    {
      v79 = v127[0];
      v80 = sub_1CF9E57F8();

      swift_willThrow();
      v81 = fpfs_current_or_default_log();
      v82 = v113;
      sub_1CF9E6128();
      v109(v60, v123, v37);
      v83 = v80;
      v84 = sub_1CF9E6108();
      v85 = sub_1CF9E72A8();

      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v124 = v80;
        v87 = v86;
        v88 = swift_slowAlloc();
        v123 = v58;
        v89 = v88;
        v122 = swift_slowAlloc();
        v127[0] = v122;
        *v87 = 136446466;
        v90 = sub_1CF9E5928();
        v91 = v60;
        v92 = [v90 fp_shortDescription];

        v93 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v95 = v94;

        v96 = v91;
        v97 = v116;
        (v116)(v96, v37);
        v98 = sub_1CEFD0DF0(v93, v95, v127);

        *(v87 + 4) = v98;
        *(v87 + 12) = 2112;
        swift_getErrorValue();
        v99 = Error.prettyDescription.getter(v126);
        *(v87 + 14) = v99;
        *v89 = v99;
        _os_log_impl(&dword_1CEFC7000, v84, v85, "move of un-owned directory %{public}s to purgatory, ended with error %@", v87, 0x16u);
        sub_1CEFCCC44(v89, &qword_1EC4BE350, &unk_1CF9FC3B0);
        v100 = v118;
        MEMORY[0x1D386CDC0](v89, -1, -1);
        v101 = v122;
        __swift_destroy_boxed_opaque_existential_1(v122);
        MEMORY[0x1D386CDC0](v101, -1, -1);
        MEMORY[0x1D386CDC0](v87, -1, -1);

        v123(v113, v117);
      }

      else
      {

        v102 = v116;
        (v116)(v60, v37);
        v103 = v82;
        v97 = v102;
        v58(v103, v59);
        v100 = v118;
      }

      sub_1CF79AF1C(0xD000000000000018, 0x80000001CFA5A6F0, 0xD00000000000001DLL, 0x80000001CFA5A710);
      swift_willThrow();
      v97(v100, v37);
    }

    goto LABEL_16;
  }

  __break(1u);
}

uint64_t sub_1CF79BC88@<X0>(int a1@<W0>, void *a2@<X8>)
{
  v14 = *MEMORY[0x1E69E9840];
  result = sub_1CF7A4D70(a1);
  if (result)
  {
    memset(&v13, 0, sizeof(v13));
    sub_1CF9E5A18();
    v4 = sub_1CF9E6978();

    v5 = lstat((v4 + 32), &v13);

    if (!v5)
    {
      st_mode = v13.st_mode;
      v7 = sub_1CF9E61C8() & st_mode;
      result = sub_1CF9E61C8();
      if (v7 == result)
      {
        memset(&v12, 0, sizeof(v12));
        sub_1CF9E5A18();
        v8 = sub_1CF9E6978();

        v9 = stat((v8 + 32), &v12);

        if (v9)
        {
          v10 = "target of symlink doesn't exists";
LABEL_11:
          *a2 = 0xD000000000000020;
          a2[1] = (v10 - 32) | 0x8000000000000000;
          goto LABEL_9;
        }

        if (v12.st_dev != v13.st_dev || v12.st_ino != v13.st_ino)
        {
          v10 = "symlink points to the wrong item";
          goto LABEL_11;
        }
      }
    }
  }

  *a2 = 0;
  a2[1] = 0;
LABEL_9:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1CF79BE08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v132 = a3;
  v123 = sub_1CF9E53C8();
  v122 = *(v123 - 8);
  v5 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v123);
  v121 = &v116[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1CF9E5A58();
  v8 = *(v7 - 8);
  v9 = v8[8];
  MEMORY[0x1EEE9AC00](v7);
  v130 = &v116[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v127 = &v116[-v12];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v116[-v14];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v116[-v17];
  v19 = sub_1CF9E6118();
  v134 = *(v19 - 8);
  v20 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v120 = &v116[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v22);
  v131 = &v116[-v23];
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v116[-v25];
  v27 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v28 = v8[2];
  v135 = a2;
  v28(v18, a2, v7);
  v136 = a1;
  v125 = v8 + 2;
  v124 = v28;
  v28(v15, a1, v7);
  v29 = sub_1CF9E6108();
  v30 = sub_1CF9E72C8();
  v31 = os_log_type_enabled(v29, v30);
  v128 = v8;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v119 = swift_slowAlloc();
    aBlock = v119;
    *v32 = 136446466;
    v118 = v29;
    v33 = sub_1CF9E5928();
    v34 = [v33 fp_shortDescription];
    v129 = v19;
    v35 = v34;

    v36 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v117 = v30;
    v38 = v37;

    v39 = v8[1];
    v39(v18, v7);
    v40 = sub_1CEFD0DF0(v36, v38, &aBlock);

    *(v32 + 4) = v40;
    *(v32 + 12) = 2082;
    v41 = sub_1CF9E5928();
    v42 = [v41 fp_shortDescription];

    v43 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v45 = v44;

    v19 = v129;
    v46 = v7;
    v126 = v39;
    v39(v15, v7);
    v47 = sub_1CEFD0DF0(v43, v45, &aBlock);
    v48 = v134;

    *(v32 + 14) = v47;
    v49 = v118;
    _os_log_impl(&dword_1CEFC7000, v118, v117, "create relocation symlink from %{public}s to %{public}s", v32, 0x16u);
    v50 = v119;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v50, -1, -1);
    MEMORY[0x1D386CDC0](v32, -1, -1);
  }

  else
  {

    v51 = v8[1];
    v51(v15, v7);
    v52 = v18;
    v46 = v7;
    v126 = v51;
    v51(v52, v7);
    v48 = v134;
  }

  v53 = *(v48 + 8);
  v53(v26, v19);
  sub_1CF9E5A18();
  sub_1CF9E5A18();
  v54 = sub_1CF9E6978();

  v55 = sub_1CF9E6978();

  v56 = symlink((v54 + 32), (v55 + 32));

  if (v56 && MEMORY[0x1D38683F0](v57) != 17)
  {
    v133 = v53;
    v68 = fpfs_current_or_default_log();
    v69 = v131;
    sub_1CF9E6128();
    v70 = v127;
    v71 = v124;
    v124(v127, v135, v46);
    v72 = v130;
    v71(v130, v136, v46);
    v73 = sub_1CF9E6108();
    v74 = sub_1CF9E72A8();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v135 = v46;
      v76 = v70;
      v77 = v75;
      v78 = swift_slowAlloc();
      v129 = v19;
      v136 = v78;
      aBlock = v78;
      *v77 = 136315650;
      v79 = sub_1CF9E5928();
      v80 = [v79 fp_shortDescription];

      v81 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v83 = v82;

      v84 = v76;
      v85 = v135;
      v86 = v126;
      v126(v84, v135);
      v87 = sub_1CEFD0DF0(v81, v83, &aBlock);

      *(v77 + 4) = v87;
      *(v77 + 12) = 2080;
      v88 = v130;
      v89 = sub_1CF9E5928();
      v90 = [v89 fp_shortDescription];

      v91 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v93 = v92;

      v86(v88, v85);
      v94 = sub_1CEFD0DF0(v91, v93, &aBlock);

      *(v77 + 14) = v94;
      *(v77 + 22) = 1024;
      *(v77 + 24) = MEMORY[0x1D38683F0](v95);
      _os_log_impl(&dword_1CEFC7000, v73, v74, "cannot create symlink from %s to %s: %{darwin.errno}d", v77, 0x1Cu);
      v96 = v136;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v96, -1, -1);
      MEMORY[0x1D386CDC0](v77, -1, -1);

      v97 = v131;
      v98 = v129;
    }

    else
    {

      v99 = v126;
      v126(v72, v46);
      v99(v70, v46);
      v97 = v69;
      v98 = v19;
    }

    v133(v97, v98);
  }

  else
  {
    v58 = v135;
    v59 = v19;
    v60 = sub_1CF9E5A18();
    MEMORY[0x1EEE9AC00](v60);
    v61 = v136;
    *&v116[-32] = v58;
    *&v116[-24] = v61;
    v114 = v132;
    v115 = v133;
    v144 = 0;
    v145 = 0;
    v146 = 256;
    v62 = swift_allocObject();
    *(v62 + 16) = &v145;
    *(v62 + 24) = sub_1CF7A4D44;
    *(v62 + 32) = &v116[-48];
    *(v62 + 40) = &v144;
    v63 = swift_allocObject();
    *(v63 + 16) = sub_1CF7A4D64;
    *(v63 + 24) = v62;
    v142 = sub_1CF50EB9C;
    v143 = v63;
    aBlock = MEMORY[0x1E69E9820];
    v139 = 1107296256;
    v140 = sub_1CF005DF8;
    v141 = &block_descriptor_54;
    v64 = _Block_copy(&aBlock);

    sub_1CF9E6978();
    v65 = fpfs_openat();

    _Block_release(v64);

    LOBYTE(v62) = swift_isEscapingClosureAtFileLocation();

    if (v62)
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v67 = v144;
    if (v144)
    {
      swift_willThrow();

LABEL_13:

      return;
    }

    if ((v65 & 0x80000000) == 0)
    {
      if ((v146 & 0x100) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_25;
    }

    if (!MEMORY[0x1D38683F0](v66))
    {
LABEL_26:
      aBlock = 0;
      v139 = 0xE000000000000000;
      sub_1CF9E7948();

      aBlock = 0xD00000000000001ALL;
      v139 = 0x80000001CFA2DF30;
      v137 = v65;
      v104 = sub_1CF9E7F98();
      MEMORY[0x1D3868CC0](v104);

      MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
      v105 = v139;
      v136 = aBlock;
      v106 = fpfs_current_or_default_log();
      sub_1CF9E6128();

      v107 = sub_1CF9E6108();
      v108 = sub_1CF9E72B8();

      if (os_log_type_enabled(v107, v108))
      {
        v109 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        aBlock = v110;
        *v109 = 136315650;
        v111 = sub_1CF9E7988();
        v113 = sub_1CEFD0DF0(v111, v112, &aBlock);

        *(v109 + 4) = v113;
        *(v109 + 12) = 2048;
        *(v109 + 14) = 315;
        *(v109 + 22) = 2080;
        *(v109 + 24) = sub_1CEFD0DF0(v136, v105, &aBlock);
        _os_log_impl(&dword_1CEFC7000, v107, v108, "[ASSERT] ‼️  %s:%lu: %s", v109, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v110, -1, -1);
        MEMORY[0x1D386CDC0](v109, -1, -1);
      }

      v53(v120, v59);
      LODWORD(v115) = 0;
      v114 = 315;
      sub_1CF9E7B68();
      __break(1u);
      return;
    }

    if (MEMORY[0x1D38683F0]() == 9939394)
    {
      v100 = [objc_opt_self() fp:2 errorForDataProtectionClass:?];
    }

    else
    {
      MEMORY[0x1D38683F0]();
      v101 = sub_1CF9E6138();
      if ((v101 & 0x100000000) != 0)
      {
        LODWORD(aBlock) = 22;
      }

      else
      {
        LODWORD(aBlock) = v101;
      }

      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF7A4E50(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
      v102 = v121;
      v103 = v123;
      sub_1CF9E57D8();
      v100 = sub_1CF9E53A8();
      (*(v122 + 8))(v102, v103);
    }

    swift_willThrow();
  }
}

uint64_t sub_1CF79CB94@<X0>(int a1@<W0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, NSObject *a4@<X3>, void *a5@<X8>)
{
  v115 = a4;
  v119 = a3;
  LODWORD(v116) = a1;
  v124 = a5;
  v128 = *MEMORY[0x1E69E9840];
  v6 = sub_1CF9E5A58();
  v7 = *(v6 - 8);
  v122 = v6;
  v123 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v117 = (&v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v114 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v114 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v114 - v17;
  v19 = sub_1CF9E6118();
  v120 = *(v19 - 8);
  v121 = v19;
  v20 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v118 = &v114 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v114 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = (&v114 - v26);
  memset(&v125, 0, sizeof(v125));
  v28 = a2;
  sub_1CF9E5A18();
  v29 = sub_1CF9E6978();

  LODWORD(a2) = stat((v29 + 32), &v125);

  if (a2)
  {
    v30 = fpfs_current_or_default_log();
    v24 = v118;
    sub_1CF9E6128();
    v31 = v122;
    v32 = v123;
    v33 = v117;
    (*(v123 + 16))(v117, v28, v122);
    v34 = sub_1CF9E6108();
    v35 = sub_1CF9E72A8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      LODWORD(v119) = v35;
      v37 = v36;
      v116 = swift_slowAlloc();
      *&v127.st_dev = v116;
      *v37 = 136315394;
      v115 = v34;
      v38 = sub_1CF9E5928();
      v39 = v31;
      v40 = [v38 fp_shortDescription];

      v41 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v43 = v42;

      (*(v32 + 8))(v33, v39);
      v44 = sub_1CEFD0DF0(v41, v43, &v127.st_dev);

      *(v37 + 4) = v44;
      *(v37 + 12) = 1024;
      *(v37 + 14) = MEMORY[0x1D38683F0](v45);
      v46 = v115;
      _os_log_impl(&dword_1CEFC7000, v115, v119, "cannot stat target of symlink at %s: %{darwin.errno}d", v37, 0x12u);
      v47 = v116;
      __swift_destroy_boxed_opaque_existential_1(v116);
      MEMORY[0x1D386CDC0](v47, -1, -1);
      MEMORY[0x1D386CDC0](v37, -1, -1);
    }

    else
    {

      (*(v32 + 8))(v33, v31);
    }

    goto LABEL_18;
  }

  v117 = v28;
  v118 = v18;
  v48 = v12;
  v49 = v122;
  v50 = v123;
  memset(&v127, 0, sizeof(v127));
  sub_1CF9E5A18();
  v51 = sub_1CF9E6978();

  v52 = lstat((v51 + 32), &v127);

  if (!v52)
  {
    v71 = v119;
    if (v125.st_dev != v127.st_dev || v125.st_ino != v127.st_ino)
    {
      v83 = fpfs_current_or_default_log();
      v84 = v27;
      sub_1CF9E6128();
      v85 = *(v50 + 16);
      v86 = v118;
      v85(v118, v117, v49);
      v85(v15, v71, v49);
      v87 = sub_1CF9E6108();
      v88 = sub_1CF9E72A8();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        v119 = v84;
        v90 = v89;
        v117 = swift_slowAlloc();
        v126 = v117;
        *v90 = 136315394;
        LODWORD(v116) = v88;
        v91 = sub_1CF9E5928();
        v92 = [v91 fp_shortDescription];
        v114 = v15;
        v93 = v92;

        v94 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v115 = v87;
        v95 = v86;
        v97 = v96;

        v98 = *(v50 + 8);
        v99 = v95;
        v100 = v49;
        v98(v99, v49);
        v101 = sub_1CEFD0DF0(v94, v97, &v126);

        *(v90 + 4) = v101;
        *(v90 + 12) = 2080;
        v102 = v114;
        v103 = sub_1CF9E5928();
        v104 = [v103 fp_shortDescription];

        v105 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v107 = v106;

        v98(v102, v100);
        v108 = sub_1CEFD0DF0(v105, v107, &v126);

        *(v90 + 14) = v108;
        v109 = v115;
        _os_log_impl(&dword_1CEFC7000, v115, v116, "symlink at %s doesn't target %s", v90, 0x16u);
        v110 = v117;
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v110, -1, -1);
        MEMORY[0x1D386CDC0](v90, -1, -1);

        result = (*(v120 + 8))(v119, v121);
      }

      else
      {

        v111 = *(v50 + 8);
        v111(v15, v49);
        v111(v86, v49);
        result = (*(v120 + 8))(v84, v121);
      }

      goto LABEL_19;
    }

    v72 = v115;
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    sub_1CF9E6978();

    fpfs_set_is_ignore_root();

    v73 = v72;
    v74 = [v73 pathComponents];
    v75 = sub_1CF9E6D48();

    v76 = *(v75 + 16);

    if (v76 >= 2)
    {
      v77 = [v73 stringByDeletingLastPathComponent];
      if (!v77)
      {
        _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v77 = sub_1CF9E6888();
      }

      v73 = v77;
    }

    v78 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v80 = v79;

    if (v78 == 0xD00000000000002BLL && 0x80000001CFA30030 == v80)
    {
    }

    else
    {
      v112 = sub_1CF9E8048();

      if ((v112 & 1) == 0)
      {
LABEL_26:
        fpfs_fsetxattr();
        fpfs_fset_acl();
        result = fpfs_fset_acl();
        v113 = v124;
        *v124 = 0;
        *(v113 + 8) = 0;
        goto LABEL_20;
      }
    }

    fpfs_fchflags();
    goto LABEL_26;
  }

  v53 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v54 = v48;
  v55 = v48;
  v56 = v49;
  (*(v50 + 16))(v55, v119, v49);
  v57 = sub_1CF9E6108();
  v58 = sub_1CF9E72A8();
  if (!os_log_type_enabled(v57, v58))
  {

    (*(v50 + 8))(v54, v56);
LABEL_18:
    result = (*(v120 + 8))(v24, v121);
    goto LABEL_19;
  }

  v59 = swift_slowAlloc();
  v119 = swift_slowAlloc();
  v126 = v119;
  *v59 = 136315394;
  LODWORD(v117) = v58;
  v60 = sub_1CF9E5928();
  v61 = [v60 fp_shortDescription];
  v118 = v24;
  v62 = v56;
  v63 = v61;

  v64 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v66 = v65;

  (*(v50 + 8))(v54, v62);
  v67 = sub_1CEFD0DF0(v64, v66, &v126);

  *(v59 + 4) = v67;
  *(v59 + 12) = 1024;
  *(v59 + 14) = MEMORY[0x1D38683F0](v68);
  _os_log_impl(&dword_1CEFC7000, v57, v117, "cannot stat relocated folder at %s: %{darwin.errno}d", v59, 0x12u);
  v69 = v119;
  __swift_destroy_boxed_opaque_existential_1(v119);
  MEMORY[0x1D386CDC0](v69, -1, -1);
  MEMORY[0x1D386CDC0](v59, -1, -1);

  result = (*(v120 + 8))(v118, v121);
LABEL_19:
  v81 = v124;
  *v124 = -1;
  *(v81 + 8) = 0;
LABEL_20:
  v82 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1CF79D5D8(uint64_t a1, void *a2, uint64_t a3, NSObject *a4, void (*a5)(_BYTE *, uint64_t), _BYTE *a6)
{
  v903 = a6;
  v931 = a5;
  v936 = a4;
  *&v933 = a3;
  v941 = a1;
  v966 = *MEMORY[0x1E69E9840];
  v906 = sub_1CF9E5CF8();
  v913 = *(v906 - 8);
  v7 = *(v913 + 64);
  MEMORY[0x1EEE9AC00](v906);
  v898 = &v861[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v897 = &v861[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v901 = &v861[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v900 = &v861[-v15];
  MEMORY[0x1EEE9AC00](v16);
  v939 = &v861[-v17];
  MEMORY[0x1EEE9AC00](v18);
  v907 = &v861[-v19];
  MEMORY[0x1EEE9AC00](v20);
  v911 = &v861[-v21];
  MEMORY[0x1EEE9AC00](v22);
  v905 = &v861[-v23];
  MEMORY[0x1EEE9AC00](v24);
  v937 = &v861[-v25];
  MEMORY[0x1EEE9AC00](v26);
  v910 = &v861[-v27];
  v909 = type metadata accessor for ItemMetadata();
  v28 = *(*(v909 - 8) + 64);
  MEMORY[0x1EEE9AC00](v909);
  v908 = &v861[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v30);
  v918 = &v861[-v31];
  v891 = sub_1CF9E53C8();
  v893 = *(v891 - 8);
  v32 = v893[8];
  MEMORY[0x1EEE9AC00](v891);
  v892 = &v861[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v925 = sub_1CF9E6118();
  v923 = *(v925 - 8);
  v34 = *(v923 + 64);
  MEMORY[0x1EEE9AC00](v925);
  v872 = &v861[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v36);
  v890 = &v861[-v37];
  MEMORY[0x1EEE9AC00](v38);
  v895 = &v861[-v39];
  MEMORY[0x1EEE9AC00](v40);
  v896 = &v861[-v41];
  MEMORY[0x1EEE9AC00](v42);
  v881 = &v861[-v43];
  MEMORY[0x1EEE9AC00](v44);
  v883 = &v861[-v45];
  MEMORY[0x1EEE9AC00](v46);
  v912 = &v861[-v47];
  MEMORY[0x1EEE9AC00](v48);
  v920 = &v861[-v49];
  MEMORY[0x1EEE9AC00](v50);
  v921 = &v861[-v51];
  MEMORY[0x1EEE9AC00](v52);
  v902 = &v861[-v53];
  MEMORY[0x1EEE9AC00](v54);
  v879 = &v861[-v55];
  MEMORY[0x1EEE9AC00](v56);
  v877 = &v861[-v57];
  MEMORY[0x1EEE9AC00](v58);
  v874 = &v861[-v59];
  MEMORY[0x1EEE9AC00](v60);
  v882 = &v861[-v61];
  MEMORY[0x1EEE9AC00](v62);
  v886 = &v861[-v63];
  MEMORY[0x1EEE9AC00](v64);
  v889 = &v861[-v65];
  v943 = sub_1CF9E5A58();
  v935 = *(v943 - 8);
  v66 = *(v935 + 64);
  MEMORY[0x1EEE9AC00](v943);
  v871 = &v861[-((v67 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v68);
  v878 = &v861[-v69];
  MEMORY[0x1EEE9AC00](v70);
  v934 = &v861[-v71];
  MEMORY[0x1EEE9AC00](v72);
  v880 = &v861[-v73];
  MEMORY[0x1EEE9AC00](v74);
  v894 = &v861[-v75];
  MEMORY[0x1EEE9AC00](v76);
  v917 = &v861[-v77];
  MEMORY[0x1EEE9AC00](v78);
  v914 = &v861[-v79];
  MEMORY[0x1EEE9AC00](v80);
  v915 = &v861[-v81];
  MEMORY[0x1EEE9AC00](v82);
  v919 = &v861[-v83];
  MEMORY[0x1EEE9AC00](v84);
  v888 = &v861[-v85];
  MEMORY[0x1EEE9AC00](v86);
  v938 = &v861[-v87];
  MEMORY[0x1EEE9AC00](v88);
  v922 = &v861[-v89];
  MEMORY[0x1EEE9AC00](v90);
  v899 = &v861[-v91];
  MEMORY[0x1EEE9AC00](v92);
  v924 = &v861[-v93];
  MEMORY[0x1EEE9AC00](v94);
  v942 = &v861[-v95];
  MEMORY[0x1EEE9AC00](v96);
  v876 = &v861[-v97];
  MEMORY[0x1EEE9AC00](v98);
  v916 = &v861[-v99];
  MEMORY[0x1EEE9AC00](v100);
  v875 = &v861[-v101];
  MEMORY[0x1EEE9AC00](v102);
  v873 = &v861[-v103];
  MEMORY[0x1EEE9AC00](v104);
  v887 = &v861[-v105];
  MEMORY[0x1EEE9AC00](v106);
  v885 = &v861[-v107];
  MEMORY[0x1EEE9AC00](v108);
  v884 = &v861[-v109];
  MEMORY[0x1EEE9AC00](v110);
  v932 = &v861[-v111];
  v112 = sub_1CF9E5248();
  v113 = *(*(v112 - 8) + 64);
  MEMORY[0x1EEE9AC00](v112 - 8);
  v927 = &v861[-((v114 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v929 = sub_1CF9E5268();
  v926 = *(v929 - 8);
  v115 = *(v926 + 64);
  MEMORY[0x1EEE9AC00](v929);
  v928 = &v861[-((v116 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v118 = *(*(v117 - 8) + 64);
  MEMORY[0x1EEE9AC00](v117 - 8);
  v904 = &v861[-((v119 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v120);
  v122 = &v861[-v121];
  MEMORY[0x1EEE9AC00](v123);
  v125 = &v861[-v124];
  MEMORY[0x1EEE9AC00](v126);
  v128 = &v861[-v127];
  MEMORY[0x1EEE9AC00](v129);
  v131 = &v861[-v130];
  v132 = objc_opt_self();
  v133 = [v132 defaultManager];
  v134 = v940;
  sub_1CF79ABBC(a2, v131);
  v940 = v134;
  if (v134)
  {

    goto LABEL_248;
  }

  v866 = v125;
  v867 = v128;
  v864 = v122;
  v869 = v132;
  v870 = v133;
  *&v930 = a2;
  v135 = (v935 + 48);
  v136 = *(v935 + 48);
  v137 = v943;
  v138 = v136(v131, 1, v943);
  v139 = v933;
  if (v138 != 1 && v136(v933, 1, v137) != 1)
  {
    sub_1CF9E5128();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF7A4E50(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    v153 = v928;
    v154 = v929;
    sub_1CF9E57D8();
    sub_1CF9E50D8();
    (*(v926 + 8))(v153, v154);
    swift_willThrow();

    goto LABEL_15;
  }

  v140 = v936 >> 62;
  v141 = v870;
  if (v936 >> 62)
  {
    v142 = sub_1CF9E7818();
  }

  else
  {
    v142 = *((v936 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v143 = v930;
  if (v142 >= 1 && v136(v139, 1, v137) == 1)
  {
    sub_1CF9E50F8();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF7A4E50(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    v144 = v928;
    v145 = v929;
    sub_1CF9E57D8();
    sub_1CF9E50D8();
    (*(v926 + 8))(v144, v145);
    swift_willThrow();

LABEL_15:
    v155 = v131;
    goto LABEL_247;
  }

  v868 = v131;
  v146 = [v143 provider];
  if (v146)
  {
    v147 = v146;
    v148 = [v146 identifier];

    v149 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v151 = v150;

    if (v149 == 0xD00000000000002BLL && 0x80000001CFA30030 == v151)
    {
      v152 = 1;
    }

    else
    {
      v152 = sub_1CF9E8048();
    }

    v156 = v867;
  }

  else
  {
    v152 = 0;
    v156 = v867;
  }

  sub_1CEFCCBDC(v139, v156, &unk_1EC4BE310, qword_1CF9FCBE0);
  v867 = v135;
  v157 = v136(v156, 1, v137);
  v158 = v932;
  v865 = v136;
  v863 = v140;
  if (v157 == 1)
  {
    sub_1CEFCCC44(v156, &unk_1EC4BE310, qword_1CF9FCBE0);
    v159 = 0;
  }

  else
  {
    v160 = v152;
    v161 = v935;
    (*(v935 + 32))(v932, v156, v137);
    v162 = sub_1CF9E5928();
    v163 = sub_1CF9E5928();
    v164 = [v162 fp:v163 relationshipToItemAtURL:?];

    v165 = v161;
    v152 = v160;
    (*(v165 + 8))(v158, v137);
    v159 = (v164 == 1) & v160;
  }

  v166 = v939;
  v167 = [v869 defaultManager];
  sub_1CF9E5A18();
  v168 = sub_1CF9E6888();

  v169 = [v167 fileExistsAtPath_];

  if (!v169 || (v159 & 1) != 0)
  {
    LODWORD(v885) = 0;
    v862 = v159;
    v175 = v868;
LABEL_28:
    v176 = v938;
    goto LABEL_29;
  }

  v170 = v865(v933, 1, v943);
  v171 = v940;
  if (v170 != 1)
  {
    sub_1CF9E5128();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF7A4E50(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    v182 = v928;
    v183 = v929;
    sub_1CF9E57D8();
    sub_1CF9E50D8();
    (*(v926 + 8))(v182, v183);
    swift_willThrow();
    goto LABEL_244;
  }

  v172 = v152;
  v173 = sub_1CF7A4B00(v931, 1);
  if (v171)
  {
    v174 = v870;
    goto LABEL_245;
  }

  v222 = v173;
  v940 = 0;
  v862 = v159;
  if (v173)
  {
    v223 = v173;
    v224 = [v930 providerDomainID];
    v225 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v227 = v226;
    if (v225 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v227 == v228)
    {

LABEL_82:
      LODWORD(v885) = 0;
      v175 = v868;
      v166 = v939;
      goto LABEL_28;
    }

    v932 = v222;
    v287 = sub_1CF9E8048();

    if (v287)
    {

      goto LABEL_82;
    }

    v315 = v223;
    v316 = [v315 pathComponents];
    v317 = sub_1CF9E6D48();

    v318 = *(v317 + 16);

    v319 = v315;
    v320 = v318 >= 2;
    v321 = v930;
    v322 = v887;
    if (v320)
    {
      v319 = [v315 stringByDeletingLastPathComponent];
      if (!v319)
      {
        _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v319 = sub_1CF9E6888();
      }
    }

    v323 = [v321 provider];
    if (v323)
    {
      v324 = v323;
      v325 = [v323 identifier];

      v326 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v328 = v327;
      if (v326 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v328 == v329)
      {

        v321 = v930;
        goto LABEL_189;
      }

      v618 = sub_1CF9E8048();

      v321 = v930;
      v322 = v887;
      if (v618)
      {
LABEL_189:
        v619 = [v321 provider];
        if (v619)
        {
          v620 = v619;
          v621 = v315;
          v622 = [v621 pathComponents];
          v623 = sub_1CF9E6D48();

          v624 = *(v623 + 16);

          if (v624 < 2)
          {
            v625 = *MEMORY[0x1E6967178];
          }

          else
          {
            v625 = [v621 lastPathComponent];
            if (!v625)
            {
              _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
              v625 = sub_1CF9E6888();
            }
          }

          v733 = [v620 domainForIdentifier:v625 reason:0];
          if (v733)
          {

            v734 = fpfs_current_or_default_log();
            v199 = v874;
            sub_1CF9E6128();
            v166 = v935;
            v198 = v873;
            v197 = v943;
            (*(v935 + 16))(v873, v931, v943);
            v184 = v621;
            v735 = v930;
            v200 = sub_1CF9E6108();
            v736 = sub_1CF9E72B8();

            if (os_log_type_enabled(v200, v736))
            {
              v737 = swift_slowAlloc();
              v938 = v184;
              LODWORD(v940) = v736;
              v738 = v198;
              v739 = v737;
              v942 = swift_slowAlloc();
              *&v949.st_dev = v942;
              *v739 = 136446722;
              v939 = v200;
              v740 = sub_1CF9E5928();
              v741 = [v740 fp_shortDescription];

              v742 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
              v744 = v743;

              (v166[1])(v738, v197);
              v745 = sub_1CEFD0DF0(v742, v744, &v949.st_dev);

              *(v739 + 4) = v745;
              *(v739 + 12) = 2082;
              v746 = v938;
              v747 = [(os_log_t *)v938 fp_obfuscatedProviderDomainID];
              v748 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
              v750 = v749;

              v751 = sub_1CEFD0DF0(v748, v750, &v949.st_dev);
              v297 = v746;

              *(v739 + 14) = v751;
              *(v739 + 22) = 2082;
              v752 = [v735 providerDomainID];
              v753 = [v752 fp_obfuscatedProviderDomainID];

              v754 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
              v756 = v755;

              v757 = sub_1CEFD0DF0(v754, v756, &v949.st_dev);

              *(v739 + 24) = v757;
              v758 = v939;
              _os_log_impl(&dword_1CEFC7000, v939, v940, "attempting create a domain root at %{public}s, but that path already exists and is owned by existing domain %{public}s, expected %{public}s", v739, 0x20u);
              v759 = v942;
              swift_arrayDestroy();
              MEMORY[0x1D386CDC0](v759, -1, -1);
              MEMORY[0x1D386CDC0](v739, -1, -1);

              (*(v923 + 8))(v874, v925);
            }

            else
            {
LABEL_240:

              (v166[1])(v198, v197);
              (*(v923 + 8))(v199, v925);
              v297 = v184;
            }

            v660 = "root_owned_by_existing_domain";
            v949.st_dev = 17;
            v661 = MEMORY[0x1E69E7CC0];
            sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
            sub_1CF7A4E50(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
            v828 = v891;
            v829 = v892;
            sub_1CF9E57D8();
            v663 = sub_1CF9E53A8();
            (v893[1])(v829, v828);
            v666 = 0xD00000000000001BLL;
            v664 = 0xD00000000000001DLL;
            v665 = 0x80000001CFA5AA30;
            goto LABEL_242;
          }
        }

        v760 = fpfs_current_or_default_log();
        v761 = v877;
        sub_1CF9E6128();
        v762 = v875;
        v763 = v943;
        (*(v935 + 16))(v875, v931, v943);
        v764 = v315;
        v765 = v930;
        v766 = sub_1CF9E6108();
        v767 = sub_1CF9E72B8();
        v889 = v765;

        v768 = v764;
        if (os_log_type_enabled(v766, v767))
        {
          v769 = v762;
          v770 = swift_slowAlloc();
          v887 = swift_slowAlloc();
          *&v949.st_dev = v887;
          *v770 = 136446722;
          v886 = v766;
          v771 = sub_1CF9E5928();
          v772 = [v771 fp_shortDescription];
          LODWORD(v885) = v767;
          v773 = v772;

          v774 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v776 = v775;

          (*(v935 + 8))(v769, v943);
          v777 = sub_1CEFD0DF0(v774, v776, &v949.st_dev);

          *(v770 + 4) = v777;
          *(v770 + 12) = 2082;
          v778 = [v764 fp_obfuscatedProviderDomainID];
          v779 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v781 = v780;

          v782 = sub_1CEFD0DF0(v779, v781, &v949.st_dev);
          v768 = v764;

          *(v770 + 14) = v782;
          *(v770 + 22) = 2082;
          v783 = [v889 providerDomainID];
          v784 = [v783 fp_obfuscatedProviderDomainID];

          v785 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v787 = v786;

          v788 = sub_1CEFD0DF0(v785, v787, &v949.st_dev);

          *(v770 + 24) = v788;
          v789 = v886;
          _os_log_impl(&dword_1CEFC7000, v886, v885, "attempting create a domain root at %{public}s, but that path already exists and is owned by missing domain %{public}s, expected %{public}s", v770, 0x20u);
          v790 = v887;
          swift_arrayDestroy();
          MEMORY[0x1D386CDC0](v790, -1, -1);
          MEMORY[0x1D386CDC0](v770, -1, -1);

          (*(v923 + 8))(v877, v925);
        }

        else
        {

          (*(v935 + 8))(v762, v763);
          (*(v923 + 8))(v761, v925);
        }

        v791 = v891;
        v891 = "rootIsOwnedByDifferentProvider";
        v949.st_dev = 17;
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF7A4E50(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
        v792 = v892;
        sub_1CF9E57D8();
        v793 = sub_1CF9E53A8();
        (v893[1])(v792, v791);
        sub_1CF79AF1C(0xD00000000000001CLL, v891 | 0x8000000000000000, 0xD00000000000001ALL, 0x80000001CFA5AA10);

        v166 = v939;
        v176 = v938;
        v551 = v932;
        v175 = v868;
        goto LABEL_148;
      }
    }

    else
    {
    }

    v626 = fpfs_current_or_default_log();
    v627 = v882;
    sub_1CF9E6128();
    v628 = v935;
    v629 = v943;
    (*(v935 + 16))(v322, v931, v943);
    v630 = v315;
    v631 = v321;
    v632 = sub_1CF9E6108();
    v633 = sub_1CF9E72B8();

    if (os_log_type_enabled(v632, v633))
    {
      v634 = swift_slowAlloc();
      v938 = v630;
      v635 = v322;
      v636 = v634;
      v942 = swift_slowAlloc();
      *&v949.st_dev = v942;
      *v636 = 136446722;
      v940 = v632;
      v637 = sub_1CF9E5928();
      v638 = [v637 fp_shortDescription];
      v639 = v629;
      LODWORD(v939) = v633;
      v640 = v638;

      v641 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v643 = v642;

      (*(v628 + 8))(v635, v639);
      v644 = sub_1CEFD0DF0(v641, v643, &v949.st_dev);

      *(v636 + 4) = v644;
      *(v636 + 12) = 2082;
      v645 = v938;
      v646 = [(os_log_t *)v938 fp_obfuscatedProviderDomainID];
      v647 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v649 = v648;

      v650 = sub_1CEFD0DF0(v647, v649, &v949.st_dev);
      v297 = v645;

      *(v636 + 14) = v650;
      *(v636 + 22) = 2082;
      v651 = [v631 providerDomainID];
      v652 = [v651 fp_obfuscatedProviderDomainID];

      v653 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v655 = v654;

      v656 = sub_1CEFD0DF0(v653, v655, &v949.st_dev);

      *(v636 + 24) = v656;
      v657 = v940;
      _os_log_impl(&dword_1CEFC7000, v940, v939, "attempting create a domain root at %{public}s, but that path already exists and is owned by a different provider %{public}s, expected %{public}s", v636, 0x20u);
      v658 = v942;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v658, -1, -1);
      MEMORY[0x1D386CDC0](v636, -1, -1);

      (*(v923 + 8))(v882, v925);
      v659 = v892;
    }

    else
    {

      (*(v628 + 8))(v322, v629);
      (*(v923 + 8))(v627, v925);
      v659 = v892;
      v297 = v630;
    }

    v660 = "fferent_provider";
    v949.st_dev = 17;
    v661 = MEMORY[0x1E69E7CC0];
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF7A4E50(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
    v662 = v891;
    sub_1CF9E57D8();
    v663 = sub_1CF9E53A8();
    (v893[1])(v659, v662);
    v664 = 0xD000000000000020;
    v665 = 0x80000001CFA5A9A0;
    v666 = 0xD00000000000001ELL;
LABEL_242:
    sub_1CF79AF1C(v664, v665, v666, v660 | 0x8000000000000000);

    sub_1CF9E5128();
    sub_1CF4C5FCC(v661);
    sub_1CF7A4E50(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    v830 = v928;
    v831 = v929;
    sub_1CF9E57D8();
    sub_1CF9E50D8();
    (*(v926 + 8))(v830, v831);
    swift_willThrow();
    goto LABEL_243;
  }

  v269 = fpfs_current_or_default_log();
  v270 = (v935 + 16);
  if (v172)
  {
    v271 = v886;
    sub_1CF9E6128();
    v272 = v885;
    v273 = v943;
    (*v270)(v885, v931, v943);
    v274 = sub_1CF9E6108();
    v275 = sub_1CF9E72A8();
    if (os_log_type_enabled(v274, v275))
    {
      v276 = swift_slowAlloc();
      v889 = v276;
      v932 = swift_slowAlloc();
      *&v949.st_dev = v932;
      *v276 = 136446210;
      v277 = sub_1CF9E5928();
      v278 = v272;
      v279 = [v277 fp_shortDescription];

      v280 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v282 = v281;

      (*(v935 + 8))(v278, v943);
      v283 = sub_1CEFD0DF0(v280, v282, &v949.st_dev);

      v284 = v889;
      *(v889 + 4) = v283;
      v285 = v284;
      _os_log_impl(&dword_1CEFC7000, v274, v275, "taking over domain root at %{public}s, the path already exists and is not owned by anyone", v284, 0xCu);
      v286 = v932;
      __swift_destroy_boxed_opaque_existential_1(v932);
      MEMORY[0x1D386CDC0](v286, -1, -1);
      MEMORY[0x1D386CDC0](v285, -1, -1);
    }

    else
    {

      (*(v935 + 8))(v272, v273);
    }

    (*(v923 + 8))(v271, v925);
    v548 = v891;
    v949.st_dev = 17;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF7A4E50(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
    v549 = v892;
    sub_1CF9E57D8();
    v550 = sub_1CF9E53A8();
    (v893[1])(v549, v548);
    sub_1CF79AF1C(0xD000000000000020, 0x80000001CFA5A950, 0xD00000000000001CLL, 0x80000001CFA5A980);

    LODWORD(v885) = 1;
    v166 = v939;
    v176 = v938;
    v175 = v868;
    goto LABEL_29;
  }

  v932 = 0;
  v299 = v889;
  sub_1CF9E6128();
  v300 = v884;
  v301 = v943;
  (*v270)(v884, v931, v943);
  v302 = sub_1CF9E6108();
  v303 = sub_1CF9E72B8();
  if (os_log_type_enabled(v302, v303))
  {
    v304 = swift_slowAlloc();
    v891 = v304;
    v893 = swift_slowAlloc();
    *&v949.st_dev = v893;
    *v304 = 136446210;
    LODWORD(v892) = v303;
    v305 = sub_1CF9E5928();
    v306 = [v305 fp_shortDescription];

    v307 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v309 = v308;

    v166 = v939;
    (*(v935 + 8))(v300, v301);
    v310 = sub_1CEFD0DF0(v307, v309, &v949.st_dev);

    v311 = v891;
    *(v891 + 4) = v310;
    v312 = v311;
    _os_log_impl(&dword_1CEFC7000, v302, v892, "attempting create a domain at %{public}s, but that path already exists and is not owned by anyone", v311, 0xCu);
    v313 = v893;
    __swift_destroy_boxed_opaque_existential_1(v893);
    MEMORY[0x1D386CDC0](v313, -1, -1);
    MEMORY[0x1D386CDC0](v312, -1, -1);

    (*(v923 + 8))(v889, v925);
  }

  else
  {

    (*(v935 + 8))(v300, v301);
    (*(v923 + 8))(v299, v925);
  }

  v175 = v868;
  v176 = v938;
  v551 = v932;
LABEL_148:
  v552 = v940;
  sub_1CF79B0F4(v931);
  if (v552)
  {

    v155 = v175;
    goto LABEL_247;
  }

  v940 = 0;

  LODWORD(v885) = 0;
LABEL_29:
  v177 = [v930 provider];
  if (v177)
  {
    v178 = v177;
    v179 = [v177 descriptor];

    v180 = [v179 localizedName];
    v886 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v887 = v181;
  }

  else
  {
    v886 = 0;
    v887 = 0xE000000000000000;
  }

  v184 = v937;
  v185 = v866;
  sub_1CEFCCBDC(v933, v866, &unk_1EC4BE310, qword_1CF9FCBE0);
  v186 = v943;
  if (v865(v185, 1, v943) != 1)
  {
    v188 = v175;
    v189 = v935;
    v190 = v916;
    (*(v935 + 32))(v916, v185, v186);
    v191 = [v869 defaultManager];
    sub_1CF9E5A18();
    v192 = sub_1CF9E6888();

    v193 = [v191 &selRef:v192 fp:?bundleRecord + 7];

    v194 = v186;
    if (!v193)
    {
      (*(v189 + 8))(v190, v186);
      v187 = v936;
      v166 = v939;
      v184 = v937;
      v176 = v938;
      goto LABEL_39;
    }

    v195 = v940;
    v196 = sub_1CF7A4B00(v190, 1);
    v187 = v936;
    v176 = v938;
    v197 = v934;
    if (v195)
    {
      (*(v935 + 8))(v190, v194);

      v155 = v188;
      goto LABEL_247;
    }

    v234 = v196;
    v940 = 0;
    if (!v196)
    {
      (*(v935 + 8))(v190, v194);
      v166 = v939;
      v184 = v937;
      goto LABEL_40;
    }

    v235 = [v930 providerDomainID];
    v932 = v234;
    v236 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v238 = v237;
    if (v236 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v238 == v239)
    {

LABEL_91:
      (*(v935 + 8))(v916, v194);

LABEL_92:
      v197 = v934;
      v166 = v939;
      v184 = v937;
      v176 = v938;
      goto LABEL_40;
    }

    v314 = sub_1CF9E8048();

    if (v314)
    {
      goto LABEL_91;
    }

    if (v862)
    {
      v569 = [v930 providerDomainID];
      v570 = [v569 pathComponents];
      v571 = sub_1CF9E6D48();

      v572 = *(v571 + 16);

      v573 = v569;
      v574 = v932;
      if (v572 >= 2)
      {
        v573 = [v569 stringByDeletingLastPathComponent];
        if (!v573)
        {
          _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v573 = sub_1CF9E6888();
          v574 = v932;
        }
      }

      v575 = v574;
      v576 = [v575 pathComponents];
      v577 = sub_1CF9E6D48();

      v578 = *(v577 + 16);

      v579 = v575;
      if (v578 >= 2)
      {
        v579 = [v575 stringByDeletingLastPathComponent];
        if (!v579)
        {
          _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v579 = sub_1CF9E6888();
        }
      }

      v580 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v582 = v581;
      if (v580 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v582 == v583)
      {

LABEL_234:
        (*(v935 + 8))(v916, v194);

        v187 = v936;
        goto LABEL_92;
      }

      v797 = sub_1CF9E8048();

      if (v797)
      {
        goto LABEL_234;
      }
    }

    v798 = [v932 fp_obfuscatedProviderDomainID];
    v939 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v800 = v799;

    v801 = fpfs_current_or_default_log();
    v802 = v879;
    sub_1CF9E6128();
    v803 = v935;
    v804 = v876;
    v942 = *(v935 + 16);
    (v942)(v876, v916, v194);

    v805 = sub_1CF9E6108();
    v806 = sub_1CF9E72B8();

    LODWORD(v938) = v806;
    if (os_log_type_enabled(v805, v806))
    {
      v807 = swift_slowAlloc();
      v937 = swift_slowAlloc();
      *&v949.st_dev = v937;
      *v807 = 136446466;
      v808 = sub_1CF9E5928();
      v809 = [v808 fp_shortDescription];
      v936 = v805;
      v810 = v804;
      v811 = v809;

      v812 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v814 = v813;

      v815 = *(v803 + 8);
      v940 = ((v803 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
      v941 = v815;
      v815(v810, v943);
      v816 = sub_1CEFD0DF0(v812, v814, &v949.st_dev);
      v194 = v943;

      *(v807 + 4) = v816;
      *(v807 + 12) = 2082;
      v817 = sub_1CEFD0DF0(v939, v800, &v949.st_dev);

      *(v807 + 14) = v817;
      v818 = v936;
      _os_log_impl(&dword_1CEFC7000, v936, v938, "Attempting to import existing domain at %{public}s into new domain %{public}s", v807, 0x16u);
      v819 = v937;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v819, -1, -1);
      MEMORY[0x1D386CDC0](v807, -1, -1);

      (*(v923 + 8))(v879, v925);
    }

    else
    {

      v820 = *(v803 + 8);
      v940 = ((v803 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
      v941 = v820;
      v820(v804, v194);
      (*(v923 + 8))(v802, v925);
    }

    sub_1CF9E5148();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
    v821 = swift_allocObject();
    *(v821 + 16) = xmmword_1CF9FA450;
    v822 = *MEMORY[0x1E696A998];
    *(v821 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(v821 + 40) = v823;
    *(v821 + 72) = v194;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v821 + 48));
    v825 = v916;
    (v942)(boxed_opaque_existential_0, v916, v194);
    sub_1CF4E04E8(v821);
    swift_setDeallocating();
    sub_1CEFCCC44(v821 + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
    swift_deallocClassInstance();
    sub_1CF7A4E50(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    v826 = v928;
    v827 = v929;
    sub_1CF9E57D8();
    sub_1CF9E50D8();
    (*(v926 + 8))(v826, v827);
    swift_willThrow();

    (v941)(v825, v194);
    goto LABEL_246;
  }

  sub_1CEFCCC44(v185, &unk_1EC4BE310, qword_1CF9FCBE0);
  v187 = v936;
LABEL_39:
  v197 = v934;
LABEL_40:
  if (v863)
  {
    v893 = sub_1CF9E7818();
    if (!v893)
    {
      goto LABEL_60;
    }
  }

  else
  {
    v893 = *((v187 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v893)
    {
LABEL_60:
      v217 = v940;
      sub_1CF798A20(v930);
      if (v217)
      {

        sub_1CEFCCC44(v868, &unk_1EC4BE310, qword_1CF9FCBE0);
        goto LABEL_248;
      }

      v220 = v864;
      sub_1CEFCCBDC(v868, v864, &unk_1EC4BE310, qword_1CF9FCBE0);
      v221 = v943;
      if (v865(v220, 1, v943) == 1)
      {
        sub_1CEFCCC44(v220, &unk_1EC4BE310, qword_1CF9FCBE0);
      }

      else
      {
        v229 = v935;
        v230 = v899;
        (*(v935 + 32))(v899, v220, v221);
        v231 = sub_1CF9E5928();
        v232 = sub_1CF9E5928();
        v233 = [v231 fp:v232 relationshipToItemAtURL:?];

        if (v233 == 1)
        {
          (*(v229 + 8))(v230, v221);
        }

        else
        {
          v288 = sub_1CF9E5928();
          v289 = sub_1CF9E5928();
          *&v949.st_dev = 0;
          v290 = [v870 moveItemAtURL:v288 toURL:v289 error:&v949];

          if (v290)
          {
            v291 = *(v935 + 8);
            v292 = *&v949.st_dev;
            v291(v230, v221);
          }

          else
          {
            v330 = *&v949.st_dev;
            v331 = sub_1CF9E57F8();

            swift_willThrow();
            (*(v935 + 8))(v230, v221);
          }
        }

        v197 = v934;
        v166 = v939;
        v184 = v937;
        v176 = v938;
      }

      v332 = v904;
      sub_1CEFCCBDC(v933, v904, &unk_1EC4BE310, qword_1CF9FCBE0);
      v333 = v865(v332, 1, v221);
      v334 = v910;
      v940 = 0;
      if (v333 == 1)
      {
        sub_1CEFCCC44(v332, &unk_1EC4BE310, qword_1CF9FCBE0);
        *v903 = 0;
        v335 = *(v941 + OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_volume);
        if (v335)
        {
          *&v949.st_dev = 0;
          v336 = [v335 rootURLForLocation:1 error:&v949];
          v337 = *&v949.st_dev;
          if (v336)
          {
            v338 = v888;
            v339 = v336;
            sub_1CF9E59D8();
            v340 = v337;

            v341 = v935;
            v342 = v943;
            v942 = *(v935 + 32);
            (v942)(v176, v338, v943);
            v343 = *(v341 + 16);
            v344 = v894;
            v343(v894, v931, v342);
            v345 = sub_1CF9E5928();
            v346 = sub_1CF9E5928();
            v347 = [v345 fp:v346 relationshipToItemAtURL:?];

            v348 = v347 == 0;
            v349 = [v930 provider];
            v350 = v868;
            if (v349)
            {
              v351 = v349;
              v352 = [v349 identifier];

              v353 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
              v355 = v354;
              v356 = [v352 fp_isiCloudDriveIdentifier];

              if (v356)
              {
                v939 = v353;
                v357 = [v869 defaultManager];
                v358 = v931;
                sub_1CF9E5A18();
                v359 = sub_1CF9E6888();

                [v357 fp:v359 createPathIfNeeded:?];

                v360 = fpfs_current_or_default_log();
                v361 = v881;
                sub_1CF9E6128();
                v362 = v880;
                v363 = v943;
                v343(v880, v358, v943);

                v364 = sub_1CF9E6108();
                v365 = sub_1CF9E7288();

                if (os_log_type_enabled(v364, v365))
                {
                  v366 = swift_slowAlloc();
                  v937 = swift_slowAlloc();
                  *&v949.st_dev = v937;
                  *v366 = 136446466;
                  v367 = sub_1CF9E5928();
                  v368 = [v367 fp_shortDescription];

                  v369 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                  v936 = v364;
                  v371 = v370;

                  v372 = *(v935 + 8);
                  LODWORD(v933) = v365;
                  v372(v880, v363);
                  v373 = sub_1CEFD0DF0(v369, v371, &v949.st_dev);

                  *(v366 + 4) = v373;
                  *(v366 + 12) = 2082;
                  v374 = sub_1CEFD0DF0(v939, v355, &v949.st_dev);

                  *(v366 + 14) = v374;
                  v375 = v936;
                  _os_log_impl(&dword_1CEFC7000, v936, v933, "creating %{public}s on disk for %{public}s", v366, 0x16u);
                  v376 = v937;
                  swift_arrayDestroy();
                  MEMORY[0x1D386CDC0](v376, -1, -1);
                  MEMORY[0x1D386CDC0](v366, -1, -1);

                  (*(v923 + 8))(v881, v925);
                }

                else
                {

                  v372 = *(v935 + 8);
                  v372(v362, v363);
                  (*(v923 + 8))(v361, v925);
                }

                v350 = v868;
                v667 = v924;
                sub_1CF9E5958();
                v668 = v894;
                v372(v894, v363);
                (v942)(v668, v667, v363);
                v348 = 0;
                v543 = v363;
                v344 = v668;
              }

              else
              {

                v350 = v868;
                v543 = v943;
                v344 = v894;
              }
            }

            else
            {
              v543 = v943;
            }

            v669 = v940;
            sub_1CF7A4E98(v344, v348);
            v670 = (v935 + 8);
            v542 = v895;
            v197 = v934;
            if (!v669)
            {
              v940 = 0;

              v693 = *v670;
              (*v670)(v344, v543);
              v693(v938, v543);
              *v903 = 1;
LABEL_254:
              sub_1CF9E5A18();
              fpfs_openflags_1(0x100000);
              sub_1CF9E6978();
              v841 = openat_s();

              if ((v841 & 0x80000000) == 0)
              {

                v843 = 16;
                if ((fpfs_fset_acl() & 0x80000000) == 0)
                {
                  v844 = *(v941 + OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_providerDomainID);
                  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                  v845 = v940;
                  sub_1CF2AF3BC(v841);
                  if (v845)
                  {

                    sub_1CEFCCC44(v350, &unk_1EC4BE310, qword_1CF9FCBE0);
                    close(v841);
                    goto LABEL_248;
                  }

                  v843 = 1024;
                  if ((fpfs_fset_acl() & 0x80000000) == 0)
                  {
                    close(v841);

                    sub_1CEFCCC44(v350, &unk_1EC4BE310, qword_1CF9FCBE0);
                    goto LABEL_248;
                  }
                }

                v847 = MEMORY[0x1D38683F0]();
                v949.st_dev = v843;
                LOBYTE(v949.st_atimespec.tv_nsec) = 4;
                sub_1CF19BBE4(v847, &v949.st_dev);
                sub_1CF1969CC(&v949);
                swift_willThrow();

                sub_1CEFCCC44(v350, &unk_1EC4BE310, qword_1CF9FCBE0);
                close(v841);
                goto LABEL_248;
              }

              v846 = MEMORY[0x1D38683F0](v842);
              memset(&v949, 0, 40);
              LOBYTE(v949.st_atimespec.tv_nsec) = 19;
              sub_1CF19BBE4(v846, &v949.st_dev);
              sub_1CF1969CC(&v949);
              swift_willThrow();

LABEL_259:
              v155 = v350;
              goto LABEL_247;
            }

            v671 = *v670;
            (*v670)(v344, v543);
            v671(v938, v543);
            v541 = v669;
            v940 = 0;
          }

          else
          {
            v540 = *&v949.st_dev;
            v541 = sub_1CF9E57F8();

            swift_willThrow();
            v940 = 0;
            v542 = v895;
            v350 = v868;
            v543 = v943;
          }

          v672 = v541;
          v949.st_dev = sub_1CF9E52E8();
          sub_1CF196978();
          v673 = sub_1CF9E5658();

          v674 = v890;
          if ((v673 & 1) == 0)
          {

            sub_1CEFCCC44(v350, &unk_1EC4BE310, qword_1CF9FCBE0);
            goto LABEL_248;
          }

          if ((v885 & 1) == 0)
          {

            v694 = fpfs_current_or_default_log();
            sub_1CF9E6128();
            v695 = v935;
            (*(v935 + 16))(v197, v931, v543);
            v696 = sub_1CF9E6108();
            v697 = sub_1CF9E72A8();
            if (os_log_type_enabled(v696, v697))
            {
              v698 = swift_slowAlloc();
              v941 = v698;
              v942 = swift_slowAlloc();
              *&v949.st_dev = v942;
              *v698 = 136446210;
              v699 = sub_1CF9E5928();
              v700 = v197;
              v701 = [v699 fp_shortDescription];

              v702 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
              v704 = v703;

              (*(v695 + 8))(v700, v543);
              v705 = sub_1CEFD0DF0(v702, v704, &v949.st_dev);

              v706 = v941;
              *(v941 + 4) = v705;
              v707 = v706;
              _os_log_impl(&dword_1CEFC7000, v696, v697, "can't create dataless root at %{public}s: file already exists", v706, 0xCu);
              v708 = v942;
              __swift_destroy_boxed_opaque_existential_1(v942);
              v350 = v868;
              MEMORY[0x1D386CDC0](v708, -1, -1);
              MEMORY[0x1D386CDC0](v707, -1, -1);

              (*(v923 + 8))(v895, v925);
            }

            else
            {

              (*(v695 + 8))(v197, v543);
              (*(v923 + 8))(v542, v925);
            }

            v730 = v929;
            v731 = v928;
            v732 = v926;
            sub_1CF9E5128();
            sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
            sub_1CF7A4E50(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
            sub_1CF9E57D8();
            sub_1CF9E50D8();
            (*(v732 + 8))(v731, v730);
            swift_willThrow();

            goto LABEL_259;
          }

          v675 = fpfs_current_or_default_log();
          sub_1CF9E6128();
          v676 = v935;
          v677 = *(v935 + 16);
          v678 = v878;
          v942 = v935 + 16;
          v939 = v677;
          (v677)(v878, v931, v543);
          v679 = sub_1CF9E6108();
          v680 = sub_1CF9E7288();
          if (os_log_type_enabled(v679, v680))
          {
            v681 = swift_slowAlloc();
            v937 = v681;
            v938 = swift_slowAlloc();
            *&v949.st_dev = v938;
            LODWORD(v681->isa) = 136446210;
            v682 = sub_1CF9E5928();
            v683 = [v682 fp_shortDescription];

            v684 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v685 = v678;
            v687 = v686;

            v688 = *(v676 + 8);
            v688(v685, v543);
            v689 = sub_1CEFD0DF0(v684, v687, &v949.st_dev);

            v690 = v937;
            *(&v937->isa + 4) = v689;
            v691 = v690;
            _os_log_impl(&dword_1CEFC7000, v679, v680, "taking over %{public}s", v690, 0xCu);
            v692 = v938;
            __swift_destroy_boxed_opaque_existential_1(v938);
            MEMORY[0x1D386CDC0](v692, -1, -1);
            MEMORY[0x1D386CDC0](v691, -1, -1);

            v418 = *(v923 + 8);
            (v418)(v890, v925);
          }

          else
          {

            v688 = *(v676 + 8);
            v688(v678, v543);
            v418 = *(v923 + 8);
            (v418)(v674, v925);
          }

          memset(&v949, 0, sizeof(v949));
          v709 = v931;
          sub_1CF9E5A18();
          v710 = sub_1CF9E6978();

          v711 = lstat((v710 + 32), &v949);

          if (v711 < 0 || (v949.st_flags & 0x40000000) == 0 || (v948 = 0, sub_1CF9E5A18(), sub_1CF9E6978(), , v712 = fpfs_num_entries(), , v712 < 0) || !v948)
          {
          }

          else
          {
            v713 = sub_1CF9E5928();
            v714 = sub_1CF9E6888();

            v957[0] = 0;
            v715 = FPWriteImportCookieForDomainURL();

            if ((v715 & 1) == 0)
            {
              v938 = v957[0];
              v716 = fpfs_current_or_default_log();
              sub_1CF9E6128();
              v717 = v871;
              v718 = v943;
              (v939)(v871, v709, v943);
              v719 = sub_1CF9E6108();
              LODWORD(v939) = sub_1CF9E72A8();
              v942 = v719;
              if (os_log_type_enabled(v719, v939))
              {
                v720 = swift_slowAlloc();
                v937 = swift_slowAlloc();
                v957[0] = v937;
                *v720 = 136446466;
                v721 = sub_1CF9E5928();
                v722 = [v721 fp_shortDescription];

                v723 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                v724 = v717;
                v726 = v725;

                v688(v724, v718);
                v727 = sub_1CEFD0DF0(v723, v726, v957);

                *(v720 + 4) = v727;
                v417 = v720;
                *(v720 + 12) = 2080;
                v420 = v938;
                if (v938)
                {
                  v946 = v938;
                  sub_1CF1B7E64();
                  sub_1CF7A4E50(&qword_1EC4BE010, sub_1CF1B7E64);
                  v413 = v420;
                  v728 = sub_1CF9E7FB8();
                  if (!v728)
                  {
                    goto LABEL_268;
                  }

                  v729 = v728;

                  goto LABEL_269;
                }

LABEL_266:
                v848 = 0x3E6C696E3CLL;
                v849 = 0xE500000000000000;
LABEL_270:
                v855 = sub_1CEFD0DF0(v848, v849, v957);

                *(v417 + 14) = v855;
                v856 = v942;
                _os_log_impl(&dword_1CEFC7000, v942, v939, "failed to write import cookie for domain %{public}s: %s", v417, 0x16u);
                v857 = v937;
                swift_arrayDestroy();
                MEMORY[0x1D386CDC0](v857, -1, -1);
                MEMORY[0x1D386CDC0](v417, -1, -1);

                (v418)(v872, v925);
              }

              else
              {

                v688(v717, v718);
                (v418)(v872, v925);
              }
            }
          }

          *v903 = 1;
        }

        else
        {
        }

        v350 = v868;
        goto LABEL_254;
      }

      (*(v935 + 32))(v922, v332, v221);
      v377 = *(v913 + 56);
      v378 = v906;
      v377(v334, 1, 1, v906);
      v377(v184, 1, 1, v378);
      v379 = v905;
      v377(v905, 1, 1, v378);
      sub_1CEFCCBDC(v334, v911, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      sub_1CEFCCBDC(v184, v907, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      sub_1CEFCCBDC(v379, v166, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      v381 = v908;
      v380 = v909;
      v382 = (v908 + *(v909 + 56));
      *v382 = 0;
      v382[1] = 0;
      v938 = v382;
      *(&v381->isa + v380[17]) = 2;
      v942 = v380[23];
      *(&v381->isa + v942) = 6;
      v932 = v380[30];
      v377((v381 + v932), 1, 1, v378);
      v934 = v381 + v380[34];
      v933 = xmmword_1CF9F4E20;
      *v934 = xmmword_1CF9F4E20;
      v383 = v381 + v380[37];
      v384 = (&v381->isa + v380[38]);
      *v384 = 0;
      v384[1] = 0;
      fpfs_supports_vfs_ignore_permissions_iopolicy();
      LOBYTE(v381->isa) = 1;
      *(&v381->isa + v380[20]) = 0;
      *(&v381->isa + v380[28]) = 0;
      *(&v381->isa + v380[29]) = 0;
      *(&v381->isa + v380[26]) = 0;
      *(&v381->isa + v380[27]) = 0;
      HIDWORD(v381->isa) = 0;
      LOBYTE(v381[1].isa) = 1;
      *v383 = 0;
      v383[4] = 1;
      v385 = v913;
      WORD1(v381[1].isa) = 493;
      v386 = v900;
      sub_1CEFCCBDC(v911, v900, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      v387 = *(v385 + 48);
      v388 = (v387)(v386, 1, v378);
      v916 = v387;
      if (v388 == 1)
      {
        v389 = v897;
        sub_1CF9E5C88();
        if ((v387)(v386, 1, v378) != 1)
        {
          sub_1CEFCCC44(v386, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
        }
      }

      else
      {
        v389 = v897;
        (*(v385 + 32))(v897, v386, v378);
      }

      v390 = *(v385 + 32);
      v390(v381 + v380[7], v389, v378);
      v391 = v907;
      v392 = v901;
      sub_1CEFCCBDC(v907, v901, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      v393 = v378;
      v394 = v916;
      v395 = (v916)(v392, 1, v393);
      v913 = v385 + 32;
      *&v930 = v390;
      if (v395 == 1)
      {
        v396 = v898;
        sub_1CF9E5C88();
        sub_1CEFCCC44(v391, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
        sub_1CEFCCC44(v911, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
        sub_1CEFCCC44(v905, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
        sub_1CEFCCC44(v937, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
        sub_1CEFCCC44(v910, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
        v397 = v906;
        v398 = v394(v392, 1, v906);
        v399 = v397;
        if (v398 != 1)
        {
          sub_1CEFCCC44(v392, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
          v399 = v397;
        }
      }

      else
      {
        sub_1CEFCCC44(v391, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
        sub_1CEFCCC44(v911, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
        sub_1CEFCCC44(v905, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
        sub_1CEFCCC44(v937, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
        sub_1CEFCCC44(v910, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
        v400 = v898;
        v401 = v906;
        v390(v898, v392, v906);
        v396 = v400;
        v399 = v401;
      }

      v402 = v908;
      v403 = v909;
      v404 = *(v909 + 124);
      v405 = v908 + *(v909 + 128);
      v406 = *(v909 + 132);
      v407 = v908 + *(v909 + 140);
      (v930)(v908 + *(v909 + 32), v396, v399);
      *(&v402->isa + v403[9]) = 0;
      *(&v402->isa + v403[10]) = 0;
      *(&v402->isa + v403[13]) = 0;
      *(&v402->isa + v403[19]) = 0;
      *(&v402->isa + v403[21]) = 0;
      *(&v402->isa + v403[15]) = 0;
      *(&v402->isa + v403[16]) = 0;
      *(&v402->isa + v403[11]) = 0;
      *(&v402->isa + v403[12]) = 0;
      *(&v402->isa + v403[18]) = 0;
      sub_1CEFDA9E0(v939, v402 + v932, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      *(&v402->isa + v404) = 0;
      *v405 = 0;
      v405[8] = 1;
      *(&v402->isa + v406) = 0;
      v408 = v938;
      v409 = v938[1];

      *v408 = 0;
      v408[1] = 0;
      v410 = v934;
      sub_1CEFE48D8(*v934, *(v934 + 1));
      *v410 = v933;
      *v407 = 0;
      v407[8] = 1;
      *(&v402->isa + v403[36]) = 0;
      *(&v402->isa + v403[24]) = 0;
      *(&v402->isa + v403[25]) = 0;
      *(&v402->isa + v403[22]) = 0;
      *(&v402->isa + v942) = 6;
      v411 = v918;
      sub_1CEFE4874(v402, v918);
      v411[v403[20]] = 1;
      v350 = v868;
      v413 = v922;
      v414 = v923;
      v415 = v943;
      v416 = v917;
      if (v893)
      {
        v417 = 0;
        v913 = OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_providerDomainID;
        v916 = (v936 & 0xC000000000000001);
        v909 = v936 & 0xFFFFFFFFFFFFFF8;
        v938 = (v923 + 8);
        v418 = (v935 + 8);
        v926 += 8;
        *&v412 = 136446466;
        v930 = v412;
        v942 = v935 + 8;
        while (1)
        {
          if (v916)
          {
            v419 = MEMORY[0x1D3869C30](v417, v936);
            v420 = v921;
          }

          else
          {
            v420 = v921;
            if (v417 >= *(v909 + 16))
            {
              __break(1u);
LABEL_268:
              v729 = swift_allocError();
              *v850 = v413;
LABEL_269:
              v851 = sub_1CF9E57E8();

              v852 = [v851 fp_prettyDescription];
              v853 = [v852 description];

              v848 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
              v849 = v854;

              goto LABEL_270;
            }

            v419 = *(v936 + 8 * v417 + 32);
          }

          v421 = &selRef_initWithTarget_;
          if (__OFADD__(v417, 1))
          {
            __break(1u);
            goto LABEL_266;
          }

          v422 = fpfs_current_or_default_log();
          sub_1CF9E6128();
          v423 = v419;
          v424 = sub_1CF9E6108();
          v425 = sub_1CF9E7288();

          v426 = os_log_type_enabled(v424, v425);
          v934 = v417;
          *&v933 = v417 + 1;
          v940 = v423;
          if (v426)
          {
            v427 = swift_slowAlloc();
            v939 = swift_slowAlloc();
            *&v949.st_dev = v939;
            *v427 = v930;
            v428 = [(objc_class *)v423 knownFolder];
            v937 = v424;
            v429 = v428;
            v430 = v423;
            v431 = v924;
            sub_1CF9E59D8();

            v432 = sub_1CF9E5928();
            v433 = [v432 fp_shortDescription];

            v434 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v436 = v435;

            LODWORD(v932) = v425;
            v437 = *v942;
            v438 = v943;
            (*v942)(v431, v943);
            v439 = sub_1CEFD0DF0(v434, v436, &v949.st_dev);

            *(v427 + 4) = v439;
            *(v427 + 12) = 2082;
            v440 = v430;
            v441 = v438;
            v442 = [(objc_class *)v440 logicalLocation];
            sub_1CF9E59D8();

            v443 = sub_1CF9E5928();
            v444 = [v443 fp_shortDescription];

            v445 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v447 = v446;

            (v437)(v431, v441);
            v421 = &selRef_initWithTarget_;
            v448 = sub_1CEFD0DF0(v445, v447, &v949.st_dev);

            *(v427 + 14) = v448;
            v449 = v937;
            _os_log_impl(&dword_1CEFC7000, v937, v932, "marking folder %{public}s as detached from %{public}s", v427, 0x16u);
            v450 = v939;
            swift_arrayDestroy();
            MEMORY[0x1D386CDC0](v450, -1, -1);
            MEMORY[0x1D386CDC0](v427, -1, -1);

            v937 = *v938;
            (v937)(v921, v925);
          }

          else
          {

            v937 = *v938;
            (v937)(v420, v925);
            v441 = v943;
            v431 = v924;
          }

          v451 = v919;
          v452 = v421[122];
          v453 = v940;
          v454 = [v940 v452];
          sub_1CF9E59D8();

          sub_1CF9E58E8();

          sub_1CF9E5988();
          sub_1CF9E5108();
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CF7A4E50(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
          v455 = v928;
          v456 = v929;
          sub_1CF9E57D8();
          v457 = sub_1CF9E50D8();
          (*v926)(v455, v456);
          swift_willThrow();
          v458 = *v942;
          (*v942)(v451, v441);
          (v458)(v431, v441);
          v459 = fpfs_current_or_default_log();
          v460 = v920;
          sub_1CF9E6128();
          v461 = v453;
          v462 = v457;
          v463 = sub_1CF9E6108();
          v464 = sub_1CF9E72A8();

          v465 = os_log_type_enabled(v463, v464);
          v939 = v458;
          if (v465)
          {
            v466 = swift_slowAlloc();
            v940 = v461;
            v467 = v466;
            v911 = swift_slowAlloc();
            v932 = swift_slowAlloc();
            *&v949.st_dev = v932;
            *v467 = v930;
            v468 = [v940 knownFolder];
            LODWORD(v910) = v464;
            v469 = v468;
            sub_1CF9E59D8();

            v470 = sub_1CF9E5928();
            v471 = [v470 fp_shortDescription];

            v472 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v474 = v473;

            (v458)(v431, v943);
            v475 = sub_1CEFD0DF0(v472, v474, &v949.st_dev);

            *(v467 + 4) = v475;
            *(v467 + 12) = 2112;
            swift_getErrorValue();
            v476 = Error.prettyDescription.getter(v944);
            *(v467 + 14) = v476;
            v477 = v911;
            *v911 = v476;
            _os_log_impl(&dword_1CEFC7000, v463, v910, "couldn't fix permission on folder %{public}s: %@", v467, 0x16u);
            sub_1CEFCCC44(v477, &qword_1EC4BE350, &unk_1CF9FC3B0);
            MEMORY[0x1D386CDC0](v477, -1, -1);
            v478 = v932;
            __swift_destroy_boxed_opaque_existential_1(v932);
            MEMORY[0x1D386CDC0](v478, -1, -1);
            v479 = v467;
            v461 = v940;
            MEMORY[0x1D386CDC0](v479, -1, -1);

            (v937)(v920, v925);
            v480 = &selRef_initWithTarget_;
          }

          else
          {

            (v937)(v460, v925);
            v480 = &selRef_initWithTarget_;
          }

          v481 = v868;
          v482 = v461;
          v483 = [v461 v480[122]];
          v484 = v915;
          sub_1CF9E59D8();

          sub_1CF9E5A18();
          fpfs_openflags_1(1048832);
          sub_1CF9E6978();
          v485 = openat_s();

          if (v485 < 0)
          {
            v544 = MEMORY[0x1D38683F0](v486);
            memset(&v949, 0, 40);
            LOBYTE(v949.st_atimespec.tv_nsec) = 19;
            sub_1CF19BBE4(v544, &v949.st_dev);
            sub_1CF1969CC(&v949);
            swift_willThrow();

            v545 = v484;
            v546 = v943;
            v547 = v939;
            (v939)(v545, v943);
            (v547)(v922, v546);
            sub_1CEFCCC44(v481, &unk_1EC4BE310, qword_1CF9FCBE0);
            sub_1CF06DA00(v918);
            goto LABEL_248;
          }

          v415 = v943;
          v418 = v942;
          v487 = v939;
          (v939)(v484, v943);

          MEMORY[0x1EEE9AC00](v488);
          sub_1CEFE1894(sub_1CF7A5ADC);
          v940 = 0;
          v489 = v482;
          v490 = [v482 logicalLocation];
          LODWORD(v932) = v485;
          v491 = v924;
          sub_1CF9E59D8();

          v492 = v914;
          sub_1CF9E5988();
          (v487)(v491, v415);
          v493 = [v489 &selRef_materializedURLWithDomain_ + 5];
          sub_1CF9E59D8();

          v494 = sub_1CF9E58E8();
          v496 = v495;
          (v487)(v491, v415);
          *&v949.st_dev = v494;
          v949.st_ino = v496;
          v957[0] = 58;
          v957[1] = 0xE100000000000000;
          v946 = 47;
          v947 = 0xE100000000000000;
          v859 = sub_1CEFE4E68();
          v860 = v859;
          v858[1] = v859;
          v858[0] = MEMORY[0x1E69E6158];
          v497 = sub_1CF9E7668();
          v499 = v498;

          *&v949.st_dev = v497;
          v949.st_ino = v499;
          v500 = v932;
          v501 = v492;
          v502 = *(v941 + v913);
          v503 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v504 = v940;
          sub_1CF2AFAD4(v500, v501, &v949.st_dev, v931, v503, v505);
          v940 = v504;
          if (v504)
          {

            (v487)(v501, v415);
            (v487)(v922, v415);
            sub_1CEFCCC44(v868, &unk_1EC4BE310, qword_1CF9FCBE0);
            close(v500);
            sub_1CF06DA00(v918);
            goto LABEL_248;
          }

          (v487)(v501, v415);
          close(v500);
          if (([v489 detachOptions]& 1) != 0)
          {
            v506 = fpfs_current_or_default_log();
            v507 = v912;
            sub_1CF9E6128();
            v508 = v489;
            v509 = sub_1CF9E6108();
            v510 = sub_1CF9E7288();

            if (os_log_type_enabled(v509, v510))
            {
              v511 = swift_slowAlloc();
              v911 = v511;
              v910 = swift_slowAlloc();
              *&v949.st_dev = v910;
              *v511 = v930;
              v512 = [v508 logicalLocation];
              v908 = v509;
              v513 = v512;
              v514 = v924;
              sub_1CF9E59D8();

              v515 = sub_1CF9E5928();
              v516 = [v515 fp_shortDescription];

              v517 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
              LODWORD(v907) = v510;
              v519 = v518;

              v418 = v943;
              v932 = v508;
              v520 = v939;
              (v939)(v514, v943);
              v521 = sub_1CEFD0DF0(v517, v519, &v949.st_dev);

              v522 = v911;
              *(v911 + 4) = v521;
              *(v522 + 6) = 2082;
              v523 = [v932 knownFolder];
              sub_1CF9E59D8();

              v524 = sub_1CF9E5928();
              v525 = [v524 fp_shortDescription];

              v526 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
              v528 = v527;

              (v520)(v514, v418);
              v508 = v932;
              v529 = sub_1CEFD0DF0(v526, v528, &v949.st_dev);

              v530 = v911;
              *(v911 + 14) = v529;
              v531 = v908;
              _os_log_impl(&dword_1CEFC7000, v908, v907, "creating symlink from  %{public}s to detached root %{public}s", v530, 0x16u);
              v532 = v910;
              swift_arrayDestroy();
              MEMORY[0x1D386CDC0](v532, -1, -1);
              v533 = v530;
              v534 = &selRef_initWithTarget_;
              MEMORY[0x1D386CDC0](v533, -1, -1);

              v535 = &selRef_initWithTarget_;
              (v937)(v912, v925);
            }

            else
            {

              (v937)(v507, v925);
              v418 = v943;
              v514 = v924;
              v535 = &selRef_initWithTarget_;
              v534 = &selRef_initWithTarget_;
            }

            type metadata accessor for InternalPathsManager();
            v536 = [v508 v535[122]];
            sub_1CF9E59D8();

            v537 = [v508 v534[171]];
            v538 = v919;
            sub_1CF9E59D8();

            sub_1CF79BE08(v514, v538, v502);
            v539 = v939;
            (v939)(v538, v418);
            (v539)(v514, v418);
            v414 = v923;
            v415 = v418;
          }

          else
          {

            v414 = v923;
          }

          v417 = (v934 + 1);
          v413 = v922;
          v416 = v917;
          if (v933 == v893)
          {
            v350 = v868;
            break;
          }
        }
      }

      sub_1CF9E5A18();
      fpfs_openflags_1(0x100000);
      sub_1CF9E6978();
      v553 = openat_s();

      if (v553 < 0)
      {
        v559 = MEMORY[0x1D38683F0](v554);
        memset(&v949, 0, 40);
        LOBYTE(v949.st_atimespec.tv_nsec) = 19;
        v558 = sub_1CF19BBE4(v559, &v949.st_dev);
        sub_1CF1969CC(&v949);
        swift_willThrow();

        v940 = 0;
        v557 = v896;
      }

      else
      {

        sub_1CEFE528C(&v949);
        v962 = v953;
        v963 = v954;
        v964 = v955;
        v958 = v949;
        v959 = v950;
        v960 = v951;
        v961 = v952;
        v965 = v956;
        MEMORY[0x1EEE9AC00](v555);
        LODWORD(v859) = v553;
        v556 = v940;
        sub_1CF9B9578(&v958, sub_1CF2B0408, v858, v861);
        v557 = v896;
        if (!v556)
        {
          v940 = 0;
          close(v553);
LABEL_175:
          if ((v862 & 1) == 0)
          {
            v584 = v922;
            v585 = sub_1CF9E5928();
            v586 = sub_1CF9E5928();
            *&v949.st_dev = 0;
            v587 = v870;
            v588 = [v870 moveItemAtURL:v585 toURL:v586 error:&v949];

            if (!v588)
            {
              v616 = *&v949.st_dev;

              sub_1CF9E57F8();

              swift_willThrow();
              (*(v935 + 8))(v584, v415);
              sub_1CEFCCC44(v350, &unk_1EC4BE310, qword_1CF9FCBE0);
              sub_1CF06DA00(v918);
              goto LABEL_248;
            }

            v589 = *&v949.st_dev;
            v416 = v917;
          }

          *v903 = 1;
          v590 = v931;
          v591 = sub_1CF9E5928();
          v592 = sub_1CF9E6888();

          *&v949.st_dev = 0;
          v593 = FPWriteImportCookieForDomainURL();

          if (v593)
          {
            v594 = *(v935 + 8);
            v595 = *&v949.st_dev;
            v594(v922, v415);
          }

          else
          {
            v596 = *&v949.st_dev;
            v597 = fpfs_current_or_default_log();
            v598 = v883;
            sub_1CF9E6128();
            v599 = v935;
            (*(v935 + 16))(v416, v590, v415);
            v600 = sub_1CF9E6108();
            v601 = sub_1CF9E72A8();
            if (os_log_type_enabled(v600, v601))
            {
              LODWORD(v939) = v601;
              v942 = v600;
              v602 = swift_slowAlloc();
              v938 = swift_slowAlloc();
              *&v949.st_dev = v938;
              *v602 = 136446466;
              v603 = sub_1CF9E5928();
              v604 = v596;
              v605 = v416;
              v606 = [v603 fp_shortDescription];

              v607 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
              v609 = v608;

              v610 = v605;
              v596 = v604;
              v611 = *(v599 + 8);
              v935 = v599 + 8;
              v611(v610, v415);
              v612 = sub_1CEFD0DF0(v607, v609, &v949.st_dev);

              *(v602 + 4) = v612;
              *(v602 + 12) = 2080;
              if (v596)
              {
                v957[0] = v596;
                sub_1CF1B7E64();
                sub_1CF7A4E50(&qword_1EC4BE010, sub_1CF1B7E64);
                v613 = v596;
                v614 = sub_1CF9E7FB8();
                if (v614)
                {
                  v615 = v614;
                }

                else
                {
                  v615 = swift_allocError();
                  *v833 = v613;
                }

                v796 = v939;
                v834 = sub_1CF9E57E8();

                v835 = [v834 fp_prettyDescription];
                v836 = [v835 description];

                v794 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                v795 = v837;

                v415 = v943;
              }

              else
              {
                v794 = 0x3E6C696E3CLL;
                v795 = 0xE500000000000000;
                v796 = v939;
              }

              v838 = sub_1CEFD0DF0(v794, v795, &v949.st_dev);

              *(v602 + 14) = v838;
              v839 = v942;
              _os_log_impl(&dword_1CEFC7000, v942, v796, "failed to write import cookie for domain %{public}s: %s", v602, 0x16u);
              v840 = v938;
              swift_arrayDestroy();
              MEMORY[0x1D386CDC0](v840, -1, -1);
              MEMORY[0x1D386CDC0](v602, -1, -1);

              (*(v923 + 8))(v883, v925);
              v611(v922, v415);
            }

            else
            {

              v617 = *(v599 + 8);
              v617(v416, v415);
              (*(v414 + 8))(v598, v925);
              v617(v922, v415);
            }

            v350 = v868;
          }

          sub_1CF06DA00(v918);
          goto LABEL_254;
        }

        close(v553);
        v558 = v556;
        v940 = 0;
      }

      v560 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v561 = v558;
      v562 = sub_1CF9E6108();
      v563 = sub_1CF9E72A8();

      if (os_log_type_enabled(v562, v563))
      {
        v564 = swift_slowAlloc();
        v565 = swift_slowAlloc();
        *v564 = 138412290;
        swift_getErrorValue();
        v566 = Error.prettyDescription.getter(v945);
        *(v564 + 4) = v566;
        *v565 = v566;
        _os_log_impl(&dword_1CEFC7000, v562, v563, "can't mark the root dataless: %@", v564, 0xCu);
        sub_1CEFCCC44(v565, &qword_1EC4BE350, &unk_1CF9FC3B0);
        v567 = v565;
        v416 = v917;
        MEMORY[0x1D386CDC0](v567, -1, -1);
        v568 = v564;
        v557 = v896;
        MEMORY[0x1D386CDC0](v568, -1, -1);
      }

      else
      {
      }

      v350 = v868;
      (*(v414 + 8))(v557, v925);
      goto LABEL_175;
    }
  }

  v198 = 0;
  v889 = (v187 & 0xFFFFFFFFFFFFFF8);
  v199 = (v935 + 8);
  v200 = &selRef_initWithTarget_;
  v891 = v187 & 0xC000000000000001;
  v892 = (v935 + 8);
  while (1)
  {
    if (v891)
    {
      v202 = MEMORY[0x1D3869C30](v198, v187);
      v176 = v942;
      v166 = (v198 + 1);
      if (__OFADD__(v198, 1))
      {
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }
    }

    else
    {
      v176 = v942;
      if (v198 >= *(v889 + 2))
      {
        __break(1u);
        goto LABEL_240;
      }

      v202 = *(v187 + 8 * v198 + 32);
      v166 = (v198 + 1);
      if (__OFADD__(v198, 1))
      {
        goto LABEL_59;
      }
    }

    isa = v200[122].isa;
    v932 = v202;
    v204 = [v202 isa];
    sub_1CF9E59D8();

    v205 = objc_opt_self();
    v206 = sub_1CF9E5928();
    *&v949.st_dev = 0;
    v957[0] = 0;
    v207 = [v205 getProviderDomainID:v206 location:2 foundDomainID:&v949 error:v957];

    v208 = *&v949.st_dev;
    if (!v207)
    {
      v218 = v957[0];
      v219 = v208;
      sub_1CF9E57F8();

      swift_willThrow();
      (*v892)(v942, v943);

      goto LABEL_244;
    }

    v199 = v892;
    v209 = *v892;
    v210 = v957[0];
    if (v208)
    {
      break;
    }

    v209(v942, v943);

LABEL_46:
    ++v198;
    v201 = v166 == v893;
    v166 = v939;
    v184 = v937;
    v176 = v938;
    v200 = &selRef_initWithTarget_;
    if (v201)
    {
      goto LABEL_60;
    }
  }

  v916 = v208;
  v209(v942, v943);
  v211 = [v930 providerDomainID];
  v212 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v214 = v213;
  if (v212 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v214 == v215)
  {

    v197 = v934;
    goto LABEL_46;
  }

  v216 = sub_1CF9E8048();

  if (v216)
  {

    v187 = v936;
    v197 = v934;
    goto LABEL_46;
  }

  v240 = [v916 fp_obfuscatedProviderDomainID];
  v241 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v243 = v242;

  v244 = fpfs_current_or_default_log();
  v245 = v902;
  sub_1CF9E6128();
  v246 = v932;

  v247 = sub_1CF9E6108();
  v248 = sub_1CF9E72B8();

  v942 = v246;

  if (os_log_type_enabled(v247, v248))
  {
    v249 = swift_slowAlloc();
    LODWORD(v940) = v248;
    v250 = v249;
    v941 = swift_slowAlloc();
    *&v949.st_dev = v941;
    *v250 = 136446466;
    v251 = [v942 knownFolder];
    v939 = v247;
    v252 = v251;
    v253 = v924;
    sub_1CF9E59D8();

    v254 = sub_1CF9E5928();
    v255 = [v254 fp_shortDescription];

    v256 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v257 = v241;
    v259 = v258;

    v260 = v253;
    v261 = &selRef_initWithTarget_;
    v209(v260, v943);
    v262 = sub_1CEFD0DF0(v256, v259, &v949.st_dev);

    *(v250 + 4) = v262;
    *(v250 + 12) = 2082;
    v263 = sub_1CEFD0DF0(v257, v243, &v949.st_dev);

    *(v250 + 14) = v263;
    v264 = v939;
    _os_log_impl(&dword_1CEFC7000, v939, v940, "Attempting to import detached folder at %{public}s into new domain %{public}s", v250, 0x16u);
    v265 = v941;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v265, -1, -1);
    MEMORY[0x1D386CDC0](v250, -1, -1);

    (*(v923 + 8))(v902, v925);
    v266 = v929;
    v267 = v928;
    v268 = v926;
  }

  else
  {

    (*(v923 + 8))(v245, v925);
    v266 = v929;
    v267 = v928;
    v268 = v926;
    v261 = &selRef_initWithTarget_;
  }

  sub_1CF9E5148();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
  v293 = swift_allocObject();
  *(v293 + 16) = xmmword_1CF9FA450;
  v294 = *MEMORY[0x1E696A998];
  *(v293 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  *(v293 + 40) = v295;
  v296 = v261[122];
  v297 = v942;
  v298 = [v942 v296];
  *(v293 + 72) = v943;
  __swift_allocate_boxed_opaque_existential_0((v293 + 48));
  sub_1CF9E59D8();

  sub_1CF4E04E8(v293);
  swift_setDeallocating();
  sub_1CEFCCC44(v293 + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
  swift_deallocClassInstance();
  sub_1CF7A4E50(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
  sub_1CF9E57D8();
  sub_1CF9E50D8();
  (*(v268 + 8))(v267, v266);
  swift_willThrow();

LABEL_243:
LABEL_244:
  v174 = v870;
LABEL_245:

LABEL_246:
  v155 = v868;
LABEL_247:
  sub_1CEFCCC44(v155, &unk_1EC4BE310, qword_1CF9FCBE0);
LABEL_248:
  v832 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1CF7A36B4@<X0>(uint64_t a1@<X0>, int a2@<W1>, _DWORD *a3@<X8>)
{
  v6 = type metadata accessor for ItemMetadata();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CEFF4408(a1, v9);
  sub_1CEFE528C(v15);
  v13[12] = v15[12];
  v13[13] = v15[13];
  v13[14] = v15[14];
  v14 = v16;
  v13[8] = v15[8];
  v13[9] = v15[9];
  v13[10] = v15[10];
  v13[11] = v15[11];
  v13[4] = v15[4];
  v13[5] = v15[5];
  v13[6] = v15[6];
  v13[7] = v15[7];
  v13[0] = v15[0];
  v13[1] = v15[1];
  v13[2] = v15[2];
  v13[3] = v15[3];
  v12 = a2;
  *a3 = sub_1CF9BA920(v13, sub_1CF7A5AFC, v11);
  return sub_1CF06DA00(v9);
}

uint64_t sub_1CF7A37E8()
{
  v1 = v0;
  sub_1CF9E5A18();
  fpfs_openflags_1(0);
  sub_1CF9E6978();
  v2 = openat_s();

  if ((v2 & 0x80000000) != 0)
  {
    v6 = MEMORY[0x1D38683F0](v3);
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    v9 = 19;
    sub_1CF19BBE4(v6, v7);
    sub_1CF1969CC(v7);
    swift_willThrow();
  }

  else
  {

    v4 = *(v1 + OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_providerDomainID);
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    sub_1CF2AF3BC(v2);

    return close(v2);
  }
}

uint64_t sub_1CF7A3900@<X0>(_DWORD *a1@<X8>)
{
  sub_1CF9E5A18();
  v5[4] = sub_1CF36581C;
  v5[5] = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_1CF9B8AD8;
  v5[3] = &block_descriptor_57;
  v2 = _Block_copy(v5);

  sub_1CF9E6978();

  dataless_fault_at = fpfs_create_dataless_fault_at();

  _Block_release(v2);
  *a1 = dataless_fault_at;
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF7A3A30(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1CF9E5A58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E5968();
  sub_1CF9E5A18();
  (*(v5 + 8))(v8, v4);
  v9 = sub_1CF9E6888();

  LODWORD(a3) = [a3 fileExistsAtPath_];

  return a3 ^ 1;
}

id InternalPathsManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id InternalPathsManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InternalPathsManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1CF7A3D70()
{
  sub_1CF1DEC4C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t fpfs_openflags_1(int a1)
{
  if (a1)
  {
    return a1 | 0x104u;
  }

  else
  {
    return 33028;
  }
}

uint64_t sub_1CF7A3F14(uint64_t a1, unint64_t a2)
{
  v4 = sub_1CF9E5CF8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  [v9 setDateStyle_];
  [v9 setTimeStyle_];
  sub_1CF9E5CE8();
  v10 = sub_1CF9E5C48();
  (*(v5 + 8))(v8, v4);
  v11 = [v9 stringFromDate_];

  v12 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v14 = v13;

  v27 = v12;
  v28 = v14;
  v25 = 47;
  v26 = 0xE100000000000000;
  v23 = 45;
  v24 = 0xE100000000000000;
  sub_1CEFE4E68();
  v15 = sub_1CF9E7668();
  v17 = v16;

  v27 = v15;
  v28 = v17;
  v25 = 44;
  v26 = 0xE100000000000000;
  v23 = 0;
  v24 = 0xE000000000000000;
  v18 = sub_1CF9E7668();
  v20 = v19;

  v27 = 10272;
  v28 = 0xE200000000000000;
  MEMORY[0x1D3868CC0](v18, v20);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  v25 = a1;
  v26 = a2;

  v25 = sub_1CF9E6B48();
  v26 = v21;
  sub_1CF9E6A28();

  return v25;
}

uint64_t sub_1CF7A41CC()
{
  v93 = *MEMORY[0x1E69E9840];
  v0 = sub_1CF9E5D98();
  v72 = *(v0 - 8);
  v73 = v0;
  v1 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v71 = &v66 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1CF9E5CF8();
  v78 = *(v3 - 8);
  v79 = v3;
  v4 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v77 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1CF9E5248();
  v80 = *(v6 - 8);
  v7 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v84 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_1CF9E5268();
  v87 = *(v85 - 8);
  v9 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v85);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CF9E5A58();
  v81 = *(v12 - 8);
  v82 = v12;
  v13 = *(v81 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v88 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v86 = &v66 - v16;
  v83 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
  memset(&v89, 0, sizeof(v89));
  sub_1CF9E5A18();
  v17 = sub_1CF9E6978();

  v18 = lstat((v17 + 32), &v89);

  if (!v18)
  {
    st_mode = v89.st_mode;
    v20 = sub_1CF9E61D8() & st_mode;
    if (v20 == sub_1CF9E61D8())
    {
      sub_1CF9E5A18();
      v21 = sub_1CF9E6978();

      unlink((v21 + 32));
    }
  }

  sub_1CF9E5A18();
  fpfs_openflags_1(0x100000);
  sub_1CF9E6978();
  v22 = openat_s();

  if (v22 < 0)
  {
    v52 = MEMORY[0x1D38683F0](v23);
    v91 = 0;
    memset(v90, 0, sizeof(v90));
    v92 = 19;
    sub_1CF19BBE4(v52, v90);
    sub_1CF1969CC(v90);
    swift_willThrow();
  }

  else
  {
    v76 = v22;

    v24 = sub_1CF9E58E8();
    v25 = v11;
    v27 = v26;
    v28 = sub_1CF9E58E8();
    v30 = v29;
    sub_1CF9E5988();
    sub_1CF9E5988();
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1BA0, &qword_1CFA0CD20);
    inited = swift_initStackObject();
    v68 = xmmword_1CF9FA450;
    *(inited + 16) = xmmword_1CF9FA450;
    v70 = v24;
    *(inited + 32) = v24;
    *(inited + 40) = v27;
    *(inited + 48) = v28;
    v66 = v28;
    *(inited + 56) = v30;
    v75 = v27;
    v32 = v25;

    v74 = v30;

    sub_1CF4E0980(inited);
    swift_setDeallocating();
    sub_1CEFCCC44(inited + 32, &qword_1EC4C1BA8, &qword_1CFA0CD28);

    v33 = v84;
    sub_1CF9E5108();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    v34 = sub_1CF7A4E50(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    v35 = v85;
    sub_1CF9E57D8();
    v36 = sub_1CF9E50D8();
    v37 = *(v87 + 8);
    v87 += 8;
    v67 = v37;
    v37(v32, v35);
    swift_willThrow();
    v38 = v36;
    sub_1CF9E5128();
    sub_1CF7A4E50(&qword_1EDEAB460, MEMORY[0x1E6967E70]);
    LOBYTE(v36) = sub_1CF9E5658();

    (*(v80 + 8))(v33, v6);
    if (v36)
    {
      goto LABEL_8;
    }

    v39 = v38;
    LODWORD(v90[0]) = sub_1CF9E52E8();
    sub_1CF196978();
    v40 = sub_1CF9E5658();

    if (v40 & 1) != 0 || (v41 = v39, LODWORD(v90[0]) = sub_1CF9E53B8(), v42 = sub_1CF9E5658(), v41, (v42))
    {
LABEL_8:
      v80 = v34;

      MEMORY[0x1EEE9AC00](v43);
      v44 = v83;
      v45 = v88;
      *(&v66 - 2) = v83;
      *(&v66 - 1) = v45;
      v46 = v77;
      sub_1CF9E5CE8();
      v47 = v66;
      v48 = v74;
      v49 = sub_1CF51B6BC(v46, sub_1CF7A4E30, (&v66 - 4));
      v51 = v50;
      (*(v78 + 8))(v46, v79);
      if (v51)
      {
      }

      else
      {
        v90[0] = v47;
        v90[1] = v48;
        MEMORY[0x1D3868CC0](32, 0xE100000000000000);
        v54 = v71;
        sub_1CF9E5D88();
        v55 = sub_1CF9E5D18();
        v57 = v56;
        (*(v72 + 8))(v54, v73);
        MEMORY[0x1D3868CC0](v55, v57);

        v51 = v90[1];
        v49 = v90[0];
      }

      v58 = swift_initStackObject();
      *(v58 + 16) = v68;
      *(v58 + 32) = v70;
      v59 = v58 + 32;
      *(v58 + 40) = v75;
      *(v58 + 48) = v49;
      *(v58 + 56) = v51;
      sub_1CF4E0980(v58);
      swift_setDeallocating();
      sub_1CEFCCC44(v59, &qword_1EC4C1BA8, &qword_1CFA0CD28);

      sub_1CF9E5108();
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      v60 = v85;
      sub_1CF9E57D8();
      sub_1CF9E50D8();
      v67(v32, v60);
      swift_willThrow();

      v61 = v82;
      v62 = *(v81 + 8);
      v62(v86, v82);
      v62(v88, v61);
    }

    else
    {
      v64 = v82;
      v65 = *(v81 + 8);
      v65(v86, v82);

      v65(v88, v64);
    }

    result = close(v76);
  }

  v63 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_1CF7A4B00(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_self();
  v4 = sub_1CF9E5928();
  v12 = 0;
  v13[0] = 0;
  LODWORD(v3) = [v3 getProviderDomainID:v4 location:a2 foundDomainID:v13 error:&v12];

  v5 = v13[0];
  if (v3)
  {
    v6 = v12;
    v7 = v5;
  }

  else
  {
    v8 = v12;
    v9 = v5;
    sub_1CF9E57F8();

    swift_willThrow();
  }

  v10 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t sub_1CF7A4BF8(uint64_t a1, void *a2)
{
  v4 = sub_1CF7A4B00(a1, 1);
  if (!v2)
  {
    v6 = v4;
    v7 = [a2 providerDomainID];
    v8 = v7;
    if (v6)
    {
      v9 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v11 = v10;
      if (v9 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v11 == v12)
      {
      }

      else
      {
        v14 = sub_1CF9E8048();

        v5 = 0;
        if ((v14 & 1) == 0)
        {
          return v5 & 1;
        }
      }

      v5 = 1;
    }

    else
    {

      v5 = 0;
    }
  }

  return v5 & 1;
}

uint64_t sub_1CF7A4D18@<X0>(int a1@<W0>, void *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_1CF79BC88(a1, a2);
}

uint64_t sub_1CF7A4D64(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  return sub_1CF6BD250(a1, *(v1 + 16), *(v1 + 24));
}

BOOL sub_1CF7A4D70(int a1)
{
  v7 = *MEMORY[0x1E69E9840];
  memset(&v6, 0, sizeof(v6));
  result = !fstat(a1, &v6) && (st_mode = v6.st_mode, v3 = sub_1CF9E61D8() & st_mode, v3 == sub_1CF9E61D8()) && fgetxattr(a1, "com.apple.fileprovider.detached-link#P", 0, 0, 0, 0) >= 0;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF7A4E50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CF7A4E98(uint64_t a1, int a2)
{
  v138 = *MEMORY[0x1E69E9840];
  v4 = sub_1CF9E6118();
  v5 = *(v4 - 8);
  v118 = v4;
  v119 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v108 = &v103 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v103 - v12;
  v14 = sub_1CF9E5CF8();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_1CF9E5A58();
  v117 = *(v115 - 8);
  v18 = v117[8];
  MEMORY[0x1EEE9AC00](v115);
  v113 = (&v103 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v103 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v103 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v103 - v27;
  v120 = a1;
  sub_1CF9E5988();
  v107 = a2;
  v114 = v8;
  v112 = v22;
  if ((a2 & 1) == 0)
  {
    goto LABEL_5;
  }

  v109 = v13;
  v29 = [objc_opt_self() defaultManager];
  sub_1CF9E5A18();
  v30 = sub_1CF9E6888();

  [v29 fp:v30 createPathIfNeeded:?];

  sub_1CF9E5A18();
  fpfs_openflags_1(0x100000);
  sub_1CF9E6978();
  v31 = openat_s();

  if (v31 < 0)
  {
    v77 = MEMORY[0x1D38683F0](v32);
    *&v126 = 0;
    v124 = 0u;
    v125 = 0u;
    BYTE8(v126) = 19;
    v58 = sub_1CF19BBE4(v77, &v124);
    sub_1CF1969CC(&v124);
    swift_willThrow();
    v36 = v117;
    v37 = v115;
    v116 = v117[1];
    v116(v28, v115);

LABEL_18:
    v51 = v120;
    v59 = v113;
    goto LABEL_19;
  }

  if ((fpfs_fset_acl() & 0x80000000) != 0)
  {
    v78 = MEMORY[0x1D38683F0]();
    LODWORD(v124) = 16;
    BYTE8(v126) = 4;
    v58 = sub_1CF19BBE4(v78, &v124);
    sub_1CF1969CC(&v124);
    swift_willThrow();
    v36 = v117;
    v37 = v115;
    v116 = v117[1];
    v116(v28, v115);
    close(v31);
    goto LABEL_18;
  }

  close(v31);
  v13 = v109;
LABEL_5:
  v110 = v28;
  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  LODWORD(v124) = 2;
  WORD4(v124) = 448;
  sub_1CF36B41C(&v124);
  sub_1CF9E5CE8();
  *(&v125 + 1) = sub_1CF1ADD60(v17);
  *&v126 = v33;
  sub_1CF9E5CE8();
  *(&v126 + 1) = sub_1CF1ADD60(v17);
  *&v127 = v34;
  v35 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v36 = v117;
  v37 = v115;
  v105 = v117[2];
  v106 = v117 + 2;
  v105(v25, v120, v115);
  v38 = sub_1CF9E6108();
  v39 = sub_1CF9E7288();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v109 = v13;
    v41 = v25;
    v42 = v40;
    v104 = swift_slowAlloc();
    v122[0] = v104;
    *v42 = 136315138;
    v43 = sub_1CF9E5928();
    v44 = [v43 fp_shortDescription];

    v45 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v47 = v46;

    v48 = v118;
    v116 = v117[1];
    v116(v41, v37);
    v49 = sub_1CEFD0DF0(v45, v47, v122);

    *(v42 + 4) = v49;
    _os_log_impl(&dword_1CEFC7000, v38, v39, "Marking root dataless %s", v42, 0xCu);
    v50 = v104;
    __swift_destroy_boxed_opaque_existential_1(v104);
    v51 = v120;
    MEMORY[0x1D386CDC0](v50, -1, -1);
    v52 = v42;
    v53 = v112;
    MEMORY[0x1D386CDC0](v52, -1, -1);

    v54 = *(v119 + 8);
    v55 = v48;
    v36 = v117;
    v56 = v54(v109, v55);
  }

  else
  {

    v116 = v36[1];
    v116(v25, v37);
    v54 = *(v119 + 8);
    v56 = v54(v13, v118);
    v51 = v120;
    v53 = v112;
  }

  MEMORY[0x1EEE9AC00](v56);
  *(&v103 - 2) = v51;
  *(&v103 - 1) = &v124;
  v57 = v111;
  sub_1CEFE1894(sub_1CF7A5B34);
  v58 = v57;
  v59 = v113;
  if (!v57)
  {
    if ((v107 & 1) == 0)
    {
      goto LABEL_14;
    }

    sub_1CF9E5A18();
    fpfs_openflags_1(0x100000);
    sub_1CF9E6978();
    v60 = openat_s();

    if (v60 < 0)
    {
      v101 = MEMORY[0x1D38683F0](v61);
      memset(v122, 0, sizeof(v122));
      v123 = 19;
      v58 = sub_1CF19BBE4(v101, v122);
      sub_1CF1969CC(v122);
      swift_willThrow();
      v116(v110, v37);
    }

    else
    {

      if ((fpfs_fset_acl() & 0x80000000) == 0)
      {
        close(v60);
        v51 = v120;
        v53 = v112;
LABEL_14:
        v62 = fpfs_current_or_default_log();
        v63 = v108;
        sub_1CF9E6128();
        v105(v53, v51, v37);
        v64 = sub_1CF9E6108();
        v65 = sub_1CF9E7288();
        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          v117 = swift_slowAlloc();
          v122[0] = v117;
          *v66 = 136315138;
          v67 = sub_1CF9E5928();
          v68 = [v67 fp_shortDescription];
          v120 = 0;
          v69 = v68;

          v70 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v72 = v71;

          v73 = v116;
          v116(v112, v115);
          v74 = sub_1CEFD0DF0(v70, v72, v122);

          *(v66 + 4) = v74;
          _os_log_impl(&dword_1CEFC7000, v64, v65, "Created dataless root %s", v66, 0xCu);
          v75 = v117;
          __swift_destroy_boxed_opaque_existential_1(v117);
          MEMORY[0x1D386CDC0](v75, -1, -1);
          MEMORY[0x1D386CDC0](v66, -1, -1);

          v54(v108, v118);
          result = v73(v110, v115);
        }

        else
        {

          v98 = v53;
          v100 = v115;
          v99 = v116;
          v116(v98, v115);
          v54(v63, v118);
          result = v99(v110, v100);
        }

        goto LABEL_24;
      }

      v102 = MEMORY[0x1D38683F0]();
      LODWORD(v122[0]) = 1024;
      v123 = 4;
      v58 = sub_1CF19BBE4(v102, v122);
      sub_1CF1969CC(v122);
      swift_willThrow();
      v116(v110, v37);
      close(v60);
    }

    v59 = v113;
    v79 = v114;
    v51 = v120;
    goto LABEL_20;
  }

  v116(v110, v37);
LABEL_19:
  v79 = v114;
LABEL_20:
  v80 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  (v36[2])(v59, v51, v37);
  v81 = v58;
  v82 = v37;
  v83 = sub_1CF9E6108();
  v84 = sub_1CF9E72A8();

  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v120 = v58;
    v86 = v59;
    v87 = v85;
    v113 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    *&v124 = v117;
    *v87 = 136315394;
    LODWORD(v112) = v84;
    v88 = sub_1CF9E5928();
    v89 = [v88 fp_shortDescription];

    v90 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v92 = v91;

    v116(v86, v82);
    v93 = sub_1CEFD0DF0(v90, v92, &v124);

    *(v87 + 4) = v93;
    *(v87 + 12) = 2112;
    swift_getErrorValue();
    v94 = Error.prettyDescription.getter(v121);
    *(v87 + 14) = v94;
    v95 = v113;
    *v113 = v94;
    _os_log_impl(&dword_1CEFC7000, v83, v112, "Error while creating root %s: %@", v87, 0x16u);
    sub_1CEFCCC44(v95, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v95, -1, -1);
    v96 = v117;
    __swift_destroy_boxed_opaque_existential_1(v117);
    MEMORY[0x1D386CDC0](v96, -1, -1);
    MEMORY[0x1D386CDC0](v87, -1, -1);

    (*(v119 + 8))(v114, v118);
  }

  else
  {

    v116(v59, v82);
    (*(v119 + 8))(v79, v118);
  }

  result = swift_willThrow();
LABEL_24:
  v97 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF7A5AFC@<X0>(_DWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = fpfs_set_dataless_cmpfs_attrs();
  *a1 = result;
  return result;
}

uint64_t sub_1CF7A5B34@<X0>(_DWORD *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1CF7A3900(a1);
}

uint64_t sub_1CF7A5C88()
{
  sub_1CF9E7948();

  v0 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v0);

  MEMORY[0x1D3868CC0](0x3A657A6973202CLL, 0xE700000000000000);
  v1 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v1);

  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  return 0x203A746E756F633CLL;
}

uint64_t sub_1CF7A5D98()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1CF7A5C88();
}

uint64_t sub_1CF7A5DA0()
{
  v1 = v0;
  v2 = *(v0 + 24);
  v3 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  MEMORY[0x1D3868CC0](v3);

  v4 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_publishedProgress);
  if (v4)
  {
    v5 = v4;
    v6 = [v5 description];
    v7 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v9 = v8;

    MEMORY[0x1D3868CC0](v7, v9);

    MEMORY[0x1D3868CC0](980447264, 0xE400000000000000);
  }

  if (*(v1 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_useComplementaryProgress) == 1)
  {
    sub_1CF9E7948();

    v10 = *(v1 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_complementaryProgress);
    if (v10)
    {
      v11 = [v10 debugDescription];
      v12 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v14 = v13;
    }

    else
    {
      v14 = 0xE200000000000000;
      v12 = 24942;
    }

    MEMORY[0x1D3868CC0](v12, v14);

    MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA5AE20);
  }

  v15 = sub_1CF9E5928();
  v16 = [v15 fp_shortDescription];

  v17 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v19 = v18;

  MEMORY[0x1D3868CC0](v17, v19);

  MEMORY[0x1D3868CC0](0x3A6C727520, 0xE500000000000000);

  MEMORY[0x1D3868CC0](62, 0xE100000000000000);

  return 0x6572676F7270673CLL;
}

uint64_t sub_1CF7A6024(uint64_t a1, void *a2, uint64_t (*a3)(void))
{
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  v6 = *(a1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 16) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1CF1F7C44(0, v6[2] + 1, 1, v6);
    *(a1 + 16) = v6;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = sub_1CF1F7C44((v8 > 1), v9 + 1, 1, v6);
  }

  v6[2] = v9 + 1;
  sub_1CF7AAD84(v15, &v6[v9 + 4]);
  *(a1 + 16) = v6;
  swift_endAccess();
  v10 = sub_1CF7A7E98();
  [a2 reportProgressUpdate:v13 totalUnitCount:v11 completedFileCount:v12 totalFileCount:v10];
  return a3(0);
}

uint64_t sub_1CF7A6150()
{
  v40 = sub_1CF9E6388();
  v38 = *(v40 - 8);
  v1 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v35 = (&v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = sub_1CF9E6498();
  v37 = *(v39 - 8);
  v3 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v34 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v30 - v6;
  v7 = sub_1CF9E6448();
  v32 = *(v7 - 8);
  v33 = v7;
  v8 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CF9E73D8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
  v16 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_dispatchQueue);
  v41 = MEMORY[0x1E69E7CC0];
  sub_1CF7AAE24(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
  sub_1CF00FED0(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
  sub_1CF9E77B8();
  v17 = sub_1CF9E73E8();
  (*(v12 + 8))(v15, v11);
  ObjectType = swift_getObjectType();
  v19 = swift_allocObject();
  v31 = v0;
  swift_weakInit();

  sub_1CF042F9C();
  sub_1CEFD5828(0, v10, sub_1CEFCA9C8, v19);

  (*(v32 + 8))(v10, v33);

  v20 = v34;
  sub_1CF9E6478();
  v21 = v35;
  *v35 = 1;
  v22 = v38;
  v23 = v40;
  (*(v38 + 104))(v21, *MEMORY[0x1E69E7F48], v40);
  v24 = v36;
  MEMORY[0x1D3868740](v20, v21);
  v25 = *(v22 + 8);
  v25(v21, v23);
  v26 = *(v37 + 8);
  v27 = v39;
  v26(v20, v39);
  sub_1CEFD5BD8(v21);
  MEMORY[0x1D3869780](v24, v21, ObjectType, 1.0);
  v25(v21, v40);
  v26(v24, v27);
  sub_1CF9E7428();
  v28 = *(v31 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_dispatchTimer);
  *(v31 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_dispatchTimer) = v17;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  sub_1CF7A6648();
  return swift_unknownObjectRelease();
}

void sub_1CF7A6648()
{
  v1 = v0;
  v2 = sub_1CF9E6118();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  if (*(v0 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_useComplementaryProgress) == 1)
  {
    sub_1CF7A69C4();
    v7 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v8 = sub_1CF9E6108();
    v9 = sub_1CF9E7298();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1CEFC7000, v8, v9, "[GlobalProgress] subscribing for complementary progress", v10, 2u);
      MEMORY[0x1D386CDC0](v10, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    v11 = objc_opt_self();
    v12 = sub_1CF9E5928();
    v13 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1CF7AAE78;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CF7AA374;
    aBlock[3] = &block_descriptor_81;
    v14 = _Block_copy(aBlock);

    v15 = [v11 addSubscriberForFileURL:v12 withPublishingHandler:v14];
    _Block_release(v14);

    sub_1CF9E7728();
    swift_unknownObjectRelease();
    v16 = OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_complementaryProgressSubscriber;
    swift_beginAccess();
    sub_1CF7AAE80(aBlock, v1 + v16);
    swift_endAccess();
  }
}

uint64_t sub_1CF7A68E0()
{
  v1 = v0;
  sub_1CF7A69C4();
  v2 = OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_dispatchTimer;
  if (*(v0 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_dispatchTimer))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1CF9E7448();
    swift_unknownObjectRelease();
    if (*(v0 + v2))
    {
      v3 = *(v0 + v2);
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1CF9E7418();
      swift_unknownObjectRelease();
    }
  }

  v4 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_dispatchQueue);

  sub_1CF01001C(0, "deactivate()", 12, 2, sub_1CF7AAE74, v1);
}

void sub_1CF7A69C4()
{
  v1 = v0;
  v2 = sub_1CF9E6118();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_useComplementaryProgress) == 1)
  {
    v7 = OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_complementaryProgressSubscriber;
    swift_beginAccess();
    sub_1CEFF95C8(v1 + v7, &v15);
    if (v16)
    {
      sub_1CEFE9EB8(&v15, v17);
      v8 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v9 = sub_1CF9E6108();
      v10 = sub_1CF9E7298();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_1CEFC7000, v9, v10, "[GlobalProgress] unsubscribing from progress", v11, 2u);
        MEMORY[0x1D386CDC0](v11, -1, -1);
      }

      (*(v3 + 8))(v6, v2);
      v12 = objc_opt_self();
      __swift_project_boxed_opaque_existential_1(v17, v18);
      [v12 removeSubscriber_];
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(v17);
    }

    else
    {
      sub_1CEFCCC44(&v15, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    }

    v13 = *(v1 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_dispatchQueue);

    sub_1CF01001C(0, "stopObservingComplementaryProgressIfNeeded()", 44, 2, sub_1CF7AAF74, v1);
  }
}

uint64_t sub_1CF7A6C40(uint64_t a1, void *a2, uint64_t a3)
{
  v31 = a3;
  v5 = sub_1CF9E6118();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E5A58();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v15 = a2;
  sub_1CF6EA45C(&v32, v15);
  swift_endAccess();

  v16 = [v15 fileURL];
  if (v16)
  {
    v17 = v16;
    sub_1CF9E59D8();

    v18 = OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_fileSizeCache;
    swift_beginAccess();
    v19 = *(a1 + v18);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = *(a1 + v18);
    *(a1 + v18) = 0x8000000000000000;
    sub_1CF1D37AC(v31, v14, isUniquelyReferenced_nonNull_native);
    *(a1 + v18) = v32;
    swift_endAccess();
    return (*(v11 + 8))(v14, v10);
  }

  else
  {
    v22 = v6;
    v23 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v24 = v15;
    v25 = sub_1CF9E6108();
    v26 = sub_1CF9E72A8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138543362;
      *(v27 + 4) = v24;
      *v28 = v24;
      v29 = v24;
      _os_log_impl(&dword_1CEFC7000, v25, v26, "[GlobalProgress] missing fileURL in published progress: %{public}@", v27, 0xCu);
      sub_1CEFCCC44(v28, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v28, -1, -1);
      MEMORY[0x1D386CDC0](v27, -1, -1);
    }

    return (*(v22 + 8))(v9, v5);
  }
}

void sub_1CF7A6F5C(uint64_t a1, uint64_t a2)
{
  v58 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v46 - v5;
  v57 = sub_1CF9E5A58();
  v51 = *(v57 - 8);
  v7 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v53 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1CF9E7808();
    sub_1CEFD57E0(0, &unk_1EDEAB630, 0x1E696AE38);
    sub_1CF7AADBC();
    sub_1CF9E7038();
    a1 = v60[4];
    v9 = v60[5];
    v10 = v60[7];
    v54 = v60[6];
    v11 = v60[8];
  }

  else
  {
    v12 = -1 << *(a1 + 32);
    v9 = a1 + 56;
    v13 = *(a1 + 56);
    v54 = ~v12;
    v14 = -v12;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v11 = v15 & v13;

    v10 = 0;
  }

  v16 = (v54 + 64) >> 6;
  v55 = *MEMORY[0x1E696A880];
  v56 = (v51 + 56);
  v52 = (v51 + 48);
  v49 = (v51 + 32);
  v50 = (v51 + 8);
  if (a1 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v17 = v10;
  v18 = v11;
  v19 = v10;
  if (v11)
  {
LABEL_12:
    v20 = (v18 - 1) & v18;
    v21 = *(*(a1 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));
    if (!v21)
    {
LABEL_28:
      sub_1CEFCB59C();
      return;
    }

    while (1)
    {
      [v21 unpublish];
      swift_beginAccess();
      v23 = sub_1CF8DD1F4(v21);
      swift_endAccess();

      v24 = [v21 userInfo];
      type metadata accessor for ProgressUserInfoKey(0);
      sub_1CF7AAE24(&qword_1EDEA35D0, type metadata accessor for ProgressUserInfoKey);
      v25 = sub_1CF9E6638();

      if (*(v25 + 16) && (v26 = sub_1CEFE863C(v55), (v27 & 1) != 0))
      {
        sub_1CEFD1104(*(v25 + 56) + 32 * v26, v60);

        v28 = v57;
        v29 = swift_dynamicCast();
        (*v56)(v6, v29 ^ 1u, 1, v28);
        if ((*v52)(v6, 1, v28) != 1)
        {
          v30 = *v49;
          v48 = a1;
          v31 = v6;
          v32 = v53;
          v30(v53, v31, v28);
          v33 = OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_fileSizeCache;
          v34 = v58;
          swift_beginAccess();
          v35 = *(v34 + v33);
          v36 = v32;
          v6 = v31;
          a1 = v48;
          v37 = sub_1CF7BFCDC(v36);
          if (v38)
          {
            v39 = v37;
            v47 = v6;
            v40 = v58;
            v41 = *(v58 + v33);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v43 = *(v40 + v33);
            v59 = v43;
            *(v40 + v33) = 0x8000000000000000;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_1CF7D2980();
              v43 = v59;
            }

            v44 = v39;
            v45 = *(v43 + 48) + *(v51 + 72) * v39;
            v28 = v57;
            (*(v51 + 8))(v45, v57);
            sub_1CF1D04D8(v44, v43);
            *(v58 + v33) = v43;
            v6 = v47;
          }

          swift_endAccess();
          (*v50)(v53, v28);
          goto LABEL_26;
        }
      }

      else
      {

        (*v56)(v6, 1, 1, v57);
      }

      sub_1CEFCCC44(v6, &unk_1EC4BE310, qword_1CF9FCBE0);
LABEL_26:

      v10 = v19;
      v11 = v20;
      if ((a1 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      v22 = sub_1CF9E7838();
      if (v22)
      {
        v59 = v22;
        sub_1CEFD57E0(0, &unk_1EDEAB630, 0x1E696AE38);
        swift_dynamicCast();
        v21 = v60[0];
        v19 = v10;
        v20 = v11;
        if (v60[0])
        {
          continue;
        }
      }

      goto LABEL_28;
    }
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v16)
    {
      goto LABEL_28;
    }

    v18 = *(v9 + 8 * v19);
    ++v17;
    if (v18)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

unint64_t sub_1CF7A74F4()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  v23 = MEMORY[0x1E69E7CC0];
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = v2 + 32;

    do
    {
      sub_1CF7AAD1C(v5, v22);
      Strong = swift_unknownObjectWeakLoadStrong();
      v7 = sub_1CF7AAD54(v22);
      if (Strong)
      {
        MEMORY[0x1D3868FA0](v7);
        if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v8 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1CF9E6D88();
        }

        sub_1CF9E6DE8();
        v3 = v23;
      }

      v5 += 8;
      --v4;
    }

    while (v4);
  }

  if (v3 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1CF9E7818())
  {
    v10 = *(v1 + 16);
    v11 = *(v10 + 16);
    if (i == v11)
    {
      break;
    }

    v12 = *(v1 + 16);

    if (!v11)
    {
      v15 = MEMORY[0x1E69E7CC0];
LABEL_24:

      v19 = *(v1 + 16);
      *(v1 + 16) = v15;

      return v3;
    }

    v13 = 0;
    v14 = v10 + 32;
    v15 = MEMORY[0x1E69E7CC0];
    while (v13 < *(v10 + 16))
    {
      sub_1CF7AAD1C(v14, v22);
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        sub_1CF7AAD84(v22, &v21);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v23 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1CF680F48(0, *(v15 + 16) + 1, 1);
          v15 = v23;
        }

        v18 = *(v15 + 16);
        v17 = *(v15 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_1CF680F48((v17 > 1), v18 + 1, 1);
          v15 = v23;
        }

        *(v15 + 16) = v18 + 1;
        sub_1CF7AAD84(&v21, v15 + 8 * v18 + 32);
      }

      else
      {
        sub_1CF7AAD54(v22);
      }

      ++v13;
      v14 += 8;
      if (v11 == v13)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_27:
    ;
  }

  return v3;
}

uint64_t sub_1CF7A773C@<X0>(uint64_t *a1@<X0>, id *a2@<X1>, char *a3@<X2>, void *a4@<X8>)
{
  v76 = a4;
  v71 = a3;
  v6 = sub_1CF9E6118();
  v74 = *(v6 - 8);
  v75 = v6;
  v7 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v73 = &v68 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v68 - v14;
  v16 = sub_1CF9E5A58();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v72 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v21 = MEMORY[0x1EEE9AC00](v20).n128_u64[0];
  v23 = &v68 - v22;
  v77 = *a1;
  v24 = *a2;
  v25 = [*a2 userInfo];
  type metadata accessor for ProgressUserInfoKey(0);
  sub_1CF7AAE24(&qword_1EDEA35D0, type metadata accessor for ProgressUserInfoKey);
  v26 = sub_1CF9E6638();

  if (!*(v26 + 16) || (v27 = sub_1CEFE863C(*MEMORY[0x1E696A880]), (v28 & 1) == 0))
  {
LABEL_13:

    (*(v17 + 56))(v15, 1, 1, v16);
    goto LABEL_14;
  }

  sub_1CEFD1104(*(v26 + 56) + 32 * v27, v79);

  v29 = swift_dynamicCast();
  (*(v17 + 56))(v15, v29 ^ 1u, 1, v16);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
LABEL_14:
    sub_1CEFCCC44(v15, &unk_1EC4BE310, qword_1CF9FCBE0);
    v45 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v46 = v24;
    v47 = sub_1CF9E6108();
    v48 = sub_1CF9E72A8();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v49 = 138543362;
      *(v49 + 4) = v46;
      *v50 = v46;
      v51 = v46;
      _os_log_impl(&dword_1CEFC7000, v47, v48, "[GlobalProgress] computePartialProgress: missing fileURL for %{public}@", v49, 0xCu);
      sub_1CEFCCC44(v50, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v50, -1, -1);
      MEMORY[0x1D386CDC0](v49, -1, -1);
    }

    result = (*(v74 + 8))(v9, v75);
    goto LABEL_17;
  }

  v9 = v23;
  (*(v17 + 32))(v23, v15, v16);
  v30 = OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_fileSizeCache;
  v31 = v71;
  swift_beginAccess();
  v32 = *&v31[v30];
  v34 = v72;
  v33 = v73;
  if (!*(v32 + 16))
  {
    goto LABEL_20;
  }

  v35 = sub_1CF7BFCDC(v9);
  if ((v36 & 1) == 0)
  {

LABEL_20:
    v52 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    (*(v17 + 16))(v34, v9, v16);
    v53 = sub_1CF9E6108();
    v54 = sub_1CF9E72A8();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v69 = v55;
      v70 = swift_slowAlloc();
      v78 = v70;
      *v55 = 136446210;
      v56 = sub_1CF9E5928();
      v57 = [v56 fp_shortDescription];
      v71 = v9;
      v58 = v57;

      v59 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v61 = v60;

      v62 = *(v17 + 8);
      v62(v34, v16);
      v63 = sub_1CEFD0DF0(v59, v61, &v78);

      v64 = v69;
      *(v69 + 1) = v63;
      v65 = v64;
      _os_log_impl(&dword_1CEFC7000, v53, v54, "[GlobalProgress] computePartialProgress: size missing for:%{public}s", v64, 0xCu);
      v66 = v70;
      __swift_destroy_boxed_opaque_existential_1(v70);
      MEMORY[0x1D386CDC0](v66, -1, -1);
      MEMORY[0x1D386CDC0](v65, -1, -1);

      (*(v74 + 8))(v33, v75);
      result = (v62)(v71, v16);
    }

    else
    {

      v67 = *(v17 + 8);
      v67(v34, v16);
      (*(v74 + 8))(v33, v75);
      result = (v67)(v9, v16);
    }

    goto LABEL_17;
  }

  v37 = *(*(v32 + 56) + 8 * v35);

  [v24 fractionCompleted];
  if (v38 >= 1.0)
  {
    result = (*(v17 + 8))(v9, v16);
LABEL_17:
    v44 = v77;
LABEL_18:
    *v76 = v44;
    return result;
  }

  [v24 fractionCompleted];
  v40 = v39;
  v41 = *(v17 + 8);
  v17 += 8;
  result = v41(v9, v16);
  v43 = v40 * v37;
  if (COERCE__INT64(fabs(v43)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (v43 <= -9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v43 < 9.22337204e18)
  {
    v44 = v77 + v43;
    if (!__OFADD__(v77, v43))
    {
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_13;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1CF7A7E98()
{
  v1 = sub_1CF9E64A8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = (&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_dispatchQueue);
  *v6 = v7;
  (*(v2 + 104))(v6, *MEMORY[0x1E69E8020], v1, v4);
  v8 = v7;
  LOBYTE(v7) = sub_1CF9E64D8();
  result = (*(v2 + 8))(v6, v1);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v10 = *(v0 + 32);
  if (*(v0 + 32) == 0)
  {
    v11 = OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_complementaryProgress;
    if (*(v0 + 48) == 0 && !*(v0 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_complementaryProgress))
    {
      return 1;
    }
  }

  else
  {
    v11 = OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_complementaryProgress;
  }

  v13 = *(v0 + v11);
  if (v13)
  {
    v14 = v13;
    v15 = sub_1CF9E71B8();
    if (v16)
    {
      v12 = 0;
    }

    else
    {
      v12 = v15;
    }

    [v14 totalUnitCount];
    sub_1CF9E71D8();
    [v14 completedUnitCount];

    return v12;
  }

  v17 = *(v0 + 48);
  v12 = v17 + v10;
  if (__OFADD__(v17, v10))
  {
    goto LABEL_17;
  }

  v18 = *(v0 + 56);
  if (__OFADD__(v18, *(v0 + 40)))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!__OFADD__(v18, *(v0 + 96)))
  {
    return v12;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1CF7A808C()
{
  v1 = v0;
  v2 = sub_1CF9E64A8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = (&aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_dispatchQueue);
  *v7 = v8;
  (*(v3 + 104))(v7, *MEMORY[0x1E69E8020], v2, v5);
  v9 = v8;
  LOBYTE(v8) = sub_1CF9E64D8();
  result = (*(v3 + 8))(v7, v2);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v11 = *(v1 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_publishedProgress);
  if (v11)
  {
    v12 = v1[3];
    v13 = *MEMORY[0x1E696A870];
    v14 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v16 = v15;
    if (v14 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v16 == v17)
    {
      v24 = v11;
    }

    else
    {
      v19 = sub_1CF9E8048();
      v20 = v11;

      if ((v19 & 1) == 0)
      {
        v21 = sub_1CEFCAFD4();
        if (!(v21 | v22))
        {
          v23 = v1[8] > 0;
LABEL_12:
          [v11 setPausable_];
          v25 = v1[13];
          v26 = v1[14];
          ObjectType = swift_getObjectType();
          if (((*(v26 + 80))(ObjectType, v26) & 1) != 0 && ([v11 isPaused] & 1) == 0)
          {
            [v11 setPausingHandler_];
            _Block_release(0);
            [v11 pause];
          }

          v28 = swift_allocObject();
          swift_weakInit();
          v36 = sub_1CF7AAC9C;
          v37 = v28;
          aBlock = MEMORY[0x1E69E9820];
          v33 = 1107296256;
          v34 = sub_1CEFCA444;
          v35 = &block_descriptor_63;
          v29 = _Block_copy(&aBlock);

          sub_1CF03C63C(sub_1CF7AAC9C);

          [v11 setPausingHandler_];
          _Block_release(v29);

          v30 = swift_allocObject();
          swift_weakInit();
          v36 = sub_1CF7AACD4;
          v37 = v30;
          aBlock = MEMORY[0x1E69E9820];
          v33 = 1107296256;
          v34 = sub_1CEFCA444;
          v35 = &block_descriptor_42;
          v31 = _Block_copy(&aBlock);

          sub_1CF03C63C(sub_1CF7AACD4);

          [v11 setResumingHandler_];
          _Block_release(v31);
        }
      }
    }

    v23 = 1;
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_1CF7A847C()
{
  v0 = sub_1CF9E6118();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v21 - v6;
  v8 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v9 = sub_1CF9E6108();
  v10 = sub_1CF9E72C8();

  if (os_log_type_enabled(v9, v10))
  {
    v21[1] = v4;
    v22 = v1;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v11 = 136446210;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v13 = sub_1CF7A5DA0();
      v15 = v14;
    }

    else
    {
      v15 = 0xE300000000000000;
      v13 = 6369134;
    }

    v16 = sub_1CEFD0DF0(v13, v15, &v23);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_1CEFC7000, v9, v10, "[GlobalProgress] %{public}s received paused request", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1D386CDC0](v12, -1, -1);
    MEMORY[0x1D386CDC0](v11, -1, -1);

    (*(v22 + 8))(v7, v0);
  }

  else
  {

    (*(v1 + 8))(v7, v0);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = *(result + 104);
    v19 = *(result + 112);
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    (*(v19 + 88))(1, ObjectType, v19);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1CF7A8878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CF9E63A8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CF9E6448();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = *(result + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_dispatchQueue);
    v21 = v11;
    v20 = v17;

    aBlock[4] = a2;
    aBlock[5] = a1;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CEFCA444;
    aBlock[3] = a3;
    v18 = _Block_copy(aBlock);

    sub_1CF9E63F8();
    v22 = MEMORY[0x1E69E7CC0];
    sub_1CF7AAE24(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
    sub_1CF00FED0(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
    sub_1CF9E77B8();
    v19 = v20;
    MEMORY[0x1D3869630](0, v15, v10, v18);
    _Block_release(v18);

    (*(v7 + 8))(v10, v6);
    (*(v12 + 8))(v15, v21);
  }

  return result;
}

uint64_t sub_1CF7A8B4C()
{
  v0 = sub_1CF9E6118();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v14 - v4;
  v6 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v7 = sub_1CF9E6108();
  v8 = sub_1CF9E72C8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1CEFC7000, v7, v8, "[GlobalProgress] received resume request on progress", v9, 2u);
    MEMORY[0x1D386CDC0](v9, -1, -1);
  }

  (*(v1 + 8))(v5, v0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = *(result + 104);
    v12 = *(result + 112);
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    (*(v12 + 88))(0, ObjectType, v12);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1CF7A8E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = sub_1CF9E6118();
  v40 = *(v8 - 8);
  v41 = v8;
  v9 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CF9E64A8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = (&v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v5 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_dispatchQueue);
  *v17 = v18;
  (*(v13 + 104))(v17, *MEMORY[0x1E69E8020], v12, v15);
  v19 = v18;
  LOBYTE(v18) = sub_1CF9E64D8();
  (*(v13 + 8))(v17, v12);
  if (v18)
  {
    v20 = OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_publishedProgress;
    if (!*(v5 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_publishedProgress))
    {
      v21 = [objc_allocWithZone(MEMORY[0x1E696AE38]) init];
      v22 = *(v5 + v20);
      *(v5 + v20) = v21;
      v23 = v21;

      v24 = sub_1CF9E5928();
      [v23 setFileURL_];

      [v23 fp:*(v5 + 24) setFileOperationKind:?];
      [v23 setCancellable_];
      [v23 setCompletedUnitCount_];
      [v23 setTotalUnitCount_];
      sub_1CF9E71E8();
      sub_1CF9E71C8();
      v25 = sub_1CF9E6EB8();
      [v23 setUserInfoObject:v25 forKey:*MEMORY[0x1E6967120]];

      v26 = fpfs_current_or_default_log();
      sub_1CF9E6128();

      v27 = sub_1CF9E6108();
      v28 = sub_1CF9E7298();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v42 = v30;
        *v29 = 136315138;
        v31 = sub_1CF7A5DA0();
        v33 = sub_1CEFD0DF0(v31, v32, &v42);

        *(v29 + 4) = v33;
        _os_log_impl(&dword_1CEFC7000, v27, v28, "[GlobalProgress] Publishing %s", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v30);
        MEMORY[0x1D386CDC0](v30, -1, -1);
        MEMORY[0x1D386CDC0](v29, -1, -1);
      }

      (*(v40 + 8))(v11, v41);
      sub_1CF7A808C();
      v34 = *MEMORY[0x1E696A848];
      v35 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v37 = v36;
      if (v35 != _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() || v37 != v38)
      {
        sub_1CF9E8048();
      }

      sub_1CF7AAA9C(v23);
      [v23 publish];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1CF7A92AC()
{
  v1 = sub_1CF9E6118();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_publishedProgress;
  v7 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_publishedProgress);
  if (v7)
  {
    v8 = v7;
    v9 = fpfs_current_or_default_log();
    sub_1CF9E6128();

    v10 = sub_1CF9E6108();
    v11 = sub_1CF9E7298();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v22 = v1;
      v13 = v12;
      v14 = swift_slowAlloc();
      v23 = v8;
      v24 = v14;
      v15 = v14;
      *v13 = 136315138;
      v16 = sub_1CF7A5DA0();
      v18 = sub_1CEFD0DF0(v16, v17, &v24);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_1CEFC7000, v10, v11, "[GlobalProgress] Unpublishing %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      v19 = v15;
      v8 = v23;
      MEMORY[0x1D386CDC0](v19, -1, -1);
      MEMORY[0x1D386CDC0](v13, -1, -1);

      (*(v2 + 8))(v5, v22);
    }

    else
    {

      (*(v2 + 8))(v5, v1);
    }

    [v8 unpublish];

    v20 = *(v0 + v6);
    *(v0 + v6) = 0;
  }
}

uint64_t sub_1CF7A94C4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 104);
  swift_unknownObjectRelease();
  v3 = OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_fileURL;
  v4 = sub_1CF9E5A58();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_dispatchTimer);
  swift_unknownObjectRelease();

  v6 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_activeChildProgress);

  v7 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_fileSizeCache);

  sub_1CEFCCC44(v0 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_complementaryProgressSubscriber, &unk_1EC4BEC50, &qword_1CF9FB4B0);

  return v0;
}

uint64_t sub_1CF7A95CC()
{
  sub_1CF7A94C4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FPFSGlobalProgress()
{
  result = qword_1EDEA6980;
  if (!qword_1EDEA6980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CF7A9678()
{
  result = sub_1CF9E5A58();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1CF7A97CC(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = sub_1CF7A9850(a1);

    return v3;
  }

  return result;
}

uint64_t (*sub_1CF7A9850(void *a1))()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v102 - v8;
  v10 = sub_1CF9E6118();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v110 = &v102 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v108 = &v102 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v109 = &v102 - v20;
  v21 = sub_1CF9E5A58();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v102 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v29 = 0;
  if (*(v1 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_useComplementaryProgress) == 1)
  {
    v103 = &v102 - v27;
    v104 = v28;
    v105 = v26;
    v30 = *(v1 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_log);
    v31 = fpfs_adopt_log();
    v106 = a1;
    v107 = v31;
    v32 = [a1 userInfo];
    type metadata accessor for ProgressUserInfoKey(0);
    sub_1CF7AAE24(&qword_1EDEA35D0, type metadata accessor for ProgressUserInfoKey);
    v33 = sub_1CF9E6638();

    if (*(v33 + 16) && (v34 = v1, v35 = sub_1CEFE863C(*MEMORY[0x1E6967118]), (v36 & 1) != 0))
    {
      sub_1CEFD1104(*(v33 + 56) + 32 * v35, v112);

      if (swift_dynamicCast() & 1) != 0 && (v111)
      {
        v37 = [v106 fileURL];
        v102 = v11;
        if (v37)
        {
          v38 = v103;
          v39 = v37;
          sub_1CF9E59D8();

          v40 = sub_1CF9E5928();
          v41 = sub_1CF9E5928();
          v42 = [v40 fp:v41 relationshipToItemAtURL:?];

          if (v42 == 1)
          {
            v43 = [v106 fileOperationKind];
            if (v43)
            {
              v44 = v43;
              v45 = *(v34 + 24);
              v46 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
              v48 = v47;
              if (v46 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v48 == v49)
              {

LABEL_30:
                v81 = fpfs_current_or_default_log();
                sub_1CF9E6128();
                v82 = v106;
                v83 = sub_1CF9E6108();
                v84 = sub_1CF9E7298();

                if (os_log_type_enabled(v83, v84))
                {
                  v85 = swift_slowAlloc();
                  v86 = swift_slowAlloc();
                  *v85 = 138543362;
                  *(v85 + 4) = v82;
                  *v86 = v82;
                  v87 = v82;
                  _os_log_impl(&dword_1CEFC7000, v83, v84, "[GlobalProgress] complementary progress published: %{public}@", v85, 0xCu);
                  sub_1CEFCCC44(v86, &qword_1EC4BE350, &unk_1CF9FC3B0);
                  MEMORY[0x1D386CDC0](v86, -1, -1);
                  MEMORY[0x1D386CDC0](v85, -1, -1);
                }

                (*(v102 + 8))(v109, v10);
                v88 = *(v34 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_dispatchQueue);
                v89 = swift_allocObject();
                *(v89 + 16) = v34;
                *(v89 + 24) = v82;
                v90 = v82;

                sub_1CF01001C(0, "didPublishComplementaryProgress(progress:)", 42, 2, sub_1CF7AAEF0, v89);

                (*(v104 + 8))(v103, v105);
                v91 = swift_allocObject();
                swift_weakInit();
                v92 = swift_allocObject();
                *(v92 + 16) = v91;
                *(v92 + 24) = v90;
                v93 = v90;
                v29 = sub_1CF7AAF3C;
                goto LABEL_17;
              }

              v80 = sub_1CF9E8048();

              if (v80)
              {
                goto LABEL_30;
              }
            }

            v94 = fpfs_current_or_default_log();
            v95 = v108;
            sub_1CF9E6128();
            v96 = v106;
            v97 = sub_1CF9E6108();
            v98 = sub_1CF9E7298();

            if (os_log_type_enabled(v97, v98))
            {
              v99 = swift_slowAlloc();
              v100 = swift_slowAlloc();
              *v99 = 138543362;
              *(v99 + 4) = v96;
              *v100 = v96;
              v101 = v96;
              _os_log_impl(&dword_1CEFC7000, v97, v98, "[GlobalProgress] ignoring progress:<%{public}@> with different kind", v99, 0xCu);
              sub_1CEFCCC44(v100, &qword_1EC4BE350, &unk_1CF9FC3B0);
              MEMORY[0x1D386CDC0](v100, -1, -1);
              MEMORY[0x1D386CDC0](v99, -1, -1);
            }

            (*(v102 + 8))(v95, v10);
            (*(v104 + 8))(v103, v105);
LABEL_16:
            v29 = 0;
LABEL_17:
            v54 = v107;
            v55 = fpfs_adopt_log();

            return v29;
          }

          (*(v104 + 8))(v38, v105);
        }

        v57 = [v106 fileURL];
        if (v57)
        {
          v58 = v57;
          sub_1CF9E59D8();

          v59 = 0;
        }

        else
        {
          v59 = 1;
        }

        v61 = v104;
        v60 = v105;
        (*(v104 + 56))(v6, v59, 1, v105);
        sub_1CF007D78(v6, v9);
        if ((*(v61 + 48))(v9, 1, v60))
        {
          sub_1CEFCCC44(v9, &unk_1EC4BE310, qword_1CF9FCBE0);
          v62 = 0;
          v63 = 0xE000000000000000;
        }

        else
        {
          v64 = v105;
          (*(v61 + 16))(v24, v9, v105);
          sub_1CEFCCC44(v9, &unk_1EC4BE310, qword_1CF9FCBE0);
          v65 = sub_1CF9E5928();
          v66 = [v65 fp_shortDescription];

          v62 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v63 = v67;

          (*(v61 + 8))(v24, v64);
        }

        v68 = fpfs_current_or_default_log();
        v69 = v110;
        sub_1CF9E6128();
        v70 = v106;

        v71 = sub_1CF9E6108();
        v72 = sub_1CF9E7298();

        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          v76 = v102;
          v77 = v75;
          v112[0] = v75;
          *v73 = 138543618;
          *(v73 + 4) = v70;
          *v74 = v70;
          *(v73 + 12) = 2082;
          v78 = v70;
          v79 = sub_1CEFD0DF0(v62, v63, v112);

          *(v73 + 14) = v79;
          _os_log_impl(&dword_1CEFC7000, v71, v72, "[GlobalProgress] ignoring progress:<%{public}@> with different URL: %{public}s", v73, 0x16u);
          sub_1CEFCCC44(v74, &qword_1EC4BE350, &unk_1CF9FC3B0);
          MEMORY[0x1D386CDC0](v74, -1, -1);
          __swift_destroy_boxed_opaque_existential_1(v77);
          MEMORY[0x1D386CDC0](v77, -1, -1);
          MEMORY[0x1D386CDC0](v73, -1, -1);

          (*(v76 + 8))(v110, v10);
        }

        else
        {

          (*(v102 + 8))(v69, v10);
        }

        goto LABEL_16;
      }
    }

    else
    {
    }

    v50 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v51 = sub_1CF9E6108();
    v52 = sub_1CF9E7298();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_1CEFC7000, v51, v52, "[GlobalProgress] ignoring not CloudDocs progress", v53, 2u);
      MEMORY[0x1D386CDC0](v53, -1, -1);
    }

    (*(v11 + 8))(v14, v10);
    goto LABEL_16;
  }

  return v29;
}

id sub_1CF7AA374(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v6 = v4();
  v8 = v7;

  if (v6)
  {
    v10[4] = v6;
    v10[5] = v8;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_1CEFCA444;
    v10[3] = &block_descriptor_84_1;
    v6 = _Block_copy(v10);
  }

  return v6;
}

uint64_t sub_1CF7AA454(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1CF7AA4B4(a2);
  }

  return result;
}

void sub_1CF7AA4B4(void *a1)
{
  v2 = v1;
  v4 = sub_1CF9E6118();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_useComplementaryProgress) == 1)
  {
    v9 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v10 = a1;
    v11 = sub_1CF9E6108();
    v12 = sub_1CF9E7298();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138543362;
      *(v13 + 4) = v10;
      *v14 = v10;
      v15 = v10;
      _os_log_impl(&dword_1CEFC7000, v11, v12, "[GlobalProgress] complementary progress unpublished: %{public}@", v13, 0xCu);
      sub_1CEFCCC44(v14, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v14, -1, -1);
      MEMORY[0x1D386CDC0](v13, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    v16 = *(v2 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_complementaryProgress);
    if (v16)
    {
      sub_1CEFD57E0(0, &unk_1EDEAB630, 0x1E696AE38);
      v17 = v10;
      v18 = v16;
      v19 = sub_1CF9E7568();

      if (v19)
      {
        v20 = *(v2 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_dispatchQueue);

        sub_1CF01001C(0, "didUnpublishComplemetaryProgress(progress:)", 43, 2, sub_1CF7AAF44, v2);
      }
    }
  }
}

uint64_t sub_1CF7AA71C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1CF9E63A8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1CF9E6448();
  v10 = *(v18 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *(v2 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_dispatchQueue);
  v14 = swift_allocObject();
  v14[2] = v2;
  v14[3] = a1;
  v14[4] = a2;
  aBlock[4] = sub_1CF7AAF58;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFCA444;
  aBlock[3] = &block_descriptor_97_0;
  v15 = _Block_copy(aBlock);

  sub_1CF9E63F8();
  v19 = MEMORY[0x1E69E7CC0];
  sub_1CF7AAE24(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CF00FED0(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CF9E77B8();
  MEMORY[0x1D3869630](0, v13, v9, v15);
  _Block_release(v15);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v18);
}

uint64_t sub_1CF7AA9E8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[3];
  v7 = *MEMORY[0x1E696A848];
  v8 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v10 = v9;
  if (v8 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v10 == v11)
  {

    goto LABEL_8;
  }

  v13 = sub_1CF9E8048();

  if (v13)
  {
LABEL_8:
    a1[10] = a2;
    a1[11] = a3;
  }

  return result;
}

void sub_1CF7AAA9C(void *a1)
{
  v2 = sub_1CF9E71B8();
  if ((v3 & 1) == 0)
  {
    v4 = v2;
    if (v2 >= 1)
    {
      v5 = sub_1CF9E6888();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      inited = swift_initStackObject();
      v7 = MEMORY[0x1E69E6530];
      v8 = MEMORY[0x1E69E65A8];
      *(inited + 16) = xmmword_1CF9FA450;
      *(inited + 56) = v7;
      *(inited + 64) = v8;
      *(inited + 32) = v4;
      sub_1CF9E82F8();
      swift_setDeallocating();
      v9 = *(inited + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C47D0, &unk_1CFA16C90);
      swift_arrayDestroy();
      v10 = FPLocv();

      if (!v10)
      {
        _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v10 = sub_1CF9E6888();
      }

      [a1 setLocalizedDescription_];
    }
  }
}

unint64_t sub_1CF7AADBC()
{
  result = qword_1EC4C47E0;
  if (!qword_1EC4C47E0)
  {
    sub_1CEFD57E0(255, &unk_1EDEAB630, 0x1E696AE38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C47E0);
  }

  return result;
}

uint64_t sub_1CF7AAE24(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CF7AAE80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1CF7AAEF0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v1 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_complementaryProgress);
  *(v1 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_complementaryProgress) = v2;
  v3 = v2;
}

void sub_1CF7AAF44()
{
  v1 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_complementaryProgress);
  *(v0 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_complementaryProgress) = 0;
}

void sub_1CF7AAF88(uint64_t a1, uint64_t a2, int a3, int a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v105 = a7;
  v106 = a8;
  v112 = a6;
  v101 = a5;
  v110 = a1;
  v111 = a2;
  v91 = sub_1CF9E63D8();
  v90 = *(v91 - 8);
  v11 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v89 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v115 = &v88 - v18;
  v19 = sub_1CF9E6068();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8);
  v28 = &v88 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v109 = &v88 - v29;
  v95 = type metadata accessor for Signpost(0);
  v98 = *(v95 - 8);
  v30 = *(v98 + 8);
  v31 = MEMORY[0x1EEE9AC00](v95);
  v100 = &v88 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v31);
  v99 = &v88 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v114 = &v88 - v34;
  v35 = *(v8 + qword_1EDEBBC38);
  v36 = fpfs_adopt_log();
  v104 = a4;
  v108 = v36;
  if (a4)
  {
    if (a4 == 1 && *(v8 + qword_1EC4EBCD0))
    {
      v37 = *(v8 + qword_1EC4EBCD0 + 8);
      v38 = "DB queue ro slow wait";
      v94 = 21;
      v97 = 16;
      v39 = "DB queue ro slow";
      goto LABEL_8;
    }
  }

  else if (*(v8 + qword_1EC4EBCD8))
  {
    v37 = *(v8 + qword_1EC4EBCD8 + 8);
    v38 = "DB queue ro fast wait";
    v94 = 21;
    v97 = 16;
    v39 = "DB queue ro fast";
    goto LABEL_8;
  }

  v37 = *(v8 + 64);
  v38 = "DB queue wait";
  v94 = 13;
  v97 = 8;
  v39 = "DB queue";
LABEL_8:
  v96 = v39;
  v113 = v8;
  v107 = v17;
  v102 = v37;
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v40 = qword_1EDEBBE40;
  v41 = v109;
  (*(v20 + 56))(v109, 1, 1, v19);
  aBlock = 0x657220636E797361;
  v117 = 0xEB00000000206461;
  v103 = a3;
  v42 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v42);

  v93 = aBlock;
  v92 = v117;
  sub_1CEFCCBDC(v41, v28, &unk_1EC4BED20, &unk_1CFA00700);
  v43 = *(v20 + 48);
  if (v43(v28, 1, v19) == 1)
  {
    v44 = v40;
    sub_1CF9E6048();
    if (v43(v28, 1, v19) != 1)
    {
      sub_1CEFCCC44(v28, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v20 + 32))(v23, v28, v19);
  }

  v45 = v114;
  (*(v20 + 16))(v114, v23, v19);
  v46 = v95;
  *(v45 + *(v95 + 20)) = v40;
  v47 = v45 + *(v46 + 24);
  v48 = v94;
  *v47 = v38;
  *(v47 + 8) = v48;
  *(v47 + 16) = 2;
  v49 = v40;
  v50 = v23;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_1CF9FA450;
  *(v51 + 56) = MEMORY[0x1E69E6158];
  *(v51 + 64) = sub_1CEFD51C4();
  v52 = v92;
  *(v51 + 32) = v93;
  *(v51 + 40) = v52;
  sub_1CF9E6028();

  (*(v20 + 8))(v50, v19);
  sub_1CEFCCC44(v109, &unk_1EC4BED20, &unk_1CFA00700);
  v53 = v99;
  sub_1CEFDA2E4(v45, v99, type metadata accessor for Signpost);
  v54 = (*(v98 + 80) + 16) & ~*(v98 + 80);
  v55 = v54 + v30;
  v56 = (v55 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = swift_allocObject();
  v98 = type metadata accessor for Signpost;
  sub_1CEFDA05C(v53, v57 + v54, type metadata accessor for Signpost);
  v58 = (v57 + v56);
  v59 = v112;
  *v58 = v101;
  v58[1] = v59;
  v109 = *(v113 + 168);
  v60 = sub_1CF9E6448();
  v61 = *(v60 - 8);
  (*(v61 + 56))(v115, 1, 1, v60);
  v62 = v100;
  sub_1CEFDA2E4(v45, v100, type metadata accessor for Signpost);
  v63 = (v55 + 31) & 0xFFFFFFFFFFFFFFF8;
  v101 = (v55 + 55) & 0xFFFFFFFFFFFFFFF8;
  v64 = (v55 + 71) & 0xFFFFFFFFFFFFFFF8;
  v65 = swift_allocObject();
  sub_1CEFDA05C(v62, v65 + v54, v98);
  v66 = v65 + v56;
  v67 = v97;
  *v66 = v96;
  *(v66 + 8) = v67;
  *(v66 + 16) = 2;
  v68 = v65 + v63;
  v69 = v111;
  *v68 = v110;
  *(v68 + 8) = v69;
  LOBYTE(v69) = v104;
  *(v68 + 16) = v103;
  v70 = v65 + v101;
  *v70 = v113;
  *(v70 + 8) = v69;
  v71 = (v65 + v64);
  v72 = v106;
  *v71 = v105;
  v71[1] = v72;
  v73 = (v65 + ((v64 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v73 = sub_1CF7B7AA4;
  v73[1] = v57;
  v74 = swift_allocObject();
  v74[2] = sub_1CF7B7AA4;
  v74[3] = v57;
  v75 = v109;
  v74[4] = v109;
  v111 = v57;
  swift_retain_n();

  v76 = fpfs_current_log();
  v77 = *(v75 + 16);
  v78 = v107;
  sub_1CEFCCBDC(v115, v107, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v61 + 48))(v78, 1, v60) == 1)
  {
    sub_1CEFCCC44(v78, &unk_1EC4BE370, qword_1CFA01B30);
    v79 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v80 = v89;
    sub_1CF9E6438();
    (*(v61 + 8))(v78, v60);
    v79 = sub_1CF9E63C8();
    (*(v90 + 8))(v80, v91);
  }

  v81 = swift_allocObject();
  v81[2] = v76;
  v81[3] = sub_1CF7B7ABC;
  v81[4] = v65;
  v120 = sub_1CEFCA438;
  v121 = v81;
  aBlock = MEMORY[0x1E69E9820];
  v117 = 1107296256;
  v118 = sub_1CEFCA444;
  v119 = &block_descriptor_43;
  v82 = _Block_copy(&aBlock);
  v83 = v76;

  v120 = sub_1CF2AF9E8;
  v121 = v74;
  aBlock = MEMORY[0x1E69E9820];
  v117 = 1107296256;
  v118 = sub_1CEFCA444;
  v119 = &block_descriptor_64_0;
  v84 = _Block_copy(&aBlock);

  v85 = v102;
  fp_task_tracker_async_and_qos(v77, v102, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v79, v82, v84);
  _Block_release(v84);
  _Block_release(v82);

  sub_1CEFCCC44(v115, &unk_1EC4BE370, qword_1CFA01B30);
  sub_1CEFD52D8(v114, type metadata accessor for Signpost);
  v86 = v108;
  v87 = fpfs_adopt_log();
}

size_t sub_1CF7ABB18(uint64_t a1)
{
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C48B8, &unk_1CFA180E0);
  v3 = *(*(v67 - 8) + 64);
  MEMORY[0x1EEE9AC00](v67);
  v65 = (v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v66 = (v55 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v64 = v55 - v10;
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  v17 = *(a1 + 48);
  v68 = v14;
  v69 = v15;
  v70 = v16;
  v18 = sub_1CF7B868C(v11, v12, v13, v14, v15, v16, v17);
  v19 = MEMORY[0x1E69E7CC0];
  if (!v18)
  {
    return v19;
  }

  v20 = v18;
  v21 = v8;
  v22 = MEMORY[0x1E69E7CC0];
  sub_1CF0BA900(v11, v12, v13);
  v75 = v22;
  result = sub_1CF680F68(0, v20 & ~(v20 >> 63), 0);
  if ((v20 & 0x8000000000000000) == 0)
  {
    v24 = 0;
    v25 = v17 + 64;
    v74 = v75;
    v55[1] = v1;
    v56 = v17 + 72;
    v26 = v13;
    v27 = v11;
    v28 = v21;
    v59 = v11;
    v60 = v12;
    v58 = v13;
    v57 = v20;
    v61 = v17 + 64;
    v62 = v21;
    v63 = v17;
    while (1)
    {
      v31 = __OFADD__(v24, 1);
      v32 = v24 + 1;
      if (v31)
      {
        break;
      }

      if ((v26 | v13))
      {
        goto LABEL_39;
      }

      if (v27 < v11)
      {
        goto LABEL_29;
      }

      if (v70)
      {
        goto LABEL_40;
      }

      if (v12 != v69)
      {
        goto LABEL_30;
      }

      if (v27 >= v68)
      {
        goto LABEL_31;
      }

      if (v27 < 0 || v27 >= 1 << *(v17 + 32))
      {
        goto LABEL_32;
      }

      v33 = v27 >> 6;
      if ((*(v25 + 8 * (v27 >> 6)) & (1 << v27)) == 0)
      {
        goto LABEL_33;
      }

      if (*(v17 + 36) != v12)
      {
        goto LABEL_34;
      }

      v71 = v32;
      v72 = 1 << v27;
      v34 = v67;
      v35 = *(v67 + 48);
      v36 = *(v17 + 56);
      v37 = *(v17 + 48) + 16 * v27;
      v38 = *v37;
      LOBYTE(v37) = *(v37 + 8);
      v39 = v65;
      *v65 = v38;
      *(v39 + 8) = v37;
      v73 = *(v28 + 72);
      sub_1CEFCCBDC(v36 + v73 * v27, v39 + v35, &unk_1EC4BE360, &qword_1CF9FE650);
      v40 = *(v39 + 8);
      v41 = v66;
      *v66 = *v39;
      *(v41 + 8) = v40;
      sub_1CEFE55D0(v39 + v35, v41 + *(v34 + 48), &unk_1EC4BE360, &qword_1CF9FE650);
      sub_1CEFCCBDC(v41, v39, &qword_1EC4C48B8, &unk_1CFA180E0);
      v42 = v39 + *(v34 + 48);
      v43 = v64;
      sub_1CEFE55D0(v42, v64, &unk_1EC4BE360, &qword_1CF9FE650);
      sub_1CEFCCC44(v41, &qword_1EC4C48B8, &unk_1CFA180E0);
      v44 = v74;
      v75 = v74;
      v46 = *(v74 + 16);
      v45 = *(v74 + 24);
      if (v46 >= v45 >> 1)
      {
        sub_1CF680F68(v45 > 1, v46 + 1, 1);
        v44 = v75;
      }

      *(v44 + 16) = v46 + 1;
      v28 = v62;
      v47 = (*(v28 + 80) + 32) & ~*(v28 + 80);
      v74 = v44;
      result = sub_1CEFE55D0(v43, v44 + v47 + v46 * v73, &unk_1EC4BE360, &qword_1CF9FE650);
      v17 = v63;
      v29 = 1 << *(v63 + 32);
      if (v27 >= v29)
      {
        goto LABEL_35;
      }

      v25 = v61;
      v48 = *(v61 + 8 * v33);
      if ((v48 & v72) == 0)
      {
        goto LABEL_36;
      }

      LODWORD(v12) = v60;
      if (*(v63 + 36) != v60)
      {
        goto LABEL_37;
      }

      v49 = v48 & (-2 << (v27 & 0x3F));
      if (v49)
      {
        v29 = __clz(__rbit64(v49)) | v27 & 0x7FFFFFFFFFFFFFC0;
        v11 = v59;
        v13 = v58;
        v30 = v57;
        v24 = v71;
      }

      else
      {
        v50 = v33 << 6;
        v51 = v33 + 1;
        v30 = v57;
        v52 = (v56 + 8 * v33);
        v11 = v59;
        v13 = v58;
        v24 = v71;
        while (v51 < (v29 + 63) >> 6)
        {
          v54 = *v52++;
          v53 = v54;
          v50 += 64;
          ++v51;
          if (v54)
          {
            v29 = __clz(__rbit64(v53)) + v50;
            break;
          }
        }
      }

      v26 = 0;
      v27 = v29;
      if (v24 == v30)
      {
        return v74;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1CF7ABFD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = -1 << *(a2 + 32);
  result = sub_1CF9E77C8();
  v8 = 1 << *(a2 + 32);
  if (v8 < result)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (*(a1 + 16))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = *(a2 + 36);
  v10 = *(a1 + 8);
  if (v9 != v10)
  {
    goto LABEL_12;
  }

  if (*a1 < result)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a1 + 40))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v11 = *(a1 + 32);
  if (v9 != v11)
  {
    goto LABEL_14;
  }

  v12 = *(a1 + 24);
  if (v8 < v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *a3 = *a1;
  *(a3 + 8) = v10;
  *(a3 + 16) = 0;
  *(a3 + 24) = v12;
  *(a3 + 32) = v11;
  *(a3 + 40) = 0;
  *(a3 + 48) = a2;
}

uint64_t sub_1CF7AC0B4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, unsigned __int8 a9, void (*a10)(id *), uint64_t a11)
{
  v52 = a8;
  v53 = a2;
  LODWORD(v47) = a7;
  v55 = a4;
  v54 = a3;
  v50 = a10;
  v51 = a11;
  v49 = a9;
  v12 = sub_1CF9E6068();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v45 - v22;
  v24 = type metadata accessor for Signpost(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v45 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E7458();
  v28 = *(v24 + 24);
  v29 = *(a1 + *(v24 + 20));
  v30 = *(a1 + v28);
  v31 = *(a1 + v28 + 8);
  v32 = *(a1 + v28 + 16);
  sub_1CF9E6038();
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v33 = qword_1EDEBBE40;
  (*(v13 + 56))(v23, 1, 1, v12);
  v56 = 0x657220636E797361;
  v57 = 0xEB00000000206461;
  v34 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v34);

  v46 = v57;
  v47 = v56;
  sub_1CEFCCBDC(v23, v21, &unk_1EC4BED20, &unk_1CFA00700);
  v35 = *(v13 + 48);
  v36 = v35(v21, 1, v12);
  v48 = v23;
  if (v36 == 1)
  {
    v37 = v33;
    sub_1CF9E6048();
    if (v35(v21, 1, v12) != 1)
    {
      sub_1CEFCCC44(v21, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v13 + 32))(v16, v21, v12);
  }

  (*(v13 + 16))(v27, v16, v12);
  *&v27[*(v24 + 20)] = v33;
  v38 = &v27[*(v24 + 24)];
  v39 = v16;
  v40 = v54;
  *v38 = v53;
  *(v38 + 1) = v40;
  v38[16] = v55;
  v41 = v33;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1CF9FA450;
  *(v42 + 56) = MEMORY[0x1E69E6158];
  *(v42 + 64) = sub_1CEFD51C4();
  v43 = v46;
  *(v42 + 32) = v47;
  *(v42 + 40) = v43;
  sub_1CF9E6028();

  (*(v13 + 8))(v39, v12);
  sub_1CEFCCC44(v48, &unk_1EC4BED20, &unk_1CFA00700);

  sub_1CF3C7B2C(v49, v52, v50);
  sub_1CF9E7458();
  sub_1CF9E6038();
  return sub_1CEFD52D8(v27, type metadata accessor for Signpost);
}

id sub_1CF7AC5B0(void *a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v55 = a5;
  v53 = a3;
  v54 = a4;
  v58 = a2;
  v7 = sub_1CF9E6118();
  v56 = *(v7 - 8);
  v8 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v57 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E79E8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v61[0] = a1;
  v15 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  if (swift_dynamicCast())
  {
    if (v68 == 8)
    {
      sub_1CF47FB38(&v65);
    }

    else if (v68 != 9 || (v65 - 1) > 2 || (v16 = vorrq_s8(v66, v67), *&vorr_s8(*v16.i8, *&vextq_s8(v16, v16, 8uLL)) | *(&v65 + 1)))
    {
      sub_1CF47FB38(&v65);
      goto LABEL_7;
    }

    v22 = *&v61[0];
    goto LABEL_18;
  }

LABEL_7:

  *&v65 = a1;
  v17 = a1;
  type metadata accessor for PQLSqliteError(0);
  if (swift_dynamicCast())
  {

    v18 = v65;
LABEL_11:

LABEL_12:
    v20 = *(v5 + qword_1EDEAE660);
    *(v5 + qword_1EDEAE660) = a1;
    v21 = a1;
    v22 = v20;
LABEL_18:

    v26 = *(v5 + qword_1EDEBBDA0 + 8);
    return (*(v5 + qword_1EDEBBDA0))(v5, a1);
  }

  *&v61[0] = a1;
  v19 = a1;
  if (swift_dynamicCast())
  {
    sub_1CF47FB38(&v65);
    v18 = *&v61[0];
    goto LABEL_11;
  }

  v52 = v7;

  *&v65 = a1;
  v23 = a1;
  v24 = swift_dynamicCast();

  if (v24)
  {
    goto LABEL_12;
  }

  *&v65 = a1;
  v25 = a1;
  if (swift_dynamicCast())
  {
    (*(v11 + 8))(v14, v10);
    v18 = v65;
    goto LABEL_11;
  }

  v74 = a1;
  v28 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
  if (swift_dynamicCast())
  {
    v61[6] = v71;
    v61[7] = v72;
    v62 = v73;
    v61[2] = v67;
    v61[3] = v68;
    v61[4] = v69;
    v61[5] = v70;
    v61[0] = v65;
    v61[1] = v66;
    if (sub_1CF2B971C(v61) == 15)
    {
      v29 = v74;
LABEL_28:

LABEL_36:
      swift_willThrow();
      return a1;
    }

    v59[6] = v71;
    v59[7] = v72;
    v60 = v73;
    v59[2] = v67;
    v59[3] = v68;
    v59[4] = v69;
    v59[5] = v70;
    v59[0] = v65;
    v59[1] = v66;
    sub_1CEFCCC44(v59, &unk_1EC4BE320, &unk_1CFA08B50);
  }

  *&v61[0] = a1;
  v30 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
  if (swift_dynamicCast())
  {
    if (BYTE8(v70) == 11 && v65 == 4 && !(*(&v69 + 1) | v70 | v69 | *(&v68 + 1) | v68 | v67.i64[1] | v67.i64[0] | v66.i64[1] | v66.i64[0] | *(&v65 + 1)))
    {
      v29 = *&v61[0];
      goto LABEL_28;
    }

    sub_1CF480678(v65, *(&v65 + 1), v66.u64[0], v66.i64[1], v67.i64[0], v67.u64[1], v68, *(&v68 + 1), v69, *(&v69 + 1), v70, BYTE8(v70));
  }

  *&v65 = a1;
  v31 = a1;
  v32 = swift_dynamicCast();

  if ((v32 & 1) != 0 || (v58 & 1) == 0)
  {
    goto LABEL_36;
  }

  if ((*(v5 + 84) & 4) == 0)
  {
    v33 = fpfs_current_or_default_log();
    v34 = v57;
    sub_1CF9E6128();
    v35 = a1;
    v36 = sub_1CF9E6108();
    v37 = sub_1CF9E72B8();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *&v65 = v40;
      *v38 = 136446466;
      v41 = sub_1CF9E7988();
      v43 = sub_1CEFD0DF0(v41, v42, &v65);

      *(v38 + 4) = v43;
      *(v38 + 12) = 2112;
      swift_getErrorValue();
      v44 = Error.prettyDescription.getter(v64);
      *(v38 + 14) = v44;
      *v39 = v44;
      _os_log_impl(&dword_1CEFC7000, v36, v37, "unhandled database persistence error in %{public}s: %@", v38, 0x16u);
      sub_1CEFCCC44(v39, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v39, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x1D386CDC0](v40, -1, -1);
      MEMORY[0x1D386CDC0](v38, -1, -1);

      (*(v56 + 8))(v57, v52);
    }

    else
    {

      (*(v56 + 8))(v34, v52);
    }

    goto LABEL_36;
  }

  *&v65 = 0;
  *(&v65 + 1) = 0xE000000000000000;
  sub_1CF9E7948();

  *&v65 = 0xD000000000000028;
  *(&v65 + 1) = 0x80000001CFA46FF0;
  v45 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v45);

  MEMORY[0x1D3868CC0](8250, 0xE200000000000000);
  swift_getErrorValue();
  v46 = Error.prettyDescription.getter(v63);
  v47 = [v46 description];
  v48 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v50 = v49;

  MEMORY[0x1D3868CC0](v48, v50);

  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF7ACD74(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, unint64_t a7)
{
  v7 = a7 >> 62;
  if ((a7 >> 62) > 1)
  {
    if (v7 != 2)
    {
      return 0;
    }

    v10 = *(a6 + 16);
    v9 = *(a6 + 24);
    v11 = __OFSUB__(v9, v10);
    v8 = v9 - v10;
    if (v11)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (v8 < 1)
    {
      return 0;
    }
  }

  else if (v7)
  {
    LODWORD(v8) = HIDWORD(a6) - a6;
    if (__OFSUB__(HIDWORD(a6), a6))
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v8 = v8;
    if (v8 < 1)
    {
      return 0;
    }
  }

  else
  {
    v8 = BYTE6(a7);
    if (!BYTE6(a7))
    {
      return 0;
    }
  }

  if ((a5 & 1) == 0)
  {
    if (a3 != a4)
    {
      if ((a2 - 0x1000000000000000) >> 61 != 7)
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v8 = a4 - a3;
      if (__OFSUB__(a4, a3))
      {
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        return result;
      }

      LODWORD(v7) = 8 * a2;
      if (v8 >= 8 * a2)
      {
        v8 = 8 * a2;
      }

      v12 = a3 + v8;
      if (__OFADD__(a3, v8))
      {
        goto LABEL_43;
      }

      if (v12 >= a3)
      {
        goto LABEL_30;
      }

      __break(1u);
      goto LABEL_23;
    }

    return 0;
  }

  if (v7)
  {
    if (v7 == 2)
    {
      a3 = *(a6 + 16);
    }

    else
    {
      a3 = a6;
    }

    goto LABEL_25;
  }

LABEL_23:
  a3 = v7;
LABEL_25:
  if ((a2 - 0x1000000000000000) >> 61 != 7)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v8 >= 8 * a2)
  {
    v8 = 8 * a2;
  }

  v12 = a3 + v8;
  if (__OFADD__(a3, v8))
  {
    goto LABEL_39;
  }

  if (v12 < a3)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

LABEL_30:
  if (a3 == v12)
  {
    return 0;
  }

  if (!result)
  {
    goto LABEL_44;
  }

  v13 = a3;
  sub_1CF9E5B38();
  result = v12 - v13;
  if (__OFSUB__(v12, v13))
  {
    __break(1u);
    goto LABEL_36;
  }

  return result;
}

uint64_t sub_1CF7ACED8()
{
  v1 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_previousAnchor);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CF9E6298();

  if (v1 >= v8)
  {
    v3 = sub_1CF4E3884(MEMORY[0x1E69E7CC0]);
    v4 = OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_changedItemsByID;
    swift_beginAccess();
    v5 = *(v0 + v4);
    *(v0 + v4) = v3;

    v6 = OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_deletedItemsIDs;
    swift_beginAccess();
    v7 = *(v0 + v6);
    *(v0 + v6) = MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1CF7ACFC8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CF9E6298();

  return v1;
}

uint64_t sub_1CF7AD03C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_observer);
    v2 = result;
    swift_unknownObjectRetain();

    [v1 enumerationResultsDidChange];
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1CF7AD0B8()
{
  sub_1CF7AD590();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FPFSEnumerator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1CF7AD294(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      v6 = [objc_allocWithZone(MEMORY[0x1E6967330]) init];
      v7 = [v5 providerDomainID];
      v8 = [objc_allocWithZone(MEMORY[0x1E69673A0]) initWithProviderDomainID:v7 itemIdentifier:a1];

      [v6 setEnumeratedItemID_];
      v9 = [v5 extensionBackend];
      v10 = *(v1 + OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_lifetimeExtender);
      v11 = [objc_allocWithZone(type metadata accessor for DummyEnumeratorObserver()) init];
      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_1CF7B9C08;
      aBlock[5] = v12;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1CF03FCFC;
      aBlock[3] = &block_descriptor_173_0;
      v13 = _Block_copy(aBlock);

      [v9 enumerateWithSettings:v6 lifetimeExtender:v10 observer:v11 completionHandler:v13];
      _Block_release(v13);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1CF7AD4C4(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (Strong[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_invalidated])
    {
      if (a1)
      {
        v3 = Strong;
        [a1 invalidate];
      }

      else
      {
      }
    }

    else
    {
      v4 = *&Strong[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_extensionEnumerator];
      *&Strong[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_extensionEnumerator] = a1;
      v5 = Strong;
      swift_unknownObjectRetain();

      swift_unknownObjectRelease();
    }
  }

  else if (a1)
  {
    [a1 invalidate];
  }
}

void sub_1CF7AD590()
{
  v1 = (v0 + OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_invalidated);
  __swp(v1, v1);
  if ((v1 & 1) == 0)
  {
    v2 = v0;
    v3 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_keepAlive);
    if (v3)
    {
      v4 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_keepAlive + 8);

      v3(v5);
      sub_1CF045404(v3);
    }

    v6 = *(v2 + OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_extensionEnumerator);
    if (v6)
    {
      [v6 invalidate];
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      v9 = swift_unknownObjectWeakLoadStrong();

      if (v9)
      {
        v10 = [v9 session];

        [v10 asyncUnregisterLifetimeExtensionForObject_];
        swift_unknownObjectRelease();
      }
    }

    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      v12 = v11;
      v13 = *(v11 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue);
      v14 = swift_unknownObjectWeakLoadStrong();
      if (v14)
      {
        v15 = v14;
        v16 = [v14 log];
      }

      else
      {
        v16 = 0;
      }

      v17 = swift_allocObject();
      *(v17 + 16) = v12;
      *(v17 + 24) = v2;
      v18 = v12;
      sub_1CF01001C(v16, "enumeratorHasBeenInvalidated(_:)", 32, 2, sub_1CF7B9C00, v17);
    }

    v19 = OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_cancellable;
    if (*(v2 + OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_cancellable))
    {
      v20 = *(v2 + OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_cancellable);

      sub_1CF9E6258();

      v21 = *(v2 + v19);
    }

    *(v2 + v19) = 0;
  }
}

uint64_t sub_1CF7AD800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v54 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v54 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v54 - v15;
  sub_1CEFCCBDC(a1, v11, &qword_1EC4C1B40, &unk_1CF9FCB70);
  if ((*(v13 + 48))(v11, 1, v12) != 1)
  {
    v20 = v55;
    sub_1CEFE55D0(v11, v16, &unk_1EC4BE360, &qword_1CF9FE650);
    if (*(v2 + OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_buildAndFilterAppLibraries) != 1 || (v21 = *(v12 + 48), v16[v21] != 1))
    {
LABEL_10:
      v28 = *v16;
      v29 = *(v2 + OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_vfsItemID);
      v30 = *(v2 + OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_vfsItemID + 8);
      v31 = *v16 == v29;
      if (*(v2 + OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_vfsItemID + 8))
      {
        v31 = 0;
      }

      v33 = v30 == 1 && v28 == v29;
      v35 = v30 == 2 && v29 == 0;
      v37 = v30 == 2 && v29 == 1;
      if (v28)
      {
        v38 = v37;
      }

      else
      {
        v38 = v35;
      }

      if (v16[8] == 1)
      {
        v38 = v33;
      }

      if (v16[8])
      {
        v39 = v38;
      }

      else
      {
        v39 = v31;
      }

      v40 = *(v16 + 2);
      if (v16[24])
      {
        if (v16[24] != 1)
        {
          v41 = v20;
          if (v40)
          {
            v42 = v30 == 2 && v29 == 1;
          }

          else
          {
            v42 = v30 == 2 && v29 == 0;
          }

          goto LABEL_60;
        }

        v41 = v20;
        if (v30 == 1)
        {
          v42 = v40 == v29;
          goto LABEL_60;
        }
      }

      else
      {
        v41 = v20;
        if (!*(v2 + OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_vfsItemID + 8))
        {
          v42 = v40 == v29;
LABEL_60:
          v49 = v42;
          if ((v49 | v39))
          {
            goto LABEL_64;
          }

          goto LABEL_44;
        }
      }

      if (v39)
      {
LABEL_64:
        v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4880, &unk_1CFA16E28);
        v51 = *(v50 + 48);
        sub_1CEFE55D0(v16, v41, &unk_1EC4BE360, &qword_1CF9FE650);
        *(v41 + v51) = v39;
        v18 = *(*(v50 - 8) + 56);
        v19 = v41;
        v43 = 0;
        v17 = v50;
        return v18(v19, v43, 1, v17);
      }

LABEL_44:
      sub_1CEFCCC44(v16, &unk_1EC4BE360, &qword_1CF9FE650);
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4880, &unk_1CFA16E28);
      v18 = *(*(v17 - 8) + 56);
      v19 = v41;
      goto LABEL_45;
    }

    v22 = *(v16 + 2);
    v23 = v16[24];
    v25 = *(v16 + 16);
    v24 = *(v16 + 17);
    sub_1CEFDA2E4(&v16[v21], &v7[*(v4 + 40)], type metadata accessor for ItemMetadata);
    *v7 = v22;
    v7[8] = v23;
    *(v7 + 2) = v25;
    *(v7 + 3) = v24;
    swift_bridgeObjectRetain_n();
    sub_1CEFCCC44(v7, &unk_1EC4BFD90, &unk_1CFA134F0);
    if (v25 == 0x746E656D75636F44 && v24 == 0xE900000000000073)
    {
    }

    else
    {
      v27 = sub_1CF9E8048();

      if ((v27 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    sub_1CEFCCBDC(v16, v20, &unk_1EC4BE360, &qword_1CF9FE650);
    v44 = *v16;
    v45 = v16[8];
    sub_1CEFCCC44(v16, &unk_1EC4BE360, &qword_1CF9FE650);
    v46 = *(v2 + OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_vfsItemID);
    v47 = *(v2 + OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_vfsItemID + 8);
    if (v45)
    {
      if (v45 == 1)
      {
        v48 = v47 == 1 && v44 == v46;
      }

      else if (v44)
      {
        v48 = v47 == 2 && v46 == 1;
      }

      else
      {
        v48 = v47 == 2 && v46 == 0;
      }
    }

    else
    {
      if (*(v2 + OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_vfsItemID + 8))
      {
        v53 = 0;
LABEL_79:
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4880, &unk_1CFA16E28);
        *(v20 + *(v17 + 48)) = v53;
        v18 = *(*(v17 - 8) + 56);
        v19 = v20;
        v43 = 0;
        return v18(v19, v43, 1, v17);
      }

      v48 = v44 == v46;
    }

    v53 = v48;
    goto LABEL_79;
  }

  sub_1CEFCCC44(v11, &qword_1EC4C1B40, &unk_1CF9FCB70);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4880, &unk_1CFA16E28);
  v18 = *(*(v17 - 8) + 56);
  v19 = v55;
LABEL_45:
  v43 = 1;
  return v18(v19, v43, 1, v17);
}

uint64_t sub_1CF7ADD70(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 16);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a4;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1CF7BA9BC;
  *(v10 + 24) = v8;
  swift_retain_n();
  v11 = a4;

  sub_1CF7AAF88("currentSyncAnchor(completion:)", 30, 2, 2, sub_1CF7BA950, v10, sub_1CF7BA958, v9);
}

void sub_1CF7ADE98(uint64_t a1, void (*a2)(void *, void))
{
  v8[1] = *MEMORY[0x1E69E9840];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CF9E6298();

  v3 = sub_1CF51FAD8(v8, 8);
  v5 = v4;
  v6 = sub_1CF9E5B48();
  sub_1CEFE4714(v3, v5);
  a2(v6, 0);

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1CF7AE000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = *(v2 + OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_vfsItemID);
  v7 = *(v2 + OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_vfsItemID + 8);
  if (v7 == 1)
  {
    goto LABEL_13;
  }

  if (v7 != 2)
  {
    v33 = 0;
    v32 = 220;
    v9 = sub_1CF9E7B68();
    __break(1u);
    goto LABEL_24;
  }

  v8 = *(*(*(a1 + 16) + 32) + 16);
  type metadata accessor for VFSFileTree(0);
  v3 = swift_dynamicCastClassUnconditional();

  v9 = objc_sync_enter(v3);
  if (!v6)
  {
    if (!v9)
    {
      v17 = v3[20];

      v11 = objc_sync_exit(v3);
      if (!v11)
      {

        v6 = *(v17 + 24);

        goto LABEL_13;
      }

LABEL_26:
      MEMORY[0x1EEE9AC00](v11);
      v32 = v3;
LABEL_27:
      fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v31, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
    }

LABEL_24:
    MEMORY[0x1EEE9AC00](v9);
    v32 = v3;
LABEL_25:
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v31, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  if (v9)
  {
    goto LABEL_24;
  }

  v10 = v3[20];

  v11 = objc_sync_exit(v3);
  if (v11)
  {
    goto LABEL_26;
  }

  v6 = *(v10 + 40);
  v12 = *(v10 + 48);

  if (v12)
  {
    v13 = sub_1CF9E5A58();
    v14 = *(*(v13 - 8) + 56);
    v15 = *MEMORY[0x1E69E9840];

    return v14(a2, 1, 1, v13);
  }

LABEL_13:

  v40 = v6;
  v42 = 0u;
  v41 = 0u;
  v18 = *(*(*(a1 + 16) + 32) + 16);
  type metadata accessor for VFSFileTree(0);
  v19 = swift_dynamicCastClassUnconditional();

  v20 = objc_sync_enter(v19);
  if (v20)
  {
    MEMORY[0x1EEE9AC00](v20);
    v32 = v19;
    goto LABEL_25;
  }

  v21 = v19[20];

  v22 = objc_sync_exit(v19);
  if (v22)
  {
    MEMORY[0x1EEE9AC00](v22);
    v32 = v19;
    goto LABEL_27;
  }

  v23 = *(v21 + 16);

  v37 = v6;
  v38 = 0u;
  v39 = 0u;
  v34 = -1;
  v24 = fpfs_openfdbyhandle();
  if (v24 < 0)
  {
    v26 = MEMORY[0x1D38683F0]();
    LODWORD(v35[0]) = 0;
    BYTE4(v35[0]) = 1;
    v36 = 0;
    v28 = sub_1CF19BBE4(v26, v35);
    sub_1CF1969CC(v35);
    swift_willThrow();
    LODWORD(v35[0]) = sub_1CF9E5308();
    sub_1CF196978();
    sub_1CF9E5658();
    sub_1CF255928(&v40);

    v29 = sub_1CF9E5A58();
    result = (*(*(v29 - 8) + 56))(a2, 1, 1, v29);
  }

  else
  {
    v25 = v24;
    sub_1CF19811C(v24, &v40, v23, 1, a2);
    close(v25);
    sub_1CF255928(&v40);
    v27 = sub_1CF9E5A58();
    result = (*(*(v27 - 8) + 56))(a2, 0, 1, v27);
  }

  v30 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF7AE5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  v14 = *a3;
  v15 = *(a3 + 8);
  v32 = MEMORY[0x1E69E7CC0];
  v16 = *(*(a1 + 16) + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4830, &unk_1CFA052E0);
  swift_dynamicCastClassUnconditional();
  v30 = v14;
  v31 = v15;
  v22 = a7;
  v23 = a8;
  v24 = v8;
  v25 = a1;
  v26 = a5;
  v27 = a2;
  v28 = a4;
  v29 = &v32;

  sub_1CF2368F4(&v30, a6, a5, sub_1CF7B9BCC, v21, a7, a8);

  result = v32;
  if (v20)
  {
  }

  return result;
}

void sub_1CF7AE6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  MEMORY[0x1EEE9AC00](a1);
  v42 = v11;
  v41 = v12;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  memcpy(__dst, v19, 0x378uLL);
  v48 = sub_1CF4E3A7C(MEMORY[0x1E69E7CC0]);
  v20 = *(v16 + OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_fpItemID);
  if (v20)
  {
    v21 = v16 + OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_vfsItemID;
    v22 = *(v16 + OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_vfsItemID);
    v23 = *(v21 + 8);
    v24 = v20;
    sub_1CF1C9D14(v20, v22, v23);
  }

  memcpy(v46, __dst, sizeof(v46));
  if (sub_1CEFF755C(v46) != 1)
  {
    v25 = v46[31];
    if (v46[31])
    {
      v26 = *v18;
      v27 = *(v18 + 8);
      v28 = v46[31];
      sub_1CF1C9D14(v25, v26, v27);
    }
  }

  v29 = sub_1CF7BB964(v48);

  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v31 = sub_1CF7B9A90(qword_1EDEA8860, type metadata accessor for VFSFileTree);
  v32 = sub_1CEFCCCEC(&qword_1EDEA8550, &unk_1EC4BE360, &qword_1CF9FE650);
  v33 = sub_1CF76BB00(v18, 0, 1, v29, v14, v30, a9, v31, &off_1F4BF8588, v32, a10);

  memcpy(__src, __dst, sizeof(__src));
  nullsub_1(__src);
  memcpy(v44, __src, sizeof(v44));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v35 = Strong;
    sub_1CEFF4514(__dst, v43);
    v36 = [v35 indexer];

    if (v36)
    {
      v37 = [v36 needsAuthentication];

      if (v37)
      {
        v38 = 9;
        goto LABEL_12;
      }
    }
  }

  else
  {
    sub_1CEFF4514(__dst, v43);
  }

  v38 = 1;
LABEL_12:
  sub_1CF765380(v33, v44, v38, v42, v14, a9, v31, &off_1F4BF8588, a10);
  if (v10)
  {
    memcpy(v43, v44, sizeof(v43));
    sub_1CEFCCC44(v43, &unk_1EC4C46E0, &unk_1CFA16860);
  }

  else
  {
    memcpy(v43, v44, sizeof(v43));
    sub_1CEFCCC44(v43, &unk_1EC4C46E0, &unk_1CFA16860);
    v39 = v33;
    MEMORY[0x1D3868FA0]();
    if (*((*v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v40 = *((*v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1CF9E6D88();
    }

    sub_1CF9E6DE8();
  }
}

uint64_t sub_1CF7AEA74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (**a6)(uint64_t (*)(void *a1), __n128))
{
  v9 = *a3;
  v10 = *(a3 + 8);
  v11 = *(*(a1 + 16) + 16);
  v13[3] = a2;
  v14 = v9;
  v15 = v10;

  sub_1CF24E938(&v14, a4, sub_1CF7B9AD8, v13, a5, a6);
}

uint64_t sub_1CF7AEB0C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = sub_1CF9E6108();
  v4 = sub_1CF9E7288();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136446210;
    v8 = VFSItemID.description.getter(v6, v7);
    v10 = sub_1CEFD0DF0(v8, v9, &v13);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_1CEFC7000, v3, v4, "Materializing container %{public}s for appLibraries", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1D386CDC0](v6, -1, -1);
    MEMORY[0x1D386CDC0](v5, -1, -1);
  }

  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  *(v11 + 24) = v2;
  sub_1CEFD4024("triggerMaterializationDatalessContainers(fpfs:backend:directory:with:)", 70, 2, nullsub_1, 0, sub_1CF7B9AF4, v11);
}

uint64_t sub_1CF7AECB4(uint64_t a1, void *a2, int a3)
{
  LODWORD(v123) = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v121 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v129 = &v105 - v9;
  v10 = sub_1CF9E6068();
  v118 = *(v10 - 8);
  v119 = v10;
  v11 = *(v118 + 8);
  MEMORY[0x1EEE9AC00](v10);
  v117 = &v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v110 = &v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v122 = &v105 - v17;
  v111 = type metadata accessor for Signpost(0);
  v114 = *(v111 - 8);
  v18 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v111);
  v120 = &v105 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v116 = &v105 - v21;
  v115 = v22;
  MEMORY[0x1EEE9AC00](v23);
  v124 = &v105 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = &v105 - v27;
  v29 = sub_1CF9E63D8();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v106 = &v105 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v105 - v34;
  v36 = sub_1CF9E6448();
  v128 = *(v36 - 8);
  v37 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v113 = &v105 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v127 = &v105 - v39;
  v125 = *(a1 + 16);
  qos_class_self();
  sub_1CF9E63B8();
  v40 = *(v30 + 48);
  v41 = v40(v28, 1, v29);
  v126 = v36;
  v108 = v29;
  v107 = v30;
  if (v41 == 1)
  {
    (*(v30 + 104))(v35, *MEMORY[0x1E69E7FA0], v29);
    if (v40(v28, 1, v29) != 1)
    {
      sub_1CEFCCC44(v28, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v30 + 32))(v35, v28, v29);
  }

  sub_1CF9E6428();
  v42 = [objc_opt_self() discreteProgressWithTotalUnitCount_];
  [v42 setCancellable_];
  v43 = swift_allocObject();
  v44 = v125;
  swift_weakInit();
  v45 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v46 = swift_allocObject();
  *(v46 + 16) = v43;
  *(v46 + 24) = v45;
  *(v46 + 32) = a2;
  v112 = a2;
  v47 = v123;
  *(v46 + 40) = v123;
  v133 = sub_1CF481424;
  v134 = v46;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v131 = sub_1CEFCA444;
  v132 = &block_descriptor_154_0;
  v48 = _Block_copy(&aBlock);

  sub_1CF03C63C(sub_1CF481424);

  [v42 setCancellationHandler_];
  _Block_release(v48);

  v49 = v128;
  v50 = v113;
  v51 = v126;
  (*(v128 + 16))(v113, v127, v126);
  v52 = (*(v49 + 80) + 80) & ~*(v49 + 80);
  v53 = swift_allocObject();
  *(v53 + 16) = nullsub_1;
  *(v53 + 24) = 0;
  v54 = v112;
  *(v53 + 32) = v44;
  *(v53 + 40) = v54;
  *(v53 + 48) = v47;
  *(v53 + 56) = xmmword_1CFA16CA0;
  *(v53 + 72) = v42;
  v55 = *(v49 + 32);
  v123 = v53;
  v55(v53 + v52, v50, v51);
  v56 = *(v44 + qword_1EDEBBC38);

  v113 = v42;
  v112 = fpfs_adopt_log();
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v57 = qword_1EDEBBE40;
  v59 = v118;
  v58 = v119;
  v60 = v122;
  (*(v118 + 7))(v122, 1, 1, v119);
  strcpy(&aBlock, "async batch ");
  BYTE13(aBlock) = 0;
  HIWORD(aBlock) = -5120;
  v61 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v61);

  v62 = *(&aBlock + 1);
  v109 = aBlock;
  v63 = v60;
  v64 = v110;
  sub_1CEFCCBDC(v63, v110, &unk_1EC4BED20, &unk_1CFA00700);
  v65 = *(v59 + 6);
  v66 = v65(v64, 1, v58);
  v67 = v117;
  if (v66 == 1)
  {
    v68 = v57;
    sub_1CF9E6048();
    if (v65(v64, 1, v58) != 1)
    {
      sub_1CEFCCC44(v64, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v59 + 4))(v117, v64, v58);
  }

  v69 = v124;
  (*(v59 + 2))(v124, v67, v58);
  v70 = v111;
  *(v69 + *(v111 + 20)) = v57;
  v71 = v69 + *(v70 + 24);
  *v71 = "DB queue wait";
  *(v71 + 8) = 13;
  *(v71 + 16) = 2;
  v72 = v57;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_1CF9FA450;
  *(v73 + 56) = MEMORY[0x1E69E6158];
  *(v73 + 64) = sub_1CEFD51C4();
  *(v73 + 32) = v109;
  *(v73 + 40) = v62;
  sub_1CF9E6028();

  (*(v59 + 1))(v67, v58);
  sub_1CEFCCC44(v122, &unk_1EC4BED20, &unk_1CFA00700);
  v119 = *(v125 + 168);
  v122 = *(v125 + 64);
  (*(v128 + 56))(v129, 1, 1, v51);
  v74 = v116;
  sub_1CEFDA2E4(v69, v116, type metadata accessor for Signpost);
  v75 = (*(v114 + 80) + 16) & ~*(v114 + 80);
  v76 = (v115 + v75 + 7) & 0xFFFFFFFFFFFFFFF8;
  v77 = swift_allocObject();
  sub_1CEFDA05C(v74, v77 + v75, type metadata accessor for Signpost);
  v78 = (v77 + v76);
  v118 = nullsub_1;
  *v78 = nullsub_1;
  v78[1] = 0;
  v79 = v120;
  sub_1CEFDA2E4(v69, v120, type metadata accessor for Signpost);
  v80 = (v76 + 23) & 0xFFFFFFFFFFFFFFF8;
  v81 = (v80 + 15) & 0xFFFFFFFFFFFFFFF8;
  v82 = (v81 + 25) & 0xFFFFFFFFFFFFFFF8;
  v83 = swift_allocObject();
  sub_1CEFDA05C(v79, v83 + v75, type metadata accessor for Signpost);
  v84 = (v83 + v76);
  *v84 = sub_1CF045408;
  v84[1] = 0;
  *(v83 + v80) = v125;
  v85 = v128;
  v86 = v83 + v81;
  *v86 = "materialize(_:request:options:qos:completion:)";
  *(v86 + 8) = 46;
  *(v86 + 16) = 2;
  v87 = (v83 + v82);
  *v87 = v118;
  v87[1] = 0;
  v88 = (v83 + ((v82 + 23) & 0xFFFFFFFFFFFFFFF8));
  v89 = v123;
  *v88 = sub_1CF481430;
  v88[1] = v89;
  v90 = swift_allocObject();
  v90[2] = sub_1CF7B9B00;
  v90[3] = v77;
  v91 = v119;
  v90[4] = v119;

  v92 = v126;

  v125 = v77;

  v93 = fpfs_current_log();
  v120 = *(v91 + 16);
  v94 = v121;
  sub_1CEFCCBDC(v129, v121, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v85 + 48))(v94, 1, v92) == 1)
  {
    sub_1CEFCCC44(v94, &unk_1EC4BE370, qword_1CFA01B30);
    v95 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v96 = v106;
    sub_1CF9E6438();
    (*(v85 + 8))(v94, v92);
    v95 = sub_1CF9E63C8();
    (*(v107 + 8))(v96, v108);
  }

  v97 = v85;
  v98 = swift_allocObject();
  v98[2] = v93;
  v98[3] = sub_1CF48160C;
  v98[4] = v83;
  v133 = sub_1CF2BA17C;
  v134 = v98;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v131 = sub_1CEFCA444;
  v132 = &block_descriptor_148;
  v99 = _Block_copy(&aBlock);
  v100 = v93;

  v133 = sub_1CF2BA180;
  v134 = v90;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v131 = sub_1CEFCA444;
  v132 = &block_descriptor_151;
  v101 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v120, v122, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v95, v99, v101);
  _Block_release(v101);
  _Block_release(v99);

  sub_1CEFCCC44(v129, &unk_1EC4BE370, qword_1CFA01B30);
  sub_1CEFD52D8(v124, type metadata accessor for Signpost);
  v102 = v112;
  v103 = fpfs_adopt_log();

  return (*(v97 + 8))(v127, v126);
}

uint64_t sub_1CF7AFB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a4;
  v6 = *(a4 + 8);
  v7 = *a5;
  v8 = *(a5 + 8);
  v14 = MEMORY[0x1E69E7CC0];
  v9 = *(*(a1 + 16) + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4830, &unk_1CFA052E0);
  swift_dynamicCastClassUnconditional();
  v13 = v8;
  v12 = v7;
  sub_1CEFE4E68();

  sub_1CF9E7668();
  sub_1CF237350(&v12);

  result = v14;
  if (v11)
  {
  }

  return result;
}

uint64_t sub_1CF7AFD2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, const void *a15)
{
  MEMORY[0x1EEE9AC00](a1);
  v163 = v15;
  v164 = v16;
  v169 = v18;
  v170 = v17;
  v160 = v19;
  v159 = v20;
  v166 = v21;
  v23 = v22;
  v25 = v24;
  v168 = a14;
  v162 = a11;
  v167 = a9;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4820, &qword_1CFA16E00);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v152 = &v143 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v143 = &v143 - v30;
  v154 = sub_1CF9E6118();
  v158 = *(v154 - 8);
  v31 = *(v158 + 64);
  MEMORY[0x1EEE9AC00](v154);
  v153 = &v143 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v144 = &v143 - v34;
  v35 = sub_1CF9E5A58();
  v148 = *(v35 - 8);
  v149 = v35;
  v36 = *(v148 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v145 = &v143 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v150 = &v143 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4840, &unk_1CFA16E08);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41);
  v151 = &v143 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v147 = &v143 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v143 - v47;
  MEMORY[0x1EEE9AC00](v49);
  v155 = &v143 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v143 - v52;
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v143 - v55;
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v143 - v58;
  memcpy(v182, v23, sizeof(v182));
  sub_1CEFCCBDC(v25, v59, &unk_1EC4BE360, &qword_1CF9FE650);
  v60 = *(v41 + 48);
  v171 = v59;
  memcpy(&v59[v60], v182, 0x378uLL);
  memcpy(v183, v166, 0x378uLL);
  v61 = v164;
  sub_1CEFCCBDC(v170, v56, &unk_1EC4BE360, &qword_1CF9FE650);
  v62 = *(v41 + 48);
  v170 = v56;
  memcpy(&v56[v62], v183, 0x378uLL);
  v184 = sub_1CF4E3A7C(MEMORY[0x1E69E7CC0]);
  sub_1CEFF4514(v182, v181);
  sub_1CEFF4514(v183, v181);
  if (v61)
  {
    v63 = v61;
    sub_1CF1C9D14(v61, v159, v160);
  }

  v166 = a15;
  v165 = a10;
  v64 = v171;
  sub_1CEFCCBDC(v171, v53, &unk_1EC4C4840, &unk_1CFA16E08);
  memcpy(v181, &v53[*(v41 + 48)], sizeof(v181));
  sub_1CEFCCBDC(v181, v179, &unk_1EC4BFC20, &unk_1CFA0A290);
  sub_1CEFF5410(v181);
  memcpy(v180, v181, sizeof(v180));
  v65 = sub_1CEFF755C(v180);
  v161 = v48;
  if (v65 == 1)
  {
    sub_1CEFCCC44(v53, &unk_1EC4BE360, &qword_1CF9FE650);
  }

  else
  {
    sub_1CEFCCBDC(&v180[31], v179, &unk_1EC4C4E60, &unk_1CF9FCAD0);
    sub_1CEFCCC44(v181, &unk_1EC4BFC20, &unk_1CFA0A290);
    v66 = v180[31];
    v67 = v180[31];
    sub_1CEFCCC44(&v180[31], &unk_1EC4C4E60, &unk_1CF9FCAD0);
    sub_1CEFCCC44(v53, &unk_1EC4BE360, &qword_1CF9FE650);
    if (v66)
    {
      v68 = v155;
      sub_1CEFCCBDC(v64, v155, &unk_1EC4C4840, &unk_1CFA16E08);
      memcpy(v179, (v68 + *(v41 + 48)), sizeof(v179));
      sub_1CEFF5410(v179);
      v69 = *v68;
      v70 = *(v68 + 8);
      sub_1CEFCCC44(v68, &unk_1EC4BE360, &qword_1CF9FE650);
      sub_1CF1C9D14(v66, v69, v70);
    }
  }

  v71 = sub_1CF7BB964(v184);

  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v73 = sub_1CF7B9A90(qword_1EDEA8860, type metadata accessor for VFSFileTree);
  v74 = sub_1CEFCCCEC(&qword_1EDEA8550, &unk_1EC4BE360, &qword_1CF9FE650);
  v75 = v166;
  v156 = v74;
  v77 = v167;
  v76 = v168;
  v146 = v72;
  v78 = sub_1CF76BB00(v171, 0, 1, v71, v167, v72, v168, v73, &off_1F4BF8588, v74, v166);

  v79 = v161;
  sub_1CEFCCBDC(v171, v161, &unk_1EC4C4840, &unk_1CFA16E08);
  v157 = v41;
  memcpy(v179, (v79 + *(v41 + 48)), sizeof(v179));
  nullsub_1(v179);
  memcpy(v178, v179, sizeof(v178));
  v141 = v75;
  v80 = v73;
  v81 = v163;
  sub_1CF765380(v78, v178, v165 | 1, v162, v77, v76, v73, &off_1F4BF8588, v141);
  v163 = v81;
  if (v81)
  {

    memcpy(v177, v178, sizeof(v177));
    sub_1CEFCCC44(v177, &unk_1EC4C46E0, &unk_1CFA16860);
    sub_1CEFCCC44(v170, &unk_1EC4C4840, &unk_1CFA16E08);
    sub_1CEFCCC44(v171, &unk_1EC4C4840, &unk_1CFA16E08);
    v82 = &unk_1EC4BE360;
    v83 = &qword_1CF9FE650;
    v84 = v79;
  }

  else
  {
    v86 = v156;
    v85 = v157;
    memcpy(v177, v178, sizeof(v177));
    sub_1CEFCCC44(v177, &unk_1EC4C46E0, &unk_1CFA16860);
    sub_1CEFCCC44(v79, &unk_1EC4BE360, &qword_1CF9FE650);
    v87 = v78;
    if ([v78 isContainer] && (objc_msgSend(v78, sel_isContainerPristine) & 1) == 0)
    {
      v161 = a12;
      v184 = sub_1CF4E3A7C(MEMORY[0x1E69E7CC0]);
      v99 = v164;
      if (v164)
      {
        v100 = v164;
        sub_1CF1C9D14(v99, v159, v160);
      }

      v164 = v78;
      v101 = v147;
      sub_1CEFCCBDC(v170, v147, &unk_1EC4C4840, &unk_1CFA16E08);
      memcpy(v175, (v101 + *(v85 + 48)), sizeof(v175));
      sub_1CEFCCBDC(v175, v174, &unk_1EC4BFC20, &unk_1CFA0A290);
      sub_1CEFF5410(v175);
      memcpy(v176, v175, sizeof(v176));
      if (sub_1CEFF755C(v176) == 1)
      {
        sub_1CEFCCC44(v101, &unk_1EC4BE360, &qword_1CF9FE650);
        v102 = v166;
      }

      else
      {
        sub_1CEFCCBDC(&v176[31], v174, &unk_1EC4C4E60, &unk_1CF9FCAD0);
        sub_1CEFCCC44(v175, &unk_1EC4BFC20, &unk_1CFA0A290);
        v103 = v176[31];
        v104 = v176[31];
        sub_1CEFCCC44(&v176[31], &unk_1EC4C4E60, &unk_1CF9FCAD0);
        sub_1CEFCCC44(v101, &unk_1EC4BE360, &qword_1CF9FE650);
        v102 = v166;
        if (v103)
        {
          v105 = v155;
          sub_1CEFCCBDC(v170, v155, &unk_1EC4C4840, &unk_1CFA16E08);
          memcpy(v174, (v105 + *(v85 + 48)), sizeof(v174));
          sub_1CEFF5410(v174);
          v106 = *v105;
          v107 = *(v105 + 8);
          sub_1CEFCCC44(v105, &unk_1EC4BE360, &qword_1CF9FE650);
          sub_1CF1C9D14(v103, v106, v107);
        }
      }

      v108 = sub_1CF7BB964(v184);

      v142 = v102;
      v109 = 1;
      v110 = v170;
      v162 = sub_1CF76BB00(v170, 0, 1, v108, v167, v146, v168, v80, &off_1F4BF8588, v86, v142);

      v111 = v151;
      sub_1CEFCCBDC(v110, v151, &unk_1EC4C4840, &unk_1CFA16E08);
      memcpy(v174, (v111 + *(v85 + 48)), sizeof(v174));
      nullsub_1(v174);
      memcpy(v173, v174, sizeof(v173));
      v112 = [v164 fileURL];
      if (v112)
      {
        v113 = v145;
        v114 = v112;
        sub_1CF9E59D8();

        v115 = v148;
        v116 = v150;
        v117 = v113;
        v118 = v149;
        (*(v148 + 32))(v150, v117, v149);
        v109 = 0;
        v119 = v158;
        v120 = v163;
      }

      else
      {
        v119 = v158;
        v120 = v163;
        v118 = v149;
        v116 = v150;
        v115 = v148;
      }

      (*(v115 + 56))(v116, v109, 1, v118);
      v121 = v162;
      sub_1CF765380(v162, v173, v165 | 1, v116, v167, v168, v80, &off_1F4BF8588, v166);
      if (v120)
      {

        sub_1CEFCCC44(v116, &unk_1EC4BE310, qword_1CF9FCBE0);
        memcpy(v172, v173, sizeof(v172));
        sub_1CEFCCC44(v172, &unk_1EC4C46E0, &unk_1CFA16860);
        sub_1CEFCCC44(v170, &unk_1EC4C4840, &unk_1CFA16E08);
        sub_1CEFCCC44(v171, &unk_1EC4C4840, &unk_1CFA16E08);
        v82 = &unk_1EC4BE360;
        v83 = &qword_1CF9FE650;
        v84 = v111;
      }

      else
      {
        sub_1CEFCCC44(v116, &unk_1EC4BE310, qword_1CF9FCBE0);
        memcpy(v172, v173, sizeof(v172));
        sub_1CEFCCC44(v172, &unk_1EC4C46E0, &unk_1CFA16860);
        sub_1CEFCCC44(v111, &unk_1EC4BE360, &qword_1CF9FE650);
        v122 = v143;
        sub_1CEFCCBDC(v161, v143, &unk_1EC4C4820, &qword_1CFA16E00);
        v123 = v154;
        v124 = (*(v119 + 48))(v122, 1, v154);
        v125 = v171;
        v126 = v164;
        if (v124 == 1)
        {
          sub_1CEFCCC44(v122, &unk_1EC4C4820, &qword_1CFA16E00);
        }

        else
        {
          (*(v119 + 32))(v144, v122, v123);
          v127 = v126;
          v128 = v121;
          v129 = sub_1CF9E6108();
          v130 = sub_1CF9E7288();

          if (os_log_type_enabled(v129, v130))
          {
            v131 = swift_slowAlloc();
            v163 = 0;
            v132 = v131;
            v133 = swift_slowAlloc();
            *v132 = 138543618;
            *(v132 + 4) = v127;
            *(v132 + 12) = 2114;
            *(v132 + 14) = v128;
            *v133 = v127;
            v133[1] = v128;
            v134 = v127;
            v135 = v128;
            _os_log_impl(&dword_1CEFC7000, v129, v130, "Patching container %{public}@ with %{public}@", v132, 0x16u);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE350, &unk_1CF9FC3B0);
            swift_arrayDestroy();
            v136 = v133;
            v121 = v162;
            MEMORY[0x1D386CDC0](v136, -1, -1);
            v123 = v154;
            MEMORY[0x1D386CDC0](v132, -1, -1);
          }

          (*(v158 + 8))(v144, v123);
          v125 = v171;
        }

        v137 = [objc_opt_self() appLibraryFromContainerItem:v126 documentsItem:v121];
        if (v137)
        {
          v138 = v137;
          if ([v137 isValidAppLibrary])
          {
            v138 = v138;
            MEMORY[0x1D3868FA0]();
            if (*((*a13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v140 = *((*a13 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_1CF9E6D88();
              v121 = v162;
            }

            sub_1CF9E6DE8();
          }
        }

        else
        {
        }

        sub_1CEFCCC44(v170, &unk_1EC4C4840, &unk_1CFA16E08);
        v84 = v125;
        v82 = &unk_1EC4C4840;
        v83 = &unk_1CFA16E08;
      }
    }

    else
    {
      v88 = v152;
      sub_1CEFCCBDC(a12, v152, &unk_1EC4C4820, &qword_1CFA16E00);
      v89 = v158;
      v90 = v154;
      if ((*(v158 + 48))(v88, 1, v154) == 1)
      {

        sub_1CEFCCC44(v170, &unk_1EC4C4840, &unk_1CFA16E08);
        sub_1CEFCCC44(v171, &unk_1EC4C4840, &unk_1CFA16E08);
        v82 = &unk_1EC4C4820;
        v83 = &qword_1CFA16E00;
        v84 = v88;
      }

      else
      {
        (*(v89 + 32))(v153, v88, v90);
        v91 = v87;
        v92 = sub_1CF9E6108();
        v93 = sub_1CF9E7288();

        v94 = os_log_type_enabled(v92, v93);
        v95 = v171;
        if (v94)
        {
          v96 = swift_slowAlloc();
          v97 = swift_slowAlloc();
          *v96 = 138543362;
          *(v96 + 4) = v91;
          *v97 = v91;
          v98 = v91;
          _os_log_impl(&dword_1CEFC7000, v92, v93, "Discarding container %{public}@ from appLibraries", v96, 0xCu);
          sub_1CEFCCC44(v97, &qword_1EC4BE350, &unk_1CF9FC3B0);
          MEMORY[0x1D386CDC0](v97, -1, -1);
          MEMORY[0x1D386CDC0](v96, -1, -1);
        }

        (*(v89 + 8))(v153, v90);
        sub_1CEFCCC44(v170, &unk_1EC4C4840, &unk_1CFA16E08);
        v84 = v95;
        v82 = &unk_1EC4C4840;
        v83 = &unk_1CFA16E08;
      }
    }
  }

  return sub_1CEFCCC44(v84, v82, v83);
}

uint64_t sub_1CF7B0EC8(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, void, void, id), uint64_t a5)
{
  v6 = v5;
  v117 = a4;
  v109 = a2;
  v110 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  v107 = *(v9 - 8);
  v108 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v113 = &Strong - v10;
  v11 = sub_1CF9E6118();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v105 = v14;
  v106 = &Strong - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &Strong - v16;
  if (qword_1EDEAB5F0 != -1)
  {
    swift_once();
  }

  v114 = a1;
  v18 = sub_1CF9E5B88();
  v20 = v19;
  v21 = sub_1CF9E5B88();
  v23 = v22;
  v24 = sub_1CF328660(v18, v20, v21, v22);
  sub_1CEFE4714(v21, v23);
  sub_1CEFE4714(v18, v20);
  v118 = a5;
  if (v24)
  {
    goto LABEL_7;
  }

  if (qword_1EDEAB5E8 != -1)
  {
    swift_once();
  }

  v25 = sub_1CF9E5B88();
  v27 = v26;
  v28 = sub_1CF9E5B88();
  v30 = v29;
  v31 = sub_1CF328660(v25, v27, v28, v29);
  sub_1CEFE4714(v28, v30);
  sub_1CEFE4714(v25, v27);
  if (v31)
  {
LABEL_7:
    v32 = 0;
  }

  else
  {
    v45 = sub_1CF9E5688();
    v46 = *(v45 + 48);
    v47 = *(v45 + 52);
    swift_allocObject();
    sub_1CF9E5678();
    type metadata accessor for PaginatedContinuation();
    v48 = sub_1CF9E5B88();
    v50 = v49;
    sub_1CF7B9A90(&unk_1EC4C4810, type metadata accessor for PaginatedContinuation);
    sub_1CF9E5668();

    sub_1CEFE4714(v48, v50);
    v32 = v120;
  }

  v116 = v12;
  v33 = *(v12 + 16);
  v33(v17, &v6[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_logger], v11);

  v34 = v6;
  v35 = sub_1CF9E6108();
  v36 = sub_1CF9E7298();

  v37 = os_log_type_enabled(v35, v36);
  v115 = v17;
  if (v37)
  {
    v104 = v33;
    v111 = v11;
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v122[0] = v40;
    *v38 = 138412546;
    *(v38 + 4) = v34;
    *v39 = v34;
    *(v38 + 12) = 2080;
    v112 = v32;
    if (v32)
    {
      v120 = 979789423;
      v121 = 0xE400000000000000;
      v119 = *(v32 + 16);
      v41 = v34;
      v42 = sub_1CF9E7F98();
      MEMORY[0x1D3868CC0](v42);

      v43 = v120;
      v44 = v121;
    }

    else
    {
      v43 = 0x6C616974696E693CLL;
      v51 = v34;
      v44 = 0xE90000000000003ELL;
    }

    v52 = sub_1CEFD0DF0(v43, v44, v122);

    *(v38 + 14) = v52;
    _os_log_impl(&dword_1CEFC7000, v35, v36, "📖  %@: enumerating page %s", v38, 0x16u);
    sub_1CEFCCC44(v39, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v39, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v40);
    MEMORY[0x1D386CDC0](v40, -1, -1);
    MEMORY[0x1D386CDC0](v38, -1, -1);

    v11 = v111;
    v32 = v112;
    v17 = v115;
    v33 = v104;
  }

  else
  {
  }

  if ((v34[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_invalidated] & 1) != 0 || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
  {
    type metadata accessor for NSFileProviderError(0);
    v122[0] = -1002;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF7B9A90(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError);
    sub_1CF9E57D8();
    v80 = v120;
    v81 = v34;

    v82 = v80;
    v83 = sub_1CF9E6108();
    v84 = sub_1CF9E72A8();

    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      v122[0] = v114;
      *v85 = 138412802;
      *(v85 + 4) = v81;
      *v86 = v81;
      *(v85 + 12) = 2080;
      v112 = v32;
      if (v32)
      {
        v87 = v32;
        v88 = v11;
        v120 = 979789423;
        v121 = 0xE400000000000000;
        v119 = *(v87 + 16);
        v89 = v81;
        v90 = sub_1CF9E7F98();
        MEMORY[0x1D3868CC0](v90);

        v91 = v120;
        v92 = v121;
      }

      else
      {
        v88 = v11;
        v91 = 0x6C616974696E693CLL;
        v93 = v81;
        v92 = 0xE90000000000003ELL;
      }

      v94 = sub_1CEFD0DF0(v91, v92, v122);

      *(v85 + 14) = v94;
      *(v85 + 22) = 2112;
      v120 = v82;
      sub_1CF7B9A90(&qword_1EDEAB6A0, type metadata accessor for NSFileProviderError);
      v95 = v82;
      v96 = sub_1CF9E7FB8();
      if (v96)
      {
        v97 = v96;
      }

      else
      {
        v97 = swift_allocError();
        *v98 = v95;
      }

      v11 = v88;
      v99 = sub_1CF9E57E8();

      v100 = [v99 fp_prettyDescription];
      *(v85 + 24) = v100;
      v86[1] = v100;
      _os_log_impl(&dword_1CEFC7000, v83, v84, "📖  %@: enumerating page %s failed: %@", v85, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE350, &unk_1CF9FC3B0);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v86, -1, -1);
      v101 = v114;
      __swift_destroy_boxed_opaque_existential_1(v114);
      MEMORY[0x1D386CDC0](v101, -1, -1);
      MEMORY[0x1D386CDC0](v85, -1, -1);

      v17 = v115;
    }

    else
    {
    }

    v102 = v82;
    v117(MEMORY[0x1E69E7CC0], 0, 0, 0, v82);

    return (*(v116 + 8))(v17, v11);
  }

  else
  {
    v104 = swift_allocObject();
    v53 = v106;
    v33(v106, v17, v11);
    v54 = v116;
    v55 = (*(v116 + 80) + 24) & ~*(v116 + 80);
    v56 = (v105 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
    v57 = (v56 + 15) & 0xFFFFFFFFFFFFFFF8;
    v111 = v11;
    v58 = swift_allocObject();
    *(v58 + 16) = Strong;
    (*(v54 + 32))(v58 + v55, v53, v11);
    *(v58 + v56) = v34;
    *(v58 + v57) = v32;
    v59 = (v58 + ((v57 + 15) & 0xFFFFFFFFFFFFFFF8));
    v60 = v118;
    *v59 = v117;
    v59[1] = v60;
    v61 = v104;
    *(v104 + 16) = sub_1CF7B87A4;
    *(v61 + 24) = v58;
    v62 = swift_allocObject();
    v106 = v62;
    *(v62 + 16) = sub_1CF7B87A4;
    *(v62 + 24) = v58;
    sub_1CEFCCBDC(v109, v113, &qword_1EC4C1B40, &unk_1CF9FCB70);
    v63 = (*(v107 + 80) + 32) & ~*(v107 + 80);
    v64 = (v108 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
    v65 = (v64 + 15) & 0xFFFFFFFFFFFFFFF8;
    v66 = (v65 + 15) & 0xFFFFFFFFFFFFFFF8;
    v67 = (v66 + 15) & 0xFFFFFFFFFFFFFFF8;
    v68 = swift_allocObject();
    *(v68 + 16) = v104;
    *(v68 + 24) = v32;
    sub_1CEFE55D0(v113, v68 + v63, &qword_1EC4C1B40, &unk_1CF9FCB70);
    *(v68 + v64) = v34;
    v69 = v114;
    *(v68 + v65) = v114;
    *(v68 + v66) = v110;
    v70 = (v68 + v67);
    v71 = v118;
    *v70 = v117;
    v70[1] = v71;
    v72 = Strong;
    *(v68 + ((v67 + 23) & 0xFFFFFFFFFFFFFFF8)) = Strong;
    v73 = v34;
    swift_retain_n();
    v74 = v72;
    swift_retain_n();
    v75 = v73;
    v76 = v74;
    v77 = v106;

    v78 = v69;
    sub_1CF8EA768("enumerateItems(fromPage:selfItem:suggestedPageSize:reply:)", 58, 2, sub_1CF7B87AC, v68, v76, sub_1CF7B87A8, v77);

    (*(v116 + 8))(v115, v111);
  }
}

uint64_t sub_1CF7B1A7C(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v44 = a7;
  v45 = a8;
  v40 = a4;
  v39 = a3;
  v38 = a2;
  v52 = a1;
  v42 = a9;
  v43 = a10;
  v49 = sub_1CF9E63A8();
  v51 = *(v49 - 8);
  v13 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v47 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1CF9E6448();
  v48 = *(v50 - 8);
  v15 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v41 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1CF9E6118();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = *(a5 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue);
  (*(v18 + 16))(v21, a6, v17, v20);
  v22 = (*(v18 + 80) + 41) & ~*(v18 + 80);
  v23 = (v19 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = v52;
  *(v25 + 24) = a2;
  v26 = v39;
  *(v25 + 32) = v39;
  LOBYTE(v19) = v40 & 1;
  *(v25 + 40) = v40 & 1;
  (*(v18 + 32))(v25 + v22, v21, v17);
  v27 = v44;
  v28 = v45;
  *(v25 + v23) = v44;
  *(v25 + v24) = v28;
  v29 = (v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8));
  v30 = v43;
  *v29 = v42;
  v29[1] = v30;
  aBlock[4] = sub_1CF7B998C;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFCA444;
  aBlock[3] = &block_descriptor_116;
  v31 = _Block_copy(aBlock);

  sub_1CF7B9A40(v52, v38, v26, v19);
  v32 = v27;

  v33 = v41;
  sub_1CF9E63F8();
  v53 = MEMORY[0x1E69E7CC0];
  sub_1CF7B9A90(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
  v34 = v47;
  v35 = v49;
  sub_1CF9E77B8();
  MEMORY[0x1D3869630](0, v33, v34, v31);
  _Block_release(v31);
  (*(v51 + 8))(v34, v35);
  (*(v48 + 8))(v33, v50);
}

void sub_1CF7B1ED0(unint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, void *a6, uint64_t a7, void (*a8)(unint64_t, void *, void *, void, unint64_t))
{
  v64[1] = *MEMORY[0x1E69E9840];
  if ((a4 & 1) == 0)
  {

    swift_bridgeObjectRetain_n();
    v25 = a6;

    v26 = sub_1CF9E6108();
    v27 = sub_1CF9E7298();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v64[0] = v58;
      *v28 = 138413314;
      *(v28 + 4) = v25;
      v57 = v29;
      *v29 = v25;
      *(v28 + 12) = 2080;
      if (a7)
      {
        v61 = 979789423;
        v62 = 0xE400000000000000;
        v63[0] = *(a7 + 16);
        v30 = v25;
        v31 = sub_1CF9E7F98();
        MEMORY[0x1D3868CC0](v31);

        v32 = 979789423;
        v33 = 0xE400000000000000;
      }

      else
      {
        v32 = 0x6C616974696E693CLL;
        v45 = v25;
        v33 = 0xE90000000000003ELL;
      }

      v46 = sub_1CEFD0DF0(v32, v33, v64);

      *(v28 + 14) = v46;
      *(v28 + 22) = 2048;
      if (a1 >> 62)
      {
        v47 = sub_1CF9E7818();
      }

      else
      {
        v47 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v28 + 24) = v47;

      *(v28 + 32) = 2080;
      if (a2)
      {
        v61 = 0x207478656E20;
        v62 = 0xE600000000000000;
        v63[0] = 979789423;
        v63[1] = 0xE400000000000000;
        v60 = *(a2 + 16);
        v48 = sub_1CF9E7F98();
        MEMORY[0x1D3868CC0](v48);

        MEMORY[0x1D3868CC0](979789423, 0xE400000000000000);

        v49 = 0x207478656E20;
        v50 = 0xE600000000000000;
      }

      else
      {
        v49 = 0;
        v50 = 0xE000000000000000;
      }

      v51 = sub_1CEFD0DF0(v49, v50, v64);

      *(v28 + 34) = v51;
      *(v28 + 42) = 2048;
      *(v28 + 44) = a3;
      _os_log_impl(&dword_1CEFC7000, v26, v27, "📖  %@: enumerating page %s done: %ld items%s anchor:%llu", v28, 0x34u);
      sub_1CEFCCC44(v57, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v57, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v58, -1, -1);
      MEMORY[0x1D386CDC0](v28, -1, -1);

      if (!a2)
      {
        goto LABEL_21;
      }
    }

    else
    {

      swift_bridgeObjectRelease_n();
      if (!a2)
      {
LABEL_21:
        v40 = 0;
        goto LABEL_22;
      }
    }

    v34 = sub_1CF9E56C8();
    v35 = *(v34 + 48);
    v36 = *(v34 + 52);
    swift_allocObject();

    sub_1CF9E56B8();
    sub_1CF9E5698();
    v61 = a2;
    type metadata accessor for PaginatedContinuation();
    sub_1CF7B9A90(&unk_1EC4C4850, type metadata accessor for PaginatedContinuation);
    v37 = sub_1CF9E56A8();
    v39 = v38;
    v40 = sub_1CF9E5B48();

    sub_1CEFE4714(v37, v39);
    v41 = v40;
LABEL_22:
    v61 = a3;
    v52 = sub_1CF51FAD8(&v61, 8);
    v54 = v53;
    v55 = sub_1CF9E5B48();
    sub_1CEFE4714(v52, v54);
    a8(a1, v40, v55, 0, 0);

    goto LABEL_23;
  }

  v14 = a6;
  sub_1CF7B9A40(a1, a2, a3, 1);
  v15 = sub_1CF9E6108();
  v16 = sub_1CF9E72A8();

  sub_1CF7B9940(a1, a2, a3, 1);
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v63[0] = v19;
    *v17 = 138412802;
    *(v17 + 4) = v14;
    *v18 = v14;
    *(v17 + 12) = 2080;
    if (a7)
    {
      v61 = 979789423;
      v62 = 0xE400000000000000;
      v64[0] = *(a7 + 16);
      v20 = v14;
      v21 = sub_1CF9E7F98();
      MEMORY[0x1D3868CC0](v21);

      v22 = 979789423;
      v23 = 0xE400000000000000;
    }

    else
    {
      v22 = 0x6C616974696E693CLL;
      v42 = v14;
      v23 = 0xE90000000000003ELL;
    }

    v43 = sub_1CEFD0DF0(v22, v23, v63);

    *(v17 + 14) = v43;
    *(v17 + 22) = 2112;
    swift_getErrorValue();
    v44 = Error.prettyDescription.getter(v59);
    *(v17 + 24) = v44;
    v18[1] = v44;
    _os_log_impl(&dword_1CEFC7000, v15, v16, "📖  %@: enumerating page %s failed: %@", v17, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE350, &unk_1CF9FC3B0);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v18, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x1D386CDC0](v19, -1, -1);
    MEMORY[0x1D386CDC0](v17, -1, -1);
  }

  else
  {
  }

  a8(MEMORY[0x1E69E7CC0], 0, 0, 0, a1);
LABEL_23:
  v56 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1CF7B2618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v60 = a7;
  v61 = a8;
  v57 = a5;
  v58 = a6;
  v51 = a3;
  v62 = a1;
  v59 = a10;
  v55 = a4;
  v56 = a9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  v54 = *(v11 - 8);
  v12 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v48 - v13;
  v48 = &v48 - v13;
  swift_beginAccess();
  v15 = *(a2 + 16);
  v16 = *(a2 + 24);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  *(v17 + 24) = v16;
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v19[2] = sub_1CF7BA9C0;
  v19[3] = v17;
  v19[4] = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1CF7B9748;
  *(v20 + 24) = v19;
  swift_beginAccess();
  v52 = a2;
  v21 = *(a2 + 24);
  *(a2 + 16) = sub_1CF7B9764;
  *(a2 + 24) = v20;

  v50 = swift_allocBox();
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  (*(*(v24 - 8) + 56))(v23, 1, 1, v24);
  v53 = *(v62 + 16);
  v25 = swift_allocObject();
  v49 = v25;
  *(v25 + 16) = sub_1CF7B9764;
  *(v25 + 24) = v20;
  sub_1CEFCCBDC(v55, v14, &qword_1EC4C1B40, &unk_1CF9FCB70);
  v26 = (*(v54 + 80) + 32) & ~*(v54 + 80);
  v27 = (v12 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v29 + 15) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v31 + 23) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  v35 = v50;
  *(v34 + 16) = v51;
  *(v34 + 24) = v35;
  sub_1CEFE55D0(v48, v34 + v26, &qword_1EC4C1B40, &unk_1CF9FCB70);
  v36 = v61;
  *(v34 + v27) = v62;
  v37 = v57;
  *(v34 + v28) = v57;
  v38 = v58;
  *(v34 + v29) = v58;
  *(v34 + v30) = v60;
  v39 = (v34 + v31);
  v40 = v56;
  *v39 = v36;
  v39[1] = v40;
  *(v34 + v32) = v52;
  v41 = v59;
  *(v34 + v33) = v59;
  v42 = swift_allocObject();
  v43 = v49;
  *(v42 + 16) = sub_1CF7BA9C0;
  *(v42 + 24) = v43;

  v44 = v37;
  v45 = v38;

  v46 = v41;

  sub_1CF7AAF88("enumerateItems(fromPage:selfItem:suggestedPageSize:reply:)", 58, 2, 2, sub_1CF7B98E4, v42, sub_1CF7B97E0, v34);
}

void sub_1CF7B2A4C(void *a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, _BYTE *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v209 = a8;
  v212 = a7;
  v234 = a6;
  v232 = a5;
  v226 = a4;
  v230 = a3;
  v231 = a1;
  v233 = a2;
  v228 = a12;
  v223 = a11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4820, &qword_1CFA16E00);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v224 = &v197 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v205 = &v197 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v227 = &v197 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v229 = &v197 - v21;
  v221 = sub_1CF9E6388();
  v220 = *(v221 - 8);
  v22 = *(v220 + 64);
  MEMORY[0x1EEE9AC00](v221);
  v219 = &v197 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v217 = &v197 - v25;
  v218 = sub_1CF9E6498();
  v216 = *(v218 - 8);
  v26 = *(v216 + 64);
  MEMORY[0x1EEE9AC00](v218);
  v215 = &v197 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v211 = &v197 - v30;
  v208 = sub_1CF9E63D8();
  v207 = *(v208 - 8);
  v31 = *(v207 + 64);
  MEMORY[0x1EEE9AC00](v208);
  v210 = &v197 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = sub_1CF9E6448();
  v213 = *(v214 - 8);
  v33 = *(v213 + 64);
  MEMORY[0x1EEE9AC00](v214);
  v35 = &v197 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1CF9E73D8();
  v206 = *(v36 - 8);
  v37 = *(v206 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v197 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v225 = *(v40 - 1);
  v41 = *(v225 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v197 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v47 = &v197 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v197 - v49;
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v197 - v52;
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v197 - v55;
  v57 = swift_projectBox();
  v222 = v233 == 0;
  if (v233)
  {
    v243 = MEMORY[0x1E69E7CC0];
    v58 = v234;
    v59 = v235;
    v60 = v232;
    goto LABEL_3;
  }

  v204 = v56;
  v202 = v50;
  v203 = v57;
  v198 = v47;
  v199 = v39;
  v230 = v43;
  v200 = v36;
  v201 = v35;
  sub_1CEFCCBDC(v226, v53, &qword_1EC4C1B40, &unk_1CF9FCB70);
  v73 = v225;
  v74 = *(v225 + 48);
  if (v74(v53, 1, v40) == 1)
  {
    v75 = v231[3];
    v226 = v231[4];
    v76 = __swift_project_boxed_opaque_existential_1(v231, v75);
    v77 = *(*(v232 + 16) + 32);
    v78 = v234[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_vfsItemID + 8];
    v241 = *&v234[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_vfsItemID];
    v242 = v78;
    v79 = *(*v77 + 240);

    v80 = v204;
    v81 = v76;
    v82 = v235;
    v79(&v241, 1, v81, v75, v226);

    v83 = v74(v53, 1, v40);
    v235 = v82;
    v84 = v230;
    if (v82)
    {
      if (v83 != 1)
      {
        sub_1CEFCCC44(v53, &qword_1EC4C1B40, &unk_1CF9FCB70);
      }

      return;
    }

    if (v83 != 1)
    {
      sub_1CEFCCC44(v53, &qword_1EC4C1B40, &unk_1CF9FCB70);
    }
  }

  else
  {
    v80 = v204;
    sub_1CEFE55D0(v53, v204, &unk_1EC4BE360, &qword_1CF9FE650);
    (*(v73 + 56))(v80, 0, 1, v40);
    v84 = v230;
  }

  v100 = v203;
  swift_beginAccess();
  sub_1CF7100F4(v80, v100);
  swift_beginAccess();
  v101 = v100;
  v102 = v202;
  sub_1CEFCCBDC(v101, v202, &qword_1EC4C1B40, &unk_1CF9FCB70);
  if (v74(v102, 1, v40) == 1)
  {
    sub_1CEFCCC44(v102, &qword_1EC4C1B40, &unk_1CF9FCB70);
    v103 = *(v232 + 16);
    v104 = *(v103[4] + 16);
    type metadata accessor for VFSFileTree(0);
    v105 = swift_dynamicCastClassUnconditional();
    v106 = v234;
    v107 = *&v234[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_vfsItemID];
    v108 = v234[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_vfsItemID + 8];

    v109 = objc_sync_enter(v103);
    if (v109)
    {
      MEMORY[0x1EEE9AC00](v109);
      v196 = v103;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C5288, v195, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    LODWORD(v230) = v108;
    v231 = v107;
    v233 = v104;
    v110 = *(v103 + qword_1EDEADB30);
    v111 = objc_sync_exit(v103);
    v112 = v212;
    v113 = v209;
    if (v111)
    {
      MEMORY[0x1EEE9AC00](v111);
      v196 = v103;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C5290, v195, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
    }

    v114 = swift_allocObject();
    v114[2] = v106;
    v114[3] = v112;
    v114[4] = v113;
    v114[5] = a9;
    v115 = v223;
    v114[6] = a10;
    v114[7] = v115;
    sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
    v232 = v105;
    v116 = *(v105 + 216);
    v239 = MEMORY[0x1E69E7CC0];
    sub_1CF7B9A90(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0]);
    v117 = v106;
    v118 = v112;

    v119 = v116;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
    sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
    v120 = v199;
    v121 = v200;
    sub_1CF9E77B8();
    v122 = sub_1CF9E73E8();

    (*(v206 + 8))(v120, v121);
    qos_class_self();
    v123 = v211;
    sub_1CF9E63B8();
    v124 = v207;
    v125 = *(v207 + 48);
    v126 = v208;
    if (v125(v123, 1, v208) == 1)
    {
      (*(v124 + 104))(v210, *MEMORY[0x1E69E7FA0], v126);
      v127 = v125(v123, 1, v126);
      v128 = v220;
      v129 = v219;
      v130 = v214;
      if (v127 != 1)
      {
        sub_1CEFCCC44(v123, &unk_1EC4BE380, &qword_1CFA01BA0);
      }
    }

    else
    {
      (*(v124 + 32))(v210, v123, v126);
      v128 = v220;
      v129 = v219;
      v130 = v214;
    }

    ObjectType = swift_getObjectType();
    v176 = v201;
    sub_1CF9E6428();
    v177 = swift_allocObject();
    v178 = v231;
    *(v177 + 16) = v232;
    *(v177 + 24) = v178;
    *(v177 + 32) = v230;
    *(v177 + 40) = 0u;
    *(v177 + 56) = 0u;
    *(v177 + 72) = 0u;
    *(v177 + 88) = 0u;
    *(v177 + 104) = 0u;
    *(v177 + 120) = 0u;
    *(v177 + 136) = 0u;
    *(v177 + 152) = v122;
    *(v177 + 160) = sub_1CF7B98EC;
    *(v177 + 168) = v114;

    swift_unknownObjectRetain();

    sub_1CEFD5828(0, v176, sub_1CEFD5CCC, v177);

    (*(v213 + 8))(v176, v130);
    v179 = v215;
    sub_1CF9E6478();
    v180 = v217;
    sub_1CEFD5B64(v217);
    sub_1CEFD5BD8(v129);
    MEMORY[0x1D3869770](v179, v180, v129, ObjectType);
    v181 = *(v128 + 8);
    v182 = v129;
    v183 = v221;
    v181(v182, v221);
    v181(v180, v183);
    (*(v216 + 8))(v179, v218);
    sub_1CF9E7448();

    swift_unknownObjectRelease();
  }

  else
  {
    v230 = v40;
    sub_1CEFE55D0(v102, v84, &unk_1EC4BE360, &qword_1CF9FE650);
    v131 = v231[3];
    v132 = v231[4];
    v133 = __swift_project_boxed_opaque_existential_1(v231, v131);
    Strong = swift_unknownObjectWeakLoadStrong();
    v59 = v235;
    if (Strong && (v135 = Strong, v136 = [Strong indexer], v135, v136) && (v137 = objc_msgSend(v136, sel_needsAuthentication), v136, v137))
    {
      v138 = 9;
    }

    else
    {
      v138 = 1;
    }

    v146 = sub_1CEFE58F0(MEMORY[0x1E69E7CC0]);
    v147 = sub_1CF7B9A90(qword_1EDEA8860, type metadata accessor for VFSFileTree);
    v148 = sub_1CEFCCCEC(&qword_1EDEA8550, &unk_1EC4BE360, &qword_1CF9FE650);
    v149 = v138;
    v150 = v230;
    v60 = v232;
    v151 = sub_1CF76BB00(v84, v149, 0, v146, v133, v230, v131, v147, &off_1F4BF8588, v148, v132);

    if (v84[v150[12]] == 1)
    {
      sub_1CEFCCC44(v84, &unk_1EC4BE360, &qword_1CF9FE650);
      v243 = MEMORY[0x1E69E7CC0];
      v58 = v234;
      if (v151)
      {
        v152 = v231[3];
        v153 = v231[4];
        v154 = __swift_project_boxed_opaque_existential_1(v231, v152);
        v155 = v203;
        swift_beginAccess();
        v156 = v60;
        v157 = v198;
        sub_1CEFCCBDC(v155, v198, &qword_1EC4C1B40, &unk_1CF9FCB70);
        v158 = v151;
        v159 = v151;
        sub_1CF7D5E20(v159, v157, v156, v154, v152, v153);
        v161 = v160;
        sub_1CEFCCC44(v157, &qword_1EC4C1B40, &unk_1CF9FCB70);
        if (v59)
        {

          return;
        }

        v230 = v158;
        v184 = v161;
        MEMORY[0x1D3868FA0]();
        if (*((v243 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v243 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v194 = *((v243 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1CF9E6D88();
        }

        sub_1CF9E6DE8();

        v226 = v243;
        v185 = [v159 fileURL];
        v186 = v205;
        if (v185)
        {
          v187 = v185;
          sub_1CF9E59D8();

          v188 = 0;
        }

        else
        {
          v188 = 1;
        }

        v62 = v227;
        v61 = sub_1CF9E5A58();
        v189 = *(v61 - 8);
        v190 = v188;
        v191 = *(v189 + 56);
        v191(v186, v190, 1, v61);
        sub_1CEFE55D0(v186, v62, &unk_1EC4BE310, qword_1CF9FCBE0);
        if ((*(v189 + 48))(v62, 1, v61) != 1)
        {
          v192 = v62;
          v193 = v229;
          (*(v189 + 32))(v229, v192, v61);
          v63 = v193;
          v191(v193, 0, 1, v61);
          v60 = v232;
          goto LABEL_6;
        }

        v60 = v232;
LABEL_4:
        v63 = v229;
        sub_1CF7AE000(v60, v229);
        sub_1CF9E5A58();
        if ((*(*(v61 - 8) + 48))(v62, 1, v61) != 1)
        {
          sub_1CEFCCC44(v62, &unk_1EC4BE310, qword_1CF9FCBE0);
        }

LABEL_6:
        v64 = v58[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_buildAndFilterAppLibraries];
        v65 = v231[3];
        v66 = v231[4];
        v67 = __swift_project_boxed_opaque_existential_1(v231, v65);
        if (v64)
        {
          v68 = swift_unknownObjectWeakLoadStrong();
          v235 = v59;
          if (v68 && (v69 = v68, v70 = [v68 indexer], v69, v70))
          {
            v71 = [v70 needsAuthentication];

            if (v71)
            {
              v72 = 8;
            }

            else
            {
              v72 = 0;
            }
          }

          else
          {
            v72 = 0;
          }

          type metadata accessor for FPFSEnumerator();
          v88 = *&v58[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_fpItemID];
          v89 = v58[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_vfsItemID + 8];
          v239 = *&v58[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_vfsItemID];
          v240 = v89;
          v237 = v239;
          v238 = v89;
          v90 = OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_logger;
          v91 = sub_1CF9E6118();
          v92 = *(v91 - 8);
          v93 = &v234[v90];
          v58 = v234;
          v94 = v224;
          (*(v92 + 16))(v224, v93, v91);
          (*(v92 + 56))(v94, 0, 1, v91);
          v95 = v88;
          v195[1] = v65;
          v196 = v66;
          v195[0] = v67;
          v96 = v229;
          v97 = v235;
          v98 = sub_1CF7AFB70(v232, v72, v88, &v239, &v237);
          if (v97)
          {

            sub_1CEFCCC44(v94, &unk_1EC4C4820, &qword_1CFA16E00);
            sub_1CEFCCC44(v96, &unk_1EC4BE310, qword_1CF9FCBE0);

            return;
          }

          v139 = v99;
          v140 = v98;
          sub_1CEFCCC44(v94, &unk_1EC4C4820, &qword_1CFA16E00);

          v86 = v140;
          v63 = v96;
        }

        else
        {
          v85 = v58[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_vfsItemID + 8];
          v239 = *&v58[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_vfsItemID];
          v240 = v85;
          v86 = sub_1CF7AE5C0(v60, v228, &v239, v63, v67, v233, v65, v66);
          if (v59)
          {
            sub_1CEFCCC44(v63, &unk_1EC4BE310, qword_1CF9FCBE0);

            goto LABEL_19;
          }

          v139 = v87;
          v222 = 0;
        }

        sub_1CF1E90D4(v86);
        v141 = v231[3];
        v142 = v231[4];
        v143 = __swift_project_boxed_opaque_existential_1(v231, v141);
        v144 = v243;
        v145 = sub_1CF7B9A90(qword_1EDEA8860, type metadata accessor for VFSFileTree);
        sub_1CF764128(v144, v143, v141, v145, &off_1F4BF8588, v142);
        v162 = v223;
        swift_beginAccess();
        v164 = *(v162 + 16);
        v163 = *(v162 + 24);
        swift_getKeyPath();
        swift_getKeyPath();

        sub_1CF9E6298();

        v164(v144, v139, v237, 0);

        if (v222)
        {
          v165 = v231[3];
          v166 = v231[4];
          v167 = __swift_project_boxed_opaque_existential_1(v231, v165);
          v168 = v58[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_vfsItemID + 8];
          v237 = *&v58[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_vfsItemID];
          v238 = v168;
          sub_1CF7AEA74(v232, v228, &v237, v167, v165, v166);
          v169 = v230;
          sub_1CEFCCC44(v63, &unk_1EC4BE310, qword_1CF9FCBE0);

          return;
        }

        sub_1CEFCCC44(v63, &unk_1EC4BE310, qword_1CF9FCBE0);

LABEL_19:

        return;
      }

LABEL_3:
      v61 = sub_1CF9E5A58();
      v62 = v227;
      (*(*(v61 - 8) + 56))(v227, 1, 1, v61);
      v230 = 0;
      v226 = MEMORY[0x1E69E7CC0];
      goto LABEL_4;
    }

    v170 = v223;
    swift_beginAccess();
    v172 = *(v170 + 16);
    v171 = *(v170 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC20, &qword_1CF9FE480);
    v173 = swift_allocObject();
    *(v173 + 16) = xmmword_1CFA00250;
    *(v173 + 32) = v151;
    swift_getKeyPath();
    swift_getKeyPath();

    v174 = v151;
    sub_1CF9E6298();

    v172(v173, 0, v236, 0);

    sub_1CEFCCC44(v84, &unk_1EC4BE360, &qword_1CF9FE650);
  }
}