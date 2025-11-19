uint64_t sub_1CF82CDEC()
{
  v1 = v0;
  v23 = sub_1CF9E7378();
  v21 = *(v23 - 8);
  v2 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C50F0, &qword_1CFA00850);
  v5 = *(v19 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v8 = &v19 - v7;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C50F8, &unk_1CFA182A0);
  v22 = *(v20 - 8);
  v9 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v11 = &v19 - v10;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEC40, &qword_1CFA03260);
  sub_1CF9E6278();
  swift_endAccess();
  v12 = [objc_opt_self() defaultStore];
  [v12 errorGenerationUpdateSeconds];

  sub_1CF9E7368();
  v13 = v1 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_errorGenerationRecord;
  v24 = *(v1 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_errorGenerationRecord + 16);
  sub_1CEFD57E0(0, &qword_1EDEAED70, 0x1E69E9610);
  sub_1CEFCCCEC(&unk_1EDEAB6F0, &qword_1EC4C50F0, &qword_1CFA00850);
  sub_1CF2B1654(&qword_1EDEAB610, &qword_1EDEAED70, 0x1E69E9610);
  v14 = v19;
  sub_1CF9E62E8();
  (*(v21 + 8))(v4, v23);
  (*(v5 + 8))(v8, v14);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1CEFCCCEC(&qword_1EDEA3978, &qword_1EC4C50F8, &unk_1CFA182A0);
  v15 = v20;
  v16 = sub_1CF9E62F8();

  (*(v22 + 8))(v11, v15);
  v17 = *(v13 + 8);
  *(v13 + 8) = v16;
}

uint64_t sub_1CF82D1DC()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = swift_allocObject();
    *(v2 + 16) = v1;
    v3 = v1;
    sub_1CEFD4024("initializeErrorGeneration()", 27, 2, nullsub_1, 0, sub_1CF9022B8, v2);
  }

  return result;
}

void sub_1CF82D2A4(uint64_t a1, void *a2)
{
  v79 = sub_1CF9E63D8();
  v78 = *(v79 - 8);
  v4 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v77 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v87 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v92 = &v76 - v10;
  v11 = sub_1CF9E6068();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v83 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v76 - v20;
  v22 = type metadata accessor for Signpost(0);
  v84 = *(v22 - 8);
  v23 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v86 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v85 = (&v76 - v25);
  MEMORY[0x1EEE9AC00](v26);
  v90 = &v76 - v27;
  v28 = *(a1 + 16);
  v29 = swift_allocObject();
  *(v29 + 16) = a2;
  *(v29 + 24) = a1;
  v91 = v29;
  v89 = v28;
  v30 = *(v28 + qword_1EDEBBC38);
  v31 = a2;

  v88 = fpfs_adopt_log();
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v32 = qword_1EDEBBE40;
  (*(v12 + 56))(v21, 1, 1, v11);
  strcpy(&aBlock, "async batch ");
  BYTE13(aBlock) = 0;
  HIWORD(aBlock) = -5120;
  v33 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v33);

  v81 = *(&aBlock + 1);
  v82 = aBlock;
  sub_1CEFCCBDC(v21, v18, &unk_1EC4BED20, &unk_1CFA00700);
  v34 = *(v12 + 48);
  if (v34(v18, 1, v11) == 1)
  {
    v35 = v32;
    v36 = v83;
    sub_1CF9E6048();
    v37 = v36;
    if (v34(v18, 1, v11) != 1)
    {
      sub_1CEFCCC44(v18, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v37 = v83;
    (*(v12 + 32))(v83, v18, v11);
  }

  v38 = v90;
  (*(v12 + 16))(v90, v37, v11);
  *(v38 + *(v22 + 20)) = v32;
  v39 = v38 + *(v22 + 24);
  *v39 = "DB queue wait";
  *(v39 + 8) = 13;
  *(v39 + 16) = 2;
  v40 = v32;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1CF9FA450;
  *(v41 + 56) = MEMORY[0x1E69E6158];
  *(v41 + 64) = sub_1CEFD51C4();
  v42 = v81;
  *(v41 + 32) = v82;
  *(v41 + 40) = v42;
  sub_1CF9E6028();

  (*(v12 + 8))(v37, v11);
  sub_1CEFCCC44(v21, &unk_1EC4BED20, &unk_1CFA00700);
  v43 = *(v89 + 64);
  v82 = *(v89 + 168);
  v83 = v43;
  v44 = sub_1CF9E6448();
  v45 = *(v44 - 8);
  v80 = v44;
  v81 = v45;
  (*(v45 + 56))(v92, 1, 1, v44);
  v46 = v85;
  sub_1CEFDA34C(v38, v85, type metadata accessor for Signpost);
  v47 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v48 = (v23 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  sub_1CEFDA0C4(v46, v49 + v47, type metadata accessor for Signpost);
  v50 = (v49 + v48);
  v85 = nullsub_1;
  *v50 = nullsub_1;
  v50[1] = 0;
  v51 = v86;
  sub_1CEFDA34C(v38, v86, type metadata accessor for Signpost);
  v52 = (v48 + 23) & 0xFFFFFFFFFFFFFFF8;
  v53 = (v52 + 15) & 0xFFFFFFFFFFFFFFF8;
  v54 = (v53 + 25) & 0xFFFFFFFFFFFFFFF8;
  v55 = swift_allocObject();
  sub_1CEFDA0C4(v51, v55 + v47, type metadata accessor for Signpost);
  v56 = (v55 + v48);
  *v56 = sub_1CF045408;
  v56[1] = 0;
  *(v55 + v52) = v89;
  v57 = v55 + v53;
  v58 = v80;
  v59 = v81;
  *v57 = "initializeErrorGeneration()";
  *(v57 + 8) = 27;
  *(v57 + 16) = 2;
  v60 = (v55 + v54);
  *v60 = v85;
  v60[1] = 0;
  v61 = (v55 + ((v54 + 23) & 0xFFFFFFFFFFFFFFF8));
  v62 = v91;
  *v61 = sub_1CF9022C0;
  v61[1] = v62;
  v63 = swift_allocObject();
  v63[2] = sub_1CF903308;
  v63[3] = v49;
  v64 = v82;
  v63[4] = v82;

  v89 = v49;

  v65 = fpfs_current_log();
  v66 = *(v64 + 16);
  v67 = v87;
  sub_1CEFCCBDC(v92, v87, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v59 + 48))(v67, 1, v58) == 1)
  {
    sub_1CEFCCC44(v67, &unk_1EC4BE370, qword_1CFA01B30);
    v68 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v69 = v77;
    sub_1CF9E6438();
    (*(v59 + 8))(v67, v58);
    v68 = sub_1CF9E63C8();
    (*(v78 + 8))(v69, v79);
  }

  v70 = swift_allocObject();
  v70[2] = v65;
  v70[3] = sub_1CF4858EC;
  v70[4] = v55;
  v96 = sub_1CF2BA17C;
  v97 = v70;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v94 = sub_1CEFCA444;
  v95 = &block_descriptor_6126;
  v71 = _Block_copy(&aBlock);
  v72 = v65;

  v96 = sub_1CF2BA180;
  v97 = v63;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v94 = sub_1CEFCA444;
  v95 = &block_descriptor_6129;
  v73 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v66, v83, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v68, v71, v73);
  _Block_release(v73);
  _Block_release(v71);

  sub_1CEFCCC44(v92, &unk_1EC4BE370, qword_1CFA01B30);
  sub_1CEFD5338(v90, type metadata accessor for Signpost);
  v74 = v88;
  v75 = fpfs_adopt_log();
}

void sub_1CF82DD30(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_errorGenerationRecord + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C06D0, &qword_1CFA05AE0);
  sub_1CF9E7398();
  if (v2)
  {
  }
}

void sub_1CF82DDE8(uint64_t a1, void *a2, uint64_t a3)
{
  v29 = a3;
  v5 = type metadata accessor for SyncState();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a1 + 16);
  v11 = *(v9 + 48);
  v10 = *(v9 + 56);
  ObjectType = swift_getObjectType();
  v14 = a2[3];
  v13 = a2[4];
  v15 = __swift_project_boxed_opaque_existential_1(a2, v14);
  swift_unknownObjectRetain();
  v16 = v15;
  v17 = v30;
  v18 = sub_1CF95FE3C(v16, ObjectType, v14, v10, v13);
  swift_unknownObjectRelease();
  if (!v17)
  {
    v30 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
    }

    else
    {
      v19 = *(v9 + 48);
      v20 = *(v9 + 56);
      v28 = swift_getObjectType();
      v22 = a2[3];
      v21 = a2[4];
      v23 = __swift_project_boxed_opaque_existential_1(a2, v22);
      *v8 = v30;
      swift_storeEnumTagMultiPayload();
      v24 = *(v20 + 8);
      swift_unknownObjectRetain();
      v24(v8, v23, v22, v21, v28, v20);
      sub_1CEFD5338(v8, type metadata accessor for SyncState);
      swift_unknownObjectRelease();
      *(v29 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_errorGenerationRecord) = v30;
      Strong = swift_unknownObjectWeakLoadStrong();
      v26 = [Strong provider];

      v27 = [v26 server];
      [v27 signalProviderChanges];
    }
  }
}

id sub_1CF82E01C@<X0>(uint64_t a1@<X8>)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1CF9E5A58();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E5978();
  sub_1CF8E8D5C(v7);
  if (v1)
  {
    goto LABEL_5;
  }

  v8 = [objc_opt_self() defaultManager];
  v9 = sub_1CF9E5928();
  v10 = sub_1CF9E5928();
  v16[0] = 0;
  v11 = [v8 moveItemAtURL:v9 toURL:v10 error:v16];

  v12 = v16[0];
  if ((v11 & 1) == 0)
  {
    v14 = v16[0];
    sub_1CF9E57F8();

    swift_willThrow();
LABEL_5:
    result = (*(v4 + 8))(v7, v3);
    goto LABEL_6;
  }

  (*(v4 + 32))(a1, v7, v3);
  result = v12;
LABEL_6:
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1CF82E208(uint64_t a1, char *a2)
{
  v87 = a2;
  v88 = a1;
  v3 = sub_1CF9E5A58();
  v99 = *(v3 - 8);
  v4 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v98 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v82 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v90 = &v80 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v91 = &v80 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v81 = &v80 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v83 = &v80 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v80 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v92 = (&v80 - v21);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v80 - v23;
  v25 = sub_1CF9E6118();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v95 = &v80 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v80 - v30;
  v32 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v33 = v2;
  v34 = sub_1CF9E6108();
  LODWORD(v94) = sub_1CF9E72C8();
  v35 = os_log_type_enabled(v34, v94);
  v96 = v26;
  v97 = v25;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v101 = v89;
    *v36 = 136315138;
    v37 = *&v33[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pathsManager];
    v38 = OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_dbDirectoryURL;
    swift_beginAccess();
    sub_1CEFCCBDC(v37 + v38, v24, &unk_1EC4BE310, qword_1CF9FCBE0);
    LODWORD(v37) = (*(v99 + 48))(v24, 1, v3);
    v93 = v33;

    if (v37 == 1)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v39 = sub_1CF9E5928();
    v40 = [v39 fp_shortDescription];

    v41 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v43 = v42;

    (*(v99 + 8))(v24, v3);
    v44 = sub_1CEFD0DF0(v41, v43, &v101);

    *(v36 + 4) = v44;
    _os_log_impl(&dword_1CEFC7000, v34, v94, "🚮  Move the FPFS DB away %s", v36, 0xCu);
    v45 = v89;
    __swift_destroy_boxed_opaque_existential_1(v89);
    MEMORY[0x1D386CDC0](v45, -1, -1);
    MEMORY[0x1D386CDC0](v36, -1, -1);

    v46 = *(v96 + 8);
    (v46)(v31, v97);
    v47 = v93;
  }

  else
  {

    v46 = *(v26 + 8);
    (v46)(v31, v25);
    v47 = v33;
  }

  v48 = v47;
  v49 = *&v47[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pathsManager];
  v50 = OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_dbDirectoryURL;
  swift_beginAccess();
  sub_1CEFCCBDC(v49 + v50, v19, &unk_1EC4BE310, qword_1CF9FCBE0);
  v51 = v99;
  v94 = *(v99 + 48);
  v52 = v94(v19, 1, v3);
  v53 = v92;
  if (v52 == 1)
  {
    __break(1u);
    goto LABEL_18;
  }

  sub_1CF82E01C(v92);
  v89 = v46;
  v85 = 0;
  v93 = v51[1];
  (v93)(v19, v3);
  v86 = v51[7];
  v86(v53, 0, 1, v3);
  v84 = v51[4];
  v84(v98, v53, v3);
  v55 = v94;
  v54 = v95;
  v56 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v57 = v48;
  v58 = sub_1CF9E6108();
  v59 = sub_1CF9E72C8();
  if (!os_log_type_enabled(v58, v59))
  {

    (v89)(v54, v97);
LABEL_10:
    v72 = OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_wharfDirectoryURL;
    swift_beginAccess();
    v73 = v90;
    sub_1CEFCCBDC(v49 + v72, v90, &unk_1EC4BE310, qword_1CF9FCBE0);
    v74 = v55(v73, 1, v3);
    v75 = v91;
    if (v74 != 1)
    {
      v76 = v85;
      sub_1CF82E01C(v91);
      if (!v76)
      {
        (v93)(v73, v3);
        v86(v75, 0, 1, v3);
        v79 = v84;
        v84(v87, v75, v3);
LABEL_16:
        v79(v88, v98, v3);
        return;
      }

      (v93)(v73, v3);
      v86(v75, 1, 1, v3);
      v77 = v82;
      sub_1CEFCCBDC(v49 + v72, v82, &unk_1EC4BE310, qword_1CF9FCBE0);
      if (v55(v77, 1, v3) != 1)
      {
        v78 = v77;
        v79 = v84;
        v84(v87, v78, v3);
        if (v55(v75, 1, v3) != 1)
        {
          sub_1CEFCCC44(v75, &unk_1EC4BE310, qword_1CF9FCBE0);
        }

        goto LABEL_16;
      }

      goto LABEL_19;
    }

LABEL_18:
    __break(1u);
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v60 = v55;
  v61 = swift_slowAlloc();
  v92 = swift_slowAlloc();
  v100 = v92;
  *v61 = 136315138;
  v62 = OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_wharfDirectoryURL;
  swift_beginAccess();
  v63 = v81;
  sub_1CEFCCBDC(v49 + v62, v81, &unk_1EC4BE310, qword_1CF9FCBE0);
  LODWORD(v62) = v60(v63, 1, v3);

  if (v62 != 1)
  {
    v64 = sub_1CF9E5928();
    v65 = [v64 fp_shortDescription];

    v66 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v67 = v63;
    v69 = v68;

    (v93)(v67, v3);
    v70 = sub_1CEFD0DF0(v66, v69, &v100);

    *(v61 + 4) = v70;
    _os_log_impl(&dword_1CEFC7000, v58, v59, "🚮  Move the FPFS Wharf away %s", v61, 0xCu);
    v71 = v92;
    __swift_destroy_boxed_opaque_existential_1(v92);
    MEMORY[0x1D386CDC0](v71, -1, -1);
    MEMORY[0x1D386CDC0](v61, -1, -1);

    (v89)(v95, v97);
    v55 = v94;
    goto LABEL_10;
  }

LABEL_21:
  __break(1u);
}

void sub_1CF82ED30(unint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = sub_1CF8E8524();
  v71 = v12;
  v72 = v10;
  v73 = v13;
  v14 = v11;
  v15 = *(v5 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_rtcReporter);
  v16 = a1 >> 62;
  if (!v15)
  {
    v20 = v11;
    v21 = a1;
    if (v16)
    {
      goto LABEL_15;
    }

LABEL_6:
    if ((a4 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000012;
  *(inited + 16) = xmmword_1CF9FC330;
  *(inited + 40) = 0x80000001CFA5D650;
  if (v16)
  {
    if (v16 == 1)
    {
      v18 = 0x80000001CFA5D6E0;
      v19 = 0xD000000000000011;
    }

    else
    {
      v33 = __ROR8__(a1 ^ 0x8000000000000000, 3);
      if (v33 > 2)
      {
        if (v33 == 3)
        {
          v18 = 0x80000001CFA5D6A0;
          v19 = 0xD00000000000001BLL;
        }

        else if (v33 == 4)
        {
          v18 = 0xEF74726F706D6965;
          v19 = 0x526C616974726170;
        }

        else
        {
          v18 = 0x80000001CFA5D670;
          v19 = 0xD000000000000023;
        }
      }

      else
      {
        v19 = 0x74726F706D696572;
        if (v33)
        {
          if (v33 == 1)
          {
            v18 = 0xEE007265646C6F46;
          }

          else
          {
            v18 = 0x80000001CFA5D6C0;
            v19 = 0xD000000000000010;
          }
        }

        else
        {
          v18 = 0xEC000000746F6F52;
        }
      }
    }
  }

  else
  {
    v18 = 0xED0000726F727245;
    v19 = 0x6573616261746164;
  }

  v23 = MEMORY[0x1E69E6158];
  *(inited + 48) = v19;
  *(inited + 56) = v18;
  *(inited + 72) = v23;
  *(inited + 80) = 0x657079546D657469;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = a2;
  *(inited + 104) = a3;
  v24 = MEMORY[0x1E69E6530];
  *(inited + 120) = v23;
  *(inited + 128) = 0xD000000000000011;
  v25 = v72;
  if (v73)
  {
    v25 = 0;
  }

  *(inited + 136) = 0x80000001CFA51ED0;
  *(inited + 144) = v25;
  *(inited + 168) = v24;
  *(inited + 176) = 0x6E6F73616572;
  *(inited + 216) = v24;
  *(inited + 184) = 0xE600000000000000;
  *(inited + 192) = a4 & 1;
  v26 = inited;

  v27 = v15;
  v28 = sub_1CF4E04E8(v26);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE300, &unk_1CF9FC5D0);
  swift_arrayDestroy();
  sub_1CF7BA9CC(v28);

  v29 = sub_1CF9E6618();

  v20 = v14;
  if (!v16 || (v30 = 0, v16 == 1))
  {
    sub_1CF8F99A0(a1);
    v30 = sub_1CF9E57E8();
    sub_1CF8F99BC(a1);
  }

  [v27 postReportWithCategory:1 type:1 payload:v29 error:v30];

  v21 = a1;
  if (!v16)
  {
    goto LABEL_6;
  }

LABEL_15:
  if (v16 != 1)
  {
    goto LABEL_59;
  }

  v21 = (a1 & 0x3FFFFFFFFFFFFFFFLL);
  if ((a4 & 1) == 0)
  {
LABEL_17:
    v74[0] = v21;
    sub_1CF8F99A0(a1);
    sub_1CF8F99A0(a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    if (swift_dynamicCast())
    {
      if (!v80 || v80 == 3 || v80 == 9 && ((v31 = vorrq_s8(v78, v79), v32 = *&vorr_s8(*v31.i8, *&vextq_s8(v31, v31, 8uLL)) | v77, v76 == 1) && !v32 || v76 == 2 && !v32 || v76 == 3 && !v32))
      {

LABEL_37:
        if ((v73 & 1) == 0 && v72 < 1800000000000)
        {
          goto LABEL_39;
        }

        sub_1CF8F99BC(a1);
LABEL_59:

        return;
      }

      sub_1CF47FB38(&v76);
    }

    _s3__C4CodeOMa_0(0);
    v76 = 14;
    sub_1CF8F99A0(a1);
    sub_1CEFCCCA4(&unk_1EC4BD5E0, _s3__C4CodeOMa_0);
    v34 = sub_1CF9E5658();
    sub_1CF8F99BC(a1);
    if ((v34 & 1) == 0)
    {
LABEL_39:
      v22 = 0;
      goto LABEL_40;
    }

    goto LABEL_37;
  }

LABEL_7:
  sub_1CF8F99A0(a1);
  v22 = 0xD000000000000015;
LABEL_40:
  v70 = [objc_allocWithZone(FPDTapToRadarManager) init];
  v76 = 0;
  v77 = 0xE000000000000000;
  sub_1CF9E7948();
  if (a4)
  {
    v35 = 0x80000001CFA5D630;
  }

  else
  {
    v35 = 0xE000000000000000;
  }

  MEMORY[0x1D3868CC0](v22, v35);

  MEMORY[0x1D3868CC0](0xD00000000000002FLL, 0x80000001CFA5D500);
  v36 = *(v5 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_providerDomainID);
  v37 = [v36 pathComponents];
  v38 = sub_1CF9E6D48();

  v39 = *(v38 + 16);

  v40 = v36;
  if (v39 >= 2)
  {
    v40 = [v36 stringByDeletingLastPathComponent];
    if (!v40)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v40 = sub_1CF9E6888();
    }
  }

  v41 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v43 = v42;

  MEMORY[0x1D3868CC0](v41, v43);

  MEMORY[0x1D3868CC0](32, 0xE100000000000000);
  if (v73)
  {
    v44 = 0;
    v45 = 0xE000000000000000;
  }

  else
  {
    v75[0] = v72;
    sub_1CF82F6E4(v75, v71, v20, v74);
    v44 = v74[0];
    v45 = v74[1];
  }

  MEMORY[0x1D3868CC0](v44, v45);

  MEMORY[0x1D3868CC0](8250, 0xE200000000000000);
  swift_getErrorValue();
  v46 = sub_1CF4C3B5C(v75[2]);
  MEMORY[0x1D3868CC0](v46);

  v76 = 0;
  v77 = 0xE000000000000000;
  sub_1CF9E7948();

  v76 = 0xD000000000000015;
  v77 = 0x80000001CFA5D530;
  v47 = [v36 fp_obfuscatedProviderDomainID];
  v48 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v50 = v49;

  MEMORY[0x1D3868CC0](v48, v50);

  MEMORY[0x1D3868CC0](0x203A726F7272450ALL, 0xE800000000000000);
  v51 = sub_1CF9E57E8();
  sub_1CF8F99BC(a1);
  v52 = [v51 fp_prettyDescription];

  v53 = [v52 description];
  v54 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v56 = v55;

  MEMORY[0x1D3868CC0](v54, v56);

  v58 = v76;
  v57 = v77;
  if ((v73 & 1) == 0)
  {
    v76 = 0;
    v77 = 0xE000000000000000;
    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](v58, v57);

    MEMORY[0x1D3868CC0](0xD0000000000000B0, 0x80000001CFA5D570);
  }

  v59 = sub_1CF9E6888();

  v60 = sub_1CF9E6888();

  sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
  v61 = sub_1CF9E6D28();
  sub_1CF9E5A58();
  v62 = sub_1CF9E6D28();
  v63 = sub_1CF9E6888();
  v64 = v36;
  v65 = [v64 pathComponents];
  v66 = sub_1CF9E6D48();

  v67 = *(v66 + 16);

  if (v67 < 2)
  {
    v69 = v70;
  }

  else
  {
    v68 = [v64 stringByDeletingLastPathComponent];
    v69 = v70;
    if (!v68)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v68 = sub_1CF9E6888();
    }

    v64 = v68;
  }

  [v69 requestTapToRadarWithTitle:v59 description:v60 keywords:v61 attachments:v62 displayReason:v63 providerID:v64];
}

uint64_t sub_1CF82F6E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, unint64_t a3@<X4>, void *a4@<X8>)
{
  v7 = *a1;
  sub_1CF9E7948();

  if (v7 < 0)
  {
    v11 = __OFSUB__(0, v7);
    v7 = -v7;
    if (v11)
    {
      __break(1u);
      return result;
    }

    v10 = 0xE100000000000000;
    v9 = 45;
  }

  else
  {
    v9 = 0;
    v10 = 0xE000000000000000;
  }

  v12 = sub_1CF04F854(v7);
  MEMORY[0x1D3868CC0](v12);

  MEMORY[0x1D3868CC0](v9, v10);

  MEMORY[0x1D3868CC0](32, 0xE100000000000000);
  if (a3)
  {
    v13 = a2;
  }

  else
  {
    v13 = 0;
  }

  if (a3)
  {
    v14 = a3;
  }

  else
  {
    v14 = 0xE000000000000000;
  }

  MEMORY[0x1D3868CC0](v13, v14);

  result = MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  *a4 = 0x6572207473616C28;
  a4[1] = 0xEF203A65726F7473;
  return result;
}

void sub_1CF82F828()
{
  v1 = v0;
  v2 = sub_1CF9E6888();
  v3 = sub_1CF9E6888();
  v4 = sub_1CF9E57E8();
  FPCaptureLogsForOperation();

  v5 = [objc_allocWithZone(FPDTapToRadarManager) init];
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000031, 0x80000001CFA5D470);
  v6 = *(v1 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_providerDomainID);
  v7 = [v6 pathComponents];
  v8 = sub_1CF9E6D48();

  v9 = *(v8 + 16);

  v10 = v6;
  if (v9 >= 2)
  {
    v10 = [v6 stringByDeletingLastPathComponent];
    if (!v10)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v10 = sub_1CF9E6888();
    }
  }

  v11 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v13 = v12;

  MEMORY[0x1D3868CC0](v11, v13);

  MEMORY[0x1D3868CC0](8250, 0xE200000000000000);
  swift_getErrorValue();
  v14 = sub_1CF4C3B5C(v35);
  MEMORY[0x1D3868CC0](v14);

  sub_1CF9E7948();

  v15 = [v6 fp_obfuscatedProviderDomainID];
  v16 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v18 = v17;

  MEMORY[0x1D3868CC0](v16, v18);

  MEMORY[0x1D3868CC0](0x203A726F7272450ALL, 0xE800000000000000);
  v19 = sub_1CF9E57E8();
  v20 = [v19 fp_prettyDescription];

  v21 = [v20 description];
  v22 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v24 = v23;

  MEMORY[0x1D3868CC0](v22, v24);

  v25 = sub_1CF9E6888();

  v26 = sub_1CF9E6888();

  sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
  v27 = sub_1CF9E6D28();
  sub_1CF9E5A58();
  v28 = sub_1CF9E6D28();
  v29 = sub_1CF9E6888();
  v30 = v6;
  v31 = [v30 pathComponents];
  v32 = sub_1CF9E6D48();

  v33 = *(v32 + 16);

  if (v33 >= 2)
  {
    v34 = [v30 stringByDeletingLastPathComponent];
    if (!v34)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v34 = sub_1CF9E6888();
    }

    v30 = v34;
  }

  [v5 requestTapToRadarWithTitle:v25 description:v26 keywords:v27 attachments:v28 displayReason:v29 providerID:v30];
}

uint64_t sub_1CF82FCA4(unint64_t a1)
{
  v29 = a1;
  v2 = sub_1CF9E6938();
  v28 = *(v2 - 8);
  v3 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v30 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v27 - v7;
  v9 = sub_1CF9E5A58();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v27 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v27 - v18;
  v20 = *(v1 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pathsManager);
  v21 = OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_appSupportURL;
  swift_beginAccess();
  sub_1CEFCCBDC(v20 + v21, v8, &unk_1EC4BE310, qword_1CF9FCBE0);
  if ((*(v10 + 48))(v8, 1, v9))
  {
    return sub_1CEFCCC44(v8, &unk_1EC4BE310, qword_1CF9FCBE0);
  }

  v23 = v28;
  v27 = v2;
  (*(v10 + 16))(v13, v8, v9);
  sub_1CEFCCC44(v8, &unk_1EC4BE310, qword_1CF9FCBE0);
  sub_1CF9E5958();
  v24 = *(v10 + 8);
  v24(v13, v9);
  (*(v10 + 32))(v19, v16, v9);
  v31 = sub_1CF96AA40(v29);
  v32 = v25;
  v26 = v30;
  sub_1CF9E6918();
  sub_1CEFE4E68();
  sub_1CF9E7688();
  (*(v23 + 8))(v26, v27);

  return (v24)(v19, v9);
}

uint64_t sub_1CF830018()
{
  v1 = sub_1CF9E6938();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v28 - v5;
  v7 = sub_1CF9E5A58();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v28 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v28 - v16;
  v18 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pathsManager);
  v19 = OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_appSupportURL;
  swift_beginAccess();
  sub_1CEFCCBDC(v18 + v19, v6, &unk_1EC4BE310, qword_1CF9FCBE0);
  if ((*(v8 + 48))(v6, 1, v7))
  {
    sub_1CEFCCC44(v6, &unk_1EC4BE310, qword_1CF9FCBE0);
    return 0;
  }

  else
  {
    (*(v8 + 16))(v11, v6, v7);
    sub_1CEFCCC44(v6, &unk_1EC4BE310, qword_1CF9FCBE0);
    sub_1CF9E5958();
    v20 = *(v8 + 8);
    v20(v11, v7);
    (*(v8 + 32))(v17, v14, v7);
    v22 = sub_1CF9E5A78();
    v24 = v23;
    sub_1CEFE42D4(v22, v23);
    sub_1CF826254(10000, v22, v24, v28);
    v25 = v28[0];
    v26 = v28[1];
    sub_1CF9E6918();
    v27 = sub_1CF9E68D8();
    sub_1CEFE4714(v25, v26);
    sub_1CEFE4714(v22, v24);
    v20(v17, v7);
    return v27;
  }
}

