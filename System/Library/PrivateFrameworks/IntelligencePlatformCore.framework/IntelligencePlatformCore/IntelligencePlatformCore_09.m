uint64_t sub_1C44B43F4(uint64_t result, uint64_t a2)
{
  v2 = (a2 - result);
  if (!__OFSUB__(a2, result))
  {
    if (v2)
    {
      v4 = result;
      v5 = sub_1C497E97C();
      if (sub_1C4619FFC(v6, v5 + 32, v2, v4, a2) == v2)
      {
        return v5;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

  __break(1u);
  return result;
}

uint64_t sub_1C44B4478(uint64_t a1, unsigned __int8 *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v53 = a3;
  v13 = sub_1C4EFD548();
  v14 = sub_1C43FCDF8(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBCC4();
  v21 = v20 - v19;
  v51 = *a2;
  if (qword_1EDDFFAF0 != -1)
  {
    sub_1C440686C();
    swift_once();
  }

  v22 = sub_1C4F00978();
  sub_1C442B738(v22, qword_1EDE2E088);
  v23 = *(v16 + 16);
  v52 = a1;
  v23(v21, a1, v13);
  v24 = sub_1C4F00968();
  v25 = sub_1C4F01CF8();
  if (os_log_type_enabled(v24, v25))
  {
    sub_1C43FEC60();
    v49 = v7;
    v26 = swift_slowAlloc();
    v50 = a6;
    v48 = swift_slowAlloc();
    v56 = v48;
    *v26 = 136315650;
    sub_1C441FC50();
    sub_1C4490890(v27, v28);
    v29 = sub_1C4F02858();
    v30 = a4;
    v31 = a5;
    v33 = v32;
    (*(v16 + 8))(v21, v13);
    v34 = sub_1C441D828(v29, v33, &v56);
    a5 = v31;
    a4 = v30;

    *(v26 + 4) = v34;
    *(v26 + 12) = 2080;
    v35 = v51;
    v36 = sub_1C44A5D54(v51);
    v38 = sub_1C441D828(v36, v37, &v56);

    *(v26 + 14) = v38;
    *(v26 + 22) = 2080;
    v39 = v53;
    v54 = v53;
    v55 = v30 & 1;
    sub_1C456902C(&qword_1EC0B9AD8, &unk_1C4F14290);
    v40 = sub_1C4F01198();
    v42 = sub_1C441D828(v40, v41, &v56);

    *(v26 + 24) = v42;
    _os_log_impl(&dword_1C43F8000, v24, v25, "GraphStore: tripleTranslatingMap: e:%s p:%s t:%s", v26, 0x20u);
    swift_arrayDestroy();
    a6 = v50;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    v7 = v49;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {

    v43 = (*(v16 + 8))(v21, v13);
    v39 = v53;
    v35 = v51;
  }

  v44 = *(*(v7 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_pool);
  MEMORY[0x1EEE9AC00](v43);
  v45 = v52;
  *(&v47 - 8) = v7;
  *(&v47 - 7) = v45;
  *(&v47 - 48) = v35;
  *(&v47 - 5) = v39;
  *(&v47 - 32) = a4 & 1;
  *(&v47 - 3) = a5;
  *(&v47 - 2) = a6;

  sub_1C446C37C(sub_1C44B5DE0, (&v47 - 10));
}

uint64_t sub_1C44B480C(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, int a4, uint64_t a5, int a6, uint64_t (*a7)(void *, uint64_t), uint64_t a8)
{
  v143 = a8;
  v144 = a7;
  v166 = a6;
  v153 = a5;
  v158 = a3;
  v162 = a2;
  v163 = a1;
  v9 = type metadata accessor for TranslatedEntityTriple(0);
  v151 = *(v9 - 8);
  v152 = v9;
  v10 = *(v151 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v148 = &v128[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v142 = &v128[-v13];
  v160 = sub_1C4EFF0C8();
  v156 = *(v160 - 8);
  v14 = *(v156 + 64);
  v15 = MEMORY[0x1EEE9AC00](v160);
  v145 = &v128[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x1EEE9AC00](v15);
  v159 = &v128[-v18];
  MEMORY[0x1EEE9AC00](v17);
  v157 = &v128[-v19];
  v20 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v154 = &v128[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v22);
  v150 = &v128[-v24];
  v25 = type metadata accessor for EntityTriple(0);
  v147 = *(v25 - 8);
  v26 = *(v147 + 64);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v146 = &v128[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = &v128[-v30];
  v32 = MEMORY[0x1EEE9AC00](v29);
  v155 = &v128[-v33];
  MEMORY[0x1EEE9AC00](v32);
  v149 = &v128[-v34];
  v35 = sub_1C456902C(&qword_1EC0BA588, &unk_1C4F142B0);
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  v38 = MEMORY[0x1EEE9AC00](v35);
  v40 = &v128[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v38);
  v42 = &v128[-v41];
  sub_1C4490890(&qword_1EDDF8DB0, type metadata accessor for EntityTriple);
  v161 = v25;
  sub_1C4EFADF8();
  LODWORD(v158) = a4;
  sub_1C44A6034();
  v45 = *(v36 + 8);
  v43 = v36 + 8;
  v44 = v45;
  v45(v40, v35);
  sub_1C4401CBC(&qword_1EDDFA2D8, &qword_1EC0BA588, &unk_1C4F142B0);
  sub_1C4490890(&qword_1EDDF8DA0, type metadata accessor for EntityTriple);
  v46 = v164;
  v47 = sub_1C4EFAFD8();
  if (v46)
  {
    return (v44)(v42, v35);
  }

  v49 = v47;
  v141 = v43;
  v140 = v35;
  v139 = v44;
  v50 = v150;
  sub_1C44A6D28();
  v51 = 0;
  if (sub_1C44157D4(v50, 1, v161) != 1)
  {
    v134 = v42;
    v58 = v149;
    sub_1C44D1B5C(v50, v149, type metadata accessor for EntityTriple);
    sub_1C456902C(&qword_1EC0B9010, &unk_1C4F142C0);
    v59 = (*(v147 + 80) + 32) & ~*(v147 + 80);
    v164 = *(v147 + 72);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_1C4F0D130;
    sub_1C4490938(v58, v60 + v59, type metadata accessor for EntityTriple);
    v61 = v156 + 16;
    v62 = v160;
    v138 = *(v156 + 16);
    v138(v157, v58, v160);
    swift_beginAccess();
    v147 = v61 - 8;
    v156 = v61;
    v131 = (v61 + 8);
    *&v63 = 134218242;
    v132 = v63;
    v137 = v49;
    v64 = v155;
    v133 = v59;
LABEL_9:
    v135 = (v60 + v59);
    v65 = v60;
    v136 = v60;
    while (1)
    {
      v66 = v154;
      sub_1C44A6D28();
      if (sub_1C44157D4(v66, 1, v161) == 1)
      {
        sub_1C4420C3C(v66, &qword_1EC0BA590, &qword_1C4F1F430);
        v100 = *(v65 + 16);
        if (v100)
        {
          v150 = 0;
          v167 = v158;
          v138(v145, v157, v62);
          v165 = MEMORY[0x1E69E7CC0];
          sub_1C44CD9C0();
          v101 = v161;
          v102 = v165;
          v103 = v65 + v133;
          do
          {
            sub_1C4490938(v103, v31, type metadata accessor for EntityTriple);
            v104 = &v31[*(v101 + 32)];
            v105 = *v104;
            v106 = v104[1];
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            sub_1C4491300(v31, type metadata accessor for EntityTriple);
            v165 = v102;
            v107 = *(v102 + 16);
            if (v107 >= *(v102 + 24) >> 1)
            {
              sub_1C44CD9C0();
              v101 = v161;
              v102 = v165;
            }

            *(v102 + 16) = v107 + 1;
            v108 = v102 + 16 * v107;
            *(v108 + 32) = v105;
            *(v108 + 40) = v106;
            v103 += v164;
            --v100;
          }

          while (v100);
          v110 = v145;
          v111 = v150;
          v112 = sub_1C44E3898(v163, &v167, v153, v166 & 1, v145, v102);
          if (v111)
          {

            v113 = *v147;
            v114 = v160;
            (*v147)(v110, v160);
            sub_1C4491300(v149, type metadata accessor for EntityTriple);
            v139(v134, v140);
            v113(v157, v114);
          }

          v115 = v112;
          v162 = *v147;
          v162(v110, v160);

          v164 = objc_autoreleasePoolPush();
          v116 = v136;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v31 = v144(v115, v116);

          if (qword_1EDDFFAF0 != -1)
          {
            swift_once();
          }

          v117 = sub_1C4F00978();
          sub_1C442B738(v117, qword_1EDE2E088);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v118 = sub_1C4F00968();
          v119 = sub_1C4F01CB8();
          if (os_log_type_enabled(v118, v119))
          {
            v120 = swift_slowAlloc();
            v121 = swift_slowAlloc();
            v165 = v121;
            *v120 = v132;
            *(v120 + 4) = *(v31 + 2);

            *(v120 + 12) = 2080;
            sub_1C4490890(&qword_1EDDFE810, MEMORY[0x1E69A9810]);
            v122 = sub_1C4F02858();
            v124 = sub_1C441D828(v122, v123, &v165);

            *(v120 + 14) = v124;
            _os_log_impl(&dword_1C43F8000, v118, v119, "GraphStore: tripleTranslatingMap: %ld translated triples for %s", v120, 0x16u);
            sub_1C440962C(v121);
            MEMORY[0x1C6942830](v121, -1, -1);
            MEMORY[0x1C6942830](v120, -1, -1);
          }

          else
          {
          }

          v125 = 0;
          v126 = *(v31 + 2);
          while (v126 != v125)
          {
            if (v125 >= *(v31 + 2))
            {
              goto LABEL_60;
            }

            v127 = v148;
            sub_1C4490938(&v31[((*(v151 + 80) + 32) & ~*(v151 + 80)) + *(v151 + 72) * v125], v148, type metadata accessor for TranslatedEntityTriple);
            sub_1C4490890(&qword_1EDDF3A30, type metadata accessor for TranslatedEntityTriple);
            sub_1C4EFB6C8();
            ++v125;
            sub_1C4491300(v127, type metadata accessor for TranslatedEntityTriple);
          }

          objc_autoreleasePoolPop(v164);
          v62 = v160;
        }

        sub_1C4491300(v149, type metadata accessor for EntityTriple);
        v139(v134, v140);
        (*v147)(v157, v62);
      }

      sub_1C44D1B5C(v66, v64, type metadata accessor for EntityTriple);
      sub_1C4490890(&qword_1EDDFCC98, MEMORY[0x1E69A9810]);
      v67 = v157;
      v68 = v65;
      if (sub_1C4F010B8())
      {
        v81 = v146;
LABEL_33:
        sub_1C4490938(v64, v81, type metadata accessor for EntityTriple);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C44C9240(0, *(v68 + 16) + 1, 1, v68);
          v68 = v98;
        }

        v97 = *(v68 + 16);
        v96 = *(v68 + 24);
        v60 = v68;
        if (v97 >= v96 >> 1)
        {
          sub_1C44C9240(v96 > 1, v97 + 1, 1, v68);
          v60 = v99;
        }

        sub_1C4491300(v64, type metadata accessor for EntityTriple);
        *(v60 + 16) = v97 + 1;
        v59 = v133;
        sub_1C44D1B5C(v146, v60 + v133 + v97 * v164, type metadata accessor for EntityTriple);
        goto LABEL_9;
      }

      v167 = v158;
      v69 = v159;
      v138(v159, v67, v62);
      v70 = *(v68 + 16);
      if (v70)
      {
        v150 = 0;
        v165 = MEMORY[0x1E69E7CC0];
        sub_1C44CD9C0();
        v71 = v165;
        v72 = v135;
        v73 = v161;
        do
        {
          sub_1C4490938(v72, v31, type metadata accessor for EntityTriple);
          v74 = &v31[*(v73 + 32)];
          v75 = *v74;
          v76 = v74[1];
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C4491300(v31, type metadata accessor for EntityTriple);
          v165 = v71;
          v77 = *(v71 + 16);
          if (v77 >= *(v71 + 24) >> 1)
          {
            sub_1C44CD9C0();
            v73 = v161;
            v71 = v165;
          }

          *(v71 + 16) = v77 + 1;
          v78 = v71 + 16 * v77;
          *(v78 + 32) = v75;
          *(v78 + 40) = v76;
          v72 = v164 + v72;
          --v70;
        }

        while (v70);
        v69 = v159;
        v62 = v160;
        v51 = v150;
        v68 = v136;
      }

      else
      {
        v71 = MEMORY[0x1E69E7CC0];
      }

      v79 = sub_1C44E3898(v163, &v167, v153, v166 & 1, v69, v71);
      if (v51)
      {

        v109 = *v147;
        (*v147)(v69, v62);
        sub_1C4491300(v155, type metadata accessor for EntityTriple);
        sub_1C4491300(v149, type metadata accessor for EntityTriple);
        v139(v134, v140);
        v109(v157, v62);
      }

      v80 = v79;
      (*v147)(v69, v62);

      if (v80[2])
      {
        break;
      }

      v65 = v68;
      v64 = v155;
      sub_1C4491300(v155, type metadata accessor for EntityTriple);

      v62 = v160;
    }

    v135 = objc_autoreleasePoolPush();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v82 = v144(v80, v68);

    if (qword_1EDDFFAF0 != -1)
    {
      swift_once();
    }

    v83 = sub_1C4F00978();
    sub_1C442B738(v83, qword_1EDE2E088);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v84 = sub_1C4F00968();
    v85 = sub_1C4F01CB8();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v150 = swift_slowAlloc();
      v165 = v150;
      *v86 = v132;
      *(v86 + 4) = *(v82 + 16);

      *(v86 + 12) = 2080;
      sub_1C4490890(&qword_1EDDFE810, MEMORY[0x1E69A9810]);
      v130 = v84;
      v87 = sub_1C4F02858();
      v89 = sub_1C441D828(v87, v88, &v165);
      v129 = v85;
      v90 = v89;

      *(v86 + 14) = v90;
      v51 = 0;
      v91 = v130;
      _os_log_impl(&dword_1C43F8000, v130, v129, "GraphStore: tripleTranslatingMap: %ld translated triples for %s", v86, 0x16u);
      v92 = v150;
      sub_1C440962C(v150);
      MEMORY[0x1C6942830](v92, -1, -1);
      MEMORY[0x1C6942830](v86, -1, -1);
    }

    else
    {
    }

    v93 = v151;
    v94 = 0;
    v150 = *(v82 + 16);
    v95 = v142;
    while (1)
    {
      if (v150 == v94)
      {

        objc_autoreleasePoolPop(v135);

        v64 = v155;
        v62 = v160;
        (*v131)(v157, v155, v160);
        v68 = MEMORY[0x1E69E7CC0];
        v81 = v146;
        goto LABEL_33;
      }

      if (v94 >= *(v82 + 16))
      {
        break;
      }

      sub_1C4490938(v82 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v94, v95, type metadata accessor for TranslatedEntityTriple);
      sub_1C4490890(&qword_1EDDF3A30, type metadata accessor for TranslatedEntityTriple);
      sub_1C4EFB6C8();
      ++v94;
      sub_1C4491300(v95, type metadata accessor for TranslatedEntityTriple);
      v93 = v151;
    }

    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v31 = v42;
  sub_1C4420C3C(v50, &qword_1EC0BA590, &qword_1C4F1F430);
  if (qword_1EDDFFAF0 != -1)
  {
LABEL_61:
    swift_once();
  }

  v52 = sub_1C4F00978();
  sub_1C442B738(v52, qword_1EDE2E088);
  v53 = sub_1C4F00968();
  v54 = sub_1C4F01CF8();
  v55 = os_log_type_enabled(v53, v54);
  v56 = v140;
  if (v55)
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&dword_1C43F8000, v53, v54, "GraphStore: tripleTranslatingMap: found no data", v57, 2u);
    MEMORY[0x1C6942830](v57, -1, -1);
  }

  return (v139)(v31, v56);
}

void sub_1C44B5E0C()
{
  sub_1C43FBD3C();
  v75 = v0;
  v11 = sub_1C4423618(v8, v9, v10);
  v72 = sub_1C43FCDF8(v11);
  v73 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v72);
  sub_1C43FBCC4();
  v17 = v16 - v15;
  v18 = type metadata accessor for ProgressTokens(0);
  v19 = sub_1C4412DFC(v18);
  v74 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1C4416DF8();
  v23 = type metadata accessor for Resolver();
  v24 = sub_1C44101F8(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v69 - v28;
  if (v1)
  {
    sub_1C4424C80();
  }

  else
  {
    v70 = v17;
    v30 = sub_1C44607D4(objc_autoreleasePoolPush());
    sub_1C44099C4(v30);
    sub_1C4EF93C8();
    v31 = &qword_1EC0BA4A8;
    sub_1C4656BB0();
    sub_1C442C5A4();
    sub_1C4401CBC(v32, v33, &dword_1C4F141D0);
    v34 = sub_1C4656C04();
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v71);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v36 = sub_1C4F00978();
        sub_1C43FCEE8(v36, qword_1EDE2DE10);
        sub_1C4430900(v75, v29);
        v37 = sub_1C4F00968();
        v38 = sub_1C4F01CD8();
        if (os_log_type_enabled(v37, v38))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C440D148();
          v39 = swift_slowAlloc();
          sub_1C44305A4(v39);
          *v5 = 136315138;
          v40 = sub_1C44623A0();
          sub_1C4430900(v40, v3);
          sub_1C447E868(v29, type metadata accessor for Resolver);
          sub_1C44AE730();
          v41 = sub_1C440CAFC();
          sub_1C447E868(v41, type metadata accessor for Resolver);
          v42 = sub_1C447CB90();
          sub_1C441D828(v42, v4, v43);
          sub_1C44D44F0();
          *(v5 + 4) = v3;
          sub_1C4656C84(&dword_1C43F8000, v44, v45, "%s failed to update progress token");
          sub_1C440962C(v6);
          v46 = sub_1C4416E14();
          MEMORY[0x1C6942830](v46);
          v47 = sub_1C44068C0();
          MEMORY[0x1C6942830](v47);
        }

        else
        {
          sub_1C447E868(v29, type metadata accessor for Resolver);
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    v2 = v34;
    v4 = v35;

    objc_autoreleasePoolPop(v71);
    v17 = v70;
    v3 = v2;
  }

  v29 = v75;
  v48 = v75;
  sub_1C44B62F8(v77);
  v31 = v78;
  if (v78)
  {
    v49 = sub_1C440F3CC();
    v50(v49);
    sub_1C4456268();
  }

  else
  {
    sub_1C4420C3C(v77, &qword_1EC0BA490, &unk_1C4F53630);
    v48 = 0;
  }

  if ((v76 & 1) == 0 && __OFADD__(v48, 1))
  {
    __break(1u);
    goto LABEL_25;
  }

  switch(v29[*(v5 + 28)])
  {
    case 1:
      sub_1C441D16C();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      sub_1C440DF74();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C443FAEC();
      sub_1C44016DC();
      if (v2)
      {
LABEL_18:
        _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
        v51 = *(v5 + 20);
        sub_1C445AABC(*(v5 + 24));
        sub_1C441925C();
        sub_1C44EC814(v52);
        *(v6 + *(v7 + 20)) = 0;
        sub_1C43FC08C();
        v54 = sub_1C4656C64(v53);
        sub_1C4460A18(v54);
        sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v55 = sub_1C4424F7C();
        sub_1C4412DCC(v55, xmmword_1C4F0D130);
        sub_1C4415F88();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v56 = sub_1C43FFEF0();
      }

      else
      {
        _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
        v58 = *(v5 + 20);
        v59 = v29[*(v5 + 24)];
        v60 = *(v72 + 24);
        sub_1C441925C();
        sub_1C4430900(&v29[v61], v17 + v62);
        v63 = sub_1C44433E8();
        sub_1C4460A18(v63);
        sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v64 = sub_1C4405904();
        sub_1C44068A0(v64, xmmword_1C4F0D130);
        sub_1C4430900(v17, v65);
        v66 = sub_1C4415F88();
        sub_1C449498C(v66);
        swift_setDeallocating();
        sub_1C4495394();
        sub_1C440A77C();
        v56 = v17;
      }

      sub_1C447E868(v56, v57);
      v67 = sub_1C43FD2BC();
      sub_1C441DFEC(v67, v68);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

uint64_t sub_1C44B62F8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  v3 = sub_1C456902C(&unk_1EC0BAC20, &unk_1C4F141E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v36[-1] - v5;
  v7 = type metadata accessor for ConstructionProgressTokens(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&unk_1EC0BA4B8, &unk_1C4F16F60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v36[-1] - v13;
  v15 = type metadata accessor for ProgressTokens(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v36[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Resolver();
  switch(*(v2 + *(v19 + 28)))
  {
    case 2:

      goto LABEL_4;
    default:
      v20 = sub_1C4F02938();

      if (v20)
      {
LABEL_4:
        v21 = *(v2 + *(type metadata accessor for PhaseStores() + 24));
        v37 = v19;
        v38 = sub_1C447CB3C(&qword_1EDDF0A60, type metadata accessor for Resolver);
        v22 = sub_1C4422F90(v36);
        sub_1C4430900(v2, v22);
        sub_1C44FEF34(v36, 0);
        sub_1C440962C(v36);
        if (sub_1C44157D4(v14, 1, v15) == 1)
        {
          v23 = &unk_1EC0BA4B8;
          v24 = &unk_1C4F16F60;
          v25 = v14;
LABEL_8:
          result = sub_1C4420C3C(v25, v23, v24);
          v30 = v35;
          *(v35 + 32) = 0;
          *v30 = 0u;
          v30[1] = 0u;
          return result;
        }

        sub_1C449F338(v14, v18);
        v31 = v35;
        *(v35 + 24) = v15;
        v31[4] = &off_1F43EE918;
        v32 = sub_1C4422F90(v31);
        v33 = v18;
      }

      else
      {
        v26 = v10;
        v27 = *(v2 + *(type metadata accessor for PhaseStores() + 24));
        v37 = v19;
        v38 = sub_1C447CB3C(&qword_1EDDF0A60, type metadata accessor for Resolver);
        v28 = sub_1C4422F90(v36);
        sub_1C4430900(v2, v28);
        sub_1C449D50C(v36, 0);
        sub_1C440962C(v36);
        if (sub_1C44157D4(v6, 1, v7) == 1)
        {
          v23 = &unk_1EC0BAC20;
          v24 = &unk_1C4F141E0;
          v25 = v6;
          goto LABEL_8;
        }

        sub_1C449F338(v6, v26);
        v34 = v35;
        *(v35 + 24) = v7;
        v34[4] = &off_1F43EE970;
        v32 = sub_1C4422F90(v34);
        v33 = v26;
      }

      return sub_1C449F338(v33, v32);
  }
}

uint64_t sub_1C44B6748()
{

  return sub_1C447E868(v1, v0);
}

float sub_1C44B6760()
{
  result = *v1;
  *v0;
  return result;
}

uint64_t sub_1C44B6784()
{
  result = v0;
  v3 = *(v1 - 200);
  return result;
}

void sub_1C44B6790()
{
  v1 = *(v0 - 384);
  v2 = *(v0 - 368);
  v3 = *(v0 - 360);
}

uint64_t sub_1C44B67C4@<X0>(uint64_t a1@<X8>)
{
  result = v1 + a1;
  v4 = *(v2 - 184);
  return result;
}

uint64_t sub_1C44B67D0()
{
  result = v1;
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  return result;
}

uint64_t sub_1C44B67DC()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FBE64();
  *v3 = v2;
  v5 = *(v4 + 176);
  v6 = *v1;
  sub_1C43FBDAC();
  *v7 = v6;
  *(v8 + 184) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C44B68D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  sub_1C440C6BC();
  a23 = v26;
  a24 = v27;
  sub_1C44346B8();
  a22 = v24;
  v28 = v24[21];
  v29 = v24[2];
  v30 = v24[3];
  sub_1C4400B7C();
  sub_1C448CFCC(v31, v32, v33);
  v34 = sub_1C4F00968();
  v35 = sub_1C4F01CF8();
  if (sub_1C4400B94(v35))
  {
    v37 = v24[3];
    v36 = v24[4];
    sub_1C43FECF0();
    swift_slowAlloc();
    sub_1C440E550();
    sub_1C4418528();
    *v25 = 136315138;
    sub_1C4400B7C();
    sub_1C448CFCC(v37, v36, v38);
    sub_1C43FC7A4();
    sub_1C447EAE0(v37, v39);
    sub_1C44A1310();
    v41 = v40;
    v43 = v42;
    v44 = sub_1C4414A08();
    sub_1C447EAE0(v44, v45);
    sub_1C441D828(v41, v43, &a13);
    sub_1C4441528();
    *(v25 + 4) = v36;
    sub_1C4404638(&dword_1C43F8000, v46, v47, "StageFinish %s");
    sub_1C440AEF4();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {
    v48 = v24[3];
    sub_1C443530C();
    sub_1C447EAE0(v49, v50);
  }

  sub_1C4412320();
  v51 = sub_1C443661C();
  sub_1C44B6A64(v51, v52, v53);
  v54 = sub_1C4404658();
  v55(v54);

  sub_1C43FC1B0();
  sub_1C440405C();

  return v57(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1C44B6A64(uint64_t a1, int a2, uint64_t a3)
{
  v76 = a3;
  LODWORD(v74) = a2;
  v69 = sub_1C4F00908();
  v68 = *(v69 - 8);
  v4 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v67 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_1C4F008B8();
  v72 = *(v73 - 8);
  v6 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v75 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1C4F008F8();
  v70 = *(v71 - 8);
  v8 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v77 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Pipeline.StatusStore();
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C4EFD548();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Source();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = (&v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v81 = 0x2D676E696B6E696CLL;
  v82 = 0xEF6C6172656E6567;
  MEMORY[0x1C6940010](95, 0xE100000000000000);
  v24 = type metadata accessor for Linker();
  sub_1C448CFCC(a1 + *(v24 + 20), v23, type metadata accessor for Source);
  v25 = *v23;
  v26 = v23[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C447EAE0(v23, type metadata accessor for Source);
  MEMORY[0x1C6940010](v25, v26);

  MEMORY[0x1C6940010](95, 0xE100000000000000);
  _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
  v27 = sub_1C4EFD3D8();
  v29 = v28;
  (*(v16 + 8))(v19, v15);
  MEMORY[0x1C6940010](v27, v29);

  v30 = v81;
  v31 = v82;
  sub_1C448CFCC(a1, v14, type metadata accessor for Configuration);
  v14[*(v11 + 28)] = v74;
  v32 = Pipeline.StatusStore.currentSessionId()();
  countAndFlagsBits = v32.value._countAndFlagsBits;
  object = v32.value._object;
  sub_1C447EAE0(v14, type metadata accessor for Pipeline.StatusStore);
  if (!v32.value._object)
  {
    countAndFlagsBits = 0;
    object = 0xE000000000000000;
  }

  v35 = swift_allocObject();
  *(v35 + 16) = v30;
  *(v35 + 24) = v31;
  v36 = swift_allocObject();
  *(v36 + 16) = countAndFlagsBits;
  *(v36 + 24) = object;
  v37 = swift_allocObject();
  *(v37 + 16) = 34;
  v38 = swift_allocObject();
  *(v38 + 16) = 8;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_1C44B7400;
  *(v39 + 24) = v35;
  v40 = swift_allocObject();
  *(v40 + 16) = 34;
  v41 = swift_allocObject();
  *(v41 + 16) = 8;
  v42 = swift_allocObject();
  *(v42 + 16) = sub_1C44B7400;
  *(v42 + 24) = v36;
  v43 = swift_allocObject();
  *(v43 + 16) = 32;
  v44 = swift_allocObject();
  *(v44 + 16) = 8;
  sub_1C456902C(&qword_1EC0BBF38, &unk_1C4F4B420);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F23100;
  *(inited + 32) = sub_1C44549F4;
  *(inited + 40) = v37;
  *(inited + 48) = sub_1C44549F4;
  *(inited + 56) = v38;
  *(inited + 64) = sub_1C4454C38;
  *(inited + 72) = v39;
  v46 = v75;
  *(inited + 80) = sub_1C44549F4;
  *(inited + 88) = v40;
  *(inited + 96) = sub_1C44549F4;
  *(inited + 104) = v41;
  *(inited + 112) = sub_1C4454C38;
  *(inited + 120) = v42;
  *(inited + 128) = sub_1C44549F4;
  *(inited + 136) = v43;
  *(inited + 144) = sub_1C44549F4;
  *(inited + 152) = v44;
  v47 = v77;
  *(inited + 160) = sub_1C4454CCC;
  *(inited + 168) = 0;
  sub_1C4EFD5C8();
  v48 = sub_1C4EFD5F8();
  v50 = v49;
  sub_1C4EFD608();
  v51 = sub_1C4F008D8();
  sub_1C4F00928();
  v52 = sub_1C4F01E18();
  result = sub_1C4F01F28();
  if ((result & 1) == 0)
  {
    goto LABEL_7;
  }

  if ((v50 & 1) == 0)
  {
    if (!v48)
    {
      __break(1u);
LABEL_7:

      (*(v72 + 8))(v46, v73);
      return (*(v70 + 8))(v47, v71);
    }

    goto LABEL_12;
  }

  if (HIDWORD(v48))
  {
    __break(1u);
    goto LABEL_20;
  }

  if ((v48 & 0xFFFFF800) == 0xD800)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  if (v48 >> 16 > 0x10)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v48 = &v80;
LABEL_12:
  LODWORD(v76) = v52;

  v54 = v67;
  sub_1C4F00958();

  v55 = v68;
  v56 = v69;
  v57 = v46;
  if ((*(v68 + 88))(v54, v69) == *MEMORY[0x1E69E93E8])
  {
    v58 = 0;
    v59 = 0;
    v74 = "[Error] Interval already ended";
  }

  else
  {
    (*(v55 + 8))(v54, v56);
    v74 = "stage=%{signpost.telemetry:string1,public}s sessionId=%{signpost.telemetry:string2,public}s %s";
    v59 = 2;
    v58 = 3;
  }

  v60 = swift_slowAlloc();
  v61 = swift_slowAlloc();
  v62 = 0;
  v79 = 0;
  v78 = v61;
  *v60 = v59;
  v60[1] = v58;
  v81 = (v60 + 2);
  while (v62 != 144)
  {
    v64 = *(inited + v62 + 32);
    v63 = *(inited + v62 + 40);

    v64(&v81, &v79, &v78);

    v62 += 16;
  }

  v65 = sub_1C4F008A8();
  _os_signpost_emit_with_name_impl(&dword_1C43F8000, v51, v76, v65, v48, v74, v60, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x1C6942830](v61, -1, -1);
  MEMORY[0x1C6942830](v60, -1, -1);

  (*(v72 + 8))(v57, v73);
  return (*(v70 + 8))(v77, v71);
}

uint64_t sub_1C44B7404()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FBE64();
  *v3 = v2;
  v5 = *(v4 + 168);
  v6 = *v1;
  sub_1C43FBDAC();
  *v7 = v6;
  *(v8 + 176) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1C44B7500()
{
  v2 = *(v0 + 176);
  v3 = *(v0 + 128);
  v4 = sub_1C4406014();
  sub_1C4491370(v4, type metadata accessor for Fuser, type metadata accessor for Fuser, sub_1C44B7D34);
  if (!v2)
  {
    v15 = sub_1C440BECC(*(v0 + 144));
    *(v0 + 184) = v15;
    *v15 = v0;
    sub_1C4402478(v15);
    sub_1C44507A0();

    __asm { BR              X1 }
  }

  *(v0 + 120) = v2;
  v5 = v2;
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if (!sub_1C442F34C())
  {
    v18 = *(v0 + 136);

    sub_1C43FBDA0();
    goto LABEL_24;
  }

  if (!*(v0 + 200))
  {
    if (qword_1EDDFD028 != -1)
    {
      sub_1C4419274();
      swift_once();
    }

    v19 = sub_1C441BC3C();
    sub_1C43FF4EC(v19, qword_1EDE2DE10);
    v7 = sub_1C4F00968();
    sub_1C4F01CD8();
    sub_1C44253BC();
    if (sub_1C443FF34())
    {
      sub_1C440FAA4();
      sub_1C440E550();
      sub_1C4415BD0();
      *v3 = 136315138;
      v20 = sub_1C4AD00FC();
      sub_1C4460374(v20, v21, v22, v23);
      sub_1C44160EC();
      *(v3 + 4) = v1;
      sub_1C4404638(&dword_1C43F8000, v24, v25, "%s caught unrecoverable error, phase was skipped");
      sub_1C440AEF4();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    goto LABEL_23;
  }

  if (*(v0 + 200) == 1)
  {
    if (qword_1EDDFD028 != -1)
    {
      sub_1C4419274();
      swift_once();
    }

    v6 = sub_1C441BC3C();
    sub_1C43FF4EC(v6, qword_1EDE2DE10);
    v7 = sub_1C4F00968();
    sub_1C4F01CF8();
    sub_1C44253BC();
    if (!sub_1C443FF34())
    {
      goto LABEL_23;
    }

    sub_1C440FAA4();
    sub_1C440E550();
    sub_1C4415BD0();
    *v3 = 136315138;
    v8 = sub_1C4AD00FC();
    sub_1C4460374(v8, v9, v10, v11);
    sub_1C44160EC();
    *(v3 + 4) = v1;
    v14 = "%s phase had no data to process";
  }

  else
  {
    if (qword_1EDDFD028 != -1)
    {
      sub_1C4419274();
      swift_once();
    }

    v26 = sub_1C441BC3C();
    sub_1C43FF4EC(v26, qword_1EDE2DE10);
    v7 = sub_1C4F00968();
    sub_1C4F01CF8();
    sub_1C44253BC();
    if (!sub_1C443FF34())
    {
      goto LABEL_23;
    }

    sub_1C440FAA4();
    sub_1C440E550();
    sub_1C4415BD0();
    *v3 = 136315138;
    v27 = sub_1C4AD00FC();
    sub_1C4460374(v27, v28, v29, v30);
    sub_1C44160EC();
    *(v3 + 4) = v1;
    v14 = "%s source is disabled due to privacy setting";
  }

  sub_1C4404638(&dword_1C43F8000, v12, v13, v14);
  sub_1C440AEF4();
  sub_1C43FBCFC();
  MEMORY[0x1C6942830]();
LABEL_23:

  v31 = *(v0 + 128);
  sub_1C4ACF7B8();

  v32 = *(v0 + 136);

  sub_1C43FC1B0();
LABEL_24:
  sub_1C44507A0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C44B7868()
{
  sub_1C43FBCD4();
  *(v1 + 16) = v0;
  *(v1 + 192) = v2;
  v3 = type metadata accessor for Fuser();
  sub_1C43FBD18(v3);
  v5 = *(v4 + 64);
  *(v1 + 24) = sub_1C43FE604();
  *(v1 + 32) = swift_task_alloc();
  *(v1 + 40) = swift_task_alloc();
  v6 = sub_1C4F008B8();
  *(v1 + 48) = v6;
  sub_1C43FCF7C(v6);
  *(v1 + 56) = v7;
  v9 = *(v8 + 64);
  *(v1 + 64) = sub_1C43FE604();
  *(v1 + 72) = swift_task_alloc();
  v10 = sub_1C4F008F8();
  *(v1 + 80) = v10;
  sub_1C43FCF7C(v10);
  *(v1 + 88) = v11;
  v13 = *(v12 + 64);
  *(v1 + 96) = sub_1C43FE604();
  *(v1 + 104) = swift_task_alloc();
  v14 = sub_1C4F00978();
  *(v1 + 112) = v14;
  sub_1C43FCF7C(v14);
  *(v1 + 120) = v15;
  v17 = *(v16 + 64);
  *(v1 + 128) = sub_1C43FE604();
  *(v1 + 136) = swift_task_alloc();
  v18 = sub_1C4EFD618();
  *(v1 + 144) = v18;
  sub_1C43FCF7C(v18);
  *(v1 + 152) = v19;
  v21 = *(v20 + 64) + 15;
  *(v1 + 160) = swift_task_alloc();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v22, v23, v24);
}

uint64_t sub_1C44B7A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  sub_1C440C6BC();
  a23 = v31;
  a24 = v32;
  sub_1C44346B8();
  a22 = v25;
  sub_1C442244C();
  v33 = sub_1C442FCD8();
  v34(v33);
  sub_1C4F008C8();
  sub_1C4F008D8();
  sub_1C4F00898();
  v35 = sub_1C4F008D8();
  sub_1C4F01E28();
  if (sub_1C4F01F28())
  {
    v36 = v25[9];
    v24 = swift_slowAlloc();
    *v24 = 0;
    v37 = sub_1C4F008A8();
    sub_1C4423684(&dword_1C43F8000, v38, v39, v37, "graphConstruction", "");
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  sub_1C4405274();
  v40 = *(v26 + 16);
  v41 = sub_1C4414A08();
  v42(v41);
  v43 = sub_1C4F00948();
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  swift_allocObject();
  sub_1C442BA8C();
  v46 = sub_1C4409FD4();
  v47(v46);
  sub_1C442ECA4();
  v49 = *(v26 + 8);
  v48 = v26 + 8;
  v49(v28, v29);
  (*(v30 + 8))(v35, v27);
  (*(v24 + 8))(a12, a11);
  if (qword_1EDDFD028 != -1)
  {
    sub_1C4419274();
    swift_once();
  }

  v50 = v25[5];
  v51 = v25[2];
  v25[21] = sub_1C442B738(v25[14], qword_1EDE2DE10);
  sub_1C4420124();
  v52 = sub_1C43FBC98();
  sub_1C448CFCC(v52, v53, v54);
  v55 = sub_1C4F00968();
  v56 = sub_1C4F01CF8();
  v57 = sub_1C4400B94(v56);
  v58 = v25[5];
  if (v57)
  {
    v59 = v25[4];
    sub_1C43FECF0();
    swift_slowAlloc();
    sub_1C440E550();
    sub_1C4418528();
    *v48 = 136315138;
    sub_1C4420124();
    sub_1C448CFCC(v58, v59, v60);
    sub_1C4425F18();
    sub_1C447EAE0(v58, v61);
    sub_1C44B7D34();
    sub_1C441AFF8();
    sub_1C441D828(v59, v29, &a13);
    sub_1C4441528();
    *(v48 + 4) = v59;
    sub_1C4404638(&dword_1C43F8000, v62, v63, "StageStart %s");
    sub_1C440AEF4();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {
    sub_1C447EAE0(v25[5], type metadata accessor for Fuser);
  }

  v64 = swift_task_alloc();
  v25[22] = v64;
  *v64 = v25;
  v64[1] = sub_1C44BCEEC;
  v65 = v25[2];
  sub_1C440405C();

  return Fuser.execute()();
}

void sub_1C44B7D34()
{
  sub_1C43FBD3C();
  sub_1C44A1E40();
  v2 = sub_1C4EFD548();
  v3 = sub_1C43FCDF8(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C4433190();
  v6 = type metadata accessor for Source();
  v7 = sub_1C43FBD18(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C4414930();
  sub_1C4440948();
  v10 = type metadata accessor for Fuser();
  sub_1C4429020(v10);
  sub_1C456902C(&qword_1EC0BA540, &unk_1C4F14270);
  v11 = sub_1C445BBF0();
  MEMORY[0x1C6940010](v11);

  sub_1C441DC78();
  sub_1C4656C44();
  sub_1C44364AC();
  v12 = *(v0 + 20);
  sub_1C441925C();
  sub_1C447F6A4(v13);
  MEMORY[0x1C6940010](*v1, v1[1]);
  sub_1C4411930();
  sub_1C447E868(v1, v14);
  sub_1C446BE3C();
  _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
  sub_1C4EFD3D8();
  v15 = sub_1C441B798();
  v16(v15);
  sub_1C44A1748();

  sub_1C44AB234();
  sub_1C44A3CB0();
  sub_1C44EB86C();
  sub_1C43FE9F0();
}

uint64_t sub_1C44B7E8C()
{
  v1 = *(v0 + 56);
  result = type metadata accessor for Fuser();
  *(v0 + 64) = result;
  v3 = *(v1 + *(result + 24));
  *(v0 + 72) = v3;
  v4 = *(v3 + 16);
  *(v0 + 80) = v4;
  *(v0 + 88) = 0;
  if (v4)
  {
    if (*(v3 + 16))
    {
      sub_1C442E860(v3 + 32, v0 + 16);
      v5 = sub_1C44506A0();
      v6(v5);
      *(v0 + 113) = *(v0 + 112);
      v7 = swift_task_alloc();
      *(v0 + 96) = v7;
      *v7 = v0;
      v8 = sub_1C441C25C(v7);

      return ResumableStage.executeIfRequired(_:)(v8, v9, v10);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v11 = type metadata accessor for PhaseStores();
    sub_1C448E020(v11, v12, v13, v14, v15, v16, v17, v18, v20, SWORD2(v20), SBYTE6(v20), SHIBYTE(v20));
    v19 = *(v0 + 8);

    return v19();
  }

  return result;
}

uint64_t StandardEntityFusion.pipelineType.getter()
{
  sub_1C44059B8();
  result = type metadata accessor for StandardEntityFusion();
  *v0 = *(v1 + *(result + 28));
  return result;
}

uint64_t StandardEntityFusion.entityClass.getter()
{
  sub_1C44059B8();
  v2 = *(type metadata accessor for StandardEntityFusion() + 20);
  v3 = sub_1C4EFD548();
  v4 = sub_1C43FBCE0(v3);
  v6 = *(v5 + 16);

  return v6(v0, v1 + v2, v4);
}

uint64_t StandardEntityFusion.source.getter()
{
  sub_1C44059B8();
  v2 = *(type metadata accessor for StandardEntityFusion() + 24);
  sub_1C440CD94();
  return sub_1C4471BAC(v1 + v3, v0);
}

uint64_t sub_1C44B8198()
{
  sub_1C44A1E40();
  v3 = type metadata accessor for Source();
  v4 = sub_1C43FBD18(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C442599C();
  sub_1C4459AF0();
  sub_1C4416710();
  v7 = type metadata accessor for StandardEntityFusion();
  sub_1C4471CA0(v7);
  sub_1C456902C(&qword_1EC0BA4D8, &qword_1C4F14208);
  v8 = sub_1C4485A60();
  MEMORY[0x1C6940010](v8);

  sub_1C441DC78();
  sub_1C4656C44();
  sub_1C44364AC();
  v9 = *(v1 + 24);
  sub_1C441925C();
  sub_1C44F090C(v10);
  MEMORY[0x1C6940010](*v2, v2[1]);
  sub_1C4411930();
  sub_1C447E868(v2, v11);
  sub_1C44690B8();
  v12 = v0 + *(v1 + 20);
  sub_1C4EFD3D8();
  sub_1C4475BB0();

  sub_1C44AE8A4();
  sub_1C4482E7C();
  return sub_1C43FE658();
}

uint64_t StandardEntityFusion.execute()()
{
  v1[19] = v0;
  v2 = type metadata accessor for Configuration();
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  v1[20] = sub_1C43FBE7C();
  v5 = sub_1C4EFD548();
  v1[21] = v5;
  v6 = *(v5 - 8);
  v1[22] = v6;
  v7 = *(v6 + 64);
  v1[23] = sub_1C43FBE7C();
  v8 = sub_1C4EF98F8();
  sub_1C43FBD18(v8);
  v10 = *(v9 + 64);
  v1[24] = sub_1C43FBE7C();
  v11 = type metadata accessor for Pipeline.StatusStore();
  v1[25] = v11;
  sub_1C43FBD18(v11);
  v13 = *(v12 + 64);
  v1[26] = sub_1C43FBE7C();

  return MEMORY[0x1EEE6DFA0](sub_1C44B8434, 0, 0);
}

uint64_t sub_1C44B83A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C44A7DA0;

  return StandardEntityFusion.execute()();
}

uint64_t sub_1C44B8434()
{
  v124 = v0;
  aBlock = v0 + 2;
  v1 = v0 + 13;
  v114 = (v0 + 14);
  v2 = v0 + 15;
  v3 = v0[25];
  v4 = v0[26];
  v5 = v0[19];
  sub_1C449AF24();
  sub_1C4471BAC(v5, v4);
  v6 = type metadata accessor for StandardEntityFusion();
  v7 = *(v6 + 28);
  v8 = *(v5 + v7);
  v106 = *(v3 + 20);
  v108 = v4;
  *(v4 + v106) = v8;
  v116 = v6;
  v118 = swift_allocObject();
  *(v118 + 16) = MEMORY[0x1E69E7CC0];
  v112 = v118 + 16;
  v120 = (v0 + 15);
  switch(v8)
  {
    case 1:

      goto LABEL_6;
    case 2:
      sub_1C4482D18();
      break;
    case 3:
      sub_1C44133C0();
      break;
    default:
      break;
  }

  v9 = sub_1C4F02938();

  if (v9)
  {
LABEL_6:
    v10 = v0 + 13;
    v11 = v0[24];
    sub_1C44B909C();
    v12 = [objc_opt_self() systemPhotoLibraryURL];
    sub_1C4EF98C8();

    v13 = sub_1C44B90E0(v11);
    v14 = [v13 librarySpecificFetchOptions];
    v15 = *MEMORY[0x1E6978F38];
    v16 = sub_1C4F01138();
    v18 = v17;
    v19 = sub_1C44B9174(v14);
    if (!v19)
    {
      __break(1u);
      JUMPOUT(0x1C44B8E9CLL);
    }

    v9 = v19;
    v104 = v7;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_42:
      v95 = *(v9 + 16);
      sub_1C4401E28();
      sub_1C443D664();
      v9 = v96;
    }

    v20 = *(v9 + 16);
    if (v20 >= *(v9 + 24) >> 1)
    {
      sub_1C4401E28();
      sub_1C443D664();
      v9 = v97;
    }

    *(v9 + 16) = v20 + 1;
    v21 = v9 + 16 * v20;
    *(v21 + 32) = v16;
    *(v21 + 40) = v18;
    v22 = sub_1C4F01658();

    [v14 setFetchPropertySets_];

    v23 = [objc_opt_self() fetchPersonsWithAutonamingSuggestionFeatureUserFeedbackWithOptions_];
    if (v23)
    {
      v9 = v23;
      v0[6] = sub_1C4B587C4;
      v0[7] = v118;
      v0[2] = MEMORY[0x1E69E9820];
      v0[3] = 1107296256;
      v0[4] = sub_1C4AAF5EC;
      v0[5] = &unk_1F43FD9C0;
      v24 = _Block_copy(aBlock);
      v25 = v0[7];

      [v9 enumerateObjectsUsingBlock_];

      _Block_release(v24);
      v13 = v9;
    }

    else
    {
    }

    v6 = v116;
    v7 = v104;
    v1 = v10;

    v2 = v120;
  }

  *v1 = 0;
  v1[1] = 0;
  *v2 = 0;
  switch(*(v5 + v7))
  {
    case 1:
    case 3:
      sub_1C447F6F4();
      sub_1C4EFD378();
      v26 = sub_1C44886D0();
      v27(v26);
      v28 = type metadata accessor for PhaseStores();
      v29 = sub_1C44CD920(v28);
      sub_1C4508964(v29, v30, v31, v32, v33, v34, v35, v36, v98, v100, v102, v104, v106, v108, aBlock, v112, v114, v116, v118, v120);
      if (v6)
      {
        v40 = sub_1C4B58610;
        v41 = sub_1C4B58948;
      }

      else
      {
        v40 = sub_1C44E7CDC;
        v41 = sub_1C44B9608;
      }

      goto LABEL_22;
    case 2:
      sub_1C447F6F4();
      sub_1C4EFD378();
      v44 = sub_1C44886D0();
      v45(v44);
      v46 = type metadata accessor for PhaseStores();
      v47 = sub_1C44CD920(v46);
      sub_1C4508964(v47, v48, v49, v50, v51, v52, v53, v54, v98, v100, v102, v104, v106, v108, aBlock, v112, v114, v116, v118, v120);
      if (v6)
      {
        v40 = sub_1C4B585B8;
        v41 = sub_1C4B58B08;
      }

      else
      {
        v40 = sub_1C450AC80;
        v41 = sub_1C450B3F4;
      }

LABEL_22:
      sub_1C44B92A4(v1 + v2, v9, v40, v7, v41, v37, v38, v39, v99, v101, v103, v105, v107, v109, aBlocka, v113, v115, v117, v119, v121);
      v55 = v0[26];
      v56 = v0[20];

      v57 = v0[13];
      v14 = v0[14];
      v58 = v0[15];
      sub_1C449AF24();
      sub_1C4471BAC(v55, v56);
      v59 = *(v108 + v106);
      v122 = 0xD000000000000010;
      v123 = 0x80000001C4FAAFC0;
      v60 = 0xE400000000000000;
      v61 = 1819047270;
      switch(v59)
      {
        case 1:
          break;
        case 2:
          v60 = 0xE500000000000000;
          v61 = sub_1C4482D18();
          break;
        case 3:
          v61 = sub_1C44133C0();
          v60 = 0xEA0000000000676ELL;
          break;
        default:
          v61 = sub_1C44806FC();
          break;
      }

      v62 = v0[20];
      MEMORY[0x1C6940010](v61, v60);

      MEMORY[0x1C6940010](0x746E65727275632ELL, 0xE800000000000000);
      v63 = type metadata accessor for KeyValueStore();
      v64 = *(v63 + 48);
      v65 = *(v63 + 52);
      swift_allocObject();
      v66 = v62;
      v5 = 0;
      v13 = KeyValueStore.init(config:domain:)(v66, v122, v123);
      v18 = sub_1C44BA6A8(v57, v14, v58);
      v10 = 0;
      v67 = *(v18 + 16);
      v9 = v18 + 32;
      v16 = v116;
      break;
    default:
      v122 = 0;
      v123 = 0xE000000000000000;
      sub_1C4F02248();
      MEMORY[0x1C6940010](0x676E6974726F6241, 0xE900000000000020);
      v0[16] = v6;
      sub_1C456902C(&qword_1EC0BA4D8, &qword_1C4F14208);
      v42 = sub_1C4F01198();
      MEMORY[0x1C6940010](v42);

      MEMORY[0x1C6940010](0xD000000000000019, 0x80000001C4F8EC80);
      sub_1C448D934(*(v5 + v7));
      sub_1C4B590A0();
      return sub_1C4F024A8();
  }

  while (v67 != v10)
  {
    if (v10 >= *(v18 + 16))
    {
      __break(1u);
      goto LABEL_42;
    }

    sub_1C442E860(v9, (v0 + 8));
    v68 = v0[11];
    v69 = v0[12];
    v70 = sub_1C4409678(v0 + 8, v68);
    v71 = v68;
    v5 = 0;
    sub_1C446F2A0(v70, 0, 0, v71, v69);
    v10 = (v10 + 1);
    sub_1C440962C(v0 + 8);
    v9 += 40;
  }

  if (qword_1EDDFD028 != -1)
  {
    swift_once();
  }

  v72 = sub_1C4F00978();
  sub_1C442B738(v72, qword_1EDE2DE10);
  v73 = sub_1C4F00968();
  v74 = sub_1C4F01CF8();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v122 = v76;
    *v75 = 136315138;
    v0[18] = v116;
    sub_1C456902C(&qword_1EC0BA4D8, &qword_1C4F14208);
    v77 = sub_1C4F01198();
    v79 = sub_1C441D828(v77, v78, &v122);

    *(v75 + 4) = v79;
    _os_log_impl(&dword_1C43F8000, v73, v74, "%s Updated result to db", v75, 0xCu);
    sub_1C440962C(v76);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  sub_1C44BB5A4(v0[19] + *(v116 + 20), v0[19] + *(v116 + 24));
  v80 = sub_1C4F00968();
  v81 = sub_1C4F01CF8();
  v82 = os_log_type_enabled(v80, v81);
  v83 = v0[26];
  if (v82)
  {
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v122 = v85;
    *v84 = 136315138;
    v0[17] = v116;
    sub_1C456902C(&qword_1EC0BA4D8, &qword_1C4F14208);
    v86 = sub_1C4F01198();
    v88 = sub_1C441D828(v86, v87, &v122);

    *(v84 + 4) = v88;
    _os_log_impl(&dword_1C43F8000, v80, v81, "%s Updated token", v84, 0xCu);
    sub_1C440962C(v85);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  sub_1C442ED28();
  sub_1C44BCC4C(v83, v89);

  v90 = v0[26];
  v91 = v0[23];
  v92 = v0[24];
  v93 = v0[20];

  v94 = v0[1];

  return v94();
}

uint64_t sub_1C44B8ECC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C44B8F10()
{
  v3 = v0 + *(v1 + 20);

  return type metadata accessor for PhaseStores();
}

uint64_t sub_1C44B8F2C()
{
  v2 = *(v0 - 216);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C44B8F44(uint64_t result, char a2)
{
  v4 = v2 + *(v3 + 32);
  *v4 = result;
  *(v4 + 8) = a2 & 1;
  return result;
}

void sub_1C44B8F5C()
{
  v1 = *(v0 - 280);
  v2 = *(v0 - 304);
  v3 = *(v0 - 312);
}

uint64_t sub_1C44B8F9C()
{
  v5 = v0[11];
  v3 = v0[7];
  *(v1 - 96) = v0[10];
  *(v1 - 88) = v3;
}

uint64_t sub_1C44B8FBC()
{
  v2 = *(v0 - 1080);
  v3 = *(v0 - 1096);

  return sub_1C44239FC(v2);
}

uint64_t sub_1C44B8FDC(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 232);
  return result;
}

uint64_t sub_1C44B8FE8()
{
  v2 = v0 + *(v1 - 392);
  result = *(v1 - 296);
  v4 = *(v1 - 184);
  v5 = *(v1 - 400);
  v6 = *(v1 - 408);
  return result;
}

uint64_t sub_1C44B9028()
{
}

unint64_t sub_1C44B909C()
{
  result = qword_1EDDFCE78;
  if (!qword_1EDDFCE78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDDFCE78);
  }

  return result;
}

id sub_1C44B90E0(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1C4EF9868();
  v4 = [v2 initWithPhotoLibraryURL_];

  v5 = sub_1C4EF98F8();
  sub_1C43FBCE0(v5);
  (*(v6 + 8))(a1);
  return v4;
}

uint64_t sub_1C44B9174(void *a1)
{
  v1 = [a1 fetchPropertySets];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C4F01678();

  return v3;
}

uint64_t sub_1C44B91CC()
{
  v3 = *(v1 - 200);

  return sub_1C4430900(v0, v3);
}

uint64_t sub_1C44B9210()
{
  result = v1;
  *(v0 + 416) = **(v0 + 344);
  return result;
}

void sub_1C44B924C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
}

uint64_t sub_1C44B9260()
{
  v8 = (v2 + v4[8]);
  *v8 = v0;
  v8[1] = v1;
  v9 = (v2 + v4[10]);
  *v9 = *(v5 - 112);
  v9[1] = v3;
  *(v2 + v4[11]) = v7;
  *(v2 + v4[12]) = *(v5 - 116);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

void sub_1C44B92A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v22;
  a20 = v23;
  v69 = v24;
  v25 = v20;
  v66 = v26;
  v67 = v27;
  v70 = v28;
  v30 = v29;
  v31 = sub_1C4EFD548();
  v32 = sub_1C43FCDF8(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBCC4();
  v39 = v38 - v37;
  if (qword_1EDDFFAF0 != -1)
  {
    sub_1C4400128();
  }

  v40 = sub_1C4F00978();
  sub_1C442B738(v40, qword_1EDE2E088);
  v41 = *(v34 + 16);
  v68 = v30;
  v41(v39, v30, v31);
  v42 = sub_1C4F00968();
  v43 = sub_1C4F01CF8();
  if (os_log_type_enabled(v42, v43))
  {
    v65 = v21;
    v44 = swift_slowAlloc();
    a10 = swift_slowAlloc();
    *v44 = 136315394;
    sub_1C44B95C0(&qword_1EDDFA220, MEMORY[0x1E69A92C8]);
    HIDWORD(v63) = v43;
    v45 = sub_1C4F02858();
    v64 = v25;
    v47 = v46;
    (*(v34 + 8))(v39, v31);
    v48 = sub_1C441D828(v45, v47, &a10);

    *(v44 + 4) = v48;
    *(v44 + 12) = 2080;
    v49 = v70;
    v50 = sub_1C44A5D54(v70);
    v52 = sub_1C441D828(v50, v51, &a10);

    *(v44 + 14) = v52;
    _os_log_impl(&dword_1C43F8000, v42, BYTE4(v63), "GraphStore: tripleFusingMap: e:%s p:%s", v44, 0x16u);
    swift_arrayDestroy();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {

    v53 = (*(v34 + 8))(v39, v31);
    v49 = v70;
  }

  v54 = *(v25[2] + OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_pool);
  MEMORY[0x1EEE9AC00](v53);
  v55 = v68;
  *(&v63 - 6) = v25;
  *(&v63 - 5) = v55;
  *(&v63 - 32) = v49;
  v56 = v67;
  *(&v63 - 3) = v66;
  *(&v63 - 2) = v56;

  sub_1C4418704(v69, (&v63 - 8), v57, v58, v59, v60, v61, v62, v63, v64);

  sub_1C43FBC80();
}

uint64_t sub_1C44B95C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C44B9660(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = a6;
  v25 = a5;
  v23 = a1;
  v26 = sub_1C456902C(&qword_1EC0BA580, &unk_1C4F32530);
  v24 = *(v26 - 8);
  v8 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v10 = &v22 - v9;
  v11 = sub_1C456902C(&qword_1EC0BE558, &unk_1C4F54060);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v22 - v17;
  type metadata accessor for TranslatedEntityTriple(0);
  sub_1C44B95C0(&qword_1EDDF3A48, type metadata accessor for TranslatedEntityTriple);
  sub_1C4EFADF8();
  sub_1C4B4C078(v16, a3, a4, 0, 1, v18);
  v19 = *(v12 + 8);
  v19(v16, v11);
  type metadata accessor for ConstructionGraphTriple(0);
  sub_1C44B95C0(&unk_1EDDF3848, type metadata accessor for ConstructionGraphTriple);
  sub_1C4EFADF8();
  sub_1C44B9974(v23, v18, v10, v25, v27, &qword_1EC0BA580, &unk_1C4F32530, &unk_1EDDF00A0, &qword_1EDDF00B0, &qword_1EDDE2660, type metadata accessor for ConstructionGraphTriple, &protocol conformance descriptor for ConstructionGraphTriple, sub_1C44E77A4, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32);
  (*(v24 + 8))(v10, v26);
  return (v19)(v18, v11);
}

void sub_1C44B9974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t *a21, unint64_t *a22, void (*a23)(uint64_t), uint64_t a24, uint64_t *a25)
{
  sub_1C43FE96C();
  a19 = v27;
  a20 = v28;
  v161 = v29;
  a10 = v26;
  v167 = v25;
  v168 = v30;
  v171 = v31;
  v169 = v32;
  v175 = v33;
  v35 = v34;
  v162 = v36;
  v163 = v37;
  v170 = sub_1C456902C(v36, v37);
  v38 = sub_1C43FCDF8(v170);
  v165 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FD230();
  v164 = v43;
  sub_1C43FBE44();
  v174 = sub_1C4EFF0C8();
  v44 = sub_1C43FCDF8(v174);
  v166 = v45;
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FBCC4();
  v173 = v49 - v48;
  v50 = sub_1C456902C(&unk_1EC0BC9C8, &qword_1C4F29B58);
  v51 = sub_1C43FBD18(v50);
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v51);
  sub_1C43FBD08();
  v56 = v54 - v55;
  MEMORY[0x1EEE9AC00](v57);
  sub_1C43FD230();
  v172 = v58;
  v59 = sub_1C43FBE44();
  v60 = type metadata accessor for TranslatedEntityTriple(v59);
  v61 = sub_1C43FCDF8(v60);
  v160 = v62;
  v64 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v61);
  sub_1C43FBD08();
  v67 = v65 - v66;
  v69 = MEMORY[0x1EEE9AC00](v68);
  v71 = &v147 - v70;
  MEMORY[0x1EEE9AC00](v69);
  v73 = &v147 - v72;
  sub_1C456902C(&qword_1EC0BE558, &unk_1C4F54060);
  sub_1C441310C();
  sub_1C4401CBC(v74, &qword_1EC0BE558, &unk_1C4F54060);
  sub_1C441A560();
  sub_1C44B95C0(v75, v76);
  sub_1C440A9B8();
  v77 = a10;
  v78 = sub_1C4EFAFD8();
  if (!v77)
  {
    v79 = v78;
    a10 = v67;
    v175 = v60;
    v158 = v71;
    v157 = v56;
    v159 = v35;
    v156 = v73;
    v80 = v172;
    sub_1C44BA514();
    if (sub_1C44157D4(v80, 1, v175) == 1)
    {
      sub_1C4420C3C(v80, &unk_1EC0BC9C8, &qword_1C4F29B58);
      if (qword_1EDDFFAF0 != -1)
      {
        sub_1C4400128();
      }

      v81 = sub_1C4F00978();
      sub_1C442B738(v81, qword_1EDE2E088);
      v82 = sub_1C4F00968();
      v83 = sub_1C4F01CF8();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        *v84 = 0;
        _os_log_impl(&dword_1C43F8000, v82, v83, "GraphStore: batchFusingInsert: found no data", v84, 2u);
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }
    }

    else
    {
      v155 = v79;
      v150 = a23;
      v149 = a22;
      v147 = a21;
      sub_1C4426060();
      sub_1C4B5907C(&v181);
      sub_1C44856C8(v85, v86);
      sub_1C456902C(&qword_1EC0B91A8, &qword_1C4F0ECB0);
      v87 = (*(v160 + 80) + 32) & ~*(v160 + 80);
      v172 = *(v160 + 72);
      *(swift_allocObject() + 16) = xmmword_1C4F0D130;
      sub_1C441D754();
      v148 = v88;
      v160 = v87;
      sub_1C4471BAC(v80, v88 + v87);
      v90 = (v166 + 16);
      v89 = *(v166 + 16);
      v91 = v173;
      v92 = v80;
      v93 = v174;
      v89(v173, v92, v174);
      v153 = sub_1C4EFBD38();
      v94 = sub_1C4B59094(v153, MEMORY[0x1E69A0050]);
      sub_1C4422F90(v94);
      sub_1C4EFBD48();
      v177 = v93;
      sub_1C4466D8C();
      v152 = sub_1C44B95C0(v95, v96);
      v178 = v152;
      v97 = sub_1C4422F90(v176);
      v154 = v89;
      v89(v97, v91, v93);
      v151 = sub_1C4EFB298();
      v182 = v151;
      v183 = MEMORY[0x1E699FE60];
      sub_1C4422F90(&v180);
      sub_1C440C4CC();
      sub_1C4EFBB28();
      sub_1C4420C3C(v176, &qword_1EC0C5040, &qword_1C4F0F950);
      sub_1C440962C(v179);
      sub_1C43FC300();
      sub_1C4B5907C(&a10);
      v98 = v163;
      v101 = sub_1C4401CBC(v99, v100, v163);
      sub_1C4B590C8(&a12);
      sub_1C4EFB438();
      sub_1C440962C(&v180);
      sub_1C441310C();
      v102 = sub_1C4401CBC(v147, v93, v98);
      v103 = sub_1C44B95C0(v149, v150);
      sub_1C4EFAFE8();
      v149 = v103;
      v150 = v102;
      v161 = v101;
      v162 = v90;
      v104 = v148;
      v163 = a25;
      v106 = *(v165 + 1);
      v105 = (v165 + 8);
      v107 = sub_1C43FD7E0();
      v165 = v108;
      v108(v107);
      sub_1C44A3CE0();
      sub_1C44B6790();
      while (1)
      {
        sub_1C44BA514();
        if (sub_1C44157D4(v102, 1, v175) == 1)
        {
          break;
        }

        sub_1C44856C8(v102, v91);
        sub_1C4466D8C();
        sub_1C44B95C0(&qword_1EDDFCC98, v109);
        v110 = v173;
        sub_1C43FD7E0();
        if (sub_1C4F010B8())
        {
          v111 = v104;
        }

        else
        {
          v102 = v105;
          sub_1C44A3C00();
          sub_1C447D030(v112, v113, v114, v115, v116, v117);
          v118 = v174;
          (*v166)(v110, v174);

          v119 = sub_1C43FD7E0();
          v91 = v162;
          v120 = v154;
          (v154)(v119);
          v179[3] = v153;
          v121 = sub_1C445AC14(MEMORY[0x1E69A0050]);
          sub_1C4422F90(v121);
          sub_1C4EFBD48();
          v177 = v118;
          v178 = v152;
          v122 = sub_1C4422F90(v176);
          v120(v122, v110, v118);
          v182 = v151;
          v183 = MEMORY[0x1E699FE60];
          sub_1C4422F90(&v180);
          sub_1C440C4CC();
          sub_1C4EFBB28();
          sub_1C4420C3C(v176, &qword_1EC0C5040, &qword_1C4F0F950);
          sub_1C440962C(v179);
          sub_1C4B590C8(&a14);
          sub_1C4EFB438();
          sub_1C440962C(&v180);
          sub_1C4EFAFE8();
          v123 = sub_1C43FD7E0();
          v165(v123);
          v111 = MEMORY[0x1E69E7CC0];
          sub_1C44B6790();
        }

        sub_1C4471BAC(v91, a10);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v127 = sub_1C441BA3C();
          sub_1C44E6488(v127, v128, v129, v130);
          v111 = v131;
        }

        v125 = *(v111 + 16);
        v124 = *(v111 + 24);
        v104 = v111;
        if (v125 >= v124 >> 1)
        {
          sub_1C44E6488(v124 > 1, v125 + 1, 1, v111);
          v104 = v132;
        }

        sub_1C44BCC4C(v91, type metadata accessor for TranslatedEntityTriple);
        *(v104 + 16) = v125 + 1;
        sub_1C4426060();
        sub_1C44856C8(a10, v126);
      }

      sub_1C4420C3C(v102, &unk_1EC0BC9C8, &qword_1C4F29B58);
      if (*(v104 + 16))
      {
        v133 = v173;
        sub_1C44A3C00();
        sub_1C447D030(v134, v135, v136, v137, v138, v139);
        v140 = v174;
        v141 = v156;

        sub_1C441739C();
        v142(v133, v140);
        sub_1C4407B7C();
        sub_1C44BCC4C(v141, v146);
      }

      else
      {

        sub_1C441739C();
        v143(v173, v174);
        sub_1C4407B7C();
        v144 = sub_1C4400248();
        sub_1C44BCC4C(v144, v145);
      }
    }
  }

  sub_1C43FBC80();
}

void sub_1C44BA514()
{
  sub_1C4413F18();
  sub_1C44002F4();
  v2 = sub_1C456902C(&unk_1EC0BC9C8, &qword_1C4F29B58);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBD64();
  sub_1C442C998(&unk_1EDDFA310, &unk_1EC0BC9D8, &unk_1C4F29B60);
  if (sub_1C440C4B0())
  {
    type metadata accessor for TranslatedEntityTriple(0);
    v6 = sub_1C440310C();
LABEL_8:
    sub_1C440BAA8(v6, v7, v8, v9);
    goto LABEL_9;
  }

  sub_1C4406CA4(&qword_1EDDFA320, &unk_1EC0BC9D8, &unk_1C4F29B60);
  sub_1C444FD58();
  v10 = sub_1C43FBE94();
  type metadata accessor for TranslatedEntityTriple(v10);
  sub_1C443E304();
  sub_1C43FEF44();
  sub_1C4460A3C();

  if (!v0)
  {
    sub_1C44130E8();
    if (v11)
    {
      sub_1C4420C3C(v1, &unk_1EC0BC9C8, &qword_1C4F29B58);
      sub_1C4410BE4();
      sub_1C4EFB4C8();
      sub_1C440D3D8();
    }

    else
    {
      sub_1C44951D4();
      sub_1C4460210();
    }

    sub_1C4404EB4();
    goto LABEL_8;
  }

LABEL_9:
  sub_1C441B8EC();
  sub_1C44102DC();
}

uint64_t sub_1C44BA6A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EDDF7B18 != -1)
  {
    swift_once();
  }

  v5 = qword_1EDE2D870;
  v6 = *algn_1EDE2D878;
  v7 = qword_1EDE2D880;
  v8 = unk_1EDE2D888;
  v9 = qword_1EDE2D890;
  v10 = sub_1C456902C(&unk_1EC0C2E50, &unk_1C4F4E090);
  v42 = v10;
  v11 = sub_1C4401CBC(&qword_1EDDF7C98, &unk_1EC0C2E50, &unk_1C4F4E090);
  v43 = v11;
  v12 = swift_allocObject();
  *&v41 = v12;
  v12[2] = v5;
  v12[3] = v6;
  v12[4] = v7;
  v12[5] = v8;
  v12[6] = v9;
  v12[7] = a1;
  v12[8] = v8;
  v12[9] = v9;
  sub_1C456902C(&unk_1EC0C2E30, &qword_1C4F4E080);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  sub_1C443FA18(&v41, inited + 32);
  sub_1C446F0D0(v8);
  sub_1C446F0D0(v8);
  v14 = qword_1EDDF7B10;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  if (v14 != -1)
  {
    swift_once();
  }

  v15 = qword_1EDE2D848;
  v16 = unk_1EDE2D850;
  v17 = qword_1EDE2D858;
  v18 = unk_1EDE2D860;
  v19 = qword_1EDE2D868;
  v39 = v10;
  v40 = v11;
  v20 = swift_allocObject();
  *&v38 = v20;
  v20[2] = v15;
  v20[3] = v16;
  v20[4] = v17;
  v20[5] = v18;
  v20[6] = v19;
  v20[7] = a2;
  v20[8] = v18;
  v20[9] = v19;
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1C4F0D130;
  sub_1C443FA18(&v38, v21 + 32);
  sub_1C446F0D0(v18);
  sub_1C446F0D0(v18);
  v22 = qword_1EDDF7B08;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  if (v22 != -1)
  {
    swift_once();
  }

  v23 = qword_1EDE2D820;
  v24 = *algn_1EDE2D828;
  v25 = qword_1EDE2D830;
  v26 = unk_1EDE2D838;
  v27 = qword_1EDE2D840;
  v36 = v10;
  v37 = v11;
  v28 = swift_allocObject();
  *&v35 = v28;
  v28[2] = v23;
  v28[3] = v24;
  v28[4] = v25;
  v28[5] = v26;
  v28[6] = v27;
  v28[7] = a3;
  v28[8] = v26;
  v28[9] = v27;
  v29 = swift_initStackObject();
  *(v29 + 16) = xmmword_1C4F0D130;
  sub_1C443FA18(&v35, v29 + 32);
  sub_1C456902C(&qword_1EC0C2E60, &unk_1C4F54100);
  v30 = swift_initStackObject();
  *(v30 + 16) = xmmword_1C4F0C890;
  *(v30 + 32) = inited;
  *(v30 + 40) = v21;
  *(v30 + 48) = v29;
  sub_1C446F0D0(v26);
  sub_1C446F0D0(v26);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C446F8F4(v30);
  v32 = v31;
  swift_setDeallocating();
  sub_1C446FAEC();
  return v32;
}

uint64_t sub_1C44BA9F0()
{
  v1 = v0[3];

  v2 = v0[4];

  if (v0[5])
  {
    v3 = v0[6];
  }

  if (v0[8])
  {
    v4 = v0[9];
  }

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1C44BAA50()
{
  sub_1C441B2E0();
  v3 = *(*(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_db) + OBJC_IVAR____TtC24IntelligencePlatformCore16KeyValueDatabase_pool);
  sub_1C441C090();

  v4 = sub_1C440CAAC();
  v5 = v0(v4);

  if (v2)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_1C44BAB1C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 40);
  v4 = *(v2 + 48);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  v8 = *(a2 + 32);
  return v3(a1, v7);
}

void sub_1C44BAB60(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = *a2;
  v6 = a2[1];
  v7 = sub_1C44BAADC();
  if (v3)
  {

LABEL_5:
    sub_1C448B80C();
    return;
  }

  if ((v8 & 1) != 0 || !__OFADD__(v4, v7))
  {
    goto LABEL_5;
  }

  __break(1u);
}

void sub_1C44BABD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  sub_1C43FE96C();
  sub_1C4411CC4();
  v13 = v12;
  v34 = *v10;
  v35 = sub_1C4EFB1E8();
  v14 = sub_1C43FCDF8(v35);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBFDC();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FD230();
  sub_1C43FBE44();
  v18 = sub_1C4EFAD98();
  v19 = sub_1C43FCDF8(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1C4406E1C();
  v24 = *(v10 + OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_pool);
  v25 = sub_1C43FD2BC();
  sub_1C456902C(v25, v26);
  sub_1C4418A58();
  if (!v11)
  {
    goto LABEL_8;
  }

  v27 = v11;
  sub_1C4EFA798();
  sub_1C447F088();
  sub_1C445E7F4();
  v28 = *(v21 + 8);
  v29 = sub_1C43FCE84();
  v28(v29);
  if (v13)
  {

    sub_1C4778264();
    sub_1C43FFB2C();
    sub_1C4433CB8();
LABEL_8:
    sub_1C440431C();
    sub_1C43FBC80();
    return;
  }

  v30 = v11;
  sub_1C4EFAAC8();
  sub_1C447F088();
  sub_1C445E7F4();
  v31 = sub_1C43FCE84();
  v28(v31);
  sub_1C442F1A4();
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  sub_1C441B920();
  if (!sub_1C440BCF8())
  {

    goto LABEL_8;
  }

  v32 = sub_1C4403150();
  v33(v32);
  sub_1C441B3B8(OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL);
  __break(1u);
}

uint64_t sub_1C44BAE74@<X0>(uint64_t (*a1)(void)@<X4>, uint64_t a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
  }

  return result;
}

uint64_t sub_1C44BAEAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = a3;
  v33 = a2;
  v32[1] = a1;
  v4 = sub_1C456902C(&qword_1EC0B8EB0, &unk_1C4F0E910);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v32 - v10;
  if (qword_1EDDFE0F8 != -1)
  {
    swift_once();
  }

  v12 = sub_1C4EFBD38();
  v13 = sub_1C442B738(v12, qword_1EDE2E068);
  v39 = v12;
  v40 = MEMORY[0x1E69A0050];
  v14 = sub_1C4422F90(v38);
  v15 = *(*(v12 - 8) + 16);
  v15(v14, v13, v12);
  v32[0] = v3;
  v16 = *(v3 + 16);
  v17 = *(v3 + 24);
  v36 = MEMORY[0x1E69E6158];
  v37 = MEMORY[0x1E69A0130];
  v34 = v16;
  v35 = v17;
  v18 = sub_1C4EFB298();
  v42 = v18;
  v43 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v41);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C4420C3C(&v34, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v38);
  sub_1C446B728();
  sub_1C4EFAE28();
  sub_1C440962C(v41);
  if (qword_1EDDFE100 != -1)
  {
    swift_once();
  }

  v19 = sub_1C442B738(v12, qword_1EDE2DF28);
  v39 = v12;
  v40 = MEMORY[0x1E69A0050];
  v20 = sub_1C4422F90(v38);
  v15(v20, v19, v12);
  v36 = MEMORY[0x1E69E6158];
  v37 = MEMORY[0x1E69A0130];
  v34 = v33;
  v35 = v50;
  v42 = v18;
  v43 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v41);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C4420C3C(&v34, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v38);
  sub_1C4401CBC(&qword_1EDDFE858, &qword_1EC0B8EB0, &unk_1C4F0E910);
  sub_1C4EFB438();
  v21 = *(v5 + 8);
  v21(v9, v4);
  sub_1C440962C(v41);
  sub_1C4401CBC(&unk_1EDDFE860, &qword_1EC0B8EB0, &unk_1C4F0E910);
  sub_1C446B794();
  v22 = v32[2];
  sub_1C4EFAFF8();
  v21(v11, v4);
  if (v22)
  {
    return v21;
  }

  v23 = v45;
  if (!v45)
  {
    return 0;
  }

  v24 = v44;
  v25 = v46;
  v26 = v47;
  v27 = v48;
  v28 = v49;
  v29 = *(v32[0] + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_decoder);
  sub_1C456902C(&qword_1EC0B8EB8, &unk_1C4F0E920);
  sub_1C45A2288();
  sub_1C4EF9698();
  if (*(v44 + 16))
  {
    v30 = v25;
    v21 = *(v44 + 32);
    sub_1C4470E30(v24, v23, v30, v26, v27, v28);

    return v21;
  }

  v44 = 0;
  v45 = 0xE000000000000000;
  sub_1C4F02248();

  v44 = 0xD00000000000002FLL;
  v45 = 0x80000001C4F8A7E0;
  MEMORY[0x1C6940010](v33, v50);
  result = sub_1C4F024A8();
  __break(1u);
  return result;
}

uint64_t sub_1C44BB420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1C44BAEAC(a1, a3, a4);
  if (v4)
  {
    return v6;
  }

  return result;
}

uint64_t sub_1C44BB458(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&qword_1EC0B8EB8, &unk_1C4F0E920);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1C44BB4C4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = *a2;
  v6 = a2[1];
  v7 = sub_1C44BAADC();
  if (v3)
  {

LABEL_5:
    sub_1C448B80C();
    return;
  }

  if ((v8 & 1) != 0 || !__OFADD__(v4, v7))
  {
    goto LABEL_5;
  }

  __break(1u);
}

void sub_1C44BB534(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = *a2;
  v6 = a2[1];
  v7 = sub_1C44BAADC();
  if (v3)
  {

LABEL_5:
    sub_1C448B80C();
    return;
  }

  if ((v8 & 1) != 0 || !__OFADD__(v4, v7))
  {
    goto LABEL_5;
  }

  __break(1u);
}

void sub_1C44BB5A4(uint64_t a1, uint64_t a2)
{
  v6 = objc_autoreleasePoolPush();
  v7 = sub_1C4EF93D8();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_1C4EF93C8();
  sub_1C4EF9AE8();
  v27[0] = v10;
  sub_1C456902C(&qword_1EC0BA4A8, &dword_1C4F141D0);
  sub_1C4401CBC(&unk_1EDDF7D68, &qword_1EC0BA4A8, &dword_1C4F141D0);
  v11 = sub_1C4EF93B8();
  if (v3)
  {

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    v13 = v11;
    v14 = v12;
    v30 = a1;

    objc_autoreleasePoolPop(v6);
    sub_1C44344B8(v13, v14);
    sub_1C44BB884();
    v15 = v28;
    if (v28)
    {
      v16 = v29;
      sub_1C4409678(v27, v28);
      v17 = (*(v16 + 48))(v15, v16);
      sub_1C440962C(v27);
    }

    else
    {
      sub_1C4420C3C(v27, &qword_1EC0BA490, &unk_1C4F53630);
      v17 = 0;
    }

    switch(*(v2 + *(type metadata accessor for StandardEntityFusion() + 28)))
    {
      case 2:

        goto LABEL_9;
      default:
        v18 = sub_1C4F02938();

        if (v18)
        {
LABEL_9:
          v19 = *(v2 + *(type metadata accessor for PhaseStores() + 24));
          v20 = sub_1C4B58C88;
          v21 = a2;
          v22 = v30;
          v23 = v13;
          v24 = v14;
          v25 = 0;
        }

        else
        {
          v26 = *(v2 + *(type metadata accessor for PhaseStores() + 24));
          v20 = sub_1C44BC06C;
          v21 = a2;
          v22 = v30;
          v23 = v13;
          v24 = v14;
          v25 = 1;
        }

        sub_1C44BC004(v21, v22, v23, v24, v25, v17, v20);
        sub_1C4434000(v13, v14);
        sub_1C4434000(v13, v14);
        break;
    }
  }
}

void sub_1C44BB884()
{
  sub_1C43FBD3C();
  v3 = v0;
  v46 = v4;
  v5 = sub_1C456902C(&unk_1EC0BAC20, &unk_1C4F141E0);
  v6 = sub_1C43FBD18(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v47[-1] - v9;
  v11 = type metadata accessor for ConstructionProgressTokens(0);
  v12 = sub_1C43FBCE0(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBCC4();
  v17 = v16 - v15;
  v18 = sub_1C456902C(&unk_1EC0BA4B8, &unk_1C4F16F60);
  v19 = sub_1C43FBD18(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v47[-1] - v22;
  v24 = type metadata accessor for ProgressTokens(0);
  v25 = sub_1C44101F8(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  sub_1C4416DF8();
  v28 = type metadata accessor for StandardEntityFusion();
  switch(*(v3 + *(v28 + 28)))
  {
    case 2:

      goto LABEL_4;
    default:
      v29 = sub_1C4F02938();

      if (v29)
      {
LABEL_4:
        v30 = type metadata accessor for PhaseStores();
        sub_1C4488218(v30);
        v48 = v28;
        sub_1C449AE68();
        v49 = sub_1C447CB3C(v31, v32);
        v33 = sub_1C4422F90(v47);
        sub_1C445AB80(v33);
        sub_1C44FEF34(v47, 0);
        sub_1C440962C(v47);
        if (sub_1C44157D4(v23, 1, v1) == 1)
        {
          v34 = &unk_1EC0BA4B8;
          v35 = &unk_1C4F16F60;
          v36 = v23;
LABEL_8:
          sub_1C4420C3C(v36, v34, v35);
          v41 = v46;
          *(v46 + 32) = 0;
          *v41 = 0u;
          v41[1] = 0u;
          goto LABEL_12;
        }

        sub_1C449F338(v23, v2);
        v42 = v46;
        *(v46 + 24) = v1;
        v42[4] = &off_1F43EE918;
        v43 = sub_1C4422F90(v42);
        v44 = v2;
      }

      else
      {
        v37 = type metadata accessor for PhaseStores();
        sub_1C4488218(v37);
        v48 = v28;
        sub_1C449AE68();
        v49 = sub_1C447CB3C(v38, v39);
        v40 = sub_1C4422F90(v47);
        sub_1C445AB80(v40);
        sub_1C449D50C(v47, 0);
        sub_1C440962C(v47);
        if (sub_1C44157D4(v10, 1, v11) == 1)
        {
          v34 = &unk_1EC0BAC20;
          v35 = &unk_1C4F141E0;
          v36 = v10;
          goto LABEL_8;
        }

        sub_1C449F338(v10, v17);
        v45 = v46;
        *(v46 + 24) = v11;
        v45[4] = &off_1F43EE970;
        v43 = sub_1C4422F90(v45);
        v44 = v17;
      }

      sub_1C449F338(v44, v43);
LABEL_12:
      sub_1C43FE9F0();
      return;
  }
}

uint64_t sub_1C44BBC6C()
{

  return sub_1C44DDE2C();
}

uint64_t sub_1C44BBC8C()
{
  v2 = *(v0 - 1064);
  v3 = *(v0 - 1072);

  return sub_1C44239FC(v2);
}

uint64_t sub_1C44BBD00()
{
  v2 = *(v0 - 360);

  return sub_1C442E860(v2, v0 - 176);
}

uint64_t sub_1C44BBD20@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{

  return sub_1C448D2B4(v3 + a2, v4 + v2, a1);
}

uint64_t sub_1C44BBD38()
{
  v3 = *(v0 - 96);
  v2 = *(v0 - 88);

  return sub_1C4F02BC8();
}

uint64_t sub_1C44BBD58()
{
  v1 = *(v0 - 112) + 8;
  result = *(v0 - 176);
  v3 = *(v0 - 72);
  return result;
}

uint64_t sub_1C44BBD84()
{

  return swift_unknownObjectRelease();
}

uint64_t sub_1C44BBDB4(uint64_t a1)
{
  *(v2 - 184) = a1;
  *(v2 - 120) = v1;

  return sub_1C4EF93D8();
}

uint64_t sub_1C44BBE20()
{
  result = *(v0 - 352);
  v2 = *(v0 - 336);
  return result;
}

uint64_t sub_1C44BBE74@<X0>(uint64_t a1@<X8>)
{
  result = v1 + a1;
  v4 = *(v2 - 160);
  v5 = *(v2 - 128);
  v6 = *(v2 - 144);
  return result;
}

uint64_t sub_1C44BBE8C(uint64_t a1)
{

  return sub_1C4420C3C(a1, v1, v2);
}

uint64_t sub_1C44BBEA4()
{

  return sub_1C461B90C(v0 + 432, v0 + 376);
}

uint64_t sub_1C44BBEBC(float a1)
{
  *v4 = a1;

  return sub_1C441D828(v2, v3, (v1 + 400));
}

uint64_t sub_1C44BBEF8()
{
  result = v0;
  v3 = *(*(v1 - 264) + 8);
  return result;
}

void sub_1C44BBF18()
{

  sub_1C459E828();
}

void sub_1C44BBF4C()
{
  v2 = *(v0 + 72);
  v3 = (*(v0 + 64) + 24);

  os_unfair_lock_lock(v3);
}

void *sub_1C44BBF70()
{
  v2 = *(v0 - 104);
  v3 = *(v0 - 112);

  return sub_1C4409678((v0 - 136), v3);
}

uint64_t sub_1C44BBF98()
{
  v2 = *(*(v1 - 216) + 8);
  result = v0;
  v4 = *(v1 - 72);
  return result;
}

uint64_t sub_1C44BBFAC()
{
  v2 = *(v0 - 216);

  return sub_1C4F02778();
}

void sub_1C44BBFDC(uint64_t a1, unint64_t *a2)
{
  v3 = MEMORY[0x1E69A9748];

  sub_1C4E9412C(319, a2, v3);
}

uint64_t sub_1C44BC004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v9 = *(*(v7 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_pool);
  v11[2] = a2;
  v11[3] = a1;
  v11[4] = a3;
  v11[5] = a4;
  v11[6] = a6;
  v12 = a5;

  sub_1C446C37C(a7, v11);
}

uint64_t sub_1C44BC0C8(uint64_t a1, void (*a2)(char *, uint64_t), uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, int a7)
{
  v59 = a7;
  v68 = a6;
  v57 = type metadata accessor for ConstructionPhaseStatus(0);
  v12 = *(*(v57 - 8) + 64);
  MEMORY[0x1EEE9AC00](v57);
  v58 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v55 - v16;
  v63 = sub_1C456902C(&qword_1EC0C39F8, &qword_1C4F54120);
  v66 = *(v63 - 8);
  v18 = *(v66 + 64);
  v19 = MEMORY[0x1EEE9AC00](v63);
  v65 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v62 = &v55 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v67 = &v55 - v23;
  v24 = type metadata accessor for ConstructionProgressTokens(0);
  v25 = *(*(v24 - 1) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v55 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1C4EFD548();
  v29 = *(*(v28 - 8) + 16);
  v61 = a2;
  v60 = v29;
  v29(v27, a2, v28);
  v30 = &v27[v24[6]];
  v64 = a3;
  sub_1C4471BAC(a3, v30);
  v27[v24[5]] = 10;
  v31 = &v27[v24[7]];
  *v31 = a4;
  v31[1] = a5;
  *&v27[v24[8]] = v68;
  v27[v24[9]] = 1;
  sub_1C44344B8(a4, a5);
  sub_1C44B95C0(&qword_1EDDE10E8, type metadata accessor for ConstructionProgressTokens);
  v68 = a1;
  v32 = v78;
  sub_1C4EFB6A8();
  if (!v32)
  {
    v55 = v17;
    v73 = &type metadata for ProgressTokenColumn;
    v74 = sub_1C4492FAC();
    v33 = v74;
    LOBYTE(v72[0]) = 0;
    v70 = type metadata accessor for Source();
    v71 = sub_1C44B95C0(qword_1EDDF0D80, type metadata accessor for Source);
    v34 = sub_1C4422F90(v69);
    sub_1C4471BAC(v64, v34);
    v76 = sub_1C4EFB298();
    v77 = MEMORY[0x1E699FE60];
    v35 = v76;
    v56 = v76;
    sub_1C4422F90(v75);
    sub_1C4EFBB28();
    sub_1C4420C3C(v69, &qword_1EC0C5040, &qword_1C4F0F950);
    sub_1C440962C(v72);
    sub_1C44B95C0(&qword_1EDDE1100, type metadata accessor for ConstructionProgressTokens);
    v78 = 0;
    v36 = v62;
    sub_1C4EFAE28();
    sub_1C440962C(v75);
    v73 = &type metadata for ProgressTokenColumn;
    v74 = v33;
    LOBYTE(v72[0]) = 1;
    v70 = v28;
    v71 = sub_1C44B95C0(&qword_1EDDFA240, MEMORY[0x1E69A92C8]);
    v37 = sub_1C4422F90(v69);
    v60(v37, v61, v28);
    v76 = v35;
    v77 = MEMORY[0x1E699FE60];
    sub_1C4422F90(v75);
    sub_1C4EFBB28();
    sub_1C4420C3C(v69, &qword_1EC0C5040, &qword_1C4F0F950);
    sub_1C440962C(v72);
    sub_1C4401CBC(&qword_1EDDF0078, &qword_1EC0C39F8, &qword_1C4F54120);
    v38 = v63;
    sub_1C4EFB438();
    v39 = v66 + 8;
    v61 = *(v66 + 8);
    v61(v36, v38);
    sub_1C440962C(v75);
    v73 = &type metadata for ProgressTokenColumn;
    v74 = v33;
    LOBYTE(v72[0]) = 2;
    v40 = v56;
    v76 = v56;
    v77 = MEMORY[0x1E699FE60];
    sub_1C4422F90(v75);
    sub_1C4EFBB38();
    sub_1C440962C(v72);
    sub_1C4EFB438();
    sub_1C440962C(v75);
    v73 = &type metadata for ProgressTokenColumn;
    v74 = v33;
    LOBYTE(v72[0]) = 3;
    v70 = &type metadata for StageName;
    v71 = sub_1C4493280();
    LOBYTE(v69[0]) = 9;
    v76 = v40;
    v77 = MEMORY[0x1E699FE60];
    sub_1C4422F90(v75);
    sub_1C4EFBB68();
    sub_1C4420C3C(v69, &qword_1EC0C5040, &qword_1C4F0F950);
    sub_1C440962C(v72);
    v41 = v65;
    v42 = v61;
    sub_1C4EFB438();
    v42(v36, v38);
    sub_1C440962C(v75);
    v43 = v78;
    sub_1C4EFB898();
    v44 = v39;
    if (v43)
    {
      v42(v41, v38);
      v42(v67, v38);
    }

    else
    {
      v45 = v42;
      v66 = v44;
      v46 = sub_1C4EFBF38();
      v47 = v55;
      sub_1C440BAA8(v55, 1, 1, v46);
      sub_1C456902C(&qword_1EC0BDCC8, &qword_1C4F31978);
      v48 = *(sub_1C4EFB4E8() - 8);
      v49 = *(v48 + 72);
      v50 = (*(v48 + 80) + 32) & ~*(v48 + 80);
      *(swift_allocObject() + 16) = xmmword_1C4F0D130;
      LOBYTE(v72[0]) = 2;
      v76 = MEMORY[0x1E69E6370];
      v77 = MEMORY[0x1E69A0148];
      LOBYTE(v75[0]) = 1;
      sub_1C44930A4();
      v51 = v47;
      sub_1C4EFB568();
      sub_1C4420C3C(v75, &qword_1EC0C5040, &qword_1C4F0F950);
      v52 = v67;
      sub_1C4EFB8A8();
      sub_1C4420C3C(v51, &unk_1EC0BCAB0, &unk_1C4F111A0);

      if (v59)
      {
        v53 = v58;
        sub_1C4471BAC(v64, v58);
        *(v53 + *(v57 + 20)) = 3;
        sub_1C44B95C0(&qword_1EDDE25F0, type metadata accessor for ConstructionPhaseStatus);
        sub_1C4EFB6C8();
        sub_1C44BCC4C(v53, type metadata accessor for ConstructionPhaseStatus);
      }

      v45(v65, v38);
      v45(v52, v38);
    }
  }

  return sub_1C44BCC4C(v27, type metadata accessor for ConstructionProgressTokens);
}

uint64_t sub_1C44BCA84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C44BCADC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C44BCB34(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C44BCB8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C44BCBEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C44BCC4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C44BCCA4()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v6 = *v1;
  *(v2 + 104) = v0;

  sub_1C440962C((v2 + 16));
  if (v0)
  {
    v4 = sub_1C48136F8;
  }

  else
  {
    v4 = sub_1C44BCDC4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

void sub_1C44BCDC4()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88) + 1;
  *(v0 + 88) = v2;
  if (v2 == v1)
  {
    v4 = *(v0 + 56);
    v3 = *(v0 + 64);
    v5 = type metadata accessor for PhaseStores();
    sub_1C448E020(v5, v6, v7, v8, v9, v10, v11, v12, v21, SWORD2(v21), SBYTE6(v21), SHIBYTE(v21));
    v13 = *(v0 + 8);

    v13();
  }

  else
  {
    v14 = *(v0 + 72);
    if (v2 >= *(v14 + 16))
    {
      __break(1u);
    }

    else
    {
      sub_1C442E860(v14 + 40 * v2 + 32, v0 + 16);
      v15 = sub_1C44506A0();
      v16(v15);
      *(v0 + 113) = *(v0 + 112);
      v17 = swift_task_alloc();
      *(v0 + 96) = v17;
      *v17 = v0;
      v18 = sub_1C441C25C();

      ResumableStage.executeIfRequired(_:)(v18, v19, v20);
    }
  }
}

uint64_t sub_1C44BCEEC()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FBE64();
  *v3 = v2;
  v5 = *(v4 + 176);
  v6 = *v1;
  sub_1C43FBDAC();
  *v7 = v6;
  *(v8 + 184) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C44BCFE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  sub_1C440C6BC();
  a23 = v26;
  a24 = v27;
  sub_1C44346B8();
  a22 = v24;
  v28 = v24[21];
  v29 = v24[2];
  v30 = v24[3];
  sub_1C4420124();
  sub_1C448CFCC(v31, v32, v33);
  v34 = sub_1C4F00968();
  v35 = sub_1C4F01CF8();
  if (sub_1C4400B94(v35))
  {
    v37 = v24[3];
    v36 = v24[4];
    sub_1C43FECF0();
    swift_slowAlloc();
    sub_1C440E550();
    sub_1C4418528();
    *v25 = 136315138;
    sub_1C4420124();
    sub_1C448CFCC(v37, v36, v38);
    sub_1C4425F18();
    sub_1C447EAE0(v37, v39);
    sub_1C44B7D34();
    v41 = v40;
    v43 = v42;
    v44 = sub_1C4414A08();
    sub_1C447EAE0(v44, v45);
    sub_1C441D828(v41, v43, &a13);
    sub_1C4441528();
    *(v25 + 4) = v36;
    sub_1C4404638(&dword_1C43F8000, v46, v47, "StageFinish %s");
    sub_1C440AEF4();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {
    v48 = v24[3];
    sub_1C4430084();
    sub_1C447EAE0(v49, v50);
  }

  sub_1C4412320();
  v51 = sub_1C443661C();
  sub_1C44BD174(v51, v52, v53);
  v54 = sub_1C4404658();
  v55(v54);

  sub_1C43FC1B0();
  sub_1C440405C();

  return v57(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1C44BD174(uint64_t a1, char a2, uint64_t a3)
{
  v75 = a3;
  v69 = sub_1C4F00908();
  v68 = *(v69 - 1);
  v5 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v67 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_1C4F008B8();
  v72 = *(v73 - 8);
  v7 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v74 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1C4F008F8();
  v70 = *(v71 - 8);
  v9 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v76 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Pipeline.StatusStore();
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C4EFD548();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Source();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = (&v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v80 = 0x5F6E6F69737566;
  v81 = 0xE700000000000000;
  v25 = type metadata accessor for Fuser();
  sub_1C448CFCC(a1 + *(v25 + 20), v24, type metadata accessor for Source);
  v26 = *v24;
  v27 = v24[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C447EAE0(v24, type metadata accessor for Source);
  MEMORY[0x1C6940010](v26, v27);

  MEMORY[0x1C6940010](95, 0xE100000000000000);
  _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
  v28 = sub_1C4EFD3D8();
  v30 = v29;
  (*(v17 + 8))(v20, v16);
  MEMORY[0x1C6940010](v28, v30);

  v31 = v80;
  v32 = v81;
  sub_1C448CFCC(a1, v15, type metadata accessor for Configuration);
  v15[*(v12 + 28)] = a2;
  v33 = Pipeline.StatusStore.currentSessionId()();
  countAndFlagsBits = v33.value._countAndFlagsBits;
  object = v33.value._object;
  sub_1C447EAE0(v15, type metadata accessor for Pipeline.StatusStore);
  if (!v33.value._object)
  {
    countAndFlagsBits = 0;
    object = 0xE000000000000000;
  }

  v36 = swift_allocObject();
  *(v36 + 16) = v31;
  *(v36 + 24) = v32;
  v37 = swift_allocObject();
  *(v37 + 16) = countAndFlagsBits;
  *(v37 + 24) = object;
  v38 = swift_allocObject();
  *(v38 + 16) = 34;
  v39 = swift_allocObject();
  *(v39 + 16) = 8;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_1C44A059C;
  *(v40 + 24) = v36;
  v41 = swift_allocObject();
  *(v41 + 16) = 34;
  v42 = swift_allocObject();
  *(v42 + 16) = 8;
  v43 = swift_allocObject();
  *(v43 + 16) = sub_1C44A059C;
  *(v43 + 24) = v37;
  v44 = swift_allocObject();
  *(v44 + 16) = 32;
  v45 = swift_allocObject();
  *(v45 + 16) = 8;
  sub_1C456902C(&qword_1EC0BBF38, &unk_1C4F4B420);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F23100;
  *(inited + 32) = sub_1C44549EC;
  *(inited + 40) = v38;
  *(inited + 48) = sub_1C44549F4;
  *(inited + 56) = v39;
  *(inited + 64) = sub_1C4454B88;
  *(inited + 72) = v40;
  v47 = v74;
  *(inited + 80) = sub_1C44549F4;
  *(inited + 88) = v41;
  *(inited + 96) = sub_1C44549F4;
  *(inited + 104) = v42;
  *(inited + 112) = sub_1C4454C38;
  *(inited + 120) = v43;
  *(inited + 128) = sub_1C44549F4;
  *(inited + 136) = v44;
  *(inited + 144) = sub_1C44549F4;
  *(inited + 152) = v45;
  v48 = v76;
  *(inited + 160) = sub_1C4454CCC;
  *(inited + 168) = 0;
  sub_1C4EFD5C8();
  v49 = sub_1C4EFD5F8();
  v51 = v50;
  sub_1C4EFD608();
  v52 = sub_1C4F008D8();
  sub_1C4F00928();
  v53 = sub_1C4F01E18();
  result = sub_1C4F01F28();
  if ((result & 1) == 0)
  {
    goto LABEL_7;
  }

  if ((v51 & 1) == 0)
  {
    if (!v49)
    {
      __break(1u);
LABEL_7:

      (*(v72 + 8))(v47, v73);
      return (*(v70 + 8))(v48, v71);
    }

    goto LABEL_12;
  }

  if (HIDWORD(v49))
  {
    __break(1u);
    goto LABEL_20;
  }

  if ((v49 & 0xFFFFF800) == 0xD800)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  if (v49 >> 16 > 0x10)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v49 = &v79;
LABEL_12:
  LODWORD(v75) = v53;

  v55 = v67;
  sub_1C4F00958();

  v56 = v68;
  v57 = v69;
  v58 = v47;
  if ((*(v68 + 88))(v55, v69) == *MEMORY[0x1E69E93E8])
  {
    v59 = 0;
    v60 = 0;
    v69 = "[Error] Interval already ended";
  }

  else
  {
    (*(v56 + 8))(v55, v57);
    v69 = "stage=%{signpost.telemetry:string1,public}s sessionId=%{signpost.telemetry:string2,public}s %s";
    v60 = 2;
    v59 = 3;
  }

  v61 = swift_slowAlloc();
  v62 = swift_slowAlloc();
  v63 = 0;
  v78 = 0;
  v77 = v62;
  *v61 = v60;
  v61[1] = v59;
  v80 = (v61 + 2);
  while (v63 != 144)
  {
    v65 = *(inited + v63 + 32);
    v64 = *(inited + v63 + 40);

    v65(&v80, &v78, &v77);

    v63 += 16;
  }

  v66 = sub_1C4F008A8();
  _os_signpost_emit_with_name_impl(&dword_1C43F8000, v52, v75, v66, v49, v69, v61, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x1C6942830](v62, -1, -1);
  MEMORY[0x1C6942830](v61, -1, -1);

  (*(v72 + 8))(v58, v73);
  return (*(v70 + 8))(v76, v71);
}

uint64_t sub_1C44BDAC0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C44BDB08()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C44BDB5C()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C43FBE64();
  *v4 = v3;
  v6 = *(v5 + 184);
  v7 = *v1;
  sub_1C43FBDAC();
  *v8 = v7;
  *(v3 + 192) = v0;

  if (v0)
  {
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 136);

    sub_1C43FBDA0();

    return v13();
  }
}

uint64_t sub_1C44BDC7C()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;

  if (v0)
  {
    v7 = v2[7];
    v6 = v2[8];
    v8 = v2[6];

    sub_1C43FBDA0();

    return v9();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1C44BDDC8, 0, 0);
  }
}

uint64_t sub_1C44BDDC8()
{
  v30 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  (*(v0 + 80))(*(v0 + 48), *(v0 + 32), *(v0 + 16));
  v3 = sub_1C4F00968();
  v4 = sub_1C4F01CF8();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 96);
  if (v5)
  {
    v7 = *(v0 + 88);
    v9 = *(v0 + 48);
    v8 = *(v0 + 56);
    v10 = *(v0 + 40);
    v11 = *(v0 + 16);
    v26 = *(v0 + 80);
    v27 = *(v0 + 24);
    v12 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = v28;
    *v12 = 136315138;
    v26(v8, v9, v11);
    v6(v9, v11);
    v13 = *(v27 + 8);
    v14 = sub_1C4F02858();
    v16 = v15;
    v6(v8, v11);
    v17 = sub_1C441D828(v14, v16, &v29);

    *(v12 + 4) = v17;
    sub_1C4404638(&dword_1C43F8000, v18, v19, "PhaseFinish %s");
    sub_1C440962C(v28);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {
    v20 = *(v0 + 40) + 8;
    v6(*(v0 + 48), *(v0 + 16));
  }

  v22 = *(v0 + 56);
  v21 = *(v0 + 64);
  v23 = *(v0 + 48);

  sub_1C43FBDA0();

  return v24();
}

uint64_t sub_1C44BDFA0()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  sub_1C43FBDAC();
  *v4 = v3;
  *(v5 + 56) = v0;

  if (v0)
  {
    sub_1C43FBDA0();

    return v6();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1C44BEC04, 0, 0);
  }
}

void *sub_1C44BE0C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v79 = a3;
  v78 = a2;
  v77 = *(a2 - 8);
  v4 = *(v77 + 64);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v76 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v65 - v7;
  v9 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v65 - v14;
  v16 = sub_1C4EF9CD8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v65 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v65 - v25;
  v27 = v81;
  result = sub_1C446ABD0(0);
  if (!v27)
  {
    v70 = v15;
    v69 = v24;
    v74 = a1;
    v71 = 0;
    v68 = v13;
    v66 = v21;
    v67 = v8;
    v29 = v78;
    v72 = result;
    v81 = v16;
    v75 = v17;
    v73 = v26;
    sub_1C4EF9CC8();
    if (qword_1EDDF7B50 != -1)
    {
      swift_once();
    }

    v90 = xmmword_1EDE2D910;
    v91 = unk_1EDE2D920;
    v92 = qword_1EDE2D930;
    v30 = v79;
    v31 = *(v79 + 16);
    v31(v29, v79);
    v32 = v71;
    sub_1C446ABD0(0);
    if (v32)
    {
      v34 = v75;

      return (*(v34 + 8))(v73, v81);
    }

    else
    {
      v71 = v31;
      v33 = v70;
      sub_1C448E94C();

      v35 = v81;
      v36 = sub_1C44157D4(v33, 1, v81);
      v37 = v75;
      if (v36 == 1)
      {
        sub_1C4423A0C(v33, &unk_1EC0B84E0, qword_1C4F0D2D0);
        v38 = v29;
      }

      else
      {
        (*(v75 + 32))(v69, v33, v35);
        if (qword_1EDDF7B40 != -1)
        {
          swift_once();
        }

        v88[0] = xmmword_1EDE2D8E8;
        v88[1] = *&qword_1EDE2D8F8;
        v89 = qword_1EDE2D908;
        v39 = (v71)(v29, v30);
        v41 = v40;
        sub_1C446ABD0(0);
        sub_1C44BEC80(v88, v39, v41);

        v46 = v69;
        sub_1C4EF9CB8();
        v38 = v29;
        v47 = (v71)(v29, v30);
        sub_1C44BF3A4(v88, v47, v48);

        v37 = v75;
        (*(v75 + 8))(v46, v81);
      }

      if (qword_1EDDF7AE8 != -1)
      {
        swift_once();
      }

      v85 = xmmword_1EDE2D7D0;
      v86 = unk_1EDE2D7E0;
      v87 = qword_1EDE2D7F0;
      v71(v38, v30);
      sub_1C446ABD0(0);
      v42 = v68;
      sub_1C448E94C();

      v43 = v81;
      if (sub_1C44157D4(v42, 1, v81) == 1)
      {
        sub_1C4423A0C(v42, &unk_1EC0B84E0, qword_1C4F0D2D0);
        v44 = v77;
        v45 = v67;
      }

      else
      {
        (*(v37 + 32))(v66, v42, v43);
        sub_1C4EF9CB8();
        v44 = v77;
        v45 = v67;
        if (qword_1EDDF7AF8 != -1)
        {
          swift_once();
        }

        v83[0] = xmmword_1EDE2D7F8;
        v83[1] = *&qword_1EDE2D808;
        v84 = qword_1EDE2D818;
        v49 = (v71)(v38, v79);
        sub_1C44BF3A4(v83, v49, v50);

        (*(v37 + 8))(v66, v81);
      }

      if (qword_1EDDFD028 != -1)
      {
        swift_once();
      }

      v51 = sub_1C4F00978();
      sub_1C442B738(v51, qword_1EDE2DE10);
      v52 = *(v44 + 16);
      v52(v45, v80, v38);
      v53 = sub_1C4F00968();
      v54 = sub_1C4F01CF8();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v82 = v80;
        *v55 = 136315138;
        LODWORD(v78) = v54;
        v56 = v76;
        v52(v76, v45, v38);
        v57 = *(v44 + 8);
        v57(v45, v38);
        v58 = *(v79 + 8);
        v59 = v53;
        v60 = sub_1C4F02858();
        v62 = v61;
        v57(v56, v38);
        v63 = sub_1C441D828(v60, v62, &v82);

        *(v55 + 4) = v63;
        _os_log_impl(&dword_1C43F8000, v59, v78, "PhaseMetricsFinish %s", v55, 0xCu);
        v64 = v80;
        sub_1C440962C(v80);
        MEMORY[0x1C6942830](v64, -1, -1);
        MEMORY[0x1C6942830](v55, -1, -1);
      }

      else
      {
        (*(v44 + 8))(v45, v38);
      }

      return (*(v75 + 8))(v73, v81);
    }
  }

  return result;
}

uint64_t sub_1C44BEC04()
{
  v1 = v0[7];
  v2 = v0[5];
  sub_1C44BE0C8(v0[2], v0[3], v0[4]);
  sub_1C43FBDA0();

  return v3();
}

uint64_t sub_1C44BEC80(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C441CBA4();
    MEMORY[0x1C6940010](*a1, a1[1]);
    v5 = sub_1C44BED60();
    if (!v3)
    {
      v9 = v5;

      return v9;
    }
  }

  else
  {
    v6 = *a1;
    v7 = a1[1];
    v8 = sub_1C44BED60();
    if (!v3)
    {
      return v8;
    }
  }

  return 0;
}

uint64_t sub_1C44BEDF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = a3;
  v33 = a2;
  v32[1] = a1;
  v4 = sub_1C456902C(&qword_1EC0B8EB0, &unk_1C4F0E910);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v32 - v10;
  if (qword_1EDDFE0F8 != -1)
  {
    swift_once();
  }

  v12 = sub_1C4EFBD38();
  v13 = sub_1C442B738(v12, qword_1EDE2E068);
  v39 = v12;
  v40 = MEMORY[0x1E69A0050];
  v14 = sub_1C4422F90(v38);
  v15 = *(*(v12 - 8) + 16);
  v15(v14, v13, v12);
  v32[0] = v3;
  v16 = *(v3 + 16);
  v17 = *(v3 + 24);
  v36 = MEMORY[0x1E69E6158];
  v37 = MEMORY[0x1E69A0130];
  v34 = v16;
  v35 = v17;
  v18 = sub_1C4EFB298();
  v42 = v18;
  v43 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v41);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C4420C3C(&v34, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v38);
  sub_1C446B728();
  sub_1C4EFAE28();
  sub_1C440962C(v41);
  if (qword_1EDDFE100 != -1)
  {
    swift_once();
  }

  v19 = sub_1C442B738(v12, qword_1EDE2DF28);
  v39 = v12;
  v40 = MEMORY[0x1E69A0050];
  v20 = sub_1C4422F90(v38);
  v15(v20, v19, v12);
  v36 = MEMORY[0x1E69E6158];
  v37 = MEMORY[0x1E69A0130];
  v34 = v33;
  v35 = v50;
  v42 = v18;
  v43 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v41);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C4420C3C(&v34, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v38);
  sub_1C4401CBC(&qword_1EDDFE858, &qword_1EC0B8EB0, &unk_1C4F0E910);
  sub_1C4EFB438();
  v21 = *(v5 + 8);
  v21(v9, v4);
  sub_1C440962C(v41);
  sub_1C4401CBC(&unk_1EDDFE860, &qword_1EC0B8EB0, &unk_1C4F0E910);
  sub_1C446B794();
  v22 = v32[2];
  sub_1C4EFAFF8();
  v21(v11, v4);
  if (v22)
  {
    return v21;
  }

  v23 = v45;
  if (!v45)
  {
    return 0;
  }

  v24 = v44;
  v25 = v46;
  v26 = v47;
  v27 = v48;
  v28 = v49;
  v29 = *(v32[0] + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_decoder);
  sub_1C456902C(&qword_1EC0B9228, &unk_1C4F3DD70);
  sub_1C45A2B10();
  sub_1C4EF9698();
  if (*(v44 + 16))
  {
    v30 = v25;
    v21 = *(v44 + 32);
    sub_1C4470E30(v24, v23, v30, v26, v27, v28);

    return v21;
  }

  v44 = 0;
  v45 = 0xE000000000000000;
  sub_1C4F02248();

  v44 = 0xD00000000000002FLL;
  v45 = 0x80000001C4F8A7E0;
  MEMORY[0x1C6940010](v33, v50);
  result = sub_1C4F024A8();
  __break(1u);
  return result;
}

uint64_t sub_1C44BF36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1C44BEDF8(a1, a3, a4);
  if (v4)
  {
    return v6;
  }

  return result;
}

uint64_t sub_1C44BF3A4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[3];
  if (v4)
  {
    v5 = a1[4];

    v6 = sub_1C4433DE4();
    v4(v6, a1);
    return sub_1C44239FC(v4);
  }

  else
  {
    v9 = *a1;
    v8 = a1[1];
    if (a3)
    {
      sub_1C444B2B4();
      sub_1C441CBA4();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      MEMORY[0x1C6940010](v9, v8);
    }

    else
    {
      v10 = a1[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    sub_1C441C09C();
    sub_1C44BF660();
  }
}

uint64_t sub_1C44BF4E4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](46, 0xE100000000000000);
    MEMORY[0x1C6940010](*a2, a2[1]);
    sub_1C44BF660();
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v6 = sub_1C4F00978();
    sub_1C442B738(v6, qword_1EDDFECB8);
    v7 = sub_1C4F00968();
    v8 = sub_1C4F01CD8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1C43F8000, v7, v8, "<PipelineStatus> Phase specific status should always have a keyPrefix", v9, 2u);
      MEMORY[0x1C6942830](v9, -1, -1);
    }

    sub_1C4AD3B98();
    swift_allocError();
    *v10 = 0;
    return swift_willThrow();
  }
}

