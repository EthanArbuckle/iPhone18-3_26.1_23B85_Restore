void sub_1C4B18040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(char *, uint64_t), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v21;
  a20 = v22;
  v23 = sub_1C4EFB768();
  v24 = sub_1C43FCDF8(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBD08();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C440D124();
  MEMORY[0x1EEE9AC00](v30);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &a9 - v32;
  sub_1C4EFB758();
  sub_1C4EFBFF8();
  if (v20)
  {
    (*(v26 + 8))(v33, v23);
  }

  else
  {
    a10 = *(v26 + 8);
    a10(v33, v23);
    sub_1C4EFB758();
    sub_1C4EFBFF8();
    sub_1C440FB90();
    v37();
    sub_1C4EFD898();
    sub_1C4EFB758();
    sub_1C4EFBFF8();
    sub_1C440FB90();
    v38();

    sub_1C4EFB758();
    sub_1C4EFBFF8();
    sub_1C440FB90();
    v36(v34, v35);
  }

  sub_1C43FBC80();
}

void *sub_1C4B18290(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    v8 = sub_1C4B18658(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_1C4B18330(_BYTE *a1, uint64_t a2)
{
  v4 = a1;
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = a1[32];
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v4 = sub_1C4B18290(v13, v7, v4, a2);
      MEMORY[0x1C6942830](v13, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v8);
  v9 = v14 - ((8 * v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1C4501018(0, v7, v9);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v10 = sub_1C4B18658(v9, v7, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    v4 = v10;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  v11 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t sub_1C4B184F4(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v9 = swift_slowAlloc();
      v2 = sub_1C46BC394(v9, v4, v2);
      MEMORY[0x1C6942830](v9, -1, -1);
      goto LABEL_5;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v5 = v10 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1C4501018(0, v4, v5);
  sub_1C46BC570(v5, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }

  else
  {
    v2 = v6;
  }

LABEL_5:
  v7 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t sub_1C4B18658(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a3;
  v26 = a4;
  v22[5] = a2;
  v23 = result;
  v24 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(v25 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(v25 + 56) + 16 * v13 + 8);
    v27[0] = *v14;
    v27[1] = v15;
    MEMORY[0x1EEE9AC00](result);
    v22[2] = v27;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v17 = v28;
    v18 = sub_1C44CE068(sub_1C44CE790, v22, v26);
    v28 = v17;

    if (!v18)
    {
      *(v23 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v24++, 1))
      {
        __break(1u);
LABEL_15:
        sub_1C458721C();
        v21 = v20;

        return v21;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_1C4B18820()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  sub_1C4B16FF4();
}

void sub_1C4B18900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FBD3C();
  a19 = v23;
  a20 = v24;
  v25 = v21;
  sub_1C4418BAC(v26, v27, v28, v29, v30, v31, v32, v33);
  v177 = v34;
  v174 = sub_1C4F00DD8();
  v35 = sub_1C43FCDF8(v174);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v38);
  v39 = sub_1C4F00DC8();
  v40 = sub_1C43FCDF8(v39);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FD230();
  sub_1C43FD2C8(v44);
  v45 = sub_1C4F01188();
  v46 = sub_1C43FCDF8(v45);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FBCC4();
  v176 = sub_1C44289FC();
  v49 = sub_1C43FCDF8(v176);
  v51 = v50;
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v49);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v54);
  v55 = sub_1C4B2AB38();
  v56 = sub_1C43FCDF8(v55);
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v56);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v59);
  sub_1C43FD230();
  sub_1C44F0CE4(v60);
  v61 = [v21 __swift_objectForKeyedSubscript_];
  sub_1C44E76F8();
  swift_unknownObjectRelease();
  if (v20)
  {
    sub_1C4B2ABF0();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C4475850();
  }

  sub_1C4441540();
  if (!v62)
  {
    sub_1C4420C3C(&v181, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_11;
  }

  sub_1C4B2A2B4();
  if ((sub_1C4488A68() & 1) == 0)
  {
LABEL_11:
    sub_1C44F19E8();
    v51 = v177;
    if (!v64)
    {
      sub_1C4419274();
      swift_once();
    }

    v85 = sub_1C4F00978();
    sub_1C442B738(v85, qword_1EDE2DE10);
    v183 = *(v21 + 16);
    v181 = *(v21 + 24);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44CD064();
    sub_1C4485A8C();
    v86 = sub_1C4F00968();
    sub_1C4F01CD8();

    sub_1C4B2ABD8(&v183);
    sub_1C43FC2F4();
    sub_1C4420C3C(v87, v88, v89);
    if (sub_1C44020E0())
    {
      sub_1C43FECF0();
      v90 = swift_slowAlloc();
      sub_1C43FEC60();
      v91 = swift_slowAlloc();
      sub_1C4B2AACC(v91);
      sub_1C4473D9C(4.8149e-34);
      v92 = sub_1C43FD574();
      *(v90 + 4) = sub_1C441D828(v92, v93, v94);
      sub_1C43FBD74(&dword_1C43F8000, v95, v96, "Mapping error, missing submap for %s");
      sub_1C440962C(&qword_1C4F0D970);
      v97 = sub_1C4408D20();
      MEMORY[0x1C6942830](v97);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    sub_1C45CF650();
    sub_1C441C114();
    v98 = swift_allocError();
    sub_1C44046C4(v98, v99);
    swift_willThrow();
    goto LABEL_16;
  }

  v63 = *(sub_1C4426444() + 24);
  sub_1C44F19E8();
  if (!v64)
  {
    sub_1C4419274();
    swift_once();
  }

  v65 = sub_1C4F00978();
  sub_1C442B738(v65, qword_1EDE2DE10);
  v66 = sub_1C443E3CC();
  v67(v66);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v68 = sub_1C4F00968();
  v69 = sub_1C4F01CB8();

  os_log_type_enabled(v68, v69);
  sub_1C4B2AAE4();
  if (v70)
  {
    sub_1C4480408();
    v71 = swift_slowAlloc();
    sub_1C443FD74();
    v72 = swift_slowAlloc();
    sub_1C44753A0(v72);
    *v71 = 136381187;
    v73 = sub_1C44587A0(&v184);
    *(v71 + 4) = sub_1C441D828(v73, v74, v75);
    *(v71 + 12) = 2080;
    sub_1C4407A84();
    sub_1C44CD238(v76, v77);
    v78 = sub_1C4F02858();
    v25 = v79;
    v80 = sub_1C443E1EC();
    v81(v80);
    sub_1C441D828(v78, v25, &v181);

    sub_1C448832C();
    sub_1C4B2AB18(&dword_1C43F8000, v82, v83, "Source: generating identifier for: %{private}s : %s : %{BOOL}d");
    sub_1C4410278(&v178);
    swift_arrayDestroy();
    v84 = sub_1C445E9A8();
    MEMORY[0x1C6942830](v84);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {

    v102 = sub_1C443E1EC();
    v103(v102);
  }

  sub_1C4455960();
  MEMORY[0x1C6940010](v69, v25);
  v104 = v181;
  sub_1C4F01178();
  sub_1C4B2AB98();
  v105 = sub_1C44A3AC4();
  v106(v105);
  if (v68 >> 60 != 15)
  {

    sub_1C442D2CC();
    sub_1C44CD238(v116, v117);
    sub_1C4401E94();
    v118 = sub_1C4409D0C();
    sub_1C44344B8(v118, v119);
    v120 = sub_1C4409D0C();
    sub_1C4498FD8(v120, v121);
    v122 = sub_1C4409D0C();
    sub_1C441DFEC(v122, v123);
    sub_1C442F708();
    sub_1C4F00DA8();
    v124 = sub_1C443F33C(&a18);
    v125(v124);
    v126 = sub_1C44B8FE8();
    v127(v126);
    v128 = sub_1C440CD70();
    v129(v128);
    sub_1C440A6C4();
    sub_1C4EFF028();
    v130 = sub_1C4409D0C();
    sub_1C441DFEC(v130, v131);
    v132 = sub_1C445BB20();
    v133(v132);
    v134 = sub_1C444C02C();
    v135(v134);
    sub_1C442023C();
    v179 = v136;
    v180 = v137;
    v138 = sub_1C4F029C8();
    v139 = sub_1C440BC84(&v182);
    v141 = [v139 v140];
    sub_1C441C818();
    swift_unknownObjectRelease();
    if (v104)
    {
      sub_1C4B2ABF0();
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1C4475850();
    }

    sub_1C4441540();
    if (v152)
    {
      if (sub_1C44EC838())
      {

        if (v173)
        {
          v153 = sub_1C44A1F08();
          sub_1C4B1FB70(v153, v154, v155, v156, v157, v158, v159, v160, v169);
LABEL_35:
          sub_1C44A1C64();
          sub_1C44886C4();
          v161();

          goto LABEL_17;
        }

        sub_1C4B2A94C();
        v162 = sub_1C4F00968();
        sub_1C4F01CD8();
        v163 = sub_1C44016D0();
        if (os_log_type_enabled(v163, v164))
        {
          sub_1C43FD1A8();
          v165 = swift_slowAlloc();
          sub_1C43FBD24(v165);
          sub_1C440BAE8(&dword_1C43F8000, v166, v167, "Mapping error, missing identifier for nested entity");
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        sub_1C45CF650();
        sub_1C441C114();
        v98 = swift_allocError();
        sub_1C44060DC(v98, v168);
        swift_willThrow();

        (*(v22 + 8))();
LABEL_16:
        v100 = v51[1];
        v179 = *v51;
        v180 = v100;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        MEMORY[0x1C6940010](32, 0xE100000000000000);
        v101 = sub_1C43FD574();
        MEMORY[0x1C6940010](v101);
        sub_1C4B5B968(v98);

        goto LABEL_17;
      }
    }

    else
    {
      sub_1C4420C3C(&v181, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    }

    sub_1C44000C4();
    sub_1C4466D68();
    goto LABEL_35;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4B2A94C();
  v107 = sub_1C4F00968();
  v108 = sub_1C4F01CD8();

  os_log_type_enabled(v107, v108);
  sub_1C440D73C();
  if (v109)
  {
    sub_1C43FECF0();
    v110 = swift_slowAlloc();
    sub_1C43FEC60();
    v111 = swift_slowAlloc();
    *&v181 = v111;
    sub_1C4B2AB78(4.845e-34);
    sub_1C44E76F8();

    *(v110 + 4) = v104;
    sub_1C4B2AB58(&dword_1C43F8000, v112, v113, "Source: failed to encode identifier as UTF8 data: %{private}s");
    sub_1C440962C(v111);
    v114 = sub_1C43FEF7C();
    MEMORY[0x1C6942830](v114);
    v115 = sub_1C4408D20();
    MEMORY[0x1C6942830](v115);
  }

  else
  {
  }

  v183 = *(v170 + 16);
  v181 = *(v170 + 24);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44CD064();
  sub_1C4485A8C();
  v142 = sub_1C4F00968();
  sub_1C4F01CD8();

  sub_1C4B2ABD8(&v183);
  sub_1C43FC2F4();
  sub_1C4420C3C(v143, v144, v145);
  if (sub_1C44020E0())
  {
    sub_1C43FECF0();
    v146 = swift_slowAlloc();
    sub_1C43FEC60();
    v147 = swift_slowAlloc();
    sub_1C4B2AACC(v147);
    sub_1C4473D9C(4.8149e-34);
    *(v146 + 4) = sub_1C441D828(v22, v172, v148);
    sub_1C43FBD74(&dword_1C43F8000, v149, v150, "Mapping error, failed to generate EntityIdentifier for %s");
    sub_1C440962C(&qword_1C4F0D970);
    v151 = sub_1C4408D20();
    MEMORY[0x1C6942830](v151);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

LABEL_17:
  sub_1C43FE9F0();
}

void sub_1C4B193E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FBD3C();
  a19 = v27;
  a20 = v28;
  v37 = sub_1C4426DC8(v29, v30, v31, v32, v33, v34, v35, v36);
  v38 = sub_1C43FFAE0(v37, &a15);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v41);
  v42 = sub_1C4F00DC8();
  v43 = sub_1C43FFAE0(v42, &a17);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FD230();
  sub_1C43FD2C8(v47);
  v48 = sub_1C4F01188();
  v49 = sub_1C43FCDF8(v48);
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v49);
  sub_1C43FBCC4();
  v194 = sub_1C44289FC();
  v52 = sub_1C43FCDF8(v194);
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v52);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v55);
  v192 = sub_1C445BA94();
  v56 = sub_1C43FCDF8(v192);
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v56);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v59);
  sub_1C43FD230();
  sub_1C447E23C(v60);
  v61 = sub_1C4F029C8();
  v62 = sub_1C4B2AC08(v61, sel___swift_objectForKeyedSubscript_);
  sub_1C43FBD30();
  swift_unknownObjectRelease();
  if (v21)
  {
    sub_1C4F02078();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C447F6E8();
  }

  sub_1C448E09C();
  if (!v63)
  {
    sub_1C4420C3C(v197, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_11;
  }

  v61 = sub_1C4B2A2B4();
  if ((sub_1C4462848() & 1) == 0)
  {
LABEL_11:
    sub_1C4475618();
    if (!v65)
    {
      sub_1C4419274();
      swift_once();
    }

    v84 = sub_1C4F00978();
    sub_1C442B738(v84, qword_1EDE2DE10);
    sub_1C443DFBC();
    v195(v24);
    v85 = sub_1C4F00968();
    sub_1C4F01CD8();
    v86 = sub_1C44016D0();
    if (os_log_type_enabled(v86, v87))
    {
      sub_1C43FECF0();
      swift_slowAlloc();
      sub_1C43FC858();
      v88 = swift_slowAlloc();
      sub_1C43FE768(v88);
      sub_1C445CCE4(4.8149e-34);
      v89 = sub_1C4482D0C();
      v90(v89);
      v91 = sub_1C444AD80();
      sub_1C441D828(v91, v26, v92);
      sub_1C4B2AA44();
      *(&xmmword_1EDDFD000 + 4) = v22;
      sub_1C44046B4();
      _os_log_impl(v93, v94, v95, v96, v97, v98);
      sub_1C440962C(v61);
      v99 = sub_1C4408D20();
      MEMORY[0x1C6942830](v99);
      v100 = sub_1C4425FC4();
      MEMORY[0x1C6942830](v100);
    }

    else
    {
      v101 = sub_1C4482D0C();
      v102(v101);
    }

    sub_1C45CF650();
    sub_1C441C114();
    v103 = swift_allocError();
    sub_1C44046C4(v103, v104);
    swift_willThrow();
    goto LABEL_17;
  }

  v64 = *(sub_1C4435C84() + 24);
  sub_1C4475618();
  if (!v65)
  {
    sub_1C4419274();
    swift_once();
  }

  v66 = sub_1C4F00978();
  sub_1C442B738(v66, qword_1EDE2DE10);
  v67 = sub_1C441BC8C();
  v68(v67);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v69 = sub_1C4F00968();
  sub_1C4F01CB8();
  sub_1C4404CE0();

  v70 = sub_1C4B2AAD8();
  if (os_log_type_enabled(v70, v71))
  {
    sub_1C4480408();
    v182 = v25;
    v72 = swift_slowAlloc();
    sub_1C443FD74();
    v73 = swift_slowAlloc();
    sub_1C4460AE0(v73);
    *v72 = 136381187;
    v74 = sub_1C44587A0(v199);
    v77 = sub_1C441D828(v74, v75, v76);
    sub_1C4441790(v77);
    sub_1C4407A84();
    sub_1C44CD238(v78, v79);
    sub_1C4B2A8D4();
    v80 = sub_1C4422B90();
    v81(v80);
    sub_1C4507B68();
    sub_1C44E76F8();

    sub_1C4471D20();
    sub_1C44608A8(&dword_1C43F8000, v82, v83, "Source: generating identifier for: %{private}s : %s : %{BOOL}d");
    sub_1C4410278(v196);
    swift_arrayDestroy();
    v26 = v183;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {

    v106 = sub_1C4422B90();
    v107(v106);
  }

  sub_1C442F964();
  v108 = sub_1C4402CD0();
  MEMORY[0x1C6940010](v108);
  sub_1C4B2A988();
  sub_1C44AB280();
  v109 = sub_1C440F004();
  v110(v109);
  if (v69 >> 60 != 15)
  {
    v196[0] = v23;

    sub_1C442D2CC();
    sub_1C44CD238(v118, v119);
    sub_1C4418550();
    v120 = sub_1C4402CD0();
    sub_1C44344B8(v120, v121);
    v122 = sub_1C4402CD0();
    sub_1C4498FD8(v122, v123);
    sub_1C444C328();
    v124 = sub_1C447E338();
    v125(v124);
    v126 = sub_1C44163A0();
    v127(v126);
    v128 = sub_1C444FF8C();
    v129(v128);
    sub_1C44A1838();
    v130 = sub_1C4402CD0();
    sub_1C441DFEC(v130, v131);
    v132 = sub_1C445AB04();
    v133(v132);
    v134 = sub_1C442ECE4();
    v135(v134);
    sub_1C442023C();
    v198 = v136;
    v199[0] = v137;
    v138 = sub_1C4F029C8();
    v139 = sub_1C44D4550(v138, sel___swift_objectForKeyedSubscript_);
    sub_1C441C818();
    swift_unknownObjectRelease();
    v25 = 0;
    if (v20)
    {
      sub_1C4F02078();
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1C447F6E8();
    }

    sub_1C448E09C();
    v23 = v196[0];
    if (v160)
    {
      if (sub_1C4475C50())
      {

        if (v191)
        {
          v161 = sub_1C440608C();
          sub_1C4B28D4C(v161, v162, v163, v164, v165, v166, v167, v168, v180, v181, v182, v183, v184, v185, v186, v187, 0x1EDDFD000, v188, v189, v190);
LABEL_35:
          v169 = sub_1C44024E8();
          v170(v169);

          goto LABEL_18;
        }

        v171 = sub_1C442A62C();
        sub_1C4F01CD8();
        v172 = sub_1C44016D0();
        if (os_log_type_enabled(v172, v173))
        {
          sub_1C43FD1A8();
          v174 = swift_slowAlloc();
          sub_1C43FBD24(v174);
          sub_1C440BAE8(&dword_1C43F8000, v175, v176, "Mapping error, missing identifier for nested entity");
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        sub_1C45CF650();
        sub_1C441C114();
        v103 = swift_allocError();
        sub_1C44060DC(v103, v177);
        swift_willThrow();

        v178 = sub_1C44024E8();
        v179(v178);
LABEL_17:
        v105 = v25[1];
        *&v197[0] = *v25;
        *(&v197[0] + 1) = v105;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4482EB0();
        MEMORY[0x1C6940010](v23, v26);
        sub_1C44806E0();

        goto LABEL_18;
      }
    }

    else
    {
      sub_1C4420C3C(v197, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    }

    sub_1C44603D4();
    goto LABEL_35;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v111 = sub_1C442A62C();
  v112 = sub_1C4F01CD8();

  if (os_log_type_enabled(v111, v112))
  {
    sub_1C43FECF0();
    v113 = swift_slowAlloc();
    sub_1C43FEC60();
    v114 = swift_slowAlloc();
    sub_1C43FE768(v114);
    sub_1C447F860(4.845e-34);
    sub_1C4B2AC20();
    *(v113 + 4) = v193;
    sub_1C4508944(&dword_1C43F8000, v115, v116, "Source: failed to encode identifier as UTF8 data: %{private}s");
    sub_1C440962C(v69);
    v117 = sub_1C4408D20();
    MEMORY[0x1C6942830](v117);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {
  }

  v140 = sub_1C4458550();
  v141(v140);
  v142 = sub_1C4F00968();
  sub_1C4F01CD8();
  v143 = sub_1C44016D0();
  if (os_log_type_enabled(v143, v144))
  {
    sub_1C43FECF0();
    swift_slowAlloc();
    sub_1C43FC858();
    v145 = swift_slowAlloc();
    sub_1C43FE768(v145);
    sub_1C445CCE4(4.8149e-34);
    v146 = sub_1C44B6784();
    v147(v146);
    v148 = sub_1C444AD80();
    sub_1C441D828(v148, v26, v149);
    sub_1C4B2AA44();
    *(v197 + 4) = v193;
    sub_1C44046B4();
    _os_log_impl(v150, v151, v152, v153, v154, v155);
    sub_1C440962C(v69);
    v156 = sub_1C4408D20();
    MEMORY[0x1C6942830](v156);
    v157 = sub_1C4425FC4();
    MEMORY[0x1C6942830](v157);
  }

  else
  {
    v158 = sub_1C44B6784();
    v159(v158);
  }

LABEL_18:
  sub_1C44085C4();
  sub_1C43FE9F0();
}

void sub_1C4B19DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FBD3C();
  a19 = v23;
  a20 = v24;
  v25 = v21;
  sub_1C4418BAC(v26, v27, v28, v29, v30, v31, v32, v33);
  v186 = v34;
  v183 = sub_1C4F00DD8();
  v35 = sub_1C43FCDF8(v183);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v38);
  v39 = sub_1C4F00DC8();
  v40 = sub_1C43FCDF8(v39);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FD230();
  sub_1C43FD2C8(v44);
  v45 = sub_1C4F01188();
  v46 = sub_1C43FCDF8(v45);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FBCC4();
  v185 = sub_1C44289FC();
  v49 = sub_1C43FCDF8(v185);
  v51 = v50;
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v49);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v54);
  v55 = sub_1C4B2AB38();
  v56 = sub_1C43FCDF8(v55);
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v56);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v59);
  sub_1C43FD230();
  sub_1C44F0CE4(v60);
  v61 = [v21 __swift_objectForKeyedSubscript_];
  sub_1C44E76F8();
  swift_unknownObjectRelease();
  if (v20)
  {
    sub_1C4B2ABF0();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C4475850();
  }

  sub_1C4441540();
  if (!v62)
  {
    sub_1C4420C3C(&v190, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_11;
  }

  sub_1C4B2A2B4();
  if ((sub_1C4488A68() & 1) == 0)
  {
LABEL_11:
    sub_1C44F19E8();
    v51 = v186;
    if (!v64)
    {
      sub_1C4419274();
      swift_once();
    }

    v85 = sub_1C4F00978();
    sub_1C442B738(v85, qword_1EDE2DE10);
    v190 = *(v21 + 16);
    v192 = *(v21 + 32);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44CD064();
    sub_1C4485A8C();
    v86 = sub_1C4F00968();
    sub_1C4F01CD8();

    sub_1C4B2ABD8(&v190);
    sub_1C43FC2F4();
    sub_1C4420C3C(v87, v88, v89);
    if (sub_1C44020E0())
    {
      sub_1C43FECF0();
      v90 = swift_slowAlloc();
      sub_1C43FEC60();
      v91 = swift_slowAlloc();
      sub_1C4B2AACC(v91);
      sub_1C4473D9C(4.8149e-34);
      v92 = sub_1C43FD574();
      *(v90 + 4) = sub_1C441D828(v92, v93, v94);
      sub_1C43FBD74(&dword_1C43F8000, v95, v96, "Mapping error, missing submap for %s");
      sub_1C440962C(&qword_1C4F0FF50);
      v97 = sub_1C4408D20();
      MEMORY[0x1C6942830](v97);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    sub_1C45CF650();
    sub_1C441C114();
    v98 = swift_allocError();
    sub_1C44046C4(v98, v99);
    swift_willThrow();
    goto LABEL_16;
  }

  v63 = *(sub_1C4426444() + 24);
  sub_1C44F19E8();
  if (!v64)
  {
    sub_1C4419274();
    swift_once();
  }

  v65 = sub_1C4F00978();
  sub_1C442B738(v65, qword_1EDE2DE10);
  v66 = sub_1C443E3CC();
  v67(v66);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v175 = v21;
  v68 = sub_1C4F00968();
  v69 = sub_1C4F01CB8();

  os_log_type_enabled(v68, v69);
  sub_1C4B2AAE4();
  if (v70)
  {
    sub_1C4480408();
    v71 = swift_slowAlloc();
    sub_1C443FD74();
    v72 = swift_slowAlloc();
    sub_1C44753A0(v72);
    *v71 = 136381187;
    v73 = sub_1C44587A0(&v193);
    *(v71 + 4) = sub_1C441D828(v73, v74, v75);
    *(v71 + 12) = 2080;
    sub_1C4407A84();
    sub_1C44CD238(v76, v77);
    v78 = sub_1C4F02858();
    v25 = v79;
    v80 = sub_1C443E1EC();
    v81(v80);
    sub_1C441D828(v78, v25, &v190);

    sub_1C448832C();
    sub_1C4B2AB18(&dword_1C43F8000, v82, v83, "Source: generating identifier for: %{private}s : %s : %{BOOL}d");
    sub_1C4410278(&v187);
    swift_arrayDestroy();
    v84 = sub_1C445E9A8();
    MEMORY[0x1C6942830](v84);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {

    v102 = sub_1C443E1EC();
    v103(v102);
  }

  sub_1C4455960();
  MEMORY[0x1C6940010](v69, v25);
  v104 = v190;
  sub_1C4F01178();
  sub_1C4B2AB98();
  v105 = sub_1C44A3AC4();
  v106(v105);
  if (v68 >> 60 != 15)
  {

    sub_1C442D2CC();
    sub_1C44CD238(v116, v117);
    sub_1C4401E94();
    v118 = sub_1C4409D0C();
    sub_1C44344B8(v118, v119);
    v120 = sub_1C4409D0C();
    sub_1C4498FD8(v120, v121);
    v122 = sub_1C4409D0C();
    sub_1C441DFEC(v122, v123);
    sub_1C442F708();
    sub_1C4F00DA8();
    v124 = sub_1C443F33C(&a18);
    v125(v124);
    v126 = sub_1C44B8FE8();
    v127(v126);
    v128 = sub_1C440CD70();
    v129(v128);
    sub_1C440A6C4();
    sub_1C4EFF028();
    v130 = sub_1C4409D0C();
    sub_1C441DFEC(v130, v131);
    v132 = sub_1C445BB20();
    v133(v132);
    v134 = sub_1C444C02C();
    v135(v134);
    sub_1C442023C();
    v188 = v136;
    v189 = v137;
    v138 = sub_1C4F029C8();
    v139 = sub_1C440BC84(&v191);
    v141 = [v139 v140];
    sub_1C441C818();
    swift_unknownObjectRelease();
    if (v104)
    {
      sub_1C4B2ABF0();
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1C4475850();
    }

    sub_1C4441540();
    if (v152)
    {
      if (sub_1C44EC838())
      {

        if (v182)
        {
          v153 = sub_1C44A1F08();
          sub_1C4B275D8(v153, v154, v155, v156, v157, v158, v159, v160, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181);
LABEL_35:
          sub_1C44A1C64();
          sub_1C44886C4();
          v161();

          goto LABEL_17;
        }

        sub_1C4B2A94C();
        v162 = sub_1C4F00968();
        sub_1C4F01CD8();
        v163 = sub_1C44016D0();
        if (os_log_type_enabled(v163, v164))
        {
          sub_1C43FD1A8();
          v165 = swift_slowAlloc();
          sub_1C43FBD24(v165);
          sub_1C440BAE8(&dword_1C43F8000, v166, v167, "Mapping error, missing identifier for nested entity");
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        sub_1C45CF650();
        sub_1C441C114();
        v98 = swift_allocError();
        sub_1C44060DC(v98, v168);
        swift_willThrow();

        (*(v22 + 8))();
LABEL_16:
        v100 = v51[1];
        v188 = *v51;
        v189 = v100;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        MEMORY[0x1C6940010](32, 0xE100000000000000);
        v101 = sub_1C43FD574();
        MEMORY[0x1C6940010](v101);
        sub_1C4B5B968(v98);

        goto LABEL_17;
      }
    }

    else
    {
      sub_1C4420C3C(&v190, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    }

    sub_1C44000C4();
    sub_1C4466D68();
    goto LABEL_35;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4B2A94C();
  v107 = sub_1C4F00968();
  v108 = sub_1C4F01CD8();

  os_log_type_enabled(v107, v108);
  sub_1C440D73C();
  if (v109)
  {
    sub_1C43FECF0();
    v110 = swift_slowAlloc();
    sub_1C43FEC60();
    v111 = swift_slowAlloc();
    *&v190 = v111;
    sub_1C4B2AB78(4.845e-34);
    sub_1C44E76F8();

    *(v110 + 4) = v104;
    sub_1C4B2AB58(&dword_1C43F8000, v112, v113, "Source: failed to encode identifier as UTF8 data: %{private}s");
    sub_1C440962C(v111);
    v114 = sub_1C43FEF7C();
    MEMORY[0x1C6942830](v114);
    v115 = sub_1C4408D20();
    MEMORY[0x1C6942830](v115);
  }

  else
  {
  }

  v190 = *(v176 + 16);
  v192 = *(v176 + 32);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44CD064();
  sub_1C4485A8C();
  v142 = sub_1C4F00968();
  sub_1C4F01CD8();

  sub_1C4B2ABD8(&v190);
  sub_1C43FC2F4();
  sub_1C4420C3C(v143, v144, v145);
  if (sub_1C44020E0())
  {
    sub_1C43FECF0();
    v146 = swift_slowAlloc();
    sub_1C43FEC60();
    v147 = swift_slowAlloc();
    sub_1C4B2AACC(v147);
    sub_1C4473D9C(4.8149e-34);
    *(v146 + 4) = sub_1C441D828(v22, v179, v148);
    sub_1C43FBD74(&dword_1C43F8000, v149, v150, "Mapping error, failed to generate EntityIdentifier for %s");
    sub_1C440962C(&qword_1C4F0FF50);
    v151 = sub_1C4408D20();
    MEMORY[0x1C6942830](v151);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

LABEL_17:
  sub_1C43FE9F0();
}

void sub_1C4B1A874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FBD3C();
  a19 = v25;
  a20 = v26;
  v35 = sub_1C4426DC8(v27, v28, v29, v30, v31, v32, v33, v34);
  v36 = sub_1C43FFAE0(v35, &a15);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v39);
  v40 = sub_1C4F00DC8();
  v41 = sub_1C43FFAE0(v40, &a17);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FD230();
  sub_1C43FD2C8(v45);
  v46 = sub_1C4F01188();
  v47 = sub_1C43FCDF8(v46);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FBCC4();
  v193 = sub_1C44289FC();
  v50 = sub_1C43FCDF8(v193);
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v50);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v53);
  v191 = sub_1C445BA94();
  v54 = sub_1C43FCDF8(v191);
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v54);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v57);
  sub_1C43FD230();
  v58 = *(v23 + 16);
  v59 = *(v23 + 24);
  v197 = v58;
  v198[0] = v59;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v60 = sub_1C4F029C8();
  v61 = sub_1C4B2AC08(v60, sel___swift_objectForKeyedSubscript_);
  sub_1C43FBD30();
  swift_unknownObjectRelease();
  if (v21)
  {
    sub_1C4F02078();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C447F6E8();
  }

  sub_1C448E09C();
  if (!v62)
  {
    sub_1C4420C3C(v196, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_11;
  }

  v60 = sub_1C4B2A2B4();
  if ((sub_1C4462848() & 1) == 0)
  {
LABEL_11:
    sub_1C4475618();
    if (!v64)
    {
      sub_1C4419274();
      swift_once();
    }

    v83 = sub_1C4F00978();
    sub_1C442B738(v83, qword_1EDE2DE10);
    sub_1C443DFBC();
    v194(v23);
    v84 = sub_1C4F00968();
    sub_1C4F01CD8();
    v85 = sub_1C44016D0();
    if (os_log_type_enabled(v85, v86))
    {
      sub_1C43FECF0();
      swift_slowAlloc();
      sub_1C43FC858();
      v87 = swift_slowAlloc();
      sub_1C43FE768(v87);
      sub_1C445CCE4(4.8149e-34);
      v88 = sub_1C4482D0C();
      v89(v88);
      v90 = sub_1C444AD80();
      sub_1C441D828(v90, v59, v91);
      sub_1C4B2AA44();
      *(&xmmword_1EDDFD000 + 4) = v22;
      sub_1C44046B4();
      _os_log_impl(v92, v93, v94, v95, v96, v97);
      sub_1C440962C(v60);
      v98 = sub_1C4408D20();
      MEMORY[0x1C6942830](v98);
      v99 = sub_1C4425FC4();
      MEMORY[0x1C6942830](v99);
    }

    else
    {
      v100 = sub_1C4482D0C();
      v101(v100);
    }

    sub_1C45CF650();
    sub_1C441C114();
    v102 = swift_allocError();
    sub_1C44046C4(v102, v103);
    swift_willThrow();
    goto LABEL_17;
  }

  v63 = *(sub_1C4435C84() + 24);
  sub_1C4475618();
  if (!v64)
  {
    sub_1C4419274();
    swift_once();
  }

  v65 = sub_1C4F00978();
  sub_1C442B738(v65, qword_1EDE2DE10);
  v66 = sub_1C441BC8C();
  v67(v66);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v68 = sub_1C4F00968();
  sub_1C4F01CB8();
  sub_1C4404CE0();

  v69 = sub_1C4B2AAD8();
  if (os_log_type_enabled(v69, v70))
  {
    sub_1C4480408();
    v181 = v24;
    v71 = swift_slowAlloc();
    sub_1C443FD74();
    v72 = swift_slowAlloc();
    sub_1C4460AE0(v72);
    *v71 = 136381187;
    v73 = sub_1C44587A0(v198);
    v76 = sub_1C441D828(v73, v74, v75);
    sub_1C4441790(v76);
    sub_1C4407A84();
    sub_1C44CD238(v77, v78);
    sub_1C4B2A8D4();
    v79 = sub_1C4422B90();
    v80(v79);
    sub_1C4507B68();
    sub_1C44E76F8();

    sub_1C4471D20();
    sub_1C44608A8(&dword_1C43F8000, v81, v82, "Source: generating identifier for: %{private}s : %s : %{BOOL}d");
    sub_1C4410278(v195);
    swift_arrayDestroy();
    v59 = v182;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {

    v105 = sub_1C4422B90();
    v106(v105);
  }

  sub_1C442F964();
  v107 = sub_1C4402CD0();
  MEMORY[0x1C6940010](v107);
  sub_1C4B2A988();
  sub_1C44AB280();
  v108 = sub_1C440F004();
  v109(v108);
  if (v68 >> 60 != 15)
  {
    v195[0] = v58;

    sub_1C442D2CC();
    sub_1C44CD238(v117, v118);
    sub_1C4418550();
    v119 = sub_1C4402CD0();
    sub_1C44344B8(v119, v120);
    v121 = sub_1C4402CD0();
    sub_1C4498FD8(v121, v122);
    sub_1C444C328();
    v123 = sub_1C447E338();
    v124(v123);
    v125 = sub_1C44163A0();
    v126(v125);
    v127 = sub_1C444FF8C();
    v128(v127);
    sub_1C44A1838();
    v129 = sub_1C4402CD0();
    sub_1C441DFEC(v129, v130);
    v131 = sub_1C445AB04();
    v132(v131);
    v133 = sub_1C442ECE4();
    v134(v133);
    sub_1C442023C();
    v197 = v135;
    v198[0] = v136;
    v137 = sub_1C4F029C8();
    v138 = sub_1C44D4550(v137, sel___swift_objectForKeyedSubscript_);
    sub_1C441C818();
    swift_unknownObjectRelease();
    v24 = 0;
    if (v20)
    {
      sub_1C4F02078();
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1C447F6E8();
    }

    sub_1C448E09C();
    v58 = v195[0];
    if (v159)
    {
      if (sub_1C4475C50())
      {

        if (v190)
        {
          v160 = sub_1C440608C();
          sub_1C4B217B4(v160, v161, v162, v163, v164, v165, v166, v167, v179, v180, v181, v182, v183, v184, v185, v186, 0x1EDDFD000, v187, v188, v189);
LABEL_35:
          v168 = sub_1C44024E8();
          v169(v168);

          goto LABEL_18;
        }

        v170 = sub_1C442A62C();
        sub_1C4F01CD8();
        v171 = sub_1C44016D0();
        if (os_log_type_enabled(v171, v172))
        {
          sub_1C43FD1A8();
          v173 = swift_slowAlloc();
          sub_1C43FBD24(v173);
          sub_1C440BAE8(&dword_1C43F8000, v174, v175, "Mapping error, missing identifier for nested entity");
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        sub_1C45CF650();
        sub_1C441C114();
        v102 = swift_allocError();
        sub_1C44060DC(v102, v176);
        swift_willThrow();

        v177 = sub_1C44024E8();
        v178(v177);
LABEL_17:
        v104 = v24[1];
        *&v196[0] = *v24;
        *(&v196[0] + 1) = v104;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4482EB0();
        MEMORY[0x1C6940010](v58, v59);
        sub_1C44806E0();

        goto LABEL_18;
      }
    }

    else
    {
      sub_1C4420C3C(v196, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    }

    sub_1C44603D4();
    goto LABEL_35;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v110 = sub_1C442A62C();
  v111 = sub_1C4F01CD8();

  if (os_log_type_enabled(v110, v111))
  {
    sub_1C43FECF0();
    v112 = swift_slowAlloc();
    sub_1C43FEC60();
    v113 = swift_slowAlloc();
    sub_1C43FE768(v113);
    sub_1C447F860(4.845e-34);
    sub_1C4B2AC20();
    *(v112 + 4) = v192;
    sub_1C4508944(&dword_1C43F8000, v114, v115, "Source: failed to encode identifier as UTF8 data: %{private}s");
    sub_1C440962C(v68);
    v116 = sub_1C4408D20();
    MEMORY[0x1C6942830](v116);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {
  }

  v139 = sub_1C4458550();
  v140(v139);
  v141 = sub_1C4F00968();
  sub_1C4F01CD8();
  v142 = sub_1C44016D0();
  if (os_log_type_enabled(v142, v143))
  {
    sub_1C43FECF0();
    swift_slowAlloc();
    sub_1C43FC858();
    v144 = swift_slowAlloc();
    sub_1C43FE768(v144);
    sub_1C445CCE4(4.8149e-34);
    v145 = sub_1C44B6784();
    v146(v145);
    v147 = sub_1C444AD80();
    sub_1C441D828(v147, v59, v148);
    sub_1C4B2AA44();
    *(v196 + 4) = v192;
    sub_1C44046B4();
    _os_log_impl(v149, v150, v151, v152, v153, v154);
    sub_1C440962C(v68);
    v155 = sub_1C4408D20();
    MEMORY[0x1C6942830](v155);
    v156 = sub_1C4425FC4();
    MEMORY[0x1C6942830](v156);
  }

  else
  {
    v157 = sub_1C44B6784();
    v158(v157);
  }

LABEL_18:
  sub_1C44085C4();
  sub_1C43FE9F0();
}

void sub_1C4B1B204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unint64_t a22, uint64_t a23)
{
  sub_1C43FBD3C();
  a19 = v24;
  a20 = v25;
  sub_1C4418BAC(v26, v27, v28, v29, v30, v31, v32, v33);
  v35 = v34;
  v37 = v36;
  v39 = a21;
  v38 = a22;
  v207 = sub_1C4F00DD8();
  v40 = sub_1C43FCDF8(v207);
  v206 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v44);
  v45 = sub_1C4F00DC8();
  v46 = sub_1C43FCDF8(v45);
  v208 = v47;
  v209 = v46;
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v50);
  sub_1C43FD230();
  sub_1C43FD2C8(v51);
  v52 = sub_1C4F01188();
  v53 = sub_1C43FCDF8(v52);
  v212 = v54;
  v213 = v53;
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v53);
  sub_1C43FBCC4();
  v59 = v58 - v57;
  v214 = sub_1C4EFD548();
  v60 = sub_1C43FCDF8(v214);
  v62 = v61;
  v64 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v60);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v65);
  v67 = v191 - v66;
  v68 = sub_1C4EFF0C8();
  v69 = sub_1C43FCDF8(v68);
  v210 = v70;
  v211 = v69;
  v72 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v69);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v73);
  v75 = v191 - v74;
  v219 = v39;
  v220 = v38;
  v216 = v38;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v76 = sub_1C4F029C8();
  v77 = sub_1C4B2AC08(v76, sel___swift_objectForKeyedSubscript_);
  sub_1C43FBD30();
  swift_unknownObjectRelease();
  if (v23)
  {
    sub_1C4F02078();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C4475850();
  }

  v78 = a23;
  sub_1C4441540();
  if (!v79)
  {
    sub_1C4420C3C(&v221, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_11;
  }

  v80 = sub_1C4B2A2B4();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    sub_1C44F19E8();
    if (!v82)
    {
      sub_1C4419274();
      swift_once();
    }

    v106 = sub_1C4F00978();
    sub_1C442B738(v106, qword_1EDE2DE10);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v107 = sub_1C4F00968();
    v108 = sub_1C4F01CD8();

    if (os_log_type_enabled(v107, v108))
    {
      sub_1C43FECF0();
      v109 = swift_slowAlloc();
      sub_1C43FEC60();
      v110 = swift_slowAlloc();
      v221 = v110;
      *v109 = 136315138;
      *(v109 + 4) = sub_1C441D828(v39, v216, &v221);
      sub_1C4485BC0();
      _os_log_impl(v111, v112, v113, v114, v115, 0xCu);
      sub_1C440962C(v110);
      v116 = sub_1C4408D20();
      MEMORY[0x1C6942830](v116);
      v117 = sub_1C445E9A8();
      MEMORY[0x1C6942830](v117);
    }

    sub_1C45CF650();
    sub_1C441C114();
    v118 = swift_allocError();
    sub_1C44046C4(v118, v119);
    swift_willThrow();
    goto LABEL_16;
  }

  v191[2] = v80;
  v197 = v78;
  v200 = v39;
  v199 = v217;
  v81 = *(type metadata accessor for Source() + 24);
  sub_1C44F19E8();
  if (!v82)
  {
    sub_1C4419274();
    swift_once();
  }

  v198 = v75;
  v83 = sub_1C4F00978();
  v84 = sub_1C442B738(v83, qword_1EDE2DE10);
  v85 = *(v62 + 16);
  v194 = v81;
  v86 = v214;
  v193 = v62 + 16;
  v192 = v85;
  v85(v67, v37 + v81, v214);
  v87 = v215;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v196 = v84;
  v88 = sub_1C4F00968();
  v89 = sub_1C4F01CB8();

  if (os_log_type_enabled(v88, v89))
  {
    sub_1C4480408();
    v90 = swift_slowAlloc();
    v195 = v37;
    v91 = v90;
    sub_1C443FD74();
    v92 = swift_slowAlloc();
    sub_1C44753A0(v92);
    *v91 = 136381187;
    v93 = sub_1C442BB94();
    v96 = sub_1C441D828(v93, v94, v95);
    sub_1C4441790(v96);
    sub_1C4407A84();
    sub_1C44CD238(v97, v98);
    v99 = sub_1C4F02858();
    v100 = v86;
    v101 = v87;
    v103 = v102;
    (*(v62 + 8))(v67, v100);
    v104 = sub_1C441D828(v99, v103, &v221);

    *(v91 + 14) = v104;
    *(v91 + 22) = 1024;
    *(v91 + 24) = 0;
    _os_log_impl(&dword_1C43F8000, v88, v89, "Source: generating identifier for: %{private}s : %s : %{BOOL}d", v91, 0x1Cu);
    sub_1C4410278(&v218);
    swift_arrayDestroy();
    v105 = sub_1C445E9A8();
    MEMORY[0x1C6942830](v105);
    v37 = v195;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {

    (*(v62 + 8))(v67, v86);
    v101 = v87;
  }

  v121 = *v37;
  v122 = v37[1];
  v195 = v35;
  v221 = v35;
  v222 = v101;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v123 = sub_1C4402CD0();
  MEMORY[0x1C6940010](v123);
  v124 = v37;
  v125 = v221;
  v126 = v222;
  sub_1C4F01178();
  sub_1C4F01148();
  v128 = v127;
  (*(v212 + 8))(v59, v213);
  if (v128 >> 60 != 15)
  {

    sub_1C442D2CC();
    sub_1C44CD238(v135, v136);
    v137 = v124;
    sub_1C4401E94();
    v138 = sub_1C44000C4();
    sub_1C44344B8(v138, v139);
    v140 = sub_1C44000C4();
    sub_1C4498FD8(v140, v141);
    v142 = sub_1C44000C4();
    sub_1C441DFEC(v142, v143);
    sub_1C442F708();
    sub_1C4F00DA8();
    v144 = sub_1C443F33C(&a18);
    v145(v144);
    v192(v205, v124 + v194, v214);
    v146 = sub_1C440CD70();
    v147(v146);
    v148 = v204;
    sub_1C440A6C4();
    sub_1C4EFF028();
    v149 = sub_1C44000C4();
    sub_1C441DFEC(v149, v150);
    v151 = sub_1C445BB20();
    v152(v151);
    v153 = v210;
    v154 = v211;
    (*(v210 + 32))(v198, v148, v211);
    sub_1C442023C();
    v219 = v155;
    v220 = v156;
    v157 = sub_1C4F029C8();
    v158 = sub_1C440BC84(&v223);
    v160 = [v158 v159];
    swift_unknownObjectRelease();
    v37 = v137;
    if (v160)
    {
      sub_1C4F02078();
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1C4475850();
    }

    v39 = v200;
    v173 = v215;
    sub_1C4B2A94C();
    v174 = v197;
    sub_1C4441540();
    if (v175)
    {
      if (swift_dynamicCast())
      {

        if (v201)
        {
          v176 = v154;
          v190 = v216;
          v189 = v202;
          sub_1C440D73C();
          sub_1C4B2294C(v177, v178, v179, v154, v160, v173, v37, v203, v189, v39, v190, v174);
LABEL_33:
          (*(v153 + 8))(v154, v176);

          goto LABEL_17;
        }

        v180 = sub_1C4F00968();
        v181 = sub_1C4F01CD8();
        if (os_log_type_enabled(v180, v181))
        {
          sub_1C43FD1A8();
          *swift_slowAlloc() = 0;
          sub_1C4485BC0();
          _os_log_impl(v182, v183, v184, v185, v186, 2u);
          v187 = sub_1C445E9A8();
          MEMORY[0x1C6942830](v187);
        }

        sub_1C45CF650();
        sub_1C441C114();
        v118 = swift_allocError();
        sub_1C44060DC(v118, v188);
        swift_willThrow();

        (*(v153 + 8))(v198, v154);
LABEL_16:
        v120 = v37[1];
        v221 = *v37;
        v222 = v120;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        MEMORY[0x1C6940010](32, 0xE100000000000000);
        MEMORY[0x1C6940010](v39, v216);
        sub_1C4B5B968(v118);

        goto LABEL_17;
      }

      v176 = v154;
    }

    else
    {
      v176 = v154;
      sub_1C4420C3C(&v221, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    }

    sub_1C440D73C();
    sub_1C4466D68();
    goto LABEL_33;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v129 = sub_1C4F00968();
  v130 = sub_1C4F01CD8();

  if (os_log_type_enabled(v129, v130))
  {
    sub_1C43FECF0();
    v131 = swift_slowAlloc();
    sub_1C43FEC60();
    v132 = swift_slowAlloc();
    v221 = v132;
    *v131 = 136380675;
    sub_1C441D828(v125, v126, &v221);
    sub_1C4B2AC20();
    *(v131 + 4) = v101;
    _os_log_impl(&dword_1C43F8000, v129, v130, "Source: failed to encode identifier as UTF8 data: %{private}s", v131, 0xCu);
    sub_1C440962C(v132);
    v133 = sub_1C4408D20();
    MEMORY[0x1C6942830](v133);
    v134 = sub_1C445E9A8();
    MEMORY[0x1C6942830](v134);
  }

  else
  {
  }

  v161 = v200;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v162 = sub_1C4F00968();
  v163 = sub_1C4F01CD8();

  if (os_log_type_enabled(v162, v163))
  {
    sub_1C43FECF0();
    v164 = swift_slowAlloc();
    sub_1C43FEC60();
    v165 = swift_slowAlloc();
    v221 = v165;
    *v164 = 136315138;
    *(v164 + 4) = sub_1C441D828(v161, v216, &v221);
    sub_1C4485BC0();
    _os_log_impl(v166, v167, v168, v169, v170, 0xCu);
    sub_1C440962C(v165);
    v171 = sub_1C4408D20();
    MEMORY[0x1C6942830](v171);
    v172 = sub_1C445E9A8();
    MEMORY[0x1C6942830](v172);
  }

LABEL_17:
  sub_1C44085C4();
  sub_1C43FE9F0();
}

void sub_1C4B1BEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FBD3C();
  a19 = v27;
  a20 = v28;
  v37 = sub_1C4426DC8(v29, v30, v31, v32, v33, v34, v35, v36);
  v38 = sub_1C43FFAE0(v37, &a15);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v41);
  v42 = sub_1C4F00DC8();
  v43 = sub_1C43FFAE0(v42, &a17);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FD230();
  sub_1C43FD2C8(v47);
  v48 = sub_1C4F01188();
  v49 = sub_1C43FCDF8(v48);
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v49);
  sub_1C43FBCC4();
  v194 = sub_1C44289FC();
  v52 = sub_1C43FCDF8(v194);
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v52);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v55);
  v192 = sub_1C445BA94();
  v56 = sub_1C43FCDF8(v192);
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v56);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v59);
  sub_1C43FD230();
  sub_1C447E23C(v60);
  v61 = sub_1C4F029C8();
  v62 = sub_1C4B2AC08(v61, sel___swift_objectForKeyedSubscript_);
  sub_1C43FBD30();
  swift_unknownObjectRelease();
  if (v21)
  {
    sub_1C4F02078();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C447F6E8();
  }

  sub_1C448E09C();
  if (!v63)
  {
    sub_1C4420C3C(v197, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_11;
  }

  v61 = sub_1C4B2A2B4();
  if ((sub_1C4462848() & 1) == 0)
  {
LABEL_11:
    sub_1C4475618();
    if (!v65)
    {
      sub_1C4419274();
      swift_once();
    }

    v84 = sub_1C4F00978();
    sub_1C442B738(v84, qword_1EDE2DE10);
    sub_1C443DFBC();
    v195(v24);
    v85 = sub_1C4F00968();
    sub_1C4F01CD8();
    v86 = sub_1C44016D0();
    if (os_log_type_enabled(v86, v87))
    {
      sub_1C43FECF0();
      swift_slowAlloc();
      sub_1C43FC858();
      v88 = swift_slowAlloc();
      sub_1C43FE768(v88);
      sub_1C445CCE4(4.8149e-34);
      v89 = sub_1C4482D0C();
      v90(v89);
      v91 = sub_1C444AD80();
      sub_1C441D828(v91, v26, v92);
      sub_1C4B2AA44();
      *(&xmmword_1EDDFD000 + 4) = v22;
      sub_1C44046B4();
      _os_log_impl(v93, v94, v95, v96, v97, v98);
      sub_1C440962C(v61);
      v99 = sub_1C4408D20();
      MEMORY[0x1C6942830](v99);
      v100 = sub_1C4425FC4();
      MEMORY[0x1C6942830](v100);
    }

    else
    {
      v101 = sub_1C4482D0C();
      v102(v101);
    }

    sub_1C45CF650();
    sub_1C441C114();
    v103 = swift_allocError();
    sub_1C44046C4(v103, v104);
    swift_willThrow();
    goto LABEL_17;
  }

  v64 = *(sub_1C4435C84() + 24);
  sub_1C4475618();
  if (!v65)
  {
    sub_1C4419274();
    swift_once();
  }

  v66 = sub_1C4F00978();
  sub_1C442B738(v66, qword_1EDE2DE10);
  v67 = sub_1C441BC8C();
  v68(v67);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v69 = sub_1C4F00968();
  sub_1C4F01CB8();
  sub_1C4404CE0();

  v70 = sub_1C4B2AAD8();
  if (os_log_type_enabled(v70, v71))
  {
    sub_1C4480408();
    v182 = v25;
    v72 = swift_slowAlloc();
    sub_1C443FD74();
    v73 = swift_slowAlloc();
    sub_1C4460AE0(v73);
    *v72 = 136381187;
    v74 = sub_1C44587A0(v199);
    v77 = sub_1C441D828(v74, v75, v76);
    sub_1C4441790(v77);
    sub_1C4407A84();
    sub_1C44CD238(v78, v79);
    sub_1C4B2A8D4();
    v80 = sub_1C4422B90();
    v81(v80);
    sub_1C4507B68();
    sub_1C44E76F8();

    sub_1C4471D20();
    sub_1C44608A8(&dword_1C43F8000, v82, v83, "Source: generating identifier for: %{private}s : %s : %{BOOL}d");
    sub_1C4410278(v196);
    swift_arrayDestroy();
    v26 = v183;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {

    v106 = sub_1C4422B90();
    v107(v106);
  }

  sub_1C442F964();
  v108 = sub_1C4402CD0();
  MEMORY[0x1C6940010](v108);
  sub_1C4B2A988();
  sub_1C44AB280();
  v109 = sub_1C440F004();
  v110(v109);
  if (v69 >> 60 != 15)
  {
    v196[0] = v23;

    sub_1C442D2CC();
    sub_1C44CD238(v118, v119);
    sub_1C4418550();
    v120 = sub_1C4402CD0();
    sub_1C44344B8(v120, v121);
    v122 = sub_1C4402CD0();
    sub_1C4498FD8(v122, v123);
    sub_1C444C328();
    v124 = sub_1C447E338();
    v125(v124);
    v126 = sub_1C44163A0();
    v127(v126);
    v128 = sub_1C444FF8C();
    v129(v128);
    sub_1C44A1838();
    v130 = sub_1C4402CD0();
    sub_1C441DFEC(v130, v131);
    v132 = sub_1C445AB04();
    v133(v132);
    v134 = sub_1C442ECE4();
    v135(v134);
    sub_1C442023C();
    v198 = v136;
    v199[0] = v137;
    v138 = sub_1C4F029C8();
    v139 = sub_1C44D4550(v138, sel___swift_objectForKeyedSubscript_);
    sub_1C441C818();
    swift_unknownObjectRelease();
    v25 = 0;
    if (v20)
    {
      sub_1C4F02078();
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1C447F6E8();
    }

    sub_1C448E09C();
    v23 = v196[0];
    if (v160)
    {
      if (sub_1C4475C50())
      {

        if (v191)
        {
          v161 = sub_1C440608C();
          sub_1C4B24698(v161, v162, v163, v164, v165, v166, v167, v168, v180, v181, v182, v183, v184, v185, v186, v187, 0x1EDDFD000, v188, v189, v190);
LABEL_35:
          v169 = sub_1C44024E8();
          v170(v169);

          goto LABEL_18;
        }

        v171 = sub_1C442A62C();
        sub_1C4F01CD8();
        v172 = sub_1C44016D0();
        if (os_log_type_enabled(v172, v173))
        {
          sub_1C43FD1A8();
          v174 = swift_slowAlloc();
          sub_1C43FBD24(v174);
          sub_1C440BAE8(&dword_1C43F8000, v175, v176, "Mapping error, missing identifier for nested entity");
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        sub_1C45CF650();
        sub_1C441C114();
        v103 = swift_allocError();
        sub_1C44060DC(v103, v177);
        swift_willThrow();

        v178 = sub_1C44024E8();
        v179(v178);
LABEL_17:
        v105 = v25[1];
        *&v197[0] = *v25;
        *(&v197[0] + 1) = v105;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4482EB0();
        MEMORY[0x1C6940010](v23, v26);
        sub_1C44806E0();

        goto LABEL_18;
      }
    }

    else
    {
      sub_1C4420C3C(v197, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    }

    sub_1C44603D4();
    goto LABEL_35;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v111 = sub_1C442A62C();
  v112 = sub_1C4F01CD8();

  if (os_log_type_enabled(v111, v112))
  {
    sub_1C43FECF0();
    v113 = swift_slowAlloc();
    sub_1C43FEC60();
    v114 = swift_slowAlloc();
    sub_1C43FE768(v114);
    sub_1C447F860(4.845e-34);
    sub_1C4B2AC20();
    *(v113 + 4) = v193;
    sub_1C4508944(&dword_1C43F8000, v115, v116, "Source: failed to encode identifier as UTF8 data: %{private}s");
    sub_1C440962C(v69);
    v117 = sub_1C4408D20();
    MEMORY[0x1C6942830](v117);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {
  }

  v140 = sub_1C4458550();
  v141(v140);
  v142 = sub_1C4F00968();
  sub_1C4F01CD8();
  v143 = sub_1C44016D0();
  if (os_log_type_enabled(v143, v144))
  {
    sub_1C43FECF0();
    swift_slowAlloc();
    sub_1C43FC858();
    v145 = swift_slowAlloc();
    sub_1C43FE768(v145);
    sub_1C445CCE4(4.8149e-34);
    v146 = sub_1C44B6784();
    v147(v146);
    v148 = sub_1C444AD80();
    sub_1C441D828(v148, v26, v149);
    sub_1C4B2AA44();
    *(v197 + 4) = v193;
    sub_1C44046B4();
    _os_log_impl(v150, v151, v152, v153, v154, v155);
    sub_1C440962C(v69);
    v156 = sub_1C4408D20();
    MEMORY[0x1C6942830](v156);
    v157 = sub_1C4425FC4();
    MEMORY[0x1C6942830](v157);
  }

  else
  {
    v158 = sub_1C44B6784();
    v159(v158);
  }

LABEL_18:
  sub_1C44085C4();
  sub_1C43FE9F0();
}

uint64_t sub_1C4B1C878(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, __int128 a9, uint64_t a10)
{
  v123 = a8;
  v122 = a7;
  v121 = a6;
  v124 = a5;
  v139 = a3;
  v14 = *(&a9 + 1);
  v13 = a9;
  v131 = sub_1C4F00DD8();
  v130 = *(v131 - 8);
  v15 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v131);
  v128 = &v108[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_1C4F00DC8();
  v132 = *(v17 - 8);
  v133 = v17;
  v18 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v127 = &v108[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v129 = &v108[-v21];
  v22 = sub_1C4F01188();
  v137 = *(v22 - 8);
  v138 = v22;
  v23 = *(v137 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v108[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v140 = sub_1C4EFD548();
  v26 = *(v140 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v140);
  v126 = &v108[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v108[-v30];
  v32 = sub_1C4EFF0C8();
  v134 = *(v32 - 8);
  v135 = v32;
  v33 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v125 = &v108[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v35);
  v136 = &v108[-v36];
  v142 = a9;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v37 = [a4 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v37)
  {
    sub_1C4F02078();
    swift_unknownObjectRelease();
  }

  else
  {
    v142 = 0u;
    v143 = 0u;
  }

  v144 = v142;
  v145 = v143;
  if (!*(&v143 + 1))
  {
    sub_1C4420C3C(&v144, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_11;
  }

  v38 = sub_1C4B2A2B4();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v56 = sub_1C4F00978();
    sub_1C442B738(v56, qword_1EDE2DE10);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v57 = sub_1C4F00968();
    v58 = sub_1C4F01CD8();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *&v144 = v60;
      *v59 = 136315138;

      v61 = a1;
      v62 = sub_1C441D828(a9, *(&a9 + 1), &v144);

      *(v59 + 4) = v62;
      a1 = v61;
      _os_log_impl(&dword_1C43F8000, v57, v58, "Mapping error, missing submap for %s", v59, 0xCu);
      sub_1C440962C(v60);
      MEMORY[0x1C6942830](v60, -1, -1);
      MEMORY[0x1C6942830](v59, -1, -1);
    }

    else
    {
    }

    sub_1C45CF650();
    v63 = swift_allocError();
    *v64 = 2;
    swift_willThrow();
    goto LABEL_17;
  }

  v115 = v38;
  v120 = a2;
  v117 = a10;
  v118 = v141;
  v39 = *(type metadata accessor for Source() + 24);
  if (qword_1EDDFD028 != -1)
  {
    swift_once();
  }

  v40 = sub_1C4F00978();
  v41 = sub_1C442B738(v40, qword_1EDE2DE10);
  v42 = *(v26 + 16);
  v114 = v39;
  v43 = v140;
  v113 = v26 + 16;
  v112 = v42;
  v42(v31, a1 + v39, v140);
  v44 = v139;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v116 = v41;
  v45 = sub_1C4F00968();
  v46 = sub_1C4F01CB8();

  v47 = os_log_type_enabled(v45, v46);
  v119 = a9;
  if (v47)
  {
    v48 = swift_slowAlloc();
    v111 = a1;
    v49 = v48;
    v110 = swift_slowAlloc();
    *&v144 = v110;
    *v49 = 136381187;
    *(v49 + 4) = sub_1C441D828(v120, v44, &v144);
    *(v49 + 12) = 2080;
    sub_1C44CD238(&qword_1EDDFA220, MEMORY[0x1E69A92C8]);
    v109 = v46;
    v50 = sub_1C4F02858();
    v52 = v51;
    (*(v26 + 8))(v31, v43);
    v53 = sub_1C441D828(v50, v52, &v144);
    v14 = *(&a9 + 1);

    *(v49 + 14) = v53;
    *(v49 + 22) = 1024;
    *(v49 + 24) = 0;
    _os_log_impl(&dword_1C43F8000, v45, v109, "Source: generating identifier for: %{private}s : %s : %{BOOL}d", v49, 0x1Cu);
    v54 = v110;
    swift_arrayDestroy();
    MEMORY[0x1C6942830](v54, -1, -1);
    v55 = v49;
    a1 = v111;
    MEMORY[0x1C6942830](v55, -1, -1);
  }

  else
  {

    (*(v26 + 8))(v31, v43);
  }

  v68 = *a1;
  v69 = a1[1];
  *&v144 = v120;
  *(&v144 + 1) = v44;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v68, v69);
  v70 = a1;
  v71 = v144;
  sub_1C4F01178();
  v72 = sub_1C4F01148();
  v74 = v73;
  (*(v137 + 8))(v25, v138);
  if (v74 >> 60 == 15)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v75 = sub_1C4F00968();
    v76 = sub_1C4F01CD8();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      *&v144 = v78;
      *v77 = 136380675;
      v79 = sub_1C441D828(v71, *(&v71 + 1), &v144);

      *(v77 + 4) = v79;
      _os_log_impl(&dword_1C43F8000, v75, v76, "Source: failed to encode identifier as UTF8 data: %{private}s", v77, 0xCu);
      sub_1C440962C(v78);
      MEMORY[0x1C6942830](v78, -1, -1);
      MEMORY[0x1C6942830](v77, -1, -1);
    }

    else
    {
    }

    v93 = v119;
    v94 = v118;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v95 = sub_1C4F00968();
    v96 = sub_1C4F01CD8();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      *&v144 = v98;
      *v97 = 136315138;

      v99 = sub_1C441D828(v93, v14, &v144);

      *(v97 + 4) = v99;
      _os_log_impl(&dword_1C43F8000, v95, v96, "Mapping error, failed to generate EntityIdentifier for %s", v97, 0xCu);
      sub_1C440962C(v98);
      MEMORY[0x1C6942830](v98, -1, -1);
      MEMORY[0x1C6942830](v97, -1, -1);
    }

    else
    {
    }

    return MEMORY[0x1E69E7CC0];
  }

  sub_1C44CD238(&qword_1EDDFEAD0, MEMORY[0x1E6966620]);
  v80 = v128;
  v81 = v131;
  sub_1C4F00DB8();
  sub_1C44344B8(v72, v74);
  sub_1C4498FD8(v72, v74);
  v138 = 0;
  sub_1C441DFEC(v72, v74);
  v82 = v129;
  sub_1C4F00DA8();
  (*(v130 + 8))(v80, v81);
  v83 = v70;
  v112(v126, v70 + v114, v140);
  v85 = v132;
  v84 = v133;
  (*(v132 + 16))(v127, v82, v133);
  v86 = v125;
  sub_1C4EFF028();
  sub_1C441DFEC(v72, v74);
  (*(v85 + 8))(v82, v84);
  v88 = v134;
  v87 = v135;
  v89 = v136;
  (*(v134 + 32))(v136, v86, v135);
  *&v142 = 0x657473654E444D5FLL;
  *(&v142 + 1) = 0xEF797469746E4564;
  v90 = sub_1C4F029C8();
  v91 = v118;
  v92 = [v118 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  a1 = v83;
  if (v92)
  {
    sub_1C4F02078();
    swift_unknownObjectRelease();
  }

  else
  {
    v142 = 0u;
    v143 = 0u;
  }

  v13 = v119;
  v100 = v117;
  v144 = v142;
  v145 = v143;
  if (!*(&v143 + 1))
  {
    sub_1C4420C3C(&v144, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_37;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_37:
    v101 = v138;
    sub_1C4B1E304();
    goto LABEL_38;
  }

  if (v122)
  {
    v101 = v138;
    sub_1C4B25830(v121, v122, v91, v89, v120, v139, a1, v124, v123, v13, v14, v100);
LABEL_38:
    v66 = v102;
    v103 = v89;
    if (!v101)
    {
      (*(v88 + 8))(v89, v87);

      return v66;
    }

    v63 = v101;
    (*(v88 + 8))(v103, v87);

    goto LABEL_17;
  }

  v104 = sub_1C4F00968();
  v105 = sub_1C4F01CD8();
  if (os_log_type_enabled(v104, v105))
  {
    v106 = swift_slowAlloc();
    *v106 = 0;
    _os_log_impl(&dword_1C43F8000, v104, v105, "Mapping error, missing identifier for nested entity", v106, 2u);
    MEMORY[0x1C6942830](v106, -1, -1);
  }

  sub_1C45CF650();
  v63 = swift_allocError();
  *v107 = 1;
  swift_willThrow();

  (*(v88 + 8))(v136, v87);
LABEL_17:
  v65 = a1[1];
  *&v144 = *a1;
  *(&v144 + 1) = v65;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](32, 0xE100000000000000);
  MEMORY[0x1C6940010](v13, v14);
  sub_1C4B5B968(v63);

  return MEMORY[0x1E69E7CC0];
}

uint64_t SocialMediaProfile.mapLocation.getter()
{
  v1 = *v0;
  v2 = v0[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C43FBC98();
}

uint64_t SocialMediaProfile.mapLocation.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_1C4B1D8E0()
{
  if (qword_1EC0B70E8 != -1)
  {
    swift_once();
  }

  qword_1EC0C34E8 = qword_1EC0C37A8;
  *&qword_1EC0C34F0 = *&qword_1EC0C37B0;
  qword_1EC0C3500 = qword_1EC0C37C0;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t *sub_1C4B1D960()
{
  if (qword_1EC0B70A8 != -1)
  {
    sub_1C4405300();
  }

  return &qword_1EC0C34E8;
}

uint64_t static SocialMediaProfile.type.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC0B70A8 != -1)
  {
    sub_1C4405300();
  }

  swift_beginAccess();
  v2 = qword_1EC0C3500;
  *a1 = qword_1EC0C34E8;
  *(a1 + 8) = *&qword_1EC0C34F0;
  *(a1 + 24) = v2;
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t static SocialMediaProfile.type.setter(uint64_t a1)
{
  v1 = *a1;
  v4 = *(a1 + 8);
  v2 = *(a1 + 24);
  if (qword_1EC0B70A8 != -1)
  {
    sub_1C4405300();
  }

  swift_beginAccess();
  qword_1EC0C34E8 = v1;
  *&qword_1EC0C34F0 = v4;
  qword_1EC0C3500 = v2;
}

uint64_t (*static SocialMediaProfile.type.modify())()
{
  if (qword_1EC0B70A8 != -1)
  {
    sub_1C4405300();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1C4B1DB2C@<X0>(uint64_t a1@<X8>)
{
  sub_1C4B1D960();
  swift_beginAccess();
  v2 = qword_1EC0C3500;
  *a1 = qword_1EC0C34E8;
  *(a1 + 8) = *&qword_1EC0C34F0;
  *(a1 + 24) = v2;
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4B1DB94(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 24);
  v4 = *(a1 + 8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4B1D960();
  swift_beginAccess();
  qword_1EC0C34E8 = v1;
  *&qword_1EC0C34F0 = v4;
  qword_1EC0C3500 = v2;
}

IntelligencePlatformCore::SocialMediaProfile __swiftcall SocialMediaProfile.init(mapLocation:username:displayName:service:userIdentifier:urlString:)(Swift::String mapLocation, Swift::String username, Swift::String_optional displayName, Swift::String service, Swift::String userIdentifier, Swift::String_optional urlString)
{
  object = service._object;
  countAndFlagsBits = service._countAndFlagsBits;
  v9 = displayName.value._object;
  v10 = displayName.value._countAndFlagsBits;
  v11 = username._object;
  v12 = username._countAndFlagsBits;
  v13 = v6;
  sub_1C456902C(&qword_1EC0B8708, &qword_1C4F0D960);
  v14 = swift_allocObject();
  v17 = v14;
  *(v14 + 16) = xmmword_1C4F0C890;
  *(v14 + 32) = 0x656D616E72657375;
  *(v14 + 40) = 0xE800000000000000;
  *(v14 + 48) = v12;
  *(v14 + 56) = v11;
  *(v14 + 72) = 0;
  *(v14 + 80) = 0;
  *(v14 + 64) = 0;
  *(v14 + 88) = 1;
  *(v14 + 96) = 0x65636976726573;
  *(v14 + 104) = 0xE700000000000000;
  *(v14 + 112) = countAndFlagsBits;
  *(v14 + 120) = object;
  *(v14 + 136) = 0;
  *(v14 + 144) = 0;
  *(v14 + 128) = 0;
  *(v14 + 152) = 1;
  strcpy((v14 + 160), "userIdentifier");
  *(v14 + 175) = -18;
  *(v14 + 176) = userIdentifier;
  *(v14 + 192) = 0;
  *(v14 + 200) = 0;
  *(v14 + 208) = 0;
  *(v14 + 216) = 1;
  if (v9)
  {
    v18 = 4;
    sub_1C458A900();
    v17 = v14;
    *(v14 + 16) = 4;
    *(v14 + 224) = 0x4E79616C70736964;
    *(v14 + 232) = 0xEB00000000656D61;
    *(v14 + 240) = v10;
    *(v14 + 248) = v9;
    *(v14 + 264) = 0;
    *(v14 + 272) = 0;
    *(v14 + 256) = 0;
    *(v14 + 280) = 1;
    if (!urlString.value._object)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v18 = 3;
    if (!urlString.value._object)
    {
      goto LABEL_8;
    }
  }

  if (v18 >= *(v17 + 24) >> 1)
  {
    sub_1C458A900();
    v17 = v14;
  }

  *(v17 + 16) = v18 + 1;
  v19 = v17 + (v18 << 6);
  *(v19 + 32) = 0x6E697274536C7275;
  *(v19 + 40) = 0xE900000000000067;
  *(v19 + 48) = urlString;
  *(v19 + 72) = 0;
  *(v19 + 80) = 0;
  *(v19 + 64) = 0;
  *(v19 + 88) = 1;
LABEL_8:
  *v13 = mapLocation;
  v13[1]._countAndFlagsBits = v17;
  result.basicProperties._rawValue = v16;
  result.mapLocation._object = v15;
  result.mapLocation._countAndFlagsBits = v14;
  return result;
}

uint64_t sub_1C4B1DE58(uint64_t a1)
{
  v2 = sub_1C4B29EE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4B1DE94(uint64_t a1)
{
  v2 = sub_1C4B29EE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SocialMediaProfile.encode(to:)()
{
  sub_1C43FE96C();
  v3 = v2;
  v4 = sub_1C456902C(&qword_1EC0C3508, &unk_1C4F51818);
  sub_1C43FCDF8(v4);
  v16 = v5;
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  v11 = *v0;
  v12 = v0[1];
  v15 = v0[2];
  v13 = v3[4];
  sub_1C4409678(v3, v3[3]);
  sub_1C4B29EE4();
  sub_1C4F02BF8();
  sub_1C4F02798();
  if (!v1)
  {
    v17 = v15;
    sub_1C456902C(&qword_1EC0B8720, &qword_1C4F0D970);
    sub_1C458A9D8(&qword_1EC0B8728, sub_1C458A984);
    sub_1C4F027E8();
  }

  (*(v16 + 8))(v10, v4);
  sub_1C43FBC80();
}

void SocialMediaProfile.init(from:)()
{
  sub_1C43FE96C();
  v2 = v1;
  v4 = v3;
  v5 = sub_1C456902C(&qword_1EC0C3518, &qword_1C4F51828);
  sub_1C43FCDF8(v5);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v9 = v2[4];
  sub_1C4409678(v2, v2[3]);
  sub_1C4B29EE4();
  sub_1C4F02BC8();
  if (v0)
  {
    sub_1C440962C(v2);
  }

  else
  {
    v10 = sub_1C4F02678();
    v12 = v11;
    sub_1C456902C(&qword_1EC0B8720, &qword_1C4F0D970);
    sub_1C458A9D8(&qword_1EC0B8740, sub_1C458AA50);
    sub_1C4F026C8();
    v13 = sub_1C4408A58();
    v14(v13);
    *v4 = v10;
    v4[1] = v12;
    v4[2] = v15;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C440962C(v2);
  }

  sub_1C43FBC80();
}

void sub_1C4B1E304()
{
  sub_1C43FE96C();
  v3 = v0;
  v312 = v4;
  v6 = v5;
  v325 = v7;
  v310 = v8;
  v311 = v9;
  v309 = v10;
  v314 = v11;
  v12 = sub_1C4EFEEF8();
  v13 = sub_1C43FCDF8(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBFDC();
  v328 = v18;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v285 - v20);
  v22 = sub_1C456902C(&qword_1EC0B8A60, &unk_1C4F0DE80);
  v23 = sub_1C43FCDF8(v22);
  v322 = v24;
  v323 = v23;
  v26 = *(v25 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v27);
  v340 = &v285 - v28;
  v29 = sub_1C43FBE44();
  v30 = type metadata accessor for EntityTriple(v29);
  v31 = sub_1C43FCDF8(v30);
  v300 = v32;
  v301 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBFDC();
  v298 = v35;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FD230();
  v297 = v37;
  sub_1C43FBE44();
  v303 = sub_1C4EFF8A8();
  v38 = sub_1C43FCDF8(v303);
  v296 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FD2D8();
  v299 = v42;
  sub_1C43FBE44();
  v316 = sub_1C4EFD548();
  v43 = sub_1C43FCDF8(v316);
  *&v295 = v44;
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FBFDC();
  v291 = v47;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FBF38();
  v290 = v49;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v50);
  sub_1C43FBF38();
  v293 = v51;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v52);
  sub_1C43FD230();
  v302 = v53;
  sub_1C43FBE44();
  v313 = sub_1C4EFF0C8();
  v54 = sub_1C43FCDF8(v313);
  v294 = v55;
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v54);
  sub_1C43FBFDC();
  v292 = v58;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v59);
  sub_1C43FD230();
  v306 = v60;
  v61 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v62 = sub_1C43FBD18(v61);
  v64 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v62);
  sub_1C43FBFDC();
  v307 = v65;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v66);
  sub_1C43FD230();
  v308 = v67;
  v68 = sub_1C43FBE44();
  v69 = type metadata accessor for MapPredicate(v68);
  v341 = sub_1C43FCDF8(v69);
  v342 = v70;
  v72 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v341);
  sub_1C43FBD08();
  sub_1C441B420();
  MEMORY[0x1EEE9AC00](v73);
  sub_1C43FBF38();
  v321 = v74;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v75);
  sub_1C43FBF38();
  v320 = v76;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v77);
  sub_1C43FD230();
  v318 = v78;
  v79 = sub_1C456902C(&qword_1EC0B9A10, &qword_1C4F107C0);
  v80 = sub_1C43FBD18(v79);
  v82 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v80);
  sub_1C43FBFDC();
  v289 = v83;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v84);
  sub_1C43FBF38();
  v305 = v85;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v86);
  sub_1C43FD230();
  v317 = v87;
  v88 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  v89 = sub_1C43FBD18(v88);
  v91 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v89);
  sub_1C43FBD08();
  sub_1C44146B8();
  MEMORY[0x1EEE9AC00](v92);
  sub_1C43FBF38();
  v304 = v93;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v94);
  sub_1C43FD230();
  v315 = v95;
  sub_1C456902C(&qword_1EC0B8720, &qword_1C4F0D970);
  sub_1C44CD238(&qword_1EDDFCCB8, MEMORY[0x1E69A9748]);
  v343 = v12;
  v96 = sub_1C4F00F28();
  v97 = 0;
  v351 = v96;
  v324 = (v6 + 32);
  v326 = *(v6 + 16);
  v335 = (v15 + 32);
  v329 = (v15 + 16);
  v330 = v21;
  v319 = (v15 + 8);
  v331 = v1;
  while (v97 != v326)
  {
    v333 = v97;
    v98 = &v324[8 * v97];
    v99 = v98[1];
    v350[1] = v98[2];
    *(&v350[1] + 9) = *(v98 + 41);
    v100 = v98[1];
    v349 = *v98;
    v350[0] = v100;
    v101 = v350[1];
    v102 = v349;
    v344[0] = v349;
    v344[1] = v99;
    v344[2] = v98[2];
    v103 = *&v350[2];
    LODWORD(v334) = BYTE8(v350[2]);
    sub_1C4464B9C();
    v104 = sub_1C4B590DC(v325, v102, *(&v102 + 1), v101, *(&v101 + 1));
    if (v3)
    {
      sub_1C442A4AC();
      v348 = v103;
      sub_1C447D014();
      goto LABEL_90;
    }

    if (*(v104 + 16))
    {
      v332 = 0;
      v339 = *(v323 + 48);
      v338 = *(v323 + 64);
      v337 = (v340 + *(v323 + 80));
      sub_1C43FBF6C();
      v327 = v106;
      v108 = v106 + v107;
      *&v336 = *(v109 + 72);
      v110 = MEMORY[0x1E69E7CC0];
      v111 = v321;
      do
      {
        v352 = v105;
        v112 = v110;
        v113 = v2;
        v114 = v340;
        sub_1C44DDE2C();
        v115 = *v337;
        v116 = v337[1];
        v117 = v341;
        (*v335)(&v111[*(v341 + 20)], v114, v343);
        v118 = *(v117 + 24);
        sub_1C44CDA7C();
        v119 = *(v117 + 28);
        v2 = v113;
        v110 = v112;
        sub_1C44CDA7C();
        *v111 = v115;
        *(v111 + 1) = v116;
        sub_1C440BF38();
        sub_1C448D088();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v124 = *(v112 + 16);
          v125 = sub_1C43FCEC0();
          sub_1C458AE3C(v125, v126, v127, v112);
          v110 = v128;
        }

        v121 = *(v110 + 16);
        v120 = *(v110 + 24);
        if (v121 >= v120 >> 1)
        {
          sub_1C458AE3C(v120 > 1, v121 + 1, 1, v110);
          v110 = v129;
        }

        sub_1C4B2A2F8(v111, type metadata accessor for MapPredicate);
        *(v110 + 16) = v121 + 1;
        sub_1C43FBF6C();
        v123 = *(v122 + 72);
        sub_1C44DD800();
        v108 += v336;
        v105 = v352 - 1;
      }

      while (v352 != 1);

      v3 = v332;
    }

    else
    {

      v110 = MEMORY[0x1E69E7CC0];
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v130 = v330;
    if (*(v110 + 16))
    {
      v131 = *(v342 + 80);
      sub_1C440BF38();
      v132 = v320;
      sub_1C448D088();

      v133 = *v329;
      (*v329)(v130, v132 + *(v341 + 20), v343);
      sub_1C4407A9C();
      sub_1C4B2A2F8(v132, v134);
      v135 = v351;
      if (!*(v351 + 16) || (sub_1C457AB64(), (v136 & 1) == 0))
      {
        swift_isUniquelyReferenced_nonNull_native();
        *&v347[0] = v135;
        sub_1C4660468();
        v351 = *&v347[0];
      }

      v133(v328, v130, v343);
      v138 = sub_1C4B5A6C0();
      if (*v137)
      {
        v139 = v137;
        sub_1C442A4AC();
        sub_1C4588D20();
        v140 = *(*v139 + 16);
        sub_1C4589918();
        v141 = *v139;
        *(v141 + 16) = v140 + 1;
        v142 = v141 + (v140 << 6);
        *(v142 + 32) = v347[0];
        *(v142 + 48) = v347[1];
        *(v142 + 64) = v347[2];
        *(v142 + 80) = v110;
        *(v142 + 88) = v334;
      }

      else
      {
        sub_1C442A4AC();
        v348 = v110;
        sub_1C447D014();
      }

      (v138)(v345, 0);
      v143 = *v319;
      v144 = v343;
      (*v319)(v328, v343);
      v143(v330, v144);
    }

    else
    {
      sub_1C442A4AC();
      v348 = v110;
      sub_1C447D014();
    }

    v97 = v333 + 1;
  }

  v145 = v351 + 64;
  v146 = 1 << *(v351 + 32);
  v147 = -1;
  if (v146 < 64)
  {
    v147 = ~(-1 << v146);
  }

  v148 = v147 & *(v351 + 64);
  v326 = (v295 + 32);
  v320 = (v295 + 16);
  v327 = (v295 + 8);
  v328 = (v294 + 32);
  v334 = (v294 + 8);
  v335 = (v294 + 16);
  v324 = (v296 + 32);
  v322 = (v146 + 63) >> 6;
  v323 = v296 + 8;
  v319 = (v296 + 16);
  v149 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v150 = 0;
  v151 = MEMORY[0x1E69E7CC0];
  *&v152 = 136380931;
  v295 = v152;
  v153 = v303;
  v154 = v316;
  v321 = v149;
  v288 = v145;
