uint64_t sub_1AC244424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = v17;
  v8[15] = v16;
  v8[14] = a8;
  v8[13] = a7;
  v8[12] = a6;
  v8[11] = a5;
  v8[10] = a4;
  v8[6] = v8;
  v8[7] = 0;
  v8[8] = 0;
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = 0;
  v8[5] = 0;
  v8[9] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C318);
  v8[17] = swift_task_alloc();
  v8[7] = a4;
  v8[8] = a5;
  v8[2] = a6;
  v8[3] = a7;
  v8[4] = a8;
  v8[5] = v16;
  v8[9] = v17 + 16;

  return MEMORY[0x1EEE6DFA0](sub_1AC2445A4, 0);
}

uint64_t sub_1AC2445A4()
{
  v5 = MEMORY[0x1E69E85E0];
  v14 = v0[17];
  v12 = v0[16];
  v11 = v0[15];
  v10 = v0[14];
  v9 = v0[13];
  v8 = v0[12];
  v6 = v0[11];
  v7 = v0[10];
  v0[6] = v0;
  sub_1AC3092EC();
  v1 = sub_1AC30ABDC();
  (*(*(v1 - 8) + 56))(v14, 1);

  MEMORY[0x1E69E5928](v7);

  sub_1AC30ABBC();
  v13 = sub_1AC30ABAC();
  v2 = swift_allocObject();
  v2[2] = v13;
  v2[3] = v5;
  v2[4] = v6;
  v2[5] = v7;
  v2[6] = v8;
  v2[7] = v9;
  v2[8] = v10;
  v2[9] = v11;
  v2[10] = v12;
  sub_1AC244BA8(0, 0, v14, &unk_1AC3113B0, v2, MEMORY[0x1E69E7CA8] + 8);

  v3 = *(v0[6] + 8);

  return v3();
}

uint64_t sub_1AC2447BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[20] = v14;
  v8[19] = v13;
  v8[18] = a8;
  v8[17] = a7;
  v8[16] = a6;
  v8[15] = a5;
  v8[14] = a4;
  v8[9] = v8;
  v8[10] = 0;
  v8[11] = 0;
  v8[5] = 0;
  v8[6] = 0;
  v8[7] = 0;
  v8[8] = 0;
  v8[12] = 0;
  v8[10] = a4;
  v8[11] = a5;
  v8[5] = a6;
  v8[6] = a7;
  v8[7] = a8;
  v8[8] = v13;
  v8[12] = v14 + 16;
  sub_1AC30ABBC();
  v8[21] = sub_1AC30ABAC();
  v11 = sub_1AC30AB9C();

  return MEMORY[0x1EEE6DFA0](sub_1AC2448E0, v11, v9);
}

uint64_t sub_1AC2448E0()
{
  v12 = v0[19];
  v8 = v0[18];
  v11 = v0[17];
  v7 = v0[16];
  v1 = v0[15];
  v10 = v1;
  v0[9] = v0;
  MEMORY[0x1E69E5928](v1);

  v9 = swift_task_alloc();
  v9[2] = v10;
  v9[3] = v7;
  v9[4] = v11;
  v9[5] = v8;
  v9[6] = v12;
  sub_1AC309CDC();

  MEMORY[0x1E69E5920](v10);

  swift_beginAccess();
  v0[13] = swift_unknownObjectWeakLoadStrong();
  if (v0[13])
  {
    v5 = *(v6 + 104);
    MEMORY[0x1E69E5928](v5);
    sub_1AC206988((v6 + 104));
    swift_endAccess();
    sub_1AC30A9DC();
    v4 = sub_1AC30A91C();

    [v5 reloadSpecifierID_];
    MEMORY[0x1E69E5920](v4);
    MEMORY[0x1E69E5920](v5);
  }

  else
  {
    sub_1AC206988((v6 + 104));
    swift_endAccess();
  }

  v2 = *(*(v6 + 72) + 8);

  return v2();
}

uint64_t sub_1AC244BA8(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v45 = a1;
  v46 = a2;
  v54 = a3;
  v55 = a4;
  v56 = a5;
  v47 = a6;
  v48 = "Fatal error";
  v49 = "Unexpectedly found nil while unwrapping an Optional value";
  v50 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v51 = &unk_1AC311398;
  v52 = 0;
  v65 = a6;
  v53 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C318) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v56);
  v57 = &v14 - v53;

  v63 = v55;
  v64 = v56;
  sub_1AC247594(v54, v57);
  v58 = sub_1AC30ABDC();
  v59 = *(v58 - 8);
  v60 = v58 - 8;
  if ((*(v59 + 48))(v57, 1) == 1)
  {
    sub_1AC2476BC(v57);
    v44 = 0;
  }

  else
  {
    v43 = sub_1AC30ABCC();
    (*(v59 + 8))(v57, v58);
    v44 = v43;
  }

  v40 = v44 | 0x1C00;
  v42 = *(v56 + 16);
  v41 = *(v56 + 24);
  swift_unknownObjectRetain();

  if (v42)
  {
    v38 = v42;
    v39 = v41;
    v32 = v41;
    v33 = v42;
    swift_getObjectType();
    v34 = sub_1AC30AB9C();
    v35 = v6;
    swift_unknownObjectRelease();
    v36 = v34;
    v37 = v35;
  }

  else
  {
    v36 = 0;
    v37 = 0;
  }

  v30 = v37;
  v31 = v36;

  if (v46)
  {
    v28 = v45;
    v29 = v46;
    v7 = v52;
    v25 = v46;
    v26 = sub_1AC30A9AC();

    sub_1AC247764(v26 + 32, &v63, v47, &v61);
    if (v7)
    {
      __break(1u);
    }

    v24 = v61;

    v27 = v24;
  }

  else
  {
    v27 = 0;
  }

  v23 = v27;
  if (v27)
  {
    v17 = v23;
    v16 = v23;
    sub_1AC2476BC(v54);

    v18 = v16;
  }

  else
  {

    sub_1AC2476BC(v54);
    v19 = v63;
    v20 = v64;

    v8 = swift_allocObject();
    v9 = v19;
    v10 = v20;
    v11 = v31;
    v12 = v30;
    v21 = v8;
    v8[2] = v47;
    v8[3] = v9;
    v8[4] = v10;
    v22 = 0;
    if (v11 != 0 || v12 != 0)
    {
      v62[0] = 0;
      v62[1] = 0;
      v62[2] = v31;
      v62[3] = v30;
      v22 = v62;
    }

    v18 = swift_task_create();
  }

  v15 = v18;

  return v15;
}

uint64_t sub_1AC245174(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v48 = 0;
  v47 = 0;
  v46 = 0;
  v44 = 0;
  v45 = 0;
  v42 = 0;
  v43 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCA0);
  v24 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v38 = v14 - v24;
  v40 = sub_1AC30901C();
  v36 = *(v40 - 8);
  v37 = v40 - 8;
  v26 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v40);
  v27 = v14 - v26;
  v28 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14 - v26);
  v29 = v14 - v28;
  v48 = v14 - v28;
  v47 = a1;
  v46 = v5 + 16;
  v39 = 1;
  v30 = sub_1AC30A9DC();
  v32 = v6;
  v7 = sub_1AC2C85A0();
  v31 = v8;
  v33 = MEMORY[0x1AC5B0040](v30, v32, v7);
  v34 = v9;

  v44 = v33;
  v45 = v34;
  v10 = sub_1AC2456D8(v33, v34);
  v35 = v11;
  v42 = v10;
  v43 = v11;
  sub_1AC30900C();
  if ((*(v36 + 48))(v38, v39, v40) == 1)
  {
    sub_1AC247D84(v38);
  }

  else
  {
    (*(v36 + 32))(v29, v38, v40);
    v23 = v25 + 16;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      p_Strong = &Strong;
      v21 = Strong;
      MEMORY[0x1E69E5928](Strong);
      sub_1AC206988(p_Strong);
      swift_endAccess();
      v22 = *(v21 + OBJC_IVAR____TtC19HeadphoneSettingsUI27HeadphoneSettingsController_deviceAnalytics);
      MEMORY[0x1E69E5928](v22);
      MEMORY[0x1E69E5920](v21);
      [v22 updateFeatureChangeCount_];
      MEMORY[0x1E69E5920](v22);
    }

    else
    {
      sub_1AC206988(&Strong);
      swift_endAccess();
    }

    v13 = v27;
    v17 = [objc_opt_self() sharedApplication];
    (*(v36 + 16))(v13, v29, v40);
    v16 = sub_1AC308FEC();
    v19 = *(v36 + 8);
    v18 = v36 + 8;
    v19(v27, v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C320);
    v14[1] = 0;
    v14[2] = sub_1AC30B18C();
    v14[3] = type metadata accessor for OpenExternalURLOptionsKey();
    v14[5] = sub_1AC247EC4();
    v14[4] = MEMORY[0x1E69E7CA0] + 8;
    v14[6] = sub_1AC30A83C();
    v15 = sub_1AC30A81C();

    [v17 openURL:v16 options:v15 completionHandler:0];
    MEMORY[0x1E69E5920](v15);
    MEMORY[0x1E69E5920](v16);
    MEMORY[0x1E69E5920](v17);
    v19(v29, v40);
  }
}

uint64_t sub_1AC2456D8(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  v34 = a2;
  v47 = 0;
  v48 = 0;
  v45 = 0;
  v46 = 0;
  v44 = 0;
  v43 = 0;
  v41 = 0;
  v42 = 0;
  v39 = sub_1AC30A96C();
  v35 = *(v39 - 8);
  v36 = v39 - 8;
  v32 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v37 = v12 - v32;
  v47 = MEMORY[0x1EEE9AC00](v33);
  v48 = v2;
  sub_1AC30A95C();
  sub_1AC20599C();
  v38 = sub_1AC30A93C();
  v40 = v3;
  (*(v35 + 8))(v37, v39);
  if ((v40 & 0xF000000000000000) == 0xF000000000000000)
  {
    v4 = sub_1AC242654();
    v26 = *v4;
    v27 = v4[1];

    v28 = v26;
    v29 = v27;
  }

  else
  {
    v30 = v38;
    v31 = v40;
    v23 = v40;
    v22 = v38;
    v45 = v38;
    v46 = v40;
    v12[1] = sub_1AC247F44();
    sub_1AC243F00(v22, v23);
    v21 = sub_1AC245A0C(v22, v23);
    v44 = v21;
    v13 = [v21 fm_sha256Hash];
    v5 = sub_1AC30903C();
    v20 = sub_1AC245A0C(v5, v6);
    MEMORY[0x1E69E5920](v13);
    v43 = v20;
    v15 = [v20 fm_hexString];
    sub_1AC30A92C();
    v14 = v7;
    v17 = sub_1AC30A99C();
    v19 = v8;

    MEMORY[0x1E69E5920](v15);
    v41 = v17;
    v42 = v19;
    v9 = sub_1AC242574();
    v16 = *v9;
    v18 = v9[1];

    v24 = MEMORY[0x1AC5B0040](v16, v18, v17, v19);
    v25 = v10;

    MEMORY[0x1E69E5920](v20);
    MEMORY[0x1E69E5920](v21);
    sub_1AC242F94(v22, v23);
    v28 = v24;
    v29 = v25;
  }

  return v28;
}

void sub_1AC245A54(int a1, void *a2, uint64_t a3, uint64_t a4)
{
  v128 = a1;
  v133 = a2;
  v129 = a3;
  v130 = a4;
  v105 = sub_1AC248104;
  v106 = sub_1AC24810C;
  v107 = sub_1AC248118;
  v108 = sub_1AC215C90;
  v109 = sub_1AC215C90;
  v110 = sub_1AC2482A8;
  v111 = MEMORY[0x1E69E85E0];
  v112 = &unk_1AC3113D0;
  v113 = sub_1AC248080;
  v114 = sub_1AC226634;
  v115 = sub_1AC226640;
  v116 = sub_1AC22664C;
  v117 = sub_1AC215C90;
  v118 = sub_1AC215C90;
  v119 = sub_1AC226658;
  v148 = 0;
  v147 = 0;
  v146 = 0;
  v145 = 0;
  v120 = 0;
  v139 = 0;
  v121 = sub_1AC309E6C();
  v122 = *(v121 - 8);
  v123 = v121 - 8;
  v124 = (*(v122 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v121);
  v125 = v53 - v124;
  v126 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v53 - v124);
  v127 = v53 - v126;
  v131 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C318) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v133);
  v132 = v53 - v131;
  v148 = v6 & 1;
  v147 = v5;
  v146 = v7;
  v145 = v8;
  v9 = v5;
  if (v133)
  {
    v104 = v133;
    v35 = v125;
    v71 = v133;
    v139 = v133;
    v36 = sub_1AC250850();
    (*(v122 + 16))(v35, v36, v121);
    v37 = v71;
    v75 = 7;
    v73 = swift_allocObject();
    *(v73 + 16) = v71;
    sub_1AC20BEE0();

    v84 = sub_1AC309E4C();
    v85 = sub_1AC30AD1C();
    v72 = 17;
    v78 = swift_allocObject();
    *(v78 + 16) = 64;
    v79 = swift_allocObject();
    *(v79 + 16) = 8;
    v74 = 32;
    v38 = swift_allocObject();
    v39 = v73;
    v76 = v38;
    *(v38 + 16) = v105;
    *(v38 + 24) = v39;
    v40 = swift_allocObject();
    v41 = v76;
    v77 = v40;
    *(v40 + 16) = v106;
    *(v40 + 24) = v41;
    v42 = swift_allocObject();
    v43 = v77;
    v81 = v42;
    *(v42 + 16) = v107;
    *(v42 + 24) = v43;
    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8);
    v80 = sub_1AC30B18C();
    v82 = v44;

    v45 = v78;
    v46 = v82;
    *v82 = v108;
    v46[1] = v45;

    v47 = v79;
    v48 = v82;
    v82[2] = v109;
    v48[3] = v47;

    v49 = v81;
    v50 = v82;
    v82[4] = v110;
    v50[5] = v49;
    sub_1AC206300();

    if (os_log_type_enabled(v84, v85))
    {
      v51 = v120;
      v64 = sub_1AC30AE6C();
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8);
      v65 = sub_1AC213EE4(1);
      v66 = sub_1AC213EE4(0);
      v67 = &v138;
      v138 = v64;
      v68 = &v137;
      v137 = v65;
      v69 = &v136;
      v136 = v66;
      sub_1AC213F38(2, &v138);
      sub_1AC213F38(1, v67);
      v134 = v108;
      v135 = v78;
      sub_1AC213F4C(&v134, v67, v68, v69);
      v70 = v51;
      if (v51)
      {

        __break(1u);
      }

      else
      {
        v134 = v109;
        v135 = v79;
        sub_1AC213F4C(&v134, &v138, &v137, &v136);
        v62 = 0;
        v134 = v110;
        v135 = v81;
        sub_1AC213F4C(&v134, &v138, &v137, &v136);
        _os_log_impl(&dword_1AC1C3000, v84, v85, "FindMy: fetchFindMyNetworkStatus: supported: false error: %@", v64, 0xCu);
        sub_1AC213F98(v65);
        sub_1AC213F98(v66);
        sub_1AC30AE4C();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v84);
    (*(v122 + 8))(v125, v121);
    sub_1AC30944C();
  }

  else
  {
    v86 = 1;
    sub_1AC30941C();
    sub_1AC30944C();
    v87 = 0;
    v10 = sub_1AC30ABDC();
    (*(*(v10 - 8) + 56))(v132, v86);
    MEMORY[0x1E69E5928](v130);
    sub_1AC30ABBC();
    v11 = sub_1AC30ABAC();
    v12 = v127;
    v88 = v11;
    v93 = 7;
    v13 = swift_allocObject();
    v14 = v111;
    v15 = v130;
    v16 = v87;
    v17 = v132;
    v18 = v112;
    v13[2] = v88;
    v13[3] = v14;
    v13[4] = v15;
    sub_1AC244BA8(v16, v16, v17, v18, v13, MEMORY[0x1E69E7CA8] + 8);

    v19 = sub_1AC250850();
    (*(v122 + 16))(v12, v19, v121);
    v89 = 17;
    v90 = swift_allocObject();
    *(v90 + 16) = v128;
    v102 = sub_1AC309E4C();
    v103 = sub_1AC30AD2C();
    v96 = swift_allocObject();
    *(v96 + 16) = 0;
    v97 = swift_allocObject();
    *(v97 + 16) = 4;
    v92 = 32;
    v20 = swift_allocObject();
    v21 = v90;
    v91 = v20;
    *(v20 + 16) = v113;
    *(v20 + 24) = v21;
    v22 = swift_allocObject();
    v23 = v91;
    v94 = v22;
    *(v22 + 16) = v114;
    *(v22 + 24) = v23;
    v24 = swift_allocObject();
    v25 = v94;
    v95 = v24;
    *(v24 + 16) = v115;
    *(v24 + 24) = v25;
    v26 = swift_allocObject();
    v27 = v95;
    v99 = v26;
    *(v26 + 16) = v116;
    *(v26 + 24) = v27;
    v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8);
    v98 = sub_1AC30B18C();
    v100 = v28;

    v29 = v96;
    v30 = v100;
    *v100 = v117;
    v30[1] = v29;

    v31 = v97;
    v32 = v100;
    v100[2] = v118;
    v32[3] = v31;

    v33 = v99;
    v34 = v100;
    v100[4] = v119;
    v34[5] = v33;
    sub_1AC206300();

    if (os_log_type_enabled(v102, v103))
    {
      v52 = v120;
      v55 = sub_1AC30AE6C();
      v53[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8);
      v54 = 0;
      v56 = sub_1AC213EE4(0);
      v57 = sub_1AC213EE4(v54);
      v58 = &v144;
      v144 = v55;
      v59 = &v143;
      v143 = v56;
      v60 = &v142;
      v142 = v57;
      sub_1AC213F38(0, &v144);
      sub_1AC213F38(1, v58);
      v140 = v117;
      v141 = v96;
      sub_1AC213F4C(&v140, v58, v59, v60);
      v61 = v52;
      if (v52)
      {

        __break(1u);
      }

      else
      {
        v140 = v118;
        v141 = v97;
        sub_1AC213F4C(&v140, &v144, &v143, &v142);
        v53[1] = 0;
        v140 = v119;
        v141 = v99;
        sub_1AC213F4C(&v140, &v144, &v143, &v142);
        _os_log_impl(&dword_1AC1C3000, v102, v103, "FindMy: fetchFindMyNetworkStatus: supported: true status: %{BOOL}d", v55, 8u);
        v53[0] = 0;
        sub_1AC213F98(v56);
        sub_1AC213F98(v57);
        sub_1AC30AE4C();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v102);
    (*(v122 + 8))(v127, v121);
  }
}

uint64_t sub_1AC246AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v4[2] = v4;
  v4[3] = 0;
  v4[3] = a4;
  sub_1AC30ABBC();
  v4[5] = sub_1AC30ABAC();
  v7 = sub_1AC30AB9C();

  return MEMORY[0x1EEE6DFA0](sub_1AC246B7C, v7, v5);
}

uint64_t sub_1AC246B7C()
{
  v3 = *(v0 + 32);
  *(v0 + 16) = v0;
  sub_1AC30A9DC();
  v4 = sub_1AC30A91C();

  [v3 reloadSpecifierID_];
  MEMORY[0x1E69E5920](v4);

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t sub_1AC246C78(uint64_t a1, unsigned int a2, void *a3)
{
  v7 = *(a1 + 32);

  v3 = MEMORY[0x1E69E5928](a3);
  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  v7(a2, v3);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_1AC246D88()
{
  v1 = sub_1AC30A9DC();

  sub_1AC2063F0();
  return v1;
}

id sub_1AC246E8C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1AC30902C();
  v7 = [v3 initWithData_];
  MEMORY[0x1E69E5920](v4);
  sub_1AC242F94(a1, a2);
  return v7;
}

uint64_t sub_1AC246EF8()
{
  sub_1AC24847C();
  sub_1AC2484FC();
  return sub_1AC30B0FC();
}

uint64_t sub_1AC246F34()
{
  sub_1AC24847C();
  sub_1AC2484FC();
  return sub_1AC30B0CC();
}

uint64_t sub_1AC246F80()
{
  sub_1AC24847C();
  sub_1AC2484FC();
  return sub_1AC30B0DC() & 1;
}

uint64_t sub_1AC246FD0()
{
  sub_1AC24847C();
  sub_1AC2484FC();
  return sub_1AC30B0EC();
}

uint64_t sub_1AC247138@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AC247170();
  *a1 = result;
  return result;
}

uint64_t sub_1AC247170()
{

  v1 = sub_1AC30A91C();
  MEMORY[0x1E69E5928](v1);

  MEMORY[0x1E69E5920](v1);
  return v1;
}

