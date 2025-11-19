uint64_t sub_1D23AC2D8()
{
  v2 = *v1;
  *(*v1 + 1624) = v0;

  v3 = *(v2 + 1368);
  v4 = *(v2 + 1360);
  if (v0)
  {
    v5 = sub_1D23B19D8;
  }

  else
  {
    v5 = sub_1D23AC414;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D23AC414()
{
  if (*(v0 + 476) == 1)
  {
    *(v0 + 477) = 0;
    v1 = *(v0 + 208);
    v2 = *(v0 + 216);
    __swift_project_boxed_opaque_existential_1((v0 + 184), v1);
    v34 = (*(v2 + 64) + **(v2 + 64));
    v3 = swift_task_alloc();
    *(v0 + 1632) = v3;
    *v3 = v0;
    v3[1] = sub_1D23AC860;

    return v34(v1, v2);
  }

  else
  {
    *(v0 + 478) = 0;
    v5 = *(v0 + 1576);
    v6 = *(v0 + 1048);
    v7 = *(v0 + 952);
    v8 = *(v0 + 944);
    v25 = *(v0 + 960);
    v9 = *(v0 + 760);
    v27 = v6;
    v28 = v9;
    v30 = *(v0 + 1552);
    v31 = *(v0 + 752);
    v10 = *(v0 + 736);
    v11 = *(v0 + 728);
    v26 = v11;
    v12 = *(v0 + 688);
    v13 = *(v0 + 656);
    v35 = *(v0 + 208);
    v33 = *(v0 + 216);
    __swift_project_boxed_opaque_existential_1((v0 + 184), v35);
    v5(v6, v12, v8);
    v29 = *(v10 + 16);
    v29(v9, v13, v11);
    v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v15 = (v25 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
    v16 = *(v10 + 80);
    v17 = swift_allocObject();
    *(v0 + 1648) = v17;
    (*(v7 + 32))(v17 + v14, v27, v8);
    *(v17 + v15) = v30;
    v18 = *(v10 + 32);
    v18(v17 + ((v16 + v15 + 8) & ~v16), v28, v26);
    v29(v31, v13, v26);
    v19 = swift_allocObject();
    *(v0 + 1656) = v19;
    v18(v19 + ((v16 + 16) & ~v16), v31, v26);
    v20 = *(v0 + 208);
    v21 = *(v0 + 216);
    __swift_project_boxed_opaque_existential_1((v0 + 184), v20);
    v22 = (*(v21 + 24))(v20, v21);
    v32 = (*(v33 + 88) + **(v33 + 88));
    v23 = swift_task_alloc();
    *(v0 + 1664) = v23;
    *v23 = v0;
    v23[1] = sub_1D23ACCD4;
    v24 = *(v0 + 1568);

    return v32(sub_1D23B7C04, v17, sub_1D23B7CFC, v19, v22, v24, v35, v33);
  }
}

uint64_t sub_1D23AC860()
{
  v2 = *v1;
  *(*v1 + 1640) = v0;

  v3 = *(v2 + 1368);
  v4 = *(v2 + 1360);
  if (v0)
  {
    v5 = sub_1D23B1B04;
  }

  else
  {
    v5 = sub_1D23AC99C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D23AC99C()
{
  *(v0 + 478) = *(v0 + 477);
  v1 = *(v0 + 1576);
  v2 = *(v0 + 1048);
  v3 = *(v0 + 952);
  v4 = *(v0 + 944);
  v22 = *(v0 + 960);
  v5 = *(v0 + 760);
  v24 = v2;
  v25 = v5;
  v27 = *(v0 + 1552);
  v28 = *(v0 + 752);
  v6 = *(v0 + 736);
  v7 = *(v0 + 728);
  v23 = v7;
  v8 = *(v0 + 688);
  v9 = *(v0 + 656);
  v31 = *(v0 + 208);
  v30 = *(v0 + 216);
  __swift_project_boxed_opaque_existential_1((v0 + 184), v31);
  v1(v2, v8, v4);
  v26 = *(v6 + 16);
  v26(v5, v9, v7);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = (v22 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v6 + 80);
  v13 = swift_allocObject();
  *(v0 + 1648) = v13;
  (*(v3 + 32))(v13 + v10, v24, v4);
  *(v13 + v11) = v27;
  v14 = *(v6 + 32);
  v14(v13 + ((v12 + v11 + 8) & ~v12), v25, v23);
  v26(v28, v9, v23);
  v15 = swift_allocObject();
  *(v0 + 1656) = v15;
  v14(v15 + ((v12 + 16) & ~v12), v28, v23);
  v16 = *(v0 + 208);
  v17 = *(v0 + 216);
  __swift_project_boxed_opaque_existential_1((v0 + 184), v16);
  v18 = (*(v17 + 24))(v16, v17);
  v29 = (*(v30 + 88) + **(v30 + 88));
  v19 = swift_task_alloc();
  *(v0 + 1664) = v19;
  *v19 = v0;
  v19[1] = sub_1D23ACCD4;
  v20 = *(v0 + 1568);

  return v29(sub_1D23B7C04, v13, sub_1D23B7CFC, v15, v18, v20, v31, v30);
}

uint64_t sub_1D23ACCD4(uint64_t a1)
{
  v3 = *v2;
  v3[209] = a1;
  v3[210] = v1;

  v4 = v3[171];
  v5 = v3[170];
  if (v1)
  {
    v6 = sub_1D23B1C30;
  }

  else
  {
    v6 = sub_1D23ACE54;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, v4);
}

float *sub_1D23ACE54()
{
  v315 = v0;
  v2 = *(v0 + 1592);
  v3 = *(v0 + 1112);
  v4 = *(v0 + 944);
  (*(v0 + 1576))(v3, *(v0 + 648) + *(v0 + 1504), v4);
  v5 = sub_1D2877F98();
  v2(v3, v4);
  if ((v5 & 1) == 0)
  {
    v23 = *(v0 + 1576);
    v24 = *(v0 + 1040);
    v25 = *(v0 + 944);
    v26 = *(v0 + 688);

    sub_1D2872648();
    v23(v24, v26, v25);
    sub_1D2870F78();
    v27 = sub_1D2873CA8();
    v28 = sub_1D28789F8();

    v29 = os_log_type_enabled(v27, v28);
    v30 = *(v0 + 1592);
    if (v29)
    {
      v267 = *(v0 + 1576);
      v291 = *(v0 + 1200);
      v297 = *(v0 + 1192);
      v306 = *(v0 + 1280);
      v31 = *(v0 + 1112);
      v279 = v28;
      v32 = *(v0 + 1040);
      v33 = *(v0 + 944);
      v262 = *(v0 + 648);
      v264 = *(v0 + 1504);
      v34 = swift_slowAlloc();
      v286 = swift_slowAlloc();
      v314[0] = v286;
      *v34 = 136315394;
      sub_1D23B75AC(&qword_1ED8A6C90);
      v35 = sub_1D28795C8();
      log = v27;
      v37 = v36;
      v30(v32, v33);
      v38 = sub_1D23D7C84(v35, v37, v314);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2080;
      v267(v31, v262 + v264, v33);
      v39 = sub_1D28795C8();
      v41 = v40;
      v30(v31, v33);
      v42 = sub_1D23D7C84(v39, v41, v314);

      *(v34 + 14) = v42;
      _os_log_impl(&dword_1D226E000, log, v279, "startGeneratingPreviewsStream - ignoring generation batch %s as it is too old — current is %s", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38A3520](v286, -1, -1);
      MEMORY[0x1D38A3520](v34, -1, -1);

      (*(v291 + 8))(v306, v297);
    }

    else
    {
      v59 = *(v0 + 1280);
      v60 = *(v0 + 1200);
      v61 = *(v0 + 1192);
      v62 = *(v0 + 1040);
      v63 = *(v0 + 944);

      v30(v62, v63);
      (*(v60 + 8))(v59, v61);
    }

    goto LABEL_13;
  }

  v6 = *(v0 + 1576);
  v7 = *(v0 + 1032);
  v8 = *(v0 + 944);
  v9 = *(v0 + 688);
  sub_1D2872648();
  v6(v7, v9, v8);
  v10 = sub_1D2873CA8();
  v11 = sub_1D28789F8();
  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 1592);
  if (v12)
  {
    v285 = *(v0 + 1552);
    v290 = *(v0 + 1200);
    v296 = *(v0 + 1192);
    v304 = *(v0 + 1272);
    v14 = *(v0 + 1032);
    v278 = *(v0 + 1592);
    v15 = *(v0 + 944);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v314[0] = v17;
    *v16 = 136315394;
    sub_1D23B75AC(&qword_1ED8A6C90);
    v18 = sub_1D28795C8();
    v20 = v19;
    v278(v14, v15);
    v21 = sub_1D23D7C84(v18, v20, v314);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2048;
    *(v16 + 14) = v285;
    _os_log_impl(&dword_1D226E000, v10, v11, "startGeneratingPreviewsStream - %s - image index %ld - did generate", v16, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x1D38A3520](v17, -1, -1);
    MEMORY[0x1D38A3520](v16, -1, -1);

    v22 = v304;
    v305 = *(v290 + 8);
    v305(v22, v296);
  }

  else
  {
    v43 = *(v0 + 1272);
    v44 = *(v0 + 1200);
    v45 = *(v0 + 1192);
    v46 = *(v0 + 1032);
    v47 = *(v0 + 944);

    v13(v46, v47);
    v305 = *(v44 + 8);
    v305(v43, v45);
  }

  if (qword_1ED8A5B78 != -1)
  {
    swift_once();
  }

  v48 = *(*(v0 + 1144) + 92);
  v298 = *(v0 + 1160);
  sub_1D23BF14C((v298 + v48), *(v0 + 1552), v0 + 304);
  if (!*(v0 + 328))
  {
    v67 = &qword_1EC6DA470;
    v68 = v0 + 304;
LABEL_18:
    sub_1D22BD238(v68, v67);
    v73 = *(v0 + 1672);
    if (!*(v73 + 16))
    {

LABEL_26:
      sub_1D2872648();
      v97 = sub_1D2873CA8();
      v98 = sub_1D2878A18();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        *v99 = 0;
        _os_log_impl(&dword_1D226E000, v97, v98, "No image received", v99, 2u);
        MEMORY[0x1D38A3520](v99, -1, -1);
      }

      v100 = *(v0 + 1264);
      v101 = *(v0 + 1192);

      v305(v100, v101);
      sub_1D22BCEB8();
      v65 = swift_allocError();
      v66 = 1;
LABEL_29:
      *v64 = v66;
      swift_willThrow();
      *(v0 + 1696) = v65;
      v102 = *(v0 + 208);
      v103 = *(v0 + 216);
      __swift_project_boxed_opaque_existential_1((v0 + 184), v102);
      v307 = (*(v103 + 136) + **(v103 + 136));
      v104 = swift_task_alloc();
      *(v0 + 1704) = v104;
      *v104 = v0;
      v105 = sub_1D23B0E18;
LABEL_47:
      v104[1] = v105;
      v162 = v102;
      v163 = v103;
      v164 = v307;

      return v164(v162, v163);
    }

    v49 = v0 + 264;
    v74 = *(v0 + 1160);
    v75 = *(v0 + 1144);
    v76 = *(v0 + 872);
    v77 = *(v0 + 864);
    v78 = *(v0 + 856);
    sub_1D22D7044(v73 + 32, v0 + 264);
    sub_1D2871808();
    v79 = *(v75 + 52);
    sub_1D2871FC8();
    v80 = MEMORY[0x1D389AA00](v74 + v79, v76);
    (*(v77 + 8))(v76, v78);
    if (v80)
    {
      v81 = 1;
    }

    else
    {
      v81 = sub_1D2871F78();
    }

    v88 = *(v0 + 1672);
    v89 = *(v0 + 1552);
    v90 = *(v0 + 1016);
    v91 = *(v0 + 912);
    v92 = *(v0 + 904);
    v93 = *(v0 + 880);
    sub_1D2870F68();
    ImageGeneration.PreviewImage.init(id:batchNumber:images:hasAlpha:)(v90, v89, v88, v81 & 1, v93);
    v94 = (*(v91 + 48))(v93, 1, v92);
    v95 = *(v0 + 1672);
    if (v94 == 1)
    {
      v96 = *(v0 + 880);
      __swift_destroy_boxed_opaque_existential_0(v0 + 264);

      sub_1D22BD238(v96, &qword_1EC6D9490);
      goto LABEL_26;
    }

    v82 = *(v0 + 920);
    v84 = *(v0 + 848);
    v261 = *(v0 + 832);
    v106 = *(v0 + 816);
    v278 = *(v0 + 824);
    v287 = *(v0 + 808);
    v265 = *(v0 + 840);
    sub_1D23B81C8(*(v0 + 880), v82, type metadata accessor for ImageGeneration.PreviewImage);
    sub_1D23BF708(v0 + 264, v298 + v48);
    sub_1D2398E1C(v95);

    sub_1D23B8100(v82, v84, type metadata accessor for ImageGeneration.PreviewImage);
    swift_storeEnumTagMultiPayload();
    sub_1D23B8100(v84, v265, type metadata accessor for ImageGeneration.PreviewStatus);
    sub_1D2878738();
    (*(v106 + 8))(v278, v287);
    goto LABEL_31;
  }

  v49 = v0 + 344;
  v50 = *(v0 + 1160);
  v51 = *(v0 + 1144);
  v52 = *(v0 + 872);
  v53 = *(v0 + 864);
  v54 = *(v0 + 856);
  sub_1D227268C((v0 + 304), v0 + 344);
  sub_1D2871808();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D287F500;
  sub_1D22D7044(v0 + 344, inited + 32);
  v56 = *(v51 + 52);
  sub_1D2871FC8();
  v57 = MEMORY[0x1D389AA00](v50 + v56, v52);
  (*(v53 + 8))(v52, v54);
  if (v57)
  {
    v58 = 1;
  }

  else
  {
    v58 = sub_1D2871F78();
  }

  v69 = *(v0 + 912);
  v70 = *(v0 + 904);
  v71 = *(v0 + 888);
  ImageGeneration.PreviewImage.init(id:batchNumber:images:hasAlpha:)(*(v0 + 1024), *(v0 + 1552), inited, v58 & 1, v71);
  if ((*(v69 + 48))(v71, 1, v70) == 1)
  {
    v72 = *(v0 + 888);
    __swift_destroy_boxed_opaque_existential_0(v0 + 344);
    v67 = &qword_1EC6D9490;
    v68 = v72;
    goto LABEL_18;
  }

  v82 = *(v0 + 928);
  v83 = *(v0 + 888);
  v84 = *(v0 + 848);
  v85 = *(v0 + 840);
  v86 = *(v0 + 824);
  v87 = *(v0 + 816);
  v48 = *(v0 + 728);
  v299 = *(v0 + 808);

  sub_1D23B81C8(v83, v82, type metadata accessor for ImageGeneration.PreviewImage);
  sub_1D23B8100(v82, v84, type metadata accessor for ImageGeneration.PreviewImage);
  swift_storeEnumTagMultiPayload();
  sub_1D23B8100(v84, v85, type metadata accessor for ImageGeneration.PreviewStatus);
  sub_1D2878738();
  (*(v87 + 8))(v86, v299);
LABEL_31:
  sub_1D23B8168(v84, type metadata accessor for ImageGeneration.PreviewStatus);
  sub_1D23B8168(v82, type metadata accessor for ImageGeneration.PreviewImage);
  __swift_destroy_boxed_opaque_existential_0(v49);
  v107 = *(v0 + 1576);
  v108 = *(v0 + 1008);
  v109 = *(v0 + 944);
  v110 = *(v0 + 688);
  sub_1D2872648();
  v107(v108, v110, v109);
  v111 = sub_1D2873CA8();
  v112 = sub_1D28789F8();
  v113 = os_log_type_enabled(v111, v112);
  v114 = *(v0 + 1592);
  if (v113)
  {
    v272 = *(v0 + 1592);
    v278 = *(v0 + 1552);
    v292 = *(v0 + 1192);
    v300 = *(v0 + 1256);
    v115 = *(v0 + 1008);
    v114 = *(v0 + 944);
    v116 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    v314[0] = v117;
    *v116 = 136315394;
    sub_1D23B75AC(&qword_1ED8A6C90);
    v48 = sub_1D28795C8();
    v119 = v118;
    v272(v115, v114);
    v120 = sub_1D23D7C84(v48, v119, v314);

    *(v116 + 4) = v120;
    *(v116 + 12) = 2048;
    *(v116 + 14) = v278;
    _os_log_impl(&dword_1D226E000, v111, v112, "startGeneratingPreviewsStream - %s - image index %ld - did create PreviewImage", v116, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v117);
    MEMORY[0x1D38A3520](v117, -1, -1);
    MEMORY[0x1D38A3520](v116, -1, -1);

    v305(v300, v292);
  }

  else
  {
    v120 = *(v0 + 1256);
    v116 = *(v0 + 1200);
    v122 = *(v0 + 1192);
    v123 = *(v0 + 1008);
    v112 = *(v0 + 944);

    v111 = v116 + 8;
    v114(v123, v112);
    v305(v120, v122);
  }

  v121 = *(v0 + 478);
  do
  {
    v124 = *(v0 + 1560);
    v125 = *(v0 + 664);
    if (v124 == v125)
    {
      goto LABEL_46;
    }

    *(v0 + 1552) = v124;
    if (v124 >= v125)
    {
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    *(v0 + 1560) = v124 + 1;
    if (__OFADD__(v124, 1))
    {
      goto LABEL_83;
    }

    v126 = *(v0 + 672);
    v111 = v124 + v126;
    *(v0 + 1568) = v124 + v126;
    if (__OFADD__(v124, v126))
    {
      goto LABEL_84;
    }

    v120 = *(v0 + 1136);
  }

  while ((sub_1D2871968() & 1) != 0);
  v127 = sub_1D28786D8();
  v128 = *(v0 + 944);
  v129 = *(v0 + 688);
  v130 = *(v0 + 952) + 16;
  if (v127)
  {
    v131 = *(v0 + 1096);
    sub_1D2872648();
    (*v130)(v131, v129, v128);
    v132 = sub_1D2873CA8();
    v133 = sub_1D28789F8();
    v134 = os_log_type_enabled(v132, v133);
    v135 = *(v0 + 1328);
    v136 = *(v0 + 1200);
    v137 = *(v0 + 1192);
    v138 = *(v0 + 1096);
    v139 = *(v0 + 952);
    v140 = *(v0 + 944);
    if (v134)
    {
      v293 = v133;
      v141 = swift_slowAlloc();
      v288 = swift_slowAlloc();
      v314[0] = v288;
      *v141 = 136315394;
      sub_1D23B75AC(&qword_1ED8A6C90);
      v301 = v137;
      v308 = v135;
      v142 = sub_1D28795C8();
      v144 = v143;
      (*(v139 + 8))(v138, v140);
      v145 = sub_1D23D7C84(v142, v144, v314);

      *(v141 + 4) = v145;
      *(v141 + 12) = 2048;
      *(v141 + 14) = v124;
      _os_log_impl(&dword_1D226E000, v132, v293, "startGeneratingPreviewsStream - %s - image index %ld - _selectedGenerator.isCancelled", v141, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v288);
      MEMORY[0x1D38A3520](v288, -1, -1);
      MEMORY[0x1D38A3520](v141, -1, -1);

      (*(v136 + 8))(v308, v301);
    }

    else
    {

      (*(v139 + 8))(v138, v140);
      (*(v136 + 8))(v135, v137);
    }

LABEL_46:
    v102 = *(v0 + 208);
    v103 = *(v0 + 216);
    __swift_project_boxed_opaque_existential_1((v0 + 184), v102);
    v307 = (*(v103 + 136) + **(v103 + 136));
    v104 = swift_task_alloc();
    *(v0 + 1688) = v104;
    *v104 = v0;
    v105 = sub_1D23AEFA0;
    goto LABEL_47;
  }

  v146 = *(v0 + 1088);
  sub_1D2872648();
  v147 = *v130;
  *(v0 + 1576) = *v130;
  *(v0 + 1584) = v130 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v309 = v147;
  v147(v146, v129, v128);
  v148 = sub_1D2873CA8();
  v289 = sub_1D28789F8();
  v149 = os_log_type_enabled(v148, v289);
  v150 = *(v0 + 1320);
  v151 = *(v0 + 1200);
  v302 = *(v0 + 1192);
  v152 = *(v0 + 1088);
  v153 = *(v0 + 952);
  v154 = *(v0 + 944);
  v266 = v121;
  if (v149)
  {
    v280 = *(v0 + 1320);
    v155 = swift_slowAlloc();
    v273 = swift_slowAlloc();
    v314[0] = v273;
    *v155 = 136315394;
    sub_1D23B75AC(&qword_1ED8A6C90);
    v263 = v148;
    v156 = sub_1D28795C8();
    v158 = v157;
    v268 = v151;
    v159 = *(v153 + 8);
    v159(v152, v154);
    v160 = sub_1D23D7C84(v156, v158, v314);

    *(v155 + 4) = v160;
    *(v155 + 12) = 2048;
    *(v155 + 14) = v124;
    _os_log_impl(&dword_1D226E000, v263, v289, " %s - image index %ld - will generate", v155, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v273);
    MEMORY[0x1D38A3520](v273, -1, -1);
    v161 = v159;
    MEMORY[0x1D38A3520](v155, -1, -1);

    v261 = *(v268 + 8);
    (v261)(v280, v302);
  }

  else
  {

    v161 = *(v153 + 8);
    v161(v152, v154);
    v261 = *(v151 + 8);
    (v261)(v150, v302);
  }

  v303 = v161;
  *(v0 + 1592) = v161;
  v165 = *(v0 + 1112);
  v166 = *(v0 + 944);
  v281 = *(v0 + 1504);
  v274 = *(v0 + 648);
  v167 = *(v0 + 952) + 8;
  sub_1D23C7CA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA190);
  v168 = swift_initStackObject();
  *(v168 + 16) = xmmword_1D287F500;
  *(v168 + 32) = 0x646E496567616D49;
  *(v168 + 40) = 0xEA00000000007865;
  *(v168 + 48) = sub_1D2878808();
  v169 = sub_1D25D6F4C(v168);
  swift_setDeallocating();
  v114 = v303;
  sub_1D22BD238(v168 + 32, &qword_1EC6DA198);
  sub_1D24165B4(0x6E65476567616D49, 0xEF6E6F6974617265, 0xD000000000000018, 0x80000001D28B2AF0, v169, 1);

  v309(v165, v274 + v281, v166);
  *(v0 + 1600) = sub_1D23B75AC(&unk_1ED8A6CA0);
  v170 = sub_1D2877F98();
  *(v0 + 1608) = v167 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v303(v165, v166);
  if ((v170 & 1) == 0)
  {
LABEL_13:
    sub_1D22BCEB8();
    v65 = swift_allocError();
    v66 = 3;
    goto LABEL_29;
  }

  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  sub_1D23B7BB8();
  v171 = sub_1D2878A58();
  v172 = sub_1D2878068();
  v173 = [v171 BOOLForKey_];

  if (v173)
  {
    if (qword_1EC6D8C10 != -1)
    {
      swift_once();
    }

    v174 = sub_1D23B9E90(*(v0 + 1160) + *(*(v0 + 1144) + 92), v124);
    if ((v175 & 1) == 0)
    {
      v284 = v174;
      v213 = *(v0 + 1080);
      v214 = *(v0 + 944);
      v215 = *(v0 + 688);
      sub_1D2872648();
      v309(v213, v215, v214);
      v216 = sub_1D2873CA8();
      v217 = sub_1D28789F8();
      v218 = os_log_type_enabled(v216, v217);
      v219 = *(v0 + 1312);
      v220 = *(v0 + 1192);
      v221 = *(v0 + 1080);
      v222 = *(v0 + 944);
      if (v218)
      {
        v294 = *(v0 + 1192);
        v223 = swift_slowAlloc();
        v277 = swift_slowAlloc();
        v314[0] = v277;
        *v223 = 136315650;
        sub_1D23B75AC(&qword_1ED8A6C90);
        v224 = sub_1D28795C8();
        v270 = v219;
        v226 = v225;
        v303(v221, v222);
        v227 = sub_1D23D7C84(v224, v226, v314);

        *(v223 + 4) = v227;
        *(v223 + 12) = 2048;
        *(v223 + 14) = v124;
        *(v223 + 22) = 2048;
        v186 = v284;
        *(v223 + 24) = v284;
        _os_log_impl(&dword_1D226E000, v216, v217, "startGeneratingPreviewsStream - %s - image index %ld - setting seed (cached) %ld", v223, 0x20u);
        __swift_destroy_boxed_opaque_existential_0(v277);
        MEMORY[0x1D38A3520](v277, -1, -1);
        MEMORY[0x1D38A3520](v223, -1, -1);

        (v261)(v270, v294);
      }

      else
      {

        v303(v221, v222);
        (v261)(v219, v220);
        v186 = v284;
      }

      goto LABEL_79;
    }
  }

  v176 = sub_1D2878A58();
  v177 = sub_1D2878068();
  v178 = [v176 BOOLForKey_];

  if (!v178)
  {
    v196 = sub_1D2878A58();
    v197 = sub_1D2878068();
    v198 = [v196 BOOLForKey_];

    if (v198)
    {
      v199 = *(v0 + 1064);
      v200 = *(v0 + 944);
      v201 = *(v0 + 688);
      sub_1D2872648();
      v309(v199, v201, v200);
      v202 = sub_1D2873CA8();
      v203 = sub_1D28789F8();
      v204 = os_log_type_enabled(v202, v203);
      v205 = *(v0 + 1296);
      v311 = *(v0 + 1192);
      v206 = *(v0 + 1064);
      v207 = *(v0 + 944);
      if (v204)
      {
        v208 = swift_slowAlloc();
        v283 = swift_slowAlloc();
        v314[0] = v283;
        *v208 = 136315650;
        sub_1D23B75AC(&qword_1ED8A6C90);
        v209 = sub_1D28795C8();
        v276 = v205;
        v211 = v210;
        v303(v206, v207);
        v212 = sub_1D23D7C84(v209, v211, v314);

        *(v208 + 4) = v212;
        *(v208 + 12) = 2048;
        *(v208 + 14) = v124;
        *(v208 + 22) = 2048;
        *(v208 + 24) = 0;
        _os_log_impl(&dword_1D226E000, v202, v203, "startGeneratingPreviewsStream - %s - image index %ld - setting seed (fixed) %ld", v208, 0x20u);
        __swift_destroy_boxed_opaque_existential_0(v283);
        MEMORY[0x1D38A3520](v283, -1, -1);
        MEMORY[0x1D38A3520](v208, -1, -1);

        (v261)(v276, v311);
      }

      else
      {

        v303(v206, v207);
        (v261)(v205, v311);
      }

      v121 = v266;
      v244 = *(v0 + 208);
      v245 = *(v0 + 216);
      __swift_project_boxed_opaque_existential_1((v0 + 184), v244);
      (*(v245 + 72))(0, v244, v245);
      goto LABEL_87;
    }

    v121 = v266;
    if (v111 >= *(*(v0 + 680) + 16))
    {
      goto LABEL_87;
    }

    result = sub_1D23CE790();
    if (!result)
    {
      result = &unk_1F4DBDC68;
    }

    if (v111 < 0)
    {
      __break(1u);
    }

    else
    {
      v229 = *(result + 2);
      if (v229)
      {
        v278 = *(*(v0 + 680) + 8 * v111 + 32);
        v230 = *(v0 + 1056);
        v231 = *(v0 + 944);
        v232 = *(v0 + 688);
        v233 = v229 - 1;
        if (v233 >= v111)
        {
          v233 = v111;
        }

        v1 = result[v233 + 8];

        sub_1D2872648();
        v309(v230, v232, v231);
        v112 = sub_1D2873CA8();
        v295 = sub_1D28789F8();
        v234 = os_log_type_enabled(v112, v295);
        v48 = *(v0 + 1288);
        v305 = *(v0 + 1192);
        v120 = *(v0 + 1056);
        v116 = *(v0 + 944);
        if (v234)
        {
          v271 = *(v0 + 1288);
          v235 = swift_slowAlloc();
          loga = swift_slowAlloc();
          v314[0] = loga;
          *v235 = 136315906;
          sub_1D23B75AC(&qword_1ED8A6C90);
          v236 = sub_1D28795C8();
          v238 = v237;
          v303(v120, v116);
          v239 = v236;
          v121 = v266;
          v240 = sub_1D23D7C84(v239, v238, v314);

          *(v235 + 4) = v240;
          *(v235 + 12) = 2048;
          *(v235 + 14) = v124;
          *(v235 + 22) = 2048;
          *(v235 + 24) = v278;
          *(v235 + 32) = 2048;
          *(v235 + 34) = v1;
          _os_log_impl(&dword_1D226E000, v112, v295, "startGeneratingPreviewsStream - %s - image index %ld - setting seed (precomputed) %ld - scribble strength %f", v235, 0x2Au);
          __swift_destroy_boxed_opaque_existential_0(loga);
          MEMORY[0x1D38A3520](loga, -1, -1);
          MEMORY[0x1D38A3520](v235, -1, -1);

          (v261)(v271, v305);
          v241 = v278;
LABEL_86:
          v246 = *(v0 + 208);
          v247 = *(v0 + 216);
          __swift_project_boxed_opaque_existential_1((v0 + 184), v246);
          (*(v247 + 72))(v241, v246, v247);
          v248 = *(v0 + 208);
          v249 = *(v0 + 216);
          __swift_project_boxed_opaque_existential_1((v0 + 184), v248);
          (*(v249 + 80))(v248, v249, v1);
          goto LABEL_87;
        }

LABEL_85:

        v114(v120, v116);
        (v261)(v48, v305);
        v241 = v278;
        goto LABEL_86;
      }
    }

    __break(1u);
    return result;
  }

  v179 = sub_1D23B6AAC(0x8000000000000000);
  if (qword_1EC6D8C10 != -1)
  {
    swift_once();
  }

  v180 = *(v0 + 1072);
  v181 = *(v0 + 944);
  v182 = *(v0 + 688);
  sub_1D23BA074(v179, *(v0 + 1160) + *(*(v0 + 1144) + 92), v124);
  sub_1D2872648();
  v309(v180, v182, v181);
  v183 = sub_1D2873CA8();
  v310 = sub_1D28789F8();
  v184 = os_log_type_enabled(v183, v310);
  v185 = *(v0 + 1304);
  v186 = v179;
  v187 = *(v0 + 1192);
  v188 = *(v0 + 1072);
  v189 = *(v0 + 944);
  if (v184)
  {
    v282 = *(v0 + 1192);
    v190 = swift_slowAlloc();
    v275 = swift_slowAlloc();
    v314[0] = v275;
    *v190 = 136315650;
    sub_1D23B75AC(&qword_1ED8A6C90);
    v191 = sub_1D28795C8();
    v269 = v185;
    v192 = v186;
    v194 = v193;
    v303(v188, v189);
    v195 = sub_1D23D7C84(v191, v194, v314);
    v186 = v192;

    *(v190 + 4) = v195;
    *(v190 + 12) = 2048;
    *(v190 + 14) = v124;
    *(v190 + 22) = 2048;
    *(v190 + 24) = v192;
    _os_log_impl(&dword_1D226E000, v183, v310, "startGeneratingPreviewsStream - %s - image index %ld - setting seed (random) %ld", v190, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v275);
    MEMORY[0x1D38A3520](v275, -1, -1);
    MEMORY[0x1D38A3520](v190, -1, -1);

    (v261)(v269, v282);
  }

  else
  {

    v303(v188, v189);
    (v261)(v185, v187);
  }

LABEL_79:
  v242 = *(v0 + 208);
  v243 = *(v0 + 216);
  __swift_project_boxed_opaque_existential_1((v0 + 184), v242);
  (*(v243 + 72))(v186, v242, v243);
  v121 = v266;
LABEL_87:
  if ((_s23ImagePlaygroundInternal13DebugSettingsC40shouldEnablePromptRewriteForPersonalizedSbvg_0() & 1) == 0 && sub_1D2391DAC() || (_s23ImagePlaygroundInternal13DebugSettingsC43shouldEnablePromptRewriteForNonPersonalizedSbvg_0() & 1) == 0 && !sub_1D2391DAC())
  {
    v252 = 0;
    goto LABEL_97;
  }

  v250 = *(v0 + 475);
  v251 = sub_1D23920F8(1, v111, 0);
  v252 = v250 & v121 & v251;
  if ((v250 & v121 & 1) != 0 || (v251 & 1) == 0)
  {
LABEL_97:
    *(v0 + 476) = v252 & 1;
    v256 = *(v0 + 208);
    v257 = *(v0 + 216);
    __swift_project_boxed_opaque_existential_1((v0 + 184), v256);
    v313 = (*(v257 + 56) + **(v257 + 56));
    v258 = swift_task_alloc();
    *(v0 + 1616) = v258;
    *v258 = v0;
    v258[1] = sub_1D23AC2D8;
    v162 = v256;
    v163 = v257;
    v164 = v313;

    return v164(v162, v163);
  }

  *(v0 + 477) = v121;
  v253 = *(v0 + 208);
  v254 = *(v0 + 216);
  __swift_project_boxed_opaque_existential_1((v0 + 184), v253);
  v312 = (*(v254 + 64) + **(v254 + 64));
  v255 = swift_task_alloc();
  *(v0 + 1632) = v255;
  *v255 = v0;
  v255[1] = sub_1D23AC860;
  v162 = v253;
  v163 = v254;
  v164 = v312;

  return v164(v162, v163);
}

uint64_t sub_1D23AEFA0()
{
  v1 = *v0;

  v2 = *(v1 + 1368);
  v3 = *(v1 + 1360);

  return MEMORY[0x1EEE6DFA0](sub_1D23AF0C0, v3, v2);
}

uint64_t sub_1D23AF0C0()
{
  v32 = v0;
  v1 = v0[125];
  v2 = v0[119];
  v3 = v0[118];
  v4 = v0[86];

  sub_1D2872648();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_1D2873CA8();
  v6 = sub_1D28789F8();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[156];
  v9 = v0[150];
  v10 = v0[149];
  v11 = v0[125];
  v12 = v0[119];
  v13 = v0[118];
  if (v7)
  {
    v30 = v0[149];
    v14 = swift_slowAlloc();
    v28 = v6;
    v15 = swift_slowAlloc();
    v31 = v15;
    *v14 = 136315138;
    sub_1D23B75AC(&qword_1ED8A6C90);
    v16 = sub_1D28795C8();
    v29 = v8;
    v18 = v17;
    (*(v12 + 8))(v11, v13);
    v19 = sub_1D23D7C84(v16, v18, &v31);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_1D226E000, v5, v28, "startGeneratingPreviewsStream - %s - done", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x1D38A3520](v15, -1, -1);
    MEMORY[0x1D38A3520](v14, -1, -1);

    (*(v9 + 8))(v29, v30);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
    (*(v9 + 8))(v8, v10);
  }

  v20 = v0[172];
  v21 = v0[148];
  v22 = v0[145];
  v23 = v0[142];
  v24 = v0[141];
  v25 = v0[140];
  v0[71] = 0;
  sub_1D2878748();
  sub_1D22A576C(v20);
  (*(v24 + 8))(v23, v25);
  sub_1D22BD238(v21, &qword_1EC6DA490);
  __swift_destroy_boxed_opaque_existential_0((v0 + 23));
  sub_1D23B8168(v22, type metadata accessor for ImageGeneration.GenerationParameters);

  v26 = v0[1];

  return v26();
}

uint64_t sub_1D23AF690()
{
  v1 = v0[175];
  v2 = v0[172];

  v0[74] = v1;
  v3 = v1;
  sub_1D2878748();
  sub_1D22A576C(v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D23AFA68()
{
  v78 = v0;

  v1 = *(v0 + 1520);
  *(v0 + 584) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v26 = *(v0 + 984);
    v27 = *(v0 + 952);
    v28 = *(v0 + 944);
    v29 = *(v0 + 688);
    sub_1D2872648();
    (*(v27 + 16))(v26, v29, v28);
    v30 = v1;
    v31 = sub_1D2873CA8();
    v32 = sub_1D28789F8();

    v33 = os_log_type_enabled(v31, v32);
    v34 = *(v0 + 1232);
    v35 = *(v0 + 1200);
    v36 = *(v0 + 1192);
    v37 = *(v0 + 984);
    v38 = v1;
    v39 = *(v0 + 952);
    v40 = *(v0 + 944);
    if (v33)
    {
      v76 = *(v0 + 1192);
      v41 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v77[0] = v72;
      *v41 = 136315394;
      sub_1D23B75AC(&qword_1ED8A6C90);
      v68 = v32;
      v42 = v38;
      v43 = sub_1D28795C8();
      v74 = v34;
      v45 = v44;
      (*(v39 + 8))(v37, v40);
      v46 = sub_1D23D7C84(v43, v45, v77);

      *(v41 + 4) = v46;
      *(v41 + 12) = 2112;
      v47 = v42;
      v48 = _swift_stdlib_bridgeErrorToNSError();
      *(v41 + 14) = v48;
      *v70 = v48;
      _os_log_impl(&dword_1D226E000, v31, v68, "startGeneratingPreviewsStream - %s - configuration did receive error %@", v41, 0x16u);
      sub_1D22BD238(v70, qword_1EC6DA930);
      MEMORY[0x1D38A3520](v70, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v72);
      MEMORY[0x1D38A3520](v72, -1, -1);
      MEMORY[0x1D38A3520](v41, -1, -1);

      (*(v35 + 8))(v74, v76);
      v49 = v42;
    }

    else
    {

      (*(v39 + 8))(v37, v40);
      (*(v35 + 8))(v34, v36);
      v49 = v38;
    }

    v50 = *(v0 + 1376);
    v51 = *(v0 + 1184);
    v52 = *(v0 + 1136);
    v53 = *(v0 + 1128);
    v54 = *(v0 + 1120);
    *(v0 + 600) = v49;
    v55 = v49;
    sub_1D2878748();
    sub_1D22A576C(v50);

    (*(v53 + 8))(v52, v54);
    goto LABEL_11;
  }

  v4 = *(v0 + 480);
  v3 = *(v0 + 488);
  v5 = *(v0 + 496);
  if (v5 >= 0x50 || (*(v0 + 608) = v4, sub_1D233E72C(v4, v3, v5), (swift_dynamicCast() & 1) == 0))
  {
    sub_1D22BCDC4(v4, v3, v5);
    goto LABEL_7;
  }

  v75 = v3;
  v6 = *(v0 + 992);
  v7 = *(v0 + 952);
  v8 = *(v0 + 944);
  v9 = *(v0 + 688);
  (*(*(v0 + 704) + 8))(*(v0 + 720), *(v0 + 696));
  sub_1D2872648();
  (*(v7 + 16))(v6, v9, v8);
  v10 = v1;
  v11 = sub_1D2873CA8();
  v12 = sub_1D28789F8();

  v71 = v12;
  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 1240);
  v15 = *(v0 + 1200);
  v73 = *(v0 + 1192);
  v16 = *(v0 + 992);
  v17 = *(v0 + 952);
  v18 = *(v0 + 944);
  v66 = v1;
  if (v13)
  {
    v69 = *(v0 + 1240);
    v19 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v77[0] = v67;
    *v19 = 136315394;
    sub_1D23B75AC(&qword_1ED8A6C90);
    v65 = v15;
    v20 = sub_1D28795C8();
    v63 = v11;
    v22 = v21;
    (*(v17 + 8))(v16, v18);
    v23 = sub_1D23D7C84(v20, v22, v77);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2112;
    v24 = v1;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 14) = v25;
    *v64 = v25;
    _os_log_impl(&dword_1D226E000, v63, v71, "startGeneratingPreviewsStream - %s - configuration did cancel with error %@", v19, 0x16u);
    sub_1D22BD238(v64, qword_1EC6DA930);
    MEMORY[0x1D38A3520](v64, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v67);
    MEMORY[0x1D38A3520](v67, -1, -1);
    MEMORY[0x1D38A3520](v19, -1, -1);

    (*(v65 + 8))(v69, v73);
  }

  else
  {

    (*(v17 + 8))(v16, v18);
    (*(v15 + 8))(v14, v73);
  }

  v59 = *(v0 + 1376);
  v51 = *(v0 + 1184);
  v60 = *(v0 + 1136);
  v61 = *(v0 + 1128);
  v62 = *(v0 + 1120);
  *(v0 + 616) = 0;
  sub_1D2878748();
  sub_1D22A576C(v59);
  sub_1D22BCDC4(v4, v75, v5);

  (*(v61 + 8))(v60, v62);
LABEL_11:
  sub_1D22BD238(v51, &qword_1EC6DA490);
  v56 = *(v0 + 1160);
  __swift_destroy_boxed_opaque_existential_0(v0 + 184);
  sub_1D23B8168(v56, type metadata accessor for ImageGeneration.GenerationParameters);

  v57 = *(v0 + 8);

  return v57();
}

uint64_t sub_1D23B0440()
{
  v78 = v0;

  v1 = *(v0 + 1536);
  *(v0 + 584) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v26 = *(v0 + 984);
    v27 = *(v0 + 952);
    v28 = *(v0 + 944);
    v29 = *(v0 + 688);
    sub_1D2872648();
    (*(v27 + 16))(v26, v29, v28);
    v30 = v1;
    v31 = sub_1D2873CA8();
    v32 = sub_1D28789F8();

    v33 = os_log_type_enabled(v31, v32);
    v34 = *(v0 + 1232);
    v35 = *(v0 + 1200);
    v36 = *(v0 + 1192);
    v37 = *(v0 + 984);
    v38 = v1;
    v39 = *(v0 + 952);
    v40 = *(v0 + 944);
    if (v33)
    {
      v76 = *(v0 + 1192);
      v41 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v77[0] = v72;
      *v41 = 136315394;
      sub_1D23B75AC(&qword_1ED8A6C90);
      v68 = v32;
      v42 = v38;
      v43 = sub_1D28795C8();
      v74 = v34;
      v45 = v44;
      (*(v39 + 8))(v37, v40);
      v46 = sub_1D23D7C84(v43, v45, v77);

      *(v41 + 4) = v46;
      *(v41 + 12) = 2112;
      v47 = v42;
      v48 = _swift_stdlib_bridgeErrorToNSError();
      *(v41 + 14) = v48;
      *v70 = v48;
      _os_log_impl(&dword_1D226E000, v31, v68, "startGeneratingPreviewsStream - %s - configuration did receive error %@", v41, 0x16u);
      sub_1D22BD238(v70, qword_1EC6DA930);
      MEMORY[0x1D38A3520](v70, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v72);
      MEMORY[0x1D38A3520](v72, -1, -1);
      MEMORY[0x1D38A3520](v41, -1, -1);

      (*(v35 + 8))(v74, v76);
      v49 = v42;
    }

    else
    {

      (*(v39 + 8))(v37, v40);
      (*(v35 + 8))(v34, v36);
      v49 = v38;
    }

    v50 = *(v0 + 1376);
    v51 = *(v0 + 1184);
    v52 = *(v0 + 1136);
    v53 = *(v0 + 1128);
    v54 = *(v0 + 1120);
    *(v0 + 600) = v49;
    v55 = v49;
    sub_1D2878748();
    sub_1D22A576C(v50);

    (*(v53 + 8))(v52, v54);
    goto LABEL_11;
  }

  v4 = *(v0 + 480);
  v3 = *(v0 + 488);
  v5 = *(v0 + 496);
  if (v5 >= 0x50 || (*(v0 + 608) = v4, sub_1D233E72C(v4, v3, v5), (swift_dynamicCast() & 1) == 0))
  {
    sub_1D22BCDC4(v4, v3, v5);
    goto LABEL_7;
  }

  v75 = v3;
  v6 = *(v0 + 992);
  v7 = *(v0 + 952);
  v8 = *(v0 + 944);
  v9 = *(v0 + 688);
  (*(*(v0 + 704) + 8))(*(v0 + 720), *(v0 + 696));
  sub_1D2872648();
  (*(v7 + 16))(v6, v9, v8);
  v10 = v1;
  v11 = sub_1D2873CA8();
  v12 = sub_1D28789F8();

  v71 = v12;
  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 1240);
  v15 = *(v0 + 1200);
  v73 = *(v0 + 1192);
  v16 = *(v0 + 992);
  v17 = *(v0 + 952);
  v18 = *(v0 + 944);
  v66 = v1;
  if (v13)
  {
    v69 = *(v0 + 1240);
    v19 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v77[0] = v67;
    *v19 = 136315394;
    sub_1D23B75AC(&qword_1ED8A6C90);
    v65 = v15;
    v20 = sub_1D28795C8();
    v63 = v11;
    v22 = v21;
    (*(v17 + 8))(v16, v18);
    v23 = sub_1D23D7C84(v20, v22, v77);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2112;
    v24 = v1;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 14) = v25;
    *v64 = v25;
    _os_log_impl(&dword_1D226E000, v63, v71, "startGeneratingPreviewsStream - %s - configuration did cancel with error %@", v19, 0x16u);
    sub_1D22BD238(v64, qword_1EC6DA930);
    MEMORY[0x1D38A3520](v64, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v67);
    MEMORY[0x1D38A3520](v67, -1, -1);
    MEMORY[0x1D38A3520](v19, -1, -1);

    (*(v65 + 8))(v69, v73);
  }

  else
  {

    (*(v17 + 8))(v16, v18);
    (*(v15 + 8))(v14, v73);
  }

  v59 = *(v0 + 1376);
  v51 = *(v0 + 1184);
  v60 = *(v0 + 1136);
  v61 = *(v0 + 1128);
  v62 = *(v0 + 1120);
  *(v0 + 616) = 0;
  sub_1D2878748();
  sub_1D22A576C(v59);
  sub_1D22BCDC4(v4, v75, v5);

  (*(v61 + 8))(v60, v62);
