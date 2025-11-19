uint64_t sub_22C5B7FA8(uint64_t a1)
{
  v3 = sub_22C90069C();
  v64 = *(v3 - 8);
  v65 = v3;
  v4 = *(v64 + 64);
  MEMORY[0x28223BE20](v3);
  v63 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22C908A0C();
  v71 = *(v6 - 8);
  v7 = *(v71 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v70 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v69 = &v57 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v57 - v12;
  v14 = sub_22C9063DC();
  v67 = *(v14 - 8);
  v68 = v14;
  v15 = *(v67 + 64);
  MEMORY[0x28223BE20](v14);
  v72 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22C9089DC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v57 - v23;
  sub_22C9089EC();
  v25 = (*(v18 + 88))(v24, v17);
  v28 = v25 == *MEMORY[0x277D1E858] || v25 == *MEMORY[0x277D1E798] || v25 == *MEMORY[0x277D1E778];
  v66 = *(v18 + 8);
  v66(v24, v17);
  if (v28)
  {
    v61 = 1;
    v62 = v1;
    sub_22C903FBC();
    v29 = *(v71 + 16);
    v29(v13, a1, v6);
    v29(v69, a1, v6);
    v29(v70, a1, v6);
    v30 = sub_22C9063CC();
    v31 = sub_22C90AACC();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v57 = v32;
      v60 = swift_slowAlloc();
      v73 = v60;
      *v32 = 136315650;
      v33 = v63;
      v59 = v30;
      sub_22C9087FC();
      sub_22C5C87F4(&qword_27D9BEC38, MEMORY[0x277CC95F0]);
      v58 = v31;
      v34 = v65;
      v35 = sub_22C90B47C();
      v37 = v36;
      (*(v64 + 8))(v33, v34);
      v71 = *(v71 + 8);
      (v71)(v13, v6);
      v38 = sub_22C36F9F4(v35, v37, &v73);

      v39 = v57;
      *(v57 + 1) = v38;
      *(v39 + 6) = 2080;
      v40 = v69;
      sub_22C9089EC();
      v41 = sub_22C90898C();
      v43 = v42;
      v66(v22, v17);
      (v71)(v40, v6);
      v44 = sub_22C36F9F4(v41, v43, &v73);

      *(v39 + 14) = v44;
      *(v39 + 11) = 2080;
      v45 = v39;
      v46 = v70;
      sub_22C9089EC();
      v47 = sub_22C9089AC();
      v66(v22, v17);
      v48 = sub_22C901FAC();
      v49 = MEMORY[0x2318B7AD0](v47, v48);
      v51 = v50;

      (v71)(v46, v6);
      v52 = sub_22C36F9F4(v49, v51, &v73);

      *(v45 + 3) = v52;
      v53 = v59;
      _os_log_impl(&dword_22C366000, v59, v58, "Interested Event: %s, %s, %s", v45, 0x20u);
      v54 = v60;
      swift_arrayDestroy();
      MEMORY[0x2318B9880](v54, -1, -1);
      MEMORY[0x2318B9880](v45, -1, -1);
    }

    else
    {

      v55 = *(v71 + 8);
      v55(v70, v6);
      v55(v69, v6);
      v55(v13, v6);
    }

    (*(v67 + 8))(v72, v68);
    return v61;
  }

  return v28;
}

void sub_22C5B862C()
{
  sub_22C36BA7C();
  v5 = v4;
  sub_22C388C54();
  v6 = sub_22C90069C();
  v7 = sub_22C369824(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22C3698A8();
  sub_22C36BA0C();
  v292 = sub_22C908A0C();
  v10 = sub_22C369824(v292);
  v286 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C3698E4();
  v294 = v14;
  sub_22C369930();
  MEMORY[0x28223BE20](v15);
  sub_22C36BA58();
  v293 = v16;
  sub_22C369930();
  MEMORY[0x28223BE20](v17);
  sub_22C36BA58();
  sub_22C369930();
  MEMORY[0x28223BE20](v18);
  sub_22C36BA58();
  sub_22C369930();
  MEMORY[0x28223BE20](v19);
  sub_22C36BA58();
  sub_22C369930();
  MEMORY[0x28223BE20](v20);
  sub_22C36BA58();
  sub_22C369930();
  MEMORY[0x28223BE20](v21);
  sub_22C36BA64();
  sub_22C36BA0C();
  v22 = sub_22C9063DC();
  v289 = sub_22C369824(v22);
  v290 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v289);
  sub_22C3698E4();
  v291 = v26;
  sub_22C369930();
  MEMORY[0x28223BE20](v27);
  sub_22C36BA58();
  v275 = v28;
  sub_22C369930();
  MEMORY[0x28223BE20](v29);
  sub_22C36BA58();
  v271 = v30;
  sub_22C369930();
  MEMORY[0x28223BE20](v31);
  sub_22C36BA58();
  v273 = v32;
  sub_22C369930();
  MEMORY[0x28223BE20](v33);
  sub_22C36BA58();
  v276 = v34;
  sub_22C369930();
  MEMORY[0x28223BE20](v35);
  sub_22C36BA58();
  v277 = v36;
  sub_22C369930();
  MEMORY[0x28223BE20](v37);
  sub_22C36BA64();
  v278 = v38;
  sub_22C36BA0C();
  v287 = sub_22C9026BC();
  v39 = sub_22C369824(v287);
  v282 = v40;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v39);
  sub_22C3698E4();
  sub_22C369930();
  MEMORY[0x28223BE20](v43);
  sub_22C36BA64();
  v295 = v44;
  sub_22C36BA0C();
  v45 = sub_22C907DEC();
  v283 = sub_22C369824(v45);
  v284 = v46;
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v283);
  sub_22C3698E4();
  v272 = v49;
  sub_22C369930();
  MEMORY[0x28223BE20](v50);
  sub_22C36BA64();
  v281 = v51;
  sub_22C36BA0C();
  v296 = sub_22C906ECC();
  v52 = sub_22C369824(v296);
  v285 = v53;
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v52);
  sub_22C3698E4();
  v274 = v56;
  sub_22C369930();
  MEMORY[0x28223BE20](v57);
  sub_22C36BA64();
  v288 = v58;
  sub_22C36BA0C();
  v59 = sub_22C906B9C();
  v60 = sub_22C369824(v59);
  v279 = v61;
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v60);
  sub_22C3698A8();
  sub_22C36BA0C();
  v64 = sub_22C906B6C();
  v65 = sub_22C369824(v64);
  v280 = v66;
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v65);
  sub_22C3698A8();
  sub_22C36BA0C();
  v69 = sub_22C906C4C();
  v70 = sub_22C369824(v69);
  v298 = v71;
  v300 = v70;
  v73 = *(v72 + 64);
  MEMORY[0x28223BE20](v70);
  sub_22C369838();
  sub_22C5CA768();
  v74 = sub_22C90873C();
  v75 = sub_22C369824(v74);
  v297 = v76;
  v78 = *(v77 + 64);
  MEMORY[0x28223BE20](v75);
  sub_22C369838();
  sub_22C37B6BC();
  v79 = sub_22C9089DC();
  v80 = sub_22C369824(v79);
  v82 = v81;
  v84 = *(v83 + 64);
  MEMORY[0x28223BE20](v80);
  sub_22C369ABC();
  sub_22C5CA690();
  MEMORY[0x28223BE20](v85);
  sub_22C36CAC0();
  memcpy(v307, v5, sizeof(v307));
  sub_22C9089EC();
  v86 = sub_22C9087DC();
  v305 = sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
  sub_22C369E24();
  v306 = sub_22C3D32C8(v87, &qword_27D9BA9F0, &qword_22C912420);
  v302 = v86;
  sub_22C9089CC();
  v88 = v82[1];
  v89 = sub_22C3819EC();
  v88(v89);
  sub_22C36FF94(&v302);
  v90 = v82[11];
  v91 = sub_22C3806B8();
  v93 = v92(v91);
  if (v93 == *MEMORY[0x277D1E858])
  {
    v94 = v82[12];
    v95 = sub_22C372164();
    v96(v95);
    v97 = v297;
    sub_22C5CA7E8();
    v98 = sub_22C37EF10();
    v99(v98);
    sub_22C90763C();
    v100 = (*(v298 + 88))(v3, v300);
    v101 = v298;
    if (v100 == *MEMORY[0x277D1DDC8])
    {
LABEL_3:
      v102 = *(v297 + 8);
      v103 = sub_22C3720DC();
      v104(v103);
      v105 = *(v298 + 8);
      v106 = sub_22C5CA640();
      v107(v106);
      goto LABEL_22;
    }

    if (v100 == *MEMORY[0x277D1DDD0])
    {
      v110 = *(v298 + 96);
      v111 = sub_22C5CA640();
      v112(v111);
      v113 = v280;
      v114 = *(v280 + 32);
      v115 = sub_22C5CA738();
      v116(v115);
      sub_22C906B5C();
LABEL_14:
      v302 = v307[2];
      v303 = v307[3];
      v304 = v307[4];
      v305 = v307[5];
      sub_22C5AA6B4(v307[2], v307[3]);
      sub_22C37170C();
      sub_22C5BA254();

      sub_22C472340(v302, v303);
      v132 = *(v113 + 8);
      v133 = sub_22C5CA738();
      v134(v133);
      v135 = *(v297 + 8);
      v136 = sub_22C3720DC();
      v137(v136);
      goto LABEL_22;
    }

    if (v100 == *MEMORY[0x277D1DDD8])
    {
      v126 = *(v298 + 96);
      v127 = sub_22C5CA640();
      v128(v127);
      v113 = v279;
      v129 = *(v279 + 32);
      v130 = sub_22C5CA738();
      v131(v130);
      sub_22C906B5C();
      goto LABEL_14;
    }

    if (v100 == *MEMORY[0x277D1DD78])
    {
      goto LABEL_3;
    }

    sub_22C90B4EC();
    __break(1u);
    goto LABEL_19;
  }

  if (v93 == *MEMORY[0x277D1E6F8])
  {
    v108 = sub_22C372164();
LABEL_21:
    (v88)(v108, v109);
    goto LABEL_22;
  }

  if (v93 != *MEMORY[0x277D1E798])
  {
    v298 = v79;
    v300 = v0;
    sub_22C903FBC();
    v101 = v286;
    v138 = *(v286 + 16);
    v138(v293, v2, v292);
    v97 = v292;
    v138(v294, v2, v292);
    v3 = sub_22C9063CC();
    v139 = sub_22C90AACC();
    if (os_log_type_enabled(v3, v139))
    {
      sub_22C383050();
      v302 = sub_22C5CA600();
      *v139 = 136315394;
      v140 = sub_22C9088FC();
      v141 = *(v286 + 8);
      v141(v293, v292);
      v142 = sub_22C372FA4();
      sub_22C36F9F4(v142, v143, v144);
      sub_22C38B194();

      *(v139 + 4) = v140;
      *(v139 + 12) = 2080;
      sub_22C9089EC();
      v145 = sub_22C90898C();
      v146 = v1;
      v147 = v79;
      (v88)(v146, v79);
      v141(v294, v292);
      v148 = sub_22C372FA4();
      sub_22C36F9F4(v148, v149, v150);
      sub_22C38B194();

      *(v139 + 14) = v145;
      sub_22C5CAAC8(&dword_22C366000, v151, v139, "Skipping event: %s %s");
      swift_arrayDestroy();
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      v152 = sub_22C37F88C();
      MEMORY[0x2318B9880](v152);

      (*(v290 + 8))(v291, v289);
LABEL_20:
      v108 = v300;
      v109 = v147;
      goto LABEL_21;
    }

LABEL_19:

    v153 = *(v101 + 8);
    v153(v294, v97);
    v153(v293, v97);
    v154 = sub_22C5CA7C4();
    v155(v154);
    v147 = v298;
    goto LABEL_20;
  }

  v117 = v82[12];
  v118 = sub_22C372164();
  v119(v118);
  sub_22C5CA7E8();
  v120 = sub_22C5CA640();
  v121(v120);
  if (v307[6])
  {
    v122 = v287;
    v123 = v282;
    v124 = v295;
    if (*(v307[6] + 16))
    {
      v125 = *(v307[6] + 32);
    }

    else
    {
      v125 = 6;
    }
  }

  else
  {
    v125 = 6;
    v122 = v287;
    v123 = v282;
    v124 = v295;
  }

  sub_22C906EBC();
  sub_22C907DAC();
  v156 = *(v284 + 8);
  v156(v281, v283);
  v157 = v123;
  v159 = *(v123 + 88);
  v158 = v123 + 88;
  v160 = v159(v124, v122);
  if (v160 == *MEMORY[0x277D1CBF0])
  {
    if (v125 != 6 && (sub_22C3D3A2C(v125, 0) & 1) != 0)
    {
      sub_22C903FBC();
      sub_22C5CA570();
      v161 = sub_22C383CF8();
      v162(v161);
      sub_22C5CAB4C();
      v163 = sub_22C9063CC();
      sub_22C90AACC();
      sub_22C5CAB94();
      if (sub_22C5CAB34())
      {
        sub_22C383050();
        v302 = sub_22C5CA600();
        sub_22C386590(4.8151e-34);
        sub_22C3887BC();
        sub_22C5C87F4(v164, v165);
        v166 = sub_22C5CA5D4();
        v167 = sub_22C3774FC(v166);
        v168(v167);
        v169 = *(v122 + 8);
        v170 = sub_22C372164();
        v171(v170);
        sub_22C5CA774();
        sub_22C36A024();

        *(v158 + 14) = sub_22C5CA470();
        sub_22C38679C(&dword_22C366000, v172, v173, "Matched actionSuccess event: %s with statement id: %s");
        sub_22C5CA5A8();
        v174 = sub_22C37B310();
        MEMORY[0x2318B9880](v174);
        v175 = sub_22C37F88C();
        MEMORY[0x2318B9880](v175);

        sub_22C5CABC4();
        v177 = v278;
LABEL_45:
        v176(v177, v289);
        v220 = sub_22C5CABD0();
        v221(v220);
LABEL_48:
        v122 = v287;
        goto LABEL_49;
      }

      goto LABEL_47;
    }

    goto LABEL_46;
  }

  if (v160 == *MEMORY[0x277D1CBA8])
  {
    if (v125 != 6 && (sub_22C3D3A2C(v125, 1) & 1) != 0)
    {
      sub_22C903FBC();
      sub_22C5CA570();
      v178 = sub_22C383CF8();
      v179(v178);
      sub_22C5CAB4C();
      v163 = sub_22C9063CC();
      sub_22C90AACC();
      sub_22C5CAB94();
      if (sub_22C5CAB34())
      {
        sub_22C383050();
        v302 = sub_22C5CA600();
        sub_22C386590(4.8151e-34);
        sub_22C3887BC();
        sub_22C5C87F4(v180, v181);
        v182 = sub_22C5CA5D4();
        v183 = sub_22C3774FC(v182);
        v184(v183);
        v185 = *(v122 + 8);
        v186 = sub_22C372164();
        v187(v186);
        sub_22C5CA774();
        sub_22C36A024();

        *(v158 + 14) = sub_22C5CA470();
        sub_22C38679C(&dword_22C366000, v188, v189, "Matched actionConfirmation event: %s with statement id: %s");
        sub_22C5CA5A8();
        v190 = sub_22C37B310();
        MEMORY[0x2318B9880](v190);
        v191 = sub_22C37F88C();
        MEMORY[0x2318B9880](v191);

        sub_22C5CABC4();
        v177 = v277;
        goto LABEL_45;
      }

LABEL_47:

      v222 = *(v122 + 8);
      v223 = sub_22C3819EC();
      v224(v223);
      v225 = sub_22C5CA7C4();
      v226(v225);
      (*(v285 + 8))(v288, v296);
      goto LABEL_48;
    }

LABEL_46:
    (*(v285 + 8))(v288, v296);
LABEL_49:
    (*(v157 + 8))(v295, v122);
    goto LABEL_22;
  }

  if (v160 == *MEMORY[0x277D1CBB8])
  {
    if (v125 != 6 && (sub_22C3D3A2C(v125, 2) & 1) != 0)
    {
      sub_22C903FBC();
      sub_22C5CA570();
      v192 = sub_22C383CF8();
      v193(v192);
      sub_22C5CAB4C();
      v163 = sub_22C9063CC();
      sub_22C90AACC();
      sub_22C5CAB94();
      if (sub_22C5CAB34())
      {
        sub_22C383050();
        v302 = sub_22C5CA600();
        sub_22C386590(4.8151e-34);
        sub_22C3887BC();
        sub_22C5C87F4(v194, v195);
        v196 = sub_22C5CA5D4();
        v197 = sub_22C3774FC(v196);
        v198(v197);
        v199 = *(v122 + 8);
        v200 = sub_22C372164();
        v201(v200);
        sub_22C5CA774();
        sub_22C36A024();

        *(v158 + 14) = sub_22C5CA470();
        sub_22C38679C(&dword_22C366000, v202, v203, "Matched parameterNeedsValue event: %s with statement id: %s");
        sub_22C5CA5A8();
        v204 = sub_22C37B310();
        MEMORY[0x2318B9880](v204);
        v205 = sub_22C37F88C();
        MEMORY[0x2318B9880](v205);

        sub_22C5CABC4();
        v177 = v276;
        goto LABEL_45;
      }

      goto LABEL_47;
    }

    goto LABEL_46;
  }

  if (v160 == *MEMORY[0x277D1CBD0])
  {
    if (v125 != 6 && (sub_22C3D3A2C(v125, 3) & 1) != 0)
    {
      sub_22C903FBC();
      sub_22C5CA570();
      v206 = sub_22C383CF8();
      v207(v206);
      sub_22C5CAB4C();
      v163 = sub_22C9063CC();
      sub_22C90AACC();
      sub_22C5CAB94();
      if (sub_22C5CAB34())
      {
        sub_22C383050();
        v302 = sub_22C5CA600();
        sub_22C386590(4.8151e-34);
        sub_22C3887BC();
        sub_22C5C87F4(v208, v209);
        v210 = sub_22C5CA5D4();
        v211 = sub_22C3774FC(v210);
        v212(v211);
        v213 = *(v122 + 8);
        v214 = sub_22C372164();
        v215(v214);
        sub_22C5CA774();
        sub_22C36A024();

        *(v158 + 14) = sub_22C5CA470();
        sub_22C38679C(&dword_22C366000, v216, v217, "Matched parameterConfirmation event: %s with statement id: %s");
        sub_22C5CA5A8();
        v218 = sub_22C37B310();
        MEMORY[0x2318B9880](v218);
        v219 = sub_22C37F88C();
        MEMORY[0x2318B9880](v219);

        sub_22C5CABC4();
        v177 = v273;
        goto LABEL_45;
      }

      goto LABEL_47;
    }

    goto LABEL_46;
  }

  if (v160 != *MEMORY[0x277D1CBD8])
  {
    sub_22C903FBC();
    v245 = *(v285 + 16);
    v246 = sub_22C36D264();
    v247(v246);
    v248 = sub_22C9063CC();
    sub_22C90AACC();
    v249 = sub_22C37E2D0();
    if (os_log_type_enabled(v249, v250))
    {
      sub_22C36BED8();
      swift_slowAlloc();
      sub_22C3735E4();
      v301 = swift_slowAlloc();
      v302 = v301;
      *v288 = 136315138;
      v299 = v248;
      sub_22C906EBC();
      sub_22C907DAC();
      v156(v272, v283);
      v251 = sub_22C90A1AC();
      v252 = *(v285 + 8);
      v252(v274, v296);
      v253 = sub_22C38644C();
      sub_22C36F9F4(v253, v254, v255);
      sub_22C36A024();

      *(v288 + 4) = v251;
      sub_22C5CA550();
      _os_log_impl(v256, v257, v258, v259, v260, v261);
      sub_22C36FF94(v301);
      v262 = sub_22C37F88C();
      MEMORY[0x2318B9880](v262);
      v263 = sub_22C36D66C();
      MEMORY[0x2318B9880](v263);

      (*(v290 + 8))(v275, v289);
      v252(v288, v296);
    }

    else
    {

      v264 = *(v285 + 8);
      v264(v274, v296);
      (*(v290 + 8))(v275, v289);
      v265 = sub_22C370018();
      (v264)(v265);
    }

    goto LABEL_49;
  }

  v227 = v295;
  if (v125 == 6 || (sub_22C3D3A2C(v125, 4) & 1) == 0)
  {
    (*(v285 + 8))(v288, v296);
  }

  else
  {
    sub_22C903FBC();
    sub_22C5CA570();
    v228 = sub_22C383CF8();
    v229(v228);
    sub_22C5CAB4C();
    v230 = sub_22C9063CC();
    sub_22C90AACC();
    sub_22C5CAB94();
    if (sub_22C5CAB34())
    {
      sub_22C383050();
      v302 = sub_22C5CA600();
      sub_22C386590(4.8151e-34);
      sub_22C3887BC();
      sub_22C5C87F4(v231, v232);
      v233 = sub_22C5CA5D4();
      v234 = sub_22C3774FC(v233);
      v235(v234);
      v236 = *(v122 + 8);
      v237 = sub_22C372164();
      v238(v237);
      sub_22C5CA774();
      sub_22C36A024();

      *(v158 + 14) = sub_22C5CA470();
      sub_22C38679C(&dword_22C366000, v239, v240, "Matched parameterDisambiguation event: %s with statement id: %s");
      sub_22C5CA5A8();
      v241 = sub_22C37B310();
      MEMORY[0x2318B9880](v241);
      v242 = sub_22C37F88C();
      MEMORY[0x2318B9880](v242);

      (*(v290 + 8))(v271, v289);
      v243 = sub_22C5CABD0();
      v244(v243);
    }

    else
    {

      v266 = *(v122 + 8);
      v267 = sub_22C3819EC();
      v268(v267);
      v269 = sub_22C5CA7C4();
      v270(v269);
      (*(v285 + 8))(v288, v296);
    }

    v122 = v287;
    v227 = v295;
  }

  (*(v157 + 8))(v227, v122);
LABEL_22:
  sub_22C36CC48();
}

