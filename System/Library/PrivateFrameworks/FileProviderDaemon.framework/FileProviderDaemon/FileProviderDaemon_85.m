void (*sub_1CF8B6C2C())(uint64_t *, void)
{
  swift_getKeyPath();
  swift_getKeyPath();
  result = sub_1CF9E6288();
  if (__OFADD__(*v1, 1))
  {
    __break(1u);
  }

  else
  {
    ++*v1;
    result(&v2, 0);
  }

  return result;
}

uint64_t sub_1CF8B6CD0()
{
  v0 = sub_1CF9E6118();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28 - v6;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = [Strong indexer];
    if (v10)
    {
      v11 = v10;
      [v10 clearNeedsAuth];
      v12 = sub_1CF0878B4();
      v13 = v12[2];
      if (v13)
      {
        v14 = v12 + 5;
        do
        {
          v15 = *(v14 - 1);
          v16 = *v14;
          swift_unknownObjectRetain();
          v17 = objc_autoreleasePoolPush();
          ObjectType = swift_getObjectType();
          (*(v16 + 32))(ObjectType, v16);
          objc_autoreleasePoolPop(v17);
          swift_unknownObjectRelease();
          v14 += 2;
          --v13;
        }

        while (v13);
      }
    }

    else
    {
      v24 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v25 = sub_1CF9E6108();
      v26 = sub_1CF9E7298();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_1CEFC7000, v25, v26, "Unable to clear needsAuth, domain indexer not initialized", v27, 2u);
        MEMORY[0x1D386CDC0](v27, -1, -1);
      }

      return (*(v1 + 8))(v7, v0);
    }
  }

  else
  {
    v20 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v21 = sub_1CF9E6108();
    v22 = sub_1CF9E7298();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1CEFC7000, v21, v22, "Unable to clear needsAuth, domain not initialized", v23, 2u);
      MEMORY[0x1D386CDC0](v23, -1, -1);
    }

    return (*(v1 + 8))(v4, v0);
  }
}

uint64_t FPDDomainFPFSBackend.signalErrorResolved(_:completionHandler:)(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v8 = a1;
  v9 = sub_1CF94C0CC(a1);
  v10 = sub_1CF9E57E8();
  v11 = [v10 userInfo];

  v12 = sub_1CF9E6638();
  if (*(v12 + 16) && (v13 = sub_1CEFE4328(0xD00000000000001FLL, 0x80000001CFA5C3B0), (v14 & 1) != 0))
  {
    sub_1CEFD1104(*(v12 + 56) + 32 * v13, v39);

    if (swift_dynamicCast())
    {
      v15 = v38;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {

    v15 = 0;
  }

  v16 = sub_1CF9E57E8();
  v17 = [v16 userInfo];

  v18 = sub_1CF9E6638();
  v19 = *MEMORY[0x1E6967180];
  v20 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  if (!*(v18 + 16))
  {

    v29 = 0;
    v30 = 0;
    if (v9)
    {
      goto LABEL_20;
    }

LABEL_16:
    if (!v15)
    {

      return a2(0);
    }

    goto LABEL_21;
  }

  v36 = v9;
  v22 = a2;
  v23 = a3;
  v24 = v4;
  v25 = sub_1CEFE4328(v20, v21);
  v27 = v26;

  if (v27)
  {
    sub_1CEFD1104(*(v18 + 56) + 32 * v25, v39);

    v28 = swift_dynamicCast();
    if (v28)
    {
      v29 = v37;
    }

    else
    {
      v29 = 0;
    }

    if (v28)
    {
      v30 = v38;
    }

    else
    {
      v30 = 0;
    }
  }

  else
  {

    v29 = 0;
    v30 = 0;
  }

  v4 = v24;
  a3 = v23;
  a2 = v22;
  v9 = v36;
  if (!v36)
  {
    goto LABEL_16;
  }

LABEL_20:
  if (v15)
  {
LABEL_21:
    v32 = sub_1CF9E6888();

    v15 = sub_1CEFD4E9C(v32);
  }

  v33 = swift_allocObject();
  *(v33 + 16) = a2;
  *(v33 + 24) = a3;
  *(v33 + 32) = v4;
  *(v33 + 40) = v9;
  *(v33 + 48) = v29;
  *(v33 + 56) = v30;
  *(v33 + 64) = v15;
  *(v33 + 72) = a1;
  v34 = a1;

  v35 = v4;
  sub_1CEFD4024("signalErrorResolved(_:completionHandler:)", 41, 2, nullsub_1, 0, sub_1CF8F35F0, v33);
}

void sub_1CF8B72EC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v111 = a6;
  LODWORD(v109) = a5;
  v95 = sub_1CF9E63D8();
  v94 = *(v95 - 8);
  v15 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v95);
  v93 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v106 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v112 = &v92 - v21;
  v98 = sub_1CF9E6068();
  v97 = *(v98 - 8);
  v22 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v98);
  v101 = &v92 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v92 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v92 - v29;
  v99 = type metadata accessor for Signpost(0);
  v102 = *(v99 - 8);
  v31 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v99);
  v105 = &v92 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v103 = v35;
  v104 = (&v92 - v34);
  MEMORY[0x1EEE9AC00](v36);
  v110 = &v92 - v37;
  v38 = *(a1 + 16);
  v39 = swift_allocObject();
  *(v39 + 16) = a4;
  *(v39 + 24) = v109;
  *(v39 + 32) = v111;
  *(v39 + 40) = a7;
  *(v39 + 48) = a1;
  *(v39 + 56) = a8;
  *(v39 + 64) = a9;
  *(v39 + 72) = a2;
  v111 = v39;
  *(v39 + 80) = a3;
  v40 = swift_allocObject();
  *(v40 + 16) = a2;
  *(v40 + 24) = a3;
  v109 = v40;
  v108 = v38;
  v41 = *(v38 + qword_1EDEBBC38);

  swift_retain_n();

  v42 = a4;
  v43 = a9;
  v107 = fpfs_adopt_log();
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v44 = qword_1EDEBBE40;
  v45 = v97;
  v46 = v98;
  (*(v97 + 56))(v30, 1, 1, v98);
  strcpy(&aBlock, "async batch ");
  BYTE13(aBlock) = 0;
  HIWORD(aBlock) = -5120;
  v47 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v47);

  v96 = *(&aBlock + 1);
  v48 = aBlock;
  v100 = v30;
  sub_1CEFCCBDC(v30, v27, &unk_1EC4BED20, &unk_1CFA00700);
  v49 = *(v45 + 48);
  if (v49(v27, 1, v46) == 1)
  {
    v50 = v44;
    v51 = v101;
    sub_1CF9E6048();
    if (v49(v27, 1, v46) != 1)
    {
      sub_1CEFCCC44(v27, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v51 = v101;
    (*(v45 + 32))(v101, v27, v46);
  }

  v52 = v110;
  (*(v45 + 16))(v110, v51, v46);
  v53 = v99;
  *(v52 + *(v99 + 20)) = v44;
  v54 = v52 + *(v53 + 24);
  *v54 = "DB queue wait";
  *(v54 + 8) = 13;
  *(v54 + 16) = 2;
  v55 = v44;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_1CF9FA450;
  *(v56 + 56) = MEMORY[0x1E69E6158];
  *(v56 + 64) = sub_1CEFD51C4();
  v57 = v96;
  *(v56 + 32) = v48;
  *(v56 + 40) = v57;
  sub_1CF9E6028();

  (*(v45 + 8))(v51, v46);
  sub_1CEFCCC44(v100, &unk_1EC4BED20, &unk_1CFA00700);
  v58 = *(v108 + 64);
  v100 = *(v108 + 168);
  v101 = v58;
  v98 = sub_1CF9E6448();
  v99 = *(v98 - 8);
  (*(v99 + 56))(v112, 1, 1, v98);
  v59 = v104;
  sub_1CEFDA34C(v52, v104, type metadata accessor for Signpost);
  v60 = (*(v102 + 80) + 16) & ~*(v102 + 80);
  v61 = (v103 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
  v62 = swift_allocObject();
  v103 = type metadata accessor for Signpost;
  sub_1CEFDA0C4(v59, v62 + v60, type metadata accessor for Signpost);
  v63 = (v62 + v61);
  v104 = sub_1CF5543A4;
  v64 = v109;
  *v63 = sub_1CF5543A4;
  v63[1] = v64;
  v65 = v105;
  sub_1CEFDA34C(v52, v105, type metadata accessor for Signpost);
  v66 = (v61 + 23) & 0xFFFFFFFFFFFFFFF8;
  v67 = (v66 + 15) & 0xFFFFFFFFFFFFFFF8;
  v68 = (v67 + 25) & 0xFFFFFFFFFFFFFFF8;
  v69 = (v68 + 23) & 0xFFFFFFFFFFFFFFF8;
  v70 = swift_allocObject();
  v71 = v70 + v60;
  v72 = v98;
  sub_1CEFDA0C4(v65, v71, v103);
  v73 = (v70 + v61);
  *v73 = sub_1CF045408;
  v73[1] = 0;
  *(v70 + v66) = v108;
  v74 = v70 + v67;
  *v74 = "signalErrorResolved(_:completionHandler:)";
  *(v74 + 8) = 41;
  *(v74 + 16) = 2;
  v75 = (v70 + v68);
  v76 = v99;
  *v75 = v104;
  v75[1] = v64;
  v77 = (v70 + v69);
  v78 = v111;
  *v77 = sub_1CF8FCC98;
  v77[1] = v78;
  v79 = swift_allocObject();
  v79[2] = sub_1CF903308;
  v79[3] = v62;
  v80 = v100;
  v79[4] = v100;
  swift_retain_n();

  v108 = v62;

  v81 = fpfs_current_log();
  v82 = *(v80 + 16);
  v83 = v106;
  sub_1CEFCCBDC(v112, v106, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v76 + 48))(v83, 1, v72) == 1)
  {
    sub_1CEFCCC44(v83, &unk_1EC4BE370, qword_1CFA01B30);
    v84 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v85 = v93;
    sub_1CF9E6438();
    (*(v76 + 8))(v83, v72);
    v84 = sub_1CF9E63C8();
    (*(v94 + 8))(v85, v95);
  }

  v86 = swift_allocObject();
  v86[2] = v81;
  v86[3] = sub_1CF4858EC;
  v86[4] = v70;
  v116 = sub_1CF2BA17C;
  v117 = v86;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v114 = sub_1CEFCA444;
  v115 = &block_descriptor_3512;
  v87 = _Block_copy(&aBlock);
  v88 = v81;

  v116 = sub_1CF2BA180;
  v117 = v79;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v114 = sub_1CEFCA444;
  v115 = &block_descriptor_3515;
  v89 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v82, v101, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v84, v87, v89);
  _Block_release(v89);
  _Block_release(v87);

  sub_1CEFCCC44(v112, &unk_1EC4BE370, qword_1CFA01B30);
  sub_1CEFD5338(v110, type metadata accessor for Signpost);
  v90 = v107;
  v91 = fpfs_adopt_log();
}

void sub_1CF8B7E4C(void *a1, char *a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void (*a9)(void))
{
  v125 = a8;
  v126 = a6;
  v132 = a5;
  v130 = a4;
  v133 = a3;
  v127 = a1;
  v128 = sub_1CF9E6118();
  v129 = *(v128 - 8);
  v11 = *(v129 + 64);
  MEMORY[0x1EEE9AC00](v128);
  v13 = v122 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v123 = v122 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v124 = v122 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v122 - v19;
  v21 = &a2[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_errorGenerationRecord];
  if (*&a2[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_errorGenerationRecord] == -1)
  {
    sub_1CF82CDEC();
  }

  v22 = *(v21 + 2);
  v23 = swift_allocObject();
  *(v23 + 16) = a2;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_1CF8FCCD4;
  *(v24 + 24) = v23;
  v142 = sub_1CF1C0B54;
  v143 = v24;
  aBlock = MEMORY[0x1E69E9820];
  v139 = 1107296256;
  v140 = sub_1CEFFD02C;
  v141 = &block_descriptor_3525;
  v25 = _Block_copy(&aBlock);
  v26 = v22;
  v122[1] = a2;

  dispatch_sync(v26, v25);

  _Block_release(v25);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    return;
  }

  v28 = v133;
  if (v133)
  {
    v125 = a7;
    v29 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v30 = v132;

    v31 = sub_1CF9E6108();
    v32 = sub_1CF9E7288();

    v33 = os_log_type_enabled(v31, v32);
    v34 = v127;
    if (v33)
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v136 = v36;
      *v35 = 136315394;
      v37 = sub_1CF94B188(v28);
      v39 = sub_1CEFD0DF0(v37, v38, &v136);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2080;
      if (v30)
      {
        aBlock = 0x2068746977;
        v139 = 0xE500000000000000;
        MEMORY[0x1D3868CC0](v130, v30);
        MEMORY[0x1D3868CC0](32, 0xE100000000000000);
        v40 = aBlock;
        v41 = v139;
      }

      else
      {
        v40 = 0;
        v41 = 0xE000000000000000;
      }

      v63 = v125;
      v72 = sub_1CEFD0DF0(v40, v41, &v136);

      *(v35 + 14) = v72;
      _os_log_impl(&dword_1CEFC7000, v31, v32, "🚦  resolved error %s %ssignaled, clearing this error's throttles", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v36, -1, -1);
      MEMORY[0x1D386CDC0](v35, -1, -1);

      (*(v129 + 8))(v20, v128);
      v62 = v131;
    }

    else
    {

      (*(v129 + 8))(v20, v128);
      v62 = v131;
      v63 = v125;
    }

    v73 = v34[3];
    v74 = v34[4];
    v75 = __swift_project_boxed_opaque_existential_1(v34, v73);
    v76 = *(v126 + 16);
    v77 = *(v76 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB70, &unk_1CFA0A280);
    v78 = *(*(swift_dynamicCastClassUnconditional() + 16) + 56);
    if (v63)
    {
      swift_beginAccess();
      v79 = *(v63 + 4);
      v80 = *(v63 + 40);
      if (*(v63 + 41))
      {
        v79 = 0;
        v80 = -1;
      }
    }

    else
    {
      v79 = 0;
      v80 = -1;
    }

    v136 = v79;
    v137 = v80;

    sub_1CF32C350(v133, v130, v132, &v136, v75, v73, v74);
    if (v62)
    {

      return;
    }

    v81 = v34[3];
    v82 = v34[4];
    v83 = __swift_project_boxed_opaque_existential_1(v34, v81);
    v84 = *(v76 + 24);
    v85 = *(*(swift_dynamicCastClassUnconditional() + 24) + 56);
    if (v63 && *(v63 + 25) == 1)
    {
      v86 = *(v63 + 2);
      v87 = v86;
    }

    else
    {
      v86 = 0;
    }

    v88 = v130;
    v136 = v86;

    v89 = v133;
    sub_1CF32C350(v133, v88, v132, &v136, v83, v81, v82);

    if (v89 == 1)
    {
      sub_1CF8B6CD0();
    }

LABEL_17:
    a9(0);
    return;
  }

  v42 = v131;
  if (!a7)
  {
    goto LABEL_14;
  }

  swift_beginAccess();
  if ((*(a7 + 41) & 1) == 0)
  {
    v90 = *(a7 + 32);
    LODWORD(v91) = *(a7 + 40);
    v92 = fpfs_current_or_default_log();
    v93 = v124;
    sub_1CF9E6128();
    v94 = v125;
    v95 = v125;
    v96 = sub_1CF9E6108();
    v97 = sub_1CF9E7288();

    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v133 = v91;
      v91 = v100;
      v135[0] = v100;
      *v98 = 138412546;
      swift_getErrorValue();
      v101 = Error.prettyDescription.getter(v134);
      *(v98 + 4) = v101;
      *v99 = v101;
      *(v98 + 12) = 2080;
      v136 = v90;
      v137 = v133;
      v103 = VFSItemID.description.getter(v101, v102);
      v105 = v90;
      v106 = sub_1CEFD0DF0(v103, v104, v135);

      *(v98 + 14) = v106;
      _os_log_impl(&dword_1CEFC7000, v96, v97, "🚦  resolved error %@ for %s signaled, clearing this error's throttles", v98, 0x16u);
      sub_1CEFCCC44(v99, &qword_1EC4BE350, &unk_1CF9FC3B0);
      v107 = v99;
      v42 = v131;
      MEMORY[0x1D386CDC0](v107, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v91);
      v108 = v91;
      LOBYTE(v91) = v133;
      MEMORY[0x1D386CDC0](v108, -1, -1);
      MEMORY[0x1D386CDC0](v98, -1, -1);

      (*(v129 + 8))(v124, v128);
    }

    else
    {

      (*(v129 + 8))(v93, v128);
      v105 = v90;
    }

    v109 = v127[3];
    v110 = v127[4];
    v111 = __swift_project_boxed_opaque_existential_1(v127, v109);
    v112 = *(*(v126 + 16) + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB70, &unk_1CFA0A280);
    swift_dynamicCastClassUnconditional();
    v136 = v105;
    v137 = v91;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4FD0, &unk_1CF9FE690);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CF9FA450;
    *(inited + 32) = v94;
    v114 = v94;

    sub_1CF4CE79C(&v136, inited, v111, v109, v110);

    swift_setDeallocating();

    if (!v42)
    {
      goto LABEL_17;
    }

    return;
  }

  if (*(a7 + 25) != 1)
  {
LABEL_14:
    v64 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v65 = v125;
    v66 = v125;
    v67 = sub_1CF9E6108();
    v68 = sub_1CF9E7288();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *v69 = 138412290;
      swift_getErrorValue();
      v71 = Error.prettyDescription.getter(v135[16]);
      *(v69 + 4) = v71;
      *v70 = v71;
      _os_log_impl(&dword_1CEFC7000, v67, v68, "🚦  resolved error %@ signaled, skipping unsupported error", v69, 0xCu);
      sub_1CEFCCC44(v70, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v70, -1, -1);
      MEMORY[0x1D386CDC0](v69, -1, -1);
    }

    (*(v129 + 8))(v13, v128);
    goto LABEL_17;
  }

  v43 = *(a7 + 16);
  v44 = *(a7 + 24);
  v45 = v43;
  v46 = fpfs_current_or_default_log();
  v47 = v123;
  sub_1CF9E6128();
  v48 = v125;
  v49 = v125;
  sub_1CEFD0988(v43, v44, 1);
  v50 = sub_1CF9E6108();
  v51 = sub_1CF9E7288();

  v133 = v44;
  sub_1CEFD0994(v43, v44, 1);
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v136 = v54;
    *v52 = 138412546;
    swift_getErrorValue();
    v55 = Error.prettyDescription.getter(v135[7]);
    *(v52 + 4) = v55;
    *v53 = v55;
    *(v52 + 12) = 2080;
    v56 = v45;
    v57 = NSFileProviderItemIdentifier.description.getter();
    v59 = v58;
    sub_1CEFD0994(v43, v133, 1);
    v60 = sub_1CEFD0DF0(v57, v59, &v136);

    *(v52 + 14) = v60;
    _os_log_impl(&dword_1CEFC7000, v50, v51, "🚦  resolved error %@ for %s signaled, clearing this error's throttles", v52, 0x16u);
    sub_1CEFCCC44(v53, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v53, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v54);
    v61 = v54;
    v48 = v125;
    MEMORY[0x1D386CDC0](v61, -1, -1);
    MEMORY[0x1D386CDC0](v52, -1, -1);

    (*(v129 + 8))(v123, v128);
  }

  else
  {

    (*(v129 + 8))(v47, v128);
  }

  v115 = v127[3];
  v116 = v127[4];
  v117 = __swift_project_boxed_opaque_existential_1(v127, v115);
  v118 = *(*(v126 + 16) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB70, &unk_1CFA0A280);
  swift_dynamicCastClassUnconditional();
  v136 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4FD0, &unk_1CF9FE690);
  v119 = swift_initStackObject();
  *(v119 + 16) = xmmword_1CF9FA450;
  *(v119 + 32) = v48;
  v120 = v48;

  v121 = v131;
  sub_1CF4CE814(&v136, v119, v117, v115, v116);

  swift_setDeallocating();

  sub_1CEFD0994(v43, v133, 1);
  if (!v121)
  {
    goto LABEL_17;
  }
}

uint64_t FPDDomainFPFSBackend.updateShouldRetryThrottledOperations(_:completionHandler:)(char a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  *(v7 + 32) = a1;
  swift_retain_n();
  sub_1CEFD4024("updateShouldRetryThrottledOperations(_:completionHandler:)", 58, 2, sub_1CF90324C, v6, sub_1CF8F35F4, v7);
}

uint64_t sub_1CF8B8D84(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = *(a1 + 16);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a4;
  *(v10 + 32) = a2;
  *(v10 + 40) = a3;
  swift_retain_n();

  sub_1CF7AAF88("updateShouldRetryThrottledOperations(_:completionHandler:)", 58, 2, 2, sub_1CF90324C, v9, sub_1CF8FCC74, v10);
}

uint64_t sub_1CF8B8E84(void *a1, uint64_t a2, char a3, void (*a4)(void))
{
  v5 = v4;
  v8 = *(*(a2 + 16) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB70, &unk_1CFA0A280);
  v9 = swift_dynamicCastClassUnconditional();
  v11 = a1[3];
  v10 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_1(a1, v11);
  v13 = *(*(v9 + 16) + 56);
  v14 = a3 ^ 1;

  sub_1CF32C538((a3 ^ 1) & 1, v12, v11, v10);
  if (v5)
  {
  }

  else
  {

    v15 = a1[3];
    v16 = a1[4];
    v17 = __swift_project_boxed_opaque_existential_1(a1, v15);
    v18 = *(*(v9 + 24) + 56);

    sub_1CF32C538(v14 & 1, v17, v15, v16);

    a4(0);
  }
}

uint64_t FPDDomainFPFSBackend.listAvailableTestingOperations(with:completionHandler:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = v3;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1CF8F3600;
  *(v9 + 24) = v7;
  swift_retain_n();
  v10 = a1;
  v11 = v3;

  sub_1CEFD4024("listAvailableTestingOperations(with:completionHandler:)", 55, 2, sub_1CF903280, v9, sub_1CF8F362C, v8);
}

uint64_t sub_1CF8B9250(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  v19 = v10 | 0x6000000000000000;
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v12 = a5;
  v13 = swift_allocObject();
  v13[2] = sub_1CF8FCBBC;
  v13[3] = v11;
  v13[4] = a1;
  v20 = *(a1 + 16);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1CF902EBC;
  *(v14 + 24) = v13;
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = v19;
  v15[4] = 0;
  v15[5] = sub_1CF902EBC;
  v15[6] = v13;
  swift_retain_n();
  swift_retain_n();
  v16 = a2;

  v17 = v12;

  sub_1CF7AAF88("waitForStabilization(request:mode:_:)", 37, 2, 2, sub_1CF90324C, v14, sub_1CF90338C, v15);
}

void sub_1CF8B9438(uint64_t a1, char a2, void (*a3)(uint64_t, uint64_t))
{
  if (a2)
  {
    a3(0, a1);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      v7 = sub_1CF8E518C(a1, v6);

      a3(v7, 0);
    }

    else
    {
      v8 = FPDomainUnavailableError();
      a3(0, v8);
    }
  }
}

uint64_t FPDDomainFPFSBackend.run(_:request:completionHandler:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1CF903260;
  *(v10 + 24) = v8;
  swift_retain_n();

  v11 = a2;

  sub_1CEFD4024("run(_:request:completionHandler:)", 33, 2, sub_1CF903280, v10, sub_1CF8F3638, v9);
}

uint64_t sub_1CF8B9804(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v42 = a3;
  v43 = a5;
  v41 = a4;
  v44 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  v46 = *(v6 - 8);
  v7 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v40 - v8;
  v10 = sub_1CF4E4700(MEMORY[0x1E69E7CC0]);
  if (a2 >> 62)
  {
LABEL_27:
    v11 = sub_1CF9E7818();
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_28:
    v30 = v10[2];
    if (v30)
    {
      v31 = sub_1CF1F8F2C(v10[2], 0);
      sub_1CF1FA760(&v48, v31 + ((*(v46 + 80) + 32) & ~*(v46 + 80)), v30, v10);
      v33 = v32;

      sub_1CEFCB59C();
      if (v33 == v30)
      {
LABEL_32:
        v34 = swift_allocObject();
        v35 = v42;
        *(v34 + 16) = v42;
        v36 = swift_allocObject();
        v37 = v43;
        v36[2] = v41;
        v36[3] = v37;
        v36[4] = v10;
        v38 = v35;

        sub_1CF81A534(v31, v34 | 0x6000000000000002, sub_1CF8FC788, v36);
      }

      __break(1u);
    }

    v31 = MEMORY[0x1E69E7CC0];
    goto LABEL_32;
  }

  v11 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
    goto LABEL_28;
  }

LABEL_3:
  v40[1] = v6;
  v6 = 0;
  v47 = a2 & 0xC000000000000001;
  v45 = a2 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v47)
    {
      v14 = MEMORY[0x1D3869C30](v6, a2);
      v15 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v6 >= *(v45 + 16))
      {
        goto LABEL_26;
      }

      v14 = *(a2 + 8 * v6 + 32);
      v15 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }
    }

    v16 = v14;
    sub_1CF9406EC(v16, v9);
    v17 = v16;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = v10;
    v20 = sub_1CF7BF520(v9);
    v21 = v10[2];
    v22 = (v19 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      goto LABEL_24;
    }

    v24 = v19;
    if (v10[3] < v23)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v10 = v48;
      if (v19)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_1CF7D3D88();
      v10 = v48;
      if (v24)
      {
LABEL_4:
        v12 = v10[7];
        v13 = *(v12 + 8 * v20);
        *(v12 + 8 * v20) = v17;

        sub_1CEFCCC44(v9, &unk_1EC4BF650, &unk_1CF9FCB40);
        goto LABEL_5;
      }
    }

LABEL_19:
    v10[(v20 >> 6) + 8] |= 1 << v20;
    sub_1CEFCCBDC(v9, v10[6] + *(v46 + 72) * v20, &unk_1EC4BF650, &unk_1CF9FCB40);
    *(v10[7] + 8 * v20) = v17;

    sub_1CEFCCC44(v9, &unk_1EC4BF650, &unk_1CF9FCB40);
    v27 = v10[2];
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (v28)
    {
      goto LABEL_25;
    }

    v10[2] = v29;
LABEL_5:
    ++v6;
    if (v15 == v11)
    {
      goto LABEL_28;
    }
  }

  sub_1CF7CCF1C(v23, isUniquelyReferenced_nonNull_native);
  v25 = sub_1CF7BF520(v9);
  if ((v24 & 1) == (v26 & 1))
  {
    v20 = v25;
    v10 = v48;
    if (v24)
    {
      goto LABEL_4;
    }

    goto LABEL_19;
  }

  result = sub_1CF9E8108();
  __break(1u);
  return result;
}

uint64_t sub_1CF8B9C10(uint64_t a1, char a2, uint64_t (*a3)(void, uint64_t, __n128), uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  v71 = *(v10 - 8);
  v11 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v72 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v70 = &v64 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4FB8, &qword_1CFA18160);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v64 - v21;
  if (a2)
  {
    return a3(0, a1, v20);
  }

  v64 = a4;
  v65 = a3;
  v24 = sub_1CF4E492C(MEMORY[0x1E69E7CC0]);
  v25 = *(a1 + 64);
  v67 = a1 + 64;
  v26 = 1 << *(a1 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v25;
  v66 = (v26 + 63) >> 6;
  v69 = a1;

  v29 = 0;
  v73 = v18;
  v74 = v22;
  v68 = a5;
  while (v28)
  {
    v32 = v29;
LABEL_17:
    v35 = __clz(__rbit64(v28));
    v28 &= v28 - 1;
    v36 = v35 | (v32 << 6);
    v37 = v69;
    v38 = v70;
    sub_1CEFCCBDC(*(v69 + 48) + *(v71 + 72) * v36, v70, &unk_1EC4BF650, &unk_1CF9FCB40);
    v39 = *(*(v37 + 56) + 8 * v36);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4FC0, &qword_1CFA18168);
    v41 = *(v40 + 48);
    v42 = v38;
    v18 = v73;
    sub_1CEFE55D0(v42, v73, &unk_1EC4BF650, &unk_1CF9FCB40);
    *&v18[v41] = v39;
    (*(*(v40 - 8) + 56))(v18, 0, 1, v40);
    v43 = v39;
    v34 = v32;
    a5 = v68;
    v22 = v74;
LABEL_18:
    sub_1CEFE55D0(v18, v22, &qword_1EC4C4FB8, &qword_1CFA18160);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4FC0, &qword_1CFA18168);
    if ((*(*(v44 - 8) + 48))(v22, 1, v44) == 1)
    {

      v65(v24, 0);
    }

    v45 = *&v22[*(v44 + 48)];
    v46 = v72;
    sub_1CEFE55D0(v22, v72, &unk_1EC4BF650, &unk_1CF9FCB40);
    if (!*(a5 + 16))
    {
      goto LABEL_36;
    }

    v47 = sub_1CF7BF520(v46);
    if ((v48 & 1) == 0)
    {
      goto LABEL_37;
    }

    v49 = *(*(a5 + 56) + 8 * v47);
    sub_1CEFCCC44(v46, &unk_1EC4BF650, &unk_1CF9FCB40);
    v50 = v45;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v75 = v24;
    v53 = sub_1CF7BFF48(v49);
    v54 = v24[2];
    v55 = (v52 & 1) == 0;
    v56 = v54 + v55;
    if (__OFADD__(v54, v55))
    {
      goto LABEL_38;
    }

    v57 = v52;
    if (v24[3] >= v56)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v24 = v75;
        if (v52)
        {
          goto LABEL_6;
        }
      }

      else
      {
        sub_1CF7D448C();
        v24 = v75;
        if (v57)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
      sub_1CF7CDE88(v56, isUniquelyReferenced_nonNull_native);
      v58 = sub_1CF7BFF48(v49);
      if ((v57 & 1) != (v59 & 1))
      {
        goto LABEL_40;
      }

      v53 = v58;
      v24 = v75;
      if (v57)
      {
LABEL_6:
        v30 = v24[7];
        v31 = *(v30 + 8 * v53);
        *(v30 + 8 * v53) = v45;

        goto LABEL_7;
      }
    }

    v24[(v53 >> 6) + 8] |= 1 << v53;
    *(v24[6] + 8 * v53) = v49;
    *(v24[7] + 8 * v53) = v45;

    v60 = v24[2];
    v61 = __OFADD__(v60, 1);
    v62 = v60 + 1;
    if (v61)
    {
      goto LABEL_39;
    }

    v24[2] = v62;
LABEL_7:
    v29 = v34;
    v18 = v73;
    v22 = v74;
  }

  if (v66 <= v29 + 1)
  {
    v33 = v29 + 1;
  }

  else
  {
    v33 = v66;
  }

  v34 = v33 - 1;
  while (1)
  {
    v32 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v32 >= v66)
    {
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4FC0, &qword_1CFA18168);
      (*(*(v63 - 8) + 56))(v18, 1, 1, v63);
      v28 = 0;
      goto LABEL_18;
    }

    v28 = *(v67 + 8 * v32);
    ++v29;
    if (v28)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  sub_1CEFD57E0(0, &qword_1EC4C49B0, 0x1E6967478);
  result = sub_1CF9E8108();
  __break(1u);
  return result;
}

