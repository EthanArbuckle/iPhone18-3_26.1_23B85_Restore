void sub_1C4965B50(void (*a1)(void *), uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v123 = a6;
  LODWORD(v124) = a4;
  v125 = a3;
  v127 = a1;
  v128 = a2;
  v130 = type metadata accessor for PhotosPersonObservation(0);
  v117 = *(v130 - 8);
  v6 = *(v117 + 64);
  v7 = MEMORY[0x1EEE9AC00](v130);
  v121 = &v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v120 = &v111 - v9;
  v10 = sub_1C4EF9378();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v118 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AssetPersonMetadata(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1C456902C(&qword_1EC0BFD88, &qword_1C4F3DA08);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v21 = &v111 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v111 - v22;
  v24 = sub_1C456902C(&qword_1EC0C2C00, &qword_1C4F3DA10);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8);
  v129 = &v111 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v131 = &v111 - v28;
  v119 = sub_1C456902C(&qword_1EC0BFD90, &qword_1C4F3DA18);
  v29 = *(*(v119 - 8) + 64);
  MEMORY[0x1EEE9AC00](v119);
  v132 = &v111 - v30;
  v31 = sub_1C4EF9CD8();
  v32 = *(v31 - 8);
  v33 = v32[8];
  v34 = MEMORY[0x1EEE9AC00](v31);
  v126 = &v111 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v111 - v36;
  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  v38 = sub_1C4F00978();
  v39 = sub_1C442B738(v38, qword_1EDDFECB8);
  v40 = v32[2];
  v40(v37, v127, v31);
  v40(v126, v128, v31);
  v122 = v39;
  v41 = sub_1C4F00968();
  v42 = sub_1C4F01CF8();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    LODWORD(v115) = v42;
    v44 = v43;
    v116 = swift_slowAlloc();
    v135[0] = v116;
    *v44 = 136315650;
    v113 = sub_1C496CC38(&qword_1EDDFCD50, MEMORY[0x1E6969530]);
    v114 = v41;
    v45 = sub_1C4F02858();
    v47 = v46;
    v112 = v32[1];
    v112(v37, v31);
    v48 = sub_1C441D828(v45, v47, v135);

    *(v44 + 4) = v48;
    *(v44 + 12) = 2080;
    v49 = v126;
    v50 = sub_1C4F02858();
    v52 = v51;
    v112(v49, v31);
    v53 = sub_1C441D828(v50, v52, v135);

    *(v44 + 14) = v53;
    *(v44 + 22) = 1024;
    v54 = v124;
    *(v44 + 24) = v124 & 1;
    v55 = v114;
    _os_log_impl(&dword_1C43F8000, v114, v115, "InternalXPC: PhotosMetadata [startDate=%s, endDate = %s, newestFirst= %{BOOL}d", v44, 0x1Cu);
    v56 = v116;
    swift_arrayDestroy();
    MEMORY[0x1C6942830](v56, -1, -1);
    MEMORY[0x1C6942830](v44, -1, -1);
  }

  else
  {

    v57 = v32[1];
    v57(v126, v31);
    v57(v37, v31);
    v54 = v124;
  }

  type metadata accessor for PhotosMetadataFetcher();
  inited = swift_initStackObject();
  sub_1C4AB0D2C(v127, v128, v125, v54 & 1, v135);
  v116 = inited;
  v125 = 0;
  v59 = v135[1];
  v60 = v135[2];
  v61 = v135[3];
  v62 = v135[4];
  v63 = v135[0];

  v64 = v132;
  v124 = v63;
  sub_1C4EFFAB8();
  v65 = (v64 + *(sub_1C456902C(&qword_1EC0BFD98, &qword_1C4F3DA20) + 44));
  v127 = v59;
  v128 = v60;
  *v65 = v59;
  v65[1] = v60;
  v66 = 0;
  v67 = (v64 + *(sub_1C456902C(&qword_1EC0BFDA0, &unk_1C4F3DA28) + 44));
  *v67 = v61;
  v67[1] = v62;
  v68 = (v64 + *(v119 + 44));
  v126 = MEMORY[0x1E69E7CC0];
  *v68 = 0;
  for (v68[1] = 0; ; v68[1] = 0)
  {
    while (1)
    {
      if (!v66)
      {
        goto LABEL_10;
      }

      v69 = *(v66 + 16);
      v70 = v68[1];
      if (v70 == v69)
      {
        break;
      }

      if (v70 >= v69)
      {
        __break(1u);
        return;
      }

      v119 = (*(v117 + 80) + 32) & ~*(v117 + 80);
      v115 = *(v117 + 72);
      v75 = v66 + v119 + v115 * v70;
      v76 = v129;
      sub_1C496C838(v75, v129);
      v68[1] = v70 + 1;
      v77 = v130;
      sub_1C440BAA8(v76, 0, 1, v130);
      v78 = v76;
      v79 = v131;
      sub_1C44CDA30(v78, v131, &qword_1EC0C2C00, &qword_1C4F3DA10);
      if (sub_1C44157D4(v79, 1, v77) == 1)
      {
        goto LABEL_25;
      }

      v80 = v120;
      sub_1C496C7A8(v79, v120);
      sub_1C496C838(v80, v121);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C458E278(0, *(v126 + 2) + 1, 1, v126);
        v126 = v86;
      }

      v81 = v119;
      v83 = *(v126 + 2);
      v82 = *(v126 + 3);
      v84 = v83 + 1;
      if (v83 >= v82 >> 1)
      {
        v119 = v83 + 1;
        sub_1C458E278(v82 > 1, v83 + 1, 1, v126);
        v84 = v119;
        v126 = v87;
      }

      v85 = v126;
      *(v126 + 2) = v84;
      sub_1C496C7A8(v121, &v85[v81 + v83 * v115]);
      sub_1C4453F54();
      v66 = *v68;
    }

    v71 = v129;
    sub_1C440BAA8(v129, 1, 1, v130);
    sub_1C4420C3C(v71, &qword_1EC0C2C00, &qword_1C4F3DA10);
LABEL_10:
    sub_1C4EFFA98();
    if (v134[3])
    {
      sub_1C4461BB8(0, &qword_1EDDDB860, 0x1E6978630);
      if (swift_dynamicCast())
      {
        v72 = v133;
        v134[0] = v133;
        v127(v134);

        sub_1C440BAA8(v23, 0, 1, v13);
        v73 = v131;
        goto LABEL_15;
      }
    }

    else
    {
      sub_1C4420C3C(v134, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    }

    v73 = v131;
    sub_1C440BAA8(v23, 1, 1, v13);
LABEL_15:
    sub_1C44CDA30(v23, v21, &qword_1EC0BFD88, &qword_1C4F3DA08);
    if (sub_1C44157D4(v21, 1, v13) == 1)
    {
      break;
    }

    sub_1C496C7A8(v21, v16);
    v61(v134, v16);
    sub_1C4453F54();
    v66 = v134[0];
    v74 = *v68;

    *v68 = v66;
  }

  sub_1C440BAA8(v73, 1, 1, v130);
LABEL_25:
  sub_1C4420C3C(v132, &qword_1EC0BFD90, &qword_1C4F3DA18);

  v88 = objc_autoreleasePoolPush();
  v89 = sub_1C4EF93D8();
  v90 = *(v89 + 48);
  v91 = *(v89 + 52);
  swift_allocObject();
  sub_1C4EF93C8();
  sub_1C4EF9368();
  sub_1C4EF9388();
  v135[0] = v126;
  sub_1C456902C(&qword_1EC0BFDA8, &qword_1C4F3DA38);
  sub_1C496C6F4();
  v92 = v125;
  v93 = sub_1C4EF93B8();
  if (v92)
  {
    v95 = v92;

    objc_autoreleasePoolPop(v88);

    v96 = v123;
    v97 = v92;
    v98 = sub_1C4F00968();
    v99 = sub_1C4F01CD8();

    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v135[0] = v101;
      *v100 = 136315138;
      v134[0] = v95;
      v102 = v95;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v103 = sub_1C4F01198();
      v105 = sub_1C441D828(v103, v104, v135);

      *(v100 + 4) = v105;
      _os_log_impl(&dword_1C43F8000, v98, v99, "InternalXPC: PhotosMetadata failed: %s", v100, 0xCu);
      sub_1C440962C(v101);
      MEMORY[0x1C6942830](v101, -1, -1);
      MEMORY[0x1C6942830](v100, -1, -1);
    }

    v106 = v95;
    v107 = sub_1C4EF9798();
    (v96)[2](v96, 0, v107);
  }

  else
  {
    v108 = v93;
    v109 = v94;

    sub_1C44344B8(v108, v109);
    v110 = sub_1C4EF9A38();
    v96 = v123;
    (*(v123 + 16))(v123, v110, 0);

    sub_1C4434000(v108, v109);
    sub_1C4434000(v108, v109);

    objc_autoreleasePoolPop(v88);
  }

  _Block_release(v96);
}

void InternalXPC.Server.photosMetadata(withStart:end:maxEvents:newestFirst:completion:)()
{
  sub_1C43FBD3C();
  v144 = v3;
  v145 = v4;
  LODWORD(v146) = v5;
  v147 = v6;
  v149 = v7;
  v150 = v8;
  v152 = type metadata accessor for PhotosPersonObservation(0);
  v9 = sub_1C43FCDF8(v152);
  v138 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FD230();
  sub_1C43FCE30(v14);
  v15 = sub_1C4EF9378();
  v16 = sub_1C43FBD18(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  sub_1C43FCE30(v20 - v19);
  v21 = type metadata accessor for AssetPersonMetadata(0);
  v22 = sub_1C43FBCE0(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBCC4();
  sub_1C43FD1B4();
  v25 = sub_1C456902C(&qword_1EC0BFD88, &qword_1C4F3DA08);
  v26 = sub_1C43FBD18(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBD08();
  sub_1C4414500();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C447F150();
  v30 = sub_1C456902C(&qword_1EC0C2C00, &qword_1C4F3DA10);
  v31 = sub_1C43FBD18(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBFDC();
  v151 = v34;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FD230();
  sub_1C43FCE30(v36);
  v139 = sub_1C456902C(&qword_1EC0BFD90, &qword_1C4F3DA18);
  sub_1C43FBCE0(v139);
  v38 = *(v37 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v39);
  v153 = v134 - v40;
  v41 = sub_1C4EF9CD8();
  v42 = sub_1C43FCDF8(v41);
  v44 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FBFDC();
  v148 = v47;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v48);
  v50 = v134 - v49;
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88();
  }

  v51 = sub_1C4F00978();
  v52 = sub_1C442B738(v51, qword_1EDDFECB8);
  v53 = *(v44 + 16);
  v53(v50, v149, v41);
  v53(v148, v150, v41);
  v143 = v52;
  v54 = sub_1C4F00968();
  v55 = sub_1C4F01CF8();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v136 = v54;
    v57 = v56;
    v137 = sub_1C43FC11C();
    v156[0] = v137;
    *v57 = 136315650;
    sub_1C4411EF4();
    v134[1] = sub_1C496CC38(v58, v59);
    v135 = v55;
    v60 = sub_1C4F02858();
    v134[0] = *(v44 + 8);
    v61 = sub_1C443DF7C();
    v62(v61);
    v63 = sub_1C4410428();
    sub_1C441D828(v63, v64, v65);
    sub_1C43FCFC0();

    *(v57 + 4) = v60;
    *(v57 + 12) = 2080;
    v66 = sub_1C4F02858();
    v67 = sub_1C443DF7C();
    (v134[0])(v67);
    v68 = sub_1C4410428();
    sub_1C441D828(v68, v69, v70);
    sub_1C43FCFC0();

    *(v57 + 14) = v66;
    *(v57 + 22) = 1024;
    v71 = v146;
    *(v57 + 24) = v146 & 1;
    v72 = v136;
    _os_log_impl(&dword_1C43F8000, v136, v135, "InternalXPC: PhotosMetadata [startDate=%s, endDate = %s, newestFirst= %{BOOL}d", v57, 0x1Cu);
    swift_arrayDestroy();
    sub_1C43FEA20();
    sub_1C43FBE2C();
  }

  else
  {

    v73 = *(v44 + 8);
    v73(v148, v41);
    v74 = sub_1C443DF7C();
    (v73)(v74);
    v71 = v146;
  }

  type metadata accessor for PhotosMetadataFetcher();
  inited = swift_initStackObject();
  sub_1C4AB0D2C(v149, v150, v147, v71 & 1, v156);
  v148 = 0;
  v137 = inited;
  v76 = v156[1];
  v78 = v156[2];
  v77 = v156[3];
  v79 = v156[4];
  v80 = v156[0];

  v81 = v153;
  v146 = v80;
  sub_1C4EFFAB8();
  v82 = (v81 + *(sub_1C456902C(&qword_1EC0BFD98, &qword_1C4F3DA20) + 44));
  v149 = v76;
  v150 = v78;
  *v82 = v76;
  v82[1] = v78;
  v83 = 0;
  v84 = (v81 + *(sub_1C456902C(&qword_1EC0BFDA0, &unk_1C4F3DA28) + 44));
  *v84 = v77;
  v84[1] = v79;
  sub_1C44167A4();
  v86 = (v81 + *(v85 + 44));
  v147 = MEMORY[0x1E69E7CC0];
  *v86 = 0;
  v86[1] = 0;
  v87 = v142;
  while (1)
  {
    while (1)
    {
      if (!v83)
      {
        goto LABEL_10;
      }

      v88 = *(v83 + 16);
      v89 = v86[1];
      if (v89 == v88)
      {
        break;
      }

      if (v89 >= v88)
      {
        __break(1u);
        return;
      }

      v139 = (*(v138 + 80) + 32) & ~*(v138 + 80);
      v136 = *(v138 + 72);
      sub_1C443FD38();
      v101 = v151;
      sub_1C496C838(v102, v151);
      v86[1] = v89 + 1;
      v103 = v152;
      sub_1C440BAA8(v101, 0, 1, v152);
      v104 = v101;
      v87 = v142;
      sub_1C44CDA30(v104, v142, &qword_1EC0C2C00, &qword_1C4F3DA10);
      sub_1C440175C(v87, 1, v103);
      if (v99)
      {
        goto LABEL_25;
      }

      sub_1C4416188();
      v105 = v140;
      sub_1C496C7A8(v87, v140);
      sub_1C443FD38();
      sub_1C496C838(v105, v141);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C458E278(0, v147[2] + 1, 1, v147);
        v147 = v109;
      }

      v107 = v147[2];
      v106 = v147[3];
      if (v107 >= v106 >> 1)
      {
        sub_1C458E278(v106 > 1, v107 + 1, 1, v147);
        v147 = v110;
      }

      v147[2] = v107 + 1;
      sub_1C4416188();
      sub_1C496C7A8(v141, v108);
      sub_1C4453F54();
      v83 = *v86;
    }

    v90 = v151;
    v91 = sub_1C440EF74();
    sub_1C440BAA8(v91, v92, 1, v93);
    sub_1C4420C3C(v90, &qword_1EC0C2C00, &qword_1C4F3DA10);
LABEL_10:
    sub_1C4EFFA98();
    if (v155[3])
    {
      sub_1C4461BB8(0, &qword_1EDDDB860, 0x1E6978630);
      if (swift_dynamicCast())
      {
        v94 = v154;
        v155[0] = v154;
        v149(v155);

        v95 = v2;
        v96 = 0;
        goto LABEL_15;
      }
    }

    else
    {
      sub_1C4420C3C(v155, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    }

    v95 = v2;
    v96 = 1;
LABEL_15:
    sub_1C440BAA8(v95, v96, 1, v21);
    v97 = sub_1C4410CBC();
    sub_1C44CDA30(v97, v98, &qword_1EC0BFD88, &qword_1C4F3DA08);
    sub_1C440175C(v0, 1, v21);
    if (v99)
    {
      break;
    }

    sub_1C496C7A8(v0, v1);
    v77(v155, v1);
    sub_1C4453F54();
    v83 = v155[0];
    v100 = *v86;

    *v86 = v83;
    v86[1] = 0;
  }

  sub_1C440BAA8(v87, 1, 1, v152);
LABEL_25:
  sub_1C4420C3C(v153, &qword_1EC0BFD90, &qword_1C4F3DA18);

  v111 = objc_autoreleasePoolPush();
  sub_1C4403FC0();
  v112 = sub_1C4EF93D8();
  sub_1C44099C4(v112);
  sub_1C4EF93C8();
  sub_1C4EF9368();
  sub_1C4EF9388();
  v156[0] = v147;
  sub_1C456902C(&qword_1EC0BFDA8, &qword_1C4F3DA38);
  sub_1C496C6F4();
  v113 = v148;
  sub_1C4EF93B8();
  if (v113)
  {
    v114 = v113;

    objc_autoreleasePoolPop(v77);

    v115 = v113;
    v116 = sub_1C4F00968();
    v117 = sub_1C4F01CD8();

    if (sub_1C43FD09C())
    {
      v118 = sub_1C43FD084();
      v119 = sub_1C43FFD34();
      v156[0] = v119;
      *v118 = 136315138;
      v155[0] = v114;
      v120 = v114;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v121 = sub_1C4F01198();
      v123 = sub_1C441D828(v121, v122, v156);

      *(v118 + 4) = v123;
      _os_log_impl(&dword_1C43F8000, v116, v117, "InternalXPC: PhotosMetadata failed: %s", v118, 0xCu);
      sub_1C440962C(v119);
      sub_1C4412D04();
      sub_1C43FBE2C();
    }

    v124 = v145;
    v125 = v114;
    v126 = sub_1C440722C();
    v124(v126);
  }

  else
  {

    v127 = sub_1C43FD2BC();
    sub_1C44344B8(v127, v128);
    v129 = sub_1C43FD2BC();
    v145(v129);
    v130 = sub_1C43FD2BC();
    sub_1C4434000(v130, v131);
    v132 = sub_1C43FD2BC();
    sub_1C4434000(v132, v133);

    objc_autoreleasePoolPop(v77);
  }

  sub_1C43FE9F0();
}

uint64_t InternalXPC.Server.behaviorUnderstandingEvaluate(forBehaviorType:queryName:inferenceServiceInstanceId:)()
{
  sub_1C43FBCD4();
  v0[103] = v1;
  v0[102] = v2;
  v0[101] = v3;
  v0[100] = v4;
  v0[99] = v5;
  v0[98] = v6;
  v7 = sub_1C4EFDAB8();
  v0[104] = v7;
  v8 = *(v7 - 8);
  v0[105] = v8;
  v9 = *(v8 + 64);
  v0[106] = sub_1C43FBE7C();
  v10 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v10);
  v12 = *(v11 + 64);
  v0[107] = sub_1C43FE604();
  v0[108] = swift_task_alloc();
  v13 = sub_1C4EF9CD8();
  v0[109] = v13;
  v14 = *(v13 - 8);
  v0[110] = v14;
  v15 = *(v14 + 64);
  v0[111] = sub_1C43FE604();
  v0[112] = swift_task_alloc();
  v0[113] = swift_task_alloc();
  v0[114] = swift_task_alloc();
  v16 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v0[115] = v16;
  sub_1C43FBD18(v16);
  v18 = *(v17 + 64);
  v0[116] = sub_1C43FBE7C();
  v19 = type metadata accessor for Configuration();
  v0[117] = v19;
  sub_1C43FBD18(v19);
  v21 = *(v20 + 64);
  v0[118] = sub_1C43FE604();
  v0[119] = swift_task_alloc();
  v0[120] = swift_task_alloc();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v22, v23, v24);
}

uint64_t sub_1C4967740()
{
  if (qword_1EDDFA678 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 824);
  v2 = *(v0 + 792);
  v3 = sub_1C4F00978();
  *(v0 + 968) = v3;
  sub_1C442B738(v3, qword_1EDE2DCD8);
  sub_1C4404CE0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v4 = sub_1C4F00968();
  v5 = sub_1C4F01CF8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 824);
    v7 = *(v0 + 816);
    v8 = *(v0 + 792);
    v9 = *(v0 + 784);
    v10 = sub_1C440F274();
    sub_1C43FC11C();
    *v10 = 136315394;
    v11 = sub_1C43FD018();
    *(v10 + 4) = sub_1C441D828(v11, v12, v13);
    *(v10 + 12) = 2080;
    v14 = sub_1C43FE5F8();
    *(v10 + 14) = sub_1C441D828(v14, v15, v16);
    _os_log_impl(&dword_1C43F8000, v4, v5, "InternalXPC: Behavior Understanding evaluate [behaviorType=%s, inferenceServiceInstanceId=%s]", v10, 0x16u);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  if (qword_1EDDEBB80 != -1)
  {
    sub_1C44006B4();
  }

  v17 = *(v0 + 936);
  v18 = *(v0 + 928);
  v19 = sub_1C442B738(*(v0 + 920), qword_1EDDEBB90);
  sub_1C440D164();
  sub_1C4460108(v19, v18, &unk_1EC0B9610, &unk_1C4F0F2E0);
  v20 = sub_1C44033D8();
  result = sub_1C440175C(v20, v21, v17);
  if (v23)
  {
    __break(1u);
  }

  else
  {
    v24 = *(v0 + 960);
    v25 = *(v0 + 928);
    sub_1C440AD08();
    sub_1C496C7A8(v26, v27);
    if (qword_1EDDFF2A0 != -1)
    {
      sub_1C43FD998();
    }

    v28 = *(v0 + 960);
    *(v0 + 976) = sub_1C44E7FAC();
    sub_1C4BF8774(0xD000000000000021, 0x80000001C4F85FC0, (v0 + 448));
    v29 = *(v0 + 824);
    v30 = *(v0 + 464);
    *(v0 + 384) = *(v0 + 448);
    *(v0 + 400) = v30;
    v31 = *(v0 + 496);
    *(v0 + 416) = *(v0 + 480);
    *(v0 + 432) = v31;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v32 = swift_task_alloc();
    *(v0 + 984) = v32;
    *v32 = v0;
    v32[1] = sub_1C4967B0C;
    v33 = *(v0 + 824);
    v34 = *(v0 + 816);

    return sub_1C470CF78(v34, v33, 0.5);
  }

  return result;
}

uint64_t sub_1C4967B0C()
{
  sub_1C43FBCD4();
  v2 = *v1;
  v3 = *(*v1 + 984);
  v12 = *v1;
  v2[124] = v4;
  v2[125] = v5;
  v2[126] = v6;
  v2[127] = v7;
  v2[128] = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C4967C28()
{
  v137 = v0;
  v1 = *(v0 + 872);
  v2 = *(v0 + 864);
  v3 = *(v0 + 416);
  v4 = *(v3 + 16);
  v5 = swift_task_alloc();
  *(v5 + 16) = v0 + 384;
  sub_1C49A54C8(sub_1C496C800, v5);

  sub_1C440582C(v2);
  if (v6)
  {
    v7 = (v0 + 864);
LABEL_6:
    v14 = *v7;
    v15 = *(v0 + 1016);
    v16 = *(v0 + 992);
    v17 = *(v0 + 976);
    v18 = *(v0 + 960);
    sub_1C4420C3C(v14, &unk_1EC0B84E0, qword_1C4F0D2D0);
    sub_1C450B034();
    sub_1C43FFB2C();
    *v19 = 0xD000000000000019;
    *(v19 + 8) = 0x80000001C4FAA630;
    *(v19 + 16) = 0xD000000000000036;
    *(v19 + 24) = 0x80000001C4FAA650;
    v20 = v136[1];
    *(v19 + 32) = v136[0];
    *(v19 + 48) = v20;
    *(v19 + 64) = 7;
    swift_willThrow();

    sub_1C494A39C(v0 + 448);

    sub_1C4419A54();
    sub_1C4453F54();
LABEL_7:
    sub_1C441D26C();
    v21 = *(v0 + 888);
    v22 = *(v0 + 864);
    v23 = *(v0 + 856);
    v131 = *(v0 + 848);

    sub_1C43FBDA0();

    return v24();
  }

  v8 = *(v0 + 872);
  v9 = *(v0 + 856);
  v10 = *(*(v0 + 880) + 32);
  v10(*(v0 + 912), *(v0 + 864), v8);
  v11 = *(v3 + 16);
  v12 = swift_task_alloc();
  *(v12 + 16) = v0 + 384;
  sub_1C49A54C8(sub_1C496C81C, v12);

  v13 = sub_1C44157D4(v9, 1, v8);
  if (v13 == 1)
  {
    v7 = (v0 + 856);
    (*(*(v0 + 880) + 8))(*(v0 + 912), *(v0 + 872));
    goto LABEL_6;
  }

  v10(*(v0 + 904), *(v0 + 856), *(v0 + 872));
  if (qword_1EDDFA668 != -1)
  {
    sub_1C4406728();
  }

  v26 = *(v0 + 912);
  v27 = *(v0 + 904);
  v28 = *(v0 + 896);
  v29 = *(v0 + 888);
  v30 = *(v0 + 880);
  v31 = *(v0 + 872);
  sub_1C442B738(*(v0 + 968), qword_1EDE2DDE0);
  v32 = *(v30 + 16);
  v32(v28, v26, v31);
  v32(v29, v27, v31);
  v33 = sub_1C4F00968();
  v34 = sub_1C4F01CF8();
  v35 = os_log_type_enabled(v33, v34);
  v36 = *(v0 + 896);
  v37 = *(v0 + 888);
  v38 = *(v0 + 880);
  v39 = *(v0 + 872);
  if (v35)
  {
    v125 = v34;
    v40 = sub_1C440F274();
    *&v136[0] = sub_1C43FC11C();
    *v40 = 136315394;
    sub_1C4411EF4();
    sub_1C496CC38(v41, v42);
    sub_1C43FC0A8();
    v43 = sub_1C4F02858();
    v45 = v44;
    log = v33;
    v46 = *(v38 + 8);
    v46(v36, v39);
    sub_1C441D828(v43, v45, v136);
    sub_1C441D28C();

    *(v40 + 4) = v36;
    *(v40 + 12) = 2080;
    sub_1C43FC0A8();
    v47 = sub_1C4F02858();
    v49 = v48;
    v50 = sub_1C43FD018();
    v132 = v46;
    (v46)(v50);
    sub_1C441D828(v47, v49, v136);
    sub_1C441D28C();

    *(v40 + 14) = v47;
    _os_log_impl(&dword_1C43F8000, log, v125, "InternalXPC: Behavior Understanding evaluate - Producing evaluation metrics between %s and %s", v40, 0x16u);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C43FEA20();
  }

  else
  {

    v51 = *(v38 + 8);
    v52 = sub_1C43FD018();
    v51(v52);
    v132 = v51;
    (v51)(v36, v39);
  }

  v134 = *(v0 + 1024);
  v53 = *(v0 + 1016);
  v54 = *(v0 + 1008);
  v55 = *(v0 + 1000);
  v56 = *(v0 + 992);
  v57 = *(v0 + 960);
  v58 = *(v0 + 944);
  v59 = *(v0 + 848);
  v60 = *(v0 + 792);
  v61 = *(v0 + 784);
  sub_1C496C838(v57, *(v0 + 952));
  *(v0 + 664) = &type metadata for EntityRelevanceMLModel;
  *(v0 + 672) = &off_1F43E9B30;
  sub_1C4434164();
  v62 = swift_allocObject();
  *(v0 + 640) = v62;
  v62[2] = v56;
  v62[3] = v55;
  v62[4] = v54;
  v62[5] = v53;

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFDA78();
  sub_1C496C838(v57, v58);
  v63 = type metadata accessor for KeyValueStore();
  sub_1C44099C4(v63);
  sub_1C440C5A0();
  v67 = KeyValueStore.init(config:domain:)(v64, v65, v66);
  if (v134)
  {
    v68 = *(v0 + 1016);
    v69 = *(v0 + 992);
    v70 = *(v0 + 976);
    v71 = *(v0 + 952);
    v128 = *(v0 + 912);
    v129 = *(v0 + 960);
    v72 = *(v0 + 904);
    v73 = *(v0 + 880);
    v74 = *(v0 + 872);
    v75 = *(v0 + 848);
    v76 = *(v0 + 840);
    v77 = *(v0 + 832);

    sub_1C494A39C(v0 + 448);

    (*(v76 + 8))(v75, v77);
    sub_1C4453F54();
    v78 = sub_1C43FC0A8();
    v132(v78);
    (v132)(v128, v74);
    sub_1C4453F54();
    sub_1C440962C((v0 + 640));
    goto LABEL_7;
  }

  v79 = v67;
  v80 = *(v0 + 952);
  v81 = *(v0 + 912);
  v82 = *(v0 + 904);
  v126 = *(v0 + 848);
  v83 = *(v0 + 840);
  v135 = v79;
  v84 = *(v0 + 832);
  v85 = *(v0 + 808);
  v133 = *(v0 + 800);
  sub_1C4EF9B78();
  v87 = v86;
  sub_1C4418280(v0 + 640, *(v0 + 664));
  sub_1C43FCE64();
  v89 = v88;
  v91 = *(v90 + 64);
  v92 = sub_1C43FBE7C();
  *(v0 + 1032) = v92;
  (*(v89 + 16))();
  v93 = *v92;
  v94 = v92[1];
  v95 = v92[2];
  v96 = v92[3];
  v97 = type metadata accessor for EntityRelevanceEvaluationTaskManager();
  v98 = sub_1C44099C4(v97);
  *(v0 + 1040) = v98;
  *(v0 + 704) = &type metadata for EntityRelevanceMLModel;
  *(v0 + 712) = &off_1F43E9B30;
  sub_1C4434164();
  v99 = swift_allocObject();
  *(v0 + 680) = v99;
  v99[2] = v93;
  v99[3] = v94;
  v99[4] = v95;
  v99[5] = v96;
  v100 = (v98 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_name);
  *v100 = 0xD000000000000024;
  v100[1] = 0x80000001C4FAA690;
  v101 = (v98 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager____lazy_storage___savedStateKey);
  *v101 = 0;
  v101[1] = 0;
  v102 = (v98 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_currentInvocation);
  *v102 = 0;
  v102[1] = 0;
  sub_1C442CCA0();
  sub_1C496C838(v80, v98 + v103);
  sub_1C442E860(v0 + 680, v98 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_model);
  (*(v83 + 16))(v98 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_entityType, v126, v84);
  v104 = (v98 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_databaseTable);
  v105 = *(v0 + 400);
  *v104 = *(v0 + 384);
  v104[1] = v105;
  v106 = *(v0 + 432);
  v104[2] = *(v0 + 416);
  v104[3] = v106;
  *(v98 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_kvStore) = v135;
  *(v98 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_sampleIntervalLength) = 0x4072C00000000000;
  v107 = (v98 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_queryName);
  *v107 = v133;
  v107[1] = v85;
  *(v98 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_duration) = v87;
  sub_1C442E860(v0 + 680, v0 + 720);
  sub_1C494A340(v0 + 448, v0 + 512);
  sub_1C494A340(v0 + 448, v0 + 576);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v108 = sub_1C4F00968();
  v109 = sub_1C4F01CB8();
  v110 = os_log_type_enabled(v108, v109);
  v111 = *(v0 + 952);
  v112 = *(v0 + 848);
  v113 = *(v0 + 840);
  v130 = *(v0 + 832);
  if (v110)
  {
    v114 = sub_1C43FD084();
    v115 = sub_1C43FFD34();
    *&v136[0] = v115;
    *v114 = 136315138;
    v116 = sub_1C4409678((v0 + 720), *(v0 + 744));
    v127 = v112;
    v118 = v116[2];
    v117 = v116[3];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C440962C((v0 + 720));
    v119 = sub_1C441D828(v118, v117, v136);

    *(v114 + 4) = v119;
    _os_log_impl(&dword_1C43F8000, v108, v109, "Evaluating '%s'", v114, 0xCu);
    sub_1C440962C(v115);
    sub_1C43FBE2C();
    sub_1C43FBE2C();

    sub_1C494A39C(v0 + 448);

    (*(v113 + 8))(v127, v130);
    sub_1C4419A54();
    sub_1C4453F54();
    v120 = (v0 + 680);
  }

  else
  {

    sub_1C494A39C(v0 + 448);

    (*(v113 + 8))(v112, v130);
    sub_1C4419A54();
    sub_1C4453F54();
    sub_1C440962C((v0 + 680));
    v120 = (v0 + 720);
  }

  sub_1C440962C(v120);
  v121 = *(v0 + 904);
  sub_1C440962C((v0 + 640));
  *(v0 + 1048) = sub_1C46F14C4(v121);
  *(v0 + 1056) = v122;
  v123 = swift_task_alloc();
  *(v0 + 1064) = v123;
  *v123 = v0;
  v123[1] = sub_1C4968804;

  return sub_1C45F653C();
}

uint64_t sub_1C4968804()
{
  sub_1C43FBCD4();
  v2 = *(*v1 + 1064);
  v3 = *v1;
  sub_1C43FBDAC();
  *v4 = v3;
  *(v5 + 1072) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C4968908()
{
  v1 = *(v0 + 1048);
  sub_1C456902C(qword_1EC0BB890, &qword_1C4F21738);
  v2 = swift_dynamicCastClass();
  v3 = *(v0 + 1040);
  v41 = *(v0 + 1032);
  v42 = *(v0 + 1056);
  v44 = *(v0 + 1016);
  v43 = *(v0 + 992);
  v4 = *(v0 + 976);
  v5 = *(v0 + 960);
  if (v2)
  {
    v31 = *(v0 + 952);
    v32 = *(v0 + 944);
    v33 = *(v0 + 928);
    v6 = *(v0 + 912);
    v30 = *(v0 + 904);
    v35 = *(v0 + 896);
    v36 = *(v0 + 888);
    v7 = *(v0 + 880);
    v8 = *(v0 + 872);
    v37 = *(v0 + 864);
    v38 = *(v0 + 856);
    v40 = *(v0 + 848);
    v9 = *(v2 + *(*v2 + 128));
    swift_retain_n();
    swift_unknownObjectRetain();
    sub_1C46F52FC(v9, (v0 + 16));
    v34 = sub_1C46F54F8();

    swift_setDeallocating();
    v10 = sub_1C46F2440();
    sub_1C443E368(v10);
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_deallocClassInstance();
    swift_unknownObjectRelease_n();

    sub_1C494A39C(v0 + 448);

    v14 = *(v7 + 8);
    v14(v30, v8);
    v14(v6, v8);
    sub_1C4419A54();
    sub_1C4453F54();

    v15 = *(v0 + 8);

    return v15(v34);
  }

  else
  {
    v39 = *(v0 + 912);
    v17 = *(v0 + 904);
    v18 = *(v0 + 880);
    v19 = *(v0 + 872);
    sub_1C496C890();
    sub_1C43FFB2C();
    *v20 = 0;
    swift_willThrow();

    swift_setDeallocating();
    v21 = sub_1C46F2440();
    sub_1C443E368(v21);
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_deallocClassInstance();
    swift_unknownObjectRelease();

    sub_1C494A39C(v0 + 448);

    v25 = *(v18 + 8);
    v25(v17, v19);
    v25(v39, v19);
    sub_1C4419A54();
    sub_1C4453F54();
    sub_1C441D26C();
    v26 = *(v0 + 888);
    v27 = *(v0 + 864);
    v28 = *(v0 + 856);
    v45 = *(v0 + 848);

    sub_1C43FBDA0();

    return v29();
  }
}

uint64_t sub_1C4968D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1C4405098();
  v15 = v14[122];
  v16 = v14[120];

  sub_1C494A39C((v14 + 56));
  sub_1C4419A54();
  sub_1C4453F54();
  v17 = v14[128];
  v18 = v14[120];
  v19 = v14[119];
  v20 = v14[118];
  sub_1C4405D84();
  v21 = v14[107];
  v32 = v14[106];
  v33 = v22;

  sub_1C43FBDA0();
  sub_1C43FD0C0();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, v32, v33, a12, a13, a14);
}