uint64_t sub_1CF83037C()
{
  v28[4] = *MEMORY[0x1E69E9840];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v28[-1] - v3;
  v5 = sub_1CF9E5A58();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v28[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28[-1] - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28[-1] - v14;
  v16 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pathsManager);
  v17 = OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_appSupportURL;
  swift_beginAccess();
  sub_1CEFCCBDC(v16 + v17, v4, &unk_1EC4BE310, qword_1CF9FCBE0);
  if ((*(v6 + 48))(v4, 1, v5))
  {
    result = sub_1CEFCCC44(v4, &unk_1EC4BE310, qword_1CF9FCBE0);
  }

  else
  {
    (*(v6 + 16))(v9, v4, v5);
    sub_1CEFCCC44(v4, &unk_1EC4BE310, qword_1CF9FCBE0);
    sub_1CF9E5958();
    v19 = *(v6 + 8);
    v19(v9, v5);
    (*(v6 + 32))(v15, v12, v5);
    v20 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
    v21 = sub_1CF9E5928();
    v28[0] = 0;
    v22 = [v20 removeItemAtURL:v21 error:v28];

    if (v22)
    {
      v23 = v28[0];
    }

    else
    {
      v24 = v28[0];
      v25 = sub_1CF9E57F8();

      swift_willThrow();
    }

    result = (v19)(v15, v5);
  }

  v26 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF8306AC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v98 = sub_1CF9E6118();
  v101 = *(v98 - 8);
  v6 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v98);
  v100 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v102 = &v90 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v103 = &v90 - v11;
  v12 = sub_1CF9E5A58();
  v104 = *(v12 - 8);
  v13 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v97 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v99 = &v90 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v105 = &v90 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v106 = &v90 - v20;
  v21 = sub_1CF9E5D98();
  v22 = *(v21 - 8);
  v23 = v22[8];
  MEMORY[0x1EEE9AC00](v21);
  v96 = &v90 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1108, &qword_1CFA18060);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v90 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v90 - v33;
  if (!a1)
  {
    v35 = a2;
    sub_1CF82ED30(a2, 7498084, 0xE300000000000000, 0);
    goto LABEL_7;
  }

  v93 = v32;
  v94 = v22;
  v95 = v21;
  v35 = a2;
  sub_1CF82ED30(a2, 7498084, 0xE300000000000000, *(a1 + qword_1EDEBBDE0));
  v36 = *(v3 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend___fpfs);
  if (v36)
  {
    v90 = a2;
    v92 = v12;
    v37 = qword_1EDEBBDA8;
    swift_beginAccess();
    v91 = a1;
    sub_1CEFCCBDC(a1 + v37, v34, &unk_1EC4BEDE0, qword_1CF9FA390);
    v38 = *(v36 + 16);
    v39 = qword_1EDEBBDA8;
    swift_beginAccess();
    v40 = *(v25 + 48);
    sub_1CEFCCBDC(v34, v28, &unk_1EC4BEDE0, qword_1CF9FA390);
    sub_1CEFCCBDC(v38 + v39, &v28[v40], &unk_1EC4BEDE0, qword_1CF9FA390);
    v41 = v94;
    v42 = v94[6];
    v43 = v95;
    if (v42(v28, 1, v95) == 1)
    {
      sub_1CEFCCC44(v34, &unk_1EC4BEDE0, qword_1CF9FA390);
      if (v42(&v28[v40], 1, v43) == 1)
      {
        sub_1CEFCCC44(v28, &unk_1EC4BEDE0, qword_1CF9FA390);
        v12 = v92;
        a1 = v91;
        v35 = v90;
        goto LABEL_7;
      }
    }

    else
    {
      v83 = v93;
      sub_1CEFCCBDC(v28, v93, &unk_1EC4BEDE0, qword_1CF9FA390);
      if (v42(&v28[v40], 1, v43) != 1)
      {
        v86 = &v28[v40];
        v87 = v96;
        (v41[4])(v96, v86, v43);
        sub_1CEFCCCA4(&qword_1EDEAECC0, MEMORY[0x1E69695A8]);
        v88 = sub_1CF9E6868();
        v89 = v41[1];
        v89(v87, v43);
        sub_1CEFCCC44(v34, &unk_1EC4BEDE0, qword_1CF9FA390);
        v89(v83, v43);
        result = sub_1CEFCCC44(v28, &unk_1EC4BEDE0, qword_1CF9FA390);
        v12 = v92;
        a1 = v91;
        v35 = v90;
        if ((v88 & 1) == 0)
        {
          return result;
        }

        goto LABEL_7;
      }

      sub_1CEFCCC44(v34, &unk_1EC4BEDE0, qword_1CF9FA390);
      (v41[1])(v83, v43);
    }

    return sub_1CEFCCC44(v28, &qword_1EC4C1108, &qword_1CFA18060);
  }

LABEL_7:
  sub_1CF82FCA4(v35);
  sub_1CF82E208(v106, v105);
  if (a1)
  {
    sub_1CF6C0474();
  }

  v44 = *(v3 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend___fpfs);
  v45 = v104;
  v46 = v98;
  v47 = v99;
  if (v44)
  {
    *(v44 + 24) = 1;

    sub_1CF8E976C(0);
  }

  v48 = fpfs_current_or_default_log();
  v49 = v103;
  sub_1CF9E6128();
  v50 = *(v45 + 16);
  v96 = (v45 + 16);
  v95 = v50;
  v50(v47, v106, v12);
  v51 = sub_1CF9E6108();
  v52 = sub_1CF9E72C8();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v107 = v94;
    *v53 = 136315138;
    v54 = sub_1CF9E5928();
    v55 = v12;
    v56 = [v54 fp_shortDescription];

    v57 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v58 = v46;
    v60 = v59;

    v12 = v55;
    v99 = *(v104 + 8);
    (v99)(v47, v55);
    v61 = sub_1CEFD0DF0(v57, v60, &v107);
    v46 = v58;

    *(v53 + 4) = v61;
    _os_log_impl(&dword_1CEFC7000, v51, v52, "🚮  Delete the FPFS DB %s", v53, 0xCu);
    v62 = v94;
    __swift_destroy_boxed_opaque_existential_1(v94);
    MEMORY[0x1D386CDC0](v62, -1, -1);
    MEMORY[0x1D386CDC0](v53, -1, -1);

    v63 = *(v101 + 8);
    v64 = v103;
    v65 = v58;
  }

  else
  {

    v99 = *(v45 + 8);
    (v99)(v47, v12);
    v63 = *(v101 + 8);
    v64 = v49;
    v65 = v46;
  }

  v103 = v63;
  (v63)(v64, v65);
  v66 = v105;
  v67 = v97;
  sub_1CF8E8D5C(v106);
  v68 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v95(v67, v66, v12);
  v69 = sub_1CF9E6108();
  v70 = sub_1CF9E72C8();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = v12;
    v73 = swift_slowAlloc();
    v107 = v73;
    *v71 = 136315138;
    LODWORD(v98) = v70;
    v74 = sub_1CF9E5928();
    v75 = v46;
    v76 = [v74 fp_shortDescription];

    v77 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v79 = v78;

    v46 = v75;
    (v99)(v67, v72);
    v80 = sub_1CEFD0DF0(v77, v79, &v107);

    *(v71 + 4) = v80;
    _os_log_impl(&dword_1CEFC7000, v69, v98, "🚮  Delete the FPFS Wharf %s", v71, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v73);
    v81 = v73;
    v12 = v72;
    MEMORY[0x1D386CDC0](v81, -1, -1);
    v82 = v71;
    v66 = v105;
    MEMORY[0x1D386CDC0](v82, -1, -1);
  }

  else
  {

    (v99)(v67, v12);
  }

  (v103)(v102, v46);
  sub_1CF8E8D5C(v66);
  v85 = v99;
  (v99)(v66, v12);
  return v85(v106, v12);
}

void sub_1CF8312C4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong volume];

    if (v2)
    {
      if (([v2 isDefaultVolumeForCurrentPersona] & 1) == 0 && FPFeatureFlagEbihilIsEnabled() && (sub_1CF8313C0() & 1) == 0)
      {
        [v2 removeBrokenEbihilLinksFromRoot];
      }
    }
  }
}

uint64_t sub_1CF8313C0()
{
  v55[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1CF9E6118();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v47 - v8;
  v10 = sub_1CF9E5A58();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v47 - v16;
  sub_1CF833880(v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1CEFCCC44(v9, &unk_1EC4BE310, qword_1CF9FCBE0);
LABEL_7:
    result = 0;
    goto LABEL_8;
  }

  v53 = v2;
  (*(v11 + 32))(v17, v9, v10);
  sub_1CF9E5A18();
  v18 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_providerDomainID);
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  sub_1CF9E6978();

  sub_1CF9E6978();

  is_equal = fpfs_root_exposure_symlink_xattr_is_equal();

  if (!is_equal)
  {
    (*(v11 + 8))(v17, v10);
    goto LABEL_7;
  }

  v20 = [objc_opt_self() defaultManager];
  v21 = sub_1CF9E5928();
  v55[0] = 0;
  v22 = [v20 removeItemAtURL:v21 error:v55];

  if (!v22)
  {
    v27 = v55[0];
    v28 = sub_1CF9E57F8();

    swift_willThrow();
    v29 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    (*(v11 + 16))(v14, v17, v10);
    v30 = v28;
    v31 = sub_1CF9E6108();
    v32 = sub_1CF9E72A8();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v47 = v33;
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v55[0] = v52;
      *v33 = 136315394;
      v49 = v31;
      sub_1CF9E5A18();
      v34 = sub_1CF9E6888();
      v48 = v32;
      v35 = v34;

      v36 = [v35 fp_prettyPath];

      v37 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v39 = v38;

      v50 = *(v11 + 8);
      v50(v14, v10);
      v40 = sub_1CEFD0DF0(v37, v39, v55);

      v41 = v47;
      *(v47 + 1) = v40;
      *(v41 + 6) = 2112;
      swift_getErrorValue();
      v42 = Error.prettyDescription.getter(v54);
      *(v41 + 14) = v42;
      v43 = v51;
      *v51 = v42;
      v44 = v49;
      _os_log_impl(&dword_1CEFC7000, v49, v48, "Failed to remove %s domain link, with error %@", v41, 0x16u);
      sub_1CEFCCC44(v43, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v43, -1, -1);
      v45 = v52;
      __swift_destroy_boxed_opaque_existential_1(v52);
      MEMORY[0x1D386CDC0](v45, -1, -1);
      MEMORY[0x1D386CDC0](v41, -1, -1);

      (*(v53 + 8))(v5, v1);
      v50(v17, v10);
    }

    else
    {

      v46 = *(v11 + 8);
      v46(v14, v10);
      (*(v53 + 8))(v5, v1);
      v46(v17, v10);
    }

    goto LABEL_7;
  }

  v23 = *(v11 + 8);
  v24 = v55[0];
  v23(v17, v10);
  result = 1;
LABEL_8:
  v26 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF8319C0()
{
  v2 = v0;
  v69[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1CF9E5A58();
  v67 = *(v3 - 8);
  v4 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v61 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v64 = &v61 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v61 - v11;
  v13 = *&v0[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pathsManager];
  v65 = v2;
  v63 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_domain;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
  }

  v15 = Strong;
  v62 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v12;
  v66 = v3;
  v16 = [Strong nsDomain];
  v17 = [v16 personaIdentifier];

  if (v17)
  {
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  MEMORY[0x1EEE9AC00](v18);
  *(&v61 - 2) = v13;
  *(&v61 - 1) = v15;
  v21 = v68;
  sub_1CF825834(v20, sub_1CF8E4E70, (&v61 - 4), v68);

  if (!v1)
  {
    v23 = objc_opt_self();
    v24 = [v23 defaultManager];
    sub_1CF9E5A18();
    v25 = sub_1CF9E6888();

    v26 = [v24 fileExistsAtPath_];

    if (v26)
    {
      result = (*(v67 + 8))(v21, v66);
    }

    else
    {
      v27 = v65;
      v28 = sub_1CEFCE64C();
      v29 = v66;
      v30 = v67;
      if (*(v28 + 16))
      {
        v61 = v23;
        (*(v67 + 16))(v7, v28 + ((*(v67 + 80) + 32) & ~*(v67 + 80)), v66);

        v31 = *(v30 + 32);
        v32 = v30;
        v33 = v64;
        v31(v64, v7, v29);
        v34 = v68;
        v35 = sub_1CF9E5928();
        v36 = sub_1CF9E5928();
        v37 = [v35 fp:v36 relationshipToItemAtURL:?];

        if (v37 == 1)
        {
          v38 = *(v32 + 8);
          v38(v33, v29);
          result = (v38)(v34, v29);
          goto LABEL_26;
        }

        v39 = swift_unknownObjectWeakLoadStrong();
        v30 = v32;
        v40 = v61;
        if (v39)
        {
          v41 = v39;
          v42 = [v39 volume];

          if (v42)
          {
            if (![v42 isDefaultVolumeForCurrentPersona] && FPFeatureFlagEbihilIsEnabled() && (sub_1CF8313C0() & 1) == 0)
            {
              [v42 removeBrokenEbihilLinksFromRoot];
            }
          }
        }

        v43 = [v40 defaultManager];
        v44 = sub_1CF9E5928();
        v45 = v68;
        v46 = sub_1CF9E5928();
        v69[0] = 0;
        v47 = [v43 moveItemAtURL:v44 toURL:v46 error:v69];

        if ((v47 & 1) == 0)
        {
          v58 = v69[0];
          sub_1CF9E57F8();

          swift_willThrow();
          v59 = *(v30 + 8);
          v59(v64, v29);
          result = (v59)(v45, v29);
          goto LABEL_26;
        }

        v48 = *(v30 + 8);
        v49 = v69[0];
        v48(v64, v29);
        v27 = v65;
      }

      else
      {
      }

      v64 = *&v27[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue];
      v50 = swift_unknownObjectWeakLoadStrong();
      if (v50)
      {
        v51 = v50;
        v52 = [v50 log];
      }

      else
      {
        v52 = 0;
      }

      v53 = v62;
      (*(v30 + 16))(v62, v68, v29);
      v54 = (*(v30 + 80) + 24) & ~*(v30 + 80);
      v55 = swift_allocObject();
      v56 = v65;
      *(v55 + 16) = v65;
      (*(v30 + 32))(v55 + v54, v53, v29);
      *(v55 + ((v4 + v54 + 7) & 0xFFFFFFFFFFFFFFF8)) = MEMORY[0x1E69E7CC0];
      v57 = v56;
      sub_1CF01001C(v52, "updateRootAfterDomainChange()", 29, 2, sub_1CF8E4E8C, v55);

      result = (*(v30 + 8))(v68, v29);
    }
  }

LABEL_26:
  v60 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF83204C(char *a1, uint64_t a2, uint64_t a3)
{
  v38 = a1;
  v39 = a2;
  v40 = a3;
  sub_1CF052DA4(a1, sub_1CF902220);
  v5 = objc_sync_enter(a1);
  if (v5)
  {
    goto LABEL_12;
  }

  v6 = *&a1[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend___fpfs];

  v7 = objc_sync_exit(a1);
  if (v7)
  {
    MEMORY[0x1EEE9AC00](v7);
    v33 = a1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v32, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  if (v6 || (v8 = *&a1[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_startupQueue], MEMORY[0x1EEE9AC00](v7), v33 = a1, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4C28, &qword_1CFA17E60), result = sub_1CF9E7398(), (v6 = aBlock) != 0))
  {
    v10 = *(*(*(v6 + 16) + 32) + 16);
    type metadata accessor for VFSFileTree(0);
    v11 = swift_dynamicCastClassUnconditional();
    v37 = v35;
    v12 = *(v11 + 216);
    MEMORY[0x1EEE9AC00](v11);
    v33 = v6;
    v34 = a2;
    v14 = v13;
    v15 = fpfs_current_log();
    v36 = fpfs_adopt_log();
    v49 = 0;
    v50 = 1;
    aBlock = sub_1CF9E73C8();
    v42 = v16;
    MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
    v17 = sub_1CF9E7988();
    MEMORY[0x1D3868CC0](v17);

    sub_1CF9E6978();

    v18 = __fp_log_fork();

    v35[1] = v32;
    v49 = v18;
    v50 = 0;
    MEMORY[0x1EEE9AC00](v19);
    v28[2] = v15;
    v28[3] = &v49;
    v28[4] = v14;
    v28[5] = "updateRootAfterDomainChange()";
    v28[6] = 29;
    v29 = 2;
    v30 = sub_1CF902240;
    v31 = v32;
    v48 = 1;
    v47 = 0;
    v20 = swift_allocObject();
    v20[2] = &v48;
    v20[3] = sub_1CF2BA13C;
    v20[4] = v28;
    v20[5] = &v47;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_1CF2BA170;
    *(v21 + 24) = v20;
    v45 = sub_1CF1C0B54;
    v46 = v21;
    aBlock = MEMORY[0x1E69E9820];
    v42 = 1107296256;
    v43 = sub_1CEFFD02C;
    v44 = &block_descriptor_6084;
    v22 = _Block_copy(&aBlock);

    FPDispatchAsyncAndWait(v14, v22);
    _Block_release(v22);
    LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

    if (v22)
    {
      __break(1u);
    }

    else
    {
      v23 = v47;
      if (v47)
      {
        swift_willThrow();

        v26 = v36;
        v27 = fpfs_adopt_log();

        aBlock = 0;
        v42 = 0xE000000000000000;
        sub_1CF9E7948();
        MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA5F100);
        v49 = v23;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
        sub_1CF9E7B58();
        LODWORD(v34) = 0;
        v33 = 842;
        result = sub_1CF9E7B68();
        __break(1u);
        return result;
      }

      if ((v48 & 1) == 0)
      {

        v24 = v36;
        v25 = fpfs_adopt_log();

        sub_1CF832910();
      }
    }

    __break(1u);
LABEL_12:
    MEMORY[0x1EEE9AC00](v5);
    v33 = a1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v32, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  return result;
}

void sub_1CF8325F0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF290, &unk_1CFA006C0);
  v4 = sub_1CF9E5A58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1CF9FA450;
  (*(v5 + 16))(v8 + v7, a2, v4);

  sub_1CF000FB8(v9);
  v10 = a1 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend___cachedURLs;
  v11 = *(a1 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend___cachedURLs);
  *v10 = v8;
  v12 = *(v10 + 8);
  *(v10 + 8) = 0;
  sub_1CF8F0650(v11, v12);
}

uint64_t sub_1CF832728(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*(a1 + 16) + 32) + 16);
  type metadata accessor for VFSFileTree(0);
  swift_dynamicCastClassUnconditional();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF290, &unk_1CFA006C0);
  v4 = sub_1CF9E5A58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1CF9FA450;
  (*(v5 + 16))(v8 + v7, a2, v4);

  sub_1CF261A18(v8);
  swift_setDeallocating();
  v9 = *(v8 + 16);
  swift_arrayDestroy();
  swift_deallocClassInstance();
}

void sub_1CF832910()
{
  v1 = v0;
  v137 = sub_1CF9E6118();
  v2 = *(v137 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v137);
  v136 = (&v127 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v133 = &v127 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v135 = &v127 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v134 = &v127 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v127 - v13;
  v138 = sub_1CF9E5A58();
  v15 = *(v138 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v138);
  v18 = &v127 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v127 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v127 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v127 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v127 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v139 = &v127 - v32;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v34 = Strong;
    v140 = [Strong volume];

    if (v140)
    {
      v132 = v15;
      v35 = sub_1CEFCE64C();
      if (*(v35 + 16))
      {
        v130 = v2;
        v131 = v30;
        v37 = v132;
        v38 = v35 + ((*(v132 + 80) + 32) & ~*(v132 + 80));
        v39 = v138;
        v40 = v139;
        v128 = *(v132 + 16);
        v129 = v132 + 16;
        v128(v139, v38, v138);

        if ([v140 isDefaultVolumeForCurrentPersona])
        {
          (*(v37 + 8))(v40, v39);

          return;
        }

        sub_1CF833880(v14);
        if ((*(v37 + 48))(v14, 1, v39) == 1)
        {
          (*(v37 + 8))(v139, v39);

          sub_1CEFCCC44(v14, &unk_1EC4BE310, qword_1CF9FCBE0);
          return;
        }

        v41 = v131;
        (*(v37 + 32))(v131, v14, v39);
        v42 = [v140 root];
        v43 = v139;
        if (!v42)
        {
          _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v42 = sub_1CF9E6888();
        }

        sub_1CF9E5A18();
        v44 = sub_1CF9E6888();

        v45 = [v42 fp:v44 relativePathWithRealpath:?];

        if (v45)
        {
          v46 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v48 = v47;

          sub_1CF9E5A18();
          v49 = sub_1CF9E6978();
          v50 = sub_1CF9E6978();

          v51 = symlink((v49 + 32), (v50 + 32));

          if (!v51)
          {

            sub_1CF9E5A18();
            v87 = *(v1 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_providerDomainID);
            _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            sub_1CF9E6978();

            sub_1CF9E6978();

            v88 = fpfs_set_root_exposure_symlink_xattr();

            if (!v88)
            {

              v125 = *(v132 + 8);
              v126 = v138;
              v125(v41, v138);
              v125(v139, v126);
              return;
            }

            v89 = fpfs_current_or_default_log();
            v90 = v133;
            sub_1CF9E6128();
            v91 = v41;
            v92 = v41;
            v93 = v138;
            v128(v21, v91, v138);
            v94 = sub_1CF9E6108();
            v95 = sub_1CF9E72A8();
            if (os_log_type_enabled(v94, v95))
            {
              v96 = swift_slowAlloc();
              v97 = swift_slowAlloc();
              v141[0] = v97;
              *v96 = 136315650;
              *(v96 + 4) = sub_1CEFD0DF0(0xD000000000000023, 0x80000001CFA5F0A0, v141);
              *(v96 + 12) = 2080;
              v98 = sub_1CF9E5928();
              v99 = [v98 fp_shortDescription];

              v100 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
              v102 = v101;

              v103 = *(v132 + 8);
              v103(v21, v93);
              v104 = sub_1CEFD0DF0(v100, v102, v141);

              *(v96 + 14) = v104;
              *(v96 + 22) = 1024;
              *(v96 + 24) = MEMORY[0x1D38683F0](v105);
              _os_log_impl(&dword_1CEFC7000, v94, v95, "%s xattr wasn't set in %s: %{darwin.errno}d", v96, 0x1Cu);
              swift_arrayDestroy();
              MEMORY[0x1D386CDC0](v97, -1, -1);
              MEMORY[0x1D386CDC0](v96, -1, -1);

              (*(v130 + 8))(v133, v137);
              v103(v131, v93);
              v103(v139, v93);
              return;
            }

            v121 = *(v132 + 8);
            v121(v21, v93);
            (*(v130 + 8))(v90, v137);
            v121(v92, v93);
            v122 = v139;
            v124 = v93;
            goto LABEL_33;
          }

          if (MEMORY[0x1D38683F0](v52) == 17)
          {

            v53 = fpfs_current_or_default_log();
            v54 = v134;
            sub_1CF9E6128();
            v55 = v138;
            v128(v27, v41, v138);
            v56 = sub_1CF9E6108();
            v57 = sub_1CF9E72A8();
            if (os_log_type_enabled(v56, v57))
            {
              v58 = swift_slowAlloc();
              v136 = swift_slowAlloc();
              v141[0] = v136;
              *v58 = 136315138;
              v59 = sub_1CF9E5928();
              v60 = [v59 fp_shortDescription];

              v61 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
              v63 = v62;

              v64 = *(v132 + 8);
              v64(v27, v55);
              v65 = sub_1CEFD0DF0(v61, v63, v141);

              *(v58 + 4) = v65;
              _os_log_impl(&dword_1CEFC7000, v56, v57, "There is already a file in %s, cannot create new domain link", v58, 0xCu);
              v66 = v136;
              __swift_destroy_boxed_opaque_existential_1(v136);
              MEMORY[0x1D386CDC0](v66, -1, -1);
              MEMORY[0x1D386CDC0](v58, -1, -1);

              (*(v130 + 8))(v134, v137);
              v64(v41, v55);
              v64(v139, v55);
            }

            else
            {

              v123 = *(v132 + 8);
              v123(v27, v55);
              (*(v130 + 8))(v54, v137);
              v123(v41, v55);
              v123(v139, v55);
            }

            return;
          }

          v106 = fpfs_current_or_default_log();
          v107 = v135;
          sub_1CF9E6128();
          v69 = v138;
          v128(v24, v41, v138);

          v108 = sub_1CF9E6108();
          v109 = sub_1CF9E72A8();

          if (os_log_type_enabled(v108, v109))
          {
            v110 = swift_slowAlloc();
            v136 = swift_slowAlloc();
            v141[0] = v136;
            *v110 = 136315650;
            LODWORD(v134) = v109;
            v111 = sub_1CF9E5928();
            v112 = [v111 fp_shortDescription];

            v113 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v115 = v114;

            v116 = *(v132 + 8);
            v116(v24, v69);
            v117 = sub_1CEFD0DF0(v113, v115, v141);

            *(v110 + 4) = v117;
            *(v110 + 12) = 2080;
            v118 = sub_1CEFD0DF0(v46, v48, v141);

            *(v110 + 14) = v118;
            *(v110 + 22) = 1024;
            *(v110 + 24) = MEMORY[0x1D38683F0](v119);
            _os_log_impl(&dword_1CEFC7000, v108, v134, "cannot create symlink in %s to %s: %{darwin.errno}d", v110, 0x1Cu);
            v120 = v136;
            swift_arrayDestroy();
            MEMORY[0x1D386CDC0](v120, -1, -1);
            MEMORY[0x1D386CDC0](v110, -1, -1);

            (*(v130 + 8))(v135, v137);
            v116(v131, v69);
            v116(v139, v69);
            return;
          }

          v121 = *(v132 + 8);
          v121(v24, v69);
          (*(v130 + 8))(v107, v137);
          v121(v41, v69);
          v122 = v139;
        }

        else
        {
          v67 = fpfs_current_or_default_log();
          v68 = v136;
          sub_1CF9E6128();
          v69 = v138;
          v128(v18, v43, v138);
          v70 = v140;
          v71 = sub_1CF9E6108();
          v72 = sub_1CF9E72A8();

          if (os_log_type_enabled(v71, v72))
          {
            v73 = swift_slowAlloc();
            v140 = swift_slowAlloc();
            v141[0] = v140;
            *v73 = 136315394;
            LODWORD(v134) = v72;
            v74 = sub_1CF9E5928();
            v75 = [v74 fp_shortDescription];

            v76 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v78 = v77;

            v135 = *(v132 + 8);
            (v135)(v18, v69);
            v79 = sub_1CEFD0DF0(v76, v78, v141);

            *(v73 + 4) = v79;
            *(v73 + 12) = 2080;
            v80 = [v70 root];
            v81 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v83 = v82;

            v84 = sub_1CEFD0DF0(v81, v83, v141);

            *(v73 + 14) = v84;
            _os_log_impl(&dword_1CEFC7000, v71, v134, "failed to calculate sync root %s relative path to volume root %s", v73, 0x16u);
            v85 = v140;
            swift_arrayDestroy();
            MEMORY[0x1D386CDC0](v85, -1, -1);
            MEMORY[0x1D386CDC0](v73, -1, -1);

            (*(v130 + 8))(v136, v137);
            v86 = v135;
            (v135)(v131, v69);
            (v86)(v43, v69);
            return;
          }

          v121 = *(v132 + 8);
          v121(v18, v69);
          (*(v130 + 8))(v68, v137);
          v121(v41, v69);
          v122 = v43;
        }

        v124 = v69;
LABEL_33:
        v121(v122, v124);
        return;
      }

      v36 = v140;
    }
  }
}

uint64_t sub_1CF833880@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v37 - v4;
  v6 = sub_1CF9E5868();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CF9E5A58();
  v44 = *(v11 - 8);
  v12 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v37 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v37 - v19;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v40 = v5;
    v41 = v7;
    v42 = v6;
    v43 = a1;
    v22 = Strong;
    v23 = [Strong volume];

    v24 = [v23 root];
    v25 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

    v26 = sub_1CEFCE64C();
    v39 = v25;
    if (*(v26 + 16))
    {
      (*(v44 + 16))(v17, v26 + ((*(v44 + 80) + 32) & ~*(v44 + 80)), v11);

      (*(v44 + 32))(v20, v17, v11);
      v29 = *MEMORY[0x1E6968F58];
      v30 = v41;
      v37[0] = *(v41 + 104);
      v31 = v42;
      (v37[0])(v10, v29);
      v32 = *(v44 + 56);
      v37[1] = v44 + 56;
      v38 = v32;
      v32(v40, 1, 1, v11);
      sub_1CF9E5A38();
      v45 = sub_1CF9E58E8();
      v46 = v33;
      v34 = v31;
      (v37[0])(v10, *MEMORY[0x1E6968F68], v31);
      sub_1CEFE4E68();
      v35 = v43;
      sub_1CF9E5A48();
      (*(v30 + 8))(v10, v34);
      v36 = *(v44 + 8);
      v44 += 8;
      v36(v14, v11);
      v36(v20, v11);

      return v38(v35, 0, 1, v11);
    }

    a1 = v43;
  }

  v27 = *(v44 + 56);

  return v27(a1, 1, 1, v11);
}

