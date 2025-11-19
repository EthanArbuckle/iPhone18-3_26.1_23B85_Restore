uint64_t sub_1AC286FC4(uint64_t a1)
{
  sub_1AC30A9DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C810);
  sub_1AC30B18C();
  v4 = v1;
  MEMORY[0x1E69E5928](a1);
  v4[3] = sub_1AC3095DC();
  v4[4] = sub_1AC28C174();
  *v4 = a1;
  sub_1AC206300();
  v5 = sub_1AC30A94C();

  return v5;
}

uint64_t sub_1AC2870AC()
{
  sub_1AC30915C();
  v2 = sub_1AC30987C();

  if (v2)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AC287128(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v35 = a1;
  v49 = 0;
  v48 = 0;
  v34 = 0;
  v47 = 0;
  v33 = 0;
  v37 = sub_1AC309E6C();
  v38 = *(v37 - 8);
  v39 = v38;
  MEMORY[0x1EEE9AC00](v35);
  v40 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = v3[1];
  LOBYTE(v2) = v3[2];
  LOBYTE(v48) = *v3;
  HIBYTE(v48) = v4;
  v49 = v2;
  v41 = v5 + 16;
  v47 = v5 + 16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v32 = Strong;
    v6 = Strong;
    sub_1AC206988(&Strong);
    swift_endAccess();
    [v32 reloadSpecifiers];
  }

  else
  {
    sub_1AC206988(&Strong);
    swift_endAccess();
  }

  v7 = v40;
  v8 = sub_1AC274D88();
  (*(v39 + 16))(v7, v8, v37);
  v30 = sub_1AC309E4C();
  v27 = v30;
  v29 = sub_1AC30AD2C();
  v28 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8);
  v31 = sub_1AC30B18C();
  if (os_log_type_enabled(v30, v29))
  {
    v9 = v33;
    v18 = sub_1AC30AE6C();
    v14 = v18;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8);
    v16 = 0;
    v19 = sub_1AC213EE4(0);
    v17 = v19;
    v20 = sub_1AC213EE4(v16);
    v45 = v18;
    v44 = v19;
    v43 = v20;
    v21 = 0;
    v22 = &v45;
    sub_1AC213F38(0, &v45);
    sub_1AC213F38(v21, v22);
    v42 = v31;
    v23 = &v12;
    MEMORY[0x1EEE9AC00](&v12);
    v24 = &v12 - 6;
    *(&v12 - 4) = v10;
    *(&v12 - 3) = &v44;
    *(&v12 - 2) = &v43;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BD08);
    sub_1AC218014();
    sub_1AC30AAAC();
    v26 = v9;
    if (v9)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1AC1C3000, v27, v28, "Bobble: reload for value change", v14, 2u);
      v12 = 0;
      sub_1AC213F98(v17);
      sub_1AC213F98(v20);
      sub_1AC30AE4C();

      v13 = v26;
    }
  }

  else
  {

    v13 = v33;
  }

  return (*(v39 + 8))(v40, v37);
}

id sub_1AC28766C(char a1)
{
  v8 = a1 & 1;
  v7 = v1;
  MEMORY[0x1E69E5928](v1);
  v6.receiver = v1;
  v6.super_class = type metadata accessor for BobbleSettingsViewController();
  objc_msgSendSuper2(&v6, sel_viewWillAppear_, a1 & 1);
  MEMORY[0x1E69E5920](v1);
  sub_1AC28B754();
  v4 = sub_1AC28AE9C();
  sub_1AC309BDC();
  return [v5 reloadSpecifiers];
}

uint64_t sub_1AC28779C()
{
  v74 = sub_1AC28C0A4;
  v76 = sub_1AC215C98;
  v79 = sub_1AC28C0AC;
  v82 = sub_1AC28C0B4;
  v86 = sub_1AC263C84;
  v88 = sub_1AC215C90;
  v90 = sub_1AC215C90;
  v92 = sub_1AC215CA4;
  v94 = sub_1AC215C90;
  v96 = sub_1AC215C90;
  v98 = sub_1AC2482A8;
  v100 = sub_1AC215C90;
  v102 = sub_1AC215C90;
  v105 = sub_1AC263C90;
  v63 = "Fatal error";
  v64 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v65 = "HeadphoneSettingsUI/BobbleSettingsController.swift";
  v118 = 0;
  v66 = 0;
  v71 = sub_1AC309E6C();
  v69 = *(v71 - 8);
  v70 = v71 - 8;
  v67 = (*(v69 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v71);
  v0 = v38 - v67;
  v68 = v38 - v67;
  v118 = v1;
  v2 = sub_1AC274D88();
  (*(v69 + 16))(v0, v2, v71);
  MEMORY[0x1E69E5928](v73);
  v72 = 24;
  v84 = 7;
  v3 = swift_allocObject();
  v4 = v73;
  v75 = v3;
  *(v3 + 16) = v73;
  MEMORY[0x1E69E5928](v4);
  v80 = swift_allocObject();
  *(v80 + 16) = v73;
  sub_1AC20BEE0();

  MEMORY[0x1E69E5928](v73);
  v85 = swift_allocObject();
  *(v85 + 16) = v73;
  v109 = sub_1AC309E4C();
  v110 = sub_1AC30AD2C();
  v81 = 17;
  v89 = swift_allocObject();
  *(v89 + 16) = 32;
  v91 = swift_allocObject();
  v78 = 8;
  *(v91 + 16) = 8;
  v83 = 32;
  v5 = swift_allocObject();
  v6 = v75;
  v77 = v5;
  *(v5 + 16) = v74;
  *(v5 + 24) = v6;
  v7 = swift_allocObject();
  v8 = v77;
  v93 = v7;
  *(v7 + 16) = v76;
  *(v7 + 24) = v8;
  v95 = swift_allocObject();
  *(v95 + 16) = 64;
  v97 = swift_allocObject();
  *(v97 + 16) = v78;
  v9 = swift_allocObject();
  v10 = v80;
  v99 = v9;
  *(v9 + 16) = v79;
  *(v9 + 24) = v10;
  v101 = swift_allocObject();
  *(v101 + 16) = 0;
  v103 = swift_allocObject();
  *(v103 + 16) = 1;
  v11 = swift_allocObject();
  v12 = v85;
  v87 = v11;
  *(v11 + 16) = v82;
  *(v11 + 24) = v12;
  v13 = swift_allocObject();
  v14 = v87;
  v106 = v13;
  *(v13 + 16) = v86;
  *(v13 + 24) = v14;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8);
  v104 = sub_1AC30B18C();
  v107 = v15;

  v16 = v89;
  v17 = v107;
  *v107 = v88;
  v17[1] = v16;

  v18 = v91;
  v19 = v107;
  v107[2] = v90;
  v19[3] = v18;

  v20 = v93;
  v21 = v107;
  v107[4] = v92;
  v21[5] = v20;

  v22 = v95;
  v23 = v107;
  v107[6] = v94;
  v23[7] = v22;

  v24 = v97;
  v25 = v107;
  v107[8] = v96;
  v25[9] = v24;

  v26 = v99;
  v27 = v107;
  v107[10] = v98;
  v27[11] = v26;

  v28 = v101;
  v29 = v107;
  v107[12] = v100;
  v29[13] = v28;

  v30 = v103;
  v31 = v107;
  v107[14] = v102;
  v31[15] = v30;

  v32 = v106;
  v33 = v107;
  v107[16] = v105;
  v33[17] = v32;
  sub_1AC206300();

  if (os_log_type_enabled(v109, v110))
  {
    v34 = v66;
    v56 = sub_1AC30AE6C();
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8);
    v55 = 1;
    v57 = sub_1AC213EE4(1);
    v58 = sub_1AC213EE4(v55);
    v59 = &v115;
    v115 = v56;
    v60 = &v114;
    v114 = v57;
    v61 = &v113;
    v113 = v58;
    sub_1AC213F38(2, &v115);
    sub_1AC213F38(3, v59);
    v111 = v88;
    v112 = v89;
    sub_1AC213F4C(&v111, v59, v60, v61);
    v62 = v34;
    if (v34)
    {

      __break(1u);
    }

    else
    {
      v111 = v90;
      v112 = v91;
      sub_1AC213F4C(&v111, &v115, &v114, &v113);
      v53 = 0;
      v111 = v92;
      v112 = v93;
      sub_1AC213F4C(&v111, &v115, &v114, &v113);
      v52 = 0;
      v111 = v94;
      v112 = v95;
      sub_1AC213F4C(&v111, &v115, &v114, &v113);
      v51 = 0;
      v111 = v96;
      v112 = v97;
      sub_1AC213F4C(&v111, &v115, &v114, &v113);
      v50 = 0;
      v111 = v98;
      v112 = v99;
      sub_1AC213F4C(&v111, &v115, &v114, &v113);
      v49 = 0;
      v111 = v100;
      v112 = v101;
      sub_1AC213F4C(&v111, &v115, &v114, &v113);
      v48 = 0;
      v111 = v102;
      v112 = v103;
      sub_1AC213F4C(&v111, &v115, &v114, &v113);
      v47 = 0;
      v111 = v105;
      v112 = v106;
      sub_1AC213F4C(&v111, &v115, &v114, &v113);
      _os_log_impl(&dword_1AC1C3000, v109, v110, "Bobble: headGesturesEnabled, HeadphoneDevice:%s aad: %@ %hhd", v56, 0x19u);
      v46 = 1;
      sub_1AC213F98(v57);
      sub_1AC213F98(v58);
      sub_1AC30AE4C();
    }
  }

  else
  {
  }

  v35 = v73;
  v36 = MEMORY[0x1E69E5920](v109);
  (*(v69 + 8))(v68, v71, v36);
  v44 = sub_1AC2068B8();
  v45 = (*((*v35 & *MEMORY[0x1E69E7D40]) + 0x98))();
  if (v45)
  {
    v43 = v45;
  }

  else
  {
    sub_1AC30B05C();
    __break(1u);
  }

  v38[0] = v43;
  v38[1] = sub_1AC30915C();
  MEMORY[0x1E69E5920](v38[0]);
  v39 = sub_1AC30988C();

  v42 = &v117;
  v117 = v39;
  v40 = &v116;
  v116 = 1;
  v41 = type metadata accessor for AAMultiState();
  sub_1AC21B624();
  sub_1AC30B1BC();
  return sub_1AC30ADEC();
}

uint64_t sub_1AC2885AC(void *a1)
{
  sub_1AC30A9DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C810);
  sub_1AC30B18C();
  v6 = v2;
  v7 = (*((*a1 & *MEMORY[0x1E69E7D40]) + 0x98))();
  if (v7)
  {
    v5 = v7;
  }

  else
  {
    sub_1AC30B05C();
    __break(1u);
  }

  v6[3] = sub_1AC3095DC();
  v6[4] = sub_1AC28C174();
  *v6 = v5;
  sub_1AC206300();
  v4 = sub_1AC30A94C();

  return v4;
}

uint64_t sub_1AC288750(void *a1)
{
  v5 = (*((*a1 & *MEMORY[0x1E69E7D40]) + 0x98))();
  if (v5)
  {
    v4 = v5;
  }

  else
  {
    sub_1AC30B05C();
    __break(1u);
  }

  sub_1AC30915C();
  MEMORY[0x1E69E5920](v4);
  v3 = sub_1AC30987C();

  if (v3)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AC2888A4(void *a1)
{
  v4 = (*((*a1 & *MEMORY[0x1E69E7D40]) + 0x98))();
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
  v2 = sub_1AC30988C();

  return sub_1AC20BC98(v2);
}

uint64_t sub_1AC288A38(void *a1)
{
  v8 = sub_1AC282EC8();
  if (v8)
  {
    v6 = v8;
  }

  else
  {
    LOBYTE(v2) = 2;
    v3 = 201;
    LODWORD(v4) = 0;
    sub_1AC30B05C();
    __break(1u);
  }

  if ([a1 BOOLValue] == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  (*(*v6 + 144))(v5);
}

uint64_t sub_1AC288BF4()
{
  sub_1AC30A9DC();
  v1 = sub_1AC274FA8();

  return v1;
}

uint64_t sub_1AC288D04(uint64_t a1)
{
  v154 = a1;
  v175 = 0;
  v174 = 0;
  v153 = 0;
  v169 = 0;
  v155 = sub_1AC309E6C();
  v156 = *(v155 - 8);
  v157 = v156;
  v158 = *(v156 + 64);
  MEMORY[0x1EEE9AC00](v154);
  v160 = (v158 + 15) & 0xFFFFFFFFFFFFFFF0;
  v159 = &v53 - v160;
  MEMORY[0x1EEE9AC00](v2);
  v161 = &v53 - v160;
  v175 = v3;
  v174 = v1;
  if (sub_1AC28A078())
  {
    v151 = 1;
    v152 = v153;
  }

  else
  {
    swift_unknownObjectRetain();
    v149 = sub_1AC3095DC();
    v150 = swift_dynamicCastClass();
    if (v150)
    {
      v148 = v150;
    }

    else
    {
      swift_unknownObjectRelease();
      v148 = 0;
    }

    v147 = v148;
    if (v148)
    {
      v146 = v147;
      v4 = v161;
      v109 = v147;
      v169 = v147;
      v5 = sub_1AC274D88();
      (*(v157 + 16))(v4, v5, v155);
      v6 = v109;
      v108 = 24;
      v128 = 7;
      v7 = swift_allocObject();
      v8 = v109;
      v114 = v7;
      *(v7 + 16) = v109;
      v9 = v8;
      v10 = swift_allocObject();
      v11 = v109;
      v121 = v10;
      *(v10 + 16) = v109;
      v12 = v11;
      v129 = swift_allocObject();
      *(v129 + 16) = v109;
      v145 = sub_1AC309E4C();
      v110 = v145;
      v144 = sub_1AC30AD2C();
      v111 = v144;
      v124 = 17;
      v132 = swift_allocObject();
      v112 = v132;
      v117 = 32;
      *(v132 + 16) = 32;
      v13 = swift_allocObject();
      v14 = v117;
      v133 = v13;
      v113 = v13;
      v119 = 8;
      *(v13 + 16) = 8;
      v127 = v14;
      v15 = swift_allocObject();
      v16 = v114;
      v115 = v15;
      *(v15 + 16) = sub_1AC28BE6C;
      *(v15 + 24) = v16;
      v17 = swift_allocObject();
      v18 = v115;
      v134 = v17;
      v116 = v17;
      *(v17 + 16) = sub_1AC215C98;
      *(v17 + 24) = v18;
      v135 = swift_allocObject();
      v118 = v135;
      *(v135 + 16) = v117;
      v136 = swift_allocObject();
      v120 = v136;
      *(v136 + 16) = v119;
      v19 = swift_allocObject();
      v20 = v121;
      v122 = v19;
      *(v19 + 16) = sub_1AC28C0BC;
      *(v19 + 24) = v20;
      v21 = swift_allocObject();
      v22 = v122;
      v137 = v21;
      v123 = v21;
      *(v21 + 16) = sub_1AC215C98;
      *(v21 + 24) = v22;
      v138 = swift_allocObject();
      v125 = v138;
      *(v138 + 16) = 0;
      v139 = swift_allocObject();
      v126 = v139;
      *(v139 + 16) = 1;
      v23 = swift_allocObject();
      v24 = v129;
      v130 = v23;
      *(v23 + 16) = sub_1AC28C0C4;
      *(v23 + 24) = v24;
      v25 = swift_allocObject();
      v26 = v130;
      v142 = v25;
      v131 = v25;
      *(v25 + 16) = sub_1AC270F58;
      *(v25 + 24) = v26;
      v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8);
      v140 = sub_1AC30B18C();
      v141 = v27;

      v28 = v132;
      v29 = v141;
      *v141 = sub_1AC215C90;
      v29[1] = v28;

      v30 = v133;
      v31 = v141;
      v141[2] = sub_1AC215C90;
      v31[3] = v30;

      v32 = v134;
      v33 = v141;
      v141[4] = sub_1AC215CA4;
      v33[5] = v32;

      v34 = v135;
      v35 = v141;
      v141[6] = sub_1AC215C90;
      v35[7] = v34;

      v36 = v136;
      v37 = v141;
      v141[8] = sub_1AC215C90;
      v37[9] = v36;

      v38 = v137;
      v39 = v141;
      v141[10] = sub_1AC215CA4;
      v39[11] = v38;

      v40 = v138;
      v41 = v141;
      v141[12] = sub_1AC215C90;
      v41[13] = v40;

      v42 = v139;
      v43 = v141;
      v141[14] = sub_1AC215C90;
      v43[15] = v42;

      v44 = v141;
      v45 = v142;
      v141[16] = sub_1AC270F64;
      v44[17] = v45;
      sub_1AC206300();

      if (os_log_type_enabled(v145, v144))
      {
        v46 = v153;
        v101 = sub_1AC30AE6C();
        v98 = v101;
        v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8);
        v102 = sub_1AC213EE4(0);
        v100 = v102;
        v103 = 2;
        v104 = sub_1AC213EE4(2);
        v166 = v101;
        v165 = v102;
        v164 = v104;
        v105 = &v166;
        sub_1AC213F38(v103, &v166);
        sub_1AC213F38(3, v105);
        v162 = sub_1AC215C90;
        v163 = v112;
        sub_1AC213F4C(&v162, v105, &v165, &v164);
        v106 = v46;
        v107 = v46;
        if (v46)
        {
          v96 = 0;

          __break(1u);
        }

        else
        {
          v162 = sub_1AC215C90;
          v163 = v113;
          sub_1AC213F4C(&v162, &v166, &v165, &v164);
          v94 = 0;
          v95 = 0;
          v162 = sub_1AC215CA4;
          v163 = v116;
          sub_1AC213F4C(&v162, &v166, &v165, &v164);
          v92 = 0;
          v93 = 0;
          v162 = sub_1AC215C90;
          v163 = v118;
          sub_1AC213F4C(&v162, &v166, &v165, &v164);
          v90 = 0;
          v91 = 0;
          v162 = sub_1AC215C90;
          v163 = v120;
          sub_1AC213F4C(&v162, &v166, &v165, &v164);
          v88 = 0;
          v89 = 0;
          v162 = sub_1AC215CA4;
          v163 = v123;
          sub_1AC213F4C(&v162, &v166, &v165, &v164);
          v86 = 0;
          v87 = 0;
          v162 = sub_1AC215C90;
          v163 = v125;
          sub_1AC213F4C(&v162, &v166, &v165, &v164);
          v84 = 0;
          v85 = 0;
          v162 = sub_1AC215C90;
          v163 = v126;
          sub_1AC213F4C(&v162, &v166, &v165, &v164);
          v82 = 0;
          v83 = 0;
          v162 = sub_1AC270F64;
          v163 = v131;
          sub_1AC213F4C(&v162, &v166, &v165, &v164);
          v80 = 0;
          v81 = 0;
          _os_log_impl(&dword_1AC1C3000, v110, v111, "Bobble: headGesturesEnabled, HeadphoneDevice:%s aad: %s %hhu", v98, 0x19u);
          sub_1AC213F98(v100);
          sub_1AC213F98(v104);
          sub_1AC30AE4C();

          v97 = v80;
        }
      }

      else
      {
        v47 = v153;

        v97 = v47;
      }

      v79 = v97;

      (*(v157 + 8))(v161, v155);
      v75 = sub_1AC30915C();
      v76 = sub_1AC30986C();

      v168 = v76;
      v167 = 2;
      v77 = type metadata accessor for AAFeatureCapability();
      sub_1AC212BF0();
      v78 = sub_1AC30B1BC();

      v151 = v78;
      v152 = v79;
    }

    else
    {
      v48 = v159;
      v49 = sub_1AC274D88();
      (*(v157 + 16))(v48, v49, v155);
      v73 = sub_1AC309E4C();
      v70 = v73;
      v72 = sub_1AC30AD2C();
      v71 = v72;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8);
      v74 = sub_1AC30B18C();
      if (os_log_type_enabled(v73, v72))
      {
        v50 = v153;
        v61 = sub_1AC30AE6C();
        v57 = v61;
        v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8);
        v59 = 0;
        v62 = sub_1AC213EE4(0);
        v60 = v62;
        v63 = sub_1AC213EE4(v59);
        v173 = v61;
        v172 = v62;
        v171 = v63;
        v64 = 0;
        v65 = &v173;
        sub_1AC213F38(0, &v173);
        sub_1AC213F38(v64, v65);
        v170 = v74;
        v66 = &v53;
        MEMORY[0x1EEE9AC00](&v53);
        v67 = &v53 - 6;
        *(&v53 - 4) = v51;
        *(&v53 - 3) = &v172;
        *(&v53 - 2) = &v171;
        v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BD08);
        sub_1AC218014();
        sub_1AC30AAAC();
        v69 = v50;
        if (v50)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_1AC1C3000, v70, v71, "Bobble not supported!", v57, 2u);
          v55 = 0;
          sub_1AC213F98(v60);
          sub_1AC213F98(v63);
          sub_1AC30AE4C();

          v56 = v69;
        }
      }

      else
      {

        v56 = v153;
      }

      v54 = v56;

      (*(v157 + 8))(v159, v155);
      v151 = 0;
      v152 = v54;
    }
  }

  return v151 & 1;
}

BOOL sub_1AC28A078()
{
  sub_1AC30A9DC();
  v1 = sub_1AC30A91C();
  CFPreferencesAppSynchronize(v1);
  MEMORY[0x1E69E5920](v1);

  sub_1AC30A9DC();
  v3 = sub_1AC30A91C();
  sub_1AC30A9DC();
  v2 = sub_1AC30A91C();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v3, v2, 0);
  MEMORY[0x1E69E5920](v2);

  MEMORY[0x1E69E5920](v3);

  return AppBooleanValue != 0;
}

uint64_t sub_1AC28A18C()
{
  v2 = sub_1AC30916C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C808);
  v1 = sub_1AC30AE7C();
  MEMORY[0x1E69E5920](v2);
  return v1;
}

uint64_t sub_1AC28A200()
{
  sub_1AC30915C();
  v1 = sub_1AC30986C();

  return sub_1AC20BC98(v1);
}

uint64_t sub_1AC28A2BC(uint64_t a1)
{
  v27 = a1;
  v26 = sub_1AC28C0CC;
  v34 = 0;
  v33 = 0;
  v19 = 0;
  v23 = sub_1AC309AAC();
  v21 = *(v23 - 8);
  v22 = v23 - 8;
  v8 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v24 = &v7 - v8;
  v34 = MEMORY[0x1EEE9AC00](v27);
  v33 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BB88);
  v9 = MEMORY[0x1E69A2B08];
  v10 = sub_1AC205220();
  v11 = v2;
  sub_1AC205220();
  v25 = sub_1AC309D3C();
  v14 = 1;
  sub_1AC30A9DC();
  v12 = v3;
  v15 = sub_1AC274FA8();
  v16 = v4;

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C800);
  v17 = v32;
  v32[3] = v5;
  v32[0] = v13;
  v18 = sel_headGestureOnInput_;
  v20 = type metadata accessor for BobbleSettingsViewController();
  sub_1AC20599C();
  sub_1AC309A9C();
  v28 = sub_1AC309CEC();
  (*(v21 + 8))(v24, v23);

  MEMORY[0x1E69E5928](v27);
  v31 = v27;
  v29 = sub_1AC309D0C();
  MEMORY[0x1E69E5920](v27);

  v30 = sub_1AC309D2C();

  return v30;
}

uint64_t sub_1AC28A588(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C140);
  sub_1AC30B18C();
  v6 = v2;
  sub_1AC3095DC();
  *v6 = sub_1AC3095CC();
  v6[1] = v3;
  MEMORY[0x1E69E5928](a2);
  v6[2] = a2;
  sub_1AC206300();
  sub_1AC30A83C();
  v8 = sub_1AC30A81C();

  [a1 setUserInfo_];
  return swift_unknownObjectRelease();
}

uint64_t sub_1AC28A744(void *a1)
{
  v24 = 0;
  v20 = 0;
  v16 = 0;
  v25 = a1;
  if ([a1 userInfo])
  {
    sub_1AC30AEFC();
    sub_1AC241B1C(v12, &v21);
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = 0uLL;
    v22 = 0uLL;
  }

  v23[0] = v21;
  v23[1] = v22;
  if (*(&v22 + 1))
  {
    sub_1AC2748C4();
    if (swift_dynamicCast())
    {
      v11 = v13;
    }

    else
    {
      v11 = 0;
    }

    v10 = v11;
  }

  else
  {
    sub_1AC204664(v23);
    v10 = 0;
  }

  if (!v10)
  {
    goto LABEL_25;
  }

  v20 = v10;
  sub_1AC3095DC();
  sub_1AC3095CC();
  v8 = sub_1AC30A91C();

  v9 = [v10 objectForKey_];
  swift_unknownObjectRelease();
  if (v9)
  {
    sub_1AC30AEFC();
    sub_1AC241B1C(v14, &v17);
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0uLL;
    v18 = 0uLL;
  }

  v19[0] = v17;
  v19[1] = v18;
  if (*(&v18 + 1))
  {
    if (swift_dynamicCast())
    {
      v7 = v15;
    }

    else
    {
      v7 = 0;
    }

    v6 = v7;
  }

  else
  {
    sub_1AC204664(v19);
    v6 = 0;
  }

  if (!v6)
  {
    MEMORY[0x1E69E5920](v10);
LABEL_25:
    sub_1AC30A9DC();
    v2 = sub_1AC274FA8();

    return v2;
  }

  v16 = v6;
  sub_1AC30915C();
  v3 = sub_1AC30988C();

  v4 = sub_1AC28D540(v3);
  MEMORY[0x1E69E5920](v6);
  MEMORY[0x1E69E5920](v10);
  return v4;
}

uint64_t sub_1AC28AB7C()
{
  v0 = sub_1AC282EC8();
  if (v0)
  {
    v5 = v0;
  }

  else
  {
    v0 = sub_1AC30B05C();
    __break(1u);
  }

  v4 = (*(*v5 + 232))(v0, v1, v2);

  return sub_1AC28D398(v4);
}

uint64_t sub_1AC28AD0C()
{
  v0 = sub_1AC282EC8();
  if (v0)
  {
    v5 = v0;
  }

  else
  {
    v0 = sub_1AC30B05C();
    __break(1u);
  }

  v4 = (*(*v5 + 184))(v0, v1, v2);

  return sub_1AC28D398(v4);
}

