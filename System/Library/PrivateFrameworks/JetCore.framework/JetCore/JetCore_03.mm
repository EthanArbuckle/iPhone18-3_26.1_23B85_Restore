uint64_t sub_1DB32A8F8@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  v101 = type metadata accessor for JetPackAsset.Metadata(0);
  v4 = *(*(v101 - 8) + 64);
  MEMORY[0x1EEE9AC00](v101);
  v102 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_1DB509B70();
  v106 = *(v107 - 8);
  v6 = *(v106 + 8);
  MEMORY[0x1EEE9AC00](v107);
  v8 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_1DB509CA0();
  v111 = *(v112 - 8);
  v9 = *(v111 + 64);
  v10 = MEMORY[0x1EEE9AC00](v112);
  v105 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v113 = &v98 - v12;
  v115 = sub_1DB50A230();
  v13 = *(v115 - 8);
  v14 = *(v13 + 8);
  v15 = MEMORY[0x1EEE9AC00](v115);
  v17 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v98 - v18;
  v103 = *a1;
  v134 = *(a1 + 4);
  v132 = *(a1 + 5);
  v133 = *(a1 + 7);
  v20 = *(a1 + 2);
  v104 = *(a1 + 1);
  v110 = v20;
  v21 = *(a1 + 4);
  v108 = *(a1 + 3);
  v22 = *(a1 + 6);
  v109 = *(a1 + 5);
  v114 = v22;
  if (qword_1EE30E080 != -1)
  {
    swift_once();
  }

  v23 = sub_1DB50A270();
  __swift_project_value_buffer(v23, qword_1EE30E088);
  sub_1DB50A250();
  sub_1DB50A200();
  v24 = sub_1DB50A250();
  v25 = sub_1DB50B070();
  if (sub_1DB50B0E0())
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    v27 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v24, v25, v27, "Retrieve Cached Asset by Record", "", v26, 2u);
    MEMORY[0x1E1288220](v26, -1, -1);
  }

  (*(v13 + 2))(v17, v19, v115);
  v28 = sub_1DB50A2C0();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = sub_1DB50A2B0();
  v32 = v114;
  if (v114 >> 60 == 15 || !v21)
  {
    goto LABEL_11;
  }

  v100 = a2;
  v116 = v108;
  v99 = v21;
  v117 = v21;
  v33 = v106;
  v34 = v107;
  (*(v106 + 13))(v8, *MEMORY[0x1E6968F70], v107);
  v35 = v109;
  sub_1DB30C1AC(v109, v32);
  sub_1DB301E30();
  v36 = v105;
  sub_1DB509C90();
  (*(v33 + 1))(v8, v34);
  v37 = v32;
  v38 = v111;
  v39 = v113;
  v40 = v112;
  (*(v111 + 32))(v113, v36, v112);
  if (!v110)
  {
    (*(v38 + 8))(v39, v40);
    sub_1DB32E340(v35, v37);
    a2 = v100;
LABEL_11:
    v51 = type metadata accessor for JetPackAsset(0);
    (*(*(v51 - 8) + 56))(a2, 1, 1, v51);
    goto LABEL_24;
  }

  v107 = v31;
  v106 = v19;
  v105 = v13;
  v41 = objc_opt_self();

  v42 = [v41 defaultManager];
  sub_1DB509C30();
  v43 = sub_1DB50A620();

  v44 = [v42 fileExistsAtPath_];

  if (v44)
  {
    v45 = sub_1DB509890();
    v46 = *(v45 + 48);
    v47 = *(v45 + 52);
    swift_allocObject();
    sub_1DB509880();
    sub_1DB32E68C(&qword_1EE30DBC0);
    v48 = v102;
    v49 = v109;
    v50 = v114;
    sub_1DB509870();
    v84 = v48;
    v85 = v113;
    v86 = sub_1DB509C30();
    v88 = v87;
    sub_1DB32E340(v49, v50);

    (*(v38 + 8))(v85, v40);
    v89 = v100;
    v100[3] = &type metadata for JetPackFileStreamSource;
    v89[4] = &protocol witness table for JetPackFileStreamSource;
    v90 = swift_allocObject();
    *v89 = v90;
    v90[2] = v86;
    v90[3] = v88;
    v91 = v104;
    v92 = v110;
    v90[4] = v104;
    v90[5] = v92;
    v93 = type metadata accessor for JetPackAsset(0);
    sub_1DB32E6D0(v84, v89 + v93[5], type metadata accessor for JetPackAsset.Metadata);
    v94 = v134;
    v95 = v89 + v93[6];
    *v95 = v103;
    v95[4] = v94;
    v96 = (v89 + v93[7]);
    *v96 = v91;
    v96[1] = v92;
    *(v89 + v93[8]) = 1;
    *(v89 + v93[9]) = 0;
    *(v89 + v93[10]) = 0;
    v97 = (v89 + v93[11]);
    *v97 = 0;
    v97[1] = 0;
    (*(*(v93 - 1) + 56))(v89, 0, 1, v93);
  }

  else
  {

    sub_1DB32DF6C();
    v52 = swift_allocError();
    *v53 = 3;
    swift_willThrow();
    v54 = v100;
    if (qword_1EE30C928 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v55 = v119;
    v56 = v120;
    v57 = __swift_project_boxed_opaque_existential_1(&v116, v119);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_1DB50EE90;
    v131 = sub_1DB301BC0(0, 46, 0, MEMORY[0x1E69E7CC0]);
    v59._object = 0x80000001DB529D50;
    v59._countAndFlagsBits = 0xD000000000000027;
    LogMessage.StringInterpolation.appendLiteral(_:)(v59);
    swift_getErrorValue();
    v60 = v127;
    v61 = v128;
    v130 = v128;
    v62 = __swift_allocate_boxed_opaque_existential_0(&v129);
    (*(*(v61 - 8) + 16))(v62, v60, v61);
    sub_1DB301CDC(&v129, v123);
    v124 = 0u;
    v125 = 0u;
    sub_1DB301D4C(v123, &v124);
    v126 = 0;
    v63 = v131;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v65 = v109;
    v102 = v57;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v63 = sub_1DB301BC0(0, *(v63 + 2) + 1, 1, v63);
    }

    v67 = *(v63 + 2);
    v66 = *(v63 + 3);
    if (v67 >= v66 >> 1)
    {
      v63 = sub_1DB301BC0((v66 > 1), v67 + 1, 1, v63);
    }

    *(v63 + 2) = v67 + 1;
    v68 = &v63[40 * v67];
    v69 = v124;
    v70 = v125;
    v68[64] = v126;
    *(v68 + 2) = v69;
    *(v68 + 3) = v70;
    v131 = v63;
    sub_1DB30623C(&v129, &qword_1ECC426B0, &qword_1DB50EEB0);
    v71._countAndFlagsBits = 0x3D6C727520;
    v71._object = 0xE500000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v71);
    v72 = v112;
    v130 = v112;
    v73 = __swift_allocate_boxed_opaque_existential_0(&v129);
    (*(v111 + 16))(v73, v113, v72);
    sub_1DB301CDC(&v129, v123);
    v124 = 0u;
    v125 = 0u;
    sub_1DB301D4C(v123, &v124);
    v126 = 0;
    v74 = v131;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v74 = sub_1DB301BC0(0, *(v74 + 2) + 1, 1, v74);
    }

    v76 = *(v74 + 2);
    v75 = *(v74 + 3);
    if (v76 >= v75 >> 1)
    {
      v74 = sub_1DB301BC0((v75 > 1), v76 + 1, 1, v74);
    }

    *(v74 + 2) = v76 + 1;
    v77 = &v74[40 * v76];
    v78 = v124;
    v79 = v125;
    v77[64] = v126;
    *(v77 + 2) = v78;
    *(v77 + 3) = v79;
    v131 = v74;
    sub_1DB30623C(&v129, &qword_1ECC426B0, &qword_1DB50EEB0);
    v80._countAndFlagsBits = 0;
    v80._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v80);
    *(v58 + 32) = v131;
    Logger.error(_:)(v58, v55, v56);

    __swift_destroy_boxed_opaque_existential_0(&v116);
    LODWORD(v116) = v103;
    BYTE4(v116) = v134;
    *(&v116 + 5) = v132;
    HIBYTE(v116) = v133;
    v117 = v104;
    v118 = v110;
    v119 = v108;
    v120 = v99;
    v121 = v65;
    v81 = v114;
    v122 = v114;
    sub_1DB32D488(&v116);
    sub_1DB32E340(v65, v81);

    (*(v111 + 8))(v113, v112);
    v82 = type metadata accessor for JetPackAsset(0);
    (*(*(v82 - 8) + 56))(v54, 1, 1, v82);
  }

  v13 = v105;
  v19 = v106;
  v31 = v107;
LABEL_24:
  sub_1DB32E04C(v31, "Retrieve Cached Asset by Record");

  return (*(v13 + 1))(v19, v115);
}

uint64_t JetPackAssetDiskCache._asset(withID:)(uint64_t a1, int a2)
{
  *(v3 + 104) = a2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v2;
  return MEMORY[0x1EEE6DFA0](sub_1DB32B608, 0, 0);
}

uint64_t sub_1DB32B608()
{
  v38 = v0;
  v1 = *(v0 + 104);
  v2 = (*(v0 + 96) + OBJC_IVAR____TtC7JetCore21JetPackAssetDiskCache_metadataStore);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  (*(v4 + 8))(&v22, v1, v3, v4);
  v5 = v24;
  if (v24 == 1)
  {
    if (qword_1EE30C928 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 88);
    sub_1DB50BEB0();
    v7 = *(v0 + 40);
    v8 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1DB50EE90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1DB50EE90;
    *(v0 + 80) = MEMORY[0x1E69E6158];
    *(v0 + 56) = 0xD000000000000026;
    *(v0 + 64) = 0x80000001DB529C20;
    *(v10 + 48) = 0u;
    *(v10 + 32) = 0u;
    sub_1DB301D4C(v0 + 56, v10 + 32);
    *(v10 + 64) = 0;
    *(v9 + 32) = v10;
    Logger.info(_:)(v9, v7, v8);

    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v11 = type metadata accessor for JetPackAsset(0);
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  }

  else
  {
    v12 = *(v0 + 88);
    v13 = *(v0 + 96);
    v15 = v27;
    v14 = v28;
    v17 = v25;
    v16 = v26;
    v19 = v22;
    v18 = v23;
    v29 = BYTE4(v22) & 1;
    v30 = v22;
    v31 = BYTE4(v22) & 1;
    v32 = v23;
    v33 = v24;
    v34 = v25;
    v35 = v26;
    v36 = v27;
    v37 = v28;
    sub_1DB32A8F8(&v30, v12);
    sub_1DB32E2DC(v19, v18, v5, v17, v16, v15, v14);
  }

  v20 = *(v0 + 8);

  return v20();
}

void JetPackAssetDiskCache._evict(asset:)(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for JetPackAsset(0) + 24);
  if ((*(v1 + 4) & 1) == 0)
  {
    JetPackAssetDiskCache._evict(cacheID:)(*v1);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> JetPackAssetDiskCache._evict(cacheKey:)(Swift::String cacheKey)
{
  v3 = v1;
  object = cacheKey._object;
  countAndFlagsBits = cacheKey._countAndFlagsBits;
  v6 = *(v3 + OBJC_IVAR____TtC7JetCore21JetPackAssetDiskCache_metadataStore + 24);
  v7 = *(v3 + OBJC_IVAR____TtC7JetCore21JetPackAssetDiskCache_metadataStore + 32);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC7JetCore21JetPackAssetDiskCache_metadataStore), v6);
  (*(v7 + 16))(&v20, countAndFlagsBits, object, v6, v7);
  if (!v2)
  {
    v8 = v22;
    if (v22 != 1)
    {
      v10 = v20;
      v9 = v21;
      v11 = v23;
      v12 = v24;
      v13 = v25;
      v14 = v26;
      if ((v20 & 0x100000000) == 0)
      {
        JetPackAssetDiskCache._evict(cacheID:)(v20);
        sub_1DB32E2DC(v10, v9, v8, v11, v12, v13, v14);
        return;
      }

      sub_1DB32E2DC(v20, v21, v22, v23, v24, v25, v26);
    }

    if (qword_1EE30C928 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v15 = v23;
    v16 = v24;
    __swift_project_boxed_opaque_existential_1(&v20, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1DB50EE90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1DB50EE90;
    v19[3] = MEMORY[0x1E69E6158];
    v19[0] = 0xD000000000000026;
    v19[1] = 0x80000001DB529C20;
    *(v18 + 48) = 0u;
    *(v18 + 32) = 0u;
    sub_1DB301D4C(v19, v18 + 32);
    *(v18 + 64) = 0;
    *(v17 + 32) = v18;
    Logger.info(_:)(v17, v15, v16);

    __swift_destroy_boxed_opaque_existential_0(&v20);
  }
}

uint64_t sub_1DB32BC88(int *a1)
{
  v2 = v1;
  v69 = *MEMORY[0x1E69E9840];
  v54 = sub_1DB509B70();
  v53 = *(v54 - 8);
  v4 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v6 = &v49[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v58 = sub_1DB509CA0();
  v57 = *(v58 - 8);
  v7 = *(v57 + 64);
  v8 = MEMORY[0x1EEE9AC00](v58);
  v52 = &v49[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v55 = &v49[-v10];
  v11 = *a1;
  v12 = *(a1 + 4);
  v13 = *(a1 + 4);
  v51 = *(a1 + 3);
  v59 = v13;
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v14 = v67;
  v15 = v68;
  __swift_project_boxed_opaque_existential_1(v66, v67);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1DB50EE90;
  v60 = sub_1DB301BC0(0, 25, 0, MEMORY[0x1E69E7CC0]);
  v17._object = 0x80000001DB529D30;
  v17._countAndFlagsBits = 0xD000000000000018;
  LogMessage.StringInterpolation.appendLiteral(_:)(v17);
  if (v12)
  {
    v18 = 0;
    memset(v65, 0, 24);
  }

  else
  {
    LODWORD(v65[0]) = v11;
    v18 = MEMORY[0x1E69E72F0];
  }

  v65[3] = v18;
  sub_1DB301CDC(v65, v61);
  v62 = 0u;
  v63 = 0u;
  sub_1DB301D4C(v61, &v62);
  v64 = 0;
  v19 = v60;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v56 = v2;
  v50 = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v19 = sub_1DB301BC0(0, *(v19 + 2) + 1, 1, v19);
  }

  v22 = *(v19 + 2);
  v21 = *(v19 + 3);
  if (v22 >= v21 >> 1)
  {
    v19 = sub_1DB301BC0((v21 > 1), v22 + 1, 1, v19);
  }

  *(v19 + 2) = v22 + 1;
  v23 = &v19[40 * v22];
  v24 = v62;
  v25 = v63;
  v23[64] = v64;
  *(v23 + 2) = v24;
  *(v23 + 3) = v25;
  v60 = v19;
  sub_1DB30623C(v65, &qword_1ECC426B0, &qword_1DB50EEB0);
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v26);
  *(v16 + 32) = v60;
  Logger.info(_:)(v16, v14, v15);

  __swift_destroy_boxed_opaque_existential_0(v66);
  if (v59)
  {
    v27 = v12;
  }

  else
  {
    v27 = 1;
  }

  if ((v27 & 1) == 0)
  {
    v66[0] = v51;
    v66[1] = v59;
    v30 = v53;
    v31 = v54;
    (*(v53 + 104))(v6, *MEMORY[0x1E6968F70], v54);
    sub_1DB301E30();
    v32 = v56;
    v33 = v52;
    sub_1DB509C90();
    (*(v30 + 8))(v6, v31);
    v34 = v57;
    v35 = v55;
    v36 = v58;
    (*(v57 + 32))(v55, v33, v58);
    v37 = objc_opt_self();
    v38 = [v37 defaultManager];
    sub_1DB509C30();
    v39 = sub_1DB50A620();

    v40 = [v38 fileExistsAtPath_];

    if (v40)
    {
      v41 = [v37 defaultManager];
      v42 = sub_1DB509BC0();
      v66[0] = 0;
      v43 = [v41 removeItemAtURL:v42 error:v66];

      if (!v43)
      {
        v47 = v66[0];
        sub_1DB509B20();

        swift_willThrow();
        goto LABEL_20;
      }

      v44 = v66[0];
    }

    v45 = *(v32 + OBJC_IVAR____TtC7JetCore21JetPackAssetDiskCache_metadataStore + 24);
    v46 = *(v32 + OBJC_IVAR____TtC7JetCore21JetPackAssetDiskCache_metadataStore + 32);
    __swift_project_boxed_opaque_existential_1((v32 + OBJC_IVAR____TtC7JetCore21JetPackAssetDiskCache_metadataStore), v45);
    (*(v46 + 48))(v50, v45, v46);
LABEL_20:
    result = (*(v34 + 8))(v35, v36);
    goto LABEL_21;
  }

  sub_1DB32DF6C();
  swift_allocError();
  *v28 = 0;
  result = swift_willThrow();
LABEL_21:
  v48 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t JetPackAssetDiskCache._allCachedAssets.getter()
{
  v1[43] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46F20, qword_1DB5105D0) - 8) + 64) + 15;
  v1[44] = swift_task_alloc();
  v3 = type metadata accessor for JetPackAsset(0);
  v1[45] = v3;
  v4 = *(v3 - 8);
  v1[46] = v4;
  v5 = *(v4 + 64) + 15;
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB32C3AC, 0, 0);
}

uint64_t sub_1DB32C3AC()
{
  v50 = v0;
  v1 = (*(v0 + 344) + OBJC_IVAR____TtC7JetCore21JetPackAssetDiskCache_metadataStore);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  result = (*(v3 + 24))(v2, v3);
  v5 = result;
  v47 = *(result + 16);
  if (v47)
  {
    v6 = 0;
    v7 = result + 32;
    v43 = *(v0 + 368);
    v46 = (v0 + 280);
    v8 = MEMORY[0x1E69E7CC0];
    v44 = result;
    while (v6 < *(v5 + 16))
    {
      v11 = *(v0 + 352);
      v10 = *(v0 + 360);
      v12 = *(v0 + 344);
      v14 = *(v7 + 16);
      v13 = *(v7 + 32);
      v15 = *v7;
      *(v0 + 64) = *(v7 + 48);
      *(v0 + 32) = v14;
      *(v0 + 48) = v13;
      *(v0 + 16) = v15;
      v16 = *(v7 + 16);
      v48[0] = *v7;
      v48[1] = v16;
      v48[2] = *(v7 + 32);
      v49 = *(v7 + 48);
      sub_1DB32E354(v0 + 16, v0 + 72);
      sub_1DB32A8F8(v48, v11);
      if ((*(v43 + 48))(v11, 1, v10) == 1)
      {
        sub_1DB30623C(*(v0 + 352), &qword_1ECC46F20, qword_1DB5105D0);
        if (qword_1EE30C928 != -1)
        {
          swift_once();
        }

        sub_1DB50BEB0();
        v17 = *(v0 + 152);
        v45 = *(v0 + 160);
        __swift_project_boxed_opaque_existential_1((v0 + 128), v17);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_1DB50EE90;
        v19 = sub_1DB301BC0(0, 25, 0, MEMORY[0x1E69E7CC0]);
        if (("Retrieve Cached Asset" & 0x2F00000000000000) != 0x2000000000000000)
        {
          *(v0 + 272) = MEMORY[0x1E69E6158];
          *(v0 + 248) = 0xD000000000000018;
          *(v0 + 256) = 0x80000001DB529C70;
          *(v0 + 168) = 0u;
          *(v0 + 184) = 0u;
          sub_1DB301D4C(v0 + 248, v0 + 168);
          *(v0 + 200) = 0;
          v21 = *(v19 + 2);
          v20 = *(v19 + 3);
          if (v21 >= v20 >> 1)
          {
            v19 = sub_1DB301BC0((v20 > 1), v21 + 1, 1, v19);
          }

          *(v19 + 2) = v21 + 1;
          v22 = &v19[40 * v21];
          v23 = *(v0 + 168);
          v24 = *(v0 + 184);
          v22[64] = *(v0 + 200);
          *(v22 + 2) = v23;
          *(v22 + 3) = v24;
        }

        if (*(v0 + 20))
        {
          v25 = v0 + 280;
          *v46 = 0uLL;
          *(v0 + 296) = 0uLL;
        }

        else
        {
          v32 = *(v0 + 16);
          *(v0 + 304) = MEMORY[0x1E69E72F0];
          *(v0 + 280) = v32;
          v25 = v0 + 280;
        }

        sub_1DB301CDC(v25, v0 + 312);
        *(v0 + 208) = 0u;
        *(v0 + 224) = 0u;
        sub_1DB301D4C(v0 + 312, v0 + 208);
        *(v0 + 240) = 0;
        v34 = *(v19 + 2);
        v33 = *(v19 + 3);
        if (v34 >= v33 >> 1)
        {
          v19 = sub_1DB301BC0((v33 > 1), v34 + 1, 1, v19);
        }

        *(v19 + 2) = v34 + 1;
        v35 = &v19[40 * v34];
        v36 = *(v0 + 208);
        v37 = *(v0 + 224);
        v35[64] = *(v0 + 240);
        *(v35 + 2) = v36;
        *(v35 + 3) = v37;
        sub_1DB30623C(v46, &qword_1ECC426B0, &qword_1DB50EEB0);
        *(v18 + 32) = v19;
        Logger.error(_:)(v18, v17, v45);
        sub_1DB32DFF8(v0 + 16);

        result = __swift_destroy_boxed_opaque_existential_0((v0 + 128));
        v5 = v44;
      }

      else
      {
        v27 = *(v0 + 384);
        v26 = *(v0 + 392);
        v28 = *(v0 + 376);
        v29 = *(v0 + 352);
        sub_1DB32DFF8(v0 + 16);
        sub_1DB32E6D0(v29, v28, type metadata accessor for JetPackAsset);
        sub_1DB32E6D0(v28, v27, type metadata accessor for JetPackAsset);
        sub_1DB32E6D0(v27, v26, type metadata accessor for JetPackAsset);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1DB302A0C(0, v8[2] + 1, 1, v8);
        }

        v31 = v8[2];
        v30 = v8[3];
        if (v31 >= v30 >> 1)
        {
          v8 = sub_1DB302A0C(v30 > 1, v31 + 1, 1, v8);
        }

        v9 = *(v0 + 392);
        v8[2] = v31 + 1;
        result = sub_1DB32E6D0(v9, v8 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v31, type metadata accessor for JetPackAsset);
      }

      ++v6;
      v7 += 56;
      if (v47 == v6)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_24:
    v39 = *(v0 + 384);
    v38 = *(v0 + 392);
    v40 = *(v0 + 376);
    v41 = *(v0 + 352);

    v42 = *(v0 + 8);

    return v42(v8);
  }

  return result;
}