uint64_t sub_1AC2471DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AC247210(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1AC247210(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v3 = sub_1AC30A92C();
  MEMORY[0x1E69E5920](a1);
  return v3;
}

uint64_t sub_1AC247270()
{
  sub_1AC247EC4();
  sub_1AC24847C();
  return sub_1AC30B0AC();
}

uint64_t sub_1AC247340(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v12 = v1[8];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1AC24746C;

  return sub_1AC244424(a1, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1AC24746C()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

void *sub_1AC247594(const void *a1, void *a2)
{
  v6 = sub_1AC30ABDC();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C318);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_1AC2476BC(uint64_t a1)
{
  v3 = sub_1AC30ABDC();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_1AC247764@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X5>, uint64_t a3@<X6>, uint64_t *a4@<X8>)
{
  if (!a1)
  {
    sub_1AC30B05C();
    __break(1u);
  }

  v5 = *a2;
  v6 = a2[1];

  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v5;
  v7[4] = v6;
  result = swift_task_create();
  *a4 = result;
  return result;
}

uint64_t sub_1AC247924(uint64_t a1, int *a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1AC247A38;

  return v6(a1);
}

uint64_t sub_1AC247A38()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_1AC247B64(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1AC24746C;

  return sub_1AC247924(a1, v6);
}

uint64_t sub_1AC247C58(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v12 = v1[8];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1AC24746C;

  return sub_1AC2447BC(a1, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1AC247D84(uint64_t a1)
{
  v3 = sub_1AC30901C();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t type metadata accessor for OpenExternalURLOptionsKey()
{
  v4 = qword_1EB54C338;
  if (!qword_1EB54C338)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB54C338);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_1AC247EC4()
{
  v2 = qword_1EB54C328;
  if (!qword_1EB54C328)
  {
    type metadata accessor for OpenExternalURLOptionsKey();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C328);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC247F44()
{
  v2 = qword_1EB54C330;
  if (!qword_1EB54C330)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB54C330);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1AC247FA8(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1AC24746C;

  return sub_1AC246AC8(a1, v6, v7, v8);
}

uint64_t sub_1AC24808C(void (*a1)(void))
{
  a1();
  v2 = _swift_stdlib_bridgeErrorToNSError();
  MEMORY[0x1E69E5928](v2);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_1AC248124(uint64_t *a1, uint64_t **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v9 = a4();
  v8 = *a1;
  MEMORY[0x1E69E5928](v9);
  sub_1AC30AEAC();
  if (v9)
  {
    MEMORY[0x1E69E5920](v9);
  }

  *a1 = v8 + 8;
  v5 = *a2;
  if (!*a2)
  {
    return MEMORY[0x1E69E5920](v9);
  }

  MEMORY[0x1E69E5928](v9);
  *v5 = v9;
  result = MEMORY[0x1E69E5920](v9);
  *a2 = v5 + 1;
  return result;
}

unint64_t sub_1AC2482CC()
{
  v2 = qword_1EB54C340;
  if (!qword_1EB54C340)
  {
    type metadata accessor for OpenExternalURLOptionsKey();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C340);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC248364()
{
  v2 = qword_1EB54C348;
  if (!qword_1EB54C348)
  {
    type metadata accessor for OpenExternalURLOptionsKey();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C348);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2483FC()
{
  v2 = qword_1EB54C350;
  if (!qword_1EB54C350)
  {
    type metadata accessor for OpenExternalURLOptionsKey();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C350);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC24847C()
{
  v2 = qword_1EB54C358;
  if (!qword_1EB54C358)
  {
    type metadata accessor for OpenExternalURLOptionsKey();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C358);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2484FC()
{
  v2 = qword_1EB54C360;
  if (!qword_1EB54C360)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C360);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC2485AC()
{
  swift_beginAccess();
  v2 = *(v0 + 32);
  MEMORY[0x1E69E5928](v2);
  swift_endAccess();
  return v2;
}

uint64_t sub_1AC248604(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  swift_beginAccess();
  v2 = *(v1 + 32);
  *(v1 + 32) = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

uint64_t sub_1AC2486D8()
{
  swift_beginAccess();
  v2 = *(v0 + 40);

  swift_endAccess();
  return v2;
}

uint64_t sub_1AC248728(uint64_t a1)
{

  swift_beginAccess();
  *(v1 + 40) = a1;

  swift_endAccess();
}

uint64_t sub_1AC2487F0()
{
  swift_beginAccess();
  v2 = *(v0 + 48);

  swift_endAccess();
  return v2;
}

uint64_t sub_1AC24884C(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;

  swift_endAccess();
}

uint64_t sub_1AC248918(uint64_t a1, uint64_t a2)
{
  v108 = a2;
  v116 = a1;
  v120 = 0;
  v160 = 0;
  v159 = 0;
  v158 = 0;
  v157 = 0;
  v106 = 0;
  v141 = 0;
  v140 = 0;
  v138 = 0;
  v109 = sub_1AC309E6C();
  v110 = *(v109 - 8);
  v111 = v110;
  v112 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v109 - 8);
  v114 = (v112 + 15) & 0xFFFFFFFFFFFFFFF0;
  v113 = &v29[-v114];
  MEMORY[0x1EEE9AC00](&v29[-v114]);
  v115 = &v29[-v114];
  v160 = a1;
  v159 = v3;
  v158 = v4;
  v117 = sub_1AC3091BC();
  v118 = [v117 productID];

  v119 = CBProductIDIsAppleHeadphone(v118);
  v157 = v119;
  v121 = sub_1AC30922C();
  v154 = v120;
  sub_1AC30A85C();
  v122 = v155;
  v123 = v156;
  if (v156)
  {
    v104 = v122;
    v105 = v123;
    v103 = v123;
    v101 = v122;
    v140 = v122;
    v141 = v123;

    v102 = &v139;
    swift_beginAccess();
    v5 = v103;
    v6 = v107;
    *(v107 + 48) = v101;
    *(v6 + 56) = v5;

    swift_endAccess();

    if (v119)
    {
      v98 = &v126;
      swift_beginAccess();
      v99 = *(v107 + 48);
      v100 = *(v107 + 56);

      swift_endAccess();
      v124 = v99;
      v125 = v100;
      v97 = v100 != 0;
      v95 = v97;
      sub_1AC2063F0();
      v96 = v95;
    }

    else
    {
      v96 = 0;
    }

    v7 = v115;
    v74 = v96;

    v75 = v74;
    v138 = v74;
    v8 = sub_1AC300FD4();
    (*(v111 + 16))(v7, v8, v109);
    v78 = 17;
    v83 = 7;
    v84 = swift_allocObject();
    *(v84 + 16) = v75;
    v94 = sub_1AC309E4C();
    v76 = v94;
    v93 = sub_1AC30AD2C();
    v77 = v93;
    v87 = swift_allocObject();
    v79 = v87;
    v80 = 32;
    *(v87 + 16) = 32;
    v9 = swift_allocObject();
    v10 = v80;
    v88 = v9;
    v81 = v9;
    *(v9 + 16) = 8;
    v82 = v10;
    v11 = swift_allocObject();
    v12 = v84;
    v85 = v11;
    *(v11 + 16) = sub_1AC212CEC;
    *(v11 + 24) = v12;
    v13 = swift_allocObject();
    v14 = v85;
    v91 = v13;
    v86 = v13;
    *(v13 + 16) = sub_1AC215C98;
    *(v13 + 24) = v14;
    v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8);
    v89 = sub_1AC30B18C();
    v90 = v15;

    v16 = v87;
    v17 = v90;
    *v90 = sub_1AC215C90;
    v17[1] = v16;

    v18 = v88;
    v19 = v90;
    v90[2] = sub_1AC215C90;
    v19[3] = v18;

    v20 = v90;
    v21 = v91;
    v90[4] = sub_1AC215CA4;
    v20[5] = v21;
    sub_1AC206300();

    if (os_log_type_enabled(v94, v93))
    {
      v22 = v106;
      v67 = sub_1AC30AE6C();
      v64 = v67;
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8);
      v68 = sub_1AC213EE4(0);
      v66 = v68;
      v70 = 1;
      v69 = sub_1AC213EE4(1);
      v131 = v67;
      v130 = v68;
      v129 = v69;
      v71 = &v131;
      sub_1AC213F38(2, &v131);
      sub_1AC213F38(v70, v71);
      v127 = sub_1AC215C90;
      v128 = v79;
      sub_1AC213F4C(&v127, v71, &v130, &v129);
      v72 = v22;
      v73 = v22;
      if (v22)
      {
        v62 = 0;

        __break(1u);
      }

      else
      {
        v127 = sub_1AC215C90;
        v128 = v81;
        sub_1AC213F4C(&v127, &v131, &v130, &v129);
        v60 = 0;
        v61 = 0;
        v127 = sub_1AC215CA4;
        v128 = v86;
        sub_1AC213F4C(&v127, &v131, &v130, &v129);
        v58 = 0;
        v59 = 0;
        _os_log_impl(&dword_1AC1C3000, v76, v77, "HeadphoneSettings: This device is %s of coverage feature", v64, 0xCu);
        sub_1AC213F98(v66);
        sub_1AC213F98(v69);
        sub_1AC30AE4C();

        v63 = v58;
      }
    }

    else
    {
      v23 = v106;

      v63 = v23;
    }

    v57 = v63;

    (*(v111 + 8))(v115, v109);
    sub_1AC30929C();
    if (v132[3])
    {
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C368);
      if (!swift_dynamicCast())
      {
        v133 = 0;
        v134 = 0;
        v135 = 0;
        v136 = 0;
        v137 = 0;
      }
    }

    else
    {
      sub_1AC204664(v132);
      v133 = 0;
      v134 = 0;
      v135 = 0;
      v136 = 0;
      v137 = 0;
    }

    v53 = v136 != 0;
    sub_1AC204664(&v133);

    v54 = __PAIR64__(v74, v53);
    v55 = v57;
  }

  else
  {
    v24 = v113;

    v25 = sub_1AC250850();
    (*(v111 + 16))(v24, v25, v109);
    v51 = sub_1AC309E4C();
    v48 = v51;
    v50 = sub_1AC30AD1C();
    v49 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8);
    v52 = sub_1AC30B18C();
    if (os_log_type_enabled(v51, v50))
    {
      v26 = v106;
      v39 = sub_1AC30AE6C();
      v35 = v39;
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8);
      v37 = 0;
      v40 = sub_1AC213EE4(0);
      v38 = v40;
      v41 = sub_1AC213EE4(v37);
      v145 = v39;
      v144 = v40;
      v143 = v41;
      v42 = 0;
      v43 = &v145;
      sub_1AC213F38(0, &v145);
      sub_1AC213F38(v42, v43);
      v142 = v52;
      v44 = v29;
      MEMORY[0x1EEE9AC00](v29);
      v45 = &v29[-48];
      *&v29[-32] = v27;
      *&v29[-24] = &v144;
      *&v29[-16] = &v143;
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BD08);
      sub_1AC218014();
      sub_1AC30AAAC();
      v47 = v26;
      if (v26)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1AC1C3000, v48, v49, "HeadphoneSettings: No Serial Number for Device When Loading Coverage Feature", v35, 2u);
        v33 = 0;
        sub_1AC213F98(v38);
        sub_1AC213F98(v41);
        sub_1AC30AE4C();

        v34 = v47;
      }
    }

    else
    {

      v34 = v106;
    }

    v32 = v34;

    (*(v111 + 8))(v113, v109);
    sub_1AC30929C();
    if (v148)
    {
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C368);
      if (!swift_dynamicCast())
      {
        v149 = 0;
        v150 = 0;
        v151 = 0;
        v152 = 0;
        v153 = 0;
      }
    }

    else
    {
      sub_1AC204664(v147);
      v149 = 0;
      v150 = 0;
      v151 = 0;
      v152 = 0;
      v153 = 0;
    }

    v30 = v152 != 0;
    sub_1AC204664(&v149);
    v54 = v30;
    v55 = v32;
  }

  LOBYTE(v146) = v54 & 1;
  HIBYTE(v146) = BYTE4(v54) & 1;
  return v146;
}

uint64_t sub_1AC249610()
{
  (*(*v0 + 200))();
  swift_beginAccess();
  v3 = *(v2 + 40);

  swift_endAccess();
  if (v3)
  {
    return v3;
  }

  sub_1AC215CB0();
  return sub_1AC30B18C();
}

void *sub_1AC249714(uint64_t a1, uint64_t a2)
{
  v93 = a1;
  v92 = a2;
  v91 = 0;
  v84 = sub_1AC24D4AC;
  v85 = sub_1AC215C98;
  v86 = sub_1AC215C90;
  v87 = sub_1AC215C90;
  v88 = sub_1AC215CA4;
  v89 = sub_1AC24D518;
  v123 = 0;
  v122 = 0;
  v121 = 0;
  v90 = 0;
  v94 = sub_1AC309E6C();
  v95 = *(v94 - 8);
  v96 = v94 - 8;
  v97 = (*(v95 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v98 = &v28 - v97;
  v123 = MEMORY[0x1EEE9AC00](v93);
  v122 = v3;
  v121 = v2;
  v99 = &v120;
  swift_beginAccess();
  v100 = *(v2 + 32);
  MEMORY[0x1E69E5928](v100);
  swift_endAccess();
  v119 = v100;
  v82 = v100 == 0;
  v81 = v82;
  sub_1AC206988(&v119);

  if (v81)
  {
    v78 = &v103;
    swift_beginAccess();
    v79 = v83[6];
    v80 = v83[7];

    swift_endAccess();
    v101 = v79;
    v102 = v80;
    v77 = v80 != 0;
    v75 = v77;
    sub_1AC2063F0();
    v76 = v75;
  }

  else
  {
    v76 = 0;
  }

  v74 = v76;

  if (v74)
  {
    v5 = v98;
    v6 = sub_1AC250850();
    (*(v95 + 16))(v5, v6, v94);

    v72 = sub_1AC309E4C();
    v73 = sub_1AC30AD2C();
    v62 = 17;
    v64 = 7;
    v66 = swift_allocObject();
    *(v66 + 16) = 32;
    v67 = swift_allocObject();
    *(v67 + 16) = 8;
    v63 = 32;
    v7 = swift_allocObject();
    v8 = v83;
    v65 = v7;
    *(v7 + 16) = v84;
    *(v7 + 24) = v8;
    v9 = swift_allocObject();
    v10 = v65;
    v69 = v9;
    *(v9 + 16) = v85;
    *(v9 + 24) = v10;
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8);
    v68 = sub_1AC30B18C();
    v70 = v11;

    v12 = v66;
    v13 = v70;
    *v70 = v86;
    v13[1] = v12;

    v14 = v67;
    v15 = v70;
    v70[2] = v87;
    v15[3] = v14;

    v16 = v69;
    v17 = v70;
    v70[4] = v88;
    v17[5] = v16;
    sub_1AC206300();

    if (os_log_type_enabled(v72, v73))
    {
      v18 = v90;
      v55 = sub_1AC30AE6C();
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8);
      v56 = sub_1AC213EE4(0);
      v57 = sub_1AC213EE4(1);
      v58 = &v108;
      v108 = v55;
      v59 = &v107;
      v107 = v56;
      v60 = &v106;
      v106 = v57;
      sub_1AC213F38(2, &v108);
      sub_1AC213F38(1, v58);
      v104 = v86;
      v105 = v66;
      sub_1AC213F4C(&v104, v58, v59, v60);
      v61 = v18;
      if (v18)
      {

        __break(1u);
      }

      else
      {
        v104 = v87;
        v105 = v67;
        sub_1AC213F4C(&v104, &v108, &v107, &v106);
        v53 = 0;
        v104 = v88;
        v105 = v69;
        sub_1AC213F4C(&v104, &v108, &v107, &v106);
        _os_log_impl(&dword_1AC1C3000, v72, v73, "HeadphoneSettings: Loading Coverage Feature Controller With Serial Number: %s", v55, 0xCu);
        sub_1AC213F98(v56);
        sub_1AC213F98(v57);
        sub_1AC30AE4C();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v72);
    (*(v95 + 8))(v98, v94);
    v49 = sub_1AC24D4B4();
    v50 = &v116;
    swift_beginAccess();
    v51 = v83[6];
    v52 = v83[7];

    swift_endAccess();
    v114 = v51;
    v115 = v52;
    if (v52)
    {
      v117 = v114;
      v118 = v115;
    }

    else
    {
      v117 = sub_1AC30A9DC();
      v118 = v19;
      if (v115)
      {
        sub_1AC2063F0();
      }
    }

    v40 = v117;
    v39 = v118;
    v35 = 24;
    v38 = 7;
    v42 = swift_allocObject();
    v34 = v42 + 16;
    MEMORY[0x1E69E5928](v92);
    swift_unknownObjectWeakInit();
    MEMORY[0x1E69E5920](v92);
    v41 = swift_allocObject();
    v36 = v41 + 16;

    v37 = v83;
    swift_weakInit();

    v45 = 32;
    v20 = swift_allocObject();
    v21 = v39;
    v22 = v89;
    v23 = v42;
    v24 = v20;
    v25 = v40;
    *(v24 + 16) = v41;
    *(v24 + 24) = v23;
    v44 = sub_1AC24C660(v25, v21, v22, v24);

    MEMORY[0x1E69E5928](v44);
    v43 = &v113;
    v46 = 0;
    swift_beginAccess();
    v26 = v83[4];
    v83[4] = v44;
    MEMORY[0x1E69E5920](v26);
    swift_endAccess();
    MEMORY[0x1E69E5920](v44);
    v47 = &v111;
    swift_beginAccess();
    v48 = v83[4];
    MEMORY[0x1E69E5928](v48);
    swift_endAccess();
    v112 = v48;
    if (v48)
    {
      v32 = &v112;
      v33 = v112;
      MEMORY[0x1E69E5928](v112);
      sub_1AC206988(v32);
      *&v27 = MEMORY[0x1E69E5928](v92).n128_u64[0];
      [v33 setParentViewController_];
      MEMORY[0x1E69E5920](v92);
      MEMORY[0x1E69E5920](v33);
    }

    else
    {
      sub_1AC206988(&v112);
    }

    v30 = &v109;
    swift_beginAccess();
    v31 = v83[4];
    MEMORY[0x1E69E5928](v31);
    swift_endAccess();
    v110 = v31;
    if (v31)
    {
      v28 = &v110;
      v29 = v110;
      MEMORY[0x1E69E5928](v110);
      sub_1AC206988(v28);
      [v29 loadSpecifiers];
      return MEMORY[0x1E69E5920](v29);
    }

    else
    {
      return sub_1AC206988(&v110);
    }
  }

  return result;
}

uint64_t sub_1AC24A16C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);

  swift_endAccess();
  if (v4)
  {
    return v3;
  }

  else
  {
    return sub_1AC30A9DC();
  }
}

uint64_t sub_1AC24A23C(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v16 = a2;
  v15 = MEMORY[0x1E69E85E0];
  v19 = &unk_1AC311600;
  v22 = 0;
  v21 = 0;
  v13 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C318) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = &v13 - v13;
  v22 = MEMORY[0x1EEE9AC00](v20) + 16;
  v21 = v2 + 16;
  v17 = 0;
  v3 = sub_1AC30ABDC();
  (*(*(v3 - 8) + 56))(v18, 1);

  sub_1AC30ABBC();
  v14 = sub_1AC30ABAC();
  v4 = swift_allocObject();
  v5 = v15;
  v6 = v16;
  v7 = v17;
  v8 = v18;
  v9 = v19;
  v10 = v4;
  v11 = v20;
  v10[2] = v14;
  v10[3] = v5;
  v10[4] = v11;
  v10[5] = v6;
  sub_1AC244BA8(v7, v7, v8, v9, v10, MEMORY[0x1E69E7CA8] + 8);
}

uint64_t sub_1AC24A3DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 592) = a5;
  *(v5 + 584) = a4;
  *(v5 + 408) = v5;
  *(v5 + 416) = 0;
  *(v5 + 424) = 0;
  *(v5 + 440) = 0;
  *(v5 + 640) = 0;
  v6 = sub_1AC309E6C();
  *(v5 + 600) = v6;
  *(v5 + 608) = *(v6 - 8);
  *(v5 + 616) = swift_task_alloc();
  *(v5 + 624) = swift_task_alloc();
  *(v5 + 416) = a4 + 16;
  *(v5 + 424) = a5 + 16;
  sub_1AC30ABBC();
  *(v5 + 632) = sub_1AC30ABAC();
  v11 = sub_1AC30AB9C();

  return MEMORY[0x1EEE6DFA0](sub_1AC24A554, v11, v7);
}

uint64_t sub_1AC24A554()
{
  v84 = v0;
  *(v0 + 408) = v0;
  swift_beginAccess();
  *(v0 + 432) = swift_weakLoadStrong();
  if (*(v0 + 432))
  {
    v72 = *(v74 + 432);

    sub_1AC20BCE0();
    swift_endAccess();
    swift_beginAccess();
    v73 = *(v72 + 32);
    MEMORY[0x1E69E5928](v73);
    swift_endAccess();
    *(v74 + 576) = v73;
    if (*(v74 + 576))
    {
      v68 = *(v74 + 576);
      MEMORY[0x1E69E5928](v68);
      sub_1AC206988((v74 + 576));

      v69 = [v68 specifiers];
      sub_1AC215CB0();
      v70 = sub_1AC30AB0C();
      MEMORY[0x1E69E5920](v68);
      MEMORY[0x1E69E5920](v69);
      v71 = v70;
      goto LABEL_6;
    }

    sub_1AC206988((v74 + 576));
  }

  else
  {
    sub_1AC20BCE0();
    swift_endAccess();
  }

  v71 = 0;
LABEL_6:
  if (v71)
  {
    v1 = *(v74 + 624);
    v63 = *(v74 + 600);
    v62 = *(v74 + 608);
    *(v74 + 440) = v71;
    v2 = sub_1AC250850();
    v64 = *(v62 + 16);
    v64(v1, v2, v63);
    oslog = sub_1AC309E4C();
    v65 = sub_1AC30AD2C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8);
    v67 = sub_1AC30B18C();
    if (os_log_type_enabled(oslog, v65))
    {
      buf = sub_1AC30AE6C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8);
      v59 = sub_1AC213EE4(0);
      v60 = sub_1AC213EE4(0);
      *(v74 + 544) = buf;
      *(v74 + 552) = v59;
      *(v74 + 560) = v60;
      sub_1AC213F38(0, (v74 + 544));
      sub_1AC213F38(0, (v74 + 544));
      *(v74 + 568) = v67;
      v61 = swift_task_alloc();
      v61[2] = v74 + 544;
      v61[3] = v74 + 552;
      v61[4] = v74 + 560;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BD08);
      sub_1AC218014();
      sub_1AC30AAAC();

      _os_log_impl(&dword_1AC1C3000, oslog, v65, "HeadphoneSettings: Coverage Feature Handler Invoked", buf, 2u);
      sub_1AC213F98(v59);
      sub_1AC213F98(v60);
      sub_1AC30AE4C();
    }

    v55 = *(v74 + 624);
    v56 = *(v74 + 600);
    v54 = *(v74 + 608);
    MEMORY[0x1E69E5920](oslog);
    v57 = *(v54 + 8);
    v57(v55, v56);
    swift_beginAccess();
    *(v74 + 448) = swift_weakLoadStrong();
    if (*(v74 + 448))
    {
      v51 = *(v74 + 448);

      sub_1AC20BCE0();
      swift_endAccess();
      swift_beginAccess();
      v52 = *(v51 + 40);

      swift_endAccess();

      v53 = v52;
    }

    else
    {
      sub_1AC20BCE0();
      swift_endAccess();
      v53 = 0;
    }

    *(v74 + 456) = v53;
    if (!*(v74 + 456))
    {
      sub_1AC209190();

      goto LABEL_27;
    }

    sub_1AC209190();

    swift_beginAccess();
    *(v74 + 464) = swift_weakLoadStrong();
    if (*(v74 + 464))
    {
      v49 = *(v74 + 464);

      sub_1AC20BCE0();
      swift_endAccess();
      swift_beginAccess();
      v50 = *(v49 + 40);

      swift_endAccess();
      *(v74 + 536) = v50;
      if (*(v74 + 536))
      {

        sub_1AC209190();

        sub_1AC215CB0();
        v46 = sub_1AC30AB4C();

        v47 = v46;
        v48 = 0;
        goto LABEL_21;
      }

      sub_1AC209190();
    }

    else
    {
      sub_1AC20BCE0();
      swift_endAccess();
    }

    v47 = 0;
    v48 = 1;
LABEL_21:
    sub_1AC215CB0();
    v75 = sub_1AC30AB4C();
    if (v48)
    {
      v45 = 0;
    }

    else
    {
      v82 = v47;
      v83 = v48 & 1;
      v45 = v47 == v75;
    }

    if (v45)
    {
      swift_beginAccess();
      *(v74 + 472) = swift_weakLoadStrong();
      if (*(v74 + 472))
      {
        v41 = *(v74 + 472);

        sub_1AC20BCE0();
        swift_endAccess();
        swift_beginAccess();
        v42 = *(v41 + 40);

        swift_endAccess();

        v43 = v42;
      }

      else
      {
        sub_1AC20BCE0();
        swift_endAccess();
        v43 = 0;
      }

      *(v74 + 480) = v43;
      if (*(v74 + 480))
      {
        v76 = *(v74 + 480);
      }

      else
      {
        sub_1AC215CB0();
        v76 = sub_1AC30B18C();
        if (*(v74 + 480))
        {
          sub_1AC209190();
        }
      }

      *(v74 + 488) = v76;
      *(v74 + 496) = v71;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C378);
      sub_1AC24D54C();
      sub_1AC30B20C();
      sub_1AC209190();
      v3 = *(v74 + 384);
      *(v74 + 392) = *(v74 + 376);
      *(v74 + 400) = v3;
      *(v74 + 642) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C388);
      sub_1AC24D74C();
      sub_1AC30AA7C();
      sub_1AC24D7D4();
      v44 = *(v74 + 641);
LABEL_37:

      *(v74 + 640) = v44 & 1;
      if ((v44 & 1) == 0)
      {
LABEL_59:

        goto LABEL_61;
      }

      v4 = *(v74 + 616);
      v25 = *(v74 + 600);
      v27 = *(v74 + 584);
      v5 = sub_1AC250850();
      v64(v4, v5, v25);

      v26 = swift_allocObject();
      *(v26 + 16) = v71;

      v28 = swift_allocObject();
      *(v28 + 16) = sub_1AC24D80C;
      *(v28 + 24) = v26;

      v30 = swift_allocObject();
      *(v30 + 16) = sub_1AC24D904;
      *(v30 + 24) = v27;

      log = sub_1AC309E4C();
      v40 = sub_1AC30AD2C();
      v32 = swift_allocObject();
      *(v32 + 16) = 32;
      v33 = swift_allocObject();
      *(v33 + 16) = 8;
      v29 = swift_allocObject();
      *(v29 + 16) = sub_1AC24D814;
      *(v29 + 24) = v28;
      v34 = swift_allocObject();
      *(v34 + 16) = sub_1AC215C98;
      *(v34 + 24) = v29;
      v35 = swift_allocObject();
      *(v35 + 16) = 32;
      v36 = swift_allocObject();
      *(v36 + 16) = 8;
      v31 = swift_allocObject();
      *(v31 + 16) = sub_1AC24D814;
      *(v31 + 24) = v30;
      v37 = swift_allocObject();
      *(v37 + 16) = sub_1AC215C98;
      *(v37 + 24) = v31;
      sub_1AC30B18C();
      v38 = v6;

      *v38 = sub_1AC215C90;
      v38[1] = v32;

      v38[2] = sub_1AC215C90;
      v38[3] = v33;

      v38[4] = sub_1AC215CA4;
      v38[5] = v34;

      v38[6] = sub_1AC215C90;
      v38[7] = v35;

      v38[8] = sub_1AC215C90;
      v38[9] = v36;

      v38[10] = sub_1AC215CA4;
      v38[11] = v37;
      sub_1AC206300();

      if (os_log_type_enabled(log, v40))
      {
        v22 = sub_1AC30AE6C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8);
        v23 = sub_1AC213EE4(0);
        v24 = sub_1AC213EE4(2);
        v77 = v22;
        v78 = v23;
        v79 = v24;
        sub_1AC213F38(2, &v77);
        sub_1AC213F38(2, &v77);
        v80 = sub_1AC215C90;
        v81 = v32;
        sub_1AC213F4C(&v80, &v77, &v78, &v79);
        v80 = sub_1AC215C90;
        v81 = v33;
        sub_1AC213F4C(&v80, &v77, &v78, &v79);
        v80 = sub_1AC215CA4;
        v81 = v34;
        sub_1AC213F4C(&v80, &v77, &v78, &v79);
        v80 = sub_1AC215C90;
        v81 = v35;
        sub_1AC213F4C(&v80, &v77, &v78, &v79);
        v80 = sub_1AC215C90;
        v81 = v36;
        sub_1AC213F4C(&v80, &v77, &v78, &v79);
        v80 = sub_1AC215CA4;
        v81 = v37;
        sub_1AC213F4C(&v80, &v77, &v78, &v79);
        _os_log_impl(&dword_1AC1C3000, log, v40, "HeadphoneSettings: Coverage Feature Updating Specifiers with %s compared to %s", v22, 0x16u);
        sub_1AC213F98(v23);
        sub_1AC213F98(v24);
        sub_1AC30AE4C();
      }

      else
      {
      }

      v20 = *(v74 + 616);
      v21 = *(v74 + 600);
      MEMORY[0x1E69E5920](log);
      v57(v20, v21);
      swift_beginAccess();
      *(v74 + 504) = swift_weakLoadStrong();
      if (*(v74 + 504))
      {
        v7 = *(v74 + 504);

        sub_1AC20BCE0();
        swift_endAccess();
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        swift_endAccess();
        (*(*v7 + 208))(Strong);
        MEMORY[0x1E69E5920](Strong);
      }

      else
      {
        sub_1AC20BCE0();
        swift_endAccess();
      }

      swift_beginAccess();
      *(v74 + 512) = swift_weakLoadStrong();
      if (*(v74 + 512))
      {
        v18 = *(v74 + 512);

        sub_1AC20BCE0();
        swift_endAccess();

        swift_beginAccess();
        *(v18 + 40) = v71;

        swift_endAccess();
      }

      else
      {
        sub_1AC20BCE0();
        swift_endAccess();
      }

      swift_beginAccess();
      *(v74 + 520) = swift_unknownObjectWeakLoadStrong();
      if (!*(v74 + 520))
      {
        sub_1AC206988((v74 + 520));
        swift_endAccess();
        goto LABEL_59;
      }

      v17 = *(v74 + 520);
      MEMORY[0x1E69E5928](v17);
      sub_1AC206988((v74 + 520));
      swift_endAccess();
      swift_beginAccess();
      *(v74 + 528) = swift_weakLoadStrong();
      if (*(v74 + 528))
      {
        v15 = *(v74 + 528);

        sub_1AC20BCE0();
        swift_endAccess();
        swift_beginAccess();
        v16 = *(v15 + 40);

        swift_endAccess();

        if (v16)
        {
          sub_1AC215CB0();
          v13 = sub_1AC30B02C();

          v14 = v13;
LABEL_54:
          if (v14)
          {
            v11 = sub_1AC30AAFC();

            v12 = v11;
          }

          else
          {
            v12 = 0;
          }

          sub_1AC30A9DC();
          v10 = sub_1AC30A91C();

          [v17 insertContiguousSpecifiers:v12 afterSpecifierID:v10];
          MEMORY[0x1E69E5920](v10);
          MEMORY[0x1E69E5920](v12);
          MEMORY[0x1E69E5920](v17);
          goto LABEL_59;
        }
      }

      else
      {
        sub_1AC20BCE0();
        swift_endAccess();
      }

      v14 = 0;
      goto LABEL_54;
    }

LABEL_27:
    v44 = 1;
    goto LABEL_37;
  }

LABEL_61:

  v8 = *(*(v74 + 408) + 8);

  return v8();
}

uint64_t sub_1AC24C3B4(char *a1, void *a2)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = *a1;
  MEMORY[0x1E69E5928](*a2);
  MEMORY[0x1E69E5928](v7);
  if (v8)
  {
    v4 = 1;
  }

  else
  {
    MEMORY[0x1E69E5928](v6);
    v3 = [v6 isEqualToSpecifier_];
    MEMORY[0x1E69E5920](v7);
    MEMORY[0x1E69E5920](v6);
    v4 = v3 ^ 1;
  }

  MEMORY[0x1E69E5920](v6);
  result = MEMORY[0x1E69E5920](v7);
  *a1 = v4 & 1;
  return result;
}

uint64_t sub_1AC24C4EC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  result = a1;
  *a2 = a1;
  return result;
}

uint64_t *sub_1AC24C520@<X0>(uint64_t **a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {

    sub_1AC20BCE0();
    swift_endAccess();
    swift_beginAccess();
    v2 = *(Strong + 40);

    swift_endAccess();

    v3 = v2;
  }

  else
  {
    sub_1AC20BCE0();
    result = swift_endAccess();
    v3 = 0;
  }

  v5 = v3;
  if (v3)
  {
    *a1 = v5;
  }

  else
  {
    sub_1AC215CB0();
    result = sub_1AC30B18C();
    *a1 = result;
    if (v5)
    {
      result = &v5;
      sub_1AC209190();
    }
  }

  return result;
}

void sub_1AC24C6B8(void *a1)
{
  v12 = a1;
  v19 = 0;
  v13 = 0;
  v20 = a1;
  v14 = &v17;
  swift_beginAccess();
  v15 = *(v1 + 40);

  swift_endAccess();
  v18 = v15;
  if (v15)
  {
    v2 = v13;
    v7 = v18;

    sub_1AC209190();
    v16 = v7;
    v3 = v12;
    v8 = &v6;
    MEMORY[0x1EEE9AC00](&v6);
    v9 = v5;
    v5[2] = v4;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C378);
    sub_1AC24D54C();
    sub_1AC30AAAC();
    v11 = v2;

    sub_1AC209190();
    v6 = v11;
  }

  else
  {
    sub_1AC209190();
  }
}