LABEL_11:
  sub_1D22BD238(v51, &qword_1EC6DA490);
  v56 = *(v0 + 1160);
  __swift_destroy_boxed_opaque_existential_0(v0 + 184);
  sub_1D23B8168(v56, type metadata accessor for ImageGeneration.GenerationParameters);

  v57 = *(v0 + 8);

  return v57();
}

uint64_t sub_1D23B0E18()
{
  v1 = *v0;

  v2 = *(v1 + 1368);
  v3 = *(v1 + 1360);

  return MEMORY[0x1EEE6DFA0](sub_1D23B0F38, v3, v2);
}

uint64_t sub_1D23B0F38()
{
  v90 = v0;
  v1 = *(v0 + 1696);

  *(v0 + 544) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 456);
    v3 = *(v0 + 464);
    v5 = *(v0 + 472);
    if (v5 < 0x50)
    {
      *(v0 + 528) = v4;
      sub_1D233E72C(v4, v3, v5);
      if (swift_dynamicCast())
      {
        v6 = *(v0 + 1576);
        v7 = *(v0 + 976);
        v8 = *(v0 + 944);
        v9 = *(v0 + 688);
        (*(*(v0 + 704) + 8))(*(v0 + 712), *(v0 + 696));
        sub_1D2872648();
        v6(v7, v9, v8);
        v10 = sub_1D2873CA8();
        v78 = sub_1D28789F8();
        v11 = os_log_type_enabled(v10, v78);
        v82 = *(v0 + 1592);
        v12 = *(v0 + 1224);
        v13 = *(v0 + 1200);
        v14 = *(v0 + 1192);
        v15 = *(v0 + 976);
        v16 = *(v0 + 944);
        if (v11)
        {
          v75 = *(v0 + 1192);
          v17 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          v89[0] = v71;
          *v17 = 136315138;
          sub_1D23B75AC(&qword_1ED8A6C90);
          v72 = v12;
          v18 = sub_1D28795C8();
          v69 = v10;
          v20 = v19;
          v82(v15, v16);
          v21 = sub_1D23D7C84(v18, v20, v89);

          *(v17 + 4) = v21;
          _os_log_impl(&dword_1D226E000, v69, v78, "startGeneratingPreviewsStream - %s - cancelled", v17, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v71);
          MEMORY[0x1D38A3520](v71, -1, -1);
          MEMORY[0x1D38A3520](v17, -1, -1);

          (*(v13 + 8))(v72, v75);
        }

        else
        {

          v82(v15, v16);
          (*(v13 + 8))(v12, v14);
        }

        v66 = *(v0 + 1376);
        v85 = *(v0 + 1696);
        v88 = *(v0 + 1184);
        v63 = *(v0 + 1160);
        v81 = *(v0 + 1136);
        v67 = *(v0 + 1128);
        v68 = *(v0 + 1120);
        *(v0 + 536) = 0;
        sub_1D2878748();
        sub_1D22A576C(v66);
        sub_1D22BCDC4(v4, v3, v5);

        (*(v67 + 8))(v81, v68);
        sub_1D22BD238(v88, &qword_1EC6DA490);
        goto LABEL_15;
      }
    }

    sub_1D22BCDC4(v4, v3, v5);
  }

  v22 = *(v0 + 1696);
  v23 = *(v0 + 1576);
  v24 = *(v0 + 968);
  v25 = *(v0 + 944);
  v26 = *(v0 + 688);
  sub_1D2872648();
  v23(v24, v26, v25);
  v27 = v22;
  v28 = sub_1D2873CA8();
  v29 = sub_1D28789F8();

  if (os_log_type_enabled(v28, v29))
  {
    v70 = *(v0 + 1592);
    v73 = *(v0 + 1552);
    v76 = *(v0 + 1696);
    v79 = *(v0 + 1200);
    v83 = *(v0 + 1192);
    v86 = *(v0 + 1216);
    v30 = *(v0 + 968);
    v31 = *(v0 + 944);
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v89[0] = v34;
    *v32 = 136315650;
    sub_1D23B75AC(&qword_1ED8A6C90);
    v35 = sub_1D28795C8();
    v37 = v36;
    v70(v30, v31);
    v38 = sub_1D23D7C84(v35, v37, v89);

    *(v32 + 4) = v38;
    *(v32 + 12) = 2048;
    *(v32 + 14) = v73;
    *(v32 + 22) = 2112;
    v39 = v76;
    v40 = _swift_stdlib_bridgeErrorToNSError();
    *(v32 + 24) = v40;
    *v33 = v40;
    _os_log_impl(&dword_1D226E000, v28, v29, "startGeneratingPreviewsStream - %s - image index %ld - did receive error %@", v32, 0x20u);
    sub_1D22BD238(v33, qword_1EC6DA930);
    MEMORY[0x1D38A3520](v33, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x1D38A3520](v34, -1, -1);
    MEMORY[0x1D38A3520](v32, -1, -1);

    v41 = v79[1];
    v41(v86, v83);
    if (*(v0 + 1568))
    {
LABEL_9:
      v87 = v41;
      sub_1D2872648();
      v42 = sub_1D2873CA8();
      v43 = sub_1D28789F8();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = *(v0 + 1568);
        v45 = swift_slowAlloc();
        *v45 = 134217984;
        *(v45 + 4) = v44;
        _os_log_impl(&dword_1D226E000, v42, v43, "startGeneratingPreviewsStream - Ignoring error on preview number %ld, given we returned at least one successful image.", v45, 0xCu);
        MEMORY[0x1D38A3520](v45, -1, -1);
      }

      v46 = *(v0 + 1376);
      v47 = *(v0 + 1208);
      v48 = *(v0 + 1192);
      v80 = *(v0 + 1696);
      v84 = *(v0 + 1184);
      v49 = *(v0 + 1128);
      v74 = *(v0 + 1120);
      v77 = *(v0 + 1136);

      v87(v47, v48);
      *(v0 + 512) = 0;
      sub_1D2878748();
      sub_1D22A576C(v46);

      (*(v49 + 8))(v77, v74);
      v50 = v84;
      goto LABEL_14;
    }
  }

  else
  {
    v51 = *(v0 + 1592);
    v52 = *(v0 + 1216);
    v53 = *(v0 + 1200);
    v54 = *(v0 + 1192);
    v55 = *(v0 + 968);
    v56 = *(v0 + 944);

    v51(v55, v56);
    v41 = *(v53 + 8);
    v41(v52, v54);
    if (*(v0 + 1568))
    {
      goto LABEL_9;
    }
  }

  v57 = *(v0 + 1696);
  v58 = *(v0 + 1376);
  v50 = *(v0 + 1184);
  v59 = *(v0 + 1136);
  v60 = *(v0 + 1128);
  v61 = *(v0 + 1120);
  *(v0 + 520) = v57;
  v62 = v57;
  sub_1D2878748();
  sub_1D22A576C(v58);

  (*(v60 + 8))(v59, v61);
