uint64_t (*sub_1C4B5A6C0())()
{
  v1 = sub_1C443473C();
  v2 = sub_1C4A9A30C(v1);
  sub_1C44507F8(v2);
  v3 = sub_1C4EFEEF8();
  v0[4] = v3;
  sub_1C43FCDF8(v3);
  v0[5] = v4;
  v6 = sub_1C4A9A30C(*(v5 + 64));
  v7 = sub_1C442E584(v6);
  v8(v7);
  v9 = sub_1C4404B44();
  v0[7] = sub_1C4B60BE8(v9, v10);
  return sub_1C4B62170;
}

uint64_t (*sub_1C4B5A788())()
{
  v1 = sub_1C443473C();
  v2 = sub_1C4A9A30C(v1);
  sub_1C44507F8(v2);
  v3 = sub_1C4EFF0C8();
  v0[4] = v3;
  sub_1C43FCDF8(v3);
  v0[5] = v4;
  v6 = sub_1C4A9A30C(*(v5 + 64));
  v7 = sub_1C442E584(v6);
  v8(v7);
  v9 = sub_1C4404B44();
  v0[7] = sub_1C4B60D04(v9, v10);
  return sub_1C4B62170;
}

uint64_t (*sub_1C4B5A850())()
{
  v1 = sub_1C443473C();
  v2 = sub_1C4A9A30C(v1);
  sub_1C44507F8(v2);
  v3 = sub_1C4EF9DD8();
  v0[4] = v3;
  sub_1C43FCDF8(v3);
  v0[5] = v4;
  v6 = sub_1C4A9A30C(*(v5 + 64));
  v7 = sub_1C442E584(v6);
  v8(v7);
  v9 = sub_1C4404B44();
  v0[7] = sub_1C4B60E20(v9, v10);
  return sub_1C4B5A918;
}

void sub_1C4B5A91C(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 48);
  v2 = *(*a1 + 56);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v6 = sub_1C4401EF4();
  v7(v6);
  (*(v5 + 8))(v3, v4);
  free(v3);

  free(v1);
}

uint64_t (*sub_1C4B5A990(void *a1, uint64_t a2))()
{
  v4 = sub_1C4A9A30C(0x28uLL);
  *a1 = v4;
  v4[4] = sub_1C4B60FD4(v4, a2);
  return sub_1C4B5A9F4;
}

uint64_t (*sub_1C4B5A9F8(void *a1, uint64_t a2, uint64_t a3))()
{
  v6 = sub_1C4A9A30C(0x28uLL);
  *a1 = v6;
  v6[4] = sub_1C4B61068(v6, a2, a3);
  return sub_1C4B62174;
}

void sub_1C4B5AA6C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  v3 = sub_1C4401EF4();
  v4(v3);

  free(v1);
}

uint64_t SourceEntityMappable.constructPropertyRows(source:sourceId:map:basicProperties:nestedSourceId:pipelineType:)(uint64_t *a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v185 = a7;
  v184 = a6;
  v187 = a5;
  v203 = a3;
  v201 = a2;
  v207 = a1;
  v14 = *(a9 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](a1);
  sub_1C43FBD08();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FD230();
  sub_1C43FD2C8(v20);
  v192 = sub_1C4F00DD8();
  v21 = sub_1C43FCDF8(v192);
  v191 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v25);
  v194 = sub_1C4F00DC8();
  v26 = sub_1C43FCDF8(v194);
  v193 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FD230();
  sub_1C43FD2C8(v31);
  v32 = sub_1C4F01188();
  v33 = sub_1C43FCDF8(v32);
  v199 = v34;
  v200 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v38 = &v174[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v202 = sub_1C4EFD548();
  v39 = sub_1C43FCDF8(v202);
  v41 = v40;
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v174[-v45];
  v198 = sub_1C4EFF0C8();
  v47 = sub_1C43FCDF8(v198);
  v197 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v51);
  sub_1C43FD230();
  sub_1C43FCE30(v52);
  v186 = *a8;
  v53 = *(a10 + 32);
  v208 = a9;
  v205 = a10 + 32;
  v206 = a10;
  v204 = v53;
  *&v210 = v53(a9, a10);
  *(&v210 + 1) = v54;
  v55 = [a4 __swift_objectForKeyedSubscript_];
  sub_1C441D28C();
  swift_unknownObjectRelease();
  if (v11)
  {
    sub_1C4F02078();
    swift_unknownObjectRelease();
  }

  else
  {
    v210 = 0u;
    v211 = 0u;
  }

  sub_1C4441540();
  if (!v56)
  {
    sub_1C4420C3C(&v212, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_11;
  }

  v57 = sub_1C4461BB8(0, &qword_1EC0C3548, 0x1E695DF20);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    if (qword_1EDDFD028 != -1)
    {
      sub_1C4419274();
      swift_once();
    }

    v79 = sub_1C4F00978();
    sub_1C442B738(v79, qword_1EDE2DE10);
    (*(v14 + 16))(v18, v11, v208);
    v80 = sub_1C4F00968();
    sub_1C4F01CD8();
    v81 = sub_1C44016D0();
    if (os_log_type_enabled(v81, v82))
    {
      sub_1C43FECF0();
      v83 = swift_slowAlloc();
      sub_1C43FEC60();
      v84 = swift_slowAlloc();
      sub_1C442A4E4(v84);
      *v83 = 136315138;
      v85 = v208;
      v86 = v204(v208, v206);
      v88 = v87;
      (*(v14 + 8))(v18, v85);
      sub_1C441D828(v86, v88, &v212);
      sub_1C441D28C();

      *(v83 + 4) = v86;
      sub_1C4B62180(&dword_1C43F8000, v89, v90, "Mapping error, missing submap for %s");
      sub_1C440962C(a4);
      v91 = sub_1C43FEF7C();
      MEMORY[0x1C6942830](v91);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {

      (*(v14 + 8))(v18, v208);
    }

    sub_1C45CF650();
    sub_1C441C114();
    v92 = swift_allocError();
    sub_1C44046C4(v92, v93);
    swift_willThrow();
    v94 = v207;
    goto LABEL_17;
  }

  v177 = v57;
  v181 = v14;
  v58 = v209;
  v59 = *(type metadata accessor for Source() + 24);
  if (qword_1EDDFD028 != -1)
  {
    sub_1C4419274();
    swift_once();
  }

  v183 = v58;
  v60 = sub_1C4F00978();
  v61 = sub_1C442B738(v60, qword_1EDE2DE10);
  v62 = *(v41 + 16);
  v63 = v207;
  v180 = v59;
  v64 = v207 + v59;
  v65 = v202;
  v179 = v41 + 16;
  v178 = v62;
  v62(v46, v64, v202);
  v66 = v203;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v182 = v61;
  v67 = sub_1C4F00968();
  v68 = sub_1C4F01CB8();

  if (os_log_type_enabled(v67, v68))
  {
    v69 = v65;
    v70 = swift_slowAlloc();
    v176 = swift_slowAlloc();
    v212 = v176;
    *v70 = 136381187;
    v71 = v201;
    *(v70 + 4) = sub_1C441D828(v201, v203, &v212);
    *(v70 + 12) = 2080;
    sub_1C4426E60();
    sub_1C44CD2C8(v72, v73);
    v175 = v68;
    v74 = sub_1C4F02858();
    v75 = v11;
    v77 = v76;
    (*(v41 + 8))(v46, v69);
    v78 = sub_1C441D828(v74, v77, &v212);
    v11 = v75;

    *(v70 + 14) = v78;
    *(v70 + 22) = 1024;
    *(v70 + 24) = 0;
    _os_log_impl(&dword_1C43F8000, v67, v175, "Source: generating identifier for: %{private}s : %s : %{BOOL}d", v70, 0x1Cu);
    swift_arrayDestroy();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    v66 = v203;
    v63 = v207;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {

    v99 = *(v41 + 8);
    v100 = sub_1C4402CD0();
    v101(v100);
    v71 = v201;
  }

  v102 = *v63;
  v103 = v63[1];
  v212 = v71;
  v213 = v66;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v102, v103);
  v105 = v212;
  v104 = v213;
  sub_1C4F01178();
  v106 = sub_1C4F01148();
  v108 = v107;
  (*(v199 + 8))(v38, v200);
  if (v108 >> 60 == 15)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v109 = sub_1C4F00968();
    v110 = sub_1C4F01CD8();

    if (os_log_type_enabled(v109, v110))
    {
      sub_1C43FECF0();
      swift_slowAlloc();
      sub_1C443019C();
      v111 = swift_slowAlloc();
      sub_1C442A4E4(v111);
      *v71 = 136380675;
      v112 = sub_1C441D828(v105, v104, &v212);

      *(v71 + 4) = v112;
      _os_log_impl(&dword_1C43F8000, v109, v110, "Source: failed to encode identifier as UTF8 data: %{private}s", v71, 0xCu);
      sub_1C440962C(v106);
      v113 = sub_1C43FEF7C();
      MEMORY[0x1C6942830](v113);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {
    }

    v142 = v181;
    v143 = v195;
    (*(v181 + 16))(v195, v11, v208);
    v144 = sub_1C4F00968();
    sub_1C4F01CD8();
    v145 = sub_1C44016D0();
    if (os_log_type_enabled(v145, v146))
    {
      sub_1C43FECF0();
      v147 = swift_slowAlloc();
      sub_1C43FEC60();
      v148 = swift_slowAlloc();
      sub_1C442A4E4(v148);
      *v147 = 136315138;
      v149 = v204(v208, v206);
      v151 = v150;
      v152 = *(v142 + 8);
      v153 = sub_1C43FCE84();
      v154(v153);
      sub_1C441D828(v149, v151, &v212);
      sub_1C441D28C();

      *(v147 + 4) = v149;
      sub_1C4B62180(&dword_1C43F8000, v155, v156, "Mapping error, failed to generate EntityIdentifier for %s");
      sub_1C440962C(v106);
      v157 = sub_1C43FEF7C();
      MEMORY[0x1C6942830](v157);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {

      (*(v142 + 8))(v143, v208);
    }

    return MEMORY[0x1E69E7CC0];
  }

  sub_1C441641C();
  sub_1C44CD2C8(v114, v115);
  v116 = v189;
  v117 = v192;
  sub_1C43FD024();
  sub_1C4F00DB8();
  v118 = sub_1C4462494();
  sub_1C44344B8(v118, v119);
  v120 = sub_1C4462494();
  sub_1C4498FD8(v120, v121);
  v122 = sub_1C4462494();
  sub_1C441DFEC(v122, v123);
  v124 = v190;
  sub_1C43FD024();
  sub_1C4F00DA8();
  sub_1C43FFB20(&v214);
  v125(v116, v117);
  v178(v188, v63 + v180, v202);
  sub_1C445140C(&v215);
  v127 = *(v126 + 16);
  v128 = sub_1C4404B44();
  v129 = v194;
  v130(v128);
  sub_1C4EFF028();
  v131 = sub_1C4462494();
  sub_1C441DFEC(v131, v132);
  (*(v116 + 8))(v124, v129);
  v133 = *(v197 + 32);
  v134 = v196;
  v135 = sub_1C440DE18();
  v136(v135);
  sub_1C442023C();
  *&v210 = v137;
  *(&v210 + 1) = v138;
  v139 = sub_1C4F029C8();
  v140 = v183;
  v141 = [v183 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v141)
  {
    sub_1C4F02078();
    swift_unknownObjectRelease();
  }

  else
  {
    v210 = 0u;
    v211 = 0u;
  }

  v158 = v203;
  sub_1C4441540();
  v94 = v207;
  if (!v159)
  {
    sub_1C4420C3C(&v212, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_38;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_38:
    LOBYTE(v212) = v186;
    v160 = SourceEntityMappable.constructRows(entityIdentifier:source:sourceId:map:basicProperties:pipelineType:)(v134, v94, v201, v158, v140, v187, &v212);
    goto LABEL_36;
  }

  if (v185)
  {
    LOBYTE(v212) = v186;
    sub_1C4B5D764(v184, v185, v140, v134, v201, v158, v94, v187, &v212, v208, v206);
LABEL_36:
    v97 = v160;
    v161 = sub_1C441B048();
    v162(v161);

    return v97;
  }

  v163 = sub_1C4F00968();
  sub_1C4F01CD8();
  v164 = sub_1C44016D0();
  if (os_log_type_enabled(v164, v165))
  {
    v166 = swift_slowAlloc();
    *v166 = 0;
    sub_1C441253C();
    _os_log_impl(v167, v168, v169, v170, v166, 2u);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  sub_1C45CF650();
  sub_1C441C114();
  v92 = swift_allocError();
  sub_1C44060DC(v92, v171);
  swift_willThrow();

  v172 = sub_1C441B048();
  v173(v172);
LABEL_17:
  v95 = v94[1];
  v212 = *v94;
  v213 = v95;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](32, 0xE100000000000000);
  v96 = v204(v208, v206);
  MEMORY[0x1C6940010](v96);

  sub_1C4B5B968(v92);

  return MEMORY[0x1E69E7CC0];
}

void sub_1C4B5B968(void *a1)
{
  if (qword_1EDDFD028 != -1)
  {
    sub_1C4419274();
    swift_once();
  }

  v3 = sub_1C4F00978();
  sub_1C442B738(v3, qword_1EDE2DE10);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v4 = a1;
  v5 = sub_1C4F00968();
  v6 = sub_1C4F01CD8();

  if (os_log_type_enabled(v5, v6))
  {
    swift_slowAlloc();
    sub_1C4423808();
    v22 = swift_slowAlloc();
    *v1 = 136380931;
    v7 = sub_1C4404C28();
    *(v1 + 4) = sub_1C441D828(v7, v8, v9);
    *(v1 + 12) = 2080;
    v10 = a1;
    sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
    v11 = sub_1C4F01198();
    v13 = sub_1C441D828(v11, v12, &v22);

    *(v1 + 14) = v13;
    _os_log_impl(&dword_1C43F8000, v5, v6, "Mapping error attempting to construct rows for %{private}s due to: %s", v1, 0x16u);
    swift_arrayDestroy();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830](v14, v15);
    v16 = sub_1C43FEDE8();
    MEMORY[0x1C6942830](v16);
  }

  v17 = sub_1C4F01108();
  sub_1C456902C(&qword_1EC0BA6C0, &unk_1C4F14600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0CE60;
  *(inited + 32) = 0x726F727265;
  *(inited + 40) = 0xE500000000000000;
  v22 = a1;
  v19 = a1;
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  sub_1C4F01198();
  v20 = sub_1C4F01108();

  *(inited + 48) = v20;
  *(inited + 56) = 0x747865746E6F63;
  *(inited + 64) = 0xE700000000000000;
  sub_1C4404C28();
  *(inited + 72) = sub_1C4F01108();
  sub_1C4461BB8(0, qword_1EDDFCDD0, 0x1E69E58C0);
  sub_1C4F00F28();
  v21 = sub_1C4F00EC8();

  AnalyticsSendEvent();
}

uint64_t sub_1C4B5BC4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C4415EA8();
  result = sub_1C4F01FC8();
  v5 = *(result + 16);
  if (v5 < 3)
  {
    v25 = 0;
LABEL_50:

    return v25;
  }

  v26 = result;
  v6 = (result + 88);
  v7 = 3;
  v8 = 31868;
  v9 = 0xE200000000000000;
  v10 = *(result + 16);
  while ((v7 - 2) < v10)
  {
    if ((v7 - 1) >= v10)
    {
      goto LABEL_52;
    }

    v11 = *(v6 - 5);
    v12 = *(v6 - 4);
    v13 = *(v6 - 3);
    v14 = *(v6 - 2);
    v15 = v11 == 15649 && v12 == 0xE200000000000000;
    if (v15 || (v16 = *(v6 - 5), v17 = *(v6 - 4), result = sub_1C4F02938(), (result & 1) != 0))
    {
      v18 = v8 == 31868 && v9 == 0xE200000000000000;
      if (v18 || (result = sub_1C4F02938(), (result & 1) != 0))
      {
        if (v13 != a3 || v14 != a4)
        {
          result = sub_1C4F02938();
          if ((result & 1) == 0)
          {
            goto LABEL_48;
          }
        }

        goto LABEL_42;
      }

LABEL_37:
      if (v8 != 9766 || v9 != 0xE200000000000000)
      {
        result = sub_1C4F02938();
      }

      goto LABEL_42;
    }

    v20 = v11 == 15677 && v12 == 0xE200000000000000;
    if (v20 || (result = sub_1C4F02938(), (result & 1) != 0))
    {
      if (v8 != 31868 || v9 != 0xE200000000000000)
      {
        result = sub_1C4F02938();
        if ((result & 1) == 0)
        {
          goto LABEL_37;
        }
      }

      v22 = v13 == a3 && v14 == a4;
      if (v22 || (result = sub_1C4F02938(), (result & 1) != 0))
      {
LABEL_48:
        v25 = 1;
        goto LABEL_49;
      }
    }

LABEL_42:
    if (v7 < v5)
    {

      v10 = *(v26 + 16);
      if (v7 >= v10)
      {
        goto LABEL_53;
      }

      v8 = *(v6 - 1);
      v9 = *v6;
      result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    v24 = v7 + 3;
    v7 += 4;
    v6 += 8;
    if (v24 >= v5)
    {
      v25 = 0;
LABEL_49:

      goto LABEL_50;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
  return result;
}

uint64_t SourceEntityMappable.constructRows(entityIdentifier:source:sourceId:map:basicProperties:pipelineType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, unsigned __int8 *a7)
{
  v8 = v7;
  v345 = a5;
  v330 = a3;
  v331 = a4;
  v329 = a2;
  v333 = a1;
  v11 = type metadata accessor for EntityTriple(0);
  v12 = sub_1C43FCDF8(v11);
  v320 = v13;
  v321 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBFDC();
  v318 = v16;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FD230();
  v317 = v18;
  sub_1C43FBE44();
  v335 = sub_1C4EFF8A8();
  v19 = sub_1C43FCDF8(v335);
  v316 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FD2D8();
  v319 = v23;
  sub_1C43FBE44();
  v332 = sub_1C4EFF0C8();
  v24 = sub_1C43FCDF8(v332);
  *&v315 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBFDC();
  v313 = v28;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FD230();
  v325 = v30;
  v31 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v32 = sub_1C43FBD18(v31);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBD08();
  v37 = v35 - v36;
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FD230();
  v327 = v39;
  sub_1C43FBE44();
  v342 = sub_1C4EFD548();
  v40 = sub_1C43FCDF8(v342);
  v314 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FBFDC();
  v312 = v44;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v45);
  sub_1C43FBF38();
  v322 = v46;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FBF38();
  v311 = v48;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v49);
  sub_1C43FD230();
  v310 = v50;
  v51 = sub_1C456902C(&qword_1EC0B9A10, &qword_1C4F107C0);
  v52 = sub_1C43FBD18(v51);
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v52);
  sub_1C43FBFDC();
  v324 = v55;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v56);
  sub_1C43FBF38();
  v309 = v57;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v58);
  sub_1C43FD230();
  v336 = v59;
  v60 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  v61 = sub_1C43FBD18(v60);
  v63 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v61);
  sub_1C43FBFDC();
  v323 = v64;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v65);
  v67 = &v307 - v66;
  MEMORY[0x1EEE9AC00](v68);
  sub_1C43FD230();
  v334 = v69;
  sub_1C43FBE44();
  v70 = sub_1C4EFEEF8();
  v71 = sub_1C43FCDF8(v70);
  v73 = v72;
  v75 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v71);
  sub_1C43FBFDC();
  v348 = v76;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v77);
  sub_1C43FD230();
  v343 = v78;
  v79 = sub_1C43FBE44();
  v80 = type metadata accessor for MapPredicate(v79);
  v361 = sub_1C43FCDF8(v80);
  v362 = v81;
  v83 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v361);
  sub_1C43FBFDC();
  v337 = v84;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v85);
  sub_1C43FBF38();
  v341 = v86;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v87);
  sub_1C43FBF38();
  v360 = v88;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v89);
  v91 = (&v307 - v90);
  v92 = sub_1C456902C(&qword_1EC0B8A60, &unk_1C4F0DE80);
  v93 = sub_1C43FCDF8(v92);
  v339 = v94;
  v340 = v93;
  v96 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v93);
  v359 = &v307 - v97;
  v328 = *a7;
  sub_1C456902C(&qword_1EC0B8720, &qword_1C4F0D970);
  sub_1C443FFB0();
  sub_1C44CD2C8(v98, v99);
  v363 = v70;
  v100 = 0;
  v371 = sub_1C4F00F28();
  v344 = (a6 + 32);
  v346 = *(a6 + 16);
  v354 = (v73 + 32);
  v349 = (v73 + 16);
  v350 = v67;
  v338 = (v73 + 8);
  v326 = v37;
  while (v100 != v346)
  {
    v101 = &v344[8 * v100];
    v102 = v101[1];
    *&v370[16] = v101[2];
    *&v370[25] = *(v101 + 41);
    v103 = v101[1];
    v369 = *v101;
    *v370 = v103;
    v104 = *&v370[16];
    v105 = v369;
    v364[0] = v369;
    v364[1] = v102;
    v364[2] = v101[2];
    v106 = *&v370[32];
    LODWORD(v353) = v370[40];
    sub_1C45D17A0(&v369, v367);
    v107 = sub_1C4B590DC(v345, v105, *(&v105 + 1), v104, *(&v104 + 1));
    if (v8)
    {
      sub_1C4435424();
      v368 = v106;
      sub_1C44419D8();
    }

    v352 = v100;
    if (*(v107 + 16))
    {
      v351 = 0;
      v358 = v340[12];
      v357 = v340[16];
      v108 = v360;
      *&v356 = v359 + v340[20];
      sub_1C43FBF6C();
      v347 = v110;
      v112 = v110 + v111;
      v355 = *(v113 + 72);
      v114 = MEMORY[0x1E69E7CC0];
      do
      {
        v372 = v109;
        v115 = v114;
        v116 = v91;
        v117 = v359;
        sub_1C4460108(v112, v359, &qword_1EC0B8A60, &unk_1C4F0DE80);
        v118 = *v356;
        v119 = *(v356 + 8);
        v120 = v361;
        (*v354)(v116 + *(v361 + 20), v117, v363);
        sub_1C44CDA30(v117 + v358, v116 + *(v120 + 24), &qword_1EC0B8568, &unk_1C4F319B0);
        v121 = v117 + v357;
        v91 = v116;
        v114 = v115;
        sub_1C44CDA30(v121, v91 + *(v120 + 28), &qword_1EC0B9A08, &unk_1C4F107B0);
        *v91 = v118;
        v91[1] = v119;
        sub_1C4432A3C();
        sub_1C4B62114(v91, v108);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v126 = *(v115 + 16);
          v127 = sub_1C43FCEC0();
          sub_1C458AE3C(v127, v128, v129, v115);
          v114 = v130;
        }

        v123 = *(v114 + 16);
        v122 = *(v114 + 24);
        if (v123 >= v122 >> 1)
        {
          sub_1C458AE3C(v122 > 1, v123 + 1, 1, v114);
          v114 = v131;
        }

        sub_1C4B2A2F8(v91, type metadata accessor for MapPredicate);
        *(v114 + 16) = v123 + 1;
        sub_1C43FBF6C();
        v108 = v360;
        sub_1C4B61D90(v360, v114 + v124 + *(v125 + 72) * v123);
        v112 += v355;
        v109 = v372 - 1;
      }

      while (v372 != 1);

      v8 = v351;
    }

    else
    {

      v114 = MEMORY[0x1E69E7CC0];
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v67 = v350;
    v132 = v343;
    if (*(v114 + 16))
    {
      v133 = *(v362 + 80);
      sub_1C4432A3C();
      v135 = v341;
      sub_1C4B62114(v114 + v134, v341);

      v136 = *v349;
      (*v349)(v132, v135 + *(v361 + 20), v363);
      sub_1C4407A9C();
      sub_1C4B2A2F8(v135, v137);
      v138 = v371;
      if (!*(v371 + 16) || (sub_1C457AB64(), (v139 & 1) == 0))
      {
        swift_isUniquelyReferenced_nonNull_native();
        *&v367[0] = v138;
        sub_1C4660468();
        v371 = *&v367[0];
      }

      v140 = sub_1C440DE18();
      v136(v140);
      v142 = sub_1C4B5A6C0();
      if (*v141)
      {
        v143 = v141;
        sub_1C4435424();
        sub_1C4588D20();
        v144 = *(*v143 + 16);
        sub_1C4589918();
        v145 = *v143;
        *(v145 + 16) = v144 + 1;
        v146 = v145 + (v144 << 6);
        *(v146 + 32) = v367[0];
        *(v146 + 48) = v367[1];
        *(v146 + 64) = v367[2];
        *(v146 + 80) = v114;
        *(v146 + 88) = v353;
      }

      else
      {
        sub_1C4435424();
        v368 = v114;
        sub_1C44419D8();
      }

      (v142)(v365, 0);
      v147 = *v338;
      v148 = v363;
      (*v338)(v348, v363);
      v147(v132, v148);
    }

    else
    {
      sub_1C4435424();
      v368 = v114;
      sub_1C44419D8();
    }

    v100 = (v352 + 1);
  }

  v149 = v371 + 64;
  v150 = 1 << *(v371 + 32);
  v151 = -1;
  if (v150 < 64)
  {
    v151 = ~(-1 << v150);
  }

  v152 = v151 & *(v371 + 64);
  v341 = (v150 + 63) >> 6;
  v339 = v314 + 2;
  v346 = v314 + 4;
  v347 = v314 + 1;
  v352 = (v315 + 32);
  v354 = (v315 + 8);
  v355 = (v315 + 16);
  v343 = (v316 + 8);
  v344 = (v316 + 32);
  v338 = (v316 + 16);
  v153 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v154 = 0;
  v155 = MEMORY[0x1E69E7CC0];
  *&v156 = 136380931;
  v315 = v156;
  v157 = v335;
  v340 = v153;
  v308 = v149;