void sub_1AC24C844(uint64_t a1, void *a2)
{
  v50 = a1;
  v49 = a2;
  v58 = sub_1AC24D5FC;
  v62 = sub_1AC215C98;
  v64 = sub_1AC215C90;
  v66 = sub_1AC215C90;
  v69 = sub_1AC215CA4;
  v81 = 0;
  v80 = 0;
  v55 = sub_1AC309E6C();
  v53 = *(v55 - 8);
  v54 = v55 - 8;
  v51 = (*(v53 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = v20 - v51;
  v52 = v20 - v51;
  v56 = *MEMORY[0x1EEE9AC00](v50);
  v81 = v56;
  v80 = v3;
  v4 = sub_1AC250850();
  (*(v53 + 16))(v2, v4, v55);
  MEMORY[0x1E69E5928](v56);
  v60 = 7;
  v61 = swift_allocObject();
  *(v61 + 16) = v56;
  v73 = sub_1AC309E4C();
  v74 = sub_1AC30AD2C();
  v57 = 17;
  v65 = swift_allocObject();
  *(v65 + 16) = 32;
  v67 = swift_allocObject();
  *(v67 + 16) = 8;
  v59 = 32;
  v5 = swift_allocObject();
  v6 = v61;
  v63 = v5;
  *(v5 + 16) = v58;
  *(v5 + 24) = v6;
  v7 = swift_allocObject();
  v8 = v63;
  v70 = v7;
  *(v7 + 16) = v62;
  *(v7 + 24) = v8;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8);
  v68 = sub_1AC30B18C();
  v71 = v9;

  v10 = v65;
  v11 = v71;
  *v71 = v64;
  v11[1] = v10;

  v12 = v67;
  v13 = v71;
  v71[2] = v66;
  v13[3] = v12;

  v14 = v70;
  v15 = v71;
  v71[4] = v69;
  v15[5] = v14;
  sub_1AC206300();

  if (os_log_type_enabled(v73, v74))
  {
    v41 = sub_1AC30AE6C();
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8);
    v42 = sub_1AC213EE4(0);
    v43 = sub_1AC213EE4(1);
    v44 = &v79;
    v79 = v41;
    v45 = &v78;
    v78 = v42;
    v46 = &v77;
    v77 = v43;
    sub_1AC213F38(2, &v79);
    sub_1AC213F38(1, v44);
    v16 = v48;
    v75 = v64;
    v76 = v65;
    sub_1AC213F4C(&v75, v44, v45, v46);
    v47 = v16;
    if (v16)
    {

      __break(1u);
    }

    else
    {
      v75 = v66;
      v76 = v67;
      sub_1AC213F4C(&v75, &v79, &v78, &v77);
      v38 = 0;
      v75 = v69;
      v76 = v70;
      sub_1AC213F4C(&v75, &v79, &v78, &v77);
      v37 = 0;
      _os_log_impl(&dword_1AC1C3000, v73, v74, "HeadphoneSettings: Coverage Feature Removing Identifier with ID: %s", v41, 0xCu);
      sub_1AC213F98(v42);
      sub_1AC213F98(v43);
      sub_1AC30AE4C();

      v39 = v37;
    }
  }

  else
  {

    v39 = v48;
  }

  v36 = v39;
  MEMORY[0x1E69E5920](v73);
  (*(v53 + 8))(v52, v55);
  *&v17 = MEMORY[0x1E69E5928](v49).n128_u64[0];
  if (v49)
  {
    v35 = v49;
    v33 = v49;
    v18 = [v56 identifier];
    v34 = v18;
    if (v18)
    {
      v32 = v34;
      v27 = v34;
      v28 = sub_1AC30A92C();
      v29 = v19;
      MEMORY[0x1E69E5920](v27);
      v30 = v28;
      v31 = v29;
    }

    else
    {
      v30 = 0;
      v31 = 0;
    }

    v25 = v31;
    v26 = v30;
    if (v31)
    {
      v23 = v26;
      v24 = v25;
      v20[1] = v25;
      v21 = sub_1AC30A91C();

      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    [v33 removeSpecifierID_];
    MEMORY[0x1E69E5920](v20[0]);
    MEMORY[0x1E69E5920](v33);
  }
}

uint64_t sub_1AC24D054(void *a1)
{
  v8 = [a1 identifier];
  if (v8)
  {
    v4 = sub_1AC30A92C();
    v5 = v1;
    MEMORY[0x1E69E5920](v8);
    v6 = v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  if (v7)
  {
    return v6;
  }

  sub_1AC30B05C();
  __break(1u);
  return v3;
}

uint64_t sub_1AC24D190()
{
  sub_1AC2063F0();
  sub_1AC206988((v0 + 32));
  sub_1AC209190();
  sub_1AC2063F0();
  return v2;
}

void *sub_1AC24D264()
{
  v0 = sub_1AC30A9DC();
  result = v3;
  v3[2] = v0;
  v3[3] = v2;
  v3[4] = 0;
  v3[5] = 0;
  v3[6] = 0;
  v3[7] = 0;
  return result;
}

id sub_1AC24D378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1AC30A91C();
  v16 = a3;
  v17 = a4;
  aBlock = MEMORY[0x1E69E9820];
  v12 = 1107296256;
  v13 = 0;
  v14 = sub_1AC24D45C;
  v15 = &block_descriptor_1;
  v8 = _Block_copy(&aBlock);
  v10 = [v7 initWithSerialNumber:v9 updateHandler:?];
  _Block_release(v8);

  MEMORY[0x1E69E5920](v9);

  return v10;
}

uint64_t sub_1AC24D45C(uint64_t a1)
{
  v3 = *(a1 + 32);

  v3(v1);
}

unint64_t sub_1AC24D4B4()
{
  v2 = qword_1EB54C370;
  if (!qword_1EB54C370)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB54C370);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1AC24D54C()
{
  v2 = qword_1EB54C380;
  if (!qword_1EB54C380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C378);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C380);
    return WitnessTable;
  }

  return v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_1AC24D668(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1AC24746C;

  return sub_1AC24A3DC(a1, v6, v7, v8, v9);
}

unint64_t sub_1AC24D74C()
{
  v2 = qword_1EB54C390;
  if (!qword_1EB54C390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C388);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C390);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC24D814()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C378);
  v1 = sub_1AC24D87C();

  return sub_1AC241500(v5, v3, v4, v1);
}

unint64_t sub_1AC24D87C()
{
  v2 = qword_1EB54C398;
  if (!qword_1EB54C398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C378);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C398);
    return WitnessTable;
  }

  return v2;
}

BOOL CBProductIDIsMTK(int a1)
{
  switch(a1)
  {
    case 8209:
      v2 = 1;
      break;
    case 8214:
      v2 = 1;
      break;
    case 8215:
      v2 = 1;
      break;
    case 8230:
      v2 = 1;
      break;
    default:
      v2 = a1 == 8229 || a1 == 8218;
      break;
  }

  return v2;
}

BOOL CBProductIDIsW1(int a1)
{
  switch(a1)
  {
    case 8194:
      v2 = 1;
      break;
    case 8195:
      v2 = 1;
      break;
    case 8197:
      v2 = 1;
      break;
    case 8198:
      v2 = 1;
      break;
    default:
      v2 = a1 == 8201 || a1 == 8208;
      break;
  }

  return v2;
}

BOOL CBProductIDIsW2(int a1)
{
  switch(a1)
  {
    case 8202:
      v2 = 1;
      break;
    case 8203:
      v2 = 1;
      break;
    case 8204:
      v2 = 1;
      break;
    case 8205:
      v2 = 1;
      break;
    case 8206:
      v2 = 1;
      break;
    case 8207:
      v2 = 1;
      break;
    case 8210:
      v2 = 1;
      break;
    case 8211:
      v2 = 1;
      break;
    default:
      v2 = a1 == 8223 || a1 == 8239;
      break;
  }

  return v2;
}

BOOL CBProductIDIsW3(int a1)
{
  switch(a1)
  {
    case 8212:
      v2 = 1;
      break;
    case 8217:
      v2 = 1;
      break;
    case 8219:
      v2 = 1;
      break;
    case 8221:
      v2 = 1;
      break;
    case 8222:
      v2 = 1;
      break;
    case 8224:
      v2 = 1;
      break;
    case 8228:
      v2 = 1;
      break;
    default:
      v2 = a1 == 8232 || a1 == 8231;
      break;
  }

  return v2;
}

uint64_t sub_1AC24DF54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a1;
  v17 = a2;
  v15 = a3;
  v16 = a4;
  sub_1AC30929C();
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C3A0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
    }
  }

  else
  {
    sub_1AC204664(v8);
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
  }

  v5 = v13 != 0;
  v6 = sub_1AC3092FC();
  sub_1AC204664(&v10);
  LOBYTE(v7) = v5;
  HIBYTE(v7) = v6 & 1;
  return v7;
}

uint64_t sub_1AC24E098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v61 = a1;
  v58 = a2;
  v62 = a3;
  v63 = a4;
  v32 = sub_1AC24EDE4;
  v41 = sub_1AC24EE74;
  v43 = sub_1AC24F4EC;
  v66 = sub_1AC24F584;
  v68 = sub_1AC24FC10;
  v89 = 0;
  v88 = 0;
  v86 = 0;
  v87 = 0;
  v72 = 0;
  v76 = sub_1AC309AAC();
  v37 = *(v76 - 8);
  v38 = v76 - 8;
  v25 = (*(v37 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v79 = &v25 - v25;
  v54 = sub_1AC30A90C();
  v28 = *(v54 - 8);
  v29 = v54 - 8;
  v26 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v61);
  v53 = &v25 - v26;
  v89 = v4;
  v88 = v5;
  v86 = v6;
  v87 = v7;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BB88);
  v85[6] = v62;
  v85[7] = v63;
  v40 = 13;
  v64 = 1;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v55 = &unk_1F20F3D88;
  v50 = &off_1F20F3D18;
  v30 = sub_1AC215DE8(v53, &unk_1F20F3D88);
  v31 = v8;
  v52 = *(v28 + 8);
  v51 = v28 + 8;
  v52(v53, v54);
  sub_1AC205220();
  v39 = sub_1AC309D3C();
  v85[4] = v62;
  v85[5] = v63;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v33 = sub_1AC215DE8(v53, v55);
  v34 = v9;
  v52(v53, v54);

  v35 = v85;
  v85[3] = v55;
  v85[0] = v62;
  v85[1] = v63;

  v60 = 7;
  v10 = swift_allocObject();
  v11 = v63;
  *(v10 + 16) = v62;
  *(v10 + 24) = v11;
  v36 = v10;
  sub_1AC20599C();
  sub_1AC309A9C();
  v49 = sub_1AC309D1C();
  v78 = *(v37 + 8);
  v77 = v37 + 8;
  v78(v79, v76);

  v84[4] = v62;
  v84[5] = v63;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v44 = sub_1AC215DE8(v53, v55);
  v45 = v12;
  v52(v53, v54);

  v46 = v84;
  v84[3] = v55;
  v84[0] = v62;
  v84[1] = v63;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C3A8);
  MEMORY[0x1E69E5928](v61);
  v56 = 24;
  v13 = swift_allocObject();
  *(v13 + 16) = v61;
  v42 = v13;
  v57 = &unk_1F20F3C68;
  v48 = swift_allocObject();
  MEMORY[0x1E69E5928](v58);
  swift_unknownObjectWeakInit();
  MEMORY[0x1E69E5920](v58);
  MEMORY[0x1E69E5928](v61);

  v59 = 48;
  v14 = swift_allocObject();
  v15 = v48;
  v16 = v62;
  v17 = v63;
  v14[2] = v61;
  v14[3] = v16;
  v14[4] = v17;
  v14[5] = v15;
  v47 = v14;
  sub_1AC20599C();
  v73 = 2;
  sub_1AC309A9C();

  v80 = sub_1AC309D1C();
  v78(v79, v76);

  v83[4] = v62;
  v83[5] = v63;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v69 = sub_1AC215DE8(v53, v55);
  v70 = v18;
  v52(v53, v54);

  v71 = v83;
  v83[3] = v55;
  v83[0] = v62;
  v83[1] = v63;
  MEMORY[0x1E69E5928](v61);
  v19 = swift_allocObject();
  *(v19 + 16) = v61;
  v67 = v19;
  v75 = swift_allocObject();
  MEMORY[0x1E69E5928](v58);
  swift_unknownObjectWeakInit();
  MEMORY[0x1E69E5920](v58);
  MEMORY[0x1E69E5928](v61);

  v20 = swift_allocObject();
  v21 = v62;
  v22 = v63;
  v23 = v75;
  v20[2] = v61;
  v20[3] = v21;
  v20[4] = v22;
  v20[5] = v23;
  v74 = v20;
  sub_1AC20599C();
  sub_1AC309A9C();

  v81 = sub_1AC309D1C();
  v78(v79, v76);

  v82 = sub_1AC309D2C();

  return v82;
}

uint64_t sub_1AC24EC7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a1;
  v7[1] = a2;
  v7[0] = a3;
  v21 = 0;
  v19 = 0;
  v20 = 0;
  v13 = sub_1AC30A90C();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v9 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = v7 - v9;
  v21 = MEMORY[0x1EEE9AC00](v8);
  v19 = v3;
  v20 = v4;
  v17 = v3;
  v18 = v4;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v14 = sub_1AC215DE8(v12, &unk_1F20F3D88);
  v15 = v5;
  (*(v10 + 8))(v12, v13);
  v16 = sub_1AC30A91C();

  return v16;
}

uint64_t sub_1AC24EDF0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CallManagementDataSource();
  sub_1AC22C214(a2, 258);
  v4 = sub_1AC30A91C();

  return v4;
}

uint64_t sub_1AC24EE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a1;
  v44 = a2;
  v45 = a3;
  v23 = a4;
  v69 = 0;
  v68 = 0;
  v66 = 0;
  v67 = 0;
  v65 = 0;
  v60 = 0;
  v58 = 0;
  v57 = 0;
  v24 = 0;
  v50 = sub_1AC30A90C();
  v47 = *(v50 - 8);
  v48 = v50 - 8;
  v22 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v50);
  v49 = &v20 - v22;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C3B0);
  v39 = *(v42 - 8);
  v40 = v42 - 8;
  v26 = *(v39 + 64);
  v25 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v24);
  v43 = &v20 - v25;
  v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v41 = &v20 - v27;
  v69 = &v20 - v27;
  v68 = v5;
  v66 = v6;
  v67 = v7;
  v55 = v8 + 16;
  v65 = v8 + 16;
  v28 = type metadata accessor for CallManagementDataSource();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BF18);
  v34 = sub_1AC30B18C();
  v32 = v9;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C3B8);
  v31 = sub_1AC30B18C();
  v29 = v10;
  MEMORY[0x1E69E5928](v35);
  v63 = 2;
  v46 = 1;
  v64 = 1;
  v11 = sub_1AC309C5C();
  v12 = v35;
  *v29 = v11;
  MEMORY[0x1E69E5928](v12);
  v61 = 3;
  v62 = v46 & 1;
  v13 = sub_1AC309C5C();
  v14 = v31;
  v29[1] = v13;
  sub_1AC206300();
  v15 = v14;
  v16 = v34;
  *v32 = v15;
  sub_1AC206300();
  v36 = v16;
  MEMORY[0x1E69E5928](v35);
  v37 = sub_1AC22C2B4(v36, v35);
  v60 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C3C0);

  v59 = v37;
  v38 = sub_1AC309C6C();
  v58 = v38;

  sub_1AC309D4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C3A8);
  (*(v39 + 16))(v43, v41, v42);
  v54 = sub_1AC309A8C();
  v57 = v54;
  MEMORY[0x1E69E5928](v54);
  v56[4] = v44;
  v56[5] = v45;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v51 = sub_1AC215DE8(v49, &unk_1F20F3D88);
  v52 = v17;
  (*(v47 + 8))(v49, v50);
  v53 = sub_1AC30A91C();

  [v54 setTitle_];
  MEMORY[0x1E69E5920](v53);
  MEMORY[0x1E69E5920](v54);
  swift_beginAccess();
  v56[0] = swift_unknownObjectWeakLoadStrong();
  if (v56[0])
  {
    v20 = v56;
    v21 = v56[0];
    MEMORY[0x1E69E5928](v56[0]);
    sub_1AC206988(v20);
    swift_endAccess();
    *&v18 = MEMORY[0x1E69E5928](v54).n128_u64[0];
    [v21 showController_];
    MEMORY[0x1E69E5920](v54);
    MEMORY[0x1E69E5920](v21);
  }

  else
  {
    sub_1AC206988(v56);
    swift_endAccess();
  }

  MEMORY[0x1E69E5920](v54);
  (*(v39 + 8))(v41, v42);
}

uint64_t sub_1AC24F500(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CallManagementDataSource();
  sub_1AC22C214(a2, 2);
  v4 = sub_1AC30A91C();

  return v4;
}

uint64_t sub_1AC24F58C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a1;
  v46 = a2;
  v47 = a3;
  v24 = a4;
  v71 = 0;
  v70 = 0;
  v68 = 0;
  v69 = 0;
  v67 = 0;
  v62 = 0;
  v60 = 0;
  v59 = 0;
  v25 = 0;
  v52 = sub_1AC30A90C();
  v49 = *(v52 - 8);
  v50 = v52 - 8;
  v23 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v20 - v23;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C3B0);
  v41 = *(v44 - 8);
  v42 = v44 - 8;
  v27 = *(v41 + 64);
  v26 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v25);
  v45 = &v20 - v26;
  v28 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v43 = &v20 - v28;
  v71 = &v20 - v28;
  v70 = v5;
  v68 = v6;
  v69 = v7;
  v57 = v8 + 16;
  v67 = v8 + 16;
  v30 = type metadata accessor for CallManagementDataSource();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BF18);
  v36 = sub_1AC30B18C();
  v34 = v9;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C3B8);
  v33 = sub_1AC30B18C();
  v31 = v10;
  MEMORY[0x1E69E5928](v37);
  v65 = 2;
  v29 = 0;
  v48 = 1;
  v66 = 0;
  v11 = sub_1AC309C5C();
  v12 = v37;
  *v31 = v11;
  MEMORY[0x1E69E5928](v12);
  v63 = 3;
  v64 = v29 & 1 & v48;
  v13 = sub_1AC309C5C();
  v14 = v33;
  v31[1] = v13;
  sub_1AC206300();
  v15 = v14;
  v16 = v36;
  *v34 = v15;
  sub_1AC206300();
  v38 = v16;
  MEMORY[0x1E69E5928](v37);
  v39 = sub_1AC22C2B4(v38, v37);
  v62 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C3C0);

  v61 = v39;
  v40 = sub_1AC309C6C();
  v60 = v40;

  sub_1AC309D4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C3A8);
  (*(v41 + 16))(v45, v43, v44);
  v56 = sub_1AC309A8C();
  v59 = v56;
  MEMORY[0x1E69E5928](v56);
  v58[4] = v46;
  v58[5] = v47;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v53 = sub_1AC215DE8(v51, &unk_1F20F3D88);
  v54 = v17;
  (*(v49 + 8))(v51, v52);
  v55 = sub_1AC30A91C();

  [v56 setTitle_];
  MEMORY[0x1E69E5920](v55);
  MEMORY[0x1E69E5920](v56);
  swift_beginAccess();
  v58[0] = swift_unknownObjectWeakLoadStrong();
  if (v58[0])
  {
    v21 = v58;
    v22 = v58[0];
    MEMORY[0x1E69E5928](v58[0]);
    sub_1AC206988(v21);
    swift_endAccess();
    *&v18 = MEMORY[0x1E69E5928](v56).n128_u64[0];
    [v22 showController_];
    MEMORY[0x1E69E5920](v56);
    MEMORY[0x1E69E5920](v22);
  }

  else
  {
    sub_1AC206988(v58);
    swift_endAccess();
  }

  MEMORY[0x1E69E5920](v56);
  (*(v41 + 8))(v43, v44);
}

uint64_t sub_1AC24FC24()
{
  v1 = sub_1AC30A9DC();

  sub_1AC2063F0();
  return v1;
}

BOOL static HeadphoneSettingsUIFeatureType.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    if (*a1 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    if (*a2 == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

unint64_t sub_1AC24FEF0()
{
  v2 = qword_1EB54C3C8;
  if (!qword_1EB54C3C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C3C8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC24FFB8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v18 = a1;
  v17 = v2;
  sub_1AC30929C();
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C3D0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
    }
  }

  else
  {
    sub_1AC204664(v7);
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
  }

  if (v12)
  {
    sub_1AC2051E4(&v9, __dst);
    v5 = v15;
    v4 = v16;
    __swift_project_boxed_opaque_existential_1(__dst, v15);
    (*(v4 + 8))(v5);
    return __swift_destroy_boxed_opaque_existential_1(__dst);
  }

  else
  {
    result = sub_1AC204664(&v9);
    *a2 = 2;
  }

  return result;
}

unint64_t sub_1AC2501FC()
{
  v2 = qword_1EB54C3D8;
  if (!qword_1EB54C3D8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C3D8);
    return WitnessTable;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for HeadphoneSettingsUIFeatureType(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFD)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 2) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 253;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 3;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for HeadphoneSettingsUIFeatureType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFD)
  {
    v5 = ((a3 + 2) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFD)
  {
    v4 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1AC25066C()
{
  v7 = sub_1AC30917C();
  v8 = [v7 muteControlCapability];
  MEMORY[0x1E69E5920](v7);
  v9 = sub_1AC20BC98(v8);
  if (v9)
  {
    v6 = 0;
  }

  else
  {
    v0 = sub_1AC30927C();
    v6 = sub_1AC20BC98(v0);
  }

  if (v9)
  {
    v5 = 0;
  }

  else
  {
    v1 = sub_1AC30927C();
    v5 = sub_1AC20BC98(v1);
  }

  if (v9)
  {
    v4 = 0;
  }

  else
  {
    v2 = sub_1AC3093EC();
    v4 = sub_1AC20BC98(v2);
  }

  LOWORD(v10) = v9;
  WORD1(v10) = v6;
  WORD2(v10) = v5;
  BYTE6(v10) = v4;
  return v10;
}

uint64_t sub_1AC2507AC()
{
  v1 = sub_1AC309E6C();
  __swift_allocate_value_buffer(v1, qword_1EB553CF8);
  __swift_project_value_buffer(v1, qword_1EB553CF8);
  sub_1AC30A9DC();
  sub_1AC30A9DC();
  return sub_1AC309E5C();
}

uint64_t sub_1AC250850()
{
  if (qword_1EB54EDB0 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309E6C();
  return __swift_project_value_buffer(v0, qword_1EB553CF8);
}

uint64_t sub_1AC2508BC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC250850();
  v1 = sub_1AC309E6C();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC250920@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928]();
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x80))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1AC2509C0(void *a1, void *a2)
{
  sub_1AC257900(a1, &v7);
  v6 = v7;
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x88))(v6, v2);
  return MEMORY[0x1E69E5920](v5);
}