void *sub_1AC28AE9C()
{
  v7 = (v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI28BobbleSettingsViewController____lazy_storage___movieLoopView);
  swift_beginAccess();
  v8 = *v7;
  MEMORY[0x1E69E5928](*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_1AC28AFA8(v6);
  MEMORY[0x1E69E5928](v4);
  v3 = &v6[OBJC_IVAR____TtC19HeadphoneSettingsUI28BobbleSettingsViewController____lazy_storage___movieLoopView];
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  MEMORY[0x1E69E5920](v1);
  swift_endAccess();
  return v4;
}

void *sub_1AC28AFA8(void *a1)
{
  type metadata accessor for BobbleVideoLoopPlayer();
  v3 = [a1 traitCollection];
  v4 = [v3 userInterfaceStyle];
  MEMORY[0x1E69E5920](v3);
  v5 = sub_1AC265A48(0, v4, 0.0, 0.0, 0.0, 0.0);
  sub_1AC309BCC();
  MEMORY[0x1E69E5928](v5);
  sub_1AC309BBC();
  MEMORY[0x1E69E5920](v5);
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  MEMORY[0x1E69E5920](v5);
  return v5;
}

double sub_1AC28B104(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR____TtC19HeadphoneSettingsUI28BobbleSettingsViewController____lazy_storage___movieLoopView);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

double (*sub_1AC28B19C(void **a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1AC28AE9C();
  return sub_1AC28B1F8;
}

double sub_1AC28B1F8(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_1AC28B104(*a1);
  }

  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  sub_1AC28B104(v3);
  *&result = MEMORY[0x1E69E5920](*a1).n128_u64[0];
  return result;
}

id sub_1AC28B278()
{
  v7 = (v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI28BobbleSettingsViewController____lazy_storage___topAsset);
  swift_beginAccess();
  v8 = *v7;
  MEMORY[0x1E69E5928](*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_1AC28B384();
  MEMORY[0x1E69E5928](v4);
  v3 = (v6 + OBJC_IVAR____TtC19HeadphoneSettingsUI28BobbleSettingsViewController____lazy_storage___topAsset);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  MEMORY[0x1E69E5920](v1);
  swift_endAccess();
  return v4;
}

id sub_1AC28B384()
{
  sub_1AC2813A0();
  v14 = sub_1AC20D658();
  v2 = sub_1AC28AE9C();
  [v14 addSubview_];
  MEMORY[0x1E69E5920](v2);
  v12 = objc_opt_self();
  sub_1AC256554();
  sub_1AC30B18C();
  v11 = v0;
  v3 = sub_1AC28AE9C();
  v5 = [v3 0x1FBB23FD2];
  v4 = [v14 0x1FBB23FD2];
  v6 = [v5 constraintEqualToAnchor_];
  MEMORY[0x1E69E5920](v4);
  MEMORY[0x1E69E5920](v5);
  *v11 = v6;
  v7 = sub_1AC28AE9C();
  v9 = [v7 0x1FBB23FE0];
  v8 = [v14 0x1FBB23FE0];
  v10 = [v9 constraintEqualToAnchor:20.0 constant:?];
  MEMORY[0x1E69E5920](v8);
  MEMORY[0x1E69E5920](v9);
  v11[1] = v10;
  sub_1AC206300();
  v13 = sub_1AC30AAFC();

  [v12 activateConstraints_];
  MEMORY[0x1E69E5920](v13);
  return v14;
}

double sub_1AC28B5E0(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR____TtC19HeadphoneSettingsUI28BobbleSettingsViewController____lazy_storage___topAsset);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

double (*sub_1AC28B678(id *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1AC28B278();
  return sub_1AC28B6D4;
}

double sub_1AC28B6D4(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_1AC28B5E0(*a1);
  }

  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  sub_1AC28B5E0(v3);
  *&result = MEMORY[0x1E69E5920](*a1).n128_u64[0];
  return result;
}

double sub_1AC28B754()
{
  v44 = 0;
  v30 = 0;
  sub_1AC256498();
  v23 = sub_1AC253630(0.0, 0.0, 0.0, 0.0);
  v43 = v23;
  v22 = [v23 contentView];
  v21 = sub_1AC28B278();
  [v22 addSubview_];
  MEMORY[0x1E69E5920](v21);
  MEMORY[0x1E69E5920](v22);
  MEMORY[0x1E69E5928](v23);
  v25 = [v24 view];
  *&v0 = (MEMORY[0x1E69E5920])().n128_u64[0];
  if (v25)
  {
    v20 = v25;
  }

  else
  {
    LOBYTE(v10) = 2;
    v11 = 278;
    LODWORD(v12) = 0;
    sub_1AC30B05C();
    __break(1u);
  }

  [v20 bounds];
  v39 = v1;
  v40 = v2;
  v41 = v3;
  v42 = v4;
  MEMORY[0x1E69E5920](v20);
  CGRectMake();
  v35 = v5;
  v36 = v6;
  v37 = v7;
  v38 = v8;
  v31 = v5;
  v32 = v6;
  v33 = v7;
  v34 = v8;
  [v23 setFrame_];
  MEMORY[0x1E69E5920](v23);
  v16 = sub_1AC28B278();
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  MEMORY[0x1E69E5920](v16);
  v18 = sub_1AC28B278();
  v17 = [v23 contentView];
  [v18 pinToOther_];
  MEMORY[0x1E69E5920](v17);
  v19 = [v24 table];
  if (!v19)
  {
    goto LABEL_18;
  }

  v30 = v19;
  v15 = [v19 tableHeaderView];
  MEMORY[0x1E69E5928](v15);
  MEMORY[0x1E69E5928](v23);
  MEMORY[0x1E69E5928](v23);
  v28 = v15;
  v29 = v23;
  if (!v15)
  {
    if (!v29)
    {
      sub_1AC206988(&v28);
      v14 = 1;
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  sub_1AC257900(&v28, &v27);
  if (!v29)
  {
    MEMORY[0x1E69E5920](v27);
LABEL_15:
    sub_1AC28C0D4(&v28);
    v14 = 0;
    goto LABEL_13;
  }

  v26 = v29;
  sub_1AC2813A0();
  v13 = sub_1AC30ADFC();
  MEMORY[0x1E69E5920](v26);
  MEMORY[0x1E69E5920](v27);
  sub_1AC206988(&v28);
  v14 = v13;
LABEL_13:
  MEMORY[0x1E69E5920](v23);
  MEMORY[0x1E69E5920](v15);
  if ((v14 & 1) == 0)
  {
    [v19 setTableHeaderView_];
    MEMORY[0x1E69E5920](v23);
    MEMORY[0x1E69E5920](v19);
    MEMORY[0x1E69E5920](v23);
    return sub_1AC28BC4C(v24);
  }

  MEMORY[0x1E69E5920](v19);
LABEL_18:
  MEMORY[0x1E69E5920](v23);
  return sub_1AC28BC4C(v24);
}

double sub_1AC28BC4C(void *a1)
{
  v5[1] = a1;
  v4 = [a1 table];
  if (v4)
  {
    v2 = [v4 tableHeaderView];
    v5[0] = v2;
    if (v2)
    {
      v3 = v5[0];
      MEMORY[0x1E69E5928](v5[0]);
      sub_1AC206988(v5);
      [v3 layoutIfNeeded];
      *&result = MEMORY[0x1E69E5920](v3).n128_u64[0];
    }

    else
    {
      sub_1AC206988(v5);
      *&result = MEMORY[0x1E69E5920](v4).n128_u64[0];
    }
  }

  return result;
}

id BobbleSettingsViewController.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BobbleSettingsViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1AC28BE7C()
{
  v2 = qword_1EB54C7D8;
  if (!qword_1EB54C7D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C7C8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C7D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC28BF04()
{
  v2 = qword_1EB54C7E0;
  if (!qword_1EB54C7E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C7D0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C7E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC28BF8C()
{
  v2 = qword_1EB54C7E8;
  if (!qword_1EB54C7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C7C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C7E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC28C01C()
{
  v2 = qword_1EB54C7F8;
  if (!qword_1EB54C7F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C7F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C7F8);
    return WitnessTable;
  }

  return v2;
}

void *sub_1AC28C0D4(void *a1)
{
  MEMORY[0x1E69E5920](*a1);
  MEMORY[0x1E69E5920](a1[1]);
  return a1;
}

unint64_t sub_1AC28C174()
{
  v2 = qword_1EB54C818;
  if (!qword_1EB54C818)
  {
    sub_1AC3095DC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C818);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC28C204()
{
  v2 = qword_1EB54C830;
  if (!qword_1EB54C830)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB54C830);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1AC28C270()
{
  swift_beginAccess();
  v2 = *(v0 + 16);
  swift_endAccess();
  return v2;
}

uint64_t sub_1AC28C2BC(char a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
  return swift_endAccess();
}

uint64_t sub_1AC28C308()
{

  v1 = sub_1AC30988C();

  return v1;
}

uint64_t sub_1AC28C360()
{

  sub_1AC30989C();
}

uint64_t (*sub_1AC28C3BC(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = sub_1AC28C308();
  return sub_1AC28C410;
}

uint64_t sub_1AC28C468()
{
  swift_beginAccess();
  v2 = *(v0 + 17);
  swift_endAccess();
  return v2;
}

uint64_t sub_1AC28C4B4(char a1)
{
  swift_beginAccess();
  *(v1 + 17) = a1;
  return swift_endAccess();
}

uint64_t sub_1AC28C55C()
{

  v1 = sub_1AC30995C();

  return v1;
}

uint64_t sub_1AC28C5B4(char a1)
{

  sub_1AC30996C();

  sub_1AC28C63C(a1);
  sub_1AC3099CC();
}

uint64_t sub_1AC28C63C(char a1)
{
  type metadata accessor for AAHeadGestureConfig();
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 2;
    case 2:
      return 1;
    case 3:
      return 0;
  }

  sub_1AC30B1DC();
  __break(1u);
  return v2;
}

uint64_t (*sub_1AC28C720(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_1AC28C55C();
  return sub_1AC28C774;
}

uint64_t sub_1AC28C7CC()
{
  swift_beginAccess();
  v2 = *(v0 + 18);
  swift_endAccess();
  return v2;
}

uint64_t sub_1AC28C818(char a1)
{
  swift_beginAccess();
  *(v1 + 18) = a1;
  return swift_endAccess();
}

uint64_t sub_1AC28C8C0()
{

  v1 = sub_1AC3099BC();

  return v1;
}

uint64_t sub_1AC28C918(char a1)
{

  sub_1AC3099CC();

  sub_1AC28C63C(a1);
  sub_1AC30996C();
}

uint64_t (*sub_1AC28C9A0(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_1AC28C8C0();
  return sub_1AC28C9F4;
}

uint64_t sub_1AC28CA4C()
{
  v2 = *(v0 + 24);

  return v2;
}

uint64_t sub_1AC28CADC(int a1, int a2, int a3, uint64_t a4)
{
  v33 = a1;
  v35 = a2;
  v40 = a3;
  v48 = a4;
  v38 = 0;
  v47 = sub_1AC28D294;
  v49 = sub_1AC215C90;
  v51 = sub_1AC215C90;
  v54 = sub_1AC2482A8;
  v72 = 0;
  v71 = 0;
  v70 = 0;
  v69 = 0;
  v68 = 0;
  v30 = 0;
  v44 = sub_1AC309E6C();
  v42 = *(v44 - 8);
  v43 = v44 - 8;
  v31 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v48);
  v4 = v22 - v31;
  v32 = v22 - v31;
  v72 = v33;
  v71 = v5;
  v70 = v6;
  v69 = v7;
  v68 = v8;
  v8[16] = 0;
  v8[17] = 0;
  v8[18] = 0;

  *(v39 + 24) = v48;
  v34 = &v67;
  v37 = 33;
  swift_beginAccess();
  *(v39 + 16) = v33;
  swift_endAccess();
  v36 = &v66;
  swift_beginAccess();
  *(v39 + 17) = v35;
  swift_endAccess();
  v41 = &v65;
  swift_beginAccess();
  *(v39 + 18) = v40;
  swift_endAccess();
  v9 = sub_1AC274D88();
  (*(v42 + 16))(v4, v9, v44);

  sub_1AC20BEE0();

  v58 = sub_1AC309E4C();
  v59 = sub_1AC30AD2C();
  v45 = 17;
  v46 = 7;
  v50 = swift_allocObject();
  *(v50 + 16) = 64;
  v52 = swift_allocObject();
  *(v52 + 16) = 8;
  v10 = swift_allocObject();
  v11 = v48;
  v55 = v10;
  *(v10 + 16) = v47;
  *(v10 + 24) = v11;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8);
  v53 = sub_1AC30B18C();
  v56 = v12;

  v13 = v50;
  v14 = v56;
  *v56 = v49;
  v14[1] = v13;

  v15 = v52;
  v16 = v56;
  v56[2] = v51;
  v16[3] = v15;

  v17 = v55;
  v18 = v56;
  v56[4] = v54;
  v18[5] = v17;
  sub_1AC206300();

  if (os_log_type_enabled(v58, v59))
  {
    v19 = v30;
    v23 = sub_1AC30AE6C();
    v22[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8);
    v24 = sub_1AC213EE4(1);
    v25 = sub_1AC213EE4(0);
    v26 = &v64;
    v64 = v23;
    v27 = &v63;
    v63 = v24;
    v28 = &v62;
    v62 = v25;
    sub_1AC213F38(2, &v64);
    sub_1AC213F38(1, v26);
    v60 = v49;
    v61 = v50;
    sub_1AC213F4C(&v60, v26, v27, v28);
    v29 = v19;
    if (v19)
    {

      __break(1u);
    }

    else
    {
      v60 = v51;
      v61 = v52;
      sub_1AC213F4C(&v60, &v64, &v63, &v62);
      v22[1] = 0;
      v60 = v54;
      v61 = v55;
      sub_1AC213F4C(&v60, &v64, &v63, &v62);
      _os_log_impl(&dword_1AC1C3000, v58, v59, "Bobble: reload for value change %@", v23, 0xCu);
      sub_1AC213F98(v24);
      sub_1AC213F98(v25);
      sub_1AC30AE4C();
    }
  }

  else
  {
  }

  v20 = MEMORY[0x1E69E5920](v58);
  (*(v42 + 8))(v32, v44, v20);

  return v39;
}

uint64_t sub_1AC28D234()
{
  v2 = sub_1AC30987C();
  if (v2)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AC28D314()
{
  type metadata accessor for BobbleSettingsViewModel();
  v1 = sub_1AC30988C();
  v2 = sub_1AC30995C();
  v3 = sub_1AC3099BC();

  return sub_1AC28CA78(v1, v2, v3, v4);
}

uint64_t sub_1AC28D398(char a1)
{
  type metadata accessor for AAHeadGestureConfig();
  switch(a1)
  {
    case 0:
      goto LABEL_8;
    case 1:
      sub_1AC30A9DC();
      v4 = sub_1AC274FA8();

      return v4;
    case 2:
      sub_1AC30A9DC();
      v3 = sub_1AC274FA8();

      return v3;
    case 3:
LABEL_8:
      sub_1AC30A9DC();
      v2 = sub_1AC274FA8();

      return v2;
  }

  sub_1AC30B1DC();
  __break(1u);
  return v5;
}

uint64_t sub_1AC28D540(char a1)
{
  type metadata accessor for AAMultiState();
  if (a1)
  {
    if (a1 == 1)
    {
      sub_1AC30A9DC();
      v4 = sub_1AC274FA8();

      return v4;
    }

    else if (a1 == 2)
    {
      sub_1AC30A9DC();
      v3 = sub_1AC274FA8();

      return v3;
    }

    else
    {
      sub_1AC30B1DC();
      __break(1u);
    }
  }

  else
  {
    sub_1AC30A9DC();
    v2 = sub_1AC274FA8();

    return v2;
  }

  return v5;
}

uint64_t sub_1AC28D6F4()
{
  v26 = 0;
  v20 = 0;
  v13 = sub_1AC30A90C();
  v14 = *(v13 - 8);
  v15 = v13 - 8;
  v16 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v6 - v16;
  v26 = v0;
  v18 = [objc_opt_self() currentDevice];
  v19 = [v18 userInterfaceIdiom];
  MEMORY[0x1E69E5920](v18);
  v23 = &v25;
  v25 = v19;
  v21 = &v24;
  v24 = 1;
  v22 = type metadata accessor for UIUserInterfaceIdiom();
  sub_1AC2052F0();
  if (sub_1AC30B1BC())
  {
    sub_1AC30A9DC();
    sub_1AC30A8AC();
    v1 = sub_1AC205370();
    v9 = sub_1AC215DE8(v17, v1);
    v10 = v2;
    (*(v14 + 8))(v17, v13);
    v11 = v9;
    v12 = v10;
  }

  else
  {
    sub_1AC30A9DC();
    sub_1AC30A8AC();
    v3 = sub_1AC205370();
    v7 = sub_1AC215DE8(v17, v3);
    v8 = v4;
    (*(v14 + 8))(v17, v13);
    v11 = v7;
    v12 = v8;
  }

  return v11;
}

uint64_t sub_1AC28D98C()
{
  swift_beginAccess();
  v2 = *(v0 + 32);

  swift_endAccess();
  return v2;
}

uint64_t sub_1AC28D9DC(uint64_t a1)
{

  swift_beginAccess();
  *(v1 + 32) = a1;

  swift_endAccess();
}

uint64_t sub_1AC28DA3C(uint64_t a1, uint64_t a2)
{
  v17 = a1;
  v16 = a2;
  v15 = v2;
  v5 = sub_1AC3092FC();
  v14 = v5 & 1;
  if (v5)
  {
    sub_1AC30938C();
  }

  sub_1AC30929C();
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C838);
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

  v4 = v12 != 0;
  sub_1AC204664(&v9);
  LOBYTE(v6) = v4;
  HIBYTE(v6) = v5 & 1;
  return v6;
}

uint64_t sub_1AC28DB98(uint64_t a1, uint64_t a2)
{
  v67 = a1;
  v65 = a2;
  v66 = 0;
  v42 = sub_1AC28EA1C;
  v43 = sub_1AC28E864;
  v44 = sub_1AC28EA14;
  v85 = 0;
  v84 = 0;
  v83 = 0;
  v74 = 0;
  v45 = sub_1AC30A90C();
  v46 = *(v45 - 8);
  v47 = v45 - 8;
  v48 = (*(v46 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v49 = v14 - v48;
  v50 = sub_1AC309AAC();
  v51 = *(v50 - 8);
  v52 = v50 - 8;
  v53 = (*(v51 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v50);
  v54 = v14 - v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BD90);
  v56 = *(v55 - 8);
  v57 = v55 - 8;
  v58 = (*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v55);
  v59 = v14 - v58;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C470);
  v61 = (*(*(v60 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v60);
  v62 = v14 - v61;
  v63 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14 - v61);
  v64 = v14 - v63;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C840);
  v69 = *(v68 - 8);
  v70 = v68 - 8;
  v71 = (*(v69 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v67);
  v72 = v14 - v71;
  v85 = v4;
  v84 = v5;
  v83 = v2;
  v73 = &v82;
  swift_beginAccess();
  v76 = *(v2 + 32);

  swift_endAccess();
  v75 = sub_1AC309EAC();
  sub_1AC223158();
  v77 = sub_1AC30AC1C();

  if (v77)
  {
    sub_1AC30948C();
    v27 = sub_1AC309F2C();
    v30 = *(v56 + 8);
    v29 = v56 + 8;
    v30(v59, v55);
    v28 = &v80;
    v80 = v27;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C480);
    v33 = sub_1AC2575DC();
    v34 = MEMORY[0x1E69E6388];
    sub_1AC309FAC();
    sub_1AC20BCE0();
    sub_1AC30918C();
    v31 = sub_1AC309F2C();
    v30(v59, v55);
    v35 = &v79;
    v79 = v31;
    sub_1AC309FAC();
    sub_1AC20BCE0();
    sub_1AC257664();
    sub_1AC309E7C();
    v37 = swift_allocObject();
    v36 = v37 + 16;
    MEMORY[0x1E69E5928](v65);
    swift_unknownObjectWeakInit();
    MEMORY[0x1E69E5920](v65);

    sub_1AC28EA24();
    v40 = sub_1AC309FBC();

    (*(v69 + 8))(v72, v68);
    v38 = v41 + 32;
    v39 = &v78;
    swift_beginAccess();
    sub_1AC309E9C();
    swift_endAccess();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BB88);
  v15 = 1;
  v14[1] = sub_1AC30A9DC();
  v14[2] = v6;
  sub_1AC205220();
  v24 = sub_1AC309D3C();
  v23 = sub_1AC30A9DC();
  v18 = v7;
  v81[4] = v41;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v22 = 0;
  v8 = type metadata accessor for CharginCaseSoundFeature();
  v19 = sub_1AC215DE8(v49, v8);
  v20 = v9;
  (*(v46 + 8))(v49, v45);
  v21 = v81;
  memset(v81, 0, 32);
  MEMORY[0x1E69E5928](v67);
  v14[3] = 24;
  v14[4] = 7;
  v10 = swift_allocObject();
  v11 = v67;
  *(v10 + 16) = v67;
  v16 = v10;
  MEMORY[0x1E69E5928](v11);
  v12 = swift_allocObject();
  *(v12 + 16) = v67;
  v17 = v12;
  sub_1AC20599C();
  sub_1AC309A9C();
  v25 = sub_1AC309D1C();
  (*(v51 + 8))(v54, v50);

  v26 = sub_1AC309D2C();

  return v26;
}

double sub_1AC28E5B0(_BYTE *a1, uint64_t a2)
{
  v8 = 0;
  v7 = 0;
  v2 = a1[1];
  LOBYTE(v8) = *a1;
  HIBYTE(v8) = v2;
  v7 = a2 + 16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    MEMORY[0x1E69E5928](Strong);
    sub_1AC206988(&Strong);
    swift_endAccess();
    sub_1AC30A9DC();
    v4 = sub_1AC30A91C();

    [v5 reloadSpecifierID_];
    MEMORY[0x1E69E5920](v4);
    *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  }

  else
  {
    sub_1AC206988(&Strong);
    swift_endAccess();
  }

  return result;
}

id sub_1AC28E6F4(void *a1)
{
  if (sub_1AC30945C())
  {
    sub_1AC2068B8();
    v1 = sub_1AC3095AC();
    return sub_1AC244124(v1 & 1);
  }

  else
  {
    MEMORY[0x1E69E5928](a1);
    if (a1)
    {
      v5 = sub_1AC30AB8C();
      v3 = *MEMORY[0x1E69C58C8];
      MEMORY[0x1E69E5928](*MEMORY[0x1E69C58C8]);
      sub_1AC30A92C();
      v4 = sub_1AC30A91C();

      [a1 setProperty:v5 forKey:{v4, MEMORY[0x1E69E5920](v3).n128_f64[0]}];
      MEMORY[0x1E69E5920](v4);
      swift_unknownObjectRelease();
      MEMORY[0x1E69E5920](a1);
    }

    sub_1AC2068B8();
    return sub_1AC244124(1);
  }
}

uint64_t sub_1AC28E86C(void *a1)
{
  if (sub_1AC30950C())
  {
    return sub_1AC30951C();
  }

  swift_getObjectType();
  swift_unknownObjectRetain();
  if ([a1 respondsToSelector_])
  {
    swift_unknownObjectRetain();
    v3 = [a1 BOOLValue];
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 2;
  }

  if (v3 == 2)
  {
    sub_1AC30B05C();
    __break(1u);
  }

  sub_1AC3095BC();
  swift_unknownObjectRelease();
  sub_1AC3094DC();
  sub_1AC30939C();
  return sub_1AC30938C();
}

unint64_t sub_1AC28EA24()
{
  v2 = qword_1EB54C848;
  if (!qword_1EB54C848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C840);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C848);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC28EAAC()
{
  sub_1AC2063F0();
  sub_1AC209190();
  return v1;
}

uint64_t sub_1AC28EB68()
{
  *(v0 + 16) = sub_1AC30A9DC();
  *(v0 + 24) = v1;
  sub_1AC309EAC();
  sub_1AC223158();
  v2 = sub_1AC30A80C();
  result = v4;
  *(v4 + 32) = v2;
  return result;
}

uint64_t sub_1AC28ECC0(uint64_t a1, uint64_t a2)
{
  v17 = a1;
  v16 = a2;
  v15 = v2;
  v5 = sub_1AC3092FC();
  v14 = v5 & 1;
  sub_1AC30929C();
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BC70);
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

  v4 = v12 != 0;
  sub_1AC204664(&v9);
  LOBYTE(v6) = v4;
  HIBYTE(v6) = v5 & 1;
  return v6;
}

uint64_t sub_1AC28EE04(void *a1, void *a2)
{
  v49 = a2;
  v42 = a1;
  v43 = 0;
  v68 = 0;
  v67 = 0;
  v66 = 0;
  v44 = sub_1AC30A90C();
  v45 = *(v44 - 8);
  v46 = v45;
  MEMORY[0x1EEE9AC00](0);
  v47 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1AC309AAC();
  v51 = *(v50 - 8);
  v52 = v51;
  v53 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v50 - 8);
  v54 = v24 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = a1;
  v67 = v4;
  v66 = v5;
  sub_1AC30929C();
  if (v59)
  {
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C858);
    if (!swift_dynamicCast())
    {
      v60 = 0;
      v61 = 0;
      v62 = 0;
      v63 = 0;
      v64 = 0;
    }
  }

  else
  {
    sub_1AC204664(v58);
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = 0;
  }

  if (v63)
  {
    v38 = __dst;
    sub_1AC2051E4(&v60, __dst);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BB88);
    v24[2] = MEMORY[0x1E69A2B08];
    v24[3] = sub_1AC205220();
    v24[4] = v6;
    sub_1AC205220();
    v24[6] = sub_1AC309D3C();
    v24[5] = v24;
    v26 = 24;
    MEMORY[0x1EEE9AC00](v24);
    v23 = v7;
    v36 = sub_1AC309CDC();

    v57 = v48;
    sub_1AC30A9DC();
    sub_1AC30A8AC();
    v33 = 0;
    v25 = type metadata accessor for PressHoldFeature();
    v31 = sub_1AC215DE8(v47, v25);
    v32 = v8;
    (*(v46 + 8))(v47, v44);

    v56 = v25;
    v55 = v48;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C850);
    v28 = 7;
    v35 = swift_allocObject();
    v27 = v35 + 16;
    v9 = v49;
    swift_unknownObjectWeakInit();

    v10 = v42;

    v11 = swift_allocObject();
    v12 = v35;
    v29 = v11;
    *(v11 + 16) = v42;
    *(v11 + 24) = v12;
    v13 = sub_1AC20599C();
    v34 = &v15;
    v23 = v29;
    v22 = sub_1AC28F880;
    v21 = v33;
    v20 = v33;
    v19 = v33;
    v18 = v33;
    v17 = v30;
    v16 = v13 & 1;
    v15 = v33;
    sub_1AC309A9C();

    v37 = sub_1AC309D1C();
    (*(v52 + 8))(v54, v50);

    v39 = sub_1AC309D2C();

    __swift_destroy_boxed_opaque_existential_1(v38);
    return v39;
  }

  else
  {
    sub_1AC204664(&v60);
    v24[0] = 0;
    v24[1] = sub_1AC215CB0();
    return sub_1AC30B18C();
  }
}

uint64_t sub_1AC28F454(void *a1, void *a2)
{
  sub_1AC30B17C();
  v2 = sub_1AC30A9DC();
  MEMORY[0x1AC5B07E0](v2);

  v7 = a2[3];
  v6 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v7);
  (*(*(v6 + 8) + 8))(v7);
  sub_1AC30B15C();
  sub_1AC2063F0();
  v3 = sub_1AC30A9DC();
  MEMORY[0x1AC5B07E0](v3);

  sub_1AC2063F0();
  sub_1AC30A9BC();
  v11 = sub_1AC30A91C();

  v8 = *MEMORY[0x1E69C5900];
  MEMORY[0x1E69E5928](*MEMORY[0x1E69C5900]);
  sub_1AC30A92C();
  v10 = sub_1AC30A91C();

  [a1 setProperty:v11 forKey:{v10, MEMORY[0x1E69E5920](v8).n128_f64[0]}];
  MEMORY[0x1E69E5920](v10);
  return swift_unknownObjectRelease();
}

double sub_1AC28F678(uint64_t a1, uint64_t a2)
{
  v9[9] = a1;
  v9[8] = a2 + 16;
  type metadata accessor for PressHoldDetailedViewController();
  MEMORY[0x1E69E5928](a1);
  v6 = sub_1AC2F3538(a1);
  v9[7] = v6;
  v2 = MEMORY[0x1E69E5928](a1);
  v7 = MEMORY[0x1E69E7D40];
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x90))(a1, v2);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  (*((*v6 & *v7) + 0xB0))(Strong);
  swift_beginAccess();
  v9[0] = swift_unknownObjectWeakLoadStrong();
  if (v9[0])
  {
    v4 = v9[0];
    MEMORY[0x1E69E5928](v9[0]);
    sub_1AC206988(v9);
    swift_endAccess();
    [v4 showController_];
    MEMORY[0x1E69E5920](v6);
    MEMORY[0x1E69E5920](v4);
  }

  else
  {
    sub_1AC206988(v9);
    swift_endAccess();
  }

  *&result = MEMORY[0x1E69E5920](v6).n128_u64[0];
  return result;
}

uint64_t sub_1AC28F8C8()
{
  v0 = sub_1AC30A9DC();
  result = v3;
  *(v3 + 16) = v0;
  *(v3 + 24) = v2;
  return result;
}

uint64_t AAFeatures.init(rawValue:)@<X0>(_BYTE *a1@<X8>)
{
  sub_1AC30B18C();
  *v1 = "PauseMediaOnSleep";
  *(v1 + 8) = 17;
  *(v1 + 16) = 2;
  sub_1AC206300();
  v4 = sub_1AC30B12C();

  if (v4)
  {

    *a1 = 1;
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

unint64_t sub_1AC28FB84()
{
  v2 = qword_1EB54C860;
  if (!qword_1EB54C860)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C860);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC28FCF4@<X0>(uint64_t *a1@<X8>)
{
  result = AAFeatures.rawValue.getter();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t TranslateFeatures.init(rawValue:)@<X0>(_BYTE *a1@<X8>)
{
  sub_1AC30B18C();
  *v1 = "personalTranslator";
  *(v1 + 8) = 18;
  *(v1 + 16) = 2;
  sub_1AC206300();
  v4 = sub_1AC30B12C();

  if (v4)
  {

    *a1 = 1;
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

unint64_t sub_1AC28FF0C()
{
  v2 = qword_1EB54C868;
  if (!qword_1EB54C868)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C868);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC29007C@<X0>(uint64_t *a1@<X8>)
{
  result = TranslateFeatures.rawValue.getter();
  *a1 = result;
  a1[1] = v2;
  return result;
}

unint64_t sub_1AC2900F4()
{
  v2 = qword_1EB54C870;
  if (!qword_1EB54C870)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C870);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC290188()
{
  v2 = qword_1EB54C878;
  if (!qword_1EB54C878)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C878);
    return WitnessTable;
  }

  return v2;
}

id sub_1AC29022C()
{
  sub_1AC20BE24();
  type metadata accessor for HeadphoneSettingsController();
  result = sub_1AC20BE88();
  qword_1EB553D38 = result;
  return result;
}

uint64_t *sub_1AC290274()
{
  if (qword_1EB550A00 != -1)
  {
    swift_once();
  }

  return &qword_1EB553D38;
}

uint64_t sub_1AC2902D4()
{
  v1 = sub_1AC290274();
  swift_beginAccess();
  v2 = *v1;
  MEMORY[0x1E69E5928](*v1);
  swift_endAccess();
  return v2;
}

double sub_1AC290334(uint64_t a1)
{
  v3 = sub_1AC290274();
  MEMORY[0x1E69E5928](a1);
  swift_beginAccess();
  v1 = *v3;
  *v3 = a1;
  MEMORY[0x1E69E5920](v1);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t (*sub_1AC2903C0())()
{
  sub_1AC290274();
  swift_beginAccess();
  return sub_1AC20949C;
}

uint64_t sub_1AC290460(uint64_t a1, uint64_t a2)
{
  v17 = a1;
  v16 = a2;
  v15 = v2;
  sub_1AC30929C();
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C898);
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

  sub_1AC204664(&v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C880);
  sub_1AC30B18C();
  v5 = v3;
  *v3 = sub_1AC267D80(a1);
  v5[1] = sub_1AC2D6B80(a1);
  sub_1AC206300();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C888);
  sub_1AC290744();
  sub_1AC30AA7C();

  return v7;
}

uint64_t sub_1AC2906D0(uint64_t result, uint64_t a2)
{
  if (*(result + 1))
  {
    v2 = *(result + 1);
  }

  else
  {
    v2 = *(a2 + 1);
  }

  *(result + 1) = v2 & 1;
  return result;
}

unint64_t sub_1AC290744()
{
  v2 = qword_1EB54C890;
  if (!qword_1EB54C890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C888);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C890);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC290840(uint64_t a1, uint64_t a2)
{
  v86 = a2;
  v79 = a1;
  v81 = 0;
  v110 = 0;
  v109 = 0;
  v108 = 0;
  v99 = 0;
  v98 = 0;
  v80 = 0;
  v96 = 0;
  v82 = sub_1AC309E6C();
  v83 = *(v82 - 8);
  v84 = v83;
  MEMORY[0x1EEE9AC00](0);
  v85 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_1AC30A90C();
  v88 = *(v87 - 8);
  v89 = v88;
  v90 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v87 - 8);
  v91 = v25 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = a1;
  v109 = v4;
  v108 = v5;
  sub_1AC30929C();
  if (v101)
  {
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C898);
    if (!swift_dynamicCast())
    {
      v102 = 0;
      v103 = 0;
      v104 = 0;
      v105 = 0;
      v106 = 0;
    }
  }

  else
  {
    sub_1AC204664(v100);
    v102 = 0;
    v103 = 0;
    v104 = 0;
    v105 = 0;
    v106 = 0;
  }

  if (!v105)
  {
    sub_1AC204664(&v102);
    v25[0] = 0;
    v25[1] = sub_1AC215CB0();
    v26 = sub_1AC30B18C();
    v53 = v26;
    v54 = v80;
    return v53;
  }

  v6 = v80;
  v63 = __dst;
  sub_1AC2051E4(&v102, __dst);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BB88);
  v56 = 1;
  v59 = sub_1AC30A9DC();
  v60 = v7;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v72 = 0;
  v57 = type metadata accessor for FitFeatureGroup();
  v61 = sub_1AC215DE8(v91, v57);
  v62 = v8;
  (*(v89 + 8))(v91, v87);
  v65 = sub_1AC309D3C();
  v64 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v25[-2] = v9;
  v10 = sub_1AC309CDC();
  v69 = v10;
  v66 = v10;

  v99 = v10;
  v67 = sub_1AC309D2C();
  v98 = v67;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C378);
  v68 = v74;
  v71 = sub_1AC30B18C();
  v70 = v11;
  v12 = sub_1AC268B58(v79, v86, v69);
  v13 = v86;
  v14 = v69;
  v15 = v12;
  v16 = v79;
  *v70 = v15;
  v17 = sub_1AC2D7970(v16, v13, v14);
  v18 = v71;
  v70[1] = v17;
  sub_1AC206300();
  v97 = v18;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C508);
  v75 = sub_1AC263B38();
  sub_1AC24D54C();
  v19 = sub_1AC30AA8C();
  v76 = v6;
  v77 = v19;
  if (!v6)
  {
    v55 = v77;
    sub_1AC209190();
    v96 = v55;
    v95[1] = v55;
    sub_1AC2914BC();
    if (sub_1AC30ACAC())
    {
      v20 = v85;
      v21 = sub_1AC29DCC0();
      (*(v84 + 16))(v20, v21, v82);
      v50 = sub_1AC309E4C();
      v47 = v50;
      v49 = sub_1AC30AD1C();
      v48 = v49;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8);
      v51 = sub_1AC30B18C();
      if (os_log_type_enabled(v50, v49))
      {
        v22 = v76;
        v38 = sub_1AC30AE6C();
        v34 = v38;
        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8);
        v36 = 0;
        v39 = sub_1AC213EE4(0);
        v37 = v39;
        v40 = sub_1AC213EE4(v36);
        v95[0] = v38;
        v94 = v39;
        v93 = v40;
        v41 = 0;
        v42 = v95;
        sub_1AC213F38(0, v95);
        sub_1AC213F38(v41, v42);
        v92 = v51;
        v43 = v25;
        MEMORY[0x1EEE9AC00](v25);
        v44 = &v25[-6];
        v25[-4] = v23;
        v25[-3] = &v94;
        v25[-2] = &v93;
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BD08);
        sub_1AC218014();
        sub_1AC30AAAC();
        v46 = v22;
        if (v22)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_1AC1C3000, v47, v48, "Fit Feature Group has nothing to show.", v34, 2u);
          v32 = 0;
          sub_1AC213F98(v37);
          sub_1AC213F98(v40);
          sub_1AC30AE4C();

          v33 = v46;
        }
      }

      else
      {

        v33 = v76;
      }

      v31 = v33;

      (*(v84 + 8))(v85, v82);
      v27 = 0;
      v28 = sub_1AC215CB0();
      v29 = sub_1AC30B18C();
      v30 = v29;

      __swift_destroy_boxed_opaque_existential_1(__dst);
      v53 = v30;
      v54 = v31;
    }

    else
    {
      sub_1AC215CB0();
      v52 = sub_1AC30AB1C();

      __swift_destroy_boxed_opaque_existential_1(__dst);
      v53 = v52;
      v54 = v76;
    }

    return v53;
  }

  result = 0;
  __break(1u);
  return result;
}