LABEL_14:
  sub_1D22BD238(v50, &qword_1EC6DA490);
  v63 = *(v0 + 1160);
LABEL_15:
  __swift_destroy_boxed_opaque_existential_0(v0 + 184);
  sub_1D23B8168(v63, type metadata accessor for ImageGeneration.GenerationParameters);

  v64 = *(v0 + 8);

  return v64();
}

uint64_t sub_1D23B19D8()
{
  v0[212] = v0[203];
  v1 = v0[26];
  v2 = v0[27];
  __swift_project_boxed_opaque_existential_1(v0 + 23, v1);
  v5 = (*(v2 + 136) + **(v2 + 136));
  v3 = swift_task_alloc();
  v0[213] = v3;
  *v3 = v0;
  v3[1] = sub_1D23B0E18;

  return v5(v1, v2);
}

uint64_t sub_1D23B1B04()
{
  v0[212] = v0[205];
  v1 = v0[26];
  v2 = v0[27];
  __swift_project_boxed_opaque_existential_1(v0 + 23, v1);
  v5 = (*(v2 + 136) + **(v2 + 136));
  v3 = swift_task_alloc();
  v0[213] = v3;
  *v3 = v0;
  v3[1] = sub_1D23B0E18;

  return v5(v1, v2);
}

uint64_t sub_1D23B1C30()
{
  v0[212] = v0[210];
  v1 = v0[26];
  v2 = v0[27];
  __swift_project_boxed_opaque_existential_1(v0 + 23, v1);
  v5 = (*(v2 + 136) + **(v2 + 136));
  v3 = swift_task_alloc();
  v0[213] = v3;
  *v3 = v0;
  v3[1] = sub_1D23B0E18;

  return v5(v1, v2);
}

uint64_t sub_1D23B1D5C()
{
  sub_1D23B7984();

  return sub_1D2870F68();
}

uint64_t sub_1D23B1D84(void *a1, uint64_t a2)
{
  v20[2] = a2;
  v3 = sub_1D2872008();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  result = (*(v8 + 16))(v7, v8);
  v10 = v3;
  v11 = 0;
  v22 = *(result + 16);
  v20[1] = v4 + 16;
  v21 = (v4 + 8);
  while (1)
  {
    v12 = v11;
    if (v22 == v11)
    {
      goto LABEL_11;
    }

    if (v11 >= *(result + 16))
    {
      break;
    }

    v13 = result;
    (*(v4 + 16))(v6, result + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v11, v10);
    v14 = sub_1D2871F98();
    v16 = v15;
    type metadata accessor for ImageGeneration.GenerationParameters();
    if (v14 == sub_1D2871F98() && v16 == v17)
    {

      (*v21)(v6, v10);
LABEL_11:

      return v22 != v12;
    }

    ++v11;
    v19 = sub_1D2879618();

    (*v21)(v6, v10);
    result = v13;
    if (v19)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D23B1FC8(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  v33 = a2;
  v7 = type metadata accessor for ImageGeneration.PreviewStatus(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA748);
  v37 = *(v10 - 8);
  v38 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v36 = &v30 - v11;
  v12 = sub_1D2871818();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D2873CB8();
  v34 = *(v16 - 8);
  v35 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2872648();
  (*(v13 + 16))(v15, a1, v12);
  v19 = sub_1D2873CA8();
  v20 = sub_1D28789F8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v32 = a3;
    v22 = v21;
    v30 = swift_slowAlloc();
    v31 = v9;
    v39 = v30;
    *v22 = 136315650;
    sub_1D23B75AC(&qword_1ED8A6C90);
    v23 = sub_1D28795C8();
    v25 = v24;
    (*(v13 + 8))(v15, v12);
    v26 = sub_1D23D7C84(v23, v25, &v39);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2048;
    *(v22 + 14) = v33;
    *(v22 + 22) = 2048;
    *(v22 + 24) = a4;
    _os_log_impl(&dword_1D226E000, v19, v20, "startGeneratingPreviewsStream - %s - image index %ld - generate progress %f", v22, 0x20u);
    v27 = v30;
    __swift_destroy_boxed_opaque_existential_0(v30);
    v9 = v31;
    MEMORY[0x1D38A3520](v27, -1, -1);
    MEMORY[0x1D38A3520](v22, -1, -1);
  }

  else
  {

    (*(v13 + 8))(v15, v12);
  }

  (*(v34 + 8))(v18, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDA50);
  *v9 = a4;
  sub_1D28786E8();
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA738);
  v28 = v36;
  sub_1D2878738();
  return (*(v37 + 8))(v28, v38);
}

uint64_t sub_1D23B23FC(uint64_t a1)
{
  v2 = type metadata accessor for ImageGeneration.PreviewStatus(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA748);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  v9 = *a1;
  v10 = *(a1 + 8);
  LOBYTE(a1) = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA778);
  *v4 = v9;
  *(v4 + 1) = v10;
  v4[16] = a1;
  sub_1D233E72C(v9, v10, a1);
  sub_1D28786E8();
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA738);
  sub_1D2878738();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1D23B259C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - v2;
  if ([objc_opt_self() isMainThread])
  {
    sub_1D2878568();
    return sub_1D239DDE8(sub_1D23B7870, v0);
  }

  else
  {
    v5 = sub_1D28785F8();
    (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
    sub_1D2878568();
    sub_1D2870F78();
    v6 = v0;
    v7 = sub_1D2878558();
    v8 = swift_allocObject();
    v9 = MEMORY[0x1E69E85E0];
    v8[2] = v7;
    v8[3] = v9;
    v8[4] = v6;
    sub_1D22AE01C(0, 0, v3, &unk_1D2883F80, v8);
  }
}

uint64_t sub_1D23B272C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v68 = a2;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA730);
  v67 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v64 = &v55 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDA40);
  v65 = *(v6 - 8);
  v66 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v63 = &v55 - v7;
  v8 = sub_1D2873CB8();
  v60 = *(v8 - 8);
  v61 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D2871818();
  v71 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v62 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v55 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v55 - v17;
  v19 = a1[1];
  v59 = *a1;
  v58 = v19;
  v57 = a1[2];
  v20 = v3 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager__selectedGenerator;
  swift_beginAccess();
  if (*(v20 + 24))
  {
    sub_1D22D7044(v20, v72);
    v21 = v73;
    v22 = v74;
    __swift_project_boxed_opaque_existential_1(v72, v73);
    (*(v22 + 112))(v21, v22);
    __swift_destroy_boxed_opaque_existential_0(v72);
  }

  sub_1D2871808();
  v23 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager_generationBatchIdentifier;
  swift_beginAccess();
  (*(v71 + 24))(v3 + v23, v18, v11);
  swift_endAccess();
  sub_1D2872648();
  sub_1D2870F78();
  v24 = v10;
  v25 = sub_1D2873CA8();
  v26 = sub_1D28789F8();

  v27 = os_log_type_enabled(v25, v26);
  v69 = v18;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v71;
    v31 = v29;
    v72[0] = v29;
    *v28 = 136315138;
    (*(v30 + 16))(v16, v3 + v23, v11);
    sub_1D23B75AC(&qword_1ED8A6C90);
    v56 = v24;
    v32 = sub_1D28795C8();
    v33 = v11;
    v35 = v34;
    v36 = *(v30 + 8);
    v37 = v33;
    v36(v16, v33);
    v38 = sub_1D23D7C84(v32, v35, v72);

    *(v28 + 4) = v38;
    _os_log_impl(&dword_1D226E000, v25, v26, "startGeneratingPreviewsStream - new generationBatchIdentifier: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    v39 = v31;
    v18 = v69;
    MEMORY[0x1D38A3520](v39, -1, -1);
    MEMORY[0x1D38A3520](v28, -1, -1);

    (*(v60 + 8))(v56, v61);
  }

  else
  {

    (*(v60 + 8))(v24, v61);
    v37 = v11;
  }

  sub_1D239E708(v18);
  v40 = v71;
  v41 = *(v71 + 16);
  v42 = v37;
  v41(v16, v3 + v23, v37);
  v43 = v62;
  v44 = (v41)(v62, v16, v37);
  v61 = &v55;
  MEMORY[0x1EEE9AC00](v44);
  *(&v55 - 6) = v43;
  *(&v55 - 5) = v3;
  v45 = v58;
  *(&v55 - 4) = v59;
  *(&v55 - 3) = v45;
  *(&v55 - 2) = v57;
  type metadata accessor for ImageGeneration.PreviewStatus(0);
  LODWORD(v59) = *MEMORY[0x1E69E8790];
  v60 = v3;
  v67 = *(v67 + 104);
  v46 = v64;
  v47 = v40;
  (v67)(v64);
  v48 = v63;
  sub_1D2878778();
  v49 = *(v47 + 8);
  v49(v16, v42);
  v50 = (v49)(v43, v42);
  MEMORY[0x1EEE9AC00](v50);
  v51 = v60;
  *(&v55 - 4) = v48;
  *(&v55 - 3) = v51;
  v53 = v69;
  v52 = v70;
  *(&v55 - 2) = v69;
  (v67)(v46, v59, v52);
  sub_1D2878778();
  (*(v65 + 8))(v48, v66);
  return (v49)(v53, v42);
}

uint64_t sub_1D23B2E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a2;
  v37 = a4;
  v41 = a3;
  v39 = a1;
  v40 = sub_1D2871818();
  v35 = *(v40 - 8);
  v38 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA738);
  v30 = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v30 - v9;
  v32 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDA40);
  v31 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v30 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v30 - v17;
  v34 = &v30 - v17;
  v19 = sub_1D28785F8();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  (*(v12 + 16))(v15, v36, v11);
  (*(v7 + 16))(v10, v39, v6);
  v20 = v35;
  (*(v35 + 16))(v5, v37, v40);
  sub_1D2878568();
  sub_1D2870F78();
  v21 = sub_1D2878558();
  v22 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v23 = (v13 + *(v7 + 80) + v22) & ~*(v7 + 80);
  v24 = (v8 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (*(v20 + 80) + v24 + 8) & ~*(v20 + 80);
  v26 = swift_allocObject();
  v27 = MEMORY[0x1E69E85E0];
  *(v26 + 16) = v21;
  *(v26 + 24) = v27;
  (*(v12 + 32))(v26 + v22, v15, v31);
  (*(v7 + 32))(v26 + v23, v32, v30);
  v28 = v40;
  *(v26 + v24) = v41;
  (*(v20 + 32))(v26 + v25, v33, v28);
  sub_1D22AE01C(0, 0, v34, &unk_1D2883F40, v26);
  return sub_1D2878728();
}

uint64_t sub_1D23B3224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v8 = type metadata accessor for ImageGeneration.PreviewStatus(0);
  v7[9] = v8;
  v7[10] = *(v8 - 8);
  v7[11] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA748);
  v7[12] = v9;
  v7[13] = *(v9 - 8);
  v7[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDA30);
  v7[15] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA750);
  v7[16] = v10;
  v7[17] = *(v10 - 8);
  v7[18] = swift_task_alloc();
  v7[19] = sub_1D2878568();
  v7[20] = sub_1D2878558();
  v12 = sub_1D28784F8();
  v7[21] = v12;
  v7[22] = v11;

  return MEMORY[0x1EEE6DFA0](sub_1D23B3428, v12, v11);
}

uint64_t sub_1D23B3428()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDA40);
  sub_1D2878658();
  v1 = sub_1D2878558();
  v0[23] = v1;
  v2 = swift_task_alloc();
  v0[24] = v2;
  *v2 = v0;
  v2[1] = sub_1D23B3508;
  v3 = v0[15];
  v4 = v0[16];
  v5 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DB90](v3, v1, v5, v4, v0 + 2);
}

uint64_t sub_1D23B3508()
{
  v2 = *v1;

  v3 = *(v2 + 168);
  v4 = *(v2 + 176);
  if (v0)
  {
    v5 = sub_1D23B383C;
  }

  else
  {
    v5 = sub_1D23B3628;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D23B3628()
{
  v1 = v0[15];
  if ((*(v0[10] + 48))(v1, 1, v0[9]) == 1)
  {
    (*(v0[17] + 8))(v0[18], v0[16]);

    v0[4] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA738);
    sub_1D2878748();
    sub_1D239EEE4(v0[8]);

    v2 = v0[1];

    return v2();
  }

  else
  {
    v5 = v0[13];
    v4 = v0[14];
    v6 = v0[12];
    sub_1D23B81C8(v1, v0[11], type metadata accessor for ImageGeneration.PreviewStatus);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA738);
    sub_1D2878738();
    (*(v5 + 8))(v4, v6);
    v7 = sub_1D2878558();
    v0[23] = v7;
    v8 = swift_task_alloc();
    v0[24] = v8;
    *v8 = v0;
    v8[1] = sub_1D23B3508;
    v9 = v0[15];
    v10 = v0[16];
    v11 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6DB90](v9, v7, v11, v10, v0 + 2);
  }
}

uint64_t sub_1D23B383C()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];

  (*(v2 + 8))(v1, v3);
  v0[3] = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA738);
  sub_1D2878748();
  sub_1D239EEE4(v0[8]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D23B3930(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA740);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  (*(v3 + 16))(&v8 - v4, a1, v2);
  LODWORD(a1) = (*(v3 + 88))(v5, v2);
  v6 = *MEMORY[0x1E69E8760];
  result = (*(v3 + 8))(v5, v2);
  if (a1 == v6)
  {
    return sub_1D28786B8();
  }

  return result;
}

uint64_t sub_1D23B3A78()
{
  v1 = v0;
  v2 = sub_1D2871818();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D2873CB8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2872648();
  sub_1D2870F78();
  v10 = sub_1D2873CA8();
  v11 = sub_1D28789F8();

  v12 = os_log_type_enabled(v10, v11);
  v30 = v3;
  v31 = v2;
  if (v12)
  {
    v13 = swift_slowAlloc();
    v29 = v6;
    v14 = v13;
    v28 = swift_slowAlloc();
    v32[0] = v28;
    *v14 = 136315138;
    v15 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager_generationBatchIdentifier;
    swift_beginAccess();
    (*(v3 + 16))(v5, v1 + v15, v2);
    sub_1D23B75AC(&qword_1ED8A6C90);
    v16 = sub_1D28795C8();
    v17 = v2;
    v19 = v18;
    (*(v3 + 8))(v5, v17);
    v20 = sub_1D23D7C84(v16, v19, v32);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_1D226E000, v10, v11, "Reset - we are at batch index %s", v14, 0xCu);
    v21 = v28;
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x1D38A3520](v21, -1, -1);
    MEMORY[0x1D38A3520](v14, -1, -1);

    (*(v7 + 8))(v9, v29);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  if (*(*(v1 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager__testGenerators) + 16) || *(*(v1 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager__generators) + 16))
  {
    v22 = v1 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager__selectedGenerator;
    swift_beginAccess();
    if (*(v22 + 24))
    {
      sub_1D22D7044(v22, v32);
      v23 = v33;
      v24 = v34;
      __swift_project_boxed_opaque_existential_1(v32, v33);
      (*(v24 + 104))(v23, v24);
      __swift_destroy_boxed_opaque_existential_0(v32);
    }
  }

  sub_1D2871808();
  v25 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager_generationBatchIdentifier;
  swift_beginAccess();
  (*(v30 + 40))(v1 + v25, v5, v31);
  return swift_endAccess();
}

uint64_t sub_1D23B3E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a1;
  v6 = type metadata accessor for ImageGeneration.PreviewImage(0);
  v27 = *(v6 - 8);
  v7 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA780);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v26 - v15;
  v17 = sub_1D28785F8();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v10 + 16))(v13, a1, v9);
  sub_1D23B8100(a3, v8, type metadata accessor for ImageGeneration.PreviewImage);
  sub_1D2878568();
  sub_1D2870F78();
  v18 = sub_1D2878558();
  v19 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v20 = (v11 + *(v27 + 80) + v19) & ~*(v27 + 80);
  v21 = swift_allocObject();
  v22 = MEMORY[0x1E69E85E0];
  *(v21 + 2) = v18;
  *(v21 + 3) = v22;
  *(v21 + 4) = a2;
  (*(v10 + 32))(&v21[v19], v13, v9);
  sub_1D23B81C8(v8, &v21[v20], type metadata accessor for ImageGeneration.PreviewImage);
  v23 = sub_1D22AE01C(0, 0, v16, &unk_1D2883F98, v21);
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = a2;
  sub_1D2870F78();
  return sub_1D2878728();
}

uint64_t sub_1D23B415C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[29] = a5;
  v6[30] = a6;
  v6[28] = a4;
  v6[31] = type metadata accessor for ImageGeneration.FinalImageStatus(0);
  v6[32] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA790);
  v6[33] = v7;
  v6[34] = *(v7 - 8);
  v6[35] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA780);
  v6[36] = v8;
  v9 = *(v8 - 8);
  v6[37] = v9;
  v6[38] = *(v9 + 64);
  v6[39] = swift_task_alloc();
  v10 = sub_1D2872438();
  v6[40] = v10;
  v6[41] = *(v10 - 8);
  v6[42] = swift_task_alloc();
  v6[43] = swift_task_alloc();
  type metadata accessor for PlaygroundImage();
  v6[44] = swift_task_alloc();
  v6[45] = swift_task_alloc();
  v6[46] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA490);
  v6[47] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE30);
  v6[48] = swift_task_alloc();
  v6[49] = swift_task_alloc();
  v6[50] = swift_task_alloc();
  sub_1D2878568();
  v6[51] = sub_1D2878558();
  v12 = sub_1D28784F8();
  v6[52] = v12;
  v6[53] = v11;

  return MEMORY[0x1EEE6DFA0](sub_1D23B4434, v12, v11);
}