void sub_22C5B9AC0()
{
  sub_22C370030();
  v56 = v0;
  v5 = v4;
  v7 = v6;
  v8 = sub_22C9063DC();
  v9 = sub_22C369824(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22C369ABC();
  sub_22C49CA04();
  MEMORY[0x28223BE20](v14);
  sub_22C50B4C8();
  MEMORY[0x28223BE20](v15);
  v17 = &v48 - v16;
  type metadata accessor for PlanOverrideLoader();
  swift_initStackObject();
  sub_22C3819EC();
  sub_22C5A9504();
  if (!v1)
  {
    v49 = v7;
    v50 = v3;
    v51 = v11;
    v52 = v8;
    v18 = v54;
    if (v54)
    {
      sub_22C903FBC();

      v19 = sub_22C9063CC();
      sub_22C90AACC();
      v20 = sub_22C370214();
      if (os_log_type_enabled(v20, v21))
      {
        sub_22C36BED8();
        v22 = swift_slowAlloc();
        *v22 = 134217984;
        *(v22 + 4) = *(v18 + 16);

        sub_22C5CA970();
        _os_log_impl(v23, v24, v25, v26, v27, v28);
        sub_22C369B50();
        MEMORY[0x2318B9880]();
      }

      else
      {
      }

      (*(v51 + 8))(v17, v52);
      v53 = v18;
      sub_22C5CB74C(&v53, &v54);
      v41 = v55;
      v42 = v56 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20PlanOverridesService_planOverridesStore;
      v43 = *(v56 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20PlanOverridesService_planOverridesStore);
      v44 = *(v56 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20PlanOverridesService_planOverridesStore + 8);
      v45 = *(v56 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20PlanOverridesService_planOverridesStore + 16);
      *v42 = v54;
      *(v42 + 16) = v41;
      sub_22C36E030(v43, v44, v45);
      sub_22C5CA80C();
      swift_beginAccess();
      os_unfair_lock_lock((v56 + 120));
      swift_endAccess();
      sub_22C36E278(0, &qword_27D9BEBB8, 0x277CCAC68);
      v46 = sub_22C909F0C();
      swift_beginAccess();
      v47 = *(v56 + 112);
      *(v56 + 112) = v46;

      sub_22C5CA80C();
      swift_beginAccess();
      os_unfair_lock_unlock((v56 + 120));
      swift_endAccess();
    }

    else
    {
      sub_22C903FBC();

      v29 = sub_22C9063CC();
      sub_22C90AADC();

      v30 = sub_22C5CA9D4();
      if (os_log_type_enabled(v30, v31))
      {
        sub_22C36BED8();
        swift_slowAlloc();
        sub_22C3735E4();
        v32 = swift_slowAlloc();
        *&v54 = v32;
        *v56 = 136315138;
        *(v56 + 4) = sub_22C36F9F4(v49, v5, &v54);
        sub_22C5CA550();
        _os_log_impl(v33, v34, v35, v36, v37, v38);
        sub_22C36FF94(v32);
        v39 = sub_22C36ACAC();
        MEMORY[0x2318B9880](v39);
        v40 = sub_22C36D66C();
        MEMORY[0x2318B9880](v40);
      }

      (*(v51 + 8))(v2, v52);
    }
  }

  sub_22C36FB20();
}

void sub_22C5B9F40()
{
  sub_22C36BA7C();
  v1 = v0;
  v2 = sub_22C9063DC();
  v3 = sub_22C369824(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  sub_22C37BDA4();
  sub_22C5CA80C();
  swift_beginAccess();
  os_unfair_lock_lock((v0 + 120));
  swift_endAccess();
  sub_22C3870A4();
  swift_beginAccess();
  v6 = *(v0 + 112);

  v7 = sub_22C371510();
  v9 = sub_22C633A20(v7, v8, v6);

  if (!v9)
  {
    v10 = objc_allocWithZone(MEMORY[0x277CCAC68]);
    sub_22C38B194();

    v11 = sub_22C371510();
    v13 = sub_22C5C85A0(v11, v12, 1);
    sub_22C5CA80C();
    swift_beginAccess();
    v14 = v13;
    v15 = *(v1 + 112);
    swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v1 + 112);
    sub_22C5CAA58();
    sub_22C62E1B0();
    *(v1 + 112) = v16;
    swift_endAccess();
  }

  sub_22C5CA80C();
  swift_beginAccess();
  os_unfair_lock_unlock((v1 + 120));
  swift_endAccess();
  sub_22C36CC48();
}

void sub_22C5BA254()
{
  sub_22C36BA7C();
  v88 = v1;
  v89 = v2;
  v4 = v3;
  v6 = v5;
  v91 = v7;
  v8 = sub_22C3A5908(&qword_27D9BD820, &unk_22C9195C0);
  sub_22C369914(v8);
  v10 = *(v9 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v11);
  sub_22C5CA768();
  v12 = sub_22C9063DC();
  v13 = sub_22C369824(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22C369ABC();
  sub_22C36D6DC();
  MEMORY[0x28223BE20](v16);
  sub_22C37A1A4();
  MEMORY[0x28223BE20](v17);
  sub_22C50B4C8();
  MEMORY[0x28223BE20](v18);
  sub_22C5CA6F0();
  if (*(v4 + 8))
  {
    v90 = v6;
    v87 = v19;
    v20 = *(v4 + 24);
    if ((*(v4 + 16) & 1) == 0)
    {
      v40 = *v4;
      if (v20)
      {
        v41 = *(v4 + 24);
      }

      else
      {
        v41 = MEMORY[0x277D84F90];
      }

      v42 = *(v41 + 16);

      if (v42)
      {
        sub_22C903FBC();
        v43 = sub_22C9063CC();
        v44 = sub_22C90AACC();
        if (sub_22C5CAB64(v44))
        {
          sub_22C3720F4();
          *swift_slowAlloc() = 0;
          sub_22C5CA7D0();
          _os_log_impl(v45, v46, v47, v48, v49, v50);
          v51 = sub_22C36D66C();
          MEMORY[0x2318B9880](v51);
        }

        v52 = *(v87 + 8);
        v53 = sub_22C36BBCC();
        v54(v53);
      }

      sub_22C3870A4();
      swift_beginAccess();
      sub_22C5CADDC();
      sub_22C3858B4();
      sub_22C372158();
      v55 = sub_22C90AD1C();
      v57 = v56;
      v58 = sub_22C5CA738();
      sub_22C36DD28(v58, v59, &unk_22C9195C0);
      sub_22C5CADDC();
      sub_22C372158();
      v60 = sub_22C90AD1C();
      v62 = v61;
      v63 = sub_22C5CA738();
      sub_22C36DD28(v63, v64, &unk_22C9195C0);
      if (v55 == v60 && v57 == v62)
      {

        goto LABEL_36;
      }

      sub_22C37A060();
      sub_22C90B4FC();

      goto LABEL_26;
    }

    v86 = *v4;
    sub_22C5B9F40();
    if (v21)
    {
      v22 = v21;
      v23 = v91;
      v24 = sub_22C90A0EC();
      v25 = [v22 matchesInString:v24 options:0 range:{0, sub_22C90A30C()}];

      sub_22C36E278(0, &qword_27D9BEC78, 0x277CCACC0);
      v26 = sub_22C90A5EC();

      v27 = sub_22C36E2B8(v26);
      if (v27 == 1)
      {
        if (sub_22C36E2B8(v26))
        {
          sub_22C633A2C(0, (v26 & 0xC000000000000001) == 0, v26);
          if ((v26 & 0xC000000000000001) != 0)
          {
            v28 = MEMORY[0x2318B8460](0, v26);
          }

          else
          {
            v28 = *(v26 + 32);
          }

          v29 = v28;

          sub_22C903FBC();

          v30 = sub_22C9063CC();
          v31 = sub_22C90AACC();

          if (sub_22C388294())
          {
            sub_22C36BED8();
            v32 = v22;
            v33 = swift_slowAlloc();
            sub_22C370220();
            v92 = swift_slowAlloc();
            *v33 = 136315138;
            *(v33 + 4) = sub_22C5CAB00();
            _os_log_impl(&dword_22C366000, v30, v31, "Regex matched with pattern: %s", v33, 0xCu);
            sub_22C36FF94(v92);
            v23 = v91;
            sub_22C369B50();
            MEMORY[0x2318B9880]();
            v22 = v32;
            sub_22C369B50();
            MEMORY[0x2318B9880]();
          }

          v34 = *(v87 + 8);
          v35 = sub_22C379ED8();
          v36(v35);
          if (v20)
          {
            v37 = v20;
          }

          else
          {
            v37 = MEMORY[0x277D84F90];
          }

          sub_22C5BA92C(v23, v90, v29, v88, v37, v89, v38, v39, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96);

LABEL_26:

          goto LABEL_36;
        }

        sub_22C903FBC();

        v75 = sub_22C9063CC();
        v76 = sub_22C90AADC();

        if (sub_22C388294())
        {
          sub_22C383050();
          sub_22C5CA600();
          *v20 = 136315394;
          *(v20 + 4) = sub_22C5CAB00();
          *(v20 + 12) = 2080;
          v77 = sub_22C372158();
          *(v20 + 14) = sub_22C36F9F4(v77, v78, v79);
          sub_22C5CAAC8(&dword_22C366000, v80, v76, "Unable to retrieve first regex match for pattern: %s and utterance: %s despite there being at least one match");
          swift_arrayDestroy();
          v81 = sub_22C3816C4();
          MEMORY[0x2318B9880](v81);
          v82 = sub_22C37F88C();
          MEMORY[0x2318B9880](v82);
        }

        v83 = sub_22C5CA720();
        v84(v83, v12);
      }

      else
      {
        v66 = v27;

        if (v66 < 2)
        {
        }

        else
        {
          sub_22C903FBC();

          v67 = sub_22C9063CC();
          v68 = sub_22C90AADC();

          if (sub_22C388294())
          {
            sub_22C383050();
            sub_22C5CA600();
            *v90 = 136315394;
            *(v90 + 4) = sub_22C5CAB00();
            *(v90 + 12) = 2080;
            v69 = sub_22C37FE24();
            *(v90 + 14) = sub_22C36F9F4(v69, v70, v71);
            sub_22C5CAAC8(&dword_22C366000, v72, v68, "Regex matched the input more than once for pattern: %s and utterance: %s");
            swift_arrayDestroy();
            v73 = sub_22C36D66C();
            MEMORY[0x2318B9880](v73);
            v74 = sub_22C37F88C();
            MEMORY[0x2318B9880](v74);
          }

          (*(v87 + 8))(v0, v12);
        }
      }
    }
  }

LABEL_36:
  sub_22C36CC48();
}

void sub_22C5BA92C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v24;
  a20 = v25;
  v240 = v26;
  v28 = v27;
  v273 = v29;
  v250 = v30;
  v244 = v31;
  v243 = v32;
  v33 = sub_22C90361C();
  v34 = sub_22C369824(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22C3698E4();
  v279 = v39;
  sub_22C369930();
  MEMORY[0x28223BE20](v40);
  sub_22C36BA58();
  v268 = v41;
  sub_22C369930();
  MEMORY[0x28223BE20](v42);
  sub_22C373000();
  v269 = sub_22C3A5908(&qword_27D9BEC60, &qword_22C920510);
  sub_22C36985C(v269);
  v44 = *(v43 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v45);
  sub_22C383814();
  v46 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  sub_22C369914(v46);
  v48 = *(v47 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v49);
  v51 = &v238 - v50;
  v52 = sub_22C3A5908(&qword_27D9BB0C0, &qword_22C90D960);
  v53 = sub_22C369914(v52);
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v53);
  sub_22C3698E4();
  v266 = v56;
  sub_22C369930();
  MEMORY[0x28223BE20](v57);
  sub_22C381AEC();
  MEMORY[0x28223BE20](v58);
  sub_22C387B64();
  v59 = sub_22C90952C();
  v60 = sub_22C369824(v59);
  v62 = v61;
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v60);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v65);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v66);
  sub_22C36BA64();
  v275 = v67;
  v258 = sub_22C3A5908(&qword_27D9BEC68, &qword_22C920518);
  sub_22C36985C(v258);
  v69 = *(v68 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v70);
  sub_22C36D5B4();
  sub_22C36D234(v71);
  v72 = sub_22C3A5908(&qword_27D9BEC70, &unk_22C920520);
  v73 = sub_22C369914(v72);
  v75 = *(v74 + 64);
  MEMORY[0x28223BE20](v73);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v76);
  sub_22C36BA64();
  sub_22C3698F8(v77);
  v78 = sub_22C9063DC();
  v79 = sub_22C36A7A4(v78, &v279);
  v246 = v80;
  v82 = *(v81 + 64);
  MEMORY[0x28223BE20](v79);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v83);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v84);
  sub_22C36BA64();
  sub_22C36D234(v85);
  v86 = 0;
  v87 = v28 + 32;
  v88 = *(v28 + 16);
  v270 = (v62 + 16);
  v263 = (v62 + 32);
  v252 = v62;
  v267 = (v62 + 8);
  v283 = v36 + 8;
  v284 = v36 + 16;
  v272 = v59;
  v276 = v21;
  v274 = v51;
  v278 = v22;
  v248 = v88;
  v265 = v33;
  for (i = v87; ; v87 = i)
  {
    if (v86 == v88)
    {
      goto LABEL_54;
    }

    v89 = v59;
    v254 = v86;
    v90 = (v87 + 24 * v86);
    v92 = *v90;
    v91 = v90[1];
    v93 = v90[2];

    v260 = v93;

    v245 = v92;
    v249 = v91;
    v94 = sub_22C90A0EC();
    v95 = [v250 rangeWithName_];
    v97 = v96;

    if (v95 == sub_22C8FFDFC())
    {
      goto LABEL_56;
    }

    v281 = v95;
    v242 = v97;
    v282 = &v95[v97];
    if (__OFADD__(v95, v97))
    {
      goto LABEL_67;
    }

    v98 = v89;
    v241 = v254 + 1;

    v100 = 0;
    v101 = v274;
LABEL_6:
    v102 = *(v99 + 16);
    v103 = v258;
    v104 = v257;
    if (v100 == v102)
    {
      v256 = v100;
    }

    else
    {
      if (v100 >= v102)
      {
        __break(1u);
LABEL_67:
        __break(1u);
        return;
      }

      v105 = v100 + 1;
      sub_22C37054C();
      v110 = v106 + v107 + *(v108 + 72) * v109;
      v111 = *(v258 + 48);
      v112 = v251;
      *v251 = v109;
      (*(v108 + 16))(v112 + v111, v110, v98);
      sub_22C4E7208(v112, v257, &qword_27D9BEC68, &qword_22C920518);
      v104 = v257;
      v256 = v105;
      v103 = v258;
    }

    sub_22C3827B4();
    sub_22C36C640(v113, v114, v115, v116);
    v117 = v104;
    v118 = v255;
    sub_22C4E7208(v117, v255, &qword_27D9BEC70, &unk_22C920520);
    sub_22C36D3E0(v118);
    if (!v148)
    {
      break;
    }

    sub_22C37022C(&a14);

    sub_22C5CA8DC(&v274);
    v120 = v244;
    sub_22C90AA2C();
    if (v194)
    {
LABEL_63:

      sub_22C374490(&v268);
      sub_22C903FBC();

      v226 = sub_22C9063CC();
      sub_22C90AADC();

      v227 = sub_22C5CA9D4();
      if (os_log_type_enabled(v227, v228))
      {
        v229 = sub_22C383050();
        v285[0] = sub_22C37A180();
        *v229 = 136315394;
        *(v229 + 4) = sub_22C36F9F4(v51, v120, v285);
        *(v229 + 12) = 2080;
        v230 = sub_22C90AC0C();
        v232 = sub_22C36F9F4(v230, v231, v285);

        *(v229 + 14) = v232;
        sub_22C3839B4();
        _os_log_impl(v233, v234, v235, v236, v229, 0x16u);
        swift_arrayDestroy();
        v237 = sub_22C36D66C();
        MEMORY[0x2318B9880](v237);
        sub_22C369B50();
        MEMORY[0x2318B9880]();
      }

      sub_22C36FB04(&v278);
      v225 = v118;
      goto LABEL_61;
    }

    v195 = sub_22C90A4AC();
    v51 = v103;
    v21 = MEMORY[0x2318B76D0](v195);

    v196 = v240;
    v197 = *v240;
    swift_isUniquelyReferenced_nonNull_native();
    v285[0] = *v196;
    sub_22C36CA88();
    sub_22C62D0D4();

    *v196 = v285[0];
    v86 = v241;
    v88 = v248;
    v59 = v272;
  }

  sub_22C5CA818(*v118);
  v119 = v118 + *(v103 + 48);
  v262 = *v263;
  v262(v275, v119, v98);
  v51 = 0;
  v271 = *(v273 + 16);
  v120 = &qword_27D9BB0C0;
  while (1)
  {
    while (1)
    {
LABEL_12:
      if (v51 == v271)
      {

        swift_bridgeObjectRelease_n();
        sub_22C36D818(v285);
        sub_22C903FBC();
        v198 = *v270;
        v199 = sub_22C5CAC54();
        v200 = v272;
        v201(v199, v275, v272);
        v202 = sub_22C9063CC();
        v203 = sub_22C90AACC();
        if (sub_22C5CAB64(v203))
        {
          sub_22C370220();
          v204 = swift_slowAlloc();
          sub_22C370220();
          v205 = swift_slowAlloc();
          v285[0] = v205;
          *v204 = 136315650;
          v206 = sub_22C9094FC();
          v207 = sub_22C5CA8E8();
          (qword_27D9BB0C0)(v207);
          v208 = sub_22C36BBCC();
          sub_22C36F9F4(v208, v209, v210);
          sub_22C37BB14();

          *(v204 + 4) = v206;
          *(v204 + 12) = 2048;
          *(v204 + 14) = v281;
          *(v204 + 22) = 2048;
          *(v204 + 24) = v282;
          _os_log_impl(&dword_22C366000, v202, v203, "Unable to find span with label: %s and within range: [%ld, %ld] returned by the EntitySpanMatcher", v204, 0x20u);
          sub_22C36FF94(v205);
          v211 = sub_22C3816C4();
          MEMORY[0x2318B9880](v211);
          v212 = sub_22C37F88C();
          MEMORY[0x2318B9880](v212);

          sub_22C36FB04(&v278);
          v214 = v253;
        }

        else
        {

          v215 = sub_22C5CA8E8();
          (qword_27D9BB0C0)(v215);
          sub_22C36FB04(&v278);
          v214 = v51;
        }

        v213(v214, v247);
        (qword_27D9BB0C0)(v275, v200);
        goto LABEL_54;
      }

      v121 = sub_22C9039FC();
      sub_22C3699B8(v121);
      v277 = v273 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v123 + 72) * v51;
      sub_22C9039CC();
      v124 = sub_22C9093BC();
      sub_22C36D0A8(v101, 1, v124);
      if (v148)
      {
        sub_22C36DD28(v101, &qword_27D9BB908, &qword_22C910960);
        v130 = 1;
        v125 = v278;
      }

      else
      {
        v125 = v278;
        sub_22C90935C();
        sub_22C36BBA8(v124);
        v127 = *(v126 + 8);
        v128 = sub_22C38644C();
        v129(v128);
        v130 = 0;
      }

      v280 = v51 + 1;
      v131 = v272;
      sub_22C36C640(v125, v130, 1, v272);
      v132 = sub_22C36D400();
      v133(v132, v275, v131);
      sub_22C36BECC();
      sub_22C36C640(v134, v135, v136, v131);
      v137 = *(v269 + 48);
      v138 = v276;
      sub_22C4E719C(v125, v276, &qword_27D9BB0C0, &qword_22C90D960);
      sub_22C4E719C(v20, v138 + v137, &qword_27D9BB0C0, &qword_22C90D960);
      sub_22C36D3E0(v138);
      if (v148)
      {
        break;
      }

      v147 = v266;
      sub_22C4E719C(v138, v266, &qword_27D9BB0C0, &qword_22C90D960);
      sub_22C36D3E0(v138 + v137);
      if (v148)
      {
        sub_22C5CA664();
        sub_22C36DD28(v149, v150, v151);
        sub_22C5CA664();
        sub_22C36DD28(v152, v153, v154);
        v155 = sub_22C5CA824();
        v156(v155, v131);
        v33 = v265;
        goto LABEL_24;
      }

      v157 = v261;
      v262(v261, (v138 + v137), v131);
      sub_22C5C87F4(&qword_28142FA78, MEMORY[0x277D72D58]);
      v264 = sub_22C90A0BC();
      v158 = *v267;
      (*v267)(v157, v131);
      sub_22C5CA664();
      sub_22C36DD28(v159, v160, v161);
      sub_22C5CA664();
      sub_22C36DD28(v162, v163, v164);
      v158(v147, v131);
      sub_22C5CA664();
      sub_22C36DD28(v165, v166, v167);
      v33 = v265;
      v101 = v274;
      v51 = v280;
      if (v264)
      {
        goto LABEL_26;
      }
    }

    sub_22C5CA664();
    sub_22C36DD28(v139, v140, v141);
    sub_22C5CA664();
    sub_22C36DD28(v142, v143, v144);
    sub_22C36D3E0(v138 + v137);
    if (v148)
    {
      break;
    }

LABEL_24:
    sub_22C36DD28(v138, &qword_27D9BEC60, &qword_22C920510);
    v101 = v274;
    v51 = v280;
  }

  v145 = sub_22C36D39C();
  sub_22C36DD28(v145, v146, &qword_22C90D960);
  v51 = v280;
LABEL_26:
  v168 = sub_22C9039DC();
  v21 = 0;
  v89 = *(v168 + 16);
  while (2)
  {
    if (v89 == v21)
    {

      v175 = v259;
      if (v259)
      {
LABEL_38:
        if (v175 != *(v260 + 16) - 1)
        {
LABEL_47:
          v98 = v272;
          (*v267)(v275, v272);
          v101 = v274;
          v99 = v260;
          v100 = v256;
          goto LABEL_6;
        }

        v184 = sub_22C9039DC();
        v185 = 0;
        v89 = *(v184 + 16);
        while (v89 != v185)
        {
          if (v185 >= *(v184 + 16))
          {
            __break(1u);
            goto LABEL_59;
          }

          v186 = *(v36 + 80);
          sub_22C36BA94();
          (*(v36 + 16))(v279, v184 + v187 + *(v36 + 72) * v185++, v33);
          v188 = sub_22C90360C();
          v189 = *(v36 + 8);
          v190 = sub_22C380120();
          v191(v190);
          v148 = v188 == v282;
          v120 = &qword_27D9BB0C0;
          if (v148)
          {

            goto LABEL_47;
          }
        }
      }

      else
      {
        v118 = sub_22C9039DC();
        v176 = 0;
        v177 = v118[2];
        while (v177 != v176)
        {
          if (v176 >= v118[2])
          {
            __break(1u);
            goto LABEL_63;
          }

          v178 = *(v36 + 80);
          sub_22C36BA94();
          sub_22C5CAC74(v179);
          v180 = v268;
          v181(v268);
          ++v176;
          v182 = sub_22C90359C();
          v183 = v180;
          v120 = &qword_27D9BB0C0;
          (*(v36 + 8))(v183, v33);
          if (v182 == v281)
          {

            v175 = v259;
            goto LABEL_38;
          }
        }
      }

LABEL_46:

      v101 = v274;
      goto LABEL_12;
    }

    if (v21 < *(v168 + 16))
    {
      v169 = *(v36 + 80);
      sub_22C36BA94();
      sub_22C5CAC74(v170);
      v171(v23);
      if (sub_22C90359C() < v281)
      {

        v192 = sub_22C385558();
        v193(v192, v33);
        v101 = v274;
        goto LABEL_12;
      }

      ++v21;
      v172 = sub_22C90360C();
      v173 = sub_22C385558();
      v174(v173, v33);
      if (v282 < v172)
      {
        goto LABEL_46;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_56:
  sub_22C37443C(&v269);
  sub_22C903FBC();
  sub_22C5CA9C8(&v281);

  sub_22C383834(&v275);

  v51 = sub_22C9063CC();
  sub_22C90AACC();

  if (sub_22C5CAE2C())
  {
    v216 = sub_22C383050();
    v285[0] = sub_22C37A180();
    *v216 = 136315394;

    v217 = sub_22C36F9F4(v245, v23, v285);

    *(v216 + 4) = v217;
    *(v216 + 12) = 2080;
    *(v216 + 14) = sub_22C36F9F4(v243, v21, v285);
    sub_22C5CA530();
    _os_log_impl(v218, v219, v220, v221, v222, 0x16u);
    swift_arrayDestroy();
    v223 = sub_22C37F88C();
    MEMORY[0x2318B9880](v223);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  else
  {
LABEL_59:
  }

  sub_22C36FB04(&v278);
  v225 = v89;
LABEL_61:
  v224(v225, v247);
LABEL_54:
  sub_22C36CC48();
}

void sub_22C5BBA0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, unsigned __int8 a25)
{
  sub_22C370030();
  a19 = v28;
  a20 = v29;
  v285 = v26;
  v283 = v25;
  v288 = v30;
  v289 = v31;
  v33 = v32;
  v282 = v34;
  v35 = sub_22C902D3C();
  v36 = sub_22C369914(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  sub_22C3698A8();
  sub_22C3698F8(v39);
  v40 = sub_22C9089DC();
  v41 = sub_22C36A7A4(v40, &v296);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  sub_22C3698A8();
  sub_22C36D234(v44);
  v45 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  v46 = sub_22C369914(v45);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v49);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v50);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v51);
  sub_22C36BA64();
  sub_22C3698F8(v52);
  v53 = sub_22C908A0C();
  v54 = sub_22C369824(v53);
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v54);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v57);
  sub_22C36BA64();
  sub_22C3698F8(v58);
  v59 = sub_22C90888C();
  v60 = sub_22C369824(v59);
  v287 = v61;
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v60);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v64);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v65);
  sub_22C36BA64();
  sub_22C3698F8(v66);
  v67 = sub_22C90880C();
  v68 = sub_22C369824(v67);
  v70 = v69;
  v72 = *(v71 + 64);
  MEMORY[0x28223BE20](v68);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v73);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v74);
  sub_22C36BA64();
  sub_22C3698F8(v75);
  v76 = sub_22C9087BC();
  v77 = sub_22C369824(v76);
  v279 = v78;
  v280 = v77;
  v80 = *(v79 + 64);
  MEMORY[0x28223BE20](v77);
  sub_22C3698A8();
  sub_22C3698F8(v81);
  v82 = sub_22C908AEC();
  v83 = sub_22C36A7A4(v82, &v287);
  v277 = v84;
  v86 = *(v85 + 64);
  MEMORY[0x28223BE20](v83);
  sub_22C3698A8();
  v88 = sub_22C3698F8(v87);
  v264 = type metadata accessor for PlanPostProcessor(v88);
  v89 = sub_22C36985C(v264);
  v91 = *(v90 + 64);
  MEMORY[0x28223BE20](v89);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v92);
  sub_22C36BA64();
  v281 = v93;
  sub_22C36BA0C();
  v286 = sub_22C9063DC();
  v94 = sub_22C369824(v286);
  v96 = v95;
  v98 = *(v97 + 64);
  MEMORY[0x28223BE20](v94);
  sub_22C3698E4();
  sub_22C3698D4();
  v100 = MEMORY[0x28223BE20](v99);
  MEMORY[0x28223BE20](v100);
  sub_22C49CA04();
  MEMORY[0x28223BE20](v101);
  sub_22C5CA6F0();
  if (!*(*v33 + 16))
  {
    sub_22C36A748();
    v132 = v53;
    goto LABEL_13;
  }

  v103 = v33;
  v255 = v102;
  v275 = v53;
  v272 = v70;
  v284 = v59;
  v261 = a24;
  v260 = a23;
  v104 = a21;
  v105 = a22;
  sub_22C903FBC();
  v106 = sub_22C9063CC();
  v107 = sub_22C90AACC();
  if (os_log_type_enabled(v106, v107))
  {
    sub_22C3720F4();
    v108 = swift_slowAlloc();
    *v108 = 0;
    _os_log_impl(&dword_22C366000, v106, v107, "Replacing expressions with correct event ids", v108, 2u);
    sub_22C369B50();
    MEMORY[0x2318B9880](v109);
  }

  HIDWORD(v262) = a25;

  v110 = *(v96 + 8);
  v111 = v286;
  v110(v25, v286);
  v112 = v288;
  sub_22C5BCBB8(v103, v289, v288, v104, v105, v260, v261, v113, v255, v256, v257, v258, v259, v260, v261, v262, v264, v266, v268, v270);
  v114 = *v103;

  sub_22C903FBC();

  v115 = sub_22C9063CC();
  sub_22C90AACC();
  v289 = v114;

  v116 = sub_22C5CA91C();
  if (os_log_type_enabled(v116, v117))
  {
    sub_22C36BED8();
    swift_slowAlloc();
    sub_22C3735E4();
    v111 = swift_slowAlloc();
    a10 = v111;
    *v114 = 136315138;
    v118 = sub_22C9070DC();
    v119 = MEMORY[0x2318B7AD0](v289, v118);
    sub_22C36F9F4(v119, v120, &a10);
    sub_22C5CAE44();
    *(v114 + 4) = v112;
    v112 = v288;
    sub_22C5CA550();
    _os_log_impl(v121, v122, v123, v124, v125, v126);
    sub_22C36FF94(v111);
    v127 = sub_22C36ACAC();
    MEMORY[0x2318B9880](v127);
    v128 = sub_22C36D66C();
    MEMORY[0x2318B9880](v128);
  }

  v110(v27, v286);
  if ((v263 & 1) == 0)
  {
    sub_22C90878C();
    v147 = *MEMORY[0x277D1E6C8];
    v148 = *(v287 + 104);
    v149 = sub_22C5CAC54();
    v150(v149);
    sub_22C9087DC();
    sub_22C370208(&v289);
    sub_22C3A5950(v151);

    sub_22C5CAC28(&v288);
    sub_22C4E719C(v152, v153, v154, v155);
    v156 = sub_22C36CCF8();
    sub_22C36D0A8(v156, v157, v275);
    if (v158)
    {

      sub_22C37A060();
      sub_22C36DD28(v159, v160, v161);
      sub_22C5CA9A0();
      sub_22C3A5F00();
      sub_22C37A198();
      swift_allocError();
      sub_22C377534(v162, v295, v294, v293);
      v163 = sub_22C372280();
      sub_22C36DD28(v163, v164, &qword_22C90C6E0);
      (*(v287 + 8))(v110, v284);
      sub_22C36FB04(&a9);
      sub_22C3837F8();
      v165();
      goto LABEL_23;
    }

    sub_22C36DD28(v111, &qword_27D9BA808, &qword_22C90C6E0);
    sub_22C37443C(&v293);
    v167 = *(v166 + 32);
    sub_22C3806E8();
    v168();
    v169 = v287;
    v170 = *(v287 + 16);
    v171 = sub_22C37BA1C();
    v172(v171, v110, v284);
    sub_22C36D818(&v292);
    sub_22C9088AC();
    sub_22C38B1DC(&v294.n128_i64[1]);

    sub_22C370208(&v294);
    sub_22C5CA790();
    v173 = *MEMORY[0x277D1E6F8];
    sub_22C36D2E8(&v295);
    (*(v174 + 104))(v111);
    sub_22C90893C();
    v175 = *(v114 + 8);
    v176 = sub_22C36D384();
    v177(v176);
    v178 = sub_22C50B61C();
    v179(v178, v275);
    (*(v169 + 8))(v273, v284);
    sub_22C36FB04(&a9);
    sub_22C3837F8();
    v180();
    sub_22C36BECC();
    v132 = v275;
LABEL_13:
    sub_22C36C640(v129, v130, v131, v132);
    goto LABEL_23;
  }

  v133 = v289;

  v134 = *(v277 + 16);
  v134();
  v135 = *(v279 + 16);
  v135(v278, v112, v280);
  v136 = v281;
  *v281 = MEMORY[0x277D84F98];
  (v134)(v136 + v265[5], v276, v269);
  *(v136 + v265[8]) = v133;
  v135(v136 + v265[6], v278, v280);
  v137 = v136 + v265[7];

  v138 = v278;
  sub_22C90878C();
  sub_22C901FAC();
  sub_22C369A48();
  sub_22C908C5C();
  sub_22C5CA3DC();
  sub_22C5C87F4(v139, v140);
  sub_22C44178C();
  v141 = sub_22C909F0C();
  (*(v279 + 8))(v278, v280);
  sub_22C36FB04(&a17);
  v142(v276, v269);
  *(v137 + *(type metadata accessor for TranscriptValueFetcher(0) + 20)) = v141;
  sub_22C5CA0B8(v136, v267);
  PlanPostProcessor.process()();
  v143 = v285;
  if (v285)
  {
    v144 = 0;
    v145 = v271;
    v146 = v288;
    sub_22C5CA498();
    sub_22C903FBC();
    v184 = v285;
    v185 = sub_22C9063CC();
    sub_22C90AADC();

    if (sub_22C5CAE14())
    {
      sub_22C36BED8();
      v186 = swift_slowAlloc();
      sub_22C37080C();
      v187 = swift_slowAlloc();
      *v186 = 138412290;
      v188 = v143;
      v189 = _swift_stdlib_bridgeErrorToNSError();
      *(v186 + 4) = v189;
      *v187 = v189;
      sub_22C5CA598();
      _os_log_impl(v190, v191, v192, v193, v194, v195);
      sub_22C36DD28(v187, &qword_27D9BB158, qword_22C910FD0);
      v196 = sub_22C3816C4();
      MEMORY[0x2318B9880](v196);
      v197 = sub_22C36ACAC();
      MEMORY[0x2318B9880](v197);
    }

    else
    {
    }

    v198 = v274;
    v199 = v275;
    sub_22C5CA580();
    v200();
  }

  else
  {
    sub_22C90941C();
    sub_22C909F0C();
    sub_22C37205C(&v279);
    v146 = v288;
    sub_22C90878C();
    v181 = sub_22C36ECB4();
    v183 = sub_22C4006B0(v181, v182, v138);
    v144 = 0;
    v233 = v183;
    v234 = *(v272 + 8);
    sub_22C3837F8();
    v235();

    sub_22C37A078(&v277);
    sub_22C903FBC();
    v145 = sub_22C9063CC();
    v236 = sub_22C90AACC();
    if (os_log_type_enabled(v145, v236))
    {
      sub_22C36BED8();
      v237 = swift_slowAlloc();
      v285 = 0;
      v238 = v237;
      sub_22C370220();
      v239 = swift_slowAlloc();
      a10 = v239;
      *v238 = 136315138;
      v240 = sub_22C9070DC();

      MEMORY[0x2318B7AD0](v241, v240);
      sub_22C5CAC34();

      v242 = sub_22C36FC2C();
      v245 = sub_22C36F9F4(v242, v243, v244);
      v146 = v288;

      *(v238 + 4) = v245;
      sub_22C5CAA1C();
      _os_log_impl(v246, v247, v248, v249, v250, v251);
      sub_22C36FF94(v239);
      v252 = sub_22C36ACAC();
      MEMORY[0x2318B9880](v252);
      v144 = v285;
      v199 = v275;
      sub_22C369B50();
      MEMORY[0x2318B9880]();

      sub_22C5CA580();
      v253();
      sub_22C5CA498();
      v289 = v233;
      v198 = v274;
    }

    else
    {

      sub_22C5CA580();
      v254();
      sub_22C5CA498();
      v289 = v233;
      v198 = v274;
      v199 = v275;
    }
  }

  sub_22C90878C();
  (*(v287 + 104))(v198, *MEMORY[0x277D1E6C8], v284);
  v201 = sub_22C9087DC();
  sub_22C37443C(&v291);
  sub_22C3A5950(v202);

  sub_22C5CAC28(&v290.n128_i64[1]);
  sub_22C4E719C(v203, v204, v205, v206);
  v207 = sub_22C36CCF8();
  sub_22C36D0A8(v207, v208, v199);
  if (v158)
  {

    sub_22C37A060();
    sub_22C36DD28(v209, v210, v211);
    sub_22C5CA9A0();
    sub_22C3A5F00();
    sub_22C37A198();
    swift_allocError();
    sub_22C377534(v212, v292, v291, v290);
    v213 = sub_22C379ED8();
    sub_22C36DD28(v213, v214, &qword_22C90C6E0);
    (*(v287 + 8))(v198, v284);
    sub_22C36FB04(&a9);
    sub_22C3837F8();
    v215();
  }

  else
  {
    sub_22C36DD28(v146, &qword_27D9BA808, &qword_22C90C6E0);
    sub_22C37443C(&v293);
    v217 = *(v216 + 32);
    v218 = v287;
    v219 = sub_22C5CAC54();
    v220(v219, v201, v199);
    v221 = *(v218 + 16);
    v222 = sub_22C37BA1C();
    v223(v222, v198, v284);
    sub_22C36D818(&v292);
    sub_22C9088AC();
    sub_22C38B1DC(&v294.n128_i64[1]);

    sub_22C370208(&v294);
    sub_22C5CA790();
    v224 = *MEMORY[0x277D1E6F8];
    v285 = v144;
    sub_22C37205C(&v295);
    (*(v225 + 104))(v198);
    sub_22C90893C();
    v226 = v144[1];
    v227 = sub_22C3806B8();
    v228(v227);
    (*(v146 + 8))(v145, v199);
    (*(v218 + 8))(v274, v284);
    sub_22C36FB04(&a9);
    sub_22C3837F8();
    v229();
    sub_22C36BECC();
    sub_22C36C640(v230, v231, v232, v199);
  }