uint64_t sub_1DB32C96C()
{
  v36 = v0;
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 264);
  sub_1DB50BEB0();
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DB50EE90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DB50EE90;
  *(v0 + 96) = MEMORY[0x1E69E6158];
  strcpy((v0 + 72), "Emptying cache");
  *(v0 + 87) = -18;
  *(v5 + 48) = 0u;
  *(v5 + 32) = 0u;
  sub_1DB301D4C(v0 + 72, v5 + 32);
  *(v5 + 64) = 0;
  *(v4 + 32) = v5;
  Logger.info(_:)(v4, v3, v2);

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v6 = *(v1 + OBJC_IVAR____TtC7JetCore21JetPackAssetDiskCache_metadataStore + 24);
  v7 = *(v1 + OBJC_IVAR____TtC7JetCore21JetPackAssetDiskCache_metadataStore + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC7JetCore21JetPackAssetDiskCache_metadataStore), v6);
  v8 = (*(v7 + 24))(v6, v7);
  sub_1DB50BEB0();
  v9 = *(v0 + 40);
  v10 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v9);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1DB50EE90;
  *&v34[0] = sub_1DB301BC0(0, 23, 0, MEMORY[0x1E69E7CC0]);
  v12._countAndFlagsBits = 0x20646E756F46;
  v12._object = 0xE600000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v12);
  v13 = *(v8 + 16);
  *(v0 + 152) = MEMORY[0x1E69E6530];
  *(v0 + 128) = v13;
  sub_1DB301CDC(v0 + 128, v0 + 168);
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  sub_1DB301D4C(v0 + 168, v0 + 72);
  *(v0 + 104) = 0;
  v14 = *&v34[0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_1DB301BC0(0, *(*&v34[0] + 16) + 1, 1, *&v34[0]);
  }

  v16 = *(v14 + 2);
  v15 = *(v14 + 3);
  if (v16 >= v15 >> 1)
  {
    v14 = sub_1DB301BC0((v15 > 1), v16 + 1, 1, v14);
  }

  *(v14 + 2) = v16 + 1;
  v17 = &v14[40 * v16];
  v18 = *(v0 + 72);
  v19 = *(v0 + 88);
  v17[64] = *(v0 + 104);
  *(v17 + 2) = v18;
  *(v17 + 3) = v19;
  *&v34[0] = v14;
  sub_1DB30623C(v0 + 128, &qword_1ECC426B0, &qword_1DB50EEB0);
  v20._object = 0x80000001DB529C90;
  v20._countAndFlagsBits = 0xD000000000000010;
  LogMessage.StringInterpolation.appendLiteral(_:)(v20);
  *(v11 + 32) = v14;
  Logger.info(_:)(v11, v9, v10);

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v21 = *(v8 + 16);
  if (v21)
  {
    v22 = v21 - 1;
    v23 = MEMORY[0x1E69E7CC0];
    for (i = 32; ; i += 56)
    {
      v25 = *(v0 + 264);
      v27 = *(v8 + i + 16);
      v26 = *(v8 + i + 32);
      v28 = *(v8 + i);
      *(v0 + 64) = *(v8 + i + 48);
      *(v0 + 32) = v27;
      *(v0 + 48) = v26;
      *(v0 + 16) = v28;
      v29 = *(v8 + i + 16);
      v34[0] = *(v8 + i);
      v34[1] = v29;
      v34[2] = *(v8 + i + 32);
      v35 = *(v8 + i + 48);
      sub_1DB32E354(v0 + 16, v0 + 72);
      sub_1DB32BC88(v34);
      sub_1DB32DFF8(v0 + 16);
      if (!v22)
      {
        break;
      }

      --v22;
    }

    if (*(v23 + 16))
    {
      goto LABEL_13;
    }

LABEL_20:

    v32 = *(v0 + 8);
    goto LABEL_16;
  }

  v23 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_20;
  }

LABEL_13:
  sub_1DB32E3B0();
  swift_allocError();
  v31 = v30;
  if (!*(v23 + 16))
  {
    sub_1DB3CCA10("JetCore/CompoundError.swift", 0x1BuLL, 2, 0x15uLL);
  }

  *v31 = v23;
  swift_willThrow();
  v32 = *(v0 + 8);
LABEL_16:

  return v32();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> JetPackAssetDiskCache._beginTransaction()()
{
  v1 = *(v0 + OBJC_IVAR____TtC7JetCore21JetPackAssetDiskCache_metadataStore + 24);
  v2 = *(v0 + OBJC_IVAR____TtC7JetCore21JetPackAssetDiskCache_metadataStore + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7JetCore21JetPackAssetDiskCache_metadataStore), v1);
  (*(v2 + 64))(v1, v2);
}

Swift::Void __swiftcall JetPackAssetDiskCache._endTransaction()()
{
  v1 = *(v0 + OBJC_IVAR____TtC7JetCore21JetPackAssetDiskCache_metadataStore + 24);
  v2 = *(v0 + OBJC_IVAR____TtC7JetCore21JetPackAssetDiskCache_metadataStore + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7JetCore21JetPackAssetDiskCache_metadataStore), v1);
  (*(v2 + 72))(v1, v2);
}

uint64_t JetPackAssetDiskCache._executeWithTransaction<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DB32D258, 0, 0);
}

uint64_t sub_1DB32D258()
{
  v1 = (v0[6] + OBJC_IVAR____TtC7JetCore21JetPackAssetDiskCache_metadataStore);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 80);
  v12 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_1DB32D394;
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[2];
  v10 = v0[3];

  return v12(v9, v10, v7, v8, v2, v3);
}

uint64_t sub_1DB32D394()
{
  v1 = *(*v0 + 56);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1DB32D488(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v6 = *(a1 + 3);
  v7 = *(a1 + 5);
  v5[0] = v1;
  v5[1] = v2;
  v5[2] = v3;
  return sub_1DB32BC88(v5);
}

uint64_t JetPackAssetDiskCache.deinit()
{
  v1 = OBJC_IVAR____TtC7JetCore21JetPackAssetDiskCache_assetsURL;
  v2 = sub_1DB509CA0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC7JetCore21JetPackAssetDiskCache_metadataStore));
  return v0;
}

uint64_t JetPackAssetDiskCache.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC7JetCore21JetPackAssetDiskCache_assetsURL;
  v2 = sub_1DB509CA0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC7JetCore21JetPackAssetDiskCache_metadataStore));
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1DB32D940(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DB30C7A0;

  return JetPackAssetDiskCache._cache(_:)(a1, a2);
}

uint64_t sub_1DB32D9EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DB30C7A0;

  return JetPackAssetDiskCache._asset(for:)(a1, a2, a3);
}

uint64_t sub_1DB32DAA0(uint64_t a1)
{
  v3 = a1 + *(type metadata accessor for JetPackAsset(0) + 24);
  if ((*(v3 + 4) & 1) != 0 || (v4 = *v1, JetPackAssetDiskCache._evict(cacheID:)(*v3), !v5))
  {
    v6 = *(v2 + 8);
  }

  else
  {
    v6 = *(v2 + 8);
  }

  return v6();
}

uint64_t sub_1DB32DB44()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DB30C7A0;

  return JetPackAssetDiskCache._empty()();
}

uint64_t sub_1DB32DBD4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DB32DC64;

  return JetPackAssetDiskCache._allCachedAssets.getter();
}

uint64_t sub_1DB32DC64(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_1DB32DD64()
{
  v1 = (*v0 + OBJC_IVAR____TtC7JetCore21JetPackAssetDiskCache_metadataStore);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 64))(v2, v3);
}

uint64_t sub_1DB32DDCC()
{
  v1 = (*v0 + OBJC_IVAR____TtC7JetCore21JetPackAssetDiskCache_metadataStore);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 72))(v2, v3);
}

uint64_t sub_1DB32DE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1DB306AF4;

  return JetPackAssetDiskCache._executeWithTransaction<A>(_:)(a1, a2, a3, a4);
}

uint64_t sub_1DB32DF10(uint64_t a1)
{
  v2 = type metadata accessor for JetPackAssetDiskCache.DefaultLocation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DB32DF6C()
{
  result = qword_1ECC430C0;
  if (!qword_1ECC430C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC430C0);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1DB32E04C(uint64_t a1, const char *a2)
{
  v20 = a2;
  v2 = sub_1DB50A280();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DB50A230();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE30E080 != -1)
  {
    swift_once();
  }

  v12 = sub_1DB50A270();
  __swift_project_value_buffer(v12, qword_1EE30E088);
  v13 = sub_1DB50A250();
  sub_1DB50A2A0();
  v14 = sub_1DB50B060();
  if (sub_1DB50B0E0())
  {

    sub_1DB50A2D0();

    if ((*(v3 + 88))(v6, v2) == *MEMORY[0x1E69E93E8])
    {
      v15 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v6, v2);
      v15 = "";
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v13, v14, v17, v20, v15, v16, 2u);
    MEMORY[0x1E1288220](v16, -1, -1);
  }

  return (*(v8 + 8))(v11, v7);
}

void sub_1DB32E2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  if (a3 != 1)
  {

    sub_1DB32E340(a6, a7);
  }
}

uint64_t sub_1DB32E340(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1DB30C158(a1, a2);
  }

  return a1;
}

unint64_t sub_1DB32E3B0()
{
  result = qword_1ECC430D0;
  if (!qword_1ECC430D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC430D0);
  }

  return result;
}

unint64_t sub_1DB32E408()
{
  result = qword_1ECC430D8;
  if (!qword_1ECC430D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC430D8);
  }

  return result;
}

uint64_t sub_1DB32E494(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DB32E4CC()
{
  result = sub_1DB509CA0();
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

uint64_t sub_1DB32E5CC()
{
  result = sub_1DB509CA0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1DB32E638()
{
  result = qword_1ECC430E0;
  if (!qword_1ECC430E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC430E0);
  }

  return result;
}

uint64_t sub_1DB32E68C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for JetPackAsset.Metadata(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DB32E6D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
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

uint64_t sub_1DB32E7A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v6 = v30;
  v7 = v31;
  __swift_project_boxed_opaque_existential_1(v29, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1DB50EE90;
  v28 = sub_1DB301BC0(0, 25, 0, MEMORY[0x1E69E7CC0]);
  v9._object = 0x80000001DB529E50;
  v9._countAndFlagsBits = 0xD000000000000018;
  LogMessage.StringInterpolation.appendLiteral(_:)(v9);
  v10 = (a1 + *(type metadata accessor for JetPackAsset(0) + 28));
  v11 = *v10;
  v12 = v10[1];
  v27[3] = MEMORY[0x1E69E6158];
  v27[0] = v11;
  v27[1] = v12;
  sub_1DB301CDC(v27, v23);
  v24 = 0u;
  v25 = 0u;

  sub_1DB301D4C(v23, &v24);
  v26 = 0;
  v13 = v28;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = sub_1DB301BC0(0, *(v13 + 2) + 1, 1, v13);
    v28 = v13;
  }

  v15 = *(v13 + 2);
  v14 = *(v13 + 3);
  if (v15 >= v14 >> 1)
  {
    v13 = sub_1DB301BC0((v14 > 1), v15 + 1, 1, v13);
  }

  *(v13 + 2) = v15 + 1;
  v16 = &v13[40 * v15];
  v17 = v24;
  v18 = v25;
  v16[64] = v26;
  *(v16 + 2) = v17;
  *(v16 + 3) = v18;
  v28 = v13;
  sub_1DB30623C(v27, &qword_1ECC426B0, &qword_1DB50EEB0);
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v19);
  *(v8 + 32) = v28;
  Logger.debug(_:)(v8, v6, v7);

  v20 = __swift_destroy_boxed_opaque_existential_0(v29);
  v21 = *(v3 + 16);
  MEMORY[0x1EEE9AC00](v20);

  os_unfair_lock_lock(v21 + 6);
  sub_1DB32F810(&v21[4]);
  os_unfair_lock_unlock(v21 + 6);

  return sub_1DB314AF4(a1, a2);
}

uint64_t sub_1DB32EA40(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46F20, qword_1DB5105D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for JetPackAsset(0);
  v8 = (a2 + *(v7 + 28));
  v9 = *v8;
  v10 = v8[1];
  sub_1DB314AF4(a2, v6);
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);

  return sub_1DB30D5E0(v6, v9, v10);
}

uint64_t sub_1DB32EB48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v7 = v29;
  v8 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1DB50EE90;
  v27 = sub_1DB301BC0(0, 36, 0, MEMORY[0x1E69E7CC0]);
  v10._object = 0x80000001DB529BF0;
  v10._countAndFlagsBits = 0xD000000000000023;
  LogMessage.StringInterpolation.appendLiteral(_:)(v10);
  v26[3] = MEMORY[0x1E69E6158];
  v26[0] = a1;
  v26[1] = a2;
  sub_1DB301CDC(v26, v22);
  v23 = 0u;
  v24 = 0u;

  sub_1DB301D4C(v22, &v23);
  v25 = 0;
  v11 = v27;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = sub_1DB301BC0(0, *(v11 + 2) + 1, 1, v11);
    v27 = v11;
  }

  v13 = *(v11 + 2);
  v12 = *(v11 + 3);
  if (v13 >= v12 >> 1)
  {
    v11 = sub_1DB301BC0((v12 > 1), v13 + 1, 1, v11);
  }

  *(v11 + 2) = v13 + 1;
  v14 = &v11[40 * v13];
  v15 = v23;
  v16 = v24;
  v14[64] = v25;
  *(v14 + 2) = v15;
  *(v14 + 3) = v16;
  v27 = v11;
  sub_1DB30623C(v26, &qword_1ECC426B0, &qword_1DB50EEB0);
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v17);
  *(v9 + 32) = v27;
  Logger.debug(_:)(v9, v7, v8);

  v18 = __swift_destroy_boxed_opaque_existential_0(v28);
  v19 = *(v4 + 16);
  MEMORY[0x1EEE9AC00](v18);

  os_unfair_lock_lock((v19 + 24));
  sub_1DB32F7F4((v19 + 16), a3);
  os_unfair_lock_unlock((v19 + 24));
}

uint64_t sub_1DB32EDD0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a1;
  if (*(*a1 + 16) && (v6 = sub_1DB306160(a2, a3), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(v5 + 56);
    v10 = type metadata accessor for JetPackAsset(0);
    v11 = *(v10 - 8);
    sub_1DB314AF4(v9 + *(v11 + 72) * v8, a4);
    return (*(v11 + 56))(a4, 0, 1, v10);
  }

  else
  {
    v13 = type metadata accessor for JetPackAsset(0);
    return (*(*(v13 - 8) + 56))(a4, 1, 1, v13);
  }
}

uint64_t sub_1DB32EEEC(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46F20, qword_1DB5105D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v20 - v6;
  v8 = type metadata accessor for JetPackAsset(0);
  v9 = (a2 + *(v8 + 28));
  v10 = *a1;
  v11 = sub_1DB306160(*v9, v9[1]);
  if (v12)
  {
    v13 = v11;
    v14 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *a1;
    v21 = *a1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1DB311E8C();
      v16 = v21;
    }

    v17 = *(*(v16 + 48) + 16 * v13 + 8);

    v18 = *(v8 - 8);
    sub_1DB314B58(*(v16 + 56) + *(v18 + 72) * v13, v7);
    sub_1DB3106CC(v13, v16);
    *a1 = v16;
    (*(v18 + 56))(v7, 0, 1, v8);
  }

  else
  {
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  }

  return sub_1DB30623C(v7, &qword_1ECC46F20, qword_1DB5105D0);
}

size_t sub_1DB32F0B4()
{
  v1 = *(v0 + 16);

  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v3 = v2[2];
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = sub_1DB32423C(v2[2], 0);
  v5 = *(type metadata accessor for JetPackAsset(0) - 8);
  v6 = sub_1DB324518(&v8, v4 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v3, v2);

  sub_1DB2FEA60();
  if (v6 != v3)
  {
    __break(1u);
LABEL_4:
    v4 = MEMORY[0x1E69E7CC0];
  }

  os_unfair_lock_unlock((v1 + 24));

  return v4;
}

uint64_t sub_1DB32F1CC()
{
  v1 = v0;
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v2 = v12;
  v3 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DB50EE90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DB50EE90;
  v10 = MEMORY[0x1E69E6158];
  strcpy(v9, "Emptying cache");
  v9[15] = -18;
  *(v5 + 48) = 0u;
  *(v5 + 32) = 0u;
  sub_1DB301D4C(v9, v5 + 32);
  *(v5 + 64) = 0;
  *(v4 + 32) = v5;
  Logger.debug(_:)(v4, v2, v3);

  __swift_destroy_boxed_opaque_existential_0(v11);
  v6 = *(v1 + 16);

  os_unfair_lock_lock((v6 + 24));
  v7 = *(v6 + 16);

  *(v6 + 16) = MEMORY[0x1E69E7CC8];
  os_unfair_lock_unlock((v6 + 24));
}

uint64_t sub_1DB32F364(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DB306AF4;

  return v7(a1);
}

uint64_t sub_1DB32F45C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1DB32F4B8(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  sub_1DB32E7A0(a2, a1);
  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_1DB32F524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  sub_1DB32EB48(a2, a3, a1);
  v6 = *(v4 + 8);

  return v6();
}

uint64_t sub_1DB32F594(uint64_t a1)
{
  v3 = *(*v1 + 16);
  *(swift_task_alloc() + 16) = a1;

  os_unfair_lock_lock((v3 + 24));
  sub_1DB32F7D8((v3 + 16));
  os_unfair_lock_unlock((v3 + 24));

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_1DB32F660()
{
  v2 = *v0;
  sub_1DB32F1CC();
  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1DB32F6C4()
{
  v2 = *v0;
  v3 = sub_1DB32F0B4();
  v4 = *(v1 + 8);

  return v4(v3);
}

uint64_t sub_1DB32F728(uint64_t a1, int *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DB30C7A0;

  return sub_1DB32F364(a1, a2);
}

uint64_t dispatch thunk of JetPackAssetCache._cache(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1DB30C7A0;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of JetPackAssetCache._asset(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 16);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1DB30C7A0;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of JetPackAssetCache._evict(asset:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1DB30C7A0;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of JetPackAssetCache._empty()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 32);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DB30C7A0;

  return v9(a1, a2);
}

uint64_t dispatch thunk of JetPackAssetCache._allCachedAssets.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 40);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DB32FDFC;

  return v9(a1, a2);
}

uint64_t sub_1DB32FDFC(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of JetPackAssetCache._executeWithTransaction<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 64);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_1DB306AF4;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1DB330084@<X0>(uint64_t *a1@<X0>, uint64_t **a2@<X8>)
{
  v4 = *a1;

  v6 = *(v4 + 80);
  *a2 = a1;
  a2[1] = v6;
  return result;
}

uint64_t sub_1DB3300D0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DB50BCF0();
  MEMORY[0x1E12871F0](v1);
  MEMORY[0x1E12871F0](v2);
  return sub_1DB50BD30();
}

uint64_t sub_1DB33012C()
{
  v1 = v0[1];
  MEMORY[0x1E12871F0](*v0);
  return MEMORY[0x1E12871F0](v1);
}

uint64_t sub_1DB330168()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DB50BCF0();
  MEMORY[0x1E12871F0](v1);
  MEMORY[0x1E12871F0](v2);
  return sub_1DB50BD30();
}

uint64_t sub_1DB3301EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC430E8, &qword_1DB510630);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1DB50BEA0();
  qword_1EE30E768 = result;
  return result;
}

uint64_t sub_1DB330250(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5)
{
  *(v5 + 48) = a3;
  *(v5 + 56) = a5;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  *(v5 + 64) = *a4;
  return MEMORY[0x1EEE6DFA0](sub_1DB33027C, 0, 0);
}

uint64_t sub_1DB33027C()
{
  if (qword_1EE30E778 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v1 = *(v0 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v1 = sub_1DB302744(0, *(v1 + 2) + 1, 1, v1);
  }

  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  if (v3 >= v2 >> 1)
  {
    v1 = sub_1DB302744((v2 > 1), v3 + 1, 1, v1);
  }

  *(v0 + 80) = v1;
  v4 = *(v0 + 64);
  *(v1 + 2) = v3 + 1;
  *&v1[16 * v3 + 32] = v4;
  *(v0 + 24) = v1;
  v5 = *(MEMORY[0x1E69E8950] + 4);
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  *v6 = v0;
  v6[1] = sub_1DB33040C;
  v7 = *(v0 + 48);
  v8 = *(v0 + 32);
  v9 = *(v0 + 40);
  v12 = *(v0 + 56);

  return MEMORY[0x1EEE6DE98](v8, v0 + 24, v9, v7, 0, 0, 0xD000000000000022, 0x80000001DB529E70);
}

uint64_t sub_1DB33040C()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(v4 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DB33055C, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5();
  }
}

uint64_t sub_1DB330574(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v7 = *a3;
  if (qword_1EE30E778 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v3 = v8;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1DB302744(0, *(v8 + 16) + 1, 1, v8);
  }

  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  if (v5 >= v4 >> 1)
  {
    v3 = sub_1DB302744((v4 > 1), v5 + 1, 1, v3);
  }

  *(v3 + 2) = v5 + 1;
  *&v3[16 * v5 + 32] = v7;
  sub_1DB50BEC0();
}

unint64_t sub_1DB3306D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1DB34130C(0, v1, 0);
    v3 = (a1 + 32);
    do
    {
      v4 = *v3;
      v5 = sub_1DB50BEE0();
      MEMORY[0x1E1285C70](v5);

      MEMORY[0x1E1285C70](62, 0xE100000000000000);
      v7 = *(v13 + 16);
      v6 = *(v13 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1DB34130C((v6 > 1), v7 + 1, 1);
      }

      *(v13 + 16) = v7 + 1;
      v8 = v13 + 16 * v7;
      *(v8 + 32) = 60;
      *(v8 + 40) = 0xE100000000000000;
      ++v3;
      --v1;
    }

    while (v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43100, &unk_1DB511B70);
  sub_1DB330B04();
  v9 = sub_1DB50A5E0();
  v11 = v10;

  sub_1DB50B320();

  MEMORY[0x1E1285C70](v9, v11);

  return 0xD000000000000026;
}

uint64_t sub_1DB330884(int64x2_t *a1)
{
  v13 = *a1;
  if (qword_1EE30E778 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v1 = *(v14 + 16);
  v2 = 32;
  do
  {
    if (!v1)
    {
    }

    v3 = vmovn_s64(vceqq_s64(*(v14 + v2), v13));
    v2 += 16;
    --v1;
  }

  while ((v3.i32[0] & v3.i32[1] & 1) == 0);

  sub_1DB50BEB0();
  v4 = v14;
  v5 = *(v14 + 16);
  if (v5)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1DB3412EC(0, v5, 0);
    v6 = v15;
    v7 = *(v15 + 16);
    v8 = 40;
    do
    {
      v9 = *(v4 + v8);
      v10 = *(v15 + 24);
      if (v7 >= v10 >> 1)
      {
        sub_1DB3412EC((v10 > 1), v7 + 1, 1);
      }

      *(v15 + 16) = v7 + 1;
      *(v15 + 8 * v7 + 32) = v9;
      v8 += 16;
      ++v7;
      --v5;
    }

    while (v5);
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
  }

  sub_1DB330A34();
  swift_allocError();
  *v12 = v6;
  return swift_willThrow();
}

unint64_t sub_1DB330A34()
{
  result = qword_1ECC430F0;
  if (!qword_1ECC430F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC430F0);
  }

  return result;
}

unint64_t sub_1DB330AB0()
{
  result = qword_1ECC430F8;
  if (!qword_1ECC430F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC430F8);
  }

  return result;
}

unint64_t sub_1DB330B04()
{
  result = qword_1EE30C840;
  if (!qword_1EE30C840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC43100, &unk_1DB511B70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30C840);
  }

  return result;
}

uint64_t JSONObject.stringEnum<A>(or:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = sub_1DB50B120();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v19 - v11;
  sub_1DB330D60(v4, v21);
  if (v22)
  {
    v13 = __swift_project_boxed_opaque_existential_1(v21, v22);
    sub_1DB300B14(v13, v20);
    if (swift_dynamicCast())
    {
      v14 = v19[1];
      v15 = v19[2];
      __swift_destroy_boxed_opaque_existential_0(v21);
      v21[0] = v14;
      v21[1] = v15;
      sub_1DB50A920();
      v16 = *(a2 - 8);
      if ((*(v16 + 48))(v12, 1, a2) != 1)
      {
        return (*(v16 + 32))(a3, v12, a2);
      }

      v17 = (*(v9 + 8))(v12, v8);
    }

    else
    {
      v17 = __swift_destroy_boxed_opaque_existential_0(v21);
    }
  }

  else
  {
    v17 = sub_1DB330DD0(v21);
  }

  return a1(v17);
}

uint64_t sub_1DB330D60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42E38, &qword_1DB50FB80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DB330DD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42E38, &qword_1DB50FB80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t JSONObject.stringEnumOrNil<A>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1DB330D60(v3, v11);
  if (v12)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v11, v12);
    sub_1DB300B14(v6, v10);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(v11);
      v11[0] = v8;
      v11[1] = v9;
      return sub_1DB50A920();
    }

    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
    sub_1DB330DD0(v11);
  }

  return (*(*(a1 - 8) + 56))(a2, 1, 1, a1);
}