uint64_t sub_1AC250A6C()
{
  v2 = (v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI27HeadphoneSettingsController_headphoneDevice);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

uint64_t sub_1AC250ADC(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR____TtC19HeadphoneSettingsUI27HeadphoneSettingsController_headphoneDevice);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

uint64_t sub_1AC250BE0()
{
  v2 = (v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI27HeadphoneSettingsController_listeners);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1AC250C48(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC19HeadphoneSettingsUI27HeadphoneSettingsController_listeners);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

unint64_t sub_1AC250D64()
{
  v2 = qword_1EB54C3F0;
  if (!qword_1EB54C3F0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB54C3F0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1AC250DC8()
{
  v2 = *(v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI27HeadphoneSettingsController_deviceAnalytics);
  MEMORY[0x1E69E5928]();
  return v2;
}

id sub_1AC250E10()
{
  v8 = (v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI27HeadphoneSettingsController____lazy_storage___hmUIServices);
  swift_beginAccess();
  v9 = *v8;
  sub_1AC250F8C(*v8);
  swift_endAccess();
  if (v9 != 1)
  {
    return v9;
  }

  v3 = swift_allocObject();
  (MEMORY[0x1E69E5928])();
  swift_unknownObjectWeakInit();
  (MEMORY[0x1E69E5920])();

  v5 = sub_1AC250FCC(v3);

  MEMORY[0x1E69E5928](v5);
  v4 = (v7 + OBJC_IVAR____TtC19HeadphoneSettingsUI27HeadphoneSettingsController____lazy_storage___hmUIServices);
  swift_beginAccess();
  v1 = *v4;
  *v4 = v5;
  sub_1AC251EC4(v1);
  swift_endAccess();
  return v5;
}

uint64_t sub_1AC250F8C(uint64_t result)
{
  if (result != 1)
  {
    return MEMORY[0x1E69E5928](result);
  }

  return result;
}

id sub_1AC250FCC(uint64_t a1)
{
  v101 = a1;
  v100 = 0;
  v89 = sub_1AC257A18;
  v90 = sub_1AC215C98;
  v91 = sub_1AC257A24;
  v92 = sub_1AC248118;
  v93 = sub_1AC215C90;
  v94 = sub_1AC215C90;
  v95 = sub_1AC215CA4;
  v96 = sub_1AC215C90;
  v97 = sub_1AC215C90;
  v98 = sub_1AC2482A8;
  v125 = 0;
  v118 = 0;
  v119 = 0;
  v117 = 0;
  v115 = 0;
  v99 = 0;
  v102 = sub_1AC309E6C();
  v103 = *(v102 - 8);
  v104 = v102 - 8;
  v105 = (*(v103 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v106 = v34 - v105;
  v107 = MEMORY[0x1EEE9AC00](v101) + 16;
  v125 = v107;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    p_Strong = &Strong;
    v1 = Strong;
    v87 = Strong;
    MEMORY[0x1E69E5928](Strong);
    sub_1AC206988(p_Strong);
    v2 = swift_endAccess();
    v108 = (*((*v1 & *MEMORY[0x1E69E7D40]) + 0x80))(v2);
    if (v108)
    {
      v81 = &v108;
      v82 = v108;
      MEMORY[0x1E69E5928](v108);
      sub_1AC206988(v81);
      MEMORY[0x1E69E5920](v87);
      v83 = sub_1AC2C85A0();
      v84 = v3;
      MEMORY[0x1E69E5920](v82);
      v85 = v83;
      v86 = v84;
      goto LABEL_6;
    }

    sub_1AC206988(&v108);
    MEMORY[0x1E69E5920](v87);
  }

  else
  {
    sub_1AC206988(&Strong);
    swift_endAccess();
  }

  v85 = 0;
  v86 = 0;
LABEL_6:
  v120 = v85;
  v121 = v86;
  if (v86)
  {
    v123 = v120;
    v124 = v121;
  }

  else
  {
    v123 = sub_1AC30A9DC();
    v124 = v4;
    if (v121)
    {
      sub_1AC2063F0();
    }
  }

  v5 = v106;
  v59 = v123;
  v60 = v124;
  v118 = v123;
  v119 = v124;
  v57 = objc_opt_self();

  v58 = sub_1AC30A91C();

  v61 = [v57 bluetoothDeviceForAddress_];
  MEMORY[0x1E69E5920](v58);
  v117 = v61;
  v6 = sub_1AC250850();
  (*(v103 + 16))(v5, v6, v102);

  v66 = 32;
  v67 = 7;
  v7 = swift_allocObject();
  v8 = v60;
  v9 = v7;
  v10 = v61;
  v62 = v9;
  *(v9 + 16) = v59;
  *(v9 + 24) = v8;
  MEMORY[0x1E69E5928](v10);
  v68 = swift_allocObject();
  *(v68 + 16) = v61;
  v79 = sub_1AC309E4C();
  v80 = sub_1AC30AD2C();
  v64 = 17;
  v70 = swift_allocObject();
  *(v70 + 16) = 32;
  v71 = swift_allocObject();
  v65 = 8;
  *(v71 + 16) = 8;
  v11 = swift_allocObject();
  v12 = v62;
  v63 = v11;
  *(v11 + 16) = v89;
  *(v11 + 24) = v12;
  v13 = swift_allocObject();
  v14 = v63;
  v72 = v13;
  *(v13 + 16) = v90;
  *(v13 + 24) = v14;
  v73 = swift_allocObject();
  *(v73 + 16) = 64;
  v74 = swift_allocObject();
  *(v74 + 16) = v65;
  v15 = swift_allocObject();
  v16 = v68;
  v69 = v15;
  *(v15 + 16) = v91;
  *(v15 + 24) = v16;
  v17 = swift_allocObject();
  v18 = v69;
  v76 = v17;
  *(v17 + 16) = v92;
  *(v17 + 24) = v18;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8);
  v75 = sub_1AC30B18C();
  v77 = v19;

  v20 = v70;
  v21 = v77;
  *v77 = v93;
  v21[1] = v20;

  v22 = v71;
  v23 = v77;
  v77[2] = v94;
  v23[3] = v22;

  v24 = v72;
  v25 = v77;
  v77[4] = v95;
  v25[5] = v24;

  v26 = v73;
  v27 = v77;
  v77[6] = v96;
  v27[7] = v26;

  v28 = v74;
  v29 = v77;
  v77[8] = v97;
  v29[9] = v28;

  v30 = v76;
  v31 = v77;
  v77[10] = v98;
  v31[11] = v30;
  sub_1AC206300();

  if (os_log_type_enabled(v79, v80))
  {
    v32 = v99;
    v49 = sub_1AC30AE6C();
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8);
    v48 = 1;
    v50 = sub_1AC213EE4(1);
    v51 = sub_1AC213EE4(v48);
    v53 = &v113;
    v113 = v49;
    v54 = &v112;
    v112 = v50;
    v55 = &v111;
    v111 = v51;
    v52 = 2;
    sub_1AC213F38(2, &v113);
    sub_1AC213F38(v52, v53);
    v109 = v93;
    v110 = v70;
    sub_1AC213F4C(&v109, v53, v54, v55);
    v56 = v32;
    if (v32)
    {

      __break(1u);
    }

    else
    {
      v109 = v94;
      v110 = v71;
      sub_1AC213F4C(&v109, &v113, &v112, &v111);
      v46 = 0;
      v109 = v95;
      v110 = v72;
      sub_1AC213F4C(&v109, &v113, &v112, &v111);
      v45 = 0;
      v109 = v96;
      v110 = v73;
      sub_1AC213F4C(&v109, &v113, &v112, &v111);
      v44 = 0;
      v109 = v97;
      v110 = v74;
      sub_1AC213F4C(&v109, &v113, &v112, &v111);
      v43 = 0;
      v109 = v98;
      v110 = v76;
      sub_1AC213F4C(&v109, &v113, &v112, &v111);
      _os_log_impl(&dword_1AC1C3000, v79, v80, "hmUIServices: %s %@", v49, 0x16u);
      v42 = 1;
      sub_1AC213F98(v50);
      sub_1AC213F98(v51);
      sub_1AC30AE4C();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v79);
  (*(v103 + 8))(v106, v102);
  v37 = 0;
  sub_1AC257A2C();
  MEMORY[0x1E69E5928](v61);
  v116[3] = sub_1AC257A90();
  v116[0] = v61;
  v38 = sub_1AC251F34(v116);
  v115 = v38;
  v39 = v101 + 16;
  v40 = &v114;
  swift_beginAccess();
  v41 = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (v41)
  {
    v36 = v41;
    v35 = v41;
  }

  else
  {
    v35 = 0;
  }

  v34[1] = v35;
  [v38 setDelegate_];
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](v61);

  return v38;
}

uint64_t sub_1AC251EC4(uint64_t result)
{
  if (result != 1)
  {
    return MEMORY[0x1E69E5920](result);
  }

  return result;
}

uint64_t sub_1AC251F74(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR____TtC19HeadphoneSettingsUI27HeadphoneSettingsController____lazy_storage___hmUIServices);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  sub_1AC251EC4(v2);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

void *(*sub_1AC252004(id *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1AC250E10();
  return sub_1AC252060;
}

void *sub_1AC252060(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_1AC251F74(*a1);
  }

  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  sub_1AC251F74(v3);
  return sub_1AC206988(a1);
}

uint64_t sub_1AC252104()
{
  v2 = (v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI27HeadphoneSettingsController_currentFeatures);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1AC25216C(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC19HeadphoneSettingsUI27HeadphoneSettingsController_currentFeatures);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_1AC25225C(char a1)
{
  v30 = a1 & 1;
  v29 = v1;
  v2 = MEMORY[0x1E69E5928](v1);
  v26 = (*((*v1 & *MEMORY[0x1E69E7D40]) + 0x80))(v2);
  if (v26)
  {
    v9 = v26;
    MEMORY[0x1E69E5928](v26);
    sub_1AC206988(&v26);
    v10 = sub_1AC30956C();
    v11 = v3;
    MEMORY[0x1E69E5920](v9);
    v12 = v10;
    v13 = v11;
  }

  else
  {
    sub_1AC206988(&v26);
    v12 = 0;
    v13 = 0;
  }

  v24 = v12;
  v25 = v13;
  if (v13)
  {
    v27 = v24;
    v28 = v25;
  }

  else
  {
    v27 = sub_1AC30A9DC();
    v28 = v4;
  }

  v8 = sub_1AC30A91C();

  [v15 setTitle_];
  MEMORY[0x1E69E5920](v8);
  (MEMORY[0x1E69E5920])();
  (MEMORY[0x1E69E5928])();
  v23.receiver = v15;
  v23.super_class = type metadata accessor for HeadphoneSettingsController();
  objc_msgSendSuper2(&v23, sel_viewWillAppear_, a1 & 1);
  (MEMORY[0x1E69E5920])();
  [v15 reloadSpecifiers];
  (MEMORY[0x1E69E5928])();
  v19 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C410);
  if ((swift_dynamicCast() & 1) == 0)
  {
    memset(v16, 0, sizeof(v16));
    v17 = 0;
    v18 = 0;
  }

  if (!v17)
  {
    return sub_1AC204664(v16);
  }

  sub_1AC2051E4(v16, __dst);
  v7 = v21;
  v6 = v22;
  __swift_project_boxed_opaque_existential_1(__dst, v21);
  (*(v6 + 8))(v7);
  return __swift_destroy_boxed_opaque_existential_1(__dst);
}

uint64_t sub_1AC252604()
{
  v3 = v0;
  MEMORY[0x1E69E5928](v0);
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeadphoneSettingsController();
  objc_msgSendSuper2(&v2, sel_viewDidLoad);
  MEMORY[0x1E69E5920](v0);
  return sub_1AC25604C();
}

uint64_t sub_1AC2526C8(char a1)
{
  v7 = a1 & 1;
  v6 = v1;
  MEMORY[0x1E69E5928](v1);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for HeadphoneSettingsController();
  objc_msgSendSuper2(&v5, sel_viewDidDisappear_, a1 & 1);
  MEMORY[0x1E69E5920](v1);
  v4 = *&v1[OBJC_IVAR____TtC19HeadphoneSettingsUI27HeadphoneSettingsController_deviceAnalytics];
  [v4 submitDeviceAnalytics];
  return MEMORY[0x1E69E5920](v4);
}

id HeadphoneSettingsController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = objc_allocWithZone(v3);
  if (a2)
  {
    v6 = sub_1AC30A91C();

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v5 = [v10 initWithNibName_bundle_];
  MEMORY[0x1E69E5920](a3);
  MEMORY[0x1E69E5920](v7);
  return v5;
}

char *HeadphoneSettingsController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = 0;
  v14 = a1;
  v15 = a2;
  v13 = a3;
  *OBJC_IVAR____TtC19HeadphoneSettingsUI27HeadphoneSettingsController_headphoneDevice = 0;
  v8 = OBJC_IVAR____TtC19HeadphoneSettingsUI27HeadphoneSettingsController_listeners;
  sub_1AC309EAC();
  sub_1AC223158();
  *&v16[v8] = sub_1AC30A80C();
  v9 = OBJC_IVAR____TtC19HeadphoneSettingsUI27HeadphoneSettingsController_deviceAnalytics;
  sub_1AC250D64();
  *&v16[v9] = sub_1AC20D658();
  *&v16[OBJC_IVAR____TtC19HeadphoneSettingsUI27HeadphoneSettingsController____lazy_storage___hmUIServices] = 1;
  v10 = OBJC_IVAR____TtC19HeadphoneSettingsUI27HeadphoneSettingsController_currentFeatures;
  *&v16[v10] = sub_1AC30B18C();
  *&v16[OBJC_IVAR____TtC19HeadphoneSettingsUI27HeadphoneSettingsController_batteryStatusView] = 0;

  if (a2)
  {
    v5 = sub_1AC30A91C();

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v12.receiver = v16;
  v12.super_class = type metadata accessor for HeadphoneSettingsController();
  v4 = objc_msgSendSuper2(&v12, sel_initWithNibName_bundle_, v6, a3);
  MEMORY[0x1E69E5920](v6);
  MEMORY[0x1E69E5928](v4);
  v16 = v4;
  MEMORY[0x1E69E5920](a3);

  MEMORY[0x1E69E5920](v16);
  return v4;
}

id HeadphoneSettingsController.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x1E69E5920](a1);
  return v4;
}

void HeadphoneSettingsController.init(coder:)()
{
  *OBJC_IVAR____TtC19HeadphoneSettingsUI27HeadphoneSettingsController_headphoneDevice = 0;
  v0 = OBJC_IVAR____TtC19HeadphoneSettingsUI27HeadphoneSettingsController_listeners;
  sub_1AC309EAC();
  sub_1AC223158();
  *v0 = sub_1AC30A80C();
  v1 = OBJC_IVAR____TtC19HeadphoneSettingsUI27HeadphoneSettingsController_deviceAnalytics;
  sub_1AC250D64();
  *v1 = sub_1AC20D658();
  *OBJC_IVAR____TtC19HeadphoneSettingsUI27HeadphoneSettingsController____lazy_storage___hmUIServices = 1;
  v2 = OBJC_IVAR____TtC19HeadphoneSettingsUI27HeadphoneSettingsController_currentFeatures;
  *v2 = sub_1AC30B18C();
  *OBJC_IVAR____TtC19HeadphoneSettingsUI27HeadphoneSettingsController_batteryStatusView = 0;
  sub_1AC30A9DC();
  sub_1AC30B06C();
  __break(1u);
}

double sub_1AC252DD4()
{
  v38 = (v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI27HeadphoneSettingsController_batteryStatusView);
  swift_beginAccess();
  v39 = *v38;
  MEMORY[0x1E69E5928](*v38);
  swift_endAccess();
  if (v39)
  {
    sub_1AC256498();
    v35 = sub_1AC253630(0.0, 0.0, 0.0, 0.0);
    v34 = [v35 contentView];
    [v34 addSubview_];
    MEMORY[0x1E69E5920](v34);
    MEMORY[0x1E69E5928](v35);
    v36 = [v37 view];
    (MEMORY[0x1E69E5920])();
    if (v36)
    {
      v33 = v36;
    }

    else
    {
      LOBYTE(v7) = 2;
      v8 = 85;
      LODWORD(v9) = 0;
      sub_1AC30B05C();
      __break(1u);
    }

    [v33 bounds];
    MEMORY[0x1E69E5920](v33);
    CGRectMake();
    [v35 setFrame_];
    MEMORY[0x1E69E5920](v35);
    [v39 setTranslatesAutoresizingMaskIntoConstraints_];
    MEMORY[0x1E69E5920](v39);
    v30 = objc_opt_self();
    sub_1AC256554();
    sub_1AC30B18C();
    v29 = v5;
    v15 = [v39 0x1FBB5C529];
    v13 = [v35 0x1FB774AF8];
    v14 = [v13 0x1FBB5C529];
    v16 = [v15 0x1FBB28F65];
    MEMORY[0x1E69E5920](v14);
    MEMORY[0x1E69E5920](v15);
    *v29 = v16;
    v19 = [v39 0x1FBBB59CCLL];
    v17 = [v35 0x1FB774AF8];
    v18 = [v17 0x1FBBB59CCLL];
    v20 = [v19 0x1FBB28F65];
    MEMORY[0x1E69E5920](v18);
    MEMORY[0x1E69E5920](v19);
    v29[1] = v20;
    v23 = [v39 0x1FBBB4950];
    v21 = [v35 0x1FB774AF8];
    v22 = [v21 0x1FBBB4950];
    v24 = [v23 0x1FBB28F65];
    MEMORY[0x1E69E5920](v22);
    MEMORY[0x1E69E5920](v23);
    v29[2] = v24;
    v27 = [v39 0x1FBB20D25];
    v25 = [v35 0x1FB774AF8];
    v26 = [v25 0x1FBB20D25];
    v28 = [v27 0x1FBB28F65];
    MEMORY[0x1E69E5920](v26);
    MEMORY[0x1E69E5920](v27);
    v29[3] = v28;
    sub_1AC206300();
    v31 = sub_1AC30AAFC();

    [v30 activateConstraints_];
    v32 = [v37 table];
    if (v32)
    {
      v12 = v32;
    }

    else
    {
      sub_1AC30B05C();
      __break(1u);
    }

    [v12 setTableHeaderView_];
    MEMORY[0x1E69E5920](v35);
    MEMORY[0x1E69E5920](v12);
    MEMORY[0x1E69E5920](v35);
    *&result = MEMORY[0x1E69E5920](v39).n128_u64[0];
  }

  else
  {
    v11 = [v37 table];
    if (v11)
    {
      v10 = v11;
    }

    else
    {
      LOBYTE(v7) = 2;
      v8 = 79;
      LODWORD(v9) = 0;
      sub_1AC30B05C();
      __break(1u);
    }

    [v10 setTableHeaderView_];
    *&result = MEMORY[0x1E69E5920](v10).n128_u64[0];
  }

  return result;
}

uint64_t sub_1AC253688()
{
  v2 = (v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI27HeadphoneSettingsController_batteryStatusView);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

double sub_1AC2536F8(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR____TtC19HeadphoneSettingsUI27HeadphoneSettingsController_batteryStatusView);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  sub_1AC252DD4();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

void (*sub_1AC253794(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1AC253804;
}

void sub_1AC253804(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_1AC252DD4();
  }
}

uint64_t sub_1AC253854()
{
  v196 = sub_1AC2573A8;
  v197 = sub_1AC2573B4;
  v198 = sub_1AC2559F4;
  v199 = sub_1AC215C98;
  v200 = sub_1AC255A30;
  v201 = sub_1AC2572B0;
  v202 = sub_1AC24D814;
  v203 = sub_1AC215C98;
  v204 = sub_1AC2573C0;
  v205 = sub_1AC215C98;
  v206 = sub_1AC215C90;
  v207 = sub_1AC215C90;
  v208 = sub_1AC215CA4;
  v209 = sub_1AC215C90;
  v210 = sub_1AC215C90;
  v211 = sub_1AC2572BC;
  v212 = sub_1AC215C90;
  v213 = sub_1AC215C90;
  v214 = sub_1AC215CA4;
  v215 = sub_1AC215C90;
  v216 = sub_1AC215C90;
  v217 = sub_1AC215CA4;
  v218 = sub_1AC2559F4;
  v219 = sub_1AC215C98;
  v220 = sub_1AC255A24;
  v221 = sub_1AC2572B0;
  v222 = sub_1AC215C90;
  v223 = sub_1AC215C90;
  v224 = sub_1AC215CA4;
  v225 = sub_1AC215C90;
  v226 = sub_1AC215C90;
  v227 = sub_1AC2572BC;
  v258 = 0;
  v257 = 0;
  v228 = 0;
  v251 = 0;
  v246 = 0;
  v247 = 0;
  v229 = sub_1AC309E6C();
  v230 = *(v229 - 8);
  v231 = v229 - 8;
  v232 = (*(v230 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v229);
  v233 = v84 - v232;
  v234 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v84 - v232);
  v235 = v84 - v234;
  v258 = v0;
  v236 = (*((*v0 & *MEMORY[0x1E69E7D40]) + 0x80))();
  if (v236)
  {
    v194 = v236;
    v160 = v236;
    v251 = v236;
    v2 = sub_1AC2C8720();
    v157 = v3;
    (*((*v195 & *MEMORY[0x1E69E7D40]) + 0xF8))(v2);

    v161 = &v248;
    sub_1AC29E948(&v248);
    v158 = v249;
    v159 = v250;
    __swift_project_boxed_opaque_existential_1(v161, v249);
    v163 = (*(v159 + 16))(v160, v195, v158);
    v164 = v4;
    v246 = v163;
    v247 = v4;
    __swift_destroy_boxed_opaque_existential_1(v161);

    sub_1AC25216C(v163);
    v5 = v235;

    v6 = sub_1AC250850();
    (*(v230 + 16))(v5, v6, v229);

    v173 = 32;
    v174 = 7;
    v7 = swift_allocObject();
    v8 = v164;
    v162 = v7;
    *(v7 + 16) = v163;
    *(v7 + 24) = v8;

    v9 = swift_allocObject();
    v10 = v162;
    v168 = v9;
    *(v9 + 16) = v196;
    *(v9 + 24) = v10;

    v11 = swift_allocObject();
    v12 = v164;
    v165 = v11;
    *(v11 + 16) = v163;
    *(v11 + 24) = v12;

    v13 = swift_allocObject();
    v14 = v165;
    v175 = v13;
    *(v13 + 16) = v197;
    *(v13 + 24) = v14;

    v192 = sub_1AC309E4C();
    v193 = sub_1AC30AD0C();
    v171 = 17;
    v177 = swift_allocObject();
    v170 = 32;
    *(v177 + 16) = 32;
    v178 = swift_allocObject();
    v172 = 8;
    *(v178 + 16) = 8;
    v15 = swift_allocObject();
    v166 = v15;
    *(v15 + 16) = v198;
    *(v15 + 24) = 0;
    v16 = swift_allocObject();
    v17 = v166;
    v179 = v16;
    *(v16 + 16) = v199;
    *(v16 + 24) = v17;
    v180 = swift_allocObject();
    *(v180 + 16) = 0;
    v181 = swift_allocObject();
    *(v181 + 16) = v172;
    v18 = swift_allocObject();
    v167 = v18;
    *(v18 + 16) = v200;
    *(v18 + 24) = 0;
    v19 = swift_allocObject();
    v20 = v167;
    v182 = v19;
    *(v19 + 16) = v201;
    *(v19 + 24) = v20;
    v183 = swift_allocObject();
    *(v183 + 16) = v170;
    v184 = swift_allocObject();
    *(v184 + 16) = v172;
    v21 = swift_allocObject();
    v22 = v168;
    v169 = v21;
    *(v21 + 16) = v202;
    *(v21 + 24) = v22;
    v23 = swift_allocObject();
    v24 = v169;
    v185 = v23;
    *(v23 + 16) = v203;
    *(v23 + 24) = v24;
    v186 = swift_allocObject();
    *(v186 + 16) = v170;
    v187 = swift_allocObject();
    *(v187 + 16) = v172;
    v25 = swift_allocObject();
    v26 = v175;
    v176 = v25;
    *(v25 + 16) = v204;
    *(v25 + 24) = v26;
    v27 = swift_allocObject();
    v28 = v176;
    v189 = v27;
    *(v27 + 16) = v205;
    *(v27 + 24) = v28;
    v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8);
    v188 = sub_1AC30B18C();
    v190 = v29;

    v30 = v177;
    v31 = v190;
    *v190 = v206;
    v31[1] = v30;

    v32 = v178;
    v33 = v190;
    v190[2] = v207;
    v33[3] = v32;

    v34 = v179;
    v35 = v190;
    v190[4] = v208;
    v35[5] = v34;

    v36 = v180;
    v37 = v190;
    v190[6] = v209;
    v37[7] = v36;

    v38 = v181;
    v39 = v190;
    v190[8] = v210;
    v39[9] = v38;

    v40 = v182;
    v41 = v190;
    v190[10] = v211;
    v41[11] = v40;

    v42 = v183;
    v43 = v190;
    v190[12] = v212;
    v43[13] = v42;

    v44 = v184;
    v45 = v190;
    v190[14] = v213;
    v45[15] = v44;

    v46 = v185;
    v47 = v190;
    v190[16] = v214;
    v47[17] = v46;

    v48 = v186;
    v49 = v190;
    v190[18] = v215;
    v49[19] = v48;

    v50 = v187;
    v51 = v190;
    v190[20] = v216;
    v51[21] = v50;

    v52 = v189;
    v53 = v190;
    v190[22] = v217;
    v53[23] = v52;
    sub_1AC206300();

    if (os_log_type_enabled(v192, v193))
    {
      v54 = v228;
      v150 = sub_1AC30AE6C();
      v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8);
      v151 = sub_1AC213EE4(0);
      v152 = sub_1AC213EE4(3);
      v153 = &v241;
      v241 = v150;
      v154 = &v240;
      v240 = v151;
      v155 = &v239;
      v239 = v152;
      sub_1AC213F38(2, &v241);
      sub_1AC213F38(4, v153);
      v237 = v206;
      v238 = v177;
      sub_1AC213F4C(&v237, v153, v154, v155);
      v156 = v54;
      if (v54)
      {

        __break(1u);
      }

      else
      {
        v237 = v207;
        v238 = v178;
        sub_1AC213F4C(&v237, &v241, &v240, &v239);
        v148 = 0;
        v237 = v208;
        v238 = v179;
        sub_1AC213F4C(&v237, &v241, &v240, &v239);
        v147 = 0;
        v237 = v209;
        v238 = v180;
        sub_1AC213F4C(&v237, &v241, &v240, &v239);
        v146 = 0;
        v237 = v210;
        v238 = v181;
        sub_1AC213F4C(&v237, &v241, &v240, &v239);
        v145 = 0;
        v237 = v211;
        v238 = v182;
        sub_1AC213F4C(&v237, &v241, &v240, &v239);
        v144 = 0;
        v237 = v212;
        v238 = v183;
        sub_1AC213F4C(&v237, &v241, &v240, &v239);
        v143 = 0;
        v237 = v213;
        v238 = v184;
        sub_1AC213F4C(&v237, &v241, &v240, &v239);
        v142 = 0;
        v237 = v214;
        v238 = v185;
        sub_1AC213F4C(&v237, &v241, &v240, &v239);
        v141 = 0;
        v237 = v215;
        v238 = v186;
        sub_1AC213F4C(&v237, &v241, &v240, &v239);
        v140 = 0;
        v237 = v216;
        v238 = v187;
        sub_1AC213F4C(&v237, &v241, &v240, &v239);
        v139 = 0;
        v237 = v217;
        v238 = v189;
        sub_1AC213F4C(&v237, &v241, &v240, &v239);
        _os_log_impl(&dword_1AC1C3000, v192, v193, "%s: %ld Updating PSListController _specifiers %s %s", v150, 0x2Au);
        sub_1AC213F98(v151);
        sub_1AC213F98(v152);
        sub_1AC30AE4C();
      }
    }

    else
    {
    }

    v55 = MEMORY[0x1E69E5920](v192);
    (*(v230 + 8))(v235, v229, v55);
    sub_1AC256A48();

    v134 = sub_1AC215CB0();
    v137 = sub_1AC30AAFC();

    sub_1AC30A9DC();
    v135 = v56;
    v136 = sub_1AC30A91C();

    [v195 setValue:v137 forKey:v136];
    MEMORY[0x1E69E5920](v136);
    swift_unknownObjectRelease();
    MEMORY[0x1E69E5928](v195);
    v244 = sub_1AC30956C();
    v245 = v57;
    v138 = [v195 title];
    if (v138)
    {
      v133 = v138;
      v128 = v138;
      v129 = sub_1AC30A92C();
      v130 = v58;
      MEMORY[0x1E69E5920](v128);
      v131 = v129;
      v132 = v130;
    }

    else
    {
      v131 = 0;
      v132 = 0;
    }

    v125 = &v242;
    v242 = v131;
    v243 = v132;
    v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C448);
    sub_1AC2574B0();
    sub_1AC309D8C();
    v126 = v242;
    v127 = v243;
    if (v243)
    {
      v122 = v126;
      v123 = v127;
      v119 = v127;
      v120 = sub_1AC30A91C();

      v121 = v120;
    }

    else
    {
      v121 = 0;
    }

    v116 = v121;
    [v195 setTitle_];
    MEMORY[0x1E69E5920](v116);
    MEMORY[0x1E69E5920](v195);
    sub_1AC2063F0();

    v117 = sub_1AC30B02C();

    MEMORY[0x1E69E5920](v160);
    return v117;
  }

  else
  {
    v59 = v233;
    v93 = 0;
    v94 = sub_1AC215CB0();
    v95 = sub_1AC30B18C();

    v257 = v95;
    v98 = sub_1AC30AAFC();

    sub_1AC30A9DC();
    v96 = v60;
    v97 = sub_1AC30A91C();

    [v195 setValue:v98 forKey:v97];
    MEMORY[0x1E69E5920](v97);
    swift_unknownObjectRelease();
    v61 = sub_1AC250850();
    (*(v230 + 16))(v59, v61, v229);
    v114 = sub_1AC309E4C();
    v115 = sub_1AC30AD1C();
    v100 = 17;
    v103 = 7;
    v105 = swift_allocObject();
    *(v105 + 16) = 32;
    v106 = swift_allocObject();
    v101 = 8;
    *(v106 + 16) = 8;
    v102 = 32;
    v62 = swift_allocObject();
    v99 = v62;
    *(v62 + 16) = v218;
    *(v62 + 24) = 0;
    v63 = swift_allocObject();
    v64 = v99;
    v107 = v63;
    *(v63 + 16) = v219;
    *(v63 + 24) = v64;
    v108 = swift_allocObject();
    *(v108 + 16) = 0;
    v109 = swift_allocObject();
    *(v109 + 16) = v101;
    v65 = swift_allocObject();
    v104 = v65;
    *(v65 + 16) = v220;
    *(v65 + 24) = 0;
    v66 = swift_allocObject();
    v67 = v104;
    v111 = v66;
    *(v66 + 16) = v221;
    *(v66 + 24) = v67;
    v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8);
    v110 = sub_1AC30B18C();
    v112 = v68;

    v69 = v105;
    v70 = v112;
    *v112 = v222;
    v70[1] = v69;

    v71 = v106;
    v72 = v112;
    v112[2] = v223;
    v72[3] = v71;

    v73 = v107;
    v74 = v112;
    v112[4] = v224;
    v74[5] = v73;

    v75 = v108;
    v76 = v112;
    v112[6] = v225;
    v76[7] = v75;

    v77 = v109;
    v78 = v112;
    v112[8] = v226;
    v78[9] = v77;

    v79 = v111;
    v80 = v112;
    v112[10] = v227;
    v80[11] = v79;
    sub_1AC206300();

    if (os_log_type_enabled(v114, v115))
    {
      v81 = v228;
      v85 = sub_1AC30AE6C();
      v84[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8);
      v86 = sub_1AC213EE4(0);
      v87 = sub_1AC213EE4(1);
      v89 = &v256;
      v256 = v85;
      v90 = &v255;
      v255 = v86;
      v91 = &v254;
      v254 = v87;
      v88 = 2;
      sub_1AC213F38(2, &v256);
      sub_1AC213F38(v88, v89);
      v252 = v222;
      v253 = v105;
      sub_1AC213F4C(&v252, v89, v90, v91);
      v92 = v81;
      if (v81)
      {

        __break(1u);
      }

      else
      {
        v252 = v223;
        v253 = v106;
        sub_1AC213F4C(&v252, &v256, &v255, &v254);
        v84[3] = 0;
        v252 = v224;
        v253 = v107;
        sub_1AC213F4C(&v252, &v256, &v255, &v254);
        v84[2] = 0;
        v252 = v225;
        v253 = v108;
        sub_1AC213F4C(&v252, &v256, &v255, &v254);
        v84[1] = 0;
        v252 = v226;
        v253 = v109;
        sub_1AC213F4C(&v252, &v256, &v255, &v254);
        v84[0] = 0;
        v252 = v227;
        v253 = v111;
        sub_1AC213F4C(&v252, &v256, &v255, &v254);
        _os_log_impl(&dword_1AC1C3000, v114, v115, "%s: %ld Dependencies not meet, bailing out of specifiers returning empty controller!", v85, 0x16u);
        sub_1AC213F98(v86);
        sub_1AC213F98(v87);
        sub_1AC30AE4C();
      }
    }

    else
    {
    }

    v82 = MEMORY[0x1E69E5920](v114);
    (*(v230 + 8))(v233, v229, v82);
    sub_1AC209190();
    return 0;
  }
}

uint64_t sub_1AC255A3C@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{

  *a2 = a1;
}

uint64_t sub_1AC255A84@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  *a2 = a1;
}

uint64_t sub_1AC255B90(uint64_t a1, uint64_t a2)
{
  v24 = a1;
  v23 = a2;
  v22 = sub_1AC257544;
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C458);
  v26 = *(v25 - 8);
  v27 = v25 - 8;
  v28 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v29 = &v9 - v28;
  v36 = MEMORY[0x1EEE9AC00](v24);
  v37 = v3;
  v35 = v2;
  v31 = sub_1AC250BE0();
  v30 = sub_1AC309EAC();
  sub_1AC223158();
  v32 = sub_1AC30AC0C();

  result = v32;
  if (!v32)
  {
    sub_1AC30962C();
    v10 = sub_1AC30960C();
    sub_1AC3095FC();
    MEMORY[0x1E69E5920](v10);
    v11 = sub_1AC309F2C();
    (*(v26 + 8))(v29, v25);
    v17 = &v34;
    v34 = v11;
    v13 = 7;
    v14 = swift_allocObject();
    v12 = v14 + 16;
    MEMORY[0x1E69E5928](v21);
    swift_unknownObjectWeakInit();
    MEMORY[0x1E69E5920](v21);

    v5 = swift_allocObject();
    v6 = v23;
    v7 = v5;
    v8 = v14;
    v16 = v7;
    v7[2] = v24;
    v7[3] = v6;
    v7[4] = v8;

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C460);
    sub_1AC257554();
    v20 = sub_1AC309FBC();

    sub_1AC20BCE0();
    v18 = &v33;
    v19 = sub_1AC250CCC();
    sub_1AC309E9C();
    v19();
  }

  return result;
}