LABEL_23:
  sub_22C36FB20();
}

void sub_22C5BCBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v22;
  a20 = v23;
  v963 = v20;
  v941 = v24;
  v1010 = v25;
  v962 = v26;
  v964 = v27;
  v1026 = v28;
  v952 = v29;
  v31 = v30;
  v32 = sub_22C3A5908(&qword_27D9BEC18, &unk_22C9204A0);
  sub_22C369914(v32);
  v34 = *(v33 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v35);
  sub_22C36D5B4();
  sub_22C3698F8(v36);
  v37 = sub_22C9081CC();
  v38 = sub_22C36A7A4(v37, &v998);
  v1036 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  sub_22C3698A8();
  sub_22C36D234(v42);
  v43 = sub_22C3A5908(&qword_27D9BD798, &unk_22C919070);
  sub_22C369914(v43);
  v45 = *(v44 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v46);
  sub_22C36D5B4();
  sub_22C3698F8(v47);
  v48 = sub_22C9079FC();
  v49 = sub_22C36A7A4(v48, &v1021);
  v51 = v50;
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v49);
  sub_22C3698A8();
  sub_22C36D234(v54);
  v55 = sub_22C3A5908(&qword_27D9BEC20, &qword_22C9204B8);
  sub_22C369914(v55);
  v57 = *(v56 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v58);
  sub_22C36D5B4();
  sub_22C3698F8(v59);
  v1016 = type metadata accessor for ContextRule();
  v60 = sub_22C36985C(v1016);
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v60);
  sub_22C3698A8();
  sub_22C36D234(v63);
  v64 = sub_22C3A5908(&qword_27D9BEC58, &qword_22C922F70);
  sub_22C369914(v64);
  v66 = *(v65 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v67);
  sub_22C36D5B4();
  sub_22C3698F8(v68);
  v69 = sub_22C9063DC();
  v70 = sub_22C36A7A4(v69, &v1009);
  v1044 = v71;
  v73 = *(v72 + 64);
  MEMORY[0x28223BE20](v70);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v74);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v75);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v76);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v77);
  sub_22C36BA64();
  sub_22C3698F8(v78);
  v79 = sub_22C906F2C();
  v80 = sub_22C36A7A4(v79, &v1035);
  v82 = v81;
  v84 = *(v83 + 64);
  MEMORY[0x28223BE20](v80);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v85);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v86);
  sub_22C36BA64();
  sub_22C3698F8(v87);
  v88 = sub_22C90731C();
  v89 = sub_22C36A7A4(v88, &v900);
  v91 = v90;
  v93 = *(v92 + 64);
  MEMORY[0x28223BE20](v89);
  sub_22C3698A8();
  sub_22C3698F8(v94);
  v95 = sub_22C906D7C();
  v96 = sub_22C36A7A4(v95, &v1002);
  v1047 = v97;
  v99 = *(v98 + 64);
  MEMORY[0x28223BE20](v96);
  sub_22C3698A8();
  sub_22C36D234(v100);
  v101 = sub_22C3A5908(&qword_27D9BAA00, &qword_22C911F60);
  v102 = sub_22C369914(v101);
  v104 = *(v103 + 64);
  MEMORY[0x28223BE20](v102);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v105);
  sub_22C373000();
  v106 = sub_22C90832C();
  v107 = sub_22C36A7A4(v106, &v925);
  v1041 = v108;
  v110 = *(v109 + 64);
  MEMORY[0x28223BE20](v107);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v111);
  sub_22C36BA64();
  sub_22C3698F8(v112);
  v113 = sub_22C90726C();
  v114 = sub_22C36A7A4(v113, &v932);
  v1045 = v115;
  v117 = *(v116 + 64);
  MEMORY[0x28223BE20](v114);
  sub_22C3698A8();
  sub_22C3698F8(v118);
  v119 = sub_22C90769C();
  v120 = sub_22C369824(v119);
  v1043 = v121;
  v123 = *(v122 + 64);
  MEMORY[0x28223BE20](v120);
  sub_22C3698A8();
  sub_22C3698F8(v124);
  v125 = sub_22C906ACC();
  v126 = sub_22C36A7A4(v125, v986);
  v1040 = v127;
  v129 = *(v128 + 64);
  MEMORY[0x28223BE20](v126);
  sub_22C3698A8();
  sub_22C3698F8(v130);
  v131 = sub_22C906F5C();
  v132 = sub_22C36A7A4(v131, &v910);
  v1021 = v133;
  v135 = *(v134 + 64);
  MEMORY[0x28223BE20](v132);
  sub_22C3698A8();
  sub_22C3698F8(v136);
  v137 = sub_22C9071EC();
  v138 = sub_22C36A7A4(v137, &v913);
  v1033 = v139;
  v141 = *(v140 + 64);
  MEMORY[0x28223BE20](v138);
  sub_22C3698A8();
  sub_22C3698F8(v142);
  v143 = sub_22C90734C();
  v144 = sub_22C36A7A4(v143, v924);
  v1031 = v145;
  v147 = *(v146 + 64);
  MEMORY[0x28223BE20](v144);
  sub_22C3698A8();
  sub_22C36D234(v148);
  v149 = sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  v150 = sub_22C369914(v149);
  v152 = *(v151 + 64);
  MEMORY[0x28223BE20](v150);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v153);
  sub_22C36BA64();
  sub_22C3698F8(v154);
  v155 = sub_22C906CDC();
  v156 = sub_22C36A7A4(v155, &v920);
  v1028 = v157;
  v159 = *(v158 + 64);
  MEMORY[0x28223BE20](v156);
  sub_22C3698A8();
  sub_22C3698F8(v160);
  v161 = sub_22C9072EC();
  v162 = sub_22C36A7A4(v161, &v944);
  v1030 = v163;
  v165 = *(v164 + 64);
  MEMORY[0x28223BE20](v162);
  sub_22C3698A8();
  sub_22C3698F8(v166);
  v167 = sub_22C906B3C();
  v168 = sub_22C36A7A4(v167, v951);
  v1019 = v169;
  v171 = *(v170 + 64);
  MEMORY[0x28223BE20](v168);
  sub_22C3698A8();
  sub_22C3698F8(v172);
  v173 = sub_22C90700C();
  v174 = sub_22C369914(v173);
  v176 = *(v175 + 64);
  MEMORY[0x28223BE20](v174);
  sub_22C3698A8();
  v178 = sub_22C3698F8(v177);
  v179 = type metadata accessor for PlanOverridesService.EventReference(v178);
  v180 = sub_22C36A7A4(v179, &v1034);
  v915 = v181;
  v183 = *(v182 + 64);
  MEMORY[0x28223BE20](v180);
  sub_22C3698A8();
  sub_22C3698F8(v184);
  v185 = sub_22C90069C();
  v186 = sub_22C36A7A4(v185, &v1032);
  v1005 = v187;
  v189 = *(v188 + 64);
  MEMORY[0x28223BE20](v186);
  sub_22C3698A8();
  sub_22C3698F8(v190);
  v1035 = sub_22C9089DC();
  v191 = sub_22C369824(v1035);
  v1018 = v192;
  v194 = *(v193 + 64);
  MEMORY[0x28223BE20](v191);
  sub_22C3698A8();
  v1034 = v195;
  v196 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  sub_22C369914(v196);
  v198 = *(v197 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v199);
  sub_22C36D5B4();
  sub_22C3698F8(v200);
  v1032 = sub_22C908A0C();
  v201 = sub_22C369824(v1032);
  v1037 = v202;
  v204 = *(v203 + 64);
  MEMORY[0x28223BE20](v201);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v205);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v206);
  sub_22C36BA64();
  sub_22C3698F8(v207);
  v208 = sub_22C90880C();
  v209 = sub_22C36A7A4(v208, &v1017);
  v1017 = v210;
  v212 = *(v211 + 64);
  MEMORY[0x28223BE20](v209);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v213);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v214);
  sub_22C36BA64();
  sub_22C3698F8(v215);
  v216 = sub_22C9069FC();
  v217 = sub_22C36A7A4(v216, &v957);
  i = v218;
  v220 = *(v219 + 64);
  MEMORY[0x28223BE20](v217);
  sub_22C3698A8();
  sub_22C3698F8(v221);
  v222 = sub_22C90654C();
  v223 = sub_22C36A7A4(v222, &a14);
  v225 = v224;
  v227 = *(v226 + 64);
  MEMORY[0x28223BE20](v223);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v228);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v229);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v230);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v231);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v232);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v233);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v234);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v235);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v236);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v237);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v238);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v239);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v240);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v241);
  sub_22C36BA64();
  sub_22C3698F8(v242);
  v243 = sub_22C9070DC();
  v244 = sub_22C369824(v243);
  v997 = v245;
  v247 = *(v246 + 64);
  MEMORY[0x28223BE20](v244);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v248);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v249);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v250);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v251);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v252);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v253);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v254);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v255);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v256);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v257);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v258);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v259);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v260);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v261);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v262);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v263);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v264);
  sub_22C36BA64();
  sub_22C3698F8(v265);
  v266 = sub_22C901FAC();
  v267 = sub_22C369824(v266);
  v1042 = v268;
  v270 = *(v269 + 64);
  MEMORY[0x28223BE20](v267);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v271);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v272);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v273);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v274);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v275);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v276);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v277);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v278);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v279);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v280);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v281);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v282);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v283);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v284);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v285);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v286);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v287);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v288);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v289);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v290);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v291);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v292);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v293);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v294);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v295);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v296);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v297);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v298);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v299);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v300);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v301);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v302);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v303);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v304);
  sub_22C36BA58();
  v1046 = v305;
  sub_22C369930();
  MEMORY[0x28223BE20](v306);
  sub_22C36BA58();
  v1038 = v307;
  sub_22C369930();
  MEMORY[0x28223BE20](v308);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v309);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v310);
  sub_22C36BA64();
  sub_22C36D234(v311);
  sub_22C5CA3DC();
  sub_22C5C87F4(v312, v313);
  v1050 = sub_22C909F0C();
  v1013 = v31;
  v314 = *v31;
  v315 = *(*v31 + 16);
  if (!v315)
  {
LABEL_195:

    sub_22C36CC48();
    return;
  }

  v1012 = v51;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v927 = v119;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_214;
  }

  v318 = v1036;
LABEL_4:
  v319 = 0;
  v995 = v225 + 88;
  v981 = (v1044 + 1);
  v852 = v225 + 8;
  v994 = v225 + 96;
  v850 = v91 + 32;
  v1006 = *MEMORY[0x277D1DAA8];
  v984 = v225 + 104;
  v848 = v91 + 8;
  v986[1] = *MEMORY[0x277D1DA98];
  v856 = v1021 + 32;
  v854 = v1021 + 8;
  *&v317 = 136315138;
  v843 = v317;
  v862 = (v1033 + 4);
  v951[3] = *MEMORY[0x277D1DA78];
  v860 = (v1033 + 1);
  v943[1] = *MEMORY[0x277D1DA70];
  sub_22C5CABE4(&a15);
  v919 = *MEMORY[0x277D1DA88];
  v866 = (v1041 + 2);
  v865 = (v1041 + 1);
  v911 = *MEMORY[0x277D1DAD8];
  v884 = *MEMORY[0x277D1DAD0];
  v868 = *MEMORY[0x277D1DA48];
  v867 = *MEMORY[0x277D1DAE8];
  v864 = *MEMORY[0x277D1DA90];
  HIDWORD(v863) = *MEMORY[0x277D1DAC8];
  HIDWORD(v858) = *MEMORY[0x277D1DAB0];
  LODWORD(v858) = *MEMORY[0x277D1DAE0];
  HIDWORD(v980) = *MEMORY[0x277D1DEF8];
  HIDWORD(v966) = *MEMORY[0x277D1DEE8];
  v1021 = v997 + 8;
  v91 = v1042 + 8;
  v1044 = (v1042 + 16);
  v1008 = (v1042 + 32);
  v989 = v997 + 40;
  v1028 = v1042 + 40;
  sub_22C5CA910(v1045 + 32);
  sub_22C5CABE4(&a17);
  sub_22C5CA910(v320);
  sub_22C5CABE4(&v1049 + 8);
  sub_22C5CA910(v321);
  v906 = v322;
  v917 = i + 32;
  v916 = v1017 + 32;
  v1033 = (v1018 + 8);
  v1031 = v1037 + 16;
  v924[0] = v1037 + 32;
  v988 = v1017 + 8;
  v1000 = v1037 + 8;
  v999 = v1005 + 32;
  v913 = i + 8;
  v926 = v1040 + 4;
  sub_22C5CA910((v1043 + 1));
  v924[1] = v323;
  sub_22C5CA910(v1047 + 32);
  v950 = v324;
  v979 = (v82 + 32);
  v978 = (v82 + 16);
  v973[1] = v82 + 88;
  v973[0] = v82 + 8;
  v967 = (v82 + 96);
  sub_22C5CABE4(&v1044);
  v969 = v325;
  v945 = v318 + 32;
  sub_22C5CA910((v318 + 8));
  v968 = v326;
  v949 = (v82 + 104);
  v1039 = v21;
  v1047 = v266;
  v998 = v243;
  v993 = v315;
  v1020 = v327;
  v1041 = v91;
  while (1)
  {
    if (v319 == v315)
    {
      goto LABEL_200;
    }

    sub_22C5CA898();
    if (v328)
    {
LABEL_201:
      __break(1u);
LABEL_202:
      __break(1u);
LABEL_203:
      __break(1u);
LABEL_204:
      __break(1u);
LABEL_205:
      __break(1u);
LABEL_206:
      __break(1u);
LABEL_207:
      __break(1u);
LABEL_208:
      __break(1u);
LABEL_209:
      __break(1u);
LABEL_210:
      __break(1u);
LABEL_211:
      __break(1u);
LABEL_212:
      __break(1u);
LABEL_213:
      __break(1u);
LABEL_214:
      v318 = v1036;
      sub_22C887620(v314);
      v314 = v838;
      goto LABEL_4;
    }

    v329 = v997;
    v315 = (*(v329 + 80) + 32) & ~*(v329 + 80);
    v225 = *(v997 + 16);
    v1030 = *(v997 + 72) * v319;
    v330 = sub_22C37022C(&v1026);
    (v225)(v330);
    sub_22C370208(&v1038);
    sub_22C9068FC();
    v331 = *(v329 + 8);
    v332 = sub_22C37B9B0();
    v1017 = v333;
    v333(v332);
    sub_22C37A078(&a16);
    sub_22C5C5D50();
    v334 = v91;
    v91 = v1041;
    v1045 = *v1041;
    v1045(v334, v266);
    v335 = *v1044;
    sub_22C5CAA04();
    v1043 = v336;
    (v336)();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C887620(v314);
      v314 = v760;
    }

    sub_22C5CA898();
    if (v328)
    {
      goto LABEL_202;
    }

    v337 = v314 + v315;
    v315 = v1030;
    v82 = v337 + v1030;
    sub_22C90707C();
    sub_22C5CA540();
    sub_22C5CA898();
    if (v328)
    {
      goto LABEL_203;
    }

    v338 = sub_22C37022C(&a10);
    (v225)(v338);
    sub_22C37205C(&v1040);
    sub_22C90702C();
    sub_22C37025C(&v1024);
    sub_22C5CA6C4();
    v339();
    sub_22C369908(&v1037 + 4);
    v1012 = v314;
    v1018 = v319;
    v1011 = v337;
    if (v377)
    {
      v340 = sub_22C37025C(&v1023);
      v341(v340, v315);
      v319 = *v979;
      v342 = sub_22C37B9B0();
      (v319)(v342);
      v225 = *v978;
      v343 = v982;
      v344 = sub_22C36BA00();
      (v225)(v344);
      sub_22C36BA4C(&v1000);
      v345 = sub_22C37BD98();
      v346(v345);
      sub_22C369908(&v1006);
      if (v377)
      {
        sub_22C36BA4C(&v994);
        v347 = sub_22C37BD98();
        v348(v347);
        v21 = *v343;
        v314 = v343[1];
        sub_22C37A078(v1003);
        sub_22C903FBC();
        v349 = sub_22C9063CC();
        v350 = sub_22C90AACC();
        v351 = sub_22C370214();
        if (os_log_type_enabled(v351, v352))
        {
          sub_22C3720F4();
          v353 = swift_slowAlloc();
          sub_22C5CA670(v353);
          sub_22C5CA7D0();
          _os_log_impl(v354, v355, v356, v357, v358, v359);
          v360 = sub_22C36D66C();
          MEMORY[0x2318B9880](v360);
        }

        v361 = *v981;
        (*v981)(v976, v983);
        v362 = sub_22C37FE24();
        v91 = sub_22C5C5BB0(v362, v363, v964);
        v82 = v364;
        sub_22C36D818(v990);
        sub_22C37FE24();
        sub_22C5C51D8();

        v365 = sub_22C36CCF8();
        v366 = v1004;
        sub_22C36D0A8(v365, v367, v1004);
        if (!v377)
        {

          sub_22C3806E8();
          (v319)();
          sub_22C37A078(&v987);
          sub_22C903FBC();
          v478 = sub_22C9063CC();
          sub_22C90AACC();
          v479 = sub_22C370214();
          if (os_log_type_enabled(v479, v480))
          {
            sub_22C3720F4();
            v482 = swift_slowAlloc();
            sub_22C5CA670(v482);
            sub_22C5CA7D0();
            _os_log_impl(v483, v484, v485, v486, v487, v488);
            sub_22C369B50();
            MEMORY[0x2318B9880]();
          }

          v361(v958[1], v983);
          v319 = v934;
          sub_22C5CA4F8();
          v489();
          v243 = v958[0];
          v490 = v1004;
          (v225)(v938, v958[0], v1004);
          sub_22C36FD6C();
          sub_22C5CA520();
          v491();
          v91 = v1023;
          v82 = v1023;
          sub_22C9070CC();
          MEMORY[0x2318B4580]();
          sub_22C5CA83C();
          sub_22C37BA44(v492);
          sub_22C9070BC();
          sub_22C5CA410();
          sub_22C37A078(&v961);
          sub_22C388EF4();
          sub_22C90708C();
          v225 = v973[0];
          v315 = *v973[0];
          v493 = sub_22C441720();
          (v315)(v493);
          (v315)(v996, v490);
          sub_22C3735C4();
          v494();
          sub_22C386A40();
          v495();
          sub_22C374D00();
          v21 = v1039;
          if (v328)
          {
            goto LABEL_208;
          }

          v496 = sub_22C377FE0();
          v498 = v82;
          goto LABEL_119;
        }

        sub_22C36DD28(v350, &qword_27D9BEC58, &qword_22C922F70);
        sub_22C5CA9C8(&v959);
        sub_22C5CA4F8();
        v368();
        v319 = v366;
        v243 = v939;
        *v939 = v91;
        *(v243 + 8) = v82;
        v369 = sub_22C37025C(&v974);
        v370(v369, HIDWORD(v980), v319);
        sub_22C37BB00();
        sub_22C5CA520();
        v371();
        v315 = sub_22C5CA8A4();
        MEMORY[0x2318B4580]();
        sub_22C5CA83C();
        sub_22C37BA44(v372);
        sub_22C9070BC();
        sub_22C5CA410();
        sub_22C36D818(&v962);
        sub_22C38A024();
        sub_22C90708C();
        sub_22C36BA4C(&v999);
        v373(v996, v319);
        sub_22C3735C4();
        v374();
        sub_22C386A40();
        v375();
        sub_22C374D00();
        if (v328)
        {
          goto LABEL_207;
        }

        sub_22C377FE0();
        sub_22C3806E8();
        v376();
        sub_22C5CA540();
        v21 = v1039;
      }

      else
      {
        sub_22C369908(&v993 + 4);
        v243 = v998;
        if (v398)
        {
          sub_22C36BA4C(&v994);
          v399(v343, v1004);
          v314 = *v343;

          sub_22C37A078(&v988);
          sub_22C903FBC();
          v82 = sub_22C9063CC();
          sub_22C90AACC();
          v400 = sub_22C370214();
          if (os_log_type_enabled(v400, v401))
          {
            sub_22C3720F4();
            v402 = swift_slowAlloc();
            sub_22C5CA670(v402);
            sub_22C5CA7D0();
            _os_log_impl(v403, v404, v405, v406, v407, v408);
            v409 = sub_22C36D66C();
            MEMORY[0x2318B9880](v409);
          }

          sub_22C36BA4C(&v1007);
          sub_22C5CAC1C();
          v410();
          v315 = *(v314 + 16);

          sub_22C5CAC10();
          sub_22C5CAC04();
          v1040 = v315;
          if (!v315)
          {
LABEL_91:
            sub_22C5CA9C8(&v954);
            sub_22C5CA5F4();
            v551();
            *v931[0] = v314;
            v552 = sub_22C37025C(&v974);
            v225 = v1004;
            v553(v552, HIDWORD(v966), v1004);
            sub_22C37BB00();
            sub_22C5CA520();
            v554();

            v315 = sub_22C9070CC();
            MEMORY[0x2318B4580]();
            sub_22C5CA83C();
            sub_22C36D2E8(v555);
            sub_22C9070BC();
            sub_22C5CA410();
            sub_22C36D818(&v955);
            sub_22C38A024();
            v243 = v998;
            sub_22C90708C();
            sub_22C36BA4C(&v999);
            v556(v996, v225);
            v91 = v1041;
            sub_22C38BB88();
            v557();
            sub_22C5CA7DC();
            v558();
            v82 = v1012;
            v319 = v1018;
            if (v1018 >= v1012[2].isa)
            {
              goto LABEL_210;
            }

            sub_22C377FE0();
            sub_22C3806E8();
            v559();

            *v1013 = v82;
            v21 = v1039;
            sub_22C5CA904();
            v314 = v82;
            goto LABEL_121;
          }

          v21 = 0;
          while (2)
          {
            if (v21 >= *(v314 + 16))
            {
              __break(1u);
LABEL_197:
              __break(1u);
LABEL_198:
              __break(1u);
LABEL_199:
              __break(1u);
LABEL_200:
              __break(1u);
              goto LABEL_201;
            }

            v225 = (*(v1042 + 80) + 32) & ~*(v1042 + 80);
            v411 = *(v1042 + 72) * v21;
            sub_22C5CA5F4();
            v412();
            v82 = v337;
            sub_22C901F7C();
            if (v413)
            {
              v315 = v413;
              sub_22C37A078(&v1041);
              sub_22C5C75F4();

              sub_22C36D0A8(v337, 1, v1016);
              if (v377)
              {
                sub_22C36DD28(v337, &qword_27D9BEC20, &qword_22C9204B8);
              }

              else
              {
                v414 = v987;
                sub_22C37A168();
                v243 = v991;
                sub_22C5C8974(v337, v991);
                sub_22C36D2E8(&v1012);
                sub_22C90878C();
                v315 = sub_22C9087DC();
                v415 = sub_22C5CA450(&i);
                v416(v415, v990[0]);
                *&v1048 = v315;
                v337 = sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
                sub_22C369E24();
                sub_22C5CAA04();
                sub_22C3D32C8(v417, v418, v419);
                sub_22C5CACB0();
                sub_22C37443C(&v1013);
                sub_22C907EEC();
                v82 = v992;

                sub_22C36D3E0(&qword_22C912420);
                if (!v420)
                {
                  sub_22C36BA4C(&v996);
                  v337 = v977;
                  v425 = sub_22C3863FC();
                  v426(v425);
                  v427 = *(v1016 + 20);
                  v428 = (v243 + *(v1016 + 24));
                  v429 = v428[1];
                  v1048 = *v428;
                  v1049 = v429;
                  sub_22C5C6C44();
                  sub_22C36FD7C();
                  sub_22C5CA8DC(&v998);
                  sub_22C36D0A8(v430, v431, v432);
                  v266 = v1047;
                  if (v433)
                  {
                    v434 = sub_22C5CA450(&v995);
                    v435(v434, v82);
                    sub_22C5CAC04();
                    v436 = sub_22C3863FC();
                    v315 = v1041;
                    (v1045)(v436);
                    sub_22C36AC94();
                    sub_22C5C8874(v243, v437);
                    v438 = v414;
                    v91 = v315;
                    sub_22C36DD28(v438, &qword_27D9BEC18, &unk_22C9204A0);
                    sub_22C5CAC10();
                  }

                  else
                  {
                    sub_22C36BA4C(&v971);
                    v439 = sub_22C37BA1C();
                    v440(v439, v414, v315);
                    sub_22C9068FC();
                    swift_isUniquelyReferenced_nonNull_native();
                    sub_22C5CAC04();
                    if ((v441 & 1) == 0)
                    {
                      sub_22C887650(v314);
                      v314 = v449;
                    }

                    v82 = v992;
                    sub_22C5CAC10();
                    v91 = v1041;
                    sub_22C36BA4C(&v970);
                    v442(v971, v315);
                    sub_22C36BA4C(&v995);
                    v443(v977, v82);
                    sub_22C5CA7DC();
                    v444();
                    if (v21 >= *(v314 + 16))
                    {
                      goto LABEL_206;
                    }

                    v445 = sub_22C386408();
                    v446(v445, v970, v266);
                    sub_22C36AC94();
                    sub_22C5C8874(v991, v447);
                  }

LABEL_43:
                  if (v1040 == ++v21)
                  {
                    goto LABEL_91;
                  }

                  continue;
                }

                sub_22C36AC94();
                sub_22C5C8874(v243, v421);
                sub_22C36DD28(&qword_22C912420, &qword_27D9BD798, &unk_22C919070);
                v266 = v1047;
                sub_22C5CAC10();
                sub_22C5CAC04();
                v91 = v1041;
              }
            }

            break;
          }

          sub_22C5C5EA0();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_22C887650(v314);
            v314 = v448;
          }

          sub_22C5CA7DC();
          v422();
          if (v21 >= *(v314 + 16))
          {
            goto LABEL_197;
          }

          v423 = sub_22C386408();
          v424(v423, v243, v266);
          goto LABEL_43;
        }

        sub_22C37A078(&v989);
        sub_22C903FBC();
        v499 = sub_22C9063CC();
        sub_22C90AACC();
        v500 = sub_22C370214();
        os_log_type_enabled(v500, v501);
        sub_22C5CAA7C();
        if (v502)
        {
          sub_22C3720F4();
          v503 = swift_slowAlloc();
          sub_22C5CA670(v503);
          sub_22C5CA7D0();
          _os_log_impl(v504, v505, v506, v507, v508, v509);
          v510 = sub_22C36D66C();
          MEMORY[0x2318B9880](v510);
        }

        sub_22C36BA4C(&v1007);
        sub_22C5CAC1C();
        v511();
        v82 = v973[0];
        v315 = *v973[0];
        v225 = v1004;
        (*v973[0])(v996, v1004);
        sub_22C37EFC0();
        sub_22C38BB88();
        v512();
        v513 = sub_22C380550();
        (v1045)(v513);
        (v315)(v982, v225);
      }