uint64_t sub_1AC291374(void *a1, void *a2)
{
  v4 = a2[3];
  v3 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  (*(v3 + 72))(v4);

  v8 = sub_1AC30A91C();

  v5 = *MEMORY[0x1E69C5900];
  MEMORY[0x1E69E5928](*MEMORY[0x1E69C5900]);
  sub_1AC30A92C();
  v7 = sub_1AC30A91C();

  [a1 setProperty:v8 forKey:{v7, MEMORY[0x1E69E5920](v5).n128_f64[0]}];
  MEMORY[0x1E69E5920](v7);
  swift_unknownObjectRelease();
}

unint64_t sub_1AC2914BC()
{
  v2 = qword_1EB54C8A0;
  if (!qword_1EB54C8A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C378);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C8A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC291580()
{
  v0 = sub_1AC30A9DC();
  result = v3;
  *(v3 + 16) = v0;
  *(v3 + 24) = v2;
  return result;
}

id sub_1AC291828()
{
  sub_1AC291878();
  sub_1AC30A9DC();
  result = sub_1AC2918DC();
  qword_1EB553D40 = result;
  return result;
}

unint64_t sub_1AC291878()
{
  v2 = qword_1EB54C8A8;
  if (!qword_1EB54C8A8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB54C8A8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t *sub_1AC291924()
{
  if (qword_1EB550A10 != -1)
  {
    swift_once();
  }

  return &qword_1EB553D40;
}

uint64_t sub_1AC291984()
{
  v0 = sub_1AC291924();
  v2 = *v0;
  MEMORY[0x1E69E5928](*v0);
  return v2;
}

uint64_t sub_1AC2919BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a1;
  v24 = a2;
  v22 = a3;
  v23 = a4;
  v7 = [objc_opt_self() currentDevice];
  v8 = [v7 userInterfaceIdiom];
  MEMORY[0x1E69E5920](v7);
  v21 = v8;
  v20 = 6;
  type metadata accessor for UIUserInterfaceIdiom();
  sub_1AC2052F0();
  v4 = sub_1AC30B1BC();
  v19 = v4 & 1;
  v9 = v4 ^ 1;
  v18 = (v4 ^ 1) & 1;
  sub_1AC30929C();
  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C8B0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
    }
  }

  else
  {
    sub_1AC204664(v11);
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
  }

  v6 = v16 != 0;
  sub_1AC204664(&v13);
  LOBYTE(v10) = v6;
  HIBYTE(v10) = v9 & 1;
  return v10;
}

uint64_t sub_1AC291BA4(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v69 = a4;
  v68 = a3;
  v70 = a2;
  v75 = a1;
  v63 = 0;
  v94 = 0;
  v93 = 0;
  v92 = 0;
  v91 = 0;
  v90 = 0;
  v89 = 0;
  v64 = sub_1AC30A90C();
  v65 = *(v64 - 8);
  v66 = v65;
  MEMORY[0x1EEE9AC00](0);
  v67 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1AC309AAC();
  v72 = *(v71 - 8);
  v73 = v72;
  MEMORY[0x1EEE9AC00](v71 - 8);
  v74 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = a1;
  v93 = v7;
  v91 = v8;
  v92 = v9;
  v76 = sub_1AC2C85A0();
  v77 = v10;
  v89 = v76;
  v90 = v10;
  sub_1AC30929C();
  if (v82)
  {
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C8B0);
    if (!swift_dynamicCast())
    {
      v83 = 0;
      v84 = 0;
      v85 = 0;
      v86 = 0;
      v87 = 0;
    }
  }

  else
  {
    sub_1AC204664(v81);
    v83 = 0;
    v84 = 0;
    v85 = 0;
    v86 = 0;
    v87 = 0;
  }

  if (v86)
  {
    v59 = __dst;
    sub_1AC2051E4(&v83, __dst);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BB88);
    v43 = 1;
    v39 = sub_1AC30A9DC();
    v40 = v11;
    sub_1AC205220();
    v42 = sub_1AC309D3C();

    v41 = v36;
    MEMORY[0x1EEE9AC00](v36);
    v33 = v68;
    v34 = v69;
    v35 = v12;
    v57 = sub_1AC309CDC();

    v53 = 6;
    v54 = sub_1AC30A9DC();
    v49 = v13;
    v79 = v68;
    v80 = v69;
    sub_1AC30A9DC();
    sub_1AC30A8AC();
    v50 = sub_1AC215DE8(v67, &unk_1F20F6FA0);
    v51 = v14;
    (*(v66 + 8))(v67, v64);
    v52 = 0;
    memset(&v78[40], 0, 32);

    v45 = 7;
    v15 = swift_allocObject();
    v16 = v77;
    v48 = v15;
    *(v15 + 16) = v76;
    *(v15 + 24) = v16;
    v56 = swift_allocObject();
    v44 = v56 + 16;
    v17 = v70;
    swift_unknownObjectWeakInit();

    v46 = v78;
    sub_1AC241BFC(v59, v78);
    v18 = swift_allocObject();
    v19 = v77;
    v20 = v68;
    v21 = v69;
    v22 = v56;
    v23 = v18;
    v24 = v46;
    v47 = v23;
    v23[2] = v76;
    v23[3] = v19;
    v23[4] = v22;
    v23[5] = v20;
    v23[6] = v21;
    sub_1AC2051E4(v24, v23 + 7);
    v25 = sub_1AC20599C();
    v55 = &v27;
    v35 = v52;
    v34 = v52;
    v33 = v47;
    v32 = sub_1AC2940E8;
    v31 = v48;
    v30 = sub_1AC2930D0;
    v29 = v52;
    v28 = v25 & 1;
    v27 = v52;
    sub_1AC309A9C();

    v58 = sub_1AC309D1C();
    (*(v73 + 8))(v74, v71);

    v60 = sub_1AC309D2C();

    __swift_destroy_boxed_opaque_existential_1(v59);
    return v60;
  }

  else
  {
    sub_1AC204664(&v83);
    v36[1] = 0;
    v36[2] = sub_1AC215CB0();
    v37 = sub_1AC30B18C();
    v38 = v37;

    return v38;
  }
}

uint64_t sub_1AC2921E4(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v54 = a1;
  v24 = a2;
  v23 = a3;
  v33 = a4;
  v61 = 0;
  v59 = 0;
  v60 = 0;
  v58 = 0;
  v21 = 0;
  v49 = sub_1AC30A90C();
  v46 = *(v49 - 8);
  v47 = v49 - 8;
  v22 = (*(v46 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v48 = &v21 - v22;
  v43 = sub_1AC30A8EC();
  v41 = *(v43 - 8);
  v42 = v43 - 8;
  v25 = (*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v54);
  v45 = &v21 - v25;
  v26 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v21 - v26;
  v27 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v44 = &v21 - v27;
  v61 = v8;
  v59 = v9;
  v60 = v10;
  v58 = v11;
  v38 = v57;
  v57[0] = v9;
  v57[1] = v10;
  sub_1AC30A8DC();
  v37 = 1;
  sub_1AC30A9DC();
  v28 = v12;
  sub_1AC30A8CC();

  v30 = v33[3];
  v29 = v33[4];
  __swift_project_boxed_opaque_existential_1(v33, v30);
  (*(*(v29 + 8) + 8))(v30);
  v31 = v13;
  sub_1AC30A8BC();

  sub_1AC30A9DC();
  v32 = v14;
  sub_1AC30A8CC();

  v35 = v33[3];
  v34 = v33[4];
  __swift_project_boxed_opaque_existential_1(v33, v35);
  (*(*(v34 + 8) + 24))(v35);
  v36 = v15;
  sub_1AC30A8BC();

  sub_1AC30A9DC();
  v39 = v16;
  sub_1AC30A8CC();

  (*(v41 + 16))(v40, v44, v43);
  (*(v41 + 32))(v45, v40, v43);
  (*(v41 + 8))(v44, v43);
  sub_1AC30A8FC();
  v50 = sub_1AC215DE8(v48, &unk_1F20F6FA0);
  v51 = v17;
  (*(v46 + 8))(v48, v49);
  v56 = sub_1AC30A91C();

  v53 = *MEMORY[0x1E69C5900];
  MEMORY[0x1E69E5928](v53);
  sub_1AC30A92C();
  v52 = v18;
  v55 = sub_1AC30A91C();

  *&v19 = MEMORY[0x1E69E5920](v53).n128_u64[0];
  [v54 setProperty:v56 forKey:{v55, v19}];
  MEMORY[0x1E69E5920](v55);
  return swift_unknownObjectRelease();
}

uint64_t sub_1AC2926E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v68 = a1;
  v67 = a2;
  v66 = a3;
  v60 = sub_1AC257A24;
  v61 = sub_1AC248118;
  v62 = sub_1AC215C90;
  v63 = sub_1AC215C90;
  v64 = sub_1AC2482A8;
  v91[1] = *MEMORY[0x1E69E9840];
  v86 = 0;
  v84 = 0;
  v85 = 0;
  v83 = 0;
  v80 = 0;
  v79 = 0;
  v65 = 0;
  v69 = sub_1AC309E6C();
  v70 = *(v69 - 8);
  v71 = v69 - 8;
  v72 = (*(v70 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v68);
  v73 = v23 - v72;
  v86 = v3;
  v84 = v4;
  v85 = v5;
  v91[0] = 0;
  v74 = *sub_1AC291924();
  MEMORY[0x1E69E5928](v74);
  if (v74)
  {
    v59 = v74;
    v55 = v74;

    v54 = sub_1AC30A91C();

    v75 = v91[0];
    v56 = [v55 isSmartChargingCurrentlyEnabledForDevice:v54 withError:&v75];
    v53 = v75;
    MEMORY[0x1E69E5928](v75);
    v6 = v91[0];
    v91[0] = v53;
    MEMORY[0x1E69E5920](v6);
    MEMORY[0x1E69E5920](v54);
    MEMORY[0x1E69E5920](v55);
    v57 = v56;
    v58 = 0;
  }

  else
  {
    v57 = 0;
    v58 = 1;
  }

  v89 = v57;
  v90 = v58 & 1;
  if (v58)
  {
    v52 = 0;
  }

  else
  {
    v52 = v89;
  }

  v50 = v52;
  v83 = v52;
  v51 = v91[0];
  MEMORY[0x1E69E5928](v91[0]);
  if (v51)
  {
    v49 = v51;
    v7 = v73;
    v35 = v51;
    v79 = v51;
    v8 = sub_1AC250850();
    (*(v70 + 16))(v7, v8, v69);
    MEMORY[0x1E69E5928](v35);
    v38 = 7;
    v39 = swift_allocObject();
    *(v39 + 16) = v35;
    v47 = sub_1AC309E4C();
    v48 = sub_1AC30AD1C();
    v36 = 17;
    v41 = swift_allocObject();
    *(v41 + 16) = 64;
    v42 = swift_allocObject();
    *(v42 + 16) = 8;
    v37 = 32;
    v9 = swift_allocObject();
    v10 = v39;
    v40 = v9;
    *(v9 + 16) = v60;
    *(v9 + 24) = v10;
    v11 = swift_allocObject();
    v12 = v40;
    v44 = v11;
    *(v11 + 16) = v61;
    *(v11 + 24) = v12;
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8);
    v43 = sub_1AC30B18C();
    v45 = v13;

    v14 = v41;
    v15 = v45;
    *v45 = v62;
    v15[1] = v14;

    v16 = v42;
    v17 = v45;
    v45[2] = v63;
    v17[3] = v16;

    v18 = v44;
    v19 = v45;
    v45[4] = v64;
    v19[5] = v18;
    sub_1AC206300();

    if (os_log_type_enabled(v47, v48))
    {
      v20 = v65;
      v28 = sub_1AC30AE6C();
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8);
      v29 = sub_1AC213EE4(1);
      v30 = sub_1AC213EE4(0);
      v31 = &v78;
      v78 = v28;
      v32 = &v88;
      v88 = v29;
      v33 = &v87;
      v87 = v30;
      sub_1AC213F38(2, &v78);
      sub_1AC213F38(1, v31);
      v76 = v62;
      v77 = v41;
      sub_1AC213F4C(&v76, v31, v32, v33);
      v34 = v20;
      if (v20)
      {

        __break(1u);
      }

      else
      {
        v76 = v63;
        v77 = v42;
        sub_1AC213F4C(&v76, &v78, &v88, &v87);
        v26 = 0;
        v76 = v64;
        v77 = v44;
        sub_1AC213F4C(&v76, &v78, &v88, &v87);
        _os_log_impl(&dword_1AC1C3000, v47, v48, "SmartChargeClient: error %@", v28, 0xCu);
        sub_1AC213F98(v29);
        sub_1AC213F98(v30);
        sub_1AC30AE4C();
      }
    }

    else
    {
    }

    v21 = MEMORY[0x1E69E5920](v47);
    (*(v70 + 8))(v73, v69, v21);
    MEMORY[0x1E69E5920](v35);
  }

  v23[2] = &v82;
  v82 = v50;
  v23[0] = &v81;
  v81 = 1;
  v23[3] = 0;
  v23[1] = type metadata accessor for PowerUISmartChargingState();
  sub_1AC297660();
  v24 = sub_1AC30B1BC();
  v80 = v24 & 1;
  sub_1AC2068B8();
  v25 = sub_1AC30ADEC();
  sub_1AC206988(v91);
  return v25;
}

double sub_1AC2930DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v158 = a1;
  v148 = a2;
  v142 = a3;
  v143 = a4;
  v144 = a5;
  v145 = a6;
  v146 = a7;
  v147 = a8;
  v129 = sub_1AC2973FC;
  v130 = sub_1AC29740C;
  v131 = sub_1AC29741C;
  v132 = "Fatal error";
  v133 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v134 = "HeadphoneSettingsUI/OptimizedBatteryFeature.swift";
  v135 = sub_1AC297424;
  v187 = 0;
  v186 = 0;
  v184 = 0;
  v185 = 0;
  v183 = 0;
  v181 = 0;
  v182 = 0;
  v180 = 0;
  v179 = 0;
  v178 = 0;
  v175 = 0;
  v172 = 0;
  v136 = 0;
  v137 = sub_1AC30A90C();
  v138 = *(v137 - 8);
  v139 = v137 - 8;
  v140 = (*(v138 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v141 = v52 - v140;
  v149 = sub_1AC30A8EC();
  v150 = *(v149 - 8);
  v151 = v149 - 8;
  v152 = (v150[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v158);
  v153 = v52 - v152;
  v154 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v155 = v52 - v154;
  v156 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v157 = v52 - v156;
  v187 = v12;
  v186 = v13;
  v184 = v14;
  v185 = v15;
  v183 = v16 + 16;
  v181 = v17;
  v182 = v18;
  v180 = v19;
  swift_unknownObjectRetain();
  objc_opt_self();
  v159 = swift_dynamicCastObjCClass();
  if (v159)
  {
    v128 = v159;
  }

  else
  {
    swift_unknownObjectRelease();
    v128 = 0;
  }

  v127 = v128;
  if (v128)
  {
    v126 = v127;
    v125 = v127;
    v179 = v127;
    v21 = [v127 BOOLValue];
    v178 = v21 & 1;
    if (v21)
    {
      v124 = *sub_1AC291924();
      MEMORY[0x1E69E5928](v124);
      if (v124)
      {
        v123 = v124;
        v122 = v124;

        v121 = sub_1AC30A91C();

        v165 = v135;
        v166 = v144;
        v160 = MEMORY[0x1E69E9820];
        v161 = 1107296256;
        v162 = 0;
        v163 = sub_1AC246C78;
        v164 = &block_descriptor_6;
        v120 = _Block_copy(&v160);

        [v122 enableSmartChargingForDevice:v121 withHandler:v120];
        _Block_release(v120);
        MEMORY[0x1E69E5920](v121);
        MEMORY[0x1E69E5920](v122);
      }
    }

    else
    {
      v114 = 0;
      v92 = sub_1AC21E88C();
      v78 = v177;
      v177[0] = v145;
      v177[1] = v146;
      v97 = 1;
      sub_1AC30A8DC();
      v105 = 6;
      v106 = 1;
      sub_1AC30A9DC();
      v74 = v22;
      sub_1AC30A8CC();

      v76 = v147[3];
      v75 = v147[4];
      __swift_project_boxed_opaque_existential_1(v147, v76);
      (*(*(v75 + 8) + 8))(v76);
      v77 = v23;
      sub_1AC30A8BC();

      sub_1AC30A9DC();
      v79 = v24;
      sub_1AC30A8CC();

      v87 = v150[2];
      v86 = v150 + 2;
      v87(v155, v157, v149);
      v89 = v150[4];
      v88 = v150 + 4;
      v89(v153, v155, v149);
      v91 = v150[1];
      v90 = v150 + 1;
      v91(v157, v149);
      sub_1AC30A8FC();
      v107 = &unk_1F20F6FA0;
      v108 = &off_1F20F6F30;
      v93 = sub_1AC215DE8(v141, &unk_1F20F6FA0);
      v94 = v25;
      v111 = *(v138 + 8);
      v110 = v138 + 8;
      v111(v141, v137);
      v84 = v176;
      v176[0] = v145;
      v176[1] = v146;
      sub_1AC30A8DC();
      sub_1AC30A9DC();
      v80 = v26;
      sub_1AC30A8CC();

      v82 = v147[3];
      v81 = v147[4];
      __swift_project_boxed_opaque_existential_1(v147, v82);
      (*(*(v81 + 8) + 8))(v82);
      v83 = v27;
      sub_1AC30A8BC();

      sub_1AC30A9DC();
      v85 = v28;
      sub_1AC30A8CC();

      v87(v155, v157, v149);
      v89(v153, v155, v149);
      v91(v157, v149);
      sub_1AC30A8FC();
      v95 = sub_1AC215DE8(v141, v107);
      v96 = v29;
      v111(v141, v137);
      v117 = sub_1AC21CFE0(v93, v94, v95, v96, v97);
      v175 = v117;
      v109 = sub_1AC21E8F0();
      v173 = v145;
      v174 = v146;
      sub_1AC30A9DC();
      sub_1AC30A8AC();
      v99 = sub_1AC215DE8(v141, v107);
      v98 = v30;
      v111(v141, v137);

      v100 = 40;
      v101 = 7;
      v31 = swift_allocObject();
      v32 = v98;
      v33 = v129;
      v34 = v143;
      v35 = v114;
      v36 = v144;
      v37 = v31;
      v38 = v99;
      v37[2] = v142;
      v37[3] = v34;
      v37[4] = v36;
      v118 = sub_1AC21E3FC(v38, v32, v35, v33, v37);
      v172 = v118;
      v115 = 0x1FAE81000uLL;
      [v117 0x1FAE81FF8];
      v171[6] = v145;
      v171[7] = v146;
      sub_1AC30A9DC();
      sub_1AC30A8AC();
      v103 = sub_1AC215DE8(v141, v107);
      v102 = v39;
      v111(v141, v137);

      v40 = swift_allocObject();
      v41 = v143;
      v42 = v102;
      v43 = v130;
      v44 = v114;
      v45 = v144;
      v46 = v40;
      v47 = v103;
      v46[2] = v142;
      v46[3] = v41;
      v46[4] = v45;
      v104 = sub_1AC21E3FC(v47, v42, v44, v43, v46);
      [v117 (v115 + 4088)];
      MEMORY[0x1E69E5920](v104);
      v171[4] = v145;
      v171[5] = v146;
      sub_1AC30A9DC();
      sub_1AC30A8AC();
      v112 = sub_1AC215DE8(v141, v107);
      v113 = v48;
      v111(v141, v137);

      v116 = sub_1AC21E3FC(v112, v113, v114, v131, v144);
      [v117 (v115 + 4088)];
      MEMORY[0x1E69E5920](v116);
      *&v49 = MEMORY[0x1E69E5928](v118).n128_u64[0];
      [v117 setPreferredAction_];
      MEMORY[0x1E69E5920](v118);
      v119 = v144 + 16;
      swift_beginAccess();
      v171[0] = swift_unknownObjectWeakLoadStrong();
      if (v171[0])
      {
        v72 = v171;
        v73 = v171[0];
        MEMORY[0x1E69E5928](v171[0]);
        sub_1AC206988(v72);
        swift_endAccess();
        [v73 presentViewController:v117 animated:1 completion:0];
        MEMORY[0x1E69E5920](v73);
      }

      else
      {
        sub_1AC206988(v171);
        swift_endAccess();
      }

      v71 = v144 + 16;
      swift_beginAccess();
      v170[0] = swift_unknownObjectWeakLoadStrong();
      if (v170[0])
      {
        v68 = v170;
        v69 = v170[0];
        MEMORY[0x1E69E5928](v170[0]);
        sub_1AC206988(v68);
        swift_endAccess();
        v70 = *(v69 + OBJC_IVAR____TtC19HeadphoneSettingsUI27HeadphoneSettingsController_deviceAnalytics);
        MEMORY[0x1E69E5928](v70);
        *&v50 = MEMORY[0x1E69E5920](v69).n128_u64[0];
        [v70 updateFeatureChangeCount_];
        MEMORY[0x1E69E5920](v70);
      }

      else
      {
        sub_1AC206988(v170);
        swift_endAccess();
      }

      v67 = v144 + 16;
      swift_beginAccess();
      v169[0] = swift_unknownObjectWeakLoadStrong();
      if (v169[0])
      {
        v64 = v169;
        v66 = v169[0];
        MEMORY[0x1E69E5928](v169[0]);
        sub_1AC206988(v64);
        swift_endAccess();
        v65 = *(v66 + OBJC_IVAR____TtC19HeadphoneSettingsUI27HeadphoneSettingsController_deviceAnalytics);
        MEMORY[0x1E69E5928](v65);
        MEMORY[0x1E69E5920](v66);
        swift_getObjectType();
        swift_unknownObjectRetain();
        if ([v158 respondsToSelector_])
        {
          swift_unknownObjectRetain();
          v168 = [v158 BOOLValue];
          swift_unknownObjectRelease();
        }

        else
        {
          v168 = 2;
        }

        v63 = v168;
        if (v168 == 2)
        {
          sub_1AC30B05C();
          __break(1u);
        }

        else
        {
          v62 = v63;
        }

        v61 = v62;
        swift_unknownObjectRelease();
        v60 = (v61 & 1) != 0;
        v59 = v60;
        swift_getObjectType();
        swift_unknownObjectRetain();
        if ([v158 respondsToSelector_])
        {
          swift_unknownObjectRetain();
          v167 = [v158 BOOLValue];
          swift_unknownObjectRelease();
        }

        else
        {
          v167 = 2;
        }

        v58 = v167;
        if (v167 == 2)
        {
          sub_1AC30B05C();
          __break(1u);
        }

        else
        {
          v57 = v58;
        }

        v56 = v57;
        swift_unknownObjectRelease();
        v54 = sub_1AC30A9DC();
        v55 = v51;
        v52[1] = v51;
        v53 = sub_1AC30A91C();

        [v65 updateFeatureValue:41 value:v59 featureValueString:v53];
        MEMORY[0x1E69E5920](v53);
        MEMORY[0x1E69E5920](v65);
      }

      else
      {
        sub_1AC206988(v169);
        swift_endAccess();
      }

      MEMORY[0x1E69E5920](v118);
      MEMORY[0x1E69E5920](v117);
    }

    *&result = MEMORY[0x1E69E5920](v125).n128_u64[0];
  }

  return result;
}

void sub_1AC294104(int a1, void *a2, uint64_t a3)
{
  v66 = a1;
  v60 = a2;
  v59 = a3;
  v53 = sub_1AC297494;
  v54 = sub_1AC215C98;
  v55 = sub_1AC215C90;
  v56 = sub_1AC215C90;
  v57 = sub_1AC215CA4;
  v76 = 0;
  v75 = 0;
  v74 = 0;
  v58 = 0;
  v61 = sub_1AC309E6C();
  v62 = *(v61 - 8);
  v63 = v61 - 8;
  v64 = (*(v62 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v60);
  v65 = v24 - v64;
  v76 = v3 & 1;
  v75 = v4;
  v74 = v5 + 16;
  v6 = v4;
  if (v66)
  {
    v67 = v60;
    v52 = v60 != 0;
    v51 = v52;
  }

  else
  {
    v51 = 0;
  }

  v50 = v51;

  if (v50)
  {
    v49 = v59 + 16;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      p_Strong = &Strong;
      v48 = Strong;
      MEMORY[0x1E69E5928](Strong);
      sub_1AC206988(p_Strong);
      swift_endAccess();
      sub_1AC30A9DC();
      v46 = v7;
      v47 = sub_1AC30A91C();

      [v48 reloadSpecifierID_];
      MEMORY[0x1E69E5920](v47);
      MEMORY[0x1E69E5920](v48);
    }

    else
    {
      sub_1AC206988(&Strong);
      swift_endAccess();
    }
  }

  else
  {
    v8 = v65;
    v9 = sub_1AC250850();
    (*(v62 + 16))(v8, v9, v61);
    v10 = v60;
    v34 = 7;
    v35 = swift_allocObject();
    *(v35 + 16) = v60;
    v43 = sub_1AC309E4C();
    v44 = sub_1AC30AD2C();
    v32 = 17;
    v37 = swift_allocObject();
    *(v37 + 16) = 32;
    v38 = swift_allocObject();
    *(v38 + 16) = 8;
    v33 = 32;
    v11 = swift_allocObject();
    v12 = v35;
    v36 = v11;
    *(v11 + 16) = v53;
    *(v11 + 24) = v12;
    v13 = swift_allocObject();
    v14 = v36;
    v40 = v13;
    *(v13 + 16) = v54;
    *(v13 + 24) = v14;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8);
    v39 = sub_1AC30B18C();
    v41 = v15;

    v16 = v37;
    v17 = v41;
    *v41 = v55;
    v17[1] = v16;

    v18 = v38;
    v19 = v41;
    v41[2] = v56;
    v19[3] = v18;

    v20 = v40;
    v21 = v41;
    v41[4] = v57;
    v21[5] = v20;
    sub_1AC206300();

    if (os_log_type_enabled(v43, v44))
    {
      v22 = v58;
      v25 = sub_1AC30AE6C();
      v24[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8);
      v26 = sub_1AC213EE4(0);
      v27 = sub_1AC213EE4(1);
      v28 = &v73;
      v73 = v25;
      v29 = &v72;
      v72 = v26;
      v30 = &v71;
      v71 = v27;
      sub_1AC213F38(2, &v73);
      sub_1AC213F38(1, v28);
      v69 = v55;
      v70 = v37;
      sub_1AC213F4C(&v69, v28, v29, v30);
      v31 = v22;
      if (v22)
      {

        __break(1u);
      }

      else
      {
        v69 = v56;
        v70 = v38;
        sub_1AC213F4C(&v69, &v73, &v72, &v71);
        v24[1] = 0;
        v69 = v57;
        v70 = v40;
        sub_1AC213F4C(&v69, &v73, &v72, &v71);
        _os_log_impl(&dword_1AC1C3000, v43, v44, "OBC: Turn on smart charing failed %s", v25, 0xCu);
        sub_1AC213F98(v26);
        sub_1AC213F98(v27);
        sub_1AC30AE4C();
      }
    }

    else
    {
    }

    v23 = MEMORY[0x1E69E5920](v43);
    (*(v62 + 8))(v65, v61, v23);
  }
}

uint64_t sub_1AC294930(void *a1)
{
  v1 = a1;
  if (a1)
  {
    swift_getErrorValue();
    v4 = sub_1AC30B21C();
    v5 = v2;

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

  else
  {
    return sub_1AC30A9DC();
  }
}

void sub_1AC294A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a4;
  v41 = a3;
  v44 = a2;
  v43 = a1;
  v54 = 0;
  v73 = 0;
  v72 = 0;
  v71 = 0;
  v70 = 0;
  v40 = 0;
  v51 = sub_1AC309E6C();
  v45 = v51;
  v46 = *(v51 - 8);
  v50 = v46;
  v47 = v46;
  MEMORY[0x1EEE9AC00](v43);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v5;
  v73 = v6;
  v71 = v7;
  v72 = v8;
  v49 = v9 + 16;
  v70 = v9 + 16;
  v10 = sub_1AC250850();
  (*(v50 + 16))(v5, v10, v51);
  v56 = sub_1AC309E4C();
  v52 = v56;
  v55 = sub_1AC30AD2C();
  v53 = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8);
  v57 = sub_1AC30B18C();
  if (os_log_type_enabled(v56, v55))
  {
    v11 = v40;
    v31 = sub_1AC30AE6C();
    v27 = v31;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8);
    v29 = 0;
    v32 = sub_1AC213EE4(0);
    v30 = v32;
    v33 = sub_1AC213EE4(v29);
    v61 = v31;
    v60 = v32;
    v59 = v33;
    v34 = 0;
    v35 = &v61;
    sub_1AC213F38(0, &v61);
    sub_1AC213F38(v34, v35);
    v58 = v57;
    v36 = v16;
    MEMORY[0x1EEE9AC00](v16);
    v37 = &v16[-6];
    v16[-4] = v12;
    v16[-3] = &v60;
    v16[-2] = &v59;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BD08);
    sub_1AC218014();
    sub_1AC30AAAC();
    v39 = v11;
    if (v11)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1AC1C3000, v52, v53, "OBC: User turned off smart charing temopary until tomorrow", v27, 2u);
      v25 = 0;
      sub_1AC213F98(v30);
      sub_1AC213F98(v33);
      sub_1AC30AE4C();

      v26 = v39;
    }
  }

  else
  {

    v26 = v40;
  }

  (*(v47 + 8))(v48, v45);
  v24 = *sub_1AC291924();
  v23 = v24;
  v13 = v24;
  if (v24)
  {
    v22 = v23;
    v21 = v23;

    v20 = sub_1AC30A91C();

    v67 = sub_1AC2950EC;
    v68 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v63 = 1107296256;
    v64 = 0;
    v65 = sub_1AC246C78;
    v66 = &block_descriptor_58;
    v19 = _Block_copy(&aBlock);
    [v21 temporarilyDisableSmartChargingForDevice:v20 withHandler:?];
    _Block_release(v19);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v14 = Strong;
    sub_1AC206988(&Strong);
    swift_endAccess();
    sub_1AC30A9DC();
    v16[1] = v15;
    v17 = sub_1AC30A91C();

    [v18 reloadSpecifierID_];
  }

  else
  {
    sub_1AC206988(&Strong);
    swift_endAccess();
  }
}