void sub_1C44BF660()
{
  sub_1C440BDEC();
  v4 = v3;
  v5 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_encoder);
  sub_1C456902C(&qword_1EC0B87D0, &qword_1C4F0DBC0);
  sub_1C4418B14();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C4F0D130;
  *(v6 + 32) = v4;
  sub_1C456902C(&qword_1EC0B9228, &unk_1C4F3DD70);
  sub_1C496D4C4();
  sub_1C4425D04();
  sub_1C4410EA4();

  if (!v2)
  {
    sub_1C4409E00(*(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_db));
    MEMORY[0x1EEE9AC00](v7);
    sub_1C43FDA14();
    sub_1C4435934();
    v8 = sub_1C4404044();
    sub_1C4434000(v8, v9);
  }

  sub_1C440EE0C();
}

uint64_t sub_1C44BF784()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *(v1 + 32);
  v3 = *v0;
  sub_1C43FBDAC();
  *v4 = v3;

  sub_1C43FBDA0();

  return v5();
}

uint64_t sub_1C44BF864()
{
  *(v1 + 1112) = v0;
  if (v0)
  {
    return MEMORY[0x1EEE6DEB0](v1 + 16);
  }

  else
  {
    return sub_1C43FFE30(sub_1C44BF89C);
  }
}