LABEL_120:
      sub_22C5CA904();
      goto LABEL_121;
    }

    sub_22C369908(&v1011 + 4);
    if (v377)
    {
      v378 = sub_22C5CA3BC();
      v380(v378, *(v379 - 256));
      sub_22C36BA4C(&v976);
      v243 = v957;
      v381 = sub_22C371530();
      v382(v381);
      sub_22C36D2E8(&v1001);
      MEMORY[0x2318B4220]();
      sub_22C37BA44(&v979);
      sub_22C377B94();
      sub_22C5C5EA0();
      sub_22C386758(&v980);
      sub_22C906D6C();
      sub_22C370208(&v981);
      sub_22C5C5EA0();
      v383 = v266;
      v384 = v266;
      v385 = v1043;
      (v1043)(v953[2], v1029, v383);
      v386 = sub_22C37170C();
      (v385)(v386);
      v387 = sub_22C37FE04(&v983);
      (v385)(v387, v91, v384);
      sub_22C3759C4(&v985);
      sub_22C36BBCC();
      sub_22C906D5C();
      sub_22C36FD6C();
      sub_22C5CA520();
      v388();
      v315 = sub_22C9070CC();
      MEMORY[0x2318B4580]();
      sub_22C5CA83C();
      sub_22C36D2E8(v389);
      sub_22C9070BC();
      sub_22C5CA410();
      sub_22C36D818(&v984);
      v314 = v1012;
      v319 = v1018;
      sub_22C90708C();
      v390 = v91;
      v91 = v1041;
      v82 = v1045;
      v1045(v390, v1047);
      (v82)(v21, v1047);
      (v82)(v225, v1047);
      (v82)(v974, v1047);
      v391 = sub_22C37025C(&v975);
      v392(v391, v975);
      v266 = v1047;
      sub_22C3735C4();
      v393();
      v394 = sub_22C380550();
      (v82)(v394);
      sub_22C5CA898();
      if (v328)
      {
        goto LABEL_205;
      }

      goto LABEL_24;
    }

    sub_22C369908(&v977 + 4);
    if (v450)
    {
      v451 = sub_22C5CA3BC();
      v453(v451, *(v452 - 256));
      sub_22C36BA4C(v953);
      v454 = sub_22C5CAC54();
      v455(v454, v315, v956);
      sub_22C37443C(&v966);
      sub_22C906ABC();
      sub_22C90768C();
      v456 = *v925;
      v457 = v927;
      (*v925)(v266, v927);
      v458 = sub_22C36D39C();
      sub_22C5C18D8(v458, v459, v1026, v460, v461, v462, v463, v464, v843, *(&v843 + 1), v846, v848, v850, v852, v854, v856, v858, v860, v862, v863);
      v21 = v465;
      v314 = v466;

      if (!v314)
      {
        sub_22C906ABC();
        v21 = sub_22C90768C();
        v314 = v467;
        v456(v266, v457);
      }

      v468 = sub_22C906A8C();
      sub_22C370208(v958);
      v469 = v1023;
      sub_22C9068FC();
      sub_22C9070CC();
      sub_22C5CA510();
      v225 = v471 | v470;
      v472 = v1050;
      LOBYTE(v841) = sub_22C90704C();
      v840 = v941;
      v839 = v1010;
      sub_22C37BA44(&v960);
      v243 = v469;
      v82 = v963;
      sub_22C5C3118(v21, v314, v468, v457, v473, v952, v472, v1026, v839, v840, v841, v842, v844, v845, v847, v849, v851, v853, v855, v857, v859, v861);

      v474 = v457;
      v266 = v1047;
      v91 = v1041;
      v315 = v1045;
      v1045(v474, v1047);
      sub_22C36BA4C(&v952);
      v475(v319, v956);
      sub_22C3735C4();
      v476();
      v477 = sub_22C380550();
      (v315)(v477);
      sub_22C374D00();
      if (v328)
      {
        goto LABEL_209;
      }

      v395 = sub_22C377FE0();
      v397 = v225;
      goto LABEL_58;
    }

    sub_22C369908(&v969 + 4);
    if (v514)
    {
      v515 = sub_22C5CA3BC();
      v517(v515, *(v516 - 256));
      sub_22C36BA4C(v943);
      v518 = sub_22C382D34();
      v520 = v519(v518);
      v314 = MEMORY[0x2318B3EC0](v520);
      sub_22C36D818(&v950);
      v82 = v1026;
      sub_22C90878C();
      sub_22C36BA4C(&v942);
      v521(v1025, v315, v990[0]);
      v522 = 0;
      v1019 = *(v314 + 16);
      v965 = MEMORY[0x277D84F90];
      v523 = v1022;
      i = v314;
      while (v522 != v1019)
      {
        sub_22C5CA898();
        if (v328)
        {
          goto LABEL_198;
        }

        v524 = v1043;
        v525 = (*(v1042 + 80) + 32) & ~*(v1042 + 80);
        v526 = v314 + v525;
        v314 = *(v1042 + 72);
        v527 = v1038;
        (v1043)(v1038, v526 + v314 * v522, v266);
        v1036 = v522 + 1;
        v528 = sub_22C9087DC();
        (v524)(v1046, v527, v266);
        v243 = *(v528 + 16);
        v1040 = v528;
        if (v243)
        {
LABEL_73:
          v266 = v243 - 1;
          sub_22C37054C();
          v21 = v528 + v529 + *(v530 + 72) * (v243 - 1);
          v531 = v1034;
          sub_22C9089EC();
          v91 = sub_22C9089AC();
          (*v1033)(v531, v1035);
          v532 = v525;
          v315 = v91 + v525;
          v533 = *(v91 + 16) + 1;
          do
          {
            if (!--v533)
            {

              --v243;
              v21 = v1039;
              v528 = v1040;
              v266 = v1047;
              v525 = v532;
              if (v243)
              {
                goto LABEL_73;
              }

              goto LABEL_78;
            }

            v225 = v315 + v314;
            sub_22C5CA3DC();
            sub_22C5C87F4(&qword_27D9BAA28, v534);
            v315 += v314;
          }

          while ((sub_22C90A0BC() & 1) == 0);

          v82 = v1040;
          if (v243 <= v1040[2].isa)
          {
            sub_22C36BA4C(&a18);
            v315 = v1014;
            v537 = sub_22C36FC08();
            v243 = v1032;
            v538(v537);
            sub_22C36BECC();
            sub_22C36C640(v539, v540, v541, v243);

            v21 = v1039;
            v266 = v1047;
            goto LABEL_81;
          }

          goto LABEL_199;
        }

LABEL_78:
        v315 = v1014;
        v535 = sub_22C36CCF8();
        v243 = v1032;
        sub_22C36C640(v535, v536, 1, v1032);

LABEL_81:
        v225 = v1045;
        v82 = v1041;
        v1045(v1046, v266);
        (v225)(v1038, v266);
        v542 = sub_22C36CCF8();
        sub_22C36D0A8(v542, v543, v243);
        v314 = i;
        v522 = v1036;
        if (v377)
        {
          sub_22C36DD28(v315, &qword_27D9BA808, &qword_22C90C6E0);
        }

        else
        {
          v82 = *v924[0];
          sub_22C38B1DC(&v946);
          sub_22C3806E8();
          (v82)();
          (v82)(v928, v225, v243);
          sub_22C5CABAC();
          v544 = swift_isUniquelyReferenced_nonNull_native();
          if (v544)
          {
            v545 = v965;
          }

          else
          {
            v550 = v965[2];
            sub_22C36D270();
            sub_22C590488();
          }

          v225 = v545[2];
          v546 = v545[3];
          v315 = v225 + 1;
          if (v225 >= v546 >> 1)
          {
            sub_22C369AB0(v546);
            sub_22C590488();
          }

          v545[2] = v315;
          sub_22C37054C();
          v965 = v547;
          (v82)(v547 + v548 + *(v549 + 72) * v225, v928, v243);
        }

        v523 = v1022;
      }

      sub_22C36BA4C(&i);
      v577(v1025, v990[0]);

      v578 = sub_22C5CABAC();
      v314 = *(v578 + 16);
      if (v314)
      {
        v579 = v21;
        v580 = v578;
        *&v1048 = MEMORY[0x277D84F90];
        sub_22C3B7488(0, v314, 0);
        v581 = v1048;
        sub_22C37054C();
        v583 = v580 + v582;
        v225 = *(v584 + 72);
        v243 = *(v584 + 16);
        do
        {
          v585 = sub_22C37022C(&v1031);
          (v243)(v585, v583, v1032);
          sub_22C9087FC();
          sub_22C36BA4C(&v1030);
          v586 = sub_22C36BBCC();
          v587(v586);
          *&v1048 = v581;
          v589 = *(v581 + 16);
          v588 = *(v581 + 24);
          v315 = v589 + 1;
          if (v589 >= v588 >> 1)
          {
            v595 = sub_22C37E190(v588);
            sub_22C3B7488(v595, v596, v597);
            v581 = v1048;
          }

          *(v581 + 16) = v315;
          sub_22C37054C();
          v592 = v581 + v590 + *(v591 + 72) * v589;
          v593 = *(v591 + 32);
          sub_22C5CA800();
          v594();
          v583 += v225;
          --v314;
        }

        while (v314);
        sub_22C5CABAC();

        v266 = v1047;
        v523 = v1022;
        v21 = v579;
      }

      else
      {
      }

      sub_22C5C15DC();
      v91 = v618;

      v319 = *(v91 + 16);
      if (v319)
      {
        *&v1048 = MEMORY[0x277D84F90];
        sub_22C5CAD9C();
        v82 = v1048;
        sub_22C37054C();
        v314 = v91 + v619;
        v225 = *(v620 + 72);
        do
        {
          sub_22C3831E0();
          sub_22C5CAC28(&v1033);
          sub_22C5CA0B8(v621, v622);
          v623 = *(v315 + *(v1003[1] + 20));
          sub_22C5CAB1C();
          sub_22C3872A0();
          sub_22C5C8874(v315, v624);
          *&v1048 = v82;
          v243 = *(v82 + 16);
          v625 = *(v82 + 24);
          v315 = v243 + 1;
          if (v243 >= v625 >> 1)
          {
            sub_22C37E190(v625);
            sub_22C3B6EDC();
            v82 = v1048;
          }

          *(v82 + 16) = v315;
          sub_22C37054C();
          (*(v627 + 32))(v82 + v626 + *(v627 + 72) * v243, v523, v266);
          v314 += v225;
          --v319;
        }

        while (v319);
      }

      else
      {

        v82 = MEMORY[0x277D84F90];
      }

      sub_22C383834(&v947);
      sub_22C5CA4F8();
      v628();
      sub_22C37205C(&v949);
      sub_22C9069DC();
      sub_22C37BB00();
      sub_22C5CA520();
      v629();
      v315 = sub_22C5CA8A4();
      MEMORY[0x2318B4580]();
      sub_22C5CA83C();
      sub_22C37BA44(v630);
      sub_22C9070BC();
      sub_22C5CA410();
      sub_22C383824(&v948);
      sub_22C90708C();
      sub_22C36BA4C(&v940);
      v631(v931[1], v932);
      sub_22C3735C4();
      v632();
      sub_22C386A40();
      v633();
      sub_22C374D00();
      if (v328)
      {
        goto LABEL_212;
      }

      goto LABEL_118;
    }

    sub_22C369908(&v945 + 4);
    v315 = v923;
    if (v560)
    {
      break;
    }

    sub_22C369908(&v938 + 4);
    v315 = v918;
    if (v598)
    {
      sub_22C37F35C();
      v599 = sub_22C37BA1C();
      v243 = v1027;
      v600(v599, v1027);
      sub_22C36BA4C(&v889);
      v601 = sub_22C5CA560();
      v602(v601);
      sub_22C374490(&v1038);
      MEMORY[0x2318B47A0]();
      v82 = v314;
      sub_22C901F7C();
      sub_22C386130();
      v603 = sub_22C36FC2C();
      v225 = v1045;
      (v1045)(v603);
      v604 = sub_22C36BA00();
      sub_22C5C13AC(v604, v605, v952);
      sub_22C3869F0();

      if ((v315 & 0x100000000) != 0)
      {
        v634 = sub_22C5CA450(v890);
        v636 = &v944;
        goto LABEL_130;
      }

      v606 = sub_22C3759F4(&v926);
      (v1043)(v606);
      sub_22C5CAB1C();
      v319 = v225;
      sub_22C37BA44(&v930);
      MEMORY[0x2318B47B0](v314);
      sub_22C36FD6C();
      v607(v225, v911, v243);
      sub_22C5CA8C0();
      sub_22C5CA510();
      v82 = v609 | v608;
      MEMORY[0x2318B4580]();
      sub_22C5CA830();
      sub_22C37443C(v610);
      sub_22C9070BC();
      sub_22C5CA3F4();
      sub_22C383824(&v928);
      sub_22C5CADBC();
      v611 = sub_22C5CA450(v890);
      v612(v611, v918);
      sub_22C3735C4();
      v613();
      v614 = sub_22C380550();
      (v225)(v614);
      sub_22C3827A0();
      if (*(v615 - 256) >= v616)
      {
        goto LABEL_216;
      }

      goto LABEL_108;
    }

    sub_22C369908(&v911);
    if (v637)
    {
      v638 = sub_22C5CA3BC();
      v243 = *(v639 - 256);
      v640(v638, v243);
      sub_22C36BA4C(&v887);
      v641 = v904;
      v642 = sub_22C379ED8();
      v319 = v905;
      v643(v642);
      v644 = sub_22C90724C();
      sub_22C5C5BB0(v644, v645, v964);

      (v1043)(v899[2], v1029, v1047);
      v315 = sub_22C90721C();
      sub_22C90725C();
      MEMORY[0x2318B4710]();
      sub_22C37BA44(v931);
      sub_22C36ECB4();
      v91 = v1041;
      sub_22C90722C();
      sub_22C36FD6C();
      v646(v225, v884, v243);
      sub_22C5CA8C0();
      sub_22C5CA510();
      v82 = v648 | v647;
      MEMORY[0x2318B4580]();
      sub_22C5CA830();
      sub_22C36D2E8(v649);
      sub_22C9070BC();
      sub_22C5CA3F4();
      sub_22C36D818(&v929);
      v314 = v1012;
      sub_22C90708C();
      sub_22C36BA4C(&v886);
      v650 = v641;
      v266 = v1047;
      v651(v650, v319);
      sub_22C3735C4();
      v652();
      v653 = sub_22C372158();
      (v1045)(v653);
      if (v1018 >= *(v314 + 16))
      {
        goto LABEL_215;
      }

      sub_22C377FE0();
      sub_22C3806E8();
      v654();
      sub_22C5CA540();
      v21 = v1039;
      goto LABEL_128;
    }

    sub_22C369908(&v888);
    if (v657)
    {
      v659 = sub_22C5CA3BC();
      v661(v659, *(v660 - 256));
      sub_22C36BA4C(&v885);
      v662 = sub_22C382D34();
      v664 = v663(v662);
      v665 = MEMORY[0x2318B57A0](v664);
      v314 = 0;
      v667 = v665 + 64;
      v666 = *(v665 + 64);
      v965 = v665;
      v668 = 1 << *(v665 + 32);
      if (v668 < 64)
      {
        v669 = ~(-1 << v668);
      }

      else
      {
        v669 = -1;
      }

      v670 = v669 & v666;
      v671 = (v668 + 63) >> 6;
      v82 = MEMORY[0x277D84F98];
      v225 = &unk_22C911F70;
      v1019 = v665 + 64;
      for (i = v671; ; v671 = i)
      {
        v1040 = v82;
        if (!v670)
        {
          v315 = v942;
          while (1)
          {
            v672 = v314 + 1;
            if (__OFADD__(v314, 1))
            {
              goto LABEL_204;
            }

            if (v672 >= v671)
            {
              v713 = sub_22C37170C();
              sub_22C3A5908(v713, v714);
              v715 = sub_22C36CCF8();
              sub_22C36C640(v715, v716, 1, v717);
              v670 = 0;
              goto LABEL_144;
            }

            v670 = *(v667 + 8 * v672);
            ++v314;
            if (v670)
            {
              v314 = v672;
              break;
            }
          }
        }

        sub_22C5CACBC();
        v675 = v674 | (v673 << 6);
        v676 = (v965[6] + 16 * v675);
        v677 = *v676;
        v678 = v676[1];
        v679 = v1042;
        v680 = v965[7] + *(v1042 + 72) * v675;
        sub_22C383834(&v1038);
        sub_22C5CA5F4();
        v681();
        v682 = sub_22C3A5908(&qword_27D9BAA30, &unk_22C911F70);
        v683 = *(v682 + 48);
        v684 = v942;
        *v942 = v677;
        *(v684 + 1) = v678;
        (*(v679 + 32))(&v684[v683], v91, v266);
        sub_22C36BECC();
        sub_22C36C640(v685, v686, v687, v682);

        v21 = v1039;
LABEL_144:
        v688 = sub_22C36FC08();
        sub_22C4E7208(v688, v689, &qword_27D9BAA00, &qword_22C911F60);
        v690 = sub_22C37170C();
        v692 = sub_22C3A5908(v690, v691);
        v693 = sub_22C5CA7F4();
        sub_22C36D0A8(v693, v694, v692);
        if (v377)
        {
          break;
        }

        v695 = *v21;
        v696 = *(v21 + 8);
        v697 = v21 + *(v692 + 48);
        v1036 = *v1008;
        (v1036)(v946, v697, v266);
        sub_22C36D818(v973);
        sub_22C5C5EA0();
        sub_22C5CA5F4();
        v698();
        v82 = v1040;
        v315 = swift_isUniquelyReferenced_nonNull_native();
        *&v1048 = v82;
        v243 = v695;
        v699 = v695;
        v225 = v696;
        v700 = sub_22C36E2BC(v699, v696);
        if (__OFADD__(*(v82 + 16), (v701 & 1) == 0))
        {
          goto LABEL_211;
        }

        v21 = v700;
        v91 = v701;
        sub_22C3A5908(&qword_27D9BEC30, &qword_22C9226B0);
        if (sub_22C90B15C())
        {
          v702 = sub_22C36E2BC(v243, v696);
          if ((v91 & 1) != (v703 & 1))
          {
            goto LABEL_222;
          }

          v21 = v702;
        }

        if (v91)
        {

          v82 = v1048;
          (*(v1042 + 40))(*(v1048 + 56) + *(v1042 + 72) * v21, v948, v266);
          v704 = sub_22C38B1D0(v973);
          v705 = v1045;
          (v1045)(v704);
          v706 = sub_22C38B1D0(&v972);
          v705(v706);
        }

        else
        {
          v82 = v1048;
          sub_22C36ED48(v1048 + 8 * (v21 >> 6));
          v707 = (*(v82 + 48) + 16 * v21);
          *v707 = v243;
          v707[1] = v696;
          (v1036)(*(v82 + 56) + *(v1042 + 72) * v21, v948, v266);
          v708 = sub_22C38B1D0(v973);
          v315 = v1041;
          v225 = v1045;
          (v1045)(v708);
          v709 = sub_22C38B1D0(&v972);
          (v225)(v709);
          v710 = *(v82 + 16);
          v711 = __OFADD__(v710, 1);
          v712 = (v710 + 1);
          if (v711)
          {
            goto LABEL_213;
          }

          *(v82 + 16) = v712;
        }

        v21 = v1039;
        v225 = &unk_22C911F70;
        v667 = v1019;
      }

      sub_22C5CABAC();

      v243 = v866;
      v730 = *v866;
      v314 = v898;
      v225 = v899[0];
      (*v866)(v896, v898, v899[0]);
      sub_22C9082DC();
      sub_22C383834(&v921);
      v319 = v1029;
      sub_22C5CA5F4();
      v731();
      v732 = sub_22C5CA738();
      v730(v732);
      sub_22C36FD6C();
      sub_22C5CA520();
      v733();
      sub_22C5CA8C0();
      sub_22C5CA510();
      v82 = v735 | v734;
      MEMORY[0x2318B4580]();
      sub_22C5CA830();
      sub_22C37443C(v736);
      sub_22C9070BC();
      sub_22C5CA3F4();
      sub_22C37A078(&v922);
      v266 = v1047;
      sub_22C90708C();
      v91 = v865;
      v315 = *v865;
      v737 = sub_22C370018();
      (v315)(v737);
      (v315)(v314, v225);
      sub_22C3735C4();
      v738();
      sub_22C386A40();
      v739();
      sub_22C374D00();
      if (v328)
      {
        goto LABEL_217;
      }

      v395 = sub_22C377FE0();
      v397 = v82;
      goto LABEL_58;
    }

    v319 = v867;
    v243 = v1007;
    if (v658 != v867)
    {
      sub_22C369908(v883);
      if (v377)
      {
        v741 = sub_22C5CA3BC();
        v743(v741, *(v742 - 256));
        sub_22C36BA4C(&v880);
        v744 = sub_22C382D34();
        v745(v744);
        sub_22C36D818(&v912);
        sub_22C906CBC();
        v746 = sub_22C36CCF8();
        sub_22C36D0A8(v746, v747, v266);
        if (v377)
        {
          sub_22C36DD28(v315, &qword_27D9BC030, &unk_22C911CC0);
          v82 = 0;
          v315 = 0;
          sub_22C5CAA7C();
          v91 = v1041;
        }

        else
        {
          v225 = v315;
          v82 = sub_22C901F7C();
          v315 = v761;
          sub_22C386A40();
          v762();
          sub_22C5CAA7C();
        }

        v763 = sub_22C36BBCC();
        sub_22C5C13AC(v763, v764, v952);
        sub_22C37BB14();

        if ((v82 & 0x100000000) == 0)
        {
          sub_22C383834(&v901);
          sub_22C5CA4F8();
          v765();
          sub_22C36D818(&v909);
          sub_22C5CAB1C();
          sub_22C36BECC();
          sub_22C36C640(v766, v767, v768, v266);
          sub_22C37205C(&v907);
          MEMORY[0x2318B41A0](v315);
          sub_22C37BB00();
          sub_22C5CA520();
          v769();
          sub_22C5CA8A4();
          sub_22C5CA510();
          v82 = v771 | v770;
          MEMORY[0x2318B4580]();
          sub_22C5CA830();
          sub_22C37BA44(v772);
          sub_22C9070BC();
          sub_22C5CA3F4();
          sub_22C383824(&v905);
          v91 = v1041;
          sub_22C90708C();
          sub_22C36BA4C(&v879);
          v773 = sub_22C5CAC88();
          v774(v773);
          sub_22C3735C4();
          v775();
          sub_22C385DC0();
          sub_22C5CA7DC();
          v776();
          sub_22C5CA898();
          if (v328)
          {
            goto LABEL_220;
          }

          goto LABEL_118;
        }

        sub_22C36BA4C(&v879);
        v790 = sub_22C5CAC88();
        v791(v790);
        sub_22C37EFC0();
        sub_22C3735C4();
        v792();
        v793 = sub_22C380550();
        (v1045)(v793);
      }

      else
      {
        v319 = HIDWORD(v863);
        if (v740 == HIDWORD(v863))
        {
          sub_22C37F35C();
          sub_22C37BA1C();
          sub_22C5CA6C4();
          v748();
          sub_22C36BA4C(&v878);
          v749 = sub_22C5CA560();
          v750(v749);
          sub_22C386758(&v902);
          MEMORY[0x2318B46A0]();
          sub_22C374490(&v903);
          sub_22C5C5EA0();
          v751 = sub_22C3759F4(&v904);
          v225 = v1043;
          (v1043)(v751);
          sub_22C5CA714();
          (v225)();
          sub_22C37205C(&v908);
          MEMORY[0x2318B46B0]();
          v752 = sub_22C37BB00();
          v753(v752, HIDWORD(v863), v315);
          sub_22C5CAAAC();
          sub_22C5CA510();
          MEMORY[0x2318B4580]();
          sub_22C5CA830();
          sub_22C37443C(v754);
          sub_22C9070BC();
          sub_22C5CA3F4();
          sub_22C383824(&v906);
          sub_22C5CAAE4();
          sub_22C385DC0();
          v91 = v1041;
          v82 = v1045;
          (v1045)();
          v755 = sub_22C372158();
          (v82)(v755);
          v756 = sub_22C5CA450(&v877);
          v757(v756, v886);
          sub_22C3735C4();
          v758();
          v759 = sub_22C380550();
          (v82)(v759);
          sub_22C5CA42C();
          if (v328)
          {
            goto LABEL_219;
          }

          goto LABEL_24;
        }

        v319 = HIDWORD(v858);
        if (v740 == HIDWORD(v858))
        {
          sub_22C37F35C();
          sub_22C37BA1C();
          sub_22C5CA6C4();
          v777();
          sub_22C36BA4C(&v875);
          v778 = sub_22C5CA560();
          v779(v778);
          sub_22C386758(&v895);
          MEMORY[0x2318B4410]();
          sub_22C374490(&v896);
          sub_22C5C5EA0();
          v780 = sub_22C3759F4(&v897);
          v225 = v1043;
          (v1043)(v780);
          sub_22C5CA714();
          (v225)();
          sub_22C37205C(v899);
          MEMORY[0x2318B4420]();
          v781 = sub_22C37BB00();
          v782(v781, HIDWORD(v858), v315);
          sub_22C5CAAAC();
          sub_22C5CA510();
          MEMORY[0x2318B4580]();
          sub_22C5CA830();
          sub_22C37443C(v783);
          sub_22C9070BC();
          sub_22C5CA3F4();
          sub_22C383824(&v898);
          sub_22C5CAAE4();
          v784 = sub_22C36FC2C();
          v91 = v1041;
          v82 = v1045;
          (v1045)(v784);
          v785 = sub_22C372158();
          (v82)(v785);
          v786 = sub_22C5CA450(&v874);
          v787(v786, *&v883[12]);
          sub_22C3735C4();
          v788();
          v789 = sub_22C380550();
          (v82)(v789);
          sub_22C374D00();
          if (v328)
          {
            goto LABEL_221;
          }

          goto LABEL_24;
        }

        sub_22C369908(&v876);
        if (!v377)
        {
          sub_22C37205C(&v894);
          sub_22C903FBC();
          v808 = sub_22C37FE04(&v892);
          v319 = v998;
          (v225)(v808, v1023, v998);
          v82 = sub_22C9063CC();
          v809 = sub_22C90AACC();
          v810 = sub_22C370214();
          if (os_log_type_enabled(v810, v811))
          {
            sub_22C36BED8();
            v314 = swift_slowAlloc();
            sub_22C370220();
            v1043 = swift_slowAlloc();
            *&v1048 = v1043;
            *v314 = v843;
            v813 = sub_22C377B94();
            (v225)(v813);
            sub_22C36D7F0();
            sub_22C90A1AC();
            v814 = sub_22C5CAA64();
            v225 = *(v815 - 256);
            (v225)(v814);
            v816 = sub_22C36ECB4();
            v819 = sub_22C36F9F4(v816, v817, v818);

            *(v314 + 4) = v819;
            _os_log_impl(&dword_22C366000, v82, v809, "No event ids or capture group names need to be replaced for %s", v314, 0xCu);
            sub_22C36FF94(v1043);
            v820 = sub_22C36D66C();
            MEMORY[0x2318B9880](v820);
            v821 = sub_22C3816C4();
            MEMORY[0x2318B9880](v821);

            sub_22C37025C(&v1007);
            sub_22C5CAC1C();
            v822();
            v823 = sub_22C37EFC0();
            (v225)(v823, v319);
          }

          else
          {

            v824 = sub_22C5CAA64();
            v82 = *(v825 - 256);
            (v82)(v824);
            sub_22C37025C(&v1007);
            sub_22C5CAC1C();
            v826();
            v827 = sub_22C36D7F0();
            (v82)(v827);
          }

          v828 = sub_22C380550();
          v91 = v1041;
          (v1045)(v828);
          v243 = v319;
          sub_22C385DC0();
          sub_22C36BA4C(&v873);
          v829(v1009, v1027);
          sub_22C5CA904();
          sub_22C5CAA7C();
          goto LABEL_59;
        }

        v794 = sub_22C5CA3BC();
        v796(v794, *(v795 - 256));
        sub_22C36BA4C(&v872);
        v797 = sub_22C382D34();
        v799 = v798(v797);
        v315 = MEMORY[0x2318B47E0](v799);
        v800 = *(v315 + 16);
        if (v800)
        {
          *&v1048 = MEMORY[0x277D84F90];

          sub_22C5CAD9C();
          v801 = v1048;
          sub_22C37054C();
          v1040 = v315;
          v803 = v315 + v802;
          v314 = v1050;
          v243 = *(v804 + 72);
          v225 = v869;
          do
          {

            sub_22C37FE24();
            sub_22C5C5EA0();

            *&v1048 = v801;
            v806 = *(v801 + 16);
            v805 = *(v801 + 24);
            v315 = v806 + 1;
            if (v806 >= v805 >> 1)
            {
              sub_22C37E190(v805);
              sub_22C3B6EDC();
              v801 = v1048;
            }

            *(v801 + 16) = v315;
            sub_22C36BA4C(&v1039);
            v807();
            v803 += v243;
            --v800;
          }

          while (v800);
        }

        else
        {
        }

        v319 = v870;
        v91 = v1029;
        sub_22C5CA5F4();
        v830();
        sub_22C37205C(&v893);
        sub_22C9069DC();
        sub_22C37BB00();
        sub_22C5CA520();
        v831();
        sub_22C5CA8A4();
        sub_22C5CA510();
        v82 = v833 | v832;
        MEMORY[0x2318B4580]();
        sub_22C5CA830();
        sub_22C37BA44(v834);
        sub_22C9070BC();
        sub_22C5CA3F4();
        sub_22C36D818(&v891);
        sub_22C37F8AC();
        sub_22C90708C();
        sub_22C36BA4C(&v871);
        v835(v874, v875);
        sub_22C3735C4();
        v836();
        sub_22C386A40();
        v837();
        sub_22C374D00();
        v21 = v1039;
        if (v328)
        {
          __break(1u);
          goto LABEL_195;
        }

LABEL_118:
        v496 = sub_22C377FE0();
        v498 = v315;
LABEL_119:
        v497(v496, v498, v243);
        sub_22C5CA540();
      }

      goto LABEL_120;
    }

    sub_22C37F35C();
    sub_22C37BA1C();
    sub_22C5CA6C4();
    v718();
    sub_22C36BA4C(&v882);
    v719 = sub_22C5CA560();
    v720(v719);
    sub_22C386758(&v914);
    MEMORY[0x2318B4800]();
    sub_22C374490(&v915);
    sub_22C5C5EA0();
    v721 = sub_22C3759F4(&v916);
    v225 = v1043;
    (v1043)(v721);
    sub_22C5CA714();
    (v225)();
    sub_22C37205C(&v918);
    MEMORY[0x2318B4810]();
    v722 = sub_22C37BB00();
    v723(v722, v867, v315);
    v315 = sub_22C5CAAAC();
    MEMORY[0x2318B4580]();
    sub_22C5CA83C();
    sub_22C37443C(v724);
    sub_22C9070BC();
    sub_22C5CA410();
    sub_22C383824(&v917);
    sub_22C5CAAE4();
    sub_22C385DC0();
    v91 = v1041;
    v82 = v1045;
    (v1045)();
    v725 = sub_22C372158();
    (v82)(v725);
    v726 = sub_22C5CA450(&v881);
    v727(v726, v897);
    sub_22C3735C4();
    v728();
    v729 = sub_22C380550();
    (v82)(v729);
    sub_22C5CA42C();
    if (v328)
    {
      goto LABEL_218;
    }

