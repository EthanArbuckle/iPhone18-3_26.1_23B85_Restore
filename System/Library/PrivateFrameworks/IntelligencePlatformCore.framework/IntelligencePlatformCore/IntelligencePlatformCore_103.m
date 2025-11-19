uint64_t sub_1C4D213B8()
{
  sub_1C43FCF70();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  sub_1C43FBDAC();
  *v8 = v7;
  *(v3 + 80) = v0;

  if (v0)
  {
    v9 = *(v3 + 64);
  }

  else
  {
    v10 = *(v3 + 64);
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C4D214D8()
{
  sub_1C43FBCD4();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);

  sub_1C43FBCF0();

  return v3(1);
}

uint64_t sub_1C4D21540()
{
  sub_1C43FBCD4();
  v2 = v0[6];
  v1 = v0[7];

  v3 = v0[10];
  v4 = sub_1C4409E50();

  return v5(v4);
}

uint64_t *sub_1C4D215A4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1C4EFA598();
  v8 = sub_1C4EFA538();
  if (v8)
  {
    v9 = *(v3 + OBJC_IVAR____TtCC24IntelligencePlatformCore7ViewXPC6Server_process);
    if (v9)
    {
      v25 = v4;
      sub_1C4461BB8(0, &qword_1EC0C6520, 0x1E698E9F8);
      v10 = v9;
      sub_1C4EFA6E8();
      v12 = *(v11 + 8);
      sub_1C4EFA558();
      v13 = sub_1C4D26584(3);
      v14 = [objc_opt_self() policyForProcess:v10 connectionFlags:0 useCase:a3];
      if ([v14 allowsAccessToResource:v13 withMode:1])
      {
      }

      else
      {
        v24 = v10;
        if (qword_1EDDFA678 != -1)
        {
          swift_once();
        }

        v16 = sub_1C4F00978();
        sub_1C442B738(v16, qword_1EDE2DCD8);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v17 = sub_1C4F00968();
        v18 = sub_1C4F01CD8();

        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v8 = swift_slowAlloc();
          v26 = v8;
          *v19 = 136315138;
          *(v19 + 4) = sub_1C441D828(a1, a2, &v26);
          _os_log_impl(&dword_1C43F8000, v17, v18, "ViewXPC: client not authorized for %s", v19, 0xCu);
          sub_1C440962C(v8);
          MEMORY[0x1C6942830](v8, -1, -1);
          MEMORY[0x1C6942830](v19, -1, -1);
        }

        v21 = *(v25 + OBJC_IVAR____TtCC24IntelligencePlatformCore7ViewXPC6Server_clientIdentifier);
        v20 = *(v25 + OBJC_IVAR____TtCC24IntelligencePlatformCore7ViewXPC6Server_clientIdentifier + 8);
        sub_1C4D27FAC();
        swift_allocError();
        *v22 = a1;
        *(v22 + 8) = a2;
        *(v22 + 16) = v21;
        *(v22 + 24) = v20;
        *(v22 + 32) = 0;
        *(v22 + 40) = 0;
        *(v22 + 48) = 1;
        swift_willThrow();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }
    }

    else
    {
      sub_1C4D27FAC();
      swift_allocError();
      *v15 = 0u;
      *(v15 + 16) = 0u;
      *(v15 + 32) = 0u;
      *(v15 + 48) = 5;
      swift_willThrow();
    }
  }

  else
  {
    sub_1C4D23658(a1, a2);
  }

  return v8;
}

uint64_t sub_1C4D218E0()
{
  sub_1C43FBCD4();
  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
  *(v1 + 112) = v3;
  *(v1 + 120) = v4;
  *(v1 + 280) = v5;
  *(v1 + 104) = v6;
  v7 = sub_1C4EF9948();
  *(v1 + 144) = v7;
  sub_1C43FCF7C(v7);
  *(v1 + 152) = v8;
  v10 = *(v9 + 64);
  *(v1 + 160) = sub_1C43FBE7C();
  v11 = sub_1C4F01188();
  *(v1 + 168) = v11;
  sub_1C43FCF7C(v11);
  *(v1 + 176) = v12;
  v14 = *(v13 + 64);
  *(v1 + 184) = sub_1C43FBE7C();
  v15 = sub_1C4EFA608();
  *(v1 + 192) = v15;
  sub_1C43FCF7C(v15);
  *(v1 + 200) = v16;
  v18 = *(v17 + 64);
  *(v1 + 208) = sub_1C43FBE7C();
  v19 = sub_1C4EF98F8();
  *(v1 + 216) = v19;
  sub_1C43FCF7C(v19);
  *(v1 + 224) = v20;
  v22 = *(v21 + 64) + 15;
  *(v1 + 232) = swift_task_alloc();
  *(v1 + 240) = swift_task_alloc();
  v23 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v23, v24, v25);
}

void sub_1C4D21A88()
{
  v165 = v0;
  v1 = *(v0 + 136);
  v2 = (v1 + OBJC_IVAR____TtCC24IntelligencePlatformCore7ViewXPC6Server_auditToken);
  if ((*(v1 + OBJC_IVAR____TtCC24IntelligencePlatformCore7ViewXPC6Server_auditToken + 32) & 1) != 0 || (v3 = *(v1 + OBJC_IVAR____TtCC24IntelligencePlatformCore7ViewXPC6Server_process)) == 0)
  {
    sub_1C4D27FAC();
    v30 = sub_1C43FFB2C();
    sub_1C4426258(v30, v31);
    goto LABEL_14;
  }

  v148 = v2[7];
  v149 = v2[6];
  v146 = v2[5];
  v147 = v2[4];
  v144 = v2[3];
  v145 = v2[2];
  v142 = v2[1];
  v143 = *v2;
  v4 = qword_1EDDFA678;
  v5 = v3;
  if (v4 != -1)
  {
    sub_1C43FFCC0();
  }

  v7 = *(v0 + 112);
  v6 = *(v0 + 120);
  v8 = sub_1C4F00978();
  sub_1C442B738(v8, qword_1EDE2DCD8);
  v9 = v5;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v10 = v6;
  v11 = v9;
  v12 = v10;
  v13 = sub_1C4F00968();
  sub_1C4F01CF8();

  if (sub_1C442FAFC())
  {
    v15 = *(v0 + 112);
    v14 = *(v0 + 120);
    v150 = v11;
    v16 = *(v0 + 104);
    v17 = sub_1C43FFD34();
    v18 = swift_slowAlloc();
    v155[0] = sub_1C43FC11C();
    *v17 = 136315650;
    v19 = sub_1C441D828(v16, v15, v155);
    sub_1C4450114(v19);
    v20 = sub_1C4F01138();
    v22 = sub_1C441D828(v20, v21, v155);
    v11 = v150;

    *(v17 + 14) = v22;
    *(v17 + 22) = 2112;
    *(v17 + 24) = v150;
    *v18 = v3;
    v23 = v150;
    sub_1C444B414();
    _os_log_impl(v24, v25, v26, v27, v17, 0x20u);
    sub_1C4420C3C(v18, &qword_1EC0BDA00, &qword_1C4F10D30);
    sub_1C43FBE2C();
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C43FE9D4();
  }

  v28 = *(v0 + 136);
  v29 = sub_1C4D215A4(*(v0 + 104), *(v0 + 112), *(v0 + 120));
  if (v29)
  {
    sub_1C4EFA6C8();
  }

  else
  {
    v32 = *(v0 + 112);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v33 = *(v0 + 104);
  }

  if (qword_1EDDF9710 != -1)
  {
    sub_1C440AD44();
  }

  v34 = *(v0 + 128);
  v42 = sub_1C4415590();
  v151 = v11;
  v43 = *(v42 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate7Manager_liveState);

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  os_unfair_lock_lock(v43 + 6);
  sub_1C4422F74(v155);
  os_unfair_lock_unlock(v43 + 6);
  v44 = *(v42 + 16);
  sub_1C44E8494(v155);
  v131 = v155[2];
  v132 = v155[3];
  v133 = v156;
  v45 = v158;
  v135 = v155[4];
  v136 = v157;
  v46 = v159;
  v141 = v160;
  v47 = v161;
  v134 = v162;
  v137 = v164;
  v139 = v163;

  *(v0 + 16) = v135;
  *(v0 + 24) = v133;
  *(v0 + 25) = *v152;
  *(v0 + 28) = *&v152[3];
  *(v0 + 32) = v136;
  *(v0 + 40) = v45;
  *(v0 + 48) = v46;
  *(v0 + 56) = v141;
  *(v0 + 64) = v47;
  *(v0 + 65) = v134;
  *(v0 + 66) = v153;
  *(v0 + 70) = v154;
  *(v0 + 72) = v139;
  *(v0 + 80) = v137;
  if ((v47 & 1) == 0)
  {
    goto LABEL_21;
  }

  v48 = v46;
  if ((v141 & 1) == 0)
  {
    if (v133)
    {
      v55 = v45;
      v56 = *(v0 + 104);
      v57 = *(v0 + 112);

      if (v48)
      {
        v58 = v55;
      }

      else
      {
        v58 = 0x206E776F6E6B6E55;
      }

      if (v48)
      {
        v59 = v48;
      }

      else
      {
        v59 = 0xED0000726F727265;
      }

      sub_1C4D27FAC();
      sub_1C43FFB2C();
      *v60 = v56;
      v60[1] = v57;
      v60[2] = v133;
      v60[3] = v58;
      v60[4] = v59;
      v60[5] = 0;
      sub_1C44165C0(v60, 4);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      sub_1C444AF3C(v0 + 16);
      goto LABEL_14;
    }

    if (v137 >> 60 == 15)
    {
LABEL_21:
      v51 = *(v0 + 104);
      v52 = *(v0 + 112);

      sub_1C4D27FAC();
      v53 = sub_1C43FFB2C();
      *v54 = v51;
      v54[1] = v52;
      sub_1C440EA30(v53, v54);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C444AF3C(v0 + 16);

      goto LABEL_14;
    }
  }

  if (v29)
  {
    v49 = *(v0 + 208);
    sub_1C4EFA6E8();
    v50 = *MEMORY[0x1E698E928];
    sub_1C4F01138();
    sub_1C4EFA5B8();
    v67 = *(v0 + 240);
    v69 = *(v0 + 200);
    v68 = *(v0 + 208);
    v70 = *(v0 + 192);

    sub_1C4EFA5F8();
    v71 = *(v69 + 8);
    v72 = sub_1C4402B58();
    v73(v72);
  }

  else
  {
    v62 = *(v0 + 232);
    v61 = *(v0 + 240);
    v64 = *(v0 + 216);
    v63 = *(v0 + 224);
    v65 = *(v0 + 128);
    v66 = objc_autoreleasePoolPush();
    sub_1C4436790();
    sub_1C4EF9888();
    objc_autoreleasePoolPop(v66);
    sub_1C4EF9888();
    (*(v63 + 8))(v62, v64);
  }

  v74 = *(v0 + 232);
  v75 = *(v0 + 240);
  v76 = *(v0 + 216);
  v77 = *(v0 + 224);
  v79 = *(v0 + 176);
  v78 = *(v0 + 184);
  v138 = *(v0 + 168);
  v140 = *(v0 + 280);
  sub_1C4EF98A8();
  v80 = sub_1C4EF98E8();
  v82 = v81;
  v83 = *(v77 + 8);
  v84 = sub_1C4402B58();
  v83(v84);
  v85 = v83;
  *(v0 + 88) = v80;
  *(v0 + 96) = v82;
  sub_1C4F01178();
  sub_1C4415EA8();
  sub_1C4F02038();
  (*(v79 + 8))(v78, v138);

  if (v140 != 1)
  {

    v91 = 0;
    v93 = 0xC000000000000000;
LABEL_38:
    v95 = *(v0 + 232);
    v94 = *(v0 + 240);
    v96 = *(v0 + 216);
    v97 = *(v0 + 208);
    v98 = *(v0 + 184);
    v99 = *(v0 + 160);
    (*(*(v0 + 224) + 16))(v95, v94, v96);
    v100 = objc_allocWithZone(MEMORY[0x1E69A9EF8]);
    sub_1C4D27648(v91, v93, v95, v131, v132, v141 & 1);

    sub_1C444AF3C(v0 + 16);

    v85(v94, v96);

    sub_1C43FBCF0();
    sub_1C44693C8();

    __asm { BRAA            X2, X16 }
  }

  v86 = *MEMORY[0x1E69E9BA8];
  v87 = *MEMORY[0x1E69E9BE0];
  *(v0 + 248) = v143;
  *(v0 + 252) = v142;
  *(v0 + 256) = v145;
  *(v0 + 260) = v144;
  *(v0 + 264) = v147;
  *(v0 + 268) = v146;
  *(v0 + 272) = v149;
  *(v0 + 276) = v148;
  v88 = sandbox_extension_issue_file_to_process();
  if (!v88)
  {
    v103 = *(v0 + 112);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v104 = sub_1C4F00968();
    sub_1C4F01CD8();

    if (sub_1C442FAFC())
    {
      v106 = *(v0 + 104);
      v105 = *(v0 + 112);
      v107 = sub_1C43FD084();
      v155[0] = sub_1C43FFD34();
      *v107 = 136315138;
      *(v107 + 4) = sub_1C441D828(v106, v105, v155);
      sub_1C444B414();
      _os_log_impl(v108, v109, v110, v111, v107, 0xCu);
      sub_1C4435858();
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    v112 = MEMORY[0x1C693F6A0]();
    v113 = strerror(v112);
    if (!v113)
    {
      goto LABEL_49;
    }

    v114 = v113;

    v115 = MEMORY[0x1C693FF00](v114);
    v117 = *(v0 + 240);
    v118 = *(v0 + 216);
    v119 = *(v0 + 136);
    v121 = *(v0 + 104);
    v120 = *(v0 + 112);
    if (v116)
    {
      v122 = v115;
      v123 = v116;
      v124 = (v119 + OBJC_IVAR____TtCC24IntelligencePlatformCore7ViewXPC6Server_clientIdentifier);
      v126 = *v124;
      v125 = v124[1];
      sub_1C4D27FAC();
      sub_1C43FFB2C();
      *v127 = v121;
      v127[1] = v120;
      v127[2] = v126;
      v127[3] = v125;
      v127[4] = v122;
      v127[5] = v123;
    }

    else
    {
      v128 = (v119 + OBJC_IVAR____TtCC24IntelligencePlatformCore7ViewXPC6Server_clientIdentifier);
      v130 = *v128;
      v129 = v128[1];
      sub_1C4D27FAC();
      sub_1C43FFB2C();
      *v127 = v121;
      v127[1] = v120;
      v127[2] = v130;
      v127[3] = v129;
      *(v127 + 2) = xmmword_1C4F6DA60;
    }

    sub_1C44165C0(v127, 2);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    sub_1C444AF3C(v0 + 16);

    v85(v117, v118);
LABEL_14:
    v36 = *(v0 + 232);
    v35 = *(v0 + 240);
    v37 = *(v0 + 208);
    v38 = *(v0 + 184);
    v39 = *(v0 + 160);

    sub_1C43FBDA0();
    sub_1C44693C8();

    __asm { BRAA            X1, X16 }
  }

  v89 = v88;

  if (!__OFADD__(strlen(v89), 1))
  {
    (*(*(v0 + 152) + 104))(*(v0 + 160), *MEMORY[0x1E6969000], *(v0 + 144));
    v90 = sub_1C4410428();
    v91 = MEMORY[0x1C6938660](v90);
    v93 = v92;
    goto LABEL_38;
  }

  __break(1u);
LABEL_49:
  __break(1u);
}

uint64_t sub_1C4D22634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return sub_1C43FEB04();
}

uint64_t sub_1C4D22650()
{
  v78 = v0;
  v1 = *(v0[6] + OBJC_IVAR____TtCC24IntelligencePlatformCore7ViewXPC6Server_process);
  if (!v1)
  {
    sub_1C4D27FAC();
    v25 = sub_1C43FFB2C();
    sub_1C4426258(v25, v26);
    goto LABEL_9;
  }

  v2 = qword_1EDDFA678;
  v3 = v1;
  if (v2 != -1)
  {
    sub_1C43FFCC0();
  }

  v4 = v0[3];
  v5 = v0[4];
  v6 = sub_1C4F00978();
  sub_1C442B738(v6, qword_1EDE2DCD8);
  v7 = v3;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v8 = v5;
  v9 = sub_1C4F00968();
  sub_1C4F01CF8();

  if (sub_1C442FAFC())
  {
    v10 = v0[3];
    v66 = v0[4];
    v11 = v7;
    v12 = v0[2];
    v4 = sub_1C43FFD34();
    v13 = swift_slowAlloc();
    v70[0] = sub_1C43FC11C();
    *v4 = 136315650;
    v14 = v12;
    v7 = v11;
    v15 = sub_1C441D828(v14, v10, v70);
    sub_1C4450114(v15);
    v16 = sub_1C4F01138();
    v18 = sub_1C441D828(v16, v17, v70);

    *(v4 + 14) = v18;
    *(v4 + 22) = 2112;
    *(v4 + 24) = v11;
    *v13 = v1;
    v19 = v11;
    sub_1C444B414();
    _os_log_impl(v20, v21, v22, v23, v4, 0x20u);
    sub_1C4420C3C(v13, &qword_1EC0BDA00, &qword_1C4F10D30);
    sub_1C43FBE2C();
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C43FE9D4();
  }

  v24 = sub_1C443486C();
  if (v4)
  {
LABEL_7:

LABEL_9:
    sub_1C43FBDA0();

    return v27();
  }

  if (!v24)
  {
    v31 = v0[2];
    v32 = v0[3];
    sub_1C4D27FAC();
    v33 = sub_1C43FFB2C();
    sub_1C44339FC(v33, v34);
    *(v35 + 48) = 0;
    swift_willThrow();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    goto LABEL_7;
  }

  if (qword_1EDDF9710 != -1)
  {
    sub_1C440AD44();
  }

  v29 = v0[5];
  sub_1C4415590();

  sub_1C4CE06F0(v30, v30, v70);

  v36 = v70[3];
  if ((v75 & 1) == 0)
  {
    v67 = v7;
    v44 = v0[2];
    v45 = v0[3];

    sub_1C4D27FAC();
    v46 = sub_1C43FFB2C();
    *v47 = v44;
    v47[1] = v45;
    sub_1C440EA30(v46, v47);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v48 = sub_1C43FD018();
    sub_1C441DFEC(v48, v49);

    goto LABEL_9;
  }

  v37 = v70[2];
  v38 = v74;
  if ((v74 & 1) == 0)
  {
    v50 = v71;
    if (v71)
    {
      v51 = v72;
      v52 = v73;
      v53 = v77;
      v54 = v76;
      v55 = v7;
      v56 = v0[3];
      v68 = v0[2];

      if (v52)
      {
        v57 = v51;
      }

      else
      {
        v57 = 0x206E776F6E6B6E55;
      }

      if (v52)
      {
        v58 = v52;
      }

      else
      {
        v58 = 0xED0000726F727265;
      }

      sub_1C4D27FAC();
      sub_1C43FFB2C();
      *v59 = v68;
      v59[1] = v56;
      v59[2] = v50;
      v59[3] = v57;
      v59[4] = v58;
      v59[5] = 0;
      sub_1C44165C0(v59, 4);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      sub_1C441DFEC(v54, v53);
      goto LABEL_9;
    }

    if (v77 >> 60 == 15)
    {
      v69 = v77;
      v60 = v76;
      v61 = v7;
      v62 = v0[2];
      v63 = v0[3];

      sub_1C4D27FAC();
      v64 = sub_1C43FFB2C();
      *v65 = v62;
      v65[1] = v63;
      sub_1C440EA30(v64, v65);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      sub_1C441DFEC(v60, v69);

      goto LABEL_9;
    }
  }

  v39 = objc_allocWithZone(MEMORY[0x1E69A9EF0]);
  v40 = sub_1C4D2774C(v37, v36, v38 & 1);

  v41 = sub_1C43FD018();
  sub_1C441DFEC(v41, v42);
  sub_1C43FBCF0();

  return v43(v40);
}

__n128 sub_1C4D22BA0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  sub_1C4EFA6C8();
  sub_1C44E8494(v17);
  if (v2)
  {
  }

  else
  {
    v6 = v17[0];
    v7 = v17[1];
    v8 = v17[2];
    v9 = v17[3];
    v10 = v17[4];
    v11 = v18;
    v15 = v20;
    v16 = v19;
    v25 = v22;
    v26 = v21;
    v13 = v24;
    v14 = v23;

    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 16) = v8;
    *(a2 + 24) = v9;
    *(a2 + 32) = v10;
    *(a2 + 40) = v11;
    result = v16;
    *(a2 + 48) = v16;
    *(a2 + 64) = v15;
    v12 = v25;
    *(a2 + 80) = v26;
    *(a2 + 81) = v12;
    *(a2 + 88) = v14;
    *(a2 + 96) = v13;
  }

  return result;
}

void sub_1C4D22C8C(int a1, uint64_t a2, uint64_t a3, void (*a4)(id, void), uint64_t a5)
{
  v142 = a5;
  v141 = a1;
  v7 = sub_1C4EF9948();
  v8 = sub_1C43FCDF8(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v139 = &v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C4F01188();
  v15 = sub_1C43FCDF8(v14);
  v140 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v20 = &v116 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1C4EF98F8();
  v22 = sub_1C43FCDF8(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v116 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  MEMORY[0x1EEE9AC00](v28);
  v33 = &v116 - v32;
  v34 = (v5 + OBJC_IVAR____TtCC24IntelligencePlatformCore7ViewXPC6Server_auditToken);
  p_info = (&OBJC_METACLASS____TtCC24IntelligencePlatformCore12ViewDatabase24ViewAccessStatementCache + 32);
  if (*(v5 + OBJC_IVAR____TtCC24IntelligencePlatformCore7ViewXPC6Server_auditToken + 32))
  {
    sub_1C4D27FAC();
    v36 = sub_1C43FFB2C();
    sub_1C4426258(v36, v37);
LABEL_6:
    if (p_info[410] != -1)
    {
      sub_1C44066DC();
    }

    v49 = sub_1C4F00978();
    sub_1C43FCEE8(v49, qword_1EDE2DF70);
    v50 = v36;
    v51 = sub_1C4F00968();
    v52 = sub_1C4F01CD8();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = sub_1C43FD084();
      v54 = sub_1C43FFD34();
      v143 = v54;
      *v53 = 136315138;
      v149 = v36;
      v55 = v36;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v56 = sub_1C4F01198();
      v58 = sub_1C441D828(v56, v57, &v143);

      *(v53 + 4) = v58;
      sub_1C44057CC();
      _os_log_impl(v59, v60, v61, v62, v63, 0xCu);
      sub_1C440962C(v54);
      sub_1C43FBE2C();
      sub_1C43FE9D4();
    }

    v64 = v36;
    a4(0, v36);

    return;
  }

  v135 = v31;
  v136 = v30;
  v126 = v7;
  v137 = v29;
  v138 = v5;
  v38 = v34[6];
  v133 = v34[7];
  v134 = v38;
  v39 = v34[4];
  v131 = v34[5];
  v132 = v39;
  v40 = v34[2];
  v129 = v34[3];
  v130 = v40;
  v41 = *v34;
  v127 = v34[1];
  v128 = v41;
  if (qword_1EDDF9710 != -1)
  {
    sub_1C440AD44();
  }

  v42 = sub_1C4415590();
  v124 = v26;
  v123 = v33;
  v125 = a4;
  v43 = *(v42 + 16);
  v44 = v42;
  v45 = *MEMORY[0x1E69A9F78];
  v46 = sub_1C4F01138();
  v48 = v47;

  sub_1C4D23658(v46, v48);
  v122 = v44;

  v65 = *(v43 + OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_pool);
  sub_1C445E5B0(sub_1C4BAFBD8, 0);
  if (v66)
  {
    v67 = v66;
    sub_1C4BAFEA8();
    v117 = v68;
    v121 = v67;
    v119 = v69;
    v120 = v43;
    v80 = objc_autoreleasePoolPush();
    sub_1C4436790();
    v81 = v136;
    sub_1C4EF9888();
    objc_autoreleasePoolPop(v80);
    v82 = v123;
    sub_1C4EF9888();
    v118 = *(v135 + 8);
    v118(v81, v137);
    sub_1C4EF98A8();
    v143 = sub_1C4EF98E8();
    v144 = v83;
    sub_1C4F01178();
    sub_1C4415EA8();
    sub_1C4F02038();
    (*(v140 + 8))(v20, v14);

    if ((v141 & 1) == 0)
    {

      v89 = 0;
      v91 = 0xC000000000000000;
      goto LABEL_25;
    }

    v84 = *MEMORY[0x1E69E9BA8];
    v85 = *MEMORY[0x1E69E9BE0];
    v143 = __PAIR64__(v127, v128);
    v144 = __PAIR64__(v129, v130);
    v145 = v132;
    v146 = v131;
    v147 = v134;
    v148 = v133;
    v86 = sandbox_extension_issue_file_to_process();
    if (v86)
    {
      v87 = v86;

      if (!__OFADD__(strlen(v87), 1))
      {
        (*(v10 + 104))(v139, *MEMORY[0x1E6969000], v126);
        v88 = sub_1C4410428();
        v89 = MEMORY[0x1C6938660](v88);
        v91 = v90;
LABEL_25:
        v92 = v136;
        v93 = v137;
        (*(v135 + 16))(v136, v82, v137);
        v94 = objc_allocWithZone(MEMORY[0x1E69A9EF8]);
        sub_1C44344B8(v89, v91);
        v95 = sub_1C4D27648(v89, v91, v92, v117, v119, 0);
        v125(v95, 0);

        sub_1C4412914();

        sub_1C4434000(v89, v91);
        v96 = v118;
        v118(v124, v93);
        v96(v82, v93);
        return;
      }

      __break(1u);
    }

    else if (qword_1EDDFECD0 == -1)
    {
LABEL_27:
      v97 = sub_1C4F00978();
      sub_1C43FCEE8(v97, qword_1EDE2DF70);
      v98 = sub_1C4F00968();
      v99 = sub_1C4F01CD8();
      if (sub_1C43FCEA4(v99))
      {
        *sub_1C43FCED0() = 0;
        sub_1C44011B0(&dword_1C43F8000, v100, v101, "Could not create token for view features database");
        sub_1C43FBE2C();
      }

      v102 = MEMORY[0x1C693F6A0]();
      v103 = strerror(v102);
      if (!v103)
      {
        __break(1u);
        return;
      }

      v104 = v103;

      v105 = MEMORY[0x1C693FF00](v104);
      if (v106)
      {
        v107 = v105;
        v108 = v106;
        v109 = *(v138 + OBJC_IVAR____TtCC24IntelligencePlatformCore7ViewXPC6Server_clientIdentifier);
        v110 = *(v138 + OBJC_IVAR____TtCC24IntelligencePlatformCore7ViewXPC6Server_clientIdentifier + 8);
        sub_1C4D27FAC();
        v36 = sub_1C43FFB2C();
        *v111 = xmmword_1C4F6DA70;
        *(v111 + 16) = v109;
        *(v111 + 24) = v110;
        *(v111 + 32) = v107;
        *(v111 + 40) = v108;
      }

      else
      {
        v113 = *(v138 + OBJC_IVAR____TtCC24IntelligencePlatformCore7ViewXPC6Server_clientIdentifier);
        v112 = *(v138 + OBJC_IVAR____TtCC24IntelligencePlatformCore7ViewXPC6Server_clientIdentifier + 8);
        sub_1C4D27FAC();
        v36 = sub_1C43FFB2C();
        *v111 = xmmword_1C4F6DA70;
        *(v111 + 16) = v113;
        *(v111 + 24) = v112;
        *(v111 + 32) = xmmword_1C4F6DA60;
      }

      sub_1C44165C0(v111, 2);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4412914();

      v114 = v137;
      v115 = v118;
      v118(v124, v137);
      v115(v82, v114);
      a4 = v125;
      p_info = &OBJC_METACLASS____TtCC24IntelligencePlatformCore12ViewDatabase24ViewAccessStatementCache.info;
      goto LABEL_6;
    }

    sub_1C44066DC();
    goto LABEL_27;
  }

  v70 = v125;
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0();
  }

  v71 = sub_1C4F00978();
  sub_1C43FCEE8(v71, qword_1EDE2DCD8);
  v72 = sub_1C4F00968();
  v73 = sub_1C4F01CD8();
  if (sub_1C43FCEA4(v73))
  {
    v74 = sub_1C43FCED0();
    sub_1C43FBD24(v74);
    sub_1C44057CC();
    _os_log_impl(v75, v76, v77, v78, v79, 2u);
    sub_1C43FE9D4();
  }

  v70(0, 0);
  sub_1C4412914();
}