void sub_1CF833CE4(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1CF9E79E8();
  v293 = *(v6 - 8);
  v294 = v6;
  v7 = *(v293 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v312 = (&v290 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBA8, &qword_1CFA12B20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v299 = &v290 - v11;
  v12 = sub_1CF9E53C8();
  v297 = *(v12 - 8);
  v298 = v12;
  v13 = *(v297 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v296 = &v290 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1CF9E6118();
  v314 = *(v15 - 8);
  v16 = *(v314 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v307 = &v290 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v290 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v313 = &v290 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v295 = &v290 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v303 = &v290 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v292 = &v290 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v302 = &v290 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v301 = &v290 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v304 = &v290 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v300 = &v290 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v306 = &v290 - v38;
  v39 = sub_1CF9E5D98();
  v309 = *(v39 - 8);
  v310 = v39;
  v40 = *(v309 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v305 = &v290 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1108, &qword_1CFA18060);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v290 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46 - 8);
  v49 = &v290 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v290 - v51;
  v315 = a1;
  if (!a1)
  {
    goto LABEL_18;
  }

  v311 = v15;
  v308 = v3;
  v53 = *&v3[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend___fpfs];
  if (v53)
  {
    v290 = v20;
    v291 = a2;
    v54 = qword_1EDEBBDA8;
    v55 = v315;
    swift_beginAccess();
    sub_1CEFCCBDC(v55 + v54, v52, &unk_1EC4BEDE0, qword_1CF9FA390);
    v56 = *(v53 + 16);
    v57 = qword_1EDEBBDA8;
    swift_beginAccess();
    v58 = *(v42 + 48);
    sub_1CEFCCBDC(v52, v45, &unk_1EC4BEDE0, qword_1CF9FA390);
    sub_1CEFCCBDC(v56 + v57, &v45[v58], &unk_1EC4BEDE0, qword_1CF9FA390);
    v59 = v309;
    v60 = v310;
    v61 = *(v309 + 48);
    if (v61(v45, 1, v310) == 1)
    {
      sub_1CEFCCC44(v52, &unk_1EC4BEDE0, qword_1CF9FA390);
      v62 = v61(&v45[v58], 1, v60);
      a2 = v291;
      if (v62 == 1)
      {
        sub_1CEFCCC44(v45, &unk_1EC4BEDE0, qword_1CF9FA390);
        v20 = v290;
        goto LABEL_13;
      }
    }

    else
    {
      sub_1CEFCCBDC(v45, v49, &unk_1EC4BEDE0, qword_1CF9FA390);
      if (v61(&v45[v58], 1, v60) != 1)
      {
        v73 = v305;
        (*(v59 + 32))(v305, &v45[v58], v60);
        sub_1CEFCCCA4(&qword_1EDEAECC0, MEMORY[0x1E69695A8]);
        v74 = sub_1CF9E6868();
        v75 = *(v59 + 8);
        v75(v73, v60);
        sub_1CEFCCC44(v52, &unk_1EC4BEDE0, qword_1CF9FA390);
        v75(v49, v60);
        sub_1CEFCCC44(v45, &unk_1EC4BEDE0, qword_1CF9FA390);
        v20 = v290;
        a2 = v291;
        if (v74)
        {
          goto LABEL_13;
        }

LABEL_9:
        v63 = fpfs_current_or_default_log();
        v64 = v307;
        sub_1CF9E6128();
        v65 = a2;
        v66 = sub_1CF9E6108();
        v67 = sub_1CF9E72A8();

        v68 = os_log_type_enabled(v66, v67);
        v69 = v314;
        if (v68)
        {
          v70 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          *v70 = 138412290;
          swift_getErrorValue();
          v72 = Error.prettyDescription.getter(v316);
          *(v70 + 4) = v72;
          *v71 = v72;
          _os_log_impl(&dword_1CEFC7000, v66, v67, "ignoring error on obsolete database: %@", v70, 0xCu);
          sub_1CEFCCC44(v71, &qword_1EC4BE350, &unk_1CF9FC3B0);
          v69 = v314;
          MEMORY[0x1D386CDC0](v71, -1, -1);
          MEMORY[0x1D386CDC0](v70, -1, -1);
        }

        (*(v69 + 8))(v64, v311);
        return;
      }

      sub_1CEFCCC44(v52, &unk_1EC4BEDE0, qword_1CF9FA390);
      (*(v59 + 8))(v49, v60);
      a2 = v291;
    }

    sub_1CEFCCC44(v45, &qword_1EC4C1108, &qword_1CFA18060);
    goto LABEL_9;
  }

LABEL_13:
  if (*(v315 + qword_1EDEBBE10) == 1)
  {
    v76 = fpfs_current_or_default_log();
    v77 = v306;
    sub_1CF9E6128();
    v78 = a2;
    v79 = sub_1CF9E6108();
    v80 = sub_1CF9E72A8();

    v81 = os_log_type_enabled(v79, v80);
    v82 = v314;
    if (v81)
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      *v83 = 138412290;
      swift_getErrorValue();
      v85 = Error.prettyDescription.getter(v317);
      *(v83 + 4) = v85;
      *v84 = v85;
      _os_log_impl(&dword_1CEFC7000, v79, v80, "ignoring error on discarded database: %@", v83, 0xCu);
      sub_1CEFCCC44(v84, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v84, -1, -1);
      MEMORY[0x1D386CDC0](v83, -1, -1);
    }

    (*(v82 + 8))(v77, v311);
    return;
  }

  *(v315 + qword_1EDEBBE10) = 1;
  v15 = v311;
  v3 = v308;
LABEL_18:
  v86 = a2;
  v322 = a2;
  v87 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v88 = swift_dynamicCast();
  v89 = v312;
  v90 = v313;
  if (v88)
  {
    if (v321 - 1 <= 1)
    {
      v91 = v320[0];

      sub_1CF833CE4(v315, v91);
      return;
    }

    sub_1CF47FB38(v320);
  }

  v92 = v20;

  v320[0] = a2;
  v93 = a2;
  v94 = swift_dynamicCast();

  if (v94)
  {
    return;
  }

  v322 = a2;
  v95 = a2;
  if (swift_dynamicCast())
  {
    if (v321 == 3)
    {
      if (sub_1CF828E4C())
      {
        v311 = v15;
        v96 = sub_1CF9E57E8();
        v97 = fpfs_current_or_default_log();
        v98 = v300;
        sub_1CF9E6128();
        v99 = v96;
        v100 = a2;
        v101 = v99;
        v102 = v3;
        v103 = sub_1CF9E6108();
        v104 = v86;
        v105 = sub_1CF9E72B8();

        if (os_log_type_enabled(v103, v105))
        {
          v106 = swift_slowAlloc();
          v312 = swift_slowAlloc();
          v313 = swift_slowAlloc();
          v319[0] = v313;
          *v106 = 136315906;
          v107 = [*&v102[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_providerDomainID] fp_obfuscatedProviderDomainID];
          v108 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v110 = v109;

          v111 = sub_1CEFD0DF0(v108, v110, v319);

          *(v106 + 4) = v111;
          *(v106 + 12) = 2082;
          v112 = [v101 domain];
          v113 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v115 = v114;

          v116 = sub_1CEFD0DF0(v113, v115, v319);

          *(v106 + 14) = v116;
          *(v106 + 22) = 2050;
          v117 = [v101 code];

          *(v106 + 24) = v117;
          *(v106 + 32) = 2112;
          v86 = v104;
          swift_getErrorValue();
          v118 = Error.prettyDescription.getter(v318);
          *(v106 + 34) = v118;
          v119 = v312;
          *v312 = v118;
          _os_log_impl(&dword_1CEFC7000, v103, v105, "  🚚  cannot initialize the database for domain %s, disconnecting domain (needs reimport).  Error domain: %{public}s. Error code: %{public}ld.  Error description: %@", v106, 0x2Au);
          sub_1CEFCCC44(v119, &qword_1EC4BE350, &unk_1CF9FC3B0);
          MEMORY[0x1D386CDC0](v119, -1, -1);
          v120 = v313;
          swift_arrayDestroy();
          MEMORY[0x1D386CDC0](v120, -1, -1);
          MEMORY[0x1D386CDC0](v106, -1, -1);

          (*(v314 + 8))(v300, v311);
        }

        else
        {

          (*(v314 + 8))(v98, v311);
        }

        v178 = *&v102[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_startupQueue];
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v180 = Strong;
          v181 = [Strong log];
        }

        else
        {
          v181 = 0;
        }

        v188 = swift_allocObject();
        *(v188 + 16) = v315;

        sub_1CF01001C(v181, "handleDatabaseError(db:error:)", 30, 2, sub_1CF902E38, v188);

        v189 = sub_1CF9E57E8();
        v190 = FPDomainUnavailableErrorWithUnderlyingError();

        if (v190)
        {

          v191 = *&v102[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_startStatus];
          *&v102[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_startStatus] = v190;
          sub_1CF8F89F4(v191);

          return;
        }

        __break(1u);
        goto LABEL_95;
      }
    }

    else
    {
      sub_1CF47FB38(v320);
    }
  }

  v308 = v3;

  _s3__C4CodeOMa_0(0);
  v320[0] = 5;
  sub_1CEFCCCA4(&unk_1EC4BD5E0, _s3__C4CodeOMa_0);
  if (sub_1CF9E5658())
  {
    v121 = fpfs_current_or_default_log();
    v122 = v304;
    sub_1CF9E6128();
    v123 = sub_1CF9E6108();
    v124 = sub_1CF9E72A8();
    if (os_log_type_enabled(v123, v124))
    {
      v125 = v15;
      v126 = swift_slowAlloc();
      *v126 = 0;
      _os_log_impl(&dword_1CEFC7000, v123, v124, "🔐  the database is still locked, retrying", v126, 2u);
      v127 = v126;
      v15 = v125;
      MEMORY[0x1D386CDC0](v127, -1, -1);
    }

    (*(v314 + 8))(v122, v15);
    v128 = *&v308[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_startStatus];
    *&v308[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_startStatus] = v86 | 0x4000000000000000;
    goto LABEL_33;
  }

  swift_getErrorValue();
  v130 = sub_1CF4C33FC(v319[42], v319[43]);
  v311 = v15;
  if ((v130 & 1) == 0)
  {
    swift_getErrorValue();
    sub_1CF4C2DD8(v319[38]);
    if ((v131 & 1) == 0)
    {
      v322 = a2;
      v161 = a2;
      if (swift_dynamicCast())
      {
        v162 = a2;
        sub_1CF47FB38(v320);

        v163 = v308;
      }

      else
      {

        v320[0] = a2;
        v186 = a2;
        type metadata accessor for PQLSqliteError(0);
        v187 = swift_dynamicCast();
        v163 = v308;
        if (v187)
        {
          v162 = a2;
        }

        else
        {

          v320[0] = a2;
          v192 = a2;
          v193 = v294;
          v162 = a2;
          if (!swift_dynamicCast())
          {

            v226 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_startStatus;
            if ((~*&v163[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_startStatus] & 0xF000000000000007) == 0)
            {
              v227 = fpfs_current_or_default_log();
              sub_1CF9E6128();
              v228 = a2;
              v229 = v163;
              v230 = sub_1CF9E6108();
              v231 = sub_1CF9E72B8();

              if (os_log_type_enabled(v230, v231))
              {
                v232 = swift_slowAlloc();
                v310 = swift_slowAlloc();
                v312 = swift_slowAlloc();
                v320[0] = v312;
                *v232 = 136315394;
                v233 = [*&v229[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_providerDomainID] fp_obfuscatedProviderDomainID];
                v234 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                v236 = v235;

                v237 = sub_1CEFD0DF0(v234, v236, v320);

                *(v232 + 4) = v237;
                *(v232 + 12) = 2112;
                swift_getErrorValue();
                v238 = Error.prettyDescription.getter(v319[34]);
                *(v232 + 14) = v238;
                v239 = v310;
                *v310 = v238;
                _os_log_impl(&dword_1CEFC7000, v230, v231, "cannot initialize database error for domain %s, disabling the domain: %@", v232, 0x16u);
                sub_1CEFCCC44(v239, &qword_1EC4BE350, &unk_1CF9FC3B0);
                v86 = v162;
                MEMORY[0x1D386CDC0](v239, -1, -1);
                v240 = v312;
                __swift_destroy_boxed_opaque_existential_1(v312);
                MEMORY[0x1D386CDC0](v240, -1, -1);
                MEMORY[0x1D386CDC0](v232, -1, -1);

                (*(v314 + 8))(v313, v311);
              }

              else
              {

                (*(v314 + 8))(v90, v311);
              }

              v278 = *&v229[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_startupQueue];
              v279 = swift_unknownObjectWeakLoadStrong();
              if (v279)
              {
                v280 = v279;
                v281 = [v279 log];
              }

              else
              {
                v281 = 0;
              }

              v282 = swift_allocObject();
              *(v282 + 16) = v315;

              sub_1CF01001C(v281, "handleDatabaseError(db:error:)", 30, 2, sub_1CF8F97A0, v282);

              v128 = *&v308[v226];
              *&v308[v226] = v86;
              goto LABEL_33;
            }

LABEL_81:
            v241 = v162;
            v242 = sub_1CF9E57E8();
            v243 = fpfs_current_or_default_log();
            v244 = v92;
            sub_1CF9E6128();
            v245 = v242;
            v246 = v162;
            v247 = v163;
            v248 = v245;
            v249 = sub_1CF9E6108();
            v250 = sub_1CF9E72B8();

            if (os_log_type_enabled(v249, v250))
            {
              v251 = swift_slowAlloc();
              v312 = swift_slowAlloc();
              v313 = swift_slowAlloc();
              v320[0] = v313;
              *v251 = 136315906;
              v252 = [*&v247[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_providerDomainID] fp_obfuscatedProviderDomainID];
              LODWORD(v310) = v250;
              v253 = v252;
              v254 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
              v256 = v255;

              v257 = sub_1CEFD0DF0(v254, v256, v320);

              *(v251 + 4) = v257;
              *(v251 + 12) = 2082;
              v258 = [v248 domain];
              v259 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
              v261 = v260;

              v262 = sub_1CEFD0DF0(v259, v261, v320);

              *(v251 + 14) = v262;
              *(v251 + 22) = 2050;
              v263 = [v248 code];

              *(v251 + 24) = v263;
              *(v251 + 32) = 2112;
              swift_getErrorValue();
              v264 = Error.prettyDescription.getter(v319[26]);
              *(v251 + 34) = v264;
              v265 = v312;
              *v312 = v264;
              _os_log_impl(&dword_1CEFC7000, v249, v310, "  🚚  handling database error for domain %s, restarting with a fresh database.  Error domain: %{public}s. Error code: %{public}ld.  Error description: %@", v251, 0x2Au);
              sub_1CEFCCC44(v265, &qword_1EC4BE350, &unk_1CF9FC3B0);
              MEMORY[0x1D386CDC0](v265, -1, -1);
              v266 = v313;
              swift_arrayDestroy();
              MEMORY[0x1D386CDC0](v266, -1, -1);
              MEMORY[0x1D386CDC0](v251, -1, -1);
            }

            else
            {
            }

            (*(v314 + 8))(v244, v311);
            v267 = sub_1CF9E6888();
            v268 = sub_1CF9E6888();
            v269 = v248;
            v270 = sub_1CF9E57E8();

            FPCaptureLogsForOperation();
            v271 = *&v247[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_startupQueue];
            v272 = swift_unknownObjectWeakLoadStrong();
            if (v272)
            {
              v273 = v272;
              v274 = [v272 log];
            }

            else
            {
              v274 = 0;
            }

            v275 = swift_allocObject();
            v275[2] = v315;
            v275[3] = v247;
            v275[4] = v241;
            v276 = v241;

            v277 = v247;
            sub_1CF01001C(v274, "handleDatabaseError(db:error:)", 30, 2, sub_1CF8F97C8, v275);

            return;
          }

          (*(v293 + 8))(v89, v193);
        }
      }

      v194 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_startStatus;
      if ((~*&v163[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_startStatus] & 0xF000000000000007) == 0)
      {
        v86 = v162;
        v195 = sub_1CF9E57E8();
        v196 = fpfs_current_or_default_log();
        v197 = v295;
        sub_1CF9E6128();
        v198 = v195;
        v199 = v162;
        v200 = v163;
        v201 = v198;
        v202 = sub_1CF9E6108();
        v203 = sub_1CF9E72B8();

        if (os_log_type_enabled(v202, v203))
        {
          v204 = swift_slowAlloc();
          v310 = swift_slowAlloc();
          v312 = swift_slowAlloc();
          v320[0] = v312;
          *v204 = 136315906;
          v205 = [*&v200[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_providerDomainID] fp_obfuscatedProviderDomainID];
          v206 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v313 = v200;
          v207 = v206;
          v209 = v208;

          v210 = sub_1CEFD0DF0(v207, v209, v320);

          *(v204 + 4) = v210;
          *(v204 + 12) = 2082;
          v211 = [v201 domain];
          v212 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v214 = v213;

          v215 = sub_1CEFD0DF0(v212, v214, v320);

          *(v204 + 14) = v215;
          *(v204 + 22) = 2050;
          v216 = [v201 code];

          *(v204 + 24) = v216;
          *(v204 + 32) = 2112;
          swift_getErrorValue();
          v217 = Error.prettyDescription.getter(v319[30]);
          *(v204 + 34) = v217;
          v218 = v310;
          *v310 = v217;
          _os_log_impl(&dword_1CEFC7000, v202, v203, "  🚚  cannot initialize the database for domain %s, restarting with a fresh database.  Error domain: %{public}s. Error code: %{public}ld.  Error description: %@", v204, 0x2Au);
          sub_1CEFCCC44(v218, &qword_1EC4BE350, &unk_1CF9FC3B0);
          MEMORY[0x1D386CDC0](v218, -1, -1);
          v219 = v312;
          swift_arrayDestroy();
          MEMORY[0x1D386CDC0](v219, -1, -1);
          MEMORY[0x1D386CDC0](v204, -1, -1);

          (*(v314 + 8))(v295, v311);
        }

        else
        {

          (*(v314 + 8))(v197, v311);
        }

        v220 = sub_1CF9E6888();
        v221 = sub_1CF9E6888();
        v222 = v201;
        v223 = sub_1CF9E57E8();

        FPCaptureLogsForOperation();
        sub_1CF8306AC(v315, v86 | 0x4000000000000000);

        v128 = *&v308[v194];
        *&v308[v194] = v86 | 0x4000000000000000;
LABEL_33:
        v129 = v86;
        sub_1CF8F89F4(v128);
        return;
      }

      goto LABEL_81;
    }
  }

  v105 = v314;
  swift_getErrorValue();
  sub_1CF4C2DD8(v319[22]);
  v132 = v308;
  if ((v133 & 1) == 0)
  {
    v146 = swift_unknownObjectWeakLoadStrong();
    if (!v146 || (v147 = v146, v148 = [v146 volume], v147, LODWORD(v147) = objc_msgSend(v148, sel_isInLowDiskSpaceState), v148, !v147))
    {
      swift_getErrorValue();
      if (sub_1CF4C39BC(v319[18]))
      {
        sub_1CF82F828();
      }

      v152 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v153 = a2;
      v154 = sub_1CF9E6108();
      v155 = sub_1CF9E72B8();

      if (os_log_type_enabled(v154, v155))
      {
        v156 = swift_slowAlloc();
        v157 = swift_slowAlloc();
        *v156 = 138412290;
        swift_getErrorValue();
        v158 = Error.prettyDescription.getter(v319[14]);
        *(v156 + 4) = v158;
        *v157 = v158;
        _os_log_impl(&dword_1CEFC7000, v154, v155, "database encountered a recoverable error, restarting: %@", v156, 0xCu);
        sub_1CEFCCC44(v157, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v157, -1, -1);
        MEMORY[0x1D386CDC0](v156, -1, -1);
      }

      (*(v105 + 8))(v303, v311);
      v159 = v308;
      if ((~*&v308[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_startStatus] & 0xF000000000000007) != 0)
      {
        v182 = *&v308[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_startupQueue];
        v183 = swift_unknownObjectWeakLoadStrong();
        if (v183)
        {
          v184 = v183;
          v185 = [v183 log];
        }

        else
        {
          v185 = 0;
        }

        v224 = swift_allocObject();
        *(v224 + 16) = v315;
        *(v224 + 24) = v159;

        v225 = v159;
        sub_1CF01001C(v185, "handleDatabaseError(db:error:)", 30, 2, sub_1CF8F981C, v224);
      }

      else
      {
        *&v308[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_startStatus] = v86 | 0x4000000000000000;
        v160 = v86;
      }

      return;
    }

    v149 = swift_unknownObjectWeakLoadStrong();
    if (v149)
    {
      v150 = v149;
      v151 = [v149 volume];

      [v151 monitorLowDiskSpaceRecovery];
    }
  }

  v134 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_startStatus;
  if ((~*&v132[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_startStatus] & 0xF000000000000007) != 0)
  {
    v164 = swift_unknownObjectWeakLoadStrong();
    if (!v164)
    {
      goto LABEL_96;
    }

    v101 = v164;
    v165 = [v164 provider];
    if (!v165)
    {
LABEL_95:

LABEL_96:
      v283 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v284 = v86;
      v285 = sub_1CF9E6108();
      v286 = sub_1CF9E72B8();

      if (os_log_type_enabled(v285, v286))
      {
        v287 = swift_slowAlloc();
        v288 = swift_slowAlloc();
        *v287 = 138412290;
        swift_getErrorValue();
        v289 = Error.prettyDescription.getter(v319[6]);
        *(v287 + 4) = v289;
        *v288 = v289;
        _os_log_impl(&dword_1CEFC7000, v285, v286, "[diskspace] disk is full, exiting: %@", v287, 0xCu);
        sub_1CEFCCC44(v288, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v288, -1, -1);
        MEMORY[0x1D386CDC0](v287, -1, -1);
      }

      (*(v105 + 8))(v292, v311);
      _Exit(0);
    }

    v166 = v165;
    v167 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v168 = a2;
    v169 = sub_1CF9E6108();
    v170 = sub_1CF9E72B8();

    if (os_log_type_enabled(v169, v170))
    {
      v171 = swift_slowAlloc();
      v172 = swift_slowAlloc();
      *v171 = 138412290;
      swift_getErrorValue();
      v173 = Error.prettyDescription.getter(v319[2]);
      *(v171 + 4) = v173;
      *v172 = v173;
      _os_log_impl(&dword_1CEFC7000, v169, v170, "[diskspace] disk is full, reloading the domain: %@", v171, 0xCu);
      sub_1CEFCCC44(v172, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v172, -1, -1);
      MEMORY[0x1D386CDC0](v171, -1, -1);
    }

    (*(v105 + 8))(v302, v311);
    v174 = sub_1CF9E6F08();
    v175 = v299;
    (*(*(v174 - 8) + 56))(v299, 1, 1, v174);
    v176 = swift_allocObject();
    v176[2] = 0;
    v176[3] = 0;
    v176[4] = v166;
    v176[5] = v101;
    v176[6] = v86;
    v177 = v86;
    sub_1CF6FD2DC(0, 0, v175, &unk_1CFA18070, v176);
  }

  else
  {
    v135 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v136 = a2;
    v137 = sub_1CF9E6108();
    v138 = sub_1CF9E72B8();

    if (os_log_type_enabled(v137, v138))
    {
      v139 = swift_slowAlloc();
      v140 = swift_slowAlloc();
      *v139 = 138412290;
      swift_getErrorValue();
      v141 = Error.prettyDescription.getter(v319[10]);
      *(v139 + 4) = v141;
      *v140 = v141;
      _os_log_impl(&dword_1CEFC7000, v137, v138, "[diskspace] disk is full, restarting: %@", v139, 0xCu);
      sub_1CEFCCC44(v140, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v140, -1, -1);
      MEMORY[0x1D386CDC0](v139, -1, -1);
    }

    (*(v105 + 8))(v301, v311);
    LODWORD(v320[0]) = 28;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CEFCCCA4(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
    v142 = v296;
    v143 = v298;
    sub_1CF9E57D8();
    v144 = sub_1CF9E53A8();
    (*(v297 + 8))(v142, v143);
    v145 = *&v308[v134];
    *&v308[v134] = v144 | 0x4000000000000000;
    sub_1CF8F89F4(v145);
  }
}

uint64_t sub_1CF835EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[21] = a5;
  v6[22] = a6;
  v6[19] = a1;
  v6[20] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1CF835F20, 0, 0);
}

uint64_t sub_1CF835F20()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 160);
  v3 = [*(v0 + 168) nsDomain];
  *(v0 + 184) = v3;
  v4 = sub_1CF9E57E8();
  *(v0 + 192) = v4;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_1CF836080;
  v5 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4ED8, &qword_1CFA18078);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1CF836290;
  *(v0 + 104) = &block_descriptor_2073;
  *(v0 + 112) = v5;
  [v2 reloadDomain:v3 unableToStartup:0 startupError:v4 completionHandler:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1CF836080()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {
    v3 = sub_1CF836200;
  }

  else
  {
    v3 = sub_1CF836190;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1CF836190()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 144);

  **(v0 + 152) = v2;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1CF836200()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 184);
  swift_willThrow();

  **(v0 + 152) = 0;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1CF836290(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x1EEE6DEE8](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

uint64_t sub_1CF836360(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CF9E5D98();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1108, &qword_1CFA18060);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v30 - v17;
  if (!a1)
  {
    return sub_1CF8367C8(0xD000000000000018, 0x80000001CFA5D3D0, 0xD000000000000013, 0x80000001CFA5D3F0);
  }

  v19 = *(a2 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend___fpfs);
  if (!v19)
  {
    return sub_1CF8367C8(0xD000000000000018, 0x80000001CFA5D3D0, 0xD000000000000013, 0x80000001CFA5D3F0);
  }

  v31 = v8;
  v32 = v16;
  v33 = a2;
  v20 = qword_1EDEBBDA8;
  swift_beginAccess();
  sub_1CEFCCBDC(a1 + v20, v18, &unk_1EC4BEDE0, qword_1CF9FA390);
  v21 = *(v19 + 16);
  v22 = qword_1EDEBBDA8;
  swift_beginAccess();
  v23 = *(v9 + 48);
  sub_1CEFCCBDC(v18, v12, &unk_1EC4BEDE0, qword_1CF9FA390);
  sub_1CEFCCBDC(v21 + v22, &v12[v23], &unk_1EC4BEDE0, qword_1CF9FA390);
  v24 = *(v5 + 48);
  if (v24(v12, 1, v4) != 1)
  {
    v25 = v32;
    sub_1CEFCCBDC(v12, v32, &unk_1EC4BEDE0, qword_1CF9FA390);
    if (v24(&v12[v23], 1, v4) != 1)
    {
      v27 = v31;
      (*(v5 + 32))(v31, &v12[v23], v4);
      sub_1CEFCCCA4(&qword_1EDEAECC0, MEMORY[0x1E69695A8]);
      v28 = sub_1CF9E6868();
      v29 = *(v5 + 8);
      v29(v27, v4);
      sub_1CEFCCC44(v18, &unk_1EC4BEDE0, qword_1CF9FA390);
      v29(v25, v4);
      result = sub_1CEFCCC44(v12, &unk_1EC4BEDE0, qword_1CF9FA390);
      if ((v28 & 1) == 0)
      {
        return result;
      }

      return sub_1CF8367C8(0xD000000000000018, 0x80000001CFA5D3D0, 0xD000000000000013, 0x80000001CFA5D3F0);
    }

    sub_1CEFCCC44(v18, &unk_1EC4BEDE0, qword_1CF9FA390);
    (*(v5 + 8))(v25, v4);
    return sub_1CEFCCC44(v12, &qword_1EC4C1108, &qword_1CFA18060);
  }

  sub_1CEFCCC44(v18, &unk_1EC4BEDE0, qword_1CF9FA390);
  if (v24(&v12[v23], 1, v4) != 1)
  {
    return sub_1CEFCCC44(v12, &qword_1EC4C1108, &qword_1CFA18060);
  }

  sub_1CEFCCC44(v12, &unk_1EC4BEDE0, qword_1CF9FA390);
  return sub_1CF8367C8(0xD000000000000018, 0x80000001CFA5D3D0, 0xD000000000000013, 0x80000001CFA5D3F0);
}

uint64_t sub_1CF8367C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20[1] = a3;
  v20[2] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBA8, &qword_1CFA12B20);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v20[0] = v20 - v8;
  v9 = sub_1CF9E6118();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = sub_1CF9E64A8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = (v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v4 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_startupQueue);
  *v16 = v17;
  (*(v12 + 104))(v16, *MEMORY[0x1E69E8020], v11, v14);
  v18 = v17;
  LOBYTE(v17) = sub_1CF9E64D8();
  result = (*(v12 + 8))(v16, v11);
  if (v17)
  {
    return sub_1CF83F5AC(a1);
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF836C10(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v53 = a3;
  v5 = sub_1CF9E6118();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E5D98();
  v52 = *(v10 - 8);
  v11 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v51 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1108, &qword_1CFA18060);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v45 - v15;
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390) - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v45 - v22;
  if (!a1)
  {
    goto LABEL_13;
  }

  v24 = *(a2 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend___fpfs);
  if (!v24)
  {
    goto LABEL_13;
  }

  v47 = a2;
  v48 = v9;
  v49 = v6;
  v50 = v5;
  v25 = qword_1EDEBBDA8;
  v26 = v21;
  swift_beginAccess();
  v46 = v26;
  sub_1CEFCCBDC(v26 + v25, v23, &unk_1EC4BEDE0, qword_1CF9FA390);
  v27 = *(v24 + 16);
  v28 = qword_1EDEBBDA8;
  swift_beginAccess();
  v29 = *(v13 + 48);
  sub_1CEFCCBDC(v23, v16, &unk_1EC4BEDE0, qword_1CF9FA390);
  sub_1CEFCCBDC(v27 + v28, &v16[v29], &unk_1EC4BEDE0, qword_1CF9FA390);
  v30 = v52;
  v31 = *(v52 + 48);
  if (v31(v16, 1, v10) == 1)
  {
    sub_1CEFCCC44(v23, &unk_1EC4BEDE0, qword_1CF9FA390);
    if (v31(&v16[v29], 1, v10) == 1)
    {
      sub_1CEFCCC44(v16, &unk_1EC4BEDE0, qword_1CF9FA390);
      v21 = v46;
LABEL_13:
      v43 = v53;
      sub_1CF8306AC(v21, v53);
      v44 = sub_1CF96AA40(v43);
      sub_1CF83F5AC(v44);
    }

    goto LABEL_8;
  }

  sub_1CEFCCBDC(v16, v19, &unk_1EC4BEDE0, qword_1CF9FA390);
  if (v31(&v16[v29], 1, v10) == 1)
  {
    sub_1CEFCCC44(v23, &unk_1EC4BEDE0, qword_1CF9FA390);
    (*(v30 + 8))(v19, v10);
LABEL_8:
    sub_1CEFCCC44(v16, &qword_1EC4C1108, &qword_1CFA18060);
    v33 = v49;
    v32 = v50;
    v34 = v48;
    goto LABEL_9;
  }

  v40 = v51;
  (*(v30 + 32))(v51, &v16[v29], v10);
  sub_1CEFCCCA4(&qword_1EDEAECC0, MEMORY[0x1E69695A8]);
  v41 = sub_1CF9E6868();
  v42 = *(v30 + 8);
  v42(v40, v10);
  sub_1CEFCCC44(v23, &unk_1EC4BEDE0, qword_1CF9FA390);
  v42(v19, v10);
  sub_1CEFCCC44(v16, &unk_1EC4BEDE0, qword_1CF9FA390);
  v33 = v49;
  v32 = v50;
  v34 = v48;
  v21 = v46;
  if (v41)
  {
    goto LABEL_13;
  }

LABEL_9:
  v35 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v36 = sub_1CF9E6108();
  v37 = sub_1CF9E72A8();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_1CEFC7000, v36, v37, "database was already dropped", v38, 2u);
    MEMORY[0x1D386CDC0](v38, -1, -1);
  }

  return (*(v33 + 8))(v34, v32);
}

void sub_1CF837198(uint64_t a1)
{
  v3 = sub_1CF9E5A58();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v53 - v8;
  v10 = sub_1CF9E6118();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (FPFeatureFlagSpaceAttributionIsEnabled())
  {
    if (([objc_opt_self() runningInSyncBubble] & 1) == 0)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v61 = a1;
        v16 = Strong;
        v62 = [Strong provider];

        v17 = v61;
        if (v62)
        {
          v18 = *(v1 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_saPathManager);
          if (v18)
          {
            v59 = v18;
            v19 = fpfs_current_or_default_log();
            sub_1CF9E6128();
            v57 = *(v4 + 16);
            v58 = v4 + 16;
            v57(v9, v17, v3);
            v20 = v62;
            v21 = sub_1CF9E6108();
            v60 = v4;
            v22 = v21;
            v23 = sub_1CF9E7288();
            v62 = v20;

            v56 = v23;
            v24 = v23;
            v25 = v22;
            if (os_log_type_enabled(v22, v24))
            {
              v26 = swift_slowAlloc();
              v55 = swift_slowAlloc();
              aBlock[0] = v55;
              *v26 = 136315394;
              sub_1CEFCCCA4(&unk_1EDEAB3F0, MEMORY[0x1E6968FB0]);
              v54 = v25;
              v27 = sub_1CF9E7F98();
              v29 = v28;
              (*(v60 + 8))(v9, v3);
              v30 = sub_1CEFD0DF0(v27, v29, aBlock);

              *(v26 + 4) = v30;
              *(v26 + 12) = 2080;
              v31 = [v62 identifier];
              v32 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
              v34 = v33;

              v35 = sub_1CEFD0DF0(v32, v34, aBlock);

              *(v26 + 14) = v35;
              v36 = v54;
              _os_log_impl(&dword_1CEFC7000, v54, v56, "Domain Backend: Space Attribution registration for path %s and bundle %s", v26, 0x16u);
              v37 = v55;
              swift_arrayDestroy();
              MEMORY[0x1D386CDC0](v37, -1, -1);
              MEMORY[0x1D386CDC0](v26, -1, -1);

              (*(v11 + 8))(v14, v10);
              v38 = v60;
            }

            else
            {

              v38 = v60;
              (*(v60 + 8))(v9, v3);
              (*(v11 + 8))(v14, v10);
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC20, &qword_1CF9FE480);
            v40 = swift_allocObject();
            *(v40 + 16) = xmmword_1CFA00250;
            v41 = objc_allocWithZone(MEMORY[0x1E69D3978]);
            v42 = v61;
            v43 = sub_1CF9E5928();
            v44 = [v41 initWithURL_];

            *(v40 + 32) = v44;
            sub_1CEFD57E0(0, &unk_1EDEA3720, 0x1E69D3978);
            v45 = sub_1CF9E6D28();

            v46 = v62;
            v47 = [v62 identifier];
            v57(v6, v42, v3);
            v48 = (*(v38 + 80) + 16) & ~*(v38 + 80);
            v49 = swift_allocObject();
            (*(v38 + 32))(v49 + v48, v6, v3);
            *(v49 + ((v5 + v48 + 7) & 0xFFFFFFFFFFFFFFF8)) = v46;
            aBlock[4] = sub_1CF8F9704;
            aBlock[5] = v49;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_1CF00A468;
            aBlock[3] = &block_descriptor_2054;
            v50 = _Block_copy(aBlock);
            v51 = v46;

            v52 = v59;
            [v59 registerPaths:v45 forBundleID:v47 completionHandler:v50];
            _Block_release(v50);
          }

          else
          {
            v39 = v62;
          }
        }
      }
    }
  }
}