double sub_1AC255E7C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = 0;
  v14 = 0;
  v15 = 0;
  v13 = 0;
  v16 = *a1;
  v14 = a2;
  v15 = a3;
  v13 = a4 + 16;

  v11[1] = a2;
  v11[2] = a3;
  sub_1AC3095DC();
  sub_1AC30A85C();
  sub_1AC2063F0();
  v11[0] = v12;
  v7 = v12 == 0;
  sub_1AC206988(v11);
  if (v7)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      MEMORY[0x1E69E5928](Strong);
      sub_1AC206988(&Strong);
      swift_endAccess();
      v6 = *(v5 + OBJC_IVAR____TtC19HeadphoneSettingsUI27HeadphoneSettingsController_deviceAnalytics);
      MEMORY[0x1E69E5928](v6);
      [v6 updateFeatureChangeCount_];
      *&result = MEMORY[0x1E69E5920](v6).n128_u64[0];
    }

    else
    {
      sub_1AC206988(&Strong);
      swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_1AC25604C()
{
  v16 = sub_1AC2576EC;
  v36 = 0;
  v35 = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BD90);
  v18 = *(v17 - 8);
  v19 = v17 - 8;
  v20 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v2 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C470);
  v23 = *(v22 - 8);
  v24 = v22 - 8;
  v25 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v2 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C478);
  v28 = *(v27 - 8);
  v29 = v27 - 8;
  v30 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v2 - v30;
  v36 = v0;
  result = (*((*v0 & *MEMORY[0x1E69E7D40]) + 0x80))();
  v32 = result;
  if (result)
  {
    v14 = v32;
    v13 = v32;
    v35 = v32;
    sub_1AC3091CC();
    v3 = sub_1AC309F2C();
    (*(v18 + 8))(v21, v17);
    v5 = &v34;
    v34 = v3;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C480);
    sub_1AC2575DC();
    sub_1AC309FAC();
    sub_1AC20BCE0();
    v6 = sub_1AC257664();
    sub_1AC2565B8();
    sub_1AC309F9C();
    (*(v23 + 8))(v26, v22);
    v9 = swift_allocObject();
    v7 = v9 + 16;
    MEMORY[0x1E69E5928](v15);
    v8 = v15;
    swift_unknownObjectWeakInit();
    MEMORY[0x1E69E5920](v8);

    sub_1AC2576F4();
    v12 = sub_1AC309FBC();

    (*(v28 + 8))(v31, v27);
    v10 = &v33;
    v11 = sub_1AC250CCC();
    sub_1AC309E9C();
    v11();

    return MEMORY[0x1E69E5920](v13);
  }

  return result;
}

unint64_t sub_1AC256498()
{
  v2 = qword_1EB54C420;
  if (!qword_1EB54C420)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB54C420);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1AC256554()
{
  v2 = qword_1EB54C428;
  if (!qword_1EB54C428)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB54C428);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1AC2565D0(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v17 = a2;
  v16 = MEMORY[0x1E69E85E0];
  v20 = &unk_1AC311930;
  v23 = 0;
  v22 = 0;
  v14 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C318) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = &v12 - v14;
  v2 = *MEMORY[0x1EEE9AC00](v13);
  v15 = 1;
  v23 = v2 & 1;
  v22 = v3 + 16;
  v18 = 0;
  v4 = sub_1AC30ABDC();
  (*(*(v4 - 8) + 56))(v19, v15);

  sub_1AC30ABBC();
  v21 = sub_1AC30ABAC();
  v5 = swift_allocObject();
  v6 = v16;
  v7 = v17;
  v8 = v18;
  v9 = v19;
  v10 = v20;
  v5[2] = v21;
  v5[3] = v6;
  v5[4] = v7;
  sub_1AC244BA8(v8, v8, v9, v10, v5, MEMORY[0x1E69E7CA8] + 8);
}

uint64_t sub_1AC256770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  v4[8] = v4;
  v4[9] = 0;
  v4[9] = a4 + 16;
  sub_1AC30ABBC();
  v4[13] = sub_1AC30ABAC();
  v7 = sub_1AC30AB9C();

  return MEMORY[0x1EEE6DFA0](sub_1AC256824, v7, v5);
}

uint64_t sub_1AC256824()
{
  *(v0 + 64) = v0;
  swift_beginAccess();
  *(v0 + 80) = swift_unknownObjectWeakLoadStrong();
  if (*(v0 + 80))
  {
    v4 = v5[10];
    MEMORY[0x1E69E5928](v4);
    sub_1AC206988(v5 + 10);
    swift_endAccess();
    [v4 reloadSpecifiers];
    MEMORY[0x1E69E5920](v4);
  }

  else
  {
    sub_1AC206988(v5 + 10);
    swift_endAccess();
  }

  swift_beginAccess();
  v5[11] = swift_unknownObjectWeakLoadStrong();
  if (v5[11])
  {
    v3 = v5[11];
    MEMORY[0x1E69E5928](v3);
    sub_1AC206988(v5 + 11);
    swift_endAccess();
    sub_1AC256A48();
    MEMORY[0x1E69E5920](v3);
  }

  else
  {
    sub_1AC206988(v5 + 11);
    swift_endAccess();
  }

  v1 = *(v5[8] + 8);

  return v1();
}

double sub_1AC256A48()
{
  v10 = 0;
  v11 = v0;
  v7 = (*((*v0 & *MEMORY[0x1E69E7D40]) + 0x80))();
  if (v7)
  {
    v10 = v7;
    if (sub_1AC3091AC())
    {
      v8 = (*((*v6 & *MEMORY[0x1E69E7D40]) + 0xE0))();
      MEMORY[0x1E69E5928](v7);
      (MEMORY[0x1E69E5928])();
      if (v8)
      {
        v9 = v8;
      }

      else
      {
        v2 = sub_1AC217F0C();
        v4 = sub_1AC217C9C(v7, v6, v2, v3);

        v9 = v4;
      }

      MEMORY[0x1E69E5920](v7);
      (MEMORY[0x1E69E5920])();
      v5 = v9;
    }

    else
    {
      v5 = 0;
    }

    (*((*v6 & *MEMORY[0x1E69E7D40]) + 0xE8))(v5);
    *&result = MEMORY[0x1E69E5920](v7).n128_u64[0];
  }

  return result;
}

id HeadphoneSettingsController.__deallocating_deinit()
{
  v33 = 0;
  v42 = 0;
  v22 = 0;
  v30 = sub_1AC309E6C();
  v24 = v30;
  v25 = *(v30 - 8);
  v29 = v25;
  v26 = v25;
  v27 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v0 = &v7 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v0;
  v42 = v1;
  v2 = sub_1AC250850();
  (*(v29 + 16))(v0, v2, v30);
  v35 = sub_1AC309E4C();
  v31 = v35;
  v34 = sub_1AC30AD1C();
  v32 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8);
  v36 = sub_1AC30B18C();
  if (os_log_type_enabled(v35, v34))
  {
    v3 = v22;
    v13 = sub_1AC30AE6C();
    v9 = v13;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8);
    v11 = 0;
    v14 = sub_1AC213EE4(0);
    v12 = v14;
    v15 = sub_1AC213EE4(v11);
    v40 = v13;
    v39 = v14;
    v38 = v15;
    v16 = 0;
    v17 = &v40;
    sub_1AC213F38(0, &v40);
    sub_1AC213F38(v16, v17);
    v37 = v36;
    v18 = &v7;
    MEMORY[0x1EEE9AC00](&v7);
    v19 = &v7 - 6;
    *(&v7 - 4) = v4;
    *(&v7 - 3) = &v39;
    *(&v7 - 2) = &v38;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BD08);
    sub_1AC218014();
    sub_1AC30AAAC();
    v21 = v3;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1AC1C3000, v31, v32, "HeadphoneSettingsUI: deinit!", v9, 2u);
      v7 = 0;
      sub_1AC213F98(v12);
      sub_1AC213F98(v15);
      sub_1AC30AE4C();

      v8 = v21;
    }
  }

  else
  {

    v8 = v22;
  }

  (*(v26 + 8))(v28, v24);
  v5 = type metadata accessor for HeadphoneSettingsController();
  v41.receiver = v23;
  v41.super_class = v5;
  return objc_msgSendSuper2(&v41, sel_dealloc);
}

id sub_1AC257108(void *a1)
{
  v11 = a1;
  v10 = a1[3];
  v1 = __swift_project_boxed_opaque_existential_1(a1, v10);
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v4 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v9 = &v3 - v4;
  (*(v7 + 16))();
  v6 = sub_1AC30B19C();
  v12 = [v5 initWithDevice_];
  swift_unknownObjectRelease();
  (*(v7 + 8))(v9, v10);
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v12;
}

uint64_t sub_1AC257274@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1AC2572BC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_1AC257330();
  v5 = MEMORY[0x1E69E6530];

  return sub_1AC226230(a1, a2, a3, v9, v10, v5, v4);
}

unint64_t sub_1AC257330()
{
  v2 = qword_1EB54C430;
  if (!qword_1EB54C430)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C430);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC2573C0()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C438);
  v1 = sub_1AC257428();

  return sub_1AC241500(v5, v3, v4, v1);
}

unint64_t sub_1AC257428()
{
  v2 = qword_1EB54C440;
  if (!qword_1EB54C440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C438);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C440);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2574B0()
{
  v2 = qword_1EB54C450;
  if (!qword_1EB54C450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C448);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C450);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC257554()
{
  v2 = qword_1EB54C468;
  if (!qword_1EB54C468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C460);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C468);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2575DC()
{
  v2 = qword_1EB54C488;
  if (!qword_1EB54C488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C480);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C488);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC257664()
{
  v2 = qword_1EB54C490;
  if (!qword_1EB54C490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C470);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C490);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2576F4()
{
  v2 = qword_1EB54C498;
  if (!qword_1EB54C498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C478);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C498);
    return WitnessTable;
  }

  return v2;
}

void *sub_1AC25777C(void *a1)
{
  if (*a1 != 1)
  {
    MEMORY[0x1E69E5920](*a1);
  }

  return a1;
}

void *sub_1AC257900(void *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  result = a2;
  *a2 = v3;
  return result;
}

uint64_t sub_1AC257940(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1AC24746C;

  return sub_1AC256770(a1, v6, v7, v8);
}

uint64_t sub_1AC257A18()
{
  result = *(v0 + 16);
  sub_1AC2043E8();
  return result;
}

unint64_t sub_1AC257A2C()
{
  v2 = qword_1EB54C4A0;
  if (!qword_1EB54C4A0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB54C4A0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1AC257A90()
{
  v2 = qword_1EB54C4A8;
  if (!qword_1EB54C4A8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB54C4A8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1AC257B24()
{
  v2 = *v0;

  return v2;
}

uint64_t sub_1AC257B64(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t static BatteryChargingFeature.supported(_:host:)(uint64_t a1, uint64_t a2)
{
  v62 = a2;
  v54 = sub_1AC248080;
  v55 = sub_1AC226634;
  v56 = sub_1AC226640;
  v57 = sub_1AC22664C;
  v58 = sub_1AC215C90;
  v59 = sub_1AC215C90;
  v60 = sub_1AC226658;
  v90 = 0;
  v89 = 0;
  v88 = 0;
  v81 = 0;
  v61 = 0;
  v68 = 0;
  v63 = sub_1AC309E6C();
  v64 = *(v63 - 8);
  v65 = v63 - 8;
  v66 = (*(v64 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v63);
  v67 = v25 - v66;
  v90 = a1;
  v89 = v3;
  v73 = sub_1AC30915C();
  v88 = v73;
  v4 = sub_1AC309A5C();
  v71 = &v87;
  v87 = v4;
  v69 = &v86;
  v86 = 2;
  v70 = type metadata accessor for AAFeatureCapability();
  v72 = sub_1AC212BF0();
  v74 = sub_1AC30B1BC();

  if (v74)
  {
    v53 = 1;
  }

  else
  {
    v85 = sub_1AC309A0C();
    v84 = 2;
    v53 = sub_1AC30B1BC();
  }

  v52 = v53;

  if (v52)
  {
    v51 = 1;
  }

  else
  {
    v83 = sub_1AC3099DC();
    v82 = 2;
    v51 = sub_1AC30B1BC();
  }

  v5 = v67;
  v35 = v51;

  v34 = 1;
  v81 = v35 & 1;
  v6 = sub_1AC250850();
  (*(v64 + 16))(v5, v6, v63);
  v36 = 17;
  v40 = 7;
  v37 = swift_allocObject();
  *(v37 + 16) = v35 & v34;
  v49 = sub_1AC309E4C();
  v50 = sub_1AC30AD2C();
  v43 = swift_allocObject();
  *(v43 + 16) = 0;
  v44 = swift_allocObject();
  *(v44 + 16) = 4;
  v39 = 32;
  v7 = swift_allocObject();
  v8 = v37;
  v38 = v7;
  *(v7 + 16) = v54;
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v38;
  v41 = v9;
  *(v9 + 16) = v55;
  *(v9 + 24) = v10;
  v11 = swift_allocObject();
  v12 = v41;
  v42 = v11;
  *(v11 + 16) = v56;
  *(v11 + 24) = v12;
  v13 = swift_allocObject();
  v14 = v42;
  v46 = v13;
  *(v13 + 16) = v57;
  *(v13 + 24) = v14;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8);
  v45 = sub_1AC30B18C();
  v47 = v15;

  v16 = v43;
  v17 = v47;
  *v47 = v58;
  v17[1] = v16;

  v18 = v44;
  v19 = v47;
  v47[2] = v59;
  v19[3] = v18;

  v20 = v46;
  v21 = v47;
  v47[4] = v60;
  v21[5] = v20;
  sub_1AC206300();

  if (os_log_type_enabled(v49, v50))
  {
    v22 = v61;
    v27 = sub_1AC30AE6C();
    v25[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8);
    v26 = 0;
    v28 = sub_1AC213EE4(0);
    v29 = sub_1AC213EE4(v26);
    v30 = &v79;
    v79 = v27;
    v31 = &v78;
    v78 = v28;
    v32 = &v77;
    v77 = v29;
    sub_1AC213F38(0, &v79);
    sub_1AC213F38(1, v30);
    v75 = v58;
    v76 = v43;
    sub_1AC213F4C(&v75, v30, v31, v32);
    v33 = v22;
    if (v22)
    {

      __break(1u);
    }

    else
    {
      v75 = v59;
      v76 = v44;
      sub_1AC213F4C(&v75, &v79, &v78, &v77);
      v25[1] = 0;
      v75 = v60;
      v76 = v46;
      sub_1AC213F4C(&v75, &v79, &v78, &v77);
      _os_log_impl(&dword_1AC1C3000, v49, v50, "BatteryChargingFeature: capability: %{BOOL}d", v27, 8u);
      v25[0] = 0;
      sub_1AC213F98(v28);
      sub_1AC213F98(v29);
      sub_1AC30AE4C();
    }
  }

  else
  {
  }

  v23 = MEMORY[0x1E69E5920](v49);
  (*(v64 + 8))(v67, v63, v23);

  LOBYTE(v80) = 1;
  HIBYTE(v80) = v35 & 1;
  return v80;
}

uint64_t static BatteryChargingFeature.specifiers(_:host:)(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v21 = a2;
  v26 = sub_1AC259948;
  v42 = 0;
  v41 = 0;
  v30 = 0;
  v19 = sub_1AC30A90C();
  v16 = *(v19 - 8);
  v17 = v19 - 8;
  v11 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v18 = &v10 - v11;
  v35 = sub_1AC309AAC();
  v33 = *(v35 - 8);
  v34 = v35 - 8;
  v12 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v23);
  v36 = &v10 - v12;
  v42 = v2;
  v41 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BB88);
  v13 = MEMORY[0x1E69A2B08];
  v14 = sub_1AC205220();
  v15 = v4;
  sub_1AC205220();
  v37 = sub_1AC309D3C();
  v22 = 7;
  v24 = 1;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v20 = &type metadata for BatteryChargingFeature;
  v27 = sub_1AC215DE8(v18, &type metadata for BatteryChargingFeature);
  v28 = v5;
  (*(v16 + 8))(v18, v19);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C4B0);
  v29 = v40;
  v40[3] = v6;
  v40[0] = v20;
  v25 = sub_1AC2598E4();
  v32 = swift_allocObject();
  MEMORY[0x1E69E5928](v21);
  swift_unknownObjectWeakInit();
  MEMORY[0x1E69E5920](v21);
  MEMORY[0x1E69E5928](v23);

  v7 = swift_allocObject();
  v8 = v32;
  *(v7 + 16) = v23;
  *(v7 + 24) = v8;
  v31 = v7;
  sub_1AC20599C();
  sub_1AC309A9C();

  v38 = sub_1AC309D1C();
  (*(v33 + 8))(v36, v35);

  v39 = sub_1AC309D2C();

  return v39;
}

__n128 sub_1AC2589D4@<Q0>(__n128 *a1@<X8>)
{
  v4.n128_u64[0] = sub_1AC30A9DC();
  v4.n128_u64[1] = v1;
  result = v4;
  *a1 = v4;
  return result;
}

uint64_t sub_1AC258A2C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

double sub_1AC258AA0(uint64_t a1, uint64_t a2)
{
  __dst[7] = a1;
  __dst[6] = a2 + 16;
  type metadata accessor for BatteryChargingViewController();
  v5 = sub_1AC20D658();
  __dst[5] = v5;
  v2 = MEMORY[0x1E69E5928](a1);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x80))(a1, v2);
  sub_1AC30929C();
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C4C0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
    }
  }

  else
  {
    sub_1AC204664(v8);
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
  }

  if (v13)
  {
    sub_1AC2051E4(&v10, __dst);
  }

  else
  {
    sub_1AC258DAC(v16);
    __dst[3] = &unk_1F20F47D0;
    __dst[4] = &off_1F20F46B8;
    __dst[0] = swift_allocObject();
    memcpy((__dst[0] + 16), v16, 0x30uLL);
    if (v13)
    {
      sub_1AC204664(&v10);
    }
  }

  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x98))(__dst);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    MEMORY[0x1E69E5928](Strong);
    sub_1AC206988(&Strong);
    swift_endAccess();
    [v4 showController_];
    MEMORY[0x1E69E5920](v5);
    MEMORY[0x1E69E5920](v4);
  }

  else
  {
    sub_1AC206988(&Strong);
    swift_endAccess();
  }

  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1AC258DAC@<X0>(uint64_t *a1@<X8>)
{
  memset(__b, 0, sizeof(__b));
  v5 = sub_1AC30A9DC();
  v6 = v1;

  __b[0] = v5;
  __b[1] = v6;
  v7 = sub_1AC30A9DC();
  v8 = v2;

  __b[2] = v7;
  __b[3] = v8;
  v11 = sub_1AC30A9DC();
  v9 = v3;

  __b[4] = v11;
  __b[5] = v9;
  sub_1AC241B38();
  result = v11;
  *a1 = v5;
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v11;
  a1[5] = v9;
  return result;
}

_BYTE *BatteryChargingFeature.baseFeature.getter@<X0>(uint64_t a1@<X8>)
{
  v8 = 0;
  v9 = 0;
  v2 = v1[1];
  v8 = *v1;
  v9 = v2;
  v6 = &type metadata for BatteryChargingFeature;
  v7 = &off_1F20F4658;
  sub_1AC2589D4(&v5);
  return sub_1AC29F3A0(&v5, a1);
}

uint64_t BatteryChargingFeature.handleDeepLink(_:headphoneDevice:host:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v72 = a3;
  v71 = a2;
  v70 = a1;
  v67 = a4;
  v68 = 0;
  v101 = 0;
  v100 = 0;
  v99 = 0;
  v98 = 0;
  v97 = 0;
  v69 = 0;
  v79 = 0;
  v73 = sub_1AC309E6C();
  v74 = *(v73 - 8);
  v75 = v74;
  v76 = *(v74 + 64);
  v5 = MEMORY[0x1EEE9AC00](v71);
  v77 = v28 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v6;
  v100 = v5;
  v99 = v7;
  v8 = v4[1];
  v97 = *v4;
  v98 = v8;
  v96 = static BatteryChargingFeature.supported(_:host:)(v5, v7);
  v94 = HIBYTE(v96);
  v95 = v96;
  v93 = 1;
  v92 = 1;
  if (sub_1AC30B1AC())
  {
    sub_1AC30929C();
    if (v81)
    {
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C4C0);
      if (!swift_dynamicCast())
      {
        v82 = 0;
        v83 = 0;
        v84 = 0;
        v85 = 0;
        v86 = 0;
      }
    }

    else
    {
      sub_1AC204664(v80);
      v82 = 0;
      v83 = 0;
      v84 = 0;
      v85 = 0;
      v86 = 0;
    }

    if (v85)
    {
      v57 = __dst;
      sub_1AC2051E4(&v82, __dst);
      v58 = 0;
      type metadata accessor for BatteryChargingViewController();
      v9 = sub_1AC20D658();
      v56 = v9;
      v79 = v9;
      v10 = v71;
      v11 = *v9;
      v51 = MEMORY[0x1E69E7D40];
      (*((v11 & *MEMORY[0x1E69E7D40]) + 0x80))(v71);
      v12 = v56;
      v52 = v78;
      sub_1AC241BFC(v57, v78);
      (*((*v12 & *v51) + 0x98))(v52);
      v54 = sub_1AC2598E4();
      v55 = sub_1AC30B18C();
      v53 = v13;
      v14 = v72;
      v15 = v56;
      *v53 = v72;
      v16 = v15;
      v17 = v55;
      v53[1] = v56;
      sub_1AC206300();
      v59 = v17;

      __swift_destroy_boxed_opaque_existential_1(v57);
      v60 = v59;
      v61 = v58;
      v62 = v58;
      v63 = v58;
      v64 = v58;
      v65 = v69;
      goto LABEL_15;
    }

    sub_1AC204664(&v82);
  }

  v18 = v77;
  v19 = sub_1AC250850();
  (*(v75 + 16))(v18, v19, v73);
  v49 = sub_1AC309E4C();
  v46 = v49;
  v48 = sub_1AC30AD2C();
  v47 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8);
  v50 = sub_1AC30B18C();
  if (os_log_type_enabled(v49, v48))
  {
    v20 = v69;
    v37 = sub_1AC30AE6C();
    v33 = v37;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8);
    v35 = 0;
    v38 = sub_1AC213EE4(0);
    v36 = v38;
    v39 = sub_1AC213EE4(v35);
    v91 = v37;
    v90 = v38;
    v89 = v39;
    v40 = 0;
    v41 = &v91;
    sub_1AC213F38(0, &v91);
    sub_1AC213F38(v40, v41);
    v88 = v50;
    v42 = v28;
    MEMORY[0x1EEE9AC00](v28);
    v43 = &v28[-6];
    v28[-4] = v21;
    v28[-3] = &v90;
    v28[-2] = &v89;
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BD08);
    sub_1AC218014();
    sub_1AC30AAAC();
    v45 = v20;
    if (v20)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1AC1C3000, v46, v47, "BatteryCharingFeature: deep link not supported", v33, 2u);
      v31 = 0;
      sub_1AC213F98(v36);
      sub_1AC213F98(v39);
      sub_1AC30AE4C();

      v32 = v45;
    }
  }

  else
  {

    v32 = v69;
  }

  v30 = v32;

  (*(v75 + 8))(v77, v73);
  v29 = 0;
  v28[1] = sub_1AC2598E4();
  v60 = sub_1AC30B18C();
  v61 = v29;
  v62 = v29;
  v63 = v29;
  v64 = v29;
  v65 = v30;
LABEL_15:
  v22 = v67;
  v23 = v61;
  v24 = v62;
  v25 = v63;
  v26 = v64;
  result = v65;
  *v67 = v60;
  v22[1] = v23;
  v22[2] = v24;
  v22[3] = v25;
  v22[4] = v26;
  return result;
}