uint64_t sub_1C44BF89C()
{
  sub_1C4404D98();
  v2 = v0[136];
  v0[140] = v2 + 1;
  if (__OFADD__(v2, 1))
  {
    __break(1u);
  }

  else
  {
    v1 = v0 + 97;
    if (qword_1EDDF7BA0 == -1)
    {
      goto LABEL_3;
    }
  }

  sub_1C442539C();
LABEL_3:
  v3 = v0[132];
  v4 = v0[131];
  v5 = v0[129];
  v6 = *algn_1EDE2DA10;
  *v1 = xmmword_1EDE2DA00;
  *(v1 + 1) = v6;
  v1[4] = qword_1EDE2DA20;
  sub_1C440B110();
  sub_1C443113C(v5, v7);
  v8 = *(v5 + *(v3 + 20));
  v0[127] = 0xD000000000000010;
  v0[128] = 0x80000001C4FAAFC0;
  v9 = 0xE700000000000000;
  v10 = 0x6E776F6E6B6E75;
  switch(v8)
  {
    case 1:
      v9 = 0xE400000000000000;
      v10 = 1819047270;
      break;
    case 2:
      v9 = 0xE500000000000000;
      v10 = 0x61746C6564;
      break;
    case 3:
      v9 = 0xEA0000000000676ELL;
      v10 = 0x69686374614D6F74;
      break;
    default:
      break;
  }

  v11 = v0[139];
  v12 = v0[131];
  MEMORY[0x1C6940010](v10, v9);

  MEMORY[0x1C6940010](0x746E65727275632ELL, 0xE800000000000000);
  v13 = v0[127];
  v14 = v0[128];
  v15 = type metadata accessor for KeyValueStore();
  sub_1C43FD23C(v15);
  swift_allocObject();
  KeyValueStore.init(config:domain:)(v12, v13, v14);
  v0[141] = v11;

  return MEMORY[0x1EEE6DEB0](v0 + 2);
}