uint64_t sub_1D23B4434()
{
  v1 = *(v0 + 224);
  v2 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager__selectedGenerator;
  swift_beginAccess();
  sub_1D22BD1D0(v1 + v2, v0 + 56, &qword_1EC6D9A08);
  if (*(v0 + 80))
  {
    v3 = *(v0 + 224);
    sub_1D227268C((v0 + 56), v0 + 16);
    v4 = *(v3 + 32);
    *(v0 + 432) = v4;
    *(v0 + 440) = *(v3 + 40);
    if (v4)
    {
      sub_1D2870F78();
      v43 = (v4 + *v4);
      v5 = swift_task_alloc();
      *(v0 + 448) = v5;
      *v5 = v0;
      v5[1] = sub_1D23B4B8C;
      v6 = *(v0 + 376);

      return v43(v6);
    }

    v9 = *(v0 + 392);
    v10 = *(v0 + 400);
    v11 = *(v0 + 320);
    v12 = *(v0 + 328);
    (*(v12 + 56))(v10, 1, 1, v11);
    sub_1D22BD1D0(v10, v9, &unk_1EC6DDE30);
    v13 = *(v12 + 48);
    *(v0 + 464) = v13;
    *(v0 + 472) = (v12 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (v13(v9, 1, v11) == 1)
    {
      v14 = &unk_1EC6DDE30;
      v15 = *(v0 + 392);
LABEL_17:
      sub_1D22BD238(v15, v14);
      v22 = *(v0 + 312);
      v23 = *(v0 + 288);
      v24 = *(v0 + 296);
      v25 = *(v0 + 232);
      v26 = *(v0 + 40);
      v27 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v26);
      (*(v24 + 16))(v22, v25, v23);
      v28 = (*(v24 + 80) + 16) & ~*(v24 + 80);
      v29 = swift_allocObject();
      *(v0 + 480) = v29;
      (*(v24 + 32))(v29 + v28, v22, v23);
      v30 = *(v0 + 40);
      v31 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v30);
      v32 = (*(v31 + 24))(v30, v31);
      v44 = (*(v27 + 96) + **(v27 + 96));
      v33 = swift_task_alloc();
      *(v0 + 488) = v33;
      *v33 = v0;
      v33[1] = sub_1D23B5308;
      v34 = *(v0 + 352);
      v35 = *(v0 + 240);

      return v44(v34, v35, sub_1D23B8050, v29, v32, v26, v27);
    }

    (*(*(v0 + 328) + 32))(*(v0 + 344), *(v0 + 392), *(v0 + 320));
    if (qword_1ED8A5B78 != -1)
    {
      swift_once();
    }

    v16 = *(v0 + 344);
    v17 = *(v0 + 240);
    v18 = type metadata accessor for ImageGeneration.PreviewImage(0);
    v19 = sub_1D23BF3E8(v16, *(v17 + *(v18 + 20)), v0 + 136);
    if (!*(v0 + 160))
    {
      (*(*(v0 + 328) + 8))(*(v0 + 344), *(v0 + 320), v19);
      v14 = &qword_1EC6DA470;
      v15 = v0 + 136;
      goto LABEL_17;
    }

    sub_1D227268C((v0 + 136), v0 + 96);
    v20 = *(v0 + 120);
    v21 = *(v0 + 128);
    __swift_project_boxed_opaque_existential_1((v0 + 96), v20);
    (*(v21 + 8))(v20, v21);
    v36 = *(v0 + 360);
    v37 = *(v0 + 368);
    (*(*(v0 + 328) + 8))(*(v0 + 344), *(v0 + 320));
    sub_1D23B81C8(v36, v37, type metadata accessor for PlaygroundImage);
    __swift_destroy_boxed_opaque_existential_0(v0 + 96);
    v38 = *(v0 + 400);
    v39 = *(v0 + 368);
    v40 = *(v0 + 280);
    v41 = *(v0 + 264);
    v42 = *(v0 + 272);
    sub_1D23B8100(v39, *(v0 + 256), type metadata accessor for PlaygroundImage);
    swift_storeEnumTagMultiPayload();
    sub_1D2878738();
    (*(v42 + 8))(v40, v41);
    *(v0 + 216) = 0;
    sub_1D2878748();
    sub_1D23B8168(v39, type metadata accessor for PlaygroundImage);
    sub_1D22BD238(v38, &unk_1EC6DDE30);
    __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  }

  else
  {

    sub_1D22BD238(v0 + 56, &qword_1EC6D9A08);
    sub_1D23B7B64();
    *(v0 + 200) = swift_allocError();
    sub_1D2878748();
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1D23B4B8C()
{
  v2 = *v1;
  *(*v1 + 456) = v0;

  if (v0)
  {
    v3 = v2[52];
    v4 = v2[53];
    v5 = sub_1D23B5730;
  }

  else
  {
    sub_1D22A576C(v2[54]);
    v3 = v2[52];
    v4 = v2[53];
    v5 = sub_1D23B4CA8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D23B4CA8()
{
  v1 = *(v0 + 376);
  v2 = type metadata accessor for ImageGeneration.GenerationParameters();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_1D22BD238(v1, &qword_1EC6DA490);
    v3 = 1;
  }

  else
  {
    (*(*(v0 + 328) + 16))(*(v0 + 400), v1 + *(v2 + 92), *(v0 + 320));
    sub_1D23B8168(v1, type metadata accessor for ImageGeneration.GenerationParameters);
    v3 = 0;
  }

  v4 = *(v0 + 456);
  v5 = *(v0 + 392);
  v6 = *(v0 + 400);
  v7 = *(v0 + 320);
  v8 = *(v0 + 328);
  (*(v8 + 56))(v6, v3, 1, v7);
  sub_1D22BD1D0(v6, v5, &unk_1EC6DDE30);
  v9 = *(v8 + 48);
  *(v0 + 464) = v9;
  *(v0 + 472) = (v8 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v9(v5, 1, v7) == 1)
  {
    v10 = &unk_1EC6DDE30;
    v11 = *(v0 + 392);
LABEL_12:
    sub_1D22BD238(v11, v10);
    v19 = *(v0 + 312);
    v20 = *(v0 + 288);
    v21 = *(v0 + 296);
    v22 = *(v0 + 232);
    v23 = *(v0 + 40);
    v24 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v23);
    (*(v21 + 16))(v19, v22, v20);
    v25 = (*(v21 + 80) + 16) & ~*(v21 + 80);
    v26 = swift_allocObject();
    *(v0 + 480) = v26;
    (*(v21 + 32))(v26 + v25, v19, v20);
    v27 = *(v0 + 40);
    v28 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v27);
    v29 = (*(v28 + 24))(v27, v28);
    v42 = (*(v24 + 96) + **(v24 + 96));
    v30 = swift_task_alloc();
    *(v0 + 488) = v30;
    *v30 = v0;
    v30[1] = sub_1D23B5308;
    v31 = *(v0 + 352);
    v32 = *(v0 + 240);

    return v42(v31, v32, sub_1D23B8050, v26, v29, v23, v24);
  }

  (*(*(v0 + 328) + 32))(*(v0 + 344), *(v0 + 392), *(v0 + 320));
  if (qword_1ED8A5B78 != -1)
  {
    swift_once();
  }

  v12 = *(v0 + 344);
  v13 = *(v0 + 240);
  v14 = type metadata accessor for ImageGeneration.PreviewImage(0);
  v15 = sub_1D23BF3E8(v12, *(v13 + *(v14 + 20)), v0 + 136);
  if (!*(v0 + 160))
  {
    (*(*(v0 + 328) + 8))(*(v0 + 344), *(v0 + 320), v15);
    v10 = &qword_1EC6DA470;
    v11 = v0 + 136;
    goto LABEL_12;
  }

  sub_1D227268C((v0 + 136), v0 + 96);
  v16 = *(v0 + 120);
  v17 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1((v0 + 96), v16);
  (*(v17 + 8))(v16, v17);
  if (v4)
  {
    v18 = *(v0 + 400);
    (*(*(v0 + 328) + 8))(*(v0 + 344), *(v0 + 320));
    sub_1D22BD238(v18, &unk_1EC6DDE30);
    __swift_destroy_boxed_opaque_existential_0(v0 + 96);
    *(v0 + 208) = v4;
    sub_1D2878748();
  }

  else
  {
    v34 = *(v0 + 360);
    v35 = *(v0 + 368);
    (*(*(v0 + 328) + 8))(*(v0 + 344), *(v0 + 320));
    sub_1D23B81C8(v34, v35, type metadata accessor for PlaygroundImage);
    __swift_destroy_boxed_opaque_existential_0(v0 + 96);
    v36 = *(v0 + 400);
    v37 = *(v0 + 368);
    v38 = *(v0 + 280);
    v39 = *(v0 + 264);
    v40 = *(v0 + 272);
    sub_1D23B8100(v37, *(v0 + 256), type metadata accessor for PlaygroundImage);
    swift_storeEnumTagMultiPayload();
    sub_1D2878738();
    (*(v40 + 8))(v38, v39);
    *(v0 + 216) = 0;
    sub_1D2878748();
    sub_1D23B8168(v37, type metadata accessor for PlaygroundImage);
    sub_1D22BD238(v36, &unk_1EC6DDE30);
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_1D23B5308()
{
  v2 = *v1;
  *(*v1 + 496) = v0;

  v3 = *(v2 + 424);
  v4 = *(v2 + 416);
  if (v0)
  {
    v5 = sub_1D23B5860;
  }

  else
  {
    v5 = sub_1D23B545C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D23B545C()
{
  v1 = v0[58];
  v2 = v0[50];
  v3 = v0[48];
  v4 = v0[40];

  sub_1D22BD1D0(v2, v3, &unk_1EC6DDE30);
  if (v1(v3, 1, v4) == 1)
  {
    sub_1D22BD238(v0[48], &unk_1EC6DDE30);
  }

  else
  {
    (*(v0[41] + 32))(v0[42], v0[48], v0[40]);
    if (qword_1ED8A5B78 != -1)
    {
      swift_once();
    }

    v5 = v0[44];
    v7 = v0[41];
    v6 = v0[42];
    v8 = v0[40];
    v9 = v0[30];
    v10 = type metadata accessor for ImageGeneration.PreviewImage(0);
    sub_1D23BFB90(v5, *(v9 + *(v10 + 20)), v6);
    (*(v7 + 8))(v6, v8);
  }

  sub_1D23B81C8(v0[44], v0[46], type metadata accessor for PlaygroundImage);
  v11 = v0[50];
  v12 = v0[46];
  v13 = v0[35];
  v14 = v0[33];
  v15 = v0[34];
  sub_1D23B8100(v12, v0[32], type metadata accessor for PlaygroundImage);
  swift_storeEnumTagMultiPayload();
  sub_1D2878738();
  (*(v15 + 8))(v13, v14);
  v0[27] = 0;
  sub_1D2878748();
  sub_1D23B8168(v12, type metadata accessor for PlaygroundImage);
  sub_1D22BD238(v11, &unk_1EC6DDE30);
  __swift_destroy_boxed_opaque_existential_0((v0 + 2));

  v16 = v0[1];

  return v16();
}

uint64_t sub_1D23B5730()
{
  v1 = v0[54];

  sub_1D22A576C(v1);
  v0[26] = v0[57];
  sub_1D2878748();
  __swift_destroy_boxed_opaque_existential_0((v0 + 2));

  v2 = v0[1];

  return v2();
}

uint64_t sub_1D23B5860()
{
  v1 = v0[50];

  sub_1D22BD238(v1, &unk_1EC6DDE30);
  v0[26] = v0[62];
  sub_1D2878748();
  __swift_destroy_boxed_opaque_existential_0((v0 + 2));

  v2 = v0[1];

  return v2();
}

uint64_t sub_1D23B5998(uint64_t a1)
{
  v2 = type metadata accessor for ImageGeneration.FinalImageStatus(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA790);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  v9 = *a1;
  v10 = *(a1 + 8);
  *v4 = *a1;
  *(v4 + 1) = v10;
  LOBYTE(a1) = *(a1 + 16);
  v4[16] = a1;
  swift_storeEnumTagMultiPayload();
  sub_1D233E72C(v9, v10, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA780);
  sub_1D2878738();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1D23B5B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  (*(v6 + 16))(&v11 - v7, a1, v5);
  LODWORD(a1) = (*(v6 + 88))(v8, v5);
  v9 = *MEMORY[0x1E69E8760];
  result = (*(v6 + 8))(v8, v5);
  if (a1 == v9)
  {
    sub_1D28786B8();
    return sub_1D23B259C();
  }

  return result;
}

uint64_t sub_1D23B5C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1D2878568();
  *(v4 + 24) = sub_1D2878558();
  v6 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D23B5D00, v6, v5);
}

uint64_t sub_1D23B5D00()
{

  sub_1D23B3A78();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D23B5D64()
{
  v0 = sub_1D23B7984();
  v1 = *(v0 + 16);
  sub_1D2870F68();
  if (v1)
  {
    v26 = MEMORY[0x1E69E7CC0];
    sub_1D23D81F8(0, v1, 0);
    v2 = v26;
    v3 = v0 + 32;
    do
    {
      sub_1D22D7044(v3, v23);
      v4 = v24;
      v5 = v25;
      __swift_project_boxed_opaque_existential_1(v23, v24);
      v6 = (*(v5 + 16))(v4, v5);
      __swift_destroy_boxed_opaque_existential_0(v23);
      v26 = v2;
      v8 = *(v2 + 16);
      v7 = *(v2 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_1D23D81F8((v7 > 1), v8 + 1, 1);
        v2 = v26;
      }

      *(v2 + 16) = v8 + 1;
      *(v2 + 8 * v8 + 32) = v6;
      v3 += 40;
      --v1;
    }

    while (v1);

    v10 = *(v2 + 16);
    if (v10)
    {
      goto LABEL_7;
    }

LABEL_25:
    v12 = MEMORY[0x1E69E7CC0];
LABEL_26:

    return v12;
  }

  v2 = MEMORY[0x1E69E7CC0];
  v10 = *(MEMORY[0x1E69E7CC0] + 16);
  if (!v10)
  {
    goto LABEL_25;
  }

LABEL_7:
  v11 = 0;
  v12 = MEMORY[0x1E69E7CC0];
  while (v11 < *(v2 + 16))
  {
    v13 = *(v2 + 32 + 8 * v11);
    v14 = *(v13 + 16);
    v15 = v12[2];
    v16 = v15 + v14;
    if (__OFADD__(v15, v14))
    {
      goto LABEL_28;
    }

    sub_1D2870F68();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v16 <= v12[3] >> 1)
    {
      if (*(v13 + 16))
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (v15 <= v16)
      {
        v18 = v15 + v14;
      }

      else
      {
        v18 = v15;
      }

      v12 = sub_1D27CC780(isUniquelyReferenced_nonNull_native, v18, 1, v12);
      if (*(v13 + 16))
      {
LABEL_20:
        v19 = (v12[3] >> 1) - v12[2];
        result = sub_1D2872008();
        if (v19 < v14)
        {
          goto LABEL_30;
        }

        swift_arrayInitWithCopy();

        if (v14)
        {
          v20 = v12[2];
          v21 = __OFADD__(v20, v14);
          v22 = v20 + v14;
          if (v21)
          {
            goto LABEL_31;
          }

          v12[2] = v22;
        }

        goto LABEL_9;
      }
    }

    if (v14)
    {
      goto LABEL_29;
    }

LABEL_9:
    if (v10 == ++v11)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1D23B5FEC()
{
  v1 = sub_1D2873CB8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  sub_1D23B3A78();
  *(v0 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager__generators) = MEMORY[0x1E69E7CC0];

  v12 = 0;
  memset(v11, 0, sizeof(v11));
  v5 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager__selectedGenerator;
  swift_beginAccess();
  sub_1D23B7AF4(v11, v0 + v5);
  swift_endAccess();
  sub_1D2872648();
  v6 = sub_1D2873CA8();
  v7 = sub_1D2878A08();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1D226E000, v6, v7, "Purged ImageGenerator instances", v8, 2u);
    MEMORY[0x1D38A3520](v8, -1, -1);
  }

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1D23B6184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  sub_1D2878568();
  v5[17] = sub_1D2878558();
  v7 = sub_1D28784F8();
  v5[18] = v7;
  v5[19] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D23B621C, v7, v6);
}

uint64_t sub_1D23B621C()
{
  sub_1D2673418();
  v1 = sub_1D2398D44();

  v3 = 0;
  if (v1)
  {
    v2 = *(v1 + 16);

    if (v2)
    {
      v3 = 1;
    }
  }

  v4 = *(v0 + 120);
  v5 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager__selectedGenerator;
  swift_beginAccess();
  sub_1D22BD1D0(v4 + v5, v0 + 56, &qword_1EC6D9A08);
  if (*(v0 + 80))
  {
    sub_1D227268C((v0 + 56), v0 + 16);
  }

  else
  {
    sub_1D22BD238(v0 + 56, &qword_1EC6D9A08);
    result = sub_1D23B7984();
    if (!*(result + 16))
    {
      __break(1u);
      return result;
    }

    sub_1D22D7044(result + 32, v0 + 16);
  }

  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v7);
  v11 = (*(v8 + 160) + **(v8 + 160));
  v9 = swift_task_alloc();
  *(v0 + 160) = v9;
  *v9 = v0;
  v9[1] = sub_1D23B6424;
  v10 = *(v0 + 128);

  return v11(v10, v3, v7, v8);
}

uint64_t sub_1D23B6424()
{
  v1 = *v0;

  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return MEMORY[0x1EEE6DFA0](sub_1D23B6544, v3, v2);
}

uint64_t sub_1D23B6544()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D23B65AC()
{
  sub_1D28797D8();
  MEMORY[0x1D38A2260](0);
  return sub_1D2879828();
}

uint64_t sub_1D23B65F0()
{
  sub_1D28797D8();
  MEMORY[0x1D38A2260](0);
  return sub_1D2879828();
}

uint64_t sub_1D23B6630()
{

  sub_1D22A576C(*(v0 + 32));

  v1 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager_generationBatchIdentifier;
  v2 = sub_1D2871818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1D22BD238(v0 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager__selectedGenerator, &qword_1EC6D9A08);

  return v0;
}

uint64_t sub_1D23B671C()
{
  sub_1D23B6630();

  return swift_deallocClassInstance();
}

uint64_t _s7ManagerCMa()
{
  result = qword_1ED8A5CE0;
  if (!qword_1ED8A5CE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D23B67C8()
{
  result = sub_1D2871818();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1D23B68C4(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDA40) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA738) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(sub_1D2871818() - 8);
  v12 = (v10 + *(v11 + 80) + 8) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = *(v1 + v10);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_1D22BDFF8;

  return sub_1D23B3224(a1, v13, v14, v1 + v6, v1 + v9, v15, v1 + v12);
}

unint64_t sub_1D23B6AAC(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x1D38A3540](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x1D38A3540](&v3, 8);
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

uint64_t sub_1D23B6B38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Bubble(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1D28797D8();
  sub_1D2846EE0();
  sub_1D2877F38();

  v10 = sub_1D2879828();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v21 = v2;
    v22 = v5;
    v23 = a2;
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_1D23B8100(*(v9 + 48) + v14 * v12, v8, type metadata accessor for Bubble);
      v15 = sub_1D2849278(v8, a1);
      sub_1D23B8168(v8, type metadata accessor for Bubble);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        v16 = 1;
        a2 = v23;
        goto LABEL_10;
      }
    }

    v17 = v21;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v17;
    v24 = *v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D25B792C();
      v19 = v24;
    }

    a2 = v23;
    sub_1D23B81C8(*(v19 + 48) + v14 * v12, v23, type metadata accessor for Bubble);
    sub_1D23B7008(v12);
    v16 = 0;
    *v17 = v24;
LABEL_10:
    v5 = v22;
  }

  else
  {
    v16 = 1;
  }

  return (*(v6 + 56))(a2, v16, 1, v5);
}

uint64_t sub_1D23B6D88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1D2871818();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1D23B75AC(&qword_1ED8A6CB0);
  v31 = a1;
  v10 = sub_1D2877EF8();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_1D23B75AC(&unk_1ED8A6CA0);
      v19 = sub_1D2877F98();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D25B7904();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_1D23B72B4(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_1D23B7008(unint64_t a1)
{
  v22 = type metadata accessor for Bubble(0);
  v3 = *(v22 - 8);
  result = MEMORY[0x1EEE9AC00](v22);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;
    sub_1D2870F78();
    v12 = sub_1D28790A8();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v13 = (v12 + 1) & v11;
      v14 = *(v3 + 72);
      while (1)
      {
        v15 = v14 * v10;
        sub_1D23B8100(*(v7 + 48) + v14 * v10, v6, type metadata accessor for Bubble);
        sub_1D28797D8();
        sub_1D2846EE0();
        sub_1D2877F38();

        v16 = sub_1D2879828();
        sub_1D23B8168(v6, type metadata accessor for Bubble);
        v17 = v16 & v11;
        if (a1 >= v13)
        {
          break;
        }

        if (v17 < v13)
        {
          goto LABEL_11;
        }

LABEL_12:
        v18 = v14 * a1;
        if ((v14 * a1) < v15 || *(v7 + 48) + v14 * a1 >= *(v7 + 48) + v15 + v14)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a1 = v10;
          if (v18 == v15)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        a1 = v10;
LABEL_6:
        v10 = (v10 + 1) & v11;
        if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      if (v17 < v13)
      {
        goto LABEL_6;
      }

LABEL_11:
      if (a1 < v17)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }

LABEL_16:

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v19 = *(v7 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v21;
    ++*(v7 + 36);
  }

  return result;
}

void sub_1D23B72B4(int64_t a1)
{
  v3 = sub_1D2871818();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;
    sub_1D2870F78();
    v12 = sub_1D28790A8();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v34 = (v12 + 1) & v11;
      v14 = *(v4 + 16);
      v13 = v4 + 16;
      v15 = v11;
      v16 = *(v13 + 56);
      v35 = v13;
      v32 = (v13 - 8);
      v33 = v14;
      do
      {
        v17 = v8;
        v18 = v16;
        v19 = v16 * v10;
        v33(v6, *(v7 + 48) + v16 * v10, v3);
        v20 = v7;
        v21 = v15;
        v22 = v20;
        sub_1D23B75AC(&qword_1ED8A6CB0);
        v23 = sub_1D2877EF8();
        (*v32)(v6, v3);
        v24 = v23 & v21;
        v15 = v21;
        if (a1 >= v34)
        {
          if (v24 >= v34 && a1 >= v24)
          {
LABEL_16:
            v7 = v22;
            v27 = *(v22 + 48);
            v16 = v18;
            v28 = v18 * a1;
            if (v18 * a1 < v19 || v27 + v18 * a1 >= (v27 + v19 + v18))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v10;
            }

            else
            {
              a1 = v10;
              if (v28 != v19)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v10;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v24 >= v34 || a1 >= v24)
        {
          goto LABEL_16;
        }

        v7 = v22;
        v16 = v18;
LABEL_5:
        v10 = (v10 + 1) & v15;
        v8 = v17;
      }

      while (((*(v17 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v29 = *(v7 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v31;
    ++*(v7 + 36);
  }
}

uint64_t sub_1D23B75AC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D2871818();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D23B75F0(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA738) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1D2871818();
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1 + v5;
  v10 = *(v1 + v5);
  v11 = *(v9 + 1);
  v12 = *(v9 + 2);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_1D22BDFF8;

  return sub_1D239FA58(a1, v6, v7, v8, v1 + v4, v10, v11, v12);
}

uint64_t sub_1D23B77BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BDFF8;

  return sub_1D23B5C68(a1, v4, v5, v6);
}

unint64_t sub_1D23B78C0()
{
  result = qword_1EC6DA768;
  if (!qword_1EC6DA768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DA768);
  }

  return result;
}

uint64_t sub_1D23B7914(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA490);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D23B7984()
{
  result = *(v0 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager__testGenerators);
  if (!*(result + 16))
  {
    if (qword_1ED8A4928 != -1)
    {
      swift_once();
    }

    sub_1D23CCC6C();
    v2 = sub_1D23B9618();
    if (v2 == 6)
    {
      if (sub_1D27D8C8C())
      {
        v3 = &unk_1F4DBCC10;
      }

      else
      {
        v3 = &unk_1F4DBCBE8;
      }
    }

    else
    {
      v4 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA798);
      v3 = swift_allocObject();
      v3[1] = xmmword_1D287F500;
      *(v3 + 32) = v4;
    }

    v5 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager__generators;
    if (!*(*(v0 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager__generators) + 16) || (v6 = *(v0 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager_generatorSources), sub_1D2870F68(), v7 = sub_1D2337CF8(v3, v6), , (v7 & 1) == 0))
    {
      *(v0 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager_generatorSources) = v3;

      *(v0 + v5) = sub_1D23B9664(*(v0 + 16), *(v0 + 56));
    }

    return *(v0 + v5);
  }

  return result;
}

uint64_t sub_1D23B7AF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A08);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D23B7B64()
{
  result = qword_1EC6DA770;
  if (!qword_1EC6DA770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DA770);
  }

  return result;
}