LABEL_26:
  if (v148)
  {
    v340 = v151;
    v155 = v150;
    goto LABEL_32;
  }

  do
  {
    v155 = v150 + 1;
    if (__OFADD__(v150, 1))
    {
      goto LABEL_94;
    }

    if (v155 >= v322)
    {

      goto LABEL_91;
    }

    v148 = *(v145 + 8 * v155);
    ++v150;
  }

  while (!v148);
  v340 = v151;
LABEL_32:
  v156 = *(v149 + 56);
  v296 = v155;
  v157 = *(v156 + ((v155 << 9) | (8 * __clz(__rbit64(v148)))));
  v158 = v154;
  sub_1C440BAA8(v315, 1, 1, v154);
  sub_1C440BAA8(v317, 1, 1, v153);
  v159 = *(v157 + 16);
  v339 = v157;
  v353 = v159;
  if (!v159)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
LABEL_43:
    v177 = 0;
    v148 &= v148 - 1;
    LODWORD(v325) = 1;
    v178 = 32;
    v333 = v148;
    while (1)
    {
      if (v353 == v177)
      {

        sub_1C4420C3C(v317, &qword_1EC0B9A10, &qword_1C4F107C0);
        sub_1C4420C3C(v315, &qword_1EC0B8568, &unk_1C4F319B0);
        v150 = v296;
        v149 = v321;
        v151 = v340;
        v145 = v288;
        v154 = v158;
        v153 = v303;
        goto LABEL_26;
      }

      if (v177 >= *(v157 + 16))
      {
        goto LABEL_93;
      }

      v179 = *(v157 + v178);
      v180 = *(v157 + v178 + 16);
      v181 = *(v157 + v178 + 32);
      *(&v350[1] + 9) = *(v157 + v178 + 41);
      v350[0] = v180;
      v350[1] = v181;
      v349 = v179;
      v182 = *&v350[2];
      v345[0] = *(v157 + v178);
      v345[1] = *(v157 + v178 + 16);
      v345[2] = *(v157 + v178 + 32);
      v346 = *(v157 + v178 + 48);
      if (!*&v350[2])
      {
        sub_1C4455428();
        sub_1C4B2AA5C(v275);
        sub_1C44E3634(v347);

        if (qword_1EDDFD028 != -1)
        {
          goto LABEL_99;
        }

        goto LABEL_85;
      }

      if (!*(*&v350[2] + 16))
      {
        sub_1C4455428();
        sub_1C4B2AA5C(v211);
        sub_1C44E3634(v347);
        goto LABEL_69;
      }

      v337 = v178;
      v338 = v177;
      v183 = *(v342 + 80);
      sub_1C440BF38();
      sub_1C448D088();
      v184 = v308;
      v185 = v313;
      v330 = *v335;
      v330(v308, v314, v313);
      sub_1C440BAA8(v184, 0, 1, v185);
      v186 = v307;
      sub_1C44DDE2C();
      v187 = sub_1C441B908();
      if (sub_1C44157D4(v187, v188, v185) == 1)
      {
        sub_1C4464B9C();

        sub_1C4420C3C(v186, &unk_1EC0BA0E0, &qword_1C4F105A0);
        sub_1C45CF650();
        sub_1C441C114();
        swift_allocError();
        sub_1C441B4F8(v283, 4);
        swift_willThrow();

        sub_1C4420C3C(v184, &unk_1EC0BA0E0, &qword_1C4F105A0);
        sub_1C4407A9C();
        sub_1C4B2A2F8(v318, v284);
        sub_1C4420C3C(v317, &qword_1EC0B9A10, &qword_1C4F107C0);
        sub_1C4420C3C(v315, &qword_1EC0B8568, &unk_1C4F319B0);
        sub_1C4455428();
        sub_1C4B2ABB8();

        goto LABEL_90;
      }

      v332 = v3;
      v189 = v185;
      v190 = v186;
      v191 = *(&v350[1] + 1);
      v192 = *&v350[0];
      v336 = *(v350 + 8);
      v193 = v306;
      (*v328)(v306, v190, v189);
      sub_1C45D17A0(&v349, v344);
      v194 = sub_1C45CF6A4(v193, v309, v310, v311, v182, 0, v317, v192, v336, *(&v336 + 1), v191, v312);
      v195 = *v334;
      (*v334)(v193, v189);
      sub_1C4420C3C(v184, &unk_1EC0BA0E0, &qword_1C4F105A0);
      sub_1C4455428();
      sub_1C4B2ABB8();
      v196 = *(v194 + 16);
      v197 = *(v340 + 16);
      v198 = v197 + v196;
      if (__OFADD__(v197, v196))
      {
        goto LABEL_95;
      }

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v200 = v340;
      if (!isUniquelyReferenced_nonNull_native || v198 > *(v340 + 24) >> 1)
      {
        if (v197 <= v198)
        {
          v201 = v197 + v196;
        }

        else
        {
          v201 = v197;
        }

        sub_1C44C9240(isUniquelyReferenced_nonNull_native, v201, 1, v340);
        v200 = v202;
      }

      v204 = v304;
      v203 = v305;
      v205 = *(v194 + 16);
      v340 = v200;
      if (v205)
      {
        v206 = *(v200 + 16);
        if ((*(v200 + 24) >> 1) - v206 < v196)
        {
          goto LABEL_97;
        }

        v207 = v200 + ((*(v300 + 80) + 32) & ~*(v300 + 80)) + *(v300 + 72) * v206;
        swift_arrayInitWithCopy();

        if (v196)
        {
          v208 = *(v340 + 16);
          v209 = __OFADD__(v208, v196);
          v210 = v208 + v196;
          if (v209)
          {
            goto LABEL_98;
          }

          *(v340 + 16) = v210;
        }
      }

      else
      {

        if (v196)
        {
          goto LABEL_96;
        }
      }

      sub_1C44DDE2C();
      v212 = sub_1C441B908();
      v213 = v316;
      if (sub_1C44157D4(v212, v214, v316) == 1)
      {
        break;
      }

      v218 = v302;
      (*v326)(v302, v204, v213);
      v158 = &qword_1EC0B9A10;
      sub_1C44DDE2C();
      v219 = v203;
      v220 = v203;
      v221 = v303;
      if (sub_1C44157D4(v219, 1, v303) == 1)
      {

        (*v327)(v218, v213);
        sub_1C4407A9C();
        sub_1C4B2A2F8(v318, v222);
        v215 = v220;
        v216 = &qword_1EC0B9A10;
        v217 = &qword_1C4F107C0;
        goto LABEL_67;
      }

      v223 = v299;
      (*v324)(v299, v220, v221);
      v224 = *(v194 + 16);

      if (!v224)
      {
        (*v323)(v223, v221);
        v243 = sub_1C4486008();
        v244(v243);
        sub_1C4407A9C();
        sub_1C4B2A2F8(v318, v245);
        v3 = v332;
        goto LABEL_68;
      }

      if ((v325 & 1) == 0)
      {
        v246 = sub_1C4B2AB04();
        v247(v246);
        v248 = sub_1C4486008();
        v249(v248);
        sub_1C4407A9C();
        sub_1C4B2A2F8(v318, v250);
        LODWORD(v325) = 0;
        v3 = v332;
        goto LABEL_68;
      }

      v225 = v302;
      if (qword_1EDDFD028 != -1)
      {
        swift_once();
      }

      v226 = sub_1C4F00978();
      sub_1C43FCEE8(v226, qword_1EDE2DE10);
      v227 = v292;
      v228 = v313;
      (v330)(v292, v314);
      (*v320)(v293, v225, v316);
      v229 = sub_1C4F00968();
      LODWORD(v325) = sub_1C4F01CF8();
      if (os_log_type_enabled(v229, v325))
      {
        v230 = sub_1C440F274();
        v286 = v230;
        sub_1C443FD74();
        v294 = swift_slowAlloc();
        *&v344[0] = v294;
        *v230 = v295;
        sub_1C4417750();
        sub_1C44CD238(&qword_1EDDFE810, v231);
        v287 = v229;
        v232 = sub_1C4F02858();
        v234 = v233;
        v195(v227, v228);
        sub_1C441D828(v232, v234, v344);
        sub_1C43FBD30();

        v235 = v286;
        *(v286 + 1) = v232;
        *(v235 + 6) = 2080;
        v236 = sub_1C4EFD2F8();
        v238 = v237;
        v239 = sub_1C44B9210();
        v240(v239);
        sub_1C441D828(v236, v238, v344);
        sub_1C43FBD30();

        *(v235 + 14) = v236;
        v241 = v287;
        _os_log_impl(&dword_1C43F8000, v287, v325, "StandardEntityMapper: constructRows relationship: %{private}s relPred isA %s", v235, 0x16u);
        swift_arrayDestroy();
        v242 = sub_1C4425FC4();
        MEMORY[0x1C6942830](v242);
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      else
      {

        v251 = sub_1C44B9210();
        v252(v251);
        v195(v227, v228);
      }

      v253 = v297;
      v330(v297, v314, v228);
      v254 = v301;
      (*v329)(v253 + v301[5], v318 + *(v341 + 20), v343);
      (*v319)(v253 + v254[6], v299, v303);
      v255 = v253 + v254[7];
      sub_1C4EFEBB8();
      v256 = sub_1C4EFD2F8();
      v258 = v257;
      v259 = v254[9];
      sub_1C44036D4();
      sub_1C448D088();
      v260 = (v253 + v254[8]);
      *v260 = v256;
      v260[1] = v258;
      v261 = (v253 + v254[10]);
      v262 = v311;
      *v261 = v310;
      v261[1] = v262;
      *(v253 + v254[11]) = 0;
      *(v253 + v254[12]) = v312;
      sub_1C448D088();
      v264 = *(v340 + 16);
      v263 = *(v340 + 24);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v3 = v332;
      v148 = v333;
      v330 = (v264 + 1);
      if (v264 >= v263 >> 1)
      {
        sub_1C4460700();
        sub_1C44C9240(v271, v272, v273, v340);
        v340 = v274;
      }

      v265 = v316;
      v157 = v339;
      v178 = v337;
      sub_1C4B2A2F8(v297, type metadata accessor for EntityTriple);
      v266 = sub_1C4B2AB04();
      v267(v266);
      v158 = v265;
      (v336)(v302, v265);
      sub_1C4407A9C();
      sub_1C4B2A2F8(v318, v268);
      *(v340 + 16) = v330;
      sub_1C43FBF6C();
      v270 = *(v269 + 72);
      sub_1C43FDDE8();
      sub_1C44DD800();
      LODWORD(v325) = 0;
      v177 = v338;
LABEL_69:
      v178 += 64;
      ++v177;
    }

    sub_1C4B2A2F8(v318, type metadata accessor for MapPredicate);

    v215 = v204;
    v216 = &qword_1EC0B8568;
    v217 = &unk_1C4F319B0;
LABEL_67:
    sub_1C4420C3C(v215, v216, v217);
    v3 = v332;
    v158 = v213;
LABEL_68:
    v148 = v333;
    v177 = v338;
    v157 = v339;
    v178 = v337;
    goto LABEL_69;
  }

  v160 = (v157 + 80);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v161 = 0;
  while (v161 < *(v157 + 16))
  {
    v162 = *v160;
    if (*v160 && *(v162 + 16))
    {
      v163 = v162 + *(v341 + 24) + ((*(v342 + 80) + 32) & ~*(v342 + 80));
      sub_1C44DDE2C();
      v164 = sub_1C441B908();
      if (sub_1C44157D4(v164, v165, v158) != 1)
      {
        v170 = v315;
        sub_1C43FC2F4();
        sub_1C4420C3C(v171, v172, v173);
        v174 = v290;
        (*v326)(v290, v331, v158);
        v333 = v148;
        v175 = *v320;
        (*v320)(v170, v174, v158);
        sub_1C440BAA8(v170, 0, 1, v158);
        v175(v291, v174, v158);
        v176 = v289;
        sub_1C4EFF838();
        (*v327)(v174, v158);
        sub_1C4420C3C(v317, &qword_1EC0B9A10, &qword_1C4F107C0);
        sub_1C440BAA8(v176, 0, 1, v303);
        v148 = v333;
        sub_1C44CDA7C();
        v157 = v339;
        goto LABEL_43;
      }
    }

    else
    {
      v166 = sub_1C441B908();
      sub_1C440BAA8(v166, v167, 1, v158);
    }

    ++v161;
    v168 = sub_1C440A6C4();
    sub_1C4420C3C(v168, v169, &unk_1C4F319B0);
    v160 += 8;
    v157 = v339;
    if (v353 == v161)
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_93:
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
  sub_1C4419274();
  swift_once();
LABEL_85:
  v276 = sub_1C4F00978();
  sub_1C43FCEE8(v276, qword_1EDE2DE10);
  v277 = sub_1C4F00968();
  v278 = sub_1C4F01CD8();
  if (os_log_type_enabled(v277, v278))
  {
    sub_1C43FD1A8();
    v279 = swift_slowAlloc();
    *v279 = 0;
    _os_log_impl(&dword_1C43F8000, v277, v278, "Mapping error, missing predicates", v279, 2u);
    v280 = sub_1C43FEF7C();
    MEMORY[0x1C6942830](v280);
  }

  sub_1C45CF650();
  sub_1C441C114();
  v281 = swift_allocError();
  sub_1C44046C4(v281, v282);
  swift_willThrow();

  sub_1C4420C3C(v317, &qword_1EC0B9A10, &qword_1C4F107C0);
  sub_1C4420C3C(v315, &qword_1EC0B8568, &unk_1C4F319B0);
LABEL_90:

LABEL_91:
  sub_1C43FBC80();
}

