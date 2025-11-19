uint64_t sub_1C4B70B3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0C3D68, qword_1C4F558A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_1C4B70BBC()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_1C4409678(v0, v1);
  (*(v2 + 32))(v7, v1, v2);
  v3 = v8;
  if (v8)
  {
    v4 = v9;
    sub_1C4409678(v7, v8);
    v5 = (*(v4 + 32))(v3, v4);
    sub_1C440962C(v7);
  }

  else
  {
    sub_1C4423A0C(v7, &qword_1EC0BB380, &unk_1C4F1F2E0);
    return 0.0;
  }

  return v5;
}

uint64_t sub_1C4B70C8C(void *a1, void *a2)
{
  v242 = sub_1C4EF9CD8();
  v240 = *(v242 - 8);
  v5 = *(v240 + 64);
  MEMORY[0x1EEE9AC00](v242);
  v236 = &v234 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v241 = sub_1C456902C(&qword_1EC0B9CE8, &qword_1C4F11650);
  v7 = *(*(v241 - 8) + 64);
  MEMORY[0x1EEE9AC00](v241);
  sub_1C43FBFDC();
  v237 = v8;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v234 - v10;
  v12 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  sub_1C43FBFDC();
  v235 = v14;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v15);
  v239 = &v234 - v16;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v17);
  v238 = &v234 - v18;
  sub_1C43FD1D0();
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v234 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v234 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v234 - v26;
  sub_1C442D3F0();
  v29 = *(v28 + 24);
  v30 = sub_1C4410C50();
  v31(v30);
  v32 = v246;
  if (v246)
  {
    sub_1C4407C00();
    v34 = *(v33 + 8);
    v35 = sub_1C4410C50();
    v37 = v36(v35);
    sub_1C440962C(v245);
  }

  else
  {
    sub_1C4423A0C(v245, &qword_1EC0BDA78, &qword_1C4F30788);
    v37 = 0.0;
  }

  sub_1C4413854();
  v39 = *(v38 + 24);
  v40 = sub_1C44203D8();
  v41(v40);
  if (!v246)
  {
    sub_1C4423A0C(v245, &qword_1EC0BDA78, &qword_1C4F30788);
    if (v32)
    {
      return 0;
    }

LABEL_9:
    sub_1C442D3F0();
    v48 = *(v47 + 24);
    v49 = sub_1C4410C50();
    v50(v49);
    v51 = v246;
    if (v246)
    {
      sub_1C4407C00();
      v53 = *(v52 + 16);
      v54 = sub_1C4410C50();
      v56 = v55(v54);
      sub_1C440962C(v245);
    }

    else
    {
      sub_1C4423A0C(v245, &qword_1EC0BDA78, &qword_1C4F30788);
      v56 = 0.0;
    }

    sub_1C4413854();
    v58 = *(v57 + 24);
    v59 = sub_1C44203D8();
    v60(v59);
    if (v246)
    {
      sub_1C440B3D8();
      v62 = *(v61 + 16);
      v63 = sub_1C44203D8();
      v64(v63);
      result = sub_1C44090C8();
      if (!v51 || v56 != v2)
      {
        return result;
      }
    }

    else
    {
      sub_1C4423A0C(v245, &qword_1EC0BDA78, &qword_1C4F30788);
      if (v51)
      {
        return 0;
      }
    }

    sub_1C442D3F0();
    v66 = *(v65 + 24);
    v67 = sub_1C4410C50();
    v68(v67);
    v69 = v246;
    if (v246)
    {
      sub_1C4407C00();
      v71 = *(v70 + 24);
      v72 = sub_1C4410C50();
      v74 = v73(v72);
      sub_1C440962C(v245);
    }

    else
    {
      sub_1C4423A0C(v245, &qword_1EC0BDA78, &qword_1C4F30788);
      v74 = 0.0;
    }

    sub_1C4413854();
    v76 = *(v75 + 24);
    v77 = sub_1C44203D8();
    v78(v77);
    if (v246)
    {
      sub_1C440B3D8();
      v80 = *(v79 + 24);
      v81 = sub_1C44203D8();
      v82(v81);
      result = sub_1C44090C8();
      if (!v69 || v74 != v2)
      {
        return result;
      }
    }

    else
    {
      sub_1C4423A0C(v245, &qword_1EC0BDA78, &qword_1C4F30788);
      if (v69)
      {
        return 0;
      }
    }

    sub_1C442D3F0();
    v84 = *(v83 + 32);
    v85 = sub_1C4410C50();
    v86(v85);
    v87 = v246;
    if (v246)
    {
      sub_1C4407C00();
      v89 = *(v88 + 8);
      v90 = sub_1C4410C50();
      v234 = v91(v90);
      v87 = v92;
      sub_1C440962C(v245);
    }

    else
    {
      sub_1C4423A0C(v245, &qword_1EC0BB380, &unk_1C4F1F2E0);
      v234 = 0;
    }

    sub_1C4413854();
    v94 = *(v93 + 32);
    v95 = sub_1C44203D8();
    v96(v95);
    if (v246)
    {
      sub_1C440B3D8();
      v98 = *(v97 + 8);
      v99 = sub_1C44203D8();
      v101 = v100(v99);
      v103 = v102;
      sub_1C440962C(v245);
      if (v87)
      {
        if (!v103)
        {
          goto LABEL_79;
        }

        v104 = v234 == v101 && v87 == v103;
        if (v104)
        {
        }

        else
        {
          sub_1C4411254();
          v105 = sub_1C4F02938();

          if ((v105 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v103)
      {
        goto LABEL_79;
      }
    }

    else
    {
      sub_1C4423A0C(v245, &qword_1EC0BB380, &unk_1C4F1F2E0);
      if (v87)
      {
        goto LABEL_79;
      }
    }

    sub_1C442D3F0();
    v107 = *(v106 + 32);
    v108 = sub_1C4410C50();
    v109(v108);
    if (v244)
    {
      sub_1C4400EE0(v243);
      v111 = *(v110 + 16);
      v112 = sub_1C4410C50();
      v113(v112);
      if (v246)
      {
        sub_1C4407C00();
        v115 = *(v114 + 24);
        v116 = sub_1C4410C50();
        v234 = v117(v116);
        sub_1C44037D0();
        v118 = 0;
        goto LABEL_48;
      }

      sub_1C440962C(v243);
      v119 = &unk_1EC0BB388;
      v120 = &unk_1C4F1F2F0;
      v121 = v245;
    }

    else
    {
      v119 = &qword_1EC0BB380;
      v120 = &unk_1C4F1F2E0;
      v121 = v243;
    }

    sub_1C4423A0C(v121, v119, v120);
    v234 = 0;
    v118 = 1;
LABEL_48:
    v122 = a2[3];
    v123 = a2[4];
    sub_1C4400EE0(a2);
    v125 = *(v124 + 32);
    v126 = sub_1C4410C50();
    v127(v126);
    if (v244)
    {
      sub_1C4400EE0(v243);
      v129 = *(v128 + 16);
      v130 = sub_1C4410C50();
      v131(v130);
      if (v246)
      {
        sub_1C4407C00();
        v133 = *(v132 + 24);
        v134 = sub_1C4410C50();
        v136 = v135(v134);
        sub_1C44037D0();
        if (v234 == v136)
        {
          v137 = v118;
        }

        else
        {
          v137 = 1;
        }

        if (v137)
        {
          return 0;
        }

        goto LABEL_58;
      }

      sub_1C440962C(v243);
      v138 = &unk_1EC0BB388;
      v139 = &unk_1C4F1F2F0;
      v140 = v245;
    }

    else
    {
      v138 = &qword_1EC0BB380;
      v139 = &unk_1C4F1F2E0;
      v140 = v243;
    }

    sub_1C4423A0C(v140, v138, v139);
    if ((v118 & 1) == 0)
    {
      return 0;
    }

LABEL_58:
    sub_1C442D3F0();
    v142 = *(v141 + 32);
    v143 = sub_1C4410C50();
    v144(v143);
    if (v244)
    {
      sub_1C4400EE0(v243);
      v146 = *(v145 + 16);
      v147 = sub_1C4410C50();
      v148(v147);
      if (v246)
      {
        sub_1C4407C00();
        v150 = *(v149 + 16);
        v151 = sub_1C4410C50();
        v234 = v152(v151);
        v154 = v153;
        sub_1C44037D0();
        goto LABEL_64;
      }

      sub_1C440962C(v243);
      v155 = &unk_1EC0BB388;
      v156 = &unk_1C4F1F2F0;
      v157 = v245;
    }

    else
    {
      v155 = &qword_1EC0BB380;
      v156 = &unk_1C4F1F2E0;
      v157 = v243;
    }

    sub_1C4423A0C(v157, v155, v156);
    v234 = 0;
    v154 = 0;
LABEL_64:
    v158 = a2[3];
    v159 = a2[4];
    sub_1C4400EE0(a2);
    v161 = *(v160 + 32);
    v162 = sub_1C4410C50();
    v163(v162);
    v164 = v244;
    if (v244)
    {
      sub_1C4400EE0(v243);
      v166 = *(v165 + 16);
      v167 = sub_1C4410C50();
      v168(v167);
      v164 = v246;
      if (v246)
      {
        sub_1C4407C00();
        v170 = *(v169 + 16);
        v171 = sub_1C4410C50();
        v164 = v172(v171);
        v174 = v173;
        sub_1C44037D0();
        goto LABEL_70;
      }

      sub_1C440962C(v243);
      v175 = &unk_1EC0BB388;
      v176 = &unk_1C4F1F2F0;
      v177 = v245;
    }

    else
    {
      v175 = &qword_1EC0BB380;
      v176 = &unk_1C4F1F2E0;
      v177 = v243;
    }

    sub_1C4423A0C(v177, v175, v176);
    v174 = 0;
LABEL_70:
    if (v154)
    {
      if (v174)
      {
        if (v234 == v164 && v154 == v174)
        {

          goto LABEL_84;
        }

        v179 = sub_1C4F02938();

        if (v179)
        {
LABEL_84:
          sub_1C442D3F0();
          v181 = *(v180 + 8);
          v182 = sub_1C4410C50();
          v183(v182);
          v184 = a2[3];
          v185 = a2[4];
          sub_1C4400EE0(a2);
          v187 = *(v186 + 8);
          v188 = sub_1C4410C50();
          v189(v188);
          v190 = *(v241 + 48);
          sub_1C4467FE0(v27, v11);
          sub_1C4467FE0(v25, &v11[v190]);
          v191 = v242;
          if (sub_1C44157D4(v11, 1, v242) == 1)
          {
            sub_1C4423A0C(v25, &unk_1EC0B84E0, qword_1C4F0D2D0);
            sub_1C4423A0C(v27, &unk_1EC0B84E0, qword_1C4F0D2D0);
            sub_1C440F650(&v11[v190]);
            if (!v104)
            {
              goto LABEL_91;
            }

            sub_1C4423A0C(v11, &unk_1EC0B84E0, qword_1C4F0D2D0);
          }

          else
          {
            sub_1C4467FE0(v11, v22);
            sub_1C440F650(&v11[v190]);
            if (v104)
            {
              sub_1C440FC60(v25);
              sub_1C440FC60(v27);
              (*(v240 + 8))(v22, v191);
LABEL_91:
              v192 = v11;
LABEL_102:
              sub_1C4423A0C(v192, &qword_1EC0B9CE8, &qword_1C4F11650);
              return 0;
            }

            v193 = v240;
            v194 = &v11[v190];
            v195 = v236;
            (*(v240 + 32))(v236, v194, v191);
            sub_1C4B71A4C();
            LODWORD(v234) = sub_1C4F010B8();
            v196 = *(v193 + 8);
            v196(v195, v191);
            sub_1C4411254();
            sub_1C4423A0C(v197, v198, v199);
            sub_1C4411254();
            sub_1C4423A0C(v200, v201, v202);
            v196(v22, v242);
            sub_1C4411254();
            v191 = v242;
            sub_1C4423A0C(v203, v204, v205);
            if ((v234 & 1) == 0)
            {
              return 0;
            }
          }

          v206 = a1[4];
          sub_1C4409678(a1, a1[3]);
          v207 = *(v206 + 16);
          v208 = v238;
          v209 = sub_1C4408DF8();
          v210(v209);
          v211 = a2[4];
          sub_1C4409678(a2, a2[3]);
          v212 = *(v211 + 16);
          v213 = v239;
          v214 = sub_1C4408DF8();
          v215(v214);
          v216 = *(v241 + 48);
          v217 = v237;
          sub_1C4467FE0(v208, v237);
          sub_1C4467FE0(v213, v217 + v216);
          sub_1C440F650(v217);
          if (v104)
          {
            sub_1C4423A0C(v213, &unk_1EC0B84E0, qword_1C4F0D2D0);
            sub_1C4423A0C(v208, &unk_1EC0B84E0, qword_1C4F0D2D0);
            sub_1C440F650(v217 + v216);
            if (v104)
            {
              sub_1C4423A0C(v217, &unk_1EC0B84E0, qword_1C4F0D2D0);
              goto LABEL_104;
            }
          }

          else
          {
            v218 = v235;
            sub_1C4467FE0(v217, v235);
            sub_1C440F650(v217 + v216);
            if (!v219)
            {
              v220 = v240;
              v221 = v236;
              (*(v240 + 32))(v236, v217 + v216, v191);
              sub_1C4B71A4C();
              v222 = sub_1C4F010B8();
              v223 = *(v220 + 8);
              v223(v221, v191);
              sub_1C4423A0C(v239, &unk_1EC0B84E0, qword_1C4F0D2D0);
              sub_1C4423A0C(v238, &unk_1EC0B84E0, qword_1C4F0D2D0);
              v223(v218, v191);
              sub_1C4423A0C(v217, &unk_1EC0B84E0, qword_1C4F0D2D0);
              if ((v222 & 1) == 0)
              {
                return 0;
              }

LABEL_104:
              v224 = a1[4];
              sub_1C4409678(a1, a1[3]);
              v225 = *(v224 + 40);
              v226 = sub_1C4408DF8();
              v228 = v227(v226);
              v229 = a2[4];
              sub_1C4409678(a2, a2[3]);
              v230 = *(v229 + 40);
              v231 = sub_1C4408DF8();
              if (v228 == v232(v231))
              {
                v233 = sub_1C4B70BBC();
                return v233 == sub_1C4B70BBC();
              }

              return 0;
            }

            sub_1C440FC60(v239);
            sub_1C440FC60(v208);
            (*(v240 + 8))(v218, v191);
          }

          v192 = v217;
          goto LABEL_102;
        }

        return 0;
      }
    }

    else if (!v174)
    {
      goto LABEL_84;
    }

LABEL_79:

    return 0;
  }

  sub_1C440B3D8();
  v43 = *(v42 + 8);
  v44 = sub_1C44203D8();
  v45(v44);
  result = sub_1C44090C8();
  if (v32 && v37 == v2)
  {
    goto LABEL_9;
  }

  return result;
}

unint64_t sub_1C4B71A4C()
{
  result = qword_1EC0B9D00;
  if (!qword_1EC0B9D00)
  {
    sub_1C4EF9CD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B9D00);
  }

  return result;
}

uint64_t sub_1C4B71AA4()
{
  sub_1C43FCF70();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = swift_task_alloc();
  *(v0 + 16) = v9;
  *v9 = v0;
  v9[1] = sub_1C4B71B54;

  return sub_1C4B71C54(v8, v6, v4, v2);
}

uint64_t sub_1C4B71B54(uint64_t a1)
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

uint64_t sub_1C4B71C54(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v4 + 273) = a4;
  *(v4 + 272) = a3;
  *(v4 + 184) = a1;
  *(v4 + 192) = a2;
  v5 = sub_1C4EF9CD8();
  *(v4 + 200) = v5;
  v6 = *(v5 - 8);
  *(v4 + 208) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 216) = swift_task_alloc();
  *(v4 + 224) = swift_task_alloc();
  v8 = *(*(sub_1C456902C(&qword_1EC0BAE70, &unk_1C4F55920) - 8) + 64) + 15;
  *(v4 + 232) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4B71D60, 0, 0);
}

uint64_t sub_1C4B71D60()
{
  sub_1C43FCF70();
  v6 = v0;
  sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0FCC0;
  *(inited + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  if (sub_1C4428DA0())
  {
    sub_1C4D52140(inited);
  }

  else
  {
    swift_setDeallocating();
    sub_1C49E1628();
    v2 = MEMORY[0x1E69E7CD0];
  }

  v3 = *(v0 + 272);
  *(v0 + 168) = v2;
  if (v3 == 1)
  {
    sub_1C483D6A0(&v5, [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_]);
  }

  *(v0 + 240) = [objc_opt_self() defaultManager];

  return MEMORY[0x1EEE6DFA0](sub_1C4B71E9C, 0, 0);
}

uint64_t sub_1C4B71E9C()
{
  v1 = *(v0 + 232);
  v19 = *(v0 + 240);
  v3 = *(v0 + 216);
  v2 = *(v0 + 224);
  v5 = *(v0 + 200);
  v4 = *(v0 + 208);
  v18 = *(v0 + 273);
  v7 = *(v0 + 184);
  v6 = *(v0 + 192);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 176;
  *(v0 + 24) = sub_1C4B720C4;
  v17 = swift_continuation_init();
  v8 = *(v4 + 16);
  v8(v2, v7, v5);
  v8(v3, v6, v5);
  sub_1C4EF94D8();
  v9 = sub_1C4EF94F8();
  sub_1C440BAA8(v1, 0, 1, v9);
  v10 = *(v0 + 168);
  *(v0 + 248) = v10;
  v11 = objc_allocWithZone(MEMORY[0x1E69990B8]);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v12 = sub_1C4B724D0(v18, 0, v1, 1, 0, v10);
  v13 = swift_allocObject();
  *(v13 + 16) = v17;
  *(v0 + 112) = sub_1C4B72614;
  *(v0 + 120) = v13;
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1C4B7242C;
  *(v0 + 104) = &unk_1F43FE338;
  v14 = _Block_copy((v0 + 80));
  v15 = *(v0 + 120);

  [v19 fetchStoredVisitsWithOptions:v12 handler:v14];
  _Block_release(v14);

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1C4B720C4()
{
  sub_1C43FCF70();
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 256) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = sub_1C4B72278;
  }

  else
  {
    *(v1 + 264) = *(v1 + 176);
    v4 = sub_1C4B721E4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1C4B721E4()
{
  sub_1C43FCF70();
  v1 = *(v0 + 248);
  v3 = *(v0 + 224);
  v2 = *(v0 + 232);
  v4 = *(v0 + 216);

  v5 = *(v0 + 8);
  v6 = *(v0 + 264);

  return v5(v6);
}

uint64_t sub_1C4B72278()
{
  sub_1C43FCF70();
  v1 = *(v0 + 248);
  v3 = *(v0 + 224);
  v2 = *(v0 + 232);
  v4 = *(v0 + 216);

  v5 = *(v0 + 8);
  v6 = *(v0 + 256);

  return v5();
}

uint64_t sub_1C4B72308(uint64_t a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    sub_1C48133E0();
    **(*(a3 + 64) + 40) = v4;

    return MEMORY[0x1EEE6DEE0](a3);
  }

  else
  {
    if (a2)
    {
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v6 = swift_allocError();
      *v7 = a2;
      v8 = a2;
      v9 = a3;
      v10 = v6;
    }

    else
    {
      sub_1C4B7261C();
      v11 = swift_allocError();
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v12 = swift_allocError();
      *v13 = v11;
      v9 = a3;
      v10 = v12;
    }

    return MEMORY[0x1EEE6DEE8](v9, v10);
  }
}

uint64_t sub_1C4B7242C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_1C4461BB8(0, &qword_1EDDF0378, 0x1E69990C0);
    v4 = sub_1C4F01678();
  }

  v7 = a3;
  v6(v4, a3);
}

id sub_1C4B724D0(char a1, void *a2, uint64_t a3, char a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v14 = sub_1C4EF94F8();
  v15 = 0;
  if (sub_1C44157D4(a3, 1, v14) != 1)
  {
    v15 = sub_1C4EF94B8();
    (*(*(v14 - 8) + 8))(a3, v14);
  }

  if (a6)
  {
    sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);
    sub_1C49BF880();
    v16 = sub_1C4F01AA8();
  }

  else
  {
    v16 = 0;
  }

  v17 = [v7 initWithAscending:a1 & 1 confidence:a2 dateInterval:v15 labelVisit:a4 & 1 limit:a5 sources:v16];

  return v17;
}

unint64_t sub_1C4B7261C()
{
  result = qword_1EC0C3D70;
  if (!qword_1EC0C3D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3D70);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StoredLocationVisitsAsync.RTVisitFetchError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C4B72720()
{
  result = qword_1EC0C3D78;
  if (!qword_1EC0C3D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3D78);
  }

  return result;
}

uint64_t sub_1C4B72774(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C4B72794, 0, 0);
}

void sub_1C4B72794()
{
  v1 = v0[8];
  if (*(v1 + 32) == 1)
  {
    v2 = v1[2];
    v3 = v1[3];
    if (v3 >= *(v2 + 2))
    {
      sub_1C442D414();
    }

    else
    {
      if ((v3 & 0x8000000000000000) != 0)
      {
        __break(1u);
        return;
      }

      sub_1C480BC20(&v2[10 * v3 + 8], v0[7]);
      v1[3] = (v3 + 1);
    }

    sub_1C43FBDA0();

    v8();
  }

  else
  {
    v4 = *v1;
    v5 = v1[1];
    v9 = (v4 + *v4);
    v6 = v4[1];
    v7 = swift_task_alloc();
    v0[9] = v7;
    *v7 = v0;
    v7[1] = sub_1C4B72900;

    v9();
  }
}

uint64_t sub_1C4B72900()
{
  v2 = *v1;
  sub_1C43FBE64();
  *v4 = v3;
  v6 = *(v5 + 72);
  *v4 = *v1;
  *(v3 + 80) = v7;

  if (v0)
  {
    sub_1C43FBDA0();

    return v8();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1C4B72A2C, 0, 0);
  }
}

uint64_t sub_1C4B72A2C()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  if (v2)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1C459D050();
    v3 = v17;
    v4 = v1 + 32;
    do
    {
      sub_1C442E860(v4, v0 + 16);
      v5 = *(v17 + 16);
      if (v5 >= *(v17 + 24) >> 1)
      {
        sub_1C459D050();
      }

      *(v17 + 16) = v5 + 1;
      v6 = v17 + 40 * v5;
      v7 = *(v0 + 16);
      v8 = *(v0 + 32);
      *(v6 + 64) = *(v0 + 48);
      *(v6 + 32) = v7;
      *(v6 + 48) = v8;
      v4 += 40;
      --v2;
    }

    while (v2);
    v9 = *(v0 + 80);
  }

  else
  {
    v10 = *(v0 + 80);

    v3 = MEMORY[0x1E69E7CC0];
  }

  v11 = *(v0 + 64);
  v12 = *(v11 + 16);

  *(v11 + 16) = v3;
  *(v11 + 32) = 1;
  v14 = *(v0 + 64);
  v15 = *(v14 + 24);
  if (v15 >= *(v3 + 16))
  {
    sub_1C442D414();
  }

  else
  {
    if (v15 < 0)
    {
      __break(1u);
      return result;
    }

    sub_1C480BC20(v3 + 40 * v15 + 32, *(v0 + 56));
    *(v14 + 24) = v15 + 1;
  }

  sub_1C43FBDA0();

  return v16();
}

uint64_t sub_1C4B72BB0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C4B72C48;

  return sub_1C4B72774(a1);
}

uint64_t sub_1C4B72C48()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_1C43FBE64();
  *v3 = v2;

  sub_1C43FBDA0();

  return v4();
}

uint64_t sub_1C4B72D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1C47E2320;

  return (sub_1C4981F20)(a1, a2, a3);
}