uint64_t JSONObject.stringEnum<A>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v3 = sub_1DB50B120();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v17 - v6;
  v8 = JSONObject.string.getter();
  if (!v9)
  {
    v13 = a1 | 0x4000000000000000;
    sub_1DB315178();
    swift_allocError();
    v15 = MEMORY[0x1E69E7CC0];
    v11 = 0xE800000000000000;
    v10 = 0x65756C6156776172;
    goto LABEL_5;
  }

  v10 = v8;
  v11 = v9;
  v17[0] = v8;
  v17[1] = v9;

  sub_1DB50A920();
  v12 = *(a1 - 8);
  if ((*(v12 + 48))(v7, 1, a1) == 1)
  {
    (*(v4 + 8))(v7, v3);
    v13 = a1 | 0x8000000000000000;
    sub_1DB315178();
    swift_allocError();
    v15 = 0;
LABEL_5:
    *v14 = v10;
    v14[1] = v11;
    v14[2] = v13;
    v14[3] = v15;
    return swift_willThrow();
  }

  return (*(v12 + 32))(v18, v7, a1);
}

uint64_t sub_1DB33114C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_1DB50BCF0();
  sub_1DB50A740();
  v7 = sub_1DB50BD30();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1DB50BA30() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_1DB331244(int a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  sub_1DB50BCF0();
  sub_1DB50BD20();
  v5 = sub_1DB50BD30();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + 4 * v7);
    result = v9 == a1;
    if (v9 == a1)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t sub_1DB331310()
{
  v0 = sub_1DB50A440();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v18 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1DB50A410();
  v3 = *(v17 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1DB50AFA0();
  v7 = *(v16 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DB50AF80();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15[0] = sub_1DB336FD4(0, &qword_1EE30E320, 0x1E69E9610);
  v15[1] = "metricsNotificationsEnabled";
  v19 = MEMORY[0x1E69E7CC0];
  sub_1DB336D84(&qword_1EE30C810, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC44F80, &qword_1DB512400);
  sub_1DB3370CC(&qword_1EE30C838, &unk_1ECC44F80, &qword_1DB512400);
  sub_1DB50B240();
  (*(v7 + 104))(v10, *MEMORY[0x1E69E8098], v16);
  v13 = v17;
  (*(v3 + 104))(v6, *MEMORY[0x1E69E7FA0], v17);
  sub_1DB50AFE0();
  (*(v3 + 8))(v6, v13);
  _s7JetCore22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  result = sub_1DB50AFD0();
  qword_1ECC43108 = result;
  return result;
}

uint64_t sub_1DB331658()
{
  if (qword_1EE30D148 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE30D150;
  v0 = unk_1EE30D158;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42748, &qword_1DB50F1C0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1DB50F8D0;
  *(v2 + 32) = v1;
  *(v2 + 40) = v0;
  *(v2 + 48) = 0xD00000000000001BLL;
  *(v2 + 56) = 0x80000001DB52A0A0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43168, &qword_1DB513530);
  sub_1DB33701C();
  v3 = sub_1DB50A5E0();
  v5 = v4;

  qword_1ECC678B0 = v3;
  *algn_1ECC678B8 = v5;
  return result;
}

uint64_t sub_1DB331780()
{
  result = sub_1DB50A620();
  qword_1ECC678C0 = result;
  return result;
}

uint64_t sub_1DB3317B8()
{
  v0 = sub_1DB50AFA0();
  v28 = *(v0 - 8);
  v29 = v0;
  v1 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v27 = v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1DB50AF80();
  v3 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26);
  v25 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DB50A440();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v23 - v11;
  v13 = sub_1DB50A410();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MetricsPipeline.CallingOutActor();
  v18 = swift_allocObject();
  v23[2] = "BC15CallingOutActor";
  v24 = v18;
  sub_1DB336FD4(0, &qword_1EE30E320, 0x1E69E9610);
  (*(v14 + 104))(v17, *MEMORY[0x1E69E7FA0], v13);
  v23[1] = sub_1DB50AFE0();
  (*(v14 + 8))(v17, v13);
  _s7JetCore22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  type metadata accessor for _DispatchQueueExecutor();
  v19 = swift_allocObject();
  (*(v6 + 16))(v10, v12, v5);
  v30 = MEMORY[0x1E69E7CC0];
  sub_1DB336D84(&qword_1EE30C810, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC44F80, &qword_1DB512400);
  sub_1DB3370CC(&qword_1EE30C838, &unk_1ECC44F80, &qword_1DB512400);
  sub_1DB50B240();
  (*(v28 + 104))(v27, *MEMORY[0x1E69E8098], v29);
  v20 = sub_1DB50AFD0();
  result = (*(v6 + 8))(v12, v5);
  *(v19 + 16) = v20;
  v22 = v24;
  *(v24 + 16) = v19;
  qword_1ECC43110 = v22;
  return result;
}

uint64_t sub_1DB331BCC()
{
  v1 = *(v0 + 16);
  sub_1DB336D84(&qword_1EE30CDB0, type metadata accessor for _DispatchQueueExecutor);
  return v1;
}

uint64_t sub_1DB331C28()
{
  if (qword_1ECC41FE8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1DB331C84(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MetricsPipeline.CallingOutActor();

  return MEMORY[0x1EEE6DBF0](v3, a2);
}

uint64_t MetricsPipeline.FlushBehavior.hashValue.getter()
{
  v1 = *v0;
  sub_1DB50BCF0();
  MEMORY[0x1E12871F0](v1);
  return sub_1DB50BD30();
}

uint64_t MetricsPipeline.Configuration.init(bag:linter:anonymousTopics:recorder:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a1;
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0;
  *a5 = v9;
  sub_1DB30BE90(a2, a5 + 8);
  *(a5 + 48) = a3;
  *(a5 + 56) = [objc_opt_self() mainBundle];
  *(a5 + 64) = &type metadata for StandardMetricsFieldsBuilder;
  *(a5 + 72) = &protocol witness table for StandardMetricsFieldsBuilder;
  v10 = MEMORY[0x1E69E7CC0];
  v11 = sub_1DB313940(MEMORY[0x1E69E7CC0]);
  v12 = sub_1DB313964(v10);
  *(a5 + 80) = v11;
  *(a5 + 88) = v12;
  sub_1DB30BE90(a4, a5 + 136);
  v13 = [objc_opt_self() defaultCenter];
  __swift_destroy_boxed_opaque_existential_0(a4);
  result = __swift_destroy_boxed_opaque_existential_0(a2);
  *(a5 + 176) = v13;
  return result;
}

void MetricsPipeline.Configuration.withBundle(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DB33656C(v2, a2);

  objc_storeStrong((a2 + 56), a1);
}

uint64_t MetricsPipeline.Configuration.withBuilderType(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1DB33656C(v3, a3);
  *(a3 + 64) = a1;
  *(a3 + 72) = a2;
  return result;
}

uint64_t MetricsPipeline.Configuration.withAggregator(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  sub_1DB33656C(v2, a2);
  v6 = *(a2 + 80);
  v7 = *(a2 + 88);

  *(a2 + 80) = v4;
  *(a2 + 88) = v5;
  return result;
}

uint64_t MetricsPipeline.Configuration.withTreatmentFilter(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DB33656C(v2, a2);
  sub_1DB30623C(a2 + 96, &qword_1ECC43118, &qword_1DB510790);
  return sub_1DB30BE90(a1, a2 + 96);
}

uint64_t *MetricsPipeline.Configuration.withRecorder(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DB33656C(v2, a2);

  return __swift_assign_boxed_opaque_existential_1((a2 + 136), a1);
}

void MetricsPipeline.Configuration.withNotificationCenter(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DB33656C(v2, a2);

  objc_storeStrong((a2 + 176), a1);
}

uint64_t sub_1DB33203C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 104) = 0;
  *(a2 + 72) = 0u;
  v4 = a2 + 72;
  *(a2 + 88) = 0u;
  *a2 = *(a1 + 64);
  v5 = *(a1 + 56);
  *&v9 = *a1;
  swift_unknownObjectRetain();
  sub_1DB3F541C(&v9, v5, v8);
  v9 = *(a1 + 80);
  sub_1DB3F60D8(&v9);
  *(a2 + 16) = *v8;
  sub_1DB30BE90(a1 + 8, a2 + 32);
  *&v9 = *a1;
  swift_unknownObjectRetain();
  sub_1DB332144(a1 + 96, v8);
  swift_unknownObjectRelease();
  sub_1DB30C2D8(v8, v4, &qword_1ECC43118, &qword_1DB510790);
  sub_1DB30BE90(a1 + 136, a2 + 112);
  v6 = *(a1 + 176);
  result = sub_1DB3367C0(a1);
  *(a2 + 152) = v6;
  return result;
}

uint64_t sub_1DB332144@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v26 = MEMORY[0x1E69E7CC0];
  sub_1DB30C4B8(a1, &v20, &qword_1ECC43118, &qword_1DB510790);
  if (v21)
  {
    sub_1DB2FEA0C(&v20, &v22);
    v3 = v24;
    v4 = v25;
    v5 = __swift_project_boxed_opaque_existential_1(&v22, v24);
    sub_1DB35AEA8(v5, &v26, v3, v4);
    __swift_destroy_boxed_opaque_existential_0(&v22);
  }

  else
  {
    sub_1DB30623C(&v20, &qword_1ECC43118, &qword_1DB510790);
  }

  if (qword_1ECC41FC0 != -1)
  {
    swift_once();
  }

  v7 = qword_1ECC67890;
  v6 = *algn_1ECC67898;
  v8 = qword_1ECC678A0;
  v9 = v26;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_1DB302B68(0, v9[2] + 1, 1, v9);
    v26 = v9;
  }

  v11 = v9[2];
  v10 = v9[3];
  if (v11 >= v10 >> 1)
  {
    v9 = sub_1DB302B68((v10 > 1), v11 + 1, 1, v9);
    v26 = v9;
  }

  v24 = &type metadata for AllowedFieldsTreatmentFilter;
  v25 = &protocol witness table for AllowedFieldsTreatmentFilter;
  *&v22 = v7;
  *(&v22 + 1) = v6;
  v23 = v8;
  v9[2] = v11 + 1;
  sub_1DB2FEA0C(&v22, &v9[5 * v11 + 4]);
  if (qword_1ECC42060 != -1)
  {
    swift_once();
  }

  v13 = qword_1ECC67918;
  v12 = unk_1ECC67920;
  v14 = qword_1ECC67928;
  v26 = v9;
  v15 = v9[2];
  v16 = v9[3];
  v17 = v15 + 1;

  if (v15 >= v16 >> 1)
  {
    v9 = sub_1DB302B68((v16 > 1), v15 + 1, 1, v9);
    v26 = v9;
  }

  v24 = &type metadata for DeResolutionNumericTreatmentFilter;
  v25 = &protocol witness table for DeResolutionNumericTreatmentFilter;
  *&v22 = v13;
  *(&v22 + 1) = v12;
  v23 = v14;
  v9[2] = v17;
  sub_1DB2FEA0C(&v22, &v9[5 * v15 + 4]);
  v26 = v9;
  v18 = v9[3];
  if ((v15 + 2) > (v18 >> 1))
  {
    v9 = sub_1DB302B68((v18 > 1), v15 + 2, 1, v9);
    v26 = v9;
  }

  v24 = &type metadata for EventTimeTreatmentFilter;
  v25 = &off_1F56F3C70;
  v9[2] = v15 + 2;
  result = sub_1DB2FEA0C(&v22, &v9[5 * v17 + 4]);
  a2[3] = &type metadata for CompoundTreatmentFilter;
  a2[4] = &protocol witness table for CompoundTreatmentFilter;
  *a2 = v9;
  return result;
}

uint64_t sub_1DB332424(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = v4[8];
  __swift_project_boxed_opaque_existential_1(v4 + 4, v4[7]);
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  (*(v10 + 24))(v9, v10);
  v11 = (*(v8 + 8))();

  sub_1DB30C4B8((v4 + 9), &v18, &qword_1ECC43118, &qword_1DB510790);
  if (v20)
  {
    sub_1DB2FEA0C(&v18, v23);
    v22[3] = &type metadata for SyncTaskScheduler;
    v22[4] = &protocol witness table for SyncTaskScheduler;
    sub_1DB30BE90(v23, &v18);
    v12 = swift_allocObject();
    sub_1DB2FEA0C(&v18, v12 + 16);
    *(v12 + 56) = a2;
    *(v12 + 64) = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43120, &qword_1DB513AF0);
    v13 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    v15 = MEMORY[0x1E69E7CC0];
    *(v13 + 16) = v14;
    *(v13 + 24) = v15;
    *(v13 + 32) = 0;
    *(v13 + 40) = 0;
    v16 = swift_allocObject();
    v16[2] = sub_1DB337114;
    v16[3] = v12;
    v16[4] = v13;
    *&v18 = sub_1DB3371EC;
    *(&v18 + 1) = v16;
    v19 = sub_1DB3371F8;
    v20 = v13;
    sub_1DB30BE90(v22, v21);
    v21[40] = 0;

    swift_retain_n();
    sub_1DB308810(&v18);

    sub_1DB30623C(&v18, &qword_1ECC429C0, &qword_1DB518FD0);
    __swift_destroy_boxed_opaque_existential_0(v23);
    __swift_destroy_boxed_opaque_existential_0(v22);
    return v13;
  }

  else
  {
    sub_1DB30623C(&v18, &qword_1ECC43118, &qword_1DB510790);
  }

  return v11;
}

void sub_1DB3326C4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *a1;
  if (qword_1EE30E8D0 != -1)
  {
    swift_once();
  }

  if (qword_1ECC41FD8 != -1)
  {
    swift_once();
  }

  v8 = sub_1DB376278(qword_1ECC678B0, *algn_1ECC678B8);
  if (v8 != 2 && (v8 & 1) != 0 && *(v7 + 16))
  {
    v9 = *(v3 + 152);
    if (qword_1ECC41FE0 != -1)
    {
      swift_once();
    }

    v10 = qword_1ECC678C0;
    sub_1DB336894(v4, &v16);
    v11 = sub_1DB50BBF0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43160, &qword_1DB510A60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB50F8D0;
    *&v16 = 0xD000000000000039;
    *(&v16 + 1) = 0x80000001DB529FF0;
    v13 = MEMORY[0x1E69E6158];
    sub_1DB50B2B0();
    *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F88, &qword_1DB511080);
    *(inited + 72) = v7;
    *&v16 = 0xD000000000000038;
    *(&v16 + 1) = 0x80000001DB52A030;

    sub_1DB50B2B0();
    if (a3)
    {
      *(&v17 + 1) = v13;
      *&v16 = a2;
      *(&v16 + 1) = a3;
      sub_1DB30C200(&v16, (inited + 144));
    }

    else
    {
      v16 = 0u;
      v17 = 0u;
      v14 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
      *(inited + 168) = sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
      *(inited + 144) = v14;
      if (*(&v17 + 1))
      {
        sub_1DB30623C(&v16, &qword_1ECC426B0, &qword_1DB50EEB0);
      }
    }

    sub_1DB313804(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42DC0, &qword_1DB50FAA0);
    swift_arrayDestroy();
    v15 = sub_1DB50A490();

    [v9 postNotificationName:v10 object:v11 userInfo:v15];
    swift_unknownObjectRelease();
  }
}

uint64_t MetricsPipeline.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DB33656C(a1, v8);
  sub_1DB33203C(v8, a2);
  *(a2 + 160) = 1;
  *(a2 + 192) = 0;
  v4 = *a1;
  *(a2 + 168) = a1[6];
  *(a2 + 176) = v4;
  v5 = a1[22];

  swift_unknownObjectRetain();
  v6 = v5;
  result = sub_1DB3367C0(a1);
  *(a2 + 184) = v6;
  return result;
}

uint64_t MetricsPipeline.init(builderType:aggregator:linter:recorder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  sub_1DB30BE90(a4, v22);
  sub_1DB30BE90(a5, v21);
  sub_1DB30BE90(v22, v20);
  sub_1DB30BE90(v21, v19);
  *(a6 + 88) = 0u;
  *(a6 + 104) = 0;
  *(a6 + 72) = 0u;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = *a3;
  sub_1DB30BE90(v20, a6 + 32);
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  sub_1DB332144(v16, v18);
  sub_1DB30623C(v16, &qword_1ECC43118, &qword_1DB510790);
  sub_1DB30C2D8(v18, a6 + 72, &qword_1ECC43118, &qword_1DB510790);
  sub_1DB30BE90(v19, a6 + 112);
  v12 = objc_opt_self();
  v13 = [v12 defaultCenter];
  __swift_destroy_boxed_opaque_existential_0(v19);
  __swift_destroy_boxed_opaque_existential_0(v20);
  *(a6 + 152) = v13;
  *(a6 + 160) = 0;
  *(a6 + 192) = 0;
  *(a6 + 168) = MEMORY[0x1E69E7CD0];
  *(a6 + 176) = 0;
  v14 = [v12 defaultCenter];
  __swift_destroy_boxed_opaque_existential_0(a5);
  __swift_destroy_boxed_opaque_existential_0(a4);
  __swift_destroy_boxed_opaque_existential_0(v21);
  result = __swift_destroy_boxed_opaque_existential_0(v22);
  *(a6 + 184) = v14;
  return result;
}

uint64_t MetricsPipeline.init(builderType:aggregator:linter:recorder:bag:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *a6;
  sub_1DB30BE90(a4, v22);
  sub_1DB30BE90(a5, v21);
  *(a7 + 88) = 0u;
  *(a7 + 104) = 0;
  *(a7 + 72) = 0u;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = *a3;
  sub_1DB30BE90(v22, a7 + 32);
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  swift_unknownObjectRetain();
  sub_1DB332144(v18, v20);
  sub_1DB30623C(v18, &qword_1ECC43118, &qword_1DB510790);
  swift_unknownObjectRelease();
  sub_1DB30C2D8(v20, a7 + 72, &qword_1ECC43118, &qword_1DB510790);
  sub_1DB30BE90(v21, a7 + 112);
  v14 = objc_opt_self();
  v15 = [v14 defaultCenter];
  __swift_destroy_boxed_opaque_existential_0(v21);
  __swift_destroy_boxed_opaque_existential_0(v22);
  *(a7 + 152) = v15;
  *(a7 + 160) = 0;
  *(a7 + 192) = 0;
  *(a7 + 168) = MEMORY[0x1E69E7CD0];
  *(a7 + 176) = v13;
  v16 = [v14 defaultCenter];
  __swift_destroy_boxed_opaque_existential_0(a5);
  result = __swift_destroy_boxed_opaque_existential_0(a4);
  *(a7 + 184) = v16;
  return result;
}

uint64_t MetricsPipeline.withFlushBehavior(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  result = sub_1DB3367F0(v2, a2);
  *(a2 + 192) = v4;
  return result;
}

uint64_t static MetricsPipeline.unstable_scheduleBarrier(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DB50A400();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1DB50A440();
  v9 = *(v16 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECC41FD0 != -1)
  {
    swift_once();
  }

  v15[1] = qword_1ECC43108;
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DB3330B0;
  aBlock[3] = &block_descriptor;
  v13 = _Block_copy(aBlock);

  _s7JetCore22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  v17 = MEMORY[0x1E69E7CC0];
  sub_1DB336D84(qword_1EE30E380, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC45390, &qword_1DB511EF0);
  sub_1DB3370CC(&qword_1EE30E350, &unk_1ECC45390, &qword_1DB511EF0);
  sub_1DB50B240();
  MEMORY[0x1E12864B0](0, v12, v8, v13);
  _Block_release(v13);
  (*(v5 + 8))(v8, v4);
  (*(v9 + 8))(v12, v16);
}

uint64_t sub_1DB3330B0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t MetricsPipeline.process(_:using:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v6 = sub_1DB50A410();
  v65 = *(v6 - 8);
  v66 = v6;
  v7 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v64 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DB50A400();
  v62 = *(v9 - 8);
  v63 = v9;
  v10 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v61 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DB50A440();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v18 = *a1;
  v17 = *(a1 + 8);
  v19 = *(a1 + 16);
  v21 = *(a1 + 24);
  v20 = *(a1 + 32);
  v22 = *(a1 + 40);
  v23 = *a2;
  if (*(v3 + 160) != 1 || v17)
  {
    v58 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    v59 = v16;
    v60 = v14;
    if (v17 && (sub_1DB33114C(v18, v17, *(v3 + 168)) & 1) != 0)
    {
      *&v73 = v18;
      *(&v73 + 1) = v17;
      LOBYTE(v74) = v19;
      *(&v74 + 1) = v21;
      *&v75[0] = v20;
      *(&v75[0] + 1) = v22;

      sub_1DB335D7C(1682535268, 0xE400000000000000, &v86);
    }

    else
    {
      *&v73 = v18;
      *(&v73 + 1) = v17;
      LOBYTE(v74) = v19;
      *(&v74 + 1) = v21;
      *&v75[0] = v20;
      *(&v75[0] + 1) = v22;
    }

    v86 = v73;
    v87 = v74;
    v88 = v75[0];
    v29 = *(v3 + 8);
    v30 = *(v29 + 8);
    v84 = *v3;
    v28 = v84;
    v85 = v29;
    __swift_allocate_boxed_opaque_existential_0(v83);

    v30(v31, v28, v29);
    if (*(&v86 + 1))
    {
      *(&v74 + 1) = MEMORY[0x1E69E6158];
      v73 = v86;
      sub_1DB30C200(&v73, &v68);
      swift_bridgeObjectRetain_n();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v82[0] = v23;
      sub_1DB31D16C(&v68, 0xD000000000000019, 0x80000001DB5297E0, isUniquelyReferenced_nonNull_native);

      v23 = *&v82[0];
    }

    else
    {
    }

    v34 = *(&v88 + 1);
    v33 = v88;
    v35 = *(v3 + 24);
    *&v73 = *(v3 + 16);
    *(&v73 + 1) = v35;
    *&v68 = v23;

    sub_1DB3F3178(v33, v34, v83, &v68);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43120, &qword_1DB513AF0);
    v26 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
    v36 = swift_allocObject();
    *(v36 + 16) = 0;
    v37 = MEMORY[0x1E69E7CC0];
    *(v26 + 16) = v36;
    *(v26 + 24) = v37;
    *(v26 + 32) = 0;
    *(v26 + 40) = 0;
    sub_1DB36C280();
    if (qword_1ECC41FD0 != -1)
    {
      swift_once();
    }

    v57 = qword_1ECC43108;
    v38 = *(v3 + 192);
    sub_1DB30BE90(v83, v82);
    sub_1DB336894(v3, &v73);
    v39 = swift_allocObject();
    sub_1DB2FEA0C(v82, v39 + 16);
    v40 = v77;
    *(v39 + 152) = v78;
    v41 = v80;
    *(v39 + 168) = v79;
    *(v39 + 184) = v41;
    *(v39 + 200) = v81;
    v42 = v75[1];
    *(v39 + 88) = v75[0];
    *(v39 + 104) = v42;
    *(v39 + 120) = v76;
    *(v39 + 136) = v40;
    v43 = v74;
    *(v39 + 56) = v73;
    *(v39 + 72) = v43;
    v44 = v87;
    *(v39 + 216) = v86;
    *(v39 + 232) = v44;
    *(v39 + 248) = v88;
    *(v39 + 264) = v23;
    *(v39 + 272) = v38;
    *(v39 + 280) = v26;
    v71 = sub_1DB3368CC;
    v72 = v39;
    *&v68 = MEMORY[0x1E69E9820];
    *(&v68 + 1) = 1107296256;
    v69 = sub_1DB3330B0;
    v70 = &block_descriptor_3;
    v45 = _Block_copy(&v68);

    v46 = v58;
    _s7JetCore22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
    v67 = v37;
    sub_1DB336D84(qword_1EE30E380, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC45390, &qword_1DB511EF0);
    sub_1DB3370CC(&qword_1EE30E350, &unk_1ECC45390, &qword_1DB511EF0);
    v47 = v61;
    v48 = v63;
    sub_1DB50B240();
    MEMORY[0x1E12864B0](0, v46, v47, v45);
    _Block_release(v45);
    (*(v62 + 8))(v47, v48);
    (*(v59 + 8))(v46, v60);

    v49 = sub_1DB336FD4(0, &qword_1EE30E320, 0x1E69E9610);
    v51 = v64;
    v50 = v65;
    v52 = v66;
    (*(v65 + 104))(v64, *MEMORY[0x1E69E7FA0], v66);
    v53 = sub_1DB50AFE0();
    (*(v50 + 8))(v51, v52);
    v70 = v49;
    v71 = &protocol witness table for OS_dispatch_queue;
    *&v68 = v53;
    v54 = swift_allocObject();
    v54[2] = sub_1DB33546C;
    v54[3] = 0;
    v54[4] = v26;
    v55 = swift_allocObject();
    v55[2] = sub_1DB33546C;
    v55[3] = 0;
    v55[4] = v26;
    *&v73 = sub_1DB3368E8;
    *(&v73 + 1) = v54;
    *&v74 = sub_1DB3368E8;
    *(&v74 + 1) = v55;
    sub_1DB30BE90(&v68, v75);
    BYTE8(v76) = 0;
    swift_retain_n();

    sub_1DB308810(&v73);

    sub_1DB30623C(&v73, &qword_1ECC429C0, &qword_1DB518FD0);
    __swift_destroy_boxed_opaque_existential_0(v83);
    __swift_destroy_boxed_opaque_existential_0(&v68);
  }

  else
  {
    sub_1DB336918();
    v24 = swift_allocError();
    *v25 = 0;
    *(v25 + 8) = 0;
    *(v25 + 16) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43120, &qword_1DB513AF0);
    v26 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    *(v26 + 16) = v27;
    *(v26 + 24) = v24;
    *(v26 + 32) = 0;
    *(v26 + 40) = 2;
  }

  return v26;
}