uint64_t sub_1AC2950EC(int a1, void *a2)
{
  v91 = a2;
  v99 = a1;
  v111 = 0;
  v110 = 0;
  v90 = 0;
  v92 = sub_1AC309E6C();
  v93 = *(v92 - 8);
  v94 = v93;
  v95 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v97 = (v95 + 15) & 0xFFFFFFFFFFFFFFF0;
  v96 = &v29 - v97;
  MEMORY[0x1EEE9AC00](v2);
  v98 = &v29 - v97;
  v111 = v3;
  v110 = v4;
  v5 = v4;
  if (v99)
  {
    v100 = v91;
    v89 = v91 != 0;
    v88 = v89;
  }

  else
  {
    v88 = 0;
  }

  v87 = v88;

  if (v87)
  {
    v6 = v98;
    v7 = sub_1AC250850();
    (*(v94 + 16))(v6, v7, v92);
    v85 = sub_1AC309E4C();
    v82 = v85;
    v84 = sub_1AC30AD2C();
    v83 = v84;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8);
    v86 = sub_1AC30B18C();
    if (os_log_type_enabled(v85, v84))
    {
      v8 = v90;
      v73 = sub_1AC30AE6C();
      v69 = v73;
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8);
      v71 = 0;
      v74 = sub_1AC213EE4(0);
      v72 = v74;
      v75 = sub_1AC213EE4(v71);
      v104 = v73;
      v103 = v74;
      v102 = v75;
      v76 = 0;
      v77 = &v104;
      sub_1AC213F38(0, &v104);
      sub_1AC213F38(v76, v77);
      v101 = v86;
      v78 = &v29;
      MEMORY[0x1EEE9AC00](&v29);
      v79 = &v29 - 6;
      *(&v29 - 4) = v9;
      *(&v29 - 3) = &v103;
      *(&v29 - 2) = &v102;
      v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BD08);
      sub_1AC218014();
      sub_1AC30AAAC();
      v81 = v8;
      if (v8)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1AC1C3000, v82, v83, "OBC: Smart charging temporarily disabled", v69, 2u);
        v67 = 0;
        sub_1AC213F98(v72);
        sub_1AC213F98(v75);
        sub_1AC30AE4C();

        v68 = v81;
      }
    }

    else
    {

      v68 = v90;
    }

    v65 = v68;

    (*(v94 + 8))(v98, v92);
    return v65;
  }

  else
  {
    v10 = v96;
    v11 = sub_1AC250850();
    (*(v94 + 16))(v10, v11, v92);
    v12 = v91;
    v53 = 7;
    v54 = swift_allocObject();
    *(v54 + 16) = v91;
    v64 = sub_1AC309E4C();
    v46 = v64;
    v63 = sub_1AC30AD2C();
    v47 = v63;
    v48 = 17;
    v57 = swift_allocObject();
    v49 = v57;
    v50 = 32;
    *(v57 + 16) = 32;
    v13 = swift_allocObject();
    v14 = v50;
    v58 = v13;
    v51 = v13;
    *(v13 + 16) = 8;
    v52 = v14;
    v15 = swift_allocObject();
    v16 = v54;
    v55 = v15;
    *(v15 + 16) = sub_1AC297494;
    *(v15 + 24) = v16;
    v17 = swift_allocObject();
    v18 = v55;
    v61 = v17;
    v56 = v17;
    *(v17 + 16) = sub_1AC215C98;
    *(v17 + 24) = v18;
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8);
    v59 = sub_1AC30B18C();
    v60 = v19;

    v20 = v57;
    v21 = v60;
    *v60 = sub_1AC215C90;
    v21[1] = v20;

    v22 = v58;
    v23 = v60;
    v60[2] = sub_1AC215C90;
    v23[3] = v22;

    v24 = v60;
    v25 = v61;
    v60[4] = sub_1AC215CA4;
    v24[5] = v25;
    sub_1AC206300();

    if (os_log_type_enabled(v64, v63))
    {
      v26 = v90;
      v39 = sub_1AC30AE6C();
      v36 = v39;
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8);
      v40 = sub_1AC213EE4(0);
      v38 = v40;
      v42 = 1;
      v41 = sub_1AC213EE4(1);
      v109 = v39;
      v108 = v40;
      v107 = v41;
      v43 = &v109;
      sub_1AC213F38(2, &v109);
      sub_1AC213F38(v42, v43);
      v105 = sub_1AC215C90;
      v106 = v49;
      sub_1AC213F4C(&v105, v43, &v108, &v107);
      v44 = v26;
      v45 = v26;
      if (v26)
      {
        v34 = 0;

        __break(1u);
      }

      else
      {
        v105 = sub_1AC215C90;
        v106 = v51;
        sub_1AC213F4C(&v105, &v109, &v108, &v107);
        v32 = 0;
        v33 = 0;
        v105 = sub_1AC215CA4;
        v106 = v56;
        sub_1AC213F4C(&v105, &v109, &v108, &v107);
        v30 = 0;
        v31 = 0;
        _os_log_impl(&dword_1AC1C3000, v46, v47, "OBC: Turn off temopary until tomorrow failed %s", v36, 0xCu);
        sub_1AC213F98(v38);
        sub_1AC213F98(v41);
        sub_1AC30AE4C();

        v35 = v30;
      }
    }

    else
    {
      v27 = v90;

      v35 = v27;
    }

    v29 = v35;

    (*(v94 + 8))(v96, v92);
    return v29;
  }
}

void sub_1AC295C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a4;
  v41 = a3;
  v44 = a2;
  v43 = a1;
  v54 = 0;
  v73 = 0;
  v72 = 0;
  v71 = 0;
  v70 = 0;
  v40 = 0;
  v51 = sub_1AC309E6C();
  v45 = v51;
  v46 = *(v51 - 8);
  v50 = v46;
  v47 = v46;
  MEMORY[0x1EEE9AC00](v43);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v5;
  v73 = v6;
  v71 = v7;
  v72 = v8;
  v49 = v9 + 16;
  v70 = v9 + 16;
  v10 = sub_1AC250850();
  (*(v50 + 16))(v5, v10, v51);
  v56 = sub_1AC309E4C();
  v52 = v56;
  v55 = sub_1AC30AD2C();
  v53 = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8);
  v57 = sub_1AC30B18C();
  if (os_log_type_enabled(v56, v55))
  {
    v11 = v40;
    v31 = sub_1AC30AE6C();
    v27 = v31;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8);
    v29 = 0;
    v32 = sub_1AC213EE4(0);
    v30 = v32;
    v33 = sub_1AC213EE4(v29);
    v61 = v31;
    v60 = v32;
    v59 = v33;
    v34 = 0;
    v35 = &v61;
    sub_1AC213F38(0, &v61);
    sub_1AC213F38(v34, v35);
    v58 = v57;
    v36 = v16;
    MEMORY[0x1EEE9AC00](v16);
    v37 = &v16[-6];
    v16[-4] = v12;
    v16[-3] = &v60;
    v16[-2] = &v59;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BD08);
    sub_1AC218014();
    sub_1AC30AAAC();
    v39 = v11;
    if (v11)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1AC1C3000, v52, v53, "OBC: User turned off smart charing", v27, 2u);
      v25 = 0;
      sub_1AC213F98(v30);
      sub_1AC213F98(v33);
      sub_1AC30AE4C();

      v26 = v39;
    }
  }

  else
  {

    v26 = v40;
  }

  (*(v47 + 8))(v48, v45);
  v24 = *sub_1AC291924();
  v23 = v24;
  v13 = v24;
  if (v24)
  {
    v22 = v23;
    v21 = v23;

    v20 = sub_1AC30A91C();

    v67 = sub_1AC2962AC;
    v68 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v63 = 1107296256;
    v64 = 0;
    v65 = sub_1AC246C78;
    v66 = &block_descriptor_31;
    v19 = _Block_copy(&aBlock);
    [v21 disableSmartChargingForDevice:v20 withHandler:?];
    _Block_release(v19);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v14 = Strong;
    sub_1AC206988(&Strong);
    swift_endAccess();
    sub_1AC30A9DC();
    v16[1] = v15;
    v17 = sub_1AC30A91C();

    [v18 reloadSpecifierID_];
  }

  else
  {
    sub_1AC206988(&Strong);
    swift_endAccess();
  }
}

uint64_t sub_1AC2962AC(int a1, void *a2)
{
  v91 = a2;
  v99 = a1;
  v111 = 0;
  v110 = 0;
  v90 = 0;
  v92 = sub_1AC309E6C();
  v93 = *(v92 - 8);
  v94 = v93;
  v95 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v97 = (v95 + 15) & 0xFFFFFFFFFFFFFFF0;
  v96 = &v29 - v97;
  MEMORY[0x1EEE9AC00](v2);
  v98 = &v29 - v97;
  v111 = v3;
  v110 = v4;
  v5 = v4;
  if (v99)
  {
    v100 = v91;
    v89 = v91 != 0;
    v88 = v89;
  }

  else
  {
    v88 = 0;
  }

  v87 = v88;

  if (v87)
  {
    v6 = v98;
    v7 = sub_1AC250850();
    (*(v94 + 16))(v6, v7, v92);
    v85 = sub_1AC309E4C();
    v82 = v85;
    v84 = sub_1AC30AD2C();
    v83 = v84;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8);
    v86 = sub_1AC30B18C();
    if (os_log_type_enabled(v85, v84))
    {
      v8 = v90;
      v73 = sub_1AC30AE6C();
      v69 = v73;
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8);
      v71 = 0;
      v74 = sub_1AC213EE4(0);
      v72 = v74;
      v75 = sub_1AC213EE4(v71);
      v104 = v73;
      v103 = v74;
      v102 = v75;
      v76 = 0;
      v77 = &v104;
      sub_1AC213F38(0, &v104);
      sub_1AC213F38(v76, v77);
      v101 = v86;
      v78 = &v29;
      MEMORY[0x1EEE9AC00](&v29);
      v79 = &v29 - 6;
      *(&v29 - 4) = v9;
      *(&v29 - 3) = &v103;
      *(&v29 - 2) = &v102;
      v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BD08);
      sub_1AC218014();
      sub_1AC30AAAC();
      v81 = v8;
      if (v8)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1AC1C3000, v82, v83, "OBC: Smart charging disabled", v69, 2u);
        v67 = 0;
        sub_1AC213F98(v72);
        sub_1AC213F98(v75);
        sub_1AC30AE4C();

        v68 = v81;
      }
    }

    else
    {

      v68 = v90;
    }

    v65 = v68;

    (*(v94 + 8))(v98, v92);
    return v65;
  }

  else
  {
    v10 = v96;
    v11 = sub_1AC250850();
    (*(v94 + 16))(v10, v11, v92);
    v12 = v91;
    v53 = 7;
    v54 = swift_allocObject();
    *(v54 + 16) = v91;
    v64 = sub_1AC309E4C();
    v46 = v64;
    v63 = sub_1AC30AD2C();
    v47 = v63;
    v48 = 17;
    v57 = swift_allocObject();
    v49 = v57;
    v50 = 32;
    *(v57 + 16) = 32;
    v13 = swift_allocObject();
    v14 = v50;
    v58 = v13;
    v51 = v13;
    *(v13 + 16) = 8;
    v52 = v14;
    v15 = swift_allocObject();
    v16 = v54;
    v55 = v15;
    *(v15 + 16) = sub_1AC297494;
    *(v15 + 24) = v16;
    v17 = swift_allocObject();
    v18 = v55;
    v61 = v17;
    v56 = v17;
    *(v17 + 16) = sub_1AC215C98;
    *(v17 + 24) = v18;
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8);
    v59 = sub_1AC30B18C();
    v60 = v19;

    v20 = v57;
    v21 = v60;
    *v60 = sub_1AC215C90;
    v21[1] = v20;

    v22 = v58;
    v23 = v60;
    v60[2] = sub_1AC215C90;
    v23[3] = v22;

    v24 = v60;
    v25 = v61;
    v60[4] = sub_1AC215CA4;
    v24[5] = v25;
    sub_1AC206300();

    if (os_log_type_enabled(v64, v63))
    {
      v26 = v90;
      v39 = sub_1AC30AE6C();
      v36 = v39;
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8);
      v40 = sub_1AC213EE4(0);
      v38 = v40;
      v42 = 1;
      v41 = sub_1AC213EE4(1);
      v109 = v39;
      v108 = v40;
      v107 = v41;
      v43 = &v109;
      sub_1AC213F38(2, &v109);
      sub_1AC213F38(v42, v43);
      v105 = sub_1AC215C90;
      v106 = v49;
      sub_1AC213F4C(&v105, v43, &v108, &v107);
      v44 = v26;
      v45 = v26;
      if (v26)
      {
        v34 = 0;

        __break(1u);
      }

      else
      {
        v105 = sub_1AC215C90;
        v106 = v51;
        sub_1AC213F4C(&v105, &v109, &v108, &v107);
        v32 = 0;
        v33 = 0;
        v105 = sub_1AC215CA4;
        v106 = v56;
        sub_1AC213F4C(&v105, &v109, &v108, &v107);
        v30 = 0;
        v31 = 0;
        _os_log_impl(&dword_1AC1C3000, v46, v47, "OBC: Turned off smart charing failed %s", v36, 0xCu);
        sub_1AC213F98(v38);
        sub_1AC213F98(v41);
        sub_1AC30AE4C();

        v35 = v30;
      }
    }

    else
    {
      v27 = v90;

      v35 = v27;
    }

    v29 = v35;

    (*(v94 + 8))(v96, v92);
    return v29;
  }
}

void sub_1AC296DCC(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v30 = a1;
  v41 = 0;
  v51 = 0;
  v50 = 0;
  v29 = 0;
  v38 = sub_1AC309E6C();
  v32 = v38;
  v33 = *(v38 - 8);
  v37 = v33;
  v34 = v33;
  MEMORY[0x1EEE9AC00](v30);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v3;
  v51 = v4;
  v36 = v5 + 16;
  v50 = v5 + 16;
  v6 = sub_1AC250850();
  (*(v37 + 16))(v3, v6, v38);
  v43 = sub_1AC309E4C();
  v39 = v43;
  v42 = sub_1AC30AD2C();
  v40 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8);
  v44 = sub_1AC30B18C();
  if (os_log_type_enabled(v43, v42))
  {
    v7 = v29;
    v20 = sub_1AC30AE6C();
    v16 = v20;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8);
    v18 = 0;
    v21 = sub_1AC213EE4(0);
    v19 = v21;
    v22 = sub_1AC213EE4(v18);
    v48 = v20;
    v47 = v21;
    v46 = v22;
    v23 = 0;
    v24 = &v48;
    sub_1AC213F38(0, &v48);
    sub_1AC213F38(v23, v24);
    v45 = v44;
    v25 = v11;
    MEMORY[0x1EEE9AC00](v11);
    v26 = &v11[-6];
    v11[-4] = v8;
    v11[-3] = &v47;
    v11[-2] = &v46;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BD08);
    sub_1AC218014();
    sub_1AC30AAAC();
    v28 = v7;
    if (v7)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1AC1C3000, v39, v40, "OBC: User left smart charing on", v16, 2u);
      v14 = 0;
      sub_1AC213F98(v19);
      sub_1AC213F98(v22);
      sub_1AC30AE4C();

      v15 = v28;
    }
  }

  else
  {

    v15 = v29;
  }

  (*(v34 + 8))(v35, v32);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v9 = Strong;
    sub_1AC206988(&Strong);
    swift_endAccess();
    sub_1AC30A9DC();
    v11[1] = v10;
    v12 = sub_1AC30A91C();

    [v13 reloadSpecifierID_];
  }

  else
  {
    sub_1AC206988(&Strong);
    swift_endAccess();
  }
}

uint64_t sub_1AC2972AC()
{
  v1 = sub_1AC30A9DC();

  sub_1AC2063F0();
  return v1;
}

id sub_1AC297398()
{
  v2 = sub_1AC30A91C();
  v3 = [v1 initWithClientName_];
  MEMORY[0x1E69E5920](v2);

  return v3;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_53(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_56(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t type metadata accessor for PowerUISmartChargingState()
{
  v4 = qword_1EB54C8C0;
  if (!qword_1EB54C8C0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB54C8C0);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_1AC297660()
{
  v2 = qword_1EB54C8B8;
  if (!qword_1EB54C8B8)
  {
    type metadata accessor for PowerUISmartChargingState();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C8B8);
    return WitnessTable;
  }

  return v2;
}

id sub_1AC2976E0(unsigned int a1)
{
  sub_1AC2068B8();
  v1 = sub_1AC20BC98(a1);
  return sub_1AC297728(v1);
}

uint64_t sub_1AC297798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a1;
  v23 = a2;
  v21 = a3;
  v22 = a4;
  v9 = [objc_opt_self() currentDevice];
  v10 = [v9 userInterfaceIdiom];
  MEMORY[0x1E69E5920](v9);
  v20 = v10;
  v19 = 6;
  type metadata accessor for UIUserInterfaceIdiom();
  sub_1AC2979A0();
  if (sub_1AC30A89C())
  {
    v7 = 0;
    v8 = 0;
  }

  else
  {
    sub_1AC30929C();
    if (v12)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C8D0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
      }
    }

    else
    {
      sub_1AC204664(v11);
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
    }

    v5 = v16 != 0;
    v6 = sub_1AC3092FC();
    sub_1AC204664(&v13);
    v7 = v5;
    v8 = v6;
  }

  LOBYTE(v18) = v7;
  HIBYTE(v18) = v8 & 1;
  return v18;
}

unint64_t sub_1AC2979A0()
{
  v2 = qword_1EB54C8C8;
  if (!qword_1EB54C8C8)
  {
    type metadata accessor for UIUserInterfaceIdiom();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C8C8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC297A20(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v51 = a3;
  v53 = a2;
  v45 = a1;
  v46 = 0;
  v73 = 0;
  v72 = 0;
  v71 = 0;
  v70 = 0;
  v47 = sub_1AC30A90C();
  v48 = *(v47 - 8);
  v49 = v48;
  MEMORY[0x1EEE9AC00](0);
  v50 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1AC309AAC();
  v55 = *(v54 - 8);
  v56 = v55;
  MEMORY[0x1EEE9AC00](v54 - 8);
  v57 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = a1;
  v72 = v7;
  v70 = v8;
  v71 = v9;
  sub_1AC30929C();
  if (v63)
  {
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C8D0);
    if (!swift_dynamicCast())
    {
      v64 = 0;
      v65 = 0;
      v66 = 0;
      v67 = 0;
      v68 = 0;
    }
  }

  else
  {
    sub_1AC204664(v62);
    v64 = 0;
    v65 = 0;
    v66 = 0;
    v67 = 0;
    v68 = 0;
  }

  if (v67)
  {
    v41 = __dst;
    sub_1AC2051E4(&v64, __dst);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BB88);
    v29[2] = MEMORY[0x1E69A2B08];
    v29[3] = sub_1AC205220();
    v29[4] = v10;
    sub_1AC205220();
    v37 = sub_1AC309D3C();
    v60 = v51;
    v61 = v52;
    sub_1AC30A9DC();
    sub_1AC30A8AC();
    v33 = sub_1AC215DE8(v50, &unk_1F20F74C8);
    v34 = v11;
    (*(v49 + 8))(v50, v47);
    v12 = v53;
    v35 = 0;
    v59 = type metadata accessor for HeadphoneSettingsController();
    v58 = v53;
    v32 = sub_1AC298084();
    v13 = v45;
    v29[5] = 24;
    v29[6] = 7;
    v14 = swift_allocObject();
    v15 = v45;
    v31 = v14;
    *(v14 + 16) = v45;
    v16 = v15;
    v30 = swift_allocObject();
    *(v30 + 16) = v45;
    v17 = sub_1AC20599C();
    v36 = &v20;
    v28 = v35;
    v27 = v35;
    v26 = v30;
    v25 = sub_1AC298770;
    v24 = v31;
    v23 = sub_1AC298140;
    v22 = v32;
    v21 = v17 & 1;
    v20 = v35;
    sub_1AC309A9C();
    v39 = sub_1AC309D1C();
    (*(v56 + 8))(v57, v54);

    v38 = v29;
    MEMORY[0x1EEE9AC00](v29);
    v26 = v51;
    v27 = v52;
    v28 = v18;
    v40 = sub_1AC309D0C();

    v42 = sub_1AC309D2C();

    __swift_destroy_boxed_opaque_existential_1(v41);
    return v42;
  }

  else
  {
    sub_1AC204664(&v64);
    v29[0] = 0;
    v29[1] = sub_1AC215CB0();
    return sub_1AC30B18C();
  }
}

unint64_t sub_1AC298084()
{
  v2 = qword_1EB54C8D8;
  if (!qword_1EB54C8D8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB54C8D8);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_1AC2980E8()
{
  sub_1AC2068B8();
  v0 = sub_1AC3092CC();
  v1 = sub_1AC20BC98(v0);
  return sub_1AC297728(v1);
}

uint64_t sub_1AC298148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a3;
  v42 = a2;
  v47 = a1;
  v58 = 0;
  v57 = 0;
  v56 = 0;
  v40 = 0;
  v51 = 0;
  v49 = 0;
  v43 = sub_1AC309E6C();
  v44 = *(v43 - 8);
  v45 = v44;
  MEMORY[0x1EEE9AC00](v47);
  v46 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v4;
  v57 = v5;
  v56 = v6;
  swift_unknownObjectRetain();
  objc_opt_self();
  v48 = swift_dynamicCastObjCClass();
  if (v48)
  {
    v39 = v48;
  }

  else
  {
    swift_unknownObjectRelease();
    v39 = 0;
  }

  v38 = v39;
  if (v39)
  {
    v37 = v38;
    v35 = v38;
    v51 = v38;
    v7 = [v38 integerValue];
    v36 = v7;
    if (v7 <= -129)
    {
      sub_1AC30B05C();
      __break(1u);
    }

    if (v36 >= 128)
    {
      sub_1AC30B05C();
      __break(1u);
    }

    v50 = sub_1AC20BC30(v36);
    v34 = v50;
    if ((v50 & 0x100) == 0)
    {
      v33 = v34;
      v49 = v34;
      sub_1AC3092DC();
      sub_1AC30942C();

      return v40;
    }
  }

  v8 = v46;
  v9 = sub_1AC29DCC0();
  (*(v45 + 16))(v8, v9, v43);
  v30 = sub_1AC309E4C();
  v27 = v30;
  v29 = sub_1AC30AD1C();
  v28 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8);
  v31 = sub_1AC30B18C();
  if (os_log_type_enabled(v30, v29))
  {
    v10 = v40;
    v18 = sub_1AC30AE6C();
    v14 = v18;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8);
    v16 = 0;
    v19 = sub_1AC213EE4(0);
    v17 = v19;
    v20 = sub_1AC213EE4(v16);
    v55 = v18;
    v54 = v19;
    v53 = v20;
    v21 = 0;
    v22 = &v55;
    sub_1AC213F38(0, &v55);
    sub_1AC213F38(v21, v22);
    v52 = v31;
    v23 = v12;
    MEMORY[0x1EEE9AC00](v12);
    v24 = &v12[-6];
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BD08);
    sub_1AC218014();
    sub_1AC30AAAC();
    v26 = v10;
    if (v10)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1AC1C3000, v27, v28, "Mic Feature: Invalid microphone mode:", v14, 2u);
      v12[1] = 0;
      sub_1AC213F98(v17);
      sub_1AC213F98(v20);
      sub_1AC30AE4C();

      v13 = v26;
    }
  }

  else
  {

    v13 = v40;
  }

  v12[0] = v13;

  (*(v45 + 8))(v46, v43);
  return v12[0];
}