uint64_t sub_1C4968E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1C4405098();
  v15 = v14[132];
  v16 = v14[131];
  v17 = v14[130];
  v18 = v14[129];
  v19 = v14[127];
  v20 = v14[124];
  v21 = v14[122];
  v46 = v14[114];
  v48 = v14[120];
  v22 = v14[113];
  v23 = v14[110];
  v24 = v14[109];

  swift_setDeallocating();
  v25 = sub_1C46F2440();
  sub_1C443E368(v25);
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_deallocClassInstance();

  swift_unknownObjectRelease();

  sub_1C494A39C((v14 + 56));

  v29 = *(v23 + 8);
  v30 = sub_1C43FE5F8();
  v29(v30);
  (v29)(v46, v24);
  sub_1C4419A54();
  sub_1C4453F54();
  v31 = v14[134];
  v32 = v14[120];
  v33 = v14[119];
  v34 = v14[118];
  sub_1C4405D84();
  v35 = v14[107];
  v47 = v14[106];
  v49 = v36;

  sub_1C43FBDA0();
  sub_1C43FD0C0();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, v47, v49, a12, a13, a14);
}

uint64_t sub_1C496904C(int a1, uint64_t a2, int a3, void *aBlock, void *a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  sub_1C4F01138();
  v5[4] = v8;
  if (a2)
  {
    sub_1C4F01138();
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v5[5] = v10;
  sub_1C4F01138();
  v5[6] = v11;
  v12 = a5;
  v13 = swift_task_alloc();
  v5[7] = v13;
  *v13 = v5;
  v13[1] = sub_1C4969178;

  return InternalXPC.Server.behaviorUnderstandingEvaluate(forBehaviorType:queryName:inferenceServiceInstanceId:)();
}

uint64_t sub_1C4969178()
{
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  v6 = v3[7];
  v7 = v3[6];
  v8 = v3[4];
  v9 = v3[2];
  v10 = *v1;
  *v5 = *v1;

  v11 = v3[5];

  if (v2)
  {
    v12 = sub_1C4EF9798();

    v13 = v12;
  }

  else
  {
    sub_1C4461BB8(0, qword_1EDDFCDD0, 0x1E69E58C0);
    v14 = sub_1C4F00EC8();

    v13 = v14;
  }

  v15 = v4[3];
  v16 = v15[2];
  v17 = sub_1C4410428();
  v18(v17);

  _Block_release(v15);
  v19 = v10[1];

  return v19();
}

void sub_1C496937C(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  v41 = a1;
  v6 = type metadata accessor for EntityTaggingPersonDataCollection(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v35 - v12;
  v14 = type metadata accessor for Configuration();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v35 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v35 - v22;
  if (qword_1EDDEBB80 != -1)
  {
    swift_once();
  }

  v24 = sub_1C442B738(v10, qword_1EDDEBB90);
  swift_beginAccess();
  sub_1C4460108(v24, v13, &unk_1EC0B9610, &unk_1C4F0F2E0);
  if (sub_1C44157D4(v13, 1, v14) == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1C496C7A8(v13, v23);
    if (qword_1EDDFF2A0 != -1)
    {
      swift_once();
    }

    sub_1C44E7FAC();
    sub_1C4C0C2D8(0xD000000000000013, 0x80000001C4F85FF0, &v42);
    v36 = v44;
    v37 = v42;
    v38 = v45;
    v39 = v43;
    v40 = v46;
    sub_1C496C838(v23, v21);
    v25 = type metadata accessor for KeyValueStore();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    v28 = KeyValueStore.init(config:domain:)(v21, 0x6154797469746E45, 0xED0000676E696767);
    v29 = v37;
    v37 = v28;
    v42 = v29;
    v43 = v39;
    v44 = v36;
    v45 = v38;
    v46 = v40;
    sub_1C496C838(v23, v18);
    v30 = type metadata accessor for EntityTaggingPersonDataCollectionTask();
    v31 = *(v30 + 48);
    v32 = *(v30 + 52);
    v36 = swift_allocObject();
    v33 = v37;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    sub_1C472C094(&v42, v18, 0x61536C6F6F545049, 0xEC000000656C706DLL, 0, 0xE000000000000000, v33);
    sub_1C472C460(v41, a2, 1, 1, v9);
    sub_1C496CC38(qword_1EDDDD818, type metadata accessor for EntityTaggingPersonDataCollection);
    sub_1C4F00428();
    v34 = sub_1C4F01108();
    (a4)[2](a4, v34, 0);

    sub_1C4453F54();
    sub_1C4453F54();
    _Block_release(a4);
  }
}

void InternalXPC.Server.behaviorUnderstandingSampleEntityTaggingFeatures(forPersonID:completion:)()
{
  sub_1C43FBD3C();
  v41 = v3;
  v4 = type metadata accessor for EntityTaggingPersonDataCollection(0);
  v5 = sub_1C43FBCE0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  sub_1C43FD1B4();
  v8 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0(v8);
  v10 = *(v9 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1C4469198();
  v13 = sub_1C43FBCE0(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBD08();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  sub_1C4414500();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C447F150();
  if (qword_1EDDEBB80 != -1)
  {
    sub_1C44006B4();
  }

  v21 = sub_1C442B738(v8, qword_1EDDEBB90);
  sub_1C440D164();
  sub_1C4460108(v21, v0, &unk_1EC0B9610, &unk_1C4F0F2E0);
  v22 = sub_1C440EF74();
  sub_1C440175C(v22, v23, v12);
  if (v24)
  {
    __break(1u);
  }

  else
  {
    sub_1C440AD08();
    sub_1C496C7A8(v0, v2);
    if (qword_1EDDFF2A0 != -1)
    {
      sub_1C43FD998();
    }

    sub_1C44E7FAC();
    sub_1C4C0C2D8(0xD000000000000013, 0x80000001C4F85FF0, &v42);
    v35 = v44;
    v36 = v42;
    v38 = v45;
    v39 = v43;
    v40 = v46;
    sub_1C442CCA0();
    v25 = sub_1C4410CBC();
    sub_1C496C838(v25, v26);
    v27 = type metadata accessor for KeyValueStore();
    sub_1C44099C4(v27);
    v28 = KeyValueStore.init(config:domain:)(v1, 0x6154797469746E45, 0xED0000676E696767);
    v29 = v36;
    v37 = v28;
    v42 = v29;
    v43 = v39;
    v44 = v35;
    v45 = v38;
    v46 = v40;
    sub_1C442CCA0();
    sub_1C496C838(v2, v18);
    v30 = type metadata accessor for EntityTaggingPersonDataCollectionTask();
    sub_1C44099C4(v30);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    sub_1C472C094(&v42, v18, 0x61536C6F6F545049, 0xEC000000656C706DLL, 0, 0xE000000000000000, v37);
    v31 = sub_1C43FE5F8();
    sub_1C472C460(v31, v32, 1, 1, v33);
    sub_1C496CC38(qword_1EDDDD818, type metadata accessor for EntityTaggingPersonDataCollection);
    v34 = sub_1C4F00428();
    v41(v34);

    sub_1C4453F54();
    sub_1C4419A54();
    sub_1C4453F54();
    sub_1C43FE9F0();
  }
}

uint64_t InternalXPC.Server.behaviorUnderstandingMockEntityRelevanceContext(with:)()
{
  sub_1C43FBCD4();
  v0[5] = v1;
  v2 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v0[6] = v2;
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  v0[7] = sub_1C43FE604();
  v0[8] = swift_task_alloc();
  v5 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v0[9] = v5;
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64);
  v0[10] = sub_1C43FBE7C();
  v8 = type metadata accessor for Configuration();
  v0[11] = v8;
  sub_1C43FBD18(v8);
  v10 = *(v9 + 64);
  v0[12] = sub_1C43FE604();
  v0[13] = swift_task_alloc();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C496A268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_1C4405098();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  if (qword_1EDDEBB80 != -1)
  {
    sub_1C44006B4();
  }

  v25 = v22[10];
  v26 = v22[11];
  v27 = sub_1C442B738(v22[9], qword_1EDDEBB90);
  sub_1C440D164();
  sub_1C4460108(v27, v25, &unk_1EC0B9610, &unk_1C4F0F2E0);
  v28 = sub_1C44033D8();
  result = sub_1C440175C(v28, v29, v26);
  if (v31)
  {
    __break(1u);
  }

  else
  {
    v32 = v22[12];
    v33 = v22[13];
    v34 = v22[10];
    sub_1C440AD08();
    sub_1C496C7A8(v35, v33);
    sub_1C442CCA0();
    sub_1C496C838(v33, v32);
    v36 = type metadata accessor for KeyValueStore();
    sub_1C44099C4(v36);
    sub_1C440C5A0();
    KeyValueStore.init(config:domain:)(v37, v38, v39);
    v40 = v22[5];
    v41 = sub_1C4414254();
    sub_1C495C5C8(v41, v42, v43);
    if (qword_1EDDFA668 != -1)
    {
      sub_1C4406728();
    }

    v52 = v22[8];
    v53 = v22[5];
    v54 = sub_1C4F00978();
    sub_1C442B738(v54, qword_1EDE2DDE0);
    sub_1C4460108(v53, v52, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v55 = sub_1C4F00968();
    v56 = sub_1C4F01CF8();
    v57 = os_log_type_enabled(v55, v56);
    v58 = v22[13];
    v59 = v22[8];
    if (v57)
    {
      v60 = v22[7];
      v73 = v22[6];
      v61 = sub_1C43FD084();
      v62 = sub_1C43FFD34();
      a10 = v62;
      *v61 = 136315138;
      sub_1C4460108(v59, v60, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v63 = sub_1C4F01198();
      a9 = v58;
      v65 = v64;
      sub_1C4420C3C(v59, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v66 = sub_1C441D828(v63, v65, &a10);

      *(v61 + 4) = v66;
      _os_log_impl(&dword_1C43F8000, v55, v56, "behaviorUnderstandingMockEntityRelevanceContext: Updated mocked context to %s", v61, 0xCu);
      sub_1C440962C(v62);
      sub_1C43FBE2C();
      sub_1C43FFD4C();
    }

    else
    {

      sub_1C4420C3C(v59, &unk_1EC0B84E0, qword_1C4F0D2D0);
    }

    sub_1C4419A54();
    sub_1C4453F54();
    v68 = v22[12];
    v67 = v22[13];
    v69 = v22[10];
    v71 = v22[7];
    v70 = v22[8];

    v72 = v22[1];
    sub_1C43FD0C0();

    return v46(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14);
  }

  return result;
}

uint64_t sub_1C496A660(uint64_t a1, const void *a2, void *a3)
{
  v3[2] = a3;
  v7 = sub_1C4EF9CD8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  v3[3] = v10;
  v11 = *(*(sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0) - 8) + 64) + 15;
  v12 = swift_task_alloc();
  v3[4] = v12;
  v3[5] = _Block_copy(a2);
  if (a1)
  {
    sub_1C4EF9C78();
    (*(v8 + 32))(v12, v10, v7);
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  sub_1C440BAA8(v12, v13, 1, v7);
  v14 = a3;
  v15 = swift_task_alloc();
  v3[6] = v15;
  *v15 = v3;
  v15[1] = sub_1C496A814;

  return InternalXPC.Server.behaviorUnderstandingMockEntityRelevanceContext(with:)();
}

uint64_t sub_1C496A814(char a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *v2;
  sub_1C43FBDAC();
  *v7 = v6;
  v8 = v5[6];
  v9 = *v2;
  *v7 = *v2;

  v10 = v5[5];
  v11 = v5[2];
  sub_1C4420C3C(v5[4], &unk_1EC0B84E0, qword_1C4F0D2D0);

  if (v3)
  {
    sub_1C4EF9798();

    (*(v10 + 16))(v10, 0, v11);
  }

  else
  {
    (*(v10 + 16))(v10, a1 & 1, 0);
  }

  v13 = v6[4];
  v12 = v6[5];
  v14 = v6[3];
  _Block_release(v12);

  v15 = v9[1];

  return v15();
}

void sub_1C496A9D4(uint64_t a1, void (**a2)(void, void, void))
{
  v3 = type metadata accessor for EntityTaggingInjectedTags();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - v9;
  v11 = type metadata accessor for Configuration();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDDEBB80 != -1)
  {
    swift_once();
  }

  v15 = sub_1C442B738(v7, qword_1EDDEBB90);
  swift_beginAccess();
  sub_1C4460108(v15, v10, &unk_1EC0B9610, &unk_1C4F0F2E0);
  if (sub_1C44157D4(v10, 1, v11) != 1)
  {
    sub_1C496C7A8(v10, v14);
    sub_1C496C838(v14, v6);
    v16 = sub_1C472B6C4();
    if (v16)
    {
      if (*(v16 + 16))
      {
        sub_1C456902C(&qword_1EC0C6370, &qword_1C4F0E1A0);
        sub_1C4F00EE8();

        v17 = sub_1C4F01108();
        (a2)[2](a2, v17, 0);

LABEL_9:

        sub_1C4453F54();
        sub_1C4453F54();
        _Block_release(a2);
        return;
      }
    }

    v17 = sub_1C4F01108();
    (a2)[2](a2, v17, 0);
    goto LABEL_9;
  }

  __break(1u);
}

void InternalXPC.Server.behaviorUnderstandingShowEntityTaggingInjectedTags(completion:)()
{
  sub_1C43FBD3C();
  sub_1C4403FC0();
  v3 = type metadata accessor for EntityTaggingInjectedTags();
  v4 = sub_1C43FBD18(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v7 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0(v7);
  v9 = *(v8 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  v11 = sub_1C4469198();
  v12 = sub_1C43FBCE0(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBCC4();
  sub_1C440DED0();
  if (qword_1EDDEBB80 != -1)
  {
    sub_1C44006B4();
  }

  v15 = sub_1C442B738(v7, qword_1EDDEBB90);
  sub_1C4433D44();
  sub_1C4460108(v15, v1, &unk_1EC0B9610, &unk_1C4F0F2E0);
  v16 = sub_1C440EF74();
  sub_1C440175C(v16, v17, v11);
  if (!v18)
  {
    sub_1C440AD08();
    sub_1C496C7A8(v1, v2);
    sub_1C442CCA0();
    v19 = sub_1C43FE5F8();
    sub_1C496C838(v19, v20);
    v21 = sub_1C472B6C4();
    if (v21)
    {
      if (*(v21 + 16))
      {
        sub_1C456902C(&qword_1EC0C6370, &qword_1C4F0E1A0);
        v22 = sub_1C4F00EE8();
        v24 = v23;

        v0(v22, v24, 0);

LABEL_9:
        sub_1C441333C();
        sub_1C4419A54();
        sub_1C4453F54();
        sub_1C43FE9F0();
        return;
      }
    }

    v0(0xD000000000000011, 0x80000001C4FAA6C0, 0);
    goto LABEL_9;
  }

  __break(1u);
}

void sub_1C496B294(uint64_t a1, void (**a2)(void, void, void))
{
  v3 = type metadata accessor for EntityTaggingInjectedTags();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - v9;
  v11 = type metadata accessor for Configuration();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDDEBB80 != -1)
  {
    swift_once();
  }

  v15 = sub_1C442B738(v7, qword_1EDDEBB90);
  swift_beginAccess();
  sub_1C4460108(v15, v10, &unk_1EC0B9610, &unk_1C4F0F2E0);
  if (sub_1C44157D4(v10, 1, v11) == 1)
  {
    _Block_release(a2);
    __break(1u);
  }

  else
  {
    sub_1C496C7A8(v10, v14);
    sub_1C496C838(v14, v6);
    sub_1C456902C(&qword_1EC0C6370, &qword_1C4F0E1A0);
    sub_1C4F00F28();
    sub_1C472B8CC();

    a2[2](a2, 1, 0);
    sub_1C4453F54();
    sub_1C4453F54();
    _Block_release(a2);
  }
}

void InternalXPC.Server.behaviorUnderstandingClearEntityTaggingInjectedTags(completion:)()
{
  sub_1C43FBD3C();
  sub_1C4403FC0();
  v3 = type metadata accessor for EntityTaggingInjectedTags();
  v4 = sub_1C43FBD18(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v7 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0(v7);
  v9 = *(v8 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  v11 = sub_1C4469198();
  v12 = sub_1C43FBCE0(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBCC4();
  sub_1C440DED0();
  if (qword_1EDDEBB80 != -1)
  {
    sub_1C44006B4();
  }

  v15 = sub_1C442B738(v7, qword_1EDDEBB90);
  sub_1C4433D44();
  sub_1C4460108(v15, v1, &unk_1EC0B9610, &unk_1C4F0F2E0);
  v16 = sub_1C440EF74();
  sub_1C440175C(v16, v17, v11);
  if (v18)
  {
    __break(1u);
  }

  else
  {
    sub_1C440AD08();
    sub_1C496C7A8(v1, v2);
    sub_1C442CCA0();
    v19 = sub_1C43FE5F8();
    sub_1C496C838(v19, v20);
    sub_1C456902C(&qword_1EC0C6370, &qword_1C4F0E1A0);
    sub_1C4F00F28();
    sub_1C472B8CC();

    v21 = sub_1C4416AEC();
    v0(v21);
    sub_1C441333C();
    sub_1C4419A54();
    sub_1C4453F54();
    sub_1C43FE9F0();
  }
}

void sub_1C496BAA0(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
}

void sub_1C496BB14(uint64_t a1, void *a2, uint64_t a3, void *a4, Swift::Double a5, uint64_t a6, void (**a7)(void, void, void))
{
  v13 = type metadata accessor for EntityTaggingInjectedTags();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v45 - v19;
  v21 = type metadata accessor for Configuration();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDDEBB80 != -1)
  {
    swift_once();
  }

  v25 = sub_1C442B738(v17, qword_1EDDEBB90);
  swift_beginAccess();
  sub_1C4460108(v25, v20, &unk_1EC0B9610, &unk_1C4F0F2E0);
  if (sub_1C44157D4(v20, 1, v21) == 1)
  {
    _Block_release(a7);
    __break(1u);
  }

  else
  {
    sub_1C496C7A8(v20, v24);
    sub_1C496C838(v24, v16);
    v26._countAndFlagsBits = a1;
    v26._object = a2;
    v27._countAndFlagsBits = a3;
    v27._object = a4;
    EntityTaggingInjectedTags.injectTag(mdID:tagType:confidence:)(v26, v27, a5);
    if (v28)
    {
      if (qword_1EDDFECB0 != -1)
      {
        swift_once();
      }

      v29 = sub_1C4F00978();
      sub_1C442B738(v29, qword_1EDDFECB8);
      v30 = v28;
      v31 = sub_1C4F00968();
      v32 = sub_1C4F01CD8();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v45 = v28;
        v46 = v34;
        *v33 = 136315138;
        v35 = v28;
        sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
        v36 = sub_1C4F01198();
        v38 = sub_1C441D828(v36, v37, &v46);

        *(v33 + 4) = v38;
        _os_log_impl(&dword_1C43F8000, v31, v32, "InternalXPC: Behavior Understanding tag injection: failed: %s", v33, 0xCu);
        sub_1C440962C(v34);
        MEMORY[0x1C6942830](v34, -1, -1);
        MEMORY[0x1C6942830](v33, -1, -1);
      }

      swift_getErrorValue();
      v39 = sub_1C495CCE0();
      v41 = v40;
      sub_1C496C8E4();
      v42 = swift_allocError();
      *v43 = v39;
      *(v43 + 8) = v41;
      *(v43 + 16) = 3;
      v44 = sub_1C4EF9798();
      (a7)[2](a7, 0, v44);
    }

    else
    {
      a7[2](a7, 1, 0);
    }

    sub_1C4453F54();
    sub_1C4453F54();
    _Block_release(a7);
  }
}

uint64_t InternalXPC.Server.behaviorUnderstandingInjectTag(forPersonID:tagType:confidence:completion:)(Swift::Double a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(void))
{
  v50 = a6;
  v9 = type metadata accessor for EntityTaggingInjectedTags();
  v10 = sub_1C43FBD18(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBCC4();
  v13 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0(v13);
  v15 = *(v14 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v49 - v17;
  v19 = type metadata accessor for Configuration();
  v20 = sub_1C43FBCE0(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBCC4();
  sub_1C440DED0();
  if (qword_1EDDEBB80 != -1)
  {
    sub_1C44006B4();
  }

  v23 = sub_1C442B738(v13, qword_1EDDEBB90);
  sub_1C440D164();
  sub_1C4460108(v23, v18, &unk_1EC0B9610, &unk_1C4F0F2E0);
  result = sub_1C440175C(v18, 1, v19);
  if (v25)
  {
    __break(1u);
  }

  else
  {
    sub_1C440AD08();
    v26 = sub_1C443DF7C();
    sub_1C496C7A8(v26, v27);
    sub_1C442CCA0();
    v28 = sub_1C43FE5F8();
    sub_1C496C838(v28, v29);
    v30._countAndFlagsBits = sub_1C43FD018();
    v31._countAndFlagsBits = a4;
    v31._object = a5;
    EntityTaggingInjectedTags.injectTag(mdID:tagType:confidence:)(v30, v31, a1);
    if (v32)
    {
      if (qword_1EDDFECB0 != -1)
      {
        sub_1C43FFB88();
      }

      v33 = sub_1C4F00978();
      sub_1C442B738(v33, qword_1EDDFECB8);
      v34 = sub_1C43FCFC0();
      v35 = sub_1C4F00968();
      v36 = sub_1C4F01CD8();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = sub_1C43FD084();
        v38 = sub_1C43FFD34();
        v51 = v32;
        v52 = v38;
        *v37 = 136315138;
        v39 = v32;
        sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
        v40 = sub_1C4F01198();
        v42 = sub_1C441D828(v40, v41, &v52);

        *(v37 + 4) = v42;
        _os_log_impl(&dword_1C43F8000, v35, v36, "InternalXPC: Behavior Understanding tag injection: failed: %s", v37, 0xCu);
        sub_1C440962C(v38);
        sub_1C43FBE2C();
        sub_1C43FBE2C();
      }

      swift_getErrorValue();
      v43 = sub_1C495CCE0();
      v45 = v44;
      sub_1C496C8E4();
      v46 = sub_1C43FFB2C();
      *v47 = v43;
      *(v47 + 8) = v45;
      *(v47 + 16) = 3;
      (v50)(0, v46);
    }

    else
    {
      v48 = sub_1C4416AEC();
      v50(v48);
    }

    sub_1C441333C();
    sub_1C4419A54();
    return sub_1C4453F54();
  }

  return result;
}

void sub_1C496C3A0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1C4F01108();

  [a3 setDateFormat_];
}

unint64_t sub_1C496C458()
{
  result = qword_1EC0BFD58;
  if (!qword_1EC0BFD58)
  {
    sub_1C4572308(&qword_1EC0BFD60, &qword_1C4F3D9F8);
    sub_1C496C4DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFD58);
  }

  return result;
}

unint64_t sub_1C496C4DC()
{
  result = qword_1EC0BFD68;
  if (!qword_1EC0BFD68)
  {
    sub_1C4572308(&qword_1EC0B9398, &qword_1C4F0EEE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFD68);
  }

  return result;
}

uint64_t sub_1C496C608(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
    return sub_1C45A24C0(a1, a2);
  }

  return a1;
}

unint64_t sub_1C496C61C()
{
  result = qword_1EC0BFD78;
  if (!qword_1EC0BFD78)
  {
    sub_1C4572308(&qword_1EC0BFD70, &qword_1C4F3DA00);
    sub_1C496C6A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFD78);
  }

  return result;
}

unint64_t sub_1C496C6A0()
{
  result = qword_1EC0BFD80;
  if (!qword_1EC0BFD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFD80);
  }

  return result;
}

unint64_t sub_1C496C6F4()
{
  result = qword_1EC0BFDB0;
  if (!qword_1EC0BFDB0)
  {
    sub_1C4572308(&qword_1EC0BFDA8, &qword_1C4F3DA38);
    sub_1C496CC38(&qword_1EC0C2C10, type metadata accessor for PhotosPersonObservation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFDB0);
  }

  return result;
}

uint64_t sub_1C496C7A8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C43FBE94();
  v5 = v4(v3);
  sub_1C43FBCE0(v5);
  v7 = *(v6 + 32);
  v8 = sub_1C43FBC98();
  v9(v8);
  return a2;
}

uint64_t sub_1C496C838(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C43FBE94();
  v5 = v4(v3);
  sub_1C43FBCE0(v5);
  v7 = *(v6 + 16);
  v8 = sub_1C43FBC98();
  v9(v8);
  return a2;
}

unint64_t sub_1C496C890()
{
  result = qword_1EC0BFDB8;
  if (!qword_1EC0BFDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFDB8);
  }

  return result;
}

unint64_t sub_1C496C8E4()
{
  result = qword_1EC0BFDC0;
  if (!qword_1EC0BFDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFDC0);
  }

  return result;
}

uint64_t sub_1C496C938(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 5)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_1C496C954(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0;
    LOBYTE(a2) = 6;
  }

  *(result + 16) = a2;
  return result;
}

_BYTE *_s39BehaviorUnderstandingEvaluationXPCErrorOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C496CA5C()
{
  result = qword_1EC0BFDC8;
  if (!qword_1EC0BFDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFDC8);
  }

  return result;
}