uint64_t sub_1DB3339F0(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, char a5, uint64_t *a6)
{
  v12 = *a6;
  v38 = sub_1DB50A410();
  v13 = *(v38 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v37 - v19;
  if (qword_1ECC41FD0 != -1)
  {
    swift_once();
  }

  dispatch_suspend(qword_1ECC43108);
  sub_1DB30BE90(a1, &v48);
  sub_1DB336894(a2, &v39);
  v21 = swift_allocObject();
  sub_1DB2FEA0C(&v48, v21 + 16);
  v22 = v45;
  *(v21 + 152) = v44;
  *(v21 + 168) = v22;
  v23 = v47;
  *(v21 + 184) = v46;
  *(v21 + 200) = v23;
  v24 = v41[1];
  *(v21 + 88) = v41[0];
  *(v21 + 104) = v24;
  v25 = v43;
  *(v21 + 120) = v42;
  *(v21 + 136) = v25;
  v26 = v40;
  *(v21 + 56) = v39;
  *(v21 + 72) = v26;
  v27 = a3[1];
  *(v21 + 216) = *a3;
  *(v21 + 232) = v27;
  *(v21 + 248) = a3[2];
  *(v21 + 264) = a4;
  *(v21 + 272) = a5 & 1;
  v28 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  v30 = MEMORY[0x1E69E7CC0];
  *(v28 + 16) = v29;
  *(v28 + 24) = v30;
  *(v28 + 32) = 0;
  *(v28 + 40) = 0;
  v31 = sub_1DB50ABA0();
  (*(*(v31 - 8) + 56))(v20, 1, 1, v31);
  v32 = swift_allocObject();
  v32[2] = 0;
  v32[3] = 0;
  v32[4] = &unk_1DB510A50;
  v32[5] = v21;
  v32[6] = v28;
  sub_1DB336F64(a3, &v39);

  sub_1DB419B9C(0, 0, v20, &unk_1DB510A58, v32);

  v33 = sub_1DB336FD4(0, &qword_1EE30E320, 0x1E69E9610);
  v34 = v38;
  (*(v13 + 104))(v16, *MEMORY[0x1E69E7FA0], v38);
  swift_retain_n();
  v35 = sub_1DB50AFE0();
  (*(v13 + 8))(v16, v34);
  v49 = v33;
  v50 = &protocol witness table for OS_dispatch_queue;
  *&v48 = v35;
  *&v39 = sub_1DB336FC0;
  *(&v39 + 1) = a6;
  *&v40 = sub_1DB336FCC;
  *(&v40 + 1) = a6;
  sub_1DB30BE90(&v48, v41);
  BYTE8(v42) = 0;
  swift_retain_n();
  sub_1DB308810(&v39);

  sub_1DB30623C(&v39, &qword_1ECC429C0, &qword_1DB518FD0);
  return __swift_destroy_boxed_opaque_existential_0(&v48);
}

uint64_t sub_1DB333E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 281) = a6;
  *(v6 + 808) = a5;
  *(v6 + 800) = a4;
  *(v6 + 792) = a3;
  *(v6 + 784) = a2;
  *(v6 + 776) = a1;
  if (qword_1ECC41FE8 != -1)
  {
    swift_once();
  }

  type metadata accessor for MetricsPipeline.CallingOutActor();
  sub_1DB336D84(&qword_1ECC43138, type metadata accessor for MetricsPipeline.CallingOutActor);
  v8 = sub_1DB50AAD0();
  *(v6 + 816) = v8;
  *(v6 + 824) = v7;

  return MEMORY[0x1EEE6DFA0](sub_1DB333F70, v8, v7);
}

uint64_t sub_1DB333F70()
{
  v1 = v0[100];
  sub_1DB30BE90(v0[98], (v0 + 56));
  v0[104] = *(v1 + 32);
  v0[105] = *(v1 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1DB333FF0, 0, 0);
}

uint64_t sub_1DB333FF0()
{
  v1 = v0[101];
  v2 = v0[99];
  v3 = *(v2 + 24);
  v0[90] = *(v2 + 16);
  v0[91] = v3;
  v0[94] = v1;

  v4 = swift_task_alloc();
  v0[106] = v4;
  *v4 = v0;
  v4[1] = sub_1DB3340BC;
  v5 = v0[105];
  v6 = v0[104];

  return sub_1DB3F3988(v6, v5, (v0 + 56), v0 + 94);
}

uint64_t sub_1DB3340BC()
{
  v2 = *v1;
  v3 = *(*v1 + 848);
  v11 = *v1;
  *(*v1 + 856) = v0;

  v4 = v2[90];
  if (v0)
  {
    v5 = v2[91];

    v6 = sub_1DB334490;
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v9 = v2[91];

    v8 = v2[103];
    v7 = v2[102];
    v6 = sub_1DB334204;
  }

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DB334204()
{
  v1 = v0[100];
  v2 = v0[99];
  v3 = *v1;
  v0[108] = *v1;
  v4 = v1[1];
  v0[109] = v4;
  v0[110] = sub_1DB332424(v0 + 56, v3, v4);

  return MEMORY[0x1EEE6DFA0](sub_1DB334288, 0, 0);
}

uint64_t sub_1DB334288()
{
  v1 = v0 + 2;
  v2 = v0[110];
  v0[2] = v0;
  v0[7] = v0 + 92;
  v0[3] = sub_1DB334354;
  v0[26] = swift_continuation_init();
  v3 = (v0 + 26);
  *(v3 + 72) = 1;
  sub_1DB308810(v3);
  sub_1DB30623C(v3, &qword_1ECC429C0, &qword_1DB518FD0);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1DB334354()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 888) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = sub_1DB334800;
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v7 = *(v1 + 880);

    *(v1 + 896) = *(v1 + 736);
    v6 = *(v1 + 824);
    v5 = *(v1 + 816);
    v4 = sub_1DB334510;
  }

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DB3344AC()
{
  v1 = v0[107];
  __swift_destroy_boxed_opaque_existential_0(v0 + 56);
  v2 = v0[1];

  return v2();
}

uint64_t sub_1DB334510()
{
  v11 = v0;
  v1 = v0[113];
  v3 = v0[109];
  v4 = v0[108];
  v5 = v0[99];
  v9 = v0[112];
  v2 = v9;
  v10 = v1;
  sub_1DB3326C4(&v9, v4, v3);
  v6 = v5[17];
  v7 = v5[18];
  __swift_project_boxed_opaque_existential_1(v5 + 14, v6);
  v9 = v2;
  v10 = v1;
  v0[114] = (*(v7 + 16))(&v9, v4, v3, v6, v7);

  return MEMORY[0x1EEE6DFA0](sub_1DB3345F4, 0, 0);
}

uint64_t sub_1DB3345F4()
{
  v1 = *(v0 + 912);
  *(v0 + 80) = v0;
  *(v0 + 88) = sub_1DB3346B8;
  *(v0 + 288) = swift_continuation_init();
  *(v0 + 360) = 1;
  sub_1DB308B80(v0 + 288);
  sub_1DB30623C(v0 + 288, &qword_1ECC429E0, &qword_1DB50F498);

  return MEMORY[0x1EEE6DEC8](v0 + 80);
}

uint64_t sub_1DB3346B8()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 920) = v3;
  if (v3)
  {
    v4 = v1[113];
    v5 = v1[112];

    swift_willThrow();
    v6 = sub_1DB3349CC;
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v9 = v1[114];

    v8 = v1[103];
    v7 = v1[102];
    v6 = sub_1DB3348CC;
  }

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DB334800()
{
  v1 = v0[110];

  v2 = v0[103];
  v3 = v0[102];

  return MEMORY[0x1EEE6DFA0](sub_1DB334868, v3, v2);
}

uint64_t sub_1DB334868()
{
  v1 = v0[111];
  __swift_destroy_boxed_opaque_existential_0(v0 + 56);
  v2 = v0[1];

  return v2();
}

uint64_t sub_1DB3348CC()
{
  if (*(*(v0 + 800) + 16) & 1) == 0 || (*(v0 + 281))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 448));
    **(v0 + 776) = *(v0 + 896);
    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v1 = *(v0 + 792);
    v2 = v1[17];
    v3 = v1[18];
    __swift_project_boxed_opaque_existential_1(v1 + 14, v2);
    *(v0 + 928) = (*(v3 + 24))(v2, v3);

    return MEMORY[0x1EEE6DFA0](sub_1DB334A98, 0, 0);
  }
}

uint64_t sub_1DB3349CC()
{
  v1 = v0[114];

  v2 = v0[103];
  v3 = v0[102];

  return MEMORY[0x1EEE6DFA0](sub_1DB334A34, v3, v2);
}

uint64_t sub_1DB334A34()
{
  v1 = v0[115];
  __swift_destroy_boxed_opaque_existential_0(v0 + 56);
  v2 = v0[1];

  return v2();
}

uint64_t sub_1DB334A98()
{
  v1 = *(v0 + 928);
  *(v0 + 144) = v0;
  *(v0 + 184) = v0 + 760;
  *(v0 + 152) = sub_1DB334B64;
  *(v0 + 368) = swift_continuation_init();
  *(v0 + 440) = 1;
  sub_1DB3089DC(v0 + 368);
  sub_1DB30623C(v0 + 368, &qword_1ECC429D0, &unk_1DB50F740);

  return MEMORY[0x1EEE6DEC8](v0 + 144);
}

uint64_t sub_1DB334B64()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 176);
  *(*v0 + 936) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = sub_1DB334EFC;
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v7 = v1[116];

    v1[118] = v1[95];
    v6 = v1[103];
    v5 = v1[102];
    v4 = sub_1DB334CA0;
  }

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DB334CA0()
{
  v15 = v0;
  if (qword_1ECC42228 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 944);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1DB50EE90;
  v13 = sub_1DB301BC0(0, 28, 0, MEMORY[0x1E69E7CC0]);
  v3._countAndFlagsBits = 0x2064656873756C66;
  v3._object = 0xE800000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v3);
  *(v0 + 656) = MEMORY[0x1E69E6530];
  *(v0 + 632) = v1;
  sub_1DB30C4B8(v0 + 632, v0 + 664, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 528) = 0u;
  *(v0 + 544) = 0u;
  sub_1DB30C2D8(v0 + 664, v0 + 528, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 560) = 0;
  v4 = v13;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1DB301BC0(0, *(v13 + 2) + 1, 1, v13);
  }

  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  if (v6 >= v5 >> 1)
  {
    v4 = sub_1DB301BC0((v5 > 1), v6 + 1, 1, v4);
  }

  *(v4 + 2) = v6 + 1;
  v7 = &v4[40 * v6];
  v8 = *(v0 + 528);
  v9 = *(v0 + 544);
  v7[64] = *(v0 + 560);
  *(v7 + 2) = v8;
  *(v7 + 3) = v9;
  sub_1DB30623C(v0 + 632, &qword_1ECC426B0, &qword_1DB50EEB0);
  v10._object = 0x80000001DB529FD0;
  v10._countAndFlagsBits = 0xD000000000000013;
  LogMessage.StringInterpolation.appendLiteral(_:)(v10);
  *(v2 + 32) = v4;
  v14 = 3;
  OSLogger.log(contentsOf:withLevel:)(v2, &v14);

  __swift_destroy_boxed_opaque_existential_0((v0 + 448));
  **(v0 + 776) = *(v0 + 896);
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1DB334EFC()
{
  v1 = v0[116];

  v2 = v0[103];
  v3 = v0[102];

  return MEMORY[0x1EEE6DFA0](sub_1DB334F64, v3, v2);
}

uint64_t sub_1DB334F64()
{
  v20 = v0;
  v1 = (v0 + 488);
  if (qword_1ECC42228 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 936);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1DB50EE90;
  v18 = sub_1DB301BC0(0, 44, 0, MEMORY[0x1E69E7CC0]);
  v4._object = 0x80000001DB529FA0;
  v4._countAndFlagsBits = 0xD00000000000002BLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v4);
  swift_getErrorValue();
  v5 = *(v0 + 696);
  v6 = *(v0 + 704);
  *(v0 + 592) = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 568));
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_0, v5, v6);
  sub_1DB30C4B8(v0 + 568, v0 + 600, &qword_1ECC426B0, &qword_1DB50EEB0);
  *v1 = 0u;
  *(v0 + 504) = 0u;
  sub_1DB30C2D8(v0 + 600, v0 + 488, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 520) = 0;
  v8 = v18;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1DB301BC0(0, *(v18 + 2) + 1, 1, v18);
  }

  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1DB301BC0((v9 > 1), v10 + 1, 1, v8);
  }

  v11 = *(v0 + 936);
  *(v8 + 2) = v10 + 1;
  v12 = &v8[40 * v10];
  v13 = *v1;
  v14 = *(v0 + 504);
  v12[64] = *(v0 + 520);
  *(v12 + 2) = v13;
  *(v12 + 3) = v14;
  sub_1DB30623C(v0 + 568, &qword_1ECC426B0, &qword_1DB50EEB0);
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v15);
  *(v3 + 32) = v8;
  v19 = 0;
  OSLogger.log(contentsOf:withLevel:)(v3, &v19);

  __swift_destroy_boxed_opaque_existential_0((v0 + 448));
  **(v0 + 776) = *(v0 + 896);
  v16 = *(v0 + 8);

  return v16();
}

void sub_1DB335210(void *a1)
{
  if (qword_1ECC42228 != -1)
  {
    swift_once();
  }

  v2 = qword_1ECC466F0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1DB50EE90;
  v20 = sub_1DB301BC0(0, 44, 0, MEMORY[0x1E69E7CC0]);
  v4._object = 0x80000001DB529F70;
  v4._countAndFlagsBits = 0xD00000000000002BLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v4);
  swift_getErrorValue();
  v19[3] = v18;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v19);
  (*(*(v18 - 8) + 16))(boxed_opaque_existential_0, v17, v18);
  sub_1DB30C4B8(v19, v13, &qword_1ECC426B0, &qword_1DB50EEB0);
  v14 = 0u;
  v15 = 0u;
  sub_1DB30C2D8(v13, &v14, &qword_1ECC426B0, &qword_1DB50EEB0);
  v16 = 0;
  v6 = v20;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_1DB301BC0(0, *(v6 + 2) + 1, 1, v6);
    v20 = v6;
  }

  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  if (v8 >= v7 >> 1)
  {
    v6 = sub_1DB301BC0((v7 > 1), v8 + 1, 1, v6);
  }

  *(v6 + 2) = v8 + 1;
  v9 = &v6[40 * v8];
  v10 = v14;
  v11 = v15;
  v9[64] = v16;
  *(v9 + 2) = v10;
  *(v9 + 3) = v11;
  v20 = v6;
  sub_1DB30623C(v19, &qword_1ECC426B0, &qword_1DB50EEB0);
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v12);
  *(v3 + 32) = v20;
  *&v14 = v2;
  LOBYTE(v19[0]) = 0;
  OSLogger.log(contentsOf:withLevel:)(v3, v19);

  sub_1DB3DCE84(a1);
}

void sub_1DB33546C()
{
  if (qword_1ECC41FD0 != -1)
  {
    swift_once();
  }

  dispatch_resume(qword_1ECC43108);

  sub_1DB36CB68();
}

id MetricsPipeline.wrappedPipeline.getter()
{
  sub_1DB3367F0(v0, v6);
  v1 = type metadata accessor for WrappedMetricsPipeline();
  v2 = objc_allocWithZone(v1);
  sub_1DB3367F0(v6, v2 + OBJC_IVAR___JEWrappedMetricsPipeline_pipeline);
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_1DB33696C(v6);
  return v3;
}

uint64_t MetricsPipeline.process(_:using:)(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  *(v4 + 176) = a1;
  *(v4 + 184) = v3;
  v5 = *a2;
  *(v4 + 153) = *(a2 + 16);
  v6 = *(a2 + 24);
  *(v4 + 192) = v5;
  *(v4 + 208) = v6;
  v7 = *a3;
  *(v4 + 224) = *(a2 + 5);
  *(v4 + 232) = v7;
  return MEMORY[0x1EEE6DFA0](sub_1DB335594, 0, 0);
}

uint64_t sub_1DB335594()
{
  v12 = v0;
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 153);
  v4 = *(v0 + 184);
  v5 = *(v0 + 208);
  v7 = *(v0 + 192);
  v8 = v3;
  v9 = v5;
  v10 = v2;
  v11 = v1;
  *(v0 + 240) = MetricsPipeline.process(_:using:)(&v7, &v11);

  return MEMORY[0x1EEE6DFA0](sub_1DB335628, 0, 0);
}

uint64_t sub_1DB335628()
{
  v1 = v0 + 2;
  v2 = v0[30];
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_1DB3356F4;
  v0[10] = swift_continuation_init();
  v3 = (v0 + 10);
  *(v3 + 72) = 1;
  sub_1DB308810(v3);
  sub_1DB30623C(v3, &qword_1ECC429C0, &qword_1DB518FD0);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1DB3356F4()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 248) = v3;
  if (v3)
  {
    swift_willThrow();

    return MEMORY[0x1EEE6DFA0](sub_1DB335850, 0, 0);
  }

  else
  {
    v4 = *(v1 + 240);
    v5 = *(v1 + 176);

    *v5 = *(v1 + 160);
    v6 = *(v2 + 8);

    return v6();
  }
}

uint64_t sub_1DB335850()
{
  v1 = v0[30];

  v2 = v0[1];
  v3 = v0[31];

  return v2();
}

uint64_t MetricsPipeline.builderType.getter()
{
  result = *v0;
  v2 = v0[1];
  return result;
}

uint64_t MetricsPipeline.aggregator.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

void *sub_1DB335994(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1DB50B2D0();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = 16 * (v16 | (v10 << 6));
        v20 = (*(v4 + 48) + v19);
        v21 = v20[1];
        v22 = (*(v6 + 48) + v19);
        *v22 = *v20;
        v22[1] = v21;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_1DB335AE0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43140, &unk_1DB521640);
  v2 = *v0;
  v3 = sub_1DB50B2D0();
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

void *sub_1DB335C3C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43150, &unk_1DB521650);
  v2 = *v0;
  v3 = sub_1DB50B2D0();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
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

unint64_t sub_1DB335D7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1DB50BCF0();
  sub_1DB50A740();
  result = sub_1DB50BD30();
  v10 = -1 << *(v7 + 32);
  v11 = result & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      if (*v13 == a1 && v13[1] == a2)
      {
        break;
      }

      result = sub_1DB50BA30();
      if (result)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    v21 = *v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1DB335994(&qword_1ECC43158, &qword_1DB510A40);
      v17 = v21;
    }

    v18 = (*(v17 + 48) + 16 * v11);
    v20 = *v18;
    v19 = v18[1];
    *a3 = v20;
    a3[1] = v19;
    result = sub_1DB336130(v11);
    *v3 = v21;
  }

  else
  {
LABEL_9:
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

uint64_t sub_1DB335EC4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1DB50BCF0();
  sub_1DB50A740();
  v7 = sub_1DB50BD30();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1DB50BA30() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1DB335AE0();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_1DB336130(v9);
  *v2 = v20;
  return v13;
}

unint64_t sub_1DB336000@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1DB50BCF0();
  if (a1)
  {
    MEMORY[0x1E12871F0](0);
    v7 = a1;
  }

  else
  {
    v7 = 1;
  }

  MEMORY[0x1E12871F0](v7);
  result = sub_1DB50BD30();
  v9 = -1 << *(v5 + 32);
  v10 = result & ~v9;
  if (((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_13:
    *a2 = 1;
    return result;
  }

  v11 = ~v9;
  while (1)
  {
    v12 = *(*(v5 + 48) + 8 * v10);
    if (v12)
    {
      break;
    }

    if (!a1)
    {
      goto LABEL_10;
    }

LABEL_7:
    v10 = (v10 + 1) & v11;
    if (((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  if (v12 != a1)
  {
    goto LABEL_7;
  }

LABEL_10:
  v13 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1DB335C3C();
    v15 = v16;
  }

  *a2 = *(*(v15 + 48) + 8 * v10);
  result = sub_1DB3362F4(v10);
  *v2 = v16;
  return result;
}

unint64_t sub_1DB336130(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1DB50B260();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_1DB50BCF0();

        sub_1DB50A740();
        v15 = sub_1DB50BD30();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1DB3362F4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1DB50B260();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        sub_1DB50BCF0();
        if (v12)
        {
          MEMORY[0x1E12871F0](0);
        }

        else
        {
          v12 = 1;
        }

        MEMORY[0x1E12871F0](v12);
        v13 = sub_1DB50BD30() & v7;
        if (v2 >= v10)
        {
          if (v13 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v13 >= v10)
        {
          goto LABEL_14;
        }

        if (v2 >= v13)
        {
LABEL_14:
          v14 = *(v3 + 48);
          v15 = (v14 + 8 * v2);
          v16 = (v14 + 8 * v6);
          if (v2 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1DB3364B4(__int128 *a1, void (*a2)(uint64_t *__return_ptr, __int128 *))
{
  v4 = *a1;
  a2(v3, &v4);
  sub_1DB3F85C8(v3[0], v3[1]);
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v14 = *result;
        v15 = *a2;
        v16 = result;

        *v16 = v15;
      }

      else
      {
        v11 = *(v10 + 24);
        v12 = result[3];

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        v13 = *result;
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v17);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v17, v2);
      }
    }
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1DB336918()
{
  result = qword_1ECC43128;
  if (!qword_1ECC43128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC43128);
  }

  return result;
}

unint64_t sub_1DB3369A0()
{
  result = qword_1ECC43130;
  if (!qword_1ECC43130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC43130);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7JetCore15TreatmentFilter_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy193_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_1DB336A50(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 193))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DB336A98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 192) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 193) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 193) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy184_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_1DB336B8C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DB336BD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 184) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_1DB336C7C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DB336CC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DB336D84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DB336DCC(uint64_t a1)
{
  v4 = *(v1 + 264);
  v5 = *(v1 + 272);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DB306AF4;

  return sub_1DB333E68(a1, v1 + 16, v1 + 56, v1 + 216, v4, v5);
}

uint64_t sub_1DB336E88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DB306AF4;

  return sub_1DB418ED0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1DB336FD4(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_1DB33701C()
{
  result = qword_1EE30C780;
  if (!qword_1EE30C780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC43168, &qword_1DB513530);
    sub_1DB3370CC(&qword_1EE30C840, &qword_1ECC43100, &unk_1DB511B70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30C780);
  }

  return result;
}