uint64_t sub_1CF8377D0(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_1CF9E5A58();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v56[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v56[-v12];
  v14 = sub_1CF9E6118();
  v61 = *(v14 - 8);
  v15 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v56[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v56[-v19];
  if (a1)
  {
    v60 = v14;
    v21 = a1;
    v22 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    (*(v7 + 16))(v13, a2, v6);
    v23 = a1;
    v24 = a3;
    v25 = sub_1CF9E6108();
    v26 = sub_1CF9E72B8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v63 = v59;
      *v27 = 136315650;
      sub_1CEFCCCA4(&unk_1EDEAB3F0, MEMORY[0x1E6968FB0]);
      v28 = sub_1CF9E7F98();
      v57 = v26;
      v30 = v29;
      (*(v7 + 8))(v13, v6);
      v31 = sub_1CEFD0DF0(v28, v30, &v63);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2080;
      v32 = [v24 identifier];
      v33 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v35 = v34;

      v36 = sub_1CEFD0DF0(v33, v35, &v63);

      *(v27 + 14) = v36;
      *(v27 + 22) = 2112;
      swift_getErrorValue();
      v37 = Error.prettyDescription.getter(v62);
      *(v27 + 24) = v37;
      v38 = v58;
      *v58 = v37;
      _os_log_impl(&dword_1CEFC7000, v25, v57, "Domain Backend: Path %s for bundle %s Space Attribution registration error: %@", v27, 0x20u);
      sub_1CEFCCC44(v38, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v38, -1, -1);
      v39 = v59;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v39, -1, -1);
      MEMORY[0x1D386CDC0](v27, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v13, v6);
    }

    return (*(v61 + 8))(v20, v60);
  }

  else
  {
    v40 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    (*(v7 + 16))(v10, a2, v6);
    v41 = a3;
    v42 = sub_1CF9E6108();
    v43 = sub_1CF9E7288();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v63 = v59;
      *v44 = 136315394;
      sub_1CEFCCCA4(&unk_1EDEAB3F0, MEMORY[0x1E6968FB0]);
      v45 = sub_1CF9E7F98();
      v60 = v14;
      v47 = v46;
      (*(v7 + 8))(v10, v6);
      v48 = sub_1CEFD0DF0(v45, v47, &v63);

      *(v44 + 4) = v48;
      *(v44 + 12) = 2080;
      v49 = [v41 identifier];
      v50 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v52 = v51;

      v53 = sub_1CEFD0DF0(v50, v52, &v63);

      *(v44 + 14) = v53;
      _os_log_impl(&dword_1CEFC7000, v42, v43, "Path %s was registered in Space Attribution with bundle %s", v44, 0x16u);
      v54 = v59;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v54, -1, -1);
      MEMORY[0x1D386CDC0](v44, -1, -1);

      return (*(v61 + 8))(v17, v60);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
      return (*(v61 + 8))(v17, v14);
    }
  }
}

uint64_t sub_1CF837E0C()
{
  result = sub_1CF837E2C();
  qword_1EDEA5CA8 = result;
  return result;
}

uint64_t sub_1CF837E2C()
{
  v0 = sub_1CF9E6118();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v2 = type metadata accessor for GlobalResourceStore();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v7[3] = v2;
  v7[4] = &off_1F4C04308;
  v7[0] = sub_1CF51BB3C();
  v6[3] = type metadata accessor for RandomSampling();
  v6[4] = &off_1F4BF15F8;
  v6[0] = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4DB0, &qword_1CFA17F98);
  swift_allocObject();
  return sub_1CF7EBC5C(v7, v6, 0);
}

uint64_t sub_1CF8380AC(NSObject *a1, uint8_t *a2)
{
  v3 = v2;
  v776 = a2;
  v774 = a1;
  v4 = sub_1CF9E5248();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v781 = &v708 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v783 = sub_1CF9E5268();
  v782 = *(v783 - 1);
  v7 = v782[8];
  MEMORY[0x1EEE9AC00](v783);
  v780 = (&v708 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1CF9E5D98();
  v761 = *(v9 - 8);
  v762 = v9;
  v10 = *(v761 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v738 = &v708 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v757 = sub_1CF9E6388();
  v766 = *(v757 - 8);
  v12 = *(v766 + 64);
  MEMORY[0x1EEE9AC00](v757);
  v734 = (&v708 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v756 = (&v708 - v15);
  v16 = sub_1CF9E6498();
  v768 = *(v16 - 8);
  v769 = v16;
  v17 = *(v768 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v765 = &v708 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v755 = &v708 - v20;
  v759 = sub_1CF9E73D8();
  v767 = *(v759 - 8);
  v21 = *(v767 + 64);
  MEMORY[0x1EEE9AC00](v759);
  v758 = &v708 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v804 = sub_1CF9E5A58();
  v803 = *(v804 - 8);
  v23 = *(v803 + 64);
  MEMORY[0x1EEE9AC00](v804);
  v746 = &v708 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v760 = &v708 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v764 = &v708 - v28;
  v29 = sub_1CF9E6938();
  v751 = *(v29 - 8);
  v752 = v29;
  v30 = *(v751 + 8);
  MEMORY[0x1EEE9AC00](v29);
  v750 = &v708 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v737 = &v708 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v749 = &v708 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFB10, &unk_1CFA12AD0);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v773 = (&v708 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v40);
  v763 = &v708 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v775 = &v708 - v43;
  v793 = sub_1CF9E7388();
  v797 = *(v793 - 8);
  v44 = v797[8];
  MEMORY[0x1EEE9AC00](v793);
  v791 = &v708 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v792 = sub_1CF9E7318();
  v796 = *(v792 - 1);
  v46 = *(v796 + 64);
  MEMORY[0x1EEE9AC00](v792);
  v789 = &v708 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v790 = &v708 - v49;
  v794 = sub_1CF9E6448();
  v799 = *(v794 - 8);
  v50 = *(v799 + 64);
  MEMORY[0x1EEE9AC00](v794);
  v788 = &v708 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v798 = &v708 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v55 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54 - 8);
  v742 = &v708 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57);
  v743 = (&v708 - v58);
  MEMORY[0x1EEE9AC00](v59);
  v735 = &v708 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v753 = &v708 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v754 = &v708 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v67 = &v708 - v66;
  MEMORY[0x1EEE9AC00](v68);
  v795 = &v708 - v69;
  MEMORY[0x1EEE9AC00](v70);
  v802 = (&v708 - v71);
  v72 = sub_1CF9E6118();
  isa = v72[-1].isa;
  v74 = *(isa + 8);
  MEMORY[0x1EEE9AC00](v72);
  v748 = &v708 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v76);
  v739 = &v708 - v77;
  MEMORY[0x1EEE9AC00](v78);
  v784 = (&v708 - v79);
  MEMORY[0x1EEE9AC00](v80);
  v807 = &v708 - v81;
  MEMORY[0x1EEE9AC00](v82);
  v801 = (&v708 - v83);
  MEMORY[0x1EEE9AC00](v84);
  v805 = &v708 - v85;
  MEMORY[0x1EEE9AC00](v86);
  v779 = (&v708 - v87);
  MEMORY[0x1EEE9AC00](v88);
  v745 = &v708 - v89;
  MEMORY[0x1EEE9AC00](v90);
  v736 = &v708 - v91;
  MEMORY[0x1EEE9AC00](v92);
  v733 = &v708 - v93;
  MEMORY[0x1EEE9AC00](v94);
  v741 = &v708 - v95;
  MEMORY[0x1EEE9AC00](v96);
  v744 = &v708 - v97;
  MEMORY[0x1EEE9AC00](v98);
  v747 = &v708 - v99;
  MEMORY[0x1EEE9AC00](v100);
  v740 = &v708 - v101;
  MEMORY[0x1EEE9AC00](v102);
  v771 = &v708 - v103;
  MEMORY[0x1EEE9AC00](v104);
  v778 = &v708 - v105;
  MEMORY[0x1EEE9AC00](v106);
  v770 = &v708 - v107;
  MEMORY[0x1EEE9AC00](v108);
  v777 = &v708 - v109;
  MEMORY[0x1EEE9AC00](v110);
  v785 = &v708 - v111;
  MEMORY[0x1EEE9AC00](v112);
  p_super = (&v708 - v113);
  MEMORY[0x1EEE9AC00](v114);
  v786 = (&v708 - v115);
  MEMORY[0x1EEE9AC00](v116);
  v118 = &v708 - v117;
  MEMORY[0x1EEE9AC00](v119);
  v121 = &v708 - v120;
  v122 = [objc_allocWithZone(FPLoggerScope) init];
  v123 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v124 = v122;
  v125 = sub_1CF9E6108();
  v126 = sub_1CF9E72C8();

  v127 = os_log_type_enabled(v125, v126);
  v772 = v67;
  if (v127)
  {
    v128 = swift_slowAlloc();
    v808 = v3;
    v129 = v124;
    v130 = isa;
    v131 = v72;
    v132 = v128;
    v133 = swift_slowAlloc();
    *v132 = 138412290;
    v134 = [v129 enter];
    *(v132 + 4) = v134;
    *v133 = v134;
    _os_log_impl(&dword_1CEFC7000, v125, v126, "%@ [loadSyncEngine] loading sync engine", v132, 0xCu);
    sub_1CEFCCC44(v133, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v133, -1, -1);
    v135 = v132;
    v72 = v131;
    isa = v130;
    v124 = v129;
    v3 = v808;
    MEMORY[0x1D386CDC0](v135, -1, -1);
  }

  v137 = *(isa + 1);
  v136 = (isa + 8);
  v809 = v137;
  v137(v121, v72);
  v138 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_domain;
  Strong = swift_unknownObjectWeakLoadStrong();
  v140 = fpfs_current_or_default_log();
  if (!Strong)
  {
    v158 = v805;
    sub_1CF9E6128();
    v153 = sub_1CF9E6108();
    v157 = sub_1CF9E72B8();
    if (os_log_type_enabled(v153, v157))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_1CEFC7000, v153, v157, "[loadSyncEngine] missing domain in sync engine loading", v3, 2u);
      MEMORY[0x1D386CDC0](v3, -1, -1);
    }

    v809(v158, v72);
    v154 = FPDomainUnavailableError();
    if (v154)
    {
      v155 = v154;
LABEL_26:
      sub_1CF83D740(v124);

      return v155;
    }

    __break(1u);
LABEL_252:
    __break(1u);
LABEL_253:
    swift_once();
LABEL_207:
    v652 = qword_1EDEA5CA8;
    if (qword_1EDEA5CA8)
    {
      v653 = 4271950;
      v654 = swift_unknownObjectWeakLoadStrong();

      if (v654)
      {
        v655 = [v654 provider];

        if (v655)
        {
          v656 = [v655 descriptor];
          v657 = [v656 localizedName];

          v653 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v659 = v658;
        }

        else
        {
          v659 = 0xE300000000000000;
        }

        v72 = v743;
      }

      else
      {
        v659 = 0xE300000000000000;
      }

      v660 = OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_diagnosticsDirectoryURL;
      swift_beginAccess();
      v661 = &v3[v660];
      v662 = v735;
      sub_1CEFCCBDC(v661, v735, &unk_1EC4BE310, qword_1CF9FCBE0);
      v663 = v806;

      v664 = sub_1CF7F8098(v805, v653, v659, v663, v662, v652);
      if (v158)
      {
      }

      else
      {
        v665 = v664;
        sub_1CF8076A0(v664);

        v666 = *(v792 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_fpDiagnosticsManager);
        *(v792 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_fpDiagnosticsManager) = v665;
      }

      v157 = v804;
      v136 = v729;
    }

    else
    {
LABEL_211:
    }

    v667 = OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_dbDirectoryURL;
    swift_beginAccess();
    sub_1CEFCCBDC(&v3[v667], v72, &unk_1EC4BE310, qword_1CF9FCBE0);
    v256 = v136(v72, 1, v157);
    if (v256 == 1)
    {
      goto LABEL_258;
    }

    sub_1CF9E5978();
    v668 = v72;
    v72 = v726;
    (v726)(v668, v157);
    v669 = v742;
    sub_1CEFCCBDC(v731 + v708, v742, &unk_1EC4BE310, qword_1CF9FCBE0);
    v256 = v136(v669, 1, v157);
    if (v256 == 1)
    {
LABEL_259:
      __break(1u);
      goto LABEL_260;
    }

    sub_1CF9E5978();
    (v72)(v669, v157);
    sub_1CF9E5A18();
    v670 = OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_wharfHandle;
    v671 = v802;
    swift_beginAccess();
    v672 = sub_1CF9E6978();
    LODWORD(v671) = fpfs_wharf_delete_item_at(v671 + v670, 4294967294, v672 + 32);
    swift_endAccess();

    v673 = v792;
    v674 = v797;
    if (!v671)
    {
      goto LABEL_268;
    }

    sub_1CF9E5A18();
    v675 = v802;
    swift_beginAccess();
    v676 = sub_1CF9E6978();
    LODWORD(v675) = fpfs_wharf_delete_item_at(v675 + v670, 4294967294, v676 + 32);
    swift_endAccess();

    if (!v675)
    {
LABEL_268:
      v677 = v802;
      *(v802 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deleteBusy) = 0;
      if (*(v677 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource))
      {
        v678 = *(v677 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource);
        ObjectType = swift_getObjectType();
        swift_unknownObjectRetain();
        MEMORY[0x1D3869790](1, ObjectType);
        swift_unknownObjectRelease();
      }
    }

    sub_1CF8E976C(v680);

    if ((*(v805 + 82) & 4) != 0)
    {
      v681 = swift_unknownObjectWeakLoadStrong();
      if (v681)
      {
        v682 = v681;
        v683 = [v681 indexer];
        if (v683)
        {
          v684 = v683;
          if ([v683 isIndexingEnabled])
          {
          }

          else
          {
            if ([v682 isHidden])
            {
              v685 = 3;
            }

            else
            {
              v685 = 1;
            }

            v686 = *(v674[2] + qword_1EDEBBD08);
            v687 = swift_allocObject();
            *(v687 + 16) = v797;
            *(v687 + 24) = v685;
            *(v687 + 32) = 1;

            v688 = v686;
            sub_1CF01001C(0, "updateIndexBarrier(anchor:)", 27, 2, sub_1CF8F8A80, v687);
          }
        }

        else
        {
        }
      }
    }

    sub_1CF83037C();
    v689 = swift_unknownObjectWeakLoadStrong();
    if (v689)
    {
      v690 = v689;
      v691 = [v689 indexer];

      v692 = v804;
      v693 = v760;
      if (v691)
      {
        type metadata accessor for FPFSIndexer();
        v694 = swift_dynamicCastClass();
        if (!v694)
        {

          goto LABEL_242;
        }

        v695 = v694;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4CC0, &qword_1CFA17EA8);
        v696 = swift_allocObject();
        swift_weakInit();
        swift_weakAssign();

        v697 = *(v695 + OBJC_IVAR____TtC18FileProviderDaemon11FPFSIndexer_enumerator);
        *(v695 + OBJC_IVAR____TtC18FileProviderDaemon11FPFSIndexer_enumerator) = v696;
        v693 = v760;
        v692 = v804;
      }
    }

    else
    {

      v692 = v804;
      v693 = v760;
    }