uint64_t sub_1AC25974C(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_1AC2597B8(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

unint64_t sub_1AC2598E4()
{
  v2 = qword_1EB54C4B8;
  if (!qword_1EB54C4B8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB54C4B8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1AC2599AC()
{
  v2 = *(v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI16HeartRateFeature_name);

  return v2;
}

uint64_t sub_1AC2599F8()
{
  result = sub_1AC30A9DC();
  qword_1EB54EE48 = result;
  qword_1EB54EE50 = v1;
  return result;
}

uint64_t *sub_1AC259A3C()
{
  if (qword_1EB54EE40 != -1)
  {
    swift_once();
  }

  return &qword_1EB54EE48;
}

uint64_t static HeartRateFeature.identifier.getter()
{
  v1 = *sub_1AC259A3C();

  return v1;
}

uint64_t sub_1AC259AE0()
{
  sub_1AC30915C();
  sub_1AC3099EC();

  type metadata accessor for AAFeatureCapability();
  sub_1AC212BF0();
  LOBYTE(v1) = sub_1AC30B1BC() & 1;
  HIBYTE(v1) = 1;
  return v1;
}

uint64_t sub_1AC259BAC(void *a1, void *a2)
{
  v57 = a2;
  v56 = a1;
  ObjectType = swift_getObjectType();
  v51 = 0;
  v75 = 0;
  v74 = 0;
  v73 = 0;
  v52 = sub_1AC309AAC();
  v53 = *(v52 - 8);
  v54 = v53;
  MEMORY[0x1EEE9AC00](0);
  v55 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1AC30A90C();
  v59 = *(v58 - 8);
  v60 = v59;
  v4 = MEMORY[0x1EEE9AC00](v56);
  v61 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v4;
  v74 = v6;
  v73 = v2;
  v72 = (*((*v2 & *MEMORY[0x1E69E7D40]) + 0x58))();
  v70 = HIBYTE(v72);
  v71 = v72;
  v69 = 1;
  v68 = 1;
  if (sub_1AC30B1AC())
  {
    v27[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BB88);
    v67 = v49;
    v34 = 7;
    v28 = 1;
    sub_1AC30A9DC();
    sub_1AC30A8AC();
    v39 = 0;
    v29 = type metadata accessor for HeartRateFeature();
    v30 = &off_1F20F48B0;
    v27[4] = sub_1AC215DE8(v61, v29);
    v27[5] = v7;
    v32 = *(v60 + 8);
    v31 = v60 + 8;
    v32(v61, v58);
    sub_1AC205220();
    v27[7] = sub_1AC309D3C();
    v8 = v49;
    v27[6] = v27;
    v43 = 24;
    MEMORY[0x1EEE9AC00](v27);
    v42 = sub_1AC309CDC();

    v66 = v49;
    sub_1AC30A9DC();
    sub_1AC30A8AC();
    v37 = sub_1AC215DE8(v61, v29);
    v38 = v9;
    v32(v61, v58);
    v62 = v39;
    v63 = v39;
    v64 = v39;
    v65 = v39;
    v10 = v56;
    v36 = swift_allocObject();
    *(v36 + 16) = v56;
    v41 = swift_allocObject();
    v33 = v41 + 16;
    v11 = v57;
    swift_unknownObjectWeakInit();

    v12 = v56;
    v13 = swift_allocObject();
    v14 = v56;
    v35 = v13;
    *(v13 + 16) = v41;
    *(v13 + 24) = v14;
    v15 = sub_1AC20599C();
    v40 = &v18;
    v26 = v39;
    v25 = v39;
    v24 = v35;
    v23 = sub_1AC25A7D4;
    v22 = v36;
    v21 = sub_1AC25A560;
    v20 = v39;
    v19 = v15 & 1;
    v18 = v39;
    sub_1AC309A9C();

    v45 = sub_1AC309D1C();
    (*(v54 + 8))(v55, v52);

    v44 = v27;
    MEMORY[0x1EEE9AC00](v27);
    v26 = v16;
    v46 = sub_1AC309D0C();

    v47 = sub_1AC309D2C();

    return v47;
  }

  else
  {
    v27[1] = 0;
    v27[2] = sub_1AC215CB0();
    return sub_1AC30B18C();
  }
}

uint64_t sub_1AC25A260(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v21 = a2;
  v31 = 0;
  v30 = 0;
  v27 = 0;
  v28 = 0;
  v24 = 0;
  v25 = 0;
  v8 = 0;
  v18 = sub_1AC30A90C();
  v9 = *(v18 - 8);
  v10 = v18 - 8;
  v7 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v6 - v7;
  v31 = MEMORY[0x1EEE9AC00](v14);
  v30 = v2;
  v29 = v2;
  v11 = 1;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v12 = type metadata accessor for HeartRateFeature();
  v13 = &off_1F20F48B0;
  v19 = sub_1AC215DE8(v17, v12);
  v23 = v3;
  v16 = *(v9 + 8);
  v15 = v9 + 8;
  v16(v17, v18);
  v27 = v19;
  v28 = v23;
  v26 = v21;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v20 = sub_1AC215DE8(v17, v12);
  v22 = v4;
  v16(v17, v18);
  v24 = v20;
  v25 = v22;
  MEMORY[0x1E69E5928](v21);
  sub_1AC30ACDC();
  swift_unknownObjectRelease();
}

id sub_1AC25A49C()
{
  sub_1AC2068B8();
  sub_1AC30915C();
  sub_1AC30999C();

  type metadata accessor for AAMultiState();
  sub_1AC21B624();
  v0 = sub_1AC30B1BC();
  return sub_1AC244124(v0 & 1);
}

uint64_t sub_1AC25A568(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[7] = a1;
  v9[6] = a2;
  v9[5] = a3 + 16;
  v9[4] = a4;
  swift_beginAccess();
  v9[0] = swift_unknownObjectWeakLoadStrong();
  if (v9[0])
  {
    v5 = v9[0];
    MEMORY[0x1E69E5928](v9[0]);
    sub_1AC206988(v9);
    swift_endAccess();
    v6 = *(v5 + OBJC_IVAR____TtC19HeadphoneSettingsUI27HeadphoneSettingsController_deviceAnalytics);
    MEMORY[0x1E69E5928](v6);
    [v6 updateFeatureChangeCount_];
    MEMORY[0x1E69E5920](v6);
  }

  else
  {
    sub_1AC206988(v9);
    swift_endAccess();
  }

  sub_1AC30915C();
  swift_getObjectType();
  swift_unknownObjectRetain();
  if ([a1 respondsToSelector_])
  {
    swift_unknownObjectRetain();
    v8 = [a1 BOOLValue];
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 2;
  }

  if (v8 == 2)
  {
    sub_1AC30B05C();
    __break(1u);
  }

  swift_unknownObjectRelease();
  sub_1AC3099AC();
}

double sub_1AC25A7E0(void *a1)
{
  sub_1AC259A3C();

  v3 = sub_1AC30A91C();

  [a1 setIdentifier_];
  *&result = MEMORY[0x1E69E5920](v3).n128_u64[0];
  return result;
}

uint64_t sub_1AC25A868()
{
  v25 = 0;
  v24 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCA0);
  v13 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v21 = v7 - v13;
  v23 = sub_1AC30901C();
  v19 = *(v23 - 8);
  v20 = v23 - 8;
  v14 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v23);
  v15 = v7 - v14;
  v16 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7 - v14);
  v17 = v7 - v16;
  v25 = v7 - v16;
  v24 = v0;
  v22 = 1;
  sub_1AC30A9DC();
  v18 = v3;
  sub_1AC30900C();

  if ((*(v19 + 48))(v21, v22, v23) == 1)
  {
    return sub_1AC247D84(v21);
  }

  v4 = v15;
  (*(v19 + 32))(v17, v21, v23);
  v10 = [objc_opt_self() sharedApplication];
  (*(v19 + 16))(v4, v17, v23);
  v9 = sub_1AC308FEC();
  v12 = *(v19 + 8);
  v11 = v19 + 8;
  v12(v15, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C320);
  v7[0] = 0;
  v7[1] = sub_1AC30B18C();
  v7[2] = type metadata accessor for OpenExternalURLOptionsKey();
  v7[4] = sub_1AC247EC4();
  v7[3] = MEMORY[0x1E69E7CA0] + 8;
  v7[5] = sub_1AC30A83C();
  v8 = sub_1AC30A81C();

  [v10 openURL:v9 options:v8 completionHandler:0];
  MEMORY[0x1E69E5920](v8);
  MEMORY[0x1E69E5920](v9);
  v5 = MEMORY[0x1E69E5920](v10);
  return (v12)(v17, v23, v5);
}

id HeartRateFeature.init()()
{
  v5 = 0;
  v2 = OBJC_IVAR____TtC19HeadphoneSettingsUI16HeartRateFeature_name;
  *v2 = sub_1AC30A9DC();
  v2[1] = v0;
  v4.receiver = v5;
  v4.super_class = type metadata accessor for HeartRateFeature();
  v3 = objc_msgSendSuper2(&v4, sel_init);
  MEMORY[0x1E69E5928](v3);
  v5 = v3;
  MEMORY[0x1E69E5920](v3);
  return v3;
}

id HeartRateFeature.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeartRateFeature();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1AC25AF50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a1;
  v21 = a2;
  v19 = a3;
  v20 = a4;
  sub_1AC30915C();
  v5 = sub_1AC30986C();

  v18 = v5;
  v17 = 2;
  type metadata accessor for AAFeatureCapability();
  sub_1AC212BF0();
  v6 = sub_1AC30B1BC();
  v16 = v6 & 1;
  sub_1AC30929C();
  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C4D0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
    }
  }

  else
  {
    sub_1AC204664(v9);
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
  }

  v8 = v14 != 0;
  sub_1AC204664(&v11);
  LOBYTE(v7) = v8;
  HIBYTE(v7) = v6 & 1;
  return v7;
}

uint64_t sub_1AC25B110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a1;
  v22 = a2;
  v20 = a3;
  v21 = a4;
  sub_1AC30929C();
  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C4D0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
    }
  }

  else
  {
    sub_1AC204664(v12);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
  }

  if (v17)
  {
    sub_1AC2051E4(&v14, __dst);
    v9 = type metadata accessor for BobbleSettingsViewController();
    v4 = MEMORY[0x1E69E5928](a1);
    v10 = (*(v9 + 344))(a1, v4);
    swift_unknownObjectRelease();
    if (v10)
    {
      v7 = sub_1AC28A2BC(a1);
      __swift_destroy_boxed_opaque_existential_1(__dst);
      return v7;
    }

    else
    {
      sub_1AC215CB0();
      v6 = sub_1AC30B18C();
      __swift_destroy_boxed_opaque_existential_1(__dst);
      return v6;
    }
  }

  else
  {
    sub_1AC204664(&v14);
    sub_1AC215CB0();
    return sub_1AC30B18C();
  }
}

uint64_t sub_1AC25B2F0()
{
  v1 = sub_1AC30A9DC();

  sub_1AC2063F0();
  return v1;
}

_BYTE *sub_1AC25B3C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6[5] = a1;
  v6[6] = a2;
  v6[3] = &unk_1F20F4968;
  v6[4] = &off_1F20F48B8;
  v6[0] = sub_1AC25B2F0();
  v6[1] = v3;
  return sub_1AC29F3A0(v6, a3);
}

uint64_t sub_1AC25B460@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  sub_1AC2598E4();
  v7 = sub_1AC30B18C();
  v6 = v2;
  MEMORY[0x1E69E5928](a1);
  *v6 = a1;
  type metadata accessor for BobbleSettingsViewController();
  v3 = sub_1AC20D658();
  result = v7;
  v6[1] = v3;
  sub_1AC206300();
  *a2 = v7;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = 0;
  a2[4] = 0;
  return result;
}

uint64_t sub_1AC25B5D0()
{
  v2 = [objc_opt_self() currentDevice];
  [v2 userInterfaceIdiom];
  MEMORY[0x1E69E5920](v2);
  type metadata accessor for UIUserInterfaceIdiom();
  sub_1AC2052F0();
  v3 = sub_1AC30B1BC();
  if (sub_1AC3092FC())
  {
    v1 = 1;
  }

  else
  {
    v1 = v3;
  }

  LOBYTE(v4) = 1;
  HIBYTE(v4) = v1 & 1;
  return v4;
}

uint64_t sub_1AC25B6F0(void *a1, void *a2, uint64_t a3)
{
  v59 = a3;
  v61 = a2;
  v60 = a1;
  v54 = 0;
  v79 = 0;
  v78 = 0;
  v77 = 0;
  v55 = sub_1AC30A90C();
  v56 = *(v55 - 8);
  v57 = v56;
  MEMORY[0x1EEE9AC00](0);
  v58 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1AC309AAC();
  v63 = *(v62 - 8);
  v64 = v63;
  MEMORY[0x1EEE9AC00](v60);
  v65 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = v5;
  v78 = v6;
  v77 = v7;
  v76 = sub_1AC25B5D0();
  v74 = HIBYTE(v76);
  v75 = v76;
  v73 = 1;
  v72 = 1;
  if (sub_1AC30B1AC())
  {
    v45 = 1;
    sub_1AC30A9DC();
    sub_1AC30A8AC();
    v36 = sub_1AC215DE8(v58, &unk_1F20F4A10);
    v37 = v8;
    (*(v57 + 8))(v58, v55);
    v44 = 0;
    v68 = 0;
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v9 = v60;
    v40 = 24;
    v33 = 7;
    v35 = swift_allocObject();
    *(v35 + 16) = v60;
    v39 = swift_allocObject();
    v32 = v39 + 16;
    v10 = v61;
    swift_unknownObjectWeakInit();

    v11 = v60;
    v12 = swift_allocObject();
    v13 = v60;
    v34 = v12;
    *(v12 + 16) = v39;
    *(v12 + 24) = v13;
    v14 = sub_1AC20599C();
    v38 = &v20;
    v28 = v44;
    v27 = v44;
    v26 = v34;
    v25 = sub_1AC25BFA4;
    v24 = v35;
    v23 = sub_1AC25BD5C;
    v22 = v44;
    v21 = v14 & 1;
    v20 = v44;
    sub_1AC309A9C();

    v42 = sub_1AC309D1C();
    (*(v64 + 8))(v65, v62);
    v15 = v60;
    v41 = v29;
    MEMORY[0x1EEE9AC00](v29);
    v28 = v16;
    v43 = sub_1AC309D0C();

    v46 = sub_1AC215CB0();
    v47 = v46;
    v48 = sub_1AC30B18C();
    v49 = v17;
    v51 = sub_1AC309D2C();
    v67 = v51;
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C378);
    sub_1AC25C2AC();
    sub_1AC30A87C();
    v53 = v66;
    v52 = v66;

    if (v53)
    {
      v31 = v52;
    }

    else
    {
      LODWORD(v28) = 0;
      v27 = 42;
      LOBYTE(v26) = 2;
      sub_1AC30B05C();
      __break(1u);
    }

    v18 = v48;
    *v49 = v31;
    sub_1AC206300();
    return v18;
  }

  else
  {
    v29[0] = 0;
    v29[1] = sub_1AC215CB0();
    return sub_1AC30B18C();
  }
}

id sub_1AC25BD04()
{
  sub_1AC2068B8();
  v0 = sub_1AC30925C();
  return sub_1AC244124(v0 & 1);
}

uint64_t sub_1AC25BD64(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[7] = a1;
  v9[6] = a2;
  v9[5] = a3 + 16;
  v9[4] = a4;
  swift_beginAccess();
  v9[0] = swift_unknownObjectWeakLoadStrong();
  if (v9[0])
  {
    v5 = v9[0];
    MEMORY[0x1E69E5928](v9[0]);
    sub_1AC206988(v9);
    swift_endAccess();
    v6 = *(v5 + OBJC_IVAR____TtC19HeadphoneSettingsUI27HeadphoneSettingsController_deviceAnalytics);
    MEMORY[0x1E69E5928](v6);
    [v6 updateFeatureChangeCount_];
    MEMORY[0x1E69E5920](v6);
  }

  else
  {
    sub_1AC206988(v9);
    swift_endAccess();
  }

  swift_getObjectType();
  swift_unknownObjectRetain();
  if ([a1 respondsToSelector_])
  {
    swift_unknownObjectRetain();
    v8 = [a1 BOOLValue];
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 2;
  }

  if (v8 == 2)
  {
    sub_1AC30B05C();
    __break(1u);
  }

  sub_1AC30926C();
  swift_unknownObjectRelease();
  return sub_1AC30942C();
}

uint64_t sub_1AC25BFB0(void *a1, uint64_t a2)
{
  v18 = a1;
  v17 = a2;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v26 = 0;
  v27 = 0;
  v24 = 0;
  v25 = 0;
  v19 = sub_1AC30A90C();
  v20 = *(v19 - 8);
  v21 = v19 - 8;
  v22 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18);
  v23 = v8 - v22;
  v30 = v3;
  v29 = a2;
  v28 = sub_1AC30925C() & 1;
  if (v28)
  {
    sub_1AC30A9DC();
    sub_1AC30A8AC();
    v13 = sub_1AC215DE8(v23, &unk_1F20F4A10);
    v14 = v4;
    (*(v20 + 8))(v23, v19);
    v15 = v13;
    v16 = v14;
  }

  else
  {
    sub_1AC30A9DC();
    sub_1AC30A8AC();
    v11 = sub_1AC215DE8(v23, &unk_1F20F4A10);
    v12 = v5;
    (*(v20 + 8))(v23, v19);
    v15 = v11;
    v16 = v12;
  }

  v10 = v16;
  v8[1] = v15;
  v26 = v15;
  v27 = v16;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v8[0] = sub_1AC215DE8(v23, &unk_1F20F4A10);
  v9 = v6;
  (*(v20 + 8))(v23, v19);
  v24 = v8[0];
  v25 = v9;
  type metadata accessor for AudioFeatureGroup();
  sub_1AC2D27E8(v18);
}

unint64_t sub_1AC25C2AC()
{
  v2 = qword_1EB54C4D8;
  if (!qword_1EB54C4D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C378);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C4D8);
    return WitnessTable;
  }

  return v2;
}

id sub_1AC25C348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = objc_allocWithZone(v3);
  if (a2)
  {
    v6 = sub_1AC30A91C();

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v5 = [v10 initWithNibName_bundle_];
  MEMORY[0x1E69E5920](a3);
  MEMORY[0x1E69E5920](v7);
  return v5;
}

char *sub_1AC25C41C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  v12 = a1;
  v13 = a2;
  v11 = a3;
  *OBJC_IVAR____TtC19HeadphoneSettingsUI29BatteryChargingViewController_headphoneDevice = 0;
  v3 = &v14[OBJC_IVAR____TtC19HeadphoneSettingsUI29BatteryChargingViewController_featureContent];
  *v3 = 0;
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *(v3 + 3) = 0;
  *(v3 + 4) = 0;
  *&v14[OBJC_IVAR____TtC19HeadphoneSettingsUI29BatteryChargingViewController____lazy_storage___topFooterSection] = 0;
  *&v14[OBJC_IVAR____TtC19HeadphoneSettingsUI29BatteryChargingViewController____lazy_storage___batterySwitchSection] = 0;
  *&v14[OBJC_IVAR____TtC19HeadphoneSettingsUI29BatteryChargingViewController____lazy_storage___chargingReminderSection] = 0;

  if (a2)
  {
    v6 = sub_1AC30A91C();

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v14;
  v10.super_class = type metadata accessor for BatteryChargingViewController();
  v5 = objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, v7, a3);
  MEMORY[0x1E69E5920](v7);
  MEMORY[0x1E69E5928](v5);
  v14 = v5;
  MEMORY[0x1E69E5920](a3);

  MEMORY[0x1E69E5920](v14);
  return v5;
}

void sub_1AC25C5F4(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
}

uint64_t sub_1AC25C6D8()
{
  v2 = (v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI29BatteryChargingViewController_headphoneDevice);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

double sub_1AC25C748(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR____TtC19HeadphoneSettingsUI29BatteryChargingViewController_headphoneDevice);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1AC25C84C@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC19HeadphoneSettingsUI29BatteryChargingViewController_featureContent);
  swift_beginAccess();
  sub_1AC25C8B0(v3, a1);
  return swift_endAccess();
}

void *sub_1AC25C8B0(void *a1, void *a2)
{
  if (a1[3])
  {
    v2 = a1[3];
    a2[3] = v2;
    a2[4] = a1[4];
    (**(v2 - 8))();
  }

  else
  {
    memcpy(a2, a1, 0x28uLL);
  }

  return a2;
}

uint64_t sub_1AC25C944(void *a1)
{
  v5[5] = 0;
  v5[6] = a1;
  sub_1AC25C8B0(a1, v5);
  v3 = (v1 + OBJC_IVAR____TtC19HeadphoneSettingsUI29BatteryChargingViewController_featureContent);
  swift_beginAccess();
  sub_1AC25C9C8(v5, v3);
  swift_endAccess();
  return sub_1AC204664(a1);
}

void *sub_1AC25C9C8(const void *a1, void *a2)
{
  if (a2[3])
  {
    __swift_destroy_boxed_opaque_existential_1(a2);
    memcpy(a2, a1, 0x28uLL);
  }

  else
  {
    memcpy(a2, a1, 0x28uLL);
  }

  return a2;
}

void sub_1AC25CAF8()
{
  *OBJC_IVAR____TtC19HeadphoneSettingsUI29BatteryChargingViewController_headphoneDevice = 0;
  v0 = OBJC_IVAR____TtC19HeadphoneSettingsUI29BatteryChargingViewController_featureContent;
  *OBJC_IVAR____TtC19HeadphoneSettingsUI29BatteryChargingViewController_featureContent = 0;
  v0[1] = 0;
  v0[2] = 0;
  v0[3] = 0;
  v0[4] = 0;
  *OBJC_IVAR____TtC19HeadphoneSettingsUI29BatteryChargingViewController____lazy_storage___topFooterSection = 0;
  *OBJC_IVAR____TtC19HeadphoneSettingsUI29BatteryChargingViewController____lazy_storage___batterySwitchSection = 0;
  *OBJC_IVAR____TtC19HeadphoneSettingsUI29BatteryChargingViewController____lazy_storage___chargingReminderSection = 0;
  sub_1AC30A9DC();
  sub_1AC30B06C();
  __break(1u);
}

uint64_t sub_1AC25CC3C()
{
  v89 = sub_1AC20A6B4;
  v90 = sub_1AC2559F4;
  v91 = sub_1AC215C98;
  v92 = sub_1AC25DAF0;
  v93 = sub_1AC2572B0;
  v94 = sub_1AC215C90;
  v95 = sub_1AC215C90;
  v96 = sub_1AC215CA4;
  v97 = sub_1AC215C90;
  v98 = sub_1AC215C90;
  v99 = sub_1AC2572BC;
  v117 = 0;
  v116 = 0;
  v100 = 0;
  v110 = 0;
  v101 = sub_1AC309E6C();
  v102 = *(v101 - 8);
  v103 = v101 - 8;
  v104 = (*(v102 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v101);
  v105 = v39 - v104;
  v117 = v0;
  v106 = (*((*v0 & *MEMORY[0x1E69E7D40]) + 0x78))();
  if (!v106)
  {
LABEL_8:
    v15 = v105;
    v48 = 0;
    v49 = sub_1AC215CB0();
    v50 = sub_1AC30B18C();

    v116 = v50;
    v53 = sub_1AC30AAFC();

    sub_1AC30A9DC();
    v51 = v16;
    v52 = sub_1AC30A91C();

    [v88 setValue:v53 forKey:v52];
    MEMORY[0x1E69E5920](v52);
    swift_unknownObjectRelease();
    v17 = sub_1AC274D88();
    (*(v102 + 16))(v15, v17, v101);
    v69 = sub_1AC309E4C();
    v70 = sub_1AC30AD1C();
    v55 = 17;
    v58 = 7;
    v60 = swift_allocObject();
    *(v60 + 16) = 32;
    v61 = swift_allocObject();
    v56 = 8;
    *(v61 + 16) = 8;
    v57 = 32;
    v18 = swift_allocObject();
    v54 = v18;
    *(v18 + 16) = v90;
    *(v18 + 24) = 0;
    v19 = swift_allocObject();
    v20 = v54;
    v62 = v19;
    *(v19 + 16) = v91;
    *(v19 + 24) = v20;
    v63 = swift_allocObject();
    *(v63 + 16) = 0;
    v64 = swift_allocObject();
    *(v64 + 16) = v56;
    v21 = swift_allocObject();
    v59 = v21;
    *(v21 + 16) = v92;
    *(v21 + 24) = 0;
    v22 = swift_allocObject();
    v23 = v59;
    v66 = v22;
    *(v22 + 16) = v93;
    *(v22 + 24) = v23;
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8);
    v65 = sub_1AC30B18C();
    v67 = v24;

    v25 = v60;
    v26 = v67;
    *v67 = v94;
    v26[1] = v25;

    v27 = v61;
    v28 = v67;
    v67[2] = v95;
    v28[3] = v27;

    v29 = v62;
    v30 = v67;
    v67[4] = v96;
    v30[5] = v29;

    v31 = v63;
    v32 = v67;
    v67[6] = v97;
    v32[7] = v31;

    v33 = v64;
    v34 = v67;
    v67[8] = v98;
    v34[9] = v33;

    v35 = v66;
    v36 = v67;
    v67[10] = v99;
    v36[11] = v35;
    sub_1AC206300();

    if (os_log_type_enabled(v69, v70))
    {
      v37 = v100;
      v40 = sub_1AC30AE6C();
      v39[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8);
      v41 = sub_1AC213EE4(0);
      v42 = sub_1AC213EE4(1);
      v44 = &v115;
      v115 = v40;
      v45 = &v114;
      v114 = v41;
      v46 = &v113;
      v113 = v42;
      v43 = 2;
      sub_1AC213F38(2, &v115);
      sub_1AC213F38(v43, v44);
      v111 = v94;
      v112 = v60;
      sub_1AC213F4C(&v111, v44, v45, v46);
      v47 = v37;
      if (v37)
      {

        __break(1u);
      }

      else
      {
        v111 = v95;
        v112 = v61;
        sub_1AC213F4C(&v111, &v115, &v114, &v113);
        v39[3] = 0;
        v111 = v96;
        v112 = v62;
        sub_1AC213F4C(&v111, &v115, &v114, &v113);
        v39[2] = 0;
        v111 = v97;
        v112 = v63;
        sub_1AC213F4C(&v111, &v115, &v114, &v113);
        v39[1] = 0;
        v111 = v98;
        v112 = v64;
        sub_1AC213F4C(&v111, &v115, &v114, &v113);
        v39[0] = 0;
        v111 = v99;
        v112 = v66;
        sub_1AC213F4C(&v111, &v115, &v114, &v113);
        _os_log_impl(&dword_1AC1C3000, v69, v70, "%s: %ld Dependencies not meet, bailing out of specifiers returning empty controller!", v40, 0x16u);
        sub_1AC213F98(v41);
        sub_1AC213F98(v42);
        sub_1AC30AE4C();
      }
    }

    else
    {
    }

    v38 = MEMORY[0x1E69E5920](v69);
    (*(v102 + 8))(v105, v101, v38);
    sub_1AC209190();
    return 0;
  }

  v87 = v106;
  v86 = v106;
  v110 = v106;
  (*((*v88 & *MEMORY[0x1E69E7D40]) + 0x90))(v108);
  if (!v108[3])
  {
    sub_1AC204664(v108);
    MEMORY[0x1E69E5920](v86);
    goto LABEL_8;
  }

  v1 = v100;
  v2 = v88;
  sub_1AC2051E4(v108, __dst);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C378);
  v81 = sub_1AC30B18C();
  v80 = v3;
  v4 = *v2;
  v79 = MEMORY[0x1E69E7D40];
  v5 = (*((v4 & *MEMORY[0x1E69E7D40]) + 0xA8))();
  v6 = v88;
  v7 = v79;
  *v80 = v5;
  v8 = (*((*v6 & *v7) + 0xC0))();
  v9 = v88;
  v10 = v79;
  v80[1] = v8;
  v11 = (*((*v9 & *v10) + 0xD8))();
  v12 = v81;
  v80[2] = v11;
  sub_1AC206300();
  v107 = v12;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C508);
  v84 = sub_1AC263B38();
  sub_1AC24D54C();
  result = sub_1AC30AA8C();
  v85 = result;
  if (!v1)
  {
    v75 = v85;
    sub_1AC209190();

    v76 = &v116;
    v116 = v75;
    v74 = sub_1AC215CB0();
    v73 = sub_1AC30AAFC();
    sub_1AC30A9DC();
    v71 = v14;
    v72 = sub_1AC30A91C();

    [v88 setValue:v73 forKey:v72];
    MEMORY[0x1E69E5920](v72);
    swift_unknownObjectRelease();
    v77 = sub_1AC30B02C();

    __swift_destroy_boxed_opaque_existential_1(__dst);
    MEMORY[0x1E69E5920](v86);
    sub_1AC209190();
    return v77;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC25DBC0()
{
  v6 = (v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI29BatteryChargingViewController____lazy_storage___topFooterSection);
  swift_beginAccess();
  v7 = *v6;

  swift_endAccess();
  if (v7)
  {
    return v7;
  }

  v3 = sub_1AC25DCB4(v5);

  v2 = (v5 + OBJC_IVAR____TtC19HeadphoneSettingsUI29BatteryChargingViewController____lazy_storage___topFooterSection);
  swift_beginAccess();
  *v2 = v3;

  swift_endAccess();
  return v3;
}

uint64_t sub_1AC25DCB4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BB88);
  sub_1AC309AAC();
  sub_1AC205220();
  sub_1AC205220();
  sub_1AC309D3C();
  MEMORY[0x1E69E5928](a1);
  sub_1AC309CDC();
  MEMORY[0x1E69E5920](a1);

  v3 = sub_1AC309D2C();

  return v3;
}

uint64_t sub_1AC25DDC0(void *a1, void *a2)
{
  v49 = a2;
  v38 = a1;
  v47 = 0;
  v58 = 0;
  v57 = 0;
  v52 = 0;
  v51 = 0;
  v34 = sub_1AC30A90C();
  v35 = *(v34 - 8);
  v36 = v35;
  MEMORY[0x1EEE9AC00](0);
  v37 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1AC30A8EC();
  v40 = *(v39 - 8);
  v41 = v40;
  v43 = *(v40 + 64);
  v3 = MEMORY[0x1EEE9AC00](v38);
  v45 = (v43 + 15) & 0xFFFFFFFFFFFFFFF0;
  v42 = &v17 - v45;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v44 = &v17 - v45;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v46 = &v17 - v45;
  v58 = v5;
  v57 = v6;
  v56 = v6;
  v48 = 1;
  sub_1AC30A8DC();
  sub_1AC30A9DC();
  v50 = v7;
  sub_1AC30A8CC();
  v8 = v49;

  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x90))(&v53, v9);
  if (!v54)
  {
    sub_1AC30B05C();
    __break(1u);
  }

  v21 = v54;
  v18 = v55;
  v25 = &v53;
  __swift_project_boxed_opaque_existential_1(&v53, v54);
  v17 = *(v21 - 8);
  v19 = v17;
  v24 = &v17;
  MEMORY[0x1EEE9AC00](&v17);
  v20 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v20);
  v22 = (*(*(v18 + 8) + 24))(v21);
  v23 = v11;
  (*(v19 + 8))(v20, v21);
  sub_1AC30A8BC();

  __swift_destroy_boxed_opaque_existential_1(v25);
  sub_1AC30A9DC();
  v26 = v12;
  sub_1AC30A8CC();

  (*(v41 + 16))(v44, v46, v39);
  (*(v41 + 32))(v42, v44, v39);
  (*(v41 + 8))(v46, v39);
  sub_1AC30A8FC();
  v27 = type metadata accessor for BatteryChargingViewController();
  v28 = sub_1AC215DE8(v37, v27);
  v33 = v13;
  (*(v36 + 8))(v37, v34);
  v51 = v28;
  v52 = v33;

  v32 = sub_1AC30A91C();

  v30 = *MEMORY[0x1E69C5900];
  v14 = v30;
  sub_1AC30A92C();
  v29 = v15;
  v31 = sub_1AC30A91C();

  [v38 setProperty:v32 forKey:{v31, v17}];
  swift_unknownObjectRelease();
}