uint64_t sub_1DB3370CC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DB337114(__int128 *a1)
{
  v3 = v1[7];
  v4 = v1[8];
  v5 = v1[5];
  v6 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v5);
  v8 = *a1;
  return (*(v6 + 8))(&v8, v3, v4, v5, v6);
}

uint64_t objectdestroy_5Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DB3371EC(__int128 *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_1DB3364B4(a1, *(v1 + 16));
}

uint64_t Continuous.AsyncIterator.next()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DB337228, 0, 0);
}

uint64_t sub_1DB337228()
{
  v1 = v0[3];
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 8);
  v5 = *(MEMORY[0x1E69E85A8] + 4);
  v6 = swift_task_alloc();
  v0[4] = v6;
  *v6 = v0;
  v6[1] = sub_1DB3372E8;
  v7 = v0[2];

  return MEMORY[0x1EEE6D8C8](v7, v2, v4);
}

uint64_t sub_1DB3372E8()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t Continuous.AsyncIterator.next(isolation:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  if (a2)
  {
    swift_getObjectType();
    v5 = sub_1DB50AAD0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v4[6] = v5;
  v4[7] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1DB337474, v5, v7);
}

uint64_t sub_1DB337474()
{
  v1 = v0[5];
  v2 = *(v1 + 24);
  v0[8] = v2;
  v3 = *(v1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 8);
  v0[9] = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[10] = AssociatedTypeWitness;
  v6 = *(AssociatedTypeWitness - 8);
  v0[11] = v6;
  v0[12] = *(v6 + 64);
  v7 = swift_task_alloc();
  v0[13] = v7;
  v8 = *(MEMORY[0x1E69E85B0] + 4);
  v9 = swift_task_alloc();
  v0[14] = v9;
  *v9 = v0;
  v9[1] = sub_1DB3375C8;
  v10 = v0[3];
  v11 = v0[4];
  v12 = v0[2];

  return MEMORY[0x1EEE6D8D0](v12, v10, v11, v7, v2, v4);
}

uint64_t sub_1DB3375C8()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;

  if (v0)
  {
    v5 = v2[6];
    v6 = v2[7];

    return MEMORY[0x1EEE6DFA0](sub_1DB3376FC, v5, v6);
  }

  else
  {
    v7 = v2[13];

    v8 = *(v4 + 8);

    return v8();
  }
}

uint64_t sub_1DB3376FC()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[12] + 15;
  v7 = swift_task_alloc();
  v8 = *(v3 + 32);
  v8(v7, v1, v2);
  swift_getAssociatedConformanceWitness();
  if (sub_1DB50B9F0())
  {
    (*(v0[11] + 8))(v7, v0[10]);
  }

  else
  {
    v9 = v0[10];
    swift_allocError();
    v8(v10, v7, v9);
  }

  v11 = v0[13];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1DB337844(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DB306AF4;

  return Continuous.AsyncIterator.next()(a1);
}

uint64_t sub_1DB3378DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1DB337990;

  return Continuous.AsyncIterator.next(isolation:)(a1, a2, a3);
}

uint64_t sub_1DB337990()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v4 = *v1;

  if (v0)
  {
    **(v2 + 16) = v0;
  }

  v5 = *(v4 + 8);

  return v5();
}

uint64_t Continuous.init<A>(contentsOf:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  a3[3] = type metadata accessor for _BoxedAsyncSequence();
  a3[4] = swift_getWitnessTable();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
  v7 = *(*(a2 - 8) + 32);

  return v7(boxed_opaque_existential_0, a1, a2);
}

uint64_t Continuous.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for _AsyncJust();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - v9;
  _AsyncJust.init(_:)(a1, a2, &v13 - v9);
  swift_getWitnessTable();
  a3[3] = type metadata accessor for _BoxedAsyncSequence();
  a3[4] = swift_getWitnessTable();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
  return (*(v7 + 32))(boxed_opaque_existential_0, v10, v6);
}

uint64_t Continuous.init(_:makeElement:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC42A00, &unk_1DB5102D0);
  v8 = sub_1DB50AD00();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v19[-v10];
  v12 = sub_1DB50AD60();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v19[-v15];
  v20 = a3;
  v21 = a1;
  v22 = a2;
  sub_1DB338588(v11);
  sub_1DB50AD70();

  swift_getWitnessTable();
  a4[3] = type metadata accessor for _BoxedAsyncSequence();
  a4[4] = swift_getWitnessTable();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a4);
  return (*(v13 + 32))(boxed_opaque_existential_0, v16, v12);
}

uint64_t sub_1DB337E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC42A00, &unk_1DB5102D0);
  v8 = sub_1DB50AD30();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v21 - v15;
  v17 = sub_1DB50ABA0();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v9 + 16))(v12, a1, v8);
  v18 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 4) = a4;
  *(v19 + 5) = a2;
  *(v19 + 6) = a3;
  (*(v9 + 32))(&v19[v18], v12, v8);

  sub_1DB388F14(0, 0, v16, &unk_1DB510DB0, v19);
}

uint64_t sub_1DB3380B4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[6] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC42A00, &unk_1DB5102D0);
  v10 = sub_1DB50ACF0();
  v7[7] = v10;
  v11 = *(v10 - 8);
  v7[8] = v11;
  v12 = *(v11 + 64) + 15;
  v7[9] = swift_task_alloc();
  v13 = *(a7 - 8);
  v7[10] = v13;
  v14 = *(v13 + 64) + 15;
  v7[11] = swift_task_alloc();
  v15 = swift_task_alloc();
  v7[12] = v15;
  v19 = (a4 + *a4);
  v16 = a4[1];
  v17 = swift_task_alloc();
  v7[13] = v17;
  *v17 = v7;
  v17[1] = sub_1DB33829C;

  return v19(v15);
}

uint64_t sub_1DB33829C()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_1DB3384E4;
  }

  else
  {
    v3 = sub_1DB3383B0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB3383B0()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[5];
  v7 = v0[4];
  (*(v3 + 16))(v0[11], v1, v6);
  sub_1DB50AD30();
  sub_1DB50AD10();
  (*(v5 + 8))(v2, v4);
  v0[3] = 0;
  sub_1DB50AD20();
  (*(v3 + 8))(v1, v6);
  v9 = v0[11];
  v8 = v0[12];
  v10 = v0[9];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1DB3384E4()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  v0[2] = v0[14];
  sub_1DB50AD30();
  sub_1DB50AD20();
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[9];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1DB338588@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69E8790];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC42A00, &unk_1DB5102D0);
  v3 = sub_1DB50AD00();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t Continuous._containsSingleElement.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = type metadata accessor for _AsyncJust();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10[-1] - v5;
  Continuous.base.getter(v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43180, qword_1DB510A88);
  result = swift_dynamicCast();
  if (result)
  {
    v8 = result;
    (*(v3 + 8))(v6, v2);
    return v8;
  }

  return result;
}

uint64_t Continuous.base.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = *(v4 + 40);
  a1[3] = swift_getAssociatedTypeWitness();
  a1[4] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(a1);
  return v5(v3, v4);
}

uint64_t static Continuous._unwrapOnlyElement<A>(of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a4;
  v7 = type metadata accessor for _AsyncJust();
  v8 = sub_1DB50B120();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v30 - v11;
  v13 = *(v7 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v30 - v16;
  v18 = *(*(a3 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v19);
  (*(v22 + 16))(&v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3, v20);
  v23 = type metadata accessor for Continuous();
  if (swift_dynamicCast())
  {
    v35[0] = v32;
    v35[1] = v33;
    v36 = v34;
    Continuous.base.getter(&v32);
    (*(*(v23 - 8) + 8))(v35, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43180, qword_1DB510A88);
    v24 = swift_dynamicCast();
    v25 = *(v13 + 56);
    if (v24)
    {
      v25(v12, 0, 1, v7);
      (*(v13 + 32))(v17, v12, v7);
      v26 = *(a2 - 8);
      v27 = v31;
      (*(v26 + 32))(v31, v17, a2);
      return (*(v26 + 56))(v27, 0, 1, a2);
    }

    v25(v12, 1, 1, v7);
    (*(v9 + 8))(v12, v8);
  }

  else
  {
    v29 = sub_1DB50B120();
    v32 = 0u;
    v33 = 0u;
    v34 = 0;
    (*(*(v29 - 8) + 8))(&v32, v29);
  }

  return (*(*(a2 - 8) + 56))(v31, 1, 1, a2);
}

uint64_t Continuous.makeAsyncIterator()@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  (*(v4 + 56))(v6, v3, v4);
  return sub_1DB2FEA0C(v6, a1);
}

uint64_t Continuous.description.getter()
{
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  sub_1DB50BA00();
  return 0;
}

uint64_t sub_1DB338C88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  Continuous.makeAsyncIterator()(a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t Continuous._isEqual(to:)(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(v4 + 48))(a1, v3, v4) & 1;
}

uint64_t Continuous<A>.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v16 = a3;
  v17 = a2;
  v5 = type metadata accessor for _AsyncJust();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BDD0();
  if (!v3)
  {
    v15 = v6;
    __swift_project_boxed_opaque_existential_1(v18, v18[3]);
    v18[6] = v17;
    swift_getWitnessTable();
    sub_1DB50BA80();
    (*(v15 + 32))(v10, v12, v5);
    swift_getWitnessTable();
    Continuous.init<A>(contentsOf:)(v10, v5, v16);
    __swift_destroy_boxed_opaque_existential_0(v18);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t Continuous<A>.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v30 = a3;
  v4 = *(a2 + 16);
  v5 = type metadata accessor for _AsyncJust();
  v6 = sub_1DB50B120();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v29 - v10;
  v12 = *(v5 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v15 = &v29 - v14;
  Continuous.base.getter(v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43180, qword_1DB510A88);
  v16 = swift_dynamicCast();
  v17 = *(v12 + 56);
  if (v16)
  {
    v17(v11, 0, 1, v5);
    (*(v12 + 32))(v15, v11, v5);
    v18 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DB50BE20();
    __swift_mutable_project_boxed_opaque_existential_1(v33, v34);
    v35 = v30;
    swift_getWitnessTable();
    sub_1DB50BB00();
    (*(v12 + 8))(v15, v5);
  }

  else
  {
    v17(v11, 1, 1, v5);
    (*(v7 + 8))(v11, v6);
    v19 = sub_1DB50B410();
    swift_allocError();
    v21 = v20;
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC426C0, &qword_1DB50EEC0) + 48);
    Continuous.base.getter(v33);
    v23 = v34;
    v24 = __swift_project_boxed_opaque_existential_1(v33, v34);
    v21[3] = v23;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v21);
    (*(*(v23 - 8) + 16))(boxed_opaque_existential_0, v24, v23);
    v26 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DB50BE00();
    v31 = 0;
    v32 = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x6F756E69746E6F43, 0xEB000000003C7375);
    v27 = sub_1DB50BEE0();
    MEMORY[0x1E1285C70](v27);

    MEMORY[0x1E1285C70](0xD000000000000027, 0x80000001DB52A0E0);
    sub_1DB50B3C0();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x1E69E6B30], v19);
    swift_willThrow();
  }

  return __swift_destroy_boxed_opaque_existential_0(v33);
}

uint64_t static IntentOutcome.satisfied<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  return Continuous.init(_:)(v7, a2, a3);
}

{
  v5 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  return Continuous.init<A>(contentsOf:)(v7, a2, a3);
}

uint64_t StaticIntent.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  Continuous.init(_:)(a1, a2, v6);
  v4 = type metadata accessor for Continuous();
  return StaticIntent.init(_:)(v6, v4, a3);
}

{
  swift_getAssociatedTypeWitness();
  Continuous.init<A>(contentsOf:)(a1, a2, v8);
  v6 = type metadata accessor for Continuous();
  return StaticIntent.init(_:)(v8, v6, a3);
}

uint64_t sub_1DB339638()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DB339688()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1DB3396C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DB33970C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DB33976C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DB3397DC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_1DB33991C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_1DB339B24(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = *(MEMORY[0x1E69E85A8] + 4);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DB30C7A0;

  return MEMORY[0x1EEE6D8C8](a1, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_1DB339C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = v5;
  v8[3] = a3;
  v8[4] = a5;
  v8[2] = a2;
  v11 = *(a4 + 16);
  v10 = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[5] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v8[6] = v13;
  v14 = *(v13 + 64) + 15;
  v15 = swift_task_alloc();
  v8[7] = v15;
  v16 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = *(MEMORY[0x1E69E85B0] + 4);
  v19 = swift_task_alloc();
  v8[8] = v19;
  *v19 = v8;
  v19[1] = sub_1DB339DC8;

  return MEMORY[0x1EEE6D8D0](a1, a2, a3, v15, v16, AssociatedConformanceWitness);
}

uint64_t sub_1DB339DC8()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;

  if (v0)
  {
    if (v2[2])
    {
      v5 = v2[3];
      swift_getObjectType();
      v6 = sub_1DB50AAD0();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    return MEMORY[0x1EEE6DFA0](sub_1DB339F3C, v6, v8);
  }

  else
  {
    v9 = v2[7];

    v10 = *(v4 + 8);

    return v10();
  }
}

uint64_t sub_1DB339F3C()
{
  (*(v0[6] + 32))(v0[4], v0[7], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1DB339FBC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DB30C7A0;

  return sub_1DB339B24(a1, a2);
}

uint64_t sub_1DB33A064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v11 = *(a5 + 16);
  v10 = *(a5 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[3] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v5[4] = v13;
  v14 = *(v13 + 64) + 15;
  v15 = swift_task_alloc();
  v5[5] = v15;
  v16 = swift_task_alloc();
  v5[6] = v16;
  *v16 = v5;
  v16[1] = sub_1DB33A1A0;

  return sub_1DB339C24(a1, a2, a3, a5, v15);
}

uint64_t sub_1DB33A1A0()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;

  if (v0)
  {
    (*(v2[4] + 32))(v2[2], v2[5], v2[3]);
  }

  else
  {
    v6 = v2[5];
  }

  v5 = *(v4 + 8);

  return v5();
}

uint64_t sub_1DB33A2D4(void *a1, uint64_t a2)
{
  v11[3] = a2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v11);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_0, v2, a2);
  v6 = a1[3];
  v7 = __swift_project_boxed_opaque_existential_1(a1, v6);
  v10[3] = v6;
  v8 = __swift_allocate_boxed_opaque_existential_0(v10);
  (*(*(v6 - 8) + 16))(v8, v7, v6);
  LOBYTE(v6) = _isStructurallyEqual(_:to:with:at:)(v11, v10, 3uLL, 0);
  __swift_destroy_boxed_opaque_existential_0(v10);
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v6 & 1;
}

uint64_t sub_1DB33A3C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v7 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v18 - v14;
  (*(v5 + 16))(v9, v2, v4);
  sub_1DB50ACE0();
  a2[3] = type metadata accessor for _BoxedAsyncSequence._BoxedAsyncIterator();
  a2[4] = swift_getWitnessTable();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2);
  return (*(v12 + 32))(boxed_opaque_existential_0, v15, AssociatedTypeWitness);
}

uint64_t sub_1DB33A588(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_1DB50BA00();
  return 0;
}

uint64_t sub_1DB33A62C(uint64_t a1)
{
  v3 = v2;
  v5 = v1[4];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC42A00, &unk_1DB5102D0);
  v6 = *(sub_1DB50AD30() - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[5];
  v11 = v1[6];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1DB306AF4;

  return sub_1DB3380B4(a1, v8, v9, v10, v11, v1 + v7, v5);
}

uint64_t sub_1DB33A760(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DB33A7E0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v9)
  {
LABEL_23:
    v15 = *(v8 + 48);

    return v15(a1);
  }

  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v13 = ((a2 - v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v13))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v13 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v13 < 2)
    {
LABEL_22:
      if (v9)
      {
        goto LABEL_23;
      }

      return 0;
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_22;
  }

LABEL_11:
  v14 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v14 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return v9 + (v10 | v14) + 1;
}

void sub_1DB33A974(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 64);
  if (a3 <= v10)
  {
    v12 = 0;
  }

  else if (v11 <= 3)
  {
    v15 = ((a3 - v10 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
    if (HIWORD(v15))
    {
      v12 = 4;
    }

    else
    {
      if (v15 < 0x100)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }

      if (v15 >= 2)
      {
        v12 = v16;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 1;
  }

  if (v10 < a2)
  {
    v13 = ~v10 + a2;
    if (v11 < 4)
    {
      v14 = (v13 >> (8 * v11)) + 1;
      if (v11)
      {
        v17 = v13 & ~(-1 << (8 * v11));
        bzero(a1, v11);
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v11] = v14;
              }

              else
              {
                *&a1[v11] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v11] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v11] = 0;
  }

  else if (v12)
  {
    a1[v11] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v9 + 56);

  v18(a1, a2);
}

uint64_t sub_1DB33ABA0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1DB33AC40(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void *SandboxExtensionToken.consume()()
{
  v1 = sub_1DB50A6B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v29[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  v6 = v0[1];
  v8 = v0[2];
  v7 = v0[3];
  v35[0] = *v0;
  v35[1] = v6;

  sub_1DB50A690();
  sub_1DB301E30();
  v9 = MEMORY[0x1E69E6158];
  sub_1DB50B1D0();
  (*(v2 + 8))(v5, v1);

  v10 = sandbox_extension_consume();

  if (v10 < 0)
  {
    if (qword_1ECC42298 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v23 = v36;
    v24 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v25 = swift_allocObject();
    v28 = xmmword_1DB50EE90;
    *(v25 + 16) = xmmword_1DB50EE90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
    v26 = swift_allocObject();
    *(v26 + 16) = v28;
    *(&v31 + 1) = v9;
    *&v30 = 0xD000000000000030;
    *(&v30 + 1) = 0x80000001DB52A140;
    *(v26 + 48) = 0u;
    *(v26 + 32) = 0u;
    sub_1DB301D4C(&v30, v26 + 32);
    *(v26 + 64) = 0;
    *(v25 + 32) = v26;
    Logger.error(_:)(v25, v23, v24);

    __swift_destroy_boxed_opaque_existential_0(v35);
    return 0;
  }

  else
  {
    if (qword_1ECC42298 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v11 = v36;
    v12 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1DB50EE90;
    v34 = sub_1DB301BC0(0, 43, 0, MEMORY[0x1E69E7CC0]);
    v14._object = 0x80000001DB52A110;
    v14._countAndFlagsBits = 0xD00000000000002ALL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v14);
    v33[3] = MEMORY[0x1E69E7360];
    v33[0] = v10;
    sub_1DB301CDC(v33, v29);
    v30 = 0u;
    v31 = 0u;
    sub_1DB301D4C(v29, &v30);
    v32 = 0;
    v15 = v34;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1DB301BC0(0, *(v15 + 2) + 1, 1, v15);
    }

    v17 = *(v15 + 2);
    v16 = *(v15 + 3);
    if (v17 >= v16 >> 1)
    {
      v15 = sub_1DB301BC0((v16 > 1), v17 + 1, 1, v15);
    }

    *(v15 + 2) = v17 + 1;
    v18 = &v15[40 * v17];
    v19 = v30;
    v20 = v31;
    v18[64] = v32;
    *(v18 + 2) = v19;
    *(v18 + 3) = v20;
    v34 = v15;
    sub_1DB301DBC(v33);
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v21);
    *(v13 + 32) = v34;
    Logger.info(_:)(v13, v11, v12);

    __swift_destroy_boxed_opaque_existential_0(v35);
    type metadata accessor for SandboxExtensionToken.Handle();
    v22 = swift_allocObject();
    v22[2] = v8;
    v22[3] = v7;
    v22[4] = v10;
  }

  return v22;
}

void static SandboxExtensionToken.issue(writable:path:auditToken:)(char a1@<W0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v8 = a6;
  v9 = a5;
  v10 = a4;
  v31 = HIDWORD(a4);
  v32 = HIDWORD(a5);
  v33 = HIDWORD(a6);
  v34 = a7;
  v35 = HIDWORD(a7);
  v15 = sub_1DB50A6B0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1E69E9BA8];
  if (a1)
  {
    v20 = MEMORY[0x1E69E9BB0];
  }

  v21 = *v20;
  v29 = a2;
  v30 = v21;
  v36 = a2;
  v37 = a3;
  v22 = a3;
  sub_1DB50A690();
  sub_1DB301E30();
  sub_1DB50B1D0();
  (*(v16 + 8))(v19, v15);
  v36 = __PAIR64__(v31, v10);
  v37 = __PAIR64__(v32, v9);
  v38 = v8;
  v39 = v33;
  v40 = v34;
  v41 = v35;
  v23 = sandbox_extension_issue_file_to_process();

  if (v23)
  {
    v24 = sub_1DB50A790();
    v26 = v25;

    free(v23);
    v27 = v29;
  }

  else
  {
    v24 = 0;
    v26 = 0;
    v27 = 0;
    v22 = 0;
  }

  *a8 = v24;
  a8[1] = v26;
  a8[2] = v27;
  a8[3] = v22;
}

uint64_t SandboxExtensionToken.Handle.path.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

Swift::Void __swiftcall SandboxExtensionToken.Handle.release()()
{
  if (qword_1ECC42298 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v1 = v20;
  v2 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1DB50EE90;
  v18 = sub_1DB301BC0(0, 35, 0, MEMORY[0x1E69E7CC0]);
  v4._object = 0x80000001DB52A180;
  v4._countAndFlagsBits = 0xD000000000000019;
  LogMessage.StringInterpolation.appendLiteral(_:)(v4);
  v5 = *(v0 + 32);
  v17[3] = MEMORY[0x1E69E7360];
  v17[0] = v5;
  sub_1DB301CDC(v17, v13);
  v14 = 0u;
  v15 = 0u;
  sub_1DB301D4C(v13, &v14);
  v16 = 0;
  v6 = v18;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_1DB301BC0(0, *(v6 + 2) + 1, 1, v6);
  }

  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  if (v8 >= v7 >> 1)
  {
    v6 = sub_1DB301BC0((v7 > 1), v8 + 1, 1, v6);
  }

  *(v6 + 2) = v8 + 1;
  v9 = &v6[40 * v8];
  v10 = v14;
  v11 = v15;
  v9[64] = v16;
  *(v9 + 2) = v10;
  *(v9 + 3) = v11;
  v18 = v6;
  sub_1DB301DBC(v17);
  v12._countAndFlagsBits = 0x657361656C657220;
  v12._object = 0xE900000000000064;
  LogMessage.StringInterpolation.appendLiteral(_:)(v12);
  *(v3 + 32) = v18;
  Logger.info(_:)(v3, v1, v2);

  __swift_destroy_boxed_opaque_existential_0(v19);
  sandbox_extension_release();
}

uint64_t SandboxExtensionToken.Handle.deinit()
{
  SandboxExtensionToken.Handle.release()();
  v1 = *(v0 + 24);

  return v0;
}

uint64_t SandboxExtensionToken.Handle.__deallocating_deinit()
{
  SandboxExtensionToken.Handle.release()();
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t SandboxExtensionToken.token.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SandboxExtensionToken.path.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_1DB33B5B4()
{
  if (*v0)
  {
    result = 1752457584;
  }

  else
  {
    result = 0x6E656B6F74;
  }

  *v0;
  return result;
}

uint64_t sub_1DB33B5E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E656B6F74 && a2 == 0xE500000000000000;
  if (v6 || (sub_1DB50BA30() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1752457584 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DB50BA30();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1DB33B6BC(uint64_t a1)
{
  v2 = sub_1DB33BB1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB33B6F8(uint64_t a1)
{
  v2 = sub_1DB33BB1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SandboxExtensionToken.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43388, &qword_1DB510E78);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB33BB1C();
  sub_1DB50BE40();
  v16 = 0;
  v12 = v14[3];
  sub_1DB50B860();
  if (!v12)
  {
    v15 = 1;
    sub_1DB50B860();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t SandboxExtensionToken.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43390, &qword_1DB510E80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB33BB1C();
  sub_1DB50BDF0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v21 = 0;
  v11 = sub_1DB50B740();
  v13 = v12;
  v19 = v11;
  v20 = 1;
  v14 = sub_1DB50B740();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_1DB33BB1C()
{
  result = qword_1EE30CFF8[0];
  if (!qword_1EE30CFF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE30CFF8);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DB33BB7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DB33BBC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DB33BC40()
{
  result = qword_1ECC43398;
  if (!qword_1ECC43398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC43398);
  }

  return result;
}

unint64_t sub_1DB33BC98()
{
  result = qword_1EE30CFE8;
  if (!qword_1EE30CFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30CFE8);
  }

  return result;
}

unint64_t sub_1DB33BCF0()
{
  result = qword_1EE30CFF0;
  if (!qword_1EE30CFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30CFF0);
  }

  return result;
}

uint64_t ScalarDictionary.Value.init(rawValue:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DB300B14(a1, v35);
  sub_1DB336FD4(0, &qword_1ECC433A0, 0x1E696AD98);
  if (swift_dynamicCast())
  {
    [v33[0] objCType];
    v4 = sub_1DB50A790();
    v6 = v5;
    v7 = v4 == 66 && v5 == 0xE100000000000000;
    if (v7 || (v8 = v4, (sub_1DB50BA30() & 1) != 0) || v8 == 99 && v6 == 0xE100000000000000 || (sub_1DB50BA30() & 1) != 0)
    {

      v9 = [v33[0] BOOLValue];

      __swift_destroy_boxed_opaque_existential_0(a1);
      result = __swift_destroy_boxed_opaque_existential_0(v35);
      *a2 = v9;
LABEL_13:
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      return result;
    }

    if (v8 == 100 && v6 == 0xE100000000000000 || (sub_1DB50BA30() & 1) != 0 || v8 == 102 && v6 == 0xE100000000000000)
    {

LABEL_28:
      [v33[0] doubleValue];
      v14 = v13;

      __swift_destroy_boxed_opaque_existential_0(a1);
      result = __swift_destroy_boxed_opaque_existential_0(v35);
      *a2 = v14;
      goto LABEL_16;
    }

    v27 = sub_1DB50BA30();

    if (v27)
    {
      goto LABEL_28;
    }

    v28 = [v33[0] integerValue];

    __swift_destroy_boxed_opaque_existential_0(a1);
    result = __swift_destroy_boxed_opaque_existential_0(v35);
    *a2 = v28;
LABEL_19:
    *(a2 + 8) = 0;
    v11 = 2;
    goto LABEL_48;
  }

  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    result = __swift_destroy_boxed_opaque_existential_0(v35);
    *a2 = LOBYTE(v33[0]);
    goto LABEL_13;
  }

  if (!swift_dynamicCast())
  {
    if (!swift_dynamicCast())
    {
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_0(a1);
        v12 = v33[1];
        result = __swift_destroy_boxed_opaque_existential_0(v35);
        *a2 = v33[0];
        *(a2 + 8) = v12;
        v11 = 3;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F88, &qword_1DB511080);
        if (swift_dynamicCast())
        {
          v15 = sub_1DB33C268(v33[0]);

          __swift_destroy_boxed_opaque_existential_0(a1);
          result = __swift_destroy_boxed_opaque_existential_0(v35);
          *a2 = v15;
          *(a2 + 8) = 0;
          v11 = 5;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC433A8, &unk_1DB511088);
          if (swift_dynamicCast())
          {
            v16 = *(v34 + 16);
            if (v16)
            {
              v17 = v34 + 32;
              v18 = MEMORY[0x1E69E7CC0];
              do
              {
                sub_1DB300B14(v17, v33);
                sub_1DB300B14(v33, v29);
                ScalarDictionary.Value.init(rawValue:)(&v30, v29);
                __swift_destroy_boxed_opaque_existential_0(v33);
                v19 = v32;
                v21 = v30;
                v20 = v31;
                if (v32 == 255)
                {
                  sub_1DB33C254(v30, v31, 255);
                }

                else
                {
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v18 = sub_1DB302C64(0, *(v18 + 2) + 1, 1, v18);
                  }

                  v23 = *(v18 + 2);
                  v22 = *(v18 + 3);
                  v24 = v23 + 1;
                  if (v23 >= v22 >> 1)
                  {
                    v26 = sub_1DB302C64((v22 > 1), v23 + 1, 1, v18);
                    v24 = v23 + 1;
                    v18 = v26;
                  }

                  *(v18 + 2) = v24;
                  v25 = &v18[24 * v23];
                  *(v25 + 4) = v21;
                  *(v25 + 5) = v20;
                  v25[48] = v19;
                }

                v17 += 32;
                --v16;
              }

              while (v16);
            }

            else
            {

              v18 = MEMORY[0x1E69E7CC0];
            }

            __swift_destroy_boxed_opaque_existential_0(a1);
            result = __swift_destroy_boxed_opaque_existential_0(v35);
            *a2 = v18;
            *(a2 + 8) = 0;
            v11 = 4;
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_0(a1);
            result = __swift_destroy_boxed_opaque_existential_0(v35);
            *a2 = 0;
            *(a2 + 8) = 0;
            v11 = -1;
          }
        }
      }

      goto LABEL_48;
    }

    __swift_destroy_boxed_opaque_existential_0(a1);
    result = __swift_destroy_boxed_opaque_existential_0(v35);
    *a2 = v33[0];
    goto LABEL_19;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  result = __swift_destroy_boxed_opaque_existential_0(v35);
  *a2 = v33[0];
LABEL_16:
  *(a2 + 8) = 0;
  v11 = 1;
LABEL_48:
  *(a2 + 16) = v11;
  return result;
}

