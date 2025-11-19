void sub_1CF847560(uint64_t a1, NSObject *a2, uint64_t a3, void *a4)
{
  v105 = a4;
  v104 = a3;
  v116 = a2;
  v118 = a1;
  v103 = sub_1CF9E63D8();
  v102 = *(v103 - 8);
  v4 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v103);
  v101 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v115 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v120 = &v98 - v10;
  v11 = sub_1CF9E6068();
  v111 = *(v11 - 8);
  v112 = v11;
  v12 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v108 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v106 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v117 = &v98 - v18;
  v107 = type metadata accessor for Signpost(0);
  v109 = *(v107 - 8);
  v19 = *(v109 + 8);
  MEMORY[0x1EEE9AC00](v107);
  MEMORY[0x1EEE9AC00](v20);
  v110 = (&v98 - v21);
  MEMORY[0x1EEE9AC00](v22);
  v119 = &v98 - v23;
  v24 = type metadata accessor for VFSItem(0);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v98 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v98 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v98 - v33;
  sub_1CEFCCBDC(v118, &v98 - v33, &unk_1EC4BF300, &unk_1CFA006B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1CEFCCC44(v34, &unk_1EC4BF300, &unk_1CFA006B0);
    dispatch_group_leave(v116);
  }

  else
  {
    v98 = v19;
    v99 = &v98 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    v35 = v34;
    v36 = v30;
    v100 = v30;
    sub_1CEFDA0C4(v35, v30, type metadata accessor for VFSItem);
    v37 = v104;
    v118 = *(v104 + 16);
    v38 = swift_allocObject();
    v39 = v116;
    v38[2].isa = v116;
    sub_1CEFDA34C(v36, v27, type metadata accessor for VFSItem);
    v40 = (*(v25 + 80) + 16) & ~*(v25 + 80);
    v41 = (v26 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
    v42 = (v41 + 15) & 0xFFFFFFFFFFFFFFF8;
    v43 = swift_allocObject();
    sub_1CEFDA0C4(v27, v43 + v40, type metadata accessor for VFSItem);
    *(v43 + v41) = v37;
    v44 = v105;
    *(v43 + v42) = v105;
    v114 = v43;
    *(v43 + ((v42 + 15) & 0xFFFFFFFFFFFFFFF8)) = v39;
    v45 = swift_allocObject();
    *(v45 + 16) = sub_1CF9031FC;
    *(v45 + 24) = v38;
    v113 = v45;
    v46 = *(v118 + qword_1EDEBBC38);
    v47 = v39;

    v48 = v44;
    v116 = v38;

    v105 = fpfs_adopt_log();
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v49 = qword_1EDEBBE40;
    v50 = v111;
    v51 = v112;
    v52 = v117;
    (*(v111 + 56))(v117, 1, 1, v112);
    strcpy(&aBlock, "async batch ");
    BYTE13(aBlock) = 0;
    HIWORD(aBlock) = -5120;
    v53 = sub_1CF9E7988();
    MEMORY[0x1D3868CC0](v53);

    v54 = aBlock;
    v55 = v52;
    v56 = v106;
    sub_1CEFCCBDC(v55, v106, &unk_1EC4BED20, &unk_1CFA00700);
    v57 = *(v50 + 48);
    if (v57(v56, 1, v51) == 1)
    {
      v58 = v49;
      v59 = v108;
      sub_1CF9E6048();
      if (v57(v56, 1, v51) != 1)
      {
        sub_1CEFCCC44(v56, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      v59 = v108;
      (*(v50 + 32))(v108, v56, v51);
    }

    v60 = v119;
    (*(v50 + 16))(v119, v59, v51);
    v61 = v107;
    *(v60 + *(v107 + 20)) = v49;
    v62 = v60 + *(v61 + 24);
    *v62 = "DB queue wait";
    *(v62 + 8) = 13;
    *(v62 + 16) = 2;
    v63 = v49;
    sub_1CF9E7468();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v64 = v59;
    v65 = v50;
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_1CF9FA450;
    *(v66 + 56) = MEMORY[0x1E69E6158];
    *(v66 + 64) = sub_1CEFD51C4();
    *(v66 + 32) = v54;
    sub_1CF9E6028();

    (*(v65 + 8))(v64, v51);
    sub_1CEFCCC44(v117, &unk_1EC4BED20, &unk_1CFA00700);
    v112 = *(v118 + 168);
    v117 = *(v118 + 64);
    v108 = sub_1CF9E6448();
    v111 = *(v108 - 1);
    (*(v111 + 56))(v120, 1, 1, v108);
    v67 = v110;
    sub_1CEFDA34C(v60, v110, type metadata accessor for Signpost);
    v68 = (*(v109 + 80) + 16) & ~*(v109 + 80);
    v69 = (v98 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
    v70 = swift_allocObject();
    v109 = type metadata accessor for Signpost;
    sub_1CEFDA0C4(v67, v70 + v68, type metadata accessor for Signpost);
    v71 = (v70 + v69);
    v110 = sub_1CF902CDC;
    v72 = v113;
    *v71 = sub_1CF902CDC;
    v71[1] = v72;
    v73 = v99;
    sub_1CEFDA34C(v60, v99, type metadata accessor for Signpost);
    v74 = (v69 + 23) & 0xFFFFFFFFFFFFFFF8;
    v75 = (v74 + 15) & 0xFFFFFFFFFFFFFFF8;
    v76 = (v75 + 25) & 0xFFFFFFFFFFFFFFF8;
    v77 = swift_allocObject();
    sub_1CEFDA0C4(v73, v77 + v68, v109);
    v78 = (v77 + v69);
    *v78 = sub_1CF045408;
    v78[1] = 0;
    *(v77 + v74) = v118;
    v79 = v108;
    v80 = v77 + v75;
    *v80 = "reindexItems(with:identifiers:completionHandler:)";
    *(v80 + 8) = 49;
    *(v80 + 16) = 2;
    v81 = (v77 + v76);
    *v81 = v110;
    v81[1] = v72;
    v82 = (v77 + ((v76 + 23) & 0xFFFFFFFFFFFFFFF8));
    v83 = v111;
    v84 = v114;
    *v82 = sub_1CF901E74;
    v82[1] = v84;
    v85 = swift_allocObject();
    v85[2] = sub_1CF903308;
    v85[3] = v70;
    v86 = v112;
    v85[4] = v112;
    swift_retain_n();

    v118 = v70;

    v87 = fpfs_current_log();
    v88 = *(v86 + 16);
    v89 = v115;
    sub_1CEFCCBDC(v120, v115, &unk_1EC4BE370, qword_1CFA01B30);
    if ((*(v83 + 48))(v89, 1, v79) == 1)
    {
      sub_1CEFCCC44(v89, &unk_1EC4BE370, qword_1CFA01B30);
      v90 = QOS_CLASS_UNSPECIFIED;
    }

    else
    {
      v91 = v101;
      sub_1CF9E6438();
      (*(v83 + 8))(v89, v79);
      v90 = sub_1CF9E63C8();
      (*(v102 + 8))(v91, v103);
    }

    v92 = swift_allocObject();
    v92[2] = v87;
    v92[3] = sub_1CF4858EC;
    v92[4] = v77;
    v124 = sub_1CF2BA17C;
    v125 = v92;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v122 = sub_1CEFCA444;
    v123 = &block_descriptor_5970;
    v93 = _Block_copy(&aBlock);
    v94 = v87;

    v124 = sub_1CF2BA180;
    v125 = v85;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v122 = sub_1CEFCA444;
    v123 = &block_descriptor_5973;
    v95 = _Block_copy(&aBlock);

    fp_task_tracker_async_and_qos(v88, v117, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v90, v93, v95);
    _Block_release(v95);
    _Block_release(v93);

    sub_1CEFCCC44(v120, &unk_1EC4BE370, qword_1CFA01B30);
    sub_1CEFD5338(v119, type metadata accessor for Signpost);
    v96 = v105;
    v97 = fpfs_adopt_log();

    sub_1CEFD5338(v100, type metadata accessor for VFSItem);
  }
}

void sub_1CF8482C8(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, NSObject *a5)
{
  v49 = a1;
  v41 = a5;
  v43 = a4;
  v48 = a3;
  v6 = sub_1CF9E5CF8();
  v45 = *(v6 - 8);
  v46 = v6;
  v7 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v42 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ItemMetadata();
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v41 - v17;
  v47 = a2[2];
  v19 = *(a2 + 24);
  v21 = a2[4];
  v20 = a2[5];
  v22 = *(type metadata accessor for VFSItem(0) + 28);
  v23 = *(v15 + 48);
  v44 = a2;
  sub_1CEFDA34C(a2 + v22, &v18[v23], type metadata accessor for ItemMetadata);
  *v18 = v47;
  v18[8] = v19;
  *(v18 + 2) = v21;
  *(v18 + 3) = v20;
  sub_1CEFDA34C(&v18[v23], v13, type metadata accessor for ItemMetadata);

  sub_1CEFCCC44(v18, &unk_1EC4BFD90, &unk_1CFA134F0);
  LODWORD(v23) = v13[*(v10 + 88)];
  sub_1CEFD5338(v13, type metadata accessor for ItemMetadata);
  if (v23 == 1)
  {
    v24 = v50;
    v25 = *(*(v48 + 16) + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB70, &unk_1CFA0A280);
    v26 = *(swift_dynamicCastClassUnconditional() + 32);
    v27 = v49[3];
    v28 = v49[4];
    v29 = __swift_project_boxed_opaque_existential_1(v49, v27);
    v30 = *(v44 + 8);
    v51 = *v44;
    v52 = v30;

    v31 = v42;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v33 = v32;
    (*(v45 + 8))(v31, v46);
    v34 = v33 * 1000000000.0;
    if (COERCE__INT64(fabs(v33 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v34 > -9.22337204e18)
    {
      if (v34 < 9.22337204e18)
      {
        sub_1CF347AC0(&v51, 256, v34, v29, v27, v28);
        if (!v24)
        {
          dispatch_group_leave(v41);
        }

        return;
      }

LABEL_13:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_13;
  }

  v35 = v49[3];
  v36 = v49[4];
  v37 = __swift_project_boxed_opaque_existential_1(v49, v35);
  v38 = *(*(v48 + 16) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB70, &unk_1CFA0A280);
  v39 = *(swift_dynamicCastClassUnconditional() + 24);
  v51 = v43;

  v40 = v50;
  sub_1CF3761C8(&v51, v37, v35, v36);

  if (!v40)
  {
    dispatch_group_leave(v41);
  }
}

void sub_1CF8486B4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v8[4] = sub_1CF8F9E0C;
  v8[5] = v6;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1CF0892D0;
  v8[3] = &block_descriptor_5979;
  v7 = _Block_copy(v8);

  [a1 signalChangesWithCompletionHandler_];
  _Block_release(v7);
}

void sub_1CF84895C(uint64_t a1, char a2, uint64_t a3, unint64_t a4)
{
  v52[1] = *MEMORY[0x1E69E9840];
  v8 = sub_1CF9E53C8();
  v48 = *(v8 - 8);
  v9 = v48[8];
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CF9E6118();
  v49 = *(v12 - 8);
  v13 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v45 - v17;
  v19 = *(a1 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_log);
  v50 = fpfs_adopt_log();
  if (*(a1 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_invalidated) == 1)
  {
    if (FPDomainUnavailableError())
    {
      goto LABEL_3;
    }

    __break(1u);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v46 = v12;
      v23 = Strong;
      if ([Strong disconnectionState] == 6)
      {
        v24 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        v25 = sub_1CF9E6108();
        v26 = sub_1CF9E72C8();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&dword_1CEFC7000, v25, v26, "[diskspace] database open likely to fail, returning error", v27, 2u);
          MEMORY[0x1D386CDC0](v27, -1, -1);
        }

        (*(v49 + 8))(v18, v46);
        LODWORD(v52[0]) = 28;
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CEFCCCA4(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
        sub_1CF9E57D8();
        sub_1CF9E53A8();
        (v48[1])(v11, v8);
        swift_willThrow();

        v20 = v50;
        v21 = fpfs_adopt_log();
        goto LABEL_20;
      }

      v28 = a2 & 1;
      *(a1 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_userAllowedDBDrop) = a2 & 1;
      v48 = v23;
      v29 = [v23 extensionBackend];
      v30 = sub_1CF9E6888();
      v52[0] = 0;
      v31 = [v29 startWithReason:v30 userAllowedDBDrop:v28 error:v52];
      swift_unknownObjectRelease();

      if (v31)
      {
        v32 = v52[0];
        v33 = v47;
        sub_1CF83F5AC(a3, a4);
        v34 = v46;
        if (!v33)
        {
          sub_1CF848F28(a1);

          v20 = v50;
          v21 = fpfs_adopt_log();
          goto LABEL_20;
        }
      }

      else
      {
        v35 = v52[0];
        sub_1CF9E57F8();

        swift_willThrow();
        v34 = v46;
      }

      swift_getErrorValue();
      sub_1CF4C2DD8(v51);
      if (v36)
      {
        v37 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        v38 = sub_1CF9E6108();
        v39 = sub_1CF9E7288();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          *v40 = 0;
          _os_log_impl(&dword_1CEFC7000, v38, v39, "[diskspace] sync engine startup failed due to low disk space even though disk space is above threshold", v40, 2u);
          MEMORY[0x1D386CDC0](v40, -1, -1);
        }

        (*(v49 + 8))(v15, v34);
        v41 = [v48 volume];
        v42 = sub_1CF9E57E8();
        [v41 monitorLowDiskSpaceRecoveryForConcreteError_];
      }

      swift_willThrow();
      sub_1CF848F28(a1);

      v20 = v50;
      v21 = fpfs_adopt_log();
      goto LABEL_20;
    }

    if (FPDomainUnavailableError())
    {
LABEL_3:
      swift_willThrow();
      v20 = v50;
      v21 = fpfs_adopt_log();
LABEL_20:
      v43 = v21;

      v44 = *MEMORY[0x1E69E9840];
      return;
    }
  }

  __break(1u);
}

uint64_t sub_1CF848F28(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong provider];

    if (v4)
    {
      v5 = [v4 descriptor];

      v6 = [v5 wantsBundleBitOnlyPackageDetection];
      if (v6)
      {
        v7 = *(a1 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_observedDefaults);
        swift_getKeyPath();
        v8 = v7;
        v9 = sub_1CF9E5838();

        v10 = *(a1 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_observation);
        *(a1 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_observation) = v9;
      }
    }
  }

  dispatch_group_leave(*(a1 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_initializationGroup));
  *(a1 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_started) = 1;
  v11 = *(a1 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_periodicFPCKRunner);
  if (v11)
  {
    *(v11 + 96) = 256;
    v12 = qword_1EDEA5DA0;

    if (v12 != -1)
    {
      swift_once();
    }

    [qword_1EDEBB830 addWatcher_];
  }

  if (qword_1EDEA5DA0 != -1)
  {
    swift_once();
  }

  return sub_1CF06779C(nullsub_1, 0);
}

uint64_t sub_1CF849218()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v25 - v3;
  v5 = sub_1CF9E5A58();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - v11;
  v13 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pathsManager);
  v14 = OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_wharfDirectoryURL;
  swift_beginAccess();
  sub_1CEFCCBDC(v13 + v14, v4, &unk_1EC4BE310, qword_1CF9FCBE0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1CEFCCC44(v4, &unk_1EC4BE310, qword_1CF9FCBE0);
  }

  else
  {
    (*(v6 + 32))(v12, v4, v5);
    sub_1CF9E5968();
    v15 = objc_opt_self();
    v16 = [v15 defaultManager];
    sub_1CF9E5A18();
    v17 = sub_1CF9E6888();

    v18 = [v16 fileExistsAtPath_];

    if (v18)
    {
      v19 = [v15 defaultManager];
      sub_1CF9E5A18();
      v20 = sub_1CF9E6888();

      v21 = [v19 fileExistsAtPath_];

      v22 = *(v6 + 8);
      v22(v9, v5);
      v22(v12, v5);
      if (v21)
      {
        return 0;
      }
    }

    else
    {
      v24 = *(v6 + 8);
      v24(v9, v5);
      v24(v12, v5);
    }
  }

  return 1;
}

uint64_t sub_1CF849530()
{
  v1 = sub_1CF9E6118();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v83 = (&v79 - v7);
  MEMORY[0x1EEE9AC00](v8);
  v82 = (&v79 - v9);
  MEMORY[0x1EEE9AC00](v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v79 - v13;
  v15 = sub_1CF9E5A58();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v81 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v80 = &v79 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v84 = &v79 - v22;
  v23 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pathsManager);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v25 = result;
    v85 = v1;
    v86 = v2;
    v26 = [result nsDomain];
    v27 = [v26 personaIdentifier];

    if (v27)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    MEMORY[0x1EEE9AC00](v28);
    *(&v79 - 2) = v23;
    *(&v79 - 1) = v25;
    sub_1CF825B70(v30, sub_1CF901DD0, (&v79 - 4), v14);

    v31 = v16;
    v32 = v15;
    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {
      sub_1CEFCCC44(v14, &unk_1EC4BE310, qword_1CF9FCBE0);
      v33 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v34 = sub_1CF9E6108();
      v35 = sub_1CF9E7298();
      v36 = os_log_type_enabled(v34, v35);
      v38 = v85;
      v37 = v86;
      if (v36)
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_1CEFC7000, v34, v35, "must generate path for root directory", v39, 2u);
        MEMORY[0x1D386CDC0](v39, -1, -1);
      }

      (*(v37 + 8))(v5, v38);
      return 1;
    }

    v40 = *(v16 + 32);
    v41 = v84;
    v40(v84, v14, v15);
    v42 = [objc_opt_self() defaultManager];
    sub_1CF9E5A18();
    v43 = sub_1CF9E6888();

    v44 = [v42 fileExistsAtPath_];

    v45 = fpfs_current_or_default_log();
    v46 = (v31 + 16);
    if (!v44)
    {
      v62 = v83;
      sub_1CF9E6128();
      v63 = v81;
      (*v46)(v81, v41, v15);
      v64 = sub_1CF9E6108();
      v65 = sub_1CF9E7298();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = v31;
        v82 = swift_slowAlloc();
        v87 = v82;
        *v66 = 136315138;
        v68 = sub_1CF9E5928();
        v69 = v63;
        v70 = [v68 fp_shortDescription];

        v71 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v73 = v72;

        v74 = *(v67 + 8);
        v74(v69, v32);
        v75 = sub_1CEFD0DF0(v71, v73, &v87);

        *(v66 + 4) = v75;
        _os_log_impl(&dword_1CEFC7000, v64, v65, "must create root directory at %s", v66, 0xCu);
        v76 = v82;
        __swift_destroy_boxed_opaque_existential_1(v82);
        MEMORY[0x1D386CDC0](v76, -1, -1);
        MEMORY[0x1D386CDC0](v66, -1, -1);

        (*(v86 + 8))(v83, v85);
        v74(v41, v32);
      }

      else
      {

        v78 = *(v31 + 8);
        v78(v63, v15);
        (*(v86 + 8))(v62, v85);
        v78(v41, v15);
      }

      return 1;
    }

    v47 = v82;
    sub_1CF9E6128();
    v48 = v80;
    (*v46)(v80, v41, v15);
    v49 = sub_1CF9E6108();
    v50 = sub_1CF9E7298();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = v31;
      v83 = swift_slowAlloc();
      v87 = v83;
      *v51 = 136315138;
      v53 = sub_1CF9E5928();
      v54 = v48;
      v55 = [v53 fp_shortDescription];

      v56 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v58 = v57;

      v59 = *(v52 + 8);
      v59(v54, v32);
      v60 = sub_1CEFD0DF0(v56, v58, &v87);

      *(v51 + 4) = v60;
      _os_log_impl(&dword_1CEFC7000, v49, v50, "root directory already exists at %s", v51, 0xCu);
      v61 = v83;
      __swift_destroy_boxed_opaque_existential_1(v83);
      MEMORY[0x1D386CDC0](v61, -1, -1);
      MEMORY[0x1D386CDC0](v51, -1, -1);

      (*(v86 + 8))(v82, v85);
      v59(v41, v32);
    }

    else
    {

      v77 = *(v31 + 8);
      v77(v48, v15);
      (*(v86 + 8))(v47, v85);
      v77(v41, v15);
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Bool __swiftcall FPDDomainFPFSBackend.needsRootsCreation()()
{
  if (sub_1CF849530())
  {
    return 1;
  }

  return sub_1CF849218();
}

uint64_t sub_1CF849F34()
{
  v1 = sub_1CF9E6118();
  v79 = *(v1 - 8);
  v80 = v1;
  v2 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v78 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v76 = &v71 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v71 - v8;
  v10 = sub_1CF9E5A58();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v77 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v71 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v71 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v71 - v21);
  v23 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pathsManager);
  v24 = OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_wharfDirectoryURL;
  swift_beginAccess();
  sub_1CEFCCBDC(v23 + v24, v9, &unk_1EC4BE310, qword_1CF9FCBE0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1CEFCCC44(v9, &unk_1EC4BE310, qword_1CF9FCBE0);
  }

  (*(v11 + 32))(v22, v9, v10);
  v26 = objc_opt_self();
  v27 = [v26 defaultManager];
  sub_1CF9E5A18();
  v28 = sub_1CF9E6888();

  v29 = [v27 fileExistsAtPath_];

  v75 = v16;
  v30 = &selRef_setDetachedRootLogicalURL_;
  if ((v29 & 1) == 0)
  {
    v31 = fpfs_current_or_default_log();
    v32 = v76;
    sub_1CF9E6128();
    (*(v11 + 16))(v19, v22, v10);
    v33 = sub_1CF9E6108();
    v34 = sub_1CF9E72C8();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v72 = v35;
      v74 = swift_slowAlloc();
      v81 = v74;
      *v35 = 136315138;
      LODWORD(v73) = v34;
      v36 = sub_1CF9E5928();
      v37 = [v36 fp_shortDescription];

      v38 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v39 = v11;
      v41 = v40;

      (*(v39 + 8))(v19, v10);
      v42 = sub_1CEFD0DF0(v38, v41, &v81);
      v11 = v39;
      v30 = &selRef_setDetachedRootLogicalURL_;

      v43 = v72;
      *(v72 + 1) = v42;
      v44 = v43;
      _os_log_impl(&dword_1CEFC7000, v33, v73, "creating wharf directory at %s", v43, 0xCu);
      v45 = v74;
      __swift_destroy_boxed_opaque_existential_1(v74);
      MEMORY[0x1D386CDC0](v45, -1, -1);
      MEMORY[0x1D386CDC0](v44, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v19, v10);
    }

    (*(v79 + 8))(v32, v80);
    v46 = [v26 v30[510]];
    sub_1CF9E5A18();
    v47 = sub_1CF9E6888();

    [v46 fp:v47 createPathIfNeeded:?];
  }

  v48 = v75;
  sub_1CF9E5968();
  v49 = [v26 v30[510]];
  sub_1CF9E5A18();
  v50 = sub_1CF9E6888();

  v51 = [v49 fileExistsAtPath_];

  if (v51)
  {
    v52 = *(v11 + 8);
  }

  else
  {
    v76 = v26;
    v53 = fpfs_current_or_default_log();
    v54 = v78;
    sub_1CF9E6128();
    v55 = v77;
    (*(v11 + 16))(v77, v22, v10);
    v56 = sub_1CF9E6108();
    v57 = sub_1CF9E72C8();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v74 = v22;
      v59 = v55;
      v60 = v58;
      v73 = swift_slowAlloc();
      v81 = v73;
      *v60 = 136315138;
      v61 = sub_1CF9E5928();
      v62 = [v61 fp_shortDescription];

      v63 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v64 = v11;
      v66 = v65;

      v52 = *(v64 + 8);
      v52(v59, v10);
      v67 = sub_1CEFD0DF0(v63, v66, &v81);

      *(v60 + 4) = v67;
      _os_log_impl(&dword_1CEFC7000, v56, v57, "creating wharf/delete directory at %s", v60, 0xCu);
      v68 = v73;
      __swift_destroy_boxed_opaque_existential_1(v73);
      MEMORY[0x1D386CDC0](v68, -1, -1);
      MEMORY[0x1D386CDC0](v60, -1, -1);

      v22 = v74;
      (*(v79 + 8))(v78, v80);
    }

    else
    {

      v52 = *(v11 + 8);
      v52(v55, v10);
      (*(v79 + 8))(v54, v80);
    }

    v69 = [v76 defaultManager];
    sub_1CF9E5A18();
    v70 = sub_1CF9E6888();

    [v69 fp:v70 createPathIfNeeded:?];
  }

  v52(v48, v10);
  return (v52)(v22, v10);
}

uint64_t FPDDomainFPFSBackend.createRoot(byImporting:knownFolders:)@<X0>(_DWORD *a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v74 = a1;
  v75 = a2;
  v6 = sub_1CF9E5248();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v70 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CF9E5268();
  v71 = *(v9 - 1);
  v10 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v69 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CF9E6118();
  v72 = *(v12 - 8);
  v73 = v12;
  v13 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1CF9E5A58();
  v79 = *(v77 - 8);
  v16 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v80 = &v63 - v20;
  v21 = *(v3 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pathsManager);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_22;
  }

  v23 = Strong;
  v68 = v9;
  v76 = a3;
  v78 = v3;
  v24 = [Strong nsDomain];
  v25 = [v24 personaIdentifier];

  if (v25)
  {
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  MEMORY[0x1EEE9AC00](v26);
  *(&v63 - 2) = v21;
  *(&v63 - 1) = v23;
  sub_1CF825834(v28, sub_1CF902CB4, (&v63 - 4), v80);

  if (!v4)
  {
    v9 = v78;
    if ((sub_1CF849530() & 1) == 0)
    {
      sub_1CF849F34();
      return (*(v79 + 32))(v76, v80, v77);
    }

    v83 = 0;
    Strong = swift_unknownObjectWeakLoadStrong();
    v30 = v79;
    v67 = Strong;
    if (Strong)
    {
      v31 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v32 = v77;
      (*(v30 + 16))(v18, v80, v77);
      v33 = sub_1CF9E6108();
      v34 = sub_1CF9E72C8();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v63 = v35;
        v65 = swift_slowAlloc();
        v81 = v65;
        *v35 = 136446210;
        v82 = v34;
        v36 = sub_1CF9E5928();
        v64 = v33;
        v37 = v36;
        v38 = [v36 fp_shortDescription];

        v39 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v41 = v40;

        v66 = *(v30 + 8);
        v66(v18, v32);
        v42 = sub_1CEFD0DF0(v39, v41, &v81);
        v9 = v78;

        v43 = v63;
        v44 = v64;
        *(v63 + 1) = v42;
        v45 = v43;
        _os_log_impl(&dword_1CEFC7000, v44, v82, "creating root at %{public}s", v43, 0xCu);
        v46 = v65;
        __swift_destroy_boxed_opaque_existential_1(v65);
        MEMORY[0x1D386CDC0](v46, -1, -1);
        MEMORY[0x1D386CDC0](v45, -1, -1);
      }

      else
      {

        v66 = *(v30 + 8);
        v66(v18, v32);
      }

      (*(v72 + 8))(v15, v73);
      v47 = v32;
      v48 = v67;
      v49 = [v67 nsDomain];
      v50 = [v49 personaIdentifier];

      v52 = v80;
      if (v50)
      {
        v53 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v55 = v54;
      }

      else
      {
        v53 = 0;
        v55 = 0;
      }

      MEMORY[0x1EEE9AC00](v51);
      *(&v63 - 6) = v21;
      *(&v63 - 5) = v48;
      v56 = v75;
      *(&v63 - 4) = v74;
      *(&v63 - 3) = v56;
      *(&v63 - 2) = v52;
      *(&v63 - 1) = &v83;
      sub_1CF8255E8(v53, v55, sub_1CF8F062C, (&v63 - 8));

      if ((v83 & 1) == 0)
      {
        sub_1CF9E5128();
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CEFCCCA4(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
        v61 = v69;
        v62 = v68;
        sub_1CF9E57D8();
        sub_1CF9E50D8();
        (*(v71 + 8))(v61, v62);
        swift_willThrow();
        return (v66)(v52, v47);
      }

      sub_1CF832910();
      sub_1CF849F34();
      Strong = objc_sync_enter(v9);
      if (!Strong)
      {
        v57 = v9 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend___cachedURLs;
        v58 = *(v9 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend___cachedURLs);
        *v57 = 0;
        v59 = v57[8];
        v57[8] = -1;
        sub_1CF8F0650(v58, v59);
        v60 = objc_sync_exit(v9);
        if (v60)
        {
          MEMORY[0x1EEE9AC00](v60);
          *(&v63 - 2) = v9;
          fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v63 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
        }

        return (*(v79 + 32))(v76, v52, v47);
      }

LABEL_23:
      MEMORY[0x1EEE9AC00](Strong);
      *(&v63 - 2) = v9;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v63 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  return result;
}

Swift::Void __swiftcall FPDDomainFPFSBackend.invalidate()()
{
  v1 = sub_1CF9E6118();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v77 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v78 = &v77 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v77 - v8;
  v10 = *&v0[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_log];
  v79 = fpfs_adopt_log();
  v11 = [objc_allocWithZone(FPLoggerScope) init];
  v12 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v13 = v11;
  v14 = v0;
  v15 = sub_1CF9E6108();
  v16 = sub_1CF9E72C8();

  v17 = os_log_type_enabled(v15, v16);
  v83 = v2;
  v84 = v1;
  v80 = v13;
  if (v17)
  {
    v18 = v13;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    aBlock = v21;
    *v19 = 138412546;
    v22 = [v18 enter];
    *(v19 + 4) = v22;
    *v20 = v22;
    *(v19 + 12) = 2080;
    v23 = [*&v14[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_providerDomainID] fp_obfuscatedProviderDomainID];
    v24 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v26 = v25;

    v27 = sub_1CEFD0DF0(v24, v26, &aBlock);

    *(v19 + 14) = v27;
    _os_log_impl(&dword_1CEFC7000, v15, v16, "%@ ♻️  invalidating fpfs for %s", v19, 0x16u);
    sub_1CEFCCC44(v20, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v20, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x1D386CDC0](v21, -1, -1);
    MEMORY[0x1D386CDC0](v19, -1, -1);

    v28 = (*(v83 + 8))(v9, v84);
  }

  else
  {

    v28 = (*(v2 + 8))(v9, v1);
  }

  v81 = &v77;
  v29 = *&v14[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_startupQueue];
  MEMORY[0x1EEE9AC00](v28);
  v82 = v14;
  *(&v77 - 2) = v14;
  v30 = fpfs_current_log();
  v31 = fpfs_adopt_log();
  v93 = 0;
  v94 = 1;
  aBlock = sub_1CF9E73C8();
  v86 = v32;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v33 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v33);

  sub_1CF9E6978();

  v34 = __fp_log_fork();

  v93 = v34;
  v94 = 0;
  MEMORY[0x1EEE9AC00](v35);
  *(&v77 - 8) = v30;
  *(&v77 - 7) = &v93;
  *(&v77 - 6) = v29;
  *(&v77 - 5) = "invalidate()";
  *(&v77 - 4) = 12;
  *(&v77 - 24) = 2;
  *(&v77 - 2) = sub_1CF8F067C;
  *(&v77 - 1) = (&v77 - 4);
  v92 = 2;
  v91 = 0;
  v36 = swift_allocObject();
  v36[2] = &v92;
  v36[3] = sub_1CF8F06EC;
  v36[4] = &v77 - 10;
  v36[5] = &v91;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_1CF8F0704;
  *(v37 + 24) = v36;
  v89 = sub_1CEFFD054;
  v90 = v37;
  aBlock = MEMORY[0x1E69E9820];
  v86 = 1107296256;
  v87 = sub_1CEFFD02C;
  v88 = &block_descriptor_48;
  v38 = _Block_copy(&aBlock);

  FPDispatchAsyncAndWait(v29, v38);
  _Block_release(v38);
  LOBYTE(v29) = swift_isEscapingClosureAtFileLocation();

  if (v29)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v91)
  {
LABEL_25:
    swift_willThrow();

    v75 = fpfs_adopt_log();
    __break(1u);
    goto LABEL_26;
  }

  v39 = v92;
  v40 = v82;
  if (v92 == 2)
  {
    goto LABEL_22;
  }

  v41 = fpfs_adopt_log();

  if (v39)
  {
    v42 = fpfs_current_or_default_log();
    v43 = v78;
    sub_1CF9E6128();
    v44 = v80;
    v45 = v80;
    v46 = sub_1CF9E6108();
    v47 = sub_1CF9E72C8();

    v48 = os_log_type_enabled(v46, v47);
    v50 = v83;
    v49 = v84;
    if (!v48)
    {
LABEL_19:
      v73 = v79;

      (*(v50 + 8))(v43, v49);
      v74 = fpfs_adopt_log();

      return;
    }

    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *v51 = 138412290;
    v53 = [v45 leave];
    *(v51 + 4) = v53;
    *v52 = v53;
    _os_log_impl(&dword_1CEFC7000, v46, v47, "%@", v51, 0xCu);
LABEL_17:
    sub_1CEFCCC44(v52, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v52, -1, -1);
    MEMORY[0x1D386CDC0](v51, -1, -1);
    goto LABEL_19;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_23;
  }

  v55 = Strong;
  v56 = [Strong extensionBackend];

  if (!v56)
  {
    goto LABEL_23;
  }

  [v56 invalidate];
  v57 = swift_unknownObjectRelease();
  v81 = &v77;
  v58 = *&v40[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue];
  MEMORY[0x1EEE9AC00](v57);
  *(&v77 - 2) = v40;
  v59 = fpfs_current_log();
  v60 = fpfs_adopt_log();
  v93 = 0;
  v94 = 1;
  aBlock = sub_1CF9E73C8();
  v86 = v61;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v62 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v62);

  sub_1CF9E6978();

  v63 = __fp_log_fork();

  v82 = &v77;
  v93 = v63;
  v94 = 0;
  MEMORY[0x1EEE9AC00](v64);
  *(&v77 - 8) = v59;
  *(&v77 - 7) = &v93;
  *(&v77 - 6) = v58;
  *(&v77 - 5) = "invalidate()";
  *(&v77 - 4) = 12;
  *(&v77 - 24) = 2;
  *(&v77 - 2) = sub_1CF8F0710;
  *(&v77 - 1) = (&v77 - 4);
  v92 = 1;
  v91 = 0;
  v65 = swift_allocObject();
  v65[2] = &v92;
  v65[3] = sub_1CF2B1698;
  v65[4] = &v77 - 10;
  v65[5] = &v91;
  v66 = swift_allocObject();
  *(v66 + 16) = sub_1CF2B16B0;
  *(v66 + 24) = v65;
  v89 = sub_1CF1C0B54;
  v90 = v66;
  aBlock = MEMORY[0x1E69E9820];
  v86 = 1107296256;
  v87 = sub_1CEFFD02C;
  v88 = &block_descriptor_61_0;
  v67 = _Block_copy(&aBlock);

  FPDispatchAsyncAndWait(v58, v67);
  _Block_release(v67);
  LOBYTE(v58) = swift_isEscapingClosureAtFileLocation();

  if (v58)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v91)
  {
    v43 = v77;
    if ((v92 & 1) == 0)
    {

      v68 = fpfs_adopt_log();

      v69 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v44 = v80;
      v70 = v80;
      v46 = sub_1CF9E6108();
      v71 = sub_1CF9E72C8();

      if (!os_log_type_enabled(v46, v71))
      {
        v50 = v83;
        v49 = v84;
        goto LABEL_19;
      }

      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v51 = 138412290;
      v72 = [v70 leave];
      *(v51 + 4) = v72;
      *v52 = v72;
      _os_log_impl(&dword_1CEFC7000, v46, v71, "%@", v51, 0xCu);
      v50 = v83;
      v49 = v84;
      goto LABEL_17;
    }

    goto LABEL_24;
  }