void sub_1CF8BA380(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a1)
  {
    sub_1CEFD57E0(0, &qword_1EC4C49B0, 0x1E6967478);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    sub_1CF2B1654(&qword_1EC4C4C18, &qword_1EC4C49B0, 0x1E6967478);
    v5 = sub_1CF9E6618();
  }

  if (a2)
  {
    v6 = sub_1CF9E57E8();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

uint64_t FPDDomainFPFSBackend.importProgressForItemsPendingReconciliation(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v5 = [objc_allocWithZone(MEMORY[0x1E6967378]) init];
  v6 = dispatch_group_create();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = v5;
  v8[5] = v6;
  v8[6] = v2;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1CF90325C;
  *(v9 + 24) = v7;
  swift_retain_n();
  v10 = v5;
  v11 = v6;
  v12 = v2;

  sub_1CEFD4024("importProgressForItemsPendingReconciliation(completionHandler:)", 63, 2, sub_1CF903280, v9, sub_1CF8F3644, v8);
}

void sub_1CF8BA5F8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v42 = sub_1CF9E63A8();
  v44 = *(v42 - 8);
  v12 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v40 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1CF9E6448();
  v41 = *(v43 - 8);
  v14 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v16 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 16);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  v19 = swift_allocObject();
  v19[2] = v17;
  v19[3] = a4;
  v19[4] = a5;
  v19[5] = a6;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1CF90325C;
  *(v20 + 24) = v18;

  v21 = a4;
  v39[1] = a5;
  v22 = a6;

  sub_1CF7AAF88("importProgressForItemsPendingReconciliation(completionHandler:)", 63, 2, 2, sub_1CF9034C4, v20, sub_1CF8FC700, v19);

  v23 = *&v22[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue];
  v24 = swift_allocObject();
  v24[2] = a2;
  v24[3] = a3;
  v24[4] = v21;

  v25 = v21;
  v26 = fpfs_current_log();
  v39[0] = fpfs_adopt_log();
  v27 = swift_allocObject();
  aBlock = sub_1CF9E73C8();
  v47 = v28;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v29 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v29);

  sub_1CF9E6978();

  v30 = __fp_log_fork();

  *(v27 + 16) = v30;
  v31 = swift_allocObject();
  *(v31 + 16) = v26;
  *(v31 + 24) = v27;
  *(v31 + 32) = v23;
  *(v31 + 40) = "importProgressForItemsPendingReconciliation(completionHandler:)";
  *(v31 + 48) = 63;
  *(v31 + 56) = 2;
  *(v31 + 64) = sub_1CF902C2C;
  *(v31 + 72) = v24;
  v50 = sub_1CF2B9F54;
  v51 = v31;
  aBlock = MEMORY[0x1E69E9820];
  v47 = 1107296256;
  v48 = sub_1CEFCA444;
  v49 = &block_descriptor_3255;
  v32 = _Block_copy(&aBlock);
  v33 = v26;

  v34 = v23;

  sub_1CF9E63F8();
  v45 = MEMORY[0x1E69E7CC0];
  sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
  v35 = v40;
  v36 = v42;
  sub_1CF9E77B8();
  sub_1CF9E7308();
  _Block_release(v32);
  (*(v44 + 8))(v35, v36);
  (*(v41 + 8))(v16, v43);

  v37 = v39[0];
  v38 = fpfs_adopt_log();
}

uint64_t sub_1CF8BAB78(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);
}

uint64_t FPDDomainFPFSBackend.importProgressForItemsPendingScanningDisk(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v5 = [objc_allocWithZone(MEMORY[0x1E6967378]) init];
  v6 = dispatch_group_create();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = v5;
  v8[5] = v6;
  v8[6] = v2;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1CF90325C;
  *(v9 + 24) = v7;
  swift_retain_n();
  v10 = v5;
  v11 = v6;
  v12 = v2;

  sub_1CEFD4024("importProgressForItemsPendingScanningDisk(completionHandler:)", 61, 2, sub_1CF903280, v9, sub_1CF8F365C, v8);
}

void sub_1CF8BAD74(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v42 = sub_1CF9E63A8();
  v44 = *(v42 - 8);
  v12 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v40 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1CF9E6448();
  v41 = *(v43 - 8);
  v14 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v16 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 16);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  v19 = swift_allocObject();
  v19[2] = v17;
  v19[3] = a4;
  v19[4] = a5;
  v19[5] = a6;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1CF90325C;
  *(v20 + 24) = v18;

  v21 = a4;
  v39[1] = a5;
  v22 = a6;

  sub_1CF7AAF88("importProgressForItemsPendingScanningDisk(completionHandler:)", 61, 2, 2, sub_1CF9034C4, v20, sub_1CF8FC628, v19);

  v23 = *&v22[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue];
  v24 = swift_allocObject();
  v24[2] = a2;
  v24[3] = a3;
  v24[4] = v21;

  v25 = v21;
  v26 = fpfs_current_log();
  v39[0] = fpfs_adopt_log();
  v27 = swift_allocObject();
  aBlock = sub_1CF9E73C8();
  v47 = v28;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v29 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v29);

  sub_1CF9E6978();

  v30 = __fp_log_fork();

  *(v27 + 16) = v30;
  v31 = swift_allocObject();
  *(v31 + 16) = v26;
  *(v31 + 24) = v27;
  *(v31 + 32) = v23;
  *(v31 + 40) = "importProgressForItemsPendingScanningDisk(completionHandler:)";
  *(v31 + 48) = 61;
  *(v31 + 56) = 2;
  *(v31 + 64) = sub_1CF902C2C;
  *(v31 + 72) = v24;
  v50 = sub_1CF2B9F54;
  v51 = v31;
  aBlock = MEMORY[0x1E69E9820];
  v47 = 1107296256;
  v48 = sub_1CEFCA444;
  v49 = &block_descriptor_3227;
  v32 = _Block_copy(&aBlock);
  v33 = v26;

  v34 = v23;

  sub_1CF9E63F8();
  v45 = MEMORY[0x1E69E7CC0];
  sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
  v35 = v40;
  v36 = v42;
  sub_1CF9E77B8();
  sub_1CF9E7308();
  _Block_release(v32);
  (*(v44 + 8))(v35, v36);
  (*(v41 + 8))(v16, v43);

  v37 = v39[0];
  v38 = fpfs_adopt_log();
}

uint64_t sub_1CF8BB2C0(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v13 = a1[3];
  v12 = a1[4];
  v14 = __swift_project_boxed_opaque_existential_1(a1, v13);
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;
  v16 = a4;
  v17 = a5;
  a8(a3, v14, a7, v15, v13, v12);
}

uint64_t FPDDomainFPFSBackend.importProgressForItemsPendingScanningProvider(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v5 = [objc_allocWithZone(MEMORY[0x1E6967378]) init];
  v6 = dispatch_group_create();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = v5;
  v8[5] = v6;
  v8[6] = v2;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1CF90325C;
  *(v9 + 24) = v7;
  swift_retain_n();
  v10 = v5;
  v11 = v6;
  v12 = v2;

  sub_1CEFD4024("importProgressForItemsPendingScanningProvider(completionHandler:)", 65, 2, sub_1CF903280, v9, sub_1CF8F3674, v8);
}

uint64_t sub_1CF8BB528(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v11 = *(a1 + 16);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = a4;
  v13[4] = a5;
  v13[5] = a6;
  v13[6] = a2;
  v13[7] = a3;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1CF90325C;
  *(v14 + 24) = v12;
  swift_retain_n();

  v15 = a4;
  v16 = a5;
  v17 = a6;

  sub_1CF7AAF88("importProgressForItemsPendingScanningProvider(completionHandler:)", 65, 2, 2, sub_1CF7BA950, v14, sub_1CF8FC56C, v13);
}

void sub_1CF8BB674(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v40 = a6;
  v41 = a7;
  v12 = sub_1CF9E63A8();
  v47 = *(v12 - 8);
  v48 = v12;
  v13 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v45 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1CF9E6448();
  v44 = *(v46 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v43 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v17 = a1[4];
  v19 = __swift_project_boxed_opaque_existential_1(a1, v18);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  v42 = a4;
  v21 = a5;
  sub_1CF258EE8(a3, v19, sub_1CF8FC598, v20, v18, v17);

  if (!v7)
  {
    v22 = *&v21[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue];
    v23 = swift_allocObject();
    v23[2] = v40;
    v23[3] = v41;
    v23[4] = a3;

    v24 = a3;
    v25 = fpfs_current_log();
    v41 = fpfs_adopt_log();
    v26 = swift_allocObject();
    aBlock = sub_1CF9E73C8();
    v50 = v27;
    MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
    v28 = sub_1CF9E7988();
    MEMORY[0x1D3868CC0](v28);

    sub_1CF9E6978();

    v29 = __fp_log_fork();

    *(v26 + 16) = v29;
    v30 = swift_allocObject();
    *(v30 + 16) = v25;
    *(v30 + 24) = v26;
    v39 = v26;
    v31 = v22;
    *(v30 + 32) = v22;
    *(v30 + 40) = "importProgressForItemsPendingScanningProvider(completionHandler:)";
    *(v30 + 48) = 65;
    *(v30 + 56) = 2;
    *(v30 + 64) = sub_1CF8FC5D0;
    *(v30 + 72) = v23;
    v53 = sub_1CF2B9F54;
    v54 = v30;
    aBlock = MEMORY[0x1E69E9820];
    v50 = 1107296256;
    v51 = sub_1CEFCA444;
    v52 = &block_descriptor_3199;
    v32 = _Block_copy(&aBlock);
    v40 = v25;

    v33 = v31;

    v34 = v43;
    sub_1CF9E63F8();
    v55 = MEMORY[0x1E69E7CC0];
    sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
    sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
    v35 = v45;
    v36 = v48;
    sub_1CF9E77B8();
    sub_1CF9E7308();
    _Block_release(v32);
    (*(v47 + 8))(v35, v36);
    (*(v44 + 8))(v34, v46);

    v37 = v41;
    v38 = fpfs_adopt_log();
  }
}

uint64_t sub_1CF8BBB5C(void *a1, uint64_t a2, dispatch_group_t group, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *a2;
  v10 = *(a2 + 8);
  dispatch_group_enter(group);
  v15 = v9;
  v16 = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = group;
  v12 = a1;
  v13 = group;
  sub_1CF889A58(&v15, a6, v11);
}

uint64_t FPDDomainFPFSBackend.subscribe(toUploadProgressUpdates:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  swift_retain_n();
  swift_unknownObjectRetain();
  sub_1CEFD4024("subscribe(toUploadProgressUpdates:completionHandler:)", 53, 2, sub_1CF90324C, v6, sub_1CF8F368C, v7);
}

uint64_t sub_1CF8BBD28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 16);
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  swift_retain_n();

  swift_unknownObjectRetain();
  sub_1CF7AAF88("subscribeToUploadProgressUpdates(_:completionHandler:)", 54, 2, 2, sub_1CF90324C, v9, sub_1CF8FC54C, v10);
}

uint64_t FPDDomainFPFSBackend.subscribe(toDownloadProgressUpdates:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  swift_retain_n();
  swift_unknownObjectRetain();
  sub_1CEFD4024("subscribe(toDownloadProgressUpdates:completionHandler:)", 55, 2, sub_1CF90324C, v6, sub_1CF8F3698, v7);
}

uint64_t sub_1CF8BC068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 16);
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  swift_retain_n();

  swift_unknownObjectRetain();
  sub_1CF7AAF88("subscribeToDownloadProgressUpdates(_:completionHandler:)", 56, 2, 2, sub_1CF90324C, v9, sub_1CF8FC52C, v10);
}

uint64_t FPDDomainFPFSBackend.getCountersArray(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1CF903264;
  *(v6 + 24) = v4;
  swift_retain_n();

  sub_1CEFD4024("getCountersArray(completionHandler:)", 36, 2, sub_1CF903280, v6, sub_1CF8F36A4, v5);
}

uint64_t sub_1CF8BC3D4(uint64_t a1, void (*a2)(void))
{
  v4 = type metadata accessor for FPDDomainFPFSBackend.Counters(0);
  v5 = (v4 - 8);
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(a1 + 16);
  v10 = *(v9 + 32);
  v11 = *(v10 + 16);
  type metadata accessor for VFSFileTree(0);
  v12 = swift_dynamicCastClassUnconditional();
  v13 = qword_1EDEBBE70;
  swift_beginAccess();
  sub_1CEFDA34C(v12 + v13, v8, type metadata accessor for VFSCounters);
  v14 = qword_1EDEBBC30;
  swift_beginAccess();
  sub_1CEFDA34C(v9 + v14, &v8[v5[7]], type metadata accessor for DBCounters);
  v15 = qword_1EDEBBA48;
  swift_beginAccess();
  sub_1CEFDA34C(v10 + v15, &v8[v5[8]], type metadata accessor for SnapshotCounters);
  v16 = *(v9 + 40);
  v17 = qword_1EDEBBA48;
  swift_beginAccess();
  sub_1CEFDA34C(v16 + v17, &v8[v5[9]], type metadata accessor for SnapshotCounters);
  sub_1CF828248();
  a2();

  return sub_1CEFD5338(v8, type metadata accessor for FPDDomainFPFSBackend.Counters);
}

void sub_1CF8BC748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = sub_1CF9E6D28();
    if (a2)
    {
LABEL_3:
      v6 = sub_1CF9E57E8();
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

uint64_t FPDDomainFPFSBackend.resetCounters(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  swift_retain_n();
  sub_1CEFD4024("resetCounters(completionHandler:)", 33, 2, sub_1CF90324C, v4, sub_1CF8F36AC, v5);
}

uint64_t sub_1CF8BC8BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = *(a1 + 16);
  v4 = (*(v3 + 32) + qword_1EDEBBA48);
  swift_beginAccess();

  sub_1CEFD5338(v4, type metadata accessor for SnapshotCounters);
  v5 = type metadata accessor for SnapshotCounters();
  v4[1] = 0;
  v4[2] = 0;
  *v4 = 0;
  v6 = v4 + *(v5 + 28);
  sub_1CF9E5CC8();
  swift_endAccess();

  v7 = (*(v3 + 40) + qword_1EDEBBA48);
  swift_beginAccess();

  sub_1CEFD5338(v7, type metadata accessor for SnapshotCounters);
  v7[1] = 0;
  v7[2] = 0;
  *v7 = 0;
  v8 = v7 + *(v5 + 28);
  sub_1CF9E5CC8();
  swift_endAccess();

  v9 = *(*(v3 + 32) + 16);
  type metadata accessor for VFSFileTree(0);
  v10 = (swift_dynamicCastClassUnconditional() + qword_1EDEBBE70);
  swift_beginAccess();

  sub_1CEFD5338(v10, type metadata accessor for VFSCounters);
  v11 = type metadata accessor for VFSCounters(0);
  v10[1] = 0;
  v10[2] = 0;
  *v10 = 0;
  v12 = v10 + *(v11 + 28);
  sub_1CF9E5CC8();
  swift_endAccess();

  v13 = (v3 + qword_1EDEBBC30);
  swift_beginAccess();
  sub_1CEFD5338(v13, type metadata accessor for DBCounters);
  *v13 = 0;
  v14 = v13 + *(type metadata accessor for DBCounters() + 20);
  sub_1CF9E5CC8();
  swift_endAccess();
  return a2(0);
}

uint64_t FPDDomainFPFSBackend.hasNonUploadedFiles(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1CF8F1034;
  *(v5 + 24) = v4;
  v6 = swift_allocObject();
  v6[2] = sub_1CF8F1034;
  v6[3] = v4;
  v6[4] = a1;
  v6[5] = a2;
  swift_retain_n();
  swift_retain_n();
  sub_1CEFD4024("hasNonUploadedFiles(completionHandler:)", 39, 2, sub_1CF90324C, v5, sub_1CF8F36B4, v6);
}

uint64_t sub_1CF8BCD44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 16);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a4;
  v12[4] = a5;

  sub_1CF7AAF88("hasNonUploadedFiles(completionHandler:)", 39, 2, 2, sub_1CF90324C, v11, sub_1CF8FC4EC, v12);
}

uint64_t sub_1CF8BCE48(void *a1, uint64_t a2, uint64_t (*a3)(BOOL, void))
{
  v4 = v3;
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, v7);
  v10 = *(**(*(a2 + 16) + 16) + 552);

  v11 = v10(v9, v7, v8);
  v13 = v12;

  if (!v4)
  {
    return a3((v11 | v13) != 0, 0);
  }

  return result;
}

uint64_t FPDDomainFPFSBackend.getDBOptions(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1CF8F36C0;
  *(v5 + 24) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  swift_retain_n();

  sub_1CEFD4024("getDBOptions(completionHandler:)", 32, 2, sub_1CF90324C, v5, sub_1CF8F36F0, v6);
}

void FPDDomainFPFSBackend.setAlternateContentsURLWrapper(_:forDocumentWith:request:completionHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = sub_1CF9E5928();
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = v5;
  v12[5] = a1;
  v16[4] = sub_1CF8F3724;
  v16[5] = v12;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1CEFF9A6C;
  v16[3] = &block_descriptor_614;
  v13 = _Block_copy(v16);

  v14 = v6;
  v15 = a1;

  [v14 itemIDForURL:v11 requireProviderItemID:0 request:a3 completionHandler:v13];
  _Block_release(v13);
}

uint64_t sub_1CF8BD46C(void *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, void *a6)
{
  if (!a1)
  {
    return a3();
  }

  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  v11 = swift_allocObject();
  v11[2] = a6;
  v11[3] = a1;
  v11[4] = a3;
  v11[5] = a4;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1CF90325C;
  *(v12 + 24) = v10;
  v13 = a1;
  swift_retain_n();
  v14 = v13;
  v15 = a6;

  sub_1CEFD4024("setAlternateContentsURLWrapper(_:forDocumentWith:request:completionHandler:)", 76, 2, sub_1CF903280, v12, sub_1CF8FC49C, v11);
}

uint64_t sub_1CF8BD830(void *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!a1)
  {
    return a3();
  }

  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a3;
  v8[4] = a4;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1CF90325C;
  *(v9 + 24) = v7;
  v10 = a1;
  swift_retain_n();
  v11 = v10;

  sub_1CEFD4024("fetchAlternateContentsURLWrapperForDocument(with:request:completionHandler:)", 76, 2, sub_1CF903280, v9, sub_1CF8FC3E0, v8);
}

void sub_1CF8BDBC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = v7;
  v14 = sub_1CF9E5928();
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = v7;
  v18[4] = a6;
  v18[5] = v15;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = sub_1CEFF9A6C;
  v18[3] = a7;
  v16 = _Block_copy(v18);

  v17 = v10;

  [v17 itemIDForURL:v14 requireProviderItemID:0 request:a2 completionHandler:v16];
  _Block_release(v16);
}

uint64_t sub_1CF8BDCE0(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!a1)
  {
    return a3(a2);
  }

  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a3;
  v8[4] = a4;
  v9 = a1;
  swift_retain_n();
  v10 = v9;
  sub_1CEFD4024("didUpdateAlternateContentsDocumentForDocument(with:request:completionHandler:)", 78, 2, sub_1CF90324C, v7, sub_1CF8FC394, v8);
}

uint64_t sub_1CF8BDE00(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t a4)
{
  v8 = sub_1CF9E6118();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  *&v11 = MEMORY[0x1EEE9AC00](v8).n128_u64[0];
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  v15 = [*(a1 + 48) getAlternateContentsURLWrapperForItemID_];
  if (v15)
  {

    v16 = ~(*(v14 + 80) >> 20) & 2;
    v17 = swift_allocObject();
    *(v17 + 16) = a3;
    *(v17 + 24) = a4;
    v18 = swift_allocObject();
    v18[2] = v14;
    v18[3] = a2;
    v18[4] = a3;
    v18[5] = a4;
    swift_retain_n();

    v19 = a2;
    sub_1CF7AAF88("didUpdateAlternateContentsDocumentForDocument(with:request:completionHandler:)", 78, 2, v16, sub_1CF90324C, v17, sub_1CF8FC3A0, v18);
  }

  else
  {
    v21 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v22 = a2;
    v23 = sub_1CF9E6108();
    v24 = sub_1CF9E72A8();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138543362;
      *(v25 + 4) = v22;
      *v26 = v22;
      v27 = v22;
      _os_log_impl(&dword_1CEFC7000, v23, v24, "did update alternate content was called with no alternate contents association in place for document with ID: %{public}@", v25, 0xCu);
      sub_1CEFCCC44(v26, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v26, -1, -1);
      MEMORY[0x1D386CDC0](v25, -1, -1);
    }

    (*(v9 + 8))(v13, v8);
    return a3(0);
  }
}

uint64_t sub_1CF8BE0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = *(a2 + qword_1EDEBBDD8);
  if (!v6)
  {
    return a4(0);
  }

  v7 = *(a2 + qword_1EDEBBDD8 + 8);
  MEMORY[0x1EEE9AC00](a1);
  v12[2] = v9;
  v12[3] = v8;
  v12[4] = v10;

  v6(sub_1CF8FC3C0, v12);
  result = sub_1CEFF7124(v6);
  if (!v4)
  {
    return a4(0);
  }

  return result;
}

uint64_t sub_1CF8BE1B4@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_1CF9E6118();
  v56 = *(v9 - 8);
  v10 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v53 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v47 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v51 = *(v16 - 8);
  v52 = v16;
  v17 = *(v51 + 64);
  *&v18 = MEMORY[0x1EEE9AC00](v16).n128_u64[0];
  v20 = &v47 - v19;
  v21 = sub_1CEFD4E9C([a1 identifier]);
  swift_beginAccess();
  if (*(v21 + 41) == 1)
  {
  }

  else
  {
    v48 = a1;
    v49 = v9;
    v50 = a4;
    v34 = *(v21 + 40);
    v35 = *(v21 + 32);

    v37 = a2[3];
    v36 = a2[4];
    v38 = __swift_project_boxed_opaque_existential_1(a2, v37);
    v39 = *(a3 + 32);
    v54 = v35;
    v55 = v34;
    result = (*(*v39 + 240))(&v54, 1, v38, v37, v36);
    if (v4)
    {
      return result;
    }

    v41 = v51;
    v40 = v52;
    if ((*(v51 + 48))(v15, 1, v52) != 1)
    {
      sub_1CEFE55D0(v15, v20, &unk_1EC4BE360, &qword_1CF9FE650);
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBF0, &qword_1CFA05330);
      v43 = *(v42 + 48);
      v56 = 0;
      v44 = *(v42 + 64);
      v45 = v50;
      sub_1CEFCCBDC(v20, v50, &unk_1EC4BE360, &qword_1CF9FE650);
      v46 = *(v41 + 56);
      v46(v45, 0, 1, v40);
      sub_1CEFE55D0(v20, v45 + v43, &unk_1EC4BE360, &qword_1CF9FE650);
      v46(v45 + v43, 0, 1, v40);
      *(v45 + v44) = 0;
      return (*(*(v42 - 8) + 56))(v45, 0, 1, v42);
    }

    sub_1CEFCCC44(v15, &qword_1EC4C1B40, &unk_1CF9FCB70);
    v9 = v49;
    a4 = v50;
    a1 = v48;
  }

  v22 = fpfs_current_or_default_log();
  v23 = v53;
  sub_1CF9E6128();
  v24 = a1;
  v25 = sub_1CF9E6108();
  v26 = sub_1CF9E72A8();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = v9;
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138543362;
    *(v28 + 4) = v24;
    *v29 = v24;
    v30 = v24;
    _os_log_impl(&dword_1CEFC7000, v25, v26, "did update alternate content failed to find item for: %{public}@", v28, 0xCu);
    sub_1CEFCCC44(v29, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v29, -1, -1);
    v31 = v28;
    v9 = v27;
    MEMORY[0x1D386CDC0](v31, -1, -1);
  }

  (*(v56 + 8))(v23, v9);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBF0, &qword_1CFA05330);
  return (*(*(v32 - 8) + 56))(a4, 1, 1, v32);
}

uint64_t sub_1CF8BE8C4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_1CEFD57E0(0, &qword_1EC4C4C10, 0x1E69674D0);
    v4 = sub_1CF9E6D48();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t FPDDomainFPFSBackend.getDiagnosticAttributes(forItems:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = v3;
  v8[4] = a2;
  v8[5] = a3;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1CF903264;
  *(v9 + 24) = v7;
  swift_retain_n();

  v10 = v3;

  sub_1CEFD4024("getDiagnosticAttributes(forItems:completionHandler:)", 52, 2, sub_1CF903280, v9, sub_1CF8F3748, v8);
}