unint64_t sub_1D23B7BB8()
{
  result = qword_1ED89CDA0;
  if (!qword_1ED89CDA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED89CDA0);
  }

  return result;
}

uint64_t sub_1D23B7C04(float a1)
{
  v3 = *(sub_1D2871818() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA738) - 8);
  v7 = *(v1 + v5);
  v8 = v1 + ((v5 + *(v6 + 80) + 8) & ~*(v6 + 80));

  return sub_1D23B1FC8(v1 + v4, v7, v8, a1);
}

uint64_t sub_1D23B7D24(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 != -1)
  {
    return sub_1D23B7D3C(result, a2, a3, a4, a5, a6, a7 & 1);
  }

  return result;
}

uint64_t sub_1D23B7D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
    sub_1D2870F68();
    sub_1D2870F68();
  }

  return sub_1D2870F68();
}

uint64_t sub_1D23B7D88(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 != -1)
  {
    return sub_1D23B7DA0(result, a2, a3, a4, a5, a6, a7 & 1);
  }

  return result;
}

uint64_t sub_1D23B7DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
  }
}

uint64_t sub_1D23B7DF4(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA780) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for ImageGeneration.PreviewImage(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1D22BC8FC;

  return sub_1D23B415C(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t objectdestroy_25Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_41Tm(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  (*(*(v2 - 8) + 8))(v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80)), v2);

  return swift_deallocObject();
}

uint64_t sub_1D23B8078(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

uint64_t sub_1D23B8100(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D23B8168(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D23B81C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *sub_1D23B8230@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

unint64_t sub_1D23B8298()
{
  result = qword_1EC6DA7A0;
  if (!qword_1EC6DA7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DA7A0);
  }

  return result;
}

unint64_t sub_1D23B82F0()
{
  result = qword_1EC6DA7A8;
  if (!qword_1EC6DA7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DA7A8);
  }

  return result;
}

uint64_t dispatch thunk of ImageGeneration.ImageGenerator.checkLexiconValidity(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 32) + **(a4 + 32));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D22BDFF8;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ImageGeneration.ImageGenerator.checkEmojiValidity(of:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 40) + **(a5 + 40));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D22BDFF8;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of ImageGeneration.ImageGenerator.assignConfiguration()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 56) + **(a2 + 56));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D22BDFF8;

  return v7(a1, a2);
}

uint64_t dispatch thunk of ImageGeneration.ImageGenerator.rewriteConfiguration()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 64) + **(a2 + 64));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D22BDFF8;

  return v7(a1, a2);
}

uint64_t dispatch thunk of ImageGeneration.ImageGenerator.generatePreviewImages(progressHandler:retryErrorHandler:retryCount:previewIndex:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = (*(a8 + 88) + **(a8 + 88));
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1D23B89C0;

  return v19(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1D23B89C0(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of ImageGeneration.ImageGenerator.generateFinalImage(from:retryErrorHandler:retryCount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 96) + **(a7 + 96));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1D22BC8FC;

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of ImageGeneration.ImageGenerator.acquireModelManagerPolicyAssertion()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 128) + **(a2 + 128));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D22BDFF8;

  return v7(a1, a2);
}

uint64_t dispatch thunk of ImageGeneration.ImageGenerator.releaseModelManagerPolicyAssertion()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 136) + **(a2 + 136));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D22BDFF8;

  return v7(a1, a2);
}

uint64_t dispatch thunk of ImageGeneration.ImageGenerator.prewarmGenerator(for:hasCachedImage:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 160) + **(a4 + 160));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D22BC8FC;

  return v11(a1, a2, a3, a4);
}

uint64_t getEnumTagSinglePayload for GenerativePlaygroundProvider.PlaygroundType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GenerativePlaygroundProvider.PlaygroundType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D23B9130()
{
  result = qword_1EC6DA7B0;
  if (!qword_1EC6DA7B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA7B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DA7B0);
  }

  return result;
}

uint64_t sub_1D23B9194(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1D2878568();
  *(v1 + 24) = sub_1D2878558();
  v3 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D23B9E24, v3, v2);
}

uint64_t sub_1D23B9240()
{
  sub_1D2877F38();
}

uint64_t sub_1D23B932C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D23B9618();
  *a1 = result;
  return result;
}

void sub_1D23B935C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000065;
  v4 = 0x6369766544206E4FLL;
  v5 = 0xE600000000000000;
  v6 = 0x70756B636F4DLL;
  v7 = 0xE600000000000000;
  v8 = 0x646574746556;
  if (v2 != 4)
  {
    v8 = 1869440324;
    v7 = 0xE400000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x80000001D28AE710;
  v10 = 0xD000000000000011;
  if (v2 != 1)
  {
    v10 = 0x726576726553;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_1D23B9424()
{
  result = qword_1EC6DA7C0;
  if (!qword_1EC6DA7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DA7C0);
  }

  return result;
}

void sub_1D23B9478(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  sub_1D2870F78();
  v4 = a2;
  v3();
}

uint64_t sub_1D23B94E0(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1D2878568();
  *(v1 + 24) = sub_1D2878558();
  v3 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D23B9578, v3, v2);
}

uint64_t sub_1D23B9578()
{
  v1 = *(v0 + 16);

  v2 = sub_1D2872908();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D23B9618()
{
  v0 = sub_1D2879488();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D23B9664(uint64_t a1, int a2)
{
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  sub_1D23CCC6C();
  v4 = sub_1D23B9618();
  if (v4 != 6)
  {
    v10 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA798);
    v6 = swift_allocObject();
    *(v6 + 1) = xmmword_1D287F500;
    v6[32] = v10;
    v8 = 1;
LABEL_12:
    v62 = MEMORY[0x1E69E7CC0];
    sub_1D23D8568(0, v8, 0);
    v9 = v62;
    v50 = &v54;
    v11 = 32;
    v52 = a2;
    v51 = v6;
    while (1)
    {
      v12 = v6[v11];
      if (v12 > 2)
      {
        if (v12 == 3)
        {
          v34 = type metadata accessor for ExternalProviderInfoManager();
          swift_beginAccess();
          v35 = *(a1 + 16);
          if (*(v35 + 16) && (v36 = sub_1D25D0574(v34), (v37 & 1) != 0))
          {
            sub_1D22D7044(*(v35 + 56) + 40 * v36, &v59);
            sub_1D227268C(&v59, &aBlock);
            swift_endAccess();
            sub_1D227268C(&aBlock, &v59);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA520);
            swift_dynamicCast();
            v38 = v58;
          }

          else
          {
            swift_endAccess();
            swift_allocObject();
            v41 = sub_1D2870F78();
            v38 = sub_1D274E960(v41);
            v55 = v34;
            v56 = &off_1F4DD2C30;
            *&aBlock = v38;
            swift_beginAccess();
            sub_1D2870F78();
            sub_1D25CDC34(&aBlock, v34);
            swift_endAccess();
          }

          v42 = _s20MockupImageGeneratorCMa();
          v43 = swift_allocObject();
          *(v43 + 16) = 0;
          *(v43 + 24) = v38;
          v60 = v42;
          v61 = off_1F4DCA2D8;
          *&v59 = v43;
          goto LABEL_28;
        }

        if (v12 == 4)
        {
          v30 = _s20VettedImageGeneratorCMa();
          v31 = swift_allocObject();
          *(v31 + 16) = 0;
          v32 = &off_1F4DC9CF8;
        }

        else
        {
          v30 = _s18DemoImageGeneratorCMa();
          v31 = swift_allocObject();
          *(v31 + 16) = 0;
          *(v31 + 32) = 0;
          *(v31 + 40) = 0;
          *(v31 + 24) = 0;
          v32 = &off_1F4DC9E40;
        }
      }

      else
      {
        if (v12 == 1)
        {
          v13 = sub_1D23C6B54();
          v14 = sub_1D23C7448();
          v15 = _s30ExternalProviderImageGeneratorCMa();
          v16 = swift_allocObject();
          *(v16 + 16) = "ConfigToFirstImage";
          *(v16 + 24) = 18;
          *(v16 + 32) = 2;
          *(v16 + 40) = 0;
          *(v16 + 48) = 0;
          v17 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_currentGenerationTaskContinuation;
          v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA4A0);
          (*(*(v18 - 8) + 56))(v16 + v17, 1, 1, v18);
          *(v16 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_shouldCancelUpcomingGeneration) = 0;
          v19 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_externalConfiguration;
          v20 = sub_1D2873728();
          (*(*(v20 - 8) + 56))(v16 + v19, 1, 1, v20);
          *(v16 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_session) = 0;
          v21 = (v16 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_backgroundTaskIdentifier);
          *v21 = 0xD000000000000040;
          v21[1] = 0x80000001D28B2B70;
          *(v16 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_currentBackgroundTask) = 0;
          v22 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_backgroundTaskContinuation;
          v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E3360);
          (*(*(v23 - 8) + 56))(v16 + v22, 1, 1, v23);
          *(v16 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_progressTimer) = 0;
          *(v16 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_providerInfoManager) = v13;
          *(v16 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_effectProgressDurationEstimator) = v14;
          v24 = objc_opt_self();
          sub_1D2870F78();
          sub_1D2870F78();
          v25 = [v24 mainBundle];
          v26 = [v25 bundleIdentifier];

          if (v26)
          {
            v27 = sub_1D28780A8();
            v29 = v28;

            if (v27 == 0xD000000000000021 && 0x80000001D28B0980 == v29)
            {

LABEL_35:
              if ((byte_1ED8A63E0 & 1) == 0)
              {
                byte_1ED8A63E0 = 1;
                v45 = [objc_opt_self() sharedScheduler];
                v46 = sub_1D2878068();
                v47 = swift_allocObject();
                swift_weakInit();
                v56 = sub_1D23B9E04;
                v57 = v47;
                *&aBlock = MEMORY[0x1E69E9820];
                *(&aBlock + 1) = 1107296256;
                v54 = sub_1D23B9478;
                v55 = &block_descriptor_5;
                v48 = _Block_copy(&aBlock);

                [v45 registerForTaskWithIdentifier:v46 usingQueue:0 launchHandler:v48];
                _Block_release(v48);
              }
            }

            else
            {
              v44 = sub_1D2879618();

              if (v44)
              {
                goto LABEL_35;
              }
            }
          }

          v60 = v15;
          v61 = &off_1F4DD8820;

          *&v59 = v16;
          a2 = v52;
          v6 = v51;
          goto LABEL_28;
        }

        v30 = _s22OnDeviceImageGeneratorCMa(0);
        swift_allocObject();
        v33 = sub_1D2870F78();
        v31 = sub_1D235F244(v33, a2);
        v32 = &off_1F4DC17A8;
      }

      v60 = v30;
      v61 = v32;
      *&v59 = v31;
LABEL_28:
      sub_1D227268C(&v59, &aBlock);
      v62 = v9;
      v40 = *(v9 + 16);
      v39 = *(v9 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_1D23D8568((v39 > 1), v40 + 1, 1);
        v9 = v62;
      }

      *(v9 + 16) = v40 + 1;
      sub_1D227268C(&aBlock, v9 + 40 * v40 + 32);
      ++v11;
      if (!--v8)
      {

        return v9;
      }
    }
  }

  v5 = sub_1D27D8C8C();
  if (v5)
  {
    v6 = &unk_1F4DBCC10;
  }

  else
  {
    v6 = &unk_1F4DBCBE8;
  }

  v7 = &unk_1F4DBCBF8;
  if (v5)
  {
    v7 = &unk_1F4DBCC20;
  }

  v8 = *v7;
  if (*v7)
  {
    goto LABEL_12;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

unint64_t sub_1D23B9E3C()
{
  result = qword_1EC6DA7C8;
  if (!qword_1EC6DA7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DA7C8);
  }

  return result;
}

unsigned __int8 *sub_1D23B9E90(size_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImagePredictableSeed.PredictableSeedAsset(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  sub_1D23B7BB8();
  v8 = sub_1D2878A58();
  v9 = sub_1D2878068();
  v10 = [v8 BOOLForKey_];

  if (!v10)
  {
    return 0;
  }

  result = sub_1D23BA5E8(a1);
  if (!result)
  {
    return result;
  }

  if (*(result + 2) <= a2)
  {

    return 0;
  }

  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1D23BED14(&result[((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * a2], v7, type metadata accessor for ImagePredictableSeed.PredictableSeedAsset);

    v12 = *&v7[*(v4 + 20)];
    sub_1D23BEDE4(v7, type metadata accessor for ImagePredictableSeed.PredictableSeedAsset);
    return v12;
  }

  return result;
}

uint64_t sub_1D23BA074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for ImagePredictableSeed.ComposingPredictableSeedAsset(0);
  v33 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v32 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - v14;
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  sub_1D23B7BB8();
  v16 = sub_1D2878A58();
  v17 = sub_1D2878068();
  v18 = [v16 BOOLForKey_];

  if (v18)
  {
    v19 = sub_1D2872438();
    (*(*(v19 - 8) + 16))(v15, a2, v19);
    *&v15[*(v8 + 20)] = a1;
    *&v15[*(v8 + 24)] = a3;
    v20 = swift_beginAccess();
    v21 = *(v4 + 16);
    MEMORY[0x1EEE9AC00](v20);
    *(&v31 - 2) = a2;
    *(&v31 - 1) = a3;
    sub_1D2870F68();
    v22 = sub_1D25A6260(sub_1D23BECF8, (&v31 - 4), v21);
    v24 = v23;

    if ((v24 & 1) == 0)
    {
      swift_beginAccess();
      sub_1D23BBE58(v22, v12);
      swift_endAccess();
      sub_1D23BEDE4(v12, type metadata accessor for ImagePredictableSeed.ComposingPredictableSeedAsset);
    }

    v25 = v32;
    sub_1D23BED14(v15, v32, type metadata accessor for ImagePredictableSeed.ComposingPredictableSeedAsset);
    swift_beginAccess();
    v26 = *(v4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + 16) = v26;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v26 = sub_1D27CCE50(0, v26[2] + 1, 1, v26);
      *(v4 + 16) = v26;
    }

    v29 = v26[2];
    v28 = v26[3];
    if (v29 >= v28 >> 1)
    {
      v26 = sub_1D27CCE50(v28 > 1, v29 + 1, 1, v26);
    }

    v26[2] = v29 + 1;
    sub_1D23BED7C(v25, v26 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v29, type metadata accessor for ImagePredictableSeed.ComposingPredictableSeedAsset);
    *(v4 + 16) = v26;
    swift_endAccess();
    return sub_1D23BEDE4(v15, type metadata accessor for ImagePredictableSeed.ComposingPredictableSeedAsset);
  }

  else
  {
    swift_beginAccess();
    *(v4 + 16) = MEMORY[0x1E69E7CC0];
  }
}

void *ImagePredictableSeed.__allocating_init(servicesFetcher:)()
{
  v0 = swift_allocObject();
  v0[2] = MEMORY[0x1E69E7CC0];

  v0[3] = 0x6174636964657250;
  v0[4] = 0xEF64656553656C62;
  v0[5] = 0xD000000000000021;
  v0[6] = 0x80000001D28B2BE0;
  v0[7] = 0x657069636572;
  v0[8] = 0xE600000000000000;
  v0[9] = 45;
  v0[10] = 0xE100000000000000;
  return v0;
}

void *sub_1D23BA4F4()
{
  type metadata accessor for ImagePredictableSeed();
  result = swift_allocObject();
  result[2] = MEMORY[0x1E69E7CC0];
  result[3] = 0x6174636964657250;
  result[4] = 0xEF64656553656C62;
  result[5] = 0xD000000000000021;
  result[6] = 0x80000001D28B2BE0;
  result[7] = 0x657069636572;
  result[8] = 0xE600000000000000;
  result[9] = 45;
  result[10] = 0xE100000000000000;
  qword_1EC6DA7D0 = result;
  return result;
}

uint64_t static ImagePredictableSeed.deprecated_shared.getter()
{
  if (qword_1EC6D8C10 != -1)
  {
    swift_once();
  }

  return sub_1D2870F78();
}

unsigned __int8 *sub_1D23BA5E8(size_t a1)
{
  v174 = a1;
  v159 = sub_1D2873CB8();
  v165 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159);
  v163 = &v130 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = type metadata accessor for ImagePredictableSeed.PredictableSeedAsset(0);
  v145 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v148 = &v130 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v147 = &v130 - v5;
  v150 = sub_1D2872438();
  *&v164 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150);
  v149 = &v130 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA7E8);
  MEMORY[0x1EEE9AC00](v155);
  v154 = &v130 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v152 = &v130 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v158 = &v130 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v162 = &v130 - v13;
  v168 = sub_1D2871528();
  v167 = *(v168 - 8);
  MEMORY[0x1EEE9AC00](v168);
  v175 = &v130 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = sub_1D2873AA8();
  v173 = *(v176 - 8);
  MEMORY[0x1EEE9AC00](v176);
  v16 = &v130 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = sub_1D2871538();
  v17 = *(v172 - 1);
  MEMORY[0x1EEE9AC00](v172);
  v19 = &v130 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1B8);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v166 = &v130 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v130 - v23;
  v25 = sub_1D28716B8();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v160 = &v130 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v169 = &v130 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v130 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v130 - v34;
  sub_1D28710A8();
  swift_allocObject();
  v177 = sub_1D2871098();
  v151 = v1;
  sub_1D23BD268();
  v170 = *(v26 + 56);
  v171 = v26 + 56;
  v170(v24, 1, 1, v25);
  (*(v17 + 104))(v19, *MEMORY[0x1E6968F70], v172);
  sub_1D2871688();
  sub_1D2872348();
  sub_1D2873A78();
  sub_1D28715D8();

  v36 = v173;
  v37 = *(v173 + 8);
  v156 = v16;
  v37(v16, v176);
  v38 = v26;
  v40 = v26 + 8;
  v39 = *(v26 + 8);
  v153 = v32;
  v41 = v32;
  v42 = v35;
  v39(v41, v25);
  v43 = [objc_opt_self() defaultManager];
  v44 = sub_1D28789D8();

  if (!v44)
  {
    v39(v42, v25);

    return 0;
  }

  v161 = v42;
  v45 = v175;
  v172 = v44;
  sub_1D28789B8();
  v46 = v45;
  sub_1D2871518();
  if (!v182)
  {
    v174 = MEMORY[0x1E69E7CC0];
LABEL_109:

    (*(v167 + 8))(v46, v168);
    v39(v161, v25);
    result = v174;
    if (*(v174 + 16))
    {
      return result;
    }

    return 0;
  }

  v138 = v37;
  v139 = v36 + 8;
  v157 = 0;
  v144 = (v38 + 32);
  v141 = (v36 + 56);
  v140 = (v36 + 48);
  v137 = (v36 + 32);
  v136 = &v180 + 1;
  v143 = (v38 + 16);
  v142 = (v165 + 8);
  v135 = (v164 + 16);
  v134 = (v164 + 8);
  v174 = MEMORY[0x1E69E7CC0];
  *&v47 = 136315394;
  v164 = v47;
  v48 = v169;
  v49 = v170;
  v50 = v166;
  while ((swift_dynamicCast() & 1) == 0)
  {
    v49(v50, 1, 1, v25);
    sub_1D22BD238(v50, &qword_1EC6DA1B8);
LABEL_6:
    sub_1D2871518();
    if (!v182)
    {
      goto LABEL_109;
    }
  }

  v165 = v39;
  v173 = v40;
  v49(v50, 0, 1, v25);
  (*v144)(v48, v50, v25);
  v51 = v157;
  v52 = sub_1D28716C8();
  if (v51)
  {
LABEL_9:
    v54 = v51;
    v157 = 0;
    v55 = v160;
    v56 = v163;
    sub_1D28725C8();
    (*v143)(v55, v48, v25);
    v57 = v54;
    v58 = sub_1D2873CA8();
    v59 = sub_1D2878A18();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = v55;
      v62 = swift_slowAlloc();
      v180 = v62;
      *v60 = v164;
      v63 = sub_1D2871558();
      v65 = v64;
      v39 = v165;
      v165(v61, v25);
      v66 = v63;
      v48 = v169;
      v67 = sub_1D23D7C84(v66, v65, &v180);

      *(v60 + 4) = v67;
      *(v60 + 12) = 2080;
      swift_getErrorValue();
      v68 = sub_1D2879748();
      v70 = sub_1D23D7C84(v68, v69, &v180);

      *(v60 + 14) = v70;
      v50 = v166;
      _os_log_impl(&dword_1D226E000, v58, v59, "Unable to load assets for recipe at url: %s withe error: %s", v60, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38A3520](v62, -1, -1);
      MEMORY[0x1D38A3520](v60, -1, -1);

      v40 = v173;
      (*v142)(v163, v159);
    }

    else
    {

      v40 = v173;
      v39 = v165;
      v165(v55, v25);
      (*v142)(v56, v159);
    }

    goto LABEL_15;
  }

  v133 = v52;
  v132 = v53;
  v157 = 0;
  sub_1D2871548();
  sub_1D2873A18();
  v71 = v162;
  sub_1D28739F8();
  v72 = v153;
  sub_1D28715C8();
  v73 = sub_1D2871598();
  v75 = v74;
  v165(v72, v25);
  v76 = v158;
  sub_1D2873A48();
  v77 = v176;
  (*v141)(v76, 0, 1, v176);
  v78 = *(v155 + 48);
  v79 = v154;
  sub_1D23BDC8C(v71, v154);
  sub_1D23BDC8C(v76, v79 + v78);
  v80 = *v140;
  if ((*v140)(v79, 1, v77) == 1)
  {
    v131 = v73;
    sub_1D22BD238(v76, &qword_1EC6DAE70);
    if (v80(v79 + v78, 1, v77) == 1)
    {
      sub_1D22BD238(v79, &qword_1EC6DAE70);
      v48 = v169;
      goto LABEL_23;
    }

    sub_1D22D6D60(v133, v132);
    v48 = v169;
    goto LABEL_20;
  }

  v81 = v152;
  sub_1D23BDC8C(v79, v152);
  if (v80(v79 + v78, 1, v77) == 1)
  {

    sub_1D22D6D60(v133, v132);
    sub_1D22BD238(v158, &qword_1EC6DAE70);
    v138(v81, v77);
    v48 = v169;
LABEL_20:
    sub_1D22BD238(v79, &qword_1EC6DA7E8);
LABEL_21:
    v46 = v175;
    v49 = v170;
    v40 = v173;
    v39 = v165;
    sub_1D22BD238(v162, &qword_1EC6DAE70);
    v39(v48, v25);
    goto LABEL_6;
  }

  v131 = v73;
  v82 = v156;
  (*v137)(v156, v79 + v78, v77);
  sub_1D23BF018(&qword_1EC6DA7F8, MEMORY[0x1E69E8450]);
  v83 = sub_1D2877F98();
  v84 = v138;
  v138(v82, v77);
  sub_1D22BD238(v158, &qword_1EC6DAE70);
  v84(v81, v77);
  v50 = v166;
  sub_1D22BD238(v79, &qword_1EC6DAE70);
  v48 = v169;
  if ((v83 & 1) == 0)
  {

    sub_1D22D6D60(v133, v132);
    goto LABEL_21;
  }

