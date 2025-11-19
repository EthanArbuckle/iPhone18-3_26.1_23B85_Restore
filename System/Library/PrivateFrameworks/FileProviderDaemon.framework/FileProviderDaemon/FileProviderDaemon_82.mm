uint64_t sub_1CF863150(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x1EEE6DEE0](v8);
  }
}

uint64_t sub_1CF863384(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1CF863448;

  return FPDDomainFPFSBackend.forceUpdateBlockedProcessNames(fromDomain:)(v6);
}

uint64_t sub_1CF863448()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v8 = *v1;

  v9 = *(v3 + 32);
  if (v2)
  {
    v10 = sub_1CF9E57E8();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(*(v3 + 32), 0);
  }

  _Block_release(*(v4 + 32));
  v11 = *(v8 + 8);

  return v11();
}

void sub_1CF8635E4(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    MEMORY[0x1EEE9AC00](a1);
    a1 = sub_1CEFE1894(sub_1CF900398);
    if (v3)
    {
      v5 = v3;
      sub_1CF9E52F8();
      sub_1CF196978();
      v6 = sub_1CF9E5658();

      if ((v6 & 1) == 0)
      {
        goto LABEL_7;
      }

      v3 = 0;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  sub_1CEFE1894(sub_1CF900360);
  if (!v3)
  {
    *a3 = 0;
  }

LABEL_7:
  v7 = *MEMORY[0x1E69E9840];
}

uint64_t FPDDomainFPFSBackend.movingItem(at:with:completionHandler:)(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4)
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
  *(v15 + 16) = v4;
  (*(v9 + 32))(v15 + v13, v12, v8);
  *(v15 + v14) = a2;
  v16 = (v15 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8));
  v17 = v22;
  *v16 = v22;
  v16[1] = a4;
  swift_retain_n();
  v18 = v4;
  v19 = a2;
  sub_1CF8ED5F4("movingItem(at:with:completionHandler:)", 38, 2, sub_1CF8F0B48, v15, v18, v17, a4);
}

void sub_1CF8639A0(uint64_t a1, void (*a2)(void))
{
  v3 = [objc_opt_self() providingNotRequiredResponseWithSyncRootID_];
  a2();
}

void sub_1CF863A10(uint64_t a1, uint64_t (**a2)(uint64_t a1, uint64_t a2), uint64_t a3, char *a4, void (*a5)(void), uint64_t a6)
{
  v131 = a4;
  v132 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE2E0, &qword_1CF9FD970);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v123 - v11;
  v137 = sub_1CF9E5A58();
  v133 = *(v137 - 8);
  v13 = *(v133 + 8);
  MEMORY[0x1EEE9AC00](v137);
  v134 = &v123 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v123 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v127 = &v123 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v135 = &v123 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v136 = &v123 - v23;
  v130 = sub_1CF9E53C8();
  v128 = *(v130 - 8);
  v24 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v130);
  v129 = &v123 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1CF9E6118();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v124 = &v123 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v123 - v31;
  v33 = *(*(*(a1 + 16) + 32) + 16);
  type metadata accessor for VFSFileTree(0);
  v34 = swift_dynamicCastClassUnconditional();

  v35 = objc_sync_enter(v34);
  if (v35)
  {
LABEL_56:
    MEMORY[0x1EEE9AC00](v35);
    v121 = v34;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v123 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v125 = v27;
  v126 = v26;
  v139 = a6;
  v140 = a5;
  v138 = v34[20];

  v36 = objc_sync_exit(v34);
  if (v36)
  {
    MEMORY[0x1EEE9AC00](v36);
    v121 = v34;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v123 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v37 = sub_1CF9E5A18();
  MEMORY[0x1EEE9AC00](v37);
  LOBYTE(v121) = 0;
  v148 = 0;
  v149 = 0;
  v150 = 1;
  v38 = swift_allocObject();
  v38[2] = &v149;
  v38[3] = sub_1CF900338;
  v38[4] = &v123 - 4;
  v38[5] = &v148;
  v34 = swift_allocObject();
  v34[2] = sub_1CF900354;
  v34[3] = v38;
  v146 = sub_1CF50EB9C;
  v147 = v34;
  aBlock = MEMORY[0x1E69E9820];
  v143 = 1107296256;
  v144 = sub_1CF005DF8;
  v145 = &block_descriptor_5262;
  v39 = _Block_copy(&aBlock);

  sub_1CF9E6978();
  v40 = fpfs_openat();

  _Block_release(v39);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v42 = v148;
  if (v148)
  {
LABEL_5:
    swift_willThrow();

    goto LABEL_6;
  }

  if (v40 < 0)
  {
    if (MEMORY[0x1D38683F0](v35))
    {
      if (MEMORY[0x1D38683F0]() == 9939394)
      {
        v42 = [objc_opt_self() fp:2 errorForDataProtectionClass:?];
      }

      else
      {
        MEMORY[0x1D38683F0]();
        v57 = sub_1CF9E6138();
        if ((v57 & 0x100000000) != 0)
        {
          LODWORD(aBlock) = 22;
        }

        else
        {
          LODWORD(aBlock) = v57;
        }

        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CEFCCCA4(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
        v82 = v129;
        v83 = v130;
        sub_1CF9E57D8();
        v42 = sub_1CF9E53A8();
        (*(v128 + 8))(v82, v83);
      }

      goto LABEL_5;
    }

    aBlock = 0;
    v143 = 0xE000000000000000;
    sub_1CF9E7948();

    aBlock = 0xD00000000000001ALL;
    v143 = 0x80000001CFA2DF30;
    v141 = v40;
    v99 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v99);

    MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
    v100 = aBlock;
    v101 = v143;
    v102 = fpfs_current_or_default_log();
    sub_1CF9E6128();

    v103 = sub_1CF9E6108();
    v104 = sub_1CF9E72B8();

    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      aBlock = v106;
      *v105 = 136315650;
      v107 = sub_1CF9E7988();
      v109 = sub_1CEFD0DF0(v107, v108, &aBlock);

      *(v105 + 4) = v109;
      *(v105 + 12) = 2048;
      *(v105 + 14) = 315;
      *(v105 + 22) = 2080;
      *(v105 + 24) = sub_1CEFD0DF0(v100, v101, &aBlock);
      _os_log_impl(&dword_1CEFC7000, v103, v104, "[ASSERT] ‼️  %s:%lu: %s", v105, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v106, -1, -1);
      MEMORY[0x1D386CDC0](v105, -1, -1);
    }

    (*(v125 + 8))(v32, v126);
    v122 = 0;
    v121 = 315;
LABEL_64:
    sub_1CF9E7B68();
    __break(1u);
    return;
  }

  if (v150)
  {
    goto LABEL_54;
  }

  v45 = v149;

  v46 = [v131 destinationDirectoryURL];
  v47 = v136;
  sub_1CF9E59D8();

  v48 = v133;
  v49 = v133 + 16;
  v50 = v137;
  (*(v133 + 2))(v17, v47, v137);
  v51 = sub_1CEFCE64C();
  v52 = v49 - 8;
  v123 = v45;
  sub_1CEFDD0F4(v51, v12);

  v53 = *(v49 - 1);
  v53(v17, v50);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE2E8, qword_1CFA08D40);
  v55 = (*(*(v54 - 8) + 48))(v12, 1, v54);
  if (v55 == 1)
  {
    sub_1CEFCCC44(v12, &qword_1EC4BE2E0, &qword_1CF9FD970);
    v56 = [objc_opt_self() providingRequiredResponse];
    v140();

LABEL_34:
    v81 = v47;
LABEL_35:
    v53(v81, v50);
    return;
  }

  v58 = *&v12[*(v54 + 48) + 8];

  v59 = *(v48 + 4);
  v60 = v127;
  v59(v127, v12, v50);
  v133 = v59;
  v59(v135, v60, v50);
  v61 = sub_1CF9E5928();
  v62 = sub_1CF9E5928();
  v63 = [v61 fp:v62 relationshipToItemAtURL:?];

  if (v63 == 2)
  {
LABEL_33:
    v80 = [objc_opt_self() providingRequiredResponse];
    v140();

    v53(v135, v50);
    goto LABEL_34;
  }

  v132 = &v144;
  LODWORD(v127) = 9939394;
  v128 += 8;
  v131 = v52;
  while (1)
  {
    v64 = sub_1CF9E5A18();
    v34 = v65;
    MEMORY[0x1EEE9AC00](v64);
    LOBYTE(v121) = 1;
    v148 = 0;
    v149 = 0;
    v150 = 1;
    v66 = swift_allocObject();
    *(v66 + 16) = &v149;
    *(v66 + 24) = sub_1CF902DC4;
    *(v66 + 32) = &v123 - 4;
    *(v66 + 40) = &v148;
    v67 = swift_allocObject();
    *(v67 + 16) = sub_1CF902C74;
    *(v67 + 24) = v66;
    v146 = sub_1CF50EB9C;
    v147 = v67;
    aBlock = MEMORY[0x1E69E9820];
    v143 = 1107296256;
    v144 = sub_1CF005DF8;
    v145 = &block_descriptor_5274;
    v68 = _Block_copy(&aBlock);

    sub_1CF9E6978();
    v69 = fpfs_openat();

    _Block_release(v68);

    LOBYTE(v66) = swift_isEscapingClosureAtFileLocation();

    if (v66)
    {
      goto LABEL_53;
    }

    v42 = v148;
    if (v148)
    {
      swift_willThrow();
      v70 = v42;
      goto LABEL_31;
    }

    if ((v69 & 0x80000000) == 0)
    {
      if ((v150 & 1) == 0)
      {
        v85 = v149;

        v86 = *(v138 + 32);
        v87 = *(v86 + 16);
        v88 = (v86 + 32);
        v89 = v87;
        v90 = v88;
        do
        {
          v91 = v89;
          if (!v89)
          {
            break;
          }

          v92 = *v90++;
          --v89;
        }

        while (v92 != v123);
        v93 = v140;
        v94 = v136;
        v50 = v137;
        while (v87)
        {
          v95 = *v88++;
          --v87;
          if (v95 == v85)
          {
            if (v91)
            {
              v96 = [objc_opt_self() providingNotRequiredResponseWithSyncRootID_];
              goto LABEL_51;
            }

            break;
          }
        }

        v97 = objc_opt_self();
        if (v85 == v123)
        {
          v96 = [v97 providingNotRequiredResponseWithSyncRootID_];
        }

        else
        {
          v96 = [v97 providingRequiredResponse];
        }

LABEL_51:
        v98 = v96;
        v93();

        v53(v135, v50);
        v81 = v94;
        goto LABEL_35;
      }

      goto LABEL_55;
    }

    if (!MEMORY[0x1D38683F0](v35))
    {
      aBlock = 0;
      v143 = 0xE000000000000000;
      sub_1CF9E7948();

      aBlock = 0xD00000000000001ALL;
      v143 = 0x80000001CFA2DF30;
      v141 = v69;
      v110 = sub_1CF9E7F98();
      MEMORY[0x1D3868CC0](v110);

      MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
      v111 = aBlock;
      v112 = v143;
      v113 = fpfs_current_or_default_log();
      sub_1CF9E6128();

      v114 = sub_1CF9E6108();
      v115 = sub_1CF9E72B8();

      if (os_log_type_enabled(v114, v115))
      {
        v116 = swift_slowAlloc();
        v117 = swift_slowAlloc();
        aBlock = v117;
        *v116 = 136315650;
        v118 = sub_1CF9E7988();
        v120 = sub_1CEFD0DF0(v118, v119, &aBlock);

        *(v116 + 4) = v120;
        *(v116 + 12) = 2048;
        *(v116 + 14) = 315;
        *(v116 + 22) = 2080;
        *(v116 + 24) = sub_1CEFD0DF0(v111, v112, &aBlock);
        _os_log_impl(&dword_1CEFC7000, v114, v115, "[ASSERT] ‼️  %s:%lu: %s", v116, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v117, -1, -1);
        MEMORY[0x1D386CDC0](v116, -1, -1);
      }

      (*(v125 + 8))(v124, v126);
      v122 = 0;
      v121 = 315;
      goto LABEL_64;
    }

    if (MEMORY[0x1D38683F0]() == v127)
    {
      v42 = [objc_opt_self() fp:2 errorForDataProtectionClass:?];
    }

    else
    {
      MEMORY[0x1D38683F0]();
      v71 = sub_1CF9E6138();
      LODWORD(aBlock) = (v71 & 0x100000000) != 0 ? 22 : v71;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CEFCCCA4(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
      v72 = v129;
      v73 = v130;
      sub_1CF9E57D8();
      v42 = sub_1CF9E53A8();
      (*v128)(v72, v73);
    }

    swift_willThrow();
LABEL_31:

    v74 = v42;
    LODWORD(aBlock) = sub_1CF9E5328();
    sub_1CF196978();
    v75 = sub_1CF9E5658();

    if ((v75 & 1) == 0)
    {
      break;
    }

    v76 = v134;
    v47 = v136;
    sub_1CF9E5988();
    v50 = v137;
    v53(v47, v137);
    v133(v47, v76, v50);
    v77 = sub_1CF9E5928();
    v78 = sub_1CF9E5928();
    v79 = [v77 fp:v78 relationshipToItemAtURL:?];

    if (v79 == 2)
    {
      goto LABEL_33;
    }
  }

  v84 = v137;
  v53(v135, v137);
  v53(v136, v84);
LABEL_6:
  v43 = v140;
  v44 = [objc_opt_self() providingNotRequiredResponseWithSyncRootID_];
  v43();
}

id FPDDomainFPFSBackend.evictItem(at:evictionReason:request:completionHandler:)(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5)
{
  v29 = a3;
  v25 = a5;
  v26 = a4;
  v28 = a2;
  v8 = sub_1CF9E5A58();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = [objc_allocWithZone(MEMORY[0x1E696AE38]) init];
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  *(v12 + 24) = a5;
  (*(v9 + 16))(v11, a1, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = (v10 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 19) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 11) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v9 + 32))(v17 + v13, v11, v8);
  v18 = (v17 + v14);
  v19 = v25;
  *v18 = v26;
  v18[1] = v19;
  *(v17 + v15) = v28;
  v20 = v29;
  *(v17 + v16) = v29;
  v21 = v27;
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = v27;
  swift_retain_n();

  v22 = v20;
  v23 = v21;
  sub_1CF8EDD24("evictItem(at:evictionReason:request:completionHandler:)", 55, 2, sub_1CF8F0B4C, v17, v30, sub_1CF90325C, v12);

  return v23;
}

void sub_1CF8651E8(uint64_t a1, uint64_t a2, void (*a3)(void, id), uint64_t a4, unsigned int a5, void *a6, uint64_t a7)
{
  v36 = a7;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v35 - v15;
  v17 = type metadata accessor for VFSItem(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF010CE0(a2, 1, 2, 0, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_1CEFCCC44(v16, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v22 = sub_1CF9E5928();
    v23 = FPItemNotFoundErrorAtURL();

    a3(0, v23);
  }

  else
  {
    sub_1CEFDA0C4(v16, v21, type metadata accessor for VFSItem);
    if (a5 >= 6)
    {
      a5 = 0;
    }

    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
    v25 = swift_allocBox();
    v27 = v26;
    v28 = *(v24 + 48);
    v29 = sub_1CF9E5A58();
    (*(*(v29 - 8) + 16))(v27, a2, v29);
    *(v27 + v28) = a6;
    v30 = *(a1 + 16);
    v31 = *v21;
    v32 = v21[8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4BF0, &unk_1CFA189D0);
    v33 = swift_allocObject();
    *(v33 + 32) = v31;
    *(v33 + 40) = v32;
    *(v33 + 41) = 0;
    *(v33 + 16) = v31;
    *(v33 + 24) = v32;
    *(v33 + 25) = 0;

    v34 = a6;
    sub_1CF550F28(v33, v25 | 0x1000000000000004, a5, v36, v30, a3, a4);

    sub_1CEFD5338(v21, type metadata accessor for VFSItem);
  }
}

uint64_t FPDDomainFPFSBackend.evictItem(with:evictionReason:request:completionHandler:)(void *a1, int a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  *(v10 + 24) = a5;
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a1;
  *(v11 + 32) = a3;
  *(v11 + 40) = a4;
  *(v11 + 48) = a5;
  swift_retain_n();
  v12 = a1;
  v13 = a3;
  sub_1CEFD4024("evictItem(with:evictionReason:request:completionHandler:)", 57, 2, sub_1CF90324C, v10, sub_1CF8F0C10, v11);
}

uint64_t sub_1CF865780(uint64_t a1, unsigned int a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (a2 >= 6)
  {
    v11 = 0;
  }

  else
  {
    v11 = a2;
  }

  v12 = swift_allocObject();
  *(v12 + 16) = [a3 identifier];
  *(v12 + 24) = a4;
  v13 = *(a1 + 16);
  v14 = a4;
  v15 = sub_1CEFD4E9C([a3 identifier]);
  v16 = [objc_allocWithZone(MEMORY[0x1E696AE38]) init];
  v17 = swift_allocObject();
  swift_weakInit();

  sub_1CF55197C(v15, v12 | 0x2000000000000002, v11, v16, v13, a5, a6, v17);
}

uint64_t FPDDomainFPFSBackend.materializeItem(with:requestedRange:request:completionHandler:)(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;
  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = a6;
  v13[4] = a2;
  v13[5] = a3;
  v13[6] = a4;
  v13[7] = a1;
  swift_retain_n();
  v14 = a4;
  v15 = a1;
  sub_1CEFD4024("materializeItem(with:requestedRange:request:completionHandler:)", 63, 2, sub_1CF90324C, v12, sub_1CF8F0C14, v13);
}

uint64_t sub_1CF865B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v14 = sub_1CF9E6118();
  v68 = *(v14 - 8);
  v69 = v14;
  v15 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v72 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = v17;
  if (a4 < 0 || a5 < 1)
  {

    [a6 setRequestedExtent_];
  }

  else
  {

    [a6 setRequestedExtent_];
  }

  v19 = swift_allocObject();
  *(v19 + 16) = [a7 identifier];
  *(v19 + 24) = a6;
  v71 = *(a1 + 16);
  v20 = a6;
  v21 = sub_1CEFD4E9C([a7 identifier]);
  v22 = swift_allocObject();
  v22[2] = sub_1CF902EC0;
  v22[3] = v18;
  v22[4] = a1;
  v22[5] = v19 | 0x2000000000000004;
  v22[6] = a4;
  v22[7] = a5;
  v23 = objc_allocWithZone(MEMORY[0x1E696AE38]);

  v24 = [v23 init];
  v25 = swift_allocObject();
  v25[2] = sub_1CF900234;
  v25[3] = v22;
  v70 = v25;
  v73 = v19 | 0x2000000000000004;
  v25[4] = v19 | 0x2000000000000004;
  swift_retain_n();
  swift_retain_n();
  v26 = fpfs_current_or_default_log();
  v27 = v72;
  sub_1CF9E6128();
  swift_retain_n();

  v28 = sub_1CF9E6108();
  v29 = sub_1CF9E7298();
  v30 = os_log_type_enabled(v28, v29);
  v74 = v24;
  if (v30)
  {
    v67 = v18;
    v31 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v75[0] = v66;
    *v31 = 136315906;
    v32 = swift_beginAccess();
    v34 = *(v21 + 32);
    v35 = *(v21 + 40);
    if (*(v21 + 41))
    {
      v36 = v34;
      v37 = NSFileProviderItemIdentifier.description.getter();
      v39 = v38;
      sub_1CEFD0994(v34, v35, 1);
    }

    else
    {
      v75[1] = *(v21 + 32);
      v76 = v35;
      v37 = VFSItemID.description.getter(v32, v33);
      v39 = v40;
    }

    v41 = sub_1CEFD0DF0(v37, v39, v75);

    *(v31 + 4) = v41;
    *(v31 + 12) = 2080;
    *(v31 + 14) = sub_1CEFD0DF0(0xD000000000000010, 0x80000001CFA2C3C0, v75);
    *(v31 + 22) = 2080;
    v42 = sub_1CEFD11AC(v73);
    v44 = v43;

    v45 = sub_1CEFD0DF0(v42, v44, v75);

    *(v31 + 24) = v45;
    *(v31 + 32) = 2048;
    *(v31 + 34) = 0;
    _os_log_impl(&dword_1CEFC7000, v28, v29, "Lookup itemID %s with behavior %s request %s iteration %ld", v31, 0x2Au);
    v46 = v66;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v46, -1, -1);
    MEMORY[0x1D386CDC0](v31, -1, -1);

    (*(v68 + 8))(v72, v69);
    v18 = v67;
    v24 = v74;
  }

  else
  {

    (*(v68 + 8))(v27, v69);
  }

  swift_beginAccess();
  v47 = *(v21 + 32);
  v48 = *(v21 + 40);
  if ((*(v21 + 41) & 1) == 0)
  {
    if (!v47 && v48 == 2)
    {
      goto LABEL_19;
    }

    goto LABEL_21;
  }

  v49 = qword_1EDEA34B0;
  v50 = v47;
  if (v49 != -1)
  {
    swift_once();
  }

  v51 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v53 = v52;
  if (v51 != _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() || v53 != v54)
  {
    v55 = sub_1CF9E8048();

    sub_1CEFD0994(v47, v48, 1);
    v24 = v74;
    if (v55)
    {
      goto LABEL_19;
    }

LABEL_21:
    v56 = swift_allocObject();
    v72 = v56;
    v57 = v73;
    *(v56 + 16) = v73;
    v58 = v56 | 0x7000000000000004;
    v59 = swift_allocObject();
    v60 = v70;
    v61 = v71;
    *(v59 + 16) = sub_1CF796A0C;
    *(v59 + 24) = v60;
    *(v59 + 32) = v61;
    *(v59 + 40) = 2;
    *(v59 + 48) = v57;
    *(v59 + 56) = v21;
    *(v59 + 64) = 0;
    *(v59 + 72) = v24;
    *(v59 + 80) = 0;
    v62 = swift_allocObject();
    *(v62 + 16) = v21;
    *(v62 + 24) = v61;
    *(v62 + 32) = 0;
    *(v62 + 40) = sub_1CF796A90;
    *(v62 + 48) = v59;
    *(v62 + 56) = v58;
    v63 = swift_allocObject();
    *(v63 + 16) = sub_1CF796A90;
    *(v63 + 24) = v59;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    v64 = v74;
    v67 = v18;

    sub_1CF7AAF88("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF554464, v63, sub_1CF796A9C, v62);

    v24 = v74;

    goto LABEL_22;
  }

  sub_1CEFD0994(v47, v48, 1);
  v24 = v74;
LABEL_19:
  sub_1CF90CAC8(v73, sub_1CF796A0C, v70);

LABEL_22:
}

void sub_1CF866324(uint64_t a1, void (*a2)(id), void (*a3)(id), uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v128 = a7;
  v127 = a6;
  v129 = a5;
  v126 = a4;
  v146 = a2;
  v147 = a3;
  v145 = a1;
  v7 = sub_1CF9E63D8();
  v123 = *(v7 - 8);
  v8 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v122 = &v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v139 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v144 = &v119 - v14;
  v15 = sub_1CF9E6068();
  v136 = *(v15 - 8);
  v137 = v15;
  v16 = *(v136 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v132 = &v119 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v130 = &v119 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v142 = &v119 - v22;
  v131 = type metadata accessor for Signpost(0);
  v133 = *(v131 - 8);
  v23 = *(v133 + 64);
  MEMORY[0x1EEE9AC00](v131);
  v138 = &v119 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v135 = (&v119 - v26);
  v134 = v27;
  MEMORY[0x1EEE9AC00](v28);
  v143 = &v119 - v29;
  v141 = type metadata accessor for ItemMetadata();
  v30 = *(*(v141 - 8) + 64);
  MEMORY[0x1EEE9AC00](v141);
  v32 = &v119 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0);
  v33 = *(*(v140 - 8) + 64);
  MEMORY[0x1EEE9AC00](v140);
  v35 = &v119 - v34;
  v36 = type metadata accessor for VFSItem(0);
  v124 = *(v36 - 8);
  v37 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v125 = &v119 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v119 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41);
  v44 = (&v119 - v43);
  sub_1CEFCCBDC(v145, &v119 - v43, &unk_1EC4BF300, &unk_1CFA006B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v44;
    v46 = *v44;
    v146(v45);
  }

  else
  {
    v121 = v7;
    sub_1CEFDA0C4(v44, v40, type metadata accessor for VFSItem);
    v47 = *(v40 + 2);
    v48 = v40[24];
    v50 = *(v40 + 4);
    v49 = *(v40 + 5);
    v51 = *(v36 + 28);
    v52 = *(v140 + 40);
    sub_1CEFDA34C(&v40[v51], &v35[v52], type metadata accessor for ItemMetadata);
    *v35 = v47;
    v35[8] = v48;
    *(v35 + 2) = v50;
    *(v35 + 3) = v49;
    sub_1CEFDA34C(&v35[v52], v32, type metadata accessor for ItemMetadata);

    sub_1CEFCCC44(v35, &unk_1EC4BFD90, &unk_1CFA134F0);
    LODWORD(v49) = v32[*(v141 + 80)];
    sub_1CEFD5338(v32, type metadata accessor for ItemMetadata);
    v53 = v40;
    if (v49 == 1)
    {
      v54 = *(v126 + 16);
      v55 = v125;
      sub_1CEFDA34C(v40, v125, type metadata accessor for VFSItem);
      v56 = (*(v124 + 80) + 32) & ~*(v124 + 80);
      v57 = (v37 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
      v58 = swift_allocObject();
      v59 = v129;
      *(v58 + 16) = v54;
      *(v58 + 24) = v59;
      sub_1CEFDA0C4(v55, v58 + v56, type metadata accessor for VFSItem);
      v60 = (v58 + v57);
      v61 = v128;
      *v60 = v127;
      v60[1] = v61;
      v145 = v58;
      v62 = (v58 + ((v57 + 23) & 0xFFFFFFFFFFFFFFF8));
      v63 = v146;
      v64 = v147;
      *v62 = v146;
      v62[1] = v64;
      v65 = swift_allocObject();
      *(v65 + 16) = v63;
      *(v65 + 24) = v64;
      v146 = v65;
      v66 = *(v54 + qword_1EDEBBC38);
      swift_retain_n();
      v141 = v54;

      sub_1CEFD09A0(v59);
      v147 = fpfs_adopt_log();
      if (qword_1EDEAE980 != -1)
      {
        swift_once();
      }

      v67 = qword_1EDEBBE40;
      v69 = v136;
      v68 = v137;
      v70 = v142;
      (*(v136 + 56))(v142, 1, 1, v137);
      strcpy(&aBlock, "async batch ");
      BYTE13(aBlock) = 0;
      HIWORD(aBlock) = -5120;
      v71 = sub_1CF9E7988();
      MEMORY[0x1D3868CC0](v71);

      v72 = aBlock;
      v73 = v70;
      v74 = v130;
      sub_1CEFCCBDC(v73, v130, &unk_1EC4BED20, &unk_1CFA00700);
      v75 = *(v69 + 48);
      v76 = v75(v74, 1, v68);
      v77 = v132;
      v120 = v53;
      if (v76 == 1)
      {
        v78 = v67;
        sub_1CF9E6048();
        if (v75(v74, 1, v68) != 1)
        {
          sub_1CEFCCC44(v74, &unk_1EC4BED20, &unk_1CFA00700);
        }
      }

      else
      {
        (*(v69 + 32))(v132, v74, v68);
      }

      v80 = v143;
      (*(v69 + 16))(v143, v77, v68);
      v81 = v131;
      *(v80 + *(v131 + 20)) = v67;
      v82 = v80 + *(v81 + 24);
      *v82 = "DB queue wait";
      *(v82 + 8) = 13;
      *(v82 + 16) = 2;
      v83 = v67;
      sub_1CF9E7468();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v84 = swift_allocObject();
      *(v84 + 16) = xmmword_1CF9FA450;
      *(v84 + 56) = MEMORY[0x1E69E6158];
      *(v84 + 64) = sub_1CEFD51C4();
      *(v84 + 32) = v72;
      sub_1CF9E6028();

      (*(v69 + 8))(v77, v68);
      sub_1CEFCCC44(v142, &unk_1EC4BED20, &unk_1CFA00700);
      v140 = *(v141 + 168);
      v142 = *(v141 + 64);
      v85 = sub_1CF9E6448();
      v136 = *(v85 - 8);
      v137 = v85;
      (*(v136 + 56))(v144, 1, 1, v85);
      v86 = v135;
      sub_1CEFDA34C(v80, v135, type metadata accessor for Signpost);
      v87 = (*(v133 + 80) + 16) & ~*(v133 + 80);
      v88 = (v134 + v87 + 7) & 0xFFFFFFFFFFFFFFF8;
      v89 = swift_allocObject();
      sub_1CEFDA0C4(v86, v89 + v87, type metadata accessor for Signpost);
      v90 = (v89 + v88);
      v135 = sub_1CF5543A4;
      v91 = v146;
      *v90 = sub_1CF5543A4;
      v90[1] = v91;
      v92 = v138;
      sub_1CEFDA34C(v80, v138, type metadata accessor for Signpost);
      v93 = (v88 + 23) & 0xFFFFFFFFFFFFFFF8;
      v94 = (v93 + 15) & 0xFFFFFFFFFFFFFFF8;
      v95 = (v94 + 25) & 0xFFFFFFFFFFFFFFF8;
      v96 = swift_allocObject();
      v97 = v136;
      sub_1CEFDA0C4(v92, v96 + v87, type metadata accessor for Signpost);
      v98 = (v96 + v88);
      *v98 = sub_1CF045408;
      v98[1] = 0;
      *(v96 + v93) = v141;
      v99 = v96 + v94;
      *v99 = "materializeItem(with:requestedRange:request:completionHandler:)";
      *(v99 + 8) = 63;
      *(v99 + 16) = 2;
      v100 = (v96 + v95);
      v101 = v146;
      *v100 = v135;
      v100[1] = v101;
      v102 = v96;
      v103 = (v96 + ((v95 + 23) & 0xFFFFFFFFFFFFFFF8));
      v104 = v145;
      *v103 = sub_1CF900244;
      v103[1] = v104;
      v105 = swift_allocObject();
      v105[2] = sub_1CF903308;
      v105[3] = v89;
      v106 = v140;
      v105[4] = v140;
      swift_retain_n();

      v141 = v89;
      v107 = v137;

      v108 = fpfs_current_log();
      v109 = *(v106 + 16);
      v110 = v139;
      sub_1CEFCCBDC(v144, v139, &unk_1EC4BE370, qword_1CFA01B30);
      if ((*(v97 + 48))(v110, 1, v107) == 1)
      {
        sub_1CEFCCC44(v110, &unk_1EC4BE370, qword_1CFA01B30);
        v111 = QOS_CLASS_UNSPECIFIED;
      }

      else
      {
        v112 = v122;
        sub_1CF9E6438();
        (*(v97 + 8))(v110, v107);
        v111 = sub_1CF9E63C8();
        (*(v123 + 8))(v112, v121);
      }

      v113 = swift_allocObject();
      v113[2] = v108;
      v113[3] = sub_1CF4858EC;
      v113[4] = v102;
      v151 = sub_1CF2BA17C;
      v152 = v113;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v149 = sub_1CEFCA444;
      v150 = &block_descriptor_5208;
      v114 = _Block_copy(&aBlock);
      v115 = v108;

      v151 = sub_1CF2BA180;
      v152 = v105;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v149 = sub_1CEFCA444;
      v150 = &block_descriptor_5211;
      v116 = _Block_copy(&aBlock);

      fp_task_tracker_async_and_qos(v109, v142, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v111, v114, v116);
      _Block_release(v116);
      _Block_release(v114);

      sub_1CEFCCC44(v144, &unk_1EC4BE370, qword_1CFA01B30);
      sub_1CEFD5338(v143, type metadata accessor for Signpost);
      v117 = v147;
      v118 = fpfs_adopt_log();

      v79 = v120;
    }

    else
    {
      v146(0);
      v79 = v40;
    }

    sub_1CEFD5338(v79, type metadata accessor for VFSItem);
  }
}

uint64_t sub_1CF86721C(void *a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, void (*a7)(void), uint64_t a8)
{
  v41 = a6;
  v39 = a8;
  v40 = a7;
  v13 = sub_1CF9E5CF8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB70, &unk_1CFA0A280);
  v19 = *(swift_dynamicCastClassUnconditional() + 32);
  v20 = sub_1CF90C94C(a3);
  if (v20)
  {
    v21 = v20;

    [v21 requestedExtent];

    v22 = a1[3];
    v23 = a1[4];
    v24 = __swift_project_boxed_opaque_existential_1(a1, v22);
    v25 = *(a4 + 8);
    v43 = *a4;
    v44 = v25;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v27 = v26;
    result = (*(v14 + 8))(v17, v13);
    v29 = v27 * 1000000000.0;
    if (COERCE__INT64(fabs(v27 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v29 > -9.22337204e18)
    {
      if (v29 < 9.22337204e18)
      {
        v30 = v42;
        sub_1CF347AEC(&v43, 8, v29, a5, v41, v24, v22, v23);
        if (v30)
        {
        }

LABEL_6:
        v40(0);
      }

      goto LABEL_15;
    }

    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v32 = a1[3];
  v31 = a1[4];
  v33 = __swift_project_boxed_opaque_existential_1(a1, v32);
  v34 = *(a4 + 8);
  v43 = *a4;
  v44 = v34;

  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v36 = v35;
  result = (*(v14 + 8))(v17, v13);
  v37 = v36 * 1000000000.0;
  if (COERCE__INT64(fabs(v36 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v37 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v37 < 9.22337204e18)
  {
    v38 = v42;
    sub_1CF347AC0(&v43, 8, v37, v33, v32, v31);
    if (v38)
    {
    }

    goto LABEL_6;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t FPDDomainFPFSBackend.url(for:creatingPlaceholderIfMissing:ignoreAlternateContentsURL:forBookmarkResolution:request:completionHandler:)(void *a1, char a2, int a3, char a4, void *a5, uint64_t (*a6)(void, void, void, __n128), uint64_t a7)
{
  v15 = sub_1CF9E5A58();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v57 - v20;
  v26 = MEMORY[0x1EEE9AC00](v22);
  if ((a2 & 1) == 0)
  {
    return a6(0, 0, 0, v26);
  }

  v63 = a6;
  v64 = v7;
  v27 = a4;
  v62 = a5;
  v57 = &v57 - v24;
  v58 = v25;
  v60 = v23;
  v28 = sub_1CEFD4E9C([a1 identifier]);
  swift_beginAccess();
  v29 = *(v28 + 32);
  v30 = *(v28 + 40);
  v31 = *(v28 + 41);
  v61 = a3;
  if (v31 == 1)
  {
    v59 = a7;
    v32 = qword_1EDEA34B0;
    v33 = v29;
    if (v32 != -1)
    {
      swift_once();
    }

    v34 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v36 = v35;
    if (v34 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v36 == v37)
    {

      sub_1CEFD0994(v29, v30, 1);
      a7 = v59;
      v40 = v27;
    }

    else
    {
      v39 = sub_1CF9E8048();

      sub_1CEFD0994(v29, v30, 1);
      a7 = v59;
      v40 = v27;
      if ((v39 & 1) == 0)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
    if (v29)
    {
      v42 = 0;
    }

    else
    {
      v42 = v30 == 2;
    }

    v40 = v27;
    if (!v42)
    {
      goto LABEL_19;
    }
  }

  v43 = sub_1CEFCE64C();
  if (!*(v43 + 16))
  {

LABEL_19:
    v44 = swift_allocObject();
    v45 = v63;
    *(v44 + 16) = v63;
    *(v44 + 24) = a7;
    v46 = swift_allocObject();
    v47 = v62;
    *(v46 + 16) = a1;
    *(v46 + 24) = v47;
    *(v46 + 32) = v45;
    *(v46 + 40) = a7;
    *(v46 + 48) = v40 & 1;
    *(v46 + 49) = v61 & 1;
    v48 = swift_allocObject();
    *(v48 + 16) = sub_1CF8F0C2C;
    *(v48 + 24) = v44;
    swift_retain_n();
    v49 = a1;
    v50 = v47;

    sub_1CEFD4024("url(for:creatingPlaceholderIfMissing:ignoreAlternateContentsURL:forBookmarkResolution:request:completionHandler:)", 113, 2, sub_1CF8F0C60, v48, sub_1CF8F0C5C, v46);
  }

  v59 = a7;
  v51 = v58;
  v52 = *(v58 + 16);
  v53 = v60;
  v52(v21, v43 + ((*(v58 + 80) + 32) & ~*(v58 + 80)), v60);

  v54 = v57;
  (*(v51 + 32))(v57, v21, v53);
  sub_1CEFD57E0(0, &unk_1EDEA35A0, 0x1E6967408);
  v52(v18, v54, v53);
  v55 = sub_1CF02BFF8(v18, 0);
  v56 = v55;
  v63(0, v55, 0);

  return (*(v51 + 8))(v54, v60);
}

uint64_t sub_1CF867C6C(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v13 = swift_allocObject();
  *(v13 + 16) = [a2 identifier];
  *(v13 + 24) = a3;
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  *(v14 + 24) = a5;
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = sub_1CF902ED0;
  v16[3] = v14;
  v16[4] = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1CF9000F0;
  *(v17 + 24) = v16;
  v18 = a3;

  v19 = sub_1CEFD4E9C([a2 identifier]);

  v20 = a2;

  sub_1CF794540(v19, a6, v13 | 6, a1, v13 | 6, a7, a1, v20, sub_1CF900104, v17);
}

void sub_1CF867E48(uint64_t a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5, void (*a6)(void *, id, id), uint64_t a7)
{
  v80 = a7;
  v81 = a6;
  v72 = a4;
  v73 = a5;
  v74 = a3;
  v76 = a2;
  v8 = sub_1CF9E6118();
  v78 = *(v8 - 8);
  v79 = v8;
  v9 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v77 = &v70 - v13;
  v14 = sub_1CF9E5A58();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v75 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v70 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v70 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5270, &unk_1CFA01BC0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = (&v70 - v26);
  sub_1CEFCCBDC(a1, &v70 - v26, &unk_1EC4C5270, &unk_1CFA01BC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v27;
    v29 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v30 = v76;
    sub_1CEFD09A0(v76);
    v31 = v28;
    v32 = sub_1CF9E6108();
    v33 = sub_1CF9E72A8();
    sub_1CEFD0A98(v30);

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v83 = v36;
      *v34 = 136315394;
      v37 = sub_1CEFD11AC(v30);
      v39 = sub_1CEFD0DF0(v37, v38, &v83);

      *(v34 + 4) = v39;
      *(v34 + 12) = 2112;
      swift_getErrorValue();
      v40 = Error.prettyDescription.getter(v82);
      *(v34 + 14) = v40;
      *v35 = v40;
      _os_log_impl(&dword_1CEFC7000, v32, v33, "reply to %s: failure %@", v34, 0x16u);
      sub_1CEFCCC44(v35, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v35, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x1D386CDC0](v36, -1, -1);
      MEMORY[0x1D386CDC0](v34, -1, -1);
    }

    (*(v78 + 8))(v11, v79);
    v41 = v28;
    v81(v28, 0, 0);
  }

  else
  {
    (*(v15 + 32))(v23, v27, v14);
    v42 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v43 = *(v15 + 16);
    v71 = v23;
    v43(v20, v23, v14);
    v44 = v76;
    sub_1CEFD09A0(v76);
    v45 = sub_1CF9E6108();
    v46 = sub_1CF9E72C8();
    sub_1CEFD0A98(v44);
    v47 = v14;
    if (os_log_type_enabled(v45, v46))
    {
      v48 = swift_slowAlloc();
      v70 = v43;
      v49 = v48;
      v50 = swift_slowAlloc();
      v83 = v50;
      *v49 = 136315394;
      v51 = sub_1CEFD11AC(v44);
      LODWORD(v76) = v46;
      v53 = sub_1CEFD0DF0(v51, v52, &v83);

      *(v49 + 4) = v53;
      *(v49 + 12) = 2080;
      v54 = sub_1CF9E5928();
      v55 = [v54 fp_shortDescription];

      v56 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v58 = v57;

      v59 = *(v15 + 8);
      v59(v20, v14);
      v60 = sub_1CEFD0DF0(v56, v58, &v83);
      v47 = v14;

      *(v49 + 14) = v60;
      _os_log_impl(&dword_1CEFC7000, v45, v76, "reply to %s: %s success", v49, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v50, -1, -1);
      v61 = v49;
      v43 = v70;
      MEMORY[0x1D386CDC0](v61, -1, -1);
    }

    else
    {

      v59 = *(v15 + 8);
      v59(v20, v14);
    }

    (*(v78 + 8))(v77, v79);
    sub_1CEFD57E0(0, &unk_1EDEA35A0, 0x1E6967408);
    v62 = v75;
    v63 = v71;
    v43(v75, v71, v47);
    v64 = sub_1CF02BFF8(v62, 0);
    if ((v74 & 1) != 0 || (v65 = [*(v72 + 48) getAlternateContentsURLWrapperForItemID_]) == 0)
    {
      v69 = v64;
      v81(0, v64, 0);
    }

    else
    {
      v66 = v65;
      v67 = v65;
      v68 = v64;
      v81(0, v66, v64);
    }

    v59(v63, v47);
  }
}

void sub_1CF868578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v5 = sub_1CF9E57E8();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a4 + 16))(a4);
}

uint64_t FPDDomainFPFSBackend.enumerateMaterializedSet(fromSyncAnchor:suggestedBatchSize:completionHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = v4;
  v10[5] = a1;
  v10[6] = a2;
  swift_retain_n();
  v11 = v4;
  v12 = a1;
  sub_1CEFD4024("enumerateMaterializedSet(fromSyncAnchor:suggestedBatchSize:completionHandler:)", 78, 2, sub_1CF8F0C64, v9, sub_1CF8F0CA8, v10);
}

void sub_1CF8686F0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v107 = a6;
  v92 = sub_1CF9E63D8();
  v91 = *(v92 - 8);
  v11 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v92);
  v90 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v102 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v108 = &v90 - v17;
  v94 = sub_1CF9E6068();
  v18 = *(v94 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v94);
  v97 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v90 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v90 - v26;
  v95 = type metadata accessor for Signpost(0);
  v98 = *(v95 - 8);
  v28 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v95);
  v101 = &v90 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v99 = v32;
  v100 = (&v90 - v31);
  MEMORY[0x1EEE9AC00](v33);
  v106 = &v90 - v34;
  v35 = *(a1 + 16);
  v36 = swift_allocObject();
  v36[2] = a2;
  v36[3] = a3;
  v36[4] = a4;
  v37 = swift_allocObject();
  *(v37 + 2) = v35;
  *(v37 + 3) = a2;
  *(v37 + 4) = a3;
  *(v37 + 5) = a5;
  *(v37 + 6) = v107;
  *(v37 + 7) = a4;
  v104 = v37;
  *(v37 + 8) = a1;
  v38 = swift_allocObject();
  *(v38 + 16) = sub_1CF900054;
  *(v38 + 24) = v36;
  v107 = v38;
  v39 = *(v35 + qword_1EDEBBC38);
  swift_retain_n();
  v40 = a4;

  v41 = a5;

  v105 = v36;

  v103 = fpfs_adopt_log();
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v42 = qword_1EDEBBE40;
  v43 = v94;
  (*(v18 + 56))(v27, 1, 1, v94);
  strcpy(&aBlock, "async batch ");
  BYTE13(aBlock) = 0;
  HIWORD(aBlock) = -5120;
  v44 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v44);

  v93 = *(&aBlock + 1);
  v45 = aBlock;
  v96 = v27;
  sub_1CEFCCBDC(v27, v24, &unk_1EC4BED20, &unk_1CFA00700);
  v46 = *(v18 + 48);
  if (v46(v24, 1, v43) == 1)
  {
    v47 = v42;
    v48 = v97;
    sub_1CF9E6048();
    v49 = v48;
    if (v46(v24, 1, v43) != 1)
    {
      sub_1CEFCCC44(v24, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v49 = v97;
    (*(v18 + 32))(v97, v24, v43);
  }

  v50 = v106;
  (*(v18 + 16))(v106, v49, v43);
  v51 = v95;
  *(v50 + *(v95 + 20)) = v42;
  v52 = v50 + *(v51 + 24);
  *v52 = "DB queue wait";
  *(v52 + 8) = 13;
  *(v52 + 16) = 2;
  v53 = v42;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_1CF9FA450;
  *(v54 + 56) = MEMORY[0x1E69E6158];
  *(v54 + 64) = sub_1CEFD51C4();
  v55 = v93;
  *(v54 + 32) = v45;
  *(v54 + 40) = v55;
  sub_1CF9E6028();

  (*(v18 + 8))(v49, v43);
  sub_1CEFCCC44(v96, &unk_1EC4BED20, &unk_1CFA00700);
  v56 = *(v35 + 64);
  v96 = *(v35 + 168);
  v97 = v56;
  v95 = sub_1CF9E6448();
  v94 = *(v95 - 8);
  (*(v94 + 56))(v108, 1, 1, v95);
  v57 = v100;
  sub_1CEFDA34C(v50, v100, type metadata accessor for Signpost);
  v58 = *(v98 + 80);
  v98 = v35;
  v59 = (v58 + 16) & ~v58;
  v60 = (v99 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  sub_1CEFDA0C4(v57, v61 + v59, type metadata accessor for Signpost);
  v62 = (v61 + v60);
  v100 = sub_1CF902CDC;
  v63 = v107;
  *v62 = sub_1CF902CDC;
  v62[1] = v63;
  v64 = v101;
  sub_1CEFDA34C(v50, v101, type metadata accessor for Signpost);
  v65 = (v60 + 23) & 0xFFFFFFFFFFFFFFF8;
  v66 = (v65 + 15) & 0xFFFFFFFFFFFFFFF8;
  v67 = (v66 + 25) & 0xFFFFFFFFFFFFFFF8;
  v68 = swift_allocObject();
  sub_1CEFDA0C4(v64, v68 + v59, type metadata accessor for Signpost);
  v69 = (v68 + v60);
  *v69 = sub_1CF045408;
  v69[1] = 0;
  *(v68 + v65) = v98;
  v70 = v68 + v66;
  v71 = v94;
  *v70 = "enumerateMaterializedSet(fromSyncAnchor:suggestedBatchSize:completionHandler:)";
  *(v70 + 8) = 78;
  *(v70 + 16) = 2;
  v72 = (v68 + v67);
  v73 = v107;
  *v72 = v100;
  v72[1] = v73;
  v74 = (v68 + ((v67 + 23) & 0xFFFFFFFFFFFFFFF8));
  v75 = v104;
  *v74 = sub_1CF9000C4;
  v74[1] = v75;
  v76 = swift_allocObject();
  v76[2] = sub_1CF903308;
  v76[3] = v61;
  v77 = v96;
  v76[4] = v96;
  swift_retain_n();

  v101 = v61;
  v78 = v95;

  v79 = fpfs_current_log();
  v80 = *(v77 + 16);
  v81 = v102;
  sub_1CEFCCBDC(v108, v102, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v71 + 48))(v81, 1, v78) == 1)
  {
    sub_1CEFCCC44(v81, &unk_1EC4BE370, qword_1CFA01B30);
    v82 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v83 = v90;
    sub_1CF9E6438();
    (*(v71 + 8))(v81, v78);
    v82 = sub_1CF9E63C8();
    (*(v91 + 8))(v83, v92);
  }

  v84 = swift_allocObject();
  v84[2] = v79;
  v84[3] = sub_1CF4858EC;
  v84[4] = v68;
  v112 = sub_1CF2BA17C;
  v113 = v84;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v110 = sub_1CEFCA444;
  v111 = &block_descriptor_5136;
  v85 = _Block_copy(&aBlock);
  v86 = v79;

  v112 = sub_1CF2BA180;
  v113 = v76;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v110 = sub_1CEFCA444;
  v111 = &block_descriptor_5139;
  v87 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v80, v97, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v82, v85, v87);
  _Block_release(v87);
  _Block_release(v85);

  sub_1CEFCCC44(v108, &unk_1EC4BE370, qword_1CFA01B30);
  sub_1CEFD5338(v106, type metadata accessor for Signpost);
  v88 = v103;
  v89 = fpfs_adopt_log();
}