void sub_1C4B1FB70(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, unsigned __int8 a9)
{
  v10 = v9;
  v229 = a8;
  v238 = a7;
  v234 = a5;
  v214 = a4;
  v232 = a2;
  v236 = a1;
  v226 = type metadata accessor for EntityTriple(0);
  v228 = *(v226 - 8);
  v13 = *(v228 + 64);
  MEMORY[0x1EEE9AC00](v226);
  v227 = &v201 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C4F00DD8();
  v220 = *(v15 - 8);
  v221 = v15;
  v16 = *(v220 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v218 = &v201 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C4F00DC8();
  v222 = *(v18 - 8);
  v223 = v18;
  v19 = *(v222 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v217 = &v201 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v219 = &v201 - v22;
  v23 = sub_1C4F01188();
  v230 = *(v23 - 8);
  v231 = v23;
  v24 = *(v230 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v201 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v237 = sub_1C4EFF0C8();
  v233 = *(v237 - 8);
  v27 = *(v233 + 64);
  MEMORY[0x1EEE9AC00](v237);
  v225 = &v201 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v216 = &v201 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v242 = &v201 - v32;
  v33 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v36 = &v201 - v35;
  v37 = sub_1C4EFD548();
  v239 = *(v37 - 8);
  v38 = *(v239 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v215 = &v201 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v201 - v41;
  MEMORY[0x1EEE9AC00](v43);
  v240 = &v201 - v44;
  *&v243 = 0x657473654E444D5FLL;
  *(&v243 + 1) = 0xEF797469746E4564;
  v45 = sub_1C4F029C8();
  v241 = a3;
  v46 = [a3 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  v235 = a6;
  if (v46)
  {
    sub_1C4F02078();
    swift_unknownObjectRelease();
  }

  else
  {
    v243 = 0u;
    v244 = 0u;
  }

  v245 = v243;
  v246 = v244;
  if (!*(&v244 + 1))
  {
    sub_1C4420C3C(&v245, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_9;
  }

  sub_1C4B2A2B4();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v50 = sub_1C4F00978();
    sub_1C442B738(v50, qword_1EDE2DE10);
    v51 = *v10;
    v52 = *(v10 + 8);
    v259 = *(v10 + 16);
    v258 = *(v10 + 24);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44DDE2C();
    sub_1C44DDE2C();
    v53 = sub_1C4F00968();
    v54 = sub_1C4F01CD8();

    sub_1C4420C3C(&v259, &qword_1EC0B8720, &qword_1C4F0D970);
    sub_1C4420C3C(&v258, &qword_1EC0C2BD0, &qword_1C4F0FF50);
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *&v245 = v56;
      *v55 = 136315138;
      *(v55 + 4) = sub_1C441D828(v51, v52, &v245);
      _os_log_impl(&dword_1C43F8000, v53, v54, "Mapping error, nested entity missing metadata in map, %s", v55, 0xCu);
      sub_1C440962C(v56);
      MEMORY[0x1C6942830](v56, -1, -1);
      MEMORY[0x1C6942830](v55, -1, -1);
    }

    sub_1C45CF650();
    swift_allocError();
    *v57 = 1;
    swift_willThrow();
    return;
  }

  v212 = v37;
  v47 = v248;
  *&v243 = 0x79747265706F7270;
  *(&v243 + 1) = 0xEB0000000070614DLL;
  v48 = sub_1C4F029C8();
  v213 = v47;
  v49 = [v47 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v49)
  {
    sub_1C4F02078();
    swift_unknownObjectRelease();
  }

  else
  {
    v243 = 0u;
    v244 = 0u;
  }

  v245 = v243;
  v246 = v244;
  if (!*(&v244 + 1))
  {
    sub_1C4420C3C(&v245, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_20;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v59 = sub_1C4F00978();
    sub_1C442B738(v59, qword_1EDE2DE10);
    v60 = *v10;
    v61 = *(v10 + 8);
    v257 = *(v10 + 16);
    v256 = *(v10 + 24);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44DDE2C();
    sub_1C44DDE2C();
    v62 = sub_1C4F00968();
    v63 = sub_1C4F01CD8();

    sub_1C4420C3C(&v257, &qword_1EC0B8720, &qword_1C4F0D970);
    sub_1C4420C3C(&v256, &qword_1EC0C2BD0, &qword_1C4F0FF50);
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *&v245 = v65;
      *v64 = 136315138;
      *(v64 + 4) = sub_1C441D828(v60, v61, &v245);
      _os_log_impl(&dword_1C43F8000, v62, v63, "Mapping error missing property map for  %s", v64, 0xCu);
      sub_1C440962C(v65);
      MEMORY[0x1C6942830](v65, -1, -1);
      MEMORY[0x1C6942830](v64, -1, -1);
    }

    sub_1C45CF650();
    swift_allocError();
    *v66 = 1;
    swift_willThrow();
    v67 = v213;
    goto LABEL_40;
  }

  v211 = v248;
  *&v243 = 1701869940;
  *(&v243 + 1) = 0xE400000000000000;
  v58 = [v213 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v58)
  {
    sub_1C4F02078();
    swift_unknownObjectRelease();
  }

  else
  {
    v243 = 0u;
    v244 = 0u;
  }

  v68 = v212;
  v245 = v243;
  v246 = v244;
  if (!*(&v244 + 1))
  {
    sub_1C4420C3C(&v245, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_34;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_34:
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v78 = sub_1C4F00978();
    sub_1C442B738(v78, qword_1EDE2DE10);
    v79 = *v10;
    v80 = *(v10 + 8);
    v255 = *(v10 + 16);
    v254 = *(v10 + 24);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44DDE2C();
    sub_1C44DDE2C();
    v73 = sub_1C4F00968();
    v74 = sub_1C4F01CD8();

    sub_1C4420C3C(&v255, &qword_1EC0B8720, &qword_1C4F0D970);
    sub_1C4420C3C(&v254, &qword_1EC0C2BD0, &qword_1C4F0FF50);
    if (!os_log_type_enabled(v73, v74))
    {
      goto LABEL_39;
    }

    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    *&v245 = v76;
    *v75 = 136315138;
    *(v75 + 4) = sub_1C441D828(v79, v80, &v245);
    v77 = "Mapping error missing type for  %s";
    goto LABEL_38;
  }

  v69 = v248;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFD2E8();
  if (sub_1C44157D4(v36, 1, v68) == 1)
  {

    sub_1C4420C3C(v36, &qword_1EC0B8568, &unk_1C4F319B0);
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v70 = sub_1C4F00978();
    sub_1C442B738(v70, qword_1EDE2DE10);
    v71 = *v10;
    v72 = *(v10 + 8);
    v253 = *(v10 + 16);
    v252 = *(v10 + 24);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44DDE2C();
    sub_1C44DDE2C();
    v73 = sub_1C4F00968();
    v74 = sub_1C4F01CD8();

    sub_1C4420C3C(&v253, &qword_1EC0B8720, &qword_1C4F0D970);
    sub_1C4420C3C(&v252, &qword_1EC0C2BD0, &qword_1C4F0FF50);
    if (!os_log_type_enabled(v73, v74))
    {
      goto LABEL_39;
    }

    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    *&v245 = v76;
    *v75 = 136315138;
    *(v75 + 4) = sub_1C441D828(v71, v72, &v245);
    v77 = "Mapping error type is not recognized as an EntityClass %s";
LABEL_38:
    _os_log_impl(&dword_1C43F8000, v73, v74, v77, v75, 0xCu);
    sub_1C440962C(v76);
    MEMORY[0x1C6942830](v76, -1, -1);
    MEMORY[0x1C6942830](v75, -1, -1);
LABEL_39:

    sub_1C45CF650();
    swift_allocError();
    *v81 = 1;
    swift_willThrow();

    v67 = v211;
LABEL_40:

    return;
  }

  v210 = v69 >> 64;
  v206 = v69;
  v82 = v239;
  v83 = v240;
  (*(v239 + 32))(v240, v36, v68);
  if (qword_1EDDFD028 != -1)
  {
    swift_once();
  }

  v84 = sub_1C4F00978();
  v85 = sub_1C442B738(v84, qword_1EDE2DE10);
  v204 = *(v82 + 16);
  v205 = v82 + 16;
  v204(v42, v83, v68);
  v86 = v232;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v209 = v85;
  v87 = sub_1C4F00968();
  v88 = sub_1C4F01CB8();

  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    v203 = v88;
    v90 = v89;
    v207 = swift_slowAlloc();
    *&v245 = v207;
    *v90 = 136381187;
    *(v90 + 4) = sub_1C441D828(v236, v86, &v245);
    *(v90 + 12) = 2080;
    sub_1C44CD238(&qword_1EDDFA220, MEMORY[0x1E69A92C8]);
    v202 = v87;
    v91 = sub_1C4F02858();
    v92 = v68;
    v94 = v93;
    v208 = *(v82 + 8);
    v208(v42, v92);
    v95 = sub_1C441D828(v91, v94, &v245);

    *(v90 + 14) = v95;
    v96 = v236;
    *(v90 + 22) = 1024;
    *(v90 + 24) = 0;
    v97 = v202;
    _os_log_impl(&dword_1C43F8000, v202, v203, "Source: generating identifier for: %{private}s : %s : %{BOOL}d", v90, 0x1Cu);
    v98 = v207;
    swift_arrayDestroy();
    MEMORY[0x1C6942830](v98, -1, -1);
    MEMORY[0x1C6942830](v90, -1, -1);
  }

  else
  {

    v208 = *(v82 + 8);
    v208(v42, v68);
    v96 = v236;
  }

  v99 = *v238;
  v100 = v238[1];
  *&v245 = v96;
  *(&v245 + 1) = v86;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v99, v100);
  v101 = v245;
  sub_1C4F01178();
  v102 = sub_1C4F01148();
  v104 = v103;
  (*(v230 + 8))(v26, v231);
  if (v104 >> 60 == 15)
  {

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v105 = sub_1C4F00968();
    v106 = sub_1C4F01CD8();

    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      *&v245 = v108;
      *v107 = 136380675;
      v109 = sub_1C441D828(v101, *(&v101 + 1), &v245);

      *(v107 + 4) = v109;
      _os_log_impl(&dword_1C43F8000, v105, v106, "Source: failed to encode identifier as UTF8 data: %{private}s", v107, 0xCu);
      sub_1C440962C(v108);
      MEMORY[0x1C6942830](v108, -1, -1);
      MEMORY[0x1C6942830](v107, -1, -1);
    }

    else
    {
    }

    v133 = *v10;
    v134 = *(v10 + 8);
    v251 = *(v10 + 16);
    v250 = *(v10 + 24);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44DDE2C();
    sub_1C44DDE2C();
    v135 = sub_1C4F00968();
    v136 = sub_1C4F01CD8();

    sub_1C4420C3C(&v251, &qword_1EC0B8720, &qword_1C4F0D970);
    sub_1C4420C3C(&v250, &qword_1EC0C2BD0, &qword_1C4F0FF50);
    if (os_log_type_enabled(v135, v136))
    {
      v137 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      *&v245 = v138;
      *v137 = 136315138;
      *(v137 + 4) = sub_1C441D828(v133, v134, &v245);
      _os_log_impl(&dword_1C43F8000, v135, v136, "Mapping error failed to generate EntityIdentifier for %s", v137, 0xCu);
      sub_1C440962C(v138);
      MEMORY[0x1C6942830](v138, -1, -1);
      MEMORY[0x1C6942830](v137, -1, -1);
    }

    v139 = v212;
    sub_1C45CF650();
    swift_allocError();
    *v140 = 5;
    swift_willThrow();

    v208(v240, v139);
    return;
  }

  LODWORD(v207) = a9;

  sub_1C44CD238(&qword_1EDDFEAD0, MEMORY[0x1E6966620]);
  v110 = v218;
  v111 = v221;
  sub_1C4F00DB8();
  sub_1C44344B8(v102, v104);
  v112 = v224;
  sub_1C4498FD8(v102, v104);
  v224 = v112;
  sub_1C441DFEC(v102, v104);
  v113 = v219;
  sub_1C4F00DA8();
  (*(v220 + 8))(v110, v111);
  v204(v215, v240, v212);
  v115 = v222;
  v114 = v223;
  (*(v222 + 16))(v217, v113, v223);
  v116 = v216;
  sub_1C4EFF028();
  sub_1C441DFEC(v102, v104);
  (*(v115 + 8))(v113, v114);
  v117 = v233;
  v118 = v242;
  v119 = v237;
  (*(v233 + 32))(v242, v116, v237);
  v120 = v225;
  v236 = *(v117 + 16);
  (v236)(v225, v118, v119);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v121 = sub_1C4F00968();
  v122 = sub_1C4F01CF8();

  if (os_log_type_enabled(v121, v122))
  {
    v123 = swift_slowAlloc();
    v124 = swift_slowAlloc();
    *&v245 = v124;
    *v123 = 136380931;
    sub_1C44CD238(&qword_1EDDFE810, MEMORY[0x1E69A9810]);
    LODWORD(v232) = v122;
    v125 = sub_1C4F02858();
    v127 = v126;
    v225 = *(v117 + 8);
    (v225)(v120, v237);
    v128 = sub_1C441D828(v125, v127, &v245);

    *(v123 + 4) = v128;
    *(v123 + 12) = 2080;
    v129 = v206;
    *(v123 + 14) = sub_1C441D828(v206, v210, &v245);
    _os_log_impl(&dword_1C43F8000, v121, v232, "StandardEntityMapper: createNestedEntityRows: %{private}s isA %s", v123, 0x16u);
    swift_arrayDestroy();
    v130 = v124;
    v119 = v237;
    MEMORY[0x1C6942830](v130, -1, -1);
    MEMORY[0x1C6942830](v123, -1, -1);

    v131 = v234;
    v132 = v235;
  }

  else
  {

    v225 = *(v117 + 8);
    (v225)(v120, v119);
    v131 = v234;
    v132 = v235;
    v129 = v206;
  }

  v141 = v227;
  (v236)(v227, v242, v119);
  v142 = v226;
  v143 = &v141[*(v226 + 20)];
  sub_1C4EFEBB8();
  v144 = &v141[v142[6]];
  sub_1C4EFF888();
  v145 = &v141[v142[7]];
  sub_1C4EFEC38();
  v146 = v142[9];
  sub_1C448D088();
  sub_1C4EF9AE8();
  v147 = &v141[v142[8]];
  v148 = v210;
  *v147 = v129;
  v147[1] = v148;
  v149 = &v141[v142[10]];
  *v149 = v131;
  *(v149 + 1) = v132;
  *&v141[v142[11]] = v150;
  v141[v142[12]] = v207;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44C9240(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v152 = v151;
  v154 = *(v151 + 16);
  v153 = *(v151 + 24);
  v155 = v212;
  if (v154 >= v153 >> 1)
  {
    sub_1C44C9240(v153 > 1, v154 + 1, 1, v151);
    v152 = v200;
  }

  v156 = v241;
  *(v152 + 2) = v154 + 1;
  v157 = &v152[(*(v228 + 80) + 32) & ~*(v228 + 80)];
  v158 = *(v228 + 72);
  sub_1C44DD800();
  v227 = v152;
  v249 = v152;
  v159 = *(v229 + 16);
  if (v159)
  {
    v160 = (v229 + 32);
    v161 = MEMORY[0x1E69E7CC0];
    v236 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v162 = v160[1];
      v245 = *v160;
      v246 = v162;
      v247[0] = v160[2];
      *(v247 + 9) = *(v160 + 41);
      v163 = v245;
      v248 = v245;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C45D17A0(&v245, &v243);
      v164 = [v156 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v164)
      {
        sub_1C4F02078();
        swift_unknownObjectRelease();
        sub_1C4420C3C(&v243, &qword_1EC0BCD10, &qword_1C4F0C8C0);
        v165 = v163 == 0x696669746E656469 && *(&v163 + 1) == 0xEA00000000007265;
        if (v165 || (sub_1C4F02938() & 1) != 0)
        {
          LODWORD(v232) = BYTE8(v247[1]);
          v167 = *(&v247[0] + 1);
          v166 = *&v247[1];
          v230 = *&v247[0];
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v168 = sub_1C4EFF048();
          v228 = v169;
          v229 = v168;
          v231 = v166;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C44E3634(&v245);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v184 = *(v161 + 16);
            sub_1C458A900();
            v161 = v185;
          }

          v170 = *(v161 + 16);
          v171 = v161;
          if (v170 >= *(v161 + 24) >> 1)
          {
            sub_1C458A900();
            v171 = v186;
          }

          v161 = v171;
          *(v171 + 16) = v170 + 1;
          v172 = v171 + (v170 << 6);
          *(v172 + 32) = v163;
          v173 = v228;
          *(v172 + 48) = v229;
          *(v172 + 56) = v173;
          v174 = v231;
          *(v172 + 64) = v230;
          *(v172 + 72) = v167;
          *(v172 + 80) = v174;
          *(v172 + 88) = v232;
          v155 = v212;
          v156 = v241;
          goto LABEL_82;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v190 = *(v161 + 16);
          sub_1C458A900();
          v161 = v191;
        }

        v155 = v212;
        v180 = *(v161 + 16);
        if (v180 >= *(v161 + 24) >> 1)
        {
          sub_1C458A900();
          v161 = v192;
        }

        *(v161 + 16) = v180 + 1;
        v179 = (v161 + (v180 << 6));
      }

      else
      {
        v243 = 0u;
        v244 = 0u;
        sub_1C4420C3C(&v243, &qword_1EC0BCD10, &qword_1C4F0C8C0);
        v175 = v236;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v187 = *(v175 + 16);
          sub_1C458A900();
          v175 = v188;
        }

        v155 = v212;
        v177 = *(v175 + 16);
        v176 = *(v175 + 24);
        v236 = v175;
        if (v177 >= v176 >> 1)
        {
          sub_1C458A900();
          v236 = v189;
        }

        v178 = v236;
        *(v236 + 16) = v177 + 1;
        v179 = (v178 + (v177 << 6));
      }

      v181 = v245;
      v182 = v246;
      v183 = v247[0];
      *(v179 + 73) = *(v247 + 9);
      v179[3] = v182;
      v179[4] = v183;
      v179[2] = v181;
LABEL_82:
      v160 += 4;
      if (!--v159)
      {
        goto LABEL_85;
      }
    }
  }

  v236 = MEMORY[0x1E69E7CC0];
LABEL_85:
  v193 = v242;
  v194 = v211;
  v195 = v224;
  sub_1C4B1E304();
  if (v195)
  {

    (v225)(v193, v237);
    v208(v240, v155);
  }

  else
  {
    v197 = v196;

    sub_1C49D3614(v197);
    sub_1C4B1E304();
    v199 = v198;

    sub_1C49D3614(v199);

    (v225)(v242, v237);
    v208(v240, v155);
  }
}