LABEL_242:
    v698 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v699 = sub_1CF9E6108();
    v700 = sub_1CF9E7288();
    if (os_log_type_enabled(v699, v700))
    {
      v701 = swift_slowAlloc();
      *v701 = 0;
      _os_log_impl(&dword_1CEFC7000, v699, v700, "[loadSyncEngine] sync engine successfully loaded", v701, 2u);
      v702 = v701;
      v693 = v760;
      v692 = v804;
      MEMORY[0x1D386CDC0](v702, -1, -1);
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v809(v745, v786);
    v703 = v726;
    (v726)(v746, v692);
    (v703)(v693, v692);
    v704 = *(v673 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_startStatus);
    v155 = 0x8000000000000000;
    *(v673 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_startStatus) = 0x8000000000000000;
    sub_1CF8F89F4(v704);
    goto LABEL_245;
  }

  sub_1CF9E6128();
  v141 = sub_1CF9E6108();
  v142 = sub_1CF9E7288();
  v143 = os_log_type_enabled(v141, v142);
  v806 = Strong;
  if (v143)
  {
    v144 = swift_slowAlloc();
    v145 = v138;
    v146 = v72;
    v147 = v3;
    v148 = v145;
    v149 = v144;
    *v144 = 0;
    _os_log_impl(&dword_1CEFC7000, v141, v142, "[loadSyncEngine] creating support paths", v144, 2u);
    v150 = v149;
    Strong = v806;
    v151 = v148;
    v3 = v147;
    v72 = v146;
    v138 = v151;
    MEMORY[0x1D386CDC0](v150, -1, -1);
  }

  v809(v118, v72);
  v152 = *&v3[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pathsManager];
  sub_1CF798A20(Strong);
  v800 = v136;
  v808 = v3;
  v805 = 0;
  v731 = v152;
  v156 = v152 + OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_appSupportURL;
  swift_beginAccess();
  v728 = v156;
  v157 = v802;
  sub_1CEFCCBDC(v156, v802, &unk_1EC4BE310, qword_1CF9FCBE0);
  v3 = v803;
  v158 = v804;
  v729 = *(v803 + 48);
  v730 = v803 + 48;
  v159 = v729(v157, 1, v804);
  if (v159 == 1)
  {
    goto LABEL_252;
  }

  sub_1CF837198(v157);
  v161 = v3 + 8;
  v160 = *(v3 + 1);
  (v160)(v157, v158);
  v162 = v805;
  v163 = sub_1CEFCE64C();
  v805 = v162;
  if (v162)
  {
    v164 = 0;
    v165 = 0;
    v155 = v805;
    v166 = v806;
    goto LABEL_14;
  }

  v726 = v160;
  v732 = v163;
  v188 = *(v163 + 16);
  v189 = fpfs_current_or_default_log();
  v166 = v806;
  if (!v188)
  {
    v232 = v779;
    sub_1CF9E6128();
    v233 = sub_1CF9E6108();
    v234 = sub_1CF9E72A8();
    if (os_log_type_enabled(v233, v234))
    {
      v235 = swift_slowAlloc();
      *v235 = 0;
      _os_log_impl(&dword_1CEFC7000, v233, v234, "[loadSyncEngine] couldn't find roots", v235, 2u);
      v236 = v235;
      v166 = v806;
      MEMORY[0x1D386CDC0](v236, -1, -1);
    }

    v809(v232, v72);
    sub_1CF9E50F8();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CEFCCCA4(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    v237 = v780;
    v238 = v783;
    sub_1CF9E57D8();
    v155 = sub_1CF9E50D8();
    (v782[1])(v237, v238);
    swift_willThrow();
    v164 = 0;
    v165 = 1;
LABEL_14:
    swift_getErrorValue();
    sub_1CF4C2DD8(v819);
    if (v167)
    {
      v168 = swift_unknownObjectWeakLoadStrong();
      if (v168)
      {
        v169 = v165;
        v170 = v168;
        v171 = [v168 disconnectionState];

        if (v171 == 6)
        {

          if (!v169)
          {
LABEL_24:
            if (v164)
            {
            }

            goto LABEL_26;
          }
        }

        else
        {
          v183 = fpfs_current_or_default_log();
          sub_1CF9E6128();
          v184 = sub_1CF9E6108();
          v185 = sub_1CF9E72B8();
          if (os_log_type_enabled(v184, v185))
          {
            v186 = swift_slowAlloc();
            *v186 = 134217984;
            *(v186 + 4) = v171;
            _os_log_impl(&dword_1CEFC7000, v184, v185, "[diskspace] wharf init failed due to lowSpace but disconnectionState (%lu) failed to catch that", v186, 0xCu);
            MEMORY[0x1D386CDC0](v186, -1, -1);
            v187 = v806;
          }

          else
          {
            v187 = v184;
            v184 = v806;
          }

          v809(v801, v72);
          if (!v169)
          {
            goto LABEL_24;
          }
        }
      }

      else
      {

        if (!v165)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
      LODWORD(v808) = v165;
      v172 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v173 = v155;
      v174 = sub_1CF9E6108();
      v175 = sub_1CF9E72B8();

      if (os_log_type_enabled(v174, v175))
      {
        v176 = swift_slowAlloc();
        v177 = v155;
        v178 = swift_slowAlloc();
        *v176 = 138412290;
        swift_getErrorValue();
        v179 = Error.prettyDescription.getter(v818);
        *(v176 + 4) = v179;
        *v178 = v179;
        _os_log_impl(&dword_1CEFC7000, v174, v175, "[loadSyncEngine] cannot init wharf: %@", v176, 0xCu);
        sub_1CEFCCC44(v178, &qword_1EC4BE350, &unk_1CF9FC3B0);
        v180 = v178;
        v155 = v177;
        MEMORY[0x1D386CDC0](v180, -1, -1);
        MEMORY[0x1D386CDC0](v176, -1, -1);
        v181 = v806;
      }

      else
      {
        v181 = v174;
        v174 = v166;
      }

      v809(v807, v72);
      if (!v808)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_24;
  }

  v721 = v124;
  v190 = v786;
  sub_1CF9E6128();
  v191 = sub_1CF9E6108();
  v192 = sub_1CF9E7288();
  if (os_log_type_enabled(v191, v192))
  {
    v193 = swift_slowAlloc();
    *v193 = 0;
    _os_log_impl(&dword_1CEFC7000, v191, v192, "[loadSyncEngine] initializing RTC session", v193, 2u);
    v194 = v193;
    v166 = v806;
    MEMORY[0x1D386CDC0](v194, -1, -1);
  }

  v786 = v72;
  v809(v190, v72);
  v195 = v808;
  v196 = swift_unknownObjectWeakLoadStrong();
  v197 = &selRef_initWithTarget_;
  v782 = v161;
  v198 = v138;
  if (v196 && (v199 = v196, v200 = [v196 provider], v199, v200))
  {
    v201 = [objc_opt_self() defaultManager];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4CD0, &unk_1CFA17EB0);
    v202 = swift_allocObject();
    *(v202 + 16) = xmmword_1CF9FC3C0;
    v203 = *MEMORY[0x1E699C720];
    *&v812 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(&v812 + 1) = v204;
    v205 = MEMORY[0x1E69E6158];
    sub_1CF9E7898();
    v206 = [v200 identifier];
    v207 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v209 = v208;

    *(v202 + 96) = v205;
    *(v202 + 72) = v207;
    *(v202 + 80) = v209;
    v210 = *MEMORY[0x1E699C728];
    *&v812 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(&v812 + 1) = v211;
    sub_1CF9E7898();
    v212 = [v200 bundleVersion];
    v213 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v215 = v214;

    *(v202 + 168) = v205;
    *(v202 + 144) = v213;
    *(v202 + 152) = v215;
    v197 = &selRef_initWithTarget_;
    *&v812 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(&v812 + 1) = v216;
    sub_1CF9E7898();
    v217 = [v806 volume];
    LODWORD(v205) = [v217 role];

    *(v202 + 240) = MEMORY[0x1E69E7668];
    *(v202 + 216) = v205;
    sub_1CF4E0E00(v202);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0600, &unk_1CF9FE790);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v218 = sub_1CF9E6618();
    v166 = v806;

    v219 = [v201 sessionWithCommonProperties_];

    v195 = v808;
    v783 = v219;
    v220 = v219;
  }

  else
  {
    v783 = 0;
  }

  v221 = fpfs_current_or_default_log();
  v222 = p_super;
  sub_1CF9E6128();
  v223 = sub_1CF9E6108();
  v224 = sub_1CF9E7288();
  if (os_log_type_enabled(v223, v224))
  {
    v225 = swift_slowAlloc();
    *v225 = 0;
    _os_log_impl(&dword_1CEFC7000, v223, v224, "[loadSyncEngine] creating wharf", v225, 2u);
    v226 = v225;
    v166 = v806;
    MEMORY[0x1D386CDC0](v226, -1, -1);
  }

  v809(v222, v786);
  v227 = swift_unknownObjectWeakLoadStrong();
  v727 = v198;
  if (v227)
  {
    v228 = v227;
    v229 = [v227 v197[365]];

    if (v229)
    {
      v230 = [v229 descriptor];

      v229 = [v230 requestedExtendedAttributes];
      if (v229)
      {
        v231 = sub_1CF9E6D48();

        v229 = sub_1CF8E44FC(v231);
      }
    }
  }

  else
  {
    v229 = 0;
  }

  p_super = swift_allocObject();
  p_super[2].isa = v229;

  v239 = [v166 nsDomain];
  v240 = [v239 supportsSyncingTrash];

  v241 = swift_unknownObjectWeakLoadStrong();
  if (v241)
  {
    v242 = v195;
    v243 = v241;
    v244 = [v241 v197[365]];

    if (v244)
    {
      v245 = [v244 descriptor];

      LODWORD(v802) = [v245 wantsBundleBitOnlyPackageDetection];
    }

    else
    {
      LODWORD(v802) = 0;
    }

    v195 = v242;
  }

  else
  {
    LODWORD(v802) = 0;
  }

  v246 = *&v195[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_providerDomainID];
  LODWORD(v780) = FPPinningIsEnabledForDomainID();
  v247 = [v166 volume];
  LODWORD(v779) = [v247 supportsEAPFS];

  v725 = isResidencyReasonEnabled(for:)(v246);
  v718 = v246;
  v248 = [v246 fp_obfuscatedProviderDomainID];
  v249 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v72 = v250;
  v251 = OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_wharfDirectoryURL;
  v252 = v731;
  swift_beginAccess();
  v708 = v251;
  v253 = v252 + v251;
  v254 = v795;
  sub_1CEFCCBDC(v253, v795, &unk_1EC4BE310, qword_1CF9FCBE0);
  v255 = v804;
  v256 = v729(v254, 1, v804);
  if (v256 == 1)
  {
    __break(1u);
LABEL_255:
    __break(1u);
LABEL_256:
    __break(1u);
LABEL_257:
    __break(1u);
LABEL_258:
    __break(1u);
    goto LABEL_259;
  }

  v724 = v240 ^ 1;

  v257 = type metadata accessor for DocumentWharf();
  v258 = *(v257 + 48);
  v259 = *(v257 + 52);
  v260 = swift_allocObject();
  *(v260 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource) = 0;
  *(v260 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_invalidated) = 0;
  *(v260 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_activated) = 0;
  *(v260 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deleteBusy) = 0;
  *(v260 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_disableGarbageCollection) = 0;
  v261 = v260 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_capturedContentPendingCollection;
  v262 = MEMORY[0x1E69E7CC0];
  *v261 = 0;
  *(v261 + 8) = v262;
  *(v260 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_capturedContentSource) = 0;
  *(v260 + 16) = v249;
  *(v260 + 24) = v72;
  v263 = v260 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_wharfHandle;
  *(v263 + 32) = 0u;
  *(v263 + 48) = 0u;
  *v263 = 0u;
  *(v263 + 16) = 0u;

  swift_beginAccess();
  *(v263 + 12) = -1;
  v719 = *(v803 + 16);
  v720 = v803 + 16;
  v719(v260 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_root, v254, v255);
  v781 = sub_1CEFD57E0(0, &qword_1EDEAED70, 0x1E69E9610);
  *&v812 = 0;
  *(&v812 + 1) = 0xE000000000000000;

  sub_1CF9E7948();

  *&v812 = v249;
  *(&v812 + 1) = v72;
  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA2F690);
  v722 = *(&v812 + 1);
  v723 = v812;
  v264 = v798;
  sub_1CF9E63E8();
  *&v812 = v262;
  v265 = sub_1CEFCCCA4(&qword_1EDEAED80, MEMORY[0x1E69E8030]);
  v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF500, &unk_1CF9FE770);
  v267 = sub_1CEFCCCEC(&qword_1EDEAEDA0, &unk_1EC4BF500, &unk_1CF9FE770);
  v268 = v790;
  v716 = v265;
  v717 = v266;
  v715 = v267;
  v269 = v792;
  sub_1CF9E77B8();
  v270 = v799;
  v271 = v794;
  v713 = *(v799 + 16);
  v714 = v799 + 16;
  v713(v788, v264, v794);
  v272 = v796;
  v711 = *(v796 + 16);
  v712 = v796 + 16;
  v711(v789, v268, v269);
  v273 = v797[13];
  v710 = *MEMORY[0x1E69E8098];
  v797 += 13;
  v709 = v273;
  v273(v791);
  v274 = sub_1CF9E73B8();
  v275 = *(v272 + 8);
  v796 = v272 + 8;
  v723 = v275;
  v275(v268, v269);
  v276 = *(v270 + 8);
  v799 = v270 + 8;
  v276(v798, v271);
  (v726)(v795, v804);
  *(v260 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deferredWQ) = v274;
  v277 = v260 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_ioContext;
  v278 = p_super;
  *v277 = sub_1CEFDB0D8;
  *(v277 + 8) = v278;
  LODWORD(v278) = v724;
  *(v277 + 16) = v802;
  *(v277 + 20) = v278;
  *(v277 + 24) = v780;
  *(v277 + 25) = v779;
  *(v277 + 26) = v725;
  *(v260 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_reporter) = v783;
  v802 = v260;

  v279 = fpfs_current_or_default_log();
  v280 = v785;
  sub_1CF9E6128();
  v281 = sub_1CF9E6108();
  v282 = sub_1CF9E7288();
  if (os_log_type_enabled(v281, v282))
  {
    v283 = swift_slowAlloc();
    *v283 = 0;
    _os_log_impl(&dword_1CEFC7000, v281, v282, "[loadSyncEngine] activating wharf", v283, 2u);
    MEMORY[0x1D386CDC0](v283, -1, -1);
  }

  v284 = v809;
  v809(v280, v786);
  v285 = v805;
  sub_1CF9BF6A8();
  v155 = v285;
  v286 = v731;
  if (v285)
  {

    v287 = fpfs_current_or_default_log();
    v288 = v784;
    sub_1CF9E6128();
    v289 = v285;
    v290 = sub_1CF9E6108();
    v291 = sub_1CF9E72A8();

    if (os_log_type_enabled(v290, v291))
    {
      v292 = swift_slowAlloc();
      v293 = swift_slowAlloc();
      *v292 = 138412290;
      swift_getErrorValue();
      v294 = Error.prettyDescription.getter(v817);
      *(v292 + 4) = v294;
      *v293 = v294;
      _os_log_impl(&dword_1CEFC7000, v290, v291, "[loadSyncEngine] wharf initialization failed: %@", v292, 0xCu);
      sub_1CEFCCC44(v293, &qword_1EC4BE350, &unk_1CF9FC3B0);
      v295 = v293;
      v284 = v809;
      MEMORY[0x1D386CDC0](v295, -1, -1);
      MEMORY[0x1D386CDC0](v292, -1, -1);
    }

    v72 = v786;
    v284(v288, v786);
    sub_1CF9BFA28();
    swift_willThrow();

    v164 = 1;
    v165 = 1;
    v124 = v721;
    v166 = v806;
    goto LABEL_14;
  }

  v805 = 0;

  v296 = v806;
  v297 = [v806 providerDomainID];
  v298 = [v296 defaultBackend];
  v299 = v298;
  if (!v298)
  {
    v302 = 0;
    goto LABEL_73;
  }

  if (([v298 respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_71;
  }

  v300 = [v299 providerVersion];
  swift_unknownObjectRelease();
  if (!v300)
  {
LABEL_71:
    v299 = 0;
    v302 = 0;
    goto LABEL_72;
  }

  v299 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v302 = v301;

LABEL_72:
  v296 = v806;
LABEL_73:
  v785 = v276;
  v303 = swift_allocObject();
  *(v303 + 2) = v299;
  *(v303 + 3) = v302;
  *(v303 + 4) = v297;
  *(v303 + 5) = v296;
  v807 = v303;
  v795 = v302;

  v304 = v296;
  v305 = v297;
  v306 = fpfs_current_or_default_log();
  v307 = v777;
  sub_1CF9E6128();
  v308 = sub_1CF9E6108();
  v309 = sub_1CF9E7288();
  if (os_log_type_enabled(v308, v309))
  {
    v310 = v304;
    v311 = swift_slowAlloc();
    *v311 = 0;
    _os_log_impl(&dword_1CEFC7000, v308, v309, "[loadSyncEngine] creating VFSFileTree", v311, 2u);
    v312 = v311;
    v304 = v310;
    v286 = v731;
    MEMORY[0x1D386CDC0](v312, -1, -1);
  }

  v284(v307, v786);
  v313 = v802;

  v806 = v305;
  v314 = v732;

  v315 = v286;
  v316 = v807;

  v801 = v304;
  v317 = [v304 purposeIdentifier];
  v318 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v320 = v319;

  v321 = type metadata accessor for VFSFileTree(0);
  v322 = *(v321 + 48);
  v323 = *(v321 + 52);
  swift_allocObject();

  v324 = v305;
  v325 = v805;
  v326 = sub_1CF25D1E8(v314, v313, v315, v324, sub_1CF8F8A14, v316, 0, v318, v320, 1u, 0);
  if (v325)
  {

    v327 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v328 = v325;
    v329 = sub_1CF9E6108();
    v330 = sub_1CF9E72A8();

    if (os_log_type_enabled(v329, v330))
    {
      v331 = swift_slowAlloc();
      v332 = swift_slowAlloc();
      *v331 = 138412290;
      v333 = v325;
      swift_getErrorValue();
      v334 = Error.prettyDescription.getter(v816);
      *(v331 + 4) = v334;
      *v332 = v334;
      _os_log_impl(&dword_1CEFC7000, v329, v330, "[loadSyncEngine] fstree initialization failed: %@", v331, 0xCu);
      sub_1CEFCCC44(v332, &qword_1EC4BE350, &unk_1CF9FC3B0);
      v335 = v332;
      v284 = v809;
      MEMORY[0x1D386CDC0](v335, -1, -1);
      MEMORY[0x1D386CDC0](v331, -1, -1);
    }

    else
    {
      v333 = v325;

      v329 = v806;
    }

    v364 = v721;
    v365 = v786;

    v284(v778, v365);

    sub_1CF83D740(v364);

    return v333;
  }

  v805 = 0;
  v783 = v315;
  p_super = &v326->super;

  v336 = fpfs_current_or_default_log();
  v337 = v770;
  sub_1CF9E6128();
  v338 = sub_1CF9E6108();
  v339 = sub_1CF9E7288();
  if (os_log_type_enabled(v338, v339))
  {
    v340 = swift_slowAlloc();
    *v340 = 0;
    _os_log_impl(&dword_1CEFC7000, v338, v339, "[loadSyncEngine] creating FPFileTree", v340, 2u);
    MEMORY[0x1D386CDC0](v340, -1, -1);
  }

  v284(v337, v786);
  type metadata accessor for FPFileTree();
  swift_allocObject();
  v341 = v802;

  v342 = v801;
  v801 = sub_1CF2D0FAC(v342, v341, sub_1CF8F8A14, v316);
  v343 = fpfs_current_or_default_log();
  v344 = v771;
  sub_1CF9E6128();
  v345 = sub_1CF9E6108();
  v346 = sub_1CF9E7288();
  if (os_log_type_enabled(v345, v346))
  {
    v347 = swift_slowAlloc();
    *v347 = 0;
    _os_log_impl(&dword_1CEFC7000, v345, v346, "[loadSyncEngine] creating SQLDatabase", v347, 2u);
    MEMORY[0x1D386CDC0](v347, -1, -1);
  }

  v284(v344, v786);
  if ([v342 isConnectedToAppExtension])
  {
    v348 = 0;
  }

  else
  {
    v348 = 16;
  }

  v349 = [v342 nsDomain];
  v350 = [v349 testingModes];

  if ((v350 & 2) != 0)
  {
    v348 |= 0x1C0uLL;
  }

  v351 = [v342 nsDomain];
  v352 = [v351 supportsRemoteVersions];

  if (v352)
  {
    v353 = v348 | 0x8000;
  }

  else
  {
    v353 = v348;
  }

  v354 = [v342 provider];
  if (v354)
  {
    v355 = v354;
    v356 = [v354 identifier];

    LODWORD(v355) = [v356 fp_isiCloudDriveIdentifier];
    if (v355)
    {
      v357 = 512;
      if (v353 < 0x8000)
      {
        v357 = 33280;
      }

      v353 |= v357 | 0x100000;
    }
  }

  v358 = [v342 provider];
  if (v358)
  {
    v359 = v358;
    v360 = [v358 identifier];

    v361 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v363 = v362;

    if (v361 == 0xD00000000000001ELL && 0x80000001CFA51A60 == v363)
    {

      if ((v353 & 0x100000) != 0)
      {
        goto LABEL_105;
      }
    }

    else
    {
      v366 = sub_1CF9E8048();

      if ((v366 & 1) == 0 || (v353 & 0x100000) != 0)
      {
        goto LABEL_105;
      }
    }

    v353 |= 0x100000uLL;
  }

LABEL_105:
  if (fpfs_supports_speculative_set())
  {
    v367 = v353 | 0x1000;
  }

  else
  {
    v367 = v353;
  }

  if (fpfs_supports_download_lazily_v2())
  {
    v367 |= 0x20000uLL;
  }

  if (os_variant_has_internal_content() && [v342 disconnectionState] == 1)
  {
    v367 |= 0x2000uLL;
  }

  if (fpfs_supports_indexAllRemoteItems())
  {
    v367 |= 0x40000uLL;
  }

  if (FPFeatureFlagBGSTImprovementsIsEnabled())
  {
    v367 |= 0x80000uLL;
  }

  v368 = v342;
  if (fpfs_supports_gutenberg())
  {
    v369 = v367 | 0x200000;
  }

  else
  {
    v369 = v367;
  }

  v370 = type metadata accessor for TelemetrySignposter(0);
  v371 = *(*(v370 - 8) + 56);
  v372 = v775;
  v371(v775, 1, 1, v370);
  v784 = v368;
  v373 = [v368 provider];
  if (v373)
  {
    v374 = v373;
    v375 = [v373 identifier];

    v376 = v763;
    *v763 = "Materialization_startProvidingItem";
    *(v376 + 8) = 34;
    *(v376 + 16) = 2;
    *(v376 + 24) = sub_1CF518E74();
    v377 = v376 + *(v370 + 24);
    sub_1CF9E6088();
    v378 = sub_1CF519604(v375);

    sub_1CEFCCC44(v372, &qword_1EC4BFB10, &unk_1CFA12AD0);
    *(v376 + *(v370 + 28)) = v378;
    v371(v376, 0, 1, v370);
    sub_1CEFE55D0(v376, v372, &qword_1EC4BFB10, &unk_1CFA12AD0);
  }

  if (os_variant_has_internal_content())
  {
    v379 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v380 = sub_1CF9E6888();
    v381 = [v379 initWithSuiteName_];

    v72 = v774;
    if (v381)
    {
      v382 = sub_1CF9E6888();
      v383 = [v381 BOOLForKey_];

      if (v383)
      {
        v369 |= 0x200000000uLL;
      }
    }
  }

  else
  {
    v72 = v774;
  }

  v384 = fpfs_supports_lazy_recursive_deletion();
  v385 = (v369 | 0x4000);
  if (!v384)
  {
    v385 = v369;
  }

  v780 = v385;
  v386 = sub_1CF830018();
  if (v387)
  {
    v72 = v386;
    v776 = v387;
  }

  else
  {
  }

  v388 = v804;
  v389 = OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_dbURL;
  v390 = v783;
  swift_beginAccess();
  v391 = v772;
  sub_1CEFCCBDC(v390 + v389, v772, &unk_1EC4BE310, qword_1CF9FCBE0);
  v256 = v729(v391, 1, v388);
  if (v256 == 1)
  {
    goto LABEL_255;
  }

  v392 = v775;
  v393 = v773;
  sub_1CEFCCBDC(v775, v773, &qword_1EC4BFB10, &unk_1CFA12AD0);
  v394 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v395 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB40, &unk_1CFA052C0);
  v396 = *(v395 + 48);
  v397 = *(v395 + 52);
  v398 = swift_allocObject();
  v399 = v801;

  v400 = v776;

  v707 = v394;
  v401 = v805;
  v402 = sub_1CF3B8C04(v391, p_super, v399, v393, v780, v72, v400, v398, v707);
  v403 = v401;
  if (!v401)
  {
    v412 = v402;
    v413 = v392;
    v414 = qword_1EDEBBDA8;
    swift_beginAccess();
    v415 = v749;
    sub_1CEFCCBDC(v412 + v414, v749, &unk_1EC4BEDE0, qword_1CF9FA390);
    v417 = v761;
    v416 = v762;
    v418 = *(v761 + 48);
    v777 = (v761 + 48);
    v774 = v418;
    v256 = (v418)(v415, 1, v762);
    if (v256 != 1)
    {
      v805 = v412;

      sub_1CF9E5D18();
      v420 = *(v417 + 8);
      v419 = (v417 + 8);
      v72 = v420;
      (v420)(v415, v416);
      v421 = v750;
      sub_1CF9E6918();
      v422 = sub_1CF9E68C8();
      v424 = v423;

      (*(v751 + 1))(v421, v752);
      v425 = &v808[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_backingStoreIdentity];
      swift_beginAccess();
      v426 = *v425;
      v427 = v425[1];
      *v425 = v422;
      v425[1] = v424;
      sub_1CEFE48D8(v426, v427);
      v428 = [v784 nsDomain];
      v429 = 0;
      v430 = v425[1];
      if (v430 >> 60 != 15)
      {
        v431 = *v425;
        sub_1CEFE42D4(v431, v430);
        v429 = sub_1CF9E5B48();
        sub_1CEFE48D8(v431, v430);
      }

      [v428 setBackingStoreIdentity_];

      v432 = *&v808[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_nsDomain];

      if (![v432 isHidden])
      {
        v433 = v413;
        if (qword_1EDEAC5D0 != -1)
        {
          swift_once();
        }

        v434 = &qword_1EDEBBAB8;
        goto LABEL_151;
      }

      v433 = v413;
      if (qword_1EDEA5178 != -1)
      {
        goto LABEL_250;
      }

      while (1)
      {
        v434 = &qword_1EDEBB778;
LABEL_151:
        v435 = *v434;
        sub_1CF8E9878(v435);

        sub_1CEFCCC44(v433, &qword_1EC4BFB10, &unk_1CFA12AD0);
        p_super[36].isa = &off_1F4C06B60;
        swift_unknownObjectWeakAssign();
        v436 = v718;
        v437 = [v436 pathComponents];
        v438 = sub_1CF9E6D48();

        v439 = *(v438 + 16);

        if (v439 >= 2)
        {
          v440 = [v436 stringByDeletingLastPathComponent];
          if (!v440)
          {
            _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v440 = sub_1CF9E6888();
          }

          v436 = v440;
        }

        v441 = swift_unknownObjectWeakLoadStrong();
        v778 = v436;
        v779 = v403;
        v776 = v419;
        v773 = v72;
        if (v441 && (v442 = v441, v443 = [v441 provider], v442, v443) && (v444 = objc_msgSend(v443, sel_manager), v443, v444))
        {
          v445 = fpfs_current_or_default_log();
          v446 = v740;
          sub_1CF9E6128();
          v447 = v436;
          v448 = sub_1CF9E6108();
          v449 = sub_1CF9E7298();

          if (os_log_type_enabled(v448, v449))
          {
            v450 = swift_slowAlloc();
            v780 = swift_slowAlloc();
            *&v812 = v780;
            *v450 = 136315138;
            v451 = v447;
            v452 = v444;
            v453 = NSFileProviderItemIdentifier.description.getter();
            v454 = v447;
            v456 = v455;

            v457 = sub_1CEFD0DF0(v453, v456, &v812);
            v447 = v454;

            *(v450 + 4) = v457;
            v444 = v452;
            _os_log_impl(&dword_1CEFC7000, v448, v449, "[loadSyncEngine] Alternate content info update for %s", v450, 0xCu);
            v458 = v780;
            __swift_destroy_boxed_opaque_existential_1(v780);
            MEMORY[0x1D386CDC0](v458, -1, -1);
            MEMORY[0x1D386CDC0](v450, -1, -1);

            v809(v740, v786);
          }

          else
          {

            v809(v446, v786);
          }

          v462 = [v444 alternateContentsDictionaryForProviderIdentifier_];
          if (v462)
          {
            v463 = v462;
            v464 = sub_1CF9E6638();

            v780 = sub_1CF918B34(v464);
          }

          else
          {
            v780 = 0;
          }
        }

        else
        {
          v780 = 0;
        }

        *&v812 = 0;
        *(&v812 + 1) = 0xE000000000000000;
        sub_1CF9E7948();
        v465 = *(*(*(v805 + 32) + 16) + 136);
        v466 = *(v465 + 16);
        v467 = *(v465 + 24);

        *&v812 = v466;
        *(&v812 + 1) = v467;
        MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA5D1A0);
        v468 = v798;
        sub_1CF9E63F8();
        *&v812 = MEMORY[0x1E69E7CC0];
        v469 = v790;
        v470 = v792;
        sub_1CF9E77B8();
        v471 = v794;
        v713(v788, v468, v794);
        v711(v789, v469, v470);
        v709(v791, v710, v793);
        v472 = sub_1CF9E73B8();
        v723(v469, v470);
        (v785)(v468, v471);
        v473 = v801[35];
        v474 = [v473 pathComponents];
        v475 = sub_1CF9E6D48();

        v476 = *(v475 + 16);

        if (v476 >= 2)
        {
          v477 = [v473 stringByDeletingLastPathComponent];
          if (!v477)
          {
            _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v477 = sub_1CF9E6888();
          }

          v473 = v477;
        }

        v478 = [v473 fp_isiCloudDriveIdentifier];

        v72 = p_super;
        v256 = objc_sync_enter(p_super);
        if (v256)
        {
          goto LABEL_263;
        }

        LODWORD(v793) = v478;
        v797 = v472;
        v479 = v72[20].isa;

        v480 = objc_sync_exit(v72);
        if (v480)
        {
          MEMORY[0x1EEE9AC00](v480);
          v706 = &v708 - 4;
          v707 = v72;
          goto LABEL_265;
        }

        v481 = v764;
        v482 = v804;
        v719(v764, v479 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_mainRootURL, v804);

        v483 = *MEMORY[0x1E696A870];
        v484 = type metadata accessor for FPFSGlobalProgress();
        v485 = *(v484 + 48);
        v486 = *(v484 + 52);
        v487 = swift_allocObject();
        *(v487 + 32) = 0u;
        *(v487 + 48) = 0u;
        *(v487 + 64) = 0;
        *(v487 + 72) = 2;
        *(v487 + 88) = 0;
        *(v487 + 96) = 0;
        *(v487 + 80) = 0;
        *(v487 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_dispatchTimer) = 0;
        *(v487 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_publishedProgress) = 0;
        v488 = (v487 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_complementaryProgressSubscriber);
        *v488 = 0u;
        v488[1] = 0u;
        *(v487 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_complementaryProgress) = 0;
        v489 = OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_log;
        *(v487 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_log) = 0;
        v490 = v805;

        v491 = v483;
        v492 = v797;
        *(v487 + v489) = fpfs_current_log();
        *(v487 + 104) = v490;
        *(v487 + 112) = &off_1F4C0A070;
        *(v487 + 24) = v491;
        v792 = v492;
        *(v487 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_dispatchQueue) = v492;
        v493 = *(v803 + 32);
        v493(v487 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_fileURL, v481, v482);
        *(v487 + 16) = MEMORY[0x1E69E7CC0];
        *(v487 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_needsNotifyGlobalProgress) = 0;
        *(v487 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_activeChildProgress) = MEMORY[0x1E69E7CD0];
        *(v487 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_fileSizeCache) = MEMORY[0x1E69E7CC8];
        v796 = v487;
        *(v487 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_useComplementaryProgress) = v793;
        v256 = objc_sync_enter(v72);
        if (v256)
        {
          goto LABEL_263;
        }

        v797 = v493;
        v494 = v72[20].isa;

        v495 = objc_sync_exit(v72);
        if (v495)
        {
          MEMORY[0x1EEE9AC00](v495);
          v706 = &v708 - 4;
          v707 = p_super;
LABEL_265:
          fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v706, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
        }

        v496 = v764;
        v497 = v804;
        v719(v764, v494 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_mainRootURL, v804);

        v498 = *MEMORY[0x1E696A848];
        v499 = *(v484 + 48);
        v500 = *(v484 + 52);
        v501 = swift_allocObject();
        *(v501 + 32) = 0u;
        *(v501 + 48) = 0u;
        *(v501 + 64) = 0;
        *(v501 + 72) = 2;
        *(v501 + 88) = 0;
        *(v501 + 96) = 0;
        *(v501 + 80) = 0;
        *(v501 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_dispatchTimer) = 0;
        *(v501 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_publishedProgress) = 0;
        v502 = (v501 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_complementaryProgressSubscriber);
        *v502 = 0u;
        v502[1] = 0u;
        *(v501 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_complementaryProgress) = 0;
        v503 = OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_log;
        *(v501 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_log) = 0;
        v504 = v805;

        v505 = v792;
        v506 = v498;
        *(v501 + v503) = fpfs_current_log();
        *(v501 + 104) = v504;
        *(v501 + 112) = &off_1F4C0A070;
        *(v501 + 24) = v506;
        v789 = v505;
        *(v501 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_dispatchQueue) = v505;
        (v797)(v501 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_fileURL, v496, v497);
        *(v501 + 16) = MEMORY[0x1E69E7CC0];
        *(v501 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_needsNotifyGlobalProgress) = 0;
        *(v501 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_activeChildProgress) = MEMORY[0x1E69E7CD0];
        *(v501 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_fileSizeCache) = MEMORY[0x1E69E7CC8];
        *(v501 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_useComplementaryProgress) = 0;
        v507 = *(v504 + 24);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB70, &unk_1CFA0A280);
        *(*(swift_dynamicCastClassUnconditional() + 32) + qword_1EDEBBB10 + 8) = &off_1F4C16A00;
        swift_unknownObjectWeakAssign();

        v508 = v796;

        v790 = v501;
        v509 = sub_1CF77D3C4(v504, v508, v501, v780, 0, 0);
        v510 = swift_allocObject();
        v511 = v808;
        *(v510 + 16) = v808;
        v512 = v509[4];
        v513 = v509[5];
        v509[4] = sub_1CEFF6B70;
        v509[5] = v510;
        v797 = v509;

        v419 = v511;
        sub_1CEFF7124(v512);
        v514 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
        v515 = *&v419[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_itemChangedQueue];
        v516 = sub_1CF9E73F8();
        v517 = *&v419[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_workingSetChangedQueue];
        v791 = v514;
        v518 = sub_1CF9E73F8();
        v519 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v520 = (v504 + qword_1EDEBBDC8);
        v521 = *(v504 + qword_1EDEBBDC8);
        v522 = *(v504 + qword_1EDEBBDC8 + 8);
        *v520 = sub_1CF8F8A38;
        v520[1] = v519;

        sub_1CEFF7124(v521);

        v523 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v524 = (v504 + qword_1EDEBBDC0);
        v525 = *(v504 + qword_1EDEBBDC0);
        v526 = *(v504 + qword_1EDEBBDC0 + 8);
        *v524 = sub_1CF088E7C;
        v524[1] = v523;

        sub_1CEFF7124(v525);

        v527 = swift_allocObject();
        swift_unknownObjectUnownedInit();
        v528 = (v504 + qword_1EDEBBC78);
        v529 = *(v504 + qword_1EDEBBC78);
        v530 = *(v504 + qword_1EDEBBC78 + 8);
        *v528 = sub_1CF8F8A5C;
        v528[1] = v527;

        sub_1CEFF7124(v529);

        v531 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v532 = (v504 + qword_1EDEBBDD8);
        v533 = *(v504 + qword_1EDEBBDD8);
        v534 = *(v504 + qword_1EDEBBDD8 + 8);
        *v532 = sub_1CF087898;
        v532[1] = v531;
        sub_1CEFF7124(v533);
        v535 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v536 = (v504 + qword_1EDEBBDF0);
        v537 = *(v504 + qword_1EDEBBDF0);
        v538 = *(v504 + qword_1EDEBBDF0 + 8);
        *v536 = sub_1CF8F8A64;
        v536[1] = v535;
        swift_retain_n();
        sub_1CEFF7124(v537);

        v793 = v516;
        swift_getObjectType();
        v539 = swift_allocObject();
        swift_unknownObjectWeakInit();
        *&v814 = sub_1CF088FC0;
        *(&v814 + 1) = v539;
        *&v812 = MEMORY[0x1E69E9820];
        *(&v812 + 1) = 1107296256;
        *&v813 = sub_1CEFCA444;
        *(&v813 + 1) = &block_descriptor_1821;
        v540 = _Block_copy(&v812);

        sub_1CF4FC6F8(v540);
        _Block_release(v540);

        v72 = swift_getObjectType();
        v541 = swift_allocObject();
        swift_unknownObjectWeakInit();
        *&v814 = sub_1CF8F8A6C;
        *(&v814 + 1) = v541;
        *&v812 = MEMORY[0x1E69E9820];
        *(&v812 + 1) = 1107296256;
        *&v813 = sub_1CEFCA444;
        *(&v813 + 1) = &block_descriptor_1825;
        v542 = _Block_copy(&v812);

        sub_1CF4FC6F8(v542);
        _Block_release(v542);
        v543 = v804;

        sub_1CF9E7448();
        v544 = v793;
        sub_1CF9E7448();
        v545 = *&v419[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_enumerationAnchorChangedSource];
        *&v419[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_enumerationAnchorChangedSource] = v518;
        v788 = v518;
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        v546 = *&v419[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_itemsChangedSource];
        *&v419[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_itemsChangedSource] = v544;
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        v547 = v753;
        sub_1CEFCCBDC(v728, v753, &unk_1EC4BE310, qword_1CF9FCBE0);
        v256 = v729(v547, 1, v543);
        if (v256 == 1)
        {
          goto LABEL_257;
        }

        v548 = v754;
        sub_1CF9E5968();
        (v726)(v547, v543);
        (*(v803 + 56))(v548, 0, 1, v543);
        v549 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pendingSetStateURL;
        swift_beginAccess();
        sub_1CEFDA9E0(v548, &v419[v549], &unk_1EC4BE310, qword_1CF9FCBE0);
        swift_endAccess();
        v550 = *&v419[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pendingSetWatchingQueue];
        *&v812 = MEMORY[0x1E69E7CC0];
        v551 = sub_1CEFCCCA4(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0]);
        v552 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
        v553 = sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
        v554 = v758;
        v771 = v553;
        v772 = v552;
        v555 = v759;
        v775 = v551;
        sub_1CF9E77B8();
        v780 = v550;
        v556 = sub_1CF9E73E8();
        v557 = *(v767 + 8);
        v767 += 8;
        v770 = v557;
        (v557)(v554, v555);
        v433 = swift_allocObject();
        *(v433 + 16) = 0;
        v403 = swift_getObjectType();
        v558 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v559 = swift_allocObject();
        *(v559 + 16) = v558;
        *(v559 + 24) = v433;

        v560 = v798;
        sub_1CF042F9C();
        v803 = v556;
        sub_1CEFD5828(0, v560, sub_1CEFCBF54, v559);

        (v785)(v560, v794);

        v561 = [objc_opt_self() defaultStore];
        [v561 pendingSetRefreshInterval];
        v563 = v562;
        v564 = v562;

        sub_1CF9E6478();
        v565 = v766;
        if ((*&v564 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          break;
        }

        if (v563 <= -9.22337204e18)
        {
          goto LABEL_248;
        }

        v781 = v433;
        v792 = v419;
        if (v563 < 9.22337204e18)
        {
          v567 = v756;
          v566 = v757;
          v753 = v563;
          *v756 = v563;
          v568 = *(v565 + 104);
          LODWORD(v752) = *MEMORY[0x1E69E7F48];
          v754 = (v565 + 104);
          v751 = v568;
          v568(v567);
          v569 = v755;
          v570 = v765;
          MEMORY[0x1D3868740](v765, v567);
          v571 = *(v565 + 8);
          (v571)(v567, v566);
          v572 = v768 + 8;
          v573 = *(v768 + 8);
          v573(v570, v769);
          sub_1CEFD5BD8(v567);
          v574 = v803;
          MEMORY[0x1D3869780](v569, v567, v403, v563);
          v764 = v571;
          v766 = v565 + 8;
          (v571)(v567, v566);
          v768 = v572;
          v763 = v573;
          v573(v569, v769);
          sub_1CF9E7428();
          v575 = v792;
          v576 = *(v792 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pendingSetSource);
          *(v792 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pendingSetSource) = v574;
          swift_unknownObjectRetain();
          swift_unknownObjectRelease();
          v577 = fpfs_current_or_default_log();
          v578 = v747;
          sub_1CF9E6128();
          v579 = sub_1CF9E6108();
          v580 = sub_1CF9E7288();
          if (os_log_type_enabled(v579, v580))
          {
            v581 = swift_slowAlloc();
            *v581 = 0;
            _os_log_impl(&dword_1CEFC7000, v579, v580, "[loadSyncEngine] activating sync engine", v581, 2u);
            MEMORY[0x1D386CDC0](v581, -1, -1);
          }

          v809(v578, v786);
          v582 = v797;
          v583 = v779;
          sub_1CF76289C();
          v584 = v748;
          if (v583)
          {

            v585 = fpfs_current_or_default_log();
            sub_1CF9E6128();
            v586 = v583;
            v587 = sub_1CF9E6108();
            v588 = sub_1CF9E72A8();

            if (os_log_type_enabled(v587, v588))
            {
              v589 = swift_slowAlloc();
              v590 = swift_slowAlloc();
              *v589 = 138412290;
              swift_getErrorValue();
              v591 = Error.prettyDescription.getter(v810);
              *(v589 + 4) = v591;
              *v590 = v591;
              _os_log_impl(&dword_1CEFC7000, v587, v588, "[loadSyncEngine] Unable to activate sync engine: %@", v589, 0xCu);
              sub_1CEFCCC44(v590, &qword_1EC4BE350, &unk_1CF9FC3B0);
              v592 = v590;
              v582 = v797;
              MEMORY[0x1D386CDC0](v592, -1, -1);
              MEMORY[0x1D386CDC0](v589, -1, -1);
            }

            v809(v584, v786);
            sub_1CF833CE4(v805, v583);
            v593 = v582[7];
            sub_1CF7A68E0();
            v594 = v582[8];
            sub_1CF7A68E0();
            *(v582 + 24) = 1;
            v595 = v582[2];
            sub_1CF6C0474();

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();

            v155 = *(v575 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_startStatus);
            if ((~v155 & 0xF000000000000007) == 0)
            {

              v155 = v583;
              goto LABEL_246;
            }

            v615 = (v155 & 0x3FFFFFFFFFFFFFFFLL);

LABEL_245:

LABEL_246:
            v705 = v721;
            sub_1CF83D740(v721);

            return v155;
          }

          sub_1CF82CDEC();
          v596 = v582[2];
          v597 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v598 = *(v596 + 96);
          v599 = *(v596 + 104);
          *(v596 + 96) = sub_1CF8F8A74;
          *(v596 + 104) = v597;

          v600 = v797;
          sub_1CEFF7124(v598);

          v601 = fpfs_current_or_default_log();
          v602 = v744;
          sub_1CF9E6128();

          v72 = sub_1CF9E6108();
          v603 = sub_1CF9E7288();
          if (os_log_type_enabled(v72, v603))
          {
            v604 = swift_slowAlloc();
            v779 = swift_slowAlloc();
            *&v812 = v779;
            *v604 = 136446210;
            v605 = v600[2];
            v606 = qword_1EDEBBDA8;
            swift_beginAccess();
            v607 = v737;
            sub_1CEFCCBDC(v605 + v606, v737, &unk_1EC4BEDE0, qword_1CF9FA390);
            v608 = v762;
            LODWORD(v605) = (v774)(v607, 1, v762);

            if (v605 != 1)
            {
              v609 = v738;
              (*(v761 + 32))(v738, v607, v608);
              sub_1CEFCCCA4(&qword_1EDEAECB0, MEMORY[0x1E69695A8]);
              v610 = sub_1CF9E7F98();
              v612 = v611;
              (v773)(v609, v608);
              v613 = sub_1CEFD0DF0(v610, v612, &v812);

              *(v604 + 4) = v613;
              _os_log_impl(&dword_1CEFC7000, v72, v603, "[loadSyncEngine] activated sync engine with %{public}s", v604, 0xCu);
              v614 = v779;
              __swift_destroy_boxed_opaque_existential_1(v779);
              MEMORY[0x1D386CDC0](v614, -1, -1);
              MEMORY[0x1D386CDC0](v604, -1, -1);

              v809(v744, v786);
              goto LABEL_194;
            }

LABEL_260:
            __break(1u);
LABEL_263:
            MEMORY[0x1EEE9AC00](v256);
            v707 = v72;
            fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v708 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
          }

          v809(v602, v786);
LABEL_194:
          v616 = fpfs_current_or_default_log();
          v617 = v741;
          sub_1CF9E6128();
          v618 = sub_1CF9E6108();
          v619 = sub_1CF9E7288();
          if (os_log_type_enabled(v618, v619))
          {
            v620 = swift_slowAlloc();
            *v620 = 0;
            _os_log_impl(&dword_1CEFC7000, v618, v619, "[loadSyncEngine] read sync anchor", v620, 2u);
            MEMORY[0x1D386CDC0](v620, -1, -1);
          }

          v809(v617, v786);
          sub_1CF83E36C();
          v136 = v729;
          v622 = v621;
          v623 = fpfs_current_or_default_log();
          v779 = 0;
          if (v622)
          {
            v624 = v733;
            sub_1CF9E6128();
            v625 = sub_1CF9E6108();
            v626 = sub_1CF9E7298();
            if (os_log_type_enabled(v625, v626))
            {
              v627 = swift_slowAlloc();
              *v627 = 0;
              _os_log_impl(&dword_1CEFC7000, v625, v626, "[loadSyncEngine] Pending set was not empty before stop", v627, 2u);
              MEMORY[0x1D386CDC0](v627, -1, -1);
            }

            v809(v624, v786);
            *&v812 = MEMORY[0x1E69E7CC0];
            v629 = v758;
            v628 = v759;
            sub_1CF9E77B8();
            v630 = sub_1CF9E73E8();
            (v770)(v629, v628);
            v631 = swift_getObjectType();
            v632 = swift_allocObject();
            swift_unknownObjectWeakInit();

            v633 = v798;
            sub_1CF042F9C();
            sub_1CEFD5828(0, v633, sub_1CF8F8AA0, v632);

            (v785)(v633, v794);

            v634 = v765;
            sub_1CF9E6478();
            v636 = v756;
            v635 = v757;
            *v756 = v753;
            (v751)(v636, v752, v635);
            v637 = v755;
            MEMORY[0x1D3868740](v634, v636);
            v638 = v764;
            (v764)(v636, v635);
            v639 = v634;
            v640 = v763;
            (v763)(v639, v769);
            sub_1CEFD5B64(v636);
            v641 = v734;
            sub_1CEFD5BD8(v734);
            MEMORY[0x1D3869770](v637, v636, v641, v631);
            v638(v641, v635);
            v638(v636, v635);
            v640(v637, v769);
            sub_1CF9E7428();
            v642 = *(v792 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_onActivatePendingSetNotification);
            *(v792 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_onActivatePendingSetNotification) = v630;
            swift_unknownObjectRelease();
            v157 = v804;
            v136 = v729;
            v3 = v783;
            v72 = v743;
          }

          else
          {
            sub_1CF9E6128();
            v643 = sub_1CF9E6108();
            v644 = sub_1CF9E7298();
            v645 = os_log_type_enabled(v643, v644);
            v3 = v783;
            v72 = v743;
            if (v645)
            {
              v646 = swift_slowAlloc();
              *v646 = 0;
              _os_log_impl(&dword_1CEFC7000, v643, v644, "[loadSyncEngine] Pending set was empty before stop", v646, 2u);
              v647 = v646;
              v136 = v729;
              MEMORY[0x1D386CDC0](v647, -1, -1);
            }

            v809(v736, v786);
            v648 = swift_allocObject();
            v649 = v792;
            v650 = v805;
            *(v648 + 16) = v792;
            *(v648 + 24) = v650;

            v651 = v649;
            sub_1CF7AAF88("loadSyncEngine(reason:)", 23, 2, 2, nullsub_1, 0, sub_1CF8F8A84, v648);

            v157 = v804;
          }

          v158 = v779;
          if (((fpfs_is_internal_build() & 1) != 0 || fpfs_supports_tap_to_feedback()) && [v784 disconnectionState] == 1)
          {
            if (qword_1EDEA5C98 == -1)
            {
              goto LABEL_207;
            }

            goto LABEL_253;
          }

          goto LABEL_211;
        }

LABEL_249:
        __break(1u);
LABEL_250:
        swift_once();
      }

      __break(1u);
LABEL_248:
      __break(1u);
      goto LABEL_249;
    }

    goto LABEL_256;
  }

  sub_1CEFCCC44(v392, &qword_1EC4BFB10, &unk_1CFA12AD0);

  v811 = v401;
  v404 = v401;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  if (swift_dynamicCast())
  {
    v405 = v721;
    if (v815 == 3)
    {
      if (sub_1CF828E4C())
      {
        v406 = fpfs_current_or_default_log();
        v407 = v739;
        sub_1CF9E6128();
        v408 = sub_1CF9E6108();
        v409 = sub_1CF9E72B8();
        if (os_log_type_enabled(v408, v409))
        {
          v410 = swift_slowAlloc();
          *v410 = 0;
          _os_log_impl(&dword_1CEFC7000, v408, v409, "[loadSyncEngine] unsupported database version on a non-default volume: disconnecting domain", v410, 2u);
          MEMORY[0x1D386CDC0](v410, -1, -1);
        }

        v809(v407, v786);
        v411 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E6967210] code:22 userInfo:0];
        sub_1CF83DC44(v808, v403, v802);
        v155 = v411;

        sub_1CF83D740(v405);

        return v155;
      }
    }

    else
    {
      sub_1CF47FB38(&v812);
    }
  }

  else
  {
    v813 = 0u;
    v814 = 0u;
    v812 = 0u;
    v815 = -1;
    sub_1CEFCCC44(&v812, &unk_1EC4C4CB0, &qword_1CFA17EA0);
    v405 = v721;
  }

  v459 = *&v808[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_startStatus];
  v460 = v459;
  if ((~v459 & 0xF000000000000007) == 0)
  {
    v461 = v403;
    v460 = v403;
  }

  sub_1CF8F8A20(v459);
  sub_1CF83DC44(v808, v403, v802);

  sub_1CF83D740(v405);

  return v460;
}