__n128 sub_1C4B72E00(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C4B72E14(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C4B72E54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C4B72EBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = MEMORY[0x1E69E7CC0];
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
}

double sub_1C4B72ED8@<D0>(uint64_t a1@<X8>)
{
  sub_1C4B72EBC(*v1, v1[1], v5);

  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t sub_1C4B72F2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_1C4EF9CD8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  v13 = *(v2 + 24);
  if (*(v2 + 16))
  {
    v14 = *(v2 + 16);
    v15 = *(v2 + 24);
    v16 = v14;
  }

  else
  {
    v36 = 0;
    v37 = v13;
    v35 = *(sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0) + 36);
    v38 = v3;
    v17 = *(v7 + 16);
    v17(v12, a1, v6);
    v17(v9, a1 + v35, v6);
    v18 = *(v7 + 80);
    v19 = (v18 + 16) & ~v18;
    v20 = (v8 + v18 + v19) & ~v18;
    v35 = v20 + v8;
    v15 = swift_allocObject();
    v21 = *(v7 + 32);
    v22 = v12;
    v16 = v36;
    v21(v15 + v19, v22, v6);
    v21(v15 + v20, v9, v6);
    *(v15 + v35) = 256;
    v14 = &unk_1C4F55BB0;
  }

  v23 = type metadata accessor for StoredLocationVisitSignal.StoredLocationVisitWithTransitionAsyncSequence();
  v24 = *(v23 + 20);
  v25 = sub_1C456902C(&qword_1EC0B8B40, &unk_1C4F0DF70);
  sub_1C43FCF64();
  sub_1C440BAA8(v26, v27, v28, v25);
  v29 = *(v23 + 24);
  sub_1C43FCF64();
  sub_1C440BAA8(v30, v31, v32, v25);
  *a2 = v14;
  *(a2 + 8) = v15;
  *(a2 + 16) = MEMORY[0x1E69E7CC0];
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  return sub_1C446F0D0(v16);
}

uint64_t sub_1C4B731A4()
{
  sub_1C43FBCD4();
  v1[12] = v2;
  v1[13] = v0;
  v3 = sub_1C4EF9CD8();
  v1[14] = v3;
  v4 = *(v3 - 8);
  v1[15] = v4;
  v5 = *(v4 + 64) + 15;
  v1[16] = swift_task_alloc();
  v6 = *(*(sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0) - 8) + 64) + 15;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v7 = *(*(sub_1C456902C(&qword_1EC0C0D08, &unk_1C4F55BC0) - 8) + 64) + 15;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v8 = sub_1C456902C(&qword_1EC0B8B40, &unk_1C4F0DF70);
  v1[26] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4B7336C, 0, 0);
}

uint64_t sub_1C4B7336C()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 104);
  v4 = type metadata accessor for StoredLocationVisitSignal.StoredLocationVisitWithTransitionAsyncSequence();
  *(v0 + 232) = v4;
  v5 = *(v4 + 24);
  *(v0 + 256) = v5;
  sub_1C445FFF0(v3 + v5, v2, &qword_1EC0C0D08, &unk_1C4F55BC0);
  if (sub_1C44157D4(v2, 1, v1) != 1)
  {
    v11 = *(v0 + 224);
    v12 = *(v0 + 208);
    v13 = *(v0 + 96);
    v14 = *(v0 + 104);
    sub_1C4B74480(*(v0 + 200), v11);
    v15 = *(v4 + 20);
    sub_1C4420C3C(v14 + v15, &qword_1EC0C0D08, &unk_1C4F55BC0);
    sub_1C445FFF0(v11, v14 + v15, &qword_1EC0B8B40, &unk_1C4F0DF70);
    sub_1C43FBD94();
    sub_1C440BAA8(v16, v17, v18, v12);
    sub_1C4420C3C(v3 + v5, &qword_1EC0C0D08, &unk_1C4F55BC0);
    sub_1C43FCF64();
    sub_1C440BAA8(v19, v20, v21, v12);
    sub_1C4B74480(v11, v13);
    sub_1C43FBD94();
    sub_1C440BAA8(v22, v23, v24, v12);
    sub_1C441A608();

    sub_1C43FBDA0();
    sub_1C43FD0C0();

    __asm { BRAA            X1, X16 }
  }

  sub_1C4420C3C(*(v0 + 200), &qword_1EC0C0D08, &unk_1C4F55BC0);
  v6 = swift_task_alloc();
  *(v0 + 240) = v6;
  *v6 = v0;
  v6[1] = sub_1C4B735BC;
  v7 = *(v0 + 104);
  sub_1C43FD0C0();

  return sub_1C4B72774(v8);
}

uint64_t sub_1C4B735BC()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = *(v2 + 240);
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  *(v6 + 248) = v0;

  if (v0)
  {
    v7 = sub_1C4B73B6C;
  }

  else
  {
    v7 = sub_1C4B736C0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C4B736C0()
{
  if (!*(v0 + 80))
  {
    v35 = *(v0 + 208);
    v36 = *(v0 + 96);
    sub_1C4420C3C(v0 + 56, &qword_1EC0B97A0, &qword_1C4F0F7D0);
    sub_1C43FCF64();
    v40 = v35;
    goto LABEL_11;
  }

  v1 = *(v0 + 232);
  v2 = *(v0 + 208);
  v3 = *(v0 + 192);
  v4 = *(v0 + 104);
  v5 = *(v0 + 72);
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 32) = v5;
  *(v0 + 48) = *(v0 + 88);
  v6 = *(v1 + 20);
  sub_1C445FFF0(v4 + v6, v3, &qword_1EC0C0D08, &unk_1C4F55BC0);
  if (sub_1C44157D4(v3, 1, v2) != 1)
  {
    v41 = *(v0 + 168);
    v42 = *(v0 + 112);
    sub_1C4B74480(*(v0 + 192), *(v0 + 216));
    sub_1C44203E8();
    v44 = *(v43 + 8);
    v45 = sub_1C440749C();
    v46(v45);
    result = sub_1C4400334();
    if (v14)
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v47 = *(v0 + 160);
    v48 = *(v0 + 112);
    sub_1C44203E8();
    v50 = *(v49 + 16);
    v51 = sub_1C440749C();
    v52(v51);
    result = sub_1C4400334();
    if (v14)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v53 = *(v0 + 208);
    v54 = *(v0 + 184);
    v56 = *(v0 + 160);
    v55 = *(v0 + 168);
    v81 = *(v0 + 216);
    v82 = *(v0 + 152);
    v57 = *(v0 + 120);
    v79 = *(v0 + 256);
    v80 = *(v0 + 128);
    v58 = *(v0 + 112);
    v78 = *(v0 + 104);
    v59 = v54 + *(v53 + 32);
    sub_1C480BC20(v0 + 16, v59);
    v60 = *(v57 + 32);
    *(v59 + 40) = 0u;
    *(v59 + 56) = 0u;
    *(v59 + 72) = 0;
    v60(v54, v55, v58);
    v77 = v60;
    v60(v54 + *(v53 + 28), v56, v58);
    sub_1C43FBD94();
    sub_1C440BAA8(v61, v62, v63, v53);
    sub_1C4B74410(v54, v78 + v79);
    (*(v57 + 16))(v80, v81 + *(v53 + 28), v58);
    v64 = *(v0 + 40);
    v65 = *(v0 + 48);
    sub_1C4409678((v0 + 16), v64);
    (*(v65 + 8))(v64, v65);
    result = sub_1C44157D4(v82, 1, v58);
    if (result == 1)
    {
LABEL_19:
      __break(1u);
      return result;
    }

    v67 = *(v0 + 208);
    v66 = *(v0 + 216);
    v68 = *(v0 + 152);
    v69 = *(v0 + 128);
    v70 = *(v0 + 112);
    v71 = *(v0 + 96);
    v72 = *(v53 + 32);
    v73 = v71 + v72;
    sub_1C480BC20(v66 + v72, v71 + v72);
    sub_1C4420C3C(v66, &qword_1EC0B8B40, &unk_1C4F0DF70);
    v74 = *(v0 + 48);
    v75 = *(v0 + 32);
    *(v73 + 40) = *(v0 + 16);
    *(v73 + 56) = v75;
    *(v73 + 72) = v74;
    v77(v71, v69, v70);
    v77(v71 + *(v53 + 28), v68, v70);
    sub_1C43FBD94();
    v40 = v67;
LABEL_11:
    sub_1C440BAA8(v37, v38, v39, v40);
    goto LABEL_12;
  }

  v7 = *(v0 + 144);
  v8 = *(v0 + 112);
  sub_1C4420C3C(*(v0 + 192), &qword_1EC0C0D08, &unk_1C4F55BC0);
  sub_1C44203E8();
  v10 = *(v9 + 8);
  v11 = sub_1C440749C();
  v12(v11);
  result = sub_1C4400334();
  if (v14)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = *(v0 + 136);
  v16 = *(v0 + 112);
  sub_1C44203E8();
  v18 = *(v17 + 16);
  v19 = sub_1C440749C();
  v20(v19);
  result = sub_1C4400334();
  if (v14)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21 = *(v0 + 208);
  v22 = *(v0 + 176);
  v24 = *(v0 + 136);
  v23 = *(v0 + 144);
  v25 = *(v0 + 112);
  v26 = *(v0 + 120);
  v27 = *(v0 + 96);
  v28 = v22 + *(v21 + 32);
  v29 = *(v0 + 16);
  v30 = *(v0 + 32);
  *(v28 + 32) = *(v0 + 48);
  *v28 = v29;
  *(v28 + 16) = v30;
  *(v28 + 40) = 0u;
  *(v28 + 56) = 0u;
  *(v28 + 72) = 0;
  v31 = *(v26 + 32);
  v31(v22, v23, v25);
  v31(v22 + *(v21 + 28), v24, v25);
  sub_1C43FBD94();
  sub_1C440BAA8(v32, v33, v34, v21);
  sub_1C4B74410(v22, v4 + v6);
  sub_1C445FFF0(v4 + v6, v27, &qword_1EC0C0D08, &unk_1C4F55BC0);
LABEL_12:
  sub_1C441A608();

  sub_1C43FBDA0();

  return v76();
}

void sub_1C4B73B6C()
{
  sub_1C441A608();

  sub_1C43FBDA0();
  v1 = *(v0 + 248);
  sub_1C43FD0C0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C4B73C3C@<X0>(uint64_t a1@<X8>)
{
  sub_1C4B73198(a1);

  return sub_1C4B74350(v1);
}

uint64_t sub_1C4B73C68()
{
  sub_1C43FBCD4();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C442E8C4;

  return sub_1C4B731A4();
}

uint64_t sub_1C4B73CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1C49CC7C0;

  return (sub_1C49828A8)(a1, a2, a3);
}