uint64_t sub_1DB33C254(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1DB31EB94(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1DB33C268(uint64_t a1)
{
  v1 = a1;
  v2 = MEMORY[0x1E69E7CC8];
  v39 = MEMORY[0x1E69E7CC8];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v40 = result;
  if (!v6)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_11:
    while (1)
    {
      v11 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v12 = v11 | (v9 << 6);
      v13 = (*(v1 + 48) + 16 * v12);
      v15 = *v13;
      v14 = v13[1];
      sub_1DB300B14(*(v1 + 56) + 32 * v12, v38);
      *&v37 = v15;
      *(&v37 + 1) = v14;
      v34 = v37;
      v35 = v38[0];
      v36 = v38[1];
      sub_1DB300B14(&v35, v31);

      ScalarDictionary.Value.init(rawValue:)(&v32, v31);
      v16 = v33[0];
      if (LOBYTE(v33[0]) != 255)
      {
        break;
      }

      sub_1DB30623C(&v34, &qword_1ECC43438, &qword_1DB511338);
      result = sub_1DB33C254(v32, *(&v32 + 1), 255);
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    v30 = v32;
    v33[0] = v35;
    v33[1] = v36;
    v32 = v34;
    v17 = *(v2 + 16);
    if (*(v2 + 24) <= v17)
    {
      sub_1DB31A114(v17 + 1, 1);
      v2 = v39;
    }

    v18 = v32;
    v19 = *(v2 + 40);
    sub_1DB50BCF0();
    sub_1DB50A740();
    result = sub_1DB50BD30();
    v20 = v2 + 64;
    v21 = -1 << *(v2 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v2 + 64 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v20 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_24;
        }
      }

      goto LABEL_28;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v2 + 64 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v20 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    *(*(v2 + 48) + 16 * v24) = v18;
    v29 = *(v2 + 56) + 24 * v24;
    *v29 = v30;
    *(v29 + 16) = v16;
    ++*(v2 + 16);
    result = __swift_destroy_boxed_opaque_existential_0(v33);
    v1 = v40;
  }

  while (v6);
LABEL_7:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

void ScalarDictionary.Value.rawValue.getter(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 16);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v12 = *(v1 + 8);
      a1[3] = MEMORY[0x1E69E6158];
      *a1 = v2;
      a1[1] = v12;
    }

    else if (v3 == 4)
    {
      v6 = *(v2 + 16);
      v7 = MEMORY[0x1E69E7CC0];
      if (v6)
      {
        v19 = MEMORY[0x1E69E7CC0];
        v8 = sub_1DB34132C(0, v6, 0);
        v7 = v19;
        v9 = (v2 + 48);
        do
        {
          v16 = *(v9 - 1);
          v17 = *v9;
          ScalarDictionary.Value.rawValue.getter(v18, v8);
          v19 = v7;
          v11 = *(v7 + 16);
          v10 = *(v7 + 24);
          if (v11 >= v10 >> 1)
          {
            sub_1DB34132C((v10 > 1), v11 + 1, 1);
            v7 = v19;
          }

          *(v7 + 16) = v11 + 1;
          v8 = sub_1DB30C200(v18, (v7 + 32 * v11 + 32));
          v9 += 24;
          --v6;
        }

        while (v6);
      }

      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC433A8, &unk_1DB511088);
      *a1 = v7;
    }

    else
    {
      v13 = *v1;
      v15 = sub_1DB341EF0(v13);
      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F88, &qword_1DB511080);
      *a1 = v15;
    }
  }

  else if (*(v1 + 16))
  {
    if (v3 == 1)
    {
      v4 = MEMORY[0x1E69E63B0];
    }

    else
    {
      v4 = MEMORY[0x1E69E6530];
    }

    a1[3] = v4;
    *a1 = v2;
  }

  else
  {
    a1[3] = MEMORY[0x1E69E6370];
    *a1 = v2 & 1;
  }
}

uint64_t sub_1DB33C710(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v267 = a1;
  v7 = 0;
  v8 = a1 + 64;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  v11 = -1 << v9;
  if (v9 < 64)
  {
    v10 = ~v11;
  }

  v12 = v10 & *(a1 + 64);
  v13 = (v9 + 63) >> 6;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        if (v12)
        {
          v14 = __clz(__rbit64(v12));
          v269 = (v12 - 1) & v12;
          goto LABEL_13;
        }

        v15 = v7;
        do
        {
          v7 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            __break(1u);
LABEL_196:
            v172 = v11;
            v173 = v12;
            sub_1DB314BBC(v11, v12, v6);
            sub_1DB314BBC(v5, v266, 3);
            v174 = v5;
            v175 = v266;
            v176 = 3;
            goto LABEL_202;
          }

          if (v7 >= v13)
          {
            return 1;
          }

          v16 = *(v8 + 8 * v7);
          ++v15;
        }

        while (!v16);
        v14 = __clz(__rbit64(v16));
        v269 = (v16 - 1) & v16;
