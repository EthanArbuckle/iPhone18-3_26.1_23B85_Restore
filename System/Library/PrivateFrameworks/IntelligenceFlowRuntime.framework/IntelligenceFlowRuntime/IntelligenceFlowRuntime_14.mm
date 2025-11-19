uint64_t sub_22BCAE790(uint64_t a1, uint64_t a2)
{
  v4 = _s16CandidateSummaryVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BCAE7F4(uint64_t a1)
{
  v2 = _s16CandidateSummaryVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22BCAE87C(uint64_t result, uint64_t a2, uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t), uint64_t (*a4)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(a2 + 16);
    result = a3(0, result, v5, a2);
    if (v6)
    {
      result = v5;
    }

    if (v5 >= result)
    {
      v7 = a4();

      return v7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22BCAE924(uint64_t a1, uint64_t a2)
{
  v4 = _s16CandidateSummaryVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_22BCAE988()
{
  sub_22BB30F94();
  v285 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v264 = _s29ParameterDisambiguationResultVMa(0);
  v8 = sub_22BB2F330(v264);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BB305A8();
  v12 = sub_22BB30B8C(v11);
  v263 = _s27ParameterConfirmationResultVMa(v12);
  v13 = sub_22BB2F330(v263);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BB30574();
  v16 = sub_22BB39768();
  found = _s33ParameterCandidatesNotFoundResultVMa(v16);
  v18 = sub_22BB2F0C8(found);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BB305A8();
  sub_22BB30B8C(v21);
  v266 = _s15CandidateResultVMa();
  v22 = sub_22BB30444(v266);
  v260 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22BB305A8();
  sub_22BB2F14C(v26);
  v27 = sub_22BBE6DE0(&qword_27D8E3EA8, &qword_22BDC1378);
  v28 = sub_22BB2F0C8(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v31);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v32);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v33);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v34);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v35);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v36);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v37);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v38);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v39);
  sub_22BB2F39C();
  v278 = v40;
  v41 = sub_22BB2F120();
  v279 = type metadata accessor for FeedbackLearning.CandidateDefinition(v41);
  v42 = sub_22BB30444(v279);
  v284 = v43;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v42);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v46);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v47);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v48);
  sub_22BB2F39C();
  v280 = v49;
  v50 = sub_22BB2F120();
  v51 = _s25ParameterNotAllowedResultVMa(v50);
  v52 = sub_22BB2F0C8(v51);
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v52);
  sub_22BB305A8();
  v56 = sub_22BB30B8C(v55);
  v272 = _s19ParameterStepResultOMa(v56);
  v57 = sub_22BB2F330(v272);
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v57);
  sub_22BB30574();
  v62 = v61 - v60;
  v273 = _s23ParameterStepEvaluationVMa(0);
  v63 = sub_22BB30444(v273);
  v282 = v64;
  v66 = *(v65 + 64);
  MEMORY[0x28223BE20](v63);
  sub_22BB305A8();
  v283 = v67;
  sub_22BB2F120();
  v68 = sub_22BDB4C34();
  v69 = sub_22BB30444(v68);
  v71 = v70;
  v73 = *(v72 + 64);
  MEMORY[0x28223BE20](v69);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v74);
  v76 = v240 - v75;
  v255 = sub_22BDB77D4();
  v77 = sub_22BB30444(v255);
  v253 = v78;
  v80 = *(v79 + 64);
  MEMORY[0x28223BE20](v77);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v81);
  v286 = v7;
  v287 = v5;
  v248 = v5;
  v82 = v3;
  v288 = v3;

  sub_22BDA257C();
  v84 = v83;
  sub_22BDB6404();
  v252 = v71;
  v85 = *(v71 + 16);
  v247 = v7;
  v243 = v71 + 16;
  v242 = v85;
  v85(v76, v7, v68);

  v86 = sub_22BDB77C4();
  v87 = sub_22BDBB0F4();
  v251 = v84;

  v250 = v82;

  v88 = os_log_type_enabled(v86, v87);
  v270 = v62;
  v246 = v68;
  if (v88)
  {
    v62 = sub_22BB314C8();
    v285 = swift_slowAlloc();
    v289 = v285;
    *v62 = 136315650;
    sub_22BB36584();
    sub_22BCB6774(v89, v90);
    v91 = sub_22BDBB684();
    v93 = v92;
    v94 = sub_22BB3A444();
    v95(v94);
    v96 = sub_22BB32EE0(v91, v93, &v289);

    *(v62 + 4) = v96;
    *(v62 + 12) = 2080;
    *(v62 + 14) = sub_22BB32EE0(v248, v250, &v289);
    *(v62 + 22) = 2080;
    v97 = v87;
    v98 = v251;
    v99 = MEMORY[0x2318A4D50](v251, v273);
    v101 = sub_22BB32EE0(v99, v100, &v289);

    *(v62 + 24) = v101;
    _os_log_impl(&dword_22BB2C000, v86, v97, "Matching step evaluations for statementId=%s and parameter=%s: %s", v62, 0x20u);
    swift_arrayDestroy();
    sub_22BB30AF0();
    sub_22BB6BE68();
    sub_22BB30AF0();

    v102 = sub_22BB52938();
    v103(v102);
  }

  else
  {

    v104 = sub_22BB3A444();
    v105(v104);
    v106 = sub_22BB52938();
    v107(v106);
    v98 = v251;
  }

  v108 = v278;
  v109 = v265;
  v110 = v271;
  v111 = v269;
  v112 = v280;
  v277 = *(v98 + 16);
  if (v277)
  {
    v113 = *(v282 + 80);
    sub_22BB2F390();
    v276 = v115 + v116;
    v117 = *(v273 + 28);
    v274 = *(v118 + 72);
    v275 = v117;
    v119 = MEMORY[0x277D84F90];
    v256 = xmmword_22BDBCBD0;
    v258 = v0;
    while (1)
    {
      v281 = v114;
      v282 = v119;
      v119 = v283;
      sub_22BCB66B0(v276 + v274 * v114, v283);
      sub_22BCB66B0(v119 + v275, v62);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          v145 = v0;
          v146 = sub_22BBC785C();
          v147 = v267;
          sub_22BCB6584(v146, v267);
          v62 = *(v273 + 24);
          v148 = sub_22BDBA594();
          sub_22BB30ED8(v148);
          (*(v149 + 16))(v112, v147);
          sub_22BB31F54();
          swift_storeEnumTagMultiPayload();
          v120 = v283 + v62;
          sub_22BDB8344();
          v119 = v282;
          if (v150)
          {
            sub_22BB73B98(129);
            sub_22BCB6EB8();
            v120 = v151;
          }

          else
          {
            sub_22BB73B98(129);
            sub_22BCB743C();
            sub_22BB92264(&v279);
            v62 = &qword_27D8E3EA8;
            sub_22BBBEE60(v158, v159, &qword_27D8E3EA8, &qword_22BDC1378);
            sub_22BB2F4B8();
            if (v154)
            {
              sub_22BB58728(v108, &qword_27D8E3EA8, &qword_22BDC1378);
              v120 = 0;
            }

            else
            {
              sub_22BB32BE4();
              v119 = v259;
              sub_22BCB6584(v120, v259);
              sub_22BBE6DE0(&qword_27D8E3EB8, &unk_22BDC3000);
              v174 = sub_22BB3624C();
              v175 = sub_22BB32760(v174);
              sub_22BB3ABAC(v175, v176);
              sub_22BB58728(v108, &qword_27D8E3EA8, &qword_22BDC1378);
            }
          }

          v0 = v145;
          sub_22BB6BE68();
          sub_22BB356B0();
          sub_22BCB652C(v112, v177);
          sub_22BCB652C(v267, _s25ParameterNotAllowedResultVMa);
          goto LABEL_52;
        case 2u:
          v133 = sub_22BBC785C();
          v119 = v268;
          sub_22BCB6584(v133, v268);
          v112 = *(v273 + 24);
          v134 = sub_22BDBA594();
          sub_22BB30ED8(v134);
          (*(v135 + 16))(v111, v119);
          sub_22BB51864();
          v120 = v283 + v112;
          sub_22BDB8344();
          if (v136)
          {
            sub_22BB73B98(129);
            sub_22BCB6EB8();
            v120 = v137;
            sub_22BB33094();
          }

          else
          {
            v110 = v109;
            sub_22BB73B98(129);
            sub_22BB3E368(&v290);
            sub_22BCB743C();
            sub_22BB92264(&v280);
            sub_22BBBEE60(v152, v153, &qword_27D8E3EA8, &qword_22BDC1378);
            sub_22BB2F4B8();
            if (v154)
            {
              sub_22BB3A944();
              sub_22BB58728(v155, v156, v157);
              v120 = 0;
            }

            else
            {
              sub_22BB32BE4();
              v119 = v259;
              sub_22BCB6584(v120, v259);
              sub_22BBE6DE0(&qword_27D8E3EB8, &unk_22BDC3000);
              v165 = sub_22BB3624C();
              v166 = sub_22BB32760(v165);
              sub_22BCB6584(v166, v167);
              sub_22BB3A944();
              sub_22BB58728(v168, v169, v170);
            }

            sub_22BB33094();
            sub_22BB3CAD8();
          }

          sub_22BB356B0();
          sub_22BCB652C(v111, v171);
          v172 = _s33ParameterCandidatesNotFoundResultVMa;
          v173 = v268;
          goto LABEL_51;
        case 3u:
          v138 = sub_22BBC785C();
          sub_22BCB6584(v138, v0);
          v111 = v110;
          v110 = *(v273 + 24);
          v112 = *(v0 + *(v263 + 20));
          v139 = sub_22BDBA594();
          sub_22BB30ED8(v139);
          (*(v140 + 16))(v111, v0);
          sub_22BB51864();
          v120 = v283 + v110;
          sub_22BDB8344();
          if (v112)
          {
            v120 = v257;
            if (v112 == 1)
            {
              v110 = v271;
              v111 = v269;
              sub_22BB33094();
              if (v143)
              {
                v144 = 1;
LABEL_34:
                sub_22BB73B98(v144);
                sub_22BCB6EB8();
                v120 = v164;
                goto LABEL_50;
              }

              LOBYTE(v289) = 1;
              v62 = v142;
              sub_22BCB743C();
              sub_22BB92264(&v264);
              v111 = &qword_27D8E3EA8;
              sub_22BBBEE60(v178, v179, &qword_27D8E3EA8, &qword_22BDC1378);
              sub_22BB2F4B8();
              if (v154)
              {
                sub_22BB3A944();
                sub_22BB58728(v180, v181, v182);
                v120 = 0;
              }

              else
              {
                sub_22BB32BE4();
                v119 = v259;
                sub_22BCB6584(v120, v259);
                sub_22BBE6DE0(&qword_27D8E3EB8, &unk_22BDC3000);
                v195 = sub_22BB3624C();
                v196 = sub_22BB32760(v195);
                sub_22BB3ABAC(v196, v197);
                sub_22BB3A944();
                sub_22BB58728(v198, v199, v200);
              }

              sub_22BB6BE68();
              v109 = v265;
              sub_22BB72094();
            }

            else
            {
              sub_22BB3CAD8();
              sub_22BB72094();
              sub_22BB33094();
              if (v163)
              {
                v144 = 2;
                goto LABEL_34;
              }

              sub_22BB73B98(2);
              v189 = v110;
              v190 = v240[3];
              v191 = v189;
              sub_22BCB743C();
              v111 = &qword_27D8E3EA8;
              sub_22BBBEE60(v190, v120, &qword_27D8E3EA8, &qword_22BDC1378);
              sub_22BB2F4B8();
              if (v154)
              {
                sub_22BB3A944();
                sub_22BB58728(v192, v193, v194);
                v120 = 0;
              }

              else
              {
                sub_22BB32BE4();
                v119 = v259;
                sub_22BCB6584(v120, v259);
                sub_22BBE6DE0(&qword_27D8E3EB8, &unk_22BDC3000);
                v207 = sub_22BB3624C();
                v208 = sub_22BB32760(v207);
                sub_22BB3ABAC(v208, v209);
                sub_22BB3A944();
                sub_22BB58728(v210, v211, v212);
              }

              v109 = v265;
              v110 = v191;
              sub_22BB72094();
            }
          }

          else if (v141)
          {
            LOBYTE(v289) = 0;
            sub_22BB3CAD8();
            sub_22BCB6EB8();
            v120 = v162;
            sub_22BB72094();
            sub_22BB33094();
          }

          else
          {
            LOBYTE(v289) = 0;
            sub_22BB3E368(&v272);
            v110 = v271;
            sub_22BCB743C();
            sub_22BB92264(&v263);
            sub_22BBBEE60(v183, v184, &qword_27D8E3EA8, &qword_22BDC1378);
            sub_22BB2F4B8();
            v185 = v269;
            if (v154)
            {
              sub_22BB3A944();
              sub_22BB58728(v186, v187, v188);
              v120 = 0;
            }

            else
            {
              sub_22BB32BE4();
              v119 = v259;
              sub_22BCB6584(v120, v259);
              sub_22BBE6DE0(&qword_27D8E3EB8, &unk_22BDC3000);
              v201 = sub_22BB3624C();
              v202 = sub_22BB32760(v201);
              sub_22BCB6584(v202, v203);
              sub_22BB3A944();
              sub_22BB58728(v204, v205, v206);
            }

            sub_22BB33094();
            v0 = v258;
            v111 = v185;
          }

LABEL_50:
          sub_22BB356B0();
          sub_22BCB652C(v110, v213);
          v172 = _s27ParameterConfirmationResultVMa;
          v173 = v0;
LABEL_51:
          sub_22BCB652C(v173, v172);
LABEL_52:
          sub_22BB3AD08();
          if (v120)
          {
LABEL_53:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v217 = *(v119 + 16);
              sub_22BB305BC();
              sub_22BD8FD18();
              v119 = v218;
            }

            v215 = *(v119 + 16);
            v214 = *(v119 + 24);
            v216 = v281;
            if (v215 >= v214 >> 1)
            {
              sub_22BB2F158(v214);
              sub_22BD8FD18();
              v216 = v281;
              v119 = v219;
            }

            *(v119 + 16) = v215 + 1;
            *(v119 + 8 * v215 + 32) = v120;
            v108 = v278;
            v112 = v280;
          }

          else
          {
            v216 = v281;
          }

          v114 = v216 + 1;
          if (v114 == v277)
          {

            v220 = v119;
            goto LABEL_62;
          }

          break;
        case 4u:
          v121 = sub_22BBC785C();
          v122 = sub_22BCB6584(v121, v109);
          v123 = *v109;
          v124 = *(v264 + 20);
          v62 = *(*v109 + 16);
          if (v62)
          {
            v261 = *(v273 + 24);
            v262 = v124;
            sub_22BB3323C(MEMORY[0x277D84F90]);
            sub_22BD27DB8();
            v125 = v289;
            v285 = sub_22BDBA594();
            sub_22BB2F330(v285);
            v110 = *(v126 + 16);
            v127 = v123 + ((*(v126 + 80) + 32) & ~*(v126 + 80));
            v128 = *(v126 + 72);
            v111 = v254;
            do
            {
              (v110)(v111, v127, v285);
              sub_22BB51864();
              v289 = v125;
              v130 = *(v125 + 16);
              v129 = *(v125 + 24);
              if (v130 >= v129 >> 1)
              {
                sub_22BB2F158(v129);
                sub_22BD27DB8();
                v125 = v289;
              }

              *(v125 + 16) = v130 + 1;
              sub_22BB2F374();
              sub_22BCB6584(v111, v125 + v131 + *(v132 + 72) * v130);
              v127 += v128;
              --v62;
            }

            while (v62);
            v109 = v265;
            v0 = v258;
            sub_22BB3CAD8();
            sub_22BB72094();
            v119 = v282;
          }

          else
          {
            v119 = v282;
          }

          MEMORY[0x28223BE20](v122);
          v240[-2] = v160;
          sub_22BCB8100();
          v120 = v161;

          sub_22BCB652C(v109, _s29ParameterDisambiguationResultVMa);
          v108 = v278;
          v112 = v280;
          sub_22BB6BE68();
          goto LABEL_52;
        default:
          sub_22BCB652C(v62, _s19ParameterStepResultOMa);
          sub_22BB3AD08();
          v120 = MEMORY[0x277D84F90];
          v119 = v282;
          goto LABEL_53;
      }
    }
  }

  v220 = MEMORY[0x277D84F90];
LABEL_62:
  sub_22BDB6404();
  v221 = v245;
  v222 = v246;
  v242(v245, v247, v246);
  v223 = v250;

  v224 = sub_22BDB77C4();
  v225 = sub_22BDBB0F4();

  if (os_log_type_enabled(v224, v225))
  {
    v226 = sub_22BB314C8();
    v289 = swift_slowAlloc();
    *v226 = 136315650;
    sub_22BB36584();
    sub_22BCB6774(v227, v228);
    v229 = sub_22BDBB684();
    v231 = v230;
    sub_22BB34EEC(&v278);
    v241(v221, v232);
    v233 = sub_22BB32EE0(v229, v231, &v289);

    *(v226 + 4) = v233;
    *(v226 + 12) = 2080;
    *(v226 + 14) = sub_22BB32EE0(v248, v223, &v289);
    *(v226 + 22) = 2080;
    v234 = sub_22BBE6DE0(&qword_27D8E3EB0, &qword_22BDC1380);
    v235 = MEMORY[0x2318A4D50](v220, v234);
    v237 = sub_22BB32EE0(v235, v236, &v289);

    *(v226 + 24) = v237;
    _os_log_impl(&dword_22BB2C000, v224, v225, "Generated candidate results for statementId=%s and parameter=%s: %s", v226, 0x20u);
    swift_arrayDestroy();
    sub_22BB30AF0();
    sub_22BB30AF0();

    v238 = v249;
    v239 = v255;
  }

  else
  {

    sub_22BB34EEC(&v278);
    v241(v221, v222);
    v238 = sub_22BB2F3F0();
  }

  v244(v238, v239);
  sub_22BCDFC54(v220);

  sub_22BB314EC();
}

uint64_t sub_22BCAFE00@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_22BDB4C34();
  sub_22BB30ED8(v10);
  (*(v11 + 16))(a5, a2);
  v12 = _s16CandidateSummaryVMa(0);
  v13 = (a5 + v12[5]);
  *v13 = a3;
  v13[1] = a4;
  type metadata accessor for FeedbackLearning.CandidateParameter(0);
  swift_storeEnumTagMultiPayload();
  v14 = _s15CandidateResultVMa();
  sub_22BCB66B0(&a1[*(v14 + 20)], a5 + v12[6]);
  v15 = *(v14 + 24);
  v16 = v12[7];
  v17 = sub_22BDB7B44();
  sub_22BB30ED8(v17);
  (*(v18 + 16))(a5 + v16, &a1[v15]);
  *(a5 + v12[8]) = *a1;
  *(a5 + v12[9]) = 1;
  sub_22BB331C8();
  sub_22BB336D0(v19, v20, v21, v12);
}

uint64_t sub_22BCAFF4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = _s23ParameterStepEvaluationVMa(0);
  v8 = *(v7 + 20);
  if (sub_22BDB4C04())
  {
    v9 = a1 + *(v7 + 24);
    if (sub_22BDB8374() == a3 && v10 == a4)
    {
      v12 = 1;
    }

    else
    {
      v12 = sub_22BDBB6D4();
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

void sub_22BCB0000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BB30F94();
  a19 = v22;
  a20 = v23;
  v24 = v20;
  v297 = v25;
  v27 = v26;
  v314 = sub_22BDB7B44();
  v28 = sub_22BB30444(v314);
  v305 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  sub_22BB305A8();
  sub_22BB30B8C(v32);
  v263 = sub_22BDB9BD4();
  v33 = sub_22BB30444(v263);
  v296 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v37);
  sub_22BB2F39C();
  sub_22BB30B8C(v38);
  v261 = sub_22BDBA994();
  v39 = sub_22BB30444(v261);
  v295 = v40;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v39);
  sub_22BB305A8();
  sub_22BB30B8C(v43);
  v260 = sub_22BDB9F84();
  v44 = sub_22BB30444(v260);
  v292 = v45;
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v44);
  sub_22BB305A8();
  sub_22BB30B8C(v48);
  v272 = sub_22BDBA014();
  v49 = sub_22BB30444(v272);
  v286 = v50;
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v49);
  sub_22BB305A8();
  v54 = sub_22BB30B8C(v53);
  v303 = _s19ToolboxSearchResultVMa(v54);
  v55 = sub_22BB2F330(v303);
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v55);
  sub_22BB305A8();
  sub_22BB30B8C(v58);
  v282 = sub_22BDB77D4();
  v59 = sub_22BB30444(v282);
  v277 = v60;
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v59);
  sub_22BB305A8();
  sub_22BB2F14C(v63);
  v64 = sub_22BBE6DE0(&qword_27D8E3818, &qword_22BDBFB88);
  sub_22BB2F0C8(v64);
  v66 = *(v65 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v67);
  sub_22BB3848C();
  v307 = sub_22BDB9BE4();
  v68 = sub_22BB30444(v307);
  v70 = v69;
  v72 = *(v71 + 64);
  MEMORY[0x28223BE20](v68);
  sub_22BB30C74();
  v75 = v73 - v74;
  MEMORY[0x28223BE20](v76);
  sub_22BB2F39C();
  sub_22BB2F14C(v77);
  v78 = sub_22BBE6DE0(&qword_27D8E3E50, &unk_22BDC1320);
  v79 = sub_22BB2F0C8(v78);
  v81 = *(v80 + 64);
  MEMORY[0x28223BE20](v79);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v82);
  sub_22BB2F39C();
  v309 = v83;
  sub_22BB2F120();
  v84 = sub_22BDB8E14();
  v85 = sub_22BB30444(v84);
  v87 = v86;
  v89 = *(v88 + 64);
  MEMORY[0x28223BE20](v85);
  sub_22BB30560();
  sub_22BB30B7C();
  v91 = MEMORY[0x28223BE20](v90);
  v93 = v253 - v92;
  MEMORY[0x28223BE20](v91);
  sub_22BB2F39C();
  v302 = v94;
  v95 = sub_22BBE6DE0(&qword_27D8E2F30, &qword_22BDC1240);
  v96 = sub_22BB2F0C8(v95);
  v98 = *(v97 + 64);
  MEMORY[0x28223BE20](v96);
  sub_22BB30560();
  v311 = v99;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v100);
  v102 = (v253 - v101);
  v103 = sub_22BBE6DE0(&qword_27D8E3E80, &qword_22BDC1350);
  v104 = sub_22BB2F0C8(v103);
  v106 = *(v105 + 64);
  MEMORY[0x28223BE20](v104);
  sub_22BB30560();
  v306 = v107;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v108);
  sub_22BB2F384();
  v310 = v109;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v110);
  sub_22BB2F39C();
  v301 = v111;
  v312 = sub_22BBE6DE0(&qword_27D8E3E60, &qword_22BDC23E0);
  v112 = sub_22BB2F330(v312);
  v114 = *(v113 + 64);
  MEMORY[0x28223BE20](v112);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v115);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v116);
  sub_22BB2F384();
  v308 = v117;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v118);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v119);
  sub_22BB2F39C();
  v313 = v120;
  v121 = sub_22BB2F120();
  v122 = _s14ActionExecutedVMa(v121);
  v123 = sub_22BB2F0C8(v122);
  v125 = *(v124 + 64);
  MEMORY[0x28223BE20](v123);
  sub_22BB30574();
  v128 = v127 - v126;
  v130 = *(v24 + *(v129 + 32));
  v315 = v27;
  sub_22BCA8598();
  v132 = v131;
  sub_22BB3B37C();
  v294 = v128;
  sub_22BCB66B0(v24, v128);
  v133 = 0;
  v293 = v132;
  v304 = *(v132 + 16);
  v300 = (v87 + 16);
  v287[1] = v87 + 32;
  v278 = (v70 + 32);
  v287[0] = v87;
  v299 = (v87 + 8);
  v134 = v102;
  sub_22BB34EEC(&v308);
  v277 = v135;
  v276 = (v70 + 16);
  v275 = v70 + 88;
  v274 = *MEMORY[0x277D1E8E0];
  v267 = *MEMORY[0x277D1E8C8];
  v264 = *MEMORY[0x277D1E8D0];
  v258 = *MEMORY[0x277D1E8D8];
  v273 = v70 + 96;
  v257 = v296 + 32;
  v256 = v296 + 16;
  v255 = v296 + 88;
  v254 = *MEMORY[0x277D1E8B8];
  v253[4] = v296 + 96;
  v270 = v286 + 32;
  v269 = v286 + 8;
  v253[3] = v296 + 8;
  v253[2] = v292 + 4;
  sub_22BB34EEC(&a15);
  v253[1] = v136;
  v253[0] = v137 + 8;
  v138 = (v305 + 32);
  v296 = v305 + 8;
  *&v139 = 136315138;
  v266 = v139;
  v285 = v75;
  v295 = v84;
  v305 = v93;
  v280 = v21;
  v289 = v102;
  v292 = v138;
  while (1)
  {
    if (v133 == v304)
    {
      v140 = 1;
      v133 = v304;
      v142 = v308;
      v141 = v309;
      goto LABEL_7;
    }

    if (v133 >= v304)
    {
      break;
    }

    sub_22BB2F374();
    (*(v144 + 16))(v134, v293 + v143 + *(v144 + 72) * v133, v84);
    v145 = __OFADD__(v133++, 1);
    v142 = v308;
    v141 = v309;
    if (v145)
    {
      goto LABEL_49;
    }

    v140 = 0;
LABEL_7:
    v146 = 1;
    sub_22BB336D0(v134, v140, 1, v84);
    v147 = v311;
    sub_22BBDB5D0(v134, v311, &qword_27D8E2F30, &qword_22BDC1240);
    sub_22BB31814(v147, 1, v84);
    if (v179)
    {
      goto LABEL_30;
    }

    sub_22BB30F88(&v317);
    v134 = v302;
    v148(v302, v311, v84);
    sub_22BDB9BF4();
    sub_22BB31814(v21, 1, v307);
    if (v179)
    {
      v286 = v133;
      sub_22BB58728(v21, &qword_27D8E3818, &qword_22BDBFB88);
      v21 = v281;
      sub_22BDB6404();
      v149 = *v300;
      (*v300)(v93, v134, v84);
      v150 = sub_22BDB77C4();
      v151 = sub_22BDBB114();
      if (os_log_type_enabled(v150, v151))
      {
        v152 = swift_slowAlloc();
        v134 = sub_22BB314C8();
        v316 = v134;
        *v152 = v266;
        v149(v268, v305, v84);
        v153 = sub_22BDBAC14();
        v155 = v154;
        (*v299)(v305, v84);
        v156 = sub_22BB32EE0(v153, v155, &v316);

        *(v152 + 4) = v156;
        v142 = v308;
        v93 = v305;
        _os_log_impl(&dword_22BB2C000, v150, v151, "Cannot find a tool definition for %s", v152, 0xCu);
        sub_22BB32FA4(v134);
        sub_22BB30AF0();
        v141 = v309;
        sub_22BB30AF0();
      }

      else
      {

        (*v299)(v93, v84);
      }

      sub_22BB30F88(&v308);
      v157(v21, v282);
      sub_22BB36BE8();
      v133 = v286;
    }

    else
    {
      v158 = *v278;
      v159 = v279;
      v160 = v307;
      (*v278)(v279, v21, v307);
      (*v300)(v141, v134, v84);
      v161 = v160;
      v142 = v308;
      v158(v141 + *(v303 + 20), v159, v161);
      v162 = 0;
      v134 = v289;
    }

    v163 = v303;
    sub_22BB336D0(v141, v162, 1, v303);
    v164 = v141;
    v165 = v141;
    v166 = v290;
    sub_22BBBEE60(v164, v290, &qword_27D8E3E50, &unk_22BDC1320);
    v167 = sub_22BB2F3FC();
    sub_22BB31814(v167, v168, v163);
    if (!v179)
    {
      sub_22BB3A614();
      v173 = v291;
      sub_22BCB6584(v166, v291);
      v174 = v173 + *(v303 + 20);
      v175 = v285;
      v176 = v307;
      (*v276)(v285, v174, v307);
      sub_22BB30F88(&v306);
      v177 = sub_22BB3182C();
      v178(v177);
      sub_22BB33FE8(&v305 + 4);
      v138 = v292;
      if (v179)
      {
        sub_22BB30F88(&v304);
        v180(v175, v307);
        sub_22BB30F88(&v301);
        v181 = sub_22BB2F3F0();
        v182 = v272;
        v183(v181);
        sub_22BDBA004();
        v184 = sub_22BB38AC4(&v300);
        v185(v184, v182);
        goto LABEL_20;
      }

      sub_22BB33FE8(&v298 + 4);
      v186 = v309;
      v84 = v295;
      if (v187)
      {
        sub_22BB30F88(&v304);
        v188 = v285;
        v189(v285, v307);
        sub_22BB30F88(&v301);
        v190 = v188;
        v191 = v272;
        v192(v271, v190, v272);
        sub_22BDBA004();
        v193 = sub_22BB38AC4(&v300);
        v195 = v191;
      }

      else
      {
        sub_22BB33FE8(&v293 + 4);
        if (!v196)
        {
          sub_22BB33FE8(v287 + 4);
          v234 = v263;
          v235 = v262;
          if (!v233)
          {
            goto LABEL_51;
          }

          v236 = v21;
          sub_22BB30F88(&v304);
          v237 = v285;
          v238(v285);
          sub_22BB30F88(&v286);
          v239 = v265;
          v240(v265, v237, v234);
          v241 = sub_22BB38AC4(&v285);
          v242(v241, v239, v234);
          v243 = sub_22BB38AC4(&v284);
          v244(v243, v234);
          sub_22BB33FE8(&v283 + 4);
          if (!v179)
          {
            goto LABEL_51;
          }

          v245 = sub_22BB38AC4(&v282);
          v246(v245, v234);
          sub_22BB30F88(&v301);
          v247 = v271;
          v248 = v272;
          v249(v271, v235, v272);
          sub_22BDBA004();
          sub_22BB30F88(&v300);
          v250(v247, v248);
          sub_22BB30F88(&v281);
          v251(v265, v234);
          v21 = v236;
LABEL_20:
          v186 = v309;
          v84 = v295;
LABEL_28:
          sub_22BB331C8();
          sub_22BB336D0(v202, v203, v204, v314);
          sub_22BBDB5D0(v142, v310, &qword_27D8E3E60, &qword_22BDC23E0);
          sub_22BB33CE8();
          sub_22BCB652C(v291, v205);
          sub_22BB58728(v186, &qword_27D8E3E50, &unk_22BDC1320);
          v172 = v302;
          goto LABEL_29;
        }

        sub_22BB30F88(&v304);
        v197(v285, v307);
        sub_22BB30F88(&v280);
        v198 = v259;
        v199 = v260;
        v200(v259, v285, v260);
        sub_22BB3E368(&v289);
        sub_22BDB9F74();
        sub_22BDBA964();
        sub_22BB30F88(&v279);
        v201(v176, v261);
        sub_22BB30F88(&v278);
        v193 = v198;
        v138 = v292;
        v84 = v295;
        v195 = v199;
        v186 = v309;
      }

      v194(v193, v195);
      goto LABEL_28;
    }

    sub_22BB58728(v165, &qword_27D8E3E50, &unk_22BDC1320);
    sub_22BB30B28();
    sub_22BB336D0(v169, v170, v171, v314);
    v84 = v295;
    v172 = v302;
    v138 = v292;
LABEL_29:
    (*v299)(v172, v84);
    v146 = 0;
LABEL_30:
    v206 = v310;
    v207 = v146;
    v208 = v312;
    sub_22BB336D0(v310, v207, 1, v312);
    sub_22BB31814(v206, 1, v208);
    if (v179)
    {
      sub_22BB58728(v206, &qword_27D8E3E80, &qword_22BDC1350);
      v209 = 1;
      goto LABEL_36;
    }

    v210 = v288;
    sub_22BBDB5D0(v206, v288, &qword_27D8E3E60, &qword_22BDC23E0);
    v211 = sub_22BB2F3FC();
    sub_22BB31814(v211, v212, v314);
    if (v213)
    {
      v214 = sub_22BB3182C();
      sub_22BB58728(v214, v215, &qword_22BDC23E0);
    }

    else
    {
      sub_22BBDB5D0(v210, v301, &qword_27D8E3E60, &qword_22BDC23E0);
      v209 = 0;
LABEL_36:
      v216 = 1;
      v217 = v301;
      v218 = v312;
      sub_22BB336D0(v301, v209, 1, v312);
      v219 = v217;
      v220 = v306;
      sub_22BBDB5D0(v219, v306, &qword_27D8E3E80, &qword_22BDC1350);
      sub_22BB31814(v220, 1, v218);
      if (!v179)
      {
        v221 = v283;
        sub_22BBDB5D0(v306, v283, &qword_27D8E3E60, &qword_22BDC23E0);
        v222 = v284;
        sub_22BBBEE60(v221, v284, &qword_27D8E3E60, &qword_22BDC23E0);
        v223 = sub_22BB2F3FC();
        sub_22BB31814(v223, v224, v314);
        if (v179)
        {
          goto LABEL_50;
        }

        (*v138)(v313, v222, v314);
        sub_22BB58728(v221, &qword_27D8E3E60, &qword_22BDC23E0);
        v216 = 0;
      }

      v225 = v314;
      sub_22BB336D0(v313, v216, 1, v314);
      v226 = sub_22BB2F3FC();
      if (sub_22BB3AA28(v226, v227, v225) == 1)
      {
        goto LABEL_47;
      }

      v228 = v298;
      v229 = v314;
      (*v138)(v298, v313, v314);
      v230 = sub_22BDB7B04();
      sub_22BB30F88(&a16);
      v231 = v229;
      v93 = v305;
      v232(v228, v231);
      if (v230)
      {
LABEL_47:

        sub_22BB39150();
        sub_22BCB652C(v294, v252);
        sub_22BB314EC();
        return;
      }
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  sub_22BDBB6C4();
  __break(1u);
}

void sub_22BCB12E8()
{
  sub_22BB30F94();
  v3 = v2;
  v5 = v4;
  v127 = sub_22BDB7B44();
  v6 = sub_22BB30444(v127);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BB305A8();
  v126 = v11;
  sub_22BB2F120();
  v125 = sub_22BDBA994();
  v12 = sub_22BB30444(v125);
  v109 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BB30574();
  v16 = sub_22BB39768();
  v116 = _s19ToolboxSearchResultVMa(v16);
  v17 = sub_22BB2F330(v116);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BB305A8();
  sub_22BB2F14C(v20);
  v21 = sub_22BBE6DE0(&qword_27D8E3E50, &unk_22BDC1320);
  v22 = sub_22BB2F0C8(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22BB30C74();
  v27 = v25 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v102 - v29;
  v121 = sub_22BDB8E14();
  v31 = sub_22BB30444(v121);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v31);
  sub_22BB305A8();
  v118 = v36;
  v37 = sub_22BBE6DE0(&qword_27D8E2F30, &qword_22BDC1240);
  v38 = sub_22BB2F0C8(v37);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  sub_22BB30C74();
  v43 = v41 - v42;
  MEMORY[0x28223BE20](v44);
  sub_22BB2F39C();
  v120 = v45;
  v46 = sub_22BB2F120();
  v47 = _s14ActionExecutedVMa(v46);
  v48 = sub_22BB2F0C8(v47);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  sub_22BB30574();
  v53 = v52 - v51;
  v55 = *(v0 + *(v54 + 32));
  v128 = v5;
  sub_22BCA8598();
  v56 = v30;
  v58 = v57;
  sub_22BB3B37C();
  v59 = v0;
  v60 = v27;
  v117 = v53;
  sub_22BCB66B0(v59, v53);
  v107 = v33 + 16;
  v114 = (v33 + 32);
  v61 = *(v58 + 16);
  v62 = (v109 + 8);
  v123 = v8 + 32;
  v124 = v109 + 16;
  v108 = v33;
  v113 = (v33 + 8);
  v111 = v58;
  v63 = v61;

  v64 = 0;
  v122 = v60;
  v110 = v63;
  v104 = v3;
  v103 = v56;
  v115 = v43;
  while (1)
  {
    if (v64 == v63)
    {
      v65 = 1;
      v119 = v63;
      goto LABEL_7;
    }

    if (v64 >= v63)
    {
      break;
    }

    sub_22BB2F374();
    (*(v67 + 16))(v120, v111 + v66 + *(v67 + 72) * v64);
    v68 = __OFADD__(v64, 1);
    v69 = v64 + 1;
    if (v68)
    {
      goto LABEL_29;
    }

    v119 = v69;
    v65 = 0;
LABEL_7:
    v71 = v120;
    v70 = v121;
    sub_22BB336D0(v120, v65, 1, v121);
    sub_22BBDB5D0(v71, v43, &qword_27D8E2F30, &qword_22BDC1240);
    v72 = sub_22BB31814(v43, 1, v70);
    if (v73)
    {
LABEL_26:

      sub_22BB39150();
      sub_22BCB652C(v117, v101);
      sub_22BB314EC();
      return;
    }

    v112 = v72;
    v74 = v43;
    v75 = v118;
    (*v114)(v118, v74, v70);
    sub_22BCB1E94();
    sub_22BBBEE60(v56, v60, &qword_27D8E3E50, &unk_22BDC1320);
    sub_22BB31814(v60, 1, v116);
    if (v73)
    {
      sub_22BB58728(v56, &qword_27D8E3E50, &unk_22BDC1320);
      (*v113)(v75, v70);
      v43 = v115;
    }

    else
    {
      sub_22BB3A614();
      v76 = v106;
      sub_22BCB6584(v60, v106);
      sub_22BCB2250();
      v78 = v77;
      sub_22BB33CE8();
      sub_22BCB652C(v76, v79);
      sub_22BB58728(v56, &qword_27D8E3E50, &unk_22BDC1320);
      v80 = *(v78 + 16);
      if (v80)
      {
        sub_22BB2F374();
        v105 = v78;
        v82 = v78 + v81;
        v84 = *(v83 + 72);
        v85 = *(v83 + 16);
        v86 = MEMORY[0x277D84F90];
        do
        {
          v87 = v125;
          v85(v1, v82, v125);
          sub_22BDBA964();
          (*v62)(v1, v87);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v92 = *(v86 + 16);
            sub_22BB305BC();
            sub_22BD8FAC4();
            v86 = v93;
          }

          v89 = *(v86 + 16);
          v88 = *(v86 + 24);
          if (v89 >= v88 >> 1)
          {
            sub_22BB2F138(v88);
            sub_22BD8FAC4();
            v86 = v94;
          }

          *(v86 + 16) = v89 + 1;
          v90 = *(v8 + 80);
          sub_22BB2F390();
          (*(v8 + 32))(v86 + v91 + *(v8 + 72) * v89, v126, v127);
          v82 += v84;
          --v80;
        }

        while (v80);

        v60 = v122;
      }

      else
      {

        v86 = MEMORY[0x277D84F90];
      }

      (*v113)(v118, v121);
      v95 = 0;
      v96 = *(v86 + 16);
      v43 = v115;
      while (v96 != v95)
      {
        v97 = v95 + 1;
        v98 = v86 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v95;
        sub_22BB52E60();
        sub_22BCB6774(&qword_27D8E3078, v99);
        v100 = sub_22BDBABD4();
        v60 = v122;
        v95 = v97;
        if (v100)
        {

          goto LABEL_26;
        }
      }

      v56 = v103;
    }

    v63 = v110;
    v64 = v119;
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

BOOL sub_22BCB1A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sub_22BDB4C04() & 1) != 0 && (v6 = _s13ValueExecutedVMa(0), v7 = *(v6 + 20), v8 = sub_22BDB4C04(), (v8))
  {
    v9 = *(a1 + *(v6 + 24));
    MEMORY[0x28223BE20](v8);
    v13[2] = a4;
    return sub_22BD726B8(sub_22BCB6C74, v13, v10);
  }

  else
  {
    return 0;
  }
}