void sub_1C4B217B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v23;
  a20 = v24;
  v33 = sub_1C441EE94(v25, v26, v27, v28, v29, v30, v31, v32);
  v34 = sub_1C43FFAE0(v33, v302);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v37);
  v38 = sub_1C4F00DD8();
  v39 = sub_1C43FFAE0(v38, v300);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v42);
  v43 = sub_1C4F00DC8();
  v44 = sub_1C43FFAE0(v43, &v301);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FD230();
  sub_1C43FD2C8(v48);
  v49 = sub_1C4F01188();
  v50 = sub_1C43FCDF8(v49);
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v50);
  sub_1C43FBCC4();
  v53 = sub_1C4B2AA0C();
  v54 = sub_1C43FFAE0(v53, &a12);
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v54);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v57);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v58);
  sub_1C43FD230();
  sub_1C43FCE30(v59);
  v60 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  sub_1C43FBD18(v60);
  v62 = *(v61 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v63);
  v64 = sub_1C447CE30();
  v65 = sub_1C43FCDF8(v64);
  v67 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v65);
  sub_1C43FBD08();
  sub_1C44146B8();
  MEMORY[0x1EEE9AC00](v68);
  sub_1C441B420();
  MEMORY[0x1EEE9AC00](v69);
  sub_1C43FD230();
  sub_1C43FCE30(v70);
  sub_1C442023C();
  v297 = v71;
  v298 = v72;
  v73 = sub_1C4F029C8();
  v74 = sub_1C447E480(v73, sel___swift_objectForKeyedSubscript_);
  swift_unknownObjectRelease();
  if (v74)
  {
    sub_1C4F02078();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C445543C();
  }

  sub_1C4434224();
  if (!v75)
  {
    sub_1C4420C3C(v300, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_9;
  }

  v76 = sub_1C4B2A2B4();
  sub_1C44EB8EC();
  if ((sub_1C4B2A958() & 1) == 0)
  {
LABEL_9:
    sub_1C44606F4();
    if (!v156)
    {
      sub_1C4419274();
      swift_once();
    }

    v82 = sub_1C4F00978();
    sub_1C442B738(v82, qword_1EDE2DE10);
    v83 = sub_1C440E728();
    v84(v83);
    v85 = sub_1C4F00968();
    sub_1C4F01CD8();
    v86 = sub_1C44016D0();
    if (os_log_type_enabled(v86, v87))
    {
      sub_1C43FECF0();
      swift_slowAlloc();
      sub_1C43FC858();
      v88 = swift_slowAlloc();
      sub_1C44180A8(v88);
      sub_1C445BC14(4.8149e-34);
      v89 = sub_1C4462464();
      v90(v89);
      sub_1C448F1C0();
      sub_1C4B2A8F8();
      *(v20 + 4) = v22;
      sub_1C44046B4();
      _os_log_impl(v91, v92, v93, v94, v95, v96);
      sub_1C440962C(v49);
      v97 = sub_1C43FEF7C();
      MEMORY[0x1C6942830](v97);
      v98 = sub_1C4425FC4();
      MEMORY[0x1C6942830](v98);
    }

    else
    {
      v99 = sub_1C4462464();
      v100(v99);
    }

    sub_1C45CF650();
    sub_1C441C114();
    v101 = swift_allocError();
    sub_1C44060DC(v101, v102);
    swift_willThrow();
    goto LABEL_43;
  }

  v291 = v64;
  v77 = v302[4];
  sub_1C4414EA8();
  v297 = v78;
  v298 = v79;
  v80 = sub_1C4F029C8();
  v81 = sub_1C44AB1A0(v80, sel___swift_objectForKeyedSubscript_);
  sub_1C44A1C64();
  swift_unknownObjectRelease();
  if (v77)
  {
    sub_1C4B2A9C0();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C445543C();
  }

  sub_1C4434224();
  if (!v103)
  {
    sub_1C4420C3C(v300, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_21;
  }

  sub_1C44EB8EC();
  if ((sub_1C4B2A958() & 1) == 0)
  {
LABEL_21:
    sub_1C44606F4();
    if (!v156)
    {
      sub_1C4419274();
      swift_once();
    }

    v106 = sub_1C4F00978();
    sub_1C442B738(v106, qword_1EDE2DE10);
    v107 = sub_1C440E728();
    v108(v107);
    v109 = sub_1C4F00968();
    sub_1C4F01CD8();
    v110 = sub_1C44016D0();
    if (os_log_type_enabled(v110, v111))
    {
      sub_1C43FECF0();
      swift_slowAlloc();
      sub_1C43FC858();
      v112 = swift_slowAlloc();
      sub_1C44180A8(v112);
      sub_1C445BC14(4.8149e-34);
      v113 = sub_1C4462464();
      v114(v113);
      sub_1C448F1C0();
      sub_1C4B2A8F8();
      *(v20 + 4) = v22;
      sub_1C44046B4();
      _os_log_impl(v115, v116, v117, v118, v119, v120);
      sub_1C440962C(v49);
      v121 = sub_1C43FEF7C();
      MEMORY[0x1C6942830](v121);
      v122 = sub_1C4425FC4();
      MEMORY[0x1C6942830](v122);
    }

    else
    {
      v123 = sub_1C4462464();
      v124(v123);
    }

    sub_1C45CF650();
    sub_1C441C114();
    v125 = swift_allocError();
    sub_1C44060DC(v125, v126);
    swift_willThrow();
    sub_1C4485F24();
    goto LABEL_43;
  }

  sub_1C4440DBC();
  v104 = sub_1C4F029C8();
  v105 = sub_1C44D3E0C(v104, sel___swift_objectForKeyedSubscript_);
  sub_1C44A1C64();
  swift_unknownObjectRelease();
  if (v77)
  {
    sub_1C4B2A9C0();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C445543C();
  }

  sub_1C4434224();
  if (!v127)
  {
    sub_1C4420C3C(v300, &qword_1EC0BCD10, &qword_1C4F0C8C0);
LABEL_37:
    sub_1C44606F4();
    if (!v156)
    {
      sub_1C4419274();
      swift_once();
    }

    v134 = sub_1C4F00978();
    sub_1C442B738(v134, qword_1EDE2DE10);
    v135 = sub_1C440E728();
    v136(v135);
    v131 = sub_1C4F00968();
    sub_1C4F01CD8();
    v137 = sub_1C44016D0();
    if (os_log_type_enabled(v137, v138))
    {
      goto LABEL_40;
    }

    goto LABEL_41;
  }

  sub_1C44EB8EC();
  if ((sub_1C445FDA0() & 1) == 0)
  {
    goto LABEL_37;
  }

  sub_1C44562D0();
  sub_1C4B2AA28();
  sub_1C4405CEC();
  if (v156)
  {

    sub_1C4420C3C(v20, &qword_1EC0B8568, &unk_1C4F319B0);
    sub_1C44606F4();
    if (!v156)
    {
      sub_1C4419274();
      swift_once();
    }

    v128 = sub_1C4F00978();
    sub_1C442B738(v128, qword_1EDE2DE10);
    sub_1C443DFBC();
    v129 = sub_1C443FF6C();
    v130(v129);
    v131 = sub_1C4F00968();
    sub_1C4F01CD8();
    v132 = sub_1C44016D0();
    v76 = v290;
    if (os_log_type_enabled(v132, v133))
    {
LABEL_40:
      sub_1C43FECF0();
      swift_slowAlloc();
      sub_1C43FC858();
      v139 = swift_slowAlloc();
      sub_1C44180A8(v139);
      sub_1C445BC14(4.8149e-34);
      v140 = sub_1C4462464();
      v141(v140);
      sub_1C448F1C0();
      sub_1C4B2A8F8();
      *(v20 + 4) = v22;
      sub_1C44046B4();
      _os_log_impl(v142, v143, v144, v145, v146, v147);
      sub_1C440962C(v49);
      v148 = sub_1C43FEF7C();
      MEMORY[0x1C6942830](v148);
      v149 = sub_1C4425FC4();
      MEMORY[0x1C6942830](v149);
LABEL_42:

      sub_1C45CF650();
      sub_1C441C114();
      v152 = swift_allocError();
      sub_1C44060DC(v152, v153);
      swift_willThrow();
      sub_1C4485F24();

      goto LABEL_43;
    }

LABEL_41:
    v150 = sub_1C4462464();
    v151(v150);
    goto LABEL_42;
  }

  v154 = sub_1C441E688();
  v155(v154);
  sub_1C44606F4();
  if (!v156)
  {
    sub_1C4419274();
    swift_once();
  }

  v157 = sub_1C4F00978();
  sub_1C442B738(v157, qword_1EDE2DE10);
  v158 = sub_1C447F2A4();
  v159(v158);
  sub_1C4410278(&v303);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v160 = sub_1C4F00968();
  v161 = sub_1C4F01CB8();

  if (sub_1C441ED60())
  {
    sub_1C4480408();
    v161 = swift_slowAlloc();
    sub_1C443FD74();
    v162 = swift_slowAlloc();
    sub_1C44A3BF0(v162);
    v163 = sub_1C44249EC(4.8453e-34);
    sub_1C44587AC(v163);
    sub_1C4407A84();
    sub_1C44CD238(v164, v165);
    sub_1C446BCDC();
    v166 = sub_1C4436664();
    v167(v166);
    v168 = sub_1C43FBC98();
    sub_1C441D828(v168, v169, v170);
    sub_1C441C818();
    v160 = v292;

    sub_1C445C200();
    sub_1C442A9A8(&dword_1C43F8000, v171, v172, "Source: generating identifier for: %{private}s : %s : %{BOOL}d");
    sub_1C449AF00();
    v173 = sub_1C4408D20();
    MEMORY[0x1C6942830](v173);
    v174 = sub_1C445E9A8();
    MEMORY[0x1C6942830](v174);

    sub_1C442A76C();
  }

  else
  {

    v175 = sub_1C449528C();
    v176(v175);
    sub_1C443EF60();
  }

  sub_1C4B2AA80();
  sub_1C4B2A9A4();
  v177 = v300[0];
  v178 = v300[1];
  sub_1C4F01178();
  sub_1C4405BE0();
  sub_1C4F01148();
  v179 = sub_1C441DE48();
  v180(v179);
  if (v160 >> 60 == 15)
  {

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v181 = sub_1C4B2AA9C();
    v182 = sub_1C4F01CD8();

    if (os_log_type_enabled(v181, v182))
    {
      sub_1C43FECF0();
      v183 = swift_slowAlloc();
      sub_1C43FEC60();
      v184 = swift_slowAlloc();
      sub_1C44180A8(v184);
      *v183 = 136380675;
      v185 = sub_1C4404DC8();
      v188 = sub_1C441D828(v185, v186, v187);

      *(v183 + 4) = v188;
      sub_1C44AE8E0(&dword_1C43F8000, v189, v190, "Source: failed to encode identifier as UTF8 data: %{private}s");
      sub_1C440962C(v49);
      v191 = sub_1C43FEF7C();
      MEMORY[0x1C6942830](v191);
      v192 = sub_1C4408D20();
      MEMORY[0x1C6942830](v192);
    }

    else
    {
    }

    v223 = sub_1C4434234();
    v224(v223);
    v225 = sub_1C4F00968();
    sub_1C4F01CD8();
    v226 = sub_1C44016D0();
    if (os_log_type_enabled(v226, v227))
    {
      sub_1C43FECF0();
      swift_slowAlloc();
      sub_1C43FC858();
      v228 = swift_slowAlloc();
      sub_1C44180A8(v228);
      *v160 = 136315138;
      v229 = *(v177 + 16);
      v230 = *(v177 + 24);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v231 = sub_1C448056C();
      v232(v231);
      sub_1C448F1C0();
      sub_1C4B2A8F8();
      *(v160 + 4) = v229;
      sub_1C44046B4();
      _os_log_impl(v233, v234, v235, v236, v237, v238);
      sub_1C440962C(v49);
      v239 = sub_1C43FEF7C();
      MEMORY[0x1C6942830](v239);
      v240 = sub_1C4425FC4();
      MEMORY[0x1C6942830](v240);
    }

    else
    {
      v273 = sub_1C448056C();
      v274(v273);
    }

    sub_1C45CF650();
    sub_1C441C114();
    swift_allocError();
    sub_1C441B4F8(v275, 5);
    swift_willThrow();
    sub_1C4485F24();

    v276 = sub_1C4432980();
    v277(v276);
    goto LABEL_43;
  }

  sub_1C44D0B54();
  sub_1C442D2CC();
  sub_1C44CD238(v193, v194);
  sub_1C4469240();
  v195 = sub_1C4404DC8();
  sub_1C44344B8(v195, v196);
  v197 = sub_1C4404DC8();
  sub_1C447E790(v197, v198);
  sub_1C4440A4C();
  v199 = sub_1C443F33C(&v299);
  v200(v199);
  v201 = sub_1C44411F4();
  v202(v201);
  v203 = sub_1C44105A8();
  v204(v203);
  sub_1C4424D48();
  v205 = sub_1C4404DC8();
  sub_1C441DFEC(v205, v206);
  v207 = sub_1C44A14CC();
  v208(v207);
  v209 = sub_1C4415C44();
  v210(v209);
  v211 = sub_1C44224A0();
  v212(v211);
  sub_1C440BC84(&v294);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v213 = sub_1C4B2AA9C();
  sub_1C4F01CF8();
  sub_1C4404CE0();

  if (os_log_type_enabled(v213, v160))
  {
    v161 = sub_1C440F274();
    sub_1C443FD74();
    v214 = swift_slowAlloc();
    sub_1C449DB28(v214);
    *v161 = 136380931;
    sub_1C4417750();
    sub_1C44CD238(v215, v216);
    sub_1C4F02858();
    v217 = *(v22 + 8);
    v22 += 8;
    sub_1C4433DD4();
    *(v218 - 256) = v219;
    v219();
    sub_1C44805EC();
    sub_1C44D3FDC();
    *(v161 + 14) = sub_1C44513AC();
    sub_1C4416B30(&dword_1C43F8000, v220, v221, "StandardEntityMapper: createNestedEntityRows: %{private}s isA %s");
    sub_1C4457944();
    v222 = sub_1C4425FC4();
    MEMORY[0x1C6942830](v222);
    sub_1C442A76C();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {

    v241 = sub_1C447F5DC();
    v242(v241);
  }

  v243 = sub_1C441C480();
  v244(v243);
  sub_1C4B2A910();
  v245 = v49 + *(v22 + 24);
  sub_1C4EFF888();
  v246 = v49 + *(v22 + 28);
  sub_1C4EFEC38();
  v247 = *(v22 + 36);
  sub_1C44036D4();
  sub_1C448D088();
  sub_1C4EF9AE8();
  v249 = sub_1C440C6D8(v248);
  sub_1C4401EC4(v249, v250, v251, MEMORY[0x1E69E7CC0]);
  sub_1C44290B0(v252);
  if (v253)
  {
    sub_1C4401DCC();
    sub_1C44C9240(v286, v287, v288, v161);
    v161 = v289;
  }

  *(v161 + 16) = v213;
  sub_1C43FBF6C();
  v255 = *(v254 + 72);
  sub_1C43FDDE8();
  sub_1C44DD800();
  sub_1C44419A8();
  if (v49)
  {
    v257 = v256 + 32;
    v295 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1C443F750();
      sub_1C4464B9C();
      v258 = [v293 __swift_objectForKeyedSubscript_];
      sub_1C441D28C();
      swift_unknownObjectRelease();
      if (v160)
      {
        sub_1C4F02078();
        swift_unknownObjectRelease();
        sub_1C4420C3C(&v297, &qword_1EC0BCD10, &qword_1C4F0C8C0);
        sub_1C4462050();
        v260 = v291 == v259 && v213 == 0xEA00000000007265;
        if (v260 || (sub_1C442BB94(), (sub_1C441D39C() & 1) != 0))
        {
          sub_1C44142D8();
          v160 = v178;
          v261 = sub_1C4EFF048();
          sub_1C44A1DB0(v261);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C44E3634(v300);
          v178 = v295;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v264 = *(v178 + 16);
            sub_1C43FCEC0();
            sub_1C458A900();
            v178 = v265;
          }

          sub_1C441D740();
          if (v253)
          {
            sub_1C4B2A9D8();
            v295 = v266;
          }

          sub_1C442BF0C();
          goto LABEL_84;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v270 = *(v295 + 16);
          sub_1C43FCEC0();
          sub_1C458A900();
          v295 = v271;
        }

        sub_1C445A9DC();
        if (v253)
        {
          sub_1C4401DCC();
          sub_1C458A900();
          v295 = v272;
        }

        sub_1C4488978();
      }

      else
      {
        sub_1C445543C();
        sub_1C4420C3C(&v297, &qword_1EC0BCD10, &qword_1C4F0C8C0);
        v262 = v296;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v267 = *(v262 + 16);
          sub_1C43FCEC0();
          sub_1C458A900();
          v262 = v268;
        }

        sub_1C4475284();
        if (v253)
        {
          sub_1C4401DCC();
          sub_1C458A900();
          v262 = v269;
        }

        *(v262 + 16) = v213;
        v263 = v262;
      }

      sub_1C4416850(v263);
LABEL_84:
      v257 += 64;
      v49 = (v49 - 1);
      if (!v49)
      {
        goto LABEL_89;
      }
    }
  }

  v295 = MEMORY[0x1E69E7CC0];