LABEL_24:
    v395 = sub_22C377FE0();
    v397 = v315;
LABEL_58:
    v396(v395, v397, v243);
    sub_22C5CA540();
    sub_22C5CA904();
LABEL_59:
    v21 = v1039;
LABEL_121:
    if (++v319 == v315)
    {
      goto LABEL_195;
    }
  }

  sub_22C37F35C();
  v561 = sub_22C37BA1C();
  v243 = v1027;
  v562(v561, v1027);
  sub_22C36BA4C(&v934);
  v563 = sub_22C5CA560();
  v564(v563);
  sub_22C374490(&v1038);
  MEMORY[0x2318B3FE0]();
  v82 = v314;
  sub_22C901F7C();
  sub_22C386130();
  v565 = sub_22C36FC2C();
  v225 = v1045;
  (v1045)(v565);
  v566 = sub_22C36BA00();
  sub_22C5C13AC(v566, v567, v952);
  sub_22C3869F0();

  if ((v315 & 0x100000000) != 0)
  {
    v634 = sub_22C5CA450(&v933);
    v636 = v951;
LABEL_130:
    v635(v634, *(v636 - 32));
    sub_22C37EFC0();
    sub_22C3735C4();
    v655();
    v656 = sub_22C380550();
    (v225)(v656);
    sub_22C5CA904();
    sub_22C385DC0();
    goto LABEL_121;
  }

  v568 = sub_22C3759F4(&v935);
  (v1043)(v568);
  sub_22C5CAB1C();
  v82 = v337;
  sub_22C906B2C();
  v319 = v225;
  sub_22C37BA44(&v937);
  sub_22C906B1C();
  sub_22C36FD6C();
  v569(v225, v919, v243);
  v315 = sub_22C5CA8C0();
  MEMORY[0x2318B4580]();
  sub_22C5CA83C();
  sub_22C37443C(v570);
  sub_22C9070BC();
  sub_22C5CA410();
  sub_22C383824(&v936);
  sub_22C5CADBC();
  v571 = sub_22C5CA450(&v933);
  v572(v571, v923);
  sub_22C3735C4();
  v573();
  v574 = sub_22C380550();
  (v225)(v574);
  sub_22C3827A0();
  if (*(v575 - 256) < v576)
  {
LABEL_108:
    sub_22C377FE0();
    sub_22C3806E8();
    v617();
    sub_22C5CA540();
LABEL_128:
    sub_22C5CA904();
    sub_22C5CAA7C();
    goto LABEL_121;
  }

  __break(1u);
LABEL_215:
  __break(1u);
LABEL_216:
  __break(1u);
LABEL_217:
  __break(1u);
LABEL_218:
  __break(1u);
LABEL_219:
  __break(1u);
LABEL_220:
  __break(1u);
LABEL_221:
  __break(1u);
LABEL_222:
  sub_22C90B54C();
  __break(1u);
}

unint64_t sub_22C5C13AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C3A5908(&qword_27D9BEC28, &unk_22C9204C0);
  sub_22C369914(v6);
  v8 = *(v7 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - v10;
  v12 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  sub_22C369914(v12);
  v14 = *(v13 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v15);
  sub_22C36EC5C();
  v16 = sub_22C90069C();
  v17 = sub_22C369824(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22C369838();
  if (!a2)
  {
    goto LABEL_9;
  }

  sub_22C5CA640();
  sub_22C90064C();
  sub_22C36D0A8(v3, 1, v16);
  if (v37)
  {
    v22 = &qword_27D9BB190;
    v23 = qword_22C90DD90;
    v24 = v3;
LABEL_8:
    sub_22C36DD28(v24, v22, v23);
    a2 = 0;
LABEL_9:
    v40 = 1;
    return a2 | (v40 << 32);
  }

  v25 = *(v19 + 32);
  v26 = sub_22C36CA88();
  v27(v26);
  sub_22C90065C();
  v29 = v28;
  v30 = sub_22C90A1DC();
  v32 = v31;

  sub_22C605A84(v30, v32, a3);

  v33 = *(v19 + 8);
  v34 = sub_22C36D384();
  v35(v34);
  type metadata accessor for PlanOverridesService.EventReference(0);
  v36 = sub_22C37BB14();
  sub_22C36D3E0(v36);
  if (v37)
  {
    v22 = &qword_27D9BEC28;
    v23 = &unk_22C9204C0;
    v24 = v11;
    goto LABEL_8;
  }

  a2 = *&v11[*(v29 + 20)];
  sub_22C3872A0();
  sub_22C5C8874(v11, v39);
  v40 = 0;
  return a2 | (v40 << 32);
}

void sub_22C5C15DC()
{
  sub_22C36BA7C();
  v54 = v1;
  v3 = v2;
  v4 = sub_22C3A5908(&qword_27D9BEC28, &unk_22C9204C0);
  sub_22C369914(v4);
  v6 = *(v5 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  v8 = sub_22C37B6BC();
  v53 = type metadata accessor for PlanOverridesService.EventReference(v8);
  v9 = sub_22C369824(v53);
  v48 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22C3698A8();
  v52 = v13;
  sub_22C36BA0C();
  v14 = sub_22C90069C();
  v15 = sub_22C369824(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22C369838();
  v21 = v20 - v19;
  v22 = *(v3 + 16);
  if (v22)
  {
    v23 = *(v18 + 16);
    v24 = *(v18 + 80);
    sub_22C36BA94();
    v26 = v3 + v25;
    v50 = *(v27 + 56);
    v51 = v28;
    v49 = (v27 - 8);
    v29 = MEMORY[0x277D84F90];
    do
    {
      v30 = sub_22C3726C4();
      v51(v30);
      sub_22C90065C();
      sub_22C90A1DC();

      if (*(v54 + 16) && (v31 = sub_22C371510(), sub_22C36E2BC(v31, v32), (v33 & 1) != 0))
      {
        v34 = *(v54 + 56);
        v35 = *(v48 + 72);
        sub_22C3831E0();
        sub_22C5CA0B8(v36, v0);
        v37 = 0;
      }

      else
      {
        v37 = 1;
      }

      sub_22C36C640(v0, v37, 1, v53);

      (*v49)(v21, v14);
      sub_22C36D3E0(v0);
      if (v38)
      {
        sub_22C36DD28(v0, &qword_27D9BEC28, &unk_22C9204C0);
      }

      else
      {
        sub_22C386250();
        sub_22C5C8974(v0, v52);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v45 = *(v29 + 16);
          sub_22C36D270();
          sub_22C593A1C();
          v29 = v46;
        }

        v41 = *(v29 + 16);
        v40 = *(v29 + 24);
        if (v41 >= v40 >> 1)
        {
          sub_22C369AB0(v40);
          sub_22C593A1C();
          v29 = v47;
        }

        *(v29 + 16) = v41 + 1;
        sub_22C37054C();
        v43 = *(v42 + 72);
        sub_22C386250();
        sub_22C5C8974(v52, v44);
      }

      v26 += v50;
      --v22;
    }

    while (v22);
  }

  sub_22C36CC48();
}

void sub_22C5C18D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v27;
  a20 = v28;
  v157 = v29;
  v169 = v30;
  v172 = v31;
  v166 = sub_22C908EAC();
  v32 = sub_22C369824(v166);
  v158 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v36);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v37);
  sub_22C36BA64();
  sub_22C3698F8(v38);
  v39 = sub_22C90926C();
  v40 = sub_22C36A7A4(v39, &v163);
  v150 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  sub_22C3698A8();
  sub_22C36D234(v44);
  v45 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  sub_22C369914(v45);
  v47 = *(v46 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v48);
  sub_22C36D5B4();
  sub_22C3698F8(v49);
  v50 = sub_22C90399C();
  v51 = sub_22C36A7A4(v50, &v165);
  v152 = v52;
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v51);
  sub_22C3698A8();
  sub_22C3698F8(v55);
  v56 = sub_22C90931C();
  v57 = sub_22C36A7A4(v56, v164);
  v151 = v58;
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v57);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v61);
  sub_22C36BA64();
  sub_22C3698F8(v62);
  v63 = sub_22C90355C();
  v64 = sub_22C36A7A4(v63, &v173);
  v154 = v65;
  v67 = *(v66 + 64);
  MEMORY[0x28223BE20](v64);
  sub_22C3698A8();
  sub_22C36D234(v68);
  v69 = sub_22C3A5908(&qword_27D9BEC18, &unk_22C9204A0);
  sub_22C369914(v69);
  v71 = *(v70 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v72);
  sub_22C36D5B4();
  sub_22C3698F8(v73);
  v74 = sub_22C9081CC();
  v75 = sub_22C36A7A4(v74, &v174);
  v153 = v76;
  v78 = *(v77 + 64);
  MEMORY[0x28223BE20](v75);
  sub_22C3698A8();
  sub_22C3698F8(v79);
  v80 = sub_22C90880C();
  v81 = sub_22C36A7A4(v80, &a11);
  v156 = v82;
  v84 = *(v83 + 64);
  MEMORY[0x28223BE20](v81);
  sub_22C3698A8();
  sub_22C36D234(v85);
  v86 = sub_22C3A5908(&qword_27D9BD798, &unk_22C919070);
  sub_22C369914(v86);
  v88 = *(v87 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v89);
  sub_22C36D5B4();
  sub_22C3698F8(v90);
  v91 = sub_22C9079FC();
  v92 = sub_22C36A7A4(v91, &a15);
  v155 = v93;
  v95 = *(v94 + 64);
  MEMORY[0x28223BE20](v92);
  sub_22C3698A8();
  sub_22C3698F8(v96);
  v97 = sub_22C90902C();
  v98 = sub_22C369824(v97);
  v164[3] = v99;
  v165 = v98;
  v101 = *(v100 + 64);
  MEMORY[0x28223BE20](v98);
  sub_22C3698A8();
  v164[0] = v102;
  sub_22C36BA0C();
  v103 = sub_22C90077C();
  v104 = sub_22C369824(v103);
  v164[1] = v105;
  v164[2] = v104;
  v107 = *(v106 + 64);
  MEMORY[0x28223BE20](v104);
  sub_22C3698A8();
  v163 = v108;
  sub_22C36BA0C();
  v160 = sub_22C908D3C();
  v109 = sub_22C369824(v160);
  v159 = v110;
  v112 = *(v111 + 64);
  MEMORY[0x28223BE20](v109);
  sub_22C3698A8();
  sub_22C3698F8(v113);
  v167 = sub_22C908F4C();
  v114 = sub_22C369824(v167);
  v162 = v115;
  v117 = *(v116 + 64);
  MEMORY[0x28223BE20](v114);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v118);
  sub_22C36BA64();
  v161 = v119;
  sub_22C36BA0C();
  v120 = sub_22C9063DC();
  v121 = sub_22C369824(v120);
  v170 = v122;
  v171 = v121;
  v124 = *(v123 + 64);
  MEMORY[0x28223BE20](v121);
  sub_22C3698E4();
  v168 = v125;
  sub_22C369930();
  MEMORY[0x28223BE20](v126);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v127);
  sub_22C36D6DC();
  MEMORY[0x28223BE20](v128);
  sub_22C51E3BC();
  v130 = MEMORY[0x28223BE20](v129);
  v132 = &v143 - v131;
  MEMORY[0x28223BE20](v130);
  sub_22C37A1A4();
  MEMORY[0x28223BE20](v133);
  sub_22C3705C8();
  MEMORY[0x28223BE20](v134);
  sub_22C373000();
  v135 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  v136 = sub_22C369914(v135);
  v138 = *(v137 + 64);
  MEMORY[0x28223BE20](v136);
  sub_22C369ABC();
  sub_22C5CA690();
  MEMORY[0x28223BE20](v139);
  sub_22C387B64();
  sub_22C908FFC();
  sub_22C908FEC();
  v149 = v25;
  v148 = v132;
  v144 = v23;
  v145 = v22;
  v146 = v20;
  v147 = v26;
  v143 = v21;
  sub_22C90900C();

  sub_22C36BECC();
  sub_22C36C640(v140, v141, v142, v166);
  sub_22C36DD28(v24, &qword_27D9BC1E8, &qword_22C9123B0);

  sub_22C36BA00();
  sub_22C36CC48();
}

uint64_t sub_22C5C30A0()
{
  sub_22C908E7C();
  sub_22C90924C();
  v0 = sub_22C90A42C();

  return v0 & 1;
}

