void sub_1CF54C7A8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v106 = a4;
  v111 = a3;
  v96 = sub_1CF9E63D8();
  v95 = *(v96 - 8);
  v7 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v96);
  v94 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v107 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v112 = &v94 - v13;
  v98 = sub_1CF9E6068();
  v97 = *(v98 - 8);
  v14 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v98);
  v101 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v94 - v21;
  v99 = type metadata accessor for Signpost(0);
  v102 = *(v99 - 8);
  v23 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v99);
  v105 = &v94 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v103 = v27;
  v104 = (&v94 - v26);
  MEMORY[0x1EEE9AC00](v28);
  v110 = &v94 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5220, &qword_1CFA0A270);
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v34 = &v94 - v33;
  sub_1CEFCCBDC(a5, &v94 - v33, &qword_1EC4C5220, &qword_1CFA0A270);
  v35 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v36 = (v32 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  sub_1CEFE55D0(v34, v37 + v35, &qword_1EC4C5220, &qword_1CFA0A270);
  *(v37 + v36) = a2;
  v109 = v37;
  v38 = (v37 + ((v36 + 15) & 0xFFFFFFFFFFFFFFF8));
  v39 = v111;
  v40 = v106;
  *v38 = v111;
  v38[1] = v40;
  v41 = swift_allocObject();
  *(v41 + 16) = v39;
  *(v41 + 24) = v40;
  v111 = v41;
  v42 = *(a2 + qword_1EDEBBC38);
  swift_retain_n();
  v108 = a2;

  v106 = fpfs_adopt_log();
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v43 = qword_1EDEBBE40;
  v44 = v97;
  v45 = v98;
  (*(v97 + 56))(v22, 1, 1, v98);
  strcpy(&aBlock, "async batch ");
  BYTE13(aBlock) = 0;
  HIWORD(aBlock) = -5120;
  v46 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v46);

  v47 = aBlock;
  sub_1CEFCCBDC(v22, v19, &unk_1EC4BED20, &unk_1CFA00700);
  v48 = *(v44 + 48);
  v49 = v48(v19, 1, v45);
  v100 = v22;
  if (v49 == 1)
  {
    v50 = v43;
    v51 = v101;
    sub_1CF9E6048();
    if (v48(v19, 1, v45) != 1)
    {
      sub_1CEFCCC44(v19, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v51 = v101;
    (*(v44 + 32))(v101, v19, v45);
  }

  v52 = *(v44 + 16);
  v53 = v44;
  v54 = v110;
  v52(v110, v51, v45);
  v55 = v99;
  *(v54 + *(v99 + 20)) = v43;
  v56 = v54 + *(v55 + 24);
  *v56 = "DB queue wait";
  *(v56 + 8) = 13;
  *(v56 + 16) = 2;
  v57 = v43;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v58 = v51;
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_1CF9FA450;
  *(v59 + 56) = MEMORY[0x1E69E6158];
  *(v59 + 64) = sub_1CEFD51C4();
  *(v59 + 32) = v47;
  sub_1CF9E6028();

  (*(v53 + 8))(v58, v45);
  sub_1CEFCCC44(v100, &unk_1EC4BED20, &unk_1CFA00700);
  v60 = *(v108 + 64);
  v100 = *(v108 + 168);
  v101 = v60;
  v98 = sub_1CF9E6448();
  v99 = *(v98 - 8);
  (*(v99 + 56))(v112, 1, 1, v98);
  v61 = v104;
  sub_1CEFE4F8C(v54, v104, type metadata accessor for Signpost);
  v62 = (*(v102 + 80) + 16) & ~*(v102 + 80);
  v63 = (v103 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  sub_1CEFE4D98(v61, v64 + v62, type metadata accessor for Signpost);
  v65 = (v64 + v63);
  v104 = sub_1CF5543A4;
  v66 = v111;
  *v65 = sub_1CF5543A4;
  v65[1] = v66;
  v67 = v105;
  sub_1CEFE4F8C(v54, v105, type metadata accessor for Signpost);
  v68 = (v63 + 23) & 0xFFFFFFFFFFFFFFF8;
  v69 = (v68 + 15) & 0xFFFFFFFFFFFFFFF8;
  v70 = (v69 + 25) & 0xFFFFFFFFFFFFFFF8;
  v71 = swift_allocObject();
  v72 = v67;
  v73 = v98;
  sub_1CEFE4D98(v72, v71 + v62, type metadata accessor for Signpost);
  v74 = (v71 + v63);
  v75 = v99;
  *v74 = sub_1CF045408;
  v74[1] = 0;
  *(v71 + v68) = v108;
  v76 = v71 + v69;
  *v76 = "evict(_:request:evictionReason:progress:completionHandler:)";
  *(v76 + 8) = 59;
  *(v76 + 16) = 2;
  v77 = (v71 + v70);
  v78 = v111;
  *v77 = v104;
  v77[1] = v78;
  v79 = (v71 + ((v70 + 23) & 0xFFFFFFFFFFFFFFF8));
  v80 = v109;
  *v79 = sub_1CF552C30;
  v79[1] = v80;
  v81 = swift_allocObject();
  v81[2] = sub_1CF554408;
  v81[3] = v64;
  v82 = v100;
  v81[4] = v100;
  swift_retain_n();

  v108 = v64;

  v83 = fpfs_current_log();
  v84 = *(v82 + 16);
  v85 = v107;
  sub_1CEFCCBDC(v112, v107, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v75 + 48))(v85, 1, v73) == 1)
  {
    sub_1CEFCCC44(v85, &unk_1EC4BE370, qword_1CFA01B30);
    v86 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v87 = v94;
    sub_1CF9E6438();
    (*(v75 + 8))(v85, v73);
    v86 = sub_1CF9E63C8();
    (*(v95 + 8))(v87, v96);
  }

  v88 = swift_allocObject();
  v88[2] = v83;
  v88[3] = sub_1CF4858EC;
  v88[4] = v71;
  v116 = sub_1CF2BA17C;
  v117 = v88;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v114 = sub_1CEFCA444;
  v115 = &block_descriptor_363;
  v89 = _Block_copy(&aBlock);
  v90 = v83;

  v116 = sub_1CF2BA180;
  v117 = v81;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v114 = sub_1CEFCA444;
  v115 = &block_descriptor_366;
  v91 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v84, v101, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v86, v89, v91);
  _Block_release(v91);
  _Block_release(v89);

  sub_1CEFCCC44(v112, &unk_1EC4BE370, qword_1CFA01B30);
  sub_1CF007C58(v110, type metadata accessor for Signpost);
  v92 = v106;
  v93 = fpfs_adopt_log();
}

uint64_t sub_1CF54D380(void *a1, uint64_t a2, void *a3, void (*a4)(void), uint64_t a5)
{
  v52 = a5;
  v53 = a4;
  v61 = a1;
  v63 = sub_1CF9E5CF8();
  v7 = *(v63 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v62 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4DE0, &unk_1CFA05398);
  inited = swift_initStackObject();
  v11 = MEMORY[0x1E69E7CC0];
  inited[2] = MEMORY[0x1E69E7CC0];
  inited[3] = v11;
  inited[4] = v11;
  inited[5] = v11;
  v12 = inited + 5;
  v57 = inited;
  inited[6] = 0;
  v13 = *a2;
  v65 = *(a2 + 8);
  v93 = 0;
  v64 = inited + 4;
  swift_beginAccess();
  v14 = sub_1CF1F8144(0, 1, 1, v11);
  v16 = v14[2];
  v15 = v14[3];
  v17 = (v16 + 1);
  if (v16 >= v15 >> 1)
  {
    v14 = sub_1CF1F8144((v15 > 1), v16 + 1, 1, v14);
  }

  v14[2] = v17;
  v18 = &v14[15 * v16];
  v19 = v13;
  v18[4] = v13;
  *(v18 + 40) = v65;
  *(v18 + 41) = 0;
  v18[6] = 0;
  v18[7] = 0;
  v18[8] = 0;
  v18[9] = 0xB000000000000000;
  *(v18 + 5) = 0u;
  *(v18 + 6) = 0u;
  *(v18 + 56) = 257;
  *(v18 + 73) = 2573;
  *v64 = v14;
  swift_endAccess();
  v20 = *(a3 + 81);
  v58 = a3;
  if (v20 < 0 && *(a2 + *(type metadata accessor for VFSItem(0) + 28)) - 1 > 1)
  {
    v21 = v62;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v23 = v22;
    (*(v7 + 8))(v21, v63);
    v25 = v23 * 1000000000.0;
    v26 = fabs(v23 * 1000000000.0);
    if (v26 > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_30;
    }

    v26 = 0xC3E0000000000001;
    if (v25 <= -9.22337204e18)
    {
      goto LABEL_31;
    }

    v26 = 0x43E0000000000000;
    if (v25 >= 9.22337204e18)
    {
      goto LABEL_32;
    }

    v27 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD9D0, &qword_1CF9FAD60);
    a3 = swift_allocObject();
    *(a3 + 152) = v65;
    *(a3 + 1) = 0u;
    *(a3 + 2) = 0u;
    *(a3 + 48) = 1;
    *(a3 + 7) = 0u;
    *(a3 + 9) = 0u;
    a3[11] = 0;
    *(a3 + 6) = xmmword_1CF9FEC30;
    *(a3 + 112) = 0;
    a3[15] = 0;
    a3[16] = v27;
    a3[17] = 2;
    a3[18] = v19;
    swift_beginAccess();

    v24 = sub_1CF1F8120(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v19 = v24[2];
    v26 = v24[3];
    v17 = (v19 + 1);
    if (v19 >= v26 >> 1)
    {
      goto LABEL_33;
    }

    goto LABEL_10;
  }

  v56 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v80 = 0;
    v28 = v62;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v30 = v29;
    v32 = *(v7 + 8);
    v7 += 8;
    v31 = v32;
    v60 = v7;
    v32(v28, v63);
    v33 = v30 * 1000000000.0;
    if (COERCE__INT64(fabs(v30 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if (v33 <= -9.22337204e18)
    {
      goto LABEL_24;
    }

    if (v33 < 9.22337204e18)
    {
      a2 = v33;
      a3 = &v81;
      v17 = &v67;
      v81 = v19;
      v82 = v65;
      v7 = v80;
      v83 = v80;
      v84 = v78;
      v85 = v79;
      v54 = xmmword_1CFA00210;
      v86 = xmmword_1CFA00210;
      v87 = v33;
      v88 = v76;
      *v89 = v77[0];
      *&v89[10] = *(v77 + 10);
      v90 = 0;
      *v92 = v75;
      v91 = v74;
      v92[16] = 9;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v55 = v31;
      v28 = v19;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_15;
      }

      goto LABEL_26;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    v14 = sub_1CF1F8144(0, v14[2] + 1, 1, v14);
LABEL_15:
    v36 = v14[2];
    v35 = v14[3];
    if (v36 >= v35 >> 1)
    {
      v14 = sub_1CF1F8144((v35 > 1), v36 + 1, 1, v14);
      v7 = v80;
    }

    v14[2] = v36 + 1;
    v37 = &v14[15 * v36];
    v38 = *a3;
    v39 = *(a3 + 1);
    v40 = *(a3 + 3);
    *(v37 + 4) = *(a3 + 2);
    *(v37 + 5) = v40;
    *(v37 + 2) = v38;
    *(v37 + 3) = v39;
    v41 = *(a3 + 4);
    v42 = *(a3 + 5);
    v43 = *(a3 + 6);
    *(v37 + 36) = *&v92[13];
    *(v37 + 7) = v42;
    *(v37 + 8) = v43;
    *(v37 + 6) = v41;
    *v64 = v14;
    swift_endAccess();
    v67 = v28;
    v68 = v65;
    v69 = v7;
    *(v17 + 10) = v78;
    v70 = v79;
    *(v17 + 1) = v54;
    v71 = a2;
    v44 = v77[0];
    *(v17 + 5) = v76;
    *(v17 + 7) = v44;
    *(v17 + 66) = *(v17 + 178);
    v72 = 0;
    v45 = v74;
    *(v17 + 99) = v75;
    *(v17 + 83) = v45;
    v73 = 9;
    v17 = &qword_1CF9FE560;
    sub_1CEFCCBDC(&v81, &v66, &qword_1EC4BE6D0, &qword_1CF9FE560);
    sub_1CEFCCC44(&v67, &qword_1EC4BE6D0, &qword_1CF9FE560);
    v12 = v61[3];
    a2 = v61[4];
    v19 = __swift_project_boxed_opaque_existential_1(v61, v12);
    v46 = v62;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v48 = v47;
    v55(v46, v63);
    v49 = v48 * 1000000000.0;
    v26 = fabs(v48 * 1000000000.0);
    if (v26 > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
      goto LABEL_28;
    }

    v26 = 0xC3E0000000000001;
    if (v49 > -9.22337204e18)
    {
      break;
    }

LABEL_28:
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
    v24 = sub_1CF1F8120((v26 > 1), v17, 1, v24);
LABEL_10:
    v24[2] = v17;
    v24[v19 + 4] = a3;
    v56 = v24;
    *v12 = v24;
    swift_endAccess();

    v19 = *a2;
    v65 = *(a2 + 8);
  }

  v26 = 0x43E0000000000000;
  if (v49 >= 9.22337204e18)
  {
    goto LABEL_29;
  }

  v50 = v59;
  sub_1CF521850(v57, v49, v19, v12, a2);
  if (!v50)
  {
    v53(0);
  }

  swift_setDeallocating();
}

uint64_t sub_1CF54DA7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void (*a5)(void *), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t))
{
  sub_1CEFCCBDC(a1, __src, &qword_1EC4C0700, &qword_1CFA05B10);
  if (!*&__src[24])
  {
    v19 = sub_1CEFCCC44(__src, &qword_1EC4C0700, &qword_1CFA05B10);
    return a9(v19);
  }

  sub_1CF054EA0(__src, v28);
  v13 = a2 + *(type metadata accessor for VFSItem(0) + 28);
  if ((*(v13 + *(type metadata accessor for ItemMetadata() + 80)) & 1) == 0)
  {
LABEL_9:
    v19 = __swift_destroy_boxed_opaque_existential_1(v28);
    return a9(v19);
  }

  v14 = v29;
  v15 = v30;
  v16 = __swift_project_boxed_opaque_existential_1(v28, v29);
  v17 = *(a3 + 16);
  v18 = *(a4 + 8);
  v25 = *a4;
  v26 = v18;
  sub_1CF68DDB0(&v25, v16, v14, v15, __src);
  memcpy(__dst, __src, 0x208uLL);
  v20 = sub_1CF08B99C(__dst);
  if (v20 == 1)
  {
    memcpy(v23, __src, sizeof(v23));
LABEL_8:
    sub_1CEFCCC44(v23, &unk_1EC4BFC20, &unk_1CFA0A290);
    goto LABEL_9;
  }

  v21 = memcpy(v23, __src, sizeof(v23));
  if (v23[24] >> 60 == 11)
  {
    goto LABEL_8;
  }

  a5(v21);
  sub_1CEFCCC44(v23, &unk_1EC4BFC20, &unk_1CFA0A290);
  return __swift_destroy_boxed_opaque_existential_1(v28);
}

uint64_t sub_1CF54DC70(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6, int a7, char *a8, BOOL *a9)
{
  v62 = a7;
  v61[0] = a3;
  v15 = a1[3];
  v14 = a1[4];
  v16 = __swift_project_boxed_opaque_existential_1(a1, v15);
  v17 = *(a2 + 16);
  result = sub_1CF68E230(v61, v16, v15, v14, __src);
  if (!v9)
  {
    v19 = a4;
    v20 = v62;
    memcpy(__dst, __src, sizeof(__dst));
    if (sub_1CF08B99C(__dst) == 1)
    {
      memcpy(v58, __src, sizeof(v58));
      return sub_1CEFCCC44(v58, &unk_1EC4BFD80, &unk_1CFA0A2A0);
    }

    memcpy(v58, __src, sizeof(v58));
    v21 = v58[64];
    v22 = (v19 + *(type metadata accessor for VFSItem(0) + 28));
    if ((v22[*(type metadata accessor for ItemMetadata() + 80)] & 1) != 0 && v58[50] >> 60 != 11)
    {
      a5();
      return sub_1CEFCCC44(v58, &unk_1EC4BFD80, &unk_1CFA0A2A0);
    }

    v23 = v21;
    v24 = a1[3];
    v25 = a1[4];
    v26 = __swift_project_boxed_opaque_existential_1(a1, v24);
    (*(**(a2 + 40) + 264))(&v42, v61, v26, v24, v25);
    v36[12] = v54;
    v36[13] = v55;
    v36[14] = v56;
    v36[8] = v50;
    v36[9] = v51;
    v36[10] = v52;
    v36[11] = v53;
    v36[4] = v46;
    v36[5] = v47;
    v36[6] = v48;
    v36[7] = v49;
    v36[0] = v42;
    v36[1] = v43;
    v36[2] = v44;
    v36[3] = v45;
    v38[12] = v54;
    v39 = v55;
    v40 = v56;
    v38[8] = v50;
    v38[9] = v51;
    v38[10] = v52;
    v38[11] = v53;
    v38[4] = v46;
    v38[5] = v47;
    v38[6] = v48;
    v38[7] = v49;
    v38[0] = v42;
    v38[1] = v43;
    v37 = v57;
    v41 = v57;
    v38[2] = v44;
    v38[3] = v45;
    if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v38) == 1)
    {
      return sub_1CEFCCC44(v58, &unk_1EC4BFD80, &unk_1CFA0A2A0);
    }

    else
    {
      v27 = *(a2 + 80);
      if ((v27 & 0x20000) != 0)
      {
        v28 = 3;
      }

      else
      {
        v28 = 1;
      }

      if ((v27 & 0x200) != 0)
      {
        v29 = v28;
      }

      else
      {
        v29 = (v27 & 0x20000uLL) >> 16;
      }

      v30 = sub_1CEFF8538(v39, *(&v39 + 1), 0, v29, 1u, v23 & 1);
      sub_1CEFCCC44(v36, &qword_1EC4BECF0, &unk_1CF9FEEB0);
      v31 = (v20 == 2) & (v27 >> 20);
      if (v30 == 3)
      {
        v32 = v31;
      }

      else
      {
        v32 = 1;
      }

      *a8 = v32;
      result = sub_1CEFCCC44(v58, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      if (*v22 == 1 && (v31 & 1) == 0)
      {
        v34 = v30 != 3 && v30 != 500;
        *a9 = v34;
      }
    }
  }

  return result;
}

void sub_1CF54DFA4(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t), uint64_t a8)
{
  v46 = a8;
  v47 = a7;
  v48 = a6;
  v49 = a3;
  v50 = a4;
  v10 = sub_1CF9E5248();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = sub_1CF9E5268();
  v41 = *(v12 - 8);
  v13 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1CF9E63A8();
  v44 = *(v16 - 8);
  v45 = v16;
  v17 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1CF9E6448();
  v42 = *(v20 - 8);
  v43 = v20;
  v21 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = (a2 + *(type metadata accessor for VFSItem(0) + 28));
  v25 = type metadata accessor for ItemMetadata();
  v26 = v25;
  if (v24[*(v25 + 80)] == 1 && (*v24 == 1 || v24[*(v25 + 112)] == 1 || !fpfs_supports_partial_materialization() || !*&v24[*(v26 + 108)]))
  {
    v49(0);
  }

  else
  {
    v27 = swift_beginAccess();
    if (*(a5 + 16) == 1 && (*v24 == 1 || v24[*(v26 + 84)]))
    {
      v47(v27);
    }

    else
    {
      v28 = swift_allocBox();
      sub_1CEFE4F8C(a2, v29, type metadata accessor for VFSItem);
      v30 = *(*(v48 + 32) + 16);
      type metadata accessor for VFSFileTree(0);
      v31 = swift_dynamicCastClass();
      if (v31)
      {
        v32 = *(v31 + 216);
        v33 = swift_allocObject();
        v34 = v49;
        v35 = v50;
        v33[2] = v28;
        v33[3] = v34;
        v33[4] = v35;
        aBlock[4] = sub_1CF554468;
        aBlock[5] = v33;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1CEFCA444;
        aBlock[3] = &block_descriptor_476;
        v36 = _Block_copy(aBlock);

        v37 = v32;

        sub_1CF9E63F8();
        v51 = MEMORY[0x1E69E7CC0];
        sub_1CF00E8B4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
        sub_1CF01049C();
        v38 = v45;
        sub_1CF9E77B8();
        MEMORY[0x1D3869630](0, v23, v19, v36);
        _Block_release(v36);

        (*(v44 + 8))(v19, v38);
        (*(v42 + 8))(v23, v43);
      }

      else
      {

        sub_1CF9E50F8();
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF00E8B4(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
        sub_1CF9E57D8();
        v39 = sub_1CF9E50D8();
        (*(v41 + 8))(v15, v12);
        v49(v39);
      }
    }
  }
}

void sub_1CF54E500(uint64_t a1, void (*a2)(void *), uint64_t a3)
{
  v34 = a3;
  v35 = a2;
  v3 = sub_1CF9E6118();
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CF9E5248();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = sub_1CF9E5268();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v31 - v16;
  v18 = sub_1CF9E5A58();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for VFSItem(0);
  swift_projectBox();
  swift_beginAccess();
  sub_1CF25116C(v17);
  swift_endAccess();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_1CEFCCC44(v17, &unk_1EC4BE310, qword_1CF9FCBE0);
    sub_1CF9E50F8();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF00E8B4(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    sub_1CF9E57D8();
    v23 = sub_1CF9E50D8();
    (*(v10 + 8))(v13, v9);
    v35(v23);
  }

  else
  {
    v24 = v35;
    (*(v19 + 32))(v22, v17, v18);
    v25 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v26 = sub_1CF9E6108();
    v27 = sub_1CF9E72A8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1CEFC7000, v26, v27, "Should not procedd with eviction due to content policy prevention", v28, 2u);
      MEMORY[0x1D386CDC0](v28, -1, -1);
    }

    (*(v32 + 8))(v6, v33);
    v29 = sub_1CF9E5928();
    v30 = FPMissingAllowsEvictingCapabilitiesError();

    v24(v30);
    (*(v19 + 8))(v22, v18);
  }
}

uint64_t sub_1CF54E97C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6();
  v9 = sub_1CF9E7F98();
  (*(v4 + 8))(v8, a3);
  return v9;
}

uint64_t objectdestroy_2Tm()
{
  v1 = v0[3];

  sub_1CF540FDC(v0[4]);
  v2 = v0[5];

  return swift_deallocObject();
}

void sub_1CF54EAC8(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF532130(a1, (v1 + v6), *(v1 + v7), *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1CF54EB94(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *(a3 + 8);
  v10 = *a3;
  v11 = v5;
  v6 = a1[3];
  v7 = a1[4];
  v8 = __swift_project_boxed_opaque_existential_1(a1, v6);
  return sub_1CF5AA338(&v10, a4, v8, v6, v7);
}

uint64_t sub_1CF54EC3C(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  swift_getAssociatedTypeWitness();
  v10 = *(sub_1CF9E75D8() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  return sub_1CF530E9C(a1, *(v1 + 48), *(v1 + 56), v1 + v8, v1 + v11, *(v1 + v11 + *(v10 + 64)), *(v1 + v11 + *(v10 + 64) + 1), v3, v4, v5, v6);
}

uint64_t sub_1CF54EDA0(uint64_t a1, unsigned __int8 a2)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = *(AssociatedConformanceWitness + 64);
  v5 = swift_checkMetadataState();
  if (v4(v5, AssociatedConformanceWitness))
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v6 = 0x23u >> a2;
    if (a2 > 6u)
    {
      LOBYTE(v6) = 1;
    }
  }

  return v6 & 1;
}

uint64_t sub_1CF54EF04(uint64_t a1, int a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v104 = a3;
  v103 = a2;
  v109 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v101 = *(AssociatedTypeWitness - 8);
  v102 = AssociatedTypeWitness;
  v12 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v93 - v13;
  v15 = swift_getAssociatedTypeWitness();
  v16 = sub_1CF9E75D8();
  v96 = *(v16 - 8);
  v17 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v93 - v18;
  v98 = *(a4 - 8);
  v20 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v97 = &v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = a4;
  v106 = a6;
  v110[0] = a4;
  v110[1] = a5;
  v99 = a5;
  v100 = a7;
  v110[2] = a6;
  v110[3] = a7;
  v23 = type metadata accessor for ItemLookupResult();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v95 = &v93 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v93 - v28;
  v30 = sub_1CF9E6118();
  v31 = v109;
  v107 = *(v30 - 8);
  v108 = v30;
  v32 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v93 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v40 = &v93 - v39;
  if (*(v31 + *(v23 + 56)) == 1)
  {
    v41 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    (*(v24 + 16))(v29, v31, v23);
    v42 = v104;
    sub_1CEFD09A0(v104);
    sub_1CEFD09A0(v42);
    v43 = v24;
    v44 = sub_1CF9E6108();
    v45 = sub_1CF9E7298();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v110[0] = v109;
      *v46 = 136315394;
      v47 = v98;
      v48 = *(v98 + 16);
      v103 = v45;
      v49 = v97;
      v50 = v105;
      v48(v97, v29, v105);
      (*(v43 + 8))(v29, v23);
      v51 = v106;
      v52 = *(v106 + 8);
      v53 = sub_1CF9E7F98();
      v55 = v54;
      (*(v47 + 8))(v49, v50);
      v56 = sub_1CEFD0DF0(v53, v55, v110);

      *(v46 + 4) = v56;
      *(v46 + 12) = 2080;
      v57 = sub_1CF665B0C(v42, v50, v99, v51, v100);
      v59 = v58;
      sub_1CF540FDC(v42);
      sub_1CF540FDC(v42);
      v60 = sub_1CEFD0DF0(v57, v59, v110);

      *(v46 + 14) = v60;
      _os_log_impl(&dword_1CEFC7000, v44, v103, "Found item on disk, but item is not accessible yet %s, request %s", v46, 0x16u);
      v61 = v109;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v61, -1, -1);
      MEMORY[0x1D386CDC0](v46, -1, -1);
LABEL_14:

      (*(v107 + 8))(v40, v108);
      return 0;
    }

    sub_1CF540FDC(v42);
    (*(v43 + 8))(v29, v23);
    v91 = v42;
LABEL_13:
    sub_1CF540FDC(v91);
    goto LABEL_14;
  }

  v94 = v37;
  if ((v103 & 1) != 0 && (v62 = v96, (*(v96 + 16))(v19, v31 + *(v23 + 52), v16, v38), v63 = (*(*(v15 - 8) + 48))(v19, 1, v15), (*(v62 + 8))(v19, v16), v63 == 1))
  {
    v64 = fpfs_current_or_default_log();
    v40 = v94;
    sub_1CF9E6128();
    v65 = v95;
    (*(v24 + 16))(v95, v31, v23);
    v66 = v104;
    sub_1CEFD09A0(v104);
    sub_1CEFD09A0(v66);
    v67 = v24;
    v44 = sub_1CF9E6108();
    v68 = sub_1CF9E7298();
    if (!os_log_type_enabled(v44, v68))
    {
      sub_1CF540FDC(v66);
      (*(v67 + 8))(v65, v23);
      v91 = v66;
      goto LABEL_13;
    }

    v69 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    v110[0] = v109;
    *v69 = 136315394;
    v70 = v97;
    v71 = v98;
    v72 = v105;
    (*(v98 + 16))(v97, v65, v105);
    (*(v67 + 8))(v65, v23);
    v73 = v106;
    v74 = *(v106 + 8);
    v75 = sub_1CF9E7F98();
    v77 = v76;
    (*(v71 + 8))(v70, v72);
    v78 = sub_1CEFD0DF0(v75, v77, v110);

    *(v69 + 4) = v78;
    *(v69 + 12) = 2080;
    v79 = sub_1CF665B0C(v66, v72, v99, v73, v100);
    v81 = v80;
    sub_1CF540FDC(v66);
    sub_1CF540FDC(v66);
    v82 = sub_1CEFD0DF0(v79, v81, v110);

    *(v69 + 14) = v82;
    _os_log_impl(&dword_1CEFC7000, v44, v68, "Found item on disk, but item is not reconciled yet %s, request %s", v69, 0x16u);
    v83 = v109;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v83, -1, -1);
    MEMORY[0x1D386CDC0](v69, -1, -1);

    (*(v107 + 8))(v94, v108);
  }

  else
  {
    (*(v106 + 64))(v105, v106, v38);
    v84 = v102;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v86 = (*(AssociatedConformanceWitness + 72))(v84, AssociatedConformanceWitness);
    (*(v101 + 8))(v14, v84);
    if ((v86 & 1) == 0)
    {
      return 1;
    }

    v87 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v88 = sub_1CF9E6108();
    v89 = sub_1CF9E7298();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      *v90 = 0;
      _os_log_impl(&dword_1CEFC7000, v88, v89, "Found item on the trash, lookup the root to make sure it's materialized", v90, 2u);
      MEMORY[0x1D386CDC0](v90, -1, -1);
    }

    (*(v107 + 8))(v34, v108);
  }

  return 0;
}