BOOL sub_22BCB1AE0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a5;
  v8 = sub_22BDB4C34();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  sub_22BD1D6A4();
  LOBYTE(a1) = sub_22BDB4C04();
  (*(v9 + 8))(v12, v8);
  if ((a1 & 1) != 0 && (v14 = sub_22BCB1C94(), v15 = sub_22BD81074(a3, a4, v14), v16 = , v15 >= 2))
  {
    MEMORY[0x28223BE20](v16);
    *(&v19 - 2) = v20;
    v17 = sub_22BD726B8(sub_22BCB6704, (&v19 - 4), v15);
    sub_22BCB6738(v15);
  }

  else
  {
    return 0;
  }

  return v17;
}

uint64_t sub_22BCB1C94()
{
  v1 = OBJC_IVAR____TtCO23IntelligenceFlowRuntime16FeedbackLearning13ActionCreated____lazy_storage___parameters;
  if (*(v0 + OBJC_IVAR____TtCO23IntelligenceFlowRuntime16FeedbackLearning13ActionCreated____lazy_storage___parameters))
  {
    v2 = *(v0 + OBJC_IVAR____TtCO23IntelligenceFlowRuntime16FeedbackLearning13ActionCreated____lazy_storage___parameters);
  }

  else
  {
    v2 = sub_22BCB300C(v0);
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_22BCB1D50@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22BDB4C34();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  sub_22BD1D6A4();
  LOBYTE(a1) = sub_22BDB4C04();
  (*(v5 + 8))(v8, v4);
  if (a1)
  {
    sub_22BD1D4C0();
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = sub_22BDB8E14();
  return sub_22BB336D0(a2, v10, 1, v11);
}

void sub_22BCB1E94()
{
  sub_22BB30F94();
  v3 = v2;
  v5 = v4;
  v6 = sub_22BDB8E14();
  v7 = sub_22BB30444(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BB30560();
  v55 = v12;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v13);
  sub_22BB3B5C4();
  v14 = sub_22BDB77D4();
  v15 = sub_22BB30444(v14);
  v56 = v16;
  v57 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BB305A8();
  v58 = v19;
  v20 = sub_22BBE6DE0(&qword_27D8E3818, &qword_22BDBFB88);
  sub_22BB2F0C8(v20);
  v22 = *(v21 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v23);
  sub_22BB3848C();
  v24 = sub_22BDB9BE4();
  v25 = sub_22BB30444(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22BB30574();
  v32 = v31 - v30;
  sub_22BDB9BF4();
  sub_22BB31814(v1, 1, v24);
  if (v33)
  {
    sub_22BB58728(v1, &qword_27D8E3818, &qword_22BDBFB88);
    sub_22BDB6404();
    v34 = *(v9 + 16);
    v34(v0, v3, v6);
    v35 = sub_22BDB77C4();
    v36 = sub_22BDBB114();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = sub_22BB314C8();
      v59 = v38;
      *v37 = 136315138;
      v34(v55, v0, v6);
      v39 = sub_22BDBAC14();
      v41 = v40;
      v42 = *(v9 + 8);
      v43 = sub_22BB3AAD8();
      v44(v43);
      v45 = sub_22BB32EE0(v39, v41, &v59);

      *(v37 + 4) = v45;
      _os_log_impl(&dword_22BB2C000, v35, v36, "Cannot find a tool definition for %s", v37, 0xCu);
      sub_22BB32FA4(v38);
      sub_22BB30AF0();
      sub_22BB30AF0();
    }

    else
    {

      v52 = *(v9 + 8);
      v53 = sub_22BB3AAD8();
      v54(v53);
    }

    (*(v56 + 8))(v58, v57);
    _s19ToolboxSearchResultVMa(0);
    v48 = sub_22BB31CB0();
  }

  else
  {
    v46 = *(v27 + 32);
    sub_22BB3A944();
    v46();
    (*(v9 + 16))(v5, v3, v6);
    v47 = _s19ToolboxSearchResultVMa(0);
    (v46)(v5 + *(v47 + 20), v32, v24);
    sub_22BB331C8();
    v51 = v47;
  }

  sub_22BB336D0(v48, v49, v50, v51);
  sub_22BB314EC();
}

void sub_22BCB2250()
{
  sub_22BB30F94();
  v3 = v2;
  v4 = sub_22BDB9BD4();
  v5 = sub_22BB30444(v4);
  v62 = v6;
  v63 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BB30C74();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  sub_22BB2F39C();
  v61 = v13;
  sub_22BB2F120();
  v14 = sub_22BDB9F84();
  v15 = sub_22BB30444(v14);
  v60 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BB30574();
  v21 = v20 - v19;
  v22 = sub_22BDBA014();
  v23 = sub_22BB30444(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22BB30574();
  sub_22BB319F8();
  v28 = sub_22BDB9BE4();
  v29 = sub_22BB30444(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22BB30574();
  v34 = sub_22BB39768();
  v35 = _s19ToolboxSearchResultVMa(v34);
  (*(v31 + 16))(v1, v3 + *(v35 + 20), v28);
  v36 = (*(v31 + 88))(v1, v28);
  if (v36 == *MEMORY[0x277D1E8E0] || v36 == *MEMORY[0x277D1E8C8])
  {
    v37 = sub_22BB3B6A8();
    v38(v37);
    (*(v25 + 32))(v0, v1, v22);
    sub_22BCB56AC();
    v39 = *(v25 + 8);
    v40 = sub_22BB3627C();
    v41(v40);
LABEL_4:
    sub_22BB314EC();
    return;
  }

  if (v36 == *MEMORY[0x277D1E8D0])
  {
    v42 = sub_22BB3B6A8();
    v43(v42);
    (*(v60 + 32))(v21, v1, v14);
    sub_22BBE6DE0(&qword_27D8E3E88, &qword_22BDC1358);
    v44 = *(sub_22BDBA994() - 8);
    v45 = *(v44 + 72);
    v46 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    *(swift_allocObject() + 16) = xmmword_22BDBCBD0;
    sub_22BDB9F74();
    (*(v60 + 8))(v21, v14);
    goto LABEL_4;
  }

  if (v36 == *MEMORY[0x277D1E8D8])
  {
    v47 = sub_22BB3B6A8();
    v48(v47);
    (*(v62 + 32))(v61, v1, v63);
    (*(v62 + 16))(v11, v61, v63);
    v49 = *(v62 + 88);
    v50 = sub_22BB39478();
    if (v51(v50) == *MEMORY[0x277D1E8B8])
    {
      v52 = *(v62 + 96);
      v53 = sub_22BB39478();
      v54(v53);
      v55 = sub_22BB347D8(v25);
      v56(v55);
      sub_22BCB56AC();
      v57 = *(v25 + 8);
      v58 = sub_22BB3627C();
      v59(v58);
      (*(v62 + 8))(v61, v63);
      goto LABEL_4;
    }
  }

  sub_22BDBB6C4();
  __break(1u);
}

void sub_22BCB26FC()
{
  sub_22BB30F94();
  v2 = v1;
  v4 = v3;
  v66 = v5;
  v6 = type metadata accessor for FeedbackLearning.CandidateParameter(0);
  v7 = sub_22BB2F0C8(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BB305A8();
  v65 = v10;
  sub_22BB2F120();
  v64 = sub_22BDB7B44();
  v11 = sub_22BB30444(v64);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BB30574();
  v18 = v17 - v16;
  v19 = sub_22BDB77D4();
  v62 = sub_22BB30444(v19);
  v63 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v62);
  sub_22BB30574();
  v25 = v24 - v23;
  v26 = sub_22BCB2B94(v4, v2);
  v27 = _s33CandidateParameterResolutionStateVMa(0);
  v28 = sub_22BB69FEC((v0 + *(v27 + 24)), *(v0 + *(v27 + 24) + 24));
  v29 = sub_22BCB2E94(v0, v2, *v28);
  v30 = v29;
  if (v29)
  {
    v31 = v13;
    v61 = v25;
    MEMORY[0x28223BE20](v29);
    *(&v60 - 2) = v4;

    v32 = sub_22BD727DC(sub_22BCB65F8, (&v60 - 4), v30);

    if ((v26 & 1) == 0)
    {

      if (v32)
      {
        v55 = 2;
      }

      else
      {
        v55 = 1;
      }

      goto LABEL_15;
    }

    v25 = v61;
    if (v32)
    {

LABEL_14:
      v55 = 3;
      goto LABEL_15;
    }
  }

  else
  {
    if ((v26 & 1) == 0)
    {
      v55 = 0;
      goto LABEL_15;
    }

    v31 = v13;
  }

  sub_22BDB6404();
  (*(v31 + 16))(v18, v4, v64);
  v33 = v65;
  sub_22BCB66B0(v2, v65);

  v34 = sub_22BDB77C4();
  v35 = sub_22BDBB114();

  if (!os_log_type_enabled(v34, v35))
  {

    sub_22BB36FF0();
    sub_22BCB652C(v33, v56);
    v57 = *(v31 + 8);
    v58 = sub_22BB3AAD8();
    v59(v58);
    (*(v63 + 8))(v25, v62);
    goto LABEL_14;
  }

  v36 = sub_22BB314C8();
  v61 = swift_slowAlloc();
  v68 = v61;
  *v36 = 136315650;
  sub_22BB52E60();
  sub_22BCB6774(v37, v38);
  sub_22BDBB684();
  v39 = *(v31 + 8);
  v40 = sub_22BB3AAD8();
  v41(v40);
  v42 = sub_22BB2F3F0();
  v45 = sub_22BB32EE0(v42, v43, v44);

  *(v36 + 4) = v45;
  *(v36 + 12) = 2080;
  v67 = v30;
  sub_22BBE6DE0(&qword_27D8E3E78, &unk_22BDC1340);
  v46 = sub_22BDBAC14();
  v48 = sub_22BB32EE0(v46, v47, &v68);

  *(v36 + 14) = v48;
  *(v36 + 22) = 2080;
  v49 = v65;
  FeedbackLearning.CandidateParameter.description.getter();
  sub_22BB36FF0();
  sub_22BCB652C(v49, v50);
  v51 = sub_22BB2F3F0();
  v54 = sub_22BB32EE0(v51, v52, v53);

  *(v36 + 24) = v54;
  _os_log_impl(&dword_22BB2C000, v34, v35, "Marking candidate %s as executed but the candidate does not match resolved candidates %s for parameter %s", v36, 0x20u);
  v55 = 3;
  swift_arrayDestroy();
  sub_22BB30AF0();
  sub_22BB30AF0();

  (*(v63 + 8))(v25, v62);
LABEL_15:
  *v66 = v55;
  sub_22BB314EC();
}

uint64_t sub_22BCB2B94(uint64_t a1, uint64_t a2)
{
  v5 = sub_22BDB4C34();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = _0 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FeedbackLearning.CandidateParameter(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (_0 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22BCB66B0(a2, v13);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v30 = *v13;
      v29 = v13[1];
      v31 = _s33CandidateParameterResolutionStateVMa(0);
      v32 = sub_22BB69FEC((v2 + *(v31 + 20)), *(v2 + *(v31 + 20) + 24));
      v33 = _s14ActionExecutedVMa(0);
      v34 = *(v32 + *(v33 + 24));
      MEMORY[0x28223BE20](v33);
      _0[-4] = v2;
      _0[-3] = v30;
      _0[-2] = v29;
      _0[-1] = a1;
      v19 = sub_22BD726E8(sub_22BCB664C);

      break;
    case 2u:
      v20 = _s33CandidateParameterResolutionStateVMa(0);
      v21 = sub_22BB69FEC((v2 + *(v20 + 20)), *(v2 + *(v20 + 20) + 24));
      sub_22BCB0000(v2, a1, v21, v22, v23, v24, v25, v26, _0[0], _0[1], _0[2], _0[3], _0[4], _0[5], _0[6], _0[7], _0[8], _0[9], _0[10], _0[11]);
      goto LABEL_5;
    case 3u:
      v28 = _s33CandidateParameterResolutionStateVMa(0);
      sub_22BB69FEC((v2 + *(v28 + 20)), *(v2 + *(v28 + 20) + 24));
      sub_22BCB12E8();
LABEL_5:
      v19 = v27;
      break;
    default:
      (*(v6 + 32))(v9, v13, v5);
      v14 = _s33CandidateParameterResolutionStateVMa(0);
      v15 = sub_22BB69FEC((v2 + *(v14 + 20)), *(v2 + *(v14 + 20) + 24));
      v16 = _s14ActionExecutedVMa(0);
      v17 = *(v15 + *(v16 + 20));
      MEMORY[0x28223BE20](v16);
      _0[-4] = v2;
      _0[-3] = v9;
      _0[-2] = a1;
      v19 = sub_22BD72688(sub_22BCB6670, &_0[-6], v18);
      (*(v6 + 8))(v9, v5);
      break;
  }

  return v19 & 1;
}

uint64_t sub_22BCB2E94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_22BBDAE68();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(*(a3 + 56) + 8 * v5);

  v8 = sub_22BD810C0(a2, v7);

  if (v8 == 1)
  {
    return 0;
  }

  else
  {
    return v8;
  }
}

uint64_t sub_22BCB2F0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  if ((a3() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a4(0) + 20);

  return sub_22BDB7B04();
}

uint64_t sub_22BCB300C(uint64_t a1)
{
  v128 = a1;
  v1 = sub_22BDB81A4();
  v119 = *(v1 - 8);
  v2 = *(v119 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v97 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_22BDB77D4();
  v124 = *(v108 - 8);
  v5 = *(v124 + 8);
  MEMORY[0x28223BE20](v108);
  v107 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_22BDBA594();
  v118 = *(v121 - 8);
  v7 = *(v118 + 8);
  MEMORY[0x28223BE20](v121);
  v120 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_22BDB8CB4();
  v9 = *(v117 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v117);
  v13 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v127 = &v97 - v14;
  v126 = sub_22BDB9504();
  v15 = *(v126 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v126);
  v125 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22BDB9564();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for FeedbackLearning.ActionValue(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v97 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BCB66B0(v128 + OBJC_IVAR____TtCO23IntelligenceFlowRuntime16FeedbackLearning13ActionCreated_action, v26);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = *(v119 + 32);
    v117 = v1;
    v27(v4, v26, v1);
    v116 = v4;
    v28 = sub_22BDB8164();
    sub_22BBE6DE0(&qword_27D8E3E90, &qword_22BDC1360);
    result = sub_22BDBB504();
    v30 = result;
    v31 = 0;
    v32 = v28 + 64;
    v33 = 1 << *(v28 + 32);
    v34 = -1;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    v35 = v34 & *(v28 + 64);
    v36 = (v33 + 63) >> 6;
    v37 = v118;
    v124 = v118 + 16;
    v125 = v28;
    v122 = result + 64;
    v123 = v118 + 8;
    v128 = result;
    if (v35)
    {
      do
      {
        v38 = __clz(__rbit64(v35));
        v126 = (v35 - 1) & v35;
LABEL_11:
        v44 = v38 | (v31 << 6);
        v45 = *(v125 + 7);
        v46 = (*(v125 + 6) + 16 * v44);
        v47 = v46[1];
        v127 = *v46;
        v48 = v120;
        v49 = v121;
        (*(v37 + 2))(v120, v45 + *(v37 + 9) * v44, v121);

        sub_22BCB3AC0();
        v51 = v50;
        result = (*(v37 + 1))(v48, v49);
        *(v122 + ((v44 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v44;
        v30 = v128;
        v52 = (*(v128 + 48) + 16 * v44);
        *v52 = v127;
        v52[1] = v47;
        *(*(v30 + 56) + 8 * v44) = v51;
        v53 = *(v30 + 16);
        v54 = __OFADD__(v53, 1);
        v55 = v53 + 1;
        if (v54)
        {
          goto LABEL_37;
        }

        *(v30 + 16) = v55;
        v35 = v126;
      }

      while (v126);
    }

    v39 = v31;
    v41 = v116;
    v40 = v117;
    v42 = v119;
    while (1)
    {
      v31 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      if (v31 >= v36)
      {

        (*(v42 + 8))(v41, v40);
        return v30;
      }

      v43 = *(v32 + 8 * v31);
      ++v39;
      if (v43)
      {
        v38 = __clz(__rbit64(v43));
        v126 = (v43 - 1) & v43;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v99 = v19;
  v56 = *(v19 + 32);
  v100 = v18;
  v56(v22, v26, v18);
  v98 = v22;
  v57 = sub_22BDB9524();
  sub_22BBE6DE0(&qword_27D8E3E90, &qword_22BDC1360);
  result = sub_22BDBB504();
  v59 = 0;
  v60 = v57 + 64;
  v61 = 1 << *(v57 + 32);
  v62 = -1;
  if (v61 < 64)
  {
    v62 = ~(-1 << v61);
  }

  v63 = v62 & *(v57 + 64);
  v64 = (v61 + 63) >> 6;
  v115 = v15 + 16;
  v116 = v57;
  v113 = (v9 + 88);
  v114 = (v9 + 16);
  v112 = *MEMORY[0x277D1E040];
  v106 = (v124 + 8);
  v119 = v9 + 8;
  v105 = (v9 + 96);
  v30 = result;
  v104 = (v118 + 32);
  v103 = (v118 + 8);
  v110 = result + 64;
  v111 = (v15 + 8);
  *&v58 = 136315138;
  v101 = v58;
  v65 = v107;
  v66 = v117;
  v118 = v13;
  v67 = v15;
  v128 = result;
  v109 = v15;
  if (!v63)
  {
LABEL_18:
    v69 = v59;
    while (1)
    {
      v59 = v69 + 1;
      if (__OFADD__(v69, 1))
      {
        goto LABEL_36;
      }

      if (v59 >= v64)
      {

        (*(v99 + 8))(v98, v100);
        return v30;
      }

      v70 = *(v60 + 8 * v59);
      ++v69;
      if (v70)
      {
        v68 = __clz(__rbit64(v70));
        v122 = (v70 - 1) & v70;
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v68 = __clz(__rbit64(v63));
    v122 = (v63 - 1) & v63;
LABEL_23:
    v71 = v68 | (v59 << 6);
    v72 = *(v116 + 7);
    v73 = (*(v116 + 6) + 16 * v71);
    v74 = v73[1];
    v124 = *v73;
    (*(v67 + 16))(v125, v72 + *(v67 + 72) * v71, v126);
    v123 = v74;

    v75 = v127;
    sub_22BDB94F4();
    (*v114)(v13, v75, v66);
    v76 = (*v113)(v13, v66);
    v77 = v119;
    if (v76 == v112)
    {
      (*v105)(v13, v66);
      v78 = v120;
      v79 = v13;
      v80 = v121;
      (*v104)(v120, v79, v121);
      sub_22BCB3AC0();
      v82 = v81;
      v83 = v78;
      v66 = v117;
      (*v103)(v83, v80);
      (*v77)(v127, v66);
    }

    else
    {
      sub_22BDB6404();
      v84 = sub_22BDB77C4();
      v85 = sub_22BDBB114();
      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v130 = v102;
        *v86 = v101;
        v129 = &type metadata for FeedbackLearning;
        sub_22BBE6DE0(&qword_27D8E3E98, &qword_22BDC1368);
        v87 = sub_22BDBAC14();
        v89 = sub_22BB32EE0(v87, v88, &v130);

        *(v86 + 4) = v89;
        v90 = v108;
        v65 = v107;
        _os_log_impl(&dword_22BB2C000, v84, v85, "Cannot generate candidate identifier for a tool parameter, value=%s", v86, 0xCu);
        v91 = v102;
        sub_22BB32FA4(v102);
        MEMORY[0x2318A6080](v91, -1, -1);
        MEMORY[0x2318A6080](v86, -1, -1);

        (*v106)(v65, v90);
      }

      else
      {

        (*v106)(v65, v108);
      }

      v92 = *v119;
      v66 = v117;
      (*v119)(v118, v117);
      v82 = 0;
      v92(v127, v66);
    }

    result = (*v111)(v125, v126);
    *(v110 + ((v71 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v71;
    v30 = v128;
    v93 = (*(v128 + 48) + 16 * v71);
    v94 = v123;
    *v93 = v124;
    v93[1] = v94;
    *(*(v30 + 56) + 8 * v71) = v82;
    v95 = *(v30 + 16);
    v54 = __OFADD__(v95, 1);
    v96 = v95 + 1;
    if (v54)
    {
      break;
    }

    *(v30 + 16) = v96;
    v13 = v118;
    v67 = v109;
    v63 = v122;
    if (!v122)
    {
      goto LABEL_18;
    }
  }

LABEL_38:
  __break(1u);
  return result;
}

void sub_22BCB3AC0()
{
  sub_22BB30F94();
  sub_22BB30F68();
  v1 = sub_22BDBA634();
  v2 = sub_22BB2F330(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BB30574();
  sub_22BB31580();
  v5 = sub_22BDBA594();
  v6 = sub_22BB30444(v5);
  v55 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BB30C74();
  v12 = (v10 - v11);
  MEMORY[0x28223BE20](v13);
  sub_22BB2F384();
  v56 = v14;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v15);
  v17 = &v48 - v16;
  v18 = sub_22BDB77D4();
  v19 = sub_22BB30444(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22BB305A8();
  v57 = v24;
  sub_22BCB489C();
  v26 = v25;
  sub_22BCB4498();
  if (v27)
  {
    sub_22BCB4AB8(v26, v27);
  }

  else
  {
    v51 = v1;
    v52 = v12;
    v53 = v21;
    v54 = v18;

    v28 = v57;
    sub_22BDB6404();
    v29 = v55;
    v30 = *(v55 + 16);
    v30(v17, v0, v5);
    v30(v56, v0, v5);
    v31 = v28;
    v32 = sub_22BDB77C4();
    v33 = sub_22BDBB114();
    if (sub_22BB374D8(v33))
    {
      v34 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v58 = v50;
      *v34 = 136315395;
      v49 = v32;
      HIDWORD(v48) = v31;
      sub_22BDBA524();
      sub_22BDBAC14();
      v35 = *(v29 + 8);
      v35(v17, v5);
      v36 = sub_22BB31F54();
      v39 = sub_22BB32EE0(v36, v37, v38);

      *(v34 + 4) = v39;
      *(v34 + 12) = 2085;
      v40 = v34;
      v41 = v56;
      v30(v52, v56, v5);
      sub_22BDBAC14();
      v35(v41, v5);
      v42 = sub_22BB31F54();
      v45 = sub_22BB32EE0(v42, v43, v44);

      *(v40 + 14) = v45;
      v46 = v49;
      _os_log_impl(&dword_22BB2C000, v49, BYTE4(v48), "Cannot generate a candidate identifier for a parameter value of type=%s and value=%{sensitive}s", v40, 0x16u);
      swift_arrayDestroy();
      sub_22BB30AF0();
      sub_22BB30AF0();
    }

    else
    {

      v47 = *(v29 + 8);
      v47(v56, v5);
      v47(v17, v5);
    }

    (*(v53 + 8))(v57, v54);
  }

  sub_22BB314EC();
}

uint64_t sub_22BCB3E8C()
{
  sub_22BCB652C(v0 + OBJC_IVAR____TtCO23IntelligenceFlowRuntime16FeedbackLearning13ActionCreated_action, type metadata accessor for FeedbackLearning.ActionValue);
  v1 = *(v0 + OBJC_IVAR____TtCO23IntelligenceFlowRuntime16FeedbackLearning13ActionCreated____lazy_storage___parameters);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v2, v3);
}

uint64_t sub_22BCB3F3C()
{
  result = type metadata accessor for FeedbackLearning.ActionValue(319);
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

void sub_22BCB4048()
{
  sub_22BB30F94();
  v1 = v0;
  v36 = v2;
  v3 = sub_22BDB77D4();
  v4 = sub_22BB30444(v3);
  v34 = v5;
  v35 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BB30560();
  v33[4] = v8;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v9);
  v11 = v33 - v10;
  v12 = sub_22BDBA594();
  v13 = sub_22BB30444(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BB30560();
  v33[3] = v18;
  sub_22BB30B70();
  v20 = MEMORY[0x28223BE20](v19);
  MEMORY[0x28223BE20](v20);
  v22 = v33 - v21;
  v23 = *(v15 + 16);
  v23(v33 - v21, v1, v12);
  v24 = (*(v15 + 88))(v22, v12);
  v25 = *MEMORY[0x277D729E0];
  (*(v15 + 8))(v22, v12);
  if (v24 == v25)
  {
    v26 = v36;
    sub_22BDB6404();
    v27 = sub_22BDB77C4();
    v28 = sub_22BDBB114();
    if (sub_22BB374D8(v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_22BB2C000, v27, v11, "Attempting to extract a candidate identifier for a collection, candidate identifiers should instead be extracted from individual items", v29, 2u);
      sub_22BB30AF0();
    }

    (*(v34 + 8))(v11, v35);
    v31 = 1;
  }

  else
  {
    v30 = sub_22BB31F54();
    (v23)(v30);
    v26 = v36;
    sub_22BDB7AE4();
    v31 = 0;
  }

  v32 = sub_22BDB7B44();
  sub_22BB336D0(v26, v31, 1, v32);
  sub_22BB314EC();
}

void sub_22BCB4498()
{
  sub_22BB30F94();
  sub_22BB30F68();
  v1 = sub_22BDB77D4();
  v2 = sub_22BB30444(v1);
  v58 = v3;
  v59 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BB305A8();
  v57 = v6;
  v7 = sub_22BBE6DE0(&qword_27D8E3E60, &qword_22BDC23E0);
  sub_22BB2F0C8(v7);
  v9 = *(v8 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v10);
  v12 = &v57 - v11;
  v13 = sub_22BDB7B44();
  v14 = sub_22BB30444(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BB30C74();
  v21 = (v19 - v20);
  MEMORY[0x28223BE20](v22);
  sub_22BB2F39C();
  v70 = v23;
  sub_22BB2F120();
  v67 = sub_22BDBA594();
  v24 = sub_22BB30444(v67);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  sub_22BB30574();
  v31 = v30 - v29;
  v32 = 0;
  v33 = *(v0 + 16);
  v68 = v0;
  v69 = v33;
  v65 = v26 + 8;
  v66 = v26 + 16;
  v34 = (v16 + 32);
  v63 = v16;
  v60 = v16 + 8;
  v61 = (v16 + 16);
  v35 = MEMORY[0x277D84F90];
  v64 = v12;
  v62 = v21;
  while (v69 != v32)
  {
    v36 = *(v26 + 80);
    sub_22BB2F390();
    v37 = v67;
    (*(v26 + 16))(v31, v68 + v38 + *(v26 + 72) * v32, v67);
    sub_22BCB4048();
    (*(v26 + 8))(v31, v37);
    v39 = sub_22BB2F3FC();
    sub_22BB31814(v39, v40, v13);
    if (v41)
    {

      sub_22BB58728(v12, &qword_27D8E3E60, &qword_22BDC23E0);
      v53 = v57;
      sub_22BDB6404();
      v54 = sub_22BDB77C4();
      v55 = sub_22BDBB114();
      if (sub_22BB374D8(v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&dword_22BB2C000, v54, v53, "Cannot generate candidate identifiers for a list of values, not all values are candidate id extractable", v56, 2u);
        sub_22BB30AF0();
      }

      (*(v58 + 8))(v53, v59);
      break;
    }

    v42 = *v34;
    v43 = v70;
    (*v34)(v70, v12, v13);
    (*v61)(v21, v43, v13);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v50 = *(v35 + 16);
      sub_22BB305BC();
      sub_22BD8FAC4();
      v35 = v51;
    }

    v45 = *(v35 + 16);
    v44 = *(v35 + 24);
    if (v45 >= v44 >> 1)
    {
      sub_22BB2F158(v44);
      sub_22BD8FAC4();
      v35 = v52;
    }

    v46 = v63;
    (*(v63 + 8))(v70, v13);
    *(v35 + 16) = v45 + 1;
    v47 = *(v46 + 80);
    sub_22BB2F390();
    v49 = v35 + v48 + *(v46 + 72) * v45;
    v21 = v62;
    v42(v49, v62, v13);
    ++v32;
    v12 = v64;
  }

  sub_22BB314EC();
}

void sub_22BCB489C()
{
  sub_22BB30F94();
  sub_22BB30F68();
  v3 = sub_22BDBA594();
  v4 = sub_22BB30444(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BB30574();
  sub_22BB319F8();
  v9 = sub_22BDBA3A4();
  v10 = sub_22BB30444(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BB30574();
  sub_22BB31580();
  v15 = *(v6 + 16);
  v16 = sub_22BB3627C();
  v15(v16);
  if ((*(v6 + 88))(v1, v3) == *MEMORY[0x277D729E0])
  {
    (*(v6 + 96))(v1, v3);
    v17 = *v1;
    v18 = swift_projectBox();
    (*(v12 + 16))(v2, v18, v9);

    sub_22BDBA394();
    v19 = *(v12 + 8);
    v20 = sub_22BB39478();
    v21(v20);
  }

  else
  {
    v23 = *(v6 + 8);
    v22 = v6 + 8;
    v23(v1, v3);
    sub_22BBE6DE0(qword_27D8E2550, &unk_22BDBCC10);
    v24 = *(v22 + 64);
    v25 = (*(v22 + 72) + 32) & ~*(v22 + 72);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_22BDBCBD0;
    (v15)(v26 + v25, v0, v3);
  }

  sub_22BB314EC();
}

void sub_22BCB4AB8(uint64_t a1, uint64_t a2)
{
  v4 = _s23ParameterCandidateValueVMa(0);
  v71 = *(v4 - 8);
  v72 = v4;
  v5 = *(v71 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v56 - v9;
  v11 = sub_22BDBA594();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v64 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v65 = &v56 - v16;
  v68 = sub_22BBE6DE0(&qword_27D8E3E58, &qword_22BDC1330);
  v17 = *(*(v68 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v68);
  v63 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v58 = &v56 - v21;
  MEMORY[0x28223BE20](v20);
  v57 = &v56 - v22;
  v73 = a2;
  v74 = a1;
  v23 = *(a1 + 16);
  v24 = *(a2 + 16);
  if (v24 >= v23)
  {
    v25 = *(a1 + 16);
  }

  else
  {
    v25 = v24;
  }

  v79 = MEMORY[0x277D84F90];
  sub_22BD27ED0();
  v78 = v79;
  v69 = v12;
  v70 = v11;
  v66 = v24;
  v67 = v23;
  v59 = v10;
  if (v25)
  {
    v26 = 0;
    v60 = (v12 + 32);
    v61 = v12 + 16;
    v77 = v25;
    v62 = v8;
    while (v23 != v26)
    {
      v27 = *(v12 + 16);
      v28 = v64;
      v27(v64, v74 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v26, v11);
      if (v24 == v26)
      {
        goto LABEL_23;
      }

      v29 = sub_22BDB7B44();
      v30 = v11;
      v31 = *(v29 - 8);
      v32 = *(v68 + 48);
      v75 = (v73 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v26);
      v76 = v32;
      v33 = v63;
      (*v60)(v63, v28, v30);
      v34 = *(v31 + 16);
      v34(v33 + v32, v75, v29);
      v35 = v62;
      v27(v62, v33, v30);
      v36 = v35;
      v34(v35 + *(v72 + 20), v33 + v76, v29);
      sub_22BB58728(v33, &qword_27D8E3E58, &qword_22BDC1330);
      v79 = v78;
      v37 = *(v78 + 16);
      if (v37 >= *(v78 + 24) >> 1)
      {
        sub_22BD27ED0();
        v78 = v79;
      }

      ++v26;
      v38 = v78;
      *(v78 + 16) = v37 + 1;
      sub_22BCB6584(v36, v38 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v37);
      v25 = v77;
      v12 = v69;
      v11 = v70;
      v24 = v66;
      v23 = v67;
      if (v77 == v26)
      {
        goto LABEL_11;
      }
    }

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

  else
  {
LABEL_11:
    v75 = (v12 + 32);
    v76 = v12 + 16;
    while (v23 != v25)
    {
      if (v25 >= v23)
      {
        goto LABEL_24;
      }

      v39 = *(v12 + 16);
      v39(v65, v74 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v25, v11);
      if (__OFADD__(v25, 1))
      {
        goto LABEL_25;
      }

      if (v24 == v25)
      {
        (*(v12 + 8))(v65, v11);
        return;
      }

      if (v25 >= v24)
      {
        goto LABEL_26;
      }

      v40 = sub_22BDB7B44();
      v41 = *(v40 - 8);
      v42 = v73 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v25;
      v43 = v68;
      v44 = *(v68 + 48);
      v45 = *v75;
      v77 = v25;
      v46 = v58;
      v45(v58, v65, v11);
      v47 = *(v41 + 16);
      v47(&v46[v44], v42, v40);
      v48 = v46;
      v49 = v57;
      sub_22BBDB5D0(v48, v57, &qword_27D8E3E58, &qword_22BDC1330);
      v50 = *(v43 + 48);
      v51 = v59;
      v39(v59, v49, v11);
      v47((v51 + *(v72 + 20)), v49 + v50, v40);
      v52 = v78;
      sub_22BB58728(v49, &qword_27D8E3E58, &qword_22BDC1330);
      v79 = v52;
      v54 = *(v52 + 16);
      v53 = *(v52 + 24);
      v78 = v52;
      if (v54 >= v53 >> 1)
      {
        sub_22BD27ED0();
        v78 = v79;
      }

      v55 = v78;
      *(v78 + 16) = v54 + 1;
      sub_22BCB6584(v51, v55 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v54);
      v25 = v77 + 1;
      v12 = v69;
      v11 = v70;
      v24 = v66;
      v23 = v67;
    }
  }
}

void sub_22BCB51B4()
{
  sub_22BB30F94();
  v3 = v2;
  v91 = sub_22BDB9BD4();
  v4 = sub_22BB30444(v91);
  v89 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BB30560();
  v90 = v8;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v9);
  sub_22BB2F39C();
  v87 = v10;
  sub_22BB2F120();
  v11 = sub_22BDB9BE4();
  v12 = sub_22BB30444(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BB30574();
  sub_22BB31580();
  v17 = sub_22BBE6DE0(&qword_27D8E2FC0, &qword_22BDBFB90);
  v18 = sub_22BB2F0C8(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BB30560();
  v88 = v21;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v22);
  v24 = &v86 - v23;
  v25 = sub_22BBE6DE0(&qword_27D8E3E50, &unk_22BDC1320);
  sub_22BB2F0C8(v25);
  v27 = *(v26 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v28);
  v29 = sub_22BB319F8();
  v30 = _s19ToolboxSearchResultVMa(v29);
  v31 = sub_22BB2F330(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  sub_22BB30574();
  v36 = v35 - v34;
  sub_22BCB1E94();
  sub_22BB31814(v0, 1, v30);
  if (v37)
  {
    sub_22BB58728(v0, &qword_27D8E3E50, &unk_22BDC1320);
    sub_22BDBA014();
    sub_22BB30B28();
    sub_22BB336D0(v38, v39, v40, v41);
LABEL_8:
    sub_22BB314EC();
    return;
  }

  sub_22BB3A614();
  sub_22BCB6584(v0, v36);
  (*(v14 + 16))(v1, v36 + *(v30 + 20), v11);
  v42 = *(v14 + 88);
  v43 = sub_22BB331D4();
  v45 = v44(v43);
  if (v45 == *MEMORY[0x277D1E8E0] || v45 == *MEMORY[0x277D1E8C8])
  {
    sub_22BB33CE8();
    sub_22BCB652C(v36, v46);
    v47 = *(v14 + 96);
    v48 = sub_22BB331D4();
    v49(v48);
    v50 = sub_22BDBA014();
    sub_22BB2F330(v50);
    (*(v51 + 32))(v24, v1, v50);
    sub_22BB331C8();
    sub_22BB336D0(v52, v53, v54, v50);
LABEL_7:
    sub_22BBDB5D0(v24, v3, &qword_27D8E2FC0, &qword_22BDBFB90);
    goto LABEL_8;
  }

  if (v45 == *MEMORY[0x277D1E8D0])
  {
    sub_22BB33CE8();
    sub_22BCB652C(v36, v55);
    sub_22BDBA014();
    sub_22BB30B28();
    sub_22BB336D0(v56, v57, v58, v59);
    v60 = *(v14 + 8);
    v61 = sub_22BB331D4();
    v62(v61);
    goto LABEL_7;
  }

  if (v45 == *MEMORY[0x277D1E8D8])
  {
    v63 = *(v14 + 96);
    v64 = sub_22BB331D4();
    v65(v64);
    v66 = v89;
    v67 = v87;
    v68 = v91;
    (*(v89 + 32))(v87, v1, v91);
    v69 = v90;
    (*(v66 + 16))(v90, v67, v68);
    v70 = *(v66 + 88);
    v71 = sub_22BB3182C();
    if (v72(v71) == *MEMORY[0x277D1E8B8])
    {
      (*(v66 + 8))(v67, v68);
      sub_22BB33CE8();
      sub_22BCB652C(v36, v73);
      v74 = *(v66 + 96);
      v75 = sub_22BB3182C();
      v76(v75);
      v77 = sub_22BDBA014();
      sub_22BB2F330(v77);
      (*(v78 + 32))(v88, v69, v77);
      sub_22BB331C8();
      sub_22BB336D0(v79, v80, v81, v77);
      v82 = sub_22BB3627C();
      sub_22BBDB5D0(v82, v83, v84, v85);
      goto LABEL_7;
    }
  }

  sub_22BDBB6C4();
  __break(1u);
}

void sub_22BCB56AC()
{
  sub_22BB30F94();
  v1 = sub_22BBE6DE0(&qword_27D8E3E68, &qword_22BDC1338);
  v2 = sub_22BB2F0C8(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BB30C74();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  sub_22BB3B5C4();
  v9 = sub_22BDBA994();
  v10 = sub_22BB30444(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BB305A8();
  v72 = v15;
  sub_22BB2F120();
  v16 = sub_22BDB9F64();
  v17 = sub_22BB30444(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BB30C74();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  sub_22BB2F39C();
  v71 = v26;
  v27 = *(sub_22BDB9FB4() + 16);
  if (v27)
  {
    v29 = *(v19 + 16);
    v28 = v19 + 16;
    v30 = *(v28 + 64);
    sub_22BB2F390();
    v33 = v31 + v32;
    v69 = *(v28 + 56);
    v70 = v34;
    v68 = (v28 + 16);
    v67 = *MEMORY[0x277D72148];
    v73 = (v12 + 32);
    v74 = MEMORY[0x277D84F90];
    v35 = v28;
    v36 = &qword_27D8E3E68;
    v64 = v0;
    v65 = v7;
    v66 = v24;
    v63 = v35;
    do
    {
      v37 = v36;
      v38 = v35;
      v70(v71, v33, v16);
      (*v68)(v24, v71, v16);
      v39 = sub_22BB348C0();
      if (v40(v39) == v67)
      {
        v41 = sub_22BB348C0();
        v42(v41);
        (*v73)(v7, v24, v9);
        sub_22BB331C8();
        sub_22BB336D0(v43, v44, v45, v9);
      }

      else
      {
        sub_22BB30B28();
        sub_22BB336D0(v46, v47, v48, v9);
        v49 = sub_22BB348C0();
        v50(v49);
      }

      sub_22BBDB5D0(v7, v0, v36, &qword_22BDC1338);
      sub_22BB31814(v0, 1, v9);
      if (v51)
      {
        sub_22BB58728(v0, v36, &qword_22BDC1338);
        v24 = v66;
        v35 = v38;
      }

      else
      {
        v52 = *v73;
        (*v73)(v72, v0, v9);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native)
        {
          v24 = v66;
          v54 = v74;
        }

        else
        {
          v60 = *(v74 + 16);
          sub_22BB305BC();
          sub_22BD901D0();
          v54 = v61;
          v24 = v66;
        }

        v56 = *(v54 + 16);
        v55 = *(v54 + 24);
        if (v56 >= v55 >> 1)
        {
          sub_22BB2F158(v55);
          sub_22BD901D0();
          v54 = v62;
        }

        *(v54 + 16) = v56 + 1;
        sub_22BB2F374();
        v74 = v57;
        v52(v57 + v58 + *(v59 + 72) * v56, v72, v9);
        v0 = v64;
        v7 = v65;
        v35 = v63;
        v36 = v37;
      }

      v33 += v69;
      --v27;
    }

    while (v27);
  }

  sub_22BB314EC();
}

uint64_t sub_22BCB5AAC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22BDB4E24();
  v3 = sub_22BB30444(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BB30574();
  sub_22BB319F8();
  v8 = sub_22BDB5404();
  v9 = sub_22BB30444(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BB30574();
  sub_22BB31580();
  v14 = v11[2];
  v15 = sub_22BB331D4();
  v16(v15);
  v17 = v11[11];
  v18 = sub_22BB39478();
  v20 = v19(v18);
  if (v20 == *MEMORY[0x277D1CBF0])
  {
    v21 = v11[12];
    v22 = sub_22BB39478();
    v23(v22);
    v24 = sub_22BB347D8(v5);
    v25(v24);
    sub_22BCB5CC8(a1);
    v26 = *(v5 + 8);
    v27 = sub_22BB3627C();
    return v28(v27);
  }

  else if (v20 == *MEMORY[0x277D1CBE8])
  {
    v30 = v11[1];
    v31 = sub_22BB39478();
    v32(v31);
    sub_22BDBA594();
    v33 = sub_22BB31CB0();
    return sub_22BB336D0(v33, v34, v35, v36);
  }

  else
  {
    sub_22BDBA594();
    v37 = sub_22BB31CB0();
    sub_22BB336D0(v37, v38, v39, v40);
    v41 = v11[1];
    v42 = sub_22BB39478();
    return v43(v42);
  }
}

uint64_t sub_22BCB5CC8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22BDBA594();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = (v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v9 = v16 - v8;
  sub_22BDB4DF4();
  v10 = sub_22BDBA514();
  v11 = swift_allocBox();
  (*(*(v10 - 8) + 104))(v12, *MEMORY[0x277D729A0], v10);
  *v7 = v11;
  (*(v3 + 104))(v7, *MEMORY[0x277D72A58], v2);
  sub_22BCB6774(&qword_27D8E3168, MEMORY[0x277D72A78]);
  LOBYTE(v10) = sub_22BDBABD4();
  v13 = *(v3 + 8);
  v13(v7, v2);
  v13(v9, v2);
  if (v10)
  {
    v14 = 1;
  }

  else
  {
    sub_22BDB4DF4();
    v14 = 0;
  }

  return sub_22BB336D0(a1, v14, 1, v2);
}

void sub_22BCB5EE0()
{
  sub_22BB30F94();
  v1 = v0;
  v85 = v2;
  v3 = sub_22BDB5B14();
  v4 = sub_22BB30444(v3);
  v91 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BB305A8();
  v88 = v8;
  sub_22BB2F120();
  v9 = sub_22BDB4C34();
  v10 = sub_22BB30444(v9);
  v89 = v11;
  v90 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BB305A8();
  v84 = v14;
  sub_22BB2F120();
  v15 = sub_22BDB5264();
  v16 = sub_22BB30444(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BB30574();
  v23 = v22 - v21;
  v24 = sub_22BDB77D4();
  v25 = sub_22BB30444(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22BB30574();
  v32 = v31 - v30;
  v33 = sub_22BBE6DE0(&qword_27D8E3EA0, &qword_22BDC1370);
  sub_22BB2F0C8(v33);
  v35 = *(v34 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v36);
  v38 = &v73 - v37;
  v39 = *(sub_22BDB5254() + 16);

  if (v39 == 1)
  {
    v40 = v18;
    v41 = sub_22BDB5254();
    sub_22BC74140(v41, v38);

    sub_22BB31814(v38, 1, v3);
    if (!v42)
    {
      v64 = v85;
      (*(v91 + 32))(v85, v38, v3);
      v65 = v64;
      v66 = 0;
      goto LABEL_16;
    }

    sub_22BB58728(v38, &qword_27D8E3EA0, &qword_22BDC1370);
    v18 = v40;
  }

  sub_22BDB6404();
  (*(v18 + 16))(v23, v1, v15);
  v43 = sub_22BDB77C4();
  v44 = sub_22BDBB114();
  if (sub_22BB374D8(v44))
  {
    v79 = v32;
    v81 = v43;
    v82 = v15;
    v83 = v32;
    v45 = swift_slowAlloc();
    v78 = sub_22BB314C8();
    v93 = v78;
    v80 = v45;
    *v45 = 136315138;
    v46 = sub_22BDB5254();
    v47 = *(v46 + 16);
    v48 = v85;
    if (v47)
    {
      v74 = v23;
      v75 = v18;
      v76 = v27;
      v77 = v24;
      sub_22BB3323C(MEMORY[0x277D84F90]);
      sub_22BD27F28();
      v49 = v92;
      v50 = *(v91 + 16);
      v51 = *(v91 + 80);
      sub_22BB2F390();
      v73 = v46;
      v53 = v46 + v52;
      v86 = *(v54 + 56);
      v87 = v55;
      v91 = v54;
      v56 = (v54 - 8);
      v57 = v84;
      do
      {
        v58 = v88;
        v87(v88, v53, v3);
        sub_22BDB5AE4();
        v59 = v3;
        (*v56)(v58, v3);
        v92 = v49;
        v61 = *(v49 + 16);
        v60 = *(v49 + 24);
        if (v61 >= v60 >> 1)
        {
          sub_22BB2F158(v60);
          sub_22BD27F28();
          v49 = v92;
        }

        *(v49 + 16) = v61 + 1;
        sub_22BB2F374();
        (*(v63 + 32))(v49 + v62 + *(v63 + 72) * v61, v57);
        v53 += v86;
        --v47;
        v3 = v59;
      }

      while (v47);

      v48 = v85;
      v27 = v76;
      v24 = v77;
      v23 = v74;
      v18 = v75;
    }

    else
    {

      v49 = MEMORY[0x277D84F90];
    }

    MEMORY[0x2318A4D50](v49, v90);

    (*(v18 + 8))(v23, v82);
    v67 = sub_22BB2F3F0();
    v70 = sub_22BB32EE0(v67, v68, v69);

    v71 = v80;
    *(v80 + 1) = v70;
    v72 = v81;
    _os_log_impl(&dword_22BB2C000, v81, v79, "Could not extract the interpreted statement result from a system response, exactly one statement result is expected; results=%s", v71, 0xCu);
    sub_22BB32FA4(v78);
    sub_22BB30AF0();
    sub_22BB30AF0();

    (*(v27 + 8))(v83, v24);
  }

  else
  {

    (*(v18 + 8))(v23, v15);
    (*(v27 + 8))(v32, v24);
    v48 = v85;
  }

  v65 = v48;
  v66 = 1;
LABEL_16:
  sub_22BB336D0(v65, v66, 1, v3);
  sub_22BB314EC();
}

uint64_t sub_22BCB6438()
{
  sub_22BB30F68();
  v0 = sub_22BDB43E4();
  v1 = sub_22BB30444(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22BB30574();
  v8 = v7 - v6;
  sub_22BDB8F24();
  v9 = sub_22BDB43B4();
  (*(v3 + 8))(v8, v0);
  return v9 & 1;
}

uint64_t sub_22BCB652C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22BB2F330(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22BCB6584(uint64_t a1, uint64_t a2)
{
  v3 = sub_22BB30F68();
  v5 = v4(v3);
  sub_22BB30ED8(v5);
  v7 = *(v6 + 32);
  v8 = sub_22BB31F54();
  v9(v8);
  return a2;
}

uint64_t sub_22BCB66B0(uint64_t a1, uint64_t a2)
{
  v3 = sub_22BB30F68();
  v5 = v4(v3);
  sub_22BB30ED8(v5);
  v7 = *(v6 + 16);
  v8 = sub_22BB31F54();
  v9(v8);
  return a2;
}

uint64_t sub_22BCB6738(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_22BCB6774(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_22BCB67E4()
{
  sub_22BDB4C34();
  if (v0 <= 0x3F)
  {
    sub_22BCB6B14(319, &qword_281428850, _s23ParameterCandidateValueVMa);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_22BCB6900()
{
  result = sub_22BDB4C34();
  if (v1 <= 0x3F)
  {
    result = sub_22BCB69BC(319, qword_28142CD18);
    if (v2 <= 0x3F)
    {
      result = sub_22BCB69BC(319, qword_28142B290);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_22BCB69BC(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_22BCB6A38()
{
  sub_22BDB9C14();
  if (v0 <= 0x3F)
  {
    sub_22BCB6B14(319, &qword_281428878, _s13ValueExecutedVMa);
    if (v1 <= 0x3F)
    {
      sub_22BCB6B14(319, &qword_281428880, _s13ActionCreatedCMa);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22BCB6B14(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22BDBAE24();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_22BCB6BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_22BCB6C90()
{
  sub_22BB30F94();
  v1 = v0;
  v2 = _s15CandidateResultVMa();
  v3 = sub_22BB30444(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BB30574();
  v8 = sub_22BBE6DE0(&qword_27D8E3EA8, &qword_22BDC1378);
  v9 = sub_22BB2F0C8(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BB30C74();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v22[-v16];
  v18 = *v1;
  sub_22BDB8344();
  if (v19)
  {
    v22[15] = v18;
    sub_22BCB6EB8();
  }

  else
  {
    v22[14] = v18;
    sub_22BCB743C();
    sub_22BC5E5C4();
    if (sub_22BB3AA28(v14, 1, v2) != 1)
    {
      sub_22BCBA968();
      sub_22BBE6DE0(&qword_27D8E3EB8, &unk_22BDC3000);
      v20 = *(v5 + 72);
      v21 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      *(swift_allocObject() + 16) = xmmword_22BDBCBD0;
      sub_22BCBA968();
    }

    sub_22BB58728(v17, &qword_27D8E3EA8, &qword_22BDC1378);
  }

  sub_22BB314EC();
}

void sub_22BCB6EB8()
{
  sub_22BB30F94();
  v1 = v0;
  v64 = _s15CandidateResultVMa();
  v2 = sub_22BB30444(v64);
  v61 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BB30574();
  v62 = v7 - v6;
  v8 = sub_22BBE6DE0(&qword_27D8E3EA8, &qword_22BDC1378);
  v9 = sub_22BB2F0C8(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BB30C74();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v60 - v16;
  v18 = type metadata accessor for FeedbackLearning.CandidateDefinition(0);
  v19 = sub_22BB30444(v18);
  v65 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22BB30C74();
  v25 = v23 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = (&v60 - v27);
  v29 = sub_22BDBA3A4();
  v30 = sub_22BB30444(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v30);
  sub_22BB30574();
  v63 = v36 - v35;
  v37 = *v1;
  sub_22BB307B0();
  sub_22BCBA9C0();
  v66 = v18;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v60 = v32;
    v38 = sub_22BDBA594();
    sub_22BB30444(v38);
    v40 = v39;
    if ((*(v41 + 88))(v28, v38) == *MEMORY[0x277D729E0])
    {
      (*(v40 + 96))(v28, v38);
      v42 = *v28;
      v43 = swift_projectBox();
      (*(v60 + 16))(v63, v43, v29);

      v44 = sub_22BDBA394();
      v45 = *(v44 + 16);
      if (v45)
      {
        LODWORD(v62) = v37;
        v64 = v29;
        v68 = MEMORY[0x277D84F90];
        sub_22BD27DB8();
        v48 = *(v40 + 16);
        v47 = v40 + 16;
        v46 = v48;
        v49 = v68;
        v50 = *(v47 + 64);
        sub_22BB2F390();
        v61 = v44;
        v52 = v44 + v51;
        v53 = *(v47 + 56);
        do
        {
          v46(v25, v52, v38);
          swift_storeEnumTagMultiPayload();
          v68 = v49;
          v54 = *(v49 + 16);
          if (v54 >= *(v49 + 24) >> 1)
          {
            sub_22BD27DB8();
            v49 = v68;
          }

          *(v49 + 16) = v54 + 1;
          v55 = *(v65 + 80);
          sub_22BB2F390();
          v57 = *(v56 + 72);
          sub_22BCBA968();
          v52 += v53;
          --v45;
        }

        while (v45);

        v29 = v64;
        LOBYTE(v37) = v62;
      }

      else
      {

        v49 = MEMORY[0x277D84F90];
      }

      v67 = v37;
      sub_22BCB772C(v49, &v67);

      (*(v60 + 8))(v63, v29);
      goto LABEL_16;
    }

    (*(v40 + 8))(v28, v38);
  }

  else
  {
    sub_22BCBAA18(v28, type metadata accessor for FeedbackLearning.CandidateDefinition);
  }

  v69 = v37;
  sub_22BCB743C();
  sub_22BC5E5C4();
  if (sub_22BB3AA28(v14, 1, v64) != 1)
  {
    sub_22BCBA968();
    sub_22BBE6DE0(&qword_27D8E3EB8, &unk_22BDC3000);
    v58 = *(v61 + 72);
    v59 = (*(v61 + 80) + 32) & ~*(v61 + 80);
    *(swift_allocObject() + 16) = xmmword_22BDBCBD0;
    sub_22BCBA968();
  }

  sub_22BB58728(v17, &qword_27D8E3EA8, &qword_22BDC1378);
LABEL_16:
  sub_22BB314EC();
}

void sub_22BCB743C()
{
  sub_22BB30F94();
  v1 = v0;
  v3 = v2;
  v42 = sub_22BDB77D4();
  v4 = sub_22BB30444(v42);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BB30574();
  v11 = v10 - v9;
  v12 = sub_22BBE6DE0(&qword_27D8E3E60, &qword_22BDC23E0);
  sub_22BB2F0C8(v12);
  v14 = *(v13 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v15);
  v17 = &v41 - v16;
  v18 = sub_22BDB7B44();
  v19 = sub_22BB30444(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22BB30574();
  v26 = (v25 - v24);
  v27 = *v1;
  sub_22BCE19F0();
  if (sub_22BB3AA28(v17, 1, v18) == 1)
  {
    sub_22BB58728(v17, &qword_27D8E3E60, &qword_22BDC23E0);
    sub_22BDB6404();
    v28 = sub_22BDB77C4();
    v29 = sub_22BDBB114();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v44 = v31;
      *v30 = 136315138;
      v43 = v27;
      v32 = FeedbackLearning.CandidateOutcome.description.getter();
      v34 = sub_22BB32EE0(v32, v33, &v44);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_22BB2C000, v28, v29, "Cannot make a candidate result for an item with outcome %s, item is not candidateId extractable", v30, 0xCu);
      sub_22BB32FA4(v31);
      sub_22BB30AF0();
      sub_22BB30AF0();
    }

    (*(v6 + 8))(v11, v42);
    v35 = _s15CandidateResultVMa();
    v36 = v3;
    v37 = 1;
  }

  else
  {
    v38 = *(v21 + 32);
    v38(v26, v17, v18);
    v39 = _s15CandidateResultVMa();
    v40 = *(v39 + 20);
    sub_22BB307B0();
    sub_22BCBA9C0();
    v38(&v3[*(v39 + 24)], v26, v18);
    *v3 = v27;
    v36 = v3;
    v37 = 0;
    v35 = v39;
  }

  sub_22BB336D0(v36, v37, 1, v35);
  sub_22BB314EC();
}

uint64_t sub_22BCB772C(uint64_t a1, unsigned __int8 *a2)
{
  v4 = sub_22BDB77D4();
  v41 = *(v4 - 8);
  v42 = v4;
  v5 = *(v41 + 64);
  MEMORY[0x28223BE20](v4);
  v40 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22BBE6DE0(&qword_27D8E3EA8, &qword_22BDC1378);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v40 - v9;
  v43 = _s15CandidateResultVMa();
  v11 = *(v43 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v43);
  MEMORY[0x28223BE20](v13);
  v15 = &v40 - v14;
  v16 = type metadata accessor for FeedbackLearning.CandidateDefinition(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = 0;
  v45 = *a2;
  v44 = a1;
  v46 = *(a1 + 16);
  v22 = MEMORY[0x277D84F90];
  while (v46 != v21)
  {
    v23 = v44 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v24 = *(v17 + 72);
    sub_22BCBA9C0();
    v49 = v45;
    sub_22BCB743C();
    sub_22BCBAA18(v20, type metadata accessor for FeedbackLearning.CandidateDefinition);
    if (sub_22BB3AA28(v10, 1, v43) == 1)
    {

      sub_22BB58728(v10, &qword_27D8E3EA8, &qword_22BDC1378);
      v31 = v40;
      sub_22BDB6404();
      v32 = sub_22BDB77C4();
      v33 = sub_22BDBB114();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v48 = v35;
        *v34 = 136315138;
        v47 = v45;
        v36 = FeedbackLearning.CandidateOutcome.description.getter();
        v38 = sub_22BB32EE0(v36, v37, &v48);

        *(v34 + 4) = v38;
        _os_log_impl(&dword_22BB2C000, v32, v33, "Cannot make a collection of candidate results for a list of items with outcome %s", v34, 0xCu);
        sub_22BB32FA4(v35);
        MEMORY[0x2318A6080](v35, -1, -1);
        MEMORY[0x2318A6080](v34, -1, -1);
      }

      (*(v41 + 8))(v31, v42);
      return 0;
    }

    sub_22BCBA968();
    sub_22BCBA9C0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = *(v22 + 16);
      sub_22BD8FDDC();
      v22 = v29;
    }

    v25 = *(v22 + 16);
    if (v25 >= *(v22 + 24) >> 1)
    {
      sub_22BD8FDDC();
      v22 = v30;
    }

    sub_22BCBAA18(v15, _s15CandidateResultVMa);
    *(v22 + 16) = v25 + 1;
    v26 = v22 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v27 = *(v11 + 72);
    sub_22BCBA968();
    ++v21;
  }

  return v22;
}

void sub_22BCB7C08()
{
  sub_22BB30F94();
  v1 = v0;
  v3 = v2;
  v4 = _s20DisambiguationResultOMa(0);
  v5 = sub_22BB2F0C8(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BB30574();
  v75 = v9 - v8;
  v10 = sub_22BDB77D4();
  v11 = sub_22BB30444(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BB30574();
  v76 = v17 - v16;
  v18 = sub_22BBE6DE0(&qword_27D8E3ED8, &qword_22BDCE7D0);
  sub_22BB30444(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v23);
  v25 = &v71 - v24;
  v74 = v3;
  v26 = sub_22BCB86E4(v3);
  if (v26)
  {
    v27 = v26;
    v71 = v1;
    v72 = v13;
    v73 = v10;
    v28 = 0;
    v29 = *(v26 + 16);
    v30 = MEMORY[0x277D84F90];
    while (v29 != v28)
    {
      if (v28 >= *(v27 + 16))
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        return;
      }

      v31 = *(v20 + 80);
      sub_22BB2F390();
      v33 = *(v27 + v32 + *(v20 + 72) * v28 + *(v18 + 48));
      sub_22BB307B0();
      sub_22BCBA9C0();
      v25[*(v18 + 48)] = v33;
      v78 = v33;
      sub_22BCB6EB8();
      v35 = v34;
      sub_22BB58728(v25, &qword_27D8E3ED8, &qword_22BDCE7D0);
      if (!v35)
      {

        v56 = v76;
        sub_22BDB6404();
        sub_22BB31CC4();
        sub_22BCBA9C0();
        v57 = v74;

        v58 = sub_22BDB77C4();
        v59 = sub_22BDBB114();

        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          *v60 = 136315394;
          v61 = type metadata accessor for FeedbackLearning.CandidateDefinition(0);
          v62 = MEMORY[0x2318A4D50](v57, v61);
          v64 = sub_22BB32EE0(v62, v63, &v77);

          *(v60 + 4) = v64;
          *(v60 + 12) = 2080;
          v65 = sub_22BCCD54C();
          v67 = v66;
          sub_22BB33D00();
          v68 = sub_22BB32EE0(v65, v67, &v77);

          *(v60 + 14) = v68;
          sub_22BB3A62C(&dword_22BB2C000, v69, v70, "Cannot generate candidate results for a disambiguation, could not transform outcomes; items=%s, result=%s");
          swift_arrayDestroy();
          sub_22BB30AF0();
          sub_22BB30AF0();
        }

        else
        {

          sub_22BB33D00();
        }

        (*(v72 + 8))(v56, v73);
        goto LABEL_30;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = *(v30 + 16);
        sub_22BD8FD18();
        v30 = v38;
      }

      v36 = *(v30 + 16);
      if (v36 >= *(v30 + 24) >> 1)
      {
        sub_22BD8FD18();
        v30 = v39;
      }

      *(v30 + 16) = v36 + 1;
      *(v30 + 8 * v36 + 32) = v35;
      ++v28;
    }

    v40 = 0;
    v41 = *(v30 + 16);
    v42 = MEMORY[0x277D84F90];
    while (v41 != v40)
    {
      if (v40 >= *(v30 + 16))
      {
        goto LABEL_32;
      }

      v43 = v30 + 8 * v40;
      v44 = *(v43 + 32);
      v45 = *(v44 + 16);
      v46 = *(v42 + 16);
      v47 = v46 + v45;
      if (__OFADD__(v46, v45))
      {
        goto LABEL_33;
      }

      v48 = *(v43 + 32);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0 || v47 > *(v42 + 24) >> 1)
      {
        sub_22BB38AD4();
        v42 = v49;
      }

      if (*(v44 + 16))
      {
        v50 = *(sub_22BB38D60() - 8);
        if (v47 < v45)
        {
          goto LABEL_35;
        }

        v51 = (*(v50 + 80) + 32) & ~*(v50 + 80);
        v52 = *(v50 + 72);
        swift_arrayInitWithCopy();

        if (v45)
        {
          v53 = *(v42 + 16);
          v54 = __OFADD__(v53, v45);
          v55 = v53 + v45;
          if (v54)
          {
            goto LABEL_36;
          }

          *(v42 + 16) = v55;
        }
      }

      else
      {

        if (v45)
        {
          goto LABEL_34;
        }
      }

      ++v40;
    }
  }

LABEL_30:
  sub_22BB314EC();
}

void sub_22BCB8100()
{
  sub_22BB30F94();
  v78 = v0;
  v2 = v1;
  v4 = v3;
  v5 = _s20DisambiguationResultOMa(0);
  v6 = sub_22BB2F0C8(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BB30574();
  v11 = v10 - v9;
  v12 = sub_22BDB77D4();
  v13 = sub_22BB30444(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BB30574();
  v20 = v19 - v18;
  v77 = sub_22BBE6DE0(&qword_27D8E3ED8, &qword_22BDCE7D0);
  sub_22BB30444(v77);
  v22 = v21;
  v24 = *(v23 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v25);
  v27 = v71 - v26;
  v28 = sub_22BCB86E4(v4);
  v29 = v28;
  if (v28)
  {
    v71[1] = v2;
    v72 = v4;
    v73 = v11;
    v74 = v20;
    v75 = v15;
    v76 = v12;
    v30 = 0;
    v31 = *(v28 + 16);
    v32 = MEMORY[0x277D84F90];
    while (v31 != v30)
    {
      if (v30 >= *(v29 + 16))
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        return;
      }

      v33 = *(v22 + 80);
      sub_22BB2F390();
      v34 = *(v22 + 72);
      sub_22BC5E5C4();
      v35 = v78(v27, &v27[*(v77 + 48)]);
      sub_22BB58728(v27, &qword_27D8E3ED8, &qword_22BDCE7D0);
      if (!v35)
      {

        v56 = v74;
        sub_22BDB6404();
        sub_22BB31CC4();
        sub_22BCBA9C0();
        v57 = v72;

        v58 = sub_22BDB77C4();
        v59 = sub_22BDBB114();

        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          v79 = swift_slowAlloc();
          *v60 = 136315394;
          v61 = type metadata accessor for FeedbackLearning.CandidateDefinition(0);
          v62 = MEMORY[0x2318A4D50](v57, v61);
          v64 = sub_22BB32EE0(v62, v63, &v79);

          *(v60 + 4) = v64;
          *(v60 + 12) = 2080;
          v65 = sub_22BCCD54C();
          v67 = v66;
          sub_22BB33D00();
          v68 = sub_22BB32EE0(v65, v67, &v79);

          *(v60 + 14) = v68;
          sub_22BB3A62C(&dword_22BB2C000, v69, v70, "Cannot generate candidate results for a disambiguation, could not transform outcomes; items=%s, result=%s");
          swift_arrayDestroy();
          sub_22BB30AF0();
          sub_22BB30AF0();
        }

        else
        {

          sub_22BB33D00();
        }

        (*(v75 + 8))(v56, v76);
        goto LABEL_30;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = *(v32 + 16);
        sub_22BD8FD18();
        v32 = v38;
      }

      v36 = *(v32 + 16);
      if (v36 >= *(v32 + 24) >> 1)
      {
        sub_22BD8FD18();
        v32 = v39;
      }

      *(v32 + 16) = v36 + 1;
      *(v32 + 8 * v36 + 32) = v35;
      ++v30;
    }

    v40 = 0;
    v41 = *(v32 + 16);
    v42 = MEMORY[0x277D84F90];
    while (v41 != v40)
    {
      if (v40 >= *(v32 + 16))
      {
        goto LABEL_32;
      }

      v43 = v32 + 8 * v40;
      v44 = *(v43 + 32);
      v45 = *(v44 + 16);
      v46 = *(v42 + 16);
      v47 = v46 + v45;
      if (__OFADD__(v46, v45))
      {
        goto LABEL_33;
      }

      v48 = *(v43 + 32);

      if (!swift_isUniquelyReferenced_nonNull_native() || v47 > *(v42 + 24) >> 1)
      {
        sub_22BB38AD4();
        v42 = v49;
      }

      if (*(v44 + 16))
      {
        v50 = *(sub_22BB38D60() - 8);
        if (v47 < v45)
        {
          goto LABEL_35;
        }

        v51 = (*(v50 + 80) + 32) & ~*(v50 + 80);
        v52 = *(v50 + 72);
        swift_arrayInitWithCopy();

        if (v45)
        {
          v53 = *(v42 + 16);
          v54 = __OFADD__(v53, v45);
          v55 = v53 + v45;
          if (v54)
          {
            goto LABEL_36;
          }

          *(v42 + 16) = v55;
        }
      }

      else
      {

        if (v45)
        {
          goto LABEL_34;
        }
      }

      ++v40;
    }
  }

LABEL_30:
  sub_22BB314EC();
}

uint64_t sub_22BCB8600(uint64_t a1, _BYTE *a2)
{
  v3 = (sub_22BBE6DE0(&qword_27D8E3ED8, &qword_22BDCE7D0) - 8);
  v4 = *(*v3 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v5);
  v7 = &v11[-v6];
  LOBYTE(a2) = *a2;
  sub_22BB307B0();
  sub_22BCBA9C0();
  v7[v3[14]] = a2;
  v11[15] = a2;
  sub_22BCB6C90();
  v9 = v8;
  sub_22BB58728(v7, &qword_27D8E3ED8, &qword_22BDCE7D0);
  return v9;
}

uint64_t sub_22BCB86E4(uint64_t a1)
{
  v188 = a1;
  v1 = sub_22BDB77D4();
  v2 = *(v1 - 8);
  v176 = v1;
  v177 = v2;
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v169 = &v164 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v168 = &v164 - v6;
  v7 = sub_22BBE6DE0(&qword_27D8E3EE0, &qword_22BDC1490);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v174 = &v164 - v9;
  v167 = sub_22BBE6DE0(&qword_27D8E3EE8, &qword_22BDC1498);
  v10 = *(*(v167 - 8) + 64);
  MEMORY[0x28223BE20](v167);
  v166 = &v164 - v11;
  v186 = sub_22BDBA594();
  v184 = *(v186 - 8);
  v12 = *(v184 + 64);
  MEMORY[0x28223BE20](v186);
  v178 = &v164 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = sub_22BBE6DE0(&qword_27D8E3EF0, &unk_22BDCD6E0);
  v180 = *(v189 - 8);
  v14 = *(v180 + 64);
  v15 = MEMORY[0x28223BE20](v189);
  v171 = &v164 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v187 = &v164 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v181 = &v164 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = (&v164 - v22);
  MEMORY[0x28223BE20](v21);
  v25 = (&v164 - v24);
  v179 = type metadata accessor for FeedbackLearning.CandidateDefinition(0);
  v182 = *(v179 - 8);
  v26 = *(v182 + 64);
  v27 = MEMORY[0x28223BE20](v179);
  v173 = &v164 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v175 = &v164 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v170 = &v164 - v32;
  MEMORY[0x28223BE20](v31);
  v183 = &v164 - v33;
  v185 = sub_22BBE6DE0(&qword_27D8E3ED8, &qword_22BDCE7D0);
  v34 = *(v185 - 8);
  v35 = *(v34 + 64);
  v36 = MEMORY[0x28223BE20](v185);
  v38 = &v164 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v36);
  v164 = &v164 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v172 = &v164 - v42;
  MEMORY[0x28223BE20](v41);
  v44 = &v164 - v43;
  v45 = _s20DisambiguationResultOMa(0);
  v46 = *(*(v45 - 8) + 64);
  v47 = MEMORY[0x28223BE20](v45);
  v49 = &v164 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x28223BE20](v47);
  v165 = &v164 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v54 = (&v164 - v53);
  MEMORY[0x28223BE20](v52);
  v56 = (&v164 - v55);
  sub_22BCBA9C0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 2) >= 2)
  {
    if (EnumCaseMultiPayload)
    {
      (*(v184 + 8))(v56, v186);
    }

    else if (*v56 >= *(v188 + 16))
    {
      v58 = v169;
      sub_22BDB6404();
      v59 = v49;
      sub_22BCBA9C0();
      v60 = v188;

      v61 = sub_22BDB77C4();
      v62 = sub_22BDBB114();

      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = v177;
        v65 = v63;
        v66 = swift_slowAlloc();
        v190[0] = v66;
        *v65 = 136315394;
        v67 = MEMORY[0x2318A4D50](v60, v179);
        v69 = sub_22BB32EE0(v67, v68, v190);

        *(v65 + 4) = v69;
        *(v65 + 12) = 2080;
        v70 = sub_22BCCD54C();
        v72 = v71;
        sub_22BCBAA18(v59, _s20DisambiguationResultOMa);
        v73 = sub_22BB32EE0(v70, v72, v190);

        *(v65 + 14) = v73;
        _os_log_impl(&dword_22BB2C000, v61, v62, "Cannot extract disambiguation outcomes, selected candidate is not within bounds; items=%s, result=%s", v65, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2318A6080](v66, -1, -1);
        MEMORY[0x2318A6080](v65, -1, -1);

        (*(v64 + 8))(v58, v176);
      }

      else
      {

        sub_22BCBAA18(v49, _s20DisambiguationResultOMa);
        (*(v177 + 8))(v58, v176);
      }

      return 0;
    }
  }

  sub_22BCBA9C0();
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 1:
      v106 = v184;
      v107 = v178;
      v108 = v186;
      (*(v184 + 32))(v178, v54, v186);
      v109 = *(v106 + 16);
      v110 = v173;
      v109(v173, v107, v108);
      swift_storeEnumTagMultiPayload();
      v111 = v174;
      v112 = v188;
      sub_22BCB9AC4(v110, v188, v174);
      sub_22BCBAA18(v110, type metadata accessor for FeedbackLearning.CandidateDefinition);
      v113 = sub_22BBE6DE0(&qword_27D8E3EF8, qword_22BDC14A0);
      if (sub_22BB3AA28(v111, 1, v113) == 1)
      {
        sub_22BB58728(v111, &qword_27D8E3EE0, &qword_22BDC1490);
        v114 = v168;
        sub_22BDB6404();
        v115 = v165;
        sub_22BCBA9C0();

        v116 = sub_22BDB77C4();
        v117 = sub_22BDBB114();

        if (os_log_type_enabled(v116, v117))
        {
          v118 = swift_slowAlloc();
          v119 = v177;
          v120 = v118;
          v121 = swift_slowAlloc();
          v190[0] = v121;
          *v120 = 136315394;
          v122 = MEMORY[0x2318A4D50](v112, v179);
          v124 = sub_22BB32EE0(v122, v123, v190);

          *(v120 + 4) = v124;
          *(v120 + 12) = 2080;
          v125 = sub_22BCCD54C();
          v127 = v126;
          sub_22BCBAA18(v115, _s20DisambiguationResultOMa);
          v128 = sub_22BB32EE0(v125, v127, v190);

          *(v120 + 14) = v128;
          _os_log_impl(&dword_22BB2C000, v116, v117, "Cannot extract disambiguation outcomes, selected value could not be extracted; items=%s, result=%s", v120, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x2318A6080](v121, -1, -1);
          MEMORY[0x2318A6080](v120, -1, -1);

          (*(v119 + 8))(v114, v176);
        }

        else
        {

          sub_22BCBAA18(v115, _s20DisambiguationResultOMa);
          (*(v177 + 8))(v114, v176);
        }

        (*(v184 + 8))(v107, v186);
        return 0;
      }

      v136 = *(v111 + *(v113 + 48));
      v137 = v167;
      v138 = *(v167 + 48);
      v139 = v166;
      sub_22BCBA968();
      *&v139[v138] = v136;
      v140 = *&v139[*(v137 + 48)];
      sub_22BCBA968();
      sub_22BBE6DE0(&qword_27D8E3F00, &unk_22BDCD700);
      v141 = *(v34 + 72);
      v142 = (*(v34 + 80) + 32) & ~*(v34 + 80);
      v143 = swift_allocObject();
      *(v143 + 16) = xmmword_22BDBCBD0;
      v144 = *(v185 + 48);
      sub_22BCBA9C0();
      *(v143 + v142 + v144) = 64;
      v145 = *(v140 + 16);
      if (v145)
      {
        v188 = v143;
        v190[0] = MEMORY[0x277D84F90];
        sub_22BD27E90();
        v146 = v190[0];
        v147 = *(v182 + 80);
        v189 = v140;
        v148 = v140 + ((v147 + 32) & ~v147);
        v149 = *(v182 + 72);
        v150 = v185;
        v151 = v164;
        do
        {
          sub_22BCBA9C0();
          v151[*(v150 + 48)] = 65;
          v190[0] = v146;
          v152 = *(v146 + 16);
          if (v152 >= *(v146 + 24) >> 1)
          {
            sub_22BD27E90();
            v150 = v185;
            v146 = v190[0];
          }

          *(v146 + 16) = v152 + 1;
          sub_22BC8D26C();
          v148 += v149;
          --v145;
        }

        while (v145);

        v107 = v178;
        v143 = v188;
      }

      else
      {

        v146 = MEMORY[0x277D84F90];
      }

      v190[0] = v143;
      sub_22BD66B28(v146);
      sub_22BCBAA18(v175, type metadata accessor for FeedbackLearning.CandidateDefinition);
      (*(v184 + 8))(v107, v186);
      return v190[0];
    case 2:
      v89 = v188;
      v90 = *(v188 + 16);
      v91 = MEMORY[0x277D84F90];
      if (v90)
      {
        v190[0] = MEMORY[0x277D84F90];
        sub_22BD27E90();
        v91 = v190[0];
        v92 = v89 + ((*(v182 + 80) + 32) & ~*(v182 + 80));
        v93 = *(v182 + 72);
        v94 = v185;
        do
        {
          sub_22BCBA9C0();
          v44[*(v94 + 48)] = 66;
          v190[0] = v91;
          v95 = *(v91 + 16);
          if (v95 >= *(v91 + 24) >> 1)
          {
            sub_22BD27E90();
            v94 = v185;
            v91 = v190[0];
          }

          *(v91 + 16) = v95 + 1;
          v96 = v91 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
          v97 = *(v34 + 72);
          sub_22BC8D26C();
          v92 += v93;
          --v90;
        }

        while (v90);
      }

      return v91;
    case 3:
      v98 = v188;
      v99 = *(v188 + 16);
      v91 = MEMORY[0x277D84F90];
      if (v99)
      {
        v190[0] = MEMORY[0x277D84F90];
        sub_22BD27E90();
        v91 = v190[0];
        v100 = v98 + ((*(v182 + 80) + 32) & ~*(v182 + 80));
        v101 = *(v182 + 72);
        v102 = v185;
        do
        {
          sub_22BCBA9C0();
          v38[*(v102 + 48)] = 67;
          v190[0] = v91;
          v103 = *(v91 + 16);
          if (v103 >= *(v91 + 24) >> 1)
          {
            sub_22BD27E90();
            v102 = v185;
            v91 = v190[0];
          }

          *(v91 + 16) = v103 + 1;
          v104 = v91 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
          v105 = *(v34 + 72);
          sub_22BC8D26C();
          v100 += v101;
          --v99;
        }

        while (v99);
      }

      return v91;
    default:
      v75 = *v54;
      if ((*v54 & 0x8000000000000000) != 0)
      {
        __break(1u);
        goto LABEL_65;
      }

      v76 = *(v188 + 16);
      if (v75 >= v76)
      {
LABEL_65:
        __break(1u);
        return result;
      }

      v186 = (*(v182 + 80) + 32) & ~*(v182 + 80);
      v77 = v188 + v186;
      v78 = *(v182 + 72);
      sub_22BCBA9C0();
      v79 = 0;
      v184 = MEMORY[0x277D84F90];
      v188 = v78;
LABEL_11:
      v80 = v77 + v78 * v79;
      while (v76 != v79)
      {
        v81 = *(v189 + 48);
        *v23 = v79;
        sub_22BCBA9C0();
        sub_22BC8D26C();
        if (*v25 != v75)
        {
          sub_22BC8D26C();
          v82 = v184;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v190[0] = v82;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v84 = *(v82 + 16);
            sub_22BD27E50();
            v82 = v190[0];
          }

          v85 = *(v82 + 16);
          v86 = v85 + 1;
          if (v85 >= *(v82 + 24) >> 1)
          {
            v184 = v85 + 1;
            v182 = v85;
            sub_22BD27E50();
            v86 = v184;
            v82 = v190[0];
          }

          ++v79;
          *(v82 + 16) = v86;
          v87 = (*(v180 + 80) + 32) & ~*(v180 + 80);
          v184 = v82;
          v88 = *(v180 + 72);
          sub_22BC8D26C();
          v78 = v188;
          goto LABEL_11;
        }

        sub_22BB58728(v25, &qword_27D8E3EF0, &unk_22BDCD6E0);
        v80 += v188;
        ++v79;
      }

      v129 = *(v184 + 16);
      if (v129)
      {
        v182 = v34;
        v190[0] = MEMORY[0x277D84F90];
        v130 = v184;
        sub_22BD27DB8();
        v131 = v190[0];
        v132 = v130 + ((*(v180 + 80) + 32) & ~*(v180 + 80));
        v133 = *(v180 + 72);
        do
        {
          sub_22BC5E5C4();
          sub_22BC8D26C();
          v134 = *(v189 + 48);
          sub_22BCBA968();
          v190[0] = v131;
          v135 = *(v131 + 16);
          if (v135 >= *(v131 + 24) >> 1)
          {
            sub_22BD27DB8();
            v131 = v190[0];
          }

          *(v131 + 16) = v135 + 1;
          sub_22BCBA968();
          v132 += v133;
          --v129;
        }

        while (v129);

        v34 = v182;
      }

      else
      {

        v131 = MEMORY[0x277D84F90];
      }

      sub_22BBE6DE0(&qword_27D8E3F00, &unk_22BDCD700);
      v153 = (*(v34 + 80) + 32) & ~*(v34 + 80);
      v189 = *(v34 + 72);
      v154 = swift_allocObject();
      *(v154 + 16) = xmmword_22BDBCBD0;
      v155 = *(v185 + 48);
      sub_22BCBA9C0();
      *(v154 + v153 + v155) = 64;
      v156 = *(v131 + 16);
      v157 = v172;
      v158 = v188;
      if (v156)
      {
        v187 = v154;
        v190[0] = MEMORY[0x277D84F90];
        sub_22BD27E90();
        v159 = v190[0];
        v160 = v185;
        v161 = v131 + v186;
        do
        {
          sub_22BCBA9C0();
          v157[*(v160 + 48)] = 65;
          v190[0] = v159;
          v162 = v157;
          v163 = *(v159 + 16);
          if (v163 >= *(v159 + 24) >> 1)
          {
            sub_22BD27E90();
            v160 = v185;
            v159 = v190[0];
          }

          *(v159 + 16) = v163 + 1;
          sub_22BC8D26C();
          v161 += v158;
          --v156;
          v157 = v162;
        }

        while (v156);

        v154 = v187;
      }

      else
      {

        v159 = MEMORY[0x277D84F90];
      }

      v190[0] = v154;
      sub_22BD66B28(v159);
      sub_22BCBAA18(v183, type metadata accessor for FeedbackLearning.CandidateDefinition);
      return v190[0];
  }
}

uint64_t sub_22BCB9AC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v132 = a2;
  v119 = sub_22BDB77D4();
  v118 = *(v119 - 8);
  v5 = *(v118 + 64);
  v6 = MEMORY[0x28223BE20](v119);
  v8 = &v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v113 = &v112 - v9;
  v131 = sub_22BDBA994();
  v124 = *(v131 - 8);
  v10 = *(v124 + 64);
  MEMORY[0x28223BE20](v131);
  v130 = &v112 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_22BDBA594();
  v122 = *(v129 - 8);
  v12 = *(v122 + 64);
  MEMORY[0x28223BE20](v129);
  v128 = &v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_22BDBA014();
  v120 = *(v127 - 8);
  v14 = *(v120 + 64);
  MEMORY[0x28223BE20](v127);
  v126 = &v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_22BBE6DE0(&qword_27D8E3F08, &unk_22BDD0430);
  v142 = *(v148 - 8);
  v16 = *(v142 + 64);
  v17 = MEMORY[0x28223BE20](v148);
  v144 = &v112 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v143 = &v112 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v139 = &v112 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v138 = &v112 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v112 - v25;
  v141 = type metadata accessor for FeedbackLearning.CandidateDefinition(0);
  v145 = *(v141 - 8);
  v27 = *(v145 + 64);
  v28 = MEMORY[0x28223BE20](v141);
  v114 = &v112 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v112 - v31;
  MEMORY[0x28223BE20](v30);
  v146 = &v112 - v33;
  v34 = sub_22BBE6DE0(&qword_27D8E3E60, &qword_22BDC23E0);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v34 - 8);
  v38 = &v112 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v36);
  v140 = &v112 - v40;
  MEMORY[0x28223BE20](v39);
  v42 = &v112 - v41;
  v43 = sub_22BDB7B44();
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  v46 = MEMORY[0x28223BE20](v43);
  v137 = &v112 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v49 = &v112 - v48;
  v117 = a1;
  sub_22BCE19F0();
  if (sub_22BB3AA28(v42, 1, v43) == 1)
  {
    sub_22BB58728(v42, &qword_27D8E3E60, &qword_22BDC23E0);
    sub_22BDB6404();
    v50 = sub_22BDB77C4();
    v51 = sub_22BDBB114();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = v8;
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_22BB2C000, v50, v51, "Cannot extract selected value for a disambiguation, selected value is not candidateId extractable", v53, 2u);
      v54 = v53;
      v8 = v52;
      MEMORY[0x2318A6080](v54, -1, -1);
    }

    (*(v118 + 8))(v8, v119);
    v55 = sub_22BBE6DE0(&qword_27D8E3EF8, qword_22BDC14A0);
    return sub_22BB336D0(a3, 1, 1, v55);
  }

  v112 = a3;
  v116 = v44;
  v57 = *(v44 + 32);
  v115 = v49;
  v135 = v57;
  v136 = v44 + 32;
  v58 = (v57)(v49, v42, v43);
  v59 = *(v132 + 16);
  v60 = MEMORY[0x277D84F90];
  v147 = v43;
  if (!v59)
  {
LABEL_19:
    MEMORY[0x28223BE20](v58);
    v88 = v115;
    *(&v112 - 2) = v115;
    sub_22BDA25D0();
    v90 = v89;
    v91 = *(v89 + 16);
    if (v91)
    {
      v149 = MEMORY[0x277D84F90];
      sub_22BD27DB8();
      v92 = v149;
      v93 = *(v142 + 80);
      v146 = v90;
      v94 = v90 + ((v93 + 32) & ~v93);
      v95 = *(v142 + 72);
      v96 = (v116 + 8);
      do
      {
        sub_22BC5E5C4();
        v97 = v144;
        sub_22BC8D26C();
        v98 = *(v148 + 48);
        sub_22BCBA968();
        (*v96)(&v97[v98], v147);
        v149 = v92;
        v99 = *(v92 + 16);
        if (v99 >= *(v92 + 24) >> 1)
        {
          sub_22BD27DB8();
          v92 = v149;
        }

        *(v92 + 16) = v99 + 1;
        v100 = v92 + ((*(v145 + 80) + 32) & ~*(v145 + 80));
        v101 = *(v145 + 72);
        sub_22BCBA968();
        v94 += v95;
        --v91;
      }

      while (v91);

      v102 = v116;
      v88 = v115;
    }

    else
    {

      v92 = MEMORY[0x277D84F90];
      v102 = v116;
    }

    v109 = sub_22BBE6DE0(&qword_27D8E3EF8, qword_22BDC14A0);
    v110 = *(v109 + 48);
    v111 = v112;
    sub_22BCBA9C0();
    *(v111 + v110) = v92;
    sub_22BB336D0(v111, 0, 1, v109);
    return (*(v102 + 8))(v88, v147);
  }

  v61 = v43;
  v134 = v38;
  v62 = v132 + ((*(v145 + 80) + 32) & ~*(v145 + 80));
  v132 = *(v145 + 72);
  v125 = (v124 + 32);
  v124 += 8;
  v123 = (v122 + 32);
  v122 += 8;
  v121 = (v120 + 32);
  v120 += 8;
  v133 = v32;
  while (1)
  {
    sub_22BCBA9C0();
    sub_22BCBA9C0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v64 = v134;
      if (EnumCaseMultiPayload == 1)
      {
        v65 = v128;
        v66 = v129;
        (*v123)(v128, v32, v129);
        sub_22BCB4048();
        (*v122)(v65, v66);
        goto LABEL_13;
      }

      v67 = v130;
      v68 = v131;
      (*v125)(v130, v32, v131);
      sub_22BDBA964();
      v69 = &v151;
    }

    else
    {
      v67 = v126;
      v68 = v127;
      (*v121)(v126, v32, v127);
      v64 = v134;
      sub_22BDBA004();
      v69 = &v150;
    }

    (**(v69 - 32))(v67, v68);
    sub_22BB336D0(v64, 0, 1, v61);
LABEL_13:
    v70 = v140;
    sub_22BC8D26C();
    if (sub_22BB3AA28(v70, 1, v61) == 1)
    {
      break;
    }

    v71 = v59;
    v72 = v60;
    v73 = v137;
    v74 = v61;
    v75 = v61;
    v76 = v135;
    v135(v137, v70, v74);
    v77 = *(v148 + 48);
    v78 = v26;
    v79 = v138;
    sub_22BCBA968();
    v80 = v73;
    v60 = v72;
    v76(&v79[v77], v80, v75);
    v26 = v78;
    sub_22BC8D26C();
    sub_22BC5E5C4();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v85 = *(v72 + 16);
      sub_22BD8FEA4();
      v60 = v86;
    }

    v81 = v71;
    v82 = *(v60 + 16);
    v32 = v133;
    if (v82 >= *(v60 + 24) >> 1)
    {
      sub_22BD8FEA4();
      v60 = v87;
    }

    sub_22BB58728(v26, &qword_27D8E3F08, &unk_22BDD0430);
    *(v60 + 16) = v82 + 1;
    v83 = v60 + ((*(v142 + 80) + 32) & ~*(v142 + 80));
    v84 = *(v142 + 72);
    v58 = sub_22BC8D26C();
    v62 += v132;
    v59 = v81 - 1;
    v61 = v147;
    if (!v59)
    {
      goto LABEL_19;
    }
  }

  v103 = v61;
  sub_22BCBAA18(v146, type metadata accessor for FeedbackLearning.CandidateDefinition);
  sub_22BB58728(v70, &qword_27D8E3E60, &qword_22BDC23E0);

  v104 = v113;
  sub_22BDB6404();
  v105 = sub_22BDB77C4();
  v106 = sub_22BDBB114();
  if (os_log_type_enabled(v105, v106))
  {
    v107 = swift_slowAlloc();
    *v107 = 0;
    _os_log_impl(&dword_22BB2C000, v105, v106, "Cannot extract selected value for a disambiguation, not all items are candidateId extractable", v107, 2u);
    MEMORY[0x2318A6080](v107, -1, -1);
  }

  (*(v118 + 8))(v104, v119);
  v108 = sub_22BBE6DE0(&qword_27D8E3EF8, qword_22BDC14A0);
  sub_22BB336D0(v112, 1, 1, v108);
  return (*(v116 + 8))(v115, v103);
}

BOOL sub_22BCBA8E4()
{
  v0 = *(sub_22BBE6DE0(&qword_27D8E3F08, &unk_22BDD0430) + 48);
  sub_22BDB7B44();
  sub_22BCBAA90();
  return (sub_22BDBABD4() & 1) == 0;
}

uint64_t sub_22BCBA968()
{
  sub_22BB35F54();
  v2 = v1(0);
  sub_22BB2F330(v2);
  v4 = *(v3 + 32);
  v5 = sub_22BB31F54();
  v6(v5);
  return v0;
}

uint64_t sub_22BCBA9C0()
{
  sub_22BB35F54();
  v2 = v1(0);
  sub_22BB2F330(v2);
  v4 = *(v3 + 16);
  v5 = sub_22BB31F54();
  v6(v5);
  return v0;
}

uint64_t sub_22BCBAA18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22BB2F330(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_22BCBAA90()
{
  result = qword_27D8E3078;
  if (!qword_27D8E3078)
  {
    sub_22BDB7B44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E3078);
  }

  return result;
}

uint64_t sub_22BCBAAE8(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 >> 6)
  {
    if (v2 >> 6 != 1)
    {
      switch(*a1)
      {
        case 0x81:
          if (v3 != 129)
          {
            return 0;
          }

          goto LABEL_13;
        case 0x82:
          if (v3 != 130)
          {
            return 0;
          }

          goto LABEL_13;
        case 0x83:
          if (v3 != 131)
          {
            return 0;
          }

          goto LABEL_13;
        default:
          if (v3 != 128)
          {
            return 0;
          }

          goto LABEL_13;
      }
    }

    v4 = v3 & 0xC0;
    v5 = (v3 ^ v2) & 0x3F;
    if (v4 != 64 || v5 != 0)
    {
      return 0;
    }
  }

  else if (v3 > 0x3F || v2 != v3)
  {
    return 0;
  }

LABEL_13:
  v8 = _s15CandidateResultVMa();
  v9 = *(v8 + 20);
  static FeedbackLearning.CandidateDefinition.== infix(_:_:)();
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v11 = *(v8 + 24);

  return sub_22BDB7B04();
}

unint64_t sub_22BCBABF8()
{
  v1 = v0;
  sub_22BDBB334();

  v2 = *(_s15CandidateResultVMa() + 24);
  sub_22BDB7B44();
  sub_22BCBAD4C();
  v3 = sub_22BDBB684();
  MEMORY[0x2318A4C40](v3);

  MEMORY[0x2318A4C40](0x6D6F6374756F202CLL, 0xEB00000000203A65);
  v6 = *v1;
  v4 = FeedbackLearning.CandidateOutcome.description.getter();
  MEMORY[0x2318A4C40](v4);

  MEMORY[0x2318A4C40](41, 0xE100000000000000);
  return 0xD00000000000001DLL;
}

uint64_t _s15CandidateResultVMa()
{
  result = qword_27D8E3F10;
  if (!qword_27D8E3F10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22BCBAD4C()
{
  result = qword_27D8E3E70;
  if (!qword_27D8E3E70)
  {
    sub_22BDB7B44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E3E70);
  }

  return result;
}

uint64_t sub_22BCBADCC()
{
  result = type metadata accessor for FeedbackLearning.CandidateDefinition(319);
  if (v1 <= 0x3F)
  {
    result = sub_22BDB7B44();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_22BCBAE60(uint64_t a1)
{
  v2 = type metadata accessor for FeedbackLearning.CandidateDefinition(0);
  v3 = sub_22BB30444(v2);
  v111 = v4;
  v112 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = _s19ValueStepEvaluationVMa(0);
  v9 = sub_22BB30444(v110);
  v106 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v101 = v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22BDB4C34();
  v15 = sub_22BB30444(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v15);
  v102 = v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = v92 - v22;
  v24 = sub_22BDB77D4();
  v25 = sub_22BB30444(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v25);
  v32 = v92 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = v92 - v33;
  v113 = a1;

  sub_22BDA280C();
  v36 = v35;
  sub_22BDB6404();
  v37 = *(v17 + 16);
  v93 = a1;
  v38 = a1;
  v39 = v36;
  v92[1] = v17 + 16;
  v92[0] = v37;
  v37(v23, v38, v14);

  v109 = v34;
  v40 = sub_22BDB77C4();
  LODWORD(v36) = sub_22BDBB0F4();

  LODWORD(v105) = v36;
  v108 = v40;
  v41 = os_log_type_enabled(v40, v36);
  v107 = v39;
  v96 = v17;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    v114[0] = v104;
    *v42 = 136315394;
    sub_22BCBBA38();
    v43 = sub_22BDBB684();
    v45 = v44;
    v46 = sub_22BB33D28();
    v47(v46);
    v48 = sub_22BB32EE0(v43, v45, v114);

    *(v42 + 4) = v48;
    *(v42 + 12) = 2080;
    v49 = MEMORY[0x2318A4D50](v107, v110);
    v51 = sub_22BB32EE0(v49, v50, v114);

    *(v42 + 14) = v51;
    v52 = v108;
    _os_log_impl(&dword_22BB2C000, v108, v105, "Matching step evaluations for statementId=%s: %s", v42, 0x16u);
    swift_arrayDestroy();
    sub_22BB30AF0();
    v39 = v107;
    sub_22BB30AF0();
  }

  else
  {

    v53 = sub_22BB33D28();
    v54(v53);
  }

  v95 = *(v27 + 8);
  v95(v109, v24);
  v56 = v101;
  v55 = v102;
  v105 = *(v39 + 16);
  if (v105)
  {
    v110 = &v101[v110[6]];
    v57 = _s25ValueDisambiguationResultVMa(0);
    v58 = 0;
    v59 = *(v57 + 20);
    v103 = v39 + ((*(v106 + 80) + 32) & ~*(v106 + 80));
    v104 = v59;
    v60 = MEMORY[0x277D84F90];
    v99 = v27;
    v100 = v24;
    v97 = v14;
    v98 = v32;
    while (v58 < *(v39 + 16))
    {
      v108 = v58;
      v109 = v60;
      sub_22BCBB918(v103 + *(v106 + 72) * v58, v56, _s19ValueStepEvaluationVMa);
      v61 = *v110;
      v62 = *(*v110 + 16);
      if (v62)
      {
        v114[0] = MEMORY[0x277D84F90];
        sub_22BD27DB8();
        v63 = v114[0];
        v64 = sub_22BDBA594();
        v65 = *(v64 - 8);
        v66 = *(v65 + 16);
        v67 = v61 + ((*(v65 + 80) + 32) & ~*(v65 + 80));
        v68 = *(v65 + 72);
        do
        {
          v66(v8, v67, v64);
          swift_storeEnumTagMultiPayload();
          v114[0] = v63;
          v69 = *(v63 + 16);
          if (v69 >= *(v63 + 24) >> 1)
          {
            sub_22BD27DB8();
            v63 = v114[0];
          }

          *(v63 + 16) = v69 + 1;
          sub_22BCBB978(v8, v63 + ((*(v111 + 80) + 32) & ~*(v111 + 80)) + *(v111 + 72) * v69);
          v67 += v68;
          --v62;
        }

        while (v62);
        v24 = v100;
        v14 = v97;
        v32 = v98;
        v56 = v101;
        v55 = v102;
      }

      sub_22BCB7C08();
      v71 = v70;

      sub_22BCBB9DC(v56);
      if (v71)
      {
        v72 = v109;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v75 = *(v72 + 2);
          sub_22BD8FD18();
          v72 = v76;
        }

        v73 = *(v72 + 2);
        v74 = v72;
        if (v73 >= *(v72 + 3) >> 1)
        {
          sub_22BD8FD18();
          v74 = v77;
        }

        *(v74 + 16) = v73 + 1;
        v60 = v74;
        *(v74 + 8 * v73 + 32) = v71;
      }

      else
      {
        v60 = v109;
      }

      v39 = v107;
      v58 = (&v108->isa + 1);
      if (&v108->isa + 1 == v105)
      {

        goto LABEL_23;
      }
    }

    __break(1u);
  }

  else
  {

    v60 = MEMORY[0x277D84F90];
LABEL_23:
    sub_22BDB6404();
    (v92[0])(v55, v93, v14);

    v78 = v60;
    v79 = sub_22BDB77C4();
    v80 = v14;
    v81 = sub_22BDBB0F4();

    if (os_log_type_enabled(v79, v81))
    {
      v82 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v114[0] = v112;
      *v82 = 136315394;
      sub_22BCBBA38();
      v83 = sub_22BDBB684();
      v84 = v55;
      v86 = v85;
      v94(v84, v80);
      v87 = sub_22BB32EE0(v83, v86, v114);

      *(v82 + 4) = v87;
      *(v82 + 12) = 2080;
      v88 = sub_22BBE6DE0(&qword_27D8E3EB0, &qword_22BDC1380);
      v89 = MEMORY[0x2318A4D50](v78, v88);
      v91 = sub_22BB32EE0(v89, v90, v114);
      v60 = v78;

      *(v82 + 14) = v91;
      _os_log_impl(&dword_22BB2C000, v79, v81, "Generated candidate results for statementId=%s: %s", v82, 0x16u);
      swift_arrayDestroy();
      sub_22BB30AF0();
      sub_22BB30AF0();
    }

    else
    {

      v94(v55, v80);
    }

    v95(v32, v24);
    sub_22BCDFC54(v60);
  }
}

uint64_t sub_22BCBB744@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22BDB4C34();
  sub_22BB2F330(v6);
  v8 = *(v7 + 16);
  v8(a3, a2, v6);
  v9 = _s16CandidateSummaryVMa(0);
  v8(a3 + v9[5], a2, v6);
  type metadata accessor for FeedbackLearning.CandidateParameter(0);
  swift_storeEnumTagMultiPayload();
  v10 = _s15CandidateResultVMa();
  sub_22BCBB918(&a1[*(v10 + 20)], a3 + v9[6], type metadata accessor for FeedbackLearning.CandidateDefinition);
  v11 = *(v10 + 24);
  v12 = v9[7];
  v13 = sub_22BDB7B44();
  sub_22BB2F330(v13);
  (*(v14 + 16))(a3 + v12, &a1[v11]);
  *(a3 + v9[8]) = *a1;
  *(a3 + v9[9]) = 1;
  return sub_22BB336D0(a3, 0, 1, v9);
}

uint64_t sub_22BCBB918(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_22BB2F330(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_22BCBB978(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedbackLearning.CandidateDefinition(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BCBB9DC(uint64_t a1)
{
  v2 = _s19ValueStepEvaluationVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22BCBBA38()
{
  result = qword_27D8E2F68;
  if (!qword_27D8E2F68)
  {
    sub_22BDB4C34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E2F68);
  }

  return result;
}

uint64_t sub_22BCBBA90(uint64_t a1, uint64_t a2)
{
  v4 = _s12ValueFetcherV14ValueStatementVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BCBBAF4(uint64_t a1)
{
  v2 = _s12ValueFetcherV14ValueStatementVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22BCBBB60()
{
  result = sub_22BDB4C34();
  if (v1 <= 0x3F)
  {
    result = sub_22BDBA594();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22BCBBBE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v197 = a2;
  v3 = _s23StatementStepEvaluationOMa(0);
  v4 = sub_22BB2F330(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BB30560();
  v187 = v7;
  MEMORY[0x28223BE20](v8);
  v186 = &v166 - v9;
  sub_22BB2F120();
  v172 = sub_22BDB8B14();
  v10 = sub_22BB30444(v172);
  v171 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BB305A8();
  v170 = v14;
  sub_22BB2F120();
  v177 = sub_22BDB8B84();
  v15 = sub_22BB30444(v177);
  v176 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BB305A8();
  v175 = v19;
  v20 = sub_22BB2F120();
  v180 = _s26PromptStatementStepBuilderV10ResolutionOMa(v20);
  v21 = sub_22BB2F330(v180);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22BB305A8();
  v182 = v24;
  sub_22BB2F120();
  v25 = sub_22BDB4C34();
  v26 = sub_22BB30444(v25);
  v183 = v27;
  v184 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22BB305A8();
  v181 = v30;
  sub_22BB2F120();
  v31 = sub_22BDB8584();
  v32 = sub_22BB30444(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22BB305A8();
  v178 = v37;
  sub_22BB2F120();
  v38 = sub_22BDB80F4();
  v188 = sub_22BB30444(v38);
  v189 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v188);
  sub_22BB305A8();
  v190 = v42;
  v43 = sub_22BBE6DE0(&qword_27D8E3E10, &qword_22BDC1258);
  v44 = sub_22BB2F0C8(v43);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  sub_22BB30560();
  v185 = v47;
  MEMORY[0x28223BE20](v48);
  v191 = &v166 - v49;
  v50 = sub_22BBE6DE0(&qword_27D8E3F38, &unk_22BDC1590);
  v51 = sub_22BB2F0C8(v50);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v51);
  v192 = &v166 - v54;
  sub_22BB2F120();
  v55 = sub_22BDB89F4();
  v56 = sub_22BB30444(v55);
  v194 = v57;
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v56);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v60);
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v61);
  v193 = &v166 - v62;
  v63 = sub_22BB2F120();
  v64 = _s9PlanEventVMa(v63);
  v65 = sub_22BB2F330(v64);
  v67 = *(v66 + 64);
  MEMORY[0x28223BE20](v65);
  v69 = &v166 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_22BDB77D4();
  v198 = sub_22BB30444(v70);
  v199 = v71;
  v73 = *(v72 + 64);
  MEMORY[0x28223BE20](v198);
  sub_22BB30560();
  v196 = v74;
  MEMORY[0x28223BE20](v75);
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v76);
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v77);
  v79 = &v166 - v78;
  sub_22BDB6404();
  sub_22BB30D0C();
  v200 = a1;
  sub_22BCBD384(a1, v69, v80);
  v81 = sub_22BDB77C4();
  v82 = sub_22BDBB104();
  v83 = os_log_type_enabled(v81, v82);
  v195 = v55;
  if (v83)
  {
    v84 = swift_slowAlloc();
    v167 = v31;
    v85 = v84;
    v86 = swift_slowAlloc();
    sub_22BB2F4E0(v86);
    *v85 = 136315138;
    v87 = &v69[*(v64 + 20)];
    sub_22BDB9914();
    v88 = MEMORY[0x2318A4D50]();
    v166 = v34;
    v90 = v89;

    sub_22BB35B00();
    sub_22BCBD3E0(v69, v91);
    v92 = sub_22BB32EE0(v88, v90, &v201);
    v34 = v166;

    *(v85 + 4) = v92;
    _os_log_impl(&dword_22BB2C000, v81, v82, "Evaluating a plan for a dialog response, plan=%s", v85, 0xCu);
    sub_22BB32FA4(v3);
    v3 = v173;
    sub_22BB30AF0();
    v31 = v167;
    sub_22BB30AF0();
  }

  else
  {

    sub_22BB35B00();
    sub_22BCBD3E0(v69, v93);
  }

  v94 = v198;
  v95 = *(v199 + 8);
  v95(v79, v198);
  v96 = *(v64 + 20);
  v97 = *(sub_22BDB9914() + 16);

  if (v97 != 1)
  {
LABEL_7:
    v101 = v196;
    sub_22BDB6404();
    v102 = sub_22BDB77C4();
    v103 = sub_22BDBB104();
    if (sub_22BB3805C(v103))
    {
      v104 = swift_slowAlloc();
      *v104 = 0;
      _os_log_impl(&dword_22BB2C000, v102, v103, "The plan does not contain a dialog response command - expecting a single statement, skipping", v104, 2u);
      sub_22BB30AF0();
    }

    v95(v101, v94);
    return sub_22BB336D0(v197, 1, 1, v3);
  }

  v167 = v95;
  v98 = sub_22BDB9914();
  v99 = v192;
  sub_22BC7419C(v98, v192);

  v100 = v195;
  if (sub_22BB3AA28(v99, 1, v195) == 1)
  {
    sub_22BB58728(v99, &qword_27D8E3F38, &unk_22BDC1590);
    v95 = v167;
    goto LABEL_7;
  }

  (*(v194 + 32))(v193, v99, v100);
  v106 = v190;
  sub_22BDB89D4();
  v107 = v188;
  v108 = v189;
  v109 = *(v189 + 88);
  v110 = sub_22BB31F54();
  v112 = v111(v110);
  if (v112 == *MEMORY[0x277D1DA88])
  {
    v113 = *(v108 + 96);
    v114 = sub_22BB31F54();
    v115(v114);
    v116 = v34;
    v117 = *(v34 + 32);
    v118 = v178;
    v117(v178, v106, v31);
    sub_22BB3A64C();
    MEMORY[0x2318A2530]();
    *v182 = sub_22BDB8574();
    sub_22BB356C8();
    swift_storeEnumTagMultiPayload();
    v119 = v191;
    sub_22BB310D4();
    sub_22BB322F8();
    v120 = sub_22BB36288();
    v121(v120);
    v100 = v195;
    (*(v116 + 8))(v118, v31);
LABEL_16:
    v135 = v194;
    v136 = v185;
    goto LABEL_17;
  }

  v119 = v191;
  if (v112 == *MEMORY[0x277D1DAD8])
  {
    v122 = v107;
    v123 = v190;
    (*(v189 + 96))(v190, v122);
    v124 = v176;
    v125 = v175;
    v126 = v177;
    (*(v176 + 32))(v175, v123, v177);
    sub_22BB3A64C();
    MEMORY[0x2318A2B40]();
    sub_22BB356C8();
    swift_storeEnumTagMultiPayload();
    sub_22BB310D4();
    sub_22BB322F8();
    v127 = sub_22BB36288();
    v128(v127);
    (*(v124 + 8))(v125, v126);
    goto LABEL_16;
  }

  if (v112 == *MEMORY[0x277D1DAC8])
  {
    v129 = v190;
    (*(v189 + 96))(v190, v188);
    v130 = v171;
    v131 = v170;
    v132 = v172;
    (*(v171 + 32))(v170, v129, v172);
    sub_22BB3A64C();
    MEMORY[0x2318A2AD0]();
    sub_22BB356C8();
    swift_storeEnumTagMultiPayload();
    sub_22BB310D4();
    sub_22BB322F8();
    v133 = sub_22BB36288();
    v134(v133);
    (*(v130 + 8))(v131, v132);
    goto LABEL_16;
  }

  v154 = v174;
  sub_22BDB6404();
  v135 = v194;
  v155 = *(v194 + 16);
  v156 = v169;
  v155(v169, v193, v100);
  v157 = sub_22BDB77C4();
  v158 = sub_22BDBB104();
  if (sub_22BB3805C(v158))
  {
    v159 = swift_slowAlloc();
    v160 = swift_slowAlloc();
    sub_22BB2F4E0(v160);
    *v159 = 136315138;
    v155(v168, v156, v100);
    v161 = sub_22BDBAC14();
    v163 = v162;
    (*(v135 + 8))(v156, v100);
    v164 = sub_22BB32EE0(v161, v163, &v201);

    *(v159 + 4) = v164;
    _os_log_impl(&dword_22BB2C000, v157, v158, "%s is not a builtin command for a dialog response, skipping", v159, 0xCu);
    sub_22BB32FA4(v3);
    v3 = v173;
    sub_22BB30AF0();
    sub_22BB30AF0();

    sub_22BB38D80();
    v165 = v174;
  }

  else
  {

    (*(v135 + 8))(v156, v100);
    sub_22BB38D80();
    v165 = v154;
  }

  v94 = v198;
  v167(v165, v198);
  v136 = v185;
  v119 = v191;
  sub_22BB336D0(v191, 1, 1, v3);
  (*(v189 + 8))(v190, v188);
LABEL_17:
  v137 = sub_22BB31F54();
  sub_22BC7E3C4(v137, v138, v139, v140);
  if (sub_22BB3AA28(v136, 1, v3) == 1)
  {
    (*(v135 + 8))(v193, v100);
    sub_22BB58728(v136, &qword_27D8E3E10, &qword_22BDC1258);
  }

  else
  {
    v141 = v186;
    sub_22BCBD328(v136, v186, _s23StatementStepEvaluationOMa);
    v142 = v179;
    sub_22BDB6404();
    sub_22BCBD384(v141, v187, _s23StatementStepEvaluationOMa);
    v143 = sub_22BDB77C4();
    v144 = sub_22BDBB104();
    if (sub_22BB3805C(v144))
    {
      v145 = swift_slowAlloc();
      v146 = v187;
      v147 = v145;
      v148 = v94;
      v149 = swift_slowAlloc();
      v201 = v149;
      *v147 = 136315138;
      v150 = sub_22BCC87B8();
      v152 = v151;
      sub_22BCBD3E0(v146, _s23StatementStepEvaluationOMa);
      v153 = sub_22BB32EE0(v150, v152, &v201);

      *(v147 + 4) = v153;
      _os_log_impl(&dword_22BB2C000, v143, v144, "Generated a user dialog response from a plan: %s", v147, 0xCu);
      sub_22BB32FA4(v149);
      sub_22BB30AF0();
      sub_22BB30AF0();

      sub_22BB38D80();
      v167(v179, v148);
    }

    else
    {

      sub_22BCBD3E0(v187, _s23StatementStepEvaluationOMa);
      sub_22BB38D80();
      v167(v142, v94);
    }

    sub_22BCBD3E0(v186, _s23StatementStepEvaluationOMa);
    (*(v194 + 8))(v193, v100);
    v119 = v191;
  }

  return sub_22BCBD2B8(v119, v197);
}

uint64_t sub_22BCBCA28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v96 = a3;
  v103 = a2;
  v105 = a4;
  v6 = _s9PlanEventVMa(0);
  v7 = sub_22BB2F0C8(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BB305A8();
  v99 = v10;
  sub_22BB2F120();
  v11 = sub_22BDB4C34();
  v12 = sub_22BB30444(v11);
  v97 = v13;
  v98 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BB305A8();
  v104 = v16;
  sub_22BB2F120();
  v17 = sub_22BDB77D4();
  v18 = sub_22BB30444(v17);
  v101 = v19;
  v102 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BB305A8();
  v100 = v22;
  sub_22BB2F120();
  v23 = sub_22BDB90B4();
  v24 = sub_22BB30444(v23);
  v94 = v25;
  v95 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  sub_22BB305A8();
  v93 = v28;
  v29 = sub_22BB2F120();
  v92 = _s26PromptStatementStepBuilderVMa(v29);
  v30 = sub_22BB2F330(v92);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v34 = &v90 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = _s20StatementResultEventVMa(0);
  v36 = sub_22BB2F330(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  sub_22BB305A8();
  v91 = v39;
  v40 = sub_22BBE6DE0(&qword_27D8E3DE8, &unk_22BDC1220);
  v41 = sub_22BB2F0C8(v40);
  v43 = *(v42 + 64);
  v44 = MEMORY[0x28223BE20](v41);
  v46 = &v90 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x28223BE20](v44);
  v49 = &v90 - v48;
  MEMORY[0x28223BE20](v47);
  v51 = &v90 - v50;
  v107[0] = *sub_22BB69FEC((v4 + 16), *(v4 + 40));
  v52 = a1;
  v106 = a1;

  sub_22BBE6DE0(&qword_27D8E2F48, &unk_22BDBD950);
  sub_22BCBD20C();
  sub_22BDB9074();

  sub_22BB35F74(v49);
  if (v53)
  {
    v54 = sub_22BB69FEC((v4 + 16), *(v4 + 40));
    v57 = v103;
    sub_22BCBE5EC(v103, a1, *v54, v51);
    sub_22BB35F74(v49);
    v56 = v51;
    if (!v53)
    {
      sub_22BB58728(v49, &qword_27D8E3DE8, &unk_22BDC1220);
    }
  }

  else
  {
    sub_22BB32780();
    sub_22BCBD328(v49, v51, v55);
    sub_22BB336D0(v51, 0, 1, v35);
    v56 = v51;
    v57 = v103;
  }

  sub_22BC7E3C4(v56, v46, &qword_27D8E3DE8, &unk_22BDC1220);
  sub_22BB35F74(v46);
  v58 = v104;
  if (v53)
  {
    sub_22BB58728(v46, &qword_27D8E3DE8, &unk_22BDC1220);
    v59 = v100;
    sub_22BDB6404();
    v60 = v97;
    v61 = v98;
    (*(v97 + 16))(v58, v52, v98);
    sub_22BB30D0C();
    v62 = v99;
    sub_22BCBD384(v57, v99, v63);
    v64 = sub_22BDB77C4();
    v65 = sub_22BDBB114();
    if (sub_22BB3805C(v65))
    {
      v66 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v107[0] = v103;
      *v66 = 136315394;
      sub_22BCBD270(&qword_27D8E2F68, MEMORY[0x277D1C338]);
      v67 = sub_22BDBB684();
      v68 = v60;
      v70 = v69;
      (*(v68 + 8))(v58, v61);
      v71 = sub_22BB32EE0(v67, v70, v107);

      *(v66 + 4) = v71;
      *(v66 + 12) = 2080;
      sub_22BDB43E4();
      sub_22BCBD270(&qword_28142DD38, MEMORY[0x277CC95F0]);
      v72 = sub_22BDBB684();
      v74 = v73;
      sub_22BB35B00();
      sub_22BCBD3E0(v62, v75);
      v76 = sub_22BB32EE0(v72, v74, v107);

      *(v66 + 14) = v76;
      _os_log_impl(&dword_22BB2C000, v64, v65, "Cannot retrieve statement result with id %s referenced in a plan with eventId=%s, skipping", v66, 0x16u);
      swift_arrayDestroy();
      sub_22BB30AF0();
      sub_22BB30AF0();
    }

    else
    {

      sub_22BB35B00();
      sub_22BCBD3E0(v62, v88);
      (*(v60 + 8))(v58, v61);
    }

    (*(v101 + 8))(v59, v102);
    sub_22BB58728(v56, &qword_27D8E3DE8, &unk_22BDC1220);
    v89 = _s23StatementStepEvaluationOMa(0);
    return sub_22BB336D0(v105, 1, 1, v89);
  }

  else
  {
    sub_22BB32780();
    v77 = v91;
    sub_22BCBD328(v46, v91, v78);
    v79 = *(v35 + 20);
    sub_22BDB8784();
    v80 = v92;
    v81 = &v34[v92[5]];
    sub_22BDB8794();
    v82 = v80[6];
    v83 = sub_22BDB43E4();
    sub_22BB2F330(v83);
    (*(v84 + 16))(&v34[v82], v77);
    v85 = v93;
    sub_22BDB87E4();
    v86 = &v34[v80[7]];
    sub_22BDB9094();
    (*(v94 + 8))(v85, v95);
    sub_22BCBD384(v96, &v34[v80[8]], _s26PromptStatementStepBuilderV10ResolutionOMa);
    sub_22BCBED20(v105);
    sub_22BCBD3E0(v34, _s26PromptStatementStepBuilderVMa);
    sub_22BCBD3E0(v77, _s20StatementResultEventVMa);
    return sub_22BB58728(v56, &qword_27D8E3DE8, &unk_22BDC1220);
  }
}

uint64_t sub_22BCBD1B8()
{
  sub_22BB32FA4((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

unint64_t sub_22BCBD20C()
{
  result = qword_27D8E2F90;
  if (!qword_27D8E2F90)
  {
    sub_22BBEB2E0(&qword_27D8E2F48, &unk_22BDBD950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E2F90);
  }

  return result;
}

uint64_t sub_22BCBD270(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22BCBD2B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BBE6DE0(&qword_27D8E3E10, &qword_22BDC1258);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BCBD328(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_22BB2F330(v4);
  v6 = *(v5 + 32);
  v7 = sub_22BB31F54();
  v8(v7);
  return a2;
}

uint64_t sub_22BCBD384(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_22BB2F330(v4);
  v6 = *(v5 + 16);
  v7 = sub_22BB31F54();
  v8(v7);
  return a2;
}

uint64_t sub_22BCBD3E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22BB2F330(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22BCBD438@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  if (*(v3 + 16) && (sub_22BD84660(), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = *(v3 + 56);
    v8 = _s23StatementStepEvaluationOMa(0);
    sub_22BCBD4E8(v7 + *(*(v8 - 8) + 72) * v6, a1);
    v9 = a1;
    v10 = 0;
    v11 = v8;
  }

  else
  {
    v11 = _s23StatementStepEvaluationOMa(0);
    v9 = a1;
    v10 = 1;
  }

  return sub_22BB336D0(v9, v10, 1, v11);
}

uint64_t sub_22BCBD4E8(uint64_t a1, uint64_t a2)
{
  v4 = _s23StatementStepEvaluationOMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BCBD54C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v111 = a2;
  v4 = sub_22BDB43E4();
  v5 = sub_22BB30444(v4);
  v109 = v6;
  v110 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BB305A8();
  v104 = v9;
  sub_22BB2F120();
  v10 = sub_22BDB77D4();
  v11 = sub_22BB30444(v10);
  v105 = v12;
  v106 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BB305A8();
  v107 = v15;
  sub_22BB2F120();
  v16 = sub_22BDB90B4();
  v17 = sub_22BB30444(v16);
  v102 = v18;
  v103 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BB305A8();
  v100 = v21;
  v22 = sub_22BB2F120();
  v99 = _s26PromptStatementStepBuilderVMa(v22);
  v23 = sub_22BB2F330(v99);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22BB305A8();
  v101 = v26;
  v27 = sub_22BBE6DE0(&qword_27D8E3DE8, &unk_22BDC1220);
  v28 = sub_22BB2F0C8(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = (&v97 - v31);
  v108 = _s20StatementResultEventVMa(0);
  v33 = sub_22BB2F330(v108);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  sub_22BB30C74();
  v97 = v36 - v37;
  MEMORY[0x28223BE20](v38);
  v98 = &v97 - v39;
  v40 = sub_22BBE6DE0(&qword_27D8E3E10, &qword_22BDC1258);
  v41 = sub_22BB2F0C8(v40);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  sub_22BB30C74();
  v46 = v44 - v45;
  MEMORY[0x28223BE20](v47);
  v49 = &v97 - v48;
  v50 = _s23StatementStepEvaluationOMa(0);
  v51 = sub_22BB2F330(v50);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v51);
  sub_22BB30C74();
  v56 = v54 - v55;
  MEMORY[0x28223BE20](v57);
  v59 = &v97 - v58;
  v60 = v2;
  v61 = v2[7];
  v62 = a1;
  sub_22BCD0120(v49);
  if (sub_22BB3AA28(v49, 1, v50) != 1)
  {
    sub_22BB32320();
    sub_22BCBEAB4(v49, v59, v82);
    v83 = v111;
    sub_22BCBEAB4(v59, v111, v32);
    v84 = v83;
LABEL_8:
    v86 = 0;
    return sub_22BB336D0(v84, v86, 1, v50);
  }

  v63 = v111;
  sub_22BB58728(v49, &qword_27D8E3E10, &qword_22BDC1258);
  v64 = v60[8];
  sub_22BCBD438(v46);
  if (sub_22BB3AA28(v46, 1, v50) != 1)
  {
    sub_22BB32320();
    sub_22BCBEAB4(v46, v56, v85);
    sub_22BCBEAB4(v56, v63, v32);
    v84 = v63;
    goto LABEL_8;
  }

  sub_22BB58728(v46, &qword_27D8E3E10, &qword_22BDC1258);
  v65 = sub_22BB69FEC(v60 + 2, v60[5]);
  sub_22BCBDC1C(a1, *v65, v32);
  v66 = v108;
  if (sub_22BB3AA28(v32, 1, v108) != 1)
  {
    v88 = v98;
    sub_22BCBEAB4(v32, v98, _s20StatementResultEventVMa);
    v89 = v97;
    sub_22BCBE9F8(v88, v97);
    v90 = v99;
    v91 = v99[8];
    _s26PromptStatementStepBuilderV10ResolutionOMa(0);
    v92 = v101;
    swift_storeEnumTagMultiPayload();
    v93 = *(v66 + 20);
    sub_22BDB8784();
    v94 = v92 + v90[5];
    sub_22BDB8794();
    (*(v109 + 16))(v92 + v90[6], v89, v110);
    v95 = v100;
    sub_22BDB87E4();
    v96 = v92 + v90[7];
    sub_22BDB9094();
    (*(v102 + 8))(v95, v103);
    sub_22BCBEA5C(v89, _s20StatementResultEventVMa);
    sub_22BCBED20(v63);
    sub_22BCBEA5C(v92, _s26PromptStatementStepBuilderVMa);
    return sub_22BCBEA5C(v88, _s20StatementResultEventVMa);
  }

  sub_22BB58728(v32, &qword_27D8E3DE8, &unk_22BDC1220);
  v67 = v107;
  sub_22BDB6404();
  v69 = v109;
  v68 = v110;
  v70 = v104;
  (*(v109 + 16))(v104, v62, v110);
  v71 = sub_22BDB77C4();
  v72 = sub_22BDBB114();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v112 = v74;
    *v73 = 136315138;
    sub_22BC728D4();
    v75 = sub_22BDBB684();
    v76 = v70;
    v78 = v77;
    (*(v69 + 8))(v76, v68);
    v79 = sub_22BB32EE0(v75, v78, &v112);

    *(v73 + 4) = v79;
    sub_22BB37744(&dword_22BB2C000, v80, v81, "Cannot find statement result event for statementEventId=%s to mark as abandoned");
    sub_22BB32FA4(v74);
    sub_22BB30AF0();
    sub_22BB30AF0();

    (*(v105 + 8))(v107, v106);
  }

  else
  {

    (*(v69 + 8))(v70, v68);
    (*(v105 + 8))(v67, v106);
  }

  v84 = v63;
  v86 = 1;
  return sub_22BB336D0(v84, v86, 1, v50);
}

uint64_t sub_22BCBDC1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v94 = a3;
  v5 = sub_22BDB43E4();
  v6 = sub_22BB30444(v5);
  v92 = v7;
  v93 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BB305A8();
  v88 = v10;
  sub_22BB2F120();
  v11 = sub_22BDB77D4();
  v12 = sub_22BB30444(v11);
  v90 = v13;
  v91 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BB305A8();
  v89 = v16;
  sub_22BB2F120();
  v17 = sub_22BDB87F4();
  v18 = sub_22BB30444(v17);
  v85 = v19;
  v86 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BB305A8();
  v84 = v22;
  sub_22BB2F120();
  v87 = sub_22BDB9B14();
  v23 = sub_22BB30444(v87);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22BB30574();
  v30 = v29 - v28;
  v31 = sub_22BBE6DE0(&qword_27D8E3DE8, &unk_22BDC1220);
  v32 = sub_22BB2F0C8(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  v36 = &v83 - v35;
  v37 = sub_22BBE6DE0(&unk_27D8E69E0, &qword_22BDC1660);
  v38 = sub_22BB2F0C8(v37);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  v42 = (&v83 - v41);
  v43 = sub_22BDB9B54();
  v44 = sub_22BB30444(v43);
  v46 = v45;
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v44);
  sub_22BB30574();
  v51 = v50 - v49;
  v97 = a1;
  v98[0] = a2;
  v52 = sub_22BD76D2C(sub_22BCBEB14, v96, a2);
  v95 = v98;
  sub_22BD5DE2C(sub_22BCBEB34, v52, v53 & 1, v42);
  if (sub_22BB3AA28(v42, 1, v43) == 1)
  {
    sub_22BB58728(v42, &unk_27D8E69E0, &qword_22BDC1660);
    v54 = v89;
    sub_22BDB6404();
    v55 = v92;
    v56 = v88;
    v57 = v93;
    (*(v92 + 16))(v88, a1, v93);
    v58 = sub_22BDB77C4();
    v59 = sub_22BDBB114();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v98[0] = v61;
      *v60 = 136315138;
      sub_22BC728D4();
      v62 = sub_22BDBB684();
      v64 = v63;
      (*(v55 + 8))(v56, v57);
      v65 = sub_22BB32EE0(v62, v64, v98);

      *(v60 + 4) = v65;
      sub_22BB37744(&dword_22BB2C000, v66, v67, "Cannot find statement result for eventId=%s");
      sub_22BB32FA4(v61);
      sub_22BB30AF0();
      sub_22BB30AF0();
    }

    else
    {

      (*(v55 + 8))(v56, v57);
    }

    (*(v90 + 8))(v54, v91);
    _s20StatementResultEventVMa(0);
    sub_22BB30B28();
    return sub_22BB336D0(v74, v75, v76, v77);
  }

  else
  {
    v91 = a1;
    v68 = v93;
    (*(v46 + 32))(v51, v42, v43);
    sub_22BDB9B24();
    (*(v46 + 8))(v51, v43);
    v69 = v87;
    if ((*(v25 + 88))(v30, v87) == *MEMORY[0x277D1E798])
    {
      (*(v25 + 96))(v30, v69);
      v70 = v86;
      v71 = *(v85 + 32);
      v72 = v84;
      v71(v84, v30, v86);
      (*(v92 + 16))(v36, v91, v68);
      v73 = _s20StatementResultEventVMa(0);
      v71(&v36[*(v73 + 20)], v72, v70);
      sub_22BB336D0(v36, 0, 1, v73);
    }

    else
    {
      _s20StatementResultEventVMa(0);
      sub_22BB30B28();
      sub_22BB336D0(v79, v80, v81, v82);
      (*(v25 + 8))(v30, v69);
    }

    return sub_22BCBEB54(v36, v94);
  }
}

uint64_t sub_22BCBE22C()
{
  v0 = sub_22BDB43E4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB8F24();
  v5 = sub_22BDB43B4();
  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

uint64_t sub_22BCBE318@<X0>(uint64_t a1@<X8>)
{
  v1 = sub_22BDB4C34();
  v2 = sub_22BB30444(v1);
  v35 = v3;
  v36 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BB30574();
  v8 = v7 - v6;
  v9 = sub_22BDB9B14();
  v10 = sub_22BB30444(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BB30574();
  v17 = v16 - v15;
  v18 = sub_22BDB87F4();
  v19 = sub_22BB30444(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22BB30574();
  v26 = v25 - v24;
  sub_22BDB9B24();
  if ((*(v12 + 88))(v17, v9) == *MEMORY[0x277D1E798])
  {
    (*(v12 + 96))(v17, v9);
    v27 = *(v21 + 32);
    v27(v26, v17, v18);
    sub_22BDB87A4();
    v28 = sub_22BDB4C04();
    (*(v35 + 8))(v8, v36);
    if (v28)
    {
      sub_22BDB8F24();
      v29 = _s20StatementResultEventVMa(0);
      v27(a1 + *(v29 + 20), v26, v18);
      return sub_22BB336D0(a1, 0, 1, v29);
    }

    (*(v21 + 8))(v26, v18);
  }

  else
  {
    (*(v12 + 8))(v17, v9);
  }

  _s20StatementResultEventVMa(0);
  sub_22BB30B28();
  return sub_22BB336D0(v31, v32, v33, v34);
}

uint64_t sub_22BCBE5EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v14[6] = a2;
  v14[2] = a1;
  result = sub_22BD76D2C(sub_22BCBEBCC, v14, a3);
  if (v7)
  {
    _s20StatementResultEventVMa(0);
    sub_22BB30B28();
    return sub_22BB336D0(v8, v9, v10, v11);
  }

  else if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_22BB8EC88(0, result, a3);
    sub_22BCA87D0();
    v13 = v12;
    swift_unknownObjectRelease();
    sub_22BC74170(v13, a4);
  }

  return result;
}

uint64_t sub_22BCBE6E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28[2] = a2;
  v29 = a3;
  v4 = sub_22BDB4C34();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BDB87F4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22BDB9B14();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[1] = a1;
  sub_22BDB9B24();
  if ((*(v15 + 88))(v18, v14) == *MEMORY[0x277D1E798])
  {
    (*(v15 + 96))(v18, v14);
    v19 = *(v10 + 32);
    v19(v13, v18, v9);
    sub_22BDB8794();
    v20 = sub_22BDB4C04();
    (*(v5 + 8))(v8, v4);
    if (v20)
    {
      v21 = v29;
      sub_22BDB8F24();
      v22 = _s20StatementResultEventVMa(0);
      v19((v21 + *(v22 + 20)), v13, v9);
      v23 = v21;
      v24 = 0;
      v25 = v22;
    }

    else
    {
      (*(v10 + 8))(v13, v9);
      v25 = _s20StatementResultEventVMa(0);
      v23 = v29;
      v24 = 1;
    }

    return sub_22BB336D0(v23, v24, 1, v25);
  }

  else
  {
    v26 = _s20StatementResultEventVMa(0);
    sub_22BB336D0(v29, 1, 1, v26);
    return (*(v15 + 8))(v18, v14);
  }
}

uint64_t sub_22BCBE9F8(uint64_t a1, uint64_t a2)
{
  v4 = _s20StatementResultEventVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BCBEA5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22BB2F330(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22BCBEAB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_22BB2F330(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_22BCBEB54(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BBE6DE0(&qword_27D8E3DE8, &unk_22BDC1220);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BCBEC94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_22BDB43E4();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22BCBED20@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v247 = a1;
  v248 = _s26PromptStatementStepBuilderV10ResolutionOMa(0);
  v3 = sub_22BB2F330(v248);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BB305A8();
  v231 = v6;
  v7 = sub_22BB2F120();
  v8 = _s26PromptStatementStepBuilderVMa(v7);
  v9 = sub_22BB2F330(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BB30560();
  v240 = v12;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v13);
  sub_22BB2F384();
  v244 = v14;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v15);
  v243 = v216 - v16;
  sub_22BB2F120();
  v17 = sub_22BDB77D4();
  v18 = sub_22BB30444(v17);
  v238 = v19;
  v239 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BB305A8();
  v241 = v22;
  sub_22BB2F120();
  v218 = sub_22BDB56F4();
  v23 = sub_22BB30444(v218);
  v216[1] = v24;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22BB305A8();
  sub_22BB30B8C(v27);
  v221 = sub_22BDB5A44();
  v28 = sub_22BB30444(v221);
  v220 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  sub_22BB305A8();
  sub_22BB30B8C(v32);
  v226 = sub_22BDB5924();
  v33 = sub_22BB30444(v226);
  v225 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  sub_22BB305A8();
  v38 = sub_22BB30B8C(v37);
  v39 = _s25ParameterNeedsValueResultV16NeedsValueResultOMa(v38);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39 - 8);
  sub_22BB305A8();
  sub_22BB30B8C(v41);
  v223 = sub_22BDBA594();
  v42 = sub_22BB30444(v223);
  v222 = v43;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v42);
  sub_22BB305A8();
  sub_22BB30B8C(v46);
  v232 = sub_22BDB55A4();
  v47 = sub_22BB30444(v232);
  v229 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v47);
  sub_22BB305A8();
  v52 = sub_22BB30B8C(v51);
  v234 = _s20DisambiguationResultOMa(v52);
  v53 = sub_22BB2F330(v234);
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v53);
  sub_22BB305A8();
  v235 = v56;
  sub_22BB2F120();
  v57 = sub_22BDB5514();
  v58 = sub_22BB30444(v57);
  v236 = v59;
  v237 = v58;
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v58);
  sub_22BB305A8();
  v233 = v62;
  sub_22BB2F120();
  v63 = sub_22BDB5404();
  v64 = sub_22BB30444(v63);
  v66 = v65;
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v64);
  sub_22BB30560();
  v230 = v69;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v70);
  sub_22BB2F384();
  v217 = v71;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v72);
  sub_22BB2F384();
  v219 = v73;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v74);
  sub_22BB2F384();
  v224 = v75;
  sub_22BB30B70();
  v77 = MEMORY[0x28223BE20](v76);
  v79 = v216 - v78;
  MEMORY[0x28223BE20](v77);
  v81 = (v216 - v80);
  v82 = _s24ActionConfirmationResultVMa(0);
  v83 = sub_22BB2F330(v82);
  v85 = *(v84 + 64);
  MEMORY[0x28223BE20](v83);
  sub_22BB30574();
  v88 = (v87 - v86);
  v89 = sub_22BBE6DE0(&qword_27D8E3F40, &unk_22BDC1710);
  v90 = *(*(v89 - 8) + 64);
  v91 = MEMORY[0x28223BE20](v89 - 8);
  v93 = v216 - v92;
  v242 = v8;
  v94 = *(v8 + 28);
  v95 = *(v8 + 32);
  v96 = *(v91 + 56);
  v245[0] = *(v66 + 16);
  v245[1] = v66 + 16;
  (v245[0])(v93, v2 + v94, v63);
  sub_22BB342BC();
  v97 = v2;
  v98 = v96;
  v246 = v97;
  v99 = v97 + v95;
  v100 = v63;
  v101 = v66;
  sub_22BCC0B60(v99, &v93[v96]);
  v102 = (*(v66 + 88))(v93, v100);
  if (v102 != *MEMORY[0x277D1CBA8])
  {
    v109 = v248;
    if (v102 == *MEMORY[0x277D1CBB0])
    {
      sub_22BB37264();
      v110();
      sub_22BB3A21C();
      v111(v81, v100);
      v112 = sub_22BB39168();
      if (v112 == 4 || v112 == 3)
      {
        v155 = sub_22BB30D24();
        v156(v155);
        sub_22BB69A64();
      }

      else
      {
        if (v112 != 1)
        {
          (*(v236 + 8))(v81, v237);
          v96 = v243;
          v81 = v244;
          goto LABEL_48;
        }

        v113 = *&v93[v96];
        v114 = sub_22BB30D24();
        v115(v114);
        sub_22BB38AF4();
      }

      swift_storeEnumTagMultiPayload();
      v82 = v247;
      sub_22BCBFEA0(v79, v247);
      sub_22BB356D8();
      (*(v96 + 8))(v109, v96);
LABEL_56:
      v147 = _s23StatementStepEvaluationOMa(0);
      v146 = v82;
      goto LABEL_57;
    }

    if (v102 == *MEMORY[0x277D1CBB8])
    {
      sub_22BB37264();
      v116();
      sub_22BB3A21C();
      v117(v79, v100);
      v118 = sub_22BB39168();
      v96 = v243;
      v81 = v244;
      if (v118 != 4)
      {
        if (!v118)
        {
          v119 = v229;
          v120 = *(v229 + 32);
          v121 = sub_22BB2F3F0();
          v122(v121);
          sub_22BB38074();
          v124 = *(v123 - 256);
          v125 = v223;
          v126(v124);
          v127 = v227;
          (*(v96 + 16))(v227, v124, v125);
          v128 = sub_22BBE6DE0(&qword_27D8E3F48, &qword_22BDC1A80);
          sub_22BB336D0(v127, 0, 1, v128);
          v82 = v247;
          sub_22BCC0034(v127, v247);
          sub_22BCC0C20(v127, _s25ParameterNeedsValueResultV16NeedsValueResultOMa);
          (*(v96 + 8))(v124, v125);
          (*(v119 + 8))(v228, v232);
          goto LABEL_56;
        }

        sub_22BB34EAC(&v252);
        v169 = v79;
        v170 = v232;
LABEL_47:
        v168(v169, v170);
        goto LABEL_48;
      }

      sub_22BB31CDC(&v252);
      v98 = v228;
      v96 = v232;
      v163(v228, v79, v232);
      v164 = sub_22BBE6DE0(&qword_27D8E3F48, &qword_22BDC1A80);
      v79 = v227;
      sub_22BB336D0(v227, 1, 1, v164);
      sub_22BB3A65C();
      sub_22BCC0034(v165, v166);
      v167 = _s25ParameterNeedsValueResultV16NeedsValueResultOMa;
    }

    else
    {
      v81 = v244;
      if (v102 == *MEMORY[0x277D1CBD0])
      {
        v82 = v224;
        sub_22BB37264();
        v148();
        sub_22BB3A21C();
        v149(v82, v100);
        v150 = sub_22BB39168();
        switch(v150)
        {
          case 4:
            sub_22BB31CDC(&v251);
            v183 = sub_22BB3659C();
            v184(v183);
            sub_22BB58AB4();
            v154 = 2;
            break;
          case 3:
            sub_22BB31CDC(&v251);
            v181 = sub_22BB3659C();
            v182(v181);
            sub_22BB58AB4();
            v154 = 1;
            break;
          case 2:
            sub_22BB31CDC(&v251);
            v151 = sub_22BB3659C();
            v152(v151);
            sub_22BB58AB4();
            v154 = 0;
            break;
          default:
            sub_22BB34EAC(&v251);
            v185(v82, v226);
            v96 = v243;
            goto LABEL_48;
        }

        sub_22BCC0214(v154, v153);
        v81[1](v96, v79);
        goto LABEL_56;
      }

      if (v102 == *MEMORY[0x277D1CBD8])
      {
        v157 = v219;
        sub_22BB37264();
        v158();
        sub_22BB3A21C();
        v159(v157, v100);
        v160 = sub_22BB39168();
        v96 = v243;
        if (v160 == 4 || v160 == 3)
        {
          sub_22BB31CDC(&v249);
          v186 = sub_22BB37764();
          v187(v186);
          sub_22BB69A64();
        }

        else
        {
          if (v160 != 1)
          {
            sub_22BB34EAC(&v249);
            v169 = v157;
            v190 = &v250;
LABEL_46:
            v170 = *(v190 - 32);
            goto LABEL_47;
          }

          v82 = *&v93[v98];
          sub_22BB31CDC(&v249);
          v161 = sub_22BB37764();
          v162(v161);
          sub_22BB38AF4();
        }

        swift_storeEnumTagMultiPayload();
        sub_22BB3A65C();
        sub_22BCC03F8(v188, v189);
      }

      else
      {
        v96 = v243;
        if (v102 != *MEMORY[0x277D1CBC8])
        {
          goto LABEL_48;
        }

        v171 = v217;
        sub_22BB37264();
        v172();
        sub_22BB3A21C();
        v173(v171, v100);
        switch(sub_22BB39168())
        {
          case 1u:
            v82 = *&v93[v98];
            sub_22BB31CDC(v245);
            v212 = sub_22BB32798();
            v213(v212);
            sub_22BB38AF4();
            break;
          case 2u:
            sub_22BB34EAC(v245);
            v169 = v171;
            v190 = &v246;
            goto LABEL_46;
          case 3u:
          case 4u:
            sub_22BB31CDC(v245);
            v191 = sub_22BB32798();
            v192(v191);
            sub_22BB69A64();
            break;
          default:
            sub_22BB31CDC(v245);
            v174 = v216[0];
            v175(v216[0], v171, v218);
            sub_22BB38074();
            v177 = *(v176 - 256);
            v178 = v223;
            v179(v177);
            v180 = v235;
            (*(v96 + 16))(v235, v177, v178);
            swift_storeEnumTagMultiPayload();
            sub_22BCC05FC(v180, v247);
            sub_22BB356D8();
            (*(v96 + 8))(v177, v178);
            v81[1](v174, v218);
            v147 = _s23StatementStepEvaluationOMa(0);
            v146 = v247;
            goto LABEL_57;
        }

        swift_storeEnumTagMultiPayload();
        sub_22BB3A65C();
        sub_22BCC05FC(v214, v215);
      }

      v167 = _s20DisambiguationResultOMa;
    }

    sub_22BCC0C20(v79, v167);
    v81[1](v98, v96);
    goto LABEL_56;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 4)
  {
    v135 = sub_22BB37CE8();
    sub_22BB30ED8(v135);
    v137 = *(v136 + 16);
    v138 = sub_22BB36D44();
    v139(v138);
    v134 = 2;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v129 = sub_22BB37CE8();
    sub_22BB30ED8(v129);
    v131 = *(v130 + 16);
    v132 = sub_22BB36D44();
    v133(v132);
    v134 = 1;
LABEL_17:
    *v88 = v134;
    goto LABEL_18;
  }

  v96 = v243;
  v81 = v244;
  if (EnumCaseMultiPayload == 2)
  {
    v104 = sub_22BB37CE8();
    sub_22BB30ED8(v104);
    v106 = *(v105 + 16);
    v107 = sub_22BB36D44();
    v108(v107);
    *v88 = 0;
LABEL_18:
    v140 = *(v81 + 5);
    v141 = sub_22BDB4C34();
    sub_22BB30ED8(v141);
    v143 = v247;
    (*(v142 + 16))(v247, v96 + v140);
    v144 = _s20ActionStepEvaluationVMa(0);
    sub_22BCC0C78(v88, v143 + *(v144 + 20));
    v145 = _s23StatementStepEvaluationOMa(0);
    swift_storeEnumTagMultiPayload();
    v146 = v143;
    v147 = v145;
LABEL_57:
    sub_22BB336D0(v146, 0, 1, v147);
    return (*(v101 + 8))(v93, v100);
  }

LABEL_48:
  v193 = v241;
  sub_22BDB6404();
  v194 = v246;
  sub_22BCC0B60(v246, v96);
  sub_22BCC0B60(v194, v81);
  v195 = v240;
  sub_22BCC0B60(v194, v240);
  v196 = sub_22BDB77C4();
  v197 = sub_22BDBB114();
  if (os_log_type_enabled(v196, v197))
  {
    v198 = swift_slowAlloc();
    v199 = swift_slowAlloc();
    v246 = v93;
    v244 = v199;
    v249 = v199;
    *v198 = 136315650;
    v200 = v242;
    LODWORD(v243) = v197;
    v201 = *(v242 + 24);
    sub_22BDB43E4();
    v202 = v81;
    sub_22BC728D4();
    sub_22BDBB684();
    sub_22BCC0C20(v96, _s26PromptStatementStepBuilderVMa);
    v203 = sub_22BB6BAA4();

    *(v198 + 4) = v203;
    *(v198 + 12) = 2080;
    (v245[0])(v230, v202 + *(v200 + 28), v100);
    sub_22BDBAC14();
    sub_22BCC0C20(v202, _s26PromptStatementStepBuilderVMa);
    v204 = sub_22BB6BAA4();

    *(v198 + 14) = v204;
    *(v198 + 22) = 2080;
    v205 = *(v200 + 32);
    sub_22BB342BC();
    v206 = v240;
    sub_22BCC0B60(v240 + v207, v231);
    sub_22BDBAC14();
    sub_22BCC0C20(v206, _s26PromptStatementStepBuilderVMa);
    v208 = sub_22BB6BAA4();

    *(v198 + 24) = v208;
    _os_log_impl(&dword_22BB2C000, v196, v243, "Cannot make a statement step for statement result, eventId=%s, outcome=%s, resolution=%s", v198, 0x20u);
    v209 = v244;
    swift_arrayDestroy();
    v93 = v246;
    MEMORY[0x2318A6080](v209, -1, -1);
    MEMORY[0x2318A6080](v198, -1, -1);

    (*(v238 + 8))(v241, v239);
  }

  else
  {

    sub_22BCC0C20(v195, _s26PromptStatementStepBuilderVMa);
    sub_22BCC0C20(v81, _s26PromptStatementStepBuilderVMa);
    sub_22BCC0C20(v96, _s26PromptStatementStepBuilderVMa);
    (*(v238 + 8))(v193, v239);
  }

  v210 = _s23StatementStepEvaluationOMa(0);
  sub_22BB336D0(v247, 1, 1, v210);
  return sub_22BCC0BB8(v93);
}

uint64_t sub_22BCBFEA0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = _s24ToolDisambiguationResultVMa(0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = (&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x23189F4D0](v9);
  sub_22BCC0B60(a1, v11 + *(v7 + 28));
  v13 = _s26PromptStatementStepBuilderVMa(0);
  v14 = *(v13 + 24);
  v15 = *(v7 + 32);
  v16 = sub_22BDB43E4();
  (*(*(v16 - 8) + 16))(v11 + v15, v3 + v14, v16);
  *v11 = v12;
  v17 = *(v13 + 20);
  v18 = sub_22BDB4C34();
  (*(*(v18 - 8) + 16))(a2, v3 + v17, v18);
  v19 = _s18ToolStepEvaluationVMa(0);
  sub_22BCC0C78(v11, a2 + *(v19 + 20));
  _s23StatementStepEvaluationOMa(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_22BCC0034@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = _s25ParameterNeedsValueResultVMa(0);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BCC0B60(a1, v9);
  v10 = _s26PromptStatementStepBuilderVMa(0);
  v11 = *(v10 + 24);
  v12 = *(v6 + 28);
  v13 = sub_22BDB43E4();
  (*(*(v13 - 8) + 16))(&v9[v12], v2 + v11, v13);
  v14 = sub_22BDB4C34();
  v15 = *(*(v14 - 8) + 16);
  v15(a2, v2, v14);
  v16 = *(v10 + 20);
  v17 = _s23ParameterStepEvaluationVMa(0);
  v15(a2 + v17[5], v2 + v16, v14);
  sub_22BDB4D04();
  v18 = a2 + v17[6];
  sub_22BDB8364();
  sub_22BCC0C78(v9, a2 + v17[7]);
  _s19ParameterStepResultOMa(0);
  swift_storeEnumTagMultiPayload();
  _s23StatementStepEvaluationOMa(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_22BCC0214@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  v5 = _s27ParameterConfirmationResultVMa(0);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB5914();
  v10 = _s26PromptStatementStepBuilderVMa(0);
  v11 = *(v10 + 24);
  v12 = *(v6 + 32);
  v13 = sub_22BDB43E4();
  (*(*(v13 - 8) + 16))(&v9[v12], v2 + v11, v13);
  v9[*(v6 + 28)] = a1;
  v14 = sub_22BDB4C34();
  v15 = *(*(v14 - 8) + 16);
  v15(a2, v2, v14);
  v16 = *(v10 + 20);
  v17 = _s23ParameterStepEvaluationVMa(0);
  v15(a2 + v17[5], v2 + v16, v14);
  sub_22BDB4D04();
  MEMORY[0x23189F8D0]();
  v18 = a2 + v17[6];
  sub_22BDB8364();
  sub_22BCC0C78(v9, a2 + v17[7]);
  _s19ParameterStepResultOMa(0);
  swift_storeEnumTagMultiPayload();
  _s23StatementStepEvaluationOMa(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_22BCC03F8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = _s29ParameterDisambiguationResultVMa(0);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_22BDB5A34();
  sub_22BCC0B60(a1, v9 + *(v6 + 28));
  v11 = _s26PromptStatementStepBuilderVMa(0);
  v12 = *(v11 + 24);
  v13 = *(v6 + 32);
  v14 = sub_22BDB43E4();
  (*(*(v14 - 8) + 16))(v9 + v13, v2 + v12, v14);
  *v9 = v10;
  v15 = sub_22BDB4C34();
  v16 = *(*(v15 - 8) + 16);
  v16(a2, v2, v15);
  v17 = *(v11 + 20);
  v18 = _s23ParameterStepEvaluationVMa(0);
  v16(a2 + v18[5], v2 + v17, v15);
  sub_22BDB5A14();
  MEMORY[0x23189F9F0]();
  v19 = a2 + v18[6];
  sub_22BDB8364();
  sub_22BCC0C78(v9, a2 + v18[7]);
  _s19ParameterStepResultOMa(0);
  swift_storeEnumTagMultiPayload();
  _s23StatementStepEvaluationOMa(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_22BCC05FC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = _s25ValueDisambiguationResultVMa(0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = (&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_22BDB56E4();
  sub_22BCC0B60(a1, v10 + *(v7 + 28));
  v12 = _s26PromptStatementStepBuilderVMa(0);
  v13 = *(v12 + 24);
  v14 = *(v7 + 32);
  v15 = sub_22BDB43E4();
  (*(*(v15 - 8) + 16))(v10 + v14, v3 + v13, v15);
  *v10 = v11;
  v16 = sub_22BDB4C34();
  v17 = *(*(v16 - 8) + 16);
  v17(a2, v3, v16);
  v18 = *(v12 + 20);
  v19 = _s19ValueStepEvaluationVMa(0);
  v17(a2 + *(v19 + 20), v3 + v18, v16);
  sub_22BCC0C78(v10, a2 + *(v19 + 24));
  _s23StatementStepEvaluationOMa(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_22BCC07B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_22BDB85D4();
  v5 = sub_22BB30444(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BB30574();
  v12 = v11 - v10;
  v13 = sub_22BDB85E4();
  v14 = sub_22BB30444(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BB30574();
  v21 = (v20 - v19);
  (*(v16 + 16))(v20 - v19, a1, v13);
  v22 = *(v16 + 88);
  v23 = sub_22BB2F3F0();
  v25 = v24(v23);
  if (v25 == *MEMORY[0x277D1DD98])
  {
    goto LABEL_2;
  }

  if (v25 == *MEMORY[0x277D1DDB0])
  {
    v32 = sub_22BB38D8C();
    v33(v32);
    v34 = *(v16 + 96);
    v35 = sub_22BB2F3F0();
    v36(v35);
    v37 = sub_22BDBA594();
    sub_22BB30ED8(v37);
    (*(v38 + 32))(a2, v21);
    sub_22BB5421C();
    return swift_storeEnumTagMultiPayload();
  }

  if (v25 == *MEMORY[0x277D1DDA0])
  {
LABEL_2:
    v26 = sub_22BB38D8C();
    v27(v26);
    v28 = *(v16 + 96);
    v29 = sub_22BB2F3F0();
    v30(v29);
    v31 = *v21;
    sub_22BB5421C();
    return swift_storeEnumTagMultiPayload();
  }

  if (v25 == *MEMORY[0x277D1DDB8])
  {
    v39 = sub_22BB38D8C();
    v40(v39);
    v41 = *(v16 + 96);
    v42 = sub_22BB2F3F0();
    v43(v42);
    *a2 = *v21;
    sub_22BB5421C();
    return swift_storeEnumTagMultiPayload();
  }

  if (v25 == *MEMORY[0x277D1DDA8])
  {
    v44 = *(v16 + 96);
    v45 = sub_22BB2F3F0();
    v46(v45);
    (*(v7 + 32))(v12, v21, v4);
    sub_22BDB85C4();
    (*(v16 + 8))(a1, v13);
    (*(v7 + 8))(v12, v4);
    sub_22BB5421C();
    return swift_storeEnumTagMultiPayload();
  }

  if (v25 == *MEMORY[0x277D1DD90])
  {
    v48 = *(v16 + 8);
    v48(a1, v13);
    sub_22BB5421C();
    swift_storeEnumTagMultiPayload();
    v49 = sub_22BB2F3F0();
    return (v48)(v49);
  }

  else
  {
    result = sub_22BDBB6C4();
    __break(1u);
  }

  return result;
}

uint64_t sub_22BCC0B60(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BB30F68();
  v6 = v5(v4);
  sub_22BB30ED8(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t sub_22BCC0BB8(uint64_t a1)
{
  v2 = sub_22BBE6DE0(&qword_27D8E3F40, &unk_22BDC1710);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22BCC0C20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22BB2F330(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22BCC0C78(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BB30F68();
  v6 = v5(v4);
  sub_22BB30ED8(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t sub_22BCC0CD0()
{
  result = sub_22BDBA594();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22BCC0D60()
{
  result = sub_22BDB4C34();
  if (v1 <= 0x3F)
  {
    result = sub_22BDB43E4();
    if (v2 <= 0x3F)
    {
      result = sub_22BDB5404();
      if (v3 <= 0x3F)
      {
        result = _s26PromptStatementStepBuilderV10ResolutionOMa(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

void sub_22BCC0E14(uint64_t a1, uint64_t a2)
{
  v4 = _s27StatementParameterCandidateVMa(0);
  v67 = *(v4 - 8);
  v68 = v4;
  v5 = *(v67 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v54 - v9;
  v11 = sub_22BDB9CB4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v61 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v62 = &v54 - v16;
  v65 = sub_22BBE6DE0(&qword_27D8E4028, qword_22BDC1830);
  v17 = *(*(v65 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v65);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v56 = &v54 - v22;
  MEMORY[0x28223BE20](v21);
  v55 = &v54 - v23;
  v69 = a2;
  v70 = a1;
  v24 = *(a1 + 16);
  v25 = *(a2 + 16);
  if (v25 >= v24)
  {
    v26 = *(a1 + 16);
  }

  else
  {
    v26 = v25;
  }

  v73 = MEMORY[0x277D84F90];
  sub_22BD28068();
  v27 = v26;
  v71 = v11;
  v72 = v73;
  v66 = v12;
  v63 = v25;
  v64 = v24;
  if (v26)
  {
    v28 = 0;
    v59 = v10;
    v60 = (v12 + 16);
    v57 = (v12 + 32);
    v58 = v27;
    while (v24 != v28)
    {
      v29 = v61;
      (*(v12 + 16))(v61, v70 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v28, v11);
      if (v25 == v28)
      {
        goto LABEL_23;
      }

      v30 = sub_22BDB7B44();
      v31 = *(v30 - 8);
      v32 = v69 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v28;
      v33 = v29;
      v34 = *(v65 + 48);
      (*v57)(v20, v33, v11);
      v35 = *(v31 + 16);
      v35(&v20[v34], v32, v30);
      sub_22BDB8FF4();
      type metadata accessor for FeedbackLearning.CandidateDefinition(0);
      swift_storeEnumTagMultiPayload();
      v35(&v8[*(v68 + 20)], &v20[v34], v30);
      sub_22BB58728(v20, &qword_27D8E4028, qword_22BDC1830);
      v36 = v72;
      v73 = v72;
      v37 = *(v72 + 16);
      if (v37 >= *(v72 + 24) >> 1)
      {
        sub_22BD28068();
        v36 = v73;
      }

      ++v28;
      *(v36 + 16) = v37 + 1;
      v38 = (*(v67 + 80) + 32) & ~*(v67 + 80);
      v72 = v36;
      v39 = *(v67 + 72);
      sub_22BCC7414();
      v27 = v58;
      v10 = v59;
      v11 = v71;
      v12 = v66;
      v25 = v63;
      v24 = v64;
      if (v58 == v28)
      {
        goto LABEL_11;
      }
    }

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

  else
  {
LABEL_11:
    v60 = (v12 + 32);
    v61 = (v12 + 16);
    while (v24 != v27)
    {
      if (v27 >= v24)
      {
        goto LABEL_24;
      }

      (*(v12 + 16))(v62, v70 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v27, v71);
      if (__OFADD__(v27, 1))
      {
        goto LABEL_25;
      }

      if (v25 == v27)
      {
        (*(v12 + 8))(v62, v71);
        return;
      }

      if (v27 >= v25)
      {
        goto LABEL_26;
      }

      v40 = sub_22BDB7B44();
      v41 = *(v40 - 8);
      v42 = v27;
      v43 = v69 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v27;
      v44 = v65;
      v45 = *(v65 + 48);
      v46 = v56;
      (*v60)(v56, v62, v71);
      v47 = *(v41 + 16);
      v47(v46 + v45, v43, v40);
      v48 = v55;
      sub_22BB6BEE0(v46, v55, &qword_27D8E4028, qword_22BDC1830);
      v49 = *(v44 + 48);
      sub_22BDB8FF4();
      type metadata accessor for FeedbackLearning.CandidateDefinition(0);
      swift_storeEnumTagMultiPayload();
      v47(&v10[*(v68 + 20)], v48 + v49, v40);
      sub_22BB58728(v48, &qword_27D8E4028, qword_22BDC1830);
      v50 = v72;
      v73 = v72;
      v51 = *(v72 + 16);
      if (v51 >= *(v72 + 24) >> 1)
      {
        sub_22BD28068();
        v50 = v73;
      }

      *(v50 + 16) = v51 + 1;
      v52 = (*(v67 + 80) + 32) & ~*(v67 + 80);
      v72 = v50;
      v53 = *(v67 + 72);
      sub_22BCC7414();
      v27 = v42 + 1;
      v12 = v66;
      v25 = v63;
      v24 = v64;
    }
  }
}

uint64_t sub_22BCC14D4(void *a1, uint64_t a2, uint64_t a3)
{
  v103 = a3;
  v97 = a1;
  v122 = _s23ParameterCandidateValueVMa(0);
  v87 = *(v122 - 8);
  v3 = *(v87 + 64);
  MEMORY[0x28223BE20](v122);
  v121 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s27StatementParameterCandidateVMa(0);
  v119 = *(v5 - 8);
  v120 = v5;
  v6 = *(v119 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_22BDBA594();
  v9 = *(v125 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v125);
  v12 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22BDB80F4();
  v118 = *(v13 - 8);
  v14 = *(v118 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22BBE6DE0(&qword_27D8E27C0, &qword_22BDBCDF0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v95 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v116 = &v85 - v21;
  v117 = sub_22BDB4C34();
  v22 = *(v117 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v117);
  v98 = &v85 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v102 = &v85 - v26;
  v27 = sub_22BDB89F4();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v124 = &v85 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_22BDB9914();
  v115 = *(v31 + 16);
  if (!v115)
  {
  }

  v32 = v22;
  v33 = 0;
  v114 = v31 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
  v112 = (v118 + 88);
  v113 = v28 + 16;
  v111 = (v118 + 8);
  v110 = *MEMORY[0x277D1DAD0];
  v101 = (v32 + 32);
  v94 = v9 + 16;
  v109 = *MEMORY[0x277D1DA48];
  v118 = v9 + 32;
  v96 = (v32 + 16);
  v108 = *MEMORY[0x277D1DAE8];
  v86 = v32;
  v99 = (v32 + 8);
  v90 = (v9 + 8);
  v104 = (v28 + 8);
  v93 = xmmword_22BDBCBD0;
  v92 = v9;
  v91 = v12;
  v123 = v13;
  v106 = v16;
  v34 = v95;
  v107 = v28;
  v89 = v8;
  v100 = v27;
  v105 = v31;
  while (v33 < *(v31 + 16))
  {
    (*(v28 + 16))(v124, v114 + *(v28 + 72) * v33, v27);
    sub_22BDB89D4();
    v35 = (*v112)(v16, v123);
    if (v35 == v110 || v35 == v109 || v35 == v108)
    {
      sub_22BDB8174();
      v38 = 0;
    }

    else
    {
      v38 = 1;
    }

    v39 = v116;
    v40 = v117;
    sub_22BB336D0(v34, v38, 1, v117);
    (*v111)(v16, v123);
    sub_22BB6BEE0(v34, v39, &qword_27D8E27C0, &qword_22BDBCDF0);
    if (sub_22BB3AA28(v39, 1, v40) == 1)
    {
      (*v104)(v124, v27);
      sub_22BB58728(v39, &qword_27D8E27C0, &qword_22BDBCDF0);
LABEL_25:
      v28 = v107;
      goto LABEL_26;
    }

    v41 = v102;
    (*v101)(v102, v39, v40);
    if (!*(v103 + 16) || (sub_22BBDAE68(), (v43 & 1) == 0))
    {
      (*v99)(v41, v117);
      v27 = v100;
      (*v104)(v124, v100);
      goto LABEL_25;
    }

    (*(v9 + 16))(v12, *(v103 + 56) + *(v9 + 72) * v42, v125);
    sub_22BCB3AC0();
    if (v44)
    {
      v45 = v44;
      v46 = *(v44 + 16);
      v47 = v89;
      if (v46)
      {
        v126 = MEMORY[0x277D84F90];
        sub_22BD28068();
        v48 = v126;
        v49 = (*(v87 + 80) + 32) & ~*(v87 + 80);
        v88 = v45;
        v50 = v45 + v49;
        v51 = *(v87 + 72);
        do
        {
          v52 = v121;
          sub_22BCC74B0();
          (*v118)(v47, v52, v125);
          type metadata accessor for FeedbackLearning.CandidateDefinition(0);
          swift_storeEnumTagMultiPayload();
          v53 = *(v122 + 20);
          v54 = *(v120 + 20);
          v55 = sub_22BDB7B44();
          (*(*(v55 - 8) + 32))(&v47[v54], &v52[v53], v55);
          v126 = v48;
          v56 = v48[2];
          if (v56 >= v48[3] >> 1)
          {
            sub_22BD28068();
            v48 = v126;
          }

          v48[2] = v56 + 1;
          v57 = v48 + ((*(v119 + 80) + 32) & ~*(v119 + 80)) + *(v119 + 72) * v56;
          sub_22BCC7414();
          v50 += v51;
          --v46;
        }

        while (v46);
      }

      else
      {

        v48 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      v48 = 0;
    }

    v58 = v102;
    sub_22BDB8174();
    sub_22BBE6DE0(&qword_27D8E3F88, &qword_22BDC1790);
    v59 = (sub_22BBE6DE0(&qword_27D8E3F90, &unk_22BDC1798) - 8);
    v60 = *(*v59 + 72);
    v61 = (*(*v59 + 80) + 32) & ~*(*v59 + 80);
    v62 = swift_allocObject();
    *(v62 + 16) = v93;
    v63 = v62 + v61;
    v64 = v59[14];
    v65 = *v96;
    (*v96)(v63, v58, v117);
    type metadata accessor for FeedbackLearning.CandidateParameter(0);
    swift_storeEnumTagMultiPayload();
    *(v63 + v64) = v48;
    sub_22BBE6DE0(&qword_27D8E3E78, &unk_22BDC1340);
    sub_22BCC7468(&qword_27D8E3F98, type metadata accessor for FeedbackLearning.CandidateParameter);
    v66 = sub_22BDBAB14();
    v67 = v97;
    v68 = *v97;
    swift_isUniquelyReferenced_nonNull_native();
    v69 = *v67;
    v126 = v69;
    sub_22BBDAE68();
    if (__OFADD__(v69[2], (v71 & 1) == 0))
    {
      goto LABEL_42;
    }

    v72 = v70;
    v73 = v71;
    sub_22BBE6DE0(&qword_27D8E3FA0, &qword_22BDC17A8);
    if (sub_22BDBB4A4())
    {
      sub_22BBDAE68();
      v28 = v107;
      if ((v73 & 1) != (v75 & 1))
      {
        goto LABEL_44;
      }

      v72 = v74;
    }

    else
    {
      v28 = v107;
    }

    v76 = v126;
    if (v73)
    {
      v77 = v126[7];
      v78 = *(v77 + 8 * v72);
      *(v77 + 8 * v72) = v66;

      v79 = v117;
    }

    else
    {
      v126[(v72 >> 6) + 8] |= 1 << v72;
      v79 = v117;
      v65(v76[6] + *(v86 + 72) * v72, v98, v117);
      *(v76[7] + 8 * v72) = v66;
      v80 = v76[2];
      v81 = __OFADD__(v80, 1);
      v82 = v80 + 1;
      if (v81)
      {
        goto LABEL_43;
      }

      v76[2] = v82;
    }

    v83 = *v99;
    (*v99)(v98, v79);
    v12 = v91;
    (*v90)(v91, v125);
    v83(v102, v79);
    v27 = v100;
    (*v104)(v124, v100);
    *v97 = v76;
    v9 = v92;
    v34 = v95;
LABEL_26:
    ++v33;
    v31 = v105;
    v16 = v106;
    if (v33 == v115)
    {
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  result = sub_22BDBB744();
  __break(1u);
  return result;
}

uint64_t sub_22BCC20E8()
{
  v0 = _s23ParameterCandidateValueVMa(0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s27StatementParameterCandidateVMa(0);
  v84 = *(v5 - 8);
  v85 = v5;
  v6 = *(v84 + 64);
  MEMORY[0x28223BE20](v5);
  v86 = v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for FeedbackLearning.CandidateParameter(0);
  v81 = *(v87 - 8);
  v8 = *(v81 + 64);
  v9 = MEMORY[0x28223BE20](v87);
  v83 = v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v82 = (v74 - v11);
  v12 = sub_22BDB8E14();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BD1D4C0();
  v17 = sub_22BDB8E04();
  v19 = v18;
  (*(v13 + 8))(v16, v12);
  if (v17 == 0xD000000000000033 && 0x800000022BDD1CD0 == v19)
  {

LABEL_37:
    sub_22BBE6DE0(&qword_27D8E3E78, &unk_22BDC1340);
    sub_22BCC7468(&qword_27D8E3F98, type metadata accessor for FeedbackLearning.CandidateParameter);
    return sub_22BDBAB14();
  }

  v21 = sub_22BDBB6D4();

  if (v21)
  {
    goto LABEL_37;
  }

  v79 = v4;
  v80 = v0;
  v77 = v1;
  v22 = sub_22BCB1C94();
  v23 = v22;
  v24 = v22 + 64;
  v25 = 1 << *(v22 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(v22 + 64);
  v28 = (v25 + 63) >> 6;

  v29 = 0;
  v30 = MEMORY[0x277D84F98];
  while (2)
  {
    while (2)
    {
      v31 = v83;
LABEL_10:
      v32 = v29;
      if (!v27)
      {
        goto LABEL_12;
      }

      while (1)
      {
        v29 = v32;
LABEL_15:
        v33 = __clz(__rbit64(v27));
        v27 &= v27 - 1;
        v34 = v33 | (v29 << 6);
        v35 = (*(v23 + 48) + 16 * v34);
        v36 = *v35;
        v37 = v35[1];
        v38 = *(*(v23 + 56) + 8 * v34);
        if (v38)
        {
          break;
        }

        *v31 = v36;
        v31[1] = v37;
        swift_storeEnumTagMultiPayload();
        swift_bridgeObjectRetain_n();
        v39 = sub_22BD84634(v31);
        if (v40)
        {
          v41 = v39;
          swift_isUniquelyReferenced_nonNull_native();
          v88 = v30;
          v76 = v23;
          v42 = v30[3];
          sub_22BBE6DE0(&qword_27D8E3FF8, &qword_22BDC1800);
          v31 = v83;
          v23 = v76;
          sub_22BDBB4A4();
          v30 = v88;
          sub_22BCC73B8(v88[6] + *(v81 + 72) * v41);
          v43 = *(v30[7] + 8 * v41);

          sub_22BBE6DE0(&qword_27D8E3E78, &unk_22BDC1340);
          sub_22BCC7468(&qword_27D8E3F98, type metadata accessor for FeedbackLearning.CandidateParameter);
          sub_22BDBB4C4();

          sub_22BCC73B8(v31);
          goto LABEL_10;
        }

        sub_22BCC73B8(v31);
        v32 = v29;
        if (!v27)
        {
LABEL_12:
          while (1)
          {
            v29 = v32 + 1;
            if (__OFADD__(v32, 1))
            {
              break;
            }

            if (v29 >= v28)
            {

              return v30;
            }

            v27 = *(v24 + 8 * v29);
            ++v32;
            if (v27)
            {
              goto LABEL_15;
            }
          }

          __break(1u);
          goto LABEL_41;
        }
      }

      v76 = v23;
      v44 = v82;
      *v82 = v36;
      v44[1] = v37;
      swift_storeEnumTagMultiPayload();
      v45 = *(v38 + 16);
      if (v45)
      {
        v74[0] = v28;
        v75 = v30;
        v88 = MEMORY[0x277D84F90];
        swift_bridgeObjectRetain_n();

        sub_22BD28068();
        v46 = v88;
        v47 = *(v77 + 80);
        v74[1] = v38;
        v48 = v38 + ((v47 + 32) & ~v47);
        v78 = *(v77 + 72);
        v49 = v86;
        do
        {
          v50 = v79;
          sub_22BCC74B0();
          v51 = sub_22BDBA594();
          (*(*(v51 - 8) + 32))(v49, v50, v51);
          type metadata accessor for FeedbackLearning.CandidateDefinition(0);
          swift_storeEnumTagMultiPayload();
          v52 = *(v80 + 20);
          v53 = *(v85 + 20);
          v54 = sub_22BDB7B44();
          v55 = &v86[v53];
          v49 = v86;
          (*(*(v54 - 8) + 32))(v55, &v50[v52], v54);
          v88 = v46;
          v56 = v46[2];
          if (v56 >= v46[3] >> 1)
          {
            sub_22BD28068();
            v49 = v86;
            v46 = v88;
          }

          v46[2] = v56 + 1;
          v57 = v46 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v56;
          sub_22BCC7414();
          v48 += v78;
          --v45;
        }

        while (v45);
        v78 = v46;
        v30 = v75;
        v28 = v74[0];
      }

      else
      {
        swift_bridgeObjectRetain_n();

        v78 = MEMORY[0x277D84F90];
      }

      swift_isUniquelyReferenced_nonNull_native();
      v88 = v30;
      v58 = sub_22BD84634(v82);
      v59 = v30[2];
      LODWORD(v75) = v60;
      if (__OFADD__(v59, (v60 & 1) == 0))
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v61 = v58;
      sub_22BBE6DE0(&qword_27D8E3FF8, &qword_22BDC1800);
      if (sub_22BDBB4A4())
      {
        v62 = sub_22BD84634(v82);
        v64 = v75;
        v23 = v76;
        if ((v75 & 1) != (v63 & 1))
        {
          goto LABEL_43;
        }

        v61 = v62;
      }

      else
      {
        v23 = v76;
        v64 = v75;
      }

      v30 = v88;
      if (v64)
      {
        v65 = v88[7];
        v66 = v88;
        v67 = *(v65 + 8 * v61);
        *(v65 + 8 * v61) = v78;

        v30 = v66;

        sub_22BCC73B8(v82);
        continue;
      }

      break;
    }

    v88[(v61 >> 6) + 8] |= 1 << v61;
    v68 = v82;
    v69 = v30[6] + *(v81 + 72) * v61;
    sub_22BCC74B0();
    *(v30[7] + 8 * v61) = v78;

    sub_22BCC73B8(v68);
    v70 = v30[2];
    v71 = __OFADD__(v70, 1);
    v72 = v70 + 1;
    if (!v71)
    {
      v30[2] = v72;
      continue;
    }

    break;
  }

LABEL_42:
  __break(1u);
LABEL_43:
  result = sub_22BDBB744();
  __break(1u);
  return result;
}

uint64_t sub_22BCC29AC(uint64_t a1)
{
  v172 = sub_22BDB9CB4();
  v159 = *(v172 - 8);
  v2 = *(v159 + 64);
  MEMORY[0x28223BE20](v172);
  v168 = &v138 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = sub_22BDBA594();
  v169 = *(v167 - 8);
  v4 = *(v169 + 64);
  MEMORY[0x28223BE20](v167);
  v6 = &v138 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22BDB4C34();
  v144 = *(v7 - 8);
  v8 = *(v144 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v138 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22BBE6DE0(&qword_27D8E3FE8, &qword_22BDC17F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v152 = (&v138 - v13);
  v151 = sub_22BBE6DE0(&qword_27D8E3F90, &unk_22BDC1798);
  v140 = *(v151 - 8);
  v14 = *(v140 + 64);
  v15 = MEMORY[0x28223BE20](v151);
  v141 = &v138 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v139 = &v138 - v17;
  v154 = sub_22BBE6DE0(&qword_27D8E4008, &unk_22BDC1810);
  v153 = *(v154 - 8);
  v18 = *(v153 + 64);
  MEMORY[0x28223BE20](v154);
  v164 = (&v138 - v19);
  v166 = sub_22BBE6DE0(&qword_27D8E4010, &unk_22BDC2CD0);
  v20 = *(*(v166 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v166);
  v163 = &v138 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v162 = &v138 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v161 = &v138 - v26;
  MEMORY[0x28223BE20](v25);
  v160 = &v138 - v27;
  v28 = sub_22BDB8E14();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v138 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB8EF4();
  v33 = sub_22BDB8E04();
  v35 = v34;
  (*(v29 + 8))(v32, v28);
  if (v33 == 0xD000000000000033 && 0x800000022BDD1CD0 == v35)
  {

    goto LABEL_29;
  }

  v37 = sub_22BDBB6D4();

  if (v37)
  {
LABEL_29:
    type metadata accessor for FeedbackLearning.CandidateParameter(0);
    sub_22BBE6DE0(&qword_27D8E3E78, &unk_22BDC1340);
    sub_22BCC7468(&qword_27D8E3F98, type metadata accessor for FeedbackLearning.CandidateParameter);
    return sub_22BDBAB14();
  }

  v142 = v10;
  v143 = v7;
  v149 = a1;
  v38 = sub_22BDB8ED4();
  v39 = v38 + 64;
  v40 = 1 << *(v38 + 32);
  v41 = -1;
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  v42 = v41 & *(v38 + 64);
  v43 = (v40 + 63) >> 6;
  v171 = v159 + 16;
  v148 = v159 + 32;
  v170 = (v159 + 8);
  v150 = v38;

  v44 = 0;
  v45 = MEMORY[0x277D84F98];
  v146 = v39;
  v145 = v43;
  v147 = v6;
  while (1)
  {
    v165 = v45;
    if (!v42)
    {
      break;
    }

LABEL_14:
    v47 = __clz(__rbit64(v42)) | (v44 << 6);
    v48 = v150;
    v49 = *(v150 + 48);
    v50 = sub_22BDB8384();
    v51 = *(v50 - 8);
    v52 = v160;
    (*(v51 + 16))(v160, v49 + *(v51 + 72) * v47, v50);
    v53 = v159;
    (*(v159 + 16))(v52 + *(v166 + 48), *(v48 + 56) + *(v159 + 72) * v47, v172);
    v54 = v161;
    sub_22BB3CD70(v52, v161, &qword_27D8E4010, &unk_22BDC2CD0);
    v55 = sub_22BDB8374();
    v157 = v56;
    v158 = v55;
    v57 = *(v51 + 8);
    v57(v54, v50);
    v58 = v162;
    sub_22BB3CD70(v52, v162, &qword_27D8E4010, &unk_22BDC2CD0);
    v59 = sub_22BDB8344();
    LOBYTE(v48) = v60;
    v155 = v57;
    v156 = v50;
    v57(v58, v50);
    v61 = v157;
    v62 = v163;
    sub_22BB3CD70(v52, v163, &qword_27D8E4010, &unk_22BDC2CD0);
    v63 = *(v166 + 48);
    v64 = *(v154 + 48);
    v65 = v164;
    *v164 = v59;
    *(v65 + 8) = v48 & 1;
    (*(v53 + 32))(v65 + v64, v62 + v63, v172);
    v66 = v165;
    swift_isUniquelyReferenced_nonNull_native();
    v173 = v66;
    v67 = v158;
    v68 = sub_22BD8446C();
    if (__OFADD__(v66[2], (v69 & 1) == 0))
    {
      goto LABEL_61;
    }

    v70 = v68;
    v71 = v69;
    sub_22BBE6DE0(&qword_27D8E4018, &qword_22BDC1820);
    if (sub_22BDBB4A4())
    {
      v72 = sub_22BD8446C();
      v6 = v147;
      if ((v71 & 1) != (v73 & 1))
      {
        goto LABEL_63;
      }

      v70 = v72;
    }

    else
    {
      v6 = v147;
    }

    v74 = v173;
    if (v71)
    {
    }

    else
    {
      v173[(v70 >> 6) + 8] |= 1 << v70;
      v75 = (v74[6] + 16 * v70);
      *v75 = v67;
      v75[1] = v61;
      *(v74[7] + 8 * v70) = MEMORY[0x277D84F90];
      v76 = v74[2];
      v77 = __OFADD__(v76, 1);
      v78 = v76 + 1;
      if (v77)
      {
        goto LABEL_62;
      }

      v74[2] = v78;
    }

    v79 = v74[7];
    v80 = *(v79 + 8 * v70);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v79 + 8 * v70) = v80;
    v82 = v74;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v88 = *(v80 + 16);
      sub_22BD90814();
      v80 = v89;
      *(v79 + 8 * v70) = v89;
    }

    v83 = *(v80 + 16);
    if (v83 >= *(v80 + 24) >> 1)
    {
      sub_22BD90814();
      *(v79 + 8 * v70) = v90;
    }

    v42 &= v42 - 1;
    v84 = *(v166 + 48);
    sub_22BB58728(v160, &qword_27D8E4010, &unk_22BDC2CD0);
    v85 = *(v79 + 8 * v70);
    *(v85 + 16) = v83 + 1;
    sub_22BB6BEE0(v164, v85 + ((*(v153 + 80) + 32) & ~*(v153 + 80)) + *(v153 + 72) * v83, &qword_27D8E4008, &unk_22BDC1810);
    v155(v163, v156);
    v86 = *v170;
    v87 = v172;
    (*v170)(v162 + v84, v172);
    v86(v161 + v84, v87);
    v39 = v146;
    v43 = v145;
    v45 = v82;
  }

  while (1)
  {
    v46 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      __break(1u);
      goto LABEL_60;
    }

    if (v46 >= v43)
    {
      break;
    }

    v42 = *(v39 + 8 * v46);
    ++v44;
    if (v42)
    {
      v44 = v46;
      goto LABEL_14;
    }
  }

  v92 = (v45 + 8);
  v93 = 1 << *(v45 + 32);
  v94 = -1;
  if (v93 < 64)
  {
    v94 = ~(-1 << v93);
  }

  v95 = v94 & v45[8];
  v96 = (v93 + 63) >> 6;
  v157 = (v144 + 8);
  v166 = v169 + 32;

  v97 = 0;
  v161 = 0;
  v154 = MEMORY[0x277D84F90];
  v98 = v143;
  v99 = v142;
  v155 = (v45 + 8);
  v156 = v96;
  while (v95)
  {
    v100 = v97;
LABEL_38:
    v164 = v100;
    v101 = __clz(__rbit64(v95)) | (v100 << 6);
    v102 = (v165[6] + 16 * v101);
    v104 = *v102;
    v103 = v102[1];
    v105 = *(v165[7] + 8 * v101);

    sub_22BDB8174();
    v163 = v105;
    v106 = sub_22BCC479C(v104, v103, v99, v105);
    (*v157)(v99, v98);
    if (v106)
    {
      v158 = v104;
      v160 = v103;
      v162 = v95;
      v107 = *(v106 + 16);
      if (v107)
      {
        v173 = MEMORY[0x277D84F90];
        sub_22BD27A40();
        v108 = v173;
        v109 = v106;
        v110 = v106 + ((*(v159 + 80) + 32) & ~*(v159 + 80));
        v111 = *(v159 + 72);
        v112 = *(v159 + 16);
        do
        {
          v113 = v168;
          v114 = v172;
          v112(v168, v110, v172);
          sub_22BDB8FF4();
          (*v170)(v113, v114);
          v173 = v108;
          v115 = v108[2];
          if (v115 >= v108[3] >> 1)
          {
            sub_22BD27A40();
            v108 = v173;
          }

          v108[2] = v115 + 1;
          (*(v169 + 32))(v108 + ((*(v169 + 80) + 32) & ~*(v169 + 80)) + *(v169 + 72) * v115, v6, v167);
          v110 += v111;
          --v107;
        }

        while (v107);
      }

      else
      {
        v109 = v106;
      }

      sub_22BCB4498();
      v122 = v121;

      v98 = v143;
      v99 = v142;
      v119 = v152;
      v120 = v151;
      v92 = v155;
      if (v122)
      {
        v123 = v109;
        v124 = v161;
        sub_22BCC0E14(v123, v122);
        v126 = v125;
        v161 = v124;

        v127 = *(v120 + 48);
        v128 = v160;
        *v119 = v158;
        v119[1] = v128;
        type metadata accessor for FeedbackLearning.CandidateParameter(0);
        swift_storeEnumTagMultiPayload();
        *(v119 + v127) = v126;
      }

      else
      {

        v129 = *(v120 + 48);
        v130 = v160;
        *v119 = v158;
        v119[1] = v130;
        type metadata accessor for FeedbackLearning.CandidateParameter(0);
        swift_storeEnumTagMultiPayload();
        *(v119 + v129) = 0;
      }

      v96 = v156;
      v95 = v162;
    }

    else
    {
      v116 = v151;
      v117 = *(v151 + 48);
      v118 = v152;
      *v152 = v104;
      v118[1] = v103;
      v119 = v118;
      v120 = v116;
      type metadata accessor for FeedbackLearning.CandidateParameter(0);
      swift_storeEnumTagMultiPayload();
      *(v119 + v117) = 0;
    }

    v95 &= v95 - 1;
    sub_22BB336D0(v119, 0, 1, v120);

    if (sub_22BB3AA28(v119, 1, v120) == 1)
    {
      sub_22BB58728(v119, &qword_27D8E3FE8, &qword_22BDC17F0);
      v97 = v164;
    }

    else
    {
      v131 = v139;
      sub_22BB6BEE0(v119, v139, &qword_27D8E3F90, &unk_22BDC1798);
      sub_22BB6BEE0(v131, v141, &qword_27D8E3F90, &unk_22BDC1798);
      v132 = swift_isUniquelyReferenced_nonNull_native();
      v162 = v95;
      if ((v132 & 1) == 0)
      {
        v135 = *(v154 + 16);
        sub_22BD90748();
        v154 = v136;
      }

      v133 = *(v154 + 16);
      if (v133 >= *(v154 + 24) >> 1)
      {
        sub_22BD90748();
        v154 = v137;
      }

      v134 = v154;
      *(v154 + 16) = v133 + 1;
      sub_22BB6BEE0(v141, v134 + ((*(v140 + 80) + 32) & ~*(v140 + 80)) + *(v140 + 72) * v133, &qword_27D8E3F90, &unk_22BDC1798);
      v97 = v164;
      v95 = v162;
    }
  }

  while (1)
  {
    v100 = v97 + 1;
    if (__OFADD__(v97, 1))
    {
      break;
    }

    if (v100 >= v96)
    {

      return sub_22BCC4FAC(v154);
    }

    v95 = *(v92 + v100);
    v97 = (v97 + 1);
    if (v95)
    {
      goto LABEL_38;
    }
  }

LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  result = sub_22BDBB744();
  __break(1u);
  return result;
}

uint64_t sub_22BCC3914(uint64_t a1, uint64_t *a2, void (*a3)(char *, uint64_t, uint64_t))
{
  v65 = a3;
  v69 = a1;
  v68 = sub_22BDB7B44();
  v60 = *(v68 - 8);
  v4 = *(v60 + 64);
  MEMORY[0x28223BE20](v68);
  v62 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22BDBA014();
  v64 = *(v6 - 8);
  v7 = *(v64 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v63 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v60 - v10;
  v12 = sub_22BBE6DE0(&qword_27D8E3E60, &qword_22BDC23E0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v61 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v60 - v16;
  v18 = sub_22BDB8E14();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22BBE6DE0(&qword_27D8E2FC0, &qword_22BDBFB90);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v27 = &v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v60 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v60 - v31;
  v33 = *a2;
  v66 = OBJC_IVAR____TtCO23IntelligenceFlowRuntime16FeedbackLearning13ActionCreated_action;
  v67 = v33;
  sub_22BD1D4C0();
  sub_22BCB51B4();
  v34 = v18;
  v35 = v17;
  (*(v19 + 8))(v22, v34);
  v36 = v64;
  sub_22BB3CD70(v32, v30, &qword_27D8E2FC0, &qword_22BDBFB90);
  v37 = 1;
  if (sub_22BB3AA28(v30, 1, v6) != 1)
  {
    (*(v36 + 32))(v11, v30, v6);
    sub_22BDBA004();
    (*(v36 + 8))(v11, v6);
    v37 = 0;
  }

  v38 = v68;
  sub_22BB336D0(v17, v37, 1, v68);
  sub_22BB3CD70(v32, v27, &qword_27D8E2FC0, &qword_22BDBFB90);
  v39 = &loc_22BDBC000;
  if (sub_22BB3AA28(v27, 1, v6) == 1)
  {
    v40 = &qword_27D8E2FC0;
    v41 = &qword_22BDBFB90;
    v42 = v27;
  }

  else
  {
    v43 = v63;
    (*(v36 + 32))(v63, v27, v6);
    v44 = v61;
    sub_22BB3CD70(v35, v61, &qword_27D8E3E60, &qword_22BDC23E0);
    if (sub_22BB3AA28(v44, 1, v38) != 1)
    {
      v65 = *(v60 + 32);
      v65(v62, v44, v38);
      sub_22BBE6DE0(&qword_27D8E3FA8, &qword_22BDC17B0);
      v46 = (_s27StatementParameterCandidateVMa(0) - 8);
      v47 = *(*v46 + 72);
      v48 = (*(*v46 + 80) + 32) & ~*(*v46 + 80);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_22BDBCBD0;
      v49 = v45 + v48;
      v50 = v45 + v48;
      v51 = v63;
      (*(v36 + 16))(v50, v63, v6);
      type metadata accessor for FeedbackLearning.CandidateDefinition(0);
      swift_storeEnumTagMultiPayload();
      v65((v49 + v46[7]), v62, v38);
      v39 = &loc_22BDBC000;
      (*(v36 + 8))(v51, v6);
      goto LABEL_9;
    }

    (*(v36 + 8))(v43, v6);
    v40 = &qword_27D8E3E60;
    v41 = &qword_22BDC23E0;
    v42 = v44;
  }

  sub_22BB58728(v42, v40, v41);
  v45 = 0;
LABEL_9:
  sub_22BD1D6A4();
  sub_22BBE6DE0(&qword_27D8E3F88, &qword_22BDC1790);
  v52 = (sub_22BBE6DE0(&qword_27D8E3F90, &unk_22BDC1798) - 8);
  v53 = *(*v52 + 72);
  v54 = (*(*v52 + 80) + 32) & ~*(*v52 + 80);
  v55 = swift_allocObject();
  *(v55 + 16) = v39[189];
  v56 = v55 + v54;
  v57 = v52[14];
  type metadata accessor for FeedbackLearning.CandidateParameter(0);
  swift_storeEnumTagMultiPayload();
  *(v56 + v57) = v45;
  sub_22BBE6DE0(&qword_27D8E3E78, &unk_22BDC1340);
  sub_22BCC7468(&qword_27D8E3F98, type metadata accessor for FeedbackLearning.CandidateParameter);
  v58 = sub_22BDBAB14();
  sub_22BB58728(v35, &qword_27D8E3E60, &qword_22BDC23E0);
  sub_22BB58728(v32, &qword_27D8E2FC0, &qword_22BDBFB90);
  return v58;
}

uint64_t sub_22BCC4060(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t, uint64_t))
{
  v68 = a3;
  v70 = a1;
  v69 = sub_22BDB7B44();
  v63 = *(v69 - 8);
  v4 = *(v63 + 64);
  MEMORY[0x28223BE20](v69);
  v66 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22BDBA014();
  v67 = *(v6 - 8);
  v7 = *(v67 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v65 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v62 - v10;
  v12 = sub_22BBE6DE0(&qword_27D8E3E60, &qword_22BDC23E0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v64 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v62 - v16;
  v18 = sub_22BDB8E14();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22BBE6DE0(&qword_27D8E2FC0, &qword_22BDBFB90);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v27 = &v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v62 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v62 - v31;
  v71 = a2;
  sub_22BDB8EF4();
  sub_22BCB51B4();
  v33 = v18;
  v34 = v17;
  v35 = v6;
  (*(v19 + 8))(v22, v33);
  v36 = v67;
  sub_22BB3CD70(v32, v30, &qword_27D8E2FC0, &qword_22BDBFB90);
  v37 = 1;
  if (sub_22BB3AA28(v30, 1, v6) != 1)
  {
    (*(v36 + 32))(v11, v30, v6);
    sub_22BDBA004();
    (*(v36 + 8))(v11, v6);
    v37 = 0;
  }

  v38 = v69;
  sub_22BB336D0(v34, v37, 1, v69);
  sub_22BB3CD70(v32, v27, &qword_27D8E2FC0, &qword_22BDBFB90);
  v39 = &loc_22BDBC000;
  if (sub_22BB3AA28(v27, 1, v35) == 1)
  {
    v40 = &qword_27D8E2FC0;
    v41 = &qword_22BDBFB90;
    v42 = v27;
  }

  else
  {
    v43 = v65;
    (*(v36 + 32))(v65, v27, v35);
    v44 = v64;
    sub_22BB3CD70(v34, v64, &qword_27D8E3E60, &qword_22BDC23E0);
    if (sub_22BB3AA28(v44, 1, v38) != 1)
    {
      v68 = *(v63 + 32);
      v68(v66, v44, v38);
      sub_22BBE6DE0(&qword_27D8E3FA8, &qword_22BDC17B0);
      v64 = v35;
      v46 = v43;
      v47 = (_s27StatementParameterCandidateVMa(0) - 8);
      v48 = *(*v47 + 72);
      v49 = (*(*v47 + 80) + 32) & ~*(*v47 + 80);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_22BDBCBD0;
      v50 = v45 + v49;
      v51 = v45 + v49;
      v52 = v64;
      (*(v36 + 16))(v51, v46, v64);
      type metadata accessor for FeedbackLearning.CandidateDefinition(0);
      swift_storeEnumTagMultiPayload();
      v68((v50 + v47[7]), v66, v38);
      v53 = v46;
      v39 = &loc_22BDBC000;
      (*(v36 + 8))(v53, v52);
      goto LABEL_9;
    }

    (*(v36 + 8))(v43, v35);
    v40 = &qword_27D8E3E60;
    v41 = &qword_22BDC23E0;
    v42 = v44;
  }

  sub_22BB58728(v42, v40, v41);
  v45 = 0;
LABEL_9:
  sub_22BDB8174();
  sub_22BBE6DE0(&qword_27D8E3F88, &qword_22BDC1790);
  v54 = (sub_22BBE6DE0(&qword_27D8E3F90, &unk_22BDC1798) - 8);
  v55 = *(*v54 + 72);
  v56 = (*(*v54 + 80) + 32) & ~*(*v54 + 80);
  v57 = swift_allocObject();
  *(v57 + 16) = v39[189];
  v58 = v57 + v56;
  v59 = v54[14];
  type metadata accessor for FeedbackLearning.CandidateParameter(0);
  swift_storeEnumTagMultiPayload();
  *(v58 + v59) = v45;
  sub_22BBE6DE0(&qword_27D8E3E78, &unk_22BDC1340);
  sub_22BCC7468(&qword_27D8E3F98, type metadata accessor for FeedbackLearning.CandidateParameter);
  v60 = sub_22BDBAB14();
  sub_22BB58728(v34, &qword_27D8E3E60, &qword_22BDC23E0);
  sub_22BB58728(v32, &qword_27D8E2FC0, &qword_22BDBFB90);
  return v60;
}

uint64_t sub_22BCC479C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v73 = a3;
  v74 = a2;
  v72 = a1;
  v5 = sub_22BDB4C34();
  v76 = *(v5 - 8);
  v77 = v5;
  v6 = *(v76 + 64);
  MEMORY[0x28223BE20](v5);
  v75 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22BDB77D4();
  v79 = *(v8 - 8);
  v80 = v8;
  v9 = *(v79 + 64);
  MEMORY[0x28223BE20](v8);
  v78 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_22BDB9CB4();
  v88 = *(v84 - 8);
  v11 = *(v88 + 64);
  v12 = MEMORY[0x28223BE20](v84);
  v81 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v82 = &v71 - v14;
  v87 = sub_22BBE6DE0(&qword_27D8E4008, &unk_22BDC1810);
  v15 = *(v87 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v87);
  v83 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v86 = &v71 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v85 = &v71 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v71 - v23;
  v25 = 0;
  v89 = a4;
  v26 = *(a4 + 16);
  do
  {
    if (v26 == v25)
    {
      v49 = MEMORY[0x277D84F90];
      if (v26)
      {
        v90[0] = MEMORY[0x277D84F90];
        sub_22BD280C0();
        v49 = v90[0];
        v50 = v89 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
        v89 = *(v15 + 72);
        v51 = (v88 + 32);
        v52 = v84;
        v53 = v82;
        do
        {
          v54 = v85;
          sub_22BB3CD70(v50, v85, &qword_27D8E4008, &unk_22BDC1810);
          v55 = v54;
          v56 = v86;
          sub_22BB6BEE0(v55, v86, &qword_27D8E4008, &unk_22BDC1810);
          v57 = *v51;
          (*v51)(v53, v56 + *(v87 + 48), v52);
          v90[0] = v49;
          v58 = *(v49 + 16);
          if (v58 >= *(v49 + 24) >> 1)
          {
            sub_22BD280C0();
            v49 = v90[0];
          }

          *(v49 + 16) = v58 + 1;
          v57((v49 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v58), v53, v52);
          v50 += v89;
          --v26;
        }

        while (v26);
      }

      return v49;
    }

    v27 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v28 = v89 + v27;
    v29 = *(v15 + 72);
    sub_22BB3CD70(v89 + v27 + v29 * v25++, v24, &qword_27D8E4008, &unk_22BDC1810);
    v30 = v24[8];
    sub_22BB58728(v24, &qword_27D8E4008, &unk_22BDC1810);
  }

  while ((v30 & 1) != 0);
  v31 = v26 + 1;
  v32 = v83;
  while (--v31)
  {
    sub_22BB3CD70(v28, v32, &qword_27D8E4008, &unk_22BDC1810);
    v33 = *(v32 + 8);
    sub_22BB58728(v32, &qword_27D8E4008, &unk_22BDC1810);
    v28 += v29;
    if (v33)
    {
      v34 = v78;
      sub_22BDB6404();
      v35 = v75;
      v36 = v76;
      v37 = v77;
      (*(v76 + 16))(v75, v73, v77);
      v38 = v74;

      v39 = sub_22BDB77C4();
      v40 = sub_22BDBB114();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = v38;
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v90[0] = v43;
        *v42 = 136315394;
        *(v42 + 4) = sub_22BB32EE0(v72, v41, v90);
        *(v42 + 12) = 2080;
        sub_22BCC7468(&qword_27D8E2F68, MEMORY[0x277D1C338]);
        v44 = sub_22BDBB684();
        v45 = v35;
        v47 = v46;
        (*(v36 + 8))(v45, v37);
        v48 = sub_22BB32EE0(v44, v47, v90);

        *(v42 + 14) = v48;
        _os_log_impl(&dword_22BB2C000, v39, v40, "Cannot coalesce parameter paths for %s in resolver request with id %s", v42, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2318A6080](v43, -1, -1);
        MEMORY[0x2318A6080](v42, -1, -1);
      }

      else
      {

        (*(v36 + 8))(v35, v37);
      }

      (*(v79 + 8))(v34, v80);
      return 0;
    }
  }

  v90[0] = v89;

  sub_22BCC5044(v90);
  v59 = v90[0];
  v60 = *(v90[0] + 16);
  v61 = v84;
  v62 = v81;
  if (v60)
  {
    v90[0] = MEMORY[0x277D84F90];
    sub_22BD280C0();
    v49 = v90[0];
    v89 = v59;
    v63 = v59 + v27;
    v64 = (v88 + 32);
    do
    {
      v65 = v85;
      sub_22BB3CD70(v63, v85, &qword_27D8E4008, &unk_22BDC1810);
      v66 = v65;
      v67 = v86;
      sub_22BB6BEE0(v66, v86, &qword_27D8E4008, &unk_22BDC1810);
      v68 = *v64;
      (*v64)(v62, v67 + *(v87 + 48), v61);
      v90[0] = v49;
      v69 = *(v49 + 16);
      if (v69 >= *(v49 + 24) >> 1)
      {
        sub_22BD280C0();
        v49 = v90[0];
      }

      *(v49 + 16) = v69 + 1;
      v68((v49 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v69), v62, v61);
      v63 += v29;
      --v60;
    }

    while (v60);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v49;
}

uint64_t sub_22BCC4FAC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_22BBE6DE0(&qword_27D8E4020, &qword_22BDC1828);
    v3 = sub_22BDBB524();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v6 = v3;
  sub_22BCC6D50(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

uint64_t sub_22BCC5044(uint64_t *a1)
{
  v2 = *(sub_22BBE6DE0(&qword_27D8E4008, &unk_22BDC1810) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22BDB166C(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_22BCC50F8(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_22BCC50F8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22BDBB674();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22BBE6DE0(&qword_27D8E4008, &unk_22BDC1810);
        v6 = sub_22BDBADC4();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_22BBE6DE0(&qword_27D8E4008, &unk_22BDC1810) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22BCC55E8(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_22BCC5240(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22BCC5240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v62 = sub_22BBE6DE0(&qword_27D8E4008, &unk_22BDC1810);
  v8 = *(*(v62 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v62);
  v54 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v55 = &v45 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v58 = &v45 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v45 - v16;
  result = MEMORY[0x28223BE20](v15);
  v21 = &v45 - v20;
  v47 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v23 = *(v19 + 72);
    v24 = *a4 + v23 * (a3 - 1);
    v52 = -v23;
    v53 = v22;
    v25 = a1 - a3;
    v46 = v23;
    v26 = v22 + v23 * a3;
    v27 = &qword_27D8E4008;
    v56 = &v45 - v20;
    v57 = v17;
    while (2)
    {
      v50 = v24;
      v51 = a3;
      v48 = v26;
      v49 = v25;
      v28 = v25;
      while (1)
      {
        v60 = v28;
        v61 = v26;
        sub_22BB3CD70(v26, v21, v27, &unk_22BDC1810);
        sub_22BB3CD70(v24, v17, v27, &unk_22BDC1810);
        v29 = v58;
        sub_22BB3CD70(v21, v58, v27, &unk_22BDC1810);
        v59 = *v29;
        v30 = *(v29 + 8);
        v31 = *(v62 + 48);
        v32 = v27;
        v33 = sub_22BDB9CB4();
        v34 = *(*(v33 - 8) + 8);
        v35 = v29 + v31;
        v17 = v57;
        v36 = v62;
        v34(v35, v33);
        if (v30)
        {
          break;
        }

        v37 = v55;
        sub_22BB3CD70(v17, v55, v32, &unk_22BDC1810);
        v38 = *(v36 + 48);
        if (*(v37 + 8))
        {
          v34(v37 + v38, v33);
          break;
        }

        v39 = v37;
        v40 = *v37;
        v34(v39 + v38, v33);
        sub_22BB58728(v17, v32, &unk_22BDC1810);
        v21 = v56;
        result = sub_22BB58728(v56, v32, &unk_22BDC1810);
        v27 = v32;
        v42 = v60;
        v41 = v61;
        if (v59 < v40)
        {
          if (!v53)
          {
            __break(1u);
            return result;
          }

          v43 = v54;
          sub_22BB6BEE0(v61, v54, v27, &unk_22BDC1810);
          swift_arrayInitWithTakeFrontToBack();
          result = sub_22BB6BEE0(v43, v24, v27, &unk_22BDC1810);
          v24 += v52;
          v26 = v41 + v52;
          v44 = __CFADD__(v42, 1);
          v28 = v42 + 1;
          if (!v44)
          {
            continue;
          }
        }

        goto LABEL_13;
      }

      sub_22BB58728(v17, v32, &unk_22BDC1810);
      v21 = v56;
      result = sub_22BB58728(v56, v32, &unk_22BDC1810);
      v27 = v32;
LABEL_13:
      a3 = v51 + 1;
      v24 = v50 + v46;
      v25 = v49 - 1;
      v26 = v48 + v46;
      if (v51 + 1 != v47)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_22BCC55E8(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v155 = a1;
  v182 = sub_22BBE6DE0(&qword_27D8E4008, &unk_22BDC1810);
  v167 = *(v182 - 8);
  v6 = *(v167 + 64);
  v7 = MEMORY[0x28223BE20](v182);
  v160 = &v147 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v173 = &v147 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v12 = MEMORY[0x28223BE20](v11);
  v175 = &v147 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v147 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v181 = &v147 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v20 = MEMORY[0x28223BE20](v19);
  v162 = &v147 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v165 = &v147 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v25 = MEMORY[0x28223BE20](v24);
  v148 = &v147 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v150 = &v147 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v149 = &v147 - v30;
  MEMORY[0x28223BE20](v29);
  v152 = &v147 - v34;
  v168 = a3;
  v35 = *(a3 + 8);
  if (v35 < 1)
  {
    v37 = MEMORY[0x277D84F90];
LABEL_112:
    a3 = *v155;
    if (!*v155)
    {
      goto LABEL_152;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_114:
      v139 = (v37 + 16);
      for (i = *(v37 + 2); i >= 2; *v139 = i)
      {
        if (!*v168)
        {
          goto LABEL_149;
        }

        v141 = &v37[16 * i];
        v142 = *v141;
        v143 = &v139[2 * i];
        v144 = *(v143 + 1);
        v145 = v170;
        sub_22BCC637C(*v168 + *(v167 + 72) * *v141, *v168 + *(v167 + 72) * *v143, *v168 + *(v167 + 72) * v144, a3);
        v170 = v145;
        if (v145)
        {
          break;
        }

        if (v144 < v142)
        {
          goto LABEL_137;
        }

        if (i - 2 >= *v139)
        {
          goto LABEL_138;
        }

        *v141 = v142;
        *(v141 + 1) = v144;
        v146 = *v139 - i;
        if (*v139 < i)
        {
          goto LABEL_139;
        }

        i = *v139 - 1;
        sub_22BDB12C0(v143 + 16, v146, v143);
      }

LABEL_110:

      return;
    }

LABEL_146:
    v37 = sub_22BDB12A8(v37);
    goto LABEL_114;
  }

  v164 = v33;
  v159 = v32;
  v36 = 0;
  v37 = MEMORY[0x277D84F90];
  v154 = a4;
  v174 = v31;
  v153 = v16;
  while (2)
  {
    v38 = v36 + 1;
    v156 = v36;
    if (v36 + 1 >= v35)
    {
      goto LABEL_36;
    }

    v39 = v36;
    v163 = v35;
    v40 = *v168;
    v41 = *(v167 + 72);
    v169 = v36 + 1;
    v42 = v152;
    sub_22BB3CD70(v40 + v41 * v38, v152, &qword_27D8E4008, &unk_22BDC1810);
    v178 = v41;
    v43 = v149;
    sub_22BB3CD70(v40 + v41 * v39, v149, &qword_27D8E4008, &unk_22BDC1810);
    v44 = v150;
    sub_22BB3CD70(v42, v150, &qword_27D8E4008, &unk_22BDC1810);
    v45 = *v44;
    LOBYTE(v42) = *(v44 + 8);
    v46 = *(v182 + 48);
    v47 = sub_22BDB9CB4();
    v48 = *(v47 - 8);
    v176 = *(v48 + 8);
    v177 = v47;
    v172 = v48 + 8;
    v176(v44 + v46);
    v151 = v37;
    if ((v42 & 1) == 0)
    {
      v49 = v148;
      sub_22BB3CD70(v43, v148, &qword_27D8E4008, &unk_22BDC1810);
      v50 = *(v182 + 48);
      if ((*(v49 + 8) & 1) == 0)
      {
        v51 = *v49;
        (v176)(v49 + v50, v177);
        LODWORD(v166) = v45 < v51;
        goto LABEL_9;
      }

      (v176)(v49 + v50, v177);
    }

    LODWORD(v166) = 0;
LABEL_9:
    sub_22BB58728(v43, &qword_27D8E4008, &unk_22BDC1810);
    sub_22BB58728(v152, &qword_27D8E4008, &unk_22BDC1810);
    v52 = v156 + 2;
    v53 = v178 * (v156 + 2);
    v54 = v40 + v53;
    v55 = v169;
    v56 = v178 * v169;
    a3 = v40 + v178 * v169;
    v58 = v164;
    v57 = v165;
    do
    {
      v59 = v52;
      v60 = v55;
      v61 = v56;
      v62 = v53;
      if (v52 >= v163)
      {
        break;
      }

      v179 = v55;
      v180 = v52;
      sub_22BB3CD70(v54, v58, &qword_27D8E4008, &unk_22BDC1810);
      sub_22BB3CD70(a3, v57, &qword_27D8E4008, &unk_22BDC1810);
      v63 = v162;
      sub_22BB3CD70(v58, v162, &qword_27D8E4008, &unk_22BDC1810);
      v171 = *v63;
      v64 = *(v63 + 8);
      (v176)(v63 + *(v182 + 48), v177);
      if ((v64 & 1) == 0)
      {
        v65 = v159;
        sub_22BB3CD70(v57, v159, &qword_27D8E4008, &unk_22BDC1810);
        v66 = *(v182 + 48);
        if ((*(v65 + 8) & 1) == 0)
        {
          v68 = *v65;
          (v176)(v65 + v66, v177);
          v67 = v171 < v68;
          goto LABEL_16;
        }

        (v176)(v65 + v66, v177);
      }

      v67 = 0;
LABEL_16:
      v57 = v165;
      sub_22BB58728(v165, &qword_27D8E4008, &unk_22BDC1810);
      v58 = v164;
      sub_22BB58728(v164, &qword_27D8E4008, &unk_22BDC1810);
      v60 = v179;
      v59 = v180;
      v52 = v180 + 1;
      v54 += v178;
      a3 += v178;
      v55 = v179 + 1;
      v56 = v61 + v178;
      v53 = v62 + v178;
    }

    while (v166 == v67);
    v37 = v151;
    if (!v166)
    {
      goto LABEL_34;
    }

    if (v59 < v156)
    {
      goto LABEL_143;
    }

    if (v156 < v59)
    {
      v69 = v156 * v178;
      v70 = v156;
      do
      {
        if (v70 != v60)
        {
          a3 = *v168;
          if (!*v168)
          {
            goto LABEL_150;
          }

          sub_22BB6BEE0(a3 + v69, v160, &qword_27D8E4008, &unk_22BDC1810);
          v71 = v69 < v61 || a3 + v69 >= a3 + v62;
          if (v71)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v69 != v61)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          sub_22BB6BEE0(v160, a3 + v61, &qword_27D8E4008, &unk_22BDC1810);
        }

        ++v70;
        v61 -= v178;
        v62 -= v178;
        v69 += v178;
      }

      while (v70 < v60--);
      v38 = v59;
      a4 = v154;
      v37 = v151;
    }

    else
    {
LABEL_34:
      v38 = v59;
      a4 = v154;
    }

    v16 = v153;
LABEL_36:
    v73 = v168[1];
    if (v38 >= v73)
    {
      goto LABEL_57;
    }

    if (__OFSUB__(v38, v156))
    {
      goto LABEL_142;
    }

    if (v38 - v156 >= a4)
    {
LABEL_57:
      v75 = v156;
      goto LABEL_58;
    }

    v74 = v156 + a4;
    if (__OFADD__(v156, a4))
    {
      goto LABEL_144;
    }

    v75 = v156;
    if (v74 >= v73)
    {
      v74 = v168[1];
    }

    if (v74 < v156)
    {
LABEL_145:
      __break(1u);
      goto LABEL_146;
    }

    if (v38 == v74)
    {
LABEL_58:
      if (v38 < v75)
      {
        goto LABEL_141;
      }

      v169 = v38;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v136 = *(v37 + 2);
        sub_22BD8F3C8();
        v37 = v137;
      }

      v95 = *(v37 + 2);
      a3 = v95 + 1;
      v36 = v169;
      if (v95 >= *(v37 + 3) >> 1)
      {
        sub_22BD8F3C8();
        v36 = v169;
        v37 = v138;
      }

      *(v37 + 2) = a3;
      v96 = v37 + 32;
      v97 = &v37[16 * v95 + 32];
      *v97 = v75;
      *(v97 + 1) = v36;
      if (!*v155)
      {
        goto LABEL_151;
      }

      if (!v95)
      {
LABEL_108:
        v35 = v168[1];
        a4 = v154;
        v16 = v153;
        if (v36 >= v35)
        {
          goto LABEL_112;
        }

        continue;
      }

      v98 = *v155;
      while (1)
      {
        v99 = a3 - 1;
        v100 = &v96[16 * a3 - 16];
        v101 = &v37[16 * a3];
        if (a3 >= 4)
        {
          break;
        }

        if (a3 == 3)
        {
          v102 = *(v37 + 4);
          v103 = *(v37 + 5);
          v112 = __OFSUB__(v103, v102);
          v104 = v103 - v102;
          v105 = v112;
LABEL_79:
          if (v105)
          {
            goto LABEL_128;
          }

          v117 = *v101;
          v116 = *(v101 + 1);
          v118 = __OFSUB__(v116, v117);
          v119 = v116 - v117;
          v120 = v118;
          if (v118)
          {
            goto LABEL_131;
          }

          v121 = *(v100 + 1);
          v122 = v121 - *v100;
          if (__OFSUB__(v121, *v100))
          {
            goto LABEL_134;
          }

          if (__OFADD__(v119, v122))
          {
            goto LABEL_136;
          }

          if (v119 + v122 >= v104)
          {
            if (v104 < v122)
            {
              v99 = a3 - 2;
            }

            goto LABEL_101;
          }

          goto LABEL_94;
        }

        if (a3 < 2)
        {
          goto LABEL_130;
        }

        v124 = *v101;
        v123 = *(v101 + 1);
        v112 = __OFSUB__(v123, v124);
        v119 = v123 - v124;
        v120 = v112;
LABEL_94:
        if (v120)
        {
          goto LABEL_133;
        }

        v126 = *v100;
        v125 = *(v100 + 1);
        v112 = __OFSUB__(v125, v126);
        v127 = v125 - v126;
        if (v112)
        {
          goto LABEL_135;
        }

        if (v127 < v119)
        {
          goto LABEL_108;
        }

LABEL_101:
        if (v99 - 1 >= a3)
        {
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
          goto LABEL_145;
        }

        if (!*v168)
        {
          goto LABEL_148;
        }

        v131 = v37;
        a3 = &v96[16 * v99 - 16];
        v132 = *a3;
        v37 = &v96[16 * v99];
        v133 = *(v37 + 1);
        v134 = v170;
        sub_22BCC637C(*v168 + *(v167 + 72) * *a3, *v168 + *(v167 + 72) * *v37, *v168 + *(v167 + 72) * v133, v98);
        v170 = v134;
        if (v134)
        {
          goto LABEL_110;
        }

        if (v133 < v132)
        {
          goto LABEL_123;
        }

        v135 = *(v131 + 2);
        if (v99 > v135)
        {
          goto LABEL_124;
        }

        *a3 = v132;
        *(a3 + 8) = v133;
        if (v99 >= v135)
        {
          goto LABEL_125;
        }

        a3 = v135 - 1;
        sub_22BDB12C0(v37 + 16, v135 - 1 - v99, &v96[16 * v99]);
        v37 = v131;
        *(v131 + 2) = v135 - 1;
        v36 = v169;
        if (v135 <= 2)
        {
          goto LABEL_108;
        }
      }

      v106 = &v96[16 * a3];
      v107 = *(v106 - 8);
      v108 = *(v106 - 7);
      v112 = __OFSUB__(v108, v107);
      v109 = v108 - v107;
      if (v112)
      {
        goto LABEL_126;
      }

      v111 = *(v106 - 6);
      v110 = *(v106 - 5);
      v112 = __OFSUB__(v110, v111);
      v104 = v110 - v111;
      v105 = v112;
      if (v112)
      {
        goto LABEL_127;
      }

      v113 = *(v101 + 1);
      v114 = v113 - *v101;
      if (__OFSUB__(v113, *v101))
      {
        goto LABEL_129;
      }

      v112 = __OFADD__(v104, v114);
      v115 = v104 + v114;
      if (v112)
      {
        goto LABEL_132;
      }

      if (v115 >= v109)
      {
        v129 = *v100;
        v128 = *(v100 + 1);
        v112 = __OFSUB__(v128, v129);
        v130 = v128 - v129;
        if (v112)
        {
          goto LABEL_140;
        }

        if (v104 < v130)
        {
          v99 = a3 - 2;
        }

        goto LABEL_101;
      }

      goto LABEL_79;
    }

    break;
  }

  v151 = v37;
  v76 = *v168;
  v77 = *(v167 + 72);
  v78 = *v168 + v77 * (v38 - 1);
  v171 = -v77;
  v172 = v76;
  v79 = v156 - v38;
  v157 = v77;
  a3 = v76 + v38 * v77;
  v158 = v74;
LABEL_45:
  v169 = v38;
  v161 = a3;
  v163 = v79;
  v80 = v79;
  v166 = v78;
  while (1)
  {
    v176 = a3;
    v177 = v80;
    v81 = v181;
    sub_22BB3CD70(a3, v181, &qword_27D8E4008, &unk_22BDC1810);
    sub_22BB3CD70(v78, v16, &qword_27D8E4008, &unk_22BDC1810);
    v82 = v175;
    sub_22BB3CD70(v81, v175, &qword_27D8E4008, &unk_22BDC1810);
    v83 = *v82;
    v84 = v182;
    LODWORD(v180) = *(v82 + 8);
    v85 = *(v182 + 48);
    v178 = v83;
    v179 = v85;
    v86 = sub_22BDB9CB4();
    v87 = v16;
    v88 = *(*(v86 - 8) + 8);
    v88(v82 + v179, v86);
    if (v180)
    {
      goto LABEL_54;
    }

    v89 = v174;
    sub_22BB3CD70(v87, v174, &qword_27D8E4008, &unk_22BDC1810);
    v90 = *(v84 + 48);
    if (*(v89 + 8))
    {
      v88(v89 + v90, v86);
LABEL_54:
      sub_22BB58728(v87, &qword_27D8E4008, &unk_22BDC1810);
      sub_22BB58728(v181, &qword_27D8E4008, &unk_22BDC1810);
      v16 = v87;
LABEL_55:
      v38 = v169 + 1;
      v78 = v166 + v157;
      v79 = v163 - 1;
      a3 = v161 + v157;
      if (v169 + 1 == v158)
      {
        v38 = v158;
        v37 = v151;
        goto LABEL_57;
      }

      goto LABEL_45;
    }

    v91 = *v89;
    v88(v89 + v90, v86);
    sub_22BB58728(v87, &qword_27D8E4008, &unk_22BDC1810);
    sub_22BB58728(v181, &qword_27D8E4008, &unk_22BDC1810);
    v16 = v87;
    if (v178 >= v91)
    {
      goto LABEL_55;
    }

    v92 = v177;
    if (!v172)
    {
      break;
    }

    v93 = v176;
    v94 = v173;
    sub_22BB6BEE0(v176, v173, &qword_27D8E4008, &unk_22BDC1810);
    swift_arrayInitWithTakeFrontToBack();
    sub_22BB6BEE0(v94, v78, &qword_27D8E4008, &unk_22BDC1810);
    v78 += v171;
    a3 = v93 + v171;
    v71 = __CFADD__(v92, 1);
    v80 = v92 + 1;
    if (v71)
    {
      goto LABEL_55;
    }
  }

  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
}