LABEL_89:
  sub_1C440A050();
  if (v21)
  {
    sub_1C4485F24();

    v278 = sub_1C442F39C();
    v279(v278);
    v280 = sub_1C4432980();
    v281(v280);
  }

  else
  {

    sub_1C4B2A9F4();
    sub_1C44346EC();
    sub_1C445FE78();
    sub_1C441C818();

    sub_1C4B2A9F4();
    sub_1C4485F24();
    sub_1C4B2A970();
    v282 = sub_1C441CD7C();
    v283(v282);
    v284 = sub_1C4408FB4();
    v285(v284);
  }

LABEL_43:
  sub_1C43FBC80();
}

void sub_1C4B2294C(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, unint64_t a11, uint64_t a12)
{
  v222 = a8;
  v229 = a7;
  v225 = a5;
  v208 = a4;
  v230 = a2;
  v227 = a1;
  v236 = a12;
  v237 = a11;
  v235 = a10;
  v219 = type metadata accessor for EntityTriple(0);
  v221 = *(v219 - 8);
  v14 = *(v221 + 64);
  MEMORY[0x1EEE9AC00](v219);
  v220 = &v197[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v214 = sub_1C4F00DD8();
  v213 = *(v214 - 8);
  v16 = *(v213 + 64);
  MEMORY[0x1EEE9AC00](v214);
  v211 = &v197[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v216 = sub_1C4F00DC8();
  v215 = *(v216 - 8);
  v18 = *(v215 + 64);
  v19 = MEMORY[0x1EEE9AC00](v216);
  v210 = &v197[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v212 = &v197[-v21];
  v22 = sub_1C4F01188();
  v223 = *(v22 - 8);
  v23 = *(v223 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v197[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v228 = sub_1C4EFF0C8();
  v224 = *(v228 - 8);
  v26 = *(v224 + 64);
  v27 = MEMORY[0x1EEE9AC00](v228);
  v218 = &v197[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = MEMORY[0x1EEE9AC00](v27);
  v209 = &v197[-v30];
  MEMORY[0x1EEE9AC00](v29);
  v233 = &v197[-v31];
  v32 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v35 = &v197[-v34];
  v36 = sub_1C4EFD548();
  v232 = *(v36 - 8);
  v37 = *(v232 + 64);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v40 = &v197[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v41 = MEMORY[0x1EEE9AC00](v38);
  v43 = &v197[-v42];
  MEMORY[0x1EEE9AC00](v41);
  v231 = &v197[-v44];
  *&v238 = 0x657473654E444D5FLL;
  *(&v238 + 1) = 0xEF797469746E4564;
  v45 = sub_1C4F029C8();
  v234 = a3;
  v46 = [a3 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  v226 = a6;
  if (v46)
  {
    sub_1C4F02078();
    swift_unknownObjectRelease();
  }

  else
  {
    v238 = 0u;
    v239 = 0u;
  }

  v240 = v238;
  v241 = v239;
  if (!*(&v239 + 1))
  {
    sub_1C4420C3C(&v240, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_9;
  }

  sub_1C4B2A2B4();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v50 = v237;
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v51 = sub_1C4F00978();
    sub_1C442B738(v51, qword_1EDE2DE10);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v52 = sub_1C4F00968();
    v53 = sub_1C4F01CD8();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *&v240 = v55;
      *v54 = 136315138;
      *(v54 + 4) = sub_1C441D828(v235, v50, &v240);
      _os_log_impl(&dword_1C43F8000, v52, v53, "Mapping error, nested entity missing metadata in map, %s", v54, 0xCu);
      sub_1C440962C(v55);
      MEMORY[0x1C6942830](v55, -1, -1);
      MEMORY[0x1C6942830](v54, -1, -1);
    }

    sub_1C45CF650();
    swift_allocError();
    *v56 = 1;
    swift_willThrow();
    return;
  }

  v206 = v36;
  v47 = v243;
  *&v238 = 0x79747265706F7270;
  *(&v238 + 1) = 0xEB0000000070614DLL;
  v48 = sub_1C4F029C8();
  v207 = v47;
  v49 = [v47 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v49)
  {
    sub_1C4F02078();
    swift_unknownObjectRelease();
  }

  else
  {
    v238 = 0u;
    v239 = 0u;
  }

  v240 = v238;
  v241 = v239;
  if (!*(&v239 + 1))
  {
    sub_1C4420C3C(&v240, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_20;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    v59 = v237;
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v60 = sub_1C4F00978();
    sub_1C442B738(v60, qword_1EDE2DE10);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v61 = sub_1C4F00968();
    v62 = sub_1C4F01CD8();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      *&v240 = v64;
      *v63 = 136315138;
      *(v63 + 4) = sub_1C441D828(v235, v59, &v240);
      _os_log_impl(&dword_1C43F8000, v61, v62, "Mapping error missing property map for  %s", v63, 0xCu);
      sub_1C440962C(v64);
      MEMORY[0x1C6942830](v64, -1, -1);
      MEMORY[0x1C6942830](v63, -1, -1);
    }

    sub_1C45CF650();
    swift_allocError();
    *v65 = 1;
    swift_willThrow();

    return;
  }

  v57 = v243;
  *&v238 = 1701869940;
  *(&v238 + 1) = 0xE400000000000000;
  v58 = [v207 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v58)
  {
    sub_1C4F02078();
    swift_unknownObjectRelease();
  }

  else
  {
    v238 = 0u;
    v239 = 0u;
  }

  v66 = v206;
  v240 = v238;
  v241 = v239;
  if (!*(&v239 + 1))
  {
    sub_1C4420C3C(&v240, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_34;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_34:
    v75 = v237;
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v76 = sub_1C4F00978();
    sub_1C442B738(v76, qword_1EDE2DE10);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v70 = sub_1C4F00968();
    v71 = sub_1C4F01CD8();

    if (!os_log_type_enabled(v70, v71))
    {
      goto LABEL_39;
    }

    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    *&v240 = v73;
    *v72 = 136315138;
    *(v72 + 4) = sub_1C441D828(v235, v75, &v240);
    v74 = "Mapping error missing type for  %s";
    goto LABEL_38;
  }

  v67 = v243;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v203 = v67;
  sub_1C4EFD2E8();
  if (sub_1C44157D4(v35, 1, v66) == 1)
  {

    sub_1C4420C3C(v35, &qword_1EC0B8568, &unk_1C4F319B0);
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v68 = sub_1C4F00978();
    sub_1C442B738(v68, qword_1EDE2DE10);
    v69 = v237;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v70 = sub_1C4F00968();
    v71 = sub_1C4F01CD8();

    if (!os_log_type_enabled(v70, v71))
    {
      goto LABEL_39;
    }

    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    *&v240 = v73;
    *v72 = 136315138;
    *(v72 + 4) = sub_1C441D828(v235, v69, &v240);
    v74 = "Mapping error type is not recognized as an EntityClass %s";
LABEL_38:
    _os_log_impl(&dword_1C43F8000, v70, v71, v74, v72, 0xCu);
    sub_1C440962C(v73);
    MEMORY[0x1C6942830](v73, -1, -1);
    MEMORY[0x1C6942830](v72, -1, -1);
LABEL_39:

    sub_1C45CF650();
    swift_allocError();
    *v77 = 1;
    swift_willThrow();

    return;
  }

  v204 = *(&v67 + 1);
  v205 = v57;
  v78 = v232;
  v79 = v231;
  (*(v232 + 32))(v231, v35, v66);
  if (qword_1EDDFD028 != -1)
  {
    swift_once();
  }

  v80 = sub_1C4F00978();
  v81 = sub_1C442B738(v80, qword_1EDE2DE10);
  v82 = *(v78 + 16);
  v200 = v78 + 16;
  v199 = v82;
  v82(v43, v79, v66);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v201 = v81;
  v83 = sub_1C4F00968();
  v84 = sub_1C4F01CB8();

  v198 = v84;
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    *&v240 = v86;
    *v85 = 136381187;
    *(v85 + 4) = sub_1C441D828(v227, v230, &v240);
    *(v85 + 12) = 2080;
    sub_1C44CD238(&qword_1EDDFA220, MEMORY[0x1E69A92C8]);
    v87 = v83;
    v88 = sub_1C4F02858();
    v90 = v89;
    v202 = *(v232 + 8);
    v202(v43, v206);
    v91 = sub_1C441D828(v88, v90, &v240);
    v66 = v206;

    *(v85 + 14) = v91;
    *(v85 + 22) = 1024;
    *(v85 + 24) = 0;
    _os_log_impl(&dword_1C43F8000, v87, v198, "Source: generating identifier for: %{private}s : %s : %{BOOL}d", v85, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1C6942830](v86, -1, -1);
    MEMORY[0x1C6942830](v85, -1, -1);

    v92 = v227;
    v93 = v229;
    v94 = v230;
  }

  else
  {

    v202 = *(v232 + 8);
    v202(v43, v66);
    v93 = v229;
    v94 = v230;
    v92 = v227;
  }

  v96 = *v93;
  v95 = v93[1];
  *&v240 = v92;
  *(&v240 + 1) = v94;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v96, v95);
  v97 = v240;
  sub_1C4F01178();
  v98 = sub_1C4F01148();
  v100 = v99;
  (*(v223 + 8))(v25, v22);
  if (v100 >> 60 == 15)
  {

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v101 = sub_1C4F00968();
    v102 = sub_1C4F01CD8();

    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      *&v240 = v104;
      *v103 = 136380675;
      v105 = sub_1C441D828(v97, *(&v97 + 1), &v240);

      *(v103 + 4) = v105;
      _os_log_impl(&dword_1C43F8000, v101, v102, "Source: failed to encode identifier as UTF8 data: %{private}s", v103, 0xCu);
      sub_1C440962C(v104);
      MEMORY[0x1C6942830](v104, -1, -1);
      MEMORY[0x1C6942830](v103, -1, -1);
    }

    else
    {
    }

    v130 = v205;
    v131 = v237;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v132 = sub_1C4F00968();
    v133 = sub_1C4F01CD8();

    if (os_log_type_enabled(v132, v133))
    {
      v134 = swift_slowAlloc();
      v135 = swift_slowAlloc();
      *&v240 = v135;
      *v134 = 136315138;
      *(v134 + 4) = sub_1C441D828(v235, v131, &v240);
      _os_log_impl(&dword_1C43F8000, v132, v133, "Mapping error failed to generate EntityIdentifier for %s", v134, 0xCu);
      sub_1C440962C(v135);
      MEMORY[0x1C6942830](v135, -1, -1);
      MEMORY[0x1C6942830](v134, -1, -1);
    }

    v136 = v206;
    v137 = v231;
    sub_1C45CF650();
    swift_allocError();
    *v138 = 5;
    swift_willThrow();

    v202(v137, v136);
    return;
  }

  LODWORD(v235) = a9;

  sub_1C44CD238(&qword_1EDDFEAD0, MEMORY[0x1E6966620]);
  v106 = v211;
  v107 = v214;
  v108 = v100;
  sub_1C4F00DB8();
  sub_1C44344B8(v98, v100);
  v109 = v217;
  sub_1C4498FD8(v98, v100);
  v217 = v109;
  sub_1C441DFEC(v98, v100);
  v110 = v212;
  sub_1C4F00DA8();
  (*(v213 + 8))(v106, v107);
  v199(v40, v231, v66);
  v111 = v215;
  v112 = v216;
  (*(v215 + 16))(v210, v110, v216);
  v113 = v209;
  sub_1C4EFF028();
  sub_1C441DFEC(v98, v108);
  (*(v111 + 8))(v110, v112);
  v114 = v224;
  v115 = v233;
  v116 = v228;
  (*(v224 + 32))(v233, v113, v228);
  v117 = v218;
  v237 = *(v114 + 16);
  (v237)(v218, v115, v116);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v118 = sub_1C4F00968();
  v119 = sub_1C4F01CF8();

  if (os_log_type_enabled(v118, v119))
  {
    v120 = swift_slowAlloc();
    v236 = swift_slowAlloc();
    *&v240 = v236;
    *v120 = 136380931;
    sub_1C44CD238(&qword_1EDDFE810, MEMORY[0x1E69A9810]);
    v121 = v119;
    v122 = sub_1C4F02858();
    v124 = v123;
    v218 = *(v114 + 8);
    (v218)(v117, v228);
    v125 = sub_1C441D828(v122, v124, &v240);
    v116 = v228;

    *(v120 + 4) = v125;
    *(v120 + 12) = 2080;
    v126 = v203;
    *(v120 + 14) = sub_1C441D828(v203, v204, &v240);
    _os_log_impl(&dword_1C43F8000, v118, v121, "StandardEntityMapper: createNestedEntityRows: %{private}s isA %s", v120, 0x16u);
    v127 = v236;
    swift_arrayDestroy();
    MEMORY[0x1C6942830](v127, -1, -1);
    v128 = v120;
    v66 = v206;
    MEMORY[0x1C6942830](v128, -1, -1);

    v129 = v225;
  }

  else
  {

    v218 = *(v114 + 8);
    (v218)(v117, v116);
    v129 = v225;
    v126 = v203;
  }

  v139 = v220;
  (v237)(v220, v115, v116);
  v140 = v219;
  v141 = &v139[*(v219 + 20)];
  sub_1C4EFEBB8();
  v142 = &v139[v140[6]];
  sub_1C4EFF888();
  v143 = &v139[v140[7]];
  sub_1C4EFEC38();
  v144 = v140[9];
  sub_1C448D088();
  sub_1C4EF9AE8();
  v145 = &v139[v140[8]];
  v146 = v204;
  *v145 = v126;
  v145[1] = v146;
  v147 = &v139[v140[10]];
  v148 = v226;
  *v147 = v129;
  v147[1] = v148;
  *&v139[v140[11]] = v149;
  v139[v140[12]] = v235;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44C9240(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v219 = v150;
  v152 = *(v150 + 16);
  v151 = *(v150 + 24);
  if (v152 >= v151 >> 1)
  {
    sub_1C44C9240(v151 > 1, v152 + 1, 1, v219);
    v219 = v196;
  }

  v153 = v205;
  v154 = v234;
  v155 = v219;
  *(v219 + 16) = v152 + 1;
  v156 = v155 + ((*(v221 + 80) + 32) & ~*(v221 + 80));
  v157 = *(v221 + 72);
  sub_1C44DD800();
  v244 = v155;
  v158 = *(v222 + 16);
  if (v158)
  {
    v159 = (v222 + 32);
    v236 = MEMORY[0x1E69E7CC0];
    v237 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v160 = v159[1];
      v240 = *v159;
      v241 = v160;
      *v242 = v159[2];
      *&v242[9] = *(v159 + 41);
      v161 = v240;
      v243 = v240;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C45D17A0(&v240, &v238);
      v162 = [v154 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v162)
      {
        sub_1C4F02078();
        swift_unknownObjectRelease();
        sub_1C4420C3C(&v238, &qword_1EC0BCD10, &qword_1C4F0C8C0);
        v163 = v161 == 0x696669746E656469 && *(&v161 + 1) == 0xEA00000000007265;
        if (v163 || (sub_1C4F02938() & 1) != 0)
        {
          LODWORD(v230) = v242[24];
          v165 = *&v242[8];
          v164 = *&v242[16];
          v227 = *v242;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v223 = sub_1C4EFF048();
          v167 = v166;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C44E3634(&v240);
          v168 = v237;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v182 = *(v168 + 16);
            sub_1C458A900();
            v168 = v183;
          }

          v170 = *(v168 + 16);
          v169 = *(v168 + 24);
          v237 = v168;
          if (v170 >= v169 >> 1)
          {
            sub_1C458A900();
            v237 = v184;
          }

          v171 = v237;
          *(v237 + 16) = v170 + 1;
          v172 = v171 + (v170 << 6);
          *(v172 + 32) = v161;
          *(v172 + 48) = v223;
          *(v172 + 56) = v167;
          *(v172 + 64) = v227;
          *(v172 + 72) = v165;
          *(v172 + 80) = v164;
          *(v172 + 88) = v230;
          v153 = v205;
          v66 = v206;
          v154 = v234;
          v115 = v233;
          goto LABEL_81;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v188 = *(v237 + 16);
          sub_1C458A900();
          v237 = v189;
        }

        v66 = v206;
        v175 = *(v237 + 16);
        v176 = v175 + 1;
        if (v175 >= *(v237 + 24) >> 1)
        {
          sub_1C458A900();
          v237 = v190;
        }

        v177 = v237;
      }

      else
      {
        v238 = 0u;
        v239 = 0u;
        sub_1C4420C3C(&v238, &qword_1EC0BCD10, &qword_1C4F0C8C0);
        v173 = v236;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v185 = *(v173 + 16);
          sub_1C458A900();
          v173 = v186;
        }

        v66 = v206;
        v175 = *(v173 + 16);
        v174 = *(v173 + 24);
        v236 = v173;
        v176 = v175 + 1;
        if (v175 >= v174 >> 1)
        {
          sub_1C458A900();
          v236 = v187;
        }

        v177 = v236;
      }

      *(v177 + 16) = v176;
      v178 = (v177 + (v175 << 6));
      v179 = v240;
      v180 = v241;
      v181 = *v242;
      *(v178 + 73) = *&v242[9];
      v178[3] = v180;
      v178[4] = v181;
      v178[2] = v179;
LABEL_81:
      v159 += 4;
      if (!--v158)
      {
        goto LABEL_84;
      }
    }
  }

  v236 = MEMORY[0x1E69E7CC0];
  v237 = MEMORY[0x1E69E7CC0];
LABEL_84:
  v191 = v217;
  sub_1C4B1E304();
  if (v191)
  {

    (v218)(v115, v228);
    v202(v231, v66);
  }

  else
  {
    v193 = v192;

    sub_1C49D3614(v193);
    sub_1C4B1E304();
    v195 = v194;

    sub_1C49D3614(v195);

    (v218)(v115, v228);
    v202(v231, v206);
  }
}

void sub_1C4B24698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v23;
  a20 = v24;
  v33 = sub_1C441EE94(v25, v26, v27, v28, v29, v30, v31, v32);
  v34 = sub_1C43FFAE0(v33, v302);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v37);
  v38 = sub_1C4F00DD8();
  v39 = sub_1C43FFAE0(v38, v300);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v42);
  v43 = sub_1C4F00DC8();
  v44 = sub_1C43FFAE0(v43, &v301);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FD230();
  sub_1C43FD2C8(v48);
  v49 = sub_1C4F01188();
  v50 = sub_1C43FCDF8(v49);
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v50);
  sub_1C43FBCC4();
  v53 = sub_1C4B2AA0C();
  v54 = sub_1C43FFAE0(v53, &a12);
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v54);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v57);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v58);
  sub_1C43FD230();
  sub_1C43FCE30(v59);
  v60 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  sub_1C43FBD18(v60);
  v62 = *(v61 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v63);
  v64 = sub_1C447CE30();
  v65 = sub_1C43FCDF8(v64);
  v67 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v65);
  sub_1C43FBD08();
  sub_1C44146B8();
  MEMORY[0x1EEE9AC00](v68);
  sub_1C441B420();
  MEMORY[0x1EEE9AC00](v69);
  sub_1C43FD230();
  sub_1C43FCE30(v70);
  sub_1C442023C();
  v297 = v71;
  v298 = v72;
  v73 = sub_1C4F029C8();
  v74 = sub_1C447E480(v73, sel___swift_objectForKeyedSubscript_);
  swift_unknownObjectRelease();
  if (v74)
  {
    sub_1C4F02078();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C445543C();
  }

  sub_1C4434224();
  if (!v75)
  {
    sub_1C4420C3C(v300, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_9;
  }

  v76 = sub_1C4B2A2B4();
  sub_1C44EB8EC();
  if ((sub_1C4B2A958() & 1) == 0)
  {
LABEL_9:
    sub_1C44606F4();
    if (!v156)
    {
      sub_1C4419274();
      swift_once();
    }

    v82 = sub_1C4F00978();
    sub_1C442B738(v82, qword_1EDE2DE10);
    v83 = sub_1C440E728();
    v84(v83);
    v85 = sub_1C4F00968();
    sub_1C4F01CD8();
    v86 = sub_1C44016D0();
    if (os_log_type_enabled(v86, v87))
    {
      sub_1C43FECF0();
      swift_slowAlloc();
      sub_1C43FC858();
      v88 = swift_slowAlloc();
      sub_1C44180A8(v88);
      sub_1C4488458(4.8149e-34);
      v89 = sub_1C4462464();
      v90(v89);
      sub_1C448F1C0();
      sub_1C4B2A8F8();
      *(v20 + 4) = v22;
      sub_1C44046B4();
      _os_log_impl(v91, v92, v93, v94, v95, v96);
      sub_1C440962C(v49);
      v97 = sub_1C43FEF7C();
      MEMORY[0x1C6942830](v97);
      v98 = sub_1C4425FC4();
      MEMORY[0x1C6942830](v98);
    }

    else
    {
      v99 = sub_1C4462464();
      v100(v99);
    }

    sub_1C45CF650();
    sub_1C441C114();
    v101 = swift_allocError();
    sub_1C44060DC(v101, v102);
    swift_willThrow();
    goto LABEL_43;
  }

  v291 = v64;
  v77 = v302[4];
  sub_1C4414EA8();
  v297 = v78;
  v298 = v79;
  v80 = sub_1C4F029C8();
  v81 = sub_1C44AB1A0(v80, sel___swift_objectForKeyedSubscript_);
  sub_1C44A1C64();
  swift_unknownObjectRelease();
  if (v77)
  {
    sub_1C4B2A9C0();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C445543C();
  }

  sub_1C4434224();
  if (!v103)
  {
    sub_1C4420C3C(v300, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_21;
  }

  sub_1C44EB8EC();
  if ((sub_1C4B2A958() & 1) == 0)
  {
LABEL_21:
    sub_1C44606F4();
    if (!v156)
    {
      sub_1C4419274();
      swift_once();
    }

    v106 = sub_1C4F00978();
    sub_1C442B738(v106, qword_1EDE2DE10);
    v107 = sub_1C440E728();
    v108(v107);
    v109 = sub_1C4F00968();
    sub_1C4F01CD8();
    v110 = sub_1C44016D0();
    if (os_log_type_enabled(v110, v111))
    {
      sub_1C43FECF0();
      swift_slowAlloc();
      sub_1C43FC858();
      v112 = swift_slowAlloc();
      sub_1C44180A8(v112);
      sub_1C4488458(4.8149e-34);
      v113 = sub_1C4462464();
      v114(v113);
      sub_1C448F1C0();
      sub_1C4B2A8F8();
      *(v20 + 4) = v22;
      sub_1C44046B4();
      _os_log_impl(v115, v116, v117, v118, v119, v120);
      sub_1C440962C(v49);
      v121 = sub_1C43FEF7C();
      MEMORY[0x1C6942830](v121);
      v122 = sub_1C4425FC4();
      MEMORY[0x1C6942830](v122);
    }

    else
    {
      v123 = sub_1C4462464();
      v124(v123);
    }

    sub_1C45CF650();
    sub_1C441C114();
    v125 = swift_allocError();
    sub_1C44060DC(v125, v126);
    swift_willThrow();
    sub_1C4485F24();
    goto LABEL_43;
  }

  sub_1C4440DBC();
  v104 = sub_1C4F029C8();
  v105 = sub_1C44D3E0C(v104, sel___swift_objectForKeyedSubscript_);
  sub_1C44A1C64();
  swift_unknownObjectRelease();
  if (v77)
  {
    sub_1C4B2A9C0();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C445543C();
  }

  sub_1C4434224();
  if (!v127)
  {
    sub_1C4420C3C(v300, &qword_1EC0BCD10, &qword_1C4F0C8C0);
LABEL_37:
    sub_1C44606F4();
    if (!v156)
    {
      sub_1C4419274();
      swift_once();
    }

    v134 = sub_1C4F00978();
    sub_1C442B738(v134, qword_1EDE2DE10);
    v135 = sub_1C440E728();
    v136(v135);
    v131 = sub_1C4F00968();
    sub_1C4F01CD8();
    v137 = sub_1C44016D0();
    if (os_log_type_enabled(v137, v138))
    {
      goto LABEL_40;
    }

    goto LABEL_41;
  }

  sub_1C44EB8EC();
  if ((sub_1C445FDA0() & 1) == 0)
  {
    goto LABEL_37;
  }

  sub_1C44562D0();
  sub_1C4B2AA28();
  sub_1C4405CEC();
  if (v156)
  {

    sub_1C4420C3C(v20, &qword_1EC0B8568, &unk_1C4F319B0);
    sub_1C44606F4();
    if (!v156)
    {
      sub_1C4419274();
      swift_once();
    }

    v128 = sub_1C4F00978();
    sub_1C442B738(v128, qword_1EDE2DE10);
    sub_1C443DFBC();
    v129 = sub_1C443FF6C();
    v130(v129);
    v131 = sub_1C4F00968();
    sub_1C4F01CD8();
    v132 = sub_1C44016D0();
    v76 = v290;
    if (os_log_type_enabled(v132, v133))
    {
LABEL_40:
      sub_1C43FECF0();
      swift_slowAlloc();
      sub_1C43FC858();
      v139 = swift_slowAlloc();
      sub_1C44180A8(v139);
      sub_1C4488458(4.8149e-34);
      v140 = sub_1C4462464();
      v141(v140);
      sub_1C448F1C0();
      sub_1C4B2A8F8();
      *(v20 + 4) = v22;
      sub_1C44046B4();
      _os_log_impl(v142, v143, v144, v145, v146, v147);
      sub_1C440962C(v49);
      v148 = sub_1C43FEF7C();
      MEMORY[0x1C6942830](v148);
      v149 = sub_1C4425FC4();
      MEMORY[0x1C6942830](v149);
LABEL_42:

      sub_1C45CF650();
      sub_1C441C114();
      v152 = swift_allocError();
      sub_1C44060DC(v152, v153);
      swift_willThrow();
      sub_1C4485F24();

      goto LABEL_43;
    }

LABEL_41:
    v150 = sub_1C4462464();
    v151(v150);
    goto LABEL_42;
  }

  v154 = sub_1C441E688();
  v155(v154);
  sub_1C44606F4();
  if (!v156)
  {
    sub_1C4419274();
    swift_once();
  }

  v157 = sub_1C4F00978();
  sub_1C442B738(v157, qword_1EDE2DE10);
  v158 = sub_1C447F2A4();
  v159(v158);
  sub_1C4410278(&v303);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v160 = sub_1C4F00968();
  v161 = sub_1C4F01CB8();

  if (sub_1C441ED60())
  {
    sub_1C4480408();
    v161 = swift_slowAlloc();
    sub_1C443FD74();
    v162 = swift_slowAlloc();
    sub_1C44A3BF0(v162);
    v163 = sub_1C44249EC(4.8453e-34);
    sub_1C44587AC(v163);
    sub_1C4407A84();
    sub_1C44CD238(v164, v165);
    sub_1C446BCDC();
    v166 = sub_1C4436664();
    v167(v166);
    v168 = sub_1C43FBC98();
    sub_1C441D828(v168, v169, v170);
    sub_1C441C818();
    v160 = v292;

    sub_1C445C200();
    sub_1C442A9A8(&dword_1C43F8000, v171, v172, "Source: generating identifier for: %{private}s : %s : %{BOOL}d");
    sub_1C449AF00();
    v173 = sub_1C4408D20();
    MEMORY[0x1C6942830](v173);
    v174 = sub_1C445E9A8();
    MEMORY[0x1C6942830](v174);

    sub_1C442A76C();
  }

  else
  {

    v175 = sub_1C449528C();
    v176(v175);
    sub_1C443EF60();
  }

  sub_1C4B2AA80();
  sub_1C4B2A9A4();
  v177 = v300[0];
  v178 = v300[1];
  sub_1C4F01178();
  sub_1C4405BE0();
  sub_1C4F01148();
  v179 = sub_1C441DE48();
  v180(v179);
  if (v160 >> 60 == 15)
  {

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v181 = sub_1C4B2AA9C();
    v182 = sub_1C4F01CD8();

    if (os_log_type_enabled(v181, v182))
    {
      sub_1C43FECF0();
      v183 = swift_slowAlloc();
      sub_1C43FEC60();
      v184 = swift_slowAlloc();
      sub_1C44180A8(v184);
      *v183 = 136380675;
      v185 = sub_1C4404DC8();
      v188 = sub_1C441D828(v185, v186, v187);

      *(v183 + 4) = v188;
      sub_1C44AE8E0(&dword_1C43F8000, v189, v190, "Source: failed to encode identifier as UTF8 data: %{private}s");
      sub_1C440962C(v49);
      v191 = sub_1C43FEF7C();
      MEMORY[0x1C6942830](v191);
      v192 = sub_1C4408D20();
      MEMORY[0x1C6942830](v192);
    }

    else
    {
    }

    v223 = sub_1C4434234();
    v224(v223);
    v225 = sub_1C4F00968();
    sub_1C4F01CD8();
    v226 = sub_1C44016D0();
    if (os_log_type_enabled(v226, v227))
    {
      sub_1C43FECF0();
      swift_slowAlloc();
      sub_1C43FC858();
      v228 = swift_slowAlloc();
      sub_1C44180A8(v228);
      *v160 = 136315138;
      v229 = *v177;
      v230 = v177[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v231 = sub_1C448056C();
      v232(v231);
      sub_1C448F1C0();
      sub_1C4B2A8F8();
      *(v160 + 4) = v229;
      sub_1C44046B4();
      _os_log_impl(v233, v234, v235, v236, v237, v238);
      sub_1C440962C(v49);
      v239 = sub_1C43FEF7C();
      MEMORY[0x1C6942830](v239);
      v240 = sub_1C4425FC4();
      MEMORY[0x1C6942830](v240);
    }

    else
    {
      v273 = sub_1C448056C();
      v274(v273);
    }

    sub_1C45CF650();
    sub_1C441C114();
    swift_allocError();
    sub_1C441B4F8(v275, 5);
    swift_willThrow();
    sub_1C4485F24();

    v276 = sub_1C4432980();
    v277(v276);
    goto LABEL_43;
  }

  sub_1C44D0B54();
  sub_1C442D2CC();
  sub_1C44CD238(v193, v194);
  sub_1C4469240();
  v195 = sub_1C4404DC8();
  sub_1C44344B8(v195, v196);
  v197 = sub_1C4404DC8();
  sub_1C447E790(v197, v198);
  sub_1C4440A4C();
  v199 = sub_1C443F33C(&v299);
  v200(v199);
  v201 = sub_1C44411F4();
  v202(v201);
  v203 = sub_1C44105A8();
  v204(v203);
  sub_1C4424D48();
  v205 = sub_1C4404DC8();
  sub_1C441DFEC(v205, v206);
  v207 = sub_1C44A14CC();
  v208(v207);
  v209 = sub_1C4415C44();
  v210(v209);
  v211 = sub_1C44224A0();
  v212(v211);
  sub_1C440BC84(&v294);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v213 = sub_1C4B2AA9C();
  sub_1C4F01CF8();
  sub_1C4404CE0();

  if (os_log_type_enabled(v213, v160))
  {
    v161 = sub_1C440F274();
    sub_1C443FD74();
    v214 = swift_slowAlloc();
    sub_1C449DB28(v214);
    *v161 = 136380931;
    sub_1C4417750();
    sub_1C44CD238(v215, v216);
    sub_1C4F02858();
    v217 = *(v22 + 8);
    v22 += 8;
    sub_1C4433DD4();
    *(v218 - 256) = v219;
    v219();
    sub_1C44805EC();
    sub_1C44D3FDC();
    *(v161 + 14) = sub_1C44513AC();
    sub_1C4416B30(&dword_1C43F8000, v220, v221, "StandardEntityMapper: createNestedEntityRows: %{private}s isA %s");
    sub_1C4457944();
    v222 = sub_1C4425FC4();
    MEMORY[0x1C6942830](v222);
    sub_1C442A76C();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {

    v241 = sub_1C447F5DC();
    v242(v241);
  }

  v243 = sub_1C441C480();
  v244(v243);
  sub_1C4B2A910();
  v245 = v49 + *(v22 + 24);
  sub_1C4EFF888();
  v246 = v49 + *(v22 + 28);
  sub_1C4EFEC38();
  v247 = *(v22 + 36);
  sub_1C44036D4();
  sub_1C448D088();
  sub_1C4EF9AE8();
  v249 = sub_1C440C6D8(v248);
  sub_1C4401EC4(v249, v250, v251, MEMORY[0x1E69E7CC0]);
  sub_1C44290B0(v252);
  if (v253)
  {
    sub_1C4401DCC();
    sub_1C44C9240(v286, v287, v288, v161);
    v161 = v289;
  }

  *(v161 + 16) = v213;
  sub_1C43FBF6C();
  v255 = *(v254 + 72);
  sub_1C43FDDE8();
  sub_1C44DD800();
  sub_1C44419A8();
  if (v49)
  {
    v257 = v256 + 32;
    v295 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1C443F750();
      sub_1C4464B9C();
      v258 = [v293 __swift_objectForKeyedSubscript_];
      sub_1C441D28C();
      swift_unknownObjectRelease();
      if (v160)
      {
        sub_1C4F02078();
        swift_unknownObjectRelease();
        sub_1C4420C3C(&v297, &qword_1EC0BCD10, &qword_1C4F0C8C0);
        sub_1C4462050();
        v260 = v291 == v259 && v213 == 0xEA00000000007265;
        if (v260 || (sub_1C442BB94(), (sub_1C441D39C() & 1) != 0))
        {
          sub_1C44142D8();
          v160 = v178;
          v261 = sub_1C4EFF048();
          sub_1C44A1DB0(v261);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C44E3634(v300);
          v178 = v295;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v264 = *(v178 + 16);
            sub_1C43FCEC0();
            sub_1C458A900();
            v178 = v265;
          }

          sub_1C441D740();
          if (v253)
          {
            sub_1C4B2A9D8();
            v295 = v266;
          }

          sub_1C442BF0C();
          goto LABEL_84;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v270 = *(v295 + 16);
          sub_1C43FCEC0();
          sub_1C458A900();
          v295 = v271;
        }

        sub_1C445A9DC();
        if (v253)
        {
          sub_1C4401DCC();
          sub_1C458A900();
          v295 = v272;
        }

        sub_1C4488978();
      }

      else
      {
        sub_1C445543C();
        sub_1C4420C3C(&v297, &qword_1EC0BCD10, &qword_1C4F0C8C0);
        v262 = v296;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v267 = *(v262 + 16);
          sub_1C43FCEC0();
          sub_1C458A900();
          v262 = v268;
        }

        sub_1C4475284();
        if (v253)
        {
          sub_1C4401DCC();
          sub_1C458A900();
          v262 = v269;
        }

        *(v262 + 16) = v213;
        v263 = v262;
      }

      sub_1C4416850(v263);
LABEL_84:
      v257 += 64;
      v49 = (v49 - 1);
      if (!v49)
      {
        goto LABEL_89;
      }
    }
  }

  v295 = MEMORY[0x1E69E7CC0];
LABEL_89:
  sub_1C440A050();
  if (v21)
  {
    sub_1C4485F24();

    v278 = sub_1C442F39C();
    v279(v278);
    v280 = sub_1C4432980();
    v281(v280);
  }

  else
  {

    sub_1C4B2A9F4();
    sub_1C44346EC();
    sub_1C445FE78();
    sub_1C441C818();

    sub_1C4B2A9F4();
    sub_1C4485F24();
    sub_1C4B2A970();
    v282 = sub_1C441CD7C();
    v283(v282);
    v284 = sub_1C4408FB4();
    v285(v284);
  }

LABEL_43:
  sub_1C43FBC80();
}