unint64_t sub_1C496CAB4()
{
  result = qword_1EC0BFDD8;
  if (!qword_1EC0BFDD8)
  {
    sub_1C4572308(&qword_1EC0B9440, &unk_1C4F0EFD0);
    sub_1C496CC38(&unk_1EDDEFFE0, MEMORY[0x1E69A91A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFDD8);
  }

  return result;
}

unint64_t sub_1C496CB68()
{
  result = qword_1EC0BFDE0;
  if (!qword_1EC0BFDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFDE0);
  }

  return result;
}

unint64_t sub_1C496CBBC()
{
  result = qword_1EDDFA560;
  if (!qword_1EDDFA560)
  {
    sub_1C4572308(&qword_1EC0B8EB8, &unk_1C4F0E920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA560);
  }

  return result;
}

uint64_t sub_1C496CC38(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C496CC80()
{
  result = qword_1EDDDBBF0;
  if (!qword_1EDDDBBF0)
  {
    sub_1C4572308(&qword_1EC0BFDF0, &qword_1C4F3DD00);
    sub_1C496CD04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDBBF0);
  }

  return result;
}

unint64_t sub_1C496CD04()
{
  result = qword_1EDDDBB90;
  if (!qword_1EDDDBB90)
  {
    sub_1C4572308(&qword_1EC0B9AD8, &unk_1C4F14290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDBB90);
  }

  return result;
}

void *sub_1C496CDA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1C441AE30();
  v19 = type metadata accessor for BehaviorDatabase(0);
  v20 = &off_1F43E5250;
  v18[0] = v6;
  type metadata accessor for BehaviorSampleGenerator();
  v11 = swift_allocObject();
  sub_1C4418280(v18, v19);
  sub_1C43FCE64();
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBCC4();
  sub_1C43FD1B4();
  (*(v15 + 16))(v7);
  v16 = sub_1C496CECC(*v7, v5, a3, v11, a4, a5);
  sub_1C440962C(v18);
  return v16;
}

void *sub_1C496CECC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  sub_1C441AE30();
  a4[13] = v11(0);
  a4[14] = a6;
  a4[10] = v6;
  a4[7] = type metadata accessor for BehaviorDatabase(0);
  a4[8] = &off_1F43E5250;
  a4[2] = 0xD000000000000029;
  a4[3] = 0x80000001C4F8E5F0;
  a4[4] = v7;
  type metadata accessor for WeightedProbabilitySampleGenerator();
  a4[9] = swift_allocObject();
  a4[15] = a3;
  return a4;
}

unint64_t sub_1C496CF70()
{
  result = qword_1EC0BFE00;
  if (!qword_1EC0BFE00)
  {
    sub_1C4572308(&qword_1EC0B90A8, &qword_1C4F0EBD0);
    sub_1C496CFF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFE00);
  }

  return result;
}

unint64_t sub_1C496CFF4()
{
  result = qword_1EC0BFE08;
  if (!qword_1EC0BFE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFE08);
  }

  return result;
}

uint64_t sub_1C496D048()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1C496D910;
  v6 = sub_1C4414C5C();

  return v7(v6, v3, v4);
}

uint64_t sub_1C496D0F8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1C4707B70;
  v8 = sub_1C4414C5C();

  return v9(v8, v3, v4, v5, v6);
}

unint64_t sub_1C496D1C4()
{
  result = qword_1EC0BFE18;
  if (!qword_1EC0BFE18)
  {
    sub_1C4572308(&qword_1EC0B90D8, &qword_1C4F0EBF0);
    sub_1C448EFBC(&qword_1EDDFA5C8, &qword_1EC0B90E8, &qword_1C4F3DCF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFE18);
  }

  return result;
}

unint64_t sub_1C496D268()
{
  result = qword_1EDDDBD68;
  if (!qword_1EDDDBD68)
  {
    sub_1C4572308(&qword_1EC0B9120, &qword_1C4F3DD40);
    sub_1C446E5F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDBD68);
  }

  return result;
}

unint64_t sub_1C496D2EC()
{
  result = qword_1EDDF05C8;
  if (!qword_1EDDF05C8)
  {
    sub_1C4572308(&qword_1EC0B9178, &qword_1C4F11B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF05C8);
  }

  return result;
}

unint64_t sub_1C496D368()
{
  result = qword_1EDDDBBE8;
  if (!qword_1EDDDBBE8)
  {
    sub_1C4572308(&qword_1EC0B9180, &unk_1C4F0EC80);
    sub_1C496D3EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDBBE8);
  }

  return result;
}

unint64_t sub_1C496D3EC()
{
  result = qword_1EDDDBB68;
  if (!qword_1EDDDBB68)
  {
    sub_1C4572308(&qword_1EC0B9188, &unk_1C4F3DD60);
    sub_1C496D470();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDBB68);
  }

  return result;
}

unint64_t sub_1C496D470()
{
  result = qword_1EDDEACE8;
  if (!qword_1EDDEACE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEACE8);
  }

  return result;
}

unint64_t sub_1C496D4C4()
{
  result = qword_1EDDF0630;
  if (!qword_1EDDF0630)
  {
    sub_1C4572308(&qword_1EC0B9228, &unk_1C4F3DD70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF0630);
  }

  return result;
}

unint64_t sub_1C496D540()
{
  result = qword_1EC0BFE38;
  if (!qword_1EC0BFE38)
  {
    sub_1C4572308(&qword_1EC0BFE30, &qword_1C4F3DD80);
    sub_1C448EFBC(&qword_1EC0BFE40, &unk_1EC0B84E0, qword_1C4F0D2D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFE38);
  }

  return result;
}

unint64_t sub_1C496D600()
{
  result = qword_1EDDF0698;
  if (!qword_1EDDF0698)
  {
    sub_1C4572308(&qword_1EC0B9238, &qword_1C4F3DD90);
    sub_1C496D684();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF0698);
  }

  return result;
}

unint64_t sub_1C496D684()
{
  result = qword_1EDDF7B78;
  if (!qword_1EDDF7B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF7B78);
  }

  return result;
}

unint64_t sub_1C496D6D8()
{
  result = qword_1EDDFA570;
  if (!qword_1EDDFA570)
  {
    sub_1C4572308(&qword_1EC0B9208, &qword_1C4F0ED20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA570);
  }

  return result;
}

unint64_t sub_1C496D754()
{
  result = qword_1EC0BFE58;
  if (!qword_1EC0BFE58)
  {
    sub_1C4572308(&qword_1EC0B9410, &qword_1C4F3DDA0);
    sub_1C496D804(&qword_1EC0BFE60, &qword_1EC0B9428, &unk_1C4F0EFB0, sub_1C496D888);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFE58);
  }

  return result;
}

uint64_t sub_1C496D804(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C496D888()
{
  result = qword_1EDDF06E0;
  if (!qword_1EDDF06E0)
  {
    sub_1C4572308(&qword_1EC0C6370, &qword_1C4F0E1A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF06E0);
  }

  return result;
}

uint64_t sub_1C496D918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1C456902C(&qword_1EC0C0008, &qword_1C4F3E0E0);
  if (*(a1 + *(v6 + 28)) != 1)
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v14 = sub_1C4F00978();
    sub_1C442B738(v14, qword_1EDDFECB8);
    v10 = sub_1C4F00968();
    v11 = sub_1C4F01CD8();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_12;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "firstEvent is expected have isStarting set to true";
    goto LABEL_11;
  }

  v7 = v6;
  v8 = sub_1C4EF9CD8();
  sub_1C4498DE4(&qword_1EDDFCD70);
  if (sub_1C4F01068())
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v9 = sub_1C4F00978();
    sub_1C442B738(v9, qword_1EDDFECB8);
    v10 = sub_1C4F00968();
    v11 = sub_1C4F01CD8();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_12;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "firstEvent is expected to have a timestamp earlier than secondEvent";
LABEL_11:
    _os_log_impl(&dword_1C43F8000, v10, v11, v13, v12, 2u);
    MEMORY[0x1C6942830](v12, -1, -1);
LABEL_12:

    v15 = sub_1C456902C(&qword_1EC0BFFF8, &qword_1C4F3E0C8);

    return sub_1C440BAA8(a3, 1, 1, v15);
  }

  v17 = *(*(v8 - 8) + 16);
  v17(a3, a1, v8);
  v18 = sub_1C456902C(&qword_1EC0BFFF8, &qword_1C4F3E0C8);
  v17(a3 + *(v18 + 28), a2, v8);
  v19 = (a1 + *(v7 + 32));
  v20 = *v19;
  v21 = *(v19 + 1);
  v22 = *(v19 + 2);
  v23 = a3 + *(v18 + 32);
  *v23 = v20;
  *(v23 + 8) = v21;
  *(v23 + 16) = v22;
  sub_1C440BAA8(a3, 0, 1, v18);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C496DC04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1C456902C(&qword_1EC0B8E10, &qword_1C4F3E090);
  if (*(a1 + *(v6 + 28)) != 1)
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v14 = sub_1C4F00978();
    sub_1C442B738(v14, qword_1EDDFECB8);
    v10 = sub_1C4F00968();
    v11 = sub_1C4F01CD8();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_12;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "firstEvent is expected have isStarting set to true";
    goto LABEL_11;
  }

  v7 = v6;
  v8 = sub_1C4EF9CD8();
  sub_1C4498DE4(&qword_1EDDFCD70);
  if (sub_1C4F01068())
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v9 = sub_1C4F00978();
    sub_1C442B738(v9, qword_1EDDFECB8);
    v10 = sub_1C4F00968();
    v11 = sub_1C4F01CD8();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_12;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "firstEvent is expected to have a timestamp earlier than secondEvent";
LABEL_11:
    _os_log_impl(&dword_1C43F8000, v10, v11, v13, v12, 2u);
    MEMORY[0x1C6942830](v12, -1, -1);
LABEL_12:

    v15 = sub_1C456902C(&qword_1EC0BFFA0, &unk_1C4F3E078);

    return sub_1C440BAA8(a3, 1, 1, v15);
  }

  v17 = *(*(v8 - 8) + 16);
  v17(a3, a1, v8);
  v18 = sub_1C456902C(&qword_1EC0BFFA0, &unk_1C4F3E078);
  v17(a3 + *(v18 + 28), a2, v8);
  v19 = (a1 + *(v7 + 32));
  v20 = *v19;
  v21 = *(v19 + 1);
  v22 = *(v19 + 2);
  v23 = a3 + *(v18 + 32);
  *v23 = v20;
  *(v23 + 8) = v21;
  *(v23 + 16) = v22;
  sub_1C440BAA8(a3, 0, 1, v18);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C496DEF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1C456902C(&qword_1EC0BFF48, &qword_1C4F3E028);
  if (*(a1 + *(v6 + 28)) != 1)
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v14 = sub_1C4F00978();
    sub_1C442B738(v14, qword_1EDDFECB8);
    v10 = sub_1C4F00968();
    v11 = sub_1C4F01CD8();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_12;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "firstEvent is expected have isStarting set to true";
    goto LABEL_11;
  }

  v7 = v6;
  v8 = sub_1C4EF9CD8();
  sub_1C4498DE4(&qword_1EDDFCD70);
  if (sub_1C4F01068())
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v9 = sub_1C4F00978();
    sub_1C442B738(v9, qword_1EDDFECB8);
    v10 = sub_1C4F00968();
    v11 = sub_1C4F01CD8();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_12;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "firstEvent is expected to have a timestamp earlier than secondEvent";
LABEL_11:
    _os_log_impl(&dword_1C43F8000, v10, v11, v13, v12, 2u);
    MEMORY[0x1C6942830](v12, -1, -1);
LABEL_12:

    v15 = sub_1C456902C(&qword_1EC0BFF40, &qword_1C4F3E018);

    return sub_1C440BAA8(a3, 1, 1, v15);
  }

  v17 = *(*(v8 - 8) + 16);
  v17(a3, a1, v8);
  v18 = sub_1C456902C(&qword_1EC0BFF40, &qword_1C4F3E018);
  v17(a3 + *(v18 + 28), a2, v8);
  v19 = (a1 + *(v7 + 32));
  v20 = *v19;
  v21 = v19[1];
  v22 = v19[2];
  v23 = (a3 + *(v18 + 32));
  *v23 = v20;
  v23[1] = v21;
  v23[2] = v22;
  sub_1C440BAA8(a3, 0, 1, v18);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

IntelligencePlatformCore::ContextDataSources_optional __swiftcall ContextDataSources.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C4F025D8();

  v5 = 12;
  if (v3 < 0xC)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ContextDataSources.rawValue.getter()
{
  result = 6909804;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x7261646E656C6163;
      break;
    case 3:
      result = 0x74656C6C6177;
      break;
    case 4:
      result = 0xD000000000000019;
      break;
    case 5:
      result = 0xD000000000000026;
      break;
    case 6:
      result = 0xD000000000000017;
      break;
    case 7:
      result = 7368801;
      break;
    case 8:
      result = 0x704165746F6D6572;
      break;
    case 9:
      result = 0x746361736E617274;
      break;
    case 0xA:
      result = 0xD000000000000013;
      break;
    case 0xB:
      result = 0x6353736F746F6870;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C496E3D8@<X0>(unint64_t *a1@<X8>)
{
  result = ContextDataSources.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C496E410(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461447472617473 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65746144646E65 && a2 == 0xE700000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x80000001C4FAAA10 == a2;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656C626164616572 && a2 == 0xEF65746144646E45;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C4F02938();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1C496E5C8(char a1)
{
  result = 0x7461447472617473;
  switch(a1)
  {
    case 1:
      result = 0x65746144646E65;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x656C626164616572;
      break;
    case 4:
      result = 0x746E65746E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C496E678(void *a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  v23[0] = *(a2 + 16);
  v23[1] = v5;
  type metadata accessor for SessionCodableDataComplyingWrapper.CodingKeys();
  sub_1C44184B0();
  swift_getWitnessTable();
  v6 = sub_1C4F02808();
  sub_1C43FCE64();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v23 - v12;
  v14 = a1[4];
  sub_1C4409678(a1, a1[3]);
  v15 = v23[3];
  sub_1C4F02BF8();
  v16 = *v15;
  v27 = 0;
  v17 = v23[2];
  sub_1C4F027B8();
  if (v17)
  {
    return (*(v8 + 8))(v13, v6);
  }

  v18 = v15[1];
  sub_1C4435168();
  sub_1C4F027B8();
  v20 = *(a2 + 48);
  v26 = 2;
  sub_1C4EF9CD8();
  sub_1C4498DE4(&qword_1EDDFCD80);
  sub_1C4F027E8();
  v21 = *(a2 + 52);
  v25 = 3;
  sub_1C4F027E8();
  v22 = *(a2 + 56);
  v24 = 4;
  sub_1C4F027E8();
  return (*(v8 + 8))(v13, v6);
}

uint64_t sub_1C496E8D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v55 = a4;
  sub_1C43FCE64();
  v54 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v60 = v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EF9CD8();
  sub_1C43FCE64();
  v65 = v12;
  v66 = v13;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v12);
  v59 = v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v58 = v52 - v18;
  type metadata accessor for SessionCodableDataComplyingWrapper.CodingKeys();
  sub_1C44184B0();
  swift_getWitnessTable();
  sub_1C4422368();
  v61 = sub_1C4F02708();
  sub_1C43FCE64();
  v57 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v52 - v23;
  v56 = a3;
  v68 = type metadata accessor for SessionCodableDataComplyingWrapper();
  sub_1C43FCE64();
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v67 = v52 - v30;
  v31 = a1[3];
  v32 = a1[4];
  v64 = a1;
  sub_1C4409678(a1, v31);
  v62 = v24;
  sub_1C4422368();
  v33 = v63;
  sub_1C4F02BC8();
  if (v33)
  {
    return sub_1C440962C(v64);
  }

  v53 = v26;
  v35 = v58;
  v34 = v59;
  v36 = v57;
  v63 = a2;
  v37 = v60;
  v72 = 0;
  sub_1C4F02698();
  v38 = v67;
  *v67 = v39;
  sub_1C4435168();
  sub_1C4F02698();
  v41 = v65;
  v40 = v66;
  *(v38 + 1) = v42;
  v71 = 2;
  v52[1] = sub_1C4498DE4(&unk_1EDDFCD60);
  sub_1C4F026C8();
  v43 = v35;
  v44 = *(v40 + 32);
  v44(&v38[v68[12]], v43, v41);
  v70 = 3;
  sub_1C4F026C8();
  v44(&v67[v68[13]], v34, v41);
  v69 = 4;
  v45 = v37;
  v46 = v63;
  v47 = v61;
  sub_1C4F026C8();
  (*(v36 + 8))(v62, v47);
  v49 = v67;
  v48 = v68;
  (*(v54 + 32))(&v67[v68[14]], v45, v46);
  v50 = v53;
  (*(v53 + 16))(v55, v49, v48);
  sub_1C440962C(v64);
  return (*(v50 + 8))(v49, v48);
}

BOOL sub_1C496EE48(char *a1, char *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  return sub_1C450EB7C(*a1, *a2);
}

uint64_t sub_1C496EE60(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_1C4563CBC(*v1);
}

uint64_t sub_1C496EE70(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  return sub_1C450EB8C(a1, *v2);
}

uint64_t sub_1C496EE80(uint64_t a1, void *a2)
{
  sub_1C4F02AF8();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  sub_1C450EB8C(v8, *v2);
  return sub_1C4F02B68();
}

unint64_t sub_1C496EECC(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_1C496E5C8(*v1);
}

uint64_t sub_1C496EEDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_1C496E410(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1C496EF10(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = *v1;
  return sub_1C4462378();
}

uint64_t sub_1C496EF38@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  result = sub_1C455F160();
  *a2 = result;
  return result;
}

uint64_t sub_1C496EF6C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1C496EFC0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1C496F050(uint64_t a1)
{
  v1[3] = a1;
  v2 = sub_1C456902C(&qword_1EC0BFE98, qword_1C4F42410);
  v1[4] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v4 = sub_1C456902C(&qword_1EC0B8B48, &qword_1C4F3DFA0);
  v1[6] = v4;
  v5 = *(v4 - 8);
  v1[7] = v5;
  v6 = *(v5 + 64) + 15;
  v1[8] = swift_task_alloc();
  v7 = *(*(sub_1C4F01188() - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v8 = sub_1C4EF9398();
  v1[10] = v8;
  v9 = *(v8 - 8);
  v1[11] = v9;
  v10 = *(v9 + 64) + 15;
  v1[12] = swift_task_alloc();
  v11 = *(*(sub_1C4EF9378() - 8) + 64) + 15;
  v1[13] = swift_task_alloc();
  v12 = sub_1C4EFA018();
  v1[14] = v12;
  v13 = *(v12 - 8);
  v1[15] = v13;
  v14 = *(v13 + 64) + 15;
  v1[16] = swift_task_alloc();
  v15 = *(*(sub_1C456902C(&qword_1EC0BFEA0, &qword_1C4F3DFA8) - 8) + 64) + 15;
  v1[17] = swift_task_alloc();
  v16 = *(*(type metadata accessor for LOISessionDataAsyncSequence(0) - 8) + 64) + 15;
  v1[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C496F2CC, 0, 0);
}

uint64_t sub_1C496F2CC()
{
  sub_1C43FBCD4();
  v1 = v0[18];
  v2 = v0[3];
  sub_1C4430DD4();
  v0[19] = MEMORY[0x1E69E7CC0];
  swift_task_alloc();
  sub_1C43FBE70();
  v0[20] = v3;
  *v3 = v4;
  sub_1C442EBD8(v3);

  return sub_1C4A00F40();
}

uint64_t sub_1C496F364()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *(v1 + 160);
  v3 = *v0;
  sub_1C43FBDAC();
  *v4 = v3;

  v5 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C496F448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1C4433C40();
  sub_1C444FD14();
  v19 = v18[17];
  v20 = v18[4];
  v21 = sub_1C440EF74();
  v23 = sub_1C44157D4(v21, v22, v20);
  v24 = v18[19];
  if (v23 == 1)
  {
    v25 = v18[18];
    sub_1C441B430();
    sub_1C4414C78(v26);
    v27 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    v28 = sub_1C441E458();
    sub_1C448F148(v28, sel_setDateFormat_);

    v29 = [objc_opt_self() localTimeZone];
    sub_1C443EF28();

    sub_1C4EF9FF8();
    v30 = sub_1C43FC54C();
    v32 = v31(v30);
    sub_1C448F148(v32, sel_setTimeZone_);

    v33 = sub_1C4EF93D8();
    sub_1C44099C4(v33);
    sub_1C4EF93C8();
    sub_1C447E2E8();
    sub_1C4EF9388();
    *v20 = v27;
    v34 = *MEMORY[0x1E6967FD0];
    v35 = sub_1C442A44C();
    v36(v35);
    v76 = v27;
    sub_1C4EF93A8();
    v37 = objc_autoreleasePoolPush();
    v18[2] = v24;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C456902C(&qword_1EC0BFEA8, &qword_1C4F3DFB0);
    sub_1C497AE44();
    sub_1C44365AC();
    v38 = sub_1C4EF93B8();
    v40 = v39;
    v41 = v18[18];
    v42 = v18[19];
    v43 = v18[17];
    v77 = v18[16];
    v78 = v18[13];
    v44 = v18[9];
    v79 = v18[12];
    v80 = v18[8];
    v81 = v18[5];

    objc_autoreleasePoolPop(v37);
    sub_1C4F01178();
    sub_1C4F01158();

    sub_1C4411F20();
    sub_1C4434000(v38, v40);

    sub_1C43FDA40();
    sub_1C4409BA4();

    return v69(v66, v67, v68, v69, v70, v71, v72, v73, v76, v77, v78, v79, v80, v81, a15, a16, a17, a18);
  }

  else
  {
    v45 = v18[8];
    v46 = v18[5];
    v47 = v18[6];
    sub_1C440A9B8();
    sub_1C44CDA7C();
    sub_1C4EF9AD8();
    sub_1C4461FD4(v48);
    v50 = sub_1C44602A0(v49);
    sub_1C440F834(v50);
    v52 = *(v51 + 32);
    v53 = sub_1C4405DA0();
    v52(v53);
    v54 = sub_1C440E450();
    v52(v54);
    v55 = *(v20 + 32);
    v56 = *(v47 + 56);
    sub_1C4422B34();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v58 = v18[19];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C441BA3C();
      sub_1C458E4D4();
      v58 = v74;
    }

    sub_1C441CB28();
    if (v60)
    {
      sub_1C4413364(v59);
      sub_1C458E4D4();
      v58 = v75;
    }

    v61 = v18[8];
    sub_1C441FD60(v18[7]);
    sub_1C44CDA7C();
    v18[19] = v58;
    swift_task_alloc();
    sub_1C43FBE70();
    v18[20] = v62;
    *v62 = v63;
    sub_1C442EBD8();
    sub_1C4409BA4();

    return sub_1C4A00F40();
  }
}

uint64_t sub_1C496F874(uint64_t a1)
{
  v1[5] = a1;
  v2 = sub_1C456902C(&unk_1EC0BCCF0, qword_1C4F2A740);
  v1[6] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v4 = sub_1C456902C(&qword_1EC0B8B50, &unk_1C4F0DF80);
  v1[8] = v4;
  v5 = *(v4 - 8);
  v1[9] = v5;
  v6 = *(v5 + 64) + 15;
  v1[10] = swift_task_alloc();
  v7 = *(*(sub_1C4F01188() - 8) + 64) + 15;
  v1[11] = swift_task_alloc();
  v8 = sub_1C4EF9398();
  v1[12] = v8;
  v9 = *(v8 - 8);
  v1[13] = v9;
  v10 = *(v9 + 64) + 15;
  v1[14] = swift_task_alloc();
  v11 = *(*(sub_1C4EF9378() - 8) + 64) + 15;
  v1[15] = swift_task_alloc();
  v12 = sub_1C4EFA018();
  v1[16] = v12;
  v13 = *(v12 - 8);
  v1[17] = v13;
  v14 = *(v13 + 64) + 15;
  v1[18] = swift_task_alloc();
  v15 = *(*(sub_1C456902C(&qword_1EC0BFEC0, &qword_1C4F3DFB8) - 8) + 64) + 15;
  v1[19] = swift_task_alloc();
  v16 = sub_1C456902C(&qword_1EC0BFEC8, &qword_1C4F3DFC0);
  v1[20] = v16;
  v17 = *(v16 - 8);
  v1[21] = v17;
  v18 = *(v17 + 64) + 15;
  v1[22] = swift_task_alloc();
  v19 = *(*(sub_1C456902C(&qword_1EC0BCD40, &qword_1C4F2A7C8) - 8) + 64) + 15;
  v1[23] = swift_task_alloc();
  v20 = *(*(sub_1C456902C(&qword_1EC0BFED0, &qword_1C4F3DFC8) - 8) + 64) + 15;
  v1[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C496FB9C, 0, 0);
}

uint64_t sub_1C496FB9C()
{
  sub_1C4404D98();
  sub_1C448840C();
  sub_1C440CCA4();
  sub_1C44DDE2C();
  v2 = *(v1 + 16);
  v3 = sub_1C4404C28();
  v4(v3);
  sub_1C4401CBC(&qword_1EC0BFED8, &qword_1EC0BFEC8, &qword_1C4F3DFC0);
  sub_1C447CDD0();
  sub_1C4422368();
  sub_1C4420C3C(v5, v6, v7);
  *(v0 + 200) = MEMORY[0x1E69E7CC0];
  v8 = sub_1C4402120();
  sub_1C456902C(v8, v9);
  sub_1C445FDB8(&qword_1EC0BFEE8);
  v10 = *(MEMORY[0x1E69E85A8] + 4);
  swift_task_alloc();
  sub_1C43FBE70();
  *(v0 + 208) = v11;
  *v11 = v12;
  v13 = sub_1C443514C(v11);

  return MEMORY[0x1EEE6D8C8](v13);
}

uint64_t sub_1C496FCE8()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FBE64();
  *v3 = v2;
  v5 = *(v4 + 208);
  v6 = *v1;
  sub_1C43FBDAC();
  *v7 = v6;
  *(v8 + 216) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C496FDE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C447F160();
  sub_1C4441100();
  v24 = v21[19];
  v25 = v21[6];
  sub_1C4405CEC();
  if (v26)
  {
    v27 = v21[27];
    v28 = v21[24];
    v29 = v21[25];
    sub_1C440BDF8();
    v92 = v30;
    v93 = v31;
    sub_1C4420C3C(v32, &qword_1EC0BFED0, &qword_1C4F3DFC8);
    v33 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    v34 = sub_1C441E458();
    sub_1C441804C(v34, sel_setDateFormat_);

    v35 = [objc_opt_self() localTimeZone];
    sub_1C44EB888();

    sub_1C4EF9FF8();
    v36 = sub_1C441C348();
    v38 = v37(v36);
    sub_1C441804C(v38, sel_setTimeZone_);

    v39 = sub_1C4EF93D8();
    sub_1C44099C4(v39);
    sub_1C4EF93C8();
    sub_1C4471CC8();
    sub_1C4EF9388();
    *v22 = v33;
    v40 = *MEMORY[0x1E6967FD0];
    v41 = sub_1C4424CF8();
    v42(v41);
    v43 = v33;
    sub_1C4EF93A8();
    v44 = objc_autoreleasePoolPush();
    v21[4] = v29;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C456902C(&qword_1EC0BFEF0, &unk_1C4F3DFE0);
    sub_1C497AEF4();
    sub_1C4428EA4();
    v45 = v21[25];
    if (v20)
    {
      v46 = v21[25];

      objc_autoreleasePoolPop(v44);

      v48 = v21[23];
      v47 = v21[24];
      v49 = v21[22];
      sub_1C4414608();
      v94 = v21[7];

      sub_1C43FC560();
      sub_1C4416034();

      return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, v92, v94, a17, a18, a19, a20);
    }

    else
    {
      sub_1C441AF54();
      objc_autoreleasePoolPop(v44);
      sub_1C4F01178();
      sub_1C4404DC8();
      sub_1C4F01158();

      sub_1C4411F20();
      v80 = sub_1C4404DC8();
      sub_1C4434000(v80, v81);

      sub_1C43FDA40();
      sub_1C4416034();

      return v85(v82, v83, v84, v85, v86, v87, v88, v89, a9, a10, a11, a12, a13, a14, v92, v93, a17, a18, a19, a20);
    }
  }

  else
  {
    v95 = v21[25];
    sub_1C4460858();
    sub_1C440A9B8();
    sub_1C44CDA7C();
    sub_1C4EF9AD8();
    sub_1C44409E0(v59);
    v61 = sub_1C44602A0(v60);
    sub_1C440F834(v61);
    v63 = *(v62 + 32);
    v64 = sub_1C4405DA0();
    v63(v64);
    v65 = sub_1C440E450();
    v63(v65);
    v66 = *(v25 + 32);
    v67 = *(v23 + 56);
    sub_1C4422B34();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v69 = v21[25];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C441BA3C();
      sub_1C458E498();
      v69 = v90;
    }

    sub_1C441CB28();
    if (v71)
    {
      sub_1C4413364(v70);
      sub_1C458E498();
      v69 = v91;
    }

    v72 = v21[10];
    sub_1C441FD60(v21[9]);
    sub_1C44CDA7C();
    v21[25] = v69;
    v73 = sub_1C4402120();
    sub_1C456902C(v73, v74);
    sub_1C445FDB8(&qword_1EC0BFEE8);
    v75 = *(MEMORY[0x1E69E85A8] + 4);
    swift_task_alloc();
    sub_1C43FBE70();
    v21[26] = v76;
    *v76 = v77;
    sub_1C443514C(v76);
    sub_1C4416034();

    return MEMORY[0x1EEE6D8C8](v78);
  }
}