uint64_t sub_1CF869274(void *a1, uint64_t a2, void (*a3)(void *, void *, void, void *, void, void), uint64_t a4, void *a5, uint64_t a6, char *a7, uint64_t a8)
{
  v115 = a8;
  v131 = a7;
  v134 = a1;
  v128 = sub_1CF9E5FF8();
  v130 = *(v128 - 8);
  v14 = *(v130 + 8);
  MEMORY[0x1EEE9AC00](v128);
  v132 = &v106[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C50B8, &unk_1CFA18240);
  v118 = *(v123 - 8);
  v16 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v123);
  v129 = &v106[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v127 = &v106[-v19];
  MEMORY[0x1EEE9AC00](v20);
  v126 = &v106[-v21];
  MEMORY[0x1EEE9AC00](v22);
  v125 = &v106[-v23];
  MEMORY[0x1EEE9AC00](v24);
  v124 = &v106[-v25];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v133 = &v106[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v106[-v30];
  v116 = type metadata accessor for FPFSMaterializedSetAnchor();
  v32 = *(*(v116 - 8) + 64);
  MEMORY[0x1EEE9AC00](v116);
  v34 = &v106[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v35);
  v122 = &v106[-v36];
  v37 = *(a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4830, &unk_1CFA052E0);
  if (!swift_dynamicCastClass())
  {
    return (a3)(MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], 0, a5, 0, 0);
  }

  v117 = v37;
  v113 = v34;
  v111 = a4;
  v112 = a3;
  v38 = 500;
  if (a6 < 500)
  {
    v38 = a6;
  }

  if (v38 <= 10)
  {
    v38 = 10;
  }

  v121 = v38;
  v39 = qword_1EDEBBDA8;
  swift_beginAccess();
  sub_1CEFCCBDC(a2 + v39, v31, &unk_1EC4BEDE0, qword_1CF9FA390);
  v40 = sub_1CF9E5D98();
  v41 = *(v40 - 8);
  v120 = *(v41 + 48);
  result = (v120)(v31, 1, v40);
  if (result == 1)
  {
    __break(1u);
LABEL_30:
    __break(1u);
    return result;
  }

  v43 = a5;
  v44 = v122;
  sub_1CF9034D8(v43, v31, v122);
  if (v8)
  {
  }

  v110 = 0;
  v46 = v134[3];
  v45 = v134[4];
  v134 = __swift_project_boxed_opaque_existential_1(v134, v46);
  v47 = v116;
  v119 = *&v44[*(v116 + 20)];
  v114 = type metadata accessor for VFSItem(0);
  v109 = sub_1CEFD57E0(0, &qword_1EDEAB520, 0x1E6967388);
  v48 = sub_1CEFCCCA4(qword_1EDEABC30, type metadata accessor for VFSItem);
  v49 = sub_1CF2B1654(&qword_1EDEA3460, &qword_1EDEAB520, 0x1E6967388);
  v50 = v110;
  v51 = sub_1CF24D218(v119, v121, v134, v114, v109, v46, v48, v49, v45);
  if (v50)
  {
    sub_1CEFD5338(v122, type metadata accessor for FPFSMaterializedSetAnchor);
  }

  v55 = v51;
  v56 = v52;
  v107 = v54;
  v110 = 0;
  v57 = v53;
  v58 = a2 + v39;
  v59 = v133;
  sub_1CEFCCBDC(v58, v133, &unk_1EC4BEDE0, qword_1CF9FA390);
  result = (v120)(v59, 1, v40);
  if (result == 1)
  {
    goto LABEL_30;
  }

  v60 = v113;
  (*(v41 + 32))(v113, v59, v40);
  *(v60 + *(v47 + 20)) = v57;
  v61 = *(v55 + 16);
  v62 = MEMORY[0x1E69E7CC0];
  v63 = v129;
  v108 = v55;
  v109 = v56;
  if (v61)
  {
    v135 = MEMORY[0x1E69E7CC0];
    v134 = v61;
    sub_1CF9E7A48();
    v64 = *&v131[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_providerDomainID];
    v65 = (v55 + ((*(v118 + 80) + 32) & ~*(v118 + 80)));
    v120 = (v130 + 48);
    v121 = v64;
    v114 = (v130 + 32);
    v118 = *(v118 + 72);
    v119 = (v130 + 8);
    v67 = v127;
    v66 = v128;
    v68 = v132;
    v69 = v125;
    v70 = v126;
    v71 = v124;
    do
    {
      v133 = v65;
      sub_1CEFCCBDC(v65, v71, &qword_1EC4C50B8, &unk_1CFA18240);
      sub_1CEFCCBDC(v71, v69, &qword_1EC4C50B8, &unk_1CFA18240);
      v80 = v69[1];
      v132 = *v69;

      v81 = v69[3];

      sub_1CEFCCBDC(v71, v70, &qword_1EC4C50B8, &unk_1CFA18240);

      v131 = *(v70 + 8);
      v82 = *(v70 + 24);

      sub_1CEFCCBDC(v71, v67, &qword_1EC4C50B8, &unk_1CFA18240);

      v83 = *(v67 + 24);
      v130 = *(v67 + 16);
      sub_1CEFCCBDC(v71, v63, &qword_1EC4C50B8, &unk_1CFA18240);

      v84 = *(v63 + 24);

      v85 = v123;
      v86 = *(v123 + 80);
      v87 = *v120;
      if ((*v120)(v63 + v86, 1, v66) == 1)
      {
        sub_1CF9E5F78();
        if (v87(v63 + v86, 1, v66) != 1)
        {
          sub_1CEFCCC44(&v129[v86], &unk_1EC4C50C0, &unk_1CFA084A0);
        }
      }

      else
      {
        (*v114)(v68, v63 + v86, v66);
      }

      v72 = *(v85 + 80);
      v73 = objc_allocWithZone(MEMORY[0x1E6967388]);
      v74 = sub_1CF9E6888();

      v75 = sub_1CF9E5F38();
      v77 = v131;
      v76 = v132;
      v130 = [v73 initWithProviderDomainID:v121 itemIdentifier:v132 parentItemIdentifier:v131 filename:v74 contentType:v75];

      (*v119)(v68, v66);
      v71 = v124;
      sub_1CEFCCC44(v124, &qword_1EC4C50B8, &unk_1CFA18240);
      v67 = v127;
      sub_1CEFCCC44(&v127[v72], &unk_1EC4C50C0, &unk_1CFA084A0);
      v70 = v126;
      sub_1CEFCCC44(&v126[v72], &unk_1EC4C50C0, &unk_1CFA084A0);
      v78 = &v125[v72];
      v69 = v125;
      sub_1CEFCCC44(v78, &unk_1EC4C50C0, &unk_1CFA084A0);
      sub_1CF9E7A18();
      v79 = v135[2];
      sub_1CF9E7A58();
      sub_1CF9E7A68();
      sub_1CF9E7A28();
      v65 = &v133[v118];
      v134 = (v134 - 1);
      v66 = v128;
      v63 = v129;
    }

    while (v134);
    v62 = v135;
    v60 = v113;
    v56 = v109;
  }

  v134 = v62;
  v88 = *(v56 + 16);
  v89 = MEMORY[0x1E69E7CC0];
  if (v88)
  {
    v135 = MEMORY[0x1E69E7CC0];
    sub_1CF9E7A48();
    v90 = *(v115 + 16);
    v91 = (v56 + 32);
    type metadata accessor for FPFileTree();
    do
    {
      v92 = *v91++;
      v93 = *(*(v90 + 40) + 16);
      [objc_allocWithZone(MEMORY[0x1E69673A0]) initWithProviderDomainID:*(swift_dynamicCastClassUnconditional() + 280) itemIdentifier:v92];
      sub_1CF9E7A18();
      v94 = v135[2];
      sub_1CF9E7A58();
      sub_1CF9E7A68();
      sub_1CF9E7A28();
      --v88;
    }

    while (v88);
    v89 = v135;
    v60 = v113;
  }

  v95 = sub_1CF9E56C8();
  v96 = *(v95 + 48);
  v97 = *(v95 + 52);
  swift_allocObject();
  sub_1CF9E56B8();
  sub_1CF9E5698();
  sub_1CEFCCCA4(&qword_1EC4C50B0, type metadata accessor for FPFSMaterializedSetAnchor);
  v98 = v110;
  v99 = sub_1CF9E56A8();
  v101 = v122;
  if (v98)
  {

    sub_1CEFD5338(v60, type metadata accessor for FPFSMaterializedSetAnchor);
    v102 = v101;
  }

  else
  {
    v103 = v99;
    v104 = v100;
    sub_1CEFE42D4(v99, v100);
    v105 = sub_1CF9E5B48();
    sub_1CEFE4714(v103, v104);
    sub_1CEFE4714(v103, v104);

    v112(v134, v89, v107 & 1, v105, 0, 0);

    sub_1CEFD5338(v60, type metadata accessor for FPFSMaterializedSetAnchor);
    v102 = v122;
  }

  return sub_1CEFD5338(v102, type metadata accessor for FPFSMaterializedSetAnchor);
}

uint64_t FPDDomainFPFSBackend.currentMaterializedSetSyncAnchor(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  swift_retain_n();
  sub_1CEFD4024("currentMaterializedSetSyncAnchor(completionHandler:)", 52, 2, sub_1CF8F0CC0, v4, sub_1CF8F0CEC, v5);
}

uint64_t sub_1CF86A0C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 16);
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = a2;
  v7[4] = a3;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1CF8F0CC0;
  *(v8 + 24) = v6;
  swift_retain_n();

  sub_1CF7AAF88("currentMaterializedSetSyncAnchor(completionHandler:)", 52, 2, 2, sub_1CF9034B8, v8, sub_1CF8FFFE8, v7);
}

uint64_t sub_1CF86A1E8(void *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v39 - v11;
  v13 = type metadata accessor for FPFSMaterializedSetAnchor();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4830, &unk_1CFA052E0);
  v46 = v17;
  if (!swift_dynamicCastClass())
  {
    return a3();
  }

  v41 = v13;
  v42 = v16;
  v39 = a4;
  v40 = a3;
  v45 = v4;
  v18 = qword_1EDEBBDA8;
  swift_beginAccess();
  sub_1CEFCCBDC(a2 + v18, v12, &unk_1EC4BEDE0, qword_1CF9FA390);
  v19 = sub_1CF9E5D98();
  v20 = *(v19 - 8);
  result = (*(v20 + 48))(v12, 1, v19);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v22 = a1[3];
    v44 = a1[4];
    v43 = __swift_project_boxed_opaque_existential_1(a1, v22);
    v23 = type metadata accessor for VFSItem(0);
    v24 = sub_1CEFD57E0(0, &qword_1EDEAB520, 0x1E6967388);
    v25 = sub_1CEFCCCA4(qword_1EDEABC30, type metadata accessor for VFSItem);
    v26 = sub_1CF2B1654(&qword_1EDEA3460, &qword_1EDEAB520, 0x1E6967388);

    v27 = v26;
    v28 = v45;
    v29 = sub_1CF24D160(v43, v23, v24, v22, v25, v27, v44);
    if (v28)
    {

      return (*(v20 + 8))(v12, v19);
    }

    else
    {
      v30 = v29;
      v31 = v42;
      (*(v20 + 32))(v42, v12, v19);
      *(v31 + *(v41 + 20)) = v30;
      v32 = sub_1CF9E56C8();
      v33 = *(v32 + 48);
      v34 = *(v32 + 52);
      swift_allocObject();
      sub_1CF9E56B8();
      sub_1CF9E5698();
      sub_1CEFCCCA4(&qword_1EC4C50B0, type metadata accessor for FPFSMaterializedSetAnchor);
      v35 = sub_1CF9E56A8();
      v37 = v36;
      sub_1CEFE42D4(v35, v36);
      v38 = sub_1CF9E5B48();
      sub_1CEFE4714(v35, v37);
      sub_1CEFE4714(v35, v37);

      (v40)(v38);

      return sub_1CEFD5338(v31, type metadata accessor for FPFSMaterializedSetAnchor);
    }
  }

  return result;
}