uint64_t sub_1AC25E394(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC19HeadphoneSettingsUI29BatteryChargingViewController____lazy_storage___topFooterSection);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t (*sub_1AC25E414(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1AC25DBC0();
  return sub_1AC25E470;
}

uint64_t sub_1AC25E470(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_1AC25E394(*a1);
  }

  v3 = *a1;

  sub_1AC25E394(v3);
  result = a1;
  sub_1AC209190();
  return result;
}

uint64_t sub_1AC25E4DC()
{
  v6 = (v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI29BatteryChargingViewController____lazy_storage___batterySwitchSection);
  swift_beginAccess();
  v7 = *v6;

  swift_endAccess();
  if (v7)
  {
    return v7;
  }

  v3 = sub_1AC25E5D0(v5);

  v2 = (v5 + OBJC_IVAR____TtC19HeadphoneSettingsUI29BatteryChargingViewController____lazy_storage___batterySwitchSection);
  swift_beginAccess();
  *v2 = v3;

  swift_endAccess();
  return v3;
}

uint64_t sub_1AC25E5D0(void *a1)
{
  v36 = a1;
  v37 = 0;
  v54 = 0;
  v53 = 0;
  v38 = sub_1AC30A90C();
  v39 = *(v38 - 8);
  v40 = v39;
  MEMORY[0x1EEE9AC00](0);
  v41 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1AC309AAC();
  v43 = *(v42 - 8);
  v44 = v43;
  MEMORY[0x1EEE9AC00](v42 - 8);
  v45 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a1;
  v46 = (*((*a1 & *MEMORY[0x1E69E7D40]) + 0x78))();
  if (v46)
  {
    v35 = v46;
  }

  else
  {
    sub_1AC30B05C();
    __break(1u);
  }

  v27 = v35;
  v28 = sub_1AC30915C();
  v53 = v28;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BB88);
  v29 = MEMORY[0x1E69A2B08];
  v30 = sub_1AC205220();
  v31 = v4;
  sub_1AC205220();
  v34 = sub_1AC309D3C();
  v5 = v36;
  v32 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v33 = sub_1AC309CDC();

  if (sub_1AC263548())
  {
    v47 = v36;
    sub_1AC30A9DC();
    sub_1AC30A8AC();
    v22 = type metadata accessor for BatteryChargingViewController();
    v23 = sub_1AC215DE8(v41, v22);
    v24 = v6;
    (*(v40 + 8))(v41, v38);
    v25 = v23;
    v26 = v24;
  }

  else
  {
    v52 = v36;
    sub_1AC30A9DC();
    sub_1AC30A8AC();
    v19 = type metadata accessor for BatteryChargingViewController();
    v20 = sub_1AC215DE8(v41, v19);
    v21 = v7;
    (*(v40 + 8))(v41, v38);
    v25 = v20;
    v26 = v21;
  }

  v15[7] = v26;
  v15[6] = v25;
  v15[8] = 0;
  v48 = 0;
  v49 = 0;
  v50 = 0;
  v51 = 0;
  v8 = v36;

  v15[2] = 32;
  v15[3] = 7;
  v9 = swift_allocObject();
  v10 = v28;
  v15[5] = v9;
  *(v9 + 16) = v36;
  *(v9 + 24) = v10;
  v16 = swift_allocObject();
  v15[1] = v16 + 16;
  v11 = v36;
  swift_unknownObjectWeakInit();

  v12 = swift_allocObject();
  v13 = v28;
  v15[4] = v12;
  *(v12 + 16) = v16;
  *(v12 + 24) = v13;
  sub_1AC20599C();
  sub_1AC309A9C();

  v17 = sub_1AC309D1C();
  (*(v44 + 8))(v45, v42);

  v18 = sub_1AC309D2C();

  return v18;
}

uint64_t *sub_1AC25EC4C(void *a1, void *a2)
{
  v97 = a2;
  v103 = a1;
  v98 = 0;
  v133 = 0;
  v132 = 0;
  v131 = 0;
  v130 = 0;
  v126 = 0;
  v125 = 0;
  v99 = sub_1AC30A90C();
  v100 = *(v99 - 8);
  v101 = v100;
  MEMORY[0x1EEE9AC00](0);
  v102 = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_1AC30A8EC();
  v105 = *(v104 - 8);
  v106 = v105;
  v109 = *(v105 + 64);
  v4 = MEMORY[0x1EEE9AC00](v103);
  v111 = (v109 + 15) & 0xFFFFFFFFFFFFFFF0;
  v107 = v33 - v111;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v108 = v33 - v111;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v110 = v33 - v111;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v112 = v33 - v111;
  v133 = v7;
  v132 = a2;
  if (sub_1AC263548())
  {
    v116 = v97;
    v95 = 1;
    sub_1AC30A8DC();
    sub_1AC30A9DC();
    v96 = v8;
    sub_1AC30A8CC();
    v9 = v97;

    (*((*v9 & *MEMORY[0x1E69E7D40]) + 0x90))(&v113, v10);
    if (!v114)
    {
      sub_1AC30B05C();
      __break(1u);
    }

    v82 = v114;
    v79 = v115;
    v86 = &v113;
    __swift_project_boxed_opaque_existential_1(&v113, v114);
    v78 = *(v82 - 8);
    v80 = v78;
    v85 = v33;
    MEMORY[0x1EEE9AC00](v33);
    v81 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v80 + 16))(v81);
    v83 = (*(*(v79 + 8) + 24))(v82);
    v84 = v12;
    (*(v80 + 8))(v81, v82);
    sub_1AC30A8BC();

    __swift_destroy_boxed_opaque_existential_1(v86);
    sub_1AC30A9DC();
    v87 = v13;
    sub_1AC30A8CC();

    (*(v106 + 16))(v110, v112, v104);
    (*(v106 + 32))(v108, v110, v104);
    (*(v106 + 8))(v112, v104);
    sub_1AC30A8FC();
    v88 = type metadata accessor for BatteryChargingViewController();
    v90 = sub_1AC215DE8(v102, v88);
    v91 = v14;
    v89 = v90;
    v92 = v14;
    (*(v101 + 8))(v102, v99);

    v130 = v90;
    v131 = v91;
    v93 = v89;
    v94 = v92;
  }

  else
  {
    v75 = [objc_opt_self() currentDevice];
    v76 = [v75 userInterfaceIdiom];

    v129 = v76;
    v128 = 1;
    v77 = type metadata accessor for UIUserInterfaceIdiom();
    sub_1AC2052F0();
    if (sub_1AC30B1BC())
    {
      v117 = v97;
      sub_1AC30A9DC();
      sub_1AC30A8AC();
      v70 = type metadata accessor for BatteryChargingViewController();
      v71 = sub_1AC215DE8(v102, v70);
      v72 = v15;
      (*(v101 + 8))(v102, v99);
      v73 = v71;
      v74 = v72;
    }

    else
    {
      v127 = v97;
      sub_1AC30A9DC();
      sub_1AC30A8AC();
      v67 = type metadata accessor for BatteryChargingViewController();
      v68 = sub_1AC215DE8(v102, v67);
      v69 = v16;
      (*(v101 + 8))(v102, v99);
      v73 = v68;
      v74 = v69;
    }

    v64 = v74;
    v63 = v73;
    v125 = v73;
    v126 = v74;
    v124 = v97;
    sub_1AC30A8DC();
    v65 = 1;
    sub_1AC30A9DC();
    v62 = v17;
    sub_1AC30A8CC();

    sub_1AC30A8BC();
    sub_1AC30A9DC();
    v66 = v18;
    sub_1AC30A8CC();
    v19 = v97;

    (*((*v19 & *MEMORY[0x1E69E7D40]) + 0x90))(&v121, v20);
    if (!v122)
    {
      sub_1AC30B05C();
      __break(1u);
    }

    v56 = v122;
    v53 = v123;
    v60 = &v121;
    __swift_project_boxed_opaque_existential_1(&v121, v122);
    v52 = *(v56 - 8);
    v54 = v52;
    v59 = v33;
    MEMORY[0x1EEE9AC00](v33);
    v55 = v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v54 + 16))(v55);
    v57 = (*(*(v53 + 8) + 24))(v56);
    v58 = v22;
    (*(v54 + 8))(v55, v56);
    sub_1AC30A8BC();

    __swift_destroy_boxed_opaque_existential_1(v60);
    sub_1AC30A9DC();
    v61 = v23;
    sub_1AC30A8CC();
    v24 = v97;

    (*((*v24 & *MEMORY[0x1E69E7D40]) + 0x90))(&v118, v25);
    if (!v119)
    {
      sub_1AC30B05C();
      __break(1u);
    }

    v41 = v119;
    v38 = v120;
    v45 = &v118;
    __swift_project_boxed_opaque_existential_1(&v118, v119);
    v37 = *(v41 - 8);
    v39 = v37;
    v44 = v33;
    MEMORY[0x1EEE9AC00](v33);
    v40 = v33 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v39 + 16))(v40);
    v42 = (*(*(v38 + 8) + 24))(v41);
    v43 = v27;
    (*(v39 + 8))(v40, v41);
    sub_1AC30A8BC();

    __swift_destroy_boxed_opaque_existential_1(v45);
    sub_1AC30A9DC();
    v46 = v28;
    sub_1AC30A8CC();

    (*(v106 + 16))(v110, v107, v104);
    (*(v106 + 32))(v108, v110, v104);
    (*(v106 + 8))(v107, v104);
    sub_1AC30A8FC();
    v47 = type metadata accessor for BatteryChargingViewController();
    v48 = sub_1AC215DE8(v102, v47);
    v49 = v29;
    v50 = v48;
    v51 = v29;
    (*(v101 + 8))(v102, v99);

    v130 = v48;
    v131 = v49;

    v93 = v50;
    v94 = v51;
  }

  v33[0] = v94;
  v36 = sub_1AC30A91C();

  v34 = *MEMORY[0x1E69C5900];
  v30 = v34;
  sub_1AC30A92C();
  v33[1] = v31;
  v35 = sub_1AC30A91C();

  [v103 setProperty:v36 forKey:v35];
  swift_unknownObjectRelease();
  result = &v130;
  sub_1AC2063F0();
  return result;
}

id sub_1AC25FCC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v67 = a3;
  v68 = a1;
  v90 = 0;
  v89 = 0;
  v88 = 0;
  v66 = 0;
  v69 = sub_1AC309E6C();
  v70 = *(v69 - 8);
  v71 = v70;
  v72 = *(v70 + 64);
  v4 = MEMORY[0x1EEE9AC00](v68);
  v74 = (v72 + 15) & 0xFFFFFFFFFFFFFFF0;
  v73 = v18 - v74;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v75 = v18 - v74;
  v90 = v5;
  v89 = a2;
  v88 = v6;
  if (sub_1AC263548())
  {
    v7 = v75;
    v8 = sub_1AC250850();
    (*(v71 + 16))(v7, v8, v69);
    v64 = sub_1AC309E4C();
    v61 = v64;
    v63 = sub_1AC30AD2C();
    v62 = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8);
    v65 = sub_1AC30B18C();
    if (os_log_type_enabled(v64, v63))
    {
      v9 = v66;
      v52 = sub_1AC30AE6C();
      v48 = v52;
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8);
      v50 = 0;
      v53 = sub_1AC213EE4(0);
      v51 = v53;
      v54 = sub_1AC213EE4(v50);
      v79 = v52;
      v78 = v53;
      v77 = v54;
      v55 = 0;
      v56 = &v79;
      sub_1AC213F38(0, &v79);
      sub_1AC213F38(v55, v56);
      v76 = v65;
      v57 = v18;
      MEMORY[0x1EEE9AC00](v18);
      v58 = &v18[-6];
      v18[-4] = v10;
      v18[-3] = &v78;
      v18[-2] = &v77;
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BD08);
      sub_1AC218014();
      sub_1AC30AAAC();
      v60 = v9;
      if (v9)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1AC1C3000, v61, v62, "BatteryCharingFeature: reading dynamicEndOfChargeState", v48, 2u);
        v46 = 0;
        sub_1AC213F98(v51);
        sub_1AC213F98(v54);
        sub_1AC30AE4C();

        v47 = v60;
      }
    }

    else
    {

      v47 = v66;
    }

    v43 = v47;

    (*(v71 + 8))(v75, v69);
    v41 = 0;
    v40 = sub_1AC2068B8();
    v81 = sub_1AC30992C();
    v80 = 1;
    v42 = type metadata accessor for AAChargingFeatureEnablementState();
    sub_1AC263E78();
    v11 = sub_1AC30B1BC();
    v44 = sub_1AC244124(v11 & 1);
    v45 = v43;
  }

  else
  {
    v12 = v73;
    v13 = sub_1AC250850();
    (*(v71 + 16))(v12, v13, v69);
    v38 = sub_1AC309E4C();
    v35 = v38;
    v37 = sub_1AC30AD2C();
    v36 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8);
    v39 = sub_1AC30B18C();
    if (os_log_type_enabled(v38, v37))
    {
      v14 = v66;
      v26 = sub_1AC30AE6C();
      v22 = v26;
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8);
      v24 = 0;
      v27 = sub_1AC213EE4(0);
      v25 = v27;
      v28 = sub_1AC213EE4(v24);
      v85 = v26;
      v84 = v27;
      v83 = v28;
      v29 = 0;
      v30 = &v85;
      sub_1AC213F38(0, &v85);
      sub_1AC213F38(v29, v30);
      v82 = v39;
      v31 = v18;
      MEMORY[0x1EEE9AC00](v18);
      v32 = &v18[-6];
      v18[-4] = v15;
      v18[-3] = &v84;
      v18[-2] = &v83;
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BD08);
      sub_1AC218014();
      sub_1AC30AAAC();
      v34 = v14;
      if (v14)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1AC1C3000, v35, v36, "BatteryCharingFeature: reading optimizedBatteryChargingState", v22, 2u);
        v20 = 0;
        sub_1AC213F98(v25);
        sub_1AC213F98(v28);
        sub_1AC30AE4C();

        v21 = v34;
      }
    }

    else
    {

      v21 = v66;
    }

    v19 = v21;

    (*(v71 + 8))(v73, v69);
    v18[1] = 0;
    v18[0] = sub_1AC2068B8();
    v87 = sub_1AC309A3C();
    v86 = 1;
    v18[2] = type metadata accessor for AAChargingFeatureEnablementState();
    sub_1AC263E78();
    v16 = sub_1AC30B1BC();
    v44 = sub_1AC244124(v16 & 1);
    v45 = v19;
  }

  return v44;
}

double sub_1AC2605A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v99 = a1;
  v98 = a2;
  v95 = a3;
  v96 = a4;
  v97 = 0;
  v90 = sub_1AC263BFC;
  v91 = sub_1AC263C38;
  v92 = sub_1AC263C04;
  v93 = sub_1AC263C18;
  v94 = sub_1AC263C2C;
  v126 = 0;
  v125 = 0;
  v124 = 0;
  v123 = 0;
  v121 = 0;
  v118 = 0;
  v117 = 0;
  v114 = 0;
  v112 = 0;
  v100 = sub_1AC30A90C();
  v101 = *(v100 - 8);
  v102 = v100 - 8;
  v103 = (*(v101 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v104 = &v47 - v103;
  v126 = MEMORY[0x1EEE9AC00](v99);
  v125 = v4;
  v105 = v5 + 16;
  v124 = v5 + 16;
  v123 = v6;
  v106 = &v122;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    v89 = Strong;
    v88 = Strong;
    v121 = Strong;
    v8 = sub_1AC263548();
    if (v8)
    {

      v119 = v91;
    }

    else
    {

      v119 = v90;
    }

    v120 = v96;
    swift_unknownObjectRetain();
    objc_opt_self();
    v87 = swift_dynamicCastObjCClassUnconditional();
    v118 = v87;
    v117 = [v87 BOOLValue] & 1;
    if (v117)
    {
      v85 = v119;
      v86 = v120;

      v85(1u);
    }

    else
    {
      v84 = sub_1AC21E88C();
      if (sub_1AC263548())
      {
        v108 = v88;
        sub_1AC30A9DC();
        sub_1AC30A8AC();
        v9 = type metadata accessor for BatteryChargingViewController();
        v80 = sub_1AC215DE8(v104, v9);
        v81 = v10;
        (*(v101 + 8))(v104, v100);
        v82 = v80;
        v83 = v81;
      }

      else
      {
        v116 = v88;
        sub_1AC30A9DC();
        sub_1AC30A8AC();
        v11 = type metadata accessor for BatteryChargingViewController();
        v78 = sub_1AC215DE8(v104, v11);
        v79 = v12;
        (*(v101 + 8))(v104, v100);
        v82 = v78;
        v83 = v79;
      }

      v76 = v83;
      v77 = v82;
      if (sub_1AC263548())
      {
        v109 = v88;
        sub_1AC30A9DC();
        sub_1AC30A8AC();
        v13 = type metadata accessor for BatteryChargingViewController();
        v72 = sub_1AC215DE8(v104, v13);
        v73 = v14;
        (*(v101 + 8))(v104, v100);
        v74 = v72;
        v75 = v73;
      }

      else
      {
        v115 = v88;
        sub_1AC30A9DC();
        sub_1AC30A8AC();
        v15 = type metadata accessor for BatteryChargingViewController();
        v70 = sub_1AC215DE8(v104, v15);
        v71 = v16;
        (*(v101 + 8))(v104, v100);
        v74 = v70;
        v75 = v71;
      }

      v69 = sub_1AC21CFE0(v77, v76, v74, v75, 1);
      v114 = v69;
      v63 = 0;
      v58 = sub_1AC21E8F0();
      v113 = v88;
      v67 = 1;
      sub_1AC30A9DC();
      sub_1AC30A8AC();
      v56 = type metadata accessor for BatteryChargingViewController();
      v57 = &off_1F20F4B60;
      v49 = sub_1AC215DE8(v104, v56);
      v48 = v17;
      v60 = *(v101 + 8);
      v59 = v101 + 8;
      v60(v104, v100);
      v51 = v119;
      v52 = v120;

      MEMORY[0x1E69E5928](v88);
      MEMORY[0x1E69E5928](v98);
      v50 = 48;
      v61 = 7;
      v18 = swift_allocObject();
      v19 = v48;
      v20 = v92;
      v21 = v52;
      v22 = v98;
      v23 = v63;
      v24 = v88;
      v25 = v18;
      v26 = v49;
      v25[2] = v51;
      v25[3] = v21;
      v25[4] = v24;
      v25[5] = v22;
      v68 = sub_1AC21E3FC(v26, v19, v23, v20, v25);
      v112 = v68;
      v65 = 0x1FAE81000uLL;
      [v69 0x1FAE81FF8];
      v111 = v88;
      sub_1AC30A9DC();
      sub_1AC30A8AC();
      v54 = sub_1AC215DE8(v104, v56);
      v53 = v27;
      v60(v104, v100);
      MEMORY[0x1E69E5928](v88);
      MEMORY[0x1E69E5928](v98);
      v28 = swift_allocObject();
      v29 = v52;
      v30 = v53;
      v31 = v93;
      v32 = v98;
      v33 = v63;
      v34 = v88;
      v35 = v28;
      v36 = v54;
      v35[2] = v51;
      v35[3] = v29;
      v35[4] = v34;
      v35[5] = v32;
      v55 = sub_1AC21E3FC(v36, v30, v33, v31, v35);
      [v69 (v65 + 4088)];
      MEMORY[0x1E69E5920](v55);
      v110 = v88;
      sub_1AC30A9DC();
      sub_1AC30A8AC();
      v64 = sub_1AC215DE8(v104, v56);
      v62 = v37;
      v60(v104, v100);
      MEMORY[0x1E69E5928](v88);
      MEMORY[0x1E69E5928](v98);
      v38 = swift_allocObject();
      v39 = v98;
      v40 = v62;
      v41 = v63;
      v42 = v94;
      v43 = v38;
      v44 = v64;
      *(v43 + 16) = v88;
      *(v43 + 24) = v39;
      v66 = sub_1AC21E3FC(v44, v40, v41, v42, v43);
      [v69 (v65 + 4088)];
      MEMORY[0x1E69E5920](v66);
      *&v45 = MEMORY[0x1E69E5928](v68).n128_u64[0];
      [v69 setPreferredAction_];
      *&v46 = MEMORY[0x1E69E5920](v68).n128_u64[0];
      [v88 presentViewController:v69 animated:v67 & 1 completion:{0, v46}];
      MEMORY[0x1E69E5920](v68);
      MEMORY[0x1E69E5920](v69);
    }

    MEMORY[0x1E69E5920](v87);

    *&result = MEMORY[0x1E69E5920](v88).n128_u64[0];
  }

  return result;
}

uint64_t sub_1AC261184(unsigned int a1, uint64_t a2)
{
  v35 = a1;
  v29 = a2;
  v37 = sub_1AC263C40;
  v41 = sub_1AC263C84;
  v43 = sub_1AC215C90;
  v45 = sub_1AC215C90;
  v48 = sub_1AC263C90;
  v60 = 0;
  v59 = 0;
  v28 = 0;
  v34 = sub_1AC309E6C();
  v32 = *(v34 - 8);
  v33 = v34 - 8;
  v30 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = v19 - v30;
  v31 = v19 - v30;
  v60 = MEMORY[0x1EEE9AC00](v35);
  v59 = v3;
  v4 = sub_1AC250850();
  (*(v32 + 16))(v2, v4, v34);
  v36 = 17;
  v39 = 7;
  v40 = swift_allocObject();
  *(v40 + 16) = v35;
  v52 = sub_1AC309E4C();
  v53 = sub_1AC30AD2C();
  v44 = swift_allocObject();
  *(v44 + 16) = 0;
  v46 = swift_allocObject();
  *(v46 + 16) = 1;
  v38 = 32;
  v5 = swift_allocObject();
  v6 = v40;
  v42 = v5;
  *(v5 + 16) = v37;
  *(v5 + 24) = v6;
  v7 = swift_allocObject();
  v8 = v42;
  v49 = v7;
  *(v7 + 16) = v41;
  *(v7 + 24) = v8;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8);
  v47 = sub_1AC30B18C();
  v50 = v9;

  v10 = v44;
  v11 = v50;
  *v50 = v43;
  v11[1] = v10;

  v12 = v46;
  v13 = v50;
  v50[2] = v45;
  v13[3] = v12;

  v14 = v49;
  v15 = v50;
  v50[4] = v48;
  v15[5] = v14;
  sub_1AC206300();

  if (os_log_type_enabled(v52, v53))
  {
    v16 = v28;
    v21 = sub_1AC30AE6C();
    v19[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8);
    v20 = 0;
    v22 = sub_1AC213EE4(0);
    v23 = sub_1AC213EE4(v20);
    v24 = &v58;
    v58 = v21;
    v25 = &v57;
    v57 = v22;
    v26 = &v56;
    v56 = v23;
    sub_1AC213F38(0, &v58);
    sub_1AC213F38(1, v24);
    v54 = v43;
    v55 = v44;
    sub_1AC213F4C(&v54, v24, v25, v26);
    v27 = v16;
    if (v16)
    {

      __break(1u);
    }

    else
    {
      v54 = v45;
      v55 = v46;
      sub_1AC213F4C(&v54, &v58, &v57, &v56);
      v19[2] = 0;
      v54 = v48;
      v55 = v49;
      sub_1AC213F4C(&v54, &v58, &v57, &v56);
      _os_log_impl(&dword_1AC1C3000, v52, v53, "BatteryCharingFeature: updating dynamicEndOfChargeState %hhd", v21, 5u);
      v19[1] = 0;
      sub_1AC213F98(v22);
      sub_1AC213F98(v23);
      sub_1AC30AE4C();
    }
  }

  else
  {
  }

  v17 = MEMORY[0x1E69E5920](v52);
  (*(v32 + 8))(v31, v34, v17);
  return sub_1AC30993C();
}

uint64_t sub_1AC261794(unsigned int a1, uint64_t a2)
{
  v35 = a1;
  v29 = a2;
  v37 = sub_1AC263C40;
  v41 = sub_1AC263C84;
  v43 = sub_1AC215C90;
  v45 = sub_1AC215C90;
  v48 = sub_1AC263C90;
  v60 = 0;
  v59 = 0;
  v28 = 0;
  v34 = sub_1AC309E6C();
  v32 = *(v34 - 8);
  v33 = v34 - 8;
  v30 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = v19 - v30;
  v31 = v19 - v30;
  v60 = MEMORY[0x1EEE9AC00](v35);
  v59 = v3;
  v4 = sub_1AC250850();
  (*(v32 + 16))(v2, v4, v34);
  v36 = 17;
  v39 = 7;
  v40 = swift_allocObject();
  *(v40 + 16) = v35;
  v52 = sub_1AC309E4C();
  v53 = sub_1AC30AD2C();
  v44 = swift_allocObject();
  *(v44 + 16) = 0;
  v46 = swift_allocObject();
  *(v46 + 16) = 1;
  v38 = 32;
  v5 = swift_allocObject();
  v6 = v40;
  v42 = v5;
  *(v5 + 16) = v37;
  *(v5 + 24) = v6;
  v7 = swift_allocObject();
  v8 = v42;
  v49 = v7;
  *(v7 + 16) = v41;
  *(v7 + 24) = v8;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8);
  v47 = sub_1AC30B18C();
  v50 = v9;

  v10 = v44;
  v11 = v50;
  *v50 = v43;
  v11[1] = v10;

  v12 = v46;
  v13 = v50;
  v50[2] = v45;
  v13[3] = v12;

  v14 = v49;
  v15 = v50;
  v50[4] = v48;
  v15[5] = v14;
  sub_1AC206300();

  if (os_log_type_enabled(v52, v53))
  {
    v16 = v28;
    v21 = sub_1AC30AE6C();
    v19[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8);
    v20 = 0;
    v22 = sub_1AC213EE4(0);
    v23 = sub_1AC213EE4(v20);
    v24 = &v58;
    v58 = v21;
    v25 = &v57;
    v57 = v22;
    v26 = &v56;
    v56 = v23;
    sub_1AC213F38(0, &v58);
    sub_1AC213F38(1, v24);
    v54 = v43;
    v55 = v44;
    sub_1AC213F4C(&v54, v24, v25, v26);
    v27 = v16;
    if (v16)
    {

      __break(1u);
    }

    else
    {
      v54 = v45;
      v55 = v46;
      sub_1AC213F4C(&v54, &v58, &v57, &v56);
      v19[2] = 0;
      v54 = v48;
      v55 = v49;
      sub_1AC213F4C(&v54, &v58, &v57, &v56);
      _os_log_impl(&dword_1AC1C3000, v52, v53, "BatteryCharingFeature: updating optimizedBatteryChargingState %hhd", v21, 5u);
      v19[1] = 0;
      sub_1AC213F98(v22);
      sub_1AC213F98(v23);
      sub_1AC30AE4C();
    }
  }

  else
  {
  }

  v17 = MEMORY[0x1E69E5920](v52);
  (*(v32 + 8))(v31, v34, v17);
  return sub_1AC309A4C();
}

uint64_t sub_1AC261D8C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, void *a4, uint64_t a5)
{

  a2(3);

  [a4 reloadSpecifier_];
}

uint64_t sub_1AC261E38(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, void *a4, uint64_t a5)
{

  a2(2);

  [a4 reloadSpecifier_];
}