uint64_t sub_1C4970258()
{
  sub_1C43FBCD4();
  v0[2] = v0[27];
  v0[28] = sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  swift_willThrowTypedImpl();
  v1 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C49702E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1C43FBDC8();
  sub_1C4404B08();
  sub_1C4424740();
  v13 = sub_1C4F028C8();
  if (v13)
  {
    v31 = v13;
  }

  else
  {
    v15 = *(v12 + 216);
    v14 = *(v12 + 224);
    v31 = sub_1C43FFB2C();
    *v16 = v15;
  }

  v17 = *(v12 + 200);
  sub_1C4420C3C(*(v12 + 192), &qword_1EC0BFED0, &qword_1C4F3DFC8);

  v19 = *(v12 + 184);
  v18 = *(v12 + 192);
  v20 = *(v12 + 176);
  sub_1C4414608();
  v21 = *(v12 + 56);

  sub_1C43FBDA0();
  sub_1C43FEA3C();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, v31, a10, a11, a12);
}

uint64_t sub_1C49703F8(uint64_t a1, uint64_t a2)
{
  v2[13] = a1;
  v2[14] = a2;
  v3 = sub_1C456902C(&qword_1EC0B97B8, &unk_1C4F0F7F0);
  v2[15] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v5 = sub_1C456902C(&qword_1EC0B8B58, &qword_1C4F3DFF0);
  v2[17] = v5;
  v6 = *(v5 - 8);
  v2[18] = v6;
  v7 = *(v6 + 64) + 15;
  v2[19] = swift_task_alloc();
  v8 = *(*(sub_1C4F01188() - 8) + 64) + 15;
  v2[20] = swift_task_alloc();
  v9 = sub_1C4EF9398();
  v2[21] = v9;
  v10 = *(v9 - 8);
  v2[22] = v10;
  v11 = *(v10 + 64) + 15;
  v2[23] = swift_task_alloc();
  v12 = *(*(sub_1C4EF9378() - 8) + 64) + 15;
  v2[24] = swift_task_alloc();
  v13 = sub_1C4EFA018();
  v2[25] = v13;
  v14 = *(v13 - 8);
  v2[26] = v14;
  v15 = *(v14 + 64) + 15;
  v2[27] = swift_task_alloc();
  v16 = *(*(sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0) - 8) + 64) + 15;
  v2[28] = swift_task_alloc();
  v17 = sub_1C4EF9CD8();
  v2[29] = v17;
  v18 = *(v17 - 8);
  v2[30] = v18;
  v19 = *(v18 + 64) + 15;
  v2[31] = swift_task_alloc();
  v20 = *(*(sub_1C456902C(&qword_1EC0B97C0, &qword_1C4F0F800) - 8) + 64) + 15;
  v2[32] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C49706DC, 0, 0);
}

uint64_t sub_1C49706DC()
{
  sub_1C43FBCD4();
  v1 = MEMORY[0x1E69E7CC0];
  v2 = *(v0[13] + 16);
  v0[34] = v0[14];
  v0[35] = v1;
  v0[33] = v2;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C4970754()
{
  sub_1C4404D98();
  v4 = v0[34];
  if (v4 >= v0[33])
  {
    v19 = v0[32];
    v20 = v0[15];
    sub_1C43FCF64();
    sub_1C440BAA8(v21, v22, v23, v24);
    v7 = v0[34];
  }

  else
  {
    if (v4 < 0)
    {
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v1, v2, v3);
    }

    v6 = v0[28];
    v5 = v0[29];
    sub_1C442E860(v0[13] + 40 * v4 + 32, (v0 + 2));
    v7 = v4 + 1;
    v8 = v0[6];
    sub_1C4409678(v0 + 2, v0[5]);
    v9 = *(v8 + 8);
    v10 = sub_1C43FD2BC();
    v11(v10);
    v12 = sub_1C44157D4(v6, 1, v5);
    v13 = v0[32];
    if (v12 == 1)
    {
      v14 = v0[15];
      sub_1C4420C3C(v0[28], &unk_1EC0B84E0, qword_1C4F0D2D0);
      sub_1C440EF74();
      sub_1C4401E28();
    }

    else
    {
      v25 = v0[30];
      v26 = v0[15];
      (*(v25 + 32))(v0[31], v0[28], v0[29]);
      v27 = *(v25 + 16);
      v28 = sub_1C4402120();
      (v27)(v28);
      v29 = *(v26 + 28);
      sub_1C442BBB8();
      v27();
      sub_1C442E860((v0 + 2), (v0 + 7));
      sub_1C4A8556C(v0 + 7, v13 + *(v26 + 32));
      v30 = *(v25 + 8);
      v31 = sub_1C4402B58();
      v32(v31);
      sub_1C43FBD94();
      v18 = v26;
    }

    sub_1C440BAA8(v15, v16, v17, v18);
    sub_1C440962C(v0 + 2);
  }

  v0[36] = v7;
  v1 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C4970D60(uint64_t a1)
{
  v1[26] = a1;
  v2 = sub_1C456902C(&qword_1EC0BF8C8, &qword_1C4F3ADF0);
  v1[27] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[28] = swift_task_alloc();
  v4 = sub_1C456902C(&qword_1EC0B8B70, &unk_1C4F0DFA0);
  v1[29] = v4;
  v5 = *(v4 - 8);
  v1[30] = v5;
  v6 = *(v5 + 64) + 15;
  v1[31] = swift_task_alloc();
  v7 = *(*(sub_1C4F01188() - 8) + 64) + 15;
  v1[32] = swift_task_alloc();
  v8 = sub_1C4EF9398();
  v1[33] = v8;
  v9 = *(v8 - 8);
  v1[34] = v9;
  v10 = *(v9 + 64) + 15;
  v1[35] = swift_task_alloc();
  v11 = *(*(sub_1C4EF9378() - 8) + 64) + 15;
  v1[36] = swift_task_alloc();
  v12 = sub_1C4EFA018();
  v1[37] = v12;
  v13 = *(v12 - 8);
  v1[38] = v13;
  v14 = *(v13 + 64) + 15;
  v1[39] = swift_task_alloc();
  v15 = *(*(sub_1C456902C(&qword_1EC0BF8E0, &qword_1C4F3E000) - 8) + 64) + 15;
  v1[40] = swift_task_alloc();
  v16 = type metadata accessor for InferredActivitySegment();
  v1[41] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v1[42] = swift_task_alloc();
  v18 = *(*(sub_1C456902C(&qword_1EC0BFF20, &qword_1C4F3E008) - 8) + 64) + 15;
  v1[43] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4971018, 0, 0);
}

uint64_t sub_1C4971018()
{
  sub_1C43FBCD4();
  sub_1C4937120(*(v0 + 208), v0 + 16);
  *(v0 + 352) = MEMORY[0x1E69E7CC0];
  v1 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C4971084()
{
  sub_1C43FBCD4();
  if (v0[3])
  {
    swift_task_alloc();
    sub_1C43FBE70();
    v0[45] = v1;
    *v1 = v2;
    v1[1] = sub_1C4971180;
    v3 = v0[40];

    return sub_1C493541C();
  }

  else
  {
    v5 = v0[40];
    v6 = v0[41];
    sub_1C43FCF64();
    sub_1C440BAA8(v7, v8, v9, v10);
    sub_1C4420C3C(v0[40], &qword_1EC0BF8E0, &qword_1C4F3E000);
    v11 = v0[43];
    v12 = v0[27];
    sub_1C43FCF64();
    sub_1C440BAA8(v13, v14, v15, v16);
    v17 = sub_1C43FCE74();

    return MEMORY[0x1EEE6DFA0](v17, v18, v19);
  }
}

uint64_t sub_1C4971180()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *(v1 + 360);
  v3 = *v0;
  sub_1C43FBDAC();
  *v4 = v3;

  v5 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C4971264()
{
  sub_1C4404D98();
  v1 = v0[40];
  v2 = v0[41];
  sub_1C4410EC0();
  if (v3)
  {
    sub_1C4420C3C(v1, &qword_1EC0BF8E0, &qword_1C4F3E000);
    v12 = 1;
  }

  else
  {
    v5 = v0[42];
    v4 = v0[43];
    v6 = v0[27];
    sub_1C497B524();
    v7 = sub_1C4EF9CD8();
    sub_1C43FBCE0(v7);
    v9 = *(v8 + 16);
    v10 = sub_1C43FBEF8();
    v9(v10);
    (v9)(v4 + *(v6 + 28), v5 + *(v2 + 20), v7);
    v11 = *(v6 + 32);
    sub_1C497B524();
    v12 = 0;
  }

  sub_1C440BAA8(v0[43], v12, 1, v0[27]);
  v13 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1C49717BC(uint64_t a1)
{
  v1[5] = a1;
  v2 = sub_1C456902C(&qword_1EC0BFF40, &qword_1C4F3E018);
  v1[6] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v4 = sub_1C456902C(&qword_1EC0B8B78, &qword_1C4F3E020);
  v1[8] = v4;
  v5 = *(v4 - 8);
  v1[9] = v5;
  v6 = *(v5 + 64) + 15;
  v1[10] = swift_task_alloc();
  v7 = *(*(sub_1C4F01188() - 8) + 64) + 15;
  v1[11] = swift_task_alloc();
  v8 = sub_1C4EF9398();
  v1[12] = v8;
  v9 = *(v8 - 8);
  v1[13] = v9;
  v10 = *(v9 + 64) + 15;
  v1[14] = swift_task_alloc();
  v11 = *(*(sub_1C4EF9378() - 8) + 64) + 15;
  v1[15] = swift_task_alloc();
  v12 = sub_1C4EFA018();
  v1[16] = v12;
  v13 = *(v12 - 8);
  v1[17] = v13;
  v14 = *(v13 + 64) + 15;
  v1[18] = swift_task_alloc();
  v15 = sub_1C456902C(&qword_1EC0BFF48, &qword_1C4F3E028);
  v1[19] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v17 = *(*(sub_1C456902C(&qword_1EC0BFF50, &unk_1C4F3E030) - 8) + 64) + 15;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v18 = *(*(sub_1C456902C(&qword_1EC0BDBC0, &qword_1C4F3E9C0) - 8) + 64) + 15;
  v1[30] = swift_task_alloc();
  v19 = type metadata accessor for GamingActivityEvent();
  v1[31] = v19;
  v20 = *(*(v19 - 8) + 64) + 15;
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v21 = *(*(sub_1C456902C(&qword_1EC0BFF58, &unk_1C4F3E040) - 8) + 64) + 15;
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v22 = sub_1C456902C(&qword_1EC0BDBB8, &unk_1C4F311D0);
  v1[37] = v22;
  v23 = *(v22 - 8);
  v1[38] = v23;
  v24 = *(v23 + 64) + 15;
  v1[39] = swift_task_alloc();
  v25 = *(*(sub_1C456902C(&qword_1EC0BF940, &qword_1C4F3E050) - 8) + 64) + 15;
  v1[40] = swift_task_alloc();
  v26 = *(*(sub_1C456902C(&qword_1EC0BF948, &qword_1C4F3B470) - 8) + 64) + 15;
  v1[41] = swift_task_alloc();
  v27 = sub_1C456902C(&qword_1EC0BFF60, &qword_1C4F3E058);
  v1[42] = v27;
  v28 = *(*(v27 - 8) + 64) + 15;
  v1[43] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4971C80, 0, 0);
}

uint64_t sub_1C4971C80()
{
  sub_1C43FBDC8();
  sub_1C4404B08();
  v2 = *(v0 + 336);
  v1 = *(v0 + 344);
  v4 = *(v0 + 320);
  v3 = *(v0 + 328);
  v6 = *(v0 + 304);
  v5 = *(v0 + 312);
  v7 = *(v0 + 296);
  v8 = *(v0 + 152);
  v9 = *(v0 + 40);
  sub_1C44DDE2C();
  sub_1C43FD2BC();
  sub_1C44DDE2C();
  v10 = *(v6 + 16);
  sub_1C4422368();
  v11();
  sub_1C4409E0C(&qword_1EC0BFF68, &qword_1EC0BDBB8, &unk_1C4F311D0);
  sub_1C4F019A8();
  sub_1C4420C3C(v4, &qword_1EC0BF940, &qword_1C4F3E050);
  sub_1C4420C3C(v3, &qword_1EC0BF948, &qword_1C4F3B470);
  *(v0 + 384) = *(v2 + 44);
  v12 = sub_1C440EF74();
  sub_1C440BAA8(v12, v13, 1, v8);
  *(v0 + 388) = *(sub_1C456902C(&qword_1EC0BFF70, &qword_1C4F3E060) + 28);
  sub_1C43FCF64();
  sub_1C440BAA8(v14, v15, v16, v8);
  v17 = *(v2 + 48);
  *(v0 + 392) = v17;
  *(v1 + v17) = 1;
  *(v0 + 352) = MEMORY[0x1E69E7CC0];
  sub_1C43FCE74();
  sub_1C43FEA3C();

  return MEMORY[0x1EEE6DFA0](v18, v19, v20);
}

uint64_t sub_1C4971DFC()
{
  sub_1C43FCF70();
  v1 = *(v0 + 392);
  v2 = *(v0 + 344);
  v3 = *(v0 + 280);
  v4 = *(v0 + 48);
  sub_1C43FCF64();
  sub_1C440BAA8(v5, v6, v7, v8);
  *(v2 + v1) = 1;
  v9 = sub_1C4402120();
  sub_1C456902C(v9, v10);
  sub_1C44006D4(&qword_1EC0BFF98);
  v11 = *(MEMORY[0x1E69E85A8] + 4);
  swift_task_alloc();
  sub_1C43FBE70();
  *(v0 + 360) = v12;
  *v12 = v13;
  v12[1] = sub_1C4971EE4;
  v14 = *(v0 + 344);
  v15 = *(v0 + 240);
  sub_1C44050B4();

  return MEMORY[0x1EEE6D8C8](v16);
}

uint64_t sub_1C4971EE4()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FBE64();
  *v3 = v2;
  v5 = *(v4 + 360);
  v6 = *v1;
  sub_1C43FBDAC();
  *v7 = v6;
  *(v8 + 368) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C4971FE0()
{
  sub_1C4404B08();
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  if (sub_1C44157D4(v2, 1, v1) == 1)
  {
    v3 = *(v0 + 288);
    v4 = *(v0 + 48);
    sub_1C4420C3C(*(v0 + 280), &qword_1EC0BFF58, &unk_1C4F3E040);
    sub_1C4420C3C(v2, &qword_1EC0BDBC0, &qword_1C4F3E9C0);
    sub_1C440EF74();
    sub_1C4401E28();
    sub_1C440BAA8(v5, v6, v7, v8);
LABEL_29:
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v146, v147, v148);
  }

  v10 = *(v0 + 256);
  v9 = *(v0 + 264);
  v11 = *(v0 + 224);
  v12 = *(v0 + 232);
  v13 = *(v0 + 152);
  sub_1C497B524();
  sub_1C4430DD4();
  v14 = sub_1C4EF9CD8();
  sub_1C43FBCE0(v14);
  (*(v15 + 16))(v12, v10);
  *(v12 + *(v13 + 28)) = *(v10 + *(v1 + 20));
  v16 = (v12 + *(v13 + 32));
  v17 = (v10 + *(v1 + 24));
  v19 = *v17;
  v18 = v17[1];
  v20 = v17[2];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4453FA8(v10, type metadata accessor for GamingActivityEvent);
  *v16 = v19;
  v16[1] = v18;
  v16[2] = v20;
  sub_1C43FF010();
  sub_1C440BAA8(v21, v22, v23, v24);
  sub_1C4404C28();
  sub_1C44DDE2C();
  sub_1C4410EC0();
  if (v25)
  {
    v26 = *(v0 + 224);
    v27 = &qword_1EC0BFF50;
    v28 = &unk_1C4F3E030;
    goto LABEL_6;
  }

  v29 = *(v0 + 384);
  v30 = *(v0 + 344);
  v32 = *(v0 + 216);
  v31 = *(v0 + 224);
  v33 = *(v0 + 184);
  v34 = *(v0 + 152);
  sub_1C44CDA7C();
  sub_1C44DDE2C();
  v35 = sub_1C440EF74();
  v37 = sub_1C44157D4(v35, v36, v34);
  sub_1C442B8EC();
  sub_1C4420C3C(v38, v39, v40);
  if (v37 == 1)
  {
    if (*(*(v0 + 184) + *(*(v0 + 152) + 28)))
    {
      v41 = *(v0 + 388);
      v42 = *(v0 + 344) + *(v0 + 384);
      v43 = sub_1C43FBEF8();
      sub_1C4420C3C(v43, v44, &unk_1C4F3E030);
      sub_1C4402B58();
      sub_1C44CDA7C();
      sub_1C43FF010();
      sub_1C440BAA8(v45, v46, v47, v48);
      sub_1C440EFD0();
LABEL_17:
      sub_1C43FF010();
      goto LABEL_18;
    }

    v27 = &qword_1EC0BFF48;
    v28 = &qword_1C4F3E028;
    v26 = *(v0 + 184);
LABEL_6:
    sub_1C4420C3C(v26, v27, v28);
    goto LABEL_19;
  }

  v49 = *(v0 + 388);
  v50 = *(v0 + 208);
  v51 = *(v0 + 152);
  v52 = *(v0 + 344) + *(v0 + 384);
  sub_1C4429060();
  sub_1C4405CEC();
  if (!v25)
  {
    v68 = *(v0 + 208);
    v69 = *(v0 + 176);
    v70 = *(v0 + 152);
    sub_1C44CDA7C();
    v71 = *(v69 + *(v70 + 28));
    v72 = *(v0 + 388);
    v73 = *(v0 + 184);
    v74 = *(v0 + 152);
    v75 = *(v0 + 344) + *(v0 + 384);
    if (v71)
    {
      sub_1C4422368();
      sub_1C4420C3C(v76, v77, v78);
      sub_1C4461CDC();
      sub_1C4425D24();
      sub_1C4422368();
      sub_1C4420C3C(v79, v80, v81);
      sub_1C442F6CC();
    }

    else
    {
      v82 = *(v0 + 176);
      sub_1C4422368();
      sub_1C4420C3C(v83, v84, v85);
      v86 = sub_1C4404BCC();
      sub_1C4420C3C(v86, v87, &unk_1C4F3E030);
      sub_1C440CCA4();
      sub_1C44CDA7C();
      v88 = sub_1C4425D24();
      sub_1C4420C3C(v88, &qword_1EC0BFF50, &unk_1C4F3E030);
    }

    goto LABEL_17;
  }

  v53 = *(v0 + 388);
  v54 = *(v0 + 208);
  v55 = *(v0 + 184);
  v56 = *(v0 + 152);
  v57 = *(v0 + 344) + *(v0 + 384);
  sub_1C442B8EC();
  sub_1C4420C3C(v58, v59, v60);
  sub_1C442B8EC();
  sub_1C4420C3C(v61, v62, v63);
  sub_1C44CDA7C();
  sub_1C43FBD94();
  v67 = v56;
LABEL_18:
  sub_1C440BAA8(v64, v65, v66, v67);
LABEL_19:
  v90 = (v0 + 200);
  v89 = *(v0 + 200);
  v91 = *(v0 + 384);
  v92 = *(v0 + 344);
  v93 = *(v0 + 152);
  sub_1C4429060();
  sub_1C4405CEC();
  if (!v25)
  {
    v90 = (v0 + 192);
    v94 = *(v0 + 192);
    v95 = *(v0 + 388);
    v96 = *(v0 + 200);
    v97 = *(v0 + 168);
    v98 = *(v0 + 152);
    v99 = *(v0 + 344) + *(v0 + 384);
    sub_1C44CDA7C();
    sub_1C44DDE2C();
    sub_1C4405CEC();
    if (!v25)
    {
      v115 = *(v0 + 264);
      v116 = *(v0 + 272);
      v117 = *(v0 + 232);
      v118 = *(v0 + 192);
      v120 = *(v0 + 160);
      v119 = *(v0 + 168);
      sub_1C4422368();
      sub_1C44CDA7C();
      v121 = sub_1C43FD2BC();
      sub_1C496DEF0(v121, v122, v123);
      sub_1C447CC14(v120);
      sub_1C447CC14(v119);
      sub_1C4420C3C(v117, &qword_1EC0BFF50, &unk_1C4F3E030);
      sub_1C443F680();
      sub_1C4453FA8(v115, v124);
      goto LABEL_24;
    }

    sub_1C4420C3C(*(v0 + 168), &qword_1EC0BFF48, &qword_1C4F3E028);
  }

  v100 = *v90;
  v102 = *(v0 + 264);
  v101 = *(v0 + 272);
  v103 = *(v0 + 232);
  v104 = *(v0 + 48);
  sub_1C4422368();
  sub_1C4420C3C(v105, v106, v107);
  sub_1C443F680();
  sub_1C4453FA8(v102, v108);
  sub_1C4422368();
  sub_1C4420C3C(v109, v110, v111);
  sub_1C43FCF64();
  sub_1C440BAA8(v112, v113, v114, v104);
LABEL_24:
  v125 = *(v0 + 272);
  v126 = *(v0 + 48);
  sub_1C4410EC0();
  if (!v25)
  {
    v135 = *(v0 + 392);
    v136 = *(v0 + 344);
    v138 = *(v0 + 280);
    v137 = *(v0 + 288);
    sub_1C4422368();
    sub_1C4420C3C(v139, v140, v141);
    sub_1C4404BCC();
    sub_1C44CDA7C();
    sub_1C43FF010();
    sub_1C440BAA8(v142, v143, v144, v145);
    sub_1C4423BEC();
    goto LABEL_29;
  }

  sub_1C4420C3C(v125, &qword_1EC0BFF58, &unk_1C4F3E040);
  v127 = sub_1C4402120();
  sub_1C456902C(v127, v128);
  sub_1C44006D4(&qword_1EC0BFF98);
  v129 = *(MEMORY[0x1E69E85A8] + 4);
  swift_task_alloc();
  sub_1C43FBE70();
  *(v0 + 360) = v130;
  *v130 = v131;
  v130[1] = sub_1C4971EE4;
  v132 = *(v0 + 344);
  v133 = *(v0 + 240);
  sub_1C44050B4();

  return MEMORY[0x1EEE6D8C8](v134);
}

uint64_t sub_1C49726D8()
{
  sub_1C43FBCD4();
  sub_1C4420C3C(*(v0 + 280), &qword_1EC0BFF58, &unk_1C4F3E040);
  v1 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C4972744()
{
  sub_1C43FBCD4();
  v0[3] = v0[46];
  v0[47] = sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  swift_willThrowTypedImpl();
  v1 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C49727D0()
{
  *(v0 + 32) = *(v0 + 368);
  v1 = *(v0 + 376);
  if (sub_1C4F028C8())
  {
  }

  else
  {
    v3 = *(v0 + 368);
    v2 = *(v0 + 376);
    sub_1C43FFB2C();
    *v4 = v3;
  }

  v5 = *(v0 + 352);
  sub_1C4420C3C(*(v0 + 344), &qword_1EC0BFF60, &qword_1C4F3E058);

  v6 = *(v0 + 344);
  v8 = *(v0 + 320);
  v7 = *(v0 + 328);
  v9 = *(v0 + 312);
  v11 = *(v0 + 280);
  v10 = *(v0 + 288);
  v13 = *(v0 + 264);
  v12 = *(v0 + 272);
  v14 = *(v0 + 256);
  v15 = *(v0 + 240);
  v19 = *(v0 + 232);
  v20 = *(v0 + 224);
  v21 = *(v0 + 216);
  v22 = *(v0 + 208);
  v23 = *(v0 + 200);
  v24 = *(v0 + 192);
  v25 = *(v0 + 184);
  v26 = *(v0 + 176);
  v27 = *(v0 + 168);
  v28 = *(v0 + 160);
  v16 = *(v0 + 112);
  v29 = *(v0 + 144);
  v30 = *(v0 + 120);
  sub_1C44B8F9C();

  sub_1C43FBDA0();

  return v17();
}

uint64_t sub_1C49729CC()
{
  v3 = v0[36];
  v4 = v0[6];
  sub_1C4405CEC();
  if (v5)
  {
    v6 = v0[46];
    v7 = v0[43];
    v8 = v0[44];
    sub_1C440BDF8();
    v96 = v9;
    sub_1C4420C3C(v10, &qword_1EC0BFF60, &qword_1C4F3E058);
    v11 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    v12 = sub_1C441E458();
    sub_1C441804C(v12, sel_setDateFormat_);

    v13 = [objc_opt_self() localTimeZone];
    sub_1C44EB888();

    sub_1C4EF9FF8();
    v14 = sub_1C441C348();
    v16 = v15(v14);
    sub_1C441804C(v16, sel_setTimeZone_);

    v17 = sub_1C4EF93D8();
    sub_1C44099C4(v17);
    sub_1C4EF93C8();
    sub_1C4471CC8();
    sub_1C4EF9388();
    *v1 = v11;
    v18 = *MEMORY[0x1E6967FD0];
    v19 = sub_1C4424CF8();
    v20(v19);
    v21 = v11;
    sub_1C4EF93A8();
    v22 = objc_autoreleasePoolPush();
    sub_1C443DF88();
    sub_1C456902C(&qword_1EC0BFF78, &qword_1C4F3E068);
    sub_1C497B104();
    sub_1C44365AC();
    sub_1C4EF93B8();
    v23 = v0[44];
    if (v96)
    {
      v24 = v0[44];

      objc_autoreleasePoolPop(v2);

      v25 = v0[43];
      v26 = v0[40];
      v27 = v0[41];
      v28 = v0[39];
      v30 = v0[35];
      v29 = v0[36];
      v32 = v0[33];
      v31 = v0[34];
      v33 = v0[32];
      v34 = v0[30];
      v75 = v0[29];
      v77 = v0[28];
      v79 = v0[27];
      v81 = v0[26];
      v83 = v0[25];
      v85 = v0[24];
      v87 = v0[23];
      v89 = v0[22];
      v91 = v0[21];
      v93 = v0[20];
      v35 = v0[18];
      sub_1C4462420();

      sub_1C43FBDA0();
      sub_1C4441954();

      __asm { BRAA            X1, X16 }
    }

    v59 = v0[43];
    v68 = v0[41];
    v69 = v0[40];
    v70 = v0[39];
    v71 = v0[36];
    v72 = v0[35];
    v73 = v0[34];
    v74 = v0[33];
    v76 = v0[32];
    v78 = v0[30];
    v80 = v0[29];
    v82 = v0[28];
    v84 = v0[27];
    v86 = v0[26];
    v88 = v0[25];
    v90 = v0[24];
    v92 = v0[23];
    v94 = v0[22];
    v95 = v0[21];
    v60 = v0[20];
    sub_1C444AD04(v0[18]);
    objc_autoreleasePoolPop(v2);
    sub_1C4F01178();
    sub_1C4404044();
    sub_1C4F01158();

    sub_1C4411F20();
    v61 = sub_1C4404044();
    sub_1C4434000(v61, v62);

    sub_1C44BBE34();
    sub_1C4441954();

    __asm { BRAA            X3, X16 }
  }

  v97 = v0[44];
  sub_1C4460858();
  sub_1C440A9B8();
  sub_1C44CDA7C();
  sub_1C4EF9AD8();
  sub_1C44409E0(v38);
  v40 = sub_1C44602A0(v39);
  sub_1C440F834(v40);
  v42 = *(v41 + 32);
  v43 = sub_1C4405DA0();
  v42(v43);
  v44 = sub_1C440E450();
  v42(v44);
  v45 = *(v4 + 32);
  sub_1C4451334();
  v47 = v46[1];
  v48 = v46[2];
  *v49 = *v46;
  v49[1] = v47;
  v49[2] = v48;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v51 = v0[44];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1C441BA3C();
    sub_1C458E3E4();
    v51 = v65;
  }

  sub_1C441CB28();
  if (v53)
  {
    sub_1C4413364(v52);
    sub_1C458E3E4();
    v51 = v66;
  }

  v54 = v0[10];
  sub_1C441FD60(v0[9]);
  sub_1C44CDA7C();
  v0[44] = v51;
  sub_1C43FCE74();
  sub_1C4441954();

  return MEMORY[0x1EEE6DFA0](v55, v56, v57);
}

uint64_t sub_1C4972F84(uint64_t a1)
{
  v1[5] = a1;
  v2 = sub_1C456902C(&qword_1EC0BFFA0, &unk_1C4F3E078);
  v1[6] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v4 = sub_1C456902C(&qword_1EC0B8B80, &unk_1C4F0DFB0);
  v1[8] = v4;
  v5 = *(v4 - 8);
  v1[9] = v5;
  v6 = *(v5 + 64) + 15;
  v1[10] = swift_task_alloc();
  v7 = *(*(sub_1C4F01188() - 8) + 64) + 15;
  v1[11] = swift_task_alloc();
  v8 = sub_1C4EF9398();
  v1[12] = v8;
  v9 = *(v8 - 8);
  v1[13] = v9;
  v10 = *(v9 + 64) + 15;
  v1[14] = swift_task_alloc();
  v11 = *(*(sub_1C4EF9378() - 8) + 64) + 15;
  v1[15] = swift_task_alloc();
  v12 = sub_1C4EFA018();
  v1[16] = v12;
  v13 = *(v12 - 8);
  v1[17] = v13;
  v14 = *(v13 + 64) + 15;
  v1[18] = swift_task_alloc();
  v15 = *(*(sub_1C456902C(&qword_1EC0BFFA8, &qword_1C4F3E088) - 8) + 64) + 15;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v16 = sub_1C456902C(&qword_1EC0B8E10, &qword_1C4F3E090);
  v1[26] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v18 = *(*(sub_1C456902C(&qword_1EC0BFFB0, &unk_1C4F3E098) - 8) + 64) + 15;
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v19 = sub_1C456902C(&qword_1EC0B8E08, &unk_1C4F0E440);
  v1[36] = v19;
  v20 = *(v19 - 8);
  v1[37] = v20;
  v21 = *(v20 + 64) + 15;
  v1[38] = swift_task_alloc();
  v22 = *(*(sub_1C456902C(&qword_1EC0B8E18, &qword_1C4F0E460) - 8) + 64) + 15;
  v1[39] = swift_task_alloc();
  v23 = *(*(sub_1C456902C(&qword_1EC0B8E48, &unk_1C4F0E6D0) - 8) + 64) + 15;
  v1[40] = swift_task_alloc();
  v24 = sub_1C456902C(&qword_1EC0BFFB8, &qword_1C4F3E0A8);
  v1[41] = v24;
  v25 = *(*(v24 - 8) + 64) + 15;
  v1[42] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C49733F8, 0, 0);
}