LABEL_23:
  v85 = v131;
  v180 = v131;
  v181 = v75;
  v86 = v151;
  v87 = *(v151 + 64);
  v178 = *(v151 + 56);
  v179 = v87;
  sub_1D22BD06C();
  if ((sub_1D2878FF8() & 1) == 0)
  {

    sub_1D22D6D60(v133, v132);
    sub_1D22BD238(v162, &qword_1EC6DAE70);
    v40 = v173;
    v39 = v165;
    v165(v48, v25);
    goto LABEL_16;
  }

  v180 = v85;
  v181 = v75;
  v88 = *(v86 + 80);
  v178 = *(v86 + 72);
  v179 = v88;
  v89 = sub_1D2878F58();

  v90 = *(v89 + 16);
  if (!v90)
  {

    sub_1D22D6D60(v133, v132);
    sub_1D22BD238(v162, &qword_1EC6DAE70);
    v40 = v173;
    v39 = v165;
    v165(v48, v25);
LABEL_47:
    v46 = v175;
    v49 = v170;
    v50 = v166;
    goto LABEL_6;
  }

  v91 = (v89 + 16 + 16 * v90);
  v93 = *v91;
  v92 = v91[1];
  sub_1D2870F68();

  v95 = HIBYTE(v92) & 0xF;
  v96 = v93 & 0xFFFFFFFFFFFFLL;
  if ((v92 & 0x2000000000000000) != 0)
  {
    v97 = HIBYTE(v92) & 0xF;
  }

  else
  {
    v97 = v93 & 0xFFFFFFFFFFFFLL;
  }

  if (!v97)
  {
    sub_1D22D6D60(v133, v132);
    sub_1D22BD238(v162, &qword_1EC6DAE70);
    v40 = v173;
    v39 = v165;
    v165(v48, v25);

    goto LABEL_47;
  }

  v50 = v166;
  if ((v92 & 0x1000000000000000) != 0)
  {
    v131 = sub_1D23BDD70(v93, v92, 10);
    v120 = v119;

    v40 = v173;
    v39 = v165;
    if (v120)
    {
      goto LABEL_92;
    }

    goto LABEL_98;
  }

  v40 = v173;
  v39 = v165;
  if ((v92 & 0x2000000000000000) == 0)
  {
    if ((v93 & 0x1000000000000000) != 0)
    {
      result = ((v92 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_1D2879208();
    }

    v98 = *result;
    if (v98 == 43)
    {
      if (v96 < 1)
      {
        goto LABEL_116;
      }

      v95 = v96 - 1;
      if (v96 == 1)
      {
        goto LABEL_89;
      }

      v99 = 0;
      if (result)
      {
        v106 = result + 1;
        while (1)
        {
          v107 = *v106 - 48;
          if (v107 > 9)
          {
            goto LABEL_89;
          }

          v108 = 10 * v99;
          if ((v99 * 10) >> 64 != (10 * v99) >> 63)
          {
            goto LABEL_89;
          }

          v99 = v108 + v107;
          if (__OFADD__(v108, v107))
          {
            goto LABEL_89;
          }

          ++v106;
          if (!--v95)
          {
            goto LABEL_90;
          }
        }
      }

LABEL_93:
      LOBYTE(v95) = 0;
      goto LABEL_90;
    }

    if (v98 == 45)
    {
      if (v96 < 1)
      {
        goto LABEL_115;
      }

      v95 = v96 - 1;
      if (v96 == 1)
      {
        goto LABEL_89;
      }

      v99 = 0;
      if (result)
      {
        v100 = result + 1;
        while (1)
        {
          v101 = *v100 - 48;
          if (v101 > 9)
          {
            break;
          }

          v102 = 10 * v99;
          if ((v99 * 10) >> 64 != (10 * v99) >> 63)
          {
            break;
          }

          v99 = v102 - v101;
          if (__OFSUB__(v102, v101))
          {
            break;
          }

          ++v100;
          if (!--v95)
          {
            goto LABEL_90;
          }
        }

LABEL_89:
        v99 = 0;
        LOBYTE(v95) = 1;
LABEL_90:
        v131 = v99;
        goto LABEL_91;
      }

      goto LABEL_93;
    }

    if (v96)
    {
      v112 = 0;
      if (!result)
      {
LABEL_81:
        LOBYTE(v95) = 0;
LABEL_95:
        v131 = v112;
LABEL_91:
        LOBYTE(v178) = v95;
        v118 = v95;

        if (v118)
        {
LABEL_92:
          sub_1D22D6D60(v133, v132);
          sub_1D22BD238(v162, &qword_1EC6DAE70);
LABEL_15:
          v39(v48, v25);
LABEL_16:
          v46 = v175;
          v49 = v170;
          goto LABEL_6;
        }

LABEL_98:
        sub_1D23BF018(&qword_1EC6DA7F0, MEMORY[0x1E696E4A0]);
        v121 = v149;
        v122 = v150;
        v123 = v132;
        v51 = v157;
        sub_1D2871088();
        if (!v51)
        {
          v124 = v147;
          (*v135)(v147, v121, v122);
          *(v124 + *(v146 + 20)) = v131;
          sub_1D23BED14(v124, v148, type metadata accessor for ImagePredictableSeed.PredictableSeedAsset);
          v125 = v174;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v157 = 0;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v125 = sub_1D27CCE28(0, v125[2] + 1, 1, v125);
          }

          v39 = v165;
          v128 = v125[2];
          v127 = v125[3];
          if (v128 >= v127 >> 1)
          {
            v174 = sub_1D27CCE28(v127 > 1, v128 + 1, 1, v125);
          }

          else
          {
            v174 = v125;
          }

          sub_1D22D6D60(v133, v132);
          sub_1D23BEDE4(v147, type metadata accessor for ImagePredictableSeed.PredictableSeedAsset);
          (*v134)(v149, v150);
          sub_1D22BD238(v162, &qword_1EC6DAE70);
          v39(v48, v25);
          v129 = v174;
          *(v174 + 16) = v128 + 1;
          sub_1D23BED7C(v148, v129 + ((*(v145 + 80) + 32) & ~*(v145 + 80)) + *(v145 + 72) * v128, type metadata accessor for ImagePredictableSeed.PredictableSeedAsset);
          goto LABEL_16;
        }

        sub_1D22BD238(v162, &qword_1EC6DAE70);
        sub_1D22D6D60(v133, v123);
        goto LABEL_9;
      }

      while (1)
      {
        v113 = *result - 48;
        if (v113 > 9)
        {
          break;
        }

        v114 = 10 * v112;
        if ((v112 * 10) >> 64 != (10 * v112) >> 63)
        {
          break;
        }

        v112 = v114 + v113;
        if (__OFADD__(v114, v113))
        {
          break;
        }

        ++result;
        if (!--v96)
        {
          goto LABEL_81;
        }
      }
    }

    v112 = 0;
    LOBYTE(v95) = 1;
    goto LABEL_95;
  }

  v180 = v93;
  v181 = v92 & 0xFFFFFFFFFFFFFFLL;
  if (v93 == 43)
  {
    if (!v95)
    {
      goto LABEL_114;
    }

    if (--v95)
    {
      v99 = 0;
      v109 = v136;
      while (1)
      {
        v110 = *v109 - 48;
        if (v110 > 9)
        {
          break;
        }

        v111 = 10 * v99;
        if ((v99 * 10) >> 64 != (10 * v99) >> 63)
        {
          break;
        }

        v99 = v111 + v110;
        if (__OFADD__(v111, v110))
        {
          break;
        }

        ++v109;
        if (!--v95)
        {
          goto LABEL_90;
        }
      }
    }

    goto LABEL_89;
  }

  if (v93 != 45)
  {
    if (v95)
    {
      v99 = 0;
      v115 = &v180;
      while (1)
      {
        v116 = *v115 - 48;
        if (v116 > 9)
        {
          break;
        }

        v117 = 10 * v99;
        if ((v99 * 10) >> 64 != (10 * v99) >> 63)
        {
          break;
        }

        v99 = v117 + v116;
        if (__OFADD__(v117, v116))
        {
          break;
        }

        v115 = (v115 + 1);
        if (!--v95)
        {
          goto LABEL_90;
        }
      }
    }

    goto LABEL_89;
  }

  if (v95)
  {
    if (--v95)
    {
      v99 = 0;
      v103 = v136;
      while (1)
      {
        v104 = *v103 - 48;
        if (v104 > 9)
        {
          break;
        }

        v105 = 10 * v99;
        if ((v99 * 10) >> 64 != (10 * v99) >> 63)
        {
          break;
        }

        v99 = v105 - v104;
        if (__OFSUB__(v105, v104))
        {
          break;
        }

        ++v103;
        if (!--v95)
        {
          goto LABEL_90;
        }
      }
    }

    goto LABEL_89;
  }

  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
  return result;
}

