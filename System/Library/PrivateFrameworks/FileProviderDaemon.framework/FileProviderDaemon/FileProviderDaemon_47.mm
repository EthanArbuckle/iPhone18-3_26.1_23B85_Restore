uint64_t sub_1CF4E5E14()
{
  v0 = 0xE900000000000065;
  v17 = MEMORY[0x1E69E7CC0];
  sub_1CEFE95CC(0, 3, 0);
  result = v17;
  if (byte_1F4BEEFB8)
  {
    if (byte_1F4BEEFB8 == 1)
    {
      v2 = 0x6975427472617473;
      v3 = 0xEA0000000000646CLL;
    }

    else
    {
      v2 = 0x526E75524B435046;
      v3 = 0xED00006E6F736165;
    }
  }

  else
  {
    v2 = 0x6D69547472617473;
    v3 = 0xE900000000000065;
  }

  v5 = *(v17 + 16);
  v4 = *(v17 + 24);
  v6 = v5 + 1;
  if (v5 >= v4 >> 1)
  {
    sub_1CEFE95CC((v4 > 1), v5 + 1, 1);
    result = v17;
  }

  *(result + 16) = v6;
  v7 = result + 16 * v5;
  *(v7 + 32) = v2;
  *(v7 + 40) = v3;
  if (byte_1F4BEEFB9)
  {
    if (byte_1F4BEEFB9 == 1)
    {
      v8 = 0x6975427472617473;
      v9 = 0xEA0000000000646CLL;
    }

    else
    {
      v8 = 0x526E75524B435046;
      v9 = 0xED00006E6F736165;
    }
  }

  else
  {
    v8 = 0x6D69547472617473;
    v9 = 0xE900000000000065;
  }

  v18 = result;
  v10 = *(result + 24);
  v11 = v5 + 2;
  if (v6 >= v10 >> 1)
  {
    sub_1CEFE95CC((v10 > 1), v11, 1);
    result = v18;
  }

  *(result + 16) = v11;
  v12 = result + 16 * v6;
  *(v12 + 32) = v8;
  *(v12 + 40) = v9;
  if (byte_1F4BEEFBA)
  {
    if (byte_1F4BEEFBA == 1)
    {
      v13 = 0x6975427472617473;
      v0 = 0xEA0000000000646CLL;
    }

    else
    {
      v13 = 0x526E75524B435046;
      v0 = 0xED00006E6F736165;
    }
  }

  else
  {
    v13 = 0x6D69547472617473;
  }

  v19 = result;
  v15 = *(result + 16);
  v14 = *(result + 24);
  if (v15 >= v14 >> 1)
  {
    sub_1CEFE95CC((v14 > 1), v15 + 1, 1);
    result = v19;
  }

  *(result + 16) = v15 + 1;
  v16 = result + 16 * v15;
  *(v16 + 32) = v13;
  *(v16 + 40) = v0;
  return result;
}