uint64_t sub_1CF54F8BC(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1 + ((*(v7 + 80) + 64) & ~*(v7 + 80));

  return sub_1CF52F30C(a1, v8, v9, v10, v3, v4, v5, v6);
}

uint64_t sub_1CF54F970(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1 + ((*(v7 + 80) + 64) & ~*(v7 + 80));

  return sub_1CF52EC50(a1, v8, v9, v10, v3, v4, v5, v6);
}

char *sub_1CF54FA6C(uint64_t a1)
{
  v6 = *(v1 + 16);
  v7 = *(v1 + 32);
  v3 = *(_s20ParentIDLookupResultVMa() - 8);
  v4 = (*(v3 + 80) + 97) & ~*(v3 + 80);
  return sub_1CF5420D4(a1, *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88), *(v1 + 96), v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1CF54FB28@<X0>(uint64_t a1@<X8>)
{
  v5 = *(v1 + 16);
  v6 = *(v1 + 32);
  v3 = type metadata accessor for ItemLookupResult();
  return (*(*(v3 - 8) + 56))(a1, 1, 1, v3);
}

unint64_t sub_1CF54FB9C(void *a1)
{
  v2 = (*(*(*(v1 + 16) - 8) + 80) + 80) & ~*(*(*(v1 + 16) - 8) + 80);
  v3 = v1 + ((*(*(*(v1 + 16) - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *(v3 + 9);
  return sub_1CF5436E8(a1, *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), v1 + v2, *v3, *(v3 + 8));
}

void sub_1CF54FC38()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0 + ((*(v5 + 80) + 64) & ~*(v5 + 80));

  sub_1CF534F74(v6, v7, v8, v1, v2, v3, v4);
}

uint64_t sub_1CF54FCE4(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = (*(v5 + 80) + 72) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_1CF9E6448() - 8);
  return sub_1CF5351C0(a1, *(v1 + 48), *(v1 + 56), *(v1 + 64), (v1 + v6), *(v1 + v7), *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), (v1 + ((*(v8 + 80) + ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~*(v8 + 80))));
}

uint64_t sub_1CF54FE10(void *a1)
{
  v3 = v1[2];
  v4 = v1[4];
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = v1[6];
  v8 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = a1[3];
  v10 = a1[4];
  v11 = __swift_project_boxed_opaque_existential_1(a1, v9);
  return sub_1CF5AA338(v1 + v6, v8, v11, v9, v10);
}

uint64_t objectdestroy_53Tm()
{
  v1 = v0[2];

  sub_1CF540FDC(v0[3]);
  v2 = v0[5];

  v3 = v0[6];

  return swift_deallocObject();
}

void sub_1CF550004(void *a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF531774(a1, (v1 + v6), *(v1 + v7), *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t objectdestroy_59Tm()
{
  v1 = v0[6];

  sub_1CF540FDC(v0[7]);
  v2 = v0[9];

  return swift_deallocObject();
}

unint64_t sub_1CF550180()
{
  result = qword_1EDEA3730;
  if (!qword_1EDEA3730)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDEA3730);
  }

  return result;
}

void sub_1CF5501CC(void *a1)
{
  v2 = (*(*(*(v1 + 32) - 8) + 80) + 64) & ~*(*(*(v1 + 32) - 8) + 80);
  v3 = (*(*(*(v1 + 32) - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF53E74C(a1, v1 + v2, *(v1 + v3), *(v1 + v3 + 8), *(v1 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8) + 9), *(v1 + ((((v3 + 23) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8)), *(v1 + 32), *(v1 + 56));
}

id sub_1CF5503E0(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_1CF2B1868(result, a2 & 1);
  }

  return result;
}

void sub_1CF5503F8(void *a1, char a2)
{
  v3 = (*(*(*(v2 + 16) - 8) + 80) + 88) & ~*(*(*(v2 + 16) - 8) + 80);
  v4 = *(v2 + 32);
  v5 = *(v2 + 56);
  sub_1CF53E070(a1, a2 & 1, *(v2 + 64), *(v2 + 72), *(v2 + 80), v2 + v3, *(v2 + v3 + *(*(*(v2 + 16) - 8) + 64)), *(v2 + ((v3 + *(*(*(v2 + 16) - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1CF550490(uint64_t a1, char a2, uint64_t (*a3)(void, void), uint64_t a4)
{
  v5 = v4;
  v25 = *v5;
  v10 = *(v25 + 616);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v24 - v13;
  v16 = *(v15 + 632);
  if ((sub_1CF937C7C(v10, v16) & 1) == 0)
  {
    return a3(0, 0);
  }

  if (a2)
  {

    return sub_1CF53CA2C(v5, a1, a3, a4);
  }

  else
  {
    v18 = swift_allocObject();
    v24 = v18;
    *(v18 + 16) = a3;
    *(v18 + 24) = a4;
    (*(v11 + 16))(v14, a1, v10);
    v19 = (*(v11 + 80) + 56) & ~*(v11 + 80);
    v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
    v21 = swift_allocObject();
    *(v21 + 2) = v10;
    v22 = v25;
    *(v21 + 3) = *(v25 + 624);
    *(v21 + 4) = v16;
    *(v21 + 5) = *(v22 + 640);
    *(v21 + 6) = v5;
    (*(v11 + 32))(&v21[v19], v14, v10);
    v23 = &v21[v20];
    *v23 = a3;
    *(v23 + 1) = a4;
    swift_retain_n();

    sub_1CF92DB1C("deleteIfNeeded(childOfDeletedItem:duringDiskImport:request:completionHandler:)", 78, 2, 2, sub_1CF2B1548, v24, sub_1CF550740, v21, MEMORY[0x1E69E6370]);
  }
}

uint64_t sub_1CF550740(void *a1)
{
  v2 = (*(*(*(v1 + 16) - 8) + 80) + 56) & ~*(*(*(v1 + 16) - 8) + 80);
  v3 = v1 + ((*(*(*(v1 + 16) - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1CF53CEA0(a1, *(v1 + 48), v1 + v2, *v3, *(v3 + 8));
}

uint64_t sub_1CF5508C8(void *a1)
{
  v2 = (*(*(*(v1 + 16) - 8) + 80) + 56) & ~*(*(*(v1 + 16) - 8) + 80);
  v3 = (*(*(*(v1 + 16) - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF53C294(a1, *(v1 + 48), v1 + v2, *(v1 + v3), *(v1 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t objectdestroy_128Tm()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 56);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF550A64(void *a1)
{
  v2 = (*(*(*(v1 + 32) - 8) + 80) + 72) & ~*(*(*(v1 + 32) - 8) + 80);
  v3 = (*(*(*(v1 + 32) - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF53EFD0(a1, *(v1 + 64), v1 + v2, *(v1 + v3), *(v1 + v3 + 8), *(v1 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + 32), *(v1 + 56));
}

void sub_1CF550AF4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1CF53F7B0(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56));
}

uint64_t sub_1CF550B04(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4C1588, &unk_1CFA0A260) - 8);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v9 = v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 1);

  return sub_1CF5356C4(a1, v1 + v8, v10, v11, v3, v4, v5);
}

char *sub_1CF550BD8(char *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4C1588, &unk_1CFA0A260) - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v5 + 31) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 31) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF535AA0(a1, *(v1 + 48), v1 + v4, *(v1 + v6), *(v1 + v6 + 8), *(v1 + v6 + 16), *(v1 + v7), *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + v8), *(v1 + v9), *(v1 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 16));
}

uint64_t sub_1CF550CE4(void *a1)
{
  v2 = (*(*(*(v1 + 16) - 8) + 80) + 48) & ~*(*(*(v1 + 16) - 8) + 80);
  v3 = (*(*(*(v1 + 16) - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 31) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF536744(a1, (v1 + v2), *(v1 + v3), *(v1 + v3 + 8), *(v1 + v4), *(v1 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + v5), *(v1 + v5 + 8), *(v1 + v5 + 9), *(v1 + ((v5 + 17) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_1CF550DC8(uint64_t a1)
{
  v2 = (*(*(*(v1 + 16) - 8) + 80) + 48) & ~*(*(*(v1 + 16) - 8) + 80);
  v3 = (*(*(*(v1 + 16) - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 31) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF53733C(a1, (v1 + v2), *(v1 + v3), *(v1 + v3 + 8), *(v1 + v4), *(v1 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + v5), *(v1 + v5 + 8), *(v1 + v5 + 9), *(v1 + ((v5 + 17) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1CF550F28(uint64_t a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v99 = a6;
  v100 = a4;
  LODWORD(v102) = a3;
  v11 = sub_1CF9E6118();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v103 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v96 - v16;
  v105 = a7;

  v18 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFD09A0(a2);
  sub_1CEFD09A0(a2);

  v19 = sub_1CF9E6108();
  v20 = sub_1CF9E7298();
  v21 = os_log_type_enabled(v19, v20);
  v106 = a5;
  v101 = v11;
  v104 = v12;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v107[0] = v98;
    *v22 = 136315650;
    v23 = swift_beginAccess();
    v25 = *(a1 + 32);
    v26 = *(a1 + 40);
    if (*(a1 + 41))
    {
      v27 = v25;
      v28 = NSFileProviderItemIdentifier.description.getter();
      v30 = v29;
      sub_1CEFD0994(v25, v26, 1);
    }

    else
    {
      v109 = *(a1 + 32);
      v110 = v26;
      v28 = VFSItemID.description.getter(v23, v24);
      v30 = v32;
    }

    v33 = sub_1CEFD0DF0(v28, v30, v107);

    *(v22 + 4) = v33;
    *(v22 + 12) = 2080;
    v34 = sub_1CEFD11AC(a2);
    v36 = v35;
    sub_1CF540FDC(a2);
    sub_1CF540FDC(a2);
    v37 = sub_1CEFD0DF0(v34, v36, v107);

    v38 = v102;
    v39 = 0xE700000000000000;
    *(v22 + 14) = v37;
    v40 = 0x6E776F6E6B6E75;
    v41 = 0xEA00000000006E6FLL;
    *(v22 + 22) = 2080;
    v42 = 0x697461646E756F66;
    v43 = 0xE200000000000000;
    v44 = 28774;
    if (v38 != 4)
    {
      v44 = 0x705565746F6D6572;
      v43 = 0xEC00000065746164;
    }

    if (v38 != 3)
    {
      v42 = v44;
      v41 = v43;
    }

    v45 = 0xEB00000000657465;
    v46 = 0x6C65446568636163;
    if (v38 != 1)
    {
      v46 = 1919251317;
      v45 = 0xE400000000000000;
    }

    if (v38)
    {
      v40 = v46;
      v39 = v45;
    }

    if (v38 <= 2)
    {
      v47 = v40;
    }

    else
    {
      v47 = v42;
    }

    if (v38 <= 2)
    {
      v48 = v39;
    }

    else
    {
      v48 = v41;
    }

    v49 = sub_1CEFD0DF0(v47, v48, v107);

    *(v22 + 24) = v49;
    _os_log_impl(&dword_1CEFC7000, v19, v20, "Request to eviction of content of itemID %s request %s reason %s", v22, 0x20u);
    v50 = v98;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v50, -1, -1);
    MEMORY[0x1D386CDC0](v22, -1, -1);

    v31 = v101;
    v98 = *(v104 + 8);
    v98(v17, v101);
    a5 = v106;
  }

  else
  {
    sub_1CF540FDC(a2);
    sub_1CF540FDC(a2);

    v98 = *(v12 + 8);
    v98(v17, v11);
    v31 = v11;
  }

  v51 = swift_allocObject();
  v52 = v105;
  *(v51 + 16) = v99;
  *(v51 + 24) = v52;
  v53 = swift_allocObject();
  *(v53 + 16) = sub_1CF5534C4;
  *(v53 + 24) = v51;
  *(v53 + 32) = a5;
  *(v53 + 40) = a2;
  *(v53 + 48) = v102;
  v54 = v100;
  *(v53 + 56) = v100;

  sub_1CEFD09A0(a2);

  v55 = v54;

  sub_1CEFD09A0(a2);

  v102 = v55;

  v56 = fpfs_current_or_default_log();
  v57 = v103;
  sub_1CF9E6128();
  sub_1CEFD09A0(a2);
  sub_1CEFD09A0(a2);

  v58 = sub_1CF9E6108();
  v59 = sub_1CF9E7298();
  if (os_log_type_enabled(v58, v59))
  {
    v97 = v51;
    v60 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v108 = v100;
    *v60 = 136315906;
    v61 = swift_beginAccess();
    v63 = *(a1 + 32);
    v64 = *(a1 + 40);
    if (*(a1 + 41))
    {
      v65 = v63;
      v66 = NSFileProviderItemIdentifier.description.getter();
      v68 = v67;
      sub_1CEFD0994(v63, v64, 1);
    }

    else
    {
      v109 = *(a1 + 32);
      v110 = v64;
      v66 = VFSItemID.description.getter(v61, v62);
      v68 = v69;
    }

    v70 = sub_1CEFD0DF0(v66, v68, &v108);

    *(v60 + 4) = v70;
    *(v60 + 12) = 2080;
    *(v60 + 14) = sub_1CEFD0DF0(0xD000000000000013, 0x80000001CFA2C390, &v108);
    *(v60 + 22) = 2080;
    v71 = sub_1CEFD11AC(a2);
    v73 = v72;
    sub_1CF540FDC(a2);
    sub_1CF540FDC(a2);
    v74 = sub_1CEFD0DF0(v71, v73, &v108);

    *(v60 + 24) = v74;
    *(v60 + 32) = 2048;
    *(v60 + 34) = 0;
    _os_log_impl(&dword_1CEFC7000, v58, v59, "Lookup itemID %s with behavior %s request %s iteration %ld", v60, 0x2Au);
    v75 = v100;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v75, -1, -1);
    MEMORY[0x1D386CDC0](v60, -1, -1);

    v98(v103, v101);
    a5 = v106;
    v51 = v97;
  }

  else
  {
    sub_1CF540FDC(a2);
    sub_1CF540FDC(a2);

    v98(v57, v31);
  }

  swift_beginAccess();
  v76 = *(a1 + 32);
  v77 = *(a1 + 40);
  if (*(a1 + 41))
  {
    v78 = qword_1EDEA34B0;
    v79 = v76;
    if (v78 != -1)
    {
      swift_once();
    }

    v80 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v82 = v81;
    if (v80 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v82 == v83)
    {

      sub_1CEFD0994(v76, v77, 1);
LABEL_35:
      sub_1CF90CAC8(a2, sub_1CF554414, v53);
      v84 = v102;
      goto LABEL_41;
    }

    v85 = sub_1CF9E8048();

    sub_1CEFD0994(v76, v77, 1);
    if (v85)
    {
      goto LABEL_35;
    }
  }

  else if (!v76 && v77 == 2)
  {
    goto LABEL_35;
  }

  v97 = v51;
  if (((a2 >> 58) & 0x3C | (a2 >> 1) & 3) == 0x1E)
  {
    v86 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
    v87 = v86;
  }

  else
  {
    v88 = swift_allocObject();
    *(v88 + 16) = a2;
    v87 = v88 | 0x7000000000000004;
    v86 = a2;
  }

  sub_1CEFD09A0(v86);
  v89 = swift_allocObject();
  *(v89 + 16) = sub_1CF554414;
  *(v89 + 24) = v53;
  *(v89 + 32) = a5;
  *(v89 + 40) = 0;
  *(v89 + 48) = a2;
  *(v89 + 56) = a1;
  *(v89 + 64) = 0;
  v90 = v102;
  *(v89 + 72) = v102;
  *(v89 + 80) = 0;
  v91 = swift_allocObject();
  *(v91 + 16) = a1;
  *(v91 + 24) = a5;
  *(v91 + 32) = 0;
  *(v91 + 40) = sub_1CF554418;
  *(v91 + 48) = v89;
  *(v91 + 56) = v87;
  v92 = swift_allocObject();
  *(v92 + 16) = sub_1CF554418;
  *(v92 + 24) = v89;
  v93 = *(*v106 + 472);

  sub_1CEFD09A0(a2);
  v84 = v90;

  v94 = v90;

  sub_1CEFD09A0(v87);
  v93("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF554464, v92, sub_1CF55444C, v91);

  sub_1CF540FDC(v87);
LABEL_41:

  sub_1CF540FDC(a2);
}

uint64_t sub_1CF55197C(uint64_t a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v100 = a6;
  v101 = a4;
  LODWORD(v102) = a3;
  v13 = sub_1CF9E6118();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v103 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v98 - v18;
  v107 = a7;

  v106 = a8;

  v20 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFD09A0(a2);
  sub_1CEFD09A0(a2);

  v21 = sub_1CF9E6108();
  v22 = sub_1CF9E7298();
  v23 = os_log_type_enabled(v21, v22);
  v108 = a5;
  v104 = v14;
  v105 = v13;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    v109[0] = v99;
    *v24 = 136315650;
    v25 = swift_beginAccess();
    v27 = *(a1 + 32);
    v28 = *(a1 + 40);
    if (*(a1 + 41))
    {
      v29 = v27;
      v30 = NSFileProviderItemIdentifier.description.getter();
      v32 = v31;
      sub_1CEFD0994(v27, v28, 1);
    }

    else
    {
      v111 = *(a1 + 32);
      v112 = v28;
      v30 = VFSItemID.description.getter(v25, v26);
      v32 = v33;
    }

    v34 = sub_1CEFD0DF0(v30, v32, v109);

    *(v24 + 4) = v34;
    *(v24 + 12) = 2080;
    v35 = sub_1CEFD11AC(a2);
    v37 = v36;
    sub_1CF540FDC(a2);
    sub_1CF540FDC(a2);
    v38 = sub_1CEFD0DF0(v35, v37, v109);

    v39 = v102;
    v40 = 0xE700000000000000;
    *(v24 + 14) = v38;
    v41 = 0x6E776F6E6B6E75;
    v42 = 0xEA00000000006E6FLL;
    *(v24 + 22) = 2080;
    v43 = 0x697461646E756F66;
    v44 = 0xE200000000000000;
    v45 = 28774;
    if (v39 != 4)
    {
      v45 = 0x705565746F6D6572;
      v44 = 0xEC00000065746164;
    }

    if (v39 != 3)
    {
      v43 = v45;
      v42 = v44;
    }

    v46 = 0xEB00000000657465;
    v47 = 0x6C65446568636163;
    if (v39 != 1)
    {
      v47 = 1919251317;
      v46 = 0xE400000000000000;
    }

    if (v39)
    {
      v41 = v47;
      v40 = v46;
    }

    if (v39 <= 2)
    {
      v48 = v41;
    }

    else
    {
      v48 = v43;
    }

    if (v39 <= 2)
    {
      v49 = v40;
    }

    else
    {
      v49 = v42;
    }

    v50 = sub_1CEFD0DF0(v48, v49, v109);

    *(v24 + 24) = v50;
    _os_log_impl(&dword_1CEFC7000, v21, v22, "Request to eviction of content of itemID %s request %s reason %s", v24, 0x20u);
    v51 = v99;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v51, -1, -1);
    MEMORY[0x1D386CDC0](v24, -1, -1);

    v99 = *(v104 + 8);
    v99(v19, v105);
    a5 = v108;
  }

  else
  {
    sub_1CF540FDC(a2);
    sub_1CF540FDC(a2);

    v99 = *(v14 + 8);
    v99(v19, v13);
  }

  v52 = swift_allocObject();
  v54 = v106;
  v53 = v107;
  v52[2] = v100;
  v52[3] = v53;
  v52[4] = v54;
  v55 = swift_allocObject();
  *(v55 + 16) = sub_1CF5523F4;
  *(v55 + 24) = v52;
  *(v55 + 32) = a5;
  *(v55 + 40) = a2;
  *(v55 + 48) = v102;
  v56 = v101;
  *(v55 + 56) = v101;

  sub_1CEFD09A0(a2);

  v57 = v56;

  sub_1CEFD09A0(a2);

  v102 = v57;

  v58 = fpfs_current_or_default_log();
  v59 = v103;
  sub_1CF9E6128();
  sub_1CEFD09A0(a2);
  sub_1CEFD09A0(a2);

  v60 = sub_1CF9E6108();
  v61 = sub_1CF9E7298();
  if (os_log_type_enabled(v60, v61))
  {
    v98 = v52;
    v62 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    v110 = v101;
    *v62 = 136315906;
    v63 = swift_beginAccess();
    v65 = *(a1 + 32);
    v66 = *(a1 + 40);
    if (*(a1 + 41))
    {
      v67 = v65;
      v68 = NSFileProviderItemIdentifier.description.getter();
      v70 = v69;
      sub_1CEFD0994(v65, v66, 1);
    }

    else
    {
      v111 = *(a1 + 32);
      v112 = v66;
      v68 = VFSItemID.description.getter(v63, v64);
      v70 = v71;
    }

    v72 = sub_1CEFD0DF0(v68, v70, &v110);

    *(v62 + 4) = v72;
    *(v62 + 12) = 2080;
    *(v62 + 14) = sub_1CEFD0DF0(0xD000000000000013, 0x80000001CFA2C390, &v110);
    *(v62 + 22) = 2080;
    v73 = sub_1CEFD11AC(a2);
    v75 = v74;
    sub_1CF540FDC(a2);
    sub_1CF540FDC(a2);
    v76 = sub_1CEFD0DF0(v73, v75, &v110);

    *(v62 + 24) = v76;
    *(v62 + 32) = 2048;
    *(v62 + 34) = 0;
    _os_log_impl(&dword_1CEFC7000, v60, v61, "Lookup itemID %s with behavior %s request %s iteration %ld", v62, 0x2Au);
    v77 = v101;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v77, -1, -1);
    MEMORY[0x1D386CDC0](v62, -1, -1);

    v99(v103, v105);
    a5 = v108;
    v52 = v98;
  }

  else
  {
    sub_1CF540FDC(a2);
    sub_1CF540FDC(a2);

    v99(v59, v105);
  }

  swift_beginAccess();
  v78 = *(a1 + 32);
  v79 = *(a1 + 40);
  if (*(a1 + 41))
  {
    v80 = qword_1EDEA34B0;
    v81 = v78;
    if (v80 != -1)
    {
      swift_once();
    }

    v82 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v84 = v83;
    if (v82 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v84 == v85)
    {

      sub_1CEFD0994(v78, v79, 1);
LABEL_35:
      sub_1CF90CAC8(a2, sub_1CF552400, v55);
      v86 = v102;
      goto LABEL_41;
    }

    v87 = sub_1CF9E8048();

    sub_1CEFD0994(v78, v79, 1);
    if (v87)
    {
      goto LABEL_35;
    }
  }

  else if (!v78 && v79 == 2)
  {
    goto LABEL_35;
  }

  v98 = v52;
  if (((a2 >> 58) & 0x3C | (a2 >> 1) & 3) == 0x1E)
  {
    v88 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
    v89 = v88;
  }

  else
  {
    v90 = swift_allocObject();
    *(v90 + 16) = a2;
    v89 = v90 | 0x7000000000000004;
    v88 = a2;
  }

  sub_1CEFD09A0(v88);
  v91 = swift_allocObject();
  *(v91 + 16) = sub_1CF552400;
  *(v91 + 24) = v55;
  *(v91 + 32) = a5;
  *(v91 + 40) = 0;
  *(v91 + 48) = a2;
  *(v91 + 56) = a1;
  *(v91 + 64) = 0;
  v92 = v102;
  *(v91 + 72) = v102;
  *(v91 + 80) = 0;
  v93 = swift_allocObject();
  *(v93 + 16) = a1;
  *(v93 + 24) = a5;
  *(v93 + 32) = 0;
  *(v93 + 40) = sub_1CF552404;
  *(v93 + 48) = v91;
  *(v93 + 56) = v89;
  v94 = swift_allocObject();
  *(v94 + 16) = sub_1CF552404;
  *(v94 + 24) = v91;
  v95 = *(*v108 + 472);

  sub_1CEFD09A0(a2);
  v86 = v92;

  v96 = v92;

  sub_1CEFD09A0(v89);
  v95("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF552448, v94, sub_1CF55241C, v93, v98);

  sub_1CF540FDC(v89);
LABEL_41:

  sub_1CF540FDC(a2);
}

void sub_1CF552450()
{
  v1 = *(type metadata accessor for VFSItem(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = (v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  v8 = v0 + v4;
  v9 = *v8;
  v10 = (v0 + v5);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v0 + v6);
  v14 = *(v8 + 8);

  sub_1CF54A888(v7, v0 + v2, v9, v14, v11, v12, v13);
}

uint64_t sub_1CF552504()
{
  v1 = *(type metadata accessor for VFSItem(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5220, &qword_1CFA0A270) - 8);
  v5 = *(v0 + 16);
  v6 = *(v0 + v3);
  v7 = *(v0 + v3 + 8);
  v8 = v0 + ((v3 + *(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_1CF54C5E4(v5, v0 + v2, v6, v7, v8);
}

void sub_1CF5525F4(uint64_t a1)
{
  v3 = *(type metadata accessor for VFSItem(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1 + v5;
  v9 = *(v1 + v6);
  v10 = *(v1 + v7);
  v11 = *v8;
  v12 = *(v8 + 8);
  v13 = v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v14 = *v13;
  v15 = *(v13 + 8);

  sub_1CF54DFA4(a1, v1 + v4, v11, v12, v9, v10, v14, v15);
}

uint64_t sub_1CF552754(uint64_t a1)
{
  v3 = *(type metadata accessor for VFSItem(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5220, &qword_1CFA0A270) - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v1 + v10 + 8);
  return sub_1CF54DA7C(a1, v1 + v4, *(v1 + v5), (v1 + v7), *(v1 + v8), *(v1 + v8 + 8), *(v1 + v9), *(v1 + v9 + 8), *(v1 + v10));
}

uint64_t objectdestroy_231Tm()
{
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5220, &qword_1CFA0A270);
  v41 = *(*(v40 - 8) + 80);
  v38 = *(*(v40 - 8) + 64);
  v39 = (v41 + 16) & ~v41;
  v1 = v0 + v39;
  v2 = *(v0 + v39 + 40);

  v3 = type metadata accessor for VFSItem(0);
  v4 = v0 + v39 + v3[7];
  v5 = type metadata accessor for ItemMetadata();
  v6 = v5[7];
  v7 = sub_1CF9E5CF8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v4 + v6, v7);
  v9(v4 + v5[8], v7);
  v10 = *(v4 + v5[14] + 8);

  v11 = v5[30];
  if (!(*(v8 + 48))(v4 + v11, 1, v7))
  {
    v9(v4 + v11, v7);
  }

  v12 = *(v4 + v5[31]);

  v13 = *(v4 + v5[33]);

  v14 = (v4 + v5[34]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_1CEFE4714(*v14, v15);
  }

  v16 = *(v4 + v5[38] + 8);

  v17 = v1 + v3[8];
  v18 = *(v17 + 16);
  if (v18 != 1)
  {

    v19 = *(v17 + 48);

    v20 = *(v17 + 64);

    v21 = *(v17 + 88);

    v22 = *(v17 + 120);

    v23 = *(v17 + 136);

    v24 = *(v17 + 152);

    v25 = *(v17 + 168);

    v26 = *(v17 + 184);

    if (*(v17 + 192))
    {

      v27 = *(v17 + 200);
    }

    v28 = *(v17 + 224);

    v29 = *(v17 + 240);
  }

  v30 = v3[12];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  if (!(*(*(v31 - 8) + 48))(v1 + v30, 1, v31))
  {
    v32 = sub_1CF9E5A58();
    v33 = *(v32 - 8);
    if (!(*(v33 + 48))(v1 + v30, 1, v32))
    {
      (*(v33 + 8))(v1 + v30, v32);
    }
  }

  v34 = (v38 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;

  v35 = *(v0 + v34);

  v36 = *(v0 + ((v34 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF552C5C(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, void, void, void))
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5220, &qword_1CFA0A270) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return a2(a1, v2 + v6, *(v2 + v7), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1CF552D44(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(a2);
}

void sub_1CF552D9C(void *a1)
{
  v3 = *(type metadata accessor for VFSItem(0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1CF54B9FC(a1, v5, v6, v7, v1 + v4, v8);
}

uint64_t objectdestroy_201Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t objectdestroy_204Tm()
{
  v1 = sub_1CF9E6448();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  v4 = *(v2 + 64) + v3;
  v5 = *(v0 + 16);

  v6 = *(v0 + 32);

  sub_1CF540FDC(*(v0 + 56));

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF55301C(uint64_t a1)
{
  v3 = *(type metadata accessor for Signpost(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_1CF5B9F38(a1, v1 + v4, v6);
}

uint64_t objectdestroy_306Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5220, &qword_1CFA0A270);
  v39 = *(*(v1 - 8) + 80);
  v40 = v1;
  v38 = *(*(v1 - 8) + 64);
  v2 = *(v0 + 16);

  v3 = *(v0 + 32);

  v4 = v0 + ((v39 + 40) & ~v39);
  v5 = *(v4 + 40);

  v6 = type metadata accessor for VFSItem(0);
  v7 = v4 + v6[7];
  v8 = type metadata accessor for ItemMetadata();
  v9 = v8[7];
  v10 = sub_1CF9E5CF8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 8);
  v12(v7 + v9, v10);
  v12(v7 + v8[8], v10);
  v13 = *(v7 + v8[14] + 8);

  v14 = v8[30];
  if (!(*(v11 + 48))(v7 + v14, 1, v10))
  {
    v12(v7 + v14, v10);
  }

  v15 = *(v7 + v8[31]);

  v16 = *(v7 + v8[33]);

  v17 = (v7 + v8[34]);
  v18 = v17[1];
  if (v18 >> 60 != 15)
  {
    sub_1CEFE4714(*v17, v18);
  }

  v19 = *(v7 + v8[38] + 8);

  v20 = v4 + v6[8];
  v21 = *(v20 + 16);
  if (v21 != 1)
  {

    v22 = *(v20 + 48);

    v23 = *(v20 + 64);

    v24 = *(v20 + 88);

    v25 = *(v20 + 120);

    v26 = *(v20 + 136);

    v27 = *(v20 + 152);

    v28 = *(v20 + 168);

    v29 = *(v20 + 184);

    if (*(v20 + 192))
    {

      v30 = *(v20 + 200);
    }

    v31 = *(v20 + 224);

    v32 = *(v20 + 240);
  }

  v33 = v6[12];
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  if (!(*(*(v34 - 8) + 48))(v4 + v33, 1, v34))
  {
    v35 = sub_1CF9E5A58();
    v36 = *(v35 - 8);
    if (!(*(v36 + 48))(v4 + v33, 1, v35))
    {
      (*(v36 + 8))(v4 + v33, v35);
    }
  }

  return swift_deallocObject();
}

void sub_1CF553440(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5220, &qword_1CFA0A270) - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  sub_1CF54C7A8(a1, v4, v5, v6, v7);
}

uint64_t objectdestroy_161Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  sub_1CF540FDC(*(v0 + 40));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_2()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  sub_1CF540FDC(*(v0 + 48));
  v3 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t objectdestroy_11Tm()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[6];

  sub_1CF540FDC(v0[7]);

  return swift_deallocObject();
}

uint64_t sub_1CF553650(void *a1)
{
  v2 = a1[4];
  v3 = a1[2];
  swift_getAssociatedTypeWitness();
  v4 = a1[5];
  v5 = a1[3];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  result = type metadata accessor for FPFSID();
  if (v7 <= 0x3F)
  {
    result = sub_1CF9E75D8();
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CF553798(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 40);
  v6 = *(a3 + 24);
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = v7;
  v9 = *(v7 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v7 + 80);
  v13 = *(v7 + 64);
  if (!v9)
  {
    ++v13;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v11)
  {
    goto LABEL_31;
  }

  v14 = v13 + ((v12 + 8) & ~v12);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v18 = ((a2 - v11 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v18 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v18 < 2)
    {
LABEL_31:
      if ((v10 & 0x80000000) != 0)
      {
        v21 = (*(v8 + 48))((a1 + v12 + 8) & ~v12);
        if (v21 >= 2)
        {
          return v21 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v20 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v20) = -1;
        }

        return (v20 + 1);
      }
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_31;
  }

LABEL_20:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v14)
  {
    if (v14 > 3)
    {
      LODWORD(v14) = 4;
    }

    if (v14 > 2)
    {
      if (v14 == 3)
      {
        LODWORD(v14) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v14) = *a1;
      }
    }

    else if (v14 == 1)
    {
      LODWORD(v14) = *a1;
    }

    else
    {
      LODWORD(v14) = *a1;
    }
  }

  return v11 + (v14 | v19) + 1;
}

void sub_1CF553978(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 40);
  v8 = *(a4 + 24);
  v9 = 0;
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 84);
  v12 = v11 - 1;
  v13 = *(v10 + 80);
  if (!v11)
  {
    v12 = 0;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v12;
  }

  if (v11)
  {
    v15 = *(v10 + 64);
  }

  else
  {
    v15 = *(v10 + 64) + 1;
  }

  v16 = ((v13 + 8) & ~v13) + v15;
  if (a3 <= v14)
  {
    goto LABEL_20;
  }

  if (v16 <= 3)
  {
    v17 = ((a3 - v14 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v17))
    {
      v9 = 4;
      if (v14 >= a2)
      {
        goto LABEL_30;
      }

      goto LABEL_21;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    else
    {
      v18 = 2;
    }

    if (v17 >= 2)
    {
      v9 = v18;
    }

    else
    {
      v9 = 0;
    }

LABEL_20:
    if (v14 >= a2)
    {
      goto LABEL_30;
    }

    goto LABEL_21;
  }

  v9 = 1;
  if (v14 >= a2)
  {
LABEL_30:
    if (v9 > 1)
    {
      if (v9 != 2)
      {
        *&a1[v16] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_37;
      }

      *&a1[v16] = 0;
    }

    else if (v9)
    {
      a1[v16] = 0;
      if (!a2)
      {
        return;
      }

LABEL_37:
      if ((v12 & 0x80000000) != 0)
      {
        v23 = (&a1[v13 + 8] & ~v13);
        if (v12 >= a2)
        {
          v27 = *(v10 + 56);

          v27(v23, a2 + 1);
        }

        else
        {
          if (v15 <= 3)
          {
            v24 = ~(-1 << (8 * v15));
          }

          else
          {
            v24 = -1;
          }

          if (v15)
          {
            v25 = v24 & (~v12 + a2);
            if (v15 <= 3)
            {
              v26 = v15;
            }

            else
            {
              v26 = 4;
            }

            bzero(v23, v15);
            if (v26 > 2)
            {
              if (v26 == 3)
              {
                *v23 = v25;
                v23[2] = BYTE2(v25);
              }

              else
              {
                *v23 = v25;
              }
            }

            else if (v26 == 1)
            {
              *v23 = v25;
            }

            else
            {
              *v23 = v25;
            }
          }
        }
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v22 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v22 = a2 - 1;
        }

        *a1 = v22;
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

LABEL_21:
  v19 = ~v14 + a2;
  if (v16 >= 4)
  {
    bzero(a1, ((v13 + 8) & ~v13) + v15);
    *a1 = v19;
    v20 = 1;
    if (v9 > 1)
    {
      goto LABEL_63;
    }

    goto LABEL_60;
  }

  v20 = (v19 >> (8 * v16)) + 1;
  if (!v16)
  {
LABEL_59:
    if (v9 > 1)
    {
      goto LABEL_63;
    }

    goto LABEL_60;
  }

  v21 = v19 & ~(-1 << (8 * v16));
  bzero(a1, v16);
  if (v16 == 3)
  {
    *a1 = v21;
    a1[2] = BYTE2(v21);
    goto LABEL_59;
  }

  if (v16 == 2)
  {
    *a1 = v21;
    if (v9 > 1)
    {
LABEL_63:
      if (v9 == 2)
      {
        *&a1[v16] = v20;
      }

      else
      {
        *&a1[v16] = v20;
      }

      return;
    }
  }

  else
  {
    *a1 = v19;
    if (v9 > 1)
    {
      goto LABEL_63;
    }
  }

LABEL_60:
  if (v9)
  {
    a1[v16] = v20;
  }
}

uint64_t sub_1CF553C94(void *a1)
{
  v2 = a1[2];
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = a1[5];
    v6 = a1[3];
    swift_getAssociatedTypeWitness();
    result = sub_1CF9E75D8();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CF553D50(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v5 = a3[2];
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = a3[5];
  v9 = a3[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  if (v13)
  {
    v14 = v13 - 1;
  }

  else
  {
    v14 = 0;
  }

  if (v14 <= v7)
  {
    v15 = v7;
  }

  else
  {
    v15 = v14;
  }

  if (v15 <= 0xFE)
  {
    v15 = 254;
  }

  v16 = *(v11 + 80);
  v17 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!v13)
  {
    ++v17;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = *(v6 + 64) + v16;
  if (a2 > v15)
  {
    v19 = v17 + (v18 & ~v16) + 2;
    v20 = 8 * v19;
    if (v19 > 3)
    {
      goto LABEL_14;
    }

    v22 = ((a2 - v15 + ~(-1 << v20)) >> v20) + 1;
    if (HIWORD(v22))
    {
      v21 = *(a1 + v19);
      if (!v21)
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v22 > 0xFF)
    {
      v21 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v22 >= 2)
    {
LABEL_14:
      v21 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_34;
      }

LABEL_21:
      v23 = (v21 - 1) << v20;
      if (v19 > 3)
      {
        v23 = 0;
      }

      if (v19)
      {
        if (v19 <= 3)
        {
          v24 = v19;
        }

        else
        {
          v24 = 4;
        }

        if (v24 > 2)
        {
          if (v24 == 3)
          {
            v25 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v25 = *a1;
          }
        }

        else if (v24 == 1)
        {
          v25 = *a1;
        }

        else
        {
          v25 = *a1;
        }
      }

      else
      {
        v25 = 0;
      }

      v31 = v15 + (v25 | v23);
      return (v31 + 1);
    }
  }

LABEL_34:
  if (v7 != v15)
  {
    v28 = (a1 + v18) & ~v16;
    if (v14 == v15)
    {
      if (v13 >= 2)
      {
        v29 = (*(v12 + 48))(v28);
        if (v29 >= 2)
        {
          return v29 - 1;
        }

        else
        {
          return 0;
        }
      }

      return 0;
    }

    v30 = *(v28 + v17);
    if (v30 < 2)
    {
      return 0;
    }

    v31 = (v30 + 2147483646) & 0x7FFFFFFF;
    return (v31 + 1);
  }

  v26 = *(v6 + 48);

  return v26(a1, v7, v5);
}

void sub_1CF554000(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v31 = v8;
  v9 = *(v8 + 84);
  v10 = *(a4 + 40);
  v11 = 0;
  v12 = *(swift_getAssociatedTypeWitness() - 8);
  v13 = v12;
  v14 = *(v12 + 84);
  v15 = v14 - 1;
  if (!v14)
  {
    v15 = 0;
  }

  if (v15 <= v9)
  {
    v16 = v9;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(v12 + 80);
  v18 = *(v12 + 64);
  if (v16 <= 0xFE)
  {
    v16 = 254;
  }

  v19 = *(v8 + 64) + v17;
  if (!v14)
  {
    ++v18;
  }

  v20 = v18 + (v19 & ~v17) + 2;
  if (a3 > v16)
  {
    v11 = 1;
    if (v20 <= 3)
    {
      v21 = ((a3 - v16 + ~(-1 << (8 * v20))) >> (8 * v20)) + 1;
      v22 = HIWORD(v21);
      if (v21 < 0x100)
      {
        v23 = 1;
      }

      else
      {
        v23 = 2;
      }

      if (v21 >= 2)
      {
        v24 = v23;
      }

      else
      {
        v24 = 0;
      }

      if (v22)
      {
        v11 = 4;
      }

      else
      {
        v11 = v24;
      }
    }
  }

  if (v16 < a2)
  {
    v25 = ~v16 + a2;
    if (v20 < 4)
    {
      v26 = (v25 >> (8 * v20)) + 1;
      if (v18 + (v19 & ~v17) != -2)
      {
        v27 = v25 & ~(-1 << (8 * v20));
        bzero(a1, v20);
        if (v20 != 3)
        {
          if (v20 == 2)
          {
            *a1 = v27;
            if (v11 > 1)
            {
LABEL_53:
              if (v11 == 2)
              {
                *&a1[v20] = v26;
              }

              else
              {
                *&a1[v20] = v26;
              }

              return;
            }
          }

          else
          {
            *a1 = v25;
            if (v11 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *a1 = v27;
        a1[2] = BYTE2(v27);
      }

      if (v11 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      bzero(a1, v18 + (v19 & ~v17) + 2);
      *a1 = v25;
      v26 = 1;
      if (v11 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v11)
    {
      a1[v20] = v26;
    }

    return;
  }

  if (v11 > 1)
  {
    if (v11 != 2)
    {
      *&a1[v20] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v20] = 0;
  }

  else if (v11)
  {
    a1[v20] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v9 == v16)
  {
    v28 = *(v31 + 56);

    v28(a1, a2, v9, v7);
  }

  else
  {
    v29 = &a1[v19] & ~v17;
    if (v15 == v16)
    {
      v30 = *(v13 + 56);

      v30(v29, (a2 + 1));
    }

    else
    {
      *(v29 + v18) = a2 + 1;
    }
  }
}

uint64_t sub_1CF55446C(uint64_t a1)
{
  v3 = *(a1 + 80);
  v5 = *(a1 + 96);
  result = type metadata accessor for ReconciliationID();
  if (v2 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CF554514(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_1CF554554(a1);
  return v5;
}

uint64_t *sub_1CF554554(uint64_t a1)
{
  v3 = *v1;
  *(v1 + *(*v1 + 128)) = 0;
  v4 = *(*v1 + 120);
  v8 = *(v3 + 80);
  v9 = *(v3 + 96);
  v5 = type metadata accessor for ReconciliationID();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v1 + v4, a1, v5);
  (*(v6 + 32))(v1 + *(*v1 + 112), a1, v5);
  return v1;
}

uint64_t sub_1CF554678@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v52 = a4;
  v53 = a5;
  v50 = a1;
  v51 = a3;
  LODWORD(v55) = a2;
  v56 = a6;
  v7 = *v6;
  v8 = *v6;
  v9 = *(*v6 + 80);
  v10 = sub_1CF9E75D8();
  v46 = *(v10 - 8);
  v47 = v10;
  v11 = *(v46 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v54 = &v41 - v13;
  v48 = *(v9 - 8);
  v14 = *(v48 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v45 = &v41 - v16;
  v17 = *(v7 + 88);
  v49 = *(v17 - 8);
  v18 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - v19;
  v57 = v9;
  v58 = v17;
  v59 = *(v8 + 96);
  v21 = type metadata accessor for ReconciliationID();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v21);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v41 - v26;
  v28 = *(v7 + 128);
  if (*(v6 + v28) == 1 && (v55 & 1) == 0)
  {
    v29 = *(v8 + 120);
    swift_beginAccess();
    return (*(v22 + 16))(v56, v6 + v29, v21);
  }

  v44 = v25;
  *(v6 + v28) = 1;
  v31 = *(*v6 + 120);
  swift_beginAccess();
  v55 = *(v22 + 16);
  v55(v27, v6 + v31, v21);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v42 = v31;
    v43 = v6;
    v32 = v49;
    (*(v49 + 32))(v20, v27, v17);
    v33 = v60;
    (*(**(v50 + 16) + 152))(v20, v51, v52, v53);
    result = (*(v32 + 8))(v20, v17);
    if (v33)
    {
      return result;
    }

    v34 = v48;
    v35 = v54;
    v36 = (*(v48 + 48))(v54, 1, v9);
    v37 = v35;
    if (v36 == 1)
    {
      (*(v46 + 8))(v35, v47);
      v6 = v43;
      v31 = v42;
    }

    else
    {
      v38 = *(v34 + 32);
      v39 = v45;
      v38(v45, v37, v9);
      v40 = v44;
      v38(v44, v39, v9);
      swift_storeEnumTagMultiPayload();
      v6 = v43;
      v31 = v42;
      swift_beginAccess();
      (*(v22 + 40))(v6 + v31, v40, v21);
      swift_endAccess();
    }
  }

  else
  {
    (*(v22 + 8))(v27, v21);
  }

  return (v55)(v56, v6 + v31, v21);
}

uint64_t sub_1CF554B9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a4;
  v25 = a2;
  v26 = a3;
  v24 = a1;
  v7 = *v5;
  v8 = *(*v5 + 80);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v23 - v11;
  v13 = *(v7 + 104);
  v27 = v8;
  v23 = *(v14 + 88);
  v28 = v23;
  v29 = v13;
  v15 = type metadata accessor for ReconciliationID();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v23 - v17;
  (*(v19 + 16))(&v23 - v17, v5 + *(v7 + 112), v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = v23;
    v21 = *(v23 - 8);
    (*(v21 + 32))(a5, v18, v23);
    return (*(v21 + 56))(a5, 0, 1, v20);
  }

  else
  {
    (*(v9 + 32))(v12, v18, v8);
    (*(**(v24 + 16) + 160))(v12, v25, v26, v30);
    return (*(v9 + 8))(v12, v8);
  }
}

uint64_t sub_1CF554E8C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v27 = *(v3 - 8);
  v4 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v26 - v5;
  v7 = *(v2 + 80);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  *&v14 = v7;
  *(&v14 + 1) = v3;
  v28 = *(v13 + 96);
  v31 = v14;
  v32 = v28;
  v15 = type metadata accessor for ReconciliationID();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v26 - v18;
  v20 = *(v2 + 120);
  swift_beginAccess();
  (*(v16 + 16))(v19, v1 + v20, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = v27;
    (*(v27 + 32))(v6, v19, v3);
    v29 = 0;
    v30 = 0xE000000000000000;
    v22 = *(*(&v28 + 1) + 16);
    sub_1CF9E7FE8();
    v23 = v29;
    (*(v21 + 8))(v6, v3);
  }

  else
  {
    (*(v8 + 32))(v12, v19, v7);
    v29 = 0;
    v30 = 0xE000000000000000;
    v24 = *(v28 + 16);
    sub_1CF9E7FE8();
    v23 = v29;
    (*(v8 + 8))(v12, v7);
  }

  return v23;
}

uint64_t sub_1CF5551A8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v25 = *(v3 - 8);
  v4 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v24 - v5;
  v7 = *(v2 + 80);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  *&v14 = v7;
  *(&v14 + 1) = v3;
  v26 = *(v13 + 96);
  v27 = v14;
  v28 = v26;
  v15 = type metadata accessor for ReconciliationID();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v24 - v18;
  v20 = *(v2 + 120);
  swift_beginAccess();
  (*(v16 + 16))(v19, v1 + v20, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = v25;
    (*(v25 + 32))(v6, v19, v3);
    v22 = (*(*(&v26 + 1) + 64))(v3);
    (*(v21 + 8))(v6, v3);
  }

  else
  {
    (*(v8 + 32))(v12, v19, v7);
    v22 = (*(v26 + 64))(v7);
    (*(v8 + 8))(v12, v7);
  }

  return v22 & 1;
}

uint64_t sub_1CF5554C0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v25 = *(v3 - 8);
  v4 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v24 - v5;
  v7 = *(v2 + 80);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  *&v14 = v7;
  *(&v14 + 1) = v3;
  v26 = *(v13 + 96);
  v27 = v14;
  v28 = v26;
  v15 = type metadata accessor for ReconciliationID();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v24 - v18;
  v20 = *(v2 + 120);
  swift_beginAccess();
  (*(v16 + 16))(v19, v1 + v20, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = v25;
    (*(v25 + 32))(v6, v19, v3);
    v22 = (*(*(&v26 + 1) + 72))(v3);
    (*(v21 + 8))(v6, v3);
  }

  else
  {
    (*(v8 + 32))(v12, v19, v7);
    v22 = (*(v26 + 72))(v7);
    (*(v8 + 8))(v12, v7);
  }

  return v22 & 1;
}

uint64_t sub_1CF5557D8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *v1;
  v5 = *(*v1 + 104);
  v18 = *(*v1 + 80);
  v17 = *(v4 + 88);
  v19 = v17;
  v20 = v5;
  v6 = type metadata accessor for ReconciliationID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v17 - v10;
  (*(v7 + 16))(&v17 - v10, v1 + *(v3 + 112), v6, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v13 = v17;
  v14 = *(v17 - 8);
  v15 = v14;
  if (EnumCaseMultiPayload == 1)
  {
    (*(v14 + 32))(a1, v11, v17);
    return (*(v15 + 56))(a1, 0, 1, v13);
  }

  else
  {
    (*(v14 + 56))(a1, 1, 1, v17);
    return (*(v7 + 8))(v11, v6);
  }
}

uint64_t sub_1CF5559E4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  v16[0] = *(*v1 + 80);
  v16[1] = v16[0];
  v16[2] = v4;
  v5 = type metadata accessor for ReconciliationID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v16 - v8;
  v10 = *(v3 + 120);
  swift_beginAccess();
  (*(v6 + 16))(v9, v1 + v10, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v12 = *&v16[0];
  v13 = *(*&v16[0] - 8);
  v14 = v13;
  if (EnumCaseMultiPayload == 1)
  {
    (*(v13 + 56))(a1, 1, 1, *&v16[0]);
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    (*(v13 + 32))(a1, v9, *&v16[0]);
    return (*(v14 + 56))(a1, 0, 1, v12);
  }
}

uint64_t sub_1CF555BD0(uint64_t a1, uint64_t a2)
{
  v3 = v2[12];
  v4 = v2[13];
  return sub_1CF024490(a1 + *(*a1 + 112), a2 + *(*a2 + 112), v2[10], v2[11]);
}

uint64_t sub_1CF555C0C(uint64_t a1)
{
  v3 = *(*v1 + 112);
  v6 = *(*v1 + 80);
  v7 = *(*v1 + 96);
  v4 = type metadata accessor for ReconciliationID();
  return sub_1CF01D348(a1, v4);
}

uint64_t sub_1CF555CB8()
{
  sub_1CF9E81D8();
  sub_1CF555C0C(v1);
  return sub_1CF9E8228();
}

uint64_t sub_1CF555D40()
{
  sub_1CF9E81D8();
  v1 = *v0;
  sub_1CF555C0C(v3);
  return sub_1CF9E8228();
}

uint64_t sub_1CF555DCC(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *a2;
  v13 = a2[4];
  result = sub_1CF056558();
  if (result)
  {
    v15 = *(v12 + 80);
    v16 = *(v12 + 96);
    v17 = type metadata accessor for SnapshotItem();
    result = (*(*v13 + 320))(a1 + *(v17 + 36), 0, a4, a5, a6);
    if (!v6)
    {
      if (result == 2 || (result & 1) == 0)
      {
        v18 = a1 + *(v17 + 48);
        result = type metadata accessor for ItemMetadata();
        *(v18 + *(result + 48)) = *(v18 + *(result + 44));
      }

      else
      {
        return sub_1CF55666C(a1, a3);
      }
    }
  }

  return result;
}

uint64_t sub_1CF555F04(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v88 = a6;
  v89 = a7;
  v87 = a1;
  v90 = *a4;
  v86 = sub_1CF9E5CF8();
  v84 = *(v86 - 8);
  v14 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v86);
  v85 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a4 + 32);
  result = sub_1CF056558();
  if (result)
  {
    v18 = *a3;
    if ((*a3 & 0x20002) != 0)
    {
      v79 = a3;
      v80 = a5;
      v19 = v90[12];
      v81 = v90[10];
      v82 = v18;
      v20 = a8;
      v21 = type metadata accessor for SnapshotItem();
      v22 = (*v16 + 320);
      v23 = *v22;
      result = (*v22)(a2 + *(v21 + 36), 0, v88, v89, v20);
      v83 = v8;
      if (!v8)
      {
        v77 = v19;
        v78 = v21;
        v76 = a2;
        if (result == 2)
        {
          if ((v82 & 2) == 0)
          {
            v24 = v76;
            v25 = v81;
            v26 = v90;
            v27 = v78;
            goto LABEL_31;
          }

          v29 = v20;
          v28 = 0;
        }

        else
        {
          v28 = result;
          v29 = v20;
          if ((v82 & 2) == 0)
          {
            v27 = v78;
            v30 = *(v78 + 48);
            v31 = type metadata accessor for ItemMetadata();
            v25 = v81;
            v26 = v90;
            if (v28)
            {
              v32 = *(v87 + v30 + *(v31 + 48));
              v33 = v80;
              goto LABEL_16;
            }

            goto LABEL_30;
          }
        }

        v34 = v88;
        v35 = v89;
        v36 = v83;
        v37 = (*(**(a4 + 24) + 336))(0, 68, v88, v89, v29);
        v83 = v36;
        if (v37)
        {
          v32 = v23(v87, 0, v34, v35, v29);
          v83 = 0;
          v27 = v78;
        }

        else
        {
          v27 = v78;
          v38 = v87 + *(v78 + 48);
          v32 = *(v38 + *(type metadata accessor for ItemMetadata() + 48));
        }

        v33 = v80;
        v25 = v81;
        v39 = v77;
        v26 = v90;
        if (v28)
        {
LABEL_16:
          v40 = v76;
          v41 = v83;
          if ((v32 & 1) == 0)
          {
            result = sub_1CF55666C(v76, v33);
            if (v41)
            {
              return result;
            }

            if ((v82 & 0x800000000000000) == 0)
            {
              *v79 = v82 | 0x800000000000000;
            }
          }

          v42 = v40 + *(v27 + 48);
          result = type metadata accessor for ItemMetadata();
          if (*(v42 + *(result + 44)) != 1)
          {
            return result;
          }

          v43 = v26[11];
          v44 = v26[13];
          v91 = v25;
          v92 = v43;
          v45 = v77;
          v93 = v77;
          v94 = v44;
          type metadata accessor for JobResult();
          v91 = v25;
          v92 = v43;
          v93 = v45;
          v94 = v44;
          type metadata accessor for PinningJob.UnpinItem();
          v46 = v85;
          sub_1CF9E5CE8();
          sub_1CF9E5C98();
          v48 = v47;
          result = (*(v84 + 8))(v46, v86);
          v49 = v48 * 1000000000.0;
          if (COERCE__INT64(fabs(v48 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v49 > -9.22337204e18)
            {
              if (v49 < 9.22337204e18)
              {
                v50 = sub_1CF559420(v40, 0x2000000000000000, v49, 0x10000000000);
                v51 = v33;
LABEL_41:
                sub_1CF803A0C(v51, v50);
              }

              goto LABEL_50;
            }

LABEL_49:
            __break(1u);
LABEL_50:
            __break(1u);
            goto LABEL_51;
          }

LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        if (v32)
        {
          v52 = v90[11];
          v53 = v90[13];
          v91 = v81;
          v92 = v52;
          v93 = v77;
          v94 = v53;
          type metadata accessor for JobResult();
          v91 = v25;
          v92 = v52;
          v93 = v39;
          v94 = v53;
          type metadata accessor for PinningJob.PinItem();
          v54 = v85;
          sub_1CF9E5CE8();
          sub_1CF9E5C98();
          v56 = v55;
          result = (*(v84 + 8))(v54, v86);
          v57 = v56 * 1000000000.0;
          v24 = v76;
          if (COERCE__INT64(fabs(v56 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
          {
LABEL_51:
            __break(1u);
            goto LABEL_52;
          }

          if (v57 <= -9.22337204e18)
          {
LABEL_52:
            __break(1u);
            goto LABEL_53;
          }

          v27 = v78;
          if (v57 >= 9.22337204e18)
          {
LABEL_53:
            __break(1u);
            return result;
          }

          v58 = sub_1CF559420(v76, 0x2000000000000000, v57, 0x10000000000);
          sub_1CF803A0C(v33, v58);

LABEL_31:
          v59 = v24 + *(v27 + 48);
          result = type metadata accessor for ItemMetadata();
          v60 = *(v59 + *(result + 44));
          *(v59 + *(result + 48)) = v60;
          if (v60 == *(v87 + *(v27 + 48) + *(result + 48)))
          {
            return result;
          }

          if ((v82 & 0x800000000000000) == 0)
          {
            *v79 = v82 | 0x800000000000000;
          }

          v61 = v26[11];
          v62 = v26[13];
          v91 = v25;
          v92 = v61;
          v63 = v77;
          v93 = v77;
          v94 = v62;
          type metadata accessor for JobResult();
          v91 = v25;
          v92 = v61;
          v93 = v63;
          v94 = v62;
          type metadata accessor for PinningJob.RefreshChildPinStatus();
          v64 = v85;
          sub_1CF9E5CE8();
          sub_1CF9E5C98();
          v66 = v65;
          v67 = *(v84 + 8);
          result = v67(v64, v86);
          v68 = v66 * 1000000000.0;
          if (COERCE__INT64(fabs(v66 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
          {
            __break(1u);
          }

          else if (v68 > -9.22337204e18)
          {
            if (v68 < 9.22337204e18)
            {
              v69 = sub_1CF559420(v24, 0x2000000000000000, v68, 0x10000000000);
              sub_1CF803A0C(v80, v69);

              v91 = v81;
              v92 = v61;
              v93 = v77;
              v94 = v62;
              type metadata accessor for Maintenance.ResolveItemEvictability();
              v70 = v85;
              sub_1CF9E5CE8();
              sub_1CF9E5C98();
              v72 = v71;
              result = v67(v70, v86);
              v73 = v72 * 1000000000.0;
              if (COERCE__INT64(fabs(v72 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
              {
                if (v73 > -9.22337204e18)
                {
                  v74 = v80;
                  if (v73 < 9.22337204e18)
                  {
                    v50 = sub_1CF559420(v24, 0x2000000000000000, v73, 0x10000000000);
                    v51 = v74;
                    goto LABEL_41;
                  }

                  goto LABEL_47;
                }

LABEL_46:
                __break(1u);
LABEL_47:
                __break(1u);
                goto LABEL_48;
              }

LABEL_45:
              __break(1u);
              goto LABEL_46;
            }

LABEL_44:
            __break(1u);
            goto LABEL_45;
          }

          __break(1u);
          goto LABEL_44;
        }

LABEL_30:
        v24 = v76;
        goto LABEL_31;
      }
    }
  }

  return result;
}

uint64_t sub_1CF55666C(uint64_t a1, void *a2)
{
  v4 = *a2;
  v5 = sub_1CF9E5CF8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v4[10];
  v11 = v4[12];
  v12 = *(type metadata accessor for SnapshotItem() + 48);
  v34 = a1;
  v13 = a1 + v12;
  v14 = type metadata accessor for ItemMetadata();
  *(v13 + *(v14 + 48)) = 1;
  v15 = v4[11];
  v16 = v4[13];
  if (*(v13 + *(v14 + 44)) != 1)
  {
LABEL_6:
    *&v24 = v10;
    *(&v24 + 1) = v15;
    *&v25 = v11;
    *(&v25 + 1) = v16;
    v32 = v25;
    v33 = v24;
    v35 = v24;
    v36 = v25;
    type metadata accessor for JobResult();
    v35 = v33;
    v36 = v32;
    type metadata accessor for PinningJob.RefreshChildPinStatus();
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v27 = v26;
    result = (*(v6 + 8))(v9, v5);
    v28 = v27 * 1000000000.0;
    if (COERCE__INT64(fabs(v27 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v28 > -9.22337204e18)
    {
      if (v28 < 9.22337204e18)
      {
        v29 = sub_1CF559420(v34, 0x2000000000000000, v28, 1);
        sub_1CF803A0C(a2, v29);
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *&v17 = v10;
  *(&v17 + 1) = v4[11];
  *&v18 = v11;
  v31 = v4[13];
  *(&v18 + 1) = v16;
  v32 = v18;
  v33 = v17;
  v35 = v17;
  v36 = v18;
  v30[1] = type metadata accessor for JobResult();
  v35 = v33;
  v36 = v32;
  type metadata accessor for PinningJob.UnpinItem();
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v20 = v19;
  result = (*(v6 + 8))(v9, v5);
  v22 = v20 * 1000000000.0;
  if (COERCE__INT64(fabs(v20 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v22 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v22 < 9.22337204e18)
  {
    v23 = sub_1CF559420(v34, 0x2000000000000000, v22, 0x10000000000);
    sub_1CF803A0C(a2, v23);

    v16 = v31;
    goto LABEL_6;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1CF5569CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1CF55900C(a1, a2, a3, a4);
  v7 = *(v4 + 616);
  v8 = *(v4 + 600);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  return v6;
}

uint64_t sub_1CF556AB0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = a7;
  v36 = a8;
  v43 = a6;
  v44 = a5;
  v37 = a4;
  v38 = a3;
  v39 = a1;
  v41 = *a2;
  v40 = v41[10];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v13 = sub_1CF9E8238();
  v34 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v33 - v16;
  v18 = swift_allocObject();
  v18[2] = a7;
  v18[3] = a8;
  v18[4] = a3;
  v18[5] = a2;
  v19 = swift_allocObject();
  v42 = v19;
  v20 = v44;
  *(v19 + 16) = a4;
  *(v19 + 24) = v20;
  (*(v14 + 16))(v17, v39, v13);
  v21 = (*(v14 + 80) + 64) & ~*(v14 + 80);
  v22 = (v15 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v26 = v41;
  *(v25 + 2) = v40;
  *(v25 + 3) = v26[11];
  v27 = v34;
  *(v25 + 4) = v35;
  *(v25 + 5) = v26[12];
  *(v25 + 6) = v26[13];
  *(v25 + 7) = v36;
  (*(v14 + 32))(&v25[v21], v17, v27);
  v28 = v37;
  *&v25[v22] = v38;
  *&v25[v23] = a2;
  v29 = v44;
  *&v25[v24] = v43;
  v30 = &v25[(v24 + 15) & 0xFFFFFFFFFFFFFFF8];
  *v30 = v28;
  *(v30 + 1) = v29;
  v31 = type metadata accessor for Continuation();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  sub_1CF92E6B4("execute(on:continuation:result:with:completion:)", 48, 2u, sub_1CF559114, v18, sub_1CF559418, v42, sub_1CF5592D8, v25, v31, MEMORY[0x1E69E6158]);
}

uint64_t sub_1CF556E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11)
{
  v18 = *(*(a1 + 32) + 16);
  v19 = *(*v11 + 576);
  v20 = swift_allocObject();
  v20[2] = a7;
  v20[3] = a8;
  v20[4] = a1;
  v20[5] = v11;
  v20[6] = a5;
  v20[7] = a6;
  v20[8] = a3;
  v21 = *(*v18 + 776);

  v21(v11 + v19, a10, a11, v20);
}

uint64_t sub_1CF556FA0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = a7;
  v36 = a8;
  v43 = a6;
  v44 = a5;
  v37 = a4;
  v38 = a3;
  v39 = a1;
  v41 = *a2;
  v40 = v41[10];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v13 = sub_1CF9E8238();
  v34 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v33 - v16;
  v18 = swift_allocObject();
  v18[2] = a7;
  v18[3] = a8;
  v18[4] = a3;
  v18[5] = a2;
  v19 = swift_allocObject();
  v42 = v19;
  v20 = v44;
  *(v19 + 16) = a4;
  *(v19 + 24) = v20;
  (*(v14 + 16))(v17, v39, v13);
  v21 = (*(v14 + 80) + 64) & ~*(v14 + 80);
  v22 = (v15 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v26 = v41;
  *(v25 + 2) = v40;
  *(v25 + 3) = v26[11];
  v27 = v34;
  *(v25 + 4) = v35;
  *(v25 + 5) = v26[12];
  *(v25 + 6) = v26[13];
  *(v25 + 7) = v36;
  (*(v14 + 32))(&v25[v21], v17, v27);
  v28 = v37;
  *&v25[v22] = v38;
  *&v25[v23] = a2;
  v29 = v44;
  *&v25[v24] = v43;
  v30 = &v25[(v24 + 15) & 0xFFFFFFFFFFFFFFF8];
  *v30 = v28;
  *(v30 + 1) = v29;
  v31 = type metadata accessor for Continuation();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  sub_1CF92E6B4("execute(on:continuation:result:with:completion:)", 48, 2u, sub_1CF55942C, v18, sub_1CF559088, v42, sub_1CF559464, v25, v31, MEMORY[0x1E69E6158]);
}

uint64_t sub_1CF5572C4(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, void (*a6)(_BYTE *, void, void, void, void *), uint64_t a7)
{
  v46 = a7;
  v47 = a6;
  v44 = a5;
  v48 = a2;
  v54 = a1;
  v9 = *(*a3 + 600);
  v42 = *(*a3 + 616);
  v10 = type metadata accessor for SnapshotItem();
  v45 = sub_1CF9E75D8();
  v43 = *(v45 - 8);
  v11 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v13 = &v40 - v12;
  v51 = *(v10 - 8);
  v14 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v50 = &v40 - v16;
  v17 = *(v9 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v49 = &v40 - v23;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v24 = sub_1CF9E8238();
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = (&v40 - v27);
  (*(v29 + 16))(&v40 - v27, v48, v24, v26);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30 = *v28;
    sub_1CF1A91AC(v54, v53);
    v31 = v30;
    v47(v53, 0, 0, 0, v30);

    return sub_1CEFCCC44(v53, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  else
  {
    v33 = v49;
    (*(v17 + 32))(v49, v28, v9);
    v48 = v17;
    (*(v17 + 16))(v21, v33, v9);
    v41 = a4;
    v34 = v50;
    sub_1CF06B77C(v21, v9, v42, v50);
    v35 = v54[3];
    v36 = v54[4];
    v37 = __swift_project_boxed_opaque_existential_1(v54, v35);
    v38 = v51;
    (*(v51 + 16))(v13, v34, v10);
    (*(v38 + 56))(v13, 0, 1, v10);
    v39 = v52;
    sub_1CF611904(v13, a3 + *(*a3 + 576), 0, 0, 0, v41, a3[15], a3[16], a3[17], v44, v37, v35, v36);
    (*(v43 + 8))(v13, v45);
    if (!v39)
    {
      sub_1CF1A91AC(v54, v53);
      v47(v53, 0, 0, 0, 0);
      sub_1CEFCCC44(v53, &unk_1EC4C1B30, &qword_1CFA05300);
    }

    (*(v51 + 8))(v50, v10);
    return (*(v48 + 8))(v49, v9);
  }
}

char *sub_1CF5577D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v45 = a4;
  v46 = a5;
  v44 = a3;
  v41 = a1;
  v8 = *v5;
  v9 = *(v8 + 600);
  v10 = *(v8 + 616);
  v11 = type metadata accessor for JobLockRule();
  v40 = *(v11 - 8);
  v12 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v39 - v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = sub_1CF9E75D8();
  v42 = *(v16 - 8);
  v17 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v39 - v18;
  v43 = *(AssociatedTypeWitness - 8);
  v20 = *(v43 + 64);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v39 - v23;
  v25 = v8;
  v26 = *(a2 + 32);
  v27 = *(v25 + 576);
  v28 = v48;
  (*(*v26 + 288))(&v6[v27], v44, v45, v46, v22);
  if (!v28)
  {
    v29 = v42;
    v46 = v11;
    v48 = 0;
    if ((*(v43 + 48))(v19, 1, AssociatedTypeWitness) == 1)
    {
      (*(v29 + 8))(v19, v16);
      return 0;
    }

    else
    {
      v30 = v43;
      (*(v43 + 32))(v24, v19, AssociatedTypeWitness);
      swift_beginAccess();
      sub_1CF053478((v6 + 56), v47);
      v45 = *(v6 + 15);
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v32 = *(TupleTypeMetadata3 + 48);
      v33 = *(TupleTypeMetadata3 + 64);
      v34 = *(v30 + 16);
      v35 = &v6[v27];
      v36 = v14;
      v34(v14, v35, AssociatedTypeWitness);
      v34(&v14[v32], v24, AssociatedTypeWitness);
      v34(&v14[v33], v24, AssociatedTypeWitness);
      v37 = v46;
      swift_storeEnumTagMultiPayload();
      v14 = sub_1CF052B3C(v47, v45, v14);
      (*(v40 + 8))(v36, v37);
      sub_1CEFCCC44(v47, &unk_1EC4C1BE0, &unk_1CF9FD400);
      (*(v43 + 8))(v24, AssociatedTypeWitness);
    }
  }

  return v14;
}

char *sub_1CF557C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_1CF5577D4(a1, a2, a3, a4, *(a5 + 8));
  if (v5)
  {
    return v7;
  }

  return result;
}

uint64_t sub_1CF557C84(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, void, void, void *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v167 = a8;
  v168 = a4;
  v159 = a6;
  v160 = a5;
  v166 = a3;
  v147 = a2;
  v161 = *v8;
  v11 = *(v161 + 616);
  v12 = *(v161 + 600);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v170 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v172 = swift_getAssociatedConformanceWitness();
  v148 = type metadata accessor for FileItemVersion();
  v155 = sub_1CF9E75D8();
  v150 = *(v155 - 8);
  v13 = v150[8];
  MEMORY[0x1EEE9AC00](v155);
  v149 = &v128 - v14;
  v15 = type metadata accessor for SnapshotMutation();
  v145 = *(v15 - 8);
  v16 = *(v145 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v153 = &v128 - v17;
  v158 = sub_1CF9E5CF8();
  v146 = *(v158 - 8);
  v18 = *(v146 + 64);
  MEMORY[0x1EEE9AC00](v158);
  v157 = &v128 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = v12;
  v164 = v11;
  v20 = type metadata accessor for SnapshotItem();
  v21 = sub_1CF9E75D8();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v128 - v24;
  v162 = *(v20 - 8);
  v26 = *(v162 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v156 = &v128 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v165 = &v128 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v154 = &v128 - v32;
  v144 = v33;
  MEMORY[0x1EEE9AC00](v34);
  v151 = &v128 - v35;
  v152 = a1;
  v36 = a1[4];
  result = sub_1CF056558();
  if ((result & 1) == 0)
  {
    return result;
  }

  v142 = v22;
  v143 = v15;
  v38 = *(*v8 + 576);
  v39 = *(v167 + 8);
  v40 = 0;
  (*(*v36 + 240))(&v8[v38], 1, v168, a7, v39);
  v138 = v38;
  v133 = v39;
  v134 = v8;
  v141 = a7;
  v43 = v162;
  v44 = (*(v162 + 48))(v25, 1, v20);
  if (v44 == 1)
  {
    (*(v142 + 8))(v25, v21);
    v45 = v141;
    v172 = v141;
    v173 = v167;
    v46 = __swift_allocate_boxed_opaque_existential_0(&AssociatedTypeWitness);
    (*(*(v45 - 8) + 16))(v46, v168, v45);
    v47 = v149;
    (*(*(v148 - 1) + 56))(v149, 1, 1);
    type metadata accessor for FileTreeError();
    swift_getWitnessTable();
    v40 = swift_allocError();
    sub_1CF72C4D8(&v134[v138], v47, 0, v48);
    (v150[1])(v47, v155);
    v160(&AssociatedTypeWitness, 0, 0, 0, v40);
LABEL_3:

    return sub_1CEFCCC44(&AssociatedTypeWitness, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  v49 = *(v43 + 32);
  v50 = v151;
  v140 = v43 + 32;
  v139 = v49;
  v49(v151, v25, v20);
  v51 = v50 + *(v20 + 48);
  v52 = type metadata accessor for ItemMetadata();
  LODWORD(v142) = *(v51 + *(v52 + 48));
  if (v142 != 1)
  {
    v55 = v141;
    v56 = v134;
    goto LABEL_15;
  }

  WitnessTable = swift_getWitnessTable();
  v54 = sub_1CF937C7C(v20, WitnessTable);
  v55 = v141;
  v56 = v134;
  if ((v54 & 1) == 0)
  {
LABEL_15:
    v61 = v138;
    goto LABEL_16;
  }

  v57 = v157;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v59 = v58;
  result = (*(v146 + 8))(v57, v158);
  v60 = v59 * 1000000000.0;
  if (COERCE__INT64(fabs(v59 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_61;
  }

  if (v60 <= -9.22337204e18)
  {
LABEL_62:
    __break(1u);
  }

  else
  {
    v61 = v138;
    if (v60 < 9.22337204e18)
    {
      sub_1CF5666D4(v50, 0, v60, 0x10000000000, v152, 0, v166, v168, v55, v133);
LABEL_16:
      v63 = (*(*v36 + 496))(&v56[v61], v147, v168, v55, v133);
      v128 = v64;
      v65 = sub_1CF9E6DF8();
      v66 = v165;
      v67 = v154;
      if (!v65)
      {
LABEL_50:

        v123 = v141;
        v172 = v141;
        v173 = v167;
        v124 = __swift_allocate_boxed_opaque_existential_0(&AssociatedTypeWitness);
        (*(*(v123 - 8) + 16))(v124, v168, v123);
        v125 = v128;

        v160(&AssociatedTypeWitness, v125, 0, 0, 0);

        (*(v43 + 8))(v151, v20);
        return sub_1CEFCCC44(&AssociatedTypeWitness, &unk_1EC4C1B30, &qword_1CFA05300);
      }

      v68 = v52;
      v69 = 0;
      v149 = (v43 + 16);
      v137 = (v146 + 8);
      v130 = 0x80000001CFA52340;
      v129 = (v145 + 8);
      v146 = v43 + 8;
      LODWORD(v155) = v142;
      v70 = v142;
      v145 = v68;
      v138 = v63;
      while (1)
      {
        v71 = sub_1CF9E6DC8();
        sub_1CF9E6D78();
        if (v71)
        {
          v72 = v63 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v69;
          v148 = *(v43 + 16);
          v148(v67, v72, v20);
          v73 = v69 + 1;
          if (__OFADD__(v69, 1))
          {
            goto LABEL_49;
          }
        }

        else
        {
          result = sub_1CF9E7998();
          if (v144 != 8)
          {
            goto LABEL_64;
          }

          AssociatedTypeWitness = result;
          v148 = *v149;
          v148(v67, &AssociatedTypeWitness, v20);
          swift_unknownObjectRelease();
          v73 = v69 + 1;
          if (__OFADD__(v69, 1))
          {
LABEL_49:
            __break(1u);
            goto LABEL_50;
          }
        }

        v139(v66, v67, v20);
        v74 = *(v68 + 44);
        v150 = (v66 + *(v20 + 48));
        v75 = *(v150 + v74);
        if ((v142 & v75) == 1)
        {
          v76 = *(v161 + 608);
          v77 = *(v161 + 624);
          v78 = v163;
          v79 = v164;
          AssociatedTypeWitness = v163;
          v170 = v76;
          AssociatedConformanceWitness = v164;
          v172 = v77;
          type metadata accessor for JobResult();
          AssociatedTypeWitness = v78;
          v170 = v76;
          AssociatedConformanceWitness = v79;
          v172 = v77;
          v80 = type metadata accessor for PinningJob.UnpinItem();
          v81 = v157;
          sub_1CF9E5CE8();
          sub_1CF9E5C98();
          v83 = v82;
          result = (*v137)(v81, v158);
          v84 = v83 * 1000000000.0;
          if (COERCE__INT64(fabs(v83 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
          {
            __break(1u);
LABEL_53:
            __break(1u);
LABEL_54:
            __break(1u);
LABEL_55:
            __break(1u);
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
LABEL_58:
            __break(1u);
LABEL_59:
            __break(1u);
LABEL_60:
            __break(1u);
LABEL_61:
            __break(1u);
            goto LABEL_62;
          }

          if (v84 <= -9.22337204e18)
          {
            goto LABEL_53;
          }

          v43 = v162;
          v66 = v165;
          if (v84 >= 9.22337204e18)
          {
            goto LABEL_54;
          }

          v85 = v84;
          v86 = *(v80 + 48);
          v87 = *(v80 + 52);
          swift_allocObject();
          v88 = sub_1CF052464(v66, 0x2000000000000000, v85, 0x10000000000);
          sub_1CF803A0C(v166, v88);

          LODWORD(v155) = 1;
          v70 = 1;
          v68 = v145;
        }

        else
        {
          v89 = v75 ^ 1;
          LODWORD(v155) = v89 & v155;
          v70 &= v89;
        }

        v147 = swift_getWitnessTable();
        if (sub_1CF937C7C(v20, v147))
        {
          if (v70)
          {
            v90 = v157;
            sub_1CF9E5CE8();
            sub_1CF9E5C98();
            v92 = v91;
            result = (*v137)(v90, v158);
            v93 = v92 * 1000000000.0;
            if (COERCE__INT64(fabs(v92 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_55;
            }

            if (v93 <= -9.22337204e18)
            {
              goto LABEL_56;
            }

            if (v93 >= 9.22337204e18)
            {
              goto LABEL_57;
            }

            sub_1CF5666D4(v66, 0, v93, 0x10000000000, v152, 0, v166, v168, v141, v133);
            if (v40)
            {

              v126 = *v146;
              (*v146)(v66, v20);
              v126(v151, v20);
              v62 = v141;
              v172 = v141;
              v173 = v167;
              v41 = __swift_allocate_boxed_opaque_existential_0(&AssociatedTypeWitness);
              (*(*(v62 - 8) + 16))(v41, v168, v62);
              v42 = v40;
              v160(&AssociatedTypeWitness, 0, 0, 0, v40);

              goto LABEL_3;
            }

            v94 = 1;
            if (*(v150 + *(v68 + 48)))
            {
LABEL_18:
              LODWORD(v155) = v94;
              (*v146)(v66, v20);
              goto LABEL_19;
            }
          }

          else
          {
            v94 = 0;
            if ((*(v150 + *(v68 + 48)) & 1) == 0)
            {
              goto LABEL_18;
            }
          }
        }

        else
        {
          v94 = v155;
          if ((v155 & 1) == *(v150 + *(v68 + 48)))
          {
            goto LABEL_18;
          }
        }

        v135 = v70;
        v136 = v73;
        v150 = v40;
        v95 = v156;
        v96 = v148;
        v148(v156, v66, v20);
        v97 = &v95[*(v20 + 48)];
        v98 = *(v68 + 48);
        LODWORD(v155) = v94;
        v97[v98] = v94 & 1;
        v99 = *(v161 + 608);
        v100 = *(v161 + 624);
        AssociatedTypeWitness = v163;
        v170 = v99;
        v131 = v99;
        AssociatedConformanceWitness = v164;
        v172 = v100;
        v132 = v100;
        v101 = type metadata accessor for JobResult();
        MEMORY[0x1EEE9AC00](v101);
        qmemcpy(&v128 - 4, "from to  reason ", 16);
        LOBYTE(v127) = 0;
        AssociatedTypeWitness = v20;
        v170 = v20;
        AssociatedConformanceWitness = &type metadata for Fields;
        v172 = MEMORY[0x1E69E6158];
        TupleTypeMetadata = swift_getTupleTypeMetadata();
        v103 = TupleTypeMetadata[12];
        v104 = TupleTypeMetadata[16];
        v105 = v153;
        v106 = &v153[TupleTypeMetadata[20]];
        v96(v153, v165, v20);
        v107 = v95;
        v67 = v154;
        v96((v105 + v103), v107, v20);
        *(v105 + v104) = 0x800000000000000;
        v43 = v162;
        *v106 = 0xD000000000000019;
        *(v106 + 1) = v130;
        v108 = v143;
        swift_storeEnumTagMultiPayload();
        sub_1CF9491AC(v166, v105);
        v109 = v105;
        v66 = v165;
        (*v129)(v109, v108);
        v110 = v147;
        if ((sub_1CF937C7C(v20, v147) & 1) == 0)
        {
          AssociatedTypeWitness = v163;
          v170 = v131;
          AssociatedConformanceWitness = v164;
          v172 = v132;
          type metadata accessor for Maintenance.ResolveItemEvictability();
          v111 = v157;
          sub_1CF9E5CE8();
          sub_1CF9E5C98();
          v113 = v112;
          result = (*v137)(v111, v158);
          v114 = v113 * 1000000000.0;
          if (COERCE__INT64(fabs(v113 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_58;
          }

          if (v114 <= -9.22337204e18)
          {
            goto LABEL_59;
          }

          if (v114 >= 9.22337204e18)
          {
            goto LABEL_60;
          }

          v115 = sub_1CF559420(v66, 0, v114, 0x10000000000);
          sub_1CF803A0C(v166, v115);

          sub_1CF06D940(v20, v110, &AssociatedTypeWitness);
          if (AssociatedTypeWitness == 1)
          {
            v116 = *(v134 + 15);
            v117 = *(v134 + 16);
            v118 = *(v134 + 17);
            v119 = *(v161 + 48);
            v120 = *(v161 + 52);
            swift_allocObject();
            v121 = sub_1CF052464(v66, v116, v117, v118);
            sub_1CF803A0C(v166, v121);
          }
        }

        v122 = *v146;
        (*v146)(v156, v20);
        v122(v66, v20);
        v68 = v145;
        v40 = v150;
        v73 = v136;
        v70 = v135;
LABEL_19:
        v63 = v138;
        ++v69;
        if (v73 == sub_1CF9E6DF8())
        {
          goto LABEL_50;
        }
      }
    }
  }

  __break(1u);
LABEL_64:
  __break(1u);
  return result;
}

uint64_t sub_1CF558FA0()
{
  v0 = *sub_1CF059B48();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1CF55900C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  swift_allocObject();
  return sub_1CF052464(a1, a2, a3, a4);
}

uint64_t objectdestroyTm_3()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[8];

  return swift_deallocObject();
}

uint64_t sub_1CF559118()
{
  v1 = *(v0 + 32);
  v2 = (*(**(v0 + 40) + 400))(0);
  return sub_1CF04AF48(v2 & 1) & 1;
}

uint64_t objectdestroy_10Tm()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v2 = *(sub_1CF9E8238() - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    (*(*(v1 - 8) + 8))(v0 + v3, v1);
  }

  v5 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + v5);

  v9 = *(v0 + v6);

  v10 = *(v0 + v7);

  v11 = *(v0 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF5592F0(void *a1)
{
  v3 = v1[2];
  v4 = v1[4];
  v5 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v6 = *(sub_1CF9E8238() - 8);
  v7 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF5572C4(a1, v1 + v7, *(v1 + v8), *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1CF559504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1CF9E6EC8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v15 = swift_allocObject();
  v15[2] = a7;
  v15[3] = a8;
  v15[4] = a9;
  v15[5] = a1;
  v15[6] = a2;
  sub_1CF559F20(sub_1CF559EF8, v15, v9, a7, a8, a9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](0xD00000000000003FLL, 0x80000001CFA46EA0);
    sub_1CF9E7FD8();
    MEMORY[0x1D3868CC0](46, 0xE100000000000000);
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

void sub_1CF5596B8()
{
  if (!fpfs_is_internal_build())
  {
    goto LABEL_6;
  }

  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1CF9E6888();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = sub_1CF9E6888();
  v4 = [v2 objectForKey_];

  if (!v4)
  {

    memset(v7, 0, sizeof(v7));
    sub_1CF0248E0(v7);
LABEL_6:
    v6 = 600;
    goto LABEL_7;
  }

  sub_1CF9E7728();
  swift_unknownObjectRelease();
  sub_1CF0248E0(v7);
  v5 = sub_1CF9E6888();
  v6 = [v2 integerForKey_];

LABEL_7:
  qword_1EC4C1710 = v6;
}

uint64_t sub_1CF5597FC(uint64_t a1)
{
  v2 = *v1;
  v8 = a1;
  v3 = *(v2 + 96);
  v9 = *(v2 + 80);
  v10 = v3;
  v4 = type metadata accessor for StuckDeletionMonitor();
  WitnessTable = swift_getWitnessTable();
  return sub_1CF559504(sub_1CF559EDC, v7, "FileProviderDaemon/StuckDeletionMonitor.swift", 45, 2, 87, v4, MEMORY[0x1E69E7CA8] + 8, WitnessTable);
}

uint64_t sub_1CF5598CC(uint64_t *a1, void *a2)
{
  v4 = a2[3];
  v5 = a2[4];
  v6 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, v4);
  sub_1CF4FB2BC(0xD000000000000021, 0x80000001CFA46F30, v4, v5);
  v7 = a1[7];
  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  v10 = *(v6 + 96);
  v12[1] = *(v6 + 80);
  v12[2] = v10;
  v13 = v7;

  sub_1CF4FB38C(8224, 0xE200000000000000, sub_1CF559FFC, v12, v8, MEMORY[0x1E69E7CA8] + 8, v9);
}

uint64_t sub_1CF5599EC(void *a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1CF9E75D8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v43 = v29 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = *(AssociatedConformanceWitness + 40);
  if (sub_1CF9E7028())
  {
    v10 = a1[3];
    v11 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v10);
    return sub_1CF4FB2BC(0xD000000000000013, 0x80000001CFA46F60, v10, v11);
  }

  v31 = a1;
  v29[2] = v2;
  if ((a2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1CF9E7808();
    result = sub_1CF9E7038();
    a2 = v38;
    v13 = v39;
    v14 = v40;
    v33 = v41;
    v15 = v42;
  }

  else
  {
    v16 = -1 << *(a2 + 32);
    v13 = a2 + 56;
    v14 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v15 = v18 & *(a2 + 56);

    v33 = 0;
  }

  v34 = AssociatedTypeWitness - 8;
  v29[1] = v14;
  v32 = a2;
  v30 = v13;
  while (a2 < 0)
  {
    v28 = sub_1CF9E7838();
    v26 = v43;
    if (!v28)
    {
LABEL_22:
      (*(*(AssociatedTypeWitness - 8) + 56))(v43, 1, 1, AssociatedTypeWitness);
      return sub_1CEFCB59C();
    }

    sub_1CF9E8008();
    swift_unknownObjectRelease();
    v22 = *(AssociatedTypeWitness - 8);
LABEL_12:
    (*(v22 + 56))(v26, 0, 1, AssociatedTypeWitness);
    v24 = v31[3];
    v23 = v31[4];
    __swift_project_boxed_opaque_existential_1(v31, v24);
    v36 = 0;
    v37 = 0xE000000000000000;
    v25 = *(AssociatedConformanceWitness + 16);
    sub_1CF9E7FE8();
    (*(v22 + 8))(v26, AssociatedTypeWitness);
    sub_1CF4FB2BC(v36, v37, v24, v23);

    a2 = v32;
    v13 = v30;
  }

  v26 = v43;
  if (v15)
  {
    v19 = v33;
LABEL_11:
    v20 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v21 = *(a2 + 48);
    v22 = *(AssociatedTypeWitness - 8);
    (*(v22 + 16))(v43, v21 + *(v22 + 72) * (v20 | (v19 << 6)), AssociatedTypeWitness);
    goto LABEL_12;
  }

  v27 = v33;
  while (1)
  {
    v19 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v19 >= ((v14 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v15 = *(v13 + 8 * v19);
    ++v27;
    if (v15)
    {
      v33 = v19;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF559E4C()
{
  swift_weakDestroy();

  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  v3 = *(v0 + 64);

  return v0;
}

uint64_t sub_1CF559E8C()
{
  sub_1CF559E4C();

  return swift_deallocClassInstance();
}

uint64_t sub_1CF559EF8()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  return v1();
}

uint64_t sub_1CF559F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a1;
  v12[6] = a2;

  v14 = a3;
  sub_1CF559FD0(&v14);
}

uint64_t sub_1CF559FD0(void *a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  return v2(*a1);
}

uint64_t sub_1CF559FFC(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_1CF5599EC(a1, v1[6]);
}

uint64_t sub_1CF55A020(uint64_t a1, uint64_t a2, int a3)
{
  v6 = sub_1CF9E53C8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v23 - v12;
  if (qword_1EC4BCD50 != -1)
  {
    swift_once();
  }

  if (sub_1CEFDB148(a1, a2, qword_1EC4C1718))
  {
    v23[2] = 22;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF198A44();
    sub_1CF9E57D8();
    v13 = v10;
LABEL_5:
    sub_1CF9E53A8();
    (*(v7 + 8))(v13, v6);
    return swift_willThrow();
  }

  v15 = sub_1CF008708(&unk_1F4BED7D0);
  v16 = sub_1CF9E6978();
  v17 = fremovexattr(a3, (v16 + 32), 0);

  if ((v17 & 0x80000000) == 0 || !MEMORY[0x1D38683F0](v18))
  {
  }

  v19 = MEMORY[0x1D38683F0]();
  v20 = sub_1CF008830(v19, v15);

  if (!v20)
  {
    MEMORY[0x1D38683F0](result);
    v21 = sub_1CF9E6138();
    if ((v21 & 0x100000000) != 0)
    {
      v22 = 22;
    }

    else
    {
      v22 = v21;
    }

    v23[3] = v22;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF198A44();
    sub_1CF9E57D8();
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_1CF55A274()
{
  v0 = sub_1CF6F4950(&unk_1F4BED720);
  result = swift_arrayDestroy();
  qword_1EC4C1718 = v0;
  return result;
}

uint64_t sub_1CF55A2C0@<X0>(int a1@<W0>, const void *a2@<X3>, uint64_t a3@<X4>, int *a4@<X8>)
{
  if (a2)
  {
    v7 = a3 - a2;
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_1CF9E6978();
  v9 = fsetxattr(a1, (v8 + 32), a2, v7, 0, 0);

  *a4 = v9;
  return result;
}

uint64_t sub_1CF55A348@<X0>(int a1@<W0>, char **a2@<X3>, size_t *a3@<X4>, ssize_t *a4@<X8>)
{
  v7 = *a3;
  v8 = sub_1CF9E6978();
  v9 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_1CF1F7574(0, *(v9 + 2), 0, v9);
  }

  *a2 = v9;
  v11 = fgetxattr(a1, (v8 + 32), v9 + 32, v7, 0, 0);

  *a4 = v11;
  return result;
}

id sub_1CF55A400(id *a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  [*a1 fractionCompleted];
  if (v5 >= 1.0)
  {
    v7 = [a3 totalUnitCount];
  }

  else
  {
    [v4 fractionCompleted];
    [a3 totalUnitCount];
    v6 = sub_1CF9E6F48();
    v7 = sub_1CF9E8198();
  }

  return [a3 setCompletedUnitCount_];
}

uint64_t sub_1CF55A4C4(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_1CF9E7818();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_1CF55A4E8(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v13 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_1CF6E9500(v12, *v11, *(v11 + 8)))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = *(v2 + 48) + ((v9 << 10) | (16 * v10));
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v13;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF55A5D0(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = *(v1 + 48) + ((v8 << 10) | (16 * v9));
      result = sub_1CF6E9500(&v11, *v10, *(v10 + 8));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

char *sub_1CF55A6B8(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v9 = sub_1CF9E5248();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1CF9E5268();
  v34 = *(v13 - 8);
  v14 = *(v34 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a3;
  v37 = a4;
  v38 = v4;
  v39 = a1;
  v18 = (*(a4 + 3))(sub_1CF55B560, v35, a3, a4, v15);
  if (!v5)
  {
    v19 = v18;
    v40 = v17;
    v33 = 0;
    if ([v18 next])
    {
      v31 = v12;
      v32 = v13;
      a4 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v20 = objc_autoreleasePoolPush();
        v21 = v19;
        v22 = [v21 longAtIndex_];
        if (v22 == 0x8000000000000000)
        {
          v25 = 2;
          v23 = 1;
        }

        else
        {
          v23 = v22;
          v24 = v40;
          if (v22)
          {
            if (v22 < 0)
            {
              v23 = -v22;
              if (-v22 >> 32)
              {
                sub_1CF9E51B8();
                sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
                sub_1CF24D0AC();
                v30 = v32;
                sub_1CF9E57D8();
                sub_1CF9E50D8();
                (*(v34 + 8))(v24, v30);
                swift_willThrow();

                objc_autoreleasePoolPop(v20);

                return a4;
              }

              v25 = 0;
            }

            else
            {
              v25 = 1;
            }
          }

          else
          {
            v25 = 2;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a4 = sub_1CF1F67E4(0, *(a4 + 2) + 1, 1, a4);
        }

        v27 = *(a4 + 2);
        v26 = *(a4 + 3);
        if (v27 >= v26 >> 1)
        {
          a4 = sub_1CF1F67E4((v26 > 1), v27 + 1, 1, a4);
        }

        *(a4 + 2) = v27 + 1;
        v28 = &a4[16 * v27];
        *(v28 + 4) = v23;
        v28[40] = v25;
        objc_autoreleasePoolPop(v20);
        if (([v21 next] & 1) == 0)
        {
          goto LABEL_19;
        }
      }
    }

    a4 = MEMORY[0x1E69E7CC0];
LABEL_19:
  }

  return a4;
}

uint64_t sub_1CF55A9DC(void *a1)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA44540);
  v2 = sub_1CF47FA34();
  v3 = *(v2 + qword_1EDEBBD78);
  v4 = *(v2 + qword_1EDEBBD78 + 8);

  MEMORY[0x1D3868CC0](v3, v4);

  MEMORY[0x1D3868CC0](0x44455845444E4920, 0xEC00000020594220);
  v5 = sub_1CF47FA34();
  v6 = *(v5 + qword_1EDEBBD78);
  v7 = *(v5 + qword_1EDEBBD78 + 8);

  MEMORY[0x1D3868CC0](v6, v7);

  MEMORY[0x1D3868CC0](0xD000000000000024, 0x80000001CFA49F30);
  v8 = sub_1CF9E8268();
  v9 = [a1 bindObjectParameter_];

  v10 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v12 = v11;

  MEMORY[0x1D3868CC0](v10, v12);

  return 0;
}

uint64_t sub_1CF55AB78(uint64_t a1)
{
  v3 = v2;
  v22 = MEMORY[0x1E69E7CD0];
  v5 = v1 + qword_1EDEBBC20;
  os_unfair_lock_lock((v1 + qword_1EDEBBC20));
  sub_1CF55AE0C((v5 + 8), &v22, a1);
  os_unfair_lock_unlock(v5);
  v7 = *(v1 + qword_1EC4EBCD0);
  if (!v7)
  {
LABEL_8:
    MEMORY[0x1EEE9AC00](v6);
    v17 = &v22;
    v18 = v1;
    v19 = a1;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4CF0, qword_1CFA0A740);
    sub_1CF3C8850(0, "lookup(byFileID:)", 17, 2, 2, sub_1CF55B588, v16, v14, &v20);
    if (v3)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v8 = *(v1 + qword_1EC4EBCD0 + 8);
  sub_1CF1FD6B8(*(v1 + qword_1EC4EBCD0), v8);
  v9 = v7;
  sub_1CF1FD6F8(v7, v8);
  v10 = sub_1CF033B88();
  if ((v10 & 0x200000) != 0)
  {
    MEMORY[0x1EEE9AC00](v10);
    v17 = &v22;
    v18 = v1;
    v19 = a1;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4CF0, qword_1CFA0A740);
    sub_1CF3C8850(0, "lookup(byFileID:)", 17, 2, 0, sub_1CF55B540, v16, v13, &v20);
    if (!v2)
    {

LABEL_12:
      a1 = v20;
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  v11 = v22;
  v20 = v9;
  v21 = 2;

  v12 = sub_1CF55A6B8(a1, &v20, &type metadata for SQLDatabaseReadOnlyAccessor, &off_1F4C179D8);
  if (v2)
  {

LABEL_7:
    v3 = 0;
    goto LABEL_8;
  }

  a1 = sub_1CF55B4E0(v12, v11);

LABEL_13:

  return a1;
}

uint64_t sub_1CF55AE0C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  if (*(*a1 + 16) && (v6 = sub_1CF7BF380(a3), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CD0];
  }

  sub_1CF55A5D0(v9);
  v10 = a1[12];
  if (*(v10 + 16) && (v11 = sub_1CF7BF380(a3), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 8 * v11);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CD0];
  }

  return sub_1CF55A5D0(v14);
}

uint64_t sub_1CF55AEAC@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v8 = *a2;
  v9 = a1[3];
  v10 = a1[4];
  v11 = __swift_project_boxed_opaque_existential_1(a1, v9);

  v12 = sub_1CF55A6B8(a3, v11, v9, v10);
  if (v5)
  {
  }

  v14 = sub_1CF55B4E0(v12, v8);

  *a4 = v14;
  return result;
}

void sub_1CF55AF5C(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v15[2] = a2;
  v15[3] = a3;
  v15[5] = a1;
  v6 = (*(a3 + 24))(sub_1CF55B4D4, v15);
  if (!v4)
  {
    v7 = v6;
    if ([v6 next])
    {
      v8 = v7;
      sub_1CEFE9AC4([v8 longAtIndex_], &v16);

      v9 = v16;
      v10 = v17;
      v11 = [v8 stringAtIndex_];
      v12 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v14 = v13;

      *a4 = v9;
      a4[1] = v10;
      a4[2] = v12;
      a4[3] = v14;
    }

    else
    {

      *a4 = 0u;
      *(a4 + 1) = 0u;
    }
  }
}

uint64_t sub_1CF55B08C(void *a1)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000022, 0x80000001CFA524A0);
  v2 = sub_1CF47FA34();
  v3 = *(v2 + qword_1EDEBBD78);
  v4 = *(v2 + qword_1EDEBBD78 + 8);

  MEMORY[0x1D3868CC0](v3, v4);

  MEMORY[0x1D3868CC0](0x44455845444E4920, 0xEC00000020594220);
  v5 = sub_1CF47FA34();
  v6 = *(v5 + qword_1EDEBBD78);
  v7 = *(v5 + qword_1EDEBBD78 + 8);

  MEMORY[0x1D3868CC0](v6, v7);

  MEMORY[0x1D3868CC0](0xD000000000000024, 0x80000001CFA49F30);
  v8 = sub_1CF9E8268();
  v9 = [a1 bindObjectParameter_];

  v10 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v12 = v11;

  MEMORY[0x1D3868CC0](v10, v12);

  return 0;
}

void sub_1CF55B228(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6 = *(v2 + qword_1EC4EBCD0);
  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = *(v2 + qword_1EC4EBCD0 + 8);
  sub_1CF1FD6B8(*(v2 + qword_1EC4EBCD0), v7);
  v8 = v6;
  sub_1CF1FD6F8(v6, v7);
  v9 = sub_1CF033B88();
  if ((v9 & 0x200000) != 0)
  {
    MEMORY[0x1EEE9AC00](v9);
    v13 = v2;
    v14 = a1;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1720, &qword_1CFA0A738);
    sub_1CF3C8850(0, "lookupLink(byFileID:)", 21, 2, 0, sub_1CF55B56C, v12, v10, a2);
    if (v3)
    {

      goto LABEL_7;
    }
  }

  else
  {
    v15 = v8;
    v16 = 2;
    sub_1CF55AF5C(a1, &type metadata for SQLDatabaseReadOnlyAccessor, &off_1F4C179D8, a2);
    if (v3)
    {

LABEL_7:
      MEMORY[0x1EEE9AC00](a1);
      v13 = v2;
      v14 = a1;
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1720, &qword_1CFA0A738);
      sub_1CF3C8850(0, "lookupLink(byFileID:)", 21, 2, 2, sub_1CF55B458, v12, v11, a2);
      return;
    }
  }
}

void sub_1CF55B470(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  sub_1CF55AF5C(v4, v6, v7, a2);
}

uint64_t sub_1CF55B4D4(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_1CF55B08C(a1);
}

uint64_t sub_1CF55B4E0(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;
      v3 += 16;
      sub_1CF6E9500(v7, v4, v5);
      --v2;
    }

    while (v2);
    return v8;
  }

  return a2;
}

uint64_t sub_1CF55B560(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_1CF55A9DC(a1);
}

void sub_1CF55B5A4(const char *a1, uint64_t a2, unint64_t *a3, uint64_t a4, _BYTE *a5, uint64_t a6, uint64_t (*a7)(char *), uint64_t a8, unsigned __int8 a9)
{
  v150 = a8;
  v149 = a7;
  v162 = a3;
  v159 = a2;
  v175 = *MEMORY[0x1E69E9840];
  v160 = sub_1CF9E53C8();
  v157 = *(v160 - 8);
  v13 = *(v157 + 64);
  v14 = MEMORY[0x1EEE9AC00](v160);
  v16 = &v126 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v158 = &v126 - v17;
  v18 = type metadata accessor for FSDirectoryEnumerator();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v145 = (&v126 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v143 = sub_1CF9E5648();
  v21 = *(v143 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v143);
  v148 = &v126 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C50C0, &unk_1CFA084A0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v153 = &v126 - v26;
  v151 = sub_1CF9E5FF8();
  v27 = *(v151 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x1EEE9AC00](v151);
  v144 = &v126 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v147 = &v126 - v31;
  v155 = sub_1CF9E5A58();
  v154 = *(v155 - 8);
  v32 = *(v154 + 64);
  v33 = MEMORY[0x1EEE9AC00](v155);
  v146 = &v126 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v152 = &v126 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v156 = &v126 - v37;
  v38 = opendir(a1);
  if (!v38)
  {
    MEMORY[0x1D38683F0]();
    v93 = sub_1CF9E6138();
    if ((v93 & 0x100000000) == 0)
    {
      *&v166[1] = v93;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF198A44();
      sub_1CF9E57D8();
      *&v166[1] = 0;
      *&v166[9] = 0xE000000000000000;
      sub_1CF9E7948();

      *&v166[1] = 0xD000000000000018;
      *&v166[9] = 0x80000001CFA524F0;
      v94 = sub_1CF9E5A18();
      MEMORY[0x1D3868CC0](v94);

      v95 = *&v166[1];
      v96 = *&v166[9];
      v97 = sub_1CF008708(&unk_1F4BEF058);
      sub_1CF9E57A8();
      v98 = sub_1CF9E6148();
      v99 = sub_1CF008830(v98, v97);

      if (v99)
      {
        if (qword_1EDEA3408 != -1)
        {
          swift_once();
        }

        sub_1CF9E7298();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
        v100 = swift_allocObject();
        *(v100 + 16) = xmmword_1CF9FA440;
        *(v100 + 56) = MEMORY[0x1E69E6158];
        *(v100 + 64) = sub_1CEFD51C4();
        *(v100 + 32) = v95;
        *(v100 + 40) = v96;
        v101 = v160;
        sub_1CF9E57A8();
        v102 = sub_1CF9E6148();
        v103 = MEMORY[0x1E69E7358];
        *(v100 + 96) = MEMORY[0x1E69E72F0];
        *(v100 + 104) = v103;
        *(v100 + 72) = v102;
      }

      else
      {
        if (qword_1EDEA3408 != -1)
        {
          swift_once();
        }

        sub_1CF9E72A8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
        v104 = swift_allocObject();
        *(v104 + 16) = xmmword_1CF9FA440;
        *(v104 + 56) = MEMORY[0x1E69E6158];
        *(v104 + 64) = sub_1CEFD51C4();
        *(v104 + 32) = v95;
        *(v104 + 40) = v96;
        v101 = v160;
        sub_1CF9E57A8();
        v105 = sub_1CF9E6148();
        v106 = MEMORY[0x1E69E7358];
        *(v104 + 96) = MEMORY[0x1E69E72F0];
        *(v104 + 104) = v106;
        *(v104 + 72) = v105;
      }

      sub_1CF9E6018();

      (*(v157 + 8))(v16, v101);
      goto LABEL_91;
    }

LABEL_103:
    __break(1u);
LABEL_104:
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/extension/URL+LocalStorageAdditions.swift", 121, 2, 80);
  }

  v39 = v38;
  v40 = readdir(v38);
  if (!v40)
  {
LABEL_81:
    if (!closedir(v39))
    {
      goto LABEL_91;
    }

    MEMORY[0x1D38683F0]();
    v107 = sub_1CF9E6138();
    if ((v107 & 0x100000000) == 0)
    {
      *&v166[1] = v107;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF198A44();
      v108 = v160;
      sub_1CF9E57D8();
      *&v166[1] = 0;
      *&v166[9] = 0xE000000000000000;
      sub_1CF9E7948();

      *&v166[1] = 0xD000000000000019;
      *&v166[9] = 0x80000001CFA52510;
      sub_1CF9E5A18();
      v109 = sub_1CF9E6888();

      v110 = [v109 fp_prettyPath];

      v111 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v113 = v112;

      MEMORY[0x1D3868CC0](v111, v113);

      v114 = *&v166[1];
      v115 = *&v166[9];
      sub_1CF9E57A8();
      v116 = sub_1CF9E6148();
      if (sub_1CF008830(v116, MEMORY[0x1E69E7CD0]))
      {
        if (qword_1EDEA3408 != -1)
        {
          swift_once();
        }

        sub_1CF9E7298();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
        v117 = swift_allocObject();
        *(v117 + 16) = xmmword_1CF9FA440;
        *(v117 + 56) = MEMORY[0x1E69E6158];
        *(v117 + 64) = sub_1CEFD51C4();
        *(v117 + 32) = v114;
        *(v117 + 40) = v115;
        v118 = v158;
        sub_1CF9E57A8();
        v119 = sub_1CF9E6148();
        v120 = MEMORY[0x1E69E7358];
        *(v117 + 96) = MEMORY[0x1E69E72F0];
        *(v117 + 104) = v120;
        *(v117 + 72) = v119;
      }

      else
      {
        if (qword_1EDEA3408 != -1)
        {
          swift_once();
        }

        sub_1CF9E72A8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
        v121 = swift_allocObject();
        *(v121 + 16) = xmmword_1CF9FA440;
        *(v121 + 56) = MEMORY[0x1E69E6158];
        *(v121 + 64) = sub_1CEFD51C4();
        *(v121 + 32) = v114;
        *(v121 + 40) = v115;
        v118 = v158;
        sub_1CF9E57A8();
        v122 = sub_1CF9E6148();
        v123 = MEMORY[0x1E69E7358];
        *(v121 + 96) = MEMORY[0x1E69E72F0];
        *(v121 + 104) = v123;
        *(v121 + 72) = v122;
      }

      sub_1CF9E6018();

      (*(v157 + 8))(v118, v108);
      goto LABEL_91;
    }

    __break(1u);
    goto LABEL_103;
  }

  v41 = v40;
  v141 = a5;
  v139 = (v154 + 16);
  v134 = (v27 + 56);
  v140 = a9;
  v131 = (v21 + 8);
  v137 = *MEMORY[0x1E695DAA0];
  v136 = (v27 + 48);
  v133 = (v27 + 32);
  v135 = (v27 + 8);
  v138 = xmmword_1CF9FA450;
  v42 = v162;
  v163 = v18;
  v164 = v39;
  v142 = (v154 + 8);
  while (1)
  {
    v165 = objc_autoreleasePoolPush();
    v43 = sub_1CF9E6A68();
    v45 = v44;
    v46 = *v42;
    v47 = *(a4 + *(v18 + 28));
    if (*v42 >= v47 && *v42 - v47 >= *(a4 + *(v18 + 32)))
    {

      *v141 = 0;
      objc_autoreleasePoolPop(v165);
      v39 = v164;
      goto LABEL_81;
    }

    if (v46 == -1)
    {
      __break(1u);
LABEL_93:
      objc_autoreleasePoolPop(v43);
      (*v142)(v156, v45);
      goto LABEL_94;
    }

    *v42 = v46 + 1;
    if ((a6 & 1) != 0 && (sub_1CF9E6AE8() & 1) == 0)
    {
      break;
    }

    v48 = 0;
    if (v43 == 46 && v45 == 0xE100000000000000)
    {
      goto LABEL_21;
    }

LABEL_17:
    if (sub_1CF9E8048() & 1) != 0 || v43 == 11822 && v45 == 0xE200000000000000 || (sub_1CF9E8048())
    {
LABEL_21:

      v39 = v164;
      v41 = readdir(v164);
      v18 = v163;
      goto LABEL_22;
    }

    if (sub_1CF9E6AE8())
    {
      if (a6)
      {
        goto LABEL_21;
      }
    }

    else if (a6 & v48)
    {
      goto LABEL_21;
    }

    LODWORD(v132) = v41->d_type;
    v52 = v156;
    sub_1CF9E5958();

    if (v46 >= v47)
    {
      v43 = objc_autoreleasePoolPush();
      v53 = v161;
      v54 = v149(v52);
      v161 = v53;
      v45 = v155;
      if (v53)
      {
        goto LABEL_93;
      }

      *v141 = v54 & 1;
      objc_autoreleasePoolPop(v43);
    }

    else
    {
      v45 = v155;
    }

    if ((v140 & 1) != 0 || v132 != 4)
    {
      v18 = v163;
      v39 = v164;
      v62 = v142;
      goto LABEL_70;
    }

    v132 = a6;
    v55 = v156;
    if ((sub_1CF9E5848() & 1) == 0)
    {
      goto LABEL_104;
    }

    v130 = objc_autoreleasePoolPush();
    v128 = *v139;
    v128(v152, v55, v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4700, &qword_1CFA00810);
    inited = swift_initStackObject();
    *(inited + 16) = v138;
    v57 = v137;
    *(inited + 32) = v137;
    v58 = v57;
    sub_1CEFF8A84(inited);
    swift_setDeallocating();
    sub_1CF008180(inited + 32, type metadata accessor for URLResourceKey);
    v59 = v148;
    v60 = v161;
    sub_1CF9E58A8();
    if (v60)
    {

      v61 = v151;
      (*v134)(v153, 1, 1, v151);
      v161 = 0;
      v18 = v163;
    }

    else
    {
      v161 = 0;

      sub_1CF9E55E8();
      (*v131)(v59, v143);
      v18 = v163;
      v61 = v151;
    }

    v63 = v152;
    sub_1CF9E5998();
    v64 = v155;
    v129 = *v142;
    v129(v63, v155);
    objc_autoreleasePoolPop(v130);
    if ((*v136)(v153, 1, v61) != 1)
    {
      v45 = v64;
      (*v133)(v147, v153, v61);
      v65 = v144;
      sub_1CF9E5FA8();
      v66 = sub_1CF9E5FB8();
      v130 = *v135;
      (v130)(v65, v61);
      if (v66)
      {
        if ((v132 & 2) != 0)
        {
          goto LABEL_43;
        }

LABEL_45:
        v68 = *(a4 + *(v18 + 32));
        v69 = *v42;
        if (v46 >= v47)
        {
          v70 = v69 >= v47;
          v73 = v69 - v47;
          if (!v70)
          {
            goto LABEL_99;
          }

          v70 = v68 >= v73;
          v68 -= v73;
          v72 = v128;
          if (!v70)
          {
            goto LABEL_101;
          }

          v127 = 0;
        }

        else
        {
          v70 = v47 >= v69;
          v71 = v47 - v69;
          if (!v70)
          {
            goto LABEL_100;
          }

          v72 = v128;
          v127 = v71;
        }

        v128 = objc_autoreleasePoolPush();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF290, &unk_1CFA006C0);
        v74 = *(v154 + 72);
        v75 = (*(v154 + 80) + 32) & ~*(v154 + 80);
        v76 = swift_allocObject();
        *(v76 + 16) = v138;
        v72(v76 + v75, v156, v45);
        v77 = v163;
        v78 = v145;
        sub_1CF004C30(a4 + v163[5], v145 + v163[5]);
        v79 = (v78 + v77[9]);
        *v78 = v76;
        *(v78 + v77[6]) = 1;
        *(v78 + v77[7]) = v127;
        v80 = v68;
        *(v78 + v77[8]) = v68;
        v81 = a4 + v77[9];
        v82 = *v81;
        v83 = *(v81 + 8);
        *v79 = *v81;
        v79[1] = v83;
        v166[8] = 0;
        *v166 = v80 != 0;
        sub_1CF03C63C(v82);
        if (!*(v76 + 16))
        {
          __break(1u);
LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
        }

        v72(v146, (v76 + v75), v155);
        v39 = v164;
        if (v166[0])
        {
          v84 = objc_autoreleasePoolPush();
          a6 = v132;
          v85 = v129;
          if (v82)
          {
            v86 = v84;
            v87 = v82(v146);
            if (v88)
            {
              v89 = 3;
            }

            else
            {
              v89 = v87;
            }

            objc_autoreleasePoolPop(v86);
            v18 = v163;
            v45 = v155;
            if ((v89 & 8) != 0)
            {
              v67 = v151;
              v39 = v164;
              goto LABEL_67;
            }
          }

          else
          {
            objc_autoreleasePoolPop(v84);
            v89 = 3;
            v18 = v163;
            v45 = v155;
          }

          LODWORD(v127) = (~v89 & 6) == 0;
          v90 = objc_autoreleasePoolPush();
          MEMORY[0x1EEE9AC00](v90);
          *(&v126 - 8) = v146;
          *(&v126 - 7) = &v166[1];
          *(&v126 - 6) = v145;
          *(&v126 - 5) = v166;
          v91 = v149;
          *(&v126 - 4) = v89;
          *(&v126 - 3) = v91;
          *(&v126 - 2) = v150;
          *(&v126 - 8) = v127;
          v92 = v161;
          sub_1CF9E59B8();
          v161 = v92;
          v51 = v90;
          if (v92)
          {
            goto LABEL_96;
          }

          objc_autoreleasePoolPop(v90);
          v67 = v151;
          v39 = v164;
        }

        else
        {
          a6 = v132;
          v18 = v163;
          v67 = v151;
          v45 = v155;
        }

        v85 = v129;
LABEL_67:
        v62 = v142;
        v85(v146, v45);
        if (__CFADD__(*v42, *&v166[1]))
        {
          goto LABEL_98;
        }

        *v42 += *&v166[1];
        sub_1CF008180(v145, type metadata accessor for FSDirectoryEnumerator);
        objc_autoreleasePoolPop(v128);
      }

      else
      {
        if ((v132 & 4) == 0)
        {
          goto LABEL_45;
        }

LABEL_43:
        a6 = v132;
        v67 = v151;
        v39 = v164;
        v62 = v142;
      }

      (v130)(v147, v67);
LABEL_70:
      v41 = readdir(v39);
      (*v62)(v156, v45);
      goto LABEL_22;
    }

    sub_1CF55CEA0(v153);
    v39 = v164;
    v41 = readdir(v164);
    v129(v156, v64);
    a6 = v132;
LABEL_22:
    objc_autoreleasePoolPop(v165);
    if (!v41)
    {
      goto LABEL_81;
    }
  }

  v174 = 0u;
  v172 = 0u;
  v173 = 0u;
  v170 = 0u;
  v171 = 0u;
  v168 = 0u;
  v169 = 0u;
  v167 = 0u;
  *&v166[1] = 0u;
  dd_fd = v164->__dd_fd;
  v50 = sub_1CF9E6978();
  fstatat(dd_fd, (v50 + 32), &v166[1], 32);

  if ((DWORD1(v173) & 0x80000000) == 0)
  {
    v48 = (DWORD1(v173) >> 15) & 1;
    if (v43 == 46)
    {
      v42 = v162;
      if (v45 == 0xE100000000000000)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v42 = v162;
    }

    goto LABEL_17;
  }

  __break(1u);
LABEL_96:
  objc_autoreleasePoolPop(v51);
  v125 = v129;
  v129(v146, v45);
  sub_1CF008180(v145, type metadata accessor for FSDirectoryEnumerator);
  objc_autoreleasePoolPop(v128);
  (v130)(v147, v151);
  v125(v156, v45);
LABEL_94:
  objc_autoreleasePoolPop(v165);
LABEL_91:
  v124 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1CF55CB7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(id), uint64_t a4)
{
  v31 = a4;
  v32 = a3;
  v33 = a1;
  v34 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v31 - v6;
  v8 = type metadata accessor for LocalDomain();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = (&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v31 - v13;
  v15 = sub_1CF9E5A58();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v31 - v22;
  v24 = *(v16 + 16);
  v24(&v31 - v22, v33, v15, v21);
  v25 = type metadata accessor for FSDirectoryEnumerator();
  sub_1CF004C30(v34 + *(v25 + 20), v14);
  (v24)(v19, v23, v15);
  sub_1CF004C30(v14, v11);
  v26 = type metadata accessor for VFSItem(0);
  v27 = 1;
  (*(*(v26 - 8) + 56))(v7, 1, 1, v26);
  v28 = objc_allocWithZone(type metadata accessor for LocalItem(0));
  v29 = sub_1CF001704(v19, v11, v7);
  sub_1CF008180(v14, type metadata accessor for LocalDomain);
  (*(v16 + 8))(v23, v15);
  if (v29)
  {
    v27 = v32(v29);
  }

  return v27 & 1;
}

uint64_t sub_1CF55CE4C()
{
  v1 = *(v0 + 16);
  type metadata accessor for URLResourceKey(0);
  swift_arrayDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_1CF55CEA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C50C0, &unk_1CFA084A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1CF55CF30()
{
  sub_1CF55CFE0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for LocalDomain();
    if (v1 <= 0x3F)
    {
      sub_1CF55D038();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1CF55CFE0()
{
  if (!qword_1EDEA3808)
  {
    sub_1CF9E5A58();
    v0 = sub_1CF9E6E58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEA3808);
    }
  }
}

void sub_1CF55D038()
{
  if (!qword_1EDEA3338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0710, &unk_1CF9FE550);
    v0 = sub_1CF9E75D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEA3338);
    }
  }
}

unint64_t sub_1CF55D0B0()
{
  result = qword_1EC4C1728;
  if (!qword_1EC4C1728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1728);
  }

  return result;
}

unint64_t sub_1CF55D108()
{
  result = qword_1EC4C1730;
  if (!qword_1EC4C1730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1730);
  }

  return result;
}

unint64_t sub_1CF55D160()
{
  result = qword_1EC4C1738;
  if (!qword_1EC4C1738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1738);
  }

  return result;
}

unint64_t sub_1CF55D1B8()
{
  result = qword_1EC4C1740;
  if (!qword_1EC4C1740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1740);
  }

  return result;
}

void sub_1CF55D20C()
{
  sub_1CF9E5D98();
  if (v0 <= 0x3F)
  {
    sub_1CF194384();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1CF55D2C4()
{
  v1 = qword_1CFA0AB68[*v0];
  sub_1CF9E69C8();
}

uint64_t sub_1CF55D30C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1CF55D520();
  *a2 = result;
  return result;
}

uint64_t sub_1CF55D358@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CF55D520();
  *a1 = result;
  return result;
}

uint64_t sub_1CF55D38C(uint64_t a1)
{
  v2 = sub_1CF0152C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF55D3C8(uint64_t a1)
{
  v2 = sub_1CF0152C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1CF55D41C()
{
  result = qword_1EC4C1760;
  if (!qword_1EC4C1760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1760);
  }

  return result;
}

unint64_t sub_1CF55D474()
{
  result = qword_1EDEA84F8;
  if (!qword_1EDEA84F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA84F8);
  }

  return result;
}

unint64_t sub_1CF55D4CC()
{
  result = qword_1EDEA8500;
  if (!qword_1EDEA8500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA8500);
  }

  return result;
}

uint64_t sub_1CF55D520()
{
  v0 = sub_1CF9E7C78();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

void sub_1CF55D574(uint64_t a1, char *a2, int a3, uint64_t a4)
{
  v246 = a4;
  v252 = a3;
  v251 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v241 = v229 - v8;
  v9 = type metadata accessor for LocalDomain();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v239 = (v229 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v240 = v229 - v13;
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1778, qword_1CFA0AC20);
  v14 = *(*(v233 - 8) + 64);
  MEMORY[0x1EEE9AC00](v233);
  *&v234 = v229 - v15;
  v16 = sub_1CF9E5A58();
  v17 = *(v16 - 8);
  v247 = v16;
  v248 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v243 = v229 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v230 = v229 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v238 = (v229 - v23);
  MEMORY[0x1EEE9AC00](v24);
  v236 = v229 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v244 = v229 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v245 = v229 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = v229 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v242 = v229 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v232 = v229 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v231 = v229 - v39;
  MEMORY[0x1EEE9AC00](v40);
  *&v237 = v229 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v44 = v229 - v43;
  MEMORY[0x1EEE9AC00](v45);
  v47 = v229 - v46;
  MEMORY[0x1EEE9AC00](v48);
  v50 = v229 - v49;
  MEMORY[0x1EEE9AC00](v51);
  v53 = v229 - v52;
  v54 = sub_1CF9E64A8();
  v55 = *(v54 - 8);
  v56 = *(v55 + 64);
  v57 = MEMORY[0x1EEE9AC00](v54);
  v59 = (v229 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0));
  v249 = a1;
  v60 = *(a1 + 24);
  *v59 = v60;
  (*(v55 + 104))(v59, *MEMORY[0x1E69E8020], v54, v57);
  v61 = v60;
  v62 = sub_1CF9E64D8();
  (*(v55 + 8))(v59, v54);
  if ((v62 & 1) == 0)
  {
    __break(1u);
    goto LABEL_107;
  }

  v63 = *(v4 + OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_observedID);
  v235 = *MEMORY[0x1E6967298];
  v64 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v54 = v65;
  v253 = v63;
  v66 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v250 = v4;
  if (v64 == v66 && v54 == v67)
  {
    v62 = v4;

LABEL_7:
    v70 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v71 = sub_1CF9E6888();
    v72 = [v70 initWithSuiteName_];

    v50 = v251;
    if (!v72 || (v73 = sub_1CF9E6888(), v54 = [v72 BOOLForKey_], v72, v73, (v54 & 1) == 0))
    {
      if (v50[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_isAncestorInTrash] == 1)
      {
        v74 = *&v50[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_itemIdentifier];
        v75 = OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_fileURL;
        swift_beginAccess();
        sub_1CF33F8C8(&v50[v75], v53);
        sub_1CF55F0FC(v249, v74, v53);
        sub_1CEFCCC44(v53, &unk_1EC4BE310, qword_1CF9FCBE0);
        return;
      }
    }

    v76 = 1;
    goto LABEL_12;
  }

  v68 = sub_1CF9E8048();
  v69 = v253;

  if (v68)
  {

    v62 = v250;
    goto LABEL_7;
  }

  v97 = *MEMORY[0x1E6967158];
  v98 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v100 = v99;
  v101 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v54 = v102;
  if (v98 != v101 || v100 != v102)
  {
    v107 = sub_1CF9E8048();

    if (v107)
    {

      goto LABEL_26;
    }

    v229[1] = *MEMORY[0x1E6967258];
    v114 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v116 = v115;
    v118 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v119 = v114;
    v54 = v116;
    if (v119 == v118 && v116 == v117)
    {

      v120 = v248;
LABEL_39:
      sub_1CF33F8C8(v246, v50);
      v54 = v120;
      v138 = *(v120 + 48);
      v139 = v247;
      if (v138(v50, 1, v247) == 1)
      {
        sub_1CEFCCC44(v50, &unk_1EC4BE310, qword_1CF9FCBE0);
        v50 = v251;
        v140 = *&v251[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_parentItemIdentifier];
        v141 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v143 = v142;
        if (v141 != _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() || v143 != v144)
        {
          v54 = sub_1CF9E8048();

          if (v54)
          {
            goto LABEL_73;
          }

          goto LABEL_46;
        }

        goto LABEL_72;
      }

      v238 = v138;
      (*(v54 + 32))(v32, v50, v139);
      v145 = v245;
      sub_1CF9E5988();
      v146 = *(v249 + 48);
      if (*(v146 + 16))
      {
        v147 = v244;
        (*(v54 + 16))(v244, v146 + ((*(v54 + 80) + 32) & ~*(v54 + 80)), v139);
        LODWORD(v237) = sub_1CF9E59A8();
        v148 = *(v54 + 8);
        v54 += 8;
        v148(v147, v139);
        v148(v145, v139);
        v148(v32, v139);
        v50 = v251;
        v138 = v238;
        if ((v237 & 1) == 0)
        {
LABEL_46:
          sub_1CF33F8C8(v246, v47);
          v149 = v247;
          if (v138(v47, 1, v247) == 1)
          {
            sub_1CEFCCC44(v47, &unk_1EC4BE310, qword_1CF9FCBE0);
            v150 = objc_allocWithZone(MEMORY[0x1E695E000]);
            v151 = sub_1CF9E6888();
            v152 = [v150 initWithSuiteName_];

            v62 = v250;
            if (!v152 || (v153 = sub_1CF9E6888(), v54 = [v152 BOOLForKey_], v152, v153, (v54 & 1) == 0))
            {
              v154 = sub_1CF4F1CC8();
              if (v154)
              {
                v155 = v154;
                (*(v248 + 56))(v53, 1, 1, v247);
                sub_1CF55D574(v249, v155, 0, v53);

                sub_1CEFCCC44(v53, &unk_1EC4BE310, qword_1CF9FCBE0);
              }
            }
          }

          else
          {
            v54 = v236;
            (*(v248 + 32))(v236, v47, v149);
            v62 = v250;
            sub_1CF5602E8(v54, v249);
            if ((v181 & 1) == 0)
            {
              v182 = objc_allocWithZone(MEMORY[0x1E695E000]);
              v183 = sub_1CF9E6888();
              v184 = [v182 initWithSuiteName_];

              if (!v184 || (v185 = sub_1CF9E6888(), v186 = [v184 BOOLForKey_], v184, v185, (v186 & 1) == 0))
              {
                sub_1CF560998(v54, v249);
              }
            }

            (*(v248 + 8))(v54, v247);
          }

          goto LABEL_79;
        }

LABEL_73:
        v76 = 0;
        v62 = v250;
        goto LABEL_12;
      }

      __break(1u);
LABEL_112:
      __break(1u);
      return;
    }

    v137 = sub_1CF9E8048();

    v120 = v248;
    if (v137)
    {
      goto LABEL_39;
    }

    sub_1CF33F8C8(v246, v44);
    v47 = (v120 + 48);
    v174 = *(v120 + 48);
    v175 = v247;
    if (v174(v44, 1, v247) == 1)
    {
      sub_1CEFCCC44(v44, &unk_1EC4BE310, qword_1CF9FCBE0);
      v50 = v251;
      v176 = *&v251[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_parentItemIdentifier];
      v177 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v179 = v178;
      if (v177 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v179 == v180)
      {
LABEL_72:

        goto LABEL_73;
      }

      v207 = sub_1CF9E8048();

      v62 = v250;
      if ((v207 & 1) == 0)
      {
LABEL_103:
        v226 = v232;
        sub_1CF33F8C8(v246, v232);
        v227 = v247;
        if (v174(v226, 1, v247) == 1)
        {
          sub_1CEFCCC44(v226, &unk_1EC4BE310, qword_1CF9FCBE0);
        }

        else
        {
          v228 = v248;
          v54 = v230;
          (*(v248 + 32))(v230, v226, v227);
          sub_1CF5602E8(v54, v249);
          (*(v228 + 8))(v54, v227);
        }
      }

LABEL_79:
      v76 = 0;
      goto LABEL_12;
    }

    v198 = v175;
    v199 = *(v120 + 32);
    v199(v238, v44, v198);
    v200 = *&v251[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_itemIdentifier];
    v201 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v203 = v202;
    if (v201 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v203 == v204)
    {

      v205 = v238;
      v206 = v237;
    }

    else
    {
      v208 = sub_1CF9E8048();

      v205 = v238;
      v206 = v237;
      if ((v208 & 1) == 0)
      {
        goto LABEL_101;
      }
    }

    v236 = v199;
    v209 = v247;
    v210 = v248;
    (*(v248 + 16))(v206, v205, v247);
    (*(v210 + 56))(v206, 0, 1, v209);
    v211 = OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_fileURL;
    v212 = v251;
    swift_beginAccess();
    v213 = *(v233 + 48);
    v214 = v234;
    sub_1CF33F8C8(v206, v234);
    sub_1CF33F8C8(&v212[v211], v214 + v213);
    if (v174(v214, 1, v209) == 1)
    {
      sub_1CEFCCC44(v206, &unk_1EC4BE310, qword_1CF9FCBE0);
      if (v174(v214 + v213, 1, v209) == 1)
      {
        sub_1CEFCCC44(v214, &unk_1EC4BE310, qword_1CF9FCBE0);
        v205 = v238;
        goto LABEL_101;
      }
    }

    else
    {
      v215 = v231;
      sub_1CF33F8C8(v214, v231);
      if (v174(v214 + v213, 1, v209) != 1)
      {
        v216 = v214 + v213;
        v217 = v245;
        (v236)(v245, v216, v209);
        sub_1CF01C474(&qword_1EDEAB410, MEMORY[0x1E6968FB0]);
        v218 = sub_1CF9E6868();
        v219 = *(v248 + 8);
        v219(v217, v209);
        sub_1CEFCCC44(v237, &unk_1EC4BE310, qword_1CF9FCBE0);
        v219(v215, v209);
        sub_1CEFCCC44(v234, &unk_1EC4BE310, qword_1CF9FCBE0);
        v205 = v238;
        if (v218)
        {
LABEL_101:
          v220 = v245;
          sub_1CF9E5988();
          v221 = *(v249 + 48);
          if (!*(v221 + 16))
          {
            goto LABEL_112;
          }

          v54 = v247;
          v222 = v248;
          v223 = v244;
          (*(v248 + 16))(v244, v221 + ((*(v222 + 80) + 32) & ~*(v222 + 80)), v247);
          v224 = sub_1CF9E59A8();
          v225 = *(v222 + 8);
          v225(v223, v54);
          v225(v220, v54);
          v225(v205, v54);
          v62 = v250;
          v50 = v251;
          if ((v224 & 1) == 0)
          {
            goto LABEL_103;
          }

          goto LABEL_79;
        }

LABEL_99:
        sub_1CF560EF8(v249, 0xD000000000000020, 0x80000001CFA527E0);
        (*(v248 + 8))(v205, v247);
        return;
      }

      sub_1CEFCCC44(v237, &unk_1EC4BE310, qword_1CF9FCBE0);
      (*(v248 + 8))(v215, v209);
    }

    sub_1CEFCCC44(v214, &qword_1EC4C1778, qword_1CFA0AC20);
    v205 = v238;
    goto LABEL_99;
  }

LABEL_26:
  v62 = v250;
  v50 = v251;
  if ((v251[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_isFolder] & 1) == 0)
  {
    v254 = 0;
    v255 = 0xE000000000000000;
    sub_1CF9E7948();

    v254 = 0xD000000000000011;
    v255 = 0x80000001CFA52730;
    v108 = [v50 description];
    v109 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v111 = v110;

    MEMORY[0x1D3868CC0](v109, v111);

    MEMORY[0x1D3868CC0](0xD00000000000001DLL, 0x80000001CFA52810);
    v112 = NSFileProviderItemIdentifier.description.getter();
    MEMORY[0x1D3868CC0](v112);

    v89 = v254;
    v87 = v255;
    if (qword_1EDEA3408 == -1)
    {
LABEL_29:
      sub_1CF9E7298();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v113 = swift_allocObject();
      *(v113 + 16) = xmmword_1CF9FA450;
      *(v113 + 56) = MEMORY[0x1E69E6158];
      *(v113 + 64) = sub_1CEFD51C4();
      *(v113 + 32) = v89;
      *(v113 + 40) = v87;
      sub_1CF9E6018();

      return;
    }

LABEL_110:
    swift_once();
    goto LABEL_29;
  }

  v76 = 1;
LABEL_12:
  v59 = OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_numberOfChanges;
  v77 = *(v62 + OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_numberOfChanges);
  v78 = __CFADD__(v77, 1);
  v79 = v77 + 1;
  if (!v78)
  {
    LODWORD(v251) = v76;
    *(v62 + OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_numberOfChanges) = v79;
    v256 = 0;
    v257 = 0xE000000000000000;
    sub_1CF9E7948();

    v256 = 0xD000000000000012;
    v257 = 0x80000001CFA52790;
    v80 = [v50 description];
    v81 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v83 = v82;

    MEMORY[0x1D3868CC0](v81, v83);

    MEMORY[0x1D3868CC0](544175136, 0xE400000000000000);
    v84 = NSFileProviderItemIdentifier.description.getter();
    MEMORY[0x1D3868CC0](v84);

    v54 = v256;
    v47 = v257;
    if (qword_1EDEA3408 == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_108;
  }

LABEL_107:
  __break(1u);
LABEL_108:
  swift_once();
LABEL_14:
  v85 = qword_1EDEBB5A0;
  sub_1CF9E7298();
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v86 = swift_allocObject();
  v237 = xmmword_1CF9FA450;
  *(v86 + 16) = xmmword_1CF9FA450;
  *(v86 + 56) = MEMORY[0x1E69E6158];
  v236 = sub_1CEFD51C4();
  *(v86 + 64) = v236;
  *(v86 + 32) = v54;
  *(v86 + 40) = v47;
  sub_1CF9E6018();

  v87 = *(v62 + OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_observer);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC20, &qword_1CF9FE480);
  v88 = swift_allocObject();
  v234 = xmmword_1CFA00250;
  *(v88 + 16) = xmmword_1CFA00250;
  *(v88 + 32) = v50;
  v89 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF580, &qword_1CFA01DB0);
  v90 = sub_1CF9E6D28();

  [v87 didUpdateItems_];

  if ((v252 & 0xB00) != 0)
  {
    v91 = *&v89[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_itemIdentifier];
    v92 = *MEMORY[0x1E6967258];
    v93 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v95 = v94;
    if (v93 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v95 == v96)
    {

      goto LABEL_54;
    }

    v103 = sub_1CF9E8048();

    if (v103)
    {
      goto LABEL_54;
    }

    v233 = v85;
    v104 = v242;
    sub_1CF33F8C8(v246, v242);
    v106 = v247;
    v105 = v248;
    if ((*(v248 + 48))(v104, 1, v247) == 1)
    {
      sub_1CEFCCC44(v104, &unk_1EC4BE310, qword_1CF9FCBE0);
      goto LABEL_54;
    }

    v246 = v59;
    (*(v105 + 32))(v243, v104, v106);
    v121 = v245;
    sub_1CF9E5988();
    v122 = v240;
    sub_1CF00BE78(v250 + OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_domain, v240, type metadata accessor for LocalDomain);
    (*(v105 + 16))(v244, v121, v106);
    v123 = v239;
    sub_1CF00BE78(v122, v239, type metadata accessor for LocalDomain);
    v124 = type metadata accessor for VFSItem(0);
    v125 = v241;
    (*(*(v124 - 8) + 56))(v241, 1, 1, v124);
    v126 = objc_allocWithZone(type metadata accessor for LocalItem(0));
    v127 = sub_1CF001704(v244, v123, v125);
    sub_1CF00F364(v122, type metadata accessor for LocalDomain);
    v130 = *(v105 + 8);
    v129 = v105 + 8;
    v128 = v130;
    (v130)(v245, v106);
    if (!v127)
    {
      (v128)(v243, v106);
      v59 = v246;
      goto LABEL_54;
    }

    v245 = v128;
    v248 = v129;
    v131 = v127;
    v132 = *&v127[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_itemIdentifier];
    v133 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v135 = v134;
    if (v133 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v135 == v136)
    {
      v59 = v246;
    }

    else
    {
      v156 = sub_1CF9E8048();

      v59 = v246;
      if (v156)
      {
        goto LABEL_53;
      }

      v187 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v189 = v188;
      if (v187 != _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() || v189 != v190)
      {
        v191 = sub_1CF9E8048();

        if (v191)
        {
          goto LABEL_53;
        }

        v192 = *MEMORY[0x1E6967158];
        v193 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v195 = v194;
        if (v193 != _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() || v195 != v196)
        {
          v197 = sub_1CF9E8048();

          if ((v197 & 1) == 0)
          {
            (v245)(v243, v247);

            goto LABEL_54;
          }

          goto LABEL_53;
        }
      }
    }

LABEL_53:
    v256 = 0;
    v257 = 0xE000000000000000;
    sub_1CF9E7948();

    v256 = 0xD000000000000019;
    v257 = 0x80000001CFA52710;
    v157 = [v131 description];
    v158 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v160 = v159;

    MEMORY[0x1D3868CC0](v158, v160);

    MEMORY[0x1D3868CC0](544175136, 0xE400000000000000);
    v161 = NSFileProviderItemIdentifier.description.getter();
    MEMORY[0x1D3868CC0](v161);

    v163 = v256;
    v162 = v257;
    sub_1CF9E7298();
    v164 = swift_allocObject();
    *(v164 + 16) = v237;
    v165 = v236;
    *(v164 + 56) = MEMORY[0x1E69E6158];
    *(v164 + 64) = v165;
    *(v164 + 32) = v163;
    *(v164 + 40) = v162;
    sub_1CF9E6018();

    v166 = swift_allocObject();
    *(v166 + 16) = v234;
    *(v166 + 32) = v131;
    v167 = v131;
    v168 = sub_1CF9E6D28();

    [v87 didUpdateItems_];

    (v245)(v243, v247);
  }

LABEL_54:
  if ((v252 & 0x1B2F) != 0 && (v251 & v89[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_isFolder]) == 1)
  {
    if ([v87 respondsToSelector_])
    {
      v169 = [v87 suggestedBatchSize];
      if ((v169 & 0x8000000000000000) == 0)
      {
        goto LABEL_60;
      }

      __break(1u);
    }

    v169 = 200;
LABEL_60:
    v170 = sub_1CF5611E4(v89, ((v169 >> 1) + 1));
    if ([v87 respondsToSelector_])
    {
      v171 = [v87 suggestedBatchSize];
      if ((v171 & 0x8000000000000000) == 0)
      {
LABEL_64:
        if (v170 > v171 >> 1)
        {
          sub_1CF560EF8(v249, 0xD000000000000022, 0x80000001CFA527B0);
          return;
        }

        v172 = *(v59 + v250);
        v78 = __CFADD__(v172, v170);
        v173 = v172 + v170;
        if (!v78)
        {
          *(v59 + v250) = v173;
          return;
        }

        __break(1u);
        goto LABEL_110;
      }

      __break(1u);
    }

    v171 = 200;
    goto LABEL_64;
  }
}

void sub_1CF55F0FC(uint64_t a1, void *a2, uint64_t a3)
{
  v163 = a3;
  v167 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v159 = &v148 - v7;
  v8 = type metadata accessor for LocalDomain();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v157 = (&v148 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v158 = &v148 - v12;
  v154 = sub_1CF9E63A8();
  v153 = *(v154 - 8);
  v13 = *(v153 + 64);
  MEMORY[0x1EEE9AC00](v154);
  v150 = &v148 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_1CF9E6448();
  v149 = *(v151 - 8);
  v15 = *(v149 + 64);
  MEMORY[0x1EEE9AC00](v151);
  v17 = &v148 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v148 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v148 - v23;
  v25 = sub_1CF9E5A58();
  v26 = *(v25 - 8);
  v164 = v25;
  v165 = v26;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v156 = &v148 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v161 = &v148 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v160 = &v148 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v148 - v33;
  v35 = sub_1CF9E64A8();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  v38 = MEMORY[0x1EEE9AC00](v35);
  v40 = (&v148 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v152 = a1;
  v41 = *(a1 + 24);
  *v40 = v41;
  (*(v36 + 104))(v40, *MEMORY[0x1E69E8020], v35, v38);
  v148 = v41;
  LOBYTE(v41) = sub_1CF9E64D8();
  (*(v36 + 8))(v40, v35);
  if ((v41 & 1) == 0)
  {
    __break(1u);
    goto LABEL_57;
  }

  v166 = v3;
  v42 = *&v3[OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_observedID];
  v155 = *MEMORY[0x1E6967298];
  v43 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v45 = v44;
  v46 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v162 = v42;
  if (v43 == v46 && v45 == v47)
  {

LABEL_7:
    v50 = v167;
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v51 = sub_1CF9E6AE8();

    if (v51)
    {
LABEL_15:
      aBlock = 0;
      v170 = 0xE000000000000000;
      sub_1CF9E7948();

      aBlock = 0xD000000000000011;
      v170 = 0x80000001CFA52730;
      v64 = NSFileProviderItemIdentifier.description.getter();
      MEMORY[0x1D3868CC0](v64);

      v65 = "; item is not a directory";
      v66 = 0xD00000000000001CLL;
      goto LABEL_16;
    }

    v52 = *MEMORY[0x1E6967258];
    v53 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v55 = v54;
    v56 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v49 = v57;
    if (v53 == v56 && v55 == v57)
    {

      goto LABEL_15;
    }

    v63 = sub_1CF9E8048();

    if (v63)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

  v48 = sub_1CF9E8048();
  v49 = v42;

  if (v48)
  {

    goto LABEL_7;
  }

  v58 = *MEMORY[0x1E6967158];
  v59 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v61 = v60;
  if (v59 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v61 == v62)
  {

    goto LABEL_20;
  }

  v68 = sub_1CF9E8048();

  if (v68)
  {

LABEL_20:
    v50 = v167;
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v49 = v69;
    v70 = sub_1CF9E6AE8();

    if (v70)
    {
      goto LABEL_37;
    }

    v71 = *MEMORY[0x1E6967258];
    v72 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v74 = v73;
    v75 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v49 = v76;
    if (v72 != v75 || v74 != v76)
    {
      v82 = sub_1CF9E8048();

      if ((v82 & 1) == 0)
      {
        aBlock = 0;
        v170 = 0xE000000000000000;
        sub_1CF9E7948();

        aBlock = 0xD000000000000011;
        v170 = 0x80000001CFA52730;
        v83 = NSFileProviderItemIdentifier.description.getter();
        MEMORY[0x1D3868CC0](v83);

        v65 = "ignore update of ";
        v66 = 0xD000000000000019;
LABEL_16:
        MEMORY[0x1D3868CC0](v66, v65 | 0x8000000000000000);
        v40 = aBlock;
        v27 = v170;
        if (qword_1EDEA3408 == -1)
        {
LABEL_17:
          sub_1CF9E7298();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
          v67 = swift_allocObject();
          *(v67 + 16) = xmmword_1CF9FA450;
          *(v67 + 56) = MEMORY[0x1E69E6158];
          *(v67 + 64) = sub_1CEFD51C4();
          *(v67 + 32) = v40;
          *(v67 + 40) = v27;
          sub_1CF9E6018();

          return;
        }

LABEL_57:
        swift_once();
        goto LABEL_17;
      }

      goto LABEL_37;
    }

LABEL_23:

    goto LABEL_37;
  }

  v77 = *MEMORY[0x1E6967258];
  v78 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v80 = v79;
  if (v78 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v80 == v81)
  {

    v50 = v167;
  }

  else
  {
    v84 = sub_1CF9E8048();

    v50 = v167;
    if ((v84 & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v85 = sub_1CF9E6AE8();

  if ((v85 & 1) == 0)
  {
    v86 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v88 = v87;
    if (v86 != _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() || v88 != v89)
    {
      v90 = sub_1CF9E8048();

      if ((v90 & 1) == 0)
      {
        sub_1CF33F8C8(v163, v24);
        v91 = v164;
        v49 = v165;
        if ((v165[6])(v24, 1, v164) == 1)
        {
          sub_1CEFCCC44(v24, &unk_1EC4BE310, qword_1CF9FCBE0);
        }

        else
        {
          v92 = *(v49 + 4);
          v92(v34, v24, v91);
          v93 = v160;
          (*(v49 + 2))(v160, v34, v91);
          v94 = (v49[80] + 24) & ~v49[80];
          v95 = swift_allocObject();
          v96 = v91;
          v97 = v95;
          v98 = v166;
          *(v95 + 16) = v166;
          v99 = v93;
          v24 = v96;
          (v92)(v95 + v94, v99);
          *(v97 + ((v27 + v94 + 7) & 0xFFFFFFFFFFFFFFF8)) = v152;
          v173 = sub_1CF562730;
          v174 = v97;
          aBlock = MEMORY[0x1E69E9820];
          v170 = 1107296256;
          v171 = sub_1CEFCA444;
          v172 = &block_descriptor_8;
          v100 = _Block_copy(&aBlock);
          v101 = v98;

          sub_1CF9E63F8();
          v168 = MEMORY[0x1E69E7CC0];
          sub_1CF01C474(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
          sub_1CF00FED0(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
          v102 = v150;
          v50 = v167;
          v49 = v154;
          sub_1CF9E77B8();
          MEMORY[0x1D3869630](0, v17, v102, v100);
          _Block_release(v100);
          (*(v153 + 8))(v102, v49);
          (*(v149 + 8))(v17, v151);
          v165[1](v34, v24);
        }
      }

      goto LABEL_37;
    }

    goto LABEL_23;
  }

LABEL_37:
  v103 = v166;
  v104 = *&v166[OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_numberOfChanges];
  v105 = __CFADD__(v104, 1);
  v106 = v104 + 1;
  if (v105)
  {
    __break(1u);
    goto LABEL_59;
  }

  *&v166[OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_numberOfChanges] = v106;
  sub_1CF33F8C8(v163, v21);
  v24 = v164;
  v107 = v165;
  v17 = &unk_1EDEBB000;
  if ((v165[6])(v21, 1, v164) != 1)
  {
    v108 = v161;
    (v107[4])(v161, v21, v24);
    v109 = v160;
    sub_1CF9E5988();
    v110 = v158;
    sub_1CF00BE78(&v103[OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_domain], v158, type metadata accessor for LocalDomain);
    v111 = v156;
    (v107[2])(v156, v109, v24);
    v112 = v157;
    sub_1CF00BE78(v110, v157, type metadata accessor for LocalDomain);
    v113 = type metadata accessor for VFSItem(0);
    v114 = v159;
    (*(*(v113 - 8) + 56))(v159, 1, 1, v113);
    v115 = objc_allocWithZone(type metadata accessor for LocalItem(0));
    v49 = sub_1CF001704(v111, v112, v114);
    sub_1CF00F364(v110, type metadata accessor for LocalDomain);
    v116 = v107[1];
    (v116)(v109, v24);
    if (!v49)
    {
      (v116)(v108, v24);
      v103 = v166;
      v17 = &unk_1EDEBB000;
      goto LABEL_48;
    }

    v117 = *&v49[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_itemIdentifier];
    v118 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v120 = v119;
    v17 = &unk_1EDEBB000;
    if (v118 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v120 == v121)
    {
      goto LABEL_43;
    }

    v122 = sub_1CF9E8048();

    if ((v122 & 1) == 0)
    {
      v137 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v139 = v138;
      if (v137 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v139 == v140)
      {
        goto LABEL_43;
      }

      v141 = sub_1CF9E8048();

      if (v141)
      {
        goto LABEL_46;
      }

      v142 = *MEMORY[0x1E6967158];
      v143 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v145 = v144;
      if (v143 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v145 == v146)
      {
LABEL_43:

        goto LABEL_46;
      }

      v147 = sub_1CF9E8048();

      if ((v147 & 1) == 0)
      {
        (v116)(v108, v24);

        v103 = v166;
        goto LABEL_48;
      }
    }

LABEL_46:
    v165 = v116;
    aBlock = 0;
    v170 = 0xE000000000000000;
    sub_1CF9E7948();

    aBlock = 0xD000000000000019;
    v170 = 0x80000001CFA52710;
    v123 = [v49 description];
    v124 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v126 = v125;

    MEMORY[0x1D3868CC0](v124, v126);

    MEMORY[0x1D3868CC0](544175136, 0xE400000000000000);
    v127 = NSFileProviderItemIdentifier.description.getter();
    MEMORY[0x1D3868CC0](v127);

    v50 = aBlock;
    v34 = v170;
    if (qword_1EDEA3408 == -1)
    {
LABEL_47:
      sub_1CF9E7298();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v128 = swift_allocObject();
      *(v128 + 16) = xmmword_1CF9FA450;
      *(v128 + 56) = MEMORY[0x1E69E6158];
      *(v128 + 64) = sub_1CEFD51C4();
      *(v128 + 32) = v50;
      *(v128 + 40) = v34;
      sub_1CF9E6018();

      v103 = v166;
      v129 = *&v166[*(v17 + 266)];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC20, &qword_1CF9FE480);
      v130 = swift_allocObject();
      *(v130 + 16) = xmmword_1CFA00250;
      *(v130 + 32) = v49;
      v131 = v49;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF580, &qword_1CFA01DB0);
      v132 = sub_1CF9E6D28();

      [v129 didUpdateItems_];

      (v165)(v161, v24);
      v50 = v167;
      goto LABEL_48;
    }

LABEL_59:
    swift_once();
    goto LABEL_47;
  }

  sub_1CEFCCC44(v21, &unk_1EC4BE310, qword_1CF9FCBE0);
LABEL_48:
  v133 = *&v103[*(v17 + 266)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1770, &qword_1CFA05A80);
  v134 = swift_allocObject();
  *(v134 + 16) = xmmword_1CF9FA450;
  *(v134 + 32) = v50;
  type metadata accessor for NSFileProviderItemIdentifier(0);
  v135 = v50;
  v136 = sub_1CF9E6D28();

  [v133 didDeleteItemsWithIdentifiers_];
}

void sub_1CF5602E8(char *a1, uint64_t a2)
{
  v79 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v68 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v68 - v10;
  v12 = type metadata accessor for LocalDomain();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = (&v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v68 - v17;
  v19 = sub_1CF9E5A58();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  MEMORY[0x1EEE9AC00](v22);
  MEMORY[0x1EEE9AC00](v23);
  v29 = MEMORY[0x1EEE9AC00](v24);
  v30 = &v68 - v25;
  v31 = *(a2 + 48);
  if (*(v31 + 16))
  {
    v72 = v28;
    v73 = v27;
    v74 = v15;
    v75 = v18;
    v76 = v11;
    v77 = v2;
    v78 = v26;
    v69 = v7;
    v70 = a2;
    v32 = *(v20 + 16);
    v33 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v32(&v68 - v25, v31 + v33, v19, v29);
    sub_1CF9E5A18();
    v34 = v19;
    sub_1CF9E5A18();
    v35 = sub_1CF9E6AE8();

    if ((v35 & 1) == 0)
    {
      (*(v20 + 8))(v30, v34);
      return;
    }

    v68 = v20;
    v71 = v34;
    v36 = sub_1CF9E5898();
    v37 = sub_1CF9E5898();
    v38 = *(v36 + 16);

    if (v38 >= *(v37 + 16))
    {
      (*(v68 + 8))(v30, v71);

      return;
    }

    v39 = v37 + 16 * v38;
    v40 = *(v39 + 32);
    v41 = *(v39 + 40);

    if (*(v31 + 16))
    {
      v79 = v30;
      v42 = v31 + v33;
      v43 = v73;
      v44 = v71;
      (v32)(v73, v42, v71);
      v45 = v78;
      sub_1CF9E5968();

      v46 = *(v68 + 8);
      v46(v43, v44);
      (v32)(v43, v45, v44);
      v47 = v75;
      sub_1CF00BE78(v77 + OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_domain, v75, type metadata accessor for LocalDomain);
      v48 = v72;
      (v32)(v72, v43, v44);
      v49 = v74;
      sub_1CF00BE78(v47, v74, type metadata accessor for LocalDomain);
      v50 = type metadata accessor for VFSItem(0);
      v51 = v76;
      (*(*(v50 - 8) + 56))(v76, 1, 1, v50);
      v52 = objc_allocWithZone(type metadata accessor for LocalItem(0));
      v53 = sub_1CF001704(v48, v49, v51);
      sub_1CF00F364(v47, type metadata accessor for LocalDomain);
      v46(v43, v44);
      if (!v53)
      {
        v46(v45, v44);
        v46(v79, v44);
        return;
      }

      v54 = *&v53[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_parentItemIdentifier];
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v55 = sub_1CF9E6AE8();

      v56 = v79;
      if ((v55 & 1) == 0)
      {
        v57 = *MEMORY[0x1E6967258];
        v58 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v60 = v59;
        if (v58 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v60 == v61)
        {
        }

        else
        {
          v62 = sub_1CF9E8048();

          if ((v62 & 1) == 0)
          {
            goto LABEL_18;
          }
        }
      }

      if (*&v53[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_filename] == 0x68736172542ELL && *&v53[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_filename + 8] == 0xE600000000000000 || (sub_1CF9E8048() & 1) != 0)
      {

        v63 = v71;
        v46(v78, v71);
        v64 = v56;
        v65 = v63;
LABEL_19:
        v46(v64, v65);
        return;
      }

LABEL_18:
      v66 = v69;
      v67 = v71;
      (*(v68 + 56))(v69, 1, 1, v71);
      sub_1CF55D574(v70, v53, 0, v66);

      sub_1CEFCCC44(v66, &unk_1EC4BE310, qword_1CF9FCBE0);
      v46(v78, v67);
      v64 = v56;
      v65 = v67;
      goto LABEL_19;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1CF560998(uint64_t a1, uint64_t a2)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v47 = &v47 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v52 = &v47 - v8;
  v9 = type metadata accessor for LocalDomain();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v50 = (&v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v47 - v13;
  v15 = sub_1CF9E5A58();
  v51 = *(v15 - 8);
  v16 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v47 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1110, &qword_1CFA08100);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = (&v47 - v24);
  v26 = type metadata accessor for LocalContainer(0);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v47 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v2;
  sub_1CF0047A0(v2 + OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_domain, v25);
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    sub_1CEFCCC44(v25, &unk_1EC4C1110, &qword_1CFA08100);
  }

  else
  {
    sub_1CEFFC4F4(v25, v30, type metadata accessor for LocalContainer);
    v31 = *v30;
    v32 = *MEMORY[0x1E6967258];
    v33 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v35 = v34;
    if (v33 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v35 == v36)
    {
    }

    else
    {
      v37 = sub_1CF9E8048();

      if ((v37 & 1) == 0)
      {
        v38 = v51;
        v39 = *(v51 + 16);
        v39(v21, &v30[*(v26 + 28)], v15);
        sub_1CF00BE78(&v30[*(v26 + 24)], v14, type metadata accessor for LocalDomain);
        v39(v18, v21, v15);
        v40 = v50;
        sub_1CF00BE78(v14, v50, type metadata accessor for LocalDomain);
        v41 = type metadata accessor for VFSItem(0);
        v42 = v52;
        (*(*(v41 - 8) + 56))(v52, 1, 1, v41);
        v43 = objc_allocWithZone(type metadata accessor for LocalItem(0));
        v44 = sub_1CF001704(v18, v40, v42);
        sub_1CF00F364(v14, type metadata accessor for LocalDomain);
        (*(v38 + 8))(v21, v15);
        if (v44)
        {
          v45 = v47;
          (*(v38 + 56))(v47, 1, 1, v15);
          sub_1CF55D574(v48, v44, 0, v45);

          sub_1CEFCCC44(v45, &unk_1EC4BE310, qword_1CF9FCBE0);
          sub_1CF00F364(v30, type metadata accessor for LocalContainer);
          return 1;
        }
      }
    }

    sub_1CF00F364(v30, type metadata accessor for LocalContainer);
  }

  return 0;
}

void sub_1CF560EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1CF9E64A8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(a1 + 24);
  *v12 = v13;
  (*(v9 + 104))(v12, *MEMORY[0x1E69E8020], v8);
  v14 = v13;
  LOBYTE(v13) = sub_1CF9E64D8();
  (*(v9 + 8))(v12, v8);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_1CF02AA74();
  *(a1 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_delegate + 8) = 0;
  swift_unknownObjectWeakAssign();
  v20 = 0;
  v21 = 0xE000000000000000;
  sub_1CF9E7948();

  v20 = 0xD000000000000015;
  v21 = 0x80000001CFA526A0;
  MEMORY[0x1D3868CC0](a2, a3);
  v8 = v20;
  v12 = v21;
  if (qword_1EDEA3408 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_1CF9E7288();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1CF9FA450;
  *(v15 + 56) = MEMORY[0x1E69E6158];
  *(v15 + 64) = sub_1CEFD51C4();
  *(v15 + 32) = v8;
  *(v15 + 40) = v12;
  sub_1CF9E6018();

  v16 = *(v4 + OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_observer);
  type metadata accessor for NSFileProviderError(0);
  v19[1] = -1002;
  sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
  sub_1CF01C474(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError);
  sub_1CF9E57D8();
  v17 = v20;
  v18 = sub_1CF9E57E8();

  [v16 finishEnumeratingWithError_];
}

uint64_t sub_1CF5611E4(uint64_t a1, char *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v40 - v7;
  v9 = sub_1CF9E5A58();
  v10 = *(v9 - 1);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_fileURL;
  swift_beginAccess();
  sub_1CF33F8C8(a1 + v14, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    __break(1u);

    sub_1CF9E7298();
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1CF9FA450;
    v49 = v43;
    v38 = sub_1CF9E7718();
    *(v37 + 56) = v13;
    *(v37 + 64) = a1;
    *(v37 + 32) = v38;
    *(v37 + 40) = v39;
    sub_1CF9E6018();

    __break(1u);
  }

  else
  {
    v45 = v2;
    v46 = a1;
    v47 = v10;
    v48 = v9;
    (*(v10 + 32))(v13, v8, v9);
    v50 = 0;
    v51 = 0xE000000000000000;
    sub_1CF9E7948();

    v50 = 0xD000000000000010;
    v51 = 0x80000001CFA52830;
    sub_1CF9E5A18();
    v15 = sub_1CF9E6888();

    v16 = [v15 fp_prettyPath];

    v17 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v19 = v18;

    MEMORY[0x1D3868CC0](v17, v19);

    MEMORY[0x1D3868CC0](0x696C206874697720, 0xEC0000002074696DLL);
    v49 = a2;
    v20 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v20);

    v21 = v51;
    v41 = v50;
    v22 = sub_1CEFFCE80();
    v42 = a2;
    v23 = v13;
    if (qword_1EDEA3408 != -1)
    {
      swift_once();
    }

    sub_1CF9E7298();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1CF9FA440;
    v50 = v22;
    v25 = sub_1CEFFD0A8();
    v43 = v22;
    v44 = v25;
    v26 = sub_1CF9E7718();
    v28 = v27;
    v29 = MEMORY[0x1E69E6158];
    *(v24 + 56) = MEMORY[0x1E69E6158];
    v30 = sub_1CEFD51C4();
    *(v24 + 32) = v26;
    *(v24 + 40) = v28;
    *(v24 + 96) = v29;
    *(v24 + 104) = v30;
    v31 = v41;
    *(v24 + 64) = v30;
    *(v24 + 72) = v31;
    *(v24 + 80) = v21;

    sub_1CF9E6018();

    sub_1CF56199C(v23, v45, v42, v46, &v50);

    sub_1CF9E7298();
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1CF9FA450;
    v49 = v43;
    v33 = sub_1CF9E7718();
    *(v32 + 56) = v29;
    *(v32 + 64) = v30;
    *(v32 + 32) = v33;
    *(v32 + 40) = v34;
    sub_1CF9E6018();

    v35 = v50;
    (*(v47 + 8))(v23, v48);
    return v35;
  }

  return result;
}

void sub_1CF5616B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1 + OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_currentToken;
  v7 = *(v6 + *(type metadata accessor for FSChangeToken() + 32));
  v8 = *(a1 + OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_numberOfChanges);
  v9 = v8 - v7;
  if (v8 < v7)
  {
    goto LABEL_7;
  }

  v10 = *(a1 + OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_observer);
  if (([v10 respondsToSelector_] & 1) == 0)
  {
    if (v9 >= 0x64)
    {
      return;
    }

    goto LABEL_7;
  }

  v11 = [v10 suggestedBatchSize];
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    return;
  }

  if (v9 < v11 >> 1)
  {
LABEL_7:
    v12 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v13 = sub_1CF9E6888();
    v14 = [v12 initWithSuiteName_];

    if (!v14 || (v15 = sub_1CF9E6888(), v16 = [v14 BOOLForKey_], v14, v15, (v16 & 1) == 0))
    {
      sub_1CF560998(a2, a3);
    }
  }
}

void sub_1CF561818(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_numberOfChanges);
  v4 = v1 + OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_currentToken;
  v5 = *(v4 + *(type metadata accessor for FSChangeToken() + 32));
  v6 = v3 - v5;
  if (v3 < v5)
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = *(v1 + OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_observer);
  if (([v7 respondsToSelector_] & 1) == 0)
  {
    if (v6 < 0xC8)
    {
      return;
    }

    goto LABEL_7;
  }

  v8 = [v7 suggestedBatchSize];
  if ((v8 & 0x8000000000000000) != 0)
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v6 < v8)
  {
    return;
  }

LABEL_7:

  sub_1CF560EF8(a1, 0xD000000000000010, 0x80000001CFA52680);
}

uint64_t sub_1CF56190C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *(result + OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_reader);

    sub_1CF560EF8(v3, 0xD000000000000019, 0x80000001CFA526F0);
  }

  return result;
}

uint64_t sub_1CF56199C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  v89 = a1;
  v77 = a4;
  v78 = a5;
  v82 = a3;
  v83 = a2;
  v5 = sub_1CF9E5A58();
  v6 = *(v5 - 8);
  v7 = v6;
  v8 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = (&v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for FSDirectoryEnumerator();
  v12 = (v11 - 8);
  v81 = *(v11 - 8);
  v13 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v80 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v75 - v15);
  v17 = swift_allocObject();
  v84 = v17;
  *(v17 + 16) = MEMORY[0x1E69E7CC0];
  v79 = v17 + 16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF290, &unk_1CFA006C0);
  v18 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v85 = *(v6 + 72);
  v19 = swift_allocObject();
  v75 = xmmword_1CF9FA450;
  *(v19 + 16) = xmmword_1CF9FA450;
  v20 = v19 + v18;
  v21 = v19;
  v76 = v7;
  v22 = *(v7 + 16);
  v87 = (v7 + 16);
  v88 = v5;
  v86 = v22;
  v22((v19 + v18), v89, v5);
  v23 = v83;
  sub_1CF00BE78(v83 + OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_domain, v16 + v12[7], type metadata accessor for LocalDomain);
  v24 = (v16 + v12[11]);
  *v24 = 0;
  v24[1] = 0;
  *v16 = v21;
  v25 = v21;
  *(v16 + v12[8]) = 1;
  *(v16 + v12[9]) = 0;
  v26 = v12[10];
  v27 = v82;
  *(v16 + v26) = v82;
  v28 = swift_allocObject();
  v29 = v84;
  *(v28 + 16) = v23;
  *(v28 + 24) = v29;
  v89 = v16;
  v30 = v16;
  v31 = v80;
  sub_1CF00BE78(v30, v80, type metadata accessor for FSDirectoryEnumerator);
  v32 = (*(v81 + 80) + 16) & ~*(v81 + 80);
  v33 = (v13 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  sub_1CEFFC4F4(v31, v34 + v32, type metadata accessor for FSDirectoryEnumerator);
  v35 = (v34 + v33);
  *v35 = sub_1CF5627C0;
  v35[1] = v28;
  v93 = 0;
  LOBYTE(v91) = v27 != 0;
  v36 = *(v25 + 16);
  v82 = v83;

  v83 = v28;

  if (v36)
  {
    v37 = 0;
    v38 = (v76 + 8);
    v39 = v88;
    while (v37 < *(v25 + 16))
    {
      v86(v10, v20, v39);
      if ((v91 & 1) == 0)
      {
        (*v38)(v10, v39);
        goto LABEL_9;
      }

      objc_autoreleasePoolPop(objc_autoreleasePoolPush());
      v28 = objc_autoreleasePoolPush();
      MEMORY[0x1EEE9AC00](v28);
      *(&v75 - 8) = v10;
      *(&v75 - 7) = &v93;
      v40 = v90;
      *(&v75 - 6) = v89;
      *(&v75 - 5) = &v91;
      *(&v75 - 4) = 3;
      *(&v75 - 3) = sub_1CF326E94;
      *(&v75 - 2) = v34;
      *(&v75 - 8) = 0;
      sub_1CF9E59B8();
      v90 = v40;
      if (v40)
      {
        goto LABEL_57;
      }

      ++v37;
      objc_autoreleasePoolPop(v28);
      v39 = v88;
      (*v38)(v10, v88);
      v20 += v85;
      if (v36 == v37)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_42:
    if (sub_1CF9E7818() < 1)
    {
      goto LABEL_40;
    }

    goto LABEL_11;
  }

LABEL_9:

  v20 = v93;
  v28 = v79;
  swift_beginAccess();
  if (*v28 >> 62)
  {
    goto LABEL_42;
  }

  if (*((*v28 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
LABEL_40:
    sub_1CF00F364(v89, type metadata accessor for FSDirectoryEnumerator);

    *v78 = v20;
    return result;
  }

LABEL_11:
  v41 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v42 = sub_1CF9E6888();
  v43 = [v41 initWithSuiteName_];

  if (v43 && (v44 = sub_1CF9E6888(), v45 = [v43 BOOLForKey_], v43, v44, (v45 & 1) != 0) || (*(v77 + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_isTrashed) & 1) == 0 && *(v77 + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_isAncestorInTrash) != 1)
  {
    v91 = 0;
    v92 = 0xE000000000000000;
    sub_1CF9E7948();

    v91 = 0xD000000000000012;
    v92 = 0x80000001CFA52790;
    v60 = *v28;
    if (*v28 >> 62)
    {
      if (v60 < 0)
      {
        v72 = *v28;
      }

      v61 = sub_1CF9E7818();
    }

    else
    {
      v61 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v94 = v61;
    v62 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v62);

    MEMORY[0x1D3868CC0](0x736D65746920, 0xE600000000000000);
    v63 = v91;
    v64 = v92;
    if (qword_1EDEA3408 != -1)
    {
      swift_once();
    }

    sub_1CF9E7298();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v65 = swift_allocObject();
    *(v65 + 16) = v75;
    *(v65 + 56) = MEMORY[0x1E69E6158];
    *(v65 + 64) = sub_1CEFD51C4();
    *(v65 + 32) = v63;
    *(v65 + 40) = v64;
    sub_1CF9E6018();

    v66 = *&v82[OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_observer];
    if (*v28 >> 62)
    {
      if (*v28 < 0)
      {
        v73 = *v28;
      }

      v74 = *v28;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF580, &qword_1CFA01DB0);
      sub_1CF9E7B78();
    }

    else
    {
      v67 = *v28;
      swift_bridgeObjectRetain_n();
      sub_1CF9E8068();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF580, &qword_1CFA01DB0);
    v68 = sub_1CF9E6D28();

    [v66 didUpdateItems_];
    goto LABEL_39;
  }

  v91 = 0;
  v92 = 0xE000000000000000;
  sub_1CF9E7948();

  v91 = 0xD000000000000014;
  v92 = 0x80000001CFA52850;
  v46 = *v28;
  if (*v28 >> 62)
  {
    if (v46 < 0)
    {
      v70 = *v28;
    }

    v47 = sub_1CF9E7818();
  }

  else
  {
    v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v94 = v47;
  v48 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v48);

  MEMORY[0x1D3868CC0](0x736D65746920, 0xE600000000000000);
  v49 = v91;
  v50 = v92;
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  sub_1CF9E7298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v51 = swift_allocObject();
  *(v51 + 16) = v75;
  *(v51 + 56) = MEMORY[0x1E69E6158];
  *(v51 + 64) = sub_1CEFD51C4();
  *(v51 + 32) = v49;
  *(v51 + 40) = v50;
  sub_1CF9E6018();

  v38 = *&v82[OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_observer];
  v52 = *v28;
  if (*v28 >> 62)
  {
    if (v52 < 0)
    {
      v71 = *v28;
    }

    v28 = sub_1CF9E7818();
  }

  else
  {
    v28 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v28)
  {
LABEL_38:
    type metadata accessor for NSFileProviderItemIdentifier(0);
    v68 = sub_1CF9E6D28();

    [v38 didDeleteItemsWithIdentifiers_];
LABEL_39:

    goto LABEL_40;
  }

  v87 = v38;
  v88 = v20;
  v91 = MEMORY[0x1E69E7CC0];

  v10 = &v91;
  sub_1CF680D2C(0, v28 & ~(v28 >> 63), 0);
  if ((v28 & 0x8000000000000000) == 0)
  {
    v53 = 0;
    v54 = v91;
    do
    {
      if ((v52 & 0xC000000000000001) != 0)
      {
        v55 = MEMORY[0x1D3869C30](v53, v52);
      }

      else
      {
        v55 = *(v52 + 8 * v53 + 32);
      }

      v56 = v55;
      v57 = *&v55[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_itemIdentifier];

      v91 = v54;
      v59 = *(v54 + 16);
      v58 = *(v54 + 24);
      if (v59 >= v58 >> 1)
      {
        sub_1CF680D2C((v58 > 1), v59 + 1, 1);
        v54 = v91;
      }

      ++v53;
      *(v54 + 16) = v59 + 1;
      *(v54 + 8 * v59 + 32) = v57;
    }

    while (v28 != v53);

    v38 = v87;
    v20 = v88;
    goto LABEL_38;
  }

  __break(1u);
LABEL_57:
  objc_autoreleasePoolPop(v28);
  result = (*v38)(v10, v88);
  __break(1u);
  return result;
}

uint64_t sub_1CF562474(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_observedID);
  v6 = *MEMORY[0x1E6967158];
  v7 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v9 = v8;
  if (v7 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v9 == v10)
  {

LABEL_8:
    if (a1[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_isFolder] != 1)
    {
      return 1;
    }

    goto LABEL_9;
  }

  v12 = sub_1CF9E8048();

  if (v12)
  {
    goto LABEL_8;
  }

LABEL_9:
  swift_beginAccess();
  v13 = a1;
  MEMORY[0x1D3868FA0]();
  if (*((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v15 = *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1CF9E6D88();
  }

  sub_1CF9E6DE8();
  swift_endAccess();
  return 1;
}

uint64_t sub_1CF5625F8()
{
  result = type metadata accessor for FSChangeToken();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for LocalDomain();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_1CF562730()
{
  v1 = *(sub_1CF9E5A58() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1CF5616B8(v3, v0 + v2, v4);
}

uint64_t sub_1CF56284C@<X0>(uint64_t a1@<X8>)
{
  if ((sub_1CF9E5848() & 1) == 0)
  {
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/extension/URL+LocalStorageAdditions.swift", 121, 2, 51);
  }

  type metadata accessor for stat(0);
  sub_1CF9E59B8();
  return sub_1CF01A820(v3, a1);
}

uint64_t sub_1CF562AD8()
{
  result = type metadata accessor for LocalDomain();
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

uint64_t sub_1CF562C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v29 - v7;
  v9 = sub_1CF9E5A58();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1CF9E64A8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = (v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29[1] = a1;
  v20 = *(a1 + 24);
  *v19 = v20;
  (*(v15 + 104))(v19, *MEMORY[0x1E69E8020], v14, v17);
  v21 = v20;
  LOBYTE(v20) = sub_1CF9E64D8();
  result = (*(v15 + 8))(v19, v14);
  if (v20)
  {
    v32 = 91;
    v33 = 0xE100000000000000;
    v23 = NSFileProviderItemIdentifier.description.getter();
    MEMORY[0x1D3868CC0](v23);

    sub_1CF33F8C8(v29[0], v8);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_1CEFCCC44(v8, &unk_1EC4BE310, qword_1CF9FCBE0);
    }

    else
    {
      (*(v10 + 32))(v13, v8, v9);
      v30 = 0x273A68746170202CLL;
      v31 = 0xE800000000000000;
      v24 = sub_1CF9E5A18();
      MEMORY[0x1D3868CC0](v24);

      MEMORY[0x1D3868CC0](39, 0xE100000000000000);
      MEMORY[0x1D3868CC0](v30, v31);

      (*(v10 + 8))(v13, v9);
    }

    MEMORY[0x1D3868CC0](93, 0xE100000000000000);
    v25 = v33;
    v26 = v3[2];
    v27 = v3[3];
    v3[2] = v32;
    v3[3] = v25;
    sub_1CF563558(v26, v27);
    sub_1CF01C144(sub_1CF02AEF0, &block_descriptor_30);
    v28 = v3[4];
    return sub_1CF9E74B8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF562F4C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1CF9E64A8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = (&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(a1 + 24);
  *v9 = v10;
  (*(v5 + 104))(v9, *MEMORY[0x1E69E8020], v4, v7);
  v11 = v10;
  LOBYTE(v10) = sub_1CF9E64D8();
  result = (*(v5 + 8))(v9, v4);
  if (v10)
  {
    v13 = v2[2];
    v14 = v2[3];
    *(v2 + 1) = xmmword_1CF9FC980;
    sub_1CF563558(v13, v14);
    sub_1CF01C144(sub_1CF02AEF0, &block_descriptor_30);
    v15 = v2[4];
    return sub_1CF9E74B8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF563098()
{
  sub_1CF563558(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_18FileProviderDaemon36FSEventReaderGatherPhaseResumeStatusO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1CF563114(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CF563168(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_1CF5631C4(void *result, int a2)
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

unint64_t sub_1CF563208()
{
  result = qword_1EC4C1780;
  if (!qword_1EC4C1780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1780);
  }

  return result;
}

uint64_t sub_1CF56325C(uint64_t a1)
{
  v2 = sub_1CF9E64A8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a1 + 24);
  *v7 = v8;
  (*(v3 + 104))(v7, *MEMORY[0x1E69E8020], v2, v5);
  v9 = v8;
  LOBYTE(v8) = sub_1CF9E64D8();
  result = (*(v3 + 8))(v7, v2);
  if ((v8 & 1) == 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF563364(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1CF9E64A8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(a1 + 24);
  *v9 = v10;
  (*(v5 + 104))(v9, *MEMORY[0x1E69E8020], v4, v7);
  v11 = v10;
  LOBYTE(v10) = sub_1CF9E64D8();
  result = (*(v5 + 8))(v9, v4);
  if (v10)
  {
    sub_1CF01C144(sub_1CF02AEF0, &block_descriptor_30);
    v13 = *(v2 + 32);
    return sub_1CF9E74B8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF5634F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VFSItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CF563558(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_1CF56356C(void *a1, uint64_t a2, uint64_t a3)
{
  v84 = a3;
  v82 = a1;
  v75 = *v3;
  v79 = sub_1CF9E7318();
  v5 = *(*(v79 - 8) + 64);
  MEMORY[0x1EEE9AC00](v79);
  v78 = v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CF9E6448();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v77 = v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E7388();
  v73 = *(v10 - 8);
  v74 = v10;
  v11 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v76 = v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LocalDomain();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v81 = v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1CF9E5A58();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = v67 - v23;
  v25 = sub_1CF9E5D98();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v80 = v67 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = v3;
  *(v3 + OBJC_IVAR____TtC18FileProviderDaemon17FSChangesNotifier_shouldSignalChange) = 0;
  if (*(a2 + 16))
  {
    v29 = type metadata accessor for FSEventReader();
    v30 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v70 = *(v17 + 16);
    v70(v20, a2 + v30, v16);
    v72 = v29;
    sub_1CF56284C(v24);
    v31 = v16;
    v32 = *(v17 + 8);
    v71 = v31;
    v32(v20);
    if ((*(v26 + 48))(v24, 1, v25) == 1)
    {
      sub_1CF0156A8(v24);
      v85 = 0;
      v86 = 0xE000000000000000;
      sub_1CF9E7948();

      v85 = 0xD00000000000001BLL;
      v86 = 0x80000001CFA52DB0;
      v33 = a2 + v30;
      v34 = v71;
      v70(v20, v33, v71);

      sub_1CF9E5A18();
      (v32)(v20, v34);
      v35 = sub_1CF9E6888();

      v36 = [v35 fp_prettyPath];

      v37 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v39 = v38;

      MEMORY[0x1D3868CC0](v37, v39);

      MEMORY[0x1D3868CC0](34, 0xE100000000000000);
      v40 = v85;
      v41 = v86;
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      sub_1CF9E72A8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_1CF9FA450;
      *(v42 + 56) = MEMORY[0x1E69E6158];
      *(v42 + 64) = sub_1CEFD51C4();
      *(v42 + 32) = v40;
      *(v42 + 40) = v41;
      sub_1CF9E6018();

      sub_1CF56506C(v84);
      v43 = *(*v83 + 48);
      v44 = *(*v83 + 52);
      swift_deallocPartialClassInstance();
      return 0;
    }

    else
    {
      v46 = a2;
      v47 = *(v26 + 32);
      v75 = v25;
      v70 = v47;
      v71 = v26 + 32;
      v47(v80, v24, v25);
      v48 = v82;
      v45 = v83;
      v83[2] = v82;
      v49 = v84;
      sub_1CF004C30(v84, v45 + OBJC_IVAR____TtC18FileProviderDaemon17FSChangesNotifier_domain);
      sub_1CF004C30(v49, v81);
      v85 = 0;
      v86 = 0xE000000000000000;
      v50 = v48;
      sub_1CF9E7948();

      v85 = 0xD000000000000013;
      v86 = 0x80000001CFA52DD0;
      v82 = v50;
      v51 = NSFileProviderItemIdentifier.description.getter();
      MEMORY[0x1D3868CC0](v51);

      MEMORY[0x1D3868CC0](62, 0xE100000000000000);
      v52 = v85;
      v53 = v86;
      CurrentEventId = FSEventsGetCurrentEventId();
      v54 = objc_allocWithZone(MEMORY[0x1E695E000]);
      v55 = sub_1CF9E6888();
      v56 = [v54 initWithSuiteName_];

      v68 = v46;
      if (v56 && (v57 = sub_1CF9E6888(), v58 = [v56 BOOLForKey_], v56, v57, v58))
      {
        v59 = 0.1;
      }

      else
      {
        v59 = 0.5;
      }

      v60 = *(v72 + 48);
      v61 = *(v72 + 52);
      v62 = swift_allocObject();
      v62[2] = 0;
      *(v62 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_delegate + 8) = 0;
      swift_unknownObjectWeakInit();
      v67[1] = sub_1CEFD57E0(0, &qword_1EDEAED70, 0x1E69E9610);
      v85 = 0;
      v86 = 0xE000000000000000;
      sub_1CF9E7948();

      v85 = 0xD00000000000001ELL;
      v86 = 0x80000001CFA51120;
      MEMORY[0x1D3868CC0](v52, v53);
      v72 = v52;
      (*(v73 + 104))(v76, *MEMORY[0x1E69E8098], v74);
      sub_1CF9E63F8();
      v85 = MEMORY[0x1E69E7CC0];
      sub_1CF518BB8(&qword_1EDEAED80, MEMORY[0x1E69E8030]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF500, &unk_1CF9FE770);
      sub_1CF4F0754();
      sub_1CF9E77B8();
      v63 = sub_1CF9E73B8();

      sub_1CF56506C(v84);
      v62[3] = v63;
      v62[6] = v68;
      sub_1CF5650C8(v81, v62 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_domain);
      v64 = CurrentEventId;
      v62[4] = CurrentEventId;
      v62[5] = v64;
      *(v62 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_mode) = 0;
      *(v62 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_latency) = v59;
      *(v62 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_verbose) = 1;
      v65 = (v62 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_ownerDescription);
      *v65 = v72;
      v65[1] = v53;
      *(v45 + OBJC_IVAR____TtC18FileProviderDaemon17FSChangesNotifier_reader) = v62;
      v70(v45 + OBJC_IVAR____TtC18FileProviderDaemon17FSChangesNotifier_deviceUUID, v80, v75);
    }

    return v45;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF563F2C()
{
  MEMORY[0x1D3868CC0](60, 0xE100000000000000);
  v1 = *v0;
  v2 = sub_1CF9E82E8();
  MEMORY[0x1D3868CC0](v2);

  MEMORY[0x1D3868CC0](58, 0xE100000000000000);
  sub_1CF9E7B58();
  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_1CF564004(uint64_t a1)
{
  v3 = sub_1CF9E64A8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a1 + 24);
  *v8 = v9;
  (*(v4 + 104))(v8, *MEMORY[0x1E69E8020], v3, v6);
  v10 = v9;
  LOBYTE(v9) = sub_1CF9E64D8();
  result = (*(v4 + 8))(v8, v3);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  if (*(v1 + OBJC_IVAR____TtC18FileProviderDaemon17FSChangesNotifier_shouldSignalChange) == 1)
  {
    *(v1 + OBJC_IVAR____TtC18FileProviderDaemon17FSChangesNotifier_shouldSignalChange) = 0;
    v12 = *(v1 + 16);
    v13 = *MEMORY[0x1E6967298];
    v14 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v16 = v15;
    if (v14 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v16 == v17)
    {
    }

    else
    {
      v19 = sub_1CF9E8048();

      if ((v19 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1770, &qword_1CFA05A80);
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_1CF9FA440;
        v21 = *MEMORY[0x1E6967258];
        *(v20 + 32) = *MEMORY[0x1E6967258];
        *(v20 + 40) = v13;
        v22 = v13;
        v13 = v21;
LABEL_11:
        v23 = v13;
        sub_1CF564CD0(v20);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1770, &qword_1CFA05A80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1CF9FA450;
    *(v20 + 32) = v13;
    goto LABEL_11;
  }

  return result;
}

void sub_1CF564230(uint64_t a1)
{
  v2 = [objc_opt_self() legacyDefaultManager];
  v3 = v2;
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      v7 = swift_allocObject();
      *(v7 + 16) = v6;
      aBlock[4] = sub_1CF565064;
      aBlock[5] = v7;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1CF00A468;
      aBlock[3] = &block_descriptor_31;
      v8 = _Block_copy(aBlock);
      v9 = v6;

      [v3 signalEnumeratorForContainerItemIdentifier:v9 completionHandler:v8];
      _Block_release(v8);

      --v4;
    }

    while (v4);
  }

  else
  {
  }
}

void sub_1CF564394(void *a1)
{
  v2 = sub_1CF9E53C8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  if (a1)
  {
    v28 = 0;
    v29 = 0xE000000000000000;
    v10 = a1;
    sub_1CF9E7948();

    v28 = 0xD000000000000019;
    v29 = 0x80000001CFA503E0;
    v11 = NSFileProviderItemIdentifier.description.getter();
    MEMORY[0x1D3868CC0](v11);

    v12 = v28;
    v13 = v29;
    v28 = a1;
    v14 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    if (swift_dynamicCast())
    {
      v27 = *(v3 + 8);
      v27(v9, v2);
      v28 = a1;
      v15 = a1;
      swift_dynamicCast();
      sub_1CF518BB8(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
      sub_1CF9E57A8();
      v16 = sub_1CF9E6148();
      if (sub_1CF008830(v16, MEMORY[0x1E69E7CD0]))
      {
        if (qword_1EDEA3408 != -1)
        {
          swift_once();
        }

        v26 = qword_1EDEBB5A0;
        sub_1CF9E7298();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_1CF9FA440;
        *(v17 + 56) = MEMORY[0x1E69E6158];
        *(v17 + 64) = sub_1CEFD51C4();
        *(v17 + 32) = v12;
        *(v17 + 40) = v13;
        sub_1CF9E57A8();
        v18 = sub_1CF9E6148();
        v19 = MEMORY[0x1E69E7358];
        *(v17 + 96) = MEMORY[0x1E69E72F0];
        *(v17 + 104) = v19;
        *(v17 + 72) = v18;
      }

      else
      {
        if (qword_1EDEA3408 != -1)
        {
          swift_once();
        }

        v26 = qword_1EDEBB5A0;
        sub_1CF9E72A8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_1CF9FA440;
        *(v22 + 56) = MEMORY[0x1E69E6158];
        *(v22 + 64) = sub_1CEFD51C4();
        *(v22 + 32) = v12;
        *(v22 + 40) = v13;
        sub_1CF9E57A8();
        v23 = sub_1CF9E6148();
        v24 = MEMORY[0x1E69E7358];
        *(v22 + 96) = MEMORY[0x1E69E72F0];
        *(v22 + 104) = v24;
        *(v22 + 72) = v23;
      }

      sub_1CF9E6018();

      v27(v6, v2);
    }

    else
    {
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      sub_1CF9E72A8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1CF9FA440;
      *(v20 + 56) = MEMORY[0x1E69E6158];
      *(v20 + 64) = sub_1CEFD51C4();
      *(v20 + 32) = v12;
      *(v20 + 40) = v13;
      v21 = sub_1CF9E57E8();
      *(v20 + 96) = sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
      *(v20 + 104) = sub_1CF326DD0();
      *(v20 + 72) = v21;
      sub_1CF9E6018();
    }
  }
}

uint64_t sub_1CF564884()
{
  sub_1CF56506C(v0 + OBJC_IVAR____TtC18FileProviderDaemon17FSChangesNotifier_domain);
  v1 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon17FSChangesNotifier_reader);

  v2 = OBJC_IVAR____TtC18FileProviderDaemon17FSChangesNotifier_deviceUUID;
  v3 = sub_1CF9E5D98();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 12);
  v5 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FSChangesNotifier()
{
  result = qword_1EC4C1790;
  if (!qword_1EC4C1790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CF56499C()
{
  result = type metadata accessor for LocalDomain();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1CF9E5D98();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1CF564AAC(uint64_t a1)
{
  v3 = sub_1CF9E64A8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = (&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a1 + 24);
  *v8 = v9;
  (*(v4 + 104))(v8, *MEMORY[0x1E69E8020], v3, v6);
  v10 = v9;
  LOBYTE(v9) = sub_1CF9E64D8();
  result = (*(v4 + 8))(v8, v3);
  if (v9)
  {
    *(v1 + OBJC_IVAR____TtC18FileProviderDaemon17FSChangesNotifier_shouldSignalChange) = 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF564BC8(uint64_t a1)
{
  v2 = sub_1CF9E64A8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a1 + 24);
  *v7 = v8;
  (*(v3 + 104))(v7, *MEMORY[0x1E69E8020], v2, v5);
  v9 = v8;
  LOBYTE(v8) = sub_1CF9E64D8();
  result = (*(v3 + 8))(v7, v2);
  if ((v8 & 1) == 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF564CD0(uint64_t a1)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](60, 0xE100000000000000);
  v3 = *v1;
  v4 = sub_1CF9E82E8();
  MEMORY[0x1D3868CC0](v4);

  MEMORY[0x1D3868CC0](58, 0xE100000000000000);
  sub_1CF9E7B58();
  MEMORY[0x1D3868CC0](62, 0xE100000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA52D20);
  type metadata accessor for NSFileProviderItemIdentifier(0);
  v6 = MEMORY[0x1D3868FE0](a1, v5);
  MEMORY[0x1D3868CC0](v6);

  sub_1CEFFCE80();
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  sub_1CF9E7298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1CF9FA440;
  sub_1CEFFD0A8();
  v8 = sub_1CF9E7718();
  v10 = v9;
  v11 = MEMORY[0x1E69E6158];
  *(v7 + 56) = MEMORY[0x1E69E6158];
  v12 = sub_1CEFD51C4();
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  *(v7 + 96) = v11;
  *(v7 + 104) = v12;
  *(v7 + 64) = v12;
  *(v7 + 72) = 0;
  *(v7 + 80) = 0xE000000000000000;

  sub_1CF9E6018();

  sub_1CF564230(a1);

  sub_1CF9E7298();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1CF9FA450;
  v14 = sub_1CF9E7718();
  *(v13 + 56) = MEMORY[0x1E69E6158];
  *(v13 + 64) = v12;
  *(v13 + 32) = v14;
  *(v13 + 40) = v15;
  sub_1CF9E6018();
}

uint64_t sub_1CF56506C(uint64_t a1)
{
  v2 = type metadata accessor for LocalDomain();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CF5650C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalDomain();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}