LABEL_26:
  swift_willThrow();

  v76 = fpfs_adopt_log();
  __break(1u);
}

uint64_t sub_1CF84BC84(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_periodicFPCKRunner];
  if (v2)
  {
    *(v2 + 97) = 0;
  }

  if (qword_1EDEA5DA0 != -1)
  {
    swift_once();
  }

  [qword_1EDEBB830 removeWatcher_];
  if (*&a1[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_enumerationAnchorChangedSource])
  {
    v3 = *&a1[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_enumerationAnchorChangedSource];
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1CF9E7418();
    swift_unknownObjectRelease();
  }

  if (*&a1[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_itemsChangedSource])
  {
    v4 = *&a1[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_itemsChangedSource];
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1CF9E7418();
    swift_unknownObjectRelease();
  }

  if (*&a1[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_onActivatePendingSetNotification])
  {
    v5 = *&a1[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_onActivatePendingSetNotification];
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1CF9E7418();
    swift_unknownObjectRelease();
  }

  if (*&a1[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pendingSetSource])
  {
    v6 = *&a1[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pendingSetSource];
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1CF9E7418();
    swift_unknownObjectRelease();
  }

  v30 = 0;
  v7 = a1;
  sub_1CF517174(v7, &v30, v7);
  if (!v30)
  {
    __break(1u);
    goto LABEL_32;
  }

  v9 = *(v30 + 16);
  if (v9)
  {
    v10 = v30 + 32;
    do
    {
      sub_1CEFF6FC0(v10, v29);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong invalidate];
        swift_unknownObjectRelease();
      }

      sub_1CEFF70F4(v29);
      v10 += 16;
      --v9;
    }

    while (v9);
  }

  v8 = objc_sync_enter(v7);
  if (v8)
  {
LABEL_32:
    MEMORY[0x1EEE9AC00](v8);
    v28 = v7;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v27, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v12 = *&v7[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend___fpfs];

  v13 = objc_sync_exit(v7);
  if (v13)
  {
    MEMORY[0x1EEE9AC00](v13);
    v28 = v7;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v27, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  if (!v12)
  {
    v14 = *&v7[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_startupQueue];
    MEMORY[0x1EEE9AC00](v13);
    v28 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4C28, &qword_1CFA17E60);
    sub_1CF9E7398();
    v12 = v29[0];
    if (!v29[0])
    {
    }
  }

  v15 = *(v12 + 56);
  sub_1CF7A69C4();
  v16 = OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_dispatchTimer;
  if (*(v15 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_dispatchTimer))
  {
    v17 = *(v15 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_dispatchTimer);
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1CF9E7448();
    swift_unknownObjectRelease();
    if (*(v15 + v16))
    {
      v18 = *(v15 + v16);
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1CF9E7418();
      swift_unknownObjectRelease();
    }
  }

  v19 = *(v15 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_dispatchQueue);

  sub_1CF01001C(0, "deactivate()", 12, 2, sub_1CF902D84, v15);

  v20 = *(v12 + 64);
  sub_1CF7A69C4();
  v21 = OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_dispatchTimer;
  if (*(v20 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_dispatchTimer))
  {
    v22 = *(v20 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_dispatchTimer);
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1CF9E7448();
    swift_unknownObjectRelease();
    if (*(v20 + v21))
    {
      v23 = *(v20 + v21);
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1CF9E7418();
      swift_unknownObjectRelease();
    }
  }

  v24 = *(v20 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_dispatchQueue);

  sub_1CF01001C(0, "deactivate()", 12, 2, sub_1CF902D84, v20);

  *(v12 + 24) = 1;
  v25 = *(v12 + 16);
  sub_1CF6C0474();
  sub_1CF8E976C(0);
}

uint64_t sub_1CF84C174(uint64_t *a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_runningEnumerator;
  swift_beginAccess();
  v5 = *(a2 + v4);
  v6 = *(v5 + 16);
  if (!v6)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_5:
    v9 = *a1;
    *a1 = v7;

    v10 = sub_1CF4E3E68(MEMORY[0x1E69E7CC0]);
    v11 = *(a2 + v4);
    *(a2 + v4) = v10;
  }

  v7 = sub_1CF1F8D84(v6, 0);
  v13 = sub_1CF1FA5F4(&v12, (v7 + 4), v6, v5);

  result = sub_1CEFCB59C();
  if (v13 == v6)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void FPDDomainFPFSBackend.isProvider(forRealPathURL:)(uint64_t a1)
{
  v14 = a1;
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1CEFCE64C();
  v7 = 0;
  v8 = *(v6 + 16);
  v12 = v2 + 8;
  v13 = v2 + 16;
  while (1)
  {
    if (v8 == v7)
    {
LABEL_5:

      return;
    }

    if (v7 >= *(v6 + 16))
    {
      break;
    }

    (*(v2 + 16))(v5, v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v7++, v1);
    v9 = sub_1CF9E5928();
    (*(v2 + 8))(v5, v1);
    v10 = sub_1CF9E5928();
    v11 = [v9 fp:v10 realPathRelationshipToItemAtRealPathURL:{v12, v13, v14}];

    if (v11 <= 1)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
}

uint64_t FPDDomainFPFSBackend.registerFPCKProgress(_:)(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = a1;
  sub_1CEFD4024("registerFPCKProgress(_:)", 24, 2, nullsub_1, 0, sub_1CF8F072C, v2);
}

uint64_t FPDDomainFPFSBackend.dumpState(to:options:request:completionHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  *(v10 + 24) = a5;
  v11 = swift_allocObject();
  v11[2] = v5;
  v11[3] = a1;
  v11[4] = a2;
  v11[5] = a4;
  v11[6] = a5;
  swift_retain_n();
  v12 = v5;
  v13 = a1;
  sub_1CEFD4024("dumpState(to:options:request:completionHandler:)", 48, 2, sub_1CF90324C, v10, sub_1CF8F0758, v11);
}

uint64_t sub_1CF84C7F0(uint64_t a1, char *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *&a2[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_dumpQueue];
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = a1;
  v13[5] = a4;
  v13[6] = a5;
  v13[7] = a6;
  v14 = a2;
  v15 = a3;

  sub_1CF01001C(0, "dumpState(to:options:request:completionHandler:)", 48, 2, sub_1CF901D70, v13);
}

uint64_t sub_1CF84C8C8(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v15 = a4;
  v8 = sub_1CF0878B4();
  if (v8[2])
  {
    v9 = sub_1CF9E6888();
    [a2 put_];

    v22 = &type metadata for SubFPCTLTermDumper;
    v23 = &off_1F4C03038;
    v19 = a2;
    v20 = 538976288;
    v21 = 0xE400000000000000;
    v10 = a2;
    sub_1CF84CAA8(&v19, v8);

    __swift_destroy_boxed_opaque_existential_1(&v19);
  }

  else
  {
  }

  v11 = sub_1CF9E6888();
  [a2 put_];

  v22 = &type metadata for SubFPCTLTermDumper;
  v23 = &off_1F4C03038;
  v19 = a2;
  v20 = 538976288;
  v21 = 0xE400000000000000;
  MEMORY[0x1EEE9AC00](v12);
  v13 = a2;
  sub_1CF052DA4(a1, sub_1CF901D80);
  sub_1CF76385C(&v19, v15 & 1, 0);
  __swift_destroy_boxed_opaque_existential_1(&v19);
  return a5(0);
}

uint64_t sub_1CF84CAA8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = result;
    v4 = (a2 + 32);
    do
    {
      v5 = v3[3];
      v6 = v3[4];
      v7 = *v4++;
      __swift_project_boxed_opaque_existential_1(v3, v5);
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE690, &qword_1CF9FE4E8);
      sub_1CF9E7B58();
      sub_1CF4FB2BC(0, 0xE000000000000000, v5, v6);
      swift_unknownObjectRelease();

      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_1CF84CB9C(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C49F8, &qword_1CFA17AF8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pendingSetState;
  swift_beginAccess();
  sub_1CEFCCBDC(a1 + v8, v7, &qword_1EC4C49F8, &qword_1CFA17AF8);
  v9 = type metadata accessor for FPDDomainFPFSBackend.PendingSetState(0);
  LODWORD(a1) = (*(*(v9 - 8) + 48))(v7, 1, v9);
  result = sub_1CEFCCC44(v7, &qword_1EC4C49F8, &qword_1CFA17AF8);
  if (a1 != 1)
  {
    v11 = a2[3];
    v12 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v11);
    return sub_1CF4FB2BC(0xD000000000000015, 0x80000001CFA5F080, v11, v12);
  }

  return result;
}

uint64_t FPDDomainFPFSBackend.waitForChanges(below:request:completionHandler:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  swift_retain_n();
  v10 = a1;
  v11 = a2;
  sub_1CEFD4024("waitForChanges(below:request:completionHandler:)", 48, 2, sub_1CF90324C, v8, sub_1CF8F0770, v9);
}

uint64_t sub_1CF84CF58(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v11 = v10 | 0x5000000000000004;
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = v12;
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = v11;
  v14[5] = sub_1CF902EC0;
  v14[6] = v13;
  v15 = a2;
  v16 = a3;

  sub_1CF817EE4(v15, v11, sub_1CF901AB4, v14);
}

uint64_t FPDDomainFPFSBackend.waitForStabilization(for:mode:completionHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  swift_retain_n();
  v10 = a1;
  sub_1CEFD4024("waitForStabilization(for:mode:completionHandler:)", 49, 2, sub_1CF90324C, v8, sub_1CF8F077C, v9);
}

uint64_t sub_1CF84D324(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  v10 = v9 | 0x5000000000000006;
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = v11;
  v13 = *(a1 + 16);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1CF902EC0;
  *(v14 + 24) = v12;
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = v10;
  v15[4] = a3;
  v15[5] = sub_1CF902EC0;
  v15[6] = v12;
  swift_retain_n();
  v16 = a2;

  sub_1CF7AAF88("waitForStabilization(request:mode:_:)", 37, 2, 2, sub_1CF90324C, v14, sub_1CF90338C, v15);
}

uint64_t sub_1CF84D640(uint64_t a1, int a2, unint64_t a3, void (*a4)(void, id), uint64_t a5)
{
  v54 = a5;
  v55 = a3;
  v56 = a4;
  v52 = a2;
  v53 = a1;
  v6 = sub_1CF9E6118();
  v50 = *(v6 - 8);
  v7 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E5A58();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v51 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v48 - v14;
  v16 = *&v5[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_providerDomainID];
  v57 = v5;
  v17 = sub_1CEFCE64C();
  v48 = v6;
  v49 = v15;
  if (!*(v17 + 16))
  {
    v18 = v11;
    v23 = v54;
    v25 = v16;

    v26 = v53;
LABEL_9:
    v27 = v51;
    (*(v18 + 16))(v51, v26, v10);
    v28 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v29 = swift_allocObject();
    v30 = v56;
    *(v29 + 16) = v56;
    *(v29 + 24) = v23;
    (*(v18 + 32))(v29 + v28, v27, v10);
    v31 = v29 + ((v28 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
    v32 = v55;
    *v31 = v55;
    *(v31 + 8) = v52 & 1;
    *(v29 + ((v28 + v12 + 23) & 0xFFFFFFFFFFFFFFF8)) = v25;
    swift_retain_n();
    sub_1CEFD09A0(v32);

    v33 = v25;
    sub_1CF8EBFCC("itemID(for:requireProviderItemID:userRequest:completionHandler:)", 64, 2, sub_1CF903310, v29, v57, v30, v23);
  }

  v18 = v11;
  v19 = v49;
  (*(v11 + 16))(v49, v17 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v10);

  v20 = v53;
  if ((sub_1CF9E59A8() & 1) == 0)
  {
    v22 = v11;
    v23 = v54;
    v24 = v10;
    v25 = v16;
    goto LABEL_8;
  }

  v21 = v16;
  if (*&v57[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend___fpfs] || (v57[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_invalidated] & 1) != 0)
  {
    v22 = v18;
    v23 = v54;
    v24 = v10;
    v25 = v16;
LABEL_8:
    (*(v22 + 8))(v19, v24);
    v26 = v20;
    goto LABEL_9;
  }

  v35 = fpfs_current_or_default_log();
  v36 = v9;
  sub_1CF9E6128();
  v37 = v55;
  sub_1CEFD09A0(v55);
  v38 = sub_1CF9E6108();
  v39 = sub_1CF9E7298();
  sub_1CEFD0A98(v37);
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v58 = v41;
    *v40 = 136446210;
    v42 = sub_1CEFD11AC(v37);
    v44 = sub_1CEFD0DF0(v42, v43, &v58);

    *(v40 + 4) = v44;
    _os_log_impl(&dword_1CEFC7000, v38, v39, "Going through fast-path for the rootItem at startup for %{public}s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x1D386CDC0](v41, -1, -1);
    MEMORY[0x1D386CDC0](v40, -1, -1);
  }

  (*(v50 + 8))(v36, v48);
  v45 = sub_1CF75C4E8(*MEMORY[0x1E6967258], 1);
  v46 = [objc_allocWithZone(MEMORY[0x1E69673A0]) initWithProviderDomainID:v21 itemIdentifier:v45];

  v47 = v46;
  v56(v46, 0);

  return (*(v18 + 8))(v49, v10);
}

uint64_t sub_1CF84DB6C(uint64_t a1, void (*a2)(void, void), uint64_t a3, uint64_t a4, unint64_t a5, int a6, void *a7)
{
  v102 = a7;
  v98 = a6;
  v106 = a4;
  v107 = a5;
  v101 = sub_1CF9E5A58();
  v96 = *(v101 - 8);
  v10 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v101);
  v95 = v11;
  v100 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CF9E6118();
  v103 = *(v12 - 8);
  v104 = v12;
  v13 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v97 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v99 = &v92 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v92 - v19;
  v21 = type metadata accessor for VFSItem(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v94 = &v92 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v93 = &v92 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v92 - v27;
  v29 = swift_allocObject();
  v105 = a2;
  *(v29 + 16) = a2;
  *(v29 + 24) = a3;
  v30 = swift_allocObject();
  swift_weakInit();
  v31 = swift_allocObject();
  v31[2] = sub_1CF90325C;
  v31[3] = v29;
  v31[4] = v30;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_1CF8F9F30;
  *(v32 + 24) = v31;
  v109 = v32;
  v110 = a3;
  swift_retain_n();

  v108 = v30;

  v33 = v106;
  sub_1CF010CE0(v106, 0, 2, 1, v20);
  v34 = v22;
  if ((*(v22 + 48))(v20, 1, v21) != 1)
  {
    sub_1CEFDA0C4(v20, v28, type metadata accessor for VFSItem);
    if (v98)
    {

      v92 = a1;
      v110 = *(a1 + 16);
      v46 = swift_allocObject();
      v104 = sub_1CF903440;
      v105 = v46;
      v47 = v109;
      *(v46 + 16) = sub_1CF903440;
      *(v46 + 24) = v47;
      v48 = v93;
      sub_1CEFDA34C(v28, v93, type metadata accessor for VFSItem);
      v49 = v96;
      (*(v96 + 16))(v100, v33, v101);
      v50 = *(v34 + 80);
      v108 = v28;
      v51 = (v50 + 24) & ~v50;
      v52 = (v23 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
      v53 = (v52 + 15) & 0xFFFFFFFFFFFFFFF8;
      v54 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
      v55 = (*(v49 + 80) + v54 + 16) & ~*(v49 + 80);
      v56 = swift_allocObject();
      *(v56 + 16) = v92;
      sub_1CEFDA0C4(v48, v56 + v51, type metadata accessor for VFSItem);
      v57 = v107;
      *(v56 + v52) = v107;
      v58 = v101;
      v59 = v102;
      *(v56 + v53) = v102;
      v60 = (v56 + v54);
      *v60 = v104;
      v60[1] = v47;
      (*(v49 + 32))(v56 + v55, v100, v58);
      v61 = swift_allocObject();
      v62 = v105;
      *(v61 + 16) = sub_1CF90325C;
      *(v61 + 24) = v62;

      sub_1CEFD09A0(v57);

      v63 = v59;

      sub_1CF7AAF88("itemID(for:requireProviderItemID:userRequest:completionHandler:)", 64, 2, 2, sub_1CF7BA950, v61, sub_1CF8F9F40, v56);

      v64 = v108;
      return sub_1CEFD5338(v64, type metadata accessor for VFSItem);
    }

    v65 = fpfs_current_or_default_log();
    v66 = v97;
    sub_1CF9E6128();
    v67 = v94;
    sub_1CEFDA34C(v28, v94, type metadata accessor for VFSItem);
    v68 = v107;
    sub_1CEFD09A0(v107);
    v69 = sub_1CF9E6108();
    v70 = sub_1CF9E7298();
    sub_1CEFD0A98(v68);
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v111 = v72;
      *v71 = 136315394;
      v73 = *(v67 + 8);
      v113 = *v67;
      LOBYTE(v114) = v73;
      v75 = VFSItemID.description.getter(v72, v74);
      v77 = v76;
      sub_1CEFD5338(v67, type metadata accessor for VFSItem);
      v78 = sub_1CEFD0DF0(v75, v77, &v111);

      *(v71 + 4) = v78;
      *(v71 + 12) = 2082;
      v79 = sub_1CEFD11AC(v68);
      v81 = sub_1CEFD0DF0(v79, v80, &v111);

      *(v71 + 14) = v81;
      _os_log_impl(&dword_1CEFC7000, v69, v70, "found vfs item %s for %{public}s", v71, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v72, -1, -1);
      MEMORY[0x1D386CDC0](v71, -1, -1);

      v82 = (*(v103 + 8))(v97, v104);
    }

    else
    {

      sub_1CEFD5338(v67, type metadata accessor for VFSItem);
      v82 = (*(v103 + 8))(v66, v104);
    }

    v84 = *v28;
    v85 = v28[8];
    if (v85 != 2 || v84)
    {
      if (v85 != 2 || v84 != 1)
      {
        v113 = 0x2F73662F70665F5FLL;
        v114 = 0xE800000000000000;
        v111 = v84;
        v112 = v85;
        v88 = VFSItemID.description.getter(v82, v83);
        MEMORY[0x1D3868CC0](v88);

        v87 = sub_1CF9E6888();

        goto LABEL_18;
      }

      v86 = MEMORY[0x1E6967280];
    }

    else
    {
      v86 = MEMORY[0x1E6967258];
    }

    v87 = *v86;
LABEL_18:
    v89 = objc_allocWithZone(MEMORY[0x1E69673A0]);
    v90 = [v89 initWithProviderDomainID:v102 itemIdentifier:v87];

    v91 = v90;
    v105(v90, 0);

    v64 = v28;
    return sub_1CEFD5338(v64, type metadata accessor for VFSItem);
  }

  sub_1CEFCCC44(v20, &unk_1EC4BEC00, &unk_1CF9FCB60);
  v35 = fpfs_current_or_default_log();
  v36 = v99;
  sub_1CF9E6128();
  v37 = v107;
  sub_1CEFD09A0(v107);
  v38 = sub_1CF9E6108();
  v39 = sub_1CF9E7298();
  sub_1CEFD0A98(v37);
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v113 = v41;
    *v40 = 136446210;
    v42 = sub_1CEFD11AC(v37);
    v44 = sub_1CEFD0DF0(v42, v43, &v113);

    *(v40 + 4) = v44;
    _os_log_impl(&dword_1CEFC7000, v38, v39, "no vfs item for %{public}s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x1D386CDC0](v41, -1, -1);
    MEMORY[0x1D386CDC0](v40, -1, -1);
  }

  (*(v103 + 8))(v36, v104);
  v105(0, 0);
}

void sub_1CF84E5CC(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v128 = a8;
  v137 = a5;
  v138 = a7;
  v136 = a6;
  v142 = a4;
  v11 = sub_1CF9E6118();
  v139 = *(v11 - 8);
  v140 = v11;
  v12 = *(v139 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v141 = &v122 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v130 = &v122 - v15;
  v132 = sub_1CF9E5A58();
  v134 = *(v132 - 8);
  v16 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](v132);
  v127 = v17;
  v131 = &v122 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for VFSItem(0);
  v126 = *(v18 - 8);
  v19 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v133 = &v122 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v143 = &v122 - v21;
  v22 = a1[3];
  v23 = a1[4];
  v24 = __swift_project_boxed_opaque_existential_1(a1, v22);
  v129 = a2;
  v25 = *(a2 + 16);
  v26 = *(v25 + 16);
  v27 = *a3;
  v135 = a3;
  v28 = *(a3 + 8);
  v146 = v27;
  v147 = v28;
  v29 = *(*v26 + 160);

  v30 = v24;
  v31 = v144;
  v29(v145, &v146, v30, v22, v23);

  if (v31)
  {
    return;
  }

  v125 = 0;
  v32 = v28;
  v33 = v27;
  v123 = v19;
  v34 = v143;
  v35 = v133;
  v36 = v134;
  v37 = v135;
  v38 = v141;
  v124 = v25;
  v39 = v145[0];
  if (!v145[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4BF0, &unk_1CFA189D0);
    v63 = swift_allocObject();
    v144 = v63;
    *(v63 + 32) = v33;
    v141 = (v63 + 32);
    *(v63 + 40) = v32;
    *(v63 + 41) = 0;
    *(v63 + 16) = v33;
    *(v63 + 24) = v32;
    *(v63 + 25) = 0;
    sub_1CEFDA34C(v37, v34, type metadata accessor for VFSItem);
    (*(v36 + 16))(v131, v128, v132);
    v64 = (*(v126 + 80) + 16) & ~*(v126 + 80);
    v65 = (v123 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
    v66 = (v65 + 15) & 0xFFFFFFFFFFFFFFF8;
    v67 = (v66 + 23) & 0xFFFFFFFFFFFFFFF8;
    v68 = (v67 + 15) & 0xFFFFFFFFFFFFFFF8;
    v69 = (*(v36 + 80) + v68 + 8) & ~*(v36 + 80);
    v70 = swift_allocObject();
    sub_1CEFDA0C4(v143, v70 + v64, type metadata accessor for VFSItem);
    v71 = v142;
    *(v70 + v65) = v142;
    v72 = (v70 + v66);
    v73 = v137;
    v74 = v138;
    *v72 = v136;
    v72[1] = v74;
    *(v70 + v67) = v129;
    *(v70 + v68) = v73;
    v75 = v70 + v69;
    v76 = v71;
    (*(v36 + 32))(v75, v131, v132);
    v77 = objc_allocWithZone(MEMORY[0x1E696AE38]);
    sub_1CEFD09A0(v76);

    v78 = v73;
    v143 = [v77 init];
    v79 = swift_allocObject();
    v79[2] = sub_1CF8F9F6C;
    v79[3] = v70;
    v138 = v79;
    v79[4] = v76;
    sub_1CEFD09A0(v76);

    sub_1CEFD09A0(v76);
    v137 = v70;

    v80 = fpfs_current_or_default_log();
    v81 = v130;
    sub_1CF9E6128();
    sub_1CEFD09A0(v76);
    sub_1CEFD09A0(v76);

    v82 = sub_1CF9E6108();
    v83 = sub_1CF9E7298();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v136 = swift_slowAlloc();
      v148 = v136;
      *v84 = 136315906;
      v85 = swift_beginAccess();
      v87 = *(v144 + 32);
      v88 = *(v144 + 40);
      if (*(v144 + 41))
      {
        v89 = v87;
        v90 = NSFileProviderItemIdentifier.description.getter();
        v92 = v91;
        sub_1CEFD0994(v87, v88, 1);
      }

      else
      {
        v146 = *(v144 + 32);
        v147 = v88;
        v90 = VFSItemID.description.getter(v85, v86);
        v92 = v94;
      }

      v95 = sub_1CEFD0DF0(v90, v92, &v148);

      *(v84 + 4) = v95;
      *(v84 + 12) = 2080;
      *(v84 + 14) = sub_1CEFD0DF0(0xD000000000000010, 0x80000001CFA2C3C0, &v148);
      *(v84 + 22) = 2080;
      v96 = sub_1CEFD11AC(v76);
      v98 = v97;
      sub_1CEFD0A98(v76);
      sub_1CEFD0A98(v76);
      v99 = sub_1CEFD0DF0(v96, v98, &v148);

      *(v84 + 24) = v99;
      *(v84 + 32) = 2048;
      *(v84 + 34) = 0;
      _os_log_impl(&dword_1CEFC7000, v82, v83, "Lookup itemID %s with behavior %s request %s iteration %ld", v84, 0x2Au);
      v100 = v136;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v100, -1, -1);
      MEMORY[0x1D386CDC0](v84, -1, -1);

      (*(v139 + 8))(v130, v140);
    }

    else
    {
      sub_1CEFD0A98(v76);
      sub_1CEFD0A98(v76);

      (*(v139 + 8))(v81, v140);
    }

    v101 = v124;
    swift_beginAccess();
    v102 = *(v144 + 32);
    v103 = *(v144 + 40);
    if (*(v144 + 41))
    {
      v104 = qword_1EDEA34B0;
      v105 = v102;
      if (v104 != -1)
      {
        swift_once();
      }

      v106 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v108 = v107;
      if (v106 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v108 == v109)
      {

        sub_1CEFD0994(v102, v103, 1);
LABEL_21:
        sub_1CF90CAC8(v76, sub_1CF795FDC, v138);
        v110 = v143;
LABEL_27:

        sub_1CEFD0A98(v76);

        return;
      }

      v111 = sub_1CF9E8048();

      sub_1CEFD0994(v102, v103, 1);
      if (v111)
      {
        goto LABEL_21;
      }
    }

    else if (!v102 && v103 == 2)
    {
      goto LABEL_21;
    }

    if (((v76 >> 58) & 0x3C | (v76 >> 1) & 3) == 0x1E)
    {
      v112 = *((v76 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v113 = v112;
    }

    else
    {
      v114 = swift_allocObject();
      *(v114 + 16) = v76;
      v113 = v114 | 0x7000000000000004;
      v112 = v76;
    }

    v115 = v143;
    sub_1CEFD09A0(v112);
    v116 = swift_allocObject();
    v117 = v138;
    *(v116 + 16) = sub_1CF795FDC;
    *(v116 + 24) = v117;
    *(v116 + 32) = v101;
    *(v116 + 40) = 2;
    v118 = v144;
    *(v116 + 48) = v76;
    *(v116 + 56) = v118;
    *(v116 + 64) = 0;
    *(v116 + 72) = v115;
    *(v116 + 80) = 0;
    v119 = swift_allocObject();
    *(v119 + 16) = v118;
    *(v119 + 24) = v101;
    *(v119 + 32) = 0;
    *(v119 + 40) = sub_1CF795FE8;
    *(v119 + 48) = v116;
    *(v119 + 56) = v113;
    v120 = swift_allocObject();
    *(v120 + 16) = sub_1CF795FE8;
    *(v120 + 24) = v116;
    v110 = v143;

    sub_1CEFD09A0(v76);

    v121 = v110;
    sub_1CEFD09A0(v113);
    sub_1CF7AAF88("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF552448, v120, sub_1CF795FEC, v119);

    sub_1CEFD0A98(v113);
    goto LABEL_27;
  }

  v40 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v41 = v35;
  sub_1CEFDA34C(v37, v35, type metadata accessor for VFSItem);
  v42 = v142;
  sub_1CEFD09A0(v142);
  v43 = v39;
  v44 = sub_1CF9E6108();
  v45 = sub_1CF9E7298();

  sub_1CEFD0A98(v42);
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v145[0] = v47;
    *v46 = 136315650;
    v48 = *(v41 + 8);
    v146 = *v41;
    v147 = v48;
    v50 = VFSItemID.description.getter(v47, v49);
    v52 = v51;
    sub_1CEFD5338(v41, type metadata accessor for VFSItem);
    v53 = sub_1CEFD0DF0(v50, v52, v145);

    *(v46 + 4) = v53;
    *(v46 + 12) = 2082;
    v54 = v43;
    v55 = NSFileProviderItemIdentifier.description.getter();
    v57 = v56;

    v58 = sub_1CEFD0DF0(v55, v57, v145);

    *(v46 + 14) = v58;
    *(v46 + 22) = 2082;
    v59 = sub_1CEFD11AC(v142);
    v61 = sub_1CEFD0DF0(v59, v60, v145);

    *(v46 + 24) = v61;
    _os_log_impl(&dword_1CEFC7000, v44, v45, "found item %s already reconciled with %{public}s for %{public}s", v46, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v47, -1, -1);
    MEMORY[0x1D386CDC0](v46, -1, -1);

    (*(v139 + 8))(v141, v140);
  }

  else
  {

    sub_1CEFD5338(v35, type metadata accessor for VFSItem);
    (*(v139 + 8))(v38, v140);
  }

  v62 = v136;
  v93 = [objc_allocWithZone(MEMORY[0x1E69673A0]) initWithProviderDomainID:v137 itemIdentifier:v43];
  v62(v93, 0);
}

void sub_1CF84F278(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void, void *), uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v72 = a8;
  v78 = a7;
  v75 = a6;
  v81 = a5;
  v82 = a4;
  v80 = a3;
  v70 = a2;
  v9 = sub_1CF9E5A58();
  v74 = *(v9 - 8);
  v10 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v73 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for VFSItem(0);
  v69 = *(v11 - 8);
  v12 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v71 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v67 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v67 - v17;
  v19 = sub_1CF9E6118();
  v76 = *(v19 - 8);
  v77 = v19;
  v20 = *(v76 + 8);
  MEMORY[0x1EEE9AC00](v19);
  v79 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = (&v67 - v24);
  sub_1CEFCCBDC(a1, &v67 - v24, &unk_1EC4BF300, &unk_1CFA006B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = *v25;
    v27 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    sub_1CEFDA34C(v70, v18, type metadata accessor for VFSItem);
    v28 = v26;
    v29 = v80;
    sub_1CEFD09A0(v80);
    v30 = sub_1CF9E6108();
    v31 = sub_1CF9E7298();

    sub_1CEFD0A98(v29);
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v86[0] = v34;
      *v32 = 136315650;
      v35 = v18[8];
      v84 = *v18;
      v85 = v35;
      v37 = VFSItemID.description.getter(v34, v36);
      v39 = v38;
      sub_1CEFD5338(v18, type metadata accessor for VFSItem);
      v40 = sub_1CEFD0DF0(v37, v39, v86);

      *(v32 + 4) = v40;
      *(v32 + 12) = 2112;
      swift_getErrorValue();
      v41 = Error.prettyDescription.getter(v83);
      *(v32 + 14) = v41;
      *v33 = v41;
      *(v32 + 22) = 2082;
      v42 = sub_1CEFD11AC(v80);
      v44 = sub_1CEFD0DF0(v42, v43, v86);

      *(v32 + 24) = v44;
      _os_log_impl(&dword_1CEFC7000, v30, v31, "item %s could not be reconciled with error %@ for %{public}s", v32, 0x20u);
      sub_1CEFCCC44(v33, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v33, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v34, -1, -1);
      MEMORY[0x1D386CDC0](v32, -1, -1);
    }

    else
    {

      sub_1CEFD5338(v18, type metadata accessor for VFSItem);
    }

    (*(v76 + 1))(v79, v77);
    v65 = v82;
    v66 = v26;
    v65(0, v26);
  }

  else
  {
    v76 = type metadata accessor for VFSItem;
    v68 = v15;
    sub_1CEFDA0C4(v25, v15, type metadata accessor for VFSItem);
    v45 = v75;
    v79 = *(v75 + 16);
    v46 = swift_allocObject();
    v77 = v46;
    v47 = v9;
    v67 = v9;
    v48 = v81;
    *(v46 + 16) = v82;
    *(v46 + 24) = v48;
    v49 = v71;
    sub_1CEFDA34C(v15, v71, type metadata accessor for VFSItem);
    v50 = v73;
    v51 = v74;
    (*(v74 + 16))(v73, v72, v47);
    v52 = (*(v69 + 80) + 24) & ~*(v69 + 80);
    v53 = (v12 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
    v54 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
    v55 = (v54 + 15) & 0xFFFFFFFFFFFFFFF8;
    v56 = (*(v51 + 80) + v55 + 16) & ~*(v51 + 80);
    v57 = swift_allocObject();
    *(v57 + 16) = v45;
    sub_1CEFDA0C4(v49, v57 + v52, v76);
    v58 = v80;
    *(v57 + v53) = v80;
    v59 = v78;
    *(v57 + v54) = v78;
    v60 = (v57 + v55);
    v61 = v81;
    *v60 = v82;
    v60[1] = v61;
    (*(v51 + 32))(v57 + v56, v50, v67);
    v62 = swift_allocObject();
    v63 = v77;
    *(v62 + 16) = sub_1CF90325C;
    *(v62 + 24) = v63;

    sub_1CEFD09A0(v58);

    v64 = v59;

    sub_1CF7AAF88("itemID(for:requireProviderItemID:userRequest:completionHandler:)", 64, 2, 2, sub_1CF9034C4, v62, sub_1CF8FA45C, v57);

    sub_1CEFD5338(v68, type metadata accessor for VFSItem);
  }
}

void sub_1CF84F9B0(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void (*a6)(id, void), uint64_t a7, uint64_t a8)
{
  v90 = a6;
  v83[1] = a8;
  v84 = a5;
  v89 = a7;
  v87 = a4;
  v11 = type metadata accessor for VFSItem(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v86 = v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v85 = v83 - v15;
  v16 = sub_1CF9E6118();
  v88 = *(v16 - 8);
  v17 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v83 - v21;
  v23 = a1[3];
  v24 = a1[4];
  v25 = __swift_project_boxed_opaque_existential_1(a1, v23);
  v26 = *(*(a2 + 16) + 16);
  v27 = *(a3 + 8);
  v92 = *a3;
  v93 = v27;
  v28 = *(*v26 + 160);

  v29 = v25;
  v30 = v91;
  v28(&v94, &v92, v29, v23, v24);

  if (!v30)
  {
    v32 = v85;
    v31 = v86;
    v33 = v87;
    v83[0] = v16;
    v34 = v94;
    if (v94)
    {
      v35 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v36 = v32;
      sub_1CEFDA34C(a3, v32, type metadata accessor for VFSItem);
      v37 = v34;
      sub_1CEFD09A0(v33);
      v38 = sub_1CF9E6108();
      v39 = sub_1CF9E7298();

      sub_1CEFD0A98(v33);
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v91 = v41;
        v94 = v41;
        *v40 = 136315650;
        v42 = *(v32 + 8);
        v92 = *v32;
        v93 = v42;
        LODWORD(v86) = v39;
        v44 = VFSItemID.description.getter(v41, v43);
        v46 = v45;
        sub_1CEFD5338(v36, type metadata accessor for VFSItem);
        v47 = sub_1CEFD0DF0(v44, v46, &v94);

        *(v40 + 4) = v47;
        *(v40 + 12) = 2082;
        v48 = v37;
        v49 = NSFileProviderItemIdentifier.description.getter();
        v85 = v22;
        v50 = v49;
        v52 = v51;

        v53 = sub_1CEFD0DF0(v50, v52, &v94);

        *(v40 + 14) = v53;
        *(v40 + 22) = 2082;
        v54 = sub_1CEFD11AC(v33);
        v56 = sub_1CEFD0DF0(v54, v55, &v94);

        *(v40 + 24) = v56;
        _os_log_impl(&dword_1CEFC7000, v38, v86, "item %s reconciled with %{public}s for %{public}s", v40, 0x20u);
        v57 = v91;
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v57, -1, -1);
        MEMORY[0x1D386CDC0](v40, -1, -1);

        (*(v88 + 8))(v85, v83[0]);
      }

      else
      {

        sub_1CEFD5338(v32, type metadata accessor for VFSItem);
        (*(v88 + 8))(v22, v83[0]);
      }

      v79 = v90;
      v80 = [objc_allocWithZone(MEMORY[0x1E69673A0]) initWithProviderDomainID:v84 itemIdentifier:v37];
      v79(v80, 0);
    }

    else
    {
      v58 = fpfs_current_or_default_log();
      v59 = v19;
      sub_1CF9E6128();
      v60 = v31;
      sub_1CEFDA34C(a3, v31, type metadata accessor for VFSItem);
      v61 = v33;
      sub_1CEFD09A0(v33);
      v62 = sub_1CF9E6108();
      v63 = sub_1CF9E7298();
      sub_1CEFD0A98(v61);
      v64 = os_log_type_enabled(v62, v63);
      v65 = v83[0];
      v66 = v88;
      if (v64)
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v85 = v68;
        v94 = v68;
        *v67 = 136315394;
        v69 = *(v60 + 8);
        v92 = *v60;
        v93 = v69;
        v71 = VFSItemID.description.getter(v68, v70);
        v91 = v59;
        v73 = v72;
        sub_1CEFD5338(v60, type metadata accessor for VFSItem);
        v74 = sub_1CEFD0DF0(v71, v73, &v94);

        *(v67 + 4) = v74;
        *(v67 + 12) = 2082;
        v75 = sub_1CEFD11AC(v61);
        v77 = sub_1CEFD0DF0(v75, v76, &v94);

        *(v67 + 14) = v77;
        _os_log_impl(&dword_1CEFC7000, v62, v63, "item %s not reconciled after propagation attempt %{public}s", v67, 0x16u);
        v78 = v85;
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v78, -1, -1);
        MEMORY[0x1D386CDC0](v67, -1, -1);

        (*(v66 + 8))(v91, v83[0]);
      }

      else
      {

        sub_1CEFD5338(v60, type metadata accessor for VFSItem);
        (*(v66 + 8))(v59, v65);
      }

      v81 = v90;
      v82 = sub_1CF9E5928();
      v80 = FPItemNotFoundErrorAtURL();

      v81(0, v80);
    }
  }
}