uint64_t sub_1AC298778(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v133 = a1;
  v109 = a2;
  v110 = a3;
  v84 = a4;
  v155 = 0;
  v153 = 0;
  v154 = 0;
  v152 = 0;
  v148 = 0;
  v141 = 0;
  v140 = 0;
  v122 = 0;
  v117 = sub_1AC30A90C();
  v69 = *(v117 - 8);
  v70 = v117 - 8;
  v56 = (*(v69 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v116 = &v55 - v56;
  v96 = sub_1AC30A8EC();
  v67 = *(v96 - 8);
  v68 = v96 - 8;
  v57 = (v67[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v133);
  v100 = &v55 - v57;
  v58 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v93 = &v55 - v58;
  v59 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v99 = &v55 - v59;
  v155 = v8;
  v153 = v9;
  v154 = v10;
  v152 = v11;
  v123 = 3;
  v130 = MEMORY[0x1E69E6158];
  v104 = sub_1AC30B18C();
  v103 = v12;
  v65 = v151;
  v151[0] = v109;
  v151[1] = v110;
  v60 = 21;
  v81 = 1;
  sub_1AC30A8DC();
  v124 = 1;
  sub_1AC30A9DC();
  v61 = v13;
  sub_1AC30A8CC();

  v63 = v84[3];
  v62 = v84[4];
  __swift_project_boxed_opaque_existential_1(v84, v63);
  (*(*(v62 + 8) + 24))(v63);
  v64 = v14;
  sub_1AC30A8BC();

  v88 = "";
  sub_1AC30A9DC();
  v66 = v15;
  sub_1AC30A8CC();

  v92 = v67[2];
  v91 = v67 + 2;
  v92(v93, v99, v96);
  v95 = v67[4];
  v94 = v67 + 4;
  v95(v100, v93, v96);
  v98 = v67[1];
  v97 = v67 + 1;
  v98(v99, v96);
  sub_1AC30A8FC();
  v112 = &unk_1F20F74C8;
  v113 = &off_1F20F7458;
  v71 = sub_1AC215DE8(v116, &unk_1F20F74C8);
  v72 = v16;
  v115 = *(v69 + 8);
  v114 = v69 + 8;
  v115(v116, v117);
  v17 = v72;
  v18 = v103;
  v19 = v109;
  v20 = v110;
  *v103 = v71;
  v18[1] = v17;
  v77 = v150;
  v150[0] = v19;
  v150[1] = v20;
  v111 = 12;
  sub_1AC30A8DC();
  sub_1AC30A9DC();
  v73 = v21;
  sub_1AC30A8CC();

  v75 = v84[3];
  v74 = v84[4];
  __swift_project_boxed_opaque_existential_1(v84, v75);
  (*(*(v74 + 8) + 16))(v75);
  v76 = v22;
  sub_1AC30A8BC();

  sub_1AC30A9DC();
  v78 = v23;
  sub_1AC30A8CC();

  v92(v93, v99, v96);
  v95(v100, v93, v96);
  v98(v99, v96);
  sub_1AC30A8FC();
  v79 = sub_1AC215DE8(v116, v112);
  v80 = v24;
  v115(v116, v117);
  v25 = v80;
  v26 = v103;
  v27 = v109;
  v28 = v110;
  v103[2] = v79;
  v26[3] = v25;
  v89 = v149;
  v149[0] = v27;
  v149[1] = v28;
  v82 = 13;
  sub_1AC30A8DC();
  sub_1AC30A9DC();
  v83 = v29;
  sub_1AC30A8CC();

  v86 = v84[3];
  v85 = v84[4];
  __swift_project_boxed_opaque_existential_1(v84, v86);
  (*(*(v85 + 8) + 16))(v86);
  v87 = v30;
  sub_1AC30A8BC();

  sub_1AC30A9DC();
  v90 = v31;
  sub_1AC30A8CC();

  v92(v93, v99, v96);
  v95(v100, v93, v96);
  v98(v99, v96);
  sub_1AC30A8FC();
  v101 = sub_1AC215DE8(v116, v112);
  v102 = v32;
  v115(v116, v117);
  v33 = v102;
  v34 = v103;
  v35 = v104;
  v103[4] = v101;
  v34[5] = v33;
  sub_1AC206300();
  v139 = v35;
  v148 = v35;
  v121 = sub_1AC30B18C();
  v120 = v36;
  v146 = v109;
  v147 = v110;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v105 = sub_1AC215DE8(v116, v112);
  v106 = v37;
  v115(v116, v117);
  v38 = v106;
  v39 = v109;
  v40 = v110;
  v41 = v120;
  *v120 = v105;
  v41[1] = v38;
  v144 = v39;
  v145 = v40;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v107 = sub_1AC215DE8(v116, v112);
  v108 = v42;
  v115(v116, v117);
  v43 = v108;
  v44 = v109;
  v45 = v110;
  v46 = v120;
  v120[2] = v107;
  v46[3] = v43;
  v142 = v44;
  v143 = v45;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v118 = sub_1AC215DE8(v116, v112);
  v119 = v47;
  v115(v116, v117);
  v48 = v119;
  v49 = v120;
  v50 = v121;
  v120[4] = v118;
  v49[5] = v48;
  sub_1AC206300();
  v138 = v50;
  v141 = v50;
  v127 = sub_1AC2068B8();
  v126 = sub_1AC30B18C();
  v125 = v51;
  *v51 = sub_1AC2976E0(v124);
  v125[1] = sub_1AC2976E0(2u);
  v52 = sub_1AC2976E0(3u);
  v53 = v126;
  v125[2] = v52;
  sub_1AC206300();
  v137 = v53;
  v140 = v53;

  v131 = MEMORY[0x1E69E7CA0] + 8;
  v128 = sub_1AC30B02C();
  v136 = sub_1AC30AAFC();

  v129 = sub_1AC30B02C();
  v135 = sub_1AC30AAFC();

  v132 = sub_1AC30B02C();
  v134 = sub_1AC30AAFC();

  [v133 setValues:v136 titles:v135 shortTitles:v134];
  MEMORY[0x1E69E5920](v134);
  MEMORY[0x1E69E5920](v135);
  MEMORY[0x1E69E5920](v136);
}

uint64_t sub_1AC299620()
{
  v1 = sub_1AC30A9DC();

  sub_1AC2063F0();
  return v1;
}

uint64_t sub_1AC299784()
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

uint64_t sub_1AC2998A4(void *a1, void *a2, uint64_t a3)
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
  v76 = sub_1AC299784();
  v74 = HIBYTE(v76);
  v75 = v76;
  v73 = 1;
  v72 = 1;
  if (sub_1AC30B1AC())
  {
    v45 = 1;
    sub_1AC30A9DC();
    sub_1AC30A8AC();
    v36 = sub_1AC215DE8(v58, &unk_1F20F7570);
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
    v25 = sub_1AC29A388;
    v24 = v35;
    v23 = sub_1AC299F10;
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
      v27 = 46;
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

id sub_1AC299EB8()
{
  sub_1AC2068B8();
  v0 = sub_1AC3093CC();
  return sub_1AC244124(v0 & 1);
}

uint64_t sub_1AC299F18(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[7] = a1;
  v15[6] = a2;
  v15[5] = a3 + 16;
  v15[4] = a4;
  swift_beginAccess();
  v15[0] = swift_unknownObjectWeakLoadStrong();
  if (v15[0])
  {
    v9 = v15[0];
    MEMORY[0x1E69E5928](v15[0]);
    sub_1AC206988(v15);
    swift_endAccess();
    v10 = *(v9 + OBJC_IVAR____TtC19HeadphoneSettingsUI27HeadphoneSettingsController_deviceAnalytics);
    MEMORY[0x1E69E5928](v10);
    [v10 updateFeatureChangeCount_];
    MEMORY[0x1E69E5920](v10);
  }

  else
  {
    sub_1AC206988(v15);
    swift_endAccess();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    MEMORY[0x1E69E5928](Strong);
    sub_1AC206988(&Strong);
    swift_endAccess();
    v7 = *(v8 + OBJC_IVAR____TtC19HeadphoneSettingsUI27HeadphoneSettingsController_deviceAnalytics);
    MEMORY[0x1E69E5928](v7);
    MEMORY[0x1E69E5920](v8);
    swift_getObjectType();
    swift_unknownObjectRetain();
    if ([a1 respondsToSelector_])
    {
      swift_unknownObjectRetain();
      v12 = [a1 BOOLValue];
      swift_unknownObjectRelease();
    }

    else
    {
      v12 = 2;
    }

    if (v12 == 2)
    {
      sub_1AC30B05C();
      __break(1u);
    }

    else
    {
      v6 = v12;
    }

    swift_unknownObjectRelease();
    sub_1AC30A9DC();
    v5 = sub_1AC30A91C();

    [v7 updateFeatureValue:53 value:(v6 & 1) != 0 featureValueString:v5];
    MEMORY[0x1E69E5920](v5);
    MEMORY[0x1E69E5920](v7);
  }

  else
  {
    sub_1AC206988(&Strong);
    swift_endAccess();
  }

  swift_getObjectType();
  swift_unknownObjectRetain();
  if ([a1 respondsToSelector_])
  {
    swift_unknownObjectRetain();
    v13 = [a1 BOOLValue];
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 2;
  }

  if (v13 == 2)
  {
    sub_1AC30B05C();
    __break(1u);
  }

  sub_1AC3093DC();
  swift_unknownObjectRelease();
  return sub_1AC30942C();
}

uint64_t sub_1AC29A394(void *a1, uint64_t a2)
{
  v20 = a1;
  v19 = a2;
  v31 = 0;
  v30 = 0;
  v28 = 0;
  v29 = 0;
  v26 = 0;
  v27 = 0;
  v21 = sub_1AC30A90C();
  v22 = *(v21 - 8);
  v23 = v21 - 8;
  v24 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v20);
  v25 = &v8 - v24;
  v31 = v3;
  v30 = a2;
  if (sub_1AC3093CC())
  {
    sub_1AC30A9DC();
    sub_1AC30A8AC();
    v15 = sub_1AC215DE8(v25, &unk_1F20F7570);
    v16 = v4;
    (*(v22 + 8))(v25, v21);
    v17 = v15;
    v18 = v16;
  }

  else
  {
    sub_1AC30A9DC();
    sub_1AC30A8AC();
    v13 = sub_1AC215DE8(v25, &unk_1F20F7570);
    v14 = v5;
    (*(v22 + 8))(v25, v21);
    v17 = v13;
    v18 = v14;
  }

  v12 = v18;
  v10 = v17;
  v28 = v17;
  v29 = v18;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v9 = sub_1AC215DE8(v25, &unk_1F20F7570);
  v11 = v6;
  (*(v22 + 8))(v25, v21);
  v26 = v9;
  v27 = v11;
  type metadata accessor for AudioFeatureGroup();
  sub_1AC2D27E8(v20);
}

id sub_1AC29A6D0()
{
  sub_1AC20BE24();
  type metadata accessor for HeadphoneSettingsController();
  result = sub_1AC20BE88();
  qword_1EB553D48 = result;
  return result;
}

uint64_t *sub_1AC29A718()
{
  if (qword_1EB550CA0 != -1)
  {
    swift_once();
  }

  return &qword_1EB553D48;
}

uint64_t sub_1AC29A778()
{
  v1 = sub_1AC29A718();
  swift_beginAccess();
  v2 = *v1;
  MEMORY[0x1E69E5928](*v1);
  swift_endAccess();
  return v2;
}

double sub_1AC29A7D8(uint64_t a1)
{
  v3 = sub_1AC29A718();
  MEMORY[0x1E69E5928](a1);
  swift_beginAccess();
  v1 = *v3;
  *v3 = a1;
  MEMORY[0x1E69E5920](v1);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t (*sub_1AC29A864())()
{
  sub_1AC29A718();
  swift_beginAccess();
  return sub_1AC20949C;
}

void *sub_1AC29A8C0@<X0>(void *a1@<X8>)
{
  v26 = sub_1AC30A9DC();
  v21 = v1;
  v22 = sub_1AC29AB40();
  v23 = sub_1AC30A9DC();
  v24 = v2;
  sub_1AC20D404();
  v9 = sub_1AC30A9DC();
  v10 = v3;
  v8 = sub_1AC29A718();
  swift_beginAccess();
  v11 = *v8;
  MEMORY[0x1E69E5928](*v8);
  swift_endAccess();
  v25 = sub_1AC20D468(v9, v10, v11);
  v13 = sub_1AC30A9DC();
  v14 = v4;
  v12 = sub_1AC29A718();
  swift_beginAccess();
  v15 = *v12;
  MEMORY[0x1E69E5928](*v12);
  swift_endAccess();
  v20 = sub_1AC20D468(v13, v14, v15);
  v17 = sub_1AC30A9DC();
  v18 = v5;
  v16 = sub_1AC29A718();
  swift_beginAccess();
  v19 = *v16;
  MEMORY[0x1E69E5928](*v16);
  swift_endAccess();
  v6 = sub_1AC20D468(v17, v18, v19);
  sub_1AC216510(v26, v21, v22, v23, v24, 0, 0, v25, v28, v20, v6, 0, sub_1AC20D540, 0);
  return memcpy(a1, v28, 0x60uLL);
}

id sub_1AC29AB40()
{
  v146 = 0;
  sub_1AC20D5F4();
  v124 = sub_1AC20D658();
  v145 = v124;
  v113 = 1;
  v0 = sub_1AC30A9DC();
  v48 = v143;
  v114 = MEMORY[0x1E69E6158];
  v144 = MEMORY[0x1E69E6158];
  v143[0] = v0;
  v143[1] = v1;
  v47 = sub_1AC30AC3C();
  v44 = v144;
  v2 = __swift_project_boxed_opaque_existential_1(v143, v144);
  v42 = *(v44 - 8);
  v43 = v44 - 8;
  v41 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v45 = &v41 - v41;
  (*(v42 + 16))(v3);
  v46 = sub_1AC30B19C();
  (*(v42 + 8))(v45, v44);
  v120 = 0x1FB921000uLL;
  [v124 0x1FB921E28];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v48);
  v4 = sub_1AC30A9DC();
  v56 = v141;
  v142 = v114;
  v141[0] = v4;
  v141[1] = v5;
  v55 = sub_1AC30AC3C();
  v52 = v142;
  v6 = __swift_project_boxed_opaque_existential_1(v56, v142);
  v50 = *(v52 - 8);
  v51 = v52 - 8;
  v49 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v53 = &v41 - v49;
  (*(v50 + 16))(v7);
  v54 = sub_1AC30B19C();
  (*(v50 + 8))(v53, v52);
  [v124 (v120 + 3624)];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v56);
  v8 = sub_1AC30A9DC();
  v64 = v139;
  v140 = v114;
  v139[0] = v8;
  v139[1] = v9;
  v63 = sub_1AC30AC3C();
  v60 = v140;
  v10 = __swift_project_boxed_opaque_existential_1(v64, v140);
  v58 = *(v60 - 8);
  v59 = v60 - 8;
  v57 = (*(v58 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v61 = &v41 - v57;
  (*(v58 + 16))(v11);
  v62 = sub_1AC30B19C();
  (*(v58 + 8))(v61, v60);
  [v124 (v120 + 3624)];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v64);
  v12 = sub_1AC30A9DC();
  v72 = v137;
  v138 = v114;
  v137[0] = v12;
  v137[1] = v13;
  v71 = sub_1AC30AC3C();
  v68 = v138;
  v14 = __swift_project_boxed_opaque_existential_1(v72, v138);
  v66 = *(v68 - 8);
  v67 = v68 - 8;
  v65 = (*(v66 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v69 = &v41 - v65;
  (*(v66 + 16))(v15);
  v70 = sub_1AC30B19C();
  (*(v66 + 8))(v69, v68);
  [v124 (v120 + 3624)];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v72);
  v16 = sub_1AC30A9DC();
  v80 = v135;
  v136 = v114;
  v135[0] = v16;
  v135[1] = v17;
  v79 = sub_1AC30AC3C();
  v76 = v136;
  v18 = __swift_project_boxed_opaque_existential_1(v80, v136);
  v74 = *(v76 - 8);
  v75 = v76 - 8;
  v73 = (*(v74 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v77 = &v41 - v73;
  (*(v74 + 16))(v19);
  v78 = sub_1AC30B19C();
  (*(v74 + 8))(v77, v76);
  [v124 (v120 + 3624)];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v80);
  v20 = sub_1AC30A9DC();
  v88 = v133;
  v134 = v114;
  v133[0] = v20;
  v133[1] = v21;
  v87 = sub_1AC30AC3C();
  v84 = v134;
  v22 = __swift_project_boxed_opaque_existential_1(v88, v134);
  v82 = *(v84 - 8);
  v83 = v84 - 8;
  v81 = (*(v82 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v85 = &v41 - v81;
  (*(v82 + 16))(v23);
  v86 = sub_1AC30B19C();
  (*(v82 + 8))(v85, v84);
  [v124 (v120 + 3624)];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v88);
  v24 = sub_1AC30A9DC();
  v96 = v131;
  v132 = v114;
  v131[0] = v24;
  v131[1] = v25;
  v95 = sub_1AC30ABEC();
  v92 = v132;
  v26 = __swift_project_boxed_opaque_existential_1(v96, v132);
  v90 = *(v92 - 8);
  v91 = v92 - 8;
  v89 = (*(v90 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v27 = MEMORY[0x1EEE9AC00](v26);
  v93 = &v41 - v89;
  (*(v90 + 16))(v27);
  v94 = sub_1AC30B19C();
  (*(v90 + 8))(v93, v92);
  [v124 (v120 + 3624)];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v96);
  v28 = sub_1AC30A9DC();
  v104 = v129;
  v130 = v114;
  v129[0] = v28;
  v129[1] = v29;
  v103 = sub_1AC30ABEC();
  v100 = v130;
  v30 = __swift_project_boxed_opaque_existential_1(v104, v130);
  v98 = *(v100 - 8);
  v99 = v100 - 8;
  v97 = (*(v98 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v31 = MEMORY[0x1EEE9AC00](v30);
  v101 = &v41 - v97;
  (*(v98 + 16))(v31);
  v102 = sub_1AC30B19C();
  (*(v98 + 8))(v101, v100);
  [v124 (v120 + 3624)];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v104);
  v32 = sub_1AC30A9DC();
  v112 = v127;
  v128 = v114;
  v127[0] = v32;
  v127[1] = v33;
  v111 = sub_1AC30ABEC();
  v108 = v128;
  v34 = __swift_project_boxed_opaque_existential_1(v112, v128);
  v106 = *(v108 - 8);
  v107 = v108 - 8;
  v105 = (*(v106 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v35 = MEMORY[0x1EEE9AC00](v34);
  v109 = &v41 - v105;
  (*(v106 + 16))(v35);
  v110 = sub_1AC30B19C();
  (*(v106 + 8))(v109, v108);
  [v124 (v120 + 3624)];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v112);
  v36 = sub_1AC30A9DC();
  v123 = v125;
  v126 = v114;
  v125[0] = v36;
  v125[1] = v37;
  v122 = sub_1AC30ABEC();
  v118 = v126;
  v38 = __swift_project_boxed_opaque_existential_1(v123, v126);
  v116 = *(v118 - 8);
  v117 = v118 - 8;
  v115 = (*(v116 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v39 = MEMORY[0x1EEE9AC00](v38);
  v119 = &v41 - v115;
  (*(v116 + 16))(v39);
  v121 = sub_1AC30B19C();
  (*(v116 + 8))(v119, v118);
  [v124 (v120 + 3624)];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v123);
  return v124;
}

uint64_t B768FeatureContent.marketingName.getter()
{
  v25 = 0;
  v15 = sub_1AC30A90C();
  v16 = *(v15 - 8);
  v17 = v15 - 8;
  v18 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v6 - v18;
  v25 = v0;
  v21 = sub_1AC3097CC();
  v22 = 8217;

  v14 = v21 == v22 || sub_1AC3097CC() == 8222;
  v13 = v14;

  if (v13)
  {
    v23 = v20;
    sub_1AC30A9DC();
    sub_1AC30A8AC();
    v1 = sub_1AC3097DC();
    v9 = sub_1AC215DE8(v19, v1);
    v10 = v2;
    (*(v16 + 8))(v19, v15);
    v11 = v9;
    v12 = v10;
  }

  else
  {
    v24 = v20;
    sub_1AC30A9DC();
    sub_1AC30A8AC();
    v3 = sub_1AC3097DC();
    v7 = sub_1AC215DE8(v19, v3);
    v8 = v4;
    (*(v16 + 8))(v19, v15);
    v11 = v7;
    v12 = v8;
  }

  return v11;
}

uint64_t B768FeatureContent.singularName.getter()
{
  v14 = 0;
  v6 = 0;
  v10 = sub_1AC30A90C();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v9 = &v4 - v5;
  v14 = v0;
  v13 = v0;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v1 = sub_1AC3097DC();
  v11 = sub_1AC215DE8(v9, v1);
  v12 = v2;
  (*(v7 + 8))(v9, v10);
  return v11;
}

uint64_t B768FeatureContent.platformName.getter()
{
  v14 = 0;
  v6 = 0;
  v10 = sub_1AC30A90C();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v9 = &v4 - v5;
  v14 = v0;
  v13 = v0;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v1 = sub_1AC3097DC();
  v11 = sub_1AC215DE8(v9, v1);
  v12 = v2;
  (*(v7 + 8))(v9, v10);
  return v11;
}

void *sub_1AC29BDFC@<X0>(void *a1@<X8>)
{
  v60 = a1;
  v67 = 0;
  v64 = 0;
  v65 = 0;
  v19 = 0;
  v54 = sub_1AC30A90C();
  v28 = *(v54 - 8);
  v29 = v54 - 8;
  v15 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v53 = &v14 - v15;
  v44 = sub_1AC30A8EC();
  v26 = *(v44 - 8);
  v27 = v44 - 8;
  v16 = (v26[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v44);
  v48 = &v14 - v16;
  v17 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v14 - v16);
  v41 = &v14 - v17;
  v18 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v14 - v17);
  v47 = &v14 - v18;
  v67 = v1;

  v49 = sub_1AC3097DC();
  v22 = v66;
  v66[3] = v49;
  v66[4] = &protocol witness table for B768FeatureContent;
  v66[0] = v1;
  v21 = v49;
  v20 = &protocol witness table for B768FeatureContent;
  __swift_project_boxed_opaque_existential_1(v66, v49);
  v35 = (v20[1])(v21);
  v59 = v4;
  v64 = v35;
  v65 = v4;
  __swift_destroy_boxed_opaque_existential_1(v22);
  v24 = &v63;
  v63 = v30;
  v31 = 1;
  sub_1AC30A8DC();
  v32 = "Place ";
  v33 = 6;
  v36 = 1;
  sub_1AC30A9DC();
  v23 = v5;
  sub_1AC30A8CC();

  sub_1AC30A8BC();
  sub_1AC30A9DC();
  v25 = v6;
  sub_1AC30A8CC();

  v40 = v26[2];
  v39 = v26 + 2;
  v40(v41, v47, v44);
  v43 = v26[4];
  v42 = v26 + 4;
  v43(v48, v41, v44);
  v46 = v26[1];
  v45 = v26 + 1;
  v46(v47, v44);
  sub_1AC30A8FC();
  v50 = &off_1F20F75A0;
  v57 = sub_1AC215DE8(v53, v49);
  v58 = v7;
  v52 = *(v28 + 8);
  v51 = v28 + 8;
  v52(v53, v54);
  v37 = &v62;
  v62 = v30;
  sub_1AC30A8DC();
  sub_1AC30A9DC();
  v34 = v8;
  sub_1AC30A8CC();

  sub_1AC30A8BC();
  sub_1AC30A9DC();
  v38 = v9;
  sub_1AC30A8CC();

  v40(v41, v47, v44);
  v43(v48, v41, v44);
  v46(v47, v44);
  sub_1AC30A8FC();
  v55 = sub_1AC215DE8(v53, v49);
  v56 = v10;
  v52(v53, v54);
  v11 = sub_1AC20DD78();
  v61 = &v68;
  sub_1AC236A90(v57, v58, v55, v56, v11, v12, &v68);

  return memcpy(v60, v61, 0x30uLL);
}

uint64_t sub_1AC29C4EC()
{
  v55 = 0;
  v52 = 0;
  v53 = 0;
  v22 = 0;
  v40 = sub_1AC30A90C();
  v31 = *(v40 - 8);
  v32 = v40 - 8;
  v12 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v39 = &v12 - v12;
  v28 = sub_1AC30A8EC();
  v26 = *(v28 - 8);
  v27 = v28 - 8;
  v13 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v12 - v13;
  v14 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v12 - v13);
  v25 = &v12 - v14;
  v15 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v12 - v14);
  v29 = &v12 - v15;
  v55 = v0;

  v35 = sub_1AC3097DC();
  v18 = v54;
  v54[3] = v35;
  v54[4] = &protocol witness table for B768FeatureContent;
  v54[0] = v0;
  v17 = v35;
  v16 = &protocol witness table for B768FeatureContent;
  __swift_project_boxed_opaque_existential_1(v54, v35);
  v21 = (v16[2])(v17);
  v45 = v3;
  v52 = v21;
  v53 = v3;
  __swift_destroy_boxed_opaque_existential_1(v18);
  v23 = &v51;
  v51 = v33;
  v19 = 15;
  sub_1AC30A8DC();
  v34 = 1;
  sub_1AC30A9DC();
  v20 = v4;
  sub_1AC30A8CC();

  sub_1AC30A8BC();
  sub_1AC30A9DC();
  v24 = v5;
  sub_1AC30A8CC();

  (*(v26 + 16))(v25, v29, v28);
  (*(v26 + 32))(v30, v25, v28);
  (*(v26 + 8))(v29, v28);
  sub_1AC30A8FC();
  v36 = &off_1F20F75A0;
  v41 = sub_1AC215DE8(v39, v35);
  v42 = v6;
  v38 = *(v31 + 8);
  v37 = v31 + 8;
  v38(v39, v40);
  v50 = v33;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v43 = sub_1AC215DE8(v39, v35);
  v44 = v7;
  v38(v39, v40);
  v46 = nullsub_1(v41);
  v47 = v8;
  v48 = v9;
  v49 = v10;

  return v46;
}

uint64_t sub_1AC29CA10()
{
  v7 = v0;

  v5 = sub_1AC3097DC();
  v6 = &protocol witness table for B768FeatureContent;
  v4[0] = v0;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v1 = off_1F20F75C0();
  v3 = nullsub_1(v1);
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v3;
}

_BYTE *sub_1AC29CAE8()
{
  v62 = 0;
  v59 = 0;
  v60 = 0;
  v19 = 0;
  v49 = sub_1AC30A90C();
  v25 = *(v49 - 8);
  v26 = v49 - 8;
  v12 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v48 = &v11 - v12;
  v38 = sub_1AC30A8EC();
  v23 = *(v38 - 8);
  v24 = v38 - 8;
  v13 = (v23[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v38);
  v42 = &v11 - v13;
  v14 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v11 - v13);
  v35 = &v11 - v14;
  v15 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v11 - v14);
  v41 = &v11 - v15;
  v62 = v0;

  v43 = sub_1AC3097DC();
  v18 = v61;
  v61[3] = v43;
  v61[4] = &protocol witness table for B768FeatureContent;
  v61[0] = v0;
  v17 = v43;
  v16 = &protocol witness table for B768FeatureContent;
  __swift_project_boxed_opaque_existential_1(v61, v43);
  v30 = (v16[3])(v17);
  v55 = v3;
  v59 = v30;
  v60 = v3;
  __swift_destroy_boxed_opaque_existential_1(v18);
  v45 = type metadata accessor for SpatialFeatureContent();
  v21 = &v58;
  v58 = v27;
  v28 = 1;
  sub_1AC30A8DC();
  v54 = 1;
  sub_1AC30A9DC();
  v20 = v4;
  sub_1AC30A8CC();

  sub_1AC30A8BC();
  sub_1AC30A9DC();
  v22 = v5;
  sub_1AC30A8CC();

  v34 = v23[2];
  v33 = v23 + 2;
  v34(v35, v41, v38);
  v37 = v23[4];
  v36 = v23 + 4;
  v37(v42, v35, v38);
  v40 = v23[1];
  v39 = v23 + 1;
  v40(v41, v38);
  sub_1AC30A8FC();
  v44 = &off_1F20F75A0;
  v50 = sub_1AC215DE8(v48, v43);
  v51 = v6;
  v47 = *(v25 + 8);
  v46 = v25 + 8;
  v47(v48, v49);
  v31 = &v57;
  v57 = v27;
  sub_1AC30A8DC();
  sub_1AC30A9DC();
  v29 = v7;
  sub_1AC30A8CC();

  sub_1AC30A8BC();
  sub_1AC30A9DC();
  v32 = v8;
  sub_1AC30A8CC();

  v34(v35, v41, v38);
  v37(v42, v35, v38);
  v40(v41, v38);
  sub_1AC30A8FC();
  v52 = sub_1AC215DE8(v48, v43);
  v53 = v9;
  v47(v48, v49);
  v56 = SpatialFeatureContent.__allocating_init(removeString:putInEarString:forceFitTest:)(v50, v51, v52, v53, v54 & 1);

  return v56;
}

uint64_t sub_1AC29D12C@<X0>(uint64_t a1@<X8>)
{
  v9 = a1;
  v10 = "Fatal error";
  v11 = "Unexpectedly found nil while unwrapping an Optional value";
  v12 = "HeadphoneSettingsUI/B768FeatureProviding.swift";
  v30 = 0;
  v13 = sub_1AC30901C();
  v14 = *(v13 - 8);
  v15 = v13 - 8;
  v16 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13);
  v17 = v8 - v16;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCA0);
  v18 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v19 = v8 - v18;
  v30 = v1;
  v20 = sub_1AC290274();
  v21 = &v29;
  swift_beginAccess();
  v27 = *v20;
  MEMORY[0x1E69E5928](v27);
  swift_endAccess();
  v23 = 1;
  sub_1AC30A9DC();
  v22 = v3;
  v26 = sub_1AC30A91C();

  sub_1AC30A9DC();
  v24 = v4;
  v25 = sub_1AC30A91C();

  v28 = [v27 URLForResource:v26 withExtension:v25];
  MEMORY[0x1E69E5920](v25);
  MEMORY[0x1E69E5920](v26);
  v5 = MEMORY[0x1E69E5920](v27);
  if (v28)
  {
    v8[1] = v28;
    v8[0] = v28;
    sub_1AC308FFC();
    (*(v14 + 32))(v19, v17, v13);
    (*(v14 + 56))(v19, 0, 1, v13);
    v6 = MEMORY[0x1E69E5920](v8[0]);
  }

  else
  {
    (*(v14 + 56))(v19, 1, 1, v13, v5);
  }

  if ((*(v14 + 48))(v19, 1, v13, v6) == 1)
  {
    sub_1AC30B05C();
    __break(1u);
  }

  return (*(v14 + 32))(v9, v19, v13);
}

uint64_t sub_1AC29D50C()
{
  v45[5] = 0;
  v18 = sub_1AC30B18C();
  v17 = v0;
  v45[3] = type metadata accessor for CounterfitDetectionFeature();
  v45[4] = &off_1F20F8128;
  v45[0] = sub_1AC2B095C();
  sub_1AC29F3A0(v45, v17);
  v15 = sub_1AC207218();
  v44[3] = type metadata accessor for LiveTranslationPlaceCardFeature();
  v44[4] = &off_1F20F97D0;
  v44[0] = v15;
  sub_1AC29F3A0(v44, v17 + 40);
  v43[3] = type metadata accessor for FirmwareSeedingFeature();
  v43[4] = &off_1F20FA548;
  v43[0] = sub_1AC2EDE18();
  sub_1AC29F3A0(v43, v17 + 80);
  v42[3] = type metadata accessor for TempPairingFeature();
  v42[4] = &off_1F20FA730;
  v42[0] = sub_1AC2F7130();
  sub_1AC29F3A0(v42, v17 + 120);
  v41[3] = &unk_1F20FA0B0;
  v41[4] = &off_1F20FA020;
  v41[0] = sub_1AC2E0244();
  v41[1] = v1;
  sub_1AC29F3A0(v41, v17 + 160);
  v40[3] = &unk_1F20F2C30;
  v40[4] = &off_1F20F2B18;
  v40[0] = sub_1AC2373A0();
  v40[1] = v2;
  sub_1AC29F3A0(v40, v17 + 200);
  v39[3] = &unk_1F20F9F68;
  v39[4] = &off_1F20F9E58;
  v39[0] = sub_1AC2DF418();
  v39[1] = v3;
  sub_1AC29F3A0(v39, v17 + 240);
  v38[3] = &unk_1F20F3D88;
  v38[4] = &off_1F20F3CF8;
  v38[0] = sub_1AC24FC24();
  v38[1] = v4;
  sub_1AC29F3A0(v38, v17 + 280);
  v37[3] = &unk_1F20F1DD8;
  v37[4] = &off_1F20F1D48;
  v37[0] = sub_1AC213D44();
  v37[1] = v5;
  sub_1AC29F3A0(v37, v17 + 320);
  v36[3] = type metadata accessor for AudioFeatureGroup();
  v36[4] = &off_1F20F9890;
  v36[0] = sub_1AC2D29B0();
  sub_1AC29F3A0(v36, v17 + 360);
  v35[3] = &unk_1F20F1948;
  v35[4] = &off_1F20F1830;
  v35[0] = sub_1AC206378();
  v35[1] = v6;
  sub_1AC29F3A0(v35, v17 + 400);
  v34[3] = &unk_1F20F82F0;
  v34[4] = &off_1F20F8260;
  v34[0] = sub_1AC2B47DC();
  v34[1] = v7;
  sub_1AC29F3A0(v34, v17 + 440);
  v16 = sub_1AC207244();
  v33[3] = type metadata accessor for LiveTranslationFeature();
  v33[4] = &off_1F20F9788;
  v33[0] = v16;
  sub_1AC29F3A0(v33, v17 + 480);
  v32[3] = &unk_1F20F74C8;
  v32[4] = &off_1F20F7438;
  v32[0] = sub_1AC299620();
  v32[1] = v8;
  sub_1AC29F3A0(v32, v17 + 520);
  v31[3] = type metadata accessor for SleepDetectionFeature();
  v31[4] = &off_1F20F2628;
  v31[0] = sub_1AC225F9C();
  sub_1AC29F3A0(v31, v17 + 560);
  v30[3] = &unk_1F20F4968;
  v30[4] = &off_1F20F48B8;
  v30[0] = sub_1AC25B2F0();
  v30[1] = v9;
  sub_1AC29F3A0(v30, v17 + 600);
  v28 = &type metadata for BatteryChargingFeature;
  v29 = &off_1F20F4658;
  sub_1AC2589D4(&v27);
  sub_1AC29F3A0(&v27, v17 + 640);
  v26[3] = type metadata accessor for CharginCaseSoundFeature();
  v26[4] = &off_1F20F6C90;
  v26[0] = sub_1AC28EB2C();
  sub_1AC29F3A0(v26, v17 + 680);
  v25[3] = &unk_1F20F33C8;
  v25[4] = &off_1F20F3330;
  v25[0] = sub_1AC246D88();
  v25[1] = v10;
  sub_1AC29F3A0(v25, v17 + 720);
  v24[3] = &unk_1F20F4EE8;
  v24[4] = &off_1F20F4E58;
  v24[0] = sub_1AC264F00();
  v24[1] = v11;
  sub_1AC29F3A0(v24, v17 + 760);
  v23[3] = &unk_1F20F9A10;
  v23[4] = &off_1F20F9980;
  v23[0] = sub_1AC2D6938();
  v23[1] = v12;
  sub_1AC29F3A0(v23, v17 + 800);
  v22[3] = type metadata accessor for AboutFeature();
  v22[4] = &off_1F20FA300;
  v22[0] = sub_1AC2E6C54();
  sub_1AC29F3A0(v22, v17 + 840);
  v21[3] = type metadata accessor for FirmwareUpdateFeature();
  v21[4] = &off_1F20F54A8;
  v21[0] = sub_1AC26C2F4();
  sub_1AC29F3A0(v21, v17 + 880);
  v20[3] = type metadata accessor for AppleCareCoverageFeature();
  v20[4] = &off_1F20F38B8;
  v20[0] = sub_1AC24D228();
  sub_1AC29F3A0(v20, v17 + 920);
  v19[3] = &unk_1F20F21D8;
  v19[4] = &off_1F20F2140;
  v19[0] = sub_1AC21E7B4();
  v19[1] = v13;
  sub_1AC29F3A0(v19, v17 + 960);
  result = v18;
  sub_1AC206300();
  return result;
}

uint64_t sub_1AC29DB88()
{
  result = sub_1AC30A9DC();
  qword_1EB553D50 = result;
  qword_1EB553D58 = v1;
  return result;
}

uint64_t *sub_1AC29DBCC()
{
  if (qword_1EB550CA8 != -1)
  {
    swift_once();
  }

  return &qword_1EB553D50;
}

uint64_t sub_1AC29DC2C()
{
  v1 = sub_1AC309E6C();
  __swift_allocate_value_buffer(v1, qword_1EB553D60);
  __swift_project_value_buffer(v1, qword_1EB553D60);
  sub_1AC29DBCC();

  sub_1AC30A9DC();
  return sub_1AC309E5C();
}

uint64_t sub_1AC29DCC0()
{
  if (qword_1EB550CB0 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309E6C();
  return __swift_project_value_buffer(v0, qword_1EB553D60);
}

uint64_t sub_1AC29DD2C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC29DCC0();
  v1 = sub_1AC309E6C();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

void sub_1AC29DE2C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v77 = a4;
  v78 = a3;
  v86 = a2;
  v87 = a1;
  v82 = 0;
  v111 = 0;
  v110 = 0;
  v109 = 0;
  v106 = 0;
  v104 = 0;
  v100 = 0;
  v99 = 0;
  v98 = 0;
  v97 = 0;
  v96 = 0;
  v95 = 0;
  v112 = a3;
  v79 = *(a3 - 8);
  v80 = v79;
  v5 = MEMORY[0x1EEE9AC00](a1);
  v81 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = v5;
  v110 = v7;
  v109 = v4;
  v83 = sub_1AC29F420();
  v84 = &v108;
  swift_beginAccess();
  v85 = *v83;

  swift_endAccess();
  v107 = v85;
  v8 = v87;
  v9 = v86;
  v93 = v87;
  v94 = v86;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C438);
  v88 = v89;
  v90 = sub_1AC29F654();
  v10 = sub_1AC30AA9C();
  v91 = 0;
  v92 = v10;
  v75 = v10;

  sub_1AC209190();
  v106 = v75;
  (*(v80 + 16))(v81, v76, v78);
  sub_1AC30984C();
  if (swift_dynamicCast())
  {

    v74 = 1;
  }

  else
  {
    v74 = 0;
  }

  if ((v74 & 1) == 0)
  {
    goto LABEL_10;
  }

  v73 = MobileGestalt_get_current_device();
  if (v73)
  {
    v72 = v73;
  }

  else
  {
    LODWORD(v31) = 0;
    v30 = 130;
    v29 = 2;
    sub_1AC30B05C();
    __break(1u);
  }

  v70 = v72;
  appleInternalInstallCapability = MobileGestalt_get_appleInternalInstallCapability();

  if (appleInternalInstallCapability)
  {
    v66 = 1;
    v64 = sub_1AC30A9DC();
    v69 = v11;
    v96 = v64;
    v97 = v11;
    v67 = 0;
    sub_1AC21E88C();
    v62 = sub_1AC30A9DC();
    v63 = v12;

    v68 = sub_1AC21CFE0(v62, v63, v64, v69, v66);
    v95 = v68;
    sub_1AC21E8F0();
    v13 = sub_1AC30A9DC();
    v65 = sub_1AC21E3FC(v13, v14, v67, v67, v67);
    [v68 addAction_];

    [v86 presentViewController:v68 animated:v66 completion:v67];
  }

  else
  {
LABEL_10:
    v105 = v75;
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C8E8);
    v60 = v61;
    sub_1AC29F6DC();
    if (sub_1AC30ACAC())
    {
      v59 = 0;
    }

    else
    {
      sub_1AC30A9DC();
      v57 = v15;
      v56 = sub_1AC30A91C();
      v58 = MGGetBoolAnswer();

      v59 = v58;
    }

    if (v59)
    {
      v101 = v75;
      v50 = 2;
      v52 = 1;
      v45 = sub_1AC30A9DC();
      v46 = v16;
      sub_1AC2A1944();
      v49 = sub_1AC30A88C();
      v55 = v17;

      v99 = v49;
      v100 = v55;
      v53 = 0;
      sub_1AC21E88C();
      v47 = sub_1AC30A9DC();
      v48 = v18;

      v54 = sub_1AC21CFE0(v47, v48, v49, v55, v52);
      v98 = v54;
      sub_1AC21E8F0();
      v19 = sub_1AC30A9DC();
      v51 = sub_1AC21E3FC(v19, v20, v53, v53, v53);
      [v54 addAction_];

      [v86 presentViewController:v54 animated:v52 completion:v53];
    }
  }

  v21 = v91;
  v40 = (*(v77 + 8))(v78);
  v39 = v40;
  v104 = v40;

  v103 = v40;
  v22 = v87;
  v23 = v86;
  v41 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v42 = &v29;
  v31 = v87;
  v32 = v24;
  sub_1AC2A0CBC();
  v25 = sub_1AC30AFDC();
  v43 = v21;
  v44 = v25;
  if (v21)
  {

    __break(1u);
    __break(1u);
  }

  else
  {
    v34 = v44;

    v102 = v34;
    v26 = v87;
    v27 = v86;
    v35 = v33;
    MEMORY[0x1EEE9AC00](v33);
    v36 = &v29;
    v31 = v87;
    v32 = v28;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C378);
    sub_1AC24D54C();
    v38 = sub_1AC30AA8C();
    v33[1] = v38;

    sub_1AC209190();
  }
}

void *sub_1AC29E948@<X0>(void *a1@<X8>)
{
  v12 = v1;
  sub_1AC30929C();
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C908);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
    }
  }

  else
  {
    sub_1AC204664(v5);
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
  }

  if (v10)
  {
    return sub_1AC2051E4(&v7, a1);
  }

  v3 = type metadata accessor for AllDeviceFeaturesContainer();
  result = sub_1AC250184();
  a1[3] = v3;
  a1[4] = &off_1F20F7828;
  *a1 = result;
  if (v10)
  {
    return sub_1AC204664(&v7);
  }

  return result;
}