uint64_t sub_1C49733F8()
{
  sub_1C43FBDC8();
  sub_1C4404B08();
  v2 = *(v0 + 328);
  v1 = *(v0 + 336);
  v4 = *(v0 + 312);
  v3 = *(v0 + 320);
  v6 = *(v0 + 296);
  v5 = *(v0 + 304);
  v7 = *(v0 + 288);
  v8 = *(v0 + 208);
  v9 = *(v0 + 40);
  sub_1C44DDE2C();
  sub_1C43FD2BC();
  sub_1C44DDE2C();
  v10 = *(v6 + 16);
  sub_1C4422368();
  v11();
  sub_1C4409E0C(&qword_1EC0BFFC0, &qword_1EC0B8E08, &unk_1C4F0E440);
  sub_1C4F019A8();
  sub_1C4420C3C(v4, &qword_1EC0B8E18, &qword_1C4F0E460);
  sub_1C4420C3C(v3, &qword_1EC0B8E48, &unk_1C4F0E6D0);
  *(v0 + 376) = *(v2 + 44);
  v12 = sub_1C440EF74();
  sub_1C440BAA8(v12, v13, 1, v8);
  *(v0 + 380) = *(sub_1C456902C(&qword_1EC0BFFC8, &qword_1C4F3E0B0) + 28);
  sub_1C43FCF64();
  sub_1C440BAA8(v14, v15, v16, v8);
  v17 = *(v2 + 48);
  *(v0 + 384) = v17;
  *(v1 + v17) = 1;
  *(v0 + 344) = MEMORY[0x1E69E7CC0];
  sub_1C43FCE74();
  sub_1C43FEA3C();

  return MEMORY[0x1EEE6DFA0](v18, v19, v20);
}

uint64_t sub_1C4973574()
{
  sub_1C43FCF70();
  v1 = *(v0 + 384);
  v2 = *(v0 + 336);
  v3 = *(v0 + 272);
  v4 = *(v0 + 48);
  sub_1C43FCF64();
  sub_1C440BAA8(v5, v6, v7, v8);
  *(v2 + v1) = 1;
  v9 = sub_1C4402120();
  sub_1C456902C(v9, v10);
  sub_1C44006D4(&qword_1EC0BFFF0);
  v11 = *(MEMORY[0x1E69E85A8] + 4);
  swift_task_alloc();
  sub_1C43FBE70();
  *(v0 + 352) = v12;
  *v12 = v13;
  v12[1] = sub_1C497365C;
  v14 = *(v0 + 336);
  v15 = *(v0 + 200);
  sub_1C44050B4();

  return MEMORY[0x1EEE6D8C8](v16);
}

uint64_t sub_1C497365C()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FBE64();
  *v3 = v2;
  v5 = *(v4 + 352);
  v6 = *v1;
  sub_1C43FBDAC();
  *v7 = v6;
  *(v8 + 360) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C4973758()
{
  sub_1C43FBDC8();
  sub_1C4404B08();
  v3 = *(v0 + 200);
  if (sub_1C4401818(v3) == 1)
  {
    v4 = *(v0 + 280);
    v5 = *(v0 + 48);
    sub_1C4420C3C(*(v0 + 272), &qword_1EC0BFFB0, &unk_1C4F3E098);
    sub_1C4420C3C(v3, &qword_1EC0BFFA8, &qword_1C4F3E088);
    sub_1C440EF74();
    sub_1C4401E28();
    sub_1C440BAA8(v6, v7, v8, v9);
LABEL_29:
    sub_1C43FEAF8();
    sub_1C43FEA3C();

    return MEMORY[0x1EEE6DFA0](v138, v139, v140);
  }

  v11 = *(v0 + 248);
  v10 = *(v0 + 256);
  v12 = *(v0 + 184);
  v13 = *(v0 + 192);
  sub_1C43FD2BC();
  v15 = v14;
  sub_1C44CDA7C();
  sub_1C44BBC6C();
  v16 = sub_1C4EF9CD8();
  sub_1C43FBCE0(v16);
  (*(v17 + 16))(v13, v11);
  sub_1C44167B0();
  sub_1C4420C3C(v11, &qword_1EC0B8E10, &qword_1C4F3E090);
  *v10 = v2;
  *(v10 + 8) = v1;
  *(v10 + 16) = v15;
  sub_1C43FF010();
  sub_1C440BAA8(v18, v19, v20, v21);
  sub_1C4404C28();
  sub_1C44DDE2C();
  sub_1C4410EC0();
  if (v22)
  {
    v23 = *(v0 + 184);
    v24 = &qword_1EC0BFFA8;
    v25 = &qword_1C4F3E088;
    goto LABEL_6;
  }

  v26 = *(v0 + 376);
  v27 = *(v0 + 336);
  v28 = *(v0 + 240);
  v29 = *(v0 + 208);
  v31 = *(v0 + 176);
  v30 = *(v0 + 184);
  sub_1C44CDA7C();
  sub_1C442BBB8();
  sub_1C44DDE2C();
  v32 = sub_1C4401818(v31);
  sub_1C442B8EC();
  sub_1C4420C3C(v33, v34, v35);
  if (v32 == 1)
  {
    if (*(*(v0 + 240) + *(*(v0 + 208) + 28)))
    {
      v36 = *(v0 + 380);
      v37 = *(v0 + 336) + *(v0 + 376);
      v38 = sub_1C43FBEF8();
      sub_1C4420C3C(v38, v39, &qword_1C4F3E088);
      sub_1C4402B58();
      sub_1C44CDA7C();
      sub_1C43FF010();
      sub_1C440BAA8(v40, v41, v42, v43);
      sub_1C440EFD0();
LABEL_17:
      sub_1C43FF010();
      goto LABEL_18;
    }

    v24 = &qword_1EC0B8E10;
    v25 = &qword_1C4F3E090;
    v23 = *(v0 + 240);
LABEL_6:
    sub_1C4420C3C(v23, v24, v25);
    goto LABEL_19;
  }

  v44 = *(v0 + 380);
  v45 = *(v0 + 208);
  v46 = *(v0 + 168);
  v47 = *(v0 + 336) + *(v0 + 376);
  sub_1C44DDE2C();
  sub_1C4410EC0();
  if (!v22)
  {
    v63 = *(v0 + 232);
    v64 = *(v0 + 208);
    v65 = *(v0 + 168);
    sub_1C44CDA7C();
    v66 = *(v63 + *(v64 + 28));
    v67 = *(v0 + 380);
    v68 = *(v0 + 240);
    v69 = *(v0 + 208);
    v70 = *(v0 + 336) + *(v0 + 376);
    if (v66)
    {
      sub_1C4422368();
      sub_1C4420C3C(v71, v72, v73);
      sub_1C4461CDC();
      sub_1C4425D24();
      sub_1C4422368();
      sub_1C4420C3C(v74, v75, v76);
      sub_1C442F6CC();
    }

    else
    {
      v77 = *(v0 + 232);
      sub_1C4422368();
      sub_1C4420C3C(v78, v79, v80);
      v81 = sub_1C4404BCC();
      sub_1C4420C3C(v81, v82, &qword_1C4F3E088);
      sub_1C440CCA4();
      sub_1C44CDA7C();
      v83 = sub_1C4425D24();
      sub_1C4420C3C(v83, &qword_1EC0BFFA8, &qword_1C4F3E088);
    }

    goto LABEL_17;
  }

  v48 = *(v0 + 380);
  v49 = *(v0 + 240);
  v50 = *(v0 + 208);
  v51 = *(v0 + 168);
  v52 = *(v0 + 336) + *(v0 + 376);
  sub_1C442B8EC();
  sub_1C4420C3C(v53, v54, v55);
  sub_1C442B8EC();
  sub_1C4420C3C(v56, v57, v58);
  sub_1C44CDA7C();
  sub_1C43FBD94();
  v62 = v50;
LABEL_18:
  sub_1C440BAA8(v59, v60, v61, v62);
LABEL_19:
  v85 = (v0 + 160);
  v84 = *(v0 + 160);
  v86 = *(v0 + 376);
  v87 = *(v0 + 336);
  v88 = *(v0 + 208);
  sub_1C4429060();
  sub_1C4405CEC();
  if (!v22)
  {
    v85 = (v0 + 152);
    v89 = *(v0 + 152);
    v90 = *(v0 + 376);
    v91 = *(v0 + 380);
    v92 = *(v0 + 336);
    sub_1C443E374();
    sub_1C44CDA7C();
    sub_1C44DDE2C();
    sub_1C4405CEC();
    if (!v22)
    {
      v107 = *(v0 + 256);
      v108 = *(v0 + 264);
      v110 = *(v0 + 216);
      v109 = *(v0 + 224);
      v111 = *(v0 + 192);
      v112 = *(v0 + 152);
      sub_1C44CDA7C();
      v113 = sub_1C43FBEF8();
      sub_1C496DC04(v113, v114, v115);
      sub_1C447CC14(v110);
      sub_1C447CC14(v109);
      sub_1C4420C3C(v111, &qword_1EC0BFFA8, &qword_1C4F3E088);
      sub_1C447CC14(v107);
      goto LABEL_24;
    }

    sub_1C4420C3C(*(v0 + 224), &qword_1EC0B8E10, &qword_1C4F3E090);
  }

  v93 = *v85;
  v95 = *(v0 + 256);
  v94 = *(v0 + 264);
  v96 = *(v0 + 192);
  v97 = *(v0 + 48);
  sub_1C4422368();
  sub_1C4420C3C(v98, v99, v100);
  sub_1C4420C3C(v95, &qword_1EC0B8E10, &qword_1C4F3E090);
  sub_1C4422368();
  sub_1C4420C3C(v101, v102, v103);
  sub_1C43FCF64();
  sub_1C440BAA8(v104, v105, v106, v97);
LABEL_24:
  v116 = *(v0 + 264);
  v117 = *(v0 + 48);
  sub_1C4410EC0();
  if (!v22)
  {
    v127 = *(v0 + 384);
    v128 = *(v0 + 336);
    v130 = *(v0 + 272);
    v129 = *(v0 + 280);
    sub_1C4422368();
    sub_1C4420C3C(v131, v132, v133);
    sub_1C4404BCC();
    sub_1C44CDA7C();
    sub_1C43FF010();
    sub_1C440BAA8(v134, v135, v136, v137);
    sub_1C4423BEC();
    goto LABEL_29;
  }

  sub_1C4420C3C(v116, &qword_1EC0BFFB0, &unk_1C4F3E098);
  v118 = sub_1C4402120();
  sub_1C456902C(v118, v119);
  sub_1C44006D4(&qword_1EC0BFFF0);
  v120 = *(MEMORY[0x1E69E85A8] + 4);
  swift_task_alloc();
  sub_1C43FBE70();
  *(v0 + 352) = v121;
  *v121 = v122;
  v121[1] = sub_1C497365C;
  v123 = *(v0 + 336);
  v124 = *(v0 + 200);
  sub_1C44050B4();
  sub_1C43FEA3C();

  return MEMORY[0x1EEE6D8C8](v125);
}