LABEL_13:
        v17 = v14 | (v7 << 6);
        v18 = (*(a1 + 48) + 16 * v17);
        v19 = *v18;
        v20 = v18[1];
        v21 = *(a1 + 56) + 24 * v17;
        v6 = *v21;
        v22 = *(v21 + 8);
        v5 = *(v21 + 16);

        v270 = v22;
        sub_1DB314BBC(v6, v22, v5);
        v23 = v20 == 0;
        if (!v20)
        {
          return v23;
        }

        v24 = sub_1DB306160(v19, v20);
        v26 = v25;

        if ((v26 & 1) == 0)
        {
          goto LABEL_239;
        }

        v27 = *(a2 + 56) + 24 * v24;
        v2 = *v27;
        v3 = *(v27 + 8);
        LODWORD(v4) = *(v27 + 16);
        if (v4 <= 2)
        {
          break;
        }

        if (v4 == 3)
        {
          if (v5 != 3)
          {
            v171 = *(v27 + 8);

            goto LABEL_238;
          }

          v5 = v270;
          if (v2 == v6 && v3 == v270)
          {
            v37 = *(v27 + 8);

            sub_1DB31EB94(v6, v270, 3);
            goto LABEL_47;
          }

          v32 = *v27;
          v33 = *(v27 + 8);
          LOBYTE(v4) = sub_1DB50BA30();

          sub_1DB31EB94(v2, v3, 3);
          v34 = v6;
          v35 = v270;
          v36 = 3;
LABEL_43:
          sub_1DB31EB94(v34, v35, v36);
          a1 = v267;
          v12 = v269;
          if ((v4 & 1) == 0)
          {
            return v23;
          }
        }

        else
        {
          if (v4 != 4)
          {
            if (v5 != 5)
            {
LABEL_192:
              v170 = *v27;

              goto LABEL_238;
            }

            sub_1DB314BBC(*v27, *(v27 + 8), 5);
            sub_1DB314BBC(v2, v3, 5);
            v5 = v270;
            sub_1DB314BBC(v6, v270, 5);
            LOBYTE(v4) = sub_1DB33C710(v2, v6);
            sub_1DB31EB94(v6, v270, 5);
            sub_1DB31EB94(v2, v3, 5);
            sub_1DB31EB94(v2, v3, 5);
            v34 = v6;
            v35 = v270;
            v36 = 5;
            goto LABEL_43;
          }

          if (v5 != 4)
          {
            goto LABEL_192;
          }

          v29 = *(v2 + 16);
          if (v29 != *(v6 + 16))
          {

            LOBYTE(v5) = 4;
            goto LABEL_238;
          }

          if (v29)
          {
            v5 = v270;
            if (v2 == v6)
            {

              v30 = v6;
LABEL_27:
              sub_1DB31EB94(v30, v3, 4);
              goto LABEL_47;
            }

            v264 = v6 + 32;
            sub_1DB314BBC(v2, v3, 4);
            sub_1DB314BBC(v2, v3, 4);
            v39 = sub_1DB314BBC(v6, v270, 4);
            v43 = 0;
            v261 = v3;
            v262 = v29;
            v263 = v6;
            while (2)
            {
              v48 = *(v2 + 16);
              if (v43 >= v48)
              {
                __break(1u);
LABEL_223:
                __break(1u);
LABEL_224:
                v202 = v48;
                v203 = v42;
                v205 = v41;
                sub_1DB314BBC(v39, v40, v42);
                v198 = v233;
                v199 = v233;
                v200 = v238;
                v201 = v238;
                v204 = 4;
LABEL_227:
                sub_1DB314BBC(v199, v201, v204);
                sub_1DB31EB94(v198, v200, v6);
                sub_1DB31EB94(v202, v205, v203);
LABEL_228:
                sub_1DB31EB94(v243, v232, 4);
                sub_1DB31EB94(v236, v237, 4);
                sub_1DB31EB94(v236, v237, 4);
                v220 = v243;
                v221 = v232;
                goto LABEL_229;
              }

              v48 = *(v6 + 16);
              if (v43 >= v48)
              {
                goto LABEL_223;
              }

              v49 = v2 + 32 + 24 * v43;
              v5 = *v49;
              v265 = v43;
              v266 = *(v49 + 8);
              v50 = *(v49 + 16);
              v51 = v264 + 24 * v43;
              v11 = *v51;
              v12 = *(v51 + 8);
              LODWORD(v6) = *(v51 + 16);
              if (v50 <= 2)
              {
                if (v50)
                {
                  if (v50 == 1)
                  {
                    if (v6 == 1)
                    {
                      v52 = *&v5;
                      v53 = *v51;
                      v54 = v5;
                      v55 = v3;
                      v56 = *v51;
                      v57 = *(v51 + 8);
                      sub_1DB31EB94(v54, v266, 1);
                      v58 = v56;
                      v3 = v55;
                      v39 = sub_1DB31EB94(v58, v57, 1);
                      if (v52 != v53)
                      {
                        goto LABEL_237;
                      }

                      goto LABEL_50;
                    }

                    v172 = *v51;
                    v173 = *(v51 + 8);
                    sub_1DB314BBC(*v51, v173, *(v51 + 16));
                    v174 = v5;
                    v175 = v266;
                    v176 = 1;
LABEL_202:
                    sub_1DB31EB94(v174, v175, v176);
                    v177 = v172;
                    v178 = v173;
                    v179 = v6;
LABEL_236:
                    sub_1DB31EB94(v177, v178, v179);
LABEL_237:
                    LOBYTE(v5) = 4;
                    v6 = v263;
                    sub_1DB31EB94(v263, v270, 4);
                    sub_1DB31EB94(v2, v3, 4);
                    goto LABEL_238;
                  }

                  if (v6 != 2)
                  {
                    v172 = *v51;
                    v173 = *(v51 + 8);
                    sub_1DB314BBC(*v51, v173, *(v51 + 16));
                    v174 = v5;
                    v175 = v266;
                    v176 = 2;
                    goto LABEL_202;
                  }

                  v4 = *v51;
                  v70 = *(v51 + 8);
                  sub_1DB31EB94(v5, v266, 2);
                  v71 = v70;
                  v3 = v261;
                  v39 = sub_1DB31EB94(v4, v71, 2);
                  v28 = v5 == v4;
                  LOBYTE(v4) = 4;
                  if (!v28)
                  {
                    goto LABEL_237;
                  }
                }

                else
                {
                  if (*(v51 + 16))
                  {
                    v172 = *v51;
                    v173 = *(v51 + 8);
                    sub_1DB314BBC(*v51, v173, *(v51 + 16));
                    v174 = v5;
                    v175 = v266;
                    v176 = 0;
                    goto LABEL_202;
                  }

                  v62 = v3;
                  v63 = *v51;
                  v64 = *(v51 + 8);
                  sub_1DB31EB94(v5, v266, 0);
                  v39 = sub_1DB31EB94(v63, v64, 0);
                  v65 = v63 ^ v5;
                  v3 = v62;
                  if (v65)
                  {
                    goto LABEL_237;
                  }
                }

LABEL_50:
                v43 = v265 + 1;
                v6 = v263;
                if (v265 + 1 == v262)
                {
                  v5 = v270;
                  sub_1DB31EB94(v263, v270, 4);
                  sub_1DB31EB94(v2, v3, 4);
                  v30 = v2;
                  goto LABEL_27;
                }

                continue;
              }

              break;
            }

            if (v50 == 3)
            {
              if (v6 != 3)
              {
                goto LABEL_196;
              }

              if (v5 != v11 || v266 != v12)
              {
                v4 = *v51;
                v44 = *(v51 + 8);
                v45 = sub_1DB50BA30();
                sub_1DB314BBC(v4, v44, 3);
                sub_1DB314BBC(v5, v266, 3);
                sub_1DB31EB94(v5, v266, 3);
                v46 = v4;
                LOBYTE(v4) = 4;
                v47 = v44;
                v3 = v261;
                v39 = sub_1DB31EB94(v46, v47, 3);
                if ((v45 & 1) == 0)
                {
                  goto LABEL_237;
                }

                goto LABEL_50;
              }

              sub_1DB314BBC(v5, v266, 3);
              sub_1DB314BBC(v5, v266, 3);
              sub_1DB31EB94(v5, v266, 3);
              v67 = v5;
              v68 = v266;
              v69 = 3;
              goto LABEL_79;
            }

            if (v50 != 4)
            {
              v72 = *v51;
              v73 = *(v51 + 8);
              if (v6 != 5)
              {
                v172 = *v51;
                v173 = *(v51 + 8);
                sub_1DB314BBC(v72, v73, *(v51 + 16));
                sub_1DB314BBC(v5, v266, 5);
                v174 = v5;
                v175 = v266;
                v176 = 5;
                goto LABEL_202;
              }

              v4 = *v51;
              v74 = *(v51 + 8);
              sub_1DB314BBC(v72, v73, 5);
              sub_1DB314BBC(v5, v266, 5);
              sub_1DB314BBC(v4, v74, 5);
              sub_1DB314BBC(v5, v266, 5);
              v75 = sub_1DB33C710(v5, v4);
              sub_1DB31EB94(v5, v266, 5);
              sub_1DB31EB94(v4, v74, 5);
              v76 = v4;
              LOBYTE(v4) = 4;
              v77 = v74;
              v3 = v261;
              sub_1DB31EB94(v76, v77, 5);
              v39 = sub_1DB31EB94(v5, v266, 5);
              if ((v75 & 1) == 0)
              {
                goto LABEL_237;
              }

              goto LABEL_50;
            }

            if (v6 != 4)
            {
              v172 = *v51;
              v173 = *(v51 + 8);
              sub_1DB314BBC(*v51, v173, *(v51 + 16));
              sub_1DB314BBC(v5, v266, 4);
              v174 = v5;
              v175 = v266;
              v176 = 4;
              goto LABEL_202;
            }

            v59 = *(v5 + 16);
            if (v59 != *(v11 + 16))
            {
              v180 = *v51;
              v181 = *(v51 + 8);
              sub_1DB314BBC(*v51, v181, 4);
              sub_1DB314BBC(v5, v266, 4);
              sub_1DB31EB94(v5, v266, 4);
              v177 = v180;
              v178 = v181;
              goto LABEL_235;
            }

            if (v59)
            {
              v60 = v5 == v11;
            }

            else
            {
              v60 = 1;
            }

            if (v60)
            {
              v4 = *v51;
              v61 = *(v51 + 8);
              sub_1DB314BBC(*v51, v61, 4);
              sub_1DB314BBC(v5, v266, 4);
              sub_1DB31EB94(v5, v266, 4);
              v39 = sub_1DB31EB94(v4, v61, 4);
              v3 = v261;
              LOBYTE(v4) = 4;
              goto LABEL_50;
            }

            v253 = v11 + 32;
            v254 = v5 + 32;
            v4 = *v51;
            v78 = *(v51 + 8);
            sub_1DB314BBC(v11, v12, 4);
            v250 = v59;
            sub_1DB314BBC(v5, v266, 4);
            v255 = v4;
            v235 = v78;
            sub_1DB314BBC(v4, v78, 4);
            v256 = v5;
            result = sub_1DB314BBC(v5, v266, 4);
            v80 = 0;
            v3 = v261;
            LOBYTE(v4) = 4;
            while (2)
            {
              if (v80 >= *(v256 + 16))
              {
                __break(1u);
LABEL_243:
                __break(1u);
LABEL_244:
                __break(1u);
LABEL_245:
                __break(1u);
LABEL_246:
                __break(1u);
LABEL_247:
                __break(1u);
                return result;
              }

              if (v80 >= *(v255 + 16))
              {
                goto LABEL_243;
              }

              v81 = v254 + 24 * v80;
              v83 = *v81;
              v82 = *(v81 + 8);
              v84 = *(v81 + 16);
              v85 = v253 + 24 * v80;
              v87 = *v85;
              v86 = *(v85 + 8);
              v88 = *(v85 + 16);
              if (v84 <= 2)
              {
                if (v84)
                {
                  if (v84 == 1)
                  {
                    if (v88 == 1)
                    {
                      v89 = *&v83;
                      v90 = *v85;
                      v91 = v83;
                      v92 = v80;
                      v93 = *v85;
                      v94 = *(v85 + 8);
                      sub_1DB31EB94(v91, v82, 1);
                      v95 = v93;
                      v80 = v92;
                      result = sub_1DB31EB94(v95, v94, 1);
                      if (v89 != v90)
                      {
                        goto LABEL_234;
                      }

                      goto LABEL_87;
                    }

                    v190 = v82;
                    v183 = *v85;
                    v184 = *(v85 + 8);
                    sub_1DB314BBC(*v85, v184, *(v85 + 16));
                    v185 = v83;
                    v186 = v190;
                    v187 = 1;
LABEL_210:
                    sub_1DB31EB94(v185, v186, v187);
                    v192 = v183;
                    v193 = v184;
                    v194 = v88;
LABEL_233:
                    sub_1DB31EB94(v192, v193, v194);
LABEL_234:
                    sub_1DB31EB94(v256, v266, 4);
                    sub_1DB31EB94(v255, v235, 4);
                    sub_1DB31EB94(v255, v235, 4);
                    v177 = v256;
                    v178 = v266;
LABEL_235:
                    v179 = 4;
                    goto LABEL_236;
                  }

                  if (v88 != 2)
                  {
                    v189 = v82;
                    v183 = *v85;
                    v184 = *(v85 + 8);
                    sub_1DB314BBC(*v85, v184, *(v85 + 16));
                    v185 = v83;
                    v186 = v189;
                    v187 = 2;
                    goto LABEL_210;
                  }

                  v112 = *v85;
                  v260 = v80;
                  v113 = *(v85 + 8);
                  sub_1DB31EB94(v83, v82, 2);
                  v114 = v113;
                  v80 = v260;
                  result = sub_1DB31EB94(v112, v114, 2);
                  if (v83 != v112)
                  {
                    goto LABEL_234;
                  }
                }

                else
                {
                  if (*(v85 + 16))
                  {
                    v191 = v82;
                    v183 = *v85;
                    v184 = *(v85 + 8);
                    sub_1DB314BBC(*v85, v184, *(v85 + 16));
                    v185 = v83;
                    v186 = v191;
                    v187 = 0;
                    goto LABEL_210;
                  }

                  v258 = v80;
                  v102 = *v85;
                  v103 = *(v85 + 8);
                  sub_1DB31EB94(v83, v82, 0);
                  result = sub_1DB31EB94(v102, v103, 0);
                  v104 = v102 ^ v83;
                  v80 = v258;
                  if (v104)
                  {
                    goto LABEL_234;
                  }
                }

LABEL_87:
                if (++v80 != v59)
                {
                  continue;
                }

                sub_1DB31EB94(v256, v266, 4);
                sub_1DB31EB94(v255, v235, 4);
                LOBYTE(v4) = 4;
                v3 = v261;
                sub_1DB31EB94(v255, v235, 4);
                v67 = v256;
                v68 = v266;
                v69 = 4;
LABEL_79:
                v39 = sub_1DB31EB94(v67, v68, v69);
                goto LABEL_50;
              }

              break;
            }

            if (v84 == 3)
            {
              if (v88 != 3)
              {
                v182 = v82;
                v183 = *v85;
                v184 = *(v85 + 8);
                sub_1DB314BBC(*v85, v184, *(v85 + 16));
                sub_1DB314BBC(v83, v182, 3);
                v185 = v83;
                v186 = v182;
                v187 = 3;
                goto LABEL_210;
              }

              v28 = v83 == v87;
              v105 = v83;
              v106 = v83;
              v107 = v82;
              if (v28 && v82 == v86)
              {
                sub_1DB314BBC(v105, v82, 3);
                sub_1DB314BBC(v106, v107, 3);
                sub_1DB31EB94(v106, v107, 3);
                result = sub_1DB31EB94(v106, v107, 3);
                v59 = v250;
                goto LABEL_87;
              }

              v109 = *v85;
              v259 = v80;
              v110 = *(v85 + 8);
              v251 = sub_1DB50BA30();
              sub_1DB314BBC(v109, v110, 3);
              sub_1DB314BBC(v106, v107, 3);
              sub_1DB31EB94(v106, v107, 3);
              v111 = v110;
              v80 = v259;
              result = sub_1DB31EB94(v109, v111, 3);
              v59 = v250;
            }

            else
            {
              v257 = v80;
              if (v84 == 4)
              {
                if (v88 != 4)
                {
                  v188 = v82;
                  v183 = *v85;
                  v184 = *(v85 + 8);
                  sub_1DB314BBC(v87, v86, v88);
                  sub_1DB314BBC(v83, v188, 4);
                  v185 = v83;
                  v186 = v188;
                  v187 = 4;
                  goto LABEL_210;
                }

                v96 = *(v83 + 16);
                if (v96 != *(v87 + 16))
                {
                  v195 = v82;
                  v196 = *v85;
                  v197 = *(v85 + 8);
                  sub_1DB314BBC(v87, v86, 4);
                  sub_1DB314BBC(v83, v195, 4);
                  sub_1DB31EB94(v83, v195, 4);
                  v192 = v196;
                  v193 = v197;
                  goto LABEL_232;
                }

                v239 = v82;
                if (v96)
                {
                  v97 = v83 == v87;
                }

                else
                {
                  v97 = 1;
                }

                if (v97)
                {
                  v98 = *v85;
                  v99 = *(v85 + 8);
                  sub_1DB314BBC(v87, v86, 4);
                  sub_1DB314BBC(v83, v239, 4);
                  v59 = v250;
                  sub_1DB31EB94(v83, v239, 4);
                  v100 = v98;
                  v101 = v99;
LABEL_106:
                  result = sub_1DB31EB94(v100, v101, 4);
                  v80 = v257;
                  goto LABEL_87;
                }

                v247 = v87 + 32;
                v248 = v83 + 32;
                v117 = *v85;
                v118 = *(v85 + 8);
                sub_1DB314BBC(v87, v86, 4);
                v240 = v83;
                sub_1DB314BBC(v83, v239, 4);
                v249 = v117;
                v242 = v118;
                sub_1DB314BBC(v117, v118, 4);
                result = sub_1DB314BBC(v83, v239, 4);
                v119 = 0;
                v241 = v96;
                while (2)
                {
                  if (v119 >= *(v83 + 16))
                  {
                    goto LABEL_244;
                  }

                  if (v119 >= *(v249 + 16))
                  {
                    goto LABEL_245;
                  }

                  v122 = v248 + 24 * v119;
                  v123 = *v122;
                  v124 = *(v122 + 8);
                  v125 = *(v122 + 16);
                  v126 = v247 + 24 * v119;
                  v128 = *v126;
                  v127 = *(v126 + 8);
                  v129 = *(v126 + 16);
                  v252 = v119;
                  if (v125 <= 2)
                  {
                    if (v125)
                    {
                      if (v125 == 1)
                      {
                        if (v129 == 1)
                        {
                          v130 = *&v123;
                          sub_1DB31EB94(v123, v124, 1);
                          result = sub_1DB31EB94(v128, v127, 1);
                          if (v130 != *&v128)
                          {
                            goto LABEL_231;
                          }

                          goto LABEL_124;
                        }

                        v223 = v123;
                        v213 = *(v126 + 8);
                        v224 = v124;
                        sub_1DB314BBC(v128, v213, v129);
                        v215 = v223;
                        v216 = v224;
                        v217 = 1;
LABEL_220:
                        sub_1DB31EB94(v215, v216, v217);
                        sub_1DB31EB94(v128, v213, v129);
LABEL_231:
                        sub_1DB31EB94(v83, v239, 4);
                        sub_1DB31EB94(v249, v242, 4);
                        sub_1DB31EB94(v249, v242, 4);
                        v192 = v83;
                        v193 = v239;
LABEL_232:
                        v194 = 4;
                        goto LABEL_233;
                      }

                      if (v129 != 2)
                      {
                        v212 = v123;
                        v213 = *(v126 + 8);
                        v214 = v124;
                        sub_1DB314BBC(v128, v213, v129);
                        v215 = v212;
                        v216 = v214;
                        v217 = 2;
                        goto LABEL_220;
                      }

                      v142 = v123;
                      sub_1DB31EB94(v123, v124, 2);
                      result = sub_1DB31EB94(v128, v127, 2);
                      v28 = v142 == v128;
                      v83 = v240;
                      if (!v28)
                      {
                        goto LABEL_231;
                      }
                    }

                    else
                    {
                      if (*(v126 + 16))
                      {
                        v225 = v123;
                        v213 = *(v126 + 8);
                        v226 = v124;
                        sub_1DB314BBC(v128, v213, v129);
                        v215 = v225;
                        v216 = v226;
                        v217 = 0;
                        goto LABEL_220;
                      }

                      v136 = v123;
                      sub_1DB31EB94(v123, v124, 0);
                      result = sub_1DB31EB94(v128, v127, 0);
                      if ((v128 ^ v136))
                      {
                        goto LABEL_231;
                      }
                    }

LABEL_124:
                    v119 = v252 + 1;
                    if (v252 + 1 == v241)
                    {
                      sub_1DB31EB94(v83, v239, 4);
                      sub_1DB31EB94(v249, v242, 4);
                      sub_1DB31EB94(v249, v242, 4);
                      v100 = v83;
                      v59 = v250;
                      v101 = v239;
                      goto LABEL_106;
                    }

                    continue;
                  }

                  break;
                }

                if (v125 == 3)
                {
                  if (v129 != 3)
                  {
                    v218 = v123;
                    v213 = *(v126 + 8);
                    v219 = v124;
                    sub_1DB314BBC(v128, v213, v129);
                    sub_1DB314BBC(v218, v219, 3);
                    v215 = v218;
                    v216 = v219;
                    v217 = 3;
                    goto LABEL_220;
                  }

                  if (v123 == v128 && v124 == v127)
                  {
                    v120 = v123;
                    v121 = v124;
                    sub_1DB314BBC(v123, v124, 3);
                    sub_1DB314BBC(v120, v121, 3);
                    sub_1DB31EB94(v120, v121, 3);
                    result = sub_1DB31EB94(v120, v121, 3);
                    goto LABEL_124;
                  }

                  v138 = v123;
                  v139 = *(v126 + 8);
                  v140 = v124;
                  v245 = sub_1DB50BA30();
                  sub_1DB314BBC(v128, v139, 3);
                  sub_1DB314BBC(v138, v140, 3);
                  v141 = v138;
                  v83 = v240;
                  sub_1DB31EB94(v141, v140, 3);
                  result = sub_1DB31EB94(v128, v139, 3);
                }

                else
                {
                  v243 = v123;
                  v237 = *(v126 + 8);
                  if (v125 == 4)
                  {
                    if (v129 == 4)
                    {
                      v131 = *(v123 + 16);
                      if (v131 == *(v128 + 16))
                      {
                        v232 = v124;
                        if (v131)
                        {
                          v132 = v123 == v128;
                        }

                        else
                        {
                          v132 = 1;
                        }

                        v133 = v123;
                        if (v132)
                        {
                          sub_1DB314BBC(v128, v237, 4);
                          sub_1DB314BBC(v133, v232, 4);
                          sub_1DB31EB94(v133, v232, 4);
                          v134 = v128;
                          v135 = v237;
LABEL_143:
                          result = sub_1DB31EB94(v134, v135, 4);
                          v83 = v240;
                          goto LABEL_124;
                        }

                        sub_1DB314BBC(v128, v237, 4);
                        v234 = v131;
                        sub_1DB314BBC(v133, v232, 4);
                        sub_1DB314BBC(v128, v237, 4);
                        result = sub_1DB314BBC(v133, v232, 4);
                        v144 = 0;
                        v236 = v128;
                        v145 = (v128 + 48);
                        v146 = (v133 + 48);
                        while (2)
                        {
                          if (v144 >= *(v133 + 16))
                          {
                            goto LABEL_246;
                          }

                          if (v144 >= *(v236 + 16))
                          {
                            goto LABEL_247;
                          }

                          v153 = *(v146 - 2);
                          v154 = *(v146 - 1);
                          LODWORD(v6) = *v146;
                          v48 = *(v145 - 2);
                          v41 = *(v145 - 1);
                          v42 = *v145;
                          v244 = v145;
                          v246 = v146;
                          if (v6 <= 2)
                          {
                            if (*v146)
                            {
                              if (v6 == 1)
                              {
                                if (v42 != 1)
                                {
                                  goto LABEL_212;
                                }

                                v155 = *(v146 - 2);
                                v156 = *(v145 - 2);
                                v157 = *(v145 - 1);
                                sub_1DB31EB94(v153, v154, 1);
                                result = sub_1DB31EB94(v156, v157, 1);
                                if (v155 != *&v156)
                                {
                                  goto LABEL_228;
                                }
                              }

                              else
                              {
                                if (v42 != 2)
                                {
LABEL_212:
                                  v198 = *(v146 - 2);
                                  v199 = *(v145 - 2);
                                  v200 = *(v146 - 1);
                                  v201 = v41;
                                  v202 = v48;
                                  v203 = v42;
                                  v204 = v42;
                                  v205 = v41;
                                  goto LABEL_227;
                                }

                                v165 = *(v146 - 2);
                                v166 = v48;
                                v167 = v41;
                                sub_1DB31EB94(v153, v154, 2);
                                result = sub_1DB31EB94(v166, v167, 2);
                                if (v165 != v166)
                                {
                                  goto LABEL_228;
                                }
                              }
                            }

                            else
                            {
                              if (*v145)
                              {
                                goto LABEL_212;
                              }

                              v160 = *(v146 - 2);
                              v161 = v48;
                              v162 = v41;
                              sub_1DB31EB94(v153, v154, 0);
                              result = sub_1DB31EB94(v161, v162, 0);
                              if ((v161 ^ v160))
                              {
                                goto LABEL_228;
                              }
                            }

                            goto LABEL_162;
                          }

                          if (v6 == 3)
                          {
                            if (v42 != 3)
                            {
                              v198 = *(v146 - 2);
                              v200 = *(v146 - 1);
                              v202 = v48;
                              v203 = v42;
                              v205 = v41;
                              sub_1DB314BBC(v48, v41, v42);
                              v199 = v198;
                              v201 = v200;
                              v204 = 3;
                              goto LABEL_227;
                            }

                            if (v153 != v48 || v154 != v41)
                            {
                              v147 = *(v146 - 2);
                              v238 = *(v146 - 1);
                              v148 = *(v145 - 2);
                              v230 = v48;
                              v149 = v41;
                              v229 = sub_1DB50BA30();
                              sub_1DB314BBC(v148, v149, 3);
                              sub_1DB314BBC(v147, v238, 3);
                              sub_1DB31EB94(v147, v238, 3);
                              v150 = v230;
                              v151 = v149;
                              v152 = 3;
                              goto LABEL_161;
                            }

                            v163 = *(v146 - 2);
                            v164 = *(v146 - 1);
                            sub_1DB314BBC(v153, v154, 3);
                            sub_1DB314BBC(v163, v164, 3);
                            sub_1DB31EB94(v163, v164, 3);
                            result = sub_1DB31EB94(v163, v164, 3);
                          }

                          else
                          {
                            v233 = *(v146 - 2);
                            v238 = *(v146 - 1);
                            v231 = *(v145 - 1);
                            v39 = *(v145 - 2);
                            v40 = v231;
                            if (v6 == 4)
                            {
                              if (v42 != 4)
                              {
                                goto LABEL_224;
                              }

                              v158 = *(v145 - 2);
                              v159 = *(v145 - 1);
                              sub_1DB314BBC(v48, v41, 4);
                              sub_1DB314BBC(v233, v238, 4);
                              sub_1DB314BBC(v158, v159, 4);
                              sub_1DB314BBC(v233, v238, 4);
                              v229 = sub_1DB46FA44(v233, v158);
                              sub_1DB31EB94(v233, v238, 4);
                              sub_1DB31EB94(v158, v231, 4);
                              sub_1DB31EB94(v158, v231, 4);
                              v150 = v233;
                              v151 = v238;
                              v152 = 4;
                            }

                            else
                            {
                              if (v42 != 5)
                              {
                                v202 = *(v145 - 2);
                                v203 = *v145;
                                v205 = *(v145 - 1);
                                sub_1DB314BBC(v48, v41, v42);
                                v198 = v233;
                                v199 = v233;
                                v200 = v238;
                                v201 = v238;
                                v204 = 5;
                                goto LABEL_227;
                              }

                              v168 = *(v145 - 2);
                              v169 = v41;
                              sub_1DB314BBC(v48, v41, 5);
                              sub_1DB314BBC(v233, v238, 5);
                              sub_1DB314BBC(v168, v169, 5);
                              sub_1DB314BBC(v233, v238, 5);
                              v229 = sub_1DB33C710(v233, v168);
                              sub_1DB31EB94(v233, v238, 5);
                              sub_1DB31EB94(v168, v231, 5);
                              sub_1DB31EB94(v168, v231, 5);
                              v150 = v233;
                              v151 = v238;
                              v152 = 5;
                            }

LABEL_161:
                            result = sub_1DB31EB94(v150, v151, v152);
                            if ((v229 & 1) == 0)
                            {
                              goto LABEL_228;
                            }
                          }

LABEL_162:
                          ++v144;
                          v145 = v244 + 24;
                          v146 = v246 + 24;
                          v133 = v243;
                          if (v234 == v144)
                          {
                            sub_1DB31EB94(v243, v232, 4);
                            sub_1DB31EB94(v236, v237, 4);
                            sub_1DB31EB94(v236, v237, 4);
                            v134 = v243;
                            v135 = v232;
                            goto LABEL_143;
                          }

                          continue;
                        }
                      }

                      v227 = v123;
                      v228 = v124;
                      sub_1DB314BBC(v128, v237, 4);
                      sub_1DB314BBC(v227, v228, 4);
                      sub_1DB31EB94(v227, v228, 4);
                      v220 = v128;
                      v221 = v237;
LABEL_229:
                      v222 = 4;
LABEL_230:
                      sub_1DB31EB94(v220, v221, v222);
                      v83 = v240;
                      goto LABEL_231;
                    }

                    v206 = v123;
                    v207 = v124;
                    v208 = *(v126 + 8);
                    sub_1DB314BBC(v128, v237, v129);
                    sub_1DB314BBC(v206, v207, 4);
                    v209 = v206;
                    v210 = v207;
                    v211 = 4;
LABEL_217:
                    sub_1DB31EB94(v209, v210, v211);
                    v220 = v128;
                    v221 = v208;
                    v222 = v129;
                    goto LABEL_230;
                  }

                  v143 = v124;
                  if (v129 != 5)
                  {
                    v208 = *(v126 + 8);
                    sub_1DB314BBC(v128, v237, v129);
                    sub_1DB314BBC(v243, v143, 5);
                    v209 = v243;
                    v210 = v143;
                    v211 = 5;
                    goto LABEL_217;
                  }

                  sub_1DB314BBC(v128, v237, 5);
                  sub_1DB314BBC(v243, v143, 5);
                  sub_1DB314BBC(v128, v237, 5);
                  sub_1DB314BBC(v243, v143, 5);
                  v245 = sub_1DB33C710(v243, v128);
                  sub_1DB31EB94(v243, v143, 5);
                  sub_1DB31EB94(v128, v237, 5);
                  sub_1DB31EB94(v128, v237, 5);
                  result = sub_1DB31EB94(v243, v143, 5);
                  v83 = v240;
                }

                if ((v245 & 1) == 0)
                {
                  goto LABEL_231;
                }

                goto LABEL_124;
              }

              v115 = v82;
              if (v88 != 5)
              {
                v183 = *v85;
                v184 = *(v85 + 8);
                sub_1DB314BBC(v87, v86, v88);
                sub_1DB314BBC(v83, v115, 5);
                v185 = v83;
                v186 = v115;
                v187 = 5;
                goto LABEL_210;
              }

              v116 = *v85;
              v242 = *(v85 + 8);
              sub_1DB314BBC(v87, v86, 5);
              sub_1DB314BBC(v83, v115, 5);
              sub_1DB314BBC(v116, v242, 5);
              sub_1DB314BBC(v83, v115, 5);
              v251 = sub_1DB33C710(v83, v116);
              sub_1DB31EB94(v83, v115, 5);
              sub_1DB31EB94(v116, v242, 5);
              sub_1DB31EB94(v116, v242, 5);
              v59 = v250;
              result = sub_1DB31EB94(v83, v115, 5);
              v80 = v257;
            }

            if ((v251 & 1) == 0)
            {
              goto LABEL_234;
            }

            goto LABEL_87;
          }

          sub_1DB31EB94(v38, v3, 4);
          v5 = v270;
LABEL_47:
          sub_1DB31EB94(v6, v5, v4);
          a1 = v267;
          v12 = v269;
        }
      }

      if (*(v27 + 16))
      {
        break;
      }

      sub_1DB31EB94(*v27, *(v27 + 8), 0);
      if (v5)
      {
        goto LABEL_239;
      }

      sub_1DB31EB94(v6, v270, 0);
      a1 = v267;
      v12 = v269;
      if ((v2 ^ v6))
      {
        return v23;
      }
    }

    if (v4 == 1)
    {
      break;
    }

    sub_1DB31EB94(*v27, *(v27 + 8), 2);
    if (v5 != 2)
    {
      goto LABEL_239;
    }

    sub_1DB31EB94(v6, v270, 2);
    v28 = v2 == v6;
LABEL_39:
    a1 = v267;
    v12 = v269;
    if (!v28)
    {
      return v23;
    }
  }

  if (v5 == 1)
  {
    sub_1DB31EB94(*v27, *(v27 + 8), 1);
    sub_1DB31EB94(v6, v270, 1);
    v28 = *&v2 == *&v6;
    goto LABEL_39;
  }

LABEL_238:
  sub_1DB31EB94(v2, v3, v4);
LABEL_239:
  sub_1DB31EB94(v6, v270, v5);
  return 0;
}