id sub_1CF4E606C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v31 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v31 - v10;
  v12 = sub_1CF9E5CF8();
  v13 = *(*(v12 - 8) + 56);
  v13(v11, 1, 1, v12);
  if (*(a1 + 16))
  {
    v14 = sub_1CEFE4328(0x6D69547472617473, 0xE900000000000065);
    if (v15)
    {
      sub_1CEFD1104(*(a1 + 56) + 32 * v14, v33);
      if (swift_dynamicCast())
      {
        sub_1CF9E5C88();
        sub_1CEFCCC44(v11, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
        v13(v8, 0, 1, v12);
        sub_1CEFE55D0(v8, v11, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      }
    }
  }

  if (!*(a1 + 16))
  {
    v20 = 0;
    v19 = 0;
    goto LABEL_20;
  }

  v16 = sub_1CEFE4328(0x6975427472617473, 0xEA0000000000646CLL);
  if ((v17 & 1) == 0)
  {
    v19 = 0;
    v20 = 0;
    if (*(a1 + 16))
    {
      goto LABEL_17;
    }

LABEL_20:

    goto LABEL_21;
  }

  sub_1CEFD1104(*(a1 + 56) + 32 * v16, v33);
  v18 = swift_dynamicCast();
  if (v18)
  {
    v19 = v31;
  }

  else
  {
    v19 = 0;
  }

  if (v18)
  {
    v20 = v32;
  }

  else
  {
    v20 = 0;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_20;
  }

LABEL_17:
  v21 = sub_1CEFE4328(0x526E75524B435046, 0xED00006E6F736165);
  if ((v22 & 1) == 0)
  {
    goto LABEL_20;
  }

  sub_1CEFD1104(*(a1 + 56) + 32 * v21, v33);

  if (swift_dynamicCast())
  {
    v23 = v31;
    v24 = v32;
    goto LABEL_22;
  }

LABEL_21:
  v23 = 0;
  v24 = 0;
LABEL_22:
  sub_1CEFCCBDC(v11, v5, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v25 = objc_allocWithZone(type metadata accessor for FPCKReportStartSection(0));
  v26 = 0x6E776F6E6B6E75;
  if (v24)
  {
    v26 = v23;
  }

  v27 = 0xE700000000000000;
  if (v24)
  {
    v27 = v24;
  }

  v28 = &v25[OBJC_IVAR____TtC18FileProviderDaemon22FPCKReportStartSection_runReason];
  *v28 = v26;
  v28[1] = v27;
  v33[0] = 1;
  sub_1CEFCCBDC(v5, v8, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v29 = FPCKReportSection.init(phase:date:build:)(v33, v8, v19, v20);
  sub_1CEFCCC44(v5, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  sub_1CEFCCC44(v11, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  return v29;
}

uint64_t sub_1CF4E6414()
{
  v14 = MEMORY[0x1E69E7CC0];
  sub_1CEFE95CC(0, 6, 0);
  v0 = 0;
  result = v14;
  do
  {
    v2 = byte_1F4BEEFF8[v0 + 32];
    v3 = 0xD000000000000015;
    v4 = 0xD000000000000013;
    if (v2 == 4)
    {
      v4 = 0x53676E69646E6570;
      v5 = 0xEE00657A69537465;
    }

    else
    {
      v5 = 0x80000001CFA2C470;
    }

    if (v2 == 3)
    {
      v6 = 0x80000001CFA2C430;
    }

    else
    {
      v3 = v4;
      v6 = v5;
    }

    if (v2 == 1)
    {
      v7 = 0x646C697542737073;
    }

    else
    {
      v7 = 0xD000000000000010;
    }

    if (v2 == 1)
    {
      v8 = 0xE800000000000000;
    }

    else
    {
      v8 = 0x80000001CFA2C450;
    }

    if (!byte_1F4BEEFF8[v0 + 32])
    {
      v7 = 0x656D6954737073;
      v8 = 0xE700000000000000;
    }

    if (byte_1F4BEEFF8[v0 + 32] <= 2u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v3;
    }

    if (byte_1F4BEEFF8[v0 + 32] <= 2u)
    {
      v10 = v8;
    }

    else
    {
      v10 = v6;
    }

    v15 = result;
    v12 = *(result + 16);
    v11 = *(result + 24);
    if (v12 >= v11 >> 1)
    {
      sub_1CEFE95CC((v11 > 1), v12 + 1, 1);
      result = v15;
    }

    ++v0;
    *(result + 16) = v12 + 1;
    v13 = result + 16 * v12;
    *(v13 + 32) = v9;
    *(v13 + 40) = v10;
  }

  while (v0 != 6);
  return result;
}

uint64_t sub_1CF4E65F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v142 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v142 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v142 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v142 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v142 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v142 - v19;
  v21 = sub_1CF9E5CF8();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v148 = &v142 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v143 = &v142 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v147 = &v142 - v28;
  v29 = *(a1 + 16);
  v162 = a1;
  if (!v29)
  {
    v161 = 0;
    v155 = 0;
    goto LABEL_20;
  }

  v30 = sub_1CEFE4328(0xD000000000000010, 0x80000001CFA2C450);
  if ((v31 & 1) == 0)
  {
    v155 = 0;
    v161 = 0;
    if (*(a1 + 16))
    {
      goto LABEL_12;
    }

LABEL_20:
    v158 = 0;
    v153 = 0;
LABEL_21:
    v154 = 0;
    v40 = 1;
    goto LABEL_22;
  }

  sub_1CEFD1104(*(a1 + 56) + 32 * v30, v169);
  v32 = swift_dynamicCast();
  v33 = v167;
  if (!v32)
  {
    v33 = 0;
  }

  v155 = v33;
  if (v32)
  {
    v34 = v168;
  }

  else
  {
    v34 = 0;
  }

  v161 = v34;
  if (!*(a1 + 16))
  {
    goto LABEL_20;
  }

LABEL_12:
  v35 = sub_1CEFE4328(0xD000000000000015, 0x80000001CFA2C430);
  if (v36)
  {
    sub_1CEFD1104(*(a1 + 56) + 32 * v35, v169);
    v37 = swift_dynamicCast();
    v38 = v167;
    if (!v37)
    {
      v38 = 0;
    }

    v153 = v38;
    if (v37)
    {
      v39 = v168;
    }

    else
    {
      v39 = 0;
    }

    v158 = v39;
    if (!*(a1 + 16))
    {
      goto LABEL_21;
    }
  }

  else
  {
    v153 = 0;
    v158 = 0;
    if (!*(a1 + 16))
    {
      goto LABEL_21;
    }
  }

  v135 = sub_1CEFE4328(0x53676E69646E6570, 0xEE00657A69537465);
  if ((v136 & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_1CEFD1104(*(a1 + 56) + 32 * v135, v169);
  v137 = swift_dynamicCast();
  v138 = v167;
  if (!v137)
  {
    v138 = 0;
  }

  v154 = v138;
  v40 = v137 ^ 1;
LABEL_22:
  v160 = v40;
  v41 = v162;
  v42 = *(v162 + 16);
  v157 = v21;
  v156 = v22;
  v151 = v8;
  v150 = v11;
  v146 = v17;
  v145 = v20;
  v149 = v5;
  v144 = v14;
  if (v42 && (v43 = sub_1CEFE4328(0xD000000000000013, 0x80000001CFA2C470), (v44 & 1) != 0))
  {
    sub_1CEFD1104(*(v41 + 56) + 32 * v43, v169);
    v45 = swift_dynamicCast();
    v46 = v167;
    if (!v45)
    {
      v46 = 0;
    }

    v152 = v46;
    v47 = v45 ^ 1;
  }

  else
  {
    v152 = 0;
    v47 = 1;
  }

  v159 = v47;
  v48 = v41;
  v49 = v41 + 64;
  v50 = 1 << *(v41 + 32);
  v51 = -1;
  if (v50 < 64)
  {
    v51 = ~(-1 << v50);
  }

  v52 = v51 & *(v41 + 64);
  v53 = (v50 + 63) >> 6;
  v54 = v169;

  v55 = 0;
  v56 = MEMORY[0x1E69E7CC0];
  for (i = &unk_1CFA12A80; v52; v48 = v162)
  {
LABEL_35:
    while (1)
    {
      v59 = __clz(__rbit64(v52));
      v52 &= v52 - 1;
      v60 = v59 | (v55 << 6);
      v61 = (*(v48 + 48) + 16 * v60);
      v63 = *v61;
      v62 = v61[1];
      sub_1CEFD1104(*(v48 + 56) + 32 * v60, v170);
      v169[0] = v63;
      v169[1] = v62;

      if (sub_1CF19CB70(v63, v62))
      {
        sub_1CEFD1104(v170, &v167);
        sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
        if (swift_dynamicCast())
        {
          break;
        }
      }

      sub_1CEFCCC44(v169, &unk_1EC4C0D00, &unk_1CFA12A80);
      if (!v52)
      {
        goto LABEL_31;
      }
    }

    v64 = v166;

    sub_1CEFCCC44(v169, &unk_1EC4C0D00, &unk_1CFA12A80);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v56 = sub_1CF1F7198(0, v56[2] + 1, 1, v56);
    }

    v65 = v56;
    v66 = v56[2];
    v67 = v65;
    v68 = v65[3];
    v69 = v66 + 1;
    if (v66 >= v68 >> 1)
    {
      v163 = v66 + 1;
      v71 = sub_1CF1F7198((v68 > 1), v66 + 1, 1, v67);
      v69 = v163;
      v67 = v71;
    }

    v67[2] = v69;
    v70 = &v67[3 * v66];
    v56 = v67;
    v70[4] = v63;
    v70[5] = v62;
    v70[6] = v64;
  }

  while (1)
  {
LABEL_31:
    v58 = v55 + 1;
    if (__OFADD__(v55, 1))
    {
      __break(1u);
      goto LABEL_85;
    }

    if (v58 >= v53)
    {
      break;
    }

    v52 = *(v49 + 8 * v58);
    ++v55;
    if (v52)
    {
      v55 = v58;
      goto LABEL_35;
    }
  }

  v72 = sub_1CF4E30C8(MEMORY[0x1E69E7CC0], &unk_1EC4C0E50, &qword_1CFA07CD8);
  v163 = v56[2];
  if (!v163)
  {
LABEL_60:

    v96 = v162;
    if (*(v162 + 16) && (v97 = sub_1CEFE4328(0x656D6954737073, 0xE700000000000000), (v98 & 1) != 0))
    {
      sub_1CEFD1104(*(v96 + 56) + 32 * v97, v169);
      v99 = swift_dynamicCast();
      v100 = v161;
      if (v99 & 1) != 0 && *(v96 + 16) && (v101 = sub_1CEFE4328(0x646C697542737073, 0xE800000000000000), (v102))
      {
        sub_1CEFD1104(*(v96 + 56) + 32 * v101, v169);

        if (swift_dynamicCast())
        {
          v163 = v167;
          v162 = v168;
          v103 = v147;
          sub_1CF9E5C88();
          v161 = v100;
          v104 = v156;
          v105 = v145;
          i = v157;
          (*(v156 + 16))(v145, v103, v157);
          (*(v104 + 56))(v105, 0, 1, i);
          v54 = objc_allocWithZone(type metadata accessor for FPCKReportSPSSection(0));
          v106 = (v54 + OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_superPendingSetErrors);
          *v106 = 0;
          v106[1] = 0;
          v107 = v54 + OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_superPendingSetSize;
          *v107 = 0;
          v107[8] = 1;
          v108 = (v54 + OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_pendingSetErrors);
          *v108 = 0;
          v108[1] = 0;
          v109 = v54 + OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_pendingSetSize;
          *v109 = 0;
          v109[8] = 1;
          swift_beginAccess();
          v110 = v158;
          *v106 = v153;
          v106[1] = v110;
          swift_beginAccess();
          *v107 = v152;
          v107[8] = v159;
          swift_beginAccess();
          v111 = v161;
          *v108 = v155;
          v108[1] = v111;
          swift_beginAccess();
          *v109 = v154;
          v109[8] = v160;
          *(v54 + OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_detailedPayload) = v72;
          v55 = v105;
          v52 = v104;
          v49 = v146;
          sub_1CEFCCBDC(v105, v146, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
          *(v54 + OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_phase) = 2;
          v48 = v144;
          sub_1CEFCCBDC(v49, v144, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
          v112 = *(v52 + 48);
          if (v112(v48, 1, i) == 1)
          {
            v113 = v143;
            sub_1CF9E5C88();
            if (v112(v48, 1, i) != 1)
            {
              sub_1CEFCCC44(v48, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
            }

            goto LABEL_86;
          }

LABEL_85:
          v113 = v143;
          (*(v52 + 32))(v143, v48, i);
LABEL_86:
          (*(v52 + 32))(v54 + OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_date, v113, i);
          v139 = (v54 + OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build);
          v140 = v162;
          *v139 = v163;
          v139[1] = v140;
          v141 = type metadata accessor for FPCKReportSection(0);
          v164.receiver = v54;
          v164.super_class = v141;
          v134 = objc_msgSendSuper2(&v164, sel_init);
          sub_1CEFCCC44(v49, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
          sub_1CEFCCC44(v55, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
          (*(v52 + 8))(v147, i);
          return v134;
        }
      }

      else
      {
      }
    }

    else
    {

      v100 = v161;
    }

    v114 = v158;
    v115 = v160;
    if ((((v100 | v158) == 0) & v160 & v159) != 0)
    {

      return 0;
    }

    v117 = v156;
    v118 = *(v156 + 56);
    v161 = v100;
    v119 = v150;
    v120 = v157;
    v118(v150, 1, 1, v157);
    v121 = objc_allocWithZone(type metadata accessor for FPCKReportSPSSection(0));
    v160 = v115;
    v122 = v121;
    v123 = &v121[OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_superPendingSetErrors];
    *v123 = 0;
    *(v123 + 1) = 0;
    v124 = &v121[OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_superPendingSetSize];
    *v124 = 0;
    v124[8] = 1;
    v125 = &v121[OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_pendingSetErrors];
    *v125 = 0;
    *(v125 + 1) = 0;
    v126 = &v121[OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_pendingSetSize];
    *v126 = 0;
    v126[8] = 1;
    swift_beginAccess();
    *v123 = v153;
    *(v123 + 1) = v114;
    swift_beginAccess();
    *v124 = v152;
    v124[8] = v159;
    swift_beginAccess();
    v127 = v161;
    *v125 = v155;
    *(v125 + 1) = v127;
    swift_beginAccess();
    *v126 = v154;
    v126[8] = v160;
    *&v122[OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_detailedPayload] = v72;
    v128 = v151;
    sub_1CEFCCBDC(v119, v151, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v122[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_phase] = 2;
    v129 = v149;
    sub_1CEFCCBDC(v128, v149, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v130 = *(v117 + 48);
    if (v130(v129, 1, v120) == 1)
    {
      v131 = v148;
      sub_1CF9E5C88();
      if (v130(v129, 1, v120) != 1)
      {
        sub_1CEFCCC44(v129, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      }
    }

    else
    {
      v131 = v148;
      (*(v117 + 32))(v148, v129, v120);
    }

    (*(v117 + 32))(&v122[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_date], v131, v120);
    v132 = &v122[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build];
    *v132 = 0x6E776F6E6B6E75;
    v132[1] = 0xE700000000000000;
    v133 = type metadata accessor for FPCKReportSection(0);
    v165.receiver = v122;
    v165.super_class = v133;
    v134 = objc_msgSendSuper2(&v165, sel_init);
    sub_1CEFCCC44(v128, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v119, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    return v134;
  }

  v73 = 0;
  v74 = v56;
  v75 = (v56 + 6);
  while (v73 < v74[2])
  {
    v79 = *(v75 - 2);
    v80 = *(v75 - 1);
    v81 = *v75;
    swift_bridgeObjectRetain_n();
    v82 = v81;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v169[0] = v72;
    v84 = sub_1CEFE4328(v79, v80);
    v86 = v72[2];
    v87 = (v85 & 1) == 0;
    v88 = __OFADD__(v86, v87);
    v89 = v86 + v87;
    if (v88)
    {
      goto LABEL_88;
    }

    v90 = v85;
    if (v72[3] < v89)
    {
      sub_1CF7C3E7C(v89, isUniquelyReferenced_nonNull_native);
      v84 = sub_1CEFE4328(v79, v80);
      if ((v90 & 1) != (v91 & 1))
      {
        goto LABEL_90;
      }

LABEL_55:
      if (v90)
      {
        goto LABEL_47;
      }

      goto LABEL_56;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_55;
    }

    v95 = v84;
    sub_1CF7CF818();
    v84 = v95;
    if (v90)
    {
LABEL_47:
      v76 = v84;

      v72 = v169[0];
      v77 = *(v169[0] + 56);
      v78 = *(v77 + 8 * v76);
      *(v77 + 8 * v76) = v82;

      goto LABEL_48;
    }

LABEL_56:
    v72 = v169[0];
    *(v169[0] + 8 * (v84 >> 6) + 64) |= 1 << v84;
    v92 = (v72[6] + 16 * v84);
    *v92 = v79;
    v92[1] = v80;
    *(v72[7] + 8 * v84) = v82;

    v93 = v72[2];
    v88 = __OFADD__(v93, 1);
    v94 = v93 + 1;
    if (v88)
    {
      goto LABEL_89;
    }

    v72[2] = v94;
LABEL_48:
    ++v73;
    v75 += 3;
    if (v163 == v73)
    {
      goto LABEL_60;
    }
  }

  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  result = sub_1CF9E8108();
  __break(1u);
  return result;
}

uint64_t sub_1CF4E75F4()
{
  v8 = MEMORY[0x1E69E7CC0];
  sub_1CEFE95CC(0, 2, 0);
  result = v8;
  v2 = *(v8 + 16);
  v1 = *(v8 + 24);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_1CEFE95CC((v1 > 1), v2 + 1, 1);
    result = v8;
    v1 = *(v8 + 24);
    v3 = v1 >> 1;
  }

  *(result + 16) = v4;
  v5 = result + 16 * v2;
  *(v5 + 32) = 0x65747369736E6F63;
  *(v5 + 40) = 0xEF656D695479636ELL;
  v6 = v2 + 2;
  if (v3 < v6)
  {
    sub_1CEFE95CC((v1 > 1), v6, 1);
    result = v8;
  }

  *(result + 16) = v6;
  v7 = result + 16 * v4;
  *(v7 + 32) = 0xD000000000000010;
  *(v7 + 40) = 0x80000001CFA4FE90;
  return result;
}

uint64_t sub_1CF4E76FC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v94 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v95 = &v87 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v96 = &v87 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v88 = &v87 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v89 = &v87 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v91 = &v87 - v14;
  v15 = sub_1CF9E5CF8();
  v97 = *(v15 - 8);
  v16 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v93 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v87 = &v87 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v90 = &v87 - v21;
  v22 = (a1 + 8);
  v23 = 1 << *(a1 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & a1[8];
  isUniquelyReferenced_nonNull_native = (v23 + 63) >> 6;
  v27 = v105;

  v28 = 0;
  for (i = MEMORY[0x1E69E7CC0]; v25; v27 = v105)
  {
LABEL_10:
    while (1)
    {
      v30 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
      v31 = v30 | (v28 << 6);
      v32 = (a1[6] + 16 * v31);
      v34 = *v32;
      v33 = v32[1];
      sub_1CEFD1104(a1[7] + 32 * v31, v106);
      v105[0] = v34;
      v105[1] = v33;

      if ((sub_1CF19CB70(v34, v33) & 1) == 0)
      {
        v35 = sub_1CF4E5E14();
        v36 = sub_1CF4E5014();
        v104[0] = v35;
        sub_1CF1E8CF8(v36);
        v37 = v104[0];
        v38 = sub_1CF4E6414();
        v104[0] = v37;
        sub_1CF1E8CF8(v38);
        v39 = v104[0];
        v40 = sub_1CF4E75F4();
        v104[0] = v39;
        sub_1CF1E8CF8(v40);
        v41 = sub_1CF8E44FC(v104[0]);

        LOBYTE(v39) = sub_1CEFDB148(v34, v33, v41);
        v27 = v105;

        if ((v39 & 1) == 0)
        {
          sub_1CEFD1104(v106, v104);
          sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
          if (swift_dynamicCast())
          {
            break;
          }
        }
      }

      sub_1CEFCCC44(v105, &unk_1EC4C0D00, &unk_1CFA12A80);
      if (!v25)
      {
        goto LABEL_6;
      }
    }

    v99 = v103;

    sub_1CEFCCC44(v105, &unk_1EC4C0D00, &unk_1CFA12A80);
    v42 = a1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      i = sub_1CF1F7198(0, i[2] + 1, 1, i);
    }

    v44 = i[2];
    v43 = i[3];
    if (v44 >= v43 >> 1)
    {
      i = sub_1CF1F7198((v43 > 1), v44 + 1, 1, i);
    }

    v45 = i;
    i[2] = v44 + 1;
    v46 = &v45[3 * v44];
    v46[4] = v34;
    v46[5] = v33;
    v46[6] = v99;
    a1 = v42;
  }

  while (1)
  {
LABEL_6:
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    if (v29 >= isUniquelyReferenced_nonNull_native)
    {
      break;
    }

    v25 = *(v22 + 8 * v29);
    ++v28;
    if (v25)
    {
      v28 = v29;
      goto LABEL_10;
    }
  }

  v92 = v15;
  v98 = a1;

  v25 = sub_1CF4E30C8(MEMORY[0x1E69E7CC0], &unk_1EC4C0E50, &qword_1CFA07CD8);
  v47 = i;
  v99 = i[2];
  if (v99)
  {
    v15 = 0;
    a1 = i + 6;
    do
    {
      if (v15 >= v47[2])
      {
        goto LABEL_55;
      }

      v51 = *(a1 - 2);
      v50 = *(a1 - 1);
      v52 = *a1;
      swift_bridgeObjectRetain_n();
      v28 = v52;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v105[0] = v25;
      v27 = v25;
      v22 = sub_1CEFE4328(v51, v50);
      v54 = *(v25 + 16);
      v55 = (v53 & 1) == 0;
      v56 = v54 + v55;
      if (__OFADD__(v54, v55))
      {
        goto LABEL_56;
      }

      v57 = v53;
      if (*(v25 + 24) >= v56)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v53)
          {
            goto LABEL_21;
          }
        }

        else
        {
          v27 = v105;
          sub_1CF7CF818();
          if (v57)
          {
            goto LABEL_21;
          }
        }
      }

      else
      {
        sub_1CF7C3E7C(v56, isUniquelyReferenced_nonNull_native);
        v27 = v105[0];
        v58 = sub_1CEFE4328(v51, v50);
        if ((v57 & 1) != (v59 & 1))
        {
          goto LABEL_60;
        }

        v22 = v58;
        if (v57)
        {
LABEL_21:

          v25 = v105[0];
          v48 = *(v105[0] + 56);
          v49 = *(v48 + 8 * v22);
          *(v48 + 8 * v22) = v28;

          goto LABEL_22;
        }
      }

      v25 = v105[0];
      *(v105[0] + 8 * (v22 >> 6) + 64) |= 1 << v22;
      v60 = (*(v25 + 48) + 16 * v22);
      *v60 = v51;
      v60[1] = v50;
      *(*(v25 + 56) + 8 * v22) = v28;

      v61 = *(v25 + 16);
      v62 = __OFADD__(v61, 1);
      v63 = v61 + 1;
      if (v62)
      {
        __break(1u);
LABEL_60:
        result = sub_1CF9E8108();
        __break(1u);
        return result;
      }

      *(v25 + 16) = v63;
LABEL_22:
      ++v15;
      a1 += 3;
      v47 = i;
    }

    while (v99 != v15);
  }

  if (!*(v25 + 16))
  {

    return 0;
  }

  v64 = v98;
  if (v98[2] && (v65 = sub_1CEFE4328(0x65747369736E6F63, 0xEF656D695479636ELL), (v66 & 1) != 0))
  {
    sub_1CEFD1104(v64[7] + 32 * v65, v105);
    v67 = swift_dynamicCast();
    a1 = v92;
    isUniquelyReferenced_nonNull_native = v97;
    v68 = v96;
    if (v67 & 1) != 0 && v64[2] && (v69 = sub_1CEFE4328(0xD000000000000010, 0x80000001CFA4FE90), (v70))
    {
      sub_1CEFD1104(v64[7] + 32 * v69, v105);

      if (swift_dynamicCast())
      {
        v22 = v104[0];
        v28 = v104[1];
        v71 = v90;
        sub_1CF9E5C88();
        v72 = v91;
        (*(isUniquelyReferenced_nonNull_native + 16))(v91, v71, a1);
        (*(isUniquelyReferenced_nonNull_native + 56))(v72, 0, 1, a1);
        v27 = objc_allocWithZone(type metadata accessor for FPCKReportConsistencySection(0));
        *(v27 + OBJC_IVAR____TtC18FileProviderDaemon28FPCKReportConsistencySection_payload) = v25;
        v73 = v72;
        v15 = v89;
        sub_1CEFCCBDC(v73, v89, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
        *(v27 + OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_phase) = 11;
        v25 = v88;
        sub_1CEFCCBDC(v15, v88, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
        v74 = *(isUniquelyReferenced_nonNull_native + 48);
        if (v74(v25, 1, a1) == 1)
        {
          v75 = v87;
          sub_1CF9E5C88();
          if (v74(v25, 1, a1) != 1)
          {
            sub_1CEFCCC44(v25, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
          }

          goto LABEL_58;
        }

LABEL_57:
        v75 = v87;
        (*(isUniquelyReferenced_nonNull_native + 32))(v87, v25, a1);
LABEL_58:
        (*(isUniquelyReferenced_nonNull_native + 32))(v27 + OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_date, v75, a1);
        v85 = (v27 + OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build);
        *v85 = v22;
        v85[1] = v28;
        v86 = type metadata accessor for FPCKReportSection(0);
        v101.receiver = v27;
        v101.super_class = v86;
        v76 = objc_msgSendSuper2(&v101, sel_init);
        sub_1CEFCCC44(v15, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
        sub_1CEFCCC44(v91, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
        (*(isUniquelyReferenced_nonNull_native + 8))(v90, a1);
        return v76;
      }
    }

    else
    {
    }
  }

  else
  {

    a1 = v92;
    isUniquelyReferenced_nonNull_native = v97;
    v68 = v96;
  }

  (*(isUniquelyReferenced_nonNull_native + 56))(v68, 1, 1, a1);
  v77 = objc_allocWithZone(type metadata accessor for FPCKReportConsistencySection(0));
  *&v77[OBJC_IVAR____TtC18FileProviderDaemon28FPCKReportConsistencySection_payload] = v25;
  v78 = v95;
  sub_1CEFCCBDC(v68, v95, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v77[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_phase] = 11;
  v79 = v94;
  sub_1CEFCCBDC(v78, v94, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v80 = *(isUniquelyReferenced_nonNull_native + 48);
  if (v80(v79, 1, a1) == 1)
  {
    v81 = v93;
    sub_1CF9E5C88();
    if (v80(v79, 1, a1) != 1)
    {
      sub_1CEFCCC44(v79, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    }
  }

  else
  {
    v81 = v93;
    (*(isUniquelyReferenced_nonNull_native + 32))(v93, v79, a1);
  }

  (*(isUniquelyReferenced_nonNull_native + 32))(&v77[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_date], v81, a1);
  v82 = &v77[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build];
  *v82 = 0x6E776F6E6B6E75;
  v82[1] = 0xE700000000000000;
  v83 = type metadata accessor for FPCKReportSection(0);
  v102.receiver = v77;
  v102.super_class = v83;
  v76 = objc_msgSendSuper2(&v102, sel_init);
  sub_1CEFCCC44(v78, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  sub_1CEFCCC44(v68, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  return v76;
}

id sub_1CF4E827C(uint64_t *a1)
{
  v39[5] = *MEMORY[0x1E69E9840];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0E40, &qword_1CFA07CD0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v31 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF4E890C();
  sub_1CF9E8298();
  if (v1)
  {
    v11 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1CF9E8288();
    __swift_project_boxed_opaque_existential_1(v39, v39[3]);
    sub_1CF190888();
    sub_1CF9E8058();
    v17 = v38[0];
    v16 = v38[1];
    v18 = objc_opt_self();
    v19 = sub_1CF9E5B48();
    v38[0] = 0;
    v20 = [v18 JSONObjectWithData:v19 options:0 error:v38];

    if (v20)
    {
      v21 = v38[0];
      sub_1CF9E7728();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0920, &qword_1CFA01CC0);
      if (swift_dynamicCast())
      {
        v22 = v37;
        v23 = objc_allocWithZone(type metadata accessor for FPCKReport());
        v30 = sub_1CF4DF990(v22);
        sub_1CEFE4714(v17, v16);
        goto LABEL_5;
      }

      sub_1CEFE4714(v17, v16);
    }

    else
    {
      v24 = v38[0];
      v25 = sub_1CF9E57F8();

      swift_willThrow();
      sub_1CEFE4714(v17, v16);
    }

    v12 = sub_1CF4E04E8(MEMORY[0x1E69E7CC0]);
    v13 = objc_allocWithZone(type metadata accessor for FPCKReport());
    v30 = sub_1CF4DF990(v12);
LABEL_5:

    __swift_destroy_boxed_opaque_existential_1(v39);
    goto LABEL_6;
  }

  type metadata accessor for FPCKReportStartSection(0);
  LOBYTE(v38[0]) = 0;
  sub_1CF4D6B90(&qword_1EC4C08F8, type metadata accessor for FPCKReportStartSection);
  sub_1CF9E7D88();
  v9 = v39[0];
  type metadata accessor for FPCKReportStatusSection(0);
  LOBYTE(v38[0]) = 1;
  sub_1CF4D6B90(&qword_1EC4C08D8, type metadata accessor for FPCKReportStatusSection);
  sub_1CF9E7D88();
  v10 = v39[0];
  type metadata accessor for FPCKReportSPSSection(0);
  LOBYTE(v38[0]) = 2;
  sub_1CF4D6B90(&qword_1EC4C0928, type metadata accessor for FPCKReportSPSSection);
  sub_1CF9E7CF8();
  v35 = v39[0];
  type metadata accessor for FPCKReportConsistencySection(0);
  LOBYTE(v38[0]) = 3;
  sub_1CF4D6B90(&qword_1EC4C0948, type metadata accessor for FPCKReportConsistencySection);
  sub_1CF9E7CF8();
  v34 = v39[0];
  v33 = type metadata accessor for FPCKReport();
  v26 = objc_allocWithZone(v33);
  v27 = OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_superPendingSet;
  *&v26[OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_superPendingSet] = 0;
  v32 = OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_consistency;
  *&v26[OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_consistency] = 0;
  *&v26[OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_start] = v9;
  *&v26[OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_latest] = v10;
  swift_beginAccess();
  *&v26[v27] = v35;
  v28 = v32;
  swift_beginAccess();
  v29 = v33;
  *&v26[v28] = v34;
  v36.receiver = v26;
  v36.super_class = v29;
  v30 = objc_msgSendSuper2(&v36, sel_init);
  (*(v4 + 8))(v7, v3);
LABEL_6:
  __swift_destroy_boxed_opaque_existential_1(a1);
  v14 = *MEMORY[0x1E69E9840];
  return v30;
}

unint64_t sub_1CF4E890C()
{
  result = qword_1EC4C0978;
  if (!qword_1EC4C0978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C0978);
  }

  return result;
}

id sub_1CF4E8960(id a1, void *a2, void *a3, void *a4)
{
  v75 = a2;
  v8 = sub_1CF9E5CF8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v68 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v65 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v67 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v71 = &v65 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v70 = &v65 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v65 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v65 - v26;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v65 - v29;
  v72 = v9;
  v73 = OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_superPendingSet;
  *&v4[OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_superPendingSet] = 0;
  v74 = OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_consistency;
  *&v4[OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_consistency] = 0;
  if (a1)
  {
    v32 = v8;
    v33 = a1;
    v34 = v75;
  }

  else
  {
    v69 = 0;
    v65 = a3;
    v66 = a4;
    (*(v9 + 56))(&v65 - v29, 1, 1, v8, v30);
    v35 = objc_allocWithZone(type metadata accessor for FPCKReportStartSection(0));
    v36 = &v35[OBJC_IVAR____TtC18FileProviderDaemon22FPCKReportStartSection_runReason];
    *v36 = 0x6E776F6E6B6E75;
    v36[1] = 0xE700000000000000;
    sub_1CEFCCBDC(v31, v27, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v35[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_phase] = 1;
    sub_1CEFCCBDC(v27, v24, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v37 = *(v9 + 48);
    if (v37(v24, 1, v8) == 1)
    {
      sub_1CF9E5C88();
      if (v37(v24, 1, v8) != 1)
      {
        sub_1CEFCCC44(v24, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      }
    }

    else
    {
      (*(v9 + 32))(v14, v24, v8);
    }

    v38 = *(v9 + 32);
    v32 = v8;
    v38(&v35[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_date], v14, v8);
    v39 = &v35[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build];
    *v39 = 0x6E776F6E6B6E75;
    v39[1] = 0xE700000000000000;
    v40 = type metadata accessor for FPCKReportSection(0);
    v78.receiver = v35;
    v78.super_class = v40;
    v33 = objc_msgSendSuper2(&v78, sel_init);
    sub_1CEFCCC44(v27, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v31, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    a4 = v66;
    a3 = v65;
    v34 = v75;
    a1 = v69;
  }

  *&v4[OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_start] = v33;
  if (v34)
  {
    v41 = a1;
    v42 = v34;
    v43 = &selRef_defaultNSDomainForDescriptor_;
  }

  else
  {
    v69 = a1;
    v44 = v72;
    v45 = v70;
    v46 = v32;
    (*(v72 + 56))(v70, 1, 1, v32, v30);
    v47 = objc_allocWithZone(type metadata accessor for FPCKReportStatusSection(0));
    *&v47[OBJC_IVAR____TtC18FileProviderDaemon23FPCKReportStatusSection_error] = 0;
    v48 = v71;
    sub_1CEFCCBDC(v45, v71, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v47[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_phase] = 1;
    v49 = v67;
    sub_1CEFCCBDC(v48, v67, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v50 = *(v44 + 48);
    if (v50(v49, 1, v46) == 1)
    {
      v51 = v69;
      v52 = v68;
      sub_1CF9E5C88();
      if (v50(v49, 1, v46) != 1)
      {
        sub_1CEFCCC44(v49, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      }
    }

    else
    {
      v52 = v68;
      (*(v44 + 32))(v68, v49, v46);
      v53 = v69;
    }

    (*(v72 + 32))(&v47[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_date], v52, v46);
    v54 = &v47[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build];
    *v54 = 0x6E776F6E6B6E75;
    v54[1] = 0xE700000000000000;
    v55 = type metadata accessor for FPCKReportSection(0);
    v77.receiver = v47;
    v77.super_class = v55;
    v43 = &selRef_defaultNSDomainForDescriptor_;
    v42 = objc_msgSendSuper2(&v77, sel_init);
    sub_1CEFCCC44(v71, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v70, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v34 = v75;
  }

  *&v4[OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_latest] = v42;
  v56 = v73;
  swift_beginAccess();
  v57 = *&v4[v56];
  *&v4[v56] = a3;
  v58 = v34;
  v59 = a3;

  v60 = v74;
  swift_beginAccess();
  v61 = *&v4[v60];
  *&v4[v60] = a4;
  v62 = a4;

  v63 = type metadata accessor for FPCKReport();
  v76.receiver = v4;
  v76.super_class = v63;
  return objc_msgSendSuper2(&v76, v43[418]);
}

unint64_t sub_1CF4E901C()
{
  result = qword_1EC4C09A0;
  if (!qword_1EC4C09A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C09A0);
  }

  return result;
}

uint64_t keypath_getTm@<X0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;
}

uint64_t keypath_get_3Tm@<X0>(void *a1@<X0>, void *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1 + *a2;
  result = swift_beginAccess();
  v6 = *(v4 + 8);
  *a3 = *v4;
  *(a3 + 8) = v6;
  return result;
}

uint64_t keypath_set_4Tm(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *a2 + *a5;
  result = swift_beginAccess();
  *v7 = v5;
  *(v7 + 8) = v6;
  return result;
}

uint64_t keypath_get_9Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
}

id keypath_get_13Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *a3 = v6;

  return v6;
}

uint64_t getEnumTagSinglePayload for FPCKPhase(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FPCKPhase(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1CF4E938C()
{
  result = sub_1CF9E5CF8();
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

unint64_t sub_1CF4E9EB0()
{
  result = qword_1EC4C0A88;
  if (!qword_1EC4C0A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C0A88);
  }

  return result;
}

unint64_t sub_1CF4E9F08()
{
  result = qword_1EC4C0A90;
  if (!qword_1EC4C0A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C0A90);
  }

  return result;
}

unint64_t sub_1CF4E9F60()
{
  result = qword_1EC4C0A98;
  if (!qword_1EC4C0A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C0A98);
  }

  return result;
}

unint64_t sub_1CF4E9FB8()
{
  result = qword_1EC4C0AA0;
  if (!qword_1EC4C0AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C0AA0);
  }

  return result;
}

unint64_t sub_1CF4EA010()
{
  result = qword_1EC4C0AA8;
  if (!qword_1EC4C0AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C0AA8);
  }

  return result;
}

unint64_t sub_1CF4EA068()
{
  result = qword_1EC4C0AB0;
  if (!qword_1EC4C0AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C0AB0);
  }

  return result;
}

unint64_t sub_1CF4EA0C0()
{
  result = qword_1EC4C0AB8;
  if (!qword_1EC4C0AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C0AB8);
  }

  return result;
}

unint64_t sub_1CF4EA118()
{
  result = qword_1EC4C0AC0;
  if (!qword_1EC4C0AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C0AC0);
  }

  return result;
}

unint64_t sub_1CF4EA170()
{
  result = qword_1EC4C0AC8;
  if (!qword_1EC4C0AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C0AC8);
  }

  return result;
}

unint64_t sub_1CF4EA1C8()
{
  result = qword_1EC4C0AD0;
  if (!qword_1EC4C0AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C0AD0);
  }

  return result;
}

unint64_t sub_1CF4EA220()
{
  result = qword_1EC4C0AD8;
  if (!qword_1EC4C0AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C0AD8);
  }

  return result;
}

unint64_t sub_1CF4EA278()
{
  result = qword_1EC4C0AE0;
  if (!qword_1EC4C0AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C0AE0);
  }

  return result;
}

unint64_t sub_1CF4EA2D0()
{
  result = qword_1EC4C0AE8;
  if (!qword_1EC4C0AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C0AE8);
  }

  return result;
}

unint64_t sub_1CF4EA328()
{
  result = qword_1EC4C0AF0;
  if (!qword_1EC4C0AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C0AF0);
  }

  return result;
}

unint64_t sub_1CF4EA380()
{
  result = qword_1EC4C0AF8;
  if (!qword_1EC4C0AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C0AF8);
  }

  return result;
}

unint64_t sub_1CF4EA3D8()
{
  result = qword_1EC4C0B00;
  if (!qword_1EC4C0B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C0B00);
  }

  return result;
}

unint64_t sub_1CF4EA430()
{
  result = qword_1EC4C0B08;
  if (!qword_1EC4C0B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C0B08);
  }

  return result;
}

unint64_t sub_1CF4EA488()
{
  result = qword_1EC4C0B10;
  if (!qword_1EC4C0B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C0B10);
  }

  return result;
}

unint64_t sub_1CF4EA4DC()
{
  result = qword_1EC4C0D50;
  if (!qword_1EC4C0D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C0D50);
  }

  return result;
}

uint64_t sub_1CF4EA570()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

void sub_1CF4EA5A0()
{
  v1 = *v0;

  MEMORY[0x1D3868CC0](10, 0xE100000000000000);
  v2 = sub_1CF9E6888();

  [v1 put_];
}

uint64_t sub_1CF4EA624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v13 = *(v5 + 8);
  v14 = *(v5 + 16);
  v11 = *v5;

  result = MEMORY[0x1D3868CC0](a1, a2);
  a5[3] = a3;
  a5[4] = a4;
  *a5 = v11;
  a5[1] = v13;
  a5[2] = v14;
  return result;
}

id sub_1CF4EA6B0@<X0>(void *a1@<X0>, void *a2@<X1>, id *a3@<X8>)
{
  v5 = *v3;
  *a3 = *v3;
  a3[1] = a1;
  a3[3] = &type metadata for SubFPCTLTermDumper;
  a3[4] = &off_1F4C03038;
  a3[2] = a2;

  return v5;
}

void sub_1CF4EA71C(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    type metadata accessor for ItemMetadata();
    if (v3 <= 0x3F)
    {
      sub_1CF24F8BC(319, &unk_1EC4C0F60);
      if (v4 <= 0x3F)
      {
        sub_1CF24F8BC(319, &qword_1EDEA3740);
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1CF4EA80C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(sub_1CF9E5CF8() - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 64);
  v11 = *(v6 + 80);
  if (v9 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = *(v8 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  if (v9)
  {
    v15 = 7;
  }

  else
  {
    v15 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v16 = v10 + v11;
  v17 = v10 + 7;
  v18 = *(v8 + 80);
  v19 = *(v8 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v20 = v18 + 16;
  v21 = v18 + 12;
  if (v14 >= a2)
  {
    goto LABEL_34;
  }

  v12 = *(v8 + 64);
  v22 = ((((v20 + ((v17 + (v16 & ~v11)) & 0xFFFFFFFFFFFFFFF8)) & v19) + ((((((((((v15 + v12 + ((v18 + ((((((((v12 + ((v12 + v18 + (v21 & ~v18)) & ~v18) + 12) & 0xFFFFFFFFFFFFFFF8) + 27) & 0xFFFFFFFFFFFFFFF8) + 21) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 10) & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 10;
  if (v22 <= 3)
  {
    v23 = ((a2 - v14 + 0xFFFF) >> 16) + 1;
  }

  else
  {
    v23 = 2;
  }

  if (v23 >= 0x10000)
  {
    v24 = 4;
  }

  else
  {
    v24 = 2;
  }

  if (v23 < 0x100)
  {
    v24 = 1;
  }

  if (v23 >= 2)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  if (v25 > 1)
  {
    if (v25 == 2)
    {
      v26 = *(a1 + v22);
      if (!*(a1 + v22))
      {
        goto LABEL_34;
      }
    }

    else
    {
      v26 = *(a1 + v22);
      if (!v26)
      {
        goto LABEL_34;
      }
    }

LABEL_30:
    v28 = (v26 - 1) << (8 * v22);
    if (v22 <= 3)
    {
      v29 = *a1;
    }

    else
    {
      v28 = 0;
      v29 = *a1;
    }

    return v14 + (v29 | v28) + 1;
  }

  if (v25)
  {
    v26 = *(a1 + v22);
    if (*(a1 + v22))
    {
      goto LABEL_30;
    }
  }

LABEL_34:
  if (v7 == v14)
  {
    v30 = *(v6 + 48);

    return v30(a1, v7, v5);
  }

  else
  {
    v31 = (v17 + ((a1 + v16) & ~v11)) & 0xFFFFFFFFFFFFFFF8;
    if ((v13 & 0x80000000) != 0)
    {
      v33 = *(v8 + 48);

      return v33((v21 + ((v20 + v31) & v19)) & ~v18);
    }

    else
    {
      v32 = *(v31 + 8);
      if (v32 >= 0xFFFFFFFF)
      {
        LODWORD(v32) = -1;
      }

      return (v32 + 1);
    }
  }
}

void sub_1CF4EAB28(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v33 = v8;
  v9 = *(v8 + 84);
  v10 = *(sub_1CF9E5CF8() - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v8 + 80);
  if (v11 <= 0x7FFFFFFE)
  {
    v14 = 2147483646;
  }

  else
  {
    v14 = *(v10 + 84);
  }

  if (v9 <= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v9;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(v10 + 80);
  v18 = *(v10 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v19 = ((v17 + ((((((((*(v10 + 64) + ((*(v10 + 64) + v17 + ((v17 + 12) & ~v17)) & ~v17) + 12) & 0xFFFFFFFFFFFFFFF8) + 27) & 0xFFFFFFFFFFFFFFF8) + 21) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 10) & ~v17) + *(v10 + 64);
  if (v11)
  {
    v20 = ((v17 + ((((((((*(v10 + 64) + ((*(v10 + 64) + v17 + ((v17 + 12) & ~v17)) & ~v17) + 12) & 0xFFFFFFFFFFFFFFF8) + 27) & 0xFFFFFFFFFFFFFFF8) + 21) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 10) & ~v17) + *(v10 + 64);
  }

  else
  {
    v20 = v19 + 1;
  }

  v21 = ((((v17 + 16 + ((v12 + 7 + ((v12 + v13) & ~v13)) & 0xFFFFFFFFFFFFFFF8)) & v18) + ((((((((((v20 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 10;
  if (v16 >= a3)
  {
    v24 = 0;
    if (v16 >= a2)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (v21 <= 3)
    {
      v22 = ((a3 - v16 + 0xFFFF) >> 16) + 1;
    }

    else
    {
      v22 = 2;
    }

    if (v22 >= 0x10000)
    {
      v23 = 4;
    }

    else
    {
      v23 = 2;
    }

    if (v22 < 0x100)
    {
      v23 = 1;
    }

    if (v22 >= 2)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    if (v16 >= a2)
    {
LABEL_26:
      if (v24 > 1)
      {
        if (v24 != 2)
        {
          *(a1 + v21) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_41;
        }

        *(a1 + v21) = 0;
      }

      else if (v24)
      {
        *(a1 + v21) = 0;
        if (!a2)
        {
          return;
        }

LABEL_41:
        if (v9 == v16)
        {
          v27 = *(v33 + 56);

          v27(a1, a2, v9, v7);
        }

        else
        {
          v28 = ((v12 + 7 + ((a1 + v12 + v13) & ~v13)) & 0xFFFFFFFFFFFFFFF8);
          if ((v15 & 0x80000000) != 0)
          {
            v29 = ((v28 + v17 + 16) & v18);
            if (v14 >= a2)
            {
              v32 = *(v10 + 56);

              v32((v29 + v17 + 12) & ~v17, a2);
            }

            else
            {
              v30 = (((((((((v19 + 7) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 19) & 0xFFFFFFF8) + 25) & 0xFFFFFFF8;
              if (v30 != -16)
              {
                v31 = ~v14 + a2;
                bzero(v29, (v30 + 16));
                *v29 = v31;
              }
            }
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *v28 = a2 & 0x7FFFFFFF;
            v28[1] = 0;
          }

          else
          {
            v28[1] = (a2 - 1);
          }
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_41;
    }
  }

  v25 = ~v16 + a2;
  bzero(a1, v21);
  if (v21 <= 3)
  {
    v26 = HIWORD(v25) + 1;
  }

  else
  {
    v26 = 1;
  }

  if (v21 <= 3)
  {
    *a1 = v25;
    if (v24 > 1)
    {
LABEL_36:
      if (v24 == 2)
      {
        *(a1 + v21) = v26;
      }

      else
      {
        *(a1 + v21) = v26;
      }

      return;
    }
  }

  else
  {
    *a1 = v25;
    if (v24 > 1)
    {
      goto LABEL_36;
    }
  }

  if (v24)
  {
    *(a1 + v21) = v26;
  }
}

uint64_t sub_1CF4EAF10(uint64_t a1)
{
  v3 = *(v1 + *(a1 + 40));
  if ((~v3 & 0xF000000000000007) != 0)
  {

    v6 = sub_1CF18B5CC(v3);
    MEMORY[0x1D3868CC0](v6);
    sub_1CF4EB118(v3);

    v4 = 32;
    v5 = 0xE100000000000000;
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  v7 = (v1 + *(a1 + 44));
  if (v7[1])
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  else
  {
    v16 = *v7;
    v10 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v10);

    v8 = 0x49657571696E7520;
    v9 = 0xEA00000000003A44;
  }

  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](14953, 0xE200000000000000);
  v11 = *(a1 + 16);
  sub_1CF9E7FD8();
  MEMORY[0x1D3868CC0](574254624, 0xE400000000000000);
  MEMORY[0x1D3868CC0](*(v1 + *(a1 + 32)), *(v1 + *(a1 + 32) + 8));
  MEMORY[0x1D3868CC0](980426786, 0xE400000000000000);
  v12 = *(a1 + 28);
  sub_1CF9E7FD8();
  MEMORY[0x1D3868CC0](32, 0xE100000000000000);
  v13 = v1 + *(a1 + 36);
  v14 = sub_1CF0720C8();
  MEMORY[0x1D3868CC0](v14);

  MEMORY[0x1D3868CC0](v4, v5);

  MEMORY[0x1D3868CC0](v8, v9);

  return 0;
}

uint64_t sub_1CF4EB118(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t sub_1CF4EB130(void *a1, uint64_t a2)
{
  v3 = v2;
  sub_1CF9E7948();

  v5 = [v2 description];
  v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v8 = v7;

  MEMORY[0x1D3868CC0](v6, v8);

  MEMORY[0x1D3868CC0](0x3A64695B20, 0xE500000000000000);
  v9 = *(v3 + OBJC_IVAR____TtC18FileProviderDaemon19LocalRootEnumerator_rootID);
  v10 = NSFileProviderItemIdentifier.description.getter();
  MEMORY[0x1D3868CC0](v10);

  MEMORY[0x1D3868CC0](0x3A6D6F726620, 0xE600000000000000);
  v22 = a2;
  v11 = NSFileProviderPage.description.getter();
  MEMORY[0x1D3868CC0](v11);

  MEMORY[0x1D3868CC0](93, 0xE100000000000000);
  sub_1CEFFCE80();
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  sub_1CF9E7298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1CF9FA440;
  sub_1CEFFD0A8();
  v13 = sub_1CF9E7718();
  v15 = v14;
  v16 = MEMORY[0x1E69E6158];
  *(v12 + 56) = MEMORY[0x1E69E6158];
  v17 = sub_1CEFD51C4();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  *(v12 + 96) = v16;
  *(v12 + 104) = v17;
  *(v12 + 64) = v17;
  *(v12 + 72) = 0xD000000000000015;
  *(v12 + 80) = 0x80000001CFA50130;

  sub_1CF9E6018();

  sub_1CF4EB4B0(v22, v3, a1);

  sub_1CF9E7298();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1CF9FA450;
  v19 = sub_1CF9E7718();
  *(v18 + 56) = v16;
  *(v18 + 64) = v17;
  *(v18 + 32) = v19;
  *(v18 + 40) = v20;
  sub_1CF9E6018();
}

void sub_1CF4EB4B0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v66 = a3;
  v67 = a2;
  v68 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v81 = v64 - v7;
  v8 = type metadata accessor for LocalDomain();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v80 = (v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v79 = v64 - v12;
  v78 = sub_1CF9E5A58();
  v13 = *(v78 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v77 = v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v76 = v64 - v17;
  v18 = type metadata accessor for LocalContainer(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v75 = v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v23 = sub_1CF9E6888();
  v24 = [v22 initWithSuiteName_];

  if (v24)
  {
    v25 = sub_1CF9E6888();
    v26 = [v24 BOOLForKey_];

    if (v26)
    {
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      sub_1CF9E7298();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1CF9FA450;
      *(v27 + 56) = MEMORY[0x1E69E6158];
      *(v27 + 64) = sub_1CEFD51C4();
      *(v27 + 32) = 0x1000000000000088;
      *(v27 + 40) = 0x80000001CFA50150;
      sub_1CF9E6018();

      goto LABEL_31;
    }
  }

  v28 = sub_1CF9E5B88();
  v30 = v29;
  v31 = sub_1CF9E5B48();
  sub_1CEFE4714(v28, v30);
  sub_1CF4EC20C();
  v32 = *MEMORY[0x1E6967200];
  if ((sub_1CF9E7568() & 1) == 0)
  {
    v33 = *MEMORY[0x1E6967208];
    if ((sub_1CF9E7568() & 1) == 0)
    {

LABEL_31:
      v60 = v66;
      goto LABEL_32;
    }
  }

  v65 = v31;
  v34 = v67 + OBJC_IVAR____TtC18FileProviderDaemon19LocalRootEnumerator_containerSnapshot;
  swift_beginAccess();
  v35 = *(v34 + *(type metadata accessor for LocalContainerSnapshot(0) + 32));
  v36 = MEMORY[0x1E69E7CC0];
  v83 = MEMORY[0x1E69E7CC0];
  v37 = *(v35 + 16);
  if (v37)
  {
    v64[1] = v4;
    v38 = *(v18 + 28);
    v73 = *(v18 + 24);
    v74 = v38;
    v39 = v35 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v40 = *(v19 + 72);
    v71 = (v13 + 16);
    v72 = v40;
    v70 = (v13 + 8);
    v64[0] = v35;

    v69 = MEMORY[0x1E69E7CC0];
    v41 = v76;
    do
    {
      v82 = v37;
      v42 = v75;
      sub_1CF00BE10(v39, v75, type metadata accessor for LocalContainer);
      v43 = *v71;
      v44 = v78;
      (*v71)(v41, v42 + v74, v78);
      v45 = v79;
      sub_1CF00BE10(v42 + v73, v79, type metadata accessor for LocalDomain);
      v46 = v77;
      v43(v77, v41, v44);
      v47 = v80;
      sub_1CF00BE10(v45, v80, type metadata accessor for LocalDomain);
      v48 = type metadata accessor for VFSItem(0);
      v49 = v81;
      (*(*(v48 - 8) + 56))(v81, 1, 1, v48);
      v50 = objc_allocWithZone(type metadata accessor for LocalItem(0));
      v51 = sub_1CF001704(v46, v47, v49);
      sub_1CF00F2A4(v45, type metadata accessor for LocalDomain);
      (*v70)(v41, v44);
      v52 = sub_1CF00F2A4(v42, type metadata accessor for LocalContainer);
      if (v51)
      {
        MEMORY[0x1D3868FA0](v52);
        if (*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v83 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1CF9E6D88();
        }

        sub_1CF9E6DE8();
        v69 = v83;
      }

      v39 += v72;
      v37 = v82 - 1;
    }

    while (v82 != 1);

    v36 = v69;
  }

  v83 = 0;
  v84 = 0xE000000000000000;
  sub_1CF9E7948();

  v83 = 0x20676E69646E6573;
  v84 = 0xE800000000000000;
  if (v36 >> 62)
  {
    v53 = sub_1CF9E7818();
  }

  else
  {
    v53 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v85 = v53;
  v54 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v54);

  MEMORY[0x1D3868CC0](0x6E6961746E6F6320, 0xEA00000000007265);
  if (v53 == 1)
  {
    v55 = 0;
  }

  else
  {
    v55 = 115;
  }

  if (v53 == 1)
  {
    v56 = 0xE000000000000000;
  }

  else
  {
    v56 = 0xE100000000000000;
  }

  MEMORY[0x1D3868CC0](v55, v56);

  v57 = v83;
  v58 = v84;
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  sub_1CF9E7298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_1CF9FA450;
  *(v59 + 56) = MEMORY[0x1E69E6158];
  *(v59 + 64) = sub_1CEFD51C4();
  *(v59 + 32) = v57;
  *(v59 + 40) = v58;
  sub_1CF9E6018();

  if (v36 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF580, &qword_1CFA01DB0);
    sub_1CF9E7B78();
  }

  else
  {
    sub_1CF9E8068();
  }

  v60 = v66;
  v61 = v65;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF580, &qword_1CFA01DB0);
  v62 = sub_1CF9E6D28();

  [v60 didEnumerateItems_];

LABEL_32:
  v63 = *(v67 + OBJC_IVAR____TtC18FileProviderDaemon19LocalRootEnumerator_fileEnumerator);
  sub_1CF4F6AD0(v60);
}

uint64_t sub_1CF4EC0B0()
{
  result = type metadata accessor for LocalDomain();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for LocalContainerSnapshot(319);
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

uint64_t sub_1CF4EC1A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0FE0, qword_1CFA07EC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1CF4EC20C()
{
  result = qword_1EDEAB510;
  if (!qword_1EDEAB510)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDEAB510);
  }

  return result;
}

uint64_t sub_1CF4EC270()
{
  v1 = *v0;
  sub_1CF9E81D8();
  v2 = qword_1CFA08398[v1];
  sub_1CF9E69C8();

  return sub_1CF9E8228();
}

uint64_t sub_1CF4EC2CC()
{
  v1 = qword_1CFA08398[*v0];
  sub_1CF9E69C8();
}

uint64_t sub_1CF4EC30C()
{
  v1 = *v0;
  sub_1CF9E81D8();
  v2 = qword_1CFA08398[v1];
  sub_1CF9E69C8();

  return sub_1CF9E8228();
}

uint64_t sub_1CF4EC364@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1CF4F0080();
  *a2 = result;
  return result;
}

uint64_t sub_1CF4EC3B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CF4F0080();
  *a1 = result;
  return result;
}

uint64_t sub_1CF4EC3D8(uint64_t a1)
{
  v2 = sub_1CF00F0FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF4EC414(uint64_t a1)
{
  v2 = sub_1CF00F0FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CF4EC450(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C10D8, &qword_1CFA080E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF00F0FC();
  sub_1CF9E82A8();
  v11 = *v3;
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  LOBYTE(v17) = 0;
  sub_1CF9E7EB8();
  if (v2)
  {
    (*(v6 + 8))(v9, v5);
  }

  else
  {

    v17 = *(v3 + 1);
    v16[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C10D0, &unk_1CF9FEEF0);
    sub_1CF00F168(&qword_1EC4C10E0);
    sub_1CF9E7F08();
    v13 = type metadata accessor for LocalContainer(0);
    v14 = *(v13 + 28);
    LOBYTE(v17) = 2;
    sub_1CF9E5A58();
    sub_1CF00CC8C(&qword_1EC4BEAA0, MEMORY[0x1E6968FB0]);
    sub_1CF9E7F08();
    v15 = *(v13 + 24);
    LOBYTE(v17) = 3;
    type metadata accessor for LocalDomain();
    sub_1CF00CC8C(&unk_1EC4C1090, type metadata accessor for LocalDomain);
    sub_1CF9E7F08();
    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_1CF4EC72C()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](60, 0xE100000000000000);
  MEMORY[0x1D3868CC0](0x6E6F436C61636F4CLL, 0xEE0072656E696174);
  MEMORY[0x1D3868CC0](58, 0xE100000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C10F0, &unk_1CFA080E8);
  sub_1CF9E7B58();
  MEMORY[0x1D3868CC0](979659040, 0xE400000000000000);
  v1 = *v0;
  v2 = NSFileProviderItemIdentifier.description.getter();
  MEMORY[0x1D3868CC0](v2);

  MEMORY[0x1D3868CC0](574255136, 0xE400000000000000);
  v3 = v0 + *(type metadata accessor for LocalContainer(0) + 28);
  v4 = sub_1CF9E5A18();
  MEMORY[0x1D3868CC0](v4);

  MEMORY[0x1D3868CC0](15906, 0xE200000000000000);
  return 0;
}

uint64_t sub_1CF4EC878(uint64_t a1)
{
  sub_1CF9E81D8();
  v3 = *v1;
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  sub_1CF9E69C8();

  v4 = v1 + *(a1 + 28);
  sub_1CF9E59F8();
  return sub_1CF9E8228();
}

uint64_t sub_1CF4EC8F4(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  sub_1CF9E69C8();

  v5 = v2 + *(a2 + 28);
  return sub_1CF9E59F8();
}

uint64_t sub_1CF4EC958(uint64_t a1, uint64_t a2)
{
  sub_1CF9E81D8();
  v4 = *v2;
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  sub_1CF9E69C8();

  v5 = v2 + *(a2 + 28);
  sub_1CF9E59F8();
  return sub_1CF9E8228();
}

uint64_t sub_1CF4EC9F0()
{
  v1 = v0;
  v76 = *MEMORY[0x1E69E9840];
  v2 = sub_1CF9E53C8();
  v70 = *(v2 - 8);
  v3 = *(v70 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v69 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v66 - v6;
  v71 = sub_1CF9E5A58();
  v73 = *(v71 - 8);
  v8 = *(v73 + 64);
  v9 = MEMORY[0x1EEE9AC00](v71);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v66 - v12;
  if ((*(v1 + *(type metadata accessor for LocalContainerSnapshot(0) + 24)) & 1) == 0)
  {
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/LocalContainer.swift", 100, 2, 419);
  }

  sub_1CF00C970(v1, v13);
  v72 = v13;
  sub_1CF9E5988();
  v14 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
  v15 = sub_1CF9E5928();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF610, &qword_1CFA01DD0);
  inited = swift_initStackObject();
  v17 = *MEMORY[0x1E696A370];
  *(inited + 32) = *MEMORY[0x1E696A370];
  v68 = xmmword_1CF9FA450;
  *(inited + 16) = xmmword_1CF9FA450;
  *(inited + 64) = MEMORY[0x1E69E6530];
  *(inited + 40) = 493;
  v18 = v17;
  sub_1CF4E2F64(inited);
  swift_setDeallocating();
  sub_1CEFCCC44(inited + 32, &unk_1EC4C1120, &qword_1CFA07BA0);
  type metadata accessor for FileAttributeKey(0);
  sub_1CF00CC8C(&unk_1EC4BF620, type metadata accessor for FileAttributeKey);
  v19 = sub_1CF9E6618();

  v74 = 0;
  v20 = [v14 createDirectoryAtURL:v15 withIntermediateDirectories:1 attributes:v19 error:&v74];

  v21 = v74;
  if (v20)
  {
    v22 = sub_1CF9E56C8();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_allocObject();
    v25 = v21;
    sub_1CF9E56B8();
    sub_1CF00CC8C(&unk_1EC4C1130, type metadata accessor for LocalContainerSnapshot);
    v53 = sub_1CF9E56A8();
    v55 = v54;
    v56 = v72;
    sub_1CF9E5BB8();
    v67 = v55;
    sub_1CF7E2388();
    v74 = 0;
    v75 = 0xE000000000000000;
    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](0x2065746F7277, 0xE600000000000000);
    v57 = sub_1CF9E5AB8();
    MEMORY[0x1D3868CC0](v57);

    MEMORY[0x1D3868CC0](0x6B736964206E6F20, 0xEC00000020746120);
    sub_1CF00CC8C(&unk_1EDEAB3F0, MEMORY[0x1E6968FB0]);
    v58 = v71;
    v59 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v59);

    MEMORY[0x1D3868CC0](0xD000000000000017, 0x80000001CFA504B0);
    MEMORY[0x1D3868CC0](*(v1 + 32), *(v1 + 40));
    MEMORY[0x1D3868CC0](0x6E69616D6F642022, 0xE800000000000000);
    v60 = v53;
    v61 = v74;
    v62 = v75;
    v63 = v56;
    if (qword_1EDEA3408 != -1)
    {
      swift_once();
    }

    sub_1CF9E7298();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v64 = swift_allocObject();
    *(v64 + 16) = v68;
    *(v64 + 56) = MEMORY[0x1E69E6158];
    *(v64 + 64) = sub_1CEFD51C4();
    *(v64 + 32) = v61;
    *(v64 + 40) = v62;
    sub_1CF9E6018();

    sub_1CEFE4714(v60, v67);

    v65 = *(v73 + 8);
    v65(v11, v58);
    result = (v65)(v63, v58);
  }

  else
  {
    v26 = v74;
    v27 = sub_1CF9E57F8();

    swift_willThrow();
    v28 = *(v73 + 8);
    v29 = v11;
    v30 = v71;
    v28(v29, v71);
    v74 = 0;
    v75 = 0xE000000000000000;
    sub_1CF9E7948();

    v74 = 0xD000000000000017;
    v75 = 0x80000001CFA50490;
    sub_1CF9E5A18();
    v31 = sub_1CF9E6888();

    v32 = [v31 fp_prettyPath];

    v33 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v35 = v34;

    MEMORY[0x1D3868CC0](v33, v35);

    v36 = v74;
    v37 = v75;
    v74 = v27;
    v38 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    if (swift_dynamicCast())
    {
      v39 = *(v70 + 8);
      v70 += 8;
      *&v68 = v39;
      v39(v7, v2);
      v74 = v27;
      v40 = v27;
      swift_dynamicCast();
      sub_1CF00CC8C(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
      sub_1CF9E57A8();
      v41 = sub_1CF9E6148();
      if (sub_1CF008830(v41, MEMORY[0x1E69E7CD0]))
      {
        if (qword_1EDEA3408 != -1)
        {
          swift_once();
        }

        sub_1CF9E7298();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
        v42 = swift_allocObject();
        *(v42 + 16) = xmmword_1CF9FA440;
        *(v42 + 56) = MEMORY[0x1E69E6158];
        *(v42 + 64) = sub_1CEFD51C4();
        *(v42 + 32) = v36;
        *(v42 + 40) = v37;
        v43 = v69;
        sub_1CF9E57A8();
        v44 = sub_1CF9E6148();
        v45 = MEMORY[0x1E69E7358];
        *(v42 + 96) = MEMORY[0x1E69E72F0];
        *(v42 + 104) = v45;
        *(v42 + 72) = v44;
      }

      else
      {
        if (qword_1EDEA3408 != -1)
        {
          swift_once();
        }

        sub_1CF9E72A8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
        v49 = swift_allocObject();
        *(v49 + 16) = xmmword_1CF9FA440;
        *(v49 + 56) = MEMORY[0x1E69E6158];
        *(v49 + 64) = sub_1CEFD51C4();
        *(v49 + 32) = v36;
        *(v49 + 40) = v37;
        v43 = v69;
        sub_1CF9E57A8();
        v50 = sub_1CF9E6148();
        v51 = MEMORY[0x1E69E7358];
        *(v49 + 96) = MEMORY[0x1E69E72F0];
        *(v49 + 104) = v51;
        *(v49 + 72) = v50;
      }

      sub_1CF9E6018();

      v28(v72, v71);
      result = (v68)(v43, v2);
    }

    else
    {
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      sub_1CF9E72A8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_1CF9FA440;
      *(v46 + 56) = MEMORY[0x1E69E6158];
      *(v46 + 64) = sub_1CEFD51C4();
      *(v46 + 32) = v36;
      *(v46 + 40) = v37;
      v47 = sub_1CF9E57E8();
      *(v46 + 96) = sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
      *(v46 + 104) = sub_1CF326DD0();
      *(v46 + 72) = v47;
      sub_1CF9E6018();

      result = (v28)(v72, v30);
    }
  }

  v52 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF4ED57C()
{
  v1 = *v0;
  sub_1CF9E81D8();
  sub_1CF9E69C8();

  return sub_1CF9E8228();
}

uint64_t sub_1CF4ED60C()
{
  *v0;
  *v0;
  *v0;
  sub_1CF9E69C8();
}

uint64_t sub_1CF4ED688()
{
  v1 = *v0;
  sub_1CF9E81D8();
  sub_1CF9E69C8();

  return sub_1CF9E8228();
}

uint64_t sub_1CF4ED714@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1CF4F00CC();
  *a2 = result;
  return result;
}

void sub_1CF4ED744(uint64_t *a1@<X8>)
{
  v2 = 0xE100000000000000;
  v3 = 118;
  v4 = 0xE200000000000000;
  v5 = 30323;
  if (*v1 != 2)
  {
    v5 = 99;
    v4 = 0xE100000000000000;
  }

  if (*v1)
  {
    v3 = 100;
    v2 = 0xE100000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1CF4ED790@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CF4F00CC();
  *a1 = result;
  return result;
}

uint64_t sub_1CF4ED7B8(uint64_t a1)
{
  v2 = sub_1CF00E0A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF4ED7F4(uint64_t a1)
{
  v2 = sub_1CF00E0A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CF4ED830(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1088, &qword_1CFA080C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF00E0A8();
  sub_1CF9E82A8();
  v18 = 0;
  sub_1CF9E7EE8();
  if (!v2)
  {
    v17 = 1;
    type metadata accessor for LocalDomain();
    sub_1CF00CC8C(&unk_1EC4C1090, type metadata accessor for LocalDomain);
    sub_1CF9E7F08();
    v11 = type metadata accessor for LocalContainerSnapshot(0);
    v12 = *(v11 + 28);
    v16 = 2;
    sub_1CF9E5D98();
    sub_1CF00CC8C(&qword_1EDEAECC8, MEMORY[0x1E69695A8]);
    sub_1CF9E7F08();
    v15 = *(v3 + *(v11 + 32));
    v14[15] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1080, &qword_1CFA080B8);
    sub_1CF00E98C(&qword_1EC4C10A0, &qword_1EC4C10A8);
    sub_1CF9E7F08();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1CF4EDAEC()
{
  v1 = v0;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](60, 0xE100000000000000);
  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA07F10);
  MEMORY[0x1D3868CC0](58, 0xE100000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C10B0, &qword_1CFA080C8);
  sub_1CF9E7B58();
  MEMORY[0x1D3868CC0](32, 0xE100000000000000);
  v2 = type metadata accessor for LocalContainerSnapshot(0);
  v3 = *(v2 + 28);
  sub_1CF9E5D98();
  sub_1CF00CC8C(&qword_1EDEAECB0, MEMORY[0x1E69695A8]);
  v4 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v4);

  MEMORY[0x1D3868CC0](32, 0xE100000000000000);
  v5 = *(v1 + *(v2 + 32));
  v10 = *(v5 + 16);
  v6 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v6);

  MEMORY[0x1D3868CC0](0x6E6961746E6F6320, 0xEA00000000007265);
  if (*(v5 + 16) == 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = 115;
  }

  if (*(v5 + 16) == 1)
  {
    v8 = 0xE000000000000000;
  }

  else
  {
    v8 = 0xE100000000000000;
  }

  MEMORY[0x1D3868CC0](v7, v8);

  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_1CF4EDCE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C10F8, &qword_1CFA080F8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for LocalContainerSnapshot(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  result = MEMORY[0x1EEE9AC00](v8);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    sub_1CEFCCBDC(a2, v7, &unk_1EC4C10F8, &qword_1CFA080F8);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      return sub_1CEFCCC44(v7, &unk_1EC4C10F8, &qword_1CFA080F8);
    }

    else
    {
      sub_1CF0008F4(v7, v13, type metadata accessor for LocalContainerSnapshot);
      v14 = *(v8 + 28);
      if (sub_1CF9E5D48())
      {
        sub_1CF4EC9F0();
      }

      return sub_1CF0005D0(v13, type metadata accessor for LocalContainerSnapshot);
    }
  }

  return result;
}

void sub_1CF4EDEA8(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  if (*(v3 + *(type metadata accessor for LocalContainerSnapshot(0) + 20)) != 1)
  {
    goto LABEL_22;
  }

  v35 = a2;
  v7 = *(a1 + 16);
  if (!v7)
  {
    v10 = MEMORY[0x1E69E7CC0];
    goto LABEL_17;
  }

  v8 = 0;
  v9 = a1 + 32;
  v10 = MEMORY[0x1E69E7CC0];
  do
  {
    v11 = v8;
    while (1)
    {
      if (v11 >= v7)
      {
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/LocalContainer.swift", 100, 2, 397);
      }

      v8 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_21;
      }

      v12 = *(v9 + 8 * v11);
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v13 = v12;
      v14 = sub_1CF9E6AE8();

      if (v14)
      {
        break;
      }

      ++v11;
      if (v8 == v7)
      {
        goto LABEL_17;
      }
    }

    v34 = a3;
    v15 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v17 = sub_1CF4F5F14(1uLL, v15, v16);
    v19 = v18;
    v21 = v20;
    v23 = v22;

    v24 = MEMORY[0x1D3868C10](v17, v19, v21, v23);
    v26 = v25;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1CF0710C0(0, *(v10 + 2) + 1, 1, v10);
    }

    v28 = *(v10 + 2);
    v27 = *(v10 + 3);
    a3 = v34;
    if (v28 >= v27 >> 1)
    {
      v10 = sub_1CF0710C0((v27 > 1), v28 + 1, 1, v10);
    }

    *(v10 + 2) = v28 + 1;
    v29 = &v10[16 * v28];
    *(v29 + 4) = v24;
    *(v29 + 5) = v26;
  }

  while (v8 != v7);
LABEL_17:
  if (*(v10 + 2))
  {
    v30 = [objc_opt_self() legacyDefaultManager];
    v31 = sub_1CF9E6D28();
    v32 = swift_allocObject();
    v32[2] = v10;
    v32[3] = v35;
    v32[4] = a3;
    aBlock[4] = sub_1CF4F11D0;
    aBlock[5] = v32;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CF00A468;
    aBlock[3] = &block_descriptor_51;
    v33 = _Block_copy(aBlock);

    [v30 deleteSearchableItemsWithSpotlightDomainIdentifiers:v31 completionHandler:v33];
    _Block_release(v33);
  }

  else
  {

    v35(0);
  }
}

uint64_t sub_1CF4EE1BC(id a1, uint64_t a2, uint64_t (*a3)(id))
{
  if (a1)
  {
    v6 = a1;
    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](0xD00000000000001CLL, 0x80000001CFA50470);
    v7 = MEMORY[0x1E69E6158];
    v8 = MEMORY[0x1D3868FE0](a2, MEMORY[0x1E69E6158]);
    MEMORY[0x1D3868CC0](v8);

    MEMORY[0x1D3868CC0](0x2064656C69616620, 0xED00002068746977);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    sub_1CF9E7B58();
    if (qword_1EDEA3408 != -1)
    {
      swift_once();
    }

    sub_1CF9E72A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1CF9FA450;
    *(v9 + 56) = v7;
    *(v9 + 64) = sub_1CEFD51C4();
    *(v9 + 32) = 0;
    *(v9 + 40) = 0xE000000000000000;
    sub_1CF9E6018();
  }

  else
  {
    sub_1CF9E7948();

    v10 = MEMORY[0x1E69E6158];
    v11 = MEMORY[0x1D3868FE0](a2, MEMORY[0x1E69E6158]);
    MEMORY[0x1D3868CC0](v11);

    MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA50450);
    if (qword_1EDEA3408 != -1)
    {
      swift_once();
    }

    sub_1CF9E7298();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1CF9FA450;
    *(v12 + 56) = v10;
    *(v12 + 64) = sub_1CEFD51C4();
    *(v12 + 32) = 0xD000000000000017;
    *(v12 + 40) = 0x80000001CFA50430;
    sub_1CF9E6018();
  }

  return a3(a1);
}

uint64_t sub_1CF4EE4F4(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v55 = sub_1CF9E7318();
  v4 = *(*(v55 - 8) + 64);
  MEMORY[0x1EEE9AC00](v55);
  v54 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1CF9E6448();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v53 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CF9E7388();
  v50 = *(v9 - 8);
  v51 = v9;
  v10 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v52 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CF9E5D98();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CEFFD374(a1, &v2[OBJC_IVAR____TtC18FileProviderDaemon21LocalContainerMonitor_domain], type metadata accessor for LocalDomain);
  v17 = [objc_allocWithZone(MEMORY[0x1E69672B8]) init];
  v18 = OBJC_IVAR____TtC18FileProviderDaemon21LocalContainerMonitor_appRegistry;
  *&v2[OBJC_IVAR____TtC18FileProviderDaemon21LocalContainerMonitor_appRegistry] = v17;
  sub_1CF9E5D88();
  (*(v13 + 32))(&v2[OBJC_IVAR____TtC18FileProviderDaemon21LocalContainerMonitor_version], v16, v12);
  v57 = v2;
  v19 = [*&v2[v18] listOfMonitoredApps];
  sub_1CEFD57E0(0, &qword_1EDEA36F8, 0x1E69672B0);
  v20 = sub_1CF9E6D48();

  if (v20 >> 62)
  {
LABEL_28:
    v21 = sub_1CF9E7818();
    if (v21)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
LABEL_3:
      v22 = 0;
      v23 = v20 & 0xC000000000000001;
      v58 = v20 & 0xFFFFFFFFFFFFFF8;
      v24 = MEMORY[0x1E69E7CC8];
      v60 = v21;
      v61 = v20;
      v59 = v20 & 0xC000000000000001;
      while (1)
      {
        if (v23)
        {
          v25 = MEMORY[0x1D3869C30](v22, v20);
        }

        else
        {
          if (v22 >= *(v58 + 16))
          {
            goto LABEL_26;
          }

          v25 = *(v20 + 8 * v22 + 32);
        }

        v26 = v25;
        v27 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        if (sub_1CF4F0118(v25, a1))
        {
          break;
        }

LABEL_5:
        ++v22;
        if (v27 == v21)
        {
          goto LABEL_30;
        }
      }

      v28 = a1;
      v29 = [v26 bundleID];
      a1 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v31 = v30;

      v20 = v26;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v63 = v24;
      v34 = sub_1CEFE4328(a1, v31);
      v35 = v24[2];
      v36 = (v33 & 1) == 0;
      v37 = v35 + v36;
      if (__OFADD__(v35, v36))
      {
        goto LABEL_25;
      }

      v38 = v33;
      if (v24[3] < v37)
      {
        sub_1CF7C65E0(v37, isUniquelyReferenced_nonNull_native);
        v39 = sub_1CEFE4328(a1, v31);
        if ((v38 & 1) != (v40 & 1))
        {
          result = sub_1CF9E8108();
          __break(1u);
          return result;
        }

        v34 = v39;
        if ((v38 & 1) == 0)
        {
          goto LABEL_21;
        }

LABEL_19:

        v24 = v63;
        v41 = *(v63 + 56);
        v42 = *(v41 + 8 * v34);
        *(v41 + 8 * v34) = v20;

LABEL_23:
        a1 = v28;
        v21 = v60;
        v20 = v61;
        v23 = v59;
        goto LABEL_5;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        if (v33)
        {
          goto LABEL_19;
        }
      }

      else
      {
        sub_1CF7D08C0();
        if (v38)
        {
          goto LABEL_19;
        }
      }

LABEL_21:
      v24 = v63;
      *(v63 + 8 * (v34 >> 6) + 64) |= 1 << v34;
      v43 = (v24[6] + 16 * v34);
      *v43 = a1;
      v43[1] = v31;
      *(v24[7] + 8 * v34) = v20;

      v44 = v24[2];
      v45 = __OFADD__(v44, 1);
      v46 = v44 + 1;
      if (v45)
      {
        goto LABEL_27;
      }

      v24[2] = v46;
      goto LABEL_23;
    }
  }

  v24 = MEMORY[0x1E69E7CC8];
LABEL_30:

  v47 = v57;
  *&v57[OBJC_IVAR____TtC18FileProviderDaemon21LocalContainerMonitor_monitoredAppsByID] = v24;
  v63 = 0;
  v64 = 0xE000000000000000;
  sub_1CF9E7948();

  v63 = 0xD00000000000001FLL;
  v64 = 0x80000001CFA502D0;
  MEMORY[0x1D3868CC0](*(a1 + 32), *(a1 + 40));
  sub_1CEFD57E0(0, &qword_1EDEAED70, 0x1E69E9610);
  (*(v50 + 104))(v52, *MEMORY[0x1E69E8098], v51);
  sub_1CF9E63F8();
  v63 = MEMORY[0x1E69E7CC0];
  sub_1CF00CC8C(&qword_1EDEAED80, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF500, &unk_1CF9FE770);
  sub_1CF4F0754();
  sub_1CF9E77B8();
  *&v47[OBJC_IVAR____TtC18FileProviderDaemon21LocalContainerMonitor_queue] = sub_1CF9E73B8();
  v62.receiver = v47;
  v62.super_class = ObjectType;
  v48 = objc_msgSendSuper2(&v62, sel_init);
  [*&v48[OBJC_IVAR____TtC18FileProviderDaemon21LocalContainerMonitor_appRegistry] setDelegate_];
  sub_1CF0005D0(a1, type metadata accessor for LocalDomain);
  return v48;
}

void sub_1CF4EEB60(unint64_t a1, uint64_t a2, _BYTE *a3)
{
  v51 = a3;
  v5 = sub_1CF9E5D98();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v44 = v10;
  v45 = v9;
  v43 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
LABEL_28:
    v11 = sub_1CF9E7818();
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
LABEL_3:
      v12 = 0;
      v13 = OBJC_IVAR____TtC18FileProviderDaemon21LocalContainerMonitor_domain;
      v14 = a1 & 0xC000000000000001;
      v52 = OBJC_IVAR____TtC18FileProviderDaemon21LocalContainerMonitor_monitoredAppsByID;
      v46 = a1 & 0xFFFFFFFFFFFFFF8;
      v47 = a1 & 0xC000000000000001;
      v49 = v11;
      v50 = a1;
      v48 = OBJC_IVAR____TtC18FileProviderDaemon21LocalContainerMonitor_domain;
      while (1)
      {
        if (v14)
        {
          v15 = MEMORY[0x1D3869C30](v12, a1, v7);
        }

        else
        {
          if (v12 >= *(v46 + 16))
          {
            goto LABEL_26;
          }

          v15 = *(a1 + 8 * v12 + 32);
        }

        v16 = v15;
        v17 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        if (sub_1CF4F0118(v15, a2 + v13))
        {
          break;
        }

LABEL_5:
        ++v12;
        if (v17 == v11)
        {
          goto LABEL_29;
        }
      }

      v18 = [v16 bundleID];
      a1 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v20 = v19;

      v21 = v52;
      swift_beginAccess();
      v22 = v16;
      v23 = *(a2 + v21);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v53 = *(a2 + v21);
      v25 = v53;
      v26 = a2;
      *(a2 + v21) = 0x8000000000000000;
      v28 = sub_1CEFE4328(a1, v20);
      v29 = v25[2];
      v30 = (v27 & 1) == 0;
      v31 = v29 + v30;
      if (__OFADD__(v29, v30))
      {
        goto LABEL_25;
      }

      a2 = v27;
      if (v25[3] < v31)
      {
        sub_1CF7C65E0(v31, isUniquelyReferenced_nonNull_native);
        v32 = sub_1CEFE4328(a1, v20);
        if ((a2 & 1) != (v33 & 1))
        {
          sub_1CF9E8108();
          __break(1u);
          return;
        }

        v28 = v32;
        if ((a2 & 1) == 0)
        {
          goto LABEL_21;
        }

LABEL_19:

        v34 = v53;
        v35 = v53[7];
        v36 = *(v35 + 8 * v28);
        *(v35 + 8 * v28) = v22;

LABEL_23:
        a2 = v26;
        *(v26 + v52) = v34;
        swift_endAccess();

        a1 = v50;
        *v51 = 1;
        v13 = v48;
        v11 = v49;
        v14 = v47;
        goto LABEL_5;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        if (v27)
        {
          goto LABEL_19;
        }
      }

      else
      {
        sub_1CF7D08C0();
        if (a2)
        {
          goto LABEL_19;
        }
      }

LABEL_21:
      v34 = v53;
      v53[(v28 >> 6) + 8] |= 1 << v28;
      v37 = (v34[6] + 16 * v28);
      *v37 = a1;
      v37[1] = v20;
      *(v34[7] + 8 * v28) = v22;
      v38 = v34[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_27;
      }

      v34[2] = v40;
      goto LABEL_23;
    }
  }

LABEL_29:
  if (*v51)
  {
    v41 = v43;
    sub_1CF9E5D88();
    v42 = OBJC_IVAR____TtC18FileProviderDaemon21LocalContainerMonitor_version;
    swift_beginAccess();
    (*(v44 + 40))(a2 + v42, v41, v45);
    swift_endAccess();
  }
}

void sub_1CF4EEF68(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = sub_1CF9E5D98();
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v26 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = OBJC_IVAR____TtC18FileProviderDaemon21LocalContainerMonitor_monitoredAppsByID;
    v11 = (a1 + 40);
    do
    {
      v13 = *(v11 - 1);
      v12 = *v11;
      swift_beginAccess();
      v14 = *(a2 + v10);

      v15 = sub_1CEFE4328(v13, v12);
      if (v16)
      {
        v17 = v15;
        v18 = *(a2 + v10);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v20 = *(a2 + v10);
        v29 = v20;
        *(a2 + v10) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1CF7D08C0();
          v20 = v29;
        }

        v21 = *(*(v20 + 48) + 16 * v17 + 8);

        v22 = *(*(v20 + 56) + 8 * v17);
        sub_1CF1CFB64(v17, v20);
        *(a2 + v10) = v20;
        swift_endAccess();

        *a3 = 1;
      }

      else
      {
        swift_endAccess();
      }

      v11 += 2;
      --v9;
    }

    while (v9);
  }

  if (*a3)
  {
    v23 = v26;
    sub_1CF9E5D88();
    v24 = OBJC_IVAR____TtC18FileProviderDaemon21LocalContainerMonitor_version;
    swift_beginAccess();
    (*(v27 + 40))(a2 + v24, v23, v28);
    swift_endAccess();
  }
}

void sub_1CF4EF1D8(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = OBJC_IVAR____TtC18FileProviderDaemon21LocalContainerMonitor_monitoredAppsByID;
  swift_beginAccess();
  v5 = *(a1 + v4);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  while (v8)
  {
    v11 = v10;
LABEL_10:
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v13 = *(*(v5 + 56) + ((v11 << 9) | (8 * v12)));
    v14 = a2();

    if ((v14 & 1) == 0)
    {
LABEL_11:

      return;
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {
      goto LABEL_11;
    }

    v8 = *(v5 + 64 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_1CF4EF2F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = OBJC_IVAR____TtC18FileProviderDaemon21LocalContainerMonitor_monitoredAppsByID;
  swift_beginAccess();
  v9 = *(a1 + v8);
  if (*(v9 + 16) && (v10 = sub_1CEFE4328(a2, a3), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
    v13 = v12;
  }

  else
  {
    v12 = 0;
  }

  *a4 = v12;
  return swift_endAccess();
}

uint64_t sub_1CF4EF3B0()
{
  v0 = sub_1CF9E7318();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v2 = sub_1CF9E6448();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = sub_1CF9E7388();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CEFD57E0(0, &qword_1EDEAED70, 0x1E69E9610);
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8098], v4);
  sub_1CF9E63F8();
  v10[1] = MEMORY[0x1E69E7CC0];
  sub_1CF00CC8C(&qword_1EDEAED80, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF500, &unk_1CF9FE770);
  sub_1CF4F0754();
  sub_1CF9E77B8();
  result = sub_1CF9E73B8();
  qword_1EDEA56C8 = result;
  return result;
}

void sub_1CF4EF5F0(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = sub_1CF9E53C8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v28[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28[-v11];
  if (a1)
  {
    v32 = 0;
    v33 = 0xE000000000000000;
    v13 = a1;
    sub_1CF9E7948();

    v32 = 0xD000000000000019;
    v33 = 0x80000001CFA503E0;
    v14 = NSFileProviderItemIdentifier.description.getter();
    MEMORY[0x1D3868CC0](v14);

    v16 = v32;
    v15 = v33;
    v32 = a1;
    v17 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    if (swift_dynamicCast())
    {
      v31 = *(v6 + 8);
      v31(v12, v5);
      v32 = a1;
      v18 = a1;
      swift_dynamicCast();
      sub_1CF00CC8C(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
      sub_1CF9E57A8();
      v19 = sub_1CF9E6148();
      if (sub_1CF008830(v19, MEMORY[0x1E69E7CD0]))
      {
        if (qword_1EDEA3408 != -1)
        {
          swift_once();
        }

        v30 = qword_1EDEBB5A0;
        v29 = sub_1CF9E7298();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_1CF9FA440;
        *(v20 + 56) = MEMORY[0x1E69E6158];
        *(v20 + 64) = sub_1CEFD51C4();
        *(v20 + 32) = v16;
        *(v20 + 40) = v15;
        sub_1CF9E57A8();
        v21 = sub_1CF9E6148();
        v22 = MEMORY[0x1E69E7358];
        *(v20 + 96) = MEMORY[0x1E69E72F0];
        *(v20 + 104) = v22;
        *(v20 + 72) = v21;
      }

      else
      {
        if (qword_1EDEA3408 != -1)
        {
          swift_once();
        }

        v30 = qword_1EDEBB5A0;
        v29 = sub_1CF9E72A8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_1CF9FA440;
        *(v25 + 56) = MEMORY[0x1E69E6158];
        *(v25 + 64) = sub_1CEFD51C4();
        *(v25 + 32) = v16;
        *(v25 + 40) = v15;
        sub_1CF9E57A8();
        v26 = sub_1CF9E6148();
        v27 = MEMORY[0x1E69E7358];
        *(v25 + 96) = MEMORY[0x1E69E72F0];
        *(v25 + 104) = v27;
        *(v25 + 72) = v26;
      }

      sub_1CF9E6018();

      v31(v9, v5);
    }

    else
    {
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      sub_1CF9E72A8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1CF9FA440;
      *(v23 + 56) = MEMORY[0x1E69E6158];
      *(v23 + 64) = sub_1CEFD51C4();
      *(v23 + 32) = v16;
      *(v23 + 40) = v15;
      v24 = sub_1CF9E57E8();
      *(v23 + 96) = sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
      *(v23 + 104) = sub_1CF326DD0();
      *(v23 + 72) = v24;
      sub_1CF9E6018();
    }
  }

  dispatch_group_leave(a3);
}

uint64_t sub_1CF4EFBE4()
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

void sub_1CF4EFCF4()
{
  type metadata accessor for LocalDomain();
  if (v0 <= 0x3F)
  {
    sub_1CF9E5D98();
    if (v1 <= 0x3F)
    {
      sub_1CF4EFDA0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1CF4EFDA0()
{
  if (!qword_1EDEA37E0)
  {
    type metadata accessor for LocalContainer(255);
    v0 = sub_1CF9E6E58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEA37E0);
    }
  }
}

void sub_1CF4EFDF8()
{
  type metadata accessor for NSFileProviderItemIdentifier(319);
  if (v0 <= 0x3F)
  {
    sub_1CF4EFEB4();
    if (v1 <= 0x3F)
    {
      type metadata accessor for LocalDomain();
      if (v2 <= 0x3F)
      {
        sub_1CF9E5A58();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1CF4EFEB4()
{
  if (!qword_1EDEAEDB8)
  {
    v0 = sub_1CF9E75D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEAEDB8);
    }
  }
}

uint64_t sub_1CF4EFF4C(void *a1, void *a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v8 = v7;
  if (v6 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v8 == v9)
  {
  }

  else
  {
    v11 = sub_1CF9E8048();

    if ((v11 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v12 = a1[2];
  v13 = a2[2];
  if (v12)
  {
    if (!v13 || (a1[1] != a2[1] || v12 != v13) && (sub_1CF9E8048() & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (v13)
  {
LABEL_18:
    v16 = 0;
    return v16 & 1;
  }

  v14 = type metadata accessor for LocalContainer(0);
  if ((sub_1CF4F6890(a1 + v14[6], a2 + v14[6]) & 1) == 0)
  {
    goto LABEL_18;
  }

  v15 = v14[7];
  if ((sub_1CF9E59A8() & 1) == 0)
  {
    goto LABEL_18;
  }

  v16 = *(a1 + v14[8]) ^ *(a2 + v14[8]) ^ 1;
  return v16 & 1;
}

uint64_t sub_1CF4F0080()
{
  v0 = sub_1CF9E7C78();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1CF4F00CC()
{
  v0 = sub_1CF9E7C78();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

BOOL sub_1CF4F0118(void *a1, uint64_t a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = sub_1CF9E5A58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v36[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(a2 + *(type metadata accessor for LocalDomain() + 36)) == 1)
  {
    v9 = [a1 isManaged];
    v10 = &unk_1CF9FA000;
    v11 = MEMORY[0x1E69E6158];
    if (v9)
    {
      v12 = [a1 documentsURL];
      sub_1CF9E59D8();

      v13 = sub_1CF9E5A18();
      v15 = v14;
      v16 = (*(v5 + 8))(v8, v4);
      memset(v37, 0, sizeof(v37));
      MEMORY[0x1EEE9AC00](v16);
      *&v36[-32] = v13;
      *&v36[-24] = v15;
      *&v36[-16] = v37;
      sub_1CEFE1894(sub_1CF4F07B8);

      v17 = LODWORD(v37[0]) == *(a2 + 8);
      v10 = &unk_1CF9FA000;
    }

    else
    {
      v17 = 1;
    }

    *&v37[0] = 0;
    *(&v37[0] + 1) = 0xE000000000000000;
    sub_1CF9E7948();

    *&v37[0] = 0x206C6C6977;
    *(&v37[0] + 1) = 0xE500000000000000;
    if (v17)
    {
      v18 = 0x726F74696E6F6DLL;
    }

    else
    {
      v18 = 0x65726F6E6769;
    }

    if (v17)
    {
      v19 = 0xE700000000000000;
    }

    else
    {
      v19 = 0xE600000000000000;
    }

    MEMORY[0x1D3868CC0](v18, v19);

    MEMORY[0x1D3868CC0](32, 0xE100000000000000);
    v20 = [a1 isManaged];
    v21 = v20 == 0;
    if (v20)
    {
      v22 = 0x20646567616E616DLL;
    }

    else
    {
      v22 = 0;
    }

    if (v21)
    {
      v23 = 0xE000000000000000;
    }

    else
    {
      v23 = 0xE800000000000000;
    }

    MEMORY[0x1D3868CC0](v22, v23);

    MEMORY[0x1D3868CC0](0x7262696C20707061, 0xEF20746120797261);
    v24 = [a1 documentsURL];
    sub_1CF9E59D8();

    v25 = sub_1CF9E5A18();
    v27 = v26;
    (*(v5 + 8))(v8, v4);
    MEMORY[0x1D3868CC0](v25, v27);

    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v28 = [a1 bundleID];
    v29 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v31 = v30;

    MEMORY[0x1D3868CC0](v29, v31);

    v32 = v37[0];
    if (qword_1EDEA3408 != -1)
    {
      swift_once();
    }

    sub_1CF9E7298();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v33 = swift_allocObject();
    *(v33 + 16) = v10[69];
    *(v33 + 56) = v11;
    *(v33 + 64) = sub_1CEFD51C4();
    *(v33 + 32) = v32;
    sub_1CF9E6018();
  }

  else
  {
    v17 = 0;
  }

  v34 = *MEMORY[0x1E69E9840];
  return v17;
}

unint64_t sub_1CF4F0754()
{
  result = qword_1EDEAEDA0;
  if (!qword_1EDEAEDA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BF500, &unk_1CF9FE770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAEDA0);
  }

  return result;
}

uint64_t sub_1CF4F07B8@<X0>(_DWORD *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = sub_1CF9E6978();
  LODWORD(v5) = lstat((v6 + 32), v5);

  *a1 = v5;
  return result;
}

void sub_1CF4F0814(uint64_t a1)
{
  v2 = sub_1CF9E6498();
  v37 = *(v2 - 8);
  v38 = v2;
  v3 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v35 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v30 - v6;
  aBlock = 0;
  v40 = 0xE000000000000000;
  sub_1CF9E7948();

  aBlock = 0xD000000000000016;
  v40 = 0x80000001CFA50390;
  type metadata accessor for NSFileProviderItemIdentifier(0);
  v8 = MEMORY[0x1D3868FE0](a1, v7);
  MEMORY[0x1D3868CC0](v8);

  v9 = aBlock;
  v10 = v40;
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  v11 = qword_1EDEBB5A0;
  sub_1CF9E7298();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v12 = swift_allocObject();
  v32 = xmmword_1CF9FA450;
  *(v12 + 16) = xmmword_1CF9FA450;
  *(v12 + 56) = MEMORY[0x1E69E6158];
  v31 = sub_1CEFD51C4();
  *(v12 + 64) = v31;
  *(v12 + 32) = v9;
  *(v12 + 40) = v10;
  v34 = v11;
  sub_1CF9E6018();

  v13 = dispatch_group_create();
  v14 = [objc_opt_self() legacyDefaultManager];
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = (a1 + 32);
    do
    {
      v17 = *v16++;
      v18 = v17;
      dispatch_group_enter(v13);
      v19 = swift_allocObject();
      *(v19 + 16) = v18;
      *(v19 + 24) = v13;
      v43 = sub_1CF4F102C;
      v44 = v19;
      aBlock = MEMORY[0x1E69E9820];
      v40 = 1107296256;
      v41 = sub_1CF00A468;
      v42 = &block_descriptor_32;
      v20 = _Block_copy(&aBlock);
      v21 = v18;
      v22 = v13;

      [v14 signalEnumeratorForContainerItemIdentifier:v21 completionHandler:v20];
      _Block_release(v20);

      --v15;
    }

    while (v15);
  }

  v23 = v35;
  sub_1CF9E6478();
  v24 = v36;
  sub_1CF9E64C8();
  v25 = *(v37 + 8);
  v26 = v23;
  v27 = v38;
  v25(v26, v38);
  sub_1CF9E72E8();
  v25(v24, v27);
  if (sub_1CF9E6398())
  {
    sub_1CF9E72B8();
    v28 = swift_allocObject();
    *(v28 + 16) = v32;
    v29 = v31;
    *(v28 + 56) = MEMORY[0x1E69E6158];
    *(v28 + 64) = v29;
    *(v28 + 32) = 0xD000000000000024;
    *(v28 + 40) = 0x80000001CFA503B0;
    sub_1CF9E6018();
  }

  else
  {
  }
}

uint64_t sub_1CF4F0C40(uint64_t a1)
{
  v16 = 0;
  v3 = *&v1[OBJC_IVAR____TtC18FileProviderDaemon21LocalContainerMonitor_queue];
  v4 = swift_allocObject();
  v4[2] = a1;
  v4[3] = v1;
  v4[4] = &v16;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1CF4F1074;
  *(v5 + 24) = v4;
  aBlock[4] = sub_1CF1C0B54;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFFD02C;
  aBlock[3] = &block_descriptor_42;
  v6 = _Block_copy(aBlock);

  v7 = v1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else if (v16 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1770, &qword_1CFA05A80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1CF9FA440;
    v11 = *MEMORY[0x1E6967258];
    v12 = *MEMORY[0x1E6967298];
    *(v10 + 32) = *MEMORY[0x1E6967258];
    *(v10 + 40) = v12;
    v13 = v11;
    v14 = v12;
    sub_1CF4F0814(v10);
  }

  else
  {
  }

  return result;
}

uint64_t sub_1CF4F0E30(uint64_t a1)
{
  v16 = 0;
  v3 = *&v1[OBJC_IVAR____TtC18FileProviderDaemon21LocalContainerMonitor_queue];
  v4 = swift_allocObject();
  v4[2] = a1;
  v4[3] = v1;
  v4[4] = &v16;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1CF4F1020;
  *(v5 + 24) = v4;
  aBlock[4] = sub_1CF1C0B54;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFFD02C;
  aBlock[3] = &block_descriptor_26_0;
  v6 = _Block_copy(aBlock);

  v7 = v1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else if (v16 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1770, &qword_1CFA05A80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1CF9FA440;
    v11 = *MEMORY[0x1E6967258];
    v12 = *MEMORY[0x1E6967298];
    *(v10 + 32) = *MEMORY[0x1E6967258];
    *(v10 + 40) = v12;
    v13 = v11;
    v14 = v12;
    sub_1CF4F0814(v10);
  }

  else
  {
  }

  return result;
}

uint64_t objectdestroy_18Tm()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1CF4F1080(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C10F8, &qword_1CFA080F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CF4F10F0(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C10F8, &qword_1CFA080F8) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for LocalContainerSnapshot(0) - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_1CF4EDCE8(a1, v1 + v4);
}

unint64_t sub_1CF4F1200()
{
  result = qword_1EC4C1150;
  if (!qword_1EC4C1150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1150);
  }

  return result;
}

unint64_t sub_1CF4F1258()
{
  result = qword_1EC4C1158;
  if (!qword_1EC4C1158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1158);
  }

  return result;
}

unint64_t sub_1CF4F12B0()
{
  result = qword_1EDEA7A90;
  if (!qword_1EDEA7A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA7A90);
  }

  return result;
}

unint64_t sub_1CF4F1308()
{
  result = qword_1EDEA7A98;
  if (!qword_1EDEA7A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA7A98);
  }

  return result;
}

unint64_t sub_1CF4F1360()
{
  result = qword_1EDEA5500;
  if (!qword_1EDEA5500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA5500);
  }

  return result;
}

unint64_t sub_1CF4F13B8()
{
  result = qword_1EDEA5508;
  if (!qword_1EDEA5508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA5508);
  }

  return result;
}

uint64_t sub_1CF4F1430()
{
  v1 = sub_1CF9E53C8();
  v24 = *(v1 - 8);
  v2 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v25 = &v23[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v23[-v7];
  v9 = sub_1CF9E5A58();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v23[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (v0[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_isTrashed] != 1)
  {
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/LocalItem.swift", 95, 2, 519);
  }

  v14 = OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_fileURL;
  swift_beginAccess();
  sub_1CEFCCBDC(&v0[v14], v8, &unk_1EC4BE310, qword_1CF9FCBE0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1CEFCCC44(v8, &unk_1EC4BE310, qword_1CF9FCBE0);
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_1CF9E7948();

    v27 = 0x20676E697373696DLL;
    v28 = 0xEF206E6F204C5255;
    v19 = [v0 description];
    v20 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v22 = v21;

    MEMORY[0x1D3868CC0](v20, v22);

    sub_1CF9E7B68();
    __break(1u);
LABEL_7:
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/extension/URL+LocalStorageAdditions.swift", 121, 2, 39);
  }

  v15 = *(v10 + 32);
  v26 = v9;
  v16 = v15(v13, v8);
  MEMORY[0x1EEE9AC00](v16);
  v17 = sub_1CF9E5848();
  if ((v17 & 1) == 0)
  {
    goto LABEL_7;
  }

  MEMORY[0x1EEE9AC00](v17);
  sub_1CF9E59B8();
  return (*(v10 + 8))(v13, v26);
}

void *sub_1CF4F1CC8()
{
  v1 = OBJC_IVAR____TtC18FileProviderDaemon9LocalItem____lazy_storage___containerItem;
  v2 = *&v0[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem____lazy_storage___containerItem];
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_1CF4F470C(v0);
    v4 = *&v0[v1];
    *&v0[v1] = v3;
    v5 = v3;
    sub_1CF00D644(v4);
  }

  sub_1CF2B1FC4(v2);
  return v3;
}

uint64_t sub_1CF4F1D38()
{
  v1 = v0;
  v2 = sub_1CF9E53C8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v22[4] = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v22 - v8;
  v10 = sub_1CF9E5A58();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v1[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_isTrashed])
  {
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/LocalItem.swift", 95, 2, 557);
  }

  v15 = OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_fileURL;
  swift_beginAccess();
  sub_1CEFCCBDC(&v1[v15], v9, &unk_1EC4BE310, qword_1CF9FCBE0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1CEFCCC44(v9, &unk_1EC4BE310, qword_1CF9FCBE0);
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_1CF9E7948();

    v23 = 0x20676E697373696DLL;
    v24 = 0xEF206E6F204C5255;
    v18 = [v1 description];
    v19 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v21 = v20;

    MEMORY[0x1D3868CC0](v19, v21);

    sub_1CF9E7B68();
    __break(1u);
LABEL_7:
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/extension/URL+LocalStorageAdditions.swift", 121, 2, 39);
  }

  (*(v11 + 32))(v14, v9, v10);
  v16 = sub_1CF9E5848();
  if ((v16 & 1) == 0)
  {
    goto LABEL_7;
  }

  MEMORY[0x1EEE9AC00](v16);
  sub_1CF9E59B8();
  return (*(v11 + 8))(v14, v10);
}

unint64_t sub_1CF4F257C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v36 = a3;
  v8 = sub_1CF9E53C8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v34 - v14;
  if (qword_1EC4BCD50 != -1)
  {
    swift_once();
  }

  if (sub_1CEFDB148(a1, a2, qword_1EC4C1718))
  {
    LODWORD(v39) = 22;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF00BC08(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
    sub_1CF9E57D8();
    v16 = v15;
    sub_1CF9E53A8();
    (*(v9 + 8))(v15, v8);
LABEL_20:
    swift_willThrow();
    return v16;
  }

  v34[1] = a4;
  v35 = v9;
  v17 = sub_1CF008708(&unk_1F4BED780);
  v18 = sub_1CF9E6978();
  v16 = fgetxattr(v36, (v18 + 32), 0, 0, 0, 0);

  if ((v16 & 0x8000000000000000) != 0)
  {
    if (MEMORY[0x1D38683F0](v19))
    {
      v20 = MEMORY[0x1D38683F0]();
      v21 = sub_1CF008830(v20, v17);

      if (!v21)
      {
        MEMORY[0x1D38683F0](v22);
        v26 = sub_1CF9E6138();
        if ((v26 & 0x100000000) != 0)
        {
          v27 = 22;
        }

        else
        {
          v27 = v26;
        }

        LODWORD(v38) = v27;
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF00BC08(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
        sub_1CF9E57D8();
        v16 = v12;
        sub_1CF9E53A8();
        (*(v35 + 8))(v12, v8);
        goto LABEL_20;
      }

      return 0;
    }

    else
    {

      return 0;
    }
  }

  else
  {

    v39 = v16;
    if (v16)
    {
      if (v16 > 0x8000)
      {
        LODWORD(v38) = 34;
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF00BC08(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
        sub_1CF9E57D8();
        v16 = v15;
        sub_1CF9E53A8();
        (*(v35 + 8))(v15, v8);
        goto LABEL_20;
      }

      v23 = sub_1CF9E6DB8();
      *(v23 + 16) = v16;
      bzero((v23 + 32), v16);
      v16 = v34;
      v38 = v23;
      MEMORY[0x1EEE9AC00](v24);
      LODWORD(v34[-6]) = v36;
      v34[-5] = a1;
      v34[-4] = a2;
      v34[-3] = &v38;
      v34[-2] = &v39;
      v25 = sub_1CF5162A0(sub_1CF4F6270);
      if (!v4)
      {
        v39 = v25;
        v29 = v38;
        v30 = v25;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C11D8, &unk_1CFA084E0);
        v31 = sub_1CF51FAD8((v29 + 32), v30);
        v33 = v32;
        sub_1CF4F6134(&qword_1EC4C11F8, &unk_1EDEAB3A0);
        sub_1CF9E5668();
        sub_1CEFE4714(v31, v33);
        v16 = v37;
      }
    }
  }

  return v16;
}

unint64_t sub_1CF4F2A94(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v36 = a3;
  v8 = sub_1CF9E53C8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v34 - v14;
  if (qword_1EC4BCD50 != -1)
  {
    swift_once();
  }

  if (sub_1CEFDB148(a1, a2, qword_1EC4C1718))
  {
    LODWORD(v39) = 22;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF00BC08(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
    sub_1CF9E57D8();
    v16 = v15;
    sub_1CF9E53A8();
    (*(v9 + 8))(v15, v8);
LABEL_20:
    swift_willThrow();
    return v16;
  }

  v34[1] = a4;
  v35 = v9;
  v17 = sub_1CF008708(&unk_1F4BED7A8);
  v18 = sub_1CF9E6978();
  v16 = fgetxattr(v36, (v18 + 32), 0, 0, 0, 0);

  if ((v16 & 0x8000000000000000) != 0)
  {
    if (MEMORY[0x1D38683F0](v19))
    {
      v20 = MEMORY[0x1D38683F0]();
      v21 = sub_1CF008830(v20, v17);

      if (!v21)
      {
        MEMORY[0x1D38683F0](v22);
        v26 = sub_1CF9E6138();
        if ((v26 & 0x100000000) != 0)
        {
          v27 = 22;
        }

        else
        {
          v27 = v26;
        }

        LODWORD(v38) = v27;
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF00BC08(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
        sub_1CF9E57D8();
        v16 = v12;
        sub_1CF9E53A8();
        (*(v35 + 8))(v12, v8);
        goto LABEL_20;
      }

      return 0;
    }

    else
    {

      return 0;
    }
  }

  else
  {

    v39 = v16;
    if (v16)
    {
      if (v16 > 0x8000)
      {
        LODWORD(v38) = 34;
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF00BC08(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
        sub_1CF9E57D8();
        v16 = v15;
        sub_1CF9E53A8();
        (*(v35 + 8))(v15, v8);
        goto LABEL_20;
      }

      v23 = sub_1CF9E6DB8();
      *(v23 + 16) = v16;
      bzero((v23 + 32), v16);
      v16 = v34;
      v38 = v23;
      MEMORY[0x1EEE9AC00](v24);
      LODWORD(v34[-6]) = v36;
      v34[-5] = a1;
      v34[-4] = a2;
      v34[-3] = &v38;
      v34[-2] = &v39;
      v25 = sub_1CF5162A0(sub_1CF4F60D4);
      if (!v4)
      {
        v39 = v25;
        v29 = v38;
        v30 = v25;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
        v31 = sub_1CF51FAD8((v29 + 32), v30);
        v33 = v32;
        sub_1CEFE7C14(&qword_1EDEAB660);
        sub_1CF9E5668();
        sub_1CEFE4714(v31, v33);
        v16 = v37;
      }
    }
  }

  return v16;
}

uint64_t sub_1CF4F2F98(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v35 = a5;
  v37 = *MEMORY[0x1E69E9840];
  v10 = sub_1CF9E53C8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1CEFF05F4(a3, a4);

  sub_1CEFF05F4(a3, a4);
  if (qword_1EC4BCD50 != -1)
  {
    swift_once();
  }

  if (sub_1CEFDB148(a1, a2, qword_1EC4C1718))
  {

    LODWORD(v36) = 22;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF00BC08(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
    sub_1CF9E57D8();
    sub_1CF9E53A8();
    (*(v11 + 8))(v14, v10);
    swift_willThrow();
    sub_1CEFE48D8(a3, a4);
    goto LABEL_5;
  }

  if (a4 >> 60 != 15)
  {
    *&v36 = a3;
    *(&v36 + 1) = a4;
    sub_1CEFE42D4(a3, a4);
    sub_1CF190A74();
    v17 = sub_1CF9E56A8();
    if (v5)
    {

      sub_1CEFE48D8(a3, a4);

      sub_1CEFE48D8(a3, a4);
      result = sub_1CEFE4714(v36, *(&v36 + 1));
      goto LABEL_6;
    }

    v19 = v17;
    v20 = v18;
    v21 = sub_1CEFE4714(v36, *(&v36 + 1));
    v22 = v20 >> 62;
    if ((v20 >> 62) > 1)
    {
      if (v22 != 2)
      {
        *(&v36 + 6) = 0;
        *&v36 = 0;
        MEMORY[0x1EEE9AC00](v21);
        *(&v33 - 12) = v35;
        *(&v33 - 5) = a1;
        *(&v33 - 4) = a2;
        *(&v33 - 3) = &v36;
        *(&v33 - 2) = &v36;
        goto LABEL_27;
      }

      v25 = *(v19 + 16);
      v33 = *(v19 + 24);
      v34 = v19;
      v26 = sub_1CF9E5498();
      if (v26)
      {
        v27 = sub_1CF9E54C8();
        if (__OFSUB__(v25, v27))
        {
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        v26 += v25 - v27;
      }

      if (!__OFSUB__(v33, v25))
      {
        goto LABEL_25;
      }
    }

    else
    {
      if (!v22)
      {
        *&v36 = v19;
        WORD4(v36) = v20;
        BYTE10(v36) = BYTE2(v20);
        BYTE11(v36) = BYTE3(v20);
        BYTE12(v36) = BYTE4(v20);
        BYTE13(v36) = BYTE5(v20);
        MEMORY[0x1EEE9AC00](v21);
        *(&v33 - 12) = v35;
        *(&v33 - 5) = a1;
        *(&v33 - 4) = a2;
        *(&v33 - 3) = v24;
        *(&v33 - 2) = v23;
LABEL_27:
        sub_1CEFE1894(sub_1CF4F6258);

        v32 = v19;
        goto LABEL_28;
      }

      v28 = v19;
      v33 = (v19 >> 32) - v19;
      v34 = v19;
      if (v19 >> 32 >= v19)
      {
        v26 = sub_1CF9E5498();
        if (!v26)
        {
LABEL_25:
          v30 = sub_1CF9E54B8();
          MEMORY[0x1EEE9AC00](v30);
          *(&v33 - 12) = v35;
          *(&v33 - 5) = a1;
          *(&v33 - 4) = a2;
          *(&v33 - 3) = v26;
          *(&v33 - 2) = v31;
          sub_1CEFE1894(sub_1CF4F6258);

          v32 = v34;
LABEL_28:
          sub_1CEFE4714(v32, v20);
          sub_1CEFE48D8(a3, a4);
          goto LABEL_5;
        }

        v29 = sub_1CF9E54C8();
        if (!__OFSUB__(v28, v29))
        {
          v26 += v28 - v29;
          goto LABEL_25;
        }

LABEL_32:
        __break(1u);
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_31;
  }

  sub_1CF55A020(a1, a2, v35);

  if (v5)
  {
    sub_1CEFE48D8(a3, a4);

    goto LABEL_6;
  }

LABEL_5:

  result = sub_1CEFE48D8(a3, a4);
LABEL_6:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF4F3594(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v31[2] = *MEMORY[0x1E69E9840];
  v9 = sub_1CF9E53C8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v31[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC4BCD50 != -1)
  {
    swift_once();
  }

  if ((sub_1CEFDB148(a1, a2, qword_1EC4C1718) & 1) == 0)
  {
    if (!a3)
    {
      result = sub_1CF55A020(a1, a2, a4);
      goto LABEL_25;
    }

    v31[0] = a3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C11D8, &unk_1CFA084E0);
    sub_1CF4F6134(&unk_1EC4C11E0, &qword_1EDEAB3D0);
    v15 = sub_1CF9E56A8();
    if (v4)
    {

      goto LABEL_25;
    }

    v17 = v15;
    v18 = v16;

    v20 = v18 >> 62;
    if ((v18 >> 62) > 1)
    {
      if (v20 != 2)
      {
        memset(v31, 0, 14);
        MEMORY[0x1EEE9AC00](v19);
        *(&v30 - 12) = a4;
        *(&v30 - 5) = a1;
        *(&v30 - 4) = a2;
        *(&v30 - 3) = v31;
        *(&v30 - 2) = v31;
        goto LABEL_24;
      }

      v23 = *(v17 + 16);
      v30 = *(v17 + 24);
      v24 = sub_1CF9E5498();
      if (v24)
      {
        v25 = sub_1CF9E54C8();
        if (__OFSUB__(v23, v25))
        {
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        v24 += v23 - v25;
      }

      if (!__OFSUB__(v30, v23))
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (!v20)
      {
        v31[0] = v17;
        LOWORD(v31[1]) = v18;
        BYTE2(v31[1]) = BYTE2(v18);
        BYTE3(v31[1]) = BYTE3(v18);
        BYTE4(v31[1]) = BYTE4(v18);
        BYTE5(v31[1]) = BYTE5(v18);
        MEMORY[0x1EEE9AC00](v19);
        *(&v30 - 12) = a4;
        *(&v30 - 5) = a1;
        *(&v30 - 4) = a2;
        *(&v30 - 3) = v22;
        *(&v30 - 2) = v21;
LABEL_24:
        sub_1CEFE1894(sub_1CF4F6258);
        result = sub_1CEFE4714(v17, v18);
        goto LABEL_25;
      }

      v30 = (v17 >> 32) - v17;
      if (v17 >> 32 >= v17)
      {
        v24 = sub_1CF9E5498();
        if (v24)
        {
          v28 = sub_1CF9E54C8();
          if (!__OFSUB__(v17, v28))
          {
            v24 += v17 - v28;
            goto LABEL_17;
          }

LABEL_29:
          __break(1u);
        }

LABEL_17:
        v26 = sub_1CF9E54B8();
        MEMORY[0x1EEE9AC00](v26);
        *(&v30 - 12) = a4;
        *(&v30 - 5) = a1;
        *(&v30 - 4) = a2;
        *(&v30 - 3) = v24;
        *(&v30 - 2) = v27;
        goto LABEL_24;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_28;
  }

  LODWORD(v31[0]) = 22;
  sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
  sub_1CF00BC08(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
  sub_1CF9E57D8();
  sub_1CF9E53A8();
  (*(v10 + 8))(v13, v9);
  result = swift_willThrow();
LABEL_25:
  v29 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF4F3AB0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v35[2] = *MEMORY[0x1E69E9840];
  v9 = sub_1CF9E53C8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v35[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC4BCD50 != -1)
  {
    swift_once();
  }

  if ((sub_1CEFDB148(a1, a2, qword_1EC4C1718) & 1) == 0)
  {
    if (!a3)
    {
      result = sub_1CF55A020(a1, a2, a4);
      goto LABEL_25;
    }

    v35[0] = a3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
    sub_1CEFE7C14(&qword_1EDEA3780);
    v15 = sub_1CF9E56A8();
    if (v4)
    {

      goto LABEL_25;
    }

    v17 = v15;
    v18 = v16;

    v20 = v18 >> 62;
    if ((v18 >> 62) > 1)
    {
      if (v20 != 2)
      {
        memset(v35, 0, 14);
        MEMORY[0x1EEE9AC00](v19);
        *(&v34 - 12) = a4;
        *(&v34 - 5) = a1;
        *(&v34 - 4) = a2;
        *(&v34 - 3) = v35;
        *(&v34 - 2) = v35;
        v23 = sub_1CF4F6258;
        goto LABEL_24;
      }

      v24 = *(v17 + 16);
      v34 = *(v17 + 24);
      v25 = sub_1CF9E5498();
      if (v25)
      {
        v26 = sub_1CF9E54C8();
        if (__OFSUB__(v24, v26))
        {
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        v25 += v24 - v26;
      }

      if (!__OFSUB__(v34, v24))
      {
        v27 = sub_1CF9E54B8();
        MEMORY[0x1EEE9AC00](v27);
        *(&v34 - 12) = a4;
        *(&v34 - 5) = a1;
        *(&v34 - 4) = a2;
        *(&v34 - 3) = v25;
        *(&v34 - 2) = v28;
        v23 = sub_1CF4F60BC;
        goto LABEL_24;
      }
    }

    else
    {
      if (!v20)
      {
        v35[0] = v17;
        LOWORD(v35[1]) = v18;
        BYTE2(v35[1]) = BYTE2(v18);
        BYTE3(v35[1]) = BYTE3(v18);
        BYTE4(v35[1]) = BYTE4(v18);
        BYTE5(v35[1]) = BYTE5(v18);
        MEMORY[0x1EEE9AC00](v19);
        *(&v34 - 12) = a4;
        *(&v34 - 5) = a1;
        *(&v34 - 4) = a2;
        *(&v34 - 3) = v22;
        *(&v34 - 2) = v21;
        v23 = sub_1CF4F6258;
LABEL_24:
        sub_1CEFE1894(v23);
        result = sub_1CEFE4714(v17, v18);
        goto LABEL_25;
      }

      v34 = (v17 >> 32) - v17;
      if (v17 >> 32 >= v17)
      {
        v29 = sub_1CF9E5498();
        if (!v29)
        {
LABEL_22:
          v31 = sub_1CF9E54B8();
          MEMORY[0x1EEE9AC00](v31);
          *(&v34 - 12) = a4;
          *(&v34 - 5) = a1;
          *(&v34 - 4) = a2;
          *(&v34 - 3) = v29;
          *(&v34 - 2) = v32;
          v23 = sub_1CF4F6258;
          goto LABEL_24;
        }

        v30 = sub_1CF9E54C8();
        if (!__OFSUB__(v17, v30))
        {
          v29 += v17 - v30;
          goto LABEL_22;
        }

LABEL_29:
        __break(1u);
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_28;
  }

  LODWORD(v35[0]) = 22;
  sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
  sub_1CF00BC08(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
  sub_1CF9E57D8();
  sub_1CF9E53A8();
  (*(v10 + 8))(v13, v9);
  result = swift_willThrow();
LABEL_25:
  v33 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF4F41C0(int a1, uint64_t a2)
{
  v4 = sub_1CF9E5A58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v36 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v36 - v13;
  v15 = sub_1CF9E56C8();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v38 = sub_1CF9E56B8();
  v18 = a2 + *(type metadata accessor for LocalContainer(0) + 28);
  sub_1CEFFBA1C(v14);
  sub_1CEFFBA1C(v8);
  sub_1CF9E5988();
  v19 = *(v5 + 8);
  v39 = v4;
  v19(v8, v4);
  v20 = sub_1CF9E5A18();
  v22 = v21;
  if (v20 == sub_1CF9E5A18() && v22 == v23)
  {
    v26 = a1;
  }

  else
  {
    v25 = sub_1CF9E8048();

    v26 = a1;
    if ((v25 & 1) == 0)
    {
      v37 = sub_1CF7E2460();
      v28 = v27;
      goto LABEL_9;
    }
  }

  v37 = 0;
  v28 = 0;
LABEL_9:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C11C8, &qword_1CFA084D8);
  v29 = *(sub_1CF9E5CF8() - 8);
  v30 = *(v29 + 72);
  v31 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v32 = swift_allocObject();
  v36 = xmmword_1CF9FA450;
  *(v32 + 16) = xmmword_1CF9FA450;
  sub_1CF9E5CE8();
  sub_1CF4F3594(0xD000000000000017, 0x80000001CFA3F6B0, v32, v26);

  if (v28)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C11D0, &unk_1CF9FE760);
    v33 = swift_allocObject();
    *(v33 + 16) = v36;
    *(v33 + 32) = v37;
    *(v33 + 40) = v28;
    v28 = v33;
  }

  sub_1CF4F3AB0(0xD00000000000001ALL, 0x80000001CFA50E50, v28, v26);

  v34 = v39;
  v19(v11, v39);
  v19(v14, v34);
  return 0;
}

uint64_t sub_1CF4F45A0(int a1)
{
  sub_1CF55A020(0xD000000000000017, 0x80000001CFA3F6B0, a1);
  sub_1CF55A020(0xD00000000000001ALL, 0x80000001CFA50E50, a1);
  return 0;
}

uint64_t sub_1CF4F4634(int a1, void *a2)
{
  v4 = sub_1CF9E5688();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = sub_1CF9E5678();
  v8 = sub_1CF4F2A94(0xD00000000000001ALL, 0x80000001CFA50E50, a1, v7);

  if (!v8)
  {
    return 0;
  }

  if (v8[2])
  {
    v11 = v8[4];
    v10 = v8[5];

    v12 = a2[1];
    *a2 = v11;
    a2[1] = v10;

    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF4F470C(void *a1)
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v53 = &v50 - v4;
  v5 = type metadata accessor for LocalDomain();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v51 = (&v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v52 = &v50 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1188, &unk_1CFA084B0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v50 - v12;
  v14 = type metadata accessor for LocalItemContext(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v56 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v50 - v20;
  v22 = sub_1CF9E5A58();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v55 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v50 = &v50 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v50 - v29;
  v31 = OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_fileURL;
  swift_beginAccess();
  sub_1CEFCCBDC(a1 + v31, v21, &unk_1EC4BE310, qword_1CF9FCBE0);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_1CEFCCC44(v21, &unk_1EC4BE310, qword_1CF9FCBE0);
    v57 = 0;
    v58 = 0xE000000000000000;
    sub_1CF9E7948();

    v57 = 0x20676E697373696DLL;
    v58 = 0xEF206E6F204C5255;
    v46 = [a1 description];
    v47 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v49 = v48;

    MEMORY[0x1D3868CC0](v47, v49);

    result = sub_1CF9E7B68();
    __break(1u);
  }

  else
  {
    (*(v23 + 32))(v30, v21, v22);
    v32 = OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_domain;
    sub_1CF00409C(a1 + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_domain, v13);
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      (*(v23 + 8))(v30, v22);
      sub_1CEFCCC44(v13, &qword_1EC4C1188, &unk_1CFA084B0);
      return 0;
    }

    v33 = v56;
    sub_1CF005114(v13, v56, type metadata accessor for LocalItemContext);
    if (*(v33 + *(v14 + 32)))
    {
      sub_1CF000630(v33, type metadata accessor for LocalItemContext);
      (*(v23 + 8))(v30, v22);
      return 0;
    }

    v35 = type metadata accessor for LocalContainer(0);
    v36 = *(v23 + 16);
    v37 = v50;
    v36(v50, v33 + *(v35 + 28), v22);
    v38 = a1 + v32;
    v39 = v52;
    sub_1CF001614(v38, v52, type metadata accessor for LocalDomain);
    v36(v55, v37, v22);
    v40 = v51;
    sub_1CF001614(v39, v51, type metadata accessor for LocalDomain);
    v41 = type metadata accessor for VFSItem(0);
    v42 = v53;
    (*(*(v41 - 8) + 56))(v53, 1, 1, v41);
    v43 = objc_allocWithZone(ObjectType);
    v44 = sub_1CF001704(v55, v40, v42);
    sub_1CF000630(v39, type metadata accessor for LocalDomain);
    v45 = *(v23 + 8);
    v45(v37, v22);
    sub_1CF000630(v33, type metadata accessor for LocalItemContext);
    v45(v30, v22);
    return v44;
  }

  return result;
}

void sub_1CF4F4DA8()
{
  v0 = sub_1CF9E5FF8();
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    sub_1CF4F5028(319, &qword_1EDEAFE00, MEMORY[0x1E6969530]);
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      sub_1CF4F5028(319, &qword_1EDEAB438, MEMORY[0x1E6968A70]);
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        sub_1CF4F5028(319, &qword_1EDEAFE20, MEMORY[0x1E6968FB0]);
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          v8 = type metadata accessor for LocalDomain();
          if (v9 <= 0x3F)
          {
            v14 = *(v8 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_1CF4F5028(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1CF9E75D8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1CF4F507C(uint64_t a1, uint64_t a2)
{
  LOBYTE(v9) = a2;
  v10 = VFSItemID.description.getter(a1, a2);
  MEMORY[0x1D3868CC0](47, 0xE100000000000000);
  v2 = sub_1CF9E6888();
  v3 = [v2 fp_obfuscatedFilename];

  v4 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v6 = v5;

  MEMORY[0x1D3868CC0](v4, v6);

  return v10;
}

uint64_t sub_1CF4F5130(uint64_t a1)
{
  v2 = a1;
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v6 = v11 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_1CF4F5290(v6, v4, v2);
    if (v1)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v9 = swift_slowAlloc();
  v10 = sub_1CF4F54B4(v9, v4, v2);
  result = MEMORY[0x1D386CDC0](v9, -1, -1);
  if (!v1)
  {
    result = v10;
  }

LABEL_4:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF4F5290(uint64_t result, uint64_t a2, uint64_t a3)
{
  v23 = result;
  v24 = 0;
  v3 = 0;
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_12:
    v12 = v9 | (v3 << 6);
    v13 = (*(a3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = (*(a3 + 56) + 16 * v12);
    v17 = *v16;
    v18 = v16[1];

    sub_1CEFE42D4(v17, v18);
    if ((sub_1CF9E6AE8() & 1) != 0 || (sub_1CF9E6AE8() & 1) != 0 || (v14 == 0xD000000000000029 ? (v19 = 0x80000001CFA50C70 == v15) : (v19 = 0), v19))
    {
      sub_1CEFE4714(v17, v18);
    }

    else
    {
      v20 = sub_1CF9E8048();
      sub_1CEFE4714(v17, v18);

      if ((v20 & 1) == 0)
      {
        *(v23 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
        if (__OFADD__(v24++, 1))
        {
          __break(1u);
          return sub_1CF0435B0(v23, a2, v24, a3);
        }
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return sub_1CF0435B0(v23, a2, v24, a3);
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void *sub_1CF4F54B4(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_1CF4F5290(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_1CF4F552C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B48, &unk_1CFA079E0);
  result = sub_1CF9E7BE8();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v36 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = 16 * (v13 | (v11 << 6));
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = (v17 + v16);
    v22 = v21[1];
    v37 = *v21;
    v23 = *(v9 + 40);
    sub_1CF9E81D8();

    sub_1CF9E69C8();
    result = sub_1CF9E8228();
    v24 = -1 << *(v9 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v12 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = 16 * v27;
    v33 = (*(v9 + 48) + v32);
    *v33 = v19;
    v33[1] = v20;
    v34 = (*(v9 + 56) + v32);
    *v34 = v37;
    v34[1] = v22;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v36;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1CF4F5784(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C11A8, &qword_1CFA084C8);
  result = sub_1CF9E7BE8();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v33 = *(v17 + 8 * v16);
    v21 = *(v9 + 40);
    sub_1CF9E81D8();

    sub_1CF9E69C8();
    result = sub_1CF9E8228();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v33;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1CF4F59C0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C11A0, &qword_1CFA07A40);
  result = sub_1CF9E7BE8();
  v8 = result;
  if (a2 < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = *a1;
  }

  v10 = 0;
  v11 = result + 64;
  v38 = result;
  while (v9)
  {
    v12 = __clz(__rbit64(v9));
    v39 = (v9 - 1) & v9;
LABEL_16:
    v15 = 16 * (v12 | (v10 << 6));
    v16 = *(v4 + 48) + v15;
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 9);
    v20 = (*(v4 + 56) + v15);
    v21 = v20[1];
    v40 = *v20;
    v22 = *(v8 + 40);
    sub_1CF9E81D8();
    if (v19)
    {
      MEMORY[0x1D386A470](1);
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

      sub_1CEFD0988(v17, v18, 1);
      sub_1CF9E69C8();
    }

    else
    {
      MEMORY[0x1D386A470](0);
      if (v18)
      {
        if (v18 == 1)
        {
          MEMORY[0x1D386A470](1);
          MEMORY[0x1D386A4A0](v17);
        }

        else
        {
          if (v17)
          {
            v23 = 3;
          }

          else
          {
            v23 = 2;
          }

          MEMORY[0x1D386A470](v23);
        }
      }

      else
      {
        MEMORY[0x1D386A470](0);
        sub_1CF9E8208();
      }
    }

    result = sub_1CF9E8228();
    v8 = v38;
    v24 = -1 << *(v38 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v11 + 8 * (v25 >> 6))) == 0)
    {
      v29 = 0;
      v30 = (63 - v24) >> 6;
      v28 = v21;
      while (++v26 != v30 || (v29 & 1) == 0)
      {
        v31 = v26 == v30;
        if (v26 == v30)
        {
          v26 = 0;
        }

        v29 |= v31;
        v32 = *(v11 + 8 * v26);
        if (v32 != -1)
        {
          v27 = __clz(__rbit64(~v32)) + (v26 << 6);
          goto LABEL_37;
        }
      }

      goto LABEL_42;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v11 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
    v28 = v21;
LABEL_37:
    *(v11 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v33 = 16 * v27;
    v34 = *(v38 + 48) + v33;
    *v34 = v17;
    *(v34 + 8) = v18;
    *(v34 + 9) = v19;
    v35 = (*(v38 + 56) + v33);
    *v35 = v40;
    v35[1] = v28;
    ++*(v38 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_43;
    }

    v9 = v39;
    if (!v5)
    {
      return v8;
    }
  }

  v13 = v10;
  while (1)
  {
    v10 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v10 >= a2)
    {
      return v8;
    }

    v14 = a1[v10];
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v39 = (v14 - 1) & v14;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_1CF4F5CF4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0DC0, &qword_1CFA07C50);
  result = sub_1CF9E7BE8();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    sub_1CEFF6FC0(*(v4 + 56) + 16 * v16, v29);
    sub_1CEFF701C(v29, v28);
    v18 = *(v9 + 40);
    result = sub_1CF9E81C8();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v9 + 48) + 8 * v22) = v17;
    result = sub_1CEFF701C(v28, *(v9 + 56) + 16 * v22);
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_1CF4F5F14(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_1CF9E6A08();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_1CF9E6B58();
}

uint64_t sub_1CF4F5FC4()
{
  result = swift_beginAccess();
  v2 = *(v0 + 16);
  v3 = __CFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v4;
    return 1;
  }

  return result;
}

unint64_t sub_1CF4F601C()
{
  result = qword_1EDEAEC28[0];
  if (!qword_1EDEAEC28[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BF250, &unk_1CFA01B50);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEAEC28);
  }

  return result;
}

uint64_t sub_1CF4F6080@<X0>(_DWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = fpfs_pkg_promote();
  *a1 = result;
  return result;
}

uint64_t sub_1CF4F60EC@<X0>(int *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_1CF55A2C0(*(v1 + 16), *(v1 + 40), *(v1 + 48), a1);
}

uint64_t sub_1CF4F6110@<X0>(ssize_t *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_1CF55A348(*(v1 + 16), *(v1 + 40), *(v1 + 48), a1);
}

uint64_t sub_1CF4F6134(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C11D8, &unk_1CFA084E0);
    sub_1CF00BC08(a2, MEMORY[0x1E6969530]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CF4F61D0()
{
  result = type metadata accessor for LocalContainer(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1CF4F62B0()
{
  result = sub_1CF9E5A58();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1CF4F6354()
{
  v1 = *v0;
  sub_1CF9E81D8();
  v2 = qword_1CFA08750[v1];
  sub_1CF9E69C8();

  return sub_1CF9E8228();
}

uint64_t sub_1CF4F63B0()
{
  v1 = qword_1CFA08750[*v0];
  sub_1CF9E69C8();
}

uint64_t sub_1CF4F63F0()
{
  v1 = *v0;
  sub_1CF9E81D8();
  v2 = qword_1CFA08750[v1];
  sub_1CF9E69C8();

  return sub_1CF9E8228();
}

uint64_t sub_1CF4F6448@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1CF4F696C();
  *a2 = result;
  return result;
}

uint64_t sub_1CF4F6494@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CF4F696C();
  *a1 = result;
  return result;
}

uint64_t sub_1CF4F64BC(uint64_t a1)
{
  v2 = sub_1CF00E7B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF4F64F8(uint64_t a1)
{
  v2 = sub_1CF00E7B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CF4F6534(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1208, &qword_1CFA085F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF00E7B8();
  sub_1CF9E82A8();
  v17[15] = 0;
  sub_1CF9E7EE8();
  if (!v2)
  {
    v11 = v3[2];
    v12 = v3[3];
    v17[14] = 1;
    sub_1CF9E7EB8();
    v13 = v3[4];
    v14 = v3[5];
    v17[13] = 2;
    sub_1CF9E7EB8();
    v15 = *(type metadata accessor for LocalDomain() + 32);
    v17[12] = 3;
    sub_1CF9E5A58();
    sub_1CF00E824(&qword_1EC4BEAA0, MEMORY[0x1E6968FB0]);
    sub_1CF9E7F08();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1CF4F6770()
{
  MEMORY[0x1D3868CC0](60, 0xE100000000000000);
  MEMORY[0x1D3868CC0](0x6D6F446C61636F4CLL, 0xEB000000006E6961);
  MEMORY[0x1D3868CC0](58, 0xE100000000000000);
  v2 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1210, &qword_1CFA085F8);
  sub_1CF9E7B58();
  MEMORY[0x1D3868CC0](32, 0xE100000000000000);
  MEMORY[0x1D3868CC0](v2[2], v2[3]);
  MEMORY[0x1D3868CC0](8736, 0xE200000000000000);
  MEMORY[0x1D3868CC0](v2[4], v2[5]);
  MEMORY[0x1D3868CC0](15906, 0xE200000000000000);
  return 0;
}

uint64_t sub_1CF4F6890(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 8) == *(a2 + 8) && (*(a1 + 16) == *(a2 + 16) ? (v4 = *(a1 + 24) == *(a2 + 24)) : (v4 = 0), (v4 || (sub_1CF9E8048() & 1) != 0) && (*(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40) || (sub_1CF9E8048() & 1) != 0)) && (v5 = type metadata accessor for LocalDomain(), v6 = *(v5 + 32), (sub_1CF9E59A8() & 1) != 0))
  {
    v7 = *(a1 + *(v5 + 36)) ^ *(a2 + *(v5 + 36)) ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_1CF4F696C()
{
  v0 = sub_1CF9E7C78();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1CF4F69CC()
{
  result = qword_1EC4C1218;
  if (!qword_1EC4C1218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1218);
  }

  return result;
}

unint64_t sub_1CF4F6A24()
{
  result = qword_1EDEAA318;
  if (!qword_1EDEAA318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAA318);
  }

  return result;
}

unint64_t sub_1CF4F6A7C()
{
  result = qword_1EDEAA320;
  if (!qword_1EDEAA320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAA320);
  }

  return result;
}

uint64_t sub_1CF4F6AD0(void *a1)
{
  v2 = v1;
  v60 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0FE0, qword_1CFA07EC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v55 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v55 - v11;
  v13 = type metadata accessor for FSChangeToken();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v61 = v12;
  v15(v12, 1, 1, v13);
  v16 = sub_1CF9E5B88();
  v18 = v17;
  v19 = sub_1CF9E5B48();
  sub_1CEFE4714(v16, v18);
  v20 = *MEMORY[0x1E6967200];
  sub_1CEFD57E0(0, &unk_1EDEA3450, 0x1E695DEF0);
  v21 = v20;
  v22 = sub_1CF9E7568();

  if (v22)
  {
    goto LABEL_7;
  }

  v23 = *MEMORY[0x1E6967208];
  v24 = sub_1CF9E7568();

  if ((v24 & 1) != 0 || (v25 = sub_1CF9E5B88(), sub_1CF01426C(v25, v26, v9), v27 = v61, sub_1CEFDA9E0(v9, v61, &unk_1EC4C0FE0, qword_1CFA07EC0), sub_1CEFCCBDC(v27, v6, &unk_1EC4C0FE0, qword_1CFA07EC0), LODWORD(v27) = (*(v14 + 48))(v6, 1, v13), sub_1CEFCCC44(v6, &unk_1EC4C0FE0, qword_1CFA07EC0), v27 != 1))
  {
LABEL_7:
    v59 = v19;
    v62 = 0;
    v63 = 0xE000000000000000;
    sub_1CF9E7948();

    v62 = 0xD000000000000015;
    v63 = 0x80000001CFA50130;
    v35 = [v2 description];
    v36 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v38 = v37;

    MEMORY[0x1D3868CC0](v36, v38);

    MEMORY[0x1D3868CC0](0x3A64695B20, 0xE500000000000000);
    v58 = v2;
    v39 = *&v2[OBJC_IVAR____TtC18FileProviderDaemon19LocalFileEnumerator_observedID];
    v40 = NSFileProviderItemIdentifier.description.getter();
    MEMORY[0x1D3868CC0](v40);

    MEMORY[0x1D3868CC0](0x3A6D6F726620, 0xE600000000000000);
    v41 = NSFileProviderPage.description.getter();
    MEMORY[0x1D3868CC0](v41);

    MEMORY[0x1D3868CC0](93, 0xE100000000000000);
    v42 = v63;
    v56 = v62;
    v43 = sub_1CEFFCE80();
    if (qword_1EDEA3408 != -1)
    {
      swift_once();
    }

    sub_1CF9E7298();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1CF9FA440;
    v62 = v43;
    sub_1CEFFD0A8();
    v45 = sub_1CF9E7718();
    v57 = v43;
    v47 = v46;
    v48 = MEMORY[0x1E69E6158];
    *(v44 + 56) = MEMORY[0x1E69E6158];
    v49 = sub_1CEFD51C4();
    *(v44 + 32) = v45;
    *(v44 + 40) = v47;
    *(v44 + 96) = v48;
    *(v44 + 104) = v49;
    v50 = v56;
    *(v44 + 64) = v49;
    *(v44 + 72) = v50;
    *(v44 + 80) = v42;

    sub_1CF9E6018();

    v34 = v61;
    sub_1CF4F7BEC(v58, v60, v61);

    sub_1CF9E7298();
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_1CF9FA450;
    v62 = v57;
    v52 = sub_1CF9E7718();
    *(v51 + 56) = MEMORY[0x1E69E6158];
    *(v51 + 64) = v49;
    *(v51 + 32) = v52;
    *(v51 + 40) = v53;
    sub_1CF9E6018();
  }

  else
  {
    if (qword_1EDEA3408 != -1)
    {
      swift_once();
    }

    sub_1CF9E72A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1CF9FA450;
    *(v28 + 56) = MEMORY[0x1E69E6158];
    *(v28 + 64) = sub_1CEFD51C4();
    *(v28 + 32) = 0xD000000000000035;
    *(v28 + 40) = 0x80000001CFA500D0;
    sub_1CF9E6018();

    v29 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v30 = sub_1CF9E6888();
    v31 = [v29 initWithDomain:v30 code:-1002 userInfo:0];

    v32 = v31;
    v33 = sub_1CF9E57E8();

    [v60 finishEnumeratingWithError_];
    v34 = v61;
  }

  return sub_1CEFCCC44(v34, &unk_1EC4C0FE0, qword_1CFA07EC0);
}

uint64_t sub_1CF4F71D0()
{
  v1 = v0;
  v26[1] = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v25[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25[-v7];
  *&v10 = MEMORY[0x1EEE9AC00](v9).n128_u64[0];
  v12 = &v25[-v11];
  if (([v1 respondsToSelector_] & 1) == 0)
  {
    __break(1u);
  }

  v13 = [v1 fileURL];
  if (v13)
  {
    v14 = v13;
    sub_1CF9E59D8();

    v15 = sub_1CF9E5A58();
    (*(*(v15 - 8) + 56))(v8, 0, 1, v15);
  }

  else
  {
    v15 = sub_1CF9E5A58();
    (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  }

  sub_1CF007D78(v8, v12);
  v16 = [objc_opt_self() fp_defaultManager];
  sub_1CEFCCBDC(v12, v5, &unk_1EC4BE310, qword_1CF9FCBE0);
  sub_1CF9E5A58();
  v17 = *(v15 - 8);
  v18 = 0;
  if ((*(v17 + 48))(v5, 1, v15) != 1)
  {
    v18 = sub_1CF9E5928();
    (*(v17 + 8))(v5, v15);
  }

  v26[0] = 0;
  v19 = [v16 permanentStorageForItemAtURL:v18 allocateIfNone:0 error:v26];

  if (v19)
  {
    v20 = v26[0];
  }

  else
  {
    v21 = v26[0];
    v22 = sub_1CF9E57F8();

    swift_willThrow();
  }

  result = sub_1CEFCCC44(v12, &unk_1EC4BE310, qword_1CF9FCBE0);
  v24 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF4F74D4()
{
  v1 = v0;
  v32[1] = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v31[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v31[-v7];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v31[-v10];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v31[-v13];
  *&v16 = MEMORY[0x1EEE9AC00](v15).n128_u64[0];
  v18 = &v31[-v17];
  if (([v1 respondsToSelector_] & 1) == 0)
  {
    __break(1u);
  }

  v19 = [v1 fileURL];
  if (v19)
  {
    v20 = v19;
    sub_1CF9E59D8();

    v21 = sub_1CF9E5A58();
    (*(*(v21 - 8) + 56))(v8, 0, 1, v21);
  }

  else
  {
    v21 = sub_1CF9E5A58();
    (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
  }

  sub_1CF007D78(v8, v11);
  sub_1CF007D78(v11, v14);
  sub_1CF007D78(v14, v18);
  v22 = [objc_opt_self() fp_defaultManager];
  sub_1CEFCCBDC(v18, v5, &unk_1EC4BE310, qword_1CF9FCBE0);
  sub_1CF9E5A58();
  v23 = *(v21 - 8);
  v24 = 0;
  if ((*(v23 + 48))(v5, 1, v21) != 1)
  {
    v24 = sub_1CF9E5928();
    (*(v23 + 8))(v5, v21);
  }

  v32[0] = 0;
  v25 = [v22 permanentStorageForItemAtURL:v24 allocateIfNone:0 error:v32];

  if (v25)
  {
    v26 = v32[0];
  }

  else
  {
    v27 = v32[0];
    v28 = sub_1CF9E57F8();

    swift_willThrow();
  }

  result = sub_1CEFCCC44(v18, &unk_1EC4BE310, qword_1CF9FCBE0);
  v30 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1CF4F7838(unint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC18FileProviderDaemon27LocalChangesObserverContext_shouldUpdateFileIDInGenstore) != 1)
  {
    goto LABEL_11;
  }

  if (!(a1 >> 62))
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_4;
    }

LABEL_11:
    v6 = *(v1 + OBJC_IVAR____TtC18FileProviderDaemon27LocalChangesObserverContext_observer);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF580, &qword_1CFA01DB0);
    v7 = sub_1CF9E6D28();
    [v6 didUpdateItems_];

    return;
  }

  v3 = sub_1CF9E7818();
  if (!v3)
  {
    goto LABEL_11;
  }

LABEL_4:
  if (v3 >= 1)
  {
    v4 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1D3869C30](v4, a1);
      }

      else
      {
        v5 = *(a1 + 8 * v4 + 32);
        swift_unknownObjectRetain();
      }

      ++v4;
      swift_dynamicCastObjCProtocolUnconditional();
      sub_1CF4F74D4();
      swift_unknownObjectRelease();
    }

    while (v3 != v4);
    goto LABEL_11;
  }

  __break(1u);
}

uint64_t sub_1CF4F7A10()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon27LocalChangesObserverContext_observer);
    v4 = sub_1CF9E57E8();
    [v3 finishEnumeratingWithError_];

    v5 = *(*(v0 + OBJC_IVAR____TtC18FileProviderDaemon27LocalChangesObserverContext_localFileEnumerator) + OBJC_IVAR____TtC18FileProviderDaemon19LocalFileEnumerator_enumeratorsQueue);
    MEMORY[0x1EEE9AC00](v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1278, qword_1CFA08838);
    sub_1CF9E7398();

    return swift_unknownObjectWeakAssign();
  }

  return result;
}

id sub_1CF4F7BB8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocalChangesObserverContext();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1CF4F7BEC(char *a1, void *a2, uint64_t a3)
{
  v240 = a3;
  v241 = a2;
  v235 = type metadata accessor for FSDirectoryEnumerator();
  v236 = *(v235 - 8);
  v4 = *(v236 + 64);
  MEMORY[0x1EEE9AC00](v235);
  v237 = v5;
  v238 = &v219 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v244 = (&v219 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v232 = &v219 - v10;
  v11 = type metadata accessor for LocalDomain();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v231 = (&v219 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v230 = (&v219 - v15);
  v246 = sub_1CF9E5A58();
  *&v245 = *(v246 - 8);
  v16 = *(v245 + 64);
  MEMORY[0x1EEE9AC00](v246);
  v248 = &v219 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v228 = &v219 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v229 = &v219 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0FE0, qword_1CFA07EC0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v227 = &v219 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v234 = &v219 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v219 - v28;
  v30 = type metadata accessor for FSChangeToken();
  v31 = *(v30 - 1);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  *&v239 = &v219 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v233 = &v219 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v219 - v38;
  v40 = sub_1CF9E5D98();
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v44 = &v219 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FSEventReader();
  v242 = &a1[OBJC_IVAR____TtC18FileProviderDaemon19LocalFileEnumerator_domain];
  v243 = a1;
  v45 = *&a1[OBJC_IVAR____TtC18FileProviderDaemon19LocalFileEnumerator_domain + 8];
  sub_1CF01A820(v45, v39);
  v46 = v40;
  v47 = v41;
  if ((*(v41 + 48))(v39, 1, v46) == 1)
  {
    sub_1CEFCCC44(v39, &unk_1EC4BEDE0, qword_1CF9FA390);
    v249 = 0;
    v250 = 0xE000000000000000;
    sub_1CF9E7948();

    v249 = 0xD00000000000001ALL;
    v250 = 0x80000001CFA51050;
    LODWORD(v251) = v45;
    v48 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v48);

    v49 = v249;
    v50 = v250;
    if (qword_1EDEA3408 != -1)
    {
      goto LABEL_86;
    }

    goto LABEL_3;
  }

  (*(v41 + 32))(v44, v39, v46);
  sub_1CEFCCBDC(v240, v29, &unk_1EC4C0FE0, qword_1CFA07EC0);
  v57 = *(v31 + 48);
  v222 = v31 + 48;
  v221 = v57;
  v58 = v57(v29, 1, v30);
  v59 = v44;
  v226 = v46;
  v225 = v47;
  if (v58 == 1)
  {
    v219 = v31;
    v223 = v30;
    sub_1CEFCCC44(v29, &unk_1EC4C0FE0, qword_1CFA07EC0);
    if (qword_1EDEA3408 != -1)
    {
      swift_once();
    }

    v60 = qword_1EDEBB5A0;
    sub_1CF9E7298();
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v62 = swift_allocObject();
    v239 = xmmword_1CF9FA450;
    *(v62 + 16) = xmmword_1CF9FA450;
    *(v62 + 56) = MEMORY[0x1E69E6158];
    v63 = sub_1CEFD51C4();
    *(v62 + 64) = v63;
    *(v62 + 32) = 0xD000000000000012;
    *(v62 + 40) = 0x80000001CFA51140;
    v224 = v60;
    sub_1CF9E6018();

    CurrentEventId = FSEventsGetCurrentEventId();
    v65 = OBJC_IVAR____TtC18FileProviderDaemon19LocalFileEnumerator_itemURL;
    v66 = v243;
    v67 = sub_1CF9E5928();
    LOBYTE(v62) = [v67 fp_isFolder];

    v220 = v59;
    if ((v62 & 1) == 0)
    {
      v244 = v63;
      v248 = v61;
      v94 = v245;
      v95 = *(v245 + 16);
      v96 = &v66[v65];
      v97 = v229;
      v98 = v246;
      v95(v229, v96, v246);
      v99 = v230;
      sub_1CF00BE78(v242, v230, type metadata accessor for LocalDomain);
      v100 = v228;
      v95(v228, v97, v98);
      v101 = v231;
      sub_1CF00BE78(v99, v231, type metadata accessor for LocalDomain);
      v102 = type metadata accessor for VFSItem(0);
      v103 = v232;
      (*(*(v102 - 8) + 56))(v232, 1, 1, v102);
      v104 = objc_allocWithZone(type metadata accessor for LocalItem(0));
      v105 = v100;
      v106 = v220;
      v107 = sub_1CF001704(v105, v101, v103);
      sub_1CF00F304(v99, type metadata accessor for LocalDomain);
      (*(v94 + 8))(v97, v98);
      v108 = v241;
      if (v107)
      {
        sub_1CF9E7298();
        v109 = swift_allocObject();
        *(v109 + 16) = v239;
        v110 = v244;
        *(v109 + 56) = MEMORY[0x1E69E6158];
        *(v109 + 64) = v110;
        *(v109 + 32) = 0xD000000000000011;
        *(v109 + 40) = 0x80000001CFA51160;
        sub_1CF9E6018();

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC20, &qword_1CF9FE480);
        v111 = swift_allocObject();
        *(v111 + 16) = xmmword_1CFA00250;
        *(v111 + 32) = v107;
        v112 = v107;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF580, &qword_1CFA01DB0);
        v113 = sub_1CF9E6D28();

        [v108 didEnumerateItems_];
      }

      [v108 finishEnumeratingUpToPage_];
      (*(v225 + 8))(v106, v226);
      return;
    }

    v68 = CurrentEventId;
    v69 = v246;
  }

  else
  {
    v70 = v239;
    sub_1CF00F23C(v29, v239, type metadata accessor for FSChangeToken);
    v71 = v44;
    if ((sub_1CF9E5D48() & 1) == 0)
    {
      v249 = 0;
      v250 = 0xE000000000000000;
      sub_1CF9E7948();

      v249 = 0xD000000000000015;
      v250 = 0x80000001CFA51070;
      sub_1CF00FE88(&qword_1EDEAECB0, MEMORY[0x1E69695A8]);
      v114 = v226;
      v115 = sub_1CF9E7F98();
      MEMORY[0x1D3868CC0](v115);

      MEMORY[0x1D3868CC0](540945696, 0xE400000000000000);
      v116 = sub_1CF9E7F98();
      MEMORY[0x1D3868CC0](v116);

      MEMORY[0x1D3868CC0](41, 0xE100000000000000);
      v117 = v70;
      v118 = v249;
      v119 = v250;
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      sub_1CF9E7288();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v120 = swift_allocObject();
      *(v120 + 16) = xmmword_1CF9FA450;
      *(v120 + 56) = MEMORY[0x1E69E6158];
      *(v120 + 64) = sub_1CEFD51C4();
      *(v120 + 32) = v118;
      *(v120 + 40) = v119;
      sub_1CF9E6018();

      v121 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v122 = sub_1CF9E6888();
      v123 = [v121 initWithDomain:v122 code:-1002 userInfo:0];

      v124 = v123;
      v125 = sub_1CF9E57E8();

      [v241 finishEnumeratingWithError_];
      sub_1CF00F304(v117, type metadata accessor for FSChangeToken);
      (*(v225 + 8))(v71, v114);
      return;
    }

    v219 = v31;
    v220 = v44;
    v249 = 0;
    v250 = 0xE000000000000000;
    sub_1CF9E7948();

    v249 = 0xD00000000000001ELL;
    v250 = 0x80000001CFA511F0;
    v251 = *(v70 + v30[8]);
    v72 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v72);

    v73 = v70;
    v74 = v249;
    v75 = v250;
    if (qword_1EDEA3408 != -1)
    {
      swift_once();
    }

    v76 = qword_1EDEBB5A0;
    sub_1CF9E7298();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_1CF9FA450;
    *(v77 + 56) = MEMORY[0x1E69E6158];
    *(v77 + 64) = sub_1CEFD51C4();
    *(v77 + 32) = v74;
    *(v77 + 40) = v75;
    v224 = v76;
    sub_1CF9E6018();

    v223 = v30;
    v68 = *(v73 + v30[5]);
    CurrentEventId = *(v73 + v30[6]);
    sub_1CF00F304(v73, type metadata accessor for FSChangeToken);
    v69 = v246;
    v66 = v243;
  }

  v78 = *&v66[OBJC_IVAR____TtC18FileProviderDaemon19LocalFileEnumerator_observedID];
  v79 = *MEMORY[0x1E6967158];
  v80 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v82 = v81;
  v83 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v231 = v68;
  if (v80 == v83 && v82 == v84)
  {

    v85 = v241;
LABEL_19:
    v88 = *&v66[OBJC_IVAR____TtC18FileProviderDaemon19LocalFileEnumerator_urls];

    v89 = 1;
    goto LABEL_20;
  }

  v86 = sub_1CF9E8048();
  v87 = v78;

  if (v86)
  {

LABEL_18:
    v85 = v241;
    v66 = v243;
    goto LABEL_19;
  }

  v198 = *MEMORY[0x1E6967280];
  v199 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v201 = v200;
  if (v199 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v201 == v202)
  {

LABEL_79:
    v66 = v243;
    v88 = *&v243[OBJC_IVAR____TtC18FileProviderDaemon19LocalFileEnumerator_urls];

    v89 = 0;
    v85 = v241;
    goto LABEL_20;
  }

  v205 = sub_1CF9E8048();

  if (v205)
  {

    goto LABEL_79;
  }

  v206 = *MEMORY[0x1E6967298];
  v207 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v209 = v208;
  if (v207 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v209 == v210)
  {

    goto LABEL_18;
  }

  v211 = sub_1CF9E8048();

  v85 = v241;
  v66 = v243;
  if (v211)
  {
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF290, &unk_1CFA006C0);
  v212 = v245;
  v213 = *(v245 + 72);
  v214 = (*(v245 + 80) + 32) & ~*(v245 + 80);
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_1CF9FA450;
  (*(v212 + 16))(v88 + v214, &v66[OBJC_IVAR____TtC18FileProviderDaemon19LocalFileEnumerator_itemURL], v69);
  v89 = 0;
LABEL_20:
  v90 = v240;
  v91 = swift_allocObject();
  v232 = v91;
  *(v91 + 16) = MEMORY[0x1E69E7CC0];
  v230 = (v91 + 16);
  v92 = v223;
  if (v221(v90, 1, v223))
  {
    v93 = 0;
  }

  else
  {
    v93 = *(v90 + v92[8]);
  }

  if (([v85 respondsToSelector_] & 1) == 0)
  {
    goto LABEL_32;
  }

  v126 = [v85 suggestedPageSize];
  if (v126 < 0)
  {
    __break(1u);
LABEL_32:
    v126 = 200;
  }

  v229 = CurrentEventId;
  v127 = v235;
  v128 = v244;
  sub_1CF00BE78(v242, v244 + *(v235 + 20), type metadata accessor for LocalDomain);
  v129 = (v128 + v127[9]);
  *v128 = v88;
  *(v128 + v127[6]) = v89;
  v130 = v127[7];
  v228 = v93;
  *(v128 + v130) = v93;
  *(v128 + v127[8]) = v126;
  *v129 = sub_1CF4F9A04;
  v129[1] = 0;
  v131 = swift_allocObject();
  v132 = v232;
  *(v131 + 16) = v66;
  *(v131 + 24) = v132;
  v133 = v238;
  sub_1CF00BE78(v128, v238, type metadata accessor for FSDirectoryEnumerator);
  v134 = (*(v236 + 80) + 16) & ~*(v236 + 80);
  v135 = (v237 + v134 + 7) & 0xFFFFFFFFFFFFFFF8;
  v50 = v89;
  v136 = swift_allocObject();
  sub_1CF00F23C(v133, v136 + v134, type metadata accessor for FSDirectoryEnumerator);
  *&v239 = v136;
  v137 = (v136 + v135);
  *v137 = sub_1CF4FB258;
  v137[1] = v131;
  v138 = 3;
  if (!v50)
  {
    v138 = 7;
  }

  v237 = v138;
  v249 = 0;
  v235 = v126;
  LOBYTE(v251) = v126 != 0;
  v139 = *(v88 + 16);
  v140 = v243;

  v236 = v131;

  if (!v139)
  {
LABEL_53:

    v156 = v249;
    v249 = 0;
    v250 = 0xE000000000000000;
    sub_1CF9E7948();

    v251 = 0x20676E69646E6573;
    v252 = 0xE800000000000000;
    v157 = v230;
    swift_beginAccess();
    v158 = *v157;
    if (*v157 >> 62)
    {
      if (v158 < 0)
      {
        v215 = *v157;
      }

      v159 = sub_1CF9E7818();
    }

    else
    {
      v159 = *((v158 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v253 = v159;
    v160 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v160);

    MEMORY[0x1D3868CC0](0x6D65746920, 0xE500000000000000);
    v161 = *v157;
    if (*v157 >> 62)
    {
      if (v161 < 0)
      {
        v216 = *v157;
      }

      v162 = sub_1CF9E7818();
    }

    else
    {
      v162 = *((v161 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v248 = v156;
    v163 = v162 == 1;
    if (v162 == 1)
    {
      v164 = 0;
    }

    else
    {
      v164 = 115;
    }

    if (v163)
    {
      v165 = 0xE000000000000000;
    }

    else
    {
      v165 = 0xE100000000000000;
    }

    MEMORY[0x1D3868CC0](v164, v165);

    v166 = v251;
    v167 = v252;
    if (qword_1EDEA3408 != -1)
    {
      swift_once();
    }

    sub_1CF9E7298();
    v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v168 = swift_allocObject();
    v245 = xmmword_1CF9FA450;
    *(v168 + 16) = xmmword_1CF9FA450;
    *(v168 + 56) = MEMORY[0x1E69E6158];
    v243 = sub_1CEFD51C4();
    *(v168 + 64) = v243;
    *(v168 + 32) = v166;
    *(v168 + 40) = v167;
    sub_1CF9E6018();

    v169 = v223;
    if (*v157 >> 62)
    {
      if (*v157 < 0)
      {
        v217 = *v157;
      }

      v218 = *v157;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF580, &qword_1CFA01DB0);
      sub_1CF9E7B78();
    }

    else
    {
      v170 = *v157;
      swift_bridgeObjectRetain_n();
      sub_1CF9E8068();
    }

    v171 = v225;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF580, &qword_1CFA01DB0);
    v172 = sub_1CF9E6D28();

    [v241 didEnumerateItems_];

    v173 = v234;
    v174 = v220;
    v175 = v226;
    (*(v171 + 16))(v234, v220, v226);
    v176 = *(v171 + 56);
    v177 = v233;
    v176(v233, 1, 1, v175);
    v178 = v169[9];
    v176((v173 + v178), 1, 1, v175);
    *(v173 + v169[5]) = v231;
    *(v173 + v169[6]) = v229;
    *(v173 + v169[7]) = 0;
    v49 = v248;
    *(v173 + v169[8]) = v248;
    sub_1CEFDA9E0(v177, v173 + v178, &unk_1EC4BEDE0, qword_1CF9FA390);
    (*(v219 + 56))(v173, 0, 1, v169);
    v179 = v240;
    sub_1CEFDA9E0(v173, v240, &unk_1EC4C0FE0, qword_1CFA07EC0);
    v180 = v228;
    if (v49 >= v228)
    {
      if (v49 - v228 == v235)
      {
        v192 = v227;
        sub_1CEFCCBDC(v179, v227, &unk_1EC4C0FE0, qword_1CFA07EC0);
        v155 = (v221)(v192, 1, v169);
        if (v155 == 1)
        {
          __break(1u);
LABEL_97:
          objc_autoreleasePoolPop(v155);
          (*v49)(v248, v246);
          __break(1u);
        }

        else
        {
          v193 = v174;
          v194 = sub_1CF018EB8();
          v196 = v195;
          v197 = sub_1CF9E5B48();
          sub_1CEFE4714(v194, v196);
          sub_1CF00F304(v192, type metadata accessor for FSChangeToken);
          [v241 finishEnumeratingUpToPage_];

          (*(v171 + 8))(v193, v175);
          sub_1CF00F304(v244, type metadata accessor for FSDirectoryEnumerator);
        }

        return;
      }

      sub_1CF9E7298();
      v203 = swift_allocObject();
      *(v203 + 16) = v245;
      v204 = v243;
      *(v203 + 56) = MEMORY[0x1E69E6158];
      *(v203 + 64) = v204;
      *(v203 + 32) = 0xD000000000000016;
      *(v203 + 40) = 0x80000001CFA51180;
      sub_1CF9E6018();

      [v241 finishEnumeratingUpToPage_];
    }

    else
    {
      v251 = 0;
      v252 = 0xE000000000000000;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA511A0);
      v253 = v49;
      v181 = sub_1CF9E7F98();
      MEMORY[0x1D3868CC0](v181);

      MEMORY[0x1D3868CC0](0xD000000000000022, 0x80000001CFA511C0);
      v253 = v180;
      v182 = sub_1CF9E7F98();
      MEMORY[0x1D3868CC0](v182);

      v183 = v251;
      v184 = v252;
      sub_1CF9E7288();
      v185 = swift_allocObject();
      *(v185 + 16) = v245;
      v186 = v243;
      *(v185 + 56) = MEMORY[0x1E69E6158];
      *(v185 + 64) = v186;
      *(v185 + 32) = v183;
      *(v185 + 40) = v184;
      sub_1CF9E6018();

      v187 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v188 = sub_1CF9E6888();
      v189 = [v187 initWithDomain:v188 code:-1002 userInfo:0];

      v190 = v189;
      v191 = sub_1CF9E57E8();

      [v241 finishEnumeratingWithError_];
    }

    (*(v171 + 8))(v174, v175);
    sub_1CF00F304(v244, type metadata accessor for FSDirectoryEnumerator);

    return;
  }

  v141 = 0;
  v242 = "[DEBUG] ┏%@ %@";
  v243 = (v245 + 16);
  v238 = "itForStabilization";
  v49 = (v245 + 8);
  v142 = v246;
  while (v141 < *(v88 + 16))
  {
    (*(v245 + 16))(v248, v88 + ((*(v245 + 80) + 32) & ~*(v245 + 80)) + *(v245 + 72) * v141, v142);
    if (v251 != 1)
    {
      (*v49)(v248, v142);
      goto LABEL_53;
    }

    v143 = objc_autoreleasePoolPush();
    v144 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v145 = sub_1CF9E6888();
    v146 = [v144 initWithSuiteName_];

    if (!v146 || (v147 = sub_1CF9E6888(), v148 = [v146 BOOLForKey_], v146, v147, !v148))
    {
      if (sub_1CF9E58E8() == 0x68736172542ELL && v149 == 0xE600000000000000)
      {

LABEL_46:
        v50 = 7;
        goto LABEL_49;
      }

      v150 = sub_1CF9E8048();

      if (v150)
      {
        goto LABEL_46;
      }
    }

    v151 = sub_1CF9E5928();
    v152 = [v151 fp_isAppInboxOrDescendants];

    v50 = v237;
    if (v152)
    {
      v50 = 8;
    }

LABEL_49:
    objc_autoreleasePoolPop(v143);
    if ((v50 & 8) == 0)
    {
      v153 = objc_autoreleasePoolPush();
      MEMORY[0x1EEE9AC00](v153);
      v154 = v247;
      *(&v219 - 8) = v248;
      *(&v219 - 7) = &v249;
      *(&v219 - 6) = v244;
      *(&v219 - 5) = &v251;
      *(&v219 - 4) = v50;
      *(&v219 - 3) = sub_1CF326E94;
      *(&v219 - 2) = v239;
      *(&v219 - 8) = (~v50 & 6) == 0;
      sub_1CF9E59B8();
      v247 = v154;
      v155 = v153;
      if (v154)
      {
        goto LABEL_97;
      }

      objc_autoreleasePoolPop(v153);
    }

    v142 = v246;
    ++v141;
    (*v49)(v248, v246);
    if (v139 == v141)
    {
      goto LABEL_53;
    }
  }

  __break(1u);
LABEL_86:
  swift_once();
LABEL_3:
  sub_1CF9E72A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_1CF9FA450;
  *(v51 + 56) = MEMORY[0x1E69E6158];
  *(v51 + 64) = sub_1CEFD51C4();
  *(v51 + 32) = v49;
  *(v51 + 40) = v50;
  sub_1CF9E6018();

  v52 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v53 = sub_1CF9E6888();
  v54 = [v52 initWithDomain:v53 code:-1005 userInfo:0];

  v55 = v54;
  v56 = sub_1CF9E57E8();

  [v241 finishEnumeratingWithError_];
}

uint64_t sub_1CF4F9A04()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1CF9E6888();
  v2 = [v0 initWithSuiteName_];

  if (!v2 || (v3 = sub_1CF9E6888(), v4 = [v2 BOOLForKey_], v2, v3, (v4 & 1) == 0))
  {
    if (sub_1CF9E58E8() == 0x68736172542ELL && v5 == 0xE600000000000000)
    {

      return 7;
    }

    v6 = sub_1CF9E8048();

    if (v6)
    {
      return 7;
    }
  }

  v8 = sub_1CF9E5928();
  v9 = [v8 fp_isAppInboxOrDescendants];

  if (v9)
  {
    return 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CF4F9B50(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + OBJC_IVAR____TtC18FileProviderDaemon19LocalFileEnumerator_observedID);
  v7 = *MEMORY[0x1E6967158];
  v8 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v10 = v9;
  if (v8 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v10 == v11)
  {

LABEL_8:
    if (a1[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_isFolder] != 1)
    {
      return 1;
    }

    goto LABEL_9;
  }

  v13 = sub_1CF9E8048();

  if (v13)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (*(a2 + OBJC_IVAR____TtC18FileProviderDaemon19LocalFileEnumerator_shouldUpdateFileIDInGenstore) == 1)
  {
    sub_1CF4F71D0();
  }

  swift_beginAccess();
  v14 = a1;
  MEMORY[0x1D3868FA0]();
  if (*((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v16 = *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1CF9E6D88();
  }

  sub_1CF9E6DE8();
  swift_endAccess();
  return 1;
}

void sub_1CF4F9CF8(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, id))
{
  swift_unknownObjectRetain();
  v9 = a4;
  v10 = a1;
  a5(a3, v9);
  swift_unknownObjectRelease();
}

void sub_1CF4F9F5C(uint64_t a1)
{
  v48 = sub_1CF9E63A8();
  v2 = *(v48 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v47 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1CF9E6448();
  v5 = *(v46 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v45 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + OBJC_IVAR____TtC18FileProviderDaemon19LocalFileEnumerator_notifier);
  if (v8)
  {
    v9 = OBJC_IVAR____TtC18FileProviderDaemon17FSChangesNotifier_reader;
    v10 = *(v8 + OBJC_IVAR____TtC18FileProviderDaemon17FSChangesNotifier_reader);
    sub_1CF02AA74();
    *(*(v8 + v9) + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_delegate + 8) = 0;
    swift_unknownObjectWeakAssign();
  }

  v11 = OBJC_IVAR____TtC18FileProviderDaemon19LocalFileEnumerator_enumerators;
  swift_beginAccess();
  v12 = *(a1 + v11);
  if ((v12 & 0xC000000000000001) != 0)
  {
    if (v12 < 0)
    {
      v13 = *(a1 + v11);
    }

    v14 = *(a1 + v11);

    sub_1CF9E7808();
    type metadata accessor for FSChangesEnumerator();
    sub_1CF00FE88(&unk_1EC4C1258, type metadata accessor for FSChangesEnumerator);
    sub_1CF9E7038();
    v12 = v53[7];
    v15 = v53[8];
    v17 = v53[9];
    v16 = v53[10];
    v18 = v53[11];
  }

  else
  {
    v19 = -1 << *(v12 + 32);
    v15 = v12 + 56;
    v17 = ~v19;
    v20 = -v19;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v18 = v21 & *(v12 + 56);

    v16 = 0;
  }

  v38[1] = v17;
  v39 = (v17 + 64) >> 6;
  v42 = v53;
  v41 = (v2 + 8);
  v40 = (v5 + 8);
  v44 = v12;
  v43 = v15;
  while (v12 < 0)
  {
    v33 = sub_1CF9E7838();
    if (!v33 || (v51 = v33, type metadata accessor for FSChangesEnumerator(), swift_dynamicCast(), v32 = aBlock[0], v30 = v16, v31 = v18, !aBlock[0]))
    {
LABEL_25:
      sub_1CEFCB59C();
      return;
    }

LABEL_22:
    objc_sync_enter(v32);
    v34 = OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_source;
    v35 = *&v32[OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_source];
    v50 = v31;
    if (v35)
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1CF9E7448();
      swift_unknownObjectRelease();
      if (*&v32[v34])
      {
        v36 = *&v32[v34];
        swift_getObjectType();
        swift_unknownObjectRetain();
        sub_1CF9E7418();
        swift_unknownObjectRelease();
        v37 = *&v32[v34];
      }
    }

    *&v32[v34] = 0;
    swift_unknownObjectRelease();
    v22 = OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_reader;
    v23 = *&v32[OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_reader];
    v49 = *(v23 + 24);
    v53[2] = sub_1CF02AEF0;
    v53[3] = v23;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    v53[0] = sub_1CEFCA444;
    v53[1] = &block_descriptor_20_0;
    v24 = _Block_copy(aBlock);
    swift_retain_n();
    v25 = v45;
    sub_1CF9E63F8();
    v51 = MEMORY[0x1E69E7CC0];
    sub_1CF00FE88(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
    sub_1CF00FED0(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
    v26 = v47;
    v27 = v48;
    sub_1CF9E77B8();
    MEMORY[0x1D3869630](0, v25, v26, v24);
    _Block_release(v24);
    (*v41)(v26, v27);
    (*v40)(v25, v46);

    *(*&v32[v22] + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_delegate + 8) = 0;
    swift_unknownObjectWeakAssign();
    objc_sync_exit(v32);

    v16 = v30;
    v18 = v50;
    v12 = v44;
    v15 = v43;
  }

  v28 = v16;
  v29 = v18;
  v30 = v16;
  if (v18)
  {
LABEL_18:
    v31 = (v29 - 1) & v29;
    v32 = *(*(v12 + 48) + ((v30 << 9) | (8 * __clz(__rbit64(v29)))));
    if (!v32)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  while (1)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v30 >= v39)
    {
      goto LABEL_25;
    }

    v29 = *(v15 + 8 * v30);
    ++v28;
    if (v29)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

uint64_t sub_1CF4FA688()
{
  result = sub_1CF9E5A58();
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

uint64_t sub_1CF4FA78C(uint64_t a1, uint64_t (*a2)(void *), uint64_t a3, uint64_t a4)
{
  v56 = a4;
  v59 = a3;
  v60 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0FE0, qword_1CFA07EC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v58 = (&v53 - v7);
  v8 = type metadata accessor for FSChangeToken();
  v57 = *(v8 - 1);
  v9 = *(v57 + 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v53 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v53 - v20;
  v22 = sub_1CF9E5D98();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FSEventReader();
  v27 = *(a1 + OBJC_IVAR____TtC18FileProviderDaemon19LocalFileEnumerator_domain + 8);
  sub_1CF01A820(v27, v21);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_1CEFCCC44(v21, &unk_1EC4BEDE0, qword_1CF9FA390);
    v61 = 0;
    v62 = 0xE000000000000000;
    sub_1CF9E7948();

    v61 = 0xD00000000000001ALL;
    v62 = 0x80000001CFA51050;
    v63 = v27;
    v28 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v28);

    v29 = v61;
    v30 = v62;
    if (qword_1EDEA3408 != -1)
    {
      swift_once();
    }

    sub_1CF9E72A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1CF9FA450;
    *(v31 + 56) = MEMORY[0x1E69E6158];
    *(v31 + 64) = sub_1CEFD51C4();
    *(v31 + 32) = v29;
    *(v31 + 40) = v30;
    sub_1CF9E6018();

    return v60(0);
  }

  else
  {
    v54 = v11;
    (*(v23 + 32))(v26, v21, v22);
    CurrentEventId = FSEventsGetCurrentEventId();
    v34 = *(v23 + 16);
    v55 = v26;
    v53 = v34;
    v34(v14, v26, v22);
    v35 = *(v23 + 56);
    v35(v18, 1, 1, v22);
    v36 = v8[9];
    v35(&v14[v36], 1, 1, v22);
    *&v14[v8[5]] = CurrentEventId;
    *&v14[v8[6]] = CurrentEventId;
    v14[v8[7]] = 0;
    *&v14[v8[8]] = 0;
    sub_1CEFDA9E0(v18, &v14[v36], &unk_1EC4BEDE0, qword_1CF9FA390);
    v37 = sub_1CF018EB8();
    v39 = v38;
    v40 = sub_1CF9E5B48();
    sub_1CEFE4714(v37, v39);
    v41 = v40;
    v42 = sub_1CF9E5B88();
    v43 = v58;
    sub_1CF01426C(v42, v44, v58);
    if ((*(v57 + 6))(v43, 1, v8) == 1)
    {
      sub_1CEFCCC44(v43, &unk_1EC4C0FE0, qword_1CFA07EC0);
      v60(0);
    }

    else
    {
      v57 = type metadata accessor for FSChangeToken;
      v45 = v54;
      sub_1CF00F23C(v43, v54, type metadata accessor for FSChangeToken);
      v58 = v35;
      v46 = v8[9];
      sub_1CEFCCC44(v45 + v46, &unk_1EC4BEDE0, qword_1CF9FA390);
      v47 = v56 + OBJC_IVAR____TtC18FileProviderDaemon19LocalRootEnumerator_containerSnapshot;
      swift_beginAccess();
      v48 = type metadata accessor for LocalContainerSnapshot(0);
      v53(v45 + v46, v47 + *(v48 + 28), v22);
      v58((v45 + v46), 0, 1, v22);
      v49 = sub_1CF018EB8();
      v51 = v50;
      v52 = sub_1CF9E5B48();
      sub_1CEFE4714(v49, v51);
      v60(v52);

      sub_1CF00F304(v45, v57);
    }

    (*(v23 + 8))(v55, v22);
    return sub_1CF00F304(v14, type metadata accessor for FSChangeToken);
  }
}

uint64_t sub_1CF4FADF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FSChangeToken();
  v5 = *(*(v4 - 1) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - v13;
  v15 = sub_1CF9E5D98();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FSEventReader();
  v20 = *(a1 + OBJC_IVAR____TtC18FileProviderDaemon19LocalFileEnumerator_domain + 8);
  sub_1CF01A820(v20, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1CEFCCC44(v14, &unk_1EC4BEDE0, qword_1CF9FA390);
    v35 = 0;
    v36 = 0xE000000000000000;
    sub_1CF9E7948();

    v35 = 0xD00000000000001ALL;
    v36 = 0x80000001CFA51050;
    v34 = v20;
    v21 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v21);

    v22 = v35;
    v23 = v36;
    if (qword_1EDEA3408 != -1)
    {
      swift_once();
    }

    sub_1CF9E72A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1CF9FA450;
    *(v24 + 56) = MEMORY[0x1E69E6158];
    *(v24 + 64) = sub_1CEFD51C4();
    *(v24 + 32) = v22;
    *(v24 + 40) = v23;
    sub_1CF9E6018();

    return (*(a2 + 16))(a2, 0);
  }

  else
  {
    (*(v16 + 32))(v19, v14, v15);
    CurrentEventId = FSEventsGetCurrentEventId();
    (*(v16 + 16))(v7, v19, v15);
    v27 = *(v16 + 56);
    v27(v11, 1, 1, v15);
    v33 = a2;
    v28 = v4[9];
    v27(&v7[v28], 1, 1, v15);
    *&v7[v4[5]] = CurrentEventId;
    *&v7[v4[6]] = CurrentEventId;
    v7[v4[7]] = 0;
    *&v7[v4[8]] = 0;
    sub_1CEFDA9E0(v11, &v7[v28], &unk_1EC4BEDE0, qword_1CF9FA390);
    v29 = sub_1CF018EB8();
    v31 = v30;
    v32 = sub_1CF9E5B48();
    sub_1CEFE4714(v29, v31);
    (*(v33 + 16))(v33, v32);

    (*(v16 + 8))(v19, v15);
    return sub_1CF00F304(v7, type metadata accessor for FSChangeToken);
  }
}

uint64_t sub_1CF4FB2BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = (*(a4 + 8))(a3, a4);
  v11 = v8;

  MEMORY[0x1D3868CC0](a1, a2);

  (*(a4 + 16))(v10, v11, a3, a4);
}

uint64_t sub_1CF4FB38C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  (*(a7 + 24))(v9, a1, a2, a5, a7);
  a3(v9);
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t sub_1CF4FB418(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();
  MEMORY[0x1D3868CC0](a1, a2);
  MEMORY[0x1D3868CC0](10, 0xE100000000000000);
  return swift_endAccess();
}

uint64_t sub_1CF4FB48C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v11 = *v5;
  v13 = v5[1];
  v14 = v5[2];

  result = MEMORY[0x1D3868CC0](a1, a2);
  a5[3] = a3;
  a5[4] = a4;
  *a5 = v11;
  a5[1] = v13;
  a5[2] = v14;
  return result;
}

uint64_t sub_1CF4FB518()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_1CF4FB57C()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 40);

  return v1;
}

uint64_t sub_1CF4FB5B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = *v3;
  a3[1] = a1;
  a3[3] = &type metadata for SubStringDumper;
  a3[4] = &off_1F4C03848;
  a3[2] = a2;
}

void sub_1CF4FB608(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1CF9E6938();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = a1;
  v16[1] = a2;

  MEMORY[0x1D3868CC0](10, 0xE100000000000000);
  v11 = *(v3 + 16);
  sub_1CF9E6918();
  v12 = sub_1CF9E68C8();
  v14 = v13;
  (*(v7 + 8))(v10, v6);
  if (v14 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {

    v15 = sub_1CF9E5B48();
    sub_1CEFE48D8(v12, v14);
    [v11 writeData_];
  }
}

uint64_t sub_1CF4FB774()
{
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_1CF4FB7D8()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 32);

  return v1;
}

void *sub_1CF4FB830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v12 = *(*v4 + 24);
  v13 = *(*v4 + 32);
  v9 = *(*v4 + 16);

  MEMORY[0x1D3868CC0](a1, a2);
  v10 = type metadata accessor for FileDumper();
  result = swift_allocObject();
  result[2] = v9;
  result[3] = v12;
  result[4] = v13;
  a4[3] = v10;
  a4[4] = a3;
  *a4 = result;
  return result;
}

uint64_t OS_dispatch_queue.init(label:qos:attributes:target:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a5;
  v25 = a1;
  v26 = a2;
  v24 = sub_1CF9E7388();
  v7 = *(v24 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CF9E7318();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1CF9E6448();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  (*(v17 + 16))(&v23 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v16, v19);
  (*(v12 + 16))(v15, a4, v11);
  (*(v7 + 104))(v10, *MEMORY[0x1E69E8098], v24);
  v21 = sub_1CF9E73B8();
  (*(v12 + 8))(a4, v11);
  (*(v17 + 8))(a3, v16);
  return v21;
}

void sub_1CF4FBB4C(dispatch_time_t a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClassUnconditional();

  dispatch_source_set_timer(v2, a1, 0xFFFFFFFFFFFFFFFFLL, 0);
}

uint64_t static DispatchQoS.current.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v11 - v2;
  v4 = sub_1CF9E63D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  qos_class_self();
  sub_1CF9E63B8();
  v9 = *(v5 + 48);
  if (v9(v3, 1, v4) == 1)
  {
    (*(v5 + 104))(v8, *MEMORY[0x1E69E7FA0], v4);
    if (v9(v3, 1, v4) != 1)
    {
      sub_1CF4FBD5C(v3);
    }
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
  }

  return sub_1CF9E6428();
}

uint64_t sub_1CF4FBD5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void OS_dispatch_queue.asyncAndWaitWithLogs<A>(_:quiet:function:block:)(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v37 = a5;
  v31 = a3;
  v32 = a4;
  v16 = a1;
  if (!a1)
  {
    v16 = fpfs_current_log();
  }

  v17 = a1;
  v18 = fpfs_adopt_log();
  v19 = v18;
  v35 = 0;
  v36 = 1;
  if ((a2 & 1) == 0)
  {
    v33 = sub_1CF9E73C8();
    v34 = v20;
    MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
    v21 = sub_1CF9E7988();
    v30 = a6;
    MEMORY[0x1D3868CC0](v21);

    sub_1CF9E6978();

    v22 = __fp_log_fork();

    v35 = v22;
    v36 = 0;
  }

  MEMORY[0x1EEE9AC00](v18);
  v26[6] = a8;
  v26[7] = v16;
  v26[8] = &v35;
  v26[9] = v9;
  v26[10] = v31;
  v26[11] = v32;
  v27 = v37;
  v28 = a6;
  v29 = a7;
  MEMORY[0x1EEE9AC00](v23);
  v26[2] = a8;
  sub_1CF4FBFE0(sub_1CF4FC60C, v24, sub_1CF4FC644, v26, a8, a9);
  v25 = fpfs_adopt_log();
}

uint64_t sub_1CF4FBFE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(id)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v30 = a6;
  v28[1] = a4;
  v29 = a3;
  v32 = sub_1CF9E75D8();
  v10 = *(v32 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = v28 - v16;
  v18 = *(a5 - 8);
  (*(v18 + 56))(v28 - v16, 1, 1, a5, v15);
  v34 = 0;
  v19 = swift_allocObject();
  v19[2] = a5;
  v19[3] = v17;
  v19[4] = a1;
  v19[5] = a2;
  v19[6] = &v34;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1CF4FCF7C;
  *(v20 + 24) = v19;
  aBlock[4] = sub_1CEFFD054;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFFD02C;
  aBlock[3] = &block_descriptor_9_1;
  v21 = _Block_copy(aBlock);

  FPDispatchAsyncAndWait(v6, v21);
  _Block_release(v21);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v24 = v34;
    if (v34)
    {
      v25 = v34;
      v26 = v31;
      v29(v24);
      if (v26)
      {

        (*(v10 + 8))(v17, v32);
      }

      v27 = v32;
LABEL_8:

      (*(v10 + 8))(v17, v27);
    }

    v27 = v32;
    (*(v10 + 16))(v13, v17, v32);
    result = (*(v18 + 48))(v13, 1, a5);
    if (result != 1)
    {
      (*(v18 + 32))(v30, v13, a5);
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF4FC32C(uint64_t a1, void (*a2)(__n128), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1CF9E75D8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v15 - v12;
  a2(v11);
  (*(*(a5 - 8) + 56))(v13, 0, 1, a5);
  return (*(v9 + 40))(a1, v13, v8);
}

void sub_1CF4FC474(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void))
{
  v17 = *MEMORY[0x1E69E9840];
  v9 = fpfs_adopt_log();
  if ((a2[1] & 1) == 0)
  {
    v16 = *a2;
    sub_1CF9E73C8();
    MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
    v10 = sub_1CF9E7988();
    MEMORY[0x1D3868CC0](v10);

    sub_1CF9E6978();

    __fp_log_adopt();
  }

  a7();
  if (v13)
  {
    if ((a2[1] & 1) == 0)
    {
      v14 = *a2;
      __fp_leave_section_Debug();
    }
  }

  else if ((a2[1] & 1) == 0)
  {
    v15 = *a2;
    __fp_leave_section_Debug();
  }

  v11 = fpfs_adopt_log();

  v12 = *MEMORY[0x1E69E9840];
}

void sub_1CF4FC60C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 16);
  sub_1CF4FC474(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));
}

uint64_t sub_1CF4FC6F8(const void *a1)
{
  v2 = sub_1CF9E63A8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CF9E6448();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(a1);
  sub_1CF9E6418();
  v14[1] = MEMORY[0x1E69E7CC0];
  sub_1CF010454(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CF01049C();
  sub_1CF9E77B8();
  sub_1CF9E7408();
  _Block_release(v12);
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

BOOL static DispatchQoS.< infix(_:_:)()
{
  v0 = sub_1CF9E63D8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  sub_1CF9E6438();
  v8 = sub_1CF9E63C8();
  v9 = *(v1 + 8);
  v9(v7, v0);
  sub_1CF9E6438();
  v10 = sub_1CF9E63C8();
  v9(v4, v0);
  return v8 < v10;
}

BOOL sub_1CF4FCA9C()
{
  v0 = sub_1CF9E63D8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  sub_1CF9E6438();
  v8 = sub_1CF9E63C8();
  v9 = *(v1 + 8);
  v9(v7, v0);
  sub_1CF9E6438();
  v10 = sub_1CF9E63C8();
  v9(v4, v0);
  return v8 < v10;
}

BOOL sub_1CF4FCBD4()
{
  v0 = sub_1CF9E63D8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  sub_1CF9E6438();
  v8 = sub_1CF9E63C8();
  v9 = *(v1 + 8);
  v9(v7, v0);
  sub_1CF9E6438();
  v10 = sub_1CF9E63C8();
  v9(v4, v0);
  return v8 >= v10;
}

BOOL sub_1CF4FCD0C()
{
  v0 = sub_1CF9E63D8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  sub_1CF9E6438();
  v8 = sub_1CF9E63C8();
  v9 = *(v1 + 8);
  v9(v7, v0);
  sub_1CF9E6438();
  v10 = sub_1CF9E63C8();
  v9(v4, v0);
  return v8 >= v10;
}

BOOL sub_1CF4FCE44()
{
  v0 = sub_1CF9E63D8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  sub_1CF9E6438();
  v8 = sub_1CF9E63C8();
  v9 = *(v1 + 8);
  v9(v7, v0);
  sub_1CF9E6438();
  v10 = sub_1CF9E63C8();
  v9(v4, v0);
  return v8 < v10;
}

uint64_t BitSet.init(bit:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v15 = a1;
  v16 = a3;
  v17 = *(a2 + 8);
  v3 = *(v17 + 8);
  swift_getAssociatedTypeWitness();
  v4 = *(*(swift_getAssociatedConformanceWitness() + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = swift_checkMetadataState();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  swift_getAssociatedConformanceWitness();
  sub_1CF9E80D8();
  sub_1CF9E8018();
  v18 = v15;
  sub_1CF056E98();
  sub_1CF9E76D8();
  (*(v8 + 8))(v11, v7);
  return sub_1CF9E82D8();
}

uint64_t CustomStringConvertibleBitSet.bitSetDescription.getter@<X0>(uint64_t a1@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v3 = *(*(TupleTypeMetadata2 - 8) + 56);

  return v3(a1, 1, 1, TupleTypeMetadata2);
}

uint64_t CustomStringConvertibleBitSet.description.getter(unsigned int (*a1)(char *, uint64_t, uint64_t), uint64_t a2)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = sub_1CF9E75D8();
  v38 = *(v6 - 8);
  v39 = v6;
  v7 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v38 - v8;
  v10 = *(TupleTypeMetadata2 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v40 = &v38 - v16;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = (&v38 - v19);
  (*(a2 + 32))(a1, a2, v18);
  v21 = *(v10 + 48);
  if (v21(v9, 1, TupleTypeMetadata2) == 1)
  {
    v22 = *(TupleTypeMetadata2 + 48);
    *v20 = 0;
    v20[1] = 0xE000000000000000;
    (*(*(a1 - 1) + 16))(v20 + v22, v2, a1);
    if (v21(v9, 1, TupleTypeMetadata2) != 1)
    {
      (*(v38 + 8))(v9, v39);
    }
  }

  else
  {
    (*(v10 + 32))(v20, v9, TupleTypeMetadata2);
  }

  v23 = *(TupleTypeMetadata2 + 48);
  v24 = *(a2 + 8);
  v25 = *(*(v24 + 8) + 16);
  v26 = sub_1CF9E7798();
  if (v26)
  {
    (*(v10 + 16))(v14, v20, TupleTypeMetadata2);
    v28 = *v14;
    v27 = v14[1];
    (*(*(a1 - 1) + 8))(v14 + *(TupleTypeMetadata2 + 48), a1);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v26);
    *(&v38 - 2) = a1;
    *(&v38 - 1) = a2;
    v41 = sub_1CF4FDC40(sub_1CF4FDC20, (&v38 - 4), a1, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], *(v24 + 16), MEMORY[0x1E69E7410], v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
    sub_1CF0711CC();
    v28 = sub_1CF9E67D8();
    v31 = v30;

    v32 = v40;
    (*(v10 + 16))(v40, v20, TupleTypeMetadata2);
    v34 = *v32;
    v33 = *(v32 + 1);

    if ((v33 & 0x2000000000000000) != 0)
    {
      v35 = HIBYTE(v33) & 0xF;
    }

    else
    {
      v35 = v34 & 0xFFFFFFFFFFFFLL;
    }

    (*(*(a1 - 1) + 8))(&v32[*(TupleTypeMetadata2 + 48)], a1);
    if (v35)
    {
      v36 = v20[1];
      v41 = *v20;
      v42 = v36;

      MEMORY[0x1D3868CC0](124, 0xE100000000000000);
      MEMORY[0x1D3868CC0](v28, v31);

      v28 = v41;
    }
  }

  (*(v10 + 8))(v20, TupleTypeMetadata2);
  return v28;
}

uint64_t BitSet.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7);
  return (*(v4 + 32))(a2, v7, a1);
}

uint64_t BitSetIterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = *(a1 + 16);
  v4 = sub_1CF9E75D8();
  v23 = *(v4 - 8);
  v24 = v4;
  v5 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - v6;
  v8 = *(a1 + 24);
  v9 = *(v8 + 8);
  v10 = *(v9 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v22 - v14;
  v16 = *(v9 + 16);
  if (sub_1CF9E7798())
  {
    v17 = *(*(v3 - 8) + 56);
    v18 = v25;

    return v17(v18, 1, 1, v3);
  }

  else
  {
    sub_1CF9E6C28();
    swift_getAssociatedConformanceWitness();
    v20 = sub_1CF9E76C8();
    (*(v12 + 8))(v15, AssociatedTypeWitness);
    v21 = v25;
    BitSet.init(bit:)(v20, v8, v25);
    sub_1CF9E7788();
    (*(v23 + 8))(v7, v24);
    return (*(*(v3 - 8) + 56))(v21, 0, 1, v3);
  }
}

uint64_t sub_1CF4FDAC8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = *(*(*(a2 + 8) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  result = (*(a2 + 24))(a1, a2, v9);
  if (!v11)
  {
    sub_1CF9E6C28();
    swift_getAssociatedConformanceWitness();
    v12 = sub_1CF9E6B28();
    MEMORY[0x1D3868CC0](v12);

    result = 30768;
    v11 = 0xE200000000000000;
  }

  *a3 = result;
  a3[1] = v11;
  return result;
}

uint64_t sub_1CF4FDC40(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52 = a8;
  v9 = v8;
  v67 = a2;
  v68 = a4;
  v66 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = *(AssociatedTypeWitness - 8);
  v15 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v50 = &v49 - v16;
  v53 = a5;
  v51 = *(a5 - 8);
  v17 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v63 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v64 = &v49 - v21;
  v22 = sub_1CF9E75D8();
  v54 = *(v22 - 8);
  v55 = v22;
  v23 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v57 = &v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v49 - v26;
  v28 = *(*(a4 - 1) + 64);
  MEMORY[0x1EEE9AC00](v29);
  v56 = &v49 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v62 = *(a3 - 1);
  v32 = *(v62 + 8);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v49 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a6;
  v69 = swift_getAssociatedTypeWitness();
  v58 = *(v69 - 8);
  v36 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v38 = &v49 - v37;
  v39 = sub_1CF9E6B78();
  v70 = sub_1CF9E7A88();
  v65 = sub_1CF9E7A98();
  sub_1CF9E7A38();
  (*(v62 + 2))(v35, v59, a3);
  v68 = v38;
  v62 = a3;
  result = sub_1CF9E6B68();
  if (v39 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v39)
  {
    v41 = (v61 + 48);
    v42 = (v61 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_1CF9E7618();
      result = (*v41)(v27, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v66(v27, v64);
      if (v9)
      {
        (*(v58 + 8))(v68, v69);

        (*(v51 + 32))(v52, v64, v53);
        return (*v42)(v27, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v42)(v27, AssociatedTypeWitness);
      sub_1CF9E7A78();
      if (!--v39)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v43 = v57;
  sub_1CF9E7618();
  v44 = v43;
  v45 = v61;
  v46 = *(v61 + 48);
  v64 = (v61 + 48);
  v62 = v46;
  if (v46(v43, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v58 + 8))(v68, v69);
    (*(v54 + 8))(v44, v55);
    return v70;
  }

  else
  {
    v61 = *(v45 + 32);
    v47 = (v45 + 8);
    v48 = v50;
    while (1)
    {
      (v61)(v48, v44, AssociatedTypeWitness);
      v66(v48, v63);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v47)(v48, AssociatedTypeWitness);
      sub_1CF9E7A78();
      sub_1CF9E7618();
      if (v62(v44, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v47)(v48, AssociatedTypeWitness);
    (*(v58 + 8))(v68, v69);

    return (*(v51 + 32))(v52, v63, v53);
  }
}

uint64_t sub_1CF4FE334(uint64_t a1)
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

uint64_t sub_1CF4FE3A4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

char *sub_1CF4FE4E4(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
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