void sub_22C5C3118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_22C36BA7C();
  a19 = v22;
  a20 = v23;
  v509 = v24;
  v529 = v25;
  v520 = v26;
  v491 = v27;
  v29 = v28;
  v504 = a22;
  v510[1] = a21;
  v30 = sub_22C90700C();
  v31 = sub_22C369914(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  sub_22C3698A8();
  sub_22C3698F8(v34);
  v35 = sub_22C90654C();
  v36 = sub_22C36A7A4(v35, &v509);
  v490 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  sub_22C3698A8();
  sub_22C36D234(v40);
  v41 = sub_22C3A5908(&qword_27D9BD2B8, &qword_22C9204B0);
  sub_22C369914(v41);
  v43 = *(v42 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v44);
  sub_22C36D5B4();
  sub_22C3698F8(v45);
  v46 = sub_22C9084CC();
  v47 = sub_22C36A7A4(v46, &v517);
  v49 = v48;
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v47);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v52);
  sub_22C36BA64();
  sub_22C36D234(v53);
  v54 = sub_22C3A5908(&qword_27D9BEC18, &unk_22C9204A0);
  sub_22C369914(v54);
  v56 = *(v55 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v57);
  sub_22C36D5B4();
  sub_22C3698F8(v58);
  v59 = sub_22C9081CC();
  v60 = sub_22C36A7A4(v59, &v520);
  v62 = v61;
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v60);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v65);
  sub_22C36BA64();
  sub_22C3698F8(v66);
  v67 = sub_22C90880C();
  v68 = sub_22C36A7A4(v67, v535);
  v551 = v69;
  v71 = *(v70 + 64);
  MEMORY[0x28223BE20](v68);
  sub_22C3698A8();
  sub_22C36D234(v72);
  v73 = sub_22C3A5908(&qword_27D9BD798, &unk_22C919070);
  v74 = sub_22C369914(v73);
  v76 = *(v75 + 64);
  MEMORY[0x28223BE20](v74);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v77);
  sub_22C36BA64();
  sub_22C3698F8(v78);
  v79 = sub_22C9079FC();
  v80 = sub_22C369824(v79);
  v549 = v81;
  v83 = *(v82 + 64);
  MEMORY[0x28223BE20](v80);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v84);
  sub_22C36BA64();
  sub_22C36D234(v85);
  v86 = sub_22C3A5908(&qword_27D9BEC20, &qword_22C9204B8);
  sub_22C369914(v86);
  v88 = *(v87 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v89);
  sub_22C36D5B4();
  sub_22C3698F8(v90);
  v511 = type metadata accessor for ContextRule();
  v91 = sub_22C36985C(v511);
  v93 = *(v92 + 64);
  MEMORY[0x28223BE20](v91);
  sub_22C3698A8();
  sub_22C36D234(v94);
  v95 = sub_22C3A5908(&qword_27D9BEC28, &unk_22C9204C0);
  v96 = sub_22C369914(v95);
  v98 = *(v97 + 64);
  MEMORY[0x28223BE20](v96);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v99);
  sub_22C36BA64();
  sub_22C36D234(v100);
  v101 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  sub_22C369914(v101);
  v103 = *(v102 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v104);
  sub_22C36D5B4();
  sub_22C3698F8(v105);
  v106 = sub_22C90069C();
  v107 = sub_22C36A7A4(v106, &a12);
  v109 = v108;
  v111 = *(v110 + 64);
  MEMORY[0x28223BE20](v107);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v112);
  sub_22C36BA64();
  sub_22C3698F8(v113);
  v546 = sub_22C9063DC();
  v114 = sub_22C369824(v546);
  v116 = v115;
  v118 = *(v117 + 64);
  MEMORY[0x28223BE20](v114);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v119);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v120);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v121);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v122);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v123);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v124);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v125);
  sub_22C36BA64();
  v542 = v126;
  sub_22C36BA0C();
  v127 = sub_22C901FAC();
  v128 = sub_22C369824(v127);
  v130 = v129;
  v132 = *(v131 + 64);
  MEMORY[0x28223BE20](v128);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v133);
  sub_22C36BA58();
  v541 = v134;
  sub_22C369930();
  MEMORY[0x28223BE20](v135);
  sub_22C36BA58();
  v540 = v136;
  sub_22C369930();
  MEMORY[0x28223BE20](v137);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v138);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v139);
  sub_22C36BA58();
  v553 = v140;
  sub_22C369930();
  MEMORY[0x28223BE20](v141);
  sub_22C36BA64();
  v538 = v142;
  v143 = sub_22C3A5908(&qword_27D9BAA00, &qword_22C911F60);
  v144 = sub_22C369914(v143);
  v146 = *(v145 + 64);
  MEMORY[0x28223BE20](v144);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v147);
  sub_22C36BA64();
  sub_22C36D234(v148);
  v150 = v29 + 64;
  v149 = *(v29 + 64);
  v151 = *(v29 + 32);
  sub_22C5CAA40();
  v154 = v153 & v152;
  v522 = (v155 + 63) >> 6;
  v552 = (v130 + 16);
  v550 = (v130 + 32);
  v548 = (v130 + 8);
  v545 = (v116 + 8);
  v516 = v109 + 32;
  v515 = v109 + 16;
  v526 = (v109 + 8);
  v507 = v551 + 8;
  v500 = v549 + 4;
  v484 = v62 + 32;
  v483 = v62 + 16;
  v482 = v62 + 8;
  v499 = v549 + 1;
  v480 = v49 + 32;
  v479 = v49 + 16;
  v478 = v49 + 8;
  v544 = v130;
  v521 = v130 + 40;
  swift_bridgeObjectRetain_n();
  v156 = 0;
  *&v157 = 136315138;
  v530 = v157;
  *&v157 = 67109120;
  v501 = v157;
  v531 = v29;
  v158 = v29;
  v512 = v79;
  v539 = v127;
  v534 = v29 + 64;
  while (1)
  {
    v549 = v158;
    if (!v154)
    {
      break;
    }

    v159 = v156;
    v160 = v538;
LABEL_9:
    v162 = __clz(__rbit64(v154));
    v154 &= v154 - 1;
    v163 = v162 | (v159 << 6);
    v164 = (*(v531 + 48) + 16 * v163);
    v165 = *v164;
    v150 = v164[1];
    v166 = v544;
    (*(v544 + 16))(v160, *(v531 + 56) + *(v544 + 72) * v163, v127);
    v167 = sub_22C3A5908(&qword_27D9BAA30, &unk_22C911F70);
    v168 = *(v167 + 48);
    v169 = v537;
    *v537 = v165;
    v169[1] = v150;
    v161 = v169;
    v170 = *(v166 + 32);
    sub_22C5CA664();
    v171();
    sub_22C36BECC();
    sub_22C36C640(v172, v173, v174, v167);

LABEL_10:
    v175 = v536;
    sub_22C4E7208(v161, v536, &qword_27D9BAA00, &qword_22C911F60);
    sub_22C3A5908(&qword_27D9BAA30, &unk_22C911F70);
    v176 = sub_22C3869F0();
    sub_22C36D0A8(v176, 1, v150);
    if (v294)
    {
      sub_22C37EFC0();

      (*v552)(v489, v491, v127);
      sub_22C37FE04(&v511);

      sub_22C37A078(v510);
      sub_22C906A9C();
      (*(v490 + 104))(v175, *MEMORY[0x277D1DA78]);
      sub_22C36D818(&v512);
      sub_22C9070BC();
      LOBYTE(v554) = 1;
      sub_22C37B090();
      sub_22C37EF10();
      sub_22C90708C();
      sub_22C36CC48();
      return;
    }

    v177 = v175[1];
    v551 = *v175;
    v178 = v175 + *(v150 + 48);
    v543 = *v550;
    v543(v553, v178, v127);
    v179 = v542;
    sub_22C903FBC();
    v180 = *v552;
    v181 = v535[0];
    v182 = sub_22C36BAFC();
    v547 = v183;
    v183(v182);
    v184 = sub_22C9063CC();
    v185 = sub_22C90AACC();
    if (os_log_type_enabled(v184, v185))
    {
      sub_22C36BED8();
      v186 = v181;
      v181 = swift_slowAlloc();
      sub_22C370220();
      v187 = swift_slowAlloc();
      *v181 = sub_22C37AC60(v187).n128_u32[0];
      sub_22C901F7C();
      v533 = v154;
      v188 = v177;
      v189 = *v548;
      (*v548)(v186, v539);
      v190 = sub_22C5CAA58();
      sub_22C36F9F4(v190, v191, v192);
      sub_22C36A024();
      v127 = v539;

      *(v181 + 4) = v186;
      _os_log_impl(&dword_22C366000, v184, v185, "Found parameter in call() with statementID: %s", v181, 0xCu);
      sub_22C36FF94(v187);
      v193 = v189;
      v177 = v188;
      v154 = v533;
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();

      v194 = *v545;
      (*v545)(v542, v546);
    }

    else
    {

      v193 = *v548;
      (*v548)(v181, v127);
      v194 = *v545;
      (*v545)(v179, v546);
    }

    sub_22C901F7C();
    v196 = v535[1];
    if (!v195)
    {
      goto LABEL_18;
    }

    v197 = v195;
    sub_22C36D818(&v554 + 8);
    v533 = v198;
    sub_22C90064C();
    v199 = sub_22C36CCF8();
    v200 = v532;
    sub_22C36D0A8(v199, v201, v532);
    if (v294)
    {

      sub_22C36DD28(v181, &qword_27D9BB190, qword_22C90DD90);
LABEL_18:
      v202 = v540;
      sub_22C5C5EA0();
      v547(v541, v202, v127);
      v203 = v549;
      swift_isUniquelyReferenced_nonNull_native();
      *&v554 = v203;
      v204 = sub_22C36E2BC(v551, v177);
      if (__OFADD__(v203[2], (v205 & 1) == 0))
      {
        goto LABEL_79;
      }

      v206 = v204;
      v207 = v205;
      sub_22C3A5908(&qword_27D9BEC30, &qword_22C9226B0);
      if (sub_22C90B15C())
      {
        v208 = sub_22C36E2BC(v551, v177);
        if ((v207 & 1) != (v209 & 1))
        {
          goto LABEL_81;
        }

        v206 = v208;
      }

      v210 = v177;
      v158 = v554;
      if (v207)
      {
        (*(v544 + 40))(*(v554 + 56) + *(v544 + 72) * v206, v541, v127);
      }

      else
      {
        sub_22C36ED48(v554 + 8 * (v206 >> 6));
        v211 = (v158[6] + 16 * v206);
        *v211 = v551;
        v211[1] = v210;
        v212 = v158[7];
        v213 = *(v544 + 72);
        sub_22C5CA6D4();
        v214();
        v215 = v158[2];
        v216 = __OFADD__(v215, 1);
        v217 = v215 + 1;
        if (v216)
        {
          goto LABEL_80;
        }

        v158[2] = v217;
      }

      v193(v540, v127);
      v193(v553, v127);
LABEL_76:
      v150 = v534;
    }

    else
    {
      v547 = v197;
      v523 = v177;
      sub_22C36BA4C(&v544);
      v218 = sub_22C382D34();
      v219(v218);
      sub_22C374490(&v545);
      sub_22C903FBC();
      sub_22C37025C(&v543);
      sub_22C44178C();
      v220();
      v221 = v196;
      v222 = sub_22C9063CC();
      v223 = sub_22C90AACC();
      v224 = os_log_type_enabled(v222, v223);
      v525 = v193;
      if (v224)
      {
        sub_22C36BED8();
        swift_slowAlloc();
        sub_22C3735E4();
        v513 = swift_slowAlloc();
        *v200 = sub_22C37AC60(v513).n128_u32[0];
        sub_22C3887BC();
        sub_22C5C87F4(&qword_27D9BEC38, v225);
        v226 = v194;
        v227 = sub_22C90B47C();
        v229 = v228;
        v524 = *v526;
        v524(v221, v200);
        v230 = v227;
        v194 = v226;
        v231 = sub_22C36F9F4(v230, v229, &v554);

        *(v200 + 4) = v231;
        sub_22C5CA61C();
        _os_log_impl(v232, v233, v234, v235, v236, v237);
        v238 = sub_22C37FE04(&v541);
        sub_22C36FF94(v238);
        v193 = v525;
        sub_22C369B50();
        MEMORY[0x2318B9880]();
        v239 = sub_22C36D66C();
        MEMORY[0x2318B9880](v239);
      }

      else
      {

        v244 = *v526;
        v245 = sub_22C380120();
        v524 = v246;
        v246(v245);
      }

      v194(v127, v546);
      sub_22C90065C();
      sub_22C90A1DC();

      v247 = v520;
      v127 = v539;
      v158 = v549;
      if (*(v520 + 16) && (v248 = sub_22C37BD98(), v250 = sub_22C36E2BC(v248, v249), (v251 & 1) != 0))
      {
        v252 = v250;
        v253 = *(v247 + 56);
        v254 = type metadata accessor for PlanOverridesService.EventReference(0);
        sub_22C36985C(v254);
        v256 = *(v255 + 72);
        sub_22C3831E0();
        sub_22C5CAC28(&v555);
        sub_22C5CA0B8(v257, v258);
      }

      else
      {
        v254 = type metadata accessor for PlanOverridesService.EventReference(0);
        v252 = v528;
        sub_22C36CCF8();
      }

      sub_22C3827B4();
      sub_22C36C640(v259, v260, v261, v262);

      v263 = v519;
      sub_22C4E719C(v252, v519, &qword_27D9BEC28, &unk_22C9204C0);
      type metadata accessor for PlanOverridesService.EventReference(0);
      sub_22C36D3E0(v263);
      if (!v294)
      {

        v270 = *(v263 + *(v254 + 20));
        sub_22C3872A0();
        sub_22C5C8874(v263, v271);
        sub_22C37A078(&v546);
        sub_22C903FBC();
        v272 = sub_22C9063CC();
        sub_22C90AACC();
        v273 = sub_22C37E2D0();
        if (os_log_type_enabled(v273, v274))
        {
          sub_22C37080C();
          v276 = swift_slowAlloc();
          *v276 = v501;
          *(v276 + 4) = v270;
          _os_log_impl(&dword_22C366000, v272, v263, "Replacing new event index with: %u", v276, 8u);
          sub_22C369B50();
          MEMORY[0x2318B9880]();
        }

        v194(v518, v546);
        sub_22C5CAB1C();
        sub_22C36BA00();
        sub_22C5CA6D4();
        v277();
        swift_isUniquelyReferenced_nonNull_native();
        *&v554 = v158;
        sub_22C5CA8DC(&v551);
        sub_22C62C9F4(v278, v279, v280, v281, v282, v283, v284, v285, v477, v478, v479, v480, v481, v482);

        v158 = v554;
        goto LABEL_54;
      }

      sub_22C5CA6E4();
      sub_22C36DD28(v264, v265, v266);
      sub_22C36D818(&v536);
      v267 = v547;
      sub_22C5C75F4();
      v268 = sub_22C36CCF8();
      sub_22C36D0A8(v268, v269, v511);
      v514 = v194;
      if (v294)
      {
        sub_22C36DD28(&unk_22C9204C0, &qword_27D9BEC20, &qword_22C9204B8);
        goto LABEL_46;
      }

      sub_22C37A168();
      v286 = v505;
      sub_22C5C8974(&unk_22C9204C0, v505);
      sub_22C37205C(&v534);
      sub_22C90878C();
      v287 = sub_22C9087DC();
      v288 = sub_22C37025C(&v533);
      v289(v288, v508);
      *&v554 = v287;
      sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
      sub_22C369E24();
      sub_22C3D32C8(&qword_27D9BA9F8, &qword_27D9BA9F0, &qword_22C912420);
      sub_22C5CACB0();
      v290 = v503[1];
      sub_22C907EEC();

      sub_22C5CA8DC(&v540);
      sub_22C36D0A8(v291, v292, v293);
      if (v294)
      {
        sub_22C36AC94();
        sub_22C5C8874(v286, v295);
        sub_22C36DD28(v290, &qword_27D9BD798, &unk_22C919070);
        v267 = v547;
LABEL_46:
        sub_22C5C79F8();
        if (v297)
        {
          v300 = v297;
          v495 = v298;
          v498 = v296;
          v513 = v299;
          sub_22C36D2E8(&v534);
          sub_22C90878C();
          v301 = sub_22C9087DC();
          v302 = sub_22C5CA450(&v533);
          v303(v302, v508);
          *&v554 = v301;
          v304 = sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
          sub_22C369E24();
          sub_22C3D32C8(&qword_27D9BA9F8, &qword_27D9BA9F0, &qword_22C912420);
          sub_22C5CACB0();
          sub_22C370208(&v523);
          sub_22C907EEC();

          v305 = sub_22C36FD7C();
          v306 = v512;
          sub_22C36D0A8(v305, v307, v512);
          if (!v294)
          {
            sub_22C36BA4C(&v527);
            v362 = sub_22C37BA1C();
            v363(v362, v193, v306);
            sub_22C36D818(&v518);
            sub_22C5C6490(v498, v300, v495, v513, &qword_27D9BA9F0, v364, v365, v366, v477, v478, v479, v480, v481, v482, v483, v484, v485, v486, v487, v488);

            v367 = sub_22C36CCF8();
            sub_22C36D0A8(v367, v368, v492);
            if (v369)
            {
              sub_22C5CADFC();
              sub_22C36DD28(v301, &qword_27D9BD2B8, &qword_22C9204B0);
              sub_22C37205C(&v505);
              sub_22C903FBC();
              v370 = v547;

              v371 = sub_22C9063CC();
              sub_22C90AACC();
              sub_22C5CACE4();

              v372 = sub_22C5CA91C();
              if (os_log_type_enabled(v372, v373))
              {
                sub_22C36BED8();
                v374 = swift_slowAlloc();
                sub_22C370220();
                v375 = swift_slowAlloc();
                v376 = sub_22C5CA4D4(v375);
                v378 = sub_22C36F9F4(v376, v370, v377);

                *(v374 + 4) = v378;
                sub_22C5CAA1C();
                _os_log_impl(v379, v380, v381, v382, v383, v384);
                sub_22C36FF94(v304);
                v385 = sub_22C36D66C();
                MEMORY[0x2318B9880](v385);
                v386 = sub_22C37F88C();
                MEMORY[0x2318B9880](v386);
              }

              else
              {
              }

              sub_22C5CA460();
              v456();
              sub_22C5CA440();
              v457 = sub_22C5CA990();
              v458(v457);
              v325 = v528;
              v326 = &qword_27D9BEC28;
            }

            else
            {

              sub_22C36BA4C(&v500);
              v408 = sub_22C382D34();
              v409(v408);
              sub_22C36D2E8(&v504);
              sub_22C903FBC();
              sub_22C36BA4C(&v499);
              v410 = sub_22C36BA00();
              v411(v410);
              v412 = sub_22C9063CC();
              v413 = sub_22C90AACC();
              sub_22C5CAB64(v413);
              sub_22C37A078(&v498);
              v547 = (v415 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
              if (v414)
              {
                sub_22C36BED8();
                v497 = swift_slowAlloc();
                sub_22C370220();
                v513 = swift_slowAlloc();
                *v497 = sub_22C37AC60(v513).n128_u32[0];
                LODWORD(v498) = v413;
                v413 = v304;
                sub_22C9068FC();
                sub_22C5CA3DC();
                sub_22C5C87F4(&qword_27D9BAA48, v416);
                v127 = v539;
                sub_22C90B47C();
                sub_22C5CA4C0();
                v417();
                v418 = *v304;
                sub_22C37BD98();
                sub_22C5CA818(v419);
                v420();
                v421 = sub_22C372164();
                v424 = sub_22C36F9F4(v421, v422, v423);

                *(v497 + 4) = v424;
                _os_log_impl(&dword_22C366000, v412, v498, "Replacing new event statement with: %s", v497, 0xCu);
                sub_22C36FF94(v513);
                v425 = sub_22C37F88C();
                MEMORY[0x2318B9880](v425);
                sub_22C5CAA88();
                sub_22C369B50();
                MEMORY[0x2318B9880]();

                sub_22C5CA460();
                v426();
              }

              else
              {

                v459 = *v304;
                sub_22C37BD98();
                sub_22C5CA818(v460);
                v461();
                sub_22C5CA460();
                v462();
                v127 = v539;
                sub_22C5CAA88();
              }

              sub_22C9068FC();
              sub_22C38B1DC(&v538);
              sub_22C5CA6D4();
              v463();
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              sub_22C5CA868(isUniquelyReferenced_nonNull_native, v465, v466, v467, v468, v469, v470, v471, v477, v478, v479, v480, v481, v482);

              v158 = v554;
              v472 = sub_22C371530();
              v533(v472);
              sub_22C5CA440();
              v473(v494, v413);
              v325 = sub_22C38A190();
            }

LABEL_75:
            sub_22C36DD28(v325, v326, &unk_22C9204C0);
            v474 = sub_22C3707E8();
            v475(v474);
            sub_22C5CA4C0();
            v476();
            goto LABEL_76;
          }

          sub_22C5CADFC();
          sub_22C36DD28(v193, &qword_27D9BD798, &unk_22C919070);
          v193 = v525;
          v267 = v547;
        }

        else
        {
          sub_22C5CADFC();
        }

        sub_22C37BA44(&v532);
        sub_22C903FBC();

        v308 = v267;
        v309 = sub_22C9063CC();
        v310 = sub_22C90AACC();

        if (!os_log_type_enabled(v309, v310))
        {

          sub_22C5CA460();
          v327();
LABEL_54:
          v328 = sub_22C38A190();
          sub_22C36DD28(v328, v329, &unk_22C9204C0);
          v330 = sub_22C3707E8();
          v331(v330);
          v193(v553, v127);
          goto LABEL_76;
        }

        sub_22C36BED8();
        v311 = v309;
        v312 = swift_slowAlloc();
        sub_22C370220();
        v313 = swift_slowAlloc();
        v314 = sub_22C5CA4D4(v313);
        v316 = sub_22C36F9F4(v314, v308, v315);

        *(v312 + 4) = v316;
        sub_22C5CAA1C();
        _os_log_impl(v317, v318, v319, v320, v321, v322);
        sub_22C36FF94(&qword_27D9BEC28);
        sub_22C369B50();
        MEMORY[0x2318B9880]();
        v323 = sub_22C37F88C();
        MEMORY[0x2318B9880](v323);

        sub_22C5CA460();
        v324();
        v325 = v528;
        v326 = &qword_27D9BEC28;
        goto LABEL_75;
      }

      sub_22C36BA4C(&v527);
      v332 = sub_22C37BA1C();
      v333(v332, v290, v287);
      v334 = *(v511 + 20);
      v335 = (v286 + *(v511 + 24));
      v336 = v335[1];
      v554 = *v335;
      v555 = v336;
      sub_22C36D818(&v521);
      sub_22C5C6C44();
      v337 = sub_22C36CCF8();
      sub_22C36D0A8(v337, v338, v493);
      if (!v339)
      {

        sub_22C36BA4C(v503);
        v387 = sub_22C382D34();
        v388(v387);
        sub_22C370208(&v506);
        sub_22C903FBC();
        sub_22C36BA4C(&v502);
        v389 = sub_22C36BA00();
        v390(v389);
        v391 = sub_22C9063CC();
        v392 = sub_22C90AACC();
        sub_22C5CAB64(v392);
        sub_22C37A078(&v501 + 8);
        v547 = (v394 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        if (v393)
        {
          sub_22C36BED8();
          v395 = swift_slowAlloc();
          v498 = v395;
          sub_22C370220();
          v513 = swift_slowAlloc();
          *v395 = sub_22C37AC60(v513).n128_u32[0];
          sub_22C9068FC();
          sub_22C5CA3DC();
          sub_22C5C87F4(&qword_27D9BAA48, v396);
          v496 = v392;
          v127 = v539;
          sub_22C90B47C();
          sub_22C5CA4C0();
          v397();
          v398 = *v193;
          sub_22C37BD98();
          sub_22C5CA818(v399);
          v400();
          v401 = sub_22C372164();
          v404 = sub_22C36F9F4(v401, v402, v403);

          v405 = v498;
          *(v498 + 1) = v404;
          _os_log_impl(&dword_22C366000, v391, v496, "Replacing new event statement with: %s", v405, 0xCu);
          sub_22C36FF94(v513);
          v406 = sub_22C37F88C();
          MEMORY[0x2318B9880](v406);
          sub_22C5CAA88();
          sub_22C369B50();
          MEMORY[0x2318B9880]();

          sub_22C5CA460();
          v407();
        }

        else
        {

          v435 = *v193;
          sub_22C37BD98();
          sub_22C5CA818(v436);
          v437();
          sub_22C5CA460();
          v438();
          v127 = v539;
          sub_22C5CAA88();
        }

        sub_22C9068FC();
        sub_22C38B1DC(&v538);
        sub_22C5CA6D4();
        v439();
        v440 = swift_isUniquelyReferenced_nonNull_native();
        sub_22C5CA868(v440, v441, v442, v443, v444, v445, v446, v447, v477, v478, v479, v480, v481, v482);

        v158 = v554;
        v448 = sub_22C371530();
        v533(v448);
        sub_22C5CA440();
        v449(v503[0], v193);
        v450 = sub_22C38A190();
        sub_22C36DD28(v450, v451, &unk_22C9204C0);
        v452 = sub_22C3707E8();
        v453(v452);
        sub_22C5CA4C0();
        v454();
        sub_22C36AC94();
        sub_22C5C8874(v505, v455);
        goto LABEL_76;
      }

      sub_22C5CADFC();
      sub_22C36DD28(v287, &qword_27D9BEC18, &unk_22C9204A0);
      sub_22C37205C(&v507);
      sub_22C903FBC();
      v340 = v547;

      v341 = sub_22C9063CC();
      sub_22C90AACC();
      sub_22C5CACE4();

      v342 = sub_22C5CA91C();
      if (os_log_type_enabled(v342, v343))
      {
        sub_22C36BED8();
        v344 = swift_slowAlloc();
        sub_22C370220();
        v345 = swift_slowAlloc();
        v346 = sub_22C5CA4D4(v345);
        v348 = sub_22C36F9F4(v346, v340, v347);

        *(v344 + 4) = v348;
        sub_22C5CAA1C();
        _os_log_impl(v349, v350, v351, v352, v353, v354);
        sub_22C36FF94(&qword_27D9BEC28);
        sub_22C369B50();
        MEMORY[0x2318B9880]();
        v355 = sub_22C37F88C();
        MEMORY[0x2318B9880](v355);

        sub_22C5CA460();
        v356();
        sub_22C5CA440();
        v357 = sub_22C5CA990();
        v358(v357);
        sub_22C36DD28(v528, &qword_27D9BEC28, &unk_22C9204C0);
        v359 = sub_22C3707E8();
        v360(v359);
        sub_22C5CA4C0();
        v361();
      }

      else
      {

        sub_22C5CA460();
        v427();
        sub_22C5CA440();
        v428 = sub_22C5CA990();
        v429(v428);
        v430 = sub_22C38A190();
        sub_22C36DD28(v430, v431, &unk_22C9204C0);
        v432 = sub_22C3707E8();
        v433(v432);
        v193(v553, v127);
      }

      v150 = v534;
      sub_22C36AC94();
      sub_22C5C8874(v505, v434);
    }
  }

  v160 = v538;
  v161 = v537;
  while (1)
  {
    v159 = v156 + 1;
    if (__OFADD__(v156, 1))
    {
      break;
    }

    if (v159 >= v522)
    {
      sub_22C3A5908(&qword_27D9BAA30, &unk_22C911F70);
      sub_22C36A748();
      sub_22C36C640(v240, v241, v242, v243);
      v154 = 0;
      goto LABEL_10;
    }

    v154 = *(v150 + 8 * v159);
    ++v156;
    if (v154)
    {
      v156 = v159;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  sub_22C90B54C();
  __break(1u);
}

void sub_22C5C51D8()
{
  sub_22C36BA7C();
  v150 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = sub_22C3A5908(&qword_27D9BB0C0, &qword_22C90D960);
  sub_22C369914(v13);
  v15 = *(v14 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v16);
  sub_22C5CA768();
  v17 = sub_22C90952C();
  v18 = sub_22C369824(v17);
  v148 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22C3698E4();
  v147 = v22;
  sub_22C369930();
  MEMORY[0x28223BE20](v23);
  sub_22C5CA690();
  MEMORY[0x28223BE20](v24);
  sub_22C36BA64();
  v149 = v25;
  v26 = sub_22C3A5908(&qword_27D9BD820, &unk_22C9195C0);
  sub_22C369914(v26);
  v28 = *(v27 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v29);
  v31 = &v141 - v30;
  v32 = v10 == v6 && v8 == v4;
  if (v32)
  {
    goto LABEL_28;
  }

  sub_22C371530();
  if (sub_22C90B4FC())
  {
    goto LABEL_28;
  }

  v152 = v10;
  v153 = v8;
  strcpy(v151, "^[$]{[^ ]*}$");
  HIBYTE(v151[6]) = 0;
  v151[7] = -5120;
  sub_22C90077C();
  sub_22C36A748();
  sub_22C36C640(v33, v34, v35, v36);
  sub_22C3858B4();
  sub_22C3870A4();
  sub_22C90AD6C();
  v38 = v37;
  sub_22C36DD28(v31, &qword_27D9BD820, &unk_22C9195C0);
  if (v38)
  {
    goto LABEL_28;
  }

  v142 = v6;
  v143 = v4;
  v144 = v0;
  v145 = v17;
  v146 = v12;

  v39 = sub_22C862F28(2uLL, v10, v8);
  v41 = sub_22C46BD44(1, v39, v40);
  v43 = v42;
  v45 = v44;
  v46 = v41 >> 16;
  v48 = v47 >> 16;
  v49 = (v150 + 48);
  v50 = *(v150 + 16) + 1;
  do
  {
    if (!--v50)
    {
      goto LABEL_27;
    }

    v51 = *(v49 - 2);
    v52 = *(v49 - 1);
    v53 = *v49;
    if ((v52 & 0x2000000000000000) != 0)
    {
      v54 = HIBYTE(v52) & 0xF;
    }

    else
    {
      v54 = v51 & 0xFFFFFFFFFFFFLL;
    }

    if (v51 == v43 && v52 == v45 && v46 == 0 && v54 == v48)
    {
      break;
    }

    v49 += 3;
  }

  while ((sub_22C90B46C() & 1) == 0);

  if (*(v53 + 16) != 1)
  {
LABEL_27:

    goto LABEL_28;
  }

  sub_22C58B54C(v53, v1);

  v58 = sub_22C5CA7F4();
  v59 = v145;
  sub_22C36D0A8(v58, v60, v145);
  v61 = v146;
  if (v32)
  {
    sub_22C36DD28(v1, &qword_27D9BB0C0, &qword_22C90D960);
    goto LABEL_28;
  }

  v67 = v148;
  v66 = v149;
  v68 = *(v148 + 32);
  v69 = sub_22C441720();
  v70(v69);
  v71 = (v67 + 16);
  v72 = *(v67 + 16);
  v73 = v144;
  v74 = sub_22C3720DC();
  v72(v74);
  v75 = *(v67 + 88);
  v76 = sub_22C371510();
  if (v77(v76) != *MEMORY[0x277D72D50])
  {
    v87 = sub_22C5CAA28();
    v71(v87);
    goto LABEL_36;
  }

  v78 = v147;
  v79 = sub_22C5CAA58();
  v72(v79);
  (*(v67 + 96))(v78, v59);
  v80 = *v78;
  sub_22C9094EC();
  sub_22C3869F0();
  swift_projectBox();
  sub_22C36BBA8(v67 + 16);
  v82 = (*(v81 + 88))();
  if (v82 == *MEMORY[0x277D72CB0])
  {
    sub_22C90A1BC();
    v83 = sub_22C90A6CC();
    v84 = v66;
    v85 = *(v67 + 8);
    v85(v84, v59);
    if (v83 == 2)
    {

      v86 = sub_22C371510();
      (v85)(v86);
      goto LABEL_28;
    }

    *v61 = v83 & 1;
    v105 = *MEMORY[0x277D1DED8];
    v106 = sub_22C906F2C();
    sub_22C36985C(v106);
    (*(v107 + 104))(v61, v105, v106);
    sub_22C36BECC();
    sub_22C36C640(v108, v109, v110, v106);

    v111 = v73;
LABEL_118:
    v85(v111, v59);
    goto LABEL_30;
  }

  v93 = v143;
  if (v82 != *MEMORY[0x277D72CA0])
  {
    if (v82 == *MEMORY[0x277D72CD0] || v82 == *MEMORY[0x277D72CE8])
    {

      v113 = *(v67 + 8);
      v114 = sub_22C371510();
      v113(v114);

      v115 = sub_22C5C5B50(v142, v93);
      v117 = v116;
      (v113)(v66, v59);
      if ((v117 & 1) == 0)
      {
        *v61 = v115;
        v118 = *MEMORY[0x277D1DEF0];
        v119 = sub_22C906F2C();
        sub_22C36985C(v119);
        (*(v120 + 104))(v61, v118, v119);
        sub_22C36BECC();
        v65 = v119;
        goto LABEL_29;
      }

LABEL_28:
      sub_22C906F2C();
      sub_22C36A748();
LABEL_29:
      sub_22C36C640(v62, v63, v64, v65);
LABEL_30:
      sub_22C36CC48();
      return;
    }

    v121 = sub_22C5CAA28();
    v71(v121);

LABEL_36:
    sub_22C906F2C();
    sub_22C36A748();
    sub_22C36C640(v88, v89, v90, v91);
    v92 = sub_22C371510();
    v71(v92);
    goto LABEL_30;
  }

  v94 = HIBYTE(v143) & 0xF;
  v95 = v142;
  v96 = v142 & 0xFFFFFFFFFFFFLL;
  if ((v143 & 0x2000000000000000) != 0)
  {
    v97 = HIBYTE(v143) & 0xF;
  }

  else
  {
    v97 = v142 & 0xFFFFFFFFFFFFLL;
  }

  if (!v97)
  {
    v139 = v66;
    v85 = *(v67 + 8);
    v85(v139, v59);
    goto LABEL_116;
  }

  if ((v143 & 0x1000000000000000) != 0)
  {
    LOBYTE(v151[0]) = 0;

    v100 = sub_22C5C96C4(v95, v93, 10);
    v132 = v140;
LABEL_115:
    v85 = *(v67 + 8);
    v85(v149, v59);

    if ((v132 & 1) == 0)
    {
      *v61 = v100;
      v133 = *MEMORY[0x277D1DED0];
      v134 = sub_22C906F2C();
      sub_22C36985C(v134);
      (*(v135 + 104))(v61, v133, v134);
      sub_22C36BECC();
      sub_22C36C640(v136, v137, v138, v134);

      v111 = v144;
      goto LABEL_118;
    }

LABEL_116:

    v85(v144, v59);
    goto LABEL_28;
  }

  if ((v143 & 0x2000000000000000) == 0)
  {
    if ((v142 & 0x1000000000000000) != 0)
    {
      v98 = ((v143 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v98 = sub_22C90AFCC();
    }

    v99 = *v98;
    if (v99 == 43)
    {
      if (v96 >= 1)
      {
        if (v96 != 1)
        {
          v100 = 0;
          if (v98)
          {
            while (1)
            {
              sub_22C36CD1C();
              if (!v32 & v101)
              {
                goto LABEL_113;
              }

              sub_22C37EC64();
              if (!v32)
              {
                goto LABEL_113;
              }

              v100 = v125 + v124;
              if (__OFADD__(v125, v124))
              {
                goto LABEL_113;
              }

              sub_22C5CAA10();
              if (v32)
              {
                goto LABEL_114;
              }
            }
          }

          goto LABEL_104;
        }

        goto LABEL_113;
      }

      goto LABEL_124;
    }

    if (v99 != 45)
    {
      if (v96)
      {
        v100 = 0;
        if (v98)
        {
          while (1)
          {
            v128 = *v98 - 48;
            if (v128 > 9)
            {
              goto LABEL_113;
            }

            v129 = 10 * v100;
            if ((v100 * 10) >> 64 != (10 * v100) >> 63)
            {
              goto LABEL_113;
            }

            v100 = v129 + v128;
            if (__OFADD__(v129, v128))
            {
              goto LABEL_113;
            }

            ++v98;
            if (!--v96)
            {
              goto LABEL_104;
            }
          }
        }

        goto LABEL_104;
      }

LABEL_113:
      v100 = 0;
      v104 = 1;
      goto LABEL_114;
    }

    if (v96 >= 1)
    {
      if (v96 != 1)
      {
        v100 = 0;
        if (v98)
        {
          while (1)
          {
            sub_22C36CD1C();
            if (!v32 & v101)
            {
              goto LABEL_113;
            }

            sub_22C37EC64();
            if (!v32)
            {
              goto LABEL_113;
            }

            v100 = v103 - v102;
            if (__OFSUB__(v103, v102))
            {
              goto LABEL_113;
            }

            sub_22C5CAA10();
            if (v32)
            {
              goto LABEL_114;
            }
          }
        }

LABEL_104:
        v104 = 0;
LABEL_114:
        LOBYTE(v151[0]) = v104;
        v132 = v104;

        goto LABEL_115;
      }

      goto LABEL_113;
    }

    __break(1u);
LABEL_123:
    __break(1u);
LABEL_124:
    __break(1u);
    goto LABEL_125;
  }

  v152 = v142;
  v153 = v143 & 0xFFFFFFFFFFFFFFLL;
  if (v142 != 43)
  {
    if (v142 != 45)
    {
      if (v94)
      {
        while (1)
        {
          sub_22C36CD1C();
          if (!v32 & v101)
          {
            break;
          }

          sub_22C37EC64();
          if (!v32)
          {
            break;
          }

          v100 = v131 + v130;
          if (__OFADD__(v131, v130))
          {
            break;
          }

          sub_22C5CAA10();
          if (v32)
          {
            goto LABEL_114;
          }
        }
      }

      goto LABEL_113;
    }

    if (v94)
    {
      if (v94 != 1)
      {
        sub_22C5CACF0();
        while (1)
        {
          sub_22C36CD1C();
          if (!v32 & v101)
          {
            break;
          }

          sub_22C37EC64();
          if (!v32)
          {
            break;
          }

          v100 = v123 - v122;
          if (__OFSUB__(v123, v122))
          {
            break;
          }

          sub_22C5CAA10();
          if (v32)
          {
            goto LABEL_114;
          }
        }
      }

      goto LABEL_113;
    }

    goto LABEL_123;
  }

  if (v94)
  {
    if (v94 != 1)
    {
      sub_22C5CACF0();
      while (1)
      {
        sub_22C36CD1C();
        if (!v32 & v101)
        {
          break;
        }

        sub_22C37EC64();
        if (!v32)
        {
          break;
        }

        v100 = v127 + v126;
        if (__OFADD__(v127, v126))
        {
          break;
        }

        sub_22C5CAA10();
        if (v32)
        {
          goto LABEL_114;
        }
      }
    }

    goto LABEL_113;
  }

LABEL_125:
  __break(1u);
}

uint64_t sub_22C5C5B50(uint64_t a1, uint64_t a2)
{
  sub_22C5C9F84(a1, a2);

  return 0;
}

uint64_t sub_22C5C5BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3 + 64;
  v3 = *(a3 + 64);
  v5 = *(a3 + 32);
  sub_22C5CAA40();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;
  v25 = v11;

  v13 = 0;
  if (v8)
  {
    while (1)
    {
LABEL_5:
      sub_22C5CACBC();
      v17 = (v15 << 10) | (16 * v16);
      v18 = (*(v25 + 48) + v17);
      v19 = *v18;
      v20 = v18[1];
      v21 = (*(v25 + 56) + v17);
      v22 = *v21;
      v23 = v21[1];

      v24 = sub_22C36CA88();
      MEMORY[0x2318B7850](v24);

      MEMORY[0x2318B7850](125, 0xE100000000000000);
      sub_22C3858B4();
      sub_22C3870A4();
      sub_22C90AD4C();
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      return sub_22C37170C();
    }

    ++v13;
    if (*(v4 + 8 * v14))
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C5C5D50()
{
  v1 = sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  sub_22C369914(v1);
  v3 = *(v2 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v4);
  sub_22C37BDA4();
  v5 = sub_22C901FAC();
  v6 = sub_22C369824(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  v13 = v12 - v11;
  sub_22C9087AC();
  sub_22C90882C();

  v14 = *(v8 + 16);
  v15 = sub_22C3720DC();
  v14(v15);
  v16 = sub_22C370018();
  v14(v16);
  sub_22C36BECC();
  sub_22C36C640(v17, v18, v19, v5);
  return sub_22C602850(v0, v13);
}

void sub_22C5C5EA0()
{
  sub_22C36BA7C();
  v62 = v5;
  v7 = v6;
  v66 = v8;
  v9 = sub_22C9063DC();
  v10 = sub_22C369824(v9);
  v64 = v11;
  v65 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C369ABC();
  MEMORY[0x28223BE20](v14);
  sub_22C36CAC0();
  v15 = sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  sub_22C369914(v15);
  v17 = *(v16 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v18);
  sub_22C37B6BC();
  v19 = sub_22C901FAC();
  v20 = sub_22C369824(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22C369ABC();
  sub_22C36D6DC();
  MEMORY[0x28223BE20](v25);
  sub_22C49CA04();
  MEMORY[0x28223BE20](v26);
  sub_22C51E3BC();
  MEMORY[0x28223BE20](v27);
  sub_22C387B64();
  sub_22C605578(v7, v62);
  sub_22C36D0A8(v1, 1, v19);
  if (v28)
  {
    sub_22C36DD28(v1, &qword_27D9BC030, &unk_22C911CC0);
    sub_22C903FBC();
    v29 = v22[2];
    v29(v4, v7, v19);
    v30 = sub_22C9063CC();
    v31 = sub_22C90AADC();
    if (sub_22C36FBB4(v31))
    {
      sub_22C37080C();
      v32 = swift_slowAlloc();
      *v32 = 67109120;
      v33 = sub_22C901F9C();
      v34 = v22[1];
      v35 = sub_22C37F8AC();
      v36(v35);
      *(v32 + 4) = v33;
      _os_log_impl(&dword_22C366000, v30, v31, "Unable to update the statement id ref: %u, programStatement might be malformed", v32, 8u);
      v37 = v66;
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    else
    {
      v53 = v22[1];
      v54 = sub_22C37F8AC();
      v55(v54);
      v37 = v66;
    }

    v56 = sub_22C5CA7C4();
    v57(v56);
    v29(v37, v7, v19);
  }

  else
  {
    v38 = v22[4];
    v39 = sub_22C37F370();
    v63 = v40;
    (v40)(v39);
    sub_22C903FBC();
    v41 = v22[2];
    v41(v0, v7, v19);
    v42 = sub_22C372158();
    (v41)(v42);
    v43 = sub_22C9063CC();
    v44 = sub_22C90AACC();
    if (sub_22C5CAB64(v44))
    {
      v46 = swift_slowAlloc();
      *v46 = 67109376;
      v61 = v44;
      v47 = sub_22C901F9C();
      v48 = v22[1];
      v49 = sub_22C37BD98();
      v48(v49);
      *(v46 + 4) = v47;
      *(v46 + 8) = 1024;
      v50 = sub_22C901F9C();
      v51 = sub_22C38A024();
      v48(v51);
      *(v46 + 10) = v50;
      _os_log_impl(&dword_22C366000, v43, v61, "Replacing statement ID ref %u with %u", v46, 0xEu);
      v52 = sub_22C3816C4();
      MEMORY[0x2318B9880](v52);
    }

    else
    {
      v58 = v22[1];
      v59 = sub_22C38A024();
      v58(v59);
      v60 = sub_22C37BD98();
      v58(v60);
    }

    (*(v64 + 8))(v2, v65);
    v63(v66, v3, v19);
  }

  sub_22C36CC48();
}

uint64_t sub_22C5C6304()
{
  v1 = sub_22C90046C();
  v2 = sub_22C369824(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22C369ABC();
  sub_22C381AEC();
  MEMORY[0x28223BE20](v7);
  sub_22C5CA6F0();
  v8 = *v0;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass_];
  v11 = sub_22C8C4FE8(0xD000000000000015, 0x800000022C932A40, 0, 0xE000000000000000, v10);

  if (v11)
  {
    sub_22C9003DC();

    sub_22C5CA7E8();
    v12 = sub_22C37170C();
    v13(v12);
    sub_22C9003EC();
    v14 = *(v4 + 8);
    v15 = sub_22C36BBCC();
    v16(v15);
  }

  return sub_22C37335C();
}

void sub_22C5C6490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v23;
  a20 = v24;
  v118 = v25;
  v119 = v26;
  v114 = v27;
  v113 = sub_22C3A5908(&qword_27D9BD2B8, &qword_22C9204B0);
  v28 = sub_22C36985C(v113);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v31);
  sub_22C36BA64();
  sub_22C3698F8(v32);
  v33 = sub_22C9063DC();
  v34 = sub_22C36A7A4(v33, &a16);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22C3698A8();
  sub_22C3698F8(v37);
  v117 = sub_22C90952C();
  v38 = sub_22C369824(v117);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  sub_22C3698A8();
  sub_22C3698F8(v41);
  v42 = sub_22C9093BC();
  v43 = sub_22C369824(v42);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  sub_22C369838();
  sub_22C37BDA4();
  v126 = sub_22C903E2C();
  v46 = sub_22C369824(v126);
  v122 = v47;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v46);
  sub_22C369838();
  v52 = v51 - v50;
  v125 = sub_22C90919C();
  v53 = sub_22C369824(v125);
  v116 = v54;
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v53);
  sub_22C369838();
  sub_22C37B6BC();
  v57 = sub_22C9084CC();
  v58 = sub_22C369824(v57);
  v60 = v59;
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v58);
  sub_22C369838();
  sub_22C5CA768();
  v63 = sub_22C90799C();
  v64 = 0;
  v127 = *(v63 + 16);
  v123 = (v122 + 8);
  v121 = *MEMORY[0x277D72A38];
  v120 = v42;
  v124 = v57;
  while (1)
  {
    if (v127 == v64)
    {

      v93 = 1;
      v94 = v114;
      goto LABEL_22;
    }

    if (v64 >= *(v63 + 16))
    {
      __break(1u);
      return;
    }

    v65 = *(v60 + 80);
    sub_22C36BA94();
    (*(v60 + 16))(v22, v63 + v66 + *(v60 + 72) * v64, v57);
    sub_22C9084AC();
    sub_22C903E0C();
    (*v123)(v52, v126);
    v67 = sub_22C5CA5C8();
    if (v68(v67, v42) != v121)
    {
      v81 = sub_22C5CA5C8();
      v82(v81, v42);
      goto LABEL_18;
    }

    v69 = sub_22C5CA5C8();
    v70(v69, v42);
    v71 = *v21;
    v72 = swift_projectBox();
    (*(v116 + 16))(v20, v72, v125);

    sub_22C90908C();
    v73 = sub_22C90A1BC();
    v75 = v74;

    v76 = sub_22C90A1BC();
    v78 = v77;
    if (v73 == v76 && v75 == v77)
    {
    }

    else
    {
      sub_22C38674C();
      v80 = sub_22C90B4FC();

      if ((v80 & 1) == 0)
      {
        (*(v116 + 8))(v20, v125);
        v42 = v120;
        goto LABEL_18;
      }
    }

    sub_22C370208(&a18);
    sub_22C9090AC();
    v83 = sub_22C9094BC();
    v85 = v84;
    sub_22C36BA4C(&a17);
    v86(v78, v117);
    if (v83 == v118 && v85 == v119)
    {
      break;
    }

    sub_22C38674C();
    v88 = sub_22C90B4FC();

    v89 = sub_22C5CAC40();
    v90(v89);
    v42 = v120;
    if (v88)
    {
      goto LABEL_21;
    }

LABEL_18:
    v91 = sub_22C385558();
    v57 = v124;
    v92(v91, v124);
    ++v64;
  }

  v95 = sub_22C5CAC40();
  v96(v95);
LABEL_21:

  v97 = *(v60 + 32);
  v94 = v114;
  v98 = sub_22C36FC08();
  v57 = v124;
  v99(v98);
  v93 = 0;
LABEL_22:
  sub_22C36C640(v94, v93, 1, v57);
  sub_22C386758(&a14);
  sub_22C903FBC();
  sub_22C4E719C(v94, v115, &qword_27D9BD2B8, &qword_22C9204B0);
  v100 = sub_22C9063CC();
  v101 = sub_22C90AACC();
  if (sub_22C36FBB4(v101))
  {
    sub_22C36BED8();
    v102 = swift_slowAlloc();
    sub_22C370220();
    v128 = swift_slowAlloc();
    *v102 = 136315138;
    sub_22C4E719C(v115, v112, &qword_27D9BD2B8, &qword_22C9204B0);
    sub_22C90A1AC();
    sub_22C5CAC34();
    v103 = sub_22C388EF4();
    sub_22C36DD28(v103, v104, &qword_22C9204B0);
    v105 = sub_22C36FC2C();
    v108 = sub_22C36F9F4(v105, v106, v107);

    *(v102 + 4) = v108;
    _os_log_impl(&dword_22C366000, v100, v101, "Found DynamicEnumerationEntity %s in QueryDecorationResults", v102, 0xCu);
    sub_22C36FF94(v128);
    v109 = sub_22C37F88C();
    MEMORY[0x2318B9880](v109);
    v110 = sub_22C37B310();
    MEMORY[0x2318B9880](v110);
  }

  else
  {

    sub_22C36DD28(v115, &qword_27D9BD2B8, &qword_22C9204B0);
  }

  sub_22C36FB04(&a15);
  v111(v22);
  sub_22C36CC48();
}

void sub_22C5C6C44()
{
  sub_22C36BA7C();
  v2 = v1;
  v4 = v3;
  v5 = sub_22C90355C();
  v6 = sub_22C369824(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  sub_22C36EC5C();
  v11 = sub_22C9063DC();
  v12 = sub_22C369824(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22C369838();
  sub_22C37BDA4();
  v15 = sub_22C3A5908(&qword_27D9BEC18, &unk_22C9204A0);
  sub_22C369914(v15);
  v17 = *(v16 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v18);
  sub_22C5CA768();
  sub_22C9079EC();
  v46 = *v2;
  v47 = v2[1];
  sub_22C6B08C8();

  v19 = sub_22C9081CC();
  v20 = sub_22C5CA7F4();
  sub_22C36D0A8(v20, v21, v19);
  if (v22)
  {
    sub_22C36DD28(v0, &qword_27D9BEC18, &unk_22C9204A0);
    sub_22C903FBC();
    v23 = *(v8 + 16);
    v24 = sub_22C36FC2C();
    v25(v24);
    v26 = sub_22C9063CC();
    v27 = sub_22C90AACC();
    if (os_log_type_enabled(v26, v27))
    {
      sub_22C36BED8();
      v28 = swift_slowAlloc();
      sub_22C370220();
      v48 = swift_slowAlloc();
      *v28 = 136315138;
      v29 = sub_22C90354C();
      v30 = *(v8 + 8);
      v31 = sub_22C371510();
      v32(v31);
      v33 = sub_22C37B9B0();
      sub_22C36F9F4(v33, v34, v35);
      sub_22C387194();

      *(v28 + 4) = v29;
      _os_log_impl(&dword_22C366000, v26, v27, "Unable to find %s in QueryDecorationResults", v28, 0xCu);
      sub_22C36FF94(v48);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    else
    {

      v41 = *(v8 + 8);
      v42 = sub_22C371510();
      v43(v42);
    }

    v44 = sub_22C5CA720();
    v45(v44);
    v40 = 1;
  }

  else
  {
    sub_22C36BBA8(v19);
    v37 = *(v36 + 32);
    v38 = sub_22C441720();
    v39(v38);
    v40 = 0;
  }

  sub_22C36C640(v4, v40, 1, v19);
  sub_22C36CC48();
}

uint64_t sub_22C5C6F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v69 = a6;
  v61 = a4;
  v62 = a5;
  v60 = a2;
  v71 = sub_22C90355C();
  v70 = *(v71 - 8);
  v9 = *(v70 + 64);
  MEMORY[0x28223BE20](v71);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_22C90952C();
  v64 = *(v66 - 8);
  v12 = *(v64 + 64);
  v13 = MEMORY[0x28223BE20](v66);
  v65 = (&v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v63 = &v55 - v15;
  v16 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = (&v55 - v18);
  v20 = sub_22C90399C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v55 - v26;
  v28 = sub_22C90919C();
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28);
  v33 = &v55 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {
    goto LABEL_15;
  }

  v57 = v33;
  v58 = v31;
  v59 = v30;
  v56 = a3;
  v67 = a1;
  v68 = v6;
  sub_22C9081AC();
  sub_22C90391C();
  v34 = *(v21 + 8);
  v34(v27, v20);
  v35 = sub_22C9093BC();
  if (sub_22C370B74(v19, 1, v35) != 1)
  {
    v36 = *(v35 - 8);
    if ((*(v36 + 88))(v19, v35) != *MEMORY[0x277D72A38])
    {
      (*(v36 + 8))(v19, v35);
      goto LABEL_15;
    }

    v55 = v34;
    (*(v36 + 96))(v19, v35);
    v37 = *v19;
    v38 = swift_projectBox();
    (*(v58 + 16))(v57, v38, v59);

    v39 = v63;
    sub_22C9090AC();
    v40 = v65;
    TypeIdentifier.withBackwardsCompatibleAttributedTypes.getter(v65);
    v41 = v64;
    v42 = v39;
    v43 = v40;
    v44 = v66;
    v63 = *(v64 + 8);
    (v63)(v42, v66);
    if ((*(v41 + 88))(v43, v44) != *MEMORY[0x277D72D28])
    {
      (*(v58 + 8))(v57, v59);
      (v63)(v43, v44);
      goto LABEL_15;
    }

    (*(v41 + 96))(v43, v44);
    v45 = *v43;
    v46 = *(*v43 + 24);
    v66 = *(*v43 + 16);
    v48 = *(v45 + 32);
    v47 = *(v45 + 40);

    sub_22C9081AC();
    sub_22C90394C();
    v55(v25, v20);
    v49 = sub_22C3D394C(v11, v69);
    (*(v70 + 8))(v11, v71);
    if (v49)
    {
      if (v48 == v61 && v47 == v62)
      {
      }

      else
      {
        v51 = sub_22C90B4FC();

        v52 = 0;
        if ((v51 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      if (v66 == v60 && v46 == v56)
      {
        v52 = 1;
      }

      else
      {
        v52 = sub_22C90B4FC();
      }

      goto LABEL_25;
    }

    v52 = 0;
LABEL_25:

    (*(v58 + 8))(v57, v59);
    return v52 & 1;
  }

  sub_22C36DD28(v19, &qword_27D9BB908, &qword_22C910960);
LABEL_15:
  sub_22C9081AC();
  sub_22C90394C();
  (*(v21 + 8))(v25, v20);
  v52 = sub_22C3D394C(v11, v69);
  (*(v70 + 8))(v11, v71);
  return v52 & 1;
}

void sub_22C5C75F4()
{
  sub_22C36BA7C();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v71 = v8;
  v9 = sub_22C9063DC();
  v10 = sub_22C369824(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C3698E4();
  sub_22C369930();
  MEMORY[0x28223BE20](v13);
  v70 = type metadata accessor for ContextRule();
  v14 = sub_22C369824(v70);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22C369ABC();
  sub_22C49CA04();
  MEMORY[0x28223BE20](v19);
  sub_22C3705C8();
  MEMORY[0x28223BE20](v20);
  sub_22C387B64();
  v21 = 0;
  v22 = *(v3 + 16);
  while (v22 != v21)
  {
    v23 = *(v16 + 80);
    sub_22C36BA94();
    v24 = *(v16 + 72);
    sub_22C3814E4();
    sub_22C5CA0B8(v25, v0);
    v26 = *v0 == v7 && v0[1] == v5;
    if (v26 || (sub_22C90B4FC() & 1) != 0)
    {
      sub_22C37A168();
      v28 = sub_22C36EC6C();
      sub_22C5C8974(v28, v29);
      sub_22C903FBC();
      sub_22C3814E4();
      v30 = sub_22C3726C4();
      sub_22C5CA0B8(v30, v31);

      v32 = sub_22C9063CC();
      v33 = sub_22C90AACC();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = sub_22C383050();
        sub_22C37A180();
        *v34 = 136315394;
        v35 = sub_22C371510();
        *(v34 + 4) = sub_22C36F9F4(v35, v36, v37);
        *(v34 + 12) = 2080;
        v38 = v70;
        v39 = v1 + *(v70 + 20);
        v40 = sub_22C90354C();
        sub_22C36AC94();
        sub_22C5C8874(v1, v41);
        v42 = sub_22C372FA4();
        sub_22C36F9F4(v42, v43, v44);
        sub_22C38B194();

        *(v34 + 14) = v40;
        _os_log_impl(&dword_22C366000, v32, v33, "Found %s in contextRule, returning %s)", v34, 0x16u);
        swift_arrayDestroy();
        sub_22C369B50();
        MEMORY[0x2318B9880]();
        sub_22C369B50();
        MEMORY[0x2318B9880]();

        v45 = sub_22C5CA720();
        v46(v45);
      }

      else
      {

        sub_22C36AC94();
        sub_22C5C8874(v1, v65);
        v66 = sub_22C5CA720();
        v67(v66);
        v38 = v70;
      }

      v64 = v71;
      sub_22C37A168();
      v68 = sub_22C379ED8();
      sub_22C5C8974(v68, v69);
      v63 = 0;
      goto LABEL_16;
    }

    sub_22C36AC94();
    sub_22C5C8874(v0, v27);
    ++v21;
  }

  sub_22C903FBC();

  v47 = sub_22C9063CC();
  v48 = sub_22C90AACC();

  if (os_log_type_enabled(v47, v48))
  {
    sub_22C36BED8();
    v49 = swift_slowAlloc();
    sub_22C370220();
    v72 = swift_slowAlloc();
    *v49 = 136315138;
    v50 = sub_22C371510();
    *(v49 + 4) = sub_22C36F9F4(v50, v51, v52);
    sub_22C5CAA1C();
    _os_log_impl(v53, v54, v55, v56, v57, v58);
    sub_22C36FF94(v72);
    v59 = sub_22C36D66C();
    MEMORY[0x2318B9880](v59);
    v60 = sub_22C37F88C();
    MEMORY[0x2318B9880](v60);
  }

  v61 = sub_22C5CA7C4();
  v62(v61);
  v63 = 1;
  v38 = v70;
  v64 = v71;
LABEL_16:
  sub_22C36C640(v64, v63, 1, v38);
  sub_22C36CC48();
}

void sub_22C5C79F8()
{
  sub_22C36BA7C();
  v2 = v1;
  v4 = v3;
  sub_22C388C54();
  v5 = sub_22C9063DC();
  v6 = sub_22C369824(v5);
  v44 = v7;
  v45 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C3698E4();
  sub_22C369930();
  MEMORY[0x28223BE20](v10);
  sub_22C36BA64();
  v12 = v11;
  v13 = *(v2 + 16) + 1;
  v14 = (v2 + 72);
  while (--v13)
  {
    v15 = *(v14 - 3);
    v16 = *(v14 - 2);
    v17 = *(v14 - 1);
    v18 = *v14;
    if (*(v14 - 5) != v0 || *(v14 - 4) != v4)
    {
      v14 += 6;
      if ((sub_22C90B4FC() & 1) == 0)
      {
        continue;
      }
    }

    sub_22C903FBC();

    v20 = sub_22C9063CC();
    v21 = sub_22C90AACC();

    if (os_log_type_enabled(v20, v21))
    {
      v43 = v21;
      v22 = sub_22C383050();
      v46 = sub_22C37A180();
      *v22 = 136315394;
      *(v22 + 4) = sub_22C36F9F4(v0, v4, &v46);
      *(v22 + 12) = 2080;

      v23 = sub_22C37335C();
      v26 = sub_22C36F9F4(v23, v24, v25);

      *(v22 + 14) = v26;
      _os_log_impl(&dword_22C366000, v20, v43, "Found %s in DynamicEnumerationEntityRule, returning %s)", v22, 0x16u);
      swift_arrayDestroy();
      v27 = sub_22C37B310();
      MEMORY[0x2318B9880](v27);
      sub_22C369B50();
      MEMORY[0x2318B9880]();

      (*(v44 + 8))(v12, v45);
    }

    else
    {

      v41 = sub_22C5CA7C4();
      v42(v41, v45);
    }

    goto LABEL_15;
  }

  sub_22C903FBC();

  v28 = sub_22C9063CC();
  sub_22C90AACC();

  v29 = sub_22C5CA91C();
  if (os_log_type_enabled(v29, v30))
  {
    sub_22C36BED8();
    v31 = swift_slowAlloc();
    sub_22C370220();
    v32 = swift_slowAlloc();
    v46 = v32;
    *v31 = 136315138;
    *(v31 + 4) = sub_22C36F9F4(v0, v4, &v46);
    sub_22C37F89C();
    _os_log_impl(v33, v34, v35, v36, v37, 0xCu);
    sub_22C36FF94(v32);
    v38 = sub_22C37F88C();
    MEMORY[0x2318B9880](v38);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v39 = sub_22C5CA720();
  v40(v39);
LABEL_15:
  sub_22C37335C();
  sub_22C36CC48();
}

void sub_22C5C7D5C()
{
  sub_22C36BA7C();
  sub_22C388C54();
  v42 = sub_22C9063DC();
  v1 = sub_22C369824(v42);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22C369ABC();
  sub_22C5CA690();
  MEMORY[0x28223BE20](v6);
  sub_22C5CA6F0();
  v7 = sub_22C90000C();
  v44 = sub_22C369824(v7);
  v45 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v44);
  sub_22C369838();
  v13 = v12 - v11;
  v14 = sub_22C90A17C();
  v15 = sub_22C369914(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22C369838();
  sub_22C5CA768();
  v18 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  sub_22C37F370();
  v19 = sub_22C90A0EC();
  v20 = [v18 fileExistsAtPath_];

  if (!v20)
  {
    v21 = v18;
    sub_22C903FBC();

    v22 = sub_22C9063CC();
    v23 = sub_22C90AACC();

    if (os_log_type_enabled(v22, v23))
    {
      sub_22C36BED8();
      v24 = swift_slowAlloc();
      sub_22C370220();
      v46 = swift_slowAlloc();
      *v24 = 136315138;
      v25 = sub_22C37F370();
      *(v24 + 4) = sub_22C36F9F4(v25, v26, v27);
      _os_log_impl(&dword_22C366000, v22, v23, "Planner overrides version file does not exist: %s", v24, 0xCu);
      sub_22C36FF94(v46);
      v28 = sub_22C3816C4();
      MEMORY[0x2318B9880](v28);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    (*(v3 + 8))(v0, v42);
LABEL_6:
    sub_22C37170C();
    sub_22C36CC48();
    return;
  }

  sub_22C90A15C();
  sub_22C37F370();
  sub_22C90A0CC();
  sub_22C8FFFFC();
  sub_22C3858B4();
  v29 = sub_22C90ACFC();
  v43 = *(v45 + 8);
  v43(v13, v44);

  v30 = *(v29 + 16);
  if (!v30)
  {

LABEL_22:

    goto LABEL_6;
  }

  v41 = v18;
  v31 = 0;
  v32 = (v29 + 40);
  while (1)
  {
    if (v31 >= *(v29 + 16))
    {
      __break(1u);
      goto LABEL_26;
    }

    v47 = *(v32 - 1);
    v48 = *v32;

    sub_22C8FFFEC();
    sub_22C374C34();
    v33 = sub_22C90AD3C();
    v35 = v34;
    v43(v13, v44);

    v36 = HIBYTE(v35) & 0xF;
    if ((v35 & 0x2000000000000000) == 0)
    {
      v36 = v33 & 0xFFFFFFFFFFFFLL;
    }

    if (v36)
    {
      v37 = sub_22C90AD0C();

      if (v37[2] == 2)
      {
        v38 = v37[4] == 0x6E6F6973726576 && v37[5] == 0xE700000000000000;
        if (v38 || (sub_22C90B4FC() & 1) != 0)
        {
          break;
        }
      }
    }

    ++v31;
    v32 += 2;
    if (v30 == v31)
    {

      goto LABEL_22;
    }
  }

  if (v37[2] >= 2uLL)
  {
    v40 = v37[6];
    v39 = v37[7];

    sub_22C8FFFDC();
    sub_22C90AD3C();

    v43(v13, v44);

    goto LABEL_6;
  }

LABEL_26:
  __break(1u);
}

uint64_t sub_22C5C82B8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22C382AF4;

  return sub_22C5ADF1C();
}

uint64_t sub_22C5C8350()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22C5C83F8;

  return sub_22C5AF29C();
}

uint64_t sub_22C5C83F8()
{
  sub_22C369980();
  v3 = v2;
  sub_22C369A3C();
  v5 = *(v4 + 16);
  v6 = *v1;
  sub_22C369970();
  *v7 = v6;

  v9 = *(v6 + 8);
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_22C5C8528(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  sub_22C90051C();

  sub_22C5CA6E4();
  v3();
  v5 = sub_22C36D264();

  return sub_22C38B120(v5, v6);
}

id sub_22C5C85A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_22C90A0EC();

  v11[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_22C90030C();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

unint64_t sub_22C5C86BC()
{
  result = qword_27D9BEB58;
  if (!qword_27D9BEB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEB58);
  }

  return result;
}

uint64_t sub_22C5C8710()
{
  sub_22C36D5EC();
  sub_22C370250();
  v3 = sub_22C9087BC();
  sub_22C369914(v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  v8 = sub_22C374D1C(v7);
  *v8 = v9;
  v8[1] = sub_22C46BC08;

  return sub_22C5B04FC(v2, v0, v6, v1 + v5);
}

uint64_t sub_22C5C87F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22C5C8874(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22C36985C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_22C5C88CC()
{
  result = qword_27D9BEB88;
  if (!qword_27D9BEB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEB88);
  }

  return result;
}

unint64_t sub_22C5C8920()
{
  result = qword_27D9BEBA0;
  if (!qword_27D9BEBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEBA0);
  }

  return result;
}

uint64_t sub_22C5C8974(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C369A48();
  v5 = v4(v3);
  sub_22C36985C(v5);
  v7 = *(v6 + 32);
  v8 = sub_22C36BA00();
  v9(v8);
  return a2;
}

unint64_t sub_22C5C89CC(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (*(a2 + 16) <= result)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

unint64_t sub_22C5C89E8@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    if (*(a2 + 16) > result)
    {
      v6 = sub_22C908A0C();
      return (*(*(v6 - 8) + 16))(a3, a2 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v4, v6);
    }
  }

  __break(1u);
  return result;
}

void *sub_22C5C8A88@<X0>(void *(*a1)(void *__return_ptr, uint64_t *)@<X0>, uint64_t a2@<X2>, char a3@<W3>, void *a4@<X8>)
{
  if (a3)
  {
    v6 = sub_22C908A0C();
    return sub_22C36C640(a4, 1, 1, v6);
  }

  else
  {
    v9 = a2;
    result = a1(a4, &v9);
    if (v4)
    {
      __break(1u);
    }

    else
    {
      v8 = sub_22C908A0C();
      return sub_22C36C640(a4, 0, 1, v8);
    }
  }

  return result;
}

unint64_t sub_22C5C8B28(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x2318B98A0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x2318B98A0](&v3, 8);
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

uint64_t sub_22C5C8BB4(uint64_t a1)
{
  result = sub_22C5C87F4(&qword_281433C08, type metadata accessor for PlanOverridesService);
  *(a1 + 8) = result;
  return result;
}

void sub_22C5C8C14()
{
  v0 = sub_22C908AEC();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_22C5C92FC(319, &qword_281435830, MEMORY[0x277CC9788]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of PlanOverridesService.setup(sessionState:)()
{
  sub_22C36FB38();
  v1 = v0;
  sub_22C36C89C();
  v8 = (*(v2 + 312) + **(v2 + 312));
  v3 = *(*(v2 + 312) + 4);
  v4 = swift_task_alloc();
  v5 = sub_22C374D1C(v4);
  *v5 = v6;
  v5[1] = sub_22C46BC08;

  return v8(v1);
}

uint64_t dispatch thunk of PlanOverridesService.handle(_:plannerServiceContext:)()
{
  sub_22C36D5EC();
  sub_22C370250();
  sub_22C36C89C();
  v8 = (*(v2 + 320) + **(v2 + 320));
  v3 = *(*(v2 + 320) + 4);
  v4 = swift_task_alloc();
  v5 = sub_22C374D1C(v4);
  *v5 = v6;
  v5[1] = sub_22C5C8FA8;

  return v8(v1, v0);
}

uint64_t sub_22C5C8FA8()
{
  sub_22C369980();
  v2 = v1;
  sub_22C369A3C();
  v4 = *(v3 + 16);
  v5 = *v0;
  sub_22C369970();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t dispatch thunk of PlanOverridesService.planOverrideEventFromTranscript(sessionState:)()
{
  sub_22C36D5EC();
  sub_22C370250();
  sub_22C36C89C();
  v8 = (*(v2 + 344) + **(v2 + 344));
  v3 = *(*(v2 + 344) + 4);
  v4 = swift_task_alloc();
  v5 = sub_22C374D1C(v4);
  *v5 = v6;
  v5[1] = sub_22C382AF4;

  return v8(v1, v0);
}

void sub_22C5C9274()
{
  sub_22C5C92FC(319, &qword_27D9BBB88, MEMORY[0x277D1E890]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_22C5C92FC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22C90AC6C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

_BYTE *sub_22C5C9360(_BYTE *result, int a2, int a3)
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

uint64_t sub_22C5C940C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_22C5C943C()
{
  result = qword_27D9BEBE0;
  if (!qword_27D9BEBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEBE0);
  }

  return result;
}

unint64_t sub_22C5C9494()
{
  result = qword_27D9BEBE8;
  if (!qword_27D9BEBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEBE8);
  }

  return result;
}

unint64_t sub_22C5C94EC()
{
  result = qword_27D9BEBF0;
  if (!qword_27D9BEBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEBF0);
  }

  return result;
}

unint64_t sub_22C5C9544()
{
  result = qword_27D9BEBF8;
  if (!qword_27D9BEBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEBF8);
  }

  return result;
}

unint64_t sub_22C5C959C()
{
  result = qword_27D9BEC00;
  if (!qword_27D9BEC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEC00);
  }

  return result;
}

unint64_t sub_22C5C95F4()
{
  result = qword_27D9BEC08;
  if (!qword_27D9BEC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEC08);
  }

  return result;
}

unint64_t sub_22C5C9648()
{
  result = qword_27D9BEC10;
  if (!qword_27D9BEC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEC10);
  }

  return result;
}

unsigned __int8 *sub_22C5C96C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v80 = a1;
  v81 = a2;

  result = sub_22C90A49C();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_22C8A48C8();
    v44 = v43;

    v7 = v44;
    if ((v44 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_22C90AFCC();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        if (v8 != 1)
        {
          sub_22C37751C();
          if (v25 ^ v26 | v24)
          {
            v29 = 65;
          }

          if (!(v25 ^ v26 | v24))
          {
            v30 = 58;
          }

          if (v27)
          {
            v17 = 0;
            v31 = (v27 + 1);
            do
            {
              v32 = *v31;
              if (v32 < 0x30 || v32 >= v30)
              {
                if (v32 < 0x41 || v32 >= v29)
                {
                  sub_22C5CA9F8();
                  if (!v22 || v32 >= v34)
                  {
                    goto LABEL_142;
                  }

                  v33 = -87;
                }

                else
                {
                  v33 = -55;
                }
              }

              else
              {
                v33 = -48;
              }

              v35 = v17 * a3;
              if ((v17 * a3) >> 64 != (v17 * a3) >> 63)
              {
                goto LABEL_141;
              }

              v17 = v35 + (v32 + v33);
              if (__OFADD__(v35, (v32 + v33)))
              {
                goto LABEL_141;
              }

              ++v31;
              --v28;
            }

            while (v28);
LABEL_52:
            v6 = v17;
            goto LABEL_142;
          }

          goto LABEL_72;
        }

LABEL_141:
        v6 = 0;
        goto LABEL_142;
      }

      goto LABEL_146;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v36 = a3 + 48;
        v37 = a3 + 55;
        v38 = a3 + 87;
        if (a3 > 10)
        {
          v36 = 58;
        }

        else
        {
          v38 = 97;
          v37 = 65;
        }

        if (result)
        {
          v39 = 0;
          do
          {
            v40 = *result;
            if (v40 < 0x30 || v40 >= v36)
            {
              if (v40 < 0x41 || v40 >= v37)
              {
                v6 = 0;
                if (v40 < 0x61 || v40 >= v38)
                {
                  goto LABEL_142;
                }

                v41 = -87;
              }

              else
              {
                v41 = -55;
              }
            }

            else
            {
              v41 = -48;
            }

            v42 = v39 * a3;
            if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
            {
              goto LABEL_141;
            }

            v39 = v42 + (v40 + v41);
            if (__OFADD__(v42, (v40 + v41)))
            {
              goto LABEL_141;
            }

            ++result;
            --v8;
          }

          while (v8);
          v6 = v42 + (v40 + v41);
          goto LABEL_142;
        }

        goto LABEL_72;
      }

      goto LABEL_141;
    }

    if (v8 >= 1)
    {
      if (v8 != 1)
      {
        sub_22C37751C();
        if (v11 ^ v12 | v10)
        {
          v15 = 65;
        }

        if (!(v11 ^ v12 | v10))
        {
          v16 = 58;
        }

        if (v13)
        {
          v17 = 0;
          v18 = (v13 + 1);
          while (1)
          {
            v19 = *v18;
            if (v19 < 0x30 || v19 >= v16)
            {
              if (v19 < 0x41 || v19 >= v15)
              {
                sub_22C5CA9F8();
                if (!v22 || v19 >= v21)
                {
                  goto LABEL_142;
                }

                v20 = -87;
              }

              else
              {
                v20 = -55;
              }
            }

            else
            {
              v20 = -48;
            }

            v23 = v17 * a3;
            if ((v17 * a3) >> 64 != (v17 * a3) >> 63)
            {
              goto LABEL_141;
            }

            v17 = v23 - (v19 + v20);
            if (__OFSUB__(v23, (v19 + v20)))
            {
              goto LABEL_141;
            }

            ++v18;
            if (!--v14)
            {
              goto LABEL_52;
            }
          }
        }

LABEL_72:
        v6 = 0;
LABEL_142:

        return v6;
      }

      goto LABEL_141;
    }

    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  v45 = HIBYTE(v7) & 0xF;
  v80 = v6;
  v81 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v45)
      {
        sub_22C388D18();
        if (v70 ^ v71 | v69)
        {
          v73 = 65;
        }

        if (!(v70 ^ v71 | v69))
        {
          v74 = 58;
        }

        v75 = &v80;
        while (1)
        {
          v76 = *v75;
          if (v76 < 0x30 || v76 >= v74)
          {
            if (v76 < 0x41 || v76 >= v73)
            {
              sub_22C5CA9F8();
              if (!v22 || v76 >= v78)
              {
                goto LABEL_142;
              }

              v77 = -87;
            }

            else
            {
              v77 = -55;
            }
          }

          else
          {
            v77 = -48;
          }

          v79 = v50 * a3;
          if ((v50 * a3) >> 64 != (v50 * a3) >> 63)
          {
            goto LABEL_141;
          }

          v50 = v79 + (v76 + v77);
          if (__OFADD__(v79, (v76 + v77)))
          {
            goto LABEL_141;
          }

          v75 = (v75 + 1);
          if (!--v72)
          {
            goto LABEL_140;
          }
        }
      }

      goto LABEL_141;
    }

    if (v45)
    {
      if (v45 != 1)
      {
        sub_22C388D18();
        if (v47 ^ v48 | v46)
        {
          v51 = 65;
        }

        if (!(v47 ^ v48 | v46))
        {
          v52 = 58;
        }

        v53 = &v80 + 1;
        while (1)
        {
          v54 = *v53;
          if (v54 < 0x30 || v54 >= v52)
          {
            if (v54 < 0x41 || v54 >= v51)
            {
              sub_22C5CA9F8();
              if (!v22 || v54 >= v56)
              {
                goto LABEL_142;
              }

              v55 = -87;
            }

            else
            {
              v55 = -55;
            }
          }

          else
          {
            v55 = -48;
          }

          v57 = v50 * a3;
          if ((v50 * a3) >> 64 != (v50 * a3) >> 63)
          {
            goto LABEL_141;
          }

          v50 = v57 - (v54 + v55);
          if (__OFSUB__(v57, (v54 + v55)))
          {
            goto LABEL_141;
          }

          ++v53;
          if (!--v49)
          {
            goto LABEL_140;
          }
        }
      }

      goto LABEL_141;
    }

    goto LABEL_145;
  }

  if (v45)
  {
    if (v45 != 1)
    {
      sub_22C388D18();
      if (v59 ^ v60 | v58)
      {
        v62 = 65;
      }

      if (!(v59 ^ v60 | v58))
      {
        v63 = 58;
      }

      v64 = &v80 + 1;
      do
      {
        v65 = *v64;
        if (v65 < 0x30 || v65 >= v63)
        {
          if (v65 < 0x41 || v65 >= v62)
          {
            sub_22C5CA9F8();
            if (!v22 || v65 >= v67)
            {
              goto LABEL_142;
            }

            v66 = -87;
          }

          else
          {
            v66 = -55;
          }
        }

        else
        {
          v66 = -48;
        }

        v68 = v50 * a3;
        if ((v50 * a3) >> 64 != (v50 * a3) >> 63)
        {
          goto LABEL_141;
        }

        v50 = v68 + (v65 + v66);
        if (__OFADD__(v68, (v65 + v66)))
        {
          goto LABEL_141;
        }

        ++v64;
        --v61;
      }

      while (v61);
LABEL_140:
      v6 = v50;
      goto LABEL_142;
    }

    goto LABEL_141;
  }

LABEL_147:
  __break(1u);
  return result;
}

_BYTE *sub_22C5C9BDC@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  v6 = v4 || v5 == 0;
  v7 = v6 && (result = _swift_stdlib_strtod_clocale()) != 0 && *result == 0;
  *a2 = v7;
  return result;
}

uint64_t sub_22C5C9C48(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v8 = a1 == a5 && a2 == a6;
  if (v8 && !(a3 >> 16) && v7 == a4 >> 16)
  {
    return 1;
  }

  else
  {
    return sub_22C90B46C() & 1;
  }
}

uint64_t sub_22C5C9CB0()
{
  sub_22C370250();
  v3 = *(v2 + 16);
  do
  {
    v4 = v3;
    if (!v3)
    {
      break;
    }

    --v3;
    v5 = sub_22C908A0C();
    sub_22C3699B8(v5);
  }

  while ((v0(v1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v7 + 72) * v3) & 1) == 0);
  return v4;
}