LABEL_26:
  if (v152)
  {
    v359 = v155;
    v158 = v154;
    goto LABEL_32;
  }

  do
  {
    v158 = v154 + 1;
    if (__OFADD__(v154, 1))
    {
      goto LABEL_95;
    }

    if (v158 >= v341)
    {
      v303 = v155;

      return v303;
    }

    v152 = *(v149 + 8 * v158);
    ++v154;
  }

  while (!v152);
  v359 = v155;
LABEL_32:
  v159 = *(v153 + 56);
  v316 = v158;
  v160 = *(v159 + ((v158 << 9) | (8 * __clz(__rbit64(v152)))));
  sub_1C43FCF64();
  sub_1C440BAA8(v161, v162, v163, v342);
  sub_1C43FCF64();
  sub_1C440BAA8(v164, v165, v166, v157);
  v167 = v160;
  v168 = *(v160 + 16);
  v360 = v160;
  v372 = v168;
  if (!v168)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
LABEL_43:
    v191 = 0;
    v152 &= v152 - 1;
    LODWORD(v345) = 1;
    v192 = 32;
    v157 = v335;
    v353 = v152;
    while (1)
    {
      if (v372 == v191)
      {

        sub_1C4420C3C(v336, &qword_1EC0B9A10, &qword_1C4F107C0);
        sub_1C4420C3C(v334, &qword_1EC0B8568, &unk_1C4F319B0);
        v154 = v316;
        v153 = v340;
        v155 = v359;
        v149 = v308;
        goto LABEL_26;
      }

      if (v191 >= *(v167 + 16))
      {
        goto LABEL_94;
      }

      v193 = *(v167 + v192);
      v194 = *(v167 + v192 + 16);
      v195 = *(v167 + v192 + 32);
      *&v370[25] = *(v167 + v192 + 41);
      *v370 = v194;
      *&v370[16] = v195;
      v369 = v193;
      v196 = *&v370[32];
      v365[0] = *(v167 + v192);
      v365[1] = *(v167 + v192 + 16);
      v365[2] = *(v167 + v192 + 32);
      v366 = *(v167 + v192 + 48);
      if (!*&v370[32])
      {
        sub_1C43FC8C0();
        v294 = sub_1C44146DC(v293);
        sub_1C45D17A0(v294, v295);
        sub_1C44E3634(v367);

        if (qword_1EDDFD028 != -1)
        {
          goto LABEL_100;
        }

        goto LABEL_87;
      }

      v357 = v192;
      v358 = v191;
      if (!*(*&v370[32] + 16))
      {
        sub_1C43FC8C0();
        v227 = sub_1C44146DC(v226);
        sub_1C45D17A0(v227, v228);
        sub_1C44E3634(v367);
        goto LABEL_79;
      }

      v197 = *(v362 + 80);
      sub_1C4432A3C();
      sub_1C4B62114(v196 + v198, v337);
      v199 = v327;
      v200 = v332;
      v348 = *v355;
      v348(v327, v333, v332);
      sub_1C43FBD94();
      sub_1C440BAA8(v201, v202, v203, v200);
      v204 = v326;
      sub_1C4460108(v199, v326, &unk_1EC0BA0E0, &qword_1C4F105A0);
      sub_1C440175C(v204, 1, v200);
      if (v238)
      {
        sub_1C45D17A0(&v369, v367);

        sub_1C4420C3C(v204, &unk_1EC0BA0E0, &qword_1C4F105A0);
        sub_1C45CF650();
        sub_1C441C114();
        swift_allocError();
        *v305 = 4;
        swift_willThrow();

        sub_1C4420C3C(v199, &unk_1EC0BA0E0, &qword_1C4F105A0);
        sub_1C4407A9C();
        sub_1C4B2A2F8(v337, v306);
        sub_1C4420C3C(v336, &qword_1EC0B9A10, &qword_1C4F107C0);
        sub_1C4420C3C(v334, &qword_1EC0B8568, &unk_1C4F319B0);
        sub_1C43FC8C0();
        sub_1C4460B18();
      }

      v351 = v8;
      v205 = *&v370[24];
      v206 = *v370;
      v356 = *&v370[8];
      v207 = v204;
      v208 = v325;
      (*v352)(v325, v207, v200);
      sub_1C45D17A0(&v369, v364);
      v209 = sub_1C45CF6A4(v208, v329, v330, v331, v196, 0, v336, v206, v356, *(&v356 + 1), v205, v328);
      v210 = *v354;
      (*v354)(v208, v200);
      sub_1C4420C3C(v199, &unk_1EC0BA0E0, &qword_1C4F105A0);
      sub_1C43FC8C0();
      sub_1C4460B18();
      v211 = *(v209 + 16);
      v212 = *(v359 + 16);
      v213 = v212 + v211;
      if (__OFADD__(v212, v211))
      {
        goto LABEL_96;
      }

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v215 = v359;
      if (!isUniquelyReferenced_nonNull_native || v213 > *(v359 + 24) >> 1)
      {
        if (v212 <= v213)
        {
          v216 = v212 + v211;
        }

        else
        {
          v216 = v212;
        }

        sub_1C44C9240(isUniquelyReferenced_nonNull_native, v216, 1, v359);
        v215 = v217;
      }

      v218 = v324;
      v219 = *(v209 + 16);
      v359 = v215;
      if (v219)
      {
        v220 = *(v215 + 16);
        if ((*(v215 + 24) >> 1) - v220 < v211)
        {
          goto LABEL_98;
        }

        v221 = v215 + ((*(v320 + 80) + 32) & ~*(v320 + 80)) + *(v320 + 72) * v220;
        swift_arrayInitWithCopy();

        v222 = v323;
        if (v211)
        {
          v223 = *(v359 + 16);
          v224 = __OFADD__(v223, v211);
          v225 = v223 + v211;
          if (v224)
          {
            goto LABEL_99;
          }

          *(v359 + 16) = v225;
        }
      }

      else
      {

        v222 = v323;
        if (v211)
        {
          goto LABEL_97;
        }
      }

      sub_1C4460108(v334, v222, &qword_1EC0B8568, &unk_1C4F319B0);
      v229 = v342;
      sub_1C440175C(v222, 1, v342);
      if (v238)
      {
        sub_1C4407A9C();
        sub_1C4B2A2F8(v337, v230);

        sub_1C4420C3C(v222, &qword_1EC0B8568, &unk_1C4F319B0);
        v67 = v350;
        v8 = v351;
        v157 = v335;
        v152 = v353;
        goto LABEL_79;
      }

      isa = v346->isa;
      v232 = v322;
      v233 = sub_1C440DE18();
      v234(v233);
      sub_1C4460108(v336, v218, &qword_1EC0B9A10, &qword_1C4F107C0);
      v235 = v218;
      v236 = v218;
      v237 = v229;
      v157 = v335;
      sub_1C440175C(v235, 1, v335);
      if (v238)
      {
        break;
      }

      v241 = *v344;
      v242 = v319;
      v243 = sub_1C440DE18();
      v244(v243);
      v245 = v157;
      v246 = *(v209 + 16);

      if (!v246)
      {
        (*v343)(v242, v245);
        sub_1C442F738();
        v264(v322, v342);
        sub_1C4407A9C();
        sub_1C4B2A2F8(v337, v265);
        v8 = v351;
        v157 = v245;
LABEL_78:
        v67 = v350;
        v152 = v353;
        goto LABEL_79;
      }

      if ((v345 & 1) == 0)
      {
        v157 = v335;
        (*v343)(v319, v335);
        sub_1C442F738();
        v266(v322, v342);
        sub_1C4407A9C();
        sub_1C4B2A2F8(v337, v267);
        LODWORD(v345) = 0;
        goto LABEL_77;
      }

      v247 = v312;
      if (qword_1EDDFD028 != -1)
      {
        sub_1C4419274();
        swift_once();
      }

      v248 = sub_1C4F00978();
      sub_1C43FCEE8(v248, qword_1EDE2DE10);
      v249 = v313;
      v250 = v332;
      v251 = v348;
      v348(v313, v333, v332);
      (v339->isa)(v247, v322, v342);
      v252 = sub_1C4F00968();
      v253 = sub_1C4F01CF8();
      if (os_log_type_enabled(v252, v253))
      {
        swift_slowAlloc();
        LODWORD(v345) = v253;
        sub_1C4423808();
        *&v356 = swift_slowAlloc();
        *&v364[0] = v356;
        *v253 = v315;
        sub_1C4400E48();
        sub_1C44CD2C8(&qword_1EDDFE810, v254);
        v314 = v252;
        v255 = v249;
        sub_1C4F02858();
        v256 = sub_1C43FBD30();
        v258 = v257;
        v210(v256, v250);
        sub_1C441D828(v255, v258, v364);
        sub_1C43FBD30();

        *(v253 + 4) = v255;
        *(v253 + 12) = 2080;
        v259 = sub_1C4EFD2F8();
        v261 = v260;
        v262 = sub_1C444C394();
        (v253)(v262);
        sub_1C441D828(v259, v261, v364);
        sub_1C43FBD30();

        *(v253 + 14) = v259;
        v263 = v314;
        _os_log_impl(&dword_1C43F8000, v314, v345, "StandardEntityMapper: constructRows relationship: %{private}s relPred isA %s", v253, 0x16u);
        swift_arrayDestroy();
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      else
      {

        v268 = sub_1C444C394();
        (v253)(v268);
        v210(v249, v250);
      }

      v269 = v335;
      v270 = v319;
      v271 = v317;
      v251(v317, v333, v250);
      v272 = v321;
      (*v349)(v271 + v321[5], v337 + *(v361 + 20), v363);
      (*v338)(v271 + v272[6], v270, v269);
      v273 = v271 + v272[7];
      sub_1C4EFEBB8();
      v274 = sub_1C4EFD2F8();
      v276 = v275;
      v277 = v272[9];
      sub_1C44137DC();
      sub_1C4B62114(v329, v271 + v278);
      v279 = (v271 + v272[8]);
      *v279 = v274;
      v279[1] = v276;
      v280 = (v271 + v272[10]);
      v281 = v331;
      *v280 = v330;
      v280[1] = v281;
      *(v271 + v272[11]) = 0;
      *(v271 + v272[12]) = v328;
      sub_1C4B62114(v271, v318);
      v283 = *(v359 + 16);
      v282 = *(v359 + 24);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v8 = v351;
      v152 = v353;
      if (v283 >= v282 >> 1)
      {
        v289 = sub_1C443F384();
        sub_1C44C9240(v289, v290, v291, v359);
        v359 = v292;
      }

      sub_1C4B2A2F8(v317, type metadata accessor for EntityTriple);
      v284 = v335;
      (*v343)(v319, v335);
      (v253)(v322, v342);
      sub_1C4407A9C();
      sub_1C4B2A2F8(v337, v285);
      *(v359 + 16) = v283 + 1;
      sub_1C43FBF6C();
      v157 = v284;
      sub_1C4B61D90(v318, v287 + v286 + *(v288 + 72) * v283);
      LODWORD(v345) = 0;
      v67 = v350;
LABEL_79:
      v192 = v357 + 64;
      v191 = v358 + 1;
      v167 = v360;
    }

    sub_1C442F738();
    v239(v232, v237);
    sub_1C4407A9C();
    sub_1C4B2A2F8(v337, v240);
    sub_1C4420C3C(v236, &qword_1EC0B9A10, &qword_1C4F107C0);
LABEL_77:
    v8 = v351;
    goto LABEL_78;
  }

  v169 = (v160 + 80);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v170 = 0;
  while (v170 < *(v167 + 16))
  {
    v171 = *v169;
    if (*v169 && *(v171 + 16))
    {
      sub_1C4460108(v171 + *(v361 + 24) + ((*(v362 + 80) + 32) & ~*(v362 + 80)), v67, &qword_1EC0B8568, &unk_1C4F319B0);
      sub_1C440175C(v67, 1, v342);
      if (!v238)
      {
        v175 = v334;
        v176 = sub_1C4404B44();
        sub_1C4420C3C(v176, v177, &unk_1C4F319B0);
        v178 = v310;
        v179 = v342;
        (v346->isa)(v310, v350, v342);
        v180 = v339->isa;
        (v339->isa)(v175, v178, v179);
        sub_1C43FBD94();
        sub_1C440BAA8(v181, v182, v183, v179);
        v180(v311, v178, v179);
        v184 = v309;
        sub_1C4EFF838();
        sub_1C442F738();
        v185 = v178;
        v67 = v350;
        v186(v185, v179);
        v187 = v336;
        sub_1C4420C3C(v336, &qword_1EC0B9A10, &qword_1C4F107C0);
        sub_1C43FBD94();
        sub_1C440BAA8(v188, v189, v190, v335);
        sub_1C44CDA30(v184, v187, &qword_1EC0B9A10, &qword_1C4F107C0);
        v167 = v360;
        goto LABEL_43;
      }
    }

    else
    {
      sub_1C43FCF64();
      sub_1C440BAA8(v172, v173, v174, v342);
    }

    ++v170;
    sub_1C4420C3C(v67, &qword_1EC0B8568, &unk_1C4F319B0);
    v169 += 8;
    v167 = v360;
    if (v372 == v170)
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  sub_1C4419274();
  swift_once();
LABEL_87:
  v296 = sub_1C4F00978();
  sub_1C43FCEE8(v296, qword_1EDE2DE10);
  v297 = sub_1C4F00968();
  v298 = sub_1C4F01CD8();
  if (os_log_type_enabled(v297, v298))
  {
    v299 = swift_slowAlloc();
    *v299 = 0;
    _os_log_impl(&dword_1C43F8000, v297, v298, "Mapping error, missing predicates", v299, 2u);
    v300 = sub_1C43FEF7C();
    MEMORY[0x1C6942830](v300);
  }

  sub_1C45CF650();
  sub_1C441C114();
  v301 = swift_allocError();
  sub_1C44046C4(v301, v302);
  swift_willThrow();

  sub_1C4420C3C(v336, &qword_1EC0B9A10, &qword_1C4F107C0);
  sub_1C4420C3C(v334, &qword_1EC0B8568, &unk_1C4F319B0);
}