uint64_t sub_1C44BFB00()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  sub_1C440962C((v0 + 856));
  v1 = *(v0 + 1136);
  v2 = *(v0 + 1104);
  v3 = *(v0 + 1096);
  *(v0 + 1088) = *(v0 + 1120);
  v4 = v3[2];
  if (!v4)
  {
    v10 = *(v0 + 1080);
    v11 = *(v0 + 1048);
    sub_1C447F9FC();

    sub_1C43FC1B0();
    goto LABEL_8;
  }

  sub_1C448BD48((v3 + 4), v0 + 856);
  if (!swift_isUniquelyReferenced_nonNull_native() || (v4 - 1) > v3[3] >> 1)
  {
    sub_1C4401E28();
    sub_1C448B40C();
    v3 = v5;
  }

  *(v0 + 1096) = v3;
  v6 = *(v0 + 1040);
  sub_1C440962C(v3 + 4);
  v7 = v3[2];
  memmove(v3 + 4, v3 + 9, 40 * v7 - 40);
  v3[2] = v7 - 1;
  *v6 = v3;
  sub_1C4F01968();
  if (v1)
  {
    sub_1C440962C((v0 + 856));
    sub_1C447F9FC();
    v8 = *(v0 + 1080);
    v9 = *(v0 + 1048);

    sub_1C43FBDA0();
LABEL_8:
    sub_1C4426C44();

    return v13(v12, v13, v14, v15, v16, v17, v18, v19);
  }

  v21 = *(v0 + 1080);
  v22 = *(v0 + 1072);
  v23 = *(v0 + 1064);
  v24 = *(v0 + 1032);
  sub_1C448BD48(v0 + 856, v0 + 936);
  sub_1C44346A0();
  sub_1C443113C(v24, v21);
  v25 = (*(v23 + 80) + 56) & ~*(v23 + 80);
  v26 = swift_allocObject();
  *(v0 + 1104) = v26;
  sub_1C441D670((v0 + 936), v26 + 16);
  sub_1C4469200();
  sub_1C44760B0(v21, v26 + v25);
  sub_1C44239FC(&unk_1C4F4E0D8);
  v27 = swift_asyncLet_begin();
  sub_1C4436600(v27);
  sub_1C4426C44();

  return MEMORY[0x1EEE6DEC0](v28, v29, v30, v31, v32, v33, v34, v35);
}

uint64_t PipelinePhase.deinit()
{
  sub_1C442D1D0();
  sub_1C447EAE0(v0 + v1, v2);
  sub_1C447EAE0(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_stores, type metadata accessor for PhaseStores);
  sub_1C440962C((v0 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_sourceIngestor));
  sub_1C443530C();
  sub_1C447EAE0(v0 + v3, v4);
  sub_1C4430084();
  sub_1C447EAE0(v0 + v5, v6);
  return v0;
}

uint64_t sub_1C44BFD9C()
{
  v0 = *PipelinePhase.deinit();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t sub_1C44BFDF0()
{
  result = qword_1EDDF0610;
  if (!qword_1EDDF0610)
  {
    sub_1C4572308(&qword_1EC0B9170, &unk_1C4F0EC70);
    sub_1C45A2840();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF0610);
  }

  return result;
}

uint64_t sub_1C44BFF20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_1C4EFD548();
  v6 = sub_1C43FBCE0(v5);
  v8 = *(v7 + 16);

  return v8(a2, v2 + v4, v6);
}

uint64_t sub_1C44BFF8C(uint64_t a1)
{
  v1 = *(a1 + 20);
  sub_1C43FED58();
  return sub_1C448C9D8();
}

void sub_1C44BFFBC(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
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
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        return;
      case 2:
        *&a1[v8] = v14;
        return;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        return;
      default:
        return;
    }
  }

  switch(v12)
  {
    case 1:
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_24;
    case 2:
      *&a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_24;
    case 3:
LABEL_37:
      __break(1u);
      JUMPOUT(0x1C44C01C0);
    case 4:
      *&a1[v8] = 0;
      goto LABEL_23;
    default:
LABEL_23:
      if (a2)
      {
LABEL_24:

        sub_1C440BAA8(a1, a2, v7, v6);
      }

      return;
  }
}