void sub_1C4B25830(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, char *a11, uint64_t a12)
{
  v235 = a8;
  v243 = a7;
  v239 = a5;
  v221 = a4;
  v237 = a2;
  v241 = a1;
  v249 = a12;
  v250 = a11;
  v248 = a10;
  v232 = type metadata accessor for EntityTriple(0);
  v234 = *(v232 - 8);
  v14 = *(v234 + 64);
  MEMORY[0x1EEE9AC00](v232);
  v233 = &v208[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v227 = sub_1C4F00DD8();
  v226 = *(v227 - 8);
  v16 = *(v226 + 64);
  MEMORY[0x1EEE9AC00](v227);
  v224 = &v208[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v229 = sub_1C4F00DC8();
  v228 = *(v229 - 8);
  v18 = *(v228 + 64);
  MEMORY[0x1EEE9AC00](v229);
  v223 = &v208[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v225 = &v208[-v21];
  v22 = sub_1C4F01188();
  v236 = *(v22 - 8);
  v23 = *(v236 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v208[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v242 = sub_1C4EFF0C8();
  v238 = *(v242 - 8);
  v26 = *(v238 + 64);
  MEMORY[0x1EEE9AC00](v242);
  v231 = &v208[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v28);
  v222 = &v208[-v29];
  MEMORY[0x1EEE9AC00](v30);
  v247 = &v208[-v31];
  v32 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v35 = &v208[-v34];
  v36 = sub_1C4EFD548();
  v244 = *(v36 - 8);
  v37 = *(v244 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v208[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v208[-v41];
  MEMORY[0x1EEE9AC00](v43);
  v245 = &v208[-v44];
  *&v251 = 0x657473654E444D5FLL;
  *(&v251 + 1) = 0xEF797469746E4564;
  v45 = sub_1C4F029C8();
  v246 = a3;
  v46 = [a3 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  v240 = a6;
  if (v46)
  {
    sub_1C4F02078();
    swift_unknownObjectRelease();
  }

  else
  {
    v251 = 0u;
    v252 = 0u;
  }

  v253 = v251;
  v254 = v252;
  if (!*(&v252 + 1))
  {
    sub_1C4420C3C(&v253, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_9;
  }

  sub_1C4B2A2B4();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v50 = v250;
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v51 = sub_1C4F00978();
    sub_1C442B738(v51, qword_1EDE2DE10);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v52 = sub_1C4F00968();
    v53 = sub_1C4F01CD8();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *&v253 = v55;
      *v54 = 136315138;

      v56 = sub_1C441D828(v248, v50, &v253);

      *(v54 + 4) = v56;
      _os_log_impl(&dword_1C43F8000, v52, v53, "Mapping error, nested entity missing metadata in map, %s", v54, 0xCu);
      sub_1C440962C(v55);
      MEMORY[0x1C6942830](v55, -1, -1);
      MEMORY[0x1C6942830](v54, -1, -1);
    }

    else
    {
    }

    sub_1C45CF650();
    swift_allocError();
    *v57 = 1;
    swift_willThrow();
    return;
  }

  v219 = v36;
  v47 = v256;
  *&v251 = 0x79747265706F7270;
  *(&v251 + 1) = 0xEB0000000070614DLL;
  v48 = sub_1C4F029C8();
  v220 = v47;
  v49 = [v47 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v49)
  {
    sub_1C4F02078();
    swift_unknownObjectRelease();
  }

  else
  {
    v251 = 0u;
    v252 = 0u;
  }

  v253 = v251;
  v254 = v252;
  if (!*(&v252 + 1))
  {
    sub_1C4420C3C(&v253, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_21;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:
    v60 = v250;
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v61 = sub_1C4F00978();
    sub_1C442B738(v61, qword_1EDE2DE10);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v62 = sub_1C4F00968();
    v63 = sub_1C4F01CD8();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *&v253 = v65;
      *v64 = 136315138;

      v66 = sub_1C441D828(v248, v60, &v253);

      *(v64 + 4) = v66;
      _os_log_impl(&dword_1C43F8000, v62, v63, "Mapping error missing property map for  %s", v64, 0xCu);
      sub_1C440962C(v65);
      MEMORY[0x1C6942830](v65, -1, -1);
      MEMORY[0x1C6942830](v64, -1, -1);
    }

    else
    {
    }

    sub_1C45CF650();
    swift_allocError();
    *v67 = 1;
    swift_willThrow();

    return;
  }

  v58 = v256;
  *&v251 = 1701869940;
  *(&v251 + 1) = 0xE400000000000000;
  v59 = [v220 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v59)
  {
    sub_1C4F02078();
    swift_unknownObjectRelease();
  }

  else
  {
    v251 = 0u;
    v252 = 0u;
  }

  v253 = v251;
  v254 = v252;
  if (!*(&v252 + 1))
  {
    sub_1C4420C3C(&v253, &qword_1EC0BCD10, &qword_1C4F0C8C0);
LABEL_36:
    v78 = v250;
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v79 = sub_1C4F00978();
    sub_1C442B738(v79, qword_1EDE2DE10);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v72 = sub_1C4F00968();
    v73 = sub_1C4F01CD8();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      *&v253 = v75;
      *v74 = 136315138;

      v80 = sub_1C441D828(v248, v78, &v253);

      *(v74 + 4) = v80;
      v77 = "Mapping error missing type for  %s";
      goto LABEL_40;
    }

LABEL_41:

    goto LABEL_42;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_36;
  }

  v68 = v256;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v217 = v68;
  sub_1C4EFD2E8();
  v69 = v219;
  if (sub_1C44157D4(v35, 1, v219) == 1)
  {

    sub_1C4420C3C(v35, &qword_1EC0B8568, &unk_1C4F319B0);
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v70 = sub_1C4F00978();
    sub_1C442B738(v70, qword_1EDE2DE10);
    v71 = v250;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v72 = sub_1C4F00968();
    v73 = sub_1C4F01CD8();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      *&v253 = v75;
      *v74 = 136315138;

      v76 = sub_1C441D828(v248, v71, &v253);

      *(v74 + 4) = v76;
      v77 = "Mapping error type is not recognized as an EntityClass %s";
LABEL_40:
      _os_log_impl(&dword_1C43F8000, v72, v73, v77, v74, 0xCu);
      sub_1C440962C(v75);
      MEMORY[0x1C6942830](v75, -1, -1);
      MEMORY[0x1C6942830](v74, -1, -1);

LABEL_42:
      sub_1C45CF650();
      swift_allocError();
      *v81 = 1;
      swift_willThrow();

      return;
    }

    goto LABEL_41;
  }

  v218 = *(&v68 + 1);
  v215 = v58;
  v82 = v244;
  v83 = v245;
  (*(v244 + 32))(v245, v35, v69);
  if (qword_1EDDFD028 != -1)
  {
    swift_once();
  }

  v84 = sub_1C4F00978();
  v85 = sub_1C442B738(v84, qword_1EDE2DE10);
  v86 = *(v82 + 16);
  v213 = v82 + 16;
  v212 = v86;
  v86(v42, v83, v69);
  v87 = v237;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v216 = v85;
  v88 = sub_1C4F00968();
  v89 = sub_1C4F01CB8();

  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    v211 = swift_slowAlloc();
    *&v253 = v211;
    *v90 = 136381187;
    *(v90 + 4) = sub_1C441D828(v241, v87, &v253);
    *(v90 + 12) = 2080;
    sub_1C44CD238(&qword_1EDDFA220, MEMORY[0x1E69A92C8]);
    v210 = v88;
    v91 = sub_1C4F02858();
    v209 = v89;
    v92 = v87;
    v93 = v91;
    v95 = v94;
    v214 = *(v244 + 8);
    v214(v42, v69);
    v96 = sub_1C441D828(v93, v95, &v253);
    v97 = v241;

    *(v90 + 14) = v96;
    *(v90 + 22) = 1024;
    *(v90 + 24) = 0;
    v98 = v90;
    v99 = v210;
    _os_log_impl(&dword_1C43F8000, v210, v209, "Source: generating identifier for: %{private}s : %s : %{BOOL}d", v98, 0x1Cu);
    v100 = v211;
    swift_arrayDestroy();
    MEMORY[0x1C6942830](v100, -1, -1);
    MEMORY[0x1C6942830](v98, -1, -1);
  }

  else
  {

    v214 = *(v82 + 8);
    v214(v42, v69);
    v92 = v87;
    v97 = v241;
  }

  v102 = *v243;
  v101 = v243[1];
  *&v253 = v97;
  *(&v253 + 1) = v92;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v102, v101);
  v103 = v253;
  sub_1C4F01178();
  v104 = sub_1C4F01148();
  v106 = v105;
  (*(v236 + 8))(v25, v22);
  if (v106 >> 60 == 15)
  {

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v107 = sub_1C4F00968();
    v108 = sub_1C4F01CD8();

    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      *&v253 = v110;
      *v109 = 136380675;
      v111 = sub_1C441D828(v103, *(&v103 + 1), &v253);

      *(v109 + 4) = v111;
      _os_log_impl(&dword_1C43F8000, v107, v108, "Source: failed to encode identifier as UTF8 data: %{private}s", v109, 0xCu);
      sub_1C440962C(v110);
      MEMORY[0x1C6942830](v110, -1, -1);
      MEMORY[0x1C6942830](v109, -1, -1);
    }

    else
    {
    }

    v142 = v215;
    v143 = v219;
    v144 = v250;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v145 = sub_1C4F00968();
    v146 = sub_1C4F01CD8();
    if (os_log_type_enabled(v145, v146))
    {
      v147 = swift_slowAlloc();
      v148 = swift_slowAlloc();
      *&v253 = v148;
      *v147 = 136315138;

      v149 = sub_1C441D828(v248, v144, &v253);

      *(v147 + 4) = v149;
      _os_log_impl(&dword_1C43F8000, v145, v146, "Mapping error failed to generate EntityIdentifier for %s", v147, 0xCu);
      sub_1C440962C(v148);
      MEMORY[0x1C6942830](v148, -1, -1);
      MEMORY[0x1C6942830](v147, -1, -1);
    }

    else
    {
    }

    v198 = v245;
    sub_1C45CF650();
    swift_allocError();
    *v199 = 5;
    swift_willThrow();

    v214(v198, v143);
    return;
  }

  sub_1C44CD238(&qword_1EDDFEAD0, MEMORY[0x1E6966620]);
  v112 = v224;
  v113 = v227;
  v114 = v106;
  sub_1C4F00DB8();
  sub_1C44344B8(v104, v106);
  v115 = v230;
  sub_1C4498FD8(v104, v106);
  v230 = v115;
  sub_1C441DFEC(v104, v106);
  v116 = v225;
  sub_1C4F00DA8();
  (*(v226 + 8))(v112, v113);
  v212(v39, v245, v219);
  v117 = v228;
  v118 = v229;
  (*(v228 + 16))(v223, v116, v229);
  v119 = v222;
  sub_1C4EFF028();
  sub_1C441DFEC(v104, v114);
  (*(v117 + 8))(v116, v118);
  v120 = v238;
  v121 = v247;
  v122 = v242;
  (*(v238 + 32))(v247, v119, v242);
  v123 = v231;
  v250 = *(v120 + 16);
  (v250)(v231, v121, v122);
  v124 = v218;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v125 = v124;
  v126 = sub_1C4F00968();
  v127 = sub_1C4F01CF8();

  v128 = os_log_type_enabled(v126, v127);
  LODWORD(v236) = a9;
  if (v128)
  {
    v129 = v123;
    v130 = swift_slowAlloc();
    v249 = swift_slowAlloc();
    *&v253 = v249;
    *v130 = 136380931;
    sub_1C44CD238(&qword_1EDDFE810, MEMORY[0x1E69A9810]);
    LODWORD(v248) = v127;
    v131 = v125;
    v132 = sub_1C4F02858();
    v134 = v133;
    v135 = v236;
    v231 = *(v120 + 8);
    (v231)(v129, v242);
    v136 = sub_1C441D828(v132, v134, &v253);
    v122 = v242;

    *(v130 + 4) = v136;
    *(v130 + 12) = 2080;
    v137 = v217;
    *(v130 + 14) = sub_1C441D828(v217, v131, &v253);
    _os_log_impl(&dword_1C43F8000, v126, v248, "StandardEntityMapper: createNestedEntityRows: %{private}s isA %s", v130, 0x16u);
    v138 = v249;
    swift_arrayDestroy();
    MEMORY[0x1C6942830](v138, -1, -1);
    MEMORY[0x1C6942830](v130, -1, -1);

    v139 = v240;
    v140 = v246;
    v141 = v239;
  }

  else
  {

    v231 = *(v120 + 8);
    (v231)(v123, v122);
    v139 = v240;
    v140 = v246;
    v141 = v239;
    v135 = a9;
    v137 = v217;
  }

  v150 = v233;
  (v250)(v233, v247, v122);
  v151 = v232;
  v152 = &v150[*(v232 + 20)];
  sub_1C4EFEBB8();
  v153 = &v150[v151[6]];
  sub_1C4EFF888();
  v154 = &v150[v151[7]];
  sub_1C4EFEC38();
  v155 = &v150[v151[9]];
  sub_1C448D088();
  sub_1C4EF9AE8();
  v156 = &v150[v151[8]];
  v157 = v218;
  *v156 = v137;
  v156[1] = v157;
  v158 = &v150[v151[10]];
  *v158 = v141;
  v158[1] = v139;
  *&v150[v151[11]] = v159;
  v150[v151[12]] = v135;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44C9240(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v161 = v160;
  v163 = *(v160 + 16);
  v162 = *(v160 + 24);
  if (v163 >= v162 >> 1)
  {
    sub_1C44C9240(v162 > 1, v163 + 1, 1, v160);
    v161 = v207;
  }

  *(v161 + 16) = v163 + 1;
  v164 = v161 + ((*(v234 + 80) + 32) & ~*(v234 + 80));
  v165 = *(v234 + 72);
  sub_1C44DD800();
  v257 = v161;
  v166 = *(v235 + 16);
  v232 = v161;
  if (v166)
  {
    v167 = (v235 + 32);
    v168 = MEMORY[0x1E69E7CC0];
    v249 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v250 = v168;
      v169 = v167[1];
      v253 = *v167;
      v254 = v169;
      *v255 = v167[2];
      *&v255[9] = *(v167 + 41);
      v170 = v253;
      v256 = v253;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C45D17A0(&v253, &v251);
      v171 = [v140 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v171)
      {
        sub_1C4F02078();
        swift_unknownObjectRelease();
        sub_1C4420C3C(&v251, &qword_1EC0BCD10, &qword_1C4F0C8C0);
        v172 = v170 == 0x696669746E656469 && *(&v170 + 1) == 0xEA00000000007265;
        if (v172 || (sub_1C4F02938() & 1) != 0)
        {
          LODWORD(v248) = v255[24];
          v174 = *&v255[8];
          v173 = *&v255[16];
          v241 = *v255;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v237 = sub_1C4EFF048();
          v176 = v175;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C44E3634(&v253);
          v177 = v249;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v189 = *(v177 + 16);
            sub_1C458A900();
            v177 = v190;
          }

          v179 = *(v177 + 16);
          v178 = *(v177 + 24);
          v249 = v177;
          if (v179 >= v178 >> 1)
          {
            sub_1C458A900();
            v249 = v191;
          }

          v180 = v249;
          *(v249 + 16) = v179 + 1;
          v181 = v180 + (v179 << 6);
          *(v181 + 32) = v170;
          *(v181 + 48) = v237;
          *(v181 + 56) = v176;
          *(v181 + 64) = v241;
          *(v181 + 72) = v174;
          *(v181 + 80) = v173;
          *(v181 + 88) = v248;
          v140 = v246;
          v168 = v250;
          goto LABEL_83;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v195 = *(v249 + 16);
          sub_1C458A900();
          v249 = v196;
        }

        v168 = v250;
        v184 = *(v249 + 16);
        if (v184 >= *(v249 + 24) >> 1)
        {
          sub_1C458A900();
          v249 = v197;
        }

        v185 = v249;
        *(v249 + 16) = v184 + 1;
        v183 = (v185 + (v184 << 6));
      }

      else
      {
        v251 = 0u;
        v252 = 0u;
        sub_1C4420C3C(&v251, &qword_1EC0BCD10, &qword_1C4F0C8C0);
        v168 = v250;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v192 = *(v168 + 2);
          sub_1C458A900();
          v168 = v193;
        }

        v182 = *(v168 + 2);
        if (v182 >= *(v168 + 3) >> 1)
        {
          sub_1C458A900();
          v168 = v194;
        }

        *(v168 + 2) = v182 + 1;
        v183 = &v168[64 * v182];
      }

      v186 = v253;
      v187 = v254;
      v188 = *v255;
      *(v183 + 73) = *&v255[9];
      *(v183 + 3) = v187;
      *(v183 + 4) = v188;
      *(v183 + 2) = v186;
LABEL_83:
      v167 += 4;
      if (!--v166)
      {
        goto LABEL_88;
      }
    }
  }

  v249 = MEMORY[0x1E69E7CC0];
LABEL_88:
  v200 = v247;
  v201 = v215;
  v202 = v230;
  sub_1C4B1E304();
  if (v202)
  {

    (v231)(v200, v242);
    v214(v245, v219);
  }

  else
  {
    v204 = v203;

    sub_1C49D3614(v204);
    sub_1C4B1E304();
    v206 = v205;

    sub_1C49D3614(v206);

    (v231)(v247, v242);
    v214(v245, v219);
  }
}