void sub_22C5C9D58()
{
  sub_22C36BA7C();
  v1 = sub_22C3A5908(&qword_27D9BB628, &unk_22C920580);
  sub_22C369914(v1);
  v3 = *(v2 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v4);
  v6 = v31 - v5;
  v8 = *v0;
  v7 = v0[1];
  v9 = v0[3];
  v33 = v0[2];
  v34 = v7;
  v31[1] = v0[4];
  v32 = v9;
  v10 = sub_22C57D74C(v8);
  v12 = v11;
  v13 = v8 + 56;
  v31[0] = v8 + 64;
  if (v14)
  {
    __break(1u);
LABEL_20:
    sub_22C372158();
    sub_22C36CC48();
  }

  else
  {
    while (1)
    {
      v15 = *(v8 + 36);
      if (v15 != v12)
      {
        break;
      }

      v16 = 1 << *(v8 + 32);
      if (v10 == v16)
      {
        goto LABEL_20;
      }

      if (v10 < 0 || v10 >= v16)
      {
        goto LABEL_22;
      }

      v17 = v10 >> 6;
      if ((*(v13 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_23;
      }

      v35 = *(*(v8 + 48) + 8 * v10);

      v34(&v35);

      v18 = v32(v6);
      sub_22C36DD28(v6, &qword_27D9BB628, &unk_22C920580);
      if (v18)
      {
        goto LABEL_20;
      }

      v19 = 1 << *(v8 + 32);
      if (v10 >= v19)
      {
        goto LABEL_24;
      }

      v20 = *(v13 + 8 * v17);
      if ((v20 & (1 << v10)) == 0)
      {
        goto LABEL_25;
      }

      if (*(v8 + 36) != v15)
      {
        goto LABEL_26;
      }

      v21 = v20 & (-2 << (v10 & 0x3F));
      if (v21)
      {
        v19 = __clz(__rbit64(v21)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = v17 << 6;
        v23 = v17 + 1;
        v24 = (v31[0] + 8 * v17);
        while (v23 < (v19 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            v27 = sub_22C372158();
            sub_22C3A5038(v27, v28, 0);
            v19 = __clz(__rbit64(v25)) + v22;
            goto LABEL_18;
          }
        }

        v29 = sub_22C372158();
        sub_22C3A5038(v29, v30, 0);
      }

LABEL_18:
      v12 = *(v8 + 36);
      v10 = v19;
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

BOOL sub_22C5C9F84(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 < 0x21 && ((0x100003E01uLL >> v3) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

LABEL_13:
    sub_22C90AF1C();
    if (!v2)
    {
      return v7;
    }

    return v5;
  }

  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

LABEL_9:
  v4 = _swift_stdlib_strtod_clocale();
  if (!v4)
  {
    return 0;
  }

  return *v4 == 0;
}

uint64_t sub_22C5CA0B8(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C369A48();
  v5 = v4(v3);
  sub_22C36985C(v5);
  v7 = *(v6 + 16);
  v8 = sub_22C36BA00();
  v9(v8);
  return a2;
}

uint64_t sub_22C5CA138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  return sub_22C5CCA3C(a1, a2, a3, *(v3 + 16));
}

uint64_t sub_22C5CA144()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_22C5CA16C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22C5CA184(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlanOverridesService.EventReference(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_22C5CA1E8(id result, void *a2, void *a3)
{
  if (result)
  {
    v4 = result;
    v5 = a2;

    return a3;
  }

  return result;
}

uint64_t sub_22C5CA290(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BD820, &unk_22C9195C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C5CA328()
{
  result = sub_22C90069C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22C5CA460()
{
  v2 = *(v0 - 200);
  v1 = *(v0 - 192);
  v3 = *(v0 - 480);
}

uint64_t sub_22C5CA470()
{
  *(v2 + 4) = v1;
  *(v2 + 12) = 2080;
  v4 = v0[73];
  v5 = v0[74];

  return sub_22C36F9F4(v4, v5, v0 + 47);
}

uint64_t sub_22C5CA498()
{
  v2 = *(v0 - 240);

  return sub_22C5C8874(v2, type metadata accessor for PlanPostProcessor);
}

uint64_t sub_22C5CA4D4(uint64_t a1)
{
  *(v2 - 128) = a1;
  *v1 = *(v2 - 352);
  return *(v2 - 304);
}

void sub_22C5CA4F8()
{
  v1 = *(v0 - 280);
  v3 = *(v0 - 168);
  v2 = *(v0 - 160);
}

void sub_22C5CA580()
{
  v1 = *(v0 - 200);
  v2 = *(v0 - 520);
  v3 = *(v0 - 312);
}

uint64_t sub_22C5CA5A8()
{
  v2 = *(v0 + 368);

  return swift_arrayDestroy();
}

uint64_t sub_22C5CA5D4()
{
  v2 = *(v0 + 112);

  return sub_22C90B47C();
}

uint64_t sub_22C5CA600()
{

  return swift_slowAlloc();
}

uint64_t sub_22C5CA6A0()
{
  result = *(v0 - 152);
  v2 = *(*(v0 - 160) + 8);
  v3 = *(v0 - 552);
  return result;
}

uint64_t sub_22C5CA6B4()
{
  result = *(v0 - 200);
  v2 = *(*(v0 - 192) + 8);
  v3 = *(v0 - 184);
  return result;
}

uint64_t sub_22C5CA744()
{
  v2 = v0[58];
  v1 = v0[59];
  v3 = v0[57];
  result = v0[55];
  v5 = v0[52];
  v6 = v0[18];
  v7 = v0[16];
  v8 = v0[12];
  v9 = v0[53] + 8;
  return result;
}

uint64_t sub_22C5CA774()
{
  v3 = *(v0 + 352);

  return sub_22C36F9F4(v3, v1, (v0 + 376));
}

uint64_t sub_22C5CA790()
{
  v2 = *(v0 - 176);
  v3 = *(v0 - 376);

  return sub_22C90889C();
}

uint64_t sub_22C5CA848()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[2];
  v4 = *(v0[8] + 32);
  return v0[9];
}

uint64_t sub_22C5CA868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(v16 - 128) = v14;
  v18 = *(v16 - 152);
  v19 = *(v16 - 408);

  return sub_22C62C9F4(v15, v18, v19, a1, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_22C5CA8A4()
{
  v2 = *(v0 - 328);

  return sub_22C9070CC();
}

uint64_t sub_22C5CA8C0()
{
  v2 = *(v0 - 328);

  return sub_22C9070CC();
}

uint64_t sub_22C5CA944()
{
  v2 = v0[54];
  result = v0[55];
  v4 = v0[50];
  v3 = v0[51];
  v5 = v0[48];
  v6 = v0[49];
  v8 = v0[44];
  v7 = v0[45];
  v10 = v0[42];
  v9 = v0[43];
  v11 = v0[40];
  v12 = v0[41];
  return result;
}

uint64_t sub_22C5CA990()
{
  result = *(v0 - 256);
  v3 = *(v1 - 496);
  return result;
}

uint64_t sub_22C5CA9A0()
{

  return sub_22C90735C();
}

uint64_t sub_22C5CA9E0()
{
  v2 = *(v1 - 144);
  result = v0;
  *(v1 - 536) = *(*(v1 - 152) + 8);
  return result;
}

uint64_t sub_22C5CAA64()
{
  result = v0;
  v3 = *(v1 - 344);
  return result;
}

uint64_t sub_22C5CAA94()
{
  v2 = *(v0 - 544);
}

uint64_t sub_22C5CAAAC()
{
  v2 = *(v0 - 328);

  return sub_22C9070CC();
}

void sub_22C5CAAC8(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

uint64_t sub_22C5CAAE4()
{
  v2 = *(v0 - 136);

  return sub_22C90708C();
}

uint64_t sub_22C5CAB00()
{
  v3 = *(v1 - 168);

  return sub_22C36F9F4(v3, v0, (v1 - 120));
}

uint64_t sub_22C5CAB1C()
{

  return sub_22C901F8C();
}

BOOL sub_22C5CAB34()
{

  return os_log_type_enabled(v1, v0);
}

uint64_t sub_22C5CAB4C()
{

  return sub_22C472384(v0 + 584, v0 + 376);
}

BOOL sub_22C5CAB64(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_22C5CAB7C()
{

  return sub_22C472384(v0 + 296, v0 + 88);
}

uint64_t sub_22C5CAB94()
{

  return sub_22C4723E0(v0 + 584);
}

uint64_t sub_22C5CABD0()
{
  v1 = *(v0[27] + 8);
  result = v0[31];
  v3 = v0[42];
  return result;
}

uint64_t sub_22C5CABF0()
{
  result = v0;
  v3 = *(v1 - 144);
  v4 = *(v1 - 136);
  v5 = *(v1 - 536);
  return result;
}

uint64_t sub_22C5CAC40()
{
  v2 = **(v1 - 200);
  result = v0;
  v4 = *(v1 - 120);
  return result;
}

void sub_22C5CAC60()
{
  *(v2 + 4) = v1;
  v3 = *(v0 + 360);
  *(v2 + 12) = 1024;
}

uint64_t sub_22C5CAC88()
{
  result = *(v0 - 1576);
  v2 = *(v0 - 1568);
  return result;
}

uint64_t sub_22C5CACD0()
{
  v1 = **(v0 + 192);
  result = *(v0 + 296);
  v3 = *(v0 + 384);
  return result;
}

uint64_t sub_22C5CAD04(uint64_t a1, uint64_t a2)
{
  v3 = v2[9];
  v4 = v2[10];
  v5 = v2[6];
  v6 = v2[5];
  sub_22C36C640(v2[2], a2, 1, v2[7]);
}

uint64_t sub_22C5CAD5C()
{

  return sub_22C90B6CC();
}

void sub_22C5CAD7C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x12u);
}

void sub_22C5CAD9C()
{

  sub_22C3B6EDC();
}

uint64_t sub_22C5CADBC()
{
  v2 = *(v0 - 184);
  v3 = *(v0 - 136);

  return sub_22C90708C();
}

uint64_t sub_22C5CADDC()
{

  return sub_22C4E719C(v2 + v4, v3, v0, v1);
}

uint64_t sub_22C5CADFC()
{
  v2 = *(v0 - 408);
}

BOOL sub_22C5CAE14()
{

  return os_log_type_enabled(v0, v1);
}

BOOL sub_22C5CAE2C()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_22C5CAE44()
{
}

uint64_t sub_22C5CAE5C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_22C9063DC();
  v5 = sub_22C369824(v4);
  v45 = v6;
  v46 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v11 = v10 - v9;
  v12 = sub_22C90046C();
  v13 = sub_22C369824(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22C369ABC();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v41 - v22;
  sub_22C9003BC();
  v24 = [objc_opt_self() defaultManager];
  sub_22C9003EC();
  v25 = sub_22C90A0EC();

  v26 = [v24 fileExistsAtPath_];

  if (!v26)
  {
    goto LABEL_9;
  }

  sub_22C5CD2D0();
  sub_22C3729F0();
  v27 = sub_22C5CBA00(v20);
  if (!v27)
  {
    goto LABEL_9;
  }

  v28 = v27;
  sub_22C9003BC();
  v29 = sub_22C5CBA00(v20);
  if (!v29)
  {
LABEL_8:

LABEL_9:
    v37 = *(v15 + 8);
    v37(a1, v12);
    result = (v37)(v23, v12);
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    return result;
  }

  v44 = v29;
  sub_22C3729F0();
  v30 = sub_22C5CBA00(v20);
  if (!v30)
  {

    v28 = v44;
    goto LABEL_8;
  }

  v31 = v30;
  v32 = v28;
  sub_22C903FBC();
  v33 = v32;
  v34 = sub_22C9063CC();
  v43 = sub_22C90AACC();
  if (os_log_type_enabled(v34, v43))
  {
    sub_22C36BED8();
    v35 = swift_slowAlloc();
    v42 = v31;
    v36 = v35;
    *v35 = 134217984;
    v41 = [v33 count];

    *(v36 + 1) = v41;
    _os_log_impl(&dword_22C366000, v34, v43, "Plan overrides tries loaded with override count: %ld", v36, 0xCu);
    v31 = v42;
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  else
  {

    v34 = v33;
  }

  v39 = *(v15 + 8);
  v39(a1, v12);
  (*(v45 + 8))(v11, v46);
  result = (v39)(v23, v12);
  v40 = v44;
  *a2 = v28;
  a2[1] = v40;
  a2[2] = v31;
  return result;
}

uint64_t sub_22C5CB200()
{
  v1 = sub_22C9063DC();
  v2 = sub_22C369824(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  v52 = v8 - v7;
  v9 = *v0;
  v10 = *(v0 + 8);
  v11 = *(v0 + 16);
  v60[0] = MEMORY[0x277D84F90];
  sub_22C90A1BC();
  v12 = sub_22C90A0EC();

  v13 = swift_allocObject();
  v13[2] = v9;
  v13[3] = v10;
  v13[4] = v11;
  v13[5] = v60;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_22C5CD228;
  *(v14 + 24) = v13;
  v58 = sub_22C5CD234;
  v59 = v14;
  sub_22C378004();
  v55 = 1107296256;
  v56 = sub_22C5C8528;
  v57 = &unk_283FBD790;
  v15 = _Block_copy(&aBlock);
  v16 = v9;
  v17 = v10;
  v18 = v11;

  [v16 lookupKey:v12 resultBlock:v15];

  _Block_release(v15);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
  }

  else
  {
    if (*(v60[0] + 16))
    {
      v51 = v16;
      v20 = v52;
      sub_22C903FBC();
      v21 = sub_22C9063CC();
      v22 = sub_22C90AACC();
      if (os_log_type_enabled(v21, v22))
      {
        v49 = v22;
        sub_22C36BED8();
        v23 = swift_slowAlloc();
        sub_22C370220();
        v48 = swift_slowAlloc();
        aBlock = v48;
        v50 = v23;
        *v23 = 136315138;
        swift_beginAccess();
        v24 = v60[0];
        v25 = *(v60[0] + 16);
        v26 = MEMORY[0x277D84F90];
        if (v25)
        {
          v44 = v21;
          v45 = v18;
          v46 = v4;
          v47 = v1;
          v53 = MEMORY[0x277D84F90];

          sub_22C3B5E2C();
          v26 = v53;
          v27 = (v24 + 40);
          do
          {
            v29 = *(v27 - 1);
            v28 = *v27;
            v30 = *(v53 + 16);
            v31 = *(v53 + 24);

            if (v30 >= v31 >> 1)
            {
              sub_22C3B5E2C();
            }

            *(v53 + 16) = v30 + 1;
            v32 = v53 + 16 * v30;
            *(v32 + 32) = v29;
            *(v32 + 40) = v28;
            v27 += 26;
            --v25;
          }

          while (v25);

          v4 = v46;
          v1 = v47;
          v20 = v52;
          v18 = v45;
          v21 = v44;
        }

        v33 = MEMORY[0x2318B7AD0](v26, MEMORY[0x277D837D0]);
        v35 = v34;

        v36 = sub_22C36F9F4(v33, v35, &aBlock);

        *(v50 + 1) = v36;
        _os_log_impl(&dword_22C366000, v21, v49, "Found exact match of utterance to overrides: %s", v50, 0xCu);
        sub_22C36FF94(v48);
        sub_22C369B50();
        MEMORY[0x2318B9880]();
        sub_22C369B50();
        MEMORY[0x2318B9880]();
      }

      (*(v4 + 8))(v20, v1);
      v16 = v51;
    }

    v37 = swift_allocObject();
    v37[2] = v16;
    v37[3] = v17;
    v37[4] = v18;
    v37[5] = v60;
    v38 = swift_allocObject();
    *(v38 + 16) = sub_22C5CD29C;
    *(v38 + 24) = v37;
    v58 = sub_22C5CD2A8;
    v59 = v38;
    sub_22C378004();
    v55 = 1107296256;
    v56 = sub_22C5CD1D0;
    v57 = &unk_283FBD808;
    v39 = _Block_copy(&aBlock);
    v40 = v16;
    v41 = v17;
    v42 = v18;

    [v41 enumerateAllRowsWithBlock_];
    _Block_release(v39);
    LOBYTE(v39) = swift_isEscapingClosureAtFileLocation();

    if ((v39 & 1) == 0)
    {
      swift_beginAccess();
      v43 = v60[0];

      return v43;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C5CB74C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_22C9063DC();
  v6 = sub_22C369824(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  v13 = v12 - v11;
  v14 = *a1;
  v33 = *a1;
  v15 = sub_22C5CBA9C(&v33);
  if (v2)
  {
  }

  v19 = v16;
  v20 = v17;
  v31 = v15;
  v21 = v19;
  v32 = v20;
  sub_22C903FBC();

  v22 = sub_22C9063CC();
  v23 = sub_22C90AACC();
  if (os_log_type_enabled(v22, v23))
  {
    sub_22C36BED8();
    v29 = v21;
    v24 = swift_slowAlloc();
    *v24 = 134217984;
    v30 = v5;
    v25 = v8;
    v26 = a2;
    v27 = *(v14 + 16);

    *(v24 + 4) = v27;
    a2 = v26;
    v8 = v25;
    v5 = v30;

    sub_22C5CD33C(&dword_22C366000, v22, v23, "Plan overrides tries created based on override count: %ld");
    v21 = v29;
    sub_22C369B50();
    MEMORY[0x2318B9880]();

    v28 = v31;
  }

  else
  {

    v28 = v31;
    swift_bridgeObjectRelease_n();
  }

  result = (*(v8 + 8))(v13, v5);
  *a2 = v28;
  a2[1] = v21;
  a2[2] = v32;
  return result;
}

uint64_t sub_22C5CB970(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_22C5CB9B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_22C5CBA00(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_22C9003AC();
  v4 = [v2 initWithURL_];

  v5 = sub_22C90046C();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

uint64_t sub_22C5CBA9C(uint64_t *a1)
{
  v95 = sub_22C90A17C();
  v2 = sub_22C369824(v95);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  v94 = v8 - v7;
  v113 = sub_22C9063DC();
  v9 = sub_22C369824(v113);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22C369ABC();
  v16 = (v14 - v15);
  v18 = MEMORY[0x28223BE20](v17);
  v105 = &v91 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v92 = &v91 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v91 - v22;
  v24 = *a1;
  v91 = [objc_allocWithZone(MarisaTrieStore) init];
  v96 = [objc_allocWithZone(MarisaTrieStore) init];
  v104 = [objc_allocWithZone(MarisaTrieStore) init];
  v119[28] = MEMORY[0x277D84FA0];
  v25 = sub_22C8FFF5C();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  result = sub_22C8FFF4C();
  v107 = result;
  v101 = *(v24 + 16);
  if (!v101)
  {
    goto LABEL_38;
  }

  v30 = 0;
  v100 = v24 + 32;
  v112 = (v11 + 8);
  v93 = (v4 + 8);
  *&v29 = 136315138;
  v109 = v29;
  v111 = v23;
  v108 = v16;
  v99 = v24;
  while (2)
  {
    if (v30 >= *(v24 + 16))
    {
LABEL_40:
      __break(1u);
      return result;
    }

    v31 = *(v100 + 8 * v30);
    v103 = v30 + 1;
    v115 = *(v31 + 16);

    v32 = 0;
    v33 = 32;
    v114 = v31;
    while (v115 != v32)
    {
      if (v32 >= *(v31 + 16))
      {
        __break(1u);
        goto LABEL_40;
      }

      memcpy(v118, (v31 + v33), sizeof(v118));
      v116 = v33;
      memmove(v119, (v31 + v33), 0xD0uLL);
      v34 = sub_22C90A1DC();
      v36 = v35;
      sub_22C472384(v118, v117);

      sub_22C6A4514(v117, v34, v36, v37, v38, v39, v40, v41, v91, v92);
      v43 = v42;

      if (v43)
      {
        v117[0] = v119[13];
        v117[1] = v119[14];
        v117[2] = v119[15];

        v44 = sub_22C5CC41C(v117);

        if (v44)
        {
          memcpy(v117, v119, sizeof(v117));
          sub_22C5A1AC0();
          v45 = v110;
          v46 = sub_22C8FFF3C();
          if (v45)
          {
            v110 = 0;

            v48 = v105;
            sub_22C903FBC();
            sub_22C472384(v119, v117);
            v49 = sub_22C9063CC();
            v50 = sub_22C90AADC();
            sub_22C4723E0(v119);
            if (os_log_type_enabled(v49, v50))
            {
              sub_22C36BED8();
              v51 = swift_slowAlloc();
              sub_22C370220();
              v52 = swift_slowAlloc();
              sub_22C36BFA0(v52);
              sub_22C4723E0(v119);
              v53 = sub_22C3887D4();

              *(v51 + 4) = v53;
              sub_22C5CD33C(&dword_22C366000, v49, v50, "Unable to convert statement to Data, ignoring statement: (%s)");
              sub_22C36FF94(v52);
              sub_22C369B50();
              MEMORY[0x2318B9880]();
              sub_22C369B50();
              MEMORY[0x2318B9880]();
            }

            else
            {
              sub_22C4723E0(v119);
            }

            sub_22C5CD330();
            v67 = v48;
            goto LABEL_25;
          }

          v68 = v46;
          v110 = 0;
          v106 = v47;
          if (v32 || (v72 = v119[3]) == 0)
          {
            sub_22C4723E0(v119);
          }

          else
          {
            v102 = v119[2];
            v73 = v119[4];

            sub_22C4723E0(v119);
            if (v73)
            {
              sub_22C472340(v102, v72);
              v74 = sub_22C90A0EC();
              [v96 addRow_];
            }

            else
            {
              v75 = v102;
              v97 = sub_22C90A1BC();
              v98 = v76;
              sub_22C472340(v75, v72);
              v77 = v94;
              sub_22C90A15C();
              v78 = sub_22C90A12C();
              v80 = v79;
              (*v93)(v77, v95);
              if (v80 >> 60 == 15)
              {

                v81 = v92;
                sub_22C903FBC();

                v82 = sub_22C9063CC();
                v83 = sub_22C90AADC();

                if (os_log_type_enabled(v82, v83))
                {
                  sub_22C36BED8();
                  v84 = swift_slowAlloc();
                  sub_22C370220();
                  v85 = swift_slowAlloc();
                  v117[0] = v85;
                  *v84 = v109;
                  *(v84 + 4) = sub_22C36F9F4(v34, v36, v117);
                  _os_log_impl(&dword_22C366000, v82, v83, "Unable to encode override statement id: %s", v84, 0xCu);
                  sub_22C36FF94(v85);
                  sub_22C369B50();
                  MEMORY[0x2318B9880]();
                  sub_22C369B50();
                  MEMORY[0x2318B9880]();

                  sub_22C5CD330();
                  v87 = v92;
                }

                else
                {

                  sub_22C5CD330();
                  v87 = v81;
                }

                v86(v87, v113);
              }

              else
              {
                v88 = sub_22C90A0EC();

                v89 = sub_22C90050C();
                [v91 addKey:v88 payload:v89];

                sub_22C3C8114(v78, v80);
              }
            }
          }

          v69 = sub_22C90A0EC();

          v70 = v106;
          v71 = sub_22C90050C();
          [v104 addKey:v69 payload:v71];

          result = sub_22C38B120(v68, v70);
        }

        else
        {

          v59 = v108;
          sub_22C903FBC();
          sub_22C472384(v119, v117);
          v60 = sub_22C9063CC();
          v61 = sub_22C90AADC();
          sub_22C4723E0(v119);
          if (os_log_type_enabled(v60, v61))
          {
            sub_22C36BED8();
            v62 = swift_slowAlloc();
            sub_22C370220();
            v63 = swift_slowAlloc();
            sub_22C36BFA0(v63);
            sub_22C4723E0(v119);
            v64 = sub_22C3887D4();

            *(v62 + 4) = v64;
            sub_22C5CD33C(&dword_22C366000, v60, v61, "Override has invalid plan value, ignoring statement: %s");
            sub_22C36FF94(v63);
            v59 = v108;
            sub_22C369B50();
            MEMORY[0x2318B9880]();
            sub_22C369B50();
            MEMORY[0x2318B9880]();
          }

          else
          {
            sub_22C4723E0(v119);
          }

          sub_22C5CD330();
          v67 = v59;
LABEL_25:
          result = v66(v67, v113);
        }

        v23 = v111;
        v31 = v114;
        v65 = v116;
        goto LABEL_27;
      }

      sub_22C903FBC();
      sub_22C472384(v119, v117);
      v54 = sub_22C9063CC();
      v55 = sub_22C90AADC();
      sub_22C4723E0(v119);
      if (os_log_type_enabled(v54, v55))
      {
        sub_22C36BED8();
        v56 = swift_slowAlloc();
        sub_22C370220();
        v57 = swift_slowAlloc();
        sub_22C36BFA0(v57);
        sub_22C4723E0(v119);
        v58 = sub_22C3887D4();

        *(v56 + 4) = v58;
        sub_22C5CD33C(&dword_22C366000, v54, v55, "Unable to insert duplicated override statement id: %s");
        sub_22C36FF94(v57);
        sub_22C369B50();
        MEMORY[0x2318B9880]();
        v23 = v111;
        sub_22C369B50();
        MEMORY[0x2318B9880]();
      }

      else
      {
        sub_22C4723E0(v119);
      }

      result = (*v112)(v23, v113);
      v65 = v116;
      v31 = v114;
LABEL_27:
      v33 = v65 + 208;
      ++v32;
    }

    v30 = v103;
    v24 = v99;
    if (v103 != v101)
    {
      continue;
    }

    break;
  }

LABEL_38:

  v90 = v91;
  [v91 buildKeyset];
  [v96 buildKeyset];
  [v104 buildKeyset];

  return v90;
}