uint64_t sub_1CF83D740(void *a1)
{
  v2 = sub_1CF9E6118();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v8 = a1;
  v9 = sub_1CF9E6108();
  v10 = sub_1CF9E72C8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = [v8 leave];
    *(v11 + 4) = v13;
    *v12 = v13;
    _os_log_impl(&dword_1CEFC7000, v9, v10, "%@", v11, 0xCu);
    sub_1CEFCCC44(v12, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v12, -1, -1);
    MEMORY[0x1D386CDC0](v11, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

id sub_1CF83D8F8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (!a2)
  {
    return 0;
  }

  v8 = objc_opt_self();

  v9 = [v8 defaultManager];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4CD0, &unk_1CFA17EB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CF9FC3C0;
  v11 = *MEMORY[0x1E699C720];
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v12 = MEMORY[0x1E69E6158];
  sub_1CF9E7898();
  v13 = a3;
  v14 = [v13 pathComponents];
  v15 = sub_1CF9E6D48();

  v16 = *(v15 + 16);

  if (v16 >= 2)
  {
    v17 = [v13 stringByDeletingLastPathComponent];
    if (!v17)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v17 = sub_1CF9E6888();
    }

    v13 = v17;
  }

  v18 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v20 = v19;

  *(inited + 96) = v12;
  *(inited + 72) = v18;
  *(inited + 80) = v20;
  v21 = *MEMORY[0x1E699C728];
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  sub_1CF9E7898();
  *(inited + 168) = v12;
  *(inited + 144) = a1;
  *(inited + 152) = a2;
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  sub_1CF9E7898();
  v22 = [a4 volume];
  v23 = [v22 role];

  *(inited + 240) = MEMORY[0x1E69E7668];
  *(inited + 216) = v23;
  sub_1CF4E0E00(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0600, &unk_1CF9FE790);
  swift_arrayDestroy();
  v24 = sub_1CF9E6618();

  v25 = [v9 sessionWithCommonProperties_];

  return v25;
}

id sub_1CF83DBC0(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1CF833CE4(a1, a2);
  }

  swift_willThrow();
  return a2;
}

void sub_1CF83DC44(void *a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v34 - v8;
  v10 = sub_1CF9E6118();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v16 = a1;
  v17 = a2;
  v18 = sub_1CF9E6108();
  v19 = sub_1CF9E72B8();
  if (!os_log_type_enabled(v18, v19))
  {

    (*(v11 + 8))(v14, v10);
    goto LABEL_5;
  }

  v36 = v19;
  v37 = v11;
  v38 = v10;
  v39 = a3;
  v20 = swift_slowAlloc();
  v34 = swift_slowAlloc();
  v35 = swift_slowAlloc();
  v41 = v35;
  *v20 = 136315394;
  v21 = *&v16[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pathsManager];
  v22 = OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_dbURL;
  swift_beginAccess();
  sub_1CEFCCBDC(v21 + v22, v9, &unk_1EC4BE310, qword_1CF9FCBE0);
  v23 = sub_1CF9E5A58();
  v24 = *(v23 - 8);
  LODWORD(v22) = (*(v24 + 48))(v9, 1, v23);

  if (v22 != 1)
  {
    v25 = sub_1CF9E5928();
    v26 = [v25 fp_shortDescription];

    v27 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v29 = v28;

    (*(v24 + 8))(v9, v23);
    v30 = sub_1CEFD0DF0(v27, v29, &v41);

    *(v20 + 4) = v30;
    *(v20 + 12) = 2112;
    swift_getErrorValue();
    v31 = Error.prettyDescription.getter(v40);
    *(v20 + 14) = v31;
    v32 = v34;
    *v34 = v31;
    _os_log_impl(&dword_1CEFC7000, v18, v36, "[loadSyncEngine] cannot open database at %s: %@", v20, 0x16u);
    sub_1CEFCCC44(v32, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v32, -1, -1);
    v33 = v35;
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x1D386CDC0](v33, -1, -1);
    MEMORY[0x1D386CDC0](v20, -1, -1);

    (*(v37 + 8))(v14, v38);
LABEL_5:
    sub_1CF9BFA28();
    return;
  }

  __break(1u);
}

void sub_1CF83E018()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v0 = swift_unknownObjectWeakLoadStrong();
  if (!v0)
  {
    goto LABEL_5;
  }

  v1 = v0;
  v2 = [v0 indexer];
  if (v2)
  {
    v3 = v2;
    type metadata accessor for FPFSIndexer();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = v4;
      v6 = swift_allocObject();
      *(v6 + 16) = v5;
      *(v6 + 24) = Strong;
      v7 = v3;
      Strong = Strong;
      sub_1CEFD4024("forceIndexAnchorFetch()", 23, 2, nullsub_1, 0, sub_1CF8F94C4, v6);

LABEL_5:
      v8 = Strong;
      goto LABEL_8;
    }

    v8 = v3;
  }

  else
  {

    v8 = Strong;
  }

LABEL_8:
}

uint64_t sub_1CF83E168()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = sub_1CF0878B4();
    v3 = v2[2];
    if (v3)
    {
      v4 = v2 + 5;
      do
      {
        v5 = *(v4 - 1);
        v6 = *v4;
        swift_unknownObjectRetain();
        v7 = objc_autoreleasePoolPush();
        ObjectType = swift_getObjectType();
        (*(v6 + 32))(ObjectType, v6);
        objc_autoreleasePoolPop(v7);
        swift_unknownObjectRelease();
        v4 += 2;
        --v3;
      }

      while (v3);
    }
  }

  return result;
}

void sub_1CF83E240()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1CF841908();
  }
}

void sub_1CF83E294()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();

    v3 = [v2 provider];
    v4 = [v3 manager];

    v5 = [v4 server];
    [v5 signalProviderChanges];
  }
}

void sub_1CF83E36C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v47 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v40 - v5;
  v7 = sub_1CF9E5A58();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v45 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CF9E6118();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v17 = v0;
  v18 = sub_1CF9E6108();
  v49 = sub_1CF9E7298();
  v19 = &unk_1EDEA5000;
  if (os_log_type_enabled(v18, v49))
  {
    v43 = v12;
    v44 = v11;
    v20 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v48 = v41;
    v42 = v20;
    *v20 = 136315138;
    v21 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pendingSetStateURL;
    swift_beginAccess();
    sub_1CEFCCBDC(v17 + v21, v6, &unk_1EC4BE310, qword_1CF9FCBE0);
    LODWORD(v21) = (*(v8 + 48))(v6, 1, v7);

    if (v21 == 1)
    {
LABEL_10:
      __break(1u);
      return;
    }

    v22 = v45;
    (*(v8 + 32))(v45, v6, v7);
    sub_1CEFCCCA4(&unk_1EDEAB3F0, MEMORY[0x1E6968FB0]);
    v23 = sub_1CF9E7F98();
    v25 = v24;
    (*(v8 + 8))(v22, v7);
    v26 = sub_1CEFD0DF0(v23, v25, &v48);

    v27 = v42;
    *(v42 + 1) = v26;
    _os_log_impl(&dword_1CEFC7000, v18, v49, "Fetching pending set status from %s", v27, 0xCu);
    v28 = v41;
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x1D386CDC0](v28, -1, -1);
    MEMORY[0x1D386CDC0](v27, -1, -1);

    (*(v43 + 8))(v15, v44);
    v29 = v47;
    v19 = &unk_1EDEA5000;
  }

  else
  {

    (*(v12 + 8))(v15, v11);
    v29 = v47;
  }

  v30 = v19[399];
  swift_beginAccess();
  sub_1CEFCCBDC(v17 + v30, v29, &unk_1EC4BE310, qword_1CF9FCBE0);
  if ((*(v8 + 48))(v29, 1, v7) == 1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v31 = v46;
  v32 = sub_1CF9E5A78();
  if (v31)
  {
    (*(v8 + 8))(v29, v7);
  }

  else
  {
    v34 = v32;
    v35 = v29;
    v36 = v33;
    (*(v8 + 8))(v35, v7);
    v37 = sub_1CF9E5408();
    v38 = *(v37 + 48);
    v39 = *(v37 + 52);
    swift_allocObject();
    sub_1CF9E53F8();
    sub_1CF9E53E8();
    sub_1CEFE4714(v34, v36);
  }
}

void sub_1CF83E874()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C49F8, &qword_1CFA17AF8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v30 - v5;
  v7 = sub_1CF9E6118();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v15 = sub_1CF9E6108();
    v16 = sub_1CF9E7298();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v30 = v6;
      v18 = v1;
      v19 = v17;
      *v17 = 0;
      _os_log_impl(&dword_1CEFC7000, v15, v16, "[loadSyncEngine] Pending set notification on start", v17, 2u);
      v20 = v19;
      v1 = v18;
      v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
      v6 = v30;
      MEMORY[0x1D386CDC0](v20, -1, -1);
    }

    (*(v8 + 8))(v11, v7);
    v21 = type metadata accessor for FPDDomainFPFSBackend.PendingSetState(0);
    (*(*(v21 - 8) + 56))(v6, 1, 1, v21);
    v22 = swift_unknownObjectWeakLoadStrong();
    if (v22)
    {
      v23 = v22;
      v24 = *&v13[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pendingSetWatchingQueue];
      sub_1CEFCCBDC(v6, v3, &qword_1EC4C49F8, &qword_1CFA17AF8);
      v25 = (*(v1 + 80) + 24) & ~*(v1 + 80);
      v26 = (v2 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
      v27 = swift_allocObject();
      *(v27 + 16) = v13;
      sub_1CEFE55D0(v3, v27 + v25, &qword_1EC4C49F8, &qword_1CFA17AF8);
      *(v27 + v26) = v23;
      v28 = v13;
      v29 = v23;
      sub_1CF01001C(0, "sendPendingSetNotification(newState:)", 37, 2, sub_1CF8F8AA8, v27);

      sub_1CEFCCC44(v6, &qword_1EC4C49F8, &qword_1CFA17AF8);
    }

    else
    {

      sub_1CEFCCC44(v6, &qword_1EC4C49F8, &qword_1CFA17AF8);
    }
  }
}

uint64_t sub_1CF83EBF8(int a1, id obj, char *a3)
{
  v6 = objc_sync_enter(obj);
  if (v6)
  {
    MEMORY[0x1EEE9AC00](v6);
    v9 = obj;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v8, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  sub_1CF83ED50(obj, a3);
  if (v3)
  {
    result = objc_sync_exit(obj);
    if (result)
    {
LABEL_8:
      MEMORY[0x1EEE9AC00](result);
      v9 = obj;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v8, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
    }
  }

  else
  {
    result = objc_sync_exit(obj);
    if (result)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1CF83ED50(char *a1, char *a2)
{
  v52 = a2;
  v3 = type metadata accessor for FPDDomainFPFSBackend.PendingSetState(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v44 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C49F8, &qword_1CFA17AF8);
  v45 = *(v7 - 8);
  v8 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v46 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v43 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v49 = &v43 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v43 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v43 - v17;
  v19 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pendingSetState;
  swift_beginAccess();
  v47 = v19;
  sub_1CEFCCBDC(&a1[v19], v18, &qword_1EC4C49F8, &qword_1CFA17AF8);
  v48 = v4;
  v20 = *(v4 + 48);
  v50 = v3;
  LODWORD(v3) = v20(v18, 1, v3);
  result = sub_1CEFCCC44(v18, &qword_1EC4C49F8, &qword_1CFA17AF8);
  if (v3 == 1)
  {
    v22 = v53;
    result = sub_1CF83F228(v52, v15);
    if (!v22)
    {
      v23 = a1;
      v53 = 0;
      v24 = v50;
      (*(v48 + 56))(v15, 0, 1, v50);
      v25 = v47;
      swift_beginAccess();
      v26 = v15;
      v27 = v24;
      sub_1CEFDA9E0(v26, &a1[v25], &qword_1EC4C49F8, &qword_1CFA17AF8);
      swift_endAccess();
      v28 = v49;
      sub_1CEFCCBDC(&a1[v25], v49, &qword_1EC4C49F8, &qword_1CFA17AF8);
      if (v20(v28, 1, v27))
      {
        sub_1CEFCCC44(v28, &qword_1EC4C49F8, &qword_1CFA17AF8);
        v29 = v51;
      }

      else
      {
        v30 = v44;
        sub_1CEFDA34C(v28, v44, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
        sub_1CEFCCC44(v28, &qword_1EC4C49F8, &qword_1CFA17AF8);
        v31 = *(v30 + *(v27 + 28));

        sub_1CEFD5338(v30, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
        v32 = *(v31 + 16);

        v29 = v51;
        if (!v32)
        {
          return result;
        }
      }

      sub_1CEFCCBDC(&v23[v25], v29, &qword_1EC4C49F8, &qword_1CFA17AF8);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v34 = Strong;
        v35 = *&v23[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pendingSetWatchingQueue];
        v36 = v46;
        sub_1CEFCCBDC(v29, v46, &qword_1EC4C49F8, &qword_1CFA17AF8);
        v37 = v23;
        v38 = (*(v45 + 80) + 24) & ~*(v45 + 80);
        v39 = (v8 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
        v40 = swift_allocObject();
        *(v40 + 16) = v37;
        sub_1CEFE55D0(v36, v40 + v38, &qword_1EC4C49F8, &qword_1CFA17AF8);
        *(v40 + v39) = v34;
        v29 = v51;
        v41 = v37;
        v42 = v34;
        sub_1CF01001C(0, "sendPendingSetNotification(newState:)", 37, 2, sub_1CF902D88, v40);
      }

      return sub_1CEFCCC44(v29, &qword_1EC4C49F8, &qword_1CFA17AF8);
    }
  }

  return result;
}

uint64_t sub_1CF83F228@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = sub_1CF9E5CF8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  sub_1CF9E5CE8();
  v30 = a1;
  v11 = *(a1 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4830, &unk_1CFA052E0);
  v12 = swift_dynamicCastClassUnconditional();
  v13 = *(v4 + 16);
  v13(v7, v10, v3);

  v14 = v32;
  v15 = sub_1CF7F6F74();
  if (v14)
  {

    v16 = *(v4 + 8);
    v16(v7, v3);
    return (v16)(v10, v3);
  }

  else
  {
    v32 = v7;
    v29 = v15;
    v18 = v30;
    v19 = objc_sync_enter(v30);
    if (v19)
    {
      MEMORY[0x1EEE9AC00](v19);
      *(&v26 - 2) = v18;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v26 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    v28 = *&v18[qword_1EDEADB30];
    v20 = v28;
    v21 = objc_sync_exit(v18);
    if (v21)
    {
      MEMORY[0x1EEE9AC00](v21);
      *(&v26 - 2) = v18;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v26 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
    }

    LODWORD(v30) = *(v12 + 96);
    v22 = type metadata accessor for FPDDomainFPFSBackend.PendingSetState(0);
    v27 = v22[12];
    v23 = v31;
    sub_1CF9E5D88();
    v13((v23 + v22[5]), v32, v3);
    (*(v4 + 56))(v23 + v22[6], 1, 1, v3);
    v24 = v29;
    *(v23 + v22[7]) = v29;
    *(v23 + v22[8]) = v24;

    (*(v4 + 8))(v10, v3);
    *(v23 + v22[9]) = MEMORY[0x1E69E7CC0];
    v25 = v27;
    *(v23 + v22[10]) = v28;
    *(v23 + v22[11]) = 0;
    *(v23 + v25) = 2;
    result = (*(v4 + 32))(v23 + v22[13], v32, v3);
    *(v23 + v22[14]) = v30;
  }

  return result;
}

void sub_1CF83F5AC(uint64_t a1, unint64_t a2)
{
  v4 = v3;
  v146 = a1;
  v147 = a2;
  v5 = sub_1CF9E6118();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v134 = &v132 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v140 = &v132 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v135 = &v132 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v148 = &v132 - v14;
  v15 = sub_1CF9E64A8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = (&v132 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *&v2[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_startupQueue];
  *v20 = v21;
  (*(v16 + 104))(v20, *MEMORY[0x1E69E8020], v15, v18);
  v22 = v21;
  v23 = sub_1CF9E64D8();
  (*(v16 + 8))(v20, v15);
  if ((v23 & 1) == 0)
  {
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v24 = &v2[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_backingStoreIdentity];
  swift_beginAccess();
  v25 = *v24;
  v26 = v24[1];
  v133 = v24;
  v144 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_startStatus;
  v145 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend___fpfs;
  v141 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_providerDomainID;
  v136 = v25;
  v137 = v26;
  sub_1CEFF05F4(v25, v26);
  v27 = 0;
  v153 = 0;
  v28 = (v6 + 8);
  *&v29 = 136446466;
  v139 = v29;
  *&v29 = 136446210;
  v138 = v29;
  v142 = (v6 + 8);
  v143 = v5;
  v30 = v2;
  v31 = v148;
  v154 = v2;
  do
  {
    v150 = v27;
    v157 = 0;
    v32 = v30;
    sub_1CF517174(v32, &v157, v32);
    v155 = v157;
    if (!v157)
    {
      goto LABEL_54;
    }

    v33 = *(v155 + 16);
    if (v33)
    {
      v34 = v155 + 32;
      do
      {
        sub_1CEFF6FC0(v34, v156);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          [Strong invalidate];
          swift_unknownObjectRelease();
        }

        sub_1CEFF70F4(v156);
        v34 += 16;
        --v33;
      }

      while (v33);
    }

    v36 = *&v30[v145];
    if (v36)
    {
      v37 = *(v36 + 56);

      sub_1CF7A69C4();
      v38 = OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_dispatchTimer;
      if (*(v37 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_dispatchTimer))
      {
        v39 = *(v37 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_dispatchTimer);
        swift_getObjectType();
        swift_unknownObjectRetain();
        sub_1CF9E7448();
        swift_unknownObjectRelease();
        if (*(v37 + v38))
        {
          v40 = *(v37 + v38);
          swift_getObjectType();
          swift_unknownObjectRetain();
          sub_1CF9E7418();
          swift_unknownObjectRelease();
        }
      }

      v41 = *(v37 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_dispatchQueue);

      sub_1CF01001C(0, "deactivate()", 12, 2, sub_1CF8F8A0C, v37);

      v42 = *(v36 + 64);
      sub_1CF7A69C4();
      v43 = OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_dispatchTimer;
      if (*(v42 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_dispatchTimer))
      {
        v44 = *(v42 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_dispatchTimer);
        swift_getObjectType();
        swift_unknownObjectRetain();
        sub_1CF9E7448();
        swift_unknownObjectRelease();
        if (*(v42 + v43))
        {
          v45 = *(v42 + v43);
          swift_getObjectType();
          swift_unknownObjectRetain();
          sub_1CF9E7418();
          swift_unknownObjectRelease();
        }
      }

      v46 = *(v42 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_dispatchQueue);

      sub_1CF01001C(0, "deactivate()", 12, 2, sub_1CF902D84, v42);

      *(v36 + 24) = 1;
      v47 = *(v36 + 16);
      sub_1CF6C0474();
      sub_1CF8E976C(0);
    }

    v48 = v154;
    v49 = *&v154[v144];
    *&v154[v144] = 0xF000000000000007;
    sub_1CF8F89F4(v49);
    v50 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v51 = v32;
    v52 = v31;
    v53 = v147;

    v54 = sub_1CF9E6108();
    v55 = sub_1CF9E72C8();

    v152 = v51;

    v56 = os_log_type_enabled(v54, v55);
    v151 = v4;
    if (v56)
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v156[0] = v58;
      *v57 = v139;
      v59 = [*&v48[v141] fp_obfuscatedProviderDomainID];
      v60 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v62 = v61;

      v28 = v142;
      v63 = sub_1CEFD0DF0(v60, v62, v156);
      v5 = v143;

      *(v57 + 4) = v63;
      *(v57 + 12) = 2082;
      v64 = v146;
      *(v57 + 14) = sub_1CEFD0DF0(v146, v53, v156);
      _os_log_impl(&dword_1CEFC7000, v54, v55, "starting FPFS for domain %{public}s for %{public}s", v57, 0x16u);
      swift_arrayDestroy();
      v65 = v58;
      v4 = v151;
      MEMORY[0x1D386CDC0](v65, -1, -1);
      MEMORY[0x1D386CDC0](v57, -1, -1);

      v66 = *v28;
      (*v28)(v52, v5);
      v67 = v53;
    }

    else
    {

      v66 = *v28;
      (*v28)(v52, v5);
      v67 = v53;
      v64 = v146;
    }

    v68 = v152;
    v69 = sub_1CF8380AC(v64, v67);
    if (v69 >> 62 != 1)
    {
      if (!(v69 >> 62))
      {
        v86 = v66;
        v87 = fpfs_current_or_default_log();
        v88 = v135;
        sub_1CF9E6128();
        v89 = v68;
        v90 = sub_1CF9E6108();
        v91 = sub_1CF9E72B8();

        if (os_log_type_enabled(v90, v91))
        {
          v92 = swift_slowAlloc();
          v93 = swift_slowAlloc();
          v152 = v89;
          v94 = v93;
          v156[0] = v93;
          *v92 = v138;
          v95 = [*&v154[v141] fp_obfuscatedProviderDomainID];
          v96 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v98 = v97;

          v99 = sub_1CEFD0DF0(v96, v98, v156);

          *(v92 + 4) = v99;
          _os_log_impl(&dword_1CEFC7000, v90, v91, "failed to start FPFS for domain %{public}s", v92, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v94);
          MEMORY[0x1D386CDC0](v94, -1, -1);
          MEMORY[0x1D386CDC0](v92, -1, -1);

          v86(v135, v143);
        }

        else
        {

          v86(v88, v5);
        }

        v116 = v136;
        v117 = swift_unknownObjectWeakLoadStrong();
        if (v117)
        {
          v118 = v117;
          v119 = sub_1CF9E57E8();
          [v118 setStartupError_];
        }

        swift_willThrow();
        sub_1CEFE48D8(v116, v137);

        return;
      }

      v100 = v137;
      if (v137 >> 60 != 15)
      {
        v101 = *v133;
        v102 = v133[1];
        if (v102 >> 60 == 15)
        {
          v103 = v136;
          sub_1CEFF05F4(v136, v137);
          sub_1CEFF05F4(v101, v102);
          sub_1CEFE48D8(v101, v102);
          sub_1CEFE48D8(v103, v100);
        }

        else
        {
          sub_1CEFF05F4(v101, v102);
          v103 = v136;
          sub_1CEFF05F4(v136, v100);
          sub_1CEFF05F4(v101, v102);
          v124 = sub_1CF328660(v101, v102, v103, v100);
          sub_1CEFE48D8(v101, v102);
          sub_1CEFE48D8(v103, v100);
          sub_1CEFE48D8(v101, v102);
          if (v124)
          {

            sub_1CEFE48D8(v103, v100);
LABEL_45:

            return;
          }
        }

        v125 = swift_unknownObjectWeakLoadStrong();
        v126 = [v125 provider];

        v127 = [v126 manager];
        v128 = [v127 server];

        [v128 signalProviderChanges];
        sub_1CEFE48D8(v103, v100);
      }

      goto LABEL_45;
    }

    v149 = v66;
    v70 = fpfs_current_or_default_log();
    v71 = v140;
    sub_1CF9E6128();
    v72 = v68;
    v73 = sub_1CF9E6108();
    v74 = sub_1CF9E72A8();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v152 = v72;
      v77 = v76;
      v156[0] = v76;
      *v75 = v138;
      v78 = [*&v154[v141] fp_obfuscatedProviderDomainID];
      v79 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v81 = v80;

      v82 = v79;
      v5 = v143;
      v83 = sub_1CEFD0DF0(v82, v81, v156);

      *(v75 + 4) = v83;
      v28 = v142;
      _os_log_impl(&dword_1CEFC7000, v73, v74, "should reattempt starting FPFS for domain %{public}s", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v77);
      v84 = v77;
      v72 = v152;
      MEMORY[0x1D386CDC0](v84, -1, -1);
      v85 = v75;
      v4 = v151;
      MEMORY[0x1D386CDC0](v85, -1, -1);
    }

    else
    {
    }

    v149(v71, v5);

    v31 = v148;
    v27 = v150 + 1;
    v153 = (v69 & 0x3FFFFFFFFFFFFFFFLL);
    v30 = v154;
  }

  while (v150 != 1);
  v104 = fpfs_current_or_default_log();
  v105 = v134;
  sub_1CF9E6128();
  v106 = v72;
  v107 = sub_1CF9E6108();
  v108 = sub_1CF9E72B8();

  if (os_log_type_enabled(v107, v108))
  {
    v109 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    v156[0] = v110;
    *v109 = v138;
    v111 = [*&v30[v141] fp_obfuscatedProviderDomainID];
    v112 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v114 = v113;

    v115 = sub_1CEFD0DF0(v112, v114, v156);

    *(v109 + 4) = v115;
    _os_log_impl(&dword_1CEFC7000, v107, v108, "failed to start FPFS for domain %{public}s after several attempts", v109, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v110);
    MEMORY[0x1D386CDC0](v110, -1, -1);
    MEMORY[0x1D386CDC0](v109, -1, -1);

    v149(v105, v143);
  }

  else
  {

    v149(v105, v5);
  }

  v120 = swift_unknownObjectWeakLoadStrong();
  v121 = v136;
  if (v120)
  {
    v122 = v120;
    if (v153)
    {
      v123 = sub_1CF9E57E8();
    }

    else
    {
      v123 = 0;
    }

    [v122 setStartupError_];
  }

  v129 = swift_unknownObjectWeakLoadStrong();
  if (v129)
  {
    v130 = v129;
    v131 = [v129 volume];

    [v131 monitorLowDiskSpaceRecovery];
  }

  if (v153 || FPDomainUnavailableError())
  {
    swift_willThrow();
    sub_1CEFE48D8(v121, v137);
    return;
  }

LABEL_55:
  __break(1u);
}

id sub_1CF8403B4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong indexer];

    if (v2)
    {
      if ([v2 needsAuthentication])
      {
        type metadata accessor for NSFileProviderError(0);
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CEFCCCA4(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError);
        sub_1CF9E57D8();

        return v7;
      }
    }
  }

  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 startupError];

    if (v6)
    {
      return v6;
    }
  }

  result = FPDomainUnavailableError();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF8404FC(uint64_t a1, void (*a2)(uint64_t *, char *, uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - v6;
  v11 = 0;
  v8 = sub_1CF9E5A58();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  a2(&v11, v7, a1);
  return sub_1CEFCCC44(v7, &unk_1EC4BE310, qword_1CF9FCBE0);
}

uint64_t sub_1CF8405F8(uint64_t a1, uint64_t (*a2)(uint64_t *, uint64_t *, uint64_t))
{
  v3 = 0;
  v4 = 0;
  return a2(&v4, &v3, a1);
}

void sub_1CF84063C(void *a1, void (*a2)(void *))
{
  v5[0] = a1;
  memset(&v5[1], 0, 24);
  v6 = 1;
  v4 = a1;
  a2(v5);
}

uint64_t sub_1CF8406A8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1CF4E40EC(MEMORY[0x1E69E7CC0]);
  if (a1 >> 62)
  {
LABEL_26:
    v5 = sub_1CF9E7818();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x1D3869C30](v6, a1);
        }

        else
        {
          if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_25;
          }

          v9 = *(a1 + 8 * v6 + 32);
        }

        v10 = v9;
        v11 = v6 + 1;
        if (__OFADD__(v6, 1))
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

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v14 = sub_1CF7BF8D8(v10);
        v15 = v4[2];
        v16 = (v13 & 1) == 0;
        v17 = v15 + v16;
        if (__OFADD__(v15, v16))
        {
          goto LABEL_23;
        }

        v18 = v13;
        if (v4[3] >= v17)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v13)
            {
              goto LABEL_4;
            }
          }

          else
          {
            sub_1CF7D338C();
            if (v18)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_1CF7CBBA8(v17, isUniquelyReferenced_nonNull_native);
          v19 = sub_1CF7BF8D8(v10);
          if ((v18 & 1) != (v20 & 1))
          {
            sub_1CEFD57E0(0, &unk_1EDEA3430, 0x1E69673A0);
            result = sub_1CF9E8108();
            __break(1u);
            return result;
          }

          v14 = v19;
          if (v18)
          {
LABEL_4:
            v7 = v4[7];
            v8 = *(v7 + 8 * v14);
            *(v7 + 8 * v14) = MEMORY[0x1E69E7CC0];

            goto LABEL_5;
          }
        }

        v4[(v14 >> 6) + 8] |= 1 << v14;
        *(v4[6] + 8 * v14) = v10;
        *(v4[7] + 8 * v14) = MEMORY[0x1E69E7CC0];
        v21 = v4[2];
        v22 = __OFADD__(v21, 1);
        v23 = v21 + 1;
        if (v22)
        {
          goto LABEL_24;
        }

        v4[2] = v23;