void sub_1C4D23658(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + OBJC_IVAR____TtCC24IntelligencePlatformCore7ViewXPC6Server_entitledViewNames);
  if (v6 && (v23[0] = a1, v23[1] = a2, MEMORY[0x1EEE9AC00](a1), v22[2] = v23, _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0(), v7 = sub_1C44CE068(sub_1C44CE790, v22, v6), , v7))
  {
    if (qword_1EDDFA678 != -1)
    {
      swift_once();
    }

    v8 = sub_1C4F00978();
    sub_1C442B738(v8, qword_1EDE2DCD8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v9 = sub_1C4F00968();
    v10 = sub_1C4F01CF8();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v23[0] = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_1C441D828(a1, a2, v23);
      _os_log_impl(&dword_1C43F8000, v9, v10, "ViewXPC: entitlements contained %s", v11, 0xCu);
      sub_1C440962C(v12);
      MEMORY[0x1C6942830](v12, -1, -1);
      MEMORY[0x1C6942830](v11, -1, -1);
    }
  }

  else
  {
    if (qword_1EDDFA678 != -1)
    {
      swift_once();
    }

    v13 = sub_1C4F00978();
    sub_1C442B738(v13, qword_1EDE2DCD8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v14 = sub_1C4F00968();
    v15 = sub_1C4F01CD8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23[0] = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_1C441D828(a1, a2, v23);
      _os_log_impl(&dword_1C43F8000, v14, v15, "ViewXPC: client not authorized for %s", v16, 0xCu);
      sub_1C440962C(v17);
      MEMORY[0x1C6942830](v17, -1, -1);
      MEMORY[0x1C6942830](v16, -1, -1);
    }

    v18 = v3 + OBJC_IVAR____TtCC24IntelligencePlatformCore7ViewXPC6Server_clientIdentifier;
    v20 = *(v3 + OBJC_IVAR____TtCC24IntelligencePlatformCore7ViewXPC6Server_clientIdentifier);
    v19 = *(v18 + 8);
    sub_1C4D27FAC();
    swift_allocError();
    *v21 = a1;
    *(v21 + 8) = a2;
    *(v21 + 16) = v20;
    *(v21 + 24) = v19;
    *(v21 + 32) = 0;
    *(v21 + 40) = 0;
    *(v21 + 48) = 1;
    swift_willThrow();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

uint64_t ViewXPC.Server.reportUnknownError(forViewName:useCase:config:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return sub_1C43FEB04();
}

uint64_t sub_1C4D239B8()
{
  sub_1C43FEAEC();
  v2 = sub_1C443486C();
  if (v0)
  {
    v7 = sub_1C4409E50();

    return v8(v7);
  }

  else
  {
    if (v2)
    {
      sub_1C4EFA6C8();
      v4 = v3;
    }

    else
    {
      v4 = v1[3];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v5 = v1[2];
    }

    v1[7] = v4;
    if (qword_1EDDF9710 != -1)
    {
      sub_1C440AD44();
    }

    v6 = v1[5];
    v1[8] = sub_1C4415590();
    v10 = swift_task_alloc();
    v1[9] = v10;
    *v10 = v1;
    v10[1] = sub_1C4D23B10;

    return sub_1C4CE2394();
  }
}

uint64_t sub_1C4D23B10()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  sub_1C43FBDAC();
  *v8 = v7;
  *(v3 + 80) = v0;

  if (!v0)
  {
    v9 = *(v3 + 56);
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C4D23C10()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 64);

  sub_1C43FBCF0();

  return v2(1);
}

uint64_t sub_1C4D23C70()
{
  sub_1C43FBCD4();
  v2 = v0[7];
  v1 = v0[8];

  v3 = v0[10];
  v4 = sub_1C4409E50();

  return v5(v4);
}

uint64_t ViewXPC.Server.reportSQLiteError(forViewName:sqliteErrorCode:useCase:config:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return sub_1C43FEB04();
}

uint64_t sub_1C4D23CF0()
{
  sub_1C43FEAEC();
  v1 = v0[7];
  if (sub_1C4D215A4(v0[2], v0[3], v0[5]))
  {
    sub_1C4EFA6C8();
    v3 = v2;
  }

  else
  {
    v3 = v0[3];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v4 = v0[2];
  }

  v0[8] = v3;
  if (qword_1EDDF9710 != -1)
  {
    sub_1C440AD44();
  }

  v5 = v0[6];
  v0[9] = sub_1C4415590();
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_1C4D23E58;
  v7 = v0[4];

  return sub_1C4CE2394();
}

uint64_t sub_1C4D23E58()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  sub_1C43FBDAC();
  *v8 = v7;
  *(v3 + 88) = v0;

  if (!v0)
  {
    v9 = *(v3 + 64);
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C4D23F58()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 72);

  sub_1C43FBCF0();

  return v2(1);
}

uint64_t sub_1C4D23FB8()
{
  sub_1C43FBCD4();
  v2 = v0[8];
  v1 = v0[9];

  v3 = v0[11];
  v4 = sub_1C4409E50();

  return v5(v4);
}

uint64_t ViewXPC.Server.performUpdate(forViewNames:useCase:includeDependencies:)()
{
  sub_1C43FBCD4();
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  *(v1 + 96) = v3;
  *(v1 + 40) = v4;
  v5 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  *(v1 + 64) = v5;
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64);
  *(v1 + 72) = sub_1C43FBE7C();
  v8 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C4D240AC()
{
  sub_1C4404D98();
  v31 = v0;
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0();
  }

  v1 = *(v0 + 40);
  v2 = sub_1C4F00978();
  sub_1C43FCEE8(v2, qword_1EDE2DCD8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v3 = sub_1C4F00968();
  v4 = sub_1C4F01CF8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 40);
    v6 = sub_1C43FD084();
    v7 = sub_1C43FFD34();
    v30 = v7;
    *v6 = 136315138;
    v8 = MEMORY[0x1C6940380](v5, MEMORY[0x1E69E6158]);
    v10 = sub_1C441D828(v8, v9, &v30);

    *(v6 + 4) = v10;
    sub_1C4402B48();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    sub_1C440962C(v7);
    sub_1C43FBE2C();
    sub_1C43FE9D4();
  }

  if (qword_1EDDF0C00 != -1)
  {
    sub_1C441AA70();
  }

  v16 = *(v0 + 72);
  sub_1C442B738(*(v0 + 64), qword_1EDDF0C10);
  sub_1C43FC598();
  v17 = sub_1C43FBC98();
  sub_1C446C964(v17, v18, v19, v20);
  v21 = type metadata accessor for Configuration();
  result = sub_1C43FD9F0(v21);
  if (v23)
  {
    __break(1u);
  }

  else
  {
    v24 = swift_task_alloc();
    *(v0 + 80) = v24;
    *v24 = v0;
    v24[1] = sub_1C4D242AC;
    v25 = *(v0 + 72);
    v26 = *(v0 + 48);
    v27 = *(v0 + 56);
    v28 = *(v0 + 96);
    v29 = *(v0 + 40);

    return sub_1C4D20F08(v29, v26, v28, v25);
  }

  return result;
}

uint64_t sub_1C4D242AC()
{
  sub_1C43FCF70();
  v3 = v2;
  sub_1C43FBDE4();
  v5 = v4;
  sub_1C44001F0();
  *v6 = v5;
  v8 = *(v7 + 80);
  v9 = *v1;
  sub_1C43FBDAC();
  *v10 = v9;
  *(v5 + 88) = v0;

  if (v0)
  {
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  else
  {
    sub_1C4467948(*(v5 + 72));

    sub_1C43FBCF0();

    return v14(v3 & 1);
  }
}

uint64_t sub_1C4D243EC()
{
  sub_1C43FBCD4();
  sub_1C4467948(*(v0 + 72));

  sub_1C43FBCF0();
  v2 = *(v0 + 88);

  return v1(0);
}

uint64_t sub_1C4D244F8(int a1, void *a2, int a3, void *aBlock, void *a5)
{
  v5[2] = a2;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  v5[5] = sub_1C4F01678();
  v8 = a2;
  a5;
  v9 = swift_task_alloc();
  v5[6] = v9;
  *v9 = v5;
  v9[1] = sub_1C4D245EC;

  return ViewXPC.Server.performUpdate(forViewNames:useCase:includeDependencies:)();
}

uint64_t sub_1C4D245EC()
{
  sub_1C4404D98();
  v2 = v0;
  v4 = v3;
  v5 = *v1;
  v6 = *v1;
  sub_1C43FBDAC();
  *v7 = v6;
  v8 = v5[6];
  v9 = v5[5];
  v10 = v5[3];
  v11 = v5[2];
  v12 = *v1;
  *v7 = *v1;

  if (v2)
  {
    v13 = sub_1C4EF9798();

    v14 = sub_1C4413080();
    v15(v14, 0, v13);
  }

  else
  {
    (*(v5[4] + 16))(v5[4], v4 & 1, 0);
  }

  _Block_release(v6[4]);
  v16 = v12[1];

  return v16();
}

uint64_t ViewXPC.Server.accessToken(viewName:isSandboxed:useCase:)()
{
  sub_1C43FBCD4();
  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  *(v1 + 104) = v3;
  *(v1 + 40) = v4;
  *(v1 + 48) = v5;
  v6 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  *(v1 + 72) = v6;
  sub_1C43FBD18(v6);
  v8 = *(v7 + 64);
  *(v1 + 80) = sub_1C43FBE7C();
  v9 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C4D24834()
{
  v38 = v0;
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0();
  }

  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = sub_1C4F00978();
  sub_1C43FCEE8(v3, qword_1EDE2DCD8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v4 = v1;
  v5 = sub_1C4F00968();
  LOBYTE(v1) = sub_1C4F01CF8();

  if (os_log_type_enabled(v5, v1))
  {
    v7 = *(v0 + 48);
    v6 = *(v0 + 56);
    v8 = *(v0 + 104);
    v9 = *(v0 + 40);
    v10 = swift_slowAlloc();
    v37 = sub_1C43FC11C();
    *v10 = 136315650;
    v11 = sub_1C43FD018();
    *(v10 + 4) = sub_1C441D828(v11, v12, v13);
    *(v10 + 12) = 1024;
    *(v10 + 14) = v8;
    *(v10 + 18) = 2080;
    v14 = sub_1C4F01138();
    v16 = sub_1C441D828(v14, v15, &v37);

    *(v10 + 20) = v16;
    sub_1C4402B48();
    _os_log_impl(v17, v18, v19, v20, v21, 0x1Cu);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C43FE9D4();
  }

  if (qword_1EDDF0C00 != -1)
  {
    sub_1C441AA70();
  }

  v22 = *(v0 + 80);
  sub_1C442B738(*(v0 + 72), qword_1EDDF0C10);
  sub_1C43FC598();
  v23 = sub_1C43FBC98();
  sub_1C446C964(v23, v24, v25, v26);
  v27 = type metadata accessor for Configuration();
  result = sub_1C43FD9F0(v27);
  if (v29)
  {
    __break(1u);
  }

  else
  {
    v30 = swift_task_alloc();
    *(v0 + 88) = v30;
    *v30 = v0;
    v30[1] = sub_1C4D24A88;
    v31 = *(v0 + 80);
    v32 = *(v0 + 56);
    v33 = *(v0 + 64);
    v34 = *(v0 + 104);
    v36 = *(v0 + 40);
    v35 = *(v0 + 48);

    return sub_1C4D218E0();
  }

  return result;
}

uint64_t sub_1C4D24A88()
{
  sub_1C43FCF70();
  v3 = v2;
  sub_1C43FBDE4();
  v5 = v4;
  sub_1C44001F0();
  *v6 = v5;
  v8 = *(v7 + 88);
  v9 = *v1;
  sub_1C43FBDAC();
  *v10 = v9;
  *(v5 + 96) = v0;

  if (v0)
  {
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  else
  {
    sub_1C4467948(*(v5 + 80));

    sub_1C43FBCF0();

    return v14(v3);
  }
}

uint64_t sub_1C4D24C6C(int a1, int a2, void *a3, void *aBlock, void *a5)
{
  v5[2] = a3;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  sub_1C4F01138();
  v5[5] = v8;
  v9 = a3;
  a5;
  v10 = swift_task_alloc();
  v5[6] = v10;
  *v10 = v5;
  v10[1] = sub_1C4D28144;

  return ViewXPC.Server.accessToken(viewName:isSandboxed:useCase:)();
}

uint64_t ViewXPC.Server.accessInfo(viewName:useCase:)()
{
  sub_1C43FBCD4();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v5 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v1[9] = v5;
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64);
  v1[10] = sub_1C43FBE7C();
  v8 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C4D24DEC()
{
  sub_1C4404D98();
  v36 = v0;
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0();
  }

  v2 = v0[6];
  v1 = v0[7];
  v3 = sub_1C4F00978();
  sub_1C43FCEE8(v3, qword_1EDE2DCD8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v4 = v1;
  v5 = sub_1C4F00968();
  LOBYTE(v1) = sub_1C4F01CF8();

  if (os_log_type_enabled(v5, v1))
  {
    v7 = v0[6];
    v6 = v0[7];
    v8 = v0[5];
    v9 = swift_slowAlloc();
    v35 = sub_1C43FC11C();
    *v9 = 136315394;
    v10 = sub_1C43FD018();
    v13 = sub_1C441D828(v10, v11, v12);
    sub_1C4450114(v13);
    v14 = sub_1C4F01138();
    v16 = sub_1C441D828(v14, v15, &v35);

    *(v9 + 14) = v16;
    sub_1C4402B48();
    _os_log_impl(v17, v18, v19, v20, v21, 0x16u);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C43FE9D4();
  }

  if (qword_1EDDF0C00 != -1)
  {
    sub_1C441AA70();
  }

  v22 = v0[10];
  sub_1C442B738(v0[9], qword_1EDDF0C10);
  sub_1C43FC598();
  v23 = sub_1C43FBC98();
  sub_1C446C964(v23, v24, v25, v26);
  v27 = type metadata accessor for Configuration();
  result = sub_1C43FD9F0(v27);
  if (v29)
  {
    __break(1u);
  }

  else
  {
    v30 = swift_task_alloc();
    v0[11] = v30;
    *v30 = v0;
    v31 = sub_1C4440130(v30);

    return sub_1C4D22634(v31, v32, v33, v34);
  }

  return result;
}

uint64_t sub_1C4D25004()
{
  sub_1C43FCF70();
  v3 = v2;
  sub_1C43FBDE4();
  v5 = v4;
  sub_1C44001F0();
  *v6 = v5;
  v8 = *(v7 + 88);
  v9 = *v1;
  sub_1C43FBDAC();
  *v10 = v9;
  *(v5 + 96) = v0;

  if (v0)
  {
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  else
  {
    sub_1C4467948(*(v5 + 80));

    sub_1C43FBCF0();

    return v14(v3);
  }
}

uint64_t sub_1C4D25144()
{
  sub_1C43FBCD4();
  sub_1C4467948(*(v0 + 80));

  sub_1C43FBDA0();
  v2 = *(v0 + 96);

  return v1();
}

uint64_t sub_1C4D251CC(int a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  sub_1C4F01138();
  v4[5] = v7;
  v8 = a2;
  a4;
  v9 = swift_task_alloc();
  v4[6] = v9;
  *v9 = v4;
  v9[1] = sub_1C4D252B8;

  return ViewXPC.Server.accessInfo(viewName:useCase:)();
}

uint64_t sub_1C4D252B8()
{
  sub_1C4404D98();
  v2 = v0;
  v4 = v3;
  v5 = *v1;
  v6 = *(*v1 + 48);
  v7 = *(*v1 + 40);
  v8 = *(*v1 + 24);
  v9 = *(*v1 + 16);
  v10 = *v1;
  sub_1C43FBDAC();
  *v11 = v10;

  v12 = *(v5 + 32);
  if (v2)
  {
    v13 = sub_1C4EF9798();

    v14 = sub_1C4413080();
    v15(v14, 0, v13);

    _Block_release(v12);
  }

  else
  {
    v16 = sub_1C4413080();
    v17(v16, v4, 0);
    _Block_release(v12);
  }

  v18 = *(v10 + 8);

  return v18();
}

void sub_1C4D25478(char a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v6 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17[-v8];
  v18 = a4;
  if (qword_1EDDFA678 != -1)
  {
    swift_once();
  }

  v10 = sub_1C4F00978();
  sub_1C442B738(v10, qword_1EDE2DCD8);
  v11 = sub_1C4F00968();
  v12 = sub_1C4F01CF8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1C43F8000, v11, v12, "ViewXPC: accessTokenForFeatures", v13, 2u);
    MEMORY[0x1C6942830](v13, -1, -1);
  }

  if (qword_1EDDF0C00 != -1)
  {
    swift_once();
  }

  v14 = sub_1C442B738(v6, qword_1EDDF0C10);
  swift_beginAccess();
  sub_1C446C964(v14, v9, &unk_1EC0B9610, &unk_1C4F0F2E0);
  v15 = type metadata accessor for Configuration();
  if (sub_1C44157D4(v9, 1, v15) == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1C4D22C8C(a1 & 1, v16, v9, sub_1C4D27D14, v17);
    sub_1C4467948(v9);
    _Block_release(a4);
  }
}

uint64_t ViewXPC.Server.accessTokenForFeatures(isSandboxed:useCase:completion:)(char a1, uint64_t a2, void (*a3)(id, void), uint64_t a4)
{
  v7 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0(v7);
  v9 = *(v8 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0();
  }

  v13 = sub_1C4F00978();
  sub_1C43FCEE8(v13, qword_1EDE2DCD8);
  v14 = sub_1C4F00968();
  v15 = sub_1C4F01CF8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = sub_1C43FCED0();
    *v16 = 0;
    _os_log_impl(&dword_1C43F8000, v14, v15, "ViewXPC: accessTokenForFeatures", v16, 2u);
    sub_1C43FBE2C();
  }

  if (qword_1EDDF0C00 != -1)
  {
    sub_1C441AA70();
  }

  sub_1C43FCEE8(v7, qword_1EDDF0C10);
  swift_beginAccess();
  sub_1C446C964(v14, v12, &unk_1EC0B9610, &unk_1C4F0F2E0);
  v17 = type metadata accessor for Configuration();
  result = sub_1C44157D4(v12, 1, v17);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1C4D22C8C(a1 & 1, v19, v12, a3, a4);
    return sub_1C4467948(v12);
  }

  return result;
}