void FPDDomainFPFSBackend.itemID(for:requireProviderItemID:request:completionHandler:)(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5)
{
  v29 = a3;
  v30 = a5;
  v28 = a4;
  v26 = a2;
  v7 = sub_1CF9E5A58();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *&v5[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v25 = [Strong log];
  }

  else
  {
    v25 = 0;
  }

  (*(v8 + 16))(&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = v13 + v9;
  v15 = (v13 + v9) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 23) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v8 + 32))(v17 + v13, v10, v7);
  *(v17 + v14) = v26 & 1;
  v19 = v28;
  v18 = v29;
  *(v17 + v15 + 8) = v29;
  *(v17 + v16) = v5;
  v20 = (v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8));
  v21 = v30;
  *v20 = v19;
  v20[1] = v21;
  v22 = v18;
  v23 = v5;

  v24 = v25;
  sub_1CF01001C(v25, "itemID(for:requireProviderItemID:request:completionHandler:)", 60, 2, sub_1CF8F0788, v17);
}

uint64_t sub_1CF850240(uint64_t a1, int a2, void *a3, uint64_t a4, void (*a5)(void, id), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5210, &unk_1CFA0F4B0);
  v12 = swift_allocBox();
  v14 = v13;
  v15 = *(v11 + 48);
  v16 = *(v11 + 64);
  v17 = sub_1CF9E5A58();
  (*(*(v17 - 8) + 16))(v14, a1, v17);
  *(v14 + v15) = a2;
  *(v14 + v16) = a3;
  v18 = a3;
  sub_1CF84D640(a1, a2, v12 | 0x8000000000000000, a5, a6);
}

uint64_t FPDDomainFPFSBackend.item(for:creatingPlaceholderIfMissing:ignoreAlternateContentsURL:request:completionHandler:)(void *a1, int a2, int a3, void *a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1CEFD4E9C([a1 identifier]);
  v13 = swift_allocObject();
  *(v13 + 16) = [a1 identifier];
  *(v13 + 24) = a4;
  v14 = swift_allocObject();
  *(v14 + 16) = a5;
  *(v14 + 24) = a6;
  v15 = a4;

  sub_1CEFD0300(v12, a2, a3, v13 | 0x9000000000000000, sub_1CF903268, v14);
}