void sub_1C4B275D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned __int8 a21)
{
  sub_1C43FE96C();
  a19 = v23;
  a20 = v24;
  v311 = v22;
  v25 = v21;
  v316 = v26;
  v325 = v27;
  v29 = v28;
  v321 = v30;
  v301 = v31;
  v33 = v32;
  v319 = v34;
  v323 = v35;
  v313 = type metadata accessor for EntityTriple(0);
  v36 = sub_1C43FCDF8(v313);
  v315 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FD2D8();
  v314 = v40;
  sub_1C43FBE44();
  v41 = sub_1C4F00DD8();
  v42 = sub_1C43FCDF8(v41);
  v307 = v43;
  v308 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FD2D8();
  v305 = v46;
  sub_1C43FBE44();
  v47 = sub_1C4F00DC8();
  v48 = sub_1C43FCDF8(v47);
  v309 = v49;
  v310 = v48;
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FBFDC();
  v304 = v52;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v53);
  sub_1C43FD230();
  v306 = v54;
  sub_1C43FBE44();
  v55 = sub_1C4F01188();
  v56 = sub_1C43FCDF8(v55);
  v317 = v57;
  v318 = v56;
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v56);
  sub_1C43FBCC4();
  v62 = v61 - v60;
  v324 = sub_1C4EFF0C8();
  v63 = sub_1C43FCDF8(v324);
  v320 = v64;
  v66 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v63);
  sub_1C43FBFDC();
  v312 = v67;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v68);
  sub_1C43FBF38();
  v303 = v69;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v70);
  sub_1C43FD230();
  v329 = v71;
  v72 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  sub_1C43FBD18(v72);
  v74 = *(v73 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v75);
  v76 = sub_1C447CE30();
  v77 = sub_1C43FCDF8(v76);
  v326 = v78;
  v80 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v77);
  sub_1C43FBFDC();
  v302 = v81;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v82);
  v84 = &v288 - v83;
  MEMORY[0x1EEE9AC00](v85);
  sub_1C43FD230();
  v327 = v86;
  sub_1C442023C();
  v330 = v87;
  v331 = v88;
  v89 = sub_1C4F029C8();
  v328 = v33;
  v90 = [v33 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  v322 = v29;
  if (v90)
  {
    sub_1C4F02078();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C4B2AAF8();
  }

  sub_1C4B2A930();
  if (!v91)
  {
    sub_1C4420C3C(&v332, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_9;
  }

  sub_1C4B2A2B4();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    sub_1C448824C();
    if (!v250)
    {
      sub_1C4419274();
      swift_once();
    }

    v97 = sub_1C4F00978();
    sub_1C43FCEE8(v97, qword_1EDE2DE10);
    v345 = sub_1C4B2A940();
    a10 = *(v21 + 32);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4443468();
    sub_1C4405BE0();
    sub_1C44DDE2C();
    v98 = sub_1C4F00968();
    sub_1C4F01CD8();
    sub_1C44036EC();
    sub_1C4400D10();
    sub_1C4420C3C(v99, v100, v101);
    sub_1C4B2AAB4(&a10);
    if (sub_1C443E1FC())
    {
      sub_1C43FECF0();
      v102 = swift_slowAlloc();
      sub_1C43FEC60();
      v103 = swift_slowAlloc();
      sub_1C4488B2C(v103);
      *(v102 + 4) = sub_1C44BBEBC(4.8149e-34);
      sub_1C4403218(&dword_1C43F8000, v104, v105, "Mapping error, nested entity missing metadata in map, %s");
      sub_1C440962C(&qword_1C4F0FF50);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    sub_1C45CF650();
    sub_1C441C114();
    v106 = swift_allocError();
    sub_1C44060DC(v106, v107);
    swift_willThrow();
    goto LABEL_41;
  }

  v299 = v76;
  v92 = v335;
  sub_1C4414EA8();
  v330 = v93;
  v331 = v94;
  v95 = sub_1C4F029C8();
  v300 = v92;
  v96 = [v92 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v96)
  {
    sub_1C4F02078();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C4B2AAF8();
  }

  sub_1C4B2A930();
  if (!v108)
  {
    sub_1C4420C3C(&v332, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_20;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    sub_1C448824C();
    if (!v250)
    {
      sub_1C4419274();
      swift_once();
    }

    v110 = sub_1C4F00978();
    sub_1C43FCEE8(v110, qword_1EDE2DE10);
    v344 = sub_1C4B2A940();
    v343 = *(v21 + 32);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4443468();
    sub_1C4405BE0();
    sub_1C44DDE2C();
    v111 = sub_1C4F00968();
    sub_1C4F01CD8();
    sub_1C44036EC();
    sub_1C4400D10();
    sub_1C4420C3C(v112, v113, v114);
    sub_1C4B2AAB4(&v343);
    if (sub_1C443E1FC())
    {
      sub_1C43FECF0();
      v115 = swift_slowAlloc();
      sub_1C43FEC60();
      v116 = swift_slowAlloc();
      sub_1C4488B2C(v116);
      *(v115 + 4) = sub_1C44BBEBC(4.8149e-34);
      sub_1C4403218(&dword_1C43F8000, v117, v118, "Mapping error missing property map for  %s");
      sub_1C440962C(&qword_1C4F0FF50);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    sub_1C45CF650();
    sub_1C441C114();
    v119 = swift_allocError();
    sub_1C44060DC(v119, v120);
    swift_willThrow();
    v121 = v300;
    goto LABEL_40;
  }

  v298 = v335;
  v330 = 1701869940;
  v331 = 0xE400000000000000;
  v109 = [v300 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v109)
  {
    sub_1C4F02078();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C4B2AAF8();
  }

  v122 = v299;
  sub_1C4B2A930();
  if (!v123)
  {
    sub_1C4420C3C(&v332, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_34;
  }

  if ((sub_1C445FDA0() & 1) == 0)
  {
LABEL_34:
    sub_1C448824C();
    if (!v250)
    {
      sub_1C4419274();
      swift_once();
    }

    v135 = sub_1C4F00978();
    sub_1C43FCEE8(v135, qword_1EDE2DE10);
    v342 = sub_1C4B2A940();
    v341 = *(v21 + 32);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4443468();
    sub_1C4405BE0();
    sub_1C44DDE2C();
    v126 = sub_1C4F00968();
    sub_1C4F01CD8();
    sub_1C44036EC();
    sub_1C4400D10();
    sub_1C4420C3C(v136, v137, v138);
    sub_1C4B2AAB4(&v341);
    if (!sub_1C443E1FC())
    {
      goto LABEL_39;
    }

    sub_1C43FECF0();
    v139 = swift_slowAlloc();
    sub_1C43FEC60();
    v140 = swift_slowAlloc();
    sub_1C4488B2C(v140);
    *(v139 + 4) = sub_1C44BBEBC(4.8149e-34);
    v134 = "Mapping error missing type for  %s";
    goto LABEL_38;
  }

  v124 = v335;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFD2E8();
  if (sub_1C44157D4(v21, 1, v122) == 1)
  {

    sub_1C4420C3C(v21, &qword_1EC0B8568, &unk_1C4F319B0);
    sub_1C448824C();
    if (!v250)
    {
      sub_1C4419274();
      swift_once();
    }

    v125 = sub_1C4F00978();
    sub_1C43FCEE8(v125, qword_1EDE2DE10);
    v340 = sub_1C4B2A940();
    v339 = *(v21 + 32);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4443468();
    sub_1C4405BE0();
    sub_1C44DDE2C();
    v126 = sub_1C4F00968();
    sub_1C4F01CD8();
    sub_1C44036EC();
    sub_1C4400D10();
    sub_1C4420C3C(v127, v128, v129);
    sub_1C4B2AAB4(&v339);
    if (!sub_1C443E1FC())
    {
      goto LABEL_39;
    }

    sub_1C43FECF0();
    v130 = swift_slowAlloc();
    sub_1C43FEC60();
    v131 = swift_slowAlloc();
    sub_1C4488B2C(v131);
    *(v130 + 4) = sub_1C44BBEBC(4.8149e-34);
    v134 = "Mapping error type is not recognized as an EntityClass %s";
LABEL_38:
    sub_1C4403218(&dword_1C43F8000, v132, v133, v134);
    sub_1C440962C(&qword_1C4F0FF50);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
LABEL_39:

    sub_1C45CF650();
    sub_1C441C114();
    v141 = swift_allocError();
    sub_1C44060DC(v141, v142);
    swift_willThrow();

    v121 = v298;
LABEL_40:

    goto LABEL_41;
  }

  v297 = v124 >> 64;
  v293 = v124;
  v143 = v326;
  (*(v326 + 32))(v327, v21, v122);
  sub_1C448824C();
  if (!v250)
  {
    sub_1C4419274();
    swift_once();
  }

  v144 = sub_1C4F00978();
  sub_1C43FCEE8(v144, qword_1EDE2DE10);
  v145 = *(v143 + 16);
  v146 = sub_1C4404DC8();
  v291 = v148;
  v292 = v147;
  (v148)(v146);
  v149 = v319;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v296 = v21;
  v150 = sub_1C4F00968();
  v151 = sub_1C4F01CB8();

  if (os_log_type_enabled(v150, v151))
  {
    sub_1C4480408();
    v152 = swift_slowAlloc();
    v290 = v151;
    v153 = v152;
    sub_1C443FD74();
    v294 = swift_slowAlloc();
    *&v332 = v294;
    *v153 = 136381187;
    *(v153 + 4) = sub_1C441D828(v323, v149, &v332);
    *(v153 + 12) = 2080;
    sub_1C4407A84();
    sub_1C44CD238(v154, v155);
    v289 = v150;
    v156 = sub_1C4F02858();
    v157 = v122;
    v159 = v158;
    v295 = *(v143 + 8);
    v295(v84, v157);
    sub_1C441D828(v156, v159, &v332);
    sub_1C441D28C();

    *(v153 + 14) = v156;
    v160 = v323;
    *(v153 + 22) = 1024;
    *(v153 + 24) = 0;
    v161 = v289;
    _os_log_impl(&dword_1C43F8000, v289, v290, "Source: generating identifier for: %{private}s : %s : %{BOOL}d", v153, 0x1Cu);
    swift_arrayDestroy();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    v162 = sub_1C43FEF7C();
    MEMORY[0x1C6942830](v162);
  }

  else
  {

    v295 = *(v143 + 8);
    v295(v84, v122);
    v160 = v323;
  }

  v163 = *v325;
  v164 = v325[1];
  *&v332 = v160;
  *(&v332 + 1) = v149;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v163, v164);
  sub_1C4F01178();
  sub_1C4F01148();
  v166 = v165;
  (*(v317 + 8))(v62, v318);
  if (v166 >> 60 == 15)
  {

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v167 = sub_1C4F00968();
    v168 = sub_1C4F01CD8();

    if (sub_1C441ED60())
    {
      sub_1C43FECF0();
      v169 = swift_slowAlloc();
      sub_1C43FEC60();
      v170 = swift_slowAlloc();
      *&v332 = v170;
      *v169 = 136380675;
      v171 = sub_1C43FD574();
      v174 = sub_1C441D828(v171, v172, v173);

      *(v169 + 4) = v174;
      _os_log_impl(&dword_1C43F8000, v167, v168, "Source: failed to encode identifier as UTF8 data: %{private}s", v169, 0xCu);
      sub_1C440962C(v170);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      v175 = sub_1C43FEF7C();
      MEMORY[0x1C6942830](v175);
    }

    else
    {
    }

    v338 = sub_1C4B2A940();
    v337 = *(v25 + 32);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4443468();
    sub_1C4405BE0();
    sub_1C44DDE2C();
    v212 = sub_1C4F00968();
    sub_1C4F01CD8();
    sub_1C44036EC();
    sub_1C4400D10();
    sub_1C4420C3C(v213, v214, v215);
    sub_1C4B2AAB4(&v337);
    if (sub_1C443E1FC())
    {
      sub_1C43FECF0();
      v216 = swift_slowAlloc();
      sub_1C43FEC60();
      v217 = swift_slowAlloc();
      sub_1C4488B2C(v217);
      *(v216 + 4) = sub_1C44BBEBC(4.8149e-34);
      sub_1C4403218(&dword_1C43F8000, v218, v219, "Mapping error failed to generate EntityIdentifier for %s");
      sub_1C440962C(&qword_1C4F0FF50);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    v220 = v299;
    sub_1C45CF650();
    sub_1C441C114();
    swift_allocError();
    sub_1C441B4F8(v221, 5);
    swift_willThrow();

    v295(v327, v220);
    goto LABEL_41;
  }

  LODWORD(v294) = a21;

  sub_1C442D2CC();
  sub_1C44CD238(v176, v177);
  v178 = v305;
  v179 = v308;
  sub_1C4F00DB8();
  v180 = sub_1C440A6C4();
  sub_1C44344B8(v180, v181);
  v182 = sub_1C440A6C4();
  v183 = v311;
  sub_1C4498FD8(v182, v184);
  v311 = v183;
  v185 = sub_1C440A6C4();
  sub_1C441DFEC(v185, v186);
  v187 = v306;
  sub_1C4F00DA8();
  (*(v307 + 8))(v178, v179);
  v291(v302, v327, v299);
  v189 = v309;
  v188 = v310;
  (*(v309 + 16))(v304, v187, v310);
  v190 = v303;
  sub_1C4EFF028();
  v191 = sub_1C440A6C4();
  sub_1C441DFEC(v191, v192);
  (*(v189 + 8))(v187, v188);
  v193 = v320;
  v194 = v329;
  v195 = v324;
  (*(v320 + 32))(v329, v190, v324);
  v196 = v312;
  v323 = *(v193 + 16);
  (v323)(v312, v194, v195);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v197 = v296;
  v198 = sub_1C4F00968();
  sub_1C4F01CF8();
  sub_1C4404CE0();

  v199 = sub_1C4B2AAD8();
  if (os_log_type_enabled(v199, v200))
  {
    v201 = sub_1C440F274();
    sub_1C443FD74();
    *&v332 = swift_slowAlloc();
    *v201 = 136380931;
    sub_1C4417750();
    sub_1C44CD238(v202, v203);
    LODWORD(v319) = v197;
    v204 = sub_1C4F02858();
    v206 = v205;
    v312 = *(v193 + 8);
    v312(v196, v324);
    v207 = sub_1C441D828(v204, v206, &v332);

    *(v201 + 4) = v207;
    *(v201 + 12) = 2080;
    v208 = v293;
    *(v201 + 14) = sub_1C441D828(v293, v297, &v332);
    _os_log_impl(&dword_1C43F8000, v198, v319, "StandardEntityMapper: createNestedEntityRows: %{private}s isA %s", v201, 0x16u);
    swift_arrayDestroy();
    v195 = v324;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    v209 = sub_1C43FEF7C();
    MEMORY[0x1C6942830](v209);

    v210 = v321;
    v211 = v322;
  }

  else
  {

    v312 = *(v193 + 8);
    v312(v196, v195);
    v210 = v321;
    v211 = v322;
    v208 = v293;
  }

  v222 = v314;
  (v323)(v314, v329, v195);
  v223 = v313;
  v224 = v222 + v313[5];
  sub_1C4EFEBB8();
  v225 = v222 + v223[6];
  sub_1C4EFF888();
  v226 = v222 + v223[7];
  sub_1C4EFEC38();
  v227 = v223[9];
  sub_1C44036D4();
  sub_1C448D088();
  sub_1C4EF9AE8();
  v228 = (v222 + v223[8]);
  v229 = v297;
  *v228 = v208;
  v228[1] = v229;
  v230 = (v222 + v223[10]);
  *v230 = v210;
  v230[1] = v211;
  *(v222 + v223[11]) = v231;
  *(v222 + v223[12]) = v294;
  v232 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4401EC4(v232, v233, v234, MEMORY[0x1E69E7CC0]);
  v236 = v235;
  v237 = *(v235 + 16);
  v238 = v237 + 1;
  v239 = v299;
  if (v237 >= *(v235 + 24) >> 1)
  {
    sub_1C4460700();
    sub_1C44C9240(v284, v285, v286, v236);
    v236 = v287;
  }

  v240 = v328;
  *(v236 + 16) = v238;
  sub_1C43FBF6C();
  v242 = *(v241 + 72);
  sub_1C43FDDE8();
  sub_1C44DD800();
  v314 = v236;
  v336 = v236;
  v243 = *(v316 + 16);
  if (v243)
  {
    v244 = (v316 + 32);
    v245 = MEMORY[0x1E69E7CC0];
    v323 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v246 = v244[1];
      v332 = *v244;
      v333 = v246;
      v334[0] = v244[2];
      *(v334 + 9) = *(v244 + 41);
      v247 = v332;
      v335 = v332;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C45D17A0(&v332, &v330);
      v248 = [v240 __swift_objectForKeyedSubscript_];
      sub_1C441D28C();
      swift_unknownObjectRelease();
      if (v238)
      {
        sub_1C4F02078();
        swift_unknownObjectRelease();
        sub_1C4420C3C(&v330, &qword_1EC0BCD10, &qword_1C4F0C8C0);
        sub_1C4462050();
        v250 = v247 == v249 && *(&v247 + 1) == 0xEA00000000007265;
        if (v250 || (sub_1C441D39C() & 1) != 0)
        {
          LODWORD(v319) = BYTE8(v334[1]);
          v252 = *(&v334[0] + 1);
          v251 = *&v334[1];
          v317 = *&v334[0];
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v253 = sub_1C4EFF048();
          v315 = v254;
          v316 = v253;
          v318 = v251;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C44E3634(&v332);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v268 = *(v245 + 16);
            sub_1C43FCEC0();
            sub_1C458A900();
            v245 = v269;
          }

          v238 = *(v245 + 16);
          v255 = v245;
          if (v238 >= *(v245 + 24) >> 1)
          {
            sub_1C458A900();
            v255 = v270;
          }

          v245 = v255;
          *(v255 + 16) = v238 + 1;
          v256 = v255 + (v238 << 6);
          *(v256 + 32) = v247;
          v257 = v315;
          *(v256 + 48) = v316;
          *(v256 + 56) = v257;
          v258 = v318;
          *(v256 + 64) = v317;
          *(v256 + 72) = v252;
          *(v256 + 80) = v258;
          *(v256 + 88) = v319;
          v239 = v299;
          v240 = v328;
          goto LABEL_83;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v274 = *(v245 + 16);
          sub_1C43FCEC0();
          sub_1C458A900();
          v245 = v275;
        }

        v239 = v299;
        v264 = *(v245 + 16);
        v238 = v264 + 1;
        if (v264 >= *(v245 + 24) >> 1)
        {
          sub_1C4460700();
          sub_1C458A900();
          v245 = v276;
        }

        *(v245 + 16) = v238;
        v263 = (v245 + (v264 << 6));
      }

      else
      {
        sub_1C4B2AAF8();
        sub_1C4420C3C(&v330, &qword_1EC0BCD10, &qword_1C4F0C8C0);
        v259 = v323;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v271 = *(v259 + 16);
          sub_1C43FCEC0();
          sub_1C458A900();
          v259 = v272;
        }

        v239 = v299;
        v261 = *(v259 + 16);
        v260 = *(v259 + 24);
        v323 = v259;
        v238 = v261 + 1;
        if (v261 >= v260 >> 1)
        {
          sub_1C4460700();
          sub_1C458A900();
          v323 = v273;
        }

        v262 = v323;
        *(v323 + 16) = v238;
        v263 = (v262 + (v261 << 6));
      }

      v265 = v332;
      v266 = v333;
      v267 = v334[0];
      *(v263 + 73) = *(v334 + 9);
      v263[3] = v266;
      v263[4] = v267;
      v263[2] = v265;
LABEL_83:
      v244 += 4;
      if (!--v243)
      {
        goto LABEL_86;
      }
    }
  }

  v323 = MEMORY[0x1E69E7CC0];
LABEL_86:
  v277 = v329;
  v278 = v298;
  v279 = v311;
  sub_1C4B1E304();
  if (v279)
  {

    v312(v277, v324);
    v295(v327, v239);
  }

  else
  {
    v281 = v280;

    sub_1C49D3614(v281);
    sub_1C4B1E304();
    v283 = v282;

    sub_1C49D3614(v283);

    v312(v329, v324);
    v295(v327, v239);
  }

LABEL_41:
  sub_1C43FBC80();
}

void sub_1C4B28D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v23;
  a20 = v24;
  v33 = sub_1C441EE94(v25, v26, v27, v28, v29, v30, v31, v32);
  v34 = sub_1C43FFAE0(v33, v302);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v37);
  v38 = sub_1C4F00DD8();
  v39 = sub_1C43FFAE0(v38, v300);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v42);
  v43 = sub_1C4F00DC8();
  v44 = sub_1C43FFAE0(v43, &v301);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FD230();
  sub_1C43FD2C8(v48);
  v49 = sub_1C4F01188();
  v50 = sub_1C43FCDF8(v49);
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v50);
  sub_1C43FBCC4();
  v53 = sub_1C4B2AA0C();
  v54 = sub_1C43FFAE0(v53, &a12);
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v54);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v57);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v58);
  sub_1C43FD230();
  sub_1C43FCE30(v59);
  v60 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  sub_1C43FBD18(v60);
  v62 = *(v61 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v63);
  v64 = sub_1C447CE30();
  v65 = sub_1C43FCDF8(v64);
  v67 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v65);
  sub_1C43FBD08();
  sub_1C44146B8();
  MEMORY[0x1EEE9AC00](v68);
  sub_1C441B420();
  MEMORY[0x1EEE9AC00](v69);
  sub_1C43FD230();
  sub_1C43FCE30(v70);
  sub_1C442023C();
  v297 = v71;
  v298 = v72;
  v73 = sub_1C4F029C8();
  v74 = sub_1C447E480(v73, sel___swift_objectForKeyedSubscript_);
  swift_unknownObjectRelease();
  if (v74)
  {
    sub_1C4F02078();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C445543C();
  }

  sub_1C4434224();
  if (!v75)
  {
    sub_1C4420C3C(v300, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_9;
  }

  v76 = sub_1C4B2A2B4();
  sub_1C44EB8EC();
  if ((sub_1C4B2A958() & 1) == 0)
  {
LABEL_9:
    sub_1C44606F4();
    if (!v156)
    {
      sub_1C4419274();
      swift_once();
    }

    v82 = sub_1C4F00978();
    sub_1C442B738(v82, qword_1EDE2DE10);
    v83 = sub_1C440E728();
    v84(v83);
    v85 = sub_1C4F00968();
    sub_1C4F01CD8();
    v86 = sub_1C44016D0();
    if (os_log_type_enabled(v86, v87))
    {
      sub_1C43FECF0();
      swift_slowAlloc();
      sub_1C43FC858();
      v88 = swift_slowAlloc();
      sub_1C44180A8(v88);
      sub_1C4488458(4.8149e-34);
      v89 = sub_1C4462464();
      v90(v89);
      sub_1C448F1C0();
      sub_1C4B2A8F8();
      *(v20 + 4) = v22;
      sub_1C44046B4();
      _os_log_impl(v91, v92, v93, v94, v95, v96);
      sub_1C440962C(v49);
      v97 = sub_1C43FEF7C();
      MEMORY[0x1C6942830](v97);
      v98 = sub_1C4425FC4();
      MEMORY[0x1C6942830](v98);
    }

    else
    {
      v99 = sub_1C4462464();
      v100(v99);
    }

    sub_1C45CF650();
    sub_1C441C114();
    v101 = swift_allocError();
    sub_1C44060DC(v101, v102);
    swift_willThrow();
    goto LABEL_43;
  }

  v291 = v64;
  v77 = v302[4];
  sub_1C4414EA8();
  v297 = v78;
  v298 = v79;
  v80 = sub_1C4F029C8();
  v81 = sub_1C44AB1A0(v80, sel___swift_objectForKeyedSubscript_);
  sub_1C44A1C64();
  swift_unknownObjectRelease();
  if (v77)
  {
    sub_1C4B2A9C0();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C445543C();
  }

  sub_1C4434224();
  if (!v103)
  {
    sub_1C4420C3C(v300, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_21;
  }

  sub_1C44EB8EC();
  if ((sub_1C4B2A958() & 1) == 0)
  {
LABEL_21:
    sub_1C44606F4();
    if (!v156)
    {
      sub_1C4419274();
      swift_once();
    }

    v106 = sub_1C4F00978();
    sub_1C442B738(v106, qword_1EDE2DE10);
    v107 = sub_1C440E728();
    v108(v107);
    v109 = sub_1C4F00968();
    sub_1C4F01CD8();
    v110 = sub_1C44016D0();
    if (os_log_type_enabled(v110, v111))
    {
      sub_1C43FECF0();
      swift_slowAlloc();
      sub_1C43FC858();
      v112 = swift_slowAlloc();
      sub_1C44180A8(v112);
      sub_1C4488458(4.8149e-34);
      v113 = sub_1C4462464();
      v114(v113);
      sub_1C448F1C0();
      sub_1C4B2A8F8();
      *(v20 + 4) = v22;
      sub_1C44046B4();
      _os_log_impl(v115, v116, v117, v118, v119, v120);
      sub_1C440962C(v49);
      v121 = sub_1C43FEF7C();
      MEMORY[0x1C6942830](v121);
      v122 = sub_1C4425FC4();
      MEMORY[0x1C6942830](v122);
    }

    else
    {
      v123 = sub_1C4462464();
      v124(v123);
    }

    sub_1C45CF650();
    sub_1C441C114();
    v125 = swift_allocError();
    sub_1C44060DC(v125, v126);
    swift_willThrow();
    sub_1C4485F24();
    goto LABEL_43;
  }

  sub_1C4440DBC();
  v104 = sub_1C4F029C8();
  v105 = sub_1C44D3E0C(v104, sel___swift_objectForKeyedSubscript_);
  sub_1C44A1C64();
  swift_unknownObjectRelease();
  if (v77)
  {
    sub_1C4B2A9C0();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C445543C();
  }

  sub_1C4434224();
  if (!v127)
  {
    sub_1C4420C3C(v300, &qword_1EC0BCD10, &qword_1C4F0C8C0);
LABEL_37:
    sub_1C44606F4();
    if (!v156)
    {
      sub_1C4419274();
      swift_once();
    }

    v134 = sub_1C4F00978();
    sub_1C442B738(v134, qword_1EDE2DE10);
    v135 = sub_1C440E728();
    v136(v135);
    v131 = sub_1C4F00968();
    sub_1C4F01CD8();
    v137 = sub_1C44016D0();
    if (os_log_type_enabled(v137, v138))
    {
      goto LABEL_40;
    }

    goto LABEL_41;
  }

  sub_1C44EB8EC();
  if ((sub_1C445FDA0() & 1) == 0)
  {
    goto LABEL_37;
  }

  sub_1C44562D0();
  sub_1C4B2AA28();
  sub_1C4405CEC();
  if (v156)
  {

    sub_1C4420C3C(v20, &qword_1EC0B8568, &unk_1C4F319B0);
    sub_1C44606F4();
    if (!v156)
    {
      sub_1C4419274();
      swift_once();
    }

    v128 = sub_1C4F00978();
    sub_1C442B738(v128, qword_1EDE2DE10);
    sub_1C443DFBC();
    v129 = sub_1C443FF6C();
    v130(v129);
    v131 = sub_1C4F00968();
    sub_1C4F01CD8();
    v132 = sub_1C44016D0();
    v76 = v290;
    if (os_log_type_enabled(v132, v133))
    {
LABEL_40:
      sub_1C43FECF0();
      swift_slowAlloc();
      sub_1C43FC858();
      v139 = swift_slowAlloc();
      sub_1C44180A8(v139);
      sub_1C4488458(4.8149e-34);
      v140 = sub_1C4462464();
      v141(v140);
      sub_1C448F1C0();
      sub_1C4B2A8F8();
      *(v20 + 4) = v22;
      sub_1C44046B4();
      _os_log_impl(v142, v143, v144, v145, v146, v147);
      sub_1C440962C(v49);
      v148 = sub_1C43FEF7C();
      MEMORY[0x1C6942830](v148);
      v149 = sub_1C4425FC4();
      MEMORY[0x1C6942830](v149);
LABEL_42:

      sub_1C45CF650();
      sub_1C441C114();
      v152 = swift_allocError();
      sub_1C44060DC(v152, v153);
      swift_willThrow();
      sub_1C4485F24();

      goto LABEL_43;
    }

LABEL_41:
    v150 = sub_1C4462464();
    v151(v150);
    goto LABEL_42;
  }

  v154 = sub_1C441E688();
  v155(v154);
  sub_1C44606F4();
  if (!v156)
  {
    sub_1C4419274();
    swift_once();
  }

  v157 = sub_1C4F00978();
  sub_1C442B738(v157, qword_1EDE2DE10);
  v158 = sub_1C447F2A4();
  v159(v158);
  sub_1C4410278(&v303);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v160 = sub_1C4F00968();
  v161 = sub_1C4F01CB8();

  if (sub_1C441ED60())
  {
    sub_1C4480408();
    v161 = swift_slowAlloc();
    sub_1C443FD74();
    v162 = swift_slowAlloc();
    sub_1C44A3BF0(v162);
    v163 = sub_1C44249EC(4.8453e-34);
    sub_1C44587AC(v163);
    sub_1C4407A84();
    sub_1C44CD238(v164, v165);
    sub_1C446BCDC();
    v166 = sub_1C4436664();
    v167(v166);
    v168 = sub_1C43FBC98();
    sub_1C441D828(v168, v169, v170);
    sub_1C441C818();
    v160 = v292;

    sub_1C445C200();
    sub_1C442A9A8(&dword_1C43F8000, v171, v172, "Source: generating identifier for: %{private}s : %s : %{BOOL}d");
    sub_1C449AF00();
    v173 = sub_1C4408D20();
    MEMORY[0x1C6942830](v173);
    v174 = sub_1C445E9A8();
    MEMORY[0x1C6942830](v174);

    sub_1C442A76C();
  }

  else
  {

    v175 = sub_1C449528C();
    v176(v175);
    sub_1C443EF60();
  }

  sub_1C4B2AA80();
  sub_1C4B2A9A4();
  v177 = v300[0];
  v178 = v300[1];
  sub_1C4F01178();
  sub_1C4405BE0();
  sub_1C4F01148();
  v179 = sub_1C441DE48();
  v180(v179);
  if (v160 >> 60 == 15)
  {

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v181 = sub_1C4B2AA9C();
    v182 = sub_1C4F01CD8();

    if (os_log_type_enabled(v181, v182))
    {
      sub_1C43FECF0();
      v183 = swift_slowAlloc();
      sub_1C43FEC60();
      v184 = swift_slowAlloc();
      sub_1C44180A8(v184);
      *v183 = 136380675;
      v185 = sub_1C4404DC8();
      v188 = sub_1C441D828(v185, v186, v187);

      *(v183 + 4) = v188;
      sub_1C44AE8E0(&dword_1C43F8000, v189, v190, "Source: failed to encode identifier as UTF8 data: %{private}s");
      sub_1C440962C(v49);
      v191 = sub_1C43FEF7C();
      MEMORY[0x1C6942830](v191);
      v192 = sub_1C4408D20();
      MEMORY[0x1C6942830](v192);
    }

    else
    {
    }

    v223 = sub_1C4434234();
    v224(v223);
    v225 = sub_1C4F00968();
    sub_1C4F01CD8();
    v226 = sub_1C44016D0();
    if (os_log_type_enabled(v226, v227))
    {
      sub_1C43FECF0();
      swift_slowAlloc();
      sub_1C43FC858();
      v228 = swift_slowAlloc();
      sub_1C44180A8(v228);
      *v160 = 136315138;
      v229 = *v177;
      v230 = v177[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v231 = sub_1C448056C();
      v232(v231);
      sub_1C448F1C0();
      sub_1C4B2A8F8();
      *(v160 + 4) = v229;
      sub_1C44046B4();
      _os_log_impl(v233, v234, v235, v236, v237, v238);
      sub_1C440962C(v49);
      v239 = sub_1C43FEF7C();
      MEMORY[0x1C6942830](v239);
      v240 = sub_1C4425FC4();
      MEMORY[0x1C6942830](v240);
    }

    else
    {
      v273 = sub_1C448056C();
      v274(v273);
    }

    sub_1C45CF650();
    sub_1C441C114();
    swift_allocError();
    sub_1C441B4F8(v275, 5);
    swift_willThrow();
    sub_1C4485F24();

    v276 = sub_1C4432980();
    v277(v276);
    goto LABEL_43;
  }

  sub_1C44D0B54();
  sub_1C442D2CC();
  sub_1C44CD238(v193, v194);
  sub_1C4469240();
  v195 = sub_1C4404DC8();
  sub_1C44344B8(v195, v196);
  v197 = sub_1C4404DC8();
  sub_1C447E790(v197, v198);
  sub_1C4440A4C();
  v199 = sub_1C443F33C(&v299);
  v200(v199);
  v201 = sub_1C44411F4();
  v202(v201);
  v203 = sub_1C44105A8();
  v204(v203);
  sub_1C4424D48();
  v205 = sub_1C4404DC8();
  sub_1C441DFEC(v205, v206);
  v207 = sub_1C44A14CC();
  v208(v207);
  v209 = sub_1C4415C44();
  v210(v209);
  v211 = sub_1C44224A0();
  v212(v211);
  sub_1C440BC84(&v294);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v213 = sub_1C4B2AA9C();
  sub_1C4F01CF8();
  sub_1C4404CE0();

  if (os_log_type_enabled(v213, v160))
  {
    v161 = sub_1C440F274();
    sub_1C443FD74();
    v214 = swift_slowAlloc();
    sub_1C449DB28(v214);
    *v161 = 136380931;
    sub_1C4417750();
    sub_1C44CD238(v215, v216);
    sub_1C4F02858();
    v217 = *(v22 + 8);
    v22 += 8;
    sub_1C4433DD4();
    *(v218 - 256) = v219;
    v219();
    sub_1C44805EC();
    sub_1C44D3FDC();
    *(v161 + 14) = sub_1C44513AC();
    sub_1C4416B30(&dword_1C43F8000, v220, v221, "StandardEntityMapper: createNestedEntityRows: %{private}s isA %s");
    sub_1C4457944();
    v222 = sub_1C4425FC4();
    MEMORY[0x1C6942830](v222);
    sub_1C442A76C();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {

    v241 = sub_1C447F5DC();
    v242(v241);
  }

  v243 = sub_1C441C480();
  v244(v243);
  sub_1C4B2A910();
  v245 = v49 + *(v22 + 24);
  sub_1C4EFF888();
  v246 = v49 + *(v22 + 28);
  sub_1C4EFEC38();
  v247 = *(v22 + 36);
  sub_1C44036D4();
  sub_1C448D088();
  sub_1C4EF9AE8();
  v249 = sub_1C440C6D8(v248);
  sub_1C4401EC4(v249, v250, v251, MEMORY[0x1E69E7CC0]);
  sub_1C44290B0(v252);
  if (v253)
  {
    sub_1C4401DCC();
    sub_1C44C9240(v286, v287, v288, v161);
    v161 = v289;
  }

  *(v161 + 16) = v213;
  sub_1C43FBF6C();
  v255 = *(v254 + 72);
  sub_1C43FDDE8();
  sub_1C44DD800();
  sub_1C44419A8();
  if (v49)
  {
    v257 = v256 + 32;
    v295 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1C443F750();
      sub_1C4464B9C();
      v258 = [v293 __swift_objectForKeyedSubscript_];
      sub_1C441D28C();
      swift_unknownObjectRelease();
      if (v160)
      {
        sub_1C4F02078();
        swift_unknownObjectRelease();
        sub_1C4420C3C(&v297, &qword_1EC0BCD10, &qword_1C4F0C8C0);
        sub_1C4462050();
        v260 = v291 == v259 && v213 == 0xEA00000000007265;
        if (v260 || (sub_1C442BB94(), (sub_1C441D39C() & 1) != 0))
        {
          sub_1C44142D8();
          v160 = v178;
          v261 = sub_1C4EFF048();
          sub_1C44A1DB0(v261);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C44E3634(v300);
          v178 = v295;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v264 = *(v178 + 16);
            sub_1C43FCEC0();
            sub_1C458A900();
            v178 = v265;
          }

          sub_1C441D740();
          if (v253)
          {
            sub_1C4B2A9D8();
            v295 = v266;
          }

          sub_1C442BF0C();
          goto LABEL_84;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v270 = *(v295 + 16);
          sub_1C43FCEC0();
          sub_1C458A900();
          v295 = v271;
        }

        sub_1C445A9DC();
        if (v253)
        {
          sub_1C4401DCC();
          sub_1C458A900();
          v295 = v272;
        }

        sub_1C4488978();
      }

      else
      {
        sub_1C445543C();
        sub_1C4420C3C(&v297, &qword_1EC0BCD10, &qword_1C4F0C8C0);
        v262 = v296;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v267 = *(v262 + 16);
          sub_1C43FCEC0();
          sub_1C458A900();
          v262 = v268;
        }

        sub_1C4475284();
        if (v253)
        {
          sub_1C4401DCC();
          sub_1C458A900();
          v262 = v269;
        }

        *(v262 + 16) = v213;
        v263 = v262;
      }

      sub_1C4416850(v263);
LABEL_84:
      v257 += 64;
      v49 = (v49 - 1);
      if (!v49)
      {
        goto LABEL_89;
      }
    }
  }

  v295 = MEMORY[0x1E69E7CC0];
LABEL_89:
  sub_1C440A050();
  if (v21)
  {
    sub_1C4485F24();

    v278 = sub_1C442F39C();
    v279(v278);
    v280 = sub_1C4432980();
    v281(v280);
  }

  else
  {

    sub_1C4B2A9F4();
    sub_1C44346EC();
    sub_1C445FE78();
    sub_1C441C818();

    sub_1C4B2A9F4();
    sub_1C4485F24();
    sub_1C4B2A970();
    v282 = sub_1C441CD7C();
    v283(v282);
    v284 = sub_1C4408FB4();
    v285(v284);
  }

LABEL_43:
  sub_1C43FBC80();
}