LABEL_5:
        ++v6;
      }

      while (v11 != v5);
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a2;
  *(v24 + 24) = a3;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1CF8F89DC;
  *(v25 + 24) = v24;
  v26 = swift_allocObject();
  v26[2] = v4;
  v26[3] = sub_1CF8F89DC;
  v26[4] = v24;
  v26[5] = v32;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_1CF903444;
  *(v27 + 24) = v25;
  swift_retain_n();

  v28 = v32;

  sub_1CEFD4024("withFPItemIdentifier(forDictionary:cb:)", 39, 2, sub_1CF8F89F0, v27, sub_1CF8F89E4, v26);
}

uint64_t sub_1CF8409F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (!a1)
  {
    return a4();
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    v9 = a3;
    v10 = a2;
    v7 = sub_1CF1FDB18(v5, 0);
    v11 = sub_1CF1FDA94(&v12, v7 + 32, v5, a1);

    result = sub_1CEFCB59C();
    if (v11 != v5)
    {
      __break(1u);
      return result;
    }

    a3 = v9;
    a2 = v10;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  (a4)(v7, a2, a3);
}

uint64_t sub_1CF840B10(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, unint64_t, void), uint64_t a4, void *a5)
{
  v59 = swift_allocObject();
  *(v59 + 16) = sub_1CF4E41F0(MEMORY[0x1E69E7CC0]);
  v6 = v59 + 16;
  v7 = a2 + 64;
  v8 = 1 << *(a2 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a2 + 64);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  v60 = v11;
  v61 = a2 + 64;
  while (v10)
  {
LABEL_12:
    v17 = (v13 << 9) | (8 * __clz(__rbit64(v10)));
    v18 = *(*(a2 + 56) + v17);
    v19 = *(*(a2 + 48) + v17);
    v62 = v18;

    v20 = [v19 identifier];
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    LOBYTE(v18) = sub_1CF4C4044();

    v63 = v19;
    if ((v18 & 1) == 0)
    {

LABEL_5:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4BF0, &unk_1CFA189D0);
      v14 = swift_allocObject();
      *(v14 + 42) = 0;
      *(v14 + 32) = v20;
      *(v14 + 40) = 256;
      *(v14 + 16) = v20;
      *(v14 + 24) = 256;
      v15 = v20;
      goto LABEL_6;
    }

    v21 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v23 = sub_1CF025150(0x80007uLL, v21, v22);
    v24 = a2;
    v26 = v25;
    v27 = v6;
    v29 = v28;
    v31 = v30;

    v32 = v26;
    a2 = v24;
    v33 = v29;
    v6 = v27;
    v7 = v61;
    v34 = MEMORY[0x1D3868C10](v23, v32, v33, v31);
    v36 = v35;
    v11 = v60;

    VFSItemID.init(parsing:)(v34, v36, &v64);

    v37 = v65;
    if (v65 == 255)
    {
      goto LABEL_5;
    }

    v38 = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4BF0, &unk_1CFA189D0);
    v14 = swift_allocObject();
    *(v14 + 32) = v38;
    *(v14 + 40) = v37;
    *(v14 + 41) = 0;
    *(v14 + 16) = v38;
    *(v14 + 24) = v37;
    *(v14 + 25) = 0;
LABEL_6:
    v10 &= v10 - 1;
    sub_1CF8E34A4(v62, v14);
  }

  while (1)
  {
    v16 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_29;
    }

    if (v16 >= v11)
    {
      break;
    }

    v10 = *(v7 + 8 * v16);
    ++v13;
    if (v10)
    {
      v13 = v16;
      goto LABEL_12;
    }
  }

  v39 = 0;
  v40 = *v6;
  v41 = *v6 + 64;
  v42 = 1 << *(*v6 + 32);
  v43 = -1;
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  v44 = v43 & *(*v6 + 64);
  v45 = (v42 + 63) >> 6;
  while (v44)
  {
    v46 = v39;
LABEL_24:
    v47 = __clz(__rbit64(v44));
    v44 &= v44 - 1;
    v48 = *(*(v40 + 48) + ((v46 << 9) | (8 * v47)));
    result = swift_beginAccess();
    if ((*(v48 + 41) & 1) == 0)
    {
      v49 = *(a1 + 16);
      v50 = swift_allocObject();
      *(v50 + 16) = a3;
      *(v50 + 24) = a4;
      v51 = swift_allocObject();
      v51[2] = v59;
      v51[3] = a1;
      v51[4] = a5;
      v51[5] = a3;
      v51[6] = a4;
      v52 = swift_allocObject();
      *(v52 + 16) = sub_1CF8F6DE0;
      *(v52 + 24) = v50;
      swift_retain_n();

      v53 = a5;

      sub_1CF7AAF88("withFPItemIdentifier(forDictionary:cb:)", 39, 2, 2, sub_1CF903284, v52, sub_1CF8F6DE8, v51);
    }
  }

  while (1)
  {
    v46 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v46 >= v45)
    {
      v54 = sub_1CF4E42E8(MEMORY[0x1E69E7CC0]);
      a3(a2, v54, 0);
    }

    v44 = *(v41 + 8 * v46);
    ++v39;
    if (v44)
    {
      v39 = v46;
      goto LABEL_24;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1CF840FDC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(unint64_t, unint64_t, void))
{
  v6 = MEMORY[0x1E69E7CC0];
  v62 = sub_1CF4E40EC(MEMORY[0x1E69E7CC0]);
  v51 = sub_1CF4E42E8(v6);
  swift_beginAccess();
  v7 = *(a2 + 16);
  v52 = v6;
  v61 = v6;
  v8 = v7 + 64;
  v9 = 1 << *(v7 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v7 + 64);
  v47 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_providerDomainID;
  v48 = a2;
  v12 = (v9 + 63) >> 6;
  v45 = *MEMORY[0x1E6967280];
  v46 = *MEMORY[0x1E6967258];
  swift_bridgeObjectRetain_n();
  v13 = 0;
  v55 = v7;
  if (v11)
  {
    while (1)
    {
LABEL_11:
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v59[0] = *(*(v7 + 48) + ((v13 << 9) | (8 * v15)));
      swift_retain_n();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4BF0, &unk_1CFA189D0);
      sub_1CEFCCCEC(&unk_1EC4C4BF8, &qword_1EC4C4BF0, &unk_1CFA189D0);
      sub_1CF9E7898();
      sub_1CF0272BC(v60, v59);
      if (!swift_dynamicCast())
      {
        goto LABEL_6;
      }

      v16 = v57;
      v17 = a1[3];
      v18 = a1[4];
      v19 = __swift_project_boxed_opaque_existential_1(a1, v17);
      sub_1CF554B9C(*(a3 + 16), v19, v17, v18, v59);
      v20 = v59[0];
      if (v59[0])
      {
        v21 = *(v57 + 16);
        if ((*(v57 + 25) & 1) == 0)
        {
          v22 = *(v57 + 24);
          if (v22 != 2 || v21)
          {
            if (v22 != 2 || v21 != 1)
            {
              v59[0] = 0x2F73662F70665F5FLL;
              v59[1] = 0xE800000000000000;
              if (v22)
              {
                if (v22 == 1)
                {
                  v57 = 0x284449656C6966;
                  v58 = 0xE700000000000000;
                  goto LABEL_36;
                }

                if (v21)
                {
                  v36 = 0x6873617274;
                }

                else
                {
                  v36 = 1953460082;
                }

                if (v21)
                {
                  v37 = 0xE500000000000000;
                }

                else
                {
                  v37 = 0xE400000000000000;
                }
              }

              else
              {
                v57 = 0x284449636F64;
                v58 = 0xE600000000000000;
LABEL_36:
                v35 = sub_1CF9E7F98();
                MEMORY[0x1D3868CC0](v35);

                MEMORY[0x1D3868CC0](41, 0xE100000000000000);
                v36 = v57;
                v37 = v58;
              }

              MEMORY[0x1D3868CC0](v36, v37);

              v53 = sub_1CF9E6888();

              goto LABEL_21;
            }

            v21 = v45;
          }

          else
          {
            v21 = v46;
          }
        }

        v53 = v21;
LABEL_21:
        v23 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v25 = v24;
        if (v23 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v25 == v26)
        {
        }

        else
        {
          v42 = sub_1CF9E8048();

          if ((v42 & 1) == 0)
          {
            v27 = v20;
            v43 = v53;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v59[0] = v51;
            sub_1CF1D3AB0(v43, v27, isUniquelyReferenced_nonNull_native);

            v51 = v59[0];
          }
        }

        v44 = [objc_allocWithZone(MEMORY[0x1E69673A0]) initWithProviderDomainID:*(a4 + v47) itemIdentifier:v20];
        swift_beginAccess();
        v29 = *(v48 + 16);
        if (!*(v29 + 16) || (v30 = sub_1CF7BFED0(v16), (v31 & 1) == 0))
        {
          result = swift_endAccess();
          __break(1u);
          return result;
        }

        v32 = *(*(v29 + 56) + 8 * v30);
        swift_endAccess();

        sub_1CF8E35C8(v33, v44);

        sub_1CF027318(v60);

        MEMORY[0x1D3868FA0](v34);
        if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v38 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1CF9E6D88();
        }

        sub_1CF9E6DE8();
        v52 = v61;
        v7 = v55;
        if (!v11)
        {
          goto LABEL_7;
        }
      }

      else
      {

        v7 = v55;
LABEL_6:
        sub_1CF027318(v60);

        if (!v11)
        {
          goto LABEL_7;
        }
      }
    }
  }

  while (1)
  {
LABEL_7:
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_48:
      v40 = sub_1CF9E7818();

      if (v40)
      {
        goto LABEL_46;
      }

      goto LABEL_49;
    }

    if (v14 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_11;
    }
  }

  if (v52 >> 62)
  {
    goto LABEL_48;
  }

  v39 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v39)
  {
LABEL_46:
    a5(v62, v51, 0);
  }

LABEL_49:
  a5(0, 0, 0);
}

uint64_t sub_1CF841908()
{
  v0 = sub_1CF9E6118();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [Strong session];

    v8 = [v7 newFileProviderProxyWithTimeout:0 pid:180.0];
    swift_unknownObjectRelease();
    if (v8)
    {
      v9 = [v8 synchronousRemoteObjectProxy];
      sub_1CF9E7728();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4CA0, &unk_1CFA17E90);
      if (swift_dynamicCast())
      {
        v10 = v44;
        v42 = nullsub_1;
        v43 = 0;
        aBlock = MEMORY[0x1E69E9820];
        v39 = 1107296256;
        v40 = sub_1CF00A468;
        v41 = &block_descriptor_1780;
        v11 = _Block_copy(&aBlock);
        [v10 signalEnumeratorForMaterializedItemsWithCompletionHandler_];
        _Block_release(v11);
      }
    }
  }

  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = v12;
    v37 = v1;
    aBlock = 0;
    v39 = 0xE000000000000000;
    sub_1CF9E7948();
    v14 = [v13 providerDomainID];
    v15 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v17 = v16;

    aBlock = v15;
    v39 = v17;
    MEMORY[0x1D3868CC0](0xD000000000000017, 0x80000001CFA5D170);
    v18 = sub_1CF9E6888();

    v19 = [v18 fp_libnotifyPerUserNotificationName];

    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v20 = sub_1CF9E6978();

    notify_post((v20 + 32));

    v21 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v22 = v13;
    v23 = sub_1CF9E6108();
    v24 = sub_1CF9E7298();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      aBlock = v26;
      *v25 = 136315138;
      v27 = [v22 providerDomainID];
      v36 = v0;
      v28 = v27;
      v29 = [v27 fp_obfuscatedProviderDomainID];

      v30 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v35 = v4;
      v32 = v31;

      v33 = sub_1CEFD0DF0(v30, v32, &aBlock);

      *(v25 + 4) = v33;
      _os_log_impl(&dword_1CEFC7000, v23, v24, "sent notification %s.materializedSetChanged.fp_libnotifyPerUserNotificationName())", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x1D386CDC0](v26, -1, -1);
      MEMORY[0x1D386CDC0](v25, -1, -1);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return (*(v37 + 8))(v35, v36);
    }

    else
    {

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return (*(v37 + 8))(v4, v0);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }
}

uint64_t sub_1CF841DB8(uint64_t a1, id a2, void *a3)
{
  v6 = *(a1 + 16);
  if ([a2 isIndexingEnabled])
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a3;
    *(v7 + 24) = v6;
    v8 = *(v6 + qword_1EDEBBD08);
    v9 = swift_allocObject();
    v9[2] = v6;
    v9[3] = a2;
    v9[4] = sub_1CF8F94E8;
    v9[5] = v7;
    swift_retain_n();
    v10 = a3;
    v11 = v8;
    v12 = a2;

    sub_1CF01001C(0, "forceIndexAnchorFetch()", 23, 2, sub_1CF8F94F0, v9);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = Strong;
      v15 = [Strong isHidden];

      if (v15)
      {
        v16 = 3;
      }

      else
      {
        v16 = 1;
      }
    }

    else
    {
      v16 = 3;
    }

    v17 = *(v6 + qword_1EDEBBD08);
    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    *(v18 + 24) = v16;
    *(v18 + 32) = 1;
    v11 = v17;

    sub_1CF01001C(0, "updateIndexBarrier(anchor:)", 27, 2, sub_1CF902D90, v18);
  }
}

void sub_1CF841F90(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C46A0, &unk_1CFA16780);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v16 - v9;
  if ((*(a2 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_invalidated) & 1) == 0)
  {
    v11 = *(a3 + qword_1EDEBBD08);
    sub_1CEFCCBDC(a1, v10, &qword_1EC4C46A0, &unk_1CFA16780);
    v12 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = a3;
    sub_1CEFE55D0(v10, v13 + v12, &qword_1EC4C46A0, &unk_1CFA16780);
    *(v13 + ((v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
    v14 = v11;

    v15 = a2;
    sub_1CF01001C(0, "forceIndexAnchorFetch()", 23, 2, sub_1CF8F94FC, v13);
  }
}

void sub_1CF84213C(uint64_t a1, uint64_t a2, void *a3)
{
  v73 = a3;
  v81 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4AE0, qword_1CFA17B10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v71 = v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v74 = v70 - v8;
  v9 = sub_1CF9E6118();
  v75 = *(v9 - 8);
  v10 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v70[1] = v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v72 = v70 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C46A0, &unk_1CFA16780);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (v70 - v16);
  v18 = sub_1CF9E64A8();
  v19 = *(v18 - 8);
  v20 = v19[8];
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = (v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(a1 + qword_1EDEBBC50) = 0;
  v24 = *(a1 + 64);
  *v23 = v24;
  v25 = v19[13];
  v77 = *MEMORY[0x1E69E8020];
  v76 = v25;
  v25(v23, v21);
  v26 = v24;
  LOBYTE(v24) = sub_1CF9E64D8();
  v78 = v19[1];
  v78(v23, v18);
  if ((v24 & 1) == 0)
  {
    __break(1u);
    goto LABEL_34;
  }

  v80 = v17;
  v27 = *(a1 + 24);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB70, &unk_1CFA0A280);
  v28 = *(*(swift_dynamicCastClassUnconditional() + 32) + qword_1EDEBBB18);
  if (!v28)
  {
    goto LABEL_4;
  }

  v29 = v9;
  v30 = v28 + *(*v28 + 136);
  swift_beginAccess();
  v31 = *(v30 + 57);
  v9 = v29;
  if (v31)
  {
    goto LABEL_4;
  }

  *v23 = v26;
  v76(v23, v77, v18);
  v58 = v26;
  v59 = sub_1CF9E64D8();
  v78(v23, v18);
  if ((v59 & 1) == 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v60 = *(*(swift_dynamicCastClassUnconditional() + 32) + qword_1EDEBBB18);
  if (!v60)
  {
    return;
  }

  v61 = v60 + *(*v60 + 136);
  swift_beginAccess();
  if ((*(v61 + 57) & 1) != 0 || (*(v61 + 56) & 1) == 0 || *(v61 + 48))
  {
    return;
  }

LABEL_4:
  v32 = v80;
  sub_1CEFCCBDC(v81, v80, &qword_1EC4C46A0, &unk_1CFA16780);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v53 = *(v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C46A8, &qword_1CFA18050) + 48));
    v54 = v74;
    sub_1CEFE55D0(v32, v74, &unk_1EC4C4AE0, qword_1CFA17B10);
    if (v53 == 1)
    {
      v55 = v71;
      sub_1CEFCCBDC(v54, v71, &unk_1EC4C4AE0, qword_1CFA17B10);
      v56 = type metadata accessor for ChangeEnumeratorAnchor();
      if ((*(*(v56 - 8) + 48))(v55, 1, v56) == 1)
      {
        sub_1CEFCCC44(v55, &unk_1EC4C4AE0, qword_1CFA17B10);
        v57 = 0;
      }

      else
      {
        v57 = *(v55 + *(v56 + 20));
        sub_1CEFD5338(v55, type metadata accessor for ChangeEnumeratorAnchor);
      }

      v63 = v57;
      v62 = a1;
      sub_1CF80378C(v63, 0);
    }

    else
    {
      v62 = a1;
      sub_1CF80378C(0x7FFFFFFFFFFFFFFFLL, 0);
    }

    v64 = *(*(swift_dynamicCastClassUnconditional() + 32) + qword_1EDEBBB18);
    if (!v64)
    {
LABEL_29:
      sub_1CEFCCC44(v54, &unk_1EC4C4AE0, qword_1CFA17B10);
      return;
    }

    v65 = *(v62 + qword_1EDEBBDB0);
    v66 = *(*&v64[qword_1EDEBB780] + 64);
    *v23 = v66;
    v76(v23, v77, v18);

    v67 = v65;
    v68 = v66;
    LOBYTE(v65) = sub_1CF9E64D8();
    v78(v23, v18);
    if (v65)
    {
      v69 = *(*v64 + 136);
      swift_beginAccess();
      if (v64[v69] != 1)
      {
        v64[v69] = 1;
        v64[72] = 1;
        sub_1CF802820(v67, 2u);
      }

      goto LABEL_29;
    }

LABEL_35:
    __break(1u);
    return;
  }

  v33 = *v32;
  v34 = fpfs_current_or_default_log();
  v35 = v72;
  sub_1CF9E6128();
  v36 = v33;
  v37 = sub_1CF9E6108();
  v38 = sub_1CF9E72A8();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v39 = 138412290;
    v41 = v33;
    v42 = _swift_stdlib_bridgeErrorToNSError();
    *(v39 + 4) = v42;
    *v40 = v42;
    _os_log_impl(&dword_1CEFC7000, v37, v38, "Cannot fetch current anchor, retrying: %@", v39, 0xCu);
    sub_1CEFCCC44(v40, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v40, -1, -1);
    MEMORY[0x1D386CDC0](v39, -1, -1);
  }

  (*(v75 + 8))(v35, v9);
  v43 = v73;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v45 = Strong;
    v46 = [Strong indexer];
    if (v46)
    {
      v47 = v46;
      type metadata accessor for FPFSIndexer();
      v48 = swift_dynamicCastClass();
      if (v48)
      {
        v49 = v48;
        v50 = swift_allocObject();
        *(v50 + 16) = v49;
        *(v50 + 24) = v43;
        v51 = v47;
        v52 = v43;
        sub_1CEFD4024("forceIndexAnchorFetch()", 23, 2, nullsub_1, 0, sub_1CF9034BC, v50);

        return;
      }
    }
  }

  else
  {
  }
}

uint64_t sub_1CF842B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a2;
  v6 = sub_1CF9E64A8();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = (&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(a1 + 64);
  *v11 = v12;
  v13 = *MEMORY[0x1E69E8020];
  v30 = v7[13];
  v30(v11, v13, v6, v9);
  v14 = v12;
  v15 = sub_1CF9E64D8();
  v16 = v7[1];
  result = v16(v11, v6);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v29 = v14;
  v31 = a4;
  v18 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB70, &unk_1CFA0A280);
  result = swift_dynamicCastClassUnconditional();
  v19 = *(*(result + 32) + qword_1EDEBBB18);
  v20 = a1;
  if (!v19)
  {
    goto LABEL_4;
  }

  v21 = v19 + *(*v19 + 136);
  result = swift_beginAccess();
  v22 = *(v21 + 57);
  v20 = a1;
  if (v22)
  {
    goto LABEL_4;
  }

  v24 = v29;
  v23 = v30;
  *v11 = v29;
  v23(v11, v13, v6);
  v25 = v24;
  LOBYTE(v24) = sub_1CF9E64D8();
  result = v16(v11, v6);
  if ((v24 & 1) == 0)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  result = swift_dynamicCastClassUnconditional();
  v26 = *(*(result + 32) + qword_1EDEBBB18);
  if (v26)
  {
    v20 = a1;
    v27 = v26 + *(*v26 + 136);
    result = swift_beginAccess();
    if ((*(v27 + 57) & 1) == 0 && (*(v27 + 56) & 1) != 0 && !*(v27 + 48))
    {
LABEL_4:
      if ((*(v20 + qword_1EDEBBC50) & 1) == 0)
      {
        *(v20 + qword_1EDEBBC50) = 1;
        return sub_1CF74921C(v32, v31);
      }
    }
  }

  return result;
}

void sub_1CF842DFC(void *a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (([a1 isHidden] & 1) == 0)
    {
      goto LABEL_7;
    }

    LOBYTE(v6) = 0;
    goto LABEL_6;
  }

  v5 = Strong;
  v6 = [Strong isHidden];

  if (v6 != [a1 isHidden])
  {
LABEL_6:
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    sub_1CEFD4024("didChangeDomainConfiguration(_:)", 32, 2, nullsub_1, 0, sub_1CF8EB7FC, v7);
  }

LABEL_7:
  v8 = swift_unknownObjectWeakLoadStrong();
  if (!v8)
  {
    [a1 supportsSyncingTrash];
    goto LABEL_11;
  }

  v9 = v8;
  v10 = [v8 nsDomain];

  LODWORD(v9) = [v10 supportsSyncingTrash];
  if ([a1 supportsSyncingTrash] != v9)
  {
LABEL_11:
    v11 = swift_allocObject();
    *(v11 + 16) = v2;
    v12 = v2;
    sub_1CEFD4024("didChangeDomainConfiguration(_:)", 32, 2, nullsub_1, 0, sub_1CF8EB804, v11);
  }

  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    v15 = [v13 nsDomain];

    v16 = sub_1CF827720();
    v17 = sub_1CF827720();
    if ((v16 & 0x100) != 0)
    {
      if ((v17 & 0x100) != 0)
      {
        return;
      }
    }

    else if ((v17 & 0x100) == 0 && v16 == v17)
    {
      return;
    }
  }

  else if ((sub_1CF827720() & 0x100) != 0)
  {
    return;
  }

  sub_1CF82C388();
}

uint64_t sub_1CF843064(uint64_t a1, char a2)
{
  v3 = *(a1 + 16);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a2;

  sub_1CF7AAF88("didChangeDomainConfiguration(_:)", 32, 2, 2, nullsub_1, 0, sub_1CF9020EC, v4);
}

void sub_1CF843114(void *a1, unsigned __int8 *obj, char a3)
{
  v6 = objc_sync_enter(obj);
  if (v6)
  {
    MEMORY[0x1EEE9AC00](v6);
    v15 = obj;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v14, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v7 = obj[qword_1EDEADAA8];
  v8 = objc_sync_exit(obj);
  if (v8)
  {
    MEMORY[0x1EEE9AC00](v8);
    v15 = obj;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v14, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  if (v7)
  {
    sub_1CF807404();
  }

  if (a3)
  {
    if (qword_1EDEA5178 != -1)
    {
      swift_once();
    }

    v9 = &qword_1EDEBB778;
  }

  else
  {
    if (qword_1EDEAC5D0 != -1)
    {
      swift_once();
    }

    v9 = &qword_1EDEBBAB8;
  }

  v10 = *v9;
  sub_1CF8E9878(v10);

  if (v7)
  {
    v11 = a1[3];
    v12 = a1[4];
    v13 = __swift_project_boxed_opaque_existential_1(a1, v11);
    sub_1CF5A1A2C(v13, v11, v12);
  }
}

uint64_t sub_1CF8432D8(uint64_t a1)
{
  v2 = sub_1CF9E6118();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = *(*(v7 + 40) + 16);
  type metadata accessor for FPFileTree();
  v9 = *(swift_dynamicCastClassUnconditional() + 136) + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_ioContext;
  v10 = *(v9 + 8);
  v45 = *v9;
  v11 = *(v9 + 16);
  v12 = *(v9 + 20);
  v43 = *(v9 + 24);
  v44 = v11;
  v42 = *(v9 + 25);
  LODWORD(v9) = *(v9 + 26);
  HIDWORD(v40) = v12;
  v41 = v9;
  Strong = swift_unknownObjectWeakLoadStrong();

  v16 = 1;
  if (Strong)
  {
    v14 = [Strong nsDomain];

    v15 = [v14 supportsSyncingTrash];
    if (v15)
    {
      v16 = 0;
    }
  }

  v17 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v18 = sub_1CF9E6108();
  v19 = sub_1CF9E7298();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 67109376;
    *(v20 + 4) = HIDWORD(v40);

    *(v20 + 8) = 1024;
    *(v20 + 10) = v16;
    _os_log_impl(&dword_1CEFC7000, v18, v19, "Updating trash syncing %u -> %u", v20, 0xEu);
    MEMORY[0x1D386CDC0](v20, -1, -1);
  }

  else
  {
  }

  (*(v3 + 8))(v6, v2);
  v21 = *(*(v7 + 40) + 16);
  v22 = *(swift_dynamicCastClassUnconditional() + 136) + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_ioContext;
  v23 = *(v22 + 8);
  *v22 = v45;
  *(v22 + 8) = v10;
  v24 = v43;
  *(v22 + 16) = v44;
  *(v22 + 20) = v16;
  *(v22 + 24) = v24;
  v25 = v41;
  *(v22 + 25) = v42;
  *(v22 + 26) = v25;

  v26 = *(*(v7 + 32) + 16);
  type metadata accessor for VFSFileTree(0);
  v27 = swift_dynamicCastClassUnconditional();
  v28 = *(v27 + 160);
  v29 = *(v27 + 136) + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_ioContext;
  v30 = *v29;
  v31 = *(v29 + 8);
  v32 = *(v29 + 16);
  v33 = *(v29 + 24);
  v34 = *(v29 + 25);
  v35 = *(v29 + 26);
  if (v34)
  {
    v36 = 256;
  }

  else
  {
    v36 = 0;
  }

  v37 = v36 | v33;
  if (v35)
  {
    v38 = 0x10000;
  }

  else
  {
    v38 = 0;
  }

  sub_1CF36AD8C(v30, v31, v32, v37 | v38);
}

uint64_t sub_1CF8436C0(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1CF8EB80C;
  *(v6 + 24) = v4;
  swift_retain_n();

  sub_1CEFD4024("queryDiskImportSchedulerLabel(completionHandler:)", 49, 2, sub_1CF8EB848, v6, sub_1CF8EB840, v5);
}

uint64_t sub_1CF8437D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 16);
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = v5;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1CF902EC4;
  *(v8 + 24) = v6;
  swift_retain_n();

  sub_1CF7AAF88("queryDiskImportSchedulerLabel(completionHandler:)", 49, 2, 2, sub_1CF9020E4, v8, sub_1CF9020C4, v7);
}