uint64_t sub_1AC29EA88()
{
  result = sub_1AC30A9DC();
  qword_1EB550CC0 = result;
  qword_1EB550CC8 = v1;
  return result;
}

uint64_t *sub_1AC29EACC()
{
  if (qword_1EB550CB8 != -1)
  {
    swift_once();
  }

  return &qword_1EB550CC0;
}

uint64_t sub_1AC29EB2C()
{
  v1 = *sub_1AC29EACC();

  return v1;
}

BOOL sub_1AC29EB68()
{
  sub_1AC29EACC();

  key = sub_1AC30A91C();
  sub_1AC29DBCC();

  v1 = sub_1AC30A91C();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(key, v1, 0);
  MEMORY[0x1E69E5920](v1);

  MEMORY[0x1E69E5920](key);

  return AppBooleanValue != 0;
}

uint64_t sub_1AC29EC34()
{
  sub_1AC29EACC();

  v5 = sub_1AC30A91C();
  v4 = sub_1AC30AB8C();
  sub_1AC29DBCC();

  applicationID = sub_1AC30A91C();
  userName = *MEMORY[0x1E695E8B8];
  MEMORY[0x1E69E5928](*MEMORY[0x1E695E8B8]);
  hostName = *MEMORY[0x1E695E898];
  MEMORY[0x1E69E5928](*MEMORY[0x1E695E898]);
  CFPreferencesSetValue(v5, v4, applicationID, userName, hostName);
  MEMORY[0x1E69E5920](hostName);
  MEMORY[0x1E69E5920](userName);
  MEMORY[0x1E69E5920](applicationID);

  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](v5);
}

uint64_t sub_1AC29ED70()
{
  result = sub_1AC29ED90();
  qword_1EB550CD8 = result;
  return result;
}

uint64_t sub_1AC29ED90()
{
  v20 = sub_1AC30B18C();
  v19 = v0;
  v44[3] = &unk_1F20F1F68;
  v44[4] = &off_1F20F1E20;
  v44[0] = sub_1AC217F0C();
  v44[1] = v1;
  sub_1AC29F3A0(v44, v19);
  v43[3] = type metadata accessor for FirmwareSeedingFeature();
  v43[4] = &off_1F20FA548;
  v43[0] = sub_1AC2EDE18();
  sub_1AC29F3A0(v43, v19 + 40);
  v42[3] = &unk_1F20FA0B0;
  v42[4] = &off_1F20FA020;
  v42[0] = sub_1AC2E0244();
  v42[1] = v2;
  sub_1AC29F3A0(v42, v19 + 80);
  v41[3] = &unk_1F20F2C30;
  v41[4] = &off_1F20F2B18;
  v41[0] = sub_1AC2373A0();
  v41[1] = v3;
  sub_1AC29F3A0(v41, v19 + 120);
  v40[3] = type metadata accessor for YodelFeature();
  v40[4] = &off_1F20F2AC0;
  v40[0] = sub_1AC23624C();
  sub_1AC29F3A0(v40, v19 + 160);
  v39[3] = &unk_1F20F9F68;
  v39[4] = &off_1F20F9E58;
  v39[0] = sub_1AC2DF418();
  v39[1] = v4;
  sub_1AC29F3A0(v39, v19 + 200);
  v38[3] = &unk_1F20F3D88;
  v38[4] = &off_1F20F3CF8;
  v38[0] = sub_1AC24FC24();
  v38[1] = v5;
  sub_1AC29F3A0(v38, v19 + 240);
  v37[3] = &unk_1F20F1DD8;
  v37[4] = &off_1F20F1D48;
  v37[0] = sub_1AC213D44();
  v37[1] = v6;
  sub_1AC29F3A0(v37, v19 + 280);
  v36[3] = type metadata accessor for AudioFeatureGroup();
  v36[4] = &off_1F20F9890;
  v36[0] = sub_1AC2D29B0();
  sub_1AC29F3A0(v36, v19 + 320);
  v35[3] = &unk_1F20F1948;
  v35[4] = &off_1F20F1830;
  v35[0] = sub_1AC206378();
  v35[1] = v7;
  sub_1AC29F3A0(v35, v19 + 360);
  v34[3] = &unk_1F20F82F0;
  v34[4] = &off_1F20F8260;
  v34[0] = sub_1AC2B47DC();
  v34[1] = v8;
  sub_1AC29F3A0(v34, v19 + 400);
  v18 = sub_1AC207244();
  v33[3] = type metadata accessor for LiveTranslationFeature();
  v33[4] = &off_1F20F9788;
  v33[0] = v18;
  sub_1AC29F3A0(v33, v19 + 440);
  v32[3] = &unk_1F20F74C8;
  v32[4] = &off_1F20F7438;
  v32[0] = sub_1AC299620();
  v32[1] = v9;
  sub_1AC29F3A0(v32, v19 + 480);
  v31[3] = &unk_1F20F4968;
  v31[4] = &off_1F20F48B8;
  v31[0] = sub_1AC25B2F0();
  v31[1] = v10;
  sub_1AC29F3A0(v31, v19 + 520);
  v30[3] = type metadata accessor for CharginCaseSoundFeature();
  v30[4] = &off_1F20F6C90;
  v30[0] = sub_1AC28EB2C();
  sub_1AC29F3A0(v30, v19 + 560);
  v29[3] = &unk_1F20F6FA0;
  v29[4] = &off_1F20F6F10;
  v29[0] = sub_1AC2972AC();
  v29[1] = v11;
  sub_1AC29F3A0(v29, v19 + 600);
  v28[3] = &unk_1F20F33C8;
  v28[4] = &off_1F20F3330;
  v28[0] = sub_1AC246D88();
  v28[1] = v12;
  sub_1AC29F3A0(v28, v19 + 640);
  v27[3] = &unk_1F20F4EE8;
  v27[4] = &off_1F20F4E58;
  v27[0] = sub_1AC264F00();
  v27[1] = v13;
  sub_1AC29F3A0(v27, v19 + 680);
  v26[3] = type metadata accessor for FitFeatureGroup();
  v26[4] = &off_1F20F6E70;
  v26[0] = sub_1AC291544();
  sub_1AC29F3A0(v26, v19 + 720);
  v25[3] = &unk_1F20F9A10;
  v25[4] = &off_1F20F9980;
  v25[0] = sub_1AC2D6938();
  v25[1] = v14;
  sub_1AC29F3A0(v25, v19 + 760);
  v24[3] = &unk_1F20F5818;
  v24[4] = &off_1F20F5788;
  v24[0] = sub_1AC270E44();
  v24[1] = v15;
  sub_1AC29F3A0(v24, v19 + 800);
  v23[3] = type metadata accessor for AboutFeature();
  v23[4] = &off_1F20FA300;
  v23[0] = sub_1AC2E6C54();
  sub_1AC29F3A0(v23, v19 + 840);
  v22[3] = type metadata accessor for AppleCareCoverageFeature();
  v22[4] = &off_1F20F38B8;
  v22[0] = sub_1AC24D228();
  sub_1AC29F3A0(v22, v19 + 880);
  v21[3] = &unk_1F20F21D8;
  v21[4] = &off_1F20F2140;
  v21[0] = sub_1AC21E7B4();
  v21[1] = v16;
  sub_1AC29F3A0(v21, v19 + 920);
  result = v20;
  sub_1AC206300();
  return result;
}

_BYTE *sub_1AC29F3A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  memset(__b, 0, sizeof(__b));
  v6 = a1;
  sub_1AC241BFC(a1, v5);
  sub_1AC2051E4(v5, __b);
  sub_1AC241BFC(__b, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  result = __b;
  sub_1AC2A19F4(__b);
  return result;
}

uint64_t *sub_1AC29F420()
{
  if (qword_1EB550CD0 != -1)
  {
    swift_once();
  }

  return &qword_1EB550CD8;
}

uint64_t sub_1AC29F480()
{
  v1 = sub_1AC29F420();
  swift_beginAccess();
  v2 = *v1;

  swift_endAccess();
  return v2;
}

uint64_t sub_1AC29F4D8(uint64_t a1)
{
  v2 = sub_1AC29F420();

  swift_beginAccess();
  *v2 = a1;

  swift_endAccess();
}

uint64_t sub_1AC29F54C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = sub_1AC29F764(a1, a2);
  if ((result & 0x100) != 0)
  {
    v5 = result ^ 1;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    result = sub_1AC29F834();
    *a3 = result;
    a3[1] = v4;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

unint64_t sub_1AC29F654()
{
  v2 = qword_1EB54C8E0;
  if (!qword_1EB54C8E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C438);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C8E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC29F6DC()
{
  v2 = qword_1EB54C8F0;
  if (!qword_1EB54C8F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C8E8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C8F0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC29F764(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v13 = a2;
  v12 = v2;
  sub_1AC241BFC(v2, v9);
  v5 = v10;
  v6 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  v8 = (*(v6 + 16))(a1, a2, v5);
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v8;
}

uint64_t sub_1AC29F834()
{
  v8 = v0;
  sub_1AC241BFC(v0, v5);
  v3 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v4 = (*(v2 + 8))(v3);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v4;
}

uint64_t sub_1AC29F8C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v138 = a1;
  v137 = a2;
  v136 = a3;
  v116 = sub_1AC2A2284;
  v117 = sub_1AC215C98;
  v118 = sub_1AC2A2294;
  v119 = sub_1AC215C98;
  v120 = sub_1AC2A22A0;
  v121 = sub_1AC215C98;
  v122 = sub_1AC2A22C0;
  v123 = sub_1AC215C98;
  v124 = sub_1AC215C90;
  v125 = sub_1AC215C90;
  v126 = sub_1AC215CA4;
  v127 = sub_1AC215C90;
  v128 = sub_1AC215C90;
  v129 = sub_1AC215CA4;
  v130 = sub_1AC215C90;
  v131 = sub_1AC215C90;
  v132 = sub_1AC215CA4;
  v133 = sub_1AC215C90;
  v134 = sub_1AC215C90;
  v135 = sub_1AC215CA4;
  v160 = 0;
  v159 = 0;
  v158 = 0;
  v155 = 0;
  v153 = 0;
  v152 = 0;
  v139 = sub_1AC309E6C();
  v140 = *(v139 - 8);
  v141 = v139 - 8;
  v142 = (*(v140 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v143 = &v54 - v142;
  v160 = MEMORY[0x1EEE9AC00](v138);
  v159 = v3;
  v158 = v4;
  v144 = v157;
  sub_1AC241BFC(v160, v157);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C910);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C918);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v156);
    v114 = 1;
  }

  else
  {
    v114 = 0;
  }

  v111 = v114;
  v155 = v114 & 1;
  v154 = sub_1AC29F764(v137, v136);
  v112 = v154;
  v113 = HIBYTE(v154);
  v153 = v154;
  if (sub_1AC3091AC())
  {
    v110 = 1;
  }

  else
  {
    v110 = v111;
  }

  if (v110)
  {
    v109 = v113;
  }

  else
  {
    v109 = 0;
  }

  v5 = v143;
  v78 = v109;
  v77 = 1;
  v152 = v109 & 1;
  v6 = sub_1AC29DCC0();
  (*(v140 + 16))(v5, v6, v139);
  v76 = v151;
  sub_1AC241BFC(v138, v151);
  v89 = 7;
  v79 = swift_allocObject();
  memcpy((v79 + 16), v76, 0x28uLL);
  v86 = 17;
  v81 = swift_allocObject();
  *(v81 + 16) = v78 & v77;
  v7 = swift_allocObject();
  v8 = v113;
  v9 = v7;
  v10 = v137;
  v83 = v9;
  *(v9 + 16) = v112;
  *(v9 + 17) = v8;
  MEMORY[0x1E69E5928](v10);
  v90 = swift_allocObject();
  *(v90 + 16) = v137;
  v107 = sub_1AC309E4C();
  v108 = sub_1AC30AD2C();
  v92 = swift_allocObject();
  v85 = 32;
  *(v92 + 16) = 32;
  v93 = swift_allocObject();
  v87 = 8;
  *(v93 + 16) = 8;
  v88 = 32;
  v11 = swift_allocObject();
  v12 = v79;
  v80 = v11;
  *(v11 + 16) = v116;
  *(v11 + 24) = v12;
  v13 = swift_allocObject();
  v14 = v80;
  v94 = v13;
  *(v13 + 16) = v117;
  *(v13 + 24) = v14;
  v95 = swift_allocObject();
  *(v95 + 16) = v85;
  v96 = swift_allocObject();
  *(v96 + 16) = v87;
  v15 = swift_allocObject();
  v16 = v81;
  v82 = v15;
  *(v15 + 16) = v118;
  *(v15 + 24) = v16;
  v17 = swift_allocObject();
  v18 = v82;
  v97 = v17;
  *(v17 + 16) = v119;
  *(v17 + 24) = v18;
  v98 = swift_allocObject();
  *(v98 + 16) = v85;
  v99 = swift_allocObject();
  *(v99 + 16) = v87;
  v19 = swift_allocObject();
  v20 = v83;
  v84 = v19;
  *(v19 + 16) = v120;
  *(v19 + 24) = v20;
  v21 = swift_allocObject();
  v22 = v84;
  v100 = v21;
  *(v21 + 16) = v121;
  *(v21 + 24) = v22;
  v101 = swift_allocObject();
  *(v101 + 16) = v85;
  v102 = swift_allocObject();
  *(v102 + 16) = v87;
  v23 = swift_allocObject();
  v24 = v90;
  v91 = v23;
  *(v23 + 16) = v122;
  *(v23 + 24) = v24;
  v25 = swift_allocObject();
  v26 = v91;
  v104 = v25;
  *(v25 + 16) = v123;
  *(v25 + 24) = v26;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8);
  v103 = sub_1AC30B18C();
  v105 = v27;

  v28 = v92;
  v29 = v105;
  *v105 = v124;
  v29[1] = v28;

  v30 = v93;
  v31 = v105;
  v105[2] = v125;
  v31[3] = v30;

  v32 = v94;
  v33 = v105;
  v105[4] = v126;
  v33[5] = v32;

  v34 = v95;
  v35 = v105;
  v105[6] = v127;
  v35[7] = v34;

  v36 = v96;
  v37 = v105;
  v105[8] = v128;
  v37[9] = v36;

  v38 = v97;
  v39 = v105;
  v105[10] = v129;
  v39[11] = v38;

  v40 = v98;
  v41 = v105;
  v105[12] = v130;
  v41[13] = v40;

  v42 = v99;
  v43 = v105;
  v105[14] = v131;
  v43[15] = v42;

  v44 = v100;
  v45 = v105;
  v105[16] = v132;
  v45[17] = v44;

  v46 = v101;
  v47 = v105;
  v105[18] = v133;
  v47[19] = v46;

  v48 = v102;
  v49 = v105;
  v105[20] = v134;
  v49[21] = v48;

  v50 = v104;
  v51 = v105;
  v105[22] = v135;
  v51[23] = v50;
  sub_1AC206300();

  if (os_log_type_enabled(v107, v108))
  {
    v69 = sub_1AC30AE6C();
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8);
    v70 = sub_1AC213EE4(0);
    v71 = sub_1AC213EE4(4);
    v72 = &v150;
    v150 = v69;
    v73 = &v149;
    v149 = v70;
    v74 = &v148;
    v148 = v71;
    sub_1AC213F38(2, &v150);
    sub_1AC213F38(4, v72);
    v52 = v115;
    v146 = v124;
    v147 = v92;
    sub_1AC213F4C(&v146, v72, v73, v74);
    v75 = v52;
    if (v52)
    {

      __break(1u);
    }

    else
    {
      v146 = v125;
      v147 = v93;
      sub_1AC213F4C(&v146, &v150, &v149, &v148);
      v66 = 0;
      v146 = v126;
      v147 = v94;
      sub_1AC213F4C(&v146, &v150, &v149, &v148);
      v65 = 0;
      v146 = v127;
      v147 = v95;
      sub_1AC213F4C(&v146, &v150, &v149, &v148);
      v64 = 0;
      v146 = v128;
      v147 = v96;
      sub_1AC213F4C(&v146, &v150, &v149, &v148);
      v63 = 0;
      v146 = v129;
      v147 = v97;
      sub_1AC213F4C(&v146, &v150, &v149, &v148);
      v62 = 0;
      v146 = v130;
      v147 = v98;
      sub_1AC213F4C(&v146, &v150, &v149, &v148);
      v61 = 0;
      v146 = v131;
      v147 = v99;
      sub_1AC213F4C(&v146, &v150, &v149, &v148);
      v60 = 0;
      v146 = v132;
      v147 = v100;
      sub_1AC213F4C(&v146, &v150, &v149, &v148);
      v59 = 0;
      v146 = v133;
      v147 = v101;
      sub_1AC213F4C(&v146, &v150, &v149, &v148);
      v58 = 0;
      v146 = v134;
      v147 = v102;
      sub_1AC213F4C(&v146, &v150, &v149, &v148);
      v57 = 0;
      v146 = v135;
      v147 = v104;
      sub_1AC213F4C(&v146, &v150, &v149, &v148);
      v56 = 0;
      _os_log_impl(&dword_1AC1C3000, v107, v108, "Feature: %s supported: %s hasContent: %s offline: %s", v69, 0x2Au);
      sub_1AC213F98(v70);
      sub_1AC213F98(v71);
      sub_1AC30AE4C();

      v67 = v56;
    }
  }

  else
  {

    v67 = v115;
  }

  v55 = v67;
  MEMORY[0x1E69E5920](v107);
  (*(v140 + 8))(v143, v139);
  if (v78)
  {
    HIDWORD(v54) = v112;
  }

  else
  {
    HIDWORD(v54) = 0;
  }

  return BYTE4(v54) & 1;
}