uint64_t sub_1AC261F30(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC19HeadphoneSettingsUI29BatteryChargingViewController____lazy_storage___batterySwitchSection);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t (*sub_1AC261FB0(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1AC25E4DC();
  return sub_1AC26200C;
}

uint64_t sub_1AC26200C(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_1AC261F30(*a1);
  }

  v3 = *a1;

  sub_1AC261F30(v3);
  result = a1;
  sub_1AC209190();
  return result;
}

uint64_t sub_1AC262078()
{
  v6 = (v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI29BatteryChargingViewController____lazy_storage___chargingReminderSection);
  swift_beginAccess();
  v7 = *v6;

  swift_endAccess();
  if (v7)
  {
    return v7;
  }

  v3 = sub_1AC26216C(v5);

  v2 = (v5 + OBJC_IVAR____TtC19HeadphoneSettingsUI29BatteryChargingViewController____lazy_storage___chargingReminderSection);
  swift_beginAccess();
  *v2 = v3;

  swift_endAccess();
  return v3;
}

uint64_t sub_1AC26216C(void *a1)
{
  v74 = a1;
  v80 = 0;
  v102 = 0;
  v101 = 0;
  v75 = 0;
  v76 = sub_1AC309E6C();
  v77 = *(v76 - 8);
  v78 = v77;
  MEMORY[0x1EEE9AC00](0);
  v79 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_1AC30A90C();
  v82 = *(v81 - 8);
  v83 = v82;
  MEMORY[0x1EEE9AC00](v80);
  v84 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_1AC309AAC();
  v86 = *(v85 - 8);
  v87 = v86;
  MEMORY[0x1EEE9AC00](v85 - 8);
  v88 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = a1;
  v89 = (*((*a1 & *MEMORY[0x1E69E7D40]) + 0x78))();
  if (v89)
  {
    v73 = v89;
  }

  else
  {
    LODWORD(v25) = 0;
    v24 = 133;
    LOBYTE(v23) = 2;
    sub_1AC30B05C();
    __break(1u);
  }

  v70 = v73;
  v71 = sub_1AC30915C();
  v101 = v71;

  v100 = sub_1AC3099DC();
  v99 = 2;
  v72 = type metadata accessor for AAFeatureCapability();
  sub_1AC212BF0();
  if (sub_1AC30B1BC())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BB88);
    v50 = MEMORY[0x1E69A2B08];
    v51 = sub_1AC205220();
    v52 = v5;
    sub_1AC205220();
    v54 = sub_1AC309D3C();
    v6 = v74;
    v53 = v26;
    v56 = 24;
    MEMORY[0x1EEE9AC00](v26);
    v25 = v7;
    v65 = sub_1AC309CDC();

    v94 = v74;
    sub_1AC30A9DC();
    sub_1AC30A8AC();
    v62 = 0;
    v55 = type metadata accessor for BatteryChargingViewController();
    v60 = sub_1AC215DE8(v84, v55);
    v61 = v8;
    (*(v83 + 8))(v84, v81);
    v90 = v62;
    v91 = v62;
    v92 = v62;
    v93 = v62;

    v58 = 7;
    v64 = swift_allocObject();
    v57 = v64 + 16;
    v9 = v74;
    swift_unknownObjectWeakInit();

    v10 = swift_allocObject();
    v11 = v71;
    v59 = v10;
    *(v10 + 16) = v64;
    *(v10 + 24) = v11;
    v12 = sub_1AC20599C();
    v63 = &v18;
    v25 = v62;
    v24 = v62;
    v23 = v59;
    v22[1] = sub_1AC263BD0;
    v22[0] = v71;
    v21 = sub_1AC263BC8;
    v20 = v62;
    v19 = v12 & 1;
    v18 = v62;
    sub_1AC309A9C();

    v66 = sub_1AC309D1C();
    (*(v87 + 8))(v88, v85);

    v67 = sub_1AC309D2C();

    v68 = v67;
    v69 = v75;
  }

  else
  {
    v13 = v79;
    v14 = sub_1AC250850();
    (*(v78 + 16))(v13, v14, v76);
    v48 = sub_1AC309E4C();
    v45 = v48;
    v47 = sub_1AC30AD2C();
    v46 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8);
    v49 = sub_1AC30B18C();
    if (os_log_type_enabled(v48, v47))
    {
      v15 = v75;
      v36 = sub_1AC30AE6C();
      v32 = v36;
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8);
      v34 = 0;
      v37 = sub_1AC213EE4(0);
      v35 = v37;
      v38 = sub_1AC213EE4(v34);
      v98 = v36;
      v97 = v37;
      v96 = v38;
      v39 = 0;
      v40 = &v98;
      sub_1AC213F38(0, &v98);
      sub_1AC213F38(v39, v40);
      v95 = v49;
      v41 = v26;
      MEMORY[0x1EEE9AC00](v26);
      v42 = v22;
      v23 = v16;
      v24 = &v97;
      v25 = &v96;
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BD08);
      sub_1AC218014();
      sub_1AC30AAAC();
      v44 = v15;
      if (v15)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1AC1C3000, v45, v46, "BatteryChargingFeature: Charging Reminder is not supported return empty", v32, 2u);
        v30 = 0;
        sub_1AC213F98(v35);
        sub_1AC213F98(v38);
        sub_1AC30AE4C();

        v31 = v44;
      }
    }

    else
    {

      v31 = v75;
    }

    v29 = v31;

    (*(v78 + 8))(v79, v76);
    v26[1] = 0;
    v26[2] = sub_1AC215CB0();
    v27 = sub_1AC30B18C();
    v28 = v27;

    v68 = v28;
    v69 = v29;
  }

  return v68;
}

uint64_t sub_1AC262C28(void *a1, void *a2)
{
  v49 = a2;
  v39 = a1;
  v34 = 0;
  v58 = 0;
  v57 = 0;
  v52 = 0;
  v51 = 0;
  v35 = sub_1AC30A90C();
  v36 = *(v35 - 8);
  v37 = v36;
  MEMORY[0x1EEE9AC00](0);
  v38 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1AC30A8EC();
  v41 = *(v40 - 8);
  v42 = v41;
  v44 = *(v41 + 64);
  v3 = MEMORY[0x1EEE9AC00](v39);
  v46 = (v44 + 15) & 0xFFFFFFFFFFFFFFF0;
  v43 = &v17 - v46;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v45 = &v17 - v46;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v47 = &v17 - v46;
  v58 = v5;
  v57 = v6;
  v56 = v6;
  v48 = 1;
  sub_1AC30A8DC();
  sub_1AC30A9DC();
  v50 = v7;
  sub_1AC30A8CC();
  v8 = v49;

  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x90))(&v53, v9);
  if (!v54)
  {
    sub_1AC30B05C();
    __break(1u);
  }

  v21 = v54;
  v18 = v55;
  v25 = &v53;
  __swift_project_boxed_opaque_existential_1(&v53, v54);
  v17 = *(v21 - 8);
  v19 = v17;
  v24 = &v17;
  MEMORY[0x1EEE9AC00](&v17);
  v20 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v20);
  v22 = (*(*(v18 + 8) + 24))(v21);
  v23 = v11;
  (*(v19 + 8))(v20, v21);
  sub_1AC30A8BC();

  __swift_destroy_boxed_opaque_existential_1(v25);
  sub_1AC30A9DC();
  v26 = v12;
  sub_1AC30A8CC();

  (*(v42 + 16))(v45, v47, v40);
  (*(v42 + 32))(v43, v45, v40);
  (*(v42 + 8))(v47, v40);
  sub_1AC30A8FC();
  v27 = type metadata accessor for BatteryChargingViewController();
  v28 = sub_1AC215DE8(v38, v27);
  v33 = v13;
  (*(v37 + 8))(v38, v35);
  v51 = v28;
  v52 = v33;

  v32 = sub_1AC30A91C();

  v30 = *MEMORY[0x1E69C5900];
  v14 = v30;
  sub_1AC30A92C();
  v29 = v15;
  v31 = sub_1AC30A91C();

  [v39 setProperty:v32 forKey:{v31, v17}];
  swift_unknownObjectRelease();
}

id sub_1AC263200()
{
  sub_1AC2068B8();
  sub_1AC30990C();
  type metadata accessor for AAMultiState();
  sub_1AC21B624();
  v0 = sub_1AC30B1BC();
  return sub_1AC244124(v0 & 1);
}

double sub_1AC2632A8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    swift_unknownObjectRetain();
    objc_opt_self();
    v1 = swift_dynamicCastObjCClassUnconditional();
    [v1 BOOLValue];
    MEMORY[0x1E69E5920](v1);
    sub_1AC30991C();
    *&result = MEMORY[0x1E69E5920](Strong).n128_u64[0];
  }

  return result;
}

uint64_t sub_1AC263400(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC19HeadphoneSettingsUI29BatteryChargingViewController____lazy_storage___chargingReminderSection);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t (*sub_1AC263480(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1AC262078();
  return sub_1AC2634DC;
}

uint64_t sub_1AC2634DC(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_1AC263400(*a1);
  }

  v3 = *a1;

  sub_1AC263400(v3);
  result = a1;
  sub_1AC209190();
  return result;
}

uint64_t sub_1AC263548()
{
  v4 = v0;
  v3 = (*((*v0 & *MEMORY[0x1E69E7D40]) + 0x78))();
  if (v3)
  {
    v2 = v3;
    MEMORY[0x1E69E5928](v3);
    sub_1AC206988(&v3);
    sub_1AC30915C();
    MEMORY[0x1E69E5920](v2);
    sub_1AC309A0C();
  }

  else
  {
    sub_1AC206988(&v3);
  }

  type metadata accessor for AAFeatureCapability();
  sub_1AC212BF0();
  return sub_1AC30B1BC() & 1;
}

uint64_t sub_1AC2636EC()
{
  v4 = (*((*v0 & *MEMORY[0x1E69E7D40]) + 0x78))();
  if (v4)
  {
    v3 = v4;
  }

  else
  {
    sub_1AC30B05C();
    __break(1u);
  }

  sub_1AC30915C();
  MEMORY[0x1E69E5920](v3);
  if (sub_1AC263548())
  {
    v2 = sub_1AC30992C();
  }

  else
  {
    v2 = sub_1AC309A3C();
  }

  return v2;
}

double sub_1AC263850()
{
  v17 = 0;
  v5 = 0;
  v10 = sub_1AC30A90C();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v4 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v9 = &v3 - v4;
  v17 = v0;
  MEMORY[0x1E69E5928](v0);
  v6 = type metadata accessor for BatteryChargingViewController();
  v16.receiver = v0;
  v16.super_class = v6;
  objc_msgSendSuper2(&v16, sel_viewDidLoad);
  MEMORY[0x1E69E5920](v14);
  MEMORY[0x1E69E5928](v14);
  v15 = v14;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v11 = sub_1AC215DE8(v9, v6);
  v12 = v1;
  (*(v7 + 8))(v9, v10);
  v13 = sub_1AC30A91C();

  [v14 setTitle_];
  MEMORY[0x1E69E5920](v13);
  *&result = MEMORY[0x1E69E5920](v14).n128_u64[0];
  return result;
}

id sub_1AC263A64()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BatteryChargingViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1AC263B38()
{
  v2 = qword_1EB54C510;
  if (!qword_1EB54C510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C508);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C510);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC263C48@<X0>(uint64_t (*a1)(void)@<X0>, _BYTE *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1AC263C90(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_1AC263D04();
  v5 = MEMORY[0x1E69E7230];

  return sub_1AC226230(a1, a2, a3, v9, v10, v5, v4);
}

unint64_t sub_1AC263D04()
{
  v2 = qword_1EB54C518;
  if (!qword_1EB54C518)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C518);
    return WitnessTable;
  }

  return v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t type metadata accessor for AAChargingFeatureEnablementState()
{
  v4 = qword_1EB54C528;
  if (!qword_1EB54C528)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB54C528);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_1AC263E78()
{
  v2 = qword_1EB54C520;
  if (!qword_1EB54C520)
  {
    type metadata accessor for AAChargingFeatureEnablementState();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C520);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC263F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = 0;
  v32 = a1;
  v31 = a2;
  v29 = a3;
  v30 = a4;
  v8 = [objc_opt_self() currentDevice];
  v9 = [v8 userInterfaceIdiom];
  MEMORY[0x1E69E5920](v8);
  v28 = v9;
  v27 = 6;
  type metadata accessor for UIUserInterfaceIdiom();
  sub_1AC2052F0();
  v10 = sub_1AC30B1BC();
  v26 = v10 & 1;
  v11 = sub_1AC3091BC();
  v12 = [v11 flags];
  MEMORY[0x1E69E5920](v11);
  v25 = v12;
  v24 = 8;
  type metadata accessor for CBProductFlags();
  sub_1AC2642A8();
  v14 = sub_1AC30B27C();
  MEMORY[0x1E69E5928](a1);
  if (v14)
  {
    v7 = 0;
  }

  else
  {
    v7 = sub_1AC3092FC();
  }

  MEMORY[0x1E69E5920](a1);
  if (v7)
  {
    v6 = v10 ^ 1;
  }

  else
  {
    v6 = 0;
  }

  v23 = v6 & 1;
  sub_1AC30929C();
  if (v17)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C538);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
    }
  }

  else
  {
    sub_1AC204664(v16);
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
  }

  v5 = v21 != 0;
  sub_1AC204664(&v18);
  LOBYTE(v15) = v5;
  HIBYTE(v15) = v6 & 1;
  return v15;
}

uint64_t type metadata accessor for CBProductFlags()
{
  v4 = qword_1EB54C558;
  if (!qword_1EB54C558)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB54C558);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_1AC2642A8()
{
  v2 = qword_1EB54C530;
  if (!qword_1EB54C530)
  {
    type metadata accessor for CBProductFlags();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C530);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC264328(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v59 = a4;
  v58 = a3;
  v60 = a2;
  v53 = a1;
  v67 = 0;
  v99 = 0;
  v98 = 0;
  v97 = 0;
  v96 = 0;
  v95 = 0;
  v94 = 0;
  v91 = 0;
  v90 = 0;
  v54 = sub_1AC30A90C();
  v55 = *(v54 - 8);
  v56 = v55;
  MEMORY[0x1EEE9AC00](0);
  v57 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1AC309AAC();
  v62 = *(v61 - 8);
  v63 = v62;
  MEMORY[0x1EEE9AC00](v61 - 8);
  v64 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = a1;
  v98 = v7;
  v96 = v8;
  v97 = v9;
  v73 = sub_1AC2C85A0();
  v74 = v10;
  v65 = v73;
  v66 = v10;
  v94 = v73;
  v95 = v10;
  v71 = [objc_opt_self() sharedInstance];
  v69 = [v71 pairedAirPods];
  v68 = v69;
  v70 = sub_1AC257A90();
  v72 = sub_1AC30AB0C();

  v92 = v72;

  v76 = v73;
  v77 = v74;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C540);
  sub_1AC264B88();
  sub_1AC30AA6C();

  sub_1AC209190();

  v52 = v93;
  v51 = v93;
  v91 = v93;
  v11 = v93;
  if (v52)
  {
    v50 = v51;
    v49 = v51;
    v90 = v51;
    sub_1AC30929C();
    if (v83)
    {
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C538);
      if (!swift_dynamicCast())
      {
        v84 = 0;
        v85 = 0;
        v86 = 0;
        v87 = 0;
        v88 = 0;
      }
    }

    else
    {
      sub_1AC204664(v82);
      v84 = 0;
      v85 = 0;
      v86 = 0;
      v87 = 0;
      v88 = 0;
    }

    if (v87)
    {
      v45 = __dst;
      sub_1AC2051E4(&v84, __dst);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BB88);
      v33 = MEMORY[0x1E69A2B08];
      v34 = sub_1AC205220();
      v35 = v12;
      sub_1AC205220();
      v41 = sub_1AC309D3C();
      v80 = v58;
      v81 = v59;
      sub_1AC30A9DC();
      sub_1AC30A8AC();
      v37 = sub_1AC215DE8(v57, &unk_1F20F4EE8);
      v38 = v13;
      (*(v56 + 8))(v57, v54);
      v14 = v60;
      v39 = 0;
      v79 = type metadata accessor for HeadphoneSettingsController();
      v78 = v60;
      v36 = sub_1AC264C10();
      v15 = sub_1AC20599C();
      v40 = &v19;
      v27 = v39;
      v26 = v39;
      v25 = v39;
      v24 = v39;
      v23 = v39;
      v22 = v39;
      v21 = v36;
      v20 = v15 & 1;
      v19 = v39;
      sub_1AC309A9C();
      v43 = sub_1AC309D1C();
      (*(v63 + 8))(v64, v61);

      v16 = v49;
      v42 = v28;
      MEMORY[0x1EEE9AC00](v28);
      v25 = v65;
      v26 = v66;
      v27 = v17;
      v44 = sub_1AC309D0C();

      v46 = sub_1AC309D2C();

      __swift_destroy_boxed_opaque_existential_1(v45);

      return v46;
    }

    else
    {
      sub_1AC204664(&v84);
      v30 = 0;
      v31 = sub_1AC215CB0();
      v32 = sub_1AC30B18C();

      return v32;
    }
  }

  else
  {
    v28[1] = 0;
    v28[2] = sub_1AC215CB0();
    v29 = sub_1AC30B18C();

    return v29;
  }
}

uint64_t sub_1AC2649F8(id *a1, uint64_t a2, uint64_t a3)
{
  v13 = [*a1 address];
  if (v13)
  {
    v7 = sub_1AC30A92C();
    v8 = v4;
    v3 = MEMORY[0x1E69E5920](v13);
    v9 = v7;
    v10 = v8;
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  if (v10)
  {
    v14 = v9;
  }

  else
  {
    v14 = sub_1AC30A9DC();
  }

  v6 = MEMORY[0x1AC5B0060](a2, a3, v14, v3);

  return v6 & 1;
}

unint64_t sub_1AC264B88()
{
  v2 = qword_1EB54C548;
  if (!qword_1EB54C548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C540);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C548);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC264C10()
{
  v2 = qword_1EB54C550;
  if (!qword_1EB54C550)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB54C550);
    return ObjCClassMetadata;
  }

  return v2;
}

double sub_1AC264C74(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = [objc_opt_self() sharedInstance];
  if (v14)
  {
    v11 = v14;
  }

  else
  {
    sub_1AC30B05C();
    __break(1u);
  }

  v9 = sub_1AC30A91C();

  v10 = [v11 deviceFromAddressString_];
  MEMORY[0x1E69E5920](v9);
  *&result = MEMORY[0x1E69E5920](v11).n128_u64[0];
  if (v10)
  {
    sub_1AC257A90();
    sub_1AC30B18C();
    v6 = v5;
    MEMORY[0x1E69E5928](a4);
    *v6 = a4;
    sub_1AC206300();
    v8 = sub_1AC30AAFC();

    sub_1AC30A9DC();
    v7 = sub_1AC30A91C();

    [a1 setProperty:v8 forKey:v7];
    MEMORY[0x1E69E5920](v7);
    swift_unknownObjectRelease();
    *&result = MEMORY[0x1E69E5920](v10).n128_u64[0];
  }

  return result;
}

uint64_t sub_1AC264F00()
{
  v1 = sub_1AC30A9DC();

  sub_1AC2063F0();
  return v1;
}

uint64_t sub_1AC264FEC@<X0>(unsigned int *a1@<X0>, _DWORD *a2@<X8>)
{
  result = nullsub_1(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AC26501C()
{
  sub_1AC2642A8();
  sub_1AC2656B4();
  return sub_1AC30B2EC();
}

uint64_t sub_1AC265220()
{
  sub_1AC2642A8();
  sub_1AC2656B4();
  return sub_1AC30B2DC();
}

uint64_t sub_1AC265264()
{
  sub_1AC2642A8();
  sub_1AC2656B4();
  return sub_1AC30B2BC();
}

uint64_t sub_1AC2652A8()
{
  sub_1AC2642A8();
  sub_1AC2656B4();
  return sub_1AC30B2CC();
}

unint64_t sub_1AC26546C()
{
  v2 = qword_1EB54C560;
  if (!qword_1EB54C560)
  {
    type metadata accessor for CBProductFlags();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C560);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC265504()
{
  v2 = qword_1EB54C568;
  if (!qword_1EB54C568)
  {
    type metadata accessor for CBProductFlags();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C568);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC26559C()
{
  v2 = qword_1EB54C570;
  if (!qword_1EB54C570)
  {
    type metadata accessor for CBProductFlags();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C570);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC265634()
{
  v2 = qword_1EB54C578;
  if (!qword_1EB54C578)
  {
    type metadata accessor for CBProductFlags();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C578);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2656B4()
{
  v2 = qword_1EB54C580;
  if (!qword_1EB54C580)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C580);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC26572C(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
  }

  return 3;
}

uint64_t sub_1AC2657C8(char a1)
{
  if (!a1)
  {
    return 0;
  }

  if (a1 == 1)
  {
    return 1;
  }

  return 2;
}

unint64_t sub_1AC265878()
{
  v2 = qword_1EB54C588;
  if (!qword_1EB54C588)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C588);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC2659C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AC26572C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AC2659F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AC2657C8(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1AC265AAC(int a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v115 = a3;
  v116 = a4;
  v117 = a5;
  v118 = a6;
  v119 = a1;
  v120 = a2;
  v106 = "Fatal error";
  v107 = "Unexpectedly found nil while unwrapping an Optional value";
  v108 = "HeadphoneSettingsUI/BobbleVideoLoopPlayer.swift";
  v154 = 0;
  v153 = 0;
  v151 = 0u;
  v152 = 0u;
  v150 = 0;
  v149 = 0;
  v145 = 0;
  v146 = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCA0);
  v109 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v110 = &v53 - v109;
  v111 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v53 - v109);
  v112 = &v53 - v111;
  v113 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v53 - v111);
  v114 = &v53 - v113;
  v121 = 0;
  v122 = sub_1AC30901C();
  v123 = *(v122 - 8);
  v124 = v122 - 8;
  v126 = *(v123 + 64);
  v125 = (v126 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = (MEMORY[0x1EEE9AC00])(v121);
  v127 = &v53 - v125;
  v128 = (v126 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v129 = &v53 - v128;
  v154 = &v53 - v128;
  *&v151 = v11;
  *(&v151 + 1) = v12;
  *&v152 = v13;
  *(&v152 + 1) = v14;
  v150 = v15;
  v149 = v16;
  v153 = v6;
  v132 = &v148;
  v148 = v16;
  v130 = &v147;
  v147 = 1;
  v131 = type metadata accessor for UIUserInterfaceStyle();
  sub_1AC218134();
  sub_1AC30B1BC();
  v104 = sub_1AC30A9DC();
  v105 = v17;
  v102 = v17;
  v103 = v104;
  v145 = v104;
  v146 = v17;
  if (v119)
  {
    if (v119 == 1)
    {
      v74 = 0;
      sub_1AC20BE24();
      swift_getObjectType();
      v84 = sub_1AC20BE88();
      v72 = 11;
      v28 = sub_1AC30B17C();
      v76 = &v139;
      v139 = v28;
      v140 = v29;
      v80 = 1;
      v30 = sub_1AC30A9DC();
      v73 = v31;
      MEMORY[0x1AC5B07E0](v30);

      v137 = v103;
      v138 = v102;
      sub_1AC30B15C();
      v32 = sub_1AC30A9DC();
      v75 = v33;
      MEMORY[0x1AC5B07E0](v32);

      v78 = v139;
      v77 = v140;

      sub_1AC2063F0();
      sub_1AC30A9BC();
      v79 = v34;
      v83 = sub_1AC30A91C();

      sub_1AC30A9DC();
      v81 = v35;
      v82 = sub_1AC30A91C();

      v85 = [v84 URLForResource:v83 withExtension:v82];
      MEMORY[0x1E69E5920](v82);
      MEMORY[0x1E69E5920](v83);
      v36 = MEMORY[0x1E69E5920](v84);
      if (v85)
      {
        v71 = v85;
        v70 = v85;
        sub_1AC308FFC();
        (*(v123 + 32))(v112, v127, v122);
        (*(v123 + 56))(v112, 0, 1, v122);
        v37 = MEMORY[0x1E69E5920](v70);
      }

      else
      {
        (*(v123 + 56))(v112, 1, 1, v122, v36);
      }

      if ((*(v123 + 48))(v112, 1, v122, v37) == 1)
      {
        sub_1AC30B05C();
        __break(1u);
      }

      (*(v123 + 32))(v129, v112, v122);
    }

    else
    {
      v58 = 0;
      sub_1AC20BE24();
      swift_getObjectType();
      v68 = sub_1AC20BE88();
      v56 = 13;
      v38 = sub_1AC30B17C();
      v60 = &v143;
      v143 = v38;
      v144 = v39;
      v64 = 1;
      v40 = sub_1AC30A9DC();
      v57 = v41;
      MEMORY[0x1AC5B07E0](v40);

      v141 = v103;
      v142 = v102;
      sub_1AC30B15C();
      v42 = sub_1AC30A9DC();
      v59 = v43;
      MEMORY[0x1AC5B07E0](v42);

      v62 = v143;
      v61 = v144;

      sub_1AC2063F0();
      sub_1AC30A9BC();
      v63 = v44;
      v67 = sub_1AC30A91C();

      sub_1AC30A9DC();
      v65 = v45;
      v66 = sub_1AC30A91C();

      v69 = [v68 URLForResource:v67 withExtension:v66];
      MEMORY[0x1E69E5920](v66);
      MEMORY[0x1E69E5920](v67);
      v46 = MEMORY[0x1E69E5920](v68);
      if (v69)
      {
        v55 = v69;
        v54 = v69;
        sub_1AC308FFC();
        (*(v123 + 32))(v110, v127, v122);
        (*(v123 + 56))(v110, 0, 1, v122);
        v47 = MEMORY[0x1E69E5920](v54);
      }

      else
      {
        (*(v123 + 56))(v110, 1, 1, v122, v46);
      }

      if ((*(v123 + 48))(v110, 1, v122, v47) == 1)
      {
        sub_1AC30B05C();
        __break(1u);
      }

      (*(v123 + 32))(v129, v110, v122);
    }
  }

  else
  {
    v90 = 0;
    sub_1AC20BE24();
    swift_getObjectType();
    v100 = sub_1AC20BE88();
    v88 = 16;
    v18 = sub_1AC30B17C();
    v92 = &v135;
    v135 = v18;
    v136 = v19;
    v96 = 1;
    v20 = sub_1AC30A9DC();
    v89 = v21;
    MEMORY[0x1AC5B07E0](v20);

    v133 = v103;
    v134 = v102;
    sub_1AC30B15C();
    v22 = sub_1AC30A9DC();
    v91 = v23;
    MEMORY[0x1AC5B07E0](v22);

    v94 = v135;
    v93 = v136;

    sub_1AC2063F0();
    sub_1AC30A9BC();
    v95 = v24;
    v99 = sub_1AC30A91C();

    sub_1AC30A9DC();
    v97 = v25;
    v98 = sub_1AC30A91C();

    v101 = [v100 URLForResource:v99 withExtension:v98];
    MEMORY[0x1E69E5920](v98);
    MEMORY[0x1E69E5920](v99);
    v26 = MEMORY[0x1E69E5920](v100);
    if (v101)
    {
      v87 = v101;
      v86 = v101;
      sub_1AC308FFC();
      (*(v123 + 32))(v114, v127, v122);
      (*(v123 + 56))(v114, 0, 1, v122);
      v27 = MEMORY[0x1E69E5920](v86);
    }

    else
    {
      (*(v123 + 56))(v114, 1, 1, v122, v26);
    }

    if ((*(v123 + 48))(v114, 1, v122, v27) == 1)
    {
      sub_1AC30B05C();
      __break(1u);
    }

    (*(v123 + 32))(v129, v114, v122);
  }

  v48 = v122;
  v49 = v129;
  v50 = v123;
  v51 = v127;
  *(v153 + qword_1EB54C590) = v119;
  (*(v50 + 16))(v51, v49, v48);
  v53 = sub_1AC309BEC();
  MEMORY[0x1E69E5928](v53);
  v153 = v53;

  (*(v123 + 8))(v129, v122);
  MEMORY[0x1E69E5920](v153);
  return v53;
}