void sub_1CF8BEA94(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v89 = a5;
  v88 = a4;
  v87 = a3;
  v95 = sub_1CF9E63A8();
  v94 = *(v95 - 8);
  v7 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v95);
  v92 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_1CF9E6448();
  v91 = *(v93 - 8);
  v9 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v93);
  v90 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CF9E5248();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v98 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_1CF9E5268();
  v14 = *(v97 - 8);
  v15 = *(v14 + 8);
  MEMORY[0x1EEE9AC00](v97);
  v96 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = a1;
  v105 = *(a1 + 16);
  v17 = swift_allocObject();
  v107 = v17;
  *(v17 + 16) = MEMORY[0x1E69E7CC0];
  v99 = (v17 + 16);
  v18 = dispatch_group_create();
  v19 = v18;
  if (a2 >> 62)
  {
    goto LABEL_24;
  }

  v20 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v18; v20; i = v19)
  {
    v21 = 0;
    v106 = (a2 & 0xC000000000000001);
    v102 = a2 & 0xFFFFFFFFFFFFFF8;
    v86 = (v14 + 8);
    v22 = &selRef_defaultNSDomainForDescriptor_;
    v23 = &selRef_defaultNSDomainForDescriptor_;
    v103 = v20;
    v104 = a2;
    while (1)
    {
      if (v106)
      {
        v35 = MEMORY[0x1D3869C30](v21, a2);
      }

      else
      {
        if (v21 >= *(v102 + 16))
        {
          goto LABEL_23;
        }

        v35 = *(a2 + 8 * v21 + 32);
      }

      v36 = v35;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      dispatch_group_enter(v19);
      v37 = [v36 v22[62]];
      v109 = (v21 + 1);
      if (v37)
      {
        v24 = v105;
        v25 = *(*(v105 + 32) + 16);
        type metadata accessor for VFSFileTree(0);
        v26 = swift_dynamicCastClassUnconditional();

        v27 = [v36 v22[62]];
        v28 = swift_allocObject();
        v28[2] = v36;
        v28[3] = v24;
        v28[4] = v19;
        v28[5] = v107;
        v29 = *(v26 + 216);
        v30 = swift_allocObject();
        *(v30 + 16) = v27;
        *(v30 + 24) = v26;
        *(v30 + 32) = 1;
        *(v30 + 40) = sub_1CF8FC1C0;
        *(v30 + 48) = v28;

        v31 = v36;
        v20 = v103;

        v32 = i;
        v19 = i;

        v33 = v29;
        v22 = &selRef_defaultNSDomainForDescriptor_;
        v34 = v33;

        sub_1CF01001C(0, "performWithDiskDiagnosticAttributes(for:isExternalQuery:block:)", 63, 2, sub_1CF6FC644, v30);

        a2 = v104;
        v14 = v109;
      }

      else
      {
        if ([v36 v23[210]])
        {
          v38 = v105;
          v39 = *(*(v105 + 32) + 16);
          type metadata accessor for VFSFileTree(0);
          v40 = swift_dynamicCastClassUnconditional();

          v41 = [v36 v23[210]];
          v42 = swift_allocObject();
          v42[2] = v36;
          v42[3] = v38;
          v42[4] = v19;
          v42[5] = v107;
          v43 = *(v40 + 216);
          v44 = swift_allocObject();
          *(v44 + 16) = v41;
          *(v44 + 24) = v40;
          *(v44 + 32) = 1;
          *(v44 + 40) = sub_1CF8FC234;
          *(v44 + 48) = v42;
          v45 = v36;
          v20 = v103;

          v46 = i;
          v19 = i;

          v47 = v43;
          v22 = &selRef_defaultNSDomainForDescriptor_;
          v48 = v47;

          sub_1CF01001C(0, "performWithDiskDiagnosticAttributes(by:isExternalQuery:block:)", 62, 2, sub_1CF8FC24C, v44);

          a2 = v104;
        }

        else
        {
          v49 = [v36 itemID];
          if (v49)
          {
            v50 = v49;
            v51 = [objc_allocWithZone(MEMORY[0x1E69674D0]) initWithItemID_];
            v101 = v51;
            v52 = swift_allocObject();
            v52[2] = v51;
            v52[3] = v19;
            v53 = v100;
            v52[4] = v107;
            v52[5] = v53;
            v54 = swift_allocObject();
            *(v54 + 16) = sub_1CF8FC250;
            *(v54 + 24) = v52;
            v55 = swift_allocObject();
            *(v55 + 16) = v105;
            *(v55 + 24) = v50;
            *(v55 + 32) = sub_1CF8FC250;
            *(v55 + 40) = v52;
            *(v55 + 48) = 1;
            v56 = swift_allocObject();
            *(v56 + 16) = sub_1CEFF9D98;
            *(v56 + 24) = v54;
            swift_retain_n();

            v57 = i;
            v19 = i;

            v101 = v101;

            v58 = v50;

            v20 = v103;
            sub_1CF7AAF88("performWithDBDiagnosticAttributes(for:isExternalQuery:block:)", 61, 2, 2, sub_1CF8FC294, v56, sub_1CF8FC268, v55);

            a2 = v104;

            v22 = &selRef_defaultNSDomainForDescriptor_;
          }

          else
          {
            sub_1CF9E5198();
            sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
            sub_1CEFCCCA4(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
            v60 = v96;
            v59 = v97;
            sub_1CF9E57D8();
            v61 = sub_1CF9E50D8();
            (*v86)(v60, v59);
            v62 = sub_1CF9E57E8();

            [v36 setError_];
            v63 = v19;
            v64 = objc_sync_enter(v63);
            if (v64)
            {
              MEMORY[0x1EEE9AC00](v64);
              *(&v86 - 2) = v63;
              fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v86 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
            }

            v65 = v99;
            swift_beginAccess();
            v66 = v36;
            MEMORY[0x1D3868FA0]();
            if (*((*v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v68 = *((*v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_1CF9E6D88();
            }

            sub_1CF9E6DE8();
            swift_endAccess();
            v67 = objc_sync_exit(v63);
            if (v67)
            {
              MEMORY[0x1EEE9AC00](v67);
              *(&v86 - 2) = v63;
              fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v86 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
            }

            dispatch_group_leave(v63);
          }
        }

        v14 = v109;
      }

      ++v21;
      v23 = &selRef_defaultNSDomainForDescriptor_;
      if (v14 == v20)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    v20 = sub_1CF9E7818();
  }

LABEL_25:
  v69 = *(v87 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue);
  v70 = swift_allocObject();
  v71 = v89;
  v70[2] = v88;
  v70[3] = v71;
  v70[4] = v107;

  v72 = fpfs_current_log();
  v109 = fpfs_adopt_log();
  v73 = swift_allocObject();
  aBlock = sub_1CF9E73C8();
  v112 = v74;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v75 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v75);

  sub_1CF9E6978();

  v76 = __fp_log_fork();

  *(v73 + 16) = v76;
  v77 = swift_allocObject();
  *(v77 + 16) = v72;
  *(v77 + 24) = v73;
  *(v77 + 32) = v69;
  *(v77 + 40) = "getDiagnosticAttributes(forItems:completionHandler:)";
  *(v77 + 48) = 52;
  *(v77 + 56) = 2;
  *(v77 + 64) = sub_1CF8FC1D8;
  *(v77 + 72) = v70;
  v115 = sub_1CF2B9F54;
  v116 = v77;
  aBlock = MEMORY[0x1E69E9820];
  v112 = 1107296256;
  v113 = sub_1CEFCA444;
  v114 = &block_descriptor_3066;
  v78 = _Block_copy(&aBlock);
  v106 = v72;

  v79 = v69;

  v80 = v90;
  sub_1CF9E63F8();
  v110 = MEMORY[0x1E69E7CC0];
  sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
  v81 = v92;
  v82 = v95;
  sub_1CF9E77B8();
  v83 = i;
  sub_1CF9E7308();
  _Block_release(v78);
  (*(v94 + 8))(v81, v82);
  (*(v91 + 8))(v80, v93);

  v84 = v109;
  v85 = fpfs_adopt_log();
}

uint64_t sub_1CF8BF7A4(int a1, char a2, id a3, uint64_t a4, void *a5, uint64_t a6)
{
  v11 = [a3 docID];
  v12 = [objc_allocWithZone(MEMORY[0x1E69674D0]) initWithDocID_];
  if (a2)
  {
    v13 = sub_1CF9E57E8();
    v14 = &selRef_setError_;
  }

  else
  {
    sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
    v13 = sub_1CF9E6618();
    v14 = &selRef_setDiagnosticAttributes_;
  }

  [v12 *v14];

  v15 = [a3 docID];
  v16 = swift_allocObject();
  v16[2] = v12;
  v16[3] = a5;
  v16[4] = a6;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1CF8FC35C;
  *(v17 + 24) = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  *(v18 + 24) = a4;
  *(v18 + 32) = sub_1CF8FC35C;
  *(v18 + 40) = v16;
  *(v18 + 48) = 1;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1CEFF9D98;
  *(v19 + 24) = v17;
  swift_retain_n();
  v20 = v12;
  v21 = a5;

  sub_1CF7AAF88("performWithDBDiagnosticAttributes(for:isExternalQuery:block:)", 61, 2, 2, sub_1CF9034C8, v19, sub_1CF8FC36C, v18);
}

void sub_1CF8BF9FC(void *a1, char a2, id a3, NSObject *a4, uint64_t a5)
{
  v10 = [a3 diagnosticAttributes];
  if (v10)
  {
    v11 = v10;
    sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
    v12 = sub_1CF9E6638();
  }

  else
  {
    v12 = sub_1CF4E30B4(MEMORY[0x1E69E7CC0]);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F50, &unk_1CFA18140);
  if ((a2 & 1) == 0)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = v12;
    sub_1CF6F9A38(a1, sub_1CF6F37BC, 0, isUniquelyReferenced_nonNull_native, &v31);
    sub_1CF481340(a1, 0);
    goto LABEL_9;
  }

  v31 = a1;
  v13 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
  if (swift_dynamicCast())
  {
    v14 = *MEMORY[0x1E6966E88];
    v15 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v17 = v16;
    v18 = [v30 domain];
    if (v18)
    {
      v19 = v18;
      v20 = swift_isUniquelyReferenced_nonNull_native();
      sub_1CF1D1950(v19, v15, v17, v20);

      v21 = *MEMORY[0x1E6966E78];
      v22 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v24 = v23;
      v25 = [v30 code];
      v26 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      v27 = swift_isUniquelyReferenced_nonNull_native();
      sub_1CF1D1950(v26, v22, v24, v27);

LABEL_9:
      sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
      v29 = sub_1CF9E6618();
      [a3 setDiagnosticAttributes_];

      sub_1CF518C48(a4, (a5 + 16), a3);

      dispatch_group_leave(a4);
      return;
    }

    __break(1u);
  }

  sub_1CF9E8038();
  __break(1u);
}

uint64_t sub_1CF8BFD0C(int a1, char a2, id a3, uint64_t a4, void *a5, uint64_t a6)
{
  v11 = [a3 fileID];
  v12 = [objc_allocWithZone(MEMORY[0x1E69674D0]) initWithFileID_];
  if (a2)
  {
    v13 = sub_1CF9E57E8();
    v14 = &selRef_setError_;
  }

  else
  {
    sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
    v13 = sub_1CF9E6618();
    v14 = &selRef_setDiagnosticAttributes_;
  }

  [v12 *v14];

  v15 = [a3 fileID];
  v16 = swift_allocObject();
  v16[2] = v12;
  v16[3] = a5;
  v16[4] = a6;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1CF8FC2AC;
  *(v17 + 24) = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  *(v18 + 24) = sub_1CF8FC2AC;
  *(v18 + 32) = v16;
  *(v18 + 40) = v15;
  *(v18 + 48) = 1;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1CEFF9D98;
  *(v19 + 24) = v17;
  swift_retain_n();
  v20 = v12;
  v21 = a5;

  sub_1CF7AAF88("performWithDBDiagnosticAttributes(for:isExternalQuery:block:)", 61, 2, 2, sub_1CF9034C8, v19, sub_1CF8FC2BC, v18);
}

void sub_1CF8BFF60(void *a1, char a2, id a3, NSObject *a4, uint64_t a5)
{
  v10 = [a3 diagnosticAttributes];
  if (v10)
  {
    v11 = v10;
    sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
    v12 = sub_1CF9E6638();
  }

  else
  {
    v12 = sub_1CF4E30B4(MEMORY[0x1E69E7CC0]);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F50, &unk_1CFA18140);
  if ((a2 & 1) == 0)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = v12;
    sub_1CF8F58BC(a1, sub_1CF6F37BC, 0, isUniquelyReferenced_nonNull_native, &v31);
    sub_1CF481340(a1, 0);
    goto LABEL_9;
  }

  v31 = a1;
  v13 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
  if (swift_dynamicCast())
  {
    v14 = *MEMORY[0x1E6966E88];
    v15 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v17 = v16;
    v18 = [v30 domain];
    if (v18)
    {
      v19 = v18;
      v20 = swift_isUniquelyReferenced_nonNull_native();
      sub_1CF1D1950(v19, v15, v17, v20);

      v21 = *MEMORY[0x1E6966E78];
      v22 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v24 = v23;
      v25 = [v30 code];
      v26 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      v27 = swift_isUniquelyReferenced_nonNull_native();
      sub_1CF1D1950(v26, v22, v24, v27);

LABEL_9:
      sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
      v29 = sub_1CF9E6618();
      [a3 setDiagnosticAttributes_];

      sub_1CF518C48(a4, (a5 + 16), a3);

      dispatch_group_leave(a4);
      return;
    }

    __break(1u);
  }

  sub_1CF9E8038();
  __break(1u);
}

void sub_1CF8C0270(uint64_t a1, char a2, void *a3, NSObject *a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v10 = sub_1CF9E57E8();
    v11 = &selRef_setError_;
  }

  else
  {
    sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
    v10 = sub_1CF9E6618();
    v11 = &selRef_setDiagnosticAttributes_;
  }

  [a3 *v11];

  v12 = [a3 diagnosticAttributes];
  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = v12;
  sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
  v14 = sub_1CF9E6638();

  v15 = *MEMORY[0x1E6967018];
  v16 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  if (!*(v14 + 16))
  {

    goto LABEL_12;
  }

  v18 = sub_1CEFE4328(v16, v17);
  v20 = v19;

  if ((v20 & 1) == 0)
  {
LABEL_12:

    goto LABEL_13;
  }

  v21 = *(*(v14 + 56) + 8 * v18);

  objc_opt_self();
  v22 = swift_dynamicCastObjCClass();
  if (v22)
  {
    v23 = [v22 unsignedLongLongValue];
    v24 = *(*(*(a6 + 16) + 32) + 16);
    type metadata accessor for VFSFileTree(0);
    v25 = swift_dynamicCastClassUnconditional();
    v26 = swift_allocObject();
    v26[2] = a3;
    v26[3] = a4;
    v26[4] = a5;
    v27 = *(v25 + 216);
    v28 = swift_allocObject();
    *(v28 + 16) = v23;
    *(v28 + 24) = v25;
    *(v28 + 32) = 1;
    *(v28 + 40) = sub_1CF8FC29C;
    *(v28 + 48) = v26;
    swift_retain_n();
    v29 = a3;
    v30 = a4;

    v31 = v27;

    sub_1CF01001C(0, "performWithDiskDiagnosticAttributes(by:isExternalQuery:block:)", 62, 2, sub_1CF902D9C, v28);

    return;
  }

LABEL_13:
  sub_1CF518C48(a4, (a5 + 16), a3);

  dispatch_group_leave(a4);
}

void sub_1CF8C058C(void *a1, char a2, id a3, NSObject *a4, uint64_t a5)
{
  v10 = [a3 diagnosticAttributes];
  if (v10)
  {
    v11 = v10;
    sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
    v12 = sub_1CF9E6638();

    if (a2)
    {
LABEL_3:
      v13 = sub_1CF9E57E8();
      [a3 setError_];

      goto LABEL_6;
    }
  }

  else
  {
    v12 = sub_1CF4E30B4(MEMORY[0x1E69E7CC0]);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = v12;
  sub_1CF8F58BC(a1, sub_1CF6F37BC, 0, isUniquelyReferenced_nonNull_native, &v16);
  sub_1CF481340(a1, 0);
LABEL_6:
  sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
  v15 = sub_1CF9E6618();
  [a3 setDiagnosticAttributes_];

  sub_1CF518C48(a4, (a5 + 16), a3);

  dispatch_group_leave(a4);
}

uint64_t sub_1CF8C074C(void (*a1)(uint64_t, void), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 16);

  a1(v6, 0);
}

void sub_1CF8C0960(void *a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t *a5)
{
  v7 = a1;
  if (a1)
  {
    sub_1CEFD57E0(0, a4, a5);
    v7 = sub_1CF9E6D28();
  }

  if (a2)
  {
    v8 = sub_1CF9E57E8();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  (*(a3 + 16))(a3, v7);
}

uint64_t FPDDomainFPFSBackend.pauseSyncForItem(at:bundleID:behavior:request:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v39 = a7;
  v38 = a6;
  v43 = a4;
  v44 = a5;
  v41 = a2;
  v42 = a3;
  v8 = sub_1CF9E5A58();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v34 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20F0, &unk_1CFA0F4A0);
  v12 = swift_allocBox();
  v36 = v12;
  v37 = a1;
  v14 = v13;
  v15 = *(v11 + 48);
  v16 = *(v11 + 64);
  v17 = *(v9 + 16);
  v17(v13, a1, v8);
  v18 = v44;
  *(v14 + v15) = v43;
  *(v14 + v16) = v18;
  v35 = v12 | 0x9000000000000004;
  v19 = v34;
  v17(v34, a1, v8);
  v20 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v21 = (v10 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 23) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  v25 = v39;
  *(v24 + 2) = v38;
  *(v24 + 3) = v25;
  v26 = v40;
  *(v24 + 4) = v40;
  (*(v9 + 32))(&v24[v20], v19, v8);
  v27 = v42;
  *&v24[v21] = v43;
  v28 = &v24[v22];
  *v28 = v41;
  *(v28 + 1) = v27;
  v29 = v35;
  *&v24[v23] = v35;
  v30 = v44;

  v31 = v26;

  sub_1CF84D640(v37, 1, v29, sub_1CF8F3754, v24);
}

uint64_t sub_1CF8C0C4C(void *a1, uint64_t a2, uint64_t (*a3)(void, uint64_t, __n128), uint64_t a4, _BYTE *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  v40 = a8;
  v41 = a7;
  v16 = sub_1CF9E5A58();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return a3(0, a2, v19);
  }

  v38 = a10;
  v36 = a9;
  v21 = swift_allocObject();
  v37 = v21;
  *(v21 + 16) = a3;
  *(v21 + 24) = a4;
  (*(v17 + 16))(&v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a6, v16);
  v22 = (*(v17 + 80) + 40) & ~*(v17 + 80);
  v23 = (v18 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = v16;
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v39 = a5;
  v25 = swift_allocObject();
  *(v25 + 2) = a3;
  *(v25 + 3) = a4;
  *(v25 + 4) = a1;
  (*(v17 + 32))(&v25[v22], v20, v35);
  v26 = v40;
  *&v25[v23] = v41;
  v27 = &v25[v24];
  v28 = v36;
  *v27 = v26;
  *(v27 + 1) = v28;
  v29 = v38;
  *&v25[(v24 + 23) & 0xFFFFFFFFFFFFFFF8] = v38;
  v30 = a1;
  swift_retain_n();
  v31 = v30;
  v32 = v37;

  sub_1CEFD09A0(v29);
  sub_1CF8EDD24("pauseSyncForItem(at:bundleID:behavior:request:completionHandler:)", 65, 2, sub_1CF8FB9F0, v25, v39, sub_1CF90325C, v32);
}

uint64_t sub_1CF8C0EA8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  v47 = a7;
  v48 = a8;
  v49 = a4;
  v42 = a3;
  v43 = a2;
  v45 = a6;
  v46 = a9;
  v13 = sub_1CF9E5A58();
  v39 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v40 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  v17 = swift_allocObject();
  v18 = a1;
  swift_weakInit();
  v19 = swift_allocObject();
  v19[2] = sub_1CF90325C;
  v19[3] = v16;
  v19[4] = v17;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1CF902E4C;
  *(v20 + 24) = v19;
  v21 = v18;
  v44 = *(v18 + 16);
  v22 = swift_allocObject();
  v41 = v22;
  *(v22 + 16) = sub_1CF903440;
  *(v22 + 24) = v20;
  (*(v14 + 16))(&v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v13);
  v23 = (*(v14 + 80) + 48) & ~*(v14 + 80);
  v24 = (v15 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 23) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  v28 = v49;
  *(v27 + 2) = v21;
  *(v27 + 3) = v28;
  *(v27 + 4) = sub_1CF903440;
  *(v27 + 5) = v20;
  (*(v14 + 32))(&v27[v23], v40, v39);
  v29 = v46;
  *&v27[v24] = v45;
  v30 = &v27[v25];
  v31 = v42;
  *v30 = v43;
  *(v30 + 1) = v31;
  v32 = &v27[v26];
  v33 = v48;
  *v32 = v47;
  *(v32 + 1) = v33;
  *&v27[(v26 + 23) & 0xFFFFFFFFFFFFFFF8] = v29;
  v34 = swift_allocObject();
  v35 = v41;
  *(v34 + 16) = sub_1CF90325C;
  *(v34 + 24) = v35;
  swift_retain_n();
  swift_retain_n();

  v36 = v49;

  sub_1CEFD09A0(v29);

  sub_1CF7AAF88("pauseSyncForItem(at:bundleID:behavior:request:completionHandler:)", 65, 2, 2, sub_1CF9034C4, v34, sub_1CF8FBAB0, v27);
}