uint64_t sub_1CF8505B0(void *a1, uint64_t a2, char *a3, unint64_t a4, void *a5, uint64_t a6, void *a7, int a8, char a9)
{
  LODWORD(v218) = a8;
  v225 = a7;
  v224 = a6;
  v221 = a5;
  v226 = a4;
  v228 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v201 = &v196 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v202 = &v196 - v15;
  v215 = sub_1CF9E6388();
  v214 = *(v215 - 8);
  v16 = *(v214 + 64);
  v17 = MEMORY[0x1EEE9AC00](v215);
  v213 = &v196 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v211 = &v196 - v19;
  v212 = sub_1CF9E6498();
  v210 = *(v212 - 8);
  v20 = *(v210 + 64);
  MEMORY[0x1EEE9AC00](v212);
  v209 = &v196 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v207 = &v196 - v24;
  v217 = sub_1CF9E63D8();
  v216 = *(v217 - 8);
  v25 = *(v216 + 64);
  v26 = MEMORY[0x1EEE9AC00](v217);
  v200 = &v196 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v206 = &v196 - v28;
  v220 = sub_1CF9E6448();
  v219 = *(v220 - 8);
  v29 = *(v219 + 64);
  MEMORY[0x1EEE9AC00](v220);
  v208 = &v196 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = sub_1CF9E73D8();
  v204 = *(v205 - 8);
  v31 = *(v204 + 64);
  MEMORY[0x1EEE9AC00](v205);
  v203 = &v196 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = sub_1CF9E6118();
  v222 = *(v223 - 1);
  v33 = v222[8];
  v34 = MEMORY[0x1EEE9AC00](v223);
  v36 = &v196 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v34);
  v39 = &v196 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v41 = &v196 - v40;
  v43 = a1[3];
  v42 = a1[4];
  v44 = __swift_project_boxed_opaque_existential_1(a1, v43);
  swift_beginAccess();
  v45 = a2;
  v46 = *(a2 + 16);
  v47 = *(v228 + 2);

  v48 = v227;
  sub_1CF554678(v47, 0, v44, v43, v42, &v238);

  if (v48)
  {
    return result;
  }

  v196 = v39;
  v198 = v47;
  v50 = v238;
  v51 = v239;
  v227 = v238;
  v199 = v239;
  if (v240 != 1)
  {
    v76 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v77 = v226;
    sub_1CEFD09A0(v226);
    v78 = sub_1CF9E6108();
    v79 = sub_1CF9E7298();
    sub_1CEFD0A98(v77);
    v80 = os_log_type_enabled(v78, v79);
    v81 = v223;
    v197 = 0;
    if (v80)
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v230 = v83;
      *v82 = 136315394;
      aBlock = v227;
      LOBYTE(v233) = v51;
      v85 = VFSItemID.description.getter(v83, v84);
      v87 = sub_1CEFD0DF0(v85, v86, &v230);

      *(v82 + 4) = v87;
      *(v82 + 12) = 2082;
      v88 = sub_1CEFD11AC(v226);
      v90 = sub_1CEFD0DF0(v88, v89, &v230);

      *(v82 + 14) = v90;
      _os_log_impl(&dword_1CEFC7000, v78, v79, "lookup %s on disk (request: %{public}s)", v82, 0x16u);
      swift_arrayDestroy();
      v91 = v83;
      v77 = v226;
      MEMORY[0x1D386CDC0](v91, -1, -1);
      MEMORY[0x1D386CDC0](v82, -1, -1);
    }

    (v222[1])(v41, v81);
    v92 = v225;
    v93 = v224;
    v94 = v228;
    v95 = v218;
    v96 = *(v198[4] + 16);
    type metadata accessor for VFSFileTree(0);
    v97 = swift_dynamicCastClassUnconditional();
    v98 = swift_allocObject();
    *(v98 + 16) = v221;
    *(v98 + 24) = v93;
    *(v98 + 32) = v77;
    *(v98 + 40) = v94;
    *(v98 + 48) = v92;
    *(v98 + 56) = v95 & 1;
    sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
    v225 = v97;
    v99 = v97[27];
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1CEFD09A0(v77);
    sub_1CEFCCCA4(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0]);
    v228 = v96;

    v100 = v92;
    v101 = v99;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
    sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
    v102 = v203;
    v103 = v205;
    sub_1CF9E77B8();
    v104 = sub_1CF9E73E8();

    (*(v204 + 8))(v102, v103);
    qos_class_self();
    v105 = v207;
    sub_1CF9E63B8();
    v106 = v216;
    v107 = *(v216 + 48);
    v108 = v217;
    if (v107(v105, 1, v217) == 1)
    {
      (*(v106 + 104))(v206, *MEMORY[0x1E69E7FA0], v108);
      v109 = v107(v105, 1, v108) == 1;
      v110 = v214;
      v111 = v105;
      v112 = v213;
      v113 = v209;
      v114 = v208;
      if (!v109)
      {
        sub_1CEFCCC44(v111, &unk_1EC4BE380, &qword_1CFA01BA0);
      }
    }

    else
    {
      (*(v106 + 32))(v206, v105, v108);
      v110 = v214;
      v112 = v213;
      v113 = v209;
      v114 = v208;
    }

    ObjectType = swift_getObjectType();
    sub_1CF9E6428();
    v134 = swift_allocObject();
    v135 = v227;
    *(v134 + 16) = v225;
    *(v134 + 24) = v135;
    *(v134 + 32) = v199;
    *(v134 + 40) = 0u;
    *(v134 + 56) = 0u;
    *(v134 + 72) = 0u;
    *(v134 + 88) = 0u;
    *(v134 + 104) = 0u;
    *(v134 + 120) = 0u;
    *(v134 + 136) = 0u;
    *(v134 + 152) = v104;
    *(v134 + 160) = sub_1CF9014F4;
    *(v134 + 168) = v98;

    swift_unknownObjectRetain();

    sub_1CEFD5828(0, v114, sub_1CF72A328, v134);

    (*(v219 + 8))(v114, v220);
    sub_1CF9E6478();
    v136 = v113;
    v137 = v211;
    sub_1CEFD5B64(v211);
    sub_1CEFD5BD8(v112);
    MEMORY[0x1D3869770](v136, v137, v112, ObjectType);
    v138 = *(v110 + 8);
    v139 = v112;
    v140 = v215;
    v138(v139, v215);
    v138(v137, v140);
    (*(v210 + 8))(v136, v212);
    sub_1CF9E7448();

    return swift_unknownObjectRelease();
  }

  v52 = v226;
  if (a9)
  {
    swift_beginAccess();
    v53 = *(v45 + 16);
    v54 = swift_allocObject();
    v55 = v224;
    *(v54 + 16) = v221;
    *(v54 + 24) = v55;
    v56 = v228;
    *(v54 + 32) = v52;
    *(v54 + 40) = v56;
    v57 = v225;
    *(v54 + 48) = v225;
    *(v54 + 56) = v218 & 1;
    v58 = objc_allocWithZone(MEMORY[0x1E696AE38]);
    sub_1CEFD09A0(v52);

    v59 = v57;

    v225 = [v58 init];
    v60 = swift_allocObject();
    *(v60 + 2) = sub_1CF90148C;
    *(v60 + 3) = v54;
    *(v60 + 4) = v52;
    sub_1CEFD09A0(v52);

    sub_1CEFD09A0(v52);

    v61 = fpfs_current_or_default_log();
    v62 = v196;
    sub_1CF9E6128();
    sub_1CEFD09A0(v52);
    sub_1CEFD09A0(v52);

    v63 = sub_1CF9E6108();
    v64 = sub_1CF9E7298();
    v65 = os_log_type_enabled(v63, v64);
    v228 = v60;
    if (v65)
    {
      LODWORD(v224) = v64;
      v197 = 0;
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v229 = v67;
      *v66 = 136315906;
      v68 = swift_beginAccess();
      v70 = *(v53 + 32);
      v71 = *(v53 + 40);
      if (*(v53 + 41))
      {
        v72 = v70;
        v73 = NSFileProviderItemIdentifier.description.getter();
        v75 = v74;
        sub_1CEFD0994(v70, v71, 1);
      }

      else
      {
        v230 = *(v53 + 32);
        v231 = v71;
        v73 = VFSItemID.description.getter(v68, v69);
        v75 = v170;
      }

      v171 = sub_1CEFD0DF0(v73, v75, &v229);

      *(v66 + 4) = v171;
      *(v66 + 12) = 2080;
      *(v66 + 14) = sub_1CEFD0DF0(0xD000000000000010, 0x80000001CFA2C3C0, &v229);
      *(v66 + 22) = 2080;
      v172 = v226;
      v173 = sub_1CEFD11AC(v226);
      v175 = v174;
      sub_1CEFD0A98(v172);
      sub_1CEFD0A98(v172);
      v176 = sub_1CEFD0DF0(v173, v175, &v229);

      *(v66 + 24) = v176;
      *(v66 + 32) = 2048;
      *(v66 + 34) = 0;
      _os_log_impl(&dword_1CEFC7000, v63, v224, "Lookup itemID %s with behavior %s request %s iteration %ld", v66, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v67, -1, -1);
      v177 = v66;
      v52 = v172;
      MEMORY[0x1D386CDC0](v177, -1, -1);

      (v222[1])(v196, v223);
      v60 = v228;
    }

    else
    {
      sub_1CEFD0A98(v52);
      sub_1CEFD0A98(v52);

      (v222[1])(v62, v223);
    }

    swift_beginAccess();
    v178 = *(v53 + 32);
    v179 = *(v53 + 40);
    if (*(v53 + 41))
    {
      v180 = qword_1EDEA34B0;
      v181 = v178;
      if (v180 != -1)
      {
        swift_once();
      }

      v182 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v184 = v183;
      if (v182 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v184 == v185)
      {

        sub_1CEFD0994(v178, v179, 1);
        v60 = v228;
LABEL_35:
        sub_1CF90CAC8(v52, sub_1CF796A0C, v60);
        v186 = v225;
LABEL_41:

        sub_1CEFD0A98(v52);

        sub_1CEFD0994(v227, v199, 1);
      }

      v187 = sub_1CF9E8048();

      sub_1CEFD0994(v178, v179, 1);
      v60 = v228;
      if (v187)
      {
        goto LABEL_35;
      }
    }

    else if (!v178 && v179 == 2)
    {
      goto LABEL_35;
    }

    v220 = v54;
    if (((v52 >> 58) & 0x3C | (v52 >> 1) & 3) == 0x1E)
    {
      v189 = *((v52 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v224 = v189;
    }

    else
    {
      v188 = swift_allocObject();
      *(v188 + 16) = v52;
      v224 = v188 | 0x7000000000000004;
      v189 = v52;
    }

    v186 = v225;
    sub_1CEFD09A0(v189);
    v190 = swift_allocObject();
    *(v190 + 16) = sub_1CF796A0C;
    *(v190 + 24) = v60;
    v191 = v198;
    *(v190 + 32) = v198;
    *(v190 + 40) = 2;
    *(v190 + 48) = v52;
    *(v190 + 56) = v53;
    *(v190 + 64) = 0;
    *(v190 + 72) = v186;
    *(v190 + 80) = 0;
    v192 = swift_allocObject();
    *(v192 + 16) = v53;
    *(v192 + 24) = v191;
    *(v192 + 32) = 0;
    *(v192 + 40) = sub_1CF796A90;
    *(v192 + 48) = v190;
    v193 = v224;
    *(v192 + 56) = v224;
    v194 = swift_allocObject();
    *(v194 + 16) = sub_1CF796A90;
    *(v194 + 24) = v190;

    sub_1CEFD09A0(v226);

    v195 = v186;
    sub_1CEFD09A0(v193);
    sub_1CF7AAF88("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF554464, v194, sub_1CF796A9C, v192);

    v52 = v226;

    sub_1CEFD0A98(v193);
    goto LABEL_41;
  }

  v115 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFD09A0(v52);
  sub_1CEFD0988(v50, v51, 1);
  v116 = sub_1CF9E6108();
  v117 = sub_1CF9E7298();
  sub_1CEFD0994(v50, v51, 1);
  sub_1CEFD0A98(v52);
  v118 = os_log_type_enabled(v116, v117);
  v119 = v222;
  if (v118)
  {
    v120 = v51;
    v121 = swift_slowAlloc();
    v122 = swift_slowAlloc();
    v228 = v36;
    v123 = v122;
    aBlock = v122;
    *v121 = 136315394;
    v124 = v50;
    v125 = NSFileProviderItemIdentifier.description.getter();
    v126 = v50;
    v128 = v127;
    sub_1CEFD0994(v126, v120, 1);
    v129 = sub_1CEFD0DF0(v125, v128, &aBlock);

    *(v121 + 4) = v129;
    *(v121 + 12) = 2082;
    v130 = sub_1CEFD11AC(v226);
    v132 = sub_1CEFD0DF0(v130, v131, &aBlock);

    *(v121 + 14) = v132;
    _os_log_impl(&dword_1CEFC7000, v116, v117, "lookup %s on provider (request: %{public}s)", v121, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v123, -1, -1);
    MEMORY[0x1D386CDC0](v121, -1, -1);

    (v119[1])(v228, v223);
  }

  else
  {

    (v119[1])(v36, v223);
  }

  v141 = v198;
  v142 = *(v198[5] + 16);
  type metadata accessor for FPFileTree();
  v143 = swift_dynamicCastClassUnconditional();
  v228 = v142;

  v144 = objc_sync_enter(v141);
  v145 = v221;
  if (v144)
  {
    MEMORY[0x1EEE9AC00](v144);
    *(&v196 - 2) = v141;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v196 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v197 = 0;
  v223 = *&v141[qword_1EDEADB30];
  v218 = v223;
  v146 = objc_sync_exit(v141);
  if (v146)
  {
    MEMORY[0x1EEE9AC00](v146);
    *(&v196 - 2) = v141;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v196 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v147 = swift_allocObject();
  v148 = v225;
  v147[2] = v226;
  v147[3] = v148;
  v149 = v224;
  v147[4] = v145;
  v147[5] = v149;
  v150 = swift_allocObject();
  v150[2] = sub_1CF90145C;
  v150[3] = v147;
  v151 = *(v143 + 160);
  v215 = *(v143 + 168);
  v222 = v151;
  v152 = v219;
  v153 = v202;
  v154 = v220;
  (*(v219 + 56))(v202, 1, 1, v220);
  v155 = swift_allocObject();
  *(v155 + 16) = sub_1CF90326C;
  *(v155 + 24) = v150;
  v156 = swift_allocObject();
  v157 = v227;
  v156[2] = v143;
  v156[3] = v157;
  v156[4] = v223;
  v156[5] = sub_1CF90326C;
  v223 = v156;
  v156[6] = v150;
  v158 = swift_allocObject();
  v158[2] = sub_1CF2BA178;
  v158[3] = v155;
  v159 = v215;
  v158[4] = v215;

  sub_1CEFD09A0(v226);

  v160 = v225;
  sub_1CEFD0988(v157, v199, 1);

  v221 = v218;
  v225 = v150;

  v226 = v147;

  v224 = v155;

  v161 = v159;

  v162 = fpfs_current_log();
  v163 = *(v161 + 16);
  v164 = v201;
  sub_1CEFCCBDC(v153, v201, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v152 + 48))(v164, 1, v154) == 1)
  {
    sub_1CEFCCC44(v164, &unk_1EC4BE370, qword_1CFA01B30);
    LODWORD(v220) = 0;
  }

  else
  {
    v165 = v200;
    sub_1CF9E6438();
    (*(v152 + 8))(v164, v154);
    LODWORD(v220) = sub_1CF9E63C8();
    (*(v216 + 8))(v165, v217);
  }

  v166 = swift_allocObject();
  v166[2] = v162;
  v166[3] = sub_1CF901468;
  v166[4] = v223;
  v236 = sub_1CF2BA17C;
  v237 = v166;
  aBlock = MEMORY[0x1E69E9820];
  v233 = 1107296256;
  v234 = sub_1CEFCA444;
  v235 = &block_descriptor_5651;
  v167 = _Block_copy(&aBlock);
  v168 = v162;

  v236 = sub_1CF901480;
  v237 = v158;
  aBlock = MEMORY[0x1E69E9820];
  v233 = 1107296256;
  v234 = sub_1CEFCA444;
  v235 = &block_descriptor_5654;
  v169 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v163, v222, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v220, v167, v169);

  sub_1CEFD0994(v227, v199, 1);
  _Block_release(v169);
  _Block_release(v167);

  sub_1CEFCCC44(v153, &unk_1EC4BE370, qword_1CFA01B30);
}

void sub_1CF851FB4(uint64_t a1, void (*a2)(id, uint64_t), void (*a3)(id, uint64_t), unint64_t a4, uint64_t a5, void *a6, int a7)
{
  v68 = a7;
  v69 = a6;
  v70 = a4;
  v71 = a5;
  v10 = sub_1CF9E6118();
  v65 = *(v10 - 8);
  v66 = v10;
  v11 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v64 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for VFSItem(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v67 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v63 = &v60 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v72 = &v60 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = (&v60 - v22);
  sub_1CEFCCBDC(a1, &v60 - v22, &unk_1EC4BF310, &unk_1CF9FDB30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v23;
    v25 = *v23;
    a2(v24, 1);
  }

  else if ((*(v14 + 48))(v23, 1, v13) == 1)
  {
    a2(0, 0);
  }

  else
  {
    v26 = v72;
    sub_1CEFDA0C4(v23, v72, type metadata accessor for VFSItem);
    v27 = fpfs_current_or_default_log();
    v28 = v64;
    sub_1CF9E6128();
    v29 = v26;
    v30 = v63;
    sub_1CEFDA34C(v29, v63, type metadata accessor for VFSItem);
    v31 = v70;
    sub_1CEFD09A0(v70);
    v32 = sub_1CF9E6108();
    v33 = sub_1CF9E7298();
    sub_1CEFD0A98(v31);
    v34 = os_log_type_enabled(v32, v33);
    v62 = a3;
    if (v34)
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v73 = v36;
      *v35 = 136315394;
      v61 = v14;
      v37 = v33;
      v38 = sub_1CF255338();
      v39 = v30;
      v40 = v38;
      v42 = v41;
      sub_1CEFD5338(v39, type metadata accessor for VFSItem);
      v43 = sub_1CEFD0DF0(v40, v42, &v73);

      *(v35 + 4) = v43;
      *(v35 + 12) = 2082;
      v44 = sub_1CEFD11AC(v31);
      v46 = sub_1CEFD0DF0(v44, v45, &v73);

      *(v35 + 14) = v46;
      v47 = v37;
      v14 = v61;
      _os_log_impl(&dword_1CEFC7000, v32, v47, "resolved %s on disk (request: %{public}s)", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v36, -1, -1);
      MEMORY[0x1D386CDC0](v35, -1, -1);
    }

    else
    {

      sub_1CEFD5338(v30, type metadata accessor for VFSItem);
    }

    (*(v65 + 8))(v28, v66);
    v48 = a2;
    v66 = *(v71 + 16);
    v49 = swift_allocObject();
    v50 = v62;
    *(v49 + 16) = v48;
    *(v49 + 24) = v50;
    v51 = v67;
    sub_1CEFDA34C(v72, v67, type metadata accessor for VFSItem);
    v52 = (*(v14 + 80) + 40) & ~*(v14 + 80);
    v53 = (v15 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
    v54 = swift_allocObject();
    v55 = v69;
    *(v54 + 16) = v69;
    *(v54 + 24) = v68 & 1;
    *(v54 + 32) = v71;
    sub_1CEFDA0C4(v51, v54 + v52, type metadata accessor for VFSItem);
    v56 = v70;
    *(v54 + v53) = v70;
    v57 = (v54 + ((v53 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v57 = v48;
    v57[1] = v50;
    v58 = swift_allocObject();
    *(v58 + 16) = sub_1CF2BA178;
    *(v58 + 24) = v49;

    sub_1CEFD09A0(v56);

    v59 = v55;

    sub_1CF7AAF88("item(for:creatingPlaceholderIfMissing:ignoreAlternateContentsURL:userRequest:completionHandler:)", 96, 2, 2, sub_1CF9034C8, v58, sub_1CF901528, v54);

    sub_1CEFD5338(v72, type metadata accessor for VFSItem);
  }
}

void sub_1CF8525E4(uint64_t a1, void (*a2)(id, uint64_t), void (*a3)(id, uint64_t), unint64_t a4, uint64_t a5, void *a6, int a7)
{
  v61 = a7;
  v62 = a6;
  v63 = a5;
  v64 = a4;
  v10 = sub_1CF9E6118();
  v57 = *(v10 - 8);
  v58 = v10;
  v11 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v65 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for VFSItem(0);
  v59 = *(v13 - 8);
  v14 = *(v59 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v60 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v55 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v55 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = (&v55 - v23);
  sub_1CEFCCBDC(a1, &v55 - v23, &unk_1EC4BF300, &unk_1CFA006B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v24;
    v26 = *v24;
    a2(v25, 1);
  }

  else
  {
    v55 = a2;
    v56 = a3;
    sub_1CEFDA0C4(v24, v20, type metadata accessor for VFSItem);
    v27 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    sub_1CEFDA34C(v20, v18, type metadata accessor for VFSItem);
    v28 = v64;
    sub_1CEFD09A0(v64);
    v29 = sub_1CF9E6108();
    v30 = sub_1CF9E7298();
    sub_1CEFD0A98(v28);
    v31 = v20;
    if (os_log_type_enabled(v29, v30))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v66 = v33;
      *v32 = 136315394;
      v34 = sub_1CF255338();
      v36 = v35;
      sub_1CEFD5338(v18, type metadata accessor for VFSItem);
      v37 = sub_1CEFD0DF0(v34, v36, &v66);

      *(v32 + 4) = v37;
      *(v32 + 12) = 2082;
      v38 = sub_1CEFD11AC(v28);
      v40 = sub_1CEFD0DF0(v38, v39, &v66);

      *(v32 + 14) = v40;
      _os_log_impl(&dword_1CEFC7000, v29, v30, "resolved %s on disk (request: %{public}s)", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v33, -1, -1);
      MEMORY[0x1D386CDC0](v32, -1, -1);
    }

    else
    {

      sub_1CEFD5338(v18, type metadata accessor for VFSItem);
    }

    (*(v57 + 8))(v65, v58);
    v41 = v55;
    v42 = v56;
    v43 = v63;
    v65 = *(v63 + 16);
    v44 = swift_allocObject();
    *(v44 + 16) = v41;
    *(v44 + 24) = v42;
    v45 = v60;
    sub_1CEFDA34C(v31, v60, type metadata accessor for VFSItem);
    v46 = (*(v59 + 80) + 40) & ~*(v59 + 80);
    v47 = (v14 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
    v48 = swift_allocObject();
    v59 = v31;
    v49 = v48;
    v50 = v62;
    *(v48 + 16) = v62;
    *(v48 + 24) = v61 & 1;
    *(v48 + 32) = v43;
    sub_1CEFDA0C4(v45, v48 + v46, type metadata accessor for VFSItem);
    v51 = v64;
    *(v49 + v47) = v64;
    v52 = (v49 + ((v47 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v52 = v41;
    v52[1] = v42;
    v53 = swift_allocObject();
    *(v53 + 16) = sub_1CF2BA178;
    *(v53 + 24) = v44;

    sub_1CEFD09A0(v51);

    v54 = v50;

    sub_1CF7AAF88("item(for:creatingPlaceholderIfMissing:ignoreAlternateContentsURL:userRequest:completionHandler:)", 96, 2, 2, sub_1CF9034C8, v53, sub_1CF9018E4, v49);

    sub_1CEFD5338(v59, type metadata accessor for VFSItem);
  }
}

void sub_1CF852BAC(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5, unint64_t a6, void (*a7)(void, void), uint64_t a8, uint64_t a9, uint64_t a10)
{
  v42 = a7;
  v43 = a8;
  v39 = a6;
  v40 = a5;
  v41 = a4;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBA8, &qword_1CFA12B20);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v38 - v15;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v18 = Strong, v19 = [Strong indexer], v18, v19))
  {
    v20 = [v19 needsAuthentication];

    v21 = 22;
    if (v20)
    {
      v21 = 30;
    }
  }

  else
  {
    v21 = 22;
  }

  if (a3)
  {
    v22 = v21 | 0x40;
  }

  else
  {
    v22 = v21;
  }

  v23 = a1[3];
  v24 = a1[4];
  v25 = __swift_project_boxed_opaque_existential_1(a1, v23);
  v26 = sub_1CEFE58F0(MEMORY[0x1E69E7CC0]);
  v27 = type metadata accessor for VFSItem(0);
  v28 = sub_1CEFCCCA4(qword_1EDEA8860, type metadata accessor for VFSFileTree);
  v29 = sub_1CEFCCCA4(qword_1EDEABC30, type metadata accessor for VFSItem);
  v30 = sub_1CF76BB00(v40, v22, 0, v26, v25, v27, v23, v28, &off_1F4BF8588, v29, v24);

  v31 = v30;
  if (sub_1CEFF96D0(v31))
  {
    v32 = sub_1CF9E6F08();
    (*(*(v32 - 8) + 56))(v16, 1, 1, v32);
    v33 = swift_allocObject();
    v33[2] = 0;
    v33[3] = 0;
    v33[4] = v31;
    v33[5] = a2;
    v34 = v39;
    v35 = v42;
    v36 = v43;
    v33[6] = v39;
    v33[7] = v35;
    v33[8] = v36;
    v37 = a2;
    sub_1CEFD09A0(v34);

    sub_1CF6FCFEC(0, 0, v16, a10, v33);
  }

  else
  {

    v42(v31, 0);
  }
}

uint64_t sub_1CF852E9C(uint64_t a1, unint64_t a2, void *a3, void (*a4)(void, void), uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBA8, &qword_1CFA12B20);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v52 = &v44 - v12;
  v13 = sub_1CF9E6118();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v19 = *(a1 + 8);
  if ((v19 & 1) == 0)
  {
    v50 = a3;
    v51 = v18;
    v22 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    sub_1CF0BA8A4(v18);
    sub_1CEFD09A0(a2);
    v23 = sub_1CF9E6108();
    v24 = a2;
    v25 = sub_1CF9E7298();
    sub_1CF2F6594(v18, 0);
    v49 = v24;
    sub_1CEFD0A98(v24);
    if (os_log_type_enabled(v23, v25))
    {
      v46 = v19;
      v47 = a4;
      v48 = a5;
      v26 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v53 = v45;
      *v26 = 136315394;
      if (v18)
      {
        v27 = [v51 description];
        v28 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v30 = v29;
      }

      else
      {
        v30 = 0xE500000000000000;
        v28 = 0x3E6C696E3CLL;
      }

      v33 = sub_1CEFD0DF0(v28, v30, &v53);

      *(v26 + 4) = v33;
      *(v26 + 12) = 2082;
      v34 = sub_1CEFD11AC(v49);
      v36 = sub_1CEFD0DF0(v34, v35, &v53);

      *(v26 + 14) = v36;
      _os_log_impl(&dword_1CEFC7000, v23, v25, "resolved %s on provider (request: %{public}s)", v26, 0x16u);
      v37 = v45;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v37, -1, -1);
      MEMORY[0x1D386CDC0](v26, -1, -1);

      (*(v14 + 8))(v17, v13);
      a4 = v47;
      a5 = v48;
      v19 = v46;
      v31 = v50;
      v32 = v51;
      if (!v18)
      {
        goto LABEL_13;
      }
    }

    else
    {

      (*(v14 + 8))(v17, v13);
      v31 = v50;
      v32 = v51;
      if (!v18)
      {
        goto LABEL_13;
      }
    }

    sub_1CF0BA8A4(v18);
    if (sub_1CEFF96D0(v32))
    {
      v38 = sub_1CF9E6F08();
      v39 = v52;
      (*(*(v38 - 8) + 56))(v52, 1, 1, v38);
      v40 = swift_allocObject();
      v40[2] = 0;
      v40[3] = 0;
      v40[4] = v32;
      v40[5] = v31;
      v41 = v49;
      v40[6] = v49;
      v40[7] = a4;
      v40[8] = a5;
      sub_1CEFD09A0(v41);
      v42 = v31;

      sub_1CF6FCFEC(0, 0, v39, &unk_1CFA18268, v40);

      return sub_1CF2F6594(v18, v19);
    }

    sub_1CF2F6594(v18, 0);
LABEL_13:
    a4(v18, 0);
    return sub_1CF2F6594(v18, v19);
  }

  v53 = *a1;
  v20 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  swift_willThrowTypedImpl();
  v21 = v18;
  a4(v18, 1);
  sub_1CF2F6594(v18, 1);
  return sub_1CF2F6594(v18, v19);
}

void FPDDomainFPFSBackend.item(for:options:request:completionHandler:)(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, void *a5)
{
  v6 = v5;
  v31 = a3;
  v32 = a5;
  v38 = a4;
  v33 = a2;
  v8 = sub_1CF9E5A58();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v36 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5200, "hx\t");
  v37 = swift_allocBox();
  v13 = v12;
  v14 = *(v11 + 48);
  v15 = *(v11 + 64);
  v16 = *(v9 + 16);
  v34 = a1;
  v35 = v8;
  v16(v12, a1, v8);
  *(v13 + v14) = v33;
  v17 = v31;
  *(v13 + v15) = v31;
  v18 = swift_allocObject();
  v19 = v32;
  *(v18 + 16) = v38;
  *(v18 + 24) = v19;
  v33 = *&v6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue];
  v38 = v6;
  Strong = swift_unknownObjectWeakLoadStrong();
  v21 = v17;

  if (Strong)
  {
    v32 = [Strong log];
  }

  else
  {
    v32 = 0;
  }

  v22 = v36;
  v31 = v37 | 0x8000000000000006;
  v23 = v35;
  v16(v36, v34, v35);
  v24 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v25 = (v10 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  v27 = v38;
  *(v26 + 16) = v38;
  (*(v9 + 32))(v26 + v24, v22, v23);
  *(v26 + v25) = v31;
  v28 = v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v28 = sub_1CF903268;
  *(v28 + 8) = v18;
  *(v28 + 16) = 257;
  v29 = v27;

  v30 = v32;
  sub_1CF01001C(v32, "item(for:userRequest:hideIgnoredDescendents:tryOptimizeResponsiveness:completionHandler:)", 89, 2, sub_1CF8F0834, v26);
}

uint64_t sub_1CF853730(uint64_t a1, uint64_t a2)
{
  v215 = 0;
  v230 = *MEMORY[0x1E69E9840];
  v4 = sub_1CF9E53C8();
  v188 = *(v4 - 8);
  v189 = v4;
  v5 = *(v188 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v187 = &v181 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for VFSItem(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v210 = &v181 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CF9E6118();
  v211 = *(v11 - 8);
  v212 = v11;
  v12 = *(v211 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v205 = &v181 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v204 = &v181 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v186 = &v181 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v181 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v191 = &v181 - v22;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE000, &unk_1CFA006A0);
  v23 = *(*(v199 - 8) + 64);
  MEMORY[0x1EEE9AC00](v199);
  v192 = (&v181 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v25);
  v190 = (&v181 - v26);
  MEMORY[0x1EEE9AC00](v27);
  v193 = (&v181 - v28);
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE2F0, qword_1CFA04220);
  v29 = *(*(v200 - 8) + 64);
  MEMORY[0x1EEE9AC00](v200);
  v196 = &v181 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v201 = (&v181 - v32);
  v33 = sub_1CF9E5A58();
  v197 = *(v33 - 8);
  v198 = v33;
  v34 = *(v197 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v203 = &v181 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v202 = &v181 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v208 = &v181 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v194 = &v181 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v181 - v44;
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v181 - v47;
  sub_1CEFCCBDC(a2, &v181 - v47, &unk_1EC4BEC00, &unk_1CF9FCB60);
  v214 = v48;
  sub_1CEFCCBDC(v48, v45, &unk_1EC4BEC00, &unk_1CF9FCB60);
  v195 = v8;
  v49 = v8 + 48;
  v50 = *(v8 + 48);
  v209 = v7;
  LODWORD(v8) = v50(v45, 1, v7);
  sub_1CEFCCC44(v45, &unk_1EC4BEC00, &unk_1CF9FCB60);
  v206 = a1;
  if (v8 != 1)
  {
    v205 = v50;
    v207 = v49;
    v60 = v213;
    v54 = v214;
    v62 = v209;
    v61 = v210;
    goto LABEL_7;
  }

  memset(&v229, 0, sizeof(v229));
  sub_1CF9E5A18();
  v51 = sub_1CF9E6978();

  v52 = lstat((v51 + 32), &v229);

  if (v52 < 0)
  {
    v85 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v86 = sub_1CF9E6108();
    v87 = sub_1CF9E72A8();
    v88 = os_log_type_enabled(v86, v87);
    v89 = v214;
    if (v88)
    {
      v90 = swift_slowAlloc();
      *v90 = 67109120;
      *(v90 + 4) = MEMORY[0x1D38683F0]();
      _os_log_impl(&dword_1CEFC7000, v86, v87, "Error running lstat for root URL fast path: %d", v90, 8u);
      MEMORY[0x1D386CDC0](v90, -1, -1);
    }

    (*(v211 + 8))(v20, v212);
    v91 = v89;
    goto LABEL_30;
  }

  v207 = v49;
  Strong = swift_unknownObjectWeakLoadStrong();
  v54 = v214;
  if (Strong)
  {
    v55 = v50;
    v56 = Strong;
    v57 = [Strong provider];

    v58 = v215;
    if (v57)
    {
      v59 = [v57 descriptor];

      LODWORD(v185) = [v59 wantsBundleBitOnlyPackageDetection];
    }

    else
    {
      LODWORD(v185) = 0;
    }

    v50 = v55;
    v92 = sub_1CEFCE64C();
    if (v58)
    {
      goto LABEL_26;
    }
  }

  else
  {
    LODWORD(v185) = 0;
    v58 = v215;
    v92 = sub_1CEFCE64C();
    if (v58)
    {
LABEL_26:
      v105 = fpfs_current_or_default_log();
      v106 = v205;
      sub_1CF9E6128();
      v107 = v58;
      v108 = sub_1CF9E6108();
      v109 = sub_1CF9E72A8();

      if (os_log_type_enabled(v108, v109))
      {
        v110 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        *v110 = 138412290;
        swift_getErrorValue();
        v112 = Error.prettyDescription.getter(v218);
        *(v110 + 4) = v112;
        *v111 = v112;
        _os_log_impl(&dword_1CEFC7000, v108, v109, "Error constructing VFSLookupScope for root URL fast path: %@", v110, 0xCu);
        sub_1CEFCCC44(v111, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v111, -1, -1);
        MEMORY[0x1D386CDC0](v110, -1, -1);
      }

      (*(v211 + 8))(v106, v212);
LABEL_29:
      v91 = v54;
LABEL_30:
      sub_1CEFCCC44(v91, &unk_1EC4BEC00, &unk_1CF9FCB60);
      result = 0;
LABEL_31:
      v114 = *MEMORY[0x1E69E9840];
      return result;
    }
  }

  v93 = v92;
  v215 = v58;
  st_dev = v229.st_dev;
  v95 = type metadata accessor for VFSLookupScope();
  v96 = *(v95 + 48);
  v97 = *(v95 + 52);
  v98 = swift_allocObject();
  *(v98 + 40) = 0;
  *(v98 + 48) = 1;
  v99 = sub_1CF001108(MEMORY[0x1E69E7CC0]);
  *(v98 + 56) = 0;
  *(v98 + 96) = v99;
  *(v98 + 64) = sub_1CF36581C;
  *(v98 + 72) = 0;
  *(v98 + 80) = v185;
  *(v98 + 84) = 2;
  *(v98 + 88) = 0;
  *(v98 + 90) = 0;
  v100 = v203;
  v101 = st_dev;
  v58 = v215;
  sub_1CF3658E0(v203, v93, v101, 0, &v225);
  if (v58)
  {

    sub_1CF2B9AAC(v98 + 64);
    v102 = *(v98 + 96);

    v103 = *(*v98 + 48);
    v104 = *(*v98 + 52);
    swift_deallocPartialClassInstance();
    v54 = v214;
    goto LABEL_26;
  }

  v215 = 0;
  v182 = (v98 + 56);
  v115 = v225;
  LODWORD(v205) = v226;
  v185 = *(&v226 + 1);
  LODWORD(v184) = v227;

  v116 = v197;
  v117 = v100;
  v118 = v198;
  v119 = *(v197 + 32);
  v119(v202, v117, v198);
  *(v98 + 16) = v205;
  *(v98 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_rootURLs) = v115;
  if (!*(v115 + 16))
  {
    goto LABEL_67;
  }

  v205 = v50;
  (*(v116 + 16))(v98 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_mainRootURL, v115 + ((*(v116 + 80) + 32) & ~*(v116 + 80)), v118);
  *(v98 + 32) = *(&v115 + 1);
  if (!*(*(&v115 + 1) + 16))
  {
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
  }

  *(v98 + 24) = *(*(&v115 + 1) + 32);
  v119((v98 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_trashURL), v202, v118);
  *(v98 + 40) = v185;
  *(v98 + 48) = v184;
  *(v98 + 49) = 0;
  v120 = type metadata accessor for VFSFileTree(0);

  sub_1CF9E5A18();
  fpfs_openflags_0(0x208000u);
  sub_1CF9E6978();
  v121 = openat_s();

  v123 = v201;
  v183 = v98;
  if (v121 < 0)
  {
    v151 = MEMORY[0x1D38683F0](v122);
    v227 = 0;
    v225 = 0u;
    v226 = 0u;
    LOBYTE(v228) = 19;
    v146 = sub_1CF19BBE4(v151, &v225);
    sub_1CF1969CC(&v225);
    swift_willThrow();

    v60 = v213;
    v54 = v214;
    v62 = v209;
LABEL_54:
    v154 = v146;
    LODWORD(v225) = sub_1CF9E5328();
    sub_1CF196978();
    v155 = sub_1CF9E5658();

    if ((v155 & 1) == 0)
    {
      v159 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v160 = v146;
      v161 = sub_1CF9E6108();
      v162 = sub_1CF9E72A8();

      if (os_log_type_enabled(v161, v162))
      {
        v163 = swift_slowAlloc();
        v164 = swift_slowAlloc();
        *v163 = 138412290;
        swift_getErrorValue();
        v165 = Error.prettyDescription.getter(v217);
        *(v163 + 4) = v165;
        *v164 = v165;
        _os_log_impl(&dword_1CEFC7000, v161, v162, "Error looking up root item for root URL fast path: %@", v163, 0xCu);
        sub_1CEFCCC44(v164, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v164, -1, -1);
        MEMORY[0x1D386CDC0](v163, -1, -1);
      }

      (*(v211 + 8))(v191, v212);
      goto LABEL_29;
    }

    sub_1CEFCCC44(v54, &unk_1EC4BEC00, &unk_1CF9FCB60);

    *v123 = xmmword_1CF9FD930;
    *(v123 + 16) = 2;
    swift_storeEnumTagMultiPayload();
    v61 = v210;
    v152 = v195;
    v149 = v196;
    goto LABEL_56;
  }

  v202 = *(v98 + 24);
  v124 = v182;
  os_unfair_lock_lock(v182);
  v126 = *(v98 + 64);
  v125 = *(v98 + 72);
  v127 = *(v98 + 88);
  LODWORD(v203) = v121;
  LODWORD(v198) = *(v98 + 89);
  LODWORD(v197) = *(v98 + 90);

  v128 = *(v98 + 80);
  os_unfair_lock_unlock(v124);
  v184 = &v181;
  MEMORY[0x1EEE9AC00](v129);
  *(&v181 - 10) = v120;
  *(&v181 - 18) = v121;
  *(&v181 - 7) = 0;
  *(&v181 - 6) = 0;
  *(&v181 - 8) = v98;
  *(&v181 - 40) = 2;
  *(&v181 - 4) = 0;
  *(&v181 - 3) = 0;
  LOBYTE(v179) = -1;
  v180 = 0;
  v227 = v126;
  v228 = v125;
  *&v225 = MEMORY[0x1E69E9820];
  *(&v225 + 1) = 1107296256;
  *&v226 = sub_1CEFDB088;
  *(&v226 + 1) = &block_descriptor_5518;
  v130 = _Block_copy(&v225);
  v185 = v125;

  v182 = v130;
  v220 = v130;
  v221 = v128;
  v222 = v127;
  v223 = v198;
  v224 = v197;
  sub_1CEFDB034();
  v131 = swift_allocError();
  *v132 = 6;
  *(v132 + 8) = 0u;
  *(v132 + 24) = 0u;
  *(v132 + 40) = 19;
  v133 = v193;
  *v193 = v131;
  swift_storeEnumTagMultiPayload();
  v134 = swift_allocObject();
  v134[2] = v133;
  v134[3] = sub_1CEFDB7A0;
  v134[4] = &v181 - 12;
  v135 = swift_allocObject();
  *(v135 + 16) = sub_1CEFDB37C;
  *(v135 + 24) = v134;
  v227 = sub_1CEFDB240;
  v228 = v135;
  *&v225 = MEMORY[0x1E69E9820];
  *(&v225 + 1) = 1107296256;
  *&v226 = sub_1CEFDB270;
  *(&v226 + 1) = &block_descriptor_5527;
  v136 = _Block_copy(&v225);

  v137 = fpfs_fgetfileattrs_detailed();
  _Block_release(v136);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    goto LABEL_69;
  }

  if (v137)
  {
    swift_getErrorValue();
    v139 = v216;
    v140 = swift_allocError();
    *v141 = 6;
    *(v141 + 8) = 0u;
    *(v141 + 24) = 0u;
    *(v141 + 40) = 19;
    v142 = v137;
    v143 = sub_1CF199074(v140, v139);

    v144 = v190;
    *v190 = v143;
    swift_storeEnumTagMultiPayload();
    sub_1CEFDA9E0(v144, v133, &qword_1EC4BE000, &unk_1CFA006A0);
  }

  v145 = v192;
  sub_1CEFCCBDC(v133, v192, &qword_1EC4BE000, &unk_1CFA006A0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    v123 = v201;
    sub_1CEFE55D0(v145, v201, &unk_1EC4BE2F0, qword_1CFA04220);
    sub_1CEFCCC44(v133, &qword_1EC4BE000, &unk_1CFA006A0);

    _Block_release(v182);

    v60 = v213;
    v54 = v214;
    v62 = v209;
    v149 = v196;
    goto LABEL_50;
  }

  *&v225 = *v145;
  v146 = v225;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  swift_willThrowTypedImpl();

  sub_1CEFCCC44(v133, &qword_1EC4BE000, &unk_1CFA006A0);

  _Block_release(v182);

  v147 = v146;
  LODWORD(v225) = sub_1CF9E52A8();
  sub_1CF196978();
  v148 = sub_1CF9E5658();

  v60 = v213;
  v54 = v214;
  v149 = v196;
  if ((v148 & 1) == 0)
  {
    close(v203);
    v62 = v209;
    v123 = v201;
    goto LABEL_54;
  }

  v123 = v201;
  *v201 = xmmword_1CF9FD940;
  *(v123 + 16) = 2;
  swift_storeEnumTagMultiPayload();
  v62 = v209;
LABEL_50:
  close(v203);

  sub_1CEFCCC44(v54, &unk_1EC4BEC00, &unk_1CF9FCB60);
  v61 = v210;
  v152 = v195;
LABEL_56:
  sub_1CEFE55D0(v123, v149, &unk_1EC4BE2F0, qword_1CFA04220);
  v156 = (v152 + 56);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1CEFCCC44(v149, &unk_1EC4BE2F0, qword_1CFA04220);
    v157 = 1;
    v158 = v194;
  }

  else
  {
    v158 = v194;
    sub_1CEFDA0C4(v149, v194, type metadata accessor for VFSItem);
    v157 = 0;
  }

  (*v156)(v158, v157, 1, v62);
  sub_1CEFE55D0(v158, v54, &unk_1EC4BEC00, &unk_1CF9FCB60);
LABEL_7:
  v63 = v208;
  sub_1CEFCCBDC(v54, v208, &unk_1EC4BEC00, &unk_1CF9FCB60);
  if ((v205)(v63, 1, v62) == 1)
  {
    sub_1CEFCCC44(v63, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v64 = fpfs_current_or_default_log();
    v65 = v204;
    sub_1CF9E6128();
    v66 = sub_1CF9E6108();
    v67 = sub_1CF9E72A8();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_1CEFC7000, v66, v67, "Nil item for root URL fast path", v68, 2u);
      MEMORY[0x1D386CDC0](v68, -1, -1);
    }

    (*(v211 + 8))(v65, v212);
    goto LABEL_29;
  }

  sub_1CEFDA0C4(v63, v61, type metadata accessor for VFSItem);
  v69 = *(v60 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_providerDomainID);
  v70 = swift_unknownObjectWeakLoadStrong();
  if (!v70)
  {
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v71 = v70;
  v72 = sub_1CF2CD4D0(v61, v69, v70, 1);

  v73 = sub_1CF9E5928();
  v74 = v72;
  [v72 setFileURL_];

  v75 = v61 + *(v62 + 28);
  if (*(v75 + *(type metadata accessor for ItemMetadata() + 72)) != 1)
  {
    goto LABEL_35;
  }

  v76 = sub_1CF9E5A18();
  MEMORY[0x1EEE9AC00](v76);
  MEMORY[0x1EEE9AC00](v77);
  v179 = sub_1CF9011FC;
  v180 = v78;
  v219 = 256;
  *&v225 = 0;
  v79 = swift_allocObject();
  v79[2] = &v219;
  v79[3] = sub_1CF901218;
  v79[4] = &v181 - 4;
  v79[5] = &v225;
  v80 = swift_allocObject();
  *(v80 + 16) = sub_1CF902C7C;
  *(v80 + 24) = v79;
  v229.st_atimespec.tv_sec = sub_1CF50EB9C;
  v229.st_atimespec.tv_nsec = v80;
  *&v229.st_dev = MEMORY[0x1E69E9820];
  v229.st_ino = 1107296256;
  *&v229.st_uid = sub_1CF005DF8;
  *&v229.st_rdev = &block_descriptor_5538;
  v81 = _Block_copy(&v229);

  sub_1CF9E6978();
  LODWORD(v60) = fpfs_openat();

  _Block_release(v81);

  v82 = swift_isEscapingClosureAtFileLocation();

  if (v82)
  {
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v84 = v225;
  v61 = v210;
  if (v225)
  {
    swift_willThrow();

LABEL_34:

LABEL_35:
    sub_1CEFD5338(v61, type metadata accessor for VFSItem);
    sub_1CEFCCC44(v54, &unk_1EC4BEC00, &unk_1CF9FCB60);
    result = v74;
    goto LABEL_31;
  }

  if ((v60 & 0x80000000) == 0)
  {
    if ((v219 & 0x100) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_71;
  }

  if (MEMORY[0x1D38683F0](v83))
  {
    if (MEMORY[0x1D38683F0]() == 9939394)
    {
      v150 = [objc_opt_self() fp:2 errorForDataProtectionClass:?];
    }

    else
    {
      MEMORY[0x1D38683F0]();
      v153 = sub_1CF9E6138();
      if ((v153 & 0x100000000) != 0)
      {
        v229.st_dev = 22;
      }

      else
      {
        v229.st_dev = v153;
      }

      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CEFCCCA4(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
      v166 = v187;
      v167 = v189;
      sub_1CF9E57D8();
      v150 = sub_1CF9E53A8();
      (*(v188 + 8))(v166, v167);
    }

    swift_willThrow();

    goto LABEL_35;
  }

LABEL_72:
  *&v229.st_dev = 0;
  v229.st_ino = 0xE000000000000000;
  sub_1CF9E7948();

  *&v229.st_dev = 0xD00000000000001ALL;
  v229.st_ino = 0x80000001CFA2DF30;
  LODWORD(v220) = v60;
  v168 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v168);

  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
  v169 = *&v229.st_dev;
  st_ino = v229.st_ino;
  v171 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v172 = sub_1CF9E6108();
  v173 = sub_1CF9E72B8();

  if (os_log_type_enabled(v172, v173))
  {
    v174 = swift_slowAlloc();
    v175 = swift_slowAlloc();
    *&v229.st_dev = v175;
    *v174 = 136315650;
    v176 = sub_1CF9E7988();
    v178 = sub_1CEFD0DF0(v176, v177, &v229.st_dev);

    *(v174 + 4) = v178;
    *(v174 + 12) = 2048;
    *(v174 + 14) = 315;
    *(v174 + 22) = 2080;
    *(v174 + 24) = sub_1CEFD0DF0(v169, st_ino, &v229.st_dev);
    _os_log_impl(&dword_1CEFC7000, v172, v173, "[ASSERT] ‼️  %s:%lu: %s", v174, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v175, -1, -1);
    MEMORY[0x1D386CDC0](v174, -1, -1);
  }

  (*(v211 + 8))(v186, v212);
  LODWORD(v180) = 0;
  v179 = 315;
  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF85517C(int a1, uint64_t a2, void *a3)
{
  v36 = a3;
  v5 = sub_1CF9E5A58();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v26[-v12];
  v14 = type metadata accessor for VFSDetachedRootBookmark();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v26[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = sub_1CEFCE64C();
  if (!v3)
  {
    v28 = 0;
    v29 = v6;
    v27 = a1;
    v19 = v36;
    if (*(result + 16))
    {
      v20 = v29;
      (*(v29 + 16))(v13, result + ((*(v20 + 80) + 32) & ~*(v20 + 80)), v5);

      (*(v20 + 56))(v13, 0, 1, v5);
    }

    else
    {

      (*(v29 + 56))(v13, 1, 1, v5);
    }

    v21 = v28;
    result = sub_1CF36C8E0(v27, v13, v17);
    if (!v21)
    {
      v22 = &v17[*(v14 + 20)];
      v24 = *v22;
      v23 = v22[1];
      v34 = v24;
      v35 = v23;
      v32 = 47;
      v33 = 0xE100000000000000;
      v30 = 58;
      v31 = 0xE100000000000000;
      sub_1CEFE4E68();
      sub_1CF9E7668();
      sub_1CF9E5958();

      v25 = sub_1CF9E5928();
      (*(v29 + 8))(v9, v5);
      [v19 setDetachedRootLogicalURL_];

      return sub_1CEFD5338(v17, type metadata accessor for VFSDetachedRootBookmark);
    }
  }

  return result;
}

void sub_1CF85547C(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void, void), uint64_t a5, char a6, int a7)
{
  v59 = a7;
  v60 = a4;
  v61 = a3;
  v11 = sub_1CF9E5A58();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v58 = &v50[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v50[-v16];
  v18 = sub_1CF9E6118();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v23 = &v50[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(a1 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend___fpfs))
  {
    goto LABEL_8;
  }

  if (*(a1 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_invalidated))
  {
    goto LABEL_8;
  }

  v54 = v21;
  v55 = v17;
  v56 = v20;
  v57 = a2;
  v24 = sub_1CEFCE64C();
  a2 = v57;
  v25 = sub_1CF38431C(v57, v24);

  if (!v25)
  {
    goto LABEL_8;
  }

  v26 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v27 = v61;
  sub_1CEFD09A0(v61);
  v28 = sub_1CF9E6108();
  v29 = sub_1CF9E7298();
  sub_1CEFD0A98(v27);
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v52 = v28;
    v31 = v30;
    v53 = swift_slowAlloc();
    v62 = v53;
    *v31 = 136446210;
    v32 = sub_1CEFD11AC(v27);
    v51 = v29;
    v34 = sub_1CEFD0DF0(v32, v33, &v62);

    v35 = v31;
    *(v31 + 4) = v34;
    v28 = v52;
    _os_log_impl(&dword_1CEFC7000, v52, v51, "Going through fast-path for the rootItem at startup (request: %{public}s)", v35, 0xCu);
    v36 = v53;
    __swift_destroy_boxed_opaque_existential_1(v53);
    MEMORY[0x1D386CDC0](v36, -1, -1);
    MEMORY[0x1D386CDC0](v35, -1, -1);
  }

  (*(v54 + 8))(v23, v56);
  a2 = v57;
  v37 = type metadata accessor for VFSItem(0);
  v38 = v55;
  (*(*(v37 - 8) + 56))(v55, 1, 1, v37);
  v39 = sub_1CF853730(a2, v38);
  sub_1CEFCCC44(v38, &unk_1EC4BEC00, &unk_1CF9FCB60);
  if (!v39)
  {
LABEL_8:
    v41 = swift_allocObject();
    v57 = a1;
    v42 = a6;
    v43 = v60;
    *(v41 + 16) = v60;
    *(v41 + 24) = a5;
    v44 = v58;
    (*(v12 + 16))(v58, a2, v11);
    v45 = (*(v12 + 80) + 48) & ~*(v12 + 80);
    v46 = swift_allocObject();
    *(v46 + 16) = v42 & 1;
    *(v46 + 24) = v43;
    *(v46 + 32) = a5;
    v47 = v61;
    *(v46 + 40) = v61;
    (*(v12 + 32))(v46 + v45, v44, v11);
    v48 = v46 + ((v13 + v45 + 7) & 0xFFFFFFFFFFFFFFF8);
    v49 = v57;
    *v48 = v57;
    *(v48 + 8) = v59 & 1;

    sub_1CEFD09A0(v47);

    sub_1CF01052C("item(for:userRequest:hideIgnoredDescendents:tryOptimizeResponsiveness:completionHandler:)", 89, 2, sub_1CF90114C, v46, v49, sub_1CEFF9D90, v41);
  }

  else
  {
    v40 = v39;
    v60(v39, 0);
  }
}

uint64_t sub_1CF855990(uint64_t a1, char a2, void (*a3)(id, void), uint64_t a4, unint64_t a5, uint64_t a6, char *a7, int a8)
{
  v152 = a8;
  v155 = a7;
  v161 = a6;
  v170 = a5;
  v157 = sub_1CF9E5A58();
  v154 = *(v157 - 8);
  v12 = *(v154 + 64);
  MEMORY[0x1EEE9AC00](v157);
  v14 = &v147 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1CF9E6118();
  v159 = *(v15 - 8);
  v160 = v15;
  v16 = *(v159 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v153 = &v147 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v158 = &v147 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v147 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v147 - v25;
  v27 = type metadata accessor for VFSItem(0);
  v164 = *(v27 - 8);
  v165 = v27;
  v28 = *(v164 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v150 = &v147 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v147 - v31;
  v149 = v33;
  MEMORY[0x1EEE9AC00](v34);
  v162 = &v147 - v35;
  v36 = 2;
  if (a2)
  {
    v36 = ~(*(*(a1 + 16) + 80) >> 20) & 2;
  }

  v151 = v36;
  v37 = swift_allocObject();
  *(v37 + 16) = a3;
  *(v37 + 24) = a4;
  v169 = a4;
  v38 = swift_allocObject();
  v166 = a1;
  swift_weakInit();
  v39 = swift_allocObject();
  v39[2] = sub_1CF2BA178;
  v39[3] = v37;
  v167 = v38;
  v168 = v37;
  v39[4] = v38;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_1CEFF99D0;
  *(v40 + 24) = v39;
  v41 = (v170 >> 58) & 0x3C | (v170 >> 1) & 3;
  v163 = v40;
  if (v41 == 35)
  {
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5200, "hx\t");
    if (*(swift_projectBox() + *(v42 + 48)))
    {
      v43 = 8195;
    }

    else
    {
      v43 = 3;
    }
  }

  else
  {
    v43 = 3;
  }

  swift_retain_n();

  v44 = v161;
  sub_1CF010CE0(v161, 0, 2, v43, v26);
  v45 = (*(v164 + 48))(v26, 1, v165);
  v156 = a3;
  if (v45 == 1)
  {

    sub_1CEFCCC44(v26, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v46 = fpfs_current_or_default_log();
    v47 = v153;
    sub_1CF9E6128();
    v48 = v154;
    v49 = v157;
    (*(v154 + 16))(v14, v44, v157);
    v50 = v170;
    sub_1CEFD09A0(v170);
    v51 = sub_1CF9E6108();
    v52 = sub_1CF9E7298();
    sub_1CEFD0A98(v50);
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v166 = swift_slowAlloc();
      *&v171 = v166;
      *v53 = 136315394;
      v54 = sub_1CF9E5928();
      v55 = [v54 fp_shortDescription];

      v56 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v58 = v57;

      (*(v48 + 8))(v14, v157);
      v59 = sub_1CEFD0DF0(v56, v58, &v171);

      *(v53 + 4) = v59;
      *(v53 + 12) = 2082;
      v60 = sub_1CEFD11AC(v170);
      v62 = sub_1CEFD0DF0(v60, v61, &v171);

      *(v53 + 14) = v62;
      _os_log_impl(&dword_1CEFC7000, v51, v52, "no vfs item for %s (request: %{public}s)", v53, 0x16u);
      v63 = v166;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v63, -1, -1);
      MEMORY[0x1D386CDC0](v53, -1, -1);
    }

    else
    {

      (*(v48 + 8))(v14, v49);
    }

    (*(v159 + 8))(v47, v160);
    v156(0, 0);
  }

  v153 = v23;
  v64 = v162;
  sub_1CEFDA0C4(v26, v162, type metadata accessor for VFSItem);
  v65 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v66 = v64;
  sub_1CEFDA34C(v64, v32, type metadata accessor for VFSItem);
  v67 = v170;
  sub_1CEFD09A0(v170);
  v68 = sub_1CF9E6108();
  v69 = sub_1CF9E7298();
  sub_1CEFD0A98(v67);
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v148 = swift_slowAlloc();
    *&v171 = v148;
    *v70 = 136446466;
    v71 = sub_1CF255338();
    v73 = v72;
    sub_1CEFD5338(v32, type metadata accessor for VFSItem);
    v74 = sub_1CEFD0DF0(v71, v73, &v171);

    *(v70 + 4) = v74;
    *(v70 + 12) = 2082;
    v75 = sub_1CEFD11AC(v67);
    v77 = sub_1CEFD0DF0(v75, v76, &v171);

    *(v70 + 14) = v77;
    _os_log_impl(&dword_1CEFC7000, v68, v69, "Resolved item %{public}s (request: %{public}s)", v70, 0x16u);
    v78 = v148;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v78, -1, -1);
    v79 = v70;
    v66 = v162;
    MEMORY[0x1D386CDC0](v79, -1, -1);
  }

  else
  {

    sub_1CEFD5338(v32, type metadata accessor for VFSItem);
  }

  (*(v159 + 8))(v158, v160);
  if (v41 != 35)
  {
    goto LABEL_28;
  }

  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5200, "hx\t");
  if ((*(swift_projectBox() + *(v81 + 48)) & 1) == 0)
  {
    goto LABEL_28;
  }

  v82 = v66 + v165[8];
  v83 = *(v82 + 192);
  v84 = *(v82 + 224);
  v184 = *(v82 + 208);
  v185 = v84;
  v85 = *(v82 + 128);
  v86 = *(v82 + 160);
  v87 = *(v82 + 176);
  v180 = *(v82 + 144);
  v181 = v86;
  v182 = v87;
  v183 = v83;
  v88 = *(v82 + 64);
  v89 = *(v82 + 96);
  v90 = *(v82 + 112);
  v176 = *(v82 + 80);
  v177 = v89;
  v178 = v90;
  v179 = v85;
  v91 = *(v82 + 16);
  v171 = *v82;
  v172 = v91;
  v92 = *(v82 + 48);
  v173 = *(v82 + 32);
  v186 = *(v82 + 240);
  v174 = v92;
  v175 = v88;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v171) == 1)
  {
    goto LABEL_28;
  }

  v93 = v172;
  if (!v172)
  {
    goto LABEL_28;
  }

  v94 = v172;
  v95 = sub_1CF9E57E8();

  v96 = [v95 domain];
  v97 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v99 = v98;

  v100 = *MEMORY[0x1E6967210];
  if (v97 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v99 == v101)
  {

    goto LABEL_24;
  }

  v102 = sub_1CF9E8048();

  if (v102)
  {
LABEL_24:
    if ([v95 code] == 28)
    {
      v103 = *&v155[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_providerDomainID];
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v105 = Strong;

        v106 = sub_1CF2CD7C8(v66, v103, v105, 1);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1CF9FA450;
        v108 = *MEMORY[0x1E696A998];
        *(inited + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        *(inited + 40) = v109;
        v110 = v157;
        *(inited + 72) = v157;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 48));
        (*(v154 + 16))(boxed_opaque_existential_0, v161, v110);
        v112 = v100;
        sub_1CF4E04E8(inited);
        swift_setDeallocating();
        sub_1CEFCCC44(inited + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
        v113 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
        v114 = sub_1CF9E6618();

        v115 = [v113 initWithDomain:v112 code:28 userInfo:v114];

        v116 = sub_1CF9E57E8();
        [v106 setUploadingError_];

        v117 = sub_1CF9E5928();
        [v106 setFileURL_];

        v118 = v106;
        v156(v106, 0);

        v119 = v66;
        return sub_1CEFD5338(v119, type metadata accessor for VFSItem);
      }

      __break(1u);
LABEL_45:

      MEMORY[0x1EEE9AC00](v145);
      *(&v147 - 2) = v103;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v147 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }
  }

LABEL_28:
  v160 = *(v166 + 16);
  v120 = *(*(v160 + 32) + 16);
  type metadata accessor for VFSFileTree(0);
  v103 = swift_dynamicCastClassUnconditional();

  if (objc_sync_enter(v103))
  {
    goto LABEL_45;
  }

  v121 = v103[20];

  if (objc_sync_exit(v103))
  {

    MEMORY[0x1EEE9AC00](v146);
    *(&v147 - 2) = v103;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v147 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v122 = *(v121 + 32);

  v123 = *(v66 + v165[9]);
  swift_bridgeObjectRelease_n();
  v124 = *(v122 + 16);
  v125 = 32;
  do
  {
    if (!v124)
    {

LABEL_40:
      v128 = v164;
      goto LABEL_41;
    }

    v126 = *(v122 + v125);
    v125 += 8;
    --v124;
  }

  while (v126 != v123);

  v127 = v66 + v165[7];
  if (*(v127 + *(type metadata accessor for ItemMetadata() + 80)) != 1)
  {

    goto LABEL_40;
  }

  v128 = v164;
  if (*(v66 + 8) != 2 || *v66)
  {
    v129 = v153;
    sub_1CEFDA34C(v66, v153, type metadata accessor for VFSItem);
    (*(v128 + 56))(v129, 0, 1, v165);
    v130 = sub_1CF853730(v161, v129);
    sub_1CEFCCC44(v129, &unk_1EC4BEC00, &unk_1CF9FCB60);
    if (v130)
    {
      v131 = v130;
      v156(v130, 0);

      v119 = v66;
      return sub_1CEFD5338(v119, type metadata accessor for VFSItem);
    }
  }

LABEL_41:

  v132 = swift_allocObject();
  v133 = v163;
  *(v132 + 16) = sub_1CEFF9984;
  *(v132 + 24) = v133;
  v134 = v150;
  sub_1CEFDA34C(v66, v150, type metadata accessor for VFSItem);
  v135 = (*(v128 + 80) + 24) & ~*(v128 + 80);
  v136 = (v149 + v135 + 7) & 0xFFFFFFFFFFFFFFF8;
  v137 = (v136 + 15) & 0xFFFFFFFFFFFFFFF8;
  v138 = swift_allocObject();
  *(v138 + 16) = v166;
  sub_1CEFDA0C4(v134, v138 + v135, type metadata accessor for VFSItem);
  v139 = v155;
  *(v138 + v136) = v155;
  v140 = v170;
  *(v138 + v137) = v170;
  v141 = v138 + ((v137 + 15) & 0xFFFFFFFFFFFFFFF8);
  v142 = v163;
  *v141 = sub_1CEFF9984;
  *(v141 + 8) = v142;
  *(v141 + 16) = v152 & 1;
  v143 = swift_allocObject();
  *(v143 + 16) = sub_1CF2BA178;
  *(v143 + 24) = v132;

  sub_1CEFD09A0(v140);

  v144 = v139;

  sub_1CF7AAF88("item(for:userRequest:hideIgnoredDescendents:tryOptimizeResponsiveness:completionHandler:)", 89, 2, v151, sub_1CF8FC294, v143, sub_1CF90124C, v138);

  v119 = v162;
  return sub_1CEFD5338(v119, type metadata accessor for VFSItem);
}

void sub_1CF856A90(void *a1, uint64_t a2, uint64_t a3, void *a4, unint64_t a5, void (*a6)(id, void), uint64_t a7, int a8)
{
  v88 = a8;
  v106 = a7;
  v94 = a5;
  v95 = a6;
  v93 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBA8, &qword_1CFA12B20);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v86 = &v85 - v13;
  v14 = sub_1CF9E6118();
  v91 = *(v14 - 8);
  v92 = v14;
  v15 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v90 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v85 = &v85 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v89 = &v85 - v20;
  v22 = a1[3];
  v21 = a1[4];
  v97 = __swift_project_boxed_opaque_existential_1(a1, v22);
  v87 = a4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v24 = Strong, v25 = [Strong indexer], v24, v25))
  {
    v26 = [v25 needsAuthentication];

    if (v26)
    {
      v27 = 30;
    }

    else
    {
      v27 = 22;
    }
  }

  else
  {
    v27 = 22;
  }

  v28 = sub_1CEFE58F0(MEMORY[0x1E69E7CC0]);
  v29 = type metadata accessor for VFSItem(0);
  v30 = sub_1CEFCCCA4(qword_1EDEA8860, type metadata accessor for VFSFileTree);
  v31 = sub_1CEFCCCA4(qword_1EDEABC30, type metadata accessor for VFSItem);
  v32 = v30;
  v33 = v93;
  v97 = sub_1CF76BB00(a3, v27, 0, v28, v97, v29, v22, v32, &off_1F4BF8588, v31, v21);

  v34 = a3 + *(v29 + 28);
  if (*(v34 + *(type metadata accessor for ItemMetadata() + 64)) == 1)
  {
    v35 = fpfs_current_or_default_log();
    v36 = v89;
    sub_1CF9E6128();
    v37 = v94;
    sub_1CEFD09A0(v94);
    v38 = sub_1CF9E6108();
    v39 = sub_1CF9E7298();
    sub_1CEFD0A98(v37);
    v40 = os_log_type_enabled(v38, v39);
    v41 = v95;
    if (v40)
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v105[0] = v43;
      *v42 = 136446210;
      v44 = sub_1CEFD11AC(v37);
      v46 = sub_1CEFD0DF0(v44, v45, v105);

      *(v42 + 4) = v46;
      _os_log_impl(&dword_1CEFC7000, v38, v39, "Returning ignore root (request: %{public}s)", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);
      MEMORY[0x1D386CDC0](v43, -1, -1);
      MEMORY[0x1D386CDC0](v42, -1, -1);
    }

    (*(v91 + 8))(v36, v92);
    v47 = v97;
    v48 = v97;
    v41(v47, 0);