void sub_1C4B5D764(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 *a9, uint64_t a10, uint64_t a11)
{
  v348 = a8;
  v360 = a7;
  v357 = a6;
  v356 = a5;
  v332 = a4;
  v353 = a2;
  v358 = a1;
  v368 = a10;
  v12 = *(a10 - 8);
  v13 = *(v12 + 64);
  v366 = a11;
  MEMORY[0x1EEE9AC00](a1);
  sub_1C43FBD08();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v322[-v18];
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v322[-v21];
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FD230();
  v26 = sub_1C43FD2C8(v25);
  v345 = type metadata accessor for EntityTriple(v26);
  v27 = sub_1C43FCDF8(v345);
  v347 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v31);
  v339 = sub_1C4F00DD8();
  v32 = sub_1C43FCDF8(v339);
  v338 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v36);
  v341 = sub_1C4F00DC8();
  v37 = sub_1C43FCDF8(v341);
  v340 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FD230();
  sub_1C43FD2C8(v42);
  v352 = sub_1C4F01188();
  v43 = sub_1C43FCDF8(v352);
  v351 = v44;
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v47);
  v359 = sub_1C4EFF0C8();
  v48 = sub_1C43FCDF8(v359);
  v355 = v49;
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v52);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v53);
  sub_1C43FD230();
  sub_1C43FCE30(v54);
  v55 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  v56 = sub_1C43FBD18(v55);
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v60 = &v322[-v59];
  v363 = sub_1C4EFD548();
  v61 = sub_1C43FCDF8(v363);
  v361 = v62;
  v64 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v61);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v65);
  v67 = &v322[-v66];
  MEMORY[0x1EEE9AC00](v68);
  sub_1C43FD230();
  sub_1C43FCE30(v69);
  v354 = *a9;
  sub_1C442023C();
  v369 = v70;
  v370 = v71;
  v72 = sub_1C4F029C8();
  v364 = a3;
  v73 = [a3 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v73)
  {
    sub_1C4F02078();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C445543C();
  }

  sub_1C4434224();
  if (!v74)
  {
    sub_1C4420C3C(&v372, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_9;
  }

  v73 = sub_1C4461BB8(0, &qword_1EC0C3548, 0x1E695DF20);
  sub_1C443F7A0();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v78 = v368;
    if (qword_1EDDFD028 != -1)
    {
      sub_1C4419274();
      swift_once();
    }

    v79 = sub_1C4F00978();
    sub_1C442B738(v79, qword_1EDE2DE10);
    sub_1C44024F8();
    v80(v16, v367, v78);
    v81 = sub_1C4F00968();
    sub_1C4F01CD8();
    v82 = sub_1C44016D0();
    if (os_log_type_enabled(v82, v83))
    {
      sub_1C43FECF0();
      swift_slowAlloc();
      sub_1C443019C();
      v84 = swift_slowAlloc();
      sub_1C448F200(v84);
      *v73 = 136315138;
      sub_1C440FC4C();
      v85(v78);
      sub_1C4441234();
      v86(v16, v78);
      v87 = sub_1C44224DC();
      v89 = sub_1C441D828(v87, &xmmword_1EDDFD000, v88);

      *(v73 + 4) = v89;
      sub_1C441C508();
      _os_log_impl(v90, v91, v92, v93, v94, 0xCu);
      sub_1C443EED0();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {

      (*(v12 + 8))(v16, v78);
    }

    sub_1C45CF650();
    sub_1C441C114();
    v95 = swift_allocError();
    sub_1C44060DC(v95, v96);
    swift_willThrow();
    return;
  }

  v75 = v375;
  v369 = 0x79747265706F7270;
  v370 = 0xEB0000000070614DLL;
  v76 = sub_1C4F029C8();
  v331 = v75;
  v77 = [v75 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v77)
  {
    sub_1C4F02078();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C445543C();
  }

  sub_1C4434224();
  if (!v97)
  {
    sub_1C4420C3C(&v372, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_21;
  }

  sub_1C443F7A0();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:
    v100 = v368;
    if (qword_1EDDFD028 != -1)
    {
      sub_1C4419274();
      swift_once();
    }

    v101 = sub_1C4F00978();
    sub_1C442B738(v101, qword_1EDE2DE10);
    sub_1C44024F8();
    v102(v19, v367, v100);
    v103 = sub_1C4F00968();
    v104 = sub_1C4F01CD8();
    if (os_log_type_enabled(v103, v104))
    {
      sub_1C43FECF0();
      v105 = swift_slowAlloc();
      sub_1C43FEC60();
      v106 = swift_slowAlloc();
      sub_1C448F200(v106);
      *v105 = 136315138;
      sub_1C440FC4C();
      v107(v100);
      sub_1C4441234();
      v108(v19, v100);
      v109 = sub_1C44224DC();
      v111 = sub_1C441D828(v109, v76, v110);

      *(v105 + 4) = v111;
      _os_log_impl(&dword_1C43F8000, v103, v104, "Mapping error missing property map for  %s", v105, 0xCu);
      sub_1C443EED0();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      v112 = sub_1C43FEF7C();
      MEMORY[0x1C6942830](v112);
    }

    else
    {

      (*(v12 + 8))(v19, v100);
    }

    sub_1C45CF650();
    sub_1C441C114();
    v113 = swift_allocError();
    sub_1C44060DC(v113, v114);
    swift_willThrow();
    sub_1C448E0C0();
    return;
  }

  v330 = v375;
  v369 = 1701869940;
  v370 = 0xE400000000000000;
  v98 = sub_1C4F029C8();
  v99 = [v331 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v99)
  {
    sub_1C4F02078();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C445543C();
  }

  sub_1C4434224();
  if (!v115)
  {
    sub_1C4420C3C(&v372, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_37;
  }

  sub_1C443F7A0();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_37:
    v136 = v368;
    if (qword_1EDDFD028 != -1)
    {
      sub_1C4419274();
      swift_once();
    }

    v137 = sub_1C4F00978();
    sub_1C442B738(v137, qword_1EDE2DE10);
    sub_1C44024F8();
    v138(v22, v367, v136);
    v122 = sub_1C4F00968();
    v139 = sub_1C4F01CD8();
    v140 = sub_1C44016D0();
    if (!os_log_type_enabled(v140, v141))
    {

      (*(v12 + 8))(v22, v136);
      goto LABEL_43;
    }

    sub_1C43FECF0();
    swift_slowAlloc();
    sub_1C443019C();
    v142 = swift_slowAlloc();
    sub_1C448F200(v142);
    *v98 = 136315138;
    sub_1C440FC4C();
    v143(v136);
    sub_1C4441234();
    v144(v22, v136);
    v145 = sub_1C44224DC();
    v147 = sub_1C441D828(v145, v76, v146);

    *(v98 + 4) = v147;
    _os_log_impl(&dword_1C43F8000, v122, v139, "Mapping error missing type for  %s", v98, 0xCu);
    sub_1C443EED0();
LABEL_41:
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();

LABEL_43:
    v148 = v330;
    sub_1C45CF650();
    sub_1C441C114();
    v149 = swift_allocError();
    sub_1C44060DC(v149, v150);
    swift_willThrow();
    sub_1C448E0C0();

    return;
  }

  v116 = v375;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C43FD024();
  sub_1C4EFD2E8();
  v117 = v363;
  sub_1C440175C(v60, 1, v363);
  if (v272)
  {

    sub_1C4420C3C(v60, &qword_1EC0B8568, &unk_1C4F319B0);
    if (qword_1EDDFD028 != -1)
    {
      sub_1C4419274();
      swift_once();
    }

    v118 = sub_1C4F00978();
    sub_1C442B738(v118, qword_1EDE2DE10);
    sub_1C44024F8();
    v119 = v349;
    v120 = v368;
    v121(v349, v367, v368);
    v122 = sub_1C4F00968();
    sub_1C4F01CD8();
    v123 = sub_1C44016D0();
    if (!os_log_type_enabled(v123, v124))
    {

      (*(v12 + 8))(v119, v120);
      goto LABEL_43;
    }

    sub_1C43FECF0();
    swift_slowAlloc();
    sub_1C443019C();
    v125 = swift_slowAlloc();
    *&v372 = v125;
    *v116 = 136315138;
    sub_1C440FC4C();
    v126(v120);
    sub_1C4441234();
    v127(v119, v120);
    v128 = sub_1C44224DC();
    v130 = sub_1C441D828(v128, v117, v129);

    *(v116 + 4) = v130;
    sub_1C441C508();
    _os_log_impl(v131, v132, v133, v134, v135, 0xCu);
    sub_1C440962C(v125);
    goto LABEL_41;
  }

  v349 = v116 >> 64;
  v327 = v116;
  v151 = v361;
  v152 = v362;
  (*(v361 + 32))(v362, v60, v117);
  if (qword_1EDDFD028 != -1)
  {
    sub_1C4419274();
    swift_once();
  }

  v153 = sub_1C4F00978();
  sub_1C43FCEE8(v153, qword_1EDE2DE10);
  v154 = *(v151 + 16);
  v326 = v151 + 16;
  v325 = v154;
  v154(v67, v152, v117);
  v155 = v353;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v329 = v60;
  v156 = v151;
  v157 = sub_1C4F00968();
  v158 = sub_1C4F01CB8();

  if (os_log_type_enabled(v157, v158))
  {
    swift_slowAlloc();
    sub_1C4423808();
    v324 = swift_slowAlloc();
    *&v372 = v324;
    LODWORD(xmmword_1EDDFD000) = 136381187;
    *(&xmmword_1EDDFD000 + 4) = sub_1C441D828(v358, v155, &v372);
    WORD6(xmmword_1EDDFD000) = 2080;
    sub_1C4426E60();
    sub_1C44CD2C8(v159, v160);
    v323 = v158;
    v161 = v156;
    v162 = sub_1C4F02858();
    v164 = v163;
    v165 = *(v161 + 8);
    v166 = sub_1C43FCE84();
    v328 = v167;
    v167(v166);
    v168 = sub_1C44224DC();
    sub_1C441D828(v168, v164, v169);
    sub_1C43FBD30();

    *(&xmmword_1EDDFD000 + 14) = v162;
    v170 = v358;
    word_1EDDFD016 = 1024;
    LODWORD(qword_1EDDFD018) = 0;
    _os_log_impl(&dword_1C43F8000, v157, v323, "Source: generating identifier for: %{private}s : %s : %{BOOL}d", &xmmword_1EDDFD000, 0x1Cu);
    swift_arrayDestroy();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    v171 = sub_1C43FEDE8();
    MEMORY[0x1C6942830](v171);

    v172 = v360;
  }

  else
  {

    v173 = *(v156 + 8);
    v174 = sub_1C43FCE84();
    v328 = v175;
    v175(v174);
    v172 = v360;
    v170 = v358;
  }

  v177 = *v172;
  v176 = v172[1];
  *&v372 = v170;
  *(&v372 + 1) = v155;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v178 = sub_1C4404C28();
  MEMORY[0x1C6940010](v178);
  v179 = v372;
  sub_1C445140C(&v374[8]);
  sub_1C4F01178();
  sub_1C4F01148();
  v181 = v180;
  sub_1C43FFB20(&v374[16]);
  v182(&v372, v352);
  v183 = v365;
  if (v181 >> 60 == 15)
  {

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v184 = sub_1C4F00968();
    v185 = sub_1C4F01CD8();

    if (os_log_type_enabled(v184, v185))
    {
      sub_1C43FECF0();
      v186 = swift_slowAlloc();
      sub_1C43FEC60();
      v187 = swift_slowAlloc();
      sub_1C448F200(v187);
      *v186 = 136380675;
      v188 = sub_1C441D828(v179, *(&v179 + 1), &v372);

      *(v186 + 4) = v188;
      _os_log_impl(&dword_1C43F8000, v184, v185, "Source: failed to encode identifier as UTF8 data: %{private}s", v186, 0xCu);
      sub_1C443EED0();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      v189 = sub_1C43FEDE8();
      MEMORY[0x1C6942830](v189);
    }

    else
    {
    }

    v228 = v368;
    (*(v12 + 16))(v344, v367, v368);
    v229 = sub_1C4F00968();
    sub_1C4F01CD8();
    v230 = sub_1C44016D0();
    if (os_log_type_enabled(v230, v231))
    {
      sub_1C43FECF0();
      swift_slowAlloc();
      sub_1C443019C();
      v232 = swift_slowAlloc();
      *&v372 = v232;
      *v185 = 136315138;
      sub_1C440FC4C();
      v233(v228);
      v235 = v234;
      v236 = *(v12 + 8);
      v237 = sub_1C43FCE84();
      v238(v237);
      v239 = sub_1C44224DC();
      v241 = sub_1C441D828(v239, v235, v240);

      *(v185 + 4) = v241;
      sub_1C441C508();
      _os_log_impl(v242, v243, v244, v245, v246, 0xCu);
      sub_1C440962C(v232);
      v247 = sub_1C43FEDE8();
      MEMORY[0x1C6942830](v247);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {

      v297 = *(v12 + 8);
      v298 = sub_1C43FCE84();
      v299(v298);
    }

    v300 = v330;
    sub_1C45CF650();
    sub_1C441C114();
    swift_allocError();
    *v301 = 5;
    swift_willThrow();
    sub_1C448E0C0();

    sub_1C440908C();
    sub_1C4401890();
    v302();
    return;
  }

  sub_1C441641C();
  sub_1C44CD2C8(v190, v191);
  v192 = v336;
  v193 = v339;
  sub_1C4F00DB8();
  v194 = sub_1C43FFE24();
  sub_1C44344B8(v194, v195);
  v196 = sub_1C43FFE24();
  v197 = v343;
  sub_1C4498FD8(v196, v198);
  v352 = v197;
  v199 = sub_1C43FFE24();
  sub_1C441DFEC(v199, v200);
  v201 = v337;
  v212 = v192;
  sub_1C4F00DA8();
  sub_1C43FFB20(&v370);
  v202(v192, v193);
  v325(v333, v362, v363);
  sub_1C445140C(v371);
  v204 = v341;
  (*(v203 + 16))(v335, v201, v341);
  v205 = v334;
  sub_1C4EFF028();
  v206 = sub_1C43FFE24();
  sub_1C441DFEC(v206, v207);
  (*(v212 + 8))(v201, v204);
  v208 = v355;
  v209 = v359;
  (*(v355 + 32))(v183, v205, v359);
  v210 = v342;
  v368 = *(v208 + 16);
  (v368)(v342, v183, v209);
  v211 = v349;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  LOBYTE(v212) = v329;
  v213 = sub_1C4F00968();
  LOBYTE(v193) = sub_1C4F01CF8();

  if (os_log_type_enabled(v213, v193))
  {
    v214 = swift_slowAlloc();
    *&v372 = swift_slowAlloc();
    *v214 = 136380931;
    sub_1C4400E48();
    sub_1C44CD2C8(v215, v216);
    sub_1C4F02858();
    v218 = v217;
    v183 = v365;
    v351 = *(v208 + 8);
    v351(v210, v359);
    v219 = sub_1C44224DC();
    v212 = sub_1C441D828(v219, v218, v220);
    v209 = v359;

    *(v214 + 4) = v212;
    *(v214 + 12) = 2080;
    *(v214 + 14) = sub_1C441D828(v327, v349, &v372);
    sub_1C441C508();
    _os_log_impl(v221, v222, v223, v224, v225, 0x16u);
    swift_arrayDestroy();
    v226 = sub_1C43FEDE8();
    MEMORY[0x1C6942830](v226);
    v211 = v349;
    v227 = v360;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();

    sub_1C4440E04();
  }

  else
  {

    v351 = *(v208 + 8);
    v351(v210, v209);
    sub_1C4440E04();
    v227 = v360;
  }

  v248 = v346;
  (v368)(v346, v183, v209);
  v249 = v345;
  v250 = v248 + v345[5];
  sub_1C4EFEBB8();
  v251 = v248 + v249[6];
  sub_1C4EFF888();
  v252 = v248 + v249[7];
  sub_1C4EFEC38();
  v253 = v249[9];
  sub_1C44137DC();
  sub_1C4B62114(v227, v248 + v254);
  sub_1C4EF9AE8();
  v255 = (v248 + v249[8]);
  *v255 = v327;
  v255[1] = v211;
  v256 = (v248 + v249[10]);
  v257 = v357;
  *v256 = v213;
  v256[1] = v257;
  *(v248 + v249[11]) = v258;
  *(v248 + v249[12]) = v212;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44C9240(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v260 = v259;
  v262 = *(v259 + 16);
  v261 = *(v259 + 24);
  if (v262 >= v261 >> 1)
  {
    v318 = sub_1C43FF640(v261);
    sub_1C44C9240(v318, v319, v320, v260);
    v260 = v321;
  }

  v263 = v364;
  *(v260 + 16) = v262 + 1;
  sub_1C43FBF6C();
  sub_1C4B61D90(v248, v260 + v264 + *(v265 + 72) * v262);
  v350 = v260;
  v376 = v260;
  v266 = *(v348 + 16);
  if (v266)
  {
    v267 = (v348 + 32);
    v268 = MEMORY[0x1E69E7CC0];
    v368 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v269 = v267[1];
      v372 = *v267;
      v373 = v269;
      *v374 = v267[2];
      *&v374[9] = *(v267 + 41);
      v270 = v372;
      v375 = v372;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C45D17A0(&v372, &v369);
      v271 = [v263 __swift_objectForKeyedSubscript_];
      sub_1C441D28C();
      swift_unknownObjectRelease();
      if (v262)
      {
        sub_1C4F02078();
        swift_unknownObjectRelease();
        sub_1C4420C3C(&v369, &qword_1EC0BCD10, &qword_1C4F0C8C0);
        v272 = v270 == 0x696669746E656469 && *(&v270 + 1) == 0xEA00000000007265;
        if (v272 || (sub_1C4F02938() & 1) != 0)
        {
          v367 = v268;
          LODWORD(v366) = v374[24];
          v274 = *&v374[8];
          v273 = *&v374[16];
          v358 = *v374;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v353 = sub_1C4EFF048();
          v276 = v275;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C44E3634(&v372);
          v277 = v368;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v288 = *(v277 + 16);
            sub_1C43FCEC0();
            sub_1C458A900();
            v277 = v289;
          }

          v262 = *(v277 + 16);
          v278 = *(v277 + 24);
          v368 = v277;
          if (v262 >= v278 >> 1)
          {
            sub_1C458A900();
            v368 = v290;
          }

          v279 = v368;
          *(v368 + 16) = v262 + 1;
          v280 = v279 + (v262 << 6);
          *(v280 + 32) = v270;
          *(v280 + 48) = v353;
          *(v280 + 56) = v276;
          *(v280 + 64) = v358;
          *(v280 + 72) = v274;
          *(v280 + 80) = v273;
          *(v280 + 88) = v366;
          v263 = v364;
          v183 = v365;
          v268 = v367;
          goto LABEL_85;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v294 = *(v368 + 16);
          sub_1C43FCEC0();
          sub_1C458A900();
          v368 = v295;
        }

        v262 = *(v368 + 16);
        v283 = *(v368 + 24);
        if (v262 >= v283 >> 1)
        {
          sub_1C43FF640(v283);
          sub_1C458A900();
          v368 = v296;
        }

        v284 = v368;
        *(v368 + 16) = v262 + 1;
        v282 = (v284 + (v262 << 6));
      }

      else
      {
        sub_1C445543C();
        sub_1C4420C3C(&v369, &qword_1EC0BCD10, &qword_1C4F0C8C0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v291 = *(v268 + 16);
          sub_1C43FCEC0();
          sub_1C458A900();
          v268 = v292;
        }

        v262 = *(v268 + 16);
        v281 = *(v268 + 24);
        if (v262 >= v281 >> 1)
        {
          sub_1C43FF640(v281);
          sub_1C458A900();
          v268 = v293;
        }

        *(v268 + 16) = v262 + 1;
        v282 = (v268 + (v262 << 6));
      }

      v285 = v372;
      v286 = v373;
      v287 = *v374;
      *(v282 + 73) = *&v374[9];
      v282[3] = v286;
      v282[4] = v287;
      v282[2] = v285;
LABEL_85:
      v267 += 4;
      if (!--v266)
      {
        goto LABEL_90;
      }
    }
  }

  v268 = MEMORY[0x1E69E7CC0];
  v368 = MEMORY[0x1E69E7CC0];
LABEL_90:
  v303 = v354;
  LOBYTE(v372) = v354;
  v304 = v183;
  v305 = v360;
  v306 = v356;
  v307 = v357;
  v308 = v183;
  v309 = v330;
  v310 = v352;
  v311 = SourceEntityMappable.constructRows(entityIdentifier:source:sourceId:map:basicProperties:pipelineType:)(v304, v360, v356, v357, v330, v268, &v372);
  if (v310)
  {
    sub_1C448E0C0();

    v351(v308, v359);
    sub_1C440908C();
    sub_1C4401890();
    v312();
  }

  else
  {
    v313 = v311;

    sub_1C49D3614(v313);
    LOBYTE(v372) = v303;
    v314 = SourceEntityMappable.constructRows(entityIdentifier:source:sourceId:map:basicProperties:pipelineType:)(v332, v305, v306, v307, v263, v368, &v372);

    sub_1C49D3614(v314);
    sub_1C448E0C0();

    v315 = sub_1C444FFFC();
    v316(v315);
    sub_1C440908C();
    sub_1C4401890();
    v317();
  }
}

void *sub_1C4B5F2D8()
{
  v1 = v0;
  v2 = type metadata accessor for Source();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1C4EFD548();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for Configuration();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for StandardEntityMapper();
  sub_1C4B62114(v1 + v14[9], v13);
  _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
  sub_1C4B62114(v1, v5);
  v15 = v14[7];
  v22 = *(v1 + v14[6]);
  v21 = *(v1 + v15);
  v16 = type metadata accessor for SourceEntityStore();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  return sub_1C4B39D1C(v13, v9, v5, &v22, &v21);
}

uint64_t sub_1C4B5F484(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v136 = a3;
  v128 = type metadata accessor for EntityTriple(0);
  v129 = *(v128 - 8);
  v7 = *(v129 + 64);
  MEMORY[0x1EEE9AC00](v128);
  v124 = &v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C456902C(&qword_1EC0B9A10, &qword_1C4F107C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v135 = &v115 - v11;
  v12 = sub_1C4EFD548();
  v126 = *(v12 - 8);
  v13 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v123 = &v115 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v115 - v16;
  v18 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v140 = &v115 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v115 - v22;
  v24 = sub_1C4EFF0C8();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v115 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v115 - v30;
  v138 = *a4;
  SourceEntityRepresentation.entityIdentifier(for:)(a2, v23);
  if (sub_1C44157D4(v23, 1, v24) == 1)
  {
    sub_1C4420C3C(v23, &unk_1EC0BA0E0, &qword_1C4F105A0);
    sub_1C45CF650();
    v32 = swift_allocError();
    *v33 = 5;
    v34 = *(a1 + OBJC_IVAR____TtC24IntelligencePlatformCore26SourceEntityRepresentation_source + 8);
    v142 = *(a1 + OBJC_IVAR____TtC24IntelligencePlatformCore26SourceEntityRepresentation_source);
    v143 = v34;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](32, 0xE100000000000000);
    v35 = sub_1C4EFD3D8();
    MEMORY[0x1C6940010](v35);

    sub_1C4B5B968(v32);

    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    v119 = v28;
    v125 = v25;
    (*(v25 + 32))(v31, v23, v24);
    v146 = MEMORY[0x1E69E7CC0];
    if (qword_1EDDFD028 != -1)
    {
      goto LABEL_36;
    }

    while (1)
    {
      v37 = sub_1C4F00978();
      v38 = sub_1C442B738(v37, qword_1EDE2DE10);
      v39 = v126;
      v40 = *(v126 + 16);
      v117 = v126 + 16;
      v116 = v40;
      v40(v17, a2, v12);
      v41 = a1;
      v118 = v38;
      v42 = sub_1C4F00968();
      v43 = sub_1C4F01CC8();

      LODWORD(v139) = v43;
      v44 = os_log_type_enabled(v42, v43);
      v137 = v24;
      v127 = a2;
      v120 = v12;
      if (v44)
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v142 = v46;
        *v45 = 136380931;
        *(v45 + 4) = sub_1C441D828(*(v41 + OBJC_IVAR____TtC24IntelligencePlatformCore26SourceEntityRepresentation_identifier), *(v41 + OBJC_IVAR____TtC24IntelligencePlatformCore26SourceEntityRepresentation_identifier + 8), &v142);
        *(v45 + 12) = 2080;
        v47 = sub_1C4EFD3D8();
        v49 = v48;
        v121 = *(v39 + 8);
        v121(v17, v12);
        v50 = sub_1C441D828(v47, v49, &v142);
        v51 = v125;

        *(v45 + 14) = v50;
        _os_log_impl(&dword_1C43F8000, v42, v139, "SourceId: %{private}s,entityClass:%s", v45, 0x16u);
        v17 = MEMORY[0x1E69E7CA0];
        swift_arrayDestroy();
        MEMORY[0x1C6942830](v46, -1, -1);
        MEMORY[0x1C6942830](v45, -1, -1);
      }

      else
      {

        v121 = *(v39 + 8);
        v121(v17, v12);
        v17 = MEMORY[0x1E69E7CA0];
        v51 = v125;
      }

      v52 = *(v41 + OBJC_IVAR____TtC24IntelligencePlatformCore26SourceEntityRepresentation_sourceEntities);
      v12 = *(v52 + 16);
      v134 = v31;
      v122 = v41;
      if (!v12)
      {
        break;
      }

      v133 = v41 + OBJC_IVAR____TtC24IntelligencePlatformCore26SourceEntityRepresentation_source;
      v24 = v52 + 32;
      v53 = MEMORY[0x1E69E7CC0];
      v54 = *(v41 + OBJC_IVAR____TtC24IntelligencePlatformCore26SourceEntityRepresentation_identifier);
      v131 = *(v41 + OBJC_IVAR____TtC24IntelligencePlatformCore26SourceEntityRepresentation_identifier + 8);
      v132 = v54;
      v130 = (v51 + 16);
      v55 = v140;
      while (1)
      {
        sub_1C442E860(v24, &v142);
        v139 = objc_autoreleasePoolPush();
        v56 = v137;
        (*v130)(v55, v31, v137);
        sub_1C440BAA8(v55, 0, 1, v56);
        v57 = sub_1C4EFF8A8();
        v58 = v135;
        sub_1C440BAA8(v135, 1, 1, v57);
        LOBYTE(v141) = v138;
        v60 = v144;
        v59 = v145;
        sub_1C4418280(&v142, v144);
        v61 = *(v59 + 40);
        v114 = v59;
        v62 = v140;
        a1 = v61(v140, v133, v132, v131, v136, v58, &v141, v60, v114);
        sub_1C4420C3C(v58, &qword_1EC0B9A10, &qword_1C4F107C0);
        sub_1C4420C3C(v62, &unk_1EC0BA0E0, &qword_1C4F105A0);
        a2 = a1[2];
        v31 = *(v53 + 16);
        v63 = &v31[a2];
        if (__OFADD__(v31, a2))
        {
          break;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v63 > *(v53 + 24) >> 1)
        {
          if (v31 <= v63)
          {
            v65 = &v31[a2];
          }

          else
          {
            v65 = v31;
          }

          sub_1C44C9240(isUniquelyReferenced_nonNull_native, v65, 1, v53);
          v53 = v66;
        }

        v31 = v134;
        v55 = v140;
        if (a1[2])
        {
          if ((*(v53 + 24) >> 1) - *(v53 + 16) < a2)
          {
            goto LABEL_34;
          }

          v67 = (*(v129 + 80) + 32) & ~*(v129 + 80);
          v68 = *(v129 + 72);
          swift_arrayInitWithCopy();

          if (a2)
          {
            v69 = *(v53 + 16);
            v70 = __OFADD__(v69, a2);
            v71 = v69 + a2;
            if (v70)
            {
              goto LABEL_35;
            }

            *(v53 + 16) = v71;
          }
        }

        else
        {

          if (a2)
          {
            goto LABEL_33;
          }
        }

        v146 = v53;
        objc_autoreleasePoolPop(v139);
        sub_1C440962C(&v142);
        v24 += 40;
        if (!--v12)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      swift_once();
    }

    v53 = MEMORY[0x1E69E7CC0];
LABEL_25:
    if (*(v53 + 16))
    {
      v72 = v125;
      v73 = *(v125 + 16);
      v74 = v119;
      v75 = v137;
      v73(v119, v31, v137);
      v76 = v123;
      v77 = v120;
      v116(v123, v127, v120);
      v78 = sub_1C4F00968();
      v79 = sub_1C4F01CF8();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        v139 = v73;
        v81 = v80;
        v136 = swift_slowAlloc();
        v142 = v136;
        *v81 = 136380931;
        sub_1C44CD2C8(&qword_1EDDFE810, MEMORY[0x1E69A9810]);
        LODWORD(v135) = v79;
        v82 = sub_1C4F02858();
        v84 = v83;
        v140 = *(v72 + 8);
        (v140)(v74, v137);
        v85 = sub_1C441D828(v82, v84, &v142);

        *(v81 + 4) = v85;
        *(v81 + 12) = 2080;
        v86 = sub_1C4EFD2F8();
        v88 = v87;
        v121(v76, v77);
        v89 = sub_1C441D828(v86, v88, &v142);
        v75 = v137;

        *(v81 + 14) = v89;
        _os_log_impl(&dword_1C43F8000, v78, v135, "StandardEntityMapper: rows: %{private}s isA %s", v81, 0x16u);
        v90 = v136;
        swift_arrayDestroy();
        MEMORY[0x1C6942830](v90, -1, -1);
        v91 = v81;
        v73 = v139;
        MEMORY[0x1C6942830](v91, -1, -1);
      }

      else
      {

        v121(v76, v77);
        v140 = *(v72 + 8);
        (v140)(v74, v75);
      }

      v96 = v124;
      v97 = v134;
      v73(v124, v134, v75);
      v98 = v128;
      v99 = v96 + *(v128 + 20);
      sub_1C4EFEBB8();
      v100 = v96 + v98[6];
      sub_1C4EFF888();
      v101 = v96 + v98[7];
      sub_1C4EFEC38();
      v102 = sub_1C4EFD2F8();
      v104 = v103;
      v105 = v122;
      sub_1C4B62114(v122 + OBJC_IVAR____TtC24IntelligencePlatformCore26SourceEntityRepresentation_source, v96 + v98[9]);
      v107 = *(v105 + OBJC_IVAR____TtC24IntelligencePlatformCore26SourceEntityRepresentation_identifier);
      v106 = *(v105 + OBJC_IVAR____TtC24IntelligencePlatformCore26SourceEntityRepresentation_identifier + 8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v108 = (v96 + v98[8]);
      *v108 = v102;
      v108[1] = v104;
      v109 = (v96 + v98[10]);
      *v109 = v107;
      v109[1] = v106;
      *(v96 + v98[11]) = v110;
      *(v96 + v98[12]) = v138;
      sub_1C456902C(&qword_1EC0B9010, &unk_1C4F142C0);
      v111 = *(v129 + 72);
      v112 = (*(v129 + 80) + 32) & ~*(v129 + 80);
      v113 = swift_allocObject();
      *(v113 + 16) = xmmword_1C4F0D130;
      sub_1C4B62114(v96, v113 + v112);
      sub_1C49D3614(v113);
      sub_1C4B2A2F8(v96, type metadata accessor for EntityTriple);
      (v140)(v97, v75);
    }

    else
    {
      sub_1C45CF650();
      v92 = swift_allocError();
      *v93 = 3;
      v94 = *(v122 + OBJC_IVAR____TtC24IntelligencePlatformCore26SourceEntityRepresentation_source + 8);
      v142 = *(v122 + OBJC_IVAR____TtC24IntelligencePlatformCore26SourceEntityRepresentation_source);
      v143 = v94;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      MEMORY[0x1C6940010](32, 0xE100000000000000);
      v95 = sub_1C4EFD3D8();
      MEMORY[0x1C6940010](v95);

      sub_1C4B5B968(v92);

      (*(v125 + 8))(v31, v137);
    }

    return v146;
  }
}

uint64_t sub_1C4B60294()
{
  v21 = v0;
  v1 = *(v0 + 16);
  v2 = sub_1C4A2D3E8();
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 16);
    v5 = type metadata accessor for StandardEntityMapper();
    v6 = v4 + v5[9];
    v7 = *(v6 + *(type metadata accessor for PhaseStores() + 24));
    LOBYTE(v20[0]) = *(v4 + v5[7]);
    sub_1C4495FC0(v20);
    v8 = sub_1C4B5F2D8();
    v9 = *(v0 + 16);
    v10 = v9 + v5[8];
    v11 = *v10;
    v12 = *(v10 + 8);
    if (*v10 == 1)
    {
      v13 = v8[3];
      v14 = v8[4];
      v15 = v8[5];
      v16 = v8[6];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4B3A3F0(v13, v14, v15, v16, v20, 0.0);
      v9 = *(v0 + 16);
    }

    else
    {
      v20[0] = *v10;
      v20[1] = v12;
    }

    v17 = swift_task_alloc();
    *(v17 + 16) = v9;
    *(v17 + 24) = v3;
    sub_1C4B620C4(v11);
    sub_1C48737EC();

    sub_1C4EF9AE8();
    sub_1C43FBD94();
    sub_1C4643AE8();
    SourceEntityStore.clearAllData()();
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1C4B60468(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for StandardEntityMapper();
  v5 = *(v4 + 20);
  v6 = sub_1C4F00EC8();
  v9 = *(a2 + *(v4 + 28));
  v7 = sub_1C4B5F484(a1, a2 + v5, v6, &v9);

  return v7;
}

id sub_1C4B6050C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2 + *(a1 + 32);
  v4 = *v3;
  v5 = *(v3 + 8);
  *a2 = *v3;
  a2[1] = v5;
  return sub_1C4B620C4(v4);
}

void *sub_1C4B60520(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = v2 + *(a2 + 32);
  v6 = *(v5 + 8);
  result = sub_1C4B62080(*v5);
  *v5 = v3;
  *(v5 + 8) = v4;
  return result;
}

uint64_t (*sub_1C4B6055C(uint64_t a1, uint64_t a2))(void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 32);
  return result;
}

uint64_t sub_1C4B60580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1C4EFD548();
  v6 = sub_1C43FBCE0(v5);
  v8 = *(v7 + 16);

  return v8(a2, v2 + v4, v6);
}

uint64_t sub_1C4B60648()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C44A7DA0;

  return sub_1C4B60274();
}

uint64_t sub_1C4B606D8(void (*a1)(__n128))
{
  v2 = sub_1C4EFF0C8();
  v3 = sub_1C43FCDF8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v3);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v8);
  sub_1C4400E48();
  sub_1C44CD2C8(v11, v12);
  sub_1C4F02858();
  (*(v5 + 8))(v10, v2);
  return sub_1C43FBC98();
}

uint64_t (*sub_1C4B60BE8(void *a1, uint64_t a2))()
{
  v5 = sub_1C4A9A30C(0x68uLL);
  *a1 = v5;
  v6 = sub_1C4EFEEF8();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[9] = v7;
  v9 = sub_1C4A9A30C(*(v7 + 64));
  v5[10] = v9;
  v10 = *v2;
  swift_isUniquelyReferenced_nonNull_native();
  (*(v8 + 16))(v9, a2, v6);
  v5[11] = sub_1C4B61D34(v5);
  v5[12] = sub_1C4B6115C(v5 + 4, v9);
  return sub_1C4B62178;
}