void sub_1CF8C11F8(void *a1, unint64_t a2, void *a3, void (*a4)(void, void *), void *a5, void (*a6)(uint64_t a1), uint64_t a7, void (*a8)(void, void *), uint64_t a9, char *a10, void (*a11)(uint64_t a1), unint64_t a12)
{
  v326 = a5;
  v321 = a8;
  v322 = a6;
  v323 = a4;
  v324 = a7;
  v15 = sub_1CF9E63D8();
  v292 = *(v15 - 8);
  v293 = v15;
  v16 = *(v292 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v291 = &v279 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v298 = &v279 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v308 = &v279 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFB10, &unk_1CFA12AD0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v300 = &v279 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4C1588, &unk_1CFA0A260);
  v295 = *(v26 - 8);
  v27 = *(v295 + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v302 = &v279 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v296 = &v279 - v30;
  v301 = v31;
  MEMORY[0x1EEE9AC00](v32);
  v307 = &v279 - v33;
  v294 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F40, qword_1CFA0F4C0);
  v34 = *(*(v294 - 8) + 64);
  MEMORY[0x1EEE9AC00](v294);
  v299 = &v279 - v35;
  v36 = sub_1CF9E6118();
  v305 = *(v36 - 8);
  v306 = v36;
  v37 = *(v305 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v304 = &v279 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v303 = &v279 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v315 = (&v279 - v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v313 = *(v44 - 8);
  v314 = v44;
  v45 = *(v313 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v309 = &v279 - v46;
  v319 = sub_1CF9E5A58();
  v317 = *(v319 - 8);
  v47 = *(v317 + 64);
  MEMORY[0x1EEE9AC00](v319);
  v297 = &v279 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v318 = &v279 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v312 = &v279 - v51;
  v52 = sub_1CF9E53C8();
  v310 = *(v52 - 8);
  v311 = v52;
  v53 = *(v310 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v55 = &v279 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = a1[3];
  v56 = a1[4];
  v316 = a1;
  v58 = __swift_project_boxed_opaque_existential_1(a1, v57);
  v320 = a2;
  v59 = *(a2 + 16);
  v60 = *(v59 + 16);

  v325 = a3;
  v61 = [a3 identifier];
  v338 = v61;
  v62 = v327;
  sub_1CF68E230(&v338, v58, v57, v56, v339);
  if (v62)
  {

    return;
  }

  v63 = v324;
  v327 = v47;
  v289 = v55;
  v290 = v59;

  memcpy(v336, v339, sizeof(v336));
  memcpy(v337, v339, sizeof(v337));
  v64 = sub_1CF08B99C(v337);
  v65 = v325;
  if (v64 == 1)
  {
    goto LABEL_11;
  }

  memcpy(v340, v337, sizeof(v340));
  if (LOBYTE(v337[27]) == 255)
  {
    sub_1CEFCCC44(v336, &unk_1EC4BFD80, &unk_1CFA0A2A0);
LABEL_11:
    v69 = [v65 identifier];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
    sub_1CEFCCCEC(&qword_1EDEAB020, &qword_1EC4BF270, &qword_1CFA01B70);
    v70 = swift_allocError();
    *v71 = v69;
    *(v71 + 8) = 0;
    *(v71 + 16) = 0;
    *(v71 + 24) = 1;
    *(v71 + 32) = 0u;
    *(v71 + 48) = 0u;
    *(v71 + 64) = 0u;
    *(v71 + 73) = 0u;
    v323(0, v70);

    return;
  }

  if ((v337[56] & 4) != 0)
  {
    v72 = sub_1CF9E5928();
    v73 = FPFileIsAlreadyPausedError();

    v323(0, v73);
    v74 = &unk_1EC4BFD80;
    v75 = &unk_1CFA0A2A0;
    v76 = v336;
LABEL_13:
    sub_1CEFCCC44(v76, v74, v75);
    return;
  }

  v288 = LOBYTE(v337[27]);
  v66 = v337[26];
  sub_1CF7F6024(v334);
  memcpy(v335, v334, sizeof(v335));
  v287 = v66;
  if (LOBYTE(v335[1]) == 255 || !v335[31])
  {
    sub_1CEFCCC44(v335, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    v68 = 0;
  }

  else
  {
    v67 = v335[24];
    sub_1CEFCCC44(v335, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    v68 = v67 >> 60 != 11 && LOBYTE(v335[43]) == 0;
  }

  v324 = a9;
  if (v63 == 1)
  {
    v286 = 0;
    goto LABEL_18;
  }

  if (LOBYTE(v337[46]) == 2 || LOBYTE(v337[15]) == 2)
  {
    *v334 = 16;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CEFCCCA4(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
    v105 = v289;
    v106 = v311;
    sub_1CF9E57D8();
    v107 = sub_1CF9E53A8();
    (*(v310 + 8))(v105, v106);
    v108 = v107;
LABEL_30:
    v321(0, v108);
    sub_1CEFCCC44(v336, &unk_1EC4BFD80, &unk_1CFA0A2A0);

    return;
  }

  sub_1CEFCCBDC(&v337[26], v334, &unk_1EC4BFE00, &unk_1CF9FEF00);
  if (qword_1EDEABDE0 != -1)
  {
    swift_once();
  }

  v113 = qword_1EDEABDE8;
  sub_1CEFCCC44(&v337[26], &unk_1EC4BFE00, &unk_1CF9FEF00);
  v114 = (v337[29] & (v113 | 0x10)) == 0;
  v116 = v310;
  v115 = v311;
  if (!v114 || (v337[28] & 0x51) != 0 || LOBYTE(v337[43]) == 1)
  {
LABEL_29:
    *v334 = 16;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CEFCCCA4(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
    v117 = v289;
    sub_1CF9E57D8();
    v107 = sub_1CF9E53A8();
    (*(v116 + 8))(v117, v115);
    v108 = v107;
    goto LABEL_30;
  }

  v168 = qword_1EDEABDE8;
  if (!qword_1EDEABDE8)
  {
    if (!v68)
    {
      v168 = 16;
      goto LABEL_82;
    }

    v269 = 0;
    goto LABEL_79;
  }

  if ((qword_1EDEABDE8 & 0x10) != 0)
  {
    if (!v68)
    {
      goto LABEL_82;
    }

LABEL_78:
    v269 = qword_1EDEABDE8 & 0xFFFFDFFFFFFEF6E7;
    if ((qword_1EDEABDE8 & 0x4000) != 0)
    {
LABEL_80:
      v168 = (v168 | 0x64090000008000) & v269;
      goto LABEL_82;
    }

LABEL_79:
    v168 = qword_1EDEABDE8 | 0x4000;
    goto LABEL_80;
  }

  if (v68)
  {
    goto LABEL_78;
  }

  v168 = qword_1EDEABDE8 | 0x10;
LABEL_82:
  if ((v337[2] & v168) != 0 || (v337[1] & 0x51) != 0 || LOBYTE(v337[12]) == 1)
  {
    goto LABEL_29;
  }

  v286 = 0;
  v270 = v337[0];
  if (v337[0])
  {
    v271 = v316[3];
    v285 = v316[4];
    v284 = __swift_project_boxed_opaque_existential_1(v316, v271);
    v272 = *(v290 + 40);
    v333 = v270;
    v273 = *(*v272 + 264);
    v274 = v270;

    v275 = v286;
    v273(v334, &v333, v284, v271, v285);
    if (v275)
    {

      v286 = 0;
    }

    else
    {
      v286 = 0;

      v329[12] = *&v334[192];
      v329[13] = *&v334[208];
      v329[14] = *&v334[224];
      v329[8] = *&v334[128];
      v329[9] = *&v334[144];
      v329[10] = *&v334[160];
      v329[11] = *&v334[176];
      v329[4] = *&v334[64];
      v329[5] = *&v334[80];
      v329[6] = *&v334[96];
      v329[7] = *&v334[112];
      v329[0] = *v334;
      v329[1] = *&v334[16];
      v329[2] = *&v334[32];
      v329[3] = *&v334[48];
      v331[12] = *&v334[192];
      v331[13] = *&v334[208];
      v331[14] = *&v334[224];
      v331[8] = *&v334[128];
      v331[9] = *&v334[144];
      v331[10] = *&v334[160];
      v331[11] = *&v334[176];
      v331[4] = *&v334[64];
      v331[5] = *&v334[80];
      v331[6] = *&v334[96];
      v331[7] = *&v334[112];
      v331[0] = *v334;
      v331[1] = *&v334[16];
      v330 = *&v334[240];
      v332 = *&v334[240];
      v331[2] = *&v334[32];
      v331[3] = *&v334[48];
      if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v331) != 1)
      {
        if ((BYTE8(v331[0]) & 1) != 0 || (BYTE9(v331[0]) & 1) == 0)
        {
          v328 = 16;
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CEFCCCA4(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
          v276 = v289;
          v277 = v311;
          sub_1CF9E57D8();
          v278 = sub_1CF9E53A8();
          (*(v310 + 8))(v276, v277);
          v321(0, v278);

          sub_1CEFCCC44(v329, &qword_1EC4BECF0, &unk_1CF9FEEB0);
          sub_1CEFCCC44(v336, &unk_1EC4BFD80, &unk_1CFA0A2A0);

          return;
        }

        sub_1CEFCCC44(v329, &qword_1EC4BECF0, &unk_1CF9FEEB0);
      }
    }
  }

LABEL_18:
  v78 = v317;
  v77 = v318;
  v79 = v322;
  v80 = v312;
  v81 = v327;
  v327 = a12;
  v322 = a11;
  v312 = a10;
  v82 = *(v317 + 16);
  v83 = v319;
  v82(v80, v79, v319);
  v283 = v82;
  v284 = (v78 + 16);
  v82(v77, v80, v83);
  v84 = *(v78 + 80);
  v85 = (v84 + 33) & ~v84;
  v282 = v81 + 7;
  v86 = v80;
  v87 = (v81 + 7 + v85) & 0xFFFFFFFFFFFFFFF8;
  v310 = (v87 + 23) & 0xFFFFFFFFFFFFFFF8;
  v311 = (v310 + 23) & 0xFFFFFFFFFFFFFFF8;
  v88 = (v311 + 15) & 0xFFFFFFFFFFFFFFF8;
  v289 = ((v88 + 23) & 0xFFFFFFFFFFFFFFF8);
  v285 = v84;
  v89 = swift_allocObject();
  v90 = v287;
  *(v89 + 16) = v320;
  *(v89 + 24) = v90;
  *(v89 + 32) = v288;
  v280 = *(v78 + 32);
  v281 = v78 + 32;
  v280(v89 + v85, v86, v83);
  v91 = (v89 + v87);
  v92 = v322;
  *v91 = v312;
  v91[1] = v92;
  v93 = (v89 + v310);
  v94 = v324;
  v95 = v326;
  v96 = v327;
  *v93 = v323;
  v93[1] = v95;
  *(v89 + v311) = v96;
  v97 = (v89 + v88);
  *v97 = v321;
  v97[1] = v94;
  v311 = v89;
  v98 = v325;
  *&v289[v89] = v325;
  v99 = v316[3];
  v310 = v316[4];
  v316 = __swift_project_boxed_opaque_existential_1(v316, v99);
  v100 = *(v290 + 32);
  *v334 = v90;
  v334[8] = v288;
  v289 = *(*v100 + 240);
  v325 = v98;
  sub_1CEFD09A0(v96);

  v101 = v315;
  v102 = v286;
  (v289)(v334, 1, v316, v99, v310);
  if (v102)
  {

    (*(v317 + 8))(v318, v319);
    (*(v313 + 56))(v101, 1, 1, v314);
    v103 = v321;
    v104 = &selRef_defaultNSDomainForDescriptor_;
LABEL_25:
    sub_1CEFCCC44(v101, &qword_1EC4C1B40, &unk_1CF9FCB70);
    v111 = [v325 v104[401]];
    v112 = FPItemNotFoundError();

    v103(0, v112);
    sub_1CEFCCC44(v336, &unk_1EC4BFD80, &unk_1CFA0A2A0);

    return;
  }

  v109 = v285;

  v110 = v314;
  v104 = &selRef_defaultNSDomainForDescriptor_;
  if ((*(v313 + 48))(v101, 1, v314) == 1)
  {
    (*(v317 + 8))(v318, v319);
    v103 = v321;
    goto LABEL_25;
  }

  v118 = v309;
  sub_1CEFE55D0(v101, v309, &unk_1EC4BE360, &qword_1CF9FE650);
  v119 = v118 + *(v110 + 48);
  v120 = *(v119 + *(type metadata accessor for ItemMetadata() + 80));
  v121 = v321;
  v286 = 0;
  if (v120 == 1)
  {
    v122 = v317 + 8;
    v123 = v319;
    v322 = *(v317 + 8);
    (v322)(v318, v319);
    v124 = sub_1CEFD4E9C([v325 &selRef_fileDescriptor]);
    v323 = [objc_allocWithZone(MEMORY[0x1E696AE38]) init];
    v125 = swift_allocObject();
    v126 = v324;
    v125[2] = v121;
    v125[3] = v126;
    v127 = v311;
    v326 = v125;
    v125[4] = sub_1CF8FBB8C;
    v125[5] = v127;

    v128 = fpfs_current_or_default_log();
    v129 = v303;
    sub_1CF9E6128();
    v130 = v327;
    sub_1CEFD09A0(v327);
    sub_1CEFD09A0(v130);

    v131 = sub_1CF9E6108();
    v132 = sub_1CF9E7298();
    v133 = os_log_type_enabled(v131, v132);
    v325 = v124;
    if (v133)
    {
      v317 = v122;
      v134 = swift_slowAlloc();
      v324 = swift_slowAlloc();
      *&v331[0] = v324;
      *v134 = 136315394;
      v135 = swift_beginAccess();
      v137 = *(v124 + 32);
      v138 = v124;
      v139 = *(v124 + 40);
      if (*(v138 + 41))
      {
        v140 = v137;
        v141 = NSFileProviderItemIdentifier.description.getter();
        v143 = v142;
        sub_1CEFD0994(v137, v139, 1);
      }

      else
      {
        *v334 = v137;
        v334[8] = v139;
        v141 = VFSItemID.description.getter(v135, v136);
        v143 = v176;
      }

      v177 = v306;
      v178 = sub_1CEFD0DF0(v141, v143, v331);

      *(v134 + 4) = v178;
      *(v134 + 12) = 2080;
      v179 = v327;
      v180 = sub_1CEFD11AC(v327);
      v182 = v181;
      sub_1CEFD0A98(v179);
      sub_1CEFD0A98(v179);
      v183 = sub_1CEFD0DF0(v180, v182, v331);
      v130 = v179;

      *(v134 + 14) = v183;
      _os_log_impl(&dword_1CEFC7000, v131, v132, "Request to materialize content of itemID %s reason %s", v134, 0x16u);
      v184 = v324;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v184, -1, -1);
      MEMORY[0x1D386CDC0](v134, -1, -1);

      v321 = *(v305 + 8);
      v321(v303, v177);
      v123 = v319;
    }

    else
    {
      sub_1CEFD0A98(v130);
      sub_1CEFD0A98(v130);

      v321 = *(v305 + 8);
      v321(v129, v306);
    }

    v185 = v294;
    v186 = v299;
    LODWORD(v318) = (v130 >> 58) & 0x3C | (v130 >> 1) & 3;
    if (v318 == 2)
    {
      v187 = swift_projectBox();
      sub_1CEFCCBDC(v187, v186, &unk_1EC4C4F40, qword_1CFA0F4C0);
      v188 = *(v186 + 8);

      v189 = v185[12];

      v190 = *(v186 + v185[20]);
      (v322)(v186 + v189, v123);
    }

    else
    {
      v190 = 0;
    }

    v192 = v295;
    v191 = v296;
    v193 = v300;
    sub_1CEFCCBDC(v290 + qword_1EDEBBC18, v300, &qword_1EC4BFB10, &unk_1CFA12AD0);
    v194 = type metadata accessor for TelemetrySignposter(0);
    if ((*(*(v194 - 8) + 48))(v193, 1, v194) == 1)
    {
      sub_1CEFCCC44(v193, &qword_1EC4BFB10, &unk_1CFA12AD0);
      v195 = 1;
      v196 = v307;
    }

    else
    {
      v196 = v307;
      sub_1CF519DE8(v190, v307);
      sub_1CEFD5338(v193, type metadata accessor for TelemetrySignposter);
      v195 = 0;
    }

    v197 = type metadata accessor for TelemetrySignpost(0);
    (*(*(v197 - 8) + 56))(v196, v195, 1, v197);
    sub_1CEFCCBDC(v196, v191, qword_1EC4C1588, &unk_1CFA0A260);
    v198 = *(v192 + 80);
    v199 = v191;
    v200 = (v198 + 16) & ~v198;
    v201 = v301;
    v202 = (v301 + v200 + 7) & 0xFFFFFFFFFFFFFFF8;
    v203 = swift_allocObject();
    v324 = v203;
    sub_1CEFE55D0(v199, v203 + v200, qword_1EC4C1588, &unk_1CFA0A260);
    v204 = (v203 + v202);
    v322 = sub_1CF8FBC68;
    v205 = v326;
    *v204 = sub_1CF8FBC68;
    v204[1] = v205;
    v206 = v302;
    sub_1CEFCCBDC(v196, v302, qword_1EC4C1588, &unk_1CFA0A260);
    v207 = (v198 + 24) & ~v198;
    v208 = (v207 + v201 + 31) & 0xFFFFFFFFFFFFFFF8;
    v319 = (v207 + v201 + 7) & 0xFFFFFFFFFFFFFFF8;
    v320 = (v208 + 15) & 0xFFFFFFFFFFFFFFF8;
    v209 = (v208 + 31) & 0xFFFFFFFFFFFFFFF8;
    v210 = (v209 + 15) & 0xFFFFFFFFFFFFFFF8;
    v211 = swift_allocObject();
    v212 = v327;
    *(v211 + 16) = v327;
    sub_1CEFE55D0(v206, v211 + v207, qword_1EC4C1588, &unk_1CFA0A260);
    v213 = v211 + v319;
    v214 = v323;
    v215 = v326;
    *v213 = v322;
    *(v213 + 8) = v215;
    *(v213 + 16) = 1;
    *(v211 + v208) = v290;
    v216 = v211 + v320;
    v217 = v325;
    *v216 = v325;
    *(v216 + 8) = 0;
    *(v211 + v209) = 1;
    *(v211 + v210) = v214;
    v218 = v211 + ((v210 + 15) & 0xFFFFFFFFFFFFFFF8);
    v219 = v324;
    *v218 = sub_1CF8FBC74;
    *(v218 + 8) = v219;
    *(v218 + 16) = 1;
    v220 = objc_allocWithZone(MEMORY[0x1E696AE38]);

    sub_1CEFD09A0(v212);

    v221 = v214;

    v323 = [v220 init];
    v222 = swift_allocObject();
    v222[2] = sub_1CF8FBC78;
    v222[3] = v211;
    v222[4] = v212;
    sub_1CEFD09A0(v212);

    sub_1CEFD09A0(v212);
    v320 = v211;

    v223 = fpfs_current_or_default_log();
    v224 = v304;
    sub_1CF9E6128();
    sub_1CEFD09A0(v212);
    sub_1CEFD09A0(v212);

    v225 = sub_1CF9E6108();
    v226 = sub_1CF9E7298();
    v227 = os_log_type_enabled(v225, v226);
    v322 = v221;
    if (v227)
    {
      LODWORD(v317) = v226;
      v319 = v222;
      v228 = swift_slowAlloc();
      v316 = swift_slowAlloc();
      v333 = v316;
      *v228 = 136315906;
      v229 = swift_beginAccess();
      v231 = v217[4];
      v232 = *(v217 + 40);
      if (*(v217 + 41))
      {
        v233 = v231;
        v234 = NSFileProviderItemIdentifier.description.getter();
        v236 = v235;
        sub_1CEFD0994(v231, v232, 1);
      }

      else
      {
        *v334 = v217[4];
        v334[8] = v232;
        v234 = VFSItemID.description.getter(v229, v230);
        v236 = v237;
      }

      v238 = sub_1CEFD0DF0(v234, v236, &v333);

      *(v228 + 4) = v238;
      *(v228 + 12) = 2080;
      *(v228 + 14) = sub_1CEFD0DF0(0xD000000000000010, 0x80000001CFA2C3C0, &v333);
      *(v228 + 22) = 2080;
      v239 = v327;
      v240 = sub_1CEFD11AC(v327);
      v242 = v241;
      sub_1CEFD0A98(v239);
      sub_1CEFD0A98(v239);
      v243 = sub_1CEFD0DF0(v240, v242, &v333);

      *(v228 + 24) = v243;
      *(v228 + 32) = 2048;
      *(v228 + 34) = 0;
      _os_log_impl(&dword_1CEFC7000, v225, v317, "Lookup itemID %s with behavior %s request %s iteration %ld", v228, 0x2Au);
      v244 = v316;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v244, -1, -1);
      MEMORY[0x1D386CDC0](v228, -1, -1);

      v321(v304, v306);
      v217 = v325;
      v222 = v319;
    }

    else
    {
      sub_1CEFD0A98(v212);
      sub_1CEFD0A98(v212);

      v321(v224, v306);
    }

    swift_beginAccess();
    v245 = v217[4];
    v246 = *(v217 + 40);
    v247 = v309;
    if (*(v217 + 41))
    {
      v248 = v222;
      v249 = qword_1EDEA34B0;
      v250 = v245;
      if (v249 != -1)
      {
        swift_once();
      }

      v251 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v253 = v252;
      if (v251 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v253 == v254)
      {

        sub_1CEFD0994(v245, v246, 1);
        v222 = v248;
        v247 = v309;
LABEL_68:
        v255 = v327;
        sub_1CF90CAC8(v327, sub_1CF796A0C, v222);
        v256 = v323;
LABEL_74:

        sub_1CEFD0A98(v255);

        sub_1CEFCCC44(v336, &unk_1EC4BFD80, &unk_1CFA0A2A0);

        sub_1CEFCCC44(v307, qword_1EC4C1588, &unk_1CFA0A260);
        v74 = &unk_1EC4BE360;
        v75 = &qword_1CF9FE650;
        v76 = v247;
        goto LABEL_13;
      }

      v257 = sub_1CF9E8048();

      sub_1CEFD0994(v245, v246, 1);
      v222 = v248;
      v247 = v309;
      if (v257)
      {
        goto LABEL_68;
      }
    }

    else if (!v245 && v246 == 2)
    {
      goto LABEL_68;
    }

    v258 = v222;
    if (v318 == 30)
    {
      v259 = v327;
      v260 = *((v327 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v321 = v260;
    }

    else
    {
      v261 = swift_allocObject();
      v259 = v327;
      *(v261 + 16) = v327;
      v321 = (v261 | 0x7000000000000004);
      v260 = v259;
    }

    v256 = v323;
    sub_1CEFD09A0(v260);
    v262 = swift_allocObject();
    *(v262 + 16) = sub_1CF796A0C;
    *(v262 + 24) = v258;
    v319 = v258;
    v263 = v290;
    *(v262 + 32) = v290;
    v264 = v263;
    *(v262 + 40) = 2;
    v265 = v325;
    *(v262 + 48) = v259;
    *(v262 + 56) = v265;
    *(v262 + 64) = 0;
    *(v262 + 72) = v256;
    *(v262 + 80) = 0;
    v266 = swift_allocObject();
    *(v266 + 16) = v265;
    *(v266 + 24) = v264;
    *(v266 + 32) = 0;
    *(v266 + 40) = sub_1CF796A90;
    *(v266 + 48) = v262;
    *(v266 + 56) = v321;
    v267 = swift_allocObject();
    *(v267 + 16) = sub_1CF796A90;
    *(v267 + 24) = v262;

    sub_1CEFD09A0(v327);

    v268 = v256;
    sub_1CEFD09A0(v321);
    sub_1CF7AAF88("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF554464, v267, sub_1CF796A9C, v266);

    v255 = v327;

    sub_1CEFD0A98(v321);
    v247 = v309;
    goto LABEL_74;
  }

  v316 = *(*(v290 + 32) + 16);
  type metadata accessor for VFSFileTree(0);
  v144 = swift_dynamicCastClassUnconditional();
  v145 = swift_allocObject();
  *(v145 + 16) = v323;
  *(v145 + 24) = v95;
  v146 = v287;
  *(v145 + 32) = v320;
  *(v145 + 40) = v146;
  *(v145 + 48) = v288;
  *(v145 + 56) = v327;
  *(v145 + 64) = v121;
  v147 = v325;
  *(v145 + 72) = v324;
  *(v145 + 80) = v147;
  v148 = *(v144 + 216);
  v149 = *(v144 + 224);
  v313 = v144;
  v314 = v149;
  v321 = v148;
  v323 = sub_1CF9E6448();
  v315 = *(v323 - 1);
  v315[7](v308, 1, 1, v323);
  v150 = swift_allocObject();
  *(v150 + 16) = sub_1CF8FBC60;
  *(v150 + 24) = v145;
  v151 = v297;
  v152 = v319;
  v283(v297, v318, v319);
  v153 = (v109 + 56) & ~v109;
  v154 = (v282 + v153) & 0xFFFFFFFFFFFFFFF8;
  v155 = swift_allocObject();
  v156 = v287;
  *(v155 + 16) = v313;
  *(v155 + 24) = v156;
  *(v155 + 32) = v288;
  *(v155 + 40) = sub_1CF8FBC60;
  *(v155 + 48) = v145;
  v280(v155 + v153, v151, v152);
  v157 = (v155 + v154);
  v158 = v322;
  *v157 = v312;
  v157[1] = v158;
  v159 = swift_allocObject();
  v159[2] = sub_1CF90324C;
  v159[3] = v150;
  v160 = v314;
  v159[4] = v314;

  v161 = v325;
  sub_1CEFD09A0(v327);

  v162 = v321;
  v327 = v150;
  v163 = v315;

  v164 = fpfs_current_log();
  v325 = *(v160 + 16);
  v165 = v323;
  v166 = v298;
  sub_1CEFCCBDC(v308, v298, &unk_1EC4BE370, qword_1CFA01B30);
  v167 = (v163[6])(v166, 1, v165);
  v326 = v162;
  if (v167 == 1)
  {
    sub_1CEFCCC44(v166, &unk_1EC4BE370, qword_1CFA01B30);
    LODWORD(v324) = 0;
  }

  else
  {
    v169 = v164;
    v170 = v291;
    sub_1CF9E6438();
    (v163[1])(v166, v165);
    LODWORD(v324) = sub_1CF9E63C8();
    v171 = v170;
    v164 = v169;
    (*(v292 + 8))(v171, v293);
  }

  v172 = swift_allocObject();
  v172[2] = v164;
  v172[3] = sub_1CF8FBC64;
  v172[4] = v155;
  *&v334[32] = sub_1CF2BA17C;
  *&v334[40] = v172;
  *v334 = MEMORY[0x1E69E9820];
  *&v334[8] = 1107296256;
  *&v334[16] = sub_1CEFCA444;
  *&v334[24] = &block_descriptor_2828;
  v173 = _Block_copy(v334);
  v323 = v164;

  *&v334[32] = sub_1CF2BA180;
  *&v334[40] = v159;
  *v334 = MEMORY[0x1E69E9820];
  *&v334[8] = 1107296256;
  *&v334[16] = sub_1CEFCA444;
  *&v334[24] = &block_descriptor_2831;
  v174 = _Block_copy(v334);

  v175 = v326;
  fp_task_tracker_async_and_qos(v325, v326, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v324, v173, v174);
  _Block_release(v174);
  _Block_release(v173);

  sub_1CEFCCC44(v336, &unk_1EC4BFD80, &unk_1CFA0A2A0);

  sub_1CEFCCC44(v309, &unk_1EC4BE360, &qword_1CF9FE650);
  (*(v317 + 8))(v318, v319);
  sub_1CEFCCC44(v308, &unk_1EC4BE370, qword_1CFA01B30);
}

uint64_t sub_1CF8C34E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  v77 = a8;
  v73 = a5;
  v74 = a6;
  v72 = a4;
  LODWORD(v76) = a3;
  v75 = a2;
  v68 = a12;
  v69 = a7;
  v67 = a11;
  v66 = a10;
  v65 = a9;
  v62 = sub_1CF9E63D8();
  v61 = *(v62 - 8);
  v13 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v60 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1CF9E5A58();
  v15 = *(v70 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v71 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v59 - v21;
  v79 = &v59 - v21;
  v64 = a1;
  v78 = *(*(*(a1 + 16) + 32) + 16);
  type metadata accessor for VFSFileTree(0);
  v23 = swift_dynamicCastClassUnconditional();
  v24 = swift_allocObject();
  v25 = v77;
  *(v24 + 16) = v69;
  *(v24 + 24) = v25;
  v26 = v75;
  *(v24 + 32) = a1;
  *(v24 + 40) = v26;
  *(v24 + 48) = v76;
  v27 = v66;
  *(v24 + 56) = a9;
  *(v24 + 64) = v27;
  *(v24 + 72) = a11;
  *(v24 + 80) = a12;
  v28 = *(v23 + 216);
  v66 = *(v23 + 224);
  v69 = v28;
  v29 = sub_1CF9E6448();
  v63 = *(v29 - 8);
  (*(v63 + 56))(v22, 1, 1, v29);
  v30 = swift_allocObject();
  *(v30 + 16) = sub_1CF90331C;
  *(v30 + 24) = v24;
  v31 = v15;
  v32 = *(v15 + 16);
  v33 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v70;
  v32(v33, v72, v70);
  v35 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v36 = (v16 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  v38 = v75;
  *(v37 + 16) = v23;
  *(v37 + 24) = v38;
  *(v37 + 32) = v76;
  *(v37 + 40) = sub_1CF90331C;
  *(v37 + 48) = v24;
  v39 = v33;
  v40 = v37;
  (*(v31 + 32))(v37 + v35, v39, v34);
  v41 = v63;
  v42 = (v40 + v36);
  v43 = v29;
  v44 = v74;
  *v42 = v73;
  v42[1] = v44;
  v45 = swift_allocObject();
  v45[2] = sub_1CF90324C;
  v45[3] = v30;
  v46 = v66;
  v45[4] = v66;
  v47 = v71;
  swift_retain_n();
  swift_retain_n();

  sub_1CEFD09A0(v65);

  v48 = v68;
  v49 = v69;

  v77 = v30;

  v50 = v46;

  v51 = fpfs_current_log();
  v76 = *(v50 + 16);
  sub_1CEFCCBDC(v79, v47, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v41 + 48))(v47, 1, v43) == 1)
  {
    sub_1CEFCCC44(v47, &unk_1EC4BE370, qword_1CFA01B30);
    v52 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v53 = v60;
    sub_1CF9E6438();
    (*(v41 + 8))(v47, v43);
    v52 = sub_1CF9E63C8();
    (*(v61 + 8))(v53, v62);
  }

  v54 = swift_allocObject();
  v54[2] = v51;
  v54[3] = sub_1CF902D98;
  v54[4] = v40;
  v84 = sub_1CF2BA17C;
  v85 = v54;
  aBlock = MEMORY[0x1E69E9820];
  v81 = 1107296256;
  v82 = sub_1CEFCA444;
  v83 = &block_descriptor_3043;
  v55 = _Block_copy(&aBlock);
  v56 = v51;

  v84 = sub_1CF2BA180;
  v85 = v45;
  aBlock = MEMORY[0x1E69E9820];
  v81 = 1107296256;
  v82 = sub_1CEFCA444;
  v83 = &block_descriptor_3046;
  v57 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v76, v49, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v52, v55, v57);

  _Block_release(v57);
  _Block_release(v55);

  sub_1CEFCCC44(v79, &unk_1EC4BE370, qword_1CFA01B30);
}

void sub_1CF8C3BB4(void *a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), int a6, void *a7, uint64_t a8, uint64_t a9, void *a10)
{
  v120 = a8;
  v121 = a4;
  LODWORD(v119) = a6;
  v118 = a5;
  v127 = a2;
  v128 = a3;
  v123 = a7;
  v124 = a10;
  v122 = a9;
  v11 = sub_1CF9E63D8();
  v117 = *(v11 - 8);
  v12 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v106 - v20;
  v22 = sub_1CF9E6068();
  v125 = *(v22 - 8);
  v23 = v125[8];
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v106 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v106 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v106 - v31;
  v33 = type metadata accessor for Signpost(0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33);
  MEMORY[0x1EEE9AC00](v35);
  MEMORY[0x1EEE9AC00](v36);
  if (a1)
  {
    v42 = a1;
    v127(0, a1);
  }

  else
  {
    v108 = v29;
    v109 = v37;
    v115 = v32;
    v110 = v25;
    v111 = v41;
    v112 = v40;
    v113 = v39;
    v114 = v18;
    v106 = v14;
    v107 = v11;
    v116 = &v106 - v38;
    v126 = v21;
    v43 = v121;
    v44 = *(v121 + 16);
    v45 = swift_allocObject();
    v46 = v128;
    *(v45 + 16) = v127;
    *(v45 + 24) = v46;
    v47 = swift_allocObject();
    v48 = v118;
    *(v47 + 16) = v43;
    *(v47 + 24) = v48;
    *(v47 + 32) = v119;
    v50 = v122;
    v49 = v123;
    v51 = v120;
    *(v47 + 40) = v123;
    *(v47 + 48) = v51;
    v120 = v47;
    v52 = v124;
    *(v47 + 56) = v50;
    *(v47 + 64) = v52;
    v53 = swift_allocObject();
    *(v53 + 16) = sub_1CF90325C;
    *(v53 + 24) = v45;
    v127 = v53;
    v54 = *(v44 + qword_1EDEBBC38);

    sub_1CEFD09A0(v49);

    v55 = v52;
    v128 = v45;

    v124 = fpfs_adopt_log();
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v56 = qword_1EDEBBE40;
    v57 = v125;
    v58 = v115;
    v59 = v22;
    (v125[7])(v115, 1, 1, v22);
    strcpy(&aBlock, "async batch ");
    BYTE13(aBlock) = 0;
    HIWORD(aBlock) = -5120;
    v60 = sub_1CF9E7988();
    MEMORY[0x1D3868CC0](v60);

    v122 = *(&aBlock + 1);
    v123 = aBlock;
    v61 = v108;
    sub_1CEFCCBDC(v58, v108, &unk_1EC4BED20, &unk_1CFA00700);
    v62 = v57[6];
    if (v62(v61, 1, v22) == 1)
    {
      v63 = v56;
      v64 = v110;
      sub_1CF9E6048();
      if (v62(v61, 1, v22) != 1)
      {
        sub_1CEFCCC44(v61, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      v64 = v110;
      (v57[4])(v110, v61, v22);
    }

    v65 = v57[2];
    v66 = v57;
    v67 = v116;
    v65(v116, v64, v59);
    v68 = v109;
    *(v67 + *(v109 + 20)) = v56;
    v69 = v67 + *(v68 + 24);
    *v69 = "DB queue wait";
    *(v69 + 8) = 13;
    *(v69 + 16) = 2;
    v70 = v56;
    sub_1CF9E7468();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v71 = swift_allocObject();
    *(v71 + 16) = xmmword_1CF9FA450;
    *(v71 + 56) = MEMORY[0x1E69E6158];
    *(v71 + 64) = sub_1CEFD51C4();
    v72 = v122;
    *(v71 + 32) = v123;
    *(v71 + 40) = v72;
    sub_1CF9E6028();

    (v66[1])(v64, v59);
    sub_1CEFCCC44(v115, &unk_1EC4BED20, &unk_1CFA00700);
    v123 = *(v44 + 168);
    v125 = *(v44 + 64);
    v73 = sub_1CF9E6448();
    v121 = *(v73 - 8);
    v122 = v73;
    (*(v121 + 56))(v126, 1, 1, v73);
    v74 = v112;
    sub_1CEFDA34C(v67, v112, type metadata accessor for Signpost);
    v75 = (*(v111 + 80) + 16) & ~*(v111 + 80);
    v119 = v44;
    v76 = (v34 + v75 + 7) & 0xFFFFFFFFFFFFFFF8;
    v77 = swift_allocObject();
    sub_1CEFDA0C4(v74, v77 + v75, type metadata accessor for Signpost);
    v78 = (v77 + v76);
    v118 = sub_1CF902CCC;
    v79 = v127;
    *v78 = sub_1CF902CCC;
    v78[1] = v79;
    v80 = v113;
    sub_1CEFDA34C(v67, v113, type metadata accessor for Signpost);
    v81 = (v76 + 23) & 0xFFFFFFFFFFFFFFF8;
    v82 = (v81 + 15) & 0xFFFFFFFFFFFFFFF8;
    v83 = (v82 + 25) & 0xFFFFFFFFFFFFFFF8;
    v84 = swift_allocObject();
    v85 = v84 + v75;
    v86 = v121;
    sub_1CEFDA0C4(v80, v85, type metadata accessor for Signpost);
    v87 = (v84 + v76);
    *v87 = sub_1CF045408;
    v87[1] = 0;
    *(v84 + v81) = v119;
    v88 = v84 + v82;
    v89 = v122;
    *v88 = "pauseSyncForItem(at:bundleID:behavior:request:completionHandler:)";
    *(v88 + 8) = 65;
    *(v88 + 16) = 2;
    v90 = (v84 + v83);
    v91 = v127;
    *v90 = v118;
    v90[1] = v91;
    v92 = (v84 + ((v83 + 23) & 0xFFFFFFFFFFFFFFF8));
    v93 = v120;
    *v92 = sub_1CF8FBF84;
    v92[1] = v93;
    v94 = swift_allocObject();
    v94[2] = sub_1CF903308;
    v94[3] = v77;
    v95 = v123;
    v94[4] = v123;
    swift_retain_n();

    v96 = fpfs_current_log();
    v123 = v95[2];
    v97 = v114;
    sub_1CEFCCBDC(v126, v114, &unk_1EC4BE370, qword_1CFA01B30);
    if ((*(v86 + 48))(v97, 1, v89) == 1)
    {
      sub_1CEFCCC44(v97, &unk_1EC4BE370, qword_1CFA01B30);
      v98 = QOS_CLASS_UNSPECIFIED;
    }

    else
    {
      v99 = v106;
      sub_1CF9E6438();
      (*(v86 + 8))(v97, v89);
      v98 = sub_1CF9E63C8();
      (*(v117 + 8))(v99, v107);
    }

    v100 = swift_allocObject();
    v100[2] = v96;
    v100[3] = sub_1CF4858EC;
    v100[4] = v84;
    v132 = sub_1CF2BA17C;
    v133 = v100;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v130 = sub_1CEFCA444;
    v131 = &block_descriptor_3017;
    v101 = _Block_copy(&aBlock);
    v102 = v96;

    v132 = sub_1CF2BA180;
    v133 = v94;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v130 = sub_1CEFCA444;
    v131 = &block_descriptor_3020;
    v103 = _Block_copy(&aBlock);

    fp_task_tracker_async_and_qos(v123, v125, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v98, v101, v103);
    _Block_release(v103);
    _Block_release(v101);

    sub_1CEFCCC44(v126, &unk_1EC4BE370, qword_1CFA01B30);
    sub_1CEFD5338(v116, type metadata accessor for Signpost);
    v104 = v124;
    v105 = fpfs_adopt_log();
  }
}

uint64_t sub_1CF8C47D0(void *a1, uint64_t a2, uint64_t a3, int a4, unint64_t a5, unint64_t **a6, uint64_t a7, void *a8)
{
  v34 = a6;
  v35 = a3;
  v15 = sub_1CF9E5CF8();
  v36 = *(v15 - 8);
  v37 = v15;
  v16 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a2 + 16);
  sub_1CF9042A4(a5);
  v21 = v20;

  v22 = a8;
  v33 = v19;
  sub_1CF5DA654(a3, a4, a5, v21, v19, v34, a7, v22);

  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v24 = sub_1CF9042A4(a5);
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1C10, &unk_1CFA0CD80);
  v27 = swift_allocObject();
  *(v27 + 152) = a4;
  *(v27 + 16) = 0u;
  *(v27 + 32) = 0u;
  *(v27 + 48) = 1;
  *(v27 + 56) = 0u;
  *(v27 + 72) = 0u;
  *(v27 + 88) = 0;
  *(v27 + 120) = v24;
  *(v27 + 128) = v26;
  v28 = v35;
  *(v27 + 136) = 0;
  *(v27 + 144) = v28;
  *(v27 + 96) = xmmword_1CFA04E20;
  *(v27 + 112) = 0;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v30 = v29;
  result = (*(v36 + 8))(v18, v37);
  v32 = v30 * 1000000000.0;
  if (COERCE__INT64(fabs(v30 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v32 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v32 < 9.22337204e18)
  {
    sub_1CF5215C0(v27);
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_1CF8C4A38(uint64_t a1, void *a2, void (*a3)(uint64_t, void *), uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    goto LABEL_4;
  }

  _s3__C4CodeOMa_1(0);
  v8 = a2;
  sub_1CEFCCCA4(&qword_1EDEA3590, _s3__C4CodeOMa_1);
  if (sub_1CF9E5658())
  {

LABEL_4:
    a3(a5, 0);
    return;
  }

  v9 = a2;
  a3(0, a2);
}

void sub_1CF8C4B34(uint64_t a1, void (*a2)(void, id), uint64_t a3, void (*a4)(void))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v13 - v9);
  sub_1CEFCCBDC(a1, &v13 - v9, &unk_1EC4BF300, &unk_1CFA006B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *v10;
    v12 = *v10;
    a2(0, v11);
  }

  else
  {
    a4();
    sub_1CEFCCC44(v10, &unk_1EC4BF300, &unk_1CFA006B0);
  }
}

uint64_t FPDDomainFPFSBackend.resumeSyncForItem(at:bundleID:behavior:request:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v36 = a7;
  v35 = a6;
  v38 = a5;
  v9 = sub_1CF9E5A58();
  v10 = *(v9 - 8);
  v32 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v31 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4AF0, "pN\t");
  v13 = swift_allocBox();
  v33 = v13;
  v34 = a1;
  v15 = v14;
  v16 = *(v12 + 48);
  v17 = *(v12 + 64);
  v18 = *(v10 + 16);
  v18(v14, a1, v9);
  *(v15 + v16) = a4;
  *(v15 + v17) = v38;
  v19 = v13 | 0x9000000000000006;
  v20 = v31;
  v21 = a1;
  v22 = v9;
  v18(v31, v21, v9);
  v23 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v24 = (v32 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v26 = v36;
  *(v25 + 2) = v35;
  *(v25 + 3) = v26;
  v27 = v37;
  *(v25 + 4) = v37;
  *(v25 + 5) = a4;
  (*(v10 + 32))(&v25[v23], v20, v22);
  *&v25[v24] = v19;
  v28 = v38;

  v29 = v27;

  sub_1CF84D640(v34, 1, v19, sub_1CF8F3758, v25);
}

uint64_t sub_1CF8C5180(void *a1, uint64_t a2, uint64_t (*a3)(void, uint64_t, __n128), uint64_t a4, _BYTE *a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v30 = a6;
  v31 = a8;
  v14 = sub_1CF9E5A58();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return a3(0, a2, v17);
  }

  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  *(v19 + 24) = a4;
  (*(v15 + 16))(&v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a7, v14);
  v20 = (*(v15 + 80) + 48) & ~*(v15 + 80);
  v29 = a5;
  v21 = (v16 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 2) = a3;
  *(v22 + 3) = a4;
  v23 = v30;
  *(v22 + 4) = a1;
  *(v22 + 5) = v23;
  (*(v15 + 32))(&v22[v20], v18, v14);
  v24 = v31;
  *&v22[v21] = v31;
  v25 = a1;
  swift_retain_n();
  v26 = v25;

  sub_1CEFD09A0(v24);
  sub_1CF8EDD24("resumeSyncForItem(at:bundleID:behavior:request:completionHandler:)", 66, 2, sub_1CF8FAE94, v22, v29, sub_1CF90325C, v19);
}

uint64_t sub_1CF8C53A0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v39 = a5;
  v40 = a7;
  v35 = a2;
  v36 = a6;
  v38 = a4;
  v34 = a3;
  v10 = sub_1CF9E5A58();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v32 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = sub_1CF90325C;
  v15[3] = v13;
  v15[4] = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1CF902E4C;
  *(v16 + 24) = v15;
  v17 = *(a1 + 16);
  v33 = a1;
  v37 = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1CF903440;
  *(v18 + 24) = v16;
  v19 = v10;
  (*(v11 + 16))(&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v36, v10);
  v20 = (*(v11 + 80) + 56) & ~*(v11 + 80);
  v21 = (v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 2) = a1;
  v24 = v38;
  v23 = v39;
  *(v22 + 3) = v38;
  *(v22 + 4) = sub_1CF903440;
  *(v22 + 5) = v16;
  *(v22 + 6) = v23;
  (*(v11 + 32))(&v22[v20], v32, v19);
  v25 = v40;
  *&v22[v21] = v40;
  v26 = &v22[(v21 + 15) & 0xFFFFFFFFFFFFFFF8];
  v27 = v34;
  *v26 = v35;
  *(v26 + 1) = v27;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_1CF90325C;
  *(v28 + 24) = v18;
  swift_retain_n();
  swift_retain_n();

  v29 = v24;
  sub_1CEFD09A0(v25);

  sub_1CF7AAF88("resumeSyncForItem(at:bundleID:behavior:request:completionHandler:)", 66, 2, 2, sub_1CF9034C4, v28, sub_1CF8FAF38, v22);
}

void sub_1CF8C56BC(void *a1, uint64_t a2, void *a3, void (*a4)(void, id), uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  v104 = a5;
  v96 = a8;
  v97 = a7;
  v101 = a6;
  v103 = a4;
  v99 = sub_1CF9E5A58();
  v95 = *(v99 - 8);
  v13 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v99);
  v94 = v14;
  v98 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v93 = &v84 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v91 = *(v18 - 8);
  v92 = v18;
  v19 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v84 - v20;
  v23 = a1[3];
  v22 = a1[4];
  v24 = __swift_project_boxed_opaque_existential_1(a1, v23);
  v100 = a2;
  v25 = *(a2 + 16);
  v26 = *(v25 + 16);

  v102 = a3;
  v27 = [a3 identifier];
  v112 = v27;
  v28 = v105;
  sub_1CF68E230(&v112, v24, v23, v22, v110);
  if (v28)
  {

    return;
  }

  v90 = v21;
  v29 = v101;
  v105 = v25;

  memcpy(v108, v110, sizeof(v108));
  memcpy(v109, v110, sizeof(v109));
  v30 = sub_1CF08B99C(v109);
  v32 = v102;
  v31 = v103;
  if (v30 == 1)
  {
    goto LABEL_8;
  }

  memcpy(v111, v109, sizeof(v111));
  if (LOBYTE(v109[27]) == 255)
  {
    sub_1CEFCCC44(v108, &unk_1EC4BFD80, &unk_1CFA0A2A0);
LABEL_8:
    v41 = [v32 identifier];
    v42 = FPItemNotFoundError();

    v31(0, v42);
    return;
  }

  v89 = LOBYTE(v109[27]);
  v33 = v109[26];
  v87 = a9;
  v88 = a10;
  v86 = v109[26];
  if (v29 == 2)
  {
    v34 = swift_allocObject();
    *(v34 + 16) = 0;
    v35 = a1[3];
    v36 = a1[4];
    v37 = __swift_project_boxed_opaque_existential_1(a1, v35);
    v38 = *(v105 + 32);
    v106 = v33;
    v107 = v89;
    v39 = *(*v38 + 240);

    v40 = v93;
    v39(&v106, 1, v37, v35, v36);

    v59 = v86;
    v101 = v34;
    if ((*(v91 + 48))(v40, 1, v92) == 1)
    {
      sub_1CEFCCC44(v40, &qword_1EC4C1B40, &unk_1CF9FCB70);
      v60 = v97;
      v61 = v98;
    }

    else
    {
      v62 = v40;
      v63 = v90;
      sub_1CEFE55D0(v62, v90, &unk_1EC4BE360, &qword_1CF9FE650);
      v61 = v98;
      if (v109[39])
      {
        v91 = v109[33];
        LODWORD(v93) = LOBYTE(v109[34]);
        v64 = v109[32];
        v65 = v109[31];
        v66 = *(v63 + 32);
        v67 = *(v63 + 40);
        v85 = *(v63 + 48);
        LODWORD(v92) = *(v63 + 56);
        sub_1CEFCCC44(v63, &unk_1EC4BE360, &qword_1CF9FE650);
        v68 = v66 == v65;
        v60 = v97;
        v69 = v94;
        v70 = v105;
        if (v68 && v67 == v64)
        {
          if (v92)
          {
            if (v93)
            {
              goto LABEL_25;
            }
          }

          else if ((v93 & 1) == 0 && v85 == v91)
          {
            goto LABEL_25;
          }
        }

        *(v101 + 16) = 1;
LABEL_25:
        v105 = *(*(v70 + 32) + 16);
        type metadata accessor for VFSFileTree(0);
        v94 = swift_dynamicCastClassUnconditional();
        v71 = v59;
        v106 = v59;
        v72 = v89;
        v107 = v89;
        v73 = v95;
        (*(v95 + 16))(v61, v60, v99);
        v74 = (*(v73 + 80) + 80) & ~*(v73 + 80);
        v93 = (v69 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
        v75 = (v93 + 15) & 0xFFFFFFFFFFFFFFF8;
        v76 = swift_allocObject();
        v77 = v104;
        *(v76 + 16) = v103;
        *(v76 + 24) = v77;
        v78 = v99;
        *(v76 + 32) = v100;
        *(v76 + 40) = v71;
        *(v76 + 48) = v72;
        v79 = v96;
        v80 = v87;
        v81 = v88;
        *(v76 + 56) = v96;
        *(v76 + 64) = v80;
        *(v76 + 72) = v81;
        (*(v73 + 32))(v76 + v74, v98, v78);
        v82 = v102;
        *(v76 + v93) = v101;
        *(v76 + v75) = v82;

        sub_1CEFD09A0(v79);

        v83 = v82;
        sub_1CF289F34(&v106, v97, sub_1CF8FB0B8, v76);

        sub_1CEFCCC44(v108, &unk_1EC4BFD80, &unk_1CFA0A2A0);

        goto LABEL_10;
      }

      sub_1CEFCCC44(v63, &unk_1EC4BE360, &qword_1CF9FE650);
      v60 = v97;
    }

    v69 = v94;
    v70 = v105;
    goto LABEL_25;
  }

  v105 = *(*(v105 + 32) + 16);
  v43 = v95;
  (*(v95 + 16))(v98, v97, v99);
  v44 = (*(v43 + 80) + 584) & ~*(v43 + 80);
  v45 = (v94 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = (v45 + 15) & 0xFFFFFFFFFFFFFFF8;
  v47 = v102;
  v48 = swift_allocObject();
  v49 = v103;
  v50 = v104;
  *(v48 + 16) = v100;
  *(v48 + 24) = v49;
  v51 = v101;
  *(v48 + 32) = v50;
  *(v48 + 40) = v51;
  *(v48 + 48) = v86;
  *(v48 + 56) = v89;
  memcpy((v48 + 64), v111, 0x208uLL);
  (*(v43 + 32))(v48 + v44, v98, v99);
  v52 = v105;
  v53 = v47;
  *(v48 + v45) = v47;
  v54 = (v48 + v46);
  v55 = v88;
  *v54 = v87;
  v54[1] = v55;
  v56 = v96;
  *(v48 + ((v46 + 23) & 0xFFFFFFFFFFFFFFF8)) = v96;
  v57 = *(*v52 + 704);

  sub_1CEFD09A0(v56);

  v58 = v53;

  sub_1CEFCCBDC(v108, &v106, &unk_1EC4BFD80, &unk_1CFA0A2A0);
  v57(sub_1CF8FAFF8, v48);

  sub_1CEFCCC44(v108, &unk_1EC4BFD80, &unk_1CFA0A2A0);
LABEL_10:
}

void sub_1CF8C5EE8(char *a1, uint64_t (*a2)(uint64_t a1, uint64_t a2), uint64_t a3, void *a4, uint64_t a5, int a6, unint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, void *a12)
{
  v123 = a8;
  v125 = a7;
  v122 = a6;
  v121 = a5;
  v133 = a4;
  v137 = a2;
  v138 = a3;
  v135 = a1;
  v126 = a12;
  v124 = a11;
  v120 = a10;
  v134 = a9;
  v119 = sub_1CF9E63D8();
  v118 = *(v119 - 8);
  v12 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v119);
  v117 = &v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v132 = &v110 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v136 = &v110 - v18;
  v19 = sub_1CF9E6068();
  v130 = *(v19 - 8);
  v131 = v19;
  v20 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v128 = (&v110 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v127 = &v110 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v110 - v26;
  v28 = type metadata accessor for Signpost(0);
  v129 = *(v28 - 8);
  v29 = *(v129 + 8);
  MEMORY[0x1EEE9AC00](v28);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v110 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v110 - v34;
  v36 = sub_1CF9E5A58();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v110 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v135)
  {
    v40 = v135;
    v41 = v135;
    v137(0, v40);
  }

  else
  {
    v111 = v28;
    v115 = v27;
    v112 = v29;
    v113 = v32;
    v114 = &v110 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    v116 = v35;
    v135 = v133[2];
    v42 = v133;
    v43 = swift_allocObject();
    v44 = v138;
    *(v43 + 16) = v137;
    *(v43 + 24) = v44;
    (*(v37 + 16))(&v110 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0), v120, v36);
    v45 = (*(v37 + 80) + 64) & ~*(v37 + 80);
    v46 = (v38 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
    v47 = (v46 + 23) & 0xFFFFFFFFFFFFFFF8;
    v48 = swift_allocObject();
    v49 = v121;
    *(v48 + 16) = v42;
    *(v48 + 24) = v49;
    *(v48 + 32) = v122;
    v50 = v125;
    v51 = v123;
    *(v48 + 40) = v125;
    *(v48 + 48) = v51;
    *(v48 + 56) = v134;
    (*(v37 + 32))(v48 + v45, v39, v36);
    v52 = (v48 + v46);
    v53 = v138;
    *v52 = v137;
    v52[1] = v53;
    *(v48 + v47) = v124;
    v123 = v48;
    v54 = v126;
    *(v48 + ((v47 + 15) & 0xFFFFFFFFFFFFFFF8)) = v126;
    v55 = swift_allocObject();
    *(v55 + 16) = sub_1CF90325C;
    *(v55 + 24) = v43;
    v137 = v55;
    v56 = *(v135 + qword_1EDEBBC38);
    swift_retain_n();

    sub_1CEFD09A0(v50);

    v57 = v54;
    v138 = v43;

    v134 = fpfs_adopt_log();
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v58 = qword_1EDEBBE40;
    v59 = v130;
    v60 = v131;
    v61 = v115;
    (*(v130 + 56))(v115, 1, 1, v131);
    strcpy(&aBlock, "async batch ");
    BYTE13(aBlock) = 0;
    HIWORD(aBlock) = -5120;
    v62 = sub_1CF9E7988();
    MEMORY[0x1D3868CC0](v62);

    v133 = *(&aBlock + 1);
    v63 = aBlock;
    v64 = v127;
    sub_1CEFCCBDC(v61, v127, &unk_1EC4BED20, &unk_1CFA00700);
    v65 = *(v59 + 48);
    v66 = v65(v64, 1, v60);
    v67 = v128;
    v68 = v111;
    if (v66 == 1)
    {
      v69 = v58;
      sub_1CF9E6048();
      v70 = v65(v64, 1, v60);
      v71 = v136;
      v72 = v116;
      if (v70 != 1)
      {
        sub_1CEFCCC44(v64, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      (*(v59 + 32))(v128, v64, v60);
      v71 = v136;
      v72 = v116;
    }

    (*(v59 + 16))(v72, v67, v60);
    *(v72 + *(v68 + 20)) = v58;
    v73 = v72 + *(v68 + 24);
    *v73 = "DB queue wait";
    *(v73 + 8) = 13;
    *(v73 + 16) = 2;
    v74 = v58;
    sub_1CF9E7468();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v75 = v59;
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_1CF9FA450;
    *(v76 + 56) = MEMORY[0x1E69E6158];
    *(v76 + 64) = sub_1CEFD51C4();
    v77 = v133;
    *(v76 + 32) = v63;
    *(v76 + 40) = v77;
    sub_1CF9E6028();

    (*(v75 + 8))(v67, v60);
    sub_1CEFCCC44(v115, &unk_1EC4BED20, &unk_1CFA00700);
    v131 = v135[21];
    v133 = v135[8];
    v130 = sub_1CF9E6448();
    v128 = *(v130 - 8);
    v128[7](v71, 1, 1, v130);
    v78 = v113;
    sub_1CEFDA34C(v72, v113, type metadata accessor for Signpost);
    v79 = (*(v129 + 80) + 16) & ~*(v129 + 80);
    v80 = (v112 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
    v81 = swift_allocObject();
    sub_1CEFDA0C4(v78, v81 + v79, type metadata accessor for Signpost);
    v82 = (v81 + v80);
    v129 = sub_1CF8FB24C;
    v83 = v137;
    *v82 = sub_1CF8FB24C;
    v82[1] = v83;
    v84 = v114;
    sub_1CEFDA34C(v72, v114, type metadata accessor for Signpost);
    v85 = (v80 + 23) & 0xFFFFFFFFFFFFFFF8;
    v86 = (v85 + 15) & 0xFFFFFFFFFFFFFFF8;
    v87 = (v86 + 25) & 0xFFFFFFFFFFFFFFF8;
    v88 = (v87 + 23) & 0xFFFFFFFFFFFFFFF8;
    v89 = swift_allocObject();
    sub_1CEFDA0C4(v84, v89 + v79, type metadata accessor for Signpost);
    v90 = (v89 + v80);
    *v90 = sub_1CF045408;
    v90[1] = 0;
    *(v89 + v85) = v135;
    v91 = v89 + v86;
    *v91 = "resumeSyncForItem(at:bundleID:behavior:request:completionHandler:)";
    *(v91 + 8) = 66;
    *(v91 + 16) = 2;
    v92 = (v89 + v87);
    v93 = v130;
    v94 = v128;
    v95 = v137;
    *v92 = v129;
    v92[1] = v95;
    v96 = (v89 + v88);
    v97 = v123;
    *v96 = sub_1CF8FB178;
    v96[1] = v97;
    v98 = swift_allocObject();
    v98[2] = sub_1CF903308;
    v98[3] = v81;
    v99 = v131;
    v98[4] = v131;
    swift_retain_n();

    v100 = fpfs_current_log();
    v135 = *(v99 + 16);
    v101 = v132;
    sub_1CEFCCBDC(v136, v132, &unk_1EC4BE370, qword_1CFA01B30);
    if ((v94[6])(v101, 1, v93) == 1)
    {
      sub_1CEFCCC44(v101, &unk_1EC4BE370, qword_1CFA01B30);
      v102 = QOS_CLASS_UNSPECIFIED;
    }

    else
    {
      v103 = v117;
      sub_1CF9E6438();
      (v94[1])(v101, v93);
      v102 = sub_1CF9E63C8();
      (*(v118 + 8))(v103, v119);
    }

    v104 = swift_allocObject();
    v104[2] = v100;
    v104[3] = sub_1CF4858EC;
    v104[4] = v89;
    v142 = sub_1CF2BA17C;
    v143 = v104;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v140 = sub_1CEFCA444;
    v141 = &block_descriptor_2590;
    v105 = _Block_copy(&aBlock);
    v106 = v100;

    v142 = sub_1CF2BA180;
    v143 = v98;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v140 = sub_1CEFCA444;
    v141 = &block_descriptor_2593;
    v107 = _Block_copy(&aBlock);

    fp_task_tracker_async_and_qos(v135, v133, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v102, v105, v107);
    _Block_release(v107);
    _Block_release(v105);

    sub_1CEFCCC44(v136, &unk_1EC4BE370, qword_1CFA01B30);
    sub_1CEFD5338(v116, type metadata accessor for Signpost);
    v108 = v134;
    v109 = fpfs_adopt_log();
  }
}

uint64_t sub_1CF8C6C78(void *a1, uint64_t a2, uint64_t a3, int a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  v48 = a7;
  v49 = a6;
  v56 = a5;
  v13 = a4;
  v47 = a4;
  v46 = a3;
  v53 = a11;
  v54 = a12;
  v51 = a9;
  v52 = a10;
  v17 = sub_1CF9E6448();
  v61 = *(v17 - 8);
  v62 = v17;
  v18 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v60 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1CF9E5A58();
  v45 = v20;
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = [objc_allocWithZone(MEMORY[0x1E696AE38]) init];
  v25 = a1[4];
  v58 = a1[3];
  v59 = v24;
  v50 = v25;
  v55 = __swift_project_boxed_opaque_existential_1(a1, v58);
  v57 = *(a2 + 16);
  v63 = a3;
  v64 = v13;
  (*(v21 + 16))(v23, a8, v20);
  v26 = (*(v21 + 80) + 49) & ~*(v21 + 80);
  v27 = (v22 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = (v27 + 23) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v44 + 15) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  v30 = v48;
  *(v29 + 16) = v49;
  *(v29 + 24) = v30;
  v31 = v45;
  v32 = v46;
  *(v29 + 32) = a2;
  *(v29 + 40) = v32;
  *(v29 + 48) = v47;
  (*(v21 + 32))(v29 + v26, v23, v31);
  v33 = (v29 + v27);
  v34 = v52;
  *v33 = v51;
  v33[1] = v34;
  v35 = v54;
  *(v29 + v44) = v53;
  *(v29 + v28) = v35;
  v36 = v56;
  *(v29 + ((v28 + 15) & 0xFFFFFFFFFFFFFFF8)) = v56;

  v37 = v35;
  v38 = v36;
  sub_1CEFD09A0(v36);
  type metadata accessor for VFSItem(0);
  sub_1CEFD57E0(0, &qword_1EDEAB520, 0x1E6967388);
  sub_1CEFCCCA4(qword_1EDEABC30, type metadata accessor for VFSItem);
  sub_1CF2B1654(&qword_1EDEA3460, &qword_1EDEAB520, 0x1E6967388);
  v39 = *(v50 + 8);
  v40 = v60;
  sub_1CF81272C();
  v41 = v38;
  v42 = v59;
  sub_1CF5AD73C(&v63, v41, v59, v40, v55, sub_1CF8FB254, v29, v58, v39);

  return (*(v61 + 8))(v40, v62);
}

void sub_1CF8C701C(void *a1, void (*a2)(void, void *), uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12)
{
  v66 = a8;
  v67 = a7;
  v70 = a6;
  v69 = a5;
  v75 = a12;
  v76 = a3;
  v74 = a11;
  v72 = a4;
  v73 = a10;
  v71 = a9;
  v14 = sub_1CF9E63D8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1CF9E5A58();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v68 = &v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v58 - v27;
  if (a1)
  {
    v29 = a1;
    a2(0, a1);
  }

  else
  {
    v58 = v18;
    v59 = v15;
    v60 = v14;
    v30 = v72;
    v65 = *(*(*(v72 + 16) + 32) + 16);
    type metadata accessor for VFSFileTree(0);
    v31 = swift_dynamicCastClassUnconditional();
    v32 = swift_allocObject();
    v33 = v71;
    *(v32 + 16) = v66;
    *(v32 + 24) = v33;
    *(v32 + 32) = v30;
    *(v32 + 40) = a2;
    v34 = v73;
    v35 = v74;
    *(v32 + 48) = v76;
    *(v32 + 56) = v34;
    v36 = v69;
    *(v32 + 64) = v35;
    *(v32 + 72) = v36;
    *(v32 + 80) = v70;
    *(v32 + 88) = v75;
    v62 = v31;
    v37 = *(v31 + 216);
    v63 = *(v31 + 224);
    v64 = v37;
    v38 = sub_1CF9E6448();
    v61 = *(v38 - 8);
    (*(v61 + 56))(v28, 1, 1, v38);
    v39 = swift_allocObject();
    v66 = v28;
    *(v39 + 16) = sub_1CF8FB328;
    *(v39 + 24) = v32;
    (*(v20 + 16))(&v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v67, v19);
    v40 = (*(v20 + 80) + 56) & ~*(v20 + 80);
    v41 = (v21 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
    v42 = swift_allocObject();
    v43 = v69;
    *(v42 + 16) = v62;
    *(v42 + 24) = v43;
    *(v42 + 32) = v70;
    *(v42 + 40) = sub_1CF8FB328;
    *(v42 + 48) = v32;
    v44 = v42 + v40;
    v45 = v61;
    (*(v20 + 32))(v44, v22, v19);
    *(v42 + v41) = 0;
    v46 = swift_allocObject();
    v46[2] = sub_1CF90324C;
    v46[3] = v39;
    v47 = v63;
    v46[4] = v63;
    swift_retain_n();
    swift_retain_n();

    v48 = v74;
    sub_1CEFD09A0(v75);
    v49 = v64;
    v76 = v39;

    v50 = fpfs_current_log();
    v75 = *(v47 + 16);
    v51 = v68;
    sub_1CEFCCBDC(v66, v68, &unk_1EC4BE370, qword_1CFA01B30);
    if ((*(v45 + 48))(v51, 1, v38) == 1)
    {
      sub_1CEFCCC44(v51, &unk_1EC4BE370, qword_1CFA01B30);
      v52 = QOS_CLASS_UNSPECIFIED;
    }

    else
    {
      v53 = v58;
      sub_1CF9E6438();
      (*(v45 + 8))(v51, v38);
      v52 = sub_1CF9E63C8();
      (*(v59 + 8))(v53, v60);
    }

    v54 = swift_allocObject();
    v54[2] = v50;
    v54[3] = sub_1CF8FB36C;
    v54[4] = v42;
    v81 = sub_1CF2BA17C;
    v82 = v54;
    aBlock = MEMORY[0x1E69E9820];
    v78 = 1107296256;
    v79 = sub_1CEFCA444;
    v80 = &block_descriptor_2617;
    v55 = _Block_copy(&aBlock);
    v56 = v50;

    v81 = sub_1CF2BA180;
    v82 = v46;
    aBlock = MEMORY[0x1E69E9820];
    v78 = 1107296256;
    v79 = sub_1CEFCA444;
    v80 = &block_descriptor_2620;
    v57 = _Block_copy(&aBlock);

    fp_task_tracker_async_and_qos(v75, v49, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v52, v55, v57);

    _Block_release(v57);
    _Block_release(v55);

    sub_1CEFCCC44(v66, &unk_1EC4BE370, qword_1CFA01B30);
  }
}

void sub_1CF8C772C(void *a1, void (*a2)(void, void *), uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, unsigned __int8 a10, void *a11)
{
  v125 = a6;
  v126 = a7;
  v124 = a5;
  v127 = a4;
  v131 = a2;
  v132 = a3;
  v128 = a11;
  v129 = a8;
  LODWORD(v123) = a10;
  v122 = a9;
  v12 = sub_1CF9E63D8();
  v121 = *(v12 - 8);
  v13 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v108 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v108 - v21;
  v23 = sub_1CF9E6068();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v108 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v31 = &v108 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v108 - v33;
  v35 = type metadata accessor for Signpost(0);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35);
  MEMORY[0x1EEE9AC00](v37);
  MEMORY[0x1EEE9AC00](v38);
  if (a1)
  {
    v45 = a1;
    v131(0, a1);
  }

  else
  {
    v110 = v40;
    v111 = v31;
    v112 = v39;
    v118 = v34;
    v113 = v27;
    v114 = v44;
    v115 = v43;
    v46 = v24;
    v116 = v42;
    v117 = v19;
    v108 = v15;
    v109 = v12;
    v120 = &v108 - v41;
    v130 = v22;
    v47 = v127;
    v48 = *(v127 + 2);
    v49 = swift_allocObject();
    v50 = v124;
    v51 = v125;
    *(v49 + 16) = v124;
    *(v49 + 24) = v51;
    v52 = swift_allocObject();
    *(v52 + 16) = v126;
    *(v52 + 24) = v47;
    v54 = v128;
    v53 = v129;
    v55 = v122;
    *(v52 + 32) = v129;
    *(v52 + 40) = v55;
    *(v52 + 48) = v123;
    *(v52 + 56) = v54;
    *(v52 + 64) = v50;
    v56 = v131;
    v57 = v132;
    *(v52 + 72) = v51;
    *(v52 + 80) = v56;
    v124 = v52;
    *(v52 + 88) = v57;
    v58 = swift_allocObject();
    *(v58 + 16) = sub_1CF90325C;
    *(v58 + 24) = v49;
    v131 = v58;
    v119 = v48;
    v59 = *(v48 + qword_1EDEBBC38);
    swift_retain_n();

    v60 = v53;
    sub_1CEFD09A0(v54);

    v132 = v49;

    v129 = fpfs_adopt_log();
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v61 = qword_1EDEBBE40;
    v62 = v118;
    (*(v46 + 56))(v118, 1, 1, v23);
    strcpy(&aBlock, "async batch ");
    BYTE13(aBlock) = 0;
    HIWORD(aBlock) = -5120;
    v63 = sub_1CF9E7988();
    MEMORY[0x1D3868CC0](v63);

    v64 = aBlock;
    v65 = v111;
    sub_1CEFCCBDC(v62, v111, &unk_1EC4BED20, &unk_1CFA00700);
    v66 = *(v46 + 48);
    if (v66(v65, 1, v23) == 1)
    {
      v67 = v61;
      v68 = v113;
      sub_1CF9E6048();
      if (v66(v65, 1, v23) != 1)
      {
        sub_1CEFCCC44(v65, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      v68 = v113;
      (*(v46 + 32))(v113, v65, v23);
    }

    v69 = v120;
    (*(v46 + 16))(v120, v68, v23);
    v70 = v112;
    *(v69 + *(v112 + 20)) = v61;
    v71 = v69 + *(v70 + 24);
    *v71 = "DB queue wait";
    *(v71 + 8) = 13;
    *(v71 + 16) = 2;
    v72 = v61;
    sub_1CF9E7468();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v73 = v23;
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_1CF9FA450;
    *(v74 + 56) = MEMORY[0x1E69E6158];
    *(v74 + 64) = sub_1CEFD51C4();
    *(v74 + 32) = v64;
    sub_1CF9E6028();

    (*(v46 + 8))(v68, v73);
    sub_1CEFCCC44(v118, &unk_1EC4BED20, &unk_1CFA00700);
    v126 = *(v119 + 168);
    v128 = *(v119 + 64);
    v125 = sub_1CF9E6448();
    v123 = *(v125 - 8);
    (*(v123 + 56))(v130, 1, 1, v125);
    v75 = v115;
    sub_1CEFDA34C(v69, v115, type metadata accessor for Signpost);
    v76 = (*(v114 + 80) + 16) & ~*(v114 + 80);
    v77 = (v110 + v76 + 7) & 0xFFFFFFFFFFFFFFF8;
    v78 = swift_allocObject();
    sub_1CEFDA0C4(v75, v78 + v76, type metadata accessor for Signpost);
    v79 = (v78 + v77);
    v127 = sub_1CF902CCC;
    v80 = v131;
    *v79 = sub_1CF902CCC;
    v79[1] = v80;
    v81 = v116;
    sub_1CEFDA34C(v69, v116, type metadata accessor for Signpost);
    v82 = (v77 + 23) & 0xFFFFFFFFFFFFFFF8;
    v83 = (v82 + 15) & 0xFFFFFFFFFFFFFFF8;
    v84 = (v83 + 25) & 0xFFFFFFFFFFFFFFF8;
    v85 = (v84 + 23) & 0xFFFFFFFFFFFFFFF8;
    v86 = swift_allocObject();
    sub_1CEFDA0C4(v81, v86 + v76, type metadata accessor for Signpost);
    v87 = (v86 + v77);
    *v87 = sub_1CF045408;
    v87[1] = 0;
    *(v86 + v82) = v119;
    v88 = v86 + v83;
    v90 = v123;
    v89 = v124;
    *v88 = "resumeSyncForItem(at:bundleID:behavior:request:completionHandler:)";
    *(v88 + 8) = 66;
    *(v88 + 16) = 2;
    v91 = (v86 + v84);
    v92 = v125;
    v93 = v131;
    *v91 = v127;
    v91[1] = v93;
    v94 = (v86 + v85);
    *v94 = sub_1CF8FB370;
    v94[1] = v89;
    v95 = swift_allocObject();
    v95[2] = sub_1CF903308;
    v95[3] = v78;
    v96 = v126;
    v95[4] = v126;
    swift_retain_n();

    v127 = v78;

    v97 = fpfs_current_log();
    v98 = *(v96 + 16);
    v99 = v117;
    sub_1CEFCCBDC(v130, v117, &unk_1EC4BE370, qword_1CFA01B30);
    if ((*(v90 + 48))(v99, 1, v92) == 1)
    {
      sub_1CEFCCC44(v99, &unk_1EC4BE370, qword_1CFA01B30);
      v100 = QOS_CLASS_UNSPECIFIED;
    }

    else
    {
      v101 = v108;
      sub_1CF9E6438();
      (*(v90 + 8))(v99, v92);
      v100 = sub_1CF9E63C8();
      (*(v121 + 8))(v101, v109);
    }

    v102 = swift_allocObject();
    v102[2] = v97;
    v102[3] = sub_1CF4858EC;
    v102[4] = v86;
    v136 = sub_1CF2BA17C;
    v137 = v102;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v134 = sub_1CEFCA444;
    v135 = &block_descriptor_2650;
    v103 = _Block_copy(&aBlock);
    v104 = v97;

    v136 = sub_1CF2BA180;
    v137 = v95;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v134 = sub_1CEFCA444;
    v135 = &block_descriptor_2653;
    v105 = _Block_copy(&aBlock);

    fp_task_tracker_async_and_qos(v98, v128, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v100, v103, v105);
    _Block_release(v105);
    _Block_release(v103);

    sub_1CEFCCC44(v130, &unk_1EC4BE370, qword_1CFA01B30);
    sub_1CEFD5338(v120, type metadata accessor for Signpost);
    v106 = v129;
    v107 = fpfs_adopt_log();
  }
}

uint64_t sub_1CF8C8380(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, int a6, uint64_t a7, void (*a8)(void, void *), uint64_t a9, void *a10, uint64_t a11)
{
  v54 = a8;
  v56 = a6;
  v57 = a5;
  v17 = sub_1CF9E5CF8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v22 = *(a2 + 16);
  v58 = v18;
  v59 = v11;
  v55 = a1;
  v52 = a3;
  v53 = a4;
  if (v22 == 1)
  {
    v49 = a7;
    v23 = a1[3];
    v51 = a1[4];
    v50 = __swift_project_boxed_opaque_existential_1(a1, v23);
    v24 = *(a3 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4750, &unk_1CFA05360);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1CF9FA450;
    v26 = [a4 identifier];
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v28 = v27;
    result = (*(v18 + 8))(v21, v17);
    v30 = v28 * 1000000000.0;
    if (COERCE__INT64(fabs(v28 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    if (v30 <= -9.22337204e18)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if (v30 >= 9.22337204e18)
    {
LABEL_18:
      __break(1u);
      return result;
    }

    *(v25 + 48) = xmmword_1CFA17AD0;
    v31 = v62;
    *(v25 + 115) = v61;
    v60 = 1;
    *(v25 + 32) = v26;
    *(v25 + 40) = 256;
    *(v25 + 64) = v30;
    *(v25 + 114) = 0;
    *(v25 + 131) = v31;
    *(v25 + 147) = 9;
    v32 = v59;
    sub_1CF92E0C4(MEMORY[0x1E69E7CC0], v25, v50, v23, v51);

    if (v32)
    {
      return result;
    }

    v50 = v21;
    v51 = v17;
    v59 = 0;
    a7 = v49;
  }

  else
  {
    v50 = v21;
    v51 = v17;
  }

  v33 = *(v52 + 16);
  sub_1CF9042A4(a7);
  v34 = a7;
  v36 = v35;

  v37 = v53;
  v38 = v57;
  v39 = v56;
  v53 = v33;
  sub_1CF5DB108(v57, v56, v34, v36, v33, v54, a9, a10, a11, v37);

  v40 = v55[4];
  __swift_project_boxed_opaque_existential_1(v55, v55[3]);
  v41 = sub_1CF9042A4(v34);
  v43 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1C10, &unk_1CFA0CD80);
  v44 = swift_allocObject();
  *(v44 + 152) = v39;
  *(v44 + 16) = 0u;
  *(v44 + 32) = 0u;
  *(v44 + 48) = 1;
  *(v44 + 56) = 0u;
  *(v44 + 72) = 0u;
  *(v44 + 88) = 0;
  *(v44 + 120) = v41;
  *(v44 + 128) = v43;
  *(v44 + 136) = 0;
  *(v44 + 144) = v38;
  *(v44 + 96) = xmmword_1CFA04E20;
  *(v44 + 112) = 0;
  v45 = v50;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v47 = v46;
  result = (*(v58 + 8))(v45, v51);
  v48 = v47 * 1000000000.0;
  if (COERCE__INT64(fabs(v47 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v48 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v48 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_1CF5215C0(v44);
}

void sub_1CF8C87C4(int a1, id a2, void (*a3)(void, id), uint64_t a4, void (*a5)(uint64_t, void), uint64_t a6, uint64_t a7)
{
  if (!a2)
  {
    goto LABEL_12;
  }

  v11 = a2;
  v12 = sub_1CF9E57E8();
  v13 = [v12 domain];
  v14 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v16 = v15;

  v17 = *MEMORY[0x1E6967190];
  if (v14 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v16 == v18)
  {
  }

  else
  {
    v20 = sub_1CF9E8048();

    if ((v20 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v21 = [v12 code];
  if (v21 == *MEMORY[0x1E69671C8] || [v12 code] == -1004)
  {

LABEL_12:
    a5(a7, 0);
    return;
  }

LABEL_13:
  v22 = a2;
  a3(0, a2);
}

void sub_1CF8C8968(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, unint64_t a12)
{
  v134 = a1;
  v135 = a7;
  LODWORD(v137) = a6;
  v119 = a4;
  v120 = a5;
  v117 = a3;
  v118 = a2;
  v123 = a12;
  v122 = a11;
  v140 = a10;
  v121 = a9;
  v16 = sub_1CF9E63D8();
  v114 = *(v16 - 8);
  v115 = v16;
  v17 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v113 = &v112 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v133 = &v112 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v141 = &v112 - v23;
  v24 = sub_1CF9E6068();
  v125 = *(v24 - 8);
  v126 = v24;
  v25 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v128 = &v112 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v124 = &v112 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v136 = &v112 - v31;
  v127 = type metadata accessor for Signpost(0);
  v129 = *(v127 - 8);
  v32 = *(v129 + 64);
  MEMORY[0x1EEE9AC00](v127);
  v132 = &v112 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v130 = v36;
  v131 = (&v112 - v35);
  MEMORY[0x1EEE9AC00](v37);
  v138 = &v112 - v38;
  v39 = sub_1CF9E5A58();
  v116 = v39;
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v112 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = a1[2];
  v43 = swift_allocObject();
  *(v43 + 16) = a2;
  *(v43 + 24) = a3;
  (*(v40 + 16))(v42, a8, v39);
  v44 = (*(v40 + 80) + 568) & ~*(v40 + 80);
  v45 = (v41 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = (v45 + 23) & 0xFFFFFFFFFFFFFFF8;
  v47 = (v46 + 15) & 0xFFFFFFFFFFFFFFF8;
  v48 = (v47 + 23) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  v50 = v135;
  v52 = v119;
  v51 = v120;
  *(v49 + 16) = v134;
  *(v49 + 24) = v52;
  *(v49 + 32) = v51;
  *(v49 + 40) = v137;
  memcpy((v49 + 48), v50, 0x208uLL);
  (*(v40 + 32))(v49 + v44, v42, v116);
  v53 = (v49 + v45);
  v54 = v117;
  *v53 = v118;
  v53[1] = v54;
  v55 = v121;
  *(v49 + v46) = v121;
  v56 = (v49 + v47);
  v58 = v122;
  v57 = v123;
  *v56 = v140;
  v56[1] = v58;
  v137 = v49;
  *(v49 + v48) = v57;
  v59 = swift_allocObject();
  *(v59 + 16) = sub_1CF90325C;
  *(v59 + 24) = v43;
  v140 = v59;
  v60 = *(v139 + qword_1EDEBBC38);
  swift_retain_n();

  sub_1CEFCCBDC(v135, v142, &unk_1EC4BFC90, &unk_1CFA053E0);
  v61 = v55;

  sub_1CEFD09A0(v57);
  v135 = v43;

  v134 = fpfs_adopt_log();
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v62 = qword_1EDEBBE40;
  v64 = v125;
  v63 = v126;
  v65 = v136;
  (*(v125 + 56))(v136, 1, 1, v126);
  strcpy(v142, "async batch ");
  BYTE5(v142[1]) = 0;
  HIWORD(v142[1]) = -5120;
  v66 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v66);

  v67 = v142[1];
  v123 = v142[0];
  v68 = v65;
  v69 = v124;
  sub_1CEFCCBDC(v68, v124, &unk_1EC4BED20, &unk_1CFA00700);
  v70 = *(v64 + 48);
  if (v70(v69, 1, v63) == 1)
  {
    v71 = v62;
    v72 = v128;
    sub_1CF9E6048();
    if (v70(v69, 1, v63) != 1)
    {
      sub_1CEFCCC44(v69, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v72 = v128;
    (*(v64 + 32))(v128, v69, v63);
  }

  v73 = v138;
  (*(v64 + 16))(v138, v72, v63);
  v74 = v127;
  *(v73 + *(v127 + 20)) = v62;
  v75 = v73 + *(v74 + 24);
  *v75 = "DB queue wait";
  *(v75 + 8) = 13;
  *(v75 + 16) = 2;
  v76 = v62;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_1CF9FA450;
  *(v77 + 56) = MEMORY[0x1E69E6158];
  *(v77 + 64) = sub_1CEFD51C4();
  *(v77 + 32) = v123;
  *(v77 + 40) = v67;
  sub_1CF9E6028();

  (*(v64 + 8))(v72, v63);
  sub_1CEFCCC44(v136, &unk_1EC4BED20, &unk_1CFA00700);
  v128 = v139[21];
  v136 = v139[8];
  v78 = sub_1CF9E6448();
  v126 = *(v78 - 8);
  v127 = v78;
  (*(v126 + 56))(v141, 1, 1, v78);
  v79 = v131;
  sub_1CEFDA34C(v73, v131, type metadata accessor for Signpost);
  v80 = (*(v129 + 80) + 16) & ~*(v129 + 80);
  v81 = (v130 + v80 + 7) & 0xFFFFFFFFFFFFFFF8;
  v82 = swift_allocObject();
  v130 = type metadata accessor for Signpost;
  sub_1CEFDA0C4(v79, v82 + v80, type metadata accessor for Signpost);
  v83 = (v82 + v81);
  v131 = sub_1CF902CCC;
  v84 = v140;
  *v83 = sub_1CF902CCC;
  v83[1] = v84;
  v85 = v132;
  sub_1CEFDA34C(v73, v132, type metadata accessor for Signpost);
  v86 = (v81 + 23) & 0xFFFFFFFFFFFFFFF8;
  v87 = (v86 + 15) & 0xFFFFFFFFFFFFFFF8;
  v88 = (v87 + 25) & 0xFFFFFFFFFFFFFFF8;
  v89 = (v88 + 23) & 0xFFFFFFFFFFFFFFF8;
  v90 = swift_allocObject();
  sub_1CEFDA0C4(v85, v90 + v80, v130);
  v91 = (v90 + v81);
  v92 = v126;
  *v91 = sub_1CF045408;
  v91[1] = 0;
  *(v90 + v86) = v139;
  v93 = v90 + v87;
  *v93 = "resumeSyncForItem(at:bundleID:behavior:request:completionHandler:)";
  *(v93 + 8) = 66;
  *(v93 + 16) = 2;
  v94 = (v90 + v88);
  v95 = v140;
  *v94 = v131;
  v94[1] = v95;
  v96 = (v90 + v89);
  v97 = v137;
  *v96 = sub_1CF8FB3B0;
  v96[1] = v97;
  v98 = swift_allocObject();
  v98[2] = sub_1CF903308;
  v98[3] = v82;
  v99 = v128;
  v98[4] = v128;
  swift_retain_n();

  v100 = v99;

  v101 = fpfs_current_log();
  v139 = *(v100 + 2);
  v102 = v133;
  sub_1CEFCCBDC(v141, v133, &unk_1EC4BE370, qword_1CFA01B30);
  v103 = v127;
  if ((*(v92 + 48))(v102, 1) == 1)
  {
    sub_1CEFCCC44(v102, &unk_1EC4BE370, qword_1CFA01B30);
    v104 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v105 = v113;
    sub_1CF9E6438();
    (*(v92 + 8))(v102, v103);
    v104 = sub_1CF9E63C8();
    (*(v114 + 8))(v105, v115);
  }

  v106 = swift_allocObject();
  v106[2] = v101;
  v106[3] = sub_1CF4858EC;
  v106[4] = v90;
  v145 = sub_1CF2BA17C;
  v146 = v106;
  v142[0] = MEMORY[0x1E69E9820];
  v142[1] = 1107296256;
  v143 = sub_1CEFCA444;
  v144 = &block_descriptor_2683;
  v107 = _Block_copy(v142);
  v108 = v101;

  v145 = sub_1CF2BA180;
  v146 = v98;
  v142[0] = MEMORY[0x1E69E9820];
  v142[1] = 1107296256;
  v143 = sub_1CEFCA444;
  v144 = &block_descriptor_2686;
  v109 = _Block_copy(v142);

  fp_task_tracker_async_and_qos(v139, v136, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v104, v107, v109);
  _Block_release(v109);
  _Block_release(v107);

  sub_1CEFCCC44(v141, &unk_1EC4BE370, qword_1CFA01B30);
  sub_1CEFD5338(v138, type metadata accessor for Signpost);
  v110 = v134;
  v111 = fpfs_adopt_log();
}

void sub_1CF8C961C(void *a1, uint64_t a2, uint64_t a3, void *a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, unint64_t a13)
{
  v119 = a8;
  v123 = a7;
  v114 = a6;
  LODWORD(v126) = a5;
  v125 = a4;
  v122 = a3;
  v15 = sub_1CF9E63D8();
  v117 = *(v15 - 8);
  v118 = v15;
  v16 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v116 = &v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v121 = &v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v129 = &v102 - v22;
  v23 = sub_1CF9E5A58();
  v127 = *(v23 - 8);
  v128 = v23;
  v24 = *(v127 + 8);
  MEMORY[0x1EEE9AC00](v23);
  v120 = &v102 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v124 = &v102 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v30 = &v102 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v115 = *(v31 - 8);
  v32 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v102 - v33;
  v35 = a1[3];
  v36 = a1[4];
  v37 = __swift_project_boxed_opaque_existential_1(a1, v35);
  v38 = a2;
  v39 = *(a2 + 16);
  v40 = v130;
  sub_1CF5AD9F8(v37, v35, v36);
  if (!v40)
  {
    v109 = v31;
    v108 = v34;
    v110 = v30;
    v112 = v39;
    v113 = v38;
    v130 = 0;
    v41 = swift_allocObject();
    v42 = v122;
    *(v41 + 16) = v122;
    if (v42 != 1)
    {
      goto LABEL_13;
    }

    v43 = a1[3];
    v44 = a1[4];
    v45 = __swift_project_boxed_opaque_existential_1(a1, v43);
    v46 = v112[4];
    aBlock = v125;
    LOBYTE(v132) = v126;
    v47 = *(*v46 + 240);
    v48 = *(v44 + 8);

    v49 = v110;
    v50 = v45;
    v51 = v130;
    v47(&aBlock, 1, v50, v43, v48);
    v130 = v51;
    if (v51)
    {

LABEL_21:

      return;
    }

    v52 = (*(v115 + 48))(v49, 1, v109);
    v53 = v124;
    if (v52 == 1)
    {
      v54 = &qword_1EC4C1B40;
      v55 = &unk_1CF9FCB70;
      v56 = v49;
LABEL_15:
      sub_1CEFCCC44(v56, v54, v55);
      v64 = v123;
      goto LABEL_16;
    }

    v57 = v108;
    sub_1CEFE55D0(v49, v108, &unk_1EC4BE360, &qword_1CF9FE650);
    if (!*(v114 + 312))
    {
      v54 = &unk_1EC4BE360;
      v55 = &qword_1CF9FE650;
      v56 = v57;
      goto LABEL_15;
    }

    v122 = *(v114 + 264);
    v58 = *(v114 + 256);
    v59 = *(v114 + 272);
    v60 = *(v114 + 248);
    v61 = *(v57 + 32);
    v62 = *(v57 + 40);
    v115 = *(v57 + 48);
    v63 = *(v57 + 56);
    sub_1CEFCCC44(v57, &unk_1EC4BE360, &qword_1CF9FE650);
    if (v61 == v60)
    {
      v64 = v123;
      v53 = v124;
      if (v62 == v58)
      {
        v66 = v127;
        v65 = v128;
        if (v63)
        {
          if (v59)
          {
LABEL_25:
            *(v41 + 16) = 0;
          }
        }

        else if ((v59 & 1) == 0 && v115 == v122)
        {
          goto LABEL_25;
        }

LABEL_17:
        v115 = a13;
        v114 = a12;
        v104 = a11;
        v110 = a10;
        v109 = a9;
        v122 = *(v112[4] + 16);
        type metadata accessor for VFSFileTree(0);
        v112 = swift_dynamicCastClassUnconditional();
        v108 = *(v41 + 16);
        v67 = *(v66 + 2);
        v106 = v66 + 16;
        v107 = v67;
        v67(v53, v64, v65);
        v68 = v66[80];
        v69 = (v68 + 40) & ~v68;
        v105 = v24 + 7;
        v102 = (v24 + 7 + v69) & 0xFFFFFFFFFFFFFFF8;
        v70 = (v102 + 15) & 0xFFFFFFFFFFFFFFF8;
        v111 = v41;
        v71 = (v70 + 15) & 0xFFFFFFFFFFFFFFF8;
        v72 = (v71 + 23) & 0xFFFFFFFFFFFFFFF8;
        v73 = swift_allocObject();
        v74 = v109;
        v73[2] = v119;
        v73[3] = v74;
        v73[4] = v110;
        v75 = *(v66 + 4);
        v127 = v66 + 32;
        v103 = v75;
        v75(v73 + v69, v124, v128);
        *(v73 + v102) = v113;
        *(v73 + v70) = v41;
        v76 = (v73 + v71);
        v77 = v114;
        *v76 = v104;
        v76[1] = v77;
        *(v73 + v72) = v115;
        v78 = v73 + ((v72 + 15) & 0xFFFFFFFFFFFFFFF8);
        *v78 = v125;
        v78[8] = v126;
        v79 = v112[27];
        v104 = v112[28];
        v124 = v79;
        v119 = sub_1CF9E6448();
        v80 = *(v119 - 8);
        (*(v80 + 56))(v129, 1, 1, v119);
        v81 = swift_allocObject();
        *(v81 + 16) = sub_1CF8FB498;
        *(v81 + 24) = v73;
        v82 = v120;
        v83 = v128;
        v107(v120, v123, v128);
        v84 = (v68 + 56) & ~v68;
        v85 = (v105 + v84) & 0xFFFFFFFFFFFFFFF8;
        v86 = swift_allocObject();
        v87 = v125;
        *(v86 + 16) = v112;
        *(v86 + 24) = v87;
        *(v86 + 32) = v126;
        *(v86 + 40) = sub_1CF8FB498;
        *(v86 + 48) = v73;
        v88 = v80;
        v103(v86 + v84, v82, v83);
        *(v86 + v85) = v108;
        v89 = swift_allocObject();
        v89[2] = sub_1CF90324C;
        v89[3] = v81;
        v90 = v104;
        v89[4] = v104;
        swift_retain_n();
        v125 = v73;
        swift_retain_n();

        v91 = v110;

        sub_1CEFD09A0(v115);
        v127 = v124;
        v128 = v81;
        v92 = v119;

        v93 = fpfs_current_log();
        v126 = *(v90 + 16);
        v94 = v121;
        sub_1CEFCCBDC(v129, v121, &unk_1EC4BE370, qword_1CFA01B30);
        if ((*(v88 + 48))(v94, 1, v92) == 1)
        {
          sub_1CEFCCC44(v94, &unk_1EC4BE370, qword_1CFA01B30);
          v95 = QOS_CLASS_UNSPECIFIED;
        }

        else
        {
          v96 = v116;
          sub_1CF9E6438();
          (*(v88 + 8))(v94, v92);
          v95 = sub_1CF9E63C8();
          (*(v117 + 8))(v96, v118);
        }

        v97 = swift_allocObject();
        v97[2] = v93;
        v97[3] = sub_1CF902D94;
        v97[4] = v86;
        v135 = sub_1CF2BA17C;
        v136 = v97;
        aBlock = MEMORY[0x1E69E9820];
        v132 = 1107296256;
        v133 = sub_1CEFCA444;
        v134 = &block_descriptor_2709;
        v98 = _Block_copy(&aBlock);
        v99 = v93;

        v135 = sub_1CF2BA180;
        v136 = v89;
        aBlock = MEMORY[0x1E69E9820];
        v132 = 1107296256;
        v133 = sub_1CEFCA444;
        v134 = &block_descriptor_2712;
        v100 = _Block_copy(&aBlock);

        v101 = v127;
        fp_task_tracker_async_and_qos(v126, v127, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v95, v98, v100);

        _Block_release(v100);
        _Block_release(v98);

        sub_1CEFCCC44(v129, &unk_1EC4BE370, qword_1CFA01B30);

        goto LABEL_21;
      }
    }

    else
    {
LABEL_13:
      v64 = v123;
      v53 = v124;
    }

LABEL_16:
    v66 = v127;
    v65 = v128;
    goto LABEL_17;
  }
}

void sub_1CF8CA160(void *a1, void (*a2)(void, uint64_t), void *a3, void *a4, uint64_t a5, void *a6, uint64_t (*a7)(uint64_t, uint64_t), uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, char a12)
{
  v135 = a8;
  v136 = a7;
  v137 = a6;
  v138 = a5;
  v140 = a3;
  v141 = a4;
  v139 = a2;
  v13 = sub_1CF9E63D8();
  v134 = *(v13 - 8);
  v14 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v119 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v119 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v119 - v22;
  v24 = sub_1CF9E6068();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v28 = (&v119 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v32 = &v119 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v119 - v34;
  v36 = type metadata accessor for Signpost(0);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36);
  MEMORY[0x1EEE9AC00](v38);
  MEMORY[0x1EEE9AC00](v39);
  if (a1)
  {
    v46 = v141;
    v47 = v139;
    v48 = a1;
    LODWORD(aBlock) = sub_1CF9E5328();
    sub_1CF196978();
    if (sub_1CF9E5658())
    {
      v49 = [v46 identifier];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
      sub_1CEFCCCEC(&qword_1EDEAB020, &qword_1EC4BF270, &qword_1CFA01B70);
      v50 = swift_allocError();
      *v51 = v49;
      *(v51 + 8) = 0;
      *(v51 + 16) = 0;
      *(v51 + 24) = 1;
      *(v51 + 32) = 0u;
      *(v51 + 48) = 0u;
      *(v51 + 64) = 0;
      *(v51 + 72) = a1;
      *(v51 + 80) = 0;
      *(v51 + 88) = 0;
      v52 = a1;
      v47(0, v50);
      v53 = v50;
    }

    else
    {
      v75 = a1;
      LODWORD(aBlock) = sub_1CF9E5368();
      v76 = sub_1CF9E5658();

      if (v76)
      {
        v77 = sub_1CF9E5928();
        v78 = FPFileNotPausedError();

        v47(0, v78);
LABEL_18:

        return;
      }

      v118 = a1;
      v47(0, a1);
      v53 = a1;
    }

    goto LABEL_18;
  }

  v122 = v41;
  v123 = v32;
  v124 = v40;
  v131 = v35;
  v121 = v24;
  v125 = v28;
  v126 = v45;
  v127 = v44;
  v128 = v25;
  v129 = v43;
  v130 = v20;
  v119 = v16;
  v120 = v13;
  v133 = &v119 - v42;
  v138 = v23;
  v54 = v137;
  v55 = v137[2];
  v56 = swift_allocObject();
  v58 = v139;
  v57 = v140;
  *(v56 + 16) = v139;
  *(v56 + 24) = v57;
  v59 = swift_allocObject();
  v60 = v135;
  *(v59 + 16) = v136;
  *(v59 + 24) = v60;
  *(v59 + 32) = a9;
  *(v59 + 40) = v58;
  v61 = v141;
  *(v59 + 48) = v57;
  *(v59 + 56) = v61;
  *(v59 + 64) = v54;
  *(v59 + 72) = a10;
  *(v59 + 80) = a11;
  v135 = v59;
  *(v59 + 88) = a12;
  v62 = swift_allocObject();
  *(v62 + 16) = sub_1CF90325C;
  *(v62 + 24) = v56;
  v139 = v62;
  v132 = v55;
  v63 = *(v55 + qword_1EDEBBC38);
  swift_retain_n();

  v64 = v61;

  sub_1CEFD09A0(a10);
  v141 = v56;

  v140 = fpfs_adopt_log();
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v65 = qword_1EDEBBE40;
  v66 = v128;
  v67 = v131;
  v68 = v121;
  (*(v128 + 56))(v131, 1, 1, v121);
  strcpy(&aBlock, "async batch ");
  BYTE13(aBlock) = 0;
  HIWORD(aBlock) = -5120;
  v69 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v69);

  v137 = *(&aBlock + 1);
  v70 = aBlock;
  v71 = v123;
  sub_1CEFCCBDC(v67, v123, &unk_1EC4BED20, &unk_1CFA00700);
  v72 = *(v66 + 48);
  if (v72(v71, 1, v68) == 1)
  {
    v73 = v65;
    v74 = v125;
    sub_1CF9E6048();
    if (v72(v71, 1, v68) != 1)
    {
      sub_1CEFCCC44(v71, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v74 = v125;
    (*(v66 + 32))(v125, v71, v68);
  }

  v79 = v133;
  (*(v66 + 16))(v133, v74, v68);
  v80 = v124;
  *(v79 + *(v124 + 20)) = v65;
  v81 = v79 + *(v80 + 24);
  *v81 = "DB queue wait";
  *(v81 + 8) = 13;
  *(v81 + 16) = 2;
  v82 = v65;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_1CF9FA450;
  *(v83 + 56) = MEMORY[0x1E69E6158];
  *(v83 + 64) = sub_1CEFD51C4();
  v84 = v137;
  *(v83 + 32) = v70;
  *(v83 + 40) = v84;
  sub_1CF9E6028();

  (*(v66 + 8))(v74, v68);
  sub_1CEFCCC44(v131, &unk_1EC4BED20, &unk_1CFA00700);
  v131 = *(v132 + 168);
  v137 = *(v132 + 64);
  v128 = sub_1CF9E6448();
  v125 = *(v128 - 8);
  v125[7](v138, 1, 1, v128);
  v85 = v127;
  sub_1CEFDA34C(v79, v127, type metadata accessor for Signpost);
  v86 = (*(v126 + 80) + 16) & ~*(v126 + 80);
  v87 = (v122 + v86 + 7) & 0xFFFFFFFFFFFFFFF8;
  v88 = swift_allocObject();
  sub_1CEFDA0C4(v85, v88 + v86, type metadata accessor for Signpost);
  v89 = (v88 + v87);
  v136 = sub_1CF902CCC;
  v90 = v139;
  *v89 = sub_1CF902CCC;
  v89[1] = v90;
  v91 = v129;
  sub_1CEFDA34C(v79, v129, type metadata accessor for Signpost);
  v92 = (v87 + 23) & 0xFFFFFFFFFFFFFFF8;
  v93 = (v92 + 15) & 0xFFFFFFFFFFFFFFF8;
  v94 = (v93 + 25) & 0xFFFFFFFFFFFFFFF8;
  v95 = swift_allocObject();
  v96 = v125;
  sub_1CEFDA0C4(v91, v95 + v86, type metadata accessor for Signpost);
  v97 = (v95 + v87);
  *v97 = sub_1CF045408;
  v97[1] = 0;
  *(v95 + v92) = v132;
  v98 = v95 + v93;
  *v98 = "resumeSyncForItem(at:bundleID:behavior:request:completionHandler:)";
  *(v98 + 8) = 66;
  *(v98 + 16) = 2;
  v99 = (v95 + v94);
  v100 = v135;
  v101 = v139;
  *v99 = v136;
  v99[1] = v101;
  v102 = v95;
  v103 = (v95 + ((v94 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v103 = sub_1CF8FB6F0;
  v103[1] = v100;
  v104 = swift_allocObject();
  v104[2] = sub_1CF903308;
  v104[3] = v88;
  v105 = v131;
  v104[4] = v131;
  swift_retain_n();

  v136 = v88;
  v106 = v128;

  v107 = fpfs_current_log();
  v108 = *(v105 + 16);
  v109 = v130;
  sub_1CEFCCBDC(v138, v130, &unk_1EC4BE370, qword_1CFA01B30);
  if ((v96[6])(v109, 1, v106) == 1)
  {
    sub_1CEFCCC44(v109, &unk_1EC4BE370, qword_1CFA01B30);
    v110 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v111 = v119;
    sub_1CF9E6438();
    (v96[1])(v109, v106);
    v110 = sub_1CF9E63C8();
    (*(v134 + 8))(v111, v120);
  }

  v112 = swift_allocObject();
  v112[2] = v107;
  v112[3] = sub_1CF4858EC;
  v112[4] = v102;
  v145 = sub_1CF2BA17C;
  v146 = v112;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v143 = sub_1CEFCA444;
  v144 = &block_descriptor_2742;
  v113 = _Block_copy(&aBlock);
  v114 = v107;

  v145 = sub_1CF2BA180;
  v146 = v104;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v143 = sub_1CEFCA444;
  v144 = &block_descriptor_2745;
  v115 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v108, v137, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v110, v113, v115);
  _Block_release(v115);
  _Block_release(v113);

  sub_1CEFCCC44(v138, &unk_1EC4BE370, qword_1CFA01B30);
  sub_1CEFD5338(v133, type metadata accessor for Signpost);
  v116 = v140;
  v117 = fpfs_adopt_log();
}

uint64_t sub_1CF8CAEF4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, unint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  v51 = a1;
  v56 = a11;
  v57 = a10;
  v18 = sub_1CF9E5CF8();
  v53 = *(v18 - 8);
  v54 = v18;
  v19 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v52 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_allocObject();
  v21[2] = a2;
  v21[3] = a3;
  v21[4] = a4;
  v21[5] = a5;
  v21[6] = a6;
  v21[7] = a7;
  swift_beginAccess();
  v22 = *(a2 + 16);
  v55 = a8;
  v23 = *(a8 + 16);

  v24 = a7;
  if (v22 == 1)
  {
    v25 = v56;
    v26 = v57;
    v27 = [v24 identifier];
    if (((a9 >> 58) & 0x3C | (a9 >> 1) & 3) == 0x1E)
    {
      v28 = *((a9 & 0xFFFFFFFFFFFFFF9) + 0x10);
      sub_1CEFD09A0(v28);
      v29 = *((a9 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v30 = v29;
    }

    else
    {
      v45 = swift_allocObject();
      *(v45 + 16) = a9;
      v46 = swift_allocObject();
      *(v46 + 16) = a9;
      v30 = v46 | 0x7000000000000004;
      v28 = (v45 | 0x7000000000000004);
      sub_1CEFD09A0(a9);
      v29 = a9;
    }

    sub_1CEFD09A0(v29);
    sub_1CF904278(v30);
    v48 = v47;
    sub_1CEFD0A98(v30);
    sub_1CEFD09A0(a9);

    v49 = v55;

    sub_1CF5DC880(v27, v28, v48, v23, sub_1CF8FB730, v21, v49, v26, v25, a9);
    sub_1CEFD0A98(a9);

    sub_1CEFD0A98(v28);
  }

  sub_1CF9042A4(a9);
  v32 = v31;

  v33 = v57;
  v34 = v56;
  sub_1CF5DBC6C(v57, v56, a9, v32, v23, sub_1CF8FB730, v21);

  v35 = v51[3];
  v55 = v51[4];
  __swift_project_boxed_opaque_existential_1(v51, v35);
  v36 = sub_1CF9042A4(a9);
  v38 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1C10, &unk_1CFA0CD80);
  v39 = swift_allocObject();
  *(v39 + 152) = v34;
  *(v39 + 16) = 0u;
  *(v39 + 32) = 0u;
  *(v39 + 48) = 1;
  *(v39 + 56) = 0u;
  *(v39 + 72) = 0u;
  *(v39 + 88) = 0;
  *(v39 + 120) = v36;
  *(v39 + 128) = v38;
  *(v39 + 136) = 0;
  *(v39 + 144) = v33;
  *(v39 + 96) = xmmword_1CFA04E20;
  *(v39 + 112) = 0;
  v40 = v52;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v42 = v41;
  result = (*(v53 + 8))(v40, v54);
  v44 = v42 * 1000000000.0;
  if (COERCE__INT64(fabs(v42 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v44 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v44 < 9.22337204e18)
  {
    sub_1CF5215C0(v39);
  }

LABEL_13:
  __break(1u);
  return result;
}

void sub_1CF8CB340(void *a1, uint64_t a2, void (*a3)(void, void *), uint64_t a4, void (*a5)(void, void), uint64_t a6, uint64_t a7)
{
  if (!a1)
  {
    goto LABEL_6;
  }

  v9 = a7;
  v10 = a5;
  swift_beginAccess();
  if (!*(a2 + 16))
  {
    _s3__C4CodeOMa_1(0);
    v13 = a1;
    sub_1CEFCCCA4(&qword_1EDEA3590, _s3__C4CodeOMa_1);
    if ((sub_1CF9E5658() & 1) == 0)
    {
      v14 = a1;
      a3(0, a1);

      goto LABEL_8;
    }

    a5 = v10;
    a7 = v9;
LABEL_6:
    a5(a7, 0);
    return;
  }

  v12 = a1;
  a3(0, a1);
LABEL_8:
}

void sub_1CF8CB498(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, int a7, unint64_t a8)
{
  v16 = sub_1CF9E5CF8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v21 = v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    v36 = v19;
    sub_1CEFCCBDC(a1, &v37, &unk_1EC4C1B30, &qword_1CFA05300);
    if (!v38)
    {
      sub_1CEFCCC44(&v37, &unk_1EC4C1B30, &qword_1CFA05300);
      sub_1CF24CD3C();
      v33 = swift_allocError();
      *v34 = 4;
      *(v34 + 8) = 0u;
      *(v34 + 24) = 0u;
      *(v34 + 40) = 0;
      *(v34 + 48) = 9;
      a3();

      return;
    }

    sub_1CF054EA0(&v37, v39);
    v23 = *(a5 + 16);
    sub_1CF9042A4(a8);
    v25 = v24;

    v35[3] = a3;
    sub_1CF5DC6A8(a6, a7, a8, v25, v23, a3, a4);

    v35[2] = v39[4];
    v35[1] = __swift_project_boxed_opaque_existential_1(v39, v39[3]);
    v26 = sub_1CF9042A4(a8);
    v28 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1C10, &unk_1CFA0CD80);
    v29 = swift_allocObject();
    *(v29 + 152) = a7;
    *(v29 + 16) = 0u;
    *(v29 + 32) = 0u;
    *(v29 + 48) = 1;
    *(v29 + 56) = 0u;
    *(v29 + 72) = 0u;
    *(v29 + 88) = 0;
    *(v29 + 120) = v26;
    *(v29 + 128) = v28;
    *(v29 + 136) = 0;
    *(v29 + 144) = a6;
    *(v29 + 96) = xmmword_1CFA04E20;
    *(v29 + 112) = 0;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v31 = v30;
    (*(v17 + 8))(v21, v36);
    v32 = v31 * 1000000000.0;
    if (COERCE__INT64(fabs(v31 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v32 > -9.22337204e18)
    {
      if (v32 < 9.22337204e18)
      {
        sub_1CF5215C0(v29);

        __swift_destroy_boxed_opaque_existential_1(v39);
        return;
      }

      goto LABEL_13;
    }

    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  v22 = a2;
  (a3)(a2);
}

uint64_t FPDDomainFPFSBackend.fetchLatestVersion(for:request:completionHandler:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v24 = a4;
  v23 = a3;
  v6 = sub_1CF9E5A58();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C51F0, qword_1CFA17B30);
  v22 = swift_allocBox();
  v12 = v11;
  v13 = *(v10 + 48);
  v14 = *(v7 + 16);
  v14(v11, a1, v6);
  *(v12 + v13) = a2;
  v14(v9, a1, v6);
  v15 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v16 = swift_allocObject();
  v17 = v24;
  *(v16 + 2) = v23;
  *(v16 + 3) = v17;
  v18 = v25;
  *(v16 + 4) = v25;
  (*(v7 + 32))(&v16[v15], v9, v6);
  v19 = a2;

  v20 = v18;
  sub_1CF84D640(a1, 0, v22 | 0xA000000000000000, sub_1CF8F375C, v16);
}

uint64_t sub_1CF8CBCB0(void *a1, uint64_t a2, uint64_t (*a3)(void, void, void, uint64_t, __n128), uint64_t a4, void *a5, uint64_t a6)
{
  v12 = sub_1CF9E5A58();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  if (!a1)
  {
    return a3(0, 0, 0, a2, v15);
  }

  v26 = a5;
  v16 = a1;
  v17 = sub_1CEFD4E9C([v16 identifier]);
  swift_beginAccess();
  if (*(v17 + 41) == 1)
  {

    return a3(0, 0, 0, a2, v15);
  }

  v25 = *(v17 + 40);
  v24 = *(v17 + 32);

  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  *(v19 + 24) = a4;
  (*(v13 + 16))(&v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a6, v12);
  v20 = (*(v13 + 80) + 64) & ~*(v13 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = a3;
  *(v21 + 24) = a4;
  *(v21 + 32) = v24;
  *(v21 + 40) = v25;
  v22 = v26;
  *(v21 + 48) = v16;
  *(v21 + 56) = v22;
  (*(v13 + 32))(v21 + v20, &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  swift_retain_n();
  v23 = v16;

  sub_1CF8EFB34("fetchLatestVersion(for:request:completionHandler:)", 50, 2, sub_1CF8FA5EC, v21, v22, sub_1CF8FA5E8, v19);
}

uint64_t sub_1CF8CBF28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, void *a6, void *a7, uint64_t a8)
{
  v31 = a6;
  v32 = a8;
  v35 = a7;
  v34 = a5;
  v33 = a4;
  v30 = a3;
  v29 = sub_1CF9E5A58();
  v11 = *(v29 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = sub_1CF902D2C;
  v16[3] = v14;
  v16[4] = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1CF8FA6B0;
  *(v17 + 24) = v16;
  v28 = *(a1 + 16);
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1CF8FA6D0;
  *(v18 + 24) = v17;
  v19 = v29;
  (*(v11 + 16))(v13, v32, v29);
  v20 = (*(v11 + 80) + 72) & ~*(v11 + 80);
  v21 = swift_allocObject();
  v22 = v33;
  *(v21 + 16) = a1;
  *(v21 + 24) = v22;
  *(v21 + 32) = v34;
  *(v21 + 40) = sub_1CF8FA6D0;
  *(v21 + 48) = v17;
  v23 = v31;
  v24 = v35;
  *(v21 + 56) = v31;
  *(v21 + 64) = v24;
  (*(v11 + 32))(v21 + v20, v13, v19);
  swift_retain_n();

  v25 = v23;
  v26 = v24;
  sub_1CF7AAF88("fetchLatestVersion(for:request:completionHandler:)", 50, 2, 2, sub_1CF8FA714, v18, sub_1CF8FA74C, v21);
}

void sub_1CF8CC1E8(void *a1, uint64_t a2, unint64_t a3, int a4, void (*a5)(void, void, void, id), uint64_t a6, void *a7, char *a8, uint64_t a9)
{
  v173 = a8;
  v177 = a7;
  v178 = a6;
  v179 = a5;
  LODWORD(v182) = a4;
  v181 = a3;
  v191 = *MEMORY[0x1E69E9840];
  v11 = sub_1CF9E53C8();
  v171 = *(v11 - 1);
  v172 = v11;
  v12 = v171[8];
  MEMORY[0x1EEE9AC00](v11);
  v170 = v159 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1CF9E5A58();
  v168 = *(v14 - 8);
  v169 = v14;
  v15 = *(v168 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v166 = v159 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v164 = v159 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v167 = v159 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBB0, &qword_1CF9FCB90);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v176 = v159 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v24 = *(v23 - 1);
  v174 = v23;
  v175 = v24;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v165 = v159 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = v159 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = v159 - v30;
  v33 = a1[3];
  v32 = a1[4];
  v180 = a1;
  v34 = __swift_project_boxed_opaque_existential_1(a1, v33);
  v35 = *(a2 + 16);
  v36 = *(v35 + 16);
  v188 = v181;
  v189 = v182;

  v37 = v34;
  v38 = v183;
  sub_1CF68DDB0(&v188, v37, v33, v32, v190);
  if (v38)
  {

LABEL_9:
    v51 = *MEMORY[0x1E69E9840];
    return;
  }

  v39 = v180;
  v163 = v25;
  v181 = v15;
  v182 = v28;
  v183 = v31;

  memcpy(v186, v190, sizeof(v186));
  memcpy(v187, v190, sizeof(v187));
  if (sub_1CF08B99C(v187) == 1)
  {
    goto LABEL_7;
  }

  v40 = v187[31];
  if (!v187[31])
  {
    sub_1CEFCCC44(v186, &unk_1EC4BFC20, &unk_1CFA0A290);
LABEL_7:
    v48 = v177;
LABEL_8:
    v49 = [v48 identifier];
    v50 = FPItemNotFoundError();

    v179(0, 0, 0, v50);
    goto LABEL_9;
  }

  v41 = v39;
  v42 = *(v39 + 24);
  v162 = v41[4];
  v43 = __swift_project_boxed_opaque_existential_1(v41, v42);
  v44 = *(v35 + 40);
  v185[0] = v40;
  v45 = *(*v44 + 240);
  v46 = v40;

  v47 = v176;
  v45(v185, 1, v43, v42, v162);

  v52 = v46;
  v53 = (*(v175 + 48))(v47, 1, v174);
  v54 = v177;
  if (v53 == 1)
  {

    sub_1CEFCCC44(v186, &unk_1EC4BFC20, &unk_1CFA0A290);
    v55 = &unk_1EC4BFBB0;
    v56 = &qword_1CF9FCB90;
    v57 = v47;
LABEL_14:
    sub_1CEFCCC44(v57, v55, v56);
    v48 = v54;
    goto LABEL_8;
  }

  v58 = v183;
  sub_1CEFE55D0(v47, v183, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
  if (v187[37] == 1)
  {
    sub_1CEFCCC44(v186, &unk_1EC4BFC20, &unk_1CFA0A290);

    v55 = &unk_1EC4BFBD0;
    v56 = &unk_1CF9FCBC0;
    v57 = v58;
    goto LABEL_14;
  }

  if (LOBYTE(v187[57]) == 1)
  {
    v184 = 22;
    sub_1CEFCCBDC(&v187[35], v185, &unk_1EC4BF2D0, &unk_1CF9FEF20);
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CEFCCCA4(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
    v59 = v170;
    v60 = v172;
    sub_1CF9E57D8();
    v61 = sub_1CF9E53A8();
    (v171[1])(v59, v60);
    v179(0, 0, 0, v61);

    sub_1CEFCCC44(&v187[35], &unk_1EC4BF2D0, &unk_1CF9FEF20);
    sub_1CEFCCC44(v186, &unk_1EC4BFC20, &unk_1CFA0A290);
    sub_1CEFCCC44(v58, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
    goto LABEL_9;
  }

  v174 = v52;
  v180 = v187[36];
  v177 = v187[38];
  v176 = v187[39];
  v161 = v187[41];
  v170 = v187[42];
  v171 = v187[35];
  v62 = v58[2];
  v63 = v58[3];
  v64 = v58[5];
  v65 = v58[6];
  v66 = v58[8];
  v67 = v58[9];
  sub_1CEFCCBDC(&v187[35], v185, &unk_1EC4BF2D0, &unk_1CF9FEF20);
  sub_1CEFE42D4(v62, v63);
  sub_1CEFE42D4(v64, v65);
  v172 = v62;
  v68 = sub_1CF9E5B48();
  v69 = sub_1CF9E5B48();
  v162 = 0;
  v159[1] = v66;
  v160 = v67;
  if (v67)
  {
    v67 = sub_1CF9E6888();
  }

  v70 = objc_opt_self();
  v71 = [objc_allocWithZone(MEMORY[0x1E69674E8]) initWithContentVersion:v68 metadataVersion:v69 lastEditorDeviceName:v67];

  sub_1CEFE4714(v64, v65);
  sub_1CEFE4714(v172, v63);
  v72 = *&v173[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_providerDomainID];
  v172 = v70;
  v73 = [v70 etagForVersion:v71 providerDomainID:v72];

  v74 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v76 = v75;

  v77 = v171;
  sub_1CEFE42D4(v171, v180);
  sub_1CEFE42D4(v177, v176);
  v78 = sub_1CF9E5B48();
  v79 = sub_1CF9E5B48();
  if (v170)
  {
    v80 = sub_1CF9E6888();
  }

  else
  {
    v80 = 0;
  }

  v81 = [objc_allocWithZone(MEMORY[0x1E69674E8]) initWithContentVersion:v78 metadataVersion:v79 lastEditorDeviceName:v80];

  sub_1CEFE4714(v177, v176);
  sub_1CEFE4714(v77, v180);
  v82 = [v172 etagForVersion:v81 providerDomainID:v72];

  v83 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v85 = v84;

  if (v83 == v74 && v85 == v76)
  {

    v86 = v183;
    v179(0, 0, 0, 0);
LABEL_27:

    sub_1CEFCCC44(&v187[35], &unk_1EC4BF2D0, &unk_1CF9FEF20);
    sub_1CEFCCC44(v186, &unk_1EC4BFC20, &unk_1CFA0A290);
    v88 = v86;
LABEL_42:
    sub_1CEFCCC44(v88, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
    goto LABEL_9;
  }

  v87 = sub_1CF9E8048();

  v86 = v183;
  if (v87)
  {
    v179(0, 0, 0, 0);
    goto LABEL_27;
  }

  v89 = objc_allocWithZone(MEMORY[0x1E69673A0]);
  v177 = [v89 initWithProviderDomainID:v72 itemIdentifier:v174];
  type metadata accessor for GSRemoteVersionsManager();
  v90 = swift_allocObject();
  v91 = [objc_allocWithZone(FPGSStorageManager) init];
  v180 = v90;
  *(v90 + 16) = v91;
  v92 = v86[2];
  v93 = v86[3];
  v94 = v86[5];
  v95 = v86[6];
  sub_1CEFE42D4(v92, v93);
  sub_1CEFE42D4(v94, v95);
  v96 = sub_1CF9E5B48();
  v97 = sub_1CF9E5B48();
  if (v160)
  {
    v98 = sub_1CF9E6888();
  }

  else
  {
    v98 = 0;
  }

  v176 = [objc_allocWithZone(MEMORY[0x1E69674E8]) initWithContentVersion:v96 metadataVersion:v97 lastEditorDeviceName:v98];

  sub_1CEFE4714(v94, v95);
  sub_1CEFE4714(v92, v93);
  v99 = v177;
  sub_1CF9E5878();
  v100 = sub_1CF9E6888();

  v101 = v176;
  v102 = [v172 versionFaultName:v176 identifier:v99 ext:v100];

  v177 = v99;
  v103 = v102;
  if (!v102)
  {
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v103 = sub_1CF9E6888();
  }

  v104 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v176 = v105;
  v106 = *MEMORY[0x1E69A0798];
  v107 = *(v168 + 16);
  v107(v167, a9, v169);
  sub_1CEFCCBDC(v183, v182, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v108 = v180[2];
  v109 = v106;
  v110 = sub_1CF9E5928();
  v185[0] = 0;
  v111 = [v108 permanentStorageForItemAtURL:v110 allocateIfNone:0 error:v185];

  v112 = v185[0];
  if (!v111)
  {
    v172 = v104;
    v129 = v185[0];

    v130 = sub_1CF9E57F8();
    v171 = v130;
    swift_willThrow();
LABEL_40:
    v162 = 0;
    v133 = v182;
    v134 = swift_allocObject();
    v170 = v134;
    v135 = v178;
    *(v134 + 16) = v179;
    *(v134 + 24) = v135;
    v107(v166, v167, v169);
    sub_1CEFCCBDC(v133, v165, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
    v136 = v168;
    v137 = (*(v168 + 80) + 48) & ~*(v168 + 80);
    v181 = (v181 + v137 + 7) & 0xFFFFFFFFFFFFFFF8;
    v138 = (v181 + 15) & 0xFFFFFFFFFFFFFFF8;
    v139 = (*(v175 + 80) + v138 + 8) & ~*(v175 + 80);
    v140 = (v163 + v139 + 7) & 0xFFFFFFFFFFFFFFF8;
    v141 = swift_allocObject();
    v142 = v174;
    v143 = v179;
    *(v141 + 2) = v174;
    *(v141 + 3) = v143;
    v144 = v177;
    *(v141 + 4) = v135;
    *(v141 + 5) = v144;
    (*(v136 + 32))(&v141[v137], v166, v169);
    v145 = v173;
    v146 = v180;
    *&v141[v181] = v173;
    *&v141[v138] = v146;
    sub_1CEFE55D0(v165, &v141[v139], &unk_1EC4BFBD0, &unk_1CF9FCBC0);
    v147 = &v141[v140];
    v148 = v176;
    *v147 = v172;
    *(v147 + 1) = v148;
    swift_retain_n();
    v118 = v142;
    v128 = v177;
    v149 = v170;

    v150 = v145;
    v125 = v167;
    v151 = v150;

    sub_1CF8EFB34("fetchLatestVersion(for:request:completionHandler:)", 50, 2, sub_1CF8FA810, v141, v151, sub_1CF902D2C, v149);

    sub_1CEFCCC44(&v187[35], &unk_1EC4BF2D0, &unk_1CF9FEF20);

    v120 = v182;

    sub_1CEFCCC44(v186, &unk_1EC4BFC20, &unk_1CFA0A290);
    v126 = v168;
LABEL_41:

    sub_1CEFCCC44(v120, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
    (*(v126 + 8))(v125, v169);
    v88 = v183;
    goto LABEL_42;
  }

  v185[0] = 0;
  v113 = v112;
  v114 = [v111 additionWithName:v103 inNameSpace:v109 error:v185];

  v115 = v185[0];
  if (!v114)
  {
    v172 = v104;
    v131 = v185[0];
    v132 = sub_1CF9E57F8();

    v171 = v132;
    swift_willThrow();

    goto LABEL_40;
  }

  v116 = v114;
  v117 = v115;
  v118 = v116;
  v119 = [v116 url];
  v120 = v182;
  if (v119)
  {
    v121 = v119;

    sub_1CEFD57E0(0, &unk_1EDEA35A0, 0x1E6967408);
    v122 = v164;
    sub_1CF9E59D8();

    v123 = v162;
    v124 = sub_1CF02BFF8(v122, 1);
    v125 = v167;
    v126 = v168;
    if (v123)
    {
      v127 = v123;
      v179(0, 0, 0, v123);
      sub_1CEFCCC44(&v187[35], &unk_1EC4BF2D0, &unk_1CF9FEF20);

      v128 = v116;

      sub_1CEFCCC44(v186, &unk_1EC4BFC20, &unk_1CFA0A290);
      v162 = 0;
      v118 = v177;
    }

    else
    {
      v152 = v124;
      v162 = 0;
      v153 = [v116 name];
      if (v153)
      {
        v154 = v153;
        v155 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v157 = v156;
      }

      else
      {
        v155 = 0;
        v157 = 0;
      }

      v158 = v152;
      v179(v155, v157, v152, 0);
      sub_1CEFCCC44(&v187[35], &unk_1EC4BF2D0, &unk_1CF9FEF20);

      sub_1CEFCCC44(v186, &unk_1EC4BFC20, &unk_1CFA0A290);

      v128 = v158;
      v126 = v168;
      v120 = v182;
    }

    goto LABEL_41;
  }

  __break(1u);
}

uint64_t sub_1CF8CD304(uint64_t a1, void *a2, char *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, void *a11)
{
  v120 = a8;
  materialization_alignment = a7;
  v115 = a6;
  v117 = a5;
  v108[1] = a4;
  v136 = a3;
  v118 = a2;
  v113 = a1;
  v122 = a11;
  v121 = a10;
  v112 = a9;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v125 = v108 - v15;
  v131 = sub_1CF9E63D8();
  v138 = *(v131 - 8);
  v16 = *(v138 + 64);
  MEMORY[0x1EEE9AC00](v131);
  v126 = v108 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v130 = v108 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v123 = v108 - v21;
  v22 = sub_1CF9E6448();
  v128 = *(v22 - 8);
  v129 = v22;
  v23 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v124 = v108 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v135 = v108 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v127 = v108 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v137 = v108 - v31;
  v134 = sub_1CF9E6118();
  v132 = *(v134 - 8);
  v32 = v132[8];
  MEMORY[0x1EEE9AC00](v134);
  v116 = v108 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v114 = *(v34 - 8);
  v35 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v37 = v108 - v36;
  v111 = v108 - v36;
  v38 = sub_1CF9E5A58();
  v109 = v38;
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v110 = v108 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = *(*(*(a1 + 16) + 40) + 16);
  type metadata accessor for FPFileTree();
  v133 = swift_dynamicCastClassUnconditional();
  (*(v39 + 16))(v108 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0), v115, v38);
  sub_1CEFCCBDC(v112, v37, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v41 = (*(v39 + 80) + 40) & ~*(v39 + 80);
  v42 = (v40 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = (v42 + 15) & 0xFFFFFFFFFFFFFFF8;
  v44 = (v43 + 15) & 0xFFFFFFFFFFFFFFF8;
  v45 = (v44 + 15) & 0xFFFFFFFFFFFFFFF8;
  v46 = (*(v114 + 80) + v45 + 8) & ~*(v114 + 80);
  v47 = swift_allocObject();
  *(v47 + 2) = v136;
  *(v47 + 3) = a4;
  v48 = v117;
  *(v47 + 4) = v117;
  (*(v39 + 32))(&v47[v41], v110, v109);
  *&v47[v42] = v113;
  v49 = v118;
  *&v47[v43] = v118;
  v50 = materialization_alignment;
  *&v47[v44] = materialization_alignment;
  *&v47[v45] = v120;
  sub_1CEFE55D0(v111, &v47[v46], &unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v136 = v47;
  v51 = &v47[(v35 + v46 + 7) & 0xFFFFFFFFFFFFFFF8];
  v52 = v122;
  *v51 = v121;
  *(v51 + 1) = v52;

  v53 = v48;

  v54 = v49;
  v55 = v50;
  v56 = v116;

  v57 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v58 = sub_1CF9E6108();
  v59 = sub_1CF9E7288();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    aBlock = v61;
    *v60 = 136315138;
    *(v60 + 4) = sub_1CEFD0DF0(7104878, 0xE300000000000000, &aBlock);
    _os_log_impl(&dword_1CEFC7000, v58, v59, "⚔️  Fetching version %s...", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v61);
    MEMORY[0x1D386CDC0](v61, -1, -1);
    MEMORY[0x1D386CDC0](v60, -1, -1);
  }

  (v132[1])(v56, v134);
  v62 = swift_allocObject();
  v63 = v136;
  v62[2] = sub_1CF8FA950;
  v62[3] = v63;
  v64 = v133;
  v62[4] = v54;
  v62[5] = v64;
  v62[6] = 7104878;
  v62[7] = 0xE300000000000000;
  v65 = swift_allocObject();
  *(v65 + 16) = nullsub_1;
  *(v65 + 24) = 0;
  v66 = swift_allocObject();
  v66[2] = v64;
  v66[3] = v65;
  v66[4] = sub_1CF2F5CBC;
  v66[5] = v62;
  v132 = v66;

  v67 = v54;

  v134 = v65;

  v120 = v62;

  materialization_alignment = fpfs_get_materialization_alignment();
  v68 = *(v64 + 160);
  v121 = *(v64 + 168);
  v122 = v68;
  sub_1CF9E6418();
  qos_class_self();
  v69 = v125;
  sub_1CF9E63B8();
  v70 = v138;
  v71 = *(v138 + 48);
  v72 = v131;
  v73 = v71(v69, 1, v131);
  v74 = v130;
  if (v73 == 1)
  {
    (*(v70 + 104))(v123, *MEMORY[0x1E69E7FA0], v72);
    if (v71(v69, 1, v72) != 1)
    {
      sub_1CEFCCC44(v69, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v70 + 32))(v123, v69, v72);
  }

  v75 = v124;
  sub_1CF9E6428();
  sub_1CF9E6438();
  v76 = sub_1CF9E63C8();
  v77 = *(v70 + 8);
  v138 = v70 + 8;
  v77(v74, v72);
  v78 = v126;
  v79 = v135;
  sub_1CF9E6438();
  v80 = sub_1CF9E63C8();
  v126 = v77;
  v77(v78, v72);
  v81 = v128;
  v82 = *(v128 + 8);
  if (v76 >= v80)
  {
    v83 = v75;
  }

  else
  {
    v83 = v79;
  }

  if (v76 >= v80)
  {
    v84 = v79;
  }

  else
  {
    v84 = v75;
  }

  v85 = v129;
  v135 = *(v128 + 8);
  v82(v83, v129);
  v86 = v137;
  (*(v81 + 32))(v137, v84, v85);
  (*(v81 + 56))(v86, 0, 1, v85);
  v87 = swift_allocObject();
  *(v87 + 16) = v133;
  *(v87 + 24) = 0;
  *(v87 + 32) = v67;
  *(v87 + 40) = 8;
  *(v87 + 48) = 0u;
  *(v87 + 64) = 0u;
  *(v87 + 80) = 1;
  *(v87 + 88) = 0u;
  *(v87 + 104) = 0u;
  *(v87 + 120) = 0;
  *(v87 + 128) = sub_1CF2F5AE8;
  v88 = v67;
  v89 = v132;
  *(v87 + 136) = v132;
  *(v87 + 144) = 0;
  v90 = materialization_alignment;
  *(v87 + 152) = 0;
  *(v87 + 160) = v90;
  *(v87 + 168) = v134;
  v91 = swift_allocObject();
  v91[2] = sub_1CF2F5AE8;
  v91[3] = v89;
  v92 = v121;
  v91[4] = v121;
  swift_retain_n();

  v93 = v88;

  v94 = fpfs_current_log();
  v95 = *(v92 + 16);
  v96 = *(v81 + 48);
  v97 = v96(v86, 1, v85);
  v98 = v86;
  v99 = v127;
  sub_1CEFCCBDC(v98, v127, &unk_1EC4BE370, qword_1CFA01B30);
  if (v96(v99, 1, v85) == 1)
  {
    sub_1CEFCCC44(v99, &unk_1EC4BE370, qword_1CFA01B30);
    v100 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v101 = v130;
    sub_1CF9E6438();
    (v135)(v99, v85);
    v100 = sub_1CF9E63C8();
    (v126)(v101, v131);
  }

  if (v97 == 1)
  {
    v102 = DISPATCH_BLOCK_INHERIT_QOS_CLASS;
  }

  else
  {
    v102 = DISPATCH_BLOCK_ENFORCE_QOS_CLASS;
  }

  v103 = swift_allocObject();
  v103[2] = v94;
  v103[3] = sub_1CF2F5AF4;
  v103[4] = v87;
  v144 = sub_1CF2BA17C;
  v145 = v103;
  aBlock = MEMORY[0x1E69E9820];
  v141 = 1107296256;
  v142 = sub_1CEFCA444;
  v143 = &block_descriptor_2475;
  v104 = _Block_copy(&aBlock);
  v105 = v94;

  v144 = sub_1CF2F55E4;
  v145 = v91;
  aBlock = MEMORY[0x1E69E9820];
  v141 = 1107296256;
  v142 = sub_1CEFCA444;
  v143 = &block_descriptor_2478;
  v106 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v95, v122, v102, v100, v104, v106);

  _Block_release(v106);
  _Block_release(v104);

  sub_1CEFCCC44(v137, &unk_1EC4BE370, qword_1CFA01B30);
}

void sub_1CF8CE080(uint64_t a1, void (*a2)(void, void, void, void *), void *a3, uint64_t a4, unint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v148 = a8;
  v140 = a7;
  v141 = a6;
  v147 = a5;
  v151 = a4;
  v149 = a3;
  v14 = sub_1CF9E63D8();
  v128 = *(v14 - 8);
  v15 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v118 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v142 = &v118 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v152 = &v118 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v135 = *(v23 - 8);
  v136 = *(v135 + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v146 = &v118 - v24;
  v138 = sub_1CF9E5A58();
  v137 = *(v138 - 8);
  v25 = *(v137 + 64);
  MEMORY[0x1EEE9AC00](v138);
  v145 = (&v118 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v132 = v26;
  MEMORY[0x1EEE9AC00](v27);
  v144 = &v118 - v28;
  v129 = type metadata accessor for StagedRemoteVersion(0);
  v130 = *(v129 - 8);
  v29 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v129);
  v139 = &v118 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = (&v118 - v31);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5A90, &qword_1CFA01BD0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33);
  v36 = (&v118 - v35);
  sub_1CEFCCBDC(a1, &v118 - v35, &unk_1EC4C5A90, &qword_1CFA01BD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v37 = *v36;
    v38 = v37;
    a2(0, 0, 0, v37);
  }

  else
  {
    v127 = a2;
    v119 = v17;
    v120 = v14;
    v125 = a10;
    sub_1CEFDA0C4(v36, v32, type metadata accessor for StagedRemoteVersion);
    v143 = v32;
    v121 = *v32;
    sub_1CF06BC9C(&v165);
    v39 = v165;
    v40 = v166;
    v41 = v167;
    v42 = v168;
    v43 = v169;
    sub_1CEFE42D4(v165, v166);
    sub_1CEFE42D4(v41, v42);
    v44 = sub_1CF9E5B48();
    v45 = sub_1CF9E5B48();
    if (v43)
    {
      v43 = sub_1CF9E6888();
    }

    v126 = a12;
    v124 = a11;
    v131 = a9;
    v46 = objc_opt_self();
    v47 = [objc_allocWithZone(MEMORY[0x1E69674E8]) initWithContentVersion:v44 metadataVersion:v45 lastEditorDeviceName:v43];

    sub_1CEFE4714(v41, v42);
    sub_1CEFE4714(v39, v40);
    sub_1CEFCCC44(&v165, &unk_1EC4BF250, &unk_1CFA01B50);
    sub_1CF9E5878();
    v48 = sub_1CF9E6888();

    v49 = [v46 versionFaultName:v47 identifier:v151 ext:v48];

    v123 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v122 = v50;

    v151 = swift_allocObject();
    *(v151 + 16) = 0;
    v150 = swift_allocObject();
    *(v150 + 16) = xmmword_1CF9F4E20;
    v51 = *(*(*(v141 + 16) + 40) + 16);
    type metadata accessor for FPFileTree();
    v134 = swift_dynamicCastClassUnconditional();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC20, &qword_1CF9FE480);
    v133 = swift_allocObject();
    *(v133 + 16) = xmmword_1CFA00250;
    v141 = v51;

    sub_1CF06BC9C(&v160);
    v52 = v160;
    v53 = v161;
    v54 = v162;
    v55 = v163;
    v56 = v164;
    sub_1CEFE42D4(v160, v161);
    sub_1CEFE42D4(v54, v55);
    v57 = sub_1CF9E5B48();
    v58 = sub_1CF9E5B48();
    if (v56)
    {
      v59 = sub_1CF9E6888();
    }

    else
    {
      v59 = 0;
    }

    v60 = *(v129 + 20);
    v61 = [objc_allocWithZone(MEMORY[0x1E69674E8]) initWithContentVersion:v57 metadataVersion:v58 lastEditorDeviceName:v59];

    sub_1CEFE4714(v54, v55);
    sub_1CEFE4714(v52, v53);
    sub_1CEFCCC44(&v160, &unk_1EC4BF250, &unk_1CFA01B50);
    *(v133 + 32) = v61;
    v62 = v143;
    v63 = v139;
    sub_1CEFDA34C(v143, v139, type metadata accessor for StagedRemoteVersion);
    v64 = (*(v130 + 80) + 16) & ~*(v130 + 80);
    v65 = (v29 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
    v66 = (v65 + 15) & 0xFFFFFFFFFFFFFFF8;
    v67 = swift_allocObject();
    sub_1CEFDA0C4(v63, v67 + v64, type metadata accessor for StagedRemoteVersion);
    *(v67 + v65) = v148;
    *(v67 + v66) = v151;
    v139 = v67;
    *(v67 + ((v66 + 15) & 0xFFFFFFFFFFFFFFF8)) = v150;
    v68 = v137;
    v69 = *(v137 + 16);
    v70 = v138;
    v69(v144, v147, v138);
    v69(v145, v62 + v60, v70);
    sub_1CEFCCBDC(v125, v146, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
    v71 = *(v68 + 80);
    v72 = (v71 + 24) & ~v71;
    v73 = (v132 + 7 + v72) & 0xFFFFFFFFFFFFFFF8;
    v74 = (v71 + v73 + 16) & ~v71;
    v147 = (v132 + 7 + v74) & 0xFFFFFFFFFFFFFFF8;
    v75 = (v147 + 15) & 0xFFFFFFFFFFFFFFF8;
    v76 = (*(v135 + 80) + v75 + 8) & ~*(v135 + 80);
    v77 = (v136 + v76 + 7) & 0xFFFFFFFFFFFFFFF8;
    v136 = (v77 + 23) & 0xFFFFFFFFFFFFFFF8;
    v78 = swift_allocObject();
    *(v78 + 16) = v131;
    v79 = *(v68 + 32);
    v79(v78 + v72, v144, v70);
    v80 = (v78 + v73);
    v81 = v122;
    *v80 = v123;
    v80[1] = v81;
    v79(v78 + v74, v145, v70);
    *(v78 + v147) = v151;
    *(v78 + v75) = v150;
    sub_1CEFE55D0(v146, v78 + v76, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
    v82 = (v78 + v77);
    v83 = v149;
    *v82 = v127;
    v82[1] = v83;
    v147 = v78;
    v84 = (v78 + v136);
    v85 = v126;
    *v84 = v124;
    v84[1] = v85;
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_retain_n();
    swift_retain_n();
    v87 = v148;

    if (Strong)
    {
      v88 = [Strong session];
    }

    else
    {
      v88 = 0;
    }

    v89 = type metadata accessor for FPFileTreeLifetimeExtender();
    v90 = objc_allocWithZone(v89);
    *&v90[OBJC_IVAR____TtC18FileProviderDaemonP33_CD7CE1CB66854C72A9E33E2FB2B98DFB26FPFileTreeLifetimeExtender_timeoutState] = 0;
    v91 = v140;
    *&v90[OBJC_IVAR____TtC18FileProviderDaemonP33_CD7CE1CB66854C72A9E33E2FB2B98DFB26FPFileTreeLifetimeExtender_itemIdentifier] = v140;
    v92 = objc_opt_self();
    v149 = v91;
    v93 = [v92 requestForSelf];
    *&v90[OBJC_IVAR____TtC18FileProviderDaemonP33_CD7CE1CB66854C72A9E33E2FB2B98DFB26FPFileTreeLifetimeExtender_requestor] = v93;
    v94 = [objc_opt_self() defaultStore];
    if ([v94 hasUpcallExecutionTimeLimits])
    {
      goto LABEL_15;
    }

    if (qword_1EC4BCCF0 != -1)
    {
      swift_once();
    }

    v95 = -1.0;
    if (byte_1EC4BF020 == 1)
    {
LABEL_15:
      [v94 upcallExecutionTimeLimitBase];
      v95 = v96;
    }

    *&v90[OBJC_IVAR____TtC18FileProviderDaemonP33_CD7CE1CB66854C72A9E33E2FB2B98DFB26FPFileTreeLifetimeExtender_timeout] = v95;
    v159.receiver = v90;
    v159.super_class = v89;
    v97 = objc_msgSendSuper2(&v159, sel_init);
    if (v88)
    {
      [v88 registerLifetimeExtensionForObject_];
    }

    v98 = v134;
    v99 = *(v134 + 168);
    v148 = *(v134 + 160);
    v100 = sub_1CF9E6448();
    v145 = *(v100 - 8);
    v145[7](v152, 1, 1, v100);
    v101 = swift_allocObject();
    v102 = v147;
    *(v101 + 16) = sub_1CF8FABC0;
    *(v101 + 24) = v102;
    v103 = swift_allocObject();
    v104 = v139;
    *(v103 + 16) = sub_1CF8FAAB0;
    *(v103 + 24) = v104;
    *(v103 + 32) = v98;
    v105 = v149;
    v106 = v133;
    *(v103 + 40) = v149;
    *(v103 + 48) = v106;
    *(v103 + 56) = vdupq_n_s64(0x4090000000000000uLL);
    *(v103 + 72) = v88;
    *(v103 + 80) = v97;
    *(v103 + 88) = sub_1CF8FABC0;
    *(v103 + 96) = v102;
    v107 = swift_allocObject();
    v107[2] = sub_1CF90324C;
    v107[3] = v101;
    v107[4] = v99;
    v108 = v145;
    swift_retain_n();

    v109 = v105;

    swift_unknownObjectRetain();
    v149 = v97;

    v110 = fpfs_current_log();
    v146 = *(v99 + 16);
    v111 = v142;
    sub_1CEFCCBDC(v152, v142, &unk_1EC4BE370, qword_1CFA01B30);
    if ((v108[6])(v111, 1, v100) == 1)
    {
      sub_1CEFCCC44(v111, &unk_1EC4BE370, qword_1CFA01B30);
      v112 = QOS_CLASS_UNSPECIFIED;
    }

    else
    {
      v113 = v119;
      sub_1CF9E6438();
      (v108[1])(v111, v100);
      v112 = sub_1CF9E63C8();
      (*(v128 + 8))(v113, v120);
    }

    v114 = swift_allocObject();
    v114[2] = v110;
    v114[3] = sub_1CF8FAD38;
    v114[4] = v103;
    v157 = sub_1CF2BA17C;
    v158 = v114;
    aBlock = MEMORY[0x1E69E9820];
    v154 = 1107296256;
    v155 = sub_1CEFCA444;
    v156 = &block_descriptor_2508;
    v115 = _Block_copy(&aBlock);
    v116 = v110;

    v157 = sub_1CF2BA180;
    v158 = v107;
    aBlock = MEMORY[0x1E69E9820];
    v154 = 1107296256;
    v155 = sub_1CEFCA444;
    v156 = &block_descriptor_2511;
    v117 = _Block_copy(&aBlock);

    fp_task_tracker_async_and_qos(v146, v148, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v112, v115, v117);
    _Block_release(v117);
    _Block_release(v115);
    swift_unknownObjectRelease();

    sub_1CEFD5338(v143, type metadata accessor for StagedRemoteVersion);
    sub_1CEFCCC44(v152, &unk_1EC4BE370, qword_1CFA01B30);
  }
}

uint64_t sub_1CF8CF150(uint64_t a1, NSObject *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, _DWORD *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v90 = a7;
  v91 = a2;
  v15 = sub_1CF9E5A58();
  v16 = *(v15 - 8);
  isa = v16[8].isa;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for StagedRemoteVersion(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = (&v85 - v25);
  v27 = sub_1CF9E6118();
  v92 = *(v27 - 8);
  v93 = v27;
  v28 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v27);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v85 - v31;
  if (a8)
  {
    v33 = a8;
    v34 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    sub_1CEFDA34C(a9, v26, type metadata accessor for StagedRemoteVersion);
    v35 = a8;
    v36 = sub_1CF9E6108();
    v37 = sub_1CF9E72A8();

    if (os_log_type_enabled(v36, v37))
    {
      v87 = v32;
      LODWORD(v89) = v37;
      v91 = v36;
      v38 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v90 = v38;
      *v38 = 138412546;
      v39 = *v26;
      sub_1CF06BC9C(&v95);
      v40 = v95;
      v41 = v96;
      v43 = v97;
      v42 = v98;
      v44 = v99;
      sub_1CEFE42D4(v95, v96);
      sub_1CEFE42D4(v43, v42);
      v45 = sub_1CF9E5B48();
      v46 = sub_1CF9E5B48();
      if (v44)
      {
        v44 = sub_1CF9E6888();
      }

      v47 = [objc_allocWithZone(MEMORY[0x1E69674E8]) initWithContentVersion:v45 metadataVersion:v46 lastEditorDeviceName:v44];

      sub_1CEFE4714(v43, v42);
      sub_1CEFE4714(v40, v41);
      sub_1CEFCCC44(&v95, &unk_1EC4BF250, &unk_1CFA01B50);
      sub_1CEFD5338(v26, type metadata accessor for StagedRemoteVersion);
      v48 = v90;
      *(v90 + 1) = v47;
      v49 = v88;
      *v88 = v47;
      *(v48 + 6) = 2112;
      swift_getErrorValue();
      v50 = Error.prettyDescription.getter(v94);
      *(v48 + 14) = v50;
      v49[1] = v50;
      v51 = v91;
      _os_log_impl(&dword_1CEFC7000, v91, v89, "failed to fetch thumbnail for version %@: %@", v48, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE350, &unk_1CF9FC3B0);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v49, -1, -1);
      MEMORY[0x1D386CDC0](v48, -1, -1);

      return (*(v92 + 8))(v87, v93);
    }

    v65 = v26;
LABEL_16:
    sub_1CEFD5338(v65, type metadata accessor for StagedRemoteVersion);
    return (*(v92 + 8))(v32, v93);
  }

  v85 = v15;
  v86 = v16;
  v87 = v23;
  v89 = v30;
  v88 = a6;
  sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
  v53 = sub_1CF93CF34();
  v54 = v91;
  v55 = sub_1CF9E7568();

  if (v55)
  {
    if (a3)
    {
      v56 = a3;
      v57 = [v56 url];
      sub_1CF9E59D8();

      MEMORY[0x1EEE9AC00](v58);
      *(&v85 - 2) = v19;
      *(&v85 - 1) = a10;
      sub_1CF9E59B8();

      (v86[1].isa)(v19, v85);
    }

    swift_beginAccess();
    v59 = *(a11 + 16);
    *(a11 + 16) = a3;
    v60 = a3;

    swift_beginAccess();
    v61 = *(a12 + 16);
    v62 = *(a12 + 24);
    v63 = v88;
    v64 = v90;
    *(a12 + 16) = v88;
    *(a12 + 24) = v64;
    sub_1CEFF05F4(v63, v64);
    return sub_1CEFE48D8(v61, v62);
  }

  else
  {
    v66 = fpfs_current_or_default_log();
    v32 = v89;
    sub_1CF9E6128();
    v67 = v87;
    sub_1CEFDA34C(a9, v87, type metadata accessor for StagedRemoteVersion);
    v68 = v54;
    v69 = sub_1CF9E6108();
    v70 = sub_1CF9E72A8();

    if (!os_log_type_enabled(v69, v70))
    {

      v65 = v67;
      goto LABEL_16;
    }

    v86 = v69;
    LODWORD(v90) = v70;
    v71 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v91 = v71;
    LODWORD(v71->isa) = 138412546;
    v72 = *v67;
    sub_1CF06BC9C(&v95);
    v73 = v95;
    v74 = v96;
    v76 = v97;
    v75 = v98;
    v77 = v99;
    sub_1CEFE42D4(v95, v96);
    sub_1CEFE42D4(v76, v75);
    v78 = sub_1CF9E5B48();
    v79 = sub_1CF9E5B48();
    if (v77)
    {
      v77 = sub_1CF9E6888();
    }

    v80 = [objc_allocWithZone(MEMORY[0x1E69674E8]) initWithContentVersion:v78 metadataVersion:v79 lastEditorDeviceName:v77];

    sub_1CEFE4714(v76, v75);
    sub_1CEFE4714(v73, v74);
    sub_1CEFCCC44(&v95, &unk_1EC4BF250, &unk_1CFA01B50);
    sub_1CEFD5338(v67, type metadata accessor for StagedRemoteVersion);
    v81 = v91;
    *(&v91->isa + 4) = v80;
    WORD2(v81[1].isa) = 2112;
    *(&v81[1].isa + 6) = v68;
    v82 = v88;
    *v88 = v80;
    v82[1] = v68;
    v83 = v68;
    v84 = v86;
    _os_log_impl(&dword_1CEFC7000, v86, v90, "version mismatch for thumbnail %@ != %@", v81, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE350, &unk_1CF9FC3B0);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v82, -1, -1);
    MEMORY[0x1D386CDC0](v81, -1, -1);

    return (*(v92 + 8))(v89, v93);
  }
}

uint64_t sub_1CF8CF9B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t, uint64_t, id, id), uint64_t a11, uint64_t a12, uint64_t a13)
{
  v197 = a6;
  v202 = a5;
  v203 = a4;
  v211 = a3;
  v218 = a13;
  v216 = a12;
  v217 = a11;
  v215 = a10;
  v229 = *MEMORY[0x1E69E9840];
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF008, &unk_1CFA01CB0);
  v16 = *(*(v200 - 8) + 64);
  MEMORY[0x1EEE9AC00](v200);
  v201 = (&v189 - v17);
  v18 = sub_1CF9E5A58();
  v19 = *(v18 - 1);
  v219 = v18;
  v220 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v21);
  v193 = &v189 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v192 = &v189 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v189 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v195 = &v189 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v207 = (&v189 - v31);
  v32 = sub_1CF9E6118();
  v209 = *(v32 - 8);
  v210 = v32;
  v33 = *(v209 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v204 = &v189 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v191 = &v189 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v189 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v194 = &v189 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v189 - v44;
  v213 = sub_1CF4E04E8(MEMORY[0x1E69E7CC0]);
  v46 = *MEMORY[0x1E69A0798];
  v196 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v212 = v47;
  swift_beginAccess();
  v48 = *(a7 + 16);
  v199 = &v189 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = v27;
  if (v48)
  {
    v49 = [v48 url];
    sub_1CF9E59D8();

    v50 = 0;
  }

  else
  {
    v50 = 1;
  }

  v51 = *(v220 + 56);
  v214 = v45;
  v51(v45, v50, 1, v219);
  swift_beginAccess();
  v52 = *(a8 + 16);
  v53 = *(a8 + 24);
  v54 = a9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0) + 48);
  v55 = *(v54 + *(type metadata accessor for ItemMetadata() + 52));
  v56 = swift_allocObject();
  v57 = v216;
  v56[2] = v215;
  v58 = v218;
  v56[3] = v217;
  v56[4] = v57;
  v208 = v56;
  v56[5] = v58;
  v59 = *(a2 + 16);
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  v205 = v52;
  v206 = v53;
  sub_1CEFF05F4(v52, v53);
  v60 = v211;
  v61 = sub_1CF9E5928();
  *&v223 = 0;
  v62 = [v59 permanentStorageForItemAtURL:v61 allocateIfNone:1 error:&v223];

  if (!v62)
  {
    v121 = v223;
    v122 = sub_1CF9E57F8();

    swift_willThrow();
    v110 = v219;
    v111 = v220;
LABEL_22:
    v124 = v204;
    goto LABEL_23;
  }

  v198 = v62;
  v63 = v223;
  sub_1CF9E58E8();
  v64 = sub_1CF9E6888();

  v65 = [v64 fp:v55 displayNameFromFilenameWithHiddenPathExtension:0 isFolder:?];

  v66 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v68 = v67;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CFA001F0;
  v70 = *MEMORY[0x1E69A0788];
  *(inited + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  *(inited + 40) = v71;
  v72 = sub_1CF9E58E8();
  v73 = MEMORY[0x1E69E6158];
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v72;
  *(inited + 56) = v74;
  v75 = *MEMORY[0x1E69A0768];
  *(inited + 80) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  *(inited + 88) = v76;
  *(inited + 120) = v73;
  v77 = v202;
  *(inited + 96) = v203;
  *(inited + 104) = v77;
  v78 = *MEMORY[0x1E69A0758];
  *(inited + 128) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  *(inited + 136) = v79;
  *(inited + 168) = v73;
  *(inited + 144) = v66;
  *(inited + 152) = v68;
  v80 = *MEMORY[0x1E69A0760];
  v81 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v82 = MEMORY[0x1E69E6370];
  *(inited + 176) = v81;
  *(inited + 184) = v83;
  *(inited + 216) = v82;
  *(inited + 192) = 1;
  v84 = *MEMORY[0x1E69A0790];
  *(inited + 224) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  *(inited + 232) = v85;
  *(inited + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0920, &qword_1CFA01CC0);
  *(inited + 240) = v213;
  v86 = *MEMORY[0x1E69A0770];
  *(inited + 272) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  *(inited + 280) = v87;
  *(inited + 312) = v73;
  v88 = v212;
  *(inited + 288) = v196;
  *(inited + 296) = v88;

  v89 = sub_1CF4E04E8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE300, &unk_1CF9FC5D0);
  swift_arrayDestroy();
  v90 = *MEMORY[0x1E69A0780];
  v91 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v93 = v92;
  v94 = MEMORY[0x1E69E76D8];
  v225 = MEMORY[0x1E69E76D8];
  *&v223 = 9;
  sub_1CEFE9EB8(&v223, v228);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v221 = v89;
  sub_1CF1D154C(v228, v91, v93, isUniquelyReferenced_nonNull_native);

  v96 = v221;
  v97 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v99 = v98;
  v225 = v94;
  *&v223 = 1;
  sub_1CEFE9EB8(&v223, v228);
  v100 = swift_isUniquelyReferenced_nonNull_native();
  v221 = v96;
  sub_1CF1D154C(v228, v97, v99, v100);

  v101 = v221;
  v102 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v103 = sub_1CF9E6108();
  v104 = sub_1CF9E7288();

  if (os_log_type_enabled(v103, v104))
  {
    v105 = v101;
    v106 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    *&v223 = v107;
    *v106 = 136315138;
    *(v106 + 4) = sub_1CEFD0DF0(v203, v77, &v223);
    _os_log_impl(&dword_1CEFC7000, v103, v104, "⚔️  Putting remote version %s into Genstore...", v106, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v107);
    MEMORY[0x1D386CDC0](v107, -1, -1);
    v108 = v106;
    v101 = v105;
    MEMORY[0x1D386CDC0](v108, -1, -1);
  }

  v196 = *(v209 + 8);
  v196(v39, v210);
  v109 = v214;
  v110 = v219;
  v111 = v220;
  v112 = sub_1CF9E5928();
  sub_1CF7BA9CC(v101);
  v113 = v101;
  v114 = sub_1CF9E6618();

  *&v223 = 0;
  v115 = v198;
  v116 = [v198 prepareAdditionCreationWithItemAtURL:v112 byMoving:1 creationInfo:v114 error:&v223];

  v117 = v223;
  if (v116)
  {
    v197 = v113;
    sub_1CF9E59D8();
    v118 = v117;

    v119 = v194;
    sub_1CEFCCBDC(v109, v194, &unk_1EC4BE310, qword_1CF9FCBE0);
    if ((*(v111 + 48))(v119, 1, v110) == 1)
    {
      v219 = v20;
      v120 = v110;
      sub_1CEFCCC44(v119, &unk_1EC4BE310, qword_1CF9FCBE0);
      v60 = v211;
LABEL_20:
      v148 = v197;
      v149 = v207;
      v216 = sub_1CF9E5928();
      sub_1CF7BA9CC(v148);

      v215 = sub_1CF9E6618();

      v150 = *(v111 + 16);
      v151 = v192;
      v152 = v60;
      v153 = v120;
      v150(v192, v152, v120);
      v154 = v193;
      v150(v193, v149, v120);
      v155 = *(v111 + 80);
      v156 = (v155 + 32) & ~v155;
      v157 = (v219 + v155 + v156) & ~v155;
      v158 = swift_allocObject();
      v159 = v208;
      *(v158 + 16) = sub_1CF8FAD3C;
      *(v158 + 24) = v159;
      v160 = *(v111 + 32);
      v160(v158 + v156, v151, v153);
      v160(v158 + v157, v154, v153);
      v226 = sub_1CF2FC6C0;
      v227 = v158;
      *&v223 = MEMORY[0x1E69E9820];
      *(&v223 + 1) = 1107296256;
      v224 = sub_1CEFF99E0;
      v225 = &block_descriptor_2520;
      v161 = _Block_copy(&v223);

      v162 = v198;
      v164 = v215;
      v163 = v216;
      [v198 createAdditionStagedAtURL:v216 creationInfo:v215 completionHandler:v161];
      _Block_release(v161);

      (*(v220 + 8))(v207, v153);
      v165 = v214;
      goto LABEL_27;
    }

    v125 = v195;
    (*(v111 + 32))(v195, v119, v110);
    v126 = fpfs_current_or_default_log();
    v127 = v191;
    sub_1CF9E6128();
    v128 = v190;
    (*(v111 + 16))(v190, v125, v110);
    v129 = v202;

    v130 = sub_1CF9E6108();
    v131 = sub_1CF9E7288();

    if (os_log_type_enabled(v130, v131))
    {
      v132 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      *&v223 = v133;
      *v132 = 136315394;
      sub_1CEFCCCA4(&unk_1EDEAB3F0, MEMORY[0x1E6968FB0]);
      LODWORD(v194) = v131;
      v134 = sub_1CF9E7F98();
      v136 = v135;
      v137 = *(v220 + 8);
      v137(v128, v219);
      v138 = sub_1CEFD0DF0(v134, v136, &v223);
      v110 = v219;

      *(v132 + 4) = v138;
      *(v132 + 12) = 2080;
      v139 = v129;
      v140 = v137;
      *(v132 + 14) = sub_1CEFD0DF0(v203, v139, &v223);
      _os_log_impl(&dword_1CEFC7000, v130, v194, "⚔️  associate thumbnail %s for loser %s", v132, 0x16u);
      swift_arrayDestroy();
      v141 = v133;
      v111 = v220;
      MEMORY[0x1D386CDC0](v141, -1, -1);
      MEMORY[0x1D386CDC0](v132, -1, -1);

      v142 = v191;
    }

    else
    {

      v140 = *(v111 + 8);
      v140(v128, v110);
      v142 = v127;
    }

    v196(v142, v210);
    v143 = sub_1CF9E5928();
    v144 = sub_1CF9E5928();
    v60 = v211;
    if (v206 >> 60 == 15)
    {
      v145 = 0;
    }

    else
    {
      v145 = sub_1CF9E5B48();
    }

    *&v223 = 0;
    v146 = [v143 fp:v144 associateThumbnailToVersionAtURL:v145 thumbnailMetadata:&v223 error:?];

    if (v146)
    {
      v219 = v20;
      v147 = v223;
      v120 = v110;
      v140(v195, v110);
      goto LABEL_20;
    }

    v166 = v223;

    v122 = sub_1CF9E57F8();

    swift_willThrow();
    v140(v195, v110);
    v140(v207, v110);
    goto LABEL_22;
  }

  v123 = v223;

  v122 = sub_1CF9E57F8();

  swift_willThrow();
  v124 = v204;
  v60 = v211;
LABEL_23:
  v167 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v168 = v199;
  (*(v111 + 16))(v199, v60, v110);
  v169 = v122;
  v170 = sub_1CF9E6108();
  v171 = sub_1CF9E72A8();

  if (os_log_type_enabled(v170, v171))
  {
    v172 = swift_slowAlloc();
    LODWORD(v211) = v171;
    v173 = v172;
    v207 = swift_slowAlloc();
    v219 = swift_slowAlloc();
    *&v223 = v219;
    *v173 = 136446466;
    v174 = sub_1CF9E5928();
    v175 = v110;
    v176 = [v174 fp_shortDescription];

    v177 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v179 = v178;

    (*(v111 + 8))(v168, v175);
    v180 = sub_1CEFD0DF0(v177, v179, &v223);

    *(v173 + 4) = v180;
    *(v173 + 12) = 2112;
    swift_getErrorValue();
    v181 = Error.prettyDescription.getter(v222);
    *(v173 + 14) = v181;
    v182 = v207;
    *v207 = v181;
    _os_log_impl(&dword_1CEFC7000, v170, v211, "failed to add version to %{public}s: %@", v173, 0x16u);
    sub_1CEFCCC44(v182, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v182, -1, -1);
    v183 = v219;
    __swift_destroy_boxed_opaque_existential_1(v219);
    MEMORY[0x1D386CDC0](v183, -1, -1);
    MEMORY[0x1D386CDC0](v173, -1, -1);

    (*(v209 + 8))(v204, v210);
  }

  else
  {

    (*(v111 + 8))(v168, v110);
    (*(v209 + 8))(v124, v210);
  }

  v184 = v218;
  v165 = v214;
  v185 = v201;
  *v201 = v122;
  swift_storeEnumTagMultiPayload();
  v186 = v122;
  sub_1CF8D0B74(v185, v215, v217, v216, v184);

  sub_1CEFCCC44(v185, &qword_1EC4BF008, &unk_1CFA01CB0);
LABEL_27:

  sub_1CEFE48D8(v205, v206);

  result = sub_1CEFCCC44(v165, &unk_1EC4BE310, qword_1CF9FCBE0);
  v188 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1CF8D0B74(uint64_t a1, void (*a2)(uint64_t, uint64_t, id, id), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v28 = a2;
  v6 = sub_1CF9E5A58();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF008, &unk_1CFA01CB0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v26 - v16);
  sub_1CEFCCBDC(a1, &v26 - v16, &qword_1EC4BF008, &unk_1CFA01CB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    v19 = *v17;
    v28(0, 0, 0, v18);
  }

  else
  {
    v20 = v28;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF010, &unk_1CFA01890);
    (*(v7 + 32))(v13, v17 + *(v21 + 48), v6);
    sub_1CEFD57E0(0, &unk_1EDEA35A0, 0x1E6967408);
    (*(v7 + 16))(v10, v13, v6);
    v22 = (v7 + 8);
    v23 = sub_1CF02BFF8(v10, 1);
    v24 = v23;
    v20(v26, v27, v23, 0);

    v25 = *v22;
    (*v22)(v13, v6);
    v25(v17, v6);
  }
}

void sub_1CF8D10C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v8 = sub_1CF9E6888();
    if (a4)
    {
LABEL_3:
      v9 = sub_1CF9E57E8();
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_6:
  v10 = v9;
  (*(a5 + 16))(a5, v8, a3);
}

uint64_t FPDDomainFPFSBackend.uploadLocalVersionOfItem(at:policy:request:completionHandler:)(uint64_t a1, void *a2, void *a3, void (*a4)(id), uint64_t a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4B00, &unk_1CFA0F490);
  v12 = swift_allocBox();
  v14 = v13;
  v15 = *(v11 + 48);
  v16 = *(v11 + 64);
  v17 = sub_1CF9E5A58();
  (*(*(v17 - 8) + 16))(v14, a1, v17);
  *(v14 + v15) = a2;
  *(v14 + v16) = a3;

  v18 = v5;

  v19 = a3;
  sub_1CF8F10A4(a1, 1, v12 | 0xA000000000000004, v18, a4, a5, v18, a2, v12 | 0xA000000000000004);
}

uint64_t sub_1CF8D1290(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  if (!a1)
  {
    return a3(a2);
  }

  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a1;
  v13[5] = a6;
  v13[6] = a7;
  v14 = a1;
  swift_retain_n();
  v15 = v14;
  sub_1CEFD09A0(a7);
  sub_1CEFD4024("uploadLocalVersionOfItem(at:policy:request:completionHandler:)", 62, 2, sub_1CF90324C, v12, sub_1CF90330C, v13);
}

uint64_t sub_1CF8D13D0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6)
{
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = v12;

  v14 = sub_1CEFD4E9C([a4 identifier]);
  v15 = *(a1 + 16);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1CF5523F4;
  *(v16 + 24) = v13;
  v17 = swift_allocObject();
  v17[2] = v14;
  v17[3] = a1;
  v17[4] = a6;
  v17[5] = sub_1CF5523F4;
  v17[6] = v13;
  v17[7] = a5;
  swift_retain_n();

  sub_1CEFD09A0(a6);
  sub_1CF7AAF88("forceUpload(for:policy:userRequest:completionHandler:)", 54, 2, 2, sub_1CF90324C, v16, sub_1CF8F9EDC, v17);
}

uint64_t FPDDomainFPFSBackend.getNumberOfNonMaterializedFiles(withCompletionHandler:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1CF903484;
  *(v5 + 24) = v4;
  v6 = swift_allocObject();
  v6[2] = sub_1CF903484;
  v6[3] = v4;
  v6[4] = a1;
  v6[5] = a2;
  swift_retain_n();
  swift_retain_n();
  sub_1CEFD4024("getNumberOfNonMaterializedFiles(withCompletionHandler:)", 55, 2, sub_1CF90324C, v5, sub_1CF8F3760, v6);
}

uint64_t sub_1CF8D1890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 16);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a4;
  v12[4] = a5;

  sub_1CF7AAF88("getNumberOfNonMaterializedFiles(withCompletionHandler:)", 55, 2, 2, sub_1CF90324C, v11, sub_1CF8F9E5C, v12);
}

uint64_t sub_1CF8D1994(void *a1, uint64_t a2, uint64_t (*a3)(id, void))
{
  v6 = a1[4];
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = *(*(a2 + 16) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB50, &unk_1CFA13390);
  swift_dynamicCastClassUnconditional();

  v9 = sub_1CF4B10C8(v7);

  if (!v3)
  {
    return a3(v9, 0);
  }

  return result;
}

void sub_1CF8D1BF0(void *a1, uint64_t a2, void (*a3)(void *, id), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBA8, &qword_1CFA12B20);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v24 - v14;
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v17 = Strong;
      v18 = swift_allocObject();
      *(v18 + 16) = a3;
      *(v18 + 24) = a4;
      v19 = a1;

      if (sub_1CEFF96D0(v19))
      {
        v20 = sub_1CF9E6F08();
        (*(*(v20 - 8) + 56))(v15, 1, 1, v20);
        v21 = swift_allocObject();
        v21[2] = 0;
        v21[3] = 0;
        v21[4] = v19;
        v21[5] = v17;
        v21[6] = a6;
        v21[7] = sub_1CF024AE4;
        v21[8] = v18;
        sub_1CEFD09A0(a6);
        sub_1CF6FCFEC(0, 0, v15, &unk_1CFA181B0, v21);
      }

      else
      {

        a3(a1, 0);
      }
    }

    else
    {
      v22 = a1;
      v23 = FPDomainUnavailableError();
      a3(0, v23);
    }
  }

  else
  {
    (a3)(0, a2, v13);
  }
}

uint64_t FPDDomainFPFSBackend.disableDBQueryStatistics(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  swift_retain_n();
  sub_1CEFD4024("disableDBQueryStatistics(completionHandler:)", 44, 2, sub_1CF90324C, v4, sub_1CF8F376C, v5);
}

uint64_t sub_1CF8D1EF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = *(*(a1 + 16) + qword_1EDEBBDB0);
  v4 = OBJC_IVAR____TtC18FileProviderDaemon27PQLConnectionWithStatistics_dbStatistics;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = 0;

  return a2(0);
}

uint64_t FPDDomainFPFSBackend.resetDBQueryStatistics(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  swift_retain_n();
  sub_1CEFD4024("resetDBQueryStatistics(completionHandler:)", 42, 2, sub_1CF90324C, v4, sub_1CF8F3774, v5);
}

uint64_t sub_1CF8D2188(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = *(*(a1 + 16) + qword_1EDEBBDB0);
  v4 = sub_1CF4E308C(MEMORY[0x1E69E7CC0]);
  v5 = OBJC_IVAR____TtC18FileProviderDaemon27PQLConnectionWithStatistics_dbStatistics;
  swift_beginAccess();
  v6 = *&v3[v5];
  *&v3[v5] = v4;

  return a2(0);
}

uint64_t FPDDomainFPFSBackend.getDBQueryStatistics(withQueryPlan:completionHandler:)(char a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  *(v7 + 32) = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1CF8F377C;
  *(v8 + 24) = v6;
  swift_retain_n();

  sub_1CEFD4024("getDBQueryStatistics(withQueryPlan:completionHandler:)", 54, 2, sub_1CF8F37B4, v8, sub_1CF8F37A8, v7);
}

uint64_t sub_1CF8D2484(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = *(a1 + 16);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a4;
  *(v10 + 32) = a2;
  *(v10 + 40) = a3;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1CF903260;
  *(v11 + 24) = v9;
  swift_retain_n();

  sub_1CF7AAF88("getDBQueryStatistics(withQueryPlan:completionHandler:)", 54, 2, 2, sub_1CF7BA950, v11, sub_1CF8F9E38, v10);
}

void sub_1CF8D25C0(uint64_t a1, uint64_t a2, char a3, void (*a4)(uint64_t, id))
{
  v6 = *(*(a2 + 16) + qword_1EDEBBDB0);
  sub_1CF32A694(a3);
  v8 = v7;

  if (v8)
  {
    a4(v8, 0);
  }

  else
  {
    v9 = FPNotSupportedError();
    a4(0, v9);
  }
}

void sub_1CF8D27F4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a1)
  {
    sub_1CEFD57E0(0, &qword_1EC4C4C08, 0x1E6967400);
    v5 = sub_1CF9E6618();
  }

  if (a2)
  {
    v6 = sub_1CF9E57E8();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

uint64_t FPDDomainFPFSBackend.enumerateSearchResult(forRequest:lifetimeExtender:completionHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  v9[2] = v4;
  v9[3] = a3;
  v9[4] = a4;
  v9[5] = a1;
  v9[6] = a2;
  v10 = v4;

  v11 = a1;
  swift_unknownObjectRetain();
  sub_1CEFD4024("enumerateSearchResult(forRequest:lifetimeExtender:completionHandler:)", 69, 2, nullsub_1, 0, sub_1CF8F37B8, v9);
}

void sub_1CF8D2984(uint64_t a1, uint64_t a2, void (*a3)(void, id), uint64_t a4, void *a5, uint64_t a6)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = [objc_opt_self() defaultStore];
    v13 = [v12 searchOnServerMaxNumberOfResults];

    v14 = [a5 maximumNumberOfResultsPerPage];
    if (v14 >= v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = v14;
    }

    v16 = [a5 query];
    if (!v16)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v16 = sub_1CF9E6888();
    }

    v17 = [a5 desiredNumberOfResults];
    v18 = [objc_allocWithZone(MEMORY[0x1E6967418]) initWithQuery:v16 desiredNumberOfResults:v17 maximumNumberOfResultsPerPage:v15];

    v19 = [v11 extensionBackend];
    aBlock[4] = a3;
    aBlock[5] = a4;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CF03FCFC;
    aBlock[3] = &block_descriptor_2246;
    v20 = _Block_copy(aBlock);

    [v19 enumerateSearchResultForRequest:v18 lifetimeExtender:a6 completionHandler:v20];
    _Block_release(v20);

    swift_unknownObjectRelease();
  }

  else
  {
    v21 = FPDomainUnavailableError();
    a3(0, v21);
  }
}

uint64_t sub_1CF8D2BB8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  swift_unknownObjectRetain();
  v7 = a3;
  v6(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t FPDDomainFPFSBackend.triggerDatabaseError(_:request:completionHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v9 = swift_allocObject();
  v9[2] = v4;
  v9[3] = a3;
  v9[4] = a4;
  v9[5] = a1;
  swift_retain_n();
  v10 = v4;
  v11 = a1;
  sub_1CEFD4024("triggerDatabaseError(_:request:completionHandler:)", 50, 2, sub_1CF90324C, v8, sub_1CF8F37D0, v9);
}

void sub_1CF8D2E6C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v99 = a5;
  v87 = sub_1CF9E63D8();
  v86 = *(v87 - 8);
  v9 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v87);
  v85 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v96 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v104 = &v84 - v15;
  v88 = sub_1CF9E6068();
  v16 = *(v88 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v88);
  v92 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v84 - v24;
  v90 = type metadata accessor for Signpost(0);
  v93 = *(v90 - 8);
  v26 = *(v93 + 8);
  MEMORY[0x1EEE9AC00](v90);
  v95 = &v84 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v94 = (&v84 - v29);
  v89 = v30;
  MEMORY[0x1EEE9AC00](v31);
  v103 = &v84 - v32;
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  v34 = *(a1 + 16);
  v35 = swift_allocObject();
  v35[2] = a1;
  v35[3] = v33;
  v35[4] = a2;
  v35[5] = a3;
  v35[6] = a4;
  v36 = swift_allocObject();
  v98 = v36;
  v37 = v99;
  *(v36 + 16) = v33;
  *(v36 + 24) = v37;
  v38 = swift_allocObject();
  *(v38 + 16) = sub_1CF8F9DC0;
  *(v38 + 24) = v35;
  v102 = v38;
  v100 = v33;
  v101 = v34;
  v39 = *(v34 + qword_1EDEBBC38);
  swift_retain_n();

  v40 = a2;

  v41 = v37;
  v99 = v35;

  v97 = fpfs_adopt_log();
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v42 = qword_1EDEBBE40;
  v43 = v88;
  (*(v16 + 56))(v25, 1, 1, v88);
  strcpy(&aBlock, "async batch ");
  BYTE13(aBlock) = 0;
  HIWORD(aBlock) = -5120;
  v44 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v44);

  v45 = aBlock;
  v91 = v25;
  sub_1CEFCCBDC(v25, v22, &unk_1EC4BED20, &unk_1CFA00700);
  v46 = *(v16 + 48);
  if (v46(v22, 1, v43) == 1)
  {
    v47 = v42;
    v48 = v92;
    sub_1CF9E6048();
    if (v46(v22, 1, v43) != 1)
    {
      sub_1CEFCCC44(v22, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v48 = v92;
    (*(v16 + 32))(v92, v22, v43);
  }

  v49 = v103;
  (*(v16 + 16))(v103, v48, v43);
  v50 = v90;
  *(v49 + *(v90 + 20)) = v42;
  v51 = v49 + *(v50 + 24);
  *v51 = "DB queue wait";
  *(v51 + 8) = 13;
  *(v51 + 16) = 2;
  v52 = v42;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_1CF9FA450;
  *(v53 + 56) = MEMORY[0x1E69E6158];
  *(v53 + 64) = sub_1CEFD51C4();
  *(v53 + 32) = v45;
  sub_1CF9E6028();

  (*(v16 + 8))(v48, v43);
  sub_1CEFCCC44(v91, &unk_1EC4BED20, &unk_1CFA00700);
  v91 = *(v101 + 168);
  v92 = *(v101 + 64);
  v90 = sub_1CF9E6448();
  v88 = *(v90 - 8);
  (*(v88 + 56))(v104, 1, 1, v90);
  v54 = v94;
  sub_1CEFDA34C(v49, v94, type metadata accessor for Signpost);
  v55 = (*(v93 + 80) + 16) & ~*(v93 + 80);
  v56 = (v89 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = swift_allocObject();
  v93 = type metadata accessor for Signpost;
  sub_1CEFDA0C4(v54, v57 + v55, type metadata accessor for Signpost);
  v58 = (v57 + v56);
  v94 = sub_1CF4814BC;
  v59 = v102;
  *v58 = sub_1CF4814BC;
  v58[1] = v59;
  v60 = v95;
  sub_1CEFDA34C(v49, v95, type metadata accessor for Signpost);
  v61 = (v56 + 23) & 0xFFFFFFFFFFFFFFF8;
  v62 = (v61 + 15) & 0xFFFFFFFFFFFFFFF8;
  v63 = (v62 + 25) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  sub_1CEFDA0C4(v60, v64 + v55, v93);
  v65 = (v64 + v56);
  v66 = v88;
  *v65 = sub_1CF045408;
  v65[1] = 0;
  *(v64 + v61) = v101;
  v67 = v64 + v62;
  *v67 = "triggerDatabaseError(_:request:completionHandler:)";
  *(v67 + 8) = 50;
  *(v67 + 16) = 2;
  v68 = (v64 + v63);
  *v68 = v94;
  v68[1] = v59;
  v69 = (v64 + ((v63 + 23) & 0xFFFFFFFFFFFFFFF8));
  v70 = v98;
  *v69 = sub_1CF8F9DD8;
  v69[1] = v70;
  v71 = swift_allocObject();
  v71[2] = sub_1CF903308;
  v71[3] = v57;
  v72 = v91;
  v71[4] = v91;
  swift_retain_n();

  v101 = v57;
  v73 = v90;

  v74 = fpfs_current_log();
  v95 = *(v72 + 16);
  v75 = v96;
  sub_1CEFCCBDC(v104, v96, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v66 + 48))(v75, 1, v73) == 1)
  {
    sub_1CEFCCC44(v75, &unk_1EC4BE370, qword_1CFA01B30);
    v76 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v77 = v85;
    sub_1CF9E6438();
    (*(v66 + 8))(v75, v73);
    v76 = sub_1CF9E63C8();
    (*(v86 + 8))(v77, v87);
  }

  v78 = swift_allocObject();
  v78[2] = v74;
  v78[3] = sub_1CF4858EC;
  v78[4] = v64;
  v108 = sub_1CF2BA17C;
  v109 = v78;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v106 = sub_1CEFCA444;
  v107 = &block_descriptor_2231;
  v79 = _Block_copy(&aBlock);
  v80 = v74;

  v108 = sub_1CF2BA180;
  v109 = v71;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v106 = sub_1CEFCA444;
  v107 = &block_descriptor_2234;
  v81 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v95, v92, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v76, v79, v81);
  _Block_release(v81);
  _Block_release(v79);

  sub_1CEFCCC44(v104, &unk_1EC4BE370, qword_1CFA01B30);
  sub_1CEFD5338(v103, type metadata accessor for Signpost);
  v82 = v97;
  v83 = fpfs_adopt_log();
}

uint64_t sub_1CF8D3A14(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v11 = *(*(a2 + 16) + 64);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a1;
  v13 = v11;

  v14 = a4;

  v15 = a1;
  sub_1CF01001C(0, "triggerDatabaseError(_:request:completionHandler:)", 50, 2, sub_1CF8F9DF4, v12);
}

uint64_t sub_1CF8D3AF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v10 = sub_1CF9E63A8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1CF9E6448();
  v15 = *(v23 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(a1 + 16) != 1)
  {
    return a3(a5);
  }

  v22 = *(a2 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_startupQueue);
  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  *(v19 + 24) = a4;
  aBlock[4] = sub_1CF8F9E0C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFCA444;
  aBlock[3] = &block_descriptor_2243;
  v20 = _Block_copy(aBlock);

  sub_1CF9E63F8();
  v24 = MEMORY[0x1E69E7CC0];
  sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CF9E77B8();
  MEMORY[0x1D3869630](0, v18, v14, v20);
  _Block_release(v20);
  (*(v11 + 8))(v14, v10);
  (*(v15 + 8))(v18, v23);
}

id sub_1CF8D3E0C(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  *(a2 + 16) = 1;
  swift_willThrow();
  return a3;
}

uint64_t FPDDomainFPFSBackend.sendDiagnosticsFromFPCK(forItemIDs:)(uint64_t a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBA8, &qword_1CFA12B20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v13 - v7;
  v9 = sub_1CF9E6F08();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  v10[5] = a1;
  v10[6] = a2;
  v11 = v2;
  sub_1CEFE42D4(a1, a2);
  sub_1CF6FCFEC(0, 0, v8, &unk_1CFA17B58, v10);
}

uint64_t sub_1CF8D40EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  v7 = sub_1CF9E6118();
  v6[10] = v7;
  v8 = *(v7 - 8);
  v6[11] = v8;
  v9 = *(v8 + 64) + 15;
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CF8D41BC, 0, 0);
}

uint64_t sub_1CF8D41BC()
{
  v1 = *(v0[7] + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_fpDiagnosticsManager);
  v0[14] = v1;
  if (v1)
  {
    v3 = v0[8];
    v2 = v0[9];
    v4 = sub_1CF9E5688();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    swift_allocObject();

    sub_1CF9E5678();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE520, &qword_1CF9FEF10);
    sub_1CF1E1244();
    sub_1CF9E5668();

    v16 = v0[5];
    v0[15] = v16;
    v17 = swift_task_alloc();
    v0[16] = v17;
    *v17 = v0;
    v17[1] = sub_1CF8D4550;

    return sub_1CF7F8760(v16, 0, 0, 0, 0x2000000);
  }

  else
  {
    v7 = v0[13];
    v8 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v9 = sub_1CF9E6108();
    v10 = sub_1CF9E7288();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[13];
    v13 = v0[10];
    v14 = v0[11];
    if (v11)
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1CEFC7000, v9, v10, "Couldn't send TTR, fpDiagnosticsManager resolved to nil", v15, 2u);
      MEMORY[0x1D386CDC0](v15, -1, -1);
    }

    (*(v14 + 8))(v12, v13);
    v20 = v0[12];
    v19 = v0[13];

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_1CF8D4550()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = *(v2 + 120);

  if (v0)
  {
    v6 = sub_1CF8D46F4;
  }

  else
  {
    v6 = sub_1CF8D4684;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1CF8D4684()
{
  v1 = v0[14];

  v3 = v0[12];
  v2 = v0[13];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1CF8D46F4()
{
  v1 = v0[17];
  v2 = v0[12];
  v3 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v4 = v1;
  v5 = sub_1CF9E6108();
  v6 = sub_1CF9E7288();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[14];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_getErrorValue();
    v10 = v0[2];
    v11 = v0[4];
    v12 = Error.prettyDescription.getter(v0[3]);
    *(v8 + 4) = v12;
    *v9 = v12;
    _os_log_impl(&dword_1CEFC7000, v5, v6, "Error starting TTR: %@", v8, 0xCu);
    sub_1CEFCCC44(v9, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v9, -1, -1);
    MEMORY[0x1D386CDC0](v8, -1, -1);
  }

  else
  {
    v13 = v0[14];
  }

  (*(v0[11] + 8))(v0[12], v0[10]);
  v15 = v0[12];
  v14 = v0[13];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1CF8D49E8(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = *(*(sub_1CF9E5248() - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v4 = sub_1CF9E5268();
  v2[12] = v4;
  v5 = *(v4 - 8);
  v2[13] = v5;
  v6 = *(v5 + 64) + 15;
  v2[14] = swift_task_alloc();
  v7 = sub_1CF9E5A58();
  v2[15] = v7;
  v8 = *(v7 - 8);
  v2[16] = v8;
  v9 = *(v8 + 64) + 15;
  v2[17] = swift_task_alloc();
  v10 = sub_1CF9E6118();
  v2[18] = v10;
  v11 = *(v10 - 8);
  v2[19] = v11;
  v12 = *(v11 + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v13 = type metadata accessor for VFSItem(0);
  v2[22] = v13;
  v14 = *(v13 - 8);
  v2[23] = v14;
  v15 = *(v14 + 64) + 15;
  v2[24] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60) - 8) + 64) + 15;
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CF8D4C38, 0, 0);
}