LABEL_29:
    return;
  }

  v49 = a1[3];
  v50 = a1[4];
  v51 = __swift_project_boxed_opaque_existential_1(a1, v49);
  v52 = *(*(v33 + 16) + 16);
  v53 = *(a3 + 8);
  v102 = *a3;
  v103 = v53;

  v54 = v51;
  v55 = v96;
  sub_1CF68DDB0(&v102, v54, v49, v50, v104);
  v56 = v94;
  v57 = v95;
  if (v55)
  {

    sub_1CF095754(v105);
    v58 = v106;
    v59 = v97;
    v60 = v90;
    if ((v88 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {

    memcpy(v100, v104, sizeof(v100));
    memcpy(v101, v104, sizeof(v101));
    v61 = sub_1CF08B99C(v101);
    v58 = v106;
    v59 = v97;
    v60 = v90;
    if (v61 != 1 && (v101[16] & 0x10) != 0)
    {
      memcpy(v99, v100, sizeof(v99));
      sub_1CEFCCBDC(v99, v98, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      v76 = fpfs_current_or_default_log();
      v77 = v85;
      sub_1CF9E6128();
      sub_1CEFD09A0(v56);
      v78 = sub_1CF9E6108();
      v79 = sub_1CF9E7298();
      sub_1CEFD0A98(v56);
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v98[0] = v81;
        *v80 = 136446210;
        v82 = sub_1CEFD11AC(v56);
        v84 = sub_1CEFD0DF0(v82, v83, v98);

        *(v80 + 4) = v84;
        v59 = v97;
        _os_log_impl(&dword_1CEFC7000, v78, v79, "Returning ignored item (request: %{public}s)", v80, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v81);
        MEMORY[0x1D386CDC0](v81, -1, -1);
        MEMORY[0x1D386CDC0](v80, -1, -1);

        (*(v91 + 8))(v85, v92);
      }

      else
      {

        (*(v91 + 8))(v77, v92);
      }

      v48 = v59;
      v57(v59, 0);

      sub_1CEFCCC44(v100, &unk_1EC4BFC20, &unk_1CFA0A290);
      sub_1CEFCCC44(v100, &unk_1EC4BFC20, &unk_1CFA0A290);
      goto LABEL_29;
    }

    memcpy(v105, v100, 0x208uLL);
    if ((v88 & 1) == 0)
    {
LABEL_20:
      v70 = swift_allocObject();
      *(v70 + 16) = v57;
      *(v70 + 24) = v58;
      v48 = v59;

      if ((sub_1CEFF96D0(v48) & 1) == 0)
      {

        v57(v48, 0);

        sub_1CEFCCC44(v105, &unk_1EC4BFC20, &unk_1CFA0A290);
        return;
      }

      v71 = sub_1CF9E6F08();
      v72 = v86;
      (*(*(v71 - 8) + 56))(v86, 1, 1, v71);
      v73 = swift_allocObject();
      v73[2] = 0;
      v73[3] = 0;
      v74 = v87;
      v73[4] = v48;
      v73[5] = v74;
      v73[6] = v56;
      v73[7] = sub_1CF901308;
      v73[8] = v70;
      sub_1CEFD09A0(v56);
      v75 = v74;
      sub_1CF6FCFEC(0, 0, v72, &unk_1CFA18250, v73);

      sub_1CEFCCC44(v105, &unk_1EC4BFC20, &unk_1CFA0A290);

      goto LABEL_29;
    }
  }

  if (![v59 isExcludedFromSync])
  {
    goto LABEL_20;
  }

  v62 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFD09A0(v56);
  v63 = sub_1CF9E6108();
  v64 = sub_1CF9E7298();
  sub_1CEFD0A98(v56);
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v104[0] = v66;
    *v65 = 136446210;
    v67 = sub_1CEFD11AC(v56);
    v69 = sub_1CEFD0DF0(v67, v68, v104);

    *(v65 + 4) = v69;
    v59 = v97;
    _os_log_impl(&dword_1CEFC7000, v63, v64, "Item is in ignored (request: %{public}s)", v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v66);
    MEMORY[0x1D386CDC0](v66, -1, -1);
    MEMORY[0x1D386CDC0](v65, -1, -1);

    (*(v91 + 8))(v90, v92);
  }

  else
  {

    (*(v91 + 8))(v60, v92);
  }

  v57(0, 0);
  sub_1CEFCCC44(v105, &unk_1EC4BFC20, &unk_1CFA0A290);
}

uint64_t FPDDomainFPFSBackend.putBackURLForTrashedItem(at:request:completionHandler:)(uint64_t a1, void *a2, void (*a3)(char *, id), uint64_t a4)
{
  v22 = a3;
  v8 = sub_1CF9E5A58();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8, v11);
  v13 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v14 = (v10 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 2) = v4;
  (*(v9 + 32))(&v15[v13], v12, v8);
  v16 = &v15[v14];
  v17 = v22;
  *v16 = v22;
  v16[1] = a4;
  *&v15[(v14 + 23) & 0xFFFFFFFFFFFFFFF8] = a2;
  swift_retain_n();
  v18 = v4;
  v19 = a2;
  sub_1CF8EC6D8("putBackURLForTrashedItem(at:request:completionHandler:)", 55, 2, sub_1CF8F0838, v15, v18, v17, a4);
}

uint64_t sub_1CF8575D4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, void), uint64_t a5, void *a6)
{
  v79 = a6;
  v80 = a1;
  v86 = a4;
  v87 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v83 = &v74 - v9;
  v85 = sub_1CF9E5A58();
  v10 = *(v85 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v85);
  v12 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v74 - v14;
  v78 = sub_1CF9E53C8();
  v77 = *(v78 - 8);
  v16 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v76 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1CF9E6118();
  v81 = *(v18 - 8);
  v82 = v18;
  v19 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v88 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v75 = &v74 - v22;
  v84 = a3;
  sub_1CF9E5A18();
  v96 = 0;
  v97 = 1;
  v23 = swift_allocObject();
  *(v23 + 16) = &v97;
  *(v23 + 24) = sub_1CF8A2598;
  *(v23 + 32) = 0;
  *(v23 + 40) = &v96;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_1CF902C78;
  *(v24 + 24) = v23;
  v94 = sub_1CF50EB9C;
  v95 = v24;
  aBlock = MEMORY[0x1E69E9820];
  v91 = 1107296256;
  v92 = sub_1CF005DF8;
  v93 = &block_descriptor_5506;
  v25 = _Block_copy(&aBlock);

  sub_1CF9E6978();
  LODWORD(v26) = fpfs_openat();

  _Block_release(v25);

  LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

  if (v23)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v28 = v96;
  if (v96)
  {
    swift_willThrow();

    goto LABEL_4;
  }

  if ((v26 & 0x80000000) == 0)
  {

    v26 = v97;
    if (v97 != 1)
    {

      if (v26)
      {
        v88 = sub_1CEFD4E9C(v26);
        v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
        v83 = swift_allocBox();
        v46 = v45;
        v47 = *(v44 + 48);
        v48 = *(v10 + 16);
        v50 = v84;
        v49 = v85;
        v48(v45, v84, v85);
        v51 = v79;
        *(v46 + v47) = v79;
        v52 = v51;
        v48(v15, v50, v49);
        v53 = (*(v10 + 80) + 16) & ~*(v10 + 80);
        v54 = swift_allocObject();
        (*(v10 + 32))(&v54[v53], v15, v49);
        v55 = &v54[(v11 + v53 + 7) & 0xFFFFFFFFFFFFFFF8];
        v56 = v87;
        *v55 = v86;
        *(v55 + 1) = v56;
        v57 = v52;

        sub_1CF76CEF8(v88, 0, v83 | 0x8000000000000002, sub_1CF9010AC, v54);
        sub_1CF00D644(v26);
      }

      goto LABEL_6;
    }

    goto LABEL_23;
  }

  if (MEMORY[0x1D38683F0](v27))
  {
    if (MEMORY[0x1D38683F0]() == 9939394)
    {
      v58 = [objc_opt_self() fp:2 errorForDataProtectionClass:?];
      swift_willThrow();

      swift_bridgeObjectRelease_n();
      goto LABEL_5;
    }

    MEMORY[0x1D38683F0]();
    v59 = sub_1CF9E6138();
    if ((v59 & 0x100000000) != 0)
    {
      LODWORD(aBlock) = 22;
    }

    else
    {
      LODWORD(aBlock) = v59;
    }

    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CEFCCCA4(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
    v60 = v76;
    v61 = v78;
    sub_1CF9E57D8();
    v62 = sub_1CF9E53A8();
    (*(v77 + 8))(v60, v61);
    swift_willThrow();

LABEL_4:

LABEL_5:
    sub_1CF00D644(v97);
LABEL_6:
    v29 = fpfs_current_or_default_log();
    v30 = v88;
    sub_1CF9E6128();
    v31 = v85;
    (*(v10 + 16))(v12, v84, v85);
    v32 = sub_1CF9E6108();
    v33 = sub_1CF9E72A8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      aBlock = v35;
      *v34 = 136315138;
      v36 = sub_1CF9E5928();
      v37 = [v36 fp_shortDescription];

      v38 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v40 = v39;

      (*(v10 + 8))(v12, v31);
      v41 = sub_1CEFD0DF0(v38, v40, &aBlock);

      *(v34 + 4) = v41;
      _os_log_impl(&dword_1CEFC7000, v32, v33, "Read put-back xattr for %s returned nothing", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x1D386CDC0](v35, -1, -1);
      MEMORY[0x1D386CDC0](v34, -1, -1);

      (*(v81 + 8))(v88, v82);
    }

    else
    {

      (*(v10 + 8))(v12, v31);
      (*(v81 + 8))(v30, v82);
    }

    v42 = v83;
    (*(v10 + 56))(v83, 1, 1, v31);
    v86(v42, 0);
    return sub_1CEFCCC44(v42, &unk_1EC4BE310, qword_1CF9FCBE0);
  }

LABEL_24:

  aBlock = 0;
  v91 = 0xE000000000000000;
  sub_1CF9E7948();

  aBlock = 0xD00000000000001ALL;
  v91 = 0x80000001CFA2DF30;
  v89 = v26;
  v63 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v63);

  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
  v64 = aBlock;
  v65 = v91;
  v66 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v67 = sub_1CF9E6108();
  v68 = sub_1CF9E72B8();

  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    aBlock = v70;
    *v69 = 136315650;
    v71 = sub_1CF9E7988();
    v73 = sub_1CEFD0DF0(v71, v72, &aBlock);

    *(v69 + 4) = v73;
    *(v69 + 12) = 2048;
    *(v69 + 14) = 315;
    *(v69 + 22) = 2080;
    *(v69 + 24) = sub_1CEFD0DF0(v64, v65, &aBlock);
    _os_log_impl(&dword_1CEFC7000, v67, v68, "[ASSERT] ‼️  %s:%lu: %s", v69, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v70, -1, -1);
    MEMORY[0x1D386CDC0](v69, -1, -1);
  }

  (*(v81 + 8))(v75, v82);
  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF85808C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void *), uint64_t a4)
{
  v82 = a4;
  v83 = a3;
  v76 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v81 = &v72 - v7;
  v8 = sub_1CF9E6118();
  v79 = *(v8 - 8);
  v80 = v8;
  v9 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v77 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v78 = (&v72 - v12);
  v13 = sub_1CF9E5A58();
  v84 = *(v13 - 8);
  v14 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v72 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v72 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v72 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5270, &unk_1CFA01BC0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = (&v72 - v28);
  sub_1CEFCCBDC(a1, &v72 - v28, &unk_1EC4C5270, &unk_1CFA01BC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30 = *v29;
    v31 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    (*(v84 + 16))(v16, v76, v13);
    v32 = v30;
    v33 = sub_1CF9E6108();
    v34 = sub_1CF9E72A8();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v86 = v78;
      *v35 = 136315394;
      v37 = sub_1CF9E5928();
      v38 = [v37 fp_shortDescription];

      v39 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v41 = v40;

      (*(v84 + 8))(v16, v13);
      v42 = sub_1CEFD0DF0(v39, v41, &v86);

      *(v35 + 4) = v42;
      *(v35 + 12) = 2112;
      swift_getErrorValue();
      v43 = Error.prettyDescription.getter(v85);
      *(v35 + 14) = v43;
      *v36 = v43;
      _os_log_impl(&dword_1CEFC7000, v33, v34, "put-back location URL resolve for %s failed: %@", v35, 0x16u);
      sub_1CEFCCC44(v36, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v36, -1, -1);
      v44 = v78;
      __swift_destroy_boxed_opaque_existential_1(v78);
      MEMORY[0x1D386CDC0](v44, -1, -1);
      MEMORY[0x1D386CDC0](v35, -1, -1);
    }

    else
    {

      (*(v84 + 8))(v16, v13);
    }

    (*(v79 + 8))(v77, v80);
    v68 = v81;
    (*(v84 + 56))(v81, 1, 1, v13);
    v69 = v30;
    v83(v68, v30);

    return sub_1CEFCCC44(v68, &unk_1EC4BE310, qword_1CF9FCBE0);
  }

  else
  {
    v45 = v84;
    (*(v84 + 32))(v25, v29, v13);
    v46 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v47 = *(v45 + 16);
    (v47)(v22, v76, v13);
    (v47)(v19, v25, v13);
    v48 = sub_1CF9E6108();
    v49 = sub_1CF9E7298();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v86 = v76;
      *v50 = 136315394;
      v75 = v49;
      v51 = sub_1CF9E5928();
      v52 = [v51 fp_shortDescription];
      v77 = v47;
      v53 = v52;

      v54 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v56 = v55;

      v73 = v48;
      v57 = *(v84 + 8);
      v74 = (v84 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v57(v22, v13);
      v58 = sub_1CEFD0DF0(v54, v56, &v86);
      v59 = v57;

      *(v50 + 4) = v58;
      *(v50 + 12) = 2080;
      v60 = sub_1CF9E5928();
      v61 = [v60 fp_shortDescription];

      v62 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v64 = v63;

      v59(v19, v13);
      v65 = sub_1CEFD0DF0(v62, v64, &v86);
      v47 = v77;

      *(v50 + 14) = v65;
      v66 = v73;
      _os_log_impl(&dword_1CEFC7000, v73, v75, "put-back location for URL success %s location: %s", v50, 0x16u);
      v67 = v76;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v67, -1, -1);
      MEMORY[0x1D386CDC0](v50, -1, -1);
    }

    else
    {

      v59 = *(v84 + 8);
      v59(v19, v13);
      v59(v22, v13);
    }

    (*(v79 + 8))(v78, v80);
    v71 = v81;
    (v47)(v81, v25, v13);
    (*(v84 + 56))(v71, 0, 1, v13);
    v83(v71, 0);
    sub_1CEFCCC44(v71, &unk_1EC4BE310, qword_1CF9FCBE0);
    return (v59)(v25, v13);
  }
}