uint64_t sub_1D23BBD30(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D278BCB8(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1D23BBDBC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D278BCCC(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = &v5[5 * a1];
    sub_1D227268C(v9 + 2, a2);
    result = memmove(v9 + 2, v9 + 72, 40 * (v8 - a1));
    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

size_t sub_1D23BBE58@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D278BD6C(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for ImagePredictableSeed.ComposingPredictableSeedAsset(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_1D23BED7C(v11, a2, type metadata accessor for ImagePredictableSeed.ComposingPredictableSeedAsset);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1D23BBFB4@<X0>(unint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(v9);
    v9 = result;
  }

  v11 = *(v9 + 16);
  if (v11 <= a1)
  {
    __break(1u);
  }

  else
  {
    v12 = v11 - 1;
    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
    v14 = *(v13 + 72);
    v15 = v9 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + v14 * a1;
    result = sub_1D22EC9BC(v15, a4, a3);
    if (v14 > 0 || v15 >= v15 + v14 + v14 * (v12 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v14)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    *(v9 + 16) = v12;
    *v4 = v9;
  }

  return result;
}

uint64_t sub_1D23BC120(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_1D278F320(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_1D23BC1B0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D278BE48(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 8 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 40), 8 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1D23BC238(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v28 = a2;
  v5 = sub_1D2873CB8();
  v26[1] = *(v5 - 8);
  v26[2] = v5;
  MEMORY[0x1EEE9AC00](v5);
  v26[0] = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ImagePredictableSeed.PredictableSeedAsset(0);
  MEMORY[0x1EEE9AC00](v7);
  v27 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA830);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v26 - v10;
  v12 = type metadata accessor for ImagePredictableSeed.ComposingPredictableSeedAsset(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  sub_1D23B7BB8();
  v16 = sub_1D2878A58();
  v17 = sub_1D2878068();
  v18 = [v16 BOOLForKey_];

  if (v18)
  {
    v19 = swift_beginAccess();
    v20 = *(v3 + 16);
    MEMORY[0x1EEE9AC00](v19);
    v21 = v28;
    v26[-2] = a1;
    v26[-1] = v21;
    sub_1D2870F68();
    sub_1D274BCF4(sub_1D23BF060, v20, v11);

    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      return sub_1D22BD238(v11, &qword_1EC6DA830);
    }

    else
    {
      sub_1D23BED7C(v11, v15, type metadata accessor for ImagePredictableSeed.ComposingPredictableSeedAsset);
      v23 = *&v15[*(v12 + 20)];
      v24 = sub_1D2872438();
      v25 = v27;
      (*(*(v24 - 8) + 16))(v27, v15, v24);
      *(v25 + *(v7 + 20)) = v23;
      sub_1D23BC750(v25);
      sub_1D23BEDE4(v25, type metadata accessor for ImagePredictableSeed.PredictableSeedAsset);
      return sub_1D23BEDE4(v15, type metadata accessor for ImagePredictableSeed.ComposingPredictableSeedAsset);
    }
  }

  else
  {
    swift_beginAccess();
    *(v3 + 16) = MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1D23BC750(uint64_t a1)
{
  v60 = a1;
  v2 = v1;
  v65 = *MEMORY[0x1E69E9840];
  v3 = sub_1D2873AA8();
  v4 = *(v3 - 8);
  v61 = v3;
  v62 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D2871538();
  v57 = *(v7 - 8);
  v58 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v55 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1B8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v52 - v10;
  v12 = sub_1D28716B8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v56 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v52 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v52 - v19;
  v21 = sub_1D28710C8();
  MEMORY[0x1EEE9AC00](v21 - 8);
  sub_1D2871108();
  swift_allocObject();
  v22 = sub_1D28710F8();
  sub_1D28710B8();
  v54 = v22;
  sub_1D28710D8();
  v53 = v2;
  sub_1D23BD268();
  (*(v13 + 56))(v11, 1, 1, v12);
  (*(v57 + 104))(v55, *MEMORY[0x1E6968F70], v58);
  sub_1D2871688();
  sub_1D2872348();
  sub_1D2873A78();
  sub_1D28715D8();

  v23 = *(v62 + 8);
  v55 = v6;
  v62 += 8;
  v23(v6, v61);
  v24 = *(v13 + 8);
  v57 = v13 + 8;
  v58 = v12;
  v52 = v24;
  v24(v17, v12);
  v25 = objc_opt_self();
  v26 = [v25 defaultManager];
  sub_1D2871658();
  v27 = sub_1D2878068();

  LOBYTE(v22) = [v26 directoryExistsAtPath_];

  if ((v22 & 1) == 0)
  {
    v28 = [v25 defaultManager];
    v29 = sub_1D28715B8();
    v63 = 0;
    v30 = [v28 createDirectoryAtURL:v29 withIntermediateDirectories:1 attributes:0 error:&v63];

    if (!v30)
    {
      v51 = v63;
      sub_1D28714B8();

      swift_willThrow();
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    v31 = v63;
  }

  v32 = v53[8];
  v34 = v53[9];
  v33 = v53[10];
  v63 = v53[7];
  v64 = v32;
  sub_1D2870F68();
  MEMORY[0x1D38A0C50](v34, v33);
  v36 = v63;
  v35 = v64;
  v63 = *(v60 + *(type metadata accessor for ImagePredictableSeed.PredictableSeedAsset(0) + 20));
  v37 = sub_1D28795C8();
  v39 = v38;
  v63 = v36;
  v64 = v35;
  sub_1D2870F68();
  MEMORY[0x1D38A0C50](v37, v39);

  v40 = v55;
  sub_1D2873A48();
  v41 = v56;
  sub_1D28715D8();

  v23(v40, v61);
  sub_1D2872438();
  sub_1D23BF018(&qword_1EC6DA838, MEMORY[0x1E696E4A0]);
  v42 = v59;
  v43 = sub_1D28710E8();
  if (!v42)
  {
    v45 = v43;
    v46 = v44;
    sub_1D28716F8();
    sub_1D22D6D60(v45, v46);
  }

  v47 = v41;
  v48 = v58;
  v49 = v52;
  v52(v47, v58);
  return v49(v20, v48);
}

id sub_1D23BCDCC()
{
  v32[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1D2873CB8();
  v30 = *(v0 - 8);
  v31 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v29 = v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1D2871538();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1B8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v28 - v7;
  v9 = sub_1D28716B8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_opt_self() defaultManager];
  sub_1D23BD268();
  (*(v10 + 56))(v8, 1, 1, v9);
  (*(v3 + 104))(v5, *MEMORY[0x1E6968F70], v2);
  sub_1D2871688();
  v14 = sub_1D28715B8();
  (*(v10 + 8))(v12, v9);
  v32[0] = 0;
  LODWORD(v2) = [v13 removeItemAtURL:v14 error:v32];

  v15 = v32[0];
  if (v2)
  {

    return v15;
  }

  else
  {
    v28[1] = v32[0];
    v17 = v32[0];
    v18 = sub_1D28714B8();

    swift_willThrow();
    v19 = v29;
    sub_1D28725C8();
    v20 = v18;
    v21 = sub_1D2873CA8();
    v22 = sub_1D2878A18();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v32[0] = v24;
      *v23 = 136315138;
      swift_getErrorValue();
      v25 = sub_1D2879748();
      v27 = sub_1D23D7C84(v25, v26, v32);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_1D226E000, v21, v22, "Unable to delete stored seeds with error: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x1D38A3520](v24, -1, -1);
      MEMORY[0x1D38A3520](v23, -1, -1);
    }

    else
    {
    }

    return (*(v30 + 8))(v19, v31);
  }
}

uint64_t sub_1D23BD268()
{
  v31[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1D2873AA8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30[0] = sub_1D28716B8();
  v4 = *(v30[0] - 8);
  MEMORY[0x1EEE9AC00](v30[0]);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v30 - v8;
  v10 = objc_opt_self();
  v11 = [v10 defaultManager];
  v31[0] = 0;
  v12 = [v11 URLForDirectory:9 inDomain:1 appropriateForURL:0 create:1 error:v31];

  v13 = v31[0];
  if (v12)
  {
    sub_1D2871638();
    v14 = v13;

    sub_1D2873A78();
    sub_1D28715D8();
    (*(v1 + 8))(v3, v0);
    v15 = [v10 defaultManager];
    sub_1D2871658();
    v16 = sub_1D2878068();

    v17 = [v15 directoryExistsAtPath_];

    if (v17)
    {
LABEL_5:
      v23 = sub_1D2871658();
      v24 = *(v4 + 8);
      v25 = v6;
      v26 = v30[0];
      v24(v25, v30[0]);
      v24(v9, v26);
      return v23;
    }

    v18 = [v10 defaultManager];
    v19 = sub_1D28715B8();
    v31[0] = 0;
    v20 = [v18 createDirectoryAtURL:v19 withIntermediateDirectories:1 attributes:0 error:v31];

    v21 = v31[0];
    if (v20)
    {
      v22 = v31[0];
      goto LABEL_5;
    }
  }

  else
  {
    v28 = v31[0];
    v21 = sub_1D28714B8();

    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }

  v29 = v21;
  sub_1D28714B8();

  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1D23BD628(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1D2879208();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_1D23BDD70(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t ImagePredictableSeed.deinit()
{

  return v0;
}

uint64_t ImagePredictableSeed.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D23BD9F8@<X0>(void *a1@<X8>)
{
  v2 = swift_allocObject();
  v2[2] = MEMORY[0x1E69E7CC0];

  v2[3] = 0x6174636964657250;
  v2[4] = 0xEF64656553656C62;
  v2[5] = 0xD000000000000021;
  v2[6] = 0x80000001D28B2BE0;
  v2[7] = 0x657069636572;
  v2[8] = 0xE600000000000000;
  v2[9] = 45;
  v2[10] = 0xE100000000000000;
  *a1 = v2;
  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D23BDB00(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1D23BDB48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D23BDBF0()
{
  result = sub_1D2872438();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D23BDC8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_1D23BDCFC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA800);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_1D23BDD70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;
  sub_1D2870F68();
  result = sub_1D28782E8();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1D23BE880();
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
      result = sub_1D2879208();
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

unsigned __int8 *sub_1D23BE2FC(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;
  sub_1D2870F68();
  result = sub_1D28782E8();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1D23BE880();
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
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
      result = sub_1D2879208();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
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
                  goto LABEL_129;
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

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_1D23BE880()
{
  v0 = sub_1D28782F8();
  v4 = sub_1D23BE900(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1D23BE900(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1D2878F28();
    if (!v9 || (v10 = v9, v11 = sub_1D23BDCFC(v9, 0), v12 = sub_1D23BEA58(v14, (v11 + 4), v10, a1, a2, a3, a4), sub_1D2870F68(), , v12 == v10))
    {
      v13 = sub_1D2878168();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1D2878168();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1D2879208();
LABEL_4:

  return sub_1D2878168();
}

unint64_t sub_1D23BEA58(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_1D23BEC78(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1D2878238();
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
          result = sub_1D2879208();
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

    result = sub_1D23BEC78(v12, a6, a7);
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

    result = sub_1D2878218();
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

uint64_t sub_1D23BEC78(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1D2878278();
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
    v5 = MEMORY[0x1D38A0CA0](15, a1 >> 16);
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

uint64_t sub_1D23BED14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D23BED7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D23BEDE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2872438();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2872438();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D23BEF48()
{
  result = sub_1D2872438();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D23BF018(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D23BF07C()
{
  type metadata accessor for ImagePredictableOutput();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = xmmword_1D28844C0;
  *(result + 40) = 0x80000001D28B2DA0;
  *(result + 48) = 0xD000000000000021;
  *(result + 56) = 0x80000001D28B2BE0;
  *(result + 64) = 0x657069636572;
  *(result + 72) = 0xE600000000000000;
  strcpy((result + 80), "preview-image");
  *(result + 94) = -4864;
  *(result + 96) = 0x6D692D6C616E6966;
  *(result + 104) = 0xEB00000000656761;
  *(result + 112) = 45;
  *(result + 120) = 0xE100000000000000;
  qword_1ED8B0280 = result;
  return result;
}

void sub_1D23BF14C(void (*a1)(_BYTE *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA898);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for ImagePredictableOutput.PredictableOutputAsset(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  sub_1D23B7BB8();
  v12 = sub_1D2878A58();
  v13 = sub_1D2878068();
  v14 = [v12 BOOLForKey_];

  if (!v14)
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return;
  }

  sub_1D23C0D5C(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1D22BD238(v7, &qword_1EC6DA898);
LABEL_11:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0;
    return;
  }

  sub_1D23C37BC(v7, v11, type metadata accessor for ImagePredictableOutput.PredictableOutputAsset);
  v15 = *&v11[*(v8 + 20)];
  if (*(v15 + 16) <= v17)
  {
    sub_1D23C38D4(v11, type metadata accessor for ImagePredictableOutput.PredictableOutputAsset);
    goto LABEL_11;
  }

  if (v17 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1D22D7044(v15 + 40 * v17 + 32, a3);
    sub_1D23C38D4(v11, type metadata accessor for ImagePredictableOutput.PredictableOutputAsset);
  }
}

double sub_1D23BF3E8@<D0>(void (*a1)(_BYTE *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a1;
  v21 = a2;
  v4 = type metadata accessor for ImagePredictableOutput.FinalImage(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA898);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v20 - v8;
  v10 = type metadata accessor for ImagePredictableOutput.PredictableOutputAsset(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  sub_1D23B7BB8();
  v14 = sub_1D2878A58();
  v15 = sub_1D2878068();
  v16 = [v14 BOOLForKey_];

  if (!v16)
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  sub_1D23C0D5C(v22, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1D22BD238(v9, &qword_1EC6DA898);
  }

  else
  {
    sub_1D23C37BC(v9, v13, type metadata accessor for ImagePredictableOutput.PredictableOutputAsset);
    v18 = &v13[*(v10 + 24)];
    if (*(v18 + *(v4 + 20)) == v21)
    {
      sub_1D23C386C(v18, v6, type metadata accessor for ImagePredictableOutput.FinalImage);
      *(a3 + 24) = type metadata accessor for PlaygroundImage();
      *(a3 + 32) = &protocol witness table for PlaygroundImage;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
      sub_1D23C37BC(v6, boxed_opaque_existential_1, type metadata accessor for PlaygroundImage);
      sub_1D23C38D4(v13, type metadata accessor for ImagePredictableOutput.PredictableOutputAsset);
      return result;
    }

    sub_1D23C38D4(v13, type metadata accessor for ImagePredictableOutput.PredictableOutputAsset);
  }

  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0;
  return result;
}

uint64_t sub_1D23BF708(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA870);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v37 - v7;
  v9 = sub_1D2872438();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  sub_1D23B7BB8();
  v13 = sub_1D2878A58();
  v14 = sub_1D2878068();
  v15 = [v13 BOOLForKey_];

  v16 = *(v3 + 24);
  if (!v15)
  {
    *(v3 + 24) = 0;
LABEL_14:

    goto LABEL_15;
  }

  if (!v16)
  {
LABEL_13:
    (*(v10 + 16))(v12, a2, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1D0);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1D287F500;
    sub_1D22D7044(a1, v30 + 32);
    v31 = type metadata accessor for ImagePredictableOutput.FinalImage(0);
    v32 = *(*(v31 - 8) + 56);
    v32(v8, 1, 1, v31);
    type metadata accessor for ImagePredictableOutput.ComposingPredictableOutputAsset(0);
    v33 = swift_allocObject();
    v38 = v8;
    v34 = v3;
    v32((v33 + OBJC_IVAR____TtCC23ImagePlaygroundInternal22ImagePredictableOutputP33_5C3CA63E38422A6691DD6C93E2E9CDDD31ComposingPredictableOutputAsset_finalImage), 1, 1, v31);
    (*(v10 + 32))(v33 + OBJC_IVAR____TtCC23ImagePlaygroundInternal22ImagePredictableOutputP33_5C3CA63E38422A6691DD6C93E2E9CDDD31ComposingPredictableOutputAsset_recipe, v12, v9);
    *(v33 + OBJC_IVAR____TtCC23ImagePlaygroundInternal22ImagePredictableOutputP33_5C3CA63E38422A6691DD6C93E2E9CDDD31ComposingPredictableOutputAsset_previewImages) = v30;
    v35 = OBJC_IVAR____TtCC23ImagePlaygroundInternal22ImagePredictableOutputP33_5C3CA63E38422A6691DD6C93E2E9CDDD31ComposingPredictableOutputAsset_finalImage;
    swift_beginAccess();
    v36 = v33 + v35;
    v3 = v34;
    sub_1D23C3934(v38, v36);
    swift_endAccess();
    *(v34 + 24) = v33;
    goto LABEL_14;
  }

  sub_1D2870F78();
  if ((sub_1D2872338() & 1) == 0)
  {

    goto LABEL_13;
  }

  v17 = OBJC_IVAR____TtCC23ImagePlaygroundInternal22ImagePredictableOutputP33_5C3CA63E38422A6691DD6C93E2E9CDDD31ComposingPredictableOutputAsset_previewImages;
  v18 = *(v16 + OBJC_IVAR____TtCC23ImagePlaygroundInternal22ImagePredictableOutputP33_5C3CA63E38422A6691DD6C93E2E9CDDD31ComposingPredictableOutputAsset_previewImages);
  sub_1D22D7044(a1, v39);
  sub_1D2870F68();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42 = v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = sub_1D27CCE78(0, v18[2] + 1, 1, v18);
    v42 = v18;
  }

  v21 = v18[2];
  v20 = v18[3];
  if (v21 >= v20 >> 1)
  {
    v18 = sub_1D27CCE78((v20 > 1), v21 + 1, 1, v18);
    v42 = v18;
  }

  v22 = v40;
  v23 = v41;
  v24 = __swift_mutable_project_boxed_opaque_existential_1(v39, v40);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v27, v25);
  sub_1D23C39A4(v21, v27, &v42, v22, v23);
  __swift_destroy_boxed_opaque_existential_0(v39);
  *(v16 + v17) = v18;

LABEL_15:
  *(v3 + 16) = 0;
  return result;
}

uint64_t sub_1D23BFB90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v28 = a2;
  v29 = a3;
  v27 = a1;
  v5 = sub_1D2872438();
  v26 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA870);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for ImagePredictableOutput.FinalImage(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  sub_1D23B7BB8();
  v15 = sub_1D2878A58();
  v16 = sub_1D2878068();
  v17 = [v15 BOOLForKey_];

  if (!v17)
  {
    *(v4 + 24) = 0;
    goto LABEL_10;
  }

  sub_1D23C386C(v27, v14, type metadata accessor for PlaygroundImage);
  *&v14[*(v11 + 20)] = v28;
  v18 = *(v4 + 24);
  if (!v18)
  {
LABEL_9:
    v20 = v26;
    (*(v26 + 16))(v7, v29, v5);
    sub_1D23C386C(v14, v10, type metadata accessor for ImagePredictableOutput.FinalImage);
    v21 = *(v12 + 56);
    v21(v10, 0, 1, v11);
    sub_1D23C38D4(v14, type metadata accessor for ImagePredictableOutput.FinalImage);
    type metadata accessor for ImagePredictableOutput.ComposingPredictableOutputAsset(0);
    v22 = swift_allocObject();
    v21((v22 + OBJC_IVAR____TtCC23ImagePlaygroundInternal22ImagePredictableOutputP33_5C3CA63E38422A6691DD6C93E2E9CDDD31ComposingPredictableOutputAsset_finalImage), 1, 1, v11);
    (*(v20 + 32))(v22 + OBJC_IVAR____TtCC23ImagePlaygroundInternal22ImagePredictableOutputP33_5C3CA63E38422A6691DD6C93E2E9CDDD31ComposingPredictableOutputAsset_recipe, v7, v5);
    *(v22 + OBJC_IVAR____TtCC23ImagePlaygroundInternal22ImagePredictableOutputP33_5C3CA63E38422A6691DD6C93E2E9CDDD31ComposingPredictableOutputAsset_previewImages) = MEMORY[0x1E69E7CC0];
    v23 = OBJC_IVAR____TtCC23ImagePlaygroundInternal22ImagePredictableOutputP33_5C3CA63E38422A6691DD6C93E2E9CDDD31ComposingPredictableOutputAsset_finalImage;
    swift_beginAccess();
    sub_1D23C3934(v10, v22 + v23);
    swift_endAccess();
    *(v4 + 24) = v22;
    goto LABEL_10;
  }

  sub_1D2870F78();
  if ((sub_1D2872338() & 1) == 0)
  {

    goto LABEL_9;
  }

  sub_1D23C37BC(v14, v10, type metadata accessor for ImagePredictableOutput.FinalImage);
  (*(v12 + 56))(v10, 0, 1, v11);
  v19 = OBJC_IVAR____TtCC23ImagePlaygroundInternal22ImagePredictableOutputP33_5C3CA63E38422A6691DD6C93E2E9CDDD31ComposingPredictableOutputAsset_finalImage;
  swift_beginAccess();
  sub_1D23C3934(v10, v18 + v19);
  swift_endAccess();
LABEL_10:

  *(v4 + 16) = 0;
  return result;
}

uint64_t sub_1D23BFFB4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D2872438();
  v40 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA888);
  MEMORY[0x1EEE9AC00](v7);
  v39 = &v35 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE30);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v38 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - v15;
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  sub_1D23B7BB8();
  v17 = sub_1D2878A58();
  v18 = sub_1D2878068();
  v19 = [v17 BOOLForKey_];

  if (!v19)
  {
    goto LABEL_11;
  }

  v20 = *(v2 + 24);
  if (!v20)
  {
    goto LABEL_11;
  }

  v35 = v6;
  v36 = a1;
  v37 = v2;
  v21 = v40;
  v22 = *(v40 + 16);
  v22(v16, a1, v4);
  v23 = *(v21 + 56);
  v23(v16, 0, 1, v4);
  v22(v13, v20 + OBJC_IVAR____TtCC23ImagePlaygroundInternal22ImagePredictableOutputP33_5C3CA63E38422A6691DD6C93E2E9CDDD31ComposingPredictableOutputAsset_recipe, v4);
  v23(v13, 0, 1, v4);
  v24 = *(v7 + 48);
  v25 = v39;
  sub_1D22BD1D0(v16, v39, &unk_1EC6DDE30);
  sub_1D22BD1D0(v13, v25 + v24, &unk_1EC6DDE30);
  v26 = *(v21 + 48);
  if (v26(v25, 1, v4) == 1)
  {
    sub_1D22BD238(v13, &unk_1EC6DDE30);
    sub_1D22BD238(v16, &unk_1EC6DDE30);
    if (v26(v25 + v24, 1, v4) == 1)
    {
      sub_1D22BD238(v25, &unk_1EC6DDE30);
LABEL_14:
      v28 = sub_1D23C04E8(v36) ^ 1;
      return v28 & 1;
    }

    goto LABEL_10;
  }

  v27 = v38;
  sub_1D22BD1D0(v25, v38, &unk_1EC6DDE30);
  if (v26(v25 + v24, 1, v4) == 1)
  {
    sub_1D22BD238(v13, &unk_1EC6DDE30);
    sub_1D22BD238(v16, &unk_1EC6DDE30);
    (*(v40 + 8))(v27, v4);
LABEL_10:
    sub_1D22BD238(v25, &qword_1EC6DA888);
    goto LABEL_11;
  }

  v30 = v40;
  v31 = v25 + v24;
  v32 = v35;
  (*(v40 + 32))(v35, v31, v4);
  sub_1D23C3824(&qword_1EC6DA890, MEMORY[0x1E696E4A0]);
  v33 = sub_1D2877F98();
  v34 = *(v30 + 8);
  v34(v32, v4);
  sub_1D22BD238(v13, &unk_1EC6DDE30);
  sub_1D22BD238(v16, &unk_1EC6DDE30);
  v34(v27, v4);
  sub_1D22BD238(v25, &unk_1EC6DDE30);
  if (v33)
  {
    goto LABEL_14;
  }

LABEL_11:
  v28 = 0;
  return v28 & 1;
}

uint64_t sub_1D23C04E8(uint64_t a1)
{
  v2 = sub_1D2872438();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v31 = &v29[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA888);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE30);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v32 = &v29[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29[-v11];
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v29[-v15];
  v17 = *(v3 + 16);
  v17(&v29[-v15], a1, v2, v14);
  v33 = v3;
  v18 = *(v3 + 56);
  v19 = 1;
  v18(v16, 0, 1, v2);
  v20 = *(v34 + 24);
  if (v20)
  {
    (v17)(v12, v20 + OBJC_IVAR____TtCC23ImagePlaygroundInternal22ImagePredictableOutputP33_5C3CA63E38422A6691DD6C93E2E9CDDD31ComposingPredictableOutputAsset_recipe, v2);
    v19 = 0;
  }

  v18(v12, v19, 1, v2);
  v21 = *(v5 + 48);
  sub_1D22BD1D0(v16, v7, &unk_1EC6DDE30);
  sub_1D22BD1D0(v12, &v7[v21], &unk_1EC6DDE30);
  v22 = v33;
  v23 = *(v33 + 48);
  if (v23(v7, 1, v2) != 1)
  {
    v24 = v32;
    sub_1D22BD1D0(v7, v32, &unk_1EC6DDE30);
    if (v23(&v7[v21], 1, v2) != 1)
    {
      v26 = v24;
      v27 = v31;
      (*(v22 + 32))(v31, &v7[v21], v2);
      sub_1D23C3824(&qword_1EC6DA890, MEMORY[0x1E696E4A0]);
      v30 = sub_1D2877F98();
      v28 = *(v22 + 8);
      v28(v27, v2);
      sub_1D22BD238(v12, &unk_1EC6DDE30);
      sub_1D22BD238(v16, &unk_1EC6DDE30);
      v28(v26, v2);
      sub_1D22BD238(v7, &unk_1EC6DDE30);
      if (v30)
      {
        return *(v34 + 16);
      }

      return 0;
    }

    sub_1D22BD238(v12, &unk_1EC6DDE30);
    sub_1D22BD238(v16, &unk_1EC6DDE30);
    (*(v22 + 8))(v24, v2);
LABEL_8:
    sub_1D22BD238(v7, &qword_1EC6DA888);
    return 0;
  }

  sub_1D22BD238(v12, &unk_1EC6DDE30);
  sub_1D22BD238(v16, &unk_1EC6DDE30);
  if (v23(&v7[v21], 1, v2) != 1)
  {
    goto LABEL_8;
  }

  sub_1D22BD238(v7, &unk_1EC6DDE30);
  return *(v34 + 16);
}

uint64_t sub_1D23C099C()
{
  v31[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1D2873AA8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30[0] = sub_1D28716B8();
  v4 = *(v30[0] - 8);
  MEMORY[0x1EEE9AC00](v30[0]);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v30 - v8;
  v10 = objc_opt_self();
  v11 = [v10 defaultManager];
  v31[0] = 0;
  v12 = [v11 URLForDirectory:9 inDomain:1 appropriateForURL:0 create:1 error:v31];

  v13 = v31[0];
  if (v12)
  {
    sub_1D2871638();
    v14 = v13;

    sub_1D2873A78();
    sub_1D28715D8();
    (*(v1 + 8))(v3, v0);
    v15 = [v10 defaultManager];
    sub_1D2871658();
    v16 = sub_1D2878068();

    v17 = [v15 directoryExistsAtPath_];

    if (v17)
    {
LABEL_5:
      v23 = sub_1D2871658();
      v24 = *(v4 + 8);
      v25 = v6;
      v26 = v30[0];
      v24(v25, v30[0]);
      v24(v9, v26);
      return v23;
    }

    v18 = [v10 defaultManager];
    v19 = sub_1D28715B8();
    v31[0] = 0;
    v20 = [v18 createDirectoryAtURL:v19 withIntermediateDirectories:1 attributes:0 error:v31];

    v21 = v31[0];
    if (v20)
    {
      v22 = v31[0];
      goto LABEL_5;
    }
  }

  else
  {
    v28 = v31[0];
    v21 = sub_1D28714B8();

    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }

  v29 = v21;
  sub_1D28714B8();

  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1D23C0D5C@<X0>(void (*a1)(_BYTE *, uint64_t)@<X0>, _BYTE *a2@<X8>)
{
  v263 = a1;
  v264 = a2;
  v243 = sub_1D2873CB8();
  v250 = *(v243 - 8);
  MEMORY[0x1EEE9AC00](v243);
  v252 = &v198[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v261 = type metadata accessor for ImagePredictableOutput.FinalImage(0);
  v267 = *(v261 - 8);
  MEMORY[0x1EEE9AC00](v261);
  v230 = &v198[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v229 = &v198[-v6];
  v270 = sub_1D2872438();
  v268 = *(v270 - 8);
  MEMORY[0x1EEE9AC00](v270);
  v228 = &v198[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v245 = &v198[-v9];
  v220 = type metadata accessor for PlaygroundImage();
  MEMORY[0x1EEE9AC00](v220);
  v221 = &v198[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v224 = sub_1D2872A48();
  v249 = *(v224 - 8);
  MEMORY[0x1EEE9AC00](v224);
  v222 = &v198[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v223 = &v198[-v13];
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA7E8);
  MEMORY[0x1EEE9AC00](v247);
  v227 = &v198[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v232 = &v198[-v16];
  MEMORY[0x1EEE9AC00](v17);
  v236 = &v198[-v18];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE70);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v233 = &v198[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v21);
  v231 = &v198[-v22];
  MEMORY[0x1EEE9AC00](v23);
  v226 = &v198[-v24];
  MEMORY[0x1EEE9AC00](v25);
  v237 = &v198[-v26];
  MEMORY[0x1EEE9AC00](v27);
  v235 = &v198[-v28];
  MEMORY[0x1EEE9AC00](v29);
  v240 = &v198[-v30];
  MEMORY[0x1EEE9AC00](v31);
  v253 = &v198[-v32];
  v257 = sub_1D2871528();
  v256 = *(v257 - 8);
  MEMORY[0x1EEE9AC00](v257);
  v266 = &v198[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA870);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v238 = &v198[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v36);
  v269 = &v198[-v37];
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE30);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v255 = &v198[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v40);
  v225 = &v198[-v41];
  MEMORY[0x1EEE9AC00](v42);
  v265 = &v198[-v43];
  v44 = sub_1D2873AA8();
  v45 = *(v44 - 8);
  v271 = v44;
  v272 = v45;
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v198[-((v46 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v48 = sub_1D2871538();
  v262 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v198[-((v49 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1B8);
  MEMORY[0x1EEE9AC00](v51 - 8);
  v251 = &v198[-((v52 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v198[-v54];
  v56 = sub_1D28716B8();
  v57 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v244 = &v198[-((v58 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v59);
  v258 = &v198[-v60];
  MEMORY[0x1EEE9AC00](v61);
  v63 = &v198[-v62];
  MEMORY[0x1EEE9AC00](v64);
  v66 = &v198[-v65];
  v239 = v2;
  sub_1D23C099C();
  v67 = *(v57 + 56);
  v259 = v57 + 56;
  v260 = v67;
  v67(v55, 1, 1, v56);
  (*(v262 + 104))(v50, *MEMORY[0x1E6968F70], v48);
  sub_1D2871688();
  sub_1D2872348();
  sub_1D2873A78();
  sub_1D28715D8();

  v68 = v272 + 1;
  v69 = v272[1];
  v241 = v47;
  v69(v47, v271);
  *&v248 = v57;
  v72 = *(v57 + 8);
  v71 = v57 + 8;
  v70 = v72;
  v234 = v63;
  v72(v63, v56);
  v73 = [objc_opt_self() defaultManager];
  v74 = sub_1D28789D8();

  if (!v74)
  {
    v70(v66, v56);
LABEL_78:
    v190 = type metadata accessor for ImagePredictableOutput.PredictableOutputAsset(0);
    return (*(*(v190 - 8) + 56))(v264, 1, 1, v190);
  }

  v254 = v66;
  v263 = v70;
  v262 = v71;
  v75 = v268 + 56;
  v76 = v265;
  v216 = *(v268 + 56);
  v216(v265, 1, 1, v270);
  v77 = v267;
  v78 = *(v267 + 56);
  v215 = v267 + 56;
  v214 = v78;
  (v78)(v269, 1, 1, v261);
  v79 = v266;
  v242 = v74;
  sub_1D28789B8();
  v80 = v79;
  sub_1D2871518();
  v82 = v76;
  if (v278)
  {
    v209 = v75;
    v212 = v69;
    v213 = v68;
    v246 = 0;
    v219 = (v248 + 32);
    v218 = v272 + 7;
    v217 = v272 + 6;
    v210 = v272 + 4;
    v211 = (v272 + 2);
    v208 = (v249 + 2);
    v206 = (v249 + 1);
    v249 = (v248 + 16);
    v272 = MEMORY[0x1E69E7CC0];
    ++v250;
    *&v81 = 136315394;
    v248 = v81;
    v83 = v251;
    v84 = v260;
    v85 = v254;
    while ((swift_dynamicCast() & 1) == 0)
    {
      v84(v83, 1, 1, v56);
      sub_1D22BD238(v83, &qword_1EC6DA1B8);
LABEL_6:
      sub_1D2871518();
      if (!v278)
      {
        goto LABEL_71;
      }
    }

    v84(v83, 0, 1, v56);
    v86 = v258;
    (*v219)(v258, v83, v56);
    v87 = v246;
    v88 = sub_1D28716C8();
    if (v87)
    {
      v90 = v87;
      v246 = 0;
      v91 = v244;
LABEL_10:
      v92 = v252;
      goto LABEL_11;
    }

    v203 = v88;
    v201 = v89;
    v246 = 0;
    sub_1D2871548();
    sub_1D2873A18();
    v107 = v253;
    sub_1D28739F8();
    v108 = v234;
    sub_1D28715C8();
    v204 = sub_1D2871598();
    v207 = v109;
    v263(v108, v56);
    sub_1D28710A8();
    swift_allocObject();
    v202 = sub_1D2871098();
    v110 = v240;
    sub_1D2873A48();
    v111 = v271;
    v205 = *v218;
    (v205)(v110, 0, 1, v271);
    v112 = *(v247 + 48);
    v113 = v236;
    sub_1D22BD1D0(v107, v236, &qword_1EC6DAE70);
    sub_1D22BD1D0(v110, &v113[v112], &qword_1EC6DAE70);
    v114 = *v217;
    if ((*v217)(v113, 1, v111) == 1)
    {
      sub_1D22BD238(v110, &qword_1EC6DAE70);
      v115 = v114(&v113[v112], 1, v111) == 1;
      v116 = v113;
      v117 = v239;
      if (!v115)
      {
        goto LABEL_23;
      }

      sub_1D22BD238(v116, &qword_1EC6DAE70);
      v118 = v204;
    }

    else
    {
      sub_1D22BD1D0(v113, v235, &qword_1EC6DAE70);
      if (v114(&v113[v112], 1, v111) == 1)
      {
        sub_1D22BD238(v240, &qword_1EC6DAE70);
        v212(v235, v111);
        v116 = v113;
LABEL_23:
        sub_1D22BD238(v116, &qword_1EC6DA7E8);
        goto LABEL_24;
      }

      v129 = v241;
      (*v210)(v241, &v113[v112], v111);
      sub_1D23C3824(&qword_1EC6DA7F8, MEMORY[0x1E69E8450]);
      v130 = v235;
      v131 = sub_1D2877F98();
      v132 = v129;
      v133 = v212;
      v212(v132, v111);
      sub_1D22BD238(v240, &qword_1EC6DAE70);
      v133(v130, v111);
      sub_1D22BD238(v113, &qword_1EC6DAE70);
      v117 = v239;
      v118 = v204;
      if ((v131 & 1) == 0)
      {
LABEL_24:
        v120 = v114;
        v121 = v237;
        sub_1D2873A48();
        (v205)(v121, 0, 1, v111);
        v122 = *(v247 + 48);
        v123 = v232;
        sub_1D22BD1D0(v253, v232, &qword_1EC6DAE70);
        sub_1D22BD1D0(v121, &v123[v122], &qword_1EC6DAE70);
        v124 = v120(v123, 1, v111);
        v200 = v120;
        if (v124 == 1)
        {
          sub_1D22BD238(v121, &qword_1EC6DAE70);
          if (v120(&v123[v122], 1, v271) == 1)
          {
            sub_1D22BD238(v123, &qword_1EC6DAE70);
            v125 = v231;
            v126 = v239;
LABEL_37:
            *&v273 = v204;
            *(&v273 + 1) = v207;
            v144 = v126[11];
            v276 = v126[10];
            v277 = v144;
            sub_1D22BD06C();
            if (sub_1D2878FF8())
            {

              sub_1D23C3824(&qword_1EC6DA880, MEMORY[0x1E69DFCB8]);
              v145 = v223;
              v146 = v224;
              v147 = v203;
              v148 = v201;
              v149 = v246;
              sub_1D2871088();
              if (!v149)
              {
                v207 = *v208;
                v207(v222, v145, v146);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v85 = v254;
                v246 = 0;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v272 = sub_1D27CCE78(0, v272[2] + 1, 1, v272);
                }

                v172 = v272[2];
                v171 = v272[3];
                v205 = v172 + 1;
                if (v172 >= v171 >> 1)
                {
                  v272 = sub_1D27CCE78((v171 > 1), v172 + 1, 1, v272);
                }

                sub_1D22D6D60(v203, v148);
                v173 = *v206;
                v174 = v224;
                (*v206)(v223, v224);
                sub_1D22BD238(v253, &qword_1EC6DAE70);
                v263(v258, v56);
                v274 = v174;
                v275 = &protocol witness table for GeneratedImage;
                boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v273);
                v176 = v222;
                v207(boxed_opaque_existential_1, v222, v174);
                v177 = v272;
                v272[2] = v205;
                sub_1D22D79FC(&v273, &v177[5 * v172 + 4]);
                v173(v176, v174);
                goto LABEL_18;
              }

              sub_1D22BD238(v253, &qword_1EC6DAE70);

              sub_1D22D6D60(v147, v148);
              v90 = v149;
              v246 = 0;
              v85 = v254;
              goto LABEL_55;
            }

LABEL_40:
            if (qword_1ED8A5308 != -1)
            {
              swift_once();
            }

            v150 = v271;
            v151 = __swift_project_value_buffer(v271, qword_1ED8A5310);
            (*v211)(v125, v151, v150);
            (v205)(v125, 0, 1, v150);
            v152 = *(v247 + 48);
            v153 = v227;
            sub_1D22BD1D0(v253, v227, &qword_1EC6DAE70);
            sub_1D22BD1D0(v125, &v153[v152], &qword_1EC6DAE70);
            v154 = v200;
            if (v200(v153, 1, v150) == 1)
            {
              sub_1D22BD238(v125, &qword_1EC6DAE70);
              if (v154(&v153[v152], 1, v150) != 1)
              {

                sub_1D22D6D60(v203, v201);
                goto LABEL_48;
              }

              sub_1D22BD238(v153, &qword_1EC6DAE70);
              v155 = v207;
              v156 = v239;
            }

            else
            {
              sub_1D22BD1D0(v153, v233, &qword_1EC6DAE70);
              if (v154(&v153[v152], 1, v150) == 1)
              {

                sub_1D22D6D60(v203, v201);
                sub_1D22BD238(v125, &qword_1EC6DAE70);
                v212(v233, v150);
LABEL_48:
                v85 = v254;
                sub_1D22BD238(v153, &qword_1EC6DA7E8);
                v77 = v267;
                v80 = v266;
                v82 = v265;
LABEL_49:
                v84 = v260;
                sub_1D22BD238(v253, &qword_1EC6DAE70);
                v263(v258, v56);
                goto LABEL_6;
              }

              v157 = v241;
              (*v210)(v241, &v153[v152], v150);
              sub_1D23C3824(&qword_1EC6DA7F8, MEMORY[0x1E69E8450]);
              v158 = sub_1D2877F98();
              v156 = v239;
              LODWORD(v205) = v158;
              v159 = v212;
              v212(v157, v150);
              sub_1D22BD238(v125, &qword_1EC6DAE70);
              v159(v233, v150);
              sub_1D22BD238(v153, &qword_1EC6DAE70);
              v155 = v207;
              if ((v205 & 1) == 0)
              {

                sub_1D22D6D60(v203, v201);
                v77 = v267;
                v80 = v266;
                v82 = v265;
                v85 = v254;
                goto LABEL_49;
              }
            }

            *&v273 = v204;
            *(&v273 + 1) = v155;
            v160 = v156[13];
            v276 = v156[12];
            v277 = v160;
            sub_1D22BD06C();
            v161 = sub_1D2878FF8();
            v84 = v260;
            if ((v161 & 1) == 0)
            {

              sub_1D22D6D60(v203, v201);
              sub_1D22BD238(v253, &qword_1EC6DAE70);
              v263(v258, v56);
              v77 = v267;
              v80 = v266;
              v82 = v265;
              v85 = v254;
              goto LABEL_6;
            }

            *&v273 = v204;
            *(&v273 + 1) = v155;
            v162 = v156[15];
            v276 = v156[14];
            v277 = v162;
            v163 = sub_1D2878F58();

            v164 = *(v163 + 16);
            v85 = v254;
            if (!v164)
            {

              sub_1D22D6D60(v203, v201);

              sub_1D22BD238(v253, &qword_1EC6DAE70);
              v263(v258, v56);
              v77 = v267;
              v80 = v266;
              v82 = v265;
              goto LABEL_6;
            }

            v165 = v163 + 16 + 16 * v164;
            v166 = *(v165 + 8);
            v207 = *v165;
            sub_1D2870F68();

            sub_1D23C3824(&qword_1EC6DA878, type metadata accessor for PlaygroundImage);
            v167 = v203;
            v168 = v201;
            v169 = v246;
            sub_1D2871088();
            if (!v169)
            {
              v246 = 0;
              v178 = sub_1D23BD628(v207, v166);
              v180 = v179;

              sub_1D22D6D60(v167, v168);
              sub_1D22BD238(v253, &qword_1EC6DAE70);
              v263(v258, v56);
              v80 = v266;
              if (v180)
              {
                sub_1D23C38D4(v221, type metadata accessor for PlaygroundImage);
              }

              else
              {
                v181 = v269;
                sub_1D22BD238(v269, &qword_1EC6DA870);
                sub_1D23C37BC(v221, v181, type metadata accessor for PlaygroundImage);
                *&v181[*(v261 + 20)] = v178;
                v214(v181, 0, 1);
              }

              v77 = v267;
              goto LABEL_19;
            }

            sub_1D22BD238(v253, &qword_1EC6DAE70);

            sub_1D22D6D60(v167, v168);

            v90 = v169;
            v246 = 0;
LABEL_55:
            v91 = v244;
            v92 = v252;
            v86 = v258;
LABEL_11:
            sub_1D2872608();
            (*v249)(v91, v86, v56);
            v93 = v90;
            v94 = sub_1D2873CA8();
            v95 = sub_1D2878A18();

            if (os_log_type_enabled(v94, v95))
            {
              v96 = swift_slowAlloc();
              v97 = swift_slowAlloc();
              LODWORD(v207) = v95;
              v98 = v91;
              v99 = v97;
              *&v273 = v97;
              *v96 = v248;
              v100 = sub_1D2871558();
              v102 = v101;
              v263(v98, v56);
              v103 = sub_1D23D7C84(v100, v102, &v273);

              *(v96 + 4) = v103;
              *(v96 + 12) = 2080;
              swift_getErrorValue();
              v104 = sub_1D2879748();
              v106 = sub_1D23D7C84(v104, v105, &v273);

              *(v96 + 14) = v106;
              v85 = v254;
              _os_log_impl(&dword_1D226E000, v94, v207, "Unable to load asset for recipe at url: %s withe error: %s", v96, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x1D38A3520](v99, -1, -1);
              MEMORY[0x1D38A3520](v96, -1, -1);

              (*v250)(v252, v243);
              v263(v258, v56);
            }

            else
            {

              v119 = v263;
              v263(v91, v56);
              (*v250)(v92, v243);
              v119(v86, v56);
            }

LABEL_18:
            v77 = v267;
            v80 = v266;
LABEL_19:
            v82 = v265;
LABEL_20:
            v84 = v260;
            goto LABEL_6;
          }
        }

        else
        {
          v127 = v226;
          sub_1D22BD1D0(v123, v226, &qword_1EC6DAE70);
          v128 = v271;
          if (v120(&v123[v122], 1, v271) != 1)
          {
            v139 = v241;
            (*v210)(v241, &v123[v122], v128);
            sub_1D23C3824(&qword_1EC6DA7F8, MEMORY[0x1E69E8450]);
            v140 = v128;
            v199 = sub_1D2877F98();
            v141 = v128;
            v142 = v212;
            v212(v139, v141);
            sub_1D22BD238(v237, &qword_1EC6DAE70);
            v143 = v140;
            v126 = v239;
            v142(v127, v143);
            sub_1D22BD238(v123, &qword_1EC6DAE70);
            v125 = v231;
            if ((v199 & 1) == 0)
            {
              goto LABEL_40;
            }

            goto LABEL_37;
          }

          sub_1D22BD238(v237, &qword_1EC6DAE70);
          v212(v127, v128);
        }

        sub_1D22BD238(v123, &qword_1EC6DA7E8);
        v125 = v231;
        goto LABEL_40;
      }
    }

    if (v118 == v117[8] && v207 == v117[9] || (sub_1D2879618() & 1) != 0)
    {

      sub_1D23C3824(&qword_1EC6DA7F0, MEMORY[0x1E696E4A0]);
      v134 = v225;
      v135 = v270;
      v136 = v203;
      v137 = v201;
      v138 = v246;
      sub_1D2871088();
      if (!v138)
      {
        v246 = 0;

        sub_1D22D6D60(v136, v137);
        sub_1D22BD238(v253, &qword_1EC6DAE70);
        v263(v258, v56);
        v82 = v265;
        sub_1D22BD238(v265, &unk_1EC6DDE30);
        v216(v134, 0, 1, v135);
        sub_1D22EC9BC(v134, v82, &unk_1EC6DDE30);
        v77 = v267;
        v80 = v266;
        v85 = v254;
        goto LABEL_20;
      }

      sub_1D22BD238(v253, &qword_1EC6DAE70);

      sub_1D22D6D60(v136, v137);
      v90 = v138;
      v246 = 0;
      v85 = v254;
      v91 = v244;
      v86 = v258;
      goto LABEL_10;
    }

    goto LABEL_24;
  }

  v272 = MEMORY[0x1E69E7CC0];
  v85 = v254;
LABEL_71:

  (*(v256 + 8))(v80, v257);
  v263(v85, v56);
  v182 = v255;
  sub_1D22EC9BC(v82, v255, &unk_1EC6DDE30);
  v183 = v268;
  v184 = v270;
  if ((*(v268 + 48))(v182, 1, v270) == 1)
  {
    sub_1D22BD238(v269, &qword_1EC6DA870);

    v185 = &unk_1EC6DDE30;
LABEL_76:
    sub_1D22BD238(v182, v185);
    goto LABEL_78;
  }

  v186 = *(v183 + 32);
  v187 = v245;
  v186(v245, v182, v184);
  v188 = v272;
  v189 = v269;
  if (!v272[2])
  {
    (*(v183 + 8))(v187, v184);
    sub_1D22BD238(v189, &qword_1EC6DA870);

    goto LABEL_78;
  }

  v182 = v238;
  sub_1D22EC9BC(v269, v238, &qword_1EC6DA870);
  if ((*(v77 + 48))(v182, 1, v261) == 1)
  {
    (*(v183 + 8))(v187, v184);

    v185 = &qword_1EC6DA870;
    goto LABEL_76;
  }

  v192 = v229;
  sub_1D23C37BC(v182, v229, type metadata accessor for ImagePredictableOutput.FinalImage);
  v193 = v228;
  v186(v228, v187, v184);
  v194 = v192;
  v195 = v230;
  sub_1D23C37BC(v194, v230, type metadata accessor for ImagePredictableOutput.FinalImage);
  v196 = v264;
  v186(v264, v193, v184);
  v197 = type metadata accessor for ImagePredictableOutput.PredictableOutputAsset(0);
  *&v196[*(v197 + 20)] = v188;
  sub_1D23C37BC(v195, &v196[*(v197 + 24)], type metadata accessor for ImagePredictableOutput.FinalImage);
  return (*(*(v197 - 8) + 56))(v196, 0, 1, v197);
}

uint64_t sub_1D23C3338()
{
  v1 = OBJC_IVAR____TtCC23ImagePlaygroundInternal22ImagePredictableOutputP33_5C3CA63E38422A6691DD6C93E2E9CDDD31ComposingPredictableOutputAsset_recipe;
  v2 = sub_1D2872438();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1D22BD238(v0 + OBJC_IVAR____TtCC23ImagePlaygroundInternal22ImagePredictableOutputP33_5C3CA63E38422A6691DD6C93E2E9CDDD31ComposingPredictableOutputAsset_finalImage, &qword_1EC6DA870);

  return swift_deallocClassInstance();
}

uint64_t sub_1D23C3404()
{

  return swift_deallocClassInstance();
}

void sub_1D23C34E4()
{
  sub_1D2872438();
  if (v0 <= 0x3F)
  {
    sub_1D23C35BC();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1D23C35BC()
{
  if (!qword_1EC6DA868)
  {
    type metadata accessor for ImagePredictableOutput.FinalImage(255);
    v0 = sub_1D2878F18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC6DA868);
    }
  }
}

uint64_t sub_1D23C365C()
{
  result = type metadata accessor for PlaygroundImage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1D23C36EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1D23C3734(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D23C37BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D23C3824(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D23C386C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D23C38D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D23C3934(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA870);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D23C39A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1D22D79FC(&v12, v10 + 40 * a1 + 32);
}

void sub_1D23C3A64()
{
  sub_1D2872438();
  if (v0 <= 0x3F)
  {
    sub_1D23C3B00();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ImagePredictableOutput.FinalImage(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D23C3B00()
{
  if (!qword_1ED89CF38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA468);
    v0 = sub_1D28784C8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED89CF38);
    }
  }
}

id GPAppleConnectTokenProvider_Swift.__allocating_init(authenticatingProtocol:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC23ImagePlaygroundInternal33GPAppleConnectTokenProvider_Swift__token];
  *v4 = 0;
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  ObjectType = swift_getObjectType();
  v6 = &v3[OBJC_IVAR____TtC23ImagePlaygroundInternal33GPAppleConnectTokenProvider_Swift__authenticatingProtocol];
  *(v6 + 3) = ObjectType;
  *v6 = a1;
  v8.receiver = v3;
  v8.super_class = v1;
  return objc_msgSendSuper2(&v8, sel_init);
}

id GPAppleConnectTokenProvider_Swift.init(authenticatingProtocol:)(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR____TtC23ImagePlaygroundInternal33GPAppleConnectTokenProvider_Swift__token];
  *v3 = 0;
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  ObjectType = swift_getObjectType();
  v5 = &v1[OBJC_IVAR____TtC23ImagePlaygroundInternal33GPAppleConnectTokenProvider_Swift__authenticatingProtocol];
  *(v5 + 3) = ObjectType;
  *v5 = a1;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for GPAppleConnectTokenProvider_Swift();
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_1D23C3CF0()
{
  v1 = v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal33GPAppleConnectTokenProvider_Swift__token;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal33GPAppleConnectTokenProvider_Swift__token));
  v2 = *(v1 + 8);
  sub_1D2870F68();
  os_unfair_lock_unlock(v1);
  return v2;
}

uint64_t sub_1D23C3D44@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal33GPAppleConnectTokenProvider_Swift__authenticatingProtocol;
  swift_beginAccess();
  sub_1D23C3EE4(v3 + v4, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DA910);
  result = swift_dynamicCast();
  *a2 = v6;
  return result;
}

uint64_t sub_1D23C3DDC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  ObjectType = swift_getObjectType();
  *&v6 = v2;
  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal33GPAppleConnectTokenProvider_Swift__authenticatingProtocol;
  swift_beginAccess();
  swift_unknownObjectRetain();
  __swift_destroy_boxed_opaque_existential_0(v3 + v4);
  sub_1D23C3FAC(&v6, (v3 + v4));
  return swift_endAccess();
}

uint64_t sub_1D23C3E60()
{
  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal33GPAppleConnectTokenProvider_Swift__authenticatingProtocol;
  swift_beginAccess();
  sub_1D23C3EE4(v0 + v1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DA910);
  swift_dynamicCast();
  return v3;
}

uint64_t sub_1D23C3EE4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1D23C3F40(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v5 = a1;
  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal33GPAppleConnectTokenProvider_Swift__authenticatingProtocol;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0(v1 + v3);
  sub_1D23C3FAC(&v5, (v1 + v3));
  return swift_endAccess();
}

_OWORD *sub_1D23C3FAC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void (*sub_1D23C3FBC(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC23ImagePlaygroundInternal33GPAppleConnectTokenProvider_Swift__authenticatingProtocol;
  *(v3 + 88) = v1;
  *(v3 + 96) = v5;
  swift_beginAccess();
  sub_1D23C3EE4(v1 + v5, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DA910);
  swift_dynamicCast();
  return sub_1D23C4088;
}

void sub_1D23C4088(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 80);
  ObjectType = swift_getObjectType();
  v7 = *(v3 + 88);
  v6 = *(v3 + 96);
  *(v3 + 24) = ObjectType;
  *v3 = v4;
  swift_beginAccess();
  if (a2)
  {
    swift_unknownObjectRetain();
    __swift_destroy_boxed_opaque_existential_0(v7 + v6);
    sub_1D23C3FAC(v3, (v7 + v6));
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v7 + v6);
    sub_1D23C3FAC(v3, (v7 + v6));
    swift_endAccess();
  }

  free(v3);
}

uint64_t sub_1D23C4150(void (*a1)(uint64_t, uint64_t, void), uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC23ImagePlaygroundInternal33GPAppleConnectTokenProvider_Swift__token];
  os_unfair_lock_lock(&v2[OBJC_IVAR____TtC23ImagePlaygroundInternal33GPAppleConnectTokenProvider_Swift__token]);
  v7 = *(v5 + 1);
  v6 = *(v5 + 2);
  sub_1D2870F68();
  os_unfair_lock_unlock(v5);
  if (v6)
  {
    a1(v7, v6, 0);
  }

  else
  {
    v9 = OBJC_IVAR____TtC23ImagePlaygroundInternal33GPAppleConnectTokenProvider_Swift__authenticatingProtocol;
    swift_beginAccess();
    sub_1D23C3EE4(&v2[v9], v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DA910);
    swift_dynamicCast();
    v10 = v14[6];
    v11 = swift_allocObject();
    v11[2] = v2;
    v11[3] = a1;
    v11[4] = a2;
    v14[4] = sub_1D23C45F4;
    v14[5] = v11;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 1107296256;
    v14[2] = sub_1D23C4600;
    v14[3] = &block_descriptor_6;
    v12 = _Block_copy(v14);
    v13 = v2;
    sub_1D2870F78();

    [v10 authenticateIfNeededWithCompletion_];
    _Block_release(v12);
    return swift_unknownObjectRelease();
  }
}

uint64_t sub_1D23C4318(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, void))
{
  v10 = sub_1D2873CB8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v30 - v15;
  if (a2)
  {
    v17 = a4 + OBJC_IVAR____TtC23ImagePlaygroundInternal33GPAppleConnectTokenProvider_Swift__token;
    os_unfair_lock_lock((a4 + OBJC_IVAR____TtC23ImagePlaygroundInternal33GPAppleConnectTokenProvider_Swift__token));

    *(v17 + 8) = a1;
    *(v17 + 16) = a2;
    sub_1D2870F68();
    os_unfair_lock_unlock(v17);
    return a5(a1, a2, 0);
  }

  else if (a3)
  {
    v19 = a3;
    sub_1D2872598();
    v20 = a3;
    v21 = sub_1D2873CA8();
    v22 = sub_1D2878A18();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      v25 = a3;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v26;
      *v24 = v26;
      _os_log_impl(&dword_1D226E000, v21, v22, "Error %@ authenticating with AppleConnect", v23, 0xCu);
      sub_1D22BD238(v24, qword_1EC6DA930);
      MEMORY[0x1D38A3520](v24, -1, -1);
      MEMORY[0x1D38A3520](v23, -1, -1);
    }

    else
    {
    }

    return (*(v11 + 8))(v13, v10);
  }

  else
  {
    sub_1D2872598();
    v27 = sub_1D2873CA8();
    v28 = sub_1D2878A18();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1D226E000, v27, v28, "Error authenticating with AppleConnect", v29, 2u);
      MEMORY[0x1D38A3520](v29, -1, -1);
    }

    return (*(v11 + 8))(v16, v10);
  }
}

uint64_t sub_1D23C4600(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1D28780A8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  sub_1D2870F78();
  v8 = a3;
  v4(v5, v7, a3);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

id GPAppleConnectTokenProvider_Swift.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GPAppleConnectTokenProvider_Swift.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GPAppleConnectTokenProvider_Swift();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D23C4974(char *a1, void (**a2)(void, void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = &a1[OBJC_IVAR____TtC23ImagePlaygroundInternal33GPAppleConnectTokenProvider_Swift__token];
  _Block_copy(a2);
  os_unfair_lock_lock(v5);
  v6 = *&v5[4]._os_unfair_lock_opaque;
  sub_1D2870F68();
  os_unfair_lock_unlock(v5);
  if (v6)
  {
    v12 = sub_1D2878068();
    (a2)[2](a2, v12, 0);
  }

  else
  {
    v7 = OBJC_IVAR____TtC23ImagePlaygroundInternal33GPAppleConnectTokenProvider_Swift__authenticatingProtocol;
    swift_beginAccess();
    sub_1D23C3EE4(&a1[v7], aBlock);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DA910);
    swift_dynamicCast();
    v8 = aBlock[6];
    v9 = swift_allocObject();
    v9[2] = a1;
    v9[3] = sub_1D23C4B98;
    v9[4] = v4;
    aBlock[4] = sub_1D23C4BE4;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D23C4600;
    aBlock[3] = &block_descriptor_15;
    v10 = _Block_copy(aBlock);
    v11 = a1;
    sub_1D2870F78();

    [v8 authenticateIfNeededWithCompletion_];
    _Block_release(v10);

    swift_unknownObjectRelease();
  }
}

uint64_t objectdestroyTm_1()
{

  return swift_deallocObject();
}

uint64_t sub_1D23C4BEC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v18[6] = a3;
  v17 = a4;
  v16 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for EncodableIgnored();
  v15 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2879858();
  if (!v4)
  {
    v14 = v9;
    __swift_project_boxed_opaque_existential_1(v18, v18[3]);
    sub_1D2879638();
    (*(v16 + 32))(v11, v8, a2);
    __swift_destroy_boxed_opaque_existential_0(v18);
    (*(v15 + 32))(v17, v11, v14);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1D23C4E10@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a3;
  v31 = a4;
  v6 = sub_1D2878F18();
  v29 = *(v6 - 8);
  v30 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v32 = &v25 - v7;
  v33 = type metadata accessor for NullEncodable();
  v8 = *(v33 - 8);
  v9 = MEMORY[0x1EEE9AC00](v33);
  v11 = &v25 - v10;
  v12 = *(a2 - 8);
  v13 = *(v12 + 56);
  v14 = v12 + 56;
  v13(&v25 - v10, 1, 1, a2, v9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = v35;
  sub_1D2879858();
  if (v15)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    return (*(v8 + 8))(v11, v33);
  }

  else
  {
    v25 = v14;
    v26 = v11;
    v27 = v13;
    v35 = v8;
    v17 = v33;
    __swift_project_boxed_opaque_existential_1(v34, v34[3]);
    sub_1D2879638();
    v19 = v30;
    v18 = v31;
    v20 = v29;
    v21 = a1;
    v22 = v26;
    v23 = v32;
    (v27)(v32, 0, 1, a2);
    (*(v20 + 40))(v22, v23, v19);
    __swift_destroy_boxed_opaque_existential_0(v34);
    v24 = v35;
    (*(v35 + 16))(v18, v22, v17);
    __swift_destroy_boxed_opaque_existential_0(v21);
    return (*(v24 + 8))(v22, v17);
  }
}

uint64_t sub_1D23C5100(void *a1, uint64_t a2, uint64_t a3)
{
  v13[1] = a3;
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D2878F18();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2879878();
  (*(v9 + 16))(v11, v13[2], v8);
  if ((*(v5 + 48))(v11, 1, v4) == 1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v14, v15);
    sub_1D2879658();
  }

  else
  {
    (*(v5 + 32))(v7, v11, v4);
    __swift_mutable_project_boxed_opaque_existential_1(v14, v15);
    sub_1D2879648();
    (*(v5 + 8))(v7, v4);
  }

  return __swift_destroy_boxed_opaque_existential_0(v14);
}

uint64_t sub_1D23C5390()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D23C5400(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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