unint64_t sub_1AC2A0CBC()
{
  v2 = qword_1EB54C8F8;
  if (!qword_1EB54C8F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C438);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C8F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC2A0EF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v48 = a4;
  v57 = a1;
  v51 = a2;
  v50 = a3;
  v60 = sub_1AC2A2284;
  v62 = sub_1AC215C98;
  v66 = sub_1AC2A228C;
  v70 = sub_1AC2572B0;
  v72 = sub_1AC215C90;
  v74 = sub_1AC215C90;
  v76 = sub_1AC215CA4;
  v78 = sub_1AC215C90;
  v80 = sub_1AC215C90;
  v83 = sub_1AC2572BC;
  v98 = 0;
  v97 = 0;
  v96 = 0;
  v95 = 0;
  v56 = sub_1AC309E6C();
  v54 = *(v56 - 8);
  v55 = v56 - 8;
  v52 = (*(v54 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v53 = &v32 - v52;
  v98 = a1;
  v97 = MEMORY[0x1EEE9AC00](v51);
  v96 = v5;
  v6 = sub_1AC2A1A1C(v97, v5);
  v7 = v53;
  v59 = v6;
  v95 = v6;
  v8 = sub_1AC29DCC0();
  (*(v54 + 16))(v7, v8, v56);
  v58 = v94;
  sub_1AC241BFC(v57, v94);
  v68 = 7;
  v61 = swift_allocObject();
  memcpy((v61 + 16), v58, 0x28uLL);

  v69 = swift_allocObject();
  *(v69 + 16) = v59;
  v87 = sub_1AC309E4C();
  v88 = sub_1AC30AD2C();
  v64 = 17;
  v73 = swift_allocObject();
  *(v73 + 16) = 32;
  v75 = swift_allocObject();
  v65 = 8;
  *(v75 + 16) = 8;
  v67 = 32;
  v9 = swift_allocObject();
  v10 = v61;
  v63 = v9;
  *(v9 + 16) = v60;
  *(v9 + 24) = v10;
  v11 = swift_allocObject();
  v12 = v63;
  v77 = v11;
  *(v11 + 16) = v62;
  *(v11 + 24) = v12;
  v79 = swift_allocObject();
  *(v79 + 16) = 0;
  v81 = swift_allocObject();
  *(v81 + 16) = v65;
  v13 = swift_allocObject();
  v14 = v69;
  v71 = v13;
  *(v13 + 16) = v66;
  *(v13 + 24) = v14;
  v15 = swift_allocObject();
  v16 = v71;
  v84 = v15;
  *(v15 + 16) = v70;
  *(v15 + 24) = v16;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8);
  v82 = sub_1AC30B18C();
  v85 = v17;

  v18 = v73;
  v19 = v85;
  *v85 = v72;
  v19[1] = v18;

  v20 = v75;
  v21 = v85;
  v85[2] = v74;
  v21[3] = v20;

  v22 = v77;
  v23 = v85;
  v85[4] = v76;
  v23[5] = v22;

  v24 = v79;
  v25 = v85;
  v85[6] = v78;
  v25[7] = v24;

  v26 = v81;
  v27 = v85;
  v85[8] = v80;
  v27[9] = v26;

  v28 = v84;
  v29 = v85;
  v85[10] = v83;
  v29[11] = v28;
  sub_1AC206300();

  if (os_log_type_enabled(v87, v88))
  {
    v40 = sub_1AC30AE6C();
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8);
    v41 = sub_1AC213EE4(0);
    v42 = sub_1AC213EE4(1);
    v44 = &v93;
    v93 = v40;
    v45 = &v92;
    v92 = v41;
    v46 = &v91;
    v91 = v42;
    v43 = 2;
    sub_1AC213F38(2, &v93);
    sub_1AC213F38(v43, v44);
    v30 = v49;
    v89 = v72;
    v90 = v73;
    sub_1AC213F4C(&v89, v44, v45, v46);
    v47 = v30;
    if (v30)
    {

      __break(1u);
    }

    else
    {
      v89 = v74;
      v90 = v75;
      sub_1AC213F4C(&v89, &v93, &v92, &v91);
      v37 = 0;
      v89 = v76;
      v90 = v77;
      sub_1AC213F4C(&v89, &v93, &v92, &v91);
      v36 = 0;
      v89 = v78;
      v90 = v79;
      sub_1AC213F4C(&v89, &v93, &v92, &v91);
      v35 = 0;
      v89 = v80;
      v90 = v81;
      sub_1AC213F4C(&v89, &v93, &v92, &v91);
      v34 = 0;
      v89 = v83;
      v90 = v84;
      sub_1AC213F4C(&v89, &v93, &v92, &v91);
      v33 = 0;
      _os_log_impl(&dword_1AC1C3000, v87, v88, "Feature: %s specifiers: %ld", v40, 0x16u);
      sub_1AC213F98(v41);
      sub_1AC213F98(v42);
      sub_1AC30AE4C();

      v38 = v33;
    }
  }

  else
  {

    v38 = v49;
  }

  v32 = v38;
  MEMORY[0x1E69E5920](v87);
  (*(v54 + 8))(v53, v56);

  *v48 = v59;
}

unint64_t sub_1AC2A1944()
{
  v2 = qword_1EB54C900;
  if (!qword_1EB54C900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C8E8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C900);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC2A1A1C(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v13 = a2;
  v12 = v2;
  sub_1AC241BFC(v2, v9);
  v5 = v10;
  v6 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  v8 = (*(v6 + 24))(a1, a2, v5);
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v8;
}

uint64_t sub_1AC2A1D64(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 24)))
      {
        v3 = *(a1 + 24);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1AC2A1E7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 - 1;
    }
  }

  return result;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_1AC2A22E0@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for FitVideoTipSection() + 20);
  v2 = sub_1AC30901C();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t type metadata accessor for FitVideoTipSection()
{
  v1 = qword_1EB550F70;
  if (!qword_1EB550F70)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_1AC2A23CC(uint64_t a1)
{
  v12 = a1;
  v7 = 0;
  v11 = sub_1AC30901C();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  v6 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v11);
  v8 = &v5 - v6;
  (*(v9 + 16))(v2);
  v3 = type metadata accessor for FitVideoTipSection();
  (*(v9 + 40))(v1 + *(v3 + 20), v8, v11);
  return (*(v9 + 8))(v12, v11);
}

uint64_t sub_1AC2A253C()
{
  v2 = *(v0 + *(type metadata accessor for FitVideoTipSection() + 24));

  return v2;
}

uint64_t sub_1AC2A2584(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for FitVideoTipSection() + 24));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_1AC2A2630()
{
  v2 = *(v0 + *(type metadata accessor for FitVideoTipSection() + 28));

  return v2;
}

uint64_t sub_1AC2A2678(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for FitVideoTipSection() + 28));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_1AC2A2724()
{
  v2 = *(v0 + *(type metadata accessor for FitVideoTipSection() + 32));

  return v2;
}

uint64_t sub_1AC2A276C(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for FitVideoTipSection() + 32));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_1AC2A2818()
{
  v2 = *(v0 + *(type metadata accessor for FitVideoTipSection() + 36));
  sub_1AC2A2860(v2);
  return v2;
}

uint64_t sub_1AC2A2860(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1AC2A2894(uint64_t a1, uint64_t a2)
{
  sub_1AC2A2860(a1);
  v3 = (v2 + *(type metadata accessor for FitVideoTipSection() + 36));
  v4 = *v3;
  *v3 = a1;
  v3[1] = a2;
  sub_1AC238B8C(v4);
  return sub_1AC238B8C(a1);
}

uint64_t sub_1AC2A2944()
{
  v2 = *(v0 + *(type metadata accessor for FitVideoTipSection() + 40));

  return v2;
}

uint64_t sub_1AC2A297C(uint64_t a1)
{

  *(v1 + *(type metadata accessor for FitVideoTipSection() + 40)) = a1;
}

uint64_t sub_1AC2A2A18@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v104 = 0;
  v127 = 0;
  v126 = 0;
  v125 = 0;
  v124 = 0;
  v123 = 0;
  v115 = 0;
  v114 = 0;
  v113 = 0;
  v112 = 0;
  v111 = 0;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C920);
  v38 = *(v37 - 8);
  v39 = v38;
  v41 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v43 = (v41 + 15) & 0xFFFFFFFFFFFFFFF0;
  v40 = &v17 - v43;
  MEMORY[0x1EEE9AC00](&v17 - v43);
  v42 = &v17 - v43;
  MEMORY[0x1EEE9AC00](v2);
  v44 = &v17 - v43;
  v127 = &v17 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C928);
  v47 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45 - 8);
  v49 = (v47 + 15) & 0xFFFFFFFFFFFFFFF0;
  v46 = &v17 - v49;
  MEMORY[0x1EEE9AC00](&v17 - v49);
  v48 = &v17 - v49;
  MEMORY[0x1EEE9AC00](v3);
  v50 = &v17 - v49;
  v126 = &v17 - v49;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C930);
  v51 = v101;
  v52 = *(v101 - 8);
  v99 = v52;
  v53 = v52;
  v54 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v101 - 8);
  v56 = (v54 + 15) & 0xFFFFFFFFFFFFFFF0;
  v100 = &v17 - v56;
  v55 = &v17 - v56;
  MEMORY[0x1EEE9AC00](v4);
  v97 = &v17 - v56;
  v57 = &v17 - v56;
  v125 = &v17 - v56;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C938);
  v58 = *(v78 - 8);
  v75 = v58;
  v59 = (*(v58 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v78 - 8);
  v76 = &v17 - v59;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C940);
  v60 = *(v82 - 8);
  v80 = v60;
  v61 = (*(v60 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v82 - 8);
  v81 = &v17 - v61;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C948);
  v62 = (*(*(v86 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v86 - 8);
  v85 = &v17 - v62;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C950);
  v63 = v93;
  v64 = *(v93 - 8);
  v91 = v64;
  v65 = v64;
  v66 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v93 - 8);
  v68 = (v66 + 15) & 0xFFFFFFFFFFFFFFF0;
  v92 = &v17 - v68;
  v67 = &v17 - v68;
  MEMORY[0x1EEE9AC00](v5);
  v89 = &v17 - v68;
  v69 = &v17 - v68;
  v124 = &v17 - v68;
  v123 = v1;
  v110 = v1;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C958);
  sub_1AC2A3F48();
  sub_1AC30A74C();
  v83 = 2;
  v72 = sub_1AC30B18C();
  v71 = v6;
  *v6 = sub_1AC30A36C();
  v7 = sub_1AC30A37C();
  v8 = v72;
  v71[1] = v7;
  sub_1AC206300();
  v73 = v8;
  sub_1AC2A4B00();
  sub_1AC30AF2C();
  v74 = v122;
  v79 = sub_1AC2A4B78();
  v77 = 0;
  sub_1AC30A4EC();
  (*(v75 + 8))(v76, v78);
  sub_1AC30A77C();
  v121 = v77;
  v120[5] = v78;
  v120[6] = v79;
  v87 = 1;
  swift_getOpaqueTypeConformance2();
  sub_1AC30A55C();
  (*(v80 + 8))(v81, v82);
  v88 = sub_1AC2A4C94();
  sub_1AC2A4C70();
  sub_1AC30A53C();
  v9 = v84;
  sub_1AC1CD0D8(v85);
  v120[3] = v86;
  v120[4] = v88;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1AC207B58(v92, v93, v89);
  v94 = *(v91 + 8);
  v95 = (v91 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v94(v92, v93);
  v109 = v9;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C990);
  sub_1AC2A51A0();
  sub_1AC30A74C();
  v98 = sub_1AC2A53DC();
  sub_1AC207B58(v100, v101, v97);
  v102 = *(v99 + 8);
  v103 = (v99 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v102(v100, v101);
  v105 = type metadata accessor for FitVideoTipSection();
  v10 = (v9 + *(v105 + 32));
  v106 = *v10;
  v108 = v10[1];
  v107 = v108;

  if (!v108)
  {
    goto LABEL_7;
  }

  v34 = v106;
  v35 = v107;
  v29 = v107;
  v30 = v106;
  v114 = v106;
  v115 = v107;
  v11 = (v84 + *(v105 + 36));
  v33 = *v11;
  v31 = v33;
  v32 = v11[1];
  sub_1AC2A2860(v33);
  if (!v33)
  {

LABEL_7:
    (*(v39 + 56))(v46, 1, 1, v37);
    sub_1AC2A5488();
    sub_1AC2A4C24(v46, v37, v48);
    sub_1AC2A55BC(v46);
    sub_1AC2A5670(v48, v50);
    goto LABEL_8;
  }

  v27 = v31;
  v28 = v32;
  v23 = v32;
  v19 = v31;
  v112 = v31;
  v113 = v32;

  v22 = &v17;
  MEMORY[0x1EEE9AC00](&v17);
  v12 = v19;
  v13 = v29;
  v20 = &v17 - 6;
  *(&v17 - 4) = v14;
  *(&v17 - 3) = v13;
  *(&v17 - 2) = v12;
  *(&v17 - 1) = v15;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C9D0);
  sub_1AC2A5534();
  sub_1AC30A74C();

  v24 = sub_1AC2A5488();
  sub_1AC207B58(v42, v37, v44);
  v25 = *(v39 + 8);
  v26 = (v39 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v25(v42, v37);
  v111 = v42;
  v18 = *(v39 + 16);
  v17 = v39 + 16;
  v18(v40, v44, v37);
  sub_1AC207B58(v40, v37, v42);
  v25(v40, v37);
  v18(v46, v42, v37);
  (*(v39 + 56))(v46, 0, 1, v37);
  sub_1AC2A4C24(v46, v37, v48);
  sub_1AC2A55BC(v46);
  sub_1AC2A5670(v48, v50);
  v25(v42, v37);
  v25(v44, v37);

LABEL_8:
  (*(v65 + 16))(v67, v69, v63);
  v120[0] = v67;
  (*(v53 + 16))(v55, v57, v51);
  v120[1] = v55;
  sub_1AC2A57A4(v50, v48);
  v120[2] = v48;
  v119[0] = v63;
  v119[1] = v51;
  v119[2] = v45;
  v116 = OpaqueTypeConformance2;
  v117 = v98;
  v118 = sub_1AC2A58D8();
  sub_1AC23A49C(v120, 3uLL, v119, v36);
  sub_1AC2A55BC(v48);
  v102(v55, v51);
  v94(v67, v63);
  sub_1AC2A55BC(v50);
  v102(v57, v51);
  return (v94)(v69, v63);
}

uint64_t sub_1AC2A3664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = &v104;
  v69 = a1;
  v44 = a2;
  v67 = 0;
  v109 = 0;
  v108 = 0;
  v107 = 0;
  v77 = 0;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CB30);
  v46 = (*(*(v45 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v45 - 8);
  v47 = &v17 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CB38);
  v49 = (*(*(v48 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v48 - 8);
  v50 = &v17 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CB40);
  v52 = *(v51 - 8);
  v53 = v52;
  v55 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v51 - 8);
  v57 = (v55 + 15) & 0xFFFFFFFFFFFFFFF0;
  v54 = &v17 - v57;
  MEMORY[0x1EEE9AC00](&v17 - v57);
  v56 = &v17 - v57;
  MEMORY[0x1EEE9AC00](v2);
  v58 = &v17 - v57;
  v109 = &v17 - v57;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CB48);
  v61 = *(*(v59 - 8) + 64);
  MEMORY[0x1EEE9AC00](v69);
  v63 = (v61 + 15) & 0xFFFFFFFFFFFFFFF0;
  v60 = &v17 - v63;
  MEMORY[0x1EEE9AC00](v3);
  v62 = &v17 - v63;
  MEMORY[0x1EEE9AC00](v4);
  v64 = &v17 - v63;
  v108 = &v17 - v63;
  v107 = v5;
  v66 = sub_1AC30A22C();
  v76 = v69;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CB50);
  sub_1AC2AE84C();
  sub_1AC30A70C();
  v111 = v99;
  v110 = v98;
  v115 = v103;
  v114 = v102;
  v113 = v101;
  v112 = v100;
  v96[1] = v99;
  v96[0] = v98;
  v97 = v103;
  v96[4] = v102;
  v96[3] = v101;
  v96[2] = v100;
  v68 = sub_1AC30A37C();
  v70 = type metadata accessor for FitVideoTipSection();
  v74 = *(v69 + *(v70 + 40));

  v95 = v74;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C8E8);
  v71 = v72;
  v73 = sub_1AC29F6DC();
  v75 = sub_1AC30ACAC();

  if (v75)
  {
    v41 = 0;
  }

  else
  {
    v41 = 0x4034000000000000;
  }

  v42 = 0;
  v31 = 0;
  v32 = v41;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CB60);
  sub_1AC2AE8D4();
  v34 = v96;
  sub_1AC30A5CC();
  sub_1AC2AE95C(v34);
  v86 = *v43;
  v6 = v43[1];
  v7 = v43[2];
  v8 = v43[3];
  v90 = v43[4];
  v89 = v8;
  v88 = v7;
  v87 = v6;
  v9 = v43[5];
  v10 = v43[6];
  v11 = v43[7];
  v94 = v105;
  v93 = v11;
  v92 = v10;
  v91 = v9;
  v84[0] = v86;
  v84[4] = v90;
  v84[3] = v89;
  v84[2] = v88;
  v84[1] = v87;
  v85 = v105;
  v84[7] = v11;
  v84[6] = v10;
  v84[5] = v9;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CB70);
  v35 = v36;
  v37 = sub_1AC2AE9C8();
  v38 = v84;
  sub_1AC207B58(v84, v36, v106);
  sub_1AC2AE95C(v38);
  v39 = *(v69 + *(v70 + 40));

  v83[2] = v39;
  v40 = sub_1AC30ACAC();

  if (v40)
  {
    (*(v53 + 56))(v60, 1, 1, v51);
    sub_1AC2AEA6C();
    sub_1AC2A4C24(v60, v51, v62);
    sub_1AC2AEC3C(v60);
    sub_1AC2AED1C(v62, v64);
  }

  else
  {
    v22 = sub_1AC30A22C();
    v23 = &v17;
    MEMORY[0x1EEE9AC00](&v17);
    v20 = &v17 - 4;
    *(&v17 - 2) = v12;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CBA0);
    sub_1AC2AF2D0();
    v28 = 0;
    sub_1AC30A70C();
    v25 = sub_1AC30B18C();
    v24 = v13;
    *v13 = sub_1AC30A36C();
    v24[1] = sub_1AC30A38C();
    v14 = sub_1AC30A39C();
    v15 = v25;
    v24[2] = v14;
    sub_1AC206300();
    v26 = v15;
    sub_1AC2A4B00();
    sub_1AC30AF2C();
    v27 = v78;
    sub_1AC2AEBB4();
    sub_1AC30A5CC();
    sub_1AC2AF3E8(v47);
    v29 = sub_1AC30A37C();
    sub_1AC2AEB10();
    sub_1AC30A5CC();
    sub_1AC2AF3E8(v50);
    v30 = sub_1AC2AEA6C();
    sub_1AC207B58(v56, v51, v58);
    sub_1AC2AF3E8(v56);
    v77 = v56;
    sub_1AC2AF474(v58, v54);
    sub_1AC207B58(v54, v51, v56);
    sub_1AC2AF3E8(v54);
    sub_1AC2AF474(v56, v60);
    (*(v53 + 56))(v60, 0, 1, v51);
    sub_1AC2A4C24(v60, v51, v62);
    sub_1AC2AEC3C(v60);
    sub_1AC2AED1C(v62, v64);
    sub_1AC2AF3E8(v56);
    sub_1AC2AF3E8(v58);
  }

  v19 = v106;
  v18 = v82;
  sub_1AC2AEF14(v106, v82);
  v83[0] = v18;
  sub_1AC2AF038(v64, v62);
  v83[1] = v62;
  v81[0] = v35;
  v81[1] = v59;
  v79 = v37;
  v80 = sub_1AC2AF230();
  sub_1AC23A49C(v83, 2uLL, v81, v44);
  sub_1AC2AEC3C(v62);
  sub_1AC2AE95C(v18);
  sub_1AC2AEC3C(v64);
  return sub_1AC2AE95C(v19);
}

unint64_t sub_1AC2A3F48()
{
  v2 = qword_1EB54C960;
  if (!qword_1EB54C960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C958);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C960);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC2A3FD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  memset(v93, 0, sizeof(v93));
  memset(v67, 0, sizeof(v67));
  v94 = a1;
  v34 = type metadata accessor for FitVideoTipSection();
  v2 = (a1 + *(v34 + 24));
  v20 = *v2;
  v21 = v2[1];

  v91 = v20;
  v92 = v21;
  sub_1AC207FC0();
  v87 = sub_1AC30A47C();
  v88 = v3;
  v89 = v4;
  v90 = v5;
  v22 = v87;
  v23 = v3;
  v24 = v4;
  v25 = v5;
  sub_1AC30A41C();
  v83 = v22;
  v84 = v23;
  v85 = v24 & 1;
  v86 = v25;
  v79 = sub_1AC30A45C();
  v80 = v6;
  v81 = v7;
  v82 = v8;
  v27 = v79;
  v28 = v6;
  v26 = v7;
  v29 = v8;

  sub_1AC207F7C(v22, v23, v24 & 1);

  sub_1AC30A3EC();
  v75 = v27;
  v76 = v28;
  v77 = v26 & 1;
  v78 = v29;
  v71 = sub_1AC30A43C();
  v72 = v9;
  v73 = v10;
  v74 = v11;
  v30 = v71;
  v31 = v9;
  v32 = v10;
  v33 = v11;
  sub_1AC207F7C(v27, v28, v26 & 1);

  v68[0] = v30;
  v68[1] = v31;
  v69 = v32 & 1;
  v70 = v33;
  v44 = MEMORY[0x1E6981148];
  sub_1AC207B58(v68, MEMORY[0x1E6981148], v93);
  sub_1AC208038(v68);
  v12 = (a1 + *(v34 + 28));
  v36 = *v12;
  v37 = v12[1];

  v65 = v36;
  v66 = v37;
  v61 = sub_1AC30A47C();
  v62 = v13;
  v63 = v14;
  v64 = v15;
  v38 = v13;
  v39 = v14;
  v40 = v15;
  sub_1AC30A3AC();
  v57 = v61;
  v58 = v38;
  v59 = v39 & 1;
  v60 = v40;
  v53 = sub_1AC30A45C();
  v54 = v16;
  v55 = v17;
  v56 = v18;
  v41 = v16;
  v42 = v17;
  v43 = v18;

  sub_1AC207F7C(v61, v38, v39 & 1);

  v50[0] = v53;
  v50[1] = v41;
  v51 = v42 & 1;
  v52 = v43;
  sub_1AC207B58(v50, v44, v67);
  sub_1AC208038(v50);
  sub_1AC2AF744(v93, v48);
  v49[0] = v48;
  sub_1AC2AF744(v67, v47);
  v49[1] = v47;
  v46[0] = v44;
  v46[1] = v44;
  sub_1AC23A49C(v49, 2uLL, v46, a2);
  sub_1AC208038(v47);
  sub_1AC208038(v48);
  sub_1AC208038(v67);
  return sub_1AC208038(v93);
}

uint64_t sub_1AC2A4458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v11 = a1;
  v18 = sub_1AC2A47E0;
  v21 = sub_1AC2AF6B0;
  v41 = 0;
  v40 = 0;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CBA0);
  v27 = *(v33 - 8);
  v28 = v33 - 8;
  v9 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v31 = &v9 - v9;
  v10 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v32 = &v9 - v10;
  v41 = &v9 - v10;
  v40 = v4;
  v19 = 0;
  v12 = *(v11 + *(type metadata accessor for FitVideoTipSection() + 40));

  v14 = &v38;
  v38 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C8E8);
  v5 = sub_1AC2AF5A0();
  MEMORY[0x1AC5B00D0](&v39, v13, v5);
  sub_1AC209190();
  v17 = &v37;
  v37 = v39;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CBC8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CBD0);
  sub_1AC2AF628();
  v6 = sub_1AC30AB6C();
  v26 = &v36;
  v36 = v6;
  KeyPath = swift_getKeyPath();
  v7 = swift_allocObject();
  v22 = v7;
  *(v7 + 16) = v18;
  *(v7 + 24) = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CBE0);
  v24 = sub_1AC309ACC();
  v25 = sub_1AC2AF6BC();
  sub_1AC2AF368();
  sub_1AC30A72C();
  v30 = sub_1AC2AF2D0();
  sub_1AC207B58(v31, v33, v32);
  v35 = *(v27 + 8);
  v34 = v27 + 8;
  v35(v31, v33);
  (*(v27 + 16))(v31, v32, v33);
  sub_1AC207B58(v31, v33, v29);
  v35(v31, v33);
  return (v35)(v32, v33);
}

uint64_t sub_1AC2A47E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v19 = a4;
  v31 = a1;
  v21 = a2;
  v20 = a3;
  v39 = 0;
  v38 = 0;
  v36 = 0;
  v37 = 0;
  v29 = 0;
  v22 = sub_1AC309ACC();
  v23 = *(v22 - 8);
  v24 = v22 - 8;
  v25 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v31);
  v26 = v17 - v25;
  v27 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v28 = v17 - v27;
  v39 = v17 - v27;
  v38 = v6;
  v36 = v7;
  v37 = v8;
  v34 = sub_1AC30B17C();
  v35 = v9;
  v10 = sub_1AC30A9DC();
  v30 = v11;
  MEMORY[0x1AC5B07E0](v10);

  result = v31;
  v32 = v31 + 1;
  if (__OFADD__(v31, 1))
  {
    __break(1u);
  }

  else
  {
    v33 = v32;
    v17[1] = &v34;
    sub_1AC30B14C();
    v14 = sub_1AC30A9DC();
    v17[0] = v15;
    MEMORY[0x1AC5B07E0](v14);

    v17[3] = v34;
    v17[2] = v35;

    sub_1AC2063F0();
    v17[4] = sub_1AC30A9BC();
    v17[5] = v16;

    sub_1AC309ABC();
    v17[6] = sub_1AC2AF368();
    sub_1AC207B58(v26, v22, v28);
    v18 = *(v23 + 8);
    v17[7] = v23 + 8;
    v18(v26, v22);
    (*(v23 + 16))(v26, v28, v22);
    sub_1AC207B58(v26, v22, v19);
    v18(v26, v22);
    return (v18)(v28, v22);
  }

  return result;
}

unint64_t sub_1AC2A4B00()
{
  v2 = qword_1EB54C968;
  if (!qword_1EB54C968)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C968);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2A4B78()
{
  v2 = qword_1EB54C970;
  if (!qword_1EB54C970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C938);
    sub_1AC2A3F48();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C970);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2A4C94()
{
  v2 = qword_1EB54C978;
  if (!qword_1EB54C978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C948);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C938);
    sub_1AC2A4B78();
    swift_getOpaqueTypeConformance2();
    sub_1AC2A4D8C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C978);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2A4D8C()
{
  v2 = qword_1EB54C980;
  if (!qword_1EB54C980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C988);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C980);
    return WitnessTable;
  }

  return v2;
}