unint64_t sub_1C4B29EE4()
{
  result = qword_1EC0C3510;
  if (!qword_1EC0C3510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3510);
  }

  return result;
}

unint64_t sub_1C4B29F38(uint64_t a1)
{
  *(a1 + 8) = sub_1C4B29F68();
  result = sub_1C4B29FBC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C4B29F68()
{
  result = qword_1EC0C3520;
  if (!qword_1EC0C3520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3520);
  }

  return result;
}

unint64_t sub_1C4B29FBC()
{
  result = qword_1EC0C3528;
  if (!qword_1EC0C3528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3528);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SocialMediaProfile.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C4B2A100()
{
  result = qword_1EC0C3530;
  if (!qword_1EC0C3530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3530);
  }

  return result;
}

unint64_t sub_1C4B2A158()
{
  result = qword_1EC0C3538;
  if (!qword_1EC0C3538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3538);
  }

  return result;
}

unint64_t sub_1C4B2A1B0()
{
  result = qword_1EC0C3540;
  if (!qword_1EC0C3540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3540);
  }

  return result;
}

unint64_t sub_1C4B2A2B4()
{
  result = qword_1EC0C3548;
  if (!qword_1EC0C3548)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC0C3548);
  }

  return result;
}

uint64_t sub_1C4B2A2F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C4B2A8D4()
{
  *(v1 - 460) = v0;

  return sub_1C4F02858();
}

uint64_t sub_1C4B2A8F8()
{
}

uint64_t sub_1C4B2A910()
{
  v3 = v0 + *(*(v1 - 392) + 20);

  return sub_1C4EFEBB8();
}

__n128 sub_1C4B2A930()
{
  result = *(v0 + 352);
  *(v0 + 400) = *(v0 + 336);
  *(v0 + 416) = result;
  v2 = *(v0 + 424);
  return result;
}

__n128 sub_1C4B2A940()
{
  v1 = v0->n128_u64[0];
  v2 = v0->n128_u64[1];
  return v0[1];
}

uint64_t sub_1C4B2A958()
{

  return swift_dynamicCast();
}

void sub_1C4B2A970()
{
  v2 = *(v0 - 504);
}

uint64_t sub_1C4B2A988()
{
  v2 = *(v0 - 176);
  v3 = *(v0 - 168);

  return sub_1C4F01178();
}

void sub_1C4B2A9A4()
{

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C4B2A9C0()
{

  return sub_1C4F02078();
}

void sub_1C4B2A9D8()
{
  v2 = *(v0 - 256);

  sub_1C458A900();
}

uint64_t sub_1C4B2A9F4()
{

  return sub_1C49D3614(v0);
}

uint64_t sub_1C4B2AA0C()
{

  return sub_1C4EFF0C8();
}

uint64_t sub_1C4B2AA28()
{

  return sub_1C4EFD2E8();
}

uint64_t sub_1C4B2AA44()
{
}

uint64_t sub_1C4B2AA5C@<X0>(char a1@<W8>)
{
  *(v2 - 192) = *(v1 + 608);
  *(v2 - 184) = a1;

  return sub_1C45D17A0(v2 - 176, v1 + 496);
}

uint64_t sub_1C4B2AA80()
{
  v6 = *v1;
  v5 = v1[1];
  *(v3 - 176) = v0;
  *(v3 - 168) = v2;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4B2AA9C()
{
  v2 = *(v0 - 528);

  return sub_1C4F00968();
}

uint64_t sub_1C4B2AAB4(uint64_t a1)
{

  return sub_1C4420C3C(a1, v1, v2);
}

double sub_1C4B2AAF8()
{
  result = 0.0;
  *(v0 + 336) = 0u;
  *(v0 + 352) = 0u;
  return result;
}

uint64_t sub_1C4B2AB04()
{
  v1 = **(v0 + 312);
  result = *(v0 + 120);
  v3 = *(v0 + 152);
  return result;
}

void sub_1C4B2AB18(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 0x1Cu);
}

uint64_t sub_1C4B2AB38()
{

  return sub_1C4EFF0C8();
}

void sub_1C4B2AB58(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 0xCu);
}

uint64_t sub_1C4B2AB78(float a1)
{
  *v2 = a1;

  return sub_1C441D828(v1, v3, (v4 - 128));
}

uint64_t sub_1C4B2AB98()
{

  return sub_1C4F01148();
}

uint64_t sub_1C4B2ABB8()
{
  *(v1 - 192) = *(v0 + 608);
  *(v1 - 184) = 0;

  return sub_1C44E3634(v1 - 240);
}

uint64_t sub_1C4B2ABD8(uint64_t a1)
{

  return sub_1C4420C3C(a1, v1, v2);
}

uint64_t sub_1C4B2ABF0()
{

  return sub_1C4F02078();
}

id sub_1C4B2AC08(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_1C4B2AC20()
{
}

uint64_t SoftwareMatcher.init(stores:source:pipelineType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = type metadata accessor for SoftwareMatcher();
  *(a4 + v8[7]) = 1056964608;
  v9 = a4 + v8[8];
  sub_1C4EFD538();
  sub_1C440053C();
  sub_1C448566C(a1, a4);
  v10 = v8[5];
  sub_1C43FD90C();
  result = sub_1C448566C(a2, a4 + v11);
  *(a4 + v8[6]) = v7;
  return result;
}

uint64_t type metadata accessor for SoftwareMatcher()
{
  result = qword_1EDDF6650;
  if (!qword_1EDDF6650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SoftwareMatcher.source.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SoftwareMatcher() + 20);
  sub_1C43FD90C();
  return sub_1C44718CC(v1 + v4, a1);
}

uint64_t SoftwareMatcher.pipelineType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SoftwareMatcher();
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t SoftwareMatcher.entityClass.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SoftwareMatcher() + 32);
  v4 = sub_1C4EFD548();
  v5 = sub_1C43FBCE0(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

float sub_1C4B2AE24(uint64_t a1, uint64_t a2)
{
  v92 = a2;
  v3 = sub_1C4EFEEF8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v87 - v9;
  v11 = type metadata accessor for EntityTriple(0);
  v96 = *(v11 - 8);
  v97 = v11;
  v12 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v87 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v93 = &v87 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v88 = &v87 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v94 = &v87 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v87 - v21;
  v23 = 0;
  v24 = *(a1 + 16);
  v90 = a1;
  v91 = v24;
  v25 = (v4 + 8);
  v89 = MEMORY[0x1E69E7CC0];
  v95 = v7;
  while (v91 != v23)
  {
    v26 = (*(v96 + 80) + 32) & ~*(v96 + 80);
    v27 = *(v96 + 72);
    sub_1C44718CC(v90 + v26 + v27 * v23, v22);
    v28 = *(v97 + 20);
    sub_1C4EFE778();
    sub_1C4B2DC98(&off_1EDDFCCA8, MEMORY[0x1E69A9748]);
    sub_1C4F01578();
    sub_1C4F01578();
    if (v100 == v98 && v101 == v99)
    {
      (*v25)(v10, v3);

LABEL_10:
      sub_1C448566C(v22, v87);
      v31 = v89;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v102 = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v33 = *(v31 + 16);
        sub_1C459DCC0();
        v31 = v102;
      }

      v34 = v31;
      v35 = *(v31 + 16);
      if (v35 >= *(v34 + 24) >> 1)
      {
        sub_1C459DCC0();
        v34 = v102;
      }

      ++v23;
      *(v34 + 16) = v35 + 1;
      v89 = v34;
      sub_1C448566C(v87, v34 + v26 + v35 * v27);
      v7 = v95;
    }

    else
    {
      v30 = sub_1C4F02938();
      (*v25)(v10, v3);

      if (v30)
      {
        goto LABEL_10;
      }

      sub_1C44DBD5C(v22, type metadata accessor for EntityTriple);
      ++v23;
      v7 = v95;
    }
  }

  v36 = v89;
  v37 = *(v89 + 16);
  if (v37)
  {
    v100 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0();
    v38 = v100;
    v39 = v36 + ((*(v96 + 80) + 32) & ~*(v96 + 80));
    v40 = *(v96 + 72);
    do
    {
      v41 = v93;
      sub_1C44718CC(v39, v93);
      v42 = (v41 + *(v97 + 32));
      v43 = *v42;
      v44 = v42[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44DBD5C(v41, type metadata accessor for EntityTriple);
      v100 = v38;
      v45 = *(v38 + 16);
      if (v45 >= *(v38 + 24) >> 1)
      {
        sub_1C44CD9C0();
        v38 = v100;
      }

      *(v38 + 16) = v45 + 1;
      v46 = v38 + 16 * v45;
      *(v46 + 32) = v43;
      *(v46 + 40) = v44;
      v39 += v40;
      --v37;
    }

    while (v37);

    v7 = v95;
  }

  else
  {

    v38 = MEMORY[0x1E69E7CC0];
  }

  sub_1C4499940(v38, v47, v48, v49, v50, v51, v52, v53, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100);
  v90 = v54;
  v55 = 0;
  v56 = *(v92 + 16);
  v91 = MEMORY[0x1E69E7CC0];
  while (v56 != v55)
  {
    v57 = (*(v96 + 80) + 32) & ~*(v96 + 80);
    v58 = *(v96 + 72);
    sub_1C44718CC(v92 + v57 + v58 * v55, v94);
    v59 = *(v97 + 20);
    sub_1C4EFE778();
    sub_1C4B2DC98(&off_1EDDFCCA8, MEMORY[0x1E69A9748]);
    sub_1C4F01578();
    sub_1C4F01578();
    if (v100 == v98 && v101 == v99)
    {
      (*v25)(v7, v3);
    }

    else
    {
      v61 = sub_1C4F02938();
      (*v25)(v7, v3);

      if ((v61 & 1) == 0)
      {
        sub_1C44DBD5C(v94, type metadata accessor for EntityTriple);
        ++v55;
        v7 = v95;
        continue;
      }
    }

    sub_1C448566C(v94, v88);
    v62 = v91;
    v63 = swift_isUniquelyReferenced_nonNull_native();
    v102 = v62;
    if ((v63 & 1) == 0)
    {
      v64 = *(v62 + 16);
      sub_1C459DCC0();
      v62 = v102;
    }

    v65 = *(v62 + 16);
    if (v65 >= *(v62 + 24) >> 1)
    {
      sub_1C459DCC0();
      v62 = v102;
    }

    ++v55;
    *(v62 + 16) = v65 + 1;
    v91 = v62;
    sub_1C448566C(v88, v62 + v57 + v65 * v58);
    v7 = v95;
  }

  v66 = v91;
  v67 = *(v91 + 16);
  if (v67)
  {
    v100 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0();
    v68 = v100;
    v69 = v66 + ((*(v96 + 80) + 32) & ~*(v96 + 80));
    v70 = *(v96 + 72);
    do
    {
      v71 = v93;
      sub_1C44718CC(v69, v93);
      v72 = (v71 + *(v97 + 32));
      v73 = *v72;
      v74 = v72[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44DBD5C(v71, type metadata accessor for EntityTriple);
      v100 = v68;
      v75 = *(v68 + 16);
      if (v75 >= *(v68 + 24) >> 1)
      {
        sub_1C44CD9C0();
        v68 = v100;
      }

      *(v68 + 16) = v75 + 1;
      v76 = v68 + 16 * v75;
      *(v76 + 32) = v73;
      *(v76 + 40) = v74;
      v69 += v70;
      --v67;
    }

    while (v67);
  }

  else
  {

    v68 = MEMORY[0x1E69E7CC0];
  }

  sub_1C4499940(v68, v77, v78, v79, v80, v81, v82, v83, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100);
  if (*(v90 + 16))
  {
    v85 = sub_1C4A32590(v84, v90);

    result = 1.0;
    if (v85)
    {
      return 0.0;
    }
  }

  else
  {

    return 1.0;
  }

  return result;
}

float sub_1C4B2B700(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t), uint64_t (*a6)(void))
{
  v130 = a2;
  v131 = a6;
  v120 = a5;
  v134 = a4;
  v133 = a3(0);
  v7 = sub_1C43FCDF8(v133);
  v128 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBFDC();
  v119 = v11;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v12);
  v122 = &v118 - v13;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v14);
  v135 = &v118 - v15;
  v16 = sub_1C4EFEEF8();
  v17 = sub_1C43FCDF8(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBFDC();
  v126 = v22;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v23);
  v132 = type metadata accessor for EntityTriple(0);
  v24 = sub_1C43FCDF8(v132);
  v127 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBFDC();
  v121 = v28;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v29);
  v124 = &v118 - v30;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v118 - v32;
  v34 = 0;
  v125 = a1;
  v129 = *(a1 + 16);
  v35 = (v19 + 8);
  v123 = MEMORY[0x1E69E7CC0];
  while (v129 != v34)
  {
    sub_1C4417720();
    v37 = *(v36 + 72);
    sub_1C44032D8();
    sub_1C44718CC(v38, v33);
    v39 = *(v132 + 20);
    sub_1C4EFE778();
    sub_1C4400D1C();
    sub_1C4B2DC98(&off_1EDDFCCA8, v40);
    sub_1C4F01578();
    sub_1C4F01578();
    if (v138 == v136 && v139 == v137)
    {
      v45 = sub_1C4413754();
      v46(v45);

LABEL_10:
      sub_1C448566C(v33, v121);
      v47 = v123;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v140 = v47;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C44032F0();
        sub_1C459DCC0();
        v47 = v140;
      }

      v49 = *(v47 + 16);
      if (v49 >= *(v47 + 24) >> 1)
      {
        sub_1C459DCC0();
        v47 = v140;
      }

      ++v34;
      *(v47 + 16) = v49 + 1;
      v123 = v47;
      sub_1C44032D8();
      sub_1C448566C(v121, v50);
    }

    else
    {
      v42 = sub_1C4F02938();
      v43 = sub_1C4413754();
      v44(v43);

      if (v42)
      {
        goto LABEL_10;
      }

      sub_1C44DBD5C(v33, type metadata accessor for EntityTriple);
      ++v34;
    }
  }

  v51 = v123;
  v52 = *(v123 + 16);
  if (v52)
  {
    v138 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0();
    v53 = v138;
    sub_1C4417720();
    v56 = v51 + (v55 & ~v54);
    v58 = *(v57 + 72);
    do
    {
      v59 = v124;
      sub_1C44718CC(v56, v124);
      v60 = (v59 + *(v132 + 32));
      v62 = *v60;
      v61 = v60[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44DBD5C(v59, type metadata accessor for EntityTriple);
      v138 = v53;
      v63 = *(v53 + 16);
      if (v63 >= *(v53 + 24) >> 1)
      {
        sub_1C44CD9C0();
        v53 = v138;
      }

      *(v53 + 16) = v63 + 1;
      v64 = v53 + 16 * v63;
      *(v64 + 32) = v62;
      *(v64 + 40) = v61;
      v56 += v58;
      --v52;
    }

    while (v52);
  }

  else
  {

    v53 = MEMORY[0x1E69E7CC0];
  }

  sub_1C4499940(v53, v65, v66, v67, v68, v69, v70, v71, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131);
  v129 = v72;
  v73 = 0;
  v74 = *(v130 + 16);
  v132 = MEMORY[0x1E69E7CC0];
  while (v74 != v73)
  {
    sub_1C4417720();
    v77 = v76 & ~v75;
    v79 = *(v78 + 72);
    sub_1C44718CC(v130 + v77 + v79 * v73, v135);
    v80 = *(v133 + 20);
    v81 = v126;
    sub_1C4EFE778();
    sub_1C4400D1C();
    sub_1C4B2DC98(&off_1EDDFCCA8, v82);
    sub_1C4F01578();
    sub_1C4F01578();
    if (v138 == v136 && v139 == v137)
    {
      v87 = sub_1C4413754();
      v88(v87);
    }

    else
    {
      v84 = sub_1C4F02938();
      v85 = v81;
      v86 = v84;
      (*v35)(v85, v16);

      if ((v86 & 1) == 0)
      {
        sub_1C44DBD5C(v135, v131);
        ++v73;
        continue;
      }
    }

    sub_1C448566C(v135, v122);
    v89 = v132;
    v90 = swift_isUniquelyReferenced_nonNull_native();
    v140 = v89;
    if ((v90 & 1) == 0)
    {
      v91 = sub_1C44032F0();
      v120(v91);
      v89 = v140;
    }

    v93 = *(v89 + 16);
    v92 = *(v89 + 24);
    if (v93 >= v92 >> 1)
    {
      (v120)(v92 > 1, v93 + 1, 1);
      v89 = v140;
    }

    ++v73;
    *(v89 + 16) = v93 + 1;
    v132 = v89;
    sub_1C448566C(v122, v89 + v77 + v93 * v79);
  }

  v94 = v132;
  v95 = *(v132 + 16);
  if (v95)
  {
    v138 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0();
    v96 = v138;
    sub_1C4417720();
    v99 = v94 + (v98 & ~v97);
    v101 = *(v100 + 72);
    v102 = v119;
    do
    {
      sub_1C44718CC(v99, v102);
      v103 = (v102 + *(v133 + 32));
      v105 = *v103;
      v104 = v103[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44DBD5C(v102, v131);
      v138 = v96;
      v106 = *(v96 + 16);
      if (v106 >= *(v96 + 24) >> 1)
      {
        sub_1C44CD9C0();
        v96 = v138;
      }

      *(v96 + 16) = v106 + 1;
      v107 = v96 + 16 * v106;
      *(v107 + 32) = v105;
      *(v107 + 40) = v104;
      v99 += v101;
      --v95;
    }

    while (v95);
  }

  else
  {

    v96 = MEMORY[0x1E69E7CC0];
  }

  sub_1C4499940(v96, v108, v109, v110, v111, v112, v113, v114, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131);
  if (*(v129 + 16))
  {
    v116 = sub_1C4A32590(v115, v129);

    result = 1.0;
    if (v116)
    {
      return 0.0;
    }
  }

  else
  {

    return 1.0;
  }

  return result;
}

uint64_t sub_1C4B2BF20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v72 = a2;
  v73 = a1;
  v71 = a3;
  v70 = sub_1C4EF9CD8();
  v74 = *(v70 - 8);
  v4 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v69 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C4EFF0C8();
  v75 = *(v6 - 8);
  v76 = v6;
  v7 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v65 - v12;
  v14 = type metadata accessor for EntityTriple(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C456902C(&unk_1EC0BC900, &unk_1C4F142D0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v65 - v20;
  v22 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v65 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v65 - v30;
  v32 = v77;
  result = sub_1C4ACE7DC();
  if (!v32)
  {
    v65 = v28;
    v66 = v25;
    v67 = 0;
    v68 = v9;
    v77 = v17;
    v34 = v75;
    v35 = v31;
    v36 = v72;
    if (v72)
    {
      sub_1C44F1938(v72, v21);
      v37 = type metadata accessor for GraphTriple(0);
      v38 = v13;
      if (sub_1C44157D4(v21, 1, v37) == 1)
      {
        sub_1C4420C3C(v21, &unk_1EC0BC900, &unk_1C4F142D0);
        v39 = 1;
      }

      else
      {
        (*(v34 + 16))(v31, v21, v76);
        sub_1C44DBD5C(v21, type metadata accessor for GraphTriple);
        v39 = 0;
      }

      v40 = v73;
      v41 = v74;
    }

    else
    {
      v39 = 1;
      v40 = v73;
      v41 = v74;
      v38 = v13;
    }

    sub_1C440BAA8(v35, v39, 1, v76);
    sub_1C44D0BD8(v40, v38);
    if (sub_1C44157D4(v38, 1, v14) == 1)
    {
      sub_1C4420C3C(v38, &qword_1EC0BA590, &qword_1C4F1F430);
      if (qword_1EDDFD028 != -1)
      {
        swift_once();
      }

      v42 = sub_1C4F00978();
      sub_1C442B738(v42, qword_1EDE2DE10);
      v43 = sub_1C4F00968();
      v44 = sub_1C4F01CD8();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_1C43F8000, v43, v44, "Software Matcher: skipping entityTriples are empty", v45, 2u);
        MEMORY[0x1C6942830](v45, -1, -1);
      }

      sub_1C46828B4();
      swift_allocError();
      *v46 = 0;
      swift_willThrow();
      return sub_1C4420C3C(v35, &unk_1EC0BA0E0, &qword_1C4F105A0);
    }

    else
    {
      v47 = v3;
      sub_1C448566C(v38, v77);
      if (v36)
      {
        v48 = sub_1C4B2B700(v40, v36, type metadata accessor for GraphTriple, type metadata accessor for GraphTriple, sub_1C459D7C8, type metadata accessor for GraphTriple);
      }

      else
      {
        v48 = 0.0;
      }

      v49 = v71;
      v50 = v76;
      v51 = v68;
      v52 = v65;
      v74 = type metadata accessor for SoftwareMatcher();
      v53 = *(v47 + *(v74 + 28));
      if (v48 <= v53)
      {
        sub_1C4EFF008();
        v50 = v76;
        sub_1C4420C3C(v35, &unk_1EC0BA0E0, &qword_1C4F105A0);
        sub_1C440BAA8(v52, 0, 1, v50);
        sub_1C44DDDBC(v52, v35);
        v48 = v53;
      }

      v76 = v47;
      v54 = v66;
      sub_1C457E858(v35, v66);
      v55 = sub_1C44157D4(v54, 1, v50);
      v73 = v35;
      if (v55 == 1)
      {
        sub_1C4420C3C(v54, &unk_1EC0BA0E0, &qword_1C4F105A0);
        result = sub_1C4F024A8();
        __break(1u);
      }

      else
      {
        v56 = v75;
        (*(v75 + 32))(v51, v54, v50);
        sub_1C4EFD538();
        v57 = type metadata accessor for EntityMatch(0);
        v58 = v50;
        v59 = *(v56 + 16);
        v60 = v77;
        v59(v49 + v57[5], v77, v50);
        v59(v49 + v57[6], v51, v50);
        v61 = v69;
        sub_1C4EF9C88();
        sub_1C4EF9AD8();
        v63 = v62;
        (*(v41 + 8))(v61, v70);
        (*(v56 + 8))(v51, v58);
        sub_1C44DBD5C(v60, type metadata accessor for EntityTriple);
        result = sub_1C4420C3C(v73, &unk_1EC0BA0E0, &qword_1C4F105A0);
        v64 = *(v76 + *(v74 + 24));
        *(v49 + v57[7]) = v48;
        *(v49 + v57[8]) = v63;
        *(v49 + v57[9]) = v64;
        *(v49 + v57[10]) = 0;
      }
    }
  }

  return result;
}