uint64_t sub_1C4973DD8()
{
  sub_1C43FBCD4();
  sub_1C4420C3C(*(v0 + 272), &qword_1EC0BFFB0, &unk_1C4F3E098);
  v1 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C4973E44()
{
  sub_1C43FBCD4();
  v0[3] = v0[45];
  v0[46] = sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  swift_willThrowTypedImpl();
  v1 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C4973ED0()
{
  *(v0 + 32) = *(v0 + 360);
  v1 = *(v0 + 368);
  if (sub_1C4F028C8())
  {
  }

  else
  {
    v3 = *(v0 + 360);
    v2 = *(v0 + 368);
    sub_1C43FFB2C();
    *v4 = v3;
  }

  v5 = *(v0 + 344);
  sub_1C4420C3C(*(v0 + 336), &qword_1EC0BFFB8, &qword_1C4F3E0A8);

  v6 = *(v0 + 336);
  v8 = *(v0 + 312);
  v7 = *(v0 + 320);
  v9 = *(v0 + 304);
  v11 = *(v0 + 272);
  v10 = *(v0 + 280);
  v13 = *(v0 + 256);
  v12 = *(v0 + 264);
  v15 = *(v0 + 240);
  v14 = *(v0 + 248);
  v19 = *(v0 + 232);
  v20 = *(v0 + 224);
  v21 = *(v0 + 216);
  v22 = *(v0 + 200);
  v23 = *(v0 + 192);
  v24 = *(v0 + 184);
  v25 = *(v0 + 176);
  v26 = *(v0 + 168);
  v27 = *(v0 + 160);
  v28 = *(v0 + 152);
  v16 = *(v0 + 112);
  v29 = *(v0 + 144);
  v30 = *(v0 + 120);
  sub_1C44B8F9C();

  sub_1C43FBDA0();

  return v17();
}

uint64_t sub_1C49740C8()
{
  v3 = v0[35];
  v4 = v0[6];
  sub_1C4405CEC();
  if (v5)
  {
    v6 = v0[45];
    v7 = v0[42];
    v8 = v0[43];
    sub_1C440BDF8();
    v95 = v9;
    sub_1C4420C3C(v10, &qword_1EC0BFFB8, &qword_1C4F3E0A8);
    v11 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    v12 = sub_1C441E458();
    sub_1C441804C(v12, sel_setDateFormat_);

    v13 = [objc_opt_self() localTimeZone];
    sub_1C44EB888();

    sub_1C4EF9FF8();
    v14 = sub_1C441C348();
    v16 = v15(v14);
    sub_1C441804C(v16, sel_setTimeZone_);

    v17 = sub_1C4EF93D8();
    sub_1C44099C4(v17);
    sub_1C4EF93C8();
    sub_1C4471CC8();
    sub_1C4EF9388();
    *v1 = v11;
    v18 = *MEMORY[0x1E6967FD0];
    v19 = sub_1C4424CF8();
    v20(v19);
    v21 = v11;
    sub_1C4EF93A8();
    v22 = objc_autoreleasePoolPush();
    sub_1C443DF88();
    sub_1C456902C(&qword_1EC0BFFD0, &qword_1C4F3E0B8);
    sub_1C497B1B4();
    sub_1C44365AC();
    sub_1C4EF93B8();
    v23 = v0[43];
    if (v95)
    {
      v24 = v0[43];

      objc_autoreleasePoolPop(v2);

      v25 = v0[42];
      v26 = v0[39];
      v27 = v0[40];
      v28 = v0[38];
      v30 = v0[34];
      v29 = v0[35];
      v32 = v0[32];
      v31 = v0[33];
      v34 = v0[30];
      v33 = v0[31];
      v74 = v0[29];
      v76 = v0[28];
      v78 = v0[27];
      v80 = v0[25];
      v82 = v0[24];
      v84 = v0[23];
      v86 = v0[22];
      v88 = v0[21];
      v35 = v0[18];
      v90 = v0[20];
      v92 = v0[19];
      sub_1C4462420();

      sub_1C43FBDA0();
      sub_1C4441954();

      __asm { BRAA            X1, X16 }
    }

    v58 = v0[42];
    v67 = v0[40];
    v68 = v0[39];
    v69 = v0[38];
    v70 = v0[35];
    v71 = v0[34];
    v72 = v0[33];
    v73 = v0[32];
    v75 = v0[31];
    v77 = v0[30];
    v79 = v0[29];
    v81 = v0[28];
    v83 = v0[27];
    v85 = v0[25];
    v87 = v0[24];
    v89 = v0[23];
    v91 = v0[22];
    v93 = v0[21];
    v94 = v0[20];
    v59 = v0[19];
    sub_1C444AD04(v0[18]);
    objc_autoreleasePoolPop(v2);
    sub_1C4F01178();
    sub_1C4404044();
    sub_1C4F01158();

    sub_1C4411F20();
    v60 = sub_1C4404044();
    sub_1C4434000(v60, v61);

    sub_1C44BBE34();
    sub_1C4441954();

    __asm { BRAA            X3, X16 }
  }

  v96 = v0[43];
  sub_1C4460858();
  sub_1C440A9B8();
  sub_1C44CDA7C();
  sub_1C4EF9AD8();
  sub_1C44409E0(v38);
  v40 = sub_1C44602A0(v39);
  sub_1C440F834(v40);
  v42 = *(v41 + 32);
  v43 = sub_1C4405DA0();
  v42(v43);
  v44 = sub_1C440E450();
  v42(v44);
  v45 = *(v4 + 32);
  sub_1C4451334();
  v47 = *(v46 + 8);
  *v48 = *v46;
  *(v48 + 8) = v47;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v50 = v0[43];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1C441BA3C();
    sub_1C458E3A8();
    v50 = v64;
  }

  sub_1C441CB28();
  if (v52)
  {
    sub_1C4413364(v51);
    sub_1C458E3A8();
    v50 = v65;
  }

  v53 = v0[10];
  sub_1C441FD60(v0[9]);
  sub_1C44CDA7C();
  v0[43] = v50;
  sub_1C43FCE74();
  sub_1C4441954();

  return MEMORY[0x1EEE6DFA0](v54, v55, v56);
}

uint64_t sub_1C4974678(uint64_t a1)
{
  v1[3] = a1;
  v2 = sub_1C456902C(&qword_1EC0BFFF8, &qword_1C4F3E0C8);
  v1[4] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v4 = sub_1C456902C(&qword_1EC0B8B88, &qword_1C4F3E0D0);
  v1[6] = v4;
  v5 = *(v4 - 8);
  v1[7] = v5;
  v6 = *(v5 + 64) + 15;
  v1[8] = swift_task_alloc();
  v7 = *(*(sub_1C4F01188() - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v8 = sub_1C4EF9398();
  v1[10] = v8;
  v9 = *(v8 - 8);
  v1[11] = v9;
  v10 = *(v9 + 64) + 15;
  v1[12] = swift_task_alloc();
  v11 = *(*(sub_1C4EF9378() - 8) + 64) + 15;
  v1[13] = swift_task_alloc();
  v12 = sub_1C4EFA018();
  v1[14] = v12;
  v13 = *(v12 - 8);
  v1[15] = v13;
  v14 = *(v13 + 64) + 15;
  v1[16] = swift_task_alloc();
  v15 = *(*(sub_1C456902C(&qword_1EC0C0000, &qword_1C4F3E0D8) - 8) + 64) + 15;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v16 = sub_1C456902C(&qword_1EC0C0008, &qword_1C4F3E0E0);
  v1[24] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v18 = *(*(sub_1C456902C(&qword_1EC0C0010, &qword_1C4F3E0E8) - 8) + 64) + 15;
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v19 = sub_1C456902C(&qword_1EC0C0018, &qword_1C4F3E0F0);
  v1[34] = v19;
  v20 = *(*(v19 - 8) + 64) + 15;
  v1[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4974A14, 0, 0);
}

uint64_t sub_1C4974A14()
{
  sub_1C43FEAEC();
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = *(v0 + 192);
  v4 = *(v0 + 24);
  *(v0 + 304) = *(v2 + 44);
  sub_1C43FF010();
  sub_1C440BAA8(v5, v6, v7, v8);
  *(v0 + 308) = *(sub_1C456902C(&qword_1EC0C0020, &qword_1C4F3E0F8) + 28);
  sub_1C43FF010();
  sub_1C440BAA8(v9, v10, v11, v12);
  *v1 = v4;
  v13 = *(v2 + 48);
  *(v0 + 312) = v13;
  *(v1 + v13) = 1;
  *(v0 + 288) = MEMORY[0x1E69E7CC0];
  v14 = v4;
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1C4974AF8()
{
  sub_1C43FCF70();
  v1 = *(v0 + 312);
  v2 = *(v0 + 280);
  v3 = *(v0 + 256);
  v4 = *(v0 + 32);
  sub_1C43FCF64();
  sub_1C440BAA8(v5, v6, v7, v8);
  *(v2 + v1) = 1;
  swift_task_alloc();
  sub_1C43FBE70();
  *(v0 + 296) = v9;
  *v9 = v10;
  v11 = sub_1C44223A4(v9);

  return sub_1C4ADDF04(v11);
}

uint64_t sub_1C4974B8C()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *(v1 + 296);
  v3 = *v0;
  sub_1C43FBDAC();
  *v4 = v3;

  v5 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C4974C70()
{
  sub_1C43FBDC8();
  sub_1C4404B08();
  v3 = *(v0 + 184);
  if (sub_1C4401818(v3) == 1)
  {
    v4 = *(v0 + 264);
    v5 = *(v0 + 32);
    sub_1C4420C3C(*(v0 + 256), &qword_1EC0C0010, &qword_1C4F3E0E8);
    sub_1C4420C3C(v3, &qword_1EC0C0000, &qword_1C4F3E0D8);
    sub_1C440EF74();
    sub_1C4401E28();
    sub_1C440BAA8(v6, v7, v8, v9);
LABEL_29:
    sub_1C43FEAF8();
    sub_1C43FEA3C();

    return MEMORY[0x1EEE6DFA0](v134, v135, v136);
  }

  v11 = *(v0 + 232);
  v10 = *(v0 + 240);
  v12 = *(v0 + 168);
  v13 = *(v0 + 176);
  sub_1C43FD2BC();
  v15 = v14;
  sub_1C44CDA7C();
  sub_1C44BBC6C();
  v16 = sub_1C4EF9CD8();
  sub_1C43FBCE0(v16);
  (*(v17 + 16))(v13, v11);
  sub_1C44167B0();
  sub_1C4420C3C(v11, &qword_1EC0C0008, &qword_1C4F3E0E0);
  *v10 = v2;
  *(v10 + 8) = v1;
  *(v10 + 16) = v15;
  sub_1C43FF010();
  sub_1C440BAA8(v18, v19, v20, v21);
  sub_1C4404C28();
  sub_1C44DDE2C();
  sub_1C4410EC0();
  if (v22)
  {
    v23 = *(v0 + 168);
    v24 = &qword_1EC0C0000;
    v25 = &qword_1C4F3E0D8;
    goto LABEL_6;
  }

  v26 = *(v0 + 304);
  v27 = *(v0 + 280);
  v28 = *(v0 + 224);
  v29 = *(v0 + 192);
  v31 = *(v0 + 160);
  v30 = *(v0 + 168);
  sub_1C44CDA7C();
  sub_1C442BBB8();
  sub_1C44DDE2C();
  v32 = sub_1C4401818(v31);
  sub_1C442B8EC();
  sub_1C4420C3C(v33, v34, v35);
  if (v32 == 1)
  {
    if (*(*(v0 + 224) + *(*(v0 + 192) + 28)))
    {
      v36 = *(v0 + 308);
      v37 = *(v0 + 280) + *(v0 + 304);
      v38 = sub_1C43FBEF8();
      sub_1C4420C3C(v38, v39, &qword_1C4F3E0D8);
      sub_1C4402B58();
      sub_1C44CDA7C();
      sub_1C43FF010();
      sub_1C440BAA8(v40, v41, v42, v43);
      sub_1C440EFD0();
LABEL_17:
      sub_1C43FF010();
      goto LABEL_18;
    }

    v24 = &qword_1EC0C0008;
    v25 = &qword_1C4F3E0E0;
    v23 = *(v0 + 224);
LABEL_6:
    sub_1C4420C3C(v23, v24, v25);
    goto LABEL_19;
  }

  v44 = *(v0 + 308);
  v45 = *(v0 + 192);
  v46 = *(v0 + 152);
  v47 = *(v0 + 280) + *(v0 + 304);
  sub_1C44DDE2C();
  sub_1C4410EC0();
  if (!v22)
  {
    v63 = *(v0 + 216);
    v64 = *(v0 + 192);
    v65 = *(v0 + 152);
    sub_1C44CDA7C();
    v66 = *(v63 + *(v64 + 28));
    v67 = *(v0 + 308);
    v68 = *(v0 + 224);
    v69 = *(v0 + 192);
    v70 = *(v0 + 280) + *(v0 + 304);
    if (v66)
    {
      sub_1C4422368();
      sub_1C4420C3C(v71, v72, v73);
      sub_1C4461CDC();
      sub_1C4425D24();
      sub_1C4422368();
      sub_1C4420C3C(v74, v75, v76);
      sub_1C442F6CC();
    }

    else
    {
      v77 = *(v0 + 216);
      sub_1C4422368();
      sub_1C4420C3C(v78, v79, v80);
      v81 = sub_1C4404BCC();
      sub_1C4420C3C(v81, v82, &qword_1C4F3E0D8);
      sub_1C440CCA4();
      sub_1C44CDA7C();
      v83 = sub_1C4425D24();
      sub_1C4420C3C(v83, &qword_1EC0C0000, &qword_1C4F3E0D8);
    }

    goto LABEL_17;
  }

  v48 = *(v0 + 308);
  v49 = *(v0 + 224);
  v50 = *(v0 + 192);
  v51 = *(v0 + 152);
  v52 = *(v0 + 280) + *(v0 + 304);
  sub_1C442B8EC();
  sub_1C4420C3C(v53, v54, v55);
  sub_1C442B8EC();
  sub_1C4420C3C(v56, v57, v58);
  sub_1C44CDA7C();
  sub_1C43FBD94();
  v62 = v50;
LABEL_18:
  sub_1C440BAA8(v59, v60, v61, v62);
LABEL_19:
  v85 = (v0 + 144);
  v84 = *(v0 + 144);
  v86 = *(v0 + 304);
  v87 = *(v0 + 280);
  v88 = *(v0 + 192);
  sub_1C4429060();
  sub_1C4405CEC();
  if (!v22)
  {
    v85 = (v0 + 136);
    v89 = *(v0 + 136);
    v90 = *(v0 + 304);
    v91 = *(v0 + 308);
    v92 = *(v0 + 280);
    sub_1C443E374();
    sub_1C44CDA7C();
    sub_1C44DDE2C();
    sub_1C4405CEC();
    if (!v22)
    {
      v107 = *(v0 + 240);
      v108 = *(v0 + 248);
      v110 = *(v0 + 200);
      v109 = *(v0 + 208);
      v111 = *(v0 + 176);
      v112 = *(v0 + 136);
      sub_1C44CDA7C();
      v113 = sub_1C43FBEF8();
      sub_1C496D918(v113, v114, v115);
      sub_1C447CC14(v110);
      sub_1C447CC14(v109);
      sub_1C4420C3C(v111, &qword_1EC0C0000, &qword_1C4F3E0D8);
      sub_1C447CC14(v107);
      goto LABEL_24;
    }

    sub_1C4420C3C(*(v0 + 208), &qword_1EC0C0008, &qword_1C4F3E0E0);
  }

  v93 = *v85;
  v95 = *(v0 + 240);
  v94 = *(v0 + 248);
  v96 = *(v0 + 176);
  v97 = *(v0 + 32);
  sub_1C4422368();
  sub_1C4420C3C(v98, v99, v100);
  sub_1C4420C3C(v95, &qword_1EC0C0008, &qword_1C4F3E0E0);
  sub_1C4422368();
  sub_1C4420C3C(v101, v102, v103);
  sub_1C43FCF64();
  sub_1C440BAA8(v104, v105, v106, v97);
LABEL_24:
  v116 = *(v0 + 248);
  v117 = *(v0 + 32);
  sub_1C4410EC0();
  if (!v22)
  {
    v123 = *(v0 + 312);
    v124 = *(v0 + 280);
    v126 = *(v0 + 256);
    v125 = *(v0 + 264);
    sub_1C4422368();
    sub_1C4420C3C(v127, v128, v129);
    sub_1C4404BCC();
    sub_1C44CDA7C();
    sub_1C43FF010();
    sub_1C440BAA8(v130, v131, v132, v133);
    sub_1C4423BEC();
    goto LABEL_29;
  }

  sub_1C4420C3C(v116, &qword_1EC0C0010, &qword_1C4F3E0E8);
  swift_task_alloc();
  sub_1C43FBE70();
  *(v0 + 296) = v118;
  *v118 = v119;
  sub_1C44223A4();
  sub_1C43FEA3C();

  return sub_1C4ADDF04(v120);
}

uint64_t sub_1C497529C()
{
  v2 = v0[33];
  v3 = v0[4];
  v4 = sub_1C440EF74();
  v6 = sub_1C44157D4(v4, v5, v3);
  v7 = v0[36];
  if (v6 == 1)
  {
    v8 = v0[35];
    sub_1C441B430();
    sub_1C4420C3C(v9, &qword_1EC0C0018, &qword_1C4F3E0F0);
    v10 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    v11 = sub_1C441E458();
    sub_1C448F148(v11, sel_setDateFormat_);

    v12 = [objc_opt_self() localTimeZone];
    sub_1C443EF28();

    sub_1C4EF9FF8();
    v13 = sub_1C43FC54C();
    v15 = v14(v13);
    sub_1C448F148(v15, sel_setTimeZone_);

    v16 = sub_1C4EF93D8();
    sub_1C44099C4(v16);
    sub_1C4EF93C8();
    sub_1C447E2E8();
    sub_1C4EF9388();
    *v3 = v10;
    v17 = *MEMORY[0x1E6967FD0];
    v18 = sub_1C442A44C();
    v19(v18);
    v20 = v10;
    sub_1C447F534();
    v21 = objc_autoreleasePoolPush();
    sub_1C443DF88();
    sub_1C456902C(&qword_1EC0C0028, &qword_1C4F3E100);
    sub_1C497B264();
    sub_1C44365AC();
    v22 = sub_1C4EF93B8();
    v24 = v23;
    v25 = v0[35];
    v26 = v0[36];
    v27 = v0[33];
    v60 = v0[32];
    v61 = v0[31];
    v62 = v0[30];
    v63 = v0[29];
    v64 = v0[28];
    v65 = v0[27];
    v66 = v0[26];
    v67 = v0[25];
    v68 = v0[23];
    v69 = v0[22];
    v70 = v0[21];
    v71 = v0[20];
    v72 = v0[19];
    v73 = v0[18];
    v74 = v0[17];
    v75 = v0[16];
    v76 = v0[13];
    v28 = v0[9];
    v77 = v0[12];
    v78 = v0[8];
    v79 = v0[5];

    objc_autoreleasePoolPop(v1);
    sub_1C4F01178();
    sub_1C4F01158();

    sub_1C4411F20();
    sub_1C4434000(v22, v24);

    sub_1C43FDA40();
    sub_1C4458730();

    __asm { BRAA            X3, X16 }
  }

  v29 = v0[8];
  v30 = v0[5];
  v31 = v0[6];
  sub_1C440A9B8();
  sub_1C44CDA7C();
  sub_1C4EF9AD8();
  sub_1C4461FD4(v32);
  v34 = sub_1C44602A0(v33);
  sub_1C440F834(v34);
  v36 = *(v35 + 32);
  v37 = sub_1C4405DA0();
  v36(v37);
  v38 = sub_1C440E450();
  v36(v38);
  v39 = *(v3 + 32);
  sub_1C4451334();
  v41 = *v40;
  v43 = *(v40 + 1);
  v42 = *(v40 + 2);
  *v44 = v41;
  *(v44 + 8) = v43;
  *(v44 + 16) = v42;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v46 = v0[36];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1C441BA3C();
    sub_1C458E36C();
    v46 = v56;
  }

  sub_1C441CB28();
  if (v48)
  {
    sub_1C4413364(v47);
    sub_1C458E36C();
    v46 = v57;
  }

  v49 = v0[8];
  sub_1C441FD60(v0[7]);
  sub_1C44CDA7C();
  v0[36] = v46;
  sub_1C43FCE74();
  sub_1C4458730();

  return MEMORY[0x1EEE6DFA0](v50, v51, v52);
}

uint64_t sub_1C49757E8(uint64_t a1)
{
  v1[3] = a1;
  v2 = sub_1C456902C(&qword_1EC0C0040, &qword_1C4F4B090);
  v1[4] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v4 = sub_1C456902C(&qword_1EC0B8B90, &qword_1C4F0DFC0);
  v1[6] = v4;
  v5 = *(v4 - 8);
  v1[7] = v5;
  v6 = *(v5 + 64) + 15;
  v1[8] = swift_task_alloc();
  v7 = *(*(sub_1C4F01188() - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v8 = sub_1C4EF9398();
  v1[10] = v8;
  v9 = *(v8 - 8);
  v1[11] = v9;
  v10 = *(v9 + 64) + 15;
  v1[12] = swift_task_alloc();
  v11 = *(*(sub_1C4EF9378() - 8) + 64) + 15;
  v1[13] = swift_task_alloc();
  v12 = sub_1C4EFA018();
  v1[14] = v12;
  v13 = *(v12 - 8);
  v1[15] = v13;
  v14 = *(v13 + 64) + 15;
  v1[16] = swift_task_alloc();
  v15 = *(*(sub_1C456902C(&qword_1EC0C0048, &qword_1C4F3E108) - 8) + 64) + 15;
  v1[17] = swift_task_alloc();
  v16 = *(*(sub_1C456902C(&qword_1EC0BFE70, &unk_1C4F3DDF0) - 8) + 64) + 15;
  v1[18] = swift_task_alloc();
  v17 = *(*(sub_1C456902C(&qword_1EC0C0050, &qword_1C4F3E110) - 8) + 64) + 15;
  v1[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4975AA8, 0, 0);
}

uint64_t sub_1C4975AA8()
{
  sub_1C43FBCD4();
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[3];
  sub_1C44DDE2C();
  sub_1C43FBC98();
  sub_1C497B524();
  v0[20] = MEMORY[0x1E69E7CC0];
  swift_task_alloc();
  sub_1C43FBE70();
  v0[21] = v4;
  *v4 = v5;
  sub_1C442F244(v4);

  return sub_1C4A89784();
}

uint64_t sub_1C4975B5C()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *(v1 + 168);
  v3 = *v0;
  sub_1C43FBDAC();
  *v4 = v3;

  v5 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C4976074(uint64_t a1)
{
  v1[5] = a1;
  v2 = sub_1C456902C(&qword_1EC0C0070, &unk_1C4F3E120);
  v1[6] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v4 = sub_1C456902C(&qword_1EC0B8B98, &qword_1C4F0DFC8);
  v1[8] = v4;
  v5 = *(v4 - 8);
  v1[9] = v5;
  v6 = *(v5 + 64) + 15;
  v1[10] = swift_task_alloc();
  v7 = *(*(sub_1C4F01188() - 8) + 64) + 15;
  v1[11] = swift_task_alloc();
  v8 = sub_1C4EF9398();
  v1[12] = v8;
  v9 = *(v8 - 8);
  v1[13] = v9;
  v10 = *(v9 + 64) + 15;
  v1[14] = swift_task_alloc();
  v11 = *(*(sub_1C4EF9378() - 8) + 64) + 15;
  v1[15] = swift_task_alloc();
  v12 = sub_1C4EFA018();
  v1[16] = v12;
  v13 = *(v12 - 8);
  v1[17] = v13;
  v14 = *(v13 + 64) + 15;
  v1[18] = swift_task_alloc();
  v15 = *(*(sub_1C456902C(&qword_1EC0C0078, &qword_1C4F3E130) - 8) + 64) + 15;
  v1[19] = swift_task_alloc();
  v16 = sub_1C456902C(&qword_1EC0C0080, &qword_1C4F3E138);
  v1[20] = v16;
  v17 = *(v16 - 8);
  v1[21] = v17;
  v18 = *(v17 + 64) + 15;
  v1[22] = swift_task_alloc();
  v19 = *(*(sub_1C456902C(&qword_1EC0BFE68, &unk_1C4F6E0B0) - 8) + 64) + 15;
  v1[23] = swift_task_alloc();
  v20 = *(*(sub_1C456902C(&qword_1EC0C0088, &qword_1C4F3E140) - 8) + 64) + 15;
  v1[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C497639C, 0, 0);
}

uint64_t sub_1C497639C()
{
  sub_1C4404D98();
  sub_1C448840C();
  sub_1C440CCA4();
  sub_1C44DDE2C();
  v2 = *(v1 + 16);
  v3 = sub_1C4404C28();
  v4(v3);
  sub_1C4409E0C(&qword_1EC0C0090, &qword_1EC0C0080, &qword_1C4F3E138);
  sub_1C447CDD0();
  sub_1C4422368();
  sub_1C4420C3C(v5, v6, v7);
  *(v0 + 200) = MEMORY[0x1E69E7CC0];
  v8 = sub_1C4402120();
  sub_1C456902C(v8, v9);
  sub_1C44006D4(&qword_1EC0C00A0);
  v10 = *(MEMORY[0x1E69E85A8] + 4);
  swift_task_alloc();
  sub_1C43FBE70();
  *(v0 + 208) = v11;
  *v11 = v12;
  v13 = sub_1C443514C(v11);

  return MEMORY[0x1EEE6D8C8](v13);
}

uint64_t sub_1C49764D4()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FBE64();
  *v3 = v2;
  v5 = *(v4 + 208);
  v6 = *v1;
  sub_1C43FBDAC();
  *v7 = v6;
  *(v8 + 216) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C49765D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C447F160();
  sub_1C4441100();
  v24 = v21[19];
  v25 = v21[6];
  sub_1C4405CEC();
  if (v26)
  {
    v27 = v21[27];
    v28 = v21[24];
    v29 = v21[25];
    sub_1C440BDF8();
    v92 = v30;
    v93 = v31;
    sub_1C4420C3C(v32, &qword_1EC0C0088, &qword_1C4F3E140);
    v33 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    v34 = sub_1C441E458();
    sub_1C441804C(v34, sel_setDateFormat_);

    v35 = [objc_opt_self() localTimeZone];
    sub_1C44EB888();

    sub_1C4EF9FF8();
    v36 = sub_1C441C348();
    v38 = v37(v36);
    sub_1C441804C(v38, sel_setTimeZone_);

    v39 = sub_1C4EF93D8();
    sub_1C44099C4(v39);
    sub_1C4EF93C8();
    sub_1C4471CC8();
    sub_1C4EF9388();
    *v22 = v33;
    v40 = *MEMORY[0x1E6967FD0];
    v41 = sub_1C4424CF8();
    v42(v41);
    v43 = v33;
    sub_1C4EF93A8();
    v44 = objc_autoreleasePoolPush();
    v21[4] = v29;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C456902C(&qword_1EC0C00A8, &qword_1C4F3E150);
    sub_1C497B3C4();
    sub_1C4428EA4();
    v45 = v21[25];
    if (v20)
    {
      v46 = v21[25];

      objc_autoreleasePoolPop(v44);

      v48 = v21[23];
      v47 = v21[24];
      v49 = v21[22];
      sub_1C4414608();
      v94 = v21[7];

      sub_1C43FC560();
      sub_1C4416034();

      return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, v92, v94, a17, a18, a19, a20);
    }

    else
    {
      sub_1C441AF54();
      objc_autoreleasePoolPop(v44);
      sub_1C4F01178();
      sub_1C4404DC8();
      sub_1C4F01158();

      sub_1C4411F20();
      v80 = sub_1C4404DC8();
      sub_1C4434000(v80, v81);

      sub_1C43FDA40();
      sub_1C4416034();

      return v85(v82, v83, v84, v85, v86, v87, v88, v89, a9, a10, a11, a12, a13, a14, v92, v93, a17, a18, a19, a20);
    }
  }

  else
  {
    v95 = v21[25];
    sub_1C4460858();
    sub_1C440A9B8();
    sub_1C44CDA7C();
    sub_1C4EF9AD8();
    sub_1C44409E0(v59);
    v61 = sub_1C44602A0(v60);
    sub_1C440F834(v61);
    v63 = *(v62 + 32);
    v64 = sub_1C4405DA0();
    v63(v64);
    v65 = sub_1C440E450();
    v63(v65);
    v66 = *(v25 + 32);
    v67 = *(v23 + 56);
    sub_1C4422B34();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v69 = v21[25];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C441BA3C();
      sub_1C458E2F4();
      v69 = v90;
    }

    sub_1C441CB28();
    if (v71)
    {
      sub_1C4413364(v70);
      sub_1C458E2F4();
      v69 = v91;
    }

    v72 = v21[10];
    sub_1C441FD60(v21[9]);
    sub_1C44CDA7C();
    v21[25] = v69;
    v73 = sub_1C4402120();
    sub_1C456902C(v73, v74);
    sub_1C44006D4(&qword_1EC0C00A0);
    v75 = *(MEMORY[0x1E69E85A8] + 4);
    swift_task_alloc();
    sub_1C43FBE70();
    v21[26] = v76;
    *v76 = v77;
    sub_1C443514C(v76);
    sub_1C4416034();

    return MEMORY[0x1EEE6D8C8](v78);
  }
}

uint64_t sub_1C4976A44()
{
  sub_1C43FBCD4();
  v0[2] = v0[27];
  v0[28] = sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  swift_willThrowTypedImpl();
  v1 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C4976AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1C43FBDC8();
  sub_1C4404B08();
  sub_1C4424740();
  v13 = sub_1C4F028C8();
  if (v13)
  {
    v31 = v13;
  }

  else
  {
    v15 = *(v12 + 216);
    v14 = *(v12 + 224);
    v31 = sub_1C43FFB2C();
    *v16 = v15;
  }

  v17 = *(v12 + 200);
  sub_1C4420C3C(*(v12 + 192), &qword_1EC0C0088, &qword_1C4F3E140);

  v19 = *(v12 + 184);
  v18 = *(v12 + 192);
  v20 = *(v12 + 176);
  sub_1C4414608();
  v21 = *(v12 + 56);

  sub_1C43FBDA0();
  sub_1C43FEA3C();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, v31, a10, a11, a12);
}

uint64_t sub_1C4976BE4(uint64_t a1)
{
  v1[13] = a1;
  v2 = sub_1C456902C(&qword_1EC0C00C0, qword_1C4F4DC50);
  v1[14] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[15] = swift_task_alloc();
  v4 = sub_1C456902C(&qword_1EC0B8BA0, &qword_1C4F0DFD0);
  v1[16] = v4;
  v5 = *(v4 - 8);
  v1[17] = v5;
  v6 = *(v5 + 64) + 15;
  v1[18] = swift_task_alloc();
  v7 = *(*(sub_1C4F01188() - 8) + 64) + 15;
  v1[19] = swift_task_alloc();
  v8 = sub_1C4EF9398();
  v1[20] = v8;
  v9 = *(v8 - 8);
  v1[21] = v9;
  v10 = *(v9 + 64) + 15;
  v1[22] = swift_task_alloc();
  v11 = *(*(sub_1C4EF9378() - 8) + 64) + 15;
  v1[23] = swift_task_alloc();
  v12 = sub_1C4EFA018();
  v1[24] = v12;
  v13 = *(v12 - 8);
  v1[25] = v13;
  v14 = *(v13 + 64) + 15;
  v1[26] = swift_task_alloc();
  v15 = *(*(sub_1C456902C(&qword_1EC0C00C8, &qword_1C4F3E158) - 8) + 64) + 15;
  v1[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4976E34, 0, 0);
}

uint64_t sub_1C4976E34()
{
  sub_1C43FCF70();
  v1 = v0[13];
  sub_1C44DDE2C();
  sub_1C4AB4ED4((v0 + 2));
  sub_1C442BBB8();
  sub_1C4420C3C(v2, v3, v4);
  v0[28] = MEMORY[0x1E69E7CC0];
  swift_task_alloc();
  sub_1C43FBE70();
  v0[29] = v5;
  *v5 = v6;
  sub_1C441D298(v5);

  return sub_1C4AB5060();
}

uint64_t sub_1C4976EF0()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *(v1 + 232);
  v3 = *v0;
  sub_1C43FBDAC();
  *v4 = v3;

  v5 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C4976FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1C4433C40();
  sub_1C444FD14();
  v19 = v18[27];
  v20 = v18[14];
  v21 = sub_1C440EF74();
  v23 = sub_1C44157D4(v21, v22, v20);
  v24 = v18[28];
  if (v23 == 1)
  {
    v26 = v18[25];
    v25 = v18[26];
    v27 = v18[23];
    v28 = v18[24];
    v30 = v18[21];
    v29 = v18[22];
    v91 = v18[20];
    sub_1C4420C3C((v18 + 2), &qword_1EC0C00D0, &qword_1C4F3E160);
    v31 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    v32 = sub_1C441E458();
    sub_1C448F148(v32, sel_setDateFormat_);

    v33 = [objc_opt_self() localTimeZone];
    sub_1C443EF28();

    sub_1C4EF9FF8();
    v34 = sub_1C43FC54C();
    v36 = v35(v34);
    sub_1C448F148(v36, sel_setTimeZone_);

    v37 = sub_1C4EF93D8();
    sub_1C44099C4(v37);
    sub_1C4EF93C8();
    sub_1C447E2E8();
    sub_1C4EF9388();
    *v29 = v31;
    v38 = *MEMORY[0x1E6967FD0];
    v39 = sub_1C442A44C();
    v40(v39);
    v41 = v31;
    sub_1C447F534();
    v42 = objc_autoreleasePoolPush();
    v18[12] = v24;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C456902C(&qword_1EC0C00D8, &qword_1C4F3E168);
    sub_1C497B474();
    sub_1C44803A0();
    v44 = v18[27];
    v43 = v18[28];
    v45 = v18[26];
    v88 = v18[23];
    v89 = v18[22];
    v46 = v18[19];
    v90 = v18[18];
    v92 = v18[15];

    if (v29)
    {
      objc_autoreleasePoolPop(v42);

      sub_1C43FC560();
      sub_1C4409BA4();

      return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, v88, v89, v90, v92, a15, a16, a17, a18);
    }

    else
    {
      objc_autoreleasePoolPop(v42);
      sub_1C4F01178();
      sub_1C4404044();
      sub_1C4F01158();

      sub_1C4411F20();
      v76 = sub_1C4404044();
      sub_1C4434000(v76, v77);

      sub_1C43FDA40();
      sub_1C4409BA4();

      return v81(v78, v79, v80, v81, v82, v83, v84, v85, a9, a10, v88, v89, v90, v92, a15, a16, a17, a18);
    }
  }

  else
  {
    v56 = v18[18];
    v57 = v18[15];
    v58 = v18[16];
    sub_1C440A9B8();
    sub_1C44CDA7C();
    sub_1C4EF9AD8();
    sub_1C4461FD4(v59);
    v61 = sub_1C44602A0(v60);
    sub_1C440F834(v61);
    v63 = *(v62 + 32);
    v64 = sub_1C4405DA0();
    v63(v64);
    v65 = sub_1C440E450();
    v63(v65);
    v66 = *(v20 + 32);
    v67 = *(v58 + 56);
    sub_1C4422B34();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v69 = v18[28];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C441BA3C();
      sub_1C458E2B8();
      v69 = v86;
    }

    sub_1C441CB28();
    if (v71)
    {
      sub_1C4413364(v70);
      sub_1C458E2B8();
      v69 = v87;
    }

    v72 = v18[18];
    sub_1C441FD60(v18[17]);
    sub_1C44CDA7C();
    v18[28] = v69;
    swift_task_alloc();
    sub_1C43FBE70();
    v18[29] = v73;
    *v73 = v74;
    sub_1C441D298();
    sub_1C4409BA4();

    return sub_1C4AB5060();
  }
}

uint64_t InternalXPC.Server.contextData(forSource:start:end:)()
{
  sub_1C43FBCD4();
  v1[116] = v0;
  v1[115] = v2;
  v1[114] = v3;
  v1[113] = v4;
  v1[112] = v5;
  v6 = sub_1C456902C(&qword_1EC0BFE68, &unk_1C4F6E0B0);
  sub_1C43FBD18(v6);
  v8 = *(v7 + 64);
  v1[117] = sub_1C43FBE7C();
  v9 = sub_1C456902C(&qword_1EC0BFE70, &unk_1C4F3DDF0);
  sub_1C43FBD18(v9);
  v11 = *(v10 + 64);
  v1[118] = sub_1C43FBE7C();
  v12 = sub_1C456902C(&qword_1EC0B8E18, &qword_1C4F0E460);
  sub_1C43FBD18(v12);
  v14 = *(v13 + 64);
  v1[119] = sub_1C43FBE7C();
  v15 = sub_1C456902C(&qword_1EC0B8E48, &unk_1C4F0E6D0);
  sub_1C43FBD18(v15);
  v17 = *(v16 + 64);
  v1[120] = sub_1C43FBE7C();
  v18 = sub_1C456902C(&qword_1EC0BF948, &qword_1C4F3B470);
  sub_1C43FBD18(v18);
  v20 = *(v19 + 64);
  v1[121] = sub_1C43FBE7C();
  v21 = type metadata accessor for Configuration();
  v1[122] = v21;
  sub_1C43FBD18(v21);
  v23 = *(v22 + 64);
  v1[123] = sub_1C43FE604();
  v1[124] = swift_task_alloc();
  v24 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v1[125] = v24;
  sub_1C43FBD18(v24);
  v26 = *(v25 + 64);
  v1[126] = sub_1C43FE604();
  v1[127] = swift_task_alloc();
  v1[128] = swift_task_alloc();
  v27 = sub_1C456902C(&qword_1EC0BCD40, &qword_1C4F2A7C8);
  sub_1C43FBD18(v27);
  v29 = *(v28 + 64);
  v1[129] = sub_1C43FBE7C();
  v30 = type metadata accessor for LOISessionDataAsyncSequence(0);
  sub_1C43FBD18(v30);
  v32 = *(v31 + 64);
  v1[130] = sub_1C43FBE7C();
  v33 = sub_1C456902C(&qword_1EC0B84B0, qword_1C4F0CDE0);
  v1[131] = v33;
  sub_1C43FBD18(v33);
  v35 = *(v34 + 64);
  v1[132] = sub_1C43FE604();
  v1[133] = swift_task_alloc();
  v36 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v1[134] = v36;
  sub_1C43FBD18(v36);
  v38 = *(v37 + 64);
  v1[135] = sub_1C43FE604();
  v1[136] = swift_task_alloc();
  v39 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v39, v40, v41);
}