uint64_t sub_1C44C01E8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return sub_1C44157D4(a1, v5, v4);
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
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return sub_1C44157D4(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
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

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

uint64_t sub_1C44C0334()
{
  sub_1C44A1E40();
  v3 = type metadata accessor for Source();
  v4 = sub_1C43FBD18(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C442599C();
  sub_1C4459AF0();
  sub_1C4416710();
  v7 = type metadata accessor for CNContactFullSourceIngestor(0);
  sub_1C4471CA0(v7);
  sub_1C456902C(&qword_1EC0BA5A8, &unk_1C4F14300);
  v8 = sub_1C4485A60();
  MEMORY[0x1C6940010](v8);

  sub_1C441DC78();
  sub_1C44A1BE0(v1[10]);
  sub_1C4475BB0();

  sub_1C44364AC();
  v9 = v1[5];
  sub_1C441925C();
  sub_1C44F090C(v10);
  MEMORY[0x1C6940010](*v2, v2[1]);
  sub_1C4411930();
  sub_1C447E868(v2, v11);
  sub_1C44690B8();
  v12 = v0 + v1[9];
  sub_1C4EFD3D8();
  sub_1C4475BB0();

  sub_1C44AE8A4();
  sub_1C4656BE0();
  return sub_1C43FE658();
}

uint64_t sub_1C44C0438()
{
  v2 = *(v0 + 28);

  return sub_1C4EFD548();
}

__n128 sub_1C44C0450()
{
  v2 = *v0;
  v3 = v0[1];
  return *(v0 + 28);
}

uint64_t sub_1C44C0474()
{
  *(v3 + *(v2 + 40)) = v1;
  *(v3 + *(v2 + 44)) = *(v5 - 128);
  v7 = *(v4 + *(v0 + 28));
}

uint64_t sub_1C44C04A4()
{

  return sub_1C4EFBD48();
}

uint64_t sub_1C44C051C@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{

  return sub_1C448D610(v4 + a2, v3 + v2, a1);
}

uint64_t sub_1C44C0544()
{
  sub_1C43FBCD4();
  v0 = sub_1C440A014(dword_1C4F53110);
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v10 = sub_1C441A538(v1, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10();
}

uint64_t sub_1C44C05C4()
{
  sub_1C43FCF70();
  sub_1C43FDE54();
  v0 = type metadata accessor for PhaseStores();
  v1 = sub_1C4407B44(v0);
  v2 = type metadata accessor for CNContactFullSourceIngestor(v1);
  sub_1C44124C8(v2, v3, v4, v5, v6, v7, v8, v9, v14, v15, SWORD2(v15), SBYTE6(v15), SHIBYTE(v15));
  v10 = swift_task_alloc();
  v11 = sub_1C4409044(v10);
  *v11 = v12;
  sub_1C44246F8(v11);

  return sub_1C44C0680();
}

uint64_t sub_1C44C0680()
{
  sub_1C43FBCD4();
  v18 = *MEMORY[0x1E69E9840];
  v1[16] = v0;
  v2 = type metadata accessor for CNContactFullSourceIngestor(0);
  v1[17] = v2;
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  v1[18] = sub_1C43FBE7C();
  v5 = sub_1C4EFCCC8();
  v1[19] = v5;
  sub_1C43FCF7C(v5);
  v1[20] = v6;
  v8 = *(v7 + 64);
  v1[21] = sub_1C43FBE7C();
  v9 = sub_1C456902C(&unk_1EC0BABB0, &qword_1C4F16ED0);
  sub_1C43FBD18(v9);
  v11 = *(v10 + 64);
  v1[22] = sub_1C43FBE7C();
  v12 = sub_1C4EF98F8();
  v1[23] = v12;
  sub_1C43FCF7C(v12);
  v1[24] = v13;
  v15 = *(v14 + 64) + 15;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v16 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1C44C0808, 0, 0);
}

uint64_t sub_1C44C0808()
{
  v83 = v0;
  v82[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 128);
  sub_1C44C0EFC();
  v2 = v0 + 16;
  v3 = (v0 + 96);
  v4 = (v0 + 104);
  v6 = *(v0 + 128);
  v5 = *(v0 + 136);
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  v7 = *(v6 + *(v5 + 28));
  v8 = [objc_allocWithZone(MEMORY[0x1E695CE90]) initWithContactStore_];
  *(v0 + 80) = sub_1C4461BB8(0, &qword_1EDDF05A8, 0x1E695CE90);
  *(v0 + 88) = &off_1F43E6920;
  *(v0 + 56) = v8;
  sub_1C468282C();
  v9 = [objc_opt_self() service];
  *(v0 + 112) = 0;
  v10 = [v9 requestVUIndexURLForSystemPhotosLibraryWithError_];

  v11 = *(v0 + 112);
  if (!v10)
  {
    v21 = *(v0 + 128);
    v22 = v11;
    sub_1C4EF97A8();

    swift_willThrow();
LABEL_6:
    sub_1C4420C3C(v2, &unk_1EC0BABC0, qword_1C4F16ED8);
    sub_1C44C600C(v21, v4, v3);
    v39 = *(v0 + 200);
    v38 = *(v0 + 208);
    v41 = *(v0 + 168);
    v40 = *(v0 + 176);
    v42 = *(v0 + 144);

    sub_1C43FBDA0();
    v44 = *MEMORY[0x1E69E9840];
    goto LABEL_7;
  }

  v77 = v7;
  v12 = *(v0 + 208);
  v13 = *(v0 + 184);
  v14 = *(v0 + 192);
  v16 = *(v0 + 168);
  v15 = *(v0 + 176);
  v17 = *(v0 + 160);
  v79 = *(v0 + 152);
  sub_1C4EF98C8();
  v18 = v11;

  (*(v14 + 16))(v15, v12, v13);
  sub_1C440BAA8(v15, 0, 1, v13);
  (*(v17 + 104))(v16, *MEMORY[0x1E69E0610], v79);
  v19 = sub_1C4EFCD18();
  sub_1C44099C4(v19);
  v20 = sub_1C4EFCCA8();
  v23 = (v0 + 120);
  v24 = *(v0 + 200);
  v25 = v20;
  v26 = *(v0 + 128);
  sub_1C4461BB8(0, &qword_1EDDFCE78, 0x1E69789A8);
  v27 = [objc_opt_self() systemPhotoLibraryURL];
  sub_1C4EF98C8();

  v28 = sub_1C44B90E0(v24);
  *(v0 + 216) = 0;
  *(v0 + 120) = 0;
  v29 = *(v26 + *(type metadata accessor for PhaseStores() + 24));
  v30 = swift_task_alloc();
  v30[2] = v26;
  v30[3] = v0 + 120;
  v30[4] = v0 + 216;
  v30[5] = v0 + 96;
  v30[6] = v25;
  v30[7] = v28;
  v30[8] = v0 + 16;
  v30[9] = v0 + 104;
  GraphStore.tripleInsertingTransaction(transactionBody:)(sub_1C44C92A8, v30);

  v31 = *v23;
  if (*v23)
  {
    v32 = v28;
    v33 = *(v0 + 208);
    v34 = *(v0 + 184);
    v35 = *(v0 + 192);
    v21 = *(v0 + 128);
    v36 = *v23;
    swift_willThrow();
    v37 = v31;

    (*(v35 + 8))(v33, v34);
    v3 = (v0 + 96);

    v2 = v0 + 16;
    v4 = (v0 + 104);
    goto LABEL_6;
  }

  if ((*(v0 + 216) & 1) != 0 || (v46 = [v77 currentHistoryToken]) == 0)
  {
    v81 = v28;
    if (qword_1EDDFD028 != -1)
    {
      sub_1C4419274();
      swift_once();
    }

    v59 = *(v0 + 144);
    v60 = *(v0 + 128);
    v61 = sub_1C4F00978();
    sub_1C442B738(v61, qword_1EDE2DE10);
    sub_1C43FBC98();
    sub_1C448C9D8();
    v62 = sub_1C4F00968();
    v63 = sub_1C4F01CD8();
    v64 = sub_1C4417F98(v63);
    v65 = *(v0 + 144);
    if (v64)
    {
      v66 = sub_1C43FD084();
      v67 = sub_1C43FFD34();
      v82[0] = v67;
      *v66 = 136315138;
      v68 = sub_1C44C0334();
      v70 = v69;
      sub_1C440CB3C();
      sub_1C441D828(v68, v70, v82);
      sub_1C4426A94();

      *(v66 + 4) = v65;
      _os_log_impl(&dword_1C43F8000, v62, v63, "Unable to commit full pipeline for : %s", v66, 0xCu);
      sub_1C440962C(v67);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {

      sub_1C440CB3C();
    }

    v2 = v0 + 16;
    v71 = *(v0 + 208);
    v72 = *(v0 + 184);
    v73 = *(v0 + 192);
    v21 = *(v0 + 128);
    sub_1C465B58C();
    sub_1C441C114();
    swift_allocError();
    *v74 = 1;
    swift_willThrow();

    (*(v73 + 8))(v71, v72);
    v3 = (v0 + 96);
    v4 = (v0 + 104);
    goto LABEL_6;
  }

  v47 = v46;
  v48 = *(v0 + 208);
  v49 = *(v0 + 184);
  v50 = *(v0 + 192);
  v75 = *(v0 + 200);
  v76 = *(v0 + 176);
  v78 = *(v0 + 168);
  v80 = *(v0 + 144);
  v51 = *(v0 + 128);
  sub_1C4EF9A68();

  v52 = sub_1C4404DC8();
  sub_1C44344B8(v52, v53);
  sub_1C4404DC8();
  sub_1C44C55E4();

  v54 = sub_1C4404DC8();
  sub_1C4434000(v54, v55);
  v56 = sub_1C4404DC8();
  sub_1C4434000(v56, v57);
  (*(v50 + 8))(v48, v49);
  sub_1C4420C3C(v0 + 16, &unk_1EC0BABC0, qword_1C4F16ED8);
  sub_1C44C600C(v51, (v0 + 104), (v0 + 96));

  sub_1C43FBDA0();
  v58 = *MEMORY[0x1E69E9840];
LABEL_7:

  return v43();
}

void sub_1C44C0EFC()
{
  v0 = sub_1C4F01108();
  v1 = sub_1C44C1028(v0);

  if (!v1)
  {
    if (qword_1EDDFD028 != -1)
    {
      sub_1C4419274();
      swift_once();
    }

    v2 = sub_1C4F00978();
    sub_1C442B738(v2, qword_1EDE2DE10);
    v3 = sub_1C4F00968();
    v4 = sub_1C4F01CF8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1C43F8000, v3, v4, "Siri Toggle: Pipeline is blocked from sourcing CNContacts", v5, 2u);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    sub_1C46828B4();
    sub_1C441C114();
    swift_allocError();
    *v6 = 2;
    swift_willThrow();
  }
}

uint64_t sub_1C44C1028(void *a1)
{
  v1 = a1;
  v2 = CFPreferencesCopyAppValue(@"SiriCanLearnFromAppBlacklist", @"com.apple.suggestions");
  v5 = objc_msgSend_containsObject_(v2, v3, v1, v4);

  return v5 ^ 1u;
}

uint64_t sub_1C44C1084(char a1)
{
  result = 0x7463656A627573;
  switch(a1)
  {
    case 1:
      result = sub_1C441DD30();
      break;
    case 2:
      result = sub_1C440C564();
      break;
    case 3:
      result = sub_1C43FD894(21);
      break;
    case 4:
      result = sub_1C44017E8();
      break;
    case 5:
      result = sub_1C4461FC0();
      break;
    case 6:
      result = 0x6449656372756F73;
      break;
    case 7:
      result = 0x6D617473656D6974;
      break;
    case 8:
      result = sub_1C445A978();
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C44C1190()
{
  result = qword_1EDDF8A00[0];
  if (!qword_1EDDF8A00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDF8A00);
  }

  return result;
}

uint64_t sub_1C44C11E4()
{
}

uint64_t sub_1C44C1208()
{
  result = v0;
  v3 = *(v1 - 128);
  v5 = *(v1 - 208);
  v4 = *(v1 - 200);
  return result;
}

uint64_t sub_1C44C1238()
{
  v2 = *(v0 - 88);
}

uint64_t sub_1C44C1250()
{
  v2 = v0[174];
  v3 = v0[136];
  v4 = v0[118];

  return swift_setDeallocating();
}

uint64_t sub_1C44C1270()
{
  v2 = *(v0 - 904);
  v3 = *(v0 - 920);

  return sub_1C44239FC(v2);
}

uint64_t sub_1C44C12B8(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 1048);
  return result;
}

uint64_t sub_1C44C12D4()
{

  return sub_1C4F02AF8();
}

uint64_t sub_1C44C12F8(uint64_t a1, unint64_t a2)
{

  return sub_1C441D828(a1, a2, (v2 - 128));
}

uint64_t sub_1C44C135C()
{

  return sub_1C448D5BC();
}

void sub_1C44C1374(void *a1@<X8>)
{
  *a1 = *(v1 - 256);
  a1[1] = v2;
  v8 = (v6 + v3[10]);
  *v8 = v4;
  v8[1] = v5;
  *(v6 + v3[11]) = v7;
  v9 = v3[12];
}

uint64_t sub_1C44C13D0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = a1 + 32;
  v4 = v2 + 1;
  do
  {
    if (!--v4)
    {
      break;
    }

    v5 = result + 40;
    sub_1C442E860(result, v8);
    v6 = v8[4];
    sub_1C4409678(v8, v8[3]);
    v7 = *(v6 + 16);
    sub_1C4EFB6A8();
    sub_1C440962C(v8);
    result = v5;
  }

  while (!v1);
  return result;
}

uint64_t sub_1C44C149C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4490F60(&qword_1EDDF8D88, type metadata accessor for EntityTriple);

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

void EntityTriple.encode(to:)()
{
  sub_1C43FE96C();
  sub_1C44043C4();
  v3 = sub_1C456902C(&qword_1EC0BE0B8, &qword_1C4F325F0);
  sub_1C4403200(v3);
  v5 = *(v4 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FE61C();
  sub_1C43FD870();
  sub_1C44C17FC();
  sub_1C440F61C();
  sub_1C441D6E4();
  sub_1C4EFF0C8();
  sub_1C4419854();
  sub_1C4490F60(v7, v8);
  sub_1C43FE6CC();
  sub_1C43FEF68();
  sub_1C4F027E8();
  if (!v0)
  {
    v9 = type metadata accessor for EntityTriple(0);
    sub_1C4404F64(v9);
    sub_1C4EFEEF8();
    sub_1C442CB58();
    sub_1C4490F60(v10, v11);
    sub_1C441AED4();
    sub_1C44032B0();
    sub_1C4F027E8();
    v24 = v2;
    v12 = v2[6];
    sub_1C4401670();
    sub_1C4EFF8A8();
    sub_1C4406FE8();
    sub_1C4490F60(v13, v14);
    sub_1C4434138();
    sub_1C43FEF68();
    sub_1C4F027E8();
    v15 = v24[7];
    sub_1C44032B0();
    sub_1C4F027E8();
    sub_1C43FF10C();
    sub_1C43FBF44();
    sub_1C4F02798();
    sub_1C44A1D74();
    sub_1C441FBB8();
    sub_1C4490F60(v16, v17);
    sub_1C4434138();
    sub_1C43FEF68();
    sub_1C4F027E8();
    v18 = (v1 + v24[10]);
    v19 = *v18;
    v20 = v18[1];
    sub_1C43FBF44();
    sub_1C4F02798();
    v21 = *(v1 + v24[11]);
    sub_1C449DAB8();
    sub_1C442FDD8();
    sub_1C4F027B8();
    sub_1C443E19C();
    sub_1C43FBF44();
    sub_1C4F027E8();
  }

  v22 = sub_1C440231C();
  v23(v22);
  sub_1C44103B4();
  sub_1C43FBC80();
}

unint64_t sub_1C44C17FC()
{
  result = qword_1EDDF8DF8;
  if (!qword_1EDDF8DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8DF8);
  }

  return result;
}

void sub_1C44C1850(void *a1@<X0>, void (**a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, unsigned __int8 a11, void (*a12)(void), uint64_t a13, uint64_t a14, uint64_t *a15)
{
  v542 = a8;
  v551 = a7;
  v550 = a6;
  v541 = a5;
  v548 = a4;
  v545 = a3;
  v558 = a2;
  v533 = a9;
  v552 = a15;
  v549 = sub_1C456902C(&qword_1EC0BAD30, &unk_1C4F0E170);
  v536 = *(v549 - 8);
  v16 = *(v536 + 64);
  v17 = MEMORY[0x1EEE9AC00](v549);
  v554 = &v527 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v540 = (&v527 - v19);
  v20 = sub_1C456902C(&qword_1EC0BAD38, &unk_1C4F70B40);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v535 = &v527 - v22;
  v23 = sub_1C456902C(&qword_1EC0BAD40, &qword_1C4F175A0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v569 = &v527 - v25;
  v570 = type metadata accessor for CNContactStructs.Organization(0);
  v26 = *(*(v570 - 8) + 64);
  MEMORY[0x1EEE9AC00](v570);
  v537 = &v527 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v565 = type metadata accessor for CNContactStructs.EmploymentRelationshipType(0);
  v28 = *(*(v565 - 8) + 64);
  MEMORY[0x1EEE9AC00](v565);
  v538 = (&v527 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v557 = sub_1C4EF9648();
  v547 = *(v557 - 8);
  v30 = *(v547 + 64);
  MEMORY[0x1EEE9AC00](v557);
  v560 = &v527 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1C456902C(&qword_1EC0BAD48, &qword_1C4F175A8);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x1EEE9AC00](v32 - 8);
  v546 = &v527 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v564 = &v527 - v36;
  v37 = type metadata accessor for CNContactStructs.LocationRelationshipType(0);
  v566 = *(v37 - 8);
  v38 = *(v566 + 64);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v568 = &v527 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v567 = type metadata accessor for CNContactStructs.IdentifierRelationshipType(0);
  v544 = *(v567 - 8);
  v40 = *(v544 + 64);
  v41 = MEMORY[0x1EEE9AC00](v567);
  v534 = &v527 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x1EEE9AC00](v41);
  v571 = &v527 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v539 = &v527 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v556 = (&v527 - v48);
  MEMORY[0x1EEE9AC00](v47);
  v553 = &v527 - v49;
  v50 = sub_1C456902C(&unk_1EC0BAD50, &unk_1C4F168E0);
  v51 = *(*(v50 - 8) + 64);
  v52 = MEMORY[0x1EEE9AC00](v50 - 8);
  v562 = &v527 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x1EEE9AC00](v52);
  v543 = &v527 - v55;
  v56 = MEMORY[0x1EEE9AC00](v54);
  v58 = &v527 - v57;
  v59 = MEMORY[0x1EEE9AC00](v56);
  v61 = &v527 - v60;
  v62 = MEMORY[0x1EEE9AC00](v59);
  v64 = &v527 - v63;
  v65 = MEMORY[0x1EEE9AC00](v62);
  v67 = &v527 - v66;
  v68 = MEMORY[0x1EEE9AC00](v65);
  v70 = &v527 - v69;
  MEMORY[0x1EEE9AC00](v68);
  v72 = &v527 - v71;
  v73 = type metadata accessor for CNContactStructs.Person(0);
  v74 = *(*(v73 - 8) + 64);
  MEMORY[0x1EEE9AC00](v73);
  v76 = &v527 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v579 = MEMORY[0x1E69E7CC0];
  v77 = sub_1C44CB92C();
  v78 = v563;
  sub_1C44CBA5C(v77, v79, v80, v81, v82, v83, v84, v85, v527, v528, v529, v530, v531, v532, v533, v534, v535, v536, v537, v538);
  if (v78)
  {
    *v552 = v78;
    return;
  }

  v527 = v70;
  v528 = v72;
  v529 = v64;
  v530 = v67;
  v531 = v58;
  v563 = v61;
  v86 = v543;
  v532 = 0;
  v559 = v73;
  v561 = v76;
  v555 = a1;
  v87 = [v558 stringFromContact_];
  if (v87)
  {
    v88 = v87;
    v89 = sub_1C4F01138();
    v91 = v90;
  }

  else
  {
    v89 = 0;
    v91 = 0;
  }

  v92 = v559;
  v93 = v570;
  v94 = v86;
  v95 = v561;
  v96 = &v561[v559[51]];
  v97 = v96[1];

  *v96 = v89;
  v96[1] = v91;
  v98 = v555;
  v99 = [v555 givenName];
  v100 = sub_1C4F01138();
  v102 = v101;

  v103 = (v95 + v92[9]);
  v104 = v103[1];

  *v103 = v100;
  v103[1] = v102;
  v105 = [v98 phoneticGivenName];
  v106 = sub_1C4F01138();
  v108 = v107;

  v109 = (v95 + v92[53]);
  v110 = v109[1];

  *v109 = v106;
  v109[1] = v108;
  v111 = [v98 middleName];
  v112 = sub_1C4F01138();
  v114 = v113;

  v115 = (v95 + v92[15]);
  v116 = v115[1];

  *v115 = v112;
  v115[1] = v114;
  v117 = [v98 phoneticMiddleName];
  v118 = sub_1C4F01138();
  v120 = v119;

  v121 = (v95 + v92[55]);
  v122 = v121[1];

  *v121 = v118;
  v121[1] = v120;
  v123 = [v98 familyName];
  v124 = sub_1C4F01138();
  v126 = v125;

  v127 = (v95 + v92[17]);
  v128 = v127[1];

  *v127 = v124;
  v127[1] = v126;
  v129 = [v98 phoneticFamilyName];
  v130 = sub_1C4F01138();
  v132 = v131;

  v133 = (v95 + v92[57]);
  v134 = v133[1];

  *v133 = v130;
  v133[1] = v132;
  v135 = [v98 previousFamilyName];
  v136 = sub_1C4F01138();
  v138 = v137;

  v139 = (v95 + v92[43]);
  v140 = v139[1];

  *v139 = v136;
  v139[1] = v138;
  v141 = [v98 nickname];
  v142 = sub_1C4F01138();
  v144 = v143;

  v145 = (v95 + v92[21]);
  v146 = v145[1];

  *v145 = v142;
  v145[1] = v144;
  v147 = [v98 namePrefix];
  v148 = sub_1C4F01138();
  v150 = v149;

  v151 = (v95 + v92[13]);
  v152 = v151[1];

  *v151 = v148;
  v151[1] = v150;
  v153 = [v98 nameSuffix];
  v154 = sub_1C4F01138();
  v156 = v155;

  v157 = (v95 + v92[19]);
  v158 = v157[1];

  *v157 = v154;
  v157[1] = v156;
  v159 = [v98 birthday];
  if (v159)
  {
    v160 = v159;
    v161 = v527;
    sub_1C4EF9598();

    v162 = 0;
    v163 = v557;
    v164 = v547;
    v165 = v528;
  }

  else
  {
    v162 = 1;
    v163 = v557;
    v164 = v547;
    v165 = v528;
    v161 = v527;
  }

  sub_1C440BAA8(v161, v162, 1, v163);
  sub_1C44CDA7C();
  if (sub_1C44157D4(v165, 1, v163) == 1)
  {
    sub_1C4420C3C(v165, &unk_1EC0BAD50, &unk_1C4F168E0);
    v166 = 0;
    v167 = 0;
  }

  else
  {
    v166 = sub_1C44CDAD4();
    v167 = v168;
    (*(v164 + 8))(v165, v163);
  }

  v169 = v567;
  v170 = &v561[v559[25]];
  v171 = v170[1];

  *v170 = v166;
  v170[1] = v167;
  v172 = [v555 birthday];
  if (v172)
  {
    v173 = v172;
    v174 = v529;
    sub_1C4EF9598();

    v175 = 0;
    v176 = v530;
  }

  else
  {
    v175 = 1;
    v176 = v530;
    v174 = v529;
  }

  sub_1C440BAA8(v174, v175, 1, v163);
  sub_1C44CDA7C();
  v177 = sub_1C44157D4(v176, 1, v163);
  v178 = v163;
  v179 = v561;
  if (v177 == 1)
  {
    sub_1C4420C3C(v176, &unk_1EC0BAD50, &unk_1C4F168E0);
    v180 = 0;
    v181 = 0;
  }

  else
  {
    v180 = sub_1C44CE310();
    v181 = v182;
    (*(v164 + 8))(v176, v178);
  }

  v183 = (v179 + v559[27]);
  v184 = v183[1];

  *v183 = v180;
  v183[1] = v181;
  v185 = [v555 nonGregorianBirthday];
  if (v185)
  {
    v186 = v185;
    v187 = v531;
    sub_1C4EF9598();

    v188 = 0;
    v189 = v557;
    v190 = v563;
  }

  else
  {
    v188 = 1;
    v189 = v557;
    v190 = v563;
    v187 = v531;
  }

  sub_1C440BAA8(v187, v188, 1, v189);
  sub_1C44CDA7C();
  if (sub_1C44157D4(v190, 1, v189) == 1)
  {
    sub_1C4420C3C(v190, &unk_1EC0BAD50, &unk_1C4F168E0);
    v191 = 0;
    v192 = 0;
  }

  else
  {
    v191 = sub_1C44CDAD4();
    v192 = v193;
    (*(v164 + 8))(v190, v189);
  }

  v194 = &v561[v559[33]];
  v195 = v194[1];

  *v194 = v191;
  v194[1] = v192;
  v196 = v555;
  v197 = [v555 nonGregorianBirthday];
  if (v197)
  {
    v198 = v197;
    v199 = v562;
    sub_1C4EF9598();

    v200 = 0;
  }

  else
  {
    v200 = 1;
    v199 = v562;
  }

  sub_1C440BAA8(v199, v200, 1, v189);
  sub_1C44CDA7C();
  v201 = sub_1C44157D4(v94, 1, v189);
  v202 = v189;
  v203 = v561;
  if (v201 == 1)
  {
    sub_1C4420C3C(v94, &unk_1EC0BAD50, &unk_1C4F168E0);
    v204 = 0;
    v205 = 0;
  }

  else
  {
    v204 = sub_1C44CE310();
    v205 = v206;
    (*(v164 + 8))(v94, v202);
  }

  v207 = (v203 + v559[35]);
  v208 = v207[1];

  *v207 = v204;
  v207[1] = v205;
  v209 = sub_1C4EFEEF8();
  v210 = v553;
  v563 = v209;
  sub_1C440BAA8(v553, 1, 1, v209);
  v211 = v210 + *(v169 + 20);
  sub_1C4EFD258();
  v212 = *(v169 + 24);
  if (qword_1EDDFED28 != -1)
  {
    goto LABEL_195;
  }

  while (1)
  {
    v213 = type metadata accessor for Source();
    v214 = sub_1C442B738(v213, &unk_1EDDFD088);
    sub_1C448CA30();
    v215 = v210 + *(v169 + 28);
    sub_1C4EFE558();
    v216 = *(v169 + 36);
    v217 = (v210 + *(v169 + 32));
    sub_1C4EFE658();
    v218 = *(v169 + 44);
    v219 = v169;
    v220 = (v210 + *(v169 + 40));
    sub_1C4EFEED8();
    v221 = (v210 + v219[12]);
    *v221 = 0;
    v221[1] = 0;
    v222 = v210 + v219[13];
    sub_1C4EFEE18();
    v223 = (v210 + v219[14]);
    *v223 = 0;
    v223[1] = 0;
    v224 = v210 + v219[15];
    sub_1C4EFE738();
    v225 = (v210 + v219[16]);
    *v225 = 0;
    v225[1] = 0;
    v226 = [v196 identifier];
    v227 = sub_1C4F01138();
    v228 = v196;
    v230 = v229;

    *v217 = v227;
    v217[1] = v230;
    v232 = *v214;
    v231 = *(v214 + 1);
    v562 = v214;
    *v220 = v232;
    v220[1] = v231;
    v233 = v545;
    if (v545)
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      v234 = objc_autoreleasePoolPush();
      v235 = type metadata accessor for PhaseStores();
      v236 = sub_1C44CE7B0(v233, *(v548 + *(v235 + 32)), v541, v558);
      objc_autoreleasePoolPop(v234);

      v196 = v228;
      v237 = v559;
      v238 = v568;
      v239 = v544;
      if (v236)
      {
        *v225 = xmmword_1C4F17530;
      }
    }

    else
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v196 = v228;
      v237 = v559;
      v238 = v568;
      v239 = v544;
    }

    sub_1C448CA30();
    sub_1C44CF814(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v241 = v240;
    v243 = *(v240 + 16);
    v242 = *(v240 + 24);
    v244 = v561;
    if (v243 >= v242 >> 1)
    {
      sub_1C44CF814(v242 > 1, v243 + 1, 1, v240);
      v241 = v523;
    }

    *(v241 + 16) = v243 + 1;
    v543 = ((*(v239 + 80) + 32) & ~*(v239 + 80));
    v541 = *(v239 + 72);
    v245 = v241;
    sub_1C44CF9EC();
    v556 = v245;
    v578 = v245;
    sub_1C44DDE2C();
    if (v574)
    {
      sub_1C441D670(&v573, &v575);
      v246 = sub_1C44CFC70();
      v248 = v247;
      v249 = v237[64];
      v250 = *(v244 + v249);

      *(v244 + v249) = v246;
      sub_1C44D1BE8();
      sub_1C440962C(&v575);
      if (v248)
      {
        v251 = v244 + v237[49];
        v252 = *(v251 + 8);

        *v251 = xmmword_1C4F17530;
      }
    }

    else
    {
      sub_1C4420C3C(&v573, &unk_1EC0BABC0, qword_1C4F16ED8);
    }

    v253 = [v196 postalAddresses];
    v545 = sub_1C456902C(&qword_1EC0BAD60, &qword_1C4F175B0);
    v254 = sub_1C4F01678();

    v255 = sub_1C4428DA0(v254);
    if (!v255)
    {

      v256 = MEMORY[0x1E69E7CC0];
LABEL_55:
      v263 = v559[63];
      v264 = *(v244 + v263);

      *(v244 + v263) = v256;
      sub_1C44D7BA8();
      v265 = sub_1C44D7E5C();
      v266 = v265;
      if (v265)
      {
        v267 = [v265 identifier];

        v268 = sub_1C4F01138();
        v266 = v269;

        v196 = v555;
      }

      else
      {
        v268 = 0;
      }

      v270 = [v196 identifier];
      v271 = sub_1C4F01138();
      v273 = v272;

      if (v266)
      {
        v274 = v268 == v271 && v266 == v273;
        v169 = v559;
        if (v274)
        {
        }

        else
        {
          v275 = sub_1C4F02938();

          if ((v275 & 1) == 0)
          {
            goto LABEL_68;
          }
        }

        v276 = &v561[*(v169 + 44)];
        v277 = *(v276 + 1);

        *v276 = xmmword_1C4F17530;
      }

      else
      {

        v169 = v559;
      }

LABEL_68:
      v544 = a10;
      v278 = v555;
      v279 = [v555 contactRelations];
      v280 = sub_1C4F01678();

      v281 = sub_1C44D7F40(v280);

      v282 = [v278 contactRelations];
      v283 = sub_1C4F01678();

      *&v575 = v283;
      sub_1C44D8450(v281);
      v284 = v542;
      if (v542)
      {
        sub_1C4461BB8(0, &qword_1EDDFA430, 0x1E695CD58);
        v285 = sub_1C4F00F28();
      }

      else
      {
        v285 = 0;
      }

      v286 = v552;
      v287 = v561;
      *&v573 = v285;
      MEMORY[0x1EEE9AC00](v285);
      v288 = v558;
      *(&v527 - 10) = v551;
      *(&v527 - 9) = v288;
      *(&v527 - 8) = v284;
      *(&v527 - 7) = &v573;
      *(&v527 - 6) = v287;
      *(&v527 - 5) = v289;
      v254 = v555;
      v290 = v544;
      *(&v527 - 4) = v555;
      *(&v527 - 3) = v290;
      *(&v527 - 2) = &v579;
      v291 = v532;
      sub_1C44D85F4();
      v238 = v291;
      if (v291)
      {

        sub_1C44C45FC(v553, type metadata accessor for CNContactStructs.IdentifierRelationshipType);
        sub_1C44C45FC(v287, type metadata accessor for CNContactStructs.Person);

        *v286 = v291;
        return;
      }

      v293 = v292;
      v550 = 0;

      v294 = *(v169 + 248);
      v295 = *(v287 + v294);

      *(v287 + v294) = v293;
      sub_1C44D8894();
      v296 = [v254 dates];
      v297 = sub_1C4F01678();

      v298 = sub_1C4428DA0(v297);
      if (!v298)
      {
        v558 = MEMORY[0x1E69E7CC0];
        v551 = MEMORY[0x1E69E7CC0];
        v330 = v569;
LABEL_107:
        v337 = v330;
        v531 = a13;
        v532 = a12;
        LODWORD(v547) = a11;

        v338 = v559;
        v339 = v559[29];
        v340 = v561;
        v341 = *&v561[v339];
        v342 = v558;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

        *(v340 + v339) = v342;
        v343 = v338[31];
        v344 = *(v340 + v343);
        v345 = v551;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

        *(v340 + v343) = v345;
        v346 = [v555 socialProfiles];
        v347 = sub_1C4F01678();

        v568 = sub_1C4428DA0(v347);
        v196 = 0;
        v560 = (v347 & 0xC000000000000001);
        v566 = v347;
        v557 = v347 & 0xFFFFFFFFFFFFFF8;
        v542 = MEMORY[0x1E69E7CC0];
        v169 = v567;
        v348 = v571;
        v210 = v565;
        while (v568 != v196)
        {
          if (v560)
          {
            v349 = MEMORY[0x1C6940F90](v196, v566);
          }

          else
          {
            if (v196 >= *(v557 + 16))
            {
              goto LABEL_188;
            }

            v349 = *(v566 + 8 * v196 + 32);
          }

          v350 = v349;
          if (__OFADD__(v196, 1))
          {
            goto LABEL_187;
          }

          v556 = (v196 + 1);
          v351 = [v349 value];
          sub_1C440BAA8(v348, 1, 1, v563);
          v352 = v348 + *(v169 + 20);
          sub_1C4EFD258();
          v353 = v348 + *(v169 + 24);
          sub_1C448CA30();
          v354 = v348 + *(v169 + 28);
          sub_1C4EFE558();
          v355 = (v348 + *(v169 + 32));
          *v355 = 0;
          v355[1] = 0;
          v356 = v348 + *(v169 + 36);
          sub_1C4EFE658();
          v357 = *(v169 + 44);
          v358 = (v348 + *(v169 + 40));
          sub_1C4EFEED8();
          v359 = *(v169 + 52);
          v360 = (v348 + *(v169 + 48));
          sub_1C4EFEE18();
          v361 = (v571 + *(v169 + 56));
          v362 = v571 + *(v169 + 60);
          sub_1C4EFE738();
          v363 = (v571 + *(v169 + 64));
          *v363 = 0;
          v363[1] = 0;
          v364 = [v351 service];
          v365 = sub_1C4F01138();
          v367 = v366;

          *v358 = v365;
          v358[1] = v367;
          v368 = [v351 username];
          v369 = sub_1C4F01138();
          v371 = v370;

          *v361 = v369;
          v361[1] = v371;
          v348 = v571;
          v372 = [v351 urlString];
          v373 = sub_1C4F01138();
          v375 = v374;

          *v360 = v373;
          v360[1] = v375;
          v169 = v567;
          v376 = v564;
          sub_1C448CA30();
          sub_1C440BAA8(v376, 0, 1, v169);
          sub_1C44C45FC(v348, type metadata accessor for CNContactStructs.IdentifierRelationshipType);
          if (sub_1C44157D4(v376, 1, v169) == 1)
          {
            sub_1C4420C3C(v376, &qword_1EC0BAD48, &qword_1C4F175A8);
            ++v196;
            v210 = v565;
            v337 = v569;
            v93 = v570;
          }

          else
          {
            sub_1C44CF9EC();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v210 = v565;
            v337 = v569;
            v93 = v570;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1C44CF814(0, *(v542 + 16) + 1, 1, v542);
              v542 = v380;
            }

            v379 = *(v542 + 16);
            v378 = *(v542 + 24);
            if (v379 >= v378 >> 1)
            {
              sub_1C44CF814(v378 > 1, v379 + 1, 1, v542);
              v542 = v381;
            }

            *(v542 + 16) = v379 + 1;
            sub_1C44CF9EC();
            v196 = v556;
          }
        }

        v238 = v337;

        sub_1C44D8ADC(v542);
        v254 = &off_1E81F1000;
        v382 = v555;
        v383 = [v555 organizationName];
        v384 = sub_1C4F01138();
        v386 = v385;

        v387 = HIBYTE(v386) & 0xF;
        if ((v386 & 0x2000000000000000) == 0)
        {
          v387 = v384 & 0xFFFFFFFFFFFFLL;
        }

        if (v387)
        {
          v169 = v538;
          sub_1C440BAA8(v538, 1, 1, v563);
          v388 = (v169 + *(v210 + 20));
          sub_1C4EFD248();
          v389 = (v169 + *(v210 + 24));
          sub_1C448CA30();
          v390 = (v169 + *(v210 + 28));
          sub_1C4EFE2B8();
          v391 = *(v210 + 32);
          v392 = v210;
          v393 = v382;
          v196 = v169 + v391;
          *v196 = 0;
          *(v196 + 8) = 0;
          sub_1C440BAA8(v169 + *(v392 + 36), 1, 1, v93);
          v394 = [v393 organizationName];
          sub_1C4F01138();

          if (qword_1EDDF7978 != -1)
          {
            goto LABEL_199;
          }

          goto LABEL_125;
        }

        v409 = v561;
        goto LABEL_134;
      }

      v196 = v298;
      if (v298 < 1)
      {
        goto LABEL_198;
      }

      v299 = 0;
      v300 = *MEMORY[0x1E695CB50];
      v301 = v297 & 0xC000000000000001;
      v556 = (v547 + 8);
      v558 = MEMORY[0x1E69E7CC0];
      v551 = MEMORY[0x1E69E7CC0];
      v566 = v297 & 0xC000000000000001;
      v568 = v298;
      while (1)
      {
        if (v301)
        {
          v302 = MEMORY[0x1C6940F90](v299, v297);
        }

        else
        {
          v302 = *(v297 + 8 * v299 + 32);
        }

        v303 = v302;
        v304 = [v302 label];
        if (v304)
        {
          v305 = v304;
          v306 = sub_1C4F01138();
          v308 = v307;
        }

        else
        {
          v306 = 0;
          v308 = 0;
        }

        v309 = sub_1C4F01138();
        if (v308)
        {
          if (v306 == v309 && v308 == v310)
          {

LABEL_92:
            v313 = v300;
            v314 = v297;
            v315 = [v303 value];
            sub_1C4EF9598();

            v316 = sub_1C44CDAD4();
            v318 = v317;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v331 = v558[2];
              sub_1C443D664();
              v558 = v332;
            }

            v319 = v558[2];
            if (v319 >= v558[3] >> 1)
            {
              sub_1C443D664();
              v558 = v333;
            }

            v320 = v558;
            v558[2] = (v319 + 1);
            v321 = &v320[2 * v319];
            v321[4] = v316;
            v321[5] = v318;
            v322 = v560;
            v323 = sub_1C44CE310();
            if (v324)
            {
              v325 = v323;
              v326 = v324;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v334 = *(v551 + 16);
                sub_1C443D664();
                v551 = v335;
              }

              v327 = *(v551 + 16);
              if (v327 >= *(v551 + 24) >> 1)
              {
                sub_1C443D664();
                v551 = v336;
              }

              (*v556)(v560, v557);
              v328 = v551;
              *(v551 + 16) = v327 + 1;
              v329 = v328 + 16 * v327;
              *(v329 + 32) = v325;
              *(v329 + 40) = v326;
            }

            else
            {
              (*v556)(v322, v557);
            }

            v297 = v314;
            v300 = v313;
            v196 = v568;
            v301 = v566;
            goto LABEL_104;
          }

          v312 = sub_1C4F02938();

          if (v312)
          {
            goto LABEL_92;
          }
        }

        else
        {
        }

LABEL_104:
        ++v299;
        v330 = v569;
        v93 = v570;
        if (v196 == v299)
        {
          goto LABEL_107;
        }
      }
    }

    v169 = v255;
    *&v575 = MEMORY[0x1E69E7CC0];
    sub_1C44D4860();
    if (v169 < 0)
    {
      break;
    }

    v196 = 0;
    v256 = v575;
    v93 = v254 & 0xC000000000000001;
    v210 = v532;
    while (1)
    {
      v257 = (v196 + 1);
      if (__OFADD__(v196, 1))
      {
        break;
      }

      sub_1C4431590(v196, v93 == 0);
      if (v93)
      {
        v258 = MEMORY[0x1C6940F90](v196, v254);
      }

      else
      {
        v258 = *(v254 + 8 * v196 + 32);
      }

      v259 = v258;
      *&v573 = v258;
      sub_1C44D4A28(&v573, &v572, v238);
      if (v210)
      {

        *v552 = v572;
        sub_1C44C45FC(v553, type metadata accessor for CNContactStructs.IdentifierRelationshipType);
        sub_1C44C45FC(v561, type metadata accessor for CNContactStructs.Person);
        return;
      }

      v210 = 0;

      *&v575 = v256;
      v260 = *(v256 + 16);
      if (v260 >= *(v256 + 24) >> 1)
      {
        sub_1C44D4860();
        v256 = v575;
      }

      *(v256 + 16) = v260 + 1;
      v261 = v256 + ((*(v566 + 80) + 32) & ~*(v566 + 80));
      v262 = *(v566 + 72);
      v238 = v568;
      sub_1C44CF9EC();
      ++v196;
      if (v257 == v169)
      {
        v532 = 0;

        v244 = v561;
        v196 = v555;
        v93 = v570;
        goto LABEL_55;
      }
    }

    __break(1u);