char *sub_1AC2A4E14@<X0>(float *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v18 = a1;
  v35 = 0;
  v34 = 0;
  v27 = 0;
  v17 = sub_1AC30901C();
  v15 = *(v17 - 8);
  v16 = v17 - 8;
  v9 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v19 = &v8 - v9;
  v20 = type metadata accessor for FitTestLoopingVideoPlayer();
  v10 = (*(*(v20 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v20);
  v2 = (&v8 - v10);
  v22 = &v8 - v10;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C9A8);
  v11 = (*(*(v25 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v8 - v11;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C990);
  v13 = *(*(v30 - 8) + 64);
  v12 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v27);
  v32 = &v8 - v12;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v33 = &v8 - v14;
  v35 = &v8 - v14;
  v34 = v4;
  v5 = type metadata accessor for FitVideoTipSection();
  (*(v15 + 16))(v19, v18 + *(v5 + 20), v17);
  sub_1AC2A5970(v19, v2, *v18, v18[1]);
  v21 = sub_1AC2A52E8();
  sub_1AC23A478();
  v26 = 0;
  sub_1AC30A59C();
  sub_1AC2A9FA4(v22);
  v23 = sub_1AC30A76C();
  v24 = v6;
  sub_1AC2A5244();
  sub_1AC30A5AC();
  sub_1AC2A9FA4(v28);
  v31 = sub_1AC2A51A0();
  sub_1AC207B58(v32, v30, v33);
  sub_1AC2A9FA4(v32);
  sub_1AC2AE624(v33, v32);
  sub_1AC207B58(v32, v30, v29);
  sub_1AC2A9FA4(v32);
  return sub_1AC2A9FA4(v33);
}

unint64_t sub_1AC2A51A0()
{
  v2 = qword_1EB54C998;
  if (!qword_1EB54C998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C990);
    sub_1AC2A5244();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C998);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2A5244()
{
  v2 = qword_1EB54C9A0;
  if (!qword_1EB54C9A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C9A8);
    sub_1AC2A52E8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C9A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2A52E8()
{
  v2 = qword_1EB54C9B0;
  if (!qword_1EB54C9B0)
  {
    type metadata accessor for FitTestLoopingVideoPlayer();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C9B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for FitTestLoopingVideoPlayer()
{
  v1 = qword_1EB550F90;
  if (!qword_1EB550F90)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

unint64_t sub_1AC2A53DC()
{
  v2 = qword_1EB54C9B8;
  if (!qword_1EB54C9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C930);
    sub_1AC2A51A0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C9B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2A5488()
{
  v2 = qword_1EB54C9C0;
  if (!qword_1EB54C9C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C920);
    sub_1AC2A5534();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C9C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2A5534()
{
  v2 = qword_1EB54C9C8;
  if (!qword_1EB54C9C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C9D0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C9C8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC2A55BC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C920);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_1AC2A5670(const void *a1, void *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C920);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C928);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_1AC2A57A4(const void *a1, void *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C920);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C928);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

unint64_t sub_1AC2A58D8()
{
  v2 = qword_1EB54C9D8;
  if (!qword_1EB54C9D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C928);
    sub_1AC2A5488();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C9D8);
    return WitnessTable;
  }

  return v2;
}

char *sub_1AC2A5970@<X0>(uint64_t a1@<X0>, void *a2@<X8>, float a3@<S0>, float a4@<S1>)
{
  v31 = a2;
  v35 = a1;
  v27 = a3;
  v28 = a4;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v38 = 0;
  v37 = 0;
  v25 = 0;
  v34 = sub_1AC30901C();
  v32 = *(v34 - 8);
  v33 = v34 - 8;
  v18 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v24 = &v18 - v18;
  v21 = type metadata accessor for FitTestLoopingVideoPlayer();
  v19 = (*(*(v21 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v21);
  v36 = &v18 - v19;
  v41 = &v18 - v19;
  v40 = v5;
  v39 = __PAIR64__(v6, LODWORD(v4));
  v20 = *(v7 + 28);
  swift_getKeyPath();
  sub_1AC30A07C();
  v23 = *(v21 + 32);
  v22 = 1;
  v8 = sub_1AC2A8498();
  v9 = &v36[v23];
  *v9 = v8 & v22;
  *(v9 + 1) = v10;
  sub_1AC239550();
  (*(v32 + 16))(v24, v35, v34);
  v30 = sub_1AC2395B4(v24);
  v38 = v30;
  sub_1AC239664();
  MEMORY[0x1E69E5928](v30);
  v29 = sub_1AC2396C8(v30);
  v37 = v29;
  sub_1AC239754();
  MEMORY[0x1E69E5928](v29);
  v26 = sub_1AC2397B8(v29);
  MEMORY[0x1E69E5928](v26);
  *v36 = v26;
  sub_1AC2397F8();
  MEMORY[0x1E69E5928](v29);
  v11 = sub_1AC23985C(v26, v29);
  v12 = v27;
  v13 = v28;
  v14 = v36;
  v15 = v11;
  v16 = v29;
  *(v36 + 1) = v15;
  *(v14 + 4) = v12;
  *(v14 + 5) = v13;
  MEMORY[0x1E69E5920](v16);
  MEMORY[0x1E69E5920](v30);
  sub_1AC2A9DFC(v36, v31);
  (*(v32 + 8))(v35, v34);
  return sub_1AC2A9FA4(v36);
}

uint64_t sub_1AC2A5C68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25 = a5;
  v16 = a1;
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v20 = sub_1AC2AE508;
  v37 = 0;
  v35 = 0;
  v36 = 0;
  v33 = 0;
  v34 = 0;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C9D0);
  v23 = *(v29 - 8);
  v24 = v29 - 8;
  v14 = *(v23 + 64);
  v13 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v17);
  v27 = &v13 - v13;
  v15 = v13;
  MEMORY[0x1EEE9AC00](v5);
  v28 = &v13 - v15;
  v37 = &v13 - v15;
  v35 = v6;
  v36 = v7;
  v33 = v8;
  v34 = v9;

  v22 = v32;
  v32[0] = v16;
  v32[1] = v17;

  v10 = swift_allocObject();
  v11 = v19;
  v21 = v10;
  *(v10 + 16) = v18;
  *(v10 + 24) = v11;
  sub_1AC207FC0();
  sub_1AC30A6EC();
  v26 = sub_1AC2A5534();
  sub_1AC207B58(v27, v29, v28);
  v31 = *(v23 + 8);
  v30 = v23 + 8;
  v31(v27, v29);
  (*(v23 + 16))(v27, v28, v29);
  sub_1AC207B58(v27, v29, v25);
  v31(v27, v29);
  return (v31)(v28, v29);
}

uint64_t sub_1AC2A5EF8(void (*a1)(void))
{

  a1();
}

int *sub_1AC2A5F58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, float *a9@<X8>, float a10@<S0>, float a11@<S1>, uint64_t a12, uint64_t a13)
{
  *a9 = a10;
  a9[1] = a11;
  v29 = type metadata accessor for FitVideoTipSection();
  v19 = v29[5];
  v13 = sub_1AC30901C();
  (*(*(v13 - 8) + 32))(a9 + v19, a1);
  result = v29;
  v15 = (a9 + v29[6]);
  *v15 = a2;
  v15[1] = a3;
  v16 = (a9 + v29[7]);
  *v16 = a4;
  v16[1] = a5;
  v17 = (a9 + v29[8]);
  *v17 = a6;
  v17[1] = a7;
  v18 = (a9 + v29[9]);
  *v18 = a8;
  v18[1] = a12;
  *(a9 + v29[10]) = a13;
  return result;
}

uint64_t sub_1AC2A60CC(uint64_t a1)
{
  sub_1AC241BFC(a1, v4);
  __swift_destroy_boxed_opaque_existential_1(__dst);
  sub_1AC2051E4(v4, __dst);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1AC2A6118@<X0>(uint64_t a1@<X8>)
{
  v5[2] = a1;
  v8 = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C5B8);
  v5[0] = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v1 = (v5 - v5[0]);
  v7 = v5 - v5[0];
  v8 = v2;
  v3 = type metadata accessor for TipFitView();
  sub_1AC2AA118((v5[1] + *(v3 + 20)), v1);
  sub_1AC30A05C();
  return sub_1AC2AA1EC(v7);
}

uint64_t sub_1AC2A6218@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = a2;
  v6 = a1;
  v4[1] = 0;
  v12 = sub_1AC30A04C();
  v8 = *(v12 - 8);
  v9 = v12 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v11 = v4 - v5;
  v15 = sub_1AC30A18C();
  v13 = *(v15 - 8);
  v14 = v15 - 8;
  v7 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v15);
  v16 = v4 - v7;
  (*(v13 + 16))(v4 - v7, v2);
  sub_1AC30A16C();
  (*(v8 + 32))(v10, v11, v12);
  return (*(v13 + 8))(v16, v15);
}

uint64_t sub_1AC2A63A8(uint64_t a1)
{
  v4 = a1;
  v1 = sub_1AC30A04C();
  v6 = *(v1 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v1);
  v7 = &v4 - v5;
  (*(v6 + 16))(v2);
  return sub_1AC30A17C();
}

uint64_t sub_1AC2A6498(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C5B8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v7 = &v5 - v6;
  sub_1AC2AA118(v2, (&v5 - v6));
  v3 = type metadata accessor for TipFitView();
  sub_1AC2AA288(v7, (v1 + *(v3 + 20)));
  return sub_1AC2AA1EC(v8);
}

uint64_t sub_1AC2A6548@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v21 = sub_1AC2AA374;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C9E8);
  v22 = *(v25 - 8);
  v23 = v25 - 8;
  v5 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v25);
  v24 = &v5 - v5;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C9F0);
  v6 = (*(*(v27 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v5 - v6;
  v7 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v5 - v6);
  v30 = &v5 - v7;
  v36 = &v5 - v7;
  v14 = sub_1AC30A04C();
  v10 = *(v14 - 8);
  v11 = v14 - 8;
  v8 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v12 = &v5 - v8;
  v9 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v5 - v8);
  v13 = &v5 - v9;
  v35 = v1;
  sub_1AC2A6118(&v5 - v9);
  (*(v10 + 104))(v12, *MEMORY[0x1E697DBA8], v14);
  v18 = sub_1AC30A03C();
  v16 = *(v10 + 8);
  v15 = v10 + 8;
  v16(v12, v14);
  v16(v13, v14);
  v34 = v18 & 1;
  v19 = &v31;
  v32 = v17;
  v33 = v18 & 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C9F8);
  sub_1AC2AA384();
  sub_1AC30A42C();
  sub_1AC2AA40C();
  sub_1AC30A56C();
  (*(v22 + 8))(v24, v25);
  v28 = sub_1AC2AA494();
  sub_1AC207B58(v29, v27, v30);
  sub_1AC2AA6F4(v29);
  sub_1AC2AA8BC(v30, v29);
  sub_1AC207B58(v29, v27, v26);
  sub_1AC2AA6F4(v29);
  return sub_1AC2AA6F4(v30);
}

uint64_t sub_1AC2A6900@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v131 = a3;
  v160 = a1;
  v148 = a2;
  v200 = sub_1AC2A79D8;
  v132 = sub_1AC2A7E04;
  v247 = 0;
  v246 = 0;
  v245 = 0;
  v235 = 0;
  v225 = 0;
  v174 = 0;
  v181 = sub_1AC30A90C();
  v178 = *(v181 - 8);
  v179 = v181 - 8;
  v133 = (*(v178 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v180 = &v65 - v133;
  v169 = sub_1AC30A8EC();
  v167 = *(v169 - 8);
  v168 = v169 - 8;
  v134 = (v167[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v174);
  v173 = &v65 - v134;
  v135 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v164 = &v65 - v135;
  v136 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v170 = &v65 - v136;
  v137 = (*(*(sub_1AC30901C() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v174);
  v201 = &v65 - v137;
  v205 = type metadata accessor for FitVideoTipSection();
  v138 = (*(*(v205 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v160);
  v139 = &v65 - v138;
  v140 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v141 = &v65 - v140;
  v142 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v143 = (&v65 - v142);
  v144 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v145 = (&v65 - v144);
  v146 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v207 = (&v65 - v146);
  v147 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v16);
  v204 = &v65 - v147;
  v247 = &v65 - v147;
  v246 = v17;
  v187 = 1;
  v245 = v18 & 1;
  v203 = v242;
  sub_1AC241BFC(v17, v242);
  v149 = v243;
  v150 = v244;
  __swift_project_boxed_opaque_existential_1(v203, v243);
  v192 = (*(v150 + 40))(v148 & 1, v149);
  v193 = v19;
  v202 = v239;
  sub_1AC241BFC(v160, v239);
  v152 = v240;
  v151 = v241;
  __swift_project_boxed_opaque_existential_1(v202, v240);
  (*(v151 + 16))(v152);
  sub_1AC30A9DC();
  v153 = v20;
  v194 = sub_1AC20BD0C();
  v195 = v21;

  v159 = 17;
  sub_1AC30A8DC();
  sub_1AC30A9DC();
  v154 = v22;
  sub_1AC30A8CC();

  v158 = v236;
  sub_1AC241BFC(v160, v236);
  v156 = v237;
  v155 = v238;
  __swift_project_boxed_opaque_existential_1(v158, v237);
  (*(*(v155 + 8) + 8))(v156);
  v157 = v23;
  sub_1AC30A8BC();

  __swift_destroy_boxed_opaque_existential_1(v158);
  sub_1AC30A9DC();
  v161 = v24;
  sub_1AC30A8CC();

  v162 = v167[2];
  v163 = v167 + 2;
  v162(v164, v170, v169);
  v165 = v167[4];
  v166 = v167 + 4;
  v165(v173, v164, v169);
  v171 = v167[1];
  v172 = v167 + 1;
  v171(v170, v169);
  sub_1AC30A8FC();
  v175 = sub_1AC30A9DC();
  v177 = v25;
  v176 = type metadata accessor for TipFitView();
  v196 = sub_1AC2162E8(v180, v175, v177, v176);
  v197 = v26;

  v182 = *(v178 + 8);
  v183 = v178 + 8;
  v182(v180, v181);
  sub_1AC30A9DC();
  v184 = v27;
  v198 = sub_1AC20BD0C();
  v199 = v28;

  v191 = MEMORY[0x1E69E6158];
  v190 = sub_1AC30B18C();
  v188 = v29;
  v186 = 16;
  sub_1AC30A9DC();
  v185 = v30;
  v31 = sub_1AC20BD0C();
  v32 = v188;
  *v188 = v31;
  v32[1] = v33;

  sub_1AC30A9DC();
  v189 = v34;
  v35 = sub_1AC20BD0C();
  v36 = v188;
  v188[2] = v35;
  v36[3] = v37;

  v38 = v190;
  sub_1AC206300();
  sub_1AC2A5F58(v201, v194, v195, v196, v197, v198, v199, v200, v207, v192, v193, 0, v38);
  __swift_destroy_boxed_opaque_existential_1(v202);
  __swift_destroy_boxed_opaque_existential_1(v203);
  v206 = sub_1AC2AE16C();
  sub_1AC207B58(v207, v205, v204);
  sub_1AC2AE1EC(v207);
  v235 = v207;
  v130 = v232;
  sub_1AC241BFC(v160, v232);
  v107 = v233;
  v108 = v234;
  __swift_project_boxed_opaque_existential_1(v130, v233);
  v39 = *(v108 + 40);
  v119 = 1;
  v122 = v39(v148 & 1, v107);
  v123 = v40;
  v129 = v229;
  sub_1AC241BFC(v160, v229);
  v110 = v230;
  v109 = v231;
  __swift_project_boxed_opaque_existential_1(v129, v230);
  (*(v109 + 24))(v110);
  sub_1AC30A9DC();
  v111 = v41;
  v128 = sub_1AC20BD0C();
  v124 = v42;

  v117 = 22;
  sub_1AC30A8DC();
  v127 = 0;
  sub_1AC30A9DC();
  v112 = v43;
  sub_1AC30A8CC();

  v116 = v226;
  sub_1AC241BFC(v160, v226);
  v114 = v227;
  v113 = v228;
  __swift_project_boxed_opaque_existential_1(v116, v227);
  (*(*(v113 + 8) + 16))(v114);
  v115 = v44;
  sub_1AC30A8BC();

  __swift_destroy_boxed_opaque_existential_1(v116);
  sub_1AC30A9DC();
  v118 = v45;
  sub_1AC30A8CC();

  v162(v164, v170, v169);
  v165(v173, v164, v169);
  v171(v170, v169);
  sub_1AC30A8FC();
  v120 = sub_1AC30A9DC();
  v121 = v46;
  v125 = sub_1AC2162E8(v180, v120, v46, v176);
  v126 = v47;

  v182(v180, v181);
  v48 = sub_1AC30B18C();
  sub_1AC2A5F58(v201, v128, v124, v125, v126, v127, v127, v127, v145, v122, v123, 0, v48);
  __swift_destroy_boxed_opaque_existential_1(v129);
  __swift_destroy_boxed_opaque_existential_1(v130);
  sub_1AC207B58(v145, v205, v207);
  sub_1AC2AE1EC(v145);
  v225 = v145;
  v105 = v222;
  sub_1AC241BFC(v160, v222);
  v66 = v223;
  v67 = v224;
  __swift_project_boxed_opaque_existential_1(v105, v223);
  v49 = *(v67 + 40);
  v91 = 1;
  v96 = v49(v148 & 1, v66);
  v97 = v50;
  v104 = v219;
  sub_1AC241BFC(v160, v219);
  v69 = v220;
  v68 = v221;
  __swift_project_boxed_opaque_existential_1(v104, v220);
  (*(v68 + 32))(v69);
  sub_1AC30A9DC();
  v70 = v51;
  v103 = sub_1AC20BD0C();
  v98 = v52;

  v76 = 16;
  v80 = 1;
  sub_1AC30A8DC();
  v81 = "";
  v95 = 0;
  sub_1AC30A9DC();
  v71 = v53;
  sub_1AC30A8CC();

  v75 = v216;
  sub_1AC241BFC(v160, v216);
  v73 = v217;
  v72 = v218;
  __swift_project_boxed_opaque_existential_1(v75, v217);
  (*(*(v72 + 8) + 8))(v73);
  v74 = v54;
  sub_1AC30A8BC();

  __swift_destroy_boxed_opaque_existential_1(v75);
  sub_1AC30A9DC();
  v77 = v55;
  sub_1AC30A8CC();

  v162(v164, v170, v169);
  v165(v173, v164, v169);
  v171(v170, v169);
  sub_1AC30A8FC();
  v89 = "B788";
  v90 = 4;
  v78 = sub_1AC30A9DC();
  v79 = v56;
  v92 = &off_1F20F7E58;
  v99 = sub_1AC2162E8(v180, v78, v56, v176);
  v100 = v57;

  v182(v180, v181);
  v87 = 20;
  sub_1AC30A8DC();
  sub_1AC30A9DC();
  v82 = v58;
  sub_1AC30A8CC();

  v86 = v213;
  sub_1AC241BFC(v160, v213);
  v84 = v214;
  v83 = v215;
  __swift_project_boxed_opaque_existential_1(v86, v214);
  (*(*(v83 + 8) + 8))(v84);
  v85 = v59;
  sub_1AC30A8BC();

  __swift_destroy_boxed_opaque_existential_1(v86);
  sub_1AC30A9DC();
  v88 = v60;
  sub_1AC30A8CC();

  v162(v164, v170, v169);
  v165(v173, v164, v169);
  v171(v170, v169);
  sub_1AC30A8FC();
  v93 = sub_1AC30A9DC();
  v94 = v61;
  v101 = sub_1AC2162E8(v180, v93, v61, v176);
  v102 = v62;

  v182(v180, v181);
  v63 = sub_1AC30B18C();
  sub_1AC2A5F58(v201, v103, v98, v99, v100, v101, v102, v132, v143, v96, v97, 0, v63);
  __swift_destroy_boxed_opaque_existential_1(v104);
  __swift_destroy_boxed_opaque_existential_1(v105);
  sub_1AC207B58(v143, v205, v145);
  sub_1AC2AE1EC(v143);
  sub_1AC2AE2FC(v204, v143);
  v106 = v212;
  v212[0] = v143;
  sub_1AC2AE2FC(v207, v141);
  v212[1] = v141;
  sub_1AC2AE2FC(v145, v139);
  v212[2] = v139;
  v211[0] = v205;
  v211[1] = v205;
  v211[2] = v205;
  v208 = v206;
  v209 = v206;
  v210 = v206;
  sub_1AC23A49C(v106, 3uLL, v211, v131);
  sub_1AC2AE1EC(v139);
  sub_1AC2AE1EC(v141);
  sub_1AC2AE1EC(v143);
  sub_1AC2AE1EC(v145);
  sub_1AC2AE1EC(v207);
  return sub_1AC2AE1EC(v204);
}

uint64_t sub_1AC2A79D8()
{
  v29 = 0;
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCA0);
  v18 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v0);
  v26 = v7 - v18;
  v28 = sub_1AC30901C();
  v24 = *(v28 - 8);
  v25 = v28 - 8;
  v19 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v28);
  v20 = v7 - v19;
  v21 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7 - v19);
  v22 = v7 - v21;
  v29 = v7 - v21;
  v27 = 1;
  sub_1AC30A9DC();
  v23 = v2;
  sub_1AC30900C();

  if ((*(v24 + 48))(v26, v27, v28) == 1)
  {
    return sub_1AC247D84(v26);
  }

  v4 = v20;
  (*(v24 + 32))(v22, v26, v28);
  v16 = [objc_opt_self() sharedApplication];
  v11 = *(v24 + 16);
  v12 = v24 + 16;
  v11(v4, v22, v28);
  v15 = sub_1AC308FEC();
  v13 = *(v24 + 8);
  v14 = v24 + 8;
  v13(v20, v28);
  v17 = [v16 canOpenURL_];
  MEMORY[0x1E69E5920](v15);
  v5 = MEMORY[0x1E69E5920](v16);
  if (v17)
  {
    v6 = v20;
    v10 = [objc_opt_self() sharedApplication];
    v11(v6, v22, v28);
    v9 = sub_1AC308FEC();
    v13(v20, v28);
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
  }

  return (v13)(v22, v28, v5);
}

uint64_t sub_1AC2A7E04()
{
  v29 = 0;
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCA0);
  v18 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v0);
  v26 = v7 - v18;
  v28 = sub_1AC30901C();
  v24 = *(v28 - 8);
  v25 = v28 - 8;
  v19 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v28);
  v20 = v7 - v19;
  v21 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7 - v19);
  v22 = v7 - v21;
  v29 = v7 - v21;
  v27 = 1;
  sub_1AC30A9DC();
  v23 = v2;
  sub_1AC30900C();

  if ((*(v24 + 48))(v26, v27, v28) == 1)
  {
    return sub_1AC247D84(v26);
  }

  v4 = v20;
  (*(v24 + 32))(v22, v26, v28);
  v16 = [objc_opt_self() sharedApplication];
  v11 = *(v24 + 16);
  v12 = v24 + 16;
  v11(v4, v22, v28);
  v15 = sub_1AC308FEC();
  v13 = *(v24 + 8);
  v14 = v24 + 8;
  v13(v20, v28);
  v17 = [v16 canOpenURL_];
  MEMORY[0x1E69E5920](v15);
  v5 = MEMORY[0x1E69E5920](v16);
  if (v17)
  {
    v6 = v20;
    v10 = [objc_opt_self() sharedApplication];
    v11(v6, v22, v28);
    v9 = sub_1AC308FEC();
    v13(v20, v28);
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
  }

  return (v13)(v22, v28, v5);
}

void *sub_1AC2A8230@<X0>(const void *a1@<X0>, const void *a2@<X1>, char *a3@<X8>)
{
  sub_1AC2051E4(a1, a3);
  v3 = type metadata accessor for TipFitView();
  return sub_1AC2AABD4(a2, &a3[*(v3 + 20)]);
}

uint64_t sub_1AC2A82B0@<X0>(uint64_t a1@<X8>)
{
  v5[2] = a1;
  v8 = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C148);
  v5[0] = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v1 = (v5 - v5[0]);
  v7 = v5 - v5[0];
  v8 = v2;
  v3 = type metadata accessor for FitTestLoopingVideoPlayer();
  sub_1AC237A38((v5[1] + *(v3 + 28)), v1);
  sub_1AC30A05C();
  return sub_1AC237B0C(v7);
}

uint64_t sub_1AC2A83E8(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C148) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v7 = &v5 - v6;
  sub_1AC237A38(v2, (&v5 - v6));
  v3 = type metadata accessor for FitTestLoopingVideoPlayer();
  sub_1AC237F0C(v7, (v1 + *(v3 + 28)));
  return sub_1AC237B0C(v8);
}

uint64_t sub_1AC2A84EC()
{
  type metadata accessor for FitTestLoopingVideoPlayer();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CA50);
  sub_1AC30A6AC();

  return v1 & 1;
}

uint64_t sub_1AC2A857C()
{
  type metadata accessor for FitTestLoopingVideoPlayer();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CA50);
  sub_1AC30A6BC();
  sub_1AC1D0C54();
}

uint64_t sub_1AC2A8628()
{
  type metadata accessor for FitTestLoopingVideoPlayer();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CA50);
  sub_1AC30A6CC();

  return v1;
}

uint64_t sub_1AC2A86D0()
{
  v2 = *(v0 + *(type metadata accessor for FitTestLoopingVideoPlayer() + 32));

  return v2 & 1;
}

uint64_t sub_1AC2A871C(char a1, uint64_t a2)
{

  v3 = v2 + *(type metadata accessor for FitTestLoopingVideoPlayer() + 32);
  *v3 = a1;
  *(v3 + 8) = a2;
}

uint64_t sub_1AC2A8778@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v41 = MEMORY[0x1E6981440];
  v22 = sub_1AC2AADF4;
  v33 = sub_1AC2AB030;
  v60 = 0;
  v59 = 0;
  v23 = type metadata accessor for FitTestLoopingVideoPlayer();
  v10 = *(v23 - 8);
  v14 = v10;
  v29 = *(v10 + 64);
  v11 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v23);
  v32 = (&v9 - v11);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CA58);
  v43 = *(v49 - 8);
  v44 = v49 - 8;
  v12 = (*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v49);
  v47 = &v9 - v12;
  v13 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v9 - v12);
  v48 = &v9 - v13;
  v60 = &v9 - v13;
  v59 = v1;
  sub_1AC2A9DFC(v1, v3);
  v28 = *(v14 + 80);
  v16 = 255;
  v15 = (v28 + 16) & ~v28;
  v30 = 7;
  v20 = swift_allocObject();
  sub_1AC2AACA8(v32, (v20 + v15));
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CA60);
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54CA68);
  v18 = type metadata accessor for CGRect();
  v19 = sub_1AC2AAF0C();
  v4 = sub_1AC2AAFB0();
  v58[2] = v17;
  v58[3] = v18;
  v58[4] = v19;
  v58[5] = v4;
  v42 = 1;
  swift_getOpaqueTypeConformance2();
  v5 = sub_1AC30A0EC();
  v36 = v58;
  v58[0] = v5;
  v58[1] = v6;
  v7 = v1 + *(v23 + 32);
  v24 = *v7;
  v25 = *(v7 + 1);

  v56[2] = v24;
  v57 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CA50);
  sub_1AC30A6AC();
  v26 = v56[1];

  v34 = v56;
  v56[0] = v26;
  sub_1AC2A9DFC(v27, v32);
  v31 = (v28 + 16) & ~v28;
  v35 = swift_allocObject();
  sub_1AC2AACA8(v32, (v35 + v31));
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CA80);
  v39 = sub_1AC2AB0B0();
  v38 = MEMORY[0x1E69E6370];
  v40 = MEMORY[0x1E69E6388];
  sub_1AC222FE4();
  sub_1AC30A5EC();

  sub_1AC1D0C54();
  v52 = v37;
  v53 = v38;
  v54 = v39;
  v55 = v40;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1AC207B58(v47, v49, v48);
  v51 = *(v43 + 8);
  v50 = v43 + 8;
  v51(v47, v49);
  (*(v43 + 16))(v47, v48, v49);
  sub_1AC207B58(v47, v49, v45);
  v51(v47, v49);
  return (v51)(v48, v49);
}

uint64_t sub_1AC2A8D78@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v70 = a3;
  v43 = a1;
  v42 = a2;
  v31 = sub_1AC2ADF1C;
  v59 = sub_1AC2AE000;
  v67 = MEMORY[0x1E6981440];
  v101 = 0;
  v100 = 0;
  v99 = 0;
  v58 = 0;
  v37 = sub_1AC30A29C();
  v34 = *(v37 - 8);
  v35 = v37 - 8;
  v18 = (*(v34 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v36 = &v18 - v18;
  v55 = sub_1AC30A0DC();
  v28 = *(v55 - 8);
  v29 = v55 - 8;
  v26 = v28;
  v50 = v28[8];
  v19 = (v50 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v58);
  v54 = &v18 - v19;
  v3 = type metadata accessor for FitTestLoopingVideoPlayer();
  v20 = *(v3 - 8);
  v25 = v20;
  v47 = *(v20 + 64);
  v21 = (v47 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v52 = (&v18 - v21);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CA60);
  v68 = *(v74 - 8);
  v69 = v74 - 8;
  v22 = (*(v68 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v43);
  v72 = &v18 - v22;
  v23 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v73 = &v18 - v23;
  v101 = &v18 - v23;
  v100 = v6;
  v99 = v7;
  v24 = *v7;
  MEMORY[0x1E69E5928](v24);
  v8 = nullsub_1(v24);
  v33 = &v89;
  v89 = v8;
  v90 = v9;
  v91 = v10;
  sub_1AC2A9DFC(v42, v52);
  v45 = v28[2];
  v44 = v28 + 2;
  v45(v54, v43, v55);
  v46 = *(v25 + 80);
  v27 = (v46 + 16) & ~v46;
  v48 = 7;
  v49 = *(v26 + 20);
  v30 = (v27 + v47 + v49) & ~v49;
  v32 = swift_allocObject();
  v11 = sub_1AC2AACA8(v52, (v32 + v27));
  v57 = v28[4];
  v56 = v28 + 4;
  v57(v32 + v30, v54, v55, v11);
  sub_1AC2386F8();
  sub_1AC30A5DC();
  sub_1AC238B8C(v31);
  sub_1AC206988(v33);
  v62 = &v82;
  v82 = v92;
  v83 = v93;
  v84 = v94;
  v85 = v95;
  v86 = v96;
  v87 = v97;
  v88 = v98;
  sub_1AC30A2CC();
  sub_1AC30A0CC();
  v38 = v12;
  v39 = v13;
  v40 = v14;
  v41 = v15;
  (*(v34 + 8))(v36, v37);
  v60 = v81;
  v81[0] = v38;
  v81[1] = v39;
  v81[2] = v40;
  v81[3] = v41;
  sub_1AC2A9DFC(v42, v52);
  v45(v54, v43, v55);
  v51 = (v46 + 16) & ~v46;
  v53 = (v51 + v47 + v49) & ~v49;
  v61 = swift_allocObject();
  v16 = sub_1AC2AACA8(v52, (v61 + v51));
  v57(v61 + v53, v54, v55, v16);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CA68);
  v64 = type metadata accessor for CGRect();
  v65 = sub_1AC2AAF0C();
  v66 = sub_1AC2AAFB0();
  sub_1AC222FE4();
  sub_1AC30A5EC();

  sub_1AC2AE0F8(v62);
  v77 = v63;
  v78 = v64;
  v79 = v65;
  v80 = v66;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1AC207B58(v72, v74, v73);
  v76 = *(v68 + 8);
  v75 = v68 + 8;
  v76(v72, v74);
  (*(v68 + 16))(v72, v73, v74);
  sub_1AC207B58(v72, v74, v70);
  v76(v72, v74);
  return (v76)(v73, v74);
}