uint64_t (*sub_1C4B60D04(void *a1, uint64_t a2))()
{
  v5 = sub_1C4A9A30C(0x68uLL);
  *a1 = v5;
  v6 = sub_1C4EFF0C8();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[9] = v7;
  v9 = sub_1C4A9A30C(*(v7 + 64));
  v5[10] = v9;
  v10 = *v2;
  swift_isUniquelyReferenced_nonNull_native();
  (*(v8 + 16))(v9, a2, v6);
  v5[11] = sub_1C4B61D34(v5);
  v5[12] = sub_1C4B613C8(v5 + 4, v9);
  return sub_1C4B62178;
}

uint64_t (*sub_1C4B60E20(void *a1, uint64_t a2))()
{
  v5 = sub_1C4A9A30C(0x68uLL);
  *a1 = v5;
  v6 = sub_1C4EF9DD8();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[9] = v7;
  v9 = sub_1C4A9A30C(*(v7 + 64));
  v5[10] = v9;
  v10 = *v2;
  swift_isUniquelyReferenced_nonNull_native();
  (*(v8 + 16))(v9, a2, v6);
  v5[11] = sub_1C4B61D5C(v5);
  v5[12] = sub_1C4B61634(v5 + 4, v9);
  return sub_1C4B60F3C;
}

void sub_1C4B60F40(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v6 = sub_1C4401EF4();
  v2(v6);
  free(v3);

  free(v1);
}

uint64_t (*sub_1C4B60FD4(void *a1, uint64_t a2))()
{
  v5 = sub_1C4A9A30C(0x50uLL);
  *a1 = v5;
  v6 = *v2;
  swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_1C4B61D34(v5);
  v5[9] = sub_1C4B618B0(v5 + 4, a2);
  return sub_1C4B61064;
}

uint64_t (*sub_1C4B61068(void *a1, uint64_t a2, uint64_t a3))()
{
  v7 = sub_1C4A9A30C(0x50uLL);
  *a1 = v7;
  v8 = *v3;
  swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_1C4B61D34(v7);
  v7[9] = sub_1C4B61B18(v7 + 4, a2, a3);
  return sub_1C4B6217C;
}

void sub_1C4B61100(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v3 = sub_1C4401EF4();
  v2(v3);

  free(v1);
}