LABEL_187:
    __break(1u);
LABEL_188:
    __break(1u);
LABEL_189:
    __break(1u);
LABEL_190:
    __break(1u);
LABEL_191:
    __break(1u);
LABEL_192:
    __break(1u);
LABEL_193:
    __break(1u);
LABEL_194:
    __break(1u);
LABEL_195:
    swift_once();
  }

LABEL_197:
  __break(1u);
LABEL_198:
  __break(1u);
LABEL_199:
  swift_once();
LABEL_125:
  v395 = type metadata accessor for SourceIdPrefix();
  sub_1C442B738(v395, qword_1EDDF7980);
  String.base64EncodedSHA(withPrefix:)();
  v397 = v396;
  v399 = v398;

  v400 = v537;
  v401 = v550;
  sub_1C4D6E9E4(v397, v399, v402, v403, v404, v405, v406, v407, v527, v528, v529, v530, v531, v532, v533, v534, v535, v536, v537, v538);
  v408 = v401;
  if (v401)
  {

    sub_1C44C45FC(v169, type metadata accessor for CNContactStructs.EmploymentRelationshipType);

    sub_1C44C45FC(v553, type metadata accessor for CNContactStructs.IdentifierRelationshipType);
    sub_1C44C45FC(v561, type metadata accessor for CNContactStructs.Person);
LABEL_180:

    *v552 = v408;
    return;
  }

  v550 = 0;
  v410 = *(v254 + 2272);
  v411 = v400;
  v412 = v555;
  v413 = [v555 v410];
  v414 = sub_1C4F01138();
  v416 = v415;

  v417 = (v411 + *(v93 + 36));
  v418 = v417[1];

  *v417 = v414;
  v417[1] = v416;
  v419 = [v412 phoneticOrganizationName];
  v420 = sub_1C4F01138();
  v422 = v421;

  v423 = (v411 + *(v93 + 44));
  v424 = v423[1];

  *v423 = v420;
  v423[1] = v422;
  sub_1C448CA30();
  sub_1C440BAA8(v238, 0, 1, v93);
  sub_1C4D6F26C(v238);
  v425 = [v412 departmentName];
  v426 = sub_1C4F01138();
  v428 = v427;

  v429 = HIBYTE(v428) & 0xF;
  if ((v428 & 0x2000000000000000) == 0)
  {
    v429 = v426 & 0xFFFFFFFFFFFFLL;
  }

  if (v429)
  {
    v430 = [v412 departmentName];
    v431 = sub_1C4F01138();
    v433 = v432;
  }

  else
  {
    v431 = 0;
    v433 = 0;
  }

  v169 = v567;
  v434 = v535;
  v435 = *(v196 + 8);

  *v196 = v431;
  *(v196 + 8) = v433;
  v436 = v538;
  sub_1C448CA30();
  sub_1C440BAA8(v434, 0, 1, v565);
  v409 = v561;
  sub_1C4D6F388(v434);
  sub_1C44C45FC(v537, type metadata accessor for CNContactStructs.Organization);
  sub_1C44C45FC(v436, type metadata accessor for CNContactStructs.EmploymentRelationshipType);
  v382 = v555;
LABEL_134:
  v437 = [objc_opt_self() isInternalDevice];
  v438 = v549;
  if (v437 && (Configuration.isLivableSourcesEnabled.getter() & 1) != 0)
  {
    v439 = [v382 jobTitle];
    v440 = sub_1C4F01138();
    v442 = v441;

    v443 = HIBYTE(v442) & 0xF;
    if ((v442 & 0x2000000000000000) == 0)
    {
      v443 = v440 & 0xFFFFFFFFFFFFLL;
    }

    if (v443)
    {
      v444 = [v382 jobTitle];
      v445 = sub_1C4F01138();
      v447 = v446;

      v448 = &v561[v559[39]];
      v449 = v448[1];

      *v448 = v445;
      v448[1] = v447;
    }

    v450 = [v382 instantMessageAddresses];
    v210 = sub_1C4F01678();

    v451 = sub_1C4428DA0(v210);
    v569 = v210;
    v570 = v451;
    v196 = 0;
    v568 = (v210 & 0xC000000000000001);
    v566 = v210 & 0xFFFFFFFFFFFFFF8;
    v564 = MEMORY[0x1E69E7CC0];
    while (v570 != v196)
    {
      if (v568)
      {
        v452 = MEMORY[0x1C6940F90](v196, v569);
      }

      else
      {
        if (v196 >= *(v566 + 16))
        {
          goto LABEL_194;
        }

        v452 = *(v569 + 8 * v196 + 32);
      }

      v453 = v452;
      if (__OFADD__(v196, 1))
      {
        goto LABEL_193;
      }

      v565 = v196 + 1;
      v454 = [v452 value];
      v455 = v571;
      sub_1C440BAA8(v571, 1, 1, v563);
      v456 = v455 + *(v169 + 20);
      sub_1C4EFD258();
      v457 = v455 + *(v169 + 24);
      sub_1C448CA30();
      v458 = v455 + *(v169 + 28);
      sub_1C4EFE558();
      v459 = (v455 + *(v169 + 32));
      *v459 = 0;
      v459[1] = 0;
      v460 = v455 + *(v169 + 36);
      sub_1C4EFE658();
      v461 = *(v169 + 44);
      v462 = (v455 + *(v169 + 40));
      sub_1C4EFEED8();
      v463 = (v455 + *(v169 + 48));
      *v463 = 0;
      v463[1] = 0;
      v464 = v455 + *(v169 + 52);
      sub_1C4EFEE18();
      v465 = *(v169 + 60);
      v466 = (v455 + *(v169 + 56));
      sub_1C4EFE738();
      v467 = (v455 + *(v169 + 64));
      *v467 = 0;
      v467[1] = 0;
      v468 = [v454 username];
      v469 = sub_1C4F01138();
      v471 = v470;

      *v466 = v469;
      v466[1] = v471;
      v472 = [v454 service];
      v473 = sub_1C4F01138();
      v93 = v474;

      v210 = v546;
      *v462 = v473;
      v462[1] = v93;
      v169 = v567;
      sub_1C448CA30();
      sub_1C440BAA8(v210, 0, 1, v169);
      sub_1C44C45FC(v455, type metadata accessor for CNContactStructs.IdentifierRelationshipType);
      if (sub_1C44157D4(v210, 1, v169) == 1)
      {
        sub_1C4420C3C(v210, &qword_1EC0BAD48, &qword_1C4F175A8);
        ++v196;
      }

      else
      {
        v210 = v534;
        sub_1C44CF9EC();
        v475 = v564;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C44CF814(0, *(v475 + 16) + 1, 1, v475);
          v475 = v478;
        }

        v196 = v565;
        v477 = *(v475 + 16);
        v476 = *(v475 + 24);
        if (v477 >= v476 >> 1)
        {
          sub_1C44CF814(v476 > 1, v477 + 1, 1, v475);
          v475 = v479;
        }

        *(v475 + 16) = v477 + 1;
        v564 = v475;
        sub_1C44CF9EC();
      }
    }

    sub_1C44D8ADC(v564);
    v438 = v549;
    v409 = v561;
  }

  else
  {
  }

  v480 = v578;
  v481 = v559;
  v482 = v559[58];
  v483 = *(v409 + v482);

  *(v409 + v482) = v480;
  sub_1C44D8D6C();
  sub_1C44D93D0();
  v485 = v484;
  v486 = v481[61];
  v487 = *(v409 + v486);

  *(v409 + v486) = v485;
  sub_1C4D7F6AC();
  v488 = sub_1C44CB92C();
  v489 = *(v438 + 48);
  v490 = v540;
  *v540 = v488;
  v490[1] = v491;
  sub_1C448CA30();
  v571 = v579;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v524 = *(v571 + 16);
    sub_1C458CCD4();
    v571 = v525;
  }

  v492 = v554;
  v493 = v536;
  v495 = *(v571 + 16);
  v494 = *(v571 + 24);
  v570 = v495 + 1;
  if (v495 >= v494 >> 1)
  {
    sub_1C458CCD4();
    v571 = v526;
  }

  v496 = v571;
  *(v571 + 16) = v570;
  v196 = v496 + ((*(v493 + 80) + 32) & ~*(v493 + 80));
  v569 = *(v493 + 72);
  v497 = &qword_1EC0BAD30;
  v498 = &unk_1C4F0E170;
  sub_1C44CDA7C();
  v210 = 0;
  v499 = MEMORY[0x1E69E7CC0];
  while (v570 != v210)
  {
    if (v210 >= *(v571 + 16))
    {
      goto LABEL_189;
    }

    sub_1C44DDE2C();
    v500 = *v492;
    v501 = v492[1];
    v502 = *(v549 + 48);
    LOBYTE(v575) = v547;
    v503 = v550;
    sub_1C4D6F494();
    v550 = v503;
    if (v503)
    {
      sub_1C4420C3C(v492, &qword_1EC0BAD30, &unk_1C4F0E170);

      sub_1C44C45FC(v553, type metadata accessor for CNContactStructs.IdentifierRelationshipType);
      sub_1C44C45FC(v561, type metadata accessor for CNContactStructs.Person);

      *v552 = v550;
      return;
    }

    v505 = v504;
    v169 = v497;
    v93 = v498;
    sub_1C4420C3C(v492, v497, v498);
    v238 = *(v505 + 16);
    v506 = *(v499 + 16);
    v507 = v506 + v238;
    if (__OFADD__(v506, v238))
    {
      goto LABEL_190;
    }

    v508 = swift_isUniquelyReferenced_nonNull_native();
    if ((v508 & 1) == 0 || v507 > *(v499 + 24) >> 1)
    {
      if (v506 <= v507)
      {
        v509 = v506 + v238;
      }

      else
      {
        v509 = v506;
      }

      sub_1C44C9240(v508, v509, 1, v499);
      v499 = v510;
    }

    v492 = v554;
    if (*(v505 + 16))
    {
      v254 = (*(v499 + 24) >> 1) - *(v499 + 16);
      v511 = *(type metadata accessor for EntityTriple(0) - 8);
      if (v254 < v238)
      {
        goto LABEL_192;
      }

      v512 = (*(v511 + 80) + 32) & ~*(v511 + 80);
      v513 = *(v511 + 72);
      swift_arrayInitWithCopy();

      v492 = v554;
      if (v238)
      {
        v514 = *(v499 + 16);
        v515 = __OFADD__(v514, v238);
        v516 = v514 + v238;
        if (v515)
        {
          __break(1u);
          goto LABEL_197;
        }

        *(v499 + 16) = v516;
      }
    }

    else
    {

      if (v238)
      {
        goto LABEL_191;
      }
    }

    v196 += v569;
    ++v210;
    v497 = v169;
    v498 = v93;
  }

  sub_1C4812140();
  v517 = v550;
  v532();
  v408 = v517;
  if (v517)
  {

    sub_1C44C45FC(v553, type metadata accessor for CNContactStructs.IdentifierRelationshipType);
    sub_1C44C45FC(v561, type metadata accessor for CNContactStructs.Person);
    goto LABEL_180;
  }

  v518 = *(v499 + 16);

  v519 = v533;
  v520 = v533;
  *v533 = v518;
  v521 = (v520 + 1);
  v522 = v573;
  if (v573)
  {
    v576 = sub_1C456902C(&qword_1EC0BAD68, &qword_1C4F175B8);
    v577 = sub_1C4401CBC(&unk_1EC0BAD70, &qword_1EC0BAD68, &qword_1C4F175B8);
    *&v575 = v522;
    sub_1C441D670(&v575, v521);
  }

  else
  {
    v519[4] = sub_1C456902C(&unk_1EC0BABF0, &qword_1C4F16F30);
    v519[5] = sub_1C4401CBC(&unk_1EDDF05F0, &unk_1EC0BABF0, &qword_1C4F16F30);
    v519[1] = MEMORY[0x1E69E7CC0];
  }

  sub_1C44C45FC(v553, type metadata accessor for CNContactStructs.IdentifierRelationshipType);
  sub_1C44C45FC(v561, type metadata accessor for CNContactStructs.Person);
}