void sub_1C4D258F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1C4EF9798();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t ViewXPC.Server.reportUnknownError(forViewName:useCase:)()
{
  sub_1C43FBCD4();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v5 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v1[9] = v5;
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64);
  v1[10] = sub_1C43FBE7C();
  v8 = sub_1C4F00978();
  v1[11] = v8;
  sub_1C43FCF7C(v8);
  v1[12] = v9;
  v11 = *(v10 + 64);
  v1[13] = sub_1C43FBE7C();
  v12 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1C4D25A38()
{
  v32 = v0;
  v1 = v0[13];
  v2 = v0[6];
  sub_1C4F00178();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v3 = sub_1C4F00968();
  sub_1C4F01CF8();

  v4 = sub_1C442FAFC();
  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[11];
  if (v4)
  {
    v9 = v0[5];
    v8 = v0[6];
    v10 = sub_1C43FD084();
    v31 = sub_1C43FFD34();
    *v10 = 136315138;
    *(v10 + 4) = sub_1C441D828(v9, v8, &v31);
    sub_1C444B414();
    _os_log_impl(v11, v12, v13, v14, v10, 0xCu);
    sub_1C4435858();
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  v15 = *(v6 + 8);
  v16 = sub_1C4402B58();
  v17(v16);
  if (qword_1EDDF0C00 != -1)
  {
    sub_1C441AA70();
  }

  v18 = v0[10];
  sub_1C442B738(v0[9], qword_1EDDF0C10);
  sub_1C43FC598();
  v19 = sub_1C43FBC98();
  sub_1C446C964(v19, v20, v21, v22);
  v23 = type metadata accessor for Configuration();
  result = sub_1C43FD9F0(v23);
  if (v25)
  {
    __break(1u);
  }

  else
  {
    v26 = swift_task_alloc();
    v0[14] = v26;
    *v26 = v0;
    v27 = sub_1C4440130(v26);

    return ViewXPC.Server.reportUnknownError(forViewName:useCase:config:)(v27, v28, v29, v30);
  }

  return result;
}

uint64_t sub_1C4D25C00()
{
  sub_1C43FCF70();
  v3 = v2;
  sub_1C43FBDE4();
  v5 = v4;
  sub_1C44001F0();
  *v6 = v5;
  v8 = *(v7 + 112);
  v9 = *v1;
  sub_1C43FBDAC();
  *v10 = v9;
  v5[15] = v0;

  if (v0)
  {
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  else
  {
    v14 = v5[13];
    sub_1C4467948(v5[10]);

    sub_1C43FBCF0();

    return v15(v3 & 1);
  }
}

uint64_t sub_1C4D25D4C()
{
  sub_1C43FBCD4();
  v1 = v0[13];
  sub_1C4467948(v0[10]);

  sub_1C43FBCF0();
  v3 = v0[15];

  return v2(0);
}

uint64_t sub_1C4D25DE4(void *a1, int a2, void *a3, void *a4, void *aBlock)
{
  v8 = _Block_copy(aBlock);
  sub_1C442FFD4();
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = a1;
  v10 = a3;
  v11 = a4;
  v12 = a1;
  v13 = sub_1C43FBC98();

  return sub_1C446D134(v13, v14);
}

uint64_t sub_1C4D25E64(int a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  sub_1C4F01138();
  v4[5] = v7;
  v8 = a2;
  a4;
  v9 = swift_task_alloc();
  v4[6] = v9;
  *v9 = v4;
  v9[1] = sub_1C4D28158;

  return ViewXPC.Server.reportUnknownError(forViewName:useCase:)();
}

uint64_t ViewXPC.Server.reportSQLiteError(forViewName:sqliteErrorCode:useCase:)()
{
  sub_1C43FBCD4();
  v1[8] = v2;
  v1[9] = v0;
  v1[6] = v3;
  v1[7] = v4;
  v1[5] = v5;
  v6 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v1[10] = v6;
  sub_1C43FBD18(v6);
  v8 = *(v7 + 64);
  v1[11] = sub_1C43FBE7C();
  v9 = sub_1C4F00978();
  v1[12] = v9;
  sub_1C43FCF7C(v9);
  v1[13] = v10;
  v12 = *(v11 + 64);
  v1[14] = sub_1C43FBE7C();
  v13 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1C4D2602C()
{
  v35 = v0;
  v1 = v0[14];
  v2 = v0[6];
  sub_1C4F00178();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v3 = sub_1C4F00968();
  sub_1C4F01CF8();

  v4 = sub_1C442FAFC();
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[12];
  if (v4)
  {
    v8 = v0[6];
    v33 = v0[7];
    v9 = v0[5];
    v10 = swift_slowAlloc();
    v34 = sub_1C43FFD34();
    *v10 = 136315394;
    *(v10 + 4) = sub_1C441D828(v9, v8, &v34);
    *(v10 + 12) = 2048;
    *(v10 + 14) = v33;
    sub_1C444B414();
    _os_log_impl(v11, v12, v13, v14, v10, 0x16u);
    sub_1C4435858();
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  v15 = *(v6 + 8);
  v16 = sub_1C4402B58();
  v17(v16);
  if (qword_1EDDF0C00 != -1)
  {
    sub_1C441AA70();
  }

  v18 = v0[11];
  sub_1C442B738(v0[10], qword_1EDDF0C10);
  sub_1C43FC598();
  v19 = sub_1C43FBC98();
  sub_1C446C964(v19, v20, v21, v22);
  v23 = type metadata accessor for Configuration();
  result = sub_1C43FD9F0(v23);
  if (v25)
  {
    __break(1u);
  }

  else
  {
    v26 = swift_task_alloc();
    v0[15] = v26;
    *v26 = v0;
    v26[1] = sub_1C4D2622C;
    v27 = v0[11];
    v28 = v0[8];
    v29 = v0[9];
    v30 = v0[6];
    v31 = v0[7];
    v32 = v0[5];

    return ViewXPC.Server.reportSQLiteError(forViewName:sqliteErrorCode:useCase:config:)(v32, v30, v31, v28, v27);
  }

  return result;
}

uint64_t sub_1C4D2622C()
{
  sub_1C43FCF70();
  v3 = v2;
  sub_1C43FBDE4();
  v5 = v4;
  sub_1C44001F0();
  *v6 = v5;
  v8 = *(v7 + 120);
  v9 = *v1;
  sub_1C43FBDAC();
  *v10 = v9;
  v5[16] = v0;

  if (v0)
  {
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  else
  {
    v14 = v5[14];
    sub_1C4467948(v5[11]);

    sub_1C43FBCF0();

    return v15(v3 & 1);
  }
}

uint64_t sub_1C4D26378()
{
  sub_1C43FBCD4();
  v1 = v0[14];
  sub_1C4467948(v0[11]);

  sub_1C43FBCF0();
  v3 = v0[16];

  return v2(0);
}

uint64_t sub_1C4D26490(int a1, int a2, void *a3, void *aBlock, void *a5)
{
  v5[2] = a3;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  sub_1C4F01138();
  v5[5] = v8;
  v9 = a3;
  a5;
  v10 = swift_task_alloc();
  v5[6] = v10;
  *v10 = v5;
  v10[1] = sub_1C4D28158;

  return ViewXPC.Server.reportSQLiteError(forViewName:sqliteErrorCode:useCase:)();
}

id sub_1C4D26584(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1C4F01108();

  v4 = [v2 initWithType:a1 name:v3];

  return v4;
}

id ViewXPC.Server.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ViewXPC.Server.init()()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtCC24IntelligencePlatformCore7ViewXPC6Server_auditToken];
  *v2 = 0u;
  *(v2 + 1) = 0u;
  v2[32] = 1;
  *&v0[OBJC_IVAR____TtCC24IntelligencePlatformCore7ViewXPC6Server_process] = 0;
  v3 = &v0[OBJC_IVAR____TtCC24IntelligencePlatformCore7ViewXPC6Server_clientIdentifier];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v0[OBJC_IVAR____TtCC24IntelligencePlatformCore7ViewXPC6Server_entitledViewNames] = 0;
  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1C4D26738(uint64_t a1, void *a2)
{
  v3 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0(v3);
  v5 = *(v4 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v65 - v7;
  if (qword_1EDDF0C00 != -1)
  {
    sub_1C441AA70();
  }

  v9 = sub_1C442B738(v3, qword_1EDDF0C10);
  swift_beginAccess();
  sub_1C446C964(v9, v8, &unk_1EC0B9610, &unk_1C4F0F2E0);
  v10 = type metadata accessor for Configuration();
  result = sub_1C44157D4(v8, 1, v10);
  if (result != 1)
  {
    v12 = &v8[*(v10 + 20)];
    v13 = *v12;
    v14 = *(v12 + 1);
    sub_1C4467948(v8);
    if (qword_1EDDFEC88 != -1)
    {
      swift_once();
    }

    if ((xmmword_1EDDFEC90 & ~v13) == 0 && (*(&xmmword_1EDDFEC90 + 1) & v14) == *(&xmmword_1EDDFEC90 + 1))
    {
      if (qword_1EDDFA678 != -1)
      {
        sub_1C43FFCC0();
      }

      v22 = sub_1C4F00978();
      sub_1C43FCEE8(v22, qword_1EDE2DCD8);
      v23 = sub_1C4F00968();
      v24 = sub_1C4F01CF8();
      if (sub_1C43FCEA4(v24))
      {
        v25 = sub_1C43FCED0();
        sub_1C43FBD24(v25);
        sub_1C44057CC();
        _os_log_impl(v26, v27, v28, v29, v30, 2u);
        sub_1C43FE9D4();
      }
    }

    else
    {
      v16 = a2;
      if (sub_1C446874C())
      {
        if (qword_1EDDFA678 != -1)
        {
          sub_1C43FFCC0();
        }

        v17 = sub_1C4F00978();
        sub_1C43FCEE8(v17, qword_1EDE2DCD8);
        v18 = a2;
        v19 = sub_1C4F00968();
        v20 = sub_1C4F01CF8();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 67109120;
          *(v21 + 4) = [v18 processIdentifier];

          _os_log_impl(&dword_1C43F8000, v19, v20, "ViewXPC connection from %d", v21, 8u);
          sub_1C43FBE2C();
        }

        else
        {

          v19 = v18;
        }

        v31 = [objc_opt_self() interfaceWithProtocol_];
        [v18 setExportedInterface:v31];

        v32 = [objc_allocWithZone(type metadata accessor for ViewXPC.Server()) init];
        [v18 auditToken];
        v33 = v67;
        v34 = &v32[OBJC_IVAR____TtCC24IntelligencePlatformCore7ViewXPC6Server_auditToken];
        *v34 = aBlock;
        *(v34 + 1) = v33;
        v34[32] = 0;
        v35 = [objc_opt_self() processWithXPCConnection_];
        v36 = *&v32[OBJC_IVAR____TtCC24IntelligencePlatformCore7ViewXPC6Server_process];
        *&v32[OBJC_IVAR____TtCC24IntelligencePlatformCore7ViewXPC6Server_process] = v35;

        v37 = sub_1C4F01108();
        v38 = [v18 valueForEntitlement:v37];

        if (v38)
        {
          sub_1C4F02078();
          swift_unknownObjectRelease();
        }

        else
        {
          aBlock = 0u;
          v67 = 0u;
        }

        v72[0] = aBlock;
        v72[1] = v67;
        sub_1C446C964(v72, &aBlock, &qword_1EC0BCD10, &qword_1C4F0C8C0);
        v39 = &unk_1C4F0C000;
        if (*(&v67 + 1))
        {
          if (swift_dynamicCast())
          {
            v40 = v70;
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v65[0] = v16;
            v41 = sub_1C4F00968();
            v42 = sub_1C4F01CF8();

            if (os_log_type_enabled(v41, v42))
            {
              v43 = sub_1C43FD084();
              *&aBlock = sub_1C43FFD34();
              *v43 = 136315138;
              *(v43 + 4) = sub_1C441D828(v40, *(&v40 + 1), &aBlock);
              _os_log_impl(&dword_1C43F8000, v41, v42, "ViewXPC.Delegate: clientIdentifier: %s", v43, 0xCu);
              sub_1C4435858();
              sub_1C43FBE2C();
              sub_1C43FBE2C();
            }

            v44 = *&v32[OBJC_IVAR____TtCC24IntelligencePlatformCore7ViewXPC6Server_clientIdentifier + 8];
            *&v32[OBJC_IVAR____TtCC24IntelligencePlatformCore7ViewXPC6Server_clientIdentifier] = v40;

            v16 = v65[0];
            v39 = &unk_1C4F0C000;
          }
        }

        else
        {
          sub_1C4420C3C(&aBlock, &qword_1EC0BCD10, &qword_1C4F0C8C0);
        }

        v45 = sub_1C4F01108();
        v46 = [v18 valueForEntitlement:v45];

        if (v46)
        {
          sub_1C4F02078();
          swift_unknownObjectRelease();
        }

        else
        {
          v70 = 0u;
          v71 = 0u;
        }

        aBlock = v70;
        v67 = v71;
        if (*(&v71 + 1))
        {
          sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
          if (swift_dynamicCast())
          {
            v47 = v65[1];
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v48 = sub_1C4F00968();
            v49 = sub_1C4F01CF8();

            if (os_log_type_enabled(v48, v49))
            {
              v50 = sub_1C43FD084();
              v65[0] = v16;
              v51 = v39;
              v52 = v50;
              v53 = sub_1C43FFD34();
              *&aBlock = v53;
              *v52 = v51[458];
              v54 = MEMORY[0x1C6940380](v47, MEMORY[0x1E69E6158]);
              v56 = sub_1C441D828(v54, v55, &aBlock);

              *(v52 + 4) = v56;
              _os_log_impl(&dword_1C43F8000, v48, v49, "ViewXPC.Delegate: entitledViewNames: %s", v52, 0xCu);
              sub_1C440962C(v53);
              sub_1C43FBE2C();
              sub_1C43FBE2C();
            }

            v57 = *&v32[OBJC_IVAR____TtCC24IntelligencePlatformCore7ViewXPC6Server_entitledViewNames];
            *&v32[OBJC_IVAR____TtCC24IntelligencePlatformCore7ViewXPC6Server_entitledViewNames] = v47;
          }
        }

        else
        {
          sub_1C4420C3C(&aBlock, &qword_1EC0BCD10, &qword_1C4F0C8C0);
        }

        if (*&v32[OBJC_IVAR____TtCC24IntelligencePlatformCore7ViewXPC6Server_clientIdentifier + 8] || *&v32[OBJC_IVAR____TtCC24IntelligencePlatformCore7ViewXPC6Server_entitledViewNames])
        {
          [v18 setExportedObject:v32];
          v68 = sub_1C4D27004;
          v69 = 0;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          *&v67 = sub_1C4833DD0;
          *(&v67 + 1) = &unk_1F440C518;
          v58 = _Block_copy(&aBlock);
          [v18 setInterruptionHandler:v58];
          _Block_release(v58);
          v68 = sub_1C4D27024;
          v69 = 0;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          *&v67 = sub_1C4833DD0;
          *(&v67 + 1) = &unk_1F440C540;
          v59 = _Block_copy(&aBlock);
          [v18 setInvalidationHandler:v59];
          _Block_release(v59);
          [v18 resume];

          sub_1C4420C3C(v72, &qword_1EC0BCD10, &qword_1C4F0C8C0);
          return 1;
        }

        v60 = sub_1C4F00968();
        v61 = sub_1C4F01CD8();
        if (sub_1C43FCEA4(v61))
        {
          *sub_1C43FCED0() = 0;
          sub_1C44011B0(&dword_1C43F8000, v62, v63, "View XPC Service requires application-identifier or view read-only entitlement");
          sub_1C43FBE2C();
          v64 = v32;
        }

        else
        {
          v64 = v60;
          v60 = v32;
        }

        sub_1C4420C3C(v72, &qword_1EC0BCD10, &qword_1C4F0C8C0);
      }
    }

    return 0;
  }

  __break(1u);
  return result;
}

unint64_t sub_1C4D2710C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  switch(*(v0 + 48))
  {
    case 1:
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4F02248();

      v16 = 0x20746E65696C43;
      if (v1)
      {
        v14 = v2;
      }

      else
      {
        v14 = 0x6F727020746F6E3CLL;
      }

      if (!v1)
      {
        v1 = 0xEE003E6465646976;
      }

      MEMORY[0x1C6940010](v14, v1);

      MEMORY[0x1C6940010](0xD000000000000023, 0x80000001C4FC6C60);
      v6 = sub_1C44114DC();
      goto LABEL_18;
    case 2:
      v16 = 0;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4F02248();
      MEMORY[0x1C6940010](0xD000000000000027, 0x80000001C4FC6C30);
      v10 = sub_1C44114DC();
      MEMORY[0x1C6940010](v10);
      MEMORY[0x1C6940010](0x3A746E65696C6320, 0xE900000000000020);
      if (v1)
      {
        v11 = v2;
      }

      else
      {
        v11 = 0x6F727020746F6E3CLL;
      }

      if (v1)
      {
        v12 = v1;
      }

      else
      {
        v12 = 0xEE003E6465646976;
      }

      MEMORY[0x1C6940010](v11, v12);

      MEMORY[0x1C6940010](0x203A726F72726520, 0xE800000000000000);
      v6 = v3;
      v7 = v4;
      goto LABEL_18;
    case 3:
      sub_1C43FBFCC();
      sub_1C4F02248();

      v16 = 0x2077656956;
      v13 = sub_1C44114DC();
      MEMORY[0x1C6940010](v13);
      v6 = 0xD00000000000001BLL;
      v7 = 0x80000001C4FC6C10;
      goto LABEL_18;
    case 4:
      sub_1C43FBFCC();
      sub_1C4F02248();

      v16 = 0x2077656956;
      v8 = sub_1C44114DC();
      MEMORY[0x1C6940010](v8);
      MEMORY[0x1C6940010](0x7272756320736920, 0xEE0020796C746E65);
      v9 = sub_1C4CC2358(v2);
      MEMORY[0x1C6940010](v9);

      MEMORY[0x1C6940010](0x7265206874697720, 0xEC00000020726F72);
      v6 = v1;
      v7 = v3;
      goto LABEL_18;
    case 5:
      if (v2 | *(v0 + 8) | *v0 | v1 | v3 | v4)
      {
        return 0xD000000000000021;
      }

      else
      {
        return 0xD00000000000001CLL;
      }

    default:
      sub_1C43FBFCC();
      sub_1C4F02248();

      v16 = 0xD000000000000027;
      v5 = sub_1C44114DC();
      MEMORY[0x1C6940010](v5);
      v6 = 46;
      v7 = 0xE100000000000000;
LABEL_18:
      MEMORY[0x1C6940010](v6, v7);
      return v16;
  }
}

uint64_t sub_1C4D27494()
{
  sub_1C456902C(&qword_1EC0B9270, &unk_1C4F32030);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  v1 = *MEMORY[0x1E696A578];
  *(inited + 32) = sub_1C4F01138();
  *(inited + 40) = v2;
  v3 = sub_1C4D2710C();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  return sub_1C4F00F28();
}

uint64_t sub_1C4D2752C()
{
  result = 1;
  switch(v0[3].i8[0])
  {
    case 1:
      result = 2;
      break;
    case 2:
      result = 3;
      break;
    case 3:
      result = 4;
      break;
    case 4:
      result = 5;
      break;
    case 5:
      v2 = vorrq_s8(v0[1], v0[2]);
      if (*&vorr_s8(*v2.i8, *&vextq_s8(v2, v2, 8uLL)) | v0->i64[1] | v0->i64[0])
      {
        result = 7;
      }

      else
      {
        result = 6;
      }

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4D275A4(uint64_t a1)
{
  v2 = sub_1C4D280EC();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1C4D275E0(uint64_t a1)
{
  v2 = sub_1C4D280EC();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

id sub_1C4D27648(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v13 = sub_1C4EF9A38();
  v14 = sub_1C4EF9868();
  if (a5)
  {
    v15 = sub_1C4F01108();
  }

  else
  {
    v15 = 0;
  }

  v16 = [v7 initWithToken:v13 url:v14 tableName:v15 alwaysAvailable:a6 & 1];

  sub_1C4434000(a1, a2);
  v17 = sub_1C4EF98F8();
  (*(*(v17 - 8) + 8))(a3, v17);
  return v16;
}

id sub_1C4D2774C(uint64_t a1, uint64_t a2, char a3)
{
  if (a2)
  {
    v5 = sub_1C4F01108();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithTableName:v5 alwaysAvailable:a3 & 1];

  return v6;
}

uint64_t sub_1C4D277B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1C456902C(&qword_1EC0BC660, &qword_1C4F29150);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v25 - v11;
  sub_1C446C964(a3, v25 - v11, &qword_1EC0BC660, &qword_1C4F29150);
  v13 = sub_1C4F018C8();
  if (sub_1C44157D4(v12, 1, v13) == 1)
  {
    sub_1C4420C3C(v12, &qword_1EC0BC660, &qword_1C4F29150);
  }

  else
  {
    sub_1C4F018B8();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (*(a5 + 16))
  {
    v14 = *(a5 + 24);
    v15 = *(a5 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v16 = sub_1C4F017F8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1C4F011C8() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1C4420C3C(a3, &qword_1EC0BC660, &qword_1C4F29150);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1C4420C3C(a3, &qword_1EC0BC660, &qword_1C4F29150);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1C4D27B00()
{
  sub_1C43FEAEC();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = swift_task_alloc();
  v7 = sub_1C43FC218(v6);
  *v7 = v8;
  sub_1C440FEFC(v7);
  sub_1C445EB20();

  return v9();
}

uint64_t sub_1C4D27BA8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = sub_1C442FFD4();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1C4D27BE0()
{
  sub_1C43FCF70();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_1C43FC218(v3);
  *v4 = v5;
  v6 = sub_1C4406C84(v4);

  return v7(v6);
}

uint64_t sub_1C4D27C78()
{
  sub_1C43FEAEC();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_1C43FC218(v5);
  *v6 = v7;
  v8 = sub_1C4411F54(v6);

  return v9(v8);
}

uint64_t sub_1C4D27D1C()
{
  _Block_release(*(v0 + 32));

  v1 = sub_1C442FFD4();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C4D27D64()
{
  sub_1C43FEAEC();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_1C43FC218(v5);
  *v6 = v7;
  v8 = sub_1C4411F54(v6);

  return v9(v8);
}

uint64_t sub_1C4D27E00()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C4D27E50()
{
  sub_1C43FEAEC();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = swift_task_alloc();
  v7 = sub_1C43FC218(v6);
  *v7 = v8;
  sub_1C440FEFC(v7);
  sub_1C445EB20();

  return v9();
}

uint64_t sub_1C4D27EFC()
{
  sub_1C43FEAEC();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  v6 = swift_task_alloc();
  v7 = sub_1C43FC218(v6);
  *v7 = v8;
  v9 = sub_1C440FEFC(v7);

  return v10(v9, v2, v3, v5, v4);
}

unint64_t sub_1C4D27FAC()
{
  result = qword_1EDDF0C30;
  if (!qword_1EDDF0C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF0C30);
  }

  return result;
}

uint64_t sub_1C4D28000(uint64_t a1)
{
  if ((*(a1 + 48) & 7u) <= 4)
  {
    return *(a1 + 48) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_1C4D2801C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && *(a1 + 49))
    {
      v2 = *a1 + 250;
    }

    else
    {
      v3 = *(a1 + 48);
      if (v3 <= 5)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C4D2805C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C4D280B0(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 48) = a2;
  return result;
}

unint64_t sub_1C4D280EC()
{
  result = qword_1EDDF0C40;
  if (!qword_1EDDF0C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF0C40);
  }

  return result;
}

uint64_t sub_1C4D28164()
{
  sub_1C45F9C18();
  v2 = v1;

  return v2;
}

uint64_t sub_1C4D28198()
{
  sub_1C45FA1A8();
  v1 = v0;

  return v1;
}

uint64_t sub_1C4D281CC()
{
  sub_1C45FA498();
  v1 = v0;

  return v1;
}

uint64_t sub_1C4D28200(void *a1)
{
  sub_1C45FA5C0();
  v3 = v2;

  return v3;
}

uint64_t sub_1C4D28230()
{
  sub_1C45FA778();
  v1 = v0;

  return v1;
}

void sub_1C4D28268(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_1C456902C(&unk_1EC0C0760, &qword_1C4F170D0);
  v9 = sub_1C43FBD18(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v33 - v12;
  v14 = type metadata accessor for Source();
  v15 = sub_1C43FCDF8(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBD08();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  if (!a2 || !a3)
  {
    v25 = 1;
LABEL_28:
    *a1 = v25;
    a1[1] = a4;
    return;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = v23;
    v35 = &v33 - v22;
    v37 = a2;
    v38 = a1;
    v40 = a3;
    v24 = 0;
    v25 = 1;
    while (2)
    {
      if (v24 >= v40)
      {
LABEL_32:
        __break(1u);
      }

      else
      {
        v36 = (v24 + 1);
        if (!__OFADD__(v24, 1))
        {
          v39 = v24;
          while (1)
          {
            while (1)
            {
              if (qword_1EDDFA6A8 != -1)
              {
                swift_once();
              }

              if (qword_1EDE2DCF0 < v25)
              {
                a1 = v38;
                goto LABEL_28;
              }

              sub_1C449E530(v25, v13);
              if (sub_1C44157D4(v13, 1, v14) != 1)
              {
                break;
              }

              sub_1C4420C3C(v13, &unk_1EC0C0760, &qword_1C4F170D0);
              v26 = __OFADD__(v25++, 1);
              if (v26)
              {
                __break(1u);
LABEL_30:
                __break(1u);
LABEL_31:
                __break(1u);
                goto LABEL_32;
              }
            }

            sub_1C4D29B04(v13, v20, type metadata accessor for Source);
            v27 = v25 - 1;
            if (__OFSUB__(v25, 1))
            {
              goto LABEL_30;
            }

            v26 = __OFADD__(v25++, 1);
            if (v26)
            {
              goto LABEL_31;
            }

            v28 = v27 > 0x40;
            v29 = v27 >= 0x40 ? 0 : 1 << v27;
            if (v28)
            {
              v29 = 0;
            }

            if ((v29 & a4) >= 1)
            {
              break;
            }

            sub_1C4454534(v20, type metadata accessor for Source);
          }

          v39 = type metadata accessor for Source;
          v30 = v35;
          sub_1C4D29B04(v20, v35, type metadata accessor for Source);
          v31 = v30;
          v32 = v37;
          sub_1C4D29B04(v31, v37, v39);
          v24 = v36;
          if (v36 != v40)
          {
            v37 = v32 + *(v34 + 72);
            continue;
          }

          a1 = v38;
          goto LABEL_28;
        }
      }

      break;
    }

    __break(1u);
  }

  __break(1u);
}

id sub_1C4D2857C()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1C4F01658();

  v2 = [v0 initWithArray_];

  return v2;
}

uint64_t sub_1C4D285F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, char a6, int a7, uint64_t a8)
{
  v9 = v8;
  v57 = a8;
  v58 = a5;
  v54 = a7;
  v55 = a3;
  v59 = a2;
  v60 = a1;
  v12 = type metadata accessor for GDInteractionEnumeration.GDInteractionIterator();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC24IntelligencePlatformCore28VirtualInteractionEnumerator_handleToIDMap;
  sub_1C456902C(&qword_1EC0BA788, &qword_1C4F6DE10);
  v17 = MEMORY[0x1E69E7CC0];
  v18 = 0;
  *(v9 + v16) = sub_1C4F00F28();
  v19 = MEMORY[0x1E69E6530];
  do
  {
    v20 = *(&unk_1F43D12C0 + v18 + 32);
    v62 = v19;
    *&v61 = v20;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = *(v17 + 16);
      sub_1C458B364();
      v17 = v23;
    }

    v21 = *(v17 + 16);
    if (v21 >= *(v17 + 24) >> 1)
    {
      sub_1C458B364();
      v17 = v24;
    }

    *(v17 + 16) = v21 + 1;
    sub_1C44482AC(&v61, (v17 + 32 * v21 + 32));
    v18 += 8;
  }

  while (v18 != 104);
  v56 = a4;
  v25 = OBJC_IVAR____TtC24IntelligencePlatformCore28VirtualInteractionEnumerator_mechanismsWithoutParticipantStatusToKeep;
  v26 = sub_1C4461BB8(0, &unk_1EDDF0380, 0x1E695DEC8);
  v27 = sub_1C4D2857C();
  *(v9 + v25) = v27;
  if (a6)
  {
    v28 = v27;
    sub_1C4461BB8(0, &qword_1EDDF05A0, 0x1E696AE18);
    sub_1C456902C(&qword_1EC0B8780, &qword_1C4F0DB70);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1C4F0C890;
    v30 = sub_1C4EF9CD8();
    *(v29 + 56) = v30;
    v31 = sub_1C4422F90((v29 + 32));
    v32 = *(*(v30 - 8) + 16);
    v32(v31, v60, v30);
    *(v29 + 88) = v30;
    v33 = sub_1C4422F90((v29 + 64));
    v32(v33, v59, v30);
    *(v29 + 120) = v26;
    *(v29 + 96) = v28;
    v34 = v28;
    v35 = 0xD000000000000034;
    v36 = 0x80000001C4FC6DD0;
    v37 = v29;
  }

  else
  {
    sub_1C4461BB8(0, &qword_1EDDF05A0, 0x1E696AE18);
    sub_1C456902C(&qword_1EC0B8780, &qword_1C4F0DB70);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1C4F0CE60;
    v39 = sub_1C4EF9CD8();
    *(v38 + 56) = v39;
    v40 = sub_1C4422F90((v38 + 32));
    v41 = *(*(v39 - 8) + 16);
    v41(v40, v60, v39);
    *(v38 + 88) = v39;
    v42 = sub_1C4422F90((v38 + 64));
    v41(v42, v59, v39);
    v36 = 0x80000001C4FC6DA0;
    v35 = 0xD000000000000020;
    v37 = v38;
  }

  v43 = sub_1C4D28AF8(v35, v36, v37);
  v44 = objc_opt_self();
  v45 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v46 = v43;
  v47 = sub_1C4D29970(0x7461447472617473, 0xE900000000000065, v55 & 1);
  v48 = v57;
  v49 = [v44 interactionHistoryEnumeratorWithPredicate:v46 sortDescriptor:v47 batchSize:sub_1C468BDE0()];

  sub_1C4EF97F8();
  sub_1C4D29B04(v15, v9 + OBJC_IVAR____TtC24IntelligencePlatformCore28VirtualInteractionEnumerator_enumerator, type metadata accessor for GDInteractionEnumeration.GDInteractionIterator);
  v50 = v58;
  if (v56)
  {
    if (v54)
    {
      sub_1C4D28E08(v56, v58);
    }
  }

  sub_1C4454534(v48, type metadata accessor for Configuration);
  sub_1C4420C3C(v50, &qword_1EC0BA0C8, &unk_1C4F6E090);
  v51 = sub_1C4EF9CD8();
  v52 = *(*(v51 - 8) + 8);
  v52(v59, v51);
  v52(v60, v51);
  return v9;
}

id sub_1C4D28AF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C4F01108();

  if (a3)
  {
    v5 = sub_1C4F01658();
  }

  else
  {
    v5 = 0;
  }

  v6 = [swift_getObjCClassFromMetadata() predicateWithFormat:v4 argumentArray:v5];

  return v6;
}

uint64_t sub_1C4D28B94(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8)
{
  v44 = a5;
  v45 = a8;
  v48 = a6;
  v49 = a7;
  v47 = a4;
  v46 = a3;
  v10 = type metadata accessor for Configuration();
  v11 = sub_1C43FBD18(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C456902C(&qword_1EC0BA0C8, &unk_1C4F6E090);
  v17 = sub_1C43FBD18(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v43 - v20;
  v22 = sub_1C4EF9CD8();
  v23 = sub_1C43FCDF8(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBD08();
  v30 = v28 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v43 - v32;
  v34 = *(v25 + 16);
  v34(&v43 - v32, a1, v22);
  v34(v30, a2, v22);
  v35 = v44;
  sub_1C445FFF0(v44, v21, &qword_1EC0BA0C8, &unk_1C4F6E090);
  v36 = v45;
  sub_1C44098F0(v45, v15);
  v37 = type metadata accessor for VirtualInteractionEnumerator();
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();
  v40 = sub_1C4D285F4(v33, v30, v46, v47, v21, v48, v49, v15);
  sub_1C4454534(v36, type metadata accessor for Configuration);
  sub_1C4420C3C(v35, &qword_1EC0BA0C8, &unk_1C4F6E090);
  v41 = *(v25 + 8);
  v41(a2, v22);
  v41(a1, v22);
  return v40;
}

uint64_t sub_1C4D28E08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_1C4EFF0C8();
  v6 = sub_1C43FCDF8(v5);
  v102 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v110 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&qword_1EC0BA788, &qword_1C4F6DE10);
  v12 = sub_1C43FCDF8(v11);
  v100 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBD08();
  v105 = v16 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v106 = &v93 - v19;
  v108 = sub_1C456902C(&qword_1EC0BDCE0, &unk_1C4F31990);
  v20 = sub_1C43FBCE0(v108);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBD08();
  v101 = v23 - v24;
  v26 = MEMORY[0x1EEE9AC00](v25);
  v104 = (&v93 - v27);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v93 - v28;
  v30 = sub_1C456902C(&qword_1EC0BA0C8, &unk_1C4F6E090);
  v31 = sub_1C43FBD18(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v93 - v34;
  sub_1C486DFC0();
  v37 = v36;
  sub_1C445FFF0(a2, v35, &qword_1EC0BA0C8, &unk_1C4F6E090);
  v38 = sub_1C4EFCE48();
  if (sub_1C44157D4(v35, 1, v38) == 1)
  {

    sub_1C4420C3C(v35, &qword_1EC0BA0C8, &unk_1C4F6E090);
    v39 = sub_1C4F00F28();
LABEL_29:
    v91 = *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore28VirtualInteractionEnumerator_handleToIDMap);
    *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore28VirtualInteractionEnumerator_handleToIDMap) = v39;
  }

  v94 = v2;
  v40 = sub_1C4EFCE38();
  (*(*(v38 - 8) + 8))(v35, v38);
  v39 = sub_1C4F00F28();
  v41 = v40 + 64;
  v42 = 1 << *(v40 + 32);
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  else
  {
    v43 = -1;
  }

  v44 = v43 & *(v40 + 64);
  v45 = (v42 + 63) >> 6;
  v115 = v37;
  v116 = v29;
  v46 = v102;
  v97 = v102 + 32;
  v111 = v37 + 7;
  v113 = (v102 + 8);
  v114 = v102 + 16;
  v99 = v40;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v47 = 0;
  v96 = v40 + 64;
  v95 = v45;
  for (i = v11; v44; v45 = v95)
  {
    v103 = v39;
LABEL_12:
    v49 = __clz(__rbit64(v44)) | (v47 << 6);
    v50 = *(v99 + 56);
    v51 = (*(v99 + 48) + 16 * v49);
    v53 = *v51;
    v52 = v51[1];
    v112 = *(v46 + 72);
    v54 = v46;
    v55 = *(v46 + 16);
    v56 = v116;
    v55(v116 + *(v108 + 48), v50 + v112 * v49, v5);
    *v56 = v53;
    v56[1] = v52;
    v57 = v104;
    sub_1C445FFF0(v56, v104, &qword_1EC0BDCE0, &unk_1C4F31990);
    v58 = v57[1];
    v107 = *v57;
    v109 = v58;
    v59 = v101;
    sub_1C445FFF0(v56, v101, &qword_1EC0BDCE0, &unk_1C4F31990);
    v60 = *(v59 + 8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    (*(v54 + 32))(v106, v59 + *(v108 + 48), v5);
    v61 = v115;
    if (v115[2])
    {
      v62 = v115[5];
      sub_1C442D944();
      sub_1C4D299DC(&qword_1EDDFE820, v63);
      v64 = sub_1C4F00FD8();
      v65 = ~(-1 << *(v61 + 32));
      do
      {
        v66 = v64 & v65;
        v67 = (1 << (v64 & v65)) & *(v111 + (((v64 & v65) >> 3) & 0xFFFFFFFFFFFFFF8));
        v68 = v67 != 0;
        if (!v67)
        {
          break;
        }

        v69 = v110;
        v55(v110, v115[6] + v66 * v112, v5);
        sub_1C442D944();
        sub_1C4D299DC(&qword_1EDDFCC98, v70);
        v71 = sub_1C4F010B8();
        (*v113)(v69, v5);
        v64 = v66 + 1;
      }

      while ((v71 & 1) == 0);
    }

    else
    {
      v68 = 0;
    }

    v73 = v105;
    v72 = v106;
    v106[*(i + 48)] = v68;
    sub_1C4D29A24(v72, v73);
    v74 = v103;
    swift_isUniquelyReferenced_nonNull_native();
    v117 = v74;
    v75 = sub_1C445FAA8(v107, v109);
    if (__OFADD__(*(v74 + 16), (v76 & 1) == 0))
    {
      goto LABEL_31;
    }

    v77 = v75;
    v78 = v76;
    sub_1C456902C(&qword_1EC0C6528, &qword_1C4F6DE18);
    if (sub_1C4F02458())
    {
      v79 = sub_1C445FAA8(v107, v109);
      v81 = v116;
      if ((v78 & 1) != (v80 & 1))
      {
        goto LABEL_33;
      }

      v77 = v79;
      v46 = v102;
      if (v78)
      {
LABEL_25:

        v39 = v117;
        v89 = sub_1C44013A8();
        sub_1C4D29A94(v89, v90);
        sub_1C4420C3C(v81, &qword_1EC0BDCE0, &unk_1C4F31990);
        goto LABEL_26;
      }
    }

    else
    {
      v46 = v102;
      v81 = v116;
      if (v78)
      {
        goto LABEL_25;
      }
    }

    v39 = v117;
    *(v117 + 8 * (v77 >> 6) + 64) |= 1 << v77;
    v82 = (*(v39 + 48) + 16 * v77);
    v83 = v109;
    *v82 = v107;
    v82[1] = v83;
    v84 = sub_1C44013A8();
    sub_1C4D29A24(v84, v85);
    sub_1C4420C3C(v81, &qword_1EC0BDCE0, &unk_1C4F31990);
    v86 = *(v39 + 16);
    v87 = __OFADD__(v86, 1);
    v88 = v86 + 1;
    if (v87)
    {
      goto LABEL_32;
    }

    *(v39 + 16) = v88;
LABEL_26:
    v44 &= v44 - 1;
    (*v113)(v104 + *(v108 + 48), v5);
    v41 = v96;
  }

  while (1)
  {
    v48 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      break;
    }

    if (v48 >= v45)
    {

      v3 = v94;
      goto LABEL_29;
    }

    v44 = *(v41 + 8 * v48);
    ++v47;
    if (v44)
    {
      v103 = v39;
      v47 = v48;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

uint64_t sub_1C4D295BC()
{
  v1 = v0;
  v2 = objc_autoreleasePoolPush();
  swift_beginAccess();
  GDInteractionEnumeration.GDInteractionIterator.next()(v3);
  v5 = v4;
  swift_endAccess();
  if (v5)
  {
    v6 = *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore28VirtualInteractionEnumerator_handleToIDMap);
    v7 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C481A97C(v7);
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  objc_autoreleasePoolPop(v2);
  return v9;
}

uint64_t sub_1C4D29664()
{
  sub_1C4454534(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore28VirtualInteractionEnumerator_enumerator, type metadata accessor for GDInteractionEnumeration.GDInteractionIterator);
  v1 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore28VirtualInteractionEnumerator_handleToIDMap);

  return v0;
}

uint64_t sub_1C4D296C0()
{
  sub_1C4D29664();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for VirtualInteractionEnumerator()
{
  result = qword_1EDDF20C8;
  if (!qword_1EDDF20C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4D2976C()
{
  result = sub_1C4EF97E8();
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

uint64_t sub_1C4D29818@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1C4D28574();
  *a1 = result;
  return result;
}

uint64_t sub_1C4D298FC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1C4D295BC();
  *a1 = result;
  return result;
}

id sub_1C4D29970(uint64_t a1, uint64_t a2, char a3)
{
  if (a2)
  {
    v5 = sub_1C4F01108();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithKey:v5 ascending:a3 & 1];

  return v6;
}

uint64_t sub_1C4D299DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C4D29A24(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BA788, &qword_1C4F6DE10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4D29A94(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BA788, &qword_1C4F6DE10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4D29B04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

BOOL sub_1C4D29B64(uint64_t a1, uint64_t a2)
{
  v40[0] = a1;
  v43 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 32);
  v4 = v3 & 0x3F;
  v5 = ((1 << v3) + 63) >> 6;
  v6 = (8 * v5);
  v7 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  if (v4 > 0xD)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v40[4] = v40;
    MEMORY[0x1EEE9AC00](v7);
    v6 = v40 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    v41 = v5;
    sub_1C4501018(0, v5, v6);
    v42 = 0;
    v8 = 0;
    v9 = *(a2 + 56);
    v10 = *(a2 + 32);
    sub_1C43FD030();
    v13 = v12 & v11;
    v15 = (v14 + 63) >> 6;
    v40[2] = 0x80000001C4F85600;
    v40[3] = 0x80000001C4F86760;
    v40[1] = 0x80000001C4F86740;
    while (v13)
    {
      v16 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_10:
      v5 = v16 | (v8 << 6);
      switch(*(*(a2 + 48) + 24 * v5 + 16))
      {
        case 1:
          sub_1C43FD8FC();
          goto LABEL_14;
        case 2:
          sub_1C4408D0C();
          goto LABEL_14;
        case 3:
        case 6:
          sub_1C4405CE0();
          goto LABEL_14;
        case 4:

          goto LABEL_15;
        default:
LABEL_14:
          v20 = sub_1C4F02938();

          if (v20)
          {
LABEL_15:
            *&v6[(v5 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v5;
            if (__OFADD__(v42++, 1))
            {
              __break(1u);
            }
          }

          return result;
      }
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v15)
      {
        sub_1C4A8DF38(v6, v41, v42, a2);
        v23 = v22;
        goto LABEL_20;
      }

      ++v17;
      if (*(a2 + 56 + 8 * v8))
      {
        sub_1C43FCF1C();
        v13 = v19 & v18;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_38:
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v39 = swift_slowAlloc();

  v23 = sub_1C4D2C7B8(v39, v5, a2, sub_1C4D2C150);
  swift_bridgeObjectRelease_n();
  MEMORY[0x1C6942830](v39, -1, -1);
LABEL_20:
  if (v23[2])
  {
    v24 = v23[5];
    sub_1C4F02AF8();
    MEMORY[0x1C69417F0](4);
    sub_1C441BEB8();
    sub_1C4F01298();
    v25 = sub_1C4F02B68();
    v26 = -1 << *(v23 + 32);
    v27 = v25 & ~v26;
    if ((*(v23 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v27))
    {
      v42 = 0;
      v28 = ~v26;
      do
      {
        v29 = v23[6] + 24 * v27;
        if (*(v29 + 16) == 4)
        {
          if ((*v29 & 1) == 0)
          {

            goto LABEL_31;
          }

          v30 = sub_1C4F02938();

          if (v30)
          {
            goto LABEL_30;
          }
        }

        v27 = (v27 + 1) & v28;
      }

      while (((*(v23 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v27) & 1) != 0);
    }

    goto LABEL_35;
  }

LABEL_30:

LABEL_31:
  sub_1C4D51718(&unk_1F43D2D10);
  sub_1C4839234(v40[0], v31);
  v33 = v32;

  if ((v33 & 1) == 0)
  {
LABEL_35:
    result = 0;
    goto LABEL_36;
  }

  sub_1C4AA8A50(a2);
  v35 = sub_1C4597BBC(v34);
  if (qword_1EDDF4E28 != -1)
  {
    swift_once();
  }

  v36 = *(sub_1C4A7C718(qword_1EDDF4E30, v35) + 16);

  result = v36 == 0;
LABEL_36:
  v38 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C4D2A0D0(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v5 = v4;
  v31 = a3;
  v32 = a4;
  v30 = a2;
  v6 = type metadata accessor for Configuration();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(sub_1C456902C(&qword_1EC0BA0C8, &unk_1C4F6E090) - 8) + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - v12;
  v14 = sub_1C4EF9CD8();
  v15 = sub_1C43FCDF8(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  type metadata accessor for VirtualInteractionEnumerator();
  v25 = *(v17 + 16);
  sub_1C441BEB8();
  v25();
  (v25)(v21, v30, v14);
  v26 = *(v5 + *(type metadata accessor for GraphBasedVirtualInteractionStreamProvider() + 20));
  v27 = sub_1C4EFCE48();
  sub_1C43FBCE0(v27);
  (*(v28 + 16))(v13, v5, v27);
  sub_1C440BAA8(v13, 0, 1, v27);
  sub_1C4D2CD80(v26 + OBJC_IVAR____TtC24IntelligencePlatformCore10GraphStore_config, v9, type metadata accessor for Configuration);

  return sub_1C4D28B94(v24, v21, v31, v26, v13, v32, 1, v9);
}

uint64_t sub_1C4D2A32C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  result = sub_1C4D2A0D0(a1, a2, a3, a4);
  *a5 = result;
  return result;
}

uint64_t sub_1C4D2A354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v52 = a6;
  v48 = a2;
  v53 = a4;
  v45 = a1;
  v7 = *(a5 + 16);
  v8 = *(a5 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v47 = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = sub_1C4F02268();
  v12 = sub_1C43FCDF8(v11);
  v50 = v13;
  v51 = v12;
  v15 = *(v14 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v16);
  v49 = &v41 - v17;
  sub_1C4572308(&unk_1EC0BA420, &qword_1C4F13E78);
  sub_1C4F02408();
  sub_1C440FF14();
  sub_1C4F02508();
  v18 = type metadata accessor for InteractionEvent(255);
  swift_getWitnessTable();
  v46 = v18;
  v19 = sub_1C4F02408();
  v20 = sub_1C43FCDF8(v19);
  v44 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBFDC();
  v42 = v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v41 - v26;
  v43 = *(AssociatedTypeWitness - 8);
  v28 = *(v43 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v41 - v30;
  v32 = v53;
  if (sub_1C4D29B64(a3, v53))
  {
    (*(v8 + 24))(v45, v48, 0, 0, v47, v8);
    v33 = v49;
    MEMORY[0x1C6940210](AssociatedTypeWitness, AssociatedConformanceWitness);
    v34 = swift_allocObject();
    *(v34 + 16) = a3;
    *(v34 + 24) = v32;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v35 = v51;
    swift_getWitnessTable();
    sub_1C4F025A8();

    (*(v50 + 8))(v33, v35);
    v36 = v44;
    (*(v44 + 16))(v42, v27, v19);
    sub_1C440FF14();
    sub_1C441BEB8();
    v37 = sub_1C4F021B8();
    (*(v36 + 8))(v27, v19);
    result = (*(v43 + 8))(v31, AssociatedTypeWitness);
    v39 = v52;
    *v52 = sub_1C4D2CD58;
    v39[1] = v37;
  }

  else
  {
    sub_1C463DFA8();
    swift_allocError();
    *v40 = a3;
    *(v40 + 8) = v32;
    *(v40 + 16) = 0;
    swift_willThrow();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  return result;
}

uint64_t sub_1C4D2A7A4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  v8 = *a1;
  v9 = sub_1C4EF9CD8();
  sub_1C440BAA8(v7, 1, 1, v9);
  v10 = sub_1C4D2A8A4();
  result = sub_1C4420C3C(v7, &unk_1EC0B84E0, qword_1C4F0D2D0);
  *a2 = v10;
  return result;
}

uint64_t sub_1C4D2A8A4()
{
  sub_1C441516C();
  v306 = v0;
  v3 = v2;
  v310[9] = *MEMORY[0x1E69E9840];
  v4 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v297 = *(v4 - 8);
  v5 = *(v297 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v8);
  v285 = &v284 - v9;
  v10 = *(*(sub_1C456902C(&qword_1EC0BDBF8, &unk_1C4F6DE80) - 8) + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  v291 = &v284 - v12;
  v308 = type metadata accessor for VirtualInteractionContact(0);
  v13 = sub_1C43FCDF8(v308);
  v300 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBF38();
  v307 = v18;
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBF38();
  v305 = v20;
  MEMORY[0x1EEE9AC00](v21);
  v289 = &v284 - v22;
  v23 = sub_1C4EF9CD8();
  v24 = sub_1C43FCDF8(v23);
  v303 = v25;
  v304 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v29);
  v302 = &v284 - v30;
  v31 = *(v3 + 32);
  v32 = v31 & 0x3F;
  v33 = ((1 << v31) + 63) >> 6;
  v34 = 8 * v33;
  v35 = swift_bridgeObjectRetain_n();
  v36 = "communicationDirection";
  v37 = "communicationMechanism";
  v38 = "lookaheadDuration";
  v309 = v3;
  if (v32 > 0xD)
  {
    goto LABEL_203;
  }

LABEL_2:
  v298 = &v284;
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FF170();
  v41 = v39 - v40;
  v299 = v33;
  sub_1C4501018(0, v33, v39 - v40);
  v301 = 0;
  v42 = 0;
  v44 = *(v3 + 56);
  v43 = v3 + 56;
  v45 = *(v43 - 24);
  sub_1C43FD030();
  v48 = v47 & v46;
  v50 = v49 + 63;
  v51 = v38;
  v38 = v50 >> 6;
  v296 = (v36 - 32) | 0x8000000000000000;
  v295 = ((v37 - 32) | 0x8000000000000000);
  v294 = ((v51 - 32) | 0x8000000000000000);
  do
  {
LABEL_3:
    if (v48)
    {
      sub_1C442377C();
      goto LABEL_10;
    }

    v53 = v42;
    do
    {
      v42 = v53 + 1;
      if (__OFADD__(v53, 1))
      {
        __break(1u);
LABEL_197:
        __break(1u);
LABEL_198:

        sub_1C440DB84();
LABEL_133:
        v168 = type metadata accessor for VirtualInteraction(0);
        v169 = v291;
        sub_1C445FFF0(&v306[v168[9]], v291, &qword_1EC0BDBF8, &unk_1C4F6DE80);
        v170 = sub_1C44157D4(v169, 1, v34);
        v301 = v168;
        if (v170 == 1)
        {
          sub_1C4420C3C(v169, &qword_1EC0BDBF8, &unk_1C4F6DE80);
        }

        else
        {
          v183 = v169;
          v184 = v289;
          sub_1C481B660(v183, v289);
          v185 = *(v184 + *(v34 + 32));
          if (v185 != 2 && (v185 & 1) == 0)
          {
            v233 = v184;
            sub_1C456902C(&qword_1EC0B8E98, &unk_1C4F0E8F0);
            v234 = *(v48 + 72);
            v235 = v34;
            v236 = (*(v48 + 80) + 32) & ~*(v48 + 80);
            v187 = swift_allocObject();
            *(v187 + 16) = xmmword_1C4F0D130;
            sub_1C445FFF0(v233 + *(v235 + 28), v187 + v236, &unk_1EC0BA0E0, &qword_1C4F105A0);
            sub_1C4D2C848(v233);
            goto LABEL_185;
          }

          sub_1C4D2C848(v184);
        }

        v37 = *&v306[v168[10]];
        if (*&v306[v168[8]] != 1)
        {
          v36 = 0;
          v33 = *(v37 + 16);
          v3 = MEMORY[0x1E69E7CC0];
          v309 = MEMORY[0x1E69E7CC0];
          while (v33 != v36)
          {
            if (v36 >= *(v37 + 16))
            {
              goto LABEL_202;
            }

            sub_1C44062CC();
            v202 = v201 & ~v200;
            v38 = *(v203 + 72);
            sub_1C442096C();
            v204 = v307;
            sub_1C4D2CD80(v205, v307, v206);
            v207 = *(v204 + *(v34 + 32));
            if (v207 == 2 || (v207 & 1) == 0)
            {
              sub_1C481B660(v307, v292);
              v208 = v309;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v310[0] = v208;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v210 = *(v208 + 16);
                v48 = v310;
                sub_1C459D608();
                sub_1C440DB84();
                v208 = v310[0];
              }

              v212 = *(v208 + 16);
              v211 = *(v208 + 24);
              v213 = v208;
              if (v212 >= v211 >> 1)
              {
                sub_1C4403B28(v211);
                sub_1C459D608();
                sub_1C440DB84();
                v213 = v310[0];
              }

              ++v36;
              *(v213 + 16) = v212 + 1;
              v309 = v213;
              sub_1C481B660(v292, v213 + v202 + v212 * v38);
              v34 = v308;
            }

            else
            {
              sub_1C4D2C848(v307);
              ++v36;
            }
          }

          v214 = v309;
          v215 = *(v309 + 16);
          if (v215)
          {
            sub_1C441E8B4();
            sub_1C440DB84();
            v216 = v310[0];
            sub_1C44062CC();
            v219 = v214 + (v218 & ~v217);
            v221 = *(v220 + 72);
            v222 = v284;
            do
            {
              sub_1C442096C();
              v223 = v305;
              sub_1C4D2CD80(v219, v305, v224);
              sub_1C445FFF0(v223 + *(v34 + 28), v222, &unk_1EC0BA0E0, &qword_1C4F105A0);
              sub_1C4D2C848(v223);
              v310[0] = v216;
              v226 = *(v216 + 16);
              v225 = *(v216 + 24);
              if (v226 >= v225 >> 1)
              {
                sub_1C4403B28(v225);
                sub_1C459D660();
                sub_1C440DB84();
                v216 = v310[0];
              }

              sub_1C4430424();
              sub_1C44DDDBC(v222, v227 + v228 * v226);
              v219 += v221;
              --v215;
              v34 = v308;
            }

            while (v215);
          }

          else
          {

            v216 = MEMORY[0x1E69E7CC0];
          }

          v229 = *(v216 + 16);
          v230 = v290;
          if (v229 < 2)
          {
            goto LABEL_186;
          }

          goto LABEL_183;
        }

        v186 = *(v37 + 16);
        v187 = MEMORY[0x1E69E7CC0];
        if (v186)
        {
          sub_1C441E8B4();
          sub_1C440DB84();
          v187 = v310[0];
          sub_1C44062CC();
          v190 = v37 + (v189 & ~v188);
          v192 = *(v191 + 72);
          v193 = v285;
          do
          {
            sub_1C442096C();
            v194 = v305;
            sub_1C4D2CD80(v190, v305, v195);
            sub_1C445FFF0(v194 + *(v34 + 28), v193, &unk_1EC0BA0E0, &qword_1C4F105A0);
            sub_1C4D2C848(v194);
            v310[0] = v187;
            v197 = *(v187 + 16);
            v196 = *(v187 + 24);
            if (v197 >= v196 >> 1)
            {
              sub_1C4403B28(v196);
              sub_1C459D660();
              sub_1C440DB84();
              v187 = v310[0];
            }

            sub_1C4430424();
            sub_1C44DDDBC(v193, v198 + v199 * v197);
            v190 += v192;
            --v186;
            v34 = v308;
          }

          while (v186);
        }

LABEL_185:
        v229 = *(v187 + 16);
        v230 = v290;
        if (v229 <= 1)
        {
LABEL_186:
          if (v229)
          {
            v237 = *(v48 + 80);
            sub_1C441BEB8();
            sub_1C445FFF0(v238, v239, v240, &qword_1C4F105A0);
            v241 = v286;
            sub_1C445FFF0(v230, v286, &unk_1EC0BA0E0, &qword_1C4F105A0);
            v242 = sub_1C4EFF0C8();
            if (sub_1C44157D4(v241, 1, v242) == 1)
            {
              sub_1C4420C3C(v230, &unk_1EC0BA0E0, &qword_1C4F105A0);
              sub_1C4420C3C(v241, &unk_1EC0BA0E0, &qword_1C4F105A0);
              v34 = MEMORY[0x1E69E7CC0];
            }

            else
            {
              v243 = v241;
              v48 = sub_1C4EFF048();
              v37 = v244;
              sub_1C4420C3C(v230, &unk_1EC0BA0E0, &qword_1C4F105A0);
              (*(*(v242 - 8) + 8))(v243, v242);
              v34 = MEMORY[0x1E69E7CC0];
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
LABEL_219:
                v280 = *(v34 + 16);
                sub_1C443D664();
                v34 = v281;
              }

              v245 = *(v34 + 16);
              if (v245 >= *(v34 + 24) >> 1)
              {
                sub_1C443D664();
                v34 = v282;
              }

              *(v34 + 16) = v245 + 1;
              v246 = v34 + 16 * v245;
              *(v246 + 32) = v48;
              *(v246 + 40) = v37;
            }
          }

          else
          {

            v34 = MEMORY[0x1E69E7CC0];
          }

          v248 = v302;
          v247 = v303;
          v249 = v288;
          v250 = v304;
          v287(v288, v302, v304);
          v310[0] = v34;
          sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
          sub_1C443D694();
          v251 = sub_1C4F01048();
          v253 = v252;

          sub_1C456902C(&qword_1EC0B8ED8, &qword_1C4F4CE40);
          v254 = swift_allocObject();
          *(v254 + 16) = xmmword_1C4F0CE60;
          v255 = v301;
          v256 = v306;
          v257 = &v306[v301[7]];
          v258 = *(v257 + 1);
          *(v254 + 32) = *v257;
          *(v254 + 40) = v258;
          *(v254 + 48) = 0;
          *(v254 + 56) = *&v256[*(v255 + 24)];
          *(v254 + 64) = 0;
          *(v254 + 72) = 3;
          v259 = *(v247 + 8);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v259(v248, v250);
          v260 = type metadata accessor for InteractionEvent(0);
          v261 = *(v260 + 48);
          v262 = *(v260 + 52);
          swift_allocObject();
          result = sub_1C4950CDC(v249, 3, v251, v253, v254);
          goto LABEL_104;
        }

LABEL_183:
        v231 = sub_1C442C128();
        v232(v231);

        goto LABEL_103;
      }

      if (v42 >= v38)
      {
        v3 = v309;
        sub_1C4A8DF38(v41, v299, v301, v309);
        v37 = v58;
        v38 = "lookaheadDuration";
        while (1)
        {
          if (*(v37 + 16) == 1)
          {
            sub_1C440C11C();
            MEMORY[0x1C69417F0](2);
            sub_1C4F01298();
            sub_1C4F02B68();
            sub_1C442E718();
            v61 = v60 & ~v59;
            if ((*(v37 + 56 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v61))
            {
              v36 = ~v59;
              while (1)
              {
                v62 = *(v37 + 48) + 24 * v61;
                if (*(v62 + 16) == 2)
                {
                  if ((*v62 & 1) == 0)
                  {

                    goto LABEL_34;
                  }

                  v63 = sub_1C4F02938();

                  if (v63)
                  {
                    break;
                  }
                }

                v61 = (v61 + 1) & v36;
                if (((*(v37 + 56 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v61) & 1) == 0)
                {
                  goto LABEL_30;
                }
              }

LABEL_34:
              v64 = v306;
            }

            else
            {
LABEL_30:

              v64 = &v306[*(type metadata accessor for VirtualInteraction(0) + 20)];
            }

            v65 = v303;
            v34 = v304;
            v66 = v293;
            v287 = *(v303 + 16);
            v287(v293, v64, v304);
            (*(v65 + 32))(v302, v66, v34);
            v3 = v309;
          }

          else
          {

            v287 = *(v303 + 16);
            v287(v302, v306, v304);
          }

          v67 = "communicationMechanism";
          sub_1C4413CF8();
          sub_1C4415DB8(v68);
          if (!v104 & v77)
          {
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            if (!sub_1C4409D60())
            {
              sub_1C4408BA4();
              swift_slowAlloc();
              sub_1C4450124();
              v268 = sub_1C4426FD0();
              sub_1C440EA54(v268, v301, v269, v270);
              sub_1C441516C();
              if (v1)
              {
                goto LABEL_220;
              }

              sub_1C443562C();
              v271 = sub_1C4408BA4();
              MEMORY[0x1C6942830](v271);
              goto LABEL_59;
            }
          }

          sub_1C444014C(v69, v70, v71, v72, v73, v74, v75, v76, v284);
          MEMORY[0x1EEE9AC00](v78);
          sub_1C43FF170();
          sub_1C4404914(v79);
          v299 = 0;
          v80 = 0;
          v82 = *(v3 + 56);
          v81 = v3 + 56;
          v83 = *(v81 - 24);
          sub_1C43FD030();
          v48 = v85 & v84;
          v87 = (v86 + 63) >> 6;
          v67 = 0x80000001C4F85600;
          v295 = ((v38 - 32) | 0x8000000000000000);
          v294 = "lookaheadDuration";
          while (2)
          {
            if (!v48)
            {
              v89 = v80;
              v38 = "lookaheadDuration";
              while (1)
              {
                v80 = v89 + 1;
                if (__OFADD__(v89, 1))
                {
                  goto LABEL_197;
                }

                if (v80 >= v87)
                {
                  goto LABEL_58;
                }

                ++v89;
                if (*(v81 + 8 * v80))
                {
                  sub_1C43FCF1C();
                  v48 = v91 & v90;
                  goto LABEL_45;
                }
              }
            }

            sub_1C442377C();
LABEL_45:
            sub_1C441CFD8(v88);
            v34 = 0xE800000000000000;
            v92 = "entityIdentifier";
            switch(v93)
            {
              case 1:
                sub_1C43FD8FC();
                v34 = v295;
                goto LABEL_52;
              case 2:
                v34 = 0xEC000000746E6576;
                sub_1C4408D0C();
                goto LABEL_52;
              case 3:
                goto LABEL_51;
              case 4:
                sub_1C44081F4();
                goto LABEL_52;
              case 5:
                sub_1C442D95C();
                goto LABEL_52;
              case 6:
                v92 = v294;
LABEL_51:
                v34 = v92 | 0x8000000000000000;
                sub_1C4405CE0();
                if (0x80000001C4F85600 != v34)
                {
                  goto LABEL_52;
                }

                goto LABEL_55;
              default:
LABEL_52:
                v36 = sub_1C440A2D8();

                if ((v36 & 1) == 0)
                {
                  continue;
                }

LABEL_55:
                sub_1C4417B28();
                v299 = v94;
                if (!v57)
                {
                  continue;
                }

                __break(1u);
                break;
            }

            break;
          }

LABEL_58:
          v95 = sub_1C4410740();
          v3 = v309;
          sub_1C4A8DF38(v95, v96, v97, v309);
          sub_1C44255C0();
LABEL_59:
          if (*(v67 + 2))
          {
            v98 = *&v306[*(type metadata accessor for VirtualInteraction(0) + 24)];
            sub_1C440C11C();
            MEMORY[0x1C69417F0](3);
            MEMORY[0x1C69417F0](v98);
            v99 = sub_1C4F02B68();
            v100 = -1 << v67[32];
            v101 = v99 & ~v100;
            if (((*&v67[((v101 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v101) & 1) == 0)
            {
LABEL_67:
              swift_bridgeObjectRelease_n();
              goto LABEL_68;
            }

            v102 = ~v100;
            while (1)
            {
              v103 = *(v67 + 6) + 24 * v101;
              v104 = *(v103 + 16) == 3 && *v103 == v98;
              if (v104)
              {
                break;
              }

              v101 = (v101 + 1) & v102;
              if (((*&v67[((v101 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v101) & 1) == 0)
              {
                goto LABEL_67;
              }
            }
          }

          sub_1C4413CF8();
          v48 = v106 >> 6;
          v34 = 8 * (v106 >> 6);
          v37 = "communicationMechanism";
          if (v107 > 0xD)
          {
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            if (!sub_1C4409D60())
            {
              sub_1C4408BA4();
              swift_slowAlloc();
              sub_1C4450124();
              v272 = sub_1C4426FD0();
              sub_1C440EA54(v272, v48, v273, v274);
              sub_1C441516C();
              if (v1)
              {
                goto LABEL_220;
              }

              sub_1C443562C();
              v275 = sub_1C4408BA4();
              MEMORY[0x1C6942830](v275);
LABEL_91:
              if (*(v37 + 16))
              {
                v124 = &v306[*(type metadata accessor for VirtualInteraction(0) + 28)];
                v125 = *v124;
                v38 = v124[1];
                sub_1C440C11C();
                MEMORY[0x1C69417F0](0);
                sub_1C4F01298();
                sub_1C4F02B68();
                sub_1C442E718();
                v48 = v127 & ~v126;
                if (((*(v37 + 56 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48) & 1) == 0)
                {
LABEL_101:

                  goto LABEL_102;
                }

                v128 = ~v126;
                v129 = *(v37 + 48);
                while (1)
                {
                  v130 = v129 + 24 * v48;
                  if (!*(v130 + 16))
                  {
                    v131 = *v130 == v125 && *(v130 + 8) == v38;
                    if (v131 || (sub_1C4F02938() & 1) != 0)
                    {
                      break;
                    }
                  }

                  v48 = (v48 + 1) & v128;
                  if (((*(v37 + 56 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48) & 1) == 0)
                  {
                    goto LABEL_101;
                  }
                }

                v3 = v309;
              }

              sub_1C4413CF8();
              sub_1C4415DB8(v136);
              v36 = "lookaheadDuration";
              v37 = "communicationDirection";
              if (!v104 & v77)
              {
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                if (!sub_1C4409D60())
                {
                  goto LABEL_217;
                }
              }

              sub_1C444014C(v137, v138, v139, v140, v141, v142, v143, v144, v284);
              MEMORY[0x1EEE9AC00](v145);
              sub_1C43FF170();
              sub_1C4404914(v146);
              v299 = 0;
              v33 = 0;
              v147 = *(v3 + 56);
              v3 += 56;
              v148 = *(v3 - 24);
              sub_1C43FD030();
              v48 = v150 & v149;
              v152 = (v151 + 63) >> 6;
              v295 = "lookaheadDuration";
              v37 = 0x80000001C4F86760;
              v294 = 0x80000001C4F86740;
              v34 = v308;
              while (2)
              {
                if (v48)
                {
                  sub_1C442377C();
LABEL_115:
                  sub_1C441CFD8(v153);
                  v157 = "entityIdentifier";
                  switch(v158)
                  {
                    case 1:
                      sub_1C43FD8FC();
                      goto LABEL_122;
                    case 2:
                      sub_1C4408D0C();
                      goto LABEL_122;
                    case 3:
                      goto LABEL_121;
                    case 4:
                      sub_1C44081F4();
                      goto LABEL_122;
                    case 5:
                      sub_1C442D95C();
                      goto LABEL_122;
                    case 6:
                      v157 = v295;
LABEL_121:
                      v159 = v157 | 0x8000000000000000;
                      sub_1C4405CE0();
                      if (0x80000001C4F86760 != v159)
                      {
                        goto LABEL_122;
                      }

                      v34 = v308;
                      goto LABEL_125;
                    default:
LABEL_122:
                      v36 = sub_1C440A2D8();

                      v34 = v308;
                      if ((v36 & 1) == 0)
                      {
                        continue;
                      }

LABEL_125:
                      sub_1C4417B28();
                      v299 = v160;
                      if (!v57)
                      {
                        continue;
                      }

                      __break(1u);
                      break;
                  }

LABEL_128:
                  v161 = sub_1C4410740();
                  sub_1C4A8DF38(v161, v162, v163, v309);
                  sub_1C44255C0();
                  goto LABEL_129;
                }

                break;
              }

              v154 = v33;
              v48 = v297;
              while (1)
              {
                v33 = v154 + 1;
                if (__OFADD__(v154, 1))
                {
                  goto LABEL_201;
                }

                if (v33 >= v152)
                {
                  goto LABEL_128;
                }

                ++v154;
                if (*(v3 + 8 * v33))
                {
                  sub_1C43FCF1C();
                  v48 = v156 & v155;
                  goto LABEL_115;
                }
              }
            }
          }

          v299 = &v284;
          MEMORY[0x1EEE9AC00](v105);
          sub_1C43FF170();
          v110 = v108 - v109;
          sub_1C4501018(0, v48, v108 - v109);
          v301 = 0;
          v111 = 0;
          v112 = *(v3 + 56);
          v3 += 56;
          v113 = *(v3 - 24);
          sub_1C43FD030();
          v114 = v38;
          v38 = v116 & v115;
          v33 = (v117 + 63) >> 6;
          v298 = 0x80000001C4F86760;
          v296 = 0x80000001C4F85600;
          v295 = ((v114 - 32) | 0x8000000000000000);
          while (2)
          {
            if (v38)
            {
              v118 = __clz(__rbit64(v38));
              v38 &= v38 - 1;
LABEL_78:
              v36 = v118 | (v111 << 6);
              v34 = 0xEC000000746E6576;
              switch(*(*(v309 + 48) + 24 * v36 + 16))
              {
                case 1:
                  sub_1C43FD8FC();
                  v34 = v295;
                  goto LABEL_85;
                case 2:
                  goto LABEL_85;
                case 3:
                  v122 = &v312;
                  goto LABEL_83;
                case 4:
                  sub_1C44081F4();
                  goto LABEL_85;
                case 5:
                  sub_1C442D95C();
                  goto LABEL_85;
                case 6:
                  v122 = &v313;
LABEL_83:
                  v34 = *(v122 - 32);
                  sub_1C4405CE0();
LABEL_85:
                  v37 = sub_1C4F02938();

                  if (v37)
                  {
                    goto LABEL_86;
                  }

                  continue;
                default:

LABEL_86:
                  sub_1C43FCBC4((v36 >> 3) & 0x1FFFFFFFFFFFFFF8);
                  if (!v57)
                  {
                    continue;
                  }

                  __break(1u);
                  break;
              }

              goto LABEL_219;
            }

            break;
          }

          v119 = v111;
          while (1)
          {
            v111 = v119 + 1;
            if (__OFADD__(v119, 1))
            {
              break;
            }

            if (v111 >= v33)
            {
              v3 = v309;
              sub_1C4A8DF38(v110, v48, v301, v309);
              v37 = v123;
              goto LABEL_91;
            }

            ++v119;
            if (*(v3 + 8 * v111))
            {
              sub_1C43FCF1C();
              v38 = v121 & v120;
              goto LABEL_78;
            }
          }

          __break(1u);
LABEL_201:
          __break(1u);
LABEL_202:
          __break(1u);
LABEL_203:
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          if (sub_1C4409D60())
          {

            goto LABEL_2;
          }

          sub_1C4408BA4();
          swift_slowAlloc();
          sub_1C4450124();
          v263 = sub_1C4426FD0();
          sub_1C440EA54(v263, v33, v264, v265);
          sub_1C441516C();
          if (v1)
          {
            goto LABEL_220;
          }

          sub_1C443562C();
          v267 = sub_1C4408BA4();
          MEMORY[0x1C6942830](v267);
        }
      }

      ++v53;
    }

    while (!*(v43 + 8 * v42));
    sub_1C43FCF1C();
    v48 = v55 & v54;
LABEL_10:
    v37 = v52 | (v42 << 6);
    v34 = 0xE800000000000000;
    switch(*(*(v309 + 48) + 24 * v37 + 16))
    {
      case 1:
        sub_1C43FD8FC();
        v34 = v294;
        break;
      case 2:

        goto LABEL_18;
      case 3:
        v56 = &v311;
        goto LABEL_15;
      case 4:
        sub_1C44081F4();
        break;
      case 5:
        sub_1C442D95C();
        break;
      case 6:
        v56 = &v312;
LABEL_15:
        v34 = *(v56 - 32);
        sub_1C4405CE0();
        break;
      default:
        break;
    }

    v36 = sub_1C4F02938();
  }

  while ((v36 & 1) == 0);
LABEL_18:
  sub_1C43FCBC4((v37 >> 3) & 0x1FFFFFFFFFFFFFF8);
  if (!v57)
  {
    goto LABEL_3;
  }

  __break(1u);
LABEL_217:
  sub_1C4408BA4();
  swift_slowAlloc();
  sub_1C4450124();
  v276 = sub_1C4426FD0();
  sub_1C440EA54(v276, v301, v277, v278);
  sub_1C441516C();
  if (v1)
  {
LABEL_220:

    swift_bridgeObjectRelease_n();
    v283 = sub_1C4408BA4();
    result = MEMORY[0x1C6942830](v283);
    __break(1u);
  }

  else
  {
    sub_1C443562C();
    v279 = sub_1C4408BA4();
    MEMORY[0x1C6942830](v279);
    sub_1C440DB84();
    v34 = v308;
LABEL_129:
    if (!*(v37 + 16))
    {

      goto LABEL_133;
    }

    v164 = type metadata accessor for VirtualInteraction(0);
    v165 = sub_1C494E0DC(*&v306[*(v164 + 32)]);
    if (v165 == 4)
    {
      v166 = sub_1C442C128();
      v167(v166);

      goto LABEL_103;
    }

    if (*(v37 + 16))
    {
      v171 = v165;
      sub_1C440C11C();
      MEMORY[0x1C69417F0](6);
      sub_1C468B054();
      sub_1C4F02B68();
      sub_1C442E718();
      v174 = v173 & ~v172;
      if ((*(v37 + 56 + ((v174 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v174))
      {
        v175 = ~v172;
        v38 = 0x676E696D6F636E69;
        v176 = 24;
        while (1)
        {
          v177 = (*(v37 + 48) + v174 * v176);
          if (v177[16] >= 6u)
          {
            v48 = 0xE800000000000000;
            v178 = 0x676E696D6F636E69;
            switch(*v177)
            {
              case 1:
                v178 = 0x676E696F6774756FLL;
                break;
              case 2:
                v178 = 0x7463657269646962;
                v48 = 0xED00006C616E6F69;
                break;
              case 3:
                v178 = 0x656E696665646E75;
                v48 = 0xE900000000000064;
                break;
              default:
                break;
            }

            v179 = 0xE800000000000000;
            v180 = 0x676E696D6F636E69;
            v34 = v308;
            switch(v171)
            {
              case 1:
                v180 = 0x676E696F6774756FLL;
                break;
              case 2:
                v180 = 0x7463657269646962;
                v179 = 0xED00006C616E6F69;
                break;
              case 3:
                v180 = 0x656E696665646E75;
                v179 = 0xE900000000000064;
                break;
              default:
                break;
            }

            if (v178 == v180 && v48 == v179)
            {
              goto LABEL_198;
            }

            v182 = sub_1C4F02938();

            sub_1C440DB84();
            if (v182)
            {
              break;
            }
          }

          v174 = (v174 + 1) & v175;
          if (((*(v37 + 56 + ((v174 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v174) & 1) == 0)
          {
            goto LABEL_68;
          }
        }

        v34 = v308;
        goto LABEL_133;
      }
    }

LABEL_68:

LABEL_102:
    v132 = sub_1C442C128();
    v133(v132);
LABEL_103:
    result = 0;
LABEL_104:
    v135 = *MEMORY[0x1E69E9840];
  }

  return result;
}

uint64_t sub_1C4D2C150(uint64_t a1)
{
  v1 = 1;
  switch(*(a1 + 16))
  {
    case 4:
      break;
    default:
      v1 = sub_1C4F02938();
      break;
  }

  return v1 & 1;
}

uint64_t sub_1C4D2C284(uint64_t a1)
{
  v1 = 1;
  switch(*(a1 + 16))
  {
    case 2:
      break;
    default:
      v1 = sub_1C4F02938();
      break;
  }

  return v1 & 1;
}

uint64_t sub_1C4D2C3B8(uint64_t a1)
{
  v1 = "entityIdentifier";
  switch(*(a1 + 16))
  {
    case 3:
      goto LABEL_4;
    case 6:
      v1 = "lookaheadDuration";
LABEL_4:
      if (0x80000001C4F85600 != (v1 | 0x8000000000000000))
      {
        goto LABEL_2;
      }

      result = 1;
      break;
    default:
LABEL_2:
      v2 = sub_1C4F02938();

      result = v2 & 1;
      break;
  }

  return result;
}

uint64_t sub_1C4D2C50C(uint64_t a1)
{
  v1 = 1;
  switch(*(a1 + 16))
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
      v1 = sub_1C4F02938();
      break;
    default:
      break;
  }

  return v1 & 1;
}

uint64_t sub_1C4D2C644(uint64_t a1)
{
  v1 = "entityIdentifier";
  switch(*(a1 + 16))
  {
    case 3:
      goto LABEL_4;
    case 6:
      v1 = "lookaheadDuration";
LABEL_4:
      if (0x80000001C4F86760 != (v1 | 0x8000000000000000))
      {
        goto LABEL_2;
      }

      result = 1;
      break;
    default:
LABEL_2:
      v2 = sub_1C4F02938();

      result = v2 & 1;
      break;
  }

  return result;
}

void *sub_1C4D2C7B8(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
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

    sub_1C4A8D368(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_1C4D2C848(uint64_t a1)
{
  v2 = type metadata accessor for VirtualInteractionContact(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C4D2C8A4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

void sub_1C4D2C9E0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
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

        break;
    }
  }

  else
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
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t type metadata accessor for GraphBasedVirtualInteractionStreamProvider()
{
  result = qword_1EDDF0EB8;
  if (!qword_1EDDF0EB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4D2CC70()
{
  result = sub_1C4EFCE48();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for GraphStore();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1C4D2CCF8()
{
  result = qword_1EDDF20E0;
  if (!qword_1EDDF20E0)
  {
    type metadata accessor for VirtualInteractionEnumerator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF20E0);
  }

  return result;
}

uint64_t sub_1C4D2CD50@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_1C4D2A7A4(a1, a2);
}

uint64_t sub_1C4D2CD80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C4D2CDE0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC24IntelligencePlatformCore38VirtualInteractionDistributionProvider_hashGenerator;
  type metadata accessor for HashGenerator();
  swift_allocObject();
  *(v1 + v3) = sub_1C4886F04();
  sub_1C4D2F76C(a1, v1 + OBJC_IVAR____TtC24IntelligencePlatformCore38VirtualInteractionDistributionProvider_config, type metadata accessor for Configuration);
  return v1;
}

void sub_1C4D2CE60()
{
  sub_1C43FEC28();
  v106 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v9);
  v11 = *(v10 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FCBE0(v13, v105[0]);
  v14 = sub_1C456902C(&qword_1EC0BDBF8, &unk_1C4F6DE80);
  sub_1C43FBD18(v14);
  v16 = *(v15 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v105 - v18;
  v20 = type metadata accessor for VirtualInteractionContact(0);
  v21 = sub_1C43FCDF8(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBD08();
  v28 = v26 - v27;
  MEMORY[0x1EEE9AC00](v29);
  sub_1C4425958();
  v30 = type metadata accessor for VirtualInteraction(0);
  v31 = *(v8 + v30[8]);
  if (v31 != 1)
  {
    if (v31)
    {
LABEL_42:
      sub_1C44086C4();
      return;
    }

    sub_1C445FFF0(v8 + v30[9], v19, &qword_1EC0BDBF8, &unk_1C4F6DE80);
    if (sub_1C44157D4(v19, 1, v20) == 1)
    {
      sub_1C4420C3C(v19, &qword_1EC0BDBF8, &unk_1C4F6DE80);
      goto LABEL_42;
    }

    sub_1C4417B58();
    sub_1C4D2F76C(v19, v1, v47);
    v48 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore38VirtualInteractionDistributionProvider_hashGenerator);
    v49 = *(v1 + 16);
    v50 = *(v1 + 24);
    v51 = sub_1C4EF9CD8();
    sub_1C43FBCE0(v51);
    v53 = v107;
    (*(v52 + 16))(v107, v106, v51);
    sub_1C43FBD94();
    sub_1C440BAA8(v54, v55, v56, v51);
    v57 = sub_1C4886564(v49, v50, v53);
    v59 = v58;
    sub_1C4420C3C(v53, &unk_1EC0B84E0, qword_1C4F0D2D0);
    if (v59)
    {
      v60 = v57;
    }

    else
    {
      v60 = 0;
    }

    if (v59)
    {
      v61 = v59;
    }

    else
    {
      v61 = 0xE000000000000000;
    }

    v62 = *v6;
    swift_isUniquelyReferenced_nonNull_native();
    v109 = *v6;
    sub_1C445FAA8(v60, v61);
    sub_1C43FC438();
    if (!__OFADD__(v65, v66))
    {
      v67 = v63;
      v68 = v64;
      sub_1C456902C(&qword_1EC0B8570, &qword_1C4F0E320);
      sub_1C441CFF4();
      v69 = sub_1C4F02458();
      v70 = v109;
      if ((v69 & 1) == 0)
      {
LABEL_23:
        *v6 = v70;
        if (v68)
        {
        }

        else
        {
          sub_1C457DBD8(v67, v60, v61, v70);
        }

        *(*(v70 + 56) + 8 * v67) = *(*(v70 + 56) + 8 * v67) + 1.0;
        sub_1C441AA90();
        sub_1C4D2F7CC(v1, v103);
        goto LABEL_42;
      }

      v71 = sub_1C445FAA8(v60, v61);
      if ((v68 & 1) == (v72 & 1))
      {
        v67 = v71;
        goto LABEL_23;
      }

      goto LABEL_50;
    }

LABEL_49:
    __break(1u);
LABEL_50:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  v108 = v4;
  v32 = *(v8 + v30[10]);
  v33 = *(v32 + 16);
  if (v33)
  {
    v34 = v32 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
    v35 = *(v23 + 72);
    v36 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1C4403B40();
      sub_1C4D2F70C(v34, v28, v37);
      v38 = *(v28 + 16);
      v39 = *(v28 + 24);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C441AA90();
      sub_1C4D2F7CC(v28, v40);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v44 = v36[2];
        sub_1C443D664();
        v36 = v45;
      }

      v41 = v36[2];
      v42 = v41 + 1;
      if (v41 >= v36[3] >> 1)
      {
        sub_1C443D664();
        v42 = v41 + 1;
        v36 = v46;
      }

      v36[2] = v42;
      v43 = &v36[2 * v41];
      v43[4] = v38;
      v43[5] = v39;
      v34 += v35;
      --v33;
    }

    while (v33);
LABEL_26:
    v73 = 0;
    v74 = 0;
    v75 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore38VirtualInteractionDistributionProvider_hashGenerator);
    v105[0] = v42;
    v105[1] = v75;
    v76 = v36 + 5;
    while (v74 < v36[2])
    {
      v77 = *(v76 - 1);
      v78 = *v76;
      v79 = sub_1C4EF9CD8();
      sub_1C43FBCE0(v79);
      v81 = v107;
      (*(v80 + 16))(v107, v106, v79);
      sub_1C43FBD94();
      sub_1C440BAA8(v82, v83, v84, v79);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v85 = sub_1C4886564(v77, v78, v81);
      v87 = v86;

      sub_1C4420C3C(v81, &unk_1EC0B84E0, qword_1C4F0D2D0);
      sub_1C44239FC(v73);
      if (!v87)
      {
        v85 = 0;
        v87 = 0xE000000000000000;
      }

      v88 = v108;
      v89 = *v108;
      swift_isUniquelyReferenced_nonNull_native();
      v109 = *v88;
      sub_1C445FAA8(v85, v87);
      sub_1C43FC438();
      if (__OFADD__(v92, v93))
      {
        goto LABEL_47;
      }

      v94 = v90;
      v95 = v91;
      sub_1C456902C(&qword_1EC0B8570, &qword_1C4F0E320);
      sub_1C441CFF4();
      v96 = sub_1C4F02458();
      v97 = v109;
      if (v96)
      {
        v98 = sub_1C445FAA8(v85, v87);
        if ((v95 & 1) != (v99 & 1))
        {
          goto LABEL_50;
        }

        v94 = v98;
      }

      *v108 = v97;
      if (v95)
      {
      }

      else
      {
        sub_1C440EA74();
        *v100 = v85;
        v100[1] = v87;
        sub_1C4430440();
        if (v102)
        {
          goto LABEL_48;
        }

        *(v97 + 16) = v101;
      }

      ++v74;
      *(*(v97 + 56) + 8 * v94) = *(*(v97 + 56) + 8 * v94) + 1.0;
      v76 += 2;
      v73 = sub_1C457EB40;
      if (v105[0] == v74)
      {

        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v36 = MEMORY[0x1E69E7CC0];
  v42 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v42)
  {
    goto LABEL_26;
  }

  sub_1C44086C4();
}

void sub_1C4D2D48C()
{
  sub_1C43FEC28();
  v114 = v2;
  v116 = v3;
  v5 = v4;
  v6 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v6);
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FCBE0(v10, v111[0]);
  v11 = sub_1C456902C(&qword_1EC0BDBF8, &unk_1C4F6DE80);
  sub_1C43FBD18(v11);
  v13 = *(v12 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v111 - v15;
  v17 = type metadata accessor for VirtualInteractionContact(0);
  v18 = sub_1C43FCDF8(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBD08();
  v25 = v23 - v24;
  MEMORY[0x1EEE9AC00](v26);
  sub_1C4425958();
  v27 = type metadata accessor for VirtualInteraction(0);
  v28 = v27;
  v29 = *(v5 + v27[8]);
  if (v29 != 1)
  {
    if (v29)
    {
LABEL_46:
      sub_1C44086C4();
      return;
    }

    sub_1C445FFF0(v5 + v27[9], v16, &qword_1EC0BDBF8, &unk_1C4F6DE80);
    if (sub_1C44157D4(v16, 1, v17) == 1)
    {
      sub_1C4420C3C(v16, &qword_1EC0BDBF8, &unk_1C4F6DE80);
      goto LABEL_46;
    }

    sub_1C4417B58();
    sub_1C4D2F76C(v16, v1, v45);
    v46 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore38VirtualInteractionDistributionProvider_hashGenerator);
    v47 = *(v1 + 16);
    v48 = *(v1 + 24);
    v49 = sub_1C4EF9CD8();
    sub_1C43FBCE0(v49);
    v51 = v115;
    (*(v50 + 16))(v115, v114, v49);
    sub_1C43FBD94();
    sub_1C440BAA8(v52, v53, v54, v49);
    v55 = sub_1C4886564(v47, v48, v51);
    v57 = v56;
    sub_1C4420C3C(v51, &unk_1EC0B84E0, qword_1C4F0D2D0);
    if (v57)
    {
      v58 = v55;
    }

    else
    {
      v58 = 0;
    }

    if (v57)
    {
      v59 = v57;
    }

    else
    {
      v59 = 0xE000000000000000;
    }

    v60 = v5 + v28[5];
    sub_1C4EF9B78();
    v61 = v116;
    v62 = *v116;
    swift_isUniquelyReferenced_nonNull_native();
    v117 = *v61;
    sub_1C445FAA8(v58, v59);
    sub_1C43FC438();
    if (!__OFADD__(v65, v66))
    {
      v67 = v63;
      v68 = v64;
      sub_1C456902C(&qword_1EC0B8570, &qword_1C4F0E320);
      sub_1C441CFF4();
      v69 = sub_1C4F02458();
      v70 = v117;
      if ((v69 & 1) == 0)
      {
LABEL_23:
        *v116 = v70;
        if (v68)
        {
        }

        else
        {
          sub_1C457DBD8(v67, v58, v59, v70);
        }

        v107 = sub_1C440DB90();
        *(v108 + 8 * v67) = v107 + *(v108 + 8 * v67);
        sub_1C441AA90();
        sub_1C4D2F7CC(v1, v109);
        goto LABEL_46;
      }

      v71 = sub_1C445FAA8(v58, v59);
      if ((v68 & 1) == (v72 & 1))
      {
        v67 = v71;
        goto LABEL_23;
      }

      goto LABEL_54;
    }

LABEL_53:
    __break(1u);
LABEL_54:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  v30 = *(v5 + v27[10]);
  v31 = *(v30 + 16);
  if (v31)
  {
    v112 = v5;
    v32 = v30 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    v33 = *(v20 + 72);
    v34 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1C4403B40();
      sub_1C4D2F70C(v32, v25, v35);
      v36 = *(v25 + 16);
      v37 = *(v25 + 24);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C441AA90();
      sub_1C4D2F7CC(v25, v38);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = *(v34 + 16);
        sub_1C443D664();
        v34 = v43;
      }

      v39 = *(v34 + 16);
      v40 = v39 + 1;
      if (v39 >= *(v34 + 24) >> 1)
      {
        v113 = v39 + 1;
        sub_1C443D664();
        v40 = v113;
        v34 = v44;
      }

      *(v34 + 16) = v40;
      v41 = v34 + 16 * v39;
      *(v41 + 32) = v36;
      *(v41 + 40) = v37;
      v32 += v33;
      --v31;
    }

    while (v31);
LABEL_26:
    v73 = 0;
    v74 = 0;
    v75 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore38VirtualInteractionDistributionProvider_hashGenerator);
    v76 = (v34 + 40);
    v111[1] = v28[5];
    v112 = v75;
    v111[0] = v34;
    v113 = v40;
    while (v74 < *(v34 + 16))
    {
      v78 = *(v76 - 1);
      v77 = *v76;
      v79 = sub_1C4EF9CD8();
      sub_1C43FBCE0(v79);
      v81 = v115;
      (*(v80 + 16))(v115, v114, v79);
      sub_1C43FBD94();
      sub_1C440BAA8(v82, v83, v84, v79);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v85 = sub_1C4886564(v78, v77, v81);
      v87 = v86;

      sub_1C4420C3C(v81, &unk_1EC0B84E0, qword_1C4F0D2D0);
      if (v87)
      {
        v88 = v85;
      }

      else
      {
        v88 = 0;
      }

      if (v87)
      {
        v89 = v87;
      }

      else
      {
        v89 = 0xE000000000000000;
      }

      sub_1C4EF9B78();
      sub_1C44239FC(v73);
      v90 = v116;
      v91 = *v116;
      swift_isUniquelyReferenced_nonNull_native();
      v117 = *v90;
      sub_1C445FAA8(v88, v89);
      sub_1C43FC438();
      if (__OFADD__(v94, v95))
      {
        goto LABEL_51;
      }

      v96 = v92;
      v97 = v93;
      sub_1C456902C(&qword_1EC0B8570, &qword_1C4F0E320);
      sub_1C441CFF4();
      v98 = sub_1C4F02458();
      v99 = v117;
      if (v98)
      {
        v100 = sub_1C445FAA8(v88, v89);
        if ((v97 & 1) != (v101 & 1))
        {
          goto LABEL_54;
        }

        v96 = v100;
      }

      v34 = v111[0];
      *v116 = v99;
      if (v97)
      {
      }

      else
      {
        sub_1C440EA74();
        *v102 = v88;
        v102[1] = v89;
        sub_1C4430440();
        if (v104)
        {
          goto LABEL_52;
        }

        *(v99 + 16) = v103;
      }

      ++v74;
      v105 = sub_1C440DB90();
      *(v106 + 8 * v96) = v105 + *(v106 + 8 * v96);
      v76 += 2;
      v73 = sub_1C457EB40;
      if (v113 == v74)
      {

        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v34 = MEMORY[0x1E69E7CC0];
  v40 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v40)
  {
    goto LABEL_26;
  }

  sub_1C44086C4();
}

uint64_t sub_1C4D2DAFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = a2;
  v39 = a3;
  v5 = type metadata accessor for Configuration();
  v6 = sub_1C43FBD18(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C4EF9CD8();
  v12 = sub_1C43FCDF8(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBD08();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v37 - v21;
  v23 = sub_1C456902C(&qword_1EC0BA0C8, &unk_1C4F6E090);
  v24 = sub_1C43FBD18(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBD08();
  v29 = v27 - v28;
  MEMORY[0x1EEE9AC00](v30);
  sub_1C4425958();
  v37 = objc_autoreleasePoolPush();
  v31 = sub_1C4EFCE48();
  sub_1C440BAA8(v3, 1, 1, v31);
  type metadata accessor for VirtualInteractionEnumerator();
  v32 = *(v14 + 16);
  v32(v22, a1, v11);
  v32(v19, v38, v11);
  sub_1C445FFF0(v3, v29, &qword_1EC0BA0C8, &unk_1C4F6E090);
  sub_1C4D2F70C(v39, v10, type metadata accessor for Configuration);
  v33 = sub_1C4D28B94(v22, v19, 1, 0, v29, 0, 0, v10);
  v34 = objc_autoreleasePoolPush();
  v40 = v33;
  v41 = sub_1C4D339F4;
  v42 = 0;
  sub_1C456902C(&unk_1EC0BA0D0, qword_1C4F13420);
  sub_1C4630B7C();
  v35 = sub_1C4F014B8();
  objc_autoreleasePoolPop(v34);

  sub_1C4420C3C(v3, &qword_1EC0BA0C8, &unk_1C4F6E090);
  objc_autoreleasePoolPop(v37);
  return v35;
}

void sub_1C4D2DDB4()
{
  sub_1C43FEC28();
  v251 = v0;
  v2 = v1;
  v221 = v1;
  v4 = v3;
  v5 = sub_1C4EF9CD8();
  v6 = sub_1C43FCDF8(v5);
  v223 = v7;
  v224 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v222 = &v181 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v258 = sub_1C4D2DAFC(v4, v2, v0 + OBJC_IVAR____TtC24IntelligencePlatformCore38VirtualInteractionDistributionProvider_config);
  v10 = sub_1C44013C0();
  v252 = v10;
  *(v10 + 16) = sub_1C4408218();
  v250 = (v10 + 16);
  v11 = sub_1C44013C0();
  v256 = v11;
  *(v11 + 16) = sub_1C4408218();
  v249 = (v11 + 16);
  v12 = sub_1C44013C0();
  v255 = v12;
  *(v12 + 16) = sub_1C4408218();
  v248 = (v12 + 16);
  v13 = sub_1C44013C0();
  v254 = v13;
  *(v13 + 16) = sub_1C4408218();
  v247 = (v13 + 16);
  v14 = sub_1C44013C0();
  v286 = v14;
  *(v14 + 16) = sub_1C4408218();
  v246 = (v14 + 16);
  v15 = sub_1C44013C0();
  v285 = v15;
  *(v15 + 16) = sub_1C4408218();
  v245 = (v15 + 16);
  v16 = sub_1C44013C0();
  v284 = v16;
  *(v16 + 16) = sub_1C4408218();
  v244 = (v16 + 16);
  v17 = sub_1C44013C0();
  v283 = v17;
  *(v17 + 16) = sub_1C4408218();
  v243 = (v17 + 16);
  v18 = sub_1C44013C0();
  v282 = v18;
  *(v18 + 16) = sub_1C4408218();
  v242 = (v18 + 16);
  v19 = sub_1C44013C0();
  v281 = v19;
  *(v19 + 16) = sub_1C4408218();
  v241 = (v19 + 16);
  v20 = sub_1C44013C0();
  v280 = v20;
  *(v20 + 16) = sub_1C4408218();
  v240 = (v20 + 16);
  v21 = sub_1C44013C0();
  v279 = v21;
  *(v21 + 16) = sub_1C4408218();
  v239 = (v21 + 16);
  v22 = sub_1C44013C0();
  v259 = v22;
  *(v22 + 16) = sub_1C4408218();
  v238 = (v22 + 16);
  v23 = sub_1C44013C0();
  v253 = v23;
  *(v23 + 16) = sub_1C4408218();
  v225 = (v23 + 16);
  v24 = sub_1C44013C0();
  v260 = v24;
  *(v24 + 16) = sub_1C4408218();
  v226 = (v24 + 16);
  v25 = sub_1C44013C0();
  v257 = v25;
  *(v25 + 16) = sub_1C4408218();
  v227 = (v25 + 16);
  v26 = sub_1C44013C0();
  v278 = v26;
  *(v26 + 16) = sub_1C4408218();
  v228 = (v26 + 16);
  v27 = sub_1C44013C0();
  v277 = v27;
  *(v27 + 16) = sub_1C4408218();
  v229 = (v27 + 16);
  v28 = sub_1C44013C0();
  v276 = v28;
  *(v28 + 16) = sub_1C4408218();
  v230 = (v28 + 16);
  v29 = sub_1C44013C0();
  v275 = v29;
  *(v29 + 16) = sub_1C4408218();
  v231 = (v29 + 16);
  v30 = sub_1C44013C0();
  v274 = v30;
  *(v30 + 16) = sub_1C4408218();
  v232 = (v30 + 16);
  v31 = sub_1C44013C0();
  v273 = v31;
  *(v31 + 16) = sub_1C4408218();
  v233 = (v31 + 16);
  v32 = sub_1C44013C0();
  v272 = v32;
  *(v32 + 16) = sub_1C4408218();
  v234 = (v32 + 16);
  v33 = sub_1C44013C0();
  v271 = v33;
  *(v33 + 16) = sub_1C4408218();
  v235 = (v33 + 16);
  v34 = sub_1C44013C0();
  v270 = v34;
  *(v34 + 16) = sub_1C4408218();
  v236 = (v34 + 16);
  v35 = sub_1C44013C0();
  v269 = v35;
  *(v35 + 16) = sub_1C4408218();
  v237 = (v35 + 16);
  v36 = sub_1C44013C0();
  v261 = v36;
  *(v36 + 16) = sub_1C4408218();
  v213 = v36 + 16;
  v37 = sub_1C44013C0();
  v268 = v37;
  *(v37 + 16) = sub_1C4408218();
  v215 = (v37 + 16);
  v38 = sub_1C44013C0();
  v267 = v38;
  *(v38 + 16) = sub_1C4408218();
  v217 = v38 + 16;
  v39 = sub_1C44013C0();
  v266 = v39;
  *(v39 + 16) = sub_1C4408218();
  v214 = (v39 + 16);
  v40 = sub_1C44013C0();
  v265 = v40;
  *(v40 + 16) = sub_1C4408218();
  v216 = (v40 + 16);
  v41 = sub_1C44013C0();
  v264 = v41;
  *(v41 + 16) = sub_1C4408218();
  v218 = (v41 + 16);
  v42 = sub_1C44013C0();
  v263 = v42;
  *(v42 + 16) = sub_1C4408218();
  v219 = (v42 + 16);
  v43 = sub_1C44013C0();
  v262 = v43;
  *(v43 + 16) = sub_1C4408218();
  v220 = (v43 + 16);
  v212 = objc_autoreleasePoolPush();
  v291 = nullsub_1;
  v292 = 0;
  v287 = MEMORY[0x1E69E9820];
  v288 = 1107296256;
  v210 = &v289;
  v289 = sub_1C44405F8;
  v290 = &unk_1F440C840;
  v211 = _Block_copy(&v287);
  v45 = v222;
  v44 = v223;
  v46 = v224;
  (*(v223 + 16))(v222, v221, v224);
  v207 = (*(v44 + 80) + 40) & ~*(v44 + 80);
  v221 = (v9 + v207 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1C44129B0();
  v209 = v47;
  sub_1C44129B0();
  v206 = v48;
  sub_1C44129B0();
  v208 = v49;
  sub_1C44129B0();
  v205 = v50;
  sub_1C44129B0();
  v204 = v51;
  sub_1C44129B0();
  v203 = v52;
  sub_1C44129B0();
  v202 = v53;
  sub_1C44129B0();
  v201 = v54;
  sub_1C44129B0();
  v200 = v55;
  sub_1C44129B0();
  v199 = v56;
  sub_1C44129B0();
  v198 = v57;
  sub_1C44129B0();
  v197 = v58;
  sub_1C44129B0();
  v196 = v59;
  sub_1C44129B0();
  v195 = v60;
  sub_1C44129B0();
  v194 = v61;
  sub_1C44129B0();
  v193 = v62;
  sub_1C44129B0();
  v192 = v63;
  sub_1C44129B0();
  v191 = v64;
  sub_1C44129B0();
  v190 = v65;
  sub_1C44129B0();
  v189 = v66;
  sub_1C44129B0();
  v188 = v67;
  sub_1C44129B0();
  v187 = v68;
  sub_1C44129B0();
  v186 = v69;
  sub_1C44129B0();
  v185 = v70;
  sub_1C44129B0();
  v184 = v71;
  sub_1C44129B0();
  v183 = v72;
  sub_1C44129B0();
  v182 = v73;
  v74 = (v73 + 15) & 0xFFFFFFFFFFFFFFF8;
  v75 = (v74 + 15) & 0xFFFFFFFFFFFFFFF8;
  v76 = (v75 + 15) & 0xFFFFFFFFFFFFFFF8;
  v77 = swift_allocObject();
  v78 = v256;
  *(v77 + 2) = v251;
  *(v77 + 3) = v78;
  *(v77 + 4) = v260;
  (*(v44 + 32))(&v77[v207], v45, v46);
  *&v77[v221] = v261;
  *&v77[v209] = v255;
  v79 = v205;
  *&v77[v206] = v257;
  *&v77[v208] = v254;
  *&v77[v79] = v278;
  v80 = v203;
  *&v77[v204] = v268;
  *&v77[v80] = v286;
  v81 = v201;
  *&v77[v202] = v277;
  *&v77[v81] = v267;
  v82 = v199;
  *&v77[v200] = v285;
  *&v77[v82] = v276;
  v83 = v197;
  *&v77[v198] = v284;
  *&v77[v83] = v275;
  v84 = v195;
  *&v77[v196] = v283;
  *&v77[v84] = v274;
  v85 = v193;
  *&v77[v194] = v266;
  *&v77[v85] = v282;
  v86 = v191;
  *&v77[v192] = v273;
  *&v77[v86] = v265;
  v87 = v189;
  *&v77[v190] = v281;
  *&v77[v87] = v272;
  v88 = v187;
  *&v77[v188] = v264;
  *&v77[v88] = v280;
  v89 = v185;
  *&v77[v186] = v271;
  *&v77[v89] = v263;
  v90 = v183;
  *&v77[v184] = v279;
  *&v77[v90] = v270;
  *&v77[v182] = v262;
  *&v77[v74] = v259;
  *&v77[v75] = v269;
  *&v77[v76] = v252;
  *&v77[(v76 + 15) & 0xFFFFFFFFFFFFFFF8] = v253;
  v291 = sub_1C4D2F460;
  v292 = v77;
  v287 = MEMORY[0x1E69E9820];
  v288 = 1107296256;
  v289 = sub_1C4440590;
  v290 = &unk_1F440C890;
  v91 = _Block_copy(&v287);

  v92 = v211;
  v93 = [v258 sinkWithCompletion:v211 receiveInput:v91];
  _Block_release(v91);
  _Block_release(v92);

  objc_autoreleasePoolPop(v212);
  sub_1C456902C(&qword_1EC0B8D58, &unk_1C4F0E210);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F6DF30;
  strcpy((inited + 32), "phone_duration");
  *(inited + 47) = -18;
  v95 = v213;
  sub_1C43FD630();
  v251 = *v95;
  sub_1C43FBDF0();
  *(inited + 48) = v96;
  *(inited + 56) = 0xD000000000000013;
  *(inited + 64) = v97;
  v98 = v215;
  sub_1C43FD630();
  v224 = *v98;
  sub_1C43FBDF0();
  *(inited + 72) = v99;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = v100;
  v101 = v217;
  sub_1C43FD630();
  v223 = *v101;
  *(inited + 96) = v223;
  strcpy((inited + 104), "voip_duration");
  *(inited + 118) = -4864;
  v102 = v214;
  sub_1C43FD630();
  v222 = *v102;
  sub_1C43FBDF0();
  *(inited + 120) = v103;
  *(inited + 128) = 0xD000000000000011;
  *(inited + 136) = v104;
  v105 = v216;
  sub_1C43FD630();
  v221 = *v105;
  sub_1C43FBDF0();
  *(inited + 144) = v106;
  *(inited + 152) = 0xD000000000000017;
  *(inited + 160) = v107;
  v108 = v218;
  sub_1C43FD630();
  v109 = *v108;
  v217 = 0xD000000000000017;
  v218 = v109;
  sub_1C43FBDF0();
  *(inited + 168) = v110;
  *(inited + 176) = 0xD000000000000017;
  *(inited + 184) = v111;
  v112 = v219;
  sub_1C43FD630();
  v219 = *v112;
  sub_1C43FBDF0();
  *(inited + 192) = v113;
  *(inited + 200) = 0xD000000000000013;
  v213 = 0xD000000000000013;
  *(inited + 208) = v114;
  v115 = v220;
  sub_1C43FD630();
  v220 = *v115;
  sub_1C43FBDF0();
  *(inited + 216) = v116;
  *(inited + 224) = 0xD000000000000014;
  *(inited + 232) = v117;
  v118 = v225;
  sub_1C43FD630();
  v225 = *v118;
  sub_1C43FBDF0();
  *(inited + 240) = v119;
  *(inited + 248) = 0xD000000000000014;
  *(inited + 256) = v120;
  v121 = v226;
  sub_1C43FD630();
  v226 = *v121;
  sub_1C43FBDF0();
  *(inited + 264) = v122;
  *(inited + 272) = 0xD00000000000001ELL;
  *(inited + 280) = v123;
  v124 = v227;
  sub_1C43FD630();
  v227 = *v124;
  sub_1C43FBDF0();
  *(inited + 288) = v125;
  *(inited + 296) = 0xD000000000000019;
  *(inited + 304) = v126;
  v127 = v228;
  sub_1C4432EAC();
  v228 = *v127;
  sub_1C43FBDF0();
  *(inited + 312) = v128;
  *(inited + 320) = 0xD000000000000016;
  *(inited + 328) = v129;
  v130 = v229;
  sub_1C4432EAC();
  v229 = *v130;
  sub_1C43FBDF0();
  *(inited + 336) = v131;
  *(inited + 344) = 0xD000000000000012;
  *(inited + 352) = v132;
  v133 = v230;
  sub_1C4432EAC();
  v230 = *v133;
  sub_1C43FBDF0();
  *(inited + 360) = v134;
  *(inited + 368) = 0xD000000000000012;
  *(inited + 376) = v135;
  v136 = v231;
  sub_1C4432EAC();
  v231 = *v136;
  sub_1C43FBDF0();
  *(inited + 384) = v137;
  *(inited + 392) = 0xD000000000000013;
  *(inited + 400) = v138;
  v139 = v232;
  sub_1C4432EAC();
  v232 = *v139;
  sub_1C43FBDF0();
  *(inited + 408) = v140;
  *(inited + 416) = 0xD000000000000017;
  *(inited + 424) = v141;
  v142 = v233;
  sub_1C4432EAC();
  v233 = *v142;
  sub_1C43FBDF0();
  *(inited + 432) = v143;
  *(inited + 440) = 0xD00000000000001DLL;
  *(inited + 448) = v144;
  v145 = v234;
  sub_1C4432EAC();
  v234 = *v145;
  sub_1C43FBDF0();
  *(inited + 456) = v146;
  *(inited + 464) = 0xD00000000000001DLL;
  *(inited + 472) = v147;
  v148 = v235;
  sub_1C4432EAC();
  v235 = *v148;
  sub_1C43FBDF0();
  *(inited + 480) = v149;
  *(inited + 488) = 0xD000000000000019;
  *(inited + 496) = v150;
  v151 = v236;
  sub_1C4432EAC();
  v236 = *v151;
  sub_1C43FBDF0();
  *(inited + 504) = v152;
  *(inited + 512) = 0xD000000000000018;
  *(inited + 520) = v153;
  v154 = v237;
  sub_1C4432EAC();
  v237 = *v154;
  *(inited + 528) = v237;
  sub_1C43FBDF0();
  *(inited + 536) = 0xD000000000000014;
  *(inited + 544) = v155;
  v156 = v250;
  sub_1C4432EAC();
  v250 = *v156;
  *(inited + 552) = v250;
  sub_1C43FBDF0();
  *(inited + 560) = 0xD000000000000014;
  *(inited + 568) = v157;
  v158 = v249;
  sub_1C4432EAC();
  v249 = *v158;
  *(inited + 576) = v249;
  sub_1C43FBDF0();
  *(inited + 584) = 0xD00000000000001ELL;
  *(inited + 592) = v159;
  v160 = v248;
  sub_1C43FF8E4();
  v248 = *v160;
  *(inited + 600) = v248;
  sub_1C43FBDF0();
  *(inited + 608) = 0xD000000000000019;
  *(inited + 616) = v161;
  v162 = v247;
  sub_1C43FF8E4();
  v247 = *v162;
  *(inited + 624) = v247;
  sub_1C43FBDF0();
  *(inited + 632) = 0xD000000000000016;
  *(inited + 640) = v163;
  v164 = v246;
  sub_1C43FF8E4();
  v246 = *v164;
  *(inited + 648) = v246;
  sub_1C43FBDF0();
  *(inited + 656) = 0xD000000000000012;
  *(inited + 664) = v165;
  v166 = v245;
  sub_1C43FF8E4();
  v245 = *v166;
  *(inited + 672) = v245;
  sub_1C43FBDF0();
  *(inited + 680) = 0xD000000000000012;
  *(inited + 688) = v167;
  v168 = v244;
  sub_1C43FF8E4();
  *(inited + 696) = *v168;
  sub_1C43FBDF0();
  *(inited + 704) = v213;
  *(inited + 712) = v169;
  v170 = v243;
  sub_1C43FF8E4();
  *(inited + 720) = *v170;
  sub_1C43FBDF0();
  *(inited + 728) = v217;
  *(inited + 736) = v171;
  v172 = v242;
  swift_beginAccess();
  *(inited + 744) = *v172;
  sub_1C43FBDF0();
  *(inited + 752) = 0xD00000000000001DLL;
  *(inited + 760) = v173;
  v174 = v241;
  sub_1C4432EAC();
  *(inited + 768) = *v174;
  sub_1C43FBDF0();
  *(inited + 776) = 0xD00000000000001DLL;
  *(inited + 784) = v175;
  v176 = v240;
  swift_beginAccess();
  *(inited + 792) = *v176;
  sub_1C43FBDF0();
  *(inited + 800) = 0xD000000000000019;
  *(inited + 808) = v177;
  v178 = v239;
  sub_1C43FD630();
  *(inited + 816) = *v178;
  sub_1C43FBDF0();
  *(inited + 824) = 0xD000000000000018;
  *(inited + 832) = v179;
  v180 = v238;
  sub_1C43FD630();
  *(inited + 840) = *v180;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C456902C(&qword_1EC0C6370, &qword_1C4F0E1A0);
  sub_1C4F00F28();

  sub_1C44086C4();
}

void sub_1C4D2EF60(void *a1)
{
  v2 = type metadata accessor for VirtualInteraction(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_autoreleasePoolPush();
  v6 = [a1 eventBody];
  if (v6)
  {
    v7 = v6;
    sub_1C4D2F70C(v6 + OBJC_IVAR____TtC24IntelligencePlatformCore23VirtualInteractionEvent_virtualInteraction, v5, type metadata accessor for VirtualInteraction);
    switch(*&v5[*(v2 + 24)])
    {
      case 0:
      case 5:
      case 8:
      case 0xALL:
      case 0xBLL:
      case 0xCLL:
      case 0x10:
      case 0x11:
        swift_beginAccess();
        swift_beginAccess();
        sub_1C4D2CE60();
        swift_endAccess();
        swift_endAccess();
        swift_beginAccess();
        sub_1C4D2D48C();
        goto LABEL_11;
      case 1:
      case 2:
      case 3:
      case 4:
      case 0x13:
        swift_beginAccess();
        swift_beginAccess();
        sub_1C4D2CE60();
        swift_endAccess();
LABEL_11:
        swift_endAccess();

        sub_1C4D2F7CC(v5, type metadata accessor for VirtualInteraction);
        break;
      default:
        sub_1C4D2F7CC(v5, type metadata accessor for VirtualInteraction);

        break;
    }
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v8 = sub_1C4F00978();
    sub_1C442B738(v8, qword_1EDDFECB8);
    v9 = sub_1C4F00968();
    v10 = sub_1C4F01CF8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1C43F8000, v9, v10, "Unable to parse virtual interaction event in the virtual interaction distribution provider", v11, 2u);
      MEMORY[0x1C6942830](v11, -1, -1);
    }
  }

  objc_autoreleasePoolPop(v12);
}

uint64_t sub_1C4D2F360()
{
  sub_1C4D2F7CC(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore38VirtualInteractionDistributionProvider_config, type metadata accessor for Configuration);
  v1 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore38VirtualInteractionDistributionProvider_hashGenerator);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for VirtualInteractionDistributionProvider()
{
  result = qword_1EC0C6530;
  if (!qword_1EC0C6530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C4D2F460(void *a1)
{
  v2 = *(sub_1C4EF9CD8() - 8);
  v3 = (*(v2 + 64) + ((*(v2 + 80) + 40) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
  v68 = *(v1 + v3);
  v28 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
  v66 = *(v1 + v5);
  v67 = *(v1 + v4);
  v65 = *(v1 + v6);
  v64 = *(v1 + v7);
  v29 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;
  v62 = *(v1 + v9);
  v63 = *(v1 + v8);
  v30 = *(v1 + v10);
  v31 = *(v1 + v11);
  v32 = *(v1 + v12);
  v33 = *(v1 + v13);
  v34 = (v29 + 15) & 0xFFFFFFFFFFFFFFF8;
  v35 = *(v1 + v14);
  v36 = *(v1 + v15);
  v37 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
  v38 = *(v1 + v26);
  v39 = *(v1 + v27);
  v40 = *(v1 + v28);
  v41 = *(v1 + v29);
  v42 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
  v43 = (v42 + 15) & 0xFFFFFFFFFFFFFFF8;
  v44 = *(v1 + v42);
  v45 = *(v1 + v43);
  v46 = *(v1 + ((v43 + 15) & 0xFFFFFFFFFFFFFFF8));
  v47 = v1[2];
  v48 = v1[3];
  v49 = v1[4];
  v61 = *(v1 + v37);
  v60 = *(v1 + v34);
  v59 = *(v1 + v25);
  v57 = *(v1 + v23);
  v58 = *(v1 + v24);
  v55 = *(v1 + v21);
  v56 = *(v1 + v22);
  v53 = *(v1 + v19);
  v54 = *(v1 + v20);
  v51 = *(v1 + v17);
  v52 = *(v1 + v18);
  v50 = *(v1 + v16);
  sub_1C4D2EF60(a1);
}

uint64_t sub_1C4D2F70C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C4D2F76C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C4D2F7CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C4D2F82C(uint64_t a1)
{
  v2 = type metadata accessor for Configuration();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C44098F0(a1, v5);
  v6 = type metadata accessor for VirtualInteractionDistributionProvider();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = sub_1C4D2CDE0(v5);

  sub_1C445458C(a1, type metadata accessor for Configuration);
  type metadata accessor for MotionStateDistributionProvider();
  v10 = swift_allocObject();
  *(v10 + 16) = 0x404E000000000000;
  type metadata accessor for MotionStateActivityIntervalProvider();
  swift_allocObject();
  v11 = MotionStateActivityIntervalProvider.init(motionStateDistributionProvider:)(v10);
  type metadata accessor for VirtualInteractionsDistributionSignal();
  v12 = swift_allocObject();
  v16 = v6;
  v17 = &off_1F440C808;
  *&v15 = v9;
  *(v12 + 64) = xmmword_1C4F0D360;
  sub_1C441D670(&v15, v12 + 24);

  *(v12 + 16) = v11;
  return v12;
}

uint64_t sub_1C4D2F98C(char a1)
{
  result = 0x75645F656E6F6870;
  switch(a1)
  {
    case 2:
    case 15:
      sub_1C4408FD0();
      result = v3 | 0xC;
      break;
    case 3:
    case 11:
    case 16:
    case 24:
      sub_1C4408FD0();
      result = v5 + 7;
      break;
    case 4:
    case 17:
      sub_1C4408FD0();
      result = v6 | 4;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
    case 20:
    case 27:
    case 33:
      sub_1C4408FD0();
      result = v7 | 1;
      break;
    case 8:
    case 21:
    case 31:
    case 32:
      result = 0xD000000000000017;
      break;
    case 9:
    case 10:
    case 22:
    case 23:
      sub_1C4408FD0();
      result = v9 + 11;
      break;
    case 12:
    case 25:
      sub_1C4408FD0();
      result = v11 + 6;
      break;
    case 18:
      result = 0xD000000000000012;
      break;
    case 19:
      result = 0xD000000000000012;
      break;
    case 26:
      return result;
    case 28:
      sub_1C4408FD0();
      result = v10 - 2;
      break;
    case 29:
      result = 0x7275645F70696F76;
      break;
    case 30:
      sub_1C4408FD0();
      result = v8 - 1;
      break;
    default:
      sub_1C4408FD0();
      result = v4 + 2;
      break;
  }

  return result;
}

void sub_1C4D2FCFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1C4420984();
  v22 = 0;
  v23 = &unk_1F43D2150;
  do
  {
    v43 = sub_1C4D2F98C(*(&unk_1F43D2150 + v22 + 32));
    v46 = v24;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](0x766572705F6E695FLL, 0xEF736E696D5F355FLL);

    v25 = *(v49 + 16);
    if (v25 >= *(v49 + 24) >> 1)
    {
      sub_1C44CD9C0();
    }

    ++v22;
    *(v49 + 16) = v25 + 1;
    v26 = v49 + 16 * v25;
    *(v26 + 32) = v43;
    *(v26 + 40) = v46;
  }

  while (v22 != 34);
  sub_1C4420984();
  v27 = 0;
  do
  {
    v44 = sub_1C4D2F98C(*(&unk_1F43D2150 + v27 + 32));
    v47 = v28;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](0xD000000000000010, 0x80000001C4FC72C0);

    v29 = *(v49 + 16);
    if (v29 >= *(v49 + 24) >> 1)
    {
      sub_1C44CD9C0();
    }

    ++v27;
    *(v49 + 16) = v29 + 1;
    v30 = v49 + 16 * v29;
    *(v30 + 32) = v44;
    *(v30 + 40) = v47;
  }

  while (v27 != 34);
  sub_1C4420984();
  v31 = 0;
  do
  {
    v32 = v23;
    v45 = sub_1C4D2F98C(v23[v31 + 32]);
    v48 = v33;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](0xD000000000000015, 0x80000001C4FC72E0);

    v34 = *(v49 + 16);
    if (v34 >= *(v49 + 24) >> 1)
    {
      sub_1C44CD9C0();
    }

    ++v31;
    *(v49 + 16) = v34 + 1;
    v35 = v49 + 16 * v34;
    *(v35 + 32) = v45;
    *(v35 + 40) = v48;
    v23 = v32;
  }

  while (v31 != 34);
  sub_1C449ADBC(v49);
  sub_1C449ADBC(v49);

  sub_1C4499940(v49, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1C4D2FFA0()
{
  sub_1C43FBCD4();
  v1[17] = v2;
  v1[18] = v0;
  v3 = sub_1C4EF9CD8();
  v1[19] = v3;
  v4 = *(v3 - 8);
  v1[20] = v4;
  v5 = *(v4 + 64) + 15;
  v1[21] = swift_task_alloc();
  v6 = type metadata accessor for ActivityInterval();
  v1[22] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v1[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4D3008C, 0, 0);
}

uint64_t sub_1C4D3008C()
{
  sub_1C43FBCD4();
  v0[24] = *(v0[18] + 16);

  v1 = swift_task_alloc();
  v0[25] = v1;
  *v1 = v0;
  v1[1] = sub_1C4D30138;
  v2 = v0[23];
  v3 = v0[17];

  return sub_1C4A3E4A8();
}

uint64_t sub_1C4D30138()
{
  sub_1C43FBCD4();
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C4D3024C, 0, 0);
}

void sub_1C4D3024C()
{
  v2 = v0[22];
  v1 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v6 = v0[18];
  v5 = v0[19];
  v7 = v0[17];
  sub_1C442E860(v6 + 24, (v0 + 2));
  v8 = v0[5];
  v9 = v0[6];
  sub_1C4409678(v0 + 2, v8);
  v101 = (*(v9 + 8))(v1, v1 + *(v2 + 20), v8, v9);
  sub_1C440962C(v0 + 2);
  sub_1C442E860(v6 + 24, (v0 + 7));
  v10 = v0[11];
  sub_1C4409678(v0 + 7, v0[10]);
  sub_1C4EF9BE8();
  v11 = sub_1C44013DC();
  v102 = v12(v11);
  v13 = *(v4 + 8);
  v13(v3, v5);
  sub_1C440962C(v0 + 7);
  sub_1C442E860(v6 + 24, (v0 + 12));
  v14 = v0[16];
  sub_1C4409678(v0 + 12, v0[15]);
  sub_1C4EF9BE8();
  v15 = sub_1C44013DC();
  v103 = v16(v15);
  v13(v3, v5);
  v100 = v0;
  sub_1C440962C(v0 + 12);
  v106 = sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
  v107 = sub_1C4F00F28();
  v17 = 0;
  do
  {
    v104 = v17;
    v18 = sub_1C4D2F98C(*(&unk_1F43D2150 + v17 + 32));
    v20 = v19;
    v108 = v18;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](0x766572705F6E695FLL, 0xEF736E696D5F355FLL);

    v105 = v18;
    v21 = sub_1C4663244(v18, v20, v103);

    if (v21)
    {
      sub_1C456902C(&qword_1EC0B85D0, &unk_1C4F6E060);
      v22 = sub_1C4F02538();
      v23 = 0;
      v24 = *(v21 + 64);
      v25 = *(v21 + 32);
      sub_1C441AAA8();
      v27 = v26 >> 6;
      v29 = v28 + 64;
      if (!v13)
      {
LABEL_5:
        v31 = v23;
        while (1)
        {
          v23 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            break;
          }

          if (v23 >= v27)
          {

            sub_1C465CD38(v22);

            goto LABEL_15;
          }

          ++v31;
          if (*(v21 + 64 + 8 * v23))
          {
            sub_1C4408238();
            goto LABEL_10;
          }
        }

        __break(1u);
        goto LABEL_62;
      }

      while (1)
      {
        sub_1C43FFB74();
LABEL_10:
        v32 = v30 | (v23 << 6);
        v33 = (*(v21 + 48) + 16 * v32);
        v35 = *v33;
        v34 = v33[1];
        v36 = *(*(v21 + 56) + 8 * v32);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4F019C8();
        sub_1C4417B70();
        *(v29 + v37) |= v38;
        v39 = (*(v22 + 48) + 16 * v32);
        *v39 = v35;
        v39[1] = v34;
        sub_1C4403B58(v40);
        if (v42)
        {
          goto LABEL_64;
        }

        *(v22 + 16) = v41;
        if (!v13)
        {
          goto LABEL_5;
        }
      }
    }

    sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);
    sub_1C4F00F28();
LABEL_15:
    v43 = sub_1C457F798();
    v44 = v107;
    if (v43)
    {
      swift_isUniquelyReferenced_nonNull_native();
      sub_1C4413D1C();
      sub_1C4660314();

      v44 = v108;
    }

    else
    {
      sub_1C43FE208();
      if (v45)
      {
        swift_isUniquelyReferenced_nonNull_native();
        sub_1C44129BC();
        sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
        sub_1C440B840();
        sub_1C43FF900();
        sub_1C440EA9C();
        sub_1C4F02478();
      }
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](0xD000000000000010, 0x80000001C4FC72C0);

    v46 = sub_1C4404C28();
    v48 = sub_1C4663244(v46, v47, v102);

    if (v48)
    {
      sub_1C456902C(&qword_1EC0B85D0, &unk_1C4F6E060);
      v49 = sub_1C4F02538();
      v50 = 0;
      v51 = *(v48 + 64);
      v52 = *(v48 + 32);
      sub_1C441AAA8();
      v54 = v53 >> 6;
      v56 = v55 + 64;
      if (v13)
      {
        while (1)
        {
          sub_1C43FFB74();
LABEL_29:
          v59 = v57 | (v50 << 6);
          v60 = (*(v48 + 48) + 16 * v59);
          v62 = *v60;
          v61 = v60[1];
          v63 = *(*(v48 + 56) + 8 * v59);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C4F019C8();
          sub_1C4417B70();
          *(v56 + v64) |= v65;
          v66 = (*(v49 + 48) + 16 * v59);
          *v66 = v62;
          v66[1] = v61;
          sub_1C4403B58(v67);
          if (v42)
          {
            break;
          }

          *(v49 + 16) = v68;
          if (!v13)
          {
            goto LABEL_24;
          }
        }

LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
        return;
      }

LABEL_24:
      v58 = v50;
      while (1)
      {
        v50 = v58 + 1;
        if (__OFADD__(v58, 1))
        {
          break;
        }

        if (v50 >= v54)
        {

          sub_1C465CD38(v49);

          goto LABEL_37;
        }

        ++v58;
        if (*(v48 + 64 + 8 * v50))
        {
          sub_1C4408238();
          goto LABEL_29;
        }
      }

LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);
    sub_1C4F00F28();
LABEL_37:
    if (sub_1C457F798())
    {
      swift_isUniquelyReferenced_nonNull_native();
      sub_1C4413D1C();
      sub_1C4660314();

      v44 = v105;
    }

    else
    {
      sub_1C43FE208();
      if (v69)
      {
        swift_isUniquelyReferenced_nonNull_native();
        sub_1C44129BC();
        sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
        sub_1C440B840();
        sub_1C43FF900();
        sub_1C440EA9C();
        sub_1C4F02478();
      }
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](0xD000000000000015, 0x80000001C4FC72E0);

    v70 = sub_1C4404C28();
    v72 = sub_1C4663244(v70, v71, v101);

    if (v72)
    {
      sub_1C456902C(&qword_1EC0B85D0, &unk_1C4F6E060);
      v73 = sub_1C4F02538();
      v74 = 0;
      v75 = *(v72 + 64);
      v76 = *(v72 + 32);
      sub_1C441AAA8();
      v78 = v77 >> 6;
      for (i = v79 + 64; v13; v73[2] = v91)
      {
        sub_1C43FFB74();
LABEL_47:
        v83 = v81 | (v74 << 6);
        v84 = (*(v72 + 48) + 16 * v83);
        v86 = *v84;
        v85 = v84[1];
        v87 = *(*(v72 + 56) + 8 * v83);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v88 = sub_1C4F019C8();
        *(i + ((v83 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v83;
        v89 = (v73[6] + 16 * v83);
        *v89 = v86;
        v89[1] = v85;
        *(v73[7] + 8 * v83) = v88;
        v90 = v73[2];
        v42 = __OFADD__(v90, 1);
        v91 = v90 + 1;
        if (v42)
        {
          goto LABEL_66;
        }
      }

      v82 = v74;
      while (1)
      {
        v74 = v82 + 1;
        if (__OFADD__(v82, 1))
        {
          goto LABEL_63;
        }

        if (v74 >= v78)
        {

          sub_1C465CD38(v73);

          goto LABEL_55;
        }

        ++v82;
        if (*(v72 + 64 + 8 * v74))
        {
          sub_1C4408238();
          goto LABEL_47;
        }
      }
    }

    sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);
    sub_1C4F00F28();
LABEL_55:
    if (sub_1C457F798())
    {
      swift_isUniquelyReferenced_nonNull_native();
      sub_1C4413D1C();
      sub_1C4660314();

      v44 = v105;
    }

    else
    {
      v92 = sub_1C43FE208();
      if (v93)
      {
        v94 = v92;
        swift_isUniquelyReferenced_nonNull_native();
        sub_1C44129BC();
        sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
        sub_1C440B840();
        v44 = v105;
        v95 = *(*(v105 + 48) + 16 * v94 + 8);

        v96 = *(*(v105 + 56) + 8 * v94);
        sub_1C4F02478();
      }
    }

    v107 = v44;
    v17 = v104 + 1;
  }

  while (v104 != 33);
  v97 = v100[23];
  v98 = v100[21];

  sub_1C445458C(v97, type metadata accessor for ActivityInterval);

  v99 = v100[1];

  v99(v44);
}

uint64_t sub_1C4D30BE4@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v5 = sub_1C4D31124(&qword_1EC0C6548);
  *a2 = a1;
  a2[1] = v2;
  a2[2] = v5;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4D30C50()
{
  sub_1C43FBCD4();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C457386C;

  return sub_1C4D2FFA0();
}

uint64_t sub_1C4D30F4C()
{
  v1 = *(v0 + 16);

  sub_1C440962C((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1C4D30FB0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C4573EBC;

  return sub_1C4D30C50();
}

uint64_t sub_1C4D3109C(uint64_t a1)
{
  result = sub_1C4D31124(&qword_1EC0C6540);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4D310E0(uint64_t a1)
{
  result = sub_1C4D31124(&qword_1EC0BAFD8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4D31124(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for VirtualInteractionsDistributionSignal();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1C4D31180(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a1;
  v57 = sub_1C456902C(&qword_1EC0B8600, &unk_1C4F0D4E0);
  v4 = sub_1C43FBCE0(v57);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v62 = &v48 - v7;
  v8 = sub_1C456902C(&qword_1EC0C0080, &qword_1C4F3E138);
  v9 = sub_1C43FCDF8(v8);
  v55 = v10;
  v56 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v54 = &v48 - v13;
  v14 = type metadata accessor for Configuration();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C4EF9CD8();
  v19 = sub_1C43FCDF8(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v19);
  v26 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v48 - v27;
  v29 = sub_1C456902C(&qword_1EC0BA0C8, &unk_1C4F6E090);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v29 - 8);
  v33 = &v48 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v48 - v34;
  v36 = *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore25VirtualInteractionsSignal_publisher);
  if (v36)
  {
    v37 = *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore25VirtualInteractionsSignal_publisher);
  }

  else
  {
    v51 = *(sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0) + 36);
    v38 = sub_1C4EFCE48();
    sub_1C440BAA8(v35, 1, 1, v38);
    v50 = OBJC_IVAR____TtC24IntelligencePlatformCore25VirtualInteractionsSignal_config;
    v52 = type metadata accessor for VirtualInteractionEnumerator();
    v48 = v17;
    v49 = v2;
    v39 = *(v21 + 16);
    v40 = v53;
    v39(v28, v53, v18);
    v39(v26, v40 + v51, v18);
    sub_1C4D3196C(v35, v33);
    v41 = v48;
    sub_1C443131C(v49 + v50, v48, type metadata accessor for Configuration);
    v42 = sub_1C4D28B94(v28, v26, 1, 0, v33, 1, 1, v41);
    v43 = objc_autoreleasePoolPush();
    v59 = v42;
    v60 = sub_1C4D339F4;
    v61 = 0;
    sub_1C456902C(&unk_1EC0BA0D0, qword_1C4F13420);
    sub_1C4401CBC(&qword_1EDDF0348, &unk_1EC0BA0D0, qword_1C4F13420);
    v37 = sub_1C4F014B8();
    objc_autoreleasePoolPop(v43);

    sub_1C4D319DC(v35);
    v36 = 0;
  }

  v44 = v36;
  v45 = v37;
  sub_1C456902C(&qword_1EC0B8608, &qword_1C4F3B4B0);
  v46 = v58;
  sub_1C4EFFC38();
  if (v46)
  {
  }

  else
  {
    sub_1C456902C(&qword_1EC0C0070, &unk_1C4F3E120);
    sub_1C4401CBC(&qword_1EDDEFF40, &qword_1EC0B8600, &unk_1C4F0D4E0);
    v47 = v54;
    sub_1C4F02848();

    (*(v55 + 32))(a2, v47, v56);
  }
}

uint64_t sub_1C4D31670(uint64_t a1, uint64_t *a2)
{
  v2[2] = a1;
  v4 = type metadata accessor for VirtualInteraction(0);
  v2[3] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v6 = swift_task_alloc();
  v7 = *a2;
  v2[4] = v6;
  v2[5] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1C4D3170C, 0, 0);
}

uint64_t sub_1C4D3170C()
{
  v1 = [*(v0 + 40) eventBody];
  if (v1)
  {
    v2 = v1;
    v4 = *(v0 + 24);
    v3 = *(v0 + 32);
    v5 = *(v0 + 16);
    sub_1C443131C(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore23VirtualInteractionEvent_virtualInteraction, v3, type metadata accessor for VirtualInteraction);

    v6 = sub_1C4EF9CD8();
    sub_1C43FBCE0(v6);
    v8 = *(v7 + 16);
    v8(v5, v3, v6);
    v9 = *(v4 + 20);
    v10 = sub_1C456902C(&qword_1EC0C0070, &unk_1C4F3E120);
    v8(v5 + *(v10 + 28), v3 + v9, v6);
    sub_1C4D31A44(v3, v5 + *(v10 + 32));
    v11 = 0;
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v12 = sub_1C4F00978();
    sub_1C442B738(v12, qword_1EDDFECB8);
    v13 = sub_1C4F00968();
    v14 = sub_1C4F01CF8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1C43F8000, v13, v14, "Unable to parse eventBody from read event in virtual interactions featurizer", v15, 2u);
      MEMORY[0x1C6942830](v15, -1, -1);
    }

    v10 = sub_1C456902C(&qword_1EC0C0070, &unk_1C4F3E120);
    v11 = 1;
  }

  v16 = *(v0 + 32);
  sub_1C440BAA8(*(v0 + 16), v11, 1, v10);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1C4D3196C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BA0C8, &unk_1C4F6E090);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4D319DC(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0BA0C8, &unk_1C4F6E090);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C4D31A44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VirtualInteraction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4D31AA8(uint64_t a1, uint64_t a2)
{
  sub_1C4D33188(a1, v2 + OBJC_IVAR____TtC24IntelligencePlatformCore25VirtualInteractionsSignal_config, type metadata accessor for Configuration);
  *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore25VirtualInteractionsSignal_publisher) = a2;
  return v2;
}

void sub_1C4D31B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v39 = MEMORY[0x1E69E7CC0];
  sub_1C44CD9C0();
  v29 = 0;
  v30 = 0;
  v31 = v39;
  v32 = *(v39 + 16);
  v33 = 16 * v32;
  do
  {
    v34 = v29;
    if (*(&unk_1F43D2B00 + v30 + 32))
    {
      v35 = 0x6F69746365726964;
    }

    else
    {
      v35 = 0x73696E616863656DLL;
    }

    if (*(&unk_1F43D2B00 + v30 + 32))
    {
      v36 = 0xE90000000000006ELL;
    }

    else
    {
      v36 = 0xE90000000000006DLL;
    }

    v40 = v31;
    v37 = v32 + 1;
    if (v32 >= *(v31 + 24) >> 1)
    {
      sub_1C44CD9C0();
      v31 = v40;
    }

    *(v31 + 16) = v37;
    v38 = v31 + v33;
    *(v38 + 32) = v35;
    *(v38 + 40) = v36;
    v33 += 16;
    v29 = 1;
    v32 = v37;
    v30 = 1u;
  }

  while ((v34 & 1) == 0);

  sub_1C4499940(v31, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1C4D31C90(char *a1)
{
  v3 = objc_autoreleasePoolPush();
  sub_1C4D31CE8(v1, a1, &v5);
  objc_autoreleasePoolPop(v3);
  return v5;
}

uint64_t sub_1C4D31CE8@<X0>(uint64_t a1@<X0>, char *a2@<X1>, void *a3@<X8>)
{
  v48 = a3;
  v44 = a2;
  v4 = type metadata accessor for Configuration();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v45 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C456902C(&qword_1EC0BA0C8, &unk_1C4F6E090);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v41 - v12;
  v46 = sub_1C4EF9CD8();
  v14 = *(v46 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v17 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v41 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v41 - v22;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  v47 = v24 + 16;
  v43 = a1;
  v25 = *(a1 + OBJC_IVAR____TtC24IntelligencePlatformCore25VirtualInteractionsSignal_publisher);
  if (v25)
  {
    v26 = v25;
  }

  else
  {
    sub_1C4EF9AC8();
    v27 = sub_1C4EFCE48();
    sub_1C440BAA8(v13, 1, 1, v27);
    v41[0] = OBJC_IVAR____TtC24IntelligencePlatformCore25VirtualInteractionsSignal_config;
    v41[1] = type metadata accessor for VirtualInteractionEnumerator();
    v42 = v14;
    v28 = *(v14 + 16);
    v29 = v46;
    v28(v20, v23, v46);
    v28(v17, v44, v29);
    v30 = v13;
    sub_1C4D3196C(v13, v10);
    v31 = v45;
    sub_1C44098F0(v43 + v41[0], v45);
    v32 = sub_1C4D28B94(v20, v17, 0, 0, v10, 1, 1, v31);
    v33 = objc_autoreleasePoolPush();
    aBlock = v32;
    v50 = sub_1C4D339F4;
    v51 = 0;
    sub_1C456902C(&unk_1EC0BA0D0, qword_1C4F13420);
    sub_1C4401CBC(&qword_1EDDF0348, &unk_1EC0BA0D0, qword_1C4F13420);
    v26 = sub_1C4F014B8();
    objc_autoreleasePoolPop(v33);

    sub_1C4D319DC(v30);
    (*(v42 + 8))(v23, v29);
    v25 = 0;
  }

  v53 = sub_1C4D321B0;
  v54 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v50 = 1107296256;
  v51 = sub_1C44405F8;
  v52 = &unk_1F440C978;
  v34 = _Block_copy(&aBlock);
  v53 = sub_1C4D32FBC;
  v54 = v24;
  aBlock = MEMORY[0x1E69E9820];
  v50 = 1107296256;
  v51 = sub_1C45AF9C8;
  v52 = &unk_1F440C9A0;
  v35 = _Block_copy(&aBlock);
  v36 = v25;

  v37 = [v26 sinkWithCompletion:v34 shouldContinue:v35];

  _Block_release(v35);
  _Block_release(v34);

  swift_beginAccess();
  v38 = *(v24 + 16);
  *v48 = v38;
  v39 = v38;
}

void sub_1C4D321B0(void *a1)
{
  v1 = [a1 error];
  if (v1)
  {
    v2 = v1;
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v3 = sub_1C4F00978();
    sub_1C442B738(v3, qword_1EDDFECB8);
    v4 = v2;
    oslog = sub_1C4F00968();
    v5 = sub_1C4F01CD8();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v13 = v7;
      *v6 = 136315138;
      v8 = v4;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v9 = sub_1C4F01198();
      v11 = sub_1C441D828(v9, v10, &v13);

      *(v6 + 4) = v11;
      _os_log_impl(&dword_1C43F8000, oslog, v5, "Unable to fetch events from stream: virtual interactions stream with error: %s", v6, 0xCu);
      sub_1C440962C(v7);
      MEMORY[0x1C6942830](v7, -1, -1);
      MEMORY[0x1C6942830](v6, -1, -1);
    }

    else
    {
    }
  }
}

BOOL sub_1C4D32370(void *a1, uint64_t a2)
{
  v3 = [a1 eventBody];
  if (v3)
  {
    swift_beginAccess();
    v4 = *(a2 + 16);
    *(a2 + 16) = v3;
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v5 = sub_1C4F00978();
    sub_1C442B738(v5, qword_1EDDFECB8);
    v6 = sub_1C4F00968();
    v7 = sub_1C4F01CF8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1C43F8000, v6, v7, "Unable to parse eventBody from read event in virtual interactions featurizer", v8, 2u);
      MEMORY[0x1C6942830](v8, -1, -1);
    }
  }

  return v3 == 0;
}

void *sub_1C4D3249C(uint64_t a1)
{
  sub_1C4577DBC();
  v2 = sub_1C4F00F28();
  v3 = a1 + OBJC_IVAR____TtC24IntelligencePlatformCore23VirtualInteractionEvent_virtualInteraction;
  v4 = type metadata accessor for VirtualInteraction(0);
  v5 = *(v3 + *(v4 + 24));
  v6 = *(v3 + *(v4 + 32));
  v7 = objc_opt_self();
  if ([v7 featureValueWithInt64_])
  {
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C4660314();
  }

  else
  {
    v8 = sub_1C445FAA8(0x73696E616863656DLL, 0xE90000000000006DLL);
    if (v9)
    {
      v10 = v8;
      swift_isUniquelyReferenced_nonNull_native();
      v11 = v2[3];
      sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
      sub_1C4F02458();
      v12 = *(v2[6] + 16 * v10 + 8);

      v13 = *(v2[7] + 8 * v10);
      sub_1C4F02478();
    }
  }

  if ([v7 featureValueWithInt64_])
  {
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C4660314();
  }

  else
  {
    v14 = sub_1C445FAA8(0x6F69746365726964, 0xE90000000000006ELL);
    if (v15)
    {
      v16 = v14;
      swift_isUniquelyReferenced_nonNull_native();
      v17 = v2[3];
      sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
      sub_1C4F02458();
      v18 = *(v2[6] + 16 * v16 + 8);

      v19 = *(v2[7] + 8 * v16);
      sub_1C4F02478();
    }
  }

  return v2;
}

uint64_t sub_1C4D32738(char *a1)
{
  v1 = sub_1C4D31C90(a1);
  if (v1)
  {
    v2 = v1;
    v3 = sub_1C4D3249C(v1);

    return v3;
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v5 = sub_1C4F00978();
    sub_1C442B738(v5, qword_1EDDFECB8);
    v6 = sub_1C4F00968();
    v7 = sub_1C4F01CF8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1C43F8000, v6, v7, "VirtualInteractionsEvent is nil", v8, 2u);
      MEMORY[0x1C6942830](v8, -1, -1);
    }

    sub_1C4577DBC();

    return sub_1C4F00F28();
  }
}

void sub_1C4D32870(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v40 = sub_1C4EF9CD8();
  v7 = sub_1C43FCDF8(v40);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v14 = (v13 - v12);
  v15 = type metadata accessor for FeatureProviderSnapshot(0);
  v16 = sub_1C43FCDF8(v15);
  v38 = v17;
  v39 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  v22 = v21 - v20;
  v23 = *(a2 + 16);
  v24 = MEMORY[0x1E69E7CC0];
  if (v23)
  {
    v35 = a3;
    v43 = MEMORY[0x1E69E7CC0];
    v42 = v22;
    sub_1C459D0A8();
    v25 = v42;
    v24 = v43;
    v27 = *(v9 + 16);
    v26 = v9 + 16;
    v28 = a2 + ((*(v26 + 64) + 32) & ~*(v26 + 64));
    v36 = *(v26 + 56);
    v37 = v27;
    do
    {
      v37(v14, v28, v40);
      v37(v25, v14, v40);
      v29 = sub_1C4D32738(v14);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v30 = v4;
      v31 = sub_1C4D32FC4(v29, a1);

      sub_1C465CF34(v31);
      v33 = v32;
      v25 = v42;

      (*(v26 - 8))(v14, v40);
      *(v42 + *(v39 + 20)) = v33;
      v34 = *(v43 + 16);
      if (v34 >= *(v43 + 24) >> 1)
      {
        sub_1C459D0A8();
        v25 = v42;
      }

      *(v43 + 16) = v34 + 1;
      sub_1C4D33188(v25, v43 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v34, type metadata accessor for FeatureProviderSnapshot);
      v28 += v36;
      --v23;
      v4 = v30;
    }

    while (v23);
    a3 = v35;
  }

  *a3 = v24;
}

uint64_t sub_1C4D32B38()
{
  v0 = sub_1C4EF9CD8();
  v1 = sub_1C43FCDF8(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FBCC4();
  v8 = (v7 - v6);
  sub_1C4EF9C88();
  v9 = sub_1C4D32738(v8);
  (*(v3 + 8))(v8, v0);
  return v9;
}

uint64_t sub_1C4D32BF4(uint64_t a1)
{
  v2 = sub_1C4EF9CD8();
  v3 = sub_1C43FCDF8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v10 = (v9 - v8);
  sub_1C4EF9C88();
  sub_1C4D32738(v10);
  (*(v5 + 8))(v10, v2);
  v11 = sub_1C44F9274(a1);

  return v11;
}

uint64_t sub_1C4D32D50()
{
  sub_1C4467948(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore25VirtualInteractionsSignal_config);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for VirtualInteractionsSignal()
{
  result = qword_1EDDE1200;
  if (!qword_1EDDE1200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4D32E18()
{
  result = type metadata accessor for Configuration();
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

unint64_t sub_1C4D32F3C(uint64_t a1)
{
  result = sub_1C4D32F64();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C4D32F64()
{
  result = qword_1EC0C6550;
  if (!qword_1EC0C6550)
  {
    type metadata accessor for VirtualInteractionsSignal();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6550);
  }

  return result;
}

void *sub_1C4D32FC4(_BYTE *a1, uint64_t a2)
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
      v4 = sub_1C45867F0(v13, v7, v4, a2);
      MEMORY[0x1C6942830](v13, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v8);
  v9 = v14 - ((8 * v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1C4501018(0, v7, v9);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4586AB8(v9, v7, v4, a2);
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

uint64_t sub_1C4D33188(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C4D331F8()
{
  v2 = v0;
  v3 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v97 = *(v3 - 8);
  v4 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1C43FBD08();
  v95 = v5 - v6;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v7);
  v94 = &v91 - v8;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v9);
  v92 = &v91 - v10;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v91 - v12;
  v14 = sub_1C456902C(&qword_1EC0BDBF8, &unk_1C4F6DE80);
  sub_1C43FBD18(v14);
  v16 = *(v15 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C4402A68();
  v18 = type metadata accessor for VirtualInteractionContact(0);
  v19 = sub_1C43FCDF8(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBD08();
  v93 = v24 - v25;
  sub_1C43FD1D0();
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v91 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v91 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v91 - v33;
  v35 = type metadata accessor for VirtualInteraction(0);
  sub_1C4460108(v2 + v35[9], v1, &qword_1EC0BDBF8, &unk_1C4F6DE80);
  if (sub_1C44157D4(v1, 1, v18) == 1)
  {
    result = sub_1C4420C3C(v1, &qword_1EC0BDBF8, &unk_1C4F6DE80);
    v37 = v18;
  }

  else
  {
    sub_1C481B660(v1, v34);
    v38 = v34[*(v18 + 32)];
    v37 = v18;
    if (v38 != 2 && (v38 & 1) == 0)
    {
      sub_1C456902C(&qword_1EC0B8E98, &unk_1C4F0E8F0);
      v70 = *(v97 + 72);
      v71 = (*(v97 + 80) + 32) & ~*(v97 + 80);
      v29 = swift_allocObject();
      *(v29 + 1) = xmmword_1C4F0D130;
      sub_1C4460108(&v34[*(v37 + 28)], &v29[v71], &unk_1EC0BA0E0, &qword_1C4F105A0);
      sub_1C44209A8();
      sub_1C4D36B98(v34, v72);
      goto LABEL_32;
    }

    sub_1C44209A8();
    result = sub_1C4D36B98(v34, v39);
  }

  v40 = *(v2 + v35[8]);
  v41 = *(v2 + v35[10]);
  v96 = v37;
  if (v40 == 1)
  {
    v42 = *(v41 + 16);
    v29 = MEMORY[0x1E69E7CC0];
    if (v42)
    {
      v98 = MEMORY[0x1E69E7CC0];
      sub_1C459D660();
      sub_1C440A2FC();
      v44 = v41 + v43;
      v93 = *(v21 + 72);
      do
      {
        sub_1C4D36B3C(v44, v32, type metadata accessor for VirtualInteractionContact);
        sub_1C4460108(&v32[*(v96 + 28)], v13, &unk_1EC0BA0E0, &qword_1C4F105A0);
        sub_1C4D36B98(v32, type metadata accessor for VirtualInteractionContact);
        v98 = v29;
        v46 = *(v29 + 2);
        v45 = *(v29 + 3);
        if (v46 >= v45 >> 1)
        {
          sub_1C442C138(v45);
          sub_1C459D660();
          v29 = v98;
        }

        *(v29 + 2) = v46 + 1;
        sub_1C4433A0C();
        sub_1C44CDA30(v13, &v29[v47 + *(v48 + 72) * v46], &unk_1EC0BA0E0, &qword_1C4F105A0);
        v44 += v93;
        --v42;
      }

      while (v42);
    }
  }

  else
  {
    v49 = 0;
    v50 = *(v41 + 16);
    v51 = MEMORY[0x1E69E7CC0];
    while (v50 != v49)
    {
      if (v49 >= *(v41 + 16))
      {
        __break(1u);
        return result;
      }

      v52 = (*(v21 + 80) + 32) & ~*(v21 + 80);
      v53 = *(v21 + 72);
      sub_1C4D36B3C(v41 + v52 + v53 * v49, v29, type metadata accessor for VirtualInteractionContact);
      v54 = v29[*(v37 + 32)];
      if (v54 == 2 || (v54 & 1) == 0)
      {
        sub_1C481B660(v29, v93);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v98 = v51;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v57 = *(v51 + 2);
          sub_1C459D608();
          v51 = v98;
        }

        v59 = *(v51 + 2);
        v58 = *(v51 + 3);
        v60 = v59 + 1;
        if (v59 >= v58 >> 1)
        {
          sub_1C442C138(v58);
          v91 = v61;
          sub_1C459D608();
          v60 = v91;
          v51 = v98;
        }

        ++v49;
        *(v51 + 2) = v60;
        result = sub_1C481B660(v93, &v51[v52 + v59 * v53]);
        v37 = v96;
      }

      else
      {
        sub_1C44209A8();
        result = sub_1C4D36B98(v29, v55);
        ++v49;
      }
    }

    v62 = *(v51 + 2);
    if (v62)
    {
      v98 = MEMORY[0x1E69E7CC0];
      sub_1C459D660();
      sub_1C440A2FC();
      v91 = v51;
      v64 = &v51[v63];
      v93 = *(v21 + 72);
      v65 = v92;
      do
      {
        sub_1C4D36B3C(v64, v32, type metadata accessor for VirtualInteractionContact);
        sub_1C4460108(&v32[*(v96 + 28)], v65, &unk_1EC0BA0E0, &qword_1C4F105A0);
        sub_1C4D36B98(v32, type metadata accessor for VirtualInteractionContact);
        v98 = v29;
        v67 = *(v29 + 2);
        v66 = *(v29 + 3);
        if (v67 >= v66 >> 1)
        {
          sub_1C442C138(v66);
          sub_1C459D660();
          v29 = v98;
        }

        *(v29 + 2) = v67 + 1;
        sub_1C4433A0C();
        sub_1C44CDA30(v65, &v29[v68 + *(v69 + 72) * v67], &unk_1EC0BA0E0, &qword_1C4F105A0);
        v64 += v93;
        --v62;
      }

      while (v62);
    }

    else
    {

      v29 = MEMORY[0x1E69E7CC0];
    }
  }

LABEL_32:
  v73 = *(v29 + 2);
  v75 = v94;
  v74 = v95;
  if (v73)
  {
    sub_1C4433A0C();
    v77 = &v29[v76];
    v79 = *(v78 + 72);
    v80 = MEMORY[0x1E69E7CC0];
    v97 = v79;
    do
    {
      sub_1C4460108(v77, v75, &unk_1EC0BA0E0, &qword_1C4F105A0);
      sub_1C4460108(v75, v74, &unk_1EC0BA0E0, &qword_1C4F105A0);
      v81 = sub_1C4EFF0C8();
      if (sub_1C44157D4(v74, 1, v81) == 1)
      {
        sub_1C4420C3C(v75, &unk_1EC0BA0E0, &qword_1C4F105A0);
        sub_1C4420C3C(v74, &unk_1EC0BA0E0, &qword_1C4F105A0);
      }

      else
      {
        v82 = sub_1C4EFF048();
        v83 = v75;
        v85 = v84;
        sub_1C4420C3C(v83, &unk_1EC0BA0E0, &qword_1C4F105A0);
        (*(*(v81 - 8) + 8))(v74, v81);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v88 = *(v80 + 16);
          sub_1C443D664();
          v80 = v89;
        }

        v86 = *(v80 + 16);
        if (v86 >= *(v80 + 24) >> 1)
        {
          sub_1C443D664();
          v80 = v90;
        }

        *(v80 + 16) = v86 + 1;
        v87 = v80 + 16 * v86;
        *(v87 + 32) = v82;
        *(v87 + 40) = v85;
        v75 = v94;
        v74 = v95;
        v79 = v97;
      }

      v77 += v79;
      --v73;
    }

    while (v73);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v80;
}

id sub_1C4D339F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_1C4EF9AD8();
  result = [objc_allocWithZone(MEMORY[0x1E698F138]) initWithEventBody:v3 timestamp:v4];
  *a2 = result;
  return result;
}

uint64_t sub_1C4D33A60(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C646E6168 && a2 == 0xE600000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x54746361746E6F63 && a2 == 0xEB00000000657079;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x49746361746E6F63 && a2 == 0xE900000000000044;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E65727275437369 && a2 == 0xED00007265735574;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000011 && 0x80000001C4FC7440 == a2)
          {

            return 5;
          }

          else
          {
            v11 = sub_1C4F02938();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C4D33C68(char a1)
{
  result = 0x4E79616C70736964;
  switch(a1)
  {
    case 1:
      result = 0x656C646E6168;
      break;
    case 2:
      result = 0x54746361746E6F63;
      break;
    case 3:
      result = 0x49746361746E6F63;
      break;
    case 4:
      result = 0x6E65727275437369;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4D33D34(void *a1)
{
  v4 = v1;
  v6 = sub_1C456902C(&qword_1EC0C65F0, &qword_1C4F6E438);
  sub_1C43FCDF8(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C4402A68();
  v12 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4D36C7C();
  sub_1C440F61C();
  v13 = *v4;
  v14 = v4[1];
  sub_1C43FBF44();
  sub_1C4F02738();
  if (!v2)
  {
    v15 = v4[2];
    v16 = v4[3];
    sub_1C43FBF44();
    sub_1C4F02798();
    v27 = v4[4];
    type metadata accessor for GDContactType(0);
    sub_1C440EAB0();
    sub_1C4D36AF4(v17, v18);
    sub_1C4414374();
    sub_1C43FEF68();
    sub_1C4F027E8();
    v19 = type metadata accessor for VirtualInteractionContact(0);
    v20 = v19[7];
    sub_1C44255D4();
    sub_1C4EFF0C8();
    sub_1C440DBAC();
    sub_1C4D36AF4(v21, v22);
    sub_1C43FEF68();
    sub_1C4F02778();
    v23 = *(v4 + v19[8]);
    sub_1C43FBF44();
    sub_1C4F02748();
    sub_1C442E728(v19[9]);
    type metadata accessor for GDMeetingParticipantStatus(0);
    sub_1C441AACC();
    sub_1C4D36AF4(v24, v25);
    sub_1C4414374();
    sub_1C43FEF68();
    sub_1C4F027E8();
  }

  return (*(v8 + 8))(v3, v6);
}

uint64_t sub_1C4D33FA0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v4 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  sub_1C43FBD18(v4);
  v6 = *(v5 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C4402A68();
  v8 = sub_1C456902C(&qword_1EC0C65D0, &qword_1C4F6E430);
  v9 = sub_1C43FCDF8(v8);
  v46 = v10;
  v47 = v9;
  v12 = *(v11 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v44 - v14;
  v16 = type metadata accessor for VirtualInteractionContact(0);
  v17 = sub_1C43FBCE0(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = (v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *(v22 + 28);
  v24 = sub_1C4EFF0C8();
  v50 = v21;
  sub_1C440BAA8(v21 + v23, 1, 1, v24);
  v25 = a1[3];
  v26 = a1[4];
  v51 = a1;
  sub_1C4409678(a1, v25);
  sub_1C4D36C7C();
  v48 = v15;
  v27 = v49;
  sub_1C4F02BC8();
  if (v27)
  {
    v29 = v50;
    sub_1C440962C(v51);

    return sub_1C4420C3C(v29 + v23, &unk_1EC0BA0E0, &qword_1C4F105A0);
  }

  else
  {
    v44[1] = v24;
    v49 = v2;
    LOBYTE(v53) = 0;
    sub_1C4426280();
    v28 = sub_1C4F02618();
    v30 = v50;
    *v50 = v28;
    v30[1] = v31;
    LOBYTE(v53) = 1;
    sub_1C4426280();
    v30[2] = sub_1C4F02678();
    v30[3] = v32;
    type metadata accessor for GDContactType(0);
    v52 = 2;
    sub_1C440EAB0();
    sub_1C4D36AF4(v33, v34);
    sub_1C4413D2C();
    sub_1C440493C();
    v30[4] = v53;
    sub_1C44255D4();
    sub_1C440DBAC();
    sub_1C4D36AF4(v35, v36);
    v37 = v49;
    sub_1C4F02658();
    sub_1C4D36CD0(v37, v30 + v23);
    LOBYTE(v53) = 4;
    sub_1C4426280();
    *(v30 + *(v16 + 32)) = sub_1C4F02628();
    type metadata accessor for GDMeetingParticipantStatus(0);
    v52 = 5;
    sub_1C441AACC();
    sub_1C4D36AF4(v38, v39);
    sub_1C4413D2C();
    sub_1C440493C();
    v40 = *(v16 + 36);
    v41 = sub_1C4435648();
    v42(v41);
    *(v30 + v40) = v53;
    sub_1C4D36B3C(v30, v45, type metadata accessor for VirtualInteractionContact);
    sub_1C440962C(v51);
    return sub_1C4D36B98(v30, type metadata accessor for VirtualInteractionContact);
  }
}

uint64_t sub_1C4D343C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4D33A60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4D343EC(uint64_t a1)
{
  v2 = sub_1C4D36C7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4D34428(uint64_t a1)
{
  v2 = sub_1C4D36C7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4D34494()
{
  v2 = sub_1C456902C(&qword_1EC0BDBF8, &unk_1C4F6DE80);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4402A68();
  v6 = type metadata accessor for VirtualInteraction(0);
  v7 = *(*(v0 + *(v6 + 40)) + 16);
  sub_1C4460108(v0 + *(v6 + 36), v1, &qword_1EC0BDBF8, &unk_1C4F6DE80);
  v8 = type metadata accessor for VirtualInteractionContact(0);
  v9 = sub_1C44157D4(v1, 1, v8) != 1;
  sub_1C4420C3C(v1, &qword_1EC0BDBF8, &unk_1C4F6DE80);
  result = v7 + v9;
  if (__OFADD__(v7, v9))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C4D3456C()
{
  result = sub_1C4D34494();
  if (result)
  {
    v1 = result;
    if (result >= 5)
    {
      if ((result - 5) >= 5)
      {
        if ((result - 10) >= 0xA)
        {
          if ((result - 20) >= 0x1E)
          {
            if ((result - 50) >= 0x32)
            {
              if (result <= 99)
              {
                if (qword_1EDDFECB0 != -1)
                {
                  sub_1C43FFB88();
                }

                v2 = sub_1C4F00978();
                sub_1C442B738(v2, qword_1EDDFECB8);
                v3 = sub_1C4F00968();
                v4 = sub_1C4F01CF8();
                if (os_log_type_enabled(v3, v4))
                {
                  v5 = swift_slowAlloc();
                  *v5 = 134217984;
                  *(v5 + 4) = v1;
                  _os_log_impl(&dword_1C43F8000, v3, v4, "Number of participants does not fall into any of the buckets - %f", v5, 0xCu);
                  sub_1C43FBE2C();
                }

                return -1;
              }

              else
              {
                return 100;
              }
            }

            else
            {
              return 50;
            }
          }

          else
          {
            return 20;
          }
        }

        else
        {
          return 10;
        }
      }

      else
      {
        return 5;
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1C4D346C0()
{
  sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  *(inited + 32) = 0xD000000000000022;
  *(inited + 40) = 0x80000001C4F9B160;
  v2 = sub_1C4D3456C();
  v3 = objc_opt_self();
  *(inited + 48) = [v3 featureValueWithInt64_];
  sub_1C4577DBC();
  v4 = sub_1C4F00F28();
  v5 = *(v0 + *(type metadata accessor for VirtualInteraction(0) + 24));
  if (sub_1C465BFB0(v5, &unk_1F43D8CB0))
  {
    if ([v3 featureValueWithInt64_])
    {
      swift_isUniquelyReferenced_nonNull_native();
      sub_1C4660314();
    }

    else
    {
      v6 = sub_1C445FAA8(0xD000000000000016, 0x80000001C4F9B070);
      if (v7)
      {
        v8 = v6;
        swift_isUniquelyReferenced_nonNull_native();
        v13 = v4;
        v9 = *(v4 + 24);
        sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
        sub_1C4F02458();
        v4 = v13;
        v10 = *(*(v13 + 48) + 16 * v8 + 8);

        v11 = *(*(v13 + 56) + 8 * v8);
        sub_1C4F02478();
      }
    }
  }

  return v4;
}

void sub_1C4D348BC()
{
  v0 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v0);
  v2 = *(v1 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  v43 = &v39 - v4;
  v41 = sub_1C4D346C0();
  v5 = sub_1C4D331F8();
  v6 = 0;
  v44 = *(v5 + 16);
  v45 = v5;
  v7 = v5 + 40;
  v42 = MEMORY[0x1E69E7CC0];
  v40 = v5 + 40;
LABEL_2:
  v8 = (v7 + 16 * v6);
  for (i = v6; v44 != i; ++i)
  {
    if (i >= *(v45 + 16))
    {
      __break(1u);
      return;
    }

    v10 = *(v8 - 1);
    v11 = *v8;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v12 = sub_1C45FB538();
    v47 = v10;
    v48 = v11;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v13 = sub_1C4F01438();
    v15 = v14;
    if (v12)
    {
      v16 = v13;
      v17 = sub_1C4EF9CD8();
      v46 = i;
      v18 = v43;
      sub_1C440BAA8(v43, 1, 1, v17);
      v19 = sub_1C4886564(v16, v15, v18);
      v21 = v20;

      sub_1C45942C8(v12);

      v22 = v18;
      i = v46;
      sub_1C4420C3C(v22, &unk_1EC0B84E0, qword_1C4F0D2D0);
      if (v21)
      {
        v23 = v19;
        v24 = v42;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = *(v24 + 16);
          sub_1C443D664();
          v24 = v28;
        }

        v7 = v40;
        v25 = *(v24 + 16);
        if (v25 >= *(v24 + 24) >> 1)
        {
          sub_1C443D664();
          v24 = v29;
        }

        v6 = v46 + 1;
        *(v24 + 16) = v25 + 1;
        v42 = v24;
        v26 = v24 + 16 * v25;
        *(v26 + 32) = v23;
        *(v26 + 40) = v21;
        goto LABEL_2;
      }
    }

    else
    {
    }

    v8 += 2;
  }

  sub_1C4577DBC();
  v47 = v42;
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C443D694();
  sub_1C4F01048();

  sub_1C43FBC98();
  if (sub_1C4594E18())
  {
    v30 = v41;
    swift_isUniquelyReferenced_nonNull_native();
    v47 = v30;
    sub_1C4660314();
  }

  else
  {
    v31 = v41;
    v32 = sub_1C445FAA8(0xD00000000000001BLL, 0x80000001C4F9B140);
    if (v33)
    {
      v34 = v32;
      swift_isUniquelyReferenced_nonNull_native();
      v47 = v31;
      v35 = *(v31 + 24);
      sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
      sub_1C4F02458();
      v36 = v47;
      v37 = *(*(v47 + 48) + 16 * v34 + 8);

      v38 = *(*(v36 + 56) + 8 * v34);
      sub_1C4F02478();
    }
  }
}

uint64_t sub_1C4D34C6C(uint64_t a1, uint64_t a2)
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
      v7 = a1 == 0x73696E616863656DLL && a2 == 0xE90000000000006DLL;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6F69746365726964 && a2 == 0xE90000000000006ELL;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7265646E6573 && a2 == 0xE600000000000000;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6E65697069636572 && a2 == 0xEA00000000007374;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0xD000000000000017 && 0x80000001C4FC7420 == a2)
              {

                return 7;
              }

              else
              {
                v13 = sub_1C4F02938();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C4D34EF8(char a1)
{
  result = 0x7461447472617473;
  switch(a1)
  {
    case 1:
      result = 0x65746144646E65;
      break;
    case 2:
      result = 0x73696E616863656DLL;
      break;
    case 3:
      result = 0x6449656C646E7562;
      break;
    case 4:
      result = 0x6F69746365726964;
      break;
    case 5:
      result = 0x7265646E6573;
      break;
    case 6:
      result = 0x6E65697069636572;
      break;
    case 7:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4D34FE4(void *a1)
{
  v4 = v1;
  v6 = sub_1C456902C(&qword_1EC0C6598, &qword_1C4F6E428);
  sub_1C43FCDF8(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C4402A68();
  v12 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4D36AA0();
  sub_1C440F61C();
  sub_1C4EF9CD8();
  sub_1C44114EC();
  sub_1C4D36AF4(v13, v14);
  sub_1C43FBF44();
  sub_1C4F027E8();
  if (!v2)
  {
    v15 = type metadata accessor for VirtualInteraction(0);
    v16 = v15[5];
    sub_1C43FBF44();
    sub_1C4F027E8();
    sub_1C442E728(v15[6]);
    type metadata accessor for GDInteractionMechanism(0);
    sub_1C4409390();
    sub_1C4D36AF4(v17, v18);
    sub_1C4414374();
    sub_1C43FEF68();
    sub_1C4F027E8();
    v19 = (v4 + v15[7]);
    v20 = *v19;
    v21 = v19[1];
    sub_1C44255D4();
    sub_1C43FBF44();
    sub_1C4F02798();
    sub_1C442E728(v15[8]);
    type metadata accessor for GDInteractionDirection(0);
    sub_1C440FF3C();
    sub_1C4D36AF4(v22, v23);
    sub_1C4414374();
    sub_1C43FEF68();
    sub_1C4F027E8();
    v24 = v15[9];
    type metadata accessor for VirtualInteractionContact(0);
    sub_1C442D97C();
    sub_1C4D36AF4(v25, v26);
    sub_1C43FEF68();
    sub_1C4F02778();
    sub_1C442E728(v15[10]);
    sub_1C456902C(&qword_1EC0C6580, &qword_1C4F6E420);
    sub_1C4D36BF0(&qword_1EC0C65B0, &qword_1EC0C65A8);
    sub_1C4414374();
    sub_1C43FEF68();
    sub_1C4F027E8();
    sub_1C442E728(v15[11]);
    type metadata accessor for GDMeetingParticipantStatus(0);
    sub_1C441AACC();
    sub_1C4D36AF4(v27, v28);
    sub_1C4414374();
    sub_1C43FEF68();
    sub_1C4F027E8();
  }

  return (*(v8 + 8))(v3, v6);
}

uint64_t sub_1C4D35378@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = sub_1C456902C(&qword_1EC0BDBF8, &unk_1C4F6DE80);
  sub_1C43FBD18(v3);
  v5 = *(v4 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v52 - v7;
  v9 = sub_1C4EF9CD8();
  v10 = sub_1C43FCDF8(v9);
  v59 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBD08();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v52 - v15;
  v17 = sub_1C456902C(&qword_1EC0C6560, &qword_1C4F6E418);
  v55 = sub_1C43FCDF8(v17);
  v56 = v18;
  v20 = *(v19 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v52 - v22;
  v58 = type metadata accessor for VirtualInteraction(0);
  v24 = sub_1C43FBCE0(v58);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v28 = (&v52 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = a1[3];
  v29 = a1[4];
  v62 = a1;
  sub_1C4409678(a1, v30);
  sub_1C4D36AA0();
  v57 = v23;
  v31 = v61;
  sub_1C4F02BC8();
  v60 = v9;
  if (v31)
  {
    return sub_1C440962C(v62);
  }

  v61 = v8;
  LOBYTE(v64) = 0;
  sub_1C44114EC();
  sub_1C4D36AF4(v32, v33);
  sub_1C4F026C8();
  v53 = *(v59 + 32);
  v53(v28, v16, v9);
  LOBYTE(v64) = 1;
  sub_1C4F026C8();
  v34 = v28;
  v35 = sub_1C441E8D8();
  (v53)(v35);
  type metadata accessor for GDInteractionMechanism(0);
  v63 = 2;
  sub_1C4409390();
  sub_1C4D36AF4(v36, v37);
  sub_1C4413D2C();
  sub_1C4F026C8();
  *(v28 + v28[6]) = v64;
  sub_1C44255D4();
  v38 = sub_1C4F02678();
  v39 = (v28 + v28[7]);
  *v39 = v38;
  v39[1] = v40;
  type metadata accessor for GDInteractionDirection(0);
  v63 = 4;
  sub_1C440FF3C();
  sub_1C4D36AF4(v41, v42);
  sub_1C4413D2C();
  sub_1C4432EC8();
  sub_1C4F026C8();
  *(v28 + v28[8]) = v64;
  type metadata accessor for VirtualInteractionContact(0);
  LOBYTE(v64) = 5;
  sub_1C442D97C();
  sub_1C4D36AF4(v43, v44);
  v45 = v61;
  sub_1C4432EC8();
  sub_1C4F02658();
  sub_1C44CDA30(v45, v28 + v28[9], &qword_1EC0BDBF8, &unk_1C4F6DE80);
  sub_1C456902C(&qword_1EC0C6580, &qword_1C4F6E420);
  v63 = 6;
  sub_1C4D36BF0(&qword_1EC0C6588, &qword_1EC0C6578);
  sub_1C4413D2C();
  sub_1C4432EC8();
  sub_1C4F026C8();
  *(v28 + v28[10]) = v64;
  type metadata accessor for GDMeetingParticipantStatus(0);
  v63 = 7;
  sub_1C441AACC();
  sub_1C4D36AF4(v46, v47);
  sub_1C4413D2C();
  sub_1C4432EC8();
  sub_1C4F026C8();
  v48 = v28[11];
  v49 = sub_1C43FE224();
  v50(v49);
  *(v34 + v48) = v64;
  sub_1C4D36B3C(v34, v54, type metadata accessor for VirtualInteraction);
  sub_1C440962C(v62);
  return sub_1C4D36B98(v34, type metadata accessor for VirtualInteraction);
}

uint64_t sub_1C4D35A94(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1C4F02AF8();
  a4(v8, v6);
  return sub_1C4F02B68();
}

uint64_t sub_1C4D35AE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4D34C6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4D35B10(uint64_t a1)
{
  v2 = sub_1C4D36AA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4D35B4C(uint64_t a1)
{
  v2 = sub_1C4D36AA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id sub_1C4D36008(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v6 = type metadata accessor for VirtualInteraction(0);
  v7 = sub_1C43FBCE0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBD08();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  v16 = 0;
  if (a3 == 1)
  {
    v17 = sub_1C4EF96B8();
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    sub_1C4EF96A8();
    sub_1C43FF920();
    sub_1C4D36AF4(v20, v21);
    sub_1C4EF9698();
    sub_1C4D36B3C(v15, v12, type metadata accessor for VirtualInteraction);
    v22 = objc_allocWithZone(v4);
    sub_1C4D36B3C(v12, v22 + OBJC_IVAR____TtC24IntelligencePlatformCore23VirtualInteractionEvent_virtualInteraction, type metadata accessor for VirtualInteraction);
    v24.receiver = v22;
    v24.super_class = v4;
    v16 = objc_msgSendSuper2(&v24, sel_init);
    sub_1C4D36B98(v12, type metadata accessor for VirtualInteraction);

    sub_1C4D36B98(v15, type metadata accessor for VirtualInteraction);
  }

  return v16;
}

uint64_t sub_1C4D36370()
{
  v0 = sub_1C4EF96F8();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1C4EF96E8();
  sub_1C4EF96C8();
  type metadata accessor for VirtualInteraction(0);
  sub_1C43FF920();
  sub_1C4D36AF4(v3, v4);
  v5 = sub_1C4EF96D8();

  return v5;
}

uint64_t sub_1C4D366A0()
{
  result = type metadata accessor for VirtualInteraction(319);
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

void sub_1C4D36788()
{
  sub_1C4EF9CD8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for GDInteractionMechanism(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for GDInteractionDirection(319);
      if (v2 <= 0x3F)
      {
        sub_1C4D368F4(319, qword_1EDDFAC78, type metadata accessor for VirtualInteractionContact, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1C4D368F4(319, &qword_1EDDFA590, type metadata accessor for VirtualInteractionContact, MEMORY[0x1E69E62F8]);
          if (v4 <= 0x3F)
          {
            type metadata accessor for GDMeetingParticipantStatus(319);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1C4D368F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1C4D36980()
{
  sub_1C44FCC6C(319, &qword_1EDDFEAB0);
  if (v0 <= 0x3F)
  {
    type metadata accessor for GDContactType(319);
    if (v1 <= 0x3F)
    {
      sub_1C4D368F4(319, &qword_1EDDFCC90, MEMORY[0x1E69A9810], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1C44FCC6C(319, &qword_1EDDFEA48);
        if (v3 <= 0x3F)
        {
          type metadata accessor for GDMeetingParticipantStatus(319);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}