uint64_t sub_1C49783E0()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  sub_1C4417428();
  v5 = v4;
  sub_1C44001F0();
  *v6 = v5;
  v8 = *(v7 + 1096);
  v9 = *v2;
  sub_1C43FBDAC();
  *v10 = v9;
  v5[138] = v1;

  if (!v1)
  {
    v5[139] = v0;
    v5[140] = v3;
  }

  sub_1C442FEC0();
  sub_1C4426C44();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C49785E8()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  sub_1C4417428();
  v5 = v4;
  sub_1C44001F0();
  *v6 = v5;
  v8 = *(v7 + 1136);
  v9 = *v2;
  sub_1C43FBDAC();
  *v10 = v9;
  v5[143] = v1;

  if (!v1)
  {
    v5[144] = v0;
    v5[145] = v3;
  }

  sub_1C442FEC0();
  sub_1C4426C44();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C4978810()
{
  sub_1C43FEAEC();
  sub_1C445BDA0();
  sub_1C43FBDAC();
  *v5 = v4;
  v6 = v4[149];
  *v5 = *v2;
  v4[150] = v1;

  v7 = v4[148];

  if (!v1)
  {
    v4[151] = v0;
    v4[152] = v3;
  }

  sub_1C442FEC0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C4978A3C()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  sub_1C4417428();
  v5 = v4;
  sub_1C44001F0();
  *v6 = v5;
  v8 = *(v7 + 1224);
  v9 = *v2;
  sub_1C43FBDAC();
  *v10 = v9;
  v5[154] = v1;

  if (!v1)
  {
    v5[155] = v0;
    v5[156] = v3;
  }

  sub_1C442FEC0();
  sub_1C4426C44();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C4978C44()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  sub_1C4417428();
  v5 = v4;
  sub_1C44001F0();
  *v6 = v5;
  v8 = *(v7 + 1256);
  v9 = *v2;
  sub_1C43FBDAC();
  *v10 = v9;
  v5[158] = v1;

  if (!v1)
  {
    v5[159] = v0;
    v5[160] = v3;
  }

  sub_1C442FEC0();
  sub_1C4426C44();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C4978E4C()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  sub_1C4417428();
  v5 = v4;
  sub_1C44001F0();
  *v6 = v5;
  v8 = *(v7 + 1288);
  v9 = *v2;
  sub_1C43FBDAC();
  *v10 = v9;
  v5[162] = v1;

  if (!v1)
  {
    v5[163] = v0;
    v5[164] = v3;
  }

  sub_1C442FEC0();
  sub_1C4426C44();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C4979064()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  sub_1C4417428();
  v5 = v4;
  sub_1C44001F0();
  *v6 = v5;
  v8 = *(v7 + 1320);
  v9 = *v2;
  sub_1C43FBDAC();
  *v10 = v9;
  v5[166] = v1;

  if (!v1)
  {
    v5[167] = v0;
    v5[168] = v3;
  }

  sub_1C442FEC0();
  sub_1C4426C44();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C497927C()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  sub_1C4417428();
  v5 = v4;
  sub_1C44001F0();
  *v6 = v5;
  v8 = *(v7 + 1360);
  v9 = *v2;
  sub_1C43FBDAC();
  *v10 = v9;
  v5[171] = v1;

  if (!v1)
  {
    v5[172] = v0;
    v5[173] = v3;
  }

  sub_1C442FEC0();
  sub_1C4426C44();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C4979484()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  sub_1C4417428();
  v5 = v4;
  sub_1C44001F0();
  *v6 = v5;
  v8 = *(v7 + 1400);
  v9 = *v2;
  sub_1C43FBDAC();
  *v10 = v9;
  v5[176] = v1;

  if (!v1)
  {
    v5[177] = v0;
    v5[178] = v3;
  }

  sub_1C442FEC0();
  sub_1C4426C44();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C49796AC()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  sub_1C4417428();
  v5 = v4;
  sub_1C44001F0();
  *v6 = v5;
  v8 = *(v7 + 1440);
  v9 = *v2;
  sub_1C43FBDAC();
  *v10 = v9;
  v5[181] = v1;

  if (!v1)
  {
    v5[182] = v0;
    v5[183] = v3;
  }

  sub_1C442FEC0();
  sub_1C4426C44();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C49798D0()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  sub_1C4417428();
  v5 = v4;
  sub_1C44001F0();
  *v6 = v5;
  v8 = *(v7 + 1488);
  v9 = *v2;
  sub_1C43FBDAC();
  *v10 = v9;
  v5[187] = v1;

  if (!v1)
  {
    v5[188] = v0;
    v5[189] = v3;
  }

  sub_1C442FEC0();
  sub_1C4426C44();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C4979AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1C4433C40();
  sub_1C444FD14();
  v19 = v18[136];
  sub_1C4414C78(v18[130]);
  sub_1C4420C3C(v19, &qword_1EC0B84B8, &unk_1C4F0D4F0);
  v20 = v18[138];
  sub_1C4419A6C();

  sub_1C4433540();
  sub_1C4409BA4();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1C4979BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1C4433C40();
  sub_1C444FD14();
  sub_1C4495D0C();
  sub_1C45C8228();
  swift_deallocClassInstance();
  sub_1C4420C3C(v19, &qword_1EC0BCD40, &qword_1C4F2A7C8);
  sub_1C4420C3C(v18, &qword_1EC0B84B8, &unk_1C4F0D4F0);
  v21 = *(v20 + 1144);
  sub_1C4419A6C();

  sub_1C4433540();
  sub_1C4409BA4();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1C4979D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1C4433C40();
  sub_1C444FD14();
  v19 = v18[147];
  v20 = v18[136];

  sub_1C4420C3C(v20, &qword_1EC0B84B8, &unk_1C4F0D4F0);
  v21 = v18[150];
  sub_1C4419A6C();

  sub_1C4433540();
  sub_1C4409BA4();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1C4979E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1C4433C40();
  sub_1C444FD14();
  v19 = *(v18 + 1088);
  sub_1C49370F0(v18 + 200);
  sub_1C4420C3C(v19, &qword_1EC0B84B8, &unk_1C4F0D4F0);
  v20 = *(v18 + 1232);
  sub_1C4419A6C();

  sub_1C4433540();
  sub_1C4409BA4();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1C4979F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1C4433C40();
  sub_1C444FD14();
  v19 = *(v18 + 1088);
  sub_1C49370F0(v18 + 16);
  sub_1C4420C3C(v19, &qword_1EC0B84B8, &unk_1C4F0D4F0);
  v20 = *(v18 + 1264);
  sub_1C4419A6C();

  sub_1C4433540();
  sub_1C4409BA4();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1C4979FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1C4433C40();
  sub_1C444FD14();
  v19 = v18[136];
  sub_1C4420C3C(v18[121], &qword_1EC0BF948, &qword_1C4F3B470);
  sub_1C4420C3C(v19, &qword_1EC0B84B8, &unk_1C4F0D4F0);
  v20 = v18[162];
  sub_1C4419A6C();

  sub_1C4433540();
  sub_1C4409BA4();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1C497A108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1C4433C40();
  sub_1C444FD14();
  v19 = v18[136];
  sub_1C4420C3C(v18[120], &qword_1EC0B8E48, &unk_1C4F0E6D0);
  sub_1C4420C3C(v19, &qword_1EC0B84B8, &unk_1C4F0D4F0);
  v20 = v18[166];
  sub_1C4419A6C();

  sub_1C4433540();
  sub_1C4409BA4();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1C497A214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1C4433C40();
  sub_1C444FD14();
  v19 = *(v18 + 1088);

  sub_1C4420C3C(v19, &qword_1EC0B84B8, &unk_1C4F0D4F0);
  v20 = *(v18 + 1368);
  sub_1C4419A6C();

  sub_1C4433540();
  sub_1C4409BA4();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1C497A310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1C4433C40();
  sub_1C444FD14();
  sub_1C44C1250();
  sub_1C4A8B130();
  swift_deallocClassInstance();
  sub_1C4420C3C(v19, &qword_1EC0BFE70, &unk_1C4F3DDF0);
  sub_1C4420C3C(v18, &qword_1EC0B84B8, &unk_1C4F0D4F0);
  v21 = *(v20 + 1408);
  sub_1C4419A6C();

  sub_1C4433540();
  sub_1C4409BA4();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1C497A42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1C4433C40();
  sub_1C444FD14();
  v19 = v18[179];
  v20 = v18[136];
  v21 = v18[117];

  sub_1C4420C3C(v21, &qword_1EC0BFE68, &unk_1C4F6E0B0);
  sub_1C4420C3C(v20, &qword_1EC0B84B8, &unk_1C4F0D4F0);
  v22 = v18[181];
  sub_1C4419A6C();

  sub_1C4433540();
  sub_1C4409BA4();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1C497A544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1C4433C40();
  sub_1C444FD14();
  v19 = v18[185];
  v20 = v18[136];

  sub_1C4420C3C((v18 + 87), &qword_1EC0BFE78, &unk_1C4F4DCA0);
  sub_1C4420C3C(v20, &qword_1EC0B84B8, &unk_1C4F0D4F0);
  v21 = v18[187];
  sub_1C4419A6C();

  sub_1C4433540();
  sub_1C4409BA4();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1C497A6FC(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, void *a5)
{
  v5[2] = a5;
  v8 = sub_1C4EF9CD8();
  v5[3] = v8;
  v9 = *(v8 - 8);
  v5[4] = v9;
  v10 = *(v9 + 64) + 15;
  v5[5] = swift_task_alloc();
  v5[6] = swift_task_alloc();
  v5[7] = _Block_copy(a4);
  sub_1C4F01138();
  v5[8] = v11;
  sub_1C4EF9C78();
  sub_1C4EF9C78();
  a5;
  v12 = swift_task_alloc();
  v5[9] = v12;
  *v12 = v5;
  v12[1] = sub_1C497A87C;

  return InternalXPC.Server.contextData(forSource:start:end:)();
}

uint64_t sub_1C497A87C()
{
  sub_1C4404D98();
  v3 = v0;
  sub_1C445BDA0();
  v4 = v2;
  sub_1C43FBDAC();
  *v5 = v2;
  v6 = v2[9];
  v7 = v2[8];
  v8 = v2[2];
  v9 = *v1;
  *v5 = *v1;

  v10 = v2[6];
  v11 = v2[3];
  v12 = *(v2[4] + 8);
  v12(v2[5], v11);
  v12(v10, v11);
  if (v3)
  {
    v13 = sub_1C4EF9798();

    v14 = v13;
  }

  else
  {
    v15 = sub_1C4F01108();

    v14 = v15;
  }

  v17 = v4[6];
  v16 = v4[7];
  v18 = v4[5];
  v19 = v16[2];
  v20 = sub_1C4402B58();
  v21(v20);

  _Block_release(v16);

  v22 = *(v9 + 8);

  return v22();
}

id sub_1C497AAA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[3] = sub_1C4461BB8(0, &unk_1EDDF0560, 0x1E69B8A58);
  v12[4] = &off_1F43F72C0;
  v12[0] = a1;
  v11[3] = sub_1C4461BB8(0, &qword_1EDDF0450, 0x1E69B8DB8);
  v11[4] = &off_1F43F7318;
  v11[0] = a2;
  sub_1C442E860(v12, a4 + 16);
  sub_1C442E860(v11, a4 + 56);
  v8 = objc_allocWithZone(MEMORY[0x1E69B88E0]);
  result = [v8 init];
  if (result)
  {
    v10 = result;
    sub_1C440962C(v12);
    sub_1C440962C(v11);
    *(a4 + 96) = v10;
    *(a4 + 104) = a3;
    return a4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1C497AB88()
{
  result = qword_1EC0BFE80;
  if (!qword_1EC0BFE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFE80);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RouteData(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
    if (a2 + 11 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 11) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ContextDataSources(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C497AD84()
{
  sub_1C43FEAEC();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1C442E8C4;
  sub_1C442B8EC();

  return v8();
}

unint64_t sub_1C497AE44()
{
  result = qword_1EC0BFEB0;
  if (!qword_1EC0BFEB0)
  {
    sub_1C4572308(&qword_1EC0BFEA8, &qword_1C4F3DFB0);
    sub_1C4401CBC(&qword_1EC0BFEB8, &qword_1EC0B8B48, &qword_1C4F3DFA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFEB0);
  }

  return result;
}

unint64_t sub_1C497AEF4()
{
  result = qword_1EC0BFEF8;
  if (!qword_1EC0BFEF8)
  {
    sub_1C4572308(&qword_1EC0BFEF0, &unk_1C4F3DFE0);
    sub_1C4401CBC(&qword_1EC0BFF00, &qword_1EC0B8B50, &unk_1C4F0DF80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFEF8);
  }

  return result;
}

unint64_t sub_1C497AFA4()
{
  result = qword_1EC0BFF10;
  if (!qword_1EC0BFF10)
  {
    sub_1C4572308(&qword_1EC0BFF08, &qword_1C4F3DFF8);
    sub_1C4401CBC(&qword_1EC0BFF18, &qword_1EC0B8B58, &qword_1C4F3DFF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFF10);
  }

  return result;
}

unint64_t sub_1C497B054()
{
  result = qword_1EC0BFF30;
  if (!qword_1EC0BFF30)
  {
    sub_1C4572308(&qword_1EC0BFF28, &qword_1C4F3E010);
    sub_1C4401CBC(&qword_1EC0BFF38, &qword_1EC0B8B70, &unk_1C4F0DFA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFF30);
  }

  return result;
}

unint64_t sub_1C497B104()
{
  result = qword_1EC0BFF80;
  if (!qword_1EC0BFF80)
  {
    sub_1C4572308(&qword_1EC0BFF78, &qword_1C4F3E068);
    sub_1C4401CBC(&qword_1EC0BFF88, &qword_1EC0B8B78, &qword_1C4F3E020);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFF80);
  }

  return result;
}

unint64_t sub_1C497B1B4()
{
  result = qword_1EC0BFFD8;
  if (!qword_1EC0BFFD8)
  {
    sub_1C4572308(&qword_1EC0BFFD0, &qword_1C4F3E0B8);
    sub_1C4401CBC(&qword_1EC0BFFE0, &qword_1EC0B8B80, &unk_1C4F0DFB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFFD8);
  }

  return result;
}

unint64_t sub_1C497B264()
{
  result = qword_1EC0C0030;
  if (!qword_1EC0C0030)
  {
    sub_1C4572308(&qword_1EC0C0028, &qword_1C4F3E100);
    sub_1C4401CBC(&qword_1EC0C0038, &qword_1EC0B8B88, &qword_1C4F3E0D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0030);
  }

  return result;
}

unint64_t sub_1C497B314()
{
  result = qword_1EC0C0060;
  if (!qword_1EC0C0060)
  {
    sub_1C4572308(&qword_1EC0C0058, &qword_1C4F3E118);
    sub_1C4401CBC(&qword_1EC0C0068, &qword_1EC0B8B90, &qword_1C4F0DFC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0060);
  }

  return result;
}

unint64_t sub_1C497B3C4()
{
  result = qword_1EC0C00B0;
  if (!qword_1EC0C00B0)
  {
    sub_1C4572308(&qword_1EC0C00A8, &qword_1C4F3E150);
    sub_1C4401CBC(&qword_1EC0C00B8, &qword_1EC0B8B98, &qword_1C4F0DFC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C00B0);
  }

  return result;
}

unint64_t sub_1C497B474()
{
  result = qword_1EC0C00E0;
  if (!qword_1EC0C00E0)
  {
    sub_1C4572308(&qword_1EC0C00D8, &qword_1C4F3E168);
    sub_1C4401CBC(qword_1EC0C00E8, &qword_1EC0B8BA0, &qword_1C4F0DFD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C00E0);
  }

  return result;
}

uint64_t sub_1C497B524()
{
  sub_1C4404078();
  v2 = v1(0);
  sub_1C43FBCE0(v2);
  v4 = *(v3 + 32);
  v5 = sub_1C43FBC98();
  v6(v5);
  return v0;
}

uint64_t sub_1C497B57C(uint64_t a1)
{
  result = sub_1C4EF9CD8();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C497B614(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1C4EF9CD8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v7 + 80);
  v14 = *(*(v6 - 8) + 64);
  v15 = *(v10 + 80);
  v16 = *(v10 + 64);
  if (!a2)
  {
    return 0;
  }

  v17 = v14 + v13;
  v18 = v14 + v15;
  if (a2 <= v12)
  {
LABEL_25:
    v26 = (((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v13 + 8) & ~v13;
    if (v8 >= v11)
    {
      v9 = v6;
    }

    else
    {
      v26 = (v18 + ((v17 + v26) & ~v13)) & ~v15;
      v8 = v11;
    }

    return sub_1C44157D4(v26, v8, v9);
  }

  v19 = ((v18 + ((v17 + ((v13 + 16) & ~v13)) & ~v13)) & ~v15) + v16;
  v20 = 8 * v19;
  if (v19 <= 3)
  {
    v22 = ((a2 - v12 + ~(-1 << v20)) >> v20) + 1;
    if (HIWORD(v22))
    {
      v21 = *(a1 + v19);
      if (!v21)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v22 > 0xFF)
    {
      v21 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v22 < 2)
    {
LABEL_24:
      if (v12)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v21 = *(a1 + v19);
  if (!*(a1 + v19))
  {
    goto LABEL_24;
  }

LABEL_14:
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

    switch(v24)
    {
      case 2:
        v25 = *a1;
        break;
      case 3:
        v25 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v25 = *a1;
        break;
      default:
        v25 = *a1;
        break;
    }
  }

  else
  {
    v25 = 0;
  }

  return v12 + (v25 | v23) + 1;
}

void sub_1C497B864(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_1C4EF9CD8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(a4 + 16);
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  if (v13 <= v10)
  {
    v14 = *(v9 + 84);
  }

  else
  {
    v14 = *(v12 + 84);
  }

  v15 = *(v9 + 80);
  v16 = *(*(v8 - 8) + 64);
  v17 = *(v12 + 80);
  v18 = ((v16 + v17 + ((v16 + v15 + ((v15 + 16) & ~v15)) & ~v15)) & ~v17) + *(v12 + 64);
  v19 = 8 * v18;
  if (a3 <= v14)
  {
    v20 = 0;
  }

  else if (v18 <= 3)
  {
    v24 = ((a3 - v14 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v24))
    {
      v20 = 4;
    }

    else
    {
      if (v24 < 0x100)
      {
        v25 = 1;
      }

      else
      {
        v25 = 2;
      }

      if (v24 >= 2)
      {
        v20 = v25;
      }

      else
      {
        v20 = 0;
      }
    }
  }

  else
  {
    v20 = 1;
  }

  if (v14 >= a2)
  {
    v23 = ~v15;
    switch(v20)
    {
      case 1:
        a1[v18] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v18] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v18] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          v27 = (((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v15 + 8) & v23;
          if (v10 >= v13)
          {
            v28 = a2;
            v11 = v8;
          }

          else
          {
            v27 = (v16 + v17 + ((v16 + v15 + v27) & v23)) & ~v17;
            v28 = a2;
            v10 = v13;
          }

          sub_1C440BAA8(v27, v28, v10, v11);
        }

        break;
    }
  }

  else
  {
    v21 = ~v14 + a2;
    if (v18 < 4)
    {
      v22 = (v21 >> v19) + 1;
      if (v18)
      {
        v26 = v21 & ~(-1 << v19);
        bzero(a1, v18);
        if (v18 == 3)
        {
          *a1 = v26;
          a1[2] = BYTE2(v26);
        }

        else if (v18 == 2)
        {
          *a1 = v26;
        }

        else
        {
          *a1 = v21;
        }
      }
    }

    else
    {
      bzero(a1, v18);
      *a1 = v21;
      v22 = 1;
    }

    switch(v20)
    {
      case 1:
        a1[v18] = v22;
        break;
      case 2:
        *&a1[v18] = v22;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v18] = v22;
        break;
      default:
        return;
    }
  }
}

_BYTE *sub_1C497BB70(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t InternalXPC.Server.ECRBenchmarkError.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C4F02248();

  MEMORY[0x1C6940010](v1, v2);
  return 0xD000000000000015;
}

uint64_t InternalXPC.Server.vectorSearchBenchmark(with:)(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v2[22] = a1;
  v2[23] = a2;
  v3 = sub_1C4F00908();
  v2[24] = v3;
  sub_1C43FCF7C(v3);
  v2[25] = v4;
  v6 = *(v5 + 64);
  v2[26] = sub_1C43FBE7C();
  v7 = sub_1C4F008B8();
  v2[27] = v7;
  sub_1C43FCF7C(v7);
  v2[28] = v8;
  v10 = *(v9 + 64) + 15;
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v11 = sub_1C4F008F8();
  v2[32] = v11;
  sub_1C43FCF7C(v11);
  v2[33] = v12;
  v14 = *(v13 + 64);
  v2[34] = sub_1C43FBE7C();
  v15 = sub_1C4EFF348();
  v2[35] = v15;
  sub_1C43FCF7C(v15);
  v2[36] = v16;
  v18 = *(v17 + 64);
  v2[37] = sub_1C43FBE7C();
  v19 = sub_1C4F01188();
  v2[38] = v19;
  sub_1C43FCF7C(v19);
  v2[39] = v20;
  v22 = *(v21 + 64);
  v2[40] = sub_1C43FBE7C();
  v23 = type metadata accessor for VectorBenchmarkConfig();
  v2[41] = v23;
  v24 = *(*(v23 - 8) + 64);
  v2[42] = sub_1C43FBE7C();
  v25 = sub_1C4EF98F8();
  v2[43] = v25;
  sub_1C43FCF7C(v25);
  v2[44] = v26;
  v28 = *(v27 + 64) + 15;
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v29 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1C497BFDC, 0, 0);
}

uint64_t sub_1C497BFDC()
{
  v246 = *MEMORY[0x1E69E9840];
  if (qword_1EDDFA678 != -1)
  {
LABEL_67:
    swift_once();
  }

  v1 = sub_1C4F00978();
  sub_1C442B738(v1, qword_1EDE2DCD8);
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CF8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C43F8000, v2, v3, "InternalXPC: vectorSearchBenchmark", v4, 2u);
    sub_1C43FBE2C();
  }

  v5 = v0[47];
  v6 = v0[48];
  v7 = v0[46];
  v8 = v0[43];
  v9 = v0[44];
  v11 = v0[22];
  v10 = v0[23];

  sub_1C4EF9838();
  sub_1C4EF98A8();
  v12 = sub_1C4EF9858();
  v14 = v13;
  v17 = *(v9 + 8);
  v16 = v9 + 8;
  v15 = v17;
  v18 = sub_1C43FD2BC();
  (v17)(v18);
  v19 = [objc_opt_self() defaultManager];
  v20 = [v19 temporaryDirectory];
  sub_1C4EF98C8();

  v244 = v12;
  v245 = v14;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](1954051118, 0xE400000000000000);
  sub_1C4EF9888();

  v17(v7, v8);
  v21 = sub_1C4EF98E8();
  v23 = v22;
  v24 = sub_1C43FD2BC();
  (v17)(v24);
  sub_1C4414C9C();
  v25 = sub_1C4F01108();
  LODWORD(v5) = [v19 fileExistsAtPath_];

  if (v5)
  {
    sub_1C4414C9C();
    v26 = sub_1C4F01108();
    v0[21] = 0;
    v27 = [v19 removeItemAtPath:v26 error:v0 + 21];

    v28 = v0[21];
    if (!v27)
    {
      v48 = v0[48];
      v49 = v0[43];
      v50 = v28;

      sub_1C4EF97A8();

      swift_willThrow();
      v46 = v48;
      v47 = v49;
      goto LABEL_13;
    }

    v29 = v28;
  }

  sub_1C4414C9C();
  v30 = sub_1C4F01108();
  sub_1C4B3C50C();
  sub_1C497FB50(v30, v31, v32, 0, v19);

  sub_1C497FBD4();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4414C9C();
  v33 = sub_1C497D440();
  if (!v33)
  {
    v42 = v0[48];
    v43 = v21;
    v44 = v0[43];

    sub_1C497FC18();
    swift_allocError();
    *v45 = v43;
    v45[1] = v23;
    swift_willThrow();

    v46 = v42;
    v47 = v44;
LABEL_13:
    v15(v46, v47);
    v58 = v0[47];
    v57 = v0[48];
    v60 = v0[45];
    v59 = v0[46];
    v61 = v0[42];
    v62 = v0[40];
    v63 = v0[37];
    v64 = v0[34];
    v66 = v0[30];
    v65 = v0[31];
    v237 = v0[29];
    v239 = v0[26];

    v67 = v0[1];
    v68 = *MEMORY[0x1E69E9840];

    return v67();
  }

  v34 = v33;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v35 = sub_1C4F00968();
  v36 = sub_1C4F01CF8();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v244 = swift_slowAlloc();
    *v37 = 136315138;
    v38 = sub_1C4414C9C();
    *(v37 + 4) = sub_1C441D828(v38, v39, v40);
    _os_log_impl(&dword_1C43F8000, v35, v36, "InternalXPC - vectorSearchBenchmark Output path: %s", v37, 0xCu);
    sub_1C440962C(v244);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  v41 = v0[48];
  sub_1C4EF9938();
  v238 = v0[42];
  v233 = v0[41];
  v52 = v51;
  v53 = sub_1C4EF9348();
  v54 = *(v53 + 48);
  v55 = *(v53 + 52);
  swift_allocObject();
  v56 = sub_1C4EF9338();
  sub_1C497FD88(&qword_1EC0C0200, type metadata accessor for VectorBenchmarkConfig);
  v216 = v52;
  sub_1C4EF9328();
  v205 = v56;
  v232 = v34;
  v202 = v21;
  v211 = v19;
  v206 = v23;
  v208 = v15;
  v210 = v16;
  v70 = v0[41];
  v71 = v0[42];
  v72 = v0[39];
  v73 = v0[40];
  v240 = v0[38];
  sub_1C440E464();
  sub_1C4F02248();
  v0[12] = v244;
  v0[13] = v245;
  MEMORY[0x1C6940010](0xD00000000000001ELL, 0x80000001C4FAAA50);
  v234 = *v71;
  v230 = v71[1];
  MEMORY[0x1C6940010]();
  MEMORY[0x1C6940010](0x626174202020200ALL, 0xEC000000203A656CLL);
  v225 = v71[3];
  v228 = v71[2];
  MEMORY[0x1C6940010]();
  MEMORY[0x1C6940010](0x74656D202020200ALL, 0xED0000203A636972);
  v74 = v70[9];
  sub_1C4EFFC98();
  sub_1C4F02438();
  MEMORY[0x1C6940010](0x646F6D202020200ALL, 0xEB00000000203A65);
  v75 = v70[8];
  sub_1C4EFCEB8();
  sub_1C441337C();
  sub_1C497FD88(v76, v77);
  v78 = sub_1C4F02858();
  MEMORY[0x1C6940010](v78);

  MEMORY[0x1C6940010](0xD000000000000013, 0x80000001C4FAAA70);
  v79 = (v71 + v70[10]);
  v80 = v79[1];
  if (v80)
  {
    v81 = *v79;
  }

  else
  {
    v81 = 7104878;
  }

  if (v80)
  {
    v82 = v79[1];
  }

  else
  {
    v82 = 0xE300000000000000;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v81, v82);

  MEMORY[0x1C6940010](0xD000000000000011, 0x80000001C4FAAA90);
  v83 = (v71 + v70[11]);
  v84 = v83[1];
  if (v84)
  {
    v85 = *v83;
  }

  else
  {
    v85 = 7104878;
  }

  if (v84)
  {
    v86 = v83[1];
  }

  else
  {
    v86 = 0xE300000000000000;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v85, v86);

  v87 = sub_1C4400714();
  MEMORY[0x1C6940010](v87);
  v88 = v0[12];
  v89 = v0[13];
  sub_1C4F01178();
  v90 = sub_1C4F01148();
  v92 = v91;
  result = (*(v72 + 8))(v73, v240);
  if (v92 >> 60 == 15)
  {
    goto LABEL_73;
  }

  v93 = v0[45];
  v94 = sub_1C4EF9A38();
  sub_1C441DFEC(v90, v92);
  [v34 writeData_];

  sub_1C4EF9838();
  type metadata accessor for ViewDatabaseArtifact();
  swift_allocObject();
  sub_1C4BC40B8();
  v200 = v95;
  v201 = v89;
  v96 = v0[42];
  v97 = v0[37];
  v98 = v0[33];
  v99 = v0[28];
  v100 = v0[25];
  v101 = *(*(v95 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_pool);
  v102 = (v96 + *(v0[41] + 48));
  v103 = *v102;
  v104 = v102[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFF328();
  v105 = 0;
  v217 = v96;
  v106 = *(v96 + 40);
  v219 = (v99 + 16);
  v220 = v106 + 32;
  v107 = (v99 + 8);
  v214 = (v100 + 88);
  v221 = v106;
  v222 = *(v106 + 16);
  HIDWORD(v213) = *MEMORY[0x1E69E93E8];
  v204 = (v100 + 8);
  v215 = v99 + 8;
  for (i = (v98 + 8); ; (*i)(v176, v177))
  {
    if (v105 == v222)
    {
      v182 = v0[47];
      v183 = v0[48];
      v184 = v0[46];
      v223 = v0[45];
      v186 = v0[42];
      v185 = v0[43];
      v224 = v0[40];
      v188 = v0[36];
      v187 = v0[37];
      v189 = v0[35];
      v227 = v0[34];
      v229 = v0[31];
      v231 = v0[30];
      v236 = v0[29];
      v242 = v0[26];

      [v232 closeFile];

      sub_1C44251D0(v190, v191, v192, v193, v194, v195, v196, v197, v200, v201, v202, v204, v205, v206, v208, v210, 0x80000001C4FAAAD0, v211, v213, v214, 0x80000001C4FAAAF0, v215, v216);

      (*(v188 + 8))(v187, v189);
      v209(v183, v185);
      sub_1C497FC6C(v186);

      v198 = v0[1];
      v199 = *MEMORY[0x1E69E9840];

      return v198(v203, v207);
    }

    if (v105 >= *(v221 + 16))
    {
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }

    v108 = v0[34];
    v109 = v0[31];
    v110 = *(v220 + 8 * v105);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4F008E8();
    sub_1C4F008D8();
    sub_1C4F00898();
    v111 = sub_1C4F008D8();
    v112 = sub_1C4F01E28();
    if (sub_1C4F01F28())
    {
      v113 = v0[31];
      v114 = swift_slowAlloc();
      *v114 = 0;
      v115 = sub_1C4F008A8();
      _os_signpost_emit_with_name_impl(&dword_1C43F8000, v111, v112, v115, "Vector Search Benchmark", "", v114, 2u);
      sub_1C43FBE2C();
    }

    v116 = v0[37];
    v118 = v0[30];
    v117 = v0[31];
    v119 = v0[27];

    (*v219)(v118, v117, v119);
    v120 = sub_1C4F00948();
    v121 = *(v120 + 48);
    v122 = *(v120 + 52);
    swift_allocObject();
    sub_1C4F00938();
    v241 = sub_1C4EFF338();
    v123 = v0[34];
    v124 = v0[29];
    v125 = sub_1C4F008D8();
    sub_1C4F00928();
    v126 = sub_1C4F01E18();
    if (sub_1C4F01F28())
    {
      v127 = v0[26];
      v128 = v0[24];

      sub_1C4F00958();

      v129 = (*v214)(v127, v128);
      v130 = "[Error] Interval already ended";
      if (v129 != HIDWORD(v213))
      {
        (*v204)(v0[26], v0[24]);
        v130 = "";
      }

      v131 = v0[29];
      v132 = swift_slowAlloc();
      *v132 = 0;
      v133 = sub_1C4F008A8();
      _os_signpost_emit_with_name_impl(&dword_1C43F8000, v125, v126, v133, "Vector Search Benchmark", v130, v132, 2u);
      sub_1C43FBE2C();
    }

    v134 = v0[29];
    v135 = v0[27];

    v136 = *v107;
    (*v107)(v134, v135);
    v137 = *(v217 + 32);
    v235 = v105;
    v226 = v136;
    if (v137)
    {
      break;
    }

    sub_1C440E464();
    sub_1C4F02248();

    v0[18] = v105;
    v152 = sub_1C4F02858();
    MEMORY[0x1C6940010](v152);

    MEMORY[0x1C6940010](0x7972657571206874, 0xE90000000000000ALL);
    v153 = v241;
    v154 = *(v241 + 16);
    if (v154)
    {
      sub_1C442BC88(MEMORY[0x1E69E7CC0]);
      v155 = 0;
      v145 = v243;
      v156 = v241 + 40;
      while (v155 < *(v153 + 16))
      {
        sub_1C441CB38();
        sub_1C4F02248();
        v0[14] = 0;
        v0[15] = 0;
        sub_1C441E478();
        sub_1C4409E30();
        if (!v0[5])
        {
          goto LABEL_71;
        }

        sub_1C456902C(&qword_1EC0BC780, &unk_1C4F29270);
        v157 = MEMORY[0x1E69E7068];
        sub_1C4F02438();
        sub_1C440962C(v0 + 2);
        sub_1C443517C();
        sub_1C4F01A98();

        v158 = v0[14];
        v159 = v0[15];
        sub_1C4414CA8();
        if (v150)
        {
          sub_1C442FED0();
          v145 = v243;
        }

        ++v155;
        *(v145 + 16) = v157;
        v160 = v145 + 16 * v153;
        *(v160 + 32) = v158;
        *(v160 + 40) = v159;
        v156 += 16;
        v153 = v241;
        if (v154 == v155)
        {
          goto LABEL_60;
        }
      }

      goto LABEL_66;
    }

    v145 = MEMORY[0x1E69E7CC0];
LABEL_60:
    v169 = v0[40];
    v170 = v0[38];
    v0[19] = v145;
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C443D694();
    sub_1C4400714();
    v171 = sub_1C4F01048();
    v163 = v172;

    MEMORY[0x1C6940010](v171, v163);

    v173 = sub_1C4400714();
    MEMORY[0x1C6940010](v173);
    sub_1C4F01178();
    sub_1C441BA54();
    v174 = sub_1C4433550();
    result = v175(v174);
    if (v163 >> 60 == 15)
    {
      goto LABEL_72;
    }

LABEL_61:
    v105 = v235 + 1;
    v176 = v0[34];
    v178 = v0[31];
    v177 = v0[32];
    v179 = v0[27];

    v180 = sub_1C4EF9A38();
    sub_1C441DFEC(v145, v163);
    [v232 writeData_];

    v181 = v179;
    v107 = v215;
    v226(v178, v181);
  }

  sub_1C440E464();
  sub_1C4F02248();

  if (v105 >= *(v137 + 16))
  {
    goto LABEL_69;
  }

  v138 = v137 + 16 * v105;
  v139 = *(v138 + 32);
  v140 = *(v138 + 40);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v139, v140);

  v141 = sub_1C4400714();
  MEMORY[0x1C6940010](v141);
  v142 = v241;
  v143 = *(v241 + 16);
  if (v143)
  {
    sub_1C442BC88(MEMORY[0x1E69E7CC0]);
    v144 = 0;
    v145 = v243;
    v146 = v241 + 40;
    while (v144 < *(v142 + 16))
    {
      sub_1C441CB38();
      sub_1C4F02248();
      v0[16] = 0;
      v0[17] = 0;
      sub_1C441E478();
      sub_1C4409E30();
      if (!v0[10])
      {
        goto LABEL_70;
      }

      sub_1C456902C(&qword_1EC0BC780, &unk_1C4F29270);
      v147 = MEMORY[0x1E69E7068];
      sub_1C4F02438();
      sub_1C440962C(v0 + 7);
      sub_1C443517C();
      sub_1C4F01A98();

      v149 = v0[16];
      v148 = v0[17];
      sub_1C4414CA8();
      if (v150)
      {
        sub_1C442FED0();
        v145 = v243;
      }

      ++v144;
      *(v145 + 16) = v147;
      v151 = v145 + 16 * v142;
      *(v151 + 32) = v149;
      *(v151 + 40) = v148;
      v146 += 16;
      v142 = v241;
      if (v143 == v144)
      {
        goto LABEL_57;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v145 = MEMORY[0x1E69E7CC0];
LABEL_57:
  v161 = v0[40];
  v162 = v0[38];
  v0[20] = v145;
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C443D694();
  sub_1C4400714();
  v163 = sub_1C4F01048();
  v165 = v164;

  MEMORY[0x1C6940010](v163, v165);

  v166 = sub_1C4400714();
  MEMORY[0x1C6940010](v166);
  sub_1C4F01178();
  sub_1C441BA54();
  v167 = sub_1C4433550();
  result = v168(v167);
  if (v163 >> 60 != 15)
  {
    goto LABEL_61;
  }

  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
  return result;
}

id sub_1C497D440()
{
  v0 = sub_1C4F01108();

  v1 = [swift_getObjCClassFromMetadata() fileHandleForWritingAtPath_];

  return v1;
}

uint64_t sub_1C497D52C()
{
  v0 = sub_1C4F025D8();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C497D580(char a1)
{
  result = 25188;
  switch(a1)
  {
    case 1:
      result = 0x656C626174;
      break;
    case 2:
      result = 0x7364726F77;
      break;
    case 3:
      result = 0x73656972657571;
      break;
    case 4:
      result = 1701080941;
      break;
    case 5:
      result = 0x63697274656DLL;
      break;
    case 6:
      result = 0x6C437265746C6966;
      break;
    case 7:
      result = 0x756C6F436E696F6ALL;
      break;
    case 8:
      result = 0x6D756C6F4379656BLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C497D66C(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_1C4F01138();
  v7 = v6;
  v3[4] = v6;
  v8 = a3;
  v9 = swift_task_alloc();
  v3[5] = v9;
  *v9 = v3;
  v9[1] = sub_1C497D73C;

  return InternalXPC.Server.vectorSearchBenchmark(with:)(v5, v7);
}

uint64_t sub_1C497D73C()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 16);
  v7 = *v1;

  if (v2)
  {
    v8 = sub_1C4EF9798();

    v9 = 0;
    v10 = v8;
  }

  else
  {
    v9 = sub_1C4F01108();

    v8 = 0;
    v10 = v9;
  }

  v11 = *(v3 + 24);
  v11[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v7 + 8);

  return v12();
}

uint64_t sub_1C497D910@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C497D52C();
  *a2 = result;
  return result;
}

uint64_t sub_1C497D940@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C497D580(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C497D988@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C497D578();
  *a1 = result;
  return result;
}

uint64_t sub_1C497D9B0(uint64_t a1)
{
  v2 = sub_1C497FD34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C497D9EC(uint64_t a1)
{
  v2 = sub_1C497FD34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VectorBenchmarkConfig.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v154 = a2;
  v164 = *MEMORY[0x1E69E9840];
  v3 = sub_1C4EFFC98();
  v4 = sub_1C43FCDF8(v3);
  v158 = v5;
  v159 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v155 = v9 - v8;
  v10 = sub_1C4EFCEB8();
  v11 = sub_1C43FCDF8(v10);
  v156 = v12;
  v157 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  v17 = v16 - v15;
  v18 = sub_1C456902C(&qword_1EC0C0210, &unk_1C4F3E328);
  v19 = sub_1C43FCDF8(v18);
  v160 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v24 = &v139 - v23;
  v25 = type metadata accessor for VectorBenchmarkConfig();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBCC4();
  v29 = (v28 - v27);
  v30 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C497FD34();
  v31 = v161;
  sub_1C4F02BC8();
  if (v31)
  {
    result = sub_1C440962C(a1);
LABEL_4:
    v35 = *MEMORY[0x1E69E9840];
    return result;
  }

  v152 = v17;
  v153 = v29;
  v161 = a1;
  LOBYTE(__src) = 0;
  v32 = sub_1C4F02678();
  v33 = v18;
  v37 = v36;
  v38 = v153;
  *v153 = v32;
  v38[1] = v36;
  LOBYTE(__src) = 1;
  v39 = sub_1C4F02678();
  v148 = v25;
  v38[2] = v39;
  v38[3] = v40;
  LOBYTE(__src) = 2;
  v41 = sub_1C4F026F8();
  v145 = 0;
  if (v41)
  {
    sub_1C456902C(&qword_1EC0B9498, &qword_1C4F0F020);
    LOBYTE(v162) = 2;
    sub_1C45A3198();
    sub_1C4F026C8();
    v150 = 0;
    v42 = __src;
  }

  else
  {
    v42 = 0;
  }

  v153[4] = v42;
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  LOBYTE(v162) = 3;
  sub_1C443D054(&qword_1EDDFEA58, &unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C440AD20();
  sub_1C4F026C8();
  v150 = 0;
  v141 = v37;
  v140 = v42;
  v143 = v24;
  v142 = v33;
  v43 = __src;
  v44 = *(__src + 16);
  v45 = MEMORY[0x1E69E7CC0];
  v149 = __src;
  if (v44)
  {
    v46 = MEMORY[0x1E69E7CC0];
    *&__src = MEMORY[0x1E69E7CC0];
    sub_1C459E8A8(0, v44, 0);
    v47 = 0;
    v48 = __src;
    v49 = (v43 + 40);
    while (1)
    {
      if (v47 >= *(v149 + 16))
      {
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
      }

      v51 = *(v49 - 1);
      v50 = *v49;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v52 = sub_1C4EF99C8();
      if (v53 >> 60 == 15)
      {
        break;
      }

      v54 = v52;
      v55 = v53;

      *&__src = v48;
      v43 = *(v48 + 2);
      v56 = *(v48 + 3);
      v57 = v43 + 1;
      if (v43 >= v56 >> 1)
      {
        sub_1C459E8A8((v56 > 1), v43 + 1, 1);
        v57 = v43 + 1;
        v48 = __src;
      }

      ++v47;
      *(v48 + 2) = v57;
      v58 = &v48[16 * v43];
      *(v58 + 4) = v54;
      *(v58 + 5) = v55;
      v49 += 2;
      if (v44 == v47)
      {
        v147 = v48;
        v45 = v46;
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_93;
  }

  v57 = *(MEMORY[0x1E69E7CC0] + 16);
  v147 = MEMORY[0x1E69E7CC0];
  v59 = MEMORY[0x1E69E7CC0];
  if (v57)
  {
LABEL_17:
    v151 = v57;
    v162 = v45;
    sub_1C459E868();
    v60 = 0;
    v59 = v162;
    v61 = v147;
    v62 = (v147 + 40);
    while (2)
    {
      if (v60 < *(v61 + 2))
      {
        ++v60;
        v63 = *(v62 - 1);
        v64 = *v62;
        switch(*v62 >> 62)
        {
          case 1:
            v146 = v60;
            v79 = v63 >> 32;
            if (v63 >> 32 < v63)
            {
              goto LABEL_88;
            }

            v80 = sub_1C43FD2BC();
            sub_1C44344B8(v80, v81);
            v82 = sub_1C4EF9538();
            if (v82)
            {
              v83 = sub_1C4EF9568();
              if (__OFSUB__(v63, v83))
              {
                goto LABEL_91;
              }

              v84 = v63;
              v82 += v63 - v83;
            }

            else
            {
              v84 = v63;
            }

            v92 = sub_1C4EF9558();
            if (!v82)
            {
              goto LABEL_45;
            }

            v93 = v79 - v84;
            if (v92 < v79 - v84)
            {
              v93 = v92;
            }

            if ((v93 + 3) > 6)
            {
              v144 = v82;
              v99 = v93 / 4;
              v97 = 4 * (v93 / 4);
              if (v93 <= 3)
              {
                v67 = MEMORY[0x1E69E7CC0];
              }

              else
              {
                sub_1C456902C(&qword_1EC0B8998, &qword_1C4F0DDB0);
                v67 = swift_allocObject();
                v100 = j__malloc_size(v67);
                v67[2] = v99;
                v67[3] = 2 * ((v100 - 32) / 4);
              }

              v60 = v146;
              v101 = v67 + 4;
              v102 = v144;
LABEL_54:
              memcpy(v101, v102, v97);
              v103 = sub_1C43FD2BC();
              sub_1C4434000(v103, v104);
LABEL_55:
              v61 = v147;
            }

            else
            {
LABEL_45:
              v94 = sub_1C43FD2BC();
              sub_1C4434000(v94, v95);
              v67 = MEMORY[0x1E69E7CC0];
              v60 = v146;
              v61 = v147;
            }

LABEL_56:
            v162 = v59;
            v105 = *(v59 + 16);
            v106 = v151;
            if (v105 >= *(v59 + 24) >> 1)
            {
              sub_1C459E868();
              v106 = v151;
              v61 = v147;
              v59 = v162;
            }

            *(v59 + 16) = v105 + 1;
            *(v59 + 8 * v105 + 32) = v67;
            v62 += 4;
            if (v106 == v60)
            {
              goto LABEL_59;
            }

            continue;
          case 2:
            v69 = v60;
            v70 = *(v63 + 16);
            v71 = *(v63 + 24);
            v72 = sub_1C43FD2BC();
            sub_1C44344B8(v72, v73);
            v74 = sub_1C4EF9538();
            if (v74)
            {
              v75 = v74;
              v76 = sub_1C4EF9568();
              if (__OFSUB__(v70, v76))
              {
                goto LABEL_90;
              }

              v146 = (v70 - v76 + v75);
            }

            else
            {
              v146 = 0;
            }

            v85 = v71 - v70;
            if (__OFSUB__(v71, v70))
            {
              goto LABEL_89;
            }

            v86 = sub_1C4EF9558();
            v60 = v69;
            if (!v146 || (v86 >= v85 ? (v87 = v85) : (v87 = v86), (v87 + 3) <= 6))
            {
              v88 = sub_1C43FD2BC();
              sub_1C4434000(v88, v89);
              v67 = MEMORY[0x1E69E7CC0];
              goto LABEL_55;
            }

            v96 = v87 / 4;
            v97 = 4 * (v87 / 4);
            if (v87 <= 3)
            {
              v67 = MEMORY[0x1E69E7CC0];
            }

            else
            {
              sub_1C456902C(&qword_1EC0B8998, &qword_1C4F0DDB0);
              v67 = swift_allocObject();
              v98 = j__malloc_size(v67);
              v67[2] = v96;
              v67[3] = 2 * ((v98 - 32) / 4);
            }

            v60 = v69;
            v101 = v67 + 4;
            v102 = v146;
            goto LABEL_54;
          case 3:
            v77 = sub_1C43FD2BC();
            sub_1C4434000(v77, v78);
            v67 = MEMORY[0x1E69E7CC0];
            goto LABEL_56;
          default:
            v65 = v60;
            *&__src = *(v62 - 1);
            WORD4(__src) = v64;
            BYTE10(__src) = BYTE2(v64);
            BYTE11(__src) = BYTE3(v64);
            BYTE12(__src) = BYTE4(v64);
            v66 = (v64 >> 50) & 0x3F;
            BYTE13(__src) = BYTE5(v64);
            if (v66)
            {
              sub_1C456902C(&qword_1EC0B8998, &qword_1C4F0DDB0);
              v67 = swift_allocObject();
              v68 = j__malloc_size(v67);
              v67[2] = v66;
              v67[3] = 2 * ((v68 - 32) / 4);
              v61 = v147;
              memcpy(v67 + 4, &__src, 4 * v66);
            }

            else
            {
              v67 = MEMORY[0x1E69E7CC0];
            }

            v90 = sub_1C43FD2BC();
            sub_1C4434000(v90, v91);
            v60 = v65;
            goto LABEL_56;
        }
      }

      break;
    }

    __break(1u);
    goto LABEL_83;
  }

LABEL_59:
  v107 = v153;
  v153[5] = v59;
  LOBYTE(__src) = 4;
  sub_1C441337C();
  sub_1C497FD88(v108, v109);
  v110 = v152;
  v111 = v157;
  v112 = v142;
  v61 = v143;
  v113 = v150;
  sub_1C4F026C8();
  if (v113)
  {
    v150 = v113;
    (*(v160 + 8))(v61, v112);

    sub_1C442CCDC();
    v116 = v145;
    sub_1C440962C(v161);

    v117 = v153;
    if (!v116)
    {
      v119 = v153[3];
    }

    v118 = *(v117 + 4);

    v120 = *(v117 + 5);

    v121 = v148;
    if (v112)
    {
      result = (*(v156 + 8))(&v117[v148[8]], v157);
    }

    if (v107)
    {
      result = (*(v158 + 8))(&v117[v121[9]], v159);
      if (!v110)
      {
        goto LABEL_68;
      }
    }

    else if (!v110)
    {
LABEL_68:
      if (!v61)
      {
        goto LABEL_4;
      }

LABEL_72:
      v123 = *&v117[v121[11] + 8];

      goto LABEL_4;
    }

    v122 = *&v117[v121[10] + 8];

    if (!v61)
    {
      goto LABEL_4;
    }

    goto LABEL_72;
  }

  v151 = v59;
  v62 = v148;
  (*(v156 + 32))(v107 + v148[8], v110, v111);
  LOBYTE(__src) = 5;
  sub_1C497FD88(&qword_1EC0C0228, MEMORY[0x1E69A9B68]);
  v114 = v155;
  v115 = v159;
  sub_1C4F026C8();
  v150 = 0;
  v59 = v112;
  (*(v158 + 32))(v107 + v62[9], v114, v115);
  if (sub_1C43FC570())
  {
    sub_1C456902C(&qword_1EC0C2BD0, &qword_1C4F0FF50);
    LOBYTE(v162) = 6;
    sub_1C4419ACC();
    sub_1C443D054(v124, &qword_1EC0C2BD0, &qword_1C4F0FF50);
    sub_1C440AD20();
    sub_1C4405DB0();
    v150 = 0;
    v125 = __src;
  }

  else
  {
    v125 = 0uLL;
  }

  *(v153 + v62[10]) = v125;
  if (sub_1C43FC570())
  {
    sub_1C456902C(&qword_1EC0C2BD0, &qword_1C4F0FF50);
    LOBYTE(v162) = 7;
    sub_1C4419ACC();
    sub_1C443D054(v126, &qword_1EC0C2BD0, &qword_1C4F0FF50);
    sub_1C440AD20();
    sub_1C4405DB0();
    v150 = 0;
    v127 = __src;
  }

  else
  {
    v127 = 0uLL;
  }

  *(v153 + v62[11]) = v127;
  v128 = sub_1C43FC570();
  v129 = 0uLL;
  if (v128)
  {
    sub_1C456902C(&qword_1EC0C2BD0, &qword_1C4F0FF50);
    LOBYTE(v162) = 8;
    sub_1C4419ACC();
    sub_1C443D054(v130, &qword_1EC0C2BD0, &qword_1C4F0FF50);
    sub_1C440AD20();
    sub_1C4405DB0();
    v150 = 0;
LABEL_83:
    v129 = __src;
  }

  v131 = v160;
  v132 = v161;
  v133 = v154;
  *(v153 + v62[12]) = v129;
  if (!v140 || (v43 = *(v140 + 16), v43 == *(v151 + 2)))
  {
    (*(v131 + 8))(v61, v59);

    v134 = v153;
    sub_1C497FDD0(v153, v133);
    sub_1C440962C(v132);
    result = sub_1C497FC6C(v134);
    goto LABEL_4;
  }

LABEL_93:
  sub_1C440E464();
  v136 = v135;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD000000000000011, 0x80000001C4FAAB50);
  v162 = v43;
  v137 = sub_1C4F02858();
  MEMORY[0x1C6940010](v137);

  MEMORY[0x1C6940010](0xD000000000000022, 0x80000001C4FAAB70);
  v162 = *(v136 + 16);
  v138 = sub_1C4F02858();
  MEMORY[0x1C6940010](v138);

  result = sub_1C4F024A8();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for VectorBenchmarkConfig()
{
  result = qword_1EC0C0238;
  if (!qword_1EC0C0238)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C497EB90()
{
  sub_1C4408C40();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1C43FF2B4(v1, v2, v3, v4);
  v5 = sub_1C44182F4();
  sub_1C4411F38(v5);
  sub_1C43FDA58(v6 / 8);
  return v0;
}

uint64_t sub_1C497EDBC()
{
  sub_1C4408C40();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1C456902C(&qword_1EC0B8998, &qword_1C4F0DDB0);
  v1 = sub_1C44182F4();
  sub_1C4411F38(v1);
  sub_1C43FDA58(v2 / 4);
  return v0;
}

uint64_t sub_1C497F814()
{
  sub_1C4408C40();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1C456902C(&qword_1EC0C0390, &qword_1C4F3E738);
  v1 = sub_1C442E04C();
  sub_1C4411F38(v1);
  sub_1C43FDA58(v2 / 48);
  return v0;
}

uint64_t sub_1C497F8CC()
{
  sub_1C4408C40();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1C456902C(&qword_1EC0B8AC0, &qword_1C4F0DEF0);
  v1 = sub_1C442E04C();
  sub_1C4411F38(v1);
  sub_1C43FDA58(v2 / 56);
  return v0;
}

uint64_t sub_1C497F95C()
{
  sub_1C4408C40();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
  v3 = sub_1C44182F4();
  sub_1C4411F38(v3);
  *(v0 + 16) = v2;
  *(v0 + 24) = (2 * (v4 / 8)) | 1;
  return v0;
}

id sub_1C497FB50(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v10 = sub_1C4EF9A38();
  sub_1C4434000(a2, a3);
  v11 = [a5 createFileAtPath:a1 contents:v10 attributes:a4];

  return v11;
}

unint64_t sub_1C497FBD4()
{
  result = qword_1EC0C01F0;
  if (!qword_1EC0C01F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC0C01F0);
  }

  return result;
}

unint64_t sub_1C497FC18()
{
  result = qword_1EC0C01F8;
  if (!qword_1EC0C01F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C01F8);
  }

  return result;
}

uint64_t sub_1C497FC6C(uint64_t a1)
{
  v2 = type metadata accessor for VectorBenchmarkConfig();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_1C497FCC8(void *a1, uint64_t a2, char *__src, uint64_t a4)
{
  v4 = __src;
  if (a4 && a2)
  {
    if (a4 >= a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = a4;
    }

    memcpy(a1, __src, 4 * v5);
    v4 += 4 * v5;
  }

  return v4;
}

unint64_t sub_1C497FD34()
{
  result = qword_1EC0C0218;
  if (!qword_1EC0C0218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0218);
  }

  return result;
}

uint64_t sub_1C497FD88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C497FDD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VectorBenchmarkConfig();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1C497FE6C()
{
  sub_1C497FFA8(319, &qword_1EDDFEA50, &unk_1EC0B9620, &unk_1C4F0E870, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1C497FFA8(319, &qword_1EC0C0248, &qword_1EC0B8A90, &unk_1C4F0DEC0, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1C4EFCEB8();
      if (v2 <= 0x3F)
      {
        sub_1C4EFFC98();
        if (v3 <= 0x3F)
        {
          sub_1C4700EB8();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C497FFA8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1C4572308(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for VectorBenchmarkConfig.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C49800EC()
{
  result = qword_1EC0C0250;
  if (!qword_1EC0C0250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0250);
  }

  return result;
}

unint64_t sub_1C4980144()
{
  result = qword_1EC0C0258;
  if (!qword_1EC0C0258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0258);
  }

  return result;
}

unint64_t sub_1C498019C()
{
  result = qword_1EC0C0260;
  if (!qword_1EC0C0260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0260);
  }

  return result;
}

uint64_t sub_1C49801F0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1C44A7DA0;

  return sub_1C497D66C(v2, v3, v4);
}

uint64_t InternalXPC.Server.resolveEntity(with:enableSessionLogging:configName:encodedConfig:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  *(v6 + 72) = a6;
  *(v6 + 80) = ObjectType;
  *(v6 + 56) = a4;
  *(v6 + 64) = a5;
  *(v6 + 176) = a2;
  *(v6 + 40) = a1;
  *(v6 + 48) = a3;
  v14 = *(*(sub_1C456902C(&unk_1EC0BBFC0, &qword_1C4F22E18) - 8) + 64) + 15;
  *(v6 + 88) = swift_task_alloc();
  v15 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  *(v6 + 96) = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  *(v6 + 104) = swift_task_alloc();
  v17 = sub_1C4EFF7A8();
  *(v6 + 112) = v17;
  v18 = *(v17 - 8);
  *(v6 + 120) = v18;
  v19 = *(v18 + 64) + 15;
  *(v6 + 128) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4980424, 0, 0);
}

uint64_t sub_1C4980424()
{
  v1 = *(v0 + 80);
  sub_1C498099C(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 128));
  if (qword_1EDDEBB80 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 104);
  v3 = sub_1C442B738(*(v0 + 96), qword_1EDDEBB90);
  swift_beginAccess();
  sub_1C4466EEC(v3, v2);
  v4 = type metadata accessor for Configuration();
  result = sub_1C44157D4(v2, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    if (qword_1EDDFF2A0 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 104);
    v7 = sub_1C44E7FAC();
    *(v0 + 136) = v7;
    v9 = *(v0 + 120);
    v8 = *(v0 + 128);
    v10 = *(v0 + 112);
    v11 = v7;
    v12 = *(v0 + 88);
    v13 = *(v0 + 176);
    sub_1C4467948(*(v0 + 104));
    sub_1C4EFFB58();
    v14 = *(v11 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService);
    (*(v9 + 16))(v12, v8, v10);
    sub_1C440BAA8(v12, 0, 1, v10);
    v15 = v14;
    *(v0 + 144) = sub_1C4EFFB48();
    v16 = *(MEMORY[0x1E69A9B08] + 4);
    v19 = (*MEMORY[0x1E69A9B08] + MEMORY[0x1E69A9B08]);
    v17 = swift_task_alloc();
    *(v0 + 152) = v17;
    *v17 = v0;
    v17[1] = sub_1C498070C;
    v18 = *(v0 + 40);

    return v19(v18);
  }

  return result;
}

uint64_t sub_1C498070C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 152);
  v6 = *v2;
  sub_1C43FBDAC();
  *v7 = v6;
  *(v4 + 160) = v1;

  if (v1)
  {
    v8 = sub_1C49808E8;
  }

  else
  {
    *(v4 + 168) = a1;
    v8 = sub_1C498082C;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1C498082C()
{
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[11];

  (*(v4 + 8))(v3, v5);

  v8 = v0[1];
  v9 = v0[21];

  return v8(v9);
}

uint64_t sub_1C49808E8()
{
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[14];

  (*(v4 + 8))(v3, v5);
  v6 = v0[20];
  v7 = v0[16];
  v8 = v0[13];
  v9 = v0[11];

  v10 = v0[1];

  return v10();
}

void sub_1C498099C(char *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, char *a5@<X8>)
{
  v98 = a5;
  v101 = a1;
  v102 = a4;
  v97 = a3;
  v6 = sub_1C4EFF4C8();
  v100 = *(v6 - 8);
  v7 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C4F01188();
  v96 = *(v10 - 8);
  v11 = *(v96 + 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C456902C(&unk_1EC0BBFC0, &qword_1C4F22E18);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v94 - v19;
  v21 = sub_1C4EFF7A8();
  v103 = *(v21 - 8);
  v22 = *(v103 + 64);
  v23 = MEMORY[0x1EEE9AC00](v21);
  MEMORY[0x1EEE9AC00](v23);
  if (a2)
  {
    v26 = &v94 - v24;
    v27 = v101;
    sub_1C4EFF798();
    if (sub_1C44157D4(v20, 1, v21) == 1)
    {
      sub_1C4981C2C(v20);
      if (qword_1EDDFA678 != -1)
      {
        swift_once();
      }

      v28 = sub_1C4F00978();
      sub_1C442B738(v28, qword_1EDE2DCD8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v29 = sub_1C4F00968();
      v30 = sub_1C4F01CD8();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v104 = v32;
        *v31 = 136315138;
        *(v31 + 4) = sub_1C441D828(v27, a2, &v104);
        _os_log_impl(&dword_1C43F8000, v29, v30, "Failed to load EntityResolutionConfig with config name: %s", v31, 0xCu);
        sub_1C440962C(v32);
        MEMORY[0x1C6942830](v32, -1, -1);
        MEMORY[0x1C6942830](v31, -1, -1);
      }

      v33 = sub_1C4EFF588();
      sub_1C4981C94(&qword_1EC0BBF30, MEMORY[0x1E69A9940]);
      swift_allocError();
      (*(*(v33 - 8) + 104))(v34, *MEMORY[0x1E69A9930], v33);
      swift_willThrow();
    }

    else
    {
      v47 = *(v103 + 32);
      v47(v26, v20, v21);
      if (qword_1EDDFA678 != -1)
      {
        swift_once();
      }

      v48 = sub_1C4F00978();
      sub_1C442B738(v48, qword_1EDE2DCD8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v49 = sub_1C4F00968();
      v50 = sub_1C4F01CB8();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v53 = v27;
        v54 = v52;
        v104 = v52;
        *v51 = 136315138;
        *(v51 + 4) = sub_1C441D828(v53, a2, &v104);
        _os_log_impl(&dword_1C43F8000, v49, v50, "Using EntityResolutionConfig with config name: %s", v51, 0xCu);
        sub_1C440962C(v54);
        MEMORY[0x1C6942830](v54, -1, -1);
        MEMORY[0x1C6942830](v51, -1, -1);
      }

      v47(v98, v26, v21);
    }
  }

  else
  {
    v36 = v96;
    v35 = v97;
    v101 = v9;
    v37 = v100;
    v38 = v6;
    v39 = v21;
    if (v102)
    {
      sub_1C4F01178();
      v40 = sub_1C4F01148();
      v42 = v41;
      v36[1](v13, v10);
      if (v42 >> 60 == 15)
      {
        v43 = sub_1C4EFF588();
        sub_1C4981C94(&qword_1EC0BBF30, MEMORY[0x1E69A9940]);
        v44 = swift_allocError();
        (*(*(v43 - 8) + 104))(v45, *MEMORY[0x1E69A9930], v43);
        swift_willThrow();
        v46 = v35;
      }

      else
      {
        if (qword_1EDDFA678 != -1)
        {
          swift_once();
        }

        v72 = sub_1C4F00978();
        sub_1C442B738(v72, qword_1EDE2DCD8);
        v73 = v102;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v74 = sub_1C4F00968();
        v75 = sub_1C4F01CC8();

        v46 = v35;
        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          v104 = v77;
          *v76 = 136315138;
          *(v76 + 4) = sub_1C441D828(v46, v73, &v104);
          _os_log_impl(&dword_1C43F8000, v74, v75, "Using config from file:\n%s", v76, 0xCu);
          sub_1C440962C(v77);
          MEMORY[0x1C6942830](v77, -1, -1);
          MEMORY[0x1C6942830](v76, -1, -1);
        }

        v78 = v99;
        v79 = sub_1C4EF9348();
        v80 = *(v79 + 48);
        v81 = *(v79 + 52);
        swift_allocObject();
        sub_1C4EF9338();
        sub_1C4981C94(&qword_1EC0C04E0, MEMORY[0x1E69A99C8]);
        sub_1C4EF9328();
        if (!v78)
        {

          sub_1C441DFEC(v40, v42);
          return;
        }

        sub_1C441DFEC(v40, v42);
        v44 = v78;
      }

      v82 = v102;
      if (qword_1EDDFA678 != -1)
      {
        swift_once();
      }

      v83 = sub_1C4F00978();
      sub_1C442B738(v83, qword_1EDE2DCD8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v84 = v44;
      v85 = sub_1C4F00968();
      v86 = sub_1C4F01CD8();

      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        v104 = v88;
        *v87 = 136315394;
        *(v87 + 4) = sub_1C441D828(v46, v82, &v104);
        *(v87 + 12) = 2080;
        swift_getErrorValue();
        v89 = sub_1C4F02A38();
        v91 = sub_1C441D828(v89, v90, &v104);

        *(v87 + 14) = v91;
        _os_log_impl(&dword_1C43F8000, v85, v86, "Failed to decode config from \n%s\n with error:\n %s", v87, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1C6942830](v88, -1, -1);
        MEMORY[0x1C6942830](v87, -1, -1);
      }

      v92 = sub_1C4EFF588();
      sub_1C4981C94(&qword_1EC0BBF30, MEMORY[0x1E69A9940]);
      swift_allocError();
      (*(*(v92 - 8) + 104))(v93, *MEMORY[0x1E69A9930], v92);
      swift_willThrow();
    }

    else
    {
      v102 = v25;
      v55 = *(v100 + 104);
      v56 = v101;
      LODWORD(v97) = *MEMORY[0x1E69A9918];
      v57 = v38;
      v96 = v55;
      v55(v101);
      sub_1C4EFF4B8();
      v58 = *(v37 + 8);
      v100 = v37 + 8;
      v95 = v58;
      v58(v56, v57);
      sub_1C4EFF798();

      if (sub_1C44157D4(v18, 1, v39) == 1)
      {
        sub_1C4981C2C(v18);
        sub_1C4F024A8();
        __break(1u);
      }

      else
      {
        v59 = *(v103 + 32);
        v103 += 32;
        v59(v102, v18, v39);
        if (qword_1EDDFA678 != -1)
        {
          swift_once();
        }

        v60 = sub_1C4F00978();
        sub_1C442B738(v60, qword_1EDE2DCD8);
        v61 = sub_1C4F00968();
        v62 = sub_1C4F01CB8();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = v57;
          v64 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          v104 = v65;
          *v64 = 136315138;
          v66 = v101;
          (v96)(v101, v97, v63);
          v67 = sub_1C4EFF4B8();
          v97 = v39;
          v68 = v59;
          v70 = v69;
          v95(v66, v63);
          v71 = sub_1C441D828(v67, v70, &v104);
          v59 = v68;
          v39 = v97;

          *(v64 + 4) = v71;
          _os_log_impl(&dword_1C43F8000, v61, v62, "Using config with name: %s.", v64, 0xCu);
          sub_1C440962C(v65);
          MEMORY[0x1C6942830](v65, -1, -1);
          MEMORY[0x1C6942830](v64, -1, -1);
        }

        v59(v98, v102, v39);
      }
    }
  }
}