uint64_t sub_1C4B73DC8()
{
  v1 = *(v0 + 24);
  sub_1C44239FC(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1C4B73E64()
{
  v2 = *(sub_1C4EF9CD8() - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = v0 + ((v4 + v3 + ((v3 + 16) & ~v3)) & ~v3);
  v6 = *(v5 + v4);
  v7 = *(v5 + v4 + 1);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1C4B73F84;

  return sub_1C4B71AA4();
}

uint64_t sub_1C4B73F84()
{
  sub_1C43FBCD4();
  v2 = v1;
  sub_1C43FBDE4();
  v4 = *(v3 + 16);
  v5 = *v0;
  sub_1C43FBDAC();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t type metadata accessor for StoredLocationVisitSignal.StoredLocationVisitWithTransitionAsyncSequence()
{
  result = qword_1EDDF2F98;
  if (!qword_1EDDF2F98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C4B740E4()
{
  sub_1C4B74160();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1C4B74160()
{
  if (!qword_1EDDF4668)
  {
    sub_1C4572308(&qword_1EC0B8B40, &unk_1C4F0DF70);
    v0 = sub_1C4F01F48();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDF4668);
    }
  }
}

uint64_t sub_1C4B741C4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1C4B74220()
{
  result = qword_1EC0C3D80;
  if (!qword_1EC0C3D80)
  {
    sub_1C4572308(&qword_1EC0B8B40, &unk_1C4F0DF70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3D80);
  }

  return result;
}

uint64_t sub_1C4B74284(uint64_t a1)
{
  result = sub_1C4B7430C(qword_1EDDF2FB8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B742C8(uint64_t a1)
{
  result = sub_1C4B7430C(&qword_1EDDF2FB0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B7430C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for StoredLocationVisitSignal.StoredLocationVisitWithTransitionAsyncSequence();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C4B74350(uint64_t a1)
{
  v2 = type metadata accessor for StoredLocationVisitSignal.StoredLocationVisitWithTransitionAsyncSequence();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C4B743AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoredLocationVisitSignal.StoredLocationVisitWithTransitionAsyncSequence();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4B74410(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0C0D08, &unk_1C4F55BC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4B74480(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B8B40, &unk_1C4F0DF70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4B744F4(char a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  v5 = a2 + 32;
  while (1)
  {
    if (v4 == v3)
    {
      return 0;
    }

    sub_1C4AD6BCC(*(v5 + v3));
    v7 = v6;
    v9 = v8;
    sub_1C4AD6BCC(a1);
    if (v7 == v11 && v9 == v10)
    {
      break;
    }

    v13 = sub_1C4F02938();

    if (v13)
    {
      return v3;
    }

    ++v3;
  }

  return v3;
}

uint64_t sub_1C4B745C4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  while (1)
  {
    if ((a3 ^ a4) < 0x4000)
    {
      return 0;
    }

    sub_1C4407C24();
    if (sub_1C4F01F98() == a1 && v8 == a2)
    {
      break;
    }

    v10 = sub_1C4F02938();

    if (v10)
    {
      return a3;
    }

    sub_1C4407C24();
    a3 = sub_1C4F01F68();
  }

  return a3;
}

Swift::Bool __swiftcall String.isValidEmail()()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E6996728]) init];
  sub_1C4402120();
  v1 = sub_1C4F01108();
  v2 = [v0 typeOfHandleString_];

  return v2 == 1;
}

Swift::Bool __swiftcall String.isValidPhoneNumber()()
{
  v2 = v1;
  v3 = v0;
  v4 = objc_allocWithZone(MEMORY[0x1E696AB60]);
  v5 = sub_1C4475EF8(2048);
  v6 = sub_1C4F01108();
  v7 = [v5 matchesInString:v6 options:0 range:{0, MEMORY[0x1C69400B0](v3, v2)}];

  sub_1C4461BB8(0, &qword_1EDDF03D0, 0x1E696AEF8);
  sub_1C4F01678();

  v8 = sub_1C4428DA0();

  return v8 != 0;
}

Swift::String __swiftcall String.stripFZIDPrefix()()
{
  sub_1C442040C();
  if (v0)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  else
  {
    sub_1C440F228();
    sub_1C4F012B8();
    sub_1C440F228();
    v4 = sub_1C44DBF14(v1, v2, v3);
    MEMORY[0x1C693FEF0](v4);
  }

  v5 = sub_1C4402120();
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t StructuredLocation.mapLocation.getter()
{
  v1 = *v0;
  v2 = v0[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t sub_1C4B74BD4()
{
  if (qword_1EC0B7130 != -1)
  {
    swift_once();
  }

  qword_1EC0C3D88 = qword_1EC0C38C8;
  *algn_1EC0C3D90 = *algn_1EC0C38D0;
  qword_1EC0C3DA0 = qword_1EC0C38E0;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t static StructuredLocation.type.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC0B7160 != -1)
  {
    swift_once();
  }

  v2 = qword_1EC0C3DA0;
  *a1 = qword_1EC0C3D88;
  *(a1 + 8) = *algn_1EC0C3D90;
  *(a1 + 24) = v2;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t StructuredLocation.identifier.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t sub_1C4B74D10(uint64_t a1)
{
  v2 = sub_1C4B75274();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4B74D4C(uint64_t a1)
{
  v2 = sub_1C4B75274();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StructuredLocation.encode(to:)(void *a1)
{
  v4 = sub_1C456902C(&qword_1EC0C3DA8, &unk_1C4F55D58);
  v5 = sub_1C43FFC58(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = v18 - v10;
  v12 = *v1;
  v13 = v1[1];
  v14 = v1[2];
  v18[2] = v1[3];
  v19 = v14;
  v18[1] = v1[4];
  v15 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4B75274();
  sub_1C4F02BF8();
  v24 = 0;
  v16 = v20;
  sub_1C4F02798();
  if (!v16)
  {
    v21 = v19;
    v23 = 1;
    sub_1C456902C(&qword_1EC0B8720, &qword_1C4F0D970);
    sub_1C458A9D8(&qword_1EC0B8728, sub_1C458A984);
    sub_1C4F027E8();
    v22 = 2;
    sub_1C4F02738();
  }

  return (*(v7 + 8))(v11, v2);
}

uint64_t StructuredLocation.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = sub_1C456902C(&qword_1EC0C3DB8, &qword_1C4F55D68);
  v7 = sub_1C43FFC58(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v13 = &v23 - v12;
  v14 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4B75274();
  sub_1C4F02BC8();
  if (v2)
  {
    return sub_1C440962C(a1);
  }

  v29 = 0;
  v15 = sub_1C4F02678();
  v25 = v16;
  sub_1C456902C(&qword_1EC0B8720, &qword_1C4F0D970);
  v28 = 1;
  sub_1C458A9D8(&qword_1EC0B8740, sub_1C458AA50);
  sub_1C4F026C8();
  v24 = v26;
  v27 = 2;
  v17 = sub_1C4F02618();
  v19 = v18;
  v20 = v17;
  (*(v9 + 8))(v13, v3);
  v21 = v25;
  *a2 = v15;
  a2[1] = v21;
  a2[2] = v24;
  a2[3] = v20;
  a2[4] = v19;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C440962C(a1);
}

unint64_t sub_1C4B75274()
{
  result = qword_1EC0C3DB0;
  if (!qword_1EC0C3DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3DB0);
  }

  return result;
}

unint64_t sub_1C4B752C8(uint64_t a1)
{
  result = sub_1C4B3C0D8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C4B752F0(uint64_t a1)
{
  *(a1 + 8) = sub_1C4B75320();
  result = sub_1C4B75374();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C4B75320()
{
  result = qword_1EC0C3DC0;
  if (!qword_1EC0C3DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3DC0);
  }

  return result;
}

unint64_t sub_1C4B75374()
{
  result = qword_1EC0C3DC8;
  if (!qword_1EC0C3DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3DC8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StructuredLocation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C4B754B8()
{
  result = qword_1EC0C3DD0;
  if (!qword_1EC0C3DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3DD0);
  }

  return result;
}

unint64_t sub_1C4B75510()
{
  result = qword_1EC0C3DD8;
  if (!qword_1EC0C3DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3DD8);
  }

  return result;
}

unint64_t sub_1C4B75568()
{
  result = qword_1EC0C3DE0;
  if (!qword_1EC0C3DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3DE0);
  }

  return result;
}

uint64_t sub_1C4B755C4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C4B75604(uint64_t result, int a2, int a3)
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

__n128 sub_1C4B7567C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 11) = *(a2 + 11);
  *a1 = result;
  return result;
}

uint64_t sub_1C4B75690(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 26) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 27) = 1;
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

    *(result + 27) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C4B756E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = (a1 + 32);
  sub_1C43FBDF0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v6 = v5;
  while (2)
  {
    v37 = v4;
    v7 = v4-- != 0;
    if (v7)
    {
      switch(*v6)
      {
        case 1:
        case 2:
          goto LABEL_11;
        case 3:
          sub_1C443072C();
          goto LABEL_11;
        case 4:
          sub_1C44090E8();
          goto LABEL_11;
        case 5:
          sub_1C44037FC();
          goto LABEL_11;
        case 6:
          sub_1C4413878();
          goto LABEL_11;
        case 7:
          sub_1C443545C();
          goto LABEL_11;
        case 8:
          sub_1C442042C();
LABEL_11:
          sub_1C4F02938();
          sub_1C444B308();
          ++v6;
          if (v2)
          {
            break;
          }

          continue;
        default:

          goto LABEL_12;
      }
    }

    break;
  }

LABEL_12:
  v8 = *(a1 + 16);
  v9 = v5;
  while (2)
  {
    v36 = v8;
    v7 = v8-- != 0;
    if (v7)
    {
      switch(*v9)
      {
        case 1:

          break;
        case 3:
          sub_1C443072C();
          goto LABEL_22;
        case 4:
          sub_1C44090E8();
          goto LABEL_22;
        case 5:
          sub_1C44037FC();
          goto LABEL_22;
        case 6:
          sub_1C4413878();
          goto LABEL_22;
        case 7:
          sub_1C443545C();
          goto LABEL_22;
        case 8:
          sub_1C442042C();
          goto LABEL_22;
        default:
LABEL_22:
          sub_1C4F02938();
          sub_1C444B308();
          ++v9;
          if (v2)
          {
            break;
          }

          continue;
      }
    }

    break;
  }

  v10 = *(a1 + 16);
  v11 = v5;
  while (2)
  {
    v35 = v10;
    v7 = v10-- != 0;
    if (v7)
    {
      switch(*v11)
      {
        case 1:
          sub_1C4426E78();
          goto LABEL_34;
        case 2:

          break;
        case 3:
          sub_1C443072C();
          goto LABEL_34;
        case 4:
          sub_1C44090E8();
          goto LABEL_34;
        case 5:
          sub_1C44037FC();
          goto LABEL_34;
        case 6:
          sub_1C4413878();
          goto LABEL_34;
        case 7:
          sub_1C443545C();
          goto LABEL_34;
        case 8:
          sub_1C442042C();
          goto LABEL_34;
        default:
LABEL_34:
          sub_1C4F02938();
          sub_1C444B308();
          ++v11;
          if (v2)
          {
            break;
          }

          continue;
      }
    }

    break;
  }

  v12 = *(a1 + 16);
  v13 = v5;
  while (2)
  {
    v14 = v12;
    v7 = v12-- != 0;
    if (v7)
    {
      switch(*v13)
      {
        case 1:
          sub_1C4426E78();
          goto LABEL_46;
        case 2:
          sub_1C441788C();
          goto LABEL_46;
        case 3:

          break;
        case 4:
          sub_1C44090E8();
          goto LABEL_46;
        case 5:
          sub_1C44037FC();
          goto LABEL_46;
        case 6:
          sub_1C4413878();
          goto LABEL_46;
        case 7:
          sub_1C443545C();
          goto LABEL_46;
        case 8:
          sub_1C442042C();
          goto LABEL_46;
        default:
LABEL_46:
          sub_1C4F02938();
          sub_1C444B308();
          ++v13;
          if (v2)
          {
            break;
          }

          continue;
      }
    }

    break;
  }

  v15 = *(a1 + 16);
  v16 = v5;
  while (2)
  {
    v17 = v15;
    v7 = v15-- != 0;
    if (v7)
    {
      switch(*v16)
      {
        case 1:
          sub_1C4426E78();
          sub_1C43FC6F4();
          goto LABEL_58;
        case 2:
          sub_1C441788C();
          goto LABEL_58;
        case 3:
          sub_1C443072C();
          goto LABEL_58;
        case 4:

          break;
        case 5:
          sub_1C44037FC();
          goto LABEL_58;
        case 6:
          sub_1C4413878();
          goto LABEL_58;
        case 7:
          sub_1C443545C();
          goto LABEL_58;
        case 8:
          sub_1C442042C();
          goto LABEL_58;
        default:
LABEL_58:
          sub_1C4435CE4();
          sub_1C4F02938();
          sub_1C444B308();
          ++v16;
          if (v2)
          {
            break;
          }

          continue;
      }
    }

    break;
  }

  v18 = *(a1 + 16);
  v19 = v5;
  while (2)
  {
    v20 = v18;
    v7 = v18-- != 0;
    if (v7)
    {
      switch(*v19)
      {
        case 1:
          sub_1C4426E78();
          sub_1C43FC6F4();
          goto LABEL_70;
        case 2:
          sub_1C441788C();
          goto LABEL_70;
        case 3:
          sub_1C44337E4();
          goto LABEL_70;
        case 4:
          sub_1C44090E8();
          goto LABEL_70;
        case 5:

          break;
        case 6:
          sub_1C4413878();
          goto LABEL_70;
        case 7:
          sub_1C443545C();
          goto LABEL_70;
        case 8:
          sub_1C442042C();
          goto LABEL_70;
        default:
LABEL_70:
          sub_1C447F2E8();
          sub_1C4F02938();
          sub_1C444B308();
          ++v19;
          if (v2)
          {
            break;
          }

          continue;
      }
    }

    break;
  }

  v21 = *(a1 + 16);
  v22 = v5;
  while (2)
  {
    v23 = v21;
    v7 = v21-- != 0;
    if (v7)
    {
      switch(*v22)
      {
        case 1:
          sub_1C4426E78();
          sub_1C43FC6F4();
          goto LABEL_82;
        case 2:
          sub_1C441788C();
          goto LABEL_82;
        case 3:
          sub_1C44337E4();
          goto LABEL_82;
        case 4:
          sub_1C44090E8();
          goto LABEL_82;
        case 5:
          sub_1C44037FC();
          goto LABEL_82;
        case 6:

          break;
        case 7:
          sub_1C443545C();
          goto LABEL_82;
        case 8:
          sub_1C442042C();
          goto LABEL_82;
        default:
LABEL_82:
          sub_1C4415CA8();
          sub_1C4F02938();
          sub_1C444B308();
          ++v22;
          if (v2)
          {
            break;
          }

          continue;
      }
    }

    break;
  }

  v34 = a1;
  v24 = *(a1 + 16);
  v25 = v5;
  while (2)
  {
    v26 = v24;
    v7 = v24-- != 0;
    if (v7)
    {
      switch(*v25)
      {
        case 1:
          sub_1C4426E78();
          sub_1C43FC6F4();
          goto LABEL_94;
        case 2:
          sub_1C441788C();
          goto LABEL_94;
        case 3:
          sub_1C44337E4();
          goto LABEL_94;
        case 4:
          sub_1C44090E8();
          goto LABEL_94;
        case 5:
          sub_1C44037FC();
          goto LABEL_94;
        case 6:
          sub_1C4413878();
          goto LABEL_94;
        case 7:

          break;
        case 8:
          sub_1C442042C();
          goto LABEL_94;
        default:
LABEL_94:
          sub_1C4F02938();
          sub_1C444B308();
          ++v25;
          if (v2)
          {
            break;
          }

          continue;
      }
    }

    break;
  }

  v27 = *(v34 + 16);
  while (2)
  {
    v28 = v27;
    v7 = v27-- != 0;
    if (v7)
    {
      switch(*v5)
      {
        case 1:
          sub_1C4426E78();
          sub_1C43FC6F4();
          goto LABEL_106;
        case 2:
          sub_1C441788C();
          goto LABEL_106;
        case 3:
          sub_1C44337E4();
          goto LABEL_106;
        case 4:
          sub_1C44090E8();
          goto LABEL_106;
        case 5:
          sub_1C44037FC();
          goto LABEL_106;
        case 6:
          sub_1C4413878();
          goto LABEL_106;
        case 7:
          sub_1C443545C();
          goto LABEL_106;
        case 8:

          break;
        default:
LABEL_106:
          sub_1C442ED40();
          sub_1C4F02938();
          sub_1C444B308();
          ++v5;
          if (v2)
          {
            break;
          }

          continue;
      }
    }

    break;
  }

  v29 = v17 != 0;
  v30 = *(v34 + 16);

  result = sub_1C4EFB8D8();
  *a2 = v34;
  *(a2 + 8) = v37 != 0;
  *(a2 + 9) = v36 != 0;
  *(a2 + 10) = v35 != 0;
  *(a2 + 11) = v14 != 0;
  *(a2 + 12) = v29;
  *(a2 + 13) = v20 != 0;
  *(a2 + 14) = v23 != 0;
  *(a2 + 15) = v26 != 0;
  *(a2 + 16) = v28 != 0;
  *(a2 + 24) = result;
  *(a2 + 32) = v32;
  return result;
}

void sub_1C4B75EC0()
{
  sub_1C43FE96C();
  v45 = v1;
  v3 = v2;
  v4 = type metadata accessor for ViewDatabaseArtifact.Property();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1C43FBCC4();
  v9 = (v8 - v7);
  v10 = *(v3 + 16);
  if (v10)
  {
    v49 = MEMORY[0x1E69E7CC0];
    sub_1C459EEF0();
    v11 = 0;
    v12 = v49;
    v46 = v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    while (v11 < *(v3 + 16))
    {
      sub_1C4B7CB3C(v46 + *(v5 + 72) * v11, v9, type metadata accessor for ViewDatabaseArtifact.Property);
      v13 = *v9;
      v14 = v9[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v15 = sub_1C4F025D8();

      if (v15 > 8)
      {

        sub_1C450B034();
        swift_allocError();
        *v19 = 0;
        *(v19 + 8) = 0xE000000000000000;
        *(v19 + 16) = 0xD000000000000022;
        *(v19 + 24) = 0x80000001C4FB3240;
        *(v19 + 32) = v47;
        *(v19 + 48) = v48;
        *(v19 + 64) = 3;
        swift_willThrow();
        sub_1C4405388();

        goto LABEL_120;
      }

      v16 = v5;
      sub_1C4405388();
      v18 = *(v49 + 16);
      v17 = *(v49 + 24);
      v0 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        sub_1C43FCFE8(v17);
        sub_1C459EEF0();
      }

      ++v11;
      *(v49 + 16) = v0;
      *(v49 + v18 + 32) = v15;
      v5 = v16;
      if (v10 == v11)
      {

        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {

    v12 = MEMORY[0x1E69E7CC0];
LABEL_11:
    v20 = *(v12 + 16);
    v21 = (v12 + 32);
    sub_1C43FBDF0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v22 = (v12 + 32);
    while (2)
    {
      v23 = v20;
      v24 = v20-- != 0;
      if (v24)
      {
        switch(*v22)
        {
          case 1:
            goto LABEL_22;
          case 2:
            sub_1C4407C3C();
            goto LABEL_22;
          case 3:
            sub_1C43FF674();
            goto LABEL_22;
          case 4:
            sub_1C440FC78();
            goto LABEL_22;
          case 5:
            sub_1C44037FC();
            goto LABEL_22;
          case 6:
            sub_1C44125D8();
            goto LABEL_22;
          case 7:
            sub_1C43FC8F8();
            goto LABEL_22;
          case 8:
            sub_1C442D438();
LABEL_22:
            sub_1C4F02938();
            sub_1C442F3D8();
            ++v22;
            if (v0)
            {
              break;
            }

            continue;
          default:

            goto LABEL_23;
        }
      }

      break;
    }

LABEL_23:
    v44 = v23 != 0;
    sub_1C441C518();
    while (2)
    {
      sub_1C4450024();
      if (v24)
      {
        switch(*v22)
        {
          case 1:

            break;
          case 2:
            sub_1C4407C3C();
            goto LABEL_34;
          case 3:
            sub_1C43FF674();
            goto LABEL_34;
          case 4:
            sub_1C440FC78();
            goto LABEL_34;
          case 5:
            sub_1C44037FC();
            goto LABEL_34;
          case 6:
            sub_1C44125D8();
            goto LABEL_34;
          case 7:
            sub_1C43FC8F8();
            goto LABEL_34;
          case 8:
            sub_1C442D438();
            goto LABEL_34;
          default:
LABEL_34:
            sub_1C4F02938();
            sub_1C442F3D8();
            ++v22;
            if (v0)
            {
              break;
            }

            continue;
        }
      }

      break;
    }

    sub_1C4410610();
    v43 = v25;
    sub_1C441C518();
    while (2)
    {
      sub_1C4450024();
      if (v24)
      {
        switch(*v22)
        {
          case 1:
            sub_1C4432AE4();
            goto LABEL_46;
          case 2:

            break;
          case 3:
            sub_1C43FF674();
            goto LABEL_46;
          case 4:
            sub_1C440FC78();
            goto LABEL_46;
          case 5:
            sub_1C44037FC();
            goto LABEL_46;
          case 6:
            sub_1C44125D8();
            goto LABEL_46;
          case 7:
            sub_1C43FC8F8();
            goto LABEL_46;
          case 8:
            sub_1C442D438();
            goto LABEL_46;
          default:
LABEL_46:
            sub_1C4F02938();
            sub_1C442F3D8();
            ++v22;
            if (v0)
            {
              break;
            }

            continue;
        }
      }

      break;
    }

    sub_1C4410610();
    v42 = v26;
    sub_1C441C518();
    while (2)
    {
      sub_1C4450024();
      if (v24)
      {
        switch(*v22)
        {
          case 1:
            sub_1C4432AE4();
            goto LABEL_58;
          case 2:
            sub_1C4407C3C();
            goto LABEL_58;
          case 3:

            break;
          case 4:
            sub_1C440FC78();
            goto LABEL_58;
          case 5:
            sub_1C44037FC();
            goto LABEL_58;
          case 6:
            sub_1C44125D8();
            goto LABEL_58;
          case 7:
            sub_1C43FC8F8();
            goto LABEL_58;
          case 8:
            sub_1C442D438();
            goto LABEL_58;
          default:
LABEL_58:
            sub_1C4F02938();
            sub_1C442F3D8();
            ++v22;
            if (v0)
            {
              break;
            }

            continue;
        }
      }

      break;
    }

    sub_1C4410610();
    v41 = v27;
    sub_1C441C518();
    while (2)
    {
      sub_1C4450024();
      if (v24)
      {
        switch(*v22)
        {
          case 1:
            sub_1C4432AE4();
            goto LABEL_70;
          case 2:
            sub_1C4407C3C();
            goto LABEL_70;
          case 3:
            sub_1C43FF674();
            goto LABEL_70;
          case 4:

            break;
          case 5:
            sub_1C44037FC();
            goto LABEL_70;
          case 6:
            sub_1C44125D8();
            goto LABEL_70;
          case 7:
            sub_1C43FC8F8();
            goto LABEL_70;
          case 8:
            sub_1C442D438();
            goto LABEL_70;
          default:
LABEL_70:
            sub_1C4435CE4();
            sub_1C4F02938();
            sub_1C442F3D8();
            ++v22;
            if (v0)
            {
              break;
            }

            continue;
        }
      }

      break;
    }

    sub_1C4410610();
    v40 = v28;
    sub_1C441C518();
    while (2)
    {
      sub_1C4450024();
      if (v24)
      {
        switch(*v22)
        {
          case 1:
            sub_1C4432AE4();
            goto LABEL_82;
          case 2:
            sub_1C4407C3C();
            goto LABEL_82;
          case 3:
            sub_1C43FF674();
            goto LABEL_82;
          case 4:
            sub_1C440FC78();
            goto LABEL_82;
          case 5:

            break;
          case 6:
            sub_1C44125D8();
            goto LABEL_82;
          case 7:
            sub_1C43FC8F8();
            goto LABEL_82;
          case 8:
            sub_1C442D438();
            goto LABEL_82;
          default:
LABEL_82:
            sub_1C447F2E8();
            sub_1C4F02938();
            sub_1C442F3D8();
            ++v22;
            if (v0)
            {
              break;
            }

            continue;
        }
      }

      break;
    }

    sub_1C4410610();
    v39 = v29;
    sub_1C441C518();
    while (2)
    {
      sub_1C4450024();
      if (v24)
      {
        switch(*v22)
        {
          case 1:
            sub_1C4432AE4();
            goto LABEL_94;
          case 2:
            sub_1C4407C3C();
            goto LABEL_94;
          case 3:
            sub_1C43FF674();
            goto LABEL_94;
          case 4:
            sub_1C440FC78();
            goto LABEL_94;
          case 5:
            sub_1C44037FC();
            goto LABEL_94;
          case 6:

            break;
          case 7:
            sub_1C43FC8F8();
            goto LABEL_94;
          case 8:
            sub_1C442D438();
            goto LABEL_94;
          default:
LABEL_94:
            sub_1C4415CA8();
            sub_1C4F02938();
            sub_1C442F3D8();
            ++v22;
            if (v0)
            {
              break;
            }

            continue;
        }
      }

      break;
    }

    sub_1C4410610();
    v38 = v30;
    sub_1C441C518();
    while (2)
    {
      sub_1C4450024();
      if (v24)
      {
        switch(*v22)
        {
          case 1:
            sub_1C4432AE4();
            goto LABEL_106;
          case 2:
            sub_1C4407C3C();
            goto LABEL_106;
          case 3:
            sub_1C43FF674();
            goto LABEL_106;
          case 4:
            sub_1C440FC78();
            goto LABEL_106;
          case 5:
            sub_1C44037FC();
            goto LABEL_106;
          case 6:
            sub_1C44125D8();
            goto LABEL_106;
          case 7:

            break;
          case 8:
            sub_1C442D438();
            goto LABEL_106;
          default:
LABEL_106:
            sub_1C4F02938();
            sub_1C442F3D8();
            ++v22;
            if (v0)
            {
              break;
            }

            continue;
        }
      }

      break;
    }

    sub_1C4410610();
    v37 = v31;
    v32 = *(v12 + 16);
    while (2)
    {
      v33 = v32;
      v24 = v32-- != 0;
      if (v24)
      {
        switch(*v21)
        {
          case 1:
            sub_1C4432AE4();
            goto LABEL_118;
          case 2:
            sub_1C4407C3C();
            goto LABEL_118;
          case 3:
            sub_1C43FF674();
            goto LABEL_118;
          case 4:
            sub_1C440FC78();
            goto LABEL_118;
          case 5:
            sub_1C44037FC();
            goto LABEL_118;
          case 6:
            sub_1C44125D8();
            goto LABEL_118;
          case 7:
            sub_1C43FC8F8();
            goto LABEL_118;
          case 8:

            break;
          default:
LABEL_118:
            sub_1C442ED40();
            sub_1C4F02938();
            sub_1C442F3D8();
            ++v21;
            if (v0)
            {
              break;
            }

            continue;
        }
      }

      break;
    }

    v34 = *(v12 + 16);

    v35 = sub_1C4EFB8D8();
    *v45 = v12;
    *(v45 + 8) = v44;
    *(v45 + 9) = v43;
    *(v45 + 10) = v42;
    *(v45 + 11) = v41;
    *(v45 + 12) = v40;
    *(v45 + 13) = v39;
    *(v45 + 14) = v38;
    *(v45 + 15) = v37;
    *(v45 + 16) = v33 != 0;
    *(v45 + 24) = v35;
    *(v45 + 32) = v36;
LABEL_120:
    sub_1C43FBC80();
  }
}

void sub_1C4B76798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C43FBD18(v27);
  v29 = *(v28 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v73 - v31;
  v33 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C43FBD18(v33);
  v35 = *(v34 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v73 - v37;
  v39 = type metadata accessor for ViewDatabaseArtifact.Property();
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39);
  v78 = (&v73 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v42);
  v46 = &v73 - v45;
  v47 = *(v24 + 32);
  v48 = *(v47 + 16);
  if (v48)
  {
    v75 = v32;
    v76 = v20;
    v77 = *(v43 + 20);
    v49 = *(v44 + 80);
    v79 = v26;
    v50 = v47 + ((v49 + 32) & ~v49);
    v51 = *(v44 + 72);
    v52 = v50;
    v74 = v48;
    v80 = v51;
    do
    {
      sub_1C4404728();
      sub_1C4B7CB3C(v52, v46, v53);
      v54 = *v46;
      v55 = *(v46 + 1);
      v56 = sub_1C4EFBE38();
      sub_1C43FBCE0(v56);
      (*(v57 + 16))(v38, &v46[v77], v56);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v58 = sub_1C43FBC98();
      sub_1C443CD78(v58, v59);
      sub_1C440BAA8(v38, 0, 1, v56);
      v60 = v80;
      sub_1C4EFB498();

      sub_1C4420C3C(v38, &qword_1EC0B9BB8, &unk_1C4F1DC60);
      v52 += v60;
      --v48;
    }

    while (v48);
    a10 = MEMORY[0x1E69E7CC0];
    v61 = v74;
    sub_1C44CD9C0();
    v62 = a10;
    do
    {
      sub_1C4404728();
      v63 = v78;
      sub_1C4B7CB3C(v50, v78, v64);
      v66 = *v63;
      v65 = v63[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C443CD78(v63, &a10);
      a10 = v62;
      v68 = *(v62 + 16);
      v67 = *(v62 + 24);
      if (v68 >= v67 >> 1)
      {
        sub_1C43FCFE8(v67);
        sub_1C440424C();
        sub_1C44CD9C0();
        v62 = a10;
      }

      *(v62 + 16) = v68 + 1;
      v69 = v62 + 16 * v68;
      *(v69 + 32) = v66;
      *(v69 + 40) = v65;
      v50 += v80;
      --v61;
    }

    while (v61);
    v32 = v75;
  }

  v70 = *MEMORY[0x1E69A00D0];
  v71 = sub_1C4EFBF38();
  sub_1C43FBCE0(v71);
  (*(v72 + 104))(v32, v70, v71);
  sub_1C440BAA8(v32, 0, 1, v71);
  sub_1C4EFB478();

  sub_1C4420C3C(v32, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4403810();
  sub_1C43FBC80();
}

void sub_1C4B76B30()
{
  sub_1C43FE96C();
  v2 = sub_1C4EFBCC8();
  v3 = sub_1C43FCDF8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  if ((v0[24] & 1) == 0)
  {
    goto LABEL_3;
  }

  *&v14[0] = 0;
  *(&v14[0] + 1) = 0xE000000000000000;
  sub_1C4F02248();
  v11 = *v0;
  v12 = *(v0 + 1);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  MEMORY[0x1C6940010](0xD00000000000001DLL, 0x80000001C4FB3120);
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  sub_1C4EFBFA8();
  sub_1C4420C3C(v14, &qword_1EC0C5040, &qword_1C4F0F950);

  if (!v1)
  {
LABEL_3:
    if (v0[25])
    {
      v17 = *v0;
      v14[0] = v17;
      sub_1C448DB48(&v17, &v16);
      MEMORY[0x1C6940010](0x5F7463656A626F5FLL, 0xEB00000000737466);
      sub_1C4EFBCB8();
      v13 = swift_allocObject();
      memcpy((v13 + 16), v0, 0x60uLL);
      sub_1C4AF9A80(v0, v14);
      sub_1C4EFBF98();
      (*(v5 + 8))(v10, v2);
    }
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4B76DA0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[1];
  sub_1C4EFB7C8();
  sub_1C4EFB7D8();

  sub_1C4EFB7D8();
  sub_1C4EFB848();

  sub_1C4EFB7D8();
  sub_1C4EFB848();
}

uint64_t sub_1C4B76EA4(uint64_t a1, void *a2)
{
  v3 = sub_1C4EFB768();
  v4 = sub_1C43FCDF8(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v11 = v10 - v9;
  MEMORY[0x1C6940010](*a2, a2[1]);
  sub_1C4EFB758();
  sub_1C4EFBFF8();
  (*(v6 + 8))(v11, v3);
}

void sub_1C4B76FC8()
{
  sub_1C43FE96C();
  v91 = v2;
  v3 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v4 = sub_1C43FBD18(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBFDC();
  v88 = v7;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FD230();
  v87 = v9;
  v10 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v11 = sub_1C43FBD18(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBFDC();
  v84 = v14;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FD230();
  v83 = v16;
  v89 = sub_1C4EFF0C8();
  v17 = sub_1C43FCDF8(v89);
  v80 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBFDC();
  v82 = v21;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FD230();
  v81 = v23;
  v94 = 0;
  v95 = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD000000000000018, 0x80000001C4FB3140);
  v24 = *v0;
  v25 = v0[1];
  MEMORY[0x1C6940010](*v0, v25);
  MEMORY[0x1C6940010](0xD00000000000001ELL, 0x80000001C4FB3160);
  v98 = 0;
  v99 = 0xE000000000000000;
  sub_1C4F02248();

  sub_1C43FBDF0();
  v94 = 0xD000000000000018;
  v95 = v26;
  MEMORY[0x1C6940010](v24, v25);
  MEMORY[0x1C6940010](0x4C4156202020200ALL, 0xED00002820534555);
  v27 = *(v0 + 7);
  v101[0] = *(v0 + 5);
  v101[1] = v27;
  v90 = v0;
  v102 = v0[9];
  MEMORY[0x1C6940010](*(&v27 + 1));
  MEMORY[0x1C6940010](41, 0xE100000000000000);
  sub_1C458DB8C();
  v29 = v28;
  if (*(v28 + 16) >= *(v28 + 24) >> 1)
  {
    sub_1C440612C();
    v29 = v74;
  }

  sub_1C441D3E0();
  *(v30 + 32) = 0;
  if (BYTE9(v101[0]))
  {
    sub_1C4422BCC();
    MEMORY[0x1C6940010]();
    sub_1C4414F38();
    if (v31)
    {
      sub_1C440612C();
      v29 = v75;
    }

    sub_1C441D3E0();
    *(v32 + 32) = 1;
  }

  if (BYTE10(v101[0]))
  {
    sub_1C4422BCC();
    MEMORY[0x1C6940010](0xD000000000000018);
    sub_1C4414F38();
    if (v31)
    {
      sub_1C440612C();
      v29 = v76;
    }

    sub_1C441D3E0();
    *(v33 + 32) = 2;
  }

  if (BYTE11(v101[0]))
  {
    sub_1C4422BCC();
    MEMORY[0x1C6940010]();
    sub_1C4414F38();
    if (v31)
    {
      sub_1C440612C();
      v29 = v77;
    }

    sub_1C441D3E0();
    *(v34 + 32) = 3;
  }

  if (BYTE12(v101[0]))
  {
    sub_1C4422BCC();
    MEMORY[0x1C6940010]();
    sub_1C4414F38();
    if (v31)
    {
      sub_1C440612C();
      v29 = v78;
    }

    sub_1C441D3E0();
    *(v35 + 32) = 4;
  }

  sub_1C4EFBED8();
  if (v1)
  {

    goto LABEL_22;
  }

  sub_1C4EFBED8();

  sub_1C4B756E8(v29, v100);
  v86 = *(v91 + 16);
  if (v86)
  {
    v36 = 0;
    v85 = v91 + 32;
    v79 = (v80 + 32);
    v37 = v89;
    while (1)
    {
      memcpy(v103, (v85 + 152 * v36), 0x92uLL);
      v38 = *(v90 + 26);
      if ((v103[18] & 0x100) != 0)
      {
        if ((*(v90 + 26) & 1) == 0)
        {
          sub_1C45E8CE0(v103, &v94);
LABEL_37:
          v92 = v36;
          v48 = sub_1C4B77970(v103);
          sub_1C45E8D3C(v103);
          goto LABEL_38;
        }

        sub_1C45E8CE0(v103, &v94);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C44333A0();
        if ((sub_1C4F01278() & 1) == 0)
        {

          goto LABEL_37;
        }

        v39 = v83;
        sub_1C44333A0();
        sub_1C4EFF0D8();
        if (sub_1C44157D4(v83, 1, v37) != 1)
        {
          v92 = v36;
          (*v79)(v81, v83, v37);
          v96 = v37;
          sub_1C441A624();
          v97 = sub_1C4B7CC2C(&qword_1EDDFA1C8, v40);
          sub_1C4422F90(&v94);
          sub_1C44146F4();
          v44 = v43(v41, v42);
          MEMORY[0x1EEE9AC00](v44);
          sub_1C44692B4();
          *(v45 - 24) = v100;
          *(v45 - 16) = v103;
          v48 = sub_1C45DB7F4(sub_1C4B7CE58, v46, v47);
          sub_1C45E8D3C(v103);
          v49 = sub_1C440CDAC();
          v50(v49);
          sub_1C440962C(&v94);
LABEL_38:
          if (*(v48 + 16))
          {
            sub_1C443F7B0(MEMORY[0x1E69E7CC0]);
            v51 = v93;
            do
            {
              sub_1C442E860(v48 + 32, &v94);
              sub_1C456902C(&qword_1EC0BC780, &unk_1C4F29270);
              sub_1C44185B0();
              v93 = v51;
              sub_1C440C4FC();
              if (v31)
              {
                sub_1C43FCFE8(v52);
                sub_1C440424C();
                sub_1C459D088(v54, v55, v56);
              }

              sub_1C4459C00();
            }

            while (!v53);

            v37 = v89;
          }

          else
          {
          }

          v57 = v87;
          sub_1C4EFB788();
          goto LABEL_58;
        }
      }

      else
      {
        if ((*(v90 + 26) & 1) == 0)
        {
          sub_1C45E8CE0(v103, &v94);
LABEL_48:
          v92 = v36;
          v58 = sub_1C4B77970(v103);
          sub_1C45E8D3C(v103);
          goto LABEL_49;
        }

        sub_1C45E8CE0(v103, &v94);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C44333A0();
        if ((sub_1C4F01278() & 1) == 0)
        {

          goto LABEL_48;
        }

        v39 = v84;
        sub_1C44333A0();
        sub_1C4EFF0D8();
        if (sub_1C44157D4(v84, 1, v37) != 1)
        {
          v92 = v36;
          (*v79)(v82, v84, v37);
          v96 = v37;
          sub_1C441A624();
          v97 = sub_1C4B7CC2C(&qword_1EDDFA1C8, v64);
          sub_1C4422F90(&v94);
          sub_1C44146F4();
          v68 = v67(v65, v66);
          MEMORY[0x1EEE9AC00](v68);
          sub_1C44692B4();
          *(v69 - 24) = v101;
          *(v69 - 16) = v103;
          v58 = sub_1C45DB7F4(sub_1C4B7BCFC, v70, v71);
          sub_1C45E8D3C(v103);
          v72 = sub_1C440CDAC();
          v73(v72);
          sub_1C440962C(&v94);
LABEL_49:
          if (*(v58 + 16))
          {
            sub_1C443F7B0(MEMORY[0x1E69E7CC0]);
            v59 = v93;
            do
            {
              sub_1C442E860(v58 + 32, &v94);
              sub_1C456902C(&qword_1EC0BC780, &unk_1C4F29270);
              sub_1C44185B0();
              v93 = v59;
              sub_1C440C4FC();
              if (v31)
              {
                sub_1C43FCFE8(v60);
                sub_1C440424C();
                sub_1C459D088(v61, v62, v63);
              }

              sub_1C4459C00();
            }

            while (!v53);

            v37 = v89;
          }

          else
          {
          }

          v57 = v88;
          sub_1C4EFB788();
LABEL_58:
          sub_1C4EFC0A8();
          sub_1C4420C3C(v57, &unk_1EC0C06C0, &unk_1C4F10DB0);
          v36 = v92;
          goto LABEL_59;
        }
      }

      sub_1C45E8D3C(v103);
      sub_1C4420C3C(v39, &unk_1EC0BA0E0, &qword_1C4F105A0);
LABEL_59:
      if (++v36 == v86)
      {

        goto LABEL_63;
      }
    }
  }

LABEL_63:
  sub_1C487BDB4(v100);
LABEL_22:
  sub_1C4403810();
  sub_1C43FBC80();
}

uint64_t sub_1C4B77970(void *a1)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v22 = MEMORY[0x1E69E7CC0];
    sub_1C459D930();
    v5 = v22;
    v7 = (v3 + 32);
    v8 = MEMORY[0x1E69A01D0];
    v9 = MEMORY[0x1E69E6158];
    v10 = MEMORY[0x1E69A0138];
    do
    {
      v11 = *v7++;
      switch(v11)
      {
        case 1:
          v14 = a1[6];
          v13 = a1[7];
          goto LABEL_10;
        case 2:
          v12 = a1[8];
          goto LABEL_12;
        case 3:
          v14 = a1[9];
          v13 = a1[10];
          goto LABEL_10;
        case 4:
          v14 = a1[11];
          v13 = a1[12];
          goto LABEL_10;
        case 5:
          v12 = a1[13];
          goto LABEL_12;
        case 6:
          v15 = a1[14];
          goto LABEL_15;
        case 7:
          v14 = a1[15];
          v13 = a1[16];
LABEL_10:
          v20 = v9;
          v21 = v10;
          *&v19 = v14;
          *(&v19 + 1) = v13;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          break;
        case 8:
          v15 = a1[17];
LABEL_15:
          v20 = MEMORY[0x1E69E63B0];
          v21 = MEMORY[0x1E69A0168];
          *&v19 = v15;
          break;
        default:
          v12 = a1[5];
LABEL_12:
          v21 = v8;
          v20 = MEMORY[0x1E69E7360];
          *&v19 = v12;
          break;
      }

      v22 = v5;
      sub_1C440C4FC();
      if (v17)
      {
        sub_1C43FCFE8(v16);
        sub_1C440424C();
        sub_1C459D930();
        v5 = v22;
      }

      *(v5 + 16) = v3;
      sub_1C443FA18(&v19, v5 + 40 * v2 + 32);
      --v4;
    }

    while (v4);
  }

  return v5;
}

void sub_1C4B77AF4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  sub_1C4B76FC8();
  if (!v4)
  {
    if (a4)
    {
      a4(a1);
    }
  }
}

void sub_1C4B77B4C()
{
  sub_1C43FE96C();
  v20 = v2;
  v21 = v3;
  v5 = v4;
  v6 = sub_1C4EFB768();
  v7 = sub_1C43FCDF8(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v14 = v13 - v12;
  sub_1C4F02248();

  sub_1C43FBDF0();
  v23 = 0xD000000000000015;
  v24 = v15;
  MEMORY[0x1C6940010](*v0, v0[1]);
  sub_1C4EFB758();
  v22 = v5;
  sub_1C4EFBFF8();
  if (v1)
  {
    (*(v9 + 8))(v14, v6);
  }

  else
  {
    (*(v9 + 8))(v14, v6);

    MEMORY[0x1EEE9AC00](v16);
    *(&v19 - 2) = v0;
    v17 = sub_1C4EFBFD8();
    v18 = v20;
    while (*(v18(v17) + 16))
    {
      sub_1C43FE99C();
      sub_1C4B76FC8();
    }

    sub_1C4B76B30();
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4B77DC4()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t sub_1C4B77DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>)
{
  v18 = *a7;
  v35 = *a8;
  v34 = a8[1];
  v19 = type metadata accessor for SubgraphDatabaseTable.SubgraphComparableTriple();
  *a9 = 0u;
  *(a9 + 16) = 0u;
  *(a9 + 32) = 0;
  v20 = v19[5];
  v21 = sub_1C4EFF0C8();
  sub_1C43FBCE0(v21);
  (*(v22 + 32))(a9 + v20, a1);
  v23 = v19[6];
  v24 = sub_1C4EFEEF8();
  sub_1C43FBCE0(v24);
  v26 = *(v25 + 32);
  v26(a9 + v23, a2, v24);
  v27 = v19[7];
  v28 = sub_1C4EFF8A8();
  sub_1C43FBCE0(v28);
  (*(v29 + 32))(a9 + v27, a3);
  result = (v26)(a9 + v19[8], a4, v24);
  v31 = (a9 + v19[9]);
  *v31 = a5;
  v31[1] = a6;
  *(a9 + v19[10]) = v18;
  *(a9 + v19[11]) = a10;
  v32 = (a9 + v19[12]);
  *v32 = v35;
  v32[1] = v34;
  *(a9 + v19[13]) = a11;
  return result;
}

uint64_t sub_1C4B77F8C(uint64_t a1, char *a2)
{
  v111 = a2;
  v98 = sub_1C456902C(&qword_1EC0C3EE8, &qword_1C4F566E8);
  v4 = sub_1C43FBCE0(v98);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBFDC();
  v100 = v7;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FD230();
  v99 = v9;
  v105 = sub_1C456902C(&qword_1EC0C3EF0, &qword_1C4F566F0);
  v10 = sub_1C43FBCE0(v105);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBFDC();
  v114 = v13;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FD230();
  v113 = v15;
  v16 = sub_1C456902C(&qword_1EC0C3EF8, &qword_1C4F566F8);
  v17 = (v16 - 8);
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBFDC();
  v112 = v19;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v97 - v21;
  v23 = type metadata accessor for SubgraphDatabaseTable.SubgraphComparableTriple();
  v25 = v23[5];
  v24 = v23[6];
  v107 = v24;
  v26 = v23[8];
  v119 = v23[7];
  v120 = v26;
  v27 = v23[9];
  v28 = *(a1 + v27);
  v121 = *(a1 + v27 + 8);
  v29 = &a2[v27];
  v31 = *v29;
  v30 = v29[1];
  v117 = v31;
  v118 = v28;
  v115 = v25;
  v116 = v30;
  v108 = sub_1C4EFF0C8();
  v32 = *(v108 - 8);
  v109 = *(v32 + 16);
  v110 = v32 + 16;
  v109(v22, &v25[a1], v108);
  v33 = v17[14];
  v34 = sub_1C4EFEEF8();
  sub_1C43FBCE0(v34);
  v36 = *(v35 + 16);
  v37 = v35 + 16;
  v104 = v33;
  v38 = &v22[v33];
  v39 = v22;
  v106 = v22;
  v36(v38, a1 + v24, v34);
  v40 = v17[18];
  v41 = sub_1C4EFF8A8();
  sub_1C43FBCE0(v41);
  v43 = *(v42 + 16);
  v44 = (v42 + 16);
  v103 = v40;
  v43(&v39[v40], a1 + v119, v41);
  v101 = v17[22];
  v36(&v39[v101], a1 + v120, v34);
  v45 = &v39[v17[26]];
  v46 = v121;
  *v45 = v118;
  *(v45 + 1) = v46;
  v48 = v111;
  v47 = v112;
  v109(v112, &v115[v111], v108);
  v102 = v17[14];
  v36((v47 + v102), &v48[v107], v34);
  v107 = v17[18];
  v49 = &v48[v119];
  v119 = v41;
  v115 = v43;
  v109 = v44;
  v43((v47 + v107), v49, v41);
  v50 = v17[22];
  v51 = &v48[v120];
  v52 = v47;
  v120 = v34;
  v53 = v106;
  v110 = v37;
  v111 = v36;
  v36((v47 + v50), v51, v34);
  v54 = (v47 + v17[26]);
  v55 = v116;
  *v54 = v117;
  v54[1] = v55;
  sub_1C441A624();
  sub_1C4B7CC2C(v56, v57);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C441B058();
  if (sub_1C4F010B8())
  {
    v58 = v113;
    v108 = v50;
    v59 = v120;
    v60 = v111;
    (v111)(v113, v53 + v104, v120);
    v61 = v105;
    v97 = v105[12];
    (v115)(v58 + v97, v53 + v103, v119);
    v104 = v61[16];
    (v60)(v58 + v104, v53 + v101, v59);
    v62 = (v58 + v61[20]);
    v63 = v121;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4420C3C(v53, &qword_1EC0C3EF8, &qword_1C4F566F8);
    *v62 = v118;
    v62[1] = v63;
    v64 = v114;
    (v60)(v114, v52 + v102, v59);
    v106 = v61[12];
    (v115)(v64 + v106, v52 + v107, v119);
    v65 = v61[16];
    (v60)(v64 + v65, v52 + v108, v59);
    v66 = (v64 + v61[20]);
    v67 = v116;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4420C3C(v52, &qword_1EC0C3EF8, &qword_1C4F566F8);
    *v66 = v117;
    v66[1] = v67;
    sub_1C440B3FC();
    sub_1C4B7CC2C(v68, v69);
    if (sub_1C4F010B8())
    {
      v70 = v113;
      v71 = v99;
      v72 = v115;
      (v115)(v99, v113 + v97, v119);
      v73 = v98;
      v108 = *(v98 + 48);
      v112 = v65;
      v74 = v120;
      v75 = v111;
      (v111)(v71 + v108, v70 + v104, v120);
      v76 = (v71 + *(v73 + 64));
      v77 = v121;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4420C3C(v70, &qword_1EC0C3EF0, &qword_1C4F566F0);
      *v76 = v118;
      v76[1] = v77;
      v78 = v114;
      v79 = v100;
      v72(v100, v114 + v106, v119);
      v80 = *(v73 + 48);
      (v75)(v79 + v80, v78 + v112, v74);
      v81 = (v79 + *(v73 + 64));
      v82 = v116;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4420C3C(v78, &qword_1EC0C3EF0, &qword_1C4F566F0);
      *v81 = v117;
      v81[1] = v82;
      sub_1C4400F14();
      sub_1C4B7CC2C(v83, v84);
      sub_1C43FE99C();
      if (sub_1C4F010B8())
      {
        v85 = sub_1C4B7BD3C(v71 + v108, v118, v121, v79 + v80, v117, v116);
      }

      else
      {
        sub_1C4400F14();
        sub_1C4B7CC2C(v94, v95);
        sub_1C43FE99C();
        v85 = sub_1C4F01068();
      }

      v88 = v85;
      v89 = &qword_1EC0C3EE8;
      v90 = &qword_1C4F566E8;
    }

    else
    {
      sub_1C440B3FC();
      sub_1C4B7CC2C(v92, v93);
      v71 = v113;
      v79 = v114;
      sub_1C43FE99C();
      v88 = sub_1C4F01068();
      v89 = &qword_1EC0C3EF0;
      v90 = &qword_1C4F566F0;
    }

    sub_1C4420C3C(v79, v89, v90);
    v91 = v71;
  }

  else
  {
    sub_1C441A624();
    sub_1C4B7CC2C(v86, v87);
    sub_1C441B058();
    v88 = sub_1C4F01068();
    v89 = &qword_1EC0C3EF8;
    v90 = &qword_1C4F566F8;
    sub_1C4420C3C(v52, &qword_1EC0C3EF8, &qword_1C4F566F8);
    v91 = v53;
  }

  sub_1C4420C3C(v91, v89, v90);
  return v88 & 1;
}

BOOL sub_1C4B7878C(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  v8 = a1[4];
  v9 = *a2;
  v10 = a2[1];
  v12 = a2[2];
  v11 = a2[3];
  v13 = a2[4];
  if (*a1)
  {
    if (v9)
    {
      v36[0] = *a2;
      v36[1] = v10;
      v36[2] = v12;
      v36[3] = v11;
      v36[4] = v13;
      v35[0] = v4;
      v35[1] = v5;
      v35[2] = v7;
      v35[3] = v6;
      v35[4] = v8;
      v14 = sub_1C441BCF4();
      sub_1C4B7CB98(v14);
      v15 = sub_1C441CDD4();
      sub_1C4B7CB98(v15);
      v34 = sub_1C4B7A528(v35, v36);
      v16 = sub_1C441CDD4();
      sub_1C4B7CAA8(v16);
      v17 = sub_1C441BCF4();
      sub_1C4B7CAA8(v17);
      if ((v34 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

LABEL_6:
    v18 = sub_1C441BCF4();
    sub_1C4B7CB98(v18);
    v19 = sub_1C441CDD4();
    sub_1C4B7CB98(v19);
    v20 = sub_1C441BCF4();
    sub_1C4B7CAA8(v20);
    v21 = sub_1C441CDD4();
    sub_1C4B7CAA8(v21);
    return 0;
  }

  if (v9)
  {
    goto LABEL_6;
  }

  sub_1C4B7CB98(0);
  sub_1C4B7CB98(0);
  sub_1C4B7CAA8(0);
LABEL_8:
  v22 = type metadata accessor for SubgraphDatabaseTable.SubgraphComparableTriple();
  sub_1C441DD4C(v22[5]);
  if (sub_1C4EFF088())
  {
    v23 = sub_1C441DD4C(v22[6]);
    if (sub_1C44DBB50(v23, v24))
    {
      sub_1C441DD4C(v22[7]);
      if (sub_1C4EFF878())
      {
        v25 = sub_1C441DD4C(v22[8]);
        if (sub_1C44DBB50(v25, v26))
        {
          sub_1C44033A8(v22[9]);
          v29 = v29 && v27 == v28;
          if (v29 || (sub_1C4F02938()) && *(a1 + v22[10]) == *(a2 + v22[10]) && *(a1 + v22[11]) == *(a2 + v22[11]))
          {
            sub_1C44033A8(v22[12]);
            v32 = v29 && v30 == v31;
            if (v32 || (sub_1C4F02938() & 1) != 0)
            {
              return *(a1 + v22[13]) == *(a2 + v22[13]);
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1C4B789B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6870617267627573 && a2 == 0xEF736E6D756C6F43;
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

            else
            {
              v11 = a1 == 0x73656372756F73 && a2 == 0xE700000000000000;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000010 && 0x80000001C4F86630 == a2;
                  if (v13 || (sub_1C4F02938() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_1C4F02938();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C4B78CE8(char a1)
{
  result = 0x6870617267627573;
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
      result = 0x73656372756F73;
      break;
    case 7:
      result = 0x6E656469666E6F63;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0x6D617473656D6974;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C4B78E30()
{
  sub_1C43FE96C();
  v3 = v0;
  v5 = v4;
  v6 = sub_1C456902C(&qword_1EC0C3ED8, &qword_1C4F566E0);
  sub_1C43FCDF8(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C4402A68();
  v12 = v5[4];
  sub_1C4409678(v5, v5[3]);
  sub_1C4B7CA54();
  sub_1C440F61C();
  v32 = *v3;
  v35 = v3[1];
  v36 = v3[2];
  v37 = v3[3];
  v38 = v3[4];
  sub_1C4B7CB98(*v3);
  sub_1C4B7CBD8();
  sub_1C44366A4();
  sub_1C43FBF44();
  sub_1C4F02778();
  if (v1)
  {
    sub_1C4B7CAA8(v32);
  }

  else
  {
    sub_1C4B7CAA8(v32);
    v13 = type metadata accessor for SubgraphDatabaseTable.SubgraphComparableTriple();
    v14 = v13[5];
    sub_1C4EFF0C8();
    sub_1C441A624();
    sub_1C4B7CC2C(v15, v16);
    sub_1C4423CF4();
    sub_1C43FBF44();
    sub_1C4F027E8();
    v17 = v13[6];
    sub_1C4EFEEF8();
    sub_1C440B3FC();
    sub_1C4B7CC2C(v18, v19);
    sub_1C4423CF4();
    sub_1C445AB20();
    sub_1C43FBF44();
    sub_1C4F027E8();
    v31 = v13[7];
    sub_1C4EFF8A8();
    sub_1C4400F14();
    sub_1C4B7CC2C(v20, v21);
    sub_1C4423CF4();
    sub_1C43FBF44();
    sub_1C4F027E8();
    v22 = v13[8];
    sub_1C4423CF4();
    sub_1C445AB20();
    sub_1C43FBF44();
    sub_1C4F027E8();
    v23 = (v3 + v13[9]);
    v24 = *v23;
    v25 = v23[1];
    sub_1C43FBF44();
    sub_1C4F02798();
    v33 = *(v3 + v13[10]);
    sub_1C47C7748();
    sub_1C44366A4();
    sub_1C43FBF44();
    sub_1C4F027E8();
    v26 = *(v3 + v13[11]);
    sub_1C43FBF44();
    sub_1C4F027B8();
    v27 = (v3 + v13[12]);
    v28 = v27[1];
    v34 = *v27;
    v29 = sub_1C485AC04();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44366A4();
    sub_1C43FBF44();
    sub_1C4F027E8();

    if (!v29)
    {
      v30 = *(v3 + v13[13]);
      sub_1C43FBF44();
      sub_1C4F027B8();
    }
  }

  (*(v8 + 8))(v2, v6);
  sub_1C43FBC80();
}

uint64_t sub_1C4B791D4()
{
  v1 = v0;
  if (*v0)
  {
    v22 = *v0;
    v23 = *(v0 + 1);
    v24 = *(v0 + 3);
    sub_1C4F02B18();
    sub_1C4B7AD5C();
  }

  else
  {
    sub_1C4F02B18();
  }

  v2 = type metadata accessor for SubgraphDatabaseTable.SubgraphComparableTriple();
  v3 = v2[5];
  sub_1C4EFF0C8();
  sub_1C441A624();
  sub_1C4B7CC2C(v4, v5);
  sub_1C4404BCC();
  sub_1C4F00FE8();
  v6 = v2[6];
  sub_1C4EFEEF8();
  sub_1C440B3FC();
  sub_1C4B7CC2C(v7, v8);
  sub_1C4404BCC();
  sub_1C4F00FE8();
  v9 = v2[7];
  sub_1C4EFF8A8();
  sub_1C4400F14();
  sub_1C4B7CC2C(v10, v11);
  sub_1C4F00FE8();
  v12 = v1 + v2[8];
  sub_1C4404BCC();
  sub_1C4F00FE8();
  v13 = (v1 + v2[9]);
  v14 = *v13;
  v15 = v13[1];
  sub_1C4F01298();
  MEMORY[0x1C6941830](*(v1 + v2[10]));
  v16 = *(v1 + v2[11]);
  if (v16 == 0.0)
  {
    v16 = 0.0;
  }

  MEMORY[0x1C6941830](*&v16);
  v17 = (v1 + v2[12]);
  v18 = *v17;
  v19 = v17[1];
  sub_1C4F01298();
  v20 = *(v1 + v2[13]);
  if (v20 == 0.0)
  {
    v20 = 0.0;
  }

  return MEMORY[0x1C6941830](*&v20);
}

uint64_t sub_1C4B793C0()
{
  sub_1C4F02AF8();
  sub_1C4B791D4();
  return sub_1C4F02B68();
}

uint64_t sub_1C4B79400@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v3 = sub_1C4EFF8A8();
  v4 = sub_1C43FCDF8(v3);
  v90 = v5;
  v91 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v10 = (v9 - v8);
  v11 = sub_1C4EFEEF8();
  v12 = sub_1C43FCDF8(v11);
  v97 = v13;
  v98 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v17 = v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v84 - v19;
  v21 = sub_1C4EFF0C8();
  v22 = sub_1C43FCDF8(v21);
  v92 = v23;
  v93 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBCC4();
  v28 = v27 - v26;
  v89 = sub_1C456902C(&qword_1EC0C3EC0, &qword_1C4F566D8);
  sub_1C43FCDF8(v89);
  v30 = *(v29 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v31);
  v33 = v84 - v32;
  v99 = type metadata accessor for SubgraphDatabaseTable.SubgraphComparableTriple();
  v34 = sub_1C43FBCE0(v99);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBCC4();
  v95 = a1;
  v96 = (v38 - v37);
  v39 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4B7CA54();
  v88 = v33;
  v40 = v94;
  sub_1C4F02BC8();
  if (v40)
  {
    v41 = 0;
    LODWORD(v42) = 0;
    sub_1C4416434();
    v43 = v96;
  }

  else
  {
    v44 = v20;
    v94 = v17;
    v100 = 0;
    sub_1C4B7CAE8();
    sub_1C4F02658();
    v45 = v103;
    v46 = v102;
    v43 = v96;
    *v96 = v101;
    v43[1] = v46;
    *(v43 + 4) = v45;
    LOBYTE(v101) = 1;
    sub_1C441A624();
    sub_1C4B7CC2C(v47, v48);
    v49 = v93;
    sub_1C4F026C8();
    (*(v92 + 32))(v43 + v99[5], v28, v49);
    LOBYTE(v101) = 2;
    sub_1C440B3FC();
    LODWORD(v28) = sub_1C4B7CC2C(v50, v51);
    v52 = v98;
    sub_1C445AB20();
    sub_1C4F026C8();
    v53 = v99[6];
    v86 = 0;
    v54 = v97 + 32;
    v85 = *(v97 + 32);
    v85(v43 + v53, v44, v52);
    LOBYTE(v101) = 3;
    sub_1C4400F14();
    sub_1C4B7CC2C(v55, v56);
    v57 = v10;
    v42 = v91;
    v58 = v86;
    sub_1C4F026C8();
    v86 = v58;
    if (v58)
    {
      v59 = sub_1C447FA58();
      v60(v59);
      LODWORD(v10) = 0;
      LODWORD(v17) = 0;
      v41 = 1;
      LODWORD(v42) = 1;
      LODWORD(v28) = 1;
    }

    else
    {
      v10 = v85;
      v84[1] = v54;
      (*(v90 + 32))(v43 + v99[7], v57, v42);
      LOBYTE(v101) = 4;
      v61 = v94;
      sub_1C445AB20();
      v62 = v86;
      sub_1C4F026C8();
      if (!v62)
      {
        v10(v43 + v99[8], v61, v52);
        LOBYTE(v101) = 5;
        v65 = sub_1C4F02678();
        v72 = v99;
        v73 = (v43 + v99[9]);
        *v73 = v65;
        v73[1] = v74;
        v100 = 6;
        sub_1C44F02DC();
        sub_1C441B528();
        sub_1C4F026C8();
        *(v43 + v72[10]) = v101;
        sub_1C443426C(7);
        *(v43 + v72[11]) = v75;
        v100 = 8;
        sub_1C44F0578();
        sub_1C441B528();
        sub_1C4F026C8();
        v76 = *(&v101 + 1);
        v77 = (v43 + v72[12]);
        *v77 = v101;
        v77[1] = v76;
        sub_1C443426C(9);
        v79 = v78;
        v80 = sub_1C447FA58();
        v81(v80);
        v82 = v96;
        *(v96 + v99[13]) = v79;
        sub_1C4B7CB3C(v82, v87, type metadata accessor for SubgraphDatabaseTable.SubgraphComparableTriple);
        sub_1C440962C(v95);
        return sub_1C443CD78(v82, type metadata accessor for SubgraphDatabaseTable.SubgraphComparableTriple);
      }

      v63 = sub_1C447FA58();
      v64(v63);
      LODWORD(v17) = 0;
      v41 = 1;
      sub_1C4402508();
    }
  }

  result = sub_1C440962C(v95);
  if (v41)
  {
    v66 = v98;
    v67 = *(v43 + 1);
    v68 = *(v43 + 2);
    v69 = *(v43 + 3);
    v70 = *(v43 + 4);
    result = sub_1C4B7CAA8(*v43);
    if (v42)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v66 = v98;
    if (v42)
    {
LABEL_10:
      v71 = v99;
      result = (*(v92 + 8))(v43 + v99[5], v93);
      if ((v28 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_16;
    }
  }

  v71 = v99;
  if (!v28)
  {
LABEL_11:
    if (v10)
    {
      goto LABEL_12;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = (*(v97 + 8))(v43 + v71[6], v66);
  if (v10)
  {
LABEL_12:
    result = (*(v90 + 8))(v43 + v71[7], v91);
    if ((v17 & 1) == 0)
    {
      return result;
    }

    return (*(v97 + 8))(v43 + v71[8], v66);
  }

LABEL_17:
  if (v17)
  {
    return (*(v97 + 8))(v43 + v71[8], v66);
  }

  return result;
}

uint64_t sub_1C4B79C80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4B789B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4B79CA8(uint64_t a1)
{
  v2 = sub_1C4B7CA54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4B79CE4(uint64_t a1)
{
  v2 = sub_1C4B7CA54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4B79D2C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 48));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4B79DD4()
{
  sub_1C4F02AF8();
  sub_1C4B791D4();
  return sub_1C4F02B68();
}

uint64_t sub_1C4B79E14(uint64_t a1)
{
  v1 = *(a1 + 20);
  v2 = sub_1C4EFF0C8();
  sub_1C43FBCE0(v2);
  v4 = *(v3 + 16);
  v5 = sub_1C4409DB8();

  return v6(v5);
}

uint64_t sub_1C4B79E78(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = sub_1C4EFEEF8();
  sub_1C43FBCE0(v2);
  v4 = *(v3 + 16);
  v5 = sub_1C4409DB8();

  return v6(v5);
}

uint64_t sub_1C4B79EDC(uint64_t a1)
{
  v1 = *(a1 + 28);
  v2 = sub_1C4EFF8A8();
  sub_1C43FBCE0(v2);
  v4 = *(v3 + 16);
  v5 = sub_1C4409DB8();

  return v6(v5);
}

uint64_t sub_1C4B79F40(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_1C4EFEEF8();
  sub_1C43FBCE0(v2);
  v4 = *(v3 + 16);
  v5 = sub_1C4409DB8();

  return v6(v5);
}

uint64_t sub_1C4B79FA4(uint64_t a1)
{
  v2 = (v1 + *(a1 + 36));
  v3 = *v2;
  v4 = v2[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C43FBC98();
}

uint64_t sub_1C4B79FD8()
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

uint64_t sub_1C4B7A024(char a1)
{
  result = 0x7463656A627573;
  switch(a1)
  {
    case 1:
      result = sub_1C43FC6F4();
      break;
    case 2:
      result = sub_1C441788C();
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0x7463656A626FLL;
      break;
    case 5:
      result = sub_1C44037FC();
      break;
    case 6:
      result = 0x6E656469666E6F63;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x6D617473656D6974;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4B7A160@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C4B79FD8();
  *a2 = result;
  return result;
}

uint64_t sub_1C4B7A190@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C4B7A024(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void *sub_1C4B7A27C@<X0>(void *result@<X0>, char a2@<W1>, void *a3@<X8>)
{
  switch(a2)
  {
    case 1:
      v5 = MEMORY[0x1E69E6158];
      v6 = MEMORY[0x1E69A0138];
      v8 = result[6];
      v7 = result[7];
      goto LABEL_8;
    case 2:
      v3 = MEMORY[0x1E69E7360];
      v4 = result[8];
      goto LABEL_10;
    case 3:
      v5 = MEMORY[0x1E69E6158];
      v6 = MEMORY[0x1E69A0138];
      v8 = result[9];
      v7 = result[10];
      goto LABEL_8;
    case 4:
      v5 = MEMORY[0x1E69E6158];
      v6 = MEMORY[0x1E69A0138];
      v8 = result[11];
      v7 = result[12];
      goto LABEL_8;
    case 5:
      v3 = MEMORY[0x1E69E7360];
      v4 = result[13];
      goto LABEL_10;
    case 6:
      v10 = MEMORY[0x1E69E63B0];
      v11 = result[14];
      goto LABEL_13;
    case 7:
      v5 = MEMORY[0x1E69E6158];
      v6 = MEMORY[0x1E69A0138];
      v8 = result[15];
      v7 = result[16];
LABEL_8:
      a3[3] = v5;
      a3[4] = v6;
      *a3 = v8;
      a3[1] = v7;
      result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      break;
    case 8:
      v10 = MEMORY[0x1E69E63B0];
      v11 = result[17];
LABEL_13:
      v12 = MEMORY[0x1E69A0168];
      a3[3] = v10;
      a3[4] = v12;
      *a3 = v11;
      break;
    default:
      v3 = MEMORY[0x1E69E7360];
      v4 = result[5];
LABEL_10:
      v9 = MEMORY[0x1E69A01D0];
      a3[3] = v3;
      a3[4] = v9;
      *a3 = v4;
      break;
  }

  return result;
}

void *sub_1C4B7A378@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X3>, void *a4@<X8>)
{
  v4 = *a1;
  switch(*a1)
  {
    case 4:

      return sub_1C442E860(a2, a4);
    default:
      v8 = sub_1C4F02938();

      if (v8)
      {
        return sub_1C442E860(a2, a4);
      }

      else
      {
        return sub_1C4B7A27C(a3, v4, a4);
      }
  }
}

uint64_t sub_1C4B7A528(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  sub_1C47E6EAC();
  if (v6 & 1) == 0 || ((*(a1 + 8) ^ *(a2 + 8)) & 1) != 0 || ((*(a1 + 9) ^ *(a2 + 9)) & 1) != 0 || ((*(a1 + 10) ^ *(a2 + 10)) & 1) != 0 || ((*(a1 + 11) ^ *(a2 + 11)) & 1) != 0 || ((*(a1 + 12) ^ *(a2 + 12)) & 1) != 0 || ((*(a1 + 13) ^ *(a2 + 13)) & 1) != 0 || ((*(a1 + 14) ^ *(a2 + 14)) & 1) != 0 || ((*(a1 + 15) ^ *(a2 + 15)) & 1) != 0 || ((*(a1 + 16) ^ *(a2 + 16)))
  {
    return 0;
  }

  if (a1[3] == a2[3] && a1[4] == a2[4])
  {
    return 1;
  }

  return sub_1C4F02938();
}

uint64_t sub_1C4B7A62C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736E6D756C6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656A627553736168 && a2 == 0xEA00000000007463;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6964657250736168 && a2 == 0xEC00000065746163;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000011 && 0x80000001C4FB3270 == a2;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000018 && 0x80000001C4FB3290 == a2;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x63656A624F736168 && a2 == 0xE900000000000074;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6372756F53736168 && a2 == 0xEA00000000007365;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x69666E6F43736168 && a2 == 0xED000065636E6564;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000013 && 0x80000001C4FB32B0 == a2;
                  if (v13 || (sub_1C4F02938() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x73656D6954736168 && a2 == 0xEC000000706D6174;
                    if (v14 || (sub_1C4F02938() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0x7453747265736E69 && a2 == 0xEC000000676E6972)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = sub_1C4F02938();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C4B7A9A4(char a1)
{
  result = 0x736E6D756C6F63;
  switch(a1)
  {
    case 1:
      result = 0x656A627553736168;
      break;
    case 2:
      result = 0x6964657250736168;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0xD000000000000018;
      break;
    case 5:
      result = 0x63656A624F736168;
      break;
    case 6:
      result = 0x6372756F53736168;
      break;
    case 7:
      result = 0x69666E6F43736168;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0x73656D6954736168;
      break;
    case 10:
      result = 0x7453747265736E69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4B7AB18(void *a1)
{
  v4 = v1;
  v6 = sub_1C456902C(&qword_1EC0C3E18, &qword_1C4F56188);
  sub_1C43FCDF8(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C4402A68();
  v12 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4B7BF90();
  sub_1C440F61C();
  v25 = *v4;
  sub_1C456902C(&qword_1EC0C3E00, &qword_1C4F56180);
  sub_1C4B7C038(&qword_1EC0C3E20, sub_1C4B7C0B0);
  sub_1C43FBF44();
  sub_1C4F027E8();
  if (!v2)
  {
    v13 = *(v4 + 8);
    sub_1C4426090(1);
    v14 = *(v4 + 9);
    sub_1C4426090(2);
    v15 = *(v4 + 10);
    sub_1C4426090(3);
    v16 = *(v4 + 11);
    sub_1C4426090(4);
    v17 = *(v4 + 12);
    sub_1C4426090(5);
    v18 = *(v4 + 13);
    sub_1C4426090(6);
    v19 = *(v4 + 14);
    sub_1C4426090(7);
    v20 = *(v4 + 15);
    sub_1C4426090(8);
    v21 = *(v4 + 16);
    sub_1C4426090(9);
    v22 = v4[3];
    v23 = v4[4];
    sub_1C43FBF44();
    sub_1C4F02798();
  }

  return (*(v8 + 8))(v3, v6);
}

uint64_t sub_1C4B7AD5C()
{
  v1 = *v0;
  sub_1C49F04BC();
  v2 = *(v0 + 8);
  sub_1C4F02B18();
  v3 = *(v0 + 9);
  sub_1C4F02B18();
  v4 = *(v0 + 10);
  sub_1C4F02B18();
  v5 = *(v0 + 11);
  sub_1C4F02B18();
  v6 = *(v0 + 12);
  sub_1C4F02B18();
  v7 = *(v0 + 13);
  sub_1C4F02B18();
  v8 = *(v0 + 14);
  sub_1C4F02B18();
  v9 = *(v0 + 15);
  sub_1C4F02B18();
  v10 = *(v0 + 16);
  sub_1C4F02B18();
  v11 = v0[3];
  v12 = v0[4];

  return sub_1C4F01298();
}

uint64_t sub_1C4B7AE0C()
{
  sub_1C4F02AF8();
  sub_1C4B7AD5C();
  return sub_1C4F02B68();
}

void sub_1C4B7AE4C()
{
  sub_1C43FE96C();
  v2 = v1;
  v4 = v3;
  v5 = sub_1C456902C(&qword_1EC0C3DF0, &qword_1C4F56178);
  sub_1C43FCDF8(v5);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v9 = v2[3];
  v10 = v2[4];
  v11 = sub_1C4404BCC();
  sub_1C4409678(v11, v12);
  sub_1C4B7BF90();
  sub_1C4F02BC8();
  if (v0)
  {
    sub_1C440962C(v2);
  }

  else
  {
    sub_1C456902C(&qword_1EC0C3E00, &qword_1C4F56180);
    LOBYTE(v29) = 0;
    sub_1C4B7C038(&qword_1EC0C3E08, sub_1C4B7BFE4);
    sub_1C4F026C8();
    v13 = v32;
    v14 = sub_1C440D8A0(1);
    v44 = sub_1C440D8A0(2);
    v28 = sub_1C440D8A0(3);
    v27 = sub_1C440D8A0(4);
    v26 = sub_1C440D8A0(5);
    v25 = sub_1C440D8A0(6);
    v24 = sub_1C440D8A0(7);
    v23 = sub_1C440D8A0(8);
    v22 = sub_1C440D8A0(9);
    v15 = sub_1C4F02678();
    v20 = v16;
    v21 = v15;
    v17 = sub_1C43FBF04();
    v18(v17);
    *&v29 = v13;
    BYTE8(v29) = v14 & 1;
    BYTE9(v29) = v44 & 1;
    BYTE10(v29) = v28 & 1;
    BYTE11(v29) = v27 & 1;
    BYTE12(v29) = v26 & 1;
    BYTE13(v29) = v25 & 1;
    BYTE14(v29) = v24 & 1;
    HIBYTE(v29) = v23 & 1;
    LOBYTE(v30) = v22 & 1;
    *(&v30 + 1) = v21;
    v31 = v20;
    sub_1C487BE08(&v29, &v32);
    sub_1C440962C(v2);
    v32 = v13;
    v33 = v14 & 1;
    v34 = v44 & 1;
    v35 = v28 & 1;
    v36 = v27 & 1;
    v37 = v26 & 1;
    v38 = v25 & 1;
    v39 = v24 & 1;
    v40 = v23 & 1;
    v41 = v22 & 1;
    v42 = v21;
    v43 = v20;
    sub_1C487BDB4(&v32);
    v19 = v30;
    *v4 = v29;
    *(v4 + 16) = v19;
    *(v4 + 32) = v31;
  }

  sub_1C4403810();
  sub_1C43FBC80();
}

uint64_t sub_1C4B7B20C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E656C626174 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x736E6D756C6F63 && a2 == 0xE700000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E497463656A626FLL && a2 == 0xEB00000000786564;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x54467463656A626FLL && a2 == 0xEE007865646E4953;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000012 && 0x80000001C4FB32D0 == a2)
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

unint64_t sub_1C4B7B3C8(char a1)
{
  result = 0x6D614E656C626174;
  switch(a1)
  {
    case 1:
      result = 0x736E6D756C6F63;
      break;
    case 2:
      result = 0x6E497463656A626FLL;
      break;
    case 3:
      result = 0x54467463656A626FLL;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C4B7B480()
{
  sub_1C43FE96C();
  v3 = v2;
  v4 = sub_1C456902C(&qword_1EC0C3E38, &qword_1C4F561A0);
  sub_1C43FCDF8(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C4402A68();
  v10 = v3[4];
  sub_1C4409678(v3, v3[3]);
  sub_1C4B7C104();
  sub_1C4F02BF8();
  sub_1C4402150();
  sub_1C4F02798();
  if (!v0)
  {
    sub_1C456902C(&qword_1EC0BB018, qword_1C4F50870);
    sub_1C4B7C158(&qword_1EDDDBC60, &qword_1EDDE3FF8);
    sub_1C4402150();
    sub_1C4F027E8();
    sub_1C4402150();
    sub_1C4F02748();
    sub_1C4402150();
    sub_1C4F02748();
    sub_1C4402150();
    sub_1C4F02748();
  }

  (*(v6 + 8))(v1, v4);
  sub_1C43FBC80();
}

void sub_1C4B7B6A0()
{
  sub_1C43FE96C();
  v2 = v1;
  v3 = sub_1C456902C(&qword_1EC0C3E30, &unk_1C4F56190);
  sub_1C43FCDF8(v3);
  v5 = *(v4 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v7 = v2[4];
  sub_1C4409678(v2, v2[3]);
  sub_1C4B7C104();
  sub_1C4F02BC8();
  if (!v0)
  {
    sub_1C4418C04();
    sub_1C4F02678();
    sub_1C456902C(&qword_1EC0BB018, qword_1C4F50870);
    sub_1C4B7C158(&qword_1EDDFEA60, &qword_1EDDFF060);
    sub_1C4F026C8();
    sub_1C4F02628();
    sub_1C4418C04();
    sub_1C4F02628();
    sub_1C4418C04();
    sub_1C4F02628();
    v8 = sub_1C43FD6E4();
    v9(v8);
  }

  sub_1C440962C(v2);
  sub_1C4403810();
  sub_1C43FBC80();
}

uint64_t sub_1C4B7B94C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4B7A62C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4B7B974@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C4617DB0();
  *a1 = result;
  return result;
}

uint64_t sub_1C4B7B99C(uint64_t a1)
{
  v2 = sub_1C4B7BF90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4B7B9D8(uint64_t a1)
{
  v2 = sub_1C4B7BF90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4B7BA1C()
{
  sub_1C4F02AF8();
  sub_1C4B7AD5C();
  return sub_1C4F02B68();
}

double sub_1C4B7BA58@<D0>(uint64_t a1@<X8>)
{
  sub_1C4B7AE4C();
  if (!v1)
  {
    result = *&v4;
    *a1 = v4;
    *(a1 + 16) = v5;
    *(a1 + 32) = v6;
  }

  return result;
}

uint64_t sub_1C4B7BABC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1C4F02AF8();
  a4(v8, v6);
  return sub_1C4F02B68();
}

uint64_t sub_1C4B7BB10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4B7B20C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4B7BB38(uint64_t a1)
{
  v2 = sub_1C4B7C104();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4B7BB74(uint64_t a1)
{
  v2 = sub_1C4B7C104();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4B7BBB0(uint64_t a1@<X8>)
{
  sub_1C4B7B6A0();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
    *(a1 + 24) = v6;
    *(a1 + 26) = BYTE2(v6);
  }
}

void sub_1C4B7BBF4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 12) | (*(v0 + 26) << 16);
  sub_1C4B7B480();
}

unint64_t sub_1C4B7BC24()
{
  result = qword_1EC0C3DE8;
  if (!qword_1EC0C3DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3DE8);
  }

  return result;
}

uint64_t type metadata accessor for SubgraphDatabaseTable.SubgraphComparableTriple()
{
  result = qword_1EC0C3E40;
  if (!qword_1EC0C3E40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4B7BD3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = a4;
  v28 = a5;
  v10 = sub_1C456902C(&qword_1EC0C3F10, &qword_1C4F56700);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v27 - v16;
  v18 = sub_1C4EFEEF8();
  v19 = *(*(v18 - 8) + 16);
  v19(v17, a1, v18);
  v20 = &v17[*(v11 + 56)];
  *v20 = a2;
  *(v20 + 1) = a3;
  v19(v15, v27, v18);
  v21 = v28;
  v22 = &v15[*(v11 + 56)];
  *v22 = v28;
  *(v22 + 1) = a6;
  sub_1C4B7CC2C(&qword_1EDDFCCB0, MEMORY[0x1E69A9748]);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  if (sub_1C4F010B8())
  {
    if (a2 == v21 && a3 == a6)
    {
      v25 = 0;
      goto LABEL_10;
    }

    v24 = sub_1C4F02938();
  }

  else
  {
    sub_1C4B7CC2C(&qword_1EC0C3F00, MEMORY[0x1E69A9748]);
    v24 = sub_1C4F01068();
  }

  v25 = v24;
LABEL_10:
  sub_1C4420C3C(v15, &qword_1EC0C3F10, &qword_1C4F56700);
  sub_1C4420C3C(v17, &qword_1EC0C3F10, &qword_1C4F56700);
  return v25 & 1;
}

unint64_t sub_1C4B7BF90()
{
  result = qword_1EC0C3DF8;
  if (!qword_1EC0C3DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3DF8);
  }

  return result;
}

unint64_t sub_1C4B7BFE4()
{
  result = qword_1EC0C3E10;
  if (!qword_1EC0C3E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3E10);
  }

  return result;
}

uint64_t sub_1C4B7C038(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&qword_1EC0C3E00, &qword_1C4F56180);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C4B7C0B0()
{
  result = qword_1EC0C3E28;
  if (!qword_1EC0C3E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3E28);
  }

  return result;
}

unint64_t sub_1C4B7C104()
{
  result = qword_1EDDFB0D0;
  if (!qword_1EDDFB0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB0D0);
  }

  return result;
}

uint64_t sub_1C4B7C158(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&qword_1EC0BB018, qword_1C4F50870);
    sub_1C4B7CC2C(a2, type metadata accessor for ViewDatabaseArtifact.Property);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SubgraphDatabaseTable.Config.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for SubgraphDatabaseTable.SubgraphColumns.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C4B7C3D4()
{
  sub_1C4B7C4D8();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    v1 = sub_1C4EFF0C8();
    if (v3 <= 0x3F)
    {
      v1 = sub_1C4EFEEF8();
      if (v4 <= 0x3F)
      {
        v5 = sub_1C4EFF8A8();
        if (v6 > 0x3F)
        {
          return v5;
        }

        else
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

void sub_1C4B7C4D8()
{
  if (!qword_1EC0C3E50)
  {
    v0 = sub_1C4F01F48();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC0C3E50);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for SubgraphDatabaseTable.SubgraphColumns.SubgraphTripleColumn(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C4B7C608()
{
  result = qword_1EC0C3E58;
  if (!qword_1EC0C3E58)
  {
    sub_1C4572308(&qword_1EC0C3E00, &qword_1C4F56180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3E58);
  }

  return result;
}

unint64_t sub_1C4B7C670()
{
  result = qword_1EC0C3E60;
  if (!qword_1EC0C3E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3E60);
  }

  return result;
}

uint64_t sub_1C4B7C6C4(uint64_t a1)
{
  result = sub_1C4B7CC2C(&qword_1EC0C3E70, type metadata accessor for SubgraphDatabaseTable.SubgraphComparableTriple);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B7C71C(void *a1)
{
  a1[1] = sub_1C4B7CC2C(&qword_1EC0C3E78, type metadata accessor for SubgraphDatabaseTable.SubgraphComparableTriple);
  a1[2] = sub_1C4B7CC2C(&qword_1EC0C3E80, type metadata accessor for SubgraphDatabaseTable.SubgraphComparableTriple);
  a1[3] = sub_1C4B7CC2C(&qword_1EC0C3E88, type metadata accessor for SubgraphDatabaseTable.SubgraphComparableTriple);
  result = sub_1C4B7CC2C(&qword_1EC0C3E90, type metadata accessor for SubgraphDatabaseTable.SubgraphComparableTriple);
  a1[4] = result;
  return result;
}

unint64_t sub_1C4B7C7F4()
{
  result = qword_1EC0C3E98;
  if (!qword_1EC0C3E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3E98);
  }

  return result;
}

unint64_t sub_1C4B7C84C()
{
  result = qword_1EC0C3EA0;
  if (!qword_1EC0C3EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3EA0);
  }

  return result;
}

unint64_t sub_1C4B7C8A4()
{
  result = qword_1EDDFD518;
  if (!qword_1EDDFD518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFD518);
  }

  return result;
}

unint64_t sub_1C4B7C8FC()
{
  result = qword_1EDDFD520;
  if (!qword_1EDDFD520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFD520);
  }

  return result;
}

unint64_t sub_1C4B7C954()
{
  result = qword_1EC0C3EA8;
  if (!qword_1EC0C3EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3EA8);
  }

  return result;
}

unint64_t sub_1C4B7C9AC()
{
  result = qword_1EC0C3EB0;
  if (!qword_1EC0C3EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3EB0);
  }

  return result;
}

unint64_t sub_1C4B7CA00()
{
  result = qword_1EC0C3EB8;
  if (!qword_1EC0C3EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3EB8);
  }

  return result;
}

unint64_t sub_1C4B7CA54()
{
  result = qword_1EC0C3EC8;
  if (!qword_1EC0C3EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3EC8);
  }

  return result;
}

uint64_t sub_1C4B7CAA8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1C4B7CAE8()
{
  result = qword_1EC0C3ED0;
  if (!qword_1EC0C3ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3ED0);
  }

  return result;
}

uint64_t sub_1C4B7CB3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_1C43FBCE0(v4);
  v6 = *(v5 + 16);
  v7 = sub_1C43FBC98();
  v8(v7);
  return a2;
}

uint64_t sub_1C4B7CB98(uint64_t result)
{
  if (result)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  return result;
}

unint64_t sub_1C4B7CBD8()
{
  result = qword_1EC0C3EE0;
  if (!qword_1EC0C3EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3EE0);
  }

  return result;
}

uint64_t sub_1C4B7CC2C(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for SubgraphDatabaseTable.SubgraphComparableTriple.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4B7CD54()
{
  result = qword_1EC0C3F18;
  if (!qword_1EC0C3F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3F18);
  }

  return result;
}

unint64_t sub_1C4B7CDAC()
{
  result = qword_1EC0C3F20;
  if (!qword_1EC0C3F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3F20);
  }

  return result;
}

unint64_t sub_1C4B7CE04()
{
  result = qword_1EC0C3F28;
  if (!qword_1EC0C3F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3F28);
  }

  return result;
}

void sub_1C4B7CE74(uint64_t a1)
{
  v2 = type metadata accessor for Configuration();
  v3 = sub_1C43FBCE0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v30[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v9 = sub_1C43FBCE0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v30[-v12];
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0();
  }

  v14 = sub_1C4F00978();
  sub_1C442B738(v14, qword_1EDE2DCD8);
  v15 = sub_1C4F00968();
  v16 = sub_1C4F01CF8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = sub_1C43FCED0();
    *v17 = 0;
    _os_log_impl(&dword_1C43F8000, v15, v16, "SysdiagnoseXPC: starting...", v17, 2u);
    MEMORY[0x1C6942830](v17, -1, -1);
  }

  if (qword_1EDDE9218 != -1)
  {
    sub_1C4407C60();
  }

  v18 = sub_1C442B738(v8, qword_1EDE2CED0);
  if (qword_1EDDFDCF8 != -1)
  {
    sub_1C43FF284();
  }

  swift_beginAccess();
  if (qword_1EDDFF3C8)
  {
    sub_1C43FDED0(qword_1EDDFF3C8, off_1EDDFF3D0);
    v20 = v19();
    (*(v21 + 48))(a1, v20, v21);
    sub_1C4409954(v7, v13);
  }

  else
  {
    sub_1C44098F0(a1, v13);
  }

  sub_1C440BAA8(v13, 0, 1, v2);
  swift_beginAccess();
  sub_1C45A6EE0(v13, v18);
  swift_endAccess();
  sub_1C45A6F50();
  sub_1C4425450();
  v22 = sub_1C49AA56C();
  v23 = qword_1EDE2CEC0;
  qword_1EDE2CEC0 = v22;
  v24 = v22;

  if (v24)
  {
    qword_1EDE2CEC8 = [objc_allocWithZone(type metadata accessor for SysdiagnoseXPC.Delegate()) init];
    v25 = qword_1EDE2CEC8;
    swift_unknownObjectRelease();
    [v24 setDelegate:v25];

    [v24 resume];
  }

  else
  {
    v24 = sub_1C4F00968();
    v26 = sub_1C4F01CE8();
    if (os_log_type_enabled(v24, v26))
    {
      v27 = sub_1C43FCED0();
      sub_1C43FBD24(v27);
      sub_1C440BAE8(&dword_1C43F8000, v28, v29, "Failed to create SysdiagnoseXPC service");
      sub_1C43FE9D4();
    }
  }
}

uint64_t sub_1C4B7D1D8()
{
  v0 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C44F9918(v0, qword_1EDE2CED0);
  v1 = sub_1C442B738(v0, qword_1EDE2CED0);
  v2 = type metadata accessor for Configuration();

  return sub_1C440BAA8(v1, 1, 1, v2);
}

uint64_t SysdiagnoseXPC.SysdiagnoseXPCError.hashValue.getter()
{
  v1 = *v0;
  sub_1C4F02AF8();
  MEMORY[0x1C69417F0](v1);
  return sub_1C4F02B68();
}

uint64_t sub_1C4B7D30C()
{
  sub_1C43FCF70();
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0();
  }

  v1 = sub_1C4F00978();
  v2 = sub_1C43FEB44(v1, qword_1EDE2DCD8);
  v3 = sub_1C4F01CF8();
  if (sub_1C4402B64(v3))
  {
    v4 = sub_1C43FCED0();
    sub_1C43FBD24(v4);
    sub_1C43FFFD8(&dword_1C43F8000, v5, v6, "SysdiagnoseXPC: diagnostics");
    sub_1C43FE9D4();
  }

  v7 = sub_1C494B4E4();
  v8 = *(v0 + 8);

  return v8(v7);
}

uint64_t sub_1C4B7D438(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  v4 = a2;
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_1C4B7D4DC;

  return SysdiagnoseXPC.Server.diagnostics()();
}

uint64_t sub_1C4B7D4DC()
{
  v2 = v0;
  sub_1C43FBDE4();
  v4 = v3;
  v5 = *(v3 + 32);
  v6 = *(v3 + 16);
  v7 = *v1;
  sub_1C43FBDAC();
  *v8 = v7;

  if (v2)
  {
    v9 = sub_1C4EF9798();

    v10 = 0;
    v11 = v9;
  }

  else
  {
    v10 = sub_1C4F01108();

    v9 = 0;
    v11 = v10;
  }

  v12 = *(v4 + 24);
  v12[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v7 + 8);

  return v13();
}

uint64_t SysdiagnoseXPC.Server.entityTaggingSupplementalDiagnostics()()
{
  sub_1C43FBCD4();
  v1 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C440FC8C(v1);
  v3 = *(v2 + 64);
  *(v0 + 96) = sub_1C43FBE7C();
  v4 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C4B7D6E4()
{
  sub_1C4404D98();
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0();
  }

  v2 = sub_1C4F00978();
  v3 = sub_1C43FEB44(v2, qword_1EDE2DCD8);
  v4 = sub_1C4F01CF8();
  if (sub_1C4402B64(v4))
  {
    v5 = sub_1C43FCED0();
    sub_1C43FBD24(v5);
    sub_1C43FFFD8(&dword_1C43F8000, v6, v7, "SysdiagnoseXPC: entitytagging supplemental diagnostics");
    sub_1C43FE9D4();
  }

  if (qword_1EDDFDCF8 != -1)
  {
    sub_1C43FF284();
  }

  sub_1C440D8C4();
  if (!qword_1EDDFF3C8)
  {
    v22 = *(v1 + 96);
    sub_1C4B7F064();
    v23 = sub_1C43FFB2C();
    sub_1C440E818(v23, v24);

    sub_1C4432B00();
    sub_1C4416444();

    __asm { BRAA            X1, X16 }
  }

  sub_1C43FDED0(qword_1EDDFF3C8, off_1EDDFF3D0);
  v8();
  sub_1C4404274();
  if (qword_1EDDE9218 != -1)
  {
    sub_1C4407C60();
  }

  v9 = *(v1 + 96);
  sub_1C44090FC(*(v1 + 88), qword_1EDE2CED0);
  sub_1C441E6F8();
  v10 = type metadata accessor for Configuration();
  result = sub_1C440381C(v10);
  if (!v12)
  {
    v13 = *(v0 + 8);
    sub_1C4411260();
    v27 = v14 + *v14;
    v16 = *(v15 + 4);
    v17 = swift_task_alloc();
    v18 = sub_1C441EF54(v17);
    *v18 = v19;
    sub_1C4400F2C(v18);
    sub_1C4416444();

    __asm { BRAA            X3, X16 }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4B7D92C()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  sub_1C44125F4(v3, v4);
  v6 = *(v5 + 104);
  v8 = *(v7 + 96);
  v9 = *v0;
  sub_1C43FBDAC();
  *v10 = v9;
  *(v12 + 112) = v11;

  sub_1C4467948(v8);
  v13 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1C4B7DA44(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  v4 = a2;
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_1C4B7F5CC;

  return SysdiagnoseXPC.Server.entityTaggingSupplementalDiagnostics()();
}

uint64_t SysdiagnoseXPC.Server.entityRelevanceRankingSupplementalDiagnostics()()
{
  sub_1C43FBCD4();
  v1 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C440FC8C(v1);
  v3 = *(v2 + 64);
  *(v0 + 96) = sub_1C43FBE7C();
  v4 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C4B7DB68()
{
  sub_1C4404D98();
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0();
  }

  v2 = sub_1C4F00978();
  v3 = sub_1C43FEB44(v2, qword_1EDE2DCD8);
  v4 = sub_1C4F01CF8();
  if (sub_1C4402B64(v4))
  {
    v5 = sub_1C43FCED0();
    sub_1C43FBD24(v5);
    sub_1C43FFFD8(&dword_1C43F8000, v6, v7, "SysdiagnoseXPC: entityRelevanceRanking supplemental diagnostics");
    sub_1C43FE9D4();
  }

  if (qword_1EDDFDCF8 != -1)
  {
    sub_1C43FF284();
  }

  sub_1C440D8C4();
  if (!qword_1EDDFF3C8)
  {
    v22 = *(v1 + 96);
    sub_1C4B7F064();
    v23 = sub_1C43FFB2C();
    sub_1C440E818(v23, v24);

    sub_1C4432B00();
    sub_1C4416444();

    __asm { BRAA            X1, X16 }
  }

  sub_1C43FDED0(qword_1EDDFF3C8, off_1EDDFF3D0);
  v8();
  sub_1C4404274();
  if (qword_1EDDE9218 != -1)
  {
    sub_1C4407C60();
  }

  v9 = *(v1 + 96);
  sub_1C44090FC(*(v1 + 88), qword_1EDE2CED0);
  sub_1C441E6F8();
  v10 = type metadata accessor for Configuration();
  result = sub_1C440381C(v10);
  if (!v12)
  {
    v13 = *(v0 + 16);
    sub_1C4411260();
    v27 = v14 + *v14;
    v16 = *(v15 + 4);
    v17 = swift_task_alloc();
    v18 = sub_1C441EF54(v17);
    *v18 = v19;
    sub_1C4400F2C(v18);
    sub_1C4416444();

    __asm { BRAA            X3, X16 }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4B7DDD0(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  v4 = a2;
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_1C4B7F5CC;

  return SysdiagnoseXPC.Server.entityRelevanceRankingSupplementalDiagnostics()();
}

uint64_t SysdiagnoseXPC.Server.entityResolutionSupplementalDiagnostics()()
{
  sub_1C43FBCD4();
  v1 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C440FC8C(v1);
  v3 = *(v2 + 64);
  *(v0 + 96) = sub_1C43FBE7C();
  v4 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C4B7DEF4()
{
  sub_1C4404D98();
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0();
  }

  v2 = sub_1C4F00978();
  v3 = sub_1C43FEB44(v2, qword_1EDE2DCD8);
  v4 = sub_1C4F01CF8();
  if (sub_1C4402B64(v4))
  {
    v5 = sub_1C43FCED0();
    sub_1C43FBD24(v5);
    sub_1C43FFFD8(&dword_1C43F8000, v6, v7, "SysdiagnoseXPC: entityResolution supplemental diagnostics");
    sub_1C43FE9D4();
  }

  if (qword_1EDDFDCF8 != -1)
  {
    sub_1C43FF284();
  }

  sub_1C440D8C4();
  if (!qword_1EDDFF3C8)
  {
    v22 = *(v1 + 96);
    sub_1C4B7F064();
    v23 = sub_1C43FFB2C();
    sub_1C440E818(v23, v24);

    sub_1C4432B00();
    sub_1C4416444();

    __asm { BRAA            X1, X16 }
  }

  sub_1C43FDED0(qword_1EDDFF3C8, off_1EDDFF3D0);
  v8();
  sub_1C4404274();
  if (qword_1EDDE9218 != -1)
  {
    sub_1C4407C60();
  }

  v9 = *(v1 + 96);
  sub_1C44090FC(*(v1 + 88), qword_1EDE2CED0);
  sub_1C441E6F8();
  v10 = type metadata accessor for Configuration();
  result = sub_1C440381C(v10);
  if (!v12)
  {
    v13 = *(v0 + 24);
    sub_1C4411260();
    v27 = v14 + *v14;
    v16 = *(v15 + 4);
    v17 = swift_task_alloc();
    v18 = sub_1C441EF54(v17);
    *v18 = v19;
    sub_1C4400F2C(v18);
    sub_1C4416444();

    __asm { BRAA            X3, X16 }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4B7E15C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  v4 = a2;
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_1C4B7F5CC;

  return SysdiagnoseXPC.Server.entityResolutionSupplementalDiagnostics()();
}

uint64_t SysdiagnoseXPC.Server.viewsSupplementalDiagnostics()()
{
  sub_1C43FBCD4();
  v1 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C440FC8C(v1);
  v3 = *(v2 + 64);
  *(v0 + 96) = sub_1C43FBE7C();
  v4 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C4B7E280()
{
  sub_1C4404D98();
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0();
  }

  v2 = sub_1C4F00978();
  v3 = sub_1C43FEB44(v2, qword_1EDE2DCD8);
  v4 = sub_1C4F01CF8();
  if (sub_1C4402B64(v4))
  {
    v5 = sub_1C43FCED0();
    sub_1C43FBD24(v5);
    sub_1C43FFFD8(&dword_1C43F8000, v6, v7, "SysdiagnoseXPC: views supplemental diagnostics");
    sub_1C43FE9D4();
  }

  if (qword_1EDDFDCF8 != -1)
  {
    sub_1C43FF284();
  }

  sub_1C440D8C4();
  if (!qword_1EDDFF3C8)
  {
    v22 = *(v1 + 96);
    sub_1C4B7F064();
    v23 = sub_1C43FFB2C();
    sub_1C440E818(v23, v24);

    sub_1C4432B00();
    sub_1C4416444();

    __asm { BRAA            X1, X16 }
  }

  sub_1C43FDED0(qword_1EDDFF3C8, off_1EDDFF3D0);
  v8();
  sub_1C4404274();
  if (qword_1EDDE9218 != -1)
  {
    sub_1C4407C60();
  }

  v9 = *(v1 + 96);
  sub_1C44090FC(*(v1 + 88), qword_1EDE2CED0);
  sub_1C441E6F8();
  v10 = type metadata accessor for Configuration();
  result = sub_1C440381C(v10);
  if (!v12)
  {
    v13 = *(v0 + 32);
    sub_1C4411260();
    v27 = v14 + *v14;
    v16 = *(v15 + 4);
    v17 = swift_task_alloc();
    v18 = sub_1C441EF54(v17);
    *v18 = v19;
    sub_1C4400F2C(v18);
    sub_1C4416444();

    __asm { BRAA            X3, X16 }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4B7E4E8(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  v4 = a2;
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_1C4B7F5CC;

  return SysdiagnoseXPC.Server.viewsSupplementalDiagnostics()();
}

uint64_t SysdiagnoseXPC.Server.eventViewDiagnostics()()
{
  sub_1C43FBCD4();
  v1 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C440FC8C(v1);
  v3 = *(v2 + 64);
  *(v0 + 96) = sub_1C43FBE7C();
  v4 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C4B7E60C()
{
  sub_1C4404D98();
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0();
  }

  v2 = sub_1C4F00978();
  v3 = sub_1C43FEB44(v2, qword_1EDE2DCD8);
  v4 = sub_1C4F01CF8();
  if (sub_1C4402B64(v4))
  {
    v5 = sub_1C43FCED0();
    sub_1C43FBD24(v5);
    sub_1C43FFFD8(&dword_1C43F8000, v6, v7, "SysdiagnoseXPC: event view diagnostics");
    sub_1C43FE9D4();
  }

  if (qword_1EDDFDCF8 != -1)
  {
    sub_1C43FF284();
  }

  sub_1C440D8C4();
  if (!qword_1EDDFF3C8)
  {
    v22 = *(v1 + 96);
    sub_1C4B7F064();
    v23 = sub_1C43FFB2C();
    sub_1C440E818(v23, v24);

    sub_1C4432B00();
    sub_1C4416444();

    __asm { BRAA            X1, X16 }
  }

  sub_1C43FDED0(qword_1EDDFF3C8, off_1EDDFF3D0);
  v8();
  sub_1C4404274();
  if (qword_1EDDE9218 != -1)
  {
    sub_1C4407C60();
  }

  v9 = *(v1 + 96);
  sub_1C44090FC(*(v1 + 88), qword_1EDE2CED0);
  sub_1C441E6F8();
  v10 = type metadata accessor for Configuration();
  result = sub_1C440381C(v10);
  if (!v12)
  {
    v13 = *(v0 + 40);
    sub_1C4411260();
    v27 = v14 + *v14;
    v16 = *(v15 + 4);
    v17 = swift_task_alloc();
    v18 = sub_1C441EF54(v17);
    *v18 = v19;
    sub_1C4400F2C(v18);
    sub_1C4416444();

    __asm { BRAA            X3, X16 }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4B7E854()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  sub_1C44125F4(v3, v4);
  v6 = *(v5 + 104);
  v8 = *(v7 + 96);
  v9 = *v0;
  sub_1C43FBDAC();
  *v10 = v9;
  *(v12 + 112) = v11;

  sub_1C4467948(v8);
  v13 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1C4B7E94C()
{
  sub_1C43FCF70();
  v1 = v0[14];
  if (v1)
  {
    v2 = v0[9];
    v3 = v0[12];

    v4 = v0[1];

    return v4(v2, v1);
  }

  else
  {
    v6 = v0[12];
    sub_1C4B7F064();
    v7 = sub_1C43FFB2C();
    sub_1C440E818(v7, v8);

    sub_1C4432B00();

    return v9();
  }
}

uint64_t sub_1C4B7EA3C(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5)
{
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a1;
  v9 = a1;

  return sub_1C446D134(a5, v8);
}

uint64_t sub_1C4B7EAAC(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  v4 = a2;
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_1C4B7F5CC;

  return SysdiagnoseXPC.Server.eventViewDiagnostics()();
}

id SysdiagnoseXPC.Server.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1C4B7EB8C(uint64_t a1, void *a2)
{
  v3 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v4 = sub_1C43FBCE0(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v26 - v7;
  if (qword_1EDDE9218 != -1)
  {
    sub_1C4407C60();
  }

  v9 = sub_1C442B738(v3, qword_1EDE2CED0);
  swift_beginAccess();
  sub_1C4466EEC(v9, v8);
  v10 = type metadata accessor for Configuration();
  result = sub_1C44157D4(v8, 1, v10);
  if (result == 1)
  {
    __break(1u);
  }

  else
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

      v20 = sub_1C4F00978();
      v21 = sub_1C43FEB44(v20, qword_1EDE2DCD8);
      v22 = sub_1C4F01CF8();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = sub_1C43FCED0();
        sub_1C43FBD24(v23);
        sub_1C440BAE8(&dword_1C43F8000, v24, v25, "SysdiagnoseXPC: service is in no-op mode.");
        sub_1C43FE9D4();
      }
    }

    else
    {
      sub_1C4425450();
      if (sub_1C446874C())
      {
        v16 = [objc_opt_self() interfaceWithProtocol_];
        sub_1C44059FC(v16, sel_setExportedInterface_);

        v17 = [objc_allocWithZone(type metadata accessor for SysdiagnoseXPC.Server()) init];
        sub_1C44059FC(v17, sel_setExportedObject_);

        v31 = sub_1C4B7EED8;
        v32 = 0;
        aBlock = MEMORY[0x1E69E9820];
        v28 = 1107296256;
        v29 = sub_1C4833DD0;
        v30 = &unk_1F43FEC88;
        v18 = _Block_copy(&aBlock);
        sub_1C44059FC(v18, sel_setInterruptionHandler_);
        _Block_release(v18);
        v31 = sub_1C4B7EEF8;
        v32 = 0;
        aBlock = MEMORY[0x1E69E9820];
        v28 = 1107296256;
        v29 = sub_1C4833DD0;
        v30 = &unk_1F43FECB0;
        v19 = _Block_copy(&aBlock);
        sub_1C44059FC(v19, sel_setInvalidationHandler_);
        _Block_release(v19);
        [a2 resume];
        return 1;
      }
    }

    return 0;
  }

  return result;
}

void sub_1C4B7EF18(uint64_t (*a1)(void), const char *a2)
{
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0();
  }

  v4 = sub_1C4F00978();
  oslog = sub_1C43FEB44(v4, qword_1EDE2DCD8);
  v5 = a1();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = sub_1C43FCED0();
    sub_1C43FBD24(v6);
    _os_log_impl(&dword_1C43F8000, oslog, v5, a2, a1, 2u);
    sub_1C43FE9D4();
  }
}

unint64_t sub_1C4B7F064()
{
  result = qword_1EC0C3F38;
  if (!qword_1EC0C3F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3F38);
  }

  return result;
}

unint64_t sub_1C4B7F0BC()
{
  result = qword_1EC0C3F40;
  if (!qword_1EC0C3F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3F40);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SysdiagnoseXPC.SysdiagnoseXPCError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C4B7F258()
{
  sub_1C43FCF70();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_1C43FC218(v3);
  *v4 = v5;
  v6 = sub_1C440E474(v4);

  return v7(v6);
}

uint64_t sub_1C4B7F2E8()
{
  sub_1C43FCF70();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_1C43FC218(v3);
  *v4 = v5;
  v6 = sub_1C440E474(v4);

  return v7(v6);
}

uint64_t sub_1C4B7F378()
{
  sub_1C43FCF70();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_1C43FC218(v3);
  *v4 = v5;
  v6 = sub_1C440E474(v4);

  return v7(v6);
}

uint64_t sub_1C4B7F408()
{
  sub_1C43FCF70();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_1C43FC218(v3);
  *v4 = v5;
  v6 = sub_1C440E474(v4);

  return v7(v6);
}

uint64_t sub_1C4B7F498()
{
  sub_1C43FCF70();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_1C43FC218(v3);
  *v4 = v5;
  v6 = sub_1C440E474(v4);

  return v7(v6);
}

uint64_t sub_1C4B7F528()
{
  sub_1C43FCF70();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_1C43FC218(v3);
  *v4 = v5;
  v6 = sub_1C440E474(v4);

  return v7(v6);
}

uint64_t sub_1C4B7F65C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C456902C(&qword_1EC0C3FC8, &qword_1C4F56A38);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - v10;
  v12 = a1 == 0x64695F6E656B6F74 && a2 == 0xE900000000000073;
  if (!v12 && (sub_1C4F02938() & 1) == 0)
  {
    return 0;
  }

  v13 = OBJC_IVAR____TtC24IntelligencePlatformCore24TaskClassifierModelInput_encoderCharInput;
  sub_1C4B7FA70(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore24TaskClassifierModelInput_encoderCharInput, v11);
  v14 = sub_1C456902C(&qword_1EC0C3FC0, &qword_1C4F56A00);
  v15 = sub_1C44157D4(v11, 1, v14);
  sub_1C4B7FAE0(v11);
  if (v15 == 1)
  {
    return 0;
  }

  sub_1C4B7FA70(v2 + v13, v8);
  result = sub_1C44157D4(v8, 1, v14);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1C4577DBC();
    return sub_1C4F01D08();
  }

  return result;
}

uint64_t sub_1C4B7F868()
{
  sub_1C4B7FAE0(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore24TaskClassifierModelInput_encoderCharInput);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TaskClassifierModelInput()
{
  result = qword_1EC0C3FA8;
  if (!qword_1EC0C3FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C4B7F920()
{
  sub_1C4B7F9B0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1C4B7F9B0()
{
  if (!qword_1EC0C3FB8)
  {
    sub_1C4572308(&qword_1EC0C3FC0, &qword_1C4F56A00);
    v0 = sub_1C4F01F48();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC0C3FB8);
    }
  }
}

uint64_t sub_1C4B7FA14()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1C4B7FA70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0C3FC8, &qword_1C4F56A38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4B7FAE0(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0C3FC8, &qword_1C4F56A38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C4B7FBC0(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C456902C(&qword_1EC0C3FC8, &qword_1C4F56A38);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - v10;
  v12 = a1 == 0x64695F6E656B6F74 && a2 == 0xE900000000000073;
  if (!v12 && (sub_1C4F02938() & 1) == 0)
  {
    return 0;
  }

  v13 = OBJC_IVAR____TtC24IntelligencePlatformCore23TaskExtractorModelInput_encoderCharInput;
  sub_1C4B7FA70(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore23TaskExtractorModelInput_encoderCharInput, v11);
  v14 = sub_1C456902C(&qword_1EC0C3FC0, &qword_1C4F56A00);
  v15 = sub_1C44157D4(v11, 1, v14);
  sub_1C4B7FAE0(v11);
  if (v15 == 1)
  {
    return 0;
  }

  sub_1C4B7FA70(v2 + v13, v8);
  result = sub_1C44157D4(v8, 1, v14);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1C4577DBC();
    return sub_1C4F01D08();
  }

  return result;
}

uint64_t sub_1C4B7FDCC()
{
  sub_1C4B7FAE0(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore23TaskExtractorModelInput_encoderCharInput);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TaskExtractorModelInput()
{
  result = qword_1EC0C3FD0;
  if (!qword_1EC0C3FD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1C4B7FEA8()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[8];

  v6 = v0[9];

  v7 = v0[10];

  return v0;
}

uint64_t sub_1C4B7FEF8()
{
  sub_1C4B7FEA8();

  return swift_deallocClassInstance();
}

void sub_1C4B7FFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1C44CD9C0();
  v22 = 0;
  sub_1C440FC9C();
  sub_1C44337F4();
  sub_1C440D8E4();
  sub_1C4411270();
  sub_1C43FF688();
  sub_1C4409130();
  do
  {
    v38 = 0xE500000000000000;
    v39 = 0x68746E6F6DLL;
    switch(byte_1F43D2848[v22 + 32])
    {
      case 1:
        v39 = v32;
        v38 = v31;
        break;
      case 2:
        v39 = v34;
        v38 = v33;
        break;
      case 3:
        v38 = 0xEA0000000000646ELL;
        v39 = v35;
        break;
      case 4:
        v39 = v36;
        goto LABEL_10;
      case 5:
        v39 = v24;
        v38 = v37;
        break;
      case 6:
        v39 = v25;
LABEL_10:
        v38 = 0xEB00000000796164;
        break;
      case 7:
        v39 = 0xD000000000000017;
        v38 = 0x80000001C4F91710;
        break;
      default:
        break;
    }

    v42 = v23;
    v40 = *(v23 + 16);
    if (v40 >= *(v23 + 24) >> 1)
    {
      sub_1C44CD9C0();
      sub_1C4409130();
      sub_1C43FF688();
      sub_1C4411270();
      sub_1C440D8E4();
      sub_1C44337F4();
      sub_1C440FC9C();
      v31 = 0xEC00000068746E6FLL;
      v23 = v42;
    }

    ++v22;
    *(v23 + 16) = v40 + 1;
    v41 = v23 + 16 * v40;
    *(v41 + 32) = v39;
    *(v41 + 40) = v38;
  }

  while (v22 != 8);

  sub_1C4499940(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1C4B801B4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DateFetcher();
  v4 = sub_1C43FBD18(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v9 = v8 - v7;
  v10 = OBJC_IVAR____TtC24IntelligencePlatformCore17TimeAndDateSignal_dateFetcher;
  swift_beginAccess();
  sub_1C4B81684(v1 + v10, v9);
  v11 = sub_1C4EF9CD8();
  return (*(*(v11 - 8) + 32))(a1, v9, v11);
}

uint64_t sub_1C4B80280()
{
  v0 = sub_1C4EF9CD8();
  v1 = sub_1C43FCDF8(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  v11 = sub_1C4EF9F88();
  v12 = sub_1C43FCDF8(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBCC4();
  v19 = v18 - v17;
  sub_1C4407C80();
  v22 = sub_1C4B80440(v20, v21);
  sub_1C4EF9F58();
  if (v22 > 17)
  {
    sub_1C4B801B4(v7);
    sub_1C4EF9B38();
  }

  else
  {
    sub_1C4B801B4(v10);
  }

  v23 = sub_1C4EF9EC8();
  (*(v3 + 8))(v10, v0);
  (*(v14 + 8))(v19, v11);
  return v23 & 1;
}

uint64_t sub_1C4B80440(unsigned int *a1, uint64_t (*a2)(uint64_t))
{
  v31 = sub_1C4EF9CD8();
  v2 = sub_1C43FCDF8(v31);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBCC4();
  v9 = v8 - v7;
  v29 = sub_1C4EF9648();
  v10 = sub_1C43FCDF8(v29);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBCC4();
  v17 = v16 - v15;
  sub_1C456902C(&unk_1EC0BAD80, qword_1C4F16920);
  v18 = sub_1C4EF9F68();
  sub_1C43FCDF8(v18);
  v20 = v19;
  v22 = *(v21 + 72);
  v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1C4F0D130;
  (*(v20 + 104))(v24 + v23, *a1, v18);
  sub_1C4D51F7C();
  sub_1C4B801B4(v9);
  sub_1C4EF9EA8();

  v25 = (*(v4 + 8))(v9, v31);
  result = a2(v25);
  if (v27)
  {
    __break(1u);
  }

  else
  {
    v28 = result;
    (*(v12 + 8))(v17, v29);
    return v28;
  }

  return result;
}

uint64_t sub_1C4B80684()
{
  sub_1C4407C80();
  v2 = sub_1C4B80440(v0, v1);
  if ((v2 - 13) > 0xFFFFFFFFFFFFFFF9)
  {
    return 0;
  }

  if ((v2 - 13) < 4)
  {
    return 1;
  }

  if ((v2 - 17) < 3)
  {
    return 2;
  }

  return 3;
}

uint64_t sub_1C4B806DC(uint64_t a1)
{
  v3 = type metadata accessor for DateFetcher();
  v4 = sub_1C43FBD18(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v9 = v8 - v7;
  v10 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v11 = sub_1C43FBD18(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v47 - v14;
  v16 = sub_1C4EF9CD8();
  v17 = sub_1C43FCDF8(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBCC4();
  v24 = (v23 - v22);
  sub_1C4467FE0(a1, v15);
  if (sub_1C44157D4(v15, 1, v16) == 1)
  {
    sub_1C44686E4(v15);
  }

  else
  {
    v25 = *(v19 + 32);
    v25(v24, v15, v16);
    v25(v9, v24, v16);
    v26 = OBJC_IVAR____TtC24IntelligencePlatformCore17TimeAndDateSignal_dateFetcher;
    swift_beginAccess();
    sub_1C4B8145C(v9, v1 + v26);
    swift_endAccess();
  }

  sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F3B920;
  *(inited + 32) = 0x68746E6F6DLL;
  *(inited + 40) = 0xE500000000000000;
  sub_1C4413894();
  v30 = sub_1C4B80440(v28, v29);
  v31 = objc_opt_self();
  *(inited + 48) = [v31 featureValueWithInt64_];
  strcpy((inited + 56), "day_of_month");
  *(inited + 69) = 0;
  *(inited + 70) = -5120;
  sub_1C4412608();
  v34 = sub_1C4B80440(v32, v33);
  *(inited + 72) = sub_1C4400F4C(v34);
  *(inited + 80) = 0x775F666F5F796164;
  *(inited + 88) = 0xEB000000006B6565;
  sub_1C440B414();
  v37 = sub_1C4B80440(v35, v36);
  *(inited + 96) = sub_1C4400F4C(v37);
  *(inited + 104) = 0x656B6565775F7369;
  *(inited + 112) = 0xEA0000000000646ELL;
  v38 = sub_1C4B80280();
  *(inited + 120) = sub_1C4400F4C(v38);
  *(inited + 128) = 0x5F666F5F72756F68;
  *(inited + 136) = 0xEB00000000796164;
  sub_1C4407C80();
  v41 = sub_1C4B80440(v39, v40);
  *(inited + 144) = sub_1C4400F4C(v41);
  *(inited + 152) = 0x685F666F5F6E696DLL;
  *(inited + 160) = 0xEB0000000072756FLL;
  v42 = MEMORY[0x1E6969A88];
  v43 = MEMORY[0x1E6968258];
  v44 = sub_1C4B80440(MEMORY[0x1E6969A88], MEMORY[0x1E6968258]);
  *(inited + 168) = sub_1C4400F4C(v44);
  *(inited + 176) = 0x5F666F5F74726170;
  *(inited + 184) = 0xEB00000000796164;
  v45 = sub_1C4B80684();
  *(inited + 192) = sub_1C4400F4C(v45);
  *(inited + 200) = 0xD000000000000017;
  *(inited + 208) = 0x80000001C4F91710;
  *(inited + 216) = [v31 featureValueWithInt64_];
  sub_1C4577DBC();
  return sub_1C4F00F28();
}

void sub_1C4B80AF0(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v55 = a1;
  v7 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v8 = sub_1C43FBD18(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v54 = &v45 - v11;
  v50 = sub_1C4EF9CD8();
  v12 = sub_1C43FCDF8(v50);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBCC4();
  v51 = v18 - v17;
  v19 = type metadata accessor for FeatureProviderSnapshot(0);
  v20 = sub_1C43FCDF8(v19);
  v52 = v21;
  v53 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBCC4();
  v57 = v25 - v24;
  v26 = *(a2 + 16);
  v27 = MEMORY[0x1E69E7CC0];
  if (v26)
  {
    v45 = a3;
    v58 = MEMORY[0x1E69E7CC0];
    sub_1C459D0A8();
    v27 = v58;
    v29 = *(v14 + 16);
    v28 = v14 + 16;
    v30 = a2 + ((*(v28 + 64) + 32) & ~*(v28 + 64));
    v47 = *(v28 + 56);
    v48 = v29;
    v46 = (v28 - 8);
    v31 = v57;
    v49 = v28;
    do
    {
      v56 = v27;
      v32 = v50;
      v33 = v51;
      v34 = v48;
      v48(v51, v30, v50);
      v34(v31, v33, v32);
      v35 = v54;
      v34(v54, v33, v32);
      sub_1C440BAA8(v35, 0, 1, v32);
      v36 = sub_1C4B806DC(v35);
      sub_1C44686E4(v35);
      v37 = v55;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v38 = v37;
      v39 = v4;
      v40 = sub_1C4B814C0(v36, v38);

      sub_1C465CF34(v40);
      v42 = v41;

      v43 = v32;
      v27 = v56;
      (*v46)(v33, v43);
      *(v57 + *(v53 + 20)) = v42;
      v31 = v57;
      v58 = v27;
      v44 = *(v27 + 16);
      if (v44 >= *(v27 + 24) >> 1)
      {
        sub_1C459D0A8();
        v31 = v57;
        v27 = v58;
      }

      *(v27 + 16) = v44 + 1;
      sub_1C4586A54(v31, v27 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v44);
      v30 += v47;
      --v26;
      v4 = v39;
    }

    while (v26);
    a3 = v45;
  }

  *a3 = v27;
}

uint64_t sub_1C4B80E38()
{
  v0 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v1 = sub_1C43FBD18(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v9 - v4;
  v6 = sub_1C4EF9CD8();
  sub_1C440BAA8(v5, 1, 1, v6);
  v7 = sub_1C4B806DC(v5);
  sub_1C44686E4(v5);
  return v7;
}

id sub_1C4B80ED4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x68746E6F6DLL && a2 == 0xE500000000000000;
  if (v3 || (sub_1C43FD4D8() & 1) != 0)
  {
    v5 = MEMORY[0x1E6969A78];
    v6 = MEMORY[0x1E6968248];
LABEL_7:
    v7 = sub_1C4B80440(v5, v6);
LABEL_8:
    v8 = v7;
    return [objc_opt_self() featureValueWithInt64_];
  }

  v11 = a1 == sub_1C44178A0() && a2 == v10;
  if (v11 || (sub_1C43FD4D8() & 1) != 0)
  {
    v5 = MEMORY[0x1E6969A48];
    v6 = MEMORY[0x1E6968210];
    goto LABEL_7;
  }

  v13 = a1 == sub_1C4403840() && a2 == v12;
  if (v13 || (sub_1C43FD4D8() & 1) != 0)
  {
    v5 = MEMORY[0x1E6969AB0];
    v6 = MEMORY[0x1E6968270];
    goto LABEL_7;
  }

  v14 = a1 == 0x656B6565775F7369 && a2 == 0xEA0000000000646ELL;
  if (v14 || (sub_1C43FD4D8() & 1) != 0)
  {
    v7 = sub_1C4B80280();
    goto LABEL_8;
  }

  v15 = a1 == 0x5F666F5F72756F68 && a2 == 0xEB00000000796164;
  if (v15 || (sub_1C43FD4D8() & 1) != 0)
  {
    v5 = MEMORY[0x1E6969A58];
    v6 = MEMORY[0x1E6968228];
    goto LABEL_7;
  }

  v17 = a1 == sub_1C440E838() && a2 == v16;
  if (v17 || (sub_1C43FD4D8() & 1) != 0)
  {
    v5 = MEMORY[0x1E6969A88];
    v6 = MEMORY[0x1E6968258];
    goto LABEL_7;
  }

  v18 = a1 == 0x5F666F5F74726170 && a2 == 0xEB00000000796164;
  if (v18 || (sub_1C43FD4D8() & 1) != 0)
  {
    v7 = sub_1C4B80684();
    goto LABEL_8;
  }

  v19 = a1 == 0xD000000000000017 && 0x80000001C4F91710 == a2;
  if (v19 || (sub_1C43FD4D8() & 1) != 0)
  {
    sub_1C4432B10();
    v8 = sub_1C4B80440(v20, v21) / 5;
    return [objc_opt_self() featureValueWithInt64_];
  }

  return 0;
}

uint64_t sub_1C4B81194()
{
  sub_1C4B816E8(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore17TimeAndDateSignal_dateFetcher);
  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore17TimeAndDateSignal_calendar;
  v2 = sub_1C4EF9F88();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TimeAndDateSignal()
{
  result = qword_1EC0C3FE0;
  if (!qword_1EC0C3FE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4B81294()
{
  result = sub_1C4EF9CD8();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1C4EF9F88();
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

unint64_t sub_1C4B813DC(uint64_t a1)
{
  result = sub_1C4B81404();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C4B81404()
{
  result = qword_1EC0C3FF0;
  if (!qword_1EC0C3FF0)
  {
    type metadata accessor for TimeAndDateSignal();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3FF0);
  }

  return result;
}

uint64_t sub_1C4B8145C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DateFetcher();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *sub_1C4B814C0(_BYTE *a1, uint64_t a2)
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

uint64_t sub_1C4B81684(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DateFetcher();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4B816E8(uint64_t a1)
{
  v2 = type metadata accessor for DateFetcher();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C4B817BC(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C456902C(&qword_1EC0C3FC8, &qword_1C4F56A38);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - v10;
  v12 = a1 == 0x64695F6E656B6F74 && a2 == 0xE900000000000073;
  if (!v12 && (sub_1C4F02938() & 1) == 0)
  {
    return 0;
  }

  v13 = OBJC_IVAR____TtC24IntelligencePlatformCore23ToolSuggesterModelInput_encoderCharInput;
  sub_1C4B7FA70(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore23ToolSuggesterModelInput_encoderCharInput, v11);
  v14 = sub_1C456902C(&qword_1EC0C3FC0, &qword_1C4F56A00);
  v15 = sub_1C44157D4(v11, 1, v14);
  sub_1C4B7FAE0(v11);
  if (v15 == 1)
  {
    return 0;
  }

  sub_1C4B7FA70(v2 + v13, v8);
  result = sub_1C44157D4(v8, 1, v14);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1C4577DBC();
    return sub_1C4F01D08();
  }

  return result;
}

uint64_t sub_1C4B819C8()
{
  sub_1C4B7FAE0(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore23ToolSuggesterModelInput_encoderCharInput);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ToolSuggesterModelInput()
{
  result = qword_1EC0C3FF8;
  if (!qword_1EC0C3FF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4B81A80()
{
  v1 = *(v0 + 40);

  return v0;
}

uint64_t sub_1C4B81AA8()
{
  sub_1C4B81A80();

  return swift_deallocClassInstance();
}

uint64_t TopicMatcher.init(stores:source:pipelineType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = type metadata accessor for TopicMatcher();
  *(a4 + v8[7]) = 1056964608;
  *(a4 + v8[8]) = 2;
  v9 = a4 + v8[9];
  sub_1C4EFD4A8();
  sub_1C440053C();
  sub_1C448566C(a1, a4);
  v10 = v8[5];
  sub_1C43FD90C();
  result = sub_1C448566C(a2, a4 + v11);
  *(a4 + v8[6]) = v7;
  return result;
}

float sub_1C4B81B98(uint64_t a1, uint64_t a2)
{
  v246 = sub_1C4EFEEF8();
  v226 = *(v246 - 8);
  v4 = *(v226 + 64);
  MEMORY[0x1EEE9AC00](v246);
  v242 = &v222 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v241 = &v222 - v7;
  v8 = type metadata accessor for EntityTriple(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v239 = &v222 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v236 = &v222 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v234 = &v222 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v237 = &v222 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v243 = &v222 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v238 = &v222 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v245 = &v222 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v244 = &v222 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v227 = &v222 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v240 = &v222 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v235 = &v222 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v229 = &v222 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v230 = &v222 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v222 - v37;
  MEMORY[0x1EEE9AC00](v39);
  v232 = &v222 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v222 - v42;
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v222 - v45;
  v47 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47 - 8);
  v223 = &v222 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v228 = &v222 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v224 = &v222 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v231 = &v222 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v225 = &v222 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v233 = &v222 - v59;
  v60 = 0;
  v61 = *(a1 + 16);
  v248 = a1;
  v249 = v61;
  v62 = MEMORY[0x1E69E7CC0];
  v247 = v8;
  while (v249 != v60)
  {
    v63 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v64 = *(v9 + 72);
    sub_1C44718CC(v248 + v63 + v64 * v60, v46);
    v65 = &v46[*(v8 + 32)];
    v66 = *v65;
    v67 = *(v65 + 1);
    if (sub_1C4F013E8())
    {
      sub_1C448566C(v46, v239);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v252 = v62;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v69 = *(v62 + 16);
        sub_1C459DCC0();
        v62 = v252;
      }

      v70 = *(v62 + 16);
      v71 = v70 + 1;
      if (v70 >= *(v62 + 24) >> 1)
      {
        v222 = v70 + 1;
        sub_1C459DCC0();
        v71 = v222;
        v62 = v252;
      }

      ++v60;
      *(v62 + 16) = v71;
      sub_1C448566C(v239, v62 + v63 + v70 * v64);
      v8 = v247;
    }

    else
    {
      sub_1C44DBD5C(v46, type metadata accessor for EntityTriple);
      ++v60;
    }
  }

  v72 = v233;
  sub_1C44D0BD8(v62, v233);

  if (sub_1C44157D4(v72, 1, v8) == 1)
  {
    goto LABEL_22;
  }

  v73 = (v72 + *(v8 + 32));
  v74 = v73[1];
  v222 = *v73;
  v239 = v74;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44DBD5C(v72, type metadata accessor for EntityTriple);
  v75 = 0;
  v76 = *(a2 + 16);
  v77 = MEMORY[0x1E69E7CC0];
  while (v76 != v75)
  {
    v78 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v79 = *(v9 + 72);
    sub_1C44718CC(a2 + v78 + v79 * v75, v43);
    v80 = &v43[*(v8 + 32)];
    v81 = *v80;
    v82 = *(v80 + 1);
    if (sub_1C4F013E8())
    {
      sub_1C448566C(v43, v232);
      v83 = swift_isUniquelyReferenced_nonNull_native();
      v252 = v77;
      if ((v83 & 1) == 0)
      {
        v84 = *(v77 + 16);
        sub_1C459DCC0();
        v77 = v252;
      }

      v85 = *(v77 + 16);
      v86 = v85 + 1;
      if (v85 >= *(v77 + 24) >> 1)
      {
        v233 = v85 + 1;
        sub_1C459DCC0();
        v86 = v233;
        v77 = v252;
      }

      ++v75;
      *(v77 + 16) = v86;
      sub_1C448566C(v232, v77 + v78 + v85 * v79);
      v8 = v247;
    }

    else
    {
      sub_1C44DBD5C(v43, type metadata accessor for EntityTriple);
      ++v75;
    }
  }

  v72 = v225;
  sub_1C44D0BD8(v77, v225);

  if (sub_1C44157D4(v72, 1, v8) == 1)
  {

LABEL_22:
    sub_1C4420C3C(v72, &qword_1EC0BA590, &qword_1C4F1F430);
    goto LABEL_23;
  }

  v171 = (v72 + *(v8 + 32));
  v173 = *v171;
  v172 = v171[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44DBD5C(v72, type metadata accessor for EntityTriple);
  if (v222 == v173 && v239 == v172)
  {
    goto LABEL_138;
  }

  v175 = sub_1C4F02938();

  result = 1.0;
  if (v175)
  {
    return result;
  }

LABEL_23:
  v87 = 0;
  v88 = MEMORY[0x1E69E7CC0];
  while (v249 != v87)
  {
    v89 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v90 = *(v9 + 72);
    sub_1C44718CC(v248 + v89 + v90 * v87, v38);
    v91 = &v38[*(v8 + 32)];
    v92 = *v91;
    v93 = *(v91 + 1);
    if (sub_1C4F013E8())
    {
      sub_1C448566C(v38, v236);
      v94 = swift_isUniquelyReferenced_nonNull_native();
      v252 = v88;
      if ((v94 & 1) == 0)
      {
        v95 = *(v88 + 16);
        sub_1C459DCC0();
        v88 = v252;
      }

      v96 = *(v88 + 16);
      if (v96 >= *(v88 + 24) >> 1)
      {
        sub_1C459DCC0();
        v88 = v252;
      }

      ++v87;
      *(v88 + 16) = v96 + 1;
      sub_1C448566C(v236, v88 + v89 + v96 * v90);
      v8 = v247;
    }

    else
    {
      sub_1C44DBD5C(v38, type metadata accessor for EntityTriple);
      ++v87;
    }
  }

  v97 = v231;
  sub_1C44D0BD8(v88, v231);

  if (sub_1C44157D4(v97, 1, v8) == 1)
  {
    goto LABEL_45;
  }

  v98 = (v97 + *(v8 + 32));
  v99 = v98[1];
  v239 = *v98;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44DBD5C(v97, type metadata accessor for EntityTriple);
  v100 = 0;
  v101 = *(a2 + 16);
  v102 = MEMORY[0x1E69E7CC0];
LABEL_34:
  v103 = v230;
  while (v101 != v100)
  {
    v104 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v105 = *(v9 + 72);
    sub_1C44718CC(a2 + v104 + v105 * v100, v103);
    v106 = (v103 + *(v8 + 32));
    v107 = *v106;
    v108 = v106[1];
    if (sub_1C4F013E8())
    {
      sub_1C448566C(v103, v229);
      v109 = swift_isUniquelyReferenced_nonNull_native();
      v252 = v102;
      if ((v109 & 1) == 0)
      {
        v110 = *(v102 + 16);
        sub_1C459DCC0();
        v102 = v252;
      }

      v111 = *(v102 + 16);
      if (v111 >= *(v102 + 24) >> 1)
      {
        sub_1C459DCC0();
        v102 = v252;
      }

      ++v100;
      *(v102 + 16) = v111 + 1;
      sub_1C448566C(v229, v102 + v104 + v111 * v105);
      v8 = v247;
      goto LABEL_34;
    }

    sub_1C44DBD5C(v103, type metadata accessor for EntityTriple);
    ++v100;
  }

  v97 = v224;
  sub_1C44D0BD8(v102, v224);

  if (sub_1C44157D4(v97, 1, v8) == 1)
  {

LABEL_45:
    sub_1C4420C3C(v97, &qword_1EC0BA590, &qword_1C4F1F430);
    goto LABEL_46;
  }

  v177 = (v97 + *(v8 + 32));
  v179 = *v177;
  v178 = v177[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44DBD5C(v97, type metadata accessor for EntityTriple);
  if (v239 == v179 && v99 == v178)
  {
    goto LABEL_138;
  }

  v181 = sub_1C4F02938();

  result = 1.0;
  if (v181)
  {
    return result;
  }

LABEL_46:
  v112 = 0;
  v113 = MEMORY[0x1E69E7CC0];
LABEL_47:
  v114 = v235;
  while (v249 != v112)
  {
    v115 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v116 = *(v9 + 72);
    sub_1C44718CC(v248 + v115 + v116 * v112, v114);
    v117 = (v114 + *(v8 + 32));
    v118 = *v117;
    v119 = v117[1];
    if (sub_1C4F013E8())
    {
      sub_1C448566C(v114, v234);
      v120 = swift_isUniquelyReferenced_nonNull_native();
      v252 = v113;
      if ((v120 & 1) == 0)
      {
        v121 = *(v113 + 16);
        sub_1C459DCC0();
        v113 = v252;
      }

      v122 = *(v113 + 16);
      if (v122 >= *(v113 + 24) >> 1)
      {
        sub_1C459DCC0();
        v113 = v252;
      }

      ++v112;
      *(v113 + 16) = v122 + 1;
      sub_1C448566C(v234, v113 + v115 + v122 * v116);
      v8 = v247;
      goto LABEL_47;
    }

    sub_1C44DBD5C(v114, type metadata accessor for EntityTriple);
    ++v112;
  }

  v123 = v228;
  sub_1C44D0BD8(v113, v228);

  if (sub_1C44157D4(v123, 1, v8) == 1)
  {
    goto LABEL_68;
  }

  v124 = (v123 + *(v8 + 32));
  v125 = v124[1];
  v239 = *v124;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44DBD5C(v123, type metadata accessor for EntityTriple);
  v126 = 0;
  v127 = *(a2 + 16);
  v128 = MEMORY[0x1E69E7CC0];
  while (v127 != v126)
  {
    v129 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v130 = *(v9 + 72);
    v131 = v240;
    sub_1C44718CC(a2 + v129 + v130 * v126, v240);
    v132 = (v131 + *(v8 + 32));
    v133 = *v132;
    v134 = v132[1];
    if (sub_1C4F013E8())
    {
      sub_1C448566C(v131, v227);
      v135 = swift_isUniquelyReferenced_nonNull_native();
      v252 = v128;
      if ((v135 & 1) == 0)
      {
        v136 = *(v128 + 16);
        sub_1C459DCC0();
        v128 = v252;
      }

      v137 = *(v128 + 16);
      if (v137 >= *(v128 + 24) >> 1)
      {
        sub_1C459DCC0();
        v128 = v252;
      }

      ++v126;
      *(v128 + 16) = v137 + 1;
      sub_1C448566C(v227, v128 + v129 + v137 * v130);
      v8 = v247;
    }

    else
    {
      sub_1C44DBD5C(v131, type metadata accessor for EntityTriple);
      ++v126;
    }
  }

  v123 = v223;
  sub_1C44D0BD8(v128, v223);

  if (sub_1C44157D4(v123, 1, v8) != 1)
  {
    v217 = (v123 + *(v8 + 32));
    v219 = *v217;
    v218 = v217[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44DBD5C(v123, type metadata accessor for EntityTriple);
    if (v239 != v219 || v125 != v218)
    {
      v221 = sub_1C4F02938();

      result = 1.0;
      if (v221)
      {
        return result;
      }

      goto LABEL_69;
    }

LABEL_138:

    return 1.0;
  }

LABEL_68:
  sub_1C4420C3C(v123, &qword_1EC0BA590, &qword_1C4F1F430);
LABEL_69:
  v240 = a2;
  v138 = 0;
  v139 = (v226 + 8);
  v239 = MEMORY[0x1E69E7CC0];
LABEL_70:
  v140 = v241;
  while (v249 != v138)
  {
    v141 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v142 = *(v9 + 72);
    sub_1C44718CC(v248 + v141 + v142 * v138, v244);
    v143 = *(v8 + 20);
    sub_1C4EFED48();
    sub_1C4B86488(&off_1EDDFCCA8, MEMORY[0x1E69A9748]);
    v144 = v246;
    sub_1C4F01578();
    sub_1C4F01578();
    if (v252 == v250 && v253 == v251)
    {
      (*v139)(v140, v144);
    }

    else
    {
      v146 = sub_1C4F02938();
      v147 = v140;
      v148 = v146;
      (*v139)(v147, v144);

      if ((v148 & 1) == 0)
      {
        sub_1C44DBD5C(v244, type metadata accessor for EntityTriple);
        ++v138;
        goto LABEL_70;
      }
    }

    sub_1C448566C(v244, v237);
    v149 = v239;
    v150 = swift_isUniquelyReferenced_nonNull_native();
    v254 = v149;
    if ((v150 & 1) == 0)
    {
      v151 = *(v149 + 16);
      sub_1C459DCC0();
      v149 = v254;
    }

    v140 = v241;
    v152 = *(v149 + 16);
    if (v152 >= *(v149 + 24) >> 1)
    {
      sub_1C459DCC0();
      v149 = v254;
    }

    ++v138;
    *(v149 + 16) = v152 + 1;
    v239 = v149;
    sub_1C448566C(v237, v149 + v141 + v152 * v142);
    v8 = v247;
  }

  v153 = *(v239 + 16);
  if (v153)
  {
    v252 = MEMORY[0x1E69E7CC0];
    v154 = v239;
    sub_1C44CD9C0();
    v155 = v252;
    v156 = v154 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v157 = *(v9 + 72);
    do
    {
      v158 = v243;
      sub_1C44718CC(v156, v243);
      v159 = (v158 + *(v247 + 32));
      v161 = *v159;
      v160 = v159[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44DBD5C(v158, type metadata accessor for EntityTriple);
      v252 = v155;
      v162 = *(v155 + 16);
      if (v162 >= *(v155 + 24) >> 1)
      {
        sub_1C44CD9C0();
        v155 = v252;
      }

      *(v155 + 16) = v162 + 1;
      v163 = v155 + 16 * v162;
      *(v163 + 32) = v161;
      *(v163 + 40) = v160;
      v156 += v157;
      --v153;
    }

    while (v153);
  }

  else
  {

    v155 = MEMORY[0x1E69E7CC0];
  }

  sub_1C4499940(v155, v164, v165, v166, v167, v168, v169, v170, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235);
  v244 = v182;
  v183 = 0;
  v184 = v240;
  v249 = *(v240 + 16);
  v248 = MEMORY[0x1E69E7CC0];
LABEL_105:
  v185 = v242;
  while (v249 != v183)
  {
    v186 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v187 = *(v9 + 72);
    sub_1C44718CC(v184 + v186 + v187 * v183, v245);
    v188 = *(v247 + 20);
    sub_1C4EFED48();
    sub_1C4B86488(&off_1EDDFCCA8, MEMORY[0x1E69A9748]);
    v189 = v246;
    sub_1C4F01578();
    sub_1C4F01578();
    if (v252 == v250 && v253 == v251)
    {
      (*v139)(v185, v189);
    }

    else
    {
      v191 = sub_1C4F02938();
      (*v139)(v185, v189);

      if ((v191 & 1) == 0)
      {
        sub_1C44DBD5C(v245, type metadata accessor for EntityTriple);
        ++v183;
        v184 = v240;
        goto LABEL_105;
      }
    }

    sub_1C448566C(v245, v238);
    v192 = v248;
    v193 = swift_isUniquelyReferenced_nonNull_native();
    v254 = v192;
    v184 = v240;
    if ((v193 & 1) == 0)
    {
      v194 = *(v192 + 16);
      sub_1C459DCC0();
      v192 = v254;
    }

    v185 = v242;
    v195 = *(v192 + 16);
    if (v195 >= *(v192 + 24) >> 1)
    {
      sub_1C459DCC0();
      v185 = v242;
      v192 = v254;
    }

    ++v183;
    *(v192 + 16) = v195 + 1;
    v248 = v192;
    sub_1C448566C(v238, v192 + v186 + v195 * v187);
  }

  v196 = v248;
  v197 = *(v248 + 16);
  if (v197)
  {
    v252 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0();
    v198 = v252;
    v199 = v196 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v200 = *(v9 + 72);
    v201 = v244;
    do
    {
      v202 = v243;
      sub_1C44718CC(v199, v243);
      v203 = (v202 + *(v247 + 32));
      v204 = *v203;
      v205 = v203[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44DBD5C(v202, type metadata accessor for EntityTriple);
      v252 = v198;
      v206 = *(v198 + 16);
      if (v206 >= *(v198 + 24) >> 1)
      {
        sub_1C44CD9C0();
        v198 = v252;
      }

      *(v198 + 16) = v206 + 1;
      v207 = v198 + 16 * v206;
      *(v207 + 32) = v204;
      *(v207 + 40) = v205;
      v199 += v200;
      --v197;
    }

    while (v197);
  }

  else
  {

    v198 = MEMORY[0x1E69E7CC0];
    v201 = v244;
  }

  sub_1C4499940(v198, v208, v209, v210, v211, v212, v213, v214, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235);
  if (*(v201 + 16))
  {
    sub_1C4839FD8();
    v216 = v215;

    result = 0.0;
    if (v216)
    {
      return 1.0;
    }
  }

  else
  {

    return 0.0;
  }

  return result;
}

float sub_1C4B832FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, __n128), uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t), uint64_t (*a9)(void))
{
  v280 = a8;
  v299 = a7;
  v281 = a6;
  v297 = a2;
  v298 = a9;
  v294 = sub_1C4EFEEF8();
  v14 = sub_1C43FCDF8(v294);
  v269 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v19 = &v264 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v289 = &v264 - v22;
  v23 = a3(0, v21);
  v295 = sub_1C43FCDF8(v23);
  v296 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v295);
  sub_1C43FBFDC();
  v288 = v27;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBF38();
  v293 = v30;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBF38();
  v291 = v35;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v264 - v38;
  v270 = a4;
  v271 = a5;
  v40 = sub_1C456902C(a4, a5);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40 - 8);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v43);
  v268 = &v264 - v44;
  v45 = type metadata accessor for EntityTriple(0);
  v46 = sub_1C43FCDF8(v45);
  v48 = v47;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FBFDC();
  v286 = v51;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v52);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v53);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v54);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v55);
  sub_1C43FBF38();
  v287 = v56;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v57);
  sub_1C43FBF38();
  v292 = v58;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v59);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v60);
  v62 = &v264 - v61;
  MEMORY[0x1EEE9AC00](v63);
  v65 = &v264 - v64;
  v66 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  v67 = *(*(v66 - 8) + 64);
  MEMORY[0x1EEE9AC00](v66 - 8);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v68);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v69);
  v279 = &v264 - v70;
  v71 = 0;
  v72 = *(a1 + 16);
  v300 = a1;
  v301 = v72;
  v73 = MEMORY[0x1E69E7CC0];
  v290 = v45;
  while (v301 != v71)
  {
    sub_1C44260B4();
    v9 = v75 & ~v74;
    v76 = *(v48 + 72);
    sub_1C44032D8();
    sub_1C44718CC(v77, v65);
    v78 = &v65[*(v45 + 32)];
    v79 = *v78;
    v80 = *(v78 + 1);
    if (sub_1C4F013E8())
    {
      sub_1C448566C(v65, v286);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v304 = v73;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C442044C();
        sub_1C459DCC0();
        v73 = v304;
      }

      v82 = *(v73 + 16);
      v83 = v82 + 1;
      if (v82 >= *(v73 + 24) >> 1)
      {
        v265 = v82 + 1;
        sub_1C459DCC0();
        v83 = v265;
        v73 = v304;
      }

      ++v71;
      *(v73 + 16) = v83;
      sub_1C44032D8();
      sub_1C448566C(v286, v84);
      v45 = v290;
    }

    else
    {
      sub_1C44DBD5C(v65, type metadata accessor for EntityTriple);
      ++v71;
    }
  }

  v85 = v279;
  sub_1C44D0BD8(v73, v279);

  sub_1C440029C(v85);
  if (v182)
  {
    v86 = &qword_1EC0BA590;
    v87 = &qword_1C4F1F430;
    v88 = v85;
LABEL_23:
    sub_1C4420C3C(v88, v86, v87);
    goto LABEL_24;
  }

  v89 = (v85 + *(v45 + 32));
  v90 = v89[1];
  v265 = *v89;
  v286 = v90;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44070F8();
  sub_1C44DBD5C(v85, v91);
  sub_1C43FF69C();
  v92 = MEMORY[0x1E69E7CC0];
  while (v9 != v71)
  {
    sub_1C4432B28();
    v95 = v94 & ~v93;
    v97 = *(v96 + 72);
    sub_1C44718CC(v297 + v95 + v97 * v71, v39);
    v98 = (v39 + *(v295 + 32));
    v99 = *v98;
    v100 = v98[1];
    if (sub_1C4F013E8())
    {
      sub_1C440A104(v39, &v308);
      v101 = swift_isUniquelyReferenced_nonNull_native();
      v304 = v92;
      if ((v101 & 1) == 0)
      {
        v102 = sub_1C442044C();
        v280(v102);
        v92 = v304;
      }

      v103 = *(v92 + 16);
      v104 = v103 + 1;
      if (v103 >= *(v92 + 24) >> 1)
      {
        v279 = v103 + 1;
        sub_1C4400F68();
        v105();
        v104 = v279;
        v92 = v304;
      }

      ++v71;
      *(v92 + 16) = v104;
      sub_1C448566C(v277, v92 + v95 + v103 * v97);
      v45 = v290;
    }

    else
    {
      sub_1C44DBD5C(v39, v298);
      ++v71;
    }
  }

  v106 = v268;
  v107 = sub_1C4411284();
  v108(v107);

  v109 = v295;
  if (sub_1C44157D4(v106, 1, v295) == 1)
  {

    sub_1C4409144();
    goto LABEL_23;
  }

  v209 = (v106 + *(v109 + 32));
  v39 = *v209;
  v210 = v209[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44DBD5C(v106, v298);
  if (v265 == v39 && v286 == v210)
  {
    goto LABEL_136;
  }

  sub_1C43FBEC0();
  sub_1C4414F48();

  result = 1.0;
  if (v39)
  {
    return result;
  }

LABEL_24:
  v110 = 0;
  v111 = MEMORY[0x1E69E7CC0];
  while (v301 != v110)
  {
    sub_1C44260B4();
    v71 = v113 & ~v112;
    v9 = *(v48 + 72);
    sub_1C44032D8();
    sub_1C44718CC(v114, v62);
    if (sub_1C442E59C(*(v45 + 32)))
    {
      sub_1C448566C(v62, v283);
      v115 = swift_isUniquelyReferenced_nonNull_native();
      v304 = v111;
      if ((v115 & 1) == 0)
      {
        sub_1C442044C();
        sub_1C459DCC0();
        v111 = v304;
      }

      v116 = *(v111 + 16);
      v39 = v116 + 1;
      if (v116 >= *(v111 + 24) >> 1)
      {
        sub_1C459DCC0();
        v111 = v304;
      }

      ++v110;
      *(v111 + 16) = v39;
      sub_1C44032D8();
      sub_1C448566C(v283, v117);
      v45 = v290;
    }

    else
    {
      sub_1C44DBD5C(v62, type metadata accessor for EntityTriple);
      ++v110;
    }
  }

  v118 = v276;
  sub_1C44D0BD8(v111, v276);

  sub_1C440029C(v118);
  if (v182)
  {
    v119 = &qword_1EC0BA590;
    v120 = &qword_1C4F1F430;
    v121 = v118;
LABEL_46:
    sub_1C4420C3C(v121, v119, v120);
    goto LABEL_47;
  }

  v122 = (v118 + *(v45 + 32));
  v123 = v122[1];
  v283 = *v122;
  v286 = v123;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44070F8();
  sub_1C44DBD5C(v118, v124);
  sub_1C43FF69C();
  v125 = MEMORY[0x1E69E7CC0];
  v126 = v295;
  while (v9 != v71)
  {
    sub_1C4432B28();
    v128 = sub_1C4433808(v127);
    v129 = v291;
    sub_1C44718CC(v128, v291);
    if (sub_1C442E59C(*(v126 + 32)))
    {
      sub_1C440A104(v129, v307);
      v130 = swift_isUniquelyReferenced_nonNull_native();
      v304 = v125;
      if ((v130 & 1) == 0)
      {
        v131 = sub_1C442044C();
        v280(v131);
        v125 = v304;
      }

      sub_1C440D8F8();
      if (v132)
      {
        sub_1C4400F68();
        v134();
        v125 = v304;
      }

      sub_1C4406150();
      sub_1C448566C(v275, v133);
      v126 = v295;
      v45 = v290;
    }

    else
    {
      sub_1C44DBD5C(v129, v298);
      ++v71;
    }
  }

  v135 = v267;
  v136 = sub_1C4411284();
  v137(v136);

  if (sub_1C44157D4(v135, 1, v126) == 1)
  {

    sub_1C4409144();
    goto LABEL_46;
  }

  v213 = (v135 + *(v126 + 32));
  v215 = *v213;
  v214 = v213[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44DBD5C(v135, v298);
  if (v283 == v215 && v286 == v214)
  {
    goto LABEL_136;
  }

  sub_1C43FBEC0();
  sub_1C4414F48();

  result = 1.0;
  if (v39)
  {
    return result;
  }

LABEL_47:
  v138 = 0;
  v139 = MEMORY[0x1E69E7CC0];
  v140 = v278;
  while (v301 != v138)
  {
    sub_1C44260B4();
    v71 = v142 & ~v141;
    v9 = *(v48 + 72);
    sub_1C44032D8();
    sub_1C44718CC(v143, v140);
    v144 = (v140 + *(v45 + 32));
    v145 = *v144;
    v146 = v144[1];
    if (sub_1C4F013E8())
    {
      sub_1C448566C(v140, v282);
      v147 = swift_isUniquelyReferenced_nonNull_native();
      v304 = v139;
      if ((v147 & 1) == 0)
      {
        v148 = *(v139 + 16);
        sub_1C459DCC0();
        v140 = v278;
        v139 = v304;
      }

      v149 = *(v139 + 16);
      if (v149 >= *(v139 + 24) >> 1)
      {
        sub_1C459DCC0();
        v140 = v278;
        v139 = v304;
      }

      ++v138;
      *(v139 + 16) = v149 + 1;
      sub_1C44032D8();
      sub_1C448566C(v282, v150);
      v45 = v290;
    }

    else
    {
      sub_1C44DBD5C(v140, type metadata accessor for EntityTriple);
      ++v138;
    }
  }

  v151 = v274;
  sub_1C44D0BD8(v139, v274);

  sub_1C440029C(v151);
  if (!v182)
  {
    v155 = (v151 + *(v45 + 32));
    v156 = v155[1];
    v291 = *v155;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44070F8();
    sub_1C44DBD5C(v151, v157);
    sub_1C43FF69C();
    v158 = MEMORY[0x1E69E7CC0];
LABEL_59:
    v159 = v295;
    v160 = v273;
    while (v9 != v71)
    {
      sub_1C4432B28();
      v162 = sub_1C4433808(v161);
      sub_1C44718CC(v162, v160);
      v163 = (v160 + *(v159 + 32));
      v164 = *v163;
      v165 = v163[1];
      if (sub_1C4F013E8())
      {
        sub_1C440A104(v160, &v304);
        v166 = swift_isUniquelyReferenced_nonNull_native();
        v304 = v158;
        if ((v166 & 1) == 0)
        {
          v167 = sub_1C442044C();
          v280(v167);
          v158 = v304;
        }

        sub_1C440D8F8();
        if (v132)
        {
          sub_1C4400F68();
          v169();
          v158 = v304;
        }

        sub_1C4406150();
        sub_1C448566C(v272, v168);
        goto LABEL_59;
      }

      sub_1C44DBD5C(v160, v298);
      ++v71;
    }

    v170 = v266;
    v171 = sub_1C4411284();
    v172(v171);

    if (sub_1C44157D4(v170, 1, v159) == 1)
    {

      sub_1C4409144();
      goto LABEL_70;
    }

    v260 = (v170 + *(v159 + 32));
    v262 = *v260;
    v261 = v260[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44DBD5C(v170, v298);
    if (v291 != v262 || v156 != v261)
    {
      sub_1C43FBEC0();
      sub_1C4414F48();

      result = 1.0;
      if (v170)
      {
        return result;
      }

      goto LABEL_71;
    }

LABEL_136:

    return 1.0;
  }

  v152 = &qword_1EC0BA590;
  v153 = &qword_1C4F1F430;
  v154 = v151;
LABEL_70:
  sub_1C4420C3C(v154, v152, v153);
LABEL_71:
  v173 = 0;
  v174 = (v269 + 8);
  v286 = MEMORY[0x1E69E7CC0];
  v291 = v19;
  while (1)
  {
    v175 = v289;
    if (v301 == v173)
    {
      break;
    }

    sub_1C44260B4();
    v176 = *(v48 + 72);
    sub_1C44032D8();
    sub_1C44718CC(v177, v292);
    v178 = *(v290 + 20);
    sub_1C4EFED48();
    sub_1C44178C0();
    sub_1C4B86488(&off_1EDDFCCA8, v179);
    v180 = v294;
    sub_1C4F01578();
    sub_1C4F01578();
    v181 = v305;
    v182 = v304 == v302 && v305 == v303;
    if (v182)
    {
      (*v174)(v175, v180);

LABEL_80:
      sub_1C448566C(v292, v284);
      v184 = v286;
      v185 = swift_isUniquelyReferenced_nonNull_native();
      v306 = v184;
      v19 = v291;
      if ((v185 & 1) == 0)
      {
        v186 = *(v184 + 16);
        sub_1C459DCC0();
        v184 = v306;
      }

      sub_1C440D8F8();
      if (v132)
      {
        sub_1C459DCC0();
        v184 = v306;
      }

      ++v173;
      *(v184 + 16) = v181;
      v286 = v184;
      sub_1C44032D8();
      sub_1C448566C(v284, v187);
    }

    else
    {
      v183 = sub_1C43FBEC0();
      (*v174)(v175, v180);

      if (v183)
      {
        goto LABEL_80;
      }

      sub_1C44DBD5C(v292, type metadata accessor for EntityTriple);
      ++v173;
      v19 = v291;
    }
  }

  v188 = v286;
  v189 = *(v286 + 16);
  if (v189)
  {
    v304 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0();
    v190 = v304;
    sub_1C44260B4();
    v193 = v188 + (v192 & ~v191);
    v194 = *(v48 + 72);
    do
    {
      v195 = v287;
      sub_1C44718CC(v193, v287);
      v196 = (v195 + *(v290 + 32));
      v198 = *v196;
      v197 = v196[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44070F8();
      sub_1C44DBD5C(v195, v199);
      v304 = v190;
      v200 = *(v190 + 16);
      if (v200 >= *(v190 + 24) >> 1)
      {
        sub_1C44CD9C0();
        v190 = v304;
      }

      *(v190 + 16) = v200 + 1;
      v201 = v190 + 16 * v200;
      *(v201 + 32) = v198;
      *(v201 + 40) = v197;
      v193 += v194;
      --v189;
    }

    while (v189);

    v19 = v291;
  }

  else
  {

    v190 = MEMORY[0x1E69E7CC0];
  }

  sub_1C4499940(v190, v202, v203, v204, v205, v206, v207, v208, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277);
  v300 = v217;
  v218 = 0;
  v219 = *(v297 + 16);
  v301 = MEMORY[0x1E69E7CC0];
  while (v219 != v218)
  {
    sub_1C4432B28();
    v222 = v221 & ~v220;
    v189 = v19;
    v224 = *(v223 + 72);
    sub_1C44718CC(v297 + v222 + v224 * v218, v293);
    v225 = *(v295 + 20);
    sub_1C4EFED48();
    sub_1C44178C0();
    sub_1C4B86488(&off_1EDDFCCA8, v226);
    v227 = v294;
    sub_1C4F01578();
    sub_1C4F01578();
    if (v304 == v302 && v305 == v303)
    {
      (*v174)(v189, v227);
    }

    else
    {
      v229 = sub_1C43FBEC0();
      v230 = v227;
      v231 = v229;
      (*v174)(v189, v230);

      if ((v231 & 1) == 0)
      {
        sub_1C44DBD5C(v293, v298);
        ++v218;
        v19 = v291;
        continue;
      }
    }

    sub_1C440A104(v293, &v309);
    v232 = v301;
    v233 = swift_isUniquelyReferenced_nonNull_native();
    v306 = v232;
    if ((v233 & 1) == 0)
    {
      v234 = *(v232 + 16);
      sub_1C4400F68();
      v235();
      v232 = v306;
    }

    v236 = *(v232 + 16);
    if (v236 >= *(v232 + 24) >> 1)
    {
      sub_1C4400F68();
      v237();
      v232 = v306;
    }

    ++v218;
    *(v232 + 16) = v236 + 1;
    v301 = v232;
    sub_1C448566C(v285, v232 + v222 + v236 * v224);
    v19 = v291;
  }

  v238 = v301;
  v239 = *(v301 + 16);
  if (v239)
  {
    v304 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0();
    v240 = v304;
    sub_1C4432B28();
    v243 = v238 + (v242 & ~v241);
    v245 = *(v244 + 72);
    v246 = v300;
    do
    {
      v247 = v288;
      sub_1C44718CC(v243, v288);
      v248 = (v247 + *(v295 + 32));
      v250 = *v248;
      v249 = v248[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44DBD5C(v247, v298);
      v304 = v240;
      v251 = *(v240 + 16);
      if (v251 >= *(v240 + 24) >> 1)
      {
        sub_1C44CD9C0();
        v240 = v304;
      }

      *(v240 + 16) = v251 + 1;
      v252 = v240 + 16 * v251;
      *(v252 + 32) = v250;
      *(v252 + 40) = v249;
      v243 += v245;
      --v239;
    }

    while (v239);
  }

  else
  {

    v240 = MEMORY[0x1E69E7CC0];
    v246 = v300;
  }

  sub_1C4499940(v240, v253, v254, v255, v256, v257, v258, v259, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277);
  if (*(v246 + 16))
  {
    sub_1C4839FD8();
    sub_1C4414F48();

    result = 0.0;
    if (v189)
    {
      return 1.0;
    }
  }

  else
  {

    return 0.0;
  }

  return result;
}