uint64_t ScalarDictionary.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a2;

  sub_1DB30C4B8(a1, v13, &qword_1ECC42E38, &qword_1DB50FB80);
  if (!v14)
  {
    sub_1DB30623C(v13, &qword_1ECC42E38, &qword_1DB50FB80);
    v15 = 0u;
    v16 = 0u;
    v17 = 0;
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(v13, v14);
  sub_1DB408B14(&v15);
  __swift_destroy_boxed_opaque_existential_0(v13);
  if (!*(&v16 + 1))
  {
LABEL_6:
    sub_1DB30623C(&v15, &qword_1ECC42EA0, &qword_1DB50FB88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC470F0, &unk_1DB50F4B0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1DB50EE90;
    sub_1DB315178();
    *(v10 + 32) = swift_allocError();
    *v11 = xmmword_1DB511070;
    *(v11 + 16) = 0x20000001F56F24A0uLL;
    *(v11 + 24) = 0;
    swift_allocError();
    *v12 = &type metadata for ScalarDictionary;
    v12[1] = v10;
    v12[2] = 0;
    v12[3] = 0;
    swift_willThrow();
    return sub_1DB3151CC(a1);
  }

  v18[0] = v15;
  v18[1] = v16;
  v19 = v17;
  v7 = __swift_project_boxed_opaque_existential_1(v18, *(&v16 + 1));
  v8 = sub_1DB4A052C(*v7);
  sub_1DB3151CC(a1);
  result = sub_1DB317740(v18);
  if (!v3)
  {
    *a3 = v8;
  }

  return result;
}

uint64_t ScalarDictionary.init(tryDeserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  sub_1DB30C4B8(a1, v9, &qword_1ECC42E38, &qword_1DB50FB80);
  if (!v10)
  {

    sub_1DB30623C(v9, &qword_1ECC42E38, &qword_1DB50FB80);
    v11 = 0u;
    v12 = 0u;
    v13 = 0;
LABEL_6:
    sub_1DB3151CC(a1);
    result = sub_1DB30623C(&v11, &qword_1ECC42EA0, &qword_1DB50FB88);
    v7 = MEMORY[0x1E69E7CC8];
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(v9, v10);
  sub_1DB408B14(&v11);
  __swift_destroy_boxed_opaque_existential_0(v9);
  if (!*(&v12 + 1))
  {

    goto LABEL_6;
  }

  v14[0] = v11;
  v14[1] = v12;
  v15 = v13;
  v6 = *__swift_project_boxed_opaque_existential_1(v14, *(&v12 + 1));

  v7 = sub_1DB4A1B7C(v6, v5);
  swift_bridgeObjectRelease_n();
  sub_1DB3151CC(a1);
  result = sub_1DB317740(v14);
LABEL_7:
  *a3 = v7;
  return result;
}

uint64_t sub_1DB33E4A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1DB30C4B8(a3, v25, &qword_1ECC42E38, &qword_1DB50FB80);
  if (!v26)
  {
    sub_1DB30623C(v25, &qword_1ECC42E38, &qword_1DB50FB80);
    v21 = 0u;
    v22 = 0u;
LABEL_9:
    v13 = &qword_1ECC426B0;
    v14 = &qword_1DB50EEB0;
    goto LABEL_10;
  }

  v9 = __swift_project_boxed_opaque_existential_1(v25, v26);
  sub_1DB300B14(v9, v24);
  sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
  if (swift_dynamicCast())
  {

    v21 = 0u;
    v22 = 0u;
  }

  else
  {
    sub_1DB300B14(v9, &v21);
  }

  __swift_destroy_boxed_opaque_existential_0(v25);
  if (!*(&v22 + 1))
  {
    goto LABEL_9;
  }

  sub_1DB30C200(&v21, v27);
  sub_1DB300B14(v27, v25);
  ScalarDictionary.Value.init(rawValue:)(v25, &v21);
  v10 = v22;
  if (v22 != 255)
  {
    v11 = v21;
    __swift_destroy_boxed_opaque_existential_0(v27);
    *a5 = a1;
    *(a5 + 8) = a2;
    *(a5 + 16) = v11;
    *(a5 + 32) = v10;
  }

  sub_1DB31556C(0xD000000000000027, 0x80000001DB529830, a4, v25);
  sub_1DB30C4B8(v25, &v21, &qword_1ECC42E48, &qword_1DB50FB90);
  v15 = *(&v22 + 1);
  if (*(&v22 + 1))
  {
    v16 = v23;
    __swift_project_boxed_opaque_existential_1(&v21, *(&v22 + 1));
    sub_1DB315178();
    v17 = swift_allocError();
    v18 = MEMORY[0x1E69E7CC0];
    *v19 = a1;
    v19[1] = a2;
    v19[2] = 0x40000001F56F24A0uLL;
    v19[3] = v18;
    v20 = *(v16 + 8);

    v20(&type metadata for ScalarDictionary.Value, v17, v15, v16);

    sub_1DB30623C(v25, &qword_1ECC42E48, &qword_1DB50FB90);
    __swift_destroy_boxed_opaque_existential_0(v27);

    result = __swift_destroy_boxed_opaque_existential_0(&v21);
    goto LABEL_11;
  }

  sub_1DB30623C(v25, &qword_1ECC42E48, &qword_1DB50FB90);
  __swift_destroy_boxed_opaque_existential_0(v27);
  v13 = &qword_1ECC42E48;
  v14 = &qword_1DB50FB90;
LABEL_10:
  result = sub_1DB30623C(&v21, v13, v14);
LABEL_11:
  *(a5 + 32) = 0;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  return result;
}

Swift::Bool __swiftcall ScalarDictionary.contains(_:)(Swift::String a1)
{
  if (*(*v1 + 16))
  {
    sub_1DB306160(a1._countAndFlagsBits, a1._object);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t ScalarDictionary.subscript.getter(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (*(v3 + 16) && (v4 = sub_1DB306160(a1, a2), (v5 & 1) != 0) && (v6 = (*(v3 + 56) + 24 * v4), !v6[16]))
  {
    return *v6 & 1;
  }

  else
  {
    return 2;
  }
}

{
  v3 = *v2;
  if (!*(v3 + 16))
  {
    return 0;
  }

  v4 = sub_1DB306160(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = (*(v3 + 56) + 24 * v4);
  if (v6[16] == 1)
  {
    return *v6;
  }

  else
  {
    return 0;
  }
}

{
  v3 = *v2;
  if (*(v3 + 16) && (v4 = sub_1DB306160(a1, a2), (v5 & 1) != 0) && (v6 = (*(v3 + 56) + 24 * v4), v6[16] == 2))
  {
    return *v6;
  }

  else
  {
    return 0;
  }
}

{
  v3 = *v2;
  if (!*(v3 + 16))
  {
    return 0;
  }

  v4 = sub_1DB306160(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(v3 + 56) + 24 * v4;
  if (*(v6 + 16) != 3)
  {
    return 0;
  }

  v8 = *v6;
  v7 = *(v6 + 8);

  return v8;
}

{
  v3 = *v2;
  if (!*(v3 + 16))
  {
    return 0;
  }

  v4 = sub_1DB306160(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(v3 + 56) + 24 * v4;
  if (*(v6 + 16) != 5)
  {
    return 0;
  }

  v7 = *v6;
}

{
  v3 = *v2;
  if (!*(v3 + 16))
  {
    return 0;
  }

  v4 = sub_1DB306160(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(v3 + 56) + 24 * v4;
  if (*(v6 + 16) != 4)
  {
    return 0;
  }

  v8 = *v6;
  v7 = *(v6 + 8);
  MEMORY[0x1EEE9AC00](v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC433B0, &qword_1DB511098);
  sub_1DB3423C0();
  v9 = sub_1DB50A890();
  sub_1DB31EB94(v8, v7, 4);
  return v9;
}

unint64_t sub_1DB33E830@<X0>(unint64_t result@<X0>, uint64_t *a2@<X1>, char *a3@<X8>)
{
  v4 = *result;
  if (*(*result + 16) && (result = sub_1DB306160(*a2, a2[1]), (v5 & 1) != 0) && (v6 = (*(v4 + 56) + 24 * result), !v6[16]))
  {
    v7 = *v6 & 1;
  }

  else
  {
    v7 = 2;
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1DB33E894(unsigned __int8 *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a3;
  v4 = a3[1];
  v6 = *a1;

  if (v6 == 2)
  {
    _s7JetCore16ScalarDictionaryV11removeValue6forKeyAC0F0OSgSS_tF_0(v5, v4, v10);

    return sub_1DB33C254(v10[0], v10[1], v11);
  }

  else
  {
    v8 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10[0] = *a2;
    *a2 = 0x8000000000000000;
    sub_1DB31D420(v6 & 1, 0, 0, v5, v4, isUniquelyReferenced_nonNull_native);

    *a2 = v10[0];
  }

  return result;
}

uint64_t ScalarDictionary.subscript.setter(char a1, uint64_t a2, uint64_t a3)
{
  if (a1 == 2)
  {
    _s7JetCore16ScalarDictionaryV11removeValue6forKeyAC0F0OSgSS_tF_0(a2, a3, v10);

    return sub_1DB33C254(v10[0], v10[1], v11);
  }

  else
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10[0] = *v3;
    *v3 = 0x8000000000000000;
    sub_1DB31D420(a1 & 1, 0, 0, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v10[0];
  }

  return result;
}

uint64_t (*ScalarDictionary.subscript.modify(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  v5 = *v3;
  if (*(v5 + 16) && (v6 = sub_1DB306160(a2, a3), (v7 & 1) != 0) && (v8 = (*(v5 + 56) + 24 * v6), !v8[16]))
  {
    v9 = *v8 & 1;
  }

  else
  {
    v9 = 2;
  }

  *(a1 + 24) = v9;
  return sub_1DB33EA94;
}

uint64_t sub_1DB33EA94(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v3 = *a1;
  v4 = *(a1 + 24);
  if (v4 == 2)
  {
    _s7JetCore16ScalarDictionaryV11removeValue6forKeyAC0F0OSgSS_tF_0(v3, v2, v8);
    return sub_1DB33C254(v8[0], v8[1], v9);
  }

  else
  {

    v6 = *v1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8[0] = *v1;
    *v1 = 0x8000000000000000;
    sub_1DB31D420(v4 & 1, 0, 0, v3, v2, isUniquelyReferenced_nonNull_native);

    *v1 = v8[0];
  }

  return result;
}

unint64_t sub_1DB33EBA4@<X0>(unint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *result;
  if (*(*result + 16) && (result = sub_1DB306160(*a2, a2[1]), (v5 & 1) != 0))
  {
    v6 = *(v4 + 56) + 24 * result;
    v7 = *v6;
    LODWORD(v6) = *(v6 + 16);
    v8 = v6 == 1;
    v9 = v6 != 1;
    if (!v8)
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
    v9 = 1;
  }

  *a3 = v7;
  *(a3 + 8) = v9;
  return result;
}

uint64_t ScalarDictionary.subscript.setter(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  return sub_1DB33EE9C(a1, a2, a3, a4, 1);
}

{
  return sub_1DB33EE9C(a1, a2, a3, a4, 2);
}

void (*ScalarDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[3] = a3;
  v7[4] = v3;
  v7[2] = a2;
  v9 = *v3;
  if (*(v9 + 16) && (v10 = sub_1DB306160(a2, a3), (v11 & 1) != 0))
  {
    v12 = *(v9 + 56) + 24 * v10;
    v13 = *v12;
    LODWORD(v12) = *(v12 + 16);
    v14 = v12 == 1;
    v15 = v12 != 1;
    if (!v14)
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
    v15 = 1;
  }

  *v8 = v13;
  *(v8 + 8) = v15;
  return sub_1DB33ECF0;
}

{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[3] = a3;
  v7[4] = v3;
  v7[2] = a2;
  v9 = *v3;
  if (*(v9 + 16) && (v10 = sub_1DB306160(a2, a3), (v11 & 1) != 0))
  {
    v12 = *(v9 + 56) + 24 * v10;
    v13 = *v12;
    LODWORD(v12) = *(v12 + 16);
    v14 = v12 == 2;
    v15 = v12 != 2;
    if (!v14)
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
    v15 = 1;
  }

  *v8 = v13;
  *(v8 + 8) = v15;
  return sub_1DB33F030;
}

unint64_t sub_1DB33ED54@<X0>(unint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *result;
  if (*(*result + 16) && (result = sub_1DB306160(*a2, a2[1]), (v5 & 1) != 0))
  {
    v6 = *(v4 + 56) + 24 * result;
    v7 = *v6;
    LODWORD(v6) = *(v6 + 16);
    v8 = v6 == 2;
    v9 = v6 != 2;
    if (!v8)
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
    v9 = 1;
  }

  *a3 = v7;
  *(a3 + 8) = v9;
  return result;
}

uint64_t sub_1DB33EDC4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v7 = *a3;
  v6 = a3[1];
  if (*(a1 + 8))
  {
    v8 = a3[1];

    _s7JetCore16ScalarDictionaryV11removeValue6forKeyAC0F0OSgSS_tF_0(v7, v6, v15);

    return sub_1DB33C254(v15[0], v15[1], v16);
  }

  else
  {
    v11 = *a1;
    v12 = a3[1];

    v13 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15[0] = *a2;
    *a2 = 0x8000000000000000;
    sub_1DB31D420(v11, 0, a5, v7, v6, isUniquelyReferenced_nonNull_native);

    *a2 = v15[0];
  }

  return result;
}

uint64_t sub_1DB33EE9C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a2)
  {
    _s7JetCore16ScalarDictionaryV11removeValue6forKeyAC0F0OSgSS_tF_0(a3, a4, v13);

    return sub_1DB33C254(v13[0], v13[1], v14);
  }

  else
  {
    v10 = *v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13[0] = *v5;
    *v5 = 0x8000000000000000;
    sub_1DB31D420(a1, 0, a5, a3, a4, isUniquelyReferenced_nonNull_native);

    *v5 = v13[0];
  }

  return result;
}

void sub_1DB33F038(uint64_t **a1, uint64_t a2, char a3)
{
  v3 = *a1;
  v5 = (*a1)[3];
  v4 = (*a1)[4];
  v6 = (*a1)[2];
  if ((*a1)[1])
  {
    _s7JetCore16ScalarDictionaryV11removeValue6forKeyAC0F0OSgSS_tF_0((*a1)[2], v5, v12);
    sub_1DB33C254(v12[0], v12[1], v13);
  }

  else
  {
    v7 = *v3;
    v8 = (*a1)[3];

    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12[0] = *v4;
    *v4 = 0x8000000000000000;
    sub_1DB31D420(v7, 0, a3, v6, v5, isUniquelyReferenced_nonNull_native);

    *v4 = v12[0];
  }

  free(v3);
}

uint64_t sub_1DB33F17C(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a3;
  v4 = a3[1];
  v6 = a1[1];
  if (v6)
  {
    v7 = *a1;
    v8 = a3[1];

    v9 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13[0] = *a2;
    *a2 = 0x8000000000000000;
    sub_1DB31D420(v7, v6, 3, v5, v4, isUniquelyReferenced_nonNull_native);

    *a2 = v13[0];
  }

  else
  {
    v12 = a3[1];

    _s7JetCore16ScalarDictionaryV11removeValue6forKeyAC0F0OSgSS_tF_0(v5, v4, v13);

    return sub_1DB33C254(v13[0], v13[1], v14);
  }

  return result;
}

uint64_t ScalarDictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v9 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12[0] = *v4;
    *v4 = 0x8000000000000000;
    sub_1DB31D420(a1, a2, 3, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v12[0];
  }

  else
  {
    _s7JetCore16ScalarDictionaryV11removeValue6forKeyAC0F0OSgSS_tF_0(a3, a4, v12);

    return sub_1DB33C254(v12[0], v12[1], v13);
  }

  return result;
}

void (*ScalarDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[3] = a3;
  v7[4] = v3;
  v7[2] = a2;
  v9 = *v3;
  if (*(v9 + 16) && (v10 = sub_1DB306160(a2, a3), (v11 & 1) != 0) && (v12 = *(v9 + 56) + 24 * v10, *(v12 + 16) == 3))
  {
    v14 = *v12;
    v13 = *(v12 + 8);
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  *v8 = v14;
  v8[1] = v15;
  return sub_1DB33F3DC;
}

void sub_1DB33F3DC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[3];
  v3 = (*a1)[4];
  v6 = (*a1)[1];
  v5 = (*a1)[2];
  if (a2)
  {
    if (v6)
    {
      v7 = *v2;
      v8 = (*a1)[3];

      v9 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      *v3 = 0x8000000000000000;
      sub_1DB31D420(v7, v6, 3, v5, v4, isUniquelyReferenced_nonNull_native);

      *v3 = v16;
    }

    else
    {
      _s7JetCore16ScalarDictionaryV11removeValue6forKeyAC0F0OSgSS_tF_0((*a1)[2], v4, &v16);
      sub_1DB33C254(v16, v17, v18);
    }

    v15 = v2[1];
  }

  else if (v6)
  {
    v11 = *v2;
    v12 = (*a1)[3];

    v13 = *v3;
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v3;
    *v3 = 0x8000000000000000;
    sub_1DB31D420(v11, v6, 3, v5, v4, v14);

    *v3 = v16;
  }

  else
  {
    _s7JetCore16ScalarDictionaryV11removeValue6forKeyAC0F0OSgSS_tF_0((*a1)[2], v4, &v16);
    sub_1DB33C254(v16, v17, v18);
  }

  free(v2);
}

uint64_t sub_1DB33F5A0(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a3;
  v4 = a3[1];
  v6 = *a1;
  if (*a1)
  {
    v7 = a3[1];

    v8 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12[0] = *a2;
    *a2 = 0x8000000000000000;
    sub_1DB31D420(v6, 0, 5, v5, v4, isUniquelyReferenced_nonNull_native);

    *a2 = v12[0];
  }

  else
  {
    v11 = a3[1];

    _s7JetCore16ScalarDictionaryV11removeValue6forKeyAC0F0OSgSS_tF_0(v5, v4, v12);

    return sub_1DB33C254(v12[0], v12[1], v13);
  }

  return result;
}

uint64_t ScalarDictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v7 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10[0] = *v3;
    *v3 = 0x8000000000000000;
    sub_1DB31D420(a1, 0, 5, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v10[0];
  }

  else
  {
    _s7JetCore16ScalarDictionaryV11removeValue6forKeyAC0F0OSgSS_tF_0(a2, a3, v10);

    return sub_1DB33C254(v10[0], v10[1], v11);
  }

  return result;
}

{
  if (a1)
  {
    v10[0] = a1;
    MEMORY[0x1EEE9AC00](a1);
    sub_1DB50AA60();
    swift_getWitnessTable();
    v6 = sub_1DB50A890();

    v7 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10[0] = *v3;
    *v3 = 0x8000000000000000;
    sub_1DB31D420(v6, 0, 4, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v10[0];
  }

  else
  {
    _s7JetCore16ScalarDictionaryV11removeValue6forKeyAC0F0OSgSS_tF_0(a2, a3, v10);

    return sub_1DB33C254(v10[0], v10[1], v11);
  }

  return result;
}

uint64_t (*ScalarDictionary.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  v5 = *v3;
  if (*(v5 + 16) && (v6 = sub_1DB306160(a2, a3), (v7 & 1) != 0) && (v8 = *(v5 + 56) + 24 * v6, *(v8 + 16) == 5))
  {
    v9 = *v8;
  }

  else
  {
    v10 = 0;
  }

  *a1 = v10;
  return sub_1DB33F7B4;
}

uint64_t sub_1DB33F7B4(uint64_t *a1, char a2)
{
  v3 = a1[2];
  v2 = a1[3];
  v4 = *a1;
  v5 = a1[1];
  if (a2)
  {
    if (v4)
    {
      v6 = a1[2];

      v7 = *v2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      *v2 = 0x8000000000000000;
      sub_1DB31D420(v4, 0, 5, v5, v3, isUniquelyReferenced_nonNull_native);

      *v2 = v13;
    }

    else
    {
      _s7JetCore16ScalarDictionaryV11removeValue6forKeyAC0F0OSgSS_tF_0(a1[1], v3, &v13);
      sub_1DB33C254(v13, v14, v15);
    }
  }

  else if (v4)
  {
    v9 = a1[2];

    v10 = *v2;
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    *v2 = 0x8000000000000000;
    sub_1DB31D420(v4, 0, 5, v5, v3, v11);

    *v2 = v13;
  }

  else
  {
    _s7JetCore16ScalarDictionaryV11removeValue6forKeyAC0F0OSgSS_tF_0(a1[1], v3, &v13);
    return sub_1DB33C254(v13, v14, v15);
  }

  return result;
}

uint64_t sub_1DB33FA2C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v9 = *a1;
  v10 = v5;
  ScalarDictionary.Value.rawValue.getter(v8);
  v6 = swift_dynamicCast();
  return (*(*(a2 - 8) + 56))(a3, v6 ^ 1u, 1, a2);
}

uint64_t sub_1DB33FC38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8[3] = a2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v8);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_0, a1, a2);
  return ScalarDictionary.Value.init(rawValue:)(v8, a3);
}

void (*ScalarDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(0x30uLL);
  }

  *a1 = v11;
  v11[4] = a5;
  v11[5] = v5;
  v11[2] = a3;
  v11[3] = a4;
  v11[1] = a2;
  v13 = *v5;
  *v11 = ScalarDictionary.subscript.getter(a2, a3);
  return sub_1DB33FD80;
}

void sub_1DB33FD80(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[4];
  v3 = (*a1)[5];
  v6 = (*a1)[1];
  v5 = (*a1)[2];
  v7 = **a1;
  if (a2)
  {
    v8 = **a1;

    ScalarDictionary.subscript.setter(v7, v6, v5);
    v9 = *v2;
  }

  else
  {
    v10 = (*a1)[2];

    ScalarDictionary.subscript.setter(v7, v6, v5);
  }

  free(v2);
}

uint64_t ScalarDictionary.merge(_:uniquingKeysWith:)(uint64_t *a1, void (*a2)(__int128 *__return_ptr, id *, uint64_t *))
{
  v4 = *a1;

  v5 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  *v2 = 0x8000000000000000;
  sub_1DB3268A4(v4, sub_1DB34208C, 0, isUniquelyReferenced_nonNull_native, a2);
  v7 = *v2;

  *v2 = v9;
  return result;
}

uint64_t ScalarDictionary.merging(_:uniquingKeysWith:)@<X0>(uint64_t *a1@<X0>, void (*a2)(__int128 *__return_ptr, id *, uint64_t *)@<X1>, void *a3@<X8>)
{
  v7 = *a1;
  v8 = *v3;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1DB3268A4(v7, sub_1DB34208C, 0, isUniquelyReferenced_nonNull_native, a2);

  if (v4)
  {
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1DB33FFC0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  result = ScalarDictionary.init(tryDeserializing:using:)(a1, a2, &v5);
  *a3 = v5;
  return result;
}

uint64_t ScalarDictionary.Value.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BDD0();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    v6 = sub_1DB50BA50() & 1;
    __swift_destroy_boxed_opaque_existential_0(v8);
    *a2 = v6;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t ScalarDictionary.Value.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BE20();
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
      sub_1DB50BAC0();
    }

    else
    {
      __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
      if (v4 == 4)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC433B0, &qword_1DB511098);
        sub_1DB342494(&qword_1ECC433E0, sub_1DB34250C);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC433C0, &unk_1DB5110A0);
        sub_1DB342560(&qword_1ECC433F0, sub_1DB34250C);
      }

      sub_1DB50BB00();
    }
  }

  else if (v4)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
    if (v4 == 1)
    {
      sub_1DB50BAE0();
    }

    else
    {
      sub_1DB50BAF0();
    }
  }

  else
  {
    __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
    sub_1DB50BAD0();
  }

  return __swift_destroy_boxed_opaque_existential_0(v7);
}

uint64_t ScalarDictionary.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BDD0();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC433C0, &unk_1DB5110A0);
    sub_1DB342560(&qword_1ECC433C8, sub_1DB342440);
    sub_1DB50BA80();
    v6 = v8[6];
    __swift_destroy_boxed_opaque_existential_0(v8);
    *a2 = v6;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t ScalarDictionary.init(_partiallyFrom:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1DB30BE90(a1, v6);
  v4 = sub_1DB3407C4(v6);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v4;
  return result;
}

uint64_t sub_1DB3407C4(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A40, &unk_1DB516260);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v52 - v5;
  v65 = MEMORY[0x1E69E7CC8];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = sub_1DB50BDE0();
  sub_1DB31F900(0xD000000000000027, 0x80000001DB529830, v8, v64);

  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB3053A8();
  sub_1DB50BDF0();
  v52 = v3;
  v53 = a1;
  v57 = v6;
  v10 = sub_1DB50B7A0();
  v11 = *(v10 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC433C0, &unk_1DB5110A0);
  sub_1DB50A4F0();
  v54 = v10;
  v12 = *(v10 + 16);
  if (!v12)
  {
LABEL_22:

    (*(v52 + 8))(v57, v2);
    sub_1DB30623C(v64, &qword_1ECC42E48, &qword_1DB50FB90);
    v50 = v65;
    __swift_destroy_boxed_opaque_existential_0(v53);
    return v50;
  }

  v13 = (v54 + 48);
  v55 = v2;
  while (1)
  {
    v15 = *(v13 - 2);
    v14 = *(v13 - 1);
    v16 = *v13;
    if (v16 == 1)
    {
      sub_1DB3184A4(*(v13 - 2), *(v13 - 1), 1);

      v17 = v15;
      v18 = v14;
    }

    else
    {
      v61 = *(v13 - 2);
      v17 = sub_1DB50B8F0();
      v18 = v19;
    }

    v58 = v15;
    v59 = v14;
    v60 = v16;
    sub_1DB342440();
    sub_1DB50B780();
    sub_1DB3184B4(v15, v14, v16);
    v20 = v65;
    if (v63 == 255)
    {
      v32 = sub_1DB306160(v17, v18);
      v34 = v33;

      if (v34)
      {
        v35 = v65;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v58 = v35;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1DB3119D4();
          v35 = v58;
        }

        v37 = *(*(v35 + 48) + 16 * v32 + 8);

        sub_1DB31EB94(*(*(v35 + 56) + 24 * v32), *(*(v35 + 56) + 24 * v32 + 8), *(*(v35 + 56) + 24 * v32 + 16));
        sub_1DB3101C4(v32, v35);
        v65 = v35;
      }

      goto LABEL_3;
    }

    v56 = v63;
    v22 = v61;
    v21 = v62;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v58 = v20;
    v24 = sub_1DB306160(v17, v18);
    v26 = v20[2];
    v27 = (v25 & 1) == 0;
    v28 = __OFADD__(v26, v27);
    v29 = v26 + v27;
    if (v28)
    {
      break;
    }

    v30 = v25;
    if (v20[3] < v29)
    {
      sub_1DB31A114(v29, v23);
      v24 = sub_1DB306160(v17, v18);
      if ((v30 & 1) != (v31 & 1))
      {
        goto LABEL_25;
      }

LABEL_17:
      if (v30)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    }

    if (v23)
    {
      goto LABEL_17;
    }

    v44 = v24;
    sub_1DB3119D4();
    v24 = v44;
    if (v30)
    {
LABEL_18:
      v38 = v24;

      v39 = v58;
      v40 = v58[7] + 24 * v38;
      v41 = *v40;
      v42 = *(v40 + 8);
      *v40 = v22;
      *(v40 + 8) = v21;
      v43 = *(v40 + 16);
      *(v40 + 16) = v56;
      sub_1DB31EB94(v41, v42, v43);
      v65 = v39;
      v2 = v55;
      goto LABEL_3;
    }

LABEL_20:
    v45 = v58;
    v58[(v24 >> 6) + 8] |= 1 << v24;
    v46 = (v45[6] + 16 * v24);
    *v46 = v17;
    v46[1] = v18;
    v47 = v45[7] + 24 * v24;
    *v47 = v22;
    *(v47 + 8) = v21;
    *(v47 + 16) = v56;
    v48 = v45[2];
    v28 = __OFADD__(v48, 1);
    v49 = v48 + 1;
    if (v28)
    {
      goto LABEL_24;
    }

    v45[2] = v49;
    v65 = v45;
    v2 = v55;
LABEL_3:
    v13 += 24;
    if (!--v12)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_1DB50BC20();
  __break(1u);
  return result;
}