uint64_t sub_1C44C45FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C44C4674()
{
  sub_1C440CE48();
  v3 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FCF8C(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = sub_1C4404F74();
  }

  else
  {
    v7 = sub_1C4EFD548();
    sub_1C43FCF8C(v7);
    if (*(v8 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      v10 = type metadata accessor for Source();
      sub_1C43FCF8C(v10);
      if (*(v11 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        v12 = sub_1C4EFEEF8();
        sub_1C43FCF8C(v12);
        if (*(v13 + 84) == v0)
        {
          sub_1C4416C14();
        }

        else
        {
          if (v0 == 2147483646)
          {
            return sub_1C43FE264(*(v2 + 32));
          }

          v15 = sub_1C43FE99C();
          v6 = sub_1C456902C(v15, v16);
          v9 = *(v2 + 36);
        }
      }
    }

    v5 = v1 + v9;
  }

  return sub_1C44157D4(v5, v0, v6);
}

uint64_t sub_1C44C483C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  v7 = sub_1C43FCF8C(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = sub_1C4EFD548();
    v12 = sub_1C43FCF8C(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = a3[5];
    }

    else
    {
      v15 = type metadata accessor for Source();
      v16 = sub_1C43FCF8C(v15);
      if (*(v17 + 84) == a2)
      {
        v9 = v16;
        v14 = a3[6];
      }

      else
      {
        v18 = sub_1C4EFEEF8();
        v19 = sub_1C43FCF8C(v18);
        if (*(v20 + 84) != a2)
        {
          return sub_1C43FE264(a3[8]);
        }

        v9 = v19;
        v14 = a3[7];
      }
    }

    v10 = a1 + v14;
  }

  return sub_1C44157D4(v10, a2, v9);
}

uint64_t sub_1C44C49A4()
{
  sub_1C440CE48();
  v3 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FCF8C(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = sub_1C4404F74();
  }

  else
  {
    v7 = sub_1C4EFD548();
    sub_1C43FCF8C(v7);
    if (*(v8 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      v10 = type metadata accessor for Source();
      sub_1C43FCF8C(v10);
      if (*(v11 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        v12 = sub_1C4EFEEF8();
        sub_1C43FCF8C(v12);
        if (*(v13 + 84) == v0)
        {
          sub_1C4416C14();
        }

        else
        {
          sub_1C44A1CD0();
          if (v14)
          {
            return sub_1C43FE264(*(v2 + 32));
          }

          v16 = sub_1C43FE99C();
          v6 = sub_1C456902C(v16, v17);
          v9 = *(v2 + 44);
        }
      }
    }

    v5 = v1 + v9;
  }

  return sub_1C44157D4(v5, v0, v6);
}

uint64_t sub_1C44C4B38()
{
  sub_1C440CE48();
  v3 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = sub_1C4404F74();
  }

  else
  {
    v7 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v7);
    if (*(v8 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      v10 = sub_1C4EFD548();
      sub_1C43FCF8C(v10);
      if (*(v11 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        v12 = type metadata accessor for Source();
        sub_1C43FCF8C(v12);
        if (*(v13 + 84) == v0)
        {
          sub_1C4416C14();
        }

        else
        {
          v6 = sub_1C456902C(&unk_1EC0BADC0, &qword_1C4F402C0);
          v9 = *(v2 + 32);
        }
      }
    }

    v5 = v1 + v9;
  }

  return sub_1C44157D4(v5, v0, v6);
}

uint64_t sub_1C44C4CA8(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(char *, uint64_t), uint64_t a5, void *a6, unsigned __int8 *a7, uint64_t a8, void (*a9)(void), uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = v13;
  ObjectType = swift_getObjectType();
  v20 = *a7;
  v23 = objc_autoreleasePoolPush();
  sub_1C44C1850(v14, a4, a5, a2, a6, a8, a3, a12, &v28, a13, v20, a9, a10, ObjectType, &v30);
  objc_autoreleasePoolPop(v23);
  if (!v27)
  {
    v20 = v28;
    sub_1C441D670(v29, a1);
  }

  return v20;
}

void sub_1C44C4DAC(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, void *a10, uint64_t a11, void (*a12)(void), uint64_t a13, void *a14)
{
  v35 = a8;
  v36 = a6;
  v21 = type metadata accessor for PhaseStores();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v29 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C44BFE8C();
  if (*a5)
  {
    goto LABEL_4;
  }

  if (__OFADD__(*a7, 1))
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  ++*a7;
  if (![a1 contactType])
  {
    v33 = a13;
    v34 = a10;
    v32 = a12;
    v30 = objc_autoreleasePoolPush();
    sub_1C448C9D8();
    v25 = type metadata accessor for CNContactFullSourceIngestor(0);
    v26 = v25[6];
    v31 = *(a4 + v25[7]);
    v27 = *(a4 + v25[11]);
    v38 = *(a4 + v26);
    sub_1C44DDE2C();
    v28 = 0;
    if (a3)
    {
      v28 = sub_1C44C8F40();
    }

    sub_1C44C4CA8(v39, v24, v31, v27, v35, v34, &v38, v37, v32, v33, a2, v28, a4 + v25[12]);

    sub_1C4420C3C(v37, &unk_1EC0BABC0, qword_1C4F16ED8);
    sub_1C4485354(v24, type metadata accessor for PhaseStores);
    sub_1C441D670(v39, v40);
    if (!__OFADD__(*a14, 1))
    {
      ++*a14;
      sub_1C441D670(v40, a9);
      objc_autoreleasePoolPop(v30);
      return;
    }

    goto LABEL_11;
  }

LABEL_4:
  a9[3] = sub_1C456902C(&unk_1EC0BABF0, &qword_1C4F16F30);
  a9[4] = sub_1C4401CBC(&unk_1EDDF05F0, &unk_1EC0BABF0, &qword_1C4F16F30);
  *a9 = MEMORY[0x1E69E7CC0];
}

uint64_t sub_1C44C5224(void (*a1)(id *__return_ptr, id, void, uint64_t), uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for CNContactFullSourceIngestor(0);
  v6 = *(v2 + *(v5 + 28));
  if (*(v2 + *(v5 + 32)) == 1)
  {
    sub_1C44C8F40();
    v7 = sub_1C44C9794();

    if (v7)
    {
      a1(aBlock, v7, 0, 1);
      sub_1C4409678(aBlock, v28);
      sub_1C43FCE64();
      v10 = *(v9 + 64);
      MEMORY[0x1EEE9AC00](v11);
      sub_1C43FBCC4();
      (*(v14 + 16))(v13 - v12);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      sub_1C4422F90(v24);
      sub_1C4404044();
      sub_1C4F01478();
      while (1)
      {
        sub_1C4418280(v24, AssociatedTypeWitness);
        sub_1C4404044();
        sub_1C4F01FA8();
        v15 = v23[0];
        if (!v23[0])
        {
          break;
        }

        a1(v23, v23[0], 0, 0);

        sub_1C440962C(v23);
      }

      sub_1C440962C(v24);
      result = sub_1C440962C(aBlock);
    }
  }

  else
  {
    sub_1C4461BB8(0, &qword_1EDDF03C8, 0x1E695CD78);
    sub_1C44C8F40();
    v16 = sub_1C467EA4C();
    v17 = swift_allocObject();
    *(v17 + 16) = a1;
    *(v17 + 24) = a2;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_1C4682884;
    *(v18 + 24) = v17;
    v29 = sub_1C468288C;
    v30 = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C468190C;
    v28 = &unk_1F43E65A8;
    v19 = _Block_copy(aBlock);

    aBlock[0] = 0;
    v20 = [v6 enumerateContactsWithFetchRequest:v16 error:aBlock usingBlock:v19];
    _Block_release(v19);

    v21 = aBlock[0];
    LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

    if (v19)
    {
      __break(1u);
    }

    if (!v20)
    {
      sub_1C4EF97A8();

      swift_willThrow();
    }
  }

  v22 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C44C55E4()
{
  sub_1C43FBD3C();
  v4 = v1;
  v96 = v5;
  v7 = v6;
  v9 = v8;
  v10 = type metadata accessor for ConstructionProgressTokens(0);
  v92 = sub_1C43FCDF8(v10);
  v93 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v92);
  sub_1C43FBCC4();
  v14 = sub_1C43FECFC();
  v15 = type metadata accessor for ProgressTokens(v14);
  v94 = sub_1C43FCDF8(v15);
  v95 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v94);
  v19 = sub_1C4416DF8();
  v20 = type metadata accessor for CNContactFullSourceIngestor(v19);
  v21 = sub_1C43FBCE0(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBD08();
  MEMORY[0x1EEE9AC00](v24);
  v27 = v88 - v26;
  if (v7 >> 60 == 15)
  {
    sub_1C4656BF8();
  }

  else
  {
    v88[1] = v25;
    v89 = v3;
    v91 = v1;
    v28 = sub_1C44191B8();
    sub_1C44344B8(v28, v29);
    v90 = objc_autoreleasePoolPush();
    v97[0] = v9;
    v97[1] = v7;
    v30 = sub_1C4EF93D8();
    sub_1C44099C4(v30);
    sub_1C4EF93C8();
    v31 = qword_1EC0BAC30;
    sub_1C456902C(qword_1EC0BAC30, &qword_1C4F142F8);
    sub_1C442C5A4();
    sub_1C4401CBC(v32, v33, &qword_1C4F142F8);
    v34 = sub_1C44418D0();
    if (qword_1EC0BAC30)
    {

      objc_autoreleasePoolPop(v90);
      v36 = sub_1C44191B8();
      sub_1C441DFEC(v36, v37);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v38 = sub_1C4F00978();
        sub_1C43FCEE8(v38, qword_1EDE2DE10);
        v39 = sub_1C44623A0();
        sub_1C4430900(v39, v27);
        v40 = sub_1C4F00968();
        v41 = sub_1C4F01CD8();
        v42 = sub_1C44016D0();
        if (os_log_type_enabled(v42, v43))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C440D148();
          v44 = swift_slowAlloc();
          sub_1C44305A4(v44);
          *v9 = 136315138;
          sub_1C44B91CC();
          sub_1C447E868(v27, type metadata accessor for CNContactFullSourceIngestor);
          v45 = sub_1C44C0334();
          v47 = v46;
          v48 = sub_1C440CAF0();
          sub_1C447E868(v48, v49);
          v50 = sub_1C447CB90();
          sub_1C441D828(v50, v47, v51);
          sub_1C44D44F0();
          *(v9 + 4) = v45;
          sub_1C4451274(&dword_1C43F8000, v52, v41, "%s failed to update progress token");
          sub_1C440962C(v2);
          v53 = sub_1C4416E14();
          MEMORY[0x1C6942830](v53);
          v54 = sub_1C44068C0();
          MEMORY[0x1C6942830](v54);
        }

        else
        {
          sub_1C447E868(v27, type metadata accessor for CNContactFullSourceIngestor);
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    v0 = v34;
    v55 = v35;

    objc_autoreleasePoolPop(v90);
    v56 = sub_1C44191B8();
    sub_1C441DFEC(v56, v57);
    v4 = v91;
    v9 = v0;
    v7 = v55;
    v3 = v89;
  }

  v58 = v4;
  sub_1C44C5BBC(v97);
  v31 = v98;
  v27 = v96;
  if (!v98)
  {
    sub_1C4420C3C(v97, &qword_1EC0BA490, &unk_1C4F53630);
    v58 = 0;
    if (v27)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v59 = sub_1C43FECAC();
  v60(v59);
  sub_1C4456268();
  if ((v27 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v58++, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  switch(*(v4 + v20[6]))
  {
    case 1:
      sub_1C441D16C();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      sub_1C440DF74();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C443FAEC();
      sub_1C44D0B30();
      if (v0)
      {
LABEL_18:
        v62 = v20[9];
        v63 = sub_1C4EFD548();
        sub_1C43FCE50(v63);
        (*(v64 + 16))(v2, v4 + v62);
        v65 = *(v4 + v20[10]);
        v66 = *(v94 + 24);
        v67 = v20[5];
        sub_1C441925C();
        sub_1C4430900(v4 + v68, v2 + v69);
        sub_1C4485FC4();
        *v70 = v9;
        v70[1] = v7;
        sub_1C44A1488();
        v71 = type metadata accessor for PhaseStores();
        sub_1C4488218(v71);
        sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v72 = sub_1C4404CB4();
        sub_1C4412DCC(v72, xmmword_1C4F0D130);
        sub_1C4461F3C();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v73 = sub_1C43FFEF0();
      }

      else
      {
        v75 = v20[9];
        v76 = sub_1C4EFD548();
        sub_1C43FCE50(v76);
        (*(v77 + 16))(v3, v4 + v75);
        LOBYTE(v75) = *(v4 + v20[10]);
        sub_1C445C11C();
        v78 = v20[5];
        sub_1C441925C();
        sub_1C4430900(v4 + v79, v3 + v80);
        *(v3 + MEMORY[0xE700000000000014]) = v75;
        v81 = (v3 + MEMORY[0xE70000000000001C]);
        *v81 = v9;
        v81[1] = v7;
        *(v3 + MEMORY[0xE700000000000020]) = v58;
        *(v3 + MEMORY[0xE700000000000024]) = v27 & 1;
        v82 = type metadata accessor for PhaseStores();
        sub_1C4488218(v82);
        sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v83 = sub_1C4405904();
        sub_1C44068A0(v83, xmmword_1C4F0D130);
        sub_1C4430900(v3, v84);
        v85 = sub_1C4461F3C();
        sub_1C449498C(v85);
        swift_setDeallocating();
        sub_1C4495394();
        sub_1C440A77C();
        v73 = v3;
      }

      sub_1C447E868(v73, v74);
      v86 = sub_1C44191B8();
      sub_1C441DFEC(v86, v87);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

uint64_t sub_1C44C5BBC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  v3 = sub_1C456902C(&unk_1EC0BAC20, &unk_1C4F141E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v36[-1] - v5;
  v7 = type metadata accessor for ConstructionProgressTokens(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&unk_1EC0BA4B8, &unk_1C4F16F60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v36[-1] - v13;
  v15 = type metadata accessor for ProgressTokens(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v36[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for CNContactFullSourceIngestor(0);
  switch(*(v2 + *(v19 + 24)))
  {
    case 2:

      goto LABEL_4;
    default:
      v20 = sub_1C4F02938();

      if (v20)
      {
LABEL_4:
        v21 = *(v2 + *(type metadata accessor for PhaseStores() + 24));
        v37 = v19;
        v38 = sub_1C447CB3C(&unk_1EDDE08F8, type metadata accessor for CNContactFullSourceIngestor);
        v22 = sub_1C4422F90(v36);
        sub_1C4430900(v2, v22);
        sub_1C44FEF34(v36, 0);
        sub_1C440962C(v36);
        if (sub_1C44157D4(v14, 1, v15) == 1)
        {
          v23 = &unk_1EC0BA4B8;
          v24 = &unk_1C4F16F60;
          v25 = v14;
LABEL_8:
          result = sub_1C4420C3C(v25, v23, v24);
          v30 = v35;
          *(v35 + 32) = 0;
          *v30 = 0u;
          v30[1] = 0u;
          return result;
        }

        sub_1C449F338(v14, v18);
        v31 = v35;
        *(v35 + 24) = v15;
        v31[4] = &off_1F43EE918;
        v32 = sub_1C4422F90(v31);
        v33 = v18;
      }

      else
      {
        v26 = v10;
        v27 = *(v2 + *(type metadata accessor for PhaseStores() + 24));
        v37 = v19;
        v38 = sub_1C447CB3C(&unk_1EDDE08F8, type metadata accessor for CNContactFullSourceIngestor);
        v28 = sub_1C4422F90(v36);
        sub_1C4430900(v2, v28);
        sub_1C449D50C(v36, 0);
        sub_1C440962C(v36);
        if (sub_1C44157D4(v6, 1, v7) == 1)
        {
          v23 = &unk_1EC0BAC20;
          v24 = &unk_1C4F141E0;
          v25 = v6;
          goto LABEL_8;
        }

        sub_1C449F338(v6, v26);
        v34 = v35;
        *(v35 + 24) = v7;
        v34[4] = &off_1F43EE970;
        v32 = sub_1C4422F90(v34);
        v33 = v26;
      }

      return sub_1C449F338(v33, v32);
  }
}

uint64_t sub_1C44C600C(uint64_t a1, void *a2, void *a3)
{
  v5 = type metadata accessor for Pipeline.StatusStore();
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C448C9D8();
  v9[*(v6 + 28)] = 1;
  Pipeline.StatusStore.currentSessionId()();
  sub_1C4485354(v9, type metadata accessor for Pipeline.StatusStore);
  sub_1C4F00288();
  sub_1C456902C(&qword_1EC0BA6C0, &unk_1C4F14600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D480;
  *(inited + 32) = 0x496E6F6973736573;
  *(inited + 40) = 0xE900000000000064;
  v11 = sub_1C4F01108();

  *(inited + 48) = v11;
  *(inited + 56) = 0x614E656372756F73;
  *(inited + 64) = 0xEA0000000000656DLL;
  sub_1C4461BB8(0, &qword_1EDDFA440, 0x1E696AEC0);
  *(inited + 72) = sub_1C4F01EF8();
  *(inited + 80) = 0x756F436E656B6174;
  *(inited + 88) = 0xEA0000000000746ELL;
  v12 = *a2;
  *(inited + 96) = sub_1C4F01B58();
  strcpy((inited + 104), "droppedCount");
  *(inited + 117) = 0;
  *(inited + 118) = -5120;
  result = *a3 - *a2;
  if (__OFSUB__(*a3, *a2))
  {
    __break(1u);
  }

  else
  {
    *(inited + 120) = sub_1C4F01B58();
    sub_1C4461BB8(0, qword_1EDDFCDD0, 0x1E69E58C0);
    sub_1C4F00F28();
    sub_1C4F00268();
  }

  return result;
}

uint64_t OrganizationMatcher.pipelineType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for OrganizationMatcher();
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t OrganizationMatcher.source.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for OrganizationMatcher() + 20);
  sub_1C43FD90C();
  return sub_1C44718CC(v1 + v4, a1);
}

void sub_1C44C63E8()
{
  sub_1C43FBD3C();
  sub_1C44A1E40();
  v2 = sub_1C4EFD548();
  v3 = sub_1C43FCDF8(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C4433190();
  v6 = type metadata accessor for Source();
  v7 = sub_1C43FBD18(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C4414930();
  sub_1C4440948();
  v10 = type metadata accessor for OrganizationMatcher();
  sub_1C4429020(v10);
  sub_1C456902C(&qword_1EC0BA510, &unk_1C4F14240);
  v11 = sub_1C445BBF0();
  MEMORY[0x1C6940010](v11);

  sub_1C441DC78();
  sub_1C4495CA4();
  sub_1C44364AC();
  v12 = *(v0 + 20);
  sub_1C441925C();
  sub_1C447F6A4(v13);
  MEMORY[0x1C6940010](*v1, v1[1]);
  sub_1C4411930();
  sub_1C447E868(v1, v14);
  sub_1C446BE3C();
  _s24IntelligencePlatformCore19OrganizationMatcherV11entityClass0aB006EntityG0Vvg_0();
  sub_1C4EFD3D8();
  v15 = sub_1C441B798();
  v16(v15);
  sub_1C44A1748();

  sub_1C44AB234();
  sub_1C4656CA4();
  sub_1C44EB86C();
  sub_1C43FE9F0();
}

uint64_t sub_1C44C654C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C44A7DA0;

  return OrganizationMatcher.execute()();
}

uint64_t OrganizationMatcher.execute()()
{
  v1[2] = v0;
  v2 = sub_1C4EFD548();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v5 = *(*(sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0) - 8) + 64) + 15;
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C44C66F4, 0, 0);
}

uint64_t sub_1C44C66F4()
{
  v66 = v0;
  v1 = v0[9];
  v3 = v0[2];
  v2 = v0[3];
  v4 = *(v3 + *(type metadata accessor for PhaseStores() + 24));
  v5 = type metadata accessor for OrganizationMatcher();
  v6 = *(v5 + 24);
  LOBYTE(v65[0]) = *(v3 + v6);
  _s24IntelligencePlatformCore19OrganizationMatcherV11entityClass0aB006EntityG0Vvg_0();
  sub_1C43FBD94();
  sub_1C440BAA8(v7, v8, v9, v2);
  sub_1C44ABA54(v65, v1);
  sub_1C4420C3C(v1, &qword_1EC0B8568, &unk_1C4F319B0);
  switch(*(v3 + v6))
  {
    case 1:
    case 3:
      v10 = v0[8];
      v12 = v0[3];
      v11 = v0[4];
      v13 = v0[2];
      _s24IntelligencePlatformCore19OrganizationMatcherV11entityClass0aB006EntityG0Vvg_0();
      v14 = *(v3 + v6);
      v63 = v6;
      v15 = swift_task_alloc();
      *(v15 + 16) = v13;
      sub_1C43FC6AC();
      sub_1C44AC170(v16, v17, v18, v19, v20, v15);
      v21 = *(v11 + 8);
      v21(v10, v12);

      v22 = v21;
      v23 = v0[2];
      v24 = v23 + *(v5 + 20);
      if (*(v24 + *(type metadata accessor for Source() + 28)) != 1)
      {
        goto LABEL_8;
      }

      v25 = v0[7];
      v26 = v0[3];
      _s24IntelligencePlatformCore19OrganizationMatcherV11entityClass0aB006EntityG0Vvg_0();
      v27 = *(v3 + v63);
      v28 = swift_task_alloc();
      *(v28 + 16) = v23;
      sub_1C43FC6AC();
      sub_1C44C6BB4(v29, v30, v31, v32, v33, v28);
      v22(v25, v26);
      goto LABEL_7;
    case 2:
      v35 = v0[6];
      v36 = v0[4];
      v64 = v0[3];
      v37 = v0[2];
      _s24IntelligencePlatformCore19OrganizationMatcherV11entityClass0aB006EntityG0Vvg_0();
      v38 = *(v3 + v6);
      v39 = swift_task_alloc();
      *(v39 + 16) = v37;
      sub_1C46CE408(v35, v38, 0, 1, sub_1C4A7A02C, v39);
      v40 = *(v36 + 8);
      v40(v35, v64);

      v63 = v6;
      v41 = v0[2];
      v42 = v41 + *(v5 + 20);
      if (*(v42 + *(type metadata accessor for Source() + 28)) == 1)
      {
        v43 = v0[5];
        v44 = v0[3];
        _s24IntelligencePlatformCore19OrganizationMatcherV11entityClass0aB006EntityG0Vvg_0();
        v45 = *(v3 + v6);
        v46 = swift_task_alloc();
        *(v46 + 16) = v41;
        sub_1C43FC6AC();
        sub_1C44C6BB4(v47, v48, v49, v50, v51, v46);
        v40(v43, v44);
LABEL_7:
      }

LABEL_8:
      v53 = v0[8];
      v52 = v0[9];
      v55 = v0[6];
      v54 = v0[7];
      v56 = v0[5];
      v57 = v0[2];
      v58 = v0[3];
      sub_1C4EF9AE8();
      sub_1C43FBD94();
      sub_1C44C7610();
      LOBYTE(v65[0]) = *(v3 + v63);
      _s24IntelligencePlatformCore19OrganizationMatcherV11entityClass0aB006EntityG0Vvg_0();
      sub_1C43FBD94();
      sub_1C440BAA8(v59, v60, v61, v58);
      sub_1C44A8814(v65, v52);
      sub_1C4420C3C(v52, &qword_1EC0B8568, &unk_1C4F319B0);

      v62 = v0[1];

      result = v62();
      break;
    default:
      v65[0] = 0;
      v65[1] = 0xE000000000000000;
      sub_1C4F02248();
      MEMORY[0x1C6940010](0xD000000000000021, 0x80000001C4FAEA50);
      sub_1C448D934(*(v3 + v6));
      result = sub_1C4F024A8();
      break;
  }

  return result;
}

uint64_t sub_1C44C6C0C(uint64_t a1, void (**a2)(char *, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(uint64_t, uint64_t, uint64_t), uint64_t a8)
{
  v67 = a7;
  LODWORD(v74) = a6;
  v76 = a5;
  v75 = a2;
  v77 = sub_1C456902C(&qword_1EC0BA588, &unk_1C4F142B0);
  v73 = *(v77 - 8);
  v12 = *(v73 + 64);
  v13 = MEMORY[0x1EEE9AC00](v77);
  v60 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v60 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v60 - v18;
  v20 = sub_1C456902C(&unk_1EC0BCAC0, &qword_1C4F1F438);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v60 - v22;
  v81 = type metadata accessor for EntityPair(0);
  v24 = *(*(v81 - 8) + 64);
  MEMORY[0x1EEE9AC00](v81);
  v26 = &v60 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v88) = a4;

  v28 = v78;
  v29 = sub_1C44AD0F8(v27, a3, &v88, 0, v76, v74 & 1);
  if (v28)
  {
  }

  v31 = v29;
  v80 = a1;
  v65 = v23;
  v62 = v17;
  v63 = v19;
  v66 = a4;
  v76 = type metadata accessor for EntityTriple(0);
  v32 = v81;
  v61 = a8;
  v79 = v26;
  v64 = v31;
  v75 = (v73 + 8);
  while (1)
  {
    v33 = v65;
    sub_1C44AD7D0();
    v34 = v66;
    if (sub_1C44157D4(v33, 1, v32) == 1)
    {
      break;
    }

    sub_1C4471E9C(v33, v26);
    v86 = &type metadata for SourcedTripleColumn;
    v87 = sub_1C44964E4();
    LOBYTE(v85[0]) = 8;
    v35 = 0xE700000000000000;
    v36 = 0x6E776F6E6B6E75;
    v37 = v87;
    switch(v34)
    {
      case 1:
        v35 = 0xE400000000000000;
        v36 = 1819047270;
        break;
      case 2:
        v35 = 0xE500000000000000;
        v36 = 0x61746C6564;
        break;
      case 3:
        v35 = 0xEA0000000000676ELL;
        v36 = 0x69686374614D6F74;
        break;
      default:
        break;
    }

    v83 = MEMORY[0x1E69E6158];
    v84 = MEMORY[0x1E69A0130];
    v82[0] = v36;
    v82[1] = v35;
    v38 = sub_1C4EFB298();
    v89 = v38;
    v39 = MEMORY[0x1E699FE60];
    v90 = MEMORY[0x1E699FE60];
    sub_1C4422F90(&v88);
    sub_1C4EFBB28();
    sub_1C4420C3C(v82, &qword_1EC0C5040, &qword_1C4F0F950);
    sub_1C440962C(v85);
    v78 = type metadata accessor for EntityTriple;
    v40 = sub_1C44AC538(&qword_1EDDF8DB0, type metadata accessor for EntityTriple);
    v41 = v62;
    v73 = v40;
    sub_1C4EFAE28();
    sub_1C440962C(&v88);
    v86 = &type metadata for SourcedTripleColumn;
    v87 = v37;
    LOBYTE(v85[0]) = 0;
    v42 = v81;
    v43 = *(v81 + 20);
    v44 = sub_1C4EFF0C8();
    v83 = v44;
    v71 = sub_1C44AC538(&qword_1EDDFCCA0, MEMORY[0x1E69A9810]);
    v84 = v71;
    v45 = sub_1C4422F90(v82);
    v46 = *(v44 - 8);
    v72 = *(v46 + 16);
    v70 = v46 + 16;
    v72(v45, &v26[v43], v44);
    v74 = v38;
    v89 = v38;
    v90 = v39;
    sub_1C4422F90(&v88);
    sub_1C4EFBB28();
    sub_1C4420C3C(v82, &qword_1EC0C5040, &qword_1C4F0F950);
    sub_1C440962C(v85);
    sub_1C4401CBC(&qword_1EDDFA2C8, &qword_1EC0BA588, &unk_1C4F142B0);
    v47 = v63;
    v48 = v77;
    sub_1C4EFB438();
    v49 = *v75;
    (*v75)(v41, v48);
    sub_1C440962C(&v88);
    v50 = sub_1C4401CBC(&qword_1EDDFA2D8, &qword_1EC0BA588, &unk_1C4F142B0);
    v51 = sub_1C44AC538(&qword_1EDDF8DA0, v78);
    v69 = v50;
    v68 = v51;
    v78 = sub_1C4EFAFE8();
    v49(v47, v48);
    v91 = 0;
    v52 = *(v42 + 24);
    if (qword_1EDDFA100 != -1)
    {
      swift_once();
    }

    sub_1C442B738(v44, qword_1EDE2DC60);
    sub_1C44AC538(&qword_1EDDFCC98, MEMORY[0x1E69A9810]);
    v53 = v79;
    if (sub_1C4F010B8())
    {
      v54 = v80;
    }

    else
    {
      v86 = sub_1C4EFBD38();
      v87 = MEMORY[0x1E69A0050];
      sub_1C4422F90(v85);
      sub_1C4EFBD48();
      v83 = v44;
      v84 = v71;
      v55 = sub_1C4422F90(v82);
      v72(v55, (v53 + v52), v44);
      v89 = v74;
      v90 = MEMORY[0x1E699FE60];
      sub_1C4422F90(&v88);
      sub_1C4EFBB28();
      sub_1C4420C3C(v82, &qword_1EC0C5040, &qword_1C4F0F950);
      sub_1C440962C(v85);
      v56 = v60;
      sub_1C4EFAE28();
      sub_1C440962C(&v88);
      v54 = v80;
      v57 = v77;
      v58 = sub_1C4EFAFE8();
      v49(v56, v57);
      v91 = v58;
    }

    v59 = objc_autoreleasePoolPush();
    sub_1C44DC904(v67, v61, v78, &v91, v54, v54);
    v32 = v81;
    objc_autoreleasePoolPop(v59);

    v26 = v79;
    sub_1C44DBD04(v79, type metadata accessor for EntityPair);
  }

  return sub_1C4420C3C(v33, &unk_1EC0BCAC0, &qword_1C4F1F438);
}

void sub_1C44C7610()
{
  sub_1C43FBD3C();
  sub_1C4495194(v9, v10, v11);
  v12 = sub_1C43FECE0();
  v13 = type metadata accessor for ConstructionProgressTokens(v12);
  v68 = sub_1C43FCDF8(v13);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v17 = sub_1C4409ACC(v16, v66);
  v18 = sub_1C4412DFC(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1C4416DF8();
  v21 = type metadata accessor for OrganizationMatcher();
  v22 = sub_1C44101F8(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C4402CA8();
  if (v0)
  {
    sub_1C4424C80();
  }

  else
  {
    v26 = sub_1C44BBDB4(objc_autoreleasePoolPush());
    sub_1C44099C4(v26);
    v1 = sub_1C4EF93C8();
    v2 = &qword_1EC0BA4A8;
    v0 = &dword_1C4F141D0;
    v27 = sub_1C4404C28();
    sub_1C456902C(v27, v28);
    sub_1C442C5A4();
    sub_1C4401CBC(v29, v30, &dword_1C4F141D0);
    sub_1C4414180();
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v67);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v31 = sub_1C4F00978();
        sub_1C43FCEE8(v31, qword_1EDE2DE10);
        v32 = sub_1C44623A0();
        sub_1C4430900(v32, v3);
        v33 = sub_1C4F00968();
        sub_1C4F01CD8();
        v34 = sub_1C44016D0();
        if (os_log_type_enabled(v34, v35))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C440D148();
          v36 = swift_slowAlloc();
          sub_1C44305A4(v36);
          *v6 = 136315138;
          v37 = sub_1C4404BB0();
          sub_1C4430900(v37, v38);
          sub_1C447E868(v3, type metadata accessor for OrganizationMatcher);
          sub_1C44C63E8();
          v39 = sub_1C440CAFC();
          sub_1C447E868(v39, type metadata accessor for OrganizationMatcher);
          v40 = sub_1C447CB90();
          sub_1C441D828(v40, v5, v41);
          sub_1C44D44F0();
          *(v6 + 4) = v4;
          sub_1C448DFA8(&dword_1C43F8000, v42, v43, "%s failed to update progress token");
          sub_1C440962C(v7);
          v44 = sub_1C4416E14();
          MEMORY[0x1C6942830](v44);
          v45 = sub_1C44068C0();
          MEMORY[0x1C6942830](v45);
        }

        else
        {
          sub_1C44AB11C();
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    sub_1C449DA48();
    objc_autoreleasePoolPop(v67);
    sub_1C4488398();
  }

  sub_1C443EEB8();
  sub_1C44C7AC4(v46);
  sub_1C4485D04();
  if (!v0)
  {
    sub_1C4420C3C(&v69, &qword_1EC0BA490, &unk_1C4F53630);
    v1 = 0;
    if (v3)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v47 = sub_1C4402D10();
  v48(v47);
  sub_1C4456268();
  if ((v3 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v1, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  sub_1C441E060();
  switch(v49)
  {
    case 1:
      sub_1C441B7B0();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      sub_1C4402D44();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C440417C();
      sub_1C44A3C98();
      if (v2)
      {
LABEL_18:
        _s24IntelligencePlatformCore19OrganizationMatcherV11entityClass0aB006EntityG0Vvg_0();
        v50 = *(v8 + 24);
        v51 = *(v6 + 20);
        sub_1C441925C();
        sub_1C447F7C8(v52);
        *(v7 + *(v8 + 20)) = 2;
        sub_1C43FC08C();
        v54 = sub_1C4480738(v53);
        sub_1C4417F8C(v54);
        sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v55 = sub_1C4404CB4();
        sub_1C4412DCC(v55, xmmword_1C4F0D130);
        sub_1C4415F88();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v56 = sub_1C43FFEF0();
      }

      else
      {
        sub_1C445FCEC();
        _s24IntelligencePlatformCore19OrganizationMatcherV11entityClass0aB006EntityG0Vvg_0();
        sub_1C445C11C();
        v58 = *(v6 + 20);
        sub_1C441925C();
        sub_1C445BA70(v59);
        sub_1C43FD294(*(v2 + 5));
        v60 = type metadata accessor for PhaseStores();
        sub_1C4417F8C(v60);
        sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v61 = sub_1C4405904();
        sub_1C44068A0(v61, xmmword_1C4F0D130);
        sub_1C4430900(v3, v62);
        v63 = sub_1C4415F88();
        sub_1C449498C(v63);
        swift_setDeallocating();
        sub_1C4495394();
        sub_1C440A77C();
        v56 = v3;
      }

      sub_1C447E868(v56, v57);
      v64 = sub_1C43FD2BC();
      sub_1C441DFEC(v64, v65);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

uint64_t sub_1C44C7AC4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  v3 = sub_1C456902C(&unk_1EC0BAC20, &unk_1C4F141E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v36[-1] - v5;
  v7 = type metadata accessor for ConstructionProgressTokens(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&unk_1EC0BA4B8, &unk_1C4F16F60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v36[-1] - v13;
  v15 = type metadata accessor for ProgressTokens(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v36[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for OrganizationMatcher();
  switch(*(v2 + *(v19 + 24)))
  {
    case 2:

      goto LABEL_4;
    default:
      v20 = sub_1C4F02938();

      if (v20)
      {
LABEL_4:
        v21 = *(v2 + *(type metadata accessor for PhaseStores() + 24));
        v37 = v19;
        v38 = sub_1C447CB3C(&qword_1EDDF4AF0, type metadata accessor for OrganizationMatcher);
        v22 = sub_1C4422F90(v36);
        sub_1C4430900(v2, v22);
        sub_1C44FEF34(v36, 0);
        sub_1C440962C(v36);
        if (sub_1C44157D4(v14, 1, v15) == 1)
        {
          v23 = &unk_1EC0BA4B8;
          v24 = &unk_1C4F16F60;
          v25 = v14;
LABEL_8:
          result = sub_1C4420C3C(v25, v23, v24);
          v30 = v35;
          *(v35 + 32) = 0;
          *v30 = 0u;
          v30[1] = 0u;
          return result;
        }

        sub_1C449F338(v14, v18);
        v31 = v35;
        *(v35 + 24) = v15;
        v31[4] = &off_1F43EE918;
        v32 = sub_1C4422F90(v31);
        v33 = v18;
      }

      else
      {
        v26 = v10;
        v27 = *(v2 + *(type metadata accessor for PhaseStores() + 24));
        v37 = v19;
        v38 = sub_1C447CB3C(&qword_1EDDF4AF0, type metadata accessor for OrganizationMatcher);
        v28 = sub_1C4422F90(v36);
        sub_1C4430900(v2, v28);
        sub_1C449D50C(v36, 0);
        sub_1C440962C(v36);
        if (sub_1C44157D4(v6, 1, v7) == 1)
        {
          v23 = &unk_1EC0BAC20;
          v24 = &unk_1C4F141E0;
          v25 = v6;
          goto LABEL_8;
        }

        sub_1C449F338(v6, v26);
        v34 = v35;
        *(v35 + 24) = v7;
        v34[4] = &off_1F43EE970;
        v32 = sub_1C4422F90(v34);
        v33 = v26;
      }

      return sub_1C449F338(v33, v32);
  }
}

uint64_t TopicMatcher.pipelineType.getter()
{
  result = sub_1C441EF60();
  *v0 = *(v1 + *(result + 24));
  return result;
}

uint64_t TopicMatcher.entityClass.getter()
{
  v2 = *(sub_1C441EF60() + 36);
  v3 = sub_1C4EFD548();
  v4 = sub_1C43FBCE0(v3);
  v6 = *(v5 + 16);

  return v6(v0, v1 + v2, v4);
}

uint64_t TopicMatcher.source.getter()
{
  v2 = *(sub_1C441EF60() + 20);
  sub_1C43FD90C();
  return sub_1C44718CC(v1 + v3, v0);
}

uint64_t TopicMatcher.stageName.getter()
{
  result = sub_1C441EF60();
  *v0 = *(v1 + *(result + 32));
  return result;
}

uint64_t sub_1C44C8044(uint64_t a1, uint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a2;
  sub_1C4401CBC(a3, a4, a5);
  return sub_1C4EFB4D8();
}

uint64_t sub_1C44C8118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4490F60(&qword_1EDDF8D80, type metadata accessor for EntityTriple);

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

void sub_1C44C81AC()
{
  sub_1C43FE96C();
  v77 = v4;
  v78 = v3;
  v88 = v2;
  v89 = v5;
  v87 = v6;
  v8 = v7;
  sub_1C440EDE4();
  v79 = type metadata accessor for Source();
  v9 = sub_1C43FBCE0(v79);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FD2D8();
  v80 = v12;
  v13 = sub_1C4EFF8A8();
  v14 = sub_1C43FCDF8(v13);
  v84 = v15;
  v85 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FD2D8();
  v81 = v18;
  v19 = sub_1C4EFEEF8();
  v92 = sub_1C43FCDF8(v19);
  v93 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v92);
  sub_1C43FBD08();
  v25 = (v23 - v24);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v75 - v27;
  v29 = sub_1C4EFF0C8();
  v30 = sub_1C43FCDF8(v29);
  v86 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBCC4();
  v82 = sub_1C447F834();
  sub_1C43FCDF8(v82);
  v35 = v34;
  v37 = *(v36 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v75 - v39;
  v94 = v8(0);
  sub_1C43FBCE0(v94);
  v42 = *(v41 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v43);
  v90 = &v75 - v44;
  v91 = v1;
  v45 = v1[4];
  v46 = sub_1C4417F50(v1, v1[3]);
  v87(v46);
  v87 = v40;
  v47 = v88;
  sub_1C4F02BC8();
  v83 = v29;
  if (v47)
  {
    v51 = v90;
    sub_1C440962C(v91);
    sub_1C441D6F0();
    if (v1)
    {
      v52 = *&v51[v94[10] + 8];
    }
  }

  else
  {
    v48 = v81;
    v88 = v25;
    v89 = v35;
    sub_1C4419854();
    sub_1C4490F60(v49, v50);
    sub_1C43FE6CC();
    sub_1C4F026C8();
    v53 = v90;
    (*(v86 + 32))(v90, v0, v29);
    sub_1C4405BEC();
    sub_1C442CB58();
    sub_1C4490F60(v54, v55);
    v56 = v92;
    sub_1C442F914();
    v57 = &v53[v94[5]];
    v76 = *(v93 + 32);
    v76(v57, v28, v56);
    sub_1C4401670();
    sub_1C4406FE8();
    sub_1C4490F60(v58, v59);
    v60 = v85;
    sub_1C4F026C8();
    (*(v84 + 32))(&v53[v94[6]], v48, v60);
    v61 = v88;
    sub_1C442F914();
    v62 = v94;
    v76(&v53[v94[7]], v61, v56);
    sub_1C447F524();
    v63 = sub_1C4F02678();
    v64 = &v53[v62[8]];
    *v64 = v63;
    v64[1] = v65;
    sub_1C441FBB8();
    sub_1C4490F60(v66, v67);
    v68 = v80;
    sub_1C4F026C8();
    sub_1C448B210(v68, &v53[v62[9]]);
    v69 = sub_1C4F02678();
    v70 = &v53[v62[10]];
    *v70 = v69;
    v70[1] = v71;
    sub_1C449DAB8();
    sub_1C4F02698();
    *&v53[v62[11]] = v72;
    v95 = 8;
    sub_1C44C8A04();
    sub_1C4F026C8();
    v73 = sub_1C441B9AC();
    v74(v73);
    v53[v62[12]] = v96;
    sub_1C449EEE8();
    sub_1C440962C(v91);
    sub_1C449F22C();
  }

  sub_1C43FBC80();
}

unint64_t sub_1C44C8A04()
{
  result = qword_1EDDF89F0;
  if (!qword_1EDDF89F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF89F0);
  }

  return result;
}

void GraphStore.tripleInsertingTransaction(transactionBody:)(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_pool);
  v16[2] = a1;
  v16[3] = a2;

  sub_1C4418704(sub_1C44C8C4C, v16, v5, v6, v7, v8, v9, v10, v16[0], v16[1]);
  if (v3)
  {

    v17 = v3;
    v11 = v3;
    sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
    if (swift_dynamicCast())
    {

      if (qword_1EDDFFAF0 != -1)
      {
        sub_1C440686C();
        swift_once();
      }

      v12 = sub_1C4F00978();
      sub_1C442B738(v12, qword_1EDE2E088);
      v13 = sub_1C4F00968();
      v14 = sub_1C4F01CF8();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_1C43F8000, v13, v14, "GraphStore: tripleInsertingTransaction rolled back transaction.", v15, 2u);
        MEMORY[0x1C6942830](v15, -1, -1);
      }
    }

    else
    {
    }
  }

  else
  {
  }
}

IntelligencePlatformCore::PipelineType_optional __swiftcall PipelineType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C4F025D8();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

void sub_1C44C8CC4(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t (*)(uint64_t a1), uint64_t))
{
  if (qword_1EDDFFAF0 != -1)
  {
    swift_once();
  }

  v5 = sub_1C4F00978();
  sub_1C442B738(v5, qword_1EDE2E088);
  v6 = sub_1C4F00968();
  v7 = sub_1C4F01CC8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1C43F8000, v6, v7, "GraphStore: tripleInsertingTransaction beginning.", v8, 2u);
    MEMORY[0x1C6942830](v8, -1, -1);
  }

  a2(&v13, sub_1C487F030, a1);

  if (!v2)
  {
    if (v13)
    {
      sub_1C4EFC028();
      v9 = sub_1C4F00968();
      v10 = sub_1C4F01CC8();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        v12 = "GraphStore: tripleInsertingTransaction rolled back.";
LABEL_11:
        _os_log_impl(&dword_1C43F8000, v9, v10, v12, v11, 2u);
        MEMORY[0x1C6942830](v11, -1, -1);
      }
    }

    else
    {
      v9 = sub_1C4F00968();
      v10 = sub_1C4F01CC8();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        v12 = "GraphStore: tripleInsertingTransaction complete.";
        goto LABEL_11;
      }
    }
  }
}

uint64_t sub_1C44C8EE8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C43FBE94();
  v5 = v4(v3);
  sub_1C43FBCE0(v5);
  v7 = *(v6 + 32);
  v8 = sub_1C43FBC98();
  v9(v8);
  return a2;
}

uint64_t sub_1C44C8F40()
{
  sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C4F16D00;
  v1 = *MEMORY[0x1E695C410];
  v2 = *MEMORY[0x1E695C258];
  *(v0 + 32) = *MEMORY[0x1E695C410];
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x1E695C240];
  v4 = *MEMORY[0x1E695C2F0];
  *(v0 + 48) = *MEMORY[0x1E695C240];
  *(v0 + 56) = v4;
  v5 = *MEMORY[0x1E695C230];
  v52 = *MEMORY[0x1E695C390];
  v6 = *MEMORY[0x1E695C390];
  *(v0 + 64) = *MEMORY[0x1E695C230];
  *(v0 + 72) = v6;
  v7 = *MEMORY[0x1E695C310];
  v8 = *MEMORY[0x1E695C300];
  *(v0 + 80) = *MEMORY[0x1E695C310];
  *(v0 + 88) = v8;
  v9 = *MEMORY[0x1E695C308];
  v55 = *MEMORY[0x1E695C360];
  v10 = *MEMORY[0x1E695C360];
  *(v0 + 96) = *MEMORY[0x1E695C308];
  *(v0 + 104) = v10;
  v51 = *MEMORY[0x1E695C330];
  v58 = *MEMORY[0x1E695C208];
  v11 = *MEMORY[0x1E695C208];
  *(v0 + 112) = *MEMORY[0x1E695C330];
  *(v0 + 120) = v11;
  v12 = *MEMORY[0x1E695C3A8];
  v57 = *MEMORY[0x1E695C1F0];
  v13 = *MEMORY[0x1E695C1F0];
  *(v0 + 128) = *MEMORY[0x1E695C3A8];
  *(v0 + 136) = v13;
  v53 = *MEMORY[0x1E695C1D0];
  v60 = *MEMORY[0x1E695C318];
  v14 = *MEMORY[0x1E695C318];
  *(v0 + 144) = *MEMORY[0x1E695C1D0];
  *(v0 + 152) = v14;
  v56 = *MEMORY[0x1E695C328];
  v62 = *MEMORY[0x1E695C2C8];
  v15 = *MEMORY[0x1E695C2C8];
  *(v0 + 160) = *MEMORY[0x1E695C328];
  *(v0 + 168) = v15;
  v54 = *MEMORY[0x1E695C1F8];
  v61 = *MEMORY[0x1E695C3D0];
  v16 = *MEMORY[0x1E695C3D0];
  *(v0 + 176) = *MEMORY[0x1E695C1F8];
  *(v0 + 184) = v16;
  v59 = *MEMORY[0x1E695C2B0];
  v63 = *MEMORY[0x1E695C400];
  v17 = *MEMORY[0x1E695C400];
  *(v0 + 192) = *MEMORY[0x1E695C2B0];
  *(v0 + 200) = v17;
  v65 = *MEMORY[0x1E695C278];
  *(v0 + 208) = *MEMORY[0x1E695C278];
  v64 = objc_opt_self();
  v18 = v1;
  v19 = v2;
  v20 = v3;
  v21 = v4;
  v22 = v5;
  v23 = v52;
  v24 = v7;
  v25 = v8;
  v26 = v9;
  v27 = v55;
  v28 = v51;
  v29 = v58;
  v30 = v12;
  v31 = v57;
  v32 = v53;
  v33 = v60;
  v34 = v56;
  v35 = v62;
  v36 = v54;
  v37 = v61;
  v38 = v59;
  v39 = v63;
  v40 = v65;
  v41 = [v64 descriptorForRequiredKeysForStyle_];
  v42 = *MEMORY[0x1E695C348];
  *(v0 + 216) = v41;
  *(v0 + 224) = v42;
  v43 = *MEMORY[0x1E695C350];
  v44 = *MEMORY[0x1E695C340];
  *(v0 + 232) = *MEMORY[0x1E695C350];
  *(v0 + 240) = v44;
  v45 = *MEMORY[0x1E695C358];
  *(v0 + 248) = *MEMORY[0x1E695C358];
  v46 = v42;
  v47 = v43;
  v48 = v44;
  v49 = v45;
  return v0;
}

uint64_t sub_1C44C92F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a5;
  v15[5] = a6;
  v15[6] = a7;
  v15[7] = a8;
  v15[8] = a10;
  v15[9] = a1;
  v15[10] = a2;
  v15[11] = a11;
  result = sub_1C44C5224(sub_1C44CB450, v15);
  if (!v11)
  {
    *a9 = *a5;
  }

  return result;
}

uint64_t sub_1C44C936C(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v7 = type metadata accessor for EntityBlock(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1C43FBCC4();
  v12 = v11 - v10;
  v13 = sub_1C4EFF0C8();
  v14 = sub_1C43FCDF8(v13);
  v41 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBCC4();
  v20 = v19 - v18;
  v21 = *a3;
  v22 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v23 = a1(v22);

  if (!v4)
  {
    v25 = a4;
    if (qword_1EDDFFAF0 != -1)
    {
LABEL_13:
      sub_1C440686C();
      swift_once();
    }

    v26 = sub_1C4F00978();
    sub_1C442B738(v26, qword_1EDE2E088);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v27 = sub_1C4F00968();
    v39 = sub_1C4F01CB8();
    v28 = v13;
    v13 = v41;
    if (os_log_type_enabled(v27, v39))
    {
      v35 = v28;
      v29 = swift_slowAlloc();
      sub_1C43FEC60();
      v38 = swift_slowAlloc();
      v42 = v38;
      *v29 = 134218242;
      *(v29 + 4) = *(v23 + 16);
      v37 = v29;

      *(v29 + 12) = 2080;
      swift_beginAccess();
      v36 = v27;
      (*(v41 + 16))(v20, v25, v35);
      sub_1C4490890(&qword_1EDDFE810, MEMORY[0x1E69A9810]);
      v30 = sub_1C4F02858();
      v32 = v31;
      v13 = v41 + 8;
      (*(v41 + 8))(v20, v35);
      v33 = sub_1C441D828(v30, v32, &v42);

      *(v37 + 14) = v33;
      _os_log_impl(&dword_1C43F8000, v36, v39, "GraphStore: batchMappingInsert: %ld blocks for %s", v37, 0x16u);
      sub_1C440962C(v38);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {
    }

    v25 = 0;
    v34 = *(v23 + 16);
    while (v34 != v25)
    {
      if (v25 >= *(v23 + 16))
      {
        __break(1u);
        goto LABEL_13;
      }

      sub_1C4490938(v23 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v25, v12, type metadata accessor for EntityBlock);
      sub_1C44D0D54();
      ++v25;
      sub_1C4491300(v12, type metadata accessor for EntityBlock);
    }
  }

  return result;
}

id sub_1C44C9794()
{
  v16[1] = *MEMORY[0x1E69E9840];
  v1 = [objc_opt_self() predicateForMeContact];
  sub_1C456902C(&unk_1EC0BABE0, &unk_1C4F16F20);
  v2 = sub_1C4F01658();
  v16[0] = 0;
  v3 = [v0 unifiedContactsMatchingPredicate:v1 keysToFetch:v2 error:v16];

  v4 = v16[0];
  if (v3)
  {
    sub_1C4461BB8(0, &qword_1EDDFA430, 0x1E695CD58);
    v5 = sub_1C4F01678();
    v6 = v4;
  }

  else
  {
    v7 = v16[0];
    v8 = sub_1C4EF97A8();

    swift_willThrow();
    if (qword_1EDDFD028 != -1)
    {
      sub_1C4419274();
      swift_once();
    }

    v9 = sub_1C4F00978();
    sub_1C442B738(v9, qword_1EDE2DE10);
    v3 = sub_1C4F00968();
    v10 = sub_1C4F01CF8();
    if (os_log_type_enabled(v3, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1C43F8000, v3, v10, "CNContactTransformer: Error querying me contact", v11, 2u);
      sub_1C43FBE2C();
    }

    v5 = MEMORY[0x1E69E7CC0];
  }

  if (sub_1C4428DA0(v5))
  {
    sub_1C4431590(0, (v5 & 0xC000000000000001) == 0);
    if ((v5 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1C6940F90](0, v5);
    }

    else
    {
      v12 = *(v5 + 32);
    }

    v13 = v12;
  }

  else
  {

    v13 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t sub_1C44C99DC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t (*a6)(void), void (*a7)(uint64_t), uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t *, uint64_t), unint64_t *a10, void (*a11)(uint64_t), uint64_t a12)
{
  v302 = a8;
  v294 = a7;
  v318 = a6;
  v317 = a5;
  v301 = a12;
  v300 = a11;
  v299 = a10;
  v298 = a9;
  v329 = sub_1C4EFEEF8();
  v17 = sub_1C43FCDF8(v329);
  v19 = v18;
  v340 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBD08();
  v24 = v22 - v23;
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBF38();
  v338 = v26;
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v286 - v29;
  MEMORY[0x1EEE9AC00](v28);
  sub_1C441D15C();
  v31 = type metadata accessor for EntityBlock(0);
  v333 = sub_1C43FCDF8(v31);
  v334 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v333);
  sub_1C43FBD08();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FD230();
  v291 = v37;
  v289 = a2;
  v290 = a3;
  v38 = sub_1C456902C(a2, a3);
  v39 = sub_1C43FBD18(v38);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FD2C8(&v286 - v42);
  v314 = sub_1C4EFF0C8();
  v43 = sub_1C43FCDF8(v314);
  v45 = v44;
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FBD08();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v49);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v50);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v51);
  sub_1C43FD230();
  sub_1C43FD2C8(v52);
  v311 = type metadata accessor for Blocker();
  v53 = sub_1C43FBCE0(v311);
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v53);
  sub_1C43FBD08();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v56);
  sub_1C43FD230();
  v58 = sub_1C43FD2C8(v57);
  v59 = a4(v58);
  v60 = v30;
  v61 = sub_1C43FCDF8(v59);
  v304 = v62;
  v64 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v61);
  sub_1C43FBD08();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v65);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v66);
  sub_1C43FD230();
  v339 = v67;
  LODWORD(v315) = 0;
  v68 = 0;
  v307 = a1;
  v305 = *(a1 + 16);
  v343 = (v19 + 16);
  v69 = (v19 + 8);
  v313 = (v45 + 2);
  v288 = v45;
  v312 = (v45 + 1);
  v70 = MEMORY[0x1E69E7CC0];
  *&v71 = 136380675;
  v310 = v71;
  v321 = v72;
  v336 = v30;
  v341 = v24;
  v320 = v12;
  v342 = v69;
  while (1)
  {
    v73 = &unk_1C4F0C000;
    if (v68 == v305)
    {
      break;
    }

    sub_1C43FBF6C();
    v76 = *(v75 + 72);
    v306 = v68;
    sub_1C4430900(v307 + v74 + v76 * v68, v339);
    if (sub_1C4F01948())
    {
      if (qword_1EDDFD028 != -1)
      {
        goto LABEL_93;
      }

      goto LABEL_77;
    }

    v77 = *(v335 + v311[9]);
    v325 = *(v77 + 16);
    if (v325)
    {
      v78 = 0;
      v323 = v321[5];
      v322 = v77 + 32;
      v324 = v77;
      while (1)
      {
        if (v78 >= *(v77 + 16))
        {
          __break(1u);
LABEL_87:
          v326 = v45;
          v253 = v70;
          v254 = v311;
          v255 = v311[5];
          v256 = v335;
          sub_1C4EFD2F8();
          v257 = sub_1C4F00FF8();
          v343 = v258;
          v344 = v257;

          v259 = v333;
          v260 = *(v333 + 20);
          v261 = sub_1C4EFD548();
          sub_1C43FCE50(v261);
          v263 = v291;
          v264 = v256 + v255;
          v70 = v253;
          (*(v262 + 16))(v291 + v260, v264);
          v265 = sub_1C4EFF048();
          v267 = v266;
          sub_1C4EF9AE8();
          v268 = *(v256 + v254[11]);
          v269 = v343;
          *v263 = v344;
          v263[1] = v269;
          v270 = (v263 + v259[6]);
          *v270 = v265;
          v270[1] = v267;
          *(v263 + v259[7]) = v271;
          *(v263 + v259[8]) = v268;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_88:
            v273 = *(v70 + 16);
            v272 = *(v70 + 24);
            if (v273 >= v272 >> 1)
            {
              sub_1C44CF6F4(v272 > 1, v273 + 1, 1, v70);
              v70 = v285;
            }

            sub_1C44BBC2C();
            v274 = sub_1C43FE99C();
            v275(v274);
            *(v70 + 16) = v273 + 1;
            sub_1C43FBF6C();
            v277 = *(v276 + 72);
            sub_1C443058C();
            sub_1C449F338(v291, v278);
            sub_1C4488AF0();
            return v70;
          }

LABEL_95:
          v280 = *(v70 + 16);
          v281 = sub_1C43FCEC0();
          sub_1C44CF6F4(v281, v282, v283, v70);
          v70 = v284;
          goto LABEL_88;
        }

        v328 = v70;
        v327 = v78;
        sub_1C442E860(v322 + 40 * v78, &v345);
        v79 = v347;
        sub_1C4409678(&v345, v346);
        v80 = *(v79 + 8);
        v81 = sub_1C4404BB0();
        v83 = v82(v81);
        v84 = *(v83 + 16);
        sub_1C441B31C();
        v86 = sub_1C447CB3C(&qword_1EDDFCCB8, v85);
        v87 = v329;
        v332 = v86;
        v88 = MEMORY[0x1C69407C0](v84, v329);
        v348 = v88;
        v89 = *(v83 + 16);
        if (v89)
        {
          v90 = v341;
          sub_1C43FBF6C();
          v344 = v83;
          v92 = v83 + v91;
          v94 = *(v93 + 72);
          v95 = *(v93 + 16);
          v96 = v87;
          v97 = v342;
          do
          {
            v98 = sub_1C4402CD0();
            v95(v98);
            sub_1C44CB508();
            (*v97)(v90, v96);
            v92 += v94;
            --v89;
          }

          while (v89);

          v99 = v348;
          v60 = v336;
          v100 = v343;
          v87 = v96;
        }

        else
        {
          v99 = v88;

          v100 = v343;
        }

        v101 = v346;
        v70 = v347;
        sub_1C4409678(&v345, v346);
        v102 = (*(v70 + 16))(v101, v70);
        v103 = MEMORY[0x1C69407C0](*(v102 + 16), v87, v332);
        v348 = v103;
        v104 = *(v102 + 16);
        v331 = (v100 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000);
        v24 = v341;
        if (v104)
        {
          v337 = v99;
          sub_1C43FBF6C();
          *&v330 = v102;
          v70 = v102 + v105;
          v107 = *(v106 + 72);
          v344 = *(v106 + 16);
          v108 = v342;
          v109 = v60;
          v110 = v329;
          do
          {
            v111 = sub_1C43FD2BC();
            v344(v111);
            sub_1C44CB508();
            (*v108)(v24, v110);
            v70 += v107;
            --v104;
          }

          while (v104);

          v45 = v348;
          v60 = v109;
          v112 = v344;
          v99 = v337;
        }

        else
        {
          v45 = v103;

          v112 = *v100;
        }

        v113 = v338;
        v114 = v329;
        v344 = v112;
        (v112)(v338, v339 + v323, v329);
        if (*(v99 + 16))
        {
          break;
        }

LABEL_23:

        v337 = *v342;
        v337(v113, v114);
        if (v45[2])
        {
          v125 = v321[7];
          v126 = v45[5];
          v127 = sub_1C4F00FD8();
          v70 = (v45 + 7);
          v128 = ~(-1 << *(v45 + 32));
          v24 = v331;
          while (1)
          {
            v129 = v127 & v128;
            if (((*(v70 + (((v127 & v128) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v127 & v128)) & 1) == 0)
            {
              break;
            }

            (v344)(v341, v45[6] + *(v340 + 72) * v129, v114);
            sub_1C441B31C();
            sub_1C447CB3C(&qword_1EDDFCCB0, v130);
            v131 = sub_1C4F010B8();
            v132 = sub_1C43FC0A8();
            (v337)(v132);
            v127 = v129 + 1;
            if (v131)
            {

              goto LABEL_28;
            }
          }

          sub_1C44755F0();
LABEL_46:
          v60 = v336;
          goto LABEL_47;
        }

        sub_1C44755F0();
LABEL_47:
        v77 = v324;
        v78 = v327 + 1;
        sub_1C440962C(&v345);
        if (v78 == v325)
        {
          goto LABEL_48;
        }
      }

      v337 = v45;
      v115 = *(v99 + 40);
      v116 = sub_1C4F00FD8();
      v117 = v99 + 56;
      v118 = v99;
      v70 = ~(-1 << *(v99 + 32));
      v24 = v331;
      do
      {
        v119 = v116 & v70;
        if (((*(v117 + (((v116 & v70) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v116 & v70)) & 1) == 0)
        {
          v60 = v336;
          v45 = v337;
          v113 = v338;
          goto LABEL_23;
        }

        v120 = v340;
        (v344)(v341, *(v118 + 48) + *(v340 + 72) * v119, v114);
        sub_1C441B31C();
        sub_1C447CB3C(&qword_1EDDFCCB0, v121);
        v122 = sub_1C4F010B8();
        v123 = *(v120 + 8);
        v124 = sub_1C43FC0A8();
        v123(v124);
        v116 = v119 + 1;
      }

      while ((v122 & 1) == 0);

      (v123)(v338, v114);
LABEL_28:
      v133 = v346;
      v134 = v347;
      sub_1C4409678(&v345, v346);
      v135 = v326;
      (*(v134 + 24))(*(v339 + v321[8]), *(v339 + v321[8] + 8), v133, v134);
      sub_1C44755F0();
      v326 = v135;
      v45 = v319;
      if (v135)
      {
        if (qword_1EDDFD028 != -1)
        {
          swift_once();
        }

        v137 = sub_1C4F00978();
        sub_1C442B738(v137, qword_1EDE2DE10);
        sub_1C4430900(v339, v45);
        v24 = sub_1C4F00968();
        v138 = sub_1C4F01CD8();
        v139 = os_log_type_enabled(v24, v138);
        v60 = v336;
        if (v139)
        {
          sub_1C43FECF0();
          v70 = swift_slowAlloc();
          v348 = swift_slowAlloc();
          v140 = v348;
          *v70 = v310;
          v141 = v309;
          v142 = v45;
          v45 = v314;
          (*v313)(v309, v142, v314);
          sub_1C4455938();
          sub_1C442A6B0();
          sub_1C447CB3C(&qword_1EDDFE810, v143);
          v144 = sub_1C4F02858();
          v146 = v145;
          sub_1C44BBC2C();
          v147(v141, v45);
          v148 = sub_1C441D828(v144, v146, &v348);

          *(v70 + 4) = v148;
          _os_log_impl(&dword_1C43F8000, v24, v138, "Blocking not successful for sourcetriple: %{private}s", v70, 0xCu);
          sub_1C440962C(v140);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
          sub_1C44755F0();
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        else
        {
          sub_1C447E868(v45, v318);
        }

        v326 = 0;
        goto LABEL_47;
      }

      v149 = v136;
      v150 = *(v136 + 16);
      if (v150)
      {
        sub_1C44D3F7C();
        LODWORD(v337) = v151;
        v332 = sub_1C4EFD548();
        sub_1C43FBCE0(v332);
        v331 = *(v152 + 16);
        *&v330 = v152 + 16;
        v315 = v149;
        v153 = (v149 + 40);
        v45 = v308;
        do
        {
          v154 = v70;
          v156 = *(v153 - 1);
          v155 = *v153;
          v24 = v333;
          v331(v45 + *(v333 + 20), v344 + v335, v332);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v157 = sub_1C4EFF048();
          v159 = v158;
          sub_1C4EF9AE8();
          *v45 = v156;
          v45[1] = v155;
          v70 = v154;
          v160 = (v45 + *(v24 + 24));
          *v160 = v157;
          v160[1] = v159;
          *(v45 + *(v24 + 28)) = v161;
          *(v45 + *(v24 + 32)) = v337;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v167 = *(v154 + 16);
            v168 = sub_1C43FCEC0();
            sub_1C44CF6F4(v168, v169, v170, v154);
            v70 = v171;
          }

          v163 = *(v70 + 16);
          v162 = *(v70 + 24);
          v60 = v336;
          if (v163 >= v162 >> 1)
          {
            sub_1C44CF6F4(v162 > 1, v163 + 1, 1, v70);
            v70 = v172;
          }

          *(v70 + 16) = v163 + 1;
          sub_1C43FBF6C();
          v165 = *(v164 + 72);
          sub_1C443058C();
          sub_1C449F338(v45, v166);
          v153 += 2;
          --v150;
        }

        while (v150);

        LODWORD(v315) = 1;
        goto LABEL_47;
      }

      goto LABEL_46;
    }

LABEL_48:
    v68 = v306 + 1;
    sub_1C447E868(v339, v318);
  }

  v338 = *(v335 + v311[10]);
  v337 = *(v338 + 16);
  if (v337)
  {
    sub_1C4488AF0();
    sub_1C445BADC();
    if (!v305)
    {
      __break(1u);
      goto LABEL_95;
    }

    v174 = 0;
    v336 = (v338 + 32);
    v332 = (*(v304 + 80) + 32) & ~*(v304 + 80);
    *&v173 = 136315138;
    v330 = v173;
    v73 = v316;
    while (1)
    {
      if (v174 >= *(v338 + 16))
      {
        __break(1u);
LABEL_93:
        sub_1C4419274();
        swift_once();
LABEL_77:
        v235 = sub_1C4F00978();
        sub_1C442B738(v235, qword_1EDE2DE10);
        sub_1C44263BC();
        v236 = v293;
        sub_1C4430900(v335, v293);
        v237 = sub_1C4F00968();
        v238 = sub_1C4F01CF8();
        v239 = sub_1C44016D0();
        if (os_log_type_enabled(v239, v240))
        {
          sub_1C43FECF0();
          v241 = swift_slowAlloc();
          v242 = v70;
          v243 = swift_slowAlloc();
          v345 = v243;
          *v241 = v73[458];
          sub_1C44263BC();
          v244 = v286;
          sub_1C4430900(v236, v286);
          sub_1C447E868(v236, type metadata accessor for Blocker);
          v245 = sub_1C44A1AC0();
          v247 = v246;
          sub_1C447E868(v244, type metadata accessor for Blocker);
          v248 = sub_1C441D828(v245, v247, &v345);

          *(v241 + 4) = v248;
          _os_log_impl(&dword_1C43F8000, v237, v238, "%s going to defer", v241, 0xCu);
          sub_1C440962C(v243);
          v70 = v242;
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        else
        {
          sub_1C447E868(v236, type metadata accessor for Blocker);
        }

        sub_1C4F01828();
        sub_1C447CB3C(&qword_1EDDFCF00, MEMORY[0x1E69E8550]);
        swift_allocError();
        sub_1C4F00EA8();
        swift_willThrow();
        sub_1C447E868(v339, v318);

        return v70;
      }

      v328 = v70;
      v339 = v174;
      sub_1C442E860(&v336[40 * v174], &v345);
      v175 = v297;
      sub_1C4430900(v307 + v332, v297);
      v176 = *v313;
      (*v313)(v73, v175, v24);
      sub_1C4455938();
      if (qword_1EDDFD028 != -1)
      {
        swift_once();
      }

      v177 = sub_1C4F00978();
      sub_1C442B738(v177, qword_1EDE2DE10);
      v178 = sub_1C4F00968();
      v179 = sub_1C4F01CB8();
      if (os_log_type_enabled(v178, v179))
      {
        v180 = swift_slowAlloc();
        *v180 = 0;
        _os_log_impl(&dword_1C43F8000, v178, v179, "Entity blocking for entity", v180, 2u);
        v181 = sub_1C4416E14();
        MEMORY[0x1C6942830](v181);
      }

      v182 = v346;
      v24 = v347;
      v183 = sub_1C4409678(&v345, v346);
      MEMORY[0x1EEE9AC00](v183);
      *(&v286 - 2) = v335;
      v184 = v307;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v185 = v298(v302, &v286 - 4, v184);
      v186 = *(v24 + 8);
      v187 = sub_1C447CB3C(v299, v300);
      v188 = v186(v185, v321, v187, v182, v24);
      if (v45)
      {

        v189 = v296;
        v73 = v316;
        sub_1C445BADC();
        v176();
        v70 = sub_1C4F00968();
        v190 = sub_1C4F01CD8();
        if (os_log_type_enabled(v70, v190))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C4441440();
          v191 = swift_slowAlloc();
          v348 = v191;
          *v24 = v310;
          sub_1C442A6B0();
          sub_1C447CB3C(&qword_1EDDFE810, v192);
          sub_1C4F02858();
          v326 = v45;
          v193 = *v312;
          (*v312)(v189, v314);
          v194 = sub_1C4404BB0();
          sub_1C441D828(v194, v195, v196);
          sub_1C4404CE0();

          *(v24 + 4) = v189;
          _os_log_impl(&dword_1C43F8000, v70, v190, "Blocking not successful for entity: %{private}s", v24, 0xCu);
          sub_1C440962C(v191);
          v73 = v316;
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
          sub_1C445BADC();
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        else
        {

          v193 = *v312;
          (*v312)(v189, v24);
        }

        v193(v73, v24);
        v45 = 0;
        sub_1C44755F0();
      }

      else
      {
        v197 = v188;

        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v198 = sub_1C4F00968();
        v70 = sub_1C4F01CB8();

        os_log_type_enabled(v198, v70);
        sub_1C445BADC();
        if (v199)
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C440D148();
          v200 = swift_slowAlloc();
          v348 = v200;
          *v185 = v330;
          v201 = MEMORY[0x1C6940380](v197, MEMORY[0x1E69E6158]);
          v203 = sub_1C441D828(v201, v202, &v348);

          *(v185 + 4) = v203;
          _os_log_impl(&dword_1C43F8000, v198, v70, "Entity blocking for entity with blocking keys %s", v185, 0xCu);
          sub_1C440962C(v200);
          v204 = sub_1C4416E14();
          MEMORY[0x1C6942830](v204);
          v205 = sub_1C44068C0();
          MEMORY[0x1C6942830](v205);
        }

        sub_1C44755F0();
        v206 = v339;
        v207 = *(v197 + 16);
        if (!v207)
        {
          sub_1C44BBC2C();
          v73 = v316;
          v234(v316, v24);

          v233 = v303;
          goto LABEL_73;
        }

        v326 = 0;
        sub_1C44D3F7C();
        LODWORD(v343) = v208;
        v342 = sub_1C4EFD548();
        sub_1C43FBCE0(v342);
        v210 = *(v209 + 16);
        v340 = v209 + 16;
        v341 = v210;
        v331 = v197;
        v211 = (v197 + 40);
        v212 = v295;
        do
        {
          v213 = *(v211 - 1);
          v214 = *v211;
          v215 = v333;
          v341(v212 + *(v333 + 20), v344 + v335, v342);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v216 = sub_1C4EFF048();
          v218 = v217;
          sub_1C4EF9AE8();
          *v212 = v213;
          v212[1] = v214;
          v219 = (v212 + v215[6]);
          *v219 = v216;
          v219[1] = v218;
          *(v212 + v215[7]) = v220;
          *(v212 + v215[8]) = v343;
          v45 = v70;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v226 = *(v70 + 16);
            v227 = sub_1C43FCEC0();
            sub_1C44CF6F4(v227, v228, v229, v70);
            v45 = v230;
          }

          v222 = v45[2];
          v221 = v45[3];
          if (v222 >= v221 >> 1)
          {
            sub_1C44CF6F4(v221 > 1, v222 + 1, 1, v45);
            v45 = v231;
          }

          v70 = v45;
          v45[2] = v222 + 1;
          sub_1C43FBF6C();
          v224 = *(v223 + 72);
          sub_1C443058C();
          sub_1C449F338(v212, v225);
          v211 += 2;
          --v207;
        }

        while (v207);
        sub_1C44BBC2C();
        v73 = v316;
        v24 = v314;
        v232(v316, v314);

        LODWORD(v315) = 1;
        sub_1C4488AF0();
      }

      v233 = v303;
      v206 = v339;
LABEL_73:
      v174 = v206 + 1;
      sub_1C440962C(&v345);
      if (v174 == v337)
      {
        goto LABEL_82;
      }
    }
  }

  sub_1C4488AF0();
  sub_1C445BADC();
  v233 = v303;
LABEL_82:
  v294(v307);
  if (sub_1C44157D4(v233, 1, v321) == 1)
  {
    sub_1C4420C3C(v233, v289, v290);
  }

  else
  {
    v249 = v288;
    v250 = v287;
    (v288[2])(v287, v233, v24);
    sub_1C4455938();
    v251 = v292;
    (v249[4])(v292, v250, v24);
    if ((v315 & 1) == 0)
    {
      goto LABEL_87;
    }

    sub_1C44BBC2C();
    v252(v251, v24);
  }

  return v70;
}