uint64_t sub_1CF8438FC(int a1, void (*a2)(uint64_t, uint64_t, void), int a3, char *obj)
{
  v6 = objc_sync_enter(obj);
  if (v6)
  {
    MEMORY[0x1EEE9AC00](v6);
    v15 = obj;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v14, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v7 = *&obj[qword_1EDEADB40];
  v8 = objc_sync_exit(obj);
  if (v8)
  {
    MEMORY[0x1EEE9AC00](v8);
    v15 = obj;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v14, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v9 = [v7 label];

  v10 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v12 = v11;

  a2(v10, v12, 0);
}

void sub_1CF843BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = sub_1CF9E6888();
    if (a3)
    {
LABEL_3:
      v7 = sub_1CF9E57E8();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

id FPDDomainFPFSBackend.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FPDDomainFPFSBackend.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FPDDomainFPFSBackend(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1CF843FD4()
{
  v0 = objc_allocWithZone(MEMORY[0x1E698E490]);
  v1 = sub_1CF9E6888();
  v2 = [v0 initWithIdentifier_];

  v3 = v2;
  [v3 setPriority_];
  [v3 setInterval_];
  [v3 setRequiresNetworkConnectivity_];
  [v3 setRequiresExternalPower_];
  [v3 setRequiresUserInactivity_];
  [v3 setResourceIntensive_];
  [v3 setResources_];
  v4 = [objc_allocWithZone(FPDSharedSystemScheduler) initWithTaskRequest:v3 options:1];

  qword_1EDEBB830 = v4;
}

Swift::Void __swiftcall FPDDomainFPFSBackend.sharedSchedulerCanRun(_:)(FPDSharedSystemScheduler *a1)
{
  v3 = [(FPDSharedSystemScheduler *)a1 label];
  v4 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v6 = v5;
  if (qword_1EDEA5DA0 != -1)
  {
    swift_once();
  }

  v7 = [qword_1EDEBB830 label];
  v8 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v10 = v9;

  if (v8 == v4 && v10 == v6)
  {
  }

  else
  {
    v12 = sub_1CF9E8048();

    if ((v12 & 1) == 0)
    {
      sub_1CF515660("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/fpfs/FPDDomainFPFSBackend.swift", 94, 2, 1993, a1);
    }
  }

  v13 = *&v1[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_periodicFPCKRunner];
  if (v13)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = v1;
    swift_retain_n();
    v15 = v1;
    sub_1CEFD4024("sharedSchedulerCanRun(_:)", 25, 2, nullsub_1, 0, sub_1CF8F05E8, v14);
  }
}

uint64_t sub_1CF84431C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 16);
  v7 = objc_sync_enter(v6);
  if (v7)
  {
    MEMORY[0x1EEE9AC00](v7);
    v16 = v6;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v15, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v8 = *(v6 + qword_1EDEADAA8);
  result = objc_sync_exit(v6);
  if (result)
  {
    MEMORY[0x1EEE9AC00](result);
    v16 = v6;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v15, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  if ((v8 & 1) == 0 && *(a2 + 97) == 1)
  {
    v10 = sub_1CF8071DC();
    v12 = v11;
    v13 = swift_allocObject();
    *(v13 + 16) = a2;
    *(v13 + 24) = a3;
    *(v13 + 32) = v10;
    *(v13 + 40) = v12 & 1;
    *(v13 + 48) = a1;

    v14 = a3;

    sub_1CF7AAF88("sharedSchedulerCanRun(_:)", 25, 2, 2, nullsub_1, 0, sub_1CF901F24, v13);
  }

  return result;
}

uint64_t sub_1CF844504(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5, uint64_t a6)
{
  LODWORD(v38) = a5;
  v37 = a4;
  v10 = sub_1CF9E63A8();
  v43 = *(v10 - 8);
  v11 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v41 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1CF9E6448();
  v40 = *(v42 - 8);
  v13 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v39 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1CEFCE64C();
  if (v6)
  {

    v16 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v16 = v15;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v19 = [Strong volume];

    v20 = [v19 role];
  }

  else
  {
    v20 = 0;
  }

  v21 = swift_allocObject();
  *(v21 + 16) = a3;
  v22 = swift_allocObject();
  *(v22 + 16) = a3;
  *(v22 + 24) = a6;
  if (*(a2 + 97) == 1)
  {
    v36 = v10;
    v23 = *(a2 + 120);
    *(a2 + 112) = sub_1CF844B58;
    *(a2 + 120) = 0;
    v24 = a3;

    if (!*(a2 + 96))
    {
      *(a2 + 96) = 1;
      if (qword_1EDEA6A18 != -1)
      {
        swift_once();
      }

      v35[1] = qword_1EDEBB898;
      v30 = swift_allocObject();
      *(v30 + 16) = a2;
      *(v30 + 24) = v16;
      *(v30 + 32) = v20;
      *(v30 + 40) = sub_1CF844B58;
      *(v30 + 48) = 0;
      *(v30 + 56) = v37;
      *(v30 + 64) = v38 & 1;
      *(v30 + 72) = sub_1CF901F4C;
      *(v30 + 80) = v21;
      *(v30 + 88) = sub_1CF901F54;
      *(v30 + 96) = v22;
      v48 = sub_1CF901F60;
      v49 = v30;
      aBlock = MEMORY[0x1E69E9820];
      v45 = 1107296256;
      v46 = sub_1CEFCA444;
      v47 = &block_descriptor_5999;
      v38 = _Block_copy(&aBlock);

      v31 = v39;
      sub_1CF9E63F8();
      v50 = MEMORY[0x1E69E7CC0];
      sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
      sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
      v32 = v41;
      v33 = v36;
      sub_1CF9E77B8();
      v34 = v38;
      MEMORY[0x1D3869630](0, v31, v32, v38);
      _Block_release(v34);

      (*(v43 + 8))(v32, v33);
      (*(v40 + 8))(v31, v42);
    }

    if (*(a2 + 96) != 2)
    {
      goto LABEL_16;
    }

    if (qword_1EC4BCD70 != -1)
    {
      swift_once();
    }

    sub_1CF9E74B8();
    *(a2 + 96) = 1;
    a3 = *(a2 + 16);
    if (!a3)
    {
      goto LABEL_17;
    }

    v25 = a3[7];
    v26 = swift_allocObject();
    *(v26 + 16) = sub_1CF901FA8;
    *(v26 + 24) = a3;
    v48 = sub_1CF1C0B54;
    v49 = v26;
    aBlock = MEMORY[0x1E69E9820];
    v45 = 1107296256;
    v46 = sub_1CEFFD02C;
    v47 = &block_descriptor_6006;
    v27 = _Block_copy(&aBlock);
    swift_retain_n();

    dispatch_sync(v25, v27);
    _Block_release(v27);
    LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

    if ((v25 & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  v29 = a3;

LABEL_16:

LABEL_17:
}

id sub_1CF844B58()
{
  if (qword_1EDEA5DA0 != -1)
  {
    swift_once();
  }

  return [qword_1EDEBB830 shouldPause];
}

id sub_1CF844BB0(uint64_t a1)
{
  if (qword_1EDEA5DA0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDEBB830;

  return [v2 markWatcherDone_];
}

uint64_t sub_1CF844C24(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4 & 1;
  *(v12 + 48) = a6;
  sub_1CF902038(a1, a2, a3, a4 & 1);

  sub_1CF01001C(0, "sharedSchedulerCanRun(_:)", 25, 2, sub_1CF902000, v12);
}

void sub_1CF844D70(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 iCDPackageExtensions];
  v4 = sub_1CF9E6D48();

  *a2 = v4;
}

uint64_t sub_1CF844DCC()
{
  v0 = sub_1CF9E6118();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v6 = sub_1CF9E6108();
  v7 = sub_1CF9E7298();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1CEFC7000, v6, v7, "An update of the package extension list was detected, reloading...", v8, 2u);
    MEMORY[0x1D386CDC0](v8, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  return fpfs_icd_package_extension_list_reload();
}

uint64_t FPDDomainFPFSBackend.reindexAllItems(with:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a1;
  swift_retain_n();
  v9 = v3;
  sub_1CEFD4024("reindexAllItems(with:completionHandler:)", 40, 2, sub_1CF74F980, v7, sub_1CF8F05F0, v8);
}

void sub_1CF844FF8(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v9 = Strong, v10 = [Strong indexer], v9, v10))
  {
    aBlock[4] = a3;
    aBlock[5] = a4;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CF00A468;
    aBlock[3] = &block_descriptor_5982;
    v11 = _Block_copy(aBlock);

    [v10 signalNeedsReindexFromScratchWithDropReason:a5 completionHandler:v11];
    _Block_release(v11);
  }

  else
  {
    v12 = FPNotSupportedError();
    a3();
  }
}

uint64_t FPDDomainFPFSBackend.reindexItems(with:identifiers:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v9 = swift_allocObject();
  v9[2] = v4;
  v9[3] = a3;
  v9[4] = a4;
  v9[5] = a2;
  swift_retain_n();
  v10 = v4;

  sub_1CEFD4024("reindexItems(with:identifiers:completionHandler:)", 49, 2, sub_1CF90324C, v8, sub_1CF8F05FC, v9);
}

void sub_1CF845378(uint64_t a1, void *a2, void (*a3)(void), void *a4, uint64_t a5)
{
  v135 = a3;
  v136 = a4;
  v123 = a1;
  v7 = sub_1CF9E63D8();
  v8 = *(v7 - 8);
  v9 = v8[8];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v114 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v114 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v114 - v17;
  v19 = sub_1CF9E6068();
  v131 = *(v19 - 8);
  v132 = v19;
  v20 = *(v131 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v127 = &v114 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v125 = &v114 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v134 = &v114 - v26;
  v126 = type metadata accessor for Signpost(0);
  v128 = *(v126 - 8);
  v27 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v126);
  v29 = &v114 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v129 = v32;
  v130 = &v114 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v114 - v34;
  v124 = a2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v37 = Strong;
    v38 = [Strong indexer];

    if (v38)
    {
      v119 = v15;
      v39 = [v38 state];
      v40 = *(a5 + 16);
      if (v40 >> 31)
      {
        __break(1u);
      }

      else
      {
        v41 = v39;
        v114 = v11;
        v115 = v8;
        v116 = v7;
        [v39 addToFileRedonationRequests_];

        v42 = MEMORY[0x1E69E7CC0];
        v133 = v18;
        v120 = v35;
        v118 = v29;
        if (v40)
        {
          *&aBlock = MEMORY[0x1E69E7CC0];
          sub_1CF680D2C(0, v40, 0);
          v42 = aBlock;
          v43 = objc_opt_self();
          v44 = (a5 + 40);
          do
          {
            v45 = *(v44 - 1);
            v46 = *v44;

            v47 = sub_1CF9E6888();
            v48 = [v43 getFPIdentifierFromCoreSpotlightIdentifier_];

            *&aBlock = v42;
            v50 = *(v42 + 16);
            v49 = *(v42 + 24);
            if (v50 >= v49 >> 1)
            {
              sub_1CF680D2C((v49 > 1), v50 + 1, 1);
              v42 = aBlock;
            }

            *(v42 + 16) = v50 + 1;
            *(v42 + 8 * v50 + 32) = v48;
            v44 += 2;
            --v40;
          }

          while (v40);
          v35 = v120;
        }

        v52 = v123;
        v53 = *(v123 + 16);
        v54 = swift_allocObject();
        *(v54 + 2) = v42;
        *(v54 + 3) = v52;
        v55 = v124;
        *(v54 + 4) = v124;
        *(v54 + 5) = v38;
        v56 = v135;
        v122 = v54;
        v57 = v136;
        *(v54 + 6) = v135;
        *(v54 + 7) = v57;
        v58 = swift_allocObject();
        *(v58 + 16) = v56;
        *(v58 + 24) = v57;
        v135 = v58;
        v121 = v53;
        v59 = *(v53 + qword_1EDEBBC38);
        swift_retain_n();

        v60 = v55;
        v38 = v38;
        v8 = fpfs_adopt_log();
        if (qword_1EDEAE980 == -1)
        {
          goto LABEL_14;
        }
      }

      swift_once();
LABEL_14:
      v61 = qword_1EDEBBE40;
      v63 = v131;
      v62 = v132;
      v64 = v134;
      (*(v131 + 56))(v134, 1, 1, v132);
      strcpy(&aBlock, "async batch ");
      BYTE13(aBlock) = 0;
      HIWORD(aBlock) = -5120;
      v65 = sub_1CF9E7988();
      MEMORY[0x1D3868CC0](v65);

      v117 = *(&aBlock + 1);
      v123 = aBlock;
      v66 = v64;
      v67 = v125;
      sub_1CEFCCBDC(v66, v125, &unk_1EC4BED20, &unk_1CFA00700);
      v68 = *(v63 + 48);
      v69 = v68(v67, 1, v62);
      v136 = v8;
      v124 = v38;
      if (v69 == 1)
      {
        v70 = v61;
        v71 = v127;
        sub_1CF9E6048();
        v72 = v68(v67, 1, v62) == 1;
        v73 = v67;
        v74 = v133;
        if (!v72)
        {
          sub_1CEFCCC44(v73, &unk_1EC4BED20, &unk_1CFA00700);
        }
      }

      else
      {
        v71 = v127;
        (*(v63 + 32))(v127, v67, v62);
        v74 = v133;
      }

      (*(v63 + 16))(v35, v71, v62);
      v75 = v126;
      *&v35[*(v126 + 20)] = v61;
      v76 = &v35[*(v75 + 24)];
      *v76 = "DB queue wait";
      *(v76 + 1) = 13;
      v76[16] = 2;
      v77 = v61;
      sub_1CF9E7468();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v78 = swift_allocObject();
      *(v78 + 16) = xmmword_1CF9FA450;
      *(v78 + 56) = MEMORY[0x1E69E6158];
      *(v78 + 64) = sub_1CEFD51C4();
      v79 = v117;
      *(v78 + 32) = v123;
      *(v78 + 40) = v79;
      sub_1CF9E6028();

      (*(v63 + 8))(v71, v62);
      sub_1CEFCCC44(v134, &unk_1EC4BED20, &unk_1CFA00700);
      v131 = *(v121 + 168);
      v134 = *(v121 + 64);
      v80 = sub_1CF9E6448();
      v126 = *(v80 - 8);
      v127 = v80;
      (*(v126 + 56))(v74, 1, 1, v80);
      v81 = v130;
      sub_1CEFDA34C(v35, v130, type metadata accessor for Signpost);
      v82 = (*(v128 + 80) + 16) & ~*(v128 + 80);
      v83 = (v129 + v82 + 7) & 0xFFFFFFFFFFFFFFF8;
      v84 = swift_allocObject();
      sub_1CEFDA0C4(v81, v84 + v82, type metadata accessor for Signpost);
      v85 = (v84 + v83);
      v132 = sub_1CF5543A4;
      v86 = v135;
      *v85 = sub_1CF5543A4;
      v85[1] = v86;
      v87 = v118;
      sub_1CEFDA34C(v35, v118, type metadata accessor for Signpost);
      v88 = (v83 + 23) & 0xFFFFFFFFFFFFFFF8;
      v89 = (v88 + 15) & 0xFFFFFFFFFFFFFFF8;
      v90 = (v89 + 25) & 0xFFFFFFFFFFFFFFF8;
      v91 = swift_allocObject();
      sub_1CEFDA0C4(v87, v91 + v82, type metadata accessor for Signpost);
      v92 = (v91 + v83);
      *v92 = sub_1CF045408;
      v92[1] = 0;
      *(v91 + v88) = v121;
      v93 = v91 + v89;
      v94 = v126;
      *v93 = "reindexItems(with:identifiers:completionHandler:)";
      *(v93 + 8) = 49;
      *(v93 + 16) = 2;
      v95 = (v91 + v90);
      v96 = v135;
      *v95 = v132;
      v95[1] = v96;
      v97 = v91;
      v98 = (v91 + ((v90 + 23) & 0xFFFFFFFFFFFFFFF8));
      v99 = v122;
      *v98 = sub_1CF901E04;
      v98[1] = v99;
      v100 = swift_allocObject();
      v100[2] = sub_1CF903308;
      v100[3] = v84;
      v101 = v131;
      v100[4] = v131;
      swift_retain_n();

      v132 = v84;
      v102 = v127;

      v103 = fpfs_current_log();
      v104 = *(v101 + 16);
      v105 = v119;
      sub_1CEFCCBDC(v133, v119, &unk_1EC4BE370, qword_1CFA01B30);
      if ((*(v94 + 48))(v105, 1, v102) == 1)
      {
        sub_1CEFCCC44(v105, &unk_1EC4BE370, qword_1CFA01B30);
        v106 = QOS_CLASS_UNSPECIFIED;
      }

      else
      {
        v107 = v114;
        sub_1CF9E6438();
        (*(v94 + 8))(v105, v102);
        v106 = sub_1CF9E63C8();
        (v115[1])(v107, v116);
      }

      v108 = swift_allocObject();
      v108[2] = v103;
      v108[3] = sub_1CF4858EC;
      v108[4] = v97;
      v140 = sub_1CF2BA17C;
      v141 = v108;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v138 = sub_1CEFCA444;
      v139 = &block_descriptor_5904;
      v109 = _Block_copy(&aBlock);
      v110 = v103;

      v140 = sub_1CF2BA180;
      v141 = v100;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v138 = sub_1CEFCA444;
      v139 = &block_descriptor_5907;
      v111 = _Block_copy(&aBlock);

      fp_task_tracker_async_and_qos(v104, v134, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v106, v109, v111);
      _Block_release(v111);
      _Block_release(v109);

      sub_1CEFCCC44(v133, &unk_1EC4BE370, qword_1CFA01B30);
      sub_1CEFD5338(v120, type metadata accessor for Signpost);
      v112 = v136;
      v113 = fpfs_adopt_log();

      return;
    }
  }

  v134 = FPNotSupportedError();
  v135();
  v51 = v134;
}

void sub_1CF8460A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v207 = a5;
  v208 = a7;
  v205 = a4;
  v206 = a6;
  v222 = a1;
  v9 = sub_1CF9E63A8();
  v213 = *(v9 - 8);
  v214 = v9;
  v10 = *(v213 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v212 = &v189 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CF9E6448();
  v210 = *(v12 - 8);
  v211 = v12;
  v13 = *(v210 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v209 = &v189 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = sub_1CF9E6118();
  v15 = *(v220 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v220);
  v224 = &v189 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v201 = &v189 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBB0, &qword_1CF9FCB90);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v216 = &v189 - v22;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v23 = *(v204 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v204);
  v203 = &v189 - v25;
  v215 = dispatch_group_create();
  v27 = *(a2 + 16);
  if (v27)
  {
    v28 = (a2 + 32);
    v202 = (v23 + 48);
    v29 = *(a3 + 16);
    v219 = (v15 + 8);
    v199 = "nFS";
    v200 = a3;
    v198 = 0x80000001CFA55BB0;
    *&v26 = 138412290;
    v218 = v26;
    *&v26 = 136315906;
    v197 = v26;
    v223 = v29;
    while (1)
    {
      v226 = v28;
      v30 = *v28;
      v31 = v29[10];
      v33 = v222[3];
      v32 = v222[4];
      v34 = __swift_project_boxed_opaque_existential_1(v222, v33);
      v225 = v30;
      if ((v31 & 0x40000) != 0)
      {
        break;
      }

      v35 = v30;
      v36 = v29[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB70, &unk_1CFA0A280);
      v37 = *(swift_dynamicCastClassUnconditional() + 24);
      v234[0] = v35;
      v38 = v35;

      v39 = v227;
      sub_1CF3761C8(v234, v34, v33, v32);
      v227 = v39;
      if (v39)
      {
        goto LABEL_8;
      }

LABEL_14:

      v29 = v223;
LABEL_5:
      v28 = v226 + 1;
      if (!--v27)
      {
        goto LABEL_63;
      }
    }

    v221 = v27;
    v41 = v29[5];
    v234[0] = v30;
    v42 = *(*v41 + 352);
    v43 = v30;
    v44 = *(v32 + 8);
    v45 = v43;

    v46 = v227;
    v47 = v42(v234, v34, v33, v44);
    v227 = v46;
    if (v46)
    {
      goto LABEL_10;
    }

    v55 = v47;
    v217 = v45;

    v56 = v223;
    if (v55 == 1003 || v55 == 502 || v55 == 501 && (fpfs_supports_indexAllRemoteItems() & 1) == 0)
    {
      v59 = v222[3];
      v58 = v222[4];
      v60 = __swift_project_boxed_opaque_existential_1(v222, v59);
      v61 = v56[5];
      v57 = v217;
      v234[0] = v217;
      v62 = *(*v61 + 240);
      v63 = *(v58 + 8);

      v64 = v216;
      v65 = v60;
      v66 = v227;
      v62(v234, 1, v65, v59, v63);
      v227 = v66;
      if (v66)
      {
LABEL_10:

        v40 = v227;
        v227 = 0;
        v27 = v221;
        goto LABEL_11;
      }

      v67 = v204;
      if ((*v202)(v64, 1, v204) == 1)
      {
        sub_1CEFCCC44(v64, &unk_1EC4BFBB0, &qword_1CF9FCB90);
        v27 = v221;
      }

      else
      {
        v68 = v203;
        sub_1CEFE55D0(v64, v203, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
        v69 = *(v68 + 80);
        v195 = *(v68 + 88);
        v196 = v69;
        v70 = v68 + *(v67 + 48);
        v71 = type metadata accessor for ItemMetadata();
        v72 = *(v70 + *(v71 + 104));
        v73 = *(v71 + 120);
        v74 = v223[3];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB70, &unk_1CFA0A280);
        v75 = swift_dynamicCastClass();
        v27 = v221;
        if (!v75)
        {
          goto LABEL_33;
        }

        if (!*(*(v75 + 32) + qword_1EDEBBB18))
        {
          goto LABEL_33;
        }

        v76 = sub_1CF3A8798(v196, v195, v70 + v73);

        if ((v76 & 1) == 0)
        {
          goto LABEL_33;
        }

        if ((*(v223 + 82) & 8) != 0 || (v77 = v223[3], (v78 = swift_dynamicCastClass()) == 0) || (v79 = *(*(v78 + 32) + qword_1EDEBBB18)) == 0 || v72 >= 1 && *(v79 + qword_1EDEBB7B0) >= v72)
        {
          v80 = v57;
          v81 = v222[3];
          v82 = v222[4];
          v83 = __swift_project_boxed_opaque_existential_1(v222, v81);
          v84 = v223[2];
          v233 = v80;
          v85 = *(v82 + 8);

          v86 = v83;
          v87 = v227;
          sub_1CF68E230(&v233, v86, v81, v85, v234);
          v227 = v87;
          if (v87)
          {
            sub_1CEFCCC44(v203, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
LABEL_8:

            v40 = v227;
            v227 = 0;
LABEL_11:
            v48 = fpfs_current_or_default_log();
            sub_1CF9E6128();
            v49 = v40;
            v50 = sub_1CF9E6108();
            v51 = sub_1CF9E72A8();

            if (os_log_type_enabled(v50, v51))
            {
              v52 = swift_slowAlloc();
              v53 = swift_slowAlloc();
              *v52 = v218;
              swift_getErrorValue();
              v54 = Error.prettyDescription.getter(v234[66]);
              *(v52 + 4) = v54;
              *v53 = v54;
              _os_log_impl(&dword_1CEFC7000, v50, v51, "Error updating last_change for item during reindex: %@", v52, 0xCu);
              sub_1CEFCCC44(v53, &qword_1EC4BE350, &unk_1CF9FC3B0);
              MEMORY[0x1D386CDC0](v53, -1, -1);
              MEMORY[0x1D386CDC0](v52, -1, -1);
            }

            else
            {
            }

            v29 = v223;
            (*v219)(v224, v220);
            goto LABEL_5;
          }

          memcpy(v231, v234, sizeof(v231));
          memcpy(v232, v234, sizeof(v232));
          if (sub_1CF08B99C(v232) == 1)
          {
            sub_1CEFCCC44(v203, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
            v57 = v217;
            goto LABEL_35;
          }

          v57 = v217;
          if ((v232[64] & 2) == 0)
          {
            v225 = swift_allocObject();
            *(v225 + 16) = v57;
            v97 = v57;
            dispatch_group_enter(v215);
            _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v98 = v97;
            v99 = sub_1CF4C4044();

            if ((v99 & 1) == 0)
            {
              goto LABEL_44;
            }

            v100 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v102 = sub_1CF025150(0x80007uLL, v100, v101);
            v103 = v98;
            v105 = v104;
            v107 = v106;
            v109 = v108;

            v110 = v105;
            v98 = v103;
            v111 = MEMORY[0x1D3868C10](v102, v110, v107, v109);
            v113 = v112;

            VFSItemID.init(parsing:)(v111, v113, &v228);
            v114 = v229;
            if (v229 == 255)
            {
LABEL_44:
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4BF0, &unk_1CFA189D0);
              v116 = swift_allocObject();
              *(v116 + 42) = 0;
              *(v116 + 32) = v97;
              *(v116 + 40) = 256;
              *(v116 + 16) = v97;
              *(v116 + 24) = 256;
              v117 = v98;
            }

            else
            {

              v115 = v228;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4BF0, &unk_1CFA189D0);
              v116 = swift_allocObject();
              *(v116 + 32) = v115;
              *(v116 + 40) = v114;
              *(v116 + 41) = 0;
              *(v116 + 16) = v115;
              *(v116 + 24) = v114;
              *(v116 + 25) = 0;
            }

            v118 = v225 | 0xA000000000000006;
            v119 = swift_allocObject();
            v120 = v215;
            v121 = v200;
            v119[2] = v215;
            v119[3] = v121;
            v119[4] = v98;
            v122 = objc_allocWithZone(MEMORY[0x1E696AE38]);
            v123 = v98;
            v124 = v118;
            v195 = v123;
            v125 = v120;

            v194 = [v122 init];
            v126 = swift_allocObject();
            v126[2] = sub_1CF901E68;
            v126[3] = v119;
            v217 = v126;
            v126[4] = v118;
            v196 = v119;
            swift_retain_n();
            swift_retain_n();
            v127 = fpfs_current_or_default_log();
            v128 = v201;
            sub_1CF9E6128();
            swift_retain_n();

            v129 = sub_1CF9E6108();
            v130 = sub_1CF9E7298();
            v131 = os_log_type_enabled(v129, v130);
            v193 = v118;
            if (v131)
            {
              v191 = v130;
              v192 = v129;
              v132 = swift_slowAlloc();
              v190 = swift_slowAlloc();
              v230[0] = v190;
              *v132 = v197;
              v133 = swift_beginAccess();
              v135 = *(v116 + 32);
              v136 = *(v116 + 40);
              if (*(v116 + 41))
              {
                v137 = v135;
                v138 = NSFileProviderItemIdentifier.description.getter();
                v140 = v139;
                sub_1CEFD0994(v135, v136, 1);
              }

              else
              {
                v228 = *(v116 + 32);
                LOBYTE(v229) = v136;
                v138 = VFSItemID.description.getter(v133, v134);
                v140 = v141;
              }

              v142 = sub_1CEFD0DF0(v138, v140, v230);

              *(v132 + 4) = v142;
              *(v132 + 12) = 2080;
              *(v132 + 14) = sub_1CEFD0DF0(0xD000000000000010, v199 | 0x8000000000000000, v230);
              *(v132 + 22) = 2080;
              v143 = *(v225 + 16);
              v228 = 0xD000000000000013;
              v229 = v198;
              v144 = v143;
              v145 = NSFileProviderItemIdentifier.description.getter();
              MEMORY[0x1D3868CC0](v145);

              MEMORY[0x1D3868CC0](41, 0xE100000000000000);

              v146 = sub_1CEFD0DF0(v228, v229, v230);

              *(v132 + 24) = v146;
              *(v132 + 32) = 2048;
              *(v132 + 34) = 0;
              v147 = v192;
              _os_log_impl(&dword_1CEFC7000, v192, v191, "Lookup itemID %s with behavior %s request %s iteration %ld", v132, 0x2Au);
              v148 = v190;
              swift_arrayDestroy();
              MEMORY[0x1D386CDC0](v148, -1, -1);
              MEMORY[0x1D386CDC0](v132, -1, -1);

              (*v219)(v201, v220);
              v29 = v223;
              v124 = v193;
            }

            else
            {

              (*v219)(v128, v220);
              v29 = v223;
            }

            swift_beginAccess();
            v149 = *(v116 + 32);
            v150 = *(v116 + 40);
            if (*(v116 + 41))
            {
              v151 = v116;
              v152 = qword_1EDEA34B0;
              v153 = v149;
              if (v152 != -1)
              {
                swift_once();
              }

              v154 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
              v156 = v155;
              if (v154 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v156 == v157)
              {

                sub_1CEFD0994(v149, v150, 1);
                v124 = v193;
                goto LABEL_59;
              }

              v159 = sub_1CF9E8048();

              sub_1CEFD0994(v149, v150, 1);
              v124 = v193;
              if ((v159 & 1) == 0)
              {
LABEL_61:
                v160 = swift_allocObject();
                v192 = v160;
                *(v160 + 16) = v124;
                v161 = v160 | 0x7000000000000004;
                v162 = swift_allocObject();
                v163 = v217;
                *(v162 + 16) = sub_1CF796A0C;
                *(v162 + 24) = v163;
                *(v162 + 32) = v29;
                *(v162 + 40) = 2;
                *(v162 + 48) = v124;
                *(v162 + 56) = v151;
                *(v162 + 64) = 0;
                v164 = v194;
                *(v162 + 72) = v194;
                *(v162 + 80) = 0;
                v165 = swift_allocObject();
                *(v165 + 16) = v151;
                *(v165 + 24) = v29;
                *(v165 + 32) = 0;
                *(v165 + 40) = sub_1CF796A90;
                *(v165 + 48) = v162;
                *(v165 + 56) = v161;
                v166 = swift_allocObject();
                *(v166 + 16) = sub_1CF796A90;
                *(v166 + 24) = v162;
                v158 = v164;
                v167 = v166;
                swift_retain_n();
                swift_retain_n();
                swift_retain_n();
                swift_retain_n();

                v168 = v158;

                sub_1CF7AAF88("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF554464, v167, sub_1CF796A9C, v165);

                goto LABEL_62;
              }
            }

            else
            {
              v151 = v116;
              if (v149 || v150 != 2)
              {
                goto LABEL_61;
              }
            }

LABEL_59:
            sub_1CF90CAC8(v124, sub_1CF796A0C, v217);

            v158 = v194;
LABEL_62:

            sub_1CEFCCC44(v231, &unk_1EC4BFD80, &unk_1CFA0A2A0);

            sub_1CEFCCC44(v203, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
            goto LABEL_5;
          }

          sub_1CEFCCC44(v203, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
          v88 = v231;
          v89 = &unk_1EC4BFD80;
          v90 = &unk_1CFA0A2A0;
        }

        else
        {
LABEL_33:
          v88 = v203;
          v89 = &unk_1EC4BFBD0;
          v90 = &unk_1CF9FCBC0;
        }

        sub_1CEFCCC44(v88, v89, v90);
      }
    }

    else
    {
      v27 = v221;
      v57 = v217;
    }

LABEL_35:
    v91 = v222[3];
    v92 = v222[4];
    v93 = __swift_project_boxed_opaque_existential_1(v222, v91);
    v94 = v223[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB70, &unk_1CFA0A280);
    v95 = *(swift_dynamicCastClassUnconditional() + 24);
    v234[0] = v57;

    v96 = v227;
    sub_1CF3761C8(v234, v93, v91, v92);
    v227 = v96;
    if (v96)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

LABEL_63:
  v169 = *(v205 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue);
  v170 = swift_allocObject();
  v172 = v206;
  v171 = v207;
  *(v170 + 2) = v207;
  *(v170 + 3) = v172;
  *(v170 + 4) = v208;
  v173 = v170;
  v174 = v171;

  v175 = fpfs_current_log();
  v226 = fpfs_adopt_log();
  v176 = swift_allocObject();
  v234[0] = sub_1CF9E73C8();
  v234[1] = v177;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v178 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v178);

  sub_1CF9E6978();

  v179 = __fp_log_fork();

  *(v176 + 16) = v179;
  v180 = swift_allocObject();
  *(v180 + 16) = v175;
  *(v180 + 24) = v176;
  v223 = v176;
  v224 = v173;
  *(v180 + 32) = v169;
  *(v180 + 40) = "reindexItems(with:identifiers:completionHandler:)";
  *(v180 + 48) = 49;
  *(v180 + 56) = 2;
  *(v180 + 64) = sub_1CF901E5C;
  *(v180 + 72) = v173;
  v234[4] = sub_1CF2B9F54;
  v234[5] = v180;
  v234[0] = MEMORY[0x1E69E9820];
  v234[1] = 1107296256;
  v234[2] = sub_1CEFCA444;
  v234[3] = &block_descriptor_5918;
  v181 = _Block_copy(v234);
  v225 = v175;

  v182 = v169;

  v183 = v209;
  sub_1CF9E63F8();
  v232[0] = MEMORY[0x1E69E7CC0];
  sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
  v184 = v212;
  v185 = v214;
  sub_1CF9E77B8();
  v186 = v215;
  sub_1CF9E7308();
  _Block_release(v181);
  (*(v213 + 8))(v184, v185);
  (*(v210 + 8))(v183, v211);

  v187 = v226;
  v188 = fpfs_adopt_log();
}