uint64_t sub_1CF86A748(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v6 = v5;
  v130 = a4;
  v142 = a3;
  v134 = a1;
  v135 = a2;
  v7 = sub_1CF9E6118();
  v136 = *(v7 - 8);
  v137 = v7;
  v8 = *(v136 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v127 = &v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v129 = &v119 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v124 = &v119 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v119 - v15;
  v17 = sub_1CF9E5CF8();
  v132 = *(v17 - 8);
  v133 = v17;
  v18 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v131 = &v119 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v123 = &v119 - v22;
  v140 = type metadata accessor for FPFSPendingSetAnchor();
  v23 = *(*(v140 - 8) + 64);
  MEMORY[0x1EEE9AC00](v140);
  v125 = &v119 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v128 = &v119 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v119 - v28;
  v141 = type metadata accessor for FPDDomainFPFSBackend.PendingSetState(0);
  v30 = *(v141 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v141);
  v138 = &v119 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v139 = &v119 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C49F8, &qword_1CFA17AF8);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v38 = &v119 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v119 - v40;
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v119 - v43;
  v45 = objc_sync_enter(v4);
  if (v45)
  {
LABEL_64:
    MEMORY[0x1EEE9AC00](v45);
    *(&v119 - 2) = v4;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v119 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v46 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pendingSetState;
  swift_beginAccess();
  sub_1CEFCCBDC(&v4[v46], v44, &qword_1EC4C49F8, &qword_1CFA17AF8);
  v47 = objc_sync_exit(v4);
  if (v47)
  {
    MEMORY[0x1EEE9AC00](v47);
    *(&v119 - 2) = v4;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v119 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v48 = sub_1CF9E5B88();
  v50 = v49 >> 62;
  v126 = v29;
  v122 = v16;
  if ((v49 >> 62) > 1)
  {
    if (v50 != 2)
    {
      sub_1CEFE4714(v48, v49);
      v59 = 1;
      goto LABEL_19;
    }

    v60 = *(v48 + 16);
    v61 = *(v48 + 24);
    sub_1CEFE4714(v48, v49);
    if (v60 != v61)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

  if (v50)
  {
    v62 = v48;
    sub_1CEFE4714(v48, v49);
    if (v62 != v62 >> 32)
    {
      goto LABEL_6;
    }

LABEL_14:
    v59 = 1;
    goto LABEL_19;
  }

  v51 = v49;
  sub_1CEFE4714(v48, v49);
  if ((v51 & 0xFF000000000000) == 0)
  {
    goto LABEL_14;
  }

LABEL_6:
  v120 = v5;
  v121 = v44;
  v52 = sub_1CF9E5B88();
  v54 = v53;
  if (qword_1EDEAB5E8 != -1)
  {
    swift_once();
  }

  v55 = sub_1CF9E5B88();
  v57 = v56;
  v58 = sub_1CF328660(v52, v54, v55, v56);
  sub_1CEFE4714(v55, v57);
  sub_1CEFE4714(v52, v54);
  if ((v58 & 1) == 0)
  {
    v44 = sub_1CF9E5B88();
    v6 = v63;
    if (qword_1EDEAB5F0 != -1)
    {
      goto LABEL_60;
    }

    goto LABEL_17;
  }

  v59 = 1;
  while (1)
  {
    v44 = v121;
    v6 = v120;
LABEL_19:
    sub_1CEFCCBDC(v44, v41, &qword_1EC4C49F8, &qword_1CFA17AF8);
    v67 = *(v30 + 48);
    v68 = v141;
    if (v67(v41, 1, v141) != 1)
    {
      break;
    }

    sub_1CEFCCC44(v41, &qword_1EC4C49F8, &qword_1CFA17AF8);
    if ((v59 & 1) == 0)
    {
      v69 = fpfs_current_or_default_log();
      v70 = v129;
      sub_1CF9E6128();
      v71 = sub_1CF9E6108();
      v72 = sub_1CF9E72A8();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        *v73 = 0;
        _os_log_impl(&dword_1CEFC7000, v71, v72, "received a non-empty sync anchor when pending set is not being computed anymore", v73, 2u);
        MEMORY[0x1D386CDC0](v73, -1, -1);
      }

      (*(v136 + 8))(v70, v137);
      type metadata accessor for NSFileProviderError(0);
      v143 = -1002;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CEFCCCA4(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError);
      sub_1CF9E57D8();
      swift_willThrow();
      return sub_1CEFCCC44(v44, &qword_1EC4C49F8, &qword_1CFA17AF8);
    }

LABEL_27:
    sub_1CEFCCBDC(v44, v38, &qword_1EC4C49F8, &qword_1CFA17AF8);
    if (v67(v38, 1, v68) == 1)
    {
      v76 = v138;
      sub_1CF83F228(v130, v138);
      if (v6)
      {
        sub_1CEFCCC44(v44, &qword_1EC4C49F8, &qword_1CFA17AF8);
        result = (v67)(v38, 1, v68);
        if (result != 1)
        {
          return sub_1CEFCCC44(v38, &qword_1EC4C49F8, &qword_1CFA17AF8);
        }

        return result;
      }

      if (v67(v38, 1, v68) != 1)
      {
        sub_1CEFCCC44(v38, &qword_1EC4C49F8, &qword_1CFA17AF8);
      }
    }

    else
    {
      v76 = v138;
      sub_1CEFDA0C4(v38, v138, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
    }

    v30 = v140;
    sub_1CEFDA34C(v76, v134, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
    v90 = sub_1CF9E5D98();
    v38 = v135;
    (*(*(v90 - 8) + 16))(v135, v76, v90);
    v91 = *(v68 + 20);
    v92 = v131;
    v93 = v132;
    v94 = v133;
    (*(v132 + 16))(v131, v76 + v91, v133);
    sub_1CF9E5C98();
    v96 = v95;
    (*(v93 + 8))(v92, v94);
    sub_1CEFD5338(v76, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
    result = sub_1CEFCCC44(v44, &qword_1EC4C49F8, &qword_1CFA17AF8);
    v97 = v96 * 1000000000.0;
    if (COERCE__INT64(fabs(v96 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    if (v97 <= -9.22337204e18)
    {
      goto LABEL_58;
    }

    if (v97 < 9.22337204e18)
    {
      *&v38[*(v30 + 20)] = v97;
      *&v38[*(v30 + 24)] = 0;
      v38[*(v30 + 28)] = 1;
      return result;
    }

LABEL_59:
    __break(1u);
LABEL_60:
    swift_once();
LABEL_17:
    v64 = sub_1CF9E5B88();
    v66 = v65;
    v59 = sub_1CF328660(v44, v6, v64, v65);
    sub_1CEFE4714(v64, v66);
    sub_1CEFE4714(v44, v6);
  }

  v75 = v139;
  sub_1CEFDA0C4(v41, v139, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
  if (v59)
  {
    sub_1CEFD5338(v75, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
    v68 = v141;
    goto LABEL_27;
  }

  v77 = sub_1CF9E5688();
  v78 = *(v77 + 48);
  v79 = *(v77 + 52);
  swift_allocObject();
  sub_1CF9E5678();
  v80 = sub_1CF9E5B88();
  v82 = v81;
  sub_1CEFCCCA4(&qword_1EC4C50A8, type metadata accessor for FPFSPendingSetAnchor);
  v83 = v128;
  v84 = v140;
  sub_1CF9E5668();
  if (!v6)
  {

    sub_1CEFE4714(v80, v82);
    v98 = v83;
    v99 = v126;
    sub_1CEFDA0C4(v98, v126, type metadata accessor for FPFSPendingSetAnchor);
    v100 = v125;
    sub_1CEFDA34C(v99, v125, type metadata accessor for FPFSPendingSetAnchor);
    v101 = sub_1CF9E5D48();
    v102 = sub_1CF9E5D98();
    (*(*(v102 - 8) + 8))(v100, v102);
    if ((v101 & 1) == 0)
    {
      v112 = fpfs_current_or_default_log();
      v113 = v124;
      sub_1CF9E6128();
      v114 = sub_1CF9E6108();
      v115 = sub_1CF9E72A8();
      if (os_log_type_enabled(v114, v115))
      {
        v116 = swift_slowAlloc();
        *v116 = 0;
        v117 = "received a pending set anchor for an outdated UUID";
LABEL_53:
        _os_log_impl(&dword_1CEFC7000, v114, v115, v117, v116, 2u);
        MEMORY[0x1D386CDC0](v116, -1, -1);
      }

LABEL_54:

      (*(v136 + 8))(v113, v137);
      type metadata accessor for NSFileProviderError(0);
      v143 = -1002;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CEFCCCA4(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError);
      sub_1CF9E57D8();
      swift_willThrow();
      sub_1CEFD5338(v99, type metadata accessor for FPFSPendingSetAnchor);
      sub_1CEFD5338(v75, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
      return sub_1CEFCCC44(v44, &qword_1EC4C49F8, &qword_1CFA17AF8);
    }

    v103 = *(v99 + *(v84 + 20));
    v104 = v123;
    sub_1CEFCCBDC(v75 + *(v141 + 24), v123, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v105 = sub_1CF4D3CE8(v104);
    if ((v106 & 1) == 0 && v103 == v105)
    {
      goto LABEL_50;
    }

    v4 = v131;
    v107 = v132;
    v108 = v133;
    (*(v132 + 16))(v131, v75 + *(v141 + 20), v133);
    sub_1CF9E5C98();
    v110 = v109;
    v45 = (*(v107 + 8))(v4, v108);
    v111 = v110 * 1000000000.0;
    if (COERCE__INT64(fabs(v110 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v111 > -9.22337204e18)
    {
      if (v111 < 9.22337204e18)
      {
        if (v103 == v111)
        {
LABEL_50:
          sub_1CEFCCC44(v44, &qword_1EC4C49F8, &qword_1CFA17AF8);
          sub_1CEFDA0C4(v75, v134, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
          return sub_1CEFDA0C4(v99, v135, type metadata accessor for FPFSPendingSetAnchor);
        }

        v118 = fpfs_current_or_default_log();
        v113 = v122;
        sub_1CF9E6128();
        v114 = sub_1CF9E6108();
        v115 = sub_1CF9E72A8();
        if (os_log_type_enabled(v114, v115))
        {
          v116 = swift_slowAlloc();
          *v116 = 0;
          v117 = "received a change gathering for an outdated timestamp";
          goto LABEL_53;
        }

        goto LABEL_54;
      }

      goto LABEL_63;
    }

    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  sub_1CEFE4714(v80, v82);
  v85 = fpfs_current_or_default_log();
  v86 = v127;
  sub_1CF9E6128();
  v87 = sub_1CF9E6108();
  v88 = sub_1CF9E72A8();
  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    *v89 = 0;
    _os_log_impl(&dword_1CEFC7000, v87, v88, "cannot decode anchor for pending set", v89, 2u);
    MEMORY[0x1D386CDC0](v89, -1, -1);
  }

  (*(v136 + 8))(v86, v137);
  type metadata accessor for NSFileProviderError(0);
  v143 = -1002;
  sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
  sub_1CEFCCCA4(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError);
  sub_1CF9E57D8();
  swift_willThrow();

  sub_1CEFD5338(v75, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
  return sub_1CEFCCC44(v44, &qword_1EC4C49F8, &qword_1CFA17AF8);
}

uint64_t FPDDomainFPFSBackend.enumeratePendingSet(fromSyncAnchor:suggestedBatchSize:completionHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1CF9E6118();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v16 = a1;
  v17 = sub_1CF9E6108();
  v18 = sub_1CF9E7298();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v46 = v18;
    v20 = v19;
    v45 = swift_slowAlloc();
    v50 = v45;
    *v20 = 136315394;
    v21 = sub_1CF9E5B88();
    v48 = v10;
    v22 = v21;
    v44 = v17;
    v23 = v16;
    v24 = a4;
    v25 = v5;
    v27 = v26;
    v28 = sub_1CF9E5AB8();
    v49 = a3;
    v29 = a2;
    v30 = v28;
    v47 = v11;
    v32 = v31;
    v33 = v27;
    v5 = v25;
    a4 = v24;
    v16 = v23;
    sub_1CEFE4714(v22, v33);
    v34 = v30;
    a2 = v29;
    a3 = v49;
    v35 = sub_1CEFD0DF0(v34, v32, &v50);

    *(v20 + 4) = v35;
    *(v20 + 12) = 2048;
    *(v20 + 14) = a2;
    v36 = v44;
    _os_log_impl(&dword_1CEFC7000, v44, v46, "FPFS backend - enumerate pending %s, %ld", v20, 0x16u);
    v37 = v45;
    __swift_destroy_boxed_opaque_existential_1(v45);
    MEMORY[0x1D386CDC0](v37, -1, -1);
    MEMORY[0x1D386CDC0](v20, -1, -1);

    (*(v47 + 8))(v14, v48);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  v38 = swift_allocObject();
  *(v38 + 16) = a3;
  *(v38 + 24) = a4;
  v39 = swift_allocObject();
  v39[2] = a3;
  v39[3] = a4;
  v39[4] = v5;
  v39[5] = v16;
  v39[6] = a2;
  swift_retain_n();
  v40 = v16;
  v41 = v5;
  sub_1CEFD4024("enumeratePendingSet(fromSyncAnchor:suggestedBatchSize:completionHandler:)", 73, 2, sub_1CF903258, v38, sub_1CF8F0CF4, v39);
}

uint64_t sub_1CF86BAE8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v12 = *(a1 + 16);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = v12;
  v14[5] = a6;
  v14[6] = a1;
  v14[7] = a2;
  v14[8] = a3;
  swift_retain_n();
  v15 = a4;
  v16 = a5;

  sub_1CF7AAF88("enumeratePendingSet(fromSyncAnchor:suggestedBatchSize:completionHandler:)", 73, 2, 2, sub_1CF8FFF30, v13, sub_1CF8FFF7C, v14);
}

uint64_t sub_1CF86BC0C(void *a1, int *a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, void (*a7)(void *, uint64_t, void, uint64_t, void *, int *, void, double), uint64_t a8)
{
  v117 = a3;
  v110 = a8;
  v111 = a7;
  v112 = a6;
  v115 = a5;
  v116 = a1;
  v10 = sub_1CF9E5CF8();
  v114 = *(v10 - 8);
  v11 = v114[8];
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FPFSPendingSetAnchor();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v102 - v19;
  v21 = type metadata accessor for FPDDomainFPFSBackend.PendingSetState(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v102 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v118;
  result = sub_1CF86A748(v24, v20, v117, a4);
  if (v25)
  {
    return result;
  }

  v108 = v17;
  v109 = v13;
  v117 = v20;
  v118 = v24;
  v105 = v10;
  v106 = a4;
  v113 = v21;
  v103 = *(v20 + *(v14 + 28));
  v27 = v14;
  v107 = 0;
  v104 = a2;
  if (v103 == 1)
  {
    v28 = *(v118 + v113[7]);
    v29 = *(v28 + 16);
    v30 = MEMORY[0x1E69E7CC0];
    if (v29)
    {
      v119 = MEMORY[0x1E69E7CC0];
      sub_1CF680D2C(0, v29, 0);
      v30 = v119;
      v10 = v28 + 32;
      do
      {
        v31 = *v10;
        v119 = v30;
        v33 = *(v30 + 16);
        v32 = *(v30 + 24);
        v34 = v31;
        if (v33 >= v32 >> 1)
        {
          sub_1CF680D2C((v32 > 1), v33 + 1, 1);
          v30 = v119;
        }

        *(v30 + 16) = v33 + 1;
        *(v30 + 8 * v33 + 32) = v34;
        v10 += 24;
        --v29;
      }

      while (v29);
      v43 = MEMORY[0x1E69E7CC0];
      v20 = v117;
      v44 = v106;
    }

    else
    {
      v43 = MEMORY[0x1E69E7CC0];
      v44 = v106;
    }
  }

  else
  {
    v35 = *(v20 + *(v14 + 20));
    v36 = v114;
    v43 = v118;
    v37 = v109;
    v30 = v105;
    (v114[2])(v109, v118 + v113[5], v105);
    sub_1CF9E5C98();
    v39 = v38;
    (v36[1])(v37, v30);
    v40 = v39 * 1000000000.0;
    v41 = fabs(v39 * 1000000000.0);
    v44 = v106;
    if (v41 > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    v41 = 0xC3E0000000000001;
    if (v40 <= -9.22337204e18)
    {
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    v41 = 0x43E0000000000000;
    if (v40 >= 9.22337204e18)
    {
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    if (v35 == v40)
    {
      v30 = MEMORY[0x1E69E7CC0];
      v43 = MEMORY[0x1E69E7CC0];
      v42 = v115;
      goto LABEL_23;
    }

    v45 = v113;
    v46 = *(v43 + v113[8]);
    v47 = *(v46 + 16);
    v30 = MEMORY[0x1E69E7CC0];
    if (v47)
    {
      v119 = MEMORY[0x1E69E7CC0];
      sub_1CF680D2C(0, v47, 0);
      v30 = v119;
      v48 = (v46 + 32);
      do
      {
        v49 = *v48;
        v119 = v30;
        v10 = *(v30 + 16);
        v50 = *(v30 + 24);
        v51 = v49;
        if (v10 >= v50 >> 1)
        {
          v52 = v51;
          sub_1CF680D2C((v50 > 1), v10 + 1, 1);
          v51 = v52;
          v30 = v119;
        }

        *(v30 + 16) = v10 + 1;
        *(v30 + 8 * v10 + 32) = v51;
        v48 += 3;
        --v47;
      }

      while (v47);
      v20 = v117;
      v45 = v113;
    }

    v43 = *(v43 + v45[9]);
    swift_bridgeObjectRetain_n();
  }

  v42 = v115;

LABEL_23:
  v41 = 10;
  if (v42 > 10)
  {
    v41 = v42;
  }

  if (v41 >= 500)
  {
    v41 = 500;
  }

  v37 = *(v20 + v27[6]);
  v17 = (v37 + v41);
  if (__OFADD__(v37, v41))
  {
    __break(1u);
    goto LABEL_69;
  }

  v53 = *(v30 + 16);

  if (v37 >= v53)
  {
    LODWORD(v10) = 0;
    v56 = MEMORY[0x1E69E7CC0];
    v20 = v109;
    goto LABEL_37;
  }

  v54 = *(v30 + 16);
  LODWORD(v10) = v17 < v54;
  if (v54 >= v17)
  {
    v41 = v17;
  }

  else
  {
    v41 = *(v30 + 16);
  }

  v20 = v109;
  if (v41 < v37)
  {
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  if (v37 < 0)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if (v54 != v41 - v37)
  {
    sub_1CF4771D4(v30, v30 + 32, v37, (2 * v41) | 1);
    v56 = v55;
LABEL_37:

    v30 = v56;
  }

  v57 = *(v43 + 16);

  v102 = v27;
  if (v37 < v57)
  {
    v58 = *(v43 + 16);
    if (v58 >= v17)
    {
      v41 = v17;
    }

    else
    {
      v41 = *(v43 + 16);
    }

    if (v17 < v58)
    {
      LODWORD(v10) = 1;
    }

    if (v41 >= v37)
    {
      if (v58 < v37)
      {
        goto LABEL_76;
      }

      if (v58 != v41 - v37)
      {
        goto LABEL_78;
      }

      if (!v10)
      {
        while (1)
        {
LABEL_48:
          v59 = sub_1CF9E5D98();
          v17 = v108;
          (*(*(v59 - 8) + 16))(v108, v117, v59);
          v60 = v113;
          v10 = v114;
          v61 = v20;
          v37 = v20;
          v20 = v105;
          (v114[2])(v61, v118 + v113[5], v105);
          sub_1CF9E5C98();
          v63 = v62;
          v64 = *(v10 + 8);
          LOBYTE(v10) = v10 + 8;
          v64(v37, v20);
          v65 = v63 * 1000000000.0;
          v41 = fabs(v63 * 1000000000.0);
          if (v41 > 0x7FEFFFFFFFFFFFFFLL)
          {
LABEL_75:
            __break(1u);
LABEL_76:
            __break(1u);
          }

          else
          {
            v41 = 0xC3E0000000000001;
            v20 = v107;
            v10 = v116;
            if (v65 > -9.22337204e18)
            {
              if (v65 < 9.22337204e18)
              {
                LODWORD(v115) = 0;
                *&v17[v27[5]] = v65;
                *&v17[v27[6]] = 0;
                v17[v27[7]] = 0;
                goto LABEL_54;
              }

              __break(1u);
LABEL_81:
              if (sub_1CF9E7818() >= 900)
              {
                goto LABEL_82;
              }

              goto LABEL_58;
            }
          }

          __break(1u);
LABEL_78:
          sub_1CF4771D4(v43, v43 + 32, v37, (2 * v41) | 1);
          v101 = v100;

          v43 = v101;
          if (v10)
          {
            goto LABEL_53;
          }
        }
      }

      goto LABEL_53;
    }

    goto LABEL_73;
  }

  v43 = MEMORY[0x1E69E7CC0];
  if ((v10 & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_53:
  v66 = v117;
  v67 = *(v117 + v27[5]);
  v68 = sub_1CF9E5D98();
  v69 = v108;
  (*(*(v68 - 8) + 16))(v108, v66, v68);
  *(v69 + v27[5]) = v67;
  *(v69 + v27[6]) = v17;
  v17 = v69;
  *(v69 + v27[7]) = v103;
  LODWORD(v115) = 1;
  v20 = v107;
  v60 = v113;
  v10 = v116;
LABEL_54:
  v27 = [objc_allocWithZone(MEMORY[0x1E6967338]) init];
  v70 = v118;
  v71 = [v27 setDomainVersion_];
  MEMORY[0x1EEE9AC00](v71);
  *(&v102 - 4) = v10;
  *(&v102 - 3) = v44;
  v44 = v104;
  *(&v102 - 2) = v104;
  v72 = sub_1CF25A894(sub_1CF8FFFA8, (&v102 - 6), v30);
  v10 = v20;
  if (v20)
  {

    sub_1CEFD5338(v17, type metadata accessor for FPFSPendingSetAnchor);
    sub_1CEFD5338(v117, type metadata accessor for FPFSPendingSetAnchor);
    return sub_1CEFD5338(v70, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
  }

  else
  {
    v20 = v72;

    if (v20 >> 62)
    {
      goto LABEL_81;
    }

    if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 900)
    {
LABEL_82:
      sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/fpfs/FPDDomainFPFSBackend.swift", 94, 2, 3551);
    }

LABEL_58:
    v73 = v116[3];
    v74 = v116[4];
    v75 = __swift_project_boxed_opaque_existential_1(v116, v73);
    v76 = sub_1CEFCCCA4(qword_1EDEA8860, type metadata accessor for VFSFileTree);
    sub_1CF769068(v20, 32, v75, v73, v76, &off_1F4BF8588, v74);
    if (v10)
    {

      sub_1CEFD5338(v108, type metadata accessor for FPFSPendingSetAnchor);
      sub_1CEFD5338(v117, type metadata accessor for FPFSPendingSetAnchor);
      return sub_1CEFD5338(v118, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
    }

    else
    {
      v77 = sub_1CF9E56C8();
      v78 = *(v77 + 48);
      v79 = *(v77 + 52);
      swift_allocObject();
      sub_1CF9E56B8();
      sub_1CF9E5698();
      sub_1CEFCCCA4(&qword_1EC4C50A0, type metadata accessor for FPFSPendingSetAnchor);
      v80 = sub_1CF9E56A8();
      v116 = v20;
      v82 = v80;
      v83 = v81;
      sub_1CEFE42D4(v80, v81);
      v114 = sub_1CF9E5B48();
      sub_1CEFE4714(v82, v83);
      sub_1CEFE4714(v82, v83);

      MEMORY[0x1EEE9AC00](v84);
      *(&v102 - 2) = v118;
      *(&v102 - 1) = v44;
      sub_1CF052DA4(v44, sub_1CF8FFFCC);
      v107 = 0;
      v85 = v43;
      v86 = *(v43 + 16);
      if (v86)
      {
        v119 = MEMORY[0x1E69E7CC0];
        sub_1CF9E7A48();
        v87 = *(v112 + 16);
        type metadata accessor for FPFileTree();
        v88 = 32;
        do
        {
          v89 = *(*(v87 + 40) + 16);
          [objc_allocWithZone(MEMORY[0x1E69673A0]) initWithProviderDomainID:*(swift_dynamicCastClassUnconditional() + 280) itemIdentifier:*(v85 + v88)];
          sub_1CF9E7A18();
          v90 = *(v119 + 16);
          sub_1CF9E7A58();
          v85 = v43;
          sub_1CF9E7A68();
          sub_1CF9E7A28();
          v88 += 8;
          --v86;
        }

        while (v86);

        v91 = v119;
      }

      else
      {

        v91 = MEMORY[0x1E69E7CC0];
      }

      v92 = v118;
      v93 = *(v118 + v113[14]);
      v94 = [objc_opt_self() defaultStore];
      [v94 pendingSetRefreshInterval];
      v96 = v95;

      v97 = v114;
      v98 = v114;
      v99 = v27;
      v111(v116, v91, v115, v93, v97, v27, 0, v96);

      sub_1CEFD5338(v108, type metadata accessor for FPFSPendingSetAnchor);
      sub_1CEFD5338(v117, type metadata accessor for FPFSPendingSetAnchor);
      return sub_1CEFD5338(v92, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
    }
  }
}

uint64_t sub_1CF86C870@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X8>)
{
  v50 = a5;
  v46 = a6;
  v47 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBB0, &qword_1CF9FCB90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v46 - v11;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v13 = *(v49 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v16 = &v46 - v15;
  v17 = sub_1CF9E5FF8();
  v48 = *(v17 - 8);
  v18 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  v22 = a2[3];
  v23 = a2[4];
  v24 = a2;
  v25 = v21;
  v26 = __swift_project_boxed_opaque_existential_1(v24, v22);
  v27 = *(a3 + 40);
  v52 = v25;
  v28 = v51;
  result = (*(*v27 + 240))(&v52, 1, v26, v22, v23);
  if (v28)
  {
    *v50 = v28;
  }

  else
  {
    v50 = v25;
    v51 = 0;
    v30 = v46;
    if ((*(v13 + 48))(v12, 1, v49) == 1)
    {
      sub_1CEFCCC44(v12, &unk_1EC4BFBB0, &qword_1CF9FCB90);
      sub_1CF9E5F78();
      v31 = *MEMORY[0x1E6967258];
      v32 = v30;
      v33 = v17;
      v34 = v47;
    }

    else
    {
      sub_1CEFE55D0(v12, v16, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      v36 = *(v16 + 10);
      v35 = *(v16 + 11);
      v37 = v16[*(v49 + 48)];

      v32 = v30;
      if (v37 > 1)
      {
        v34 = v47;
        if (v37 == 2)
        {
          sub_1CF9E5F18();
        }

        else
        {
          sub_1CF9E5FC8();
        }
      }

      else
      {
        v34 = v47;
        if (v37)
        {
          sub_1CF9E5F98();
        }

        else
        {
          sub_1CF9E5F78();
        }
      }

      v38 = *(v16 + 1);
      v39 = v16;
      v31 = v38;
      sub_1CEFCCC44(v39, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      v33 = v17;
    }

    v40 = *(v34 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_providerDomainID);
    v41 = objc_allocWithZone(MEMORY[0x1E6967388]);
    v42 = v31;
    v43 = sub_1CF9E6888();

    v44 = sub_1CF9E5F38();
    v45 = [v41 initWithProviderDomainID:v40 itemIdentifier:v50 parentItemIdentifier:v42 filename:v43 contentType:v44];

    result = (*(v48 + 8))(v20, v33);
    *v32 = v45;
  }

  return result;
}

uint64_t sub_1CF86CC64(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C49F8, &qword_1CFA17AF8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v21 - v7;
  v9 = type metadata accessor for FPDDomainFPFSBackend.PendingSetState(0);
  v10 = *(v9 - 1);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CEFDA34C(a1, v13, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
  v14 = *(*(a1 + v9[7]) + 16);
  sub_1CF86CEBC(v14 != 0);
  if (v2)
  {

    v15 = 2;
  }

  else
  {
    v15 = v14 != 0;
  }

  v13[v9[12]] = v15;
  v16 = v9[5];
  v17 = v9[13];
  v18 = sub_1CF9E5CF8();
  (*(*(v18 - 8) + 24))(&v13[v17], &v13[v16], v18);
  sub_1CEFDA34C(v13, v8, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
  (*(v10 + 56))(v8, 0, 1, v9);
  v19 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pendingSetState;
  swift_beginAccess();
  sub_1CEFDA9E0(v8, a2 + v19, &qword_1EC4C49F8, &qword_1CFA17AF8);
  swift_endAccess();
  return sub_1CEFD5338(v13, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
}

void sub_1CF86CEBC(int a1)
{
  v3 = v1;
  v5 = sub_1CF9E5A58();
  v62 = *(v5 - 8);
  v6 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v57 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CF9E6118();
  v59 = *(v8 - 8);
  v60 = v8;
  v9 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v61 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v58 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v46 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C49F8, &qword_1CFA17AF8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v46 - v19;
  v21 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pendingSetState;
  swift_beginAccess();
  sub_1CEFCCBDC(v3 + v21, v20, &qword_1EC4C49F8, &qword_1CFA17AF8);
  v22 = type metadata accessor for FPDDomainFPFSBackend.PendingSetState(0);
  if ((*(*(v22 - 8) + 48))(v20, 1, v22))
  {
    sub_1CEFCCC44(v20, &qword_1EC4C49F8, &qword_1CFA17AF8);
  }

  else
  {
    v31 = v20[*(v22 + 48)];
    sub_1CEFCCC44(v20, &qword_1EC4C49F8, &qword_1CFA17AF8);
    if (v31 != 2 && ((v31 ^ a1) & 1) == 0)
    {
      return;
    }
  }

  v23 = sub_1CF9E5438();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  sub_1CF9E5428();
  v63 = a1 & 1;
  v26 = sub_1CF9E5418();
  v28 = v27;

  if (!v2)
  {
    v55 = v26;
    v56 = v28;
    v29 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pendingSetStateURL;
    swift_beginAccess();
    v54 = v29;
    sub_1CEFCCBDC(v3 + v29, v16, &unk_1EC4BE310, qword_1CF9FCBE0);
    v30 = v62;
    v53 = *(v62 + 48);
    if (v53(v16, 1, v5) == 1)
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    sub_1CF9E5BB8();
    v51 = *(v30 + 8);
    v51(v16, v5);
    v32 = fpfs_current_or_default_log();
    v33 = v61;
    sub_1CF9E6128();
    v52 = v3;
    v34 = sub_1CF9E6108();
    v50 = sub_1CF9E7298();
    if (os_log_type_enabled(v34, v50))
    {
      v48 = v30 + 8;
      v49 = v34;
      v35 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v64 = v47;
      *v35 = 67109378;
      *(v35 + 4) = a1 & 1;
      *(v35 + 8) = 2080;
      v36 = v58;
      sub_1CEFCCBDC(v3 + v54, v58, &unk_1EC4BE310, qword_1CF9FCBE0);
      v37 = v53(v36, 1, v5);

      if (v37 != 1)
      {
        v38 = *(v30 + 32);
        v39 = v57;
        v38(v57, v36, v5);
        sub_1CEFCCCA4(&unk_1EDEAB3F0, MEMORY[0x1E6968FB0]);
        v40 = sub_1CF9E7F98();
        v42 = v41;
        v51(v39, v5);
        v43 = sub_1CEFD0DF0(v40, v42, &v64);

        *(v35 + 10) = v43;
        v44 = v49;
        _os_log_impl(&dword_1CEFC7000, v49, v50, "Persisted pending set status %{BOOL}d to %s", v35, 0x12u);
        v45 = v47;
        __swift_destroy_boxed_opaque_existential_1(v47);
        MEMORY[0x1D386CDC0](v45, -1, -1);
        MEMORY[0x1D386CDC0](v35, -1, -1);
        sub_1CEFE4714(v55, v56);

        (*(v59 + 8))(v61, v60);
        return;
      }

      goto LABEL_15;
    }

    sub_1CEFE4714(v55, v56);
    (*(v59 + 8))(v33, v60);
  }
}

void sub_1CF86D5B0(double a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1CEFD57E0(0, &qword_1EDEAB520, 0x1E6967388);
  v16 = sub_1CF9E6D28();
  sub_1CEFD57E0(0, &unk_1EDEA3430, 0x1E69673A0);
  v17 = sub_1CF9E6D28();
  if (a8)
  {
    v18 = sub_1CF9E57E8();
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;
  (*(a9 + 16))(a9, v16, v17, a4 & 1, a5 & 1, a6, a7, a1);
}

uint64_t FPDDomainFPFSBackend.currentPendingSetSyncAnchor(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = v2;
  swift_retain_n();
  v7 = v2;
  sub_1CEFD4024("currentPendingSetSyncAnchor(completionHandler:)", 47, 2, sub_1CF8F0D0C, v5, sub_1CF8F0D40, v6);
}

uint64_t sub_1CF86D7B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 16);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = swift_allocObject();
  v9[2] = a4;
  v9[3] = v7;
  v9[4] = a2;
  v9[5] = a3;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1CF8F0D0C;
  *(v10 + 24) = v8;
  swift_retain_n();
  v11 = a4;

  sub_1CF7AAF88("currentPendingSetSyncAnchor(completionHandler:)", 47, 2, 2, sub_1CF9034B8, v10, sub_1CF8FFF10, v9);
}

uint64_t sub_1CF86D8E0(uint64_t a1, char *a2, char *a3, void (*a4)(uint64_t, void *, double), uint64_t a5)
{
  v50 = a5;
  v51 = a4;
  v8 = sub_1CF9E5CF8();
  v47 = *(v8 - 8);
  v9 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for FPFSPendingSetAnchor();
  v12 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46);
  v49 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FPDDomainFPFSBackend.PendingSetState(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v48 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C49F8, &qword_1CFA17AF8);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v46 - v23;
  v25 = objc_sync_enter(a2);
  if (v25)
  {
LABEL_17:
    MEMORY[0x1EEE9AC00](v25);
    *(&v46 - 2) = a2;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v46 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  sub_1CF86DF50(a2, a3, v24);
  if (!v5)
  {
    result = objc_sync_exit(a2);
    if (result)
    {
      goto LABEL_18;
    }

    sub_1CEFCCBDC(v24, v21, &qword_1EC4C49F8, &qword_1CFA17AF8);
    if ((*(v15 + 48))(v21, 1, v14) == 1)
    {
      sub_1CEFCCC44(v21, &qword_1EC4C49F8, &qword_1CFA17AF8);
      v51(0, 0, 0.0);
      return sub_1CEFCCC44(v24, &qword_1EC4C49F8, &qword_1CFA17AF8);
    }

    a2 = v48;
    sub_1CEFDA0C4(v21, v48, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
    v27 = sub_1CF9E5D98();
    v28 = v49;
    (*(*(v27 - 8) + 16))(v49, a2, v27);
    v29 = v47;
    (*(v47 + 16))(v11, &a2[*(v14 + 20)], v8);
    sub_1CF9E5C98();
    v31 = v30;
    v25 = (*(v29 + 8))(v11, v8);
    v32 = v31 * 1000000000.0;
    if (COERCE__INT64(fabs(v31 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v32 > -9.22337204e18)
    {
      if (v32 < 9.22337204e18)
      {
        v33 = v46;
        *(v28 + *(v46 + 20)) = v32;
        *(v28 + *(v33 + 24)) = 0;
        *(v28 + *(v33 + 28)) = 0;
        v34 = a2[*(v14 + 56)];
        v35 = [objc_opt_self() defaultStore];
        [v35 pendingSetRefreshInterval];
        v37 = v36;

        v38 = sub_1CF9E56C8();
        v39 = *(v38 + 48);
        v40 = *(v38 + 52);
        swift_allocObject();
        sub_1CF9E56B8();
        sub_1CF9E5698();
        sub_1CEFCCCA4(&qword_1EC4C50A0, type metadata accessor for FPFSPendingSetAnchor);
        v41 = a2;
        v42 = sub_1CF9E56A8();
        v44 = v43;
        sub_1CEFE42D4(v42, v43);
        v45 = sub_1CF9E5B48();
        sub_1CEFE4714(v42, v44);
        sub_1CEFE4714(v42, v44);

        v51(v34, v45, v37);

        sub_1CEFD5338(v28, type metadata accessor for FPFSPendingSetAnchor);
        sub_1CEFD5338(v41, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
        return sub_1CEFCCC44(v24, &qword_1EC4C49F8, &qword_1CFA17AF8);
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = objc_sync_exit(a2);
  if (result)
  {
LABEL_18:
    MEMORY[0x1EEE9AC00](result);
    *(&v46 - 2) = a2;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v46 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return result;
}

uint64_t sub_1CF86DF50@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a2;
  v31 = a3;
  v4 = type metadata accessor for FPDDomainFPFSBackend.PendingSetState(0);
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C49F8, &qword_1CFA17AF8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v27 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - v13;
  v15 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pendingSetState;
  swift_beginAccess();
  v16 = v15;
  sub_1CEFCCBDC(a1 + v15, v14, &qword_1EC4C49F8, &qword_1CFA17AF8);
  v28 = v5;
  v30 = *(v5 + 48);
  LODWORD(v15) = v30(v14, 1, v4);
  sub_1CEFCCC44(v14, &qword_1EC4C49F8, &qword_1CFA17AF8);
  if (v15 == 1)
  {
    v17 = v33;
    result = sub_1CF83F228(v29, v8);
    if (v17)
    {
      return result;
    }

    sub_1CF86CEBC(0);
    v33 = 0;
    v19 = v16;
    v8[v4[12]] = 0;
    v20 = v27;
    sub_1CEFDA0C4(v8, v27, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
    (*(v28 + 56))(v20, 0, 1, v4);
    swift_beginAccess();
    sub_1CEFDA9E0(v20, a1 + v16, &qword_1EC4C49F8, &qword_1CFA17AF8);
    swift_endAccess();
  }

  else
  {
    v19 = v16;
  }

  v21 = sub_1CF828014();
  v23 = v22;
  if (!v30(v22, 1, v4))
  {
    v24 = v4[5];
    v25 = v4[13];
    v26 = sub_1CF9E5CF8();
    (*(*(v26 - 8) + 24))(&v23[v25], &v23[v24], v26);
  }

  (v21)(v32, 0);
  return sub_1CEFCCBDC(a1 + v19, v31, &qword_1EC4C49F8, &qword_1CFA17AF8);
}

void sub_1CF86E3CC(char *a1, uint64_t a2, void *a3)
{
  sub_1CF052DA4(a1, sub_1CF8F8AD0);
  v5 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_onActivatePendingSetNotification;
  if (*&a1[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_onActivatePendingSetNotification])
  {
    v6 = *&a1[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_onActivatePendingSetNotification];
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1CF9E7418();
    swift_unknownObjectRelease();
    v7 = *&a1[v5];
    *&a1[v5] = 0;
    swift_unknownObjectRelease();
  }

  v8 = [objc_msgSend(a3 session)];
  swift_unknownObjectRelease();
  v9 = [v8 synchronousRemoteObjectProxy];
  sub_1CF9E7728();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4CA0, &unk_1CFA17E90);
  if (swift_dynamicCast())
  {
    v10 = aBlock[6];
    v11 = swift_allocObject();
    *(v11 + 16) = a3;
    *(v11 + 24) = a1;
    aBlock[4] = sub_1CF8F8AEC;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CF00A468;
    aBlock[3] = &block_descriptor_1847;
    v12 = _Block_copy(aBlock);
    swift_unknownObjectRetain();
    v13 = a3;
    v14 = a1;

    [v10 signalEnumeratorForPendingItemsWithCompletionHandler_];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease_n();
    _Block_release(v12);
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1CF86E5EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C49F8, &qword_1CFA17AF8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v30 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  v13 = type metadata accessor for FPDDomainFPFSBackend.PendingSetState(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CEFCCBDC(a1, v9, &qword_1EC4C49F8, &qword_1CFA17AF8);
  v18 = *(v14 + 48);
  v19 = v18(v9, 1, v13);
  v20 = &unk_1EDEA5000;
  v31 = a2;
  if (v19 == 1)
  {
    v21 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pendingSetState;
    swift_beginAccess();
    v22 = a2 + v21;
    v20 = &unk_1EDEA5000;
    sub_1CEFCCBDC(v22, v12, &qword_1EC4C49F8, &qword_1CFA17AF8);
    if (v18(v9, 1, v13) != 1)
    {
      sub_1CEFCCC44(v9, &qword_1EC4C49F8, &qword_1CFA17AF8);
    }
  }

  else
  {
    sub_1CEFDA0C4(v9, v12, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
    (*(v14 + 56))(v12, 0, 1, v13);
  }

  if (v18(v12, 1, v13) == 1)
  {
    return sub_1CEFCCC44(v12, &qword_1EC4C49F8, &qword_1CFA17AF8);
  }

  sub_1CEFDA0C4(v12, v17, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
  v24 = *(*&v17[*(v13 + 28)] + 16);
  v25 = v31;
  v26 = v32;
  sub_1CF86CEBC(v24 != 0);
  if (v26)
  {

    v27 = 2;
  }

  else
  {
    v27 = v24 != 0;
  }

  v17[*(v13 + 48)] = v27;
  v28 = v30;
  sub_1CEFDA34C(v17, v30, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
  (*(v14 + 56))(v28, 0, 1, v13);
  v29 = v20[401];
  swift_beginAccess();
  sub_1CEFDA9E0(v28, v25 + v29, &qword_1EC4C49F8, &qword_1CFA17AF8);
  swift_endAccess();
  return sub_1CEFD5338(v17, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
}

uint64_t sub_1CF86E99C(void *a1, void *a2, void *a3)
{
  v6 = sub_1CF9E6118();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = 0;
  v35 = 0xE000000000000000;
  sub_1CF9E7948();
  v11 = [a2 providerDomainID];
  v12 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v14 = v13;

  v34 = v12;
  v35 = v14;
  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA5D2A0);
  v16 = v34;
  v15 = v35;
  v17 = sub_1CF9E6888();
  v18 = [v17 fp_libnotifyPerUserNotificationName];

  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v19 = sub_1CF9E6978();

  notify_post((v19 + 32));

  v20 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v21 = sub_1CF9E6108();
  v22 = sub_1CF9E7298();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v33[0] = a3;
    v25 = v6;
    v26 = a1;
    v27 = v24;
    v34 = v24;
    *v23 = 136315138;
    v28 = sub_1CEFD0DF0(v16, v15, &v34);

    *(v23 + 4) = v28;
    _os_log_impl(&dword_1CEFC7000, v21, v22, "sending notification %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    v29 = v27;
    a1 = v26;
    MEMORY[0x1D386CDC0](v29, -1, -1);
    MEMORY[0x1D386CDC0](v23, -1, -1);

    v30 = v25;
    a3 = v33[0];
    (*(v7 + 8))(v10, v30);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  v31 = objc_sync_enter(a3);
  if (v31)
  {
    MEMORY[0x1EEE9AC00](v31);
    v33[-2] = a3;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v33[-4], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  sub_1CF86ED94(a3, a1);
  result = objc_sync_exit(a3);
  if (result)
  {
    MEMORY[0x1EEE9AC00](result);
    v33[-2] = a3;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v33[-4], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return result;
}

void sub_1CF86ED94(void *a1, void *a2)
{
  v109 = a2;
  v111[6] = *MEMORY[0x1E69E9840];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v105 = &v90 - v5;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v6 = *(*(v100 - 8) + 64);
  MEMORY[0x1EEE9AC00](v100);
  v99 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v98 = &v90 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v96 = (&v90 - v11);
  v12 = sub_1CF9E6118();
  v103 = *(v12 - 8);
  v104 = v12;
  v13 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v106 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FPDDomainFPFSBackend.PendingSetState(0);
  v16 = *(v15 - 1);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C49F8, &qword_1CFA17AF8);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v102 = &v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v97 = &v90 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v95 = &v90 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v90 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v90 - v31;
  v33 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pendingSetState;
  v108 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pendingSetState;
  swift_beginAccess();
  v107 = a1;
  sub_1CEFCCBDC(a1 + v33, v32, &qword_1EC4C49F8, &qword_1CFA17AF8);
  v101 = v16;
  v34 = *(v16 + 48);
  v35 = v34(v32, 1, v15);
  v94 = v19;
  if (v35)
  {
    sub_1CEFCCC44(v32, &qword_1EC4C49F8, &qword_1CFA17AF8);
    if (v109)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v36 = v109;
    sub_1CEFDA34C(v32, v19, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
    sub_1CEFCCC44(v32, &qword_1EC4C49F8, &qword_1CFA17AF8);
    v37 = sub_1CF827C04();
    sub_1CEFD5338(v19, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
    if ((v37 & 1) != 0 || v36)
    {
      goto LABEL_22;
    }
  }

  v38 = fpfs_current_or_default_log();
  v39 = v106;
  sub_1CF9E6128();
  v40 = v107;
  v41 = v107;
  v42 = sub_1CF9E6108();
  v43 = sub_1CF9E7298();
  v109 = v41;

  v93 = v43;
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v111[0] = v92;
    *v44 = 136315650;
    sub_1CEFCCBDC(v40 + v108, v29, &qword_1EC4C49F8, &qword_1CFA17AF8);
    v45 = v34;
    if (v34(v29, 1, v15))
    {
      sub_1CEFCCC44(v29, &qword_1EC4C49F8, &qword_1CFA17AF8);
      v46 = sub_1CF9E5CF8();
      (*(*(v46 - 8) + 56))(v96, 1, 1, v46);
    }

    else
    {
      v49 = v15[13];
      v50 = sub_1CF9E5CF8();
      v51 = *(v50 - 8);
      v52 = &v29[v49];
      v53 = v96;
      (*(v51 + 16))(v96, v52, v50);
      sub_1CEFCCC44(v29, &qword_1EC4C49F8, &qword_1CFA17AF8);
      (*(v51 + 56))(v53, 0, 1, v50);
    }

    v96 = v42;
    v54 = sub_1CF9E6948();
    v56 = sub_1CEFD0DF0(v54, v55, v111);

    *(v44 + 4) = v56;
    *(v44 + 12) = 2080;
    v40 = v107;
    v57 = v95;
    sub_1CEFCCBDC(v107 + v108, v95, &qword_1EC4C49F8, &qword_1CFA17AF8);
    v58 = v45(v57, 1, v15);
    v91 = v45;
    if (v58)
    {
      sub_1CEFCCC44(v57, &qword_1EC4C49F8, &qword_1CFA17AF8);
      v59 = sub_1CF9E5CF8();
      (*(*(v59 - 8) + 56))(v98, 1, 1, v59);
    }

    else
    {
      v60 = v94;
      sub_1CEFDA34C(v57, v94, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
      sub_1CEFCCC44(v57, &qword_1EC4C49F8, &qword_1CFA17AF8);
      v61 = v15[5];
      v62 = sub_1CF9E5CF8();
      v63 = *(v62 - 8);
      v64 = v60 + v61;
      v65 = v98;
      (*(v63 + 16))(v98, v64, v62);
      sub_1CEFD5338(v60, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
      (*(v63 + 56))(v65, 0, 1, v62);
      v40 = v107;
    }

    v66 = sub_1CF9E6948();
    v68 = sub_1CEFD0DF0(v66, v67, v111);

    *(v44 + 14) = v68;
    *(v44 + 22) = 2080;
    v47 = v108;
    v69 = v97;
    sub_1CEFCCBDC(v40 + v108, v97, &qword_1EC4C49F8, &qword_1CFA17AF8);
    if (v91(v69, 1, v15))
    {
      sub_1CEFCCC44(v69, &qword_1EC4C49F8, &qword_1CFA17AF8);
      v70 = sub_1CF9E5CF8();
      (*(*(v70 - 8) + 56))(v99, 1, 1, v70);
    }

    else
    {
      v71 = v94;
      sub_1CEFDA34C(v69, v94, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
      sub_1CEFCCC44(v69, &qword_1EC4C49F8, &qword_1CFA17AF8);
      sub_1CEFCCBDC(v71 + v15[6], v99, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      sub_1CEFD5338(v71, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
    }

    v48 = v105;
    v72 = sub_1CF9E6948();
    v74 = sub_1CEFD0DF0(v72, v73, v111);

    *(v44 + 24) = v74;
    v75 = v96;
    _os_log_impl(&dword_1CEFC7000, v96, v93, "Notifications from the pending set got ignored, stopping it, last enumeration: %s, refresh date: %s (previous: %s", v44, 0x20u);
    v76 = v92;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v76, -1, -1);
    MEMORY[0x1D386CDC0](v44, -1, -1);

    (*(v103 + 8))(v106, v104);
  }

  else
  {
    v47 = v108;

    (*(v103 + 8))(v39, v104);
    v48 = v105;
  }

  v77 = v102;
  (*(v101 + 56))(v102, 1, 1, v15);
  swift_beginAccess();
  sub_1CEFDA9E0(v77, v40 + v47, &qword_1EC4C49F8, &qword_1CFA17AF8);
  swift_endAccess();
  v78 = [objc_opt_self() defaultManager];
  v79 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pendingSetStateURL;
  v80 = v109;
  swift_beginAccess();
  sub_1CEFCCBDC(v80 + v79, v48, &unk_1EC4BE310, qword_1CF9FCBE0);
  v81 = sub_1CF9E5A58();
  v82 = *(v81 - 8);
  if ((*(v82 + 48))(v48, 1, v81) == 1)
  {
    __break(1u);
    return;
  }

  v83 = sub_1CF9E5928();
  (*(v82 + 8))(v48, v81);
  v110 = 0;
  v84 = [v78 removeItemAtURL:v83 error:&v110];

  if (v84)
  {
    v85 = v110;
    v86 = *MEMORY[0x1E69E9840];
    return;
  }

  v87 = v110;
  v88 = sub_1CF9E57F8();

  swift_willThrow();
LABEL_22:
  v89 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1CF86F980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, double a6)
{
  v12 = type metadata accessor for FPDDomainFPFSBackend.PendingSetState(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 16);
  sub_1CEFDA34C(a4, v15, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v18 = (v14 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  *(v19 + 24) = a6;
  sub_1CEFDA0C4(v15, v19 + v17, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
  *(v19 + v18) = a5;
  v20 = (v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v20 = a2;
  v20[1] = a3;
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = a3;
  swift_retain_n();

  v22 = a5;
  sub_1CF7AAF88("checkForPendingSetChanges(completionHandler:)", 45, 2, 2, sub_1CF9034B8, v21, sub_1CF8F9414, v19);
}

uint64_t sub_1CF86FB6C(double a1, uint64_t a2, void **a3, uint64_t a4, char *a5, void (*a6)(uint64_t), uint64_t a7)
{
  v151 = a7;
  v156 = a5;
  v157 = a6;
  v160 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C49F8, &qword_1CFA17AF8);
  v145 = *(v9 - 8);
  v10 = *(v145 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v147 = &v137 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v154 = &v137 - v13;
  v161 = type metadata accessor for FPDDomainFPFSBackend.PendingSetState(0);
  v149 = *(v161 - 8);
  v14 = *(v149 + 64);
  MEMORY[0x1EEE9AC00](v161);
  v164 = &v137 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v166 = &v137 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v155 = &v137 - v19;
  v162 = sub_1CF9E6118();
  v20 = *(v162 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v162);
  v150 = &v137 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v148 = &v137 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v137 - v26;
  v168 = sub_1CF9E5CF8();
  v28 = *(v168 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v168);
  v167 = &v137 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v137 - v32;
  v152 = a3;
  v34 = a3[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4830, &unk_1CFA052E0);
  v163 = swift_dynamicCastClassUnconditional();
  v158 = v34;

  sub_1CF9E5CE8();
  v35 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v36 = sub_1CF9E6108();
  v37 = sub_1CF9E7298();
  v38 = os_log_type_enabled(v36, v37);
  v165 = v33;
  if (v38)
  {
    v39 = swift_slowAlloc();
    *v39 = 134217984;
    *(v39 + 4) = a1;
    _os_log_impl(&dword_1CEFC7000, v36, v37, "Going full rescan for pending items after %f", v39, 0xCu);
    v33 = v165;
    MEMORY[0x1D386CDC0](v39, -1, -1);
  }

  v41 = *(v20 + 8);
  v40 = v20 + 8;
  v153 = v41;
  v41(v27, v162);
  v42 = v166;
  sub_1CEFDA34C(v160, v166, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
  v43 = *(v28 + 16);
  v44 = v167;
  v45 = v168;
  v43(v167, v33, v168);
  v46 = v159;
  v47 = sub_1CF7F6F74();
  if (v46)
  {

    v48 = *(v28 + 8);
    v48(v44, v45);
    v48(v33, v45);
    return sub_1CEFD5338(v42, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
  }

  v159 = v47;
  v143 = v43;
  v144 = v28 + 16;
  v141 = v40;
  v50 = v152;
  v51 = objc_sync_enter(v152);
  if (v51)
  {
    goto LABEL_55;
  }

  v140 = 0;
  v139 = *(v50 + qword_1EDEADB30);
  v138 = v139;
  v52 = objc_sync_exit(v50);
  v53 = v168;
  if (v52)
  {
    MEMORY[0x1EEE9AC00](v52);
    *(&v137 - 2) = v50;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v137 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v54 = v28;
  LODWORD(v163) = *(v163 + 96);
  v55 = sub_1CF9E5D98();
  v56 = v164;
  (*(*(v55 - 8) + 16))(v164, v42, v55);
  v57 = v161;
  v58 = v143;
  v143(&v56[*(v161 + 20)], v167, v53);
  v59 = v57[6];
  v58(&v56[v59], v42 + v57[5], v53);
  (*(v28 + 56))(&v56[v59], 0, 1, v53);
  *&v56[v57[7]] = v159;

  v61 = sub_1CF8E4764(v60);
  v50 = *(v42 + v57[7]);
  v62 = sub_1CF8E2944(v50, v61);
  v63 = v62;
  v64 = *(v62 + 16);
  if (v64)
  {
    v65 = sub_1CF1F8CE8(*(v62 + 16), 0);
    v66 = sub_1CF1FA388(&v169, (v65 + 4), v64, v63);
    v51 = sub_1CEFCB59C();
    if (v66 == v64)
    {
      v54 = v28;
      v67 = v165;
      v68 = v161;
      v69 = v156;
      goto LABEL_11;
    }

    __break(1u);
LABEL_55:
    MEMORY[0x1EEE9AC00](v51);
    *(&v137 - 2) = v50;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v137 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v65 = MEMORY[0x1E69E7CC0];
  v68 = v161;
  v69 = v156;
  v67 = v33;
LABEL_11:
  v70 = v159;
  *&v164[*(v68 + 32)] = v65;
  v71 = v50[2];
  v72 = MEMORY[0x1E69E7CC0];
  v142 = v54;
  if (v71)
  {
    v73 = v69;
    v169 = MEMORY[0x1E69E7CC0];
    sub_1CF680D2C(0, v71, 0);
    v72 = v169;
    v74 = v50 + 4;
    do
    {
      v75 = *v74;
      v169 = v72;
      v77 = *(v72 + 16);
      v76 = *(v72 + 24);
      v78 = v75;
      if (v77 >= v76 >> 1)
      {
        v79 = v76 > 1;
        v80 = v78;
        sub_1CF680D2C(v79, v77 + 1, 1);
        v78 = v80;
        v72 = v169;
      }

      *(v72 + 16) = v77 + 1;
      *(v72 + 8 * v77 + 32) = v78;
      v74 += 3;
      --v71;
    }

    while (v71);
    v69 = v73;
    v53 = v168;
    v54 = v142;
    v67 = v165;
  }

  v81 = sub_1CF8E4840(v72);

  v82 = *(v70 + 16);
  if (v82)
  {
    v169 = MEMORY[0x1E69E7CC0];
    sub_1CF680D2C(0, v82, 0);
    v83 = 32;
    v84 = v169;
    do
    {
      v85 = *(v70 + v83);
      v169 = v84;
      v86 = *(v84 + 16);
      v87 = *(v84 + 24);
      v88 = v85;
      if (v86 >= v87 >> 1)
      {
        sub_1CF680D2C((v87 > 1), v86 + 1, 1);
        v84 = v169;
      }

      *(v84 + 16) = v86 + 1;
      *(v84 + 8 * v86 + 32) = v88;
      v83 += 24;
      --v82;
    }

    while (v82);

    v69 = v156;
    v53 = v168;
    v54 = v142;
    v67 = v165;
  }

  else
  {

    v84 = MEMORY[0x1E69E7CC0];
  }

  v89 = sub_1CF8E23D0(v84, v81);

  v90 = *(v89 + 16);
  v91 = v161;
  if (!v90)
  {
    goto LABEL_27;
  }

  v92 = sub_1CF1F8AC0(*(v89 + 16), 0);
  v93 = sub_1CF1FA234(&v169, v92 + 4, v90, v89);
  sub_1CEFCB59C();
  if (v93 != v90)
  {
    __break(1u);
LABEL_27:

    v92 = MEMORY[0x1E69E7CC0];
  }

  v94 = v164;
  *&v164[v91[9]] = v92;
  v95 = v139;
  *&v94[v91[10]] = v139;
  v96 = *(v166 + v91[10]);
  if (v95)
  {
    if (v96)
    {
      sub_1CEFD57E0(0, &qword_1EDEAB580, 0x1E69674E0);
      v97 = v138;
      v98 = v96;
      v99 = sub_1CF9E7568();
      v100 = v167;
      v167 = *(v54 + 8);
      (v167)(v100, v53);

      v101 = v99 ^ 1;
    }

    else
    {
      v105 = v167;
      v167 = *(v54 + 8);
      (v167)(v105, v53);
      v101 = 1;
    }

    v106 = v143;
  }

  else
  {
    v102 = *(v54 + 8);
    v103 = v96;
    v104 = v167;
    v167 = v102;
    (v102)(v104, v53);
    if (v96)
    {

      v101 = 1;
    }

    else
    {
      v101 = 0;
    }

    v106 = v143;
    v67 = v165;
  }

  v107 = v91[12];
  v108 = v164;
  v164[v91[11]] = v101 & 1;
  *(v108 + v107) = 2;
  v109 = v166;
  v106(v108 + v91[13], v166 + v91[13], v53);
  sub_1CEFD5338(v109, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
  *(v108 + v91[14]) = v163;
  v110 = v155;
  v111 = sub_1CEFDA0C4(v108, v155, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
  v112 = v157;
  if (*(*(v110 + v91[9]) + 16) || *(*(v110 + v91[8]) + 16) || (v113 = v91[11], (*(v110 + v113) & 1) != 0) || (*(v160 + v113) & 1) != 0 || (v136 = v91[14], (*(v160 + v136) & 1) == 0) && *(v110 + v136) == 1)
  {
    v114 = fpfs_current_or_default_log();
    v115 = v148;
    sub_1CF9E6128();
    v116 = sub_1CF9E6108();
    v117 = sub_1CF9E7298();
    if (os_log_type_enabled(v116, v117))
    {
      v118 = swift_slowAlloc();
      *v118 = 0;
      _os_log_impl(&dword_1CEFC7000, v116, v117, "Pending set updates found, notifying", v118, 2u);
      MEMORY[0x1D386CDC0](v118, -1, -1);
    }

    v119 = v115;
    v120 = v162;
    v153(v119, v162);
    v121 = v154;
    if (*(v110 + v91[11]) == 1)
    {
      v122 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v123 = sub_1CF9E6108();
      v124 = sub_1CF9E7298();
      if (os_log_type_enabled(v123, v124))
      {
        v125 = swift_slowAlloc();
        *v125 = 0;
        _os_log_impl(&dword_1CEFC7000, v123, v124, "Will force a second notify due to domain version change", v125, 2u);
        MEMORY[0x1D386CDC0](v125, -1, -1);
      }

      v153(v150, v120);
    }

    sub_1CEFDA34C(v110, v121, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
    (*(v149 + 56))(v121, 0, 1, v91);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v127 = Strong;
      v166 = *&v69[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pendingSetWatchingQueue];
      v128 = v69;
      v129 = v147;
      sub_1CEFCCBDC(v121, v147, &qword_1EC4C49F8, &qword_1CFA17AF8);
      v130 = (*(v145 + 80) + 24) & ~*(v145 + 80);
      v131 = (v146 + v130 + 7) & 0xFFFFFFFFFFFFFFF8;
      v132 = swift_allocObject();
      *(v132 + 16) = v128;
      v133 = v132 + v130;
      v121 = v154;
      sub_1CEFE55D0(v129, v133, &qword_1EC4C49F8, &qword_1CFA17AF8);
      *(v132 + v131) = v127;
      v134 = v128;
      v135 = v127;
      sub_1CF01001C(0, "sendPendingSetNotification(newState:)", 37, 2, sub_1CF902D88, v132);

      v110 = v155;
    }

    v111 = sub_1CEFCCC44(v121, &qword_1EC4C49F8, &qword_1CFA17AF8);
    v112 = v157;
    v53 = v168;
    v67 = v165;
  }

  v112(v111);

  (v167)(v67, v53);
  return sub_1CEFD5338(v110, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
}

uint64_t FPDDomainFPFSBackend.state(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  swift_retain_n();
  sub_1CEFD4024("state(completionHandler:)", 25, 2, sub_1CF8F0D4C, v4, sub_1CF8F0D70, v5);
}

uint64_t sub_1CF870B1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  swift_retain_n();

  sub_1CF7AAF88("state(completionHandler:)", 25, 2, 2, sub_1CF8FFECC, v7, sub_1CF8FFEF0, v8);
}

uint64_t sub_1CF870C0C(void *a1, uint64_t (*a2)(void, void), const char *a3, const char *a4)
{
  v8 = sub_1CF9E6118();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v14 = a1;
  v15 = sub_1CF9E6108();
  v16 = sub_1CF9E72A8();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v25[0] = a4;
    v18 = v17;
    v19 = swift_slowAlloc();
    v25[1] = a3;
    v20 = a2;
    v21 = v19;
    *v18 = 138412290;
    swift_getErrorValue();
    v22 = Error.prettyDescription.getter(v25[3]);
    *(v18 + 4) = v22;
    *v21 = v22;
    _os_log_impl(&dword_1CEFC7000, v15, v16, v25[0], v18, 0xCu);
    sub_1CEFCCC44(v21, &qword_1EC4BE350, &unk_1CF9FC3B0);
    v23 = v21;
    a2 = v20;
    MEMORY[0x1D386CDC0](v23, -1, -1);
    MEMORY[0x1D386CDC0](v18, -1, -1);
  }

  (*(v9 + 8))(v12, v8);
  return a2(0, a1);
}

uint64_t sub_1CF870E0C(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t, void))
{
  v6 = a1[3];
  v7 = a1[4];
  v8 = __swift_project_boxed_opaque_existential_1(a1, v6);
  v9 = *(a2 + 16);
  result = sub_1CF5B901C(0, v8, v6, v7);
  if (!v3)
  {
    if (result)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    return a3(v11, 0);
  }

  return result;
}

uint64_t FPDDomainFPFSBackend.wakeForPush(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = a1;
  v6[4] = a2;
  swift_retain_n();
  v7 = v2;
  sub_1CEFD4024("wakeForPush(completionHandler:)", 31, 2, sub_1CF90324C, v5, sub_1CF8F0D78, v6);
}

void sub_1CF8710B4(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v7 = Strong, v8 = [Strong extensionBackend], v7, v8))
  {
    v11[4] = a3;
    v11[5] = a4;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = sub_1CF00A468;
    v11[3] = &block_descriptor_5070;
    v9 = _Block_copy(v11);

    [v8 wakeForPushWithCompletionHandler_];
    _Block_release(v9);
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = sub_1CF8403B4();
    a3();
  }
}

uint64_t FPDDomainFPFSBackend.didChange(_:completionHandler:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *&v3[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue];
  v8 = *&v3[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_log];
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = v3;
  v9[4] = a2;
  v9[5] = a3;
  v10 = a1;
  v11 = v3;

  sub_1CF01001C(v8, "didChange(_:completionHandler:)", 31, 2, sub_1CF8F0D84, v9);
}

void sub_1CF871410(void *a1, uint64_t a2, void (*a3)(uint64_t), void *a4)
{
  v60[1] = a4;
  v61 = a3;
  v70 = sub_1CF9E6118();
  v5 = *(v70 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v8 = v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v62 = v60 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v60 - v12;
  v14 = [objc_allocWithZone(FPLoggerScope) init];
  v15 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v16 = v14;
  v17 = a1;
  v18 = sub_1CF9E6108();
  v19 = sub_1CF9E7298();
  v65 = v17;

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412546;
    v22 = [v16 enter];
    *(v20 + 4) = v22;
    *(v20 + 12) = 2112;
    v23 = v65;
    *(v20 + 14) = v65;
    *v21 = v22;
    v21[1] = v23;
    v24 = v23;
    _os_log_impl(&dword_1CEFC7000, v18, v19, "%@ 📖  item %@ changed", v20, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE350, &unk_1CF9FC3B0);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v21, -1, -1);
    MEMORY[0x1D386CDC0](v20, -1, -1);
  }

  v60[0] = v16;

  v69 = *(v5 + 8);
  v25 = v5 + 8;
  v69(v13, v70);
  v26 = sub_1CF0878B4();
  v28 = v65;
  v71 = v26[2];
  v72 = v26;
  if (v71)
  {
    v29 = 0;
    v30 = v72 + 5;
    *&v27 = 136315138;
    v63 = v27;
    v64 = v8;
    while (v29 < v72[2])
    {
      v31 = *(v30 - 1);
      v32 = *v30;
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      v34 = [v28 identifier];
      v35 = *(v32 + 16);
      v73 = ObjectType;
      v36 = v35();

      if (v36)
      {
        v37 = objc_autoreleasePoolPush();
        v38 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        swift_unknownObjectRetain();
        v39 = sub_1CF9E6108();
        v40 = sub_1CF9E7298();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v66 = v40;
          v42 = v41;
          v67 = swift_slowAlloc();
          v74 = v67;
          *v42 = v63;
          v43 = [v31 description];
          v68 = v37;
          v44 = v43;
          v45 = v25;
          v46 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v48 = v47;

          v49 = sub_1CEFD0DF0(v46, v48, &v74);
          v8 = v64;

          *(v42 + 4) = v49;
          v37 = v68;
          _os_log_impl(&dword_1CEFC7000, v39, v66, "notifying %s", v42, 0xCu);
          v50 = v67;
          __swift_destroy_boxed_opaque_existential_1(v67);
          MEMORY[0x1D386CDC0](v50, -1, -1);
          MEMORY[0x1D386CDC0](v42, -1, -1);

          v25 = v45;
          v69(v8, v70);
          v28 = v65;
        }

        else
        {

          v69(v8, v70);
        }

        [(*(v32 + 8))(v73 v32)];
        swift_unknownObjectRelease();
        objc_autoreleasePoolPop(v37);
      }

      ++v29;
      swift_unknownObjectRelease();
      v30 += 2;
      if (v71 == v29)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:

    v61(v51);
    v52 = fpfs_current_or_default_log();
    v53 = v62;
    sub_1CF9E6128();
    v54 = v60[0];
    v55 = sub_1CF9E6108();
    v56 = sub_1CF9E7298();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *v57 = 138412290;
      v59 = [v54 leave];
      *(v57 + 4) = v59;
      *v58 = v59;
      _os_log_impl(&dword_1CEFC7000, v55, v56, "%@", v57, 0xCu);
      sub_1CEFCCC44(v58, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v58, -1, -1);
      MEMORY[0x1D386CDC0](v57, -1, -1);
    }

    v69(v53, v70);
  }
}

uint64_t FPDDomainFPFSBackend.workingSetDidChange(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  swift_retain_n();
  sub_1CEFD4024("workingSetDidChange(completionHandler:)", 39, 2, sub_1CF90324C, v4, sub_1CF03C570, v5);
}

uint64_t sub_1CF871C0C(void *a1, uint64_t a2)
{
  v4 = objc_sync_enter(a1);
  if (v4)
  {
    MEMORY[0x1EEE9AC00](v4);
    v7 = a1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v6, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v8 = xmmword_1CF9FC980;
  swift_beginAccess();
  sub_1CF1C9EE0(&v8, a2);
  swift_endAccess();
  result = objc_sync_exit(a1);
  if (result)
  {
    MEMORY[0x1EEE9AC00](result);
    v7 = a1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v6, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return result;
}

void FPDDomainFPFSBackend.enumerate(with:lifetimeExtender:observer:completionHandler:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void, id), uint64_t a5)
{
  v11 = sub_1CF9E6118();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  *&v14 = MEMORY[0x1EEE9AC00](v11).n128_u64[0];
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a1 searchQuery];
  if (v17)
  {
    v18 = v17;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v20 = Strong;
      v21 = [Strong extensionBackend];
      v22 = swift_allocObject();
      v22[2] = a4;
      v22[3] = a5;
      v22[4] = a2;
      v22[5] = a3;
      v22[6] = v5;
      v22[7] = v18;
      aBlock[4] = sub_1CF8F0DC0;
      aBlock[5] = v22;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1CF03FCFC;
      aBlock[3] = &block_descriptor_219;
      v23 = _Block_copy(aBlock);

      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v24 = v5;
      v25 = v18;

      [v21 enumerateWithSettings:a1 lifetimeExtender:a2 observer:a3 completionHandler:v23];

      _Block_release(v23);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = a4;
      v43 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v44 = sub_1CF9E6108();
      v45 = sub_1CF9E72A8();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_1CEFC7000, v44, v45, "Missing domain in enumerateWithSettings for search", v46, 2u);
        MEMORY[0x1D386CDC0](v46, -1, -1);
      }

      (*(v12 + 8))(v16, v11);
      v47 = FPNotSupportedError();
      v42(0, v47);
    }

    return;
  }

  v50 = a4;
  v26 = [a1 enumeratedItemID];
  v27 = [v26 identifier];
  v28 = *MEMORY[0x1E6967298];
  v29 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v31 = v30;
  if (v29 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v31 == v32)
  {
  }

  else
  {
    v34 = sub_1CF9E8048();

    if ((v34 & 1) == 0)
    {
      v35 = swift_allocObject();
      v36 = v50;
      *(v35 + 16) = v50;
      *(v35 + 24) = a5;
      v37 = swift_allocObject();
      v37[2] = v36;
      v37[3] = a5;
      v37[4] = a1;
      v37[5] = v26;
      v37[6] = a2;
      v37[7] = a3;
      v37[8] = v5;
      v38 = swift_allocObject();
      *(v38 + 16) = sub_1CF8F0D90;
      *(v38 + 24) = v35;
      swift_retain_n();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v39 = v5;
      v40 = a1;
      v41 = v26;

      sub_1CEFD4024("enumerate(with:lifetimeExtender:observer:completionHandler:)", 60, 2, sub_1CF903280, v38, sub_1CF8F0DBC, v37);

      return;
    }
  }

  v49 = FPNotSupportedError();
  v50(0, v49);

  v48 = v49;
}

uint64_t sub_1CF872260(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, uint64_t a7, unint64_t a8)
{
  v185 = a8;
  v166 = a7;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFB10, &unk_1CFA12AD0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v168 = &v162 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4C1588, &unk_1CFA0A260);
  v169 = *(v17 - 8);
  v18 = v169[8];
  MEMORY[0x1EEE9AC00](v17 - 8);
  v172 = &v162 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v170 = &v162 - v21;
  v171 = v22;
  MEMORY[0x1EEE9AC00](v23);
  v182 = &v162 - v24;
  v25 = sub_1CF9E6118();
  v184 = *(v25 - 8);
  v26 = *(v184 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v174 = &v162 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v176 = &v162 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v162 - v31;
  v33 = swift_allocObject();
  *(v33 + 16) = a2;
  *(v33 + 24) = a3;
  v34 = swift_allocObject();
  swift_weakInit();
  v35 = swift_allocObject();
  v35[2] = sub_1CF90325C;
  v35[3] = v33;
  v35[4] = v34;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_1CF8FF414;
  *(v36 + 24) = v35;

  v164 = a4;
  LODWORD(v175) = [a4 buildAndFilterAppLibraries];
  v37 = [a5 identifier];
  v38 = swift_allocObject();
  *(v38 + 16) = v37;
  v39 = v37;
  v165 = a6;
  *(v38 + 24) = [objc_opt_self() requestForPID_];
  v40 = v38 | 0x1000000000000000;
  v41 = v39;
  v181 = sub_1CEFD4E9C(v41);
  v42 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v183 = v32;
  v43 = sub_1CF9E6108();
  v44 = sub_1CF9E7298();
  v179 = v38;
  v45 = v184;

  v46 = os_log_type_enabled(v43, v44);
  v180 = v25;
  if (v46)
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v189 = v48;
    *v47 = 136315138;
    v49 = sub_1CEFD11AC(v38 | 0x1000000000000000);
    v51 = sub_1CEFD0DF0(v49, v50, &v189);

    *(v47 + 4) = v51;
    v40 = v38 | 0x1000000000000000;
    _os_log_impl(&dword_1CEFC7000, v43, v44, "Request to enumerate with settings %s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v48);
    MEMORY[0x1D386CDC0](v48, -1, -1);
    MEMORY[0x1D386CDC0](v47, -1, -1);

    v52 = v183;
    v53 = *(v184 + 8);
    v54 = v180;
  }

  else
  {

    v53 = *(v45 + 8);
    v52 = v183;
    v54 = v25;
  }

  v177 = v53;
  v53(v52, v54);
  v183 = *(a1 + 16);
  v55 = v181;
  swift_beginAccess();
  v56 = *(v55 + 40);
  v163 = *(v55 + 41);
  v162 = v56 == -1;
  v167 = [objc_allocWithZone(MEMORY[0x1E696AE38]) init];
  v57 = swift_allocObject();
  *(v57 + 16) = sub_1CF8FF2D8;
  *(v57 + 24) = v36;
  *(v57 + 32) = v40;
  v58 = v40;
  v59 = v164;
  *(v57 + 40) = v164;
  *(v57 + 48) = a1;
  v60 = v165;
  *(v57 + 56) = v41;
  *(v57 + 64) = v60;
  v61 = v185;
  *(v57 + 72) = v166;
  *(v57 + 80) = v61;
  v178 = v57;
  *(v57 + 88) = v175;
  v173 = v41;

  v175 = v36;

  v62 = v59;

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v63 = v61;
  v64 = fpfs_current_or_default_log();
  v65 = v176;
  sub_1CF9E6128();
  swift_retain_n();

  v66 = sub_1CF9E6108();
  v67 = sub_1CF9E7298();
  v68 = os_log_type_enabled(v66, v67);
  v69 = v182;
  v185 = v58;
  if (v68)
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v73 = v71;
    v188 = v71;
    *v70 = 136315394;
    v74 = *(v55 + 32);
    v75 = *(v55 + 40);
    if (*(v55 + 41))
    {
      v76 = v74;
      v77 = NSFileProviderItemIdentifier.description.getter();
      v79 = v78;
      sub_1CEFD0994(v74, v75, 1);
    }

    else
    {
      v186 = *(v55 + 32);
      v187 = v75;
      v77 = VFSItemID.description.getter(v71, v72);
      v79 = v81;
    }

    v82 = sub_1CEFD0DF0(v77, v79, &v188);

    *(v70 + 4) = v82;
    *(v70 + 12) = 2080;
    v83 = sub_1CEFD11AC(v185);
    v85 = v84;

    v86 = sub_1CEFD0DF0(v83, v85, &v188);

    *(v70 + 14) = v86;
    _os_log_impl(&dword_1CEFC7000, v66, v67, "Request to materialize content of itemID %s reason %s", v70, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v73, -1, -1);
    MEMORY[0x1D386CDC0](v70, -1, -1);

    v177(v176, v180);
    v80 = v168;
    v69 = v182;
  }

  else
  {

    v177(v65, v180);
    v80 = v168;
  }

  LODWORD(v176) = v163 | v162;
  sub_1CEFCCBDC(&v183[qword_1EDEBBC18], v80, &qword_1EC4BFB10, &unk_1CFA12AD0);
  v87 = type metadata accessor for TelemetrySignposter(0);
  if ((*(*(v87 - 8) + 48))(v80, 1, v87) == 1)
  {
    sub_1CEFCCC44(v80, &qword_1EC4BFB10, &unk_1CFA12AD0);
    v88 = 1;
  }

  else
  {
    sub_1CF519DE8(0, v69);
    sub_1CEFD5338(v80, type metadata accessor for TelemetrySignposter);
    v88 = 0;
  }

  v89 = type metadata accessor for TelemetrySignpost(0);
  (*(*(v89 - 8) + 56))(v69, v88, 1, v89);
  v90 = v170;
  sub_1CEFCCBDC(v69, v170, qword_1EC4C1588, &unk_1CFA0A260);
  v91 = *(v169 + 80);
  v92 = (v91 + 16) & ~v91;
  v93 = v171;
  v94 = (v171 + v92 + 7) & 0xFFFFFFFFFFFFFFF8;
  v95 = swift_allocObject();
  sub_1CEFE55D0(v90, v95 + v92, qword_1EC4C1588, &unk_1CFA0A260);
  v96 = (v95 + v94);
  v97 = v178;
  *v96 = sub_1CF8FF424;
  v96[1] = v97;
  v98 = v172;
  sub_1CEFCCBDC(v69, v172, qword_1EC4C1588, &unk_1CFA0A260);
  v99 = (v91 + 24) & ~v91;
  v170 = (v99 + v93 + 7) & 0xFFFFFFFFFFFFFFF8;
  v100 = (v99 + v93 + 31) & 0xFFFFFFFFFFFFFFF8;
  v171 = (v100 + 15) & 0xFFFFFFFFFFFFFFF8;
  v101 = (v100 + 31) & 0xFFFFFFFFFFFFFFF8;
  v102 = (v101 + 15) & 0xFFFFFFFFFFFFFFF8;
  v103 = (v102 + 15) & 0xFFFFFFFFFFFFFFF8;
  v104 = swift_allocObject();
  *(v104 + 16) = v185;
  sub_1CEFE55D0(v98, v104 + v99, qword_1EC4C1588, &unk_1CFA0A260);
  v105 = v104 + v170;
  *v105 = sub_1CF8FF424;
  *(v105 + 8) = v97;
  v106 = (v176 & 1) == 0;
  *(v105 + 16) = v176 & 1;
  *(v104 + v100) = v183;
  v107 = v104 + v171;
  v108 = v181;
  *v107 = v181;
  *(v107 + 8) = 1;
  *(v104 + v101) = 0;
  v109 = v167;
  *(v104 + v102) = v167;
  v110 = v108;
  v111 = v104 + v103;
  *v111 = sub_1CF903314;
  *(v111 + 8) = v95;
  *(v111 + 16) = 1;
  if (v106)
  {
    v112 = 1;
  }

  else
  {
    v112 = 2;
  }

  LODWORD(v166) = v112;
  v113 = objc_allocWithZone(MEMORY[0x1E696AE38]);
  swift_retain_n();

  v114 = v109;
  v172 = v95;

  v115 = [v113 init];
  v116 = swift_allocObject();
  v116[2] = sub_1CF903318;
  v116[3] = v104;
  v169 = v116;
  v116[4] = v185;
  swift_retain_n();
  v171 = v104;
  swift_retain_n();
  v117 = fpfs_current_or_default_log();
  v118 = v174;
  sub_1CF9E6128();
  swift_retain_n();

  v119 = sub_1CF9E6108();
  v120 = sub_1CF9E7298();
  v121 = os_log_type_enabled(v119, v120);
  v170 = v115;
  if (v121)
  {
    v168 = v114;
    v122 = swift_slowAlloc();
    v123 = swift_slowAlloc();
    v167 = v123;
    v188 = v123;
    *v122 = 136315906;
    v125 = *(v110 + 32);
    v126 = *(v110 + 40);
    if (*(v110 + 41))
    {
      v127 = v125;
      v128 = NSFileProviderItemIdentifier.description.getter();
      v130 = v129;
      sub_1CEFD0994(v125, v126, 1);
    }

    else
    {
      v186 = *(v110 + 32);
      v187 = v126;
      v128 = VFSItemID.description.getter(v123, v124);
      v130 = v131;
    }

    v132 = sub_1CEFD0DF0(v128, v130, &v188);

    *(v122 + 4) = v132;
    *(v122 + 12) = 2080;
    if (v176)
    {
      v133 = 0xD000000000000010;
    }

    else
    {
      v133 = 0x74616761706F7270;
    }

    if (v176)
    {
      v134 = 0x80000001CFA2C3C0;
    }

    else
    {
      v134 = 0xED000053466F5465;
    }

    v135 = sub_1CEFD0DF0(v133, v134, &v188);

    *(v122 + 14) = v135;
    *(v122 + 22) = 2080;
    v136 = sub_1CEFD11AC(v185);
    v138 = v137;

    v139 = sub_1CEFD0DF0(v136, v138, &v188);

    *(v122 + 24) = v139;
    *(v122 + 32) = 2048;
    *(v122 + 34) = 0;
    _os_log_impl(&dword_1CEFC7000, v119, v120, "Lookup itemID %s with behavior %s request %s iteration %ld", v122, 0x2Au);
    v140 = v167;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v140, -1, -1);
    MEMORY[0x1D386CDC0](v122, -1, -1);

    v177(v118, v180);
    v114 = v168;
  }

  else
  {

    v177(v118, v180);
  }

  v141 = v182;
  v142 = *(v110 + 32);
  v143 = *(v110 + 40);
  if ((*(v110 + 41) & 1) == 0)
  {
    if (!v142 && v143 == 2)
    {
      goto LABEL_36;
    }

    goto LABEL_38;
  }

  v144 = qword_1EDEA34B0;
  v145 = v142;
  if (v144 != -1)
  {
    swift_once();
  }

  v146 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v148 = v147;
  if (v146 != _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() || v148 != v149)
  {
    v151 = sub_1CF9E8048();

    sub_1CEFD0994(v142, v143, 1);
    v110 = v181;
    if (v151)
    {
      goto LABEL_36;
    }

LABEL_38:
    v152 = swift_allocObject();
    v153 = v185;
    *(v152 + 16) = v185;
    v154 = v152 | 0x7000000000000004;
    v155 = swift_allocObject();
    v156 = v169;
    *(v155 + 16) = sub_1CF796A0C;
    *(v155 + 24) = v156;
    v168 = v114;
    v157 = v183;
    *(v155 + 32) = v183;
    *(v155 + 40) = v166;
    *(v155 + 48) = v153;
    *(v155 + 56) = v110;
    *(v155 + 64) = 0;
    v150 = v170;
    *(v155 + 72) = v170;
    *(v155 + 80) = 0;
    v158 = swift_allocObject();
    *(v158 + 16) = v110;
    *(v158 + 24) = v157;
    *(v158 + 32) = 0;
    *(v158 + 40) = sub_1CF796A90;
    *(v158 + 48) = v155;
    *(v158 + 56) = v154;
    v159 = swift_allocObject();
    *(v159 + 16) = sub_1CF796A90;
    *(v159 + 24) = v155;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    v160 = v150;

    v114 = v168;
    sub_1CF7AAF88("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF554464, v159, sub_1CF796A9C, v158);

    v141 = v182;

    goto LABEL_39;
  }

  sub_1CEFD0994(v142, v143, 1);
LABEL_36:
  sub_1CF90CAC8(v185, sub_1CF796A0C, v169);

  v150 = v170;
LABEL_39:

  sub_1CEFCCC44(v141, qword_1EC4C1588, &unk_1CFA0A260);
}

void sub_1CF8733A8(uint64_t a1, void (*a2)(void, id), uint64_t a3, unint64_t a4, void *a5, uint64_t a6, void *a7, uint64_t a8, void (*a9)(void, id), uint64_t a10, unsigned __int8 a11)
{
  v276 = a8;
  v284 = a7;
  v285 = a6;
  v287 = a5;
  v288 = a3;
  v286 = a2;
  v311 = *MEMORY[0x1E69E9840];
  v13 = sub_1CF9E63D8();
  v255 = *(v13 - 8);
  v256 = v13;
  v14 = *(v255 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v254 = &v250 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v268 = &v250 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v273 = &v250 - v20;
  v21 = sub_1CF9E6068();
  v265 = *(v21 - 1);
  v266 = v21;
  v22 = *(v265 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v259 = &v250 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v261 = &v250 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v271 = &v250 - v28;
  v258 = type metadata accessor for Signpost(0);
  v262 = *(v258 - 8);
  v29 = *(v262 + 64);
  MEMORY[0x1EEE9AC00](v258);
  v267 = &v250 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v263 = v33;
  v264 = (&v250 - v32);
  MEMORY[0x1EEE9AC00](v34);
  v272 = &v250 - v35;
  v36 = sub_1CF9E6118();
  v281 = *(v36 - 8);
  v282 = v36;
  v37 = *(v281 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v274 = &v250 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v269 = &v250 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v250 - v42;
  v280 = type metadata accessor for VFSItem(0);
  v278 = *(v280 - 1);
  v44 = *(v278 + 64);
  MEMORY[0x1EEE9AC00](v280);
  v270 = &v250 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v275 = &v250 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v260 = &v250 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v257 = &v250 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v250 - v53;
  v279 = v55;
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v250 - v57;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
  v60 = *(*(v59 - 8) + 64);
  MEMORY[0x1EEE9AC00](v59);
  v62 = (&v250 - v61);
  sub_1CEFCCBDC(a1, &v250 - v61, &unk_1EC4BF300, &unk_1CFA006B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v63 = *v62;
    v64 = *v62;
    v286(0, v63);

    goto LABEL_64;
  }

  sub_1CEFDA0C4(v62, v58, type metadata accessor for VFSItem);
  v65 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v283 = v58;
  sub_1CEFDA34C(v58, v54, type metadata accessor for VFSItem);
  sub_1CEFD09A0(a4);
  v66 = sub_1CF9E6108();
  v67 = sub_1CF9E7298();
  sub_1CEFD0A98(a4);
  v68 = os_log_type_enabled(v66, v67);
  v277 = a4;
  if (v68)
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v293[0] = v70;
    *v69 = 136315394;
    v71 = sub_1CF255338();
    v73 = v72;
    sub_1CEFD5338(v54, type metadata accessor for VFSItem);
    v74 = sub_1CEFD0DF0(v71, v73, v293);

    *(v69 + 4) = v74;
    *(v69 + 12) = 2080;
    v75 = sub_1CEFD11AC(a4);
    v77 = sub_1CEFD0DF0(v75, v76, v293);

    *(v69 + 14) = v77;
    _os_log_impl(&dword_1CEFC7000, v66, v67, "Found item %s for request %s", v69, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v70, -1, -1);
    MEMORY[0x1D386CDC0](v69, -1, -1);
  }

  else
  {

    sub_1CEFD5338(v54, type metadata accessor for VFSItem);
  }

  v78 = *(v281 + 8);
  v78(v43, v282);
  v79 = [v287 isPresenterEnumeration];
  v80 = v283;
  if (v79)
  {
    v81 = &v283[v280[7]];
    v82 = type metadata accessor for ItemMetadata();
    if (!v81[*(v82 + 84)] || v81[*(v82 + 84)] >= 4u)
    {
LABEL_39:
      v121 = v285;
      v122 = *(v285 + 16);
      v123 = *(v122 + 5);
      v124 = v260;
      sub_1CEFDA34C(v80, v260, type metadata accessor for VFSItem);
      v125 = (*(v278 + 80) + 24) & ~*(v278 + 80);
      v126 = (v279 + v125 + 7) & 0xFFFFFFFFFFFFFFF8;
      v127 = (v126 + 15) & 0xFFFFFFFFFFFFFFF8;
      v128 = swift_allocObject();
      *(v128 + 16) = v121;
      sub_1CEFDA0C4(v124, v128 + v125, type metadata accessor for VFSItem);
      *(v128 + v126) = v123;
      v129 = v277;
      v269 = v128;
      *(v128 + v127) = v277;
      v257 = v122;
      v130 = *&v122[qword_1EDEBBC38];

      sub_1CEFD09A0(v129);

      v260 = fpfs_adopt_log();
      if (qword_1EDEAE980 != -1)
      {
        swift_once();
      }

      v131 = qword_1EDEBBE40;
      v132 = v265;
      v133 = v266;
      v134 = v271;
      (*(v265 + 56))(v271, 1, 1, v266);
      strcpy(v293, "async batch ");
      BYTE5(v293[1]) = 0;
      HIWORD(v293[1]) = -5120;
      v135 = sub_1CF9E7988();
      MEMORY[0x1D3868CC0](v135);

      v136 = v293[1];
      v252 = v293[0];
      v137 = v261;
      sub_1CEFCCBDC(v134, v261, &unk_1EC4BED20, &unk_1CFA00700);
      v138 = *(v132 + 48);
      v139 = v138(v137, 1, v133);
      v253 = v123;
      if (v139 == 1)
      {
        v140 = v131;
        v141 = v259;
        sub_1CF9E6048();
        v142 = v138(v137, 1, v133);
        v143 = v258;
        if (v142 != 1)
        {
          sub_1CEFCCC44(v137, &unk_1EC4BED20, &unk_1CFA00700);
        }
      }

      else
      {
        v141 = v259;
        (*(v132 + 32))(v259, v137, v133);
        v143 = v258;
      }

      v144 = *(v132 + 16);
      v145 = v132;
      v146 = v272;
      v144(v272, v141, v133);
      *(v146 + *(v143 + 20)) = v131;
      v147 = v146 + *(v143 + 24);
      *v147 = "DB queue wait";
      *(v147 + 8) = 13;
      *(v147 + 16) = 2;
      v148 = v131;
      sub_1CF9E7468();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v149 = v133;
      v150 = swift_allocObject();
      *(v150 + 16) = xmmword_1CF9FA450;
      *(v150 + 56) = MEMORY[0x1E69E6158];
      *(v150 + 64) = sub_1CEFD51C4();
      *(v150 + 32) = v252;
      *(v150 + 40) = v136;
      v247 = v150;
      LOBYTE(v246) = 2;
      v245 = 2;
      sub_1CF9E6028();

      (*(v145 + 8))(v141, v149);
      sub_1CEFCCC44(v271, &unk_1EC4BED20, &unk_1CFA00700);
      v266 = *(v257 + 21);
      v271 = *(v257 + 8);
      v265 = sub_1CF9E6448();
      v261 = *(v265 - 8);
      (*(v261 + 56))(v273, 1, 1, v265);
      v151 = v264;
      sub_1CEFDA34C(v146, v264, type metadata accessor for Signpost);
      v152 = (*(v262 + 80) + 16) & ~*(v262 + 80);
      v153 = (v263 + v152 + 7) & 0xFFFFFFFFFFFFFFF8;
      v154 = swift_allocObject();
      v263 = type metadata accessor for Signpost;
      sub_1CEFDA0C4(v151, v154 + v152, type metadata accessor for Signpost);
      v155 = (v154 + v153);
      v264 = nullsub_1;
      *v155 = nullsub_1;
      v155[1] = 0;
      v156 = v267;
      sub_1CEFDA34C(v146, v267, type metadata accessor for Signpost);
      v157 = (v153 + 23) & 0xFFFFFFFFFFFFFFF8;
      v158 = (v157 + 15) & 0xFFFFFFFFFFFFFFF8;
      v159 = (v158 + 25) & 0xFFFFFFFFFFFFFFF8;
      v160 = swift_allocObject();
      v161 = v160 + v152;
      v162 = v261;
      sub_1CEFDA0C4(v156, v161, v263);
      v163 = (v160 + v153);
      *v163 = sub_1CF045408;
      v163[1] = 0;
      *(v160 + v157) = v257;
      v164 = v160 + v158;
      *v164 = "enumerate(with:lifetimeExtender:observer:completionHandler:)";
      *(v164 + 8) = 60;
      *(v164 + 16) = 2;
      v165 = (v160 + v159);
      v166 = v265;
      *v165 = v264;
      v165[1] = 0;
      v167 = (v160 + ((v159 + 23) & 0xFFFFFFFFFFFFFFF8));
      v168 = v269;
      *v167 = sub_1CF8FF5AC;
      v167[1] = v168;
      v169 = swift_allocObject();
      v169[2] = sub_1CF903308;
      v169[3] = v154;
      v170 = v266;
      v169[4] = v266;

      v267 = v154;

      v171 = fpfs_current_log();
      v172 = v170[2];
      v173 = v268;
      sub_1CEFCCBDC(v273, v268, &unk_1EC4BE370, qword_1CFA01B30);
      v174 = (*(v162 + 48))(v173, 1, v166);
      v266 = v172;
      if (v174 == 1)
      {
        sub_1CEFCCC44(v173, &unk_1EC4BE370, qword_1CFA01B30);
        v175 = QOS_CLASS_UNSPECIFIED;
      }

      else
      {
        v176 = v254;
        sub_1CF9E6438();
        (*(v162 + 8))(v173, v166);
        v175 = sub_1CF9E63C8();
        (*(v255 + 8))(v176, v256);
      }

      v177 = swift_allocObject();
      v177[2] = v171;
      v177[3] = sub_1CF4858EC;
      v177[4] = v160;
      v296 = sub_1CF2BA17C;
      v297 = v177;
      v293[0] = MEMORY[0x1E69E9820];
      v293[1] = 1107296256;
      v294 = sub_1CEFCA444;
      v295 = &block_descriptor_5019;
      v178 = _Block_copy(v293);
      v179 = v171;

      v296 = sub_1CF2BA180;
      v297 = v169;
      v293[0] = MEMORY[0x1E69E9820];
      v293[1] = 1107296256;
      v294 = sub_1CEFCA444;
      v295 = &block_descriptor_5022;
      v180 = _Block_copy(v293);

      fp_task_tracker_async_and_qos(v266, v271, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v175, v178, v180);
      _Block_release(v180);
      _Block_release(v178);

      sub_1CEFCCC44(v273, &unk_1EC4BE370, qword_1CFA01B30);
      sub_1CEFD5338(v272, type metadata accessor for Signpost);
      v181 = v260;
      v182 = fpfs_adopt_log();

      v80 = v283;
      goto LABEL_55;
    }

    v83 = *(*(*(v285 + 16) + 32) + 16);
    type metadata accessor for VFSFileTree(0);
    v84 = swift_dynamicCastClassUnconditional();

    v85 = objc_sync_enter(v84);
    if (v85)
    {
LABEL_67:
      MEMORY[0x1EEE9AC00](v85);
      v247 = v84;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v245, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    v86 = v84[20];

    v87 = objc_sync_exit(v84);
    if (v87)
    {
      MEMORY[0x1EEE9AC00](v87);
      v247 = v84;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v245, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
    }

    v88 = v80 + v280[9];
    v89 = *v88;
    v90 = v80 + v280[14];
    if (*(v90 + 4))
    {
      v91 = 0;
    }

    else
    {
      v91 = *v90;
    }

    v92 = *(v88 + 8);

    v306[0] = v89;
    v306[1] = 0;
    v307 = v91;
    v308 = v92;
    v309 = 0;
    v310 = 0;
    v93 = *(v86 + 16);
    os_unfair_lock_lock((v86 + 56));
    v94 = *(v86 + 72);
    v253 = *(v86 + 64);
    v95 = *(v86 + 80);
    v96 = *(v86 + 88);
    v97 = *(v86 + 89);
    LODWORD(v252) = *(v86 + 90);

    os_unfair_lock_unlock((v86 + 56));
    MEMORY[0x1EEE9AC00](v98);
    v247 = (v93 | 0x20800000000000);
    v304 = 0;
    v305 = 0;
    *&v302 = v100;
    *(&v302 + 1) = v101;
    v303 = __PAIR64__(v103, v102);
    if (!v104)
    {
      *&v298 = v100;
      *(&v298 + 1) = v101;
      v299 = __PAIR64__(v103, v102);
      v300 = 0;
      v301 = 0;
      LODWORD(v290[0]) = -1;
      v108 = fpfs_openfdbyhandle();
      if ((v108 & 0x80000000) != 0)
      {
        v119 = v290[0];
        v110 = MEMORY[0x1D38683F0]();
        if (v119 < 0)
        {
          LODWORD(v293[0]) = 0;
          BYTE4(v293[0]) = 1;
        }

        else
        {
          LODWORD(v293[0]) = v290[0];
          BYTE4(v293[0]) = 0;
        }

        goto LABEL_51;
      }

      v112 = v108;
      goto LABEL_25;
    }

    MEMORY[0x1EEE9AC00](v99);
    v245 = &v302;
    v246 = sub_1CF19BDC4;
    v247 = v107;
    if ((v106 & 0x1000000000000000) == 0)
    {
      if ((v106 & 0x2000000000000000) != 0)
      {
        v290[0] = v105;
        v290[1] = v106 & 0xFFFFFFFFFFFFFFLL;
        v304 = v290;
        v298 = v302;
        v299 = v303;
        v300 = v290;
        v301 = v305;
        v289 = -1;
        v108 = fpfs_openfdbyhandle();
        if ((v108 & 0x80000000) != 0)
        {
          v251 = &v250;
          v120 = v289;
          v110 = MEMORY[0x1D38683F0]();
          if ((v120 & 0x80000000) == 0)
          {
            v111 = v289;
            goto LABEL_34;
          }

LABEL_49:
          LODWORD(v293[0]) = 0;
          BYTE4(v293[0]) = 1;
          goto LABEL_51;
        }

        goto LABEL_24;
      }

      if ((v105 & 0x1000000000000000) != 0)
      {
        v304 = ((v106 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v298 = v302;
        v299 = v303;
        v300 = v304;
        v301 = v305;
        LODWORD(v290[0]) = -1;
        v108 = fpfs_openfdbyhandle();
        if ((v108 & 0x80000000) != 0)
        {
          v251 = &v250;
          v109 = v290[0];
          v110 = MEMORY[0x1D38683F0]();
          if ((v109 & 0x80000000) == 0)
          {
            v111 = v290[0];
LABEL_34:
            LODWORD(v293[0]) = v111;
            BYTE4(v293[0]) = 0;
LABEL_51:
            LOBYTE(v297) = 0;
            v115 = sub_1CF19BBE4(v110, v293);
            sub_1CF1969CC(v293);
            v80 = v283;
            v116 = v269;
            swift_willThrow();
            v183 = v115;
            LODWORD(v293[0]) = sub_1CF9E5308();
            sub_1CF196978();
            sub_1CF9E5658();

            sub_1CF255928(v306);
            v118 = v257;
LABEL_52:
            v184 = fpfs_current_or_default_log();
            sub_1CF9E6128();
            sub_1CEFDA34C(v80, v118, type metadata accessor for VFSItem);
            v185 = v115;
            v186 = v118;
            v187 = sub_1CF9E6108();
            v188 = sub_1CF9E72A8();

            if (os_log_type_enabled(v187, v188))
            {
              v189 = swift_slowAlloc();
              v273 = v78;
              v190 = v189;
              v191 = swift_slowAlloc();
              v192 = swift_slowAlloc();
              v272 = v115;
              v193 = v192;
              v293[0] = v192;
              *v190 = 136446466;
              v194 = sub_1CF255338();
              v196 = v195;
              sub_1CEFD5338(v186, type metadata accessor for VFSItem);
              v197 = sub_1CEFD0DF0(v194, v196, v293);

              *(v190 + 4) = v197;
              *(v190 + 12) = 2112;
              v198 = v272;
              swift_getErrorValue();
              v199 = Error.prettyDescription.getter(v292);
              *(v190 + 14) = v199;
              *v191 = v199;
              _os_log_impl(&dword_1CEFC7000, v187, v188, "Failed to bump urgency of presented item: %{public}s, error %@", v190, 0x16u);
              sub_1CEFCCC44(v191, &qword_1EC4BE350, &unk_1CF9FC3B0);
              MEMORY[0x1D386CDC0](v191, -1, -1);
              __swift_destroy_boxed_opaque_existential_1(v193);
              MEMORY[0x1D386CDC0](v193, -1, -1);
              MEMORY[0x1D386CDC0](v190, -1, -1);

              (v273)(v269, v282);
            }

            else
            {

              sub_1CEFD5338(v186, type metadata accessor for VFSItem);
              v78(v116, v282);
            }

            goto LABEL_55;
          }

          goto LABEL_49;
        }

LABEL_24:
        v112 = v108;
LABEL_25:
        v84 = 0;
LABEL_26:
        MEMORY[0x1EEE9AC00](v108);
        v248 = 4;
        v249 = v112;
        v293[0] = 0;
        LOBYTE(v302) = 1;
        MEMORY[0x1EEE9AC00](v113);
        *(&v250 - 10) = v253;
        *(&v250 - 9) = v94;
        *(&v250 - 8) = v95;
        *(&v250 - 56) = v96;
        *(&v250 - 55) = v97;
        *(&v250 - 54) = v252;
        *(&v250 - 13) = v112;
        *(&v250 - 6) = 0;
        *(&v250 - 5) = &v302;
        v245 = sub_1CF8FF570;
        v246 = v114;
        v247 = v293;
        v85 = sub_1CEFE1894(sub_1CF8FF594);
        v115 = v293[0];
        v80 = v283;
        v116 = v269;
        if (v293[0])
        {
          swift_willThrow();
          v117 = v115;

          v118 = v257;
          if ((v112 & 0x80000000) == 0)
          {
            close(v112);
          }

          sub_1CF255928(v306);
          goto LABEL_52;
        }

        if ((v302 & 1) == 0)
        {
          if ((v112 & 0x80000000) == 0)
          {
            close(v112);
          }

          sub_1CF255928(v306);
          goto LABEL_39;
        }

        __break(1u);
        goto LABEL_67;
      }
    }

    v251 = &v250;
    v108 = sub_1CF9E7938();
    v112 = v291;
    v84 = 0;
    goto LABEL_26;
  }

LABEL_55:
  LODWORD(v273) = a11;
  v272 = a10;
  v200 = v285;
  v271 = *(v285 + 16);
  v201 = v275;
  sub_1CEFDA34C(v80, v275, type metadata accessor for VFSItem);
  v202 = *(v278 + 80);
  v203 = (v202 + 48) & ~v202;
  v278 = v279 + 7;
  v204 = (v279 + 7 + v203) & 0xFFFFFFFFFFFFFFF8;
  v205 = (v204 + 15) & 0xFFFFFFFFFFFFFFF8;
  v279 = (v205 + 15) & 0xFFFFFFFFFFFFFFF8;
  v206 = (v205 + 31) & 0xFFFFFFFFFFFFFFF8;
  v207 = swift_allocObject();
  v208 = v288;
  *(v207 + 2) = v286;
  *(v207 + 3) = v208;
  v209 = v284;
  *(v207 + 4) = v277;
  *(v207 + 5) = v209;
  v210 = v201;
  v211 = v207;
  sub_1CEFDA0C4(v210, v207 + v203, type metadata accessor for VFSItem);
  *(v211 + v204) = v276;
  v212 = v283;
  *(v211 + v205) = a9;
  v213 = v272;
  v214 = v211 + v279;
  *v214 = v272;
  v214[8] = v273 & 1;
  *(v211 + v206) = v287;
  *(v211 + ((v206 + 15) & 0xFFFFFFFFFFFFFFF8)) = v200;
  v215 = v212 + v280[7];
  v216 = type metadata accessor for ItemMetadata();
  if (*(v215 + *(v216 + 64)) & 1) != 0 || (v230 = *(v215 + *(v216 + 68)), v230 != 2) && (v230)
  {
    v217 = v277;
    sub_1CEFD09A0(v277);

    v218 = v287;
    v219 = v213;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v220 = v284;

    v221 = fpfs_current_or_default_log();
    v222 = v274;
    sub_1CF9E6128();
    sub_1CEFD09A0(v217);
    v223 = sub_1CF9E6108();
    v224 = sub_1CF9E7298();
    sub_1CEFD0A98(v217);
    if (os_log_type_enabled(v223, v224))
    {
      v225 = swift_slowAlloc();
      v226 = swift_slowAlloc();
      v293[0] = v226;
      *v225 = 136315138;
      v227 = sub_1CEFD11AC(v217);
      v229 = sub_1CEFD0DF0(v227, v228, v293);

      *(v225 + 4) = v229;
      _os_log_impl(&dword_1CEFC7000, v223, v224, "Item is in ignored for request %s", v225, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v226);
      MEMORY[0x1D386CDC0](v226, -1, -1);
      MEMORY[0x1D386CDC0](v225, -1, -1);

      (*(v281 + 8))(v274, v282);
    }

    else
    {

      (*(v281 + 8))(v222, v282);
    }

    v242 = v286;
    v243 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E6967210] code:15 userInfo:0];
    v242(0, v243);

    v241 = v212;
  }

  else
  {
    v286 = a9;
    v231 = v270;
    sub_1CEFDA34C(v212, v270, type metadata accessor for VFSItem);
    v232 = (v202 + 24) & ~v202;
    v233 = v213;
    v234 = (v278 + v232) & 0xFFFFFFFFFFFFFFF8;
    v235 = swift_allocObject();
    *(v235 + 16) = v271;
    sub_1CEFDA0C4(v231, v235 + v232, type metadata accessor for VFSItem);
    v236 = (v235 + v234);
    *v236 = sub_1CF8FF464;
    v236[1] = v211;
    v237 = v277;
    *(v235 + ((v234 + 23) & 0xFFFFFFFFFFFFFFF8)) = v277;
    sub_1CEFD09A0(v237);
    sub_1CEFD09A0(v237);

    v238 = v287;
    v239 = v233;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v240 = v284;

    sub_1CF7AAF88("checkIsInIgnoredHierarchy(_:request:completion:)", 48, 2, 2, nullsub_1, 0, sub_1CF8FF558, v235);

    v241 = v283;
  }

  sub_1CEFD5338(v241, type metadata accessor for VFSItem);
LABEL_64:
  v244 = *MEMORY[0x1E69E9840];
}

void sub_1CF8750A0(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v53 = a4;
  v51 = a5;
  v8 = sub_1CF9E5CF8();
  v52 = *(v8 - 8);
  v9 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v13 = a1[4];
  v14 = __swift_project_boxed_opaque_existential_1(a1, v12);
  v15 = *(a2 + 16);
  v16 = *(v15 + 16);
  v17 = *(a3 + 8);
  v79 = *a3;
  v80 = v17;
  v18 = *(v13 + 8);

  v19 = v14;
  v20 = v54;
  sub_1CF68DDB0(&v79, v19, v12, v18, v81);
  if (v20)
  {

    return;
  }

  v21 = v53;
  v49 = v15;
  v50 = v11;
  v54 = v8;

  memcpy(v77, v81, sizeof(v77));
  memcpy(v78, v81, sizeof(v78));
  if (sub_1CF08B99C(v78) != 1)
  {
    v22 = v78[31];
    if (!v78[31])
    {
LABEL_14:
      sub_1CEFCCC44(v77, &unk_1EC4BFC20, &unk_1CFA0A290);
      return;
    }

    v23 = a1;
    v24 = a1[3];
    v25 = a1[4];
    v26 = __swift_project_boxed_opaque_existential_1(a1, v24);
    v60 = v22;
    v27 = *v21;
    v47 = *(*v21 + 264);
    v48 = v27 + 264;
    v28 = *(v25 + 8);
    v29 = v22;
    (v47)(&v61, &v60, v26, v24, v28);
    v55[12] = v73;
    v55[13] = v74;
    v55[14] = v75;
    v55[8] = v69;
    v55[9] = v70;
    v55[10] = v71;
    v55[11] = v72;
    v55[4] = v65;
    v55[5] = v66;
    v55[6] = v67;
    v55[7] = v68;
    v55[0] = v61;
    v55[1] = v62;
    v55[2] = v63;
    v55[3] = v64;
    v57[12] = v73;
    v57[13] = v74;
    v58 = v75;
    v57[8] = v69;
    v57[9] = v70;
    v57[10] = v71;
    v57[11] = v72;
    v57[4] = v65;
    v57[5] = v66;
    v57[6] = v67;
    v57[7] = v68;
    v57[0] = v61;
    v57[1] = v62;
    v56 = v76;
    v59 = v76;
    v57[2] = v63;
    v57[3] = v64;
    if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v57) == 1 || (v30 = v58, , sub_1CEFCCC44(v55, &qword_1EC4BECF0, &unk_1CF9FEEB0), !v30))
    {
      sub_1CEFCCC44(v77, &unk_1EC4BFC20, &unk_1CFA0A290);

      return;
    }

    v31 = *(v30 + 16);

    if (!v31)
    {

      goto LABEL_14;
    }

    v32 = v23[3];
    v48 = v23[4];
    v53 = v32;
    v47 = __swift_project_boxed_opaque_existential_1(v23, v32);
    sub_1CF033A74();
    v33 = v29;
    v34 = sub_1CF9042A4(v51);
    v36 = v35;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDEE0, &unk_1CFA18220);
    v38 = *(v37 + 48);
    v39 = *(v37 + 52);
    v40 = swift_allocObject();
    v41 = *(*v40 + 632);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
    (*(*(v42 - 8) + 56))(v40 + v41, 1, 1, v42);
    *(v40 + 16) = 0u;
    *(v40 + 32) = 0u;
    *(v40 + 48) = 1;
    *(v40 + 56) = 0u;
    *(v40 + 72) = 0u;
    *(v40 + 88) = 0;
    *(v40 + 96) = xmmword_1CF9FEC30;
    *(v40 + 112) = 0;
    *(v40 + 120) = v34;
    *(v40 + 128) = v36;
    *(v40 + 136) = 0x8000000;
    *(v40 + 144) = v33;
    v43 = v50;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v45 = v44;
    (*(v52 + 8))(v43, v54);
    v46 = v45 * 1000000000.0;
    if (COERCE__INT64(fabs(v45 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v46 > -9.22337204e18)
    {
      if (v46 < 9.22337204e18)
      {
        sub_1CF5215C0(v40);

        goto LABEL_14;
      }

LABEL_18:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_18;
  }
}

void sub_1CF87563C(uint64_t a1, char a2, void (*a3)(void, uint64_t, __n128), uint64_t a4, unint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, unsigned __int8 a11, void *a12, uint64_t a13)
{
  v246 = a8;
  v262 = a6;
  v263 = a7;
  v265 = a5;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFB10, &unk_1CFA12AD0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v259 = &v229[-v19];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4C1588, &unk_1CFA0A260);
  v260 = *(v20 - 8);
  v21 = *(v260 + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v261 = &v229[-v23];
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v229[-v25];
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F40, qword_1CFA0F4C0);
  v27 = *(*(v243 - 8) + 64);
  MEMORY[0x1EEE9AC00](v243);
  v244 = &v229[-v28];
  v29 = type metadata accessor for VFSItem(0);
  v256 = *(v29 - 8);
  v30 = *(v256 + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v257 = v31;
  v258 = &v229[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v253 = sub_1CF9E7378();
  v251 = *(v253 - 1);
  v32 = v251[8];
  MEMORY[0x1EEE9AC00](v253);
  v250 = &v229[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEE40, &qword_1CFA00858);
  v248 = *(v249 - 8);
  v34 = *(v248 + 64);
  MEMORY[0x1EEE9AC00](v249);
  v247 = &v229[-v35];
  v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5098, &unk_1CFA18230);
  v254 = *(v255 - 8);
  v36 = v254[8];
  MEMORY[0x1EEE9AC00](v255);
  v252 = &v229[-v37];
  v38 = sub_1CF9E6118();
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38);
  MEMORY[0x1EEE9AC00](v40);
  MEMORY[0x1EEE9AC00](v41);
  MEMORY[0x1EEE9AC00](&v229[-v42]);
  v44 = &v229[-v43];
  v50 = MEMORY[0x1EEE9AC00](v45);
  v52 = &v229[-v51];
  if (a2)
  {
    a3(0, a1, v50);
    return;
  }

  v241 = a4;
  v242 = a3;
  v264 = v47;
  if ((a1 & 1) == 0)
  {
    v239 = v46;
    v237 = v49;
    v236 = &v229[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v238 = v48;
    v232 = a11;
    v234 = a10;
    v233 = a9;
    v63 = v262;
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v64 = sub_1CF4C4044();

    v240 = v26;
    v245 = v38;
    v235 = v21;
    if (v64)
    {
      v65 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v67 = sub_1CF025150(0x80007uLL, v65, v66);
      v69 = v68;
      v71 = v70;
      v73 = v72;

      v74 = MEMORY[0x1D3868C10](v67, v69, v71, v73);
      v76 = v75;

      VFSItemID.init(parsing:)(v74, v76, &v269);
      if (v270 != 255)
      {
        v63 = 0;
        goto LABEL_13;
      }
    }

    else
    {
      v269 = 0;
      v270 = -1;
    }

    v79 = v63;
LABEL_13:
    v80 = *v263;
    v81 = *(v263 + 8);
    v82 = v63;
    v230 = [a12 isPresenterEnumeration];
    v231 = type metadata accessor for FPFSEnumerator();
    v83 = objc_allocWithZone(v231);
    swift_unknownObjectWeakInit();
    v84 = OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_fpItemID;
    *&v83[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_fpItemID] = 0;
    *&v83[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_extensionEnumerator] = 0;
    v85 = &v83[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_keepAlive];
    *v85 = 0;
    v85[1] = 0;
    v83[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_invalidated] = 0;
    v86 = OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_buildAndFilterAppLibraries;
    v83[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_buildAndFilterAppLibraries] = 0;
    *&v83[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_cancellable] = 0;
    v87 = OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_changedItemsByID;
    *&v83[v87] = sub_1CF4E3884(MEMORY[0x1E69E7CC0]);
    *&v83[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_deletedItemsIDs] = MEMORY[0x1E69E7CD0];
    v88 = &v83[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_vfsItemID];
    *v88 = v80;
    v88[8] = v81;
    v89 = *&v83[v84];
    *&v83[v84] = v63;
    v90 = v63;
    v91 = v82;

    *&v83[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_lifetimeExtender] = v246;
    *&v83[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_observer] = v233;
    v92 = v234;
    swift_unknownObjectWeakAssign();
    v83[v86] = v232 & 1;
    v83[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_presenterEnumerator] = v230;
    v93 = *&v92[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_log];
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v94 = v93;
    sub_1CF9E6128();
    (*(v264 + 32))(&v83[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_logger], v44, v245);
    *&v83[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_previousAnchor] = 0;
    swift_beginAccess();
    v266[0] = 0;
    sub_1CF9E6268();
    swift_endAccess();
    v268.receiver = v83;
    v268.super_class = v231;
    v95 = objc_msgSendSuper2(&v268, sel_init);
    v96 = v95;
    if (v90)
    {
      v97 = v91;
      v98 = v96;
      sub_1CF7AD294(v97);
    }

    else
    {
      v99 = v95;
    }

    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C48E0, &unk_1CFA00680);
    v100 = v247;
    sub_1CF9E6278();
    swift_endAccess();
    v101 = v250;
    sub_1CF9E7358();
    v269 = *&v92[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue];
    sub_1CEFD57E0(0, &qword_1EDEAED70, 0x1E69E9610);
    sub_1CEFCCCEC(&qword_1EDEAB6E8, &qword_1EC4BEE40, &qword_1CFA00858);
    sub_1CF2B1654(&qword_1EDEAB610, &qword_1EDEAED70, 0x1E69E9610);
    v102 = v252;
    v103 = v249;
    sub_1CF9E62E8();
    (v251[1])(v101, v253);
    (*(v248 + 8))(v100, v103);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1CEFCCCEC(&unk_1EDEA3968, &qword_1EC4C5098, &unk_1CFA18230);
    v104 = v96;
    v105 = v255;
    v106 = sub_1CF9E62F8();

    (v254[1])(v102, v105);
    v107 = *&v104[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_cancellable];
    *&v104[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_cancellable] = v106;

    v108 = objc_sync_enter(v92);
    if (v108)
    {
      MEMORY[0x1EEE9AC00](v108);
      *&v229[-16] = v92;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v229[-32], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    v254 = v91;
    v266[1] = &off_1F4C16BF0;
    swift_unknownObjectWeakInit();
    swift_beginAccess();
    sub_1CF1C9EE0(v266, v104);
    swift_endAccess();
    v109 = objc_sync_exit(v92);
    if (v109)
    {
      MEMORY[0x1EEE9AC00](v109);
      *&v229[-16] = v92;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v229[-32], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
    }

    v110 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v111 = v104;
    v112 = sub_1CF9E6108();
    v113 = sub_1CF9E72C8();

    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      *v114 = 138412290;
      *(v114 + 4) = v111;
      *v115 = v96;
      v116 = v111;
      _os_log_impl(&dword_1CEFC7000, v112, v113, "📖  new enumerator %@", v114, 0xCu);
      sub_1CEFCCC44(v115, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v115, -1, -1);
      MEMORY[0x1D386CDC0](v114, -1, -1);
    }

    v117 = v264 + 8;
    v118 = *(v264 + 8);
    v119 = v245;
    v118(v239, v245);
    v120 = v111;
    v242(v96, 0);

    v255 = *(a13 + 16);
    v121 = sub_1CEFD4E9C(v262);
    v251 = [objc_allocWithZone(MEMORY[0x1E696AE38]) init];
    v122 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v253 = v120;

    v123 = v258;
    sub_1CEFDA34C(v263, v258, type metadata accessor for VFSItem);
    v124 = (*(v256 + 80) + 24) & ~*(v256 + 80);
    v125 = (v257 + v124 + 7) & 0xFFFFFFFFFFFFFFF8;
    v126 = swift_allocObject();
    *(v126 + 16) = a13;
    sub_1CEFDA0C4(v123, v126 + v124, type metadata accessor for VFSItem);
    v263 = v126;
    *(v126 + v125) = v122;

    v127 = fpfs_current_or_default_log();
    v128 = v237;
    sub_1CF9E6128();
    v129 = v265;
    sub_1CEFD09A0(v265);
    sub_1CEFD09A0(v129);

    v130 = sub_1CF9E6108();
    v131 = sub_1CF9E7298();
    v132 = os_log_type_enabled(v130, v131);
    v258 = v118;
    v264 = v117;
    if (v132)
    {
      v133 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      v266[0] = v134;
      *v133 = 136315394;
      v135 = swift_beginAccess();
      v137 = *(v121 + 32);
      v138 = *(v121 + 40);
      if (*(v121 + 41))
      {
        v139 = v137;
        v140 = NSFileProviderItemIdentifier.description.getter();
        v142 = v141;
        sub_1CEFD0994(v137, v138, 1);
      }

      else
      {
        v269 = *(v121 + 32);
        v270 = v138;
        v140 = VFSItemID.description.getter(v135, v136);
        v142 = v143;
      }

      v144 = sub_1CEFD0DF0(v140, v142, v266);

      *(v133 + 4) = v144;
      *(v133 + 12) = 2080;
      v145 = v265;
      v146 = sub_1CEFD11AC(v265);
      v148 = v147;
      sub_1CEFD0A98(v145);
      sub_1CEFD0A98(v145);
      v149 = sub_1CEFD0DF0(v146, v148, v266);
      v129 = v145;

      *(v133 + 14) = v149;
      _os_log_impl(&dword_1CEFC7000, v130, v131, "Request to materialize content of itemID %s reason %s", v133, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v134, -1, -1);
      MEMORY[0x1D386CDC0](v133, -1, -1);

      v258(v237, v245);
    }

    else
    {
      sub_1CEFD0A98(v129);
      sub_1CEFD0A98(v129);

      v118(v128, v119);
    }

    LODWORD(v257) = (v129 >> 58) & 0x3C | (v129 >> 1) & 3;
    v150 = v259;
    if (v257 == 2)
    {
      v151 = swift_projectBox();
      v152 = v244;
      sub_1CEFCCBDC(v151, v244, &unk_1EC4C4F40, qword_1CFA0F4C0);
      v153 = *(v152 + 1);

      v154 = v243;
      v155 = *(v243 + 48);

      v156 = *&v152[*(v154 + 80)];
      v157 = sub_1CF9E5A58();
      (*(*(v157 - 8) + 8))(&v152[v155], v157);
    }

    else
    {
      v156 = 0;
    }

    sub_1CEFCCBDC(v255 + qword_1EDEBBC18, v150, &qword_1EC4BFB10, &unk_1CFA12AD0);
    v158 = type metadata accessor for TelemetrySignposter(0);
    v159 = (*(*(v158 - 8) + 48))(v150, 1, v158);
    v252 = v121;
    if (v159 == 1)
    {
      sub_1CEFCCC44(v150, &qword_1EC4BFB10, &unk_1CFA12AD0);
      v160 = 1;
      v161 = v240;
    }

    else
    {
      v161 = v240;
      sub_1CF519DE8(v156, v240);
      sub_1CEFD5338(v150, type metadata accessor for TelemetrySignposter);
      v160 = 0;
    }

    v162 = type metadata accessor for TelemetrySignpost(0);
    (*(*(v162 - 8) + 56))(v161, v160, 1, v162);
    v163 = v261;
    sub_1CEFCCBDC(v161, v261, qword_1EC4C1588, &unk_1CFA0A260);
    v164 = *(v260 + 80);
    v165 = (v164 + 16) & ~v164;
    v166 = v235;
    v167 = (v235 + v165 + 7) & 0xFFFFFFFFFFFFFFF8;
    v168 = swift_allocObject();
    v262 = v168;
    sub_1CEFE55D0(v163, &v168[v165], qword_1EC4C1588, &unk_1CFA0A260);
    v169 = &v168[v167];
    v170 = v263;
    *v169 = sub_1CF8FFA94;
    v169[1] = v170;
    v171 = v236;
    sub_1CEFCCBDC(v161, v236, qword_1EC4C1588, &unk_1CFA0A260);
    v172 = (v164 + 24) & ~v164;
    v173 = (v172 + v166 + 31) & 0xFFFFFFFFFFFFFFF8;
    v260 = (v172 + v166 + 7) & 0xFFFFFFFFFFFFFFF8;
    v261 = ((v173 + 15) & 0xFFFFFFFFFFFFFFF8);
    v174 = (v173 + 31) & 0xFFFFFFFFFFFFFFF8;
    v175 = (v174 + 15) & 0xFFFFFFFFFFFFFFF8;
    v176 = swift_allocObject();
    v177 = v265;
    *(v176 + 16) = v265;
    sub_1CEFE55D0(v171, v176 + v172, qword_1EC4C1588, &unk_1CFA0A260);
    v178 = v176 + v260;
    *v178 = sub_1CF8FFA94;
    *(v178 + 8) = v170;
    *(v178 + 16) = 1;
    *(v176 + v173) = v255;
    v179 = &v261[v176];
    v180 = v252;
    *v179 = v252;
    v179[8] = 1;
    *(v176 + v174) = 0;
    v181 = v180;
    v182 = v251;
    *(v176 + v175) = v251;
    v183 = v176 + ((v175 + 15) & 0xFFFFFFFFFFFFFFF8);
    v184 = v262;
    *v183 = sub_1CF903314;
    *(v183 + 8) = v184;
    *(v183 + 16) = 1;
    v185 = objc_allocWithZone(MEMORY[0x1E696AE38]);

    sub_1CEFD09A0(v177);

    v186 = v182;

    v187 = [v185 init];
    v188 = swift_allocObject();
    v188[2] = sub_1CF903318;
    v188[3] = v176;
    v261 = v188;
    v188[4] = v177;
    sub_1CEFD09A0(v177);

    sub_1CEFD09A0(v177);

    v189 = fpfs_current_or_default_log();
    v190 = v238;
    sub_1CF9E6128();
    sub_1CEFD09A0(v177);
    sub_1CEFD09A0(v177);

    v191 = sub_1CF9E6108();
    v192 = sub_1CF9E7298();
    if (os_log_type_enabled(v191, v192))
    {
      v259 = v187;
      v260 = v186;
      v193 = swift_slowAlloc();
      v194 = swift_slowAlloc();
      v267 = v194;
      *v193 = 136315906;
      v195 = swift_beginAccess();
      v197 = *(v181 + 4);
      v198 = v181[40];
      if (v181[41])
      {
        v199 = v197;
        v200 = NSFileProviderItemIdentifier.description.getter();
        v202 = v201;
        sub_1CEFD0994(v197, v198, 1);
      }

      else
      {
        v269 = *(v181 + 4);
        v270 = v198;
        v200 = VFSItemID.description.getter(v195, v196);
        v202 = v203;
      }

      v204 = sub_1CEFD0DF0(v200, v202, &v267);

      *(v193 + 4) = v204;
      *(v193 + 12) = 2080;
      *(v193 + 14) = sub_1CEFD0DF0(0xD000000000000010, 0x80000001CFA2C3C0, &v267);
      *(v193 + 22) = 2080;
      v177 = v265;
      v205 = sub_1CEFD11AC(v265);
      v207 = v206;
      sub_1CEFD0A98(v177);
      sub_1CEFD0A98(v177);
      v208 = sub_1CEFD0DF0(v205, v207, &v267);

      *(v193 + 24) = v208;
      *(v193 + 32) = 2048;
      *(v193 + 34) = 0;
      _os_log_impl(&dword_1CEFC7000, v191, v192, "Lookup itemID %s with behavior %s request %s iteration %ld", v193, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v194, -1, -1);
      MEMORY[0x1D386CDC0](v193, -1, -1);

      v258(v238, v245);
      v187 = v259;
      v186 = v260;
    }

    else
    {
      sub_1CEFD0A98(v177);
      sub_1CEFD0A98(v177);

      v258(v190, v245);
    }

    swift_beginAccess();
    v209 = *(v181 + 4);
    v210 = v181[40];
    if (v181[41])
    {
      v211 = v186;
      v212 = qword_1EDEA34B0;
      v213 = v209;
      if (v212 != -1)
      {
        swift_once();
      }

      v214 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v216 = v215;
      if (v214 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v216 == v217)
      {

        sub_1CEFD0994(v209, v210, 1);
        v186 = v211;
LABEL_46:
        sub_1CF90CAC8(v177, sub_1CF796A0C, v261);
LABEL_52:

        sub_1CEFD0A98(v177);

        sub_1CEFCCC44(v240, qword_1EC4C1588, &unk_1CFA0A260);
        return;
      }

      v218 = sub_1CF9E8048();

      sub_1CEFD0994(v209, v210, 1);
      v186 = v211;
      if (v218)
      {
        goto LABEL_46;
      }
    }

    else if (!v209 && v210 == 2)
    {
      goto LABEL_46;
    }

    v260 = v186;
    if (v257 == 30)
    {
      v219 = *((v177 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v220 = v219;
    }

    else
    {
      v221 = swift_allocObject();
      *(v221 + 16) = v177;
      v220 = v221 | 0x7000000000000004;
      v219 = v177;
    }

    sub_1CEFD09A0(v219);
    v222 = swift_allocObject();
    v223 = v261;
    *(v222 + 16) = sub_1CF796A0C;
    *(v222 + 24) = v223;
    v224 = v255;
    *(v222 + 32) = v255;
    *(v222 + 40) = 2;
    *(v222 + 48) = v177;
    *(v222 + 56) = v181;
    *(v222 + 64) = 0;
    *(v222 + 72) = v187;
    *(v222 + 80) = 0;
    v225 = swift_allocObject();
    *(v225 + 16) = v181;
    *(v225 + 24) = v224;
    *(v225 + 32) = 0;
    *(v225 + 40) = sub_1CF796A90;
    *(v225 + 48) = v222;
    *(v225 + 56) = v220;
    v226 = v187;
    v227 = swift_allocObject();
    *(v227 + 16) = sub_1CF796A90;
    *(v227 + 24) = v222;

    sub_1CEFD09A0(v265);

    v228 = v226;
    sub_1CEFD09A0(v220);
    sub_1CF7AAF88("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF554464, v227, sub_1CF796A9C, v225);

    v187 = v226;
    v177 = v265;

    sub_1CEFD0A98(v220);
    v186 = v260;
    goto LABEL_52;
  }

  v53 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v54 = v265;
  sub_1CEFD09A0(v265);
  v55 = sub_1CF9E6108();
  v56 = sub_1CF9E7298();
  sub_1CEFD0A98(v54);
  if (os_log_type_enabled(v55, v56))
  {
    v57 = v38;
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v269 = v59;
    *v58 = 136315138;
    v60 = sub_1CEFD11AC(v54);
    v62 = sub_1CEFD0DF0(v60, v61, &v269);

    *(v58 + 4) = v62;
    _os_log_impl(&dword_1CEFC7000, v55, v56, "Item is in ignored for request %s", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v59);
    MEMORY[0x1D386CDC0](v59, -1, -1);
    MEMORY[0x1D386CDC0](v58, -1, -1);

    (*(v264 + 8))(v52, v57);
  }

  else
  {

    (*(v264 + 8))(v52, v38);
  }

  v77 = v242;
  v78 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E6967210] code:15 userInfo:0];
  v77(0, v78);
}

uint64_t sub_1CF8771F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for VFSItem(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = *(a2 + 16);
  sub_1CEFDA34C(a3, &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VFSItem);
  v11 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  sub_1CEFDA0C4(&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for VFSItem);
  *(v12 + ((v9 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = a4;

  sub_1CF7AAF88("enumerate(with:lifetimeExtender:observer:completionHandler:)", 60, 2, 2, nullsub_1, 0, sub_1CF8FFEA0, v12);
}

void sub_1CF877384(void *a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, v7);
  v10 = *(*(a2 + 16) + 16);
  v11 = *(a3 + 8);
  v16 = *a3;
  v17 = v11;
  v12 = *(*v10 + 160);

  v12(&v18, &v16, v9, v7, v8);
  if (v4)
  {
  }

  else
  {

    v13 = v18;
    if (v18)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v15 = Strong;
        sub_1CF7AD294(v13);
      }
    }
  }
}

void sub_1CF877568(uint64_t a1, void *a2, void (*a3)(id, void *), uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v63 = a4;
  v64 = a3;
  v62 = sub_1CF9E6118();
  v65 = *(v62 - 8);
  v14 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v59 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v59 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v59 - v24;
  if (a2)
  {
    v26 = a2;
    v27 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v28 = a2;
    v29 = sub_1CF9E6108();
    v30 = sub_1CF9E72A8();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412290;
      swift_getErrorValue();
      v33 = Error.prettyDescription.getter(v66);
      *(v31 + 4) = v33;
      *v32 = v33;
      _os_log_impl(&dword_1CEFC7000, v29, v30, "Error enumerating backend for search in enumerateWithSettings: %@", v31, 0xCu);
      sub_1CEFCCC44(v32, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v32, -1, -1);
      MEMORY[0x1D386CDC0](v31, -1, -1);
    }

    (*(v65 + 8))(v25, v62);
    v34 = a2;
    v64(0, a2);
  }

  else
  {
    if (a1)
    {
      swift_unknownObjectRetain_n();
      v60 = [a8 searchContainerItemIdentifier];
      v35 = type metadata accessor for FPFSSearchEnumerator();
      v36 = objc_allocWithZone(v35);
      swift_unknownObjectWeakInit();
      v37 = &v36[OBJC_IVAR____TtC18FileProviderDaemon20FPFSSearchEnumerator_keepAlive];
      *v37 = 0;
      v37[1] = 0;
      v36[OBJC_IVAR____TtC18FileProviderDaemon20FPFSSearchEnumerator_invalidated] = 0;
      v38 = OBJC_IVAR____TtC18FileProviderDaemon20FPFSSearchEnumerator_changedItemsByID;
      *&v36[v38] = sub_1CF4E3884(MEMORY[0x1E69E7CC0]);
      *&v36[OBJC_IVAR____TtC18FileProviderDaemon20FPFSSearchEnumerator_deletedItemsIDs] = MEMORY[0x1E69E7CD0];
      swift_unknownObjectWeakAssign();
      *&v36[OBJC_IVAR____TtC18FileProviderDaemon20FPFSSearchEnumerator_extensionEnumerator] = a1;
      Strong = swift_unknownObjectWeakLoadStrong();
      v61 = a1;
      swift_unknownObjectRetain();
      if (!Strong || (v40 = [Strong log], Strong, !v40))
      {
        v41 = fp_default_log();
      }

      sub_1CF9E6128();
      v42 = v19;
      v43 = v62;
      (*(v65 + 32))(&v36[OBJC_IVAR____TtC18FileProviderDaemon20FPFSSearchEnumerator_logger], v42, v62);
      *&v36[OBJC_IVAR____TtC18FileProviderDaemon20FPFSSearchEnumerator_observer] = a6;
      *&v36[OBJC_IVAR____TtC18FileProviderDaemon20FPFSSearchEnumerator_lifetimeExtender] = a5;
      *&v36[OBJC_IVAR____TtC18FileProviderDaemon20FPFSSearchEnumerator_searchIdentifier] = v60;
      v68.receiver = v36;
      v68.super_class = v35;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v44 = objc_msgSendSuper2(&v68, sel_init);
      swift_unknownObjectRelease();
      v45 = objc_sync_enter(a7);
      if (v45)
      {
        MEMORY[0x1EEE9AC00](v45);
        *(&v59 - 2) = a7;
        fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v59 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
      }

      v67[1] = &off_1F4C2ADB0;
      swift_unknownObjectWeakInit();
      swift_beginAccess();
      sub_1CF1C9EE0(v67, v44);
      swift_endAccess();
      v46 = objc_sync_exit(a7);
      if (v46)
      {
        MEMORY[0x1EEE9AC00](v46);
        *(&v59 - 2) = a7;
        fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v59 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
      }

      v47 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v48 = v44;
      v49 = sub_1CF9E6108();
      v50 = sub_1CF9E72C8();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        *v51 = 138412290;
        *(v51 + 4) = v48;
        *v52 = v44;
        v53 = v48;
        _os_log_impl(&dword_1CEFC7000, v49, v50, "📖  new search enumerator %@", v51, 0xCu);
        sub_1CEFCCC44(v52, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v52, -1, -1);
        MEMORY[0x1D386CDC0](v51, -1, -1);
      }

      (*(v65 + 8))(v16, v43);
      v54 = v48;
      v64(v44, 0);
      swift_unknownObjectRelease();
    }

    else
    {
      v55 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v56 = sub_1CF9E6108();
      v57 = sub_1CF9E72A8();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&dword_1CEFC7000, v56, v57, "Missing extensionEnumerator in enumerateWithSettings for search", v58, 2u);
        MEMORY[0x1D386CDC0](v58, -1, -1);
      }

      (*(v65 + 8))(v22, v62);
      v54 = FPNotSupportedError();
      v64(0, v54);
    }
  }
}

uint64_t FPDDomainFPFSBackend.fetchFSItems(forItemIdentifiers:materializingIfNeeded:request:completionHandler:)(uint64_t a1, char a2, void *a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  *(v12 + 24) = a5;
  *(v12 + 32) = a1;
  *(v12 + 40) = v5;
  *(v12 + 48) = a2;
  *(v12 + 56) = a3;
  swift_retain_n();

  v13 = v5;
  v14 = a3;
  sub_1CEFD4024("fetchFSItems(forItemIdentifiers:materializingIfNeeded:request:completionHandler:)", 81, 2, sub_1CF9032C0, v11, sub_1CF8F0DD8, v12);
}

uint64_t sub_1CF877DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6, void *a7)
{
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = sub_1CF8FF29C;
  v15[3] = v13;
  v15[4] = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1CF8FF2C8;
  *(v16 + 24) = v15;
  v17 = *(a1 + 16);
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1CF8FF2D8;
  *(v18 + 24) = v16;
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  *(v19 + 32) = a1;
  *(v19 + 40) = a6;
  *(v19 + 48) = a7;
  *(v19 + 56) = v17;
  *(v19 + 64) = sub_1CF8FF2D8;
  *(v19 + 72) = v16;
  swift_retain_n();

  v20 = a5;

  v21 = a7;

  sub_1CF7AAF88("fetchFSItems(forItemIdentifiers:materializingIfNeeded:request:completionHandler:)", 81, 2, 2, sub_1CF8FF310, v18, sub_1CF8FF370, v19);
}

void sub_1CF877FA8(void *a1, uint64_t a2, char *a3, uint64_t a4, int a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v124 = a8;
  v142 = a7;
  v141 = a6;
  v152 = a5;
  v159 = a4;
  v123 = a9;
  v130 = sub_1CF9E63A8();
  v129 = *(v130 - 8);
  v12 = *(v129 + 64);
  MEMORY[0x1EEE9AC00](v130);
  v128 = &v123 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_1CF9E6448();
  v126 = *(v127 - 8);
  v14 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](v127);
  v125 = &v123 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_1CF9E6118();
  v16 = *(v140 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v140);
  v139 = &v123 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  v144 = v19;
  *(v19 + 16) = MEMORY[0x1E69E7CC8];
  v133 = (v19 + 16);
  v143 = dispatch_group_create();
  v21 = *(a2 + 16);
  if (v21)
  {
    v156 = *&a3[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_providerDomainID];
    v22 = (a2 + 32);
    v137 = (v16 + 8);
    v155 = *MEMORY[0x1E6967258];
    v132 = "nFS";
    v154 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_domain;
    *&v20 = 136315906;
    v131 = v20;
    v157 = a3;
    v138 = a1;
    do
    {
      v161 = v22;
      v23 = *v22;
      v24 = objc_allocWithZone(MEMORY[0x1E6967388]);
      v25 = v23;
      v26 = v155;
      v27 = sub_1CF9E6888();
      v28 = [v24 initWithProviderDomainID:v156 itemIdentifier:v25 parentItemIdentifier:v26 filename:v27 isDirectory:0];

      v30 = a1[3];
      v29 = a1[4];
      v31 = __swift_project_boxed_opaque_existential_1(a1, v30);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v33 = Strong;
        v34 = [Strong indexer];

        if (v34)
        {
          v35 = [v34 needsAuthentication];

          if (v35)
          {
            v36 = 24;
          }

          else
          {
            v36 = 16;
          }
        }

        else
        {
          v36 = 16;
        }

        a3 = v157;
      }

      else
      {
        v36 = 16;
      }

      v37 = sub_1CEFCCCA4(qword_1EDEA8860, type metadata accessor for VFSFileTree);
      v38 = v162;
      v39 = sub_1CF763B18(v28, v36, v31, v30, v37, &off_1F4BF8588, v29);
      if (v38)
      {
      }

      else if (v39)
      {
        v162 = 0;
        v40 = v133;
        swift_beginAccess();
        v28 = v28;
        v41 = *v40;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v168 = *v40;
        *v40 = 0x8000000000000000;
        sub_1CF1D2E08(v28, v25, isUniquelyReferenced_nonNull_native);

        *v40 = v168;
        swift_endAccess();
        goto LABEL_4;
      }

      v162 = 0;
      if (v152)
      {
        v153 = v21;
        v43 = v28;
        v44 = swift_allocObject();
        v45 = v141;
        *(v44 + 16) = v25;
        *(v44 + 24) = v45;
        v158 = v44 | 6;
        v46 = v25;
        v47 = v45;
        v48 = v143;
        dispatch_group_enter(v143);
        v49 = v159;
        v148 = *(v159 + 16);
        v50 = v46;
        v145 = sub_1CEFD4E9C(v50);
        v51 = swift_allocObject();
        v51[2] = v142;
        v51[3] = v48;
        v51[4] = v49;
        v51[5] = v43;
        v52 = v43;
        v53 = v144;
        v51[6] = a3;
        v51[7] = v53;
        v51[8] = v50;
        v151 = objc_allocWithZone(MEMORY[0x1E696AE38]);
        v150 = v50;
        v149 = v52;

        v54 = v48;

        v55 = a3;

        v56 = [v151 init];
        v57 = swift_allocObject();
        v57[2] = sub_1CF8FF3B4;
        v57[3] = v51;
        v146 = v57;
        v57[4] = v158;
        v151 = v51;
        v58 = v145;
        swift_retain_n();
        swift_retain_n();
        v59 = fpfs_current_or_default_log();
        v60 = v139;
        sub_1CF9E6128();
        swift_retain_n();

        v61 = sub_1CF9E6108();
        v62 = sub_1CF9E7298();
        v63 = os_log_type_enabled(v61, v62);
        v160 = v44;
        v147 = v56;
        if (v63)
        {
          v135 = v62;
          v136 = v61;
          v64 = swift_slowAlloc();
          v134 = swift_slowAlloc();
          v168 = v134;
          *v64 = v131;
          v65 = swift_beginAccess();
          v67 = *(v58 + 32);
          v68 = *(v58 + 40);
          if (*(v58 + 41))
          {
            v69 = v67;
            v70 = NSFileProviderItemIdentifier.description.getter();
            v72 = v71;
            sub_1CEFD0994(v67, v68, 1);
          }

          else
          {
            *&aBlock = *(v58 + 32);
            BYTE8(aBlock) = v68;
            v70 = VFSItemID.description.getter(v65, v66);
            v72 = v73;
          }

          v74 = sub_1CEFD0DF0(v70, v72, &v168);

          *(v64 + 4) = v74;
          *(v64 + 12) = 2080;
          *(v64 + 14) = sub_1CEFD0DF0(0xD000000000000010, v132 | 0x8000000000000000, &v168);
          *(v64 + 22) = 2080;
          v76 = v160[2];
          v75 = v160[3];
          strcpy(&aBlock, "itemID->URL(");
          BYTE13(aBlock) = 0;
          HIWORD(aBlock) = -5120;
          v77 = v75;
          v78 = v76;
          v79 = NSFileProviderItemIdentifier.description.getter();
          MEMORY[0x1D3868CC0](v79);

          MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
          v80 = [v77 description];
          v81 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v83 = v82;

          MEMORY[0x1D3868CC0](v81, v83);

          MEMORY[0x1D3868CC0](41, 0xE100000000000000);

          v84 = sub_1CEFD0DF0(aBlock, *(&aBlock + 1), &v168);

          *(v64 + 24) = v84;
          *(v64 + 32) = 2048;
          *(v64 + 34) = 0;
          v85 = v136;
          _os_log_impl(&dword_1CEFC7000, v136, v135, "Lookup itemID %s with behavior %s request %s iteration %ld", v64, 0x2Au);
          v86 = v134;
          swift_arrayDestroy();
          MEMORY[0x1D386CDC0](v86, -1, -1);
          MEMORY[0x1D386CDC0](v64, -1, -1);
        }

        else
        {
        }

        (*v137)(v60, v140);
        swift_beginAccess();
        v87 = *(v58 + 32);
        v88 = *(v58 + 40);
        v21 = v153;
        if (*(v58 + 41))
        {
          v89 = qword_1EDEA34B0;
          v90 = v87;
          if (v89 != -1)
          {
            swift_once();
          }

          v91 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v93 = v92;
          if (v91 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v93 == v94)
          {

            sub_1CEFD0994(v87, v88, 1);
            goto LABEL_33;
          }

          v96 = sub_1CF9E8048();

          sub_1CEFD0994(v87, v88, 1);
          if ((v96 & 1) == 0)
          {
LABEL_35:
            v97 = swift_allocObject();
            v98 = v158;
            *(v97 + 16) = v158;
            v99 = v97 | 0x7000000000000004;
            v100 = swift_allocObject();
            v101 = v146;
            *(v100 + 16) = sub_1CF796A0C;
            *(v100 + 24) = v101;
            v102 = v148;
            *(v100 + 32) = v148;
            *(v100 + 40) = 2;
            *(v100 + 48) = v98;
            *(v100 + 56) = v58;
            *(v100 + 64) = 0;
            v95 = v147;
            *(v100 + 72) = v147;
            *(v100 + 80) = 0;
            v103 = swift_allocObject();
            *(v103 + 16) = v58;
            *(v103 + 24) = v102;
            *(v103 + 32) = 0;
            *(v103 + 40) = sub_1CF796A90;
            *(v103 + 48) = v100;
            *(v103 + 56) = v99;
            v104 = swift_allocObject();
            *(v104 + 16) = sub_1CF796A90;
            *(v104 + 24) = v100;
            swift_retain_n();
            swift_retain_n();
            swift_retain_n();
            swift_retain_n();

            v105 = v95;

            sub_1CF7AAF88("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF554464, v104, sub_1CF796A9C, v103);

            v21 = v153;

            goto LABEL_36;
          }
        }

        else if (v87 || v88 != 2)
        {
          goto LABEL_35;
        }

LABEL_33:
        sub_1CF90CAC8(v158, sub_1CF796A0C, v146);

        v95 = v147;
LABEL_36:

        a3 = v157;
        a1 = v138;
        goto LABEL_5;
      }

LABEL_4:
LABEL_5:
      v22 = v161 + 1;
      --v21;
    }

    while (v21);
  }

  v106 = *&a3[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue];
  v107 = swift_allocObject();
  v108 = v123;
  v107[2] = v124;
  v107[3] = v108;
  v107[4] = v144;

  v109 = fpfs_current_log();
  v161 = fpfs_adopt_log();
  v110 = swift_allocObject();
  *&aBlock = sub_1CF9E73C8();
  *(&aBlock + 1) = v111;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v112 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v112);

  sub_1CF9E6978();

  v113 = __fp_log_fork();

  *(v110 + 16) = v113;
  v114 = swift_allocObject();
  *(v114 + 16) = v109;
  *(v114 + 24) = v110;
  *(v114 + 32) = v106;
  *(v114 + 40) = "fetchFSItems(forItemIdentifiers:materializingIfNeeded:request:completionHandler:)";
  *(v114 + 48) = 81;
  *(v114 + 56) = 2;
  *(v114 + 64) = sub_1CF8FF3A8;
  *(v114 + 72) = v107;
  v166 = sub_1CF2B9F54;
  v167 = v114;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v164 = sub_1CEFCA444;
  v165 = &block_descriptor_4912;
  v115 = _Block_copy(&aBlock);
  v160 = v109;

  v116 = v106;

  v117 = v125;
  sub_1CF9E63F8();
  v168 = MEMORY[0x1E69E7CC0];
  sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
  v118 = v128;
  v119 = v130;
  sub_1CF9E77B8();
  v120 = v143;
  sub_1CF9E7308();
  _Block_release(v115);
  (*(v129 + 8))(v118, v119);
  (*(v126 + 8))(v117, v127);

  v121 = v161;
  v122 = fpfs_adopt_log();
}

uint64_t sub_1CF878FAC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  v15 = swift_allocObject();
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a6;
  v15[5] = a7;
  v15[6] = a8;
  v15[7] = a3;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1CF2B1874;
  *(v16 + 24) = v14;
  v17 = a3;

  v18 = a5;
  v19 = a6;

  v20 = a8;

  sub_1CF7AAF88("fetchFSItems(forItemIdentifiers:materializingIfNeeded:request:completionHandler:)", 81, 2, 2, sub_1CF9034B8, v16, sub_1CF8FF3E8, v15);
}

void sub_1CF879108(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, NSObject *a7)
{
  v11 = a1[3];
  v10 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_1(a1, v11);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v14 = Strong, v15 = [Strong indexer], v14, v15) && (v16 = objc_msgSend(v15, sel_needsAuthentication), v15, v16))
  {
    v17 = 8;
  }

  else
  {
    v17 = 0;
  }

  v18 = sub_1CEFCCCA4(qword_1EDEA8860, type metadata accessor for VFSFileTree);
  sub_1CF763B18(a3, v17, v12, v11, v18, &off_1F4BF8588, v10);
  if (v7)
  {
  }

  else
  {
    swift_beginAccess();
    v19 = a6;
    v20 = a3;
    v21 = *(a5 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *(a5 + 16);
    *(a5 + 16) = 0x8000000000000000;
    sub_1CF1D2E08(v20, v19, isUniquelyReferenced_nonNull_native);

    *(a5 + 16) = v25;
    swift_endAccess();
  }

  dispatch_group_leave(a7);
}

uint64_t sub_1CF8792BC(void (*a1)(uint64_t, void), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 16);

  a1(v6, 0);
}

void sub_1CF8794B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for NSFileProviderItemIdentifier(0);
  sub_1CEFD57E0(0, &qword_1EDEAB520, 0x1E6967388);
  sub_1CEFCCCA4(&qword_1EDEAB550, type metadata accessor for NSFileProviderItemIdentifier);
  v5 = sub_1CF9E6618();
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

uint64_t FPDDomainFPFSBackend.decorate(_:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  sub_1CEFD4024("decorate(_:completionHandler:)", 30, 2, sub_1CF8F0DF0, v6, sub_1CF8F0E20, v7);
}

uint64_t sub_1CF87969C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 16);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a2;
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = 0;
  v10[5] = a3;
  v10[6] = a4;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1CF902EAC;
  *(v11 + 24) = v9;
  swift_retain_n();
  swift_bridgeObjectRetain_n();

  sub_1CF7AAF88("decorate(_:options:completionHandler:)", 38, 2, 2, sub_1CF9034B8, v11, sub_1CF9033F4, v10);
}

void sub_1CF879958(uint64_t a1, uint64_t a2)
{
  sub_1CEFD57E0(0, &qword_1EDEAB520, 0x1E6967388);
  v3 = sub_1CF9E6D28();
  (*(a2 + 16))(a2, v3);
}

void sub_1CF879A28(uint64_t a1, unint64_t a2, void (*a3)(__n128), void *a4)
{
  v118 = a3;
  v119 = a4;
  v6 = sub_1CF9E63D8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v117 = &v99 - v16;
  v17 = sub_1CF9E6068();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v114 = (&v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v106 = &v99 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v115 = &v99 - v25;
  v26 = type metadata accessor for Signpost(0);
  v27 = *(v26 - 8);
  v107 = v26;
  v108 = v27;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  MEMORY[0x1EEE9AC00](v29);
  v109 = &v99 - v30;
  v32 = MEMORY[0x1EEE9AC00](v31);
  v116 = &v99 - v33;
  v105 = v6;
  v104 = v7;
  v103 = v10;
  v112 = v34;
  v113 = v14;
  if (!(a2 >> 62))
  {
    v35 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v110 = v18;
    v111 = v17;
    if (v35)
    {
      goto LABEL_3;
    }

LABEL_25:
    v118(v32);
    return;
  }

LABEL_24:
  v35 = sub_1CF9E7818();
  v110 = v18;
  v111 = v17;
  if (!v35)
  {
    goto LABEL_25;
  }

LABEL_3:
  v17 = 0;
  v18 = a2 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v36 = MEMORY[0x1D3869C30](v17, a2, v32);
    }

    else
    {
      if (v17 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v36 = *(a2 + 8 * v17 + 32);
    }

    v37 = v36;
    v38 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v39 = [v36 inheritedUserInfo];
    if (!v39)
    {
      break;
    }

    ++v17;
    if (v38 == v35)
    {
      goto LABEL_25;
    }
  }

  v40 = *(a1 + 16);
  v41 = swift_allocObject();
  v41[2] = a1;
  v41[3] = a2;
  v42 = v118;
  v102 = v41;
  v43 = v119;
  v41[4] = v118;
  v41[5] = v43;
  v44 = swift_allocObject();
  *(v44 + 16) = v42;
  *(v44 + 24) = v43;
  v118 = v44;
  v101 = v40;
  v45 = *(v40 + qword_1EDEBBC38);
  swift_retain_n();

  v46 = fpfs_adopt_log();
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v47 = qword_1EDEBBE40;
  v48 = v110;
  v49 = v111;
  v50 = v115;
  (*(v110 + 56))(v115, 1, 1, v111);
  strcpy(&aBlock, "async batch ");
  BYTE13(aBlock) = 0;
  HIWORD(aBlock) = -5120;
  v51 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v51);

  v100 = *(&aBlock + 1);
  v52 = aBlock;
  v53 = v106;
  sub_1CEFCCBDC(v50, v106, &unk_1EC4BED20, &unk_1CFA00700);
  v54 = *(v48 + 48);
  v55 = v54(v53, 1, v49);
  v119 = v46;
  if (v55 == 1)
  {
    v56 = v47;
    v57 = v114;
    sub_1CF9E6048();
    if (v54(v53, 1, v49) != 1)
    {
      sub_1CEFCCC44(v53, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v57 = v114;
    (*(v48 + 32))(v114, v53, v49);
  }

  v58 = *(v48 + 16);
  v59 = v48;
  v60 = v116;
  v58(v116, v57, v49);
  v61 = v107;
  *(v60 + *(v107 + 20)) = v47;
  v62 = v60 + *(v61 + 24);
  *v62 = "DB queue wait";
  *(v62 + 8) = 13;
  *(v62 + 16) = 2;
  v63 = v47;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_1CF9FA450;
  *(v64 + 56) = MEMORY[0x1E69E6158];
  *(v64 + 64) = sub_1CEFD51C4();
  v65 = v100;
  *(v64 + 32) = v52;
  *(v64 + 40) = v65;
  sub_1CF9E6028();

  (*(v59 + 8))(v57, v49);
  sub_1CEFCCC44(v115, &unk_1EC4BED20, &unk_1CFA00700);
  v111 = *(v101 + 168);
  v115 = *(v101 + 64);
  v110 = sub_1CF9E6448();
  v107 = *(v110 - 8);
  (*(v107 + 56))(v117, 1, 1, v110);
  v66 = v109;
  sub_1CEFDA34C(v60, v109, type metadata accessor for Signpost);
  v67 = (*(v108 + 80) + 16) & ~*(v108 + 80);
  v68 = (v28 + v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v69 = swift_allocObject();
  sub_1CEFDA0C4(v66, v69 + v67, type metadata accessor for Signpost);
  v70 = (v69 + v68);
  v114 = sub_1CF8F6D78;
  v71 = v118;
  *v70 = sub_1CF8F6D78;
  v70[1] = v71;
  v72 = v112;
  sub_1CEFDA34C(v60, v112, type metadata accessor for Signpost);
  v73 = (v68 + 23) & 0xFFFFFFFFFFFFFFF8;
  v74 = (v73 + 15) & 0xFFFFFFFFFFFFFFF8;
  v75 = (v74 + 25) & 0xFFFFFFFFFFFFFFF8;
  v76 = swift_allocObject();
  sub_1CEFDA0C4(v72, v76 + v67, type metadata accessor for Signpost);
  v77 = (v76 + v68);
  *v77 = sub_1CF045408;
  v77[1] = 0;
  *(v76 + v73) = v101;
  v78 = v76 + v74;
  v79 = v107;
  *v78 = "attachInheritedUserInfo(_:completionHandler:)";
  *(v78 + 8) = 45;
  *(v78 + 16) = 2;
  v80 = (v76 + v75);
  v81 = v118;
  *v80 = v114;
  v80[1] = v81;
  v82 = v76;
  v83 = (v76 + ((v75 + 23) & 0xFFFFFFFFFFFFFFF8));
  v84 = v102;
  *v83 = sub_1CF8F6D58;
  v83[1] = v84;
  v85 = swift_allocObject();
  v85[2] = sub_1CF8F6D80;
  v85[3] = v69;
  v86 = v111;
  v85[4] = v111;
  swift_retain_n();

  v114 = v69;
  v87 = v110;

  v88 = fpfs_current_log();
  v89 = *(v86 + 16);
  v90 = v113;
  sub_1CEFCCBDC(v117, v113, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v79 + 48))(v90, 1, v87) == 1)
  {
    sub_1CEFCCC44(v90, &unk_1EC4BE370, qword_1CFA01B30);
    v91 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v92 = v103;
    sub_1CF9E6438();
    (*(v79 + 8))(v90, v87);
    v91 = sub_1CF9E63C8();
    (*(v104 + 8))(v92, v105);
  }

  v93 = swift_allocObject();
  v93[2] = v88;
  v93[3] = sub_1CF48100C;
  v93[4] = v82;
  v123 = sub_1CEFCA438;
  v124 = v93;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v121 = sub_1CEFCA444;
  v122 = &block_descriptor_834;
  v94 = _Block_copy(&aBlock);
  v95 = v88;

  v123 = sub_1CF2AF9E8;
  v124 = v85;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v121 = sub_1CEFCA444;
  v122 = &block_descriptor_837;
  v96 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v89, v115, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v91, v94, v96);
  _Block_release(v96);
  _Block_release(v94);

  sub_1CEFCCC44(v117, &unk_1EC4BE370, qword_1CFA01B30);
  sub_1CEFD5338(v116, type metadata accessor for Signpost);
  v97 = v119;
  v98 = fpfs_adopt_log();
}

void sub_1CF87A62C(void *a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, v7);
  v10 = sub_1CEFCCCA4(qword_1EDEA8860, type metadata accessor for VFSFileTree);
  sub_1CF764128(a3, v9, v7, v10, &off_1F4BF8588, *(v8 + 8));
  if (!v4)
  {
    a4();
  }
}

Swift::Int64 __swiftcall FPDDomainFPFSBackend.nonEvictableSpace()()
{
  v50 = sub_1CF9E6118();
  v49 = *(v50 - 8);
  v1 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v44 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v45 = &v43 - v4;
  v48 = sub_1CF9E5A58();
  v47 = *(v48 - 8);
  v5 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v46 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue);
  v61 = v0;
  v8 = fpfs_current_log();
  v9 = fpfs_adopt_log();
  v70 = 0;
  v71 = 1;
  aBlock = sub_1CF9E73C8();
  v63 = v10;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v11 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v11);

  sub_1CF9E6978();

  v12 = __fp_log_fork();

  v69 = 1;
  v70 = v12;
  v71 = 0;
  v52 = v8;
  v53 = &v70;
  v54 = v7;
  v55 = "nonEvictableSpace()";
  v56 = 19;
  v57 = 2;
  v58 = sub_1CF8F0E2C;
  v59 = &v60;
  v68 = 0;
  v13 = swift_allocObject();
  v13[2] = &v69;
  v13[3] = sub_1CF8F0E84;
  v13[4] = &v51;
  v13[5] = &v68;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1CF8F0EB0;
  *(v14 + 24) = v13;
  v66 = sub_1CF1C0B54;
  v67 = v14;
  aBlock = MEMORY[0x1E69E9820];
  v63 = 1107296256;
  v64 = sub_1CEFFD02C;
  v65 = &block_descriptor_241;
  v15 = _Block_copy(&aBlock);

  FPDispatchAsyncAndWait(v7, v15);
  _Block_release(v15);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v68)
  {
LABEL_23:
    swift_willThrow();
    sub_1CF7447FC(v69);

    result = fpfs_adopt_log();
    __break(1u);
    return result;
  }

  v16 = v69;
  if (v69 == 1)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v17 = fpfs_adopt_log();

  if (!v16)
  {
    return 0;
  }

  v18 = *(v16 + qword_1EC4EBCD0);
  if (v18)
  {
    v19 = *(v16 + qword_1EC4EBCD0 + 8);
    sub_1CF1FD6B8(*(v16 + qword_1EC4EBCD0), v19);
    v20 = v18;
    sub_1CF1FD6F8(v18, v19);
    if ((*(v16 + 82) & 0x20) != 0)
    {
      MEMORY[0x1EEE9AC00](v21);
      *(&v43 - 2) = sub_1CF8F0EBC;
      *(&v43 - 1) = v16;
      v27 = objc_autoreleasePoolPush();
      result = sub_1CF804C70(v16, 1, "executeBlockOnRO(db:roDB:_:)", 28, 2, 0, sub_1CF8F0EE0, (&v43 - 4));
    }

    else
    {
      v22 = v20;
      v23 = v46;
      sub_1CF9E5988();
      v24 = sub_1CF9E5A18();
      v26 = sub_1CF7F1160(v24, v25);

      (*(v47 + 8))(v23, v48);
      v27 = *(v16 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB50, &unk_1CFA13390);
      v28 = swift_dynamicCastClassUnconditional();

      v39 = sub_1CF7F16AC(sub_1CF8F0ED8, v28);
      v20 = v40;

      sub_1CF7447FC(v16);

      if (v20)
      {
        v41 = 0;
      }

      else
      {
        v41 = v39;
      }

      result = v41 + v26;
      if (!__OFADD__(v26, v41))
      {
        return result;
      }

      __break(1u);
    }

    v42 = result;
    objc_autoreleasePoolPop(v27);

    sub_1CF7447FC(v16);
    return v42;
  }

  v30 = fpfs_current_or_default_log();
  v31 = v44;
  sub_1CF9E6128();
  v32 = sub_1CF9E6108();
  v33 = sub_1CF9E72B8();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_1CEFC7000, v32, v33, "no read-only connection available, skipping non-evictable resolution", v34, 2u);
    MEMORY[0x1D386CDC0](v34, -1, -1);
  }

  (*(v49 + 8))(v31, v50);
  v35 = v46;
  sub_1CF9E5988();
  v36 = sub_1CF9E5A18();
  v38 = sub_1CF7F1160(v36, v37);

  sub_1CF7447FC(v16);
  (*(v47 + 8))(v35, v48);
  return v38;
}

void *sub_1CF87AFA8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_1CF9E5A58();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E5988();
  v12 = sub_1CF9E5A18();
  v14 = sub_1CF7F1160(v12, v13);

  (*(v8 + 8))(v11, v7);
  v15 = a1[3];
  v16 = a1[4];
  v17 = __swift_project_boxed_opaque_existential_1(a1, v15);
  v18 = *(a2 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB50, &unk_1CFA13390);
  swift_dynamicCastClassUnconditional();
  result = sub_1CF4BCA94(v17, v15, v16);
  if (!v3)
  {
    if (__OFADD__(v14, result))
    {
      __break(1u);
    }

    else
    {
      *a3 = result + v14;
    }
  }

  return result;
}

Swift::Int64 __swiftcall FPDDomainFPFSBackend.accumulatedSizeOfPinnedItems()()
{
  v1 = sub_1CF9E5248();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v52[1] = v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1CF9E5268();
  v53 = *(v54 - 8);
  v4 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v52[0] = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1CF9E6118();
  v56 = *(v57 - 8);
  v6 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v58 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v55 = v52 - v9;
  v10 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue);
  v69 = v0;
  v11 = fpfs_current_log();
  v12 = fpfs_adopt_log();
  v79 = 0;
  v80 = 1;
  aBlock = sub_1CF9E73C8();
  v72 = v13;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v14 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v14);

  sub_1CF9E6978();

  v15 = __fp_log_fork();

  v78 = 1;
  v79 = v15;
  v80 = 0;
  v60 = v11;
  v61 = &v79;
  v62 = v10;
  v63 = "accumulatedSizeOfPinnedItems()";
  v64 = 30;
  v65 = 2;
  v66 = sub_1CF8F0E2C;
  v67 = &v68;
  v77 = 0;
  v16 = swift_allocObject();
  v16[2] = &v78;
  v16[3] = sub_1CF903344;
  v16[4] = &v59;
  v16[5] = &v77;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1CF903478;
  *(v17 + 24) = v16;
  v75 = sub_1CF1C0B54;
  v76 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v72 = 1107296256;
  v73 = sub_1CEFFD02C;
  v74 = &block_descriptor_253;
  v18 = _Block_copy(&aBlock);

  FPDispatchAsyncAndWait(v10, v18);
  _Block_release(v18);
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v77)
  {
LABEL_23:
    swift_willThrow();
    sub_1CF7447FC(v78);

    result = fpfs_adopt_log();
    __break(1u);
    return result;
  }

  v19 = v78;
  if (v78 == 1)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v20 = fpfs_adopt_log();

  if (!v19)
  {
    return 0;
  }

  v21 = *(v19 + qword_1EC4EBCD0);
  if (!v21)
  {
    v28 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v29 = sub_1CF9E6108();
    v30 = sub_1CF9E72B8();
    v31 = os_log_type_enabled(v29, v30);
    v32 = v57;
    v33 = v56;
    if (v31)
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1CEFC7000, v29, v30, "[Pin] no read-only connection available, skipping pinned disk space resolution", v34, 2u);
      MEMORY[0x1D386CDC0](v34, -1, -1);
    }

    (*(v33 + 8))(v55, v32);
    sub_1CF9E5198();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CEFCCCA4(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    v35 = v52[0];
    v36 = v54;
    sub_1CF9E57D8();
    v37 = sub_1CF9E50D8();
    (*(v53 + 8))(v35, v36);
    swift_willThrow();
    v39 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v40 = v37;
    v41 = sub_1CF9E6108();
    v42 = sub_1CF9E72A8();

    if (os_log_type_enabled(v41, v42))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v44 = 138412290;
      swift_getErrorValue();
      v46 = Error.prettyDescription.getter(v70);
      *(v44 + 4) = v46;
      *v45 = v46;
      _os_log_impl(&dword_1CEFC7000, v41, v42, "[Pin] Unable to compute accumulated pinned items disk space: %@", v44, 0xCu);
      sub_1CEFCCC44(v45, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v45, -1, -1);
      MEMORY[0x1D386CDC0](v44, -1, -1);

      sub_1CF7447FC(v19);
    }

    else
    {
      sub_1CF7447FC(v19);
    }

    (*(v33 + 8))(v58, v32);
    return 0;
  }

  v22 = *(v19 + qword_1EC4EBCD0 + 8);
  sub_1CF1FD6B8(*(v19 + qword_1EC4EBCD0), v22);
  v23 = v21;
  sub_1CF1FD6F8(v21, v22);
  if ((*(v19 + 82) & 0x20) != 0)
  {
    MEMORY[0x1EEE9AC00](v24);
    v52[-2] = sub_1CF8F0EF8;
    v52[-1] = v19;
    v38 = objc_autoreleasePoolPush();
    v50 = sub_1CF804C70(v19, 1, "executeBlockOnRO(db:roDB:_:)", 28, 2, 0, sub_1CF902D14, &v52[-4]);
    objc_autoreleasePoolPop(v38);

    sub_1CF7447FC(v19);
    return v50;
  }

  else
  {
    v25 = *(v19 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB50, &unk_1CFA13390);
    v26 = swift_dynamicCastClassUnconditional();
    v27 = v23;

    v47 = sub_1CF7F16AC(sub_1CF8F0F14, v26);
    v49 = v48;

    sub_1CF7447FC(v19);

    if (v49)
    {
      return 0;
    }

    else
    {
      return v47;
    }
  }
}

void *sub_1CF87BA44@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = a1[3];
  v7 = a1[4];
  v8 = __swift_project_boxed_opaque_existential_1(a1, v6);
  v9 = *(a2 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB50, &unk_1CFA13390);
  swift_dynamicCastClassUnconditional();
  result = sub_1CF4BCBC0(v8, v6, v7);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

Swift::OpaquePointer_optional __swiftcall FPDDomainFPFSBackend.accumulatedSizeOfItems()()
{
  v1 = sub_1CF9E5248();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v50[1] = v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1CF9E5268();
  v51 = *(v52 - 8);
  v4 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v50[0] = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1CF9E6118();
  v54 = *(v55 - 8);
  v6 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v56 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v53 = v50 - v9;
  v10 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue);
  v67 = v0;
  v11 = fpfs_current_log();
  v12 = fpfs_adopt_log();
  v77 = 0;
  v78 = 1;
  aBlock = sub_1CF9E73C8();
  v70 = v13;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v14 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v14);

  sub_1CF9E6978();

  v15 = __fp_log_fork();

  v76 = 1;
  v77 = v15;
  v78 = 0;
  v58 = v11;
  v59 = &v77;
  v60 = v10;
  v61 = "accumulatedSizeOfItems()";
  v62 = 24;
  v63 = 2;
  v64 = sub_1CF8F0E2C;
  v65 = &v66;
  v75 = 0;
  v16 = swift_allocObject();
  v16[2] = &v76;
  v16[3] = sub_1CF903344;
  v16[4] = &v57;
  v16[5] = &v75;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1CF903478;
  *(v17 + 24) = v16;
  v73 = sub_1CF1C0B54;
  v74 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v70 = 1107296256;
  v71 = sub_1CEFFD02C;
  v72 = &block_descriptor_266;
  v18 = _Block_copy(&aBlock);

  FPDispatchAsyncAndWait(v10, v18);
  _Block_release(v18);
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v75)
  {
LABEL_20:
    swift_willThrow();
    sub_1CF7447FC(v76);

    v48 = fpfs_adopt_log();
    __break(1u);
    goto LABEL_21;
  }

  v19 = v76;
  if (v76 == 1)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v20 = fpfs_adopt_log();

  if (!v19)
  {
LABEL_16:
    v48 = 0;
    goto LABEL_21;
  }

  v22 = *(v19 + qword_1EC4EBCD0);
  if (!v22)
  {
    v28 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v29 = sub_1CF9E6108();
    v30 = sub_1CF9E72B8();
    v31 = os_log_type_enabled(v29, v30);
    v32 = v55;
    v33 = v54;
    if (v31)
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1CEFC7000, v29, v30, "No db read-only connection available", v34, 2u);
      MEMORY[0x1D386CDC0](v34, -1, -1);
    }

    (*(v33 + 8))(v53, v32);
    sub_1CF9E5198();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CEFCCCA4(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    v35 = v50[0];
    v36 = v52;
    sub_1CF9E57D8();
    v37 = sub_1CF9E50D8();
    (*(v51 + 8))(v35, v36);
    swift_willThrow();
    v39 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v40 = v37;
    v41 = sub_1CF9E6108();
    v42 = sub_1CF9E72A8();

    if (os_log_type_enabled(v41, v42))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v44 = 138412290;
      swift_getErrorValue();
      v46 = Error.prettyDescription.getter(v68);
      *(v44 + 4) = v46;
      *v45 = v46;
      _os_log_impl(&dword_1CEFC7000, v41, v42, "Unable to compute accumulated items disk space: %@", v44, 0xCu);
      sub_1CEFCCC44(v45, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v45, -1, -1);
      MEMORY[0x1D386CDC0](v44, -1, -1);

      sub_1CF7447FC(v19);
    }

    else
    {
      sub_1CF7447FC(v19);
    }

    (*(v33 + 8))(v56, v32);
    goto LABEL_16;
  }

  v23 = *(v19 + qword_1EC4EBCD0 + 8);
  sub_1CF1FD6B8(*(v19 + qword_1EC4EBCD0), v23);
  v24 = v22;
  sub_1CF1FD6F8(v22, v23);
  if ((*(v19 + 82) & 0x20) != 0)
  {
    MEMORY[0x1EEE9AC00](v25);
    v50[-2] = sub_1CF8F0F60;
    v50[-1] = v19;
    v38 = objc_autoreleasePoolPush();
    v49 = sub_1CF805594(v19, 1, "executeBlockOnRO(db:roDB:_:)", 28, 2, 0, sub_1CF8F0F1C, &v50[-4]);
    objc_autoreleasePoolPop(v38);

    sub_1CF7447FC(v19);
    v48 = v49;
  }

  else
  {
    v26 = *(v19 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB50, &unk_1CFA13390);
    swift_dynamicCastClassUnconditional();
    v27 = v24;

    v47 = sub_1CF807B1C(v27, 2);

    sub_1CF7447FC(v19);

    v48 = v47;
  }

LABEL_21:
  result.value._rawValue = v48;
  result.is_nil = v21;
  return result;
}

uint64_t sub_1CF87C3D4@<X0>(char *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(uint64_t)@<X2>, void *a4@<X8>)
{
  v8 = objc_sync_enter(a1);
  if (v8)
  {
    MEMORY[0x1EEE9AC00](v8);
    v15 = a1;
    fp_preconditionFailure(_:file:line:)(a2, v14, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v9 = *&a1[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend___fpfs];

  v10 = objc_sync_exit(a1);
  if (v10)
  {
    MEMORY[0x1EEE9AC00](v10);
    v15 = a1;
    fp_preconditionFailure(_:file:line:)(a3, v14, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  if (v9 || (v11 = *&a1[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_startupQueue], MEMORY[0x1EEE9AC00](v10), v15 = a1, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4C28, &qword_1CFA17E60), result = sub_1CF9E7398(), (v9 = v16) != 0))
  {
    v13 = *(v9 + 16);
  }

  else
  {
    v13 = 0;
  }

  *a4 = v13;
  return result;
}

unint64_t sub_1CF87C56C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v6 = a1[3];
  v7 = a1[4];
  v8 = __swift_project_boxed_opaque_existential_1(a1, v6);
  v9 = *(a2 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB50, &unk_1CFA13390);
  swift_dynamicCastClassUnconditional();
  result = sub_1CF4BCD28(v8, v6, v7);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

BOOL sub_1CF87C694(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_22;
  }

  if (a1 > 0x64)
  {
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/fpfs/FPDDomainFPFSBackend.swift", 94, 2, 4228);
  }

  v3 = *(v1 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_providerDomainID);
  v4 = [v3 pathComponents];
  v5 = sub_1CF9E6D48();

  v6 = *(v5 + 16);

  if (v6 >= 2)
  {
    v7 = [v3 stringByDeletingLastPathComponent];
    if (!v7)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v7 = sub_1CF9E6888();
    }

    v3 = v7;
  }

  v8 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v10 = v9;

  v11 = v8 == 0xD00000000000002BLL && 0x80000001CFA30030 == v10;
  if (v11 || (sub_1CF9E8048() & 1) != 0 || (v8 == 0xD000000000000032 ? (v12 = 0x80000001CFA30060 == v10) : (v12 = 0), v12))
  {

    goto LABEL_19;
  }

  v13 = sub_1CF9E8048();

  result = 0;
  if (v13)
  {
LABEL_19:
    v15 = sub_1CF518B08(0x64uLL);
    if (!__OFADD__(v15, 1))
    {
      return (v15 + 1) <= a1;
    }

    __break(1u);
LABEL_22:
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/fpfs/FPDDomainFPFSBackend.swift", 94, 2, 4227);
  }

  return result;
}

uint64_t FPDDomainFPFSBackend.fetchTelemetryReport(withAlwaysFetchExpandedUsageStats:completionHandler:)(char a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  *(v8 + 32) = v3;
  *(v8 + 40) = a1;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1CF903260;
  *(v9 + 24) = v7;
  swift_retain_n();
  v10 = v3;

  sub_1CEFD4024("fetchTelemetryReport(withAlwaysFetchExpandedUsageStats:completionHandler:)", 74, 2, sub_1CF903280, v9, sub_1CF8F0F7C, v8);
}

void sub_1CF87C984(uint64_t a1, void (*a2)(void, id), uint64_t a3, void *a4, char a5)
{
  v10 = sub_1CF9E6118();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 16);
  v16 = *(v15 + qword_1EC4EBCD0);
  if (v16)
  {
    v17 = *(v15 + qword_1EC4EBCD0 + 8);
    sub_1CF1FD6B8(*(v15 + qword_1EC4EBCD0), v17);
    v18 = v16;
    sub_1CF1FD6F8(v16, v17);
    v19 = swift_allocObject();
    *(v19 + 16) = a2;
    *(v19 + 24) = a3;
    v20 = swift_allocObject();
    *(v20 + 16) = v15;
    *(v20 + 24) = a4;
    *(v20 + 32) = a2;
    *(v20 + 40) = a3;
    *(v20 + 48) = v18;
    *(v20 + 56) = a5 & 1;
    *(v20 + 64) = a1;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_1CF903260;
    *(v21 + 24) = v19;
    swift_retain_n();
    v22 = v18;

    v23 = a4;

    sub_1CF7AAF88("fetchTelemetryReport(withAlwaysFetchExpandedUsageStats:completionHandler:)", 74, 2, 2, sub_1CF7BA950, v21, sub_1CF8FEE18, v20);
  }

  else
  {
    v24 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v25 = sub_1CF9E6108();
    v26 = sub_1CF9E72A8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1CEFC7000, v25, v26, "No read-only connection available to generate telemetry report", v27, 2u);
      MEMORY[0x1D386CDC0](v27, -1, -1);
    }

    (*(v11 + 8))(v14, v10);
    v28 = FPNotSupportedError();
    a2(0, v28);
  }
}

uint64_t sub_1CF87CC90(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, void *a6, int a7, uint64_t a8)
{
  v9 = v8;
  v96 = a7;
  v101 = a5;
  v102 = a6;
  v97 = a4;
  v98 = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v93 = *(v12 - 8);
  v13 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v94 = v14;
  v95 = &v77[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v77[-v16];
  v18 = sub_1CF9E64A8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v77[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  v103 = v23;
  *(v23 + 24) = 1;
  if ((*(a2 + 82) & 4) != 0)
  {
    v24 = a2;
    v25 = *(a2 + 64);
    *v22 = v25;
    (*(v19 + 104))(v22, *MEMORY[0x1E69E8020], v18);
    v26 = v25;
    a2 = sub_1CF9E64D8();
    v27 = (*(v19 + 8))(v22, v18);
    if ((a2 & 1) == 0)
    {
      __break(1u);
      goto LABEL_29;
    }

    v28 = *(v24 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB70, &unk_1CFA0A280);
    v29 = *(*(swift_dynamicCastClassUnconditional() + 32) + qword_1EDEBBB18);
    a2 = v24;
    if (v29)
    {
      v30 = v29 + *(*v29 + 136);
      swift_beginAccess();
      if ((*(v30 + 57) & 1) == 0)
      {
        v31 = *(v30 + 48);
        if (*(v30 + 56))
        {
          if (v31 > 1)
          {
            v31 = 0;
          }

          else
          {
            if (!v31)
            {
              goto LABEL_11;
            }

            v31 = 0x7FFFFFFFFFFFFFFFLL;
          }
        }

        v32 = v103;
        *(v103 + 16) = v31;
        *(v32 + 24) = 0;
      }
    }
  }

LABEL_11:
  v99 = a8;
  v33 = *(a2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB70, &unk_1CFA0A280);
  v34 = *(*(swift_dynamicCastClassUnconditional() + 32) + qword_1EDEBBB18);
  if (v34)
  {
    v35 = a2;
    v36 = v34 + *(*v34 + 136);
    swift_beginAccess();
    v37 = type metadata accessor for BackgroundDownloaderPacerState();
    sub_1CEFCCBDC(v36 + *(v37 + 44), v17, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v38 = v34 + *(*v34 + 136);
    swift_beginAccess();
    v39 = *(v38 + *(v37 + 48));
    if (v39)
    {

      v40 = [v39 dailyValue];
      v41 = 0;
      a2 = v35;
      goto LABEL_17;
    }

    a2 = v35;
  }

  else
  {
    v42 = sub_1CF9E5CF8();
    (*(*(v42 - 8) + 56))(v17, 1, 1, v42);
  }

  v40 = 0;
  v41 = 1;
LABEL_17:
  v27 = objc_sync_enter(a2);
  if (v27)
  {
LABEL_29:
    MEMORY[0x1EEE9AC00](v27);
    v75 = &v77[-32];
    *&v77[-16] = a2;
    goto LABEL_32;
  }

  v43 = *(a2 + qword_1EDEADAA8);
  v44 = objc_sync_exit(a2);
  if (v44)
  {
    MEMORY[0x1EEE9AC00](v44);
    v76 = &v77[-32];
    *&v77[-16] = a2;
    goto LABEL_34;
  }

  v89 = v40;
  v100 = a2;
  v88 = v41;
  if (v34)
  {

    v86 = sub_1CF802EB8();
    v85 = v45;
  }

  else
  {
    v86 = 0;
    v85 = 1;
  }

  v46 = *(swift_dynamicCastClassUnconditional() + 32);
  v47 = *(v46 + qword_1EDEBBAF0);
  v48 = *(v46 + qword_1EDEBBAD0);
  v91 = v34;
  v92 = v9;
  v87 = v43;
  v84 = v46;
  if (!v48)
  {

    v90 = 0;
    v80 = 0;
    v81 = 1;
    goto LABEL_27;
  }

  swift_retain_n();

  v49 = objc_sync_enter(v48);
  if (v49)
  {
    MEMORY[0x1EEE9AC00](v49);
    v75 = &v77[-32];
    *&v77[-16] = v48;
LABEL_32:
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v75, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v50 = sub_1CF385874();
  v51 = objc_sync_exit(v48);
  if (v51)
  {
    MEMORY[0x1EEE9AC00](v51);
    v76 = &v77[-32];
    *&v77[-16] = v48;
LABEL_34:
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v76, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v81 = v50 ^ 1;

  v80 = sub_1CF38773C();
  v90 = v48;

LABEL_27:
  v78 = v47 ^ 1;
  v52 = v98;
  v82 = *&v98[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_dumpQueue];
  v53 = swift_allocObject();
  v79 = v53;
  v54 = v97;
  v55 = v101;
  *(v53 + 16) = v97;
  *(v53 + 24) = v55;
  v83 = v17;
  v56 = v17;
  v57 = v95;
  sub_1CEFCCBDC(v56, v95, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v58 = (*(v93 + 80) + 64) & ~*(v93 + 80);
  v59 = (v58 + v94 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v60 = (v58 + v94 + 15) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  v62 = v100;
  *(v61 + 16) = v52;
  *(v61 + 24) = v62;
  *(v61 + 32) = v102;
  *(v61 + 40) = v96 & 1;
  v63 = v103;
  *(v61 + 48) = v99;
  *(v61 + 56) = v63;
  sub_1CEFE55D0(v57, v61 + v58, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v64 = v61 + v59;
  *v64 = v89;
  *(v64 + 4) = v88;
  v65 = v61 + v60;
  *v65 = v86;
  *(v65 + 8) = v85 & 1;
  *(v65 + 9) = v78;
  v66 = v61 + ((v60 + 17) & 0xFFFFFFFFFFFFFFF8);
  *v66 = v84;
  *(v66 + 8) = v81 & 1;
  *(v66 + 9) = v80 & 1;
  *(v66 + 10) = v87;
  v67 = (v61 + ((v60 + 35) & 0xFFFFFFFFFFFFFFF8));
  v68 = v101;
  *v67 = v54;
  v67[1] = v68;
  v69 = swift_allocObject();
  v70 = v79;
  *(v69 + 16) = sub_1CF903260;
  *(v69 + 24) = v70;
  v71 = swift_allocObject();
  v71[2] = sub_1CF8FEE44;
  v71[3] = v61;
  v71[4] = sub_1CF903280;
  v71[5] = v69;
  swift_retain_n();

  v72 = v52;

  v73 = v102;

  sub_1CF01001C(0, "fetchTelemetryReport(withAlwaysFetchExpandedUsageStats:completionHandler:)", 74, 2, sub_1CF8FEFD4, v71);

  sub_1CEFCCC44(v83, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
}

void sub_1CF87D638(uint64_t a1, uint64_t a2, void *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, char a10, char a11, uint64_t a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17)
{
  v17 = a8;
  v27[16] = a4;
  v28 = a1;
  v29 = a5;
  v30 = a2;
  v31 = a6 + 16;
  v32 = a7;
  v33 = a8;
  v19 = HIDWORD(a8) & 1;
  v34 = BYTE4(a8) & 1;
  v35 = a9;
  v36 = a10 & 1;
  v37 = a11;
  v38 = a12;
  v39 = a13;
  v40 = a14;
  v41 = a15;
  v42 = a16;
  v43 = a17;
  if ((*(a2 + 82) & 0x20) != 0)
  {
    MEMORY[0x1EEE9AC00](a1);
    v22[2] = sub_1CF8FEFE0;
    v22[3] = v27;
    v21 = objc_autoreleasePoolPush();
    sub_1CF804374(a2, 1, "executeBlockOnRO(db:roDB:_:)", 28, 2, 0, sub_1CF8FF064, v22);
    objc_autoreleasePoolPop(v21);
  }

  else
  {
    v46 = &type metadata for SQLDatabaseReadOnlyAccessor;
    v47 = &off_1F4C179D8;
    v44 = a3;
    v45 = 2;
    v26 = a7;
    v24 = a5;
    v23 = a1;
    v48 = a4;
    v25 = (a6 + 16);
    v20 = a3;
    sub_1CF87D894(&v44, v48 & 1, v23, v24, a2, v25, v26, v17 | (v19 << 32), a9, a10 & 1, a11 & 1, a12, a13 & 1, a14 & 1, a15 & 1, a16, a17);
    __swift_destroy_boxed_opaque_existential_1(&v44);
  }
}

uint64_t sub_1CF87D894(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, void **a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, uint64_t a12, char a13, char a14, unsigned __int8 a15, uint64_t a16, uint64_t a17)
{
  v392 = a8;
  v390 = a7;
  v404 = a6;
  v412 = sub_1CF9E5A58();
  v410 = *(v412 - 8);
  v21 = *(v410 + 64);
  MEMORY[0x1EEE9AC00](v412);
  v403 = &v378[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23);
  v408 = &v378[-v24];
  MEMORY[0x1EEE9AC00](v25);
  v409 = &v378[-v26];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v30 = &v378[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v31);
  v394 = &v378[-v32];
  v33 = sub_1CF9E5CF8();
  v34 = *(v33 - 8);
  v395 = v33;
  v396 = v34;
  v35 = v34[8];
  MEMORY[0x1EEE9AC00](v33);
  v391 = &v378[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v37);
  v388 = &v378[-v38];
  MEMORY[0x1EEE9AC00](v39);
  v393 = &v378[-v40];
  MEMORY[0x1EEE9AC00](v41);
  v387 = &v378[-v42];
  v402 = a3;
  v389 = v30;
  if ((a2 & 1) != 0 || sub_1CF87C694(0xAuLL))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v44 = Strong;
      v45 = [Strong volume];

      sub_1CF51CA74(v417);
      v397 = v417[0];
      v398 = v417[1];
      v399 = v417[2];
      v400 = v417[3];
      v401 = v417[4];
      LODWORD(v406) = v418;
    }

    else
    {
      v397 = 0;
      v398 = 0;
      v399 = 0;
      v400 = 0;
      v401 = 0;
      LODWORD(v406) = 1;
    }

    v405 = 1;
  }

  else
  {
    v397 = 0;
    v398 = 0;
    v399 = 0;
    v400 = 0;
    v401 = 0;
    v405 = 0;
    LODWORD(v406) = 1;
  }

  v46 = sub_1CF7469D8();
  v47 = a1[3];
  v48 = a1[4];
  v49 = __swift_project_boxed_opaque_existential_1(a1, v47);
  v50 = *(a5 + 32);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB50, &unk_1CFA13390);
  swift_dynamicCastClassUnconditional();
  v52 = v411;
  sub_1CF4BA5A8(v49, v47, v48, &v419);
  v53 = v52;
  if (v52)
  {
  }

  v386 = a1;
  v382 = v51;
  v383 = v50;
  v407 = a5;
  v55 = swift_allocObject();
  v385 = v55;
  *(v55 + 16) = v46;
  v56 = (v55 + 16);
  v57 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
  sub_1CF5174A4(2);
  v59 = v58;

  if (v59)
  {
    v60 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
  }

  else
  {
    v60 = 0;
    *(&v414 + 1) = 0;
    v415 = 0;
  }

  v61 = v386;
  isUniquelyReferenced_nonNull_native = 0xD000000000000010;
  *&v414 = v59;
  v416 = v60;
  sub_1CF1C8750(&v414, 0xD000000000000010, 0x80000001CFA5E5C0);
  v63 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
  sub_1CF5174A4(2);
  v65 = v64;

  if (v65)
  {
    v66 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
  }

  else
  {
    v66 = 0;
    *(&v414 + 1) = 0;
    v415 = 0;
  }

  *&v414 = v65;
  v416 = v66;
  sub_1CF1C8750(&v414, 0xD000000000000010, 0x80000001CFA5E5E0);
  v67 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
  sub_1CF5174A4(2);
  v69 = v68;

  if (v69)
  {
    v70 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
  }

  else
  {
    v70 = 0;
    *(&v414 + 1) = 0;
    v415 = 0;
  }

  *&v414 = v69;
  v416 = v70;
  sub_1CF1C8750(&v414, 0xD000000000000010, 0x80000001CFA5E600);
  v71 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
  sub_1CF5174A4(2);
  v73 = v72;

  if (v73)
  {
    v74 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
  }

  else
  {
    v74 = 0;
    *(&v414 + 1) = 0;
    v415 = 0;
  }

  *&v414 = v73;
  v416 = v74;
  sub_1CF1C8750(&v414, 0xD000000000000010, 0x80000001CFA5E620);
  v75 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
  sub_1CF5174A4(2);
  v77 = v76;

  if (v77)
  {
    v78 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
  }

  else
  {
    v78 = 0;
    *(&v414 + 1) = 0;
    v415 = 0;
  }

  *&v414 = v77;
  v416 = v78;
  sub_1CF1C8750(&v414, 0xD000000000000010, 0x80000001CFA5E640);
  v79 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
  sub_1CF5174A4(2);
  v81 = v80;

  if (v81)
  {
    v82 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
  }

  else
  {
    v82 = 0;
    *(&v414 + 1) = 0;
    v415 = 0;
  }

  *&v414 = v81;
  v416 = v82;
  sub_1CF1C8750(&v414, 0x7373656C61746164, 0xEC0000006765725FLL);
  v83 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
  sub_1CF5174A4(2);
  v85 = v84;

  if (v85)
  {
    v86 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
  }

  else
  {
    v86 = 0;
    *(&v414 + 1) = 0;
    v415 = 0;
  }

  *&v414 = v85;
  v416 = v86;
  sub_1CF1C8750(&v414, 0x7373656C61746164, 0xEC000000676B705FLL);
  v87 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
  sub_1CF5174A4(2);
  v89 = v88;

  if (v89)
  {
    v90 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
  }

  else
  {
    v90 = 0;
    *(&v414 + 1) = 0;
    v415 = 0;
  }

  *&v414 = v89;
  v416 = v90;
  sub_1CF1C8750(&v414, 0x7373656C61746164, 0xEC0000007269645FLL);
  v91 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
  sub_1CF5174A4(2);
  v93 = v92;

  if (v93)
  {
    v94 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
  }

  else
  {
    v94 = 0;
    *(&v414 + 1) = 0;
    v415 = 0;
  }

  *&v414 = v93;
  v416 = v94;
  sub_1CF1C8750(&v414, 0x6F765F6C61746F74, 0xED00006765725F6CLL);
  v95 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
  sub_1CF5174A4(2);
  v97 = v96;

  if (v97)
  {
    v98 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
  }

  else
  {
    v98 = 0;
    *(&v414 + 1) = 0;
    v415 = 0;
  }

  *&v414 = v97;
  v416 = v98;
  sub_1CF1C8750(&v414, 0x6F765F6C61746F74, 0xED0000676B705F6CLL);
  v99 = v428;
  v100 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
  sub_1CF5174A4(2);
  v102 = v101;

  if (v102)
  {
    v103 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
  }

  else
  {
    v103 = 0;
    *(&v414 + 1) = 0;
    v415 = 0;
  }

  *&v414 = v102;
  v416 = v103;
  sub_1CF1C8750(&v414, 0xD000000000000015, 0x80000001CFA5E660);
  if (v99)
  {
    v104 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    sub_1CF5174A4(2);
    v106 = v105;

    if (v106)
    {
      v107 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
    }

    else
    {
      v107 = 0;
      *(&v414 + 1) = 0;
      v415 = 0;
    }

    *&v414 = v106;
    v416 = v107;
  }

  else
  {
    v416 = MEMORY[0x1E69E6530];
    *&v414 = 0;
  }

  sub_1CF1C8750(&v414, 0xD000000000000013, 0x80000001CFA5E680);
  v384 = a15;
  v108 = v407;
  v411 = v56;
  if (!v405)
  {
    goto LABEL_158;
  }

  v109 = *(v61 + 24);
  v110 = *(v61 + 32);
  v111 = __swift_project_boxed_opaque_existential_1(v61, v109);
  v112 = *(v108 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5060, &qword_1CFA052D0);
  swift_dynamicCastClassUnconditional();
  v113 = v61;
  v114 = v404;
  swift_beginAccess();
  sub_1CF4BB0F0(*v114, *(v114 + 8), v111, v109, v110, v430);
  v115 = 0x1E696A000uLL;
  v116 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
  sub_1CF5174A4(2);
  v118 = v117;

  if (v118)
  {
    v119 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
  }

  else
  {
    v119 = 0;
    *(&v414 + 1) = 0;
    v415 = 0;
  }

  v61 = v113;
  isUniquelyReferenced_nonNull_native = 0xD000000000000010;
  *&v414 = v118;
  v416 = v119;
  sub_1CF1C8750(&v414, 0xD00000000000001DLL, 0x80000001CFA5E8D0);
  v120 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
  sub_1CF5174A4(2);
  v122 = v121;

  if (v122)
  {
    v123 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
  }

  else
  {
    v123 = 0;
    *(&v414 + 1) = 0;
    v415 = 0;
  }

  *&v414 = v122;
  v416 = v123;
  sub_1CF1C8750(&v414, 0xD00000000000001DLL, 0x80000001CFA5E8F0);
  v124 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
  sub_1CF5174A4(2);
  v126 = v125;

  if (v126)
  {
    v127 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
  }

  else
  {
    v127 = 0;
    *(&v414 + 1) = 0;
    v415 = 0;
  }

  *&v414 = v126;
  v416 = v127;
  sub_1CF1C8750(&v414, 0xD00000000000001DLL, 0x80000001CFA5E910);
  v416 = MEMORY[0x1E69E6370];
  LOBYTE(v414) = v431;
  sub_1CF1C8750(&v414, 0xD000000000000010, 0x80000001CFA5E930);
  v128 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
  sub_1CF5174A4(2);
  v130 = v129;

  if (v130)
  {
    v131 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
  }

  else
  {
    v131 = 0;
    *(&v414 + 1) = 0;
    v415 = 0;
  }

  *&v414 = v130;
  v416 = v131;
  sub_1CF1C8750(&v414, 0xD000000000000012, 0x80000001CFA5E950);
  if ((*(v407 + 82) & 4) != 0)
  {
    v132 = v433;
    v133 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    v404 = v132;
    v134 = [v133 initWithUnsignedLongLong_];
    sub_1CF5174A4(2);
    v136 = v135;

    if (v136)
    {
      v137 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
    }

    else
    {
      v137 = 0;
      *(&v414 + 1) = 0;
      v415 = 0;
    }

    *&v414 = v136;
    v416 = v137;
    sub_1CF1C8750(&v414, 0xD000000000000012, 0x80000001CFA5E970);
    v138 = v434;
    v139 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
    sub_1CF5174A4(2);
    v141 = v140;

    if (v141)
    {
      v142 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
    }

    else
    {
      v142 = 0;
      *(&v414 + 1) = 0;
      v415 = 0;
    }

    *&v414 = v141;
    v416 = v142;
    sub_1CF1C8750(&v414, 0xD00000000000001ALL, 0x80000001CFA5E990);
    v143 = v435;
    v144 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    v381 = v143;
    v145 = [v144 initWithUnsignedLongLong_];
    sub_1CF5174A4(2);
    v147 = v146;

    if (v147)
    {
      v148 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
    }

    else
    {
      v148 = 0;
      *(&v414 + 1) = 0;
      v415 = 0;
    }

    *&v414 = v147;
    v416 = v148;
    sub_1CF1C8750(&v414, 0xD000000000000022, 0x80000001CFA5E9B0);
    v149 = v404;
    if (v404)
    {
      v150 = v404;
      v151 = 0x1E696A000uLL;
      v152 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      sub_1CF5174A4(2);
      v154 = v153;

      if (v154)
      {
        v155 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
      }

      else
      {
        v155 = 0;
        *(&v414 + 1) = 0;
        v415 = 0;
      }

      v157 = &_swift_FORCE_LOAD___swiftMLCompute___FileProviderDaemon;
      *&v414 = v154;
      v416 = v155;
      sub_1CF1C8750(&v414, 0xD000000000000025, 0x80000001CFA5E9E0);
      v158 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      sub_1CF5174A4(2);
      v160 = v159;

      if (v160)
      {
        v161 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
      }

      else
      {
        v161 = 0;
        *(&v414 + 1) = 0;
        v415 = 0;
      }

      *&v414 = v160;
      v416 = v161;
      sub_1CF1C8750(&v414, 0xD00000000000002DLL, 0x80000001CFA5EA10);
    }

    else
    {
      v156 = MEMORY[0x1E69E6530];
      v416 = MEMORY[0x1E69E6530];
      *&v414 = -1;
      sub_1CF1C8750(&v414, 0xD000000000000025, 0x80000001CFA5E9E0);
      v416 = v156;
      *&v414 = -1;
      sub_1CF1C8750(&v414, 0xD00000000000002DLL, 0x80000001CFA5EA10);
      v151 = 0x1E696A000;
      v157 = &_swift_FORCE_LOAD___swiftMLCompute___FileProviderDaemon;
    }

    v162 = v436;
    v163 = objc_allocWithZone(*(v151 + 3480));
    v164 = *(v157 + 488);
    v380 = v162;
    v165 = [v163 v164];
    sub_1CF5174A4(2);
    v167 = v166;

    if (v167)
    {
      v168 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
    }

    else
    {
      v168 = 0;
      *(&v414 + 1) = 0;
      v415 = 0;
    }

    *&v414 = v167;
    v416 = v168;
    sub_1CF1C8750(&v414, 0xD00000000000002ALL, 0x80000001CFA5EA40);
    v169 = v437;
    v404 = [objc_allocWithZone(*(v151 + 3480)) *(v157 + 488)];
    sub_1CF5174A4(2);
    v171 = v170;
    if (v170)
    {
      v170 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
    }

    else
    {
      *(&v414 + 1) = 0;
      v415 = 0;
    }

    *&v414 = v171;
    v416 = v170;
    sub_1CF1C8750(&v414, 0xD000000000000032, 0x80000001CFA5EA70);
    v172 = v438;
    v381 = [objc_allocWithZone(*(v151 + 3480)) *(v157 + 488)];
    sub_1CF5174A4(2);
    v174 = v173;
    if (v173)
    {
      v173 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
    }

    else
    {
      *(&v414 + 1) = 0;
      v415 = 0;
    }

    *&v414 = v174;
    v416 = v173;
    sub_1CF1C8750(&v414, 0xD00000000000003ALL, 0x80000001CFA5EAB0);
    v175 = v380;
    if (v380)
    {
      v176 = v380;
      v115 = 0x1E696A000uLL;
      v177 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      sub_1CF5174A4(2);
      v179 = v178;

      if (v179)
      {
        v180 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
      }

      else
      {
        v180 = 0;
        *(&v414 + 1) = 0;
        v415 = 0;
      }

      *&v414 = v179;
      v416 = v180;
      isUniquelyReferenced_nonNull_native = 0xD000000000000010;
      sub_1CF1C8750(&v414, 0xD00000000000003DLL, 0x80000001CFA5EAF0);
      v183 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      sub_1CF5174A4(2);
      v185 = v184;

      if (v185)
      {
        v186 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
      }

      else
      {
        v186 = 0;
        *(&v414 + 1) = 0;
        v415 = 0;
      }

      v182 = v394;
      *&v414 = v185;
      v416 = v186;
      sub_1CF1C8750(&v414, 0xD000000000000045, 0x80000001CFA5EB30);
    }

    else
    {
      v181 = MEMORY[0x1E69E6530];
      v416 = MEMORY[0x1E69E6530];
      *&v414 = -1;
      sub_1CF1C8750(&v414, 0xD00000000000003DLL, 0x80000001CFA5EAF0);
      v416 = v181;
      *&v414 = -1;
      sub_1CF1C8750(&v414, 0xD000000000000045, 0x80000001CFA5EB30);
      isUniquelyReferenced_nonNull_native = 0xD000000000000010;
      v115 = 0x1E696A000;
      v182 = v394;
    }

    v380 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_domain;
    v187 = swift_unknownObjectWeakLoadStrong();
    if (v187)
    {
      v188 = v187;
      v189 = [v187 indexer];

      if (v189)
      {
        v379 = [v189 isIndexingEnabled];
        v190 = [v189 state];
        v191 = [v190 lastDropDate];

        if (v191)
        {
          sub_1CF9E5CB8();

          v192 = v393;
          sub_1CF9E5CE8();
          sub_1CF9E5C28();
          v194 = v193;
          v195 = v396[1];
          v195(v192, v395);
          v196 = [objc_allocWithZone(*(v115 + 3480)) initWithDouble_];
          sub_1CF5174A4(2);
          v198 = v197;

          if (v198)
          {
            v199 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
          }

          else
          {
            v199 = 0;
            *(&v414 + 1) = 0;
            v415 = 0;
          }

          *&v414 = v198;
          v416 = v199;
          sub_1CF1C8750(&v414, 0xD000000000000013, 0x80000001CFA5EC30);
          v195(v387, v395);
          isUniquelyReferenced_nonNull_native = 0xD000000000000010;
          v115 = 0x1E696A000uLL;
        }

        v200 = [v189 state];
        v201 = [v200 getFileRedonationRequests];

        if (v201)
        {
          sub_1CF5174A4(2);
          v203 = v202;
          if (v202)
          {
            v202 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
          }

          else
          {
            *(&v414 + 1) = 0;
            v415 = 0;
          }

          *&v414 = v203;
          v416 = v202;
          sub_1CF1C8750(&v414, 0xD000000000000016, 0x80000001CFA5EC10);
        }

        else
        {
        }
      }

      else
      {
        v379 = 0;
      }

      v182 = v394;
    }

    else
    {
      v379 = 0;
    }

    v205 = v386[3];
    v204 = v386[4];
    v206 = __swift_project_boxed_opaque_existential_1(v386, v205);
    v207 = *(v407 + qword_1EDEBBE30);
    sub_1CF2504D0(v206, v205, v204, v182);
    v208 = v395;
    v209 = v396;
    v210 = v396 + 6;
    v394 = v396[6];
    if (v394(v182, 1, v395) == 1)
    {
      sub_1CEFCCC44(v182, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    }

    else
    {
      v387 = v210;
      (v209[4])(v388, v182, v208);
      v211 = v393;
      sub_1CF9E5CE8();
      sub_1CF9E5C28();
      v213 = v212;
      v214 = v209[1];
      v214(v211, v208);
      v215 = [objc_allocWithZone(*(v115 + 3480)) initWithDouble_];
      sub_1CF5174A4(2);
      v217 = v216;

      if (v217)
      {
        v218 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
      }

      else
      {
        v218 = 0;
        *(&v414 + 1) = 0;
        v415 = 0;
      }

      *&v414 = v217;
      v416 = v218;
      sub_1CF1C8750(&v414, 0xD000000000000013, 0x80000001CFA5EBF0);
      v208 = v395;
      v214(v388, v395);
      v209 = v396;
    }

    v219 = v389;
    sub_1CEFCCBDC(v390, v389, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    if (v394(v219, 1, v208) == 1)
    {
      v220 = sub_1CEFCCC44(v219, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    }

    else
    {
      (v209[4])(v391, v219, v208);
      v221 = v393;
      sub_1CF9E5CE8();
      v115 = 0x1E696A000uLL;
      sub_1CF9E5C28();
      v223 = v222;
      v225 = v209 + 1;
      v224 = v209[1];
      v396 = v225;
      v224(v221, v208);
      v226 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      sub_1CF5174A4(2);
      v228 = v227;

      if (v228)
      {
        v229 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
      }

      else
      {
        v229 = 0;
        *(&v414 + 1) = 0;
        v415 = 0;
      }

      *&v414 = v228;
      v416 = v229;
      sub_1CF1C8750(&v414, 0xD00000000000001ELL, 0x80000001CFA5EBD0);
      v220 = (v224)(v391, v395);
    }

    if ((v392 & 0x100000000) == 0)
    {
      v230 = [objc_allocWithZone(*(v115 + 3480)) initWithInt_];
      sub_1CF5174A4(2);
      v232 = v231;

      if (v232)
      {
        v233 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
      }

      else
      {
        v233 = 0;
        *(&v414 + 1) = 0;
        v415 = 0;
      }

      *&v414 = v232;
      v416 = v233;
      v220 = sub_1CF1C8750(&v414, 0xD000000000000026, 0x80000001CFA5EBA0);
    }

    if ((a10 & 1) == 0)
    {
      LOBYTE(v235) = a14;
      LOBYTE(v61) = a13;
      if (a11)
      {
        isUniquelyReferenced_nonNull_native = a9 | 4;
      }

      else
      {
        isUniquelyReferenced_nonNull_native = a9;
      }

      LOBYTE(v413[0]) = 0;
      if (qword_1EDEAD4D8 == -1)
      {
        goto LABEL_138;
      }

      goto LABEL_263;
    }

    v61 = v386;
  }

  while (1)
  {
    if ((v406 & 1) == 0)
    {
      v244 = objc_allocWithZone(*(v115 + 3480));
      v245 = [v244 initWithUnsignedLongLong_];
      sub_1CF5174A4(2);
      v247 = v246;

      if (v247)
      {
        v248 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
      }

      else
      {
        v248 = 0;
        *(&v414 + 1) = 0;
        v415 = 0;
      }

      *&v414 = v247;
      v416 = v248;
      sub_1CF1C8750(&v414, 0x69645F6C61746F74, 0xEF657A69735F6B73);
      v249 = objc_allocWithZone(*(v115 + 3480));
      v250 = [v249 initWithUnsignedLongLong_];
      sub_1CF5174A4(2);
      v252 = v251;

      if (v252)
      {
        v253 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
      }

      else
      {
        v253 = 0;
        *(&v414 + 1) = 0;
        v415 = 0;
      }

      *&v414 = v252;
      v416 = v253;
      sub_1CF1C8750(&v414, 0xD000000000000013, 0x80000001CFA5E850);
      v254 = objc_allocWithZone(*(v115 + 3480));
      v255 = [v254 initWithUnsignedLongLong_];
      sub_1CF5174A4(2);
      v257 = v256;

      if (v257)
      {
        v258 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
      }

      else
      {
        v258 = 0;
        *(&v414 + 1) = 0;
        v415 = 0;
      }

      *&v414 = v257;
      v416 = v258;
      sub_1CF1C8750(&v414, 0xD000000000000012, 0x80000001CFA5E870);
      v259 = objc_allocWithZone(*(v115 + 3480));
      v260 = [v259 initWithUnsignedLongLong_];
      sub_1CF5174A4(2);
      v262 = v261;

      if (v262)
      {
        v263 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
      }

      else
      {
        v263 = 0;
        *(&v414 + 1) = 0;
        v415 = 0;
      }

      *&v414 = v262;
      v416 = v263;
      sub_1CF1C8750(&v414, 0xD000000000000015, 0x80000001CFA5E890);
      v264 = objc_allocWithZone(*(v115 + 3480));
      v265 = [v264 initWithUnsignedLongLong_];
      sub_1CF5174A4(2);
      v267 = v266;

      if (v267)
      {
        v268 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
      }

      else
      {
        v268 = 0;
        *(&v414 + 1) = 0;
        v415 = 0;
      }

      *&v414 = v267;
      v416 = v268;
      sub_1CF1C8750(&v414, 0xD000000000000013, 0x80000001CFA5E8B0);
    }

    v269 = *(v61 + 24);
    a12 = *(v61 + 32);
    v270 = __swift_project_boxed_opaque_existential_1(v61, v269);
    sub_1CF250D80(v270, v269, a12);
    if (v53)
    {
    }

    if (v272 != 1)
    {
      v274 = v272;
      v275 = v271;
      if (v384)
      {
        a12 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
        sub_1CF5174A4(2);
        v277 = v276;

        if (v277)
        {
          v278 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
        }

        else
        {
          v278 = 0;
          *(&v414 + 1) = 0;
          v415 = 0;
        }

        *&v414 = v277;
        v416 = v278;
      }

      else
      {
        v416 = MEMORY[0x1E69E6530];
        *&v414 = 0;
      }

      sub_1CF1C8750(&v414, 0xD000000000000019, 0x80000001CFA5E810);
      v61 = v386;
      if (v274)
      {
        v416 = MEMORY[0x1E69E6158];
        *&v414 = v275;
        *(&v414 + 1) = v274;
        sub_1CF1C8750(&v414, 0xD000000000000018, 0x80000001CFA5E830);
      }
    }

    v279 = sub_1CEFCE64C();
    v235 = v407;
    v397 = 0;
    v280 = *(v279 + 16);
    if (v280 < 2 || (v396 = v279, v416 = MEMORY[0x1E69E6530], *&v414 = v280 - 1, sub_1CF1C8750(&v414, 0xD000000000000013, 0x80000001CFA5E7B0), v281 = v396[2], v281 == 1))
    {

LABEL_227:
      v327 = *(v61 + 24);
      v328 = *(v61 + 32);
      v329 = __swift_project_boxed_opaque_existential_1(v61, v327);
      v330 = v397;
      v331 = sub_1CF8F2468(v235, v329, v327, v328);
      if (!v330)
      {
        v335 = v334;
        v336 = v333;
        if (v332)
        {
          v337 = MEMORY[0x1E69E6158];
        }

        else
        {
          v331 = 0;
          v337 = 0;
          v415 = 0;
        }

        *&v414 = v331;
        *(&v414 + 1) = v332;
        v416 = v337;
        sub_1CF1C8750(&v414, 0xD00000000000001CLL, 0x80000001CFA5E6A0);
        if (v335)
        {
          v338 = MEMORY[0x1E69E6158];
        }

        else
        {
          v336 = 0;
          v338 = 0;
          v415 = 0;
        }

        *&v414 = v336;
        *(&v414 + 1) = v335;
        v416 = v338;
        sub_1CF1C8750(&v414, 0xD000000000000026, 0x80000001CFA5E6C0);
        v339 = *(v61 + 32);
        v340 = __swift_project_boxed_opaque_existential_1(v61, *(v61 + 24));
        v341 = *(v407 + 40);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5060, &qword_1CFA052D0);
        swift_dynamicCastClassUnconditional();
        v342 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
        sub_1CF5174A4(2);
        v344 = v343;

        if (v344)
        {
          v345 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
        }

        else
        {
          v345 = 0;
          *(&v414 + 1) = 0;
          v415 = 0;
        }

        *&v414 = v344;
        v416 = v345;
        sub_1CF1C8750(&v414, 0xD00000000000002CLL, 0x80000001CFA5E6F0);
        v346 = *(v61 + 24);
        v412 = *(v61 + 32);
        v347 = __swift_project_boxed_opaque_existential_1(v61, v346);
        v348 = type metadata accessor for VFSItem(0);
        v349 = sub_1CEFD57E0(0, &qword_1EDEAB520, 0x1E6967388);
        v350 = sub_1CEFCCCA4(qword_1EDEABC30, type metadata accessor for VFSItem);
        v351 = sub_1CF2B1654(&qword_1EDEA3460, &qword_1EDEAB520, 0x1E6967388);
        v352 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
        sub_1CF5174A4(2);
        v354 = v353;

        if (v354)
        {
          v355 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
        }

        else
        {
          v355 = 0;
          *(&v414 + 1) = 0;
          v415 = 0;
        }

        *&v414 = v354;
        v416 = v355;
        sub_1CF1C8750(&v414, 0xD000000000000015, 0x80000001CFA5E720);
        v356 = swift_unknownObjectWeakLoadStrong();
        if (v356)
        {
          v357 = v356;
          v358 = [v356 disconnectionState];
          v416 = MEMORY[0x1E69E6810];
          *&v414 = v358;
          sub_1CF1C8750(&v414, 0xD000000000000013, 0x80000001CFA5E790);
          v359 = [v357 userEnabled];
          v416 = MEMORY[0x1E69E6370];
          LOBYTE(v414) = v359;
          sub_1CF1C8750(&v414, 0x64656C62616E65, 0xE700000000000000);
          v360 = [v357 nsDomain];
          v361 = sub_1CF827720();

          if ((v361 & 0x100) == 0)
          {
            v416 = MEMORY[0x1E69E7508];
            LOBYTE(v414) = v361;
            sub_1CF1C8750(&v414, 0x656D697265707865, 0xED000064695F746ELL);
          }
        }

        v362 = [objc_opt_self() defaultStore];
        v363 = [v362 getTrialConfigurationState];

        v364 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v366 = v365;

        v416 = MEMORY[0x1E69E6158];
        *&v414 = v364;
        *(&v414 + 1) = v366;
        sub_1CF1C8750(&v414, 0xD000000000000013, 0x80000001CFA5E740);
        if (v405)
        {
          v367 = (*(v407 + 82) >> 2) & 1;
        }

        else
        {
          LOBYTE(v367) = 0;
        }

        v368 = swift_unknownObjectWeakLoadStrong();
        if (v368)
        {
          v369 = v368;
          v370 = [v368 indexer];

          v371 = v385;
          if (v370)
          {
            type metadata accessor for FPFSIndexer();
            v372 = swift_dynamicCastClass();
            if (!v372)
            {
            }
          }

          else
          {
            v372 = 0;
          }
        }

        else
        {
          v372 = 0;
          v371 = v385;
        }

        v373 = *(*(swift_dynamicCastClassUnconditional() + 16) + 136);
        v374 = swift_allocObject();
        *(v374 + 16) = v371;
        *(v374 + 24) = v367;
        *(v374 + 32) = v372;
        *(v374 + 40) = a16;
        *(v374 + 48) = a17;
        v375 = *(v373 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deferredWQ);
        v376 = swift_allocObject();
        v376[2] = v373;
        v376[3] = sub_1CF8FF08C;
        v376[4] = v374;
        v377 = v372;

        swift_retain_n();

        sub_1CF01001C(0, "estimateSize(completionHandler:)", 32, 2, sub_1CF8FF0A4, v376);
      }
    }

    if (v281)
    {
      break;
    }

LABEL_262:
    __break(1u);
LABEL_263:
    v220 = swift_once();
LABEL_138:
    MEMORY[0x1EEE9AC00](v220);
    *&v378[-16] = v413;
    sub_1CF06779C(sub_1CF8FF0B0, &v378[-32]);
    if (isUniquelyReferenced_nonNull_native)
    {
      v236 = 0;
    }

    else
    {
      v236 = LOBYTE(v413[0]);
    }

    v237 = *(a12 + qword_1EDEBBAD0);
    v238 = isUniquelyReferenced_nonNull_native | v236;
    if ((v61 & ((isUniquelyReferenced_nonNull_native & 0x80) == 0)) != 0)
    {
      v238 |= 0x80uLL;
    }

    if (v235)
    {
      v238 |= 0x100uLL;
    }

    if (v384)
    {
      v239 = v238 | 2;
    }

    else
    {
      v239 = v238;
    }

    v240 = swift_unknownObjectWeakLoadStrong();
    if (v240)
    {
      v241 = v240;

      v242 = [v241 isHidden];

      isUniquelyReferenced_nonNull_native = 0xD000000000000010;
      if (v379 & 1 | ((v242 & 1) == 0))
      {
        v61 = v386;
        goto LABEL_157;
      }

      v61 = v386;
      if ((v239 & 0x40) != 0)
      {
        goto LABEL_157;
      }

LABEL_155:
      v239 |= 0x40uLL;
      goto LABEL_157;
    }

    v61 = v386;
    isUniquelyReferenced_nonNull_native = 0xD000000000000010;
    if (v379)
    {
    }

    else
    {

      if ((v239 & 0x40) == 0)
      {
        goto LABEL_155;
      }
    }

LABEL_157:
    v243 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v416 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
    *&v414 = v243;
    sub_1CF1C8750(&v414, 0xD00000000000001CLL, 0x80000001CFA5EB80);

LABEL_158:
    v115 = 0x1E696A000uLL;
  }

  v401 = v396 + ((*(v410 + 80) + 32) & ~*(v410 + 80));
  v399 = v281;
  v400 = v410 + 16;
  v406 = v410 + 8;
  v398 = 0x80000001CFA5E7D0;
  v404 = 0x80000001CFA5E7F0;
  v61 = 1;
  v282 = v409;
  while (1)
  {
    if (v281 == v61)
    {
      __break(1u);
LABEL_258:
      __break(1u);
LABEL_259:
      __break(1u);
LABEL_260:
      __break(1u);
LABEL_261:
      __break(1u);
      goto LABEL_262;
    }

    v285 = v410;
    v286 = v412;
    (*(v410 + 16))(v282, &v401[*(v410 + 72) * v61], v412);
    v235 = sub_1CF9E5A18();
    v288 = v287;
    v289 = v408;
    sub_1CF9E58D8();
    v290 = sub_1CF9E5A18();
    v292 = v291;
    v53 = *(v285 + 8);
    (v53)(v289, v286);
    if (v235 == v290 && v288 == v292)
    {

LABEL_199:
      v416 = MEMORY[0x1E69E6370];
      LOBYTE(v414) = 1;
      sub_1CEFE9EB8(&v414, v413);
      a12 = v411;
      v293 = *v411;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v439 = *a12;
      v294 = v439;
      *a12 = 0x8000000000000000;
      v295 = sub_1CEFE4328(0xD000000000000010, v404);
      v297 = *(v294 + 16);
      v298 = (v296 & 1) == 0;
      v299 = __OFADD__(v297, v298);
      v300 = v297 + v298;
      v282 = v409;
      if (v299)
      {
        goto LABEL_258;
      }

      a12 = v296;
      if (*(v294 + 24) >= v300)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v325 = v295;
          sub_1CF7CF1E0();
          v295 = v325;
        }
      }

      else
      {
        sub_1CF7C3178(v300, isUniquelyReferenced_nonNull_native);
        v295 = sub_1CEFE4328(0xD000000000000010, v404);
        if ((a12 & 1) != (v301 & 1))
        {
          goto LABEL_264;
        }
      }

      isUniquelyReferenced_nonNull_native = 0xD000000000000010;
      v235 = v439;
      if (a12)
      {
        v302 = (*(v439 + 56) + 32 * v295);
        __swift_destroy_boxed_opaque_existential_1(v302);
        sub_1CEFE9EB8(v413, v302);
        (v53)(v282, v412);
      }

      else
      {
        *(v439 + 8 * (v295 >> 6) + 64) |= 1 << v295;
        v303 = (*(v235 + 48) + 16 * v295);
        v304 = v404;
        *v303 = 0xD000000000000010;
        v303[1] = v304;
        sub_1CEFE9EB8(v413, (*(v235 + 56) + 32 * v295));
        (v53)(v282, v412);
        v305 = *(v235 + 16);
        v299 = __OFADD__(v305, 1);
        v306 = v305 + 1;
        if (v299)
        {
          goto LABEL_259;
        }

        *(v235 + 16) = v306;
      }

      v307 = *v411;
      *v411 = v235;

LABEL_210:
      v281 = v399;
      goto LABEL_193;
    }

    LOBYTE(v235) = sub_1CF9E8048();

    if (v235)
    {
      goto LABEL_199;
    }

    v282 = v409;
    v235 = sub_1CF9E5A18();
    a12 = v308;
    v309 = v403;
    sub_1CF9E5918();
    v310 = sub_1CF9E5A18();
    v312 = v311;
    (v53)(v309, v412);
    if (v235 != v310)
    {
      goto LABEL_214;
    }

    if (a12 == v312)
    {
    }

    else
    {
LABEL_214:
      LOBYTE(v235) = sub_1CF9E8048();

      if ((v235 & 1) == 0)
      {
        (v53)(v282, v412);
        isUniquelyReferenced_nonNull_native = 0xD000000000000010;
        goto LABEL_210;
      }
    }

    v416 = MEMORY[0x1E69E6370];
    LOBYTE(v414) = 1;
    sub_1CEFE9EB8(&v414, v413);
    a12 = v411;
    v313 = *v411;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v439 = *a12;
    v314 = v439;
    *a12 = 0x8000000000000000;
    v315 = sub_1CEFE4328(0xD000000000000012, v398);
    v317 = *(v314 + 16);
    v318 = (v316 & 1) == 0;
    v299 = __OFADD__(v317, v318);
    v319 = v317 + v318;
    if (v299)
    {
      goto LABEL_260;
    }

    a12 = v316;
    if (*(v314 + 24) < v319)
    {
      break;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v326 = v315;
      sub_1CF7CF1E0();
      v315 = v326;
    }

    isUniquelyReferenced_nonNull_native = 0xD000000000000010;
    v235 = v439;
    if ((a12 & 1) == 0)
    {
LABEL_223:
      *(v235 + 8 * (v315 >> 6) + 64) |= 1 << v315;
      v321 = (*(v235 + 48) + 16 * v315);
      v322 = v398;
      *v321 = 0xD000000000000012;
      v321[1] = v322;
      sub_1CEFE9EB8(v413, (*(v235 + 56) + 32 * v315));
      (v53)(v282, v412);
      v323 = *(v235 + 16);
      v299 = __OFADD__(v323, 1);
      v324 = v323 + 1;
      if (v299)
      {
        goto LABEL_261;
      }

      *(v235 + 16) = v324;
      goto LABEL_192;
    }

LABEL_191:
    v283 = (*(v235 + 56) + 32 * v315);
    __swift_destroy_boxed_opaque_existential_1(v283);
    sub_1CEFE9EB8(v413, v283);
    (v53)(v282, v412);
LABEL_192:
    v281 = v399;
    v284 = *v411;
    *v411 = v235;

LABEL_193:
    ++v61;
    v235 = v407;
    if (v281 == v61)
    {

      v61 = v386;
      goto LABEL_227;
    }
  }

  sub_1CF7C3178(v319, isUniquelyReferenced_nonNull_native);
  isUniquelyReferenced_nonNull_native = 0xD000000000000010;
  v315 = sub_1CEFE4328(0xD000000000000012, v398);
  if ((a12 & 1) == (v320 & 1))
  {
    v235 = v439;
    if ((a12 & 1) == 0)
    {
      goto LABEL_223;
    }

    goto LABEL_191;
  }

LABEL_264:
  result = sub_1CF9E8108();
  __break(1u);
  return result;
}