uint64_t sub_1CF858B28(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v21 = a7;
  v12 = sub_1CF9E5A58();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  (*(v13 + 16))(&v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v12, v15);
  v16 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v17 = swift_allocObject();
  (*(v13 + 32))(v17 + v16, &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  v18 = (v17 + ((v14 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = a2;
  v18[1] = a3;

  sub_1CF8EB0F8(a5, a6, 2, v21, v17, v20, a2, a3);
}

void sub_1CF858CA0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v90 = a4;
  v91 = a3;
  v5 = sub_1CF9E53C8();
  v6 = *(v5 - 8);
  v82 = v5;
  v83 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v81 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1CF9E6118();
  v79 = *(v80 - 8);
  v9 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v78 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CF9E6938();
  v86 = *(v11 - 8);
  v87 = v11;
  v12 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v84 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for VFSItem(0);
  v88 = *(v14 - 8);
  v89 = v14;
  v15 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v85 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1CF9E5A58();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v78 - v27;
  v29 = *(*(*(a1 + 16) + 32) + 16);
  type metadata accessor for VFSFileTree(0);
  swift_dynamicCastClassUnconditional();

  sub_1CF9E5988();
  sub_1CF264F9C(2, 0, 0x208000u, v28);
  v32 = v86;
  v31 = v87;
  v33 = v85;
  (*(v18 + 8))(v21, v17);

  sub_1CEFCCBDC(v28, v25, &unk_1EC4BEC00, &unk_1CF9FCB60);
  if ((*(v88 + 48))(v25, 1, v89) == 1)
  {
    sub_1CEFCCC44(v25, &unk_1EC4BEC00, &unk_1CF9FCB60);
    type metadata accessor for NSFileProviderError(0);
    v100 = -1005;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CEFCCCA4(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError);
    sub_1CF9E57D8();
    v34 = aBlock;
    v91(aBlock);

    sub_1CEFCCC44(v28, &unk_1EC4BEC00, &unk_1CF9FCB60);
    return;
  }

  v35 = v25;
  v36 = v33;
  v37 = sub_1CEFDA0C4(v35, v33, type metadata accessor for VFSItem);
  v39 = *v33;
  v40 = *(v33 + 8);
  if (v40 != 2 || v39)
  {
    v42 = v31;
    v43 = v84;
    if (v40 == 2 && v39 == 1)
    {
      v41 = *MEMORY[0x1E6967280];
    }

    else
    {
      aBlock = 0x2F73662F70665F5FLL;
      v94 = 0xE800000000000000;
      v100 = v39;
      v101 = v40;
      v44 = VFSItemID.description.getter(v37, v38);
      MEMORY[0x1D3868CC0](v44);

      v41 = sub_1CF9E6888();
    }
  }

  else
  {
    v41 = *MEMORY[0x1E6967258];
    v42 = v31;
    v43 = v84;
  }

  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  sub_1CF9E6918();
  v45 = sub_1CF9E68C8();
  v46 = v43;
  v48 = v47;

  (*(v32 + 8))(v46, v42);
  if (v48 >> 60 == 15)
  {
    goto LABEL_26;
  }

  v49 = sub_1CF9E5A18();
  v89 = &v78;
  MEMORY[0x1EEE9AC00](v49);
  v50 = v45;
  v76 = v45;
  v77 = v48;
  v88 = v48;
  v99 = 1;
  v100 = 0;
  v51 = swift_allocObject();
  v51[2] = &v99;
  v51[3] = sub_1CF90102C;
  v51[4] = &v78 - 4;
  v51[5] = &v100;
  v52 = swift_allocObject();
  *(v52 + 16) = sub_1CF50EB60;
  *(v52 + 24) = v51;
  v97 = sub_1CF50EB9C;
  v98 = v52;
  aBlock = MEMORY[0x1E69E9820];
  v94 = 1107296256;
  v95 = sub_1CF005DF8;
  v96 = &block_descriptor_5477;
  v53 = _Block_copy(&aBlock);

  sub_1CF9E6978();
  LODWORD(v48) = fpfs_openat();

  _Block_release(v53);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v56 = v100;
  v57 = v83;
  if (v100)
  {
    swift_willThrow();
    v58 = v91;
LABEL_14:

    sub_1CEFE48D8(v50, v88);
    sub_1CEFD5338(v36, type metadata accessor for VFSItem);
    sub_1CEFCCC44(v28, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v30 = v56;
    v58(v56);

    return;
  }

  if ((v48 & 0x80000000) != 0)
  {
    if (MEMORY[0x1D38683F0](v55))
    {
      v59 = MEMORY[0x1D38683F0]();
      v58 = v91;
      v60 = v82;
      v61 = v81;
      if (v59 == 9939394)
      {
        v56 = [objc_opt_self() fp:2 errorForDataProtectionClass:?];
        swift_willThrow();
      }

      else
      {
        MEMORY[0x1D38683F0]();
        v62 = sub_1CF9E6138();
        if ((v62 & 0x100000000) != 0)
        {
          LODWORD(aBlock) = 22;
        }

        else
        {
          LODWORD(aBlock) = v62;
        }

        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CEFCCCA4(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
        sub_1CF9E57D8();
        v63 = sub_1CF9E53A8();
        v64 = v61;
        v56 = v63;
        (*(v57 + 8))(v64, v60);
        swift_willThrow();
      }

      goto LABEL_14;
    }

    goto LABEL_28;
  }

  if ((v99 & 1) == 0)
  {

    v91(0);
    sub_1CEFE48D8(v50, v88);
    sub_1CEFD5338(v33, type metadata accessor for VFSItem);
    sub_1CEFCCC44(v28, &unk_1EC4BEC00, &unk_1CF9FCB60);
    return;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  aBlock = 0;
  v94 = 0xE000000000000000;
  sub_1CF9E7948();

  aBlock = 0xD00000000000001ALL;
  v94 = 0x80000001CFA2DF30;
  v92 = v48;
  v65 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v65);

  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
  v66 = aBlock;
  v67 = v94;
  v68 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v69 = sub_1CF9E6108();
  v70 = sub_1CF9E72B8();

  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    aBlock = v72;
    *v71 = 136315650;
    v73 = sub_1CF9E7988();
    v75 = sub_1CEFD0DF0(v73, v74, &aBlock);

    *(v71 + 4) = v75;
    *(v71 + 12) = 2048;
    *(v71 + 14) = 315;
    *(v71 + 22) = 2080;
    *(v71 + 24) = sub_1CEFD0DF0(v66, v67, &aBlock);
    _os_log_impl(&dword_1CEFC7000, v69, v70, "[ASSERT] ‼️  %s:%lu: %s", v71, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v72, -1, -1);
    MEMORY[0x1D386CDC0](v71, -1, -1);
  }

  (*(v79 + 8))(v78, v80);
  LODWORD(v77) = 0;
  v76 = 315;
  sub_1CF9E7B68();
  __break(1u);
}

id FPDDomainFPFSBackend.startProvidingItem(at:readerID:readingOptions:request:completionHandler:)(uint64_t a1, void (*a2)(void), uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v74 = a6;
  v65 = a5;
  v71 = a3;
  v72 = a4;
  v68 = a2;
  v7 = sub_1CF9E5A58();
  v69 = *(v7 - 8);
  v70 = v7;
  v8 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v66 = v9;
  v75 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E6068();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v59 - v20;
  v22 = type metadata accessor for Signpost(0);
  v62 = *(v22 - 8);
  v23 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v63 = v24;
  v64 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v59 - v26;
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v28 = qword_1EDEBBE40;
  (*(v11 + 56))(v21, 1, 1, v10);
  v67 = a1;
  v29 = sub_1CF9E5A18();
  v60 = v30;
  v61 = v29;
  sub_1CEFCCBDC(v21, v18, &unk_1EC4BED20, &unk_1CFA00700);
  v31 = *(v11 + 48);
  if (v31(v18, 1, v10) == 1)
  {
    v32 = v28;
    sub_1CF9E6048();
    if (v31(v18, 1, v10) != 1)
    {
      sub_1CEFCCC44(v18, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v18, v10);
  }

  (*(v11 + 16))(v27, v14, v10);
  *&v27[*(v22 + 20)] = v28;
  v33 = &v27[*(v22 + 24)];
  *v33 = "Materialization";
  *(v33 + 1) = 15;
  v33[16] = 2;
  v34 = v28;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1CF9FA450;
  *(v35 + 56) = MEMORY[0x1E69E6158];
  *(v35 + 64) = sub_1CEFD51C4();
  v36 = v60;
  *(v35 + 32) = v61;
  *(v35 + 40) = v36;
  sub_1CF9E6028();

  (*(v11 + 8))(v14, v10);
  sub_1CEFCCC44(v21, &unk_1EC4BED20, &unk_1CFA00700);
  v61 = [objc_opt_self() discreteProgressWithTotalUnitCount_];
  [v61 setCancellable_];
  v37 = v64;
  sub_1CEFDA34C(v27, v64, type metadata accessor for Signpost);
  v38 = (*(v62 + 80) + 16) & ~*(v62 + 80);
  v39 = (v63 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  sub_1CEFDA0C4(v37, v40 + v38, type metadata accessor for Signpost);
  v41 = (v40 + v39);
  v42 = v65;
  v65 = v27;
  v44 = v74;
  v43 = v75;
  *v41 = v42;
  v41[1] = v44;
  v45 = v69;
  v46 = v70;
  (*(v69 + 16))(v43, v67, v70);
  sub_1CEFD1104(v68, v76);
  v47 = (*(v45 + 80) + 40) & ~*(v45 + 80);
  v48 = (v66 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = (v48 + 39) & 0xFFFFFFFFFFFFFFF8;
  v50 = (v49 + 15) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  v68 = sub_1CF8F0868;
  *(v51 + 2) = sub_1CF8F0868;
  *(v51 + 3) = v40;
  v52 = v72;
  *(v51 + 4) = v72;
  (*(v45 + 32))(&v51[v47], v75, v46);
  sub_1CEFE9EB8(v76, &v51[v48]);
  *&v51[v49] = v71;
  v53 = v61;
  *&v51[v50] = v61;
  v54 = v73;
  *&v51[(v50 + 15) & 0xFFFFFFFFFFFFFFF8] = v73;
  swift_retain_n();

  v55 = v52;
  v56 = v53;
  v57 = v54;
  sub_1CF8EB0F8("startProvidingItem(at:readerID:readingOptions:request:completionHandler:)", 73, 2, sub_1CF8F0894, v51, v57, v68, v40);

  sub_1CEFD5338(v65, type metadata accessor for Signpost);
  return v56;
}

uint64_t sub_1CF85A1A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_1CF9E7458();
  v6 = type metadata accessor for Signpost(0);
  v7 = *(v6 + 24);
  v8 = *(a2 + *(v6 + 20));
  v9 = *(a2 + v7);
  v10 = *(a2 + v7 + 8);
  v11 = *(a2 + v7 + 16);
  sub_1CF9E6038();
  return a3(a1);
}

uint64_t sub_1CF85A228(uint64_t a1, void (*a2)(id), uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(char *, uint64_t), void *a9)
{
  v92 = a7;
  v88 = a6;
  v98 = a5;
  v96 = a4;
  v93 = a9;
  v94 = a8;
  v13 = sub_1CF9E5A58();
  v14 = *(v13 - 8);
  v15 = v14;
  v16 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v89 = v17;
  v90 = v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v82 = v80 - v19;
  v20 = sub_1CF9E6118();
  v83 = *(v20 - 8);
  v84 = v20;
  v21 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v87 = v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = swift_allocObject();
  v85 = a2;
  v23[2] = a2;
  v23[3] = a3;
  v23[4] = a4;
  v23[5] = a1;
  v97 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF290, &unk_1CFA006C0);
  v24 = *(v14 + 72);
  v25 = *(v14 + 80);
  v26 = (v25 + 32) & ~v25;
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1CF9FA450;
  v81 = *(a1 + 16);
  v28 = *(*(v81 + 32) + 16);
  v80[1] = type metadata accessor for VFSFileTree(0);
  v29 = swift_dynamicCastClassUnconditional();
  v30 = *(v14 + 16);
  v30(v27 + v26, *(v29 + 136) + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_root, v13);
  v95 = a1;

  v96 = v96;
  v86 = a3;

  LOBYTE(v28) = sub_1CF517830(v27);
  swift_setDeallocating();
  v91 = v15;
  v31 = *(v15 + 8);
  v31(v27 + v26, v13);
  swift_deallocClassInstance();
  if (v28)
  {
    v32 = v30;
    v33 = v13;
    v34 = v98;
    v35 = v96;
    if ([v96 allowsResurrection])
    {
      v36 = *(*(v81 + 32) + 16);
      swift_dynamicCastClassUnconditional();
      v37 = swift_allocObject();
      v38 = v97;
      *(v37 + 16) = sub_1CF900628;
      *(v37 + 24) = v38;

      sub_1CF2888D4(v34, sub_1CF74F980, v37);
    }

    else
    {
      v94 = v31;
      v62 = fpfs_current_or_default_log();
      v63 = v87;
      sub_1CF9E6128();
      v64 = v82;
      v32(v82, v34, v33);
      v65 = sub_1CF9E6108();
      v66 = sub_1CF9E72C8();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v98 = v33;
        v69 = v68;
        v100[0] = v68;
        *v67 = 136315138;
        v70 = sub_1CF9E5928();
        v71 = [v70 fp_shortDescription];

        v72 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v73 = v35;
        v75 = v74;

        v94(v64, v98);
        v76 = sub_1CEFD0DF0(v72, v75, v100);
        v35 = v73;

        *(v67 + 4) = v76;
        _os_log_impl(&dword_1CEFC7000, v65, v66, "request for file %s doesn't allow resurrection", v67, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v69);
        MEMORY[0x1D386CDC0](v69, -1, -1);
        MEMORY[0x1D386CDC0](v67, -1, -1);

        (*(v83 + 8))(v87, v84);
      }

      else
      {

        v94(v64, v33);
        (*(v83 + 8))(v63, v84);
      }

      v77 = v95;
      type metadata accessor for NSFileProviderError(0);
      v99 = -1005;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CEFCCCA4(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError);
      sub_1CF9E57D8();
      v78 = v100[0];
      sub_1CF85AA08(v100[0], v85, v86, v35, v77);
    }
  }

  else
  {
    v86 = ~v25;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F40, qword_1CFA0F4C0);
    v40 = swift_allocBox();
    v87 = v40;
    v42 = v41;
    v43 = v39[12];
    v85 = v39[16];
    v44 = v39[20];
    sub_1CEFD1104(v88, v100);
    *v42 = sub_1CF9E6948();
    v42[1] = v45;
    v46 = v42 + v43;
    v47 = v98;
    v30(v46, v98, v13);
    v48 = v96;
    *(v85 + v42) = v96;
    v49 = v92;
    *(v42 + v44) = v92;
    v88 = v40 | 4;
    v50 = v90;
    v30(v90, v47, v13);
    v51 = (v25 + 64) & v86;
    v52 = (v89 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
    v53 = swift_allocObject();
    v54 = v97;
    *(v53 + 2) = sub_1CF900628;
    *(v53 + 3) = v54;
    v55 = v93;
    *(v53 + 4) = v93;
    *(v53 + 5) = v48;
    *(v53 + 6) = v49;
    *(v53 + 7) = v95;
    (*(v91 + 32))(&v53[v51], v50, v13);
    v56 = v88;
    *&v53[v52] = v88;
    v57 = v94;
    *&v53[(v52 + 15) & 0xFFFFFFFFFFFFFFF8] = v94;
    v58 = v48;

    v59 = v58;

    v60 = v55;

    v61 = v57;
    sub_1CF76E058(v98, v61, v56, sub_1CF900634, v53);
  }
}

void sub_1CF85AA08(void *a1, void (*a2)(id), uint64_t a3, void *a4, uint64_t a5)
{
  v10 = sub_1CF9E5248();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = sub_1CF9E5268();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    (a2)(0, v15);
    return;
  }

  v50 = a3;
  v51 = a2;
  *&v52[0] = a1;
  v18 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
  if (swift_dynamicCast())
  {
    *(v58 + 9) = *&v65[9];
    v56 = v63;
    v57 = v64;
    v58[0] = *v65;
    v54 = v61;
    v55 = v62;
    if (v65[24] == 5)
    {
      v20 = *&v52[0];
LABEL_11:

      sub_1CF9E50E8();
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CEFCCCA4(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
      sub_1CF9E57D8();
      v22 = sub_1CF9E50D8();
      (*(v13 + 8))(v17, v12);
      v51(v22);

      return;
    }

    sub_1CEFCCC44(&v54, &qword_1EC4BF270, &qword_1CFA01B70);
  }

  *&v61 = a1;
  v21 = a1;
  if (swift_dynamicCast())
  {
    if (v54 == 1)
    {
      v37 = v61;
      goto LABEL_24;
    }

    if (!v54)
    {
      v20 = v61;
      goto LABEL_11;
    }
  }

  v69 = a1;
  v23 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
  if (swift_dynamicCast())
  {
    v52[6] = v66;
    v52[7] = v67;
    v52[2] = v63;
    v52[3] = v64;
    v52[4] = *v65;
    v52[5] = *&v65[16];
    v52[0] = v61;
    v52[1] = v62;
    v58[2] = v66;
    v58[3] = v67;
    v56 = v63;
    v57 = v64;
    v58[0] = *v65;
    v58[1] = *&v65[16];
    v53 = v68;
    v59 = v68;
    v54 = v61;
    v55 = v62;
    if (sub_1CF2B971C(&v54))
    {
      sub_1CEFCCC44(v52, &unk_1EC4BE320, &unk_1CFA08B50);
      goto LABEL_15;
    }

    nullsub_1(&v54);
    sub_1CEFCCC44(v52, &unk_1EC4BE320, &unk_1CFA08B50);
    v37 = v69;
LABEL_24:

    v51(0);
    return;
  }

LABEL_15:

  *&v61 = a1;
  v24 = a1;
  if (swift_dynamicCast())
  {
    v25 = v54;
    v26 = *MEMORY[0x1E696A250];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1CF9FA450;
    v28 = *MEMORY[0x1E696AA08];
    *(v27 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(v27 + 40) = v29;
    *(v27 + 72) = &type metadata for MaterializationError;
    *(v27 + 48) = v25;
    v30 = v26;
    sub_1CF4E04E8(v27);
    swift_setDeallocating();
    sub_1CEFCCC44(v27 + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
    swift_deallocClassInstance();
    v31 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v32 = sub_1CF9E6618();

    v33 = [v31 initWithDomain:v30 code:256 userInfo:v32];

    v51(v33);
    v34 = v61;
  }

  else
  {

    v69 = a1;
    v35 = a1;
    if (!swift_dynamicCast())
    {

      v38 = v50;

      sub_1CF77A9C8(a1, 0, a5, v51, v38);

      return;
    }

    *(v58 + 9) = *&v65[9];
    v56 = v63;
    v57 = v64;
    v58[0] = *v65;
    v54 = v61;
    v55 = v62;
    if (v65[24] || ![a4 isFromPOSIX])
    {
      v39 = *MEMORY[0x1E696A250];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_1CF9FA450;
      v41 = *MEMORY[0x1E696AA08];
      *(v40 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      *(v40 + 40) = v42;
      *(v40 + 72) = v19;
      v43 = swift_allocObject();
      *(v40 + 48) = v43;
      v44 = v57;
      v43[3] = v56;
      v43[4] = v44;
      v43[5] = v58[0];
      *(v43 + 89) = *(v58 + 9);
      v45 = v55;
      v43[1] = v54;
      v43[2] = v45;
      v46 = v39;
      sub_1CEFCCBDC(&v54, v52, &qword_1EC4BF270, &qword_1CFA01B70);
      sub_1CF4E04E8(v40);
      swift_setDeallocating();
      sub_1CEFCCC44(v40 + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
      swift_deallocClassInstance();
      v47 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v48 = sub_1CF9E6618();

      v49 = [v47 initWithDomain:v46 code:256 userInfo:v48];

      v51(v49);
      sub_1CEFCCC44(&v54, &qword_1EC4BF270, &qword_1CFA01B70);
    }

    else
    {
      type metadata accessor for NSFileProviderError(0);
      v60 = -1005;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CEFCCCA4(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError);
      sub_1CF9E57D8();
      v36 = *&v52[0];
      v51(*&v52[0]);
      sub_1CEFCCC44(&v54, &qword_1EC4BF270, &qword_1CFA01B70);
    }

    v34 = v69;
  }
}

void sub_1CF85B210(uint64_t a1, void (*a2)(void), void *a3, char *a4, void *a5, void *a6, void *a7, uint64_t a8, unint64_t a9, id a10)
{
  v459 = a8;
  v473 = a7;
  v474 = a6;
  v475 = a5;
  v476 = a4;
  v478 = a2;
  v479 = a3;
  v480 = a1;
  v503 = *MEMORY[0x1E69E9840];
  v11 = sub_1CF9E5A58();
  v461 = *(v11 - 8);
  v462 = v11;
  v12 = *(v461 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v446 = v424 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v447 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFB10, &unk_1CFA12AD0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v437 = v424 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4C1588, &unk_1CFA0A260);
  v438 = *(v17 - 8);
  v18 = *(v438 + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v441 = v424 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v439 = v424 - v21;
  v440 = v22;
  MEMORY[0x1EEE9AC00](v23);
  v460 = v424 - v24;
  v433 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F40, qword_1CFA0F4C0);
  v25 = *(*(v433 - 8) + 64);
  MEMORY[0x1EEE9AC00](v433);
  v432 = v424 - v26;
  v27 = sub_1CF9E5248();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v464 = v424 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1CF9E5268();
  v466 = *(v30 - 8);
  v467 = v30;
  v31 = *(v466 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v465 = v424 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1CF9E63D8();
  v435 = *(v33 - 8);
  v436 = v33;
  v34 = *(v435 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v434 = v424 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v458 = v424 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v472 = (v424 - v40);
  v41 = sub_1CF9E6068();
  v455 = *(v41 - 8);
  v456 = v41;
  v42 = *(v455 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v449 = v424 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v451 = v424 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v468 = v424 - v48;
  v448 = type metadata accessor for Signpost(0);
  v452 = *(v448 - 8);
  v49 = *(v452 + 64);
  MEMORY[0x1EEE9AC00](v448);
  v457 = v424 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v453 = v53;
  v454 = (v424 - v52);
  MEMORY[0x1EEE9AC00](v54);
  v469 = (v424 - v55);
  v56 = sub_1CF9E6118();
  v470 = *(v56 - 8);
  v471 = v56;
  v57 = v470[8];
  MEMORY[0x1EEE9AC00](v56);
  v442 = v424 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v59);
  v444 = v424 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v463 = v424 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v431 = v424 - v64;
  v65 = sub_1CF9E53C8();
  v443 = *(v65 - 8);
  v66 = v443[8];
  MEMORY[0x1EEE9AC00](v65);
  v68 = v424 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for VFSItem(0);
  v70 = *(v69 - 8);
  v71 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v450 = v424 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v72);
  v445 = v424 - v73;
  MEMORY[0x1EEE9AC00](v74);
  v477 = v424 - v75;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  v77 = *(*(v76 - 8) + 64);
  MEMORY[0x1EEE9AC00](v76);
  v79 = (v424 - v78);
  sub_1CEFCCBDC(v480, v424 - v78, &unk_1EC4BF310, &unk_1CF9FDB30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v80 = *v79;
    v81 = *v79;
    (v478)(v80);

    goto LABEL_155;
  }

  if ((*(v70 + 48))(v79, 1, v69) == 1)
  {
    (v478)(0);
    goto LABEL_155;
  }

  v428 = v70;
  v82 = v79;
  v83 = v477;
  sub_1CEFDA0C4(v82, v477, type metadata accessor for VFSItem);
  v427 = v69;
  v84 = v83;
  v85 = (v83 + *(v69 + 28));
  v86 = type metadata accessor for ItemMetadata();
  v87 = v85[*(v86 + 80)];
  if (v87 != 1)
  {
    v426 = 0;
LABEL_11:
    v94 = v84;
    goto LABEL_12;
  }

  v429 = v86;
  v430 = v85;
  v88 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_domain;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_161;
  }

  v90 = Strong;
  v91 = [Strong userEnabled];

  if ((v91 & 1) == 0)
  {
    v106 = sub_1CF4E04E8(MEMORY[0x1E69E7CC0]);
    v107 = swift_unknownObjectWeakLoadStrong();
    if (v107)
    {
      v108 = v107;
      v109 = [v107 provider];

      if (v109)
      {
        v110 = [v109 descriptor];

        v111 = [v110 localizedName];
        v112 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v114 = v113;

        v115 = *MEMORY[0x1E6967248];
        v116 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v118 = v117;
        v487 = MEMORY[0x1E69E6158];
        *&v485 = v112;
        *(&v485 + 1) = v114;
        sub_1CEFE9EB8(&v485, &v498);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v494 = v106;
        sub_1CF1D154C(&v498, v116, v118, isUniquelyReferenced_nonNull_native);
      }
    }

    type metadata accessor for NSFileProviderError(0);
    *&v498 = -2011;
    sub_1CEFCCCA4(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError);
    sub_1CF9E57D8();
    v120 = v485;
    v121 = v485;
    (v478)(v120);

    goto LABEL_27;
  }

  v92 = [v475 shouldFailCoordinationIfDownloadRequired];
  if (v92)
  {
    LODWORD(v485) = 1;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CEFCCCA4(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
    sub_1CF9E57D8();
    v93 = sub_1CF9E53A8();
    v478();

    (v443[1])(v68, v65);
LABEL_27:
    v122 = v84;
    goto LABEL_154;
  }

  if ((v474 & 0x200000) == 0)
  {
    v426 = 0;
    v86 = v429;
    v85 = v430;
    goto LABEL_11;
  }

  v123 = v473[2];
  MEMORY[0x1EEE9AC00](v92);
  v422 = v124;
  v423 = v84;
  v125 = objc_autoreleasePoolPush();
  LOBYTE(v123) = sub_1CF803A54(v123, 2, "startProvidingItem(at:readerID:readingOptions:request:completionHandler:)", 73, 2, 0, sub_1CF900F9C, &v420);
  objc_autoreleasePoolPop(v125);
  v426 = 0;
  v94 = v84;
  v86 = v429;
  v85 = v430;
  if (v123)
  {
    v126 = FPEvictedByTheUserError();
LABEL_104:
    v478();

LABEL_111:
    v122 = v94;
    goto LABEL_154;
  }

LABEL_12:
  v95 = a9;
  if ((v474 & 0x20000) != 0)
  {
    v105 = 1;
    goto LABEL_38;
  }

  v96 = v86;
  if (([v475 isFromPOSIX] & 1) != 0 || *(v94 + 8) == 2 && !*v94)
  {
    goto LABEL_36;
  }

  if (*v85 != 1)
  {
    goto LABEL_36;
  }

  v97 = *(v94 + 40);
  *&v485 = *(v94 + 32);
  *(&v485 + 1) = v97;
  *&v498 = 47;
  *(&v498 + 1) = 0xE100000000000000;
  *&v494 = 58;
  *(&v494 + 1) = 0xE100000000000000;
  v422 = sub_1CEFE4E68();
  v423 = v422;
  v420 = MEMORY[0x1E69E6158];
  v421 = v422;
  sub_1CF9E7668();
  sub_1CF9E6978();

  v98 = fpfs_filename_contains_ext();

  if (!v98 || (LOBYTE(v485) = 0, sub_1CF9E5A18(), sub_1CF9E6978(), , is_demoted_at = fpfs_pkg_is_demoted_at(), , is_demoted_at < 0) || v485 != 1)
  {
LABEL_36:
    v105 = 0;
    goto LABEL_37;
  }

  v100 = v85;
  v101 = *(*(v473[2] + 32) + 16);
  type metadata accessor for VFSFileTree(0);
  v102 = swift_dynamicCastClassUnconditional();
  MEMORY[0x1EEE9AC00](v102);
  v420 = v103;
  v421 = sub_1CF266814;
  v422 = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4C5730, &qword_1CF9FCCE0);
  v104 = v426;
  sub_1CF9E59B8();
  v426 = v104;

  if (v498 != 2)
  {
    v94 = v477;
    if (v498)
    {
      v127 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v128 = sub_1CF9E6108();
      v129 = sub_1CF9E7288();
      if (os_log_type_enabled(v128, v129))
      {
        v130 = swift_slowAlloc();
        *v130 = 0;
        _os_log_impl(&dword_1CEFC7000, v128, v129, "forcing recursive materialize of demoted package", v130, 2u);
        v131 = v130;
        v85 = v100;
        MEMORY[0x1D386CDC0](v131, -1, -1);
      }

      (v470[1])(v431, v471);
      v105 = 1;
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  v105 = 0;
  v94 = v477;
LABEL_37:
  v86 = v96;
LABEL_38:
  v132 = a10;
  v480 = a9;
  v474 = a10;
  if (v87)
  {
    goto LABEL_95;
  }

  v133 = v85[*(v86 + 84)];
  v429 = v86;
  v430 = v85;
  LODWORD(v431) = v105;
  if (!v133 || v133 >= 4)
  {
    goto LABEL_72;
  }

  v443 = v473[2];
  v134 = *(v443[4] + 16);
  type metadata accessor for VFSFileTree(0);
  v135 = swift_dynamicCastClassUnconditional();

  v136 = objc_sync_enter(v135);
  if (v136)
  {
    goto LABEL_166;
  }

  v137 = v135[20];

  v138 = objc_sync_exit(v135);
  if (v138)
  {
    MEMORY[0x1EEE9AC00](v138);
    v422 = v135;
    goto LABEL_171;
  }

  v139 = v94 + *(v427 + 36);
  v140 = *v139;
  v141 = v94 + *(v427 + 56);
  if (*(v141 + 4))
  {
    v142 = 0;
  }

  else
  {
    v142 = *v141;
  }

  v143 = *(v139 + 8);

  v498 = v140;
  v499 = v142;
  v500 = v143;
  v501 = 0;
  v502 = 0;
  v144 = *(v137 + 4);
  os_unfair_lock_lock(v137 + 14);
  v145 = *(v137 + 8);
  v146 = *(v137 + 9);
  v10 = *(v137 + 10);
  v147 = v137;
  LOBYTE(v137) = v137[88];
  LOBYTE(v148) = BYTE1(v147[22]._os_unfair_lock_opaque);
  LODWORD(v149) = BYTE2(v147[22]._os_unfair_lock_opaque);

  v427 = v147;
  os_unfair_lock_unlock(v147 + 14);
  MEMORY[0x1EEE9AC00](v150);
  v422 = (v144 | 0x20800000000000);
  v496 = 0;
  v497 = 0;
  *&v494 = v152;
  *(&v494 + 1) = v153;
  v495 = __PAIR64__(v155, v154);
  if (!v156)
  {
    *&v490 = v152;
    *(&v490 + 1) = v153;
    v491 = __PAIR64__(v155, v154);
    v492 = 0;
    v493 = 0;
    LODWORD(v484[0]) = -1;
    v161 = fpfs_openfdbyhandle();
    if ((v161 & 0x80000000) == 0)
    {
      v165 = v161;
      v425 = v149;
      v166 = v148;
      v167 = v137;
      v168 = v145;
      goto LABEL_57;
    }

    v176 = v484[0];
    v163 = MEMORY[0x1D38683F0]();
    if (v176 < 0)
    {
      LODWORD(v485) = 0;
      BYTE4(v485) = 1;
    }

    else
    {
      LODWORD(v485) = v484[0];
      BYTE4(v485) = 0;
    }

    goto LABEL_84;
  }

  isEscapingClosureAtFileLocation = v424;
  MEMORY[0x1EEE9AC00](v151);
  v420 = &v494;
  v421 = sub_1CF2F6700;
  v422 = v160;
  if ((v159 & 0x1000000000000000) != 0)
  {
    goto LABEL_157;
  }

  if ((v159 & 0x2000000000000000) != 0)
  {
    v484[0] = v158;
    v484[1] = v159 & 0xFFFFFFFFFFFFFFLL;
    v496 = v484;
    v490 = v494;
    v491 = v495;
    v492 = v484;
    v493 = v497;
    v481 = -1;
    v161 = fpfs_openfdbyhandle();
    if ((v161 & 0x80000000) != 0)
    {
      v177 = v481;
      v163 = MEMORY[0x1D38683F0]();
      if ((v177 & 0x80000000) == 0)
      {
        v164 = v481;
        goto LABEL_67;
      }

LABEL_82:
      LODWORD(v485) = 0;
      BYTE4(v485) = 1;
      goto LABEL_84;
    }

LABEL_56:
    v165 = v161;
    v425 = v149;
    v166 = v148;
    v167 = v137;
    v168 = v145;
    goto LABEL_57;
  }

  if ((v158 & 0x1000000000000000) == 0)
  {
    goto LABEL_157;
  }

  v496 = ((v159 & 0xFFFFFFFFFFFFFFFLL) + 32);
  v490 = v494;
  v491 = v495;
  v492 = v496;
  v493 = v497;
  LODWORD(v484[0]) = -1;
  v161 = fpfs_openfdbyhandle();
  if ((v161 & 0x80000000) == 0)
  {
    goto LABEL_56;
  }

  v162 = v484[0];
  v163 = MEMORY[0x1D38683F0]();
  if (v162 < 0)
  {
    goto LABEL_82;
  }

  v164 = v484[0];
LABEL_67:
  LODWORD(v485) = v164;
  BYTE4(v485) = 0;
LABEL_84:
  LOBYTE(v489) = 0;
  v172 = sub_1CF19BBE4(v163, &v485);
  sub_1CF1969CC(&v485);
  v173 = v477;
  v174 = v445;
  swift_willThrow();
LABEL_85:
  v237 = v172;
  LODWORD(v485) = sub_1CF9E5308();
  sub_1CF196978();
  sub_1CF9E5658();

LABEL_86:

  sub_1CF255928(&v498);
  v238 = v463;
  v239 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFDA34C(v173, v174, type metadata accessor for VFSItem);
  v240 = v172;
  v241 = sub_1CF9E6108();
  v242 = sub_1CF9E72A8();

  v243 = os_log_type_enabled(v241, v242);
  v95 = v480;
  v105 = v431;
  if (v243)
  {
    v244 = swift_slowAlloc();
    v245 = swift_slowAlloc();
    v472 = swift_slowAlloc();
    *&v485 = v472;
    *v244 = 136446466;
    v246 = sub_1CF255338();
    v247 = v174;
    v249 = v248;
    sub_1CEFD5338(v247, type metadata accessor for VFSItem);
    v250 = sub_1CEFD0DF0(v246, v249, &v485);

    *(v244 + 4) = v250;
    *(v244 + 12) = 2112;
    swift_getErrorValue();
    v251 = Error.prettyDescription.getter(v483);
    *(v244 + 14) = v251;
    *v245 = v251;
    _os_log_impl(&dword_1CEFC7000, v241, v242, "Failed to bump urgency of coordinated item: %{public}s, error %@", v244, 0x16u);
    sub_1CEFCCC44(v245, &qword_1EC4BE350, &unk_1CF9FC3B0);
    v252 = v429;
    v94 = v477;
    MEMORY[0x1D386CDC0](v245, -1, -1);
    v253 = v472;
    __swift_destroy_boxed_opaque_existential_1(v472);
    MEMORY[0x1D386CDC0](v253, -1, -1);
    MEMORY[0x1D386CDC0](v244, -1, -1);

    (v470[1])(v463, v471);
    v236 = v252;
    v235 = v430;
  }

  else
  {

    sub_1CEFD5338(v174, type metadata accessor for VFSItem);
    (v470[1])(v238, v471);
    v236 = v429;
    v235 = v430;
    v94 = v173;
  }

  while (1)
  {
    v132 = v474;
    if (!v105 || *v235 != 1 && (v235[*(v236 + 112)] & 1) == 0)
    {
      v88 = v443;
      Strong = objc_sync_enter(v443);
      if (Strong)
      {
        goto LABEL_163;
      }

      v254 = *(v88 + qword_1EDEADAA8);
      v255 = objc_sync_exit(v88);
      if (v255)
      {
        MEMORY[0x1EEE9AC00](v255);
        v422 = v88;
      }

      else
      {
        if ((v254 & 1) == 0)
        {
          (v478)(0);
          goto LABEL_111;
        }

LABEL_95:
        if (v105)
        {
          goto LABEL_96;
        }

        if ([v132 isCancelled])
        {
LABEL_103:
          sub_1CF9E50E8();
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CEFCCCA4(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
          v287 = v465;
          v288 = v467;
          sub_1CF9E57D8();
          v126 = sub_1CF9E50D8();
          (*(v466 + 8))(v287, v288);
          goto LABEL_104;
        }

        v289 = v473[2];
        v290 = *v94;
        v291 = *(v94 + 8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4BF0, &unk_1CFA189D0);
        v292 = swift_allocObject();
        *(v292 + 32) = v290;
        v475 = (v292 + 32);
        v476 = v289;
        *(v292 + 40) = v291;
        *(v292 + 41) = 0;
        *(v292 + 16) = v290;
        *(v292 + 24) = v291;
        *(v292 + 25) = 0;
        v293 = objc_sync_enter(v289);
        if (v293)
        {
          MEMORY[0x1EEE9AC00](v293);
          v422 = v476;
          goto LABEL_169;
        }

        LODWORD(v472) = v476[qword_1EDEADAA8];
        v294 = objc_sync_exit(v476);
        v296 = v478;
        v295 = v479;
        if (!v294)
        {
          v297 = swift_allocObject();
          *(v297 + 16) = v296;
          *(v297 + 24) = v295;
          v478 = v297;

          v298 = fpfs_current_or_default_log();
          v299 = v444;
          sub_1CF9E6128();
          sub_1CEFD09A0(v95);
          sub_1CEFD09A0(v95);

          v300 = sub_1CF9E6108();
          v301 = sub_1CF9E7298();
          if (os_log_type_enabled(v300, v301))
          {
            v302 = swift_slowAlloc();
            v303 = swift_slowAlloc();
            *&v494 = v303;
            *v302 = 136315394;
            v304 = swift_beginAccess();
            v306 = *(v292 + 32);
            v307 = *(v292 + 40);
            if (*(v292 + 41))
            {
              v308 = v306;
              v309 = NSFileProviderItemIdentifier.description.getter();
              v311 = v310;
              sub_1CEFD0994(v306, v307, 1);
            }

            else
            {
              *&v485 = *(v292 + 32);
              BYTE8(v485) = v307;
              v309 = VFSItemID.description.getter(v304, v305);
              v311 = v326;
            }

            v327 = sub_1CEFD0DF0(v309, v311, &v494);

            *(v302 + 4) = v327;
            *(v302 + 12) = 2080;
            v95 = v480;
            v328 = sub_1CEFD11AC(v480);
            v330 = v329;
            sub_1CEFD0A98(v95);
            sub_1CEFD0A98(v95);
            v331 = sub_1CEFD0DF0(v328, v330, &v494);

            *(v302 + 14) = v331;
            _os_log_impl(&dword_1CEFC7000, v300, v301, "Request to materialize content of itemID %s reason %s", v302, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1D386CDC0](v303, -1, -1);
            MEMORY[0x1D386CDC0](v302, -1, -1);

            v324 = v470[1];
            v325 = v444;
          }

          else
          {
            sub_1CEFD0A98(v95);
            sub_1CEFD0A98(v95);

            v324 = v470[1];
            v325 = v299;
          }

          v468 = v324;
          (v324)(v325, v471);
          v479 = v292;
          v332 = v437;
          LODWORD(v465) = (v95 >> 58) & 0x3C | (v95 >> 1) & 3;
          if (v465 == 2)
          {
            v333 = swift_projectBox();
            v334 = v432;
            sub_1CEFCCBDC(v333, v432, &unk_1EC4C4F40, qword_1CFA0F4C0);
            v335 = *(v334 + 8);

            v336 = v433;
            v337 = *(v433 + 48);

            v338 = *(v334 + *(v336 + 80));
            (*(v461 + 8))(v334 + v337, v462);
          }

          else
          {
            v338 = 0;
          }

          v339 = v460;
          v340 = v438;
          v341 = v439;
          sub_1CEFCCBDC(&v476[qword_1EDEBBC18], v332, &qword_1EC4BFB10, &unk_1CFA12AD0);
          v342 = type metadata accessor for TelemetrySignposter(0);
          if ((*(*(v342 - 8) + 48))(v332, 1, v342) == 1)
          {
            sub_1CEFCCC44(v332, &qword_1EC4BFB10, &unk_1CFA12AD0);
            v343 = 1;
          }

          else
          {
            sub_1CF519DE8(v338, v339);
            sub_1CEFD5338(v332, type metadata accessor for TelemetrySignposter);
            v343 = 0;
          }

          v344 = type metadata accessor for TelemetrySignpost(0);
          (*(*(v344 - 8) + 56))(v339, v343, 1, v344);
          sub_1CEFCCBDC(v339, v341, qword_1EC4C1588, &unk_1CFA0A260);
          v345 = *(v340 + 80);
          v346 = (v345 + 16) & ~v345;
          v347 = v440;
          v348 = (v440 + v346 + 7) & 0xFFFFFFFFFFFFFFF8;
          v349 = swift_allocObject();
          v473 = v349;
          sub_1CEFE55D0(v341, v349 + v346, qword_1EC4C1588, &unk_1CFA0A260);
          v350 = (v349 + v348);
          v469 = sub_1CF900760;
          v351 = v478;
          *v350 = sub_1CF900760;
          v350[1] = v351;
          v352 = v441;
          sub_1CEFCCBDC(v339, v441, qword_1EC4C1588, &unk_1CFA0A260);
          v353 = (v345 + 24) & ~v345;
          v354 = (v353 + v347 + 31) & 0xFFFFFFFFFFFFFFF8;
          v466 = (v353 + v347 + 7) & 0xFFFFFFFFFFFFFFF8;
          v467 = (v354 + 15) & 0xFFFFFFFFFFFFFFF8;
          v355 = (v354 + 31) & 0xFFFFFFFFFFFFFFF8;
          v356 = (v355 + 15) & 0xFFFFFFFFFFFFFFF8;
          v357 = swift_allocObject();
          v358 = v480;
          *(v357 + 2) = v480;
          sub_1CEFE55D0(v352, v357 + v353, qword_1EC4C1588, &unk_1CFA0A260);
          v359 = v357 + v466;
          v360 = v358;
          *v359 = v469;
          *(v359 + 1) = v351;
          v361 = v472;
          v359[16] = v472;
          *(v357 + v354) = v476;
          v362 = v357 + v467;
          v363 = v479;
          *v362 = v479;
          v362[8] = 0;
          *(v357 + v355) = 0;
          v365 = v473;
          v364 = v474;
          *(v357 + v356) = v474;
          v366 = v357 + ((v356 + 15) & 0xFFFFFFFFFFFFFFF8);
          v367 = v363;
          *v366 = sub_1CF903314;
          *(v366 + 1) = v365;
          v366[16] = 1;
          if (v361)
          {
            v368 = 2;
          }

          else
          {
            v368 = 1;
          }

          LODWORD(v467) = v368;
          v369 = objc_allocWithZone(MEMORY[0x1E696AE38]);

          sub_1CEFD09A0(v360);

          v370 = v364;

          v371 = [v369 init];
          v372 = swift_allocObject();
          v372[2] = sub_1CF903318;
          v372[3] = v357;
          v372[4] = v360;
          sub_1CEFD09A0(v360);

          sub_1CEFD09A0(v360);
          v469 = v357;

          v373 = fpfs_current_or_default_log();
          v374 = v442;
          sub_1CF9E6128();
          sub_1CEFD09A0(v360);
          sub_1CEFD09A0(v360);

          v375 = sub_1CF9E6108();
          v376 = sub_1CF9E7298();
          if (os_log_type_enabled(v375, v376))
          {
            LODWORD(v464) = v376;
            v474 = v372;
            v466 = v371;
            v377 = swift_slowAlloc();
            v463 = swift_slowAlloc();
            v484[0] = v463;
            *v377 = 136315906;
            v378 = swift_beginAccess();
            v380 = v367[4];
            v381 = *(v367 + 40);
            if (*(v367 + 41))
            {
              v382 = v380;
              v383 = NSFileProviderItemIdentifier.description.getter();
              v385 = v384;
              sub_1CEFD0994(v380, v381, 1);
            }

            else
            {
              *&v485 = v367[4];
              BYTE8(v485) = v381;
              v383 = VFSItemID.description.getter(v378, v379);
              v385 = v386;
            }

            v387 = sub_1CEFD0DF0(v383, v385, v484);

            *(v377 + 4) = v387;
            *(v377 + 12) = 2080;
            if (v472)
            {
              v388 = 0xD000000000000010;
            }

            else
            {
              v388 = 0x74616761706F7270;
            }

            if (v472)
            {
              v389 = 0x80000001CFA2C3C0;
            }

            else
            {
              v389 = 0xED000053466F5465;
            }

            v390 = sub_1CEFD0DF0(v388, v389, v484);

            *(v377 + 14) = v390;
            *(v377 + 22) = 2080;
            v360 = v480;
            v391 = sub_1CEFD11AC(v480);
            v393 = v392;
            sub_1CEFD0A98(v360);
            sub_1CEFD0A98(v360);
            v394 = sub_1CEFD0DF0(v391, v393, v484);

            *(v377 + 24) = v394;
            *(v377 + 32) = 2048;
            *(v377 + 34) = 0;
            _os_log_impl(&dword_1CEFC7000, v375, v464, "Lookup itemID %s with behavior %s request %s iteration %ld", v377, 0x2Au);
            v395 = v463;
            swift_arrayDestroy();
            MEMORY[0x1D386CDC0](v395, -1, -1);
            MEMORY[0x1D386CDC0](v377, -1, -1);

            (v468)(v374, v471);
            v367 = v479;
            v371 = v466;
            v372 = v474;
          }

          else
          {
            sub_1CEFD0A98(v360);
            sub_1CEFD0A98(v360);

            (v468)(v374, v471);
          }

          swift_beginAccess();
          v396 = v367[4];
          v397 = *(v367 + 40);
          if (*(v367 + 41))
          {
            v398 = v371;
            v399 = qword_1EDEA34B0;
            v400 = v396;
            if (v399 != -1)
            {
              swift_once();
            }

            v401 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v403 = v402;
            if (v401 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v403 == v404)
            {

              sub_1CEFD0994(v396, v397, 1);
              v371 = v398;
LABEL_146:
              sub_1CF90CAC8(v360, sub_1CF796A0C, v372);
LABEL_152:

              sub_1CEFD0A98(v360);

              sub_1CEFCCC44(v460, qword_1EC4C1588, &unk_1CFA0A260);
              goto LABEL_153;
            }

            v405 = sub_1CF9E8048();

            sub_1CEFD0994(v396, v397, 1);
            v367 = v479;
            v371 = v398;
            if (v405)
            {
              goto LABEL_146;
            }
          }

          else if (!v396 && v397 == 2)
          {
            goto LABEL_146;
          }

          if (v465 == 30)
          {
            v406 = *((v360 & 0xFFFFFFFFFFFFFF9) + 0x10);
            v407 = v406;
          }

          else
          {
            v408 = swift_allocObject();
            *(v408 + 16) = v360;
            v407 = v408 | 0x7000000000000004;
            v406 = v360;
          }

          v409 = v467;
          sub_1CEFD09A0(v406);
          v410 = swift_allocObject();
          *(v410 + 16) = sub_1CF796A0C;
          *(v410 + 24) = v372;
          v411 = v476;
          *(v410 + 32) = v476;
          *(v410 + 40) = v409;
          *(v410 + 48) = v360;
          *(v410 + 56) = v367;
          *(v410 + 64) = 0;
          *(v410 + 72) = v371;
          *(v410 + 80) = 0;
          v412 = swift_allocObject();
          v474 = v372;
          v413 = v371;
          v414 = v412;
          *(v412 + 16) = v367;
          *(v412 + 24) = v411;
          *(v412 + 32) = 0;
          *(v412 + 40) = sub_1CF796A90;
          *(v412 + 48) = v410;
          *(v412 + 56) = v407;
          v415 = v407;
          v416 = swift_allocObject();
          *(v416 + 16) = sub_1CF796A90;
          *(v416 + 24) = v410;

          sub_1CEFD09A0(v360);

          v417 = v413;
          sub_1CEFD09A0(v415);
          sub_1CF7AAF88("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF554464, v416, sub_1CF796A9C, v414);

          v371 = v413;

          sub_1CEFD0A98(v415);
          goto LABEL_152;
        }

        MEMORY[0x1EEE9AC00](v294);
        v422 = v476;
      }

LABEL_171:
      fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v420, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
    }

LABEL_96:
    if ([v132 isCancelled])
    {
      goto LABEL_103;
    }

    v149 = *(*(v473[2] + 32) + 16);
    type metadata accessor for VFSFileTree(0);
    v256 = swift_dynamicCastClassUnconditional();
    v257 = *v94;
    v258 = *(v94 + 8);

    v259 = [v475 description];
    v260 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v262 = v261;

    v473 = v424;
    v263 = *(v256 + 216);
    MEMORY[0x1EEE9AC00](v264);
    v424[-6] = v257;
    LOBYTE(v424[-5]) = v258;
    v420 = v260;
    v421 = v262;
    v472 = v262;
    v422 = v256;
    v137 = v265;
    v145 = fpfs_current_log();
    v471 = fpfs_adopt_log();
    *&v490 = 0;
    BYTE8(v490) = 1;
    *&v485 = sub_1CF9E73C8();
    *(&v485 + 1) = v266;
    MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
    v71 = 40;
    v88 = 2;
    v267 = sub_1CF9E7988();
    MEMORY[0x1D3868CC0](v267);

    sub_1CF9E6978();

    v268 = __fp_log_fork();

    v470 = v424;
    *&v490 = v268;
    BYTE8(v490) = 0;
    MEMORY[0x1EEE9AC00](v269);
    v424[-8] = v145;
    v424[-7] = &v490;
    v424[-6] = v137;
    v424[-5] = "registerMoveOutPreprocessing(below:for:)";
    v420 = 40;
    LOBYTE(v421) = 2;
    v422 = sub_1CF900C34;
    v423 = &v424[-8];
    v494 = 0uLL;
    v484[0] = 0;
    v270 = swift_allocObject();
    v270[2] = &v494;
    v270[3] = sub_1CF900C5C;
    v270[4] = &v424[-10];
    v270[5] = v484;
    v148 = swift_allocObject();
    *(v148 + 16) = sub_1CF900C9C;
    *(v148 + 24) = v270;
    v488 = sub_1CF1C0B54;
    v489 = v148;
    *&v485 = MEMORY[0x1E69E9820];
    *(&v485 + 1) = 1107296256;
    v486 = sub_1CEFFD02C;
    v487 = &block_descriptor_5409;
    v271 = _Block_copy(&v485);
    v146 = v489;

    FPDispatchAsyncAndWait(v137, v271);
    _Block_release(v271);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_157:
    v424[1] = isEscapingClosureAtFileLocation;
    v425 = v149;
    v166 = v148;
    v167 = v137;
    v168 = v145;
    v419 = v426;
    v161 = sub_1CF9E7938();
    v426 = v419;
    if (v419)
    {
      v173 = v477;
      v174 = v445;
      v172 = v426;
      goto LABEL_85;
    }

    v165 = v482;
LABEL_57:
    v88 = v424;
    MEMORY[0x1EEE9AC00](v161);
    LOBYTE(v423) = 4;
    HIDWORD(v423) = v165;
    *&v485 = 0;
    LOBYTE(v494) = 1;
    MEMORY[0x1EEE9AC00](v169);
    v424[-10] = v168;
    v424[-9] = v146;
    v424[-8] = v10;
    LOBYTE(v424[-7]) = v167;
    BYTE1(v424[-7]) = v166;
    BYTE2(v424[-7]) = v425;
    HIDWORD(v424[-7]) = v165;
    v424[-6] = 0;
    v424[-5] = &v494;
    v420 = sub_1CF902E54;
    v421 = v170;
    v422 = &v485;
    v171 = v426;
    Strong = sub_1CEFE1894(sub_1CF903424);
    if (v171)
    {
      v172 = v171;
      v173 = v477;
      v174 = v445;
LABEL_61:

      if ((v165 & 0x80000000) == 0)
      {
        close(v165);
      }

      goto LABEL_86;
    }

    v172 = v485;
    v173 = v477;
    v174 = v445;
    if (v485)
    {
      swift_willThrow();
      v175 = v172;
      goto LABEL_61;
    }

    if (v494)
    {
      goto LABEL_162;
    }

    v94 = v477;
    if ((v165 & 0x80000000) == 0)
    {
      close(v165);
    }

    sub_1CF255928(&v498);
    v95 = v480;
LABEL_72:
    v178 = v473;
    v179 = v473[2];
    v180 = v450;
    sub_1CEFDA34C(v94, v450, type metadata accessor for VFSItem);
    v181 = (*(v428 + 80) + 24) & ~*(v428 + 80);
    v182 = (v71 + v181 + 7) & 0xFFFFFFFFFFFFFFF8;
    v183 = swift_allocObject();
    *(v183 + 16) = v178;
    sub_1CEFDA0C4(v180, v183 + v181, type metadata accessor for VFSItem);
    v463 = v183;
    *(v183 + v182) = v95;
    v443 = v179;
    v184 = *(v179 + qword_1EDEBBC38);

    sub_1CEFD09A0(v95);
    v450 = fpfs_adopt_log();
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v185 = qword_1EDEBBE40;
    v187 = v455;
    v186 = v456;
    v188 = v468;
    (*(v455 + 56))(v468, 1, 1, v456);
    strcpy(&v485, "async batch ");
    BYTE13(v485) = 0;
    HIWORD(v485) = -5120;
    v189 = sub_1CF9E7988();
    MEMORY[0x1D3868CC0](v189);

    v190 = *(&v485 + 1);
    v445 = v485;
    v191 = v451;
    sub_1CEFCCBDC(v188, v451, &unk_1EC4BED20, &unk_1CFA00700);
    v192 = *(v187 + 48);
    if (v192(v191, 1, v186) == 1)
    {
      v193 = v185;
      v194 = v449;
      sub_1CF9E6048();
      v195 = v192(v191, 1, v186);
      v196 = v448;
      if (v195 != 1)
      {
        sub_1CEFCCC44(v191, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      v194 = v449;
      (*(v187 + 32))(v449, v191, v186);
      v196 = v448;
    }

    v197 = *(v187 + 16);
    v198 = v187;
    v199 = v469;
    v197(v469, v194, v186);
    *(v199 + *(v196 + 20)) = v185;
    v200 = v199 + *(v196 + 24);
    *v200 = "DB queue wait";
    *(v200 + 1) = 13;
    v200[16] = 2;
    v201 = v185;
    sub_1CF9E7468();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v202 = v186;
    v203 = swift_allocObject();
    *(v203 + 16) = xmmword_1CF9FA450;
    *(v203 + 56) = MEMORY[0x1E69E6158];
    *(v203 + 64) = sub_1CEFD51C4();
    *(v203 + 32) = v445;
    *(v203 + 40) = v190;
    v422 = v203;
    LOBYTE(v421) = 2;
    v420 = 2;
    sub_1CF9E6028();

    (*(v198 + 8))(v194, v202);
    sub_1CEFCCC44(v468, &unk_1EC4BED20, &unk_1CFA00700);
    v456 = v443[21];
    v468 = v443[8];
    v451 = sub_1CF9E6448();
    v455 = *(v451 - 8);
    (*(v455 + 56))(v472, 1, 1, v451);
    v204 = v454;
    sub_1CEFDA34C(v199, v454, type metadata accessor for Signpost);
    v205 = (*(v452 + 80) + 16) & ~*(v452 + 80);
    v206 = (v453 + v205 + 7) & 0xFFFFFFFFFFFFFFF8;
    v207 = swift_allocObject();
    v453 = type metadata accessor for Signpost;
    sub_1CEFDA0C4(v204, v207 + v205, type metadata accessor for Signpost);
    v208 = (v207 + v206);
    v454 = nullsub_1;
    *v208 = nullsub_1;
    v208[1] = 0;
    v209 = v457;
    sub_1CEFDA34C(v199, v457, type metadata accessor for Signpost);
    v210 = (v206 + 23) & 0xFFFFFFFFFFFFFFF8;
    v211 = (v210 + 15) & 0xFFFFFFFFFFFFFFF8;
    v212 = (v211 + 25) & 0xFFFFFFFFFFFFFFF8;
    v213 = (v212 + 23) & 0xFFFFFFFFFFFFFFF8;
    v214 = swift_allocObject();
    sub_1CEFDA0C4(v209, v214 + v205, v453);
    v215 = (v214 + v206);
    *v215 = sub_1CF045408;
    v215[1] = 0;
    *(v214 + v210) = v443;
    v216 = v214 + v211;
    *v216 = "startProvidingItem(at:readerID:readingOptions:request:completionHandler:)";
    *(v216 + 8) = 73;
    *(v216 + 16) = 2;
    v217 = (v214 + v212);
    v218 = v455;
    *v217 = v454;
    v217[1] = 0;
    v219 = (v214 + v213);
    v220 = v463;
    *v219 = sub_1CF900EA4;
    v219[1] = v220;
    v221 = swift_allocObject();
    v221[2] = sub_1CF903308;
    v221[3] = v207;
    v222 = v456;
    v221[4] = v456;

    v457 = v207;

    v223 = fpfs_current_log();
    v224 = *(v222 + 16);
    v225 = v458;
    sub_1CEFCCBDC(v472, v458, &unk_1EC4BE370, qword_1CFA01B30);
    v226 = v451;
    if ((*(v218 + 48))(v225, 1) == 1)
    {
      sub_1CEFCCC44(v225, &unk_1EC4BE370, qword_1CFA01B30);
      v227 = QOS_CLASS_UNSPECIFIED;
    }

    else
    {
      v228 = v434;
      sub_1CF9E6438();
      (*(v218 + 8))(v225, v226);
      v227 = sub_1CF9E63C8();
      (*(v435 + 8))(v228, v436);
    }

    v229 = swift_allocObject();
    v229[2] = v223;
    v229[3] = sub_1CF4858EC;
    v229[4] = v214;
    v488 = sub_1CF2BA17C;
    v489 = v229;
    *&v485 = MEMORY[0x1E69E9820];
    v10 = 1107296256;
    *(&v485 + 1) = 1107296256;
    v486 = sub_1CEFCA444;
    v487 = &block_descriptor_5441;
    v230 = _Block_copy(&v485);
    v231 = v223;

    v488 = sub_1CF2BA180;
    v489 = v221;
    *&v485 = MEMORY[0x1E69E9820];
    *(&v485 + 1) = 1107296256;
    v486 = sub_1CEFCA444;
    v487 = &block_descriptor_5444;
    v232 = _Block_copy(&v485);

    fp_task_tracker_async_and_qos(v224, v468, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v227, v230, v232);
    _Block_release(v232);
    _Block_release(v230);

    sub_1CEFCCC44(v472, &unk_1EC4BE370, qword_1CFA01B30);
    sub_1CEFD5338(v469, type metadata accessor for Signpost);
    v233 = v450;
    v234 = fpfs_adopt_log();

    v94 = v477;
    v95 = v480;
    v236 = v429;
    v235 = v430;
    v105 = v431;
  }

  v135 = v484[0];
  if (v484[0])
  {
    swift_willThrow();
    sub_1CEFF7124(v494);

    v136 = fpfs_adopt_log();
    __break(1u);
LABEL_166:
    MEMORY[0x1EEE9AC00](v136);
    v422 = v135;
    goto LABEL_169;
  }

  v272 = v494;
  if (!v494)
  {
LABEL_161:
    __break(1u);
LABEL_162:
    __break(1u);
LABEL_163:
    MEMORY[0x1EEE9AC00](Strong);
    v422 = v88;
LABEL_169:
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v420, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v273 = *(&v494 + 1);

  v274 = v471;
  v275 = fpfs_adopt_log();

  v276 = swift_allocObject();
  *(v276 + 16) = v272;
  *(v276 + 24) = v273;
  v277 = swift_allocObject();
  v277[2] = sub_1CF900CA8;
  v277[3] = v276;
  v278 = v479;
  v277[4] = v478;
  v277[5] = v278;
  v280 = v475;
  v279 = v476;
  v281 = v474;
  v277[6] = v476;
  v277[7] = v281;
  v277[8] = v280;
  v282 = *&v279[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue];
  v283 = swift_unknownObjectWeakLoadStrong();

  v284 = v281;

  v285 = v279;
  v286 = v280;
  v478 = v282;
  v476 = v285;
  v473 = v276;
  if (v283)
  {
    v479 = [v283 log];
  }

  else
  {
    v479 = 0;
  }

  v312 = v446;
  v313 = v447;
  v315 = v461;
  v314 = v462;
  (*(v461 + 16))(v446, v459, v462);
  v316 = (*(v315 + 80) + 24) & ~*(v315 + 80);
  v317 = (v313 + v316 + 7) & 0xFFFFFFFFFFFFFFF8;
  v318 = swift_allocObject();
  v319 = v476;
  *(v318 + 16) = v476;
  (*(v315 + 32))(v318 + v316, v312, v314);
  v320 = v480;
  *(v318 + v317) = v480;
  v321 = v318 + ((v317 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v321 = sub_1CF900CD0;
  *(v321 + 8) = v277;
  *(v321 + 16) = 0;
  sub_1CEFD09A0(v320);
  v322 = v319;

  v323 = v479;
  sub_1CF01001C(v479, "item(for:userRequest:hideIgnoredDescendents:tryOptimizeResponsiveness:completionHandler:)", 89, 2, sub_1CF902D80, v318);

LABEL_153:
  v122 = v477;
LABEL_154:
  sub_1CEFD5338(v122, type metadata accessor for VFSItem);
LABEL_155:
  v418 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1CF85E67C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, BOOL *a4@<X8>)
{
  v5 = v4;
  v9 = a1[3];
  v10 = a1[4];
  v11 = __swift_project_boxed_opaque_existential_1(a1, v9);
  v12 = *(*(a2 + 16) + 16);
  v13 = *(a3 + 8);
  v17 = *a3;
  v18 = v13;

  sub_1CF68DDB0(&v17, v11, v9, v10, __src);
  if (v5)
  {
  }

  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v16, __src, sizeof(v16));
  result = sub_1CF08B99C(v16);
  *a4 = result != 1 && (result = sub_1CEFCCC44(__dst, &unk_1EC4BFC20, &unk_1CFA0A290), (v16[512] & 2) != 0);
  return result;
}

void sub_1CF85E794(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v48 = a4;
  v7 = sub_1CF9E5CF8();
  v49 = *(v7 - 8);
  v50 = v7;
  v8 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  v12 = *(v11 + 40);
  v13 = a1[3];
  v14 = a1[4];
  v15 = __swift_project_boxed_opaque_existential_1(a1, v13);
  v16 = *(v11 + 16);
  v17 = *(a3 + 8);
  v76 = *a3;
  v77 = v17;
  v18 = *(v14 + 8);

  v19 = v15;
  v20 = v51;
  sub_1CF68DDB0(&v76, v19, v13, v18, v78);
  if (v20)
  {

    return;
  }

  v47 = v11;

  memcpy(v74, v78, sizeof(v74));
  memcpy(v75, v78, sizeof(v75));
  if (sub_1CF08B99C(v75) == 1)
  {

    return;
  }

  v21 = v75[31];
  if (!v75[31])
  {
    goto LABEL_14;
  }

  v51 = v12;
  v22 = a1[3];
  v23 = a1[4];
  v24 = __swift_project_boxed_opaque_existential_1(a1, v22);
  v57 = v21;
  v45 = (*v51 + 264);
  v46 = v24;
  v44 = *v45;
  v25 = *(v23 + 8);
  v26 = v21;
  (v44)(&v58, &v57, v46, v22, v25);
  v52[12] = v70;
  v52[13] = v71;
  v52[14] = v72;
  v52[8] = v66;
  v52[9] = v67;
  v52[10] = v68;
  v52[11] = v69;
  v52[4] = v62;
  v52[5] = v63;
  v52[6] = v64;
  v52[7] = v65;
  v52[0] = v58;
  v52[1] = v59;
  v52[2] = v60;
  v52[3] = v61;
  v54[12] = v70;
  v54[13] = v71;
  v55 = v72;
  v54[8] = v66;
  v54[9] = v67;
  v54[10] = v68;
  v54[11] = v69;
  v54[4] = v62;
  v54[5] = v63;
  v54[6] = v64;
  v54[7] = v65;
  v54[0] = v58;
  v54[1] = v59;
  v53 = v73;
  v56 = v73;
  v54[2] = v60;
  v54[3] = v61;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v54) == 1 || (v27 = v55, , sub_1CEFCCC44(v52, &qword_1EC4BECF0, &unk_1CF9FEEB0), !v27))
  {

    sub_1CEFCCC44(v74, &unk_1EC4BFC20, &unk_1CFA0A290);

    return;
  }

  v28 = v26;
  v29 = *(v27 + 16);

  if (!v29)
  {

    goto LABEL_14;
  }

  v30 = a1[3];
  v45 = a1[4];
  v46 = v30;
  v44 = __swift_project_boxed_opaque_existential_1(a1, v30);
  v47 = sub_1CF033A74();
  v31 = v28;
  v32 = sub_1CF9042A4(v48);
  v34 = v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDEE0, &unk_1CFA18220);
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  v38 = swift_allocObject();
  v39 = *(*v38 + 632);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  (*(*(v40 - 8) + 56))(v38 + v39, 1, 1, v40);
  *(v38 + 16) = 0u;
  *(v38 + 32) = 0u;
  *(v38 + 48) = 1;
  *(v38 + 56) = 0u;
  *(v38 + 72) = 0u;
  *(v38 + 88) = 0;
  *(v38 + 96) = xmmword_1CF9FEC30;
  *(v38 + 112) = 0;
  *(v38 + 120) = v32;
  *(v38 + 128) = v34;
  *(v38 + 136) = 0x8000000;
  *(v38 + 144) = v31;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v42 = v41;
  (*(v49 + 8))(v10, v50);
  v43 = v42 * 1000000000.0;
  if (COERCE__INT64(fabs(v42 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v43 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v43 < 9.22337204e18)
  {
    sub_1CF5215C0(v38);

LABEL_14:

    sub_1CEFCCC44(v74, &unk_1EC4BFC20, &unk_1CFA0A290);
    return;
  }

LABEL_18:
  __break(1u);
}

void sub_1CF85ED8C(uint64_t a1, void (*a2)(void *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v10 - v6);
  sub_1CEFCCBDC(a1, &v10 - v6, &unk_1EC4BF300, &unk_1CFA006B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *v7;
    v9 = v8;
    a2(v8);
  }

  else
  {
    a2(0);
    sub_1CEFCCC44(v7, &unk_1EC4BF300, &unk_1CFA006B0);
  }
}

void sub_1CF85EEA4(uint64_t a1, char a2, void (*a3)(void), uint64_t a4, void (*a5)(uint64_t), uint64_t a6, char *a7, void *a8, void *a9)
{
  if (a2)
  {
    a3();
    v13 = a1;
LABEL_10:
    a5(v13);
    return;
  }

  if (!a1)
  {
    a3();
    v13 = 0;
    goto LABEL_10;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v23 = [objc_allocWithZone(FPDDownloader) initWithDomain:Strong callbackQueue:*&a7[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue]];

    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v30 = sub_1CF900FB8;
    v31 = v17;
    aBlock = MEMORY[0x1E69E9820];
    v27 = 1107296256;
    v28 = sub_1CEFCA444;
    v29 = &block_descriptor_5457;
    v18 = _Block_copy(&aBlock);

    sub_1CF03C63C(sub_1CF900FB8);

    [a8 setCancellationHandler_];
    _Block_release(v18);

    if ([a9 isFromPOSIX])
    {
      v19 = 2;
    }

    else
    {
      v19 = 1;
    }

    v20 = swift_allocObject();
    v20[2] = a5;
    v20[3] = a6;
    v20[4] = a7;
    v20[5] = a3;
    v20[6] = a4;
    v30 = sub_1CF901014;
    v31 = v20;
    aBlock = MEMORY[0x1E69E9820];
    v27 = 1107296256;
    v28 = sub_1CF00A468;
    v29 = &block_descriptor_5454;
    v21 = _Block_copy(&aBlock);

    v22 = a7;

    [v23 downloadItem:a1 recursively:v19 request:a9 withCompletion:v21];
    _Block_release(v21);
  }

  else
  {
    __break(1u);
  }
}

void sub_1CF85F158()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong cancel];
  }
}

uint64_t sub_1CF85F1B4(uint64_t a1, void (*a2)(uint64_t, __n128), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = a5;
  v38 = a6;
  v36 = a4;
  v33[1] = a3;
  v34 = a2;
  v40 = sub_1CF9E63A8();
  v42 = *(v40 - 8);
  v7 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1CF9E6448();
  v39 = *(v41 - 8);
  v10 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1CF9E6388();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = (v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_1CF9E6498();
  v35 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = v33 - v25;
  v34(a1, v24);
  v36 = *(v36 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue);
  sub_1CF9E6478();
  *v17 = 200;
  (*(v14 + 104))(v17, *MEMORY[0x1E69E7F38], v13);
  MEMORY[0x1D3868740](v22, v17);
  (*(v14 + 8))(v17, v13);
  v27 = *(v19 + 8);
  v27(v22, v18);
  v28 = swift_allocObject();
  v29 = v38;
  *(v28 + 16) = v37;
  *(v28 + 24) = v29;
  aBlock[4] = sub_1CEFFD05C;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFCA444;
  aBlock[3] = &block_descriptor_5463;
  v30 = _Block_copy(aBlock);

  sub_1CF9E63F8();
  v43 = MEMORY[0x1E69E7CC0];
  sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
  v31 = v40;
  sub_1CF9E77B8();
  MEMORY[0x1D38695B0](v26, v12, v9, v30);
  _Block_release(v30);
  (*(v42 + 8))(v9, v31);
  (*(v39 + 8))(v12, v41);
  v27(v26, v35);
}

uint64_t FPDDomainFPFSBackend.downloadItem(with:request:progress:completionHandler:)(void *a1, void *a2, void *a3, void (*a4)(char *, id), uint64_t a5)
{
  v60 = a5;
  v57 = a3;
  v58 = a4;
  v56 = a2;
  v6 = sub_1CF9E6068();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v49 - v16;
  v18 = type metadata accessor for Signpost(0);
  v52 = *(v18 - 8);
  v19 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v53 = v20;
  v54 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v49 - v22;
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v24 = qword_1EDEBBE40;
  (*(v7 + 56))(v17, 1, 1, v6);
  v55 = a1;
  v25 = [a1 description];
  v26 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v50 = v27;
  v51 = v26;

  sub_1CEFCCBDC(v17, v14, &unk_1EC4BED20, &unk_1CFA00700);
  v28 = *(v7 + 48);
  if (v28(v14, 1, v6) == 1)
  {
    v29 = v24;
    sub_1CF9E6048();
    v30 = v10;
    if (v28(v14, 1, v6) != 1)
    {
      sub_1CEFCCC44(v14, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v30 = v10;
    (*(v7 + 32))(v10, v14, v6);
  }

  (*(v7 + 16))(v23, v30, v6);
  *&v23[*(v18 + 20)] = v24;
  v31 = &v23[*(v18 + 24)];
  *v31 = "Materialization";
  *(v31 + 1) = 15;
  v31[16] = 2;
  v32 = v24;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1CF9FA450;
  *(v33 + 56) = MEMORY[0x1E69E6158];
  *(v33 + 64) = sub_1CEFD51C4();
  v34 = v50;
  *(v33 + 32) = v51;
  *(v33 + 40) = v34;
  sub_1CF9E6028();

  (*(v7 + 8))(v30, v6);
  sub_1CEFCCC44(v17, &unk_1EC4BED20, &unk_1CFA00700);
  v35 = v54;
  sub_1CEFDA34C(v23, v54, type metadata accessor for Signpost);
  v36 = (*(v52 + 80) + 40) & ~*(v52 + 80);
  v37 = (v53 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  v40 = v55;
  v39 = v56;
  v38[2] = v55;
  v38[3] = v39;
  v41 = v57;
  v38[4] = v57;
  sub_1CEFDA0C4(v35, v38 + v36, type metadata accessor for Signpost);
  v42 = (v38 + v37);
  v43 = v58;
  v44 = v60;
  *v42 = v58;
  v42[1] = v44;
  swift_retain_n();
  v45 = v40;
  v46 = v39;
  v47 = v41;
  sub_1CF8EC6D8("downloadItem(with:request:progress:completionHandler:)", 54, 2, sub_1CF8F095C, v38, v59, v43, v44);

  return sub_1CEFD5338(v23, type metadata accessor for Signpost);
}

uint64_t sub_1CF85FD5C(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void (*a7)(void, void))
{
  v144 = a7;
  v157 = a6;
  v142 = a5;
  v149 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFB10, &unk_1CFA12AD0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v143 = &v142 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4C1588, &unk_1CFA0A260);
  v145 = *(v13 - 8);
  v14 = *(v145 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v148 = (&v142 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v146 = &v142 - v17;
  v147 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v156 = &v142 - v20;
  v21 = sub_1CF9E6118();
  v154 = *(v21 - 8);
  v155 = v21;
  v22 = *(v154 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v153 = &v142 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v152 = &v142 - v25;
  v26 = type metadata accessor for Signpost(0);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v142 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = swift_allocObject();
  *(v30 + 16) = [a2 identifier];
  *(v30 + 24) = a3;
  v158 = *(a1 + 16);
  v31 = a3;
  v32 = sub_1CEFD4E9C([a2 identifier]);
  sub_1CEFDA34C(v142, v29, type metadata accessor for Signpost);
  v33 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v34 = (v28 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 23) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  v38 = v37 + v33;
  v39 = v30;
  sub_1CEFDA0C4(v29, v38, type metadata accessor for Signpost);
  v40 = (v37 + v34);
  v41 = v144;
  *v40 = v157;
  v40[1] = v41;
  *(v37 + v35) = a1;
  v42 = v32;
  v43 = v152;
  v157 = v37;
  *(v37 + v36) = a2;

  v44 = a2;
  v45 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  swift_retain_n();

  v46 = sub_1CF9E6108();
  v47 = sub_1CF9E7298();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = v30;
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v159[0] = v50;
    *v49 = 136315394;
    v51 = swift_beginAccess();
    v53 = *(v42 + 32);
    v54 = *(v42 + 40);
    if (*(v42 + 41))
    {
      v55 = v53;
      v56 = NSFileProviderItemIdentifier.description.getter();
      v58 = v57;
      sub_1CEFD0994(v53, v54, 1);
    }

    else
    {
      v161 = *(v42 + 32);
      v162 = v54;
      v56 = VFSItemID.description.getter(v51, v52);
      v58 = v61;
    }

    v62 = sub_1CEFD0DF0(v56, v58, v159);

    *(v49 + 4) = v62;
    *(v49 + 12) = 2080;
    v39 = v48;
    v63 = sub_1CEFD11AC(v48);
    v65 = v64;

    v66 = sub_1CEFD0DF0(v63, v65, v159);

    *(v49 + 14) = v66;
    _os_log_impl(&dword_1CEFC7000, v46, v47, "Request to materialize content of itemID %s reason %s", v49, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v50, -1, -1);
    MEMORY[0x1D386CDC0](v49, -1, -1);

    v59 = *(v154 + 8);
    v60 = v152;
  }

  else
  {

    v59 = *(v154 + 8);
    v60 = v43;
  }

  v144 = v59;
  v59(v60, v155);
  v67 = v156;
  v68 = v143;
  sub_1CEFCCBDC(v158 + qword_1EDEBBC18, v143, &qword_1EC4BFB10, &unk_1CFA12AD0);
  v69 = type metadata accessor for TelemetrySignposter(0);
  v70 = (*(*(v69 - 8) + 48))(v68, 1, v69);
  v150 = v42;
  v151 = v39;
  if (v70 == 1)
  {
    sub_1CEFCCC44(v68, &qword_1EC4BFB10, &unk_1CFA12AD0);
    v71 = 1;
  }

  else
  {
    sub_1CF519DE8(0, v67);
    sub_1CEFD5338(v68, type metadata accessor for TelemetrySignposter);
    v71 = 0;
  }

  v72 = type metadata accessor for TelemetrySignpost(0);
  (*(*(v72 - 8) + 56))(v67, v71, 1, v72);
  v73 = v146;
  sub_1CEFCCBDC(v67, v146, qword_1EC4C1588, &unk_1CFA0A260);
  v74 = *(v145 + 80);
  v75 = (v74 + 16) & ~v74;
  v76 = v147;
  v77 = (v147 + v75 + 7) & 0xFFFFFFFFFFFFFFF8;
  v78 = swift_allocObject();
  sub_1CEFE55D0(v73, v78 + v75, qword_1EC4C1588, &unk_1CFA0A260);
  v79 = (v78 + v77);
  v80 = v157;
  *v79 = sub_1CF900518;
  v79[1] = v80;
  v81 = v148;
  sub_1CEFCCBDC(v67, v148, qword_1EC4C1588, &unk_1CFA0A260);
  v82 = (v74 + 24) & ~v74;
  v147 = (v82 + v76 + 7) & 0xFFFFFFFFFFFFFFF8;
  v83 = (v82 + v76 + 31) & 0xFFFFFFFFFFFFFFF8;
  v152 = ((v83 + 15) & 0xFFFFFFFFFFFFFFF8);
  v84 = (v83 + 31) & 0xFFFFFFFFFFFFFFF8;
  v85 = (v84 + 15) & 0xFFFFFFFFFFFFFFF8;
  v86 = (v85 + 15) & 0xFFFFFFFFFFFFFFF8;
  v87 = swift_allocObject();
  v88 = v151;
  *(v87 + 16) = v151;
  sub_1CEFE55D0(v81, v87 + v82, qword_1EC4C1588, &unk_1CFA0A260);
  v89 = v87 + v147;
  v91 = v157;
  v90 = v158;
  *v89 = sub_1CF900518;
  *(v89 + 8) = v91;
  *(v89 + 16) = 0;
  *(v87 + v83) = v90;
  v92 = &v152[v87];
  v94 = v149;
  v93 = v150;
  *v92 = v150;
  v92[8] = 0;
  *(v87 + v84) = 1;
  v95 = v88;
  *(v87 + v85) = v94;
  v96 = v93;
  v97 = v87 + v86;
  *v97 = sub_1CF903314;
  *(v97 + 8) = v78;
  *(v97 + 16) = 1;
  v98 = objc_allocWithZone(MEMORY[0x1E696AE38]);
  swift_retain_n();

  v99 = v94;
  v152 = v78;

  v100 = [v98 init];
  v101 = swift_allocObject();
  v101[2] = sub_1CF903318;
  v101[3] = v87;
  v101[4] = v88;
  swift_retain_n();
  v149 = v87;
  swift_retain_n();
  v102 = fpfs_current_or_default_log();
  v103 = v153;
  sub_1CF9E6128();
  swift_retain_n();

  v104 = sub_1CF9E6108();
  v105 = sub_1CF9E7298();
  if (os_log_type_enabled(v104, v105))
  {
    v148 = v101;
    v147 = v100;
    v106 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    v160 = v107;
    *v106 = 136315906;
    v108 = swift_beginAccess();
    v110 = *(v96 + 32);
    v111 = *(v96 + 40);
    if (*(v96 + 41))
    {
      v112 = v110;
      v113 = NSFileProviderItemIdentifier.description.getter();
      v115 = v114;
      sub_1CEFD0994(v110, v111, 1);
    }

    else
    {
      v161 = *(v96 + 32);
      v162 = v111;
      v113 = VFSItemID.description.getter(v108, v109);
      v115 = v117;
    }

    v118 = v156;
    v119 = sub_1CEFD0DF0(v113, v115, &v160);

    *(v106 + 4) = v119;
    *(v106 + 12) = 2080;
    *(v106 + 14) = sub_1CEFD0DF0(0x74616761706F7270, 0xED000053466F5465, &v160);
    *(v106 + 22) = 2080;
    v120 = sub_1CEFD11AC(v95);
    v122 = v121;

    v123 = sub_1CEFD0DF0(v120, v122, &v160);

    *(v106 + 24) = v123;
    *(v106 + 32) = 2048;
    *(v106 + 34) = 0;
    _os_log_impl(&dword_1CEFC7000, v104, v105, "Lookup itemID %s with behavior %s request %s iteration %ld", v106, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v107, -1, -1);
    MEMORY[0x1D386CDC0](v106, -1, -1);

    v144(v153, v155);
    v100 = v147;
    v101 = v148;
    v116 = v118;
  }

  else
  {

    v144(v103, v155);
    v116 = v156;
  }

  swift_beginAccess();
  v124 = *(v96 + 32);
  v125 = *(v96 + 40);
  if ((*(v96 + 41) & 1) == 0)
  {
    if (!v124 && v125 == 2)
    {
      goto LABEL_24;
    }

    goto LABEL_26;
  }

  v126 = qword_1EDEA34B0;
  v127 = v124;
  if (v126 != -1)
  {
    swift_once();
  }

  v128 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v130 = v129;
  if (v128 != _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() || v130 != v131)
  {
    v132 = sub_1CF9E8048();

    sub_1CEFD0994(v124, v125, 1);
    if (v132)
    {
      goto LABEL_24;
    }

LABEL_26:
    v133 = swift_allocObject();
    *(v133 + 16) = v95;
    v134 = v133 | 0x7000000000000004;
    v135 = swift_allocObject();
    *(v135 + 16) = sub_1CF796A0C;
    *(v135 + 24) = v101;
    v148 = v101;
    v136 = v158;
    *(v135 + 32) = v158;
    *(v135 + 40) = 1;
    *(v135 + 48) = v95;
    *(v135 + 56) = v96;
    *(v135 + 64) = 0;
    *(v135 + 72) = v100;
    *(v135 + 80) = 0;
    v137 = swift_allocObject();
    *(v137 + 16) = v96;
    *(v137 + 24) = v136;
    *(v137 + 32) = 0;
    *(v137 + 40) = sub_1CF796A90;
    *(v137 + 48) = v135;
    *(v137 + 56) = v134;
    v138 = v100;
    v139 = swift_allocObject();
    *(v139 + 16) = sub_1CF796A90;
    *(v139 + 24) = v135;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    v140 = v138;

    sub_1CF7AAF88("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF554464, v139, sub_1CF796A9C, v137);

    v100 = v138;
    v116 = v156;
    goto LABEL_27;
  }

  sub_1CEFD0994(v124, v125, 1);
LABEL_24:
  sub_1CF90CAC8(v95, sub_1CF796A0C, v101);

LABEL_27:

  sub_1CEFCCC44(v116, qword_1EC4C1588, &unk_1CFA0A260);
}

uint64_t sub_1CF860BD8(uint64_t a1, uint64_t a2, void (*a3)(char *, void *), uint64_t a4, uint64_t a5, void *a6)
{
  v49 = a6;
  v50 = a5;
  v51 = a4;
  v52 = a3;
  v53 = a2;
  v7 = sub_1CF9E5A58();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v48 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for VFSItem(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v47 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v46 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v46 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = (&v46 - v26);
  sub_1CEFCCBDC(a1, &v46 - v26, &unk_1EC4BF300, &unk_1CFA006B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v27;
    (*(v8 + 56))(v23, 1, 1, v7);
    v29 = v28;
    v52(v23, v28);

    sub_1CEFCCC44(v23, &unk_1EC4BE310, qword_1CF9FCBE0);
  }

  else
  {
    v30 = v52;
    sub_1CEFDA0C4(v27, v14, type metadata accessor for VFSItem);
    v31 = *(*(*(v50 + 16) + 32) + 16);
    type metadata accessor for VFSFileTree(0);
    v32 = swift_dynamicCastClassUnconditional();

    v33 = objc_sync_enter(v32);
    if (v33)
    {
      MEMORY[0x1EEE9AC00](v33);
      *(&v46 - 2) = v32;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v46 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    v34 = objc_sync_exit(v32);
    if (v34)
    {
      MEMORY[0x1EEE9AC00](v34);
      *(&v46 - 2) = v32;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v46 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
    }

    sub_1CF25116C(v20);
    if ((*(v8 + 48))(v20, 1, v7) == 1)
    {
      sub_1CEFCCC44(v20, &unk_1EC4BE310, qword_1CF9FCBE0);
      v35 = v47;
      (*(v8 + 56))(v47, 1, 1, v7);
      v36 = [v49 identifier];
      v37 = FPItemNotFoundError();

      v30(v35, v37);
      sub_1CEFCCC44(v35, &unk_1EC4BE310, qword_1CF9FCBE0);
    }

    else
    {
      v38 = v48;
      (*(v8 + 32))(v48, v20, v7);
      (*(v8 + 16))(v23, v38, v7);
      (*(v8 + 56))(v23, 0, 1, v7);
      v30(v23, 0);
      sub_1CEFCCC44(v23, &unk_1EC4BE310, qword_1CF9FCBE0);
      (*(v8 + 8))(v38, v7);
    }

    sub_1CEFD5338(v14, type metadata accessor for VFSItem);
  }

  sub_1CF9E7458();
  v39 = type metadata accessor for Signpost(0);
  v40 = *(v39 + 24);
  v41 = *(v53 + *(v39 + 20));
  v42 = *(v53 + v40);
  v43 = *(v53 + v40 + 8);
  v44 = *(v53 + v40 + 16);
  return sub_1CF9E6038();
}

uint64_t FPDDomainFPFSBackend.downloadVersion(with:version:originalURL:completionHandler:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v59 = a5;
  v60 = a2;
  v66 = a4;
  v56 = a3;
  v65 = sub_1CF9E5A58();
  v58 = *(v65 - 8);
  v6 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v57 = v7;
  v64 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CF9E6068();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v51 - v18;
  v20 = type metadata accessor for Signpost(0);
  v54 = *(v20 - 8);
  v21 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v55 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v22;
  MEMORY[0x1EEE9AC00](v23);
  v63 = &v51 - v24;
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v25 = qword_1EDEBBE40;
  (*(v9 + 56))(v19, 1, 1, v8);
  v61 = a1;
  v26 = [a1 description];
  v27 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v51 = v28;
  v52 = v27;

  sub_1CEFCCBDC(v19, v16, &unk_1EC4BED20, &unk_1CFA00700);
  v29 = *(v9 + 48);
  if (v29(v16, 1, v8) == 1)
  {
    v30 = v25;
    sub_1CF9E6048();
    if (v29(v16, 1, v8) != 1)
    {
      sub_1CEFCCC44(v16, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v9 + 32))(v12, v16, v8);
  }

  v31 = v63;
  (*(v9 + 16))(v63, v12, v8);
  *(v31 + *(v20 + 20)) = v25;
  v32 = v31 + *(v20 + 24);
  *v32 = "DownloadVersion";
  *(v32 + 8) = 15;
  *(v32 + 16) = 2;
  v33 = v25;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1CF9FA450;
  *(v34 + 56) = MEMORY[0x1E69E6158];
  *(v34 + 64) = sub_1CEFD51C4();
  v35 = v51;
  *(v34 + 32) = v52;
  *(v34 + 40) = v35;
  sub_1CF9E6028();

  (*(v9 + 8))(v12, v8);
  sub_1CEFCCC44(v19, &unk_1EC4BED20, &unk_1CFA00700);
  v36 = swift_allocObject();
  v37 = v59;
  *(v36 + 16) = v66;
  *(v36 + 24) = v37;
  v38 = v55;
  sub_1CEFDA34C(v31, v55, type metadata accessor for Signpost);
  v39 = v58;
  (*(v58 + 16))(v64, v56, v65);
  v40 = (*(v54 + 80) + 32) & ~*(v54 + 80);
  v41 = (v53 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = (*(v39 + 80) + v41 + 16) & ~*(v39 + 80);
  v43 = swift_allocObject();
  v45 = v60;
  v44 = v61;
  *(v43 + 2) = v60;
  *(v43 + 3) = v44;
  sub_1CEFDA0C4(v38, &v43[v40], type metadata accessor for Signpost);
  v46 = &v43[v41];
  v47 = v65;
  *v46 = v66;
  *(v46 + 1) = v37;
  (*(v39 + 32))(&v43[v42], v64, v47);
  swift_retain_n();

  v48 = v45;
  v49 = v44;
  sub_1CF8ECE60("downloadVersion(with:version:originalURL:completionHandler:)", 60, 2, sub_1CF8F0A30, v43, v62, sub_1CF8F0A04, v36);

  return sub_1CEFD5338(v63, type metadata accessor for Signpost);
}

uint64_t sub_1CF861890(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v130 = a7;
  v131 = a6;
  v146 = a5;
  materialization_alignment = a4;
  v132 = a3;
  v150 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v137 = &v123 - v10;
  v143 = sub_1CF9E63D8();
  v148 = *(v143 - 8);
  v11 = *(v148 + 64);
  MEMORY[0x1EEE9AC00](v143);
  v138 = &v123 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v142 = &v123 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v135 = &v123 - v16;
  v17 = sub_1CF9E6448();
  v140 = *(v17 - 8);
  v141 = v17;
  v18 = *(v140 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v136 = &v123 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v145 = &v123 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v139 = &v123 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v147 = &v123 - v26;
  v144 = sub_1CF9E6118();
  v134 = *(v144 - 8);
  v27 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](v144);
  v133 = &v123 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_1CF9E5A58();
  v29 = *(v128 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v128);
  v126 = v31;
  v127 = &v123 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for Signpost(0);
  v124 = *(v32 - 8);
  v33 = *(v124 + 64);
  *&v34 = MEMORY[0x1EEE9AC00](v32 - 8).n128_u64[0];
  v125 = &v123 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = [a2 contentVersion];
  v36 = sub_1CF9E5B88();
  v38 = v37;

  v39 = [a2 metadataVersion];
  v40 = sub_1CF9E5B88();
  v42 = v41;

  v43 = [a2 lastEditorDeviceName];
  if (v43)
  {
    v44 = v43;
    v45 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v47 = v46;
  }

  else
  {
    v45 = 0;
    v47 = 0;
  }

  *&v162 = v36;
  *(&v162 + 1) = v38;
  *&v163 = 0;
  *(&v163 + 1) = v40;
  v164 = v42;
  *&v165 = v45;
  *(&v165 + 1) = v47;
  v48 = *(*(*(v150 + 16) + 40) + 16);
  type metadata accessor for FPFileTree();
  v149 = swift_dynamicCastClassUnconditional();
  v150 = v48;

  v132 = [v132 identifier];
  v158 = v162;
  v159 = v163;
  v160 = v164;
  v161 = v165;
  v49 = v125;
  sub_1CEFDA34C(materialization_alignment, v125, type metadata accessor for Signpost);
  v51 = v127;
  v50 = v128;
  (*(v29 + 16))(v127, v130, v128);
  v52 = (*(v124 + 80) + 16) & ~*(v124 + 80);
  v53 = (v33 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = (*(v29 + 80) + v53 + 16) & ~*(v29 + 80);
  v55 = swift_allocObject();
  sub_1CEFDA0C4(v49, v55 + v52, type metadata accessor for Signpost);
  v56 = (v55 + v53);
  v57 = v131;
  *v56 = v146;
  v56[1] = v57;
  v58 = *(v29 + 32);
  v146 = v55;
  v58(v55 + v54, v51, v50);
  sub_1CEFCCBDC(&v162, &v166, &unk_1EC4BF250, &unk_1CFA01B50);

  v157[0] = v158;
  v157[1] = v159;
  v157[2] = v160;
  v157[3] = v161;
  v166 = v158;
  v167 = v159;
  v168 = v160;
  v169 = v161;
  v59 = v158;
  v60 = *(&v159 + 1);
  v61 = v160;
  v62 = *(&v161 + 1);
  sub_1CEFCCBDC(v157, &v151, &unk_1EC4BF250, &unk_1CFA01B50);
  sub_1CEFCCBDC(v157, &v151, &unk_1EC4BF250, &unk_1CFA01B50);
  sub_1CEFE42D4(v59, *(&v59 + 1));
  sub_1CEFE42D4(v60, v61);
  v63 = sub_1CF9E5B48();
  v64 = sub_1CF9E5B48();
  if (v62)
  {
    v65 = sub_1CF9E6888();
  }

  else
  {
    v65 = 0;
  }

  v66 = objc_opt_self();
  v67 = [objc_allocWithZone(MEMORY[0x1E69674E8]) initWithContentVersion:v63 metadataVersion:v64 lastEditorDeviceName:v65];

  sub_1CEFE4714(v60, v61);
  sub_1CEFE4714(v59, *(&v59 + 1));
  v68 = [v66 etagForVersion:v67 providerDomainID:v149[35]];

  v69 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v71 = v70;

  v72 = fpfs_current_or_default_log();
  v73 = v133;
  sub_1CF9E6128();

  v74 = sub_1CF9E6108();
  v75 = sub_1CF9E7288();

  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v151 = v77;
    *v76 = 136315138;
    *(v76 + 4) = sub_1CEFD0DF0(v69, v71, &v151);
    _os_log_impl(&dword_1CEFC7000, v74, v75, "⚔️  Fetching version %s...", v76, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v77);
    MEMORY[0x1D386CDC0](v77, -1, -1);
    MEMORY[0x1D386CDC0](v76, -1, -1);
  }

  (*(v134 + 8))(v73, v144);
  v78 = v148;
  v79 = v142;
  v80 = swift_allocObject();
  v81 = v146;
  *(v80 + 2) = sub_1CF9003D8;
  *(v80 + 3) = v81;
  v82 = v132;
  v83 = v149;
  *(v80 + 4) = v132;
  *(v80 + 5) = v83;
  *(v80 + 6) = v69;
  *(v80 + 7) = v71;
  v84 = swift_allocObject();
  *(v84 + 16) = nullsub_1;
  *(v84 + 24) = 0;
  v85 = swift_allocObject();
  v85[2] = v83;
  v85[3] = v84;
  v85[4] = sub_1CF903330;
  v85[5] = v80;
  v144 = v85;

  v130 = v82;
  v134 = v84;

  v133 = v80;

  materialization_alignment = fpfs_get_materialization_alignment();
  v86 = v83[20];
  v131 = v83[21];
  v132 = v86;
  sub_1CF9E6418();
  qos_class_self();
  v87 = v137;
  sub_1CF9E63B8();
  v88 = *(v78 + 48);
  v89 = v143;
  if (v88(v87, 1, v143) == 1)
  {
    (*(v78 + 104))(v135, *MEMORY[0x1E69E7FA0], v89);
    if (v88(v87, 1, v89) != 1)
    {
      sub_1CEFCCC44(v87, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v78 + 32))(v135, v87, v89);
  }

  v90 = v136;
  sub_1CF9E6428();
  sub_1CF9E6438();
  v91 = sub_1CF9E63C8();
  v92 = *(v78 + 8);
  v148 = v78 + 8;
  v92(v79, v89);
  v93 = v138;
  v94 = v145;
  sub_1CF9E6438();
  v95 = sub_1CF9E63C8();
  v138 = v92;
  v92(v93, v89);
  v97 = v140;
  v96 = v141;
  v98 = *(v140 + 8);
  if (v91 >= v95)
  {
    v99 = v90;
  }

  else
  {
    v99 = v94;
  }

  if (v91 >= v95)
  {
    v100 = v94;
  }

  else
  {
    v100 = v90;
  }

  v136 = *(v140 + 8);
  v137 = (v140 + 8);
  v98(v99, v141);
  v101 = v147;
  (*(v97 + 32))(v147, v100, v96);
  (*(v97 + 56))(v101, 0, 1, v96);
  v102 = swift_allocObject();
  *(v102 + 16) = v149;
  *(v102 + 24) = 0;
  v103 = v130;
  *(v102 + 32) = v130;
  *(v102 + 40) = 8;
  *(v102 + 48) = 0;
  *(v102 + 56) = 0;
  v104 = v167;
  *(v102 + 64) = v166;
  *(v102 + 80) = v104;
  v105 = v169;
  *(v102 + 96) = v168;
  *(v102 + 112) = v105;
  v106 = v144;
  *(v102 + 128) = sub_1CF2F6584;
  *(v102 + 136) = v106;
  *(v102 + 144) = 0;
  v107 = materialization_alignment;
  *(v102 + 152) = 0;
  *(v102 + 160) = v107;
  *(v102 + 168) = v134;
  v108 = swift_allocObject();
  v108[2] = sub_1CF2F6584;
  v108[3] = v106;
  v109 = v131;
  v108[4] = v131;
  swift_retain_n();

  sub_1CEFCCBDC(v157, &v151, &unk_1EC4BF250, &unk_1CFA01B50);
  v149 = v103;

  v110 = fpfs_current_log();
  v145 = *(v109 + 16);
  v111 = *(v97 + 48);
  v112 = v111(v101, 1, v96);
  v113 = v101;
  v114 = v139;
  sub_1CEFCCBDC(v113, v139, &unk_1EC4BE370, qword_1CFA01B30);
  if (v111(v114, 1, v96) == 1)
  {
    sub_1CEFCCC44(v114, &unk_1EC4BE370, qword_1CFA01B30);
    v115 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v116 = v142;
    sub_1CF9E6438();
    (v136)(v114, v96);
    v115 = sub_1CF9E63C8();
    (v138)(v116, v143);
  }

  v117 = 32;
  if (v112 == 1)
  {
    v117 = 16;
  }

  v148 = v117;
  v118 = swift_allocObject();
  v118[2] = v110;
  v118[3] = sub_1CF902DA8;
  v118[4] = v102;
  v155 = sub_1CF2BA17C;
  v156 = v118;
  v151 = MEMORY[0x1E69E9820];
  v152 = 1107296256;
  v153 = sub_1CEFCA444;
  v154 = &block_descriptor_5319;
  v119 = _Block_copy(&v151);
  v120 = v110;

  v155 = sub_1CF2F6720;
  v156 = v108;
  v151 = MEMORY[0x1E69E9820];
  v152 = 1107296256;
  v153 = sub_1CEFCA444;
  v154 = &block_descriptor_5322;
  v121 = _Block_copy(&v151);

  fp_task_tracker_async_and_qos(v145, v132, v148, v115, v119, v121);

  _Block_release(v121);
  _Block_release(v119);

  sub_1CEFCCC44(v147, &unk_1EC4BE370, qword_1CFA01B30);

  sub_1CEFCCC44(v157, &unk_1EC4BF250, &unk_1CFA01B50);
  sub_1CEFCCC44(v157, &unk_1EC4BF250, &unk_1CFA01B50);

  sub_1CEFCCC44(&v158, &unk_1EC4BF250, &unk_1CFA01B50);

  return sub_1CEFCCC44(&v162, &unk_1EC4BF250, &unk_1CFA01B50);
}

uint64_t sub_1CF862764(uint64_t a1, uint64_t a2, void (*a3)(id, char *, void *), uint64_t a4, uint64_t a5)
{
  v34 = a4;
  v35 = a3;
  v8 = type metadata accessor for StagedRemoteVersion(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v34 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5A90, &qword_1CFA01BD0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v34 - v18);
  sub_1CEFCCBDC(a1, &v34 - v18, &unk_1EC4C5A90, &qword_1CFA01BD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v19;
    v21 = sub_1CF9E5A58();
    (*(*(v21 - 8) + 56))(v15, 1, 1, v21);
    v22 = v20;
    v35(0, v15, v20);

    sub_1CEFCCC44(v15, &unk_1EC4BE310, qword_1CF9FCBE0);
  }

  else
  {
    sub_1CEFDA0C4(v19, v11, type metadata accessor for StagedRemoteVersion);
    v23 = sub_1CF93D168(a5);
    v24 = *(v8 + 20);
    v25 = sub_1CF9E5A58();
    v26 = *(v25 - 8);
    (*(v26 + 16))(v15, &v11[v24], v25);
    (*(v26 + 56))(v15, 0, 1, v25);
    v35(v23, v15, 0);

    sub_1CEFCCC44(v15, &unk_1EC4BE310, qword_1CF9FCBE0);
    sub_1CEFD5338(v11, type metadata accessor for StagedRemoteVersion);
  }

  sub_1CF9E7458();
  v27 = type metadata accessor for Signpost(0);
  v28 = *(v27 + 24);
  v29 = *(a2 + *(v27 + 20));
  v30 = *(a2 + v28);
  v31 = *(a2 + v28 + 8);
  v32 = *(a2 + v28 + 16);
  return sub_1CF9E6038();
}

void sub_1CF862BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v16 - v10;
  sub_1CEFCCBDC(a2, &v16 - v10, &unk_1EC4BE310, qword_1CF9FCBE0);
  v12 = sub_1CF9E5A58();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(v11, 1, v12) != 1)
  {
    v14 = sub_1CF9E5928();
    (*(v13 + 8))(v11, v12);
  }

  if (a3)
  {
    v15 = sub_1CF9E57E8();
  }

  else
  {
    v15 = 0;
  }

  (*(a4 + 16))(a4, a1, v14, v15);
}

uint64_t FPDDomainFPFSBackend.forceUpdateBlockedProcessNames(fromDomain:)(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1CF862D84, 0, 0);
}

uint64_t sub_1CF862D84()
{
  v1 = v0[19];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[20] = Strong;
  if (Strong)
  {
    v3 = v0[18];
    v4 = [objc_msgSend(Strong session)];
    v0[21] = v4;
    swift_unknownObjectRelease();
    v0[2] = v0;
    v0[3] = sub_1CF862F58;
    v5 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4AD8, &qword_1CFA17B08);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1CF863150;
    v0[13] = &block_descriptor_124_0;
    v0[14] = v5;
    [v4 forceUpdateBlockedProcessNamesFromDomain:v3 completionHandler:v0 + 10];
    v6 = v0 + 2;

    return MEMORY[0x1EEE6DEC8](v6);
  }

  v6 = FPDomainUnavailableError();
  if (!v6)
  {
    __break(1u);
    return MEMORY[0x1EEE6DEC8](v6);
  }

  swift_willThrow();
  v7 = v0[1];

  return v7();
}

uint64_t sub_1CF862F58()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_1CF8630D4;
  }

  else
  {
    v3 = sub_1CF863068;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1CF863068()
{
  v1 = *(v0 + 168);

  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1CF8630D4()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  swift_willThrow();

  swift_unknownObjectRelease();
  v4 = v0[22];
  v5 = v0[1];

  return v5();
}