void (*sub_1C4B6115C(void *a1, uint64_t a2))(uint64_t **a1)
{
  v3 = v2;
  v6 = sub_1C4A9A30C(0x40uLL);
  *a1 = v6;
  v6[1] = a2;
  v6[2] = v2;
  v7 = sub_1C4EFEEF8();
  v6[3] = v7;
  v8 = *(v7 - 8);
  v6[4] = v8;
  v6[5] = sub_1C4A9A30C(*(v8 + 64));
  v9 = *v2;
  sub_1C457AB64();
  *(v6 + 56) = v11 & 1;
  if (__OFADD__(*(v9 + 16), (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v12 = v10;
  v13 = v11;
  sub_1C456902C(&qword_1EC0BA838, &unk_1C4F54220);
  if (sub_1C4F02458())
  {
    v14 = *v3;
    sub_1C457AB64();
    if ((v13 & 1) == (v16 & 1))
    {
      v12 = v15;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_1C4F029F8();
    __break(1u);
    return result;
  }

LABEL_5:
  v6[6] = v12;
  if (v13)
  {
    v17 = *(*(*v3 + 56) + 8 * v12);
  }

  else
  {
    v17 = 0;
  }

  *v6 = v17;
  return sub_1C4B612E8;
}

void sub_1C4B612E8(uint64_t **a1)
{
  sub_1C447FA48(a1);
  if (v2)
  {
    sub_1C4423CE4();
    if (v6)
    {
      *(v3[7] + 8 * v4) = v2;
    }

    else
    {
      v11 = sub_1C4414F20();
      v12(v11);
      v13 = sub_1C445E9E8();
      sub_1C457DD28(v13, v14, v15, v16);
    }
  }

  else if (v5)
  {
    v7 = sub_1C4417864();
    v8(v7);
    sub_1C456902C(&qword_1EC0B8720, &qword_1C4F0D970);
    sub_1C443FFB0();
    sub_1C44CD2C8(v9, v10);
    sub_1C444B2E4();
  }

  sub_1C4416880();

  free(v3);

  free(v1);
}

void (*sub_1C4B613C8(void *a1, uint64_t a2))(uint64_t **a1)
{
  v3 = v2;
  v6 = sub_1C4A9A30C(0x40uLL);
  *a1 = v6;
  v6[1] = a2;
  v6[2] = v2;
  v7 = sub_1C4EFF0C8();
  v6[3] = v7;
  v8 = *(v7 - 8);
  v6[4] = v8;
  v6[5] = sub_1C4A9A30C(*(v8 + 64));
  v9 = *v2;
  sub_1C44E3664();
  *(v6 + 56) = v11 & 1;
  if (__OFADD__(*(v9 + 16), (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v12 = v10;
  v13 = v11;
  sub_1C456902C(&qword_1EC0BA200, &qword_1C4F13B78);
  if (sub_1C4F02458())
  {
    v14 = *v3;
    sub_1C44E3664();
    if ((v13 & 1) == (v16 & 1))
    {
      v12 = v15;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_1C4F029F8();
    __break(1u);
    return result;
  }

LABEL_5:
  v6[6] = v12;
  if (v13)
  {
    v17 = *(*(*v3 + 56) + 8 * v12);
  }

  else
  {
    v17 = 0;
  }

  *v6 = v17;
  return sub_1C4B61554;
}

void sub_1C4B61554(uint64_t **a1)
{
  sub_1C447FA48(a1);
  if (v2)
  {
    sub_1C4423CE4();
    if (v6)
    {
      *(v3[7] + 8 * v4) = v2;
    }

    else
    {
      v11 = sub_1C4414F20();
      v12(v11);
      v13 = sub_1C445E9E8();
      sub_1C457EB2C(v13);
    }
  }

  else if (v5)
  {
    v7 = sub_1C4417864();
    v8(v7);
    sub_1C456902C(&qword_1EC0BA1F8, &unk_1C4F54230);
    sub_1C4400E48();
    sub_1C44CD2C8(v9, v10);
    sub_1C444B2E4();
  }

  sub_1C4416880();

  free(v3);

  free(v1);
}

void (*sub_1C4B61634(void *a1, uint64_t a2))(uint64_t **a1)
{
  v3 = v2;
  v6 = sub_1C4A9A30C(0x40uLL);
  *a1 = v6;
  v6[1] = a2;
  v6[2] = v2;
  v7 = sub_1C4EF9DD8();
  v6[3] = v7;
  v8 = *(v7 - 8);
  v6[4] = v8;
  v6[5] = sub_1C4A9A30C(*(v8 + 64));
  v9 = *v2;
  sub_1C457B1F0();
  *(v6 + 56) = v11 & 1;
  if (__OFADD__(*(v9 + 16), (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v12 = v10;
  v13 = v11;
  sub_1C456902C(&qword_1EC0C0BA0, &unk_1C4F54200);
  if (sub_1C4F02458())
  {
    v14 = *v3;
    sub_1C457B1F0();
    if ((v13 & 1) == (v16 & 1))
    {
      v12 = v15;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_1C4F029F8();
    __break(1u);
    return result;
  }

LABEL_5:
  v6[6] = v12;
  if (v13)
  {
    v17 = *(*(*v3 + 56) + 8 * v12);
  }

  else
  {
    v17 = 0;
  }

  *v6 = v17;
  return sub_1C4B617C0;
}

void sub_1C4B617C0(uint64_t **a1)
{
  sub_1C447FA48(a1);
  if (v2)
  {
    sub_1C4423CE4();
    if (v6)
    {
      *(v3[7] + 8 * v4) = v2;
    }

    else
    {
      v9 = sub_1C4414F20();
      v10(v9);
      v11 = sub_1C445E9E8();
      sub_1C457E054(v11, v12, v13, v14);
    }
  }

  else if (v5)
  {
    v7 = sub_1C4417864();
    v8(v7);
    sub_1C456902C(&qword_1EC0C6370, &qword_1C4F0E1A0);
    sub_1C44CD2C8(&qword_1EC0B8590, MEMORY[0x1E6969680]);
    sub_1C444B2E4();
  }

  sub_1C4416880();

  free(v3);

  free(v1);
}

void (*sub_1C4B618B0(void *a1, uint64_t a2))(uint64_t *a1)
{
  v3 = v2;
  v6 = sub_1C4A9A30C(0x60uLL);
  *a1 = v6;
  v6[9] = a2;
  v6[10] = v2;
  v7 = *v2;
  v8 = sub_1C457AF68();
  *(v6 + 41) = v9 & 1;
  if (__OFADD__(*(v7 + 16), (v9 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v10 = v8;
  v11 = v9;
  sub_1C456902C(&qword_1EC0BA718, &qword_1C4F541F0);
  if (sub_1C4F02458())
  {
    v12 = *v3;
    v13 = sub_1C457AF68();
    if ((v11 & 1) == (v14 & 1))
    {
      v10 = v13;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_1C4F029F8();
    __break(1u);
    return result;
  }

LABEL_5:
  v6[11] = v10;
  if (v11)
  {
    v15 = *(*v3 + 56) + 24 * v10;
    v16 = *v15;
    v17 = *(v15 + 16);
  }

  else
  {
    v16 = 0uLL;
    v17 = 1;
  }

  *(v6 + 3) = v16;
  v6[8] = v17;
  return sub_1C4B619EC;
}

void sub_1C4B619EC(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  v3 = *(*a1 + 64);
  v5 = *(*a1 + 41);
  if (v3 == 1)
  {
    if (*(*a1 + 41))
    {
      sub_1C45EC75C(*(**(v1 + 80) + 48) + 48 * *(v1 + 88));
      sub_1C456902C(&qword_1EC0C3BE8, &qword_1C4F541F8);
      sub_1C45A2304();
      sub_1C4F02478();
    }
  }

  else
  {
    v6 = *(v1 + 88);
    v7 = **(v1 + 80);
    if (v5)
    {
      v8 = (*(v7 + 56) + 24 * v6);
      *v8 = v2;
      v8[1] = v4;
      v8[2] = v3;
    }

    else
    {
      v9 = *(v1 + 72);
      sub_1C457E1E0(v6, v9, v2, v4, v3, v7);
      sub_1C45A2358(v9, v1);
    }
  }

  v10 = *(v1 + 48);
  v11 = *(v1 + 56);
  v12 = *(v1 + 64);
  sub_1C4A9568C(v2, v4, v3);
  sub_1C47023EC(v10, v11, v12);

  free(v1);
}

void (*sub_1C4B61B18(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1)
{
  v4 = v3;
  v8 = sub_1C4A9A30C(0x30uLL);
  *a1 = v8;
  v8[2] = a3;
  v8[3] = v3;
  v8[1] = a2;
  v9 = *v3;
  v10 = sub_1C445FAA8(a2, a3);
  *(v8 + 40) = v11 & 1;
  if (__OFADD__(*(v9 + 16), (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v12 = v10;
  v13 = v11;
  sub_1C456902C(&qword_1EC0BA748, &unk_1C4F231D0);
  if (sub_1C4F02458())
  {
    v14 = *v4;
    v15 = sub_1C445FAA8(a2, a3);
    if ((v13 & 1) == (v16 & 1))
    {
      v12 = v15;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_1C4F029F8();
    __break(1u);
    return result;
  }

LABEL_5:
  v8[4] = v12;
  if (v13)
  {
    v17 = *(*(*v4 + 56) + 8 * v12);
  }

  else
  {
    v17 = 0;
  }

  *v8 = v17;
  return sub_1C4B61C58;
}

void sub_1C4B61C58(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 40);
  if (v2)
  {
    v4 = v1[4];
    v5 = *v1[3];
    if (v3)
    {
      *(*(v5 + 56) + 8 * v4) = v2;
    }

    else
    {
      sub_1C44686DC(v4, v1[1], v1[2], v2, v5);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }

  else if ((*a1)[5])
  {
    sub_1C4471348(*(*v1[3] + 48) + 16 * v1[4]);
    sub_1C456902C(&qword_1EC0B9178, &qword_1C4F11B50);
    sub_1C4F02478();
  }

  v6 = *v1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  free(v1);
}

uint64_t (*sub_1C4B61D34(void *a1))()
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1C4B6216C;
}

uint64_t (*sub_1C4B61D5C(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1C4B61D84;
}

uint64_t sub_1C4B61D90(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C43FBE94();
  v5 = v4(v3);
  sub_1C43FBCE0(v5);
  v7 = *(v6 + 32);
  v8 = sub_1C43FBC98();
  v9(v8);
  return a2;
}

uint64_t type metadata accessor for StandardEntityMapper()
{
  result = qword_1EDDE41F8;
  if (!qword_1EDDE41F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C4B61E5C()
{
  type metadata accessor for Source();
  if (v0 <= 0x3F)
  {
    sub_1C4EFD548();
    if (v1 <= 0x3F)
    {
      sub_1C4B61F28();
      if (v2 <= 0x3F)
      {
        type metadata accessor for PhaseStores();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C4B61F28()
{
  if (!qword_1EC0C3BE0)
  {
    v0 = sub_1C4F01F48();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC0C3BE0);
    }
  }
}

uint64_t sub_1C4B61F78(uint64_t a1)
{
  result = sub_1C44CD2C8(&qword_1EDDE4220, type metadata accessor for StandardEntityMapper);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B61FD0(uint64_t a1)
{
  result = sub_1C44CD2C8(&qword_1EDDE4208, type metadata accessor for StandardEntityMapper);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B62028(uint64_t a1)
{
  result = sub_1C44CD2C8(&qword_1EDDE4210, type metadata accessor for StandardEntityMapper);
  *(a1 + 8) = result;
  return result;
}

void *sub_1C4B62080(void *result)
{
  if (result != 1)
  {
  }

  return result;
}

id sub_1C4B620C4(id result)
{
  if (result != 1)
  {
    v2 = result;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    return v2;
  }

  return result;
}

uint64_t sub_1C4B62114(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C43FBE94();
  v5 = v4(v3);
  sub_1C43FBCE0(v5);
  v7 = *(v6 + 16);
  v8 = sub_1C43FBC98();
  v9(v8);
  return a2;
}

void sub_1C4B62180(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

unint64_t TransformingError.description.getter()
{
  result = 0xD000000000000014;
  switch(*v0)
  {
    case 1:
      result = 0xD00000000000001FLL;
      break;
    case 2:
      result = 0xD000000000000033;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    case 4:
      result = 0xD00000000000001CLL;
      break;
    case 5:
      result = 0xD00000000000001BLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t TransformingError.hashValue.getter()
{
  v1 = *v0;
  sub_1C4F02AF8();
  MEMORY[0x1C69417F0](v1);
  return sub_1C4F02B68();
}

uint64_t StandardTransformer.source.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for StandardTransformer();
  v3 = sub_1C441A578(*(v2 + 20));
  return sub_1C4471C00(v3, a1);
}

uint64_t type metadata accessor for StandardTransformer()
{
  result = qword_1EC0C3C10;
  if (!qword_1EC0C3C10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StandardTransformer.pipelineType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StandardTransformer();
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t StandardTransformer.init(_:stores:pipelineType:sourceTransform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a3;
  v12 = type metadata accessor for StandardTransformer();
  v13 = a6 + v12[8];
  *(v13 + 32) = 0;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  sub_1C448571C(a2, a6);
  result = sub_1C448571C(a1, a6 + v12[5]);
  *(a6 + v12[7]) = v11;
  v15 = (a6 + v12[6]);
  *v15 = a4;
  v15[1] = a5;
  return result;
}

void *sub_1C4B62488@<X0>(void *a1@<X8>)
{
  v4 = type metadata accessor for Source();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1C43FBCC4();
  v8 = v7 - v6;
  v9 = sub_1C4EFD548();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1C43FBCC4();
  v13 = v12 - v11;
  v14 = type metadata accessor for Configuration();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  sub_1C43FBCC4();
  v18 = (v17 - v16);
  v19 = type metadata accessor for StandardTransformer();
  sub_1C4B62EF0(v1 + v19[8], &v25);
  if (v26)
  {
    sub_1C441D670(&v25, v27);
    return sub_1C441D670(v27, a1);
  }

  else
  {
    sub_1C4B62A5C(&v25);
    sub_1C4471C00(v1, v18);
    _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
    v21 = sub_1C441A578(v19[5]);
    sub_1C4471C00(v21, v8);
    LOBYTE(v27[0]) = 7;
    LOBYTE(v25) = *(v1 + v19[7]);
    v22 = type metadata accessor for SourceEntityStore();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_allocObject();
    result = sub_1C4B39D1C(v18, v13, v8, v27, &v25);
    if (!v2)
    {
      a1[3] = v22;
      a1[4] = &protocol witness table for SourceEntityStore;
      *a1 = result;
    }
  }

  return result;
}

uint64_t sub_1C4B62688()
{
  v1 = v0[7];
  sub_1C4B62488(v0 + 2);
  v2 = v0[7];
  v3 = (v2 + *(type metadata accessor for StandardTransformer() + 24));
  v4 = v3[1];
  v8 = (*v3 + **v3);
  v5 = (*v3)[1];
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_1C4B627DC;

  return v8(v0 + 2);
}

uint64_t sub_1C4B627DC()
{
  sub_1C43FBCD4();
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_1C4B62960;
  }

  else
  {
    v3 = sub_1C4B628EC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1C4B628EC()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 56);
  sub_1C4EF9AE8();
  sub_1C4643640();
  sub_1C440962C((v0 + 16));
  sub_1C43FBDA0();

  return v2();
}

uint64_t sub_1C4B62960()
{
  sub_1C43FBCD4();
  sub_1C440962C((v0 + 16));
  v1 = *(v0 + 72);
  sub_1C43FBDA0();

  return v2();
}

Swift::Void __swiftcall StandardTransformer.clearAllData()()
{
  sub_1C4B62488(&v2);
  sub_1C441D670(&v2, v3);
  v0 = v4;
  v1 = v5;
  sub_1C4409678(v3, v4);
  (*(v1 + 16))(v0, v1);
  sub_1C440962C(v3);
}

uint64_t sub_1C4B62A5C(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0C3BF0, &qword_1C4F54248);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C4B62AC8()
{
  result = qword_1EC0C3BF8;
  if (!qword_1EC0C3BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3BF8);
  }

  return result;
}

uint64_t sub_1C4B62B20(uint64_t a1)
{
  result = sub_1C4B62C84(&qword_1EC0BA560);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B62B64(uint64_t a1)
{
  result = sub_1C4B62C84(&qword_1EC0C3C00);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B62BB4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C44E2E7C;

  return StandardTransformer.execute()();
}

uint64_t sub_1C4B62C40(uint64_t a1)
{
  result = sub_1C4B62C84(&qword_1EC0C3C08);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B62C84(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for StandardTransformer();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TransformingError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

void sub_1C4B62DD0()
{
  type metadata accessor for PhaseStores();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Source();
    if (v1 <= 0x3F)
    {
      sub_1C4A723C8();
      if (v2 <= 0x3F)
      {
        sub_1C4B62E8C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C4B62E8C()
{
  if (!qword_1EC0C3C20)
  {
    sub_1C4572308(&qword_1EC0C3C28, &unk_1C4F54408);
    v0 = sub_1C4F01F48();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC0C3C20);
    }
  }
}

uint64_t sub_1C4B62EF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0C3BF0, &qword_1C4F54248);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1C4B62F60()
{
  sub_1C43FE96C();
  v1 = sub_1C4EFB768();
  v2 = sub_1C43FCDF8(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBCC4();
  v9 = v8 - v7;
  memset(v31, 0, 40);
  sub_1C4EFB758();
  v10 = sub_1C4EFB978();
  if (v0)
  {
    (*(v4 + 8))(v9, v1);
    sub_1C4423A0C(v31, &unk_1EC0BC770, &qword_1C4F10DC0);
LABEL_12:
    sub_1C43FBC80();
  }

  else
  {
    v11 = v10;
    (*(v4 + 8))(v9, v1);
    sub_1C4423A0C(v31, &unk_1EC0BC770, &qword_1C4F10DC0);
    v12 = 0;
    v13 = *(v11 + 16);
    v14 = (v11 + 40);
    v15 = &unk_1EDDFF000;
    v16 = qword_1EDE2E088;
    v17 = v11;
    v29 = v11;
    v30 = v13;
    while (1)
    {
      if (v13 == v12)
      {

        goto LABEL_12;
      }

      if (v12 >= *(v17 + 16))
      {
        break;
      }

      v18 = *v14;
      v32 = *(v14 - 1);
      v19 = v15[350];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (v19 != -1)
      {
        swift_once();
      }

      v20 = sub_1C4F00978();
      sub_1C442B738(v20, v16);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v21 = sub_1C4F00968();
      v22 = sub_1C4F01CF8();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = v16;
        v25 = v15;
        v26 = swift_slowAlloc();
        v31[0] = v26;
        *v23 = 136315138;
        *(v23 + 4) = sub_1C441D828(v32, v18, v31);
        _os_log_impl(&dword_1C43F8000, v21, v22, "grdb_migrations: %s", v23, 0xCu);
        sub_1C440962C(v26);
        v27 = v26;
        v15 = v25;
        v16 = v24;
        MEMORY[0x1C6942830](v27, -1, -1);
        v28 = v23;
        v17 = v29;
        v13 = v30;
        MEMORY[0x1C6942830](v28, -1, -1);
      }

      v14 += 2;
      ++v12;
    }

    __break(1u);
  }
}

uint64_t sub_1C4B63298()
{
  v0 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = v12 - v2;
  v4 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  sub_1C4EFBDB8();
  v8 = sub_1C4EFBE38();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();

  sub_1C4423A0C(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();

  sub_1C4423A0C(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();

  sub_1C4423A0C(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  v9 = *MEMORY[0x1E69A00D0];
  v10 = sub_1C4EFBF38();
  (*(*(v10 - 8) + 104))(v3, v9, v10);
  sub_1C440BAA8(v3, 0, 1, v10);
  sub_1C4EFB478();
  return sub_1C4423A0C(v3, &unk_1EC0BCAB0, &unk_1C4F111A0);
}

void sub_1C4B6352C()
{
  sub_1C43FE96C();
  v0 = sub_1C4EFB0B8();
  v1 = sub_1C43FCDF8(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FBCC4();
  v8 = v7 - v6;
  sub_1C440B328();
  sub_1C44FAF64(v9, v10);
  sub_1C456902C(&unk_1EC0BCA80, &unk_1C4F111B0);
  sub_1C4829BD0();
  sub_1C4F020C8();
  sub_1C440E7EC();
  sub_1C4EFBFC8();
  (*(v3 + 8))(v8, v0);
  sub_1C43FBC80();
}

uint64_t sub_1C4B63680()
{
  v0 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = v12 - v2;
  v4 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  sub_1C4EFBDB8();
  v8 = sub_1C4EFBE38();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();

  sub_1C4423A0C(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();

  sub_1C4423A0C(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  v9 = *MEMORY[0x1E69A00D0];
  v10 = sub_1C4EFBF38();
  (*(*(v10 - 8) + 104))(v3, v9, v10);
  sub_1C440BAA8(v3, 0, 1, v10);
  sub_1C4EFB478();
  return sub_1C4423A0C(v3, &unk_1EC0BCAB0, &unk_1C4F111A0);
}

uint64_t sub_1C4B638B8()
{
  v0 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = v12 - v2;
  v4 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  sub_1C4EFBDB8();
  v8 = sub_1C4EFBE38();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();

  sub_1C4423A0C(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();

  sub_1C4423A0C(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();

  sub_1C4423A0C(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();

  sub_1C4423A0C(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  v9 = *MEMORY[0x1E69A00D0];
  v10 = sub_1C4EFBF38();
  (*(*(v10 - 8) + 104))(v3, v9, v10);
  sub_1C440BAA8(v3, 0, 1, v10);
  sub_1C4EFB478();
  return sub_1C4423A0C(v3, &unk_1EC0BCAB0, &unk_1C4F111A0);
}

void sub_1C4B63B94()
{
  sub_1C43FE96C();
  v1 = sub_1C4EFB0B8();
  v2 = sub_1C43FCDF8(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBCC4();
  v9 = v8 - v7;
  sub_1C4EFBF68();
  if (!v0)
  {
    sub_1C440B328();
    sub_1C44FAF64(v10, v11);
    sub_1C456902C(&unk_1EC0BCA80, &unk_1C4F111B0);
    sub_1C4829BD0();
    sub_1C4F020C8();
    sub_1C440E7EC();
    sub_1C4EFBFC8();
    (*(v4 + 8))(v9, v1);
  }

  sub_1C43FBC80();
}

void sub_1C4B63DF4()
{
  sub_1C43FE96C();
  v12[1] = v0;
  v2 = v1;
  v3 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v12 - v5;
  v7 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1C4EFBDB8();
  sub_1C4EFBE38();
  sub_1C4405740();
  sub_1C4EFB498();

  sub_1C4432A54();
  sub_1C4EFBDD8();
  sub_1C4405740();
  sub_1C4EFB498();

  sub_1C4432A54();
  sub_1C4EFBDD8();
  sub_1C4405740();
  sub_1C4EFB498();

  sub_1C4432A54();
  sub_1C4EFBDD8();
  sub_1C4405740();
  sub_1C4EFB498();

  v9 = sub_1C4432A54();
  v2(v9);
  sub_1C4405740();
  sub_1C4EFB498();

  sub_1C4432A54();
  v10 = *MEMORY[0x1E69A00D0];
  v11 = sub_1C4EFBF38();
  (*(*(v11 - 8) + 104))(v6, v10, v11);
  sub_1C440BAA8(v6, 0, 1, v11);
  sub_1C4EFB478();
  sub_1C4423A0C(v6, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C43FBC80();
}

uint64_t sub_1C4B64128()
{
  MEMORY[0x1C693A150](0x656372756F73, 0xE600000000000000, 0x614E656372756F73, 0xEA0000000000656DLL);
  MEMORY[0x1C693A150](0x797469746E65, 0xE600000000000000, 0x6C43797469746E65, 0xEF656D614E737361);
  return MEMORY[0x1C693A150](0x656E696C65706970, 0xED0000657079745FLL, 0x656E696C65706970, 0xEC00000065707954);
}

unint64_t sub_1C4B642D0()
{
  sub_1C4F02248();

  sub_1C4EF98F8();
  sub_1C44266D0();
  v0 = sub_1C4F02858();
  MEMORY[0x1C6940010](v0);

  MEMORY[0x1C6940010](62, 0xE100000000000000);
  return 0xD000000000000011;
}

uint64_t sub_1C4B643B4()
{
  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore13StateDatabase_url;
  v2 = sub_1C4EF98F8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1C4467948(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore13StateDatabase_config);
  v3 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore13StateDatabase_pool);

  return v0;
}

uint64_t sub_1C4B64434()
{
  sub_1C4B643B4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1C4B644B8()
{
  if (qword_1EDDFF418 != -1)
  {
    swift_once();
  }
}

uint64_t type metadata accessor for TaskProgress()
{
  result = qword_1EDDEAF88;
  if (!qword_1EDDEAF88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4B645B4()
{
  result = sub_1C4EFD548();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C4B64638(void *a1, void *a2)
{
  if ((MEMORY[0x1C6938740](*a1, a1[1], *a2, a2[1]) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v4 && (sub_1C4F02938() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for TaskProgress();
  if ((sub_1C44E560C(a1 + *(v5 + 24), a2 + *(v5 + 24)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(v5 + 28);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_1C4F02938();
}

uint64_t sub_1C4B64708(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656B6F74 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x614E656372756F73 && a2 == 0xEA0000000000656DLL;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6567617473 && a2 == 0xE500000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C4F02938();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1C4B64864(char a1)
{
  result = 0x6E656B6F74;
  switch(a1)
  {
    case 1:
      result = 0x614E656372756F73;
      break;
    case 2:
      result = 0x6C43797469746E65;
      break;
    case 3:
      result = 0x6567617473;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4B648E8(void *a1)
{
  v3 = v1;
  v5 = sub_1C456902C(&qword_1EC0C3C78, &qword_1C4F546C0);
  v6 = sub_1C43FCDF8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v25[-v11];
  v13 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4B65370();
  sub_1C4F02BF8();
  v14 = v3[1];
  v26 = *v3;
  v27 = v14;
  v25[15] = 0;
  sub_1C44344B8(v26, v14);
  sub_1C446E5F8();
  sub_1C4F027E8();
  sub_1C4434000(v26, v27);
  if (!v2)
  {
    v15 = v3[2];
    v16 = v3[3];
    sub_1C4420364(1);
    v17 = type metadata accessor for TaskProgress();
    v18 = *(v17 + 24);
    LOBYTE(v26) = 2;
    sub_1C4EFD548();
    sub_1C4407BA8();
    sub_1C4B65484(v19, v20);
    sub_1C4F027E8();
    v21 = (v3 + *(v17 + 28));
    v22 = *v21;
    v23 = v21[1];
    sub_1C4420364(3);
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_1C4B64ADC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = sub_1C4EFD548();
  v4 = sub_1C43FCDF8(v3);
  v42 = v5;
  v43 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1C456902C(&qword_1EC0C3C68, &qword_1C4F546B8);
  v10 = sub_1C43FCDF8(v44);
  v41 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = type metadata accessor for TaskProgress();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4B65370();
  v19 = v45;
  sub_1C4F02BC8();
  if (v19)
  {
    return sub_1C440962C(a1);
  }

  v39 = v9;
  v45 = v14;
  v20 = v17;
  v21 = v42;
  v22 = v43;
  v47 = 0;
  sub_1C444C16C();
  sub_1C4F026C8();
  *v20 = v46;
  *(v20 + 16) = sub_1C4400E60(1);
  *(v20 + 24) = v23;
  LOBYTE(v46) = 2;
  sub_1C4407BA8();
  sub_1C4B65484(v24, v25);
  v26 = v39;
  v27 = v22;
  v38 = 0;
  sub_1C4F026C8();
  v28 = v45;
  (*(v21 + 32))(v20 + *(v45 + 24), v26, v27);
  v29 = sub_1C4400E60(3);
  v39 = v30;
  v31 = v29;
  v32 = sub_1C441A594();
  v33(v32);
  v34 = (v20 + *(v28 + 28));
  v36 = v39;
  v35 = v40;
  *v34 = v31;
  v34[1] = v36;
  sub_1C4B653C4(v20, v35);
  sub_1C440962C(a1);
  return sub_1C4B65428(v20);
}

uint64_t sub_1C4B64E98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4B64708(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4B64EC0(uint64_t a1)
{
  v2 = sub_1C4B65370();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4B64EFC(uint64_t a1)
{
  v2 = sub_1C4B65370();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4B64F6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4B65484(&qword_1EC0C3C60, type metadata accessor for TaskProgress);

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1C4B65000()
{
  sub_1C4B65484(&qword_1EC0C3C58, type metadata accessor for TaskProgress);

  return sub_1C4EFB6D8();
}

uint64_t sub_1C4B65184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4B65484(&qword_1EC0C3C80, type metadata accessor for TaskProgress);

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

uint64_t sub_1C4B652E0(uint64_t a1)
{
  result = sub_1C4B65484(&qword_1EC0C3C58, type metadata accessor for TaskProgress);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B65338()
{
  v0 = *aTaskProgress;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v0;
}

unint64_t sub_1C4B65370()
{
  result = qword_1EC0C3C70;
  if (!qword_1EC0C3C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3C70);
  }

  return result;
}

uint64_t sub_1C4B653C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TaskProgress();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4B65428(uint64_t a1)
{
  v2 = type metadata accessor for TaskProgress();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C4B65484(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for TaskProgress.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4B655AC()
{
  result = qword_1EC0C3C88;
  if (!qword_1EC0C3C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3C88);
  }

  return result;
}

unint64_t sub_1C4B65604()
{
  result = qword_1EC0C3C90;
  if (!qword_1EC0C3C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3C90);
  }

  return result;
}

unint64_t sub_1C4B6565C()
{
  result = qword_1EC0C3C98;
  if (!qword_1EC0C3C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3C98);
  }

  return result;
}

uint64_t StateStore.__allocating_init(config:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  StateStore.init(config:)(a1);
  return v5;
}

void *StateStore.init(config:)(uint64_t a1)
{
  v4 = *v1;
  v5 = OBJC_IVAR____TtC24IntelligencePlatformCore10StateStore_config;
  sub_1C4431258(a1, v1 + OBJC_IVAR____TtC24IntelligencePlatformCore10StateStore_config, type metadata accessor for Configuration);
  if (qword_1EDDFF418 != -1)
  {
    swift_once();
  }

  v6 = sub_1C44F8B30();
  sub_1C441A5A4();
  sub_1C4454318(a1, v7);
  if (v2)
  {
    sub_1C441A5A4();
    sub_1C4454318(v1 + v5, v8);
    v9 = *(*v1 + 48);
    v10 = *(*v1 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v1[2] = v6;
  }

  return v1;
}

uint64_t StateStore.deinit()
{
  v1 = *(v0 + 16);

  sub_1C441A5A4();
  sub_1C4454318(v0 + v2, v3);
  return v0;
}

uint64_t StateStore.__deallocating_deinit()
{
  v1 = v0[2];

  sub_1C441A5A4();
  sub_1C4454318(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StateStore()
{
  result = qword_1EDDFA008;
  if (!qword_1EDDFA008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4B65978()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore13StateDatabase_pool);

  v2 = sub_1C49A5640(sub_1C4B659DC, 0);

  return v2;
}

uint64_t sub_1C4B659DC@<X0>(uint64_t *a1@<X8>)
{
  v71 = a1;
  v1 = type metadata accessor for TaskProgress();
  v70 = *(v1 - 8);
  v2 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C456902C(&qword_1EC0C3CA0, &qword_1C4F54818);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v55 - v8;
  sub_1C4B66050(qword_1EDDEAFA0);
  sub_1C4EFADF8();
  sub_1C4401CBC(&qword_1EDDF00E8, &qword_1EC0C3CA0, &qword_1C4F54818);
  sub_1C4B66050(&qword_1EDDEAF98);
  v10 = v73;
  v11 = sub_1C4EFAFD8();
  result = (*(v6 + 8))(v9, v5);
  if (!v10)
  {
    v73 = v1;

    v66 = v11;
    sub_1C456902C(&qword_1EC0C3CA8, &qword_1C4F54820);
    sub_1C4401CBC(&qword_1EDDF01C8, &qword_1EC0C3CA8, &qword_1C4F54820);
    v13 = sub_1C4F00F18();
    sub_1C456902C(&qword_1EC0B9270, &unk_1C4F32030);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0D130;
    *(inited + 32) = 0x6B6F54206B736154;
    *(inited + 40) = 0xEB00000000736E65;
    v56 = inited;
    sub_1C456902C(&qword_1EC0BAB10, &qword_1C4F16C20);
    result = sub_1C4F02538();
    v15 = result;
    v16 = 0;
    v17 = *(v13 + 64);
    v57 = v13 + 64;
    v18 = 1 << *(v13 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & v17;
    v21 = (v18 + 63) >> 6;
    v62 = result + 64;
    v23 = v70;
    v22 = v71;
    v24 = v73;
    v60 = 0;
    v59 = v13;
    v58 = result;
    v61 = v21;
    if (v20)
    {
      while (1)
      {
        v25 = __clz(__rbit64(v20));
        v26 = (v20 - 1) & v20;
LABEL_11:
        v29 = v25 | (v16 << 6);
        v67 = v26;
        v30 = *(v13 + 56);
        v31 = (*(v13 + 48) + 16 * v29);
        v32 = v31[1];
        v68 = *v31;
        v69 = v29;
        v33 = *(v30 + 8 * v29);
        v34 = *(v33 + 16);
        if (v34)
        {
          v65 = v16;
          v76 = MEMORY[0x1E69E7CC0];
          v64 = v32;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C44CD9C0();
          v35 = v33;
          v36 = v76;
          v37 = (*(v23 + 80) + 32) & ~*(v23 + 80);
          v63 = v35;
          v38 = v35 + v37;
          v72 = *(v23 + 72);
          do
          {
            sub_1C4431258(v38, v4, type metadata accessor for TaskProgress);
            v39 = &v4[*(v24 + 28)];
            v40 = *(v39 + 1);
            v74 = *v39;
            v75 = v40;
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            MEMORY[0x1C6940010](2108704, 0xE300000000000000);
            v41 = &v4[*(v24 + 24)];
            v42 = sub_1C4EFD3D8();
            MEMORY[0x1C6940010](v42);

            MEMORY[0x1C6940010](2108704, 0xE300000000000000);
            MEMORY[0x1C6940010](*(v4 + 2), *(v4 + 3));
            v43 = v74;
            v44 = v75;
            sub_1C4454318(v4, type metadata accessor for TaskProgress);
            v76 = v36;
            v45 = *(v36 + 16);
            if (v45 >= *(v36 + 24) >> 1)
            {
              sub_1C44CD9C0();
              v36 = v76;
            }

            *(v36 + 16) = v45 + 1;
            v46 = v36 + 16 * v45;
            *(v46 + 32) = v43;
            *(v46 + 40) = v44;
            v24 = v73;
            v38 += v72;
            --v34;
          }

          while (v34);

          v23 = v70;
          v22 = v71;
          v13 = v59;
          v15 = v58;
          v16 = v65;
          result = v64;
        }

        else
        {
          result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v36 = MEMORY[0x1E69E7CC0];
        }

        v47 = v69;
        *(v62 + ((v69 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v69;
        v48 = (v15[6] + 16 * v47);
        *v48 = v68;
        v48[1] = result;
        *(v15[7] + 8 * v47) = v36;
        v49 = v15[2];
        v50 = __OFADD__(v49, 1);
        v51 = v49 + 1;
        if (v50)
        {
          break;
        }

        v15[2] = v51;
        v21 = v61;
        v20 = v67;
        if (!v67)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      v27 = v16;
      while (1)
      {
        v16 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        if (v16 >= v21)
        {

          v52 = sub_1C456902C(&qword_1EC0C3CB0, &qword_1C4F54828);
          v53 = v56;
          *(v56 + 72) = v52;
          *(v53 + 48) = v15;
          v54 = sub_1C4F00F28();

          *v22 = v54;
          return result;
        }

        v28 = *(v57 + 8 * v16);
        ++v27;
        if (v28)
        {
          v25 = __clz(__rbit64(v28));
          v26 = (v28 - 1) & v28;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C4B66050(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TaskProgress();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C4B66094@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for TaskProgress() + 24);
  result = sub_1C4EFD3D8();
  *a2 = result;
  a2[1] = v5;
  return result;
}

void sub_1C4B66128()
{
  sub_1C4B661AC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1C4B661AC()
{
  if (!qword_1EDDFF9A0)
  {
    sub_1C4F001E8();
    v0 = sub_1C4F01F48();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDFF9A0);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for StaticKnowledgeAssetType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C4B662E0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701869940 && a2 == 0xE400000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x4665727574616566 && a2 == 0xEB0000000067616CLL)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C4F02938();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C4B663FC(char a1)
{
  if (!a1)
  {
    return 1701667182;
  }

  if (a1 == 1)
  {
    return 1701869940;
  }

  return 0x4665727574616566;
}

uint64_t sub_1C4B6644C(void *a1)
{
  v3 = v1;
  v5 = sub_1C456902C(&qword_1EC0C3CC8, &qword_1C4F549D8);
  sub_1C43FCDF8(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20[-v11];
  v13 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4B67A80();
  sub_1C4F02BF8();
  v14 = *v3;
  v15 = v3[1];
  v20[15] = 0;
  sub_1C4F02798();
  if (!v2)
  {
    v20[14] = *(v3 + 16);
    v20[13] = 1;
    sub_1C4B67B98();
    sub_1C4F027E8();
    v16 = *(type metadata accessor for StaticKnowledgeAssetMetadataInManifest(0) + 24);
    v20[12] = 2;
    sub_1C4F001E8();
    sub_1C441A5BC();
    sub_1C4B67BEC(v17, v18);
    sub_1C4F02778();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t sub_1C4B66624@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v4 = *(*(sub_1C456902C(&qword_1EC0BDCB0, &unk_1C4F54830) - 8) + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v30 - v6;
  v8 = sub_1C456902C(&qword_1EC0C3CC0, &qword_1C4F549D0);
  v9 = sub_1C43FCDF8(v8);
  v34 = v10;
  v35 = v9;
  v12 = *(v11 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  v16 = type metadata accessor for StaticKnowledgeAssetMetadataInManifest(0);
  v17 = sub_1C43FBCE0(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4B67A80();
  sub_1C4F02BC8();
  if (v2)
  {
    return sub_1C440962C(a1);
  }

  v31 = v16;
  v32 = v7;
  v23 = v34;
  v39 = 0;
  *v21 = sub_1C4F02678();
  *(v21 + 1) = v24;
  v37 = 1;
  sub_1C4B67AD4();
  sub_1C4F026C8();
  v25 = v23;
  v21[16] = v38;
  sub_1C4F001E8();
  v36 = 2;
  sub_1C441A5BC();
  sub_1C4B67BEC(v26, v27);
  v28 = v32;
  sub_1C4F02658();
  (*(v25 + 8))(v15, v35);
  sub_1C4B67B28(v28, &v21[*(v31 + 24)]);
  sub_1C4B682B8(v21, v33, type metadata accessor for StaticKnowledgeAssetMetadataInManifest);
  sub_1C440962C(a1);
  return sub_1C4B68318(v21, type metadata accessor for StaticKnowledgeAssetMetadataInManifest);
}

uint64_t sub_1C4B66968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4B662E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4B66990(uint64_t a1)
{
  v2 = sub_1C4B67A80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4B669CC(uint64_t a1)
{
  v2 = sub_1C4B67A80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4B66A38()
{
  v0 = *(*(sub_1C456902C(&qword_1EC0BD8D0, &qword_1C4F2FE10) - 8) + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v7 - v2;
  v4 = sub_1C456902C(&qword_1EC0BDDB0, &qword_1C4F32058);
  sub_1C44F9918(v4, qword_1EDE2CA20);
  sub_1C442B738(v4, qword_1EDE2CA20);
  type metadata accessor for StaticKnowledgeAssetMetadata(0);
  type metadata accessor for StaticKnowledgeTriple();
  v5 = sub_1C4EFA748();
  sub_1C440BAA8(v3, 1, 1, v5);
  sub_1C4B67BEC(&qword_1EDDFAA88, type metadata accessor for StaticKnowledgeAssetMetadata);
  sub_1C4B67BEC(&qword_1EDDF4270, type metadata accessor for StaticKnowledgeTriple);
  sub_1C4EFAE58();
  return sub_1C4B67CA8(v3);
}

uint64_t sub_1C4B66BBC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1701869940 && a2 == 0xE400000000000000;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x4665727574616566 && a2 == 0xEB0000000067616CLL)
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

uint64_t sub_1C4B66D58(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x6E6F6973726576;
      break;
    case 3:
      result = 1701869940;
      break;
    case 4:
      result = 0x4665727574616566;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4B66DE0(void *a1)
{
  v3 = v1;
  v5 = sub_1C456902C(&qword_1EC0C3CE8, &qword_1C4F54E50);
  sub_1C43FCDF8(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23[-v11];
  v13 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4B68264();
  sub_1C4F02BF8();
  v14 = *v3;
  v15 = *(v3 + 8);
  v23[15] = 0;
  sub_1C4402150();
  sub_1C4F02788();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    v23[14] = 1;
    sub_1C4402150();
    sub_1C4F02798();
    v18 = v3[4];
    v23[13] = 2;
    sub_1C4402150();
    sub_1C4F027D8();
    v23[12] = *(v3 + 40);
    v23[11] = 3;
    sub_1C4B67B98();
    sub_1C4402150();
    sub_1C4F027E8();
    v19 = *(type metadata accessor for StaticKnowledgeAssetMetadata(0) + 32);
    v23[10] = 4;
    sub_1C4F001E8();
    sub_1C441A5BC();
    sub_1C4B67BEC(v20, v21);
    sub_1C4402150();
    sub_1C4F02778();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t sub_1C4B66FF8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = *(*(sub_1C456902C(&qword_1EC0BDCB0, &unk_1C4F54830) - 8) + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - v6;
  v28 = sub_1C456902C(&qword_1EC0C3CE0, &qword_1C4F54E48);
  sub_1C43FCDF8(v28);
  v9 = *(v8 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  v11 = type metadata accessor for StaticKnowledgeAssetMetadata(0);
  v12 = sub_1C43FBCE0(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v18 = a1[4];
  v29 = a1;
  sub_1C4409678(a1, v17);
  sub_1C4B68264();
  sub_1C4F02BC8();
  if (v2)
  {
    return sub_1C440962C(v29);
  }

  v35 = 0;
  sub_1C4400A9C();
  *v16 = sub_1C4F02668();
  v16[8] = v19 & 1;
  v34 = 1;
  sub_1C4400A9C();
  *(v16 + 2) = sub_1C4F02678();
  *(v16 + 3) = v20;
  v33 = 2;
  sub_1C4400A9C();
  *(v16 + 4) = sub_1C4F026B8();
  v31 = 3;
  sub_1C4B67AD4();
  sub_1C4F026C8();
  v16[40] = v32;
  sub_1C4F001E8();
  v30 = 4;
  sub_1C441A5BC();
  sub_1C4B67BEC(v21, v22);
  sub_1C4F02658();
  v23 = sub_1C440B340();
  v24(v23);
  sub_1C4B67B28(v7, &v16[*(v11 + 32)]);
  sub_1C4B682B8(v16, v27, type metadata accessor for StaticKnowledgeAssetMetadata);
  sub_1C440962C(v29);
  return sub_1C4B68318(v16, type metadata accessor for StaticKnowledgeAssetMetadata);
}

uint64_t sub_1C4B67364(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1C4F02AF8();
  a4(v8, v6);
  return sub_1C4F02B68();
}

uint64_t sub_1C4B673B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4B66BBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4B673E0(uint64_t a1)
{
  v2 = sub_1C4B68264();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4B6741C(uint64_t a1)
{
  v2 = sub_1C4B68264();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4B674B8()
{
  v0 = sub_1C4F025D8();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C4B67504(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x6E6F6973726576;
      break;
    case 3:
      result = 1701869940;
      break;
    case 4:
      result = 0x4665727574616566;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4B6758C()
{
  v0 = sub_1C4F025D8();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C4B675E0(char a1)
{
  if (a1)
  {
    return 0x7473696C70;
  }

  else
  {
    return 1852797802;
  }
}

uint64_t sub_1C4B6760C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4B67BEC(&qword_1EDDFAA78, type metadata accessor for StaticKnowledgeAssetMetadata);

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1C4B676A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4B67BEC(&qword_1EDDDFB10, type metadata accessor for StaticKnowledgeAssetMetadata);

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

uint64_t sub_1C4B67748(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1C4685280();
}

uint64_t sub_1C4B6776C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C4B674B8();
  *a2 = result;
  return result;
}

uint64_t sub_1C4B6779C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C4B67504(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C4B677C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4B68210();

  return MEMORY[0x1EEE09870](a1, a2, v4);
}

uint64_t sub_1C4B67814(uint64_t a1)
{
  v2 = sub_1C4826BB0();

  return MEMORY[0x1EEE09858](a1, v2);
}

uint64_t sub_1C4B67860(uint64_t a1)
{
  v2 = sub_1C4826AB0();

  return MEMORY[0x1EEE09A90](a1, v2);
}

uint64_t sub_1C4B678AC(uint64_t a1)
{
  v2 = sub_1C4826AB0();

  return MEMORY[0x1EEE09A88](a1, v2);
}

uint64_t sub_1C4B6791C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C4B6758C();
  *a2 = result;
  return result;
}

uint64_t sub_1C4B6794C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C4B675E0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1C4B67A2C()
{
  result = qword_1EC0C3CB8;
  if (!qword_1EC0C3CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3CB8);
  }

  return result;
}

unint64_t sub_1C4B67A80()
{
  result = qword_1EDDDC448;
  if (!qword_1EDDDC448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDC448);
  }

  return result;
}

unint64_t sub_1C4B67AD4()
{
  result = qword_1EDDFADF8;
  if (!qword_1EDDFADF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFADF8);
  }

  return result;
}

uint64_t sub_1C4B67B28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BDCB0, &unk_1C4F54830);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C4B67B98()
{
  result = qword_1EDDE1878;
  if (!qword_1EDDE1878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE1878);
  }

  return result;
}

uint64_t sub_1C4B67BEC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C4B67C34()
{
  result = qword_1EDDFAE00;
  if (!qword_1EDDFAE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFAE00);
  }

  return result;
}

uint64_t sub_1C4B67CA8(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0BD8D0, &qword_1C4F2FE10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for StaticKnowledgeAssetMetadataInManifest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

void sub_1C4B67E24()
{
  sub_1C4B67EC4();
  if (v0 <= 0x3F)
  {
    sub_1C4B661AC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C4B67EC4()
{
  if (!qword_1EDDFCDC0)
  {
    v0 = sub_1C4F01F48();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDFCDC0);
    }
  }
}

unint64_t sub_1C4B67F18()
{
  result = qword_1EC0C3CD0;
  if (!qword_1EC0C3CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3CD0);
  }

  return result;
}

unint64_t sub_1C4B67F70()
{
  result = qword_1EC0C3CD8;
  if (!qword_1EC0C3CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3CD8);
  }

  return result;
}

unint64_t sub_1C4B6805C()
{
  result = qword_1EDDDC438;
  if (!qword_1EDDDC438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDC438);
  }

  return result;
}

unint64_t sub_1C4B680B4()
{
  result = qword_1EDDDC440;
  if (!qword_1EDDDC440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDC440);
  }

  return result;
}

unint64_t sub_1C4B6810C()
{
  result = qword_1EDDFA9B8;
  if (!qword_1EDDFA9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA9B8);
  }

  return result;
}

unint64_t sub_1C4B68164()
{
  result = qword_1EDDFA9B0;
  if (!qword_1EDDFA9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA9B0);
  }

  return result;
}

unint64_t sub_1C4B681BC()
{
  result = qword_1EDDFA9C0;
  if (!qword_1EDDFA9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA9C0);
  }

  return result;
}

unint64_t sub_1C4B68210()
{
  result = qword_1EDDFA9A0;
  if (!qword_1EDDFA9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA9A0);
  }

  return result;
}

unint64_t sub_1C4B68264()
{
  result = qword_1EDDFAAA0;
  if (!qword_1EDDFAAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFAAA0);
  }

  return result;
}

uint64_t sub_1C4B682B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C4B68318(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

_BYTE *sub_1C4B68370(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C4B68450()
{
  result = qword_1EC0C3CF0;
  if (!qword_1EC0C3CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3CF0);
  }

  return result;
}

unint64_t sub_1C4B684A8()
{
  result = qword_1EDDFAA90;
  if (!qword_1EDDFAA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFAA90);
  }

  return result;
}

unint64_t sub_1C4B68500()
{
  result = qword_1EDDFAA98;
  if (!qword_1EDDFAA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFAA98);
  }

  return result;
}

uint64_t sub_1C4B68558()
{
  v0 = sub_1C4F025D8();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1C4B685A4(char a1)
{
  result = 0x64497465737361;
  switch(a1)
  {
    case 1:
      result = 0x7463656A627573;
      break;
    case 2:
      result = 0x7461636964657270;
      break;
    case 3:
      result = 0x6E6F6974616C6572;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
      result = 0x7463656A626FLL;
      break;
    case 6:
      result = 0x6E656469666E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4B68680(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1C46853CC();
}

uint64_t sub_1C4B686A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C4B68558();
  *a2 = result;
  return result;
}

unint64_t sub_1C4B686D4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1C4B685A4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C4B68700(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4B69F9C();

  return MEMORY[0x1EEE09870](a1, a2, v4);
}

uint64_t sub_1C4B6874C(uint64_t a1)
{
  v2 = sub_1C4826C74();

  return MEMORY[0x1EEE09858](a1, v2);
}

uint64_t sub_1C4B68798(uint64_t a1)
{
  v2 = sub_1C4826B5C();

  return MEMORY[0x1EEE09A90](a1, v2);
}

uint64_t sub_1C4B687E4(uint64_t a1)
{
  v2 = sub_1C4826B5C();

  return MEMORY[0x1EEE09A88](a1, v2);
}

uint64_t sub_1C4B68830(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64497465737361 && a2 == 0xE700000000000000;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7463656A627573 && a2 == 0xE700000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E6F6974616C6572 && a2 == 0xEE00644970696873;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000015 && 0x80000001C4F86600 == a2;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7463656A626FLL && a2 == 0xE600000000000000;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563)
            {

              return 6;
            }

            else
            {
              v12 = sub_1C4F02938();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C4B68A84(char a1)
{
  result = 0x64497465737361;
  switch(a1)
  {
    case 1:
      result = 0x7463656A627573;
      break;
    case 2:
      result = 0x7461636964657270;
      break;
    case 3:
      result = 0x6E6F6974616C6572;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
      result = 0x7463656A626FLL;
      break;
    case 6:
      result = 0x6E656469666E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4B68B60(void *a1)
{
  v3 = v1;
  v5 = sub_1C456902C(&qword_1EC0C3D08, &qword_1C4F553A0);
  v6 = sub_1C43FCDF8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = v30 - v11;
  v13 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4B69FF0();
  sub_1C4F02BF8();
  v14 = *v3;
  v37 = 0;
  sub_1C43FBF44();
  sub_1C4F027F8();
  if (!v2)
  {
    v15 = type metadata accessor for StaticKnowledgeTriple();
    v16 = v15[5];
    v36 = 1;
    sub_1C4EFF0C8();
    sub_1C4420388();
    sub_1C4B6A044(v17, v18);
    sub_1C43FBF44();
    sub_1C4F027E8();
    v19 = v15[6];
    v35 = 2;
    sub_1C4EFEEF8();
    sub_1C442D39C();
    sub_1C4B6A044(v20, v21);
    sub_1C43FBF44();
    sub_1C4F027E8();
    v30[1] = v15[7];
    v34 = 3;
    sub_1C4EFF8A8();
    sub_1C4400E80();
    sub_1C4B6A044(v22, v23);
    sub_1C43FBF44();
    sub_1C4F027E8();
    v24 = v15[8];
    v33 = 4;
    sub_1C43FBF44();
    sub_1C4F027E8();
    v25 = (v3 + v15[9]);
    v26 = *v25;
    v27 = v25[1];
    v32 = 5;
    sub_1C43FBF44();
    sub_1C4F02798();
    v28 = *(v3 + v15[10]);
    v31 = 6;
    sub_1C43FBF44();
    sub_1C4F027B8();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_1C4B68E50@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v3 = sub_1C4EFF8A8();
  v4 = sub_1C43FCDF8(v3);
  v71 = v5;
  v72 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v68 = v9 - v8;
  v10 = sub_1C4EFEEF8();
  v11 = sub_1C43FCDF8(v10);
  v77 = v12;
  v78 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v16 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v67 - v18;
  v20 = sub_1C4EFF0C8();
  v21 = sub_1C43FCDF8(v20);
  v73 = v22;
  v74 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBCC4();
  v27 = v26 - v25;
  v28 = sub_1C456902C(&qword_1EC0C3D00, &qword_1C4F55398);
  v29 = sub_1C43FCDF8(v28);
  v69 = v30;
  v70 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v79 = type metadata accessor for StaticKnowledgeTriple();
  v33 = *(*(v79 - 1) + 64);
  MEMORY[0x1EEE9AC00](v79);
  sub_1C43FBCC4();
  v36 = (v35 - v34);
  v37 = a1[3];
  v38 = a1[4];
  v76 = a1;
  v39 = sub_1C4409678(a1, v37);
  sub_1C4B69FF0();
  v40 = v75;
  sub_1C4F02BC8();
  if (!v40)
  {
    v75 = v16;
    v86 = 0;
    *v36 = sub_1C4F026D8();
    v85 = 1;
    sub_1C4420388();
    sub_1C4B6A044(v43, v44);
    v45 = v74;
    sub_1C4F026C8();
    v46 = v78;
    v47 = v79;
    (*(v73 + 32))(v36 + v79[5], v27, v45);
    v84 = 2;
    sub_1C442D39C();
    sub_1C4B6A044(v48, v49);
    sub_1C4F026C8();
    v50 = v19;
    v51 = *(v77 + 32);
    v51(v36 + v47[6], v50, v46);
    v83 = 3;
    sub_1C4400E80();
    sub_1C4B6A044(v52, v53);
    v54 = v68;
    v55 = v72;
    sub_1C4F026C8();
    (*(v71 + 32))(v36 + v79[7], v54, v55);
    v82 = 4;
    v56 = v75;
    v57 = v78;
    sub_1C4F026C8();
    v58 = v79;
    v51(v36 + v79[8], v56, v57);
    v81 = 5;
    v59 = sub_1C4F02678();
    v60 = (v36 + v58[9]);
    *v60 = v59;
    v60[1] = v61;
    v80 = 6;
    sub_1C4F02698();
    v63 = v62;
    v64 = sub_1C4432A84();
    v65(v64);
    *(v36 + v58[10]) = v63;
    sub_1C482D6DC(v36, v67);
    sub_1C440962C(v76);
    return sub_1C482D740(v36);
  }

  sub_1C4413804();
  v41 = v78;
  v42 = v79;
  result = sub_1C440962C(v76);
  if (v37)
  {
    result = (*(v77 + 8))(v36 + v42[6], v41);
    if (v39)
    {
      goto LABEL_9;
    }

LABEL_5:
    if (!v19)
    {
      return result;
    }

    return (*(v77 + 8))(v36 + v42[8], v41);
  }

  if (!v39)
  {
    goto LABEL_5;
  }

LABEL_9:
  result = (*(v71 + 8))(v36 + v42[7], v72);
  if (v19)
  {
    return (*(v77 + 8))(v36 + v42[8], v41);
  }

  return result;
}

uint64_t sub_1C4B69578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4B68830(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4B695A0(uint64_t a1)
{
  v2 = sub_1C4B69FF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4B695DC(uint64_t a1)
{
  v2 = sub_1C4B69FF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4B69664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1C4EFF0C8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C4B696D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1C4EFEEF8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C4B6974C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_1C4EFF8A8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C4B697C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_1C4EFEEF8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C4B69834(uint64_t a1)
{
  v2 = (v1 + *(a1 + 36));
  v3 = *v2;
  v4 = v2[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v3;
}

uint64_t sub_1C4B6986C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4B6A044(&unk_1EDDF4250, type metadata accessor for StaticKnowledgeTriple);

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1C4B69900()
{
  sub_1C4B6A044(&qword_1EDDE3258, type metadata accessor for StaticKnowledgeTriple);

  return sub_1C4EFB6D8();
}

uint64_t sub_1C4B69A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4B6A044(&qword_1EDDE3248, type metadata accessor for StaticKnowledgeTriple);

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

uint64_t type metadata accessor for StaticKnowledgeTriple()
{
  result = qword_1EDDF4240;
  if (!qword_1EDDF4240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4B69BAC()
{
  v0 = sub_1C4EFF0C8();
  if (v1 <= 0x3F)
  {
    v0 = sub_1C4EFEEF8();
    if (v2 <= 0x3F)
    {
      v3 = sub_1C4EFF8A8();
      if (v4 > 0x3F)
      {
        return v3;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v0;
}

uint64_t sub_1C4B69D14(uint64_t a1)
{
  *(a1 + 8) = sub_1C4B6A044(&unk_1EDDF4260, type metadata accessor for StaticKnowledgeTriple);
  result = sub_1C4B6A044(&qword_1EDDE3258, type metadata accessor for StaticKnowledgeTriple);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4B69D98(uint64_t a1)
{
  result = sub_1C4B6A044(&qword_1EC0BDB00, type metadata accessor for StaticKnowledgeTriple);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C4B69DF4()
{
  result = qword_1EC0C3CF8;
  if (!qword_1EC0C3CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3CF8);
  }

  return result;
}

unint64_t sub_1C4B69E98()
{
  result = qword_1EDDF1440;
  if (!qword_1EDDF1440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF1440);
  }

  return result;
}

unint64_t sub_1C4B69EF0()
{
  result = qword_1EDDF1438;
  if (!qword_1EDDF1438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF1438);
  }

  return result;
}

unint64_t sub_1C4B69F48()
{
  result = qword_1EDDF1448;
  if (!qword_1EDDF1448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF1448);
  }

  return result;
}

unint64_t sub_1C4B69F9C()
{
  result = qword_1EDDF1428;
  if (!qword_1EDDF1428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF1428);
  }

  return result;
}

unint64_t sub_1C4B69FF0()
{
  result = qword_1EDDF4288[0];
  if (!qword_1EDDF4288[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDF4288);
  }

  return result;
}

uint64_t sub_1C4B6A044(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *sub_1C4B6A08C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4B6A16C()
{
  result = qword_1EC0C3D10;
  if (!qword_1EC0C3D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3D10);
  }

  return result;
}

unint64_t sub_1C4B6A1C4()
{
  result = qword_1EDDF4278;
  if (!qword_1EDDF4278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF4278);
  }

  return result;
}

unint64_t sub_1C4B6A21C()
{
  result = qword_1EDDF4280;
  if (!qword_1EDDF4280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF4280);
  }

  return result;
}

uint64_t sub_1C4B6A274@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  if (a1)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](46, 0xE100000000000000);
    v3 = sub_1C442D3B4();
    v5 = v4(v3);
    MEMORY[0x1C6940010](v5);
  }

  else
  {
    v7 = sub_1C442D3B4();
    v8(v7);
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C441A5D4();
  swift_getAssociatedConformanceWitness();
  sub_1C441A5D4();
  swift_getAssociatedConformanceWitness();
  sub_1C44203A0();
  KeyValueStore.fetch<A>(key:)();
  if (!v10)
  {
  }

  return sub_1C440BAA8(a2, 1, 1, AssociatedTypeWitness);
}

void sub_1C4B6A434(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[4];
  type metadata accessor for StatusItem();
  if (v4 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      sub_1C4B6A82C();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C4B6A4E0(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
LABEL_26:
    if ((v6 & 0x80000000) != 0)
    {
      return sub_1C44157D4((result + v7 + 40) & ~v7, v6, v4);
    }

    else
    {
      v17 = *(result + 8);
      if (v17 >= 0xFFFFFFFF)
      {
        LODWORD(v17) = -1;
      }

      return (v17 + 1);
    }
  }

  else
  {
    v9 = ((*(*(v4 - 8) + 64) + ((v7 + 40) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
    v10 = a2 - v8;
    v11 = v9 & 0xFFFFFFF8;
    if ((v9 & 0xFFFFFFF8) != 0)
    {
      v12 = 2;
    }

    else
    {
      v12 = v10 + 1;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    switch(v14)
    {
      case 1:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

LABEL_22:
        v16 = v15 - 1;
        if (v11)
        {
          v16 = 0;
          LODWORD(v11) = *result;
        }

        result = v8 + (v11 | v16) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1C4B6A628(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((*(*(v6 - 8) + 64) + ((v10 + 40) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = a3 - v9;
    if (((*(*(v6 - 8) + 64) + ((v10 + 40) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if ((v8 & 0x80000000) != 0)
          {
            v18 = &a1[v10 + 40] & ~v10;

            sub_1C440BAA8(v18, a2, v8, v6);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *(a1 + 8) = 0u;
            *(a1 + 24) = 0u;
            *a1 = a2 & 0x7FFFFFFF;
          }

          else
          {
            *(a1 + 1) = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    if (((*(*(v6 - 8) + 64) + ((v10 + 40) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((*(*(v6 - 8) + 64) + ((v10 + 40) & ~v10) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v17 = ~v9 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v16;
        break;
      case 2:
        *&a1[v11] = v16;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v11] = v16;
        break;
      default:
        return;
    }
  }
}

void sub_1C4B6A82C()
{
  if (!qword_1EDDF0328)
  {
    sub_1C4572308(&qword_1EC0B8C30, &qword_1C4F0E068);
    v0 = sub_1C4F01F48();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDF0328);
    }
  }
}

uint64_t sub_1C4B6A890()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C4B6A8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = 2;
  v25 = &v29;
  v26 = a1;
  sub_1C4C82270(a1, sub_1C4B6B610, &v22, 0, a5, a6, a7, a8, v22, v23, v24);
  if (qword_1EDDFFAF0 != -1)
  {
    sub_1C440686C();
    swift_once();
  }

  v8 = sub_1C4F00978();
  sub_1C442B738(v8, qword_1EDE2E088);
  v9 = sub_1C4F00968();
  v10 = sub_1C4F01CB8();
  if (sub_1C4400B94(v10))
  {
    sub_1C43FECF0();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v28 = v12;
    *v11 = 136315138;
    swift_beginAccess();
    v27 = v29;
    v13 = sub_1C4F01198();
    v15 = sub_1C441D828(v13, v14, &v28);

    *(v11 + 4) = v15;
    sub_1C44090A4();
    _os_log_impl(v16, v17, v18, v19, v20, 0xCu);
    sub_1C440962C(v12);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  swift_beginAccess();
  return v29;
}

uint64_t sub_1C4B6AB68(uint64_t result)
{
  v1 = result;
  if (qword_1EDDFF3F8 != -1)
  {
    result = swift_once();
  }

  v2 = *(qword_1EDE2E018 + 16);
  if (v2)
  {
    v3 = (qword_1EDE2E018 + 40);
    do
    {
      result = sub_1C4AA3D44(v1, *(v3 - 1), *v3);
      v3 += 2;
      --v2;
    }

    while (v2);
  }

  return result;
}

__n128 *sub_1C4B6ABF0()
{
  v4 = sub_1C4435438();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1C43FFBA8();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C4405BB8();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C4400EA4();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C44023C8();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C456902C(&qword_1EC0C3D18, &unk_1C4F55600);
  inited = swift_initStackObject();
  sub_1C4412568(inited, xmmword_1C4F13950);
  v11 = type metadata accessor for GraphStore();
  sub_1C44099C4(v11);
  sub_1C4404708();
  if (v0)
  {
    v12 = inited[2].n128_u64[1];

    inited[1].n128_u64[0] = 0;
  }

  else
  {
    sub_1C487D36C();

    sub_1C440B38C();
    v13 = type metadata accessor for StateStore();
    sub_1C44099C4(v13);
    StateStore.init(config:)(v3);
    sub_1C441123C();
    sub_1C4B65978();

    sub_1C4432A94();
    v14 = type metadata accessor for OntologyStore();
    sub_1C44099C4(v14);
    OntologyStore.init(config:)(v2);
    sub_1C4A6B7DC();

    sub_1C4413814();
    v15 = type metadata accessor for KeyValueStore();
    sub_1C44099C4(v15);
    sub_1C43FC8D4();
    sub_1C49A82D0();

    sub_1C4403788("GlobalKnowledgeStore");
    sub_1C441EF34();
    sub_1C48300AC(v1);
    sub_1C4831690();
    v18 = v17;

    inited[9].n128_u64[0] = v18;
    sub_1C456902C(&qword_1EC0B84C0, &qword_1C4F0DD00);
    v19 = sub_1C4F00F28();
    sub_1C465DFA4(v19);
    inited = v20;
  }

  return inited;
}

uint64_t sub_1C4B6AEC0(uint64_t a1)
{
  v3 = type metadata accessor for Configuration();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1C43FBCC4();
  v7 = v6 - v5;
  sub_1C44098F0(a1, v6 - v5);
  v8 = type metadata accessor for GraphStore();
  sub_1C44099C4(v8);
  GraphStore.init(config:)(v7);
  if (!v1)
  {
    sub_1C4ABD4E8();
    sub_1C4ABD53C();
    v7 = sub_1C486CD18();
  }

  return v7;
}

__n128 *sub_1C4B6AFD4()
{
  v4 = sub_1C4435438();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1C43FFBA8();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C4405BB8();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C4400EA4();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C44023C8();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C456902C(&qword_1EC0C3D18, &unk_1C4F55600);
  inited = swift_initStackObject();
  sub_1C4412568(inited, xmmword_1C4F13950);
  v11 = type metadata accessor for GraphStore();
  sub_1C44099C4(v11);
  sub_1C4404708();
  if (v0)
  {
    v12 = inited[2].n128_u64[1];

    inited[1].n128_u64[0] = 0;
  }

  else
  {
    sub_1C49D1E04();

    sub_1C440B38C();
    v13 = type metadata accessor for StateStore();
    sub_1C44099C4(v13);
    StateStore.init(config:)(v3);
    sub_1C441123C();
    sub_1C49D1E24();

    sub_1C4432A94();
    v14 = type metadata accessor for OntologyStore();
    sub_1C44099C4(v14);
    OntologyStore.init(config:)(v2);
    sub_1C49D1E44();

    sub_1C4413814();
    v15 = type metadata accessor for KeyValueStore();
    sub_1C44099C4(v15);
    sub_1C43FC8D4();
    sub_1C49D1E6C();

    sub_1C4403788("GlobalKnowledgeStore");
    sub_1C441EF34();
    sub_1C48300AC(v1);
    v17 = sub_1C49D2100();

    inited[9].n128_u64[0] = v17;
    sub_1C456902C(&qword_1EC0B84C0, &qword_1C4F0DD00);
    v18 = sub_1C4F00F28();
    sub_1C465DFA4(v18);
    inited = v19;
  }

  return inited;
}

unint64_t sub_1C4B6B2A4(char a1)
{
  result = 0xD00000000000001ELL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000046;
      break;
    case 2:
      result = 0xD0000000000000D5;
      break;
    case 3:
      result = 0xD00000000000001FLL;
      break;
    case 4:
      result = 0xD000000000000080;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4B6B350(char a1)
{
  sub_1C456902C(&qword_1EC0B9270, &unk_1C4F32030);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  v3 = *MEMORY[0x1E696A578];
  *(inited + 32) = sub_1C4F01138();
  *(inited + 40) = v4;
  v5 = sub_1C4B6B2A4(a1);
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v5;
  *(inited + 56) = v6;
  return sub_1C4F00F28();
}

uint64_t sub_1C4B6B408(uint64_t a1)
{
  v2 = sub_1C4B6CC10();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1C4B6B444(uint64_t a1)
{
  v2 = sub_1C4B6CC10();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1C4B6B4D0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1C4F02AF8();
  a4(v8, v6);
  return sub_1C4F02B68();
}

uint64_t sub_1C4B6B51C()
{
  sub_1C456902C(&qword_1EC0C3D20, &qword_1C4F55610);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C4F3B920;
  *(v0 + 32) = type metadata accessor for GraphDatabase();
  *(v0 + 40) = &off_1F43EE320;
  *(v0 + 48) = type metadata accessor for OntologyDatabase();
  *(v0 + 56) = &off_1F43F5998;
  *(v0 + 64) = type metadata accessor for StateDatabase();
  *(v0 + 72) = &off_1F43FDBD0;
  *(v0 + 80) = type metadata accessor for KeyValueDatabase();
  *(v0 + 88) = &off_1F43F2800;
  *(v0 + 96) = type metadata accessor for ViewDatabase();
  *(v0 + 104) = &off_1F4400FD0;
  *(v0 + 112) = type metadata accessor for EventLogDatabase(0);
  *(v0 + 120) = &off_1F43EB1F0;
  *(v0 + 128) = type metadata accessor for FeedbackLogDatabase(0);
  *(v0 + 136) = &off_1F43ECE20;
  result = type metadata accessor for GlobalKnowledgeDatabase();
  *(v0 + 144) = result;
  *(v0 + 152) = &off_1F43EDF10;
  qword_1EDE2E018 = v0;
  return result;
}

uint64_t sub_1C4B6B610()
{
  v1 = *(v0 + 16);
  result = sub_1C4B6B640(*(v0 + 24));
  *v1 = result;
  return result;
}

uint64_t sub_1C4B6B640(uint64_t a1)
{
  v2 = type metadata accessor for Configuration();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDDFFAF0 != -1)
  {
    swift_once();
  }

  v6 = sub_1C4F00978();
  sub_1C442B738(v6, qword_1EDE2E088);
  sub_1C44098F0(a1, v5);
  v7 = sub_1C4F00968();
  v8 = sub_1C4F01CB8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v31 = v10;
    *v9 = 136315138;
    v11 = Configuration.description.getter();
    v13 = v12;
    sub_1C4467948(v5);
    v14 = sub_1C441D828(v11, v13, &v31);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_1C43F8000, v7, v8, "StorageSystem: starting up with %s", v9, 0xCu);
    sub_1C440962C(v10);
    MEMORY[0x1C6942830](v10, -1, -1);
    MEMORY[0x1C6942830](v9, -1, -1);
  }

  else
  {

    sub_1C4467948(v5);
  }

  v15 = sub_1C4B6BB84(a1);
  if (v15 == 2)
  {
    v16 = sub_1C4F00968();
    v17 = sub_1C4F01CD8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = 2;
      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = "StorageSystem: stateCheckAndRecovery failed.";
LABEL_31:
      _os_log_impl(&dword_1C43F8000, v16, v17, v20, v19, 2u);
      MEMORY[0x1C6942830](v19, -1, -1);
      goto LABEL_32;
    }

    goto LABEL_28;
  }

  v18 = v15;
  v21 = sub_1C44F8728(a1);
  if (v21 == 1)
  {
    v22 = sub_1C4F00968();
    v23 = sub_1C4F01CF8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1C43F8000, v22, v23, "StorageSystem: checkDatabase found one or more databases in a recoverable state.", v24, 2u);
      MEMORY[0x1C6942830](v24, -1, -1);
    }

    sub_1C4B6AB68(a1);
    v18 = sub_1C4B6BB84(a1);
    if (!v18)
    {
      v25 = sub_1C4F00968();
      v26 = sub_1C4F01CE8();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_1C43F8000, v25, v26, "StorageSystem: warning: stateCheckAndRecovery did not detect and/or recover from state after checkout was recoverableState", v27, 2u);
        MEMORY[0x1C6942830](v27, -1, -1);
      }
    }

    v28 = sub_1C44F8728(a1);
    if (v28 == 1)
    {
      v16 = sub_1C4F00968();
      v17 = sub_1C4F01CD8();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = 2;
        v19 = swift_slowAlloc();
        *v19 = 0;
        v20 = "StorageSystem: re-check of databases got into a recoverable state again, aborting.";
        goto LABEL_31;
      }
    }

    else if (v28 == 2)
    {
      v16 = sub_1C4F00968();
      v17 = sub_1C4F01CD8();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = 2;
        v19 = swift_slowAlloc();
        *v19 = 0;
        v20 = "StorageSystem: re-check of databases failed.";
        goto LABEL_31;
      }
    }

    else
    {
      if (v18 != 2)
      {
        goto LABEL_29;
      }

      v16 = sub_1C4F00968();
      v17 = sub_1C4F01CD8();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = 2;
        v19 = swift_slowAlloc();
        *v19 = 0;
        v20 = "StorageSystem: start up failed.";
        goto LABEL_31;
      }
    }

LABEL_28:
    v18 = 2;
    goto LABEL_32;
  }

  if (v21 == 2)
  {
    v16 = sub_1C4F00968();
    v17 = sub_1C4F01CD8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = 2;
      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = "StorageSystem: checkDatabase failed.";
      goto LABEL_31;
    }

    goto LABEL_28;
  }

LABEL_29:
  v16 = sub_1C4F00968();
  v17 = sub_1C4F01CF8();
  if (os_log_type_enabled(v16, v17))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = "StorageSystem: start up complete.";
    goto LABEL_31;
  }

LABEL_32:

  return v18;
}

uint64_t sub_1C4B6BB84(uint64_t a1)
{
  v1 = a1;
  v5 = 0;
  if (qword_1EDDFF3F8 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x1EEE9AC00](a1);
  sub_1C45DB698();
  v4[2] = MEMORY[0x1EEE9AC00](v2);
  v4[3] = v1;
  v4[4] = &v5;
  sub_1C4D3D104(sub_1C4B6C984, v4, &unk_1F43DC8C8);

  return v5;
}

uint64_t sub_1C4B6BE14(unsigned __int8 *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v74 = a4;
  v75 = a3;
  v89[1] = *MEMORY[0x1E69E9840];
  v78 = sub_1C4EF98F8();
  v6 = *(v78 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v78);
  v73 = v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v77 = v72 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v87 = v72 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v79 = (v72 - v14);
  LODWORD(v15) = *a1;
  if (qword_1EDDFFAF0 != -1)
  {
    goto LABEL_40;
  }

LABEL_2:
  v16 = sub_1C4F00978();
  v76 = sub_1C442B738(v16, qword_1EDE2E088);
  v17 = sub_1C4F00968();
  v18 = sub_1C4F01CB8();
  v85 = v17;
  v19 = os_log_type_enabled(v17, v18);
  v88 = v6;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    LODWORD(v84) = v15;
    v15 = v21;
    v89[0] = v21;
    *v20 = 136315138;
    if (v84)
    {
      v22 = 0x6552616D65686373;
    }

    else
    {
      v22 = 0x6574707572726F63;
    }

    if (v84)
    {
      v23 = 0xEB00000000746573;
    }

    else
    {
      v23 = 0xE900000000000064;
    }

    v24 = sub_1C441D828(v22, v23, v89);

    *(v20 + 4) = v24;
    v25 = v85;
    _os_log_impl(&dword_1C43F8000, v85, v18, "StorageSystem: checking for %s", v20, 0xCu);
    sub_1C440962C(v15);
    v26 = v15;
    LODWORD(v15) = v84;
    MEMORY[0x1C6942830](v26, -1, -1);
    v27 = v20;
    v6 = v88;
    MEMORY[0x1C6942830](v27, -1, -1);
  }

  else
  {
  }

  v28 = v86;
  result = sub_1C4B6E7A0(a2, v15);
  v30 = v15;
  LODWORD(v15) = v28;
  v31 = v78;
  if (v28)
  {
    goto LABEL_12;
  }

  v83 = *(result + 16);
  if (!v83)
  {

    goto LABEL_12;
  }

  v86 = result;
  v33 = 0;
  v34 = *(a2 + 16);
  while (v34 != v33)
  {
    v35 = v33 + 1;
    sub_1C4B6C6C4(a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v33);
    v33 = v35;
  }

  v72[0] = 0;
  v85 = objc_opt_self();
  v36 = 0;
  v37 = v86;
  v82 = v86 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v84 = v6 + 16;
  if (v30)
  {
    v38 = 0x6552616D65686373;
  }

  else
  {
    v38 = 0x6574707572726F63;
  }

  v39 = 0xE900000000000064;
  if (v30)
  {
    v39 = 0xEB00000000746573;
  }

  v80 = v39;
  v81 = v38;
  a2 = v79;
  v72[1] = v6 + 8;
  do
  {
    if (v36 >= *(v37 + 16))
    {
      __break(1u);
LABEL_40:
      swift_once();
      goto LABEL_2;
    }

    v40 = v88;
    v41 = v82 + *(v88 + 72) * v36;
    v79 = *(v88 + 16);
    v79(a2, v41, v31);
    v42 = [v85 defaultManager];
    v15 = v31;
    v43 = v87;
    sub_1C4EF9898();

    v44 = sub_1C4EF9868();
    v6 = *(v40 + 8);
    (v6)(v43, v15);
    v89[0] = 0;
    v31 = v15;
    LOBYTE(v40) = [v42 removeItemAtURL:v44 error:v89];

    v45 = v89[0];
    if ((v40 & 1) == 0)
    {
      v60 = v45;

      sub_1C4EF97A8();

LABEL_31:
      swift_willThrow();
      result = (v6)(a2, v31);
      goto LABEL_12;
    }

    ++v36;
    (v6)(a2, v15);
    v37 = v86;
  }

  while (v83 != v36);

  v46 = v77;
  sub_1C4EF9888();
  v47 = [v85 defaultManager];
  sub_1C4EF98E8();
  v48 = sub_1C4F01108();

  v49 = [v47 fileExistsAtPath_];

  if ((v49 & 1) == 0)
  {
    goto LABEL_35;
  }

  v88 = v6;
  v50 = v73;
  v79(v73, v46, v15);
  v51 = sub_1C4F00968();
  v52 = sub_1C4F01CF8();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v89[0] = v54;
    *v53 = 136315138;
    sub_1C44266D0();
    v55 = sub_1C4F02858();
    v57 = v56;
    v58 = v50;
    v6 = v88;
    (v88)(v58, v78);
    v59 = sub_1C441D828(v55, v57, v89);
    v31 = v78;

    *(v53 + 4) = v59;
    _os_log_impl(&dword_1C43F8000, v51, v52, "StorageSystem: removing %s", v53, 0xCu);
    sub_1C440962C(v54);
    MEMORY[0x1C6942830](v54, -1, -1);
    MEMORY[0x1C6942830](v53, -1, -1);
  }

  else
  {

    v61 = v50;
    v6 = v88;
    (v88)(v61, v31);
  }

  v62 = [v85 defaultManager];
  v63 = sub_1C4EF9868();
  v89[0] = 0;
  v64 = [v62 removeItemAtURL:v63 error:v89];

  if (!v64)
  {
    v71 = v89[0];
    sub_1C4EF97A8();

    a2 = v46;
    goto LABEL_31;
  }

  v65 = v89[0];
LABEL_35:
  *v74 = 1;
  v66 = sub_1C4F00968();
  v67 = sub_1C4F01CF8();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v89[0] = v69;
    *v68 = 136315138;
    *(v68 + 4) = sub_1C441D828(0xD000000000000036, 0x80000001C4FB2EB0, v89);
    _os_log_impl(&dword_1C43F8000, v66, v67, "StorageSystem: Posting notification %s", v68, 0xCu);
    sub_1C440962C(v69);
    MEMORY[0x1C6942830](v69, -1, -1);
    MEMORY[0x1C6942830](v68, -1, -1);
  }

  v70 = sub_1C4F011C8();
  notify_post((v70 + 32));
  (v6)(v46, v31);

LABEL_12:
  v32 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C4B6C6C4(uint64_t a1)
{
  v2 = sub_1C4EF98F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBCC4();
  v7 = v6 - v5;
  if (qword_1EDDFFAF0 != -1)
  {
    sub_1C440686C();
    swift_once();
  }

  v8 = sub_1C4F00978();
  sub_1C442B738(v8, qword_1EDE2E088);
  (*(v3 + 16))(v7, a1, v2);
  v9 = sub_1C4F00968();
  v10 = sub_1C4F01CF8();
  if (os_log_type_enabled(v9, v10))
  {
    sub_1C43FECF0();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315138;
    sub_1C44266D0();
    v13 = sub_1C4F02858();
    v15 = v14;
    (*(v3 + 8))(v7, v2);
    v16 = sub_1C441D828(v13, v15, &v19);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_1C43F8000, v9, v10, "StorageSystem: truncating database at %s", v11, 0xCu);
    sub_1C440962C(v12);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {

    (*(v3 + 8))(v7, v2);
  }

  v17 = objc_opt_self();
  sub_1C4EF98E8();
  v18 = sub_1C4F01108();

  [v17 truncateDatabaseAtPath_];
}

_BYTE *storeEnumTagSinglePayload for StorageSystemStartupResult(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StorageError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C4B6CB64()
{
  result = qword_1EC0C3D30;
  if (!qword_1EC0C3D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3D30);
  }

  return result;
}

unint64_t sub_1C4B6CBBC()
{
  result = qword_1EC0C3D38;
  if (!qword_1EC0C3D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3D38);
  }

  return result;
}

unint64_t sub_1C4B6CC10()
{
  result = qword_1EC0C3D40;
  if (!qword_1EC0C3D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3D40);
  }

  return result;
}

uint64_t sub_1C4B6CC64()
{
  v1 = v0;
  v2 = *v0;
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88();
  }

  v3 = sub_1C4F00978();
  sub_1C442B738(v3, qword_1EDDFECB8);
  v4 = sub_1C4F00968();
  v5 = sub_1C4F01CB8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    v8 = sub_1C46655C4();
    v10 = sub_1C441D828(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1C43F8000, v4, v5, "<%s: Starting observe notification>", v6, 0xCu);
    sub_1C440962C(v7);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  v11 = v1[2];
  MEMORY[0x1EEE9AC00](v12);

  os_unfair_lock_lock((v11 + 24));
  sub_1C4B6D5B4((v11 + 16));
  os_unfair_lock_unlock((v11 + 24));
}

uint64_t sub_1C4B6CE20()
{
  result = sub_1C4F01108();
  qword_1EDE2C8E8 = result;
  return result;
}

void *sub_1C4B6CE58()
{
  type metadata accessor for StorageSystemMonitor();
  v0 = swift_allocObject();
  result = sub_1C4B6CE94();
  qword_1EDE2CC08 = v0;
  return result;
}

void *sub_1C4B6CE94()
{
  v1 = v0;
  v2 = *v0;
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88();
  }

  v3 = sub_1C4F00978();
  sub_1C442B738(v3, qword_1EDDFECB8);
  v4 = sub_1C4F00968();
  v5 = sub_1C4F01CB8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    v8 = sub_1C46655C4();
    v10 = sub_1C441D828(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1C43F8000, v4, v5, "<%s: Init>", v6, 0xCu);
    sub_1C440962C(v7);
    sub_1C43FFD4C();
    sub_1C43FBE2C();
  }

  type metadata accessor for StorageSystemMonitor.GuardedData();
  v11 = swift_allocObject();
  sub_1C4EF98F8();
  sub_1C4F00BC8();
  sub_1C4695550(&qword_1EDDFFA00, MEMORY[0x1E6968FB0]);
  *(v11 + 16) = sub_1C4F00F28();
  sub_1C456902C(&unk_1EC0C3D50, &unk_1C4F55820);
  v12 = swift_allocObject();
  *(v12 + 24) = 0;
  *(v12 + 16) = v11;
  v1[2] = v12;
  return v1;
}

uint64_t sub_1C4B6D0DC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v43 = a3;
  v6 = type metadata accessor for Configuration();
  v40 = *(v6 - 8);
  v7 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v41 = v8;
  v42 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C4F01D88();
  v36 = *(v9 - 8);
  v37 = v9;
  v10 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C4F01E38();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C456902C(&unk_1EC0BADE0, &unk_1C4F17660);
  v38 = *(v18 - 8);
  v39 = v18;
  v19 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v33 - v20;
  v22 = *a1;
  swift_beginAccess();
  if (*(*(v22 + 16) + 16))
  {
    sub_1C43FE83C();
    if (v23)
    {
      return swift_endAccess();
    }
  }

  v34 = a2;
  v35 = v3;
  swift_endAccess();
  v25 = [objc_opt_self() defaultCenter];
  if (qword_1EDDDB900 != -1)
  {
    swift_once();
  }

  sub_1C4F01E48();

  sub_1C4F01D78();
  sub_1C4665684();
  v26 = sub_1C4F01DA8();
  v44 = v26;
  sub_1C4695550(&qword_1EDDDB8D0, MEMORY[0x1E6969F20]);
  sub_1C4695550(&unk_1EDDDB910, sub_1C4665684);
  sub_1C4F00D08();

  (*(v36 + 8))(v12, v37);
  (*(v14 + 8))(v17, v13);
  v27 = v42;
  sub_1C44098F0(v34, v42);
  v28 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v29 = (v41 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  sub_1C4409954(v27, v30 + v28);
  *(v30 + v29) = v43;
  sub_1C46953BC();
  v31 = v39;
  sub_1C4F00D28();

  (*(v38 + 8))(v21, v31);
  swift_beginAccess();
  v32 = *(v22 + 16);
  swift_isUniquelyReferenced_nonNull_native();
  v45 = *(v22 + 16);
  sub_1C4661C18();
  *(v22 + 16) = v45;
  return swift_endAccess();
}

uint64_t sub_1C4B6D5D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Configuration();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C456902C(&qword_1EC0BC660, &qword_1C4F29150);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v34 - v11;
  v13 = os_transaction_create();
  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  v14 = sub_1C4F00978();
  sub_1C442B738(v14, qword_1EDDFECB8);
  v15 = sub_1C4F00968();
  v16 = sub_1C4F01CB8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v36 = v7;
    v37 = v18;
    v34 = v18;
    *v17 = 136315138;
    v19 = sub_1C46655C4();
    v35 = a3;
    v21 = v13;
    v22 = v6;
    v23 = v12;
    v24 = v8;
    v25 = a2;
    v26 = sub_1C441D828(v19, v20, &v37);
    a3 = v35;

    *(v17 + 4) = v26;
    a2 = v25;
    v8 = v24;
    v12 = v23;
    v6 = v22;
    v13 = v21;
    _os_log_impl(&dword_1C43F8000, v15, v16, "<%s: Received notification>", v17, 0xCu);
    v27 = v34;
    sub_1C440962C(v34);
    v28 = v27;
    v7 = v36;
    MEMORY[0x1C6942830](v28, -1, -1);
    MEMORY[0x1C6942830](v17, -1, -1);
  }

  v29 = sub_1C4F018C8();
  sub_1C440BAA8(v12, 1, 1, v29);
  sub_1C44098F0(a2, v8);
  v30 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v31 = (v7 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  sub_1C4409954(v8, v32 + v30);
  *(v32 + v31) = v13;
  *(v32 + ((v31 + 15) & 0xFFFFFFFFFFFFFFF8)) = a3;
  sub_1C4785250();
}

uint64_t sub_1C4B6D8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  *(v6 + 32) = a6;
  return MEMORY[0x1EEE6DFA0](sub_1C4B6D8F0, 0, 0);
}

uint64_t sub_1C4B6D8F0()
{
  v15 = v0;
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88();
  }

  v1 = sub_1C4F00978();
  v0[5] = sub_1C442B738(v1, qword_1EDDFECB8);
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CB8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[4];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    v7 = sub_1C46655C4();
    v9 = sub_1C441D828(v7, v8, &v14);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1C43F8000, v2, v3, "<%s: Starting delta update>", v5, 0xCu);
    sub_1C440962C(v6);
    sub_1C43FFD4C();
    sub_1C43FBE2C();
  }

  if (qword_1EDDF0AB0 != -1)
  {
    swift_once();
  }

  v10 = v0[3];
  v0[6] = sub_1C4468E90();
  if (qword_1EDDFD268 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Source();
  sub_1C442B738(v11, &qword_1EDDFD270);
  v12 = swift_task_alloc();
  v0[7] = v12;
  *v12 = v0;
  v12[1] = sub_1C4B6DC8C;

  return sub_1C4ACB9F0();
}

uint64_t sub_1C4B6DC8C()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C4B6DDC4, 0, 0);
  }

  else
  {
    v4 = *(v2 + 48);

    sub_1C43FBDA0();

    return v5();
  }
}

uint64_t sub_1C4B6DDC4()
{
  v18 = v0;
  v2 = v0[6];

  v3 = v0[8];
  v4 = v0[5];
  v5 = v3;
  v6 = sub_1C4F00968();
  v7 = sub_1C4F01CD8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[4];
    v9 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v9 = 136315394;
    v10 = sub_1C46655C4();
    sub_1C441D828(v10, v11, &v17);
    sub_1C4410930();
    *(v9 + 4) = v1;
    *(v9 + 12) = 2080;
    v0[2] = v3;
    v12 = v3;
    sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
    v13 = sub_1C4F01198();
    sub_1C441D828(v13, v14, &v17);
    sub_1C4410930();
    *(v9 + 14) = v1;
    _os_log_impl(&dword_1C43F8000, v6, v7, "<%s: Can't run delta updates for BMAppleMusicEvent due to: %s>", v9, 0x16u);
    swift_arrayDestroy();
    sub_1C43FFD4C();
    sub_1C43FBE2C();
  }

  else
  {
  }

  sub_1C43FBDA0();

  return v15();
}

uint64_t sub_1C4B6DF70(uint64_t a1)
{
  v3 = type metadata accessor for Configuration();
  sub_1C43FCF7C(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1C4B6D5D0(a1, v1 + v8, v9);
}

uint64_t sub_1C4B6E004(uint64_t a1)
{
  v4 = type metadata accessor for Configuration();
  sub_1C43FCF7C(v4);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = (*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v8);
  v12 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_1C4665934;

  return sub_1C4B6D8D0(a1, v9, v10, v1 + v6, v11, v12);
}

uint64_t sub_1C4B6E134(char *a1, char a2)
{
  v4 = sub_1C4EF98F8();
  v5 = sub_1C43FCDF8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBFDC();
  v54 = v10;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v51 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v51 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v51 - v18;
  if (qword_1EDDFFAF0 != -1)
  {
    sub_1C440686C();
    swift_once();
  }

  v20 = sub_1C4F00978();
  v21 = sub_1C442B738(v20, qword_1EDE2E088);
  v22 = *(v7 + 16);
  v57 = a1;
  v55 = v22;
  v22(v19, a1, v4);
  v56 = v21;
  v23 = sub_1C4F00968();
  v24 = sub_1C4F01CF8();
  v25 = os_log_type_enabled(v23, v24);
  v26 = 0x6574707572726F63;
  if (a2)
  {
    v26 = 0x6552616D65686373;
  }

  v59 = v7;
  v60 = v26;
  if (a2)
  {
    v27 = 0xEB00000000746573;
  }

  else
  {
    v27 = 0xE900000000000064;
  }

  if (v25)
  {
    v28 = swift_slowAlloc();
    v53 = v14;
    v29 = v28;
    v52 = swift_slowAlloc();
    v61[0] = v52;
    *v29 = 136315394;
    v30 = sub_1C441D828(v60, v27, v61);

    *(v29 + 4) = v30;
    *(v29 + 12) = 2080;
    sub_1C44266D0();
    v31 = sub_1C4F02858();
    v32 = v7;
    v33 = v17;
    v34 = v4;
    v36 = v35;
    v58 = *(v32 + 8);
    v58(v19, v34);
    v37 = sub_1C441D828(v31, v36, v61);
    v4 = v34;
    v17 = v33;

    *(v29 + 14) = v37;
    _os_log_impl(&dword_1C43F8000, v23, v24, "StorageSystem: placing %s marker for %s", v29, 0x16u);
    swift_arrayDestroy();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    v14 = v53;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {

    v58 = *(v7 + 8);
    v58(v19, v4);
  }

  sub_1C4EF9898();

  sub_1C4EF9AA8();
  v55(v14, v17, v4);
  v38 = sub_1C4F00968();
  v39 = sub_1C4F01CF8();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = v14;
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v61[0] = v42;
    *v41 = 136315138;
    sub_1C44266D0();
    v43 = sub_1C4F02858();
    v45 = v44;
    sub_1C4400EB8();
    v46 = v40;
    v47 = v58;
    v58(v46, v4);
    v48 = sub_1C441D828(v43, v45, v61);

    *(v41 + 4) = v48;
    _os_log_impl(&dword_1C43F8000, v38, v39, "StorageSystem: successfully placed marker at %s", v41, 0xCu);
    sub_1C440962C(v42);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();

    return v47(v17, v4);
  }

  else
  {

    sub_1C4400EB8();
    v50 = v58;
    v58(v14, v4);
    return v50(v17, v4);
  }
}

uint64_t sub_1C4B6E7A0(uint64_t a1, int a2)
{
  v33 = a2;
  v4 = sub_1C4EF98F8();
  v5 = sub_1C43FCDF8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBFDC();
  v30 = v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  v14 = 0;
  v34 = *(a1 + 16);
  v31 = v7 + 16;
  v32 = a1;
  v15 = (v7 + 8);
  v29 = (v7 + 32);
  v16 = MEMORY[0x1E69E7CC0];
  while (v34 != v14)
  {
    v17 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v18 = *(v7 + 72);
    (*(v7 + 16))(v13, v32 + v17 + v18 * v14, v4);
    v19 = sub_1C4B6EBCC(v13, v33 & 1);
    if (v2)
    {
      (*v15)(v13, v4);

      return v16;
    }

    if (v19)
    {
      v28 = *v29;
      v28(v30, v13, v4);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = *(v16 + 16);
        sub_1C459EE58();
        v16 = v35;
      }

      v22 = *(v16 + 16);
      v23 = v22 + 1;
      if (v22 >= *(v16 + 24) >> 1)
      {
        v26 = *(v16 + 16);
        v27 = v22 + 1;
        sub_1C459EE58();
        v22 = v26;
        v23 = v27;
        v16 = v35;
      }

      ++v14;
      *(v16 + 16) = v23;
      v28((v16 + v17 + v22 * v18), v30, v4);
    }

    else
    {
      (*v15)(v13, v4);
      ++v14;
    }
  }

  return v16;
}

id sub_1C4B6E9F4()
{
  v13[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1C4EF98F8();
  v1 = sub_1C43FCDF8(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() defaultManager];
  sub_1C4EF9898();

  v9 = sub_1C4EF9868();
  (*(v3 + 8))(v7, v0);
  v13[0] = 0;
  LOBYTE(v0) = [v8 removeItemAtURL:v9 error:v13];

  if (v0)
  {
    result = v13[0];
  }

  else
  {
    v11 = v13[0];
    sub_1C4EF97A8();

    result = swift_willThrow();
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

id sub_1C4B6EBCC(uint64_t a1, char a2)
{
  v4 = sub_1C4EF98F8();
  v5 = sub_1C43FCDF8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBFDC();
  v35 = v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - v12;
  v14 = [objc_opt_self() defaultManager];
  if (a2)
  {
    v15 = 0x6552616D65686373;
  }

  else
  {
    v15 = 0x6574707572726F63;
  }

  if (a2)
  {
    v16 = 0xEB00000000746573;
  }

  else
  {
    v16 = 0xE900000000000064;
  }

  v33 = v15;
  sub_1C4EF9898();

  sub_1C4EF98E8();
  v34 = *(v7 + 8);
  v34(v13, v4);
  v17 = sub_1C4F01108();

  v18 = [v14 fileExistsAtPath_];

  if (v18)
  {
    if (qword_1EDDFFAF0 != -1)
    {
      sub_1C440686C();
      swift_once();
    }

    v19 = sub_1C4F00978();
    sub_1C442B738(v19, qword_1EDE2E088);
    v20 = v35;
    (*(v7 + 16))(v35, a1, v4);
    v21 = sub_1C4F00968();
    v22 = sub_1C4F01CF8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = v20;
      v24 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v36 = v32;
      *v24 = 136315394;
      v25 = sub_1C441D828(v33, v16, &v36);

      *(v24 + 4) = v25;
      *(v24 + 12) = 2080;
      sub_1C44266D0();
      v26 = sub_1C4F02858();
      v28 = v27;
      v34(v23, v4);
      v29 = sub_1C441D828(v26, v28, &v36);

      *(v24 + 14) = v29;
      _os_log_impl(&dword_1C43F8000, v21, v22, "StorageSystem: %s marker detected for %s", v24, 0x16u);
      swift_arrayDestroy();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {

      v34(v20, v4);
    }
  }

  return v18;
}

uint64_t sub_1C4B6EF3C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v73 = a3;
  v75 = a2;
  v4 = sub_1C4EFB768();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v72 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = sub_1C4EFBC58();
  sub_1C43FD428();
  sub_1C4EFB758();
  v86 = v13;
  v14 = v83;
  v15 = sub_1C4EFBBB8();
  if (v14)
  {
    v16 = *(v5 + 8);
    v17 = sub_1C44000C4();
    v18(v17);
    return sub_1C46AA374(&v84);
  }

  else
  {
    v20 = v15;
    v78 = v9;
    v72 = v12;
    v21 = *(v5 + 8);
    v22 = sub_1C44000C4();
    v80 = v23;
    (v23)(v22);
    sub_1C46AA374(&v84);
    v76 = a1;
    v77 = 0x80000001C4FB3090;
    v81 = v4;
    v82 = v5 + 8;
    v24 = v75;
    v79 = v20;
    while (1)
    {
      v25 = sub_1C4458EE8();
      if (!v25)
      {
        break;
      }

      v26 = v24;
      v83 = v25;
      sub_1C493DD18();
      v28 = v27;
      v30 = v29;
      v84 = 0;
      v85 = 0xE000000000000000;
      sub_1C4F02248();

      v84 = 0xD00000000000001ALL;
      v85 = v77;
      v31 = sub_1C44000C4();
      MEMORY[0x1C6940010](v31);
      sub_1C43FD428();
      v32 = v78;
      sub_1C4EFB758();
      v33 = sub_1C4EFBC38();
      v34 = v81;
      v35 = v33;

      v80(v32, v34);
      sub_1C46AA374(&v84);
      if (v35 && (, v36 = sub_1C493CBD4(), v38 = v37, , (v38 & 1) == 0))
      {
        v74 = v36;
        v50 = *v26;
        swift_isUniquelyReferenced_nonNull_native();
        v84 = *v26;
        v51 = v84;
        *v26 = 0x8000000000000000;
        v75 = v30;
        v52 = sub_1C445FAA8(v28, v30);
        if (__OFADD__(*(v51 + 16), (v53 & 1) == 0))
        {
          __break(1u);
LABEL_25:
          __break(1u);
          swift_unexpectedError();
          __break(1u);
LABEL_26:
          result = sub_1C4F029F8();
          __break(1u);
          return result;
        }

        v54 = v52;
        v55 = v53;
        sub_1C456902C(&qword_1EC0C3D60, &unk_1C4F55880);
        if (sub_1C4F02458())
        {
          v56 = v75;
          v57 = sub_1C445FAA8(v28, v75);
          if ((v55 & 1) != (v58 & 1))
          {
            goto LABEL_26;
          }

          v54 = v57;
          v24 = v26;
        }

        else
        {
          v24 = v26;
          v56 = v75;
        }

        v59 = v84;
        if (v55)
        {
          *(*(v84 + 56) + 8 * v54) = v74;
        }

        else
        {
          *(v84 + 8 * (v54 >> 6) + 64) |= 1 << v54;
          v60 = (v59[6] + 16 * v54);
          *v60 = v28;
          v60[1] = v56;
          *(v59[7] + 8 * v54) = v74;
          v61 = v59[2];
          v62 = __OFADD__(v61, 1);
          v63 = v61 + 1;
          if (v62)
          {
            goto LABEL_25;
          }

          v59[2] = v63;
        }

        v64 = *v24;
        *v24 = v59;
      }

      else
      {
        v24 = v26;
        v39 = *v26;
        v40 = sub_1C44000C4();
        v42 = sub_1C445FAA8(v40, v41);
        if (v43)
        {
          v44 = v42;
          v45 = *v26;
          swift_isUniquelyReferenced_nonNull_native();
          v84 = *v26;
          v46 = v84;
          *v26 = 0x8000000000000000;
          v47 = *(v46 + 24);
          sub_1C456902C(&qword_1EC0C3D60, &unk_1C4F55880);
          sub_1C4F02458();
          v48 = v84;
          v49 = *(*(v84 + 48) + 16 * v44 + 8);

          sub_1C4F02478();
          *v26 = v48;
        }
      }
    }

    sub_1C43FD428();
    v65 = v72;
    sub_1C4EFB758();
    v66 = v65;
    v67 = sub_1C4EFBC38();
    v80(v66, v81);
    sub_1C46AA374(&v84);
    if (v67)
    {

      v68 = sub_1C493CBD4();
      v70 = v69;
    }

    else
    {

      v68 = 0;
      v70 = 1;
    }

    v71 = v73;
    *v73 = v68;
    *(v71 + 8) = v70 & 1;
  }

  return result;
}

uint64_t sub_1C4B6F59C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return sub_1C4B6FAAC();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C4B6F5D0(uint64_t a1)
{
  if (*(a1 + 16) < 2uLL)
  {
    return 0;
  }

  sub_1C4A3E0E8(a1, &v3);
  if (!*(&v4 + 1))
  {
    sub_1C4423A0C(&v3, &qword_1EC0B97A0, &qword_1C4F0F7D0);
    return 0;
  }

  v6[0] = v3;
  v6[1] = v4;
  v7 = v5;
  v1 = sub_1C4B6FAAC();
  sub_1C46CB91C(v6);
  return v1;
}

uint64_t sub_1C4B6F66C()
{
  v1 = v0;
  v2 = v0[4];
  sub_1C4409678(v0, v0[3]);
  v3 = sub_1C4400EC4();
  v4(v3);
  v5 = v49;
  if (!v49)
  {
    sub_1C4423A0C(&v48, &qword_1EC0BB380, &unk_1C4F1F2E0);
LABEL_7:
    v16 = v1[4];
    sub_1C4409678(v1, v1[3]);
    v17 = sub_1C4400EC4();
    v18(v17);
    v19 = v49;
    if (v49)
    {
      v20 = v50;
      sub_1C4409678(&v48, v49);
      v21 = (*(v20 + 24))(v19, v20);
      v13 = RTPlaceInferenceUserSpecificPlaceType.description.getter(v21);
      sub_1C440962C(&v48);
    }

    else
    {
      sub_1C4423A0C(&v48, &qword_1EC0BB380, &unk_1C4F1F2E0);
      return 0;
    }

    return v13;
  }

  v6 = v50;
  sub_1C4409678(&v48, v49);
  v7 = (*(v6 + 24))(v5, v6);
  sub_1C440962C(&v48);
  if (v7)
  {
    goto LABEL_7;
  }

  v8 = v1[4];
  sub_1C4409678(v1, v1[3]);
  v9 = sub_1C4400EC4();
  v10(v9);
  v11 = v49;
  if (!v49)
  {
    sub_1C4423A0C(&v48, &qword_1EC0BB380, &unk_1C4F1F2E0);
    goto LABEL_11;
  }

  v12 = v50;
  sub_1C4409678(&v48, v49);
  v13 = (*(v12 + 8))(v11, v12);
  v15 = v14;
  sub_1C440962C(&v48);
  if (!v15)
  {
LABEL_11:
    v46 = 0x203A74616CLL;
    v47 = 0xE500000000000000;
    sub_1C456902C(&qword_1EC0B8400, &unk_1C4F175E0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1C4F0D130;
    v23 = v1[3];
    v24 = v1[4];
    sub_1C4409678(v1, v23);
    (*(v24 + 24))(v43, v23, v24);
    v25 = v44;
    v26 = MEMORY[0x1E69E63B0];
    v27 = MEMORY[0x1E69E6438];
    v28 = MEMORY[0x1E69E6530];
    v29 = MEMORY[0x1E69E65A8];
    if (v44)
    {
      v30 = v45;
      sub_1C4409678(v43, v44);
      v31 = (*(v30 + 8))(v25, v30);
      v49 = v26;
      v50 = v27;
      *&v48 = v31;
      sub_1C440962C(v43);
      if (v49)
      {
        sub_1C441D670(&v48, v22 + 32);
        goto LABEL_16;
      }
    }

    else
    {
      sub_1C4423A0C(v43, &qword_1EC0BDA78, &qword_1C4F30788);
    }

    *(v22 + 56) = v28;
    *(v22 + 64) = v29;
    *(v22 + 32) = 0;
LABEL_16:
    v32 = sub_1C4F01168();
    MEMORY[0x1C6940010](v32);

    MEMORY[0x1C6940010](0x203A6E6F6C20, 0xE600000000000000);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1C4F0D130;
    v34 = v1[3];
    v35 = v1[4];
    sub_1C4409678(v1, v34);
    (*(v35 + 24))(v43, v34, v35);
    if (v44)
    {
      v36 = v45;
      sub_1C4409678(v43, v44);
      v37 = *(v36 + 16);
      v38 = sub_1C44078DC();
      v40 = v39(v38);
      v49 = v26;
      v50 = v27;
      *&v48 = v40;
      sub_1C440962C(v43);
      if (v49)
      {
        sub_1C441D670(&v48, v33 + 32);
LABEL_21:
        v41 = sub_1C4F01168();
        MEMORY[0x1C6940010](v41);

        return v46;
      }
    }

    else
    {
      sub_1C4423A0C(v43, &qword_1EC0BDA78, &qword_1C4F30788);
    }

    *(v33 + 56) = v28;
    *(v33 + 64) = v29;
    *(v33 + 32) = 0;
    goto LABEL_21;
  }

  return v13;
}

uint64_t sub_1C4B6FAAC()
{
  v236 = sub_1C4F00978();
  v1 = sub_1C43FCDF8(v236);
  v235 = v2;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v6 = &v232 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C456902C(&qword_1EC0B9DC8, &unk_1C4F124A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1C43FBFDC();
  v234 = v9;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v232 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v232 - v14;
  v239 = sub_1C4EF9D38();
  v16 = sub_1C43FCDF8(v239);
  v237 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBFDC();
  v233 = v20;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v232 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v232 - v25;
  v27 = v0[3];
  v28 = v0[4];
  sub_1C44037B4(v0);
  v30 = *(v29 + 32);
  v31 = sub_1C4413844();
  v32(v31);
  if (v241)
  {
    sub_1C44037B4(v240);
    v34 = *(v33 + 16);
    v35 = sub_1C4413844();
    v36(v35);
    if (v244)
    {
      sub_1C44037B4(v243);
      v38 = *(v37 + 8);
      v39 = sub_1C4413844();
      v40(v39);
      sub_1C440962C(v243);
      sub_1C440962C(v240);
      goto LABEL_7;
    }

    sub_1C440962C(v240);
    v41 = &unk_1EC0BB388;
    v42 = &unk_1C4F1F2F0;
    v43 = v243;
  }

  else
  {
    v41 = &qword_1EC0BB380;
    v42 = &unk_1C4F1F2E0;
    v43 = v240;
  }

  sub_1C4423A0C(v43, v41, v42);
  memset(v246, 0, sizeof(v246));
  v247 = 0;
LABEL_7:
  v44 = v0[3];
  v45 = v0[4];
  sub_1C44037B4(v0);
  v47 = *(v46 + 32);
  v48 = sub_1C4413844();
  v49(v48);
  if (v244)
  {
    sub_1C44037B4(v243);
    v51 = *(v50 + 40);
    v52 = sub_1C4413844();
    v53(v52);
    sub_1C440962C(v243);
    v54 = v239;
    if (sub_1C44157D4(v15, 1, v239) != 1)
    {
      v55 = v237;
      (*(v237 + 32))(v26, v15, v54);
      sub_1C4EF9CF8();
      if (qword_1EDDF7918 != -1)
      {
        sub_1C44203B8();
      }

      v56 = type metadata accessor for SourceIdPrefix();
      sub_1C442B738(v56, qword_1EDE2D650);
      String.base64EncodedSHA(withPrefix:)();
      v58 = v57;
      v60 = v59;

      (*(v55 + 8))(v26, v54);
      goto LABEL_24;
    }
  }

  else
  {
    sub_1C4423A0C(v243, &qword_1EC0BB380, &unk_1C4F1F2E0);
    v54 = v239;
    sub_1C440BAA8(v15, 1, 1, v239);
  }

  sub_1C4423A0C(v15, &qword_1EC0B9DC8, &unk_1C4F124A0);
  sub_1C43FDEB8();
  if (v244)
  {
    v61 = v245;
    sub_1C4409678(v243, v244);
    v62 = *(v61 + 8);
    v63 = sub_1C44078DC();
    v64(v63);
    sub_1C440BAA8(v13, 0, 1, v54);
    sub_1C440962C(v243);
    if (sub_1C44157D4(v13, 1, v54) != 1)
    {
      v65 = v237;
      (*(v237 + 32))(v24, v13, v54);
      sub_1C4EF9CF8();
      if (qword_1EDDF7918 != -1)
      {
        sub_1C44203B8();
      }

      v66 = type metadata accessor for SourceIdPrefix();
      sub_1C442B738(v66, qword_1EDE2D650);
      String.base64EncodedSHA(withPrefix:)();
      v58 = v67;
      v60 = v68;

      (*(v65 + 8))(v24, v54);
      goto LABEL_24;
    }
  }

  else
  {
    sub_1C4423A0C(v243, &qword_1EC0C3D68, qword_1C4F558A0);
    sub_1C440BAA8(v13, 1, 1, v54);
  }

  sub_1C4423A0C(v13, &qword_1EC0B9DC8, &unk_1C4F124A0);
  sub_1C442D3CC();
  v70 = *(v69 + 24);
  v71 = sub_1C44078DC();
  v72(v71);
  if (v244)
  {
    sub_1C441A5E4();
    v74 = *(v73 + 8);
    v75 = sub_1C44078DC();
    v77 = v76(v75);
    sub_1C440962C(v243);
    sub_1C442D3CC();
    v79 = *(v78 + 24);
    v80 = sub_1C44078DC();
    v81(v80);
    if (v244)
    {
      sub_1C441A5E4();
      v83 = *(v82 + 16);
      v84 = sub_1C44078DC();
      v86 = v85(v84);
      sub_1C440962C(v243);
      sub_1C456902C(&qword_1EC0B8400, &unk_1C4F175E0);
      v87 = swift_allocObject();
      *(v87 + 16) = xmmword_1C4F0CE60;
      v88 = MEMORY[0x1E69E63B0];
      v89 = MEMORY[0x1E69E6438];
      *(v87 + 56) = MEMORY[0x1E69E63B0];
      *(v87 + 64) = v89;
      *(v87 + 32) = v77;
      *(v87 + 96) = v88;
      *(v87 + 104) = v89;
      *(v87 + 72) = v86;
      sub_1C4F01168();
      if (qword_1EDDF7918 != -1)
      {
        sub_1C44203B8();
      }

      v90 = type metadata accessor for SourceIdPrefix();
      sub_1C442B738(v90, qword_1EDE2D650);
      String.base64EncodedSHA(withPrefix:)();
      v58 = v91;
      v60 = v92;

LABEL_24:
      v93 = type metadata accessor for LifeEventStructs.AddressRelationshipType(0);
      sub_1C44099C4(v93);
      v94 = sub_1C4DE3634();
      sub_1C43FDEB8();
      if (v244)
      {
        sub_1C441A5E4();
        v96 = *(v95 + 80);
        v97 = sub_1C44078DC();
        v98(v97);
        sub_1C440B3BC();
      }

      else
      {
        sub_1C4423A0C(v243, &qword_1EC0C3D68, qword_1C4F558A0);
      }

      sub_1C4412598(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_postalCode);
      sub_1C43FDEB8();
      if (v244)
      {
        sub_1C441A5E4();
        v103 = *(v102 + 88);
        v104 = sub_1C44078DC();
        v105(v104);
        sub_1C440B3BC();
      }

      else
      {
        sub_1C4423A0C(v243, &qword_1EC0C3D68, qword_1C4F558A0);
      }

      sub_1C4412598(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_country);
      sub_1C43FDEB8();
      if (v244)
      {
        sub_1C441A5E4();
        v107 = *(v106 + 32);
        v108 = sub_1C44078DC();
        v109(v108);
        sub_1C440B3BC();
      }

      else
      {
        sub_1C4423A0C(v243, &qword_1EC0C3D68, qword_1C4F558A0);
      }

      sub_1C4412598(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_thoroughfare);
      sub_1C43FDEB8();
      if (v244)
      {
        sub_1C441A5E4();
        v111 = *(v110 + 24);
        v112 = sub_1C44078DC();
        v113(v112);
        sub_1C440B3BC();
      }

      else
      {
        sub_1C4423A0C(v243, &qword_1EC0C3D68, qword_1C4F558A0);
      }

      sub_1C4412598(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_subThoroughfare);
      sub_1C43FDEB8();
      if (v244)
      {
        sub_1C441A5E4();
        v115 = *(v114 + 40);
        v116 = sub_1C44078DC();
        v117(v116);
        sub_1C440B3BC();
      }

      else
      {
        sub_1C4423A0C(v243, &qword_1EC0C3D68, qword_1C4F558A0);
      }

      sub_1C4412598(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_subLocality);
      sub_1C43FDEB8();
      if (v244)
      {
        sub_1C441A5E4();
        v119 = *(v118 + 48);
        v120 = sub_1C44078DC();
        v121(v120);
        sub_1C440B3BC();
      }

      else
      {
        sub_1C4423A0C(v243, &qword_1EC0C3D68, qword_1C4F558A0);
      }

      sub_1C4412598(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_locality);
      sub_1C43FDEB8();
      if (v244)
      {
        sub_1C441A5E4();
        v123 = *(v122 + 56);
        v124 = sub_1C44078DC();
        v125(v124);
        sub_1C440B3BC();
      }

      else
      {
        sub_1C4423A0C(v243, &qword_1EC0C3D68, qword_1C4F558A0);
      }

      sub_1C4412598(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_subAdministrativeArea);
      sub_1C43FDEB8();
      if (v244)
      {
        sub_1C441A5E4();
        v127 = *(v126 + 64);
        v128 = sub_1C44078DC();
        v129(v128);
        sub_1C440B3BC();
      }

      else
      {
        sub_1C4423A0C(v243, &qword_1EC0C3D68, qword_1C4F558A0);
      }

      sub_1C4412598(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_administrativeArea);
      sub_1C43FDEB8();
      if (v244)
      {
        sub_1C441A5E4();
        v131 = *(v130 + 96);
        v132 = sub_1C44078DC();
        v133(v132);
        sub_1C440B3BC();
      }

      else
      {
        sub_1C4423A0C(v243, &qword_1EC0C3D68, qword_1C4F558A0);
      }

      sub_1C4412598(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_isoCountryCode);
      sub_1C442D3CC();
      v135 = *(v134 + 32);
      v136 = sub_1C44078DC();
      v137(v136);
      if (v244)
      {
        sub_1C441A5E4();
        v139 = *(v138 + 8);
        v140 = sub_1C44078DC();
        v141(v140);
        sub_1C440B3BC();
      }

      else
      {
        sub_1C4423A0C(v243, &qword_1EC0BB380, &unk_1C4F1F2E0);
      }

      sub_1C4412598(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_name);
      sub_1C442D3CC();
      v143 = *(v142 + 32);
      v144 = sub_1C44078DC();
      v145(v144);
      if (v244)
      {
        sub_1C441A5E4();
        v147 = *(v146 + 24);
        v148 = sub_1C44078DC();
        v150 = v149(v148);
        sub_1C440962C(v243);
        if (v150)
        {
          v151 = RTPlaceInferenceUserSpecificPlaceType.description.getter(v150);
          v152 = (v94 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_inferredSemanticLabel);
          v153 = *(v94 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_inferredSemanticLabel + 8);
          *v152 = v151;
          v152[1] = v154;
        }
      }

      else
      {
        sub_1C4423A0C(v243, &qword_1EC0BB380, &unk_1C4F1F2E0);
      }

      v155 = type metadata accessor for LifeEventStructs.Place(0);
      sub_1C44099C4(v155);
      v156 = v238;
      sub_1C4DE8308(v58, v60, v157, v158, v159, v160, v161, v162, v232, v233, v234, v235, v236, v237, v238, v239, v240[0], v240[1], v240[2], v241);
      if (v156)
      {
        sub_1C4423A0C(v246, &qword_1EC0C3D68, qword_1C4F558A0);

        return v58;
      }

      v58 = v163;

      sub_1C4DE03DC(v164);
      sub_1C442D3CC();
      v166 = *(v165 + 24);
      v167 = sub_1C44078DC();
      v168(v167);
      if (!v244)
      {
        goto LABEL_70;
      }

      sub_1C441A5E4();
      v170 = *(v169 + 8);
      v171 = sub_1C44078DC();
      v173 = v172(v171);
      sub_1C440962C(v243);
      sub_1C442D3CC();
      v175 = *(v174 + 24);
      v176 = sub_1C44078DC();
      v177(v176);
      if (v244)
      {
        sub_1C441A5E4();
        v179 = *(v178 + 16);
        v180 = sub_1C44078DC();
        v182 = v181(v180);
        sub_1C440962C(v243);
        v183 = type metadata accessor for LifeEventStructs.LocationRelationshipType(0);
        sub_1C44099C4(v183);
        sub_1C4DE7B74();
        if ((*&v173 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          v184 = sub_1C4F019E8();
          sub_1C4432AC4(v184, v185, OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24LocationRelationshipType_latitude);
        }

        if ((*&v182 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          v186 = sub_1C4F019E8();
          sub_1C4432AC4(v186, v187, OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24LocationRelationshipType_longitude);
        }

        sub_1C4DE0404(v188);
      }

      else
      {
LABEL_70:
        sub_1C4423A0C(v243, &qword_1EC0BDA78, &qword_1C4F30788);
      }

      v248 = MEMORY[0x1E69E7CC0];
      sub_1C442D3CC();
      v190 = *(v189 + 32);
      v191 = sub_1C44078DC();
      v192(v191);
      if (v241)
      {
        v193 = v242;
        sub_1C4409678(v240, v241);
        v194 = *(v193 + 16);
        v195 = sub_1C44078DC();
        v196(v195);
        if (v244)
        {
          sub_1C441A5E4();
          v198 = *(v197 + 24);
          v199 = sub_1C44078DC();
          v201 = v200(v199);
          sub_1C440962C(v243);
          sub_1C440962C(v240);
          if (v201)
          {
            v202 = type metadata accessor for LifeEventStructs.IdentifierRelationshipType(0);
            sub_1C44099C4(v202);
            v203 = sub_1C4DE55DC();
            v243[0] = v201;
            v204 = sub_1C4F02858();
            sub_1C4432AC4(v204, v205, OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs26IdentifierRelationshipType_identifierId);
            v206 = *(v203 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs26IdentifierRelationshipType_identifierType + 8);
            *(v203 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs26IdentifierRelationshipType_identifierType) = xmmword_1C4F1F440;

            MEMORY[0x1C6940330](v207);
            sub_1C44090B4();
            if (v208)
            {
              sub_1C43FF654();
            }

            sub_1C4F01748();
            v209 = v248;
LABEL_81:
            sub_1C442D3CC();
            v214 = *(v213 + 32);
            v215 = sub_1C44078DC();
            v216(v215);
            v217 = v244;
            if (v244)
            {
              v218 = v245;
              sub_1C4409678(v243, v244);
              v219 = v217;
              v220 = v234;
              (*(v218 + 40))(v219, v218);
              sub_1C440962C(v243);
              v221 = v239;
              if (sub_1C44157D4(v220, 1, v239) != 1)
              {
                v222 = v237;
                v223 = v233;
                (*(v237 + 32))(v233, v220, v221);
                v224 = type metadata accessor for LifeEventStructs.IdentifierRelationshipType(0);
                sub_1C44099C4(v224);
                v225 = sub_1C4DE55DC();
                v226 = sub_1C4EF9CF8();
                sub_1C4432AC4(v226, v227, OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs26IdentifierRelationshipType_identifierId);
                v228 = *(v225 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs26IdentifierRelationshipType_identifierType + 8);
                *(v225 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs26IdentifierRelationshipType_identifierType) = xmmword_1C4F55890;

                MEMORY[0x1C6940330](v229);
                sub_1C44090B4();
                if (v208)
                {
                  sub_1C43FF654();
                }

                sub_1C4F01748();
                v209 = v248;
                (*(v222 + 8))(v223, v221);
                goto LABEL_88;
              }
            }

            else
            {
              sub_1C4423A0C(v243, &qword_1EC0BB380, &unk_1C4F1F2E0);
              v220 = v234;
              sub_1C440BAA8(v234, 1, 1, v239);
            }

            sub_1C4423A0C(v220, &qword_1EC0B9DC8, &unk_1C4F124A0);
LABEL_88:
            v230 = *(v58 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_identifier);
            *(v58 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_identifier) = v209;

            sub_1C4DE82CC();

            sub_1C4423A0C(v246, &qword_1EC0C3D68, qword_1C4F558A0);
            return v58;
          }

LABEL_80:
          v209 = MEMORY[0x1E69E7CC0];
          goto LABEL_81;
        }

        sub_1C440962C(v240);
        v210 = &unk_1EC0BB388;
        v211 = &unk_1C4F1F2F0;
        v212 = v243;
      }

      else
      {
        v210 = &qword_1EC0BB380;
        v211 = &unk_1C4F1F2E0;
        v212 = v240;
      }

      sub_1C4423A0C(v212, v210, v211);
      goto LABEL_80;
    }
  }

  sub_1C4423A0C(v243, &qword_1EC0BDA78, &qword_1C4F30788);
  sub_1C4F00158();
  v99 = sub_1C4F00968();
  v100 = sub_1C4F01CD8();
  if (os_log_type_enabled(v99, v100))
  {
    v101 = swift_slowAlloc();
    *v101 = 0;
    _os_log_impl(&dword_1C43F8000, v99, v100, "Can not create location entity from stored visit: loi identifier, address and lat long are missing", v101, 2u);
    MEMORY[0x1C6942830](v101, -1, -1);
  }

  (*(v235 + 8))(v6, v236);
  sub_1C4423A0C(v246, &qword_1EC0C3D68, qword_1C4F558A0);
  return 0;
}