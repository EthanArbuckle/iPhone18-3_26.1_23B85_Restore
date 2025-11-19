uint64_t TranscriptProtoPlan.init(handwritten:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v25 = *a1;
  v5 = a1[3];
  v23 = a1[2];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = *(a1 + 56);

  sub_22C1BFAF0(v10, v11, v12, v13, v14, v15, v16, v17, v22, v23);
  if (v2)
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v20 = v18;
    *(a2 + 56) = 6;
    v21 = *(type metadata accessor for TranscriptProtoPlan(0) + 36);

    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();

    *a2 = v25;
    *(a2 + 8) = v4;
    *(a2 + 16) = v24;
    *(a2 + 24) = v5;
    *(a2 + 32) = v20;
    *(a2 + 40) = v7;
    *(a2 + 48) = v8;
    *(a2 + 56) = v9 + 1;
  }

  return result;
}

void TranscriptProtoRecoverableError.init(handwritten:)()
{
  sub_22BE19130();
  v7 = sub_22BE1B254();
  v8 = type metadata accessor for Session.PlanGenerationError(v7);
  v9 = sub_22BE19448(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BE1958C();
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE374E4();
  v14 = type metadata accessor for Session.RecoverableError(v13);
  v15 = sub_22BE19448(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BE28FD8();
  v18 = type metadata accessor for TranscriptProtoRecoverableErrorEnum(0);
  v19 = sub_22BE18000(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22BE17D10();
  MEMORY[0x28223BE20](v22);
  sub_22BE2EDB8();
  v23 = sub_22BE431F0();
  sub_22BE1AA68(v23, v6);
  v24 = sub_22C259FB8();
  sub_22BE3B620(v24, v2);
  v25 = sub_22BE29370();
  sub_22BE1AA68(v25, v4);
  TranscriptProtoPlanGenerationError.init(handwritten:)();
  if (v1)
  {
    sub_22C259B00();
    sub_22BE1AE58();
    sub_22C259A50();
    sub_22BE1AE58();
  }

  else
  {
    sub_22C259A50();
    sub_22BE1AE58();
    sub_22BE3B620(v5, v3);
    v26 = sub_22BE38960();
    v29 = sub_22C18F17C(v26, v27, v28, v18);
    v30 = type metadata accessor for TranscriptProtoRecoverableError(v29);
    sub_22BE48874(v30);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22C259B00();
    sub_22BE1AE58();
    sub_22BE233E8(v0, &qword_27D90EA08, &qword_22C297000);
    v31 = sub_22BE39EAC();
    sub_22BE3B620(v31, v32);
    v33 = sub_22BE2500C();
    sub_22BE19DC4(v33, v34, v35, v18);
  }

  sub_22BE467E4();
  sub_22BE18478();
}

void TranscriptProtoAction.init(handwritten:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v22;
  a20 = v23;
  sub_22C25A50C();
  v296 = v24;
  v26 = sub_22C25A344(v25);
  v322 = type metadata accessor for TranscriptProtoPromptSelection(v26);
  v27 = sub_22BE18000(v322);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22BE17A44();
  sub_22BE18950(v30);
  v321 = sub_22C26F7C4();
  v31 = sub_22BE17A18(v321);
  v319 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v35);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v36);
  sub_22BE19E94();
  sub_22BE190A8(v37);
  v38 = sub_22BE5CE4C(&qword_27D909088, &unk_22C27FCA0);
  v39 = sub_22BE19448(v38);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  sub_22BE17B98();
  sub_22BE181F4();
  v43 = MEMORY[0x28223BE20](v42);
  sub_22BE3173C(v43, v44, v45, v46, v47, v48, v49, v50, v277);
  v51 = sub_22BE5CE4C(&qword_27D90E688, &qword_22C296F40);
  sub_22BE19448(v51);
  v53 = *(v52 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v54);
  sub_22BE1A174();
  sub_22BE18950(v55);
  v56 = sub_22C272594();
  v57 = sub_22BE18910(v56, &a12);
  v318 = v58;
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v57);
  sub_22BE17A44();
  v311 = v61;
  sub_22BE183BC();
  v312 = sub_22C272874();
  v62 = sub_22BE179D8(v312);
  v317 = v63;
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v62);
  sub_22BE17B98();
  sub_22BE43220();
  MEMORY[0x28223BE20](v66);
  v67 = sub_22BE39EE8();
  v68 = type metadata accessor for TranscriptProtoToolParameterValueEnum(v67);
  v69 = sub_22BE290A0(v68, &a10);
  v71 = *(v70 + 64);
  MEMORY[0x28223BE20](v69);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v72);
  sub_22BE19E94();
  v74 = sub_22BE18950(v73);
  v75 = type metadata accessor for ToolParameterValue(v74);
  v76 = sub_22BE19448(v75);
  v78 = *(v77 + 64);
  MEMORY[0x28223BE20](v76);
  sub_22BE17B98();
  v310 = v79;
  sub_22BE1B99C();
  v81 = MEMORY[0x28223BE20](v80);
  sub_22C259824(v81, v82, v83, v84, v85, v86, v87, v88, v278);
  v89 = sub_22BE5CE4C(&qword_27D90E698, &unk_22C2AE520);
  sub_22BE19448(v89);
  v91 = *(v90 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v92);
  sub_22BE1A174();
  v94 = sub_22BE18950(v93);
  v308 = type metadata accessor for TranscriptProtoActionParameterValue(v94);
  v95 = sub_22BE179D8(v308);
  v97 = *(v96 + 64);
  MEMORY[0x28223BE20](v95);
  sub_22BE29178(v98, v279);
  MEMORY[0x28223BE20](v99);
  sub_22BE19E94();
  v101 = sub_22BE18950(v100);
  v102 = type metadata accessor for Action.ParameterValue(v101);
  v103 = sub_22BE18910(v102, &v321);
  v307 = v104;
  v106 = *(v105 + 64);
  MEMORY[0x28223BE20](v103);
  sub_22BE17B98();
  sub_22BE2BCB4();
  v108 = MEMORY[0x28223BE20](v107);
  sub_22BE355FC(v108, v109, v110, v111, v112, v113, v114, v115, v280);
  v116 = sub_22BE5CE4C(&qword_27D90E670, &unk_22C2CC890);
  sub_22BE19448(v116);
  v118 = *(v117 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v119);
  sub_22BE1A174();
  sub_22BE18950(v120);
  v121 = sub_22C26E684();
  v122 = sub_22BE179D8(v121);
  v124 = v123;
  v126 = *(v125 + 64);
  MEMORY[0x28223BE20](v122);
  sub_22BE2379C();
  v127 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v127);
  v129 = *(v128 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v130);
  sub_22BE2C64C();
  sub_22C259D90();
  sub_22C25A1E8();
  v131();
  v132 = sub_22C26E674();
  v133 = sub_22C26E654();
  v134 = sub_22C25A628();
  v135 = type metadata accessor for TranscriptProtoStatementID(v134);
  v136 = v21 + *(v135 + 24);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v137 = *(v124 + 8);
  v138 = sub_22BE18944();
  v139(v138);
  *v21 = v132;
  *(v21 + 8) = v133;
  *(v21 + 16) = v20;
  v290 = v21;
  v140 = v324;
  sub_22BE187DC();
  v285 = v135;
  v144 = sub_22C18F17C(v141, v142, v143, v135);
  v145 = type metadata accessor for Action(v144);
  v146 = (v296 + v145[5]);
  v147 = v146[1];
  v284 = *v146;
  v283 = *(v296 + v145[6]);
  v282 = v145;
  v148 = *(v296 + v145[7]);
  sub_22BE5CE4C(&qword_27D915300, &qword_22C2CC8C0);
  v149 = sub_22C273D04();
  v150 = *(v148 + 64);
  v306 = v148;
  v151 = 1 << *(v148 + 32);
  sub_22BE18010();
  v154 = v153 & v152;
  sub_22C25A350();
  v291 = v155;
  sub_22C25AC64(v317 + 32);
  v304 = v156;
  v305 = (v157 + 8);
  sub_22C25AC64(v319 + 32);
  v293 = v158;
  v297 = *MEMORY[0x277D1CAF0];
  v288 = *MEMORY[0x277D1CB00];
  v281 = *MEMORY[0x277D1CAF8];
  v292 = (v159 + 8);
  sub_22C25A4F4(v160 + 64);
  v289 = v147;

  v161 = 0;
  v313 = v149;
  if (v154)
  {
    while (1)
    {
      v162 = __clz(__rbit64(v154));
      v163 = (v154 - 1) & v154;
LABEL_8:
      v169 = v162 | (v161 << 6);
      v170 = *(v306 + 56);
      v171 = (*(v306 + 48) + 16 * v169);
      v172 = v171[1];
      v317 = *v171;
      v318 = v169;
      sub_22BE1AA68(v170 + *(v307 + 72) * v169, v323);
      v173 = sub_22BE41FB4();
      sub_22BE1AA68(v173, v174);
      v175 = type metadata accessor for TranscriptProtoToolParameterValue(0);
      sub_22C259BD0();
      sub_22BE19DC4(v176, v177, v178, v179);
      v180 = v308;
      v316 = *(v308 + 20);
      sub_22BE1A140();
      sub_22BE19DC4(v181, v182, v183, v322);
      v184 = *(v180 + 24);
      v319 = v172;

      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE1AA68(v140, v309);
      sub_22BE354D0();
      sub_22BE1AA68(v185, v186);
      sub_22BE33554(&a18);
      v187 = sub_22BE39EAC();
      v188(v187);
      sub_22BE33554(&a17);
      v189 = sub_22BE1B73C();
      v190(v189);
      v191 = a10;
      sub_22C272854();
      a10 = v191;
      if (v191)
      {
        break;
      }

      v315 = v163;
      v192 = *v305;
      v193 = sub_22BE261AC();
      v192(v193);
      v194 = sub_22BE27BA4();
      v192(v194);
      sub_22BE33554(&v320);
      v195 = sub_22BE260B8();
      v196(v195);
      sub_22BE37AE4();
      sub_22BE3B620(v301, v300);
      v197 = sub_22C259C20();
      sub_22BE19DC4(v197, v198, v199, v302);
      v200 = v299 + *(v175 + 20);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22C259500();
      sub_22BE1AE58();
      sub_22BE233E8(v299, &qword_27D90F038, &qword_22C297100);
      v201 = sub_22BE2590C();
      sub_22BE3B620(v201, v202);
      v203 = sub_22C259724();
      sub_22BE19DC4(v203, v204, v205, v206);
      v207 = sub_22BE3C530();
      sub_22BE19DC4(v207, v208, v209, v175);
      v210 = v320;
      sub_22BE2343C();
      sub_22BE2ED7C(&v321);
      sub_22BE22814();
      sub_22BE22944(&a14);
      sub_22BE22814();
      v211 = sub_22BE1B010();
      sub_22BE1AB5C(v211, v212, v321);
      if (v229)
      {
        v213 = sub_22BE2590C();
        sub_22BE233E8(v213, v214, &unk_22C27FCA0);
        v215 = sub_22BE336E8();
        sub_22BE233E8(v215, v216, &unk_22C27FCA0);
        v217 = v322;
      }

      else
      {
        sub_22BE33554(&v314);
        v218 = sub_22BE3C5E4();
        v219(v218);
        v220 = *v293;
        v221 = sub_22BE25C08();
        v220(v221);
        v222 = sub_22BE194F8();
        v220(v222);
        sub_22BE33554(&v312);
        v223 = sub_22BE1AB74();
        if (v224(v223) == v297)
        {
          sub_22BE33554(&v307);
          v226 = v321;
          v227(v294, v321);
          v225 = *v294;
          v228 = v226;
        }

        else
        {
          sub_22C25A700(&v306 + 4);
          if (v229)
          {
            v225 = 0;
          }

          else
          {
            sub_22C25A700(v303);
            if (!v229)
            {
              goto LABEL_33;
            }

            v225 = 1;
          }

          v228 = v321;
        }

        sub_22C25A700(&v319 + 4);
        if (v229)
        {
          v230 = 0;
        }

        else
        {
          v230 = 1;
        }

        *v295 = 0;
        *(v295 + 8) = 256;
        v217 = v322;
        v231 = v295 + *(v322 + 20);
        _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
        v232 = *v292;
        v233 = sub_22BE406B8();
        v232(v233, v228);
        *v295 = v225;
        *(v295 + 8) = v230;
        *(v295 + 9) = 0;
        sub_22C259680();
        sub_22C108C10(&a13);
        sub_22BE3B620(v234, v235);
        sub_22BE233E8(v314, &qword_27D909088, &unk_22C27FCA0);
        v232(*&v303[12], v228);
        v210 = v320;
      }

      v236 = sub_22BE40694();
      sub_22BE19DC4(v236, v237, v238, v217);
      v140 = v324;
      sub_22BE1AE58();
      sub_22BE2343C();
      sub_22BE3B620(v210, v298);
      sub_22C25A870();
      sub_22BE1AE58();
      sub_22C259DA0();
      sub_22C25977C(v239);
      v240 = v313;
      sub_22C25A8D0((*(v313 + 48) + 16 * v241));
      sub_22C25AC90();
      sub_22BE3B620(v298, v242 + v243 * v244);
      sub_22C25A500();
      if (v246)
      {
        goto LABEL_32;
      }

      *(v240 + 16) = v245;
      v154 = v315;
      if (!v315)
      {
        goto LABEL_3;
      }
    }

    sub_22C259500();
    sub_22BE1AE58();
    v274 = *v305;
    v275 = sub_22BE261AC();
    v274(v275);
    v276 = sub_22BE27BA4();
    v274(v276);
    sub_22BE1AE58();
    sub_22BE31278();
    sub_22BE1AE58();

    sub_22BE1AE58();

    sub_22BE360B0();
    sub_22BE1AE58();
    sub_22BE233E8(v290, &qword_27D9090F8, &unk_22C2AE4A0);
LABEL_29:
    sub_22BE3C298();
    sub_22BE18478();
  }

  else
  {
LABEL_3:
    v164 = v161;
    v165 = v291;
    while (1)
    {
      v161 = v164 + 1;
      if (__OFADD__(v164, 1))
      {
        break;
      }

      if (v161 >= v165)
      {
        v247 = v282[9];
        v248 = (v296 + v282[8]);
        v249 = *v248;
        v323 = v248[1];
        v324 = v249;
        v251 = *(v296 + v247);
        v250 = *(v296 + v247 + 8);
        v253 = *(v296 + v247 + 16);
        v252 = *(v296 + v247 + 24);
        v254 = *(v296 + v247 + 32);
        v255 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
        v256 = *(v255 + 28);

        _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
        *v286 = v251;
        *(v286 + 8) = v250;
        *(v286 + 24) = v253;
        *(v286 + 32) = v252;
        *(v286 + 16) = v254;
        v257 = sub_22BE2500C();
        v260 = sub_22C18F17C(v257, v258, v259, v255);
        v261 = type metadata accessor for TranscriptProtoAction(v260);
        sub_22BE46004(v261);
        sub_22BE1A140();
        sub_22BE19DC4(v262, v263, v264, v285);
        v265 = (v287 + v250[7]);
        v266 = (v287 + v250[8]);
        v267 = v250[9];
        sub_22BE3AE2C();
        sub_22BE19DC4(v268, v269, v270, v271);
        v272 = v287 + v250[10];
        _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
        sub_22BE360B0();
        sub_22BE1AE58();
        sub_22BE2343C();
        *v265 = v284;
        v265[1] = v289;
        *v287 = v283;
        *(v287 + 8) = v313;
        v273 = v323;
        *v266 = v324;
        v266[1] = v273;
        sub_22BE2343C();
        goto LABEL_29;
      }

      sub_22C25AC58();
      if (v166)
      {
        sub_22BE29270();
        v163 = v168 & v167;
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    sub_22C274004();
    __break(1u);
  }
}

void TranscriptProtoClientAction.init(handwritten:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v24;
  a20 = v25;
  sub_22BE3129C();
  v27 = sub_22C25A344(v26);
  v28 = type metadata accessor for TranscriptProtoShimParameters(v27);
  v29 = sub_22BE179D8(v28);
  v170 = v30;
  v171 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22BE17A44();
  v169 = v33;
  sub_22BE183BC();
  v186 = sub_22C272594();
  v34 = sub_22BE179D8(v186);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22BE18928();
  v40 = MEMORY[0x28223BE20](v39);
  sub_22BE4202C(v40, v41, v42, v43, v44, v45, v46, v47, v160);
  v48 = sub_22C272874();
  v49 = sub_22BE1A3D8(v48);
  v51 = v50;
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v49);
  sub_22BE1958C();
  MEMORY[0x28223BE20](v54);
  sub_22C2595B4();
  v55 = sub_22C26E684();
  v56 = sub_22BE18910(v55, &a16);
  v164 = v57;
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v56);
  sub_22BE17A44();
  sub_22C259DB4(v60);
  v61 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v61);
  v63 = *(v62 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v64);
  sub_22BE1A174();
  v66 = sub_22BE18950(v65);
  v163 = type metadata accessor for ClientAction(v66);
  v67 = (v20 + v163[5]);
  v68 = v67[1];
  v161 = *v67;
  v168 = v20;
  v69 = *(v20 + v163[6]);
  sub_22BE5CE4C(&qword_27D9155F0, &qword_22C2CC8C8);
  sub_22BE3D3E0();
  v173 = v51;
  v175 = sub_22C273D04();
  sub_22C25A43C();
  v167 = v70;
  v71 = *(v69 + 32);
  sub_22BE185B4();
  v74 = v73 & v72;
  sub_22C25A350();
  v166 = v75;
  v172 = (v51 + 8);
  v185 = v36;

  v76 = 0;
  if (v74)
  {
    do
    {
      sub_22C25ABE4();
      v179 = v74;
LABEL_8:
      v80 = v77 | (v76 << 6);
      v81 = (*(v69 + 48) + 16 * v80);
      v82 = v81[1];
      v181 = *v81;
      v83 = *(v173 + 16);
      v83(v23, *(v69 + 56) + *(v173 + 72) * v80, v21);
      v84 = sub_22BE289D8();
      (v83)(v84);

      sub_22C272854();
      if (a10)
      {
        v154 = *v172;
        v155 = sub_22BE38FD8();
        v154(v155);

        v156 = sub_22BF6AC14();
        v154(v156);
        sub_22C25A640();

        sub_22BE287FC();
        sub_22BE1AE58();
        goto LABEL_24;
      }

      v85 = *v172;
      v86 = sub_22BE38FD8();
      v85(v86);
      v176 = *(v185 + 32);
      v176(v184, v22, v186);
      (v85)(v23, v21);
      sub_22C259F84();
      sub_22C25977C(v87);
      sub_22C25A8D0((*(v175 + 48) + 16 * v80));
      v176(v88 + *(v185 + 72) * v80, v184, v186);
      sub_22C25A500();
      if (v90)
      {
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        return;
      }

      *(v175 + 16) = v89;
      v74 = v179;
    }

    while (v179);
  }

  v78 = v76;
  while (1)
  {
    v76 = v78 + 1;
    if (__OFADD__(v78, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (v76 >= v166)
    {
      break;
    }

    ++v78;
    if (*(v167 + 8 * v76))
    {
      sub_22BE4878C();
      v179 = v79;
      goto LABEL_8;
    }
  }

  v91 = (v168 + v163[7]);
  v92 = *v91;
  v93 = v91[1];
  v94 = (v168 + v163[8]);
  v95 = v94[1];
  v177 = v92;
  v178 = *v94;
  sub_22C1CF23C();
  v96 = sub_22BE3C968();
  v97(v96);
  v182 = v95;

  v180 = v93;

  v187 = sub_22C26E674();
  v98 = sub_22C26E654();
  v99 = sub_22C25A4A0();
  v100 = type metadata accessor for TranscriptProtoStatementID(v99);
  v101 = v165 + *(v100 + 24);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v102 = *(v164 + 8);
  v103 = sub_22BE1824C();
  v104(v103);
  *v165 = v187;
  *(v165 + 8) = v98;
  *(v165 + 16) = v22;
  v105 = sub_22BE3C530();
  v174 = v100;
  sub_22BE19DC4(v105, v106, v107, v100);
  v108 = *(v168 + v163[9]);
  sub_22BE5CE4C(&qword_27D9155F8, &unk_22C2CC8D0);
  sub_22BE3D3E0();
  sub_22C273D04();
  v109 = 0;
  sub_22C25A43C();
  v183 = v110;
  v188 = v111;
  v112 = 1 << *(v108 + 32);
  sub_22BE18010();
  v115 = v114 & v113;
  v117 = (v116 + 63) >> 6;
  if ((v114 & v113) == 0)
  {
LABEL_14:
    v119 = v109;
    while (1)
    {
      v109 = v119 + 1;
      if (__OFADD__(v119, 1))
      {
        goto LABEL_28;
      }

      if (v109 >= v117)
      {
        v144 = type metadata accessor for TranscriptProtoClientAction(0);
        v145 = *(v144 + 36);
        sub_22BE1A140();
        sub_22BE19DC4(v146, v147, v148, v174);
        v149 = v162 + *(v144 + 40);
        _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
        sub_22BE287FC();
        sub_22BE1AE58();
        sub_22C1CF148();
        *v162 = v151;
        *(v162 + 8) = v150;
        *&v152 = v177;
        *&v153 = v178;
        *(&v152 + 1) = v180;
        *(v162 + 16) = v175;
        *(&v153 + 1) = v182;
        *(v162 + 32) = v152;
        *(v162 + 48) = v153;
        sub_22C1CEFC8();
        sub_22BE2343C();
        *(v162 + 24) = v188;
        goto LABEL_24;
      }

      ++v119;
      if (*(v183 + 8 * v109))
      {
        sub_22BE29270();
        v115 = v121 & v120;
        goto LABEL_19;
      }
    }
  }

  while (1)
  {
    sub_22BE37764();
LABEL_19:
    v122 = v118 | (v109 << 6);
    v123 = (*(v108 + 48) + 16 * v122);
    v124 = *v123;
    v125 = v123[1];
    v126 = *(*(v108 + 56) + 8 * v122);
    swift_bridgeObjectRetain_n();

    sub_22C1C4458(v126, v127, v128, v129, v130, v131, v132, v133, v161, v162);
    if (a10)
    {
      break;
    }

    v135 = v134;
    v136 = v169 + *(v171 + 20);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();

    *v169 = v135;
    sub_22BE270BC();
    sub_22C25977C(v137);
    v138 = (v188[6] + 16 * v122);
    *v138 = v124;
    v138[1] = v125;
    v139 = v188[7];
    v140 = *(v170 + 72);
    v141 = sub_22BE19EBC();
    sub_22BE3B620(v141, v142);
    sub_22C25AB9C();
    if (v90)
    {
      goto LABEL_30;
    }

    v188[2] = v143;
    if (!v115)
    {
      goto LABEL_14;
    }
  }

  sub_22C25A640();

  sub_22BE287FC();
  sub_22BE1AE58();
  v157 = sub_22C1CEFC8();
  sub_22BE233E8(v157, v158, v159);
LABEL_24:
  sub_22BE3C298();
  sub_22BE18478();
}

void TranscriptProtoSessionError.init(handwritten:)()
{
  sub_22BE19460();
  sub_22C25A8F4(v5);
  v6 = sub_22C26E5D4();
  v7 = sub_22BE179D8(v6);
  v74 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE28A70(v11, v71);
  v13 = MEMORY[0x28223BE20](v12);
  sub_22C10887C(v13, v14, v15, v16, v17, v18, v19, v20, v72);
  v21 = type metadata accessor for ExecutorError();
  v22 = sub_22BE19448(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22BE17B98();
  sub_22BE3CFC4();
  MEMORY[0x28223BE20](v25);
  sub_22C2595B4();
  v26 = type metadata accessor for PlannerError();
  v27 = sub_22BE19448(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22BE25544();
  MEMORY[0x28223BE20](v30);
  sub_22BE2558C();
  v31 = type metadata accessor for SessionCoordinatorError();
  v32 = sub_22BE19448(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22BE192E0();
  MEMORY[0x28223BE20](v35);
  sub_22BE39EE8();
  v36 = type metadata accessor for SessionError();
  v37 = sub_22BE18000(v36);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  v40 = sub_22BE1AD20();
  v41 = type metadata accessor for TranscriptProtoSessionErrorEnum(v40);
  v42 = sub_22BE18000(v41);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  sub_22BE18DFC();
  v45 = sub_22BE1A6BC();
  sub_22BE1AA68(v45, v46);
  sub_22BE2BA80();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v59 = sub_22BE44744();
      sub_22BE3B620(v59, v3);
      v60 = sub_22C1088AC();
      sub_22BE1AA68(v60, v2);
      sub_22C25A08C();
      TranscriptProtoSessionCoordinatorError.init(handwritten:)();
      goto LABEL_6;
    case 2u:
      v55 = sub_22BE44744();
      sub_22BE3B620(v55, v1);
      v56 = sub_22BE385E4();
      sub_22BE1AA68(v56, v0);
      sub_22BE362B8();
      TranscriptProtoPlannerError.init(handwritten:)();
      sub_22BE379D8();
      goto LABEL_6;
    case 3u:
      v57 = sub_22BE44744();
      sub_22BE3B620(v57, v4);
      v58 = sub_22C259E7C();
      sub_22BE1AA68(v58, v73);
      TranscriptProtoExecutorError.init(handwritten:)();
      sub_22BE20118();
LABEL_6:
      sub_22BE1AE58();
      break;
    default:
      v47 = *(v74 + 32);
      v48 = sub_22BE3EA80();
      v49(v48);
      sub_22BE3C6EC();
      v50 = sub_22BE194F8();
      v51(v50);
      TranscriptProtoIntelligenceFlowError.init(handwritten:)();
      v52 = *(v74 + 8);
      v53 = sub_22BE291B0();
      v54(v53);
      break;
  }

  sub_22BE232C8();
  swift_storeEnumTagMultiPayload();
  v61 = sub_22BE38960();
  v64 = sub_22C18F17C(v61, v62, v63, v41);
  v65 = type metadata accessor for TranscriptProtoSessionError(v64);
  sub_22BE48874(v65);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE1AE58();
  sub_22BE233E8(v75, &qword_27D90E7E8, &qword_22C2AE580);
  v66 = sub_22C259E5C();
  sub_22BE3B620(v66, v67);
  v68 = sub_22BE2500C();
  sub_22BE19DC4(v68, v69, v70, v41);
  sub_22BE1AABC();
}

void TranscriptProtoQueryStepResults.init(handwritten:)()
{
  sub_22BE19130();
  sub_22C25AA20();
  v6 = v5;
  v7 = sub_22C26E684();
  v8 = sub_22C2594A0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE2379C();
  v13 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v13);
  v15 = *(v14 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  sub_22BE1B01C();
  v17 = *v1;

  v19 = sub_22C1EEB74(v18);
  if (v2)
  {
    sub_22BE47E28();
    sub_22BE1AE58();
  }

  else
  {
    v44 = v19;

    StepResults = type metadata accessor for QueryStepResults(0);
    sub_22C25ADA0(StepResults);
    v20(v0);
    v42 = sub_22C26E674();
    v21 = v6;
    v22 = sub_22C26E654();
    v41 = v23;
    v24 = type metadata accessor for TranscriptProtoStatementID(0);
    sub_22C25A4E8(v24);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v25 = *(v10 + 8);
    v26 = sub_22BE1B73C();
    v27(v26);
    *v3 = v42;
    *(v3 + 8) = v22;
    *(v3 + 16) = v41;
    v28 = sub_22BE22B8C();
    sub_22BE19DC4(v28, v29, v30, v24);
    v31 = v1 + *(StepResults + 24);
    v32 = sub_22C26E184();
    v33 = sub_22C25A4A0();
    v34 = type metadata accessor for TranscriptProtoQueryStepResults(v33);
    v35 = *(v34 + 24);
    sub_22C259860();
    sub_22BE19DC4(v36, v37, v38, v39);
    v40 = v21 + *(v34 + 28);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE47E28();
    sub_22BE1AE58();
    *v21 = v44;
    sub_22BE2343C();
    v21[1] = v32;
    v21[2] = v4;
  }

  sub_22BE35D48();
  sub_22BE18478();
}

void TranscriptProtoActionResolverRequest.init(handwritten:)()
{
  sub_22BE19130();
  sub_22C25A430();
  v90 = v5;
  v6 = sub_22BE5CE4C(&qword_27D90E670, &unk_22C2CC890);
  sub_22BE19448(v6);
  v8 = *(v7 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE46DE8();
  v10 = sub_22C26E684();
  v11 = sub_22BE179D8(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BE2379C();
  v16 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v16);
  v18 = *(v17 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  sub_22BE234F4();
  v20 = sub_22BE5CE4C(&qword_27D90ECF8, &qword_22C2970B0);
  sub_22BE19448(v20);
  v22 = *(v21 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v23);
  v24 = sub_22BE25334();
  v25 = type metadata accessor for ActionResolverRequest(v24);
  sub_22C25A694(v25);
  v27 = *(v2 + v26);

  sub_22C25ACCC();
  TranscriptProtoParameterSet.init(handwritten:)(v28, v29, v30, v31, v32, v33, v34, v35, v78, v80);
  if (v1)
  {
    sub_22BE2943C();
    sub_22BE1AE58();
  }

  else
  {
    v89 = v0;
    v36 = type metadata accessor for TranscriptProtoParameterSet(0);
    sub_22BE25FFC();
    sub_22BE19DC4(v37, v38, v39, v40);
    sub_22C1EE678(*(v2 + v4[6]));
    v88 = *(v2 + v4[8]);
    v84 = v36;
    v41 = v13;
    sub_22BE29400();
    v87 = v42;
    v43 = sub_22BE1A8C4();
    v44(v43);
    v86 = sub_22C26E674();
    v45 = sub_22C26E654();
    v79 = v46;
    v81 = v45;
    v47 = type metadata accessor for TranscriptProtoStatementID(0);
    v48 = *(v47 + 24);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v49 = *(v41 + 8);
    v50 = sub_22BE3E8FC();
    v51(v50);
    *v3 = v86;
    *(v3 + 8) = v81;
    *(v3 + 16) = v79;
    v52 = sub_22C25974C();
    sub_22BE19DC4(v52, v53, v54, v47);
    v55 = v4[10];
    LOBYTE(v86) = *(v2 + v4[9]);
    v56 = *(v2 + v55);
    v57 = *(v2 + v55 + 8);
    v58 = *(v2 + v55 + 24);
    v82 = *(v2 + v55 + 16);
    LOBYTE(v79) = *(v2 + v55 + 32);
    v59 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
    v60 = *(v59 + 28);

    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    *v89 = v56;
    *(v89 + 8) = v57;
    *(v89 + 24) = v82;
    *(v89 + 32) = v58;
    *(v89 + 16) = v79;
    v61 = sub_22BE3C530();
    v64 = sub_22C18F17C(v61, v62, v63, v59);
    v65 = type metadata accessor for TranscriptProtoActionResolverRequest(v64);
    v66 = v65[7];
    sub_22BE1A140();
    sub_22BE19DC4(v67, v68, v69, v84);
    v83 = v65[8];
    sub_22BE1A140();
    sub_22BE19DC4(v70, v71, v72, v47);
    v85 = v65[9];
    sub_22C259860();
    sub_22BE19DC4(v73, v74, v75, v76);
    v77 = v90 + v65[10];
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE2943C();
    sub_22BE1AE58();
    sub_22BE2343C();
    *v90 = v87;
    *(v90 + 8) = v88;
    sub_22BE2343C();
    *(v90 + 9) = v86;
    sub_22BE2343C();
  }

  sub_22BE467E4();
  sub_22BE18478();
}

void TranscriptProtoToolRetrievalResponse.init(handwritten:)(uint64_t *a1)
{
  sub_22BE25DC4();
  v5 = sub_22C271784();
  v6 = sub_22BE19448(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE17A44();
  v9 = sub_22BE5CE4C(&qword_27D909060, &qword_22C27FC88);
  v10 = sub_22BE18000(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BE29178(v13, v73);
  MEMORY[0x28223BE20](v14);
  sub_22C259B68();
  MEMORY[0x28223BE20](v15);
  sub_22BE28C8C();
  MEMORY[0x28223BE20](v16);
  sub_22C259BC0();
  v17 = type metadata accessor for ContextProtoToolRetrievalType(0);
  v18 = sub_22BE17A18(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BE197B8();
  v21 = a1[1];
  v79 = *a1;
  v22 = a1[3];
  sub_22BE417A8(a1[2]);
  v23 = *(a1 + 8);
  v24 = a1[6];
  v25 = a1[5];

  sub_22C1BF26C(v26, v27, v28, v29, v30, v31, v32, v33, v74, v75);
  if (v92)
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v84 = v1;
    v93 = v2;
    v34 = *(v24 + 16);
    v35 = MEMORY[0x277D84F90];
    if (v34)
    {
      v82 = v9;
      v76 = v22;
      v77 = v21;
      v94 = MEMORY[0x277D84F90];
      sub_22C25A930();
      sub_22BE70D4C(v36, v37, v38);
      v35 = v94;
      v39 = sub_22BE308D0(v24);
      v83 = v24 + 64;
      v80 = v24;
      v81 = v25;
      while ((v39 & 0x8000000000000000) == 0)
      {
        v40 = *(v24 + 32);
        sub_22C25A46C();
        if (v39 >= v43)
        {
          break;
        }

        if (((*(v83 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
        {
          goto LABEL_15;
        }

        if (*(v24 + 36) != v41)
        {
          goto LABEL_16;
        }

        v86 = v42;
        v87 = v41;
        v88 = v34;
        v89 = *(v82 + 48);
        v44 = *(v24 + 48);
        v45 = sub_22C272984();
        sub_22BE179D8(v45);
        v91 = v46;
        (*(v47 + 16))(v84, v44 + *(v47 + 72) * v39, v45);
        v48 = *(v24 + 56);
        v49 = sub_22C2728E4();
        sub_22C259488(v49);
        v51 = v50;
        v53 = *(v52 + 72);
        sub_22BE3C6EC();
        v54(v84 + v89);
        (*(v91 + 32))(v93, v84, v45);
        (*(v51 + 32))(v93 + *(v82 + 48), v84 + v89, v25);
        sub_22BE22814();
        v90 = *(v82 + 48);
        sub_22BE22814();
        v55 = *(v82 + 48);
        sub_22C271774();
        sub_22BE190E4();
        v56 = sub_22BE1AEE4();
        v57(v56);
        (*(v51 + 8))(v85 + v90, v25);
        ContextProtoToolRetrievalType.init(handwritten:)();
        v58 = sub_22BE25C94();
        sub_22BE233E8(v58, v59, &qword_22C27FC88);
        v61 = *(v94 + 16);
        v60 = *(v94 + 24);
        if (v61 >= v60 >> 1)
        {
          sub_22BE1AAE4(v60);
          sub_22BE39E18();
          sub_22BE70D4C(v68, v69, v70);
        }

        *(v94 + 16) = v61 + 1;
        sub_22BE25AD8();
        sub_22BE46DDC(v94 + v62);
        v63 = sub_22BE44744();
        sub_22BE3B620(v63, v64);
        v24 = v80;
        v65 = sub_22C18DDA4(v39, v87, v86 & 1, v80);
        v39 = v65;
        --v34;
        v25 = v81;
        if (v88 == 1)
        {
          sub_22BE2FC64(v65, v66, v67 & 1);
          v21 = v77;
          v22 = v76;
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
    }

    else
    {
LABEL_13:
      v71 = v3 + *(type metadata accessor for TranscriptProtoToolRetrievalResponse(0) + 36);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();

      *v3 = v79;
      *(v3 + 8) = v21;
      *(v3 + 16) = v78;
      *(v3 + 24) = v22;
      *(v3 + 32) = v23;
      sub_22C1CF148();
      *(v3 + 40) = v72;
      *(v3 + 48) = v35;
    }
  }
}

void TranscriptProtoActionCancellation.init(handwritten:)()
{
  sub_22BE19130();
  sub_22BE3129C();
  v2 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  sub_22BE19448(v2);
  v4 = *(v3 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE3FE6C(v6);
  v7 = sub_22C26E684();
  v8 = sub_22BE1A3D8(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE2379C();
  v13 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v14 = sub_22BE19448(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BE17B98();
  sub_22BE32C08();
  MEMORY[0x28223BE20](v17);
  v18 = sub_22C2595B4();
  v19 = *(type metadata accessor for ActionCancellation(v18) + 20);
  v20 = sub_22BE48FCC();
  v21(v20);
  v22 = sub_22C26E674();
  v23 = sub_22C26E654();
  v24 = sub_22C25A4AC();
  v25 = type metadata accessor for TranscriptProtoStatementID(v24);
  sub_22C25A5EC(v25);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v26 = *(v10 + 8);
  v27 = sub_22BE336E8();
  v28(v27);
  *v1 = v22;
  *(v1 + 8) = v23;
  *(v1 + 16) = v0;
  v29 = sub_22BE360A0();
  sub_22BE19DC4(v29, v30, v31, v25);
  sub_22C25A018();
  sub_22BE22814();
  sub_22C259FDC();
  sub_22BE46914();
  v32 = sub_22BE38960();
  v35 = sub_22C18F17C(v32, v33, v34, v25);
  v36 = type metadata accessor for TranscriptProtoActionCancellation(v35);
  sub_22BE33FC0(v36);
  sub_22C259860();
  sub_22C25AD2C(v37, v38, v39, v40);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C0E9848();
  sub_22BE1AE58();
  sub_22BE3C968();
  sub_22BE2343C();
  sub_22BE2343C();
  sub_22BEE94B0();
  sub_22BE18478();
}

void TranscriptProtoStatementResult.init(handwritten:)()
{
  sub_22BE19130();
  v4 = v3;
  v122 = v5;
  v6 = sub_22BE5CE4C(&qword_27D90E670, &unk_22C2CC890);
  sub_22BE19448(v6);
  v8 = *(v7 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE1A174();
  sub_22C259DF0(v10);
  v120 = sub_22C26E684();
  v11 = sub_22BE179D8(v120);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BE17A44();
  v119 = v16;
  v17 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v18 = sub_22BE19448(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BE17B98();
  v121 = v21;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v22);
  sub_22BE19490();
  v124 = v23;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v24);
  sub_22BE19E94();
  v123 = v25;
  v26 = sub_22BE183BC();
  v27 = type metadata accessor for StatementResultPayload(v26);
  v28 = sub_22BE19448(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  sub_22BE188B0();
  v31 = sub_22BE5CE4C(&qword_27D90E730, &qword_22C2B5D20);
  sub_22BE19448(v31);
  v33 = *(v32 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v34);
  sub_22C259738(v35);
  v36 = sub_22C26E1D4();
  v37 = sub_22C2594A0(v36);
  v39 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v37);
  sub_22BE2379C();
  v42 = sub_22BE33FCC();
  v44 = sub_22BE5CE4C(v42, v43);
  sub_22BE19448(v44);
  v46 = *(v45 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v47);
  sub_22BE1B01C();
  sub_22BE25C94();
  sub_22BE22814();
  v48 = sub_22BE23E90();
  v50 = 0;
  if (sub_22BE1AEA8(v48, v49, v1) != 1)
  {
    sub_22C18F338();
    v51 = sub_22BE27A44();
    v52(v51);
    sub_22C26E184();
    v50 = v53;
    v54 = *(v39 + 8);
    v55 = sub_22BE1B73C();
    v56(v55);
  }

  v57 = type metadata accessor for StatementResult(0);
  sub_22BE1AA68(v4 + v57[5], v2);
  TranscriptProtoStatementResultPayload.init(handwritten:)(v2);
  if (v0)
  {
    sub_22C2598D0();
    sub_22BE1AE58();
  }

  else
  {
    v117 = type metadata accessor for TranscriptProtoStatementResultPayload(0);
    sub_22BE187DC();
    sub_22BE19DC4(v58, v59, v60, v61);
    v118 = *(v13 + 16);
    v118(v119, v4 + v57[6], v120);
    v115 = sub_22C26E674();
    v62 = sub_22C26E654();
    v63 = sub_22C25A628();
    v64 = type metadata accessor for TranscriptProtoStatementID(v63);
    v65 = v123 + *(v64 + 24);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE417A8(*(v13 + 8));
    v66 = sub_22BE18240();
    v67(v66);
    *v123 = v115;
    *(v123 + 8) = v62;
    *(v123 + 16) = v50;
    v68 = sub_22BE2500C();
    sub_22BE19DC4(v68, v69, v70, v64);
    v118(v119, v4 + v57[7], v120);
    v116 = sub_22C26E674();
    v71 = sub_22C26E654();
    v73 = v72;
    v74 = v124 + *(v64 + 24);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE18240();
    sub_22C1CF2AC();
    v75();
    *v124 = v116;
    *(v124 + 8) = v71;
    *(v124 + 16) = v73;
    v76 = sub_22BE2500C();
    sub_22BE19DC4(v76, v77, v78, v64);
    v118(v119, v4 + v57[8], v120);
    LODWORD(v118) = sub_22C26E674();
    v79 = sub_22C26E654();
    v81 = v80;
    v82 = v121 + *(v64 + 24);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE18240();
    sub_22C1CF2AC();
    v83();
    *v121 = v118;
    *(v121 + 8) = v79;
    *(v121 + 16) = v81;
    v84 = sub_22BE3C530();
    sub_22BE19DC4(v84, v85, v86, v64);
    v87 = v4 + v57[9];
    v125 = *v87;
    v126 = *(v87 + 1);
    v127 = v87[32];
    sub_22BE22814();
    sub_22C1072AC();
    v88 = type metadata accessor for TranscriptProtoStatementResult(0);
    sub_22C25A7AC(v88);
    sub_22BE1A140();
    sub_22BE19DC4(v89, v90, v91, v117);
    v92 = v4[6];
    sub_22C25975C();
    sub_22BE19DC4(v93, v94, v95, v96);
    v97 = v4[7];
    sub_22C25975C();
    sub_22BE19DC4(v98, v99, v100, v101);
    v102 = v4[8];
    sub_22C25975C();
    sub_22BE19DC4(v103, v104, v105, v106);
    v107 = v4[9];
    type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
    sub_22BE1A140();
    sub_22BE19DC4(v108, v109, v110, v111);
    v112 = v122 + v4[10];
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22C2598D0();
    sub_22BE1AE58();
    sub_22C1CF148();
    *v122 = v114;
    v122[1] = v113;
    sub_22BE2343C();
    sub_22BE27B84();
    sub_22BE2343C();
    sub_22BE27B84();
    sub_22BE2343C();
    sub_22BE27B84();
    sub_22BE2343C();
    sub_22BE2343C();
  }

  sub_22BE35D48();
  sub_22BE18478();
}

uint64_t TranscriptProtoExternalAgentRequestRewriteMetadata.init(handwritten:)()
{
  sub_22BE48AF0();
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = *(type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0) + 24);

  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();

  *v0 = v3;
  v0[1] = v2;
  v0[2] = v4;
  return result;
}

void TranscriptProtoToolResolution.init(handwritten:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  sub_22C25A50C();
  sub_22C25A8F4(v13);
  v14 = sub_22C26E684();
  v15 = sub_22BE179D8(v14);
  v106 = v16;
  v108 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BE294E0();
  v19 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v20 = sub_22BE19448(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22BE29178(v23, v100);
  v25 = MEMORY[0x28223BE20](v24);
  sub_22BE22D7C(v25, v26, v27, v28, v29, v30, v31, v32, v101);
  v110 = sub_22C272674();
  v33 = sub_22BE179D8(v110);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v33);
  sub_22BE2F294();
  v38 = sub_22C272224();
  v39 = sub_22C259488(v38);
  v41 = v40;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v39);
  sub_22BE2379C();
  v44 = sub_22BE5CE4C(&qword_27D90C180, &unk_22C296C40);
  sub_22BE19448(v44);
  v46 = *(v45 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v47);
  sub_22BE1A174();
  v48 = sub_22C259E4C();
  v49(v48, v11, v10);
  sub_22C2721F4();
  if (a10)
  {
    sub_22C2598E8();
    sub_22BE1AE58();
    v50 = *(v41 + 8);
    v51 = sub_22BE1A8C4();
    v52(v51);
  }

  else
  {
    v53 = *(v41 + 8);
    v54 = sub_22BE1A8C4();
    v55(v54);
    v56 = *(v35 + 32);
    v57 = sub_22BE29264();
    v58(v57);
    v59 = sub_22BE2500C();
    v62 = sub_22C18F17C(v59, v60, v61, v110);
    v63 = type metadata accessor for ToolResolution(v62);
    v103 = *(v106 + 16);
    v104 = v63;
    v103(v12, v11 + *(v63 + 20), v108);
    v102 = sub_22C26E674();
    v64 = sub_22C26E654();
    v66 = v65;
    v67 = type metadata accessor for TranscriptProtoStatementID(0);
    v68 = v109 + *(v67 + 24);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v107 = *(v106 + 8);
    v69 = sub_22BE33FCC();
    v70(v69);
    *v109 = v102;
    *(v109 + 8) = v64;
    *(v109 + 16) = v66;
    sub_22C2597C4();
    sub_22BE19DC4(v71, v72, v73, v74);
    v103(v12, v11 + *(v104 + 24), v108);
    v75 = sub_22C26E674();
    v76 = sub_22C26E654();
    v78 = v77;
    v79 = v105 + *(v67 + 24);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v80 = sub_22BE33FCC();
    v107(v80);
    *v105 = v75;
    *(v105 + 8) = v76;
    *(v105 + 16) = v78;
    v81 = sub_22BE22B8C();
    sub_22BE19DC4(v81, v82, v83, v67);
    v84 = sub_22BE3D5C8();
    v88 = sub_22C18F17C(v84, v85, v86, v87);
    v89 = type metadata accessor for TranscriptProtoToolResolution(v88);
    v90 = *(v89 + 20);
    sub_22C259804();
    sub_22BE19DC4(v91, v92, v93, v94);
    v95 = *(v89 + 24);
    sub_22C259804();
    sub_22C25AE64(v96, v97, v98, v99);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22C2598E8();
    sub_22BE1AE58();
    sub_22BE2343C();
    sub_22C25AAC4();
    sub_22BE2343C();
    sub_22C25AAC4();
    sub_22BE2343C();
  }

  sub_22BE35D48();
  sub_22BE18478();
}

void TranscriptProtoUndoRedoRequest.init(handwritten:)()
{
  sub_22BE19130();
  sub_22C18F3A4();
  v67 = v3;
  v4 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  sub_22BE19448(v4);
  v6 = *(v5 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE3FE6C(v8);
  v70 = sub_22C26E684();
  v9 = sub_22BE179D8(v70);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BE17A44();
  v15 = v14;
  v16 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v17 = sub_22BE19448(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v20);
  sub_22BE19E94();
  v22 = v21;
  v23 = sub_22BE1B18C();
  v25 = sub_22BE5CE4C(v23, v24);
  sub_22BE19448(v25);
  v27 = *(v26 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v28);
  sub_22BE19668();
  v29 = v1[1];
  v30 = sub_22C18F934(*v1);
  v31 = type metadata accessor for UndoRedoRequest(v30);
  sub_22C25A694(v31);
  sub_22C25AA5C();
  sub_22BE22814();
  v32 = sub_22C26E1D4();
  v33 = sub_22BE1B010();
  v35 = sub_22BE1AEA8(v33, v34, v32);
  v69 = v29;

  if (v35 == 1)
  {
    sub_22BE233E8(v0, &qword_27D9082F0, &qword_22C27AB00);
    v65 = 0;
    v66 = 0;
  }

  else
  {
    v36 = sub_22C26E184();
    v65 = v37;
    v66 = v36;
    sub_22BE1BC24(v32);
    v39 = *(v38 + 8);
    v40 = sub_22BE27A44();
    v41(v40);
  }

  v64 = *(v1 + v2[6]);
  (*(v11 + 16))(v15, v1 + v2[7], v70);
  v42 = sub_22C26E674();
  v43 = sub_22C26E654();
  v44 = sub_22C25A4AC();
  v45 = type metadata accessor for TranscriptProtoStatementID(v44);
  sub_22C25A67C(v45);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v46 = sub_22C259ED8();
  v47(v46);
  *v22 = v42;
  *(v22 + 8) = v43;
  *(v22 + 16) = v1;
  v48 = sub_22BE2500C();
  sub_22BE19DC4(v48, v49, v50, v45);
  v51 = v2[8];
  sub_22BE22814();
  sub_22BE46914();
  v52 = type metadata accessor for TranscriptProtoUndoRedoRequest(0);
  v53 = v52[7];
  sub_22C25976C();
  sub_22BE19DC4(v54, v55, v56, v57);
  v58 = v52[8];
  sub_22C25976C();
  sub_22BE19DC4(v59, v60, v61, v62);
  v63 = v67 + v52[9];
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C0E9A74();
  sub_22BE1AE58();
  *v67 = v68;
  *(v67 + 8) = v69;
  *(v67 + 24) = v66;
  *(v67 + 32) = v65;
  *(v67 + 16) = v64;
  sub_22BE2EDC8();
  sub_22BE2343C();
  sub_22BE2EDC8();
  sub_22BE2343C();
  sub_22BE3C298();
  sub_22BE18478();
}

void TranscriptProtoClientUndoRedoRequest.init(handwritten:)()
{
  sub_22BE19130();
  sub_22C259E88();
  v5 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  sub_22BE19448(v5);
  v7 = *(v6 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE23A90(v9);
  v45 = sub_22C26E684();
  sub_22BE17C68();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BE18DFC();
  v15 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v16 = sub_22BE19448(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BE28A70(v19, v44);
  MEMORY[0x28223BE20](v20);
  sub_22BE32374();
  v21 = sub_22C26E184();
  v47 = v22;
  v48 = v21;
  v23 = type metadata accessor for ClientUndoRedoRequest(0);
  v46 = *(v1 + v23[5]);
  (*(v11 + 16))(v2, v1 + v23[6], v45);
  v24 = sub_22C26E674();
  v25 = sub_22C26E654();
  v26 = sub_22C25A628();
  v27 = type metadata accessor for TranscriptProtoStatementID(v26);
  sub_22C25A5EC(v27);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  (*(v11 + 8))(v2, v45);
  *v4 = v24;
  *(v4 + 8) = v25;
  *(v4 + 16) = v3;
  v28 = sub_22BE360A0();
  sub_22BE19DC4(v28, v29, v30, v27);
  v31 = v23[7];
  sub_22BE22814();
  sub_22C259FC4();
  sub_22BE46914();
  v32 = type metadata accessor for TranscriptProtoClientUndoRedoRequest(0);
  v33 = v32[6];
  sub_22C259804();
  sub_22BE19DC4(v34, v35, v36, v37);
  v38 = v32[7];
  sub_22C259804();
  sub_22BE19DC4(v39, v40, v41, v42);
  v43 = v0 + v32[8];
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE3E76C();
  sub_22BE1AE58();
  *v0 = v48;
  *(v0 + 8) = v47;
  *(v0 + 16) = v46;
  sub_22BE2343C();
  sub_22C18FCEC();
  sub_22BE2343C();
  sub_22BEE94B0();
  sub_22BE18478();
}

void TranscriptProtoTypeConversionRequest.init(handwritten:)()
{
  sub_22BE19130();
  v109 = v4;
  sub_22BE4066C();
  v5 = sub_22C26E684();
  v6 = sub_22BE179D8(v5);
  v100 = v7;
  v101 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE17A44();
  v99 = v10;
  v11 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v11);
  v13 = *(v12 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22C25984C(v15);
  v16 = sub_22C2725A4();
  v17 = sub_22BE179D8(v16);
  v97 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BE17A44();
  sub_22BE28E74(v21);
  v107 = sub_22C2728A4();
  v22 = sub_22BE179D8(v107);
  v106 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22BE17A44();
  v105 = v26;
  v27 = sub_22BE5CE4C(&qword_27D90C138, &qword_22C2CB830);
  sub_22BE19448(v27);
  v29 = *(v28 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v30);
  sub_22BE1A174();
  sub_22BE183BC();
  v31 = sub_22C272594();
  v32 = sub_22BE41130(v31);
  v103 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22BE18DFC();
  v36 = sub_22C272874();
  v37 = sub_22C2594A0(v36);
  v39 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v37);
  sub_22BE2379C();
  v42 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  sub_22BE19448(v42);
  v44 = *(v43 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v45);
  sub_22BE1A174();
  v102 = v46;
  v47 = sub_22C259C00();
  v104 = v2;
  v50 = sub_22C259E00(v47, v48, v49);
  v51 = type metadata accessor for TranscriptProtoTypeConversionRequest(v50);
  v52 = v51[5];
  sub_22BE1A140();
  sub_22BE19DC4(v53, v54, v55, v16);
  v56 = v51[6];
  v57 = type metadata accessor for TranscriptProtoStatementID(0);
  sub_22C25976C();
  sub_22BE19DC4(v58, v59, v60, v61);
  v62 = v51[7];
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v63 = sub_22C259D90();
  v64(v63, v109, v3);
  sub_22C272854();
  if (v0)
  {
    sub_22BE3AEE0();
    sub_22BE1AE58();
    v65 = *(v39 + 8);
    v66 = sub_22BE1B73C();
    v67(v66);
    sub_22BE1AE58();
  }

  else
  {
    v68 = *(v39 + 8);
    v69 = sub_22BE1B73C();
    v70(v69);
    (*(v103 + 32))(v102, v1, v104);
    sub_22BE25FFC();
    sub_22BE19DC4(v71, v72, v73, v74);
    sub_22BE2343C();
    v75 = type metadata accessor for TypeConversionRequest(0);
    (*(v106 + 16))(v105, v109 + *(v75 + 20), v107);
    sub_22C272884();
    v76 = *(v106 + 8);
    v77 = sub_22BE2684C();
    v78(v77);
    v79 = *(v97 + 32);
    v80 = sub_22BE36658();
    v81(v80);
    v82 = sub_22C259724();
    sub_22BE19DC4(v82, v83, v84, v85);
    sub_22BE2343C();
    (*(v100 + 16))(v99, v109 + *(v75 + 24), v101);
    v108 = sub_22C26E674();
    v86 = sub_22C26E654();
    v88 = v87;
    v89 = v98 + *(v57 + 24);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE3AEE0();
    sub_22BE1AE58();
    v90 = *(v100 + 8);
    v91 = sub_22BE37B20();
    v92(v91);
    *v98 = v108;
    *(v98 + 8) = v86;
    *(v98 + 16) = v88;
    v93 = sub_22C259724();
    sub_22BE19DC4(v93, v94, v95, v96);
    sub_22BE2343C();
  }

  sub_22BE467E4();
  sub_22BE18478();
}

void TranscriptProtoTypeConversionResult.init(handwritten:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  sub_22C25A93C(v10);
  sub_22BE4066C();
  v11 = sub_22C26E684();
  v12 = sub_22BE179D8(v11);
  v92 = v13;
  v94 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BE17A44();
  sub_22BE3668C(v16);
  v17 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v17);
  v19 = *(v18 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  sub_22BE417B4(v21);
  v22 = sub_22C272594();
  v23 = sub_22BE41130(v22);
  v88 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22BE17CBC();
  v27 = sub_22C272874();
  v28 = sub_22BE1A3D8(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v28);
  sub_22BE2379C();
  v33 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  sub_22BE19448(v33);
  v35 = *(v34 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v36);
  sub_22BE1A8B4();
  v37 = sub_22C259C00();
  v40 = sub_22C259E00(v37, v38, v39);
  v41 = type metadata accessor for TranscriptProtoTypeConversionResult(v40);
  v42 = sub_22C25AA2C(v41);
  v43 = type metadata accessor for TranscriptProtoStatementID(v42);
  sub_22C25975C();
  sub_22BE19DC4(v44, v45, v46, v47);
  v90 = *(v41 + 24);
  sub_22C25975C();
  sub_22BE19DC4(v48, v49, v50, v51);
  v52 = *(v41 + 28);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C259E94(v30);
  sub_22BE25300();
  v53();
  sub_22C272854();
  if (v95)
  {
    sub_22C259AD0();
    sub_22BE1AE58();
    v54 = *(v30 + 8);
    v55 = sub_22BE336E8();
    v56(v55);
    sub_22BE1B154();
    sub_22BE1AE58();
  }

  else
  {
    v57 = *(v30 + 8);
    v58 = sub_22BE336E8();
    v59(v58);
    v60 = *(v88 + 32);
    v61 = sub_22BE392D4();
    v62(v61);
    sub_22BE25FFC();
    sub_22BE19DC4(v63, v64, v65, v66);
    sub_22BE2BA80();
    sub_22BE2343C();
    v89 = type metadata accessor for TypeConversionResult(0);
    v67 = *(v92 + 16);
    v67(v91, a10 + *(v89 + 20), v94);
    v86 = sub_22C26E674();
    v68 = sub_22C26E654();
    v70 = v69;
    v71 = v87 + *(v43 + 24);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v93 = *(v92 + 8);
    v72 = sub_22BE261AC();
    v73(v72);
    *v87 = v86;
    *(v87 + 8) = v68;
    *(v87 + 16) = v70;
    v74 = sub_22C25974C();
    sub_22BE19DC4(v74, v75, v76, v43);
    sub_22BE2343C();
    sub_22C25AD94();
    v67(v91, a10 + v77, v94);
    LODWORD(v68) = sub_22C26E674();
    v78 = sub_22C26E654();
    v80 = v79;
    v81 = v87 + *(v43 + 24);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22C259AD0();
    sub_22BE1AE58();
    v82 = sub_22BE261AC();
    v93(v82);
    *v87 = v68;
    *(v87 + 8) = v78;
    *(v87 + 16) = v80;
    v83 = sub_22C25974C();
    sub_22BE19DC4(v83, v84, v85, v43);
    sub_22BE2343C();
  }

  sub_22BE18478();
}

void TranscriptProtoQueryDecorationPrePlannerResult.init(handwritten:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  sub_22C18F3A4();
  v65 = v13;
  v14 = sub_22BE5CE4C(&qword_27D90F138, &unk_22C2AE7F0);
  sub_22BE19448(v14);
  v16 = *(v15 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  sub_22BE415D8(v18);
  v19 = sub_22C26E684();
  v20 = sub_22BE179D8(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22BE2379C();
  v25 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v25);
  v27 = *(v26 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v28);
  sub_22BE1B01C();
  v29 = sub_22BE37EE0();
  v30(v29, v11, v19);
  v31 = sub_22C26E674();
  v32 = sub_22C26E654();
  v33 = sub_22BE32C3C();
  v34 = type metadata accessor for TranscriptProtoStatementID(v33);
  sub_22C25A4E8(v34);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v35 = *(v22 + 8);
  v36 = sub_22BE31038();
  v37(v36);
  *v12 = v31;
  *(v12 + 8) = v32;
  *(v12 + 16) = v10;
  v38 = v11;
  v39 = sub_22BE22B8C();
  v42 = sub_22C18F17C(v39, v40, v41, v34);
  DecorationPrePlannerResult = type metadata accessor for QueryDecorationPrePlannerResult(v42);
  v44 = *(DecorationPrePlannerResult + 24);
  v45 = (v11 + *(DecorationPrePlannerResult + 20));
  v46 = *v45;
  v47 = v45[1];
  LOBYTE(v45) = *(v38 + v44 + 8);
  v66 = *(v38 + v44);
  v67 = v45;

  TranscriptProtoQueryDecorationPrePlannerResultPayload.init(handwritten:)(&v66);
  if (a10)
  {
    sub_22BE310A4();
    sub_22BE1AE58();

    sub_22BE233E8(v12, &qword_27D9090F8, &unk_22C2AE4A0);
  }

  else
  {
    type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload(0);
    v48 = sub_22C259724();
    v52 = sub_22C18F17C(v48, v49, v50, v51);
    v53 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(v52);
    v54 = v53[5];
    sub_22C25975C();
    sub_22BE19DC4(v55, v56, v57, v58);
    v59 = v53[6];
    sub_22BE32EE0();
    sub_22BE19DC4(v60, v61, v62, v63);
    v64 = v65 + v53[7];
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE310A4();
    sub_22BE1AE58();
    sub_22BE2343C();
    *v65 = v46;
    v65[1] = v47;
    sub_22BE2343C();
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

void TranscriptProtoExecutionPreconditionEvaluatorRequest.init(handwritten:)()
{
  sub_22BE19130();
  v4 = v3;
  v69 = v5;
  v72 = type metadata accessor for TranscriptProtoStatementID(0);
  v6 = sub_22BE179D8(v72);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE17A44();
  sub_22BE48A8C(v11);
  v73 = sub_22C26E684();
  v12 = sub_22BE179D8(v73);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BE17D10();
  MEMORY[0x28223BE20](v17);
  sub_22C259BC0();
  v18 = type metadata accessor for ExecutionPreconditionEvaluatorRequest.ActionRequest(0);
  v19 = sub_22BE19448(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22BE17CBC();
  v22 = sub_22BE5CE4C(&qword_27D90F1A8, &qword_22C297140);
  sub_22BE19448(v22);
  v24 = *(v23 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v25);
  sub_22BE1B72C();
  sub_22C25A0E0();
  v26 = sub_22BE392D4();
  sub_22BE1AA68(v26, v27);
  v28 = sub_22C259EBC();
  TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequest.init(handwritten:)(v28);
  if (v2)
  {
    sub_22C259900();
    sub_22BE1AE58();
LABEL_14:
    sub_22BE18478();
  }

  else
  {
    type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequest(0);
    v29 = sub_22BE2500C();
    v67 = v30;
    v33 = sub_22C18F17C(v29, v31, v32, v30);
    v34 = *(v4 + *(type metadata accessor for ExecutionPreconditionEvaluatorRequest(v33) + 20));
    sub_22BE5CE4C(&qword_27D915600, &unk_22C2CC8E0);
    sub_22C273D04();
    v35 = 0;
    v36 = *(v34 + 64);
    v37 = 1 << *(v34 + 32);
    sub_22BE18010();
    sub_22C25A350();
    v68 = v39;
    v71 = v40;
    v70 = v8;
    while (v38)
    {
      sub_22BE22BE8();
      v74 = v42;
LABEL_11:
      v45 = v41 | (v35 << 6);
      v46 = (*(v34 + 48) + 16 * v45);
      v47 = v46[1];
      v78 = *v46;
      v48 = v14[2];
      v48(v1, *(v34 + 56) + v14[9] * v45, v73);
      v49 = sub_22BE27A44();
      (v48)(v49);
      v0 = v47;

      v77 = sub_22C26E674();
      v50 = sub_22C26E654();
      v75 = v51;
      v76 = v50;
      v52 = *(v72 + 24);
      sub_22C25A128();
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v53 = v14[1];
      v54 = sub_22BE261AC();
      v53(v54);
      *v47 = v77;
      *(v47 + 8) = v76;
      *(v47 + 16) = v75;
      v55 = sub_22BE36318();
      v53(v55);
      sub_22C259F84();
      sub_22C25977C(v56);
      v57 = (v71[6] + 16 * v45);
      *v57 = v78;
      v57[1] = v47;
      v58 = v71[7] + *(v70 + 72) * v45;
      sub_22BE3B168();
      sub_22BE3B620(v47, v59);
      sub_22C25A500();
      if (v61)
      {
        goto LABEL_16;
      }

      v71[2] = v60;
      v38 = v74;
    }

    v43 = v35;
    while (1)
    {
      v35 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      if (v35 >= v68)
      {
        v62 = type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest(0);
        sub_22C25A7AC(v62);
        sub_22BE1A140();
        sub_22BE19DC4(v63, v64, v65, v67);
        v66 = v69 + *(v0 + 24);
        _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
        sub_22C259900();
        sub_22BE1AE58();
        sub_22BE2343C();
        *v69 = v71;
        goto LABEL_14;
      }

      ++v43;
      if (*(v34 + 64 + 8 * v35))
      {
        sub_22BE4878C();
        v74 = v44;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }
}

void TranscriptProtoRequestAmendment.init(handwritten:)()
{
  sub_22BE19130();
  v5 = sub_22BE1B254();
  v6 = type metadata accessor for RequestContent(v5);
  v7 = sub_22BE19448(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE294E0();
  v10 = sub_22BE5CE4C(&qword_27D90E568, &unk_22C2CC8B0);
  sub_22BE19448(v10);
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE19E64();
  v14 = sub_22C26E184();
  v15 = sub_22C25A788();
  v16 = *(type metadata accessor for RequestAmendment(v15) + 20);
  sub_22BE35EE0();
  sub_22BE1AA68(v1 + v17, v4);
  TranscriptProtoRequestContent.init(handwritten:)();
  if (v2)
  {
    sub_22BE35908();
    sub_22BE1AE58();
  }

  else
  {
    type metadata accessor for TranscriptProtoRequestContent(0);
    sub_22C2597F4();
    v22 = sub_22C18F17C(v18, v19, v20, v21);
    v23 = type metadata accessor for TranscriptProtoRequestAmendment(v22);
    v24 = *(v23 + 20);
    sub_22C25976C();
    sub_22BE19DC4(v25, v26, v27, v28);
    v29 = v0 + *(v23 + 24);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE35908();
    sub_22BE1AE58();
    *v0 = v14;
    v0[1] = v3;
    sub_22BE2343C();
  }

  sub_22BE467E4();
  sub_22BE18478();
}

void TranscriptProtoIntermediateSystemResponse.init(handwritten:)()
{
  sub_22BE19130();
  sub_22BE308C4();
  v4 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v4);
  v6 = *(v5 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE1A8B4();
  v8 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  sub_22BE19448(v8);
  v10 = *(v9 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE23E58();
  v12 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v12);
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE25CD0();
  v16 = sub_22BE5CE4C(&qword_27D911F40, &qword_22C2B5CA8);
  sub_22BE19448(v16);
  v18 = *(v17 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  sub_22BE2C64C();
  v20 = sub_22BE5CE4C(&qword_27D90F078, &unk_22C2AE7D0);
  sub_22BE19448(v20);
  v22 = *(v21 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v23);
  sub_22BE234F4();
  sub_22C270044();
  sub_22C106164();
  if (v1)
  {
    v24 = sub_22C270074();
    sub_22BE18524(v24);
    (*(v25 + 8))(v2);
  }

  else
  {
    v26 = sub_22C270034();
    v56 = v27;
    v57 = v26;
    v28 = sub_22C270064();
    v54 = v29;
    v55 = v28;
    sub_22C270004();
    sub_22BE46914();
    sub_22C26FF64();
    v30 = sub_22C26E1D4();
    sub_22BE23B00(v3);
    if (v31)
    {
      sub_22BE233E8(v3, &qword_27D9082F0, &qword_22C27AB00);
      v58 = 0;
      v53 = 0;
    }

    else
    {
      v58 = sub_22C26E184();
      v53 = v32;
      sub_22BE1BC24(v30);
      v34 = *(v33 + 8);
      v35 = sub_22BE2BA80();
      v36(v35);
    }

    v37 = type metadata accessor for TranscriptProtoIntermediateSystemResponse(0);
    v38 = v37[5];
    type metadata accessor for TranscriptProtoResponseOutput(0);
    sub_22BE1A140();
    sub_22BE19DC4(v39, v40, v41, v42);
    v43 = v37[7];
    v44 = (v0 + v37[6]);
    type metadata accessor for TranscriptProtoStatementID(0);
    sub_22BE1A140();
    sub_22BE19DC4(v45, v46, v47, v48);
    v49 = v37[9];
    v50 = (v0 + v37[8]);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v51 = sub_22C270074();
    sub_22BE18524(v51);
    (*(v52 + 8))(v2);
    sub_22BE2343C();
    *v44 = v57;
    v44[1] = v56;
    *v0 = v55;
    v0[1] = v54;
    sub_22BE2343C();
    *v50 = v58;
    v50[1] = v53;
  }

  sub_22BE467E4();
  sub_22BE18478();
}

void TranscriptProtoIntermediateSystemResponseRendered.init(handwritten:)()
{
  sub_22BE19130();
  sub_22BE308C4();
  v3 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v3);
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE2C64C();
  v7 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  sub_22BE19448(v7);
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE1B01C();
  v11 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v11);
  v13 = *(v12 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE25CD0();
  v39 = sub_22C2701D4();
  v38 = sub_22C270224();
  v16 = v15;
  sub_22C2701E4();
  sub_22C25A08C();
  sub_22BE46914();
  sub_22C26FF64();
  v17 = sub_22C26E1D4();
  v18 = sub_22BE3C688();
  sub_22BE1AB5C(v18, v19, v17);
  if (v20)
  {
    sub_22BE233E8(v2, &qword_27D9082F0, &qword_22C27AB00);
    v21 = 0;
    v23 = 0;
  }

  else
  {
    v21 = sub_22C26E184();
    v23 = v22;
    sub_22BE1BC24(v17);
    v25 = *(v24 + 8);
    v26 = sub_22C259FF4();
    v27(v26);
  }

  v28 = type metadata accessor for TranscriptProtoIntermediateSystemResponseRendered(0);
  v29 = v28[6];
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE1A140();
  sub_22BE19DC4(v30, v31, v32, v33);
  v34 = v28[8];
  v35 = (v0 + v28[7]);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v36 = sub_22C270234();
  sub_22BE18524(v36);
  (*(v37 + 8))(v1);
  *v0 = v39 & 1;
  *(v0 + 8) = v38;
  *(v0 + 16) = v16;
  sub_22BE2343C();
  *v35 = v21;
  v35[1] = v23;
  sub_22C18F0A4();
  sub_22BE18478();
}

void TranscriptProtoAgentPrimitiveAction.init(handwritten:)()
{
  sub_22BE19130();
  v3 = sub_22BE1B254();
  v4 = type metadata accessor for AgentPrimitiveAction.PrimitiveAction(v3);
  v5 = sub_22BE19448(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE1955C();
  v8 = sub_22BE5CE4C(&qword_27D90F248, &unk_22C2CC860);
  sub_22BE19448(v8);
  v10 = *(v9 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE25CD0();
  v13 = *v1;
  v12 = v1[1];
  v14 = *(type metadata accessor for AgentPrimitiveAction(0) + 20);
  sub_22BE3E784();
  v16 = sub_22C25A70C(v15);
  sub_22BE1AA68(v16, v17);

  sub_22C25A518();
  TranscriptProtoPrimitiveAction.init(handwritten:)();
  if (v2)
  {
    sub_22C0E9A74();
    sub_22BE1AE58();
  }

  else
  {
    v18 = type metadata accessor for TranscriptProtoPrimitiveAction(0);
    v19 = sub_22BE3C530();
    v22 = sub_22C18F17C(v19, v20, v21, v18);
    v23 = type metadata accessor for TranscriptProtoAgentPrimitiveAction(v22);
    v24 = *(v23 + 20);
    sub_22BE28D2C();
    sub_22BE19DC4(v25, v26, v27, v28);
    v29 = v0 + *(v23 + 24);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22C0E9A74();
    sub_22BE1AE58();
    *v0 = v13;
    v0[1] = v12;
    sub_22BE2343C();
  }

  sub_22BE467E4();
  sub_22BE18478();
}

void LocaleSettings.init(transcript:)()
{
  sub_22BE3C358();
  sub_22BE28CF0();
  v1 = sub_22C26E244();
  v2 = sub_22BE19448(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v5);
  sub_22BE20324();
  MEMORY[0x28223BE20](v6);
  sub_22BE181E4();
  v7 = *v0;
  v8 = v0[1];

  sub_22BE1B18C();
  sub_22C26E1E4();
  v9 = v0[2];
  v10 = v0[3];

  sub_22BE1B18C();
  sub_22C26E1E4();
  v11 = v0[4];
  v12 = v0[5];

  sub_22BE1B18C();
  sub_22C26E1E4();
  sub_22BE1B328();
  sub_22C26EC54();
  sub_22BE26148();
  sub_22BE1AE58();
  sub_22BE267B8();
}

void DeviceDetails.init(transcript:)()
{
  sub_22BE2BB34();
  v2 = v0;
  v4 = v3;
  v5 = sub_22BE3C4D0();
  v6 = type metadata accessor for TranscriptProtoDeviceDetailsDeviceType(v5);
  v7 = sub_22BE19448(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE18DFC();
  v10 = sub_22C26EA34();
  v11 = sub_22BE19448(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BE294E0();
  v15 = *v4;
  v14 = v4[1];
  v16 = *(type metadata accessor for TranscriptProtoDeviceDetails(0) + 20);

  sub_22C101398();
  if (v2)
  {
    sub_22BE26148();
    sub_22BE1AE58();
  }

  else
  {
    v17 = *v1;
    sub_22C26EA14();
    sub_22C0E9830();
    sub_22BE1AE58();
    sub_22BF0AFB8();
    sub_22C26EA44();
    sub_22BE26148();
    sub_22BE1AE58();
  }

  sub_22BE36324();
  sub_22BEE93D4();
}

uint64_t DeviceDetails.DeviceType.init(transcript:)(unsigned int *a1)
{
  v1 = *a1;
  sub_22C26EA14();
  sub_22BE26148();
  return sub_22BE1AE58();
}

void TranscriptProtoDeviceDetails.init(handwritten:)()
{
  sub_22BE19460();
  v5 = v4;
  sub_22BE1A5E4();
  v6 = sub_22C26EA34();
  v7 = sub_22BE179D8(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE28FD8();
  v12 = sub_22BE5CE4C(&qword_27D90F0E8, &qword_22C2B5C90);
  sub_22BE19448(v12);
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE1B01C();
  sub_22C26EA54();
  sub_22C1CF16C();
  sub_22C26EA64();
  v16 = sub_22C26EA24();
  v17 = type metadata accessor for TranscriptProtoDeviceDetailsDeviceType(0);
  sub_22C25A548(v17);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v18 = *(v9 + 8);
  v19 = sub_22BE191C0();
  v20(v19);
  *v1 = v16;
  v21 = sub_22BE22B8C();
  v24 = sub_22C18F17C(v21, v22, v23, v17);
  LODWORD(v9) = *(type metadata accessor for TranscriptProtoDeviceDetails(v24) + 20);
  sub_22C259804();
  sub_22C25ACD8(v25, v26, v27, v28);
  v29 = sub_22C26EA84();
  sub_22BE18524(v29);
  (*(v30 + 8))(v5);
  *v0 = v2;
  v0[1] = v3;
  sub_22BE2343C();
  sub_22BE1AABC();
}

uint64_t TranscriptProtoDeviceDetailsDeviceType.init(handwritten:)()
{
  sub_22C259E88();
  v2 = sub_22C26EA24();
  v3 = type metadata accessor for TranscriptProtoDeviceDetailsDeviceType(0);
  sub_22BE48874(v3);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v4 = sub_22C26EA34();
  sub_22BE18524(v4);
  result = (*(v5 + 8))(v1);
  *v0 = v2;
  return result;
}

uint64_t GenderSettings.Gender.init(transcript:)(char *a1)
{
  v1 = *a1;
  v2 = sub_22C26EC14();
  sub_22BE18000(v2);
  v4 = *(v3 + 104);
  v5 = sub_22BE460A4(&unk_278725C58);

  return v6(v5);
}

void GenderSettings.init(transcript:)()
{
  sub_22BE19460();
  sub_22C259C10(v3);
  v4 = sub_22C26EC14();
  v5 = sub_22BE179D8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE195A8();
  MEMORY[0x28223BE20](v10);
  sub_22BE2017C();
  MEMORY[0x28223BE20](v11);
  sub_22BE1AF10();
  MEMORY[0x28223BE20](v12);
  sub_22BE2EDB8();
  v13 = *(v7 + 104);
  v13(v2, **(&unk_278725C58 + *v0), v4);
  v14 = *(v7 + 32);
  v15 = sub_22BE18240();
  v14(v15);
  v13(v1, **(&unk_278725C58 + v0[1]), v4);
  v16 = sub_22BE1B328();
  v14(v16);
  sub_22BE33560();
  sub_22C26EBF4();
  sub_22C0E9A74();
  sub_22BE1AE58();
  sub_22BE1AABC();
}

uint64_t TranscriptProtoGender.init(handwritten:)()
{
  sub_22BE1B254();
  v1 = sub_22C26EC14();
  v2 = sub_22BE179D8(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BE17CBC();
  sub_22BE29400();
  v7 = sub_22BE3C5E4();
  v8(v7);
  v9 = sub_22BE26264();
  v11 = v10(v9);
  if (v11 == *MEMORY[0x277D1C5F8])
  {
    v12 = 0;
LABEL_9:
    v13 = *(v4 + 8);
    v14 = sub_22BE18040();
    result = v15(v14);
    *v0 = v12;
    return result;
  }

  if (v11 == *MEMORY[0x277D1C608])
  {
    v12 = 1;
    goto LABEL_9;
  }

  if (v11 == *MEMORY[0x277D1C600])
  {
    v12 = 2;
    goto LABEL_9;
  }

  if (v11 == *MEMORY[0x277D1C610])
  {
    v12 = 3;
    goto LABEL_9;
  }

  result = sub_22C25AE4C();
  __break(1u);
  return result;
}

void TranscriptProtoGenderSettings.init(handwritten:)()
{
  sub_22BE19460();
  v4 = v3;
  sub_22BE3C4D0();
  v5 = sub_22C26EC14();
  v6 = sub_22BE179D8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE2582C();
  MEMORY[0x28223BE20](v11);
  sub_22BE19490();
  sub_22BE2BCB4();
  MEMORY[0x28223BE20](v12);
  sub_22BE28C8C();
  MEMORY[0x28223BE20](v13);
  sub_22BE26800();
  MEMORY[0x2318A7300]();
  v14 = v8[2];
  v15 = sub_22BE18240();
  v29 = v16;
  v16(v15);
  v17 = v8[11];
  v18 = v17(v2, v5);
  v19 = *MEMORY[0x277D1C5F8];
  v32 = v0;
  if (v18 == *MEMORY[0x277D1C5F8])
  {
    v30 = 0;
  }

  else
  {
    if (v18 == *MEMORY[0x277D1C608])
    {
      v20 = 1;
    }

    else if (v18 == *MEMORY[0x277D1C600])
    {
      v20 = 2;
    }

    else
    {
      if (v18 != *MEMORY[0x277D1C610])
      {
        goto LABEL_19;
      }

      v20 = 3;
    }

    v30 = v20;
  }

  v21 = v8[1];
  v21(v1, v5);
  sub_22C26EBE4();
  v22 = sub_22BE29454();
  v29(v22);
  v23 = sub_22BE232C8();
  v24 = (v17)(v23);
  if (v24 == v19)
  {
    v25 = 0;
LABEL_18:
    v21(v31, v5);
    v26 = &v32[*(type metadata accessor for TranscriptProtoGenderSettings(0) + 24)];
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v27 = sub_22C26EC34();
    sub_22BE18524(v27);
    (*(v28 + 8))(v4);
    *v32 = v30;
    v32[1] = v25;
    sub_22BE1AABC();
    return;
  }

  if (v24 == *MEMORY[0x277D1C608])
  {
    v25 = 1;
    goto LABEL_18;
  }

  if (v24 == *MEMORY[0x277D1C600])
  {
    v25 = 2;
    goto LABEL_18;
  }

  if (v24 == *MEMORY[0x277D1C610])
  {
    v25 = 3;
    goto LABEL_18;
  }

LABEL_19:
  sub_22C25AE4C();
  __break(1u);
}

void TranscriptProtoDateTimeContext.init(handwritten:)()
{
  sub_22BE19130();
  sub_22C259F34();
  v1 = sub_22C26E164();
  v2 = sub_22BE179D8(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BE294E0();
  v7 = sub_22BE5CE4C(&qword_27D90E470, &unk_22C2AE480);
  sub_22BE19448(v7);
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  v11 = sub_22BE3A208();
  v12 = type metadata accessor for TranscriptProtoDateTimeContext(v11);
  sub_22C25AA2C(v12);
  v13 = sub_22C270454();
  sub_22BE32EE0();
  sub_22BE19DC4(v14, v15, v16, v17);
  v18 = v0 + *(v12 + 24);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v19 = *(v4 + 16);
  v20 = sub_22BE38FD8();
  v21(v20);
  sub_22C270444();
  sub_22BE25FFC();
  sub_22BE19DC4(v22, v23, v24, v25);
  sub_22BE2343C();
  v26 = type metadata accessor for DateTimeContext();
  sub_22C25A73C(v26);
  sub_22C26E264();
  sub_22BE3D554();
  sub_22C0E9830();
  sub_22BE1AE58();
  *v0 = v13;
  v0[1] = v1;
  sub_22BE3C298();
  sub_22BE18478();
}

void DateTimeContext.init(transcript:)()
{
  sub_22BE19130();
  sub_22C25A430();
  v37 = v4;
  v5 = sub_22BE5CE4C(&qword_27D9152F8, &unk_22C2CC8F0);
  sub_22BE19448(v5);
  v7 = *(v6 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE250C8();
  v9 = sub_22C26E2A4();
  v10 = sub_22BE1A3D8(v9);
  v36 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BE1AD20();
  v14 = sub_22C270454();
  v15 = sub_22BE179D8(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BE28FD8();
  v20 = type metadata accessor for TranscriptProtoDateTimeContext(0);
  sub_22C25A53C(v20);
  sub_22BE34128();
  sub_22C102C6C();
  if (v0)
  {
    sub_22C259D48();
  }

  else
  {
    sub_22C270434();
    v21 = *(v17 + 8);
    v22 = sub_22BE191C0();
    v23(v22);
    v24 = *v1;
    v25 = v1[1];
    sub_22C26E254();
    v26 = sub_22BFB1A7C();
    sub_22BE1AB5C(v26, v27, v2);
    if (v28)
    {
      sub_22BE233E8(v3, &qword_27D9152F8, &unk_22C2CC8F0);
      sub_22C108358();
      v29 = sub_22BE196B4();
      sub_22BE3C904(v29, v30);
      sub_22C259D48();
      v31 = sub_22C26E164();
      sub_22BE18524(v31);
      (*(v32 + 8))(v37);
    }

    else
    {
      sub_22C259D48();
      v33 = *(v36 + 32);
      v34 = sub_22BE196A8();
      (v33)(v34);
      v35 = *(type metadata accessor for DateTimeContext() + 20);
      sub_22C18FD4C();
      v33();
    }
  }

  sub_22BE467E4();
  sub_22BE18478();
}

uint64_t StatementID.init(transcript:)()
{
  sub_22BE28CF0();
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);

  sub_22C259FD0();
  sub_22C26E664();
  sub_22BE18B80();
  return sub_22BE1AE58();
}

void UserTurn.init(transcript:)()
{
  sub_22BE2BB34();
  v3 = v2;
  v4 = sub_22BE289D8();
  v6 = sub_22BE5CE4C(v4, v5);
  sub_22BE19448(v6);
  v8 = *(v7 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  v10 = sub_22BE1AB08();
  v11 = type metadata accessor for TranscriptProtoUserTurnEnum(v10);
  v12 = sub_22BE18000(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BE1955C();
  sub_22BE37490();
  sub_22BE22814();
  v15 = sub_22BE23E90();
  sub_22BE1AB5C(v15, v16, v11);
  if (v17)
  {
    sub_22BE233E8(v0, &qword_27D90E4F0, &qword_22C2CC7E0);
    sub_22BE5CE4C(&qword_27D9155D0, &qword_22C2CC7E8);
    sub_22BE43258();
    sub_22C1163A0();
    sub_22C108598();
    v18 = sub_22BE196B4();
    *v19 = v3;
    v19[1] = v11;
    sub_22C25A590(v18, v19);
    sub_22BE1A94C();
    sub_22BE1AE58();
  }

  else
  {
    sub_22BE1A94C();
    sub_22BE1AE58();
    v20 = sub_22C1088E8();
    sub_22BE3B620(v20, v1);
    sub_22BE33560();
    v21 = swift_getEnumCaseMultiPayload() == 1;
    sub_22BE1AE58();
    *v3 = v21;
  }

  sub_22BE36324();
  sub_22BEE93D4();
}

uint64_t TranscriptProtoStatementID.init(handwritten:)()
{
  sub_22C259E88();
  v4 = sub_22C26E674();
  sub_22C26E654();
  sub_22C1163A0();
  v5 = type metadata accessor for TranscriptProtoStatementID(0);
  sub_22C25A67C(v5);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v6 = sub_22C26E684();
  sub_22BE18524(v6);
  result = (*(v7 + 8))(v1);
  *v0 = v4;
  *(v0 + 8) = v2;
  *(v0 + 16) = v3;
  return result;
}

void TranscriptProtoUserTurn.init(handwritten:)()
{
  sub_22BE1B214();
  sub_22C25AA94();
  v1 = sub_22BE2590C();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE234F4();
  v7 = *v0;
  v8 = type metadata accessor for TranscriptProtoUserTurnEnum(0);
  sub_22C25976C();
  v13 = sub_22C18F17C(v9, v10, v11, v12);
  v14 = type metadata accessor for TranscriptProtoUserTurn(v13);
  sub_22BE38954(v14);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE1AEE4();
  swift_storeEnumTagMultiPayload();
  v15 = sub_22C25974C();
  sub_22BE19DC4(v15, v16, v17, v8);
  sub_22BE35838();
  sub_22C18FCEC();
  sub_22BE2343C();
  sub_22BE25C6C();
}

void RequestContent.init(transcript:)()
{
  sub_22BE19130();
  v101 = v5;
  v102 = v1;
  v6 = sub_22C0B1E74();
  v7 = type metadata accessor for TranscriptProtoSystemPromptResolution(v6);
  v8 = sub_22BE19448(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v11);
  v20 = sub_22BE22D7C(v12, v13, v14, v15, v16, v17, v18, v19, v94);
  v21 = type metadata accessor for TranscriptProtoRequestContentSpeechContent(v20);
  v22 = sub_22BE19448(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22BE17B98();
  sub_22BE3CFC4();
  MEMORY[0x28223BE20](v25);
  sub_22C10887C(v26, v27, v28, v29, v30, v31, v32, v33, v95);
  v34 = type metadata accessor for TranscriptProtoStatementID(0);
  v35 = sub_22BE19448(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  sub_22BE17A44();
  sub_22BE3E890(v38);
  v39 = sub_22C26E684();
  v40 = sub_22BE179D8(v39);
  v96 = v41;
  v97 = v40;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  sub_22BE17A44();
  v98 = v44;
  v45 = sub_22BE183BC();
  v46 = type metadata accessor for TranscriptProtoRequestContentTextContent(v45);
  v47 = sub_22BE18000(v46);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v47);
  sub_22BE2582C();
  MEMORY[0x28223BE20](v50);
  sub_22BE25A90();
  v51 = sub_22BE3C968();
  v53 = sub_22BE5CE4C(v51, v52);
  sub_22BE19448(v53);
  v55 = *(v54 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v56);
  sub_22BE19668();
  v57 = type metadata accessor for TranscriptProtoRequestContentEnum(0);
  v58 = sub_22BE18000(v57);
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v58);
  sub_22BE294E0();
  sub_22C0B1AF0();
  sub_22BE22814();
  v61 = sub_22BE1B010();
  sub_22BE1AB5C(v61, v62, v57);
  if (v63)
  {
    sub_22BE233E8(v0, &qword_27D90E580, &qword_22C2AE4F0);
    sub_22BE5CE4C(&qword_27D915608, &unk_22C2CC900);
    sub_22BE43258();
    sub_22BE3D554();
    sub_22C108598();
    v64 = sub_22BE196B4();
    sub_22C259EA0(v64, v65);
    sub_22BE29048();
LABEL_4:
    sub_22BE1AE58();
  }

  else
  {
    v66 = sub_22BE431F0();
    sub_22BE3B620(v66, v4);
    sub_22BE196A8();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        sub_22BE44744();
        sub_22BE341B0();
        sub_22BE3B620(v77, v78);
        v79 = sub_22BE431F0();
        sub_22BE1AA68(v79, v99);
        v80 = sub_22C259EBC();
        RequestContent.SpeechContent.init(transcript:)(v80, v81, v82, v83, v84, v85, v86, v87, v96, v97);
        sub_22BE29048();
        sub_22BE1AE58();
        sub_22C2596E0();
        sub_22BE1AE58();
        if (!v1)
        {
          goto LABEL_10;
        }

        break;
      case 2:
        sub_22BE44744();
        sub_22BE2BB28();
        sub_22BE3B620(v73, v74);
        sub_22BE431F0();
        sub_22C0E9A68();
        sub_22BE1AA68(v75, v76);
        sub_22C259EBC();
        RequestContent.SystemPromptResolution.init(transcript:)();
        sub_22BE29048();
        sub_22BE1AE58();
        sub_22C0E9A74();
        sub_22BE1AE58();
        if (!v1)
        {
LABEL_10:
          type metadata accessor for RequestContent(0);
          sub_22BE23BA8();
          goto LABEL_15;
        }

        break;
      case 3:
        sub_22BE29048();
        sub_22BE1AE58();
        sub_22BE3ACD8();
        sub_22BE1AE58();
        type metadata accessor for RequestContent(0);
        sub_22C25ADD4();
        swift_storeEnumTagMultiPayload();
        break;
      default:
        v68 = sub_22BE44744();
        sub_22BE3B620(v68, v2);
        v69 = sub_22BE385E4();
        sub_22BE1AA68(v69, v3);
        v71 = *v3;
        v70 = v3[1];
        v72 = *(v46 + 20);

        sub_22C1026C4();
        if (v102)
        {

          sub_22BE29048();
          sub_22BE1AE58();
          sub_22C259AA8();
          sub_22BE1AE58();
          sub_22BE1AB74();
          goto LABEL_4;
        }

        v88 = *v100;
        v89 = *(v100 + 1);
        v90 = *(v100 + 2);

        sub_22BE1804C();
        sub_22C26E664();
        sub_22BE29048();
        sub_22BE1AE58();
        sub_22BE18B80();
        sub_22BE1AE58();
        sub_22BE1AE58();
        sub_22BE3C5E4();
        sub_22BE1AE58();
        *v101 = v71;
        v101[1] = v70;
        v91 = type metadata accessor for RequestContent.TextContent(0);
        v92 = sub_22C25A688(*(v91 + 20));
        v93(v92, v98);
        type metadata accessor for RequestContent(0);
        sub_22BE1ACEC();
LABEL_15:
        swift_storeEnumTagMultiPayload();
        break;
    }
  }

  sub_22BE1AB28();
  sub_22BE18478();
}

void RequestContent.TextContent.init(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v13 = v12;
  v14 = sub_22BE4066C();
  v15 = type metadata accessor for TranscriptProtoStatementID(v14);
  v16 = sub_22BE19448(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BE19820();
  v19 = sub_22C26E684();
  v20 = sub_22BE1A3D8(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22BE1955C();
  v25 = v13[1];
  v26 = sub_22C25A424(*v13);
  v27 = *(type metadata accessor for TranscriptProtoRequestContentTextContent(v26) + 20);

  sub_22BE3CD7C();
  sub_22C1026C4();
  if (v27)
  {
    sub_22BE379D8();
    sub_22BE1AE58();
  }

  else
  {
    v28 = *v10;
    v29 = v22;
    v30 = v11;
    v31 = *(v10 + 1);
    v32 = *(v10 + 2);

    sub_22C25A1C4();
    sub_22BE289C0();
    sub_22C26E664();
    sub_22BE379D8();
    sub_22BE1AE58();
    sub_22BE18B80();
    sub_22BE1AE58();
    *v30 = a10;
    v30[1] = v25;
    v33 = type metadata accessor for RequestContent.TextContent(0);
    v34 = *(v29 + 32);
    v35 = sub_22C25AC20(*(v33 + 20));
    v36(v35);
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

void RequestContent.SpeechContent.init(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  sub_22C25A50C();
  v14 = sub_22C25A8F4(v13);
  v15 = type metadata accessor for TranscriptProtoStatementID(v14);
  v16 = sub_22BE19448(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BE1955C();
  v19 = sub_22C26E684();
  v20 = sub_22BE179D8(v19);
  v58 = v21;
  v59 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22BE17A44();
  sub_22BE35E00(v24);
  v25 = sub_22BE1AB74();
  v27 = sub_22BE5CE4C(v25, v26);
  sub_22BE19448(v27);
  v29 = *(v28 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v30);
  sub_22BE1B01C();
  v31 = sub_22BE5CE4C(&qword_27D9120C8, &unk_22C2CC910);
  v32 = sub_22BE19448(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22BE1958C();
  MEMORY[0x28223BE20](v35);
  sub_22BE32374();
  v36 = v10[1];
  v37 = sub_22C18F934(*v10);
  v38 = type metadata accessor for TranscriptProtoRequestContentSpeechContent(v37);
  sub_22C25A530(v38);
  sub_22C25A3C4();
  sub_22BE22814();

  sub_22C0FE3E4(v11);
  sub_22C26EBC4();
  sub_22C259804();
  sub_22BE3A034(v39, v40, v41, v42);
  sub_22C25AB04();
  sub_22C1026C4();
  if (a10)
  {

    sub_22C2596E0();
    sub_22BE1AE58();
    v43 = sub_22BE33FCC();
    sub_22BE233E8(v43, v44, &unk_22C2CC910);
    v45 = sub_22BE3C968();
    sub_22BE233E8(v45, v46, &unk_22C2CC910);
  }

  else
  {
    v47 = *v12;
    v48 = *(v12 + 1);
    v49 = *(v12 + 2);

    sub_22BE1B5EC();
    sub_22C26E664();
    sub_22C2596E0();
    sub_22BE1AE58();
    sub_22BE18B80();
    sub_22BE1AE58();
    v50 = type metadata accessor for RequestContent.SpeechContent(0);
    v51 = v50[5];
    sub_22C259804();
    sub_22BE19DC4(v52, v53, v54, v55);
    *v60 = v57;
    *(v60 + 1) = v36;
    sub_22C18FCEC();
    sub_22BE2343C();
    v56 = v50[7];
    sub_22C18FCEC();
    sub_22BE424BC();
    (*(v58 + 32))(&v60[v50[6]], v61, v59);
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

void RequestContent.SystemPromptResolution.init(transcript:)()
{
  sub_22BE19130();
  sub_22C18F140();
  v93 = v9;
  v90 = type metadata accessor for RequestContent.SystemPromptResolution.ResolutionInput(0);
  v10 = sub_22BE18000(v90);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BE17A44();
  v92 = v13;
  v14 = sub_22BE183BC();
  v89 = type metadata accessor for RequestContent.SystemPromptResolution(v14);
  v15 = sub_22BE18000(v89);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BE17A44();
  v19 = sub_22C259A68(v18);
  v20 = type metadata accessor for TranscriptProtoSystemPromptResolutionInput(v19);
  v21 = sub_22BE19448(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22BE17A44();
  v24 = sub_22BE5CE4C(&qword_27D9120D0, &qword_22C2B5F20);
  sub_22BE19448(v24);
  v26 = *(v25 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v27);
  v29 = sub_22BE1B278(v28);
  v30 = type metadata accessor for TranscriptProtoStatementID(v29);
  v31 = sub_22BE19448(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  sub_22BE19820();
  v34 = sub_22C26E684();
  v35 = sub_22BE179D8(v34);
  v95 = v36;
  v96 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  sub_22BE17A44();
  v40 = sub_22C259814(v39);
  v41 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction(v40);
  v42 = sub_22BE19448(v41);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  v45 = sub_22BE1AD20();
  v46 = type metadata accessor for RequestContent.SystemPromptResolution.UserAction(v45);
  v47 = sub_22BE19448(v46);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v47);
  sub_22BE17A44();
  sub_22BE4682C(v50);
  v51 = sub_22C26E1D4();
  v52 = sub_22C2594A0(v51);
  v99 = v53;
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v52);
  sub_22BE28FD8();
  v56 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  v57 = sub_22BE19448(v56);
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v57);
  sub_22BE17D10();
  MEMORY[0x28223BE20](v60);
  sub_22BE2937C();
  MEMORY[0x28223BE20](v61);
  sub_22BE181E4();
  if (v0[3])
  {
    v62 = v0[2];
    sub_22C26E174();
    sub_22C25ABB4();
    sub_22C101298();
    v3 = v2;
    if (v2)
    {
LABEL_12:
      sub_22BE233E8(v1, &qword_27D9082F0, &qword_22C27AB00);
      goto LABEL_13;
    }

    sub_22BE233E8(v1, &qword_27D9082F0, &qword_22C27AB00);
  }

  v63 = sub_22BE40694();
  sub_22BE19DC4(v63, v64, v65, v6);
  v66 = *v0;
  v67 = v0[1];
  sub_22C26E174();
  sub_22C101298();
  if (v3)
  {
    sub_22BE233E8(v7, &qword_27D9082F0, &qword_22C27AB00);
LABEL_11:
    v1 = v4;
    goto LABEL_12;
  }

  sub_22BE233E8(v7, &qword_27D9082F0, &qword_22C27AB00);
  v68 = type metadata accessor for TranscriptProtoSystemPromptResolution(0);
  v69 = v0 + v68[6];
  sub_22C1044CC();
  RequestContent.SystemPromptResolution.UserAction.init(transcript:)();
  v70 = v0 + v68[7];
  sub_22C25ABD8();
  sub_22C1026C4();
  v71 = *v5;
  v72 = *(v5 + 1);
  v73 = *(v5 + 2);

  sub_22BE1804C();
  sub_22C26E664();
  sub_22BE18B80();
  sub_22BE1AE58();
  v74 = v0 + v68[8];
  sub_22C25ABD8();
  sub_22C1045BC();
  if (v71)
  {
    (*(v95 + 8))(v97, v96);
    sub_22BE361FC();
    sub_22BE1AE58();
    sub_22C25AB70();
    v75 = sub_22C259FF4();
    v76(v75);
    goto LABEL_11;
  }

  RequestContent.SystemPromptResolution.ResolutionInput.init(transcript:)();
  sub_22BE187DC();
  sub_22BE19DC4(v77, v78, v79, v90);
  sub_22BE28D2C();
  sub_22BE19DC4(v80, v81, v82, v83);
  v84 = v89[8];
  swift_storeEnumTagMultiPayload();
  sub_22BE29454();
  sub_22BE2343C();
  (*(v99 + 32))(v91 + v89[5], v8, v6);
  sub_22BE3B620(v98, v91 + v89[6]);
  (*(v95 + 32))(v91 + v89[7], v97, v96);
  sub_22BE3E950(v94);
  if (v85)
  {
    v87 = v92;
    sub_22BE36658();
    swift_storeEnumTagMultiPayload();
    sub_22BE3E950(v94);
    if (!v85)
    {
      sub_22BE233E8(v94, &qword_27D9120D0, &qword_22C2B5F20);
    }
  }

  else
  {
    v86 = sub_22C1088AC();
    v87 = v92;
    sub_22BE3B620(v86, v92);
  }

  sub_22C250DB8(v87, v91 + v84);
  v88 = sub_22C1088E8();
  sub_22BE3B620(v88, v93);
LABEL_13:
  sub_22BE26148();
  sub_22BE1AE58();
  sub_22BE19650();
  sub_22BE18478();
}

void TranscriptProtoRequestContentTextContent.init(handwritten:)()
{
  sub_22BE19130();
  sub_22BE3129C();
  sub_22BE3C4D0();
  v3 = sub_22C26E684();
  v4 = sub_22BE179D8(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE2379C();
  v7 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v7);
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE1A8B4();
  v31 = *v0;
  v30 = v0[1];
  v11 = *(type metadata accessor for RequestContent.TextContent(0) + 20);
  v12 = sub_22BE48FCC();
  v13(v12);

  v14 = sub_22C26E674();
  v15 = sub_22C26E654();
  v16 = sub_22BE32C3C();
  v17 = type metadata accessor for TranscriptProtoStatementID(v16);
  sub_22C25A3A8(v17);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v18 = sub_22C259ED8();
  v19(v18);
  *v2 = v14;
  *(v2 + 8) = v15;
  *(v2 + 16) = v0;
  v20 = sub_22BE33C68();
  v23 = sub_22C18F17C(v20, v21, v22, v17);
  v24 = type metadata accessor for TranscriptProtoRequestContentTextContent(v23);
  sub_22C25A7AC(v24);
  sub_22C259860();
  sub_22BE19DC4(v25, v26, v27, v28);
  v29 = v1 + *(v0 + 6);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE1AE58();
  *v1 = v31;
  v1[1] = v30;
  sub_22BE2343C();
  sub_22BE3C298();
  sub_22BE18478();
}

void TranscriptProtoRequestContentSpeechContent.init(handwritten:)()
{
  sub_22BE19130();
  sub_22C259FE8();
  sub_22C25A554(v4);
  v104 = sub_22C26E684();
  v5 = sub_22BE179D8(v104);
  v98 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE17A44();
  v9 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v9);
  v11 = *(v10 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE36294(v13);
  v14 = sub_22C26EBC4();
  v15 = sub_22BE179D8(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BE2582C();
  MEMORY[0x28223BE20](v20);
  sub_22BE2EDB8();
  v21 = sub_22BE5CE4C(&qword_27D9120C8, &unk_22C2CC910);
  sub_22BE19448(v21);
  v23 = *(v22 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v24);
  sub_22BE23E58();
  v25 = sub_22BE5CE4C(&qword_27D90E5B0, &unk_22C2AE500);
  v26 = sub_22BE19448(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22BE29178(v29, v98);
  MEMORY[0x28223BE20](v30);
  sub_22BE19E94();
  sub_22BE35E00(v31);
  v32 = v0[1];
  v101 = *v0;
  v33 = type metadata accessor for RequestContent.SpeechContent(0);
  sub_22C25A694(v33);
  sub_22C25A4B8();
  sub_22BE22814();
  sub_22BE18190(v2);
  v100 = v32;
  if (v34)
  {
    type metadata accessor for TranscriptProtoSpeechPackage(0);
    sub_22C25975C();
    sub_22BE19DC4(v35, v36, v37, v38);
  }

  else
  {
    sub_22C25A35C();
    v39 = sub_22BE33B3C();
    v40(v39);
    sub_22C1CF23C();
    v41 = sub_22BE3AF28();
    v42(v41);

    v43 = sub_22C26EAE4();
    sub_22C1C3E60(v43, v44, v45, v46, v47, v48, v49, v50, v99, v32);
    v52 = v51;
    v53 = type metadata accessor for TranscriptProtoSpeechPackage(0);
    sub_22C25AAAC(v53);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v54 = v1;
    v1 = *(v17 + 8);
    (v1)(v54, v14);
    *v105 = v52;
    v55 = sub_22BE39EAC();
    v1(v55);
    sub_22C2597D4();
    sub_22BE19DC4(v56, v57, v58, v59);
  }

  v60 = *(v3 + 24);
  v61 = *(v99 + 16);
  v62 = sub_22C25A794();
  v63(v62);
  v64 = sub_22C26E674();
  v65 = sub_22C26E654();
  v66 = sub_22C25A788();
  v67 = type metadata accessor for TranscriptProtoStatementID(v66);
  v68 = v102 + *(v67 + 24);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v69 = *(v99 + 8);
  v70 = sub_22BE31038();
  v71(v70);
  *v102 = v64;
  *(v102 + 8) = v65;
  *(v102 + 16) = v1;
  v72 = sub_22BE19198();
  v75 = sub_22C18F17C(v72, v73, v74, v67);
  type metadata accessor for TranscriptProtoSpeechPackage(v75);
  sub_22C25975C();
  v80 = sub_22C18F17C(v76, v77, v78, v79);
  v81 = type metadata accessor for TranscriptProtoRequestContentSpeechContent(v80);
  v82 = v81[5];
  sub_22C25975C();
  sub_22BE19DC4(v83, v84, v85, v86);
  v87 = v81[6];
  sub_22BE28D2C();
  sub_22BE19DC4(v88, v89, v90, v91);
  v92 = v81[7];
  sub_22C25975C();
  sub_22BE19DC4(v93, v94, v95, v96);
  v97 = v103 + v81[8];
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C259A90();
  sub_22BE1AE58();
  *v103 = v101;
  v103[1] = v100;
  sub_22BE27B84();
  sub_22BE2343C();
  sub_22BE2343C();
  sub_22BE27B84();
  sub_22BE2343C();
  sub_22BE3C298();
  sub_22BE18478();
}

void TranscriptProtoSystemPromptResolution.init(handwritten:)()
{
  sub_22BE19130();
  v5 = v4;
  v7 = sub_22C25A554(v6);
  v8 = type metadata accessor for RequestContent.SystemPromptResolution.ResolutionInput(v7);
  v9 = sub_22BE19448(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BE17A44();
  v99 = v12;
  v13 = sub_22BE5CE4C(&qword_27D90ECB0, &unk_22C2AE730);
  sub_22BE19448(v13);
  v15 = *(v14 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  sub_22BE23A90(v17);
  v98 = sub_22C26E684();
  v18 = sub_22BE179D8(v98);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BE17A44();
  v24 = v23;
  v25 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v25);
  v27 = *(v26 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v28);
  v29 = sub_22BE25334();
  v30 = type metadata accessor for RequestContent.SystemPromptResolution.UserAction(v29);
  v31 = sub_22BE19448(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  sub_22BE28FD8();
  v34 = sub_22BE5CE4C(&qword_27D90ECC0, &qword_22C297098);
  sub_22BE19448(v34);
  v36 = *(v35 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v37);
  sub_22BE1A174();
  v38 = sub_22BE3AF28();
  v40 = sub_22BE5CE4C(v38, v39);
  sub_22BE19448(v40);
  v42 = *(v41 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v43);
  sub_22BE19668();
  sub_22BE25EFC();
  sub_22BE22814();
  v44 = sub_22C26E1D4();
  v45 = sub_22BE1B010();
  sub_22BE1AB5C(v45, v46, v44);
  if (v47)
  {
    sub_22BE233E8(v0, &qword_27D9082F0, &qword_22C27AB00);
    v96 = 0;
    v49 = 0;
  }

  else
  {
    v96 = sub_22C26E184();
    v49 = v48;
    sub_22BE1BC24(v44);
    v51 = *(v50 + 8);
    v52 = sub_22BE336E8();
    v53(v52);
  }

  v54 = type metadata accessor for RequestContent.SystemPromptResolution(0);
  sub_22BE1AA68(v5 + v54[6], v3);
  TranscriptProtoSystemPromptResolutionUserAction.init(handwritten:)();
  if (v1)
  {
    sub_22BE3CC1C();
    sub_22BE1AE58();
  }

  else
  {
    v95 = v49;
    type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction(0);
    v55 = sub_22BE22B8C();
    v91 = v56;
    sub_22BE19DC4(v55, v57, v58, v56);
    v59 = v54[5];
    v92 = sub_22C26E184();
    v94 = v60;
    (*(v20 + 16))(v24, v5 + v54[7], v98);
    v100 = v5;
    v93 = sub_22C26E674();
    v61 = sub_22C26E654();
    v63 = v62;
    v64 = type metadata accessor for TranscriptProtoStatementID(0);
    sub_22C25A3A8(v64);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v65 = *(v20 + 8);
    v66 = sub_22BE39EAC();
    v67(v66);
    *v2 = v93;
    *(v2 + 8) = v61;
    *(v2 + 16) = v63;
    v68 = sub_22BE33C68();
    sub_22BE19DC4(v68, v69, v70, v64);
    sub_22BE1AA68(v100 + v54[8], v99);
    TranscriptProtoSystemPromptResolutionInput.init(handwritten:)();
    type metadata accessor for TranscriptProtoSystemPromptResolutionInput(0);
    sub_22BE25FFC();
    v75 = sub_22C18F17C(v71, v72, v73, v74);
    v76 = type metadata accessor for TranscriptProtoSystemPromptResolution(v75);
    v77 = v76[6];
    sub_22BE1A140();
    sub_22BE19DC4(v78, v79, v80, v91);
    v81 = v76[7];
    sub_22BE1A140();
    sub_22BE19DC4(v82, v83, v84, v64);
    v85 = v76[8];
    sub_22BE32EE0();
    sub_22BE19DC4(v86, v87, v88, v89);
    v90 = v97 + v76[9];
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE3CC1C();
    sub_22BE1AE58();
    v97[2] = v96;
    v97[3] = v95;
    sub_22BE2343C();
    *v97 = v92;
    v97[1] = v94;
    sub_22BE2343C();
    sub_22BE2343C();
  }

  sub_22BE34134();
  sub_22BE18478();
}

uint64_t sub_22C21DD28(uint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(uint64_t))
{
  v5 = *a1;

  v7 = a2(v6);
  a3(v7);
  sub_22BE200D4();
  return sub_22BE1AE58();
}

uint64_t sub_22C21DF28@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t *a6@<X8>)
{
  v11 = a2();
  v12 = a3(v11);
  v13 = a4(0);
  sub_22C25A548(v13);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v14 = a5(0);
  sub_22BE18524(v14);
  result = (*(v15 + 8))(a1);
  *a6 = v12;
  return result;
}

uint64_t SpeechPackage.Token.init(transcript:)()
{
  sub_22BE28CF0();
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];

  sub_22C25A84C();
  sub_22C259FD0();
  sub_22C26EB24();
  sub_22BE26148();
  return sub_22BE1AE58();
}

uint64_t TranscriptProtoSpeechPackage.Token.init(handwritten:)()
{
  sub_22C259E88();
  v2 = sub_22C26EB34();
  v4 = v3;
  v5 = sub_22C26EB04();
  sub_22C26EB54();
  v7 = v6;
  sub_22C26EB14();
  v9 = v8;
  sub_22C26EB44();
  v11 = v10;
  v12 = v0 + *(type metadata accessor for TranscriptProtoSpeechPackage.Token(0) + 36);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v13 = sub_22C26EB64();
  sub_22BE18524(v13);
  result = (*(v14 + 8))(v1);
  *v0 = v2;
  v0[1] = v4;
  v0[2] = v5;
  v0[3] = v7;
  v0[4] = v9;
  v0[5] = v11;
  return result;
}

void RequestPrescribedPlan.init(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  sub_22C259FE8();
  v16 = sub_22C25A8F4(v15);
  v17 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool(v16);
  v18 = sub_22BE19448(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BE17A44();
  v22 = sub_22BE28E74(v21);
  v23 = type metadata accessor for TranscriptProtoStatementID(v22);
  v24 = sub_22BE19448(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  sub_22BE3C444(v27, v131);
  v28 = sub_22C26E684();
  v29 = sub_22BE179D8(v28);
  v136 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22BE17A44();
  v34 = sub_22C259A68(v33);
  v135 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(v34);
  v35 = sub_22BE18000(v135);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  sub_22BE29178(v38, v132);
  MEMORY[0x28223BE20](v39);
  sub_22C1CEC08(v40, v41, v42, v43, v44, v45, v46, v47, v133);
  v48 = type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool(0);
  v49 = sub_22BE19448(v48);
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v49);
  sub_22BE17A44();
  v53 = sub_22BE4682C(v52);
  v54 = type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool(v53);
  v55 = sub_22BE19448(v54);
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v55);
  v58 = sub_22BE1AD20();
  v59 = type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool(v58);
  v60 = sub_22BE19448(v59);
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v60);
  sub_22BE28FD8();
  v63 = type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool(0);
  v64 = sub_22BE19448(v63);
  v66 = *(v65 + 64);
  MEMORY[0x28223BE20](v64);
  sub_22BE17CBC();
  v67 = type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool(0);
  v68 = sub_22BE19448(v67);
  v70 = *(v69 + 64);
  MEMORY[0x28223BE20](v68);
  sub_22BE197B8();
  v71 = type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool(0);
  v72 = sub_22BE19448(v71);
  v74 = *(v73 + 64);
  MEMORY[0x28223BE20](v72);
  sub_22BE18DFC();
  v75 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  v76 = sub_22BE18000(v75);
  v78 = *(v77 + 64);
  MEMORY[0x28223BE20](v76);
  sub_22BE188B0();
  sub_22C102E5C();
  if (a10)
  {
    sub_22BE1C40C();
    sub_22BE1AE58();
  }

  else
  {
    v134 = v11;
    sub_22BE1824C();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_22BE1C40C();
        sub_22BE1AE58();
        v109 = sub_22C259E7C();
        sub_22BE3B620(v109, v10);
        v110 = *v10;
        v111 = v10[1];

        sub_22BE26148();
        sub_22BE1AE58();
        *v140 = v110;
        *(v140 + 8) = v111;
        type metadata accessor for RequestPrescribedPlan(0);
        sub_22BE39250();
        goto LABEL_14;
      case 2u:
        sub_22BE1C40C();
        sub_22BE1AE58();
        v90 = sub_22C259E7C();
        sub_22BE3B620(v90, v11);
        v92 = *v11;
        v91 = v134[1];
        v93 = *(v134 + 16);
        v95 = v134[3];
        v94 = v134[4];

        sub_22BE291DC();
        sub_22BE1AE58();
        sub_22C25A3F0();
        goto LABEL_14;
      case 3u:
        sub_22BE1C40C();
        sub_22BE1AE58();
        v96 = sub_22C259E7C();
        sub_22BE3B620(v96, v14);
        v98 = *v14;
        v97 = *(v14 + 8);
        v99 = *(v14 + 16);
        v101 = *(v14 + 24);
        v100 = *(v14 + 32);
        v103 = *(v14 + 40);
        v102 = *(v14 + 48);

        sub_22BE3E76C();
        sub_22BE1AE58();
        *v140 = v98;
        *(v140 + 8) = v97;
        *(v140 + 16) = v99;
        *(v140 + 24) = v101;
        *(v140 + 32) = v100;
        *(v140 + 40) = v103;
        *(v140 + 48) = v102;
        type metadata accessor for RequestPrescribedPlan(0);
        sub_22BE23BA8();
        goto LABEL_14;
      case 4u:
        sub_22BE1C40C();
        sub_22BE1AE58();
        v84 = sub_22C259E7C();
        sub_22BE3B620(v84, v13);
        v86 = *v13;
        v85 = *(v13 + 8);
        v87 = *(v13 + 16);
        v89 = *(v13 + 24);
        v88 = *(v13 + 32);

        sub_22BE3ACD8();
        sub_22BE1AE58();
        sub_22C25A3F0();
        goto LABEL_14;
      case 5u:
        sub_22BE1C40C();
        sub_22BE1AE58();
        v112 = sub_22C259E7C();
        sub_22BE3B620(v112, v141);
        v113 = *v141;
        v114 = *(v141 + 8);
        v115 = *(v141 + 16);
        v117 = *(v141 + 24);
        v116 = *(v141 + 32);

        sub_22C25A2A8();
        sub_22BE1AE58();
        sub_22C25A3F0();
        goto LABEL_14;
      case 6u:
        v118 = sub_22C259E7C();
        sub_22BE3B620(v118, v138);
        v119 = sub_22C259E7C();
        sub_22BE1AA68(v119, v137);
        sub_22C1026C4();
        v120 = *v139;
        v121 = *(v139 + 1);
        v122 = *(v139 + 2);

        sub_22C25A1C4();
        sub_22BE354D0();
        sub_22C26E664();
        sub_22BE1C40C();
        sub_22BE1AE58();
        sub_22BE18B80();
        sub_22BE1AE58();
        sub_22C25A290();
        sub_22BE1AE58();
        v123 = v137 + *(v135 + 20);
        v124 = *v123;
        v125 = *(v123 + 8);
        sub_22BE33FCC();
        sub_22BE1AE58();
        if (v125)
        {
          v126 = 0;
        }

        else
        {
          v126 = v124;
        }

        v127 = v140 + *(type metadata accessor for RequestPrescribedPlan.OpenTool(0) + 20);
        v128 = *(v136 + 32);
        v129 = sub_22BE3AF28();
        v130(v129);
        *v127 = v126;
        *(v127 + 8) = v125;
        type metadata accessor for RequestPrescribedPlan(0);
        sub_22BE31160();
        swift_storeEnumTagMultiPayload();
        break;
      case 7u:
        sub_22BE1C40C();
        sub_22BE1AE58();
        sub_22C259E7C();
        sub_22C0E9A68();
        sub_22BE3B620(v104, v105);
        v106 = *v141;
        v107 = *(v141 + 8);
        sub_22BE379D8();
        sub_22BE1AE58();
        if (v107)
        {
          v108 = 0;
        }

        else
        {
          v108 = v106;
        }

        *v140 = v108;
        *(v140 + 8) = v107;
        type metadata accessor for RequestPrescribedPlan(0);
        sub_22BE23BA8();
        goto LABEL_14;
      default:
        sub_22BE1C40C();
        sub_22BE1AE58();
        v79 = sub_22C259E7C();
        sub_22BE3B620(v79, v12);
        v81 = *v12;
        v80 = *(v12 + 8);
        v82 = *(v12 + 16);
        v83 = *(v12 + 17);

        sub_22C0E9830();
        sub_22BE1AE58();
        *v140 = v81;
        *(v140 + 8) = v80;
        *(v140 + 16) = v82;
        *(v140 + 17) = v83;
        type metadata accessor for RequestPrescribedPlan(0);
        sub_22BE31160();
LABEL_14:
        swift_storeEnumTagMultiPayload();
        break;
    }
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

uint64_t RequestPrescribedPlan.SearchTool.init(transcript:)()
{
  sub_22C25A3E0();
  v3 = *v1;
  v2 = v1[1];
  v4 = *(v1 + 16);
  v5 = *(v1 + 17);

  sub_22C0E9918();
  result = sub_22BE1AE58();
  *v0 = v3;
  *(v0 + 8) = v2;
  *(v0 + 16) = v4;
  *(v0 + 17) = v5;
  return result;
}

void RequestPrescribedPlan.ConvertTool.init(transcript:)()
{
  sub_22BE19130();
  sub_22C25A3E0();
  sub_22C25AD04(v0);

  sub_22C0E9918();
  sub_22BE1AE58();
  sub_22C25A900();
  sub_22BE18478();
}

void sub_22C21EAA8()
{
  sub_22BE2BB34();
  sub_22C25AD18();
  v3 = *v1;
  v2 = v1[1];
  v4 = *(v1 + 16);
  v6 = v1[3];
  v5 = v1[4];

  sub_22BE1B5EC();
  sub_22BE1AE58();
  *v0 = v3;
  *(v0 + 8) = v2;
  *(v0 + 16) = v4;
  *(v0 + 24) = v6;
  *(v0 + 32) = v5;
  sub_22BEE93D4();
}

void RequestPrescribedPlan.OpenTool.init(transcript:)()
{
  sub_22BE19130();
  v2 = sub_22BE1B254();
  v3 = type metadata accessor for TranscriptProtoStatementID(v2);
  v4 = sub_22BE19448(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE1955C();
  v7 = sub_22C26E684();
  v8 = sub_22C259488(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE19338();
  sub_22C25AB10();
  sub_22C1026C4();
  if (v1)
  {
    sub_22C0E9A74();
    sub_22BE1AE58();
  }

  else
  {
    sub_22C25A9B4();
    sub_22C25A5A8();
    sub_22BE18B80();
    sub_22BE1AE58();
    v13 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(0);
    sub_22BE38954(v13);
    v15 = *v14;
    v16 = *(v14 + 8);
    sub_22C0E9A74();
    sub_22BE1AE58();
    if (v16)
    {
      v17 = 0;
    }

    else
    {
      v17 = v15;
    }

    v18 = v0 + *(type metadata accessor for RequestPrescribedPlan.OpenTool(0) + 20);
    v19 = *(v10 + 32);
    v20 = sub_22BE37490();
    v21(v20);
    *v18 = v17;
    *(v18 + 8) = v16;
  }

  sub_22BE35D48();
  sub_22BE18478();
}

uint64_t RequestPrescribedPlan.OpenSuccessValueFromLatestRequestTool.init(transcript:)()
{
  sub_22BE48AF0();
  v2 = *v1;
  v3 = *(v1 + 8);
  result = sub_22BE1AE58();
  if (v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = v2;
  }

  *v0 = v5;
  *(v0 + 8) = v3;
  return result;
}

void TranscriptProtoRequestPrescribedPlan.init(handwritten:)()
{
  sub_22BE19130();
  sub_22BE3129C();
  sub_22BE4066C();
  v6 = sub_22C26E684();
  v7 = sub_22BE179D8(v6);
  v104 = v8;
  v105 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE2379C();
  v11 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v11);
  v13 = *(v12 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  v15 = sub_22BE3A208();
  v16 = type metadata accessor for RequestPrescribedPlan.OpenTool(v15);
  v17 = sub_22BE18000(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BE192E0();
  v21 = MEMORY[0x28223BE20](v20);
  v29 = sub_22BE22D7C(v21, v22, v23, v24, v25, v26, v27, v28, v100);
  v30 = type metadata accessor for RequestPrescribedPlan(v29);
  v31 = sub_22BE18000(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  sub_22BE294E0();
  v34 = sub_22BE5CE4C(&qword_27D90E608, &unk_22C2CC920);
  sub_22BE19448(v34);
  v36 = *(v35 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v37);
  v38 = sub_22BE22BFC();
  type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(v38);
  v39 = sub_22C259C00();
  v43 = sub_22C18F17C(v39, v40, v41, v42);
  v44 = *(type metadata accessor for TranscriptProtoRequestPrescribedPlan(v43) + 20);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v45 = sub_22BE19EBC();
  sub_22BE1AA68(v45, v4);
  sub_22BE196A8();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v66 = *v4;
      v67 = *(v4 + 8);
      v68 = type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool(0);
      sub_22C25A948(v68);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE46BE4();
      *v2 = v66;
      *(v2 + 8) = v67;
      break;
    case 2:
      v54 = sub_22C25A044();
      v53 = type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool(v54);
      goto LABEL_12;
    case 3:
      v56 = *v4;
      v55 = *(v4 + 8);
      v57 = *(v4 + 16);
      v59 = *(v4 + 24);
      v58 = *(v4 + 32);
      v60 = *(v4 + 48);
      v106 = *(v4 + 40);
      v61 = *(type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool(0) + 32);

      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE46BE4();

      *v2 = v56;
      *(v2 + 8) = v55;
      *(v2 + 16) = v57;
      *(v2 + 24) = v59;
      *(v2 + 32) = v58;
      *(v2 + 40) = v106;
      *(v2 + 48) = v60;
      break;
    case 4:
      v52 = sub_22C25A044();
      v53 = type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool(v52);
      goto LABEL_12;
    case 5:
      v69 = sub_22C25A044();
      v53 = type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool(v69);
LABEL_12:
      v70 = *(v53 + 28);

      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE46BE4();

      *v2 = v16;
      *(v2 + 8) = v0;
      *(v2 + 16) = v3;
      *(v2 + 24) = EnumCaseMultiPayload;
      *(v2 + 32) = v1;
      break;
    case 6:
      sub_22BE44744();
      sub_22C25A724();
      sub_22BE3B620(v71, v72);
      v73 = sub_22BE19EBC();
      sub_22BE1AA68(v73, v3);
      v74 = sub_22C259E94(v104);
      v75(v74, v3, v105);
      v103 = sub_22C26E674();
      v76 = sub_22C26E654();
      v101 = v77;
      v102 = v76;
      v78 = type metadata accessor for TranscriptProtoStatementID(0);
      sub_22C25A5EC(v78);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v79 = *(v104 + 8);
      v80 = sub_22BE18944();
      v81(v80);
      *v5 = v103;
      *(v5 + 8) = v102;
      *(v5 + 16) = v101;
      v82 = sub_22BE360A0();
      sub_22BE19DC4(v82, v83, v84, v78);
      v85 = v3 + *(v16 + 20);
      v86 = *(v85 + 8);
      if (v86)
      {
        v87 = 0;
      }

      else
      {
        v87 = *v85;
      }

      sub_22BE28D2C();
      v92 = sub_22C18F17C(v88, v89, v90, v91);
      v93 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(v92);
      v94 = *(v93 + 24);
      v95 = v2 + *(v93 + 20);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE1AE58();
      sub_22BF6AC14();
      sub_22BE2343C();
      *v95 = v87;
      *(v95 + 8) = v86;
      sub_22BE46BE4();
      sub_22C25A870();
      sub_22BE1AE58();
      break;
    case 7:
      v62 = *v4;
      v63 = *(v4 + 8);
      if (v63)
      {
        v64 = 0;
      }

      else
      {
        v64 = *v4;
      }

      v65 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool(0);
      sub_22C25A948(v65);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE46BE4();
      *v2 = v64;
      *(v2 + 8) = v63;
      break;
    default:
      v47 = *v4;
      v48 = *(v4 + 8);
      v49 = *(v4 + 16);
      v50 = *(v4 + 17);
      v51 = v2 + *(type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool(0) + 28);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE46BE4();
      *v2 = v47;
      *(v2 + 8) = v48;
      *(v2 + 16) = v49;
      *(v2 + 17) = v50;
      break;
  }

  sub_22C25A018();
  swift_storeEnumTagMultiPayload();
  v96 = sub_22C259724();
  sub_22BE19DC4(v96, v97, v98, v99);
  sub_22BE2343C();
  sub_22BE3C298();
  sub_22BE18478();
}

uint64_t TranscriptProtoRequestPrescribedPlanSearchTool.init(handwritten:)()
{
  sub_22BE48AF0();
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  v5 = *(v1 + 17);
  v6 = v0 + *(type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool(0) + 28);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v0 = v2;
  *(v0 + 8) = v3;
  *(v0 + 16) = v4;
  *(v0 + 17) = v5;
  return result;
}

void TranscriptProtoRequestPrescribedPlanConvertTool.init(handwritten:)()
{
  sub_22BE19130();
  sub_22BE48AF0();
  sub_22C25AD04(v0);
  v1 = *(type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool(0) + 32);

  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();

  sub_22C25A900();
  sub_22BE18478();
}

void sub_22C21F36C()
{
  sub_22BE1B214();
  sub_22BE48AF0();
  v3 = *v1;
  v2 = v1[1];
  v4 = *(v1 + 16);
  v6 = v1[3];
  v5 = v1[4];
  v8 = *(v7(0) + 28);

  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();

  *v0 = v3;
  *(v0 + 8) = v2;
  *(v0 + 16) = v4;
  *(v0 + 24) = v6;
  *(v0 + 32) = v5;
  sub_22BE25C6C();
}

void TranscriptProtoRequestPrescribedPlanOpenTool.init(handwritten:)()
{
  sub_22BE19130();
  sub_22BE3129C();
  v36 = v5;
  sub_22BE3C4D0();
  v6 = sub_22C26E684();
  v7 = sub_22BE179D8(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE2379C();
  v10 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v10);
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE1A8B4();
  v14 = sub_22BE37EE0();
  v15(v14, v0, v6);
  v16 = sub_22C26E674();
  sub_22C26E654();
  sub_22C25A2F0();
  v17 = type metadata accessor for TranscriptProtoStatementID(0);
  sub_22C25A3A8(v17);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v18 = sub_22C259ED8();
  v19(v18);
  *v4 = v16;
  *(v4 + 8) = v2;
  *(v4 + 16) = v3;
  sub_22BE25FFC();
  v24 = sub_22C18F17C(v20, v21, v22, v23);
  v25 = (v36 + *(type metadata accessor for RequestPrescribedPlan.OpenTool(v24) + 20));
  v26 = *(v25 + 8);
  if (v26)
  {
    v27 = 0;
  }

  else
  {
    v27 = *v25;
  }

  sub_22BE32EE0();
  v32 = sub_22C18F17C(v28, v29, v30, v31);
  v33 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(v32);
  v34 = *(v33 + 24);
  v35 = v1 + *(v33 + 20);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C0E9848();
  sub_22BE1AE58();
  sub_22BE392D4();
  sub_22BE2343C();
  *v35 = v27;
  *(v35 + 8) = v26;
  sub_22BE3C298();
  sub_22BE18478();
}

uint64_t TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool.init(handwritten:)()
{
  sub_22BE48AF0();
  v2 = *v1;
  v3 = *(v1 + 8);
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = *v1;
  }

  v5 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool(0);
  sub_22BE38954(v5);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v0 = v4;
  *(v0 + 8) = v3;
  return result;
}

uint64_t sub_22C21F620()
{
  if (*(v0 + 17))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return sub_22C1F4EB0(*v0, *(v0 + 8), v1 | *(v0 + 16));
}

uint64_t sub_22C21F6D0()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  return sub_22C1F5108();
}

uint64_t sub_22C21F754()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 6);
  return sub_22C1F5260();
}

uint64_t sub_22C21F7C8()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  return sub_22C1F53EC();
}

uint64_t sub_22C21F81C()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  return sub_22C1F5544();
}

uint64_t sub_22C21F8F0(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  return TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool.init(handwritten:)();
}

uint64_t sub_22C21F9B8()
{
  sub_22BE48AF0();
  v2 = *v1;
  v3 = v1[1];
  v5 = v4(0);
  sub_22BE38954(v5);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v0 = v2;
  v0[1] = v3;
  return result;
}

void GlobalToolIdentifier.init(transcript:)()
{
  sub_22BE3C358();
  sub_22BE28CF0();
  v3 = *v1;
  v2 = v1[1];
  v5 = v1[3];
  v4 = v1[4];
  v6 = *(v1 + 16);

  sub_22BE40CB0();
  sub_22BE1AE58();
  *v0 = v3;
  *(v0 + 8) = v2;
  *(v0 + 16) = v5;
  *(v0 + 24) = v4;
  *(v0 + 32) = v6;
  sub_22BE267B8();
}

void TranscriptProtoGlobalToolIdentifier.init(handwritten:)()
{
  sub_22BE3C358();
  v1 = v0;
  v4 = *v2;
  v3 = v2[1];
  v6 = v2[2];
  v5 = v2[3];
  v7 = *(v2 + 32);
  v8 = *(type metadata accessor for TranscriptProtoGlobalToolIdentifier(0) + 28);

  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();

  *v1 = v4;
  *(v1 + 8) = v3;
  *(v1 + 24) = v6;
  *(v1 + 32) = v5;
  *(v1 + 16) = v7;
  sub_22BE267B8();
}

uint64_t Array<A>.init(transcript:)(uint64_t *a1)
{
  v1 = *a1;

  sub_22C0F4BDC();
  v3 = v2;
  sub_22BE26148();
  sub_22BE1AE58();
  return v3;
}

uint64_t sub_22C21FC2C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = Array<A>.init(transcript:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void ClientAction.ShimParameter.init(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_22BE19130();
  sub_22C25AD88();
  v17 = sub_22C25A554(v16);
  v18 = type metadata accessor for TranscriptProtoPhotosCandidates(v17);
  v19 = sub_22BE19448(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22BE28A70(v22, v93);
  MEMORY[0x28223BE20](v23);
  sub_22BE2BB70(v24, v25, v26, v27, v28, v29, v30, v31, v94);
  v32 = sub_22BE5CE4C(&qword_27D90E7A8, &unk_22C2B5C40);
  sub_22BE19448(v32);
  v34 = *(v33 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v35);
  v37 = sub_22BE415D8(v36);
  v96 = type metadata accessor for TranscriptProtoPersonQuery(v37);
  v38 = sub_22BE18000(v96);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  sub_22BE29178(v41, v95);
  MEMORY[0x28223BE20](v42);
  v43 = sub_22BE2558C();
  v44 = type metadata accessor for TranscriptProtoShimParameter.StringQuery(v43);
  v45 = sub_22BE19448(v44);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  sub_22BE19820();
  v48 = sub_22C272594();
  v49 = sub_22BE179D8(v48);
  v97 = v50;
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v49);
  sub_22BE2582C();
  MEMORY[0x28223BE20](v53);
  sub_22BE27A50();
  MEMORY[0x28223BE20](v54);
  v55 = sub_22C2595B4();
  v56 = type metadata accessor for TranscriptProtoShimParameterEnum(v55);
  v57 = sub_22BE18000(v56);
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v57);
  sub_22BE1955C();
  sub_22C1043DC();
  if (v102)
  {
    sub_22BE2B948();
    sub_22BE1AE58();
  }

  else
  {
    sub_22BE27BA4();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_22BE2B948();
        sub_22BE1AE58();
        v81 = sub_22C1088AC();
        sub_22BE3B620(v81, v14);
        v83 = *v14;
        v82 = v14[1];

        sub_22C0E9848();
        sub_22BE1AE58();
        *v100 = v83;
        *(v100 + 8) = v82;
        type metadata accessor for ClientAction.ShimParameter(0);
        sub_22BE31160();
        break;
      case 2u:
        sub_22BE39424();
        sub_22BE3B620(v15, v13);
        v64 = sub_22BE385E4();
        sub_22BE1AA68(v64, v98);
        v65 = *(v98 + 8);
        v66 = *(v98 + 16);
        v67 = *(v96 + 24);
        sub_22BE22814();

        sub_22C0FE2E8();
        sub_22BE2B948();
        sub_22BE1AE58();
        sub_22BE1AE58();
        v84 = *v98;
        v85 = (v98 + *(v96 + 28));
        v87 = *v85;
        v86 = v85[1];

        sub_22BE191CC();
        sub_22BE1AE58();
        *v100 = v65;
        *(v100 + 8) = v66;
        *(v100 + 16) = a13;
        *(v100 + 17) = v84;
        *(v100 + 24) = v87;
        *(v100 + 32) = v86;
        type metadata accessor for ClientAction.ShimParameter(0);
        sub_22BE39250();
        break;
      case 3u:
        v68 = sub_22C1088AC();
        sub_22BE3B620(v68, v101);
        v69 = sub_22BE19EBC();
        sub_22BE1AA68(v69, v99);
        v71 = v99[1];
        v70 = v99[2];
        v72 = *v99;

        sub_22C0F2F3C(v73, v74, v75, v76, v77, v78, v79, v80);
        v89 = v88;
        sub_22BE2B948();
        sub_22BE1AE58();
        sub_22BE1AE58();
        sub_22BE33560();
        sub_22BE1AE58();
        *v100 = v71;
        *(v100 + 8) = v70;
        *(v100 + 16) = v89;
        type metadata accessor for ClientAction.ShimParameter(0);
        sub_22BE31160();
        break;
      default:
        sub_22C18F338();
        v60();
        v61 = *(v97 + 16);
        v62 = sub_22BE1B18C();
        v61(v62);
        v63 = sub_22BE25C94();
        v61(v63);
        sub_22C272864();
        v90 = *(v97 + 8);
        v91 = sub_22BE23108();
        v90(v91);
        sub_22BE2B948();
        sub_22BE1AE58();
        v92 = sub_22BE33B3C();
        v90(v92);
        type metadata accessor for ClientAction.ShimParameter(0);
        break;
    }

    swift_storeEnumTagMultiPayload();
  }

  sub_22BE18478();
}

uint64_t ClientAction.StringQuery.init(transcript:)()
{
  sub_22BE28CF0();
  v3 = *v1;
  v2 = v1[1];

  sub_22BE26148();
  result = sub_22BE1AE58();
  *v0 = v3;
  v0[1] = v2;
  return result;
}

void PersonQuery.init(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_22BE19130();
  sub_22BE271BC();
  v16 = sub_22BE1AEE4();
  v18 = sub_22BE5CE4C(v16, v17);
  sub_22BE19448(v18);
  v20 = *(v19 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v21);
  sub_22BE23E58();
  v23 = *(v14 + 1);
  v22 = *(v14 + 2);
  v24 = type metadata accessor for TranscriptProtoPersonQuery(0);
  v25 = *(v24 + 24);
  sub_22BE22814();

  sub_22C0FE2E8();
  if (v15)
  {
    sub_22C0E9A74();
    sub_22BE1AE58();
  }

  else
  {
    v26 = *v14;
    v27 = &v14[*(v24 + 28)];
    v29 = *v27;
    v28 = v27[1];

    sub_22C0E9A74();
    sub_22BE1AE58();
    *v13 = v23;
    *(v13 + 8) = v22;
    *(v13 + 16) = a13;
    *(v13 + 17) = v26;
    *(v13 + 24) = v29;
    *(v13 + 32) = v28;
  }

  sub_22BE35D48();
  sub_22BE18478();
}

uint64_t ClientAction.PhotosCandidates.init(transcript:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = a1[1];
  v4 = a1[2];
  v6 = *a1;

  sub_22C0F2F3C(v7, v8, v9, v10, v11, v12, v13, v14);
  v16 = v15;
  sub_22C0E9848();
  result = sub_22BE1AE58();
  if (v2)
  {
  }

  *a2 = v5;
  a2[1] = v4;
  a2[2] = v16;
  return result;
}

void TranscriptProtoShimParameter.init(handwritten:)()
{
  sub_22BE19130();
  v84 = v2;
  v5 = sub_22BE5CE4C(&qword_27D90E7A8, &unk_22C2B5C40);
  sub_22BE19448(v5);
  v7 = *(v6 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  v10 = sub_22BE36294(v9);
  v81 = type metadata accessor for TranscriptProtoPersonQuery(v10);
  v11 = sub_22BE18000(v81);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BE17A44();
  sub_22BE48A8C(v14);
  v15 = sub_22C272594();
  v16 = sub_22BE179D8(v15);
  v80 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BE197B8();
  v20 = sub_22C272874();
  v21 = sub_22BE1A3D8(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22BE25544();
  MEMORY[0x28223BE20](v26);
  v27 = sub_22BE195C4();
  v28 = type metadata accessor for ClientAction.ShimParameter(v27);
  v29 = sub_22BE18000(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22BE17CBC();
  v32 = sub_22BE5CE4C(&qword_27D909218, &unk_22C2CC930);
  sub_22BE19448(v32);
  v34 = *(v33 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v35);
  v36 = sub_22BE1AB08();
  type metadata accessor for TranscriptProtoShimParameterEnum(v36);
  sub_22BE1A140();
  v41 = sub_22C18F17C(v37, v38, v39, v40);
  v42 = *(type metadata accessor for TranscriptProtoShimParameter(v41) + 20);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v43 = sub_22C259E7C();
  sub_22BE1AA68(v43, v3);
  sub_22BE1BF88();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v58 = sub_22C25AA38();
      v59 = type metadata accessor for TranscriptProtoShimParameter.StringQuery(v58);
      sub_22C25A548(v59);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22C259578();
      *v4 = v0;
      v4[1] = v1;
      goto LABEL_14;
    case 2u:
      v50 = *v3;
      v49 = *(v3 + 8);
      v51 = *(v3 + 17);
      v52 = *(v3 + 24);
      v0 = *(v3 + 32);
      v53 = *(v3 + 16);

      sub_22C107718(v53, v83);
      if (v84)
      {
        swift_bridgeObjectRelease_n();

        goto LABEL_8;
      }

      v85 = v52;
      v60 = v81[6];
      type metadata accessor for TranscriptProtoPersonQuery.Handle(0);
      v61 = sub_22C259B90();
      sub_22BE19DC4(v61, v62, v63, v64);
      v65 = v81[8];
      v66 = (v82 + v81[7]);

      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22C259578();
      *(v82 + 8) = v50;
      *(v82 + 16) = v49;
      sub_22BE2343C();

      *v82 = v51;
      *v66 = v85;
      v66[1] = v0;
      sub_22BE39424();
      v67 = sub_22BE29454();
      sub_22BE3B620(v67, v68);
      goto LABEL_14;
    case 3u:
      v54 = *v3;
      v0 = *(v3 + 8);
      v55 = *(v3 + 16);

      sub_22C220C88(v56);
      if (!v2)
      {
        v69 = v57;
        v70 = type metadata accessor for TranscriptProtoPhotosCandidates(0);
        sub_22C25A4E8(v70);
        _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
        sub_22C259578();

        v4[1] = v54;
        v4[2] = v0;
        *v4 = v69;
        goto LABEL_14;
      }

      swift_bridgeObjectRelease_n();
LABEL_8:
      sub_22C259578();
      goto LABEL_9;
    default:
      sub_22C18F458();
      sub_22C259FD0();
      v44();
      sub_22C259E4C();
      sub_22C18FD4C();
      v45();
      sub_22C272854();
      if (v2)
      {
        sub_22C259578();
        v46 = *(v23 + 8);
        v47 = sub_22BE336E8();
        v46(v47);
        v48 = sub_22BE38FD8();
        v46(v48);
LABEL_9:
        sub_22BE2B948();
        sub_22BE1AE58();
      }

      else
      {
        sub_22C259578();
        v71 = *(v23 + 8);
        v72 = sub_22BE336E8();
        v71(v72);
        v73 = sub_22BE38FD8();
        v71(v73);
        v74 = *(v80 + 32);
        v75 = sub_22BE291B0();
        v76(v75);
LABEL_14:
        sub_22C25A724();
        swift_storeEnumTagMultiPayload();
        v77 = sub_22BE22B8C();
        sub_22BE19DC4(v77, v78, v79, v0);
        sub_22C25A888();
        sub_22BE2343C();
      }

      sub_22BE46D98();
      sub_22BE18478();
      return;
  }
}

uint64_t TranscriptProtoShimParameter.StringQuery.init(handwritten:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = type metadata accessor for TranscriptProtoShimParameter.StringQuery(0);
  sub_22BE48874(v5);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *a2 = v3;
  a2[1] = v4;
  return result;
}

void TranscriptProtoPersonQuery.init(handwritten:)()
{
  sub_22BE19130();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = sub_22BE5CE4C(&qword_27D90E7A8, &unk_22C2B5C40);
  sub_22BE19448(v7);
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE1B01C();
  v12 = *v4;
  v11 = v4[1];
  v13 = *(v4 + 17);
  v15 = v4[3];
  v14 = v4[4];
  v16 = *(v4 + 16);

  sub_22C107718(v16, v1);
  if (v2)
  {
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v17 = type metadata accessor for TranscriptProtoPersonQuery(0);
    v25 = v13;
    v18 = v17[6];
    type metadata accessor for TranscriptProtoPersonQuery.Handle(0);
    v19 = sub_22C259DDC();
    sub_22BE19DC4(v19, v20, v21, v22);
    v23 = v17[8];
    v24 = (v6 + v17[7]);

    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    *(v6 + 8) = v12;
    *(v6 + 16) = v11;
    sub_22BE2343C();

    *v6 = v25;
    *v24 = v15;
    v24[1] = v14;
  }

  sub_22BE19650();
  sub_22BE18478();
}

uint64_t TranscriptProtoPhotosCandidates.init(handwritten:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];

  sub_22C220C88(v8);
  if (v2)
  {

    return swift_bridgeObjectRelease_n();
  }

  else
  {
    v10 = sub_22C25A764();
    v11 = a2 + *(type metadata accessor for TranscriptProtoPhotosCandidates(v10) + 24);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();

    a2[1] = v6;
    a2[2] = v5;
    *a2 = v3;
  }

  return result;
}

uint64_t sub_22C220BFC()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  return sub_22C1F6228();
}

void sub_22C220C88(uint64_t a1)
{
  v73 = sub_22C272594();
  v2 = *(v73 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v73);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v63 = &v57 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v68 = &v57 - v10;
  MEMORY[0x28223BE20](v9);
  v64 = &v57 - v11;
  v12 = sub_22C272874();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v65 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v57 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v67 = &v57 - v21;
  MEMORY[0x28223BE20](v20);
  v66 = &v57 - v22;
  v23 = *(a1 + 16);
  v78 = MEMORY[0x277D84F90];
  sub_22BE702DC(0, v23, 0);
  v24 = v23;
  v77 = v78;
  v25 = a1;
  v71 = v2;
  v72 = a1;
  v69 = v12;
  v70 = v13;
  if (v24)
  {
    v61 = v6;
    v26 = 0;
    v27 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v62 = *(a1 + 16);
    v60 = a1 + v27;
    v58 = v19;
    v59 = v13 + 16;
    v74 = (v13 + 8);
    v75 = v24;
    v57 = (v2 + 32);
    v28 = v76;
    while (v62 != v26)
    {
      if (v26 >= *(v25 + 16))
      {
        goto LABEL_23;
      }

      v29 = v28;
      v30 = v77;
      v31 = *(v13 + 16);
      v31(v19, v60 + *(v13 + 72) * v26, v12);
      v32 = v65;
      v31(v65, v19, v12);
      v33 = v61;
      sub_22C272854();
      v76 = v29;
      if (v29)
      {
        v44 = v32;
        v48 = v19;
LABEL_20:

        v56 = *v74;
        (*v74)(v44, v12);
        v56(v48, v12);

        return;
      }

      v34 = *v74;
      (*v74)(v32, v12);
      v34(v19, v12);
      v35 = *v57;
      v36 = v63;
      v37 = v73;
      (*v57)(v63, v33, v73);
      v78 = v30;
      v39 = *(v30 + 16);
      v38 = *(v30 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_22BE702DC(v38 > 1, v39 + 1, 1);
        v37 = v73;
        v77 = v78;
      }

      ++v26;
      v40 = v77;
      *(v77 + 16) = v39 + 1;
      v2 = v71;
      v35((v40 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v71 + 72) * v39), v36, v37);
      v24 = v75;
      v28 = v76;
      v25 = v72;
      v12 = v69;
      v13 = v70;
      v19 = v58;
      if (v75 == v26)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    v28 = v76;
LABEL_11:
    v65 = (v13 + 16);
    v74 = (v13 + 8);
    v41 = (v2 + 32);
    while (1)
    {
      v42 = *(v25 + 16);
      v44 = v67;
      v43 = v68;
      if (v24 == v42)
      {

        return;
      }

      if (v24 >= v42)
      {
        break;
      }

      v45 = v25 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v46 = *(v13 + 72);
      v75 = v24;
      v47 = *(v13 + 16);
      v48 = v66;
      v47(v66, v45 + v46 * v24, v12);
      v47(v44, v48, v12);
      sub_22C272854();
      if (v28)
      {
        goto LABEL_20;
      }

      v76 = 0;
      v49 = *v74;
      (*v74)(v44, v12);
      v49(v48, v12);
      v50 = *v41;
      v51 = v64;
      v52 = v73;
      (*v41)(v64, v43, v73);
      v78 = v77;
      v54 = *(v77 + 16);
      v53 = *(v77 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_22BE702DC(v53 > 1, v54 + 1, 1);
        v52 = v73;
        v77 = v78;
      }

      v55 = v77;
      *(v77 + 16) = v54 + 1;
      v50((v55 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v54), v51, v52);
      v28 = v76;
      v24 = v75 + 1;
      v25 = v72;
      v12 = v69;
      v13 = v70;
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

void sub_22C221268(uint64_t a1)
{
  v72 = sub_22C272574();
  v2 = *(v72 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v72);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v64 = &v57 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v69 = &v57 - v10;
  MEMORY[0x28223BE20](v9);
  v65 = &v57 - v11;
  v12 = sub_22C272754();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v66 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v57 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v67 = &v57 - v21;
  MEMORY[0x28223BE20](v20);
  v68 = &v57 - v22;
  v23 = *(a1 + 16);
  v78 = MEMORY[0x277D84F90];
  sub_22BE70FB4(0, v23, 0);
  v24 = v23;
  v77 = v78;
  v70 = v13;
  v71 = a1;
  v73 = v2;
  if (v23)
  {
    v61 = v19;
    v62 = v6;
    v25 = 0;
    v63 = *(a1 + 16);
    v60 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v58 = v12;
    v59 = v13 + 16;
    v74 = (v13 + 8);
    v75 = v23;
    v57 = (v2 + 32);
    while (1)
    {
      v26 = v76;
      if (v63 == v25)
      {
        break;
      }

      if (v25 >= *(a1 + 16))
      {
        goto LABEL_22;
      }

      v27 = v25;
      v28 = v60 + *(v13 + 72) * v25;
      v29 = *(v13 + 16);
      v30 = v61;
      v29(v61, v28, v12);
      v31 = v66;
      v29(v66, v30, v12);
      sub_22C259290(&qword_27D915C98, MEMORY[0x277D728E8]);
      v32 = v62;
      sub_22C2703C4();
      if (v26)
      {
        v48 = v31;
        v47 = v30;
LABEL_19:

        v56 = *v74;
        (*v74)(v48, v12);
        v56(v47, v12);

        return;
      }

      v76 = 0;
      v33 = *v74;
      (*v74)(v31, v12);
      v33(v30, v12);
      v34 = *v57;
      v35 = v64;
      v36 = v72;
      (*v57)(v64, v32, v72);
      v78 = v77;
      v38 = *(v77 + 16);
      v37 = *(v77 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_22BE70FB4(v37 > 1, v38 + 1, 1);
        v36 = v72;
        v77 = v78;
      }

      v25 = v27 + 1;
      v39 = v77;
      *(v77 + 16) = v38 + 1;
      v34((v39 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v38), v35, v36);
      v24 = v75;
      v13 = v70;
      a1 = v71;
      v12 = v58;
      if (v75 == v25)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v66 = (v13 + 16);
    v74 = (v13 + 8);
    v40 = (v73 + 32);
    while (1)
    {
      v41 = v76;
      v42 = *(a1 + 16);
      v43 = v69;
      if (v24 == v42)
      {

        return;
      }

      if (v24 >= v42)
      {
        break;
      }

      v44 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v45 = *(v13 + 72);
      v75 = v24;
      v46 = *(v13 + 16);
      v47 = v68;
      v46(v68, v44 + v45 * v24, v12);
      v48 = v67;
      v46(v67, v47, v12);
      sub_22C259290(&qword_27D915C98, MEMORY[0x277D728E8]);
      sub_22C2703C4();
      if (v41)
      {
        goto LABEL_19;
      }

      v76 = 0;
      v49 = *v74;
      (*v74)(v48, v12);
      v49(v47, v12);
      v50 = *v40;
      v51 = v65;
      v52 = v72;
      (*v40)(v65, v43, v72);
      v78 = v77;
      v54 = *(v77 + 16);
      v53 = *(v77 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_22BE70FB4(v53 > 1, v54 + 1, 1);
        v52 = v72;
        v77 = v78;
      }

      v55 = v77;
      *(v77 + 16) = v54 + 1;
      v50((v55 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v54), v51, v52);
      v24 = v75 + 1;
      v13 = v70;
      a1 = v71;
    }

    __break(1u);
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

void PersonQuery.Handle.init(transcript:)(unsigned __int8 *a1)
{
  sub_22C259EE8(a1);
  sub_22BE1AE58();
  sub_22C25AB64();
}

void TranscriptProtoPersonQuery.Handle.init(handwritten:)(unsigned __int8 *a1)
{
  sub_22C259EE8(a1);
  v1 = sub_22C25AB58(3);
  v2 = type metadata accessor for TranscriptProtoPersonQuery.Handle(v1);
  sub_22BE38954(v2);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C25AB64();
}

void QueryPayload.init(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v24;
  a20 = v25;
  v280 = v20;
  v274 = v26;
  v27 = type metadata accessor for TranscriptProtoQueryPayload.AnswerSynthesisToolQuery(0);
  v28 = sub_22BE19448(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  sub_22BE17B98();
  v261 = v31;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v32);
  sub_22BE19E94();
  v260 = v33;
  v34 = sub_22BE183BC();
  v267 = type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery(v34);
  v35 = sub_22BE18000(v267);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v38);
  sub_22BE19E94();
  sub_22BE18950(v39);
  v40 = sub_22C2725C4();
  v41 = sub_22BE18910(v40, &v279);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  sub_22BE17B98();
  sub_22C259D70();
  MEMORY[0x28223BE20](v44);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v45);
  sub_22C259B7C();
  MEMORY[0x28223BE20](v46);
  sub_22BE19E94();
  sub_22BE18950(v47);
  v48 = sub_22C272984();
  v49 = sub_22BE179D8(v48);
  v262 = v50;
  v265 = v49;
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v49);
  sub_22BE17B98();
  v273 = v53;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v54);
  sub_22BE19E94();
  v56 = sub_22BE18950(v55);
  v57 = type metadata accessor for TranscriptProtoQueryPayload.StringQuery(v56);
  v58 = sub_22BE290A0(v57, &v281);
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v58);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v61);
  sub_22BE19E94();
  sub_22BE190A8(v62);
  v63 = sub_22BE5CE4C(&qword_27D90E7A8, &unk_22C2B5C40);
  sub_22BE19448(v63);
  v65 = *(v64 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v66);
  sub_22BE1A174();
  v68 = sub_22BE18950(v67);
  v69 = type metadata accessor for TranscriptProtoPersonQuery(v68);
  v70 = sub_22BE290A0(v69, &a10);
  v72 = *(v71 + 64);
  MEMORY[0x28223BE20](v70);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v73);
  sub_22BE19E94();
  sub_22BE18950(v74);
  v276 = sub_22C272874();
  v75 = sub_22BE179D8(v276);
  v279 = v76;
  v78 = *(v77 + 64);
  MEMORY[0x28223BE20](v75);
  sub_22BE17B98();
  v257 = v79;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v80);
  sub_22BE409D8();
  MEMORY[0x28223BE20](v81);
  sub_22BE19490();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v82);
  sub_22BE3CEC0(v83, v84, v85, v86, v87, v88, v89, v90, v252);
  v91 = sub_22C272594();
  v92 = sub_22BE179D8(v91);
  v277 = v93;
  v278 = v92;
  v95 = *(v94 + 64);
  MEMORY[0x28223BE20](v92);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v96);
  sub_22BE19490();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v97);
  sub_22BE19490();
  v259 = v98;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v99);
  sub_22BEC0508();
  MEMORY[0x28223BE20](v100);
  sub_22BE28C8C();
  MEMORY[0x28223BE20](v101);
  v102 = sub_22BE195C4();
  v103 = type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery(v102);
  v104 = sub_22BE19448(v103);
  v106 = *(v105 + 64);
  MEMORY[0x28223BE20](v104);
  sub_22BE192E0();
  MEMORY[0x28223BE20](v107);
  v108 = sub_22BE20558();
  PayloadEnum = type metadata accessor for TranscriptProtoQueryPayloadEnum(v108);
  v110 = sub_22BE18000(PayloadEnum);
  v112 = *(v111 + 64);
  MEMORY[0x28223BE20](v110);
  sub_22BE17CBC();
  v113 = v280;
  sub_22C1042EC();
  v280 = v113;
  if (v113)
  {
    sub_22BE1B544();
LABEL_36:
    sub_22BE1AE58();
LABEL_37:
    sub_22BE18478();
  }

  else
  {
    v253 = v23;
    sub_22BE3911C();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_22BE39424();
        sub_22C25A8AC(&a9);
        sub_22BE3B620(v215, v216);
        sub_22C1088E8();
        sub_22C25ABA8(&a11);
        sub_22BE1AA68(v217, v218);
        v220 = *(v265 + 8);
        v219 = *(v265 + 16);
        v221 = v265 + *(v254 + 24);
        sub_22BE22944(&v280);
        sub_22BE22814();

        v222 = v280;
        sub_22C0FE2E8();
        v280 = v222;
        if (v222)
        {

          sub_22BE1B544();
          sub_22C1CEFC8();
          sub_22BE1AE58();
          sub_22BE1AE58();
          goto LABEL_36;
        }

        sub_22BE1B544();
        sub_22C1CEFC8();
        sub_22BE1AE58();
        sub_22BE1AE58();
        v223 = HIBYTE(a10);
        v224 = *v265;
        v225 = (v265 + *(v254 + 28));
        v227 = *v225;
        v226 = v225[1];

        sub_22BE2565C();
        sub_22BE1AE58();
        v228 = v274;
        *v274 = v220;
        v228[1] = v219;
        *(v228 + 16) = v223;
        *(v228 + 17) = v224;
        v228[3] = v227;
        v228[4] = v226;
        type metadata accessor for QueryPayload(0);
        sub_22BE1ACEC();
        goto LABEL_43;
      case 2u:
        sub_22BE385E4();
        sub_22C25A87C(&a12);
        sub_22BE3B620(v188, v189);
        sub_22C259FB8();
        sub_22BE46048(&a14);
        sub_22BE1AA68(v190, v191);
        sub_22BE2ED7C(&v281);
        v193 = v22 + v192;
        sub_22BE3C6E0(&a13);
        v194 = v280;
        sub_22C1022DC();
        v280 = v194;
        if (v194)
        {
          goto LABEL_29;
        }

        sub_22BE2BD40(&v278);
        v196 = *(v195 + 16);
        sub_22BE260B8();
        sub_22C25A5E0();
        v197();
        sub_22BE44844();
        v198 = v280;
        sub_22C272974();
        v280 = v198;
        if (!v198)
        {
          v229 = *(v193 + 1);
          v230 = sub_22BE1AB74();
          v231(v230);
          sub_22BE1B544();
          sub_22C1CEFC8();
          sub_22BE1AE58();
          sub_22C25A164();
          sub_22BE1AE58();
          v233 = *v22;
          v232 = v22[1];

          sub_22BE39EAC();
          sub_22BE1AE58();
          v234 = *(v262 + 32);
          v235 = sub_22BE1A6BC();
          v236(v235);
          v237 = type metadata accessor for QueryPayload.StringQuery(0);
          sub_22BE48874(v237);
          *v238 = v233;
          v238[1] = v232;
          type metadata accessor for QueryPayload(0);
          sub_22BE23BA8();
          goto LABEL_43;
        }

        v199 = *(v193 + 1);
        v200 = sub_22BE1AB74();
        v201(v200);
LABEL_29:
        sub_22BE1B544();
        sub_22C1CEFC8();
        sub_22BE1AE58();
        sub_22C25A164();
        sub_22BE1AE58();
        goto LABEL_36;
      case 3u:
        sub_22BE385E4();
        sub_22BE46048(&a16);
        sub_22BE3B620(v202, v203);
        sub_22C1088AC();
        sub_22BE37B14(&a17);
        sub_22BE1AA68(v204, v205);
        v206 = v21 + *(v267 + 20);
        sub_22BE351B8(&a15);
        v207 = v280;
        sub_22C1022DC();
        v280 = v207;
        if (v207)
        {
          goto LABEL_33;
        }

        sub_22BE2BD40(&v278);
        v209 = *(v208 + 16);
        sub_22BE37B20();
        sub_22C25A5E0();
        v210();
        v211 = v280;
        sub_22C272974();
        v280 = v211;
        if (!v211)
        {
          v239 = *(v206 + 1);
          v240 = sub_22BE33FCC();
          v241(v240);
          sub_22BE1B544();
          sub_22C1CEFC8();
          sub_22BE1AE58();
          sub_22C25A14C();
          sub_22BE1AE58();
          v242 = *v21;

          sub_22BE1AB74();
          sub_22BE1AE58();
          v243 = *(v262 + 32);
          v244 = sub_22BE29264();
          v245(v244);
          *(v274 + *(type metadata accessor for QueryPayload.IdentifierQuery(0) + 20)) = v242;
          type metadata accessor for QueryPayload(0);
          sub_22BE23BA8();
          goto LABEL_43;
        }

        v212 = *(v206 + 1);
        v213 = sub_22BE33FCC();
        v214(v213);
LABEL_33:
        sub_22BE1B544();
        sub_22C1CEFC8();
        sub_22BE1AE58();
        sub_22C25A14C();
        sub_22BE1AE58();
        goto LABEL_36;
      case 4u:
        v154 = sub_22BE385E4();
        sub_22BE3B620(v154, v260);
        v155 = sub_22BE385E4();
        sub_22BE1AA68(v155, v261);
        v156 = *v261;
        sub_22BE5CE4C(&qword_27D9155C8, &unk_22C2CC7D0);
        v157 = sub_22C273D04();
        v158 = 0;
        v159 = *(v156 + 64);
        v160 = *(v156 + 32);
        sub_22BE26A98();
        v264 = (v277 + 8);
        sub_22C25AA88(v279 + 32);
        sub_22BE36638(v161);
        v162 = v274;
        sub_22C1CEFC8();
        v269 = v157;
        v255 = v164;
        while (2)
        {
          if (v163)
          {
            sub_22BE22BE8();
            v271 = v166;
          }

          else
          {
            v167 = v158;
            do
            {
              v158 = v167 + 1;
              if (__OFADD__(v167, 1))
              {
                __break(1u);
                goto LABEL_47;
              }

              if (v158 >= v164)
              {
                sub_22BE1B544();
                sub_22BE1AE58();
                sub_22BE1AE58();
                sub_22BE19454();
                sub_22BE1AE58();
                *v162 = v157;
                type metadata accessor for QueryPayload(0);
                sub_22BE31160();
                goto LABEL_43;
              }

              sub_22C25AC58();
            }

            while (!v168);
            sub_22BE4878C();
            v271 = v169;
          }

          v170 = v165 | (v158 << 6);
          sub_22C25A8B8();
          v172 = v171[1];
          v272 = *v171;
          v174 = *(v173 + 72);
          v175 = *(v173 + 16);
          v176 = sub_22C25A794();
          (v175)(v176);
          sub_22C25A254();
          v175();
          v177 = sub_22BE1B18C();
          (v175)(v177);
          v273 = v172;

          sub_22C25A610();
          v178 = v280;
          sub_22C272864();
          v280 = v178;
          if (v178)
          {
            v246 = *v264;
            v247 = sub_22BE1AEE4();
            v246(v247);

            v248 = sub_22BE31038();
            v246(v248);
            sub_22BE1B544();
            sub_22C1CEFC8();
            sub_22BE1AE58();
            sub_22BE1AE58();
            goto LABEL_36;
          }

          v179 = *v264;
          v180 = sub_22BE1AEE4();
          v179(v180);
          v181 = v279;
          v182 = *(v279 + 32);
          v183 = v276;
          v182(v275, v257, v276);
          (v179)(v259, v278);
          sub_22C259F70();
          sub_22C25977C(v184);
          v157 = v269;
          v185 = (v269[6] + 16 * v170);
          v186 = v273;
          *v185 = v272;
          v185[1] = v186;
          v182(v269[7] + *(v181 + 72) * v170, v275, v183);
          sub_22C25A864();
          if (!v152)
          {
            v269[2] = v187;
            v162 = v274;
            sub_22C1CEFC8();
            v164 = v255;
            v163 = v271;
            continue;
          }

          goto LABEL_48;
        }

      default:
        v114 = sub_22BE385E4();
        v116 = v115;
        sub_22BE3B620(v114, v115);
        sub_22BE19EBC();
        sub_22BEE94A4(&v272);
        sub_22BE1AA68(v117, v118);
        v119 = *v116;
        sub_22BE5CE4C(&qword_27D9155C8, &unk_22C2CC7D0);
        sub_22BE3D3E0();
        sub_22C273D04();
        v120 = 0;
        sub_22C25A43C();
        v121 = *(v119 + 32);
        sub_22BE26A98();
        v124 = v123 >> 6;
        v263 = (v277 + 8);
        v266 = v119;
        v275 = v125;
        v258 = v123 >> 6;
        break;
    }

    while (v122)
    {
      sub_22BE22BE8();
      v268 = v128;
LABEL_12:
      v132 = v126 | (v120 << 6);
      v133 = *(v266 + 56);
      v134 = (*(v266 + 48) + 16 * v132);
      v135 = v134[1];
      v270 = *v134;
      v272 = v132;
      v136 = *(v127 + 16);
      v136(v253, v133 + *(v127 + 72) * v132, v278);
      v137 = sub_22BE31038();
      (v136)(v137);
      v138 = sub_22BE36680();
      (v136)(v138);
      v273 = v135;

      v139 = v280;
      sub_22C272864();
      v280 = v139;
      if (v139)
      {
        v249 = *v263;
        v250 = sub_22BE336E8();
        v249(v250);

        v251 = sub_22BE38FD8();
        v249(v251);
        sub_22BE1B544();
        sub_22C1CEFC8();
        sub_22BE1AE58();
        sub_22C25A134();
        sub_22BE1AE58();
        goto LABEL_36;
      }

      v140 = *v263;
      v141 = sub_22BE336E8();
      v140(v141);
      v142 = *(v279 + 32);
      v143 = sub_22BE27BA4();
      v144 = v276;
      v142(v143);
      v145 = sub_22BE1AB1C();
      v140(v145);
      sub_22C259DA0();
      sub_22C25977C(v146);
      v147 = v275;
      v149 = (*(v275 + 48) + 16 * v148);
      v150 = v273;
      *v149 = v270;
      v149[1] = v150;
      (v142)(*(v147 + 56) + *(v279 + 72) * v148, v256, v144);
      v151 = *(v147 + 16);
      v152 = __OFADD__(v151, 1);
      v153 = v151 + 1;
      if (v152)
      {
        goto LABEL_49;
      }

      *(v275 + 16) = v153;
      v124 = v258;
      v122 = v268;
    }

    v129 = v120;
    while (1)
    {
      v120 = v129 + 1;
      if (__OFADD__(v129, 1))
      {
        break;
      }

      if (v120 >= v124)
      {
        sub_22BE1B544();
        sub_22BE1AE58();
        sub_22C25A134();
        sub_22BE1AE58();
        sub_22BE18944();
        sub_22BE1AE58();
        *v274 = v275;
        type metadata accessor for QueryPayload(0);
        sub_22BE23BA8();
LABEL_43:
        swift_storeEnumTagMultiPayload();
        goto LABEL_37;
      }

      sub_22C25AC58();
      if (v130)
      {
        sub_22BE4878C();
        v268 = v131;
        goto LABEL_12;
      }
    }

LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
  }
}

void TranscriptProtoQueryPayload.init(handwritten:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v25;
  a20 = v26;
  v27 = sub_22C259F34();
  v28 = type metadata accessor for QueryPayload.IdentifierQuery(v27);
  v29 = sub_22BE290A0(v28, &a16);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v32);
  sub_22BE19E94();
  sub_22BE18950(v33);
  v34 = sub_22C272984();
  v35 = sub_22BE179D8(v34);
  v242 = v36;
  v243 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  sub_22BE17A44();
  v39 = sub_22BE5CE4C(&qword_27D909280, &unk_22C294B50);
  sub_22BE19448(v39);
  v41 = *(v40 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v42);
  sub_22BE1A174();
  v43 = sub_22BE183BC();
  v44 = type metadata accessor for QueryPayload.StringQuery(v43);
  v45 = sub_22BE290A0(v44, &a13);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v48);
  sub_22BE19E94();
  sub_22C259DB4(v49);
  v50 = sub_22BE5CE4C(&qword_27D90E7A8, &unk_22C2B5C40);
  sub_22BE19448(v50);
  v52 = *(v51 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v53);
  sub_22BE1A174();
  v55 = v54;
  sub_22BE183BC();
  v263 = sub_22C272594();
  v56 = sub_22BE179D8(v263);
  v261 = v57;
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v56);
  sub_22BE17B98();
  v249 = v60;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v61);
  sub_22BE19490();
  v260 = v62;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v63);
  sub_22C1CEC1C();
  v65 = MEMORY[0x28223BE20](v64);
  sub_22C259838(v65, v66, v67, v68, v69, v70, v71, v72, v234);
  v265 = sub_22C272874();
  v73 = sub_22BE179D8(v265);
  v262 = v74;
  v76 = *(v75 + 64);
  MEMORY[0x28223BE20](v73);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v77);
  sub_22C259B7C();
  MEMORY[0x28223BE20](v78);
  sub_22BE19490();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v79);
  sub_22BE19E94();
  v81 = sub_22C259DF0(v80);
  Payload = type metadata accessor for QueryPayload(v81);
  v83 = sub_22BE18000(Payload);
  v85 = *(v84 + 64);
  MEMORY[0x28223BE20](v83);
  v86 = sub_22BE1AD20();
  PayloadEnum = type metadata accessor for TranscriptProtoQueryPayloadEnum(v86);
  v88 = sub_22BE18000(PayloadEnum);
  v90 = *(v89 + 64);
  MEMORY[0x28223BE20](v88);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v91);
  sub_22BE2937C();
  MEMORY[0x28223BE20](v92);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v93);
  sub_22BE19E94();
  v250 = v94;
  v95 = sub_22BE183BC();
  v96 = type metadata accessor for TranscriptProtoQueryPayload(v95);
  v97 = v96 - 8;
  v98 = *(*(v96 - 8) + 64);
  MEMORY[0x28223BE20](v96);
  sub_22BE1955C();
  sub_22C25975C();
  sub_22BE19DC4(v99, v100, v101, v102);
  v103 = *(v97 + 28);
  v258 = v22;
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v104 = sub_22BE3D5C8();
  v251 = PayloadEnum;
  sub_22BE19DC4(v104, v105, v106, PayloadEnum);
  v107 = *(v97 + 28);
  v257 = v23;
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C25A20C();
  v108 = sub_22BE36658();
  sub_22BE1AA68(v108, v109);
  sub_22BE2BA80();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v208 = *v24;
      v207 = v24[1];
      v267 = *(v24 + 17);
      v209 = v24[4];
      v264 = v24[3];
      v210 = *(v24 + 16);

      sub_22C107718(v210, v55);
      if (v21)
      {
        swift_bridgeObjectRelease_n();

        goto LABEL_28;
      }

      v220 = type metadata accessor for TranscriptProtoPersonQuery(0);
      v221 = v220[6];
      type metadata accessor for TranscriptProtoPersonQuery.Handle(0);
      sub_22BE1A140();
      sub_22BE19DC4(v222, v223, v224, v225);
      v226 = v220[8];
      v227 = (v20 + v220[7]);

      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE1B6AC();
      sub_22BE1B544();
      sub_22BE1AE58();
      *(v20 + 8) = v208;
      *(v20 + 16) = v207;
      sub_22BE2343C();

      *v20 = v267;
      *v227 = v264;
      v227[1] = v209;
      v187 = v251;
      sub_22BE447E4();
      swift_storeEnumTagMultiPayload();
      sub_22BE324B0();
      sub_22BE3B620(v20, v250);
      v111 = v258;
      goto LABEL_32;
    case 2u:
      sub_22BE44744();
      sub_22C108C10(&a14);
      sub_22BE3B620(v165, v166);
      sub_22BE29370();
      sub_22C25A87C(&a15);
      sub_22BE1AA68(v167, v168);
      v169 = sub_22C259D90();
      v170(v169, Payload, v243);
      sub_22C272964();
      v171 = *(v242 + 8);
      v172 = sub_22BE18944();
      v173(v172);
      v174 = sub_22C2725C4();
      v175 = sub_22BE360A0();
      sub_22BE19DC4(v175, v176, v177, v174);
      sub_22BE2ED7C(&a13);
      v179 = (Payload + v178);
      v180 = v179[1];
      v266 = *v179;
      v181 = type metadata accessor for TranscriptProtoQueryPayload.StringQuery(0);
      v182 = *(v181 + 20);
      sub_22BE1A140();
      sub_22BE19DC4(v183, v184, v185, v174);
      v186 = *(v181 + 24);

      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE1B6AC();
      v111 = type metadata accessor for QueryPayload.StringQuery;
      sub_22BE1AE58();
      sub_22BE431C0();
      sub_22BE1AE58();
      sub_22BE1B544();
      sub_22C25ADEC();
      sub_22BE2343C();
      *v250 = v266;
      v250[1] = v180;
      v187 = PayloadEnum;
      swift_storeEnumTagMultiPayload();
      goto LABEL_32;
    case 3u:
      sub_22BE44744();
      sub_22C25A87C(&a17);
      sub_22BE3B620(v188, v189);
      v190 = sub_22C259FB8();
      sub_22BE1AA68(v190, v241);
      v191 = sub_22C259D90();
      v192(v191, v241, v243);
      sub_22C272964();
      v193 = *(v242 + 8);
      v194 = sub_22BE18944();
      v195(v194);
      v196 = sub_22C2725C4();
      v197 = sub_22C25974C();
      sub_22BE19DC4(v197, v198, v199, v196);
      sub_22BE2ED7C(&a16);
      v201 = *(v241 + v200);
      v202 = type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery(0);
      sub_22BE33FC0(v202);
      sub_22BE1A140();
      sub_22BE19DC4(v203, v204, v205, v196);
      v206 = *(v242 + 32);

      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE1B6AC();
      v111 = type metadata accessor for QueryPayload.IdentifierQuery;
      sub_22BE1AE58();
      sub_22C0B1AF0();
      sub_22BE1AE58();
      sub_22BE1B544();
      sub_22C25ADEC();
      sub_22BE2343C();
      *v250 = v201;
      v187 = PayloadEnum;
      swift_storeEnumTagMultiPayload();
      goto LABEL_32;
    case 4u:
      v139 = *v24;
      sub_22BE5CE4C(&qword_27D9155F0, &qword_22C2CC8C8);
      sub_22BE3D3E0();
      v111 = sub_22C273D04();
      v140 = 0;
      sub_22C25A43C();
      v240 = v141;
      v142 = *(v139 + 32);
      sub_22BE185B4();
      v145 = v144 & v143;
      sub_22C25A350();
      sub_22C1CEFB0(v146);
      v245 = (v262 + 8);
      sub_22C25AA88(v261 + 32);
      sub_22BE417A8(v147);
      v247 = v148;
      while (2)
      {
        if (v145)
        {
          sub_22C25A478();
        }

        else
        {
          v150 = v140;
          do
          {
            v140 = v150 + 1;
            if (__OFADD__(v150, 1))
            {
              __break(1u);
              goto LABEL_38;
            }

            if (v140 >= v237)
            {

              v211 = v236;
              v212 = v236 + *(type metadata accessor for TranscriptProtoQueryPayload.AnswerSynthesisToolQuery(0) + 20);
              _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
              sub_22BE1B6AC();
              sub_22BE1B544();
              sub_22C25ADEC();
              *v236 = v111;
              v187 = PayloadEnum;
              goto LABEL_31;
            }

            ++v150;
          }

          while (!*(v240 + 8 * v140));
          sub_22BE29270();
          v145 = v152 & v151;
        }

        v153 = v149 | (v140 << 6);
        v154 = (*(v139 + 48) + 16 * v153);
        v155 = v154[1];
        v253 = *v154;
        v156 = *(v262 + 16);
        v156(v255, *(v139 + 56) + *(v262 + 72) * v153, v265);
        v157 = sub_22BF6AC14();
        (v156)(v157);

        sub_22C272854();
        if (v21)
        {
          v228 = *v245;
          v229 = sub_22BE1824C();
          v228(v229);

          v230 = sub_22BE29454();
          v228(v230);

          goto LABEL_28;
        }

        v158 = *v245;
        v159 = sub_22BE1824C();
        v158(v159);
        v160 = *(v261 + 32);
        v160(v260, v249, v263);
        v161 = sub_22C25AD50();
        v158(v161);
        sub_22BE270BC();
        sub_22C25977C(v162);
        v111 = v247;
        sub_22C25A8D0((*(v247 + 48) + 16 * v153));
        (v160)(v163 + *(v261 + 72) * v153);
        sub_22C25A500();
        if (!v138)
        {
          *(v247 + 16) = v164;
          continue;
        }

        goto LABEL_39;
      }

    default:
      v110 = *v24;
      sub_22BE5CE4C(&qword_27D9155F0, &qword_22C2CC8C8);
      sub_22BE3D3E0();
      v111 = sub_22C273D04();
      v112 = 0;
      sub_22C25A43C();
      v238 = v113;
      v114 = *(v110 + 32);
      sub_22BE26A98();
      v116 = v115 >> 6;
      v244 = (v262 + 8);
      sub_22C25AA88(v261 + 32);
      sub_22BE417A8(v117);
      v119 = v21;
      v246 = v120;
      v239 = v116;
      break;
  }

  while (1)
  {
    if (!v118)
    {
      v123 = v112;
      while (1)
      {
        v112 = v123 + 1;
        if (__OFADD__(v123, 1))
        {
          break;
        }

        if (v112 >= v116)
        {

          v211 = v235;
          v213 = v235 + *(type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery(0) + 20);
          _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
          sub_22BE1B6AC();
          sub_22BE1B544();
          sub_22C25ADEC();
          *v235 = v111;
          v187 = v251;
          sub_22BE34198();
LABEL_31:
          swift_storeEnumTagMultiPayload();
          sub_22BE324B0();
          sub_22BE3B620(v211, v250);
LABEL_32:
          sub_22BE233E8(v257, &qword_27D90EA88, &unk_22C2AE690);
          sub_22BE324B0();
          v214 = sub_22BE33FCC();
          sub_22BE3B620(v214, v215);
          v216 = sub_22BE2500C();
          sub_22BE19DC4(v216, v217, v218, v187);
          v219 = sub_22BE19EBC();
          sub_22BE1AA68(v219, v111);
          sub_22BE1B544();
          goto LABEL_33;
        }

        ++v123;
        if (*(v238 + 8 * v112))
        {
          v268 = v119;
          sub_22BE4878C();
          v254 = v124;
          goto LABEL_10;
        }
      }

LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      return;
    }

    v268 = v119;
    sub_22BE22BE8();
    v254 = v122;
LABEL_10:
    v125 = v121 | (v112 << 6);
    sub_22C25A8B8();
    v127 = v126[1];
    v256 = *v126;
    v129 = *(v262 + 16);
    v129(v252, v128 + *(v262 + 72) * v125, v265);
    v130 = sub_22BE33BE8();
    (v129)(v130);

    sub_22C272854();
    if (v268)
    {
      break;
    }

    v131 = *v244;
    v132 = sub_22BE3E79C();
    v131(v132);
    v133 = *(v261 + 32);
    v133(v259, v248, v263);
    v134 = sub_22BE426E8();
    v131(v134);
    sub_22C259F70();
    sub_22C25977C(v135);
    v111 = v246;
    sub_22C25A8D0((*(v246 + 48) + 16 * v125));
    (v133)(v136 + *(v261 + 72) * v125);
    sub_22C25A500();
    if (v138)
    {
      goto LABEL_40;
    }

    *(v246 + 16) = v137;
    v119 = 0;
    v116 = v239;
    v118 = v254;
  }

  v231 = *v244;
  v232 = sub_22BE3E79C();
  v231(v232);

  v233 = sub_22BE426E8();
  v231(v233);

LABEL_28:
  sub_22BE1B6AC();
  sub_22BE1AE58();
LABEL_33:
  sub_22BE1AE58();
  sub_22BE46D98();
  sub_22BE18478();
}

void QueryPayload.StringQuery.init(transcript:)()
{
  sub_22BE19130();
  sub_22BE38A98();
  sub_22BE2054C(v3);
  v4 = sub_22C2725C4();
  v5 = sub_22BE1A3D8(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE17D10();
  MEMORY[0x28223BE20](v8);
  sub_22BE39EE8();
  v9 = sub_22C272984();
  v10 = sub_22BE41130(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  v15 = sub_22BE1AD20();
  v16 = type metadata accessor for TranscriptProtoQueryPayload.StringQuery(v15);
  sub_22C25A53C(v16);
  sub_22C25AB04();
  sub_22C1022DC();
  if (v1)
  {
    sub_22BE379D8();
    sub_22BE1AE58();
  }

  else
  {
    sub_22C25A858();
    v18 = *(v17 + 16);
    v19 = sub_22BF0AFB8();
    v20(v19);
    sub_22BE44844();
    sub_22C272974();
    v21 = *(v0 + 8);
    v22 = sub_22BE33560();
    v23(v22);
    v24 = *v2;
    v25 = v2[1];

    sub_22BE379D8();
    sub_22BE1AE58();
    v26 = *(v12 + 32);
    v27 = sub_22BE354DC();
    v28(v27);
    v29 = type metadata accessor for QueryPayload.StringQuery(0);
    sub_22C25A0A4(v29);
    *v30 = v24;
    v30[1] = v25;
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

void QueryPayload.IdentifierQuery.init(transcript:)()
{
  sub_22BE19130();
  sub_22C18F140();
  sub_22BE2054C(v2);
  v3 = sub_22C2725C4();
  v4 = sub_22BE1A3D8(v3);
  v27 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE17D10();
  MEMORY[0x28223BE20](v8);
  sub_22BE39EE8();
  v9 = sub_22C272984();
  v10 = sub_22BE41130(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  v15 = sub_22BE1AD20();
  v16 = v0 + *(type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery(v15) + 20);
  sub_22C1022DC();
  if (v1)
  {
    sub_22BE26148();
    sub_22BE1AE58();
  }

  else
  {
    sub_22C25A080();
    v17 = sub_22BF0AFB8();
    v18(v17);
    sub_22BE44844();
    sub_22C272974();
    v19 = *(v27 + 8);
    v20 = sub_22BE33560();
    v21(v20);
    v22 = *v0;

    sub_22BE26148();
    sub_22BE1AE58();
    v23 = *(v12 + 32);
    v24 = sub_22BE1A6BC();
    v25(v24);
    *(v26 + *(type metadata accessor for QueryPayload.IdentifierQuery(0) + 20)) = v22;
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

void sub_22C223BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  sub_22BE3129C();
  sub_22BE417A8(v13);
  v76 = sub_22C272874();
  v14 = sub_22BE179D8(v76);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BE17B98();
  sub_22BE2BCB4();
  MEMORY[0x28223BE20](v19);
  sub_22BE4202C(v20, v21, v22, v23, v24, v25, v26, v27, v67);
  v28 = sub_22C272594();
  v29 = sub_22C2594A0(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v34);
  sub_22BE426BC();
  MEMORY[0x28223BE20](v35);
  sub_22BE324EC();
  v36 = *v10;
  sub_22BE5CE4C(&qword_27D9155C8, &unk_22C2CC7D0);
  sub_22BE3D3E0();
  v37 = sub_22C273D04();
  v38 = 0;
  sub_22C25A43C();
  v68 = v39;
  v40 = *(v36 + 32);
  sub_22BE26A98();
  v43 = v42 >> 6;
  v72 = v31;
  v70 = (v31 + 8);
  v69 = v42 >> 6;
  v71 = v44;
  while (1)
  {
    if (!v41)
    {
      v47 = v38;
      while (1)
      {
        v38 = v47 + 1;
        if (__OFADD__(v47, 1))
        {
          break;
        }

        if (v38 >= v43)
        {
          sub_22BE1AE58();
          sub_22C1CF2AC();
          *v63 = v37;
          goto LABEL_13;
        }

        ++v47;
        if (*(v68 + 8 * v38))
        {
          sub_22BE4878C();
          v73 = v48;
          goto LABEL_9;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
      return;
    }

    sub_22BE22BE8();
    v73 = v46;
LABEL_9:
    v49 = v45 | (v38 << 6);
    v50 = (*(v36 + 48) + 16 * v49);
    v51 = v50[1];
    v74 = *v50;
    v52 = *(v72 + 16);
    v52(v12, *(v36 + 56) + *(v72 + 72) * v49, v11);
    v53 = sub_22BE25D0C();
    (v52)(v53);
    v54 = sub_22BE3CC34();
    (v52)(v54);

    sub_22C272864();
    if (a10)
    {
      break;
    }

    a10 = 0;
    v55 = *v70;
    v56 = sub_22BE3AF28();
    v55(v56);
    v57 = *(v16 + 32);
    v57(v75, v77, v76);
    (v55)(v12, v11);
    sub_22C259DA0();
    sub_22C25977C(v58);
    v37 = v71;
    sub_22C25AB88(v71[6]);
    v57(v71[7] + *(v16 + 72) * v59, v75, v76);
    v60 = v71[2];
    v61 = __OFADD__(v60, 1);
    v62 = v60 + 1;
    if (v61)
    {
      goto LABEL_16;
    }

    v71[2] = v62;
    v43 = v69;
    v41 = v73;
  }

  v64 = *v70;
  v65 = sub_22BE3AF28();
  v64(v65);

  v66 = sub_22C259FF4();
  v64(v66);
  sub_22BE1AE58();
LABEL_13:
  sub_22BEE94B0();
  sub_22BE18478();
}

void TranscriptProtoQueryPayload.StringQuery.init(handwritten:)()
{
  sub_22BE19130();
  sub_22C259F34();
  v2 = sub_22C272984();
  v3 = sub_22BE179D8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE2379C();
  v8 = sub_22BE5CE4C(&qword_27D909280, &unk_22C294B50);
  sub_22BE19448(v8);
  v10 = *(v9 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE1A8B4();
  v12 = sub_22C259E4C();
  v13(v12, v1, v2);
  sub_22C272964();
  v14 = *(v5 + 8);
  v15 = sub_22BE3E8FC();
  v16(v15);
  v17 = sub_22C2725C4();
  v18 = sub_22BE33C68();
  v21 = sub_22C18F17C(v18, v19, v20, v17);
  v22 = type metadata accessor for QueryPayload.StringQuery(v21);
  sub_22C25A948(v22);
  v24 = *v23;
  v25 = v23[1];
  v26 = type metadata accessor for TranscriptProtoQueryPayload.StringQuery(0);
  v27 = *(v26 + 20);
  sub_22BE1A140();
  sub_22BE19DC4(v28, v29, v30, v17);
  v31 = *(v26 + 24);

  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C0E9830();
  sub_22BE1AE58();
  sub_22BE2343C();
  *v0 = v24;
  v0[1] = v25;
  sub_22BE22978();
  sub_22BE18478();
}

void TranscriptProtoQueryPayload.IdentifierQuery.init(handwritten:)()
{
  sub_22BE19130();
  sub_22C259F34();
  v2 = sub_22C272984();
  v3 = sub_22BE179D8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE2379C();
  v8 = sub_22BE5CE4C(&qword_27D909280, &unk_22C294B50);
  sub_22BE19448(v8);
  v10 = *(v9 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE1A8B4();
  v12 = sub_22C259E4C();
  v13(v12, v1, v2);
  sub_22C272964();
  v14 = *(v5 + 8);
  v15 = sub_22BE3E8FC();
  v16(v15);
  v17 = sub_22C2725C4();
  v18 = sub_22BE33C68();
  v21 = sub_22C18F17C(v18, v19, v20, v17);
  v22 = *(v1 + *(type metadata accessor for QueryPayload.IdentifierQuery(v21) + 20));
  v23 = type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery(0);
  v24 = *(v23 + 20);
  sub_22BE1A140();
  sub_22BE19DC4(v25, v26, v27, v17);
  v28 = *(v23 + 24);

  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C0E9830();
  sub_22BE1AE58();
  sub_22BE2343C();
  *v0 = v22;
  sub_22BE22978();
  sub_22BE18478();
}

void sub_22C224310()
{
  sub_22BE19130();
  v51 = v4;
  v52 = v5;
  v6 = v1;
  sub_22BE23C8C();
  v61 = sub_22C272594();
  v7 = sub_22BE179D8(v61);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE17B98();
  v62 = v12;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v13);
  sub_22BE19E94();
  sub_22C259814(v14);
  v15 = sub_22C272874();
  v16 = sub_22C259488(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v21);
  sub_22BE324EC();
  v22 = *v0;
  sub_22BE5CE4C(&qword_27D9155F0, &qword_22C2CC8C8);
  v23 = sub_22C273D04();
  v24 = 0;
  v25 = *(v22 + 64);
  v54 = v22 + 64;
  v26 = *(v22 + 32);
  sub_22BE26A98();
  v53 = v28 >> 6;
  v57 = v29;
  v56 = (v18 + 8);
  v55 = v9;
  while (1)
  {
    if (!v27)
    {
      v32 = v24;
      while (1)
      {
        v24 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          break;
        }

        if (v24 >= v53)
        {

          v47 = v52 + *(v51(0) + 20);
          _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
          *v52 = v23;
          goto LABEL_13;
        }

        ++v32;
        if (*(v54 + 8 * v24))
        {
          sub_22BE4878C();
          v58 = v33;
          goto LABEL_9;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
      return;
    }

    sub_22BE22BE8();
    v58 = v31;
LABEL_9:
    v34 = v30 | (v24 << 6);
    sub_22C25A8B8();
    v36 = v35[1];
    v59 = *v35;
    v38 = *(v18 + 16);
    v38(v3, v37 + *(v18 + 72) * v34, v2);
    v39 = sub_22BE25D0C();
    (v38)(v39);

    sub_22C272854();
    if (v6)
    {
      break;
    }

    v40 = *v56;
    v41 = sub_22BE1B328();
    v40(v41);
    v42 = *(v55 + 32);
    v42(v60, v62, v61);
    (v40)(v3, v2);
    sub_22C259F70();
    sub_22C25977C(v43);
    v23 = v57;
    sub_22C25A8D0((*(v57 + 48) + 16 * v34));
    v42(v44 + *(v55 + 72) * v34, v60, v61);
    sub_22C25A500();
    if (v46)
    {
      goto LABEL_16;
    }

    *(v57 + 16) = v45;
    v6 = 0;
    v27 = v58;
  }

  v48 = *v56;
  v49 = sub_22BE1B328();
  v48(v49);

  v50 = sub_22BE3CEF4();
  v48(v50);

LABEL_13:
  sub_22BE46D98();
  sub_22BE18478();
}

uint64_t IntelligenceFlowError.init(transcript:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = objc_allocWithZone(MEMORY[0x277CCA9B8]);

  v5 = sub_22BE1A8C4();
  sub_22C24F544(v5, v6, v3, 0);
  sub_22C26E5E4();
  sub_22C259990();
  return sub_22BE1AE58();
}

uint64_t TranscriptProtoIntelligenceFlowError.init(handwritten:)()
{
  sub_22C259E88();
  v2 = sub_22C26E5A4();
  v3 = [v2 domain];

  v4 = sub_22C273024();
  v6 = v5;

  v7 = sub_22C26E5A4();
  v8 = [v7 code];

  v9 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  sub_22C25A67C(v9);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v10 = sub_22C26E5D4();
  sub_22BE18524(v10);
  result = (*(v11 + 8))(v1);
  *v0 = v4;
  v0[1] = v6;
  v0[2] = v8;
  return result;
}

void RequestContent.SystemPromptResolution.UserAction.init(transcript:)()
{
  sub_22BE19130();
  v57 = v4;
  v5 = sub_22C25A764();
  v6 = type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution(v5);
  v7 = sub_22BE19448(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE1955C();
  v10 = sub_22C272594();
  v11 = sub_22BE179D8(v10);
  v56 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BE17D10();
  MEMORY[0x28223BE20](v15);
  sub_22BE2351C();
  MEMORY[0x28223BE20](v16);
  sub_22C1CEC08(v17, v18, v19, v20, v21, v22, v23, v24, v55);
  v25 = sub_22BE2590C();
  v27 = sub_22BE5CE4C(v25, v26);
  sub_22BE19448(v27);
  v29 = *(v28 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v30);
  v31 = sub_22BE46DE8();
  v32 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum(v31);
  v33 = sub_22BE18000(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  sub_22BE28FD8();
  sub_22BE291B0();
  sub_22C18FCEC();
  sub_22BE22814();
  v36 = sub_22BE391E8();
  sub_22BE1AB5C(v36, v37, v32);
  if (v38)
  {
    sub_22BE233E8(v0, &qword_27D90ED58, &qword_22C2CC940);
    sub_22BE5CE4C(&qword_27D915610, &qword_22C2CC948);
    sub_22BE43258();
    sub_22BE3D554();
    sub_22C108598();
    v39 = sub_22BE196B4();
    sub_22C259EA0(v39, v40);
    sub_22BE1A0B4();
    sub_22BE1AE58();
  }

  else
  {
    v41 = sub_22BE19EBC();
    sub_22BE3B620(v41, v3);
    sub_22C0B1AF0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        (*(v56 + 32))();
        v46 = *(v56 + 16);
        v47 = sub_22BE2BA80();
        v46(v47);
        v48 = sub_22BE180C8();
        v46(v48);
        sub_22C272864();
        if (v1)
        {
          v49 = *(v56 + 8);
          v50 = sub_22BE194C4();
          v49(v50);
          sub_22BE1A0B4();
          sub_22BE1AE58();
          v51 = sub_22BE25C94();
          v49(v51);
        }

        else
        {
          v52 = *(v56 + 8);
          v53 = sub_22BE194C4();
          v52(v53);
          sub_22BE1A0B4();
          sub_22BE1AE58();
          v54 = sub_22BE25C94();
          v52(v54);
          type metadata accessor for RequestContent.SystemPromptResolution.UserAction(0);
          sub_22BE1ACEC();
          swift_storeEnumTagMultiPayload();
        }

        break;
      case 3:
        sub_22BE1A0B4();
        sub_22BE1AE58();
        *v57 = *v3;
        type metadata accessor for RequestContent.SystemPromptResolution.UserAction(0);
        sub_22BE23BA8();
        goto LABEL_11;
      case 4:
        sub_22BE1A0B4();
        sub_22BE1AE58();
        v44 = sub_22C259FB8();
        sub_22BE3B620(v44, v2);
        v45 = *v2;
        sub_22BE291DC();
        sub_22BE1AE58();
        *v57 = v45;
        type metadata accessor for RequestContent.SystemPromptResolution.UserAction(0);
        sub_22BE1ACEC();
        goto LABEL_11;
      case 5:
        sub_22BE1A0B4();
        sub_22BE1AE58();
        sub_22BE3E76C();
        sub_22BE1AE58();
        type metadata accessor for RequestContent.SystemPromptResolution.UserAction(0);
        sub_22C25ADD4();
        goto LABEL_11;
      default:
        sub_22BE1A0B4();
        sub_22BE1AE58();
        v43 = sub_22BE3859C(*v3);
        type metadata accessor for RequestContent.SystemPromptResolution.UserAction(v43);
        sub_22BE23BA8();
LABEL_11:
        swift_storeEnumTagMultiPayload();
        break;
    }
  }

  sub_22BE19650();
  sub_22BE18478();
}

void RequestContent.SystemPromptResolution.ResolutionInput.init(transcript:)()
{
  sub_22BE19130();
  v5 = sub_22C25A3B4(v4);
  v6 = type metadata accessor for TranscriptProtoRequestContentSpeechContent(v5);
  v7 = sub_22BE19448(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE28A70(v10, v75);
  MEMORY[0x28223BE20](v11);
  v20 = sub_22BE4202C(v12, v13, v14, v15, v16, v17, v18, v19, v76);
  v21 = type metadata accessor for TranscriptProtoStatementID(v20);
  v22 = sub_22BE19448(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22BE3C444(v25, v77);
  v26 = sub_22C26E684();
  v27 = sub_22BE179D8(v26);
  v78 = v28;
  v79 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22BE17A44();
  v32 = sub_22BE48A8C(v31);
  v33 = type metadata accessor for TranscriptProtoRequestContentTextContent(v32);
  v34 = sub_22BE18000(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22BE186D4();
  MEMORY[0x28223BE20](v37);
  sub_22BE32374();
  v38 = sub_22BE2565C();
  v40 = sub_22BE5CE4C(v38, v39);
  sub_22BE19448(v40);
  v42 = *(v41 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v43);
  v44 = sub_22BE250C8();
  v45 = type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum(v44);
  v46 = sub_22BE18000(v45);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  sub_22BE18DFC();
  sub_22BE1BF88();
  sub_22BE22814();
  v49 = sub_22BFB1A7C();
  sub_22BE1AB5C(v49, v50, v45);
  if (v51)
  {
    sub_22BE233E8(v1, &qword_27D90ECD8, &qword_22C2CC950);
    sub_22BE5CE4C(&qword_27D915618, &qword_22C2CC958);
    sub_22BE43258();
    sub_22BE3D554();
    sub_22C108598();
    v52 = sub_22BE196B4();
    sub_22C259EA0(v52, v53);
    sub_22BE18334();
LABEL_4:
    sub_22BE1AE58();
  }

  else
  {
    v54 = sub_22C1088AC();
    sub_22BE3B620(v54, v0);
    sub_22BE29454();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v61 = sub_22BE29370();
        sub_22BE3B620(v61, v82);
        v62 = sub_22BE431F0();
        sub_22BE1AA68(v62, v81);
        v63 = sub_22C259EBC();
        RequestContent.SpeechContent.init(transcript:)(v63, v64, v65, v66, v67, v68, v69, v70, v78, v79);
        sub_22BE18334();
        sub_22BE1AE58();
        sub_22C2596E0();
        sub_22BE1AE58();
        if (!v85)
        {
          type metadata accessor for RequestContent.SystemPromptResolution.ResolutionInput(0);
          sub_22BE23BA8();
          goto LABEL_12;
        }

        break;
      case 2:
      case 3:
        sub_22BE18334();
        sub_22BE1AE58();
        type metadata accessor for RequestContent.SystemPromptResolution.ResolutionInput(0);
        sub_22C25ADD4();
        goto LABEL_12;
      default:
        v56 = sub_22BE29370();
        sub_22BE3B620(v56, v2);
        v57 = sub_22C259E7C();
        sub_22BE1AA68(v57, v3);
        v59 = *v3;
        v58 = v3[1];
        v60 = *(v33 + 20);

        sub_22C1026C4();
        if (v85)
        {

          sub_22BE18334();
          sub_22BE1AE58();
          sub_22C259AA8();
          sub_22BE1AE58();
          sub_22BE3C968();
          goto LABEL_4;
        }

        v71 = *v83;
        v73 = *(v83 + 1);
        v72 = *(v83 + 2);

        sub_22C26E664();
        sub_22BE18334();
        sub_22BE1AE58();
        sub_22BE18B80();
        sub_22BE1AE58();
        sub_22C259AA8();
        sub_22BE1AE58();
        sub_22BE3C968();
        sub_22BE1AE58();
        *v84 = v59;
        *(v84 + 1) = v58;
        v74 = type metadata accessor for RequestContent.TextContent(0);
        (*(v78 + 32))(&v84[*(v74 + 20)], v80, v79);
        type metadata accessor for RequestContent.SystemPromptResolution.ResolutionInput(0);
        sub_22BE23BA8();
LABEL_12:
        swift_storeEnumTagMultiPayload();
        break;
    }
  }

  sub_22BE467E4();
  sub_22BE18478();
}

void TranscriptProtoSystemPromptResolutionInput.init(handwritten:)()
{
  sub_22BE19130();
  v5 = sub_22BE3C4D0();
  v6 = type metadata accessor for RequestContent.SpeechContent(v5);
  v7 = sub_22BE19448(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE17B98();
  sub_22BE3CFC4();
  v11 = MEMORY[0x28223BE20](v10);
  sub_22C10887C(v11, v12, v13, v14, v15, v16, v17, v18, v87);
  v19 = sub_22C26E684();
  v20 = sub_22BE179D8(v19);
  v95 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22BE2379C();
  v24 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v24);
  v26 = *(v25 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v27);
  v28 = sub_22BE25334();
  v29 = type metadata accessor for RequestContent.TextContent(v28);
  v30 = sub_22BE18000(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  sub_22BE3C8B8();
  v34 = MEMORY[0x28223BE20](v33);
  v42 = sub_22BE22D7C(v34, v35, v36, v37, v38, v39, v40, v41, v88);
  v43 = type metadata accessor for RequestContent.SystemPromptResolution.ResolutionInput(v42);
  v44 = sub_22BE18000(v43);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  sub_22BE18DFC();
  v47 = sub_22BE5CE4C(&qword_27D90ECD8, &qword_22C2CC950);
  sub_22BE19448(v47);
  v49 = *(v48 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v50);
  v51 = sub_22BE1AB08();
  v52 = type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum(v51);
  sub_22BE28D2C();
  v57 = sub_22C18F17C(v53, v54, v55, v56);
  v58 = *(type metadata accessor for TranscriptProtoSystemPromptResolutionInput(v57) + 20);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v59 = sub_22BE385E4();
  sub_22BE1AA68(v59, v2);
  sub_22BE25D0C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BE29370();
      sub_22BE341B0();
      sub_22BE3B620(v84, v85);
      v86 = sub_22BE431F0();
      sub_22BE1AA68(v86, v93);
      sub_22C25A524();
      TranscriptProtoRequestContentSpeechContent.init(handwritten:)();
      sub_22BE37D50();
      sub_22C259A90();
      sub_22BE1AE58();
      if (!v1)
      {
        goto LABEL_4;
      }

      sub_22BE18334();
      sub_22BE1AE58();
      break;
    case 2u:
    case 3u:
      sub_22BE37D50();
      goto LABEL_4;
    default:
      v60 = sub_22BE29370();
      sub_22BE3B620(v60, v96);
      v61 = sub_22C259E5C();
      sub_22BE1AA68(v61, v62);
      v92 = v0[1];
      v94 = *v0;
      v63 = *(v29 + 20);
      v64 = sub_22BE48FCC();
      v65(v64);

      v91 = sub_22C26E674();
      v66 = sub_22C26E654();
      v89 = v67;
      v90 = v66;
      v68 = type metadata accessor for TranscriptProtoStatementID(0);
      sub_22C25A3A8(v68);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v69 = *(v95 + 8);
      v70 = sub_22BE3E8FC();
      v71(v70);
      *v4 = v91;
      *(v4 + 8) = v90;
      *(v4 + 16) = v89;
      v72 = sub_22BE33C68();
      v75 = sub_22C18F17C(v72, v73, v74, v68);
      v76 = *(type metadata accessor for TranscriptProtoRequestContentTextContent(v75) + 20);
      sub_22BE3AE2C();
      sub_22BE3A034(v77, v78, v79, v80);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE37D50();
      sub_22BE1AE58();
      sub_22C25A870();
      sub_22BE1AE58();
      *v3 = v94;
      v3[1] = v92;
      sub_22BE2343C();
LABEL_4:
      sub_22BE1B18C();
      swift_storeEnumTagMultiPayload();
      v81 = sub_22BE22B8C();
      sub_22BE19DC4(v81, v82, v83, v52);
      sub_22C25A888();
      sub_22BE2343C();
      break;
  }

  sub_22BE22978();
  sub_22BE18478();
}

void TranscriptProtoSystemPromptResolutionUserAction.init(handwritten:)()
{
  sub_22BE19130();
  sub_22BE33FA8();
  v3 = sub_22C272594();
  v4 = sub_22BE179D8(v3);
  v47 = v5;
  v48 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE17A44();
  sub_22C259814(v8);
  v9 = sub_22C272874();
  v10 = sub_22C259488(v9);
  v49 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BE25544();
  MEMORY[0x28223BE20](v14);
  v15 = sub_22BE20558();
  v16 = type metadata accessor for RequestContent.SystemPromptResolution.UserAction(v15);
  v17 = sub_22BE18000(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BE28FD8();
  v20 = sub_22BE5CE4C(&qword_27D90ED58, &qword_22C2CC940);
  sub_22BE19448(v20);
  v22 = *(v21 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v23);
  v24 = sub_22BE1AB08();
  v25 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum(v24);
  sub_22C25976C();
  v30 = sub_22C18F17C(v26, v27, v28, v29);
  v31 = *(type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction(v30) + 20);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v32 = sub_22C259E7C();
  sub_22BE1AA68(v32, v2);
  sub_22C259FF4();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22C18F338();
      v35 = sub_22BE41FB4();
      v36(v35);
      sub_22BE37EE0();
      sub_22BE36674();
      v37();
      sub_22C272854();
      if (!v0)
      {
        sub_22BE361FC();
        sub_22BE1AE58();
        v44 = *(v49 + 8);
        v45 = sub_22BE1A8C4();
        v44(v45);
        v46 = sub_22BE260B8();
        v44(v46);
        (*(v47 + 32))(v1, v50, v48);
        goto LABEL_8;
      }

      sub_22BE361FC();
      sub_22BE1AE58();
      v38 = *(v49 + 8);
      v39 = sub_22BE1A8C4();
      v38(v39);
      v40 = sub_22BE260B8();
      v38(v40);
      sub_22BE1A0B4();
      sub_22BE1AE58();
      goto LABEL_9;
    case 3u:
      sub_22BE361FC();
      sub_22BE1AE58();
      *v1 = *v2;
      goto LABEL_8;
    case 4u:
      v33 = *v2;
      v34 = type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution(0);
      sub_22C25A548(v34);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE361FC();
      sub_22BE1AE58();
      *v1 = v33;
      goto LABEL_8;
    case 5u:
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE361FC();
      sub_22BE1AE58();
      goto LABEL_8;
    default:
      sub_22BE361FC();
      sub_22BE1AE58();
      *v1 = *v2;
LABEL_8:
      sub_22BE3EA80();
      swift_storeEnumTagMultiPayload();
      v41 = sub_22BE22B8C();
      sub_22BE19DC4(v41, v42, v43, v25);
      sub_22C25A6D0();
      sub_22BE2343C();
LABEL_9:
      sub_22BE34134();
      sub_22BE18478();
      return;
  }
}

void ResponseOutput.init(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  sub_22C259FE8();
  v12 = sub_22C26F4A4();
  v13 = sub_22BE179D8(v12);
  v80 = v14;
  v81 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BE28A70(v17, v77);
  MEMORY[0x28223BE20](v18);
  sub_22BE19E94();
  v20 = sub_22BE4682C(v19);
  v21 = type metadata accessor for TranscriptProtoVisualOutputOptions(v20);
  v22 = sub_22BE19448(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22BE17A44();
  sub_22C259814(v25);
  v26 = sub_22C26F474();
  v27 = sub_22BE179D8(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22BE1955C();
  v30 = sub_22BE5CE4C(&qword_27D90EAF0, &qword_22C2B5C30);
  sub_22BE19448(v30);
  v32 = *(v31 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v33);
  sub_22BE1B01C();
  v34 = sub_22BE5CE4C(&qword_27D911EF0, &qword_22C2B5C10);
  sub_22BE19448(v34);
  v36 = *(v35 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v37);
  sub_22BE1A8B4();
  v38 = sub_22BE5CE4C(&qword_27D90EB10, &qword_22C2CC960);
  v39 = sub_22BE19448(v38);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  sub_22BE2582C();
  MEMORY[0x28223BE20](v42);
  sub_22BE324EC();
  v43 = sub_22BE5CE4C(&qword_27D911EF8, &unk_22C2B5C18);
  v44 = sub_22BE19448(v43);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  sub_22BE195A8();
  MEMORY[0x28223BE20](v47);
  sub_22BE32374();
  v48 = v10;
  v49 = *v10;

  sub_22C0FB498();
  if (!a10)
  {
    v50 = type metadata accessor for TranscriptProtoResponseOutput(0);
    v51 = v50[8];
    sub_22BE22814();
    sub_22C1006AC();
    v52 = v50[9];
    sub_22BE22814();
    sub_22C25A918();
    sub_22C1006AC();
    v53 = v50[11];
    sub_22BE22814();
    sub_22C25A6DC();
    sub_22C100880();

    sub_22C0F4874(v54, v55, v56, v57, v58, v59, v60, v61, v78, v11);
    v62 = v50[10];
    sub_22C104C4C();
    v63 = *v82;
    sub_22C26F454();
    sub_22C0E9830();
    sub_22BE1AE58();
    v64 = (v48 + v50[12]);
    v65 = v64[1];
    v83 = *v64;
    (*(v80 + 104))(v79, **(&unk_278725C78 + *(v48 + 8)), v81);
    sub_22C18F458();
    v66 = sub_22BE2590C();
    v67(v66);
    v68 = v48[3];

    sub_22C0FB724(v69, v70, v71, v72, v73, v74, v75, v76);
    sub_22C26F484();
  }

  sub_22BE38444();
  sub_22BE1AE58();
  sub_22BEE94B0();
  sub_22BE18478();
}

void TranscriptProtoInterpretedStatementResult.init(handwritten:)()
{
  sub_22BE19130();
  sub_22C25A05C();
  v120 = v5;
  v6 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v6);
  v8 = *(v7 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE20168(v10, v103);
  v11 = sub_22C26E684();
  v12 = sub_22BE179D8(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BE294E0();
  v17 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v18 = sub_22BE19448(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BE17B98();
  sub_22BE2BCB4();
  MEMORY[0x28223BE20](v21);
  sub_22BE27A50();
  MEMORY[0x28223BE20](v22);
  sub_22C2595A0();
  v23 = sub_22C26F894();
  v24 = sub_22BE19448(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  sub_22BE17CBC();
  v27 = sub_22BE5CE4C(&qword_27D90CA68, &unk_22C296C50);
  sub_22BE19448(v27);
  v29 = *(v28 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v30);
  sub_22BE234F4();
  v126 = v1;
  sub_22C2700E4();
  v31 = sub_22C25A6C4();
  TranscriptProtoStatementOutcome.init(handwritten:)(v31, v32, v33, v34, v35, v36, v37, v38, v104, v106, v108, v110, v112, v114, v115, v116, v117, v120, v122, v124);
  if (v2)
  {
    v39 = sub_22C2700F4();
    sub_22BE18524(v39);
    (*(v40 + 8))(v1);
  }

  else
  {
    v113 = type metadata accessor for TranscriptProtoStatementOutcome(0);
    v41 = sub_22C25974C();
    sub_22BE19DC4(v41, v42, v43, v44);
    sub_22C2700A4();
    v45 = sub_22C26E674();
    v46 = sub_22C26E654();
    v125 = v0;
    v47 = sub_22BE32C3C();
    v48 = type metadata accessor for TranscriptProtoStatementID(v47);
    sub_22C25A4E8(v48);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v49 = *(v14 + 8);
    v50 = sub_22BE2BA80();
    v49(v50);
    *v3 = v45;
    *(v3 + 8) = v46;
    *(v3 + 16) = v0;
    v51 = sub_22BE22B8C();
    sub_22BE19DC4(v51, v52, v53, v48);
    sub_22C270094();
    v54 = sub_22C26E674();
    sub_22C26E654();
    sub_22BE29328();
    v55 = v125 + *(v48 + 24);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v56 = sub_22BE2BA80();
    v107 = v49;
    v49(v56);
    *v125 = v54;
    *(v125 + 8) = v4;
    *(v125 + 16) = v45;
    sub_22C2597E4();
    sub_22BE19DC4(v57, v58, v59, v60);
    sub_22C26FF64();
    v61 = sub_22C26E1D4();
    v62 = sub_22BE391E8();
    sub_22BE1AB5C(v62, v63, v61);
    if (v64)
    {
      sub_22BE233E8(v118, &qword_27D9082F0, &qword_22C27AB00);
      v109 = 0;
      v111 = 0;
    }

    else
    {
      v65 = sub_22C26E184();
      v109 = v66;
      v111 = v65;
      sub_22BE1BC24(v61);
      v68 = *(v67 + 8);
      v69 = sub_22BE260B8();
      v70(v69);
    }

    v119 = sub_22C2700D4();
    v105 = v71;
    sub_22C270084();
    v72 = sub_22C26E674();
    sub_22C26E654();
    sub_22BE29328();
    v73 = v123 + *(v48 + 24);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v74 = sub_22BE194C4();
    v107(v74);
    *v123 = v72;
    *(v123 + 8) = v4;
    *(v123 + 16) = v61;
    sub_22C2597E4();
    sub_22BE19DC4(v75, v76, v77, v78);
    sub_22BE1A140();
    v82 = sub_22C18F17C(v79, v80, v81, v113);
    v83 = type metadata accessor for TranscriptProtoInterpretedStatementResult(v82);
    sub_22C25A658(v83);
    sub_22BE3AE2C();
    sub_22BE19DC4(v84, v85, v86, v87);
    v88 = v72[6];
    sub_22BE3AE2C();
    sub_22BE19DC4(v89, v90, v91, v92);
    v93 = (v121 + v72[7]);
    v94 = (v121 + v72[8]);
    v95 = v72[9];
    sub_22BE3AE2C();
    sub_22BE19DC4(v96, v97, v98, v99);
    v100 = v121 + v72[10];
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v101 = sub_22C2700F4();
    sub_22BE18524(v101);
    (*(v102 + 8))(v126);
    sub_22BE2343C();
    sub_22BE27B84();
    sub_22BE2343C();
    sub_22BE27B84();
    sub_22BE2343C();
    *v93 = v111;
    v93[1] = v109;
    *v94 = v119;
    v94[1] = v105;
    sub_22BE27B84();
    sub_22BE2343C();
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

void TranscriptProtoParameterSet.handwrittenParameters.getter()
{
  sub_22BE19130();
  v4 = v2;
  v5 = type metadata accessor for Candidate(0);
  v6 = sub_22BE179D8(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE17B98();
  sub_22BE3E334();
  MEMORY[0x28223BE20](v9);
  v10 = sub_22BE20558();
  v118 = type metadata accessor for TranscriptProtoCandidate(v10);
  v11 = sub_22BE18000(v118);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BE17B98();
  v108 = v14;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v15);
  sub_22C259824(v16, v17, v18, v19, v20, v21, v22, v23, v103);
  v24 = sub_22BE5CE4C(&qword_27D9091B8, &qword_22C27FDB0);
  v25 = sub_22BE19448(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22BE2582C();
  MEMORY[0x28223BE20](v28);
  sub_22BE25A90();
  v29 = sub_22BE5CE4C(&qword_27D915620, &qword_22C2CC968);
  v30 = sub_22BE19448(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  sub_22BE17B98();
  v107 = v33;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v34);
  sub_22C259838(v35, v36, v37, v38, v39, v40, v41, v42, v104);
  v43 = type metadata accessor for TranscriptProtoParameter(0);
  v44 = sub_22BE179D8(v43);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  sub_22BE17A44();
  sub_22BE3668C(v47);
  v115 = *(*v1 + 16);
  if (v115)
  {
    v50 = 0;
    v114 = *(v48 + 24);
    v51 = *(v49 + 80);
    sub_22BE19E14();
    v54 = MEMORY[0x277D84F98];
    v113 = v52 + v55;
    v106 = v0;
    v119 = v3;
    v111 = v52;
    v112 = v53;
    while (v50 < *(v52 + 16))
    {
      sub_22BE1AA68(v113 + *(v53 + 72) * v50, v120);
      v56 = *(v120 + 8);
      v57 = *(v120 + 16);
      v58 = *(v120 + 24);
      if (v58)
      {
        v57 = 0;
      }

      v121 = v57;
      v122 = *v120;
      sub_22BE22814();
      sub_22BE22814();
      v59 = sub_22BE26188();
      sub_22BE1AB5C(v59, v60, v118);
      if (v61)
      {

        v62 = sub_22BE194F8();
        sub_22BE233E8(v62, v63, &qword_22C27FDB0);
        v64 = sub_22BE29454();
        sub_22BE233E8(v64, v65, &qword_22C27FDB0);
        v66 = v117;
      }

      else
      {
        v67 = sub_22BE29370();
        sub_22BE3B620(v67, v109);
        v68 = sub_22BE29370();
        sub_22BE1AA68(v68, v108);

        v69 = v106;
        v70 = sub_22C259EBC();
        Candidate.init(transcript:)(v70, v71, v72, v73, v74, v75, v76, v77, v105, v106);
        if (v4)
        {

          sub_22BE37964();
          sub_22BE1AE58();
          sub_22BE233E8(v119, &qword_27D9091B8, &qword_22C27FDB0);
          sub_22BE2BB00();

          goto LABEL_30;
        }

        sub_22BE37964();
        sub_22BE1AE58();
        sub_22BE233E8(v119, &qword_27D9091B8, &qword_22C27FDB0);
        sub_22BE48E7C();
        v66 = v117;
        sub_22BE3B620(v69, v117);
      }

      v78 = sub_22BE40694();
      sub_22BE19DC4(v78, v79, v80, v5);
      sub_22BE23B00(v66);
      if (v61)
      {
        sub_22BE233E8(v66, &qword_27D915620, &qword_22C2CC968);
        v81 = sub_22C25A9EC();
        v83 = v82;

        if (v83)
        {
          swift_isUniquelyReferenced_nonNull_native();
          v84 = v54[3];
          sub_22BE5CE4C(&qword_27D915628, &unk_22C2CC970);
          sub_22BE489B0();
          sub_22C273C44();
          v85 = *(v54[6] + 32 * v81 + 8);

          sub_22C25A7B8();
          sub_22BE48E7C();
          v86 = v107;
          sub_22BE3B620(v87, v107);
          sub_22BE5CF7C();
          sub_22BE19454();
          sub_22C273C64();
          sub_22BE2BB00();
          v88 = 0;
        }

        else
        {
          sub_22BE2BB00();
          v88 = 1;
          v86 = v107;
        }

        sub_22BE19DC4(v86, v88, 1, v5);
        sub_22BE233E8(v86, &qword_27D915620, &qword_22C2CC968);
      }

      else
      {
        v110 = v4;
        sub_22BE48E7C();
        sub_22BE3B620(v66, v116);
        swift_isUniquelyReferenced_nonNull_native();
        sub_22C25A9EC();
        sub_22C1CF0B4();
        if (__OFADD__(v91, v92))
        {
          goto LABEL_32;
        }

        v93 = v89;
        v94 = v90;
        sub_22BE5CE4C(&qword_27D915628, &unk_22C2CC970);
        sub_22BE489B0();
        if (sub_22C273C44())
        {
          v95 = sub_22C25A9EC();
          if ((v94 & 1) != (v96 & 1))
          {
            goto LABEL_34;
          }

          v93 = v95;
        }

        if (v94)
        {

          sub_22C25A7B8();
          sub_22C250DB8(v116, v97 + v98 * v93);
          sub_22BE2BB00();
        }

        else
        {
          sub_22BE45B78(&v54[v93 >> 6]);
          v99 = v54[6] + 32 * v93;
          *v99 = v122;
          *(v99 + 8) = v56;
          *(v99 + 16) = v121;
          *(v99 + 24) = v58;
          sub_22C25A7B8();
          sub_22BE48E7C();
          sub_22BE3B620(v116, v100);
          sub_22BE2BB00();
          sub_22C25A500();
          if (v102)
          {
            goto LABEL_33;
          }

          v54[2] = v101;
        }

        v4 = v110;
      }

      ++v50;
      v52 = v111;
      v53 = v112;
      if (v115 == v50)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    sub_22C2740B4();
    __break(1u);
  }

  else
  {
LABEL_30:
    sub_22BE467E4();
    sub_22BE18478();
  }
}

void TranscriptProtoParameterSet.init(handwritten:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v112 = v10;
  v14 = v13;
  v16 = v15;
  v17 = sub_22BE5CE4C(&qword_27D9091B8, &qword_22C27FDB0);
  sub_22BE19448(v17);
  v19 = *(v18 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  sub_22BE19668();
  v104 = sub_22BE5CE4C(&qword_27D909008, &qword_22C27FC60);
  v21 = sub_22BE18000(v104);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22BE17B98();
  v103 = v24;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v25);
  sub_22C259B68();
  MEMORY[0x28223BE20](v26);
  sub_22BE1AF10();
  MEMORY[0x28223BE20](v27);
  sub_22BE2351C();
  MEMORY[0x28223BE20](v28);
  sub_22BE19E94();
  v30 = sub_22C259AC0(v29);
  v31 = type metadata accessor for TranscriptProtoParameter(v30);
  v100 = sub_22BE179D8(v31);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v100);
  sub_22BE28FD8();
  v96 = *(type metadata accessor for TranscriptProtoParameterSet(0) + 20);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v34 = *(v14 + 16);
  if (v34)
  {
    v95 = v16;
    sub_22BE3122C(MEMORY[0x277D84F90]);
    sub_22BE34198();
    sub_22BE7085C(v35, v36, v37);
    v39 = sub_22BE308D0(v14);
    v41 = v40;
    v98 = v14;
    v99 = v14 + 64;
    v42 = &qword_22C27FC60;
    v97 = v11;
    while ((v39 & 0x8000000000000000) == 0)
    {
      v43 = *(v14 + 32);
      sub_22C25A46C();
      if (v39 >= v45)
      {
        break;
      }

      if (((*(v99 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
      {
        goto LABEL_19;
      }

      if (*(v14 + 36) != v41)
      {
        goto LABEL_20;
      }

      v106 = v44;
      v107 = v41;
      v109 = v34;
      v111 = a10;
      v46 = v11;
      v47 = *(v104 + 48);
      v48 = *(v14 + 48);
      v49 = *(v14 + 56);
      v50 = (v48 + 32 * v39);
      v51 = *v50;
      v52 = v50[1];
      v53 = v50[2];
      LOBYTE(v50) = *(v50 + 24);
      *v101 = v51;
      *(v101 + 8) = v52;
      *(v101 + 16) = v53;
      *(v101 + 24) = v50;
      v54 = v42;
      v55 = type metadata accessor for Candidate(0);
      sub_22BE19448(v55);
      v108 = v39;
      sub_22BE1AA68(v49 + *(v56 + 72) * v39, v101 + v47);
      v57 = *(v101 + 16);
      v58 = *(v101 + 24);
      *v12 = *v101;
      *(v12 + 16) = v57;
      *(v12 + 24) = v58;
      v59 = *(v104 + 48);
      sub_22BE48E7C();
      sub_22BE3B620(v101 + v47, v12 + v60);
      sub_22BE2BA80();
      sub_22BE22814();
      v105 = *v46;
      v110 = v46[1];
      sub_22BE25300();
      sub_22BE22814();
      v61 = v12;
      v62 = *(v102 + 8);
      v63 = *(v102 + 16);
      v64 = *(v102 + 24);

      v65 = *(v104 + 48);
      sub_22BE41F2C();
      sub_22BE1AE58();
      sub_22BE22814();
      v66 = *(v103 + 8);

      v67 = v103 + *(v104 + 48);
      TranscriptProtoCandidate.init(handwritten:)();
      if (v112)
      {

        sub_22BE41F2C();
        sub_22BE1AE58();

        sub_22BE233E8(v61, &qword_27D909008, &qword_22C27FC60);

        v90 = sub_22C2704B4();
        sub_22BE18524(v90);
        (*(v91 + 8))(&v95[v96]);
        goto LABEL_17;
      }

      if (v64)
      {
        v63 = 0;
      }

      v68 = type metadata accessor for TranscriptProtoCandidate(0);
      v69 = sub_22BE19198();
      sub_22BE19DC4(v69, v70, v71, v68);
      v72 = *(v100 + 24);
      sub_22C259860();
      v74 = v73;
      sub_22BE19DC4(v75, v76, v77, v78);
      v79 = v74 + *(v100 + 28);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      *v74 = v105;
      *(v74 + 8) = v110;
      *(v74 + 16) = v63;
      *(v74 + 24) = v64;
      sub_22BE2343C();
      sub_22BE41F2C();
      v11 = v97;
      sub_22BE1AE58();
      v42 = v54;
      sub_22BE233E8(v61, &qword_27D909008, v54);
      a10 = v111;
      v81 = *(v111 + 16);
      v80 = *(v111 + 24);
      v12 = v61;
      if (v81 >= v80 >> 1)
      {
        sub_22BE3D1E4(v80);
        sub_22BE39E18();
        sub_22BE7085C(v87, v88, v89);
        a10 = v111;
      }

      *(a10 + 16) = v81 + 1;
      sub_22BE25AD8();
      v83 = *(v82 + 72);
      v84 = sub_22C259FB8();
      sub_22BE3B620(v84, v85);
      v14 = v98;
      v39 = sub_22C18DDA4(v108, v107, v106 & 1, v98);
      v41 = v86;
      --v34;
      if (v109 == 1)
      {

        v92 = sub_22BE39EAC();
        sub_22BE2FC64(v92, v93, v94);
        v16 = v95;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {

    a10 = MEMORY[0x277D84F90];
LABEL_16:
    *v16 = a10;
LABEL_17:
    sub_22BE18478();
  }
}

void TranscriptProtoCandidate.init(handwritten:)()
{
  sub_22BE19130();
  v3 = v2;
  sub_22C25A554(v4);
  v5 = sub_22C26E684();
  v6 = sub_22BE179D8(v5);
  v96 = v7;
  v97 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE17A44();
  v95 = v10;
  v11 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v11);
  v13 = *(v12 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  v16 = sub_22BE36294(v15);
  v101 = type metadata accessor for TranscriptProtoCandidatePromptStatus(v16);
  v17 = sub_22BE18000(v101);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BE1955C();
  v20 = sub_22BE5CE4C(&qword_27D909208, &unk_22C2AE560);
  sub_22BE19448(v20);
  v22 = *(v21 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v23);
  sub_22BE23A90(v24);
  v100 = sub_22C272594();
  v25 = sub_22BE179D8(v100);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22BE17CBC();
  v30 = sub_22C272874();
  v31 = sub_22BE179D8(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v31);
  sub_22BE2379C();
  v36 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  sub_22BE19448(v36);
  v38 = *(v37 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v39);
  sub_22BE1B72C();
  v40 = sub_22C259E94(v33);
  v41(v40, v3, v30);
  sub_22C272854();
  if (v0)
  {
    sub_22BE41F2C();
    sub_22BE1AE58();
    v42 = *(v33 + 8);
    v43 = sub_22BE31038();
    v44(v43);
  }

  else
  {
    v45 = *(v33 + 8);
    v46 = sub_22BE31038();
    v47(v46);
    v48 = *(v27 + 32);
    v49 = sub_22BE260B8();
    v50(v49);
    v51 = sub_22BE2500C();
    v54 = sub_22C18F17C(v51, v52, v53, v100);
    v55 = type metadata accessor for Candidate(v54);
    v56 = *(v55 + 24);
    v94 = *(v3 + *(v55 + 20));
    v57 = *(v3 + v56);
    v58 = *(v3 + v56 + 8);
    *v1 = 0;
    *(v1 + 8) = 256;
    v59 = v1 + *(v101 + 20);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v60 = v57 != 0;
    if (!v58)
    {
      v60 = v57;
    }

    *v1 = v60;
    *(v1 + 8) = v58;
    *(v1 + 9) = 0;
    v61 = sub_22C1088AC();
    sub_22BE3B620(v61, v102);
    sub_22C2597D4();
    sub_22C25AE64(v62, v63, v64, v65);
    (*(v96 + 16))(v95, v3 + v66, v97);
    v67 = sub_22C26E674();
    v68 = sub_22C26E654();
    v69 = sub_22C25A4A0();
    v70 = type metadata accessor for TranscriptProtoStatementID(v69);
    sub_22C25A8C4(v70);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v71 = *(v96 + 8);
    v72 = sub_22BE27A44();
    v73(v72);
    *v98 = v67;
    *(v98 + 8) = v68;
    *(v98 + 16) = v1;
    sub_22C2597F4();
    v78 = sub_22C18F17C(v74, v75, v76, v77);
    v79 = type metadata accessor for TranscriptProtoCandidate(v78);
    sub_22C25ACC0(v79);
    sub_22BE1A140();
    sub_22BE19DC4(v80, v81, v82, v83);
    v84 = v95[6];
    sub_22BE1A140();
    sub_22BE19DC4(v85, v86, v87, v101);
    v88 = v95[7];
    sub_22C25976C();
    sub_22BE19DC4(v89, v90, v91, v92);
    v93 = &v99[v95[8]];
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE41F2C();
    sub_22BE1AE58();
    sub_22BE2343C();
    *v99 = v94;
    sub_22BE2343C();
    sub_22BE2343C();
  }

  sub_22BE467E4();
  sub_22BE18478();
}

void Dictionary<>.init(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v23;
  a20 = v24;
  v25 = v21;
  sub_22BE17BC4();
  v26 = sub_22C272594();
  v27 = sub_22BE179D8(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22BE17A44();
  v123 = v32;
  sub_22BE183BC();
  v33 = sub_22C272874();
  v34 = sub_22C259488(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22BE17B98();
  sub_22BE3E334();
  MEMORY[0x28223BE20](v39);
  sub_22C1CEC1C();
  MEMORY[0x28223BE20](v40);
  sub_22BE19E94();
  sub_22C259A68(v41);
  v42 = sub_22C26E684();
  v43 = sub_22BE179D8(v42);
  v45 = v44;
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v43);
  sub_22BE17B98();
  sub_22BE32C08();
  MEMORY[0x28223BE20](v48);
  sub_22C259838(v49, v50, v51, v52, v53, v54, v55, v56, v116);
  v122 = sub_22BE5CE4C(&qword_27D9091A0, &unk_22C2CC980);
  v57 = sub_22BE18000(v122);
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v57);
  sub_22BE17B98();
  v135 = v60;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v61);
  sub_22C1CEC08(v62, v63, v64, v65, v66, v67, v68, v69, v117);
  sub_22C259290(&qword_28107F2F0, MEMORY[0x277D1C338]);
  v133 = v42;
  v130 = v22;
  v70 = sub_22C272E84();
  v72 = v20 + 64;
  v71 = *(v20 + 64);
  v73 = 1 << *(v20 + 32);
  sub_22BE18010();
  v76 = v75 & v74;
  v78 = (v77 + 63) >> 6;
  v124 = v29;
  v127 = (v45 + 16);
  v128 = (v36 + 32);
  sub_22BE417A8(v36 + 16);
  v118 = v45;
  v121 = (v45 + 8);
  sub_22C1CEFB0(v36 + 8);
  v126 = v20;

  v79 = v78;
  v80 = 0;
  v119 = v20 + 64;
  v120 = v26;
  if (v76)
  {
    while (1)
    {
      v129 = v70;
      v137 = v25;
LABEL_7:
      sub_22C25AC70();
      v83 = v82 | (v80 << 6);
      v84 = *(*(v126 + 48) + 4 * v83);
      v85 = *(v124 + 16);
      v85(&v134[*(v122 + 48)], *(v126 + 56) + *(v124 + 72) * v83, v26);
      *v134 = v84;
      sub_22C26E664();
      sub_22BE22814();
      v85(v123, v135 + *(v122 + 48), v26);
      sub_22C25A6DC();
      sub_22C272864();
      if (v137)
      {
        break;
      }

      v86 = sub_22BE3928C();
      v87(v86);
      v88 = *v128;
      v89 = sub_22BE37490();
      v88(v89);
      v90 = *v127;
      v91 = sub_22BE36318();
      v125 = v92;
      (v92)(v91);
      sub_22BE33554(&a18);
      sub_22BE354D0();
      v94(v93);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_22BE602B4();
      sub_22C1CF0B4();
      if (__OFADD__(v98, v99))
      {
        goto LABEL_22;
      }

      v100 = v96;
      v101 = v97;
      sub_22BE5CE4C(&qword_27D911FF8, &unk_22C2B5DD0);
      sub_22BE489B0();
      if (sub_22C273C44())
      {
        sub_22BE602B4();
        if ((v101 & 1) != (v103 & 1))
        {
          goto LABEL_24;
        }

        v100 = v102;
      }

      v70 = v129;
      if (v101)
      {
        v104 = sub_22C25ABF8(v129[7]);
        (*(isUniquelyReferenced_nonNull_native + 40))(v104, v131, v130);
        v105 = *v121;
        (*v121)(v136, v133);
        v106 = sub_22C25A8DC();
        v107(v106);
        v105(v132, v133);
        sub_22BE233E8(v134, &qword_27D9091A0, &unk_22C2CC980);
      }

      else
      {
        sub_22BE45B78(&v129[v100 >> 6]);
        v125(v129[6] + *(v118 + 72) * v100, v136, v133);
        v108 = sub_22C25ABF8(v129[7]);
        (v88)(v108, v131, v130);
        v109 = *(v118 + 8);
        v109(v136, v133);
        v110 = sub_22C25A8DC();
        v111(v110);
        v109(v132, v133);
        sub_22BE233E8(v134, &qword_27D9091A0, &unk_22C2CC980);
        sub_22C25A864();
        if (v113)
        {
          goto LABEL_23;
        }

        v129[2] = v112;
      }

      v76 &= v76 - 1;
      v25 = 0;
      v26 = v120;
      v72 = v119;
      v79 = v78;
      if (!v76)
      {
        goto LABEL_3;
      }
    }

    (*v121)(v132, v133);
    sub_22BE233E8(v134, &qword_27D9091A0, &unk_22C2CC980);

    v114 = sub_22BE3928C();
    v115(v114);
LABEL_19:

    sub_22BE1AB28();
    sub_22BE18478();
  }

  else
  {
LABEL_3:
    while (1)
    {
      v81 = v80 + 1;
      if (__OFADD__(v80, 1))
      {
        break;
      }

      if (v81 >= v79)
      {

        goto LABEL_19;
      }

      v76 = *(v72 + 8 * v81);
      ++v80;
      if (v76)
      {
        v129 = v70;
        v137 = v25;
        v80 = v81;
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    sub_22C2740B4();
    __break(1u);
  }
}

void TranscriptProtoVariableSetter.init(handwritten:)()
{
  sub_22BE19130();
  v4 = v3;
  sub_22BE2054C(v5);
  v6 = sub_22C272594();
  v7 = sub_22BE1A3D8(v6);
  v47 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE2F294();
  v11 = sub_22C272874();
  v12 = sub_22BE179D8(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BE28FD8();
  v17 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  sub_22BE19448(v17);
  v19 = *(v18 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  v21 = sub_22BE1AB08();
  v22 = type metadata accessor for VariableSetter(v21);
  sub_22C25ADA0(v22);
  v23(v2);
  sub_22C272854();
  if (v0)
  {
    sub_22BE3639C();
    v24 = *(v14 + 8);
    v25 = sub_22BE37B20();
    v26(v25);
  }

  else
  {
    v27 = *(v14 + 8);
    v28 = sub_22BE37B20();
    v29(v28);
    v30 = *(v47 + 32);
    v31 = sub_22BE23108();
    v32(v31);
    v33 = sub_22BE22B8C();
    sub_22BE19DC4(v33, v34, v35, v1);
    v36 = *v4;

    Dictionary<>.init(handwritten:)();
    v38 = v37;
    v39 = type metadata accessor for TranscriptProtoVariableSetter(0);
    v40 = *(v39 + 20);
    sub_22BE3AE2C();
    sub_22BE19DC4(v41, v42, v43, v44);
    v45 = v46 + *(v39 + 24);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE3639C();
    sub_22BE2343C();
    *v46 = v38;
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

void Dictionary<>.init(handwritten:)()
{
  sub_22BE19130();
  v94 = v1;
  sub_22BE17BC4();
  v5 = sub_22C272594();
  v6 = sub_22BE41130(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE28A70(v11, v73);
  MEMORY[0x28223BE20](v12);
  sub_22BE19490();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v13);
  sub_22C10887C(v14, v15, v16, v17, v18, v19, v20, v21, v74);
  v93 = sub_22BE5CE4C(&qword_27D909040, &qword_22C2CC990);
  v22 = sub_22BE18000(v93);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22BE17D10();
  MEMORY[0x28223BE20](v25);
  sub_22C1CEC88();
  MEMORY[0x28223BE20](v26);
  sub_22BE2BB70(v27, v28, v29, v30, v31, v32, v33, v34, v75);
  v35 = sub_22C272E84();
  v37 = v0 + 64;
  v36 = *(v0 + 64);
  v38 = *(v0 + 32);
  sub_22BE185B4();
  v41 = v40 & v39;
  v43 = (v42 + 63) >> 6;
  v84 = (v8 + 32);
  v78 = v8;
  v79 = (v8 + 16);
  sub_22BE417A8(v8 + 40);
  v83 = v0;

  v44 = 0;
  v76 = v43;
  v77 = v0 + 64;
  v80 = v2;
  v81 = v4;
  if (v41)
  {
    while (1)
    {
      v86 = v35;
LABEL_7:
      sub_22C25AC70();
      v47 = v46 | (v44 << 6);
      v48 = *(v83 + 48);
      v49 = sub_22C26E684();
      sub_22BE41130(v49);
      v51 = v50;
      (*(v52 + 16))(v95, v48 + *(v52 + 72) * v47, v2);
      v53 = *(v83 + 56);
      v54 = sub_22C272874();
      sub_22C2594A0(v54);
      v56 = v55;
      (*(v55 + 16))(v95 + *(v93 + 48), v53 + *(v57 + 72) * v47, v3);
      sub_22BE22814();
      v58 = *(v93 + 48);
      v85 = sub_22C26E674();
      v90 = v2;
      v87 = *(v51 + 8);
      v87(v82, v2);
      v59 = *(v56 + 8);
      v88 = v3;
      v59(v82 + v58, v3);
      sub_22BE22814();
      v60 = *(v93 + 48);
      sub_22C272854();
      if (v94)
      {
        break;
      }

      v59(v81 + v60, v88);
      v61 = *v84;
      v62 = sub_22BE261AC();
      v89 = v63;
      (v63)(v62);
      v87(v81, v90);
      v2 = v80;
      (*v79)(v92, v91, v80);
      swift_isUniquelyReferenced_nonNull_native();
      sub_22BE60364(v85);
      sub_22C1CF0B4();
      if (__OFADD__(v66, v67))
      {
        goto LABEL_22;
      }

      v68 = v64;
      v3 = v65;
      sub_22BE5CE4C(&qword_27D915598, &qword_22C2CC610);
      sub_22BE489B0();
      if (sub_22C273C44())
      {
        v69 = sub_22BE60364(v85);
        if ((v3 & 1) != (v70 & 1))
        {
          goto LABEL_24;
        }

        v68 = v69;
      }

      v35 = v86;
      if (v3)
      {
        (*(v78 + 40))(v86[7] + *(v78 + 72) * v68, v92, v80);
        (*(v78 + 8))(v91, v80);
        sub_22BE233E8(v95, &qword_27D909040, &qword_22C2CC990);
      }

      else
      {
        sub_22BE45B78(&v86[v68 >> 6]);
        *(v86[6] + 4 * v68) = v85;
        v89(v86[7] + *(v78 + 72) * v68, v92, v80);
        (*(v78 + 8))(v91, v80);
        sub_22BE233E8(v95, &qword_27D909040, &qword_22C2CC990);
        sub_22C25A864();
        if (v72)
        {
          goto LABEL_23;
        }

        v86[2] = v71;
      }

      v41 &= v41 - 1;
      v43 = v76;
      v37 = v77;
      if (!v41)
      {
        goto LABEL_3;
      }
    }

    sub_22BE233E8(v95, &qword_27D909040, &qword_22C2CC990);

    v59(v81 + v60, v88);
    v87(v81, v90);
LABEL_19:

    sub_22BE18478();
  }

  else
  {
LABEL_3:
    while (1)
    {
      v45 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        break;
      }

      if (v45 >= v43)
      {

        goto LABEL_19;
      }

      v41 = *(v37 + 8 * v45);
      ++v44;
      if (v41)
      {
        v86 = v35;
        v44 = v45;
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    sub_22C2740B4();
    __break(1u);
  }
}

void RequestContent.SystemPromptResolution.RequirementResolution.init(transcript:)(unsigned __int8 *a1)
{
  sub_22C259EE8(a1);
  sub_22BE1AE58();
  sub_22C25AB64();
}

void TranscriptProtoSystemPromptResolutionRequirementResolution.init(handwritten:)(unsigned __int8 *a1)
{
  sub_22C259EE8(a1);
  v1 = type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution(0);
  sub_22BE38954(v1);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C25AB64();
}

uint64_t ResponseOutput.VisualOutputOptions.init(transcript:)(unsigned __int8 *a1)
{
  v1 = *a1;
  sub_22C26F454();
  sub_22BE26148();
  return sub_22BE1AE58();
}

uint64_t ResponseOutput.ResponseType.init(transcript:)(char *a1)
{
  v1 = *a1;
  v2 = sub_22C26F4A4();
  sub_22BE18000(v2);
  v4 = *(v3 + 104);
  v5 = sub_22BE460A4(&unk_278725C78);

  return v6(v5);
}

void TranscriptProtoResponseOutput.init(handwritten:)()
{
  sub_22BE19130();
  sub_22C25A770();
  v119 = v4;
  v5 = sub_22BE5CE4C(&qword_27D911EF0, &qword_22C2B5C10);
  sub_22BE19448(v5);
  v7 = *(v6 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE35C94(v9, v114);
  v10 = sub_22BE5CE4C(&qword_27D90EAF0, &qword_22C2B5C30);
  sub_22BE19448(v10);
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE23A90(v14);
  v125 = sub_22C26F474();
  v15 = sub_22BE179D8(v125);
  v122 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BE17A44();
  v121 = v19;
  v20 = sub_22BE5CE4C(&qword_27D90EB00, &unk_22C2AE6B0);
  sub_22BE19448(v20);
  v22 = *(v21 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v23);
  sub_22BE3FE6C(v24);
  v25 = sub_22C26F4A4();
  v26 = sub_22BE179D8(v25);
  v120 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22BE2582C();
  MEMORY[0x28223BE20](v30);
  v32 = &v114 - v31;
  v33 = sub_22BE5CE4C(&qword_27D911EF8, &unk_22C2B5C18);
  v34 = sub_22BE19448(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22BE186D4();
  MEMORY[0x28223BE20](v37);
  sub_22BE26800();
  v38 = sub_22BE5CE4C(&qword_27D90EB10, &qword_22C2CC960);
  v39 = sub_22BE19448(v38);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  sub_22BE17D10();
  MEMORY[0x28223BE20](v42);
  sub_22BE25A90();
  v43 = sub_22C26F494();
  sub_22C1C7730(v43, v44, v45, v46, v47, v48, v49, v50, v114, v115);
  if (v2)
  {
    v52 = sub_22C26F524();
    sub_22BE18524(v52);
    (*(v53 + 8))(v0);
LABEL_16:
    sub_22BE46D98();
    sub_22BE18478();
    return;
  }

  v116 = v32;
  v117 = v3;
  v118 = v51;
  sub_22C26F324();
  sub_22C25A610();
  sub_22C107378();
  sub_22C26F314();
  sub_22C107378();
  sub_22C26F4D4();
  v54 = v120;
  sub_22C25A068();
  v55 = sub_22BE29454();
  v56(v55);
  sub_22C25AA50();
  v57 = sub_22BE36658();
  v59 = v58(v57);
  v60 = *MEMORY[0x277D1C9B0];
  v115 = v1;
  if (v59 == v60)
  {
    HIDWORD(v114) = 0;
LABEL_7:
    v61 = v116;
LABEL_15:
    (*(v54 + 8))(v61, v25);
    v63 = sub_22C26F4F4();
    sub_22C1C1424(v63, v64, v65, v66, v67, v68, v69, v70, v114, v115);
    v72 = v71;
    v73 = v0;
    sub_22C26F504();
    v74 = sub_22C26F464();
    v75 = type metadata accessor for TranscriptProtoVisualOutputOptions(0);
    v76 = v124;
    v77 = &v124[*(v75 + 20)];
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE190E4();
    v78 = sub_22BE33560();
    v79(v78);
    *v76 = v74 & 1;
    v80 = sub_22BE360A0();
    sub_22BE19DC4(v80, v81, v82, v75);
    sub_22C26F4C4();
    sub_22C107548();
    v126 = v72;
    v83 = sub_22C26F4E4();
    v85 = v84;
    v86 = sub_22C26F514();
    sub_22C221268(v86);
    v123 = v87;
    v88 = type metadata accessor for TranscriptProtoResponseOutput(0);
    v120 = v88[8];
    type metadata accessor for TranscriptProtoDialogType(0);
    v122 = v83;
    v89 = v119;
    sub_22C259860();
    sub_22BE19DC4(v90, v91, v92, v93);
    v121 = v85;
    v94 = v88[9];
    sub_22C259860();
    sub_22BE19DC4(v95, v96, v97, v98);
    v99 = v88[10];
    sub_22C25976C();
    sub_22BE19DC4(v100, v101, v102, v103);
    v104 = v88[11];
    type metadata accessor for TranscriptProtoVisualOutput(0);
    v105 = sub_22C259B90();
    sub_22BE19DC4(v105, v106, v107, v108);
    v109 = v88[13];
    v110 = (v89 + v88[12]);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v111 = sub_22C26F524();
    sub_22BE18524(v111);
    (*(v112 + 8))(v73);
    *v89 = v118;
    sub_22BE2343C();
    sub_22BE2343C();
    *(v89 + 8) = BYTE4(v114);
    *(v89 + 16) = v126;
    sub_22BE2343C();
    sub_22BE2343C();
    v113 = v121;
    *v110 = v122;
    v110[1] = v113;
    *(v89 + 24) = v123;
    goto LABEL_16;
  }

  if (v59 == *MEMORY[0x277D1C9C0])
  {
    HIDWORD(v114) = 1;
    goto LABEL_7;
  }

  v61 = v116;
  if (v59 == *MEMORY[0x277D1C9B8])
  {
    v62 = 2;
LABEL_14:
    HIDWORD(v114) = v62;
    goto LABEL_15;
  }

  if (v59 == *MEMORY[0x277D1C9D0])
  {
    v62 = 3;
    goto LABEL_14;
  }

  if (v59 == *MEMORY[0x277D1C9C8])
  {
    v62 = 4;
    goto LABEL_14;
  }

  sub_22C274004();
  __break(1u);
}

void TranscriptProtoResponseType.init(handwritten:)()
{
  sub_22BE4111C();
  v0 = sub_22C26F4A4();
  v1 = sub_22BE1A3D8(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22BE19338();
  v6 = sub_22C259870();
  v7(v6);
  v8 = sub_22C1CEBF4();
  v10 = v9(v8);
  if (v10 == *MEMORY[0x277D1C9B0] || v10 == *MEMORY[0x277D1C9C0] || v10 == *MEMORY[0x277D1C9B8] || v10 == *MEMORY[0x277D1C9D0] || v10 == *MEMORY[0x277D1C9C8])
  {
    v11 = *(v3 + 8);
    v12 = sub_22BE2590C();
    v13(v12);
    sub_22BE25CC0();
  }

  else
  {
    sub_22BE3FFAC();
    __break(1u);
  }
}

uint64_t TranscriptProtoVisualOutputOptions.init(handwritten:)()
{
  sub_22C259E88();
  v2 = sub_22C26F464();
  v3 = type metadata accessor for TranscriptProtoVisualOutputOptions(0);
  sub_22BE48874(v3);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v4 = sub_22C26F474();
  sub_22BE18524(v4);
  result = (*(v5 + 8))(v1);
  *v0 = v2 & 1;
  return result;
}

uint64_t sub_22C229E50@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(uint64_t)@<X2>, void *a4@<X8>)
{
  result = a2(*a1);
  if (!v4)
  {
    v9 = sub_22BE48298();
    v10 = a3(v9);
    sub_22BE48874(v10);
    result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    *a4 = v5;
  }

  return result;
}

void ActionParameterContext.init(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  sub_22C25AA20();
  v15 = sub_22C25A424(v14);
  v16 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(v15);
  v17 = sub_22BE19448(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BE1955C();
  v20 = type metadata accessor for TranscriptProtoStatementID(0);
  v21 = sub_22BE19448(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22BE2F294();
  v24 = sub_22C26E684();
  v25 = sub_22BE41130(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  v30 = sub_22BE1AD20();
  v31 = type metadata accessor for TranscriptProtoActionParameterContext(v30);
  v32 = v11 + *(v31 + 24);
  sub_22C25AA44();
  sub_22C1026C4();
  if (v10)
  {
    sub_22C259CF8();
  }

  else
  {
    v54 = v27;
    v33 = *v13;
    v35 = *(v13 + 1);
    v34 = *(v13 + 2);

    sub_22BE1804C();
    sub_22C26E664();
    sub_22BE18B80();
    sub_22BE1AE58();
    v36 = *(v11 + 16);
    v37 = v11 + *(v31 + 28);
    sub_22C25AB10();
    sub_22C10289C();
    if (v33)
    {
      sub_22C259CF8();
      v38 = *(v54 + 8);
      v39 = sub_22BE194C4();
      v40(v39);
    }

    else
    {
      v41 = v12[1];
      v42 = v12[4];
      v52 = v12[3];
      v53 = *v12;
      v51 = *(v12 + 16);

      sub_22BE40CB0();
      sub_22BE1AE58();
      v44 = *v11;
      v43 = v11[1];

      sub_22C259CF8();
      v45 = *(v54 + 32);
      v46 = sub_22BE354DC();
      v47(v46);
      v48 = type metadata accessor for ActionParameterContext(0);
      *(a10 + *(v48 + 28)) = v36;
      v49 = a10 + *(v48 + 24);
      *v49 = v53;
      *(v49 + 8) = v41;
      *(v49 + 16) = v52;
      *(v49 + 24) = v42;
      *(v49 + 32) = v51;
      sub_22C25A0A4(v48);
      *v50 = v44;
      v50[1] = v43;
    }
  }

  sub_22BE35D48();
  sub_22BE18478();
}

void TranscriptProtoActionParameterContext.init(handwritten:)()
{
  sub_22BE19460();
  v4 = v3;
  v62 = v5;
  v6 = sub_22BE5CE4C(&qword_27D90E670, &unk_22C2CC890);
  sub_22BE19448(v6);
  v8 = *(v7 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE1AB08();
  v10 = sub_22C26E684();
  v11 = sub_22BE179D8(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BE2379C();
  v16 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v16);
  v18 = *(v17 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  sub_22BE23E58();
  v20 = sub_22BE37EE0();
  v21(v20, v4, v10);
  v22 = sub_22C26E674();
  v23 = sub_22C26E654();
  v24 = sub_22C25A628();
  v25 = type metadata accessor for TranscriptProtoStatementID(v24);
  v26 = *(v25 + 24);
  v60 = v25;
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v27 = *(v13 + 8);
  v28 = sub_22BE261AC();
  v29(v28);
  *v2 = v22;
  *(v2 + 8) = v23;
  *(v2 + 16) = v1;
  v30 = sub_22BE360A0();
  v33 = sub_22C18F17C(v30, v31, v32, v25);
  v34 = type metadata accessor for ActionParameterContext(v33);
  v35 = v34[6];
  v36 = (v4 + v34[5]);
  v61 = *v36;
  v58 = v4;
  v59 = v36[1];
  v38 = *(v4 + v35);
  v37 = *(v4 + v35 + 8);
  v40 = *(v4 + v35 + 16);
  v39 = *(v4 + v35 + 24);
  v57 = *(v4 + v35 + 32);
  v41 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  v42 = *(v41 + 28);

  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v0 = v38;
  *(v0 + 8) = v37;
  *(v0 + 24) = v40;
  *(v0 + 32) = v39;
  *(v0 + 16) = v57;
  v43 = sub_22BE22B8C();
  sub_22BE19DC4(v43, v44, v45, v41);
  LOBYTE(v42) = *(v58 + v34[7]);
  v46 = type metadata accessor for TranscriptProtoActionParameterContext(0);
  v47 = v46[6];
  sub_22BE1A140();
  sub_22BE19DC4(v48, v49, v50, v60);
  v51 = v46[7];
  sub_22C25976C();
  sub_22BE19DC4(v52, v53, v54, v55);
  v56 = v62 + v46[8];
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE291DC();
  sub_22BE1AE58();
  sub_22BE2343C();
  *v62 = v61;
  *(v62 + 8) = v59;
  sub_22BE2343C();
  *(v62 + 16) = v42;
  sub_22BE1AABC();
}

void ActionConfirmation.init(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v24;
  a20 = v25;
  sub_22C18F0F4();
  sub_22C25A344(v26);
  v27 = sub_22C26F7C4();
  v28 = sub_22BE18910(v27, &a15);
  v223 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v32);
  sub_22BE19E94();
  v34 = sub_22BE18950(v33);
  v206 = type metadata accessor for TranscriptProtoPromptSelection(v34);
  v35 = sub_22BE18000(v206);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  sub_22BE17B98();
  sub_22BE181F4();
  v39 = MEMORY[0x28223BE20](v38);
  sub_22C259DC4(v39, v40, v41, v42, v43, v44, v45, v46, v184);
  v47 = sub_22BE5CE4C(&qword_27D90E688, &qword_22C296F40);
  v48 = sub_22BE19448(v47);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  sub_22BE17B98();
  v205 = v51;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v52);
  sub_22C259BC0();
  v53 = sub_22BE5CE4C(&qword_27D909088, &unk_22C27FCA0);
  sub_22BE19448(v53);
  v55 = *(v54 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v56);
  sub_22BE1A174();
  sub_22C259DB4(v57);
  v58 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  sub_22BE19448(v58);
  v60 = *(v59 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v61);
  sub_22BE1A174();
  v215 = v62;
  sub_22BE183BC();
  v216 = sub_22C272594();
  v63 = sub_22BE179D8(v216);
  v65 = v64;
  v67 = *(v66 + 64);
  MEMORY[0x28223BE20](v63);
  sub_22BE17B98();
  v212 = v68;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v69);
  sub_22BE19E94();
  sub_22C259AC0(v70);
  v208 = sub_22C272874();
  v71 = sub_22BE179D8(v208);
  v191 = v72;
  v74 = *(v73 + 64);
  MEMORY[0x28223BE20](v71);
  sub_22BE17D10();
  v76 = MEMORY[0x28223BE20](v75);
  sub_22BE4202C(v76, v77, v78, v79, v80, v81, v82, v83, v185);
  v84 = sub_22C26F2A4();
  v85 = sub_22BE18910(v84, &a13);
  v87 = v86;
  v89 = *(v88 + 64);
  MEMORY[0x28223BE20](v85);
  sub_22BE17A44();
  v91 = sub_22BE18950(v90);
  v92 = type metadata accessor for TranscriptProtoParameterValue(v91);
  v93 = sub_22BE18910(v92, &a18);
  v214 = v94;
  v96 = *(v95 + 64);
  MEMORY[0x28223BE20](v93);
  sub_22BE2582C();
  v98 = MEMORY[0x28223BE20](v97);
  sub_22BE355FC(v98, v99, v100, v101, v102, v103, v104, v105, v186);
  v106 = sub_22BE5CE4C(&qword_27D90E6C8, &unk_22C2AE530);
  sub_22BE19448(v106);
  v108 = *(v107 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v109);
  sub_22BE1A174();
  sub_22BE190A8(v110);
  v111 = sub_22BE5CE4C(&qword_27D911EE8, &unk_22C2B5C00);
  sub_22BE19448(v111);
  v113 = *(v112 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v114);
  sub_22BE1A174();
  sub_22BE190A8(v115);
  v190 = v20;
  v116 = *v20;
  v117 = v23;
  sub_22BE5CE4C(&qword_27D915630, &unk_22C2CC998);
  sub_22C273D04();
  v118 = 0;
  v119 = *(v116 + 64);
  v196 = v116 + 64;
  v213 = v116;
  v120 = *(v116 + 32);
  sub_22BE26A98();
  v195 = v121 >> 6;
  v209 = v65 + 2;
  v210 = v65 + 4;
  v211 = v65 + 1;
  v204 = v191 + 32;
  v189 = *MEMORY[0x277D1CAF0];
  v193 = v223 + 104;
  v188 = *MEMORY[0x277D1CAF8];
  v187 = *MEMORY[0x277D1CB00];
  sub_22C25A4F4(v223 + 32);
  v199 = v122 + 64;
  v201 = v87;
  v198 = v87 + 32;
  v217 = v21;
  v207 = v122;
  v194 = v23;
  if (v123)
  {
    while (1)
    {
      v223 = v22;
      sub_22BE22BE8();
      v218 = v125;
LABEL_8:
      v128 = v124 | (v118 << 6);
      v129 = *(v213 + 56);
      v130 = (*(v213 + 48) + 16 * v128);
      v131 = v130[1];
      v219 = *v130;
      v132 = v222;
      sub_22BE1AA68(v129 + *(v214 + 72) * v128, v222);
      v133 = sub_22BE33560();
      sub_22BE1AA68(v133, v134);
      v135 = v215;
      sub_22BE22814();
      v136 = sub_22BE406A0();
      v137 = v216;
      sub_22BE1AB5C(v136, v138, v216);
      if (v139)
      {
        break;
      }

      v140 = *v210;
      v141 = sub_22BE1A6BC();
      v142(v141);
      v143 = *v209;
      v144 = sub_22BE33FCC();
      v145(v144);
      v220 = v131;

      sub_22C25A338();
      v146 = v223;
      sub_22C272864();
      v22 = v146;
      if (v146)
      {
        v181 = *v211;
        v182 = sub_22BE37490();
        v183(v182);
        sub_22BE35C4C();
        sub_22BE1AE58();
        goto LABEL_21;
      }

      v147 = *v211;
      v148 = sub_22BE37490();
      v149(v148);
      sub_22BE33554(&a17);
      v150(v221, v117, v208);
      sub_22BE2ED7C(&a18);
      sub_22BE22814();
      sub_22C25A368();
      sub_22BE22814();
      v151 = sub_22BE2BA98();
      sub_22BE1AB5C(v151, v152, v206);
      if (v139)
      {
        v153 = sub_22BE1824C();
        sub_22BE233E8(v153, v154, &qword_22C296F40);
        v155 = sub_22BE194F8();
        sub_22BE233E8(v155, v156, &qword_22C296F40);
      }

      else
      {
        v157 = v197;
        v158 = v203;
        sub_22C259680();
        sub_22C108C10(&a16);
        sub_22BE3B620(v159, v160);
        sub_22BE29370();
        sub_22C108C10(&v224);
        sub_22BE1AA68(v161, v162);
        sub_22BE3767C();
        sub_22BE1AE58();
        v223 = v146;
        *v157 = 0x70004C824;
        sub_22BE33554(&v218);
        v163(v157, v189, v158);
        v164 = *v192;
        v165 = sub_22BE196A8();
        v164(v165);
        sub_22BE233E8(v217, &qword_27D90E688, &qword_22C296F40);
        sub_22BE3767C();
        sub_22BE406B8();
        sub_22BE1AE58();
        v166 = sub_22BE1AEE4();
        v164(v166);
        v22 = v223;
        v117 = v194;
      }

      v167 = sub_22BE40694();
      sub_22BE19DC4(v167, v168, v169, v170);
      v171 = v200;
      sub_22C26F284();
      sub_22BE1AE58();
      sub_22BE194F8();
      sub_22BE1AE58();
      sub_22BE3CD8C((v128 >> 3) & 0x1FFFFFFFFFFFFFF8);
      sub_22C25A924(v172);
      v173 = v207;
      v174 = (*(v207 + 48) + 16 * v128);
      v175 = v220;
      *v174 = v219;
      v174[1] = v175;
      (*(v201 + 32))(*(v173 + 56) + *(v201 + 72) * v128, v171, v202);
      sub_22C25AB9C();
      if (v177)
      {
LABEL_25:
        __break(1u);
        return;
      }

      *(v173 + 16) = v176;
      if (!v218)
      {
        goto LABEL_3;
      }
    }

    sub_22BE233E8(v135, &qword_27D909128, &qword_22C294AA0);
    sub_22BE5CE4C(&qword_27D911F88, &qword_22C2B5D10);
    sub_22BE43258();
    sub_22C25A2F0();
    sub_22C108598();
    v179 = sub_22BE196B4();
    *v180 = v137;
    v180[1] = v132;
    sub_22C25A590(v179, v180);
    sub_22BE35C4C();
    sub_22BE1AE58();
LABEL_21:

    sub_22BE35C4C();
    sub_22BE1AE58();
    sub_22BE351F8();
    goto LABEL_22;
  }

LABEL_3:
  v126 = v118;
  while (1)
  {
    v118 = v126 + 1;
    if (__OFADD__(v126, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v118 >= v195)
    {
      break;
    }

    ++v126;
    if (*(v196 + 8 * v118))
    {
      v223 = v22;
      sub_22BE4878C();
      v218 = v127;
      goto LABEL_8;
    }
  }

  v178 = v190 + *(type metadata accessor for TranscriptProtoActionConfirmation(0) + 20);
  sub_22BE22944(&v214);
  sub_22BE22814();
  sub_22BE362B8();
  sub_22C0FFF34();
  if (v22)
  {
    sub_22BE351F8();
    sub_22BE1AE58();

    goto LABEL_23;
  }

  sub_22BE2590C();
  sub_22C26FB64();
  sub_22BE351F8();
LABEL_22:
  sub_22BE1AE58();
LABEL_23:
  sub_22BE1AB28();
  sub_22BE18478();
}

void TranscriptProtoActionConfirmation.init(handwritten:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_22BE19130();
  a20 = v25;
  a21 = v26;
  sub_22C25A770();
  v28 = sub_22C25A344(v27);
  v29 = type metadata accessor for TranscriptProtoPromptSelection(v28);
  v30 = sub_22BE18000(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  sub_22BE17A44();
  sub_22BE18950(v33);
  v210 = sub_22C26F7C4();
  v34 = sub_22BE17A18(v210);
  a11 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v38);
  sub_22BE19490();
  sub_22BE181F4();
  v40 = MEMORY[0x28223BE20](v39);
  sub_22C259DC4(v40, v41, v42, v43, v44, v45, v46, v47, v181);
  v48 = sub_22BE5CE4C(&qword_27D909088, &unk_22C27FCA0);
  v49 = sub_22BE19448(v48);
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v49);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v52);
  sub_22BE19E94();
  sub_22C0B1ABC(v53);
  v54 = sub_22BE5CE4C(&qword_27D90E688, &qword_22C296F40);
  sub_22BE19448(v54);
  v56 = *(v55 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v57);
  sub_22BE1A174();
  sub_22BE18950(v58);
  v59 = sub_22C272594();
  v60 = sub_22BE1A3D8(v59);
  v208 = v61;
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v60);
  sub_22BE17A44();
  sub_22C259DF0(v64);
  v200 = sub_22C272874();
  v65 = sub_22BE179D8(v200);
  v207 = v66;
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v65);
  sub_22BE17A44();
  v199 = v69;
  v70 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  sub_22BE19448(v70);
  v72 = *(v71 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v73);
  sub_22BE1A174();
  v75 = sub_22BE18950(v74);
  v197 = type metadata accessor for TranscriptProtoParameterValue(v75);
  v76 = sub_22BE179D8(v197);
  v78 = *(v77 + 64);
  MEMORY[0x28223BE20](v76);
  sub_22BE17B98();
  v198 = v79;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v80);
  sub_22BE19E94();
  sub_22BE18950(v81);
  v211 = sub_22C26F2A4();
  v82 = sub_22BE179D8(v211);
  v84 = v83;
  v86 = *(v85 + 64);
  MEMORY[0x28223BE20](v82);
  sub_22BE17D10();
  MEMORY[0x28223BE20](v87);
  sub_22BE324EC();
  v88 = sub_22BE5CE4C(&qword_27D911EE8, &unk_22C2B5C00);
  sub_22BE19448(v88);
  v90 = *(v89 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v91);
  sub_22BE1A174();
  sub_22BE190A8(v92);
  v93 = sub_22BE5CE4C(&qword_27D90E6C8, &unk_22C2AE530);
  sub_22BE19448(v93);
  v95 = *(v94 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v96);
  sub_22BE1A174();
  sub_22BE190A8(v97);
  v185 = v21;
  v98 = MEMORY[0x2318A8270]();
  sub_22BE5CE4C(&qword_27D915638, &unk_22C2CC9A8);
  sub_22C273D04();
  v99 = 0;
  v100 = *(v98 + 64);
  v203[0] = v98;
  v101 = *(v98 + 32);
  sub_22BE26A98();
  v186 = v102 >> 6;
  sub_22BE417A8(v84 + 16);
  v188 = (a11 + 16);
  v191 = *MEMORY[0x277D1CAF0];
  v184 = *MEMORY[0x277D1CB00];
  v182 = *MEMORY[0x277D1CAF8];
  sub_22C25A4F4(a11 + 8);
  v195 = v84;
  v194 = (v84 + 8);
  v201 = v104;
  v212 = v29;
  v196 = v24;
  v209 = v23;
  while (1)
  {
    if (!v103)
    {
      v107 = v99;
      while (1)
      {
        v99 = v107 + 1;
        if (__OFADD__(v107, 1))
        {
          break;
        }

        if (v99 >= v186)
        {

          sub_22C26FB54();
          sub_22C25A524();
          sub_22C106F58();
          v169 = type metadata accessor for TranscriptProtoActionConfirmation(0);
          sub_22C25ACB4(v169);
          type metadata accessor for TranscriptProtoActionConfirmationSystemStyle(0);
          sub_22BE1A140();
          sub_22BE3A034(v170, v171, v172, v173);
          _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
          v174 = sub_22C26FB84();
          sub_22BE18524(v174);
          (*(v175 + 8))(v185);
          *v183 = v201;
          sub_22BE2343C();
          goto LABEL_29;
        }

        ++v107;
        if (*(v98 + 64 + 8 * v99))
        {
          a11 = v22;
          sub_22BE4878C();
          v204 = v108;
          goto LABEL_9;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      sub_22C274004();
      __break(1u);
      return;
    }

    a11 = v22;
    sub_22BE22BE8();
    v204 = v106;
LABEL_9:
    v109 = v105 | (v99 << 6);
    v110 = *(v203[0] + 56);
    v111 = (*(v203[0] + 48) + 16 * v109);
    v112 = v111[1];
    v206 = *v111;
    v207 = v109;
    v113 = *(v195 + 16);
    v113(v24, v110 + *(v195 + 72) * v109, v211);
    v114 = sub_22BE3E79C();
    (v113)(v114);
    v115 = v198;
    sub_22BE3AE2C();
    sub_22BE19DC4(v116, v117, v118, v119);
    v205 = *(v197 + 20);
    sub_22BE1A140();
    sub_22BE19DC4(v120, v121, v122, v212);
    v123 = *(v197 + 24);
    v208 = v112;

    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v124 = v199;
    sub_22C26E984();
    v125 = a11;
    sub_22C272854();
    if (v125)
    {
      break;
    }

    a11 = 0;
    v126 = sub_22BE425F8();
    v127(v126);
    sub_22BE33554(&a11);
    v128 = sub_22C259EC8();
    v129(v128);
    sub_22C2597E4();
    sub_22BE19DC4(v130, v131, v132, v133);
    sub_22BE3911C();
    sub_22BE2343C();
    sub_22C26F274();
    sub_22C25A8AC(&a16);
    sub_22BE22814();
    v134 = sub_22BE23E90();
    sub_22BE1AB5C(v134, v135, v210);
    v136 = v115;
    if (v153)
    {
      v137 = sub_22BE1B5E0();
      sub_22BE233E8(v137, v138, &unk_22C27FCA0);
      v139 = sub_22BE25C08();
      sub_22BE233E8(v139, v140, &unk_22C27FCA0);
      v141 = 1;
      v142 = v193;
    }

    else
    {
      sub_22BE33554(&v209);
      v143 = sub_22BE194F8();
      v144(v143);
      v145 = *v188;
      v146 = sub_22BE1B5E0();
      v145(v146);
      v147 = sub_22BE1BF88();
      v145(v147);
      sub_22BE33554(&v207);
      v148 = sub_22BE3911C();
      if (v149(v148) == v191)
      {
        sub_22BE33554(v203);
        v151 = v210;
        v152(v189, v210);
        v150 = *v189;
      }

      else
      {
        sub_22C25A700(&v202);
        if (v153)
        {
          v150 = 0;
        }

        else
        {
          sub_22C25A700(&v198 + 4);
          if (!v153)
          {
            goto LABEL_33;
          }

          v150 = 1;
        }

        v151 = v210;
      }

      sub_22C25A700(&a10);
      if (v153)
      {
        v154 = 0;
      }

      else
      {
        v154 = 1;
      }

      *v190 = 0;
      *(v190 + 8) = 256;
      v155 = v190 + *(v212 + 20);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v156 = *v187;
      v157 = sub_22C25A640();
      v156(v157, v151);
      *v190 = v150;
      *(v190 + 8) = v154;
      *(v190 + 9) = 0;
      sub_22C259680();
      v142 = v193;
      sub_22BE3B620(v190, v193);
      sub_22BE233E8(v203[1], &qword_27D909088, &unk_22C27FCA0);
      v158 = sub_22BE406B8();
      v156(v158, v151);
      v141 = 0;
    }

    sub_22BE19DC4(v142, v141, 1, v212);
    v159 = *v194;
    (*v194)(v209, v211);
    sub_22BE2343C();
    sub_22BE3B620(v136, v192);
    v24 = v196;
    v160 = sub_22C259FF4();
    (v159)(v160);
    sub_22C259DA0();
    sub_22C25977C(v161);
    v162 = v201;
    sub_22C25AB88(*(v201 + 48));
    v163 = *(v162 + 56);
    sub_22C25AC90();
    sub_22BE3B620(v192, v164 + v165 * v166);
    sub_22C25AB9C();
    if (v168)
    {
      goto LABEL_32;
    }

    *(v162 + 16) = v167;
    v22 = a11;
    v103 = v204;
  }

  v176 = *v194;
  sub_22BE2BB28();
  v176();
  v177 = sub_22BE425F8();
  v178(v177);
  sub_22BE35C4C();
  sub_22BE1AE58();

  (v176)(v196, v124);

  v179 = sub_22C26FB84();
  sub_22BE18524(v179);
  (*(v180 + 8))(v185);
LABEL_29:
  sub_22BE46D98();
  sub_22BE18478();
}

void ActionConfirmation.SystemStyle.init(transcript:)()
{
  sub_22BE19130();
  v5 = sub_22C25A8F4(v4);
  v6 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource(v5);
  v7 = sub_22BE19448(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE17A44();
  sub_22BE4682C(v10);
  v11 = sub_22C26FB14();
  v12 = sub_22BE179D8(v11);
  v41 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = sub_22BE19820();
  v17 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement(v16);
  v18 = sub_22BE18000(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BE2582C();
  MEMORY[0x28223BE20](v21);
  v22 = sub_22BE2558C();
  v23 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleEnum(v22);
  v24 = sub_22BE19448(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  sub_22BE188B0();
  sub_22C101B38();
  if (v0)
  {
    sub_22C2598A4();
  }

  else
  {
    v39 = v3;
    v40 = v11;
    v27 = sub_22C259E7C();
    sub_22BE3B620(v27, v1);
    v28 = sub_22BE385E4();
    sub_22BE1AA68(v28, v2);
    v29 = *v2;
    v30 = *(v2 + 8);
    v31 = *(v17 + 24);

    sub_22C101A48();
    v32 = *v43;
    if (v32 != 4)
    {
      sub_22BE28690();
      sub_22BE1AE58();
      (*(v41 + 104))(v39, **(&unk_278725CA0 + v32), v40);
      v35 = *(v2 + 16);
      sub_22BE261AC();
      sub_22C26FAE4();
      sub_22C2598A4();
      sub_22BE1AE58();
      sub_22C25A278();
      sub_22BE1AE58();
      sub_22BE1AE58();
      v36 = *MEMORY[0x277D1CD60];
      v37 = sub_22C26FB44();
      sub_22BE1834C(v37);
      (*(v38 + 104))(v42, v36);
      goto LABEL_8;
    }

    sub_22BE5CE4C(&qword_27D9155C0, &unk_22C2CC7C0);
    sub_22BE43258();
    sub_22BE3D554();
    sub_22C108598();
    v33 = sub_22BE196B4();
    sub_22C259EA0(v33, v34);
    sub_22BE28690();
    sub_22BE1AE58();

    sub_22C2598A4();
    sub_22BE1AE58();
    sub_22C25A278();
    sub_22BE1AE58();
    sub_22BE1AB74();
  }

  sub_22BE1AE58();
LABEL_8:
  sub_22BE46D98();
  sub_22BE18478();
}

void ActionConfirmation.SystemStyle.MontaraEnablement.init(transcript:)()
{
  sub_22BE19130();
  v4 = v0;
  v6 = v5;
  v8 = sub_22BE2054C(v7);
  v9 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource(v8);
  v10 = sub_22BE19448(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BE18DFC();
  v13 = sub_22C26FB14();
  v14 = sub_22C2594A0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BE294E0();
  v20 = *v6;
  v19 = v6[1];
  v21 = *(type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement(0) + 24);

  sub_22C101A48();
  if (!v4)
  {
    v22 = *v1;
    if (v22 != 4)
    {
      sub_22BE28690();
      sub_22BE1AE58();
      (*(v16 + 104))(v3, **(&unk_278725CA0 + v22), v2);
      v25 = *(v6 + 16);
      sub_22C26FAE4();
      sub_22BE26148();
      sub_22BE1AE58();
      goto LABEL_5;
    }

    sub_22BE5CE4C(&qword_27D9155C0, &unk_22C2CC7C0);
    sub_22BE43258();
    sub_22C25A2F0();
    sub_22C108598();
    v23 = sub_22BE196B4();
    *v24 = v16;
    v24[1] = v2;
    sub_22C25A590(v23, v24);
    sub_22BE28690();
    sub_22BE1AE58();
  }

  sub_22BE26148();
  sub_22BE1AE58();

LABEL_5:
  sub_22BEE94B0();
  sub_22BE18478();
}

void TranscriptProtoActionConfirmationSystemStyle.init(handwritten:)()
{
  sub_22BE19460();
  sub_22BE1A5E4();
  v1 = sub_22C26FB34();
  v2 = sub_22BE179D8(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BE2582C();
  MEMORY[0x28223BE20](v7);
  sub_22BE2558C();
  v8 = sub_22C26FB44();
  v9 = sub_22BE41130(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BE188B0();
  v14 = sub_22BE5CE4C(&qword_27D90E6E0, &qword_22C2B5BF0);
  sub_22BE19448(v14);
  v16 = *(v15 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  v18 = sub_22BE250C8();
  v19 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleEnum(v18);
  v20 = sub_22BE38960();
  v23 = sub_22C18F17C(v20, v21, v22, v19);
  v24 = *(type metadata accessor for TranscriptProtoActionConfirmationSystemStyle(v23) + 20);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  (*(v11 + 16))(v0);
  v25 = *(v11 + 88);
  v26 = sub_22BE1824C();
  if (v27(v26) == *MEMORY[0x277D1CD60])
  {
    v28 = *(v11 + 96);
    v29 = sub_22BE1824C();
    v30(v29);
    sub_22C18F458();
    v31 = sub_22BE3911C();
    v32(v31);
    sub_22C11634C();
    v33 = sub_22BE1B328();
    v34(v33);
    TranscriptProtoActionConfirmationSystemStyleMontaraEnablement.init(handwritten:)();
    v35 = *(v11 + 8);
    v36 = sub_22BE37490();
    v37(v36);
    v38 = *(v4 + 8);
    v39 = sub_22BE3C5E4();
    v40(v39);
    v41 = sub_22C25974C();
    sub_22BE19DC4(v41, v42, v43, v19);
    sub_22BE2343C();
    sub_22BE1AABC();
  }

  else
  {
    sub_22C274004();
    __break(1u);
  }
}

void TranscriptProtoActionConfirmationSystemStyleMontaraEnablement.init(handwritten:)()
{
  sub_22BE19460();
  sub_22BE1B254();
  v4 = sub_22C26FB14();
  v5 = sub_22BE19448(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE294E0();
  v8 = sub_22BE5CE4C(&qword_27D90E6F8, &qword_22C2B5BE0);
  sub_22BE19448(v8);
  v10 = *(v9 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE25CD0();
  sub_22C26EF64();
  sub_22C25A2F0();
  sub_22C26FB24();
  sub_22BE3D5BC();
  TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource.init(handwritten:)();
  v12 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource(0);
  v13 = sub_22BE3C530();
  sub_22BE19DC4(v13, v14, v15, v12);
  v16 = sub_22C26EF44();
  v17 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement(0);
  v18 = *(v17 + 24);
  sub_22C25976C();
  sub_22BE19DC4(v19, v20, v21, v22);
  v23 = v0 + *(v17 + 28);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v24 = sub_22C26FB34();
  sub_22BE18524(v24);
  (*(v25 + 8))(v1);
  *v0 = v2;
  *(v0 + 8) = v3;
  sub_22BE2343C();
  *(v0 + 16) = v16 & 1;
  sub_22BE1AABC();
}

uint64_t ActionConfirmation.SystemStyle.MontaraEnablement.Source.init(transcript:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  if (v4 == 4)
  {
    sub_22BE5CE4C(&qword_27D9155C0, &unk_22C2CC7C0);
    sub_22C25AA08();
    sub_22C25A64C();
    sub_22C108598();
    v5 = sub_22BE196B4();
    *v6 = v2;
    v6[1] = v3;
    sub_22C25A590(v5, v6);
    sub_22BE28690();
    return sub_22BE1AE58();
  }

  else
  {
    sub_22BE28690();
    sub_22BE1AE58();
    v9 = sub_22C26FB14();
    v10 = sub_22BE18000(v9);
    switch(v4)
    {
      case 1:
        v12 = MEMORY[0x277D1CD40];
        break;
      case 2:
        v12 = MEMORY[0x277D1CD38];
        break;
      case 3:
        v12 = MEMORY[0x277D1CD30];
        break;
      default:
        v12 = MEMORY[0x277D1CD48];
        break;
    }

    return (*(v11 + 104))(a2, *v12, v10);
  }
}

uint64_t TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource.init(handwritten:)()
{
  sub_22BE1B254();
  v1 = sub_22C26FB14();
  v2 = sub_22BE179D8(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BE17CBC();
  v7 = sub_22BE3859C(4);
  v8 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource(v7);
  sub_22BE48874(v8);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE29400();
  v9 = sub_22BE3C5E4();
  v10(v9);
  v11 = sub_22BE26264();
  v13 = v12(v11);
  if (v13 == *MEMORY[0x277D1CD48])
  {
    v14 = 0;
LABEL_9:
    v15 = *(v4 + 8);
    v16 = sub_22BE18040();
    result = v17(v16);
    *v0 = v14;
    return result;
  }

  if (v13 == *MEMORY[0x277D1CD40])
  {
    v14 = 1;
    goto LABEL_9;
  }

  if (v13 == *MEMORY[0x277D1CD38])
  {
    v14 = 2;
    goto LABEL_9;
  }

  if (v13 == *MEMORY[0x277D1CD30])
  {
    v14 = 3;
    goto LABEL_9;
  }

  result = sub_22C25AE4C();
  __break(1u);
  return result;
}

void ParameterValue.init(transcript:)()
{
  sub_22BE19130();
  sub_22C25A05C();
  v1 = sub_22BE5CE4C(&qword_27D90E688, &qword_22C296F40);
  sub_22BE19448(v1);
  v3 = *(v2 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1BCE8(v5, v26);
  v6 = sub_22BE5CE4C(&qword_27D909088, &unk_22C27FCA0);
  sub_22BE19448(v6);
  v8 = *(v7 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE250C8();
  v10 = sub_22C272594();
  v11 = sub_22BE179D8(v10);
  v27 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BE3C8B8();
  MEMORY[0x28223BE20](v15);
  sub_22BE41E38();
  v16 = sub_22C272874();
  v17 = sub_22C259488(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BE188B0();
  sub_22C101488();
  if (!v0)
  {
    sub_22C116380();
    v20 = sub_22BE41FB4();
    v21(v20);
    sub_22C272864();
    v22 = *(v27 + 8);
    v23 = sub_22BE37B20();
    v24(v23);
    v25 = *(type metadata accessor for TranscriptProtoParameterValue(0) + 20);
    sub_22BE22814();
    sub_22C25A6C4();
    sub_22C0FCE10();
    sub_22BF0AFB8();
    sub_22C26F284();
  }

  sub_22BE35C4C();
  sub_22BE1AE58();
  sub_22BE35D48();
  sub_22BE18478();
}

void TranscriptProtoParameterValue.init(handwritten:)()
{
  sub_22BE19130();
  v56 = v1;
  v2 = sub_22BE5CE4C(&qword_27D909088, &unk_22C27FCA0);
  sub_22BE19448(v2);
  v4 = *(v3 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE20168(v6, v54);
  v7 = sub_22BE5CE4C(&qword_27D90E688, &qword_22C296F40);
  sub_22BE19448(v7);
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE415D8(v11);
  v12 = sub_22C272594();
  v13 = sub_22BE179D8(v12);
  v55 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BE28FD8();
  v17 = sub_22C272874();
  v18 = sub_22BE179D8(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BE18DFC();
  v23 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  sub_22BE19448(v23);
  v25 = *(v24 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v26);
  sub_22BE19E64();
  v27 = sub_22BE38960();
  v30 = sub_22BE3FEC8(v27, v28, v29);
  v31 = type metadata accessor for TranscriptProtoParameterValue(v30);
  v32 = sub_22C25AA2C(v31);
  type metadata accessor for TranscriptProtoPromptSelection(v32);
  sub_22BE1A140();
  sub_22BE3A034(v33, v34, v35, v36);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C26E984();
  sub_22C272854();
  if (v0)
  {
    v37 = sub_22C26F2A4();
    sub_22BE18524(v37);
    (*(v38 + 8))(v56);
    v39 = *(v20 + 8);
    v40 = sub_22BE22DF4();
    v41(v40);
    sub_22BE35C4C();
    sub_22BE1AE58();
  }

  else
  {
    v42 = *(v20 + 8);
    v43 = sub_22BE22DF4();
    v44(v43);
    v45 = *(v55 + 32);
    v46 = sub_22BE426E8();
    v47(v46);
    sub_22C2597F4();
    sub_22BE19DC4(v48, v49, v50, v51);
    sub_22BE2343C();
    sub_22C26F274();
    sub_22C106334();
    v52 = sub_22C26F2A4();
    sub_22BE18524(v52);
    (*(v53 + 8))(v56);
    sub_22BE2343C();
  }

  sub_22BE46D98();
  sub_22BE18478();
}

uint64_t PromptSelection.init(transcript:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 9))
  {
    sub_22BE5CE4C(&qword_27D911FB8, &unk_22C2B5D60);
    sub_22C25AA08();
    sub_22BE3D554();
    sub_22C108598();
    v3 = sub_22BE196B4();
    sub_22C259EA0(v3, v4);
    sub_22BE3767C();
    return sub_22BE1AE58();
  }

  else
  {
    v6 = *a1;
    v7 = *(a1 + 8);
    sub_22BE3767C();
    sub_22BE1AE58();
    if (v7)
    {
      v8 = sub_22C26F7C4();
      sub_22BE1834C(v8);
      if (v6)
      {
        v10 = MEMORY[0x277D1CAF8];
      }

      else
      {
        v10 = MEMORY[0x277D1CB00];
      }

      return (*(v9 + 104))(a2, *v10);
    }

    else
    {
      *a2 = v6;
      v11 = *MEMORY[0x277D1CAF0];
      v12 = sub_22C26F7C4();
      sub_22BE1834C(v12);
      return (*(v13 + 104))(a2, v11);
    }
  }
}

void TranscriptProtoPromptSelection.init(handwritten:)()
{
  sub_22BE3C358();
  sub_22BE1B254();
  v2 = sub_22C26F7C4();
  v3 = sub_22BE179D8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE18DFC();
  sub_22C116380();
  v8 = sub_22BE431C0();
  v9(v8);
  v10 = v5[11];
  v11 = sub_22BE232C8();
  v13 = v12(v11);
  v14 = v13;
  v15 = *MEMORY[0x277D1CAF0];
  if (v13 == *MEMORY[0x277D1CAF0])
  {
    v17 = v5[12];
    v18 = sub_22BE232C8();
    v19(v18);
    v16 = *v1;
    goto LABEL_7;
  }

  if (v13 == *MEMORY[0x277D1CB00])
  {
    v16 = 0;
LABEL_7:
    *v0 = 0;
    *(v0 + 8) = 256;
    v20 = type metadata accessor for TranscriptProtoPromptSelection(0);
    sub_22BE48874(v20);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v21 = v5[1];
    v22 = sub_22BE18040();
    v23(v22);
    *v0 = v16;
    *(v0 + 8) = v14 != v15;
    sub_22BE267B8();
    return;
  }

  if (v13 == *MEMORY[0x277D1CAF8])
  {
    v16 = 1;
    goto LABEL_7;
  }

  sub_22C25AE4C();
  __break(1u);
}

void ParameterNeedsValue.init(transcript:)()
{
  sub_22BE19130();
  v36 = v0;
  v2 = v1;
  v3 = sub_22BE5CE4C(&qword_27D90E998, &unk_22C2AE640);
  sub_22BE19448(v3);
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE35C94(v7, v33);
  v8 = sub_22BE5CE4C(&qword_27D911ED0, &unk_22C2B5BD0);
  sub_22BE19448(v8);
  v10 = *(v9 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE20168(v12, v34);
  v13 = sub_22C2725A4();
  v14 = sub_22BE179D8(v13);
  v35 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BE2582C();
  MEMORY[0x28223BE20](v18);
  sub_22C2595A0();
  v19 = sub_22C2728A4();
  v20 = sub_22C2594A0(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22BE197B8();
  v23 = *v2;
  v24 = v2[1];
  v25 = type metadata accessor for TranscriptProtoParameterNeedsValue(0);
  v26 = *(v25 + 20);

  sub_22C1024DC();
  if (v36)
  {
    sub_22C2594E8();
    sub_22BE1AE58();
  }

  else
  {
    sub_22C11634C();
    v27 = sub_22BE29454();
    v28(v27);
    sub_22C25A918();
    sub_22C272894();
    v29 = *(v35 + 8);
    v30 = sub_22BE1B18C();
    v31(v30);
    v32 = *(v25 + 24);
    sub_22BE22814();
    sub_22C0FFD60();
    sub_22C26FBD4();
    sub_22C2594E8();
    sub_22BE1AE58();
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

void TranscriptProtoParameterNeedsValue.init(handwritten:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  sub_22C259FE8();
  v66 = v11;
  v12 = sub_22BE5CE4C(&qword_27D911ED0, &unk_22C2B5BD0);
  sub_22BE19448(v12);
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE20310(v16, v65);
  v17 = sub_22BE5CE4C(&qword_27D90E998, &unk_22C2AE640);
  sub_22BE19448(v17);
  v19 = *(v18 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  sub_22BE23A90(v21);
  v22 = sub_22C2725A4();
  v23 = sub_22BE179D8(v22);
  v67 = v24;
  v68 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22BE18DFC();
  v27 = sub_22C2728A4();
  v28 = sub_22C259488(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v28);
  sub_22BE28FD8();
  v33 = sub_22BE5CE4C(&qword_27D90C138, &qword_22C2CB830);
  sub_22BE19448(v33);
  v35 = *(v34 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v36);
  sub_22BE1A174();
  v37 = sub_22C26E894();
  v39 = v38;
  sub_22C26FBF4();
  sub_22C272884();
  if (a10)
  {

    v40 = sub_22C26FC54();
    sub_22BE18524(v40);
    (*(v41 + 8))(v10);
    v42 = *(v30 + 8);
    v43 = sub_22BE3CEF4();
    v44(v43);
  }

  else
  {
    v45 = *(v30 + 8);
    v46 = sub_22BE3CEF4();
    v47(v46);
    v48 = *(v67 + 32);
    v49 = sub_22BE1AB1C();
    v50(v49);
    v51 = sub_22BE22B8C();
    sub_22BE19DC4(v51, v52, v53, v68);
    sub_22C26FC44();
    sub_22C106D88();
    v54 = type metadata accessor for TranscriptProtoParameterNeedsValue(0);
    sub_22C25ACB4(v54);
    sub_22C25975C();
    sub_22BE19DC4(v55, v56, v57, v58);
    type metadata accessor for TranscriptProtoParameterNeedsValueContext(0);
    sub_22BE1A140();
    sub_22C25AE64(v59, v60, v61, v62);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v63 = sub_22C26FC54();
    sub_22BE18524(v63);
    (*(v64 + 8))(v10);
    *v66 = v37;
    v66[1] = v39;
    sub_22BE2343C();
    sub_22BE2343C();
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

void ParameterNeedsValue.Context.init(transcript:)()
{
  v4 = sub_22BE1B254();
  v5 = type metadata accessor for TranscriptProtoParameterNeedsValuePhotosSearch(v4);
  v6 = sub_22BE19448(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE2582C();
  MEMORY[0x28223BE20](v9);
  v10 = sub_22C2595A0();
  v11 = type metadata accessor for TranscriptProtoParameterNeedsValueContextEnum(v10);
  v12 = sub_22BE19448(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BE1955C();
  sub_22C101C28();
  if (v1)
  {
    sub_22C0E9A74();
    sub_22BE1AE58();
  }

  else
  {
    v15 = sub_22C1088AC();
    sub_22BE3B620(v15, v3);
    v16 = sub_22C1088E8();
    sub_22BE1AA68(v16, v2);
    v17 = *v2;
    v18 = v2[1];

    sub_22BE236C8();
    sub_22C26ED04();
    sub_22C0E9A74();
    sub_22BE1AE58();
    sub_22BE1AE58();
    sub_22BE36680();
    sub_22BE1AE58();
    v19 = *MEMORY[0x277D1CDE0];
    v20 = sub_22C26FC34();
    sub_22BE1834C(v20);
    (*(v21 + 104))(v0, v19);
  }

  sub_22C25A6E8();
}

void TranscriptProtoParameterNeedsValueContext.init(handwritten:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  sub_22C25A93C(v12);
  v13 = sub_22C26FC24();
  v14 = sub_22BE1A3D8(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BE25544();
  MEMORY[0x28223BE20](v19);
  sub_22BE39EE8();
  v20 = sub_22C26FC34();
  v21 = sub_22BE179D8(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22BE197B8();
  v26 = sub_22BE5CE4C(&qword_27D90E9B0, &qword_22C2B5BC0);
  sub_22BE19448(v26);
  v28 = *(v27 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v29);
  v30 = sub_22BE3A208();
  type metadata accessor for TranscriptProtoParameterNeedsValueContextEnum(v30);
  sub_22BE1A140();
  v57 = v31;
  v35 = sub_22C18F17C(v32, v33, v34, v31);
  v36 = *(type metadata accessor for TranscriptProtoParameterNeedsValueContext(v35) + 20);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C11634C();
  v37(v10, a10, v20);
  v38 = *(v23 + 88);
  v39 = sub_22BE1A6BC();
  if (v40(v39) == *MEMORY[0x277D1CDE0])
  {
    v41 = *(v23 + 96);
    v42 = sub_22BE1A6BC();
    v43(v42);
    sub_22BE286F0();
    v44 = sub_22BE39EAC();
    v45(v44);
    sub_22C259D90();
    sub_22BE39E94();
    v46();
    v47 = sub_22C26ED64();
    v49 = v48;
    v50 = v11 + *(type metadata accessor for TranscriptProtoParameterNeedsValuePhotosSearch(0) + 20);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    (*(v23 + 8))(a10, v20);
    v51 = *(v16 + 8);
    v52 = sub_22BE336E8();
    v51(v52);
    v53 = sub_22BE33560();
    v51(v53);
    *v11 = v47;
    v11[1] = v49;
    v54 = sub_22BE360A0();
    sub_22BE19DC4(v54, v55, v56, v57);
    sub_22BE2343C();
    sub_22BE18478();
  }

  else
  {
    sub_22C274004();
    __break(1u);
  }
}

void ParameterConfirmation.init(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  sub_22BE3129C();
  v11 = sub_22BE5CE4C(&qword_27D907400, &unk_22C274F90);
  sub_22BE19448(v11);
  v13 = *(v12 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE29200(v15);
  v16 = sub_22BE5CE4C(&qword_27D908FF8, &qword_22C27FC50);
  sub_22BE19448(v16);
  v18 = *(v17 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  sub_22BE36644(v20);
  v21 = sub_22C272594();
  v22 = sub_22BE179D8(v21);
  v61 = v23;
  v62 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v26);
  sub_22BE19490();
  v59 = v27;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v28);
  sub_22BE19490();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v29);
  sub_22BE195C4();
  v58 = sub_22C272874();
  v30 = sub_22BE18000(v58);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  sub_22BE3C444(v33, v56);
  v34 = sub_22C26F774();
  v35 = sub_22BE179D8(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  sub_22BE17CBC();
  v38 = v10[1];
  v57 = *v10;
  v39 = v10[2];
  if (!*(v10 + 24))
  {
    v40 = v10[2];
  }

  v41 = type metadata accessor for TranscriptProtoParameterConfirmation(0);
  v42 = *(v41 + 24);

  sub_22C101488();
  if (a10)
  {
    sub_22BE41688();
    sub_22BE1AE58();
  }

  else
  {
    v43 = *(v61 + 16);
    v44 = sub_22BE1A6BC();
    v43(v44);
    sub_22C259FDC();
    sub_22C272864();
    v60 = v43;
    v45 = *(v61 + 8);
    v46 = sub_22BE2565C();
    v45(v46);
    sub_22C26E614();
    v47 = sub_22BE38960();
    sub_22BE19DC4(v47, v48, v49, v50);
    sub_22BE39EAC();
    sub_22C26F764();
    v51 = v10 + *(v41 + 28);
    sub_22C101488();
    v52 = sub_22BE354DC();
    v60(v52);
    sub_22C272864();
    (v45)(v59, v62);
    sub_22BE187DC();
    sub_22BE19DC4(v53, v54, v55, v58);
    sub_22C26FE44();
    sub_22BE41688();
    sub_22BE1AE58();
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

void TranscriptProtoParameterConfirmation.init(handwritten:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  sub_22C259FE8();
  v82 = v11;
  v12 = sub_22BE5CE4C(&qword_27D907400, &unk_22C274F90);
  sub_22BE19448(v12);
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE20168(v16, v79);
  v86 = sub_22C272594();
  v17 = sub_22BE179D8(v86);
  v84 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BE2F294();
  v87 = sub_22C272874();
  v21 = sub_22BE179D8(v87);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22BE19338();
  v26 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  v27 = sub_22BE19448(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22BE17B98();
  sub_22BE2BCB4();
  v31 = MEMORY[0x28223BE20](v30);
  sub_22C10887C(v31, v32, v33, v34, v35, v36, v37, v38, v80);
  v39 = sub_22C26E894();
  v41 = v40;
  v42 = MEMORY[0x2318A8570]();
  v44 = v43;
  if (v43)
  {
    v45 = 0;
  }

  else
  {
    v45 = v42;
  }

  sub_22C26FE84();
  sub_22C272854();
  if (a10)
  {

    v46 = sub_22C26FE94();
    sub_22BE18524(v46);
    (*(v47 + 8))(v10);
    v48 = *(v23 + 8);
    v49 = sub_22C25A888();
    v50(v49);
  }

  else
  {
    v51 = *(v23 + 8);
    v52 = sub_22C25A888();
    v53(v52);
    v54 = *(v84 + 32);
    v55 = sub_22BE191C0();
    v56(v55);
    sub_22C2597D4();
    sub_22BE19DC4(v57, v58, v59, v60);
    sub_22C26FE64();
    sub_22C105684(v85, v61, v62, v63, v64, v65, v66, v67, v45, v82);
    v68 = type metadata accessor for TranscriptProtoParameterConfirmation(0);
    sub_22BE46004(v68);
    sub_22C25975C();
    sub_22BE19DC4(v69, v70, v71, v72);
    sub_22C25975C();
    sub_22BE19DC4(v73, v74, v75, v76);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v77 = sub_22C26FE94();
    sub_22BE18524(v77);
    (*(v78 + 8))(v10);
    *v83 = v39;
    *(v83 + 8) = v41;
    *(v83 + 16) = v81;
    *(v83 + 24) = v44 & 1;
    sub_22BE27B84();
    sub_22BE2343C();
    sub_22BE27B84();
    sub_22BE2343C();
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

void ParameterDisambiguation.init(transcript:)()
{
  sub_22BE1B214();
  v3 = *v1;
  v2 = v1[1];
  v4 = *(v1 + 32);
  v5 = v1[2];
  v6 = v1[3];

  sub_22C0F2F3C(v7, v8, v9, v10, v11, v12, v13, v14);
  if (v0)
  {
    sub_22BE26148();
    sub_22BE1AE58();
  }

  else
  {
    sub_22BE431C0();
    sub_22C26FFB4();
    sub_22BE26148();
    sub_22BE1AE58();
  }

  sub_22BE25C6C();
}

void TranscriptProtoParameterDisambiguation.init(handwritten:)()
{
  sub_22BE2BB34();
  v2 = v1;
  v4 = v3;
  v5 = sub_22C26FFC4();
  v7 = v6;
  v8 = MEMORY[0x2318A86D0]();
  v10 = v9;
  v11 = sub_22C26FFE4();
  sub_22C220C88(v11);
  if (v0)
  {
    v13 = sub_22C26FFF4();
    sub_22BE18524(v13);
    (*(v14 + 8))(v2);
  }

  else
  {
    v15 = v12;
    v16 = v10 & 1;
    if (v16)
    {
      v8 = 0;
    }

    v17 = v4 + *(type metadata accessor for TranscriptProtoParameterDisambiguation(0) + 28);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v18 = sub_22C26FFF4();
    sub_22BE18524(v18);
    (*(v19 + 8))(v2);
    *v4 = v5;
    *(v4 + 8) = v7;
    *(v4 + 32) = v16;
    *(v4 + 16) = v15;
    *(v4 + 24) = v8;
  }

  sub_22BEE93D4();
}

void ParameterNotAllowed.init(transcript:)()
{
  sub_22BE19130();
  v41 = v0;
  v3 = v2;
  v4 = sub_22BE5CE4C(&qword_27D915640, &qword_22C2CC9B8);
  sub_22BE19448(v4);
  v6 = *(v5 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE3FE6C(v8);
  v38 = sub_22C26FCB4();
  v9 = sub_22BE179D8(v38);
  v37 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BE2F294();
  v13 = sub_22C272594();
  v14 = sub_22BE179D8(v13);
  v40 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BE2582C();
  MEMORY[0x28223BE20](v18);
  sub_22C2595A0();
  v19 = sub_22C272874();
  v20 = sub_22BE19448(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22BE17CBC();
  v24 = *v3;
  v23 = v3[1];
  v25 = *(type metadata accessor for TranscriptProtoParameterNotAllowed(0) + 24);

  sub_22C101488();
  if (v41)
  {
    sub_22C2599C0();
    sub_22BE1AE58();
  }

  else
  {
    v26 = *(v40 + 16);
    v27 = sub_22BE29454();
    v28(v27);
    sub_22C25A918();
    sub_22C272864();
    v29 = *(v40 + 8);
    v30 = sub_22BE36318();
    v31(v30);
    v32 = *(v3 + 16);
    sub_22C26FC94();
    sub_22BE3E950(v39);
    if (v33)
    {
      (*(v37 + 104))(v1, *MEMORY[0x277D1CE08], v38);
      sub_22BE3E950(v39);
      if (!v33)
      {
        sub_22BE233E8(v39, &qword_27D915640, &qword_22C2CC9B8);
      }
    }

    else
    {
      v34 = *(v37 + 32);
      v35 = sub_22BE23108();
      v36(v35);
    }

    sub_22BE33FCC();
    sub_22C26FC64();
    sub_22C2599C0();
    sub_22BE1AE58();
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

void TranscriptProtoParameterNotAllowed.init(handwritten:)()
{
  sub_22BE19130();
  sub_22C18F0F4();
  sub_22BE2054C(v3);
  v49 = sub_22C26FCB4();
  v4 = sub_22BE179D8(v49);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE1955C();
  v48 = sub_22C272594();
  v7 = sub_22BE179D8(v48);
  v46 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE17CBC();
  v11 = sub_22C272874();
  v12 = sub_22BE1A3D8(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BE28FD8();
  v17 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  sub_22BE19448(v17);
  v19 = *(v18 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  sub_22BE23E58();
  v47 = sub_22C26E894();
  v51 = v21;
  sub_22C26FC84();
  sub_22C272854();
  if (v2)
  {

    v22 = sub_22C26FCD4();
    sub_22BE18524(v22);
    (*(v23 + 8))(v0);
    v24 = *(v14 + 8);
    v25 = sub_22BE2684C();
    v26(v25);
  }

  else
  {
    v27 = *(v14 + 8);
    v28 = sub_22BE2684C();
    v29(v28);
    v30 = *(v46 + 32);
    v31 = sub_22BE33BE8();
    v32(v31);
    v33 = sub_22BE360A0();
    sub_22BE19DC4(v33, v34, v35, v48);
    sub_22C26FCC4();
    v36 = sub_22C26FCA4();
    sub_22BE190E4();
    v37(v1, v49);
    if (v36 == 2)
    {
      v38 = 2;
    }

    else
    {
      v38 = v36 == 1;
    }

    v39 = *(type metadata accessor for TranscriptProtoParameterNotAllowed(0) + 24);
    sub_22C259860();
    sub_22C25AE64(v40, v41, v42, v43);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v44 = sub_22C26FCD4();
    sub_22BE18524(v44);
    (*(v45 + 8))(v0);
    *v50 = v47;
    *(v50 + 8) = v51;
    sub_22BE2343C();
    *(v50 + 16) = v38;
  }

  sub_22BE1AB28();
  sub_22BE18478();
}

void ParameterCandidatesNotFound.init(transcript:)()
{
  sub_22BE19130();
  v1 = v0;
  v3 = v2;
  sub_22C25A424(v4);
  v5 = sub_22C272594();
  v6 = sub_22BE1A3D8(v5);
  v23 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE1958C();
  MEMORY[0x28223BE20](v10);
  sub_22C2595A0();
  v11 = sub_22C272874();
  v12 = sub_22BE19448(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BE28FD8();
  v15 = *v3;
  v16 = v3[1];
  v17 = *(type metadata accessor for TranscriptProtoParameterCandidatesNotFound(0) + 20);

  sub_22C101488();
  if (v1)
  {
    sub_22BE26148();
    sub_22BE1AE58();
  }

  else
  {
    sub_22C25A080();
    v18 = sub_22BE194C4();
    v19(v18);
    sub_22C272864();
    v20 = *(v23 + 8);
    v21 = sub_22BE1AB1C();
    v22(v21);
    sub_22BE315FC();
    sub_22C270194();
    sub_22BE26148();
    sub_22BE1AE58();
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

void TranscriptProtoParameterCandidatesNotFound.init(handwritten:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  sub_22BE3129C();
  sub_22BE2054C(v12);
  v13 = sub_22C272594();
  v14 = sub_22BE1A3D8(v13);
  v53 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BE2F294();
  v18 = sub_22C272874();
  v19 = sub_22BE41130(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22BE17CBC();
  v24 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  sub_22BE19448(v24);
  v26 = *(v25 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v27);
  sub_22BE234F4();
  v52 = sub_22C26E894();
  v29 = v28;
  sub_22C2701B4();
  sub_22C272854();
  if (a10)
  {

    v30 = sub_22C2701C4();
    sub_22BE18524(v30);
    (*(v31 + 8))(v10);
    v32 = *(v21 + 8);
    v33 = sub_22BE194F8();
    v34(v33);
  }

  else
  {
    v35 = *(v21 + 8);
    v36 = sub_22BE194F8();
    v37(v36);
    v38 = *(v53 + 32);
    v39 = sub_22BE33B3C();
    v40(v39);
    v41 = sub_22C25974C();
    v44 = sub_22C18F17C(v41, v42, v43, v11);
    v45 = *(type metadata accessor for TranscriptProtoParameterCandidatesNotFound(v44) + 20);
    sub_22BE3AE2C();
    sub_22C25AD2C(v46, v47, v48, v49);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v50 = sub_22C2701C4();
    sub_22BE18524(v50);
    (*(v51 + 8))(v10);
    *v54 = v52;
    v54[1] = v29;
    sub_22BE2343C();
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

void Candidate.init(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  sub_22C259FE8();
  v13 = sub_22C25A554(v12);
  v14 = type metadata accessor for TranscriptProtoStatementID(v13);
  v15 = sub_22BE19448(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BE3C444(v18, v74);
  v19 = sub_22C26E684();
  v20 = sub_22BE179D8(v19);
  v76 = v21;
  v77 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22BE17A44();
  v25 = sub_22BE3C768(v24);
  v26 = type metadata accessor for TranscriptProtoCandidatePromptStatus(v25);
  v27 = sub_22BE19448(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22BE197B8();
  v30 = sub_22C272594();
  v80 = sub_22BE179D8(v30);
  v81 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v80);
  sub_22BE17D10();
  MEMORY[0x28223BE20](v34);
  sub_22BE195C4();
  v35 = sub_22C272874();
  v36 = sub_22C2594A0(v35);
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  v41 = sub_22BE19820();
  v42 = type metadata accessor for TranscriptProtoCandidate(v41);
  v43 = v11;
  v44 = &v11[v42[5]];
  sub_22C101488();
  if (a10)
  {
    sub_22BE37964();
    sub_22BE1AE58();
  }

  else
  {
    v83 = v38;
    sub_22C25A080();
    v45 = sub_22BE180C8();
    v46(v45);
    sub_22C25ABCC();
    sub_22C272864();
    v47 = *(v81 + 8);
    v48 = sub_22BE196A8();
    v49(v48);
    v50 = *v43;
    v51 = &v43[v42[6]];
    sub_22C1034E4();
    v52 = *v10;
    v53 = *(v10 + 8);
    v54 = *(v10 + 9);
    sub_22BE291DC();
    sub_22BE1AE58();
    v55 = v52 != 0;
    if (v53)
    {
      v56 = 1;
    }

    else
    {
      v55 = v52;
      v56 = 0;
    }

    v57 = (v54 & 1) == 0;
    v58 = (v54 & 1) == 0 && v55;
    if (v57)
    {
      v59 = v56;
    }

    else
    {
      v59 = 1;
    }

    v82 = v59;
    v60 = &v43[v42[7]];
    sub_22C1026C4();
    v61 = *v79;
    v62 = *(v79 + 1);
    v63 = *(v79 + 2);

    sub_22BE354D0();
    sub_22C26E664();
    sub_22BE37964();
    sub_22BE1AE58();
    sub_22BE18B80();
    sub_22BE1AE58();
    v64 = type metadata accessor for Candidate(0);
    v65 = v78 + v64[6];
    *v65 = 0;
    *(v65 + 8) = 1;
    v66 = v64[8];
    sub_22C26E614();
    sub_22BE1A140();
    sub_22BE19DC4(v67, v68, v69, v70);
    v71 = *(v83 + 32);
    v72 = sub_22BE2590C();
    v73(v72);
    *(v78 + v64[5]) = v50;
    *v65 = v58;
    *(v65 + 8) = v82;
    (*(v76 + 32))(v78 + v64[7], v75, v77);
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

uint64_t Candidate.PromptStatus.init(transcript:)()
{
  sub_22BE48AF0();
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 9);
  result = sub_22BE1AE58();
  if (v4)
  {
    v6 = 0;
    v7 = 1;
  }

  else
  {
    v6 = v2 != 0;
    if (v3)
    {
      v7 = 1;
    }

    else
    {
      v6 = v2;
      v7 = 0;
    }
  }

  *v0 = v6;
  *(v0 + 8) = v7;
  return result;
}

uint64_t TranscriptProtoCandidatePromptStatus.init(handwritten:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  *a2 = 0;
  *(a2 + 8) = 256;
  v5 = type metadata accessor for TranscriptProtoCandidatePromptStatus(0);
  sub_22BE48874(v5);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v7 = v3 != 0;
  if (!v4)
  {
    v7 = v3;
  }

  *a2 = v7;
  *(a2 + 8) = v4;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_22C22F58C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v4 = *a1;
  v5 = v2;
  return TranscriptProtoCandidatePromptStatus.init(handwritten:)(&v4, a2);
}

uint64_t sub_22C22F6D8()
{
  v2 = *v0;
  v3 = v0[1];
  *v4 = v0[2];
  *&v4[9] = *(v0 + 41);
  return sub_22C1FC284();
}

void Session.PlanGenerationError.init(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  sub_22BE19130();
  v16 = sub_22C259C10(v15);
  v17 = type metadata accessor for TranscriptProtoIntelligenceFlowError(v16);
  v18 = sub_22BE19448(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BE17A44();
  sub_22C259BA0(v21);
  v22 = sub_22C26E5D4();
  v23 = sub_22C259488(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = sub_22BE1AD20();
  v27 = type metadata accessor for TranscriptProtoPlanGenerationModelOutputError(v26);
  v28 = sub_22BE18000(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  sub_22BE186D4();
  MEMORY[0x28223BE20](v31);
  v32 = sub_22C2595B4();
  v33 = type metadata accessor for TranscriptProtoPlanGenerationErrorEnum(v32);
  v34 = sub_22BE19448(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22BE1955C();
  sub_22C25AB04();
  sub_22C103304();
  if (v10)
  {
    sub_22C259698();
  }

  else
  {
    v54 = v11;
    v37 = sub_22C1088AC();
    sub_22BE3B620(v37, v13);
    v38 = sub_22C259E7C();
    sub_22BE1AA68(v38, v14);
    v40 = *v14;
    v39 = v14[1];
    v41 = v14[3];
    v53 = v14[2];
    v42 = *(v27 + 24);

    sub_22C25ACCC();
    sub_22C103214();
    if (!v42)
    {
      v43 = *a10;
      v44 = a10[1];
      v52 = v40;
      v45 = a10[2];
      v46 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      sub_22C25AC4C();

      v47 = sub_22BE336E8();
      sub_22C25A990(v47, v48, v45);
      sub_22C26E5E4();
      sub_22C259698();
      sub_22BE1AE58();
      sub_22C259990();
      sub_22BE1AE58();
      sub_22BE1AE58();
      sub_22BE25EFC();
      sub_22BE1AE58();
      *v55 = v52;
      v55[1] = v39;
      v55[2] = v53;
      v55[3] = v41;
      v49 = type metadata accessor for Session.PlanGenerationModelOutputError(0);
      v50 = sub_22C25A688(*(v49 + 24));
      v51(v50, v12, v54);
      goto LABEL_6;
    }

    sub_22C259698();
    sub_22BE1AE58();
    sub_22BE1AE58();
    sub_22BE3C968();
  }

  sub_22BE1AE58();
LABEL_6:
  sub_22BE467E4();
  sub_22BE18478();
}

void TranscriptProtoPlanGenerationError.init(handwritten:)()
{
  sub_22BE19130();
  sub_22C25A6AC();
  sub_22BE2054C(v5);
  v58 = sub_22C26E5D4();
  v6 = sub_22BE179D8(v58);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE197B8();
  v11 = sub_22BE5CE4C(&qword_27D90EA38, &qword_22C2B5B90);
  sub_22BE19448(v11);
  v13 = *(v12 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  v15 = sub_22BE250C8();
  v16 = type metadata accessor for Session.PlanGenerationModelOutputError(v15);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BE2582C();
  MEMORY[0x28223BE20](v19);
  v20 = sub_22C2595A0();
  v21 = type metadata accessor for Session.PlanGenerationError(v20);
  v22 = sub_22BE19448(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = sub_22BE1AD20();
  v57 = type metadata accessor for TranscriptProtoPlanGenerationErrorEnum(v25);
  v26 = sub_22BE18000(v57);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22BE188B0();
  v29 = sub_22C259FB8();
  sub_22BE1AA68(v29, v3);
  v30 = sub_22BE44744();
  sub_22BE3B620(v30, v2);
  v31 = sub_22C1088E8();
  sub_22BE1AA68(v31, v1);
  v32 = *(v1 + 1);
  v33 = *(v1 + 3);
  v55 = *(v1 + 2);
  v56 = *v1;
  (*(v8 + 16))(v0, &v1[*(v17 + 32)], v58);

  sub_22C259FDC();
  TranscriptProtoIntelligenceFlowError.init(handwritten:)();
  type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  sub_22BE25FFC();
  v38 = sub_22C18F17C(v34, v35, v36, v37);
  v39 = type metadata accessor for TranscriptProtoPlanGenerationModelOutputError(v38);
  v40 = *(v39 + 24);
  sub_22BE32EE0();
  sub_22BE19DC4(v41, v42, v43, v44);
  v45 = v4 + *(v39 + 28);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE1AE58();
  sub_22BE291B0();
  sub_22BE1AE58();
  *v4 = v56;
  v4[1] = v32;
  v4[2] = v55;
  v4[3] = v33;
  sub_22BE2343C();
  v46 = sub_22BE38960();
  v49 = sub_22C18F17C(v46, v47, v48, v57);
  v50 = type metadata accessor for TranscriptProtoPlanGenerationError(v49);
  sub_22BE48874(v50);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C259A50();
  sub_22BE1AE58();
  sub_22BE233E8(v59, &qword_27D90EA20, &qword_22C2B5BA0);
  v51 = sub_22C259E7C();
  sub_22BE3B620(v51, v59);
  v52 = sub_22BE2500C();
  sub_22BE19DC4(v52, v53, v54, v57);
  sub_22BE3C298();
  sub_22BE18478();
}

void Session.PlanGenerationModelOutputError.init(transcript:)()
{
  sub_22BE19130();
  v3 = sub_22C259D80();
  v4 = type metadata accessor for TranscriptProtoIntelligenceFlowError(v3);
  v5 = sub_22BE19448(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE19820();
  v8 = sub_22C26E5D4();
  v9 = sub_22BE1A3D8(v8);
  v28 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BE1955C();
  v13 = v1[1];
  v14 = v1[3];
  v26 = v1[2];
  v27 = *v1;
  v15 = *(type metadata accessor for TranscriptProtoPlanGenerationModelOutputError(0) + 24);

  sub_22BE3CD7C();
  sub_22C103214();
  if (v15)
  {
    sub_22BE379D8();
    sub_22BE1AE58();
  }

  else
  {
    v16 = *v2;
    v17 = v2[1];
    v25 = v2[2];
    v18 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    sub_22C25AC4C();

    v19 = sub_22BE336E8();
    sub_22C25A990(v19, v20, v25);
    sub_22C26E5E4();
    sub_22BE379D8();
    sub_22BE1AE58();
    sub_22C259990();
    sub_22BE1AE58();
    *v0 = v27;
    v0[1] = v13;
    v0[2] = v26;
    v0[3] = v14;
    v21 = type metadata accessor for Session.PlanGenerationModelOutputError(0);
    v22 = *(v28 + 32);
    v23 = sub_22C25AC20(*(v21 + 24));
    v24(v23);
  }

  sub_22C18F0A4();
  sub_22BE18478();
}

void TranscriptProtoPlanGenerationModelOutputError.init(handwritten:)()
{
  sub_22BE19130();
  sub_22C18F3A4();
  v3 = v2;
  v4 = sub_22C26E5D4();
  v5 = sub_22BE179D8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE18DFC();
  v10 = sub_22BE5CE4C(&qword_27D90EA38, &qword_22C2B5B90);
  sub_22BE19448(v10);
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE234F4();
  v14 = *v0;
  v15 = *(v0 + 1);
  v16 = *(v0 + 3);
  v17 = sub_22BE2054C(*(v0 + 2));
  v18 = type metadata accessor for Session.PlanGenerationModelOutputError(v17);
  (*(v7 + 16))(v1, &v0[*(v18 + 24)], v4);

  TranscriptProtoIntelligenceFlowError.init(handwritten:)();
  v19 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v20 = sub_22C25974C();
  v23 = sub_22C18F17C(v20, v21, v22, v19);
  v24 = type metadata accessor for TranscriptProtoPlanGenerationModelOutputError(v23);
  v25 = *(v24 + 24);
  sub_22BE3AE2C();
  sub_22BE19DC4(v26, v27, v28, v29);
  v30 = v3 + *(v24 + 28);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE379D8();
  sub_22BE1AE58();
  *v3 = v14;
  v3[1] = v15;
  v3[2] = v31;
  v3[3] = v16;
  sub_22BE2343C();
  sub_22BE3C298();
  sub_22BE18478();
}

void Expression.init(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v27;
  a20 = v28;
  sub_22C18F3A4();
  v30 = sub_22BE3BD70(v29);
  v31 = type metadata accessor for TranscriptProtoAnswerSynthesisExpression(v30);
  v32 = sub_22BE19448(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22BE17B98();
  i = v35;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v36);
  sub_22BE19E94();
  v574 = v37;
  v38 = sub_22BE183BC();
  v39 = type metadata accessor for TranscriptProtoUserDisambiguateExpression(v38);
  v40 = sub_22BE19448(v39);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v43);
  sub_22BE19E94();
  v573 = v44;
  v45 = sub_22BE183BC();
  v46 = type metadata accessor for TranscriptProtoUserConfirmExpression(v45);
  v47 = sub_22BE19448(v46);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v47);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v50);
  v59 = sub_22BE3CEC0(v51, v52, v53, v54, v55, v56, v57, v58, v522);
  v60 = type metadata accessor for TranscriptProtoSiriXFallbackExpression(v59);
  v61 = sub_22BE19448(v60);
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v61);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v64);
  sub_22BE19E94();
  v66 = sub_22BE18950(v65);
  v67 = type metadata accessor for TranscriptProtoFormatExpression(v66);
  v68 = sub_22BE19448(v67);
  v70 = *(v69 + 64);
  MEMORY[0x28223BE20](v68);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v71);
  sub_22BE19E94();
  v73 = sub_22BE18950(v72);
  v74 = type metadata accessor for TranscriptProtoPayloadExpression(v73);
  v75 = sub_22BE19448(v74);
  v77 = *(v76 + 64);
  MEMORY[0x28223BE20](v75);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v78);
  sub_22BE19E94();
  v80 = sub_22BE18950(v79);
  v81 = type metadata accessor for TranscriptProtoOpenExpression(v80);
  v82 = sub_22BE19448(v81);
  v84 = *(v83 + 64);
  MEMORY[0x28223BE20](v82);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v85);
  sub_22BE19E94();
  v87 = sub_22BE18950(v86);
  v88 = type metadata accessor for TranscriptProtoCancelExpression(v87);
  v89 = sub_22BE19448(v88);
  v91 = *(v90 + 64);
  MEMORY[0x28223BE20](v89);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v92);
  sub_22BE19E94();
  v94 = sub_22BE18950(v93);
  v95 = type metadata accessor for TranscriptProtoRejectExpression(v94);
  v96 = sub_22BE19448(v95);
  v98 = *(v97 + 64);
  MEMORY[0x28223BE20](v96);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v99);
  sub_22BE19E94();
  v101 = sub_22BE18950(v100);
  v102 = type metadata accessor for TranscriptProtoUndoExpression(v101);
  v103 = sub_22BE19448(v102);
  v105 = *(v104 + 64);
  MEMORY[0x28223BE20](v103);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v106);
  sub_22BE19E94();
  v108 = sub_22BE18950(v107);
  v109 = type metadata accessor for TranscriptProtoResolveToolExpression(v108);
  v110 = sub_22BE19448(v109);
  v112 = *(v111 + 64);
  MEMORY[0x28223BE20](v110);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v113);
  sub_22BE19E94();
  v115 = sub_22BE18950(v114);
  v116 = type metadata accessor for TranscriptProtoPickOneExpression(v115);
  v117 = sub_22BE19448(v116);
  v119 = *(v118 + 64);
  MEMORY[0x28223BE20](v117);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v120);
  sub_22BE19E94();
  sub_22BE190A8(v121);
  v122 = sub_22BE5CE4C(&qword_27D90C138, &qword_22C2CB830);
  sub_22BE19448(v122);
  v124 = *(v123 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v125);
  sub_22BE1A174();
  sub_22BE190A8(v126);
  v127 = sub_22BE5CE4C(&qword_27D9092E8, &qword_22C288A90);
  sub_22BE19448(v127);
  v129 = *(v128 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v130);
  sub_22BE1A174();
  v132 = sub_22BE18950(v131);
  v133 = type metadata accessor for TranscriptProtoStructuredSearchExpression(v132);
  v134 = sub_22BE290A0(v133, &v541);
  v136 = *(v135 + 64);
  MEMORY[0x28223BE20](v134);
  sub_22BE17B98();
  v576 = v137;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v138);
  sub_22C259824(v139, v140, v141, v142, v143, v144, v145, v146, v523);
  v147 = type metadata accessor for TranscriptProtoSearchExpression(0);
  v148 = sub_22BE19448(v147);
  v150 = *(v149 + 64);
  MEMORY[0x28223BE20](v148);
  sub_22BE17A44();
  v152 = sub_22BE18950(v151);
  v153 = type metadata accessor for TranscriptProtoConfirmExpression(v152);
  v154 = sub_22BE19448(v153);
  v156 = *(v155 + 64);
  MEMORY[0x28223BE20](v154);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v157);
  sub_22BE19E94();
  v159 = sub_22BE18950(v158);
  v160 = type metadata accessor for TranscriptProtoPickExpression(v159);
  v161 = sub_22BE290A0(v160, &v577);
  v163 = *(v162 + 64);
  MEMORY[0x28223BE20](v161);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v164);
  sub_22BE19E94();
  v166 = sub_22BE18950(v165);
  v167 = type metadata accessor for TranscriptProtoSayExpression(v166);
  v168 = sub_22BE19448(v167);
  v170 = *(v169 + 64);
  MEMORY[0x28223BE20](v168);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v171);
  sub_22BE19E94();
  v173 = sub_22BE18950(v172);
  ToolsExpression = type metadata accessor for TranscriptProtoRetrieveToolsExpression(v173);
  v175 = sub_22BE19448(ToolsExpression);
  v177 = *(v176 + 64);
  MEMORY[0x28223BE20](v175);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v178);
  sub_22BE19E94();
  v180 = sub_22BE18950(v179);
  SpansExpression = type metadata accessor for TranscriptProtoRetrieveSpansExpression(v180);
  v182 = sub_22BE19448(SpansExpression);
  v184 = *(v183 + 64);
  MEMORY[0x28223BE20](v182);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v185);
  sub_22BE19E94();
  v187 = sub_22BE18950(v186);
  v188 = type metadata accessor for TranscriptProtoCallExpression(v187);
  v189 = sub_22BE19448(v188);
  v191 = *(v190 + 64);
  MEMORY[0x28223BE20](v189);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v192);
  sub_22BE19E94();
  v194 = sub_22BE18950(v193);
  updated = type metadata accessor for TranscriptProtoUpdateParametersExpression(v194);
  v196 = sub_22BE19448(updated);
  v198 = *(v197 + 64);
  MEMORY[0x28223BE20](v196);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v199);
  sub_22BE19E94();
  v201 = sub_22BE18950(v200);
  v202 = type metadata accessor for TranscriptProtoIndexExpression(v201);
  v203 = sub_22BE19448(v202);
  v205 = *(v204 + 64);
  MEMORY[0x28223BE20](v203);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v206);
  sub_22BE19E94();
  v208 = sub_22BE18950(v207);
  v209 = type metadata accessor for TranscriptProtoInfixExpression(v208);
  v210 = sub_22BE19448(v209);
  v212 = *(v211 + 64);
  MEMORY[0x28223BE20](v210);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v213);
  sub_22BE19E94();
  sub_22BE18950(v214);
  v579 = sub_22C26E684();
  v215 = sub_22BE179D8(v579);
  v582 = v216;
  v218 = *(v217 + 64);
  MEMORY[0x28223BE20](v215);
  sub_22BE17B98();
  v578 = v219;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v220);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v221);
  sub_22BE19E94();
  v223 = sub_22BE18950(v222);
  v224 = type metadata accessor for TranscriptProtoPrefixExpression(v223);
  v225 = sub_22BE290A0(v224, &v560);
  v227 = *(v226 + 64);
  MEMORY[0x28223BE20](v225);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v228);
  sub_22BE19E94();
  v230 = sub_22BE18950(v229);
  v231 = type metadata accessor for TranscriptProtoStatementID(v230);
  v232 = sub_22BE17A18(v231);
  v577 = v233;
  v235 = *(v234 + 64);
  MEMORY[0x28223BE20](v232);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v236);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v237);
  sub_22BE19490();
  v581 = v238;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v239);
  sub_22BE19E94();
  v241 = sub_22C259DF0(v240);
  v583 = type metadata accessor for Expression(v241);
  v242 = sub_22BE18000(v583);
  v244 = *(v243 + 64);
  MEMORY[0x28223BE20](v242);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v245);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v246);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v247);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v248);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v249);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v250);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v251);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v252);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v253);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v254);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v255);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v256);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v257);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v258);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v259);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v260);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v261);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v262);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v263);
  v264 = sub_22BE20558();
  v265 = type metadata accessor for TranscriptProtoValueExpression(v264);
  v266 = sub_22BE19448(v265);
  v268 = *(v267 + 64);
  MEMORY[0x28223BE20](v266);
  sub_22BE18928();
  MEMORY[0x28223BE20](v269);
  sub_22BE181E4();
  v270 = sub_22C0B1AF0();
  v272 = sub_22BE5CE4C(v270, v271);
  sub_22BE19448(v272);
  v274 = *(v273 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v275);
  v276 = sub_22BE3A208();
  v277 = type metadata accessor for TranscriptProtoExpressionEnum(v276);
  v278 = sub_22BE18000(v277);
  v280 = *(v279 + 64);
  MEMORY[0x28223BE20](v278);
  sub_22BE294E0();
  sub_22BE3911C();
  sub_22BE22814();
  sub_22BE1AB5C(v26, 1, v277);
  if (v281)
  {
    sub_22BE233E8(v26, &qword_27D90EEA0, &qword_22C2970E0);
    *&v585 = v277;
    sub_22BE5CE4C(&qword_27D915648, &unk_22C2CC9C0);
    sub_22C273074();
    sub_22BE3D554();
    sub_22C108598();
    v282 = sub_22BE196B4();
    sub_22C259EA0(v282, v283);
    sub_22BE1C0C8();
  }

  else
  {
    v533 = v22;
    sub_22BE37A20();
    v284 = sub_22BE180C8();
    sub_22BE3B620(v284, v285);
    sub_22BE194C4();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        sub_22BE3B168();
        v388 = v580;
        sub_22BE3B620(v25, v580);
        sub_22BE2C73C();
        v389 = v581;
        sub_22BE1AA68(v388, v581);
        v390 = *v389;
        v391 = *(v389 + 1);
        v392 = *(v389 + 2);

        sub_22BE354D0();
        sub_22C26E664();
        sub_22BE1C0C8();
        sub_22BE286FC();
        sub_22C259638();
        sub_22BE1AE58();
        sub_22BE291B0();
        sub_22BE1AE58();
        sub_22C25A00C();
        goto LABEL_46;
      case 2:
        sub_22BE44744();
        sub_22BE46048(&v563);
        sub_22BE3B620(v370, v371);
        sub_22C1088AC();
        sub_22C25ABA8(&v561);
        sub_22BE1AA68(v372, v373);
        v374 = *v25;
        sub_22BE2ED7C(&v560);
        v375 = a10;
        sub_22C1026C4();
        if (v375)
        {
          sub_22BE1C0C8();
          sub_22BE286FC();
          goto LABEL_67;
        }

        v489 = *v539;
        v490 = *(v539 + 1);
        v491 = *(v539 + 2);

        sub_22BE1B754(&v540);
        sub_22BE354D0();
        sub_22C26E664();
        sub_22BE1C0C8();
        sub_22BE286FC();
        sub_22BE18B80();
        sub_22BE1AE58();
        sub_22BE1AE58();
        sub_22BE39EAC();
        sub_22BE1AE58();
        v20 = v529;
        *v529 = v374;
        v492 = type metadata accessor for PrefixExpression(0);
        (*(v582 + 32))(&v529[*(v492 + 20)], v23, v579);
        sub_22BE2384C();
        goto LABEL_82;
      case 3:
        sub_22BE44744();
        sub_22BEE94A4(&v565);
        sub_22BE3B620(v380, v381);
        sub_22BE19EBC();
        sub_22BE22944(&v562);
        sub_22BE1AA68(v382, v383);
        sub_22BE28D3C(&v544);
        InfixExpression.init(transcript:)();
        if (v21)
        {
          goto LABEL_62;
        }

        sub_22BE1C0C8();
        sub_22BE286FC();
        sub_22BE229AC();
        sub_22BE1AE58();
        sub_22C25A00C();
        goto LABEL_87;
      case 4:
        sub_22BE44744();
        sub_22BEE94A4(&v567);
        sub_22BE3B620(v343, v344);
        sub_22BE19EBC();
        sub_22BE22944(&v564);
        sub_22BE1AA68(v345, v346);
        sub_22BE28D3C(&v545);
        IndexExpression.init(transcript:)();
        if (v21)
        {
          goto LABEL_62;
        }

        sub_22BE1C0C8();
        sub_22BE286FC();
        sub_22BE335D8();
        sub_22BE1AE58();
        sub_22C25A00C();
        goto LABEL_87;
      case 5:
        sub_22BE44744();
        sub_22BEE94A4(&v569);
        sub_22BE3B620(v403, v404);
        sub_22BE19EBC();
        sub_22BE22944(&v566);
        sub_22BE1AA68(v405, v406);
        v407 = sub_22BE28D3C(&v546);
        UpdateParametersExpression.init(transcript:)(v407, v408, v409, v410, v411, v412, v413, v414, v524, v527);
        if (v21)
        {
          goto LABEL_62;
        }

        sub_22BE1C0C8();
        sub_22BE286FC();
        sub_22BE22EF8();
        sub_22BE1AE58();
        sub_22C25A00C();
        goto LABEL_87;
      case 6:
        sub_22BE44744();
        sub_22BEE94A4(&v571);
        sub_22BE3B620(v434, v435);
        sub_22BE19EBC();
        sub_22BE22944(&v568);
        sub_22BE1AA68(v436, v437);
        sub_22C259FC4();
        CallExpression.init(transcript:)();
        if (v21)
        {
          goto LABEL_62;
        }

        sub_22BE1C0C8();
        sub_22BE286FC();
        sub_22C259918();
        sub_22BE1AE58();
        v494 = *(&v585 + 1);
        v495 = v587[0];
        v496 = v588;
        v20 = v527;
        *v527 = v585;
        *(v527 + 8) = v494;
        *(v527 + 16) = v586;
        *(v527 + 32) = v495;
        *(v527 + 40) = v496;
        sub_22BE2384C();
        goto LABEL_82;
      case 7:
        sub_22BE44744();
        sub_22BEE94A4(&v576);
        sub_22BE3B620(v384, v385);
        sub_22BE19EBC();
        sub_22BE22944(&v574);
        sub_22BE1AA68(v386, v387);
        SayExpression.init(transcript:)();
        sub_22BE1C0C8();
        sub_22BE286FC();
        sub_22BE26148();
        sub_22BE1AE58();
        *v584 = v585;
        goto LABEL_46;
      case 8:
        sub_22BE44744();
        sub_22C108C10(&v581);
        sub_22BE3B620(v446, v447);
        sub_22BE29370();
        sub_22BE37B14(&v582);
        sub_22BE1AA68(v448, v449);
        sub_22BE2ED7C(&v577);
        sub_22BE351B8(&v559);
        v450 = a10;
        sub_22C1026C4();
        if (v450)
        {
          sub_22BE1C0C8();
          sub_22BE286FC();
          sub_22C25A0C8();
          sub_22BE1AE58();
          goto LABEL_63;
        }

        v497 = *v25;
        v498 = *(v25 + 1);
        v499 = *(v25 + 2);

        sub_22C25A1C4();
        sub_22BE354D0();
        sub_22C26E664();
        sub_22BE1C0C8();
        sub_22BE286FC();
        sub_22BE18B80();
        sub_22BE1AE58();
        sub_22C25A0C8();
        sub_22BE1AE58();
        v500 = *v22;
        sub_22BE1AB74();
        sub_22BE1AE58();
        v501 = *(v582 + 32);
        v20 = v530;
        v502 = sub_22BE1B62C();
        v503(v502);
        *(v530 + *(type metadata accessor for PickExpression(0) + 20)) = v500;
        sub_22BE2384C();
        goto LABEL_82;
      case 9:
        sub_22BE44744();
        sub_22BEE94A4(&v580);
        sub_22BE3B620(v351, v352);
        sub_22BE19EBC();
        sub_22BE22944(&v578);
        sub_22BE1AA68(v353, v354);
        sub_22BE28D3C(&v549);
        ConfirmExpression.init(transcript:)();
        if (v21)
        {
          goto LABEL_62;
        }

        goto LABEL_86;
      case 10:
        sub_22BE1C0C8();
        sub_22BE286FC();
        sub_22BE44744();
        sub_22BE46048(&v579);
        sub_22BE3B620(v438, v439);
        v441 = *v24;
        v440 = *(v24 + 8);
        v442 = *(v24 + 16);
        v443 = *(v24 + 17);
        v444 = *(v24 + 18);

        sub_22BE291DC();
        sub_22BE1AE58();
        v445 = v584;
        *v584 = v441;
        v445[1] = v440;
        *(v445 + 16) = v442;
        *(v445 + 17) = v443;
        *(v445 + 18) = v444;
        goto LABEL_46;
      case 11:
        v309 = sub_22BE44744();
        sub_22BE3B620(v309, v575);
        v310 = sub_22BE19EBC();
        v311 = v576;
        sub_22BE1AA68(v310, v576);
        v312 = *v311;
        sub_22BE5CE4C(&qword_27D9155B8, &unk_22C2CC7B0);
        sub_22BE3D3E0();
        v313 = sub_22C273D04();
        v314 = 0;
        v316 = v312 + 64;
        v315 = *(v312 + 64);
        v570 = v312;
        v317 = *(v312 + 32);
        sub_22BE26A98();
        v319 = v318 >> 6;
        sub_22BE36638(v320 + 64);
        sub_22C1CEFB0(v582 + 32);
        v571 = v321;
        if (v322)
        {
          goto LABEL_14;
        }

        break;
      case 12:
        sub_22BE44744();
        sub_22BEE94A4(&v584);
        sub_22BE3B620(v347, v348);
        sub_22BE19EBC();
        sub_22BE22944(&v583);
        sub_22BE1AA68(v349, v350);
        sub_22BE28D3C(&v550);
        PickOneExpression.init(transcript:)();
        if (v21)
        {
          goto LABEL_62;
        }

        goto LABEL_86;
      case 13:
        sub_22BE44744();
        sub_22C108C10(&v585);
        sub_22BE3B620(v419, v420);
        sub_22BE29370();
        sub_22BE37B14(&v585 + 8);
        sub_22BE1AA68(v421, v422);
        v423 = *v22;

        sub_22C0F45F8(v424, v425, v426, v427, v428, v429, v430, v431, v524, v527);
        v433 = v432;
        sub_22BE1C0C8();
        sub_22BE286FC();
        sub_22BE1AE58();
        sub_22BE431C0();
        sub_22BE1AE58();
        *v584 = v433;
        goto LABEL_46;
      case 14:
        sub_22BE44744();
        sub_22BEE94A4(v587);
        sub_22BE3B620(v305, v306);
        sub_22BE19EBC();
        sub_22BE22944(&v586);
        sub_22BE1AA68(v307, v308);
        sub_22BE28D3C(&v551);
        UndoExpression.init(transcript:)();
        if (v21)
        {
          goto LABEL_62;
        }

        goto LABEL_86;
      case 15:
        sub_22BE44744();
        sub_22BEE94A4(&v589);
        sub_22BE3B620(v376, v377);
        sub_22BE19EBC();
        sub_22BE22944(&v586 + 8);
        sub_22BE1AA68(v378, v379);
        sub_22BE28D3C(&v552);
        RejectExpression.init(transcript:)();
        if (v21)
        {
          goto LABEL_62;
        }

        goto LABEL_86;
      case 16:
        sub_22BE44744();
        sub_22BEE94A4(&a9);
        sub_22BE3B620(v301, v302);
        sub_22BE19EBC();
        sub_22BE22944(&v588);
        sub_22BE1AA68(v303, v304);
        sub_22BE28D3C(&v553);
        CancelExpression.init(transcript:)();
        if (v21)
        {
          goto LABEL_62;
        }

        goto LABEL_86;
      case 17:
      case 18:
      case 19:
      case 20:
      case 22:
        sub_22BE1C0C8();
        sub_22BE286FC();
        swift_storeEnumTagMultiPayload();
        sub_22BE3ACD8();
        sub_22BE1AE58();
        goto LABEL_64;
      case 21:
        sub_22BE44744();
        sub_22BEE94A4(&a11);
        sub_22BE3B620(v415, v416);
        sub_22BE19EBC();
        sub_22BE22944(&v590);
        sub_22BE1AA68(v417, v418);
        sub_22BE28D3C(&v554);
        OpenExpression.init(transcript:)();
        if (v21)
        {
          goto LABEL_62;
        }

        goto LABEL_86;
      case 23:
        sub_22BE44744();
        sub_22BEE94A4(&a12);
        sub_22BE3B620(v463, v464);
        sub_22BE19EBC();
        sub_22BE22944(&a10);
        sub_22BE1AA68(v465, v466);
        PayloadExpression.init(transcript:)();
        sub_22BE1C0C8();
        sub_22BE286FC();
        sub_22BE26148();
        sub_22BE1AE58();
        *v584 = v585;
        goto LABEL_46;
      case 24:
        sub_22BE44744();
        sub_22C108C10(&a13);
        sub_22BE3B620(v355, v356);
        sub_22BE29370();
        sub_22BE37B14(&a14);
        sub_22BE1AA68(v357, v358);
        v359 = *v22;

        sub_22C0F4874(v360, v361, v362, v363, v364, v365, v366, v367, v524, v527);
        v369 = v368;
        sub_22BE1C0C8();
        sub_22BE286FC();
        sub_22BE1AE58();
        sub_22BE431C0();
        sub_22BE1AE58();
        *v584 = v369;
        goto LABEL_46;
      case 25:
        sub_22BE1C0C8();
        sub_22BE286FC();
        sub_22BE3ACD8();
        sub_22BE1AE58();
LABEL_46:
        swift_storeEnumTagMultiPayload();
        goto LABEL_64;
      case 26:
        sub_22BE44744();
        sub_22BEE94A4(&v573);
        sub_22BE3B620(v475, v476);
        sub_22BE19EBC();
        sub_22BE22944(&v570);
        sub_22BE1AA68(v477, v478);
        sub_22BE28D3C(&v547);
        RetrieveSpansExpression.init(transcript:)();
        if (v21)
        {
          goto LABEL_62;
        }

        goto LABEL_86;
      case 27:
        sub_22BE44744();
        sub_22BEE94A4(&v575);
        sub_22BE3B620(v297, v298);
        sub_22BE19EBC();
        sub_22BE22944(&i);
        sub_22BE1AA68(v299, v300);
        sub_22BE28D3C(&v548);
        RetrieveToolsExpression.init(transcript:)();
        if (v21)
        {
          goto LABEL_62;
        }

        goto LABEL_86;
      case 28:
        sub_22BE44744();
        sub_22BEE94A4(&a17);
        sub_22BE3B620(v467, v468);
        sub_22BE19EBC();
        sub_22BE22944(&a15);
        sub_22BE1AA68(v469, v470);
        sub_22BE28D3C(&v555);
        SiriXFallbackExpression.init(transcript:)();
        if (v21)
        {
          goto LABEL_62;
        }

LABEL_86:
        sub_22BE1C0C8();
        sub_22BE286FC();
        sub_22BE26148();
        sub_22BE1AE58();
        sub_22C25A00C();
        goto LABEL_87;
      case 29:
        sub_22BE44744();
        sub_22C25AAA0();
        sub_22BE3B620(v471, v472);
        sub_22BE19EBC();
        sub_22BE22944(&a16);
        sub_22BE1AA68(v473, v474);
        sub_22BE28D3C(&v556);
        UserConfirmExpression.init(transcript:)();
        if (v21)
        {
          goto LABEL_62;
        }

        sub_22BE1C0C8();
        sub_22BE286FC();
        sub_22BE39030();
        sub_22BE1AE58();
        sub_22C25A00C();
        goto LABEL_87;
      case 30:
        sub_22BE44744();
        sub_22C25AB7C();
        sub_22BE3B620(v451, v452);
        sub_22BE19EBC();
        sub_22BE22944(&a18);
        sub_22BE1AA68(v453, v454);
        v455 = sub_22BE28D3C(&v557);
        UserDisambiguateExpression.init(transcript:)(v455, v456, v457, v458, v459, v460, v461, v462, v524, v527);
        if (v21)
        {
          goto LABEL_62;
        }

        sub_22BE1C0C8();
        sub_22BE286FC();
        sub_22BE3A54C();
        sub_22BE1AE58();
        sub_22C25A00C();
        goto LABEL_87;
      case 31:
        v393 = sub_22BE44744();
        sub_22BE3B620(v393, v574);
        v394 = sub_22BE19EBC();
        sub_22BE1AA68(v394, i);
        v395 = sub_22BE28D3C(&v558);
        AnswerSynthesisExpression.init(transcript:)(v395, v396, v397, v398, v399, v400, v401, v402, v524, v527);
        if (v21)
        {
LABEL_62:
          sub_22BE1C0C8();
          sub_22BE286FC();
          goto LABEL_63;
        }

        sub_22BE1C0C8();
        sub_22BE286FC();
        sub_22BE3EB38();
        sub_22BE1AE58();
        sub_22C25A00C();
LABEL_87:
        swift_storeEnumTagMultiPayload();
        sub_22BE460D8();
        v504 = v22;
        goto LABEL_88;
      default:
        v287 = sub_22BE44744();
        sub_22BE3B620(v287, v23);
        v288 = sub_22BE29370();
        sub_22BE1AA68(v288, v24);
        v289 = a10;
        ValueExpression.init(transcript:)(v24, v290, v291, v292, v293, v294, v295, v296, v524, v527);
        if (v289)
        {
          sub_22BE1C0C8();
          sub_22BE286FC();
          sub_22C259458();
          goto LABEL_63;
        }

        sub_22BE1C0C8();
        sub_22BE286FC();
        sub_22C259458();
        sub_22BE1AE58();
        v493 = v586;
        *v20 = v585;
        v20[16] = v493;
        sub_22BE2384C();
LABEL_82:
        swift_storeEnumTagMultiPayload();
        sub_22BE460D8();
        v504 = v20;
        goto LABEL_88;
    }

LABEL_15:
    v325 = v314;
    while (1)
    {
      v314 = v325 + 1;
      if (__OFADD__(v325, 1))
      {
        __break(1u);
LABEL_91:
        __break(1u);
        return;
      }

      if (v314 >= v319)
      {
        break;
      }

      ++v325;
      if (*(v316 + 8 * v314))
      {
        sub_22BE4878C();
        for (i = v326; ; i = v324)
        {
          v327 = v323 | (v314 << 6);
          sub_22C25A7E8(&a18);
          v329 = *v328;
          v573 = v328[1];
          v574 = v329;
          v330 = *(v577 + 72);
          sub_22BE34170();
          v331 = v580;
          sub_22BE1AA68(v332, v580);
          v333 = v581;
          sub_22BE1AA68(v331, v581);
          v21 = *v333;
          v334 = *(v333 + 1);
          v335 = *(v333 + 2);

          v336 = v578;
          sub_22C26E664();
          sub_22C25A194();
          sub_22BE1AE58();
          sub_22BE336E8();
          sub_22BE1AE58();
          sub_22BE3CD8C((v327 >> 3) & 0x1FFFFFFFFFFFFFF8);
          sub_22C25A924(v337);
          v313 = v571;
          v338 = (*(v571 + 48) + 16 * v327);
          v339 = v573;
          *v338 = v574;
          v338[1] = v339;
          (*(v582 + 32))(*(v313 + 56) + *(v582 + 72) * v327, v336, v579);
          v340 = *(v313 + 16);
          v341 = __OFADD__(v340, 1);
          v342 = v340 + 1;
          if (v341)
          {
            break;
          }

          *(v313 + 16) = v342;
          if (!i)
          {
            goto LABEL_15;
          }

LABEL_14:
          sub_22BE22BE8();
        }

        goto LABEL_91;
      }
    }

    v479 = v576;
    v480 = v576 + *(v534 + 24);
    sub_22BE22944(&v542);
    sub_22BE22814();
    sub_22BE1B754(&v543);
    v481 = sub_22C259FC4();
    sub_22C0FE908(v481, v482, v483, v484, v485, v486, v487, v488, v524, v527);
    if (!v21)
    {
      v505 = *(v479 + 8);

      sub_22C0F92F4(v506, v507, v508, v509, v510, v511, v512, v513, v525, v528, v529, v530, v531, v532, v533, v534, v535, v536, v537, v538);
      v515 = v514;
      sub_22BE1C0C8();
      sub_22BE1AE58();
      sub_22BE1AE58();
      sub_22BE1B5E0();
      sub_22BE1AE58();
      v516 = type metadata accessor for StructuredSearchExpression(0);
      v517 = v516[5];
      sub_22C2728A4();
      sub_22BE1A140();
      sub_22BE19DC4(v518, v519, v520, v521);
      *v526 = v313;
      sub_22BE2343C();
      *(v526 + v516[7]) = v515;
      *(v526 + v516[6]) = 0;
      swift_storeEnumTagMultiPayload();
      sub_22BE460D8();
      v504 = v526;
LABEL_88:
      sub_22BE3B620(v504, v584);
      goto LABEL_64;
    }

    sub_22BE1C0C8();
    sub_22BE1AE58();
LABEL_67:
    sub_22BE1AE58();
  }

LABEL_63:
  sub_22BE1AE58();
LABEL_64:
  sub_22BE467E4();
  sub_22BE18478();
}

void ValueExpression.init(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v15 = sub_22C18F934(v14);
  v16 = type metadata accessor for TranscriptProtoStatementID(v15);
  v17 = sub_22BE17A18(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BE192E0();
  MEMORY[0x28223BE20](v20);
  sub_22BE39EE8();
  v21 = sub_22C26E684();
  v71 = sub_22BE179D8(v21);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v71);
  sub_22BE17A44();
  v25 = sub_22BE28E74(v24);
  v26 = type metadata accessor for TranscriptProtoValueExpressionArrayVariant(v25);
  v27 = sub_22BE19448(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22BE17A44();
  v68 = v30;
  v31 = sub_22BE37B20();
  v33 = sub_22BE5CE4C(v31, v32);
  sub_22BE19448(v33);
  v35 = *(v34 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v36);
  v37 = sub_22BE22BFC();
  v38 = type metadata accessor for TranscriptProtoValueExpressionEnum(v37);
  v39 = sub_22BE18000(v38);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  sub_22BE197B8();
  sub_22BE2590C();
  sub_22BE22814();
  v42 = sub_22BE26188();
  sub_22BE1AB5C(v42, v43, v38);
  if (v44)
  {
    sub_22BE233E8(v11, &qword_27D90EEC0, &qword_22C2970F0);
    sub_22BE5CE4C(&qword_27D915650, &unk_22C2CC9D0);
    sub_22BE43258();
    sub_22BE3D554();
    sub_22C108598();
    v45 = sub_22BE196B4();
    sub_22C259EA0(v45, v46);
    sub_22C259458();
    sub_22BE1AE58();
  }

  else
  {
    sub_22BE20130();
    v47 = sub_22BE200D4();
    sub_22BE3B620(v47, v48);
    sub_22BE19454();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        sub_22C259458();
        sub_22BE1AE58();
        v50 = 0;
        v52 = *v10;
        v51 = 1;
        break;
      case 2:
        sub_22C259458();
        sub_22BE1AE58();
        v50 = 0;
        v52 = *v10;
        v51 = 2;
        break;
      case 3:
        sub_22C259458();
        sub_22BE1AE58();
        v52 = *v10;
        v50 = v10[1];
        v51 = 3;
        break;
      case 4:
        v53 = sub_22BE19EBC();
        sub_22BE3B620(v53, v68);
        v54 = *v68;
        v55 = *(*v68 + 16);
        if (v55)
        {
          sub_22BE3122C(MEMORY[0x277D84F90]);
          sub_22C25A930();
          sub_22BE71084();
          v52 = a10;
          sub_22BE25AD8();
          v57 = v54 + v56;
          v69 = *(v58 + 72);
          do
          {
            sub_22C25A0F8();
            sub_22BE1AA68(v57, v13);
            v59 = sub_22BE18240();
            sub_22BE1AA68(v59, v60);
            v61 = *v12;
            v62 = *(v12 + 1);
            v63 = *(v12 + 2);

            sub_22BE1804C();
            sub_22C26E664();
            sub_22BE3AD30();
            sub_22BE1AE58();
            sub_22BE35838();
            sub_22BE1AE58();
            v65 = *(a10 + 16);
            v64 = *(a10 + 24);
            if (v65 >= v64 >> 1)
            {
              sub_22BE3D1E4(v64);
              sub_22BE71084();
            }

            *(a10 + 16) = v65 + 1;
            sub_22BE25AD8();
            (*(v67 + 32))(a10 + v66 + *(v67 + 72) * v65);
            v57 += v69;
            --v55;
          }

          while (v55);
          sub_22C259458();
          sub_22BE1AE58();
          sub_22BE1AE58();
        }

        else
        {
          sub_22C259458();
          sub_22BE1AE58();
          sub_22BE379D8();
          sub_22BE1AE58();
          v52 = MEMORY[0x277D84F90];
        }

        v50 = 0;
        v51 = 4;
        break;
      case 5:
        sub_22C259458();
        sub_22BE1AE58();
        v52 = *v10;
        v50 = v10[1];
        v51 = 5;
        break;
      case 6:
        sub_22C259458();
        sub_22BE1AE58();
        v52 = 0;
        v50 = 0;
        v51 = 6;
        break;
      default:
        sub_22C259458();
        sub_22BE1AE58();
        v50 = 0;
        v51 = 0;
        v52 = *v10;
        break;
    }

    *v70 = v52;
    *(v70 + 8) = v50;
    *(v70 + 16) = v51;
  }

  sub_22BE19650();
  sub_22BE18478();
}

void PrefixExpression.init(transcript:)()
{
  sub_22BE19130();
  v4 = v3;
  v5 = sub_22BE25DC4();
  v6 = type metadata accessor for TranscriptProtoStatementID(v5);
  v7 = sub_22BE19448(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE19820();
  v10 = sub_22C26E684();
  v11 = sub_22BE1A3D8(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BE1955C();
  v16 = *v4;
  v17 = type metadata accessor for TranscriptProtoPrefixExpression(0);
  sub_22C25A53C(v17);
  sub_22C1026C4();
  if (v0)
  {
    sub_22BE379D8();
    sub_22BE1AE58();
  }

  else
  {
    v18 = *v1;
    v24 = v2;
    v19 = *(v1 + 1);
    v20 = *(v1 + 2);

    sub_22C25A1C4();
    sub_22C26E664();
    sub_22BE379D8();
    sub_22BE1AE58();
    sub_22BE18B80();
    sub_22BE1AE58();
    *v24 = v16;
    v21 = *(type metadata accessor for PrefixExpression(0) + 20);
    v22 = *(v13 + 32);
    sub_22BE39E94();
    v23();
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

void InfixExpression.init(transcript:)()
{
  sub_22BE19130();
  v7 = v6;
  v9 = v8;
  v10 = type metadata accessor for TranscriptProtoStatementID(0);
  v11 = sub_22BE19448(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BE18928();
  MEMORY[0x28223BE20](v14);
  sub_22BE41E38();
  v15 = sub_22C26E684();
  v16 = sub_22BE41130(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BE1958C();
  MEMORY[0x28223BE20](v19);
  sub_22BE32374();
  if (v0)
  {
    sub_22BE229AC();
    sub_22BE1AE58();
  }

  else
  {
    v36 = v20;
    v35 = v9;
    v34 = *v7;
    v21 = type metadata accessor for TranscriptProtoInfixExpression(0);
    sub_22C25A6A0(v21);
    sub_22C1026C4();
    v33 = *v5;
    v22 = *(v5 + 1);
    v23 = *(v5 + 2);

    sub_22C25A61C();
    sub_22C26E664();
    sub_22BE18B80();
    sub_22BE1AE58();
    v24 = &v7[*(v1 + 24)];
    sub_22C25AB04();
    sub_22C1026C4();
    if (v23)
    {
      sub_22BE229AC();
      sub_22BE1AE58();
      sub_22C25AB70();
      v25 = sub_22BE1824C();
      v26(v25);
    }

    else
    {
      v27 = *v3;
      v28 = *(v3 + 1);
      v29 = *(v3 + 2);

      sub_22BE1804C();
      sub_22C26E664();
      sub_22BE229AC();
      sub_22BE1AE58();
      sub_22BE18B80();
      sub_22BE1AE58();
      *v35 = v34;
      v30 = type metadata accessor for InfixExpression(0);
      sub_22C25A530(v30);
      v31 = *(v36 + 32);
      sub_22C25A4B8();
      v31(v32);
      (v31)(&v35[*(v28 + 24)], v4, v2);
    }
  }

  sub_22BE22978();
  sub_22BE18478();
}

void IndexExpression.init(transcript:)()
{
  sub_22BE19130();
  sub_22C25A430();
  v4 = sub_22C25A424(v3);
  v5 = type metadata accessor for TranscriptProtoStatementID(v4);
  v6 = sub_22BE19448(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE18928();
  MEMORY[0x28223BE20](v9);
  sub_22BE41E38();
  v10 = sub_22C26E684();
  v11 = sub_22BE179D8(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BE1958C();
  MEMORY[0x28223BE20](v16);
  sub_22BE32374();
  sub_22C1026C4();
  if (v0)
  {
    sub_22BE335D8();
    sub_22BE1AE58();
  }

  else
  {
    v17 = *v2;
    v19 = *(v2 + 1);
    v18 = *(v2 + 2);

    sub_22BE1804C();
    sub_22C26E664();
    sub_22BE18B80();
    sub_22BE1AE58();
    v20 = type metadata accessor for TranscriptProtoIndexExpression(0);
    sub_22C25A53C(v20);
    sub_22C1026C4();
    v21 = *v1;
    v22 = *(v1 + 1);
    v23 = *(v1 + 2);

    sub_22BE354D0();
    sub_22C26E664();
    sub_22BE335D8();
    sub_22BE1AE58();
    sub_22BE18B80();
    sub_22BE1AE58();
    v24 = *(v13 + 32);
    v25 = sub_22BE3E8FC();
    (v24)(v25);
    v26 = *(type metadata accessor for IndexExpression(0) + 20);
    sub_22C18FD4C();
    v24();
  }

  sub_22BE467E4();
  sub_22BE18478();
}

void UpdateParametersExpression.init(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v18 = v17;
  v97 = v19;
  v20 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v20);
  v22 = *(v21 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v23);
  v25 = sub_22BE36644(v24);
  updated = type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(v25);
  v26 = sub_22BE179D8(updated);
  v111 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22BE192E0();
  MEMORY[0x28223BE20](v30);
  sub_22C1CEC08(v31, v32, v33, v34, v35, v36, v37, v38, v95);
  v39 = type metadata accessor for UpdateParametersExpression.UpdateParameter(0);
  v108 = sub_22BE179D8(v39);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v108);
  sub_22BE3C444(v42, v96);
  v43 = type metadata accessor for TranscriptProtoStatementID(0);
  v44 = sub_22BE18000(v43);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  sub_22BE186D4();
  MEMORY[0x28223BE20](v47);
  sub_22BE20558();
  v48 = sub_22C26E684();
  v49 = sub_22C259488(v48);
  v98 = v50;
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v49);
  sub_22BE18928();
  MEMORY[0x28223BE20](v53);
  v54 = sub_22BE374E4();
  v55 = v18;
  v56 = v18 + *(type metadata accessor for TranscriptProtoUpdateParametersExpression(v54) + 20);
  sub_22C1026C4();
  if (v11)
  {
    sub_22BE22EF8();
    sub_22BE1AE58();
LABEL_14:
    sub_22BEE94B0();
    sub_22BE18478();
    return;
  }

  v106 = v43;
  v107 = v12;
  v105 = v15;
  v57 = *v10;
  v58 = *(v10 + 1);
  v59 = *(v10 + 2);

  sub_22C25A61C();
  sub_22C26E664();
  sub_22BE18B80();
  sub_22BE1AE58();
  v60 = *v55;
  v61 = *(*v55 + 16);
  if (!v61)
  {
    sub_22BE22EF8();
    sub_22BE1AE58();
    v93 = v97;
    v81 = *(v98 + 32);
    v64 = MEMORY[0x277D84F90];
LABEL_13:
    v94 = sub_22BE336E8();
    v81(v94);
    *(v93 + *(type metadata accessor for UpdateParametersExpression(0) + 20)) = v64;
    goto LABEL_14;
  }

  v102 = v16;
  v62 = sub_22BE3122C(MEMORY[0x277D84F90]);
  sub_22BE71838(v62, v61, 0);
  v63 = 0;
  v64 = a10;
  sub_22BE25AD8();
  v103 = v60 + v65;
  v99 = (v98 + 32);
  sub_22BE36638((v98 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000);
  v67 = v112;
  v104 = v13;
  v100 = v61;
  v101 = v60;
  while (v63 < *(v60 + 16))
  {
    sub_22BE1AA68(v103 + *(v66 + 72) * v63, v67);
    v68 = sub_22BE27A44();
    sub_22BE1AA68(v68, v69);
    v71 = *v14;
    v70 = v14[1];
    v72 = *(v14 + 16);
    v73 = *(updated + 24);
    sub_22BE22814();
    v74 = sub_22BE2BA98();
    sub_22BE1AB5C(v74, v75, v106);
    if (v76)
    {
      sub_22BE233E8(v110, &qword_27D9090F8, &unk_22C2AE4A0);
      sub_22BE5CE4C(&qword_27D911F78, &qword_22C2B5D00);
      sub_22BE3369C();
      sub_22C25A64C();
      sub_22C108598();
      v91 = sub_22BE196B4();
      *v92 = v70;
      v92[1] = v110;
      sub_22C25A590(v91, v92);
      sub_22BE1AE58();
      sub_22BE1AE58();
      (*(v98 + 8))(v104, v107);
      sub_22BE22EF8();
      sub_22C1CEFC8();
      sub_22BE1AE58();

      goto LABEL_14;
    }

    sub_22BE3B168();
    sub_22BE3B620(v110, v102);
    v77 = *v102;
    v78 = v14;
    v79 = *(v102 + 1);
    v80 = *(v102 + 2);

    sub_22C25A1C4();
    sub_22C25A368();
    v14 = v78;
    v67 = v112;
    sub_22C26E664();
    sub_22BE18B80();
    sub_22BE1AE58();
    sub_22BE1AE58();
    sub_22BE1A8C4();
    sub_22BE1AE58();
    *v113 = v71;
    *(v113 + 8) = v70;
    *(v113 + 16) = 0;
    *(v113 + 24) = 1;
    *(v113 + 25) = v72;
    v81 = *v99;
    (*v99)(v113 + *(v108 + 28), v105, v107);
    v83 = *(a10 + 16);
    v82 = *(a10 + 24);
    if (v83 >= v82 >> 1)
    {
      sub_22BE3D1E4(v82);
      sub_22BE31778();
      sub_22BE71838(v88, v89, v90);
      v67 = v112;
    }

    ++v63;
    *(a10 + 16) = v83 + 1;
    sub_22BE25AD8();
    v85 = *(v84 + 72);
    v86 = sub_22C1088AC();
    sub_22BE3B620(v86, v87);
    v60 = v101;
    v66 = v111;
    if (v100 == v63)
    {
      sub_22BE22EF8();
      sub_22C1CEFC8();
      sub_22BE1AE58();
      v93 = v97;
      sub_22C1CF148();
      goto LABEL_13;
    }
  }

  __break(1u);
}

void CallExpression.init(transcript:)()
{
  sub_22BE19130();
  sub_22C25AA94();
  v57 = v6;
  v7 = sub_22C26E684();
  v8 = sub_22BE179D8(v7);
  v63 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = sub_22BE2F294();
  v13 = type metadata accessor for TranscriptProtoStatementID(v12);
  v14 = sub_22BE17A18(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BE18928();
  MEMORY[0x28223BE20](v19);
  v20 = sub_22BE374E4();
  v21 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(v20);
  v22 = sub_22BE19448(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22BE17CBC();
  v25 = v3 + *(type metadata accessor for TranscriptProtoCallExpression(0) + 20);
  sub_22C10289C();
  if (v0)
  {
    sub_22C259918();
    sub_22BE1AE58();
LABEL_14:
    sub_22BE22978();
    sub_22BE18478();
  }

  else
  {
    v59 = v2;
    v62 = v4;
    v60 = v5;
    v26 = v1[1];
    v56 = *v1;
    v53 = v1[4];
    v54 = v1[3];
    v52 = *(v1 + 16);

    v55 = v26;

    sub_22BE40CB0();
    sub_22BE1AE58();
    v27 = *v3;
    sub_22BE5CE4C(&qword_27D9155B8, &unk_22C2CC7B0);
    v28 = sub_22C273D04();
    v29 = 0;
    v30 = *(v27 + 64);
    v58 = v28;
    v31 = *(v27 + 32);
    sub_22BE26A98();
    v34 = v33 >> 6;
    v61 = v7;
    while (v32)
    {
      sub_22BE22BE8();
      v64 = v36;
LABEL_11:
      v39 = v35 | (v29 << 6);
      v40 = *(v27 + 56);
      v41 = (*(v27 + 48) + 16 * v39);
      v66 = *v41;
      v65 = v41[1];
      v42 = *(v16 + 72);
      sub_22BE34170();
      sub_22BE1AA68(v43, v59);
      v44 = sub_22BE3C5E4();
      sub_22BE1AA68(v44, v45);
      v46 = *v62;
      v47 = *(v62 + 1);
      v48 = *(v62 + 2);

      sub_22C26E664();
      sub_22C25A194();
      sub_22BE1AE58();
      sub_22BE2590C();
      sub_22BE1AE58();
      v28 = v58;
      sub_22BE3CD8C((v39 >> 3) & 0x1FFFFFFFFFFFFFF8);
      sub_22C25A924(v49);
      sub_22C25ADB4(v58[6]);
      (*(v63 + 32))(v58[7] + *(v63 + 72) * v39, v60, v61);
      sub_22C25A8A0();
      if (v51)
      {
        goto LABEL_16;
      }

      v58[2] = v50;
      v32 = v64;
    }

    v37 = v29;
    while (1)
    {
      v29 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v29 >= v34)
      {
        sub_22C259918();
        sub_22BE1AE58();
        *v57 = v56;
        *(v57 + 8) = v55;
        *(v57 + 16) = v54;
        *(v57 + 24) = v53;
        *(v57 + 32) = v52;
        *(v57 + 40) = v28;
        goto LABEL_14;
      }

      ++v37;
      if (*(v27 + 64 + 8 * v29))
      {
        sub_22BE4878C();
        v64 = v38;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }
}

void sub_22C2335E0()
{
  sub_22BE19130();
  v37[0] = v3;
  v37[1] = v4;
  sub_22C25A50C();
  v5 = type metadata accessor for TranscriptProtoStatementID(0);
  v6 = sub_22BE18000(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE18928();
  MEMORY[0x28223BE20](v9);
  sub_22BE1C17C();
  v10 = sub_22BE3C5E4();
  v12 = sub_22BE5CE4C(v10, v11);
  v13 = sub_22BE19448(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BE17D10();
  MEMORY[0x28223BE20](v16);
  v18 = v37 - v17;
  v19 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  sub_22BE19448(v19);
  v21 = *(v20 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v22);
  sub_22BE1B01C();
  sub_22BE200D4();
  sub_22C25AAC4();
  sub_22BE22814();
  sub_22BE29264();
  sub_22C25AAC4();
  sub_22BE22814();
  sub_22BE23B00(v2);
  if (v23)
  {
    sub_22C25AD50();
    sub_22BE1AE58();
    sub_22BE233E8(v18, &qword_27D9090F8, &unk_22C2AE4A0);
    v31 = 1;
    v18 = v2;
  }

  else
  {
    v24 = sub_22BE180C8();
    sub_22BE3B620(v24, v25);
    sub_22BE2C73C();
    v26 = sub_22BE196A8();
    sub_22BE1AA68(v26, v27);
    v28 = *v1;
    v29 = *(v1 + 1);
    v30 = *(v1 + 2);

    sub_22BE1804C();
    sub_22C26E664();
    sub_22C25AD50();
    sub_22BE1AE58();
    sub_22BE3AD30();
    sub_22BE1AE58();
    sub_22BE2565C();
    sub_22BE1AE58();
    v31 = 0;
  }

  sub_22BE233E8(v18, &qword_27D9090F8, &unk_22C2AE4A0);
  v32 = sub_22C26E684();
  sub_22BE19DC4(v0, v31, 1, v32);
  sub_22BE32EE0();
  sub_22BE19DC4(v33, v34, v35, v36);
  sub_22BE36680();
  sub_22BE2343C();
  sub_22BE3C298();
  sub_22BE18478();
}

void PickExpression.init(transcript:)()
{
  sub_22BE19130();
  v4 = sub_22C259D80();
  v5 = type metadata accessor for TranscriptProtoStatementID(v4);
  v6 = sub_22BE19448(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE19820();
  v9 = sub_22C26E684();
  v10 = sub_22BE1A3D8(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BE1955C();
  v15 = type metadata accessor for TranscriptProtoPickExpression(0);
  sub_22C25A53C(v15);
  sub_22C1026C4();
  if (v1)
  {
    sub_22BE379D8();
    sub_22BE1AE58();
  }

  else
  {
    v16 = *v3;
    v17 = *(v3 + 1);
    v18 = *(v3 + 2);

    sub_22C25A1C4();
    sub_22C26E664();
    sub_22BE18B80();
    sub_22BE1AE58();
    v19 = *v2;
    sub_22BE379D8();
    sub_22BE1AE58();
    v20 = *(v12 + 32);
    sub_22BE39E94();
    v21();
    *(v0 + *(type metadata accessor for PickExpression(0) + 20)) = v19;
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

void sub_22C2339C0()
{
  sub_22BE19130();
  sub_22C25A770();
  v2 = sub_22BE25DC4();
  v3 = type metadata accessor for TranscriptProtoStatementID(v2);
  v4 = sub_22BE19448(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE19820();
  v7 = sub_22C26E684();
  v8 = sub_22BE1A3D8(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE294E0();
  sub_22C1026C4();
  if (v1)
  {
    sub_22BE1A8C4();
    sub_22BE1AE58();
  }

  else
  {
    v13 = *v0;
    v14 = *(v0 + 1);
    v15 = *(v0 + 2);

    sub_22BE289C0();
    sub_22C26E664();
    sub_22BE1A8C4();
    sub_22BE1AE58();
    sub_22BE18B80();
    sub_22BE1AE58();
    v16 = *(v10 + 32);
    sub_22C18FD4C();
    v17();
  }

  sub_22BE46D98();
  sub_22BE18478();
}

void SearchExpression.init(transcript:)()
{
  sub_22BE3C358();
  sub_22BE28CF0();
  v3 = *v1;
  v2 = v1[1];
  v4 = *(v1 + 16);
  v5 = *(v1 + 17);
  v6 = *(v1 + 18);

  sub_22BE26148();
  sub_22BE1AE58();
  *v0 = v3;
  *(v0 + 8) = v2;
  *(v0 + 16) = v4;
  *(v0 + 17) = v5;
  *(v0 + 18) = v6;
  sub_22BE267B8();
}

void StructuredSearchExpression.init(transcript:)()
{
  sub_22BE19130();
  v86 = v0;
  v2 = v1;
  v81 = v3;
  v95 = sub_22C26E684();
  v4 = sub_22BE179D8(v95);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE17A44();
  v10 = sub_22BE3E890(v9);
  v11 = type metadata accessor for TranscriptProtoStatementID(v10);
  v12 = sub_22BE17A18(v11);
  v93 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BE17B98();
  sub_22BE3E334();
  MEMORY[0x28223BE20](v16);
  sub_22BE19E94();
  v90 = v17;
  v18 = sub_22BE5CE4C(&qword_27D90C138, &qword_22C2CB830);
  sub_22BE19448(v18);
  v20 = *(v19 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v21);
  sub_22BE1A174();
  v84 = v22;
  v23 = sub_22BE5CE4C(&qword_27D9092E8, &qword_22C288A90);
  sub_22BE19448(v23);
  v25 = *(v24 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v26);
  sub_22BE1A174();
  v85 = v27;
  v87 = v2;
  v28 = *v2;
  sub_22BE5CE4C(&qword_27D9155B8, &unk_22C2CC7B0);
  sub_22BE3D3E0();
  v29 = sub_22C273D04();
  v30 = 0;
  v32 = v28 + 64;
  v31 = *(v28 + 64);
  v89 = v28;
  v33 = *(v28 + 32);
  sub_22BE26A98();
  v35 = v34 >> 6;
  v88 = (v36 + 8);
  v92 = v36;
  if (v37)
  {
    while (1)
    {
      sub_22BE22BE8();
      v96 = v39;
LABEL_8:
      v42 = v38 | (v30 << 6);
      v43 = (*(v89 + 48) + 16 * v42);
      v98 = *v43;
      v97 = v43[1];
      sub_22BE1AA68(*(v89 + 56) + *(v93 + 72) * v42, v90);
      sub_22BE315FC();
      sub_22BE1AA68(v44, v45);
      v46 = *v91;
      v48 = *(v91 + 1);
      v47 = *(v91 + 2);

      sub_22C26E664();
      sub_22BE1AE58();
      sub_22BE1824C();
      sub_22BE1AE58();
      sub_22BE3CD8C((v42 >> 3) & 0x1FFFFFFFFFFFFFF8);
      sub_22C25A924(v49);
      v29 = v92;
      v50 = (v92[6] + 16 * v42);
      *v50 = v98;
      v50[1] = v97;
      (*(v6 + 32))(v92[7] + *(v6 + 72) * v42, v94, v95);
      sub_22C25A864();
      if (v52)
      {
        break;
      }

      v92[2] = v51;
      if (!v96)
      {
        goto LABEL_3;
      }
    }

LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_3:
    v40 = v30;
    while (1)
    {
      v30 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        __break(1u);
        goto LABEL_16;
      }

      if (v30 >= v35)
      {
        break;
      }

      ++v40;
      if (*(v32 + 8 * v30))
      {
        sub_22BE4878C();
        v96 = v41;
        goto LABEL_8;
      }
    }

    v53 = *(type metadata accessor for TranscriptProtoStructuredSearchExpression(0) + 24);
    sub_22BE22814();
    v54 = sub_22C259FDC();
    sub_22C0FE908(v54, v55, v56, v57, v58, v59, v60, v61, v79, v81);
    if (v86)
    {
      sub_22C0E9A74();
      sub_22BE1AE58();
    }

    else
    {
      v62 = *(v87 + 8);

      sub_22C0F92F4(v63, v64, v65, v66, v67, v68, v69, v70, v80, v82, v84, v85, 0, v87, v6 + 32, v88, v89, v90, v91, v92);
      v72 = v71;
      sub_22C0E9A74();
      sub_22BE1AE58();
      v73 = type metadata accessor for StructuredSearchExpression(0);
      v74 = v73[5];
      sub_22C2728A4();
      sub_22BE1A140();
      sub_22BE19DC4(v75, v76, v77, v78);
      *v83 = v29;
      sub_22BE2343C();
      *(v83 + v73[7]) = v72;
      *(v83 + v73[6]) = 0;
    }

    sub_22BE22978();
    sub_22BE18478();
  }
}

void sub_22C2340C4()
{
  sub_22BE19460();
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for TranscriptProtoStatementID(0);
  v8 = sub_22BE17A18(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE2582C();
  MEMORY[0x28223BE20](v13);
  sub_22C2595A0();
  v35 = sub_22C26E684();
  v14 = sub_22BE179D8(v35);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BE188B0();
  v19 = *v4;
  v20 = *(*v4 + 16);
  if (v20)
  {
    v33 = v6;
    v36 = MEMORY[0x277D84F90];
    sub_22BE71084();
    v21 = v36;
    v22 = *(v10 + 80);
    sub_22BE19E14();
    v24 = v19 + v23;
    v34 = *(v10 + 72);
    do
    {
      sub_22BE1AA68(v24, v1);
      v25 = sub_22BE1AB1C();
      sub_22BE1AA68(v25, v26);
      v27 = *v0;
      v28 = *(v0 + 1);
      v29 = *(v0 + 2);

      sub_22C26E664();
      sub_22BE3AD30();
      sub_22BE1AE58();
      sub_22BE36680();
      sub_22BE1AE58();
      v30 = *(v36 + 16);
      if (v30 >= *(v36 + 24) >> 1)
      {
        sub_22BE71084();
      }

      *(v36 + 16) = v30 + 1;
      v31 = *(v16 + 80);
      sub_22BE19E14();
      (*(v16 + 32))(v36 + v32 + *(v16 + 72) * v30, v2, v35);
      v24 += v34;
      --v20;
    }

    while (v20);
    sub_22BE1AE58();
    v6 = v33;
  }

  else
  {
    sub_22BE1B5E0();
    sub_22BE1AE58();
    v21 = MEMORY[0x277D84F90];
  }

  *v6 = v21;
  sub_22BE1AABC();
}

uint64_t sub_22C234350@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;

  v7 = a2(v6);
  sub_22BE1AB74();
  result = sub_22BE1AE58();
  *a3 = v7;
  return result;
}

void sub_22C2343E4()
{
  sub_22BE2BB34();
  v1 = sub_22BE1A5E4();
  v2 = type metadata accessor for TranscriptProtoStatementID(v1);
  v3 = sub_22BE19448(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE1955C();
  v6 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  sub_22BE19448(v6);
  v8 = *(v7 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE1B01C();
  sub_22C1026C4();
  if (v0)
  {
    sub_22BE1B328();
    sub_22BE1AE58();
  }

  else
  {
    sub_22C25A9B4();
    sub_22C25A5A8();
    sub_22BE1B328();
    sub_22BE1AE58();
    sub_22BE18B80();
    sub_22BE1AE58();
    v10 = sub_22C26E684();
    v11 = sub_22BE22B8C();
    sub_22BE19DC4(v11, v12, v13, v10);
    v14 = sub_22BE38960();
    sub_22BE19DC4(v14, v15, v16, v10);
    sub_22BE291B0();
    sub_22BE2343C();
  }

  sub_22BE36324();
  sub_22BEE93D4();
}

void UserConfirmExpression.init(transcript:)()
{
  sub_22BE19130();
  sub_22C259E88();
  v2 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v2);
  v4 = *(v3 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE1B01C();
  v6 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  v7 = sub_22BE19448(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE195A8();
  MEMORY[0x28223BE20](v10);
  v11 = sub_22BE374E4();
  v12 = type metadata accessor for TranscriptProtoStatementID(v11);
  v13 = sub_22BE19448(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BE28FD8();
  v16 = sub_22C26E684();
  v17 = sub_22C2594A0(v16);
  v39 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BE188B0();
  sub_22C1026C4();
  if (v0)
  {
    sub_22BE39030();
    sub_22BE1AE58();
  }

  else
  {
    v21 = *v1;
    v22 = *(v1 + 1);
    v23 = *(v1 + 2);

    sub_22BE1B5EC();
    sub_22C26E664();
    sub_22BE18B80();
    sub_22BE1AE58();
    v24 = type metadata accessor for TranscriptProtoUserConfirmExpression(0);
    sub_22C25A374(v24);
    sub_22C25A3C4();
    sub_22BE22814();
    sub_22C25A08C();
    sub_22C0FD140();
    v25 = *(v22 + 24);
    sub_22C25A3C4();
    sub_22BE22814();
    sub_22C0FD140();
    sub_22BE39030();
    sub_22BE1AE58();
    v26 = type metadata accessor for UserConfirmExpression(0);
    sub_22C25A658(v26);
    sub_22BE28D2C();
    sub_22BE19DC4(v27, v28, v29, v30);
    v31 = *(v22 + 24);
    sub_22BE28D2C();
    sub_22BE19DC4(v32, v33, v34, v35);
    v36 = *(v39 + 32);
    v37 = sub_22BE22DF4();
    v38(v37);
    sub_22BE27B84();
    sub_22BE2343C();
    sub_22BE27B84();
    sub_22BE2343C();
  }

  sub_22BE1AB28();
  sub_22BE18478();
}

void UserDisambiguateExpression.init(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v17 = v16;
  v19 = sub_22C18F934(v18);
  v20 = type metadata accessor for TranscriptProtoStatementID(v19);
  v21 = sub_22BE17A18(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22BE18928();
  MEMORY[0x28223BE20](v24);
  sub_22BE20324();
  MEMORY[0x28223BE20](v25);
  sub_22BE195C4();
  v26 = sub_22C26E684();
  v27 = sub_22BE179D8(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22BE17D10();
  MEMORY[0x28223BE20](v32);
  v33 = sub_22C2595A0();
  v34 = type metadata accessor for TranscriptProtoUserDisambiguateExpression(v33);
  sub_22C25A73C(v34);
  sub_22C1026C4();
  if (v10)
  {
    sub_22BE3A54C();
    sub_22BE1AE58();
  }

  else
  {
    v61 = v11;
    v62 = v26;
    v35 = *v14;
    v36 = *(v14 + 1);
    v37 = *(v14 + 2);

    v58 = v12;
    sub_22BE1804C();
    sub_22C26E664();
    sub_22BE18B80();
    sub_22BE1AE58();
    v38 = *v17;
    v39 = *(*v17 + 16);
    if (v39)
    {
      sub_22BE3122C(MEMORY[0x277D84F90]);
      sub_22BE71084();
      v40 = a10;
      sub_22BE25AD8();
      v42 = v38 + v41;
      v60 = *(v43 + 72);
      v44 = v15;
      do
      {
        sub_22C25A0F8();
        sub_22BE1AA68(v42, v61);
        v45 = sub_22BF0AFB8();
        sub_22BE1AA68(v45, v46);
        v47 = *v13;
        v48 = *(v13 + 1);
        v49 = *(v13 + 2);

        sub_22BE1804C();
        sub_22C26E664();
        sub_22BE3AD30();
        sub_22BE1AE58();
        sub_22BE25EFC();
        sub_22BE1AE58();
        v50 = v44;
        v52 = *(a10 + 16);
        v51 = *(a10 + 24);
        if (v52 >= v51 >> 1)
        {
          sub_22BE3D1E4(v51);
          sub_22BE71084();
        }

        *(a10 + 16) = v52 + 1;
        v53 = *(v29 + 80);
        sub_22BE19E14();
        v55 = *(v29 + 32);
        v55(a10 + v54 + *(v29 + 72) * v52, v50, v62);
        v42 += v60;
        --v39;
        v44 = v50;
      }

      while (v39);
      sub_22BE3A54C();
      sub_22BE1AE58();
      v56 = v59;
      v57 = v62;
    }

    else
    {
      sub_22BE3A54C();
      sub_22BE1AE58();
      v55 = *(v29 + 32);
      v40 = MEMORY[0x277D84F90];
      v57 = v62;
      v56 = v59;
    }

    v55(v56, v58, v57);
    *(v56 + *(type metadata accessor for UserDisambiguateExpression(0) + 20)) = v40;
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

void AnswerSynthesisExpression.init(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v19 = v18;
  v101 = v20;
  v21 = sub_22BE5CE4C(&qword_27D909158, &qword_22C27FD50);
  sub_22BE19448(v21);
  v23 = *(v22 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v24);
  v26 = sub_22BE415D8(v25);
  v99 = type metadata accessor for TranscriptProtoAnswerSynthesisExtractionCandidateEnum(v26);
  v27 = sub_22BE18000(v99);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22BE1958C();
  MEMORY[0x28223BE20](v30);
  v31 = sub_22C2595B4();
  v32 = type metadata accessor for TranscriptProtoAnswerSynthesisExtractionCandidate(v31);
  v33 = sub_22BE17A18(v32);
  v102 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  sub_22BE17A44();
  v94 = v37;
  v38 = sub_22BE183BC();
  v39 = type metadata accessor for AnswerSynthesisExpression.ExtractionCandidate(v38);
  v40 = sub_22BE179D8(v39);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  sub_22BE17CBC();
  v43 = type metadata accessor for TranscriptProtoStatementID(0);
  v44 = sub_22BE19448(v43);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  sub_22BE3C8B8();
  MEMORY[0x28223BE20](v47);
  sub_22BE1AF10();
  MEMORY[0x28223BE20](v48);
  sub_22BE39EE8();
  v49 = sub_22C26E684();
  v50 = sub_22BE179D8(v49);
  v91 = v51;
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v50);
  sub_22BE18DFC();
  v54 = *(type metadata accessor for TranscriptProtoAnswerSynthesisExpression(0) + 20);
  v93 = v19;
  sub_22C1026C4();
  if (v11)
  {
    sub_22BE3EB38();
    sub_22BE1AE58();
LABEL_17:
    sub_22BEE94B0();
    sub_22BE18478();
    return;
  }

  v92 = v14;
  v98 = v49;
  v55 = *v15;
  v56 = *(v15 + 1);
  v57 = *(v15 + 2);

  sub_22BE1804C();
  sub_22C26E664();
  sub_22BE18B80();
  sub_22BE1AE58();
  v58 = *v93;
  if (!*(*v93 + 16))
  {
    sub_22BE3EB38();
    sub_22BE1AE58();
    v62 = MEMORY[0x277D84F90];
    v83 = v101;
LABEL_16:
    v87 = *(v91 + 32);
    v88 = sub_22BE33560();
    v89(v88);
    *(v83 + *(type metadata accessor for AnswerSynthesisExpression(0) + 20)) = v62;
    goto LABEL_17;
  }

  v90 = v13;
  v59 = sub_22BE3122C(MEMORY[0x277D84F90]);
  v95 = v60;
  sub_22BE71890(v59, v60, 0);
  v61 = 0;
  v62 = a10;
  sub_22BE25AD8();
  v96 = v58 + v64;
  v97 = v58;
  v65 = v94;
  while (v61 < *(v97 + 16))
  {
    sub_22BE1AA68(v96 + *(v63 + 72) * v61, v65);
    sub_22BE22814();
    v66 = sub_22BFB1A7C();
    sub_22BE1AB5C(v66, v67, v99);
    if (v68)
    {
      sub_22BE233E8(v100, &qword_27D909158, &qword_22C27FD50);
      sub_22C108358();
      v85 = sub_22BE196B4();
      sub_22BE3C904(v85, v86);
      sub_22BE3EB38();
      sub_22BE1AE58();
      sub_22C0E9848();
      sub_22BE1AE58();
      (*(v91 + 8))(v90, v98);

      goto LABEL_17;
    }

    v69 = sub_22C1088AC();
    sub_22BE3B620(v69, v17);
    v70 = sub_22C259E7C();
    sub_22BE1AA68(v70, v16);
    sub_22BE2BA80();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22BE20118();
      sub_22BE1AE58();
      v71 = v16[1];
      *v12 = *v16;
      v12[1] = v71;
    }

    else
    {
      sub_22BE3B168();
      sub_22BE3B620(v16, v92);
      sub_22BE2C73C();
      v72 = sub_22BE291B0();
      sub_22BE1AA68(v72, v73);
      v74 = *v10;
      v75 = *(v10 + 1);
      v76 = *(v10 + 2);

      sub_22BE315FC();
      sub_22C26E664();
      sub_22BE1AE58();
      v65 = v94;
      sub_22BE1AE58();
      sub_22BE20118();
      sub_22BE1AE58();
    }

    swift_storeEnumTagMultiPayload();
    sub_22C0E9848();
    sub_22BE1AE58();
    v78 = *(a10 + 16);
    v77 = *(a10 + 24);
    if (v78 >= v77 >> 1)
    {
      v84 = sub_22BE3D1E4(v77);
      sub_22BE71890(v84, v78 + 1, 1);
    }

    ++v61;
    *(a10 + 16) = v78 + 1;
    sub_22BE25AD8();
    v80 = *(v79 + 72);
    v81 = sub_22BE385E4();
    sub_22BE3B620(v81, v82);
    v83 = v101;
    v63 = v102;
    if (v95 == v61)
    {
      sub_22BE3EB38();
      sub_22BE1AE58();
      goto LABEL_16;
    }
  }

  __break(1u);
}

void TranscriptProtoExpression.init(handwritten:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v29;
  a20 = v30;
  v469 = v31;
  a10 = v32;
  v33 = type metadata accessor for AnswerSynthesisExpression(0);
  v34 = sub_22BE19448(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v37);
  sub_22BE19E94();
  v39 = sub_22BE18950(v38);
  v40 = type metadata accessor for UserDisambiguateExpression(v39);
  v41 = sub_22BE19448(v40);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v44);
  sub_22BE19E94();
  v46 = sub_22BE18950(v45);
  v47 = type metadata accessor for UserConfirmExpression(v46);
  v48 = sub_22BE19448(v47);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v51);
  sub_22BE19E94();
  v53 = sub_22BE18950(v52);
  v54 = type metadata accessor for SiriXFallbackExpression(v53);
  v55 = sub_22BE19448(v54);
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v55);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v58);
  sub_22BE19E94();
  v60 = sub_22BE18950(v59);
  v61 = type metadata accessor for OpenExpression(v60);
  v62 = sub_22BE19448(v61);
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v62);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v65);
  sub_22BE19E94();
  v67 = sub_22BE18950(v66);
  v68 = type metadata accessor for CancelExpression(v67);
  v69 = sub_22BE19448(v68);
  v71 = *(v70 + 64);
  MEMORY[0x28223BE20](v69);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v72);
  sub_22BE19E94();
  v74 = sub_22BE18950(v73);
  v75 = type metadata accessor for RejectExpression(v74);
  v76 = sub_22BE19448(v75);
  v78 = *(v77 + 64);
  MEMORY[0x28223BE20](v76);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v79);
  sub_22BE19E94();
  sub_22BE190A8(v80);
  v81 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  sub_22BE19448(v81);
  v83 = *(v82 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v84);
  sub_22BE1A174();
  v458 = v85;
  v86 = sub_22BE183BC();
  v87 = type metadata accessor for UndoExpression(v86);
  v88 = sub_22BE19448(v87);
  v90 = *(v89 + 64);
  MEMORY[0x28223BE20](v88);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v91);
  sub_22BE19E94();
  v93 = sub_22BE18950(v92);
  v94 = type metadata accessor for PickOneExpression(v93);
  v95 = sub_22BE19448(v94);
  v97 = *(v96 + 64);
  MEMORY[0x28223BE20](v95);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v98);
  sub_22BE19E94();
  v100 = sub_22BE18950(v99);
  v466 = type metadata accessor for TranscriptProtoStatementID(v100);
  v101 = sub_22BE179D8(v466);
  v461 = v102;
  v104 = *(v103 + 64);
  MEMORY[0x28223BE20](v101);
  sub_22BE17A44();
  v460 = v105;
  v106 = sub_22BE5CE4C(&qword_27D9092E8, &qword_22C288A90);
  sub_22BE19448(v106);
  v108 = *(v107 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v109);
  sub_22BE1A174();
  sub_22BE190A8(v110);
  v111 = sub_22BE5CE4C(&qword_27D90C138, &qword_22C2CB830);
  sub_22BE19448(v111);
  v113 = *(v112 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v114);
  sub_22BE1A174();
  v116 = sub_22BE18950(v115);
  v117 = type metadata accessor for StructuredSearchExpression(v116);
  v118 = sub_22BE290A0(v117, &v456);
  v120 = *(v119 + 64);
  MEMORY[0x28223BE20](v118);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v121);
  sub_22BE19E94();
  v123 = sub_22BE18950(v122);
  v124 = type metadata accessor for ConfirmExpression(v123);
  v125 = sub_22BE19448(v124);
  v127 = *(v126 + 64);
  MEMORY[0x28223BE20](v125);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v128);
  sub_22BE19E94();
  sub_22BE190A8(v129);
  v130 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v130);
  v132 = *(v131 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v133);
  sub_22BE1A174();
  v459 = v134;
  v135 = sub_22BE183BC();
  v136 = type metadata accessor for PickExpression(v135);
  v137 = sub_22BE290A0(v136, &v467);
  v139 = *(v138 + 64);
  MEMORY[0x28223BE20](v137);
  sub_22BE17B98();
  sub_22BE181F4();
  v141 = MEMORY[0x28223BE20](v140);
  v149 = sub_22BE3CEC0(v141, v142, v143, v144, v145, v146, v147, v148, v435);
  ToolsExpression = type metadata accessor for RetrieveToolsExpression(v149);
  v151 = sub_22BE19448(ToolsExpression);
  v153 = *(v152 + 64);
  MEMORY[0x28223BE20](v151);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v154);
  sub_22BE19E94();
  v156 = sub_22BE18950(v155);
  SpansExpression = type metadata accessor for RetrieveSpansExpression(v156);
  v158 = sub_22BE19448(SpansExpression);
  v160 = *(v159 + 64);
  MEMORY[0x28223BE20](v158);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v161);
  sub_22BE19E94();
  v163 = sub_22BE18950(v162);
  updated = type metadata accessor for UpdateParametersExpression(v163);
  v165 = sub_22BE19448(updated);
  v167 = *(v166 + 64);
  MEMORY[0x28223BE20](v165);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v168);
  sub_22BE19E94();
  v170 = sub_22BE18950(v169);
  v171 = type metadata accessor for IndexExpression(v170);
  v172 = sub_22BE19448(v171);
  v174 = *(v173 + 64);
  MEMORY[0x28223BE20](v172);
  sub_22BE2582C();
  MEMORY[0x28223BE20](v175);
  v176 = sub_22BE20558();
  v177 = type metadata accessor for InfixExpression(v176);
  v178 = sub_22BE19448(v177);
  v180 = *(v179 + 64);
  MEMORY[0x28223BE20](v178);
  sub_22BE195A8();
  MEMORY[0x28223BE20](v181);
  v182 = sub_22BE195C4();
  v183 = type metadata accessor for PrefixExpression(v182);
  v184 = sub_22BE19448(v183);
  v186 = *(v185 + 64);
  MEMORY[0x28223BE20](v184);
  sub_22BE186D4();
  MEMORY[0x28223BE20](v187);
  sub_22C259BC0();
  v188 = sub_22C26E684();
  v464 = sub_22BE179D8(v188);
  v465 = v189;
  v191 = *(v190 + 64);
  MEMORY[0x28223BE20](v464);
  sub_22BE17B98();
  v462 = v192;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v193);
  sub_22BE19E94();
  v463 = v194;
  v195 = sub_22BE183BC();
  v196 = type metadata accessor for Expression(v195);
  v197 = sub_22BE18000(v196);
  v199 = *(v198 + 64);
  MEMORY[0x28223BE20](v197);
  v200 = sub_22BE19820();
  v468 = type metadata accessor for TranscriptProtoExpressionEnum(v200);
  v201 = sub_22BE18000(v468);
  v203 = *(v202 + 64);
  MEMORY[0x28223BE20](v201);
  sub_22BE17D10();
  MEMORY[0x28223BE20](v204);
  sub_22BE19490();
  sub_22BE181F4();
  v206 = MEMORY[0x28223BE20](v205);
  sub_22BE3173C(v206, v207, v208, v209, v210, v211, v212, v213, v436);
  sub_22C25A2C0();
  sub_22BE1AA68(a10, v25);
  sub_22BE1B18C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v317 = v465;
      sub_22C25A35C();
      v318 = sub_22BE1824C();
      v319(v318);
      sub_22C1CF23C();
      v320 = v462;
      v321 = sub_22BE191C0();
      v322(v321);
      v323 = sub_22C26E674();
      sub_22C26E654();
      sub_22BE29328();
      v324 = v467;
      v325 = v467 + *(v466 + 24);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v326 = *(v317 + 8);
      v327 = sub_22BE25C94();
      v326(v327);
      v328 = sub_22BE1824C();
      v326(v328);
      *v324 = v323;
      *(v324 + 8) = v320;
      *(v324 + 16) = v23;
      sub_22BE41554();
      goto LABEL_38;
    case 2u:
      v309 = sub_22C1088E8();
      sub_22BE3B620(v309, v21);
      v310 = sub_22BE431F0();
      sub_22BE1AA68(v310, v28);
      sub_22C259FAC();
      TranscriptProtoPrefixExpression.init(handwritten:)();
      sub_22C0E9A74();
      sub_22BE1AE58();
      sub_22BE41554();
      goto LABEL_38;
    case 3u:
      v315 = sub_22C1088E8();
      sub_22BE3B620(v315, v26);
      v316 = sub_22BE44744();
      sub_22BE1AA68(v316, v23);
      sub_22C259FAC();
      TranscriptProtoInfixExpression.init(handwritten:)();
      sub_22BE3ACD8();
      sub_22BE1AE58();
      sub_22BE41554();
      goto LABEL_38;
    case 4u:
      v291 = sub_22C1088E8();
      sub_22BE3B620(v291, v20);
      v292 = sub_22BE19EBC();
      sub_22BE1AA68(v292, v24);
      sub_22C259FAC();
      TranscriptProtoIndexExpression.init(handwritten:)();
      sub_22BE26148();
      sub_22BE1AE58();
      sub_22BE41554();
      goto LABEL_38;
    case 5u:
      sub_22C1088E8();
      sub_22BE22944(&v459);
      sub_22BE3B620(v343, v344);
      sub_22BE431F0();
      sub_22BEE94A4(&v460);
      sub_22BE1AA68(v345, v346);
      sub_22BE46D28();
      TranscriptProtoUpdateParametersExpression.init(handwritten:)();
      sub_22C0E9A74();
      sub_22BE1AE58();
      sub_22BE41554();
      goto LABEL_38;
    case 6u:
      v354 = *(v25 + 8);
      v355 = *(v25 + 32);
      v356 = *(v25 + 40);
      *&v471 = *v25;
      *(&v471 + 1) = v354;
      v472 = *(v25 + 16);
      v473[0] = v355;
      v474 = v356;
      sub_22C259FAC();
      TranscriptProtoCallExpression.init(handwritten:)();
      sub_22BE41554();
      goto LABEL_38;
    case 7u:
    case 0x1Bu:
    case 0x1Cu:
    case 0x1Du:
    case 0x1Eu:
    case 0x1Fu:
      sub_22C259FAC();
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE41554();
      goto LABEL_38;
    case 8u:
      sub_22C1088E8();
      sub_22BE22944(&v461);
      sub_22BE3B620(v361, v362);
      sub_22BE431F0();
      sub_22BEE94A4(&v462);
      sub_22BE1AA68(v363, v364);
      sub_22BE46D28();
      TranscriptProtoRetrieveSpansExpression.init(handwritten:)();
      sub_22C0E9A74();
      sub_22BE1AE58();
      sub_22BE41554();
      goto LABEL_38;
    case 9u:
      sub_22C1088E8();
      sub_22BE22944(&v463);
      sub_22BE3B620(v297, v298);
      sub_22BE431F0();
      sub_22BEE94A4(&v464);
      sub_22BE1AA68(v299, v300);
      sub_22BE46D28();
      TranscriptProtoRetrieveToolsExpression.init(handwritten:)();
      sub_22C0E9A74();
      sub_22BE1AE58();
      sub_22BE41554();
      goto LABEL_38;
    case 0xAu:
      *&v471 = *v25;
      sub_22C259FAC();
      TranscriptProtoSayExpression.init(handwritten:)();
      sub_22BE41554();
      goto LABEL_38;
    case 0xBu:
      sub_22C1088E8();
      sub_22C25AAA0();
      sub_22BE3B620(v264, v265);
      sub_22BE19EBC();
      sub_22C25A87C(&v468);
      sub_22BE1AA68(v266, v267);
      v268 = v465;
      sub_22C1CF23C();
      v269 = v463;
      v270 = sub_22BE3E79C();
      v271(v270);
      v272 = sub_22C26E674();
      sub_22C26E654();
      sub_22BE29328();
      v273 = v466;
      v274 = v459;
      v275 = v459 + *(v466 + 24);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v276 = *(v268 + 8);
      v277 = sub_22BF0AFB8();
      v278(v277);
      *v274 = v272;
      *(v274 + 8) = v269;
      *(v274 + 16) = v23;
      v279 = sub_22BE22B8C();
      sub_22BE19DC4(v279, v280, v281, v273);
      sub_22BE2ED7C(&v467);
      v283 = *(v28 + v282);
      v284 = type metadata accessor for TranscriptProtoPickExpression(0);
      sub_22C25A658(v284);
      v285 = v467;
      sub_22BE3AE2C();
      sub_22BE19DC4(v286, v287, v288, v289);
      v290 = v285 + *(v272 + 24);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE1AE58();
      sub_22BE1AE58();
      sub_22BE2343C();
      *v285 = v283;
      sub_22BE41554();
      goto LABEL_38;
    case 0xCu:
      sub_22C1088E8();
      sub_22BE22944(&v465);
      sub_22BE3B620(v293, v294);
      sub_22BE431F0();
      sub_22BEE94A4(&v466);
      sub_22BE1AA68(v295, v296);
      sub_22BE46D28();
      TranscriptProtoConfirmExpression.init(handwritten:)();
      sub_22C0E9A74();
      sub_22BE1AE58();
      sub_22BE41554();
      goto LABEL_38;
    case 0xDu:
      v347 = *v25;
      v348 = *(v25 + 8);
      v23 = *(v25 + 16);
      v349 = *(v25 + 17);
      v350 = *(v25 + 18);
      v351 = type metadata accessor for TranscriptProtoSearchExpression(0);
      v352 = v467;
      v353 = v467 + *(v351 + 32);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      *v352 = v347;
      *(v352 + 8) = v348;
      *(v352 + 16) = v23;
      *(v352 + 17) = v349;
      *(v352 + 18) = v350;
      sub_22BE41554();
      goto LABEL_38;
    case 0xEu:
      sub_22C1088E8();
      sub_22BEE94A4(&a17);
      sub_22BE3B620(v226, v227);
      sub_22BE19EBC();
      sub_22BEE94A4(&a18);
      sub_22BE1AA68(v228, v229);
      v230 = *v20;
      sub_22BE5CE4C(&qword_27D915600, &unk_22C2CC8E0);
      sub_22BE3D3E0();
      v231 = sub_22C273D04();
      v232 = 0;
      sub_22C25A43C();
      v233 = *(v230 + 32);
      sub_22BE26A98();
      v235 = v234 >> 6;
      v453 = v465 + 16;
      v452 = v234 >> 6;
      v454 = v236;
      if (v237)
      {
        goto LABEL_5;
      }

      break;
    case 0xFu:
      sub_22C1088E8();
      sub_22BE22944(&v469);
      sub_22BE3B620(v311, v312);
      sub_22BE431F0();
      sub_22BEE94A4(&v470);
      sub_22BE1AA68(v313, v314);
      sub_22BE46D28();
      TranscriptProtoPickOneExpression.init(handwritten:)();
      sub_22C0E9A74();
      sub_22BE1AE58();
      sub_22BE41554();
      goto LABEL_38;
    case 0x10u:
      v222 = sub_22C1EE9C4(*v25);

      v223 = type metadata accessor for TranscriptProtoResolveToolExpression(0);
      v224 = v467;
      v225 = v467 + *(v223 + 20);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      *v224 = v222;
      sub_22BE41554();
      goto LABEL_38;
    case 0x11u:
      sub_22C1088E8();
      sub_22C25A8AC(&v471);
      sub_22BE3B620(v329, v330);
      sub_22C1088E8();
      sub_22BE37B14(&v471 + 8);
      sub_22BE1AA68(v331, v332);
      sub_22BE22814();
      sub_22BE46914();
      v333 = sub_22BE3D5C8();
      v337 = sub_22C18F17C(v333, v334, v335, v336);
      v338 = type metadata accessor for TranscriptProtoUndoExpression(v337);
      sub_22BE34080(v338);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE1AE58();
      sub_22BE291B0();
      sub_22BE1AE58();
      sub_22BE1B73C();
      sub_22BE2343C();
      sub_22BE41554();
      goto LABEL_38;
    case 0x12u:
      sub_22C1088E8();
      sub_22BE22944(&v472);
      sub_22BE3B620(v357, v358);
      sub_22BE431F0();
      sub_22BEE94A4(&v472 + 8);
      sub_22BE1AA68(v359, v360);
      sub_22BE46D28();
      TranscriptProtoRejectExpression.init(handwritten:)();
      sub_22C0E9A74();
      sub_22BE1AE58();
      sub_22BE41554();
      goto LABEL_38;
    case 0x13u:
      sub_22C1088E8();
      sub_22BE22944(v473);
      sub_22BE3B620(v370, v371);
      sub_22BE431F0();
      sub_22BEE94A4(&v474);
      sub_22BE1AA68(v372, v373);
      sub_22BE46D28();
      TranscriptProtoCancelExpression.init(handwritten:)();
      sub_22C0E9A74();
      sub_22BE1AE58();
      sub_22BE41554();
      goto LABEL_38;
    case 0x14u:
      sub_22C1088E8();
      sub_22BE22944(&v475);
      sub_22BE3B620(v339, v340);
      sub_22BE431F0();
      sub_22BEE94A4(&v476);
      sub_22BE1AA68(v341, v342);
      sub_22BE46D28();
      TranscriptProtoOpenExpression.init(handwritten:)();
      sub_22C0E9A74();
      sub_22BE1AE58();
      sub_22BE41554();
      goto LABEL_38;
    case 0x15u:
      *&v471 = *v25;
      sub_22C259FAC();
      TranscriptProtoPayloadExpression.init(handwritten:)();
      sub_22BE41554();
      goto LABEL_38;
    case 0x16u:
      sub_22C1C1424(*v25, v214, v215, v216, v217, v218, v219, v220, v437, v440);
      v366 = v365;
      v367 = type metadata accessor for TranscriptProtoFormatExpression(0);
      v368 = v467;
      v369 = v467 + *(v367 + 20);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      *v368 = v366;
      sub_22BE41554();
      goto LABEL_38;
    case 0x17u:
      sub_22C1088E8();
      sub_22BE37B14(&a11);
      sub_22BE3B620(v374, v375);
      sub_22BE385E4();
      sub_22BE22944(&a12);
      sub_22BE1AA68(v376, v377);
      sub_22BE22814();
      sub_22C25A524();
      sub_22BE46914();
      v378 = sub_22BE3D5C8();
      v382 = sub_22C18F17C(v378, v379, v380, v381);
      v383 = type metadata accessor for TranscriptProtoSiriXFallbackExpression(v382);
      sub_22BE34080(v383);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE1AE58();
      sub_22BE1AB74();
      sub_22BE1AE58();
      sub_22BE1B18C();
      sub_22BE2343C();
      sub_22BE41554();
      goto LABEL_38;
    case 0x18u:
      sub_22C1088E8();
      sub_22BE22944(&a9);
      sub_22BE3B620(v305, v306);
      sub_22BE431F0();
      sub_22BEE94A4(&a10);
      sub_22BE1AA68(v307, v308);
      sub_22BE46D28();
      TranscriptProtoUserConfirmExpression.init(handwritten:)();
      sub_22C0E9A74();
      sub_22BE1AE58();
      sub_22BE41554();
      goto LABEL_38;
    case 0x19u:
      sub_22C1088E8();
      sub_22BE22944(&a13);
      sub_22BE3B620(v301, v302);
      sub_22BE431F0();
      sub_22BEE94A4(&a14);
      sub_22BE1AA68(v303, v304);
      sub_22BE46D28();
      TranscriptProtoUserDisambiguateExpression.init(handwritten:)();
      sub_22C0E9A74();
      sub_22BE1AE58();
      sub_22BE41554();
      goto LABEL_38;
    case 0x1Au:
      sub_22C1088E8();
      sub_22BEE94A4(&a16);
      sub_22BE3B620(v395, v396);
      sub_22BE19EBC();
      sub_22BE22944(&a15);
      sub_22BE1AA68(v397, v398);
      v399 = sub_22C259F64();
      TranscriptProtoAnswerSynthesisExpression.init(handwritten:)(v399, v400, v401, v402, v403, v404, v405, v406, v437, v440, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451);
      if (v22)
      {
        sub_22BE3C9DC();
        sub_22BE1AE58();
        sub_22BE3C950();
        goto LABEL_45;
      }

      sub_22BE3C950();
      sub_22BE1AE58();
      v23 = v468;
      swift_storeEnumTagMultiPayload();
      sub_22BE37A20();
      v418 = v27;
      goto LABEL_48;
    default:
      v221 = *(v25 + 16);
      v471 = *v25;
      LOBYTE(v472) = v221;
      sub_22C259FAC();
      TranscriptProtoValueExpression.init(handwritten:)();
      sub_22BE41554();
LABEL_38:
      swift_storeEnumTagMultiPayload();
      goto LABEL_39;
  }

LABEL_6:
  v240 = v232;
  while (1)
  {
    v232 = v240 + 1;
    if (__OFADD__(v240, 1))
    {
      __break(1u);
LABEL_50:
      __break(1u);
      return;
    }

    if (v232 >= v235)
    {
      break;
    }

    sub_22C25AC58();
    if (v241)
    {
      sub_22BE4878C();
      for (i = v242; ; i = v239)
      {
        v243 = v238 | (v232 << 6);
        sub_22C25A7E8(&a14);
        v245 = *v244;
        v458 = v244[1];
        v246 = v458;
        v459 = v245;
        v247 = v465;
        v249 = *(v465 + 16);
        v249(v463, v248 + *(v465 + 72) * v243, v464);
        v250 = sub_22BE261AC();
        (v249)(v250);

        v457 = sub_22C26E674();
        sub_22C26E654();
        sub_22C25A2F0();
        v251 = v460;
        v252 = v460 + *(v466 + 24);
        _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
        v253 = *(v247 + 8);
        v254 = sub_22BE31038();
        v253(v254);
        *v251 = v457;
        *(v251 + 8) = v453;
        *(v251 + 16) = v246;
        v255 = sub_22BE37B20();
        v253(v255);
        sub_22C259F84();
        sub_22C25977C(v256);
        v231 = v454;
        v257 = (v454[6] + 16 * v243);
        v258 = v458;
        *v257 = v459;
        v257[1] = v258;
        v259 = v454[7];
        v260 = *(v461 + 72);
        sub_22BE3B168();
        sub_22BE3B620(v251, v261);
        sub_22C25A864();
        if (v263)
        {
          break;
        }

        v454[2] = v262;
        v235 = v452;
        if (!i)
        {
          goto LABEL_6;
        }

LABEL_5:
        sub_22BE22BE8();
      }

      goto LABEL_50;
    }
  }

  v407 = v440;
  v408 = v456;
  v409 = v456 + *(v440 + 20);
  sub_22BEE94A4(&v457);
  sub_22BE22814();
  v410 = sub_22C25A524();
  sub_22C105B04(v410, v411, v412, v413, v414, v415, v416, v417, v437, v440);
  if (v22)
  {

    sub_22BE3C9DC();
    sub_22BE1AE58();
    sub_22BE1AE58();
    sub_22BE39EAC();
LABEL_45:
    sub_22BE1AE58();
  }

  else
  {
    v419 = *(v408 + *(v407 + 28));

    sub_22C1C0A8C(v420, v421, v422, v423, v424, v425, v426, v427, v438, v441, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451);
    v429 = v428;
    v430 = type metadata accessor for TranscriptProtoStructuredSearchExpression(0);
    sub_22BE46004(v430);
    sub_22C2725A4();
    sub_22BE1A140();
    sub_22C25AE64(v431, v432, v433, v434);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE1AE58();
    sub_22BE35838();
    sub_22BE1AE58();
    *v439 = v231;
    sub_22BE2343C();
    v439[1] = v429;
    v23 = v468;
    swift_storeEnumTagMultiPayload();
    sub_22BE37A20();
    v418 = v439;
LABEL_48:
    sub_22BE3B620(v418, v467);
LABEL_39:
    v384 = v469;
    v385 = sub_22BE38960();
    v388 = sub_22C18F17C(v385, v386, v387, v23);
    v389 = type metadata accessor for TranscriptProtoExpression(v388);
    sub_22BE48874(v389);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE3C9DC();
    sub_22BE1AE58();
    sub_22BE233E8(v384, &qword_27D90EEA0, &qword_22C2970E0);
    sub_22BE37A20();
    v390 = sub_22BE39EAC();
    sub_22BE3B620(v390, v391);
    v392 = sub_22BE2500C();
    sub_22BE19DC4(v392, v393, v394, v23);
  }

  sub_22BE35D48();
  sub_22BE18478();
}

void TranscriptProtoValueExpression.init(handwritten:)()
{
  sub_22BE19460();
  sub_22BE28CF0();
  v78 = sub_22C26E684();
  v4 = sub_22BE179D8(v78);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE28A70(v9, v72);
  v11 = MEMORY[0x28223BE20](v10);
  sub_22C10887C(v11, v12, v13, v14, v15, v16, v17, v18, v73);
  v19 = type metadata accessor for TranscriptProtoStatementID(0);
  v20 = sub_22BE179D8(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22BE3C444(v23, v74);
  v24 = type metadata accessor for TranscriptProtoValueExpressionEnum(0);
  v25 = sub_22BE18000(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22BE18928();
  MEMORY[0x28223BE20](v28);
  sub_22BE181E4();
  v29 = *v0;
  v30 = *(v0 + 8);
  switch(*(v0 + 16))
  {
    case 1:
    case 2:
      *v2 = v29;
      sub_22BE1B328();
      goto LABEL_12;
    case 3:
    case 5:
      *v2 = v29;
      v2[1] = v30;
      sub_22BE1B328();
      goto LABEL_12;
    case 4:
      v31 = *(v29 + 16);
      v32 = MEMORY[0x277D84F90];
      if (v31)
      {
        v75 = *(v0 + 8);
        v81 = MEMORY[0x277D84F90];
        v33 = sub_22C18E984();
        sub_22BE705F4(v33, v34, v35);
        v32 = v81;
        v37 = *(v6 + 16);
        v36 = v6 + 16;
        v38 = *(v36 + 64);
        sub_22BE19E14();
        v40 = v29 + v39;
        v76 = *(v36 + 56);
        v77 = v41;
        do
        {
          v80 = v31;
          v42 = sub_22BE3C968();
          v77(v42);
          v43 = sub_22BE3E8FC();
          v77(v43);
          v44 = sub_22C26E674();
          sub_22C26E654();
          sub_22C1CF16C();
          sub_22C25AD94();
          _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
          v45 = *(v36 - 8);
          v46 = sub_22BE27A44();
          v45(v46);
          v47 = sub_22BE1824C();
          v45(v47);
          *v79 = v44;
          *(v79 + 8) = v77;
          *(v79 + 16) = v29;
          v29 = *(v81 + 16);
          v48 = *(v81 + 24);
          if (v29 >= v48 >> 1)
          {
            sub_22BE1AAE4(v48);
            sub_22BE447E4();
            sub_22BE705F4(v52, v53, v54);
          }

          *(v81 + 16) = v29 + 1;
          sub_22BE25AD8();
          v50 = *(v49 + 72);
          sub_22BE3B168();
          sub_22BE3B620(v79, v51);
          v40 += v76;
          --v31;
        }

        while (v80 != 1);
      }

      v67 = type metadata accessor for TranscriptProtoValueExpressionArrayVariant(0);
      sub_22BE34080(v67);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v68 = sub_22BE289D8();
      sub_22BECD0DC(v68, v69, 4);
      *v3 = v32;
      sub_22BE1B5E0();
      swift_storeEnumTagMultiPayload();
      sub_22BE20130();
      v70 = sub_22BE33560();
      sub_22BE3B620(v70, v71);
      goto LABEL_13;
    case 6:
      sub_22BE1B328();
      goto LABEL_12;
    default:
      *v2 = v29 & 1;
      sub_22BE1B328();
LABEL_12:
      swift_storeEnumTagMultiPayload();
LABEL_13:
      sub_22C259804();
      v59 = sub_22C18F17C(v55, v56, v57, v58);
      v60 = type metadata accessor for TranscriptProtoValueExpression(v59);
      sub_22BE38954(v60);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE233E8(v1, &qword_27D90EEC0, &qword_22C2970F0);
      sub_22BE20130();
      v61 = sub_22BE431C0();
      sub_22BE3B620(v61, v62);
      sub_22C2597C4();
      sub_22BE19DC4(v63, v64, v65, v66);
      sub_22BE1AABC();
      return;
  }
}

void TranscriptProtoPrefixExpression.init(handwritten:)()
{
  sub_22BE19460();
  v6 = v5;
  sub_22BE1A5E4();
  v7 = sub_22C26E684();
  v8 = sub_22C2594A0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE2379C();
  v13 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v13);
  v15 = *(v14 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  sub_22BE1B01C();
  v33 = *v6;
  v17 = type metadata accessor for PrefixExpression(0);
  (*(v10 + 16))(v1, &v6[*(v17 + 20)], v3);
  v18 = sub_22C26E674();
  v19 = sub_22C26E654();
  v20 = sub_22C25A77C();
  v21 = type metadata accessor for TranscriptProtoStatementID(v20);
  sub_22C25A4E8(v21);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v22 = *(v10 + 8);
  v23 = sub_22BE1B73C();
  v24(v23);
  *v2 = v18;
  *(v2 + 8) = v19;
  *(v2 + 16) = v4;
  v25 = sub_22BE22B8C();
  v28 = sub_22C18F17C(v25, v26, v27, v21);
  LODWORD(v10) = *(type metadata accessor for TranscriptProtoPrefixExpression(v28) + 20);
  sub_22C259804();
  sub_22C25ACD8(v29, v30, v31, v32);
  sub_22C0E9918();
  sub_22BE1AE58();
  *v0 = v33;
  sub_22BE2343C();
  sub_22BE1AABC();
}

void TranscriptProtoInfixExpression.init(handwritten:)()
{
  sub_22BE19460();
  v5 = v4;
  sub_22BE2054C(v6);
  v7 = sub_22C26E684();
  v8 = sub_22BE179D8(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE2379C();
  v13 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v14 = sub_22BE19448(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BE192E0();
  MEMORY[0x28223BE20](v17);
  sub_22BE2EDB8();
  v54 = *v5;
  v18 = type metadata accessor for InfixExpression(0);
  v19 = *(v18 + 20);
  v52 = *(v10 + 16);
  v53 = v18;
  v20 = sub_22C25A794();
  v21(v20);
  v22 = sub_22C26E674();
  v23 = sub_22C26E654();
  v25 = v24;
  v26 = type metadata accessor for TranscriptProtoStatementID(0);
  sub_22C25A414(v26);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v51 = *(v10 + 8);
  v27 = sub_22BE31038();
  v28(v27);
  *v2 = v22;
  *(v2 + 8) = v23;
  *(v2 + 16) = v25;
  v29 = sub_22C25974C();
  sub_22BE19DC4(v29, v30, v31, v3);
  v32 = *(v53 + 24);
  v33 = sub_22C25A794();
  v52(v33);
  LODWORD(v25) = sub_22C26E674();
  sub_22C26E654();
  sub_22C1163A0();
  v34 = v1 + *(v3 + 24);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v35 = sub_22BE31038();
  v51(v35);
  *v1 = v25;
  *(v1 + 8) = v22;
  *(v1 + 16) = v23;
  v36 = sub_22BE22B8C();
  v39 = sub_22C18F17C(v36, v37, v38, v3);
  v40 = type metadata accessor for TranscriptProtoInfixExpression(v39);
  sub_22C25ACB4(v40);
  sub_22C25975C();
  sub_22BE19DC4(v41, v42, v43, v44);
  v45 = *(v0 + 24);
  sub_22C25975C();
  sub_22BE19DC4(v46, v47, v48, v49);
  v50 = &v55[*(v0 + 28)];
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE3E76C();
  sub_22BE1AE58();
  *v55 = v54;
  sub_22BE2343C();
  sub_22BE2EDC8();
  sub_22BE2343C();
  sub_22BE1AABC();
}

void TranscriptProtoIndexExpression.init(handwritten:)()
{
  sub_22BE19460();
  v6 = v5;
  v52 = v7;
  v8 = sub_22C26E684();
  v9 = sub_22BE179D8(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BE2379C();
  v14 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v15 = sub_22BE19448(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BE192E0();
  MEMORY[0x28223BE20](v18);
  sub_22BE2EDB8();
  v51 = *(v11 + 16);
  v19 = sub_22BE1A8C4();
  v20(v19);
  v21 = sub_22C26E674();
  sub_22C26E654();
  sub_22C1163A0();
  v22 = type metadata accessor for TranscriptProtoStatementID(0);
  sub_22C25A414(v22);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v23 = *(v11 + 8);
  v24 = sub_22BE31038();
  v25(v24);
  *v3 = v21;
  *(v3 + 8) = v6;
  *(v3 + 16) = v1;
  v26 = sub_22C25974C();
  v29 = sub_22C18F17C(v26, v27, v28, v4);
  v30 = *(type metadata accessor for IndexExpression(v29) + 20);
  v31 = sub_22C25A794();
  v51(v31);
  LODWORD(v6) = sub_22C26E674();
  v32 = sub_22C26E654();
  v34 = v33;
  v35 = v2 + *(v4 + 24);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v36 = sub_22BE31038();
  v23(v36);
  *v2 = v6;
  *(v2 + 8) = v32;
  *(v2 + 16) = v34;
  v37 = sub_22BE22B8C();
  sub_22BE19DC4(v37, v38, v39, v4);
  sub_22C25975C();
  v44 = sub_22C18F17C(v40, v41, v42, v43);
  v45 = type metadata accessor for TranscriptProtoIndexExpression(v44);
  sub_22C25ACB4(v45);
  sub_22C25975C();
  sub_22BE19DC4(v46, v47, v48, v49);
  v50 = v52 + *(v0 + 24);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE1AE58();
  sub_22BE2343C();
  sub_22BE2EDC8();
  sub_22BE2343C();
  sub_22BE1AABC();
}

void TranscriptProtoUpdateParametersExpression.init(handwritten:)()
{
  sub_22BE19460();
  v6 = v5;
  sub_22BE417A8(v7);
  updated = type metadata accessor for UpdateParametersExpression.UpdateParameter(0);
  v8 = sub_22BE179D8(updated);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE17B98();
  v82 = v11;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v12);
  sub_22BE19E94();
  v83 = v13;
  v14 = sub_22BE183BC();
  v15 = type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(v14);
  v81 = sub_22BE179D8(v15);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v81);
  sub_22BE38390();
  v18 = sub_22C26E684();
  v19 = sub_22C259488(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22BE28FD8();
  v24 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v25 = sub_22BE19448(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22BE17B98();
  v78 = v28;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v29);
  sub_22BE181E4();
  sub_22C25A068();
  v30 = sub_22BE37B20();
  v77 = v31;
  (v31)(v30);
  v32 = sub_22C26E674();
  v33 = sub_22C26E654();
  v34 = sub_22BE32C3C();
  v35 = type metadata accessor for TranscriptProtoStatementID(v34);
  sub_22C25A840(v35);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v79 = v4;
  v80 = v2;
  v76 = *(v21 + 8);
  v76(v4, v2);
  *v3 = v32;
  *(v3 + 8) = v33;
  *(v3 + 16) = v0;
  v36 = sub_22BE3C530();
  v85 = v35;
  v39 = sub_22C18F17C(v36, v37, v38, v35);
  v40 = *(v6 + *(type metadata accessor for UpdateParametersExpression(v39) + 20));
  v41 = *(v40 + 16);
  v42 = MEMORY[0x277D84F90];
  if (v41)
  {
    v92 = MEMORY[0x277D84F90];
    sub_22BE7064C(0, v41, 0);
    v42 = v92;
    sub_22BE25AD8();
    v44 = v40 + v43;
    v75 = *(v45 + 72);
    do
    {
      v90 = v41;
      v91 = v42;
      v89 = v44;
      sub_22BE1AA68(v44, v83);
      v46 = sub_22BE22DF4();
      sub_22BE1AA68(v46, v47);
      v88 = *v82;
      v86 = v82[1];
      v87 = *(v82 + 25);
      v77(v79, v82 + *(updated + 28), v80);

      v48 = sub_22C26E674();
      sub_22C26E654();
      sub_22BE29328();
      v49 = v1;
      v50 = v78 + *(v85 + 24);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v51 = sub_22BE33FCC();
      (v76)(v51);
      *v78 = v48;
      *(v78 + 8) = v79;
      *(v78 + 16) = v40;
      v52 = sub_22BE22B8C();
      sub_22BE19DC4(v52, v53, v54, v85);
      v55 = v82[2];
      v56 = *(v82 + 24);
      if (v56)
      {
        v57 = 0;
      }

      else
      {
        v57 = v82[2];
      }

      v58 = v81[6];
      sub_22BE1A140();
      sub_22BE19DC4(v59, v60, v61, v85);
      v62 = v81[8];
      v63 = v1 + v81[7];
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE1AE58();
      sub_22BE431C0();
      sub_22BE1AE58();
      *v49 = v88;
      *(v49 + 8) = v86;
      *(v49 + 16) = v87;
      sub_22BE2343C();
      *v63 = v57;
      v42 = v91;
      *(v63 + 8) = v56;
      v40 = *(v91 + 16);
      v64 = *(v91 + 24);
      if (v40 >= v64 >> 1)
      {
        v68 = sub_22BE1AAE4(v64);
        sub_22BE7064C(v68, v40 + 1, 1);
        v42 = v91;
      }

      *(v42 + 16) = v40 + 1;
      sub_22BE25AD8();
      sub_22BE46DDC(v42 + v65);
      v66 = sub_22C259FB8();
      sub_22BE3B620(v66, v67);
      v44 = v89 + v75;
      --v41;
      v1 = v49;
    }

    while (v90 != 1);
    v69 = v74;
  }

  else
  {
    v69 = v74;
  }

  v70 = type metadata accessor for TranscriptProtoUpdateParametersExpression(0);
  sub_22C25ACA8(v70);
  sub_22BE1A140();
  sub_22C25ACD8(v71, v72, v73, v85);
  sub_22BE3ACD8();
  sub_22BE1AE58();
  sub_22BE2343C();
  *v69 = v42;
  sub_22BE1AABC();
}

void TranscriptProtoCallExpression.init(handwritten:)()
{
  sub_22BE19460();
  v1 = v0;
  v68 = v2;
  v3 = type metadata accessor for TranscriptProtoStatementID(0);
  v4 = sub_22BE179D8(v3);
  v75 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE17A44();
  sub_22C259A68(v8);
  v73 = sub_22C26E684();
  v9 = sub_22BE179D8(v73);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v14);
  sub_22BE19E94();
  v70 = v15;
  v16 = sub_22BE5CE4C(&qword_27D90E670, &unk_22C2CC890);
  sub_22BE19448(v16);
  v18 = *(v17 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  sub_22BE1A174();
  v67 = v20;
  v65 = v1[1];
  v66 = *v1;
  v64 = v1[2];
  sub_22BE36638(v1[3]);
  v62 = *(v1 + 32);
  v21 = v1[5];
  sub_22BE5CE4C(&qword_27D915600, &unk_22C2CC8E0);
  v22 = sub_22C273D04();
  v23 = 0;
  v24 = *(v21 + 64);
  v25 = *(v21 + 32);
  sub_22BE26A98();
  v27 = v26 >> 6;
  v71 = v28;
  v72 = v11;
  v69 = v11 + 2;
  if (v29)
  {
    while (1)
    {
      sub_22BE22BE8();
      v76 = v31;
LABEL_8:
      v34 = v30 | (v23 << 6);
      v35 = (*(v21 + 48) + 16 * v34);
      v36 = v35[1];
      v78 = *v35;
      v37 = v72[2];
      v37(v70, *(v21 + 56) + v72[9] * v34, v73);
      v38 = sub_22BE31038();
      (v37)(v38);

      v77 = sub_22C26E674();
      sub_22C26E654();
      sub_22C1163A0();
      sub_22C25AD94();
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v39 = v72[1];
      v40 = sub_22BE18040();
      v39(v40);
      (v39)(v70, v73);
      *v74 = v77;
      *(v74 + 8) = v69;
      *(v74 + 16) = v36;
      sub_22BE270BC();
      sub_22C25977C(v41);
      v22 = v71;
      v42 = (v71[6] + 16 * v34);
      *v42 = v78;
      v42[1] = v36;
      v43 = v71[7];
      v44 = *(v75 + 72);
      sub_22BE3B168();
      sub_22BE3B620(v74, v45);
      v46 = v71[2];
      v47 = __OFADD__(v46, 1);
      v48 = v46 + 1;
      if (v47)
      {
        break;
      }

      v71[2] = v48;
      if (!v76)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v32 = v23;
    while (1)
    {
      v23 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v23 >= v27)
      {
        v49 = *(type metadata accessor for TranscriptProtoGlobalToolIdentifier(0) + 28);
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();

        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        *v67 = v66;
        *(v67 + 8) = v65;
        sub_22C1CF2AC();
        *(v67 + 24) = v50;
        *(v67 + 32) = v63;
        *(v67 + 16) = v62;
        v51 = sub_22C259724();
        v55 = sub_22C18F17C(v51, v52, v53, v54);
        v56 = type metadata accessor for TranscriptProtoCallExpression(v55);
        sub_22C25ACA8(v56);
        sub_22BE32EE0();
        sub_22BE19DC4(v57, v58, v59, v60);
        v61 = v68 + *(v49 + 24);
        _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
        *v68 = v22;
        sub_22BE2343C();
        sub_22BE1AABC();
        return;
      }

      ++v32;
      if (*(v21 + 64 + 8 * v23))
      {
        sub_22BE4878C();
        v76 = v33;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_22C237BD8()
{
  sub_22BE19460();
  v41 = v4;
  v6 = v5;
  sub_22BE1A5E4();
  v7 = sub_22C26E684();
  v8 = sub_22BE41130(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE25544();
  MEMORY[0x28223BE20](v13);
  sub_22BE1C17C();
  v14 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  sub_22BE19448(v14);
  v16 = *(v15 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  sub_22BE23E58();
  v18 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v18);
  v20 = *(v19 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v21);
  sub_22BE234F4();
  sub_22BE289C0();
  sub_22BE22814();
  if (sub_22BE1AEA8(v3, 1, v0) == 1)
  {
    v3 = type metadata accessor for TranscriptProtoStatementID(0);
    v22 = sub_22BFB1A7C();
  }

  else
  {
    sub_22BE286F0();
    v24 = sub_22BE289D8();
    v25(v24);
    v26 = sub_22C259D90();
    v27(v26, v2, v0);
    v40 = sub_22C26E674();
    v28 = sub_22C26E654();
    v29 = sub_22C25A788();
    v30 = type metadata accessor for TranscriptProtoStatementID(v29);
    sub_22C25A414(v30);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v31 = *(v10 + 8);
    v32 = sub_22BE27A44();
    v31(v32);
    v33 = sub_22BE194C4();
    v31(v33);
    *v1 = v40;
    *(v1 + 8) = v28;
    *(v1 + 16) = v6;
    v22 = v1;
    v23 = 0;
  }

  v34 = sub_22C18F17C(v22, v23, 1, v3);
  type metadata accessor for TranscriptProtoStatementID(v34);
  v35 = sub_22BE38960();
  v38 = sub_22C18F17C(v35, v36, v37, v3);
  v39 = v41(v38);
  sub_22BE48874(v39);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE1AE58();
  sub_22BE39EAC();
  sub_22BE2343C();
  sub_22BE1AABC();
}

void TranscriptProtoPickExpression.init(handwritten:)()
{
  sub_22BE19460();
  v5 = v4;
  sub_22BE1A5E4();
  v6 = sub_22C26E684();
  v7 = sub_22C2594A0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE2379C();
  v12 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v12);
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE1B01C();
  v16 = sub_22BE37EE0();
  v17(v16, v5, v2);
  v18 = sub_22C26E674();
  v19 = sub_22C26E654();
  v20 = sub_22C25A77C();
  v21 = type metadata accessor for TranscriptProtoStatementID(v20);
  sub_22C25A4E8(v21);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v22 = *(v9 + 8);
  v23 = sub_22BE1B73C();
  v24(v23);
  *v1 = v18;
  *(v1 + 8) = v19;
  *(v1 + 16) = v3;
  v25 = sub_22BE22B8C();
  v28 = sub_22C18F17C(v25, v26, v27, v21);
  v29 = *(v5 + *(type metadata accessor for PickExpression(v28) + 20));
  v30 = *(type metadata accessor for TranscriptProtoPickExpression(0) + 20);
  sub_22C259804();
  sub_22C25ACD8(v31, v32, v33, v34);
  sub_22C0E9918();
  sub_22BE1AE58();
  sub_22BE2343C();
  *v0 = v29;
  sub_22BE1AABC();
}

void sub_22C237FF4()
{
  sub_22BE19460();
  v30 = v4;
  sub_22C259D80();
  v5 = sub_22C26E684();
  v6 = sub_22BE179D8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE2379C();
  v11 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v11);
  v13 = *(v12 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE23E58();
  v15 = sub_22BE37EE0();
  v16(v15, v0, v5);
  v17 = sub_22C26E674();
  sub_22C26E654();
  sub_22C25A2F0();
  v18 = type metadata accessor for TranscriptProtoStatementID(0);
  sub_22C25A5EC(v18);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v19 = *(v8 + 8);
  v20 = sub_22BE31038();
  v21(v20);
  *v3 = v17;
  *(v3 + 8) = v1;
  *(v3 + 16) = v2;
  v22 = sub_22BE360A0();
  sub_22BE19DC4(v22, v23, v24, v18);
  v25 = sub_22BE38960();
  v28 = sub_22C18F17C(v25, v26, v27, v18);
  v29 = v30(v28);
  sub_22BE48874(v29);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE1AE58();
  sub_22BE3C968();
  sub_22BE2343C();
  sub_22BE1AABC();
}

uint64_t TranscriptProtoSearchExpression.init(handwritten:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  v6 = *(a1 + 17);
  v7 = *(a1 + 18);
  v8 = a2 + *(type metadata accessor for TranscriptProtoSearchExpression(0) + 32);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 17) = v6;
  *(a2 + 18) = v7;
  return result;
}

void TranscriptProtoStructuredSearchExpression.init(handwritten:)()
{
  sub_22BE19130();
  v3 = v2;
  sub_22BE417A8(v4);
  v5 = type metadata accessor for TranscriptProtoStatementID(0);
  v6 = sub_22BE179D8(v5);
  v109 = v7;
  v110 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE17A44();
  sub_22BE3C768(v10);
  v107 = sub_22C26E684();
  v11 = sub_22BE179D8(v107);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v16);
  sub_22BE3173C(v17, v18, v19, v20, v21, v22, v23, v24, v92);
  v25 = sub_22BE5CE4C(&qword_27D9092E8, &qword_22C288A90);
  sub_22BE19448(v25);
  v27 = *(v26 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v28);
  sub_22BE1A174();
  v98 = v29;
  v30 = sub_22BE5CE4C(&qword_27D90C138, &qword_22C2CB830);
  sub_22BE19448(v30);
  v32 = *(v31 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v33);
  sub_22BE1A174();
  v99 = v34;
  v100 = v3;
  v35 = *v3;
  sub_22BE5CE4C(&qword_27D915600, &unk_22C2CC8E0);
  sub_22BE3D3E0();
  v36 = sub_22C273D04();
  v37 = 0;
  sub_22C25A43C();
  v102 = v38;
  v39 = *(v35 + 32);
  sub_22BE26A98();
  v101 = v40 >> 6;
  v104 = v35;
  v106 = v41;
  v103 = (v41 + 8);
  if (v42)
  {
    while (1)
    {
      sub_22BE22BE8();
      v111 = v44;
LABEL_8:
      v47 = v43 | (v37 << 6);
      v48 = (*(v104 + 48) + 16 * v47);
      v114 = *v48;
      v113 = v48[1];
      v49 = v13[2];
      v49(v105, *(v104 + 56) + v13[9] * v47, v107);
      v50 = sub_22BE336E8();
      (v49)(v50);

      v112 = sub_22C26E674();
      v51 = sub_22C26E654();
      v53 = v52;
      v54 = v108 + *(v110 + 24);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v55 = v13[1];
      v56 = sub_22BE1B73C();
      v0 = v13 + 1;
      v55(v56);
      *v108 = v112;
      *(v108 + 8) = v51;
      *(v108 + 16) = v53;
      v57 = sub_22BE3AF28();
      v55(v57);
      sub_22BE270BC();
      sub_22C25977C(v58);
      v36 = v106;
      sub_22C25ADB4(v106[6]);
      v59 = v106[7];
      v60 = *(v109 + 72);
      sub_22BE3B168();
      sub_22BE3B620(v108, v61);
      sub_22C25AB9C();
      if (v63)
      {
        break;
      }

      v106[2] = v62;
      if (!v111)
      {
        goto LABEL_3;
      }
    }

LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_3:
    v45 = v37;
    while (1)
    {
      v37 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        __break(1u);
        goto LABEL_16;
      }

      if (v37 >= v101)
      {
        break;
      }

      ++v45;
      if (*(v102 + 8 * v37))
      {
        sub_22BE4878C();
        v111 = v46;
        goto LABEL_8;
      }
    }

    v64 = type metadata accessor for StructuredSearchExpression(0);
    sub_22C25A530(v64);
    sub_22C25AAA0();
    sub_22BE22814();
    v65 = sub_22C25A718();
    sub_22C105B04(v65, v66, v67, v68, v69, v70, v71, v72, v93, v95);
    if (v1)
    {
      sub_22BE291DC();
      sub_22BE1AE58();
    }

    else
    {
      v73 = *(v100 + *(v0 + 7));

      sub_22C1C0A8C(v74, v75, v76, v77, v78, v79, v80, v81, v94, v96, v98, v99, 0, v100, v101, v102, v103, (v13 + 1), (v13 + 2), v104);
      v83 = v82;
      v84 = v36;
      v85 = type metadata accessor for TranscriptProtoStructuredSearchExpression(0);
      v86 = *(v85 + 24);
      sub_22C2725A4();
      sub_22BE1A140();
      sub_22BE19DC4(v87, v88, v89, v90);
      v91 = v97 + *(v85 + 28);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE291DC();
      sub_22BE1AE58();
      *v97 = v84;
      sub_22BE2343C();
      v97[1] = v83;
    }

    sub_22BE22978();
    sub_22BE18478();
  }
}

uint64_t TranscriptProtoResolveToolExpression.init(handwritten:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_22C1EE9C4(*a1);

  v4 = type metadata accessor for TranscriptProtoResolveToolExpression(0);
  sub_22BE48874(v4);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *a2 = v3;
  return result;
}

void sub_22C238770()
{
  sub_22BE19460();
  v3 = v2;
  sub_22BE28CF0();
  v56 = sub_22C26E684();
  v4 = sub_22BE179D8(v56);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE28A70(v9, v49);
  v11 = MEMORY[0x28223BE20](v10);
  sub_22C10887C(v11, v12, v13, v14, v15, v16, v17, v18, v50);
  v19 = type metadata accessor for TranscriptProtoStatementID(0);
  v20 = sub_22BE179D8(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22BE3C444(v23, v51);
  v24 = *v0;
  v25 = *(v24 + 16);
  if (v25)
  {
    v52 = v3;
    v58 = MEMORY[0x277D84F90];
    v26 = sub_22C18E984();
    sub_22BE705F4(v26, v27, v28);
    v29 = v58;
    v31 = *(v6 + 16);
    v30 = v6 + 16;
    v32 = *(v30 + 64);
    sub_22BE19E14();
    v34 = v24 + v33;
    v53 = *(v30 + 56);
    v54 = v35;
    v55 = v30;
    v36 = (v30 - 8);
    do
    {
      v37 = sub_22BE1B074();
      v54(v37);
      v38 = sub_22BE261AC();
      v54(v38);
      v39 = sub_22C26E674();
      sub_22C26E654();
      sub_22C25A2F0();
      sub_22C25AD94();
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v40 = *v36;
      v41 = sub_22BE336E8();
      v40(v41);
      v42 = sub_22BE2684C();
      v40(v42);
      *v57 = v39;
      *(v57 + 8) = v54;
      *(v57 + 16) = v30;
      v44 = *(v58 + 16);
      v43 = *(v58 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_22BE705F4(v43 > 1, v44 + 1, 1);
      }

      *(v58 + 16) = v44 + 1;
      sub_22BE25AD8();
      v46 = *(v45 + 72);
      sub_22BE3B168();
      sub_22BE3B620(v57, v47);
      v34 += v53;
      --v25;
      v30 = v55;
    }

    while (v25);

    v48 = v52(0);
  }

  else
  {

    v29 = MEMORY[0x277D84F90];
    v48 = v3(0);
  }

  sub_22BE38954(v48);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v1 = v29;
  sub_22BE1AABC();
}

uint64_t TranscriptProtoFormatExpression.init(handwritten:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  sub_22C1C1424(*a1, a2, a3, a4, a5, a6, a7, a8, v14, v15);
  v11 = sub_22BE23C8C();
  v12 = type metadata accessor for TranscriptProtoFormatExpression(v11);
  sub_22BE48874(v12);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *a9 = v9;
  return result;
}

void sub_22C238A80()
{
  sub_22BE19460();
  v1 = v0;
  sub_22BE308C4();
  v2 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  sub_22BE19448(v2);
  v4 = *(v3 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE23E58();
  v6 = sub_22BE1B18C();
  v8 = sub_22BE5CE4C(v6, v7);
  sub_22BE19448(v8);
  v10 = *(v9 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE2C64C();
  sub_22BE3911C();
  sub_22BE22814();
  sub_22BE46914();
  type metadata accessor for TranscriptProtoStatementID(0);
  v12 = sub_22BE38960();
  v16 = sub_22C18F17C(v12, v13, v14, v15);
  v17 = v1(v16);
  sub_22BE48874(v17);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE3C5E4();
  sub_22BE1AE58();
  sub_22BE1B074();
  sub_22C25AA5C();
  sub_22BE2343C();
  sub_22BE1AABC();
}

void TranscriptProtoUserConfirmExpression.init(handwritten:)()
{
  sub_22BE19460();
  v3 = v2;
  v5 = v4;
  v6 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  sub_22BE19448(v6);
  v8 = *(v7 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE25334();
  v10 = sub_22C26E684();
  v11 = sub_22BE179D8(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BE2379C();
  v16 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v17 = sub_22BE19448(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BE17B98();
  sub_22BE2BCB4();
  MEMORY[0x28223BE20](v20);
  sub_22BE23B44();
  MEMORY[0x28223BE20](v21);
  sub_22BE32374();
  v22 = sub_22C259E4C();
  v23(v22, v3, v10);
  v24 = sub_22C26E674();
  v25 = sub_22C26E654();
  v26 = sub_22C25A4AC();
  v27 = type metadata accessor for TranscriptProtoStatementID(v26);
  sub_22C25A5EC(v27);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v28 = *(v13 + 8);
  v29 = sub_22BE18040();
  v30(v29);
  *v1 = v24;
  *(v1 + 8) = v25;
  *(v1 + 16) = v3;
  v31 = sub_22BE360A0();
  v34 = sub_22C18F17C(v31, v32, v33, v27);
  v35 = type metadata accessor for UserConfirmExpression(v34);
  sub_22C25A530(v35);
  sub_22BE22814();
  sub_22BE46914();
  v36 = *(v0 + 24);
  sub_22BE22814();
  sub_22C25A338();
  sub_22BE46914();
  v37 = sub_22BE38960();
  v40 = sub_22C18F17C(v37, v38, v39, v27);
  v41 = type metadata accessor for TranscriptProtoUserConfirmExpression(v40);
  sub_22C25ACA8(v41);
  sub_22BE3AE2C();
  sub_22BE19DC4(v42, v43, v44, v45);
  v46 = *(v0 + 24);
  sub_22BE3AE2C();
  sub_22BE19DC4(v47, v48, v49, v50);
  v51 = v5 + *(v0 + 28);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C0E9848();
  sub_22BE1AE58();
  sub_22BE3C968();
  sub_22BE2343C();
  sub_22BE2343C();
  sub_22BE2343C();
  sub_22BE1AABC();
}

void TranscriptProtoUserDisambiguateExpression.init(handwritten:)()
{
  sub_22BE19460();
  v4 = v3;
  v60 = v5;
  v6 = type metadata accessor for TranscriptProtoStatementID(0);
  v7 = sub_22BE1A3D8(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE19820();
  v10 = sub_22C26E684();
  v11 = sub_22C259488(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BE17B98();
  sub_22C259D70();
  MEMORY[0x28223BE20](v16);
  sub_22BE324EC();
  v17 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v17);
  v19 = *(v18 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  sub_22BE1A8B4();
  sub_22C25A068();
  v21 = sub_22C259FF4();
  v64 = v22;
  v22(v21);
  v23 = sub_22C26E674();
  v24 = sub_22C26E654();
  v26 = v25;
  v27 = v2 + *(v0 + 24);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v28 = *(v13 + 8);
  v29 = sub_22BE3CEF4();
  v62 = v30;
  v30(v29);
  *v2 = v23;
  *(v2 + 8) = v24;
  *(v2 + 16) = v26;
  v31 = sub_22BE33C68();
  v65 = v0;
  v34 = sub_22C18F17C(v31, v32, v33, v0);
  v35 = *(v4 + *(type metadata accessor for UserDisambiguateExpression(v34) + 20));
  v36 = *(v35 + 16);
  v37 = MEMORY[0x277D84F90];
  if (v36)
  {
    v67 = MEMORY[0x277D84F90];
    v38 = sub_22C18E984();
    sub_22BE705F4(v38, v39, v40);
    v37 = v67;
    sub_22BE25AD8();
    v35 += v41;
    v61 = *(v42 + 72);
    do
    {
      v66 = v36;
      v43 = sub_22BE39EAC();
      v64(v43);
      v44 = sub_22C259FF4();
      v64(v44);
      v45 = sub_22C26E674();
      sub_22C26E654();
      sub_22BE29328();
      v46 = v1 + *(v65 + 24);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v47 = sub_22BE191C0();
      v62(v47);
      v48 = sub_22BE33B3C();
      v62(v48);
      *v1 = v45;
      *(v1 + 8) = v63;
      *(v1 + 16) = v64;
      v50 = *(v67 + 16);
      v49 = *(v67 + 24);
      if (v50 >= v49 >> 1)
      {
        v53 = sub_22BE1AAE4(v49);
        sub_22BE705F4(v53, v50 + 1, 1);
      }

      *(v67 + 16) = v50 + 1;
      sub_22BE25AD8();
      sub_22BE46DDC(v67 + v51);
      sub_22BE3B168();
      sub_22BE3B620(v1, v52);
      v35 += v61;
      --v36;
    }

    while (v66 != 1);
    v54 = v60;
  }

  else
  {
    v54 = v60;
  }

  v55 = type metadata accessor for TranscriptProtoUserDisambiguateExpression(0);
  sub_22C25A7AC(v55);
  sub_22BE1A140();
  sub_22BE19DC4(v56, v57, v58, v65);
  v59 = v54 + *(v35 + 24);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE291DC();
  sub_22BE1AE58();
  sub_22BE2343C();
  *v54 = v37;
  sub_22BE1AABC();
}

void TranscriptProtoAnswerSynthesisExpression.init(handwritten:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v26;
  a20 = v27;
  v29 = v28;
  v113 = v28;
  v30 = sub_22BE5CE4C(&qword_27D909158, &qword_22C27FD50);
  sub_22BE19448(v30);
  v32 = *(v31 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v33);
  v35 = sub_22C25984C(v34);
  v127 = type metadata accessor for AnswerSynthesisExpression.ExtractionCandidate(v35);
  v36 = sub_22BE179D8(v127);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  sub_22BE1958C();
  MEMORY[0x28223BE20](v39);
  sub_22BE19E94();
  v41 = sub_22C259814(v40);
  v42 = type metadata accessor for TranscriptProtoAnswerSynthesisExtractionCandidate(v41);
  v128 = sub_22BE179D8(v42);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v128);
  sub_22BE29178(v45, v112);
  MEMORY[0x28223BE20](v46);
  sub_22BE374E4();
  v47 = sub_22C26E684();
  v48 = sub_22BE41130(v47);
  v50 = v49;
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v48);
  sub_22BE17B98();
  sub_22BE43220();
  MEMORY[0x28223BE20](v53);
  sub_22C259BC0();
  v54 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v54);
  v56 = *(v55 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v57);
  sub_22BE234F4();
  sub_22C259E94(v50);
  sub_22C25A368();
  v116 = v58;
  v58();
  v123 = sub_22C26E674();
  v59 = sub_22C26E654();
  v60 = sub_22C25A4AC();
  v61 = type metadata accessor for TranscriptProtoStatementID(v60);
  sub_22C25A414(v61);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v121 = v50;
  v115 = *(v50 + 8);
  v115(v20, v22);
  *v23 = v123;
  *(v23 + 8) = v59;
  *(v23 + 16) = v29;
  sub_22BE187DC();
  v118 = v25;
  v65 = sub_22C18F17C(v62, v63, v64, v25);
  v66 = *(v113 + *(type metadata accessor for AnswerSynthesisExpression(v65) + 20));
  v67 = *(v66 + 16);
  v68 = MEMORY[0x277D84F90];
  if (v67)
  {
    v130 = MEMORY[0x277D84F90];
    sub_22C25A000();
    sub_22C25A930();
    sub_22BE70754(v69, v70, v71);
    v68 = v130;
    sub_22BE25AD8();
    v73 = v66 + v72;
    v124 = *(v74 + 72);
    sub_22BE417A8(v121 + 32);
    v75 = v129;
    v114 = v24;
    v125 = v21;
    do
    {
      sub_22BE1AA68(v73, v75);
      v76 = type metadata accessor for TranscriptProtoAnswerSynthesisExtractionCandidateEnum(0);
      sub_22C259860();
      sub_22BE19DC4(v77, v78, v79, v80);
      v81 = v126 + *(v128 + 20);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v82 = sub_22BE180C8();
      sub_22BE1AA68(v82, v83);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_22BE20118();
        sub_22BE1AE58();
        v84 = *v24;
        v85 = v24[1];
        sub_22BE233E8(v126, &qword_27D909158, &qword_22C27FD50);
        *v126 = v84;
        v126[1] = v85;
        sub_22BE25D0C();
        swift_storeEnumTagMultiPayload();
        v86 = sub_22BE3C530();
        sub_22BE19DC4(v86, v87, v88, v76);
      }

      else
      {
        sub_22BE33554(&a18);
        v89 = sub_22BE1AEE4();
        v90(v89);
        v91 = sub_22BE1B73C();
        (v116)(v91);
        v122 = sub_22C26E674();
        v92 = sub_22C26E654();
        v119 = v93;
        v120 = v92;
        v94 = v117 + *(v118 + 24);
        _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
        v95 = sub_22BE27A44();
        (v115)(v95);
        v96 = sub_22BE18240();
        (v115)(v96);
        sub_22BE1AE58();
        *v117 = v122;
        *(v117 + 8) = v120;
        *(v117 + 16) = v119;
        v75 = v129;
        sub_22BE2BA80();
        swift_storeEnumTagMultiPayload();
        v97 = sub_22BE33C68();
        sub_22BE19DC4(v97, v98, v99, v76);
        v24 = v114;
        sub_22BE2343C();
      }

      v100 = sub_22BE29370();
      v21 = v125;
      sub_22BE3B620(v100, v125);
      v102 = *(v130 + 16);
      v101 = *(v130 + 24);
      if (v102 >= v101 >> 1)
      {
        v107 = sub_22BE3D1E4(v101);
        sub_22BE70754(v107, v102 + 1, 1);
      }

      *(v130 + 16) = v102 + 1;
      sub_22BE25AD8();
      v104 = *(v103 + 72);
      v105 = sub_22BE29370();
      sub_22BE3B620(v105, v106);
      v73 += v124;
      --v67;
    }

    while (v67);
  }

  sub_22C25AC38();
  v108 = type metadata accessor for TranscriptProtoAnswerSynthesisExpression(0);
  sub_22C25A7AC(v108);
  sub_22BE1A140();
  sub_22BE19DC4(v109, v110, v111, v118);
  sub_22C25AB40();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE3C950();
  sub_22BE1AE58();
  sub_22BE2343C();
  *v21 = v68;
  sub_22BE19650();
  sub_22BE18478();
}

void UpdateParametersExpression.UpdateParameter.init(transcript:)()
{
  sub_22BE19130();
  v3 = sub_22C259D80();
  v4 = type metadata accessor for TranscriptProtoStatementID(v3);
  v5 = sub_22BE19448(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE19820();
  v8 = sub_22C26E684();
  v9 = sub_22BE1A3D8(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BE1955C();
  v14 = v1[1];
  v24 = *v1;
  v25 = *(v1 + 16);
  v15 = *(type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(0) + 24);

  sub_22BE3CD7C();
  sub_22C1026C4();
  if (v15)
  {
    sub_22BE379D8();
    sub_22BE1AE58();
  }

  else
  {
    v16 = *v2;
    v17 = v11;
    v18 = *(v2 + 1);
    v19 = *(v2 + 2);

    sub_22C25A1C4();
    sub_22BE289C0();
    sub_22C26E664();
    sub_22BE379D8();
    sub_22BE1AE58();
    sub_22BE18B80();
    sub_22BE1AE58();
    *v0 = v24;
    *(v0 + 8) = v14;
    *(v0 + 16) = 0;
    *(v0 + 24) = 1;
    *(v0 + 25) = v25;
    updated = type metadata accessor for UpdateParametersExpression.UpdateParameter(0);
    v21 = *(v17 + 32);
    v22 = sub_22C25AC20(*(updated + 28));
    v23(v22);
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

void TranscriptProtoUpdateParameterExpression_UpdateParameter.init(handwritten:)()
{
  sub_22BE19460();
  v3 = v2;
  sub_22BE1A5E4();
  v4 = sub_22C26E684();
  v5 = sub_22BE179D8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE2379C();
  v10 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v10);
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE1B01C();
  v14 = v3[1];
  v42 = *v3;
  v40 = v14;
  v41 = *(v3 + 25);
  v15 = *(type metadata accessor for UpdateParametersExpression.UpdateParameter(0) + 28);
  v16 = *(v7 + 16);
  v17 = sub_22C25A794();
  v18(v17);

  v19 = sub_22C26E674();
  v20 = sub_22C26E654();
  v21 = sub_22C25A4AC();
  v22 = type metadata accessor for TranscriptProtoStatementID(v21);
  sub_22C25A4E8(v22);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v23 = *(v7 + 8);
  v24 = sub_22BE31038();
  v25(v24);
  *v1 = v19;
  *(v1 + 8) = v20;
  *(v1 + 16) = v14;
  v26 = sub_22BE22B8C();
  sub_22BE19DC4(v26, v27, v28, v22);
  v29 = v3[2];
  v30 = *(v3 + 24);
  if (v30)
  {
    v31 = 0;
  }

  else
  {
    v31 = v3[2];
  }

  updated = type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(0);
  v33 = updated[6];
  sub_22BE3AE2C();
  sub_22BE19DC4(v34, v35, v36, v37);
  v38 = updated[8];
  v39 = v0 + updated[7];
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C0E9918();
  sub_22BE1AE58();
  *v0 = v42;
  *(v0 + 8) = v40;
  *(v0 + 16) = v41;
  sub_22BE2343C();
  *v39 = v31;
  *(v39 + 8) = v30;
  sub_22BE1AABC();
}

uint64_t sub_22C239E5C()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 32);
  return sub_22C1FD7A4();
}

uint64_t sub_22C239ED8()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  return sub_22C1FD8F8();
}

uint64_t sub_22C23A160()
{
  if (*(v0 + 17))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  v2 = v1 | *(v0 + 16);
  if (*(v0 + 18))
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  return sub_22C1FE3B8(*v0, *(v0 + 8), v2 | v3);
}

void StructuredSearchExpression.StructuredSearchProperty.init(transcript:)()
{
  sub_22BE19460();
  v1 = v0;
  v3 = v2;
  v4 = sub_22BE236C8();
  v6 = sub_22BE5CE4C(v4, v5);
  sub_22BE19448(v6);
  v8 = *(v7 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE1A8B4();
  v10 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  sub_22BE19448(v10);
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE1B01C();
  v14 = *v1;
  v15 = v1[1];
  v16 = v1[2];
  v17 = v1[3];
  v18 = *(type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty(0) + 24);
  sub_22BE22814();

  sub_22C25A894();
  sub_22C0FD140();
  sub_22C0E9830();
  sub_22BE1AE58();
  v19 = *(type metadata accessor for StructuredSearchExpression.StructuredSearchProperty(0) + 24);
  sub_22C26E684();
  sub_22BE1A140();
  sub_22BE19DC4(v20, v21, v22, v23);
  *v3 = v14;
  v3[1] = v15;
  v3[2] = v16;
  v3[3] = v17;
  sub_22BE2343C();
  sub_22BE1AABC();
}

void TranscriptProtoStructuredSearchExpression.StructuredSearchProperty.init(handwritten:)()
{
  sub_22BE19460();
  sub_22C259E88();
  v2 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  sub_22BE19448(v2);
  v4 = *(v3 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE2C64C();
  v6 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v6);
  v8 = *(v7 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE1B01C();
  v10 = *v1;
  v11 = v1[1];
  v12 = v1[2];
  v13 = v1[3];
  v14 = *(type metadata accessor for StructuredSearchExpression.StructuredSearchProperty(0) + 24);
  sub_22BE22814();

  sub_22BE46914();
  v15 = type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty(0);
  v16 = *(v15 + 24);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE1A140();
  sub_22BE19DC4(v17, v18, v19, v20);
  v21 = v0 + *(v15 + 28);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C0E9A74();
  sub_22BE1AE58();
  *v0 = v10;
  v0[1] = v11;
  v0[2] = v12;
  v0[3] = v13;
  sub_22BE2343C();
  sub_22BE1AABC();
}

uint64_t ProgramStatement.ExecutionSupportType.init(transcript:)(unsigned __int8 *a1)
{
  sub_22C259EE8(a1);
  result = sub_22BE1AE58();
  *v1 = v2 & 1;
  return result;
}

uint64_t TranscriptProtoProgramStatement.ExecutionSupportType.init(handwritten:)@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_22BE3859C(2);
  v5 = type metadata accessor for TranscriptProtoProgramStatement.ExecutionSupportType(v4);
  sub_22BE48874(v5);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *a2 = v3;
  return result;
}

void ActionRequirement.init(transcript:)()
{
  sub_22BE19130();
  v5 = sub_22C25A3B4(v4);
  v6 = type metadata accessor for TranscriptProtoPermissionRequirement(v5);
  v7 = sub_22BE19448(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE17B98();
  sub_22BE3E334();
  v11 = MEMORY[0x28223BE20](v10);
  sub_22C259838(v11, v12, v13, v14, v15, v16, v17, v18, v81);
  v19 = type metadata accessor for TranscriptProtoAppRequirement(0);
  v20 = sub_22BE19448(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22BE29178(v23, v82);
  v25 = MEMORY[0x28223BE20](v24);
  sub_22C1CEC08(v25, v26, v27, v28, v29, v30, v31, v32, v83);
  v33 = sub_22C26F8A4();
  v34 = sub_22BE179D8(v33);
  v90 = v35;
  v91 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22BE17B98();
  v85 = v38;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v39);
  sub_22BE426BC();
  MEMORY[0x28223BE20](v40);
  v41 = sub_22BE374E4();
  v42 = type metadata accessor for TranscriptProtoSystemRequirementMessage(v41);
  v43 = sub_22BE19448(v42);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  sub_22BE3C8B8();
  MEMORY[0x28223BE20](v46);
  sub_22C259BC0();
  v47 = sub_22BE180C8();
  v49 = sub_22BE5CE4C(v47, v48);
  sub_22BE19448(v49);
  v51 = *(v50 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v52);
  v53 = sub_22BE28E00();
  v54 = type metadata accessor for TranscriptProtoActionRequirementEnum(v53);
  v55 = sub_22BE18000(v54);
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v55);
  sub_22BE19338();
  sub_22BE426E8();
  sub_22BE22814();
  v58 = sub_22BE3C688();
  sub_22BE1AB5C(v58, v59, v54);
  if (v60)
  {
    sub_22BE233E8(v3, &qword_27D90E848, &qword_22C2AE5C0);
    sub_22BE5CE4C(&qword_27D915658, &qword_22C2CC9E0);
    sub_22BE43258();
    sub_22BE3D554();
    sub_22C108598();
    v61 = sub_22BE196B4();
    sub_22C259EA0(v61, v62);
    sub_22C259470();
LABEL_4:
    sub_22BE1AE58();
  }

  else
  {
    sub_22BE1B820();
    v63 = sub_22BE25C94();
    sub_22BE3B620(v63, v64);
    sub_22BE1B18C();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v74 = sub_22C1088E8();
        sub_22BE3B620(v74, v87);
        v75 = sub_22BE19EBC();
        sub_22BE1AA68(v75, v86);
        v2 = v85;
        v76 = sub_22BE362B8();
        PermissionRequirement.init(transcript:)(v76);
        sub_22C259470();
        sub_22BE1AE58();
        sub_22C259960();
        sub_22BE1AE58();
        if (!v93)
        {
          v73 = MEMORY[0x277D1CC10];
          goto LABEL_13;
        }

        break;
      case 2:
        v71 = sub_22C1088E8();
        sub_22BE3B620(v71, v1);
        v72 = sub_22BE431F0();
        sub_22BE1AA68(v72, v0);
        SystemRequirement.init(transcript:)();
        sub_22C259470();
        sub_22BE1AE58();
        sub_22BE3C8D4();
        sub_22BE1AE58();
        if (!v93)
        {
          v73 = MEMORY[0x277D1CC20];
LABEL_13:
          (*(v90 + 104))(v2, *v73, v91);
          v77 = *(v90 + 32);
          sub_22C25A1E8();
          v78();
        }

        break;
      case 3:
        sub_22C259470();
        sub_22BE1AE58();
        (*(v90 + 104))(v92, *MEMORY[0x277D1CC28], v91);
        break;
      default:
        v66 = sub_22C1088E8();
        sub_22BE3B620(v66, v89);
        v67 = sub_22BE29370();
        sub_22BE1AA68(v67, v88);
        v68 = *v88;
        if (v68 == 3)
        {
          sub_22BE5CE4C(&qword_27D915660, &unk_22C2CC9E8);
          sub_22BE43258();
          sub_22BE3D554();
          sub_22C108598();
          v69 = sub_22BE196B4();
          sub_22C259EA0(v69, v70);
          sub_22BE26194();
          sub_22BE1AE58();
          sub_22C259470();
          sub_22BE1AE58();
          sub_22BE200D4();
          goto LABEL_4;
        }

        sub_22BE26194();
        sub_22BE1AE58();
        v79 = sub_22C26EBD4();
        sub_22BE1834C(v79);
        (*(v80 + 104))(v84, **(&unk_278725CC0 + v68));
        sub_22C259470();
        sub_22BE1AE58();
        sub_22BE200D4();
        sub_22BE1AE58();
        (*(v90 + 104))(v84, *MEMORY[0x277D1CC18], v91);
        (*(v90 + 32))(v92, v84, v91);
        break;
    }
  }

  sub_22BE467E4();
  sub_22BE18478();
}

void SystemRequirement.init(transcript:)()
{
  sub_22BE19130();
  v74 = v6;
  v7 = type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest(0);
  v8 = sub_22BE19448(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE17B98();
  sub_22BE32C08();
  v12 = MEMORY[0x28223BE20](v11);
  v20 = sub_22BE4202C(v12, v13, v14, v15, v16, v17, v18, v19, v69);
  v21 = type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest(v20);
  v22 = sub_22BE19448(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22BE1958C();
  v26 = MEMORY[0x28223BE20](v25);
  sub_22C1CEC08(v26, v27, v28, v29, v30, v31, v32, v33, v70);
  v34 = type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest(0);
  v35 = sub_22BE19448(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  sub_22BE17D10();
  MEMORY[0x28223BE20](v38);
  sub_22BE324EC();
  v39 = sub_22BE1AB1C();
  v41 = sub_22BE5CE4C(v39, v40);
  sub_22BE19448(v41);
  v43 = *(v42 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v44);
  v45 = sub_22BE3100C();
  v46 = type metadata accessor for TranscriptProtoSystemRequirementMessageEnum(v45);
  v47 = sub_22BE18000(v46);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v47);
  sub_22BE2379C();
  sub_22BE1B5E0();
  sub_22BE22814();
  sub_22BE18190(v2);
  if (v50)
  {
    sub_22BE233E8(v2, &qword_27D90E860, &qword_22C2AE5D0);
    sub_22BE5CE4C(&qword_27D915668, &qword_22C2CC9F8);
    sub_22BE43258();
    sub_22BE3D554();
    sub_22C108598();
    v51 = sub_22BE196B4();
    sub_22C259EA0(v51, v52);
    sub_22BE3C8D4();
    sub_22BE1AE58();
  }

  else
  {
    v53 = sub_22BE385E4();
    sub_22BE3B620(v53, v0);
    sub_22BE18944();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v65 = sub_22BE431F0();
        v46 = v71;
        sub_22BE3B620(v65, v71);
        v66 = sub_22BE19EBC();
        sub_22BE1AA68(v66, v3);
        sub_22C25A894();
        SystemRequirement.AuthenticationRequest.init(transcript:)();
        sub_22BE3C8D4();
        sub_22BE1AE58();
        sub_22C259948();
        sub_22BE1AE58();
        if (!v1)
        {
          v59 = MEMORY[0x277D1CD10];
          goto LABEL_14;
        }

        break;
      case 2:
        v60 = sub_22BE431F0();
        sub_22BE3B620(v60, v72);
        v61 = sub_22C259FB8();
        sub_22BE1AA68(v61, v73);
        v62 = *v73;
        v63 = *(v73 + 1);
        v64 = v73[16];
        if ((v73[32] & 1) == 0)
        {
          sub_22C1EED38(*(v73 + 3));
        }

        sub_22C26FA34();
        sub_22BE3C8D4();
        sub_22BE1AE58();
        v46 = type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest;
        sub_22BE1AE58();
        sub_22BE1B074();
        sub_22BE1AE58();
        v59 = MEMORY[0x277D1CCB8];
        goto LABEL_14;
      case 3:
        sub_22BE3C8D4();
        sub_22BE1AE58();
        v59 = MEMORY[0x277D1CCE8];
        goto LABEL_14;
      case 4:
        sub_22BE3C8D4();
        sub_22BE1AE58();
        v59 = MEMORY[0x277D1CCC0];
        goto LABEL_14;
      case 5:
        sub_22BE3C8D4();
        sub_22BE1AE58();
        v59 = MEMORY[0x277D1CCE0];
        goto LABEL_14;
      case 6:
        sub_22BE3C8D4();
        sub_22BE1AE58();
        v59 = MEMORY[0x277D1CD08];
        goto LABEL_14;
      default:
        v55 = sub_22BE431F0();
        sub_22BE3B620(v55, v5);
        v56 = sub_22C259FB8();
        sub_22BE1AA68(v56, v4);
        v58 = *v4;
        v57 = v4[1];

        sub_22BE1B5EC();
        sub_22C26ED04();
        sub_22BE3C8D4();
        sub_22BE1AE58();
        v46 = type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest;
        sub_22BE1AE58();
        sub_22BE1B074();
        sub_22BE1AE58();
        v59 = MEMORY[0x277D1CD18];
LABEL_14:
        sub_22C25A6B8(v59);
        v67 = sub_22C26FAD4();
        sub_22BE1834C(v67);
        (*(v68 + 104))(v74, v46);
        break;
    }
  }

  sub_22BE35D48();
  sub_22BE18478();
}

uint64_t AppRequirement.init(transcript:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  if (v4 == 3)
  {
    sub_22BE5CE4C(&qword_27D915660, &unk_22C2CC9E8);
    sub_22C25AA08();
    sub_22C25A64C();
    sub_22C108598();
    v5 = sub_22BE196B4();
    *v6 = v2;
    v6[1] = v3;
    sub_22C25A590(v5, v6);
    sub_22C0E9A74();
    return sub_22BE1AE58();
  }

  else
  {
    sub_22C0E9A74();
    sub_22BE1AE58();
    v9 = sub_22C26EBD4();
    sub_22BE1834C(v9);
    if (v4)
    {
      if (v4 == 1)
      {
        v11 = MEMORY[0x277D1C5E0];
      }

      else
      {
        v11 = MEMORY[0x277D1C5E8];
      }
    }

    else
    {
      v11 = MEMORY[0x277D1C5D8];
    }

    return (*(v10 + 104))(a2, *v11);
  }
}

uint64_t PermissionRequirement.init(transcript:)(unsigned __int8 *a1)
{
  v2 = *a1;
  if (v2 == 8)
  {
    sub_22BE5CE4C(&qword_27D915670, &qword_22C2CCA00);
    sub_22C25AA08();
    sub_22BE3D554();
    sub_22C108598();
    v3 = sub_22BE196B4();
    sub_22C259EA0(v3, v4);
    sub_22C259960();
    return sub_22BE1AE58();
  }

  else
  {
    sub_22BE48AF0();
    sub_22C259960();
    sub_22BE1AE58();
    v6 = sub_22C26FEA4();
    v7 = sub_22BE18000(v6);
    switch(v2)
    {
      case 1:
        v9 = MEMORY[0x277D1CF58];
        break;
      case 2:
        v9 = MEMORY[0x277D1CF20];
        break;
      case 3:
        v9 = MEMORY[0x277D1CF48];
        break;
      case 4:
        v9 = MEMORY[0x277D1CF30];
        break;
      case 5:
        v9 = MEMORY[0x277D1CF50];
        break;
      case 6:
        v9 = MEMORY[0x277D1CF38];
        break;
      case 7:
        v9 = MEMORY[0x277D1CF40];
        break;
      default:
        v9 = MEMORY[0x277D1CF28];
        break;
    }

    return (*(v8 + 104))(v1, *v9, v7);
  }
}

void TranscriptProtoActionRequirement.init(handwritten:)()
{
  sub_22BE19130();
  sub_22C25A93C(v2);
  sub_22C25A554(v3);
  v4 = sub_22C26FEA4();
  v5 = sub_22BE179D8(v4);
  v127 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE17B98();
  sub_22BE1B99C();
  v10 = MEMORY[0x28223BE20](v9);
  sub_22BE3173C(v10, v11, v12, v13, v14, v15, v16, v17, v124);
  v18 = sub_22C26EBD4();
  v19 = sub_22BE179D8(v18);
  v129 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22BE17B98();
  sub_22BE3E334();
  v24 = MEMORY[0x28223BE20](v23);
  sub_22C259838(v24, v25, v26, v27, v28, v29, v30, v31, v125);
  v32 = sub_22C26FAD4();
  v33 = sub_22BE179D8(v32);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v33);
  sub_22BE17D10();
  MEMORY[0x28223BE20](v38);
  sub_22BE39EE8();
  v39 = sub_22C26F8A4();
  v40 = sub_22C259488(v39);
  v42 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v40);
  v45 = sub_22BE19820();
  v132 = type metadata accessor for TranscriptProtoActionRequirementEnum(v45);
  v46 = sub_22BE18000(v132);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  sub_22BE17B98();
  v128 = v49;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v50);
  sub_22BEC0508();
  MEMORY[0x28223BE20](v51);
  sub_22BE2351C();
  v53 = MEMORY[0x28223BE20](v52);
  sub_22BE355FC(v53, v54, v55, v56, v57, v58, v59, v60, v126);
  sub_22BE3C6EC();
  v61 = sub_22C25A6D0();
  v62(v61);
  v63 = *(v42 + 88);
  v64 = sub_22BE25C08();
  v66 = v65(v64);
  if (v66 == *MEMORY[0x277D1CC20])
  {
    v67 = sub_22C259BE0(v42);
    v68(v67);
    sub_22C18F338();
    v69 = sub_22BE18240();
    v70(v69);
    sub_22BE29400();
    v71 = sub_22BF0AFB8();
    v72(v71);
    sub_22BE44844();
    TranscriptProtoSystemRequirementMessage.init(handwritten:)();
    if (v133)
    {
      v73 = sub_22C25A3D0();
      v74(v73);
      v75 = *(v35 + 8);
      v76 = sub_22BE39EAC();
      v77(v76);
LABEL_17:
      sub_22BE467E4();
      sub_22BE18478();
      return;
    }

    v102 = *(v35 + 8);
    v103 = sub_22BE39EAC();
    v104(v103);
    v84 = v132;
    swift_storeEnumTagMultiPayload();
    sub_22BE1B820();
    v105 = v0;
LABEL_14:
    v96 = v131;
LABEL_15:
    sub_22BE3B620(v105, v96);
    goto LABEL_16;
  }

  if (v66 == *MEMORY[0x277D1CC18])
  {
    v78 = sub_22C259BE0(v42);
    v79(v78);
    sub_22C25A35C();
    v80 = sub_22BE1824C();
    v81(v80);
    sub_22C1CF23C();
    v82 = sub_22BE22DF4();
    v83(v82);
    TranscriptProtoAppRequirement.init(handwritten:)();
    v84 = v132;
    if (v133)
    {
      v85 = sub_22C25A3D0();
      v86(v85);
      v87 = *(v129 + 8);
      v88 = sub_22BF0AFB8();
      v89(v88);
      goto LABEL_17;
    }

    v106 = *(v129 + 8);
    v107 = sub_22BF0AFB8();
    v108(v107);
    sub_22BE2684C();
    swift_storeEnumTagMultiPayload();
    sub_22BE1B820();
    v105 = v1;
    goto LABEL_14;
  }

  v84 = v132;
  if (v66 == *MEMORY[0x277D1CC10])
  {
    v90 = sub_22C259BE0(v42);
    v91(v90);
    sub_22C18EB74();
    v92 = sub_22BE25C94();
    v93(v92);
    sub_22C25A068();
    v94 = sub_22BE36318();
    v95(v94);
    TranscriptProtoPermissionRequirement.init(handwritten:)();
    v96 = v131;
    if (v133)
    {
      v97 = sub_22C25A3D0();
      v98(v97);
      v99 = *(v127 + 8);
      v100 = sub_22BE37B20();
      v101(v100);
      goto LABEL_17;
    }

    v121 = *(v127 + 8);
    v122 = sub_22BE37B20();
    v123(v122);
    sub_22BE3CC34();
    swift_storeEnumTagMultiPayload();
    sub_22BE1B820();
    v105 = v128;
    goto LABEL_15;
  }

  if (v66 == *MEMORY[0x277D1CC28])
  {
    sub_22BE33560();
    swift_storeEnumTagMultiPayload();
LABEL_16:
    v109 = sub_22BE38960();
    v112 = sub_22C18F17C(v109, v110, v111, v84);
    v113 = type metadata accessor for TranscriptProtoActionRequirement(v112);
    sub_22BE48874(v113);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v114 = sub_22C25A3D0();
    v115(v114);
    sub_22BE233E8(v130, &qword_27D90E848, &qword_22C2AE5C0);
    sub_22BE1B820();
    v116 = sub_22BE39EAC();
    sub_22BE3B620(v116, v117);
    v118 = sub_22BE2500C();
    sub_22BE19DC4(v118, v119, v120, v84);
    goto LABEL_17;
  }

  sub_22C274004();
  __break(1u);
}

void TranscriptProtoSystemRequirementMessage.init(handwritten:)()
{
  sub_22BE19130();
  sub_22BE1A5E4();
  v4 = sub_22C26FA54();
  v5 = sub_22BE179D8(v4);
  v117 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v9);
  sub_22BE19E94();
  sub_22BE183BC();
  v10 = sub_22C26FAC4();
  v11 = sub_22BE179D8(v10);
  v118 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BE17B98();
  sub_22BE3CFC4();
  v16 = MEMORY[0x28223BE20](v15);
  sub_22C10887C(v16, v17, v18, v19, v20, v21, v22, v23, v115);
  v24 = sub_22C26FA84();
  v25 = sub_22BE1A3D8(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22BE25544();
  v31 = MEMORY[0x28223BE20](v30);
  sub_22BE22D7C(v31, v32, v33, v34, v35, v36, v37, v38, v116);
  v39 = sub_22C26FAD4();
  v40 = sub_22BE179D8(v39);
  v42 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v40);
  sub_22BE17CBC();
  v45 = sub_22BE5CE4C(&qword_27D90E860, &qword_22C2AE5D0);
  sub_22BE19448(v45);
  v47 = *(v46 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v48);
  v49 = sub_22BE1AB08();
  type metadata accessor for TranscriptProtoSystemRequirementMessageEnum(v49);
  v50 = sub_22BE38960();
  v121 = v51;
  v54 = sub_22C18F17C(v50, v52, v53, v51);
  v55 = *(type metadata accessor for TranscriptProtoSystemRequirementMessage(v54) + 20);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE36288();
  v56 = sub_22BE354DC();
  v57(v56);
  v58 = *(v42 + 88);
  v59 = sub_22BE426E8();
  v61 = v60(v59);
  if (v61 == *MEMORY[0x277D1CD18])
  {
    sub_22C25A32C();
    v62 = sub_22BE426E8();
    v63(v62);
    sub_22C18EB74();
    sub_22C259FD0();
    v64();
    v65 = sub_22C259E94(v27);
    v66(v65, v120, v2);
    v119 = sub_22C26ED64();
    v67 = sub_22C25A4AC();
    v68 = type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest(v67);
    sub_22C25A548(v68);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v69 = *(v42 + 8);
    v70 = sub_22BE2BA80();
    v71(v70);
    v72 = *(v27 + 8);
    v73 = sub_22BE336E8();
    v72(v73);
    v74 = sub_22BE3CC34();
    v72(v74);
    *v3 = v119;
    v3[1] = v1;
LABEL_3:
    swift_storeEnumTagMultiPayload();
    v75 = sub_22BE22B8C();
    sub_22BE19DC4(v75, v76, v77, v121);
    sub_22C25A6D0();
    sub_22BE2343C();
LABEL_16:
    sub_22BE22978();
    sub_22BE18478();
    return;
  }

  if (v61 == *MEMORY[0x277D1CD10])
  {
    sub_22C25A32C();
    v78 = sub_22BE426E8();
    v79(v78);
    sub_22C25A35C();
    v80 = sub_22BE33BE8();
    v81(v80);
    sub_22C1CF23C();
    v82 = sub_22BE29264();
    v83(v82);
    sub_22C25A524();
    TranscriptProtoSystemRequirementAuthenticationRequest.init(handwritten:)();
    if (!v0)
    {
      v100 = sub_22C259BF0();
      v101(v100);
      v102 = *(v118 + 8);
      v103 = sub_22BE33BE8();
      v104(v103);
      goto LABEL_3;
    }

    v84 = sub_22C259BF0();
    v85(v84);
    v86 = *(v118 + 8);
    v87 = sub_22BE33BE8();
    v88(v87);
LABEL_15:
    sub_22BE3C8D4();
    sub_22BE1AE58();
    goto LABEL_16;
  }

  if (v61 == *MEMORY[0x277D1CCB8])
  {
    sub_22C25A32C();
    v89 = sub_22BE426E8();
    v90(v89);
    sub_22C18F338();
    v91 = sub_22BE33BE8();
    v92(v91);
    sub_22BE29400();
    v93 = sub_22BE29264();
    v94(v93);
    sub_22C25A524();
    TranscriptProtoSystemRequirementUserLocationForSystemRequest.init(handwritten:)();
    if (!v0)
    {
      v108 = sub_22C259BF0();
      v109(v108);
      v110 = *(v117 + 8);
      v111 = sub_22BE33BE8();
      v112(v111);
      goto LABEL_3;
    }

    v95 = sub_22C259BF0();
    v96(v95);
    v97 = *(v117 + 8);
    v98 = sub_22BE33BE8();
    v99(v98);
    goto LABEL_15;
  }

  if (v61 == *MEMORY[0x277D1CCE8])
  {
    goto LABEL_20;
  }

  if (v61 == *MEMORY[0x277D1CD00])
  {
    sub_22C108358();
    sub_22BE196B4();
    *v105 = 2;
    swift_willThrow();
    v106 = sub_22C259BF0();
    v107(v106);
    goto LABEL_15;
  }

  if (v61 == *MEMORY[0x277D1CCC0] || v61 == *MEMORY[0x277D1CCE0] || v61 == *MEMORY[0x277D1CD08])
  {
LABEL_20:
    v113 = sub_22C259BF0();
    v114(v113);
    goto LABEL_3;
  }

  sub_22C274004();
  __break(1u);
}

void TranscriptProtoAppRequirement.init(handwritten:)()
{
  sub_22BE4111C();
  v0 = sub_22C26EBD4();
  v1 = sub_22BE1A3D8(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22BE19338();
  v6 = sub_22C25AB58(3);
  v7 = type metadata accessor for TranscriptProtoAppRequirement(v6);
  sub_22BE38954(v7);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v8 = sub_22C259870();
  v9(v8);
  v10 = sub_22C1CEBF4();
  v12 = v11(v10);
  if (v12 == *MEMORY[0x277D1C5D8] || v12 == *MEMORY[0x277D1C5E0] || v12 == *MEMORY[0x277D1C5E8])
  {
    v13 = *(v3 + 8);
    v14 = sub_22BE2590C();
    v15(v14);
    sub_22BE25CC0();
  }

  else
  {
    sub_22BE3FFAC();
    __break(1u);
  }
}

void TranscriptProtoPermissionRequirement.init(handwritten:)()
{
  sub_22BE4111C();
  v0 = sub_22C26FEA4();
  v1 = sub_22BE1A3D8(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22BE19338();
  v6 = sub_22C25AB58(8);
  v7 = type metadata accessor for TranscriptProtoPermissionRequirement(v6);
  sub_22BE38954(v7);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v8 = sub_22C259870();
  v9(v8);
  v10 = sub_22C1CEBF4();
  v12 = v11(v10);
  if (v12 == *MEMORY[0x277D1CF28] || v12 == *MEMORY[0x277D1CF58] || v12 == *MEMORY[0x277D1CF20] || v12 == *MEMORY[0x277D1CF48] || v12 == *MEMORY[0x277D1CF30] || v12 == *MEMORY[0x277D1CF50] || v12 == *MEMORY[0x277D1CF38] || v12 == *MEMORY[0x277D1CF40])
  {
    v13 = *(v3 + 8);
    v14 = sub_22BE2590C();
    v15(v14);
    sub_22BE25CC0();
  }

  else
  {
    sub_22BE3FFAC();
    __break(1u);
  }
}

uint64_t sub_22C23CDF0(uint64_t *a1, void (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = a1[1];

  v5 = sub_22BE1B18C();
  a2(v5);
  sub_22BE200D4();
  return sub_22BE1AE58();
}

void SystemRequirement.AuthenticationRequest.init(transcript:)()
{
  sub_22BE19130();
  v5 = sub_22BE33FA8();
  v6 = type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel(v5);
  v7 = sub_22BE19448(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE197B8();
  v10 = sub_22C26FA94();
  v11 = sub_22BE41130(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BE18928();
  MEMORY[0x28223BE20](v16);
  sub_22BE1C17C();
  sub_22C101958();
  if (v1)
  {
LABEL_7:
    sub_22C259948();
    goto LABEL_8;
  }

  v17 = *v0;
  if (v17 != 2)
  {
    sub_22BE29334();
    sub_22BE1AE58();
    v20 = MEMORY[0x277D1CCF8];
    if ((v17 & 1) == 0)
    {
      v20 = MEMORY[0x277D1CCF0];
    }

    (*(v13 + 104))(v4, *v20, v3);
    v21 = *(v13 + 32);
    v22 = sub_22BE196A8();
    v23(v22);
    sub_22BE3D5BC();
    sub_22C26FAA4();
    goto LABEL_7;
  }

  sub_22BE5CE4C(&qword_27D915678, &qword_22C2CCA08);
  sub_22BE43258();
  sub_22C25A560();
  sub_22C108598();
  v18 = sub_22BE196B4();
  *v19 = v2;
  v19[1] = v3;
  sub_22C25A590(v18, v19);
  sub_22C259948();
  sub_22BE1AE58();
  sub_22BE29334();
LABEL_8:
  sub_22BE1AE58();
  sub_22BE19650();
  sub_22BE18478();
}

void SystemRequirement.UserLocationForSystemRequest.init(transcript:)()
{
  sub_22BE1B214();
  sub_22C25A074();
  v2 = *v1;
  v3 = *(v1 + 1);
  v4 = v1[16];
  if ((v1[32] & 1) == 0)
  {
    sub_22C1EED38(*(v0 + 24));
  }

  sub_22C26FA34();
  sub_22C0E9A74();
  sub_22BE1AE58();
  sub_22BE25C6C();
}

void sub_22C23D118()
{
  sub_22BE1B214();
  v3 = v2;
  v5 = v4;
  sub_22C25A05C();
  v7 = v6;
  v9 = v8();
  v10 = sub_22C25A628();
  v11 = v5(v10);
  sub_22C25A548(v11);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v12 = v3(0);
  sub_22BE18524(v12);
  (*(v13 + 8))(v0);
  *v7 = v9;
  v7[1] = v1;
  sub_22BE25C6C();
}

void TranscriptProtoSystemRequirementAuthenticationRequest.init(handwritten:)()
{
  sub_22BE1B254();
  v2 = sub_22C26FA94();
  v3 = sub_22BE19448(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE19338();
  v6 = sub_22BE5CE4C(&qword_27D90E880, &unk_22C2AE5E0);
  sub_22BE19448(v6);
  v8 = *(v7 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE25CD0();
  MEMORY[0x2318A81B0]();
  sub_22C25A08C();
  TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel.init(handwritten:)();
  if (v1)
  {
    v10 = sub_22C26FAC4();
    sub_22BE18524(v10);
    (*(v11 + 8))(v0);
  }

  else
  {
    v12 = type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel(0);
    v13 = sub_22BE3C530();
    sub_22BE19DC4(v13, v14, v15, v12);
    v16 = sub_22BE38960();
    v19 = sub_22C259E00(v16, v17, v18);
    v20 = type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest(v19);
    sub_22BE48874(v20);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v21 = sub_22C26FAC4();
    sub_22BE18524(v21);
    (*(v22 + 8))(v0);
    sub_22BE200D4();
    sub_22BE2343C();
  }

  sub_22C25A6E8();
}

void TranscriptProtoSystemRequirementUserLocationForSystemRequest.init(handwritten:)()
{
  sub_22BE2BB34();
  sub_22C1CECFC();
  v2 = sub_22C26FA44();
  v3 = sub_22C26FA14();
  v5 = v4;
  sub_22C26FA24();
  v7 = v6;
  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_22C274284();
  }

  v9 = type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest(0);
  sub_22C25AE04(v9);
  v10 = sub_22C26FA54();
  sub_22BE18524(v10);
  (*(v11 + 8))(v0);
  *v1 = v2 & 1;
  *(v1 + 8) = v3;
  *(v1 + 16) = v5 & 1;
  *(v1 + 24) = v8;
  *(v1 + 32) = v7 & 1;
  sub_22BEE93D4();
}

uint64_t SystemRequirement.AuthenticationRequest.AuthenticationLevel.init(transcript:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  if (v4 == 2)
  {
    sub_22BE5CE4C(&qword_27D915678, &qword_22C2CCA08);
    sub_22C25AA08();
    sub_22BE29328();
    sub_22C108598();
    v5 = sub_22BE196B4();
    *v6 = v2;
    v6[1] = v3;
    sub_22C25A590(v5, v6);
    sub_22BE29334();
    return sub_22BE1AE58();
  }

  else
  {
    sub_22BE29334();
    sub_22BE1AE58();
    v9 = sub_22C26FA94();
    sub_22BE1834C(v9);
    if (v4)
    {
      v11 = MEMORY[0x277D1CCF8];
    }

    else
    {
      v11 = MEMORY[0x277D1CCF0];
    }

    return (*(v10 + 104))(a2, *v11);
  }
}

void TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel.init(handwritten:)()
{
  sub_22BE4111C();
  v0 = sub_22C26FA94();
  v1 = sub_22BE1A3D8(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22BE19338();
  v6 = sub_22C25AB58(2);
  v7 = type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel(v6);
  sub_22BE38954(v7);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v8 = sub_22C259870();
  v9(v8);
  v10 = sub_22C1CEBF4();
  v12 = v11(v10);
  if (v12 == *MEMORY[0x277D1CCF0] || v12 == *MEMORY[0x277D1CCF8])
  {
    v13 = *(v3 + 8);
    v14 = sub_22BE2590C();
    v15(v14);
    sub_22BE25CC0();
  }

  else
  {
    sub_22BE3FFAC();
    __break(1u);
  }
}

void ActionSuccess.init(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  sub_22C259FE8();
  v12 = sub_22BE5CE4C(&qword_27D908FF8, &qword_22C27FC50);
  sub_22BE19448(v12);
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE181D0(v16, v82);
  v17 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v17);
  v19 = *(v18 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  sub_22BE29200(v21);
  v22 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  sub_22BE19448(v22);
  v24 = *(v23 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v25);
  sub_22BE1A174();
  v87 = v26;
  v27 = sub_22BE5CE4C(&qword_27D90E8F8, &qword_22C2B5B60);
  sub_22BE19448(v27);
  v29 = *(v28 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v30);
  sub_22BE29250(v31, v83);
  v32 = sub_22BE5CE4C(&qword_27D911E88, &unk_22C2B5B40);
  sub_22BE19448(v32);
  v34 = *(v33 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v35);
  sub_22BE20168(v36, v84);
  v37 = sub_22BE5CE4C(&qword_27D90E908, &unk_22C2AE600);
  sub_22BE19448(v37);
  v39 = *(v38 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v40);
  sub_22BE35C94(v41, v85);
  v42 = sub_22BE5CE4C(&qword_27D911E90, &unk_22C2CCA10);
  sub_22BE19448(v42);
  v44 = *(v43 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v45);
  sub_22BE1AB08();
  v46 = sub_22C272594();
  v47 = sub_22BE179D8(v46);
  v88 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v47);
  sub_22BE17D10();
  MEMORY[0x28223BE20](v51);
  sub_22BE41E38();
  v52 = sub_22C272874();
  v53 = sub_22BE179D8(v52);
  v55 = v54;
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v53);
  sub_22BE1955C();
  v58 = type metadata accessor for TranscriptProtoActionSuccess(0);
  sub_22C25A8C4(v58);
  sub_22C101488();
  if (!a10)
  {
    v86 = v55;
    sub_22C25A080();
    v59 = sub_22BE3E79C();
    v60(v59);
    sub_22C25AB1C();
    sub_22C272864();
    v61 = *(v88 + 8);
    v62 = sub_22BE1B074();
    v63(v62);
    v64 = *v10;
    v65 = v11[7];
    sub_22C25A724();
    sub_22BE22814();
    v66 = sub_22C25A524();
    sub_22C100C1C(v66, v67, v68, v69, v70, v71, v72, v73, v86, v87);
    v74 = v11[8];
    sub_22BE22814();
    sub_22C100EE4();
    v90 = v10[1];
    v75 = v11[10];
    v76 = &v10[v11[9]];
    v77 = *(v76 + 1);
    v89 = *v76;
    sub_22BE22814();

    sub_22C0FD140();
    sub_22C26E614();
    v78 = sub_22BE3D5C8();
    sub_22BE19DC4(v78, v79, v80, v81);
    sub_22C26E974();
  }

  sub_22BE3BFF4();
  sub_22BE1AE58();
  sub_22BEE94B0();
  sub_22BE18478();
}

void SnippetStream.init(transcript:)()
{
  sub_22BE2BB34();
  sub_22BE1B254();
  v1 = sub_22C272594();
  v2 = sub_22C259488(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BE18928();
  MEMORY[0x28223BE20](v7);
  sub_22C2595A0();
  v8 = sub_22C272874();
  v9 = sub_22BE19448(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BE294E0();
  sub_22C25ABC0();
  sub_22C101488();
  if (!v0)
  {
    sub_22C25A068();
    v12 = sub_22BE18240();
    v13(v12);
    sub_22C272864();
    v14 = *(v4 + 8);
    v15 = sub_22BE25C08();
    v16(v15);
    sub_22C25AD7C();
    sub_22C26EAB4();
  }

  sub_22C0E9A74();
  sub_22BE1AE58();
  sub_22BEE93D4();
}

void ActionFailure.init(transcript:)()
{
  sub_22BE1B214();
  sub_22C259E88();
  v1 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v1);
  v3 = *(v2 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE19E64();
  v5 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  sub_22BE19448(v5);
  v7 = *(v6 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  v9 = sub_22BE22BFC();
  v10 = type metadata accessor for TranscriptProtoActionFailureFailure(v9);
  v11 = sub_22BE19448(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BE1AD20();
  v14 = sub_22C26E794();
  v15 = sub_22BE19448(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BE1955C();
  sub_22C25ACCC();
  sub_22C104E2C();
  if (!v0)
  {
    sub_22C25A338();
    ActionFailure.Failure.init(transcript:)();
    v18 = *(type metadata accessor for TranscriptProtoActionFailure(0) + 20);
    sub_22BE22814();
    sub_22C0FD140();
    sub_22BE33560();
    sub_22C26E834();
  }

  sub_22C0E9A74();
  sub_22BE1AE58();
  sub_22BE25C6C();
}

void TranscriptProtoSnippetStream.init(handwritten:)()
{
  sub_22BE19130();
  sub_22C25A770();
  sub_22C25A424(v3);
  v4 = sub_22C272594();
  v5 = sub_22BE1A3D8(v4);
  v40 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE2F294();
  v9 = sub_22C272874();
  v10 = sub_22BE41130(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BE28FD8();
  v15 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  sub_22BE19448(v15);
  v17 = *(v16 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  sub_22BE1A8B4();
  sub_22C26E984();
  sub_22C272854();
  if (v2)
  {
    v19 = sub_22C26EAC4();
    sub_22BE18524(v19);
    (*(v20 + 8))(v0);
    v21 = *(v12 + 8);
    v22 = sub_22BE25C94();
    v23(v22);
  }

  else
  {
    v24 = *(v12 + 8);
    v25 = sub_22BE25C94();
    v26(v25);
    v27 = *(v40 + 32);
    v28 = sub_22BE289D8();
    v29(v28);
    v30 = sub_22BE33C68();
    sub_22BE19DC4(v30, v31, v32, v1);
    v33 = sub_22BE38960();
    v36 = sub_22C18F17C(v33, v34, v35, v1);
    v37 = type metadata accessor for TranscriptProtoSnippetStream(v36);
    sub_22BE48874(v37);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v38 = sub_22C26EAC4();
    sub_22BE18524(v38);
    (*(v39 + 8))(v0);
    sub_22BE33FCC();
    sub_22BE2343C();
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

uint64_t TranscriptProtoValueDisambiguation.init(handwritten:)()
{
  sub_22C1CECFC();
  v4 = sub_22C26FD84();
  sub_22C220C88(v4);
  if (v0)
  {
    v5 = sub_22C26FD94();
    sub_22BE18524(v5);
    return (*(v6 + 8))(v1);
  }

  else
  {
    v8 = sub_22BE48298();
    v9 = type metadata accessor for TranscriptProtoValueDisambiguation(v8);
    sub_22C25A0A4(v9);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v10 = sub_22C26FD94();
    sub_22BE18524(v10);
    result = (*(v11 + 8))(v1);
    *v2 = v3;
  }

  return result;
}

void TranscriptProtoActionFailure.init(handwritten:)()
{
  sub_22BE1B214();
  sub_22BE271BC();
  v3 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  sub_22BE19448(v3);
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE1B01C();
  v7 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v7);
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE3100C();
  v11 = sub_22C26E794();
  v12 = sub_22BE19448(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BE294E0();
  v15 = sub_22BE5CE4C(&qword_27D90E8B8, &qword_22C2B5B50);
  sub_22BE19448(v15);
  v17 = *(v16 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  sub_22BE234F4();
  sub_22C26E844();
  sub_22C25A338();
  TranscriptProtoActionFailureFailure.init(handwritten:)();
  if (v2)
  {
    v19 = sub_22C26E854();
    sub_22BE18524(v19);
    (*(v20 + 8))(v1);
  }

  else
  {
    v21 = type metadata accessor for TranscriptProtoActionFailureFailure(0);
    v22 = sub_22C25974C();
    sub_22BE19DC4(v22, v23, v24, v21);
    sub_22C26E824();
    sub_22C25A610();
    sub_22BE46914();
    v25 = sub_22BE38960();
    v28 = sub_22BE3FEC8(v25, v26, v27);
    v29 = type metadata accessor for TranscriptProtoActionFailure(v28);
    v30 = *(v29 + 20);
    type metadata accessor for TranscriptProtoStatementID(0);
    v31 = sub_22C259DDC();
    sub_22BE19DC4(v31, v32, v33, v34);
    v35 = v0 + *(v29 + 24);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v36 = sub_22C26E854();
    sub_22BE18524(v36);
    (*(v37 + 8))(v1);
    sub_22BE39EAC();
    sub_22BE2343C();
    sub_22BE2343C();
  }

  sub_22BE25C6C();
}

void ResponseManifest.init(transcript:)()
{
  sub_22BE19130();
  v4 = v3;
  sub_22C18F934(v5);
  v6 = sub_22C26F7D4();
  v7 = sub_22BE179D8(v6);
  v74 = v8;
  v75 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE17B98();
  sub_22BE32C08();
  v12 = MEMORY[0x28223BE20](v11);
  sub_22C10887C(v12, v13, v14, v15, v16, v17, v18, v19, v66);
  v20 = sub_22BE5CE4C(&qword_27D90EC08, &unk_22C2CCA20);
  sub_22BE19448(v20);
  v22 = *(v21 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v23);
  sub_22BE20168(v24, v67);
  v25 = sub_22BE5CE4C(&qword_27D911E68, &qword_22C2B5B18);
  sub_22BE19448(v25);
  v27 = *(v26 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v28);
  sub_22BE2564C(v29);
  v30 = sub_22BE5CE4C(&qword_27D90EC18, &unk_22C2AE700);
  sub_22BE19448(v30);
  v32 = *(v31 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v33);
  sub_22BE234F4();
  v34 = sub_22BE5CE4C(&qword_27D911E78, &qword_22C2B5B28);
  sub_22BE19448(v34);
  v36 = *(v35 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v37);
  sub_22BE19668();
  v38 = sub_22BE5CE4C(&qword_27D90EC28, &unk_22C2CCA30);
  sub_22BE19448(v38);
  v40 = *(v39 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v41);
  sub_22BE19E64();
  v42 = sub_22BE5CE4C(&qword_27D911E80, &unk_22C2B5B30);
  sub_22BE19448(v42);
  v44 = *(v43 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v45);
  sub_22BE23E58();
  v46 = *v4;

  sub_22C0FB054(v47, v48, v49, v50, v51, v52, v53, v54, v68, v70);
  v55 = type metadata accessor for TranscriptProtoResponseManifest(0);
  v56 = v55[5];
  sub_22C25A368();
  sub_22BE22814();
  sub_22BE489C8();
  sub_22C100108();
  sub_22C25AC20(v55[6]);
  sub_22BE22814();
  sub_22C100304(v1);
  if (v0)
  {

    sub_22C259C58();
    sub_22BE233E8(v2, &qword_27D911E80, &unk_22C2B5B30);
  }

  else
  {
    v57 = v55[11];
    sub_22BE22814();
    sub_22C1004D8();
    v58 = (v4 + v55[7]);
    v59 = v58[1];
    v72 = *v58;
    v60 = (v4 + v55[8]);
    v69 = *(v4 + v55[9]);
    v61 = v60[1];
    v71 = *v60;
    v62 = MEMORY[0x277D1CB68];
    if (*(v4 + v55[10]))
    {
      v62 = MEMORY[0x277D1CB60];
    }

    (*(v74 + 104))(v73, *v62, v75);
    v63 = *(v74 + 32);
    v64 = sub_22BE25C94();
    v65(v64);

    sub_22C26F7E4();
    sub_22C259C58();
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

uint64_t ResponseManifest.ResponseDialogPresentationHint.init(transcript:)(unsigned __int8 *a1)
{
  sub_22C259EE8(a1);
  v3 = sub_22C26F7D4();
  sub_22BE1834C(v3);
  v5 = MEMORY[0x277D1CB60];
  if (!v2)
  {
    v5 = MEMORY[0x277D1CB68];
  }

  return (*(v4 + 104))(v1, *v5);
}

void TranscriptProtoResponseManifest.init(handwritten:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_22BE19130();
  v16 = v15;
  v96 = v17;
  v18 = sub_22BE5CE4C(&qword_27D911E68, &qword_22C2B5B18);
  sub_22BE19448(v18);
  v20 = *(v19 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v21);
  sub_22BE1BCE8(v22, v86);
  v23 = sub_22BE5CE4C(&qword_27D90EC08, &unk_22C2CCA20);
  sub_22BE19448(v23);
  v25 = *(v24 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v26);
  sub_22BE1A8B4();
  v27 = sub_22BE5CE4C(&qword_27D911E70, &qword_22C2B5B20);
  sub_22BE19448(v27);
  v29 = *(v28 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v30);
  sub_22BE2C64C();
  v31 = sub_22BE5CE4C(&qword_27D911E78, &qword_22C2B5B28);
  sub_22BE19448(v31);
  v33 = *(v32 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v34);
  sub_22BE1B72C();
  v35 = sub_22BE5CE4C(&qword_27D90EC18, &unk_22C2AE700);
  sub_22BE19448(v35);
  v37 = *(v36 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v38);
  sub_22BE234F4();
  v39 = sub_22BE5CE4C(&qword_27D911E80, &unk_22C2B5B30);
  sub_22BE19448(v39);
  v41 = *(v40 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v42);
  sub_22BE19E64();
  v43 = sub_22BE5CE4C(&qword_27D90EC28, &unk_22C2CCA30);
  sub_22BE19448(v43);
  v45 = *(v44 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v46);
  sub_22BE23E58();
  v47 = MEMORY[0x2318A7EF0]();
  if (!v47)
  {
    v47 = MEMORY[0x277D84F90];
  }

  sub_22C1C6FC0(v47, v48, v49, v50, v51, v52, v53, v54, v87, v89);
  v56 = v55;
  sub_22C26F854();
  sub_22BE489C8();
  sub_22C1064B8();
  sub_22C26F864();
  v57 = sub_22C259FDC();
  sub_22C1066D8(v57);
  if (v13)
  {

    v58 = sub_22C26F874();
    sub_22BE18524(v58);
    (*(v59 + 8))(v16);
    sub_22BE233E8(v14, &qword_27D90EC28, &unk_22C2CCA30);
  }

  else
  {
    v95 = v56;
    v60 = sub_22C26F804();
    v62 = v61;
    v63 = sub_22C26F824();
    v65 = v64;
    v66 = sub_22C26F834();
    sub_22C26F844();
    sub_22C1068A8();
    v92 = v63;
    v93 = v62;
    v94 = v65;
    sub_22C26F814();
    sub_22C106AEC();
    v67 = type metadata accessor for TranscriptProtoResponseManifest(0);
    v97 = v67[5];
    type metadata accessor for TranscriptProtoResponseDialog(0);
    sub_22BE1A140();
    sub_22BE19DC4(v68, v69, v70, v71);
    v91 = v67[6];
    type metadata accessor for TranscriptProtoResponseVisual(0);
    sub_22BE1A140();
    sub_22BE19DC4(v72, v73, v74, v75);
    v76 = (v96 + v67[7]);
    v88 = (v96 + v67[8]);
    v77 = v67[10];
    v90 = v67[9];
    *(v96 + v77) = 2;
    v78 = v67[11];
    type metadata accessor for TranscriptProtoUIType(0);
    sub_22BE1A140();
    sub_22BE19DC4(v79, v80, v81, v82);
    v83 = v96 + v67[12];
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v84 = sub_22C26F874();
    sub_22BE18524(v84);
    (*(v85 + 8))(v16);
    *v96 = v95;
    sub_22BE2343C();
    sub_22BE2343C();
    *v76 = v60;
    v76[1] = v93;
    *v88 = v92;
    v88[1] = v94;
    *(v96 + v90) = v66;
    *(v96 + v77) = a13;
    sub_22BE2343C();
  }

  sub_22BE467E4();
  sub_22BE18478();
}

void TranscriptProtoResponseDialogPresentationHint.init(handwritten:)()
{
  sub_22BE4111C();
  v0 = sub_22C26F7D4();
  v1 = sub_22BE1A3D8(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22BE19338();
  v6 = sub_22C259870();
  v7(v6);
  v8 = sub_22C1CEBF4();
  v10 = v9(v8);
  if (v10 == *MEMORY[0x277D1CB68] || v10 == *MEMORY[0x277D1CB60])
  {
    v12 = *(v3 + 8);
    v13 = sub_22BE2590C();
    v14(v13);
    sub_22BE25CC0();
  }

  else
  {
    sub_22BE3FFAC();
    __break(1u);
  }
}

uint64_t ResponseParameter.init(transcript:)(uint64_t *a1)
{
  v1 = sub_22C25A7F8(a1);
  v2 = v1[8];
  v8 = v1[7];
  v3 = *(v1 + 72);
  v4 = *(v1 + 48);

  v5 = sub_22BE29454();
  sub_22BF1C1E4(v5, v6);

  sub_22C259F24();
  sub_22C26F9A4();
  sub_22BE26148();
  return sub_22BE1AE58();
}

uint64_t TranscriptProtoResponseParameter.init(handwritten:)()
{
  sub_22C259E88();
  sub_22C26F9B4();
  sub_22C25A560();
  v6 = sub_22C26F9D4();
  v17 = v7;
  v18 = v6;
  sub_22C26F9C4();
  sub_22C1CF16C();
  v8 = sub_22C26F9F4();
  v9 = sub_22C26F9E4();
  v11 = v10;
  v12 = sub_22C26F994();
  *(v0 + 16) = xmmword_22C28E6A0;
  v13 = v0 + *(type metadata accessor for TranscriptProtoResponseParameter(0) + 40);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v14 = sub_22C26FA04();
  sub_22BE18524(v14);
  (*(v15 + 8))(v1);
  *v0 = v2;
  *(v0 + 8) = v3;
  result = sub_22BF158B4(*(v0 + 16), *(v0 + 24));
  *(v0 + 16) = v18;
  *(v0 + 24) = v17;
  *(v0 + 32) = v4;
  *(v0 + 40) = v5;
  *(v0 + 48) = v8;
  *(v0 + 56) = v9;
  *(v0 + 64) = v11;
  *(v0 + 72) = v12;
  return result;
}

void ResponseDialog.init(transcript:)()
{
  sub_22BE19460();
  sub_22BE28CF0();
  v1 = sub_22C25A7F8(v0);
  v2 = v1[6];
  v3 = v1[7];

  sub_22C25A84C();
  sub_22C259F24();
  sub_22C26F2D4();
  sub_22BE26148();
  sub_22BE1AE58();
  sub_22BE1AABC();
}

void TranscriptProtoResponseDialog.init(handwritten:)()
{
  sub_22BE19460();
  sub_22C259E88();
  v7 = sub_22C26F2E4();
  v9 = v8;
  sub_22C26F2F4();
  sub_22C25A560();
  sub_22C26F2B4();
  sub_22C1CF16C();
  v10 = sub_22C26F2C4();
  v11 = sub_22C25A77C();
  v12 = v0 + *(type metadata accessor for TranscriptProtoResponseDialog(v11) + 32);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v13 = sub_22C26F304();
  sub_22BE18524(v13);
  (*(v14 + 8))(v1);
  *v0 = v7;
  v0[1] = v9;
  v0[2] = v2;
  v0[3] = v3;
  v0[4] = v4;
  v0[5] = v5;
  v0[6] = v10;
  v0[7] = v6;
  sub_22BE1AABC();
}

void ResponseVisual.init(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v24;
  a20 = v25;
  sub_22C18F140();
  sub_22BE36638(v26);
  v27 = type metadata accessor for TranscriptProtoUIConfirmationLabel(0);
  v28 = sub_22BE19448(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  sub_22BE17B98();
  sub_22BE43220();
  MEMORY[0x28223BE20](v31);
  sub_22BE19E94();
  v143 = v32;
  v33 = sub_22BE5CE4C(&qword_27D9091D0, &qword_22C27FDC8);
  sub_22BE19448(v33);
  v35 = *(v34 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v36);
  v38 = sub_22C25984C(v37);
  v148 = type metadata accessor for TranscriptProtoLabel(v38);
  v39 = sub_22BE18000(v148);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  sub_22BE17A44();
  v142 = v42;
  v43 = sub_22BE183BC();
  v44 = type metadata accessor for TranscriptProtoUILabel(v43);
  v45 = sub_22BE17A18(v44);
  v149 = v46;
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v45);
  sub_22BE17B98();
  sub_22C259D70();
  MEMORY[0x28223BE20](v49);
  sub_22C259BC0();
  v145 = sub_22C26F6D4();
  v50 = sub_22BE179D8(v145);
  v147 = v51;
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v50);
  sub_22BE17A44();
  v141 = v54;
  v55 = sub_22BE183BC();
  v56 = type metadata accessor for TranscriptProtoResponseVisualOptions(v55);
  v57 = sub_22BE19448(v56);
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v57);
  sub_22BE17A44();
  v139 = v60;
  sub_22BE183BC();
  v61 = sub_22C26F554();
  v62 = sub_22BE19448(v61);
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v62);
  sub_22BE17A44();
  v66 = sub_22BE18950(v65);
  v67 = type metadata accessor for TranscriptProtoUIType(v66);
  v68 = sub_22BE17A18(v67);
  v70 = v69;
  v72 = *(v71 + 64);
  MEMORY[0x28223BE20](v68);
  sub_22BE28A70(v73, v134);
  MEMORY[0x28223BE20](v74);
  sub_22BE41E38();
  v153 = sub_22C26F674();
  v75 = sub_22BE179D8(v153);
  v77 = v76;
  v79 = *(v78 + 64);
  MEMORY[0x28223BE20](v75);
  sub_22BE3C444(v80, v135);
  v140 = v20;
  v81 = *v20;
  v82 = MEMORY[0x277D84F90];
  v138 = v21;
  if (*(*v20 + 16))
  {
    v83 = sub_22C25A000();
    v150 = v84;
    sub_22BE71578(v83, v84, 0);
    v85 = 0;
    v86 = *(v70 + 80);
    sub_22BE19E14();
    v152 = v81 + v87;
    while (1)
    {
      if (v85 >= *(v81 + 16))
      {
        __break(1u);
        goto LABEL_26;
      }

      sub_22BE1AA68(v152 + *(v70 + 72) * v85, v23);
      sub_22BE1AA68(v23, v155);
      ResponseVisual.UIType.init(transcript:)(v155, v88, v89, v90, v91, v92, v93, v94, v136, v137);
      if (v22)
      {
        break;
      }

      v156 = 0;
      sub_22BE3D53C();
      sub_22BE1AE58();
      v96 = *(v82 + 16);
      v95 = *(v82 + 24);
      if (v96 >= v95 >> 1)
      {
        v99 = sub_22BE3D1E4(v95);
        sub_22BE71578(v99, v96 + 1, 1);
      }

      ++v85;
      *(v82 + 16) = v96 + 1;
      v97 = *(v77 + 80);
      sub_22BE19E14();
      (*(v77 + 32))(v82 + v98 + *(v77 + 72) * v96, v157, v153);
      v22 = 0;
      if (v150 == v85)
      {
        goto LABEL_10;
      }
    }

    sub_22BE3D53C();
    sub_22BE1AE58();
    sub_22BE26240();
    sub_22BE1AE58();
LABEL_20:

    goto LABEL_24;
  }

  v156 = v22;
LABEL_10:
  v100 = v140;
  v101 = v140[1];
  v102 = *(v101 + 16);
  if (!v102)
  {
LABEL_21:
    v132 = v100 + *(type metadata accessor for TranscriptProtoResponseVisual(0) + 24);
    sub_22C101588();
    if (v156)
    {
      sub_22BE26240();
      sub_22BE1AE58();
    }

    else
    {
      v133 = *v139;
      sub_22BE2BD40(&a16);
      sub_22C26F534();
      sub_22C0E9830();
      sub_22BE1AE58();
      sub_22C1CF148();
      sub_22BE18240();
      sub_22C26F564();
      sub_22BE26240();
      sub_22BE1AE58();
    }

LABEL_24:
    sub_22BE19650();
    sub_22BE18478();
    return;
  }

  v159 = MEMORY[0x277D84F90];
  v103 = sub_22C259F98();
  sub_22BE71520(v103, v104, v105);
  v106 = v21;
  v107 = 0;
  v108 = *(v149 + 80);
  sub_22BE19E14();
  v158 = v101 + v109;
  v151 = *MEMORY[0x277D1CA90];
  v154 = v101;
  while (v107 < *(v101 + 16))
  {
    sub_22BE1AA68(v158 + *(v149 + 72) * v107, v106);
    v110 = sub_22BE2684C();
    sub_22BE1AA68(v110, v111);
    sub_22BE22814();
    v112 = sub_22BE391E8();
    sub_22BE1AB5C(v112, v113, v148);
    if (v114)
    {

      sub_22BE233E8(v146, &qword_27D9091D0, &qword_22C27FDC8);
      sub_22BE5CE4C(&qword_27D911E60, &qword_22C2B5B10);
      sub_22BE3369C();
      sub_22BE3D554();
      sub_22C108598();
      v130 = sub_22BE196B4();
      sub_22C259EA0(v130, v131);
      sub_22C25A314();
      sub_22BE1AE58();
      sub_22BE1B074();
      sub_22BE1AE58();
      sub_22BE26240();
      sub_22BE1AE58();
      goto LABEL_20;
    }

    v115 = sub_22BE19EBC();
    sub_22BE3B620(v115, v142);
    v116 = sub_22BE19EBC();
    sub_22BE3B620(v116, v143);
    v117 = sub_22C1088E8();
    sub_22BE1AA68(v117, v144);
    v119 = *v144;
    v118 = v144[1];
    v120 = v144[2];
    v121 = v144[3];

    sub_22BE354D0();
    v122 = v145;
    MEMORY[0x2318A7D90]();
    sub_22BE1AE58();
    sub_22BE1AE58();
    sub_22C25A314();
    sub_22BE1AE58();
    sub_22BE1B074();
    sub_22BE1AE58();
    (*(v147 + 104))(v141, v151, v145);
    v124 = *(v159 + 16);
    v123 = *(v159 + 24);
    if (v124 >= v123 >> 1)
    {
      sub_22BE3D1E4(v123);
      sub_22BE31778();
      sub_22BE71520(v127, v128, v129);
      v122 = v145;
      v106 = v138;
    }

    ++v107;
    *(v159 + 16) = v124 + 1;
    sub_22BE25AD8();
    (*(v126 + 32))(v159 + v125 + *(v126 + 72) * v124, v141, v122);
    v101 = v154;
    if (v102 == v107)
    {
      v100 = v140;
      goto LABEL_21;
    }
  }

LABEL_26:
  __break(1u);
}

void ResponseVisual.UIType.init(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  sub_22C259FE8();
  sub_22C25A554(v15);
  v16 = sub_22C2729D4();
  v17 = sub_22BE19448(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BE17A44();
  v20 = sub_22BE5CE4C(&qword_27D911E40, &qword_22C2B5AD8);
  sub_22BE19448(v20);
  v22 = *(v21 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v23);
  sub_22BE36644(v24);
  v99 = sub_22C26F674();
  v25 = sub_22BE179D8(v99);
  v104 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22BE17A44();
  v30 = sub_22C259814(v29);
  v31 = type metadata accessor for TranscriptProtoControlPayload(v30);
  v32 = sub_22BE19448(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22BE17B98();
  sub_22BE3E334();
  v36 = MEMORY[0x28223BE20](v35);
  v44 = sub_22BE22D7C(v36, v37, v38, v39, v40, v41, v42, v43, v96);
  v45 = type metadata accessor for TranscriptProtoPluginSnippetPayload(v44);
  v46 = sub_22BE19448(v45);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  sub_22BE18928();
  MEMORY[0x28223BE20](v49);
  v50 = sub_22BE41E38();
  v51 = type metadata accessor for TranscriptProtoLiveActivityPayload(v50);
  v52 = sub_22BE19448(v51);
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v52);
  sub_22BE195A8();
  MEMORY[0x28223BE20](v55);
  v56 = sub_22C2595B4();
  v57 = type metadata accessor for TranscriptProtoArchiveViewPayload(v56);
  v58 = sub_22BE19448(v57);
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v58);
  sub_22BE2582C();
  MEMORY[0x28223BE20](v61);
  v62 = sub_22BE195C4();
  v63 = type metadata accessor for TranscriptProtoUitype(v62);
  v64 = sub_22BE18000(v63);
  v66 = *(v65 + 64);
  MEMORY[0x28223BE20](v64);
  sub_22BE197B8();
  sub_22C101868();
  if (a10)
  {
    sub_22BE3D53C();
    sub_22BE1AE58();
  }

  else
  {
    sub_22BE37490();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v92 = sub_22BE19EBC();
        sub_22BE3B620(v92, v14);
        v93 = sub_22C259E7C();
        sub_22BE1AA68(v93, v10);
        v95 = *v10;
        v94 = v10[1];

        sub_22BE1B5EC();
        sub_22C26F604();
        sub_22BE3D53C();
        sub_22BE1AE58();
        sub_22BE1AE58();
        sub_22BE3C968();
        sub_22BE1AE58();
        (*(v104 + 104))(v100, *MEMORY[0x277D1CA28], v99);
        break;
      case 2u:
        v76 = sub_22BE19EBC();
        sub_22BE3B620(v76, v77);
        v78 = sub_22C259E7C();
        sub_22BE1AA68(v78, v12);
        v79 = *v12;
        v80 = v12[1];
        v81 = v12[2];
        v82 = v12[3];
        v83 = sub_22BE19454();
        sub_22BE29D7C(v83, v84);

        v85 = sub_22BE19454();
        MEMORY[0x2318A7D40](v85);
        sub_22BE3D53C();
        sub_22BE1AE58();
        sub_22BE1AE58();
        sub_22BE3C968();
        sub_22BE1AE58();
        (*(v104 + 104))(v100, *MEMORY[0x277D1CA30], v99);
        break;
      case 3u:
        v86 = sub_22BE19EBC();
        sub_22BE3B620(v86, v101);
        v87 = sub_22C1088AC();
        sub_22BE1AA68(v87, v97);
        v88 = *v97;
        v89 = v97[1];
        v90 = sub_22BE19454();
        sub_22BE29D7C(v90, v91);
        sub_22BE19454();
        sub_22C2729C4();
        sub_22C25AD70();
        sub_22C101768();
        sub_22BE233E8(v98, &qword_27D911E40, &qword_22C2B5AD8);
        sub_22C26F594();
        sub_22BE3D53C();
        sub_22BE1AE58();
        sub_22C25A2FC();
        sub_22BE1AE58();
        sub_22BE39EAC();
        sub_22BE1AE58();
        (*(v104 + 104))(v102, *MEMORY[0x277D1CA80], v99);
        (*(v104 + 32))(v100, v102, v99);
        break;
      default:
        v67 = sub_22BE19EBC();
        sub_22BE3B620(v67, v13);
        v68 = sub_22BE44744();
        sub_22BE1AA68(v68, v11);
        v69 = *v11;
        v70 = v11[1];
        v71 = v11[3];
        v103 = v11[2];
        v72 = v11[4];
        v73 = v11[5];
        v74 = sub_22BE19454();
        sub_22BE29D7C(v74, v75);

        sub_22BE19454();
        sub_22C26F5E4();
        sub_22BE3D53C();
        sub_22BE1AE58();
        sub_22BE1AE58();
        sub_22BE3C968();
        sub_22BE1AE58();
        (*(v104 + 104))(v100, *MEMORY[0x277D1CA20], v99);
        break;
    }
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

void ResponseVisual.UILabel.init(transcript:)()
{
  sub_22BE2BB34();
  v4 = sub_22BE1B254();
  v5 = type metadata accessor for TranscriptProtoUIConfirmationLabel(v4);
  v6 = sub_22BE19448(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE2582C();
  MEMORY[0x28223BE20](v9);
  v10 = sub_22C2595A0();
  v11 = type metadata accessor for TranscriptProtoLabel(v10);
  v12 = sub_22BE19448(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BE1955C();
  sub_22C101678();
  if (v1)
  {
    sub_22C0E9A74();
    sub_22BE1AE58();
  }

  else
  {
    v15 = sub_22C1088AC();
    sub_22BE3B620(v15, v3);
    v16 = sub_22C1088E8();
    sub_22BE1AA68(v16, v2);
    v17 = *v2;
    v18 = v2[1];
    v19 = v2[2];
    v20 = v2[3];

    v21 = sub_22BE236C8();
    MEMORY[0x2318A7D90](v21);
    sub_22C0E9A74();
    sub_22BE1AE58();
    sub_22BE1AE58();
    sub_22BE36680();
    sub_22BE1AE58();
    v22 = *MEMORY[0x277D1CA90];
    v23 = sub_22C26F6D4();
    sub_22BE1834C(v23);
    (*(v24 + 104))(v0, v22);
  }

  sub_22BEE93D4();
}

uint64_t ResponseVisual.ResponseVisualOptions.init(transcript:)()
{
  sub_22C25A074();
  v1 = *v0;
  sub_22C26F534();
  sub_22C0E9A74();
  return sub_22BE1AE58();
}

void TranscriptProtoResponseVisual.init(handwritten:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v169 = v25;
  v26 = sub_22BE5CE4C(&qword_27D9091D0, &qword_22C27FDC8);
  sub_22BE19448(v26);
  v28 = *(v27 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v29);
  sub_22C25984C(v30);
  v179 = sub_22C26F6C4();
  v31 = sub_22BE179D8(v179);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v31);
  sub_22BE17B98();
  sub_22BE43220();
  MEMORY[0x28223BE20](v36);
  sub_22BE19E94();
  v178 = v37;
  sub_22BE183BC();
  v38 = sub_22C26F6D4();
  v39 = sub_22BE179D8(v38);
  v182 = v40;
  v183 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v39);
  sub_22BE1958C();
  MEMORY[0x28223BE20](v43);
  sub_22BEC0508();
  MEMORY[0x28223BE20](v44);
  sub_22BE19E94();
  v181 = v45;
  v46 = sub_22BE183BC();
  v47 = type metadata accessor for TranscriptProtoUILabel(v46);
  v177 = sub_22BE179D8(v47);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v177);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v50);
  sub_22BE19E94();
  v176 = v51;
  sub_22BE183BC();
  v52 = sub_22C26F554();
  v53 = sub_22BE18910(v52, &v188);
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v53);
  sub_22BE17A44();
  sub_22BE190A8(v56);
  v57 = sub_22BE5CE4C(&qword_27D90EC58, &unk_22C2AE710);
  sub_22BE19448(v57);
  v59 = *(v58 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v60);
  sub_22BE1A174();
  sub_22BE18950(v61);
  v62 = sub_22C26F674();
  v63 = sub_22BE179D8(v62);
  v65 = v64;
  v67 = *(v66 + 64);
  MEMORY[0x28223BE20](v63);
  sub_22BE17B98();
  v188 = v68;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v69);
  v70 = sub_22BE39EE8();
  v71 = type metadata accessor for TranscriptProtoUIType(v70);
  v72 = sub_22BE17A18(v71);
  v187 = v73;
  v75 = *(v74 + 64);
  MEMORY[0x28223BE20](v72);
  sub_22BE17A44();
  v190 = v76;
  v77 = MEMORY[0x2318A7C70]();
  v78 = *(v77 + 16);
  v170 = v24;
  if (v78)
  {
    v174 = v33;
    a10 = MEMORY[0x277D84F90];
    v189 = v77;
    v184 = v78;
    sub_22BE70B1C(0, v78, 0);
    v79 = 0;
    v80 = a10;
    v81 = *(v65 + 80);
    sub_22BE19E14();
    v185 = v82 + v83;
    v186 = (v65 + 8);
    sub_22C25A634();
    while (v79 < *(v84 + 16))
    {
      v85 = *(v65 + 16);
      v85(v20, v185 + *(v65 + 72) * v79, v62);
      v86 = sub_22C259FF4();
      (v85)(v86);
      TranscriptProtoUIType.init(handwritten:)();
      if (&a10)
      {

        v94 = sub_22C26F6F4();
        sub_22BE18524(v94);
        (*(v95 + 8))(v170);
        v96 = *v186;
        v97 = sub_22BE33B3C();
        v98(v97);

        goto LABEL_21;
      }

      (*v186)(v20, v62);
      a10 = v80;
      v88 = *(v80 + 16);
      v87 = *(v80 + 24);
      if (v88 >= v87 >> 1)
      {
        sub_22BE1AAE4(v87);
        sub_22BE39E18();
        sub_22BE70B1C(v91, v92, v93);
        sub_22C25A634();
        v80 = a10;
      }

      ++v79;
      *(v80 + 16) = v88 + 1;
      sub_22BE25AD8();
      sub_22BE3B620(v190, v80 + v89 + *(v90 + 72) * v88);
      v84 = v189;
      if (v184 == v79)
      {
        v166 = v80;

        v24 = v170;
        v33 = v174;
        goto LABEL_11;
      }
    }

    goto LABEL_23;
  }

  sub_22C25A4F4(MEMORY[0x277D84F90]);
LABEL_11:
  v99 = sub_22C26F684();
  v100 = *(v99 + 16);
  v101 = v183;
  if (v100)
  {
    v102 = sub_22BE3122C(MEMORY[0x277D84F90]);
    sub_22BE70AC4(v102, v100, 0);
    v103 = 0;
    v190 = a10;
    sub_22BE25AD8();
    sub_22BE417A8(v99 + v104);
    sub_22BE36638(v105 + 16);
    sub_22C1CEFB0(v106 + 88);
    v172 = *MEMORY[0x277D1CA90];
    v171 = (v107 + 8);
    v108 = v181;
    v175 = v99;
    while (v103 < *(v99 + 16))
    {
      v109 = v182[9];
      v189 = v103;
      v110 = v173 + v109 * v103;
      v111 = v182[2];
      v111(v108, v110, v101);
      v112 = sub_22C259FF4();
      (v111)(v112);
      type metadata accessor for TranscriptProtoLabel(0);
      sub_22BE1A140();
      v188 = v113;
      sub_22BE19DC4(v114, v115, v116, v113);
      v117 = v167 + *(v177 + 20);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v118 = sub_22BE2BA80();
      (v111)(v118);
      v119 = v182[11];
      v120 = sub_22BE38FD8();
      if (v121(v120) != v172)
      {
        goto LABEL_24;
      }

      sub_22BE33554(&a15);
      v122 = sub_22BE38FD8();
      v123(v122);
      sub_22BE33554(&a13);
      v124 = sub_22BE36658();
      v125(v124);
      sub_22BE33554(&a12);
      v126 = sub_22BE336E8();
      v127(v126);
      v128 = sub_22C26F6A4();
      v186 = v129;
      v187 = v128;
      sub_22C26F654();
      v130 = v180 + *(type metadata accessor for TranscriptProtoUIConfirmationLabel(0) + 24);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v131 = *(v33 + 8);
      v132 = sub_22BE31038();
      v131(v132);
      v101 = v183;
      (v131)(v178, v179);
      v133 = *v171;
      v134 = sub_22BE2590C();
      v133(v134);
      v135 = sub_22BE33560();
      v133(v135);
      sub_22C25AAD0();
      v136 = sub_22BE22B8C();
      sub_22BE19DC4(v136, v137, v138, v188);
      sub_22BE23108();
      sub_22BE2343C();
      v139 = sub_22C259E7C();
      sub_22BE3B620(v139, v176);
      v140 = v190;
      a10 = v190;
      v142 = *(v190 + 16);
      v141 = *(v190 + 24);
      if (v142 >= v141 >> 1)
      {
        sub_22BE3D1E4(v141);
        sub_22BE31778();
        sub_22BE70AC4(v147, v148, v149);
        v140 = a10;
      }

      v103 = v189 + 1;
      *(v140 + 16) = v142 + 1;
      sub_22BE25AD8();
      v190 = v143;
      sub_22BE46DDC(v143 + v144);
      v145 = sub_22C1088AC();
      sub_22BE3B620(v145, v146);
      v99 = v175;
      v108 = v181;
      if (v100 == v103)
      {

        v24 = v170;
        v150 = v190;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    sub_22BE3FFAC();
    __break(1u);
    return;
  }

  v150 = MEMORY[0x277D84F90];
LABEL_20:
  sub_22BE3C6E0(&v186);
  sub_22C26F6E4();
  v151 = type metadata accessor for TranscriptProtoResponseVisualOptions(0);
  sub_22C25A374(v151);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v152 = sub_22C26F544();
  sub_22BE1B5D4(&v187);
  v153(v99);
  *v168 = v152 & 1;
  sub_22BE25FFC();
  v158 = sub_22C18F17C(v154, v155, v156, v157);
  v159 = type metadata accessor for TranscriptProtoResponseVisual(v158);
  sub_22BE46004(v159);
  sub_22BE32EE0();
  sub_22C25AE64(v160, v161, v162, v163);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v164 = sub_22C26F6F4();
  sub_22BE18524(v164);
  (*(v165 + 8))(v24);
  *v169 = v166;
  v169[1] = v150;
  sub_22C25AB4C();
  sub_22BE2343C();
  sub_22C25A634();
LABEL_21:
  sub_22BEE94B0();
  sub_22BE18478();
}

void TranscriptProtoUIType.init(handwritten:)()
{
  sub_22BE19130();
  v5 = v4;
  sub_22BE4066C();
  v6 = sub_22C26F5A4();
  v7 = sub_22BE179D8(v6);
  v123 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v11);
  sub_22BE19E94();
  sub_22BE183BC();
  v12 = sub_22C26F664();
  v13 = sub_22BE179D8(v12);
  v122 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BE17B98();
  sub_22BE43220();
  MEMORY[0x28223BE20](v17);
  sub_22BE19E94();
  sub_22BE183BC();
  v18 = sub_22C26F624();
  v19 = sub_22BE179D8(v18);
  v127 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22BE17B98();
  sub_22BE3CFC4();
  MEMORY[0x28223BE20](v23);
  sub_22BE19E94();
  v24 = sub_22BE5CE4C(&qword_27D9091E0, &qword_22C27FDD8);
  v25 = sub_22BE19448(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v28);
  sub_22C2595A0();
  v29 = sub_22C26F5F4();
  v30 = sub_22BE179D8(v29);
  v130 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  sub_22BE25544();
  MEMORY[0x28223BE20](v34);
  sub_22BE19E94();
  sub_22BE183BC();
  v35 = sub_22C26F674();
  v36 = sub_22C2594A0(v35);
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  sub_22BE197B8();
  v41 = type metadata accessor for TranscriptProtoUitype(0);
  sub_22C259804();
  v46 = sub_22C18F17C(v42, v43, v44, v45);
  v47 = *(type metadata accessor for TranscriptProtoUIType(v46) + 20);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C25A068();
  v48(v0, v5, v3);
  sub_22C25AA50();
  v49 = sub_22BE1B62C();
  v51 = v50(v49);
  if (v51 == *MEMORY[0x277D1CA20])
  {
    v52 = sub_22BE431CC(v38);
    v53(v52, v3);
    sub_22C25A35C();
    v54 = sub_22BE200D4();
    v55(v54);
    sub_22C259E94(v130);
    sub_22C25A1E8();
    v56();
    sub_22C26F5D4();
    sub_22C26F5C4();
    v57 = sub_22C26F5B4();
    v124 = v58;
    v125 = v57;
    v59 = v2 + *(type metadata accessor for TranscriptProtoArchiveViewPayload(0) + 28);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v60 = *(v130 + 8);
    v61 = sub_22BE18944();
    v60(v61);
    sub_22C25AAD0();
    v2[4] = v125;
    v2[5] = v124;
    (*(v38 + 8))(v5, v3);
    v62 = sub_22BE200D4();
    v60(v62);
    sub_22BE25C08();
  }

  else
  {
    v133 = v41;
    if (v51 != *MEMORY[0x277D1CA28])
    {
      v41 = v3;
      if (v51 == *MEMORY[0x277D1CA80])
      {
        v81 = *(v38 + 96);
        v82 = sub_22BE260B8();
        v83(v82);
        sub_22C18F338();
        v84 = sub_22BE291B0();
        v85(v84);
        sub_22BE29400();
        v86 = sub_22BE18240();
        v87(v86);
        sub_22C25A5F8();
        TranscriptProtoControlPayload.init(handwritten:)();
        if (!v1)
        {
          v116 = *(v38 + 8);
          v117 = sub_22BE3CEF4();
          v118(v117);
          v119 = *(v123 + 8);
          v120 = sub_22BE291B0();
          v121(v120);
          sub_22C0E9A5C();
          swift_storeEnumTagMultiPayload();
          goto LABEL_6;
        }

        v88 = *(v38 + 8);
        v89 = sub_22BE3CEF4();
        v90(v89);
        v91 = *(v123 + 8);
        v92 = sub_22BE291B0();
        v93(v92);
      }

      else
      {
        if (v51 == *MEMORY[0x277D1CA30])
        {
          v94 = *(v38 + 96);
          v95 = sub_22BE260B8();
          v96(v95);
          sub_22C18F338();
          v97 = sub_22BE3C968();
          v98(v97);
          sub_22BE29400();
          v99 = sub_22BE3E8FC();
          v100(v99);
          v101 = sub_22C26F634();
          v129 = v102;
          v132 = v101;
          v103 = sub_22C26F654();
          v126 = v104;
          v128 = v103;
          v105 = type metadata accessor for TranscriptProtoPluginSnippetPayload(0);
          sub_22C25A4E8(v105);
          _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
          v106 = *(v38 + 8);
          v107 = sub_22BE3CEF4();
          v108(v107);
          v41 = *(v122 + 8);
          v109 = sub_22BE18944();
          v41(v109);
          v110 = sub_22BE3C968();
          v41(v110);
          *v2 = v132;
          v2[1] = v129;
          v2[2] = v128;
          v2[3] = v126;
          sub_22C0E9A5C();
          swift_storeEnumTagMultiPayload();
          goto LABEL_6;
        }

        sub_22C108358();
        v111 = sub_22BE196B4();
        sub_22BE3C904(v111, v112);
        v113 = *(v38 + 8);
        v114 = sub_22BE3CEF4();
        v113(v114);
        v115 = sub_22BE260B8();
        v113(v115);
      }

      sub_22BE3D53C();
      sub_22BE1AE58();
      goto LABEL_7;
    }

    v63 = sub_22BE431CC(v38);
    v64(v63, v3);
    sub_22C25A35C();
    v65 = sub_22BE1B074();
    v66(v65);
    sub_22C1CF23C();
    v67 = sub_22BE261AC();
    v68(v67);
    v69 = sub_22C26F614();
    v131 = v70;
    v71 = type metadata accessor for TranscriptProtoLiveActivityPayload(0);
    sub_22C25A548(v71);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v72 = *(v38 + 8);
    v73 = sub_22BE33BE8();
    v74(v73);
    v75 = *(v127 + 8);
    v76 = sub_22BE1B73C();
    v75(v76);
    v77 = sub_22C259FF4();
    v75(v77);
    v41 = v133;
    *v2 = v69;
    v2[1] = v131;
    sub_22BE25C08();
  }

  swift_storeEnumTagMultiPayload();
LABEL_6:
  v78 = sub_22BE22B8C();
  sub_22BE19DC4(v78, v79, v80, v41);
  sub_22C25A6D0();
  sub_22BE2343C();
LABEL_7:
  sub_22BE1AB28();
  sub_22BE18478();
}

void TranscriptProtoUILabel.init(handwritten:)()
{
  sub_22BE19130();
  v3 = v2;
  v4 = sub_22BE5CE4C(&qword_27D9091D0, &qword_22C27FDC8);
  sub_22BE19448(v4);
  v6 = *(v5 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE22BFC();
  v8 = sub_22C26F6C4();
  v9 = sub_22BE179D8(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BE25544();
  MEMORY[0x28223BE20](v14);
  sub_22BE22D7C(v15, v16, v17, v18, v19, v20, v21, v22, v56);
  v23 = sub_22C26F6D4();
  v24 = sub_22BE179D8(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  sub_22BE197B8();
  type metadata accessor for TranscriptProtoLabel(0);
  sub_22BE1A140();
  v59 = v29;
  v33 = sub_22C18F17C(v30, v31, v32, v29);
  v34 = *(type metadata accessor for TranscriptProtoUILabel(v33) + 20);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE36288();
  v35(v0, v3, v23);
  v36 = *(v26 + 88);
  v37 = sub_22BE29264();
  if (v38(v37) == *MEMORY[0x277D1CA90])
  {
    sub_22C25A32C();
    v39 = sub_22BE29264();
    v40(v39);
    sub_22C25A35C();
    v41 = sub_22BE291B0();
    v42(v41);
    v43 = sub_22C259E94(v11);
    v44(v43, v60, v8);
    v45 = sub_22C26F6A4();
    v57 = v46;
    v58 = v45;
    v47 = sub_22C26F654();
    v48 = sub_22BE32C3C();
    v49 = type metadata accessor for TranscriptProtoUIConfirmationLabel(v48);
    sub_22C25A840(v49);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    (*(v26 + 8))(v3, v23);
    v50 = *(v11 + 8);
    v51 = sub_22BE261AC();
    v50(v51);
    v52 = sub_22BE36318();
    v50(v52);
    *v1 = v58;
    v1[1] = v57;
    v1[2] = v47;
    v1[3] = v0;
    v53 = sub_22BE3C530();
    sub_22BE19DC4(v53, v54, v55, v59);
    sub_22BE2343C();
    sub_22BE3C298();
    sub_22BE18478();
  }

  else
  {
    sub_22C274004();
    __break(1u);
  }
}

uint64_t TranscriptProtoResponseVisualOptions.init(handwritten:)()
{
  sub_22C1CECFC();
  v2 = type metadata accessor for TranscriptProtoResponseVisualOptions(0);
  sub_22C25A0A4(v2);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v3 = sub_22C26F544();
  v4 = sub_22C26F554();
  sub_22BE18524(v4);
  result = (*(v5 + 8))(v0);
  *v1 = v3 & 1;
  return result;
}

void ResponseVisual.UIType.ArchivedViewPayload.init(transcript:)()
{
  sub_22BE3C358();
  sub_22BE28CF0();
  sub_22C25A7F8(v0);
  v1 = sub_22BE191CC();
  sub_22BE29D7C(v1, v2);

  sub_22C25A84C();
  sub_22C259F24();
  sub_22C26F5E4();
  sub_22BE26148();
  sub_22BE1AE58();
  sub_22BE267B8();
}

void ResponseVisual.UIType.ControlPayload.init(transcript:)()
{
  sub_22BE1B214();
  v3 = v2;
  sub_22BE3C4D0();
  v4 = sub_22C2729D4();
  v5 = sub_22BE19448(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE19338();
  v8 = sub_22BE5CE4C(&qword_27D911E40, &qword_22C2B5AD8);
  sub_22BE19448(v8);
  v10 = *(v9 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE234F4();
  v12 = *v3;
  v13 = v3[1];
  v14 = sub_22BE31038();
  sub_22BE29D7C(v14, v15);
  sub_22BE31038();
  sub_22C2729C4();
  sub_22C101768();
  if (v0)
  {
    sub_22BE26148();
    sub_22BE1AE58();
    sub_22BE233E8(v1, &qword_27D911E40, &qword_22C2B5AD8);
  }

  else
  {
    sub_22BE233E8(v1, &qword_27D911E40, &qword_22C2B5AD8);
    sub_22C25A610();
    sub_22C26F594();
    sub_22BE26148();
    sub_22BE1AE58();
  }

  sub_22BE36324();
  sub_22BE25C6C();
}

uint64_t ResponseVisual.UILabel.UIConfirmationPayload.init(transcript:)()
{
  sub_22BE28CF0();
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];

  sub_22C25A84C();
  sub_22C259F24();
  MEMORY[0x2318A7D90]();
  sub_22BE26148();
  return sub_22BE1AE58();
}

void TranscriptProtoArchiveViewPayload.init(handwritten:)()
{
  sub_22BE3C358();
  sub_22C259E88();
  v5 = sub_22C26F5D4();
  v7 = v6;
  sub_22C26F5C4();
  sub_22C25A560();
  v8 = sub_22C26F5B4();
  v9 = sub_22C25A628();
  v10 = type metadata accessor for TranscriptProtoArchiveViewPayload(v9);
  sub_22C25AAB8(v10);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v11 = sub_22C26F5F4();
  sub_22BE18524(v11);
  (*(v12 + 8))(v1);
  *v0 = v5;
  v0[1] = v7;
  v0[2] = v2;
  v0[3] = v3;
  v0[4] = v8;
  v0[5] = v4;
  sub_22BE267B8();
}

void TranscriptProtoControlPayload.init(handwritten:)()
{
  sub_22BE2BB34();
  sub_22C18F140();
  sub_22BE33FA8();
  v2 = sub_22C2729D4();
  v3 = sub_22C2594A0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE294E0();
  sub_22C26F584();
  v8 = sub_22C2729B4();
  v10 = v9;
  v11 = *(v5 + 8);
  v12 = sub_22BE196A8();
  v13(v12);
  if (v10 >> 60 == 15)
  {
    sub_22BE5CE4C(&qword_27D915680, &qword_22C2CCA40);
    v14 = sub_22BE43258();
    v16 = v15;
    sub_22C108598();
    v17 = sub_22BE196B4();
    *v18 = v14;
    v18[1] = v16;
    sub_22C25A590(v17, v18);
    v19 = sub_22C26F5A4();
    sub_22BE18524(v19);
    (*(v20 + 8))(v0);
  }

  else
  {
    v21 = type metadata accessor for TranscriptProtoControlPayload(0);
    sub_22C25A948(v21);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v22 = sub_22C26F5A4();
    sub_22BE18524(v22);
    (*(v23 + 8))(v0);
    *v1 = v8;
    v1[1] = v10;
  }

  sub_22BEE93D4();
}

void TranscriptProtoDialogType.init(handwritten:)()
{
  sub_22BE19130();
  sub_22C25AA94();
  v3 = sub_22BE5CE4C(&qword_27D90EBB8, &qword_22C297060);
  sub_22BE19448(v3);
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE3100C();
  v7 = sub_22C26F4B4();
  v8 = sub_22C2594A0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = sub_22BE1AD20();
  type metadata accessor for TranscriptProtoDialogFormat(v13);
  sub_22BE3AE2C();
  v18 = sub_22C18F17C(v14, v15, v16, v17);
  v19 = type metadata accessor for TranscriptProtoDialogType(v18);
  sub_22BE38954(v19);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C25A068();
  v20 = sub_22BE194C4();
  v21(v20);
  sub_22C25AA50();
  v22 = sub_22BE196A8();
  v24 = v23(v22);
  if (v24 == *MEMORY[0x277D1C9E0])
  {
    sub_22C25A604();
    v25 = sub_22BE196A8();
    v26(v25);
    v27 = sub_22C25AC9C();
    v28 = type metadata accessor for TranscriptProtoStaticText(v27);
    sub_22C25A0A4(v28);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v29 = *(v10 + 8);
    v30 = sub_22BE1B18C();
    v31(v30);
    *v0 = v2;
    v0[1] = v1;
LABEL_13:
    sub_22BE2590C();
    swift_storeEnumTagMultiPayload();
    sub_22C2597E4();
    sub_22BE19DC4(v59, v60, v61, v62);
    sub_22BE3C5E4();
    sub_22BE2343C();
    sub_22BE22978();
    sub_22BE18478();
    return;
  }

  if (v24 == *MEMORY[0x277D1C9D8])
  {
    sub_22C25A604();
    v32 = sub_22BE196A8();
    v33(v32);
    v34 = sub_22C25AC9C();
    v35 = type metadata accessor for TranscriptProtoCATDialog(v34);
    sub_22C25A0A4(v35);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v36 = *(v10 + 8);
    v37 = sub_22BE1B18C();
    v38(v37);
    *v0 = v2;
    v0[1] = v1;
    goto LABEL_13;
  }

  if (v24 == *MEMORY[0x277D1C9F8])
  {
    sub_22C25A604();
    v39 = sub_22BE196A8();
    v40(v39);
    v41 = sub_22C25AC9C();
    v42 = type metadata accessor for TranscriptProtoSonicText(v41);
    sub_22C25A0A4(v42);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v43 = *(v10 + 8);
    v44 = sub_22BE1B18C();
    v45(v44);
    *v0 = v2;
    v0[1] = v1;
    goto LABEL_13;
  }

  if (v24 == *MEMORY[0x277D1CA00])
  {
    sub_22C25A604();
    v46 = sub_22BE196A8();
    v47(v46);
    v48 = sub_22C25AC9C();
    v49 = type metadata accessor for TranscriptProtoGeneratedText(v48);
    sub_22C25A0A4(v49);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v50 = *(v10 + 8);
    v51 = sub_22BE1B18C();
    v52(v51);
    *v0 = v2;
    v0[1] = v1;
    goto LABEL_13;
  }

  if (v24 == *MEMORY[0x277D1C9F0])
  {
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v53 = *(v10 + 8);
    v54 = sub_22BE1B18C();
    v55(v54);
    goto LABEL_13;
  }

  if (v24 == *MEMORY[0x277D1C9E8])
  {
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v56 = *(v10 + 8);
    v57 = sub_22BE1B18C();
    v58(v57);
    goto LABEL_13;
  }

  sub_22C274004();
  __break(1u);
}

void ResponseOutput.VisualOutput.init(transcript:)()
{
  sub_22BE19130();
  sub_22C259C10(v6);
  v106 = sub_22C26F444();
  v7 = sub_22BE179D8(v106);
  v109 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE17A44();
  v12 = sub_22BE48A8C(v11);
  v13 = type metadata accessor for TranscriptProtoAceCommandOutputPayload(v12);
  v14 = sub_22BE19448(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BE17B98();
  sub_22BE3CFC4();
  MEMORY[0x28223BE20](v17);
  v26 = sub_22BE22D7C(v18, v19, v20, v21, v22, v23, v24, v25, v101);
  v27 = type metadata accessor for TranscriptProtoPluginSnippetOutputPayload(v26);
  v28 = sub_22BE19448(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  sub_22BE17B98();
  sub_22BE3E334();
  MEMORY[0x28223BE20](v31);
  sub_22BE3E3EC(v32, v33, v34, v35, v36, v37, v38, v39, v102);
  v40 = sub_22BE5CE4C(&qword_27D911EF0, &qword_22C2B5C10);
  sub_22BE19448(v40);
  v42 = *(v41 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v43);
  v44 = sub_22BE28E00();
  v45 = type metadata accessor for TranscriptProtoSystemSnippetOutputPayload(v44);
  v46 = sub_22BE19448(v45);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  v49 = sub_22BE19820();
  v50 = type metadata accessor for TranscriptProtoInAppResponseOutputPayload(v49);
  v51 = sub_22BE19448(v50);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v51);
  sub_22BE195A8();
  MEMORY[0x28223BE20](v54);
  v55 = sub_22BE39EE8();
  v56 = type metadata accessor for TranscriptProtoLiveActivityOutputPayload(v55);
  v57 = sub_22BE19448(v56);
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v57);
  sub_22BE2582C();
  MEMORY[0x28223BE20](v60);
  v61 = sub_22BE20558();
  v62 = type metadata accessor for TranscriptProtoVisualOutputType(v61);
  v63 = sub_22BE18000(v62);
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v63);
  sub_22BE188B0();
  sub_22C104D3C();
  if (v1)
  {
    sub_22BE3E6EC();
    sub_22BE1AE58();
  }

  else
  {
    sub_22BE180C8();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v93 = sub_22C259E7C();
        sub_22BE3B620(v93, v94);
        v95 = sub_22C1088E8();
        sub_22BE1AA68(v95, v2);
        v96 = *v2;
        v97 = v2[1];

        v70 = v110;
        sub_22C26F374();
        sub_22BE3E6EC();
        sub_22BE1AE58();
        sub_22BE1AE58();
        sub_22BE1AB1C();
        sub_22BE1AE58();
        v71 = MEMORY[0x277D1C988];
        goto LABEL_11;
      case 2u:
        v77 = sub_22C259E7C();
        sub_22BE3B620(v77, v4);
        v78 = *v4;
        v79 = v4[1];
        sub_22C26F434();
        v80 = sub_22BE3C688();
        sub_22BE1AB5C(v80, v81, v106);
        if (v82)
        {
          sub_22BE233E8(v5, &qword_27D911EF0, &qword_22C2B5C10);
          sub_22C108358();
          v83 = sub_22BE196B4();
          sub_22BE3C904(v83, v84);
          sub_22BE3E6EC();
          sub_22BE1AE58();
          sub_22C0E9848();
          sub_22BE1AE58();
        }

        else
        {
          sub_22BE3E6EC();
          sub_22BE1AE58();
          sub_22C0E9848();
          sub_22BE1AE58();
          v98 = *(v109 + 32);
          v99 = sub_22BE261AC();
          v100(v99);
        }

        break;
      case 3u:
        v85 = sub_22C259E7C();
        sub_22BE3B620(v85, v107);
        v86 = sub_22C1088AC();
        sub_22BE1AA68(v86, v103);
        v87 = *v103;
        v88 = v103[1];
        v89 = v103[2];
        v90 = v103[3];
        v91 = sub_22BE260B8();
        sub_22BE29D7C(v91, v92);

        sub_22C25A718();
        sub_22C259F24();
        sub_22C26F3B4();
        sub_22BE3E6EC();
        sub_22BE1AE58();
        sub_22BE1AE58();
        sub_22BE39EAC();
        sub_22BE1AE58();
        (*(v109 + 104))(v110, *MEMORY[0x277D1C998], v106);
        break;
      case 4u:
        v72 = sub_22C259E7C();
        sub_22BE3B620(v72, v108);
        v73 = sub_22BE385E4();
        sub_22BE1AA68(v73, v104);
        ResponseOutput.VisualOutput.AceCommandOutputPayload.init(transcript:)();
        sub_22BE3E6EC();
        sub_22BE1AE58();
        sub_22C259A78();
        sub_22BE1AE58();
        (*(v109 + 104))(v105, *MEMORY[0x277D1C930], v106);
        v74 = *(v109 + 32);
        v75 = sub_22BE27A44();
        v76(v75);
        break;
      default:
        v66 = sub_22C259E7C();
        sub_22BE3B620(v66, v0);
        v67 = sub_22BE19EBC();
        sub_22BE1AA68(v67, v3);
        v68 = *v3;
        v69 = v3[1];

        v70 = v110;
        sub_22C26F374();
        sub_22BE3E6EC();
        sub_22BE1AE58();
        sub_22BE1AE58();
        sub_22BE37490();
        sub_22BE1AE58();
        v71 = MEMORY[0x277D1C990];
LABEL_11:
        (*(v109 + 104))(v70, *v71, v106);
        break;
    }
  }

  sub_22BE35D48();
  sub_22BE18478();
}

uint64_t sub_22C242988(uint64_t *a1)
{
  sub_22C25A828(a1);

  v2 = sub_22BE29454();
  v1(v2);
  sub_22BE1B5EC();
  return sub_22BE1AE58();
}

void sub_22C242A30()
{
  sub_22BE3C358();
  v2 = sub_22C25A828(v1);
  v3 = v2[2];
  v4 = v2[3];
  v5 = sub_22BE29454();
  sub_22BE29D7C(v5, v6);

  v7 = sub_22BE29454();
  v0(v7);
  sub_22BE1B5EC();
  sub_22BE1AE58();
  sub_22BE267B8();
}

void ResponseOutput.VisualOutput.AceCommandOutputPayload.init(transcript:)()
{
  sub_22BE19130();
  v4 = sub_22BE5CE4C(&qword_27D90EB58, &unk_22C2AE6D0);
  sub_22BE19448(v4);
  v6 = *(v5 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE2C64C();
  v8 = sub_22BE5CE4C(&qword_27D915688, &qword_22C2CCA48);
  sub_22BE19448(v8);
  v10 = *(v9 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE1AB08();
  v12 = sub_22C26F354();
  v13 = sub_22C259488(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BE25544();
  MEMORY[0x28223BE20](v18);
  sub_22BE32374();
  sub_22BE27BA4();
  sub_22BE22814();
  sub_22C100A48();
  if (v0)
  {
    goto LABEL_5;
  }

  v19 = sub_22BE23E90();
  sub_22BE1AB5C(v19, v20, v1);
  if (v21)
  {
    sub_22BE233E8(v2, &qword_27D915688, &qword_22C2CCA48);
    sub_22C108358();
    v22 = sub_22BE196B4();
    sub_22BE3C904(v22, v23);
LABEL_5:
    sub_22C259A78();
    sub_22BE1AE58();
    goto LABEL_6;
  }

  v24 = *(v15 + 32);
  v25 = sub_22BE1824C();
  v26(v25);
  v27 = sub_22C259E94(v15);
  v28(v27, v3, v1);
  sub_22C26F334();
  sub_22C259A78();
  sub_22BE1AE58();
  v29 = *(v15 + 8);
  v30 = sub_22BE33BE8();
  v31(v30);
LABEL_6:
  sub_22BE35D48();
  sub_22BE18478();
}

void TranscriptProtoVisualOutput.init(handwritten:)()
{
  sub_22BE19130();
  v3 = v2;
  sub_22BE33FA8();
  v156 = sub_22C26F364();
  v4 = sub_22BE179D8(v156);
  v152 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE17A44();
  v151 = v8;
  sub_22BE183BC();
  v155 = sub_22C26F3D4();
  v9 = sub_22BE179D8(v155);
  v150 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BE17A44();
  sub_22C259AC0(v13);
  v159 = sub_22C26F3F4();
  v14 = sub_22BE179D8(v159);
  v154 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BE17A44();
  v153 = v18;
  sub_22BE183BC();
  v161 = sub_22C26F424();
  v19 = sub_22BE179D8(v161);
  v158 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22BE17A44();
  v24 = sub_22BE48A8C(v23);
  v25 = type metadata accessor for TranscriptProtoVisualOutput(v24);
  v26 = sub_22BE18000(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22BE1955C();
  v162 = sub_22C26F394();
  v29 = sub_22BE179D8(v162);
  v160 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22BE19820();
  v33 = sub_22C26F444();
  v34 = sub_22BE179D8(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22BE197B8();
  type metadata accessor for TranscriptProtoVisualOutputType(0);
  v39 = sub_22C259C20();
  sub_22BE19DC4(v39, v40, v41, v42);
  v43 = v0 + *(v25 + 20);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C25A080();
  v44 = sub_22BE1A6BC();
  v45(v44);
  v46 = *(v36 + 88);
  v47 = sub_22BE41FB4();
  v49 = v48(v47);
  if (v49 == *MEMORY[0x277D1C990])
  {
    v50 = *(v36 + 96);
    v51 = sub_22BE41FB4();
    v52(v51);
    v53 = v160;
    sub_22C18F338();
    v54 = sub_22BE291B0();
    v56 = v55(v54);
    v161 = &v149;
    MEMORY[0x28223BE20](v56);
    sub_22C25A034();
    *(v57 - 16) = v1;
    sub_22C259548();
    sub_22C259290(v58, v59);
    sub_22BE354D0();
    sub_22C270784();
    sub_22C25A954();
    v60 = sub_22BE2BA80();
    v61(v60);
    sub_22BE3E6EC();
    sub_22BE1AE58();
    sub_22BE3A298();
    v62 = sub_22BE33B3C();
    sub_22BE3B620(v62, v63);
    v64 = *(v53 + 8);
    v65 = sub_22C25A888();
    v66(v65);
    goto LABEL_8;
  }

  if (v49 == *MEMORY[0x277D1C988])
  {
    v67 = sub_22BE431CC(v36);
    v68(v67, v33);
    v70 = v157;
    v69 = v158;
    v71 = *(v158 + 32);
    v72 = sub_22BE3C968();
    v74 = v73(v72);
    sub_22C25A7D8(v74, v75, v76, v77, v78, v79, v80, v81, v149);
    MEMORY[0x28223BE20](v82);
    sub_22C25A034();
    *(v83 - 16) = v157;
    sub_22C259548();
    sub_22C259290(v84, v85);
    sub_22BE354D0();
    sub_22C270784();
    sub_22C25A954();
    v86 = sub_22BE38FD8();
    v87(v86);
    sub_22BE3E6EC();
    sub_22BE1AE58();
    sub_22BE3A298();
    v88 = sub_22BE36318();
    sub_22BE3B620(v88, v89);
    (*(v69 + 8))(v70, v161);
LABEL_8:
    sub_22BEE94B0();
    sub_22BE18478();
    return;
  }

  if (v49 == *MEMORY[0x277D1C9A0])
  {
    v90 = sub_22BE431CC(v36);
    v91(v90, v33);
    v92 = v154;
    sub_22C18F458();
    v162 = v3;
    v93 = v153;
    v94 = sub_22BE33FCC();
    v96 = v95(v94);
    v161 = &v149;
    MEMORY[0x28223BE20](v96);
    sub_22C25A034();
    *(v97 - 16) = v93;
    sub_22C259548();
    sub_22C259290(v98, v99);
    sub_22BE354D0();
    sub_22C270784();
    sub_22C25A954();
    v100();
    sub_22BE3E6EC();
    sub_22BE1AE58();
    sub_22BE3A298();
    v101 = sub_22BE1AB1C();
    sub_22BE3B620(v101, v102);
    (*(v92 + 8))(v93, v159);
    goto LABEL_8;
  }

  if (v49 == *MEMORY[0x277D1C998])
  {
    v103 = *(v36 + 96);
    v104 = sub_22BE37490();
    v105(v104);
    v107 = v149;
    v106 = v150;
    sub_22C18F338();
    v108 = sub_22BE3C968();
    v110 = v109(v108);
    sub_22C25A7D8(v110, v111, v112, v113, v114, v115, v116, v117, v149);
    MEMORY[0x28223BE20](v118);
    sub_22C25A034();
    *(v119 - 16) = v107;
    sub_22C259548();
    sub_22C259290(v120, v121);
    sub_22BE354D0();
    sub_22C270784();
    sub_22C25A954();
    v122 = sub_22BE194C4();
    v123(v122);
    sub_22BE3E6EC();
    sub_22BE1AE58();
    sub_22BE3A298();
    v124 = sub_22BE27BA4();
    sub_22BE3B620(v124, v125);
    (*(v106 + 8))(v107);
    goto LABEL_8;
  }

  if (v49 == *MEMORY[0x277D1C930])
  {
    v126 = *(v36 + 96);
    v127 = sub_22BE37490();
    v128(v127);
    v130 = v151;
    v129 = v152;
    sub_22C18F338();
    v131 = sub_22BE3C968();
    v133 = v132(v131);
    sub_22C25A7D8(v133, v134, v135, v136, v137, v138, v139, v140, v149);
    MEMORY[0x28223BE20](v141);
    sub_22C25A034();
    *(v142 - 16) = v151;
    sub_22C259548();
    sub_22C259290(v143, v144);
    sub_22BE354D0();
    sub_22C270784();
    sub_22C25A954();
    v145 = sub_22BE194C4();
    v146(v145);
    sub_22BE3E6EC();
    sub_22BE1AE58();
    sub_22BE3A298();
    v147 = sub_22BE27BA4();
    sub_22BE3B620(v147, v148);
    (*(v129 + 8))(v130);
    goto LABEL_8;
  }

  sub_22C274004();
  __break(1u);
}

void sub_22C2434E4()
{
  sub_22BE19130();
  v2 = v1;
  v4 = v3;
  v5 = sub_22BE29454();
  v7 = sub_22BE5CE4C(v5, v6);
  sub_22BE19448(v7);
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE2C64C();
  v11 = v4();
  v13 = v12;
  v14 = v0 + *(v2(0) + 20);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v0 = v11;
  v0[1] = v13;
  v15 = type metadata accessor for TranscriptProtoVisualOutputType(0);
  sub_22C0B1AF0();
  swift_storeEnumTagMultiPayload();
  sub_22BE187DC();
  sub_22BE19DC4(v16, v17, v18, v15);
  sub_22C259F24();
  sub_22BE2343C();
  sub_22BE22978();
  sub_22BE18478();
}

uint64_t sub_22C2435CC()
{
  v0 = sub_22C26EA94();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22BE5CE4C(&qword_27D9091F8, &qword_22C2AE6C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = (v16 - v7);
  sub_22C26F3E4();
  sub_22C259290(&qword_27D915C90, MEMORY[0x277D1C540]);
  v9 = sub_22C26E2B4();
  v11 = v10;
  (*(v1 + 8))(v4, v0);
  if (v11 >> 60 == 15)
  {
    v9 = 0;
    v12 = 0xC000000000000000;
  }

  else
  {
    v12 = v11;
  }

  v13 = v8 + *(type metadata accessor for TranscriptProtoSystemSnippetOutputPayload(0) + 20);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v8 = v9;
  v8[1] = v12;
  v14 = type metadata accessor for TranscriptProtoVisualOutputType(0);
  swift_storeEnumTagMultiPayload();
  sub_22BE19DC4(v8, 0, 1, v14);
  return sub_22BE2343C();
}

uint64_t sub_22C2437C4()
{
  v0 = sub_22BE5CE4C(&qword_27D9091F8, &qword_22C2AE6C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = (&v13 - v2);
  v4 = sub_22C26F3A4();
  v6 = v5;
  v7 = sub_22C26F3C4();
  v9 = v8;
  v10 = v3 + *(type metadata accessor for TranscriptProtoPluginSnippetOutputPayload(0) + 24);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v3 = v4;
  v3[1] = v6;
  v3[2] = v7;
  v3[3] = v9;
  v11 = type metadata accessor for TranscriptProtoVisualOutputType(0);
  swift_storeEnumTagMultiPayload();
  sub_22BE19DC4(v3, 0, 1, v11);
  return sub_22BE2343C();
}

uint64_t sub_22C2438E0(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C26F364();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22BE5CE4C(&qword_27D9091F8, &qword_22C2AE6C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v14 - v10;
  (*(v4 + 16))(v7, a2, v3);
  TranscriptProtoAceCommandOutputPayload.init(handwritten:)();
  v12 = type metadata accessor for TranscriptProtoVisualOutputType(0);
  swift_storeEnumTagMultiPayload();
  sub_22BE19DC4(v11, 0, 1, v12);
  return sub_22BE2343C();
}

uint64_t TranscriptProtoAceCommandOutputPayload.init(handwritten:)()
{
  sub_22BE1B254();
  v1 = sub_22C26F354();
  v2 = sub_22BE19448(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BE19338();
  v5 = sub_22BE191CC();
  v7 = sub_22BE5CE4C(v5, v6);
  sub_22BE19448(v7);
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE25CD0();
  sub_22C26F344();
  sub_22C25A08C();
  TranscriptProtoAceCommandOutputData.init(handwritten:)();
  v11 = type metadata accessor for TranscriptProtoAceCommandOutputData(0);
  v12 = sub_22BE3C530();
  sub_22BE19DC4(v12, v13, v14, v11);
  v15 = sub_22BE38960();
  v18 = sub_22C18F17C(v15, v16, v17, v11);
  v19 = type metadata accessor for TranscriptProtoAceCommandOutputPayload(v18);
  sub_22BE48874(v19);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v20 = sub_22C26F364();
  sub_22BE18524(v20);
  (*(v21 + 8))(v0);
  sub_22BE200D4();
  return sub_22BE2343C();
}

void TranscriptProtoAceCommandOutputData.init(handwritten:)()
{
  sub_22BE3C358();
  sub_22BE1A5E4();
  v1 = sub_22C26F354();
  v2 = sub_22C259488(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BE19338();
  v7 = sub_22BE5CE4C(&qword_27D90EB70, &qword_22C2CCA50);
  sub_22BE19448(v7);
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE19668();
  v11 = type metadata accessor for TranscriptProtoAceCommandOutputDataEnum(0);
  v12 = sub_22BE38960();
  v15 = sub_22C18F17C(v12, v13, v14, v11);
  v16 = type metadata accessor for TranscriptProtoAceCommandOutputData(v15);
  sub_22BE48874(v16);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE36288();
  v17 = sub_22BE1AB1C();
  v18(v17);
  v19 = *(v4 + 88);
  v20 = sub_22BE25C08();
  v22 = v21(v20);
  if (v22 == *MEMORY[0x277D1C910])
  {
    v23 = sub_22BE3FFC4();
    v24(v23);
    v25 = sub_22C25A6F4();
    v26 = type metadata accessor for TranscriptProtoAddViews(v25);
    sub_22BE38954(v26);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v27 = sub_22C259E3C();
    v28(v27);
    sub_22C259EF8();
LABEL_13:
    swift_storeEnumTagMultiPayload();
    v59 = 0;
LABEL_14:
    sub_22BE19DC4(v0, v59, 1, v11);
    sub_22BE18944();
    sub_22BE2343C();
    sub_22BE267B8();
    return;
  }

  if (v22 == *MEMORY[0x277D1C8E8])
  {
    v29 = sub_22BE3FFC4();
    v30(v29);
    v31 = sub_22C25A6F4();
    v32 = type metadata accessor for TranscriptProtoAddDialogs(v31);
    sub_22BE38954(v32);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v33 = sub_22C259E3C();
    v34(v33);
    sub_22C259EF8();
    goto LABEL_13;
  }

  if (v22 == *MEMORY[0x277D1C908])
  {
    v35 = sub_22BE3FFC4();
    v36(v35);
    v37 = sub_22C25A6F4();
    v38 = type metadata accessor for TranscriptProtoSayIt(v37);
    sub_22BE38954(v38);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v39 = sub_22C259E3C();
    v40(v39);
    sub_22C259EF8();
    goto LABEL_13;
  }

  if (v22 == *MEMORY[0x277D1C918])
  {
    v41 = sub_22BE3FFC4();
    v42(v41);
    v43 = sub_22C25A6F4();
    v44 = type metadata accessor for TranscriptProtoRepeatIt(v43);
    sub_22BE38954(v44);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v45 = sub_22C259E3C();
    v46(v45);
    sub_22C259EF8();
    goto LABEL_13;
  }

  if (v22 == *MEMORY[0x277D1C8F8])
  {
    v47 = sub_22BE3FFC4();
    v48(v47);
    v49 = sub_22C25A6F4();
    v50 = type metadata accessor for TranscriptProtoRequestCompleted(v49);
    sub_22BE38954(v50);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v51 = sub_22C259E3C();
    v52(v51);
    sub_22C259EF8();
    goto LABEL_13;
  }

  if (v22 == *MEMORY[0x277D1C8F0])
  {
    v53 = sub_22BE3FFC4();
    v54(v53);
    v55 = sub_22C25A6F4();
    v56 = type metadata accessor for TranscriptProtoCommandFailed(v55);
    sub_22BE38954(v56);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v57 = sub_22C259E3C();
    v58(v57);
    sub_22C259EF8();
    goto LABEL_13;
  }

  if (v22 == *MEMORY[0x277D1C900])
  {
    v60 = sub_22C259E3C();
    v61(v60);
    v59 = 1;
    goto LABEL_14;
  }

  sub_22C274004();
  __break(1u);
}

void ResponseOutput.VisualOutput.AceCommandOutputPayload.AceCommandOutputData.init(transcript:)()
{
  sub_22BE19130();
  v7 = sub_22BE2054C(v6);
  v8 = type metadata accessor for TranscriptProtoCommandFailed(v7);
  v9 = sub_22BE19448(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BE17A44();
  v13 = sub_22C259814(v12);
  v14 = type metadata accessor for TranscriptProtoRequestCompleted(v13);
  v15 = sub_22BE19448(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BE18DFC();
  v18 = type metadata accessor for TranscriptProtoSayIt(0);
  v19 = sub_22BE19448(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = sub_22BE19820();
  v23 = type metadata accessor for TranscriptProtoRepeatIt(v22);
  v24 = sub_22BE19448(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = sub_22BE1AD20();
  v28 = type metadata accessor for TranscriptProtoAddDialogs(v27);
  v29 = sub_22BE19448(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v32 = sub_22BE2F294();
  v33 = type metadata accessor for TranscriptProtoAddViews(v32);
  v34 = sub_22BE19448(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22BE28FD8();
  v37 = sub_22BE1A8C4();
  v39 = sub_22BE5CE4C(v37, v38);
  sub_22BE19448(v39);
  v41 = *(v40 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v42);
  sub_22BE1B72C();
  sub_22BE39EAC();
  sub_22BE2EDC8();
  sub_22BE22814();
  sub_22BE291DC();
  sub_22BE1AE58();
  v43 = type metadata accessor for TranscriptProtoAceCommandOutputDataEnum(0);
  v44 = sub_22BE391E8();
  sub_22BE1AB5C(v44, v45, v43);
  if (v46)
  {
    v47 = *MEMORY[0x277D1C900];
    v48 = sub_22C26F354();
    sub_22BE1834C(v48);
    (*(v49 + 104))(v84, v47);
  }

  else
  {
    sub_22BE1B62C();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v73 = sub_22BE29264();
        sub_22BE3B620(v73, v74);
        v53 = *v4;
        v75 = v4[1];
        v76 = sub_22BE19454();
        sub_22BE29D7C(v76, v77);
        sub_22BE20118();
        sub_22BE1AE58();
        *v84 = v53;
        v84[1] = v75;
        v57 = MEMORY[0x277D1C8E8];
        break;
      case 2:
        v63 = sub_22BE37490();
        sub_22BE3B620(v63, v64);
        v53 = *v2;
        v65 = v2[1];
        v66 = sub_22BE19454();
        sub_22BE29D7C(v66, v67);
        sub_22C0E9848();
        sub_22BE1AE58();
        *v84 = v53;
        v84[1] = v65;
        v57 = MEMORY[0x277D1C908];
        break;
      case 3:
        v68 = sub_22BE1A6BC();
        sub_22BE3B620(v68, v69);
        v53 = *v3;
        v70 = v3[1];
        v71 = sub_22BE19454();
        sub_22BE29D7C(v71, v72);
        sub_22BE3ACD8();
        sub_22BE1AE58();
        *v84 = v53;
        v84[1] = v70;
        v57 = MEMORY[0x277D1C918];
        break;
      case 4:
        v58 = sub_22BE3CC34();
        sub_22BE3B620(v58, v59);
        v53 = *v1;
        v60 = v1[1];
        v61 = sub_22BE19454();
        sub_22BE29D7C(v61, v62);
        sub_22C0E9830();
        sub_22BE1AE58();
        *v84 = v53;
        v84[1] = v60;
        v57 = MEMORY[0x277D1C8F8];
        break;
      case 5:
        sub_22BE3B620(v0, v83);
        v53 = *v83;
        v78 = v83[1];
        v79 = sub_22BE19454();
        sub_22BE29D7C(v79, v80);
        sub_22C0E9830();
        sub_22BE1AE58();
        *v84 = v53;
        v84[1] = v78;
        v57 = MEMORY[0x277D1C8F0];
        break;
      default:
        v51 = sub_22BE41FB4();
        sub_22BE3B620(v51, v52);
        v53 = *v5;
        v54 = v5[1];
        v55 = sub_22BE19454();
        sub_22BE29D7C(v55, v56);
        sub_22BE3E76C();
        sub_22BE1AE58();
        *v84 = v53;
        v84[1] = v54;
        v57 = MEMORY[0x277D1C910];
        break;
    }

    sub_22C25A6B8(v57);
    v81 = sub_22C26F354();
    sub_22BE1834C(v81);
    (*(v82 + 104))(v84, v53);
  }

  sub_22BE3C298();
  sub_22BE18478();
}

uint64_t sub_22C24451C@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, void *a5@<X8>)
{
  a2();
  sub_22C25A560();
  v11 = a3(0);
  sub_22C25A0A4(v11);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v12 = a4(0);
  sub_22BE18524(v12);
  result = (*(v13 + 8))(a1);
  *a5 = v5;
  a5[1] = v6;
  return result;
}

void sub_22C244668()
{
  sub_22BE3C358();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13();
  sub_22C25A2F0();
  v14 = v8();
  v15 = sub_22C25A628();
  v16 = v6(v15);
  sub_22C25A840(v16);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v17 = v4(0);
  sub_22BE18524(v17);
  (*(v18 + 8))(v10);
  *v12 = v0;
  v12[1] = v1;
  v12[2] = v14;
  v12[3] = v2;
  sub_22BE267B8();
}

void ResponseOutput.DialogType.init(transcript:)()
{
  sub_22BE19130();
  v7 = sub_22C25A3B4(v6);
  v8 = type metadata accessor for TranscriptProtoGeneratedText(v7);
  v9 = sub_22BE19448(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BE3C444(v12, v56);
  v13 = type metadata accessor for TranscriptProtoSonicText(0);
  v14 = sub_22BE19448(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = sub_22BE19820();
  v18 = type metadata accessor for TranscriptProtoCATDialog(v17);
  v19 = sub_22BE19448(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22BE1955C();
  v22 = type metadata accessor for TranscriptProtoStaticText(0);
  v23 = sub_22BE19448(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22BE188B0();
  v26 = &qword_27D90EBB8;
  v27 = sub_22BE3CC34();
  v29 = sub_22BE5CE4C(v27, v28);
  sub_22BE19448(v29);
  v31 = *(v30 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v32);
  sub_22BE19668();
  v33 = type metadata accessor for TranscriptProtoDialogFormat(0);
  v34 = sub_22BE18000(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22BE294E0();
  sub_22BE3C5E4();
  sub_22BE22814();
  sub_22BE23B00(v0);
  if (v37)
  {
    sub_22BE233E8(v0, &qword_27D90EBB8, &qword_22C297060);
    sub_22BE5CE4C(&qword_27D915690, &qword_22C2CCA58);
    sub_22BE43258();
    sub_22BE3D554();
    sub_22C108598();
    v38 = sub_22BE196B4();
    sub_22C259EA0(v38, v39);
    sub_22BE379D8();
    sub_22BE1AE58();
  }

  else
  {
    sub_22BE379D8();
    sub_22BE1AE58();
    v40 = sub_22BE431F0();
    sub_22BE3B620(v40, v4);
    sub_22BE2BA80();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v50 = sub_22BE44744();
        sub_22BE3B620(v50, v2);
        v51 = *v2;
        v26 = v2[1];

        sub_22C0E9848();
        sub_22BE1AE58();
        sub_22C25AA7C();
        v44 = MEMORY[0x277D1C9F8];
        goto LABEL_12;
      case 2:
        sub_22BE44744();
        sub_22C0E9A5C();
        sub_22BE3B620(v46, v47);
        sub_22C25AE34();
        sub_22BE379D8();
        sub_22BE1AE58();
        sub_22C25AA7C();
        v44 = MEMORY[0x277D1CA00];
        goto LABEL_12;
      case 3:
        v45 = MEMORY[0x277D1C9F0];
        goto LABEL_9;
      case 4:
        v45 = MEMORY[0x277D1C9E8];
LABEL_9:
        sub_22C25A6B8(v45);
        v48 = sub_22C26F4B4();
        sub_22BE1834C(v48);
        (*(v49 + 104))(v57, &qword_27D90EBB8);
        sub_22BE3ACD8();
        sub_22BE1AE58();
        break;
      case 5:
        v52 = sub_22BE44744();
        sub_22BE3B620(v52, v3);
        v53 = *v3;
        v26 = v3[1];

        sub_22BE291DC();
        sub_22BE1AE58();
        sub_22C25AA7C();
        v44 = MEMORY[0x277D1C9D8];
        goto LABEL_12;
      default:
        v42 = sub_22BE44744();
        sub_22BE3B620(v42, v5);
        v43 = *v5;
        v26 = v5[1];

        sub_22BE20118();
        sub_22BE1AE58();
        sub_22C25AA7C();
        v44 = MEMORY[0x277D1C9E0];
LABEL_12:
        sub_22C25A6B8(v44);
        v54 = sub_22C26F4B4();
        sub_22BE1834C(v54);
        (*(v55 + 104))(v1, v26);
        break;
    }
  }

  sub_22BE35D48();
  sub_22BE18478();
}

void AST.FlatExpr.init(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ValueMetadata *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v26;
  a20 = v27;
  v378 = v22;
  v29 = v28;
  v375 = v30;
  updated = type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant(0);
  v32 = sub_22BE17A18(updated);
  v374 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22BE17B98();
  v371 = v36;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v37);
  sub_22BE19E94();
  v372 = v38;
  v39 = sub_22BE183BC();
  v40 = type metadata accessor for AST.Update(v39);
  v41 = sub_22BE17A18(v40);
  v368 = v42;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v41);
  sub_22BE17A44();
  v46 = sub_22BE48A8C(v45);
  v47 = type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant(v46);
  v48 = sub_22BE19448(v47);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  sub_22BE17A44();
  v362 = v51;
  v52 = sub_22BE183BC();
  v53 = type metadata accessor for TranscriptProtoASTFlatExprCancelVariant(v52);
  v54 = sub_22BE19448(v53);
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v54);
  sub_22BE17A44();
  v58 = sub_22BE18950(v57);
  v59 = type metadata accessor for TranscriptProtoASTFlatExprRejectVariant(v58);
  v60 = sub_22BE19448(v59);
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v60);
  sub_22BE17A44();
  v64 = sub_22BE18950(v63);
  v65 = type metadata accessor for TranscriptProtoASTFlatExprUndoVariant(v64);
  v66 = sub_22BE19448(v65);
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v66);
  sub_22BE17A44();
  v70 = sub_22BE18950(v69);
  v71 = type metadata accessor for TranscriptProtoASTFlatExprResolveToolVariant(v70);
  v72 = sub_22BE19448(v71);
  v74 = *(v73 + 64);
  MEMORY[0x28223BE20](v72);
  sub_22BE17A44();
  v76 = sub_22BE18950(v75);
  v77 = type metadata accessor for TranscriptProtoASTFlatExprPickOneVariant(v76);
  v78 = sub_22BE19448(v77);
  v80 = *(v79 + 64);
  MEMORY[0x28223BE20](v78);
  sub_22BE17A44();
  v82 = sub_22BE18950(v81);
  v83 = type metadata accessor for TranscriptProtoASTFlatExprSearchVariant(v82);
  v84 = sub_22BE19448(v83);
  v86 = *(v85 + 64);
  MEMORY[0x28223BE20](v84);
  sub_22BE17A44();
  v88 = sub_22BE18950(v87);
  v89 = type metadata accessor for TranscriptProtoASTFlatExprConfirmVariant(v88);
  v90 = sub_22BE19448(v89);
  v92 = *(v91 + 64);
  MEMORY[0x28223BE20](v90);
  sub_22BE17A44();
  v94 = sub_22BE18950(v93);
  v95 = type metadata accessor for TranscriptProtoASTPickType(v94);
  v96 = sub_22BE19448(v95);
  v98 = *(v97 + 64);
  MEMORY[0x28223BE20](v96);
  sub_22BE17A44();
  v100 = sub_22BE18950(v99);
  v101 = type metadata accessor for TranscriptProtoASTFlatExprPickVariant(v100);
  v102 = sub_22BE290A0(v101, &v366);
  v104 = *(v103 + 64);
  MEMORY[0x28223BE20](v102);
  sub_22BE17A44();
  sub_22BE190A8(v105);
  v106 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  v107 = sub_22BE19448(v106);
  v109 = *(v108 + 64);
  MEMORY[0x28223BE20](v107);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v110);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v111);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v112);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v113);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v114);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v115);
  sub_22BE23B44();
  MEMORY[0x28223BE20](v116);
  sub_22BE3173C(v117, v118, v119, v120, v121, v122, v123, v124, v360);
  v377 = sub_22C26E1D4();
  v125 = sub_22BE179D8(v377);
  v373 = v126;
  v128 = *(v127 + 64);
  MEMORY[0x28223BE20](v125);
  sub_22BE17A44();
  v130 = sub_22C259DF0(v129);
  v131 = type metadata accessor for TranscriptProtoASTFlatExprSayVariant(v130);
  v132 = sub_22BE19448(v131);
  v134 = *(v133 + 64);
  MEMORY[0x28223BE20](v132);
  sub_22BE17A44();
  v135 = sub_22BE183BC();
  v136 = type metadata accessor for AST.FlatValue(v135);
  v137 = sub_22BE17A18(v136);
  v363 = v138;
  v140 = *(v139 + 64);
  MEMORY[0x28223BE20](v137);
  sub_22BE17A44();
  v366 = v141;
  v142 = sub_22BE183BC();
  v143 = type metadata accessor for TranscriptProtoASTFlatExprCallVariant(v142);
  v144 = sub_22BE19448(v143);
  v146 = *(v145 + 64);
  MEMORY[0x28223BE20](v144);
  sub_22BE17A44();
  v147 = sub_22BE183BC();
  v148 = type metadata accessor for TranscriptProtoASTFlatExprIndexVariant(v147);
  v149 = sub_22BE290A0(v148, &v365);
  v151 = *(v150 + 64);
  MEMORY[0x28223BE20](v149);
  sub_22BE17A44();
  v153 = sub_22BE18950(v152);
  v154 = type metadata accessor for TranscriptProtoASTFlatExprDotVariant(v153);
  v155 = sub_22BE290A0(v154, &v373);
  v157 = *(v156 + 64);
  MEMORY[0x28223BE20](v155);
  sub_22BE17A44();
  v159 = sub_22BE18950(v158);
  v160 = type metadata accessor for TranscriptProtoASTFlatExprInfixVariant(v159);
  v161 = sub_22BE290A0(v160, &v375);
  v163 = *(v162 + 64);
  MEMORY[0x28223BE20](v161);
  sub_22BE17A44();
  v165 = sub_22BE18950(v164);
  v166 = type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant(v165);
  v167 = sub_22BE290A0(v166, &v372);
  v169 = *(v168 + 64);
  MEMORY[0x28223BE20](v167);
  sub_22BE17A44();
  v171 = sub_22BE18950(v170);
  v172 = type metadata accessor for TranscriptProtoASTFlatValue(v171);
  v173 = sub_22BE17A18(v172);
  v365 = v174;
  v176 = *(v175 + 64);
  MEMORY[0x28223BE20](v173);
  sub_22BE17B98();
  v364 = v177;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v178);
  sub_22C1CEC88();
  MEMORY[0x28223BE20](v179);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v180);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v181);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v182);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v183);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v184);
  sub_22BE27A50();
  MEMORY[0x28223BE20](v185);
  sub_22BE2017C();
  MEMORY[0x28223BE20](v186);
  sub_22C259BC0();
  v187 = sub_22BE194C4();
  v189 = sub_22BE5CE4C(v187, v188);
  sub_22BE19448(v189);
  v191 = *(v190 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v192);
  v193 = sub_22BE250C8();
  v194 = type metadata accessor for TranscriptProtoAstflatExprEnum(v193);
  v195 = sub_22BE18000(v194);
  v197 = *(v196 + 64);
  MEMORY[0x28223BE20](v195);
  sub_22BE188B0();
  sub_22BE1BF88();
  sub_22BE22814();
  sub_22BE23B00(v24);
  if (v198)
  {
    sub_22BE233E8(v24, &qword_27D90EE60, &qword_22C2CCA60);
    a10 = v194;
    sub_22BE5CE4C(&qword_27D915698, &unk_22C2CCA68);
    sub_22BE43258();
    sub_22BE3D554();
    sub_22C108598();
    v199 = sub_22BE196B4();
    sub_22C259EA0(v199, v200);
LABEL_4:
    sub_22BE1AE58();
LABEL_79:
    sub_22BE34134();
    sub_22BE18478();
  }

  else
  {
    v201 = sub_22C1088AC();
    sub_22BE3B620(v201, v25);
    sub_22BE3E79C();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v203 = v377;
    v204 = v378;
    v205 = i;
    switch(EnumCaseMultiPayload)
    {
      case 1:
        sub_22C259E7C();
        sub_22C108C10(&v374);
        sub_22BE3B620(v260, v261);
        v262 = v375;
        *v375 = *v23;
        sub_22BE2ED7C(&v372);
        sub_22C101D18();
        if (v204)
        {
          sub_22BE1A810();
          sub_22C25A578();
          sub_22C0E9830();
          goto LABEL_4;
        }

        v335 = &v262[*(sub_22BE5CE4C(&qword_27D90A918, &qword_22C2D1EB0) + 48)];
        AST.FlatValue.init(transcript:)();
        sub_22BE1A810();
        sub_22C25A578();
        sub_22C0E9830();
        sub_22BE1AE58();
        type metadata accessor for AST.FlatExpr(0);
        sub_22BE39250();
        goto LABEL_78;
      case 2:
        sub_22C259E7C();
        sub_22BE46048(&v377);
        sub_22BE3B620(v248, v249);
        *v375 = *v205;
        v250 = v205 + *(v361 + 20);
        sub_22BE351B8(&v369);
        sub_22C101D18();
        if (v204)
        {
          goto LABEL_23;
        }

        v251 = sub_22BE5CE4C(&qword_27D90A910, &unk_22C288B20);
        v252 = *(v251 + 48);
        AST.FlatValue.init(transcript:)();
        v348 = v205 + *(v361 + 24);
        sub_22C101D18();
        v357 = &v375[*(v251 + 64)];
        AST.FlatValue.init(transcript:)();
        sub_22BE1A810();
        sub_22C25A578();
        sub_22BE3641C();
        type metadata accessor for AST.FlatExpr(0);
        sub_22BE23BA8();
        goto LABEL_78;
      case 3:
        sub_22C259E7C();
        sub_22C25A8AC(&v376);
        sub_22BE3B620(v253, v254);
        sub_22BE2ED7C(&v373);
        sub_22BE3C6E0(&v370);
        sub_22C101D18();
        if (!v204)
        {
          v255 = v375;
          AST.FlatValue.init(transcript:)();
          v349 = &v255[*(sub_22BE5CE4C(&qword_27D90A908, &unk_22C2D1EA0) + 48)];
          sub_22BE1A810();
          sub_22C25A578();
          v351 = *v203;
          v350 = *(v203 + 8);

          sub_22C0E9848();
          sub_22BE1AE58();
          *v349 = v351;
          v349[1] = v350;
          type metadata accessor for AST.FlatExpr(0);
          sub_22BE31160();
          goto LABEL_78;
        }

        sub_22BE1A810();
        sub_22C25A578();
        sub_22C0E9848();
        goto LABEL_4;
      case 4:
        sub_22C259E7C();
        sub_22BE37B14(&v378);
        sub_22BE3B620(v235, v236);
        sub_22BE1B754(&v371);
        sub_22C101D18();
        if (!v204)
        {
          sub_22C25A56C();
          AST.FlatValue.init(transcript:)();
          sub_22BE2ED7C(&v365);
          sub_22BE1B754(&v364);
          sub_22C101D18();
          v347 = v20 + *(sub_22BE5CE4C(&qword_27D90A900, &unk_22C288B10) + 48);
          AST.FlatValue.init(transcript:)();
          sub_22BE1A810();
          sub_22C25A578();
          sub_22BE379D8();
          sub_22BE1AE58();
          type metadata accessor for AST.FlatExpr(0);
          sub_22BE23BA8();
          goto LABEL_78;
        }

LABEL_23:
        sub_22BE1A810();
        sub_22C25A578();
        goto LABEL_4;
      case 5:
        sub_22C259E7C();
        sub_22C25AB7C();
        sub_22BE3B620(v263, v264);
        v265 = v20[1];
        v372 = *v20;
        v266 = v20[2];
        sub_22BE5CE4C(&qword_27D9156A0, &unk_22C2CCA78);
        sub_22BE3D3E0();
        v267 = sub_22C273D04();
        v269 = v266 + 4;
        Kind = v266[4].Kind;
        v376 = v266;
        Kind_low = LOBYTE(v266[2].Kind);
        sub_22BE185B4();
        v273 = v272 & v271;
        v275 = (v274 + 63) >> 6;
        v373 = v265;
        v374 = v276 + 64;

        v277 = 0;
        v278 = v367;
        v377 = v267;
        if (v273)
        {
          goto LABEL_38;
        }

LABEL_39:
        v280 = v277;
        do
        {
          v277 = v280 + 1;
          if (__OFADD__(v280, 1))
          {
            __break(1u);
            goto LABEL_87;
          }

          if (v277 >= v275)
          {
            sub_22BE1A810();
            sub_22C25A578();
            sub_22C25A380();
            v332 = v375;
            v333 = v373;
            *v375 = v372;
            *(v332 + 1) = v333;
            *(v332 + 2) = v267;
            type metadata accessor for AST.FlatExpr(0);
            sub_22BE23BA8();
            swift_storeEnumTagMultiPayload();
            goto LABEL_79;
          }

          ++v280;
        }

        while (!*(&v269->Kind + v277));
        sub_22BE4878C();
        for (i = v281; ; i = v273)
        {
          v282 = v279 | (v277 << 6);
          v283 = (v376[3].Kind + 16 * v282);
          v284 = *v283;
          v285 = v283[1];
          sub_22BE1AA68(v376[3].Description + *(v365 + 72) * v282, v278);
          sub_22C25A4B8();
          sub_22BE1AA68(v286, v287);

          v288 = v366;
          sub_22C25ABCC();
          v289 = v378;
          AST.FlatValue.init(transcript:)();
          v378 = v289;
          if (v289)
          {
            break;
          }

          sub_22BE2325C();
          sub_22BE1AE58();
          sub_22BE270BC();
          sub_22C25977C(v290);
          v267 = v377;
          v291 = (*(v377 + 48) + 16 * v282);
          *v291 = v284;
          v291[1] = v285;
          v292 = *(v267 + 56);
          v293 = *(v363 + 72);
          sub_22BE39150();
          sub_22BE3B620(v288, v294);
          v295 = *(v267 + 16);
          v296 = __OFADD__(v295, 1);
          v297 = v295 + 1;
          if (v296)
          {
            goto LABEL_89;
          }

          *(v267 + 16) = v297;
          v278 = v367;
          v273 = i;
          if (!i)
          {
            goto LABEL_39;
          }

LABEL_38:
          sub_22C25ABE4();
        }

        sub_22BE2325C();
        sub_22BE1AE58();

        sub_22BE1A810();
        sub_22C25A578();
        sub_22C25A380();
        goto LABEL_79;
      case 6:
        sub_22C259E7C();
        sub_22C25AAA0();
        sub_22BE3B620(v302, v303);
        v304 = *v20;
        if (*(*v20 + 16))
        {
          v305 = sub_22BE3122C(MEMORY[0x277D84F90]);
          v374 = v306;
          sub_22BE716D8(v305, v306, 0);
          v307 = 0;
          v376 = a10;
          v308 = (v373 + 32);
          v309 = (v304 + 40);
          v372 = v304;
          do
          {
            if (v307 >= *(v304 + 16))
            {
              goto LABEL_88;
            }

            v377 = v307;
            v311 = *(v309 - 1);
            v310 = *v309;
            v312 = v203;

            sub_22BE1804C();
            sub_22C26E174();
            sub_22BE1B62C();
            sub_22BE22814();
            sub_22BE3E950(v205);
            if (v198)
            {
              sub_22C259FD0();
              sub_22BE233E8(v336, v337, v338);
              v380 = v203;
              sub_22BE5CE4C(&qword_27D912020, &unk_22C2B5E10);
              sub_22BE3369C();
              sub_22C25A2F0();
              sub_22C108598();
              v339 = sub_22BE196B4();
              *v340 = &qword_27D9082F0;
              v340[1] = v205;
              sub_22C25A590(v339, v340);

              sub_22BE1A810();
              sub_22C25A578();
              sub_22C259FD0();
              sub_22BE233E8(v341, v342, v343);
              sub_22C2599F0();
              sub_22BE1AE58();
              goto LABEL_74;
            }

            sub_22C25A3C4();
            sub_22BE233E8(v313, v314, v315);
            v316 = *v308;
            v317 = sub_22BE1B73C();
            (v316)(v317);
            v318 = v376;
            a10 = v376;
            v320 = v376[1].Kind;
            Description = v376[1].Description;
            if (v320 >= Description >> 1)
            {
              v323 = sub_22BE3D1E4(Description);
              sub_22BE716D8(v323, v320 + 1, 1);
              v318 = a10;
            }

            v307 = v377 + 1;
            v318[1].Kind = v320 + 1;
            sub_22BE25AD8();
            v376 = v321;
            sub_22C25AB34(v321 + v322);
            sub_22C25A254();
            v316();
            v309 += 2;
            v203 = v312;
            v205 = i;
            v304 = v372;
          }

          while (v374 != v307);
          sub_22BE1A810();
          sub_22C25A578();
          sub_22C2599F0();
          sub_22BE1AE58();
          v345 = v376;
        }

        else
        {
          sub_22BE1A810();
          sub_22C25A578();
          sub_22C2599F0();
          sub_22BE1AE58();
          v345 = MEMORY[0x277D84F90];
        }

        *v375 = v345;
        type metadata accessor for AST.FlatExpr(0);
        sub_22BE1ACEC();
        goto LABEL_78;
      case 7:
        sub_22C259E7C();
        sub_22BE46048(&a15);
        sub_22BE3B620(v256, v257);
        v258 = *v205;
        v259 = *(v205 + 8);
        sub_22BE2BD40(&i);
        sub_22C26E174();
        sub_22C25A56C();
        sub_22C101298();
        if (v204)
        {
          goto LABEL_33;
        }

        sub_22BE233E8(v21, &qword_27D9082F0, &qword_22C27AB00);
        sub_22BE2ED7C(&v366);
        sub_22BE1B754(&v367);
        sub_22C101E08();
        v352 = v23[8];
        if (v352 == 255)
        {
          a10 = &type metadata for TranscriptProtoAstpickTypeEnum;
          sub_22BE5CE4C(&qword_27D9155B0, &unk_22C2CC7A0);
          sub_22BE43258();
          sub_22BE3D554();
          sub_22C108598();
          v358 = sub_22BE196B4();
          sub_22C259EA0(v358, v359);
          sub_22BE1A810();
          sub_22BE1AE58();
          sub_22BE38AA4();
          sub_22BE1AE58();
          sub_22C259CA8();
          (*(v373 + 8))(v375, v203);
          goto LABEL_79;
        }

        v353 = *v23;
        sub_22BE1A810();
        sub_22BE1AE58();
        sub_22BE38AA4();
        sub_22BE1AE58();
        v354 = v352 & 1;
        if (v354)
        {
          v353 = 0;
        }

        v355 = sub_22BE5CE4C(&qword_27D90A8F8, &unk_22C2D1E90);
        v356 = &v375[*(v355 + 48)];
        sub_22C259CA8();
        *v356 = v353;
        v356[8] = v354;
        type metadata accessor for AST.FlatExpr(0);
        sub_22BE31160();
        goto LABEL_78;
      case 8:
        sub_22C259E7C();
        sub_22BE37B14(&a12);
        sub_22BE3B620(v328, v329);
        v330 = *v29;
        v331 = v29[1];
        sub_22BE2BD40(&v380);
        sub_22C26E174();
        sub_22C25A56C();
        sub_22C101298();
        if (v204)
        {
          goto LABEL_33;
        }

        goto LABEL_71;
      case 9:
        sub_22BE1A810();
        sub_22C25A578();
        sub_22C259E7C();
        sub_22C25A8AC(&a11);
        sub_22BE3B620(v241, v242);
        v244 = *v203;
        v243 = *(v203 + 8);
        v245 = *(v203 + 16);
        v246 = *(v203 + 17);

        sub_22C0E9848();
        sub_22BE1AE58();
        v247 = v375;
        *v375 = v244;
        *(v247 + 1) = v243;
        v247[16] = v245;
        v247[17] = v246;
        type metadata accessor for AST.FlatExpr(0);
        goto LABEL_78;
      case 10:
        sub_22C259E7C();
        sub_22BE37B14(&a14);
        sub_22BE3B620(v324, v325);
        v326 = *v29;
        v327 = v29[1];
        sub_22BE2BD40(&v381);
        sub_22C26E174();
        sub_22C25A56C();
        sub_22C101298();
        if (v204)
        {
          goto LABEL_33;
        }

        goto LABEL_71;
      case 11:
        sub_22C259E7C();
        sub_22BE37B14(&a17);
        sub_22BE3B620(v232, v233);
        if (v29[1])
        {
          v234 = *v29;
          sub_22BE2BD40(&v368);
          sub_22C26E174();
          sub_22C101298();
          if (v204)
          {
LABEL_33:
            sub_22BE1A810();
            sub_22C25A578();
            sub_22BE233E8(v21, &qword_27D9082F0, &qword_22C27AB00);
            goto LABEL_4;
          }

          sub_22BE1A810();
          sub_22C25A578();
          sub_22BE233E8(v21, &qword_27D9082F0, &qword_22C27AB00);
          v334 = 0;
        }

        else
        {
          sub_22BE1A810();
          sub_22C25A578();
          v334 = 1;
        }

        sub_22BE379D8();
        sub_22BE1AE58();
        v346 = sub_22BE33738(v375, v334);
        type metadata accessor for AST.FlatExpr(v346);
        sub_22BE1ACEC();
        goto LABEL_78;
      case 12:
        sub_22BE1A810();
        sub_22C25A578();
        sub_22C259E7C();
        sub_22BE22944(&a13);
        sub_22BE3B620(v237, v238);
        v239 = *v21;

        sub_22C0E9A74();
        sub_22BE1AE58();
        v240 = sub_22C25AB28();
        type metadata accessor for AST.FlatExpr(v240);
        sub_22BE1ACEC();
        goto LABEL_78;
      case 13:
        sub_22C259E7C();
        sub_22BE37B14(&a16);
        sub_22BE3B620(v298, v299);
        v300 = *v29;
        v301 = v29[1];
        sub_22BE2BD40(&a9);
        sub_22C26E174();
        sub_22C25A56C();
        sub_22C101298();
        if (v204)
        {
          goto LABEL_33;
        }

        goto LABEL_71;
      case 14:
        sub_22C259E7C();
        sub_22BE37B14(&a18);
        sub_22BE3B620(v228, v229);
        v230 = *v29;
        v231 = v29[1];
        sub_22BE2BD40(&a10);
        sub_22C26E174();
        sub_22C25A56C();
        sub_22C101298();
        if (v204)
        {
          goto LABEL_33;
        }

LABEL_71:
        sub_22BE1A810();
        sub_22C25A578();
        sub_22BE233E8(v21, &qword_27D9082F0, &qword_22C27AB00);
        sub_22BE379D8();
        sub_22BE1AE58();
        type metadata accessor for AST.FlatExpr(0);
        sub_22BE23BA8();
        goto LABEL_78;
      case 15:
      case 17:
        sub_22BE1A810();
        sub_22C25A578();
        type metadata accessor for AST.FlatExpr(0);
        sub_22C25ADC8();
        swift_storeEnumTagMultiPayload();
        sub_22BE20118();
        goto LABEL_4;
      case 16:
        v209 = sub_22C259E7C();
        sub_22BE3B620(v209, v362);
        v210 = *v362;
        v211 = *(*v362 + 16);
        if (!v211)
        {
          goto LABEL_15;
        }

        sub_22BE3122C(MEMORY[0x277D84F90]);
        sub_22BE34198();
        sub_22BE71680(v212, v213, v214);
        v215 = 0;
        v216 = a10;
        v217 = *(v374 + 80);
        sub_22BE19E14();
        v219 = v210 + v218;
        break;
      case 18:
      case 19:
        sub_22BE1A810();
        sub_22C25A578();
        type metadata accessor for AST.FlatExpr(0);
        sub_22C25ADC8();
        goto LABEL_78;
      default:
        sub_22BE391D0();
        v206 = sub_22BE25EFC();
        sub_22BE3B620(v206, v207);
        v208 = sub_22BE431F0();
        sub_22BE1AA68(v208, v23);
        sub_22C25A56C();
        AST.FlatValue.init(transcript:)();
        sub_22BE1A810();
        sub_22C25A578();
        sub_22BE2325C();
        sub_22BE1AE58();
        if (v204)
        {
          goto LABEL_79;
        }

        type metadata accessor for AST.FlatExpr(0);
        sub_22BE23BA8();
        goto LABEL_78;
    }

    while (v215 < *(v210 + 16))
    {
      v220 = v372;
      sub_22BE1AA68(v219 + *(v374 + 72) * v215, v372);
      sub_22BE1AA68(v220, v371);
      AST.Update.init(transcript:)();
      if (v204)
      {
        sub_22BE1A810();
        sub_22C25A578();
        sub_22BE37C6C();
        sub_22BE1AE58();
        sub_22C259A08();
        sub_22BE1AE58();
LABEL_74:

        goto LABEL_79;
      }

      sub_22BE37C6C();
      sub_22BE1AE58();
      a10 = v216;
      v222 = v216[1].Kind;
      v221 = v216[1].Description;
      if (v222 >= v221 >> 1)
      {
        sub_22BE3D1E4(v221);
        sub_22BE39E18();
        sub_22BE71680(v225, v226, v227);
        v216 = a10;
      }

      ++v215;
      v216[1].Kind = v222 + 1;
      sub_22BE25AD8();
      sub_22BE3B620(v376, v216 + v223 + *(v224 + 72) * v222);
      if (v211 == v215)
      {
LABEL_15:
        sub_22BE1A810();
        sub_22C25A578();
        sub_22C259A08();
        sub_22BE1AE58();
        v344 = sub_22C25AB28();
        type metadata accessor for AST.FlatExpr(v344);
        sub_22BE1ACEC();
LABEL_78:
        swift_storeEnumTagMultiPayload();
        goto LABEL_79;
      }
    }

LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
  }
}

void AST.FlatValue.init(transcript:)()
{
  sub_22BE19130();
  v128 = v5;
  v6 = sub_22C25A764();
  v7 = type metadata accessor for TranscriptProtoStatementID(v6);
  v8 = sub_22BE19448(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE186D4();
  MEMORY[0x28223BE20](v11);
  sub_22C259BC0();
  v12 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v12);
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE1A174();
  v120 = v16;
  v17 = sub_22BE183BC();
  v127 = type metadata accessor for AST.FlatValue(v17);
  v18 = sub_22BE179D8(v127);
  v122 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BE17A44();
  v23 = sub_22BE3E890(v22);
  v24 = type metadata accessor for TranscriptProtoASTFlatValue(v23);
  v25 = sub_22BE17A18(v24);
  v124 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22BE17B98();
  sub_22BE3CFC4();
  MEMORY[0x28223BE20](v29);
  v38 = sub_22BE4202C(v30, v31, v32, v33, v34, v35, v36, v37, v116);
  v39 = type metadata accessor for TranscriptProtoASTFlatValueDictVariant(v38);
  v40 = sub_22BE19448(v39);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  sub_22BE17A44();
  v44 = sub_22C259A68(v43);
  v45 = type metadata accessor for TranscriptProtoASTFlatValueArrayVariant(v44);
  v46 = sub_22BE19448(v45);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  sub_22BE18DFC();
  v49 = sub_22BE1B5E0();
  v51 = sub_22BE5CE4C(v49, v50);
  sub_22BE19448(v51);
  v53 = *(v52 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v54);
  v55 = sub_22BE25334();
  v56 = type metadata accessor for TranscriptProtoAstflatValueEnum(v55);
  v57 = sub_22BE18000(v56);
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v57);
  sub_22BE197B8();
  sub_22BE3EA80();
  sub_22BE22814();
  v60 = sub_22BE406A0();
  sub_22BE1AB5C(v60, v61, v56);
  if (v62)
  {
    sub_22BE233E8(v3, &qword_27D909178, &qword_22C27FD70);
    sub_22BE5CE4C(&qword_27D9156A8, &qword_22C2CCA88);
    sub_22BE43258();
    sub_22BE3D554();
    sub_22C108598();
    v63 = sub_22BE196B4();
    sub_22C259EA0(v63, v64);
    sub_22BE2325C();
  }

  else
  {
    v65 = sub_22BE44744();
    sub_22BE3B620(v65, v0);
    sub_22BE29264();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v67 = v1;
    switch(EnumCaseMultiPayload)
    {
      case 1:
      case 2:
        sub_22BE2325C();
        sub_22BE1AE58();
        *v128 = *v0;
        goto LABEL_29;
      case 3:
      case 6:
        sub_22BE2325C();
        sub_22BE1AE58();
        v72 = v0[1];
        *v128 = *v0;
        v128[1] = v72;
        goto LABEL_29;
      case 4:
        v68 = sub_22BE19EBC();
        sub_22BE3B620(v68, v2);
        v69 = *v2;

        sub_22C0F2FA4();
        v71 = v70;
        sub_22BE2325C();
        sub_22BE1AE58();
        sub_22C0E9830();
        sub_22BE1AE58();
        if (v1)
        {
          goto LABEL_30;
        }

        *v128 = v71;
        goto LABEL_29;
      case 5:
        sub_22BE19EBC();
        sub_22C1CF208();
        sub_22BE3B620(v78, v79);
        v80 = *v0;
        sub_22BE5CE4C(&qword_27D9156A0, &unk_22C2CCA78);
        sub_22BE3D3E0();
        v81 = sub_22C273D04();
        v82 = 0;
        v83 = *(v80 + 32);
        sub_22C259B4C();
        v117 = v84 + 64;
        v87 = (v86 + 63) >> 6;
        v118 = v80;
        v88 = v126;
        v119 = v89;
        if ((v85 & *(v84 + 64)) != 0)
        {
          goto LABEL_17;
        }

        break;
      case 7:
        v73 = *v0;
        v74 = v0[1];
        sub_22C26E174();

        v75 = sub_22C26E1D4();
        sub_22BE18190(v120);
        if (!v62)
        {
          sub_22BE2325C();
          sub_22BE1AE58();
          sub_22BE1BC24(v75);
          v113 = *(v112 + 32);
          v114 = sub_22BE431C0();
          v115(v114);
          goto LABEL_29;
        }

        sub_22C108358();
        v76 = sub_22BE196B4();
        sub_22BE3C904(v76, v77);
        sub_22BE2325C();
        sub_22BE1AE58();
        sub_22BE18190(v120);
        if (!v62)
        {
          sub_22BE233E8(v120, &qword_27D9082F0, &qword_22C27AB00);
        }

        goto LABEL_30;
      case 8:
        sub_22BE3B168();
        v105 = sub_22BE19454();
        sub_22BE3B620(v105, v106);
        sub_22BE2C73C();
        v107 = sub_22BE261AC();
        sub_22BE1AA68(v107, v108);
        v109 = *v4;
        v110 = *(v4 + 1);
        v111 = *(v4 + 2);

        sub_22BE1B5EC();
        sub_22C26E664();
        sub_22BE2325C();
        sub_22BE1AE58();
        sub_22C259638();
        sub_22BE1AE58();
        sub_22BE18944();
        sub_22BE1AE58();
        goto LABEL_29;
      case 9:
        sub_22BE2325C();
        sub_22BE1AE58();
        goto LABEL_29;
      default:
        sub_22BE2325C();
        sub_22BE1AE58();
        *v128 = *v0;
        goto LABEL_29;
    }

LABEL_18:
    v92 = v82;
    do
    {
      v82 = v92 + 1;
      if (__OFADD__(v92, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
        return;
      }

      if (v82 >= v87)
      {
        sub_22BE2325C();
        sub_22BE1AE58();
        sub_22BE3BBC4();
        sub_22BE1AE58();
        *v128 = v81;
LABEL_29:
        swift_storeEnumTagMultiPayload();
        goto LABEL_30;
      }

      ++v92;
    }

    while (!*(v117 + 8 * v82));
    v129 = v67;
    sub_22BE4878C();
    for (i = v93; ; i = v91)
    {
      v94 = v90 | (v82 << 6);
      v95 = (*(v118 + 48) + 16 * v94);
      v97 = *v95;
      v96 = v95[1];
      sub_22BE1AA68(*(v118 + 56) + *(v124 + 72) * v94, v88);
      sub_22BE1AA68(v88, v123);

      AST.FlatValue.init(transcript:)();
      v67 = v129;
      if (v129)
      {
        break;
      }

      sub_22BE2325C();
      sub_22BE1AE58();
      sub_22BE270BC();
      sub_22C25977C(v98);
      v81 = v119;
      v99 = (v119[6] + 16 * v94);
      *v99 = v97;
      v99[1] = v96;
      v100 = v119[7];
      v101 = *(v122 + 72);
      sub_22BE39150();
      sub_22BE3B620(v125, v102);
      sub_22C25A8A0();
      if (v104)
      {
        goto LABEL_33;
      }

      v119[2] = v103;
      v88 = v126;
      if (!i)
      {
        goto LABEL_18;
      }

LABEL_17:
      v129 = v67;
      sub_22BE22BE8();
    }

    sub_22BE1AE58();
    sub_22BE1AE58();
    sub_22BE3BBC4();
  }

  sub_22BE1AE58();
LABEL_30:
  sub_22BE19650();
  sub_22BE18478();
}

uint64_t AST.PickType.init(transcript:)(uint64_t *a1)
{
  v2 = *(a1 + 8);
  if (v2 == 255)
  {
    sub_22BE5CE4C(&qword_27D9155B0, &unk_22C2CC7A0);
    sub_22C25AA08();
    sub_22C1163A0();
    sub_22C108598();
    v5 = sub_22BE196B4();
    *v6 = v2;
    v6[1] = v1;
    sub_22C25A590(v5, v6);
    sub_22BE38AA4();
    return sub_22BE1AE58();
  }

  else
  {
    v3 = *a1;
    sub_22BE38AA4();
    sub_22BE1AE58();
    if (v2)
    {
      return 0;
    }

    else
    {
      return v3;
    }
  }
}

void AST.Update.init(transcript:)()
{
  sub_22BE19130();
  sub_22BE38A98();
  v5 = sub_22BE33FA8();
  v6 = type metadata accessor for TranscriptProtoASTFlatValue(v5);
  v7 = sub_22BE19448(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE1958C();
  MEMORY[0x28223BE20](v10);
  v11 = sub_22C2595B4();
  v12 = type metadata accessor for AST.FlatValue(v11);
  v13 = sub_22BE19448(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BE18928();
  MEMORY[0x28223BE20](v16);
  v17 = sub_22C2595A0();
  updated = type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant(v17);
  v19 = v1 + *(updated + 24);
  sub_22C101D18();
  if (v0)
  {
    sub_22BE37C6C();
    sub_22BE1AE58();
  }

  else
  {
    sub_22C25ABCC();
    AST.FlatValue.init(transcript:)();
    v20 = *v1;

    sub_22C0F2FA4();
    v22 = v21;
    v25 = *(v1 + 8);
    v23 = v1 + *(updated + 28);
    sub_22C101D18();
    sub_22C25A338();
    AST.FlatValue.init(transcript:)();
    sub_22BE37C6C();
    sub_22BE1AE58();
    sub_22BE3B620(v3, v2);
    v24 = type metadata accessor for AST.Update(0);
    *(v2 + v24[5]) = v22;
    *(v2 + v24[6]) = v25;
    sub_22BE3B620(v4, v2 + v24[7]);
  }

  sub_22BE22978();
  sub_22BE18478();
}

void TranscriptProtoASTFlatExpr.init(handwritten:)()
{
  sub_22BE19460();
  v6 = v5;
  v8 = v7;
  v9 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  v10 = sub_22BE19448(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BE1958C();
  MEMORY[0x28223BE20](v13);
  sub_22BE19E94();
  v272 = v14;
  v15 = sub_22BE5CE4C(&qword_27D90EDB8, &qword_22C2B5AC0);
  sub_22BE19448(v15);
  v17 = *(v16 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  v20 = &v271 - v19;
  v21 = sub_22C26E1D4();
  v285 = sub_22BE179D8(v21);
  v286 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v285);
  sub_22BE25544();
  MEMORY[0x28223BE20](v25);
  v26 = sub_22BE41E38();
  v274 = type metadata accessor for TranscriptProtoASTFlatValue(v26);
  v27 = sub_22BE179D8(v274);
  v278 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22BE17A44();
  v277 = v31;
  v32 = sub_22BE5CE4C(&qword_27D90EE30, &unk_22C2AE760);
  v33 = sub_22BE19448(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  sub_22BE17B98();
  sub_22BE43220();
  MEMORY[0x28223BE20](v36);
  sub_22BE19E94();
  v38 = sub_22C259AC0(v37);
  v39 = type metadata accessor for AST.FlatValue(v38);
  v40 = sub_22BE17A18(v39);
  v276 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  sub_22BE17D10();
  MEMORY[0x28223BE20](v44);
  sub_22BE1AF10();
  MEMORY[0x28223BE20](v45);
  sub_22BE426BC();
  MEMORY[0x28223BE20](v46);
  sub_22BE19E94();
  v48 = sub_22C259A68(v47);
  v49 = type metadata accessor for AST.FlatExpr(v48);
  v50 = sub_22BE18000(v49);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50);
  sub_22BE17CBC();
  v53 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  sub_22BE19448(v53);
  v55 = *(v54 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v56);
  v58 = sub_22BE1B278(v57);
  type metadata accessor for TranscriptProtoAstflatExprEnum(v58);
  v59 = sub_22C259C20();
  v282 = v60;
  v63 = sub_22C18F17C(v59, v61, v62, v60);
  v64 = *(type metadata accessor for TranscriptProtoASTFlatExpr(v63) + 20);
  v284 = v8;
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v281 = v6;
  v65 = sub_22BE1B5E0();
  sub_22BE1AA68(v65, v66);
  sub_22BE1AB74();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v178 = *v0;
      v179 = *(sub_22BE5CE4C(&qword_27D90A918, &qword_22C2D1EB0) + 48);
      sub_22BE39150();
      sub_22BE3B620(&v0[v180], v1);
      sub_22C259650();
      sub_22C1CF208();
      sub_22BE1AA68(v181, v182);
      sub_22C259FDC();
      TranscriptProtoASTFlatValue.init(handwritten:)();
      v183 = sub_22C25974C();
      v186 = sub_22C18F17C(v183, v184, v185, v274);
      v187 = type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant(v186);
      sub_22C25A658(v187);
      v188 = v283;
      sub_22C25976C();
      sub_22BE19DC4(v189, v190, v191, v192);
      sub_22C25AB40();
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE193D0();
      sub_22BE1AE58();
      sub_22BE23DF4();
      sub_22BE1AE58();
      *v188 = v178;
      sub_22C25AB4C();
      sub_22BE2343C();
      goto LABEL_38;
    case 2u:
      LODWORD(v286) = *v0;
      v114 = sub_22BE5CE4C(&qword_27D90A910, &unk_22C288B20);
      v115 = *(v114 + 48);
      v116 = *(v114 + 64);
      sub_22BE392BC();
      v118 = v280;
      sub_22BE3B620(&v0[v117], v280);
      sub_22BE3B620(&v0[v116], v279);
      sub_22C25A1F4();
      sub_22BE1AA68(v118, v3);
      sub_22C25AB1C();
      TranscriptProtoASTFlatValue.init(handwritten:)();
      v119 = sub_22C25974C();
      v120 = v274;
      sub_22BE19DC4(v119, v121, v122, v274);
      v123 = sub_22BE289D8();
      sub_22BE1AA68(v123, v124);
      sub_22C25ABCC();
      TranscriptProtoASTFlatValue.init(handwritten:)();
      v125 = sub_22BE22B8C();
      v128 = sub_22C18F17C(v125, v126, v127, v120);
      v129 = type metadata accessor for TranscriptProtoASTFlatExprInfixVariant(v128);
      v130 = v129[5];
      v131 = v283;
      sub_22C259860();
      sub_22BE19DC4(v132, v133, v134, v135);
      v136 = v129[6];
      sub_22C259860();
      sub_22BE19DC4(v137, v138, v139, v140);
      v141 = &v131[v129[7]];
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE193D0();
      sub_22BE1AE58();
      sub_22C25A260();
      sub_22BE1AE58();
      sub_22BE18944();
      sub_22BE1AE58();
      *v131 = v286;
      sub_22BE27B84();
      sub_22BE2343C();
      sub_22BE27B84();
      sub_22BE2343C();
      goto LABEL_38;
    case 3u:
      v147 = &v0[*(sub_22BE5CE4C(&qword_27D90A908, &unk_22C2D1EA0) + 48)];
      v148 = *v147;
      v149 = *(v147 + 1);
      sub_22BE39150();
      v150 = v280;
      sub_22BE3B620(v0, v280);
      sub_22C259650();
      sub_22BE1AA68(v150, v279);
      sub_22C259FDC();
      TranscriptProtoASTFlatValue.init(handwritten:)();
      v151 = sub_22C25974C();
      v154 = sub_22C18F17C(v151, v152, v153, v274);
      v155 = type metadata accessor for TranscriptProtoASTFlatExprDotVariant(v154);
      sub_22C25A658(v155);
      v156 = v283;
      sub_22C25976C();
      sub_22BE19DC4(v157, v158, v159, v160);
      sub_22C25AB40();
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE193D0();
      sub_22BE1AE58();
      sub_22BE23DF4();
      sub_22BE1AE58();
      sub_22C25AB4C();
      sub_22BE2343C();
      *v156 = v148;
      v156[1] = v149;
      goto LABEL_38;
    case 4u:
      v86 = *(sub_22BE5CE4C(&qword_27D90A900, &unk_22C288B10) + 48);
      sub_22BE392BC();
      v87 = v280;
      sub_22BE3B620(v0, v280);
      sub_22BE3B620(&v0[v86], v279);
      sub_22C25A1F4();
      sub_22BE1AA68(v87, v3);
      TranscriptProtoASTFlatValue.init(handwritten:)();
      v88 = sub_22BE19198();
      v89 = v274;
      sub_22BE19DC4(v88, v90, v91, v274);
      v92 = sub_22BE3E8FC();
      sub_22BE1AA68(v92, v93);
      sub_22BE44844();
      TranscriptProtoASTFlatValue.init(handwritten:)();
      v94 = sub_22BE33C68();
      sub_22BE19DC4(v94, v95, v96, v89);
      sub_22BE28D2C();
      v101 = sub_22C18F17C(v97, v98, v99, v100);
      v102 = *(type metadata accessor for TranscriptProtoASTFlatExprIndexVariant(v101) + 20);
      sub_22BE28D2C();
      sub_22BE19DC4(v103, v104, v105, v106);
      sub_22C25AB40();
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE193D0();
      sub_22BE1AE58();
      sub_22C25A260();
      sub_22BE1AE58();
      sub_22BE291B0();
      sub_22BE1AE58();
      sub_22BE2590C();
      sub_22BE27B84();
      sub_22BE2343C();
      sub_22BE27B84();
      sub_22BE2343C();
      goto LABEL_38;
    case 5u:
      sub_22C1C1AF8(*v0, v67, v68, v69, v70, v71, v72, v73, v271, v272);
      v193 = sub_22BE17BC4();
      v194 = *(type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant(v193) + 20);
      sub_22C25A128();
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE193D0();
      sub_22BE1AE58();
      *v8 = v49;
      goto LABEL_38;
    case 6u:
      v201 = *v0;
      v273 = *(v0 + 1);
      v274 = v201;
      v202 = *(v0 + 2);
      sub_22BE5CE4C(&qword_27D9156B0, &qword_22C2CCA90);
      v203 = sub_22C273D04();
      v204 = 0;
      v285 = v203;
      v286 = v202;
      v205 = *(v202 + 32);
      sub_22C259B4C();
      v206 = v202 + 64;
      v208 = v207 & *(v202 + 64);
      v210 = (v209 + 63) >> 6;
      v275 = v211 + 64;
      if (v208)
      {
        goto LABEL_22;
      }

      break;
    case 7u:
      v161 = *v0;
      v162 = *(*v0 + 16);
      if (v162)
      {
        v287 = MEMORY[0x277D84F90];
        sub_22C18E984();
        sub_22BE70138();
        v163 = v287;
        v164 = *(v286 + 16);
        v165 = *(v286 + 80);
        sub_22BE19E14();
        v278 = v161;
        v167 = v161 + v166;
        v279 = *(v168 + 56);
        v280 = v169;
        v286 = v168;
        v170 = (v168 - 8);
        do
        {
          v171 = sub_22BE3CEF4();
          v280(v171);
          sub_22C26E184();
          sub_22C25A560();
          v172 = *v170;
          v173 = sub_22C259FF4();
          v174(v173);
          v287 = v163;
          v176 = *(v163 + 16);
          v175 = *(v163 + 24);
          if (v176 >= v175 >> 1)
          {
            sub_22BE1AAE4(v175);
            sub_22BE70138();
            v163 = v287;
          }

          *(v163 + 16) = v176 + 1;
          v177 = v163 + 16 * v176;
          *(v177 + 32) = v8;
          *(v177 + 40) = v1;
          v167 += v279;
          --v162;
        }

        while (v162);
      }

      else
      {
        v269 = *v0;

        v163 = MEMORY[0x277D84F90];
      }

      v270 = *(type metadata accessor for TranscriptProtoASTFlatExprSayVariant(0) + 20);
      sub_22C25A128();
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE193D0();
      sub_22BE1AE58();
      *v8 = v163;
      goto LABEL_45;
    case 8u:
      v236 = &v0[*(sub_22BE5CE4C(&qword_27D90A8F8, &unk_22C2D1E90) + 48)];
      v237 = *v236;
      v238 = v236[8];
      v239 = v286;
      sub_22C18EB74();
      v240 = sub_22BE1A8C4();
      v241(v240);
      sub_22C26E184();
      sub_22C25A64C();
      if (v238)
      {
        v242 = 1;
      }

      else
      {
        v242 = v237;
      }

      *v20 = 0;
      v20[8] = -1;
      v243 = &v20[*(type metadata accessor for TranscriptProtoASTPickType(0) + 20)];
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      *v20 = v242;
      v20[8] = v238;
      sub_22C2597E4();
      v248 = sub_22C18F17C(v244, v245, v246, v247);
      v249 = type metadata accessor for TranscriptProtoASTFlatExprPickVariant(v248);
      v250 = *(v249 + 20);
      sub_22BE3AE2C();
      v252 = v251;
      sub_22BE19DC4(v253, v254, v255, v256);
      v257 = v252 + *(v249 + 24);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE193D0();
      sub_22BE1AE58();
      v258 = *(v239 + 8);
      v259 = sub_22BE31038();
      v260(v259);
      *v252 = v49;
      v252[1] = v0;
      sub_22BE2343C();
      goto LABEL_45;
    case 9u:
      v109 = sub_22C259B30();
      v110(v109);
      sub_22C26E184();
      sub_22BE3D554();
      v111 = *(type metadata accessor for TranscriptProtoASTFlatExprConfirmVariant(0) + 20);
      sub_22C25A128();
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE193D0();
      sub_22BE1AE58();
      v112 = sub_22C18F1E4();
      v113(v112, v20);
      *v8 = v49;
      *(v8 + 1) = v4;
      goto LABEL_38;
    case 0xAu:
      v231 = *v0;
      v232 = *(v0 + 1);
      v233 = v0[16];
      v234 = v0[17];
      v235 = *(type metadata accessor for TranscriptProtoASTFlatExprSearchVariant(0) + 28);
      sub_22C25A128();
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE193D0();
      sub_22BE1AE58();
      *v8 = v231;
      *(v8 + 1) = v232;
      *(v8 + 16) = v233;
      *(v8 + 17) = v234 & 1;
      goto LABEL_38;
    case 0xBu:
      v81 = sub_22C259B30();
      v82(v81);
      sub_22C26E184();
      sub_22BE3D554();
      v83 = *(type metadata accessor for TranscriptProtoASTFlatExprPickOneVariant(0) + 20);
      sub_22C25A128();
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE193D0();
      sub_22BE1AE58();
      v84 = sub_22C18F1E4();
      v85(v84, v20);
      *v8 = v49;
      *(v8 + 1) = v4;
      goto LABEL_38;
    case 0xCu:
      v107 = *v0;
      v108 = *(type metadata accessor for TranscriptProtoASTFlatExprResolveToolVariant(0) + 20);
      sub_22C25A128();
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE193D0();
      sub_22BE1AE58();
      *v8 = v107;
      goto LABEL_38;
    case 0xDu:
      v195 = &qword_27D9082F0;
      v196 = v272;
      sub_22BE27B84();
      sub_22BE424BC();
      sub_22BE3EA80();
      sub_22BE27B84();
      sub_22BE22814();
      v197 = sub_22BE406A0();
      v198 = v285;
      if (sub_22BE1AEA8(v197, v199, v285) == 1)
      {
        sub_22BE233E8(v2, &qword_27D9082F0, &qword_22C27AB00);
        v195 = 0;
        v200 = 0;
      }

      else
      {
        v200 = v2;
        sub_22C26E184();
        sub_22BE3D554();
        (*(v286 + 8))(v2, v198);
      }

      v261 = v282;
      v267 = v283;
      v268 = type metadata accessor for TranscriptProtoASTFlatExprUndoVariant(0);
      sub_22C25A948(v268);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE193D0();
      sub_22BE1AE58();
      sub_22BE233E8(v196, &qword_27D9082F0, &qword_22C27AB00);
      *v267 = v195;
      v267[1] = v200;
      goto LABEL_39;
    case 0xEu:
      v76 = sub_22C259B30();
      v77(v76);
      sub_22C26E184();
      sub_22BE3D554();
      v78 = *(type metadata accessor for TranscriptProtoASTFlatExprRejectVariant(0) + 20);
      sub_22C25A128();
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE193D0();
      sub_22BE1AE58();
      v79 = sub_22C18F1E4();
      v80(v79, v20);
      *v8 = v49;
      *(v8 + 1) = v4;
      goto LABEL_38;
    case 0xFu:
      v142 = sub_22C259B30();
      v143(v142);
      sub_22C26E184();
      sub_22BE3D554();
      v144 = *(type metadata accessor for TranscriptProtoASTFlatExprCancelVariant(0) + 20);
      sub_22C25A128();
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE193D0();
      sub_22BE1AE58();
      v145 = sub_22C18F1E4();
      v146(v145, v20);
      *v8 = v49;
      *(v8 + 1) = v4;
      goto LABEL_38;
    case 0x10u:
    case 0x12u:
      sub_22BE193D0();
      sub_22BE1AE58();
      goto LABEL_38;
    case 0x11u:
    case 0x13u:
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE193D0();
      sub_22BE1AE58();
      goto LABEL_38;
    default:
      sub_22BE39150();
      sub_22C1CF208();
      sub_22BE3B620(v74, v75);
      sub_22C259650();
      sub_22BE1AA68(v49, v279);
      sub_22BE362B8();
      TranscriptProtoASTFlatValue.init(handwritten:)();
      sub_22BE193D0();
      sub_22BE1AE58();
      sub_22BE23DF4();
      sub_22BE1AE58();
LABEL_38:
      v261 = v282;
      goto LABEL_39;
  }

LABEL_23:
  v213 = v204;
  while (1)
  {
    v204 = v213 + 1;
    if (__OFADD__(v213, 1))
    {
      __break(1u);
LABEL_47:
      __break(1u);
      return;
    }

    if (v204 >= v210)
    {
      break;
    }

    ++v213;
    if (*(v206 + 8 * v204))
    {
      sub_22BE29270();
      v208 = v215 & v214;
      while (1)
      {
        v216 = v212 | (v204 << 6);
        v217 = (*(v286 + 48) + 16 * v216);
        v219 = *v217;
        v218 = v217[1];
        v8 = v280;
        sub_22BE1AA68(*(v286 + 56) + *(v276 + 72) * v216, v280);
        sub_22BE36674();
        sub_22BE1AA68(v220, v221);

        v222 = v277;
        TranscriptProtoASTFlatValue.init(handwritten:)();
        sub_22BE23DF4();
        sub_22BE1AE58();
        sub_22BE270BC();
        sub_22C25977C(v223);
        v203 = v285;
        v224 = (*(v285 + 48) + 16 * v216);
        *v224 = v219;
        v224[1] = v218;
        v225 = *(v203 + 56);
        v226 = *(v278 + 72);
        sub_22BE391D0();
        sub_22BE3B620(v222, v227);
        v228 = *(v203 + 16);
        v229 = __OFADD__(v228, 1);
        v230 = v228 + 1;
        if (v229)
        {
          goto LABEL_47;
        }

        *(v203 + 16) = v230;
        if (!v208)
        {
          goto LABEL_23;
        }

LABEL_22:
        sub_22BE37764();
      }
    }
  }

  v265 = *(type metadata accessor for TranscriptProtoASTFlatExprCallVariant(0) + 24);
  sub_22C25A128();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE193D0();
  sub_22BE1AE58();
  v266 = v273;
  *v8 = v274;
  *(v8 + 1) = v266;
  *(v8 + 2) = v203;
LABEL_45:
  v261 = v282;
LABEL_39:
  sub_22BE232C8();
  swift_storeEnumTagMultiPayload();
  v262 = sub_22BE3C530();
  sub_22BE19DC4(v262, v263, v264, v261);
  sub_22BE1B328();
  sub_22BE2343C();
  sub_22BE1AABC();
}

void TranscriptProtoASTFlatValue.init(handwritten:)()
{
  sub_22BE19460();
  v6 = v5;
  sub_22BE4066C();
  v103 = sub_22C26E1D4();
  v7 = sub_22BE179D8(v103);
  v101 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE18DFC();
  v11 = sub_22C26E684();
  v12 = sub_22C259488(v11);
  v102 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BE25544();
  MEMORY[0x28223BE20](v16);
  v17 = sub_22BE20558();
  v18 = type metadata accessor for TranscriptProtoASTFlatValue(v17);
  v19 = sub_22BE179D8(v18);
  v107 = v20;
  v108 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22BE17A44();
  v24 = sub_22BE48A8C(v23);
  v25 = type metadata accessor for AST.FlatValue(v24);
  v26 = sub_22BE179D8(v25);
  v105 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22BE17B98();
  sub_22BE3E334();
  MEMORY[0x28223BE20](v30);
  v32 = &v98 - v31;
  MEMORY[0x28223BE20](v33);
  v34 = sub_22C2595A0();
  v110 = type metadata accessor for TranscriptProtoAstflatValueEnum(v34);
  v35 = sub_22BE18000(v110);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  sub_22BE1955C();
  sub_22C259650();
  v109 = v6;
  v38 = sub_22BE1824C();
  sub_22BE1AA68(v38, v39);
  sub_22BE3EA80();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 2u:
      *v3 = *v2;
      sub_22C259BB0();
      goto LABEL_20;
    case 3u:
    case 6u:
      v42 = v2[1];
      *v3 = *v2;
      v3[1] = v42;
      sub_22C259BB0();
      goto LABEL_20;
    case 4u:
      sub_22C1C1808(*v2);
      v40 = sub_22BE17BC4();
      v41 = type metadata accessor for TranscriptProtoASTFlatValueArrayVariant(v40);
      sub_22BE34080(v41);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      *v3 = v0;
      sub_22C259BB0();
      goto LABEL_20;
    case 5u:
      v52 = *v2;
      sub_22BE5CE4C(&qword_27D9156B0, &qword_22C2CCA90);
      sub_22BE3D3E0();
      sub_22C273D04();
      v53 = 0;
      v54 = *(v52 + 32);
      sub_22C259B4C();
      v55 = v52 + 64;
      i = v56 & *(v52 + 64);
      v59 = (v58 + 63) >> 6;
      v103 = v60;
      v100 = v60 + 64;
      v101 = v52;
      v98 = v3;
      v99 = v4;
      if (i)
      {
        goto LABEL_9;
      }

      break;
    case 7u:
      v43 = v102;
      sub_22C18EB74();
      v44 = sub_22BE37490();
      v45(v44);
      sub_22C259E94(v43);
      sub_22BE36674();
      v46();
      v47 = sub_22C26E674();
      sub_22C26E654();
      sub_22C25A560();
      v48 = v3 + *(type metadata accessor for TranscriptProtoStatementID(0) + 24);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v49 = *(v43 + 8);
      v50 = sub_22BE1A8C4();
      v49(v50);
      v51 = sub_22BE260B8();
      v49(v51);
      *v3 = v47;
      v3[1] = v1;
      v3[2] = v2;
      sub_22C259BB0();
      goto LABEL_20;
    case 8u:
      v81 = v101;
      sub_22BE286F0();
      v82 = sub_22BE29454();
      v83(v82);
      sub_22C26E184();
      sub_22BE3D554();
      v84 = *(v81 + 8);
      v85 = sub_22BE232C8();
      v86(v85);
      *v3 = v0;
      v3[1] = v1;
      sub_22C259BB0();
      goto LABEL_20;
    case 9u:
      sub_22C259BB0();
      goto LABEL_20;
    default:
      *v3 = *v2;
      sub_22C259BB0();
      goto LABEL_20;
  }

LABEL_10:
  v62 = v53;
  while (1)
  {
    v53 = v62 + 1;
    if (__OFADD__(v62, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      return;
    }

    if (v53 >= v59)
    {
      break;
    }

    ++v62;
    if (*(v55 + 8 * v53))
    {
      sub_22BE29270();
      for (i = v64 & v63; ; i &= i - 1)
      {
        v65 = v61 | (v53 << 6);
        v66 = *(v101 + 56);
        v67 = (*(v101 + 48) + 16 * v65);
        v68 = v67[1];
        v102 = *v67;
        sub_22BE1AA68(v66 + *(v105 + 72) * v65, v32);
        v69 = v104;
        sub_22BE39E94();
        sub_22BE1AA68(v70, v71);

        v72 = v106;
        TranscriptProtoASTFlatValue.init(handwritten:)(v69);
        sub_22BE23DF4();
        sub_22BE1AE58();
        sub_22BE270BC();
        sub_22C25977C(v73);
        v74 = v103;
        v75 = (*(v103 + 48) + 16 * v65);
        *v75 = v102;
        v75[1] = v68;
        v76 = *(v74 + 56);
        v77 = *(v107 + 72);
        sub_22BE391D0();
        sub_22BE3B620(v72, v78);
        sub_22C25A8A0();
        if (v80)
        {
          break;
        }

        *(v103 + 16) = v79;
        v3 = v98;
        v4 = v99;
        if (!i)
        {
          goto LABEL_10;
        }

LABEL_9:
        sub_22C25AC70();
      }

      goto LABEL_22;
    }
  }

  v87 = type metadata accessor for TranscriptProtoASTFlatValueDictVariant(0);
  sub_22BE34080(v87);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v3 = v103;
  sub_22C259BB0();
LABEL_20:
  swift_storeEnumTagMultiPayload();
  sub_22BE32EE0();
  sub_22BE19DC4(v88, v89, v90, v91);
  v92 = v4 + *(v108 + 20);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE23DF4();
  sub_22BE1AE58();
  sub_22BE233E8(v4, &qword_27D909178, &qword_22C27FD70);
  v93 = sub_22C1088AC();
  sub_22BE3B620(v93, v4);
  sub_22BE25FFC();
  sub_22BE19DC4(v94, v95, v96, v97);
  sub_22BE1AABC();
}

uint64_t TranscriptProtoASTPickType.init(handwritten:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = a2 & 1;
  if (a2)
  {
    a1 = 1;
  }

  *a3 = 0;
  *(a3 + 8) = -1;
  v6 = type metadata accessor for TranscriptProtoASTPickType(0);
  sub_22BE48874(v6);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *a3 = a1;
  *(a3 + 8) = v4;
  return result;
}

void TranscriptProtoASTFlatExprUpdateVariant.init(handwritten:)()
{
  sub_22BE19460();
  v4 = sub_22BE1B254();
  v5 = type metadata accessor for AST.FlatValue(v4);
  v6 = sub_22BE19448(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE294E0();
  v9 = sub_22BE5CE4C(&qword_27D90EE30, &unk_22C2AE760);
  v10 = sub_22BE19448(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BE192E0();
  MEMORY[0x28223BE20](v13);
  sub_22BE2EDB8();
  sub_22BE1AA68(v1, v3);
  sub_22C25A338();
  TranscriptProtoASTFlatValue.init(handwritten:)();
  v14 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v15 = sub_22C25974C();
  v18 = sub_22C18F17C(v15, v16, v17, v14);
  v19 = type metadata accessor for AST.Update(v18);
  sub_22C25A6A0(v19);
  v21 = *(v1 + v20);

  sub_22C1C1808(v22, v23, v24, v25, v26, v27, v28, v29, v48, v49);
  v31 = v30;
  sub_22BE1AA68(v1 + *(v2 + 28), v3);
  sub_22C25A894();
  TranscriptProtoASTFlatValue.init(handwritten:)();
  v32 = sub_22BE22B8C();
  sub_22BE19DC4(v32, v33, v34, v14);
  v35 = *(v1 + *(v2 + 24));
  updated = type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant(0);
  v37 = updated[6];
  sub_22C25975C();
  sub_22BE19DC4(v38, v39, v40, v41);
  v42 = updated[7];
  sub_22C25975C();
  sub_22BE19DC4(v43, v44, v45, v46);
  v47 = v0 + updated[8];
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C0E9A74();
  sub_22BE1AE58();
  sub_22BE2343C();
  *v0 = v31;
  sub_22BE2EDC8();
  sub_22BE2343C();
  *(v0 + 8) = v35;
  sub_22BE1AABC();
}

uint64_t sub_22C248824@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = AST.PickType.init(transcript:)(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
  }

  return result;
}

uint64_t sub_22C2488D0@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  result = AST.PrefixOp.init(transcript:)(&v4);
  *a2 = result;
  return result;
}

uint64_t sub_22C248914@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  result = AST.InfixOp.init(transcript:)(&v4);
  *a2 = result;
  return result;
}

void Action.ParameterValue.init(transcript:)()
{
  sub_22BE1B214();
  sub_22BE271BC();
  v1 = sub_22BE5CE4C(&qword_27D90E688, &qword_22C296F40);
  sub_22BE19448(v1);
  v3 = *(v2 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1B01C();
  v5 = sub_22BE5CE4C(&qword_27D909088, &unk_22C27FCA0);
  sub_22BE19448(v5);
  v7 = *(v6 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  v9 = sub_22BE3100C();
  v10 = type metadata accessor for TranscriptProtoToolParameterValue(v9);
  v11 = sub_22BE19448(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = sub_22BE1AD20();
  v15 = type metadata accessor for ToolParameterValue(v14);
  v16 = sub_22BE19448(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BE1955C();
  sub_22C1038A4();
  if (v0)
  {
    sub_22BE31278();
    sub_22BE1AE58();
  }

  else
  {
    sub_22C25A338();
    ToolParameterValue.init(transcript:)();
    v19 = *(type metadata accessor for TranscriptProtoActionParameterValue(0) + 20);
    sub_22BE22814();
    sub_22C25A610();
    sub_22C0FCE10();
    sub_22BE31278();
    sub_22BE1AE58();
    v20 = *(type metadata accessor for Action.ParameterValue(0) + 20);
    sub_22C26F7C4();
    sub_22BE1A140();
    sub_22BE19DC4(v21, v22, v23, v24);
    sub_22C259A20();
    v25 = sub_22BE39EAC();
    sub_22BE3B620(v25, v26);
    sub_22BE2343C();
  }

  sub_22BE25C6C();
}

void ToolParameterValue.init(transcript:)()
{
  sub_22BE19130();
  sub_22C25A05C();
  v1 = sub_22C272594();
  v2 = sub_22BE179D8(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BE1958C();
  MEMORY[0x28223BE20](v7);
  sub_22BE28C8C();
  MEMORY[0x28223BE20](v8);
  v9 = sub_22BE2558C();
  v10 = type metadata accessor for TranscriptProtoToolParameterValueEnum(v9);
  v11 = sub_22BE19448(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BE188B0();
  sub_22C25AA44();
  sub_22C102D6C();
  if (v0)
  {
    sub_22C259518();
    sub_22BE1AE58();
  }

  else
  {
    sub_22C18F458();
    v14 = sub_22BE3911C();
    v15(v14);
    v16 = *(v4 + 16);
    v17 = sub_22BE1B5E0();
    v16(v17);
    v18 = sub_22BE196A8();
    v16(v18);
    sub_22C272864();
    v19 = *(v4 + 8);
    v20 = sub_22BE39EAC();
    v19(v20);
    sub_22C259518();
    sub_22BE1AE58();
    v21 = sub_22BE1AB74();
    v19(v21);
  }

  sub_22BE35D48();
  sub_22BE18478();
}

void TranscriptProtoToolParameterValue.init(handwritten:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  sub_22BE3129C();
  v15 = v14;
  v16 = sub_22C272594();
  v17 = sub_22BE179D8(v16);
  v74 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BE1955C();
  v21 = sub_22C272874();
  v22 = sub_22BE41130(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22BE25544();
  MEMORY[0x28223BE20](v27);
  v28 = sub_22BE41E38();
  v29 = type metadata accessor for ToolParameterValue(v28);
  v30 = sub_22BE19448(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v33 = sub_22BE2F294();
  v73 = type metadata accessor for TranscriptProtoToolParameterValueEnum(v33);
  v34 = sub_22BE18000(v73);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22BE2582C();
  MEMORY[0x28223BE20](v37);
  sub_22BE3E3EC(v38, v39, v40, v41, v42, v43, v44, v45, v71);
  v46 = sub_22BE19EBC();
  sub_22BE1AA68(v46, v12);
  sub_22BE286F0();
  v47 = sub_22BE191C0();
  v48(v47);
  v49 = sub_22C259D90();
  v50(v49, v13, v11);
  sub_22C272854();
  if (a10)
  {
    sub_22C259500();
    sub_22BE1AE58();
    v51 = *(v24 + 8);
    v52 = sub_22BE27A44();
    v51(v52);
    v53 = sub_22BE25C94();
    v51(v53);
  }

  else
  {
    v54 = v15;
    v55 = *(v24 + 8);
    v56 = sub_22BE27A44();
    v55(v56);
    v57 = sub_22BE25C94();
    v55(v57);
    v58 = *(v74 + 32);
    v59 = sub_22BE3AF28();
    v60(v59);
    sub_22BE37AE4();
    sub_22BE3B620(v10, v72);
    v61 = sub_22BE38960();
    v64 = sub_22C18F17C(v61, v62, v63, v73);
    v65 = type metadata accessor for TranscriptProtoToolParameterValue(v64);
    sub_22BE48874(v65);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22C259500();
    sub_22BE1AE58();
    sub_22BE233E8(v54, &qword_27D90F038, &qword_22C297100);
    v66 = sub_22BE200D4();
    sub_22BE3B620(v66, v67);
    v68 = sub_22BE2500C();
    sub_22BE19DC4(v68, v69, v70, v73);
  }

  sub_22C18F0A4();
  sub_22BE18478();
}

void TranscriptProtoRetrievedContextStatement.init(handwritten:)()
{
  sub_22BE19130();
  sub_22C25A6AC();
  sub_22C18F934(v4);
  v5 = sub_22C270F24();
  v6 = sub_22BE179D8(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE3C444(v9, v58);
  v10 = sub_22BE5CE4C(&qword_27D9091A8, &qword_22C27FDA0);
  sub_22BE19448(v10);
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE20168(v14, v59);
  v15 = sub_22C26E684();
  v16 = sub_22BE179D8(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BE2379C();
  v19 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v19);
  v21 = *(v20 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v22);
  sub_22BE1A8B4();
  v23 = sub_22BE37EE0();
  v24(v23, v3, v15);
  v25 = sub_22C26E674();
  v26 = sub_22C26E654();
  v27 = sub_22C25A4A0();
  v28 = type metadata accessor for TranscriptProtoStatementID(v27);
  sub_22C25A3A8(v28);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v29 = sub_22C259ED8();
  v30(v29);
  *v2 = v25;
  *(v2 + 8) = v26;
  *(v2 + 16) = v1;
  v31 = sub_22BE33C68();
  v34 = sub_22C259E00(v31, v32, v33);
  v35 = type metadata accessor for RetrievedContextStatement(v34);
  v36 = sub_22C259F08(v35);
  v37(v36);
  v38 = sub_22C25A48C();
  ContextProtoRetrievedContext.init(context:)(v38, v39, v40, v41, v42, v43, v44, v45, v60, v61, SWORD2(v61), SBYTE6(v61), SHIBYTE(v61));
  if (v0)
  {
    sub_22BE3E76C();
    sub_22BE1AE58();
    sub_22BE233E8(v2, &qword_27D9090F8, &unk_22C2AE4A0);
  }

  else
  {
    type metadata accessor for ContextProtoRetrievedContext(0);
    sub_22C25ADE0();
    sub_22BE25FFC();
    sub_22BE19DC4(v46, v47, v48, v49);
    v50 = sub_22BFB1A7C();
    v52 = sub_22BE33738(v50, v51);
    v53 = type metadata accessor for TranscriptProtoRetrievedContextStatement(v52);
    sub_22BE33FC0(v53);
    sub_22BE32EE0();
    sub_22C25AD2C(v54, v55, v56, v57);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE3E76C();
    sub_22BE1AE58();
    sub_22BE196A8();
    sub_22BE2343C();
    sub_22BE2343C();
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

void TranscriptProtoDynamicEnumerationEntityStatement.init(handwritten:)()
{
  sub_22BE19130();
  sub_22C25A6AC();
  sub_22C18F934(v4);
  v5 = sub_22C271904();
  v6 = sub_22BE179D8(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE3C444(v9, v50);
  v10 = sub_22BE5CE4C(&qword_27D9090E8, &qword_22C2B5A90);
  sub_22BE19448(v10);
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE20168(v14, v51);
  v15 = sub_22C26E684();
  v16 = sub_22BE179D8(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BE2379C();
  v19 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v19);
  v21 = *(v20 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v22);
  sub_22BE1A8B4();
  v23 = sub_22BE37EE0();
  v24(v23, v3, v15);
  v25 = sub_22C26E674();
  v26 = sub_22C26E654();
  v27 = sub_22C25A4A0();
  v28 = type metadata accessor for TranscriptProtoStatementID(v27);
  sub_22C25A3A8(v28);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v29 = sub_22C259ED8();
  v30(v29);
  *v2 = v25;
  *(v2 + 8) = v26;
  *(v2 + 16) = v1;
  v31 = sub_22BE33C68();
  v34 = sub_22C259E00(v31, v32, v33);
  v35 = type metadata accessor for DynamicEnumerationEntityStatement(v34);
  v36 = sub_22C259F08(v35);
  v37(v36);
  sub_22C25A48C();
  ContextProtoDynamicEnumerationEntity.init(handwritten:)();
  if (v0)
  {
    sub_22BE3E76C();
    sub_22BE1AE58();
    sub_22BE233E8(v2, &qword_27D9090F8, &unk_22C2AE4A0);
  }

  else
  {
    type metadata accessor for ContextProtoDynamicEnumerationEntity(0);
    sub_22C25ADE0();
    sub_22BE25FFC();
    sub_22BE19DC4(v38, v39, v40, v41);
    v42 = sub_22BFB1A7C();
    v44 = sub_22BE33738(v42, v43);
    v45 = type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement(v44);
    sub_22BE33FC0(v45);
    sub_22BE32EE0();
    sub_22C25AD2C(v46, v47, v48, v49);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE3E76C();
    sub_22BE1AE58();
    sub_22BE196A8();
    sub_22BE2343C();
    sub_22BE2343C();
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

void DynamicEnumerationEntityStatement.init(transcript:)()
{
  sub_22BE19130();
  sub_22C25A430();
  v2 = sub_22BE2054C(v1);
  v3 = type metadata accessor for ContextProtoDynamicEnumerationEntity(v2);
  v4 = sub_22BE19448(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE17A44();
  sub_22C259BA0(v7);
  v8 = sub_22C271904();
  v9 = sub_22BE1A3D8(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BE1955C();
  v12 = type metadata accessor for TranscriptProtoStatementID(0);
  v13 = sub_22BE19448(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BE197B8();
  v16 = sub_22C26E684();
  v17 = sub_22BE179D8(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BE28FD8();
  sub_22C25AD70();
  sub_22C1026C4();
  if (v0)
  {
    sub_22BE39380();
  }

  else
  {
    sub_22C25A96C();
    sub_22BE1804C();
    sub_22C26E664();
    sub_22BE18B80();
    sub_22BE1AE58();
    v20 = type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement(0);
    sub_22C25A53C(v20);
    sub_22C25A858();
    sub_22C102F4C();
    sub_22C259FDC();
    DynamicEnumerationEntity.init(transcript:)();
    sub_22BE39380();
    v21 = *(v27 + 32);
    v22 = sub_22BE41FB4();
    v23(v22);
    v24 = type metadata accessor for DynamicEnumerationEntityStatement(0);
    v25 = sub_22C25A748(v24);
    v26(v25);
  }

  sub_22BE467E4();
  sub_22BE18478();
}

void SpanMatchedEntityStatement.init(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  sub_22C259FE8();
  v62 = v12;
  v13 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  sub_22BE19448(v13);
  v15 = *(v14 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  sub_22BE20310(v17, v58);
  v18 = sub_22BE5CE4C(&qword_27D907400, &unk_22C274F90);
  sub_22BE19448(v18);
  v20 = *(v19 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v21);
  v23 = sub_22BE415D8(v22);
  v24 = type metadata accessor for ContextProtoSpanMatchedEntity(v23);
  v25 = sub_22BE18000(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22BE17A44();
  sub_22BE4682C(v28);
  v29 = sub_22C270FD4();
  v30 = sub_22BE179D8(v29);
  v61 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  sub_22BE17CBC();
  v34 = type metadata accessor for TranscriptProtoStatementID(0);
  v35 = sub_22BE19448(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  sub_22BE28FD8();
  v38 = sub_22C26E684();
  v39 = sub_22BE41130(v38);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  sub_22BE188B0();
  sub_22C1026C4();
  if (a10)
  {
    sub_22BE3C1A8();
  }

  else
  {
    v42 = *v11;
    v43 = *(v11 + 1);
    v44 = *(v11 + 2);

    sub_22BE1804C();
    sub_22C26E664();
    sub_22BE18B80();
    sub_22BE1AE58();
    v45 = type metadata accessor for TranscriptProtoSpanMatchedEntityStatement(0);
    sub_22C25A73C(v45);
    sub_22C103994();
    v46 = *(v24 + 20);
    sub_22BE22814();
    sub_22C0FC7A8(v63, v47, v48, v49, v50, v51, v52, v53, v10, v29);
    v54 = *v64;

    sub_22C0F436C();
    sub_22C270FA4();
    sub_22BE3CC7C();
    sub_22BE3C1A8();
    v55 = sub_22BE426E8();
    v56(v55);
    v57 = type metadata accessor for SpanMatchedEntityStatement(0);
    (*(v61 + 32))(v62 + *(v57 + 20), v59, v60);
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

void TranscriptProtoSpanMatchedEntityStatement.init(handwritten:)()
{
  sub_22BE19130();
  sub_22C25A6AC();
  sub_22C18F934(v4);
  v5 = sub_22C270FD4();
  v6 = sub_22BE179D8(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE3C444(v9, v50);
  v10 = sub_22BE5CE4C(&qword_27D909138, &qword_22C2B5A80);
  sub_22BE19448(v10);
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE20168(v14, v51);
  v15 = sub_22C26E684();
  v16 = sub_22BE179D8(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BE2379C();
  v19 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v19);
  v21 = *(v20 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v22);
  sub_22BE1A8B4();
  v23 = sub_22BE37EE0();
  v24(v23, v3, v15);
  v25 = sub_22C26E674();
  v26 = sub_22C26E654();
  v27 = sub_22C25A4A0();
  v28 = type metadata accessor for TranscriptProtoStatementID(v27);
  sub_22C25A3A8(v28);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v29 = sub_22C259ED8();
  v30(v29);
  *v2 = v25;
  *(v2 + 8) = v26;
  *(v2 + 16) = v1;
  v31 = sub_22BE33C68();
  v34 = sub_22C259E00(v31, v32, v33);
  v35 = type metadata accessor for SpanMatchedEntityStatement(v34);
  v36 = sub_22C259F08(v35);
  v37(v36);
  sub_22C25A48C();
  ContextProtoSpanMatchedEntity.init(handwritten:)();
  if (v0)
  {
    sub_22BE3E76C();
    sub_22BE1AE58();
    sub_22BE233E8(v2, &qword_27D9090F8, &unk_22C2AE4A0);
  }

  else
  {
    type metadata accessor for ContextProtoSpanMatchedEntity(0);
    sub_22C25ADE0();
    sub_22BE25FFC();
    sub_22BE19DC4(v38, v39, v40, v41);
    v42 = sub_22BFB1A7C();
    v44 = sub_22BE33738(v42, v43);
    v45 = type metadata accessor for TranscriptProtoSpanMatchedEntityStatement(v44);
    sub_22BE33FC0(v45);
    sub_22BE32EE0();
    sub_22C25AD2C(v46, v47, v48, v49);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE3E76C();
    sub_22BE1AE58();
    sub_22BE196A8();
    sub_22BE2343C();
    sub_22BE2343C();
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

void ExecutorError.init(transcript:)()
{
  sub_22BE19130();
  v4 = sub_22C25A3B4(v3);
  v5 = type metadata accessor for TranscriptProtoIntelligenceFlowError(v4);
  v6 = sub_22BE18000(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE192E0();
  MEMORY[0x28223BE20](v9);
  sub_22BE2EDB8();
  v10 = sub_22BE200D4();
  v12 = sub_22BE5CE4C(v10, v11);
  sub_22BE19448(v12);
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE25334();
  v17 = type metadata accessor for TranscriptProtoExecutorErrorEnum(v16);
  v18 = sub_22BE18000(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BE188B0();
  sub_22BE354DC();
  sub_22BE22814();
  sub_22BE23B00(v1);
  if (v24)
  {
    sub_22BE233E8(v1, &qword_27D90E818, &qword_22C2AE5A0);
    sub_22BE5CE4C(&qword_27D9156B8, &unk_22C2CCA98);
    sub_22BE43258();
    sub_22BE3D554();
    sub_22C108598();
    v21 = sub_22BE196B4();
    sub_22C259EA0(v21, v22);
    sub_22BE35D00();
    sub_22BE1AE58();
  }

  else
  {
    v23 = sub_22BE44744();
    sub_22BE3B620(v23, v2);
    sub_22BE1AB5C(v2, 1, v5);
    if (v24)
    {
      sub_22BE35D00();
      sub_22BE1AE58();
      v35 = 1;
      v34 = v37;
    }

    else
    {
      sub_22BE3C670();
      v25 = sub_22BF0AFB8();
      sub_22BE3B620(v25, v26);
      sub_22BE26170();
      v27 = sub_22BE18240();
      sub_22BE1AA68(v27, v28);
      v29 = *v0;
      v30 = v0[1];
      v31 = v0[2];
      objc_allocWithZone(MEMORY[0x277CCA9B8]);

      v32 = sub_22BE19454();
      sub_22C25A990(v32, v33, v31);
      v34 = v37;
      sub_22C26E5E4();
      sub_22BE35D00();
      sub_22BE1AE58();
      sub_22BE38A00();
      sub_22BE1AE58();
      sub_22BE39EAC();
      sub_22BE1AE58();
      v35 = 0;
    }

    v36 = sub_22C26E5D4();
    sub_22BE19DC4(v34, v35, 1, v36);
  }

  sub_22BE35D48();
  sub_22BE18478();
}

void SessionCoordinatorError.init(transcript:)()
{
  sub_22BE19130();
  v2 = sub_22C259D80();
  v3 = type metadata accessor for TranscriptProtoIntelligenceFlowError(v2);
  v4 = sub_22BE19448(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE2582C();
  MEMORY[0x28223BE20](v7);
  v8 = sub_22C2595A0();
  v9 = type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum(v8);
  v10 = sub_22BE18000(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BE188B0();
  sub_22C10298C();
  if (v0)
  {
    sub_22C259978();
    sub_22BE1AE58();
  }

  else
  {
    sub_22BE180C8();
    swift_getEnumCaseMultiPayload();
    sub_22BE3C670();
    v13 = sub_22BE1824C();
    sub_22BE3B620(v13, v14);
    sub_22BE26170();
    v15 = sub_22BE1AB1C();
    sub_22BE1AA68(v15, v16);
    v17 = *v1;
    v18 = v1[1];
    v19 = v1[2];
    objc_allocWithZone(MEMORY[0x277CCA9B8]);

    v20 = sub_22BE3E8FC();
    sub_22C25A990(v20, v21, v19);
    sub_22C26E5E4();
    sub_22C259978();
    sub_22BE1AE58();
    sub_22C25A1D0();
    sub_22BE1AE58();
    sub_22BE36680();
    sub_22BE1AE58();
    type metadata accessor for SessionCoordinatorError();
    sub_22BE23BA8();
    swift_storeEnumTagMultiPayload();
  }

  sub_22BE46D98();
  sub_22BE18478();
}

void PlannerError.init(transcript:)()
{
  sub_22BE19130();
  sub_22BE38A98();
  v4 = sub_22BE2054C(v3);
  v5 = type metadata accessor for TranscriptProtoIntelligenceFlowError(v4);
  v6 = sub_22BE19448(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE18928();
  MEMORY[0x28223BE20](v9);
  sub_22BE26800();
  v10 = sub_22BE2684C();
  v12 = sub_22BE5CE4C(v10, v11);
  sub_22BE19448(v12);
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE25334();
  v17 = type metadata accessor for TranscriptProtoPlannerErrorEnum(v16);
  v18 = sub_22BE18000(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BE188B0();
  sub_22BE354DC();
  sub_22BE22814();
  v21 = sub_22BE406A0();
  sub_22BE1AB5C(v21, v22, v17);
  if (v23)
  {
    sub_22BE233E8(v1, &qword_27D90E830, &qword_22C2AE5B0);
    sub_22BE5CE4C(&qword_27D9156C0, &unk_22C2CCAA8);
    v24 = sub_22BE43258();
    v26 = v25;
    sub_22C108598();
    v27 = sub_22BE196B4();
    *v28 = v24;
    v28[1] = v26;
    sub_22C25A590(v27, v28);
    sub_22BE3405C();
    sub_22BE1AE58();
  }

  else
  {
    v29 = sub_22BE44744();
    sub_22BE3B620(v29, v2);
    sub_22BE25EFC();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      sub_22BE3405C();
    }

    else
    {
      sub_22BE3C670();
      v31 = sub_22BE1824C();
      sub_22BE3B620(v31, v32);
      sub_22BE26170();
      v33 = sub_22BE1B18C();
      sub_22BE1AA68(v33, v34);
      v35 = *v0;
      v36 = v0[1];
      v37 = v0[2];
      v38 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      sub_22C25AC4C();

      v39 = sub_22BE336E8();
      sub_22C25A990(v39, v40, v37);
      sub_22C26E5E4();
      sub_22BE3405C();
      sub_22BE1AE58();
      sub_22C25A1D0();
      sub_22BE1AE58();
      sub_22BE36680();
    }

    sub_22BE1AE58();
    type metadata accessor for PlannerError();
    sub_22BE31160();
    swift_storeEnumTagMultiPayload();
  }

  sub_22BE22978();
  sub_22BE18478();
}

void TranscriptProtoSessionCoordinatorError.init(handwritten:)()
{
  sub_22BE19460();
  sub_22BE1B254();
  v2 = sub_22C26E5D4();
  v3 = sub_22C259488(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE192E0();
  MEMORY[0x28223BE20](v8);
  sub_22BE39EE8();
  v9 = type metadata accessor for SessionCoordinatorError();
  v10 = sub_22BE18000(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = sub_22BE2F294();
  v14 = type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum(v13);
  v15 = sub_22BE18000(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BE18DFC();
  v18 = sub_22BE431F0();
  sub_22BE1AA68(v18, v1);
  sub_22BE180C8();
  swift_getEnumCaseMultiPayload();
  sub_22C18F458();
  v19 = sub_22BE33B3C();
  v20(v19);
  sub_22C11634C();
  v21 = sub_22BE1B18C();
  v22(v21);
  sub_22C25A08C();
  TranscriptProtoIntelligenceFlowError.init(handwritten:)();
  v23 = *(v5 + 8);
  v24 = sub_22BE1B5E0();
  v25(v24);
  sub_22BE232C8();
  swift_storeEnumTagMultiPayload();
  v26 = sub_22BE38960();
  v29 = sub_22C18F17C(v26, v27, v28, v14);
  v30 = type metadata accessor for TranscriptProtoSessionCoordinatorError(v29);
  sub_22BE48874(v30);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C0E9A74();
  sub_22BE1AE58();
  sub_22BE233E8(v0, &qword_27D90E800, &qword_22C2AE590);
  v31 = sub_22C259E5C();
  sub_22BE3B620(v31, v32);
  v33 = sub_22BE2500C();
  sub_22BE19DC4(v33, v34, v35, v14);
  sub_22BE1AABC();
}

void TranscriptProtoPlannerError.init(handwritten:)()
{
  sub_22BE19460();
  sub_22BE1B254();
  v2 = sub_22C26E5D4();
  v3 = sub_22C259488(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE192E0();
  MEMORY[0x28223BE20](v8);
  sub_22BE39EE8();
  v9 = type metadata accessor for PlannerError();
  v10 = sub_22BE18000(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = sub_22BE1AD20();
  v14 = type metadata accessor for TranscriptProtoPlannerErrorEnum(v13);
  v15 = sub_22BE18000(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BE18DFC();
  v18 = sub_22BE431F0();
  sub_22BE1AA68(v18, v1);
  sub_22BE289D8();
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    sub_22C18F458();
    v19 = sub_22BE1AEE4();
    v20(v19);
    sub_22C11634C();
    v21 = sub_22BE1B18C();
    v22(v21);
    sub_22C25A08C();
    TranscriptProtoIntelligenceFlowError.init(handwritten:)();
    v23 = *(v5 + 8);
    v24 = sub_22BE1B5E0();
    v25(v24);
  }

  sub_22BE232C8();
  swift_storeEnumTagMultiPayload();
  v26 = sub_22BE38960();
  v29 = sub_22C18F17C(v26, v27, v28, v14);
  v30 = type metadata accessor for TranscriptProtoPlannerError(v29);
  sub_22BE48874(v30);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C0E9A74();
  sub_22BE1AE58();
  sub_22BE233E8(v0, &qword_27D90E830, &qword_22C2AE5B0);
  v31 = sub_22C259E5C();
  sub_22BE3B620(v31, v32);
  v33 = sub_22BE2500C();
  sub_22BE19DC4(v33, v34, v35, v14);
  sub_22BE1AABC();
}

void TranscriptProtoExecutorError.init(handwritten:)()
{
  sub_22BE19460();
  sub_22BE1B254();
  v4 = sub_22C26E5D4();
  v5 = sub_22C259488(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE192E0();
  MEMORY[0x28223BE20](v10);
  sub_22BE39EE8();
  v11 = type metadata accessor for ExecutorError();
  v12 = sub_22BE19448(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = sub_22BE1AD20();
  v16 = type metadata accessor for TranscriptProtoExecutorErrorEnum(v15);
  v17 = sub_22BE18000(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BE18DFC();
  v20 = sub_22BE431F0();
  sub_22BE1AA68(v20, v3);
  v21 = 1;
  v22 = sub_22BE406A0();
  if (sub_22BE1AEA8(v22, v23, v1) != 1)
  {
    sub_22C18F458();
    v24 = sub_22BE1AEE4();
    v25(v24);
    sub_22C11634C();
    v26 = sub_22BE1B18C();
    v27(v26);
    sub_22C25A08C();
    TranscriptProtoIntelligenceFlowError.init(handwritten:)();
    v28 = *(v7 + 8);
    v29 = sub_22BE1B5E0();
    v30(v29);
    v21 = 0;
  }

  v31 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  sub_22BE19DC4(v2, v21, 1, v31);
  v32 = sub_22BE38960();
  v35 = sub_22C18F17C(v32, v33, v34, v16);
  v36 = type metadata accessor for TranscriptProtoExecutorError(v35);
  sub_22BE48874(v36);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C0E9A74();
  sub_22BE1AE58();
  sub_22BE233E8(v0, &qword_27D90E818, &qword_22C2AE5A0);
  v37 = sub_22C259E5C();
  sub_22BE3B620(v37, v38);
  v39 = sub_22BE2500C();
  sub_22BE19DC4(v39, v40, v41, v16);
  sub_22BE1AABC();
}

uint64_t sub_22C24B03C()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 6);
  return sub_22C203C84();
}

void ActionSuccess.UndoContext.init(transcript:)()
{
  sub_22BE2BB34();
  v2 = v1;
  sub_22BE3C4D0();
  v3 = sub_22C26E1D4();
  v4 = sub_22BE19448(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE18DFC();
  v7 = sub_22BE1AEE4();
  v9 = sub_22BE5CE4C(v7, v8);
  sub_22BE19448(v9);
  v11 = *(v10 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE23E58();
  v13 = *v2;
  v14 = v2[1];
  sub_22C26E174();
  sub_22C101298();
  v15 = sub_22BF0AFB8();
  sub_22BE233E8(v15, v16, &qword_22C27AB00);
  if (!v0)
  {
    v17 = v2[2];
    v18 = v2[3];
    v19 = v2[4];
    v20 = v2[5];

    sub_22BE232C8();
    sub_22C25AA5C();
    sub_22C26E944();
  }

  sub_22BE26148();
  sub_22BE1AE58();
  sub_22BE36324();
  sub_22BEE93D4();
}

void TranscriptProtoUndoContext.init(handwritten:)()
{
  sub_22BE19130();
  sub_22C259F34();
  v4 = sub_22C26E1D4();
  v5 = sub_22BE41130(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE1955C();
  sub_22C26E934();
  v10 = sub_22C26E184();
  v12 = v11;
  v13 = *(v7 + 8);
  v14 = sub_22BE18240();
  v15(v14);
  sub_22C26E914();
  sub_22C25A2F0();
  v16 = sub_22C26E924();
  v17 = sub_22C25A77C();
  v18 = type metadata accessor for TranscriptProtoUndoContext(v17);
  sub_22C25AE04(v18);
  v19 = sub_22C26E954();
  sub_22BE18524(v19);
  (*(v20 + 8))(v1);
  *v0 = v10;
  v0[1] = v12;
  v0[2] = v2;
  v0[3] = v3;
  v0[4] = v16;
  v0[5] = v7 + 8;
  sub_22BE22978();
  sub_22BE18478();
}

void ActionSuccess.FollowUpAction.init(transcript:)()
{
  v1 = sub_22BE1B254();
  v2 = type metadata accessor for TranscriptProtoFollowUpActionExecutableAction(v1);
  v3 = sub_22BE19448(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE18DFC();
  v6 = sub_22C26E8B4();
  v7 = sub_22BE19448(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE19338();
  sub_22C25ABB4();
  sub_22C1011A8();
  if (!v0)
  {
    sub_22C25A6DC();
    ActionSuccess.FollowUpAction.ExecutableAction.init(transcript:)();
    sub_22C25A730();
    sub_22C26E8C4();
  }

  sub_22C0E9A74();
  sub_22BE1AE58();
  sub_22C25A6E8();
}

void ActionSuccess.FollowUpAction.ExecutableAction.init(transcript:)()
{
  sub_22BE19130();
  sub_22C25AA20();
  v4 = v3;
  v5 = sub_22BE5CE4C(&qword_27D9155A0, &unk_22C2CC790);
  sub_22BE18000(v5);
  v7 = *(v6 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  v9 = sub_22BE25334();
  v10 = type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction(v9);
  v11 = sub_22BE19448(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BE18928();
  MEMORY[0x28223BE20](v14);
  v15 = sub_22C2595A0();
  v16 = type metadata accessor for TranscriptProtoFollowUpActionExecutableActionEnum(v15);
  v17 = sub_22BE19448(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BE197B8();
  sub_22C25AD70();
  sub_22C1010B8();
  if (v0)
  {
    sub_22BE32C98();
    sub_22BE1AE58();
  }

  else
  {
    v33 = v4;
    v20 = sub_22BE19EBC();
    sub_22BE3B620(v20, v1);
    v21 = sub_22C1088E8();
    sub_22BE1AA68(v21, v2);
    v32 = *v2;
    v22 = v2[2];
    v23 = v2[3];
    v34 = v2[1];

    v24 = sub_22BE41FB4();
    sub_22BE29D7C(v24, v25);
    if (qword_27D906E30 != -1)
    {
      sub_22BE40640();
    }

    sub_22BE489E0(&qword_27D9155A8);
    sub_22BE3C968();
    sub_22C26DB54();
    v26 = sub_22BE41FB4();
    sub_22BE29DD4(v26, v27);
    v28 = v2[4];
    sub_22C26E884();
    sub_22BE32C98();
    sub_22BE1AE58();
    sub_22C25A110();
    sub_22BE1AE58();
    sub_22BE291B0();
    sub_22BE1AE58();
    v29 = *MEMORY[0x277D1C480];
    v30 = sub_22C26E8B4();
    sub_22BE1834C(v30);
    (*(v31 + 104))(v33, v29);
  }

  sub_22BE35D48();
  sub_22BE18478();
}

void TranscriptProtoFollowUpAction.init(handwritten:)()
{
  sub_22BE1B254();
  v2 = sub_22C26E8B4();
  v3 = sub_22BE19448(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE19338();
  v6 = sub_22BE5CE4C(&qword_27D90E930, &unk_22C2AE610);
  sub_22BE19448(v6);
  v8 = *(v7 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE25CD0();
  sub_22C26E8D4();
  sub_22C25A08C();
  TranscriptProtoFollowUpActionExecutableAction.init(handwritten:)();
  if (v1)
  {
    v10 = sub_22C26E8E4();
    sub_22BE18524(v10);
    (*(v11 + 8))(v0);
  }

  else
  {
    v12 = type metadata accessor for TranscriptProtoFollowUpActionExecutableAction(0);
    v13 = sub_22BE3C530();
    sub_22BE19DC4(v13, v14, v15, v12);
    v16 = sub_22BE38960();
    v19 = sub_22C259E00(v16, v17, v18);
    v20 = type metadata accessor for TranscriptProtoFollowUpAction(v19);
    sub_22BE48874(v20);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v21 = sub_22C26E8E4();
    sub_22BE18524(v21);
    (*(v22 + 8))(v0);
    sub_22BE200D4();
    sub_22BE2343C();
  }

  sub_22C25A6E8();
}

void TranscriptProtoFollowUpActionExecutableAction.init(handwritten:)()
{
  sub_22BE19130();
  sub_22BE4066C();
  v1 = sub_22C26E8A4();
  v2 = sub_22BE179D8(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BE1958C();
  MEMORY[0x28223BE20](v7);
  sub_22BE374E4();
  v8 = sub_22C26E8B4();
  v9 = sub_22C2594A0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BE19338();
  v14 = sub_22BE5CE4C(&qword_27D90E948, &qword_22C2B5A50);
  sub_22BE19448(v14);
  v16 = *(v15 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  v18 = sub_22BE3A208();
  type metadata accessor for TranscriptProtoFollowUpActionExecutableActionEnum(v18);
  v19 = sub_22C259C00();
  v53 = v20;
  v23 = sub_22C18F17C(v19, v21, v22, v20);
  v24 = *(type metadata accessor for TranscriptProtoFollowUpActionExecutableAction(v23) + 20);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v25 = v11[2];
  v26 = sub_22BE36318();
  v27(v26);
  v28 = v11[11];
  v29 = sub_22BE1B18C();
  if (v30(v29) == *MEMORY[0x277D1C480])
  {
    v31 = v11[12];
    v32 = sub_22BE1B18C();
    v33(v32);
    sub_22BE286F0();
    v34 = sub_22BE29454();
    v35(v34);
    sub_22C25A080();
    v36 = sub_22BE38FD8();
    v37(v36);
    TranscriptProtoFollowUpActionExecutableActionLinkAction.init(handwritten:)();
    if (v0)
    {
      v38 = v11[1];
      v39 = sub_22C259FF4();
      v40(v39);
      v41 = *(v4 + 8);
      v42 = sub_22BE431C0();
      v43(v42);
      sub_22BE32C98();
      sub_22BE1AE58();
    }

    else
    {
      v44 = v11[1];
      v45 = sub_22C259FF4();
      v46(v45);
      v47 = *(v4 + 8);
      v48 = sub_22BE431C0();
      v49(v48);
      v50 = sub_22BE360A0();
      sub_22BE19DC4(v50, v51, v52, v53);
      sub_22BE2343C();
    }

    sub_22BE467E4();
    sub_22BE18478();
  }

  else
  {
    sub_22C274004();
    __break(1u);
  }
}

void ActionSuccess.FollowUpAction.ExecutableAction.LinkAction.init(transcript:)()
{
  sub_22BE19130();
  v2 = v1;
  v3 = sub_22BE5CE4C(&qword_27D9155A0, &unk_22C2CC790);
  sub_22BE18000(v3);
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE234F4();
  v8 = *v2;
  v7 = v2[1];
  v9 = v2[2];
  v10 = v2[3];

  v11 = sub_22BE3E79C();
  sub_22BE29D7C(v11, v12);
  if (qword_27D906E30 != -1)
  {
    sub_22BE40640();
  }

  sub_22BE489E0(&qword_27D9155A8);
  sub_22BE3911C();
  sub_22C26DB54();
  v13 = sub_22BE3E79C();
  sub_22BE29DD4(v13, v14);
  if (v0)
  {
    sub_22BE26148();
    sub_22BE1AE58();
  }

  else
  {
    v15 = v2[4];
    sub_22BE38FD8();
    sub_22C26E884();
    sub_22BE26148();
    sub_22BE1AE58();
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

void TranscriptProtoFollowUpActionExecutableActionLinkAction.init(handwritten:)()
{
  sub_22BE19130();
  v2 = v1;
  v4 = v3;
  v5 = sub_22BE5CE4C(&qword_27D9155A0, &unk_22C2CC790);
  sub_22BE1A3D8(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE1A8B4();
  v28 = sub_22C26E894();
  v29 = v11;
  sub_22C26E874();
  if (qword_27D906E28 != -1)
  {
    swift_once();
  }

  sub_22C250EF0(&qword_27D9156C8);
  sub_22BE38FD8();
  v12 = sub_22C26DC04();
  if (v0)
  {

    v14 = sub_22C26E8A4();
    sub_22BE18524(v14);
    (*(v15 + 8))(v2);
    v16 = *(v7 + 8);
    v17 = sub_22BE38FD8();
    v18(v17);
  }

  else
  {
    v19 = v12;
    v20 = v13;
    v21 = *(v7 + 8);
    v22 = sub_22BE38FD8();
    v23(v22);
    sub_22C26E864();
    v24 = sub_22BE23C8C();
    v25 = type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction(v24);
    sub_22C25AE04(v25);
    v26 = sub_22C26E8A4();
    sub_22BE18524(v26);
    (*(v27 + 8))(v2);
    *v4 = v28;
    v4[1] = v29;
    v4[2] = v19;
    v4[3] = v20;
    v4[4] = v2;
  }

  sub_22C18F0A4();
  sub_22BE18478();
}

uint64_t ValueDisambiguation.init(transcript:)(uint64_t *a1)
{
  v2 = *a1;

  sub_22C0F2F3C(v3, v4, v5, v6, v7, v8, v9, v10);
  if (!v1)
  {
    sub_22C26FD74();
  }

  sub_22BE26148();
  return sub_22BE1AE58();
}

void TranscriptProtoActionFailureFailure.init(handwritten:)()
{
  sub_22BE19130();
  sub_22C25A6AC();
  sub_22BE1A5E4();
  v4 = sub_22C26E814();
  v5 = sub_22BE179D8(v4);
  v81 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE17B98();
  sub_22BE3CFC4();
  MEMORY[0x28223BE20](v9);
  sub_22BE19E94();
  v80 = v10;
  sub_22BE183BC();
  v83 = sub_22C26E7E4();
  v11 = sub_22BE179D8(v83);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BE25544();
  v17 = MEMORY[0x28223BE20](v16);
  sub_22BE4202C(v17, v18, v19, v20, v21, v22, v23, v24, v80);
  v25 = sub_22C26E794();
  v26 = sub_22C2594A0(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22BE19338();
  v31 = sub_22BE5CE4C(&qword_27D90E8D0, &qword_22C2AE5F0);
  sub_22BE19448(v31);
  v33 = *(v32 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v34);
  v35 = sub_22BE22BFC();
  type metadata accessor for TranscriptProtoActionFailureFailureEnum(v35);
  v36 = sub_22BE38960();
  v40 = sub_22C18F17C(v36, v37, v38, v39);
  v41 = *(type metadata accessor for TranscriptProtoActionFailureFailure(v40) + 20);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C25A068();
  v42(v1, v3, v2);
  sub_22C25AA50();
  v43 = sub_22BE1B18C();
  v45 = v44(v43);
  if (v45 == *MEMORY[0x277D1C3F0])
  {
    sub_22C25A604();
    v46 = sub_22BE1B18C();
    v47(v46);
    sub_22BE286F0();
    v48 = sub_22BE18240();
    v49(v48);
    sub_22C259D90();
    sub_22BE315FC();
    v50();
    v51 = v0 + *(type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0) + 28);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    *v0 = sub_22C26E7B4();
    v0[1] = v52;
    v0[2] = sub_22C26E7D4();
    v0[3] = v53;
    v54 = sub_22C26E7C4();
    (*(v28 + 8))(v3, v2);
    v55 = *(v13 + 8);
    v56 = sub_22BE261AC();
    v55(v56);
    v57 = sub_22BE27BA4();
    v55(v57);
    v0[4] = v54;
LABEL_32:
    sub_22C25A018();
    swift_storeEnumTagMultiPayload();
    v76 = sub_22C259724();
    sub_22BE19DC4(v76, v77, v78, v79);
    sub_22BE2343C();
    sub_22BE3C298();
    sub_22BE18478();
    return;
  }

  if (v45 == *MEMORY[0x277D1C3F8])
  {
    sub_22C25A604();
    v58 = sub_22BE1B18C();
    v59(v58);
    sub_22C18F458();
    v60 = sub_22BE37490();
    v61(v60);
    sub_22C11634C();
    v62 = sub_22BE18944();
    v63(v62);
    v64 = v0 + *(type metadata accessor for TranscriptProtoActionFailureUnableToHandleRequest(0) + 20);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v82 = sub_22C26E804();
    v66 = v65;
    v67 = sub_22C259E6C();
    v68(v67);
    v69 = *(v81 + 8);
    v70 = sub_22BE31038();
    v69(v70);
    v71 = sub_22BE1A6BC();
    v69(v71);
    *v0 = v82;
    v0[1] = v66;
    goto LABEL_32;
  }

  if (v45 == *MEMORY[0x277D1C388] || v45 == *MEMORY[0x277D1C408] || v45 == *MEMORY[0x277D1C3D8] || v45 == *MEMORY[0x277D1C3A8] || v45 == *MEMORY[0x277D1C3E0] || v45 == *MEMORY[0x277D1C390] || v45 == *MEMORY[0x277D1C398] || v45 == *MEMORY[0x277D1C3E8] || v45 == *MEMORY[0x277D1C410] || v45 == *MEMORY[0x277D1C3B8] || v45 == *MEMORY[0x277D1C3D0] || v45 == *MEMORY[0x277D1C418])
  {
    v72 = sub_22C2598C0();
    v73(v72);
    goto LABEL_32;
  }

  if (v45 == *MEMORY[0x277D1C3C0] || v45 == *MEMORY[0x277D1C3A0] || v45 == *MEMORY[0x277D1C3B0] || v45 == *MEMORY[0x277D1C3C8] || v45 == *MEMORY[0x277D1C420] || v45 == *MEMORY[0x277D1C400])
  {
    v74 = sub_22C259E6C();
    v75(v74);
    goto LABEL_32;
  }

  sub_22C274004();
  __break(1u);
}

void ActionFailure.Failure.init(transcript:)()
{
  sub_22BE19130();
  v61 = v5;
  v6 = sub_22C25A764();
  v7 = type metadata accessor for TranscriptProtoActionFailureUnableToHandleRequest(v6);
  v8 = sub_22BE19448(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE2582C();
  v12 = MEMORY[0x28223BE20](v11);
  v20 = sub_22BE22D7C(v12, v13, v14, v15, v16, v17, v18, v19, v60);
  v21 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(v20);
  v22 = sub_22BE19448(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22BE18928();
  MEMORY[0x28223BE20](v25);
  sub_22BE1C17C();
  v26 = &qword_27D90E8D0;
  v27 = sub_22BE260B8();
  v29 = sub_22BE5CE4C(v27, v28);
  sub_22BE19448(v29);
  v31 = *(v30 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v32);
  sub_22BE19668();
  v33 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  v34 = sub_22BE18000(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22BE28FD8();
  sub_22BE36680();
  sub_22BE22814();
  v37 = sub_22BE1B010();
  sub_22BE1AB5C(v37, v38, v33);
  if (v39)
  {
    sub_22BE233E8(v0, &qword_27D90E8D0, &qword_22C2AE5F0);
    sub_22BE5CE4C(&qword_27D9156D0, &qword_22C2CCAB8);
    sub_22BE43258();
    sub_22BE3D554();
    sub_22C108598();
    v40 = sub_22BE196B4();
    sub_22C259EA0(v40, v41);
    sub_22BE237DC();
  }

  else
  {
    v42 = sub_22BE431F0();
    sub_22BE3B620(v42, v4);
    sub_22BE191C0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        sub_22C259FB8();
        sub_22C0E9A5C();
        sub_22BE3B620(v53, v54);
        v55 = sub_22BE385E4();
        sub_22BE1AA68(v55, v1);
        v57 = *v1;
        v56 = v1[1];

        v51 = v61;
        sub_22BE1B5EC();
        sub_22C26E7F4();
        sub_22BE237DC();
        v26 = type metadata accessor for TranscriptProtoActionFailureUnableToHandleRequest;
        sub_22BE1AE58();
        sub_22BE1AB74();
        sub_22BE1AE58();
        v52 = MEMORY[0x277D1C3F8];
        break;
      case 2:
        sub_22BE237DC();
        v52 = MEMORY[0x277D1C388];
        goto LABEL_26;
      case 3:
        sub_22BE237DC();
        v52 = MEMORY[0x277D1C408];
        goto LABEL_26;
      case 4:
        sub_22BE237DC();
        v52 = MEMORY[0x277D1C3D8];
        goto LABEL_26;
      case 5:
        sub_22BE237DC();
        v52 = MEMORY[0x277D1C3A8];
        goto LABEL_26;
      case 6:
        sub_22BE237DC();
        v52 = MEMORY[0x277D1C3E0];
        goto LABEL_26;
      case 7:
        sub_22BE237DC();
        v52 = MEMORY[0x277D1C390];
        goto LABEL_26;
      case 8:
        sub_22BE237DC();
        v52 = MEMORY[0x277D1C398];
        goto LABEL_26;
      case 9:
        sub_22BE237DC();
        v52 = MEMORY[0x277D1C3E8];
        goto LABEL_26;
      case 10:
        sub_22BE237DC();
        v52 = MEMORY[0x277D1C410];
        goto LABEL_26;
      case 11:
        sub_22BE237DC();
        v52 = MEMORY[0x277D1C3B8];
        goto LABEL_26;
      case 12:
        sub_22BE237DC();
        v52 = MEMORY[0x277D1C3D0];
        goto LABEL_26;
      case 13:
        sub_22BE237DC();
        v52 = MEMORY[0x277D1C3A0];
        goto LABEL_26;
      case 14:
        sub_22BE237DC();
        v52 = MEMORY[0x277D1C3B0];
        goto LABEL_26;
      case 15:
        sub_22BE237DC();
        v52 = MEMORY[0x277D1C418];
        goto LABEL_26;
      case 16:
        sub_22BE237DC();
        v52 = MEMORY[0x277D1C3C0];
        goto LABEL_26;
      case 17:
        sub_22BE237DC();
        v52 = MEMORY[0x277D1C3C8];
        goto LABEL_26;
      case 18:
        sub_22BE237DC();
        v52 = MEMORY[0x277D1C420];
        goto LABEL_26;
      case 19:
        sub_22BE237DC();
        v52 = MEMORY[0x277D1C400];
LABEL_26:
        v51 = v61;
        break;
      default:
        v44 = sub_22C259FB8();
        sub_22BE3B620(v44, v3);
        v45 = sub_22BE44744();
        sub_22BE1AA68(v45, v2);
        v47 = *v2;
        v46 = v2[1];
        v48 = v2[2];
        v49 = v2[3];
        v50 = v2[4];

        v51 = v61;
        sub_22BE354D0();
        MEMORY[0x2318A6EA0]();
        sub_22BE237DC();
        v26 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError;
        sub_22BE1AE58();
        sub_22BE33FCC();
        sub_22BE1AE58();
        v52 = MEMORY[0x277D1C3F0];
        break;
    }

    sub_22C25A6B8(v52);
    v58 = sub_22C26E794();
    sub_22BE1834C(v58);
    (*(v59 + 104))(v51, v26);
  }

  sub_22BE19650();
  sub_22BE18478();
}

void ActionFailure.DeveloperDefinedError.init(transcript:)()
{
  sub_22BE1B214();
  sub_22C25A074();
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];

  sub_22BE2590C();
  sub_22C25AA5C();
  MEMORY[0x2318A6EA0]();
  sub_22C0E9A74();
  sub_22BE1AE58();
  sub_22BE25C6C();
}

uint64_t ActionFailure.UnableToHandleRequest.init(transcript:)()
{
  sub_22C25A074();
  v1 = *v0;
  v2 = v0[1];

  sub_22BE2590C();
  sub_22C26E7F4();
  sub_22C0E9A74();
  return sub_22BE1AE58();
}

uint64_t TranscriptProtoActionFailureDeveloperDefinedError.init(handwritten:)()
{
  sub_22C1CECFC();
  v3 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
  sub_22C25AE04(v3);
  *v1 = sub_22C26E7B4();
  v1[1] = v4;
  v1[2] = sub_22C26E7D4();
  v1[3] = v5;
  sub_22C26E7C4();
  sub_22BE48298();
  v6 = sub_22C26E7E4();
  sub_22BE18524(v6);
  result = (*(v7 + 8))(v0);
  v1[4] = v2;
  return result;
}

uint64_t TranscriptProtoActionFailureUnableToHandleRequest.init(handwritten:)()
{
  sub_22C1CECFC();
  v4 = type metadata accessor for TranscriptProtoActionFailureUnableToHandleRequest(0);
  sub_22C25A0A4(v4);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C26E804();
  sub_22C25A560();
  v5 = sub_22C26E814();
  sub_22BE18524(v5);
  result = (*(v6 + 8))(v0);
  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant.init(handwritten:)()
{
  sub_22C1CECFC();
  DecorationPrePlannerResultPayloadRepeatedStringVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant(0);
  sub_22C25A0A4(DecorationPrePlannerResultPayloadRepeatedStringVariant);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v1 = v0;
  return result;
}

uint64_t sub_22C24D524@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t (*a2)(uint64_t)@<X2>, void *a3@<X8>)
{
  result = a1();
  if (!v3)
  {
    v8 = sub_22BE48298();
    v9 = a2(v8);
    sub_22BE48874(v9);
    result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    *a3 = v4;
  }

  return result;
}

uint64_t sub_22C24D598(uint64_t a1, uint64_t a2)
{
  sub_22BE233E8(a1, &qword_27D90F180, &qword_22C2CCAC0);
  sub_22BE1AA68(a2, a1);
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(0);
  return sub_22BE19DC4(a1, 0, 1, DecorationPrePlannerPayloadEnum);
}

void QueryDecorationPrePlannerResultPayload.init(transcript:)()
{
  sub_22BE19130();
  v103 = v6;
  DecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant(0);
  v8 = sub_22BE19448(DecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE3C444(v11, v99);
  DecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant(0);
  v13 = sub_22BE19448(DecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BE17A44();
  v17 = sub_22BE28E74(v16);
  DecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant(v17);
  v19 = sub_22BE19448(DecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22BE17A44();
  v23 = sub_22BE3E890(v22);
  DecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant(v23);
  v25 = sub_22BE19448(DecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v28 = sub_22BE2F294();
  DecorationPrePlannerResultPayloadRepeatedTypedValueVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant(v28);
  v30 = sub_22BE19448(DecorationPrePlannerResultPayloadRepeatedTypedValueVariant);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  sub_22BE28FD8();
  DecorationPrePlannerResultPayloadRepeatedStringVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant(0);
  v34 = sub_22BE19448(DecorationPrePlannerResultPayloadRepeatedStringVariant);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22BE2379C();
  v37 = sub_22BE29454();
  v39 = sub_22BE5CE4C(v37, v38);
  sub_22BE19448(v39);
  v41 = *(v40 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v42);
  v43 = sub_22BE46DE8();
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(v43);
  v45 = sub_22BE18000(DecorationPrePlannerPayloadEnum);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  sub_22BE294E0();
  sub_22BE39EAC();
  sub_22BE22814();
  v48 = sub_22BE391E8();
  sub_22BE1AB5C(v48, v49, DecorationPrePlannerPayloadEnum);
  if (v50)
  {
    sub_22BE233E8(v0, &qword_27D90F180, &qword_22C2CCAC0);
    sub_22BE5CE4C(&qword_27D9156D8, &qword_22C2CCAC8);
    sub_22BE43258();
    sub_22BE3D554();
    sub_22C108598();
    v51 = sub_22BE196B4();
    sub_22C259EA0(v51, v52);
    sub_22BE1A438();
LABEL_4:
    sub_22BE1AE58();
  }

  else
  {
    v53 = sub_22BE19EBC();
    sub_22BE3B620(v53, v3);
    sub_22BE392D4();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v76 = sub_22BE44744();
        sub_22BE3B620(v76, v5);
        v77 = *v5;

        sub_22C0F2F3C(v78, v79, v80, v81, v82, v83, v84, v85);
        v56 = v86;
        sub_22BE1A438();
        sub_22BE1AE58();
        sub_22BE3E76C();
        sub_22BE1AE58();
        if (!v2)
        {
          v57 = 1;
          goto LABEL_18;
        }

        break;
      case 2:
        v61 = sub_22BE44744();
        sub_22BE3B620(v61, v4);
        v62 = *v4;

        v56 = sub_22C0F34B4(v63);
        sub_22BE1A438();
        sub_22BE1AE58();
        sub_22BE20118();
        sub_22BE1AE58();
        if (!v2)
        {
          v57 = 2;
          goto LABEL_18;
        }

        break;
      case 3:
        sub_22BE44744();
        sub_22C25AC2C();
        sub_22BE3B620(v64, v65);
        v66 = *v1;

        sub_22C0F3740(v67, v68, v69, v70, v71, v72, v73, v74, v100, v101);
        v56 = v75;
        sub_22BE1A438();
        sub_22BE1AE58();
        sub_22C0E9A74();
        sub_22BE1AE58();
        if (!v2)
        {
          v57 = 3;
          goto LABEL_18;
        }

        break;
      case 4:
        v58 = sub_22BE44744();
        sub_22BE3B620(v58, v102);
        v59 = *v102;

        v56 = sub_22C0F3228(v60);
        sub_22BE1A438();
        sub_22BE1AE58();
        sub_22C0E9A74();
        sub_22BE1AE58();
        if (!v2)
        {
          v57 = 4;
          goto LABEL_18;
        }

        break;
      case 5:
        sub_22BE44744();
        sub_22BE2BB28();
        sub_22BE3B620(v87, v88);
        v89 = *v1;

        sub_22C0F3CA8(v90, v91, v92, v93, v94, v95, v96, v97, v100, v101);
        if (v2)
        {
          sub_22BE1A438();
          sub_22BE1AE58();
          sub_22C0E9A74();
          goto LABEL_4;
        }

        v56 = v98;
        sub_22BE1A438();
        sub_22BE1AE58();
        sub_22C0E9A74();
        sub_22BE1AE58();
        v57 = 5;
        goto LABEL_18;
      default:
        sub_22BE1A438();
        sub_22BE1AE58();
        v55 = sub_22BE44744();
        sub_22BE3B620(v55, v1);
        v56 = *v1;

        sub_22C0E9A74();
        sub_22BE1AE58();
        v57 = 0;
LABEL_18:
        *v103 = v56;
        *(v103 + 8) = v57;
        break;
    }
  }

  sub_22BE19650();
  sub_22BE18478();
}

void AgentPrimitiveAction.PrimitiveAction.init(transcript:)()
{
  sub_22BE19130();
  v89 = v5;
  v90 = v0;
  v6 = type metadata accessor for TranscriptProtoAgentPassRequest(0);
  v7 = sub_22BE19448(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE29178(v10, v81);
  MEMORY[0x28223BE20](v11);
  v20 = sub_22BE4202C(v12, v13, v14, v15, v16, v17, v18, v19, v82);
  v21 = type metadata accessor for TranscriptProtoAgentRequest(v20);
  v22 = sub_22BE19448(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22BE17A44();
  v26 = sub_22BE3C768(v25);
  v27 = type metadata accessor for AgentRequest(v26);
  v28 = sub_22BE19448(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  sub_22BE17A44();
  v85 = v31;
  v32 = sub_22BE183BC();
  v88 = type metadata accessor for AgentPrimitiveAction.PrimitiveAction(v32);
  v33 = sub_22BE18000(v88);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  sub_22BE192E0();
  MEMORY[0x28223BE20](v36);
  sub_22BE19E94();
  v38 = sub_22C259A68(v37);
  v39 = type metadata accessor for TranscriptProtoAgentHandoffRequest(v38);
  v40 = sub_22BE18000(v39);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  sub_22BE195A8();
  MEMORY[0x28223BE20](v43);
  sub_22C1CEC08(v44, v45, v46, v47, v48, v49, v50, v51, v83);
  v52 = sub_22C0B1AF0();
  v54 = sub_22BE5CE4C(v52, v53);
  sub_22BE19448(v54);
  v56 = *(v55 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v57);
  v58 = sub_22BE22BFC();
  v59 = type metadata accessor for TranscriptProtoPrimitiveActionEnum(v58);
  v60 = sub_22BE18000(v59);
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v60);
  sub_22BE294E0();
  sub_22BF6AC14();
  sub_22BE22814();
  v63 = sub_22BE26188();
  sub_22BE1AB5C(v63, v64, v59);
  if (v65)
  {
    sub_22BE233E8(v2, &qword_27D90F260, &qword_22C2AE840);
    sub_22BE5CE4C(&qword_27D9156E0, &qword_22C2CCAD0);
    sub_22BE43258();
    sub_22BE3D554();
    sub_22C108598();
    v66 = sub_22BE196B4();
    sub_22C259EA0(v66, v67);
    sub_22BE29F6C();
LABEL_11:
    sub_22BE1AE58();
    goto LABEL_15;
  }

  v68 = sub_22BE29370();
  sub_22BE3B620(v68, v4);
  sub_22BE196A8();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v74 = sub_22BE44744();
    sub_22BE3B620(v74, v86);
    v75 = sub_22C259FB8();
    sub_22BE1AA68(v75, v1);
    v76 = *v1;
    v77 = v1[1];
    v78 = *(v39 + 20);

    sub_22C25A56C();
    sub_22C103E3C();
    if (!v90)
    {
      sub_22C25A718();
      AgentRequest.init(transcript:)();
      sub_22C25A0B0();
      sub_22BE1AE58();
      *v84 = v76;
      v84[1] = v77;
      v79 = *(type metadata accessor for AgentHandoffRequest(0) + 20);
      sub_22BE3C6C8();
      sub_22BE3B620(v85, v84 + v80);
      sub_22BE29F6C();
      sub_22BE1AE58();
      sub_22BE1B074();
      sub_22BE1AE58();
      swift_storeEnumTagMultiPayload();
      sub_22C259620();
      v73 = v84;
      goto LABEL_14;
    }

    sub_22C25A0B0();
    sub_22BE1AE58();

    sub_22BE29F6C();
    sub_22BE1AE58();
    sub_22BE1B074();
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v70 = sub_22BE44744();
    sub_22BE3B620(v70, v87);
    sub_22BE19EBC();
    sub_22BE341B0();
    sub_22BE1AA68(v71, v72);
    sub_22C25A7A0();
    AgentPassRequest.init(transcript:)();
    sub_22BE29F6C();
    sub_22BE1AE58();
    sub_22BE366C0();
    sub_22BE1AE58();
    if (!v0)
    {
      swift_storeEnumTagMultiPayload();
      sub_22C259620();
      v73 = v3;
LABEL_14:
      sub_22BE3B620(v73, v89);
    }
  }

  else
  {
    sub_22BE29F6C();
    sub_22BE1AE58();
    sub_22BE3ACD8();
    sub_22BE1AE58();
    swift_storeEnumTagMultiPayload();
  }

LABEL_15:
  sub_22BE46D98();
  sub_22BE18478();
}

void AgentHandoffRequest.init(transcript:)()
{
  sub_22BE2BB34();
  v4 = v1;
  v5 = sub_22C259D80();
  v6 = type metadata accessor for TranscriptProtoAgentRequest(v5);
  v7 = sub_22BE19448(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = sub_22BE1AD20();
  v11 = type metadata accessor for AgentRequest(v10);
  v12 = sub_22BE19448(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BE19338();
  v16 = *v2;
  v15 = v2[1];
  v17 = *(type metadata accessor for TranscriptProtoAgentHandoffRequest(0) + 20);

  sub_22C103E3C();
  if (v4)
  {
    sub_22BE379D8();
    sub_22BE1AE58();
  }

  else
  {
    sub_22C25A894();
    AgentRequest.init(transcript:)();
    sub_22BE379D8();
    sub_22BE1AE58();
    *v0 = v16;
    v0[1] = v15;
    v18 = *(type metadata accessor for AgentHandoffRequest(0) + 20);
    sub_22BE3C6C8();
    sub_22BE3B620(v3, v0 + v19);
  }

  sub_22BE36324();
  sub_22BEE93D4();
}

void AgentPassRequest.init(transcript:)()
{
  v1 = sub_22BE1B254();
  v2 = type metadata accessor for TranscriptProtoAgentRequest(v1);
  v3 = sub_22BE19448(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = sub_22BE19820();
  v7 = type metadata accessor for AgentRequest(v6);
  v8 = sub_22BE19448(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE18DFC();
  sub_22C25ABD8();
  sub_22C103E3C();
  if (v0)
  {
    sub_22BE366C0();
    sub_22BE1AE58();
  }

  else
  {
    sub_22C25A08C();
    AgentRequest.init(transcript:)();
    sub_22BE366C0();
    sub_22BE1AE58();
    sub_22BE3C6C8();
    v11 = sub_22BE200D4();
    sub_22BE3B620(v11, v12);
  }

  sub_22C25A6E8();
}

uint64_t AgentRequest.init(transcript:)()
{
  v3 = sub_22BE1B254();
  v4 = type metadata accessor for TranscriptProtoRequest(v3);
  v5 = sub_22BE19448(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE192E0();
  MEMORY[0x28223BE20](v8);
  v9 = sub_22BE2558C();
  v10 = type metadata accessor for TranscriptProtoAgentRequestEnum(v9);
  v11 = sub_22BE19448(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BE1955C();
  sub_22C25AB10();
  sub_22C1046AC();
  if (v0)
  {
    sub_22BE447F0();
  }

  else
  {
    v14 = sub_22C1088AC();
    sub_22BE3B620(v14, v1);
    v15 = sub_22BE385E4();
    sub_22BE1AA68(v15, v2);
    sub_22C25A730();
    Request.init(transcript:)();
    sub_22BE447F0();
    sub_22BE1AE58();
    sub_22BE27AC8();
  }

  return sub_22BE1AE58();
}

void TranscriptProtoPrimitiveAction.init(handwritten:)()
{
  sub_22BE19130();
  sub_22C25A93C(v6);
  v7 = sub_22BE1A5E4();
  v8 = type metadata accessor for AgentPassRequest(v7);
  v9 = sub_22BE19448(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BE28A70(v12, v71);
  MEMORY[0x28223BE20](v13);
  v14 = sub_22BE2558C();
  v15 = type metadata accessor for AgentRequest(v14);
  v16 = sub_22BE19448(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BE2379C();
  v19 = sub_22BE5CE4C(&qword_27D90F220, &unk_22C2AE830);
  sub_22BE19448(v19);
  v21 = *(v20 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v22);
  sub_22BE20168(v23, v72);
  v24 = type metadata accessor for AgentHandoffRequest(0);
  v25 = sub_22BE18000(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22BE17D10();
  MEMORY[0x28223BE20](v28);
  v29 = sub_22BE195C4();
  v30 = type metadata accessor for AgentPrimitiveAction.PrimitiveAction(v29);
  v31 = sub_22BE18000(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  sub_22BE19338();
  v34 = sub_22BE5CE4C(&qword_27D90F260, &qword_22C2AE840);
  sub_22BE19448(v34);
  v36 = *(v35 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v37);
  v38 = sub_22BE22BFC();
  type metadata accessor for TranscriptProtoPrimitiveActionEnum(v38);
  v39 = sub_22BE38960();
  v43 = sub_22C18F17C(v39, v40, v41, v42);
  v44 = type metadata accessor for TranscriptProtoPrimitiveAction(v43);
  sub_22BE417E0(v44);
  sub_22BE3E784();
  v45 = sub_22BE37490();
  sub_22BE1AA68(v45, v46);
  sub_22BE36318();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v51 = sub_22C1088E8();
    sub_22BE3B620(v51, v4);
    v52 = sub_22BE44744();
    sub_22BE1AA68(v52, v5);
    v54 = *v5;
    v53 = v5[1];
    v55 = *(v24 + 20);
    sub_22BE3F3FC();
    sub_22BE1AA68(v5 + v56, v0);

    v57 = sub_22C25A7A0();
    TranscriptProtoAgentRequest.init(handwritten:)(v57);
    if (v1)
    {

      sub_22C2596F8();
      sub_22BE1AE58();
      sub_22BE1AE58();
      sub_22BE33FCC();
      sub_22BE1AE58();
      goto LABEL_7;
    }

    v58 = type metadata accessor for TranscriptProtoAgentRequest(0);
    v59 = sub_22BE22B8C();
    v62 = sub_22C18F17C(v59, v60, v61, v58);
    v63 = *(type metadata accessor for TranscriptProtoAgentHandoffRequest(v62) + 20);
    sub_22BE1A140();
    sub_22C25AD2C(v64, v65, v66, v58);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22C2596F8();
    sub_22BE1AE58();
    sub_22BE1AE58();
    sub_22BE2565C();
    sub_22BE1AE58();
    *v3 = v54;
    v3[1] = v53;
    sub_22BE2343C();
LABEL_10:
    sub_22C25A724();
    swift_storeEnumTagMultiPayload();
    v67 = sub_22C259724();
    sub_22BE19DC4(v67, v68, v69, v70);
    sub_22C25AD50();
    sub_22BE2343C();
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload != 1)
  {
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22C2596F8();
    sub_22BE1AE58();
    goto LABEL_10;
  }

  v48 = sub_22C1088E8();
  sub_22BE3B620(v48, v2);
  sub_22BE385E4();
  sub_22C25AC2C();
  sub_22BE1AA68(v49, v50);
  sub_22BE362B8();
  TranscriptProtoAgentPassRequest.init(handwritten:)();
  sub_22C2596F8();
  sub_22BE1AE58();
  sub_22C259B18();
  sub_22BE1AE58();
  if (!v73)
  {
    goto LABEL_10;
  }

LABEL_7:
  sub_22BE1AE58();
LABEL_11:
  sub_22BEE94B0();
  sub_22BE18478();
}

void TranscriptProtoAgentHandoffRequest.init(handwritten:)()
{
  sub_22BE19130();
  v3 = sub_22BE1B254();
  v4 = type metadata accessor for AgentRequest(v3);
  v5 = sub_22BE19448(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE1955C();
  v8 = sub_22BE5CE4C(&qword_27D90F220, &unk_22C2AE830);
  sub_22BE19448(v8);
  v10 = *(v9 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE25CD0();
  v13 = *v1;
  v12 = v1[1];
  v14 = *(type metadata accessor for AgentHandoffRequest(0) + 20);
  sub_22BE3F3FC();
  v16 = sub_22C25A70C(v15);
  sub_22BE1AA68(v16, v17);

  v18 = sub_22C25A518();
  TranscriptProtoAgentRequest.init(handwritten:)(v18);
  if (v2)
  {
    sub_22C0E9A74();
    sub_22BE1AE58();
  }

  else
  {
    v19 = type metadata accessor for TranscriptProtoAgentRequest(0);
    v20 = sub_22BE3C530();
    v23 = sub_22C18F17C(v20, v21, v22, v19);
    v24 = type metadata accessor for TranscriptProtoAgentHandoffRequest(v23);
    v25 = *(v24 + 20);
    sub_22BE28D2C();
    sub_22BE19DC4(v26, v27, v28, v29);
    v30 = v0 + *(v24 + 24);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22C0E9A74();
    sub_22BE1AE58();
    *v0 = v13;
    v0[1] = v12;
    sub_22BE2343C();
  }

  sub_22BE467E4();
  sub_22BE18478();
}

void TranscriptProtoAgentPassRequest.init(handwritten:)()
{
  v1 = sub_22BE1B254();
  v2 = type metadata accessor for AgentRequest(v1);
  v3 = sub_22BE19448(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE19338();
  v6 = sub_22BE5CE4C(&qword_27D90F220, &unk_22C2AE830);
  sub_22BE19448(v6);
  v8 = *(v7 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE25CD0();
  sub_22BE3F3FC();
  v10 = sub_22BE27A44();
  sub_22BE1AA68(v10, v11);
  v12 = sub_22C25A08C();
  TranscriptProtoAgentRequest.init(handwritten:)(v12);
  if (v0)
  {
    sub_22C259B18();
    sub_22BE1AE58();
  }

  else
  {
    v13 = type metadata accessor for TranscriptProtoAgentRequest(0);
    v14 = sub_22BE3C530();
    sub_22BE19DC4(v14, v15, v16, v13);
    v17 = sub_22BE38960();
    v20 = sub_22C259E00(v17, v18, v19);
    v21 = type metadata accessor for TranscriptProtoAgentPassRequest(v20);
    sub_22BE48874(v21);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22C259B18();
    sub_22BE1AE58();
    sub_22BE200D4();
    sub_22BE2343C();
  }

  sub_22C25A6E8();
}

id sub_22C24F544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22C272FF4();
  sub_22C25AC4C();

  if (a4)
  {
    v8 = sub_22C272E44();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v5 code:a3 userInfo:v8];

  return v9;
}

uint64_t sub_22C24F5F0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_22BE5CE4C(&qword_27D915CD8, &qword_22C2D1AE8);
  v37 = a2;
  result = sub_22C273D14();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v8;
    return result;
  }

  v36 = v3;
  v9 = 0;
  v10 = (v5 + 64);
  v11 = 1 << *(v5 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v5 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = result + 64;
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      sub_22C1A7AFC(0, (v35 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = *(*(v5 + 56) + 8 * v19);
    if ((v37 & 1) == 0)
    {
      v24 = v20[1];
    }

    v25 = *(v8 + 40);
    sub_22C274154();
    sub_22C272F44();
    result = sub_22C2741A4();
    v26 = -1 << *(v8 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v34 = (*(v8 + 48) + 16 * v29);
    *v34 = v21;
    v34[1] = v22;
    *(*(v8 + 56) + 8 * v29) = v23;
    ++*(v8 + 16);
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v30 = 0;
  v31 = (63 - v26) >> 6;
  while (++v28 != v31 || (v30 & 1) == 0)
  {
    v32 = v28 == v31;
    if (v28 == v31)
    {
      v28 = 0;
    }

    v30 |= v32;
    v33 = *(v15 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

void sub_22C24F890(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_22BE5CE4C(&qword_27D915CD0, &qword_22C2D1AE0);
  sub_22BE3C968();
  v50 = a2;
  v7 = sub_22C273D14();
  if (!*(v5 + 16))
  {
LABEL_30:

LABEL_31:
    *v3 = v7;
    return;
  }

  v49 = v5;
  v8 = 0;
  v10 = (v5 + 64);
  v9 = *(v5 + 64);
  v11 = *(v5 + 32);
  sub_22BE41800();
  v15 = (v14 + 63) >> 6;
  v16 = v7 + 64;
  if ((v13 & v12) == 0)
  {
LABEL_6:
    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v15)
      {
        break;
      }

      ++v20;
      if (v10[v8])
      {
        sub_22BE4878C();
        v51 = v21;
        goto LABEL_11;
      }
    }

    if ((v50 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v44 = *(v5 + 32);
    sub_22C25A46C();
    v3 = v2;
    if (v45 >= 64)
    {
      v47 = sub_22C25A7C8();
      sub_22C1A7AFC(v47, v48, v10);
    }

    else
    {
      sub_22BE26164();
      *v10 = v46;
    }

    *(v5 + 16) = 0;
    goto LABEL_30;
  }

  while (1)
  {
    sub_22BE22BE8();
    v51 = v19;
LABEL_11:
    v22 = v17 | (v8 << 6);
    v23 = *(v5 + 56);
    v24 = (*(v5 + 48) + v22 * v18);
    v25 = v24[1];
    v54 = *v24;
    v26 = v24[3];
    v53 = v24[2];
    v27 = v24[5];
    v52 = v24[4];
    v28 = *(v23 + 8 * v22);
    if ((v50 & 1) == 0)
    {
    }

    v29 = *(v7 + 40);
    sub_22C274154();
    sub_22C272F44();
    sub_22C272F44();
    sub_22C272F44();
    sub_22C2741A4();
    v30 = *(v7 + 32);
    sub_22C25A4D4();
    if (((v33 << v32) & ~*(v16 + 8 * v31)) == 0)
    {
      break;
    }

    sub_22C25A818();
    v36 = v34 | v35;
LABEL_22:
    *(v16 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
    v43 = (*(v7 + 48) + 48 * v36);
    *v43 = v54;
    v43[1] = v25;
    v43[2] = v53;
    v43[3] = v26;
    v43[4] = v52;
    v43[5] = v27;
    *(*(v7 + 56) + 8 * v36) = v28;
    ++*(v7 + 16);
    v5 = v49;
    if (!v51)
    {
      goto LABEL_6;
    }
  }

  sub_22C1AE434();
  while (++v37 != v39 || (v38 & 1) == 0)
  {
    v40 = v37 == v39;
    if (v37 == v39)
    {
      v37 = 0;
    }

    v38 |= v40;
    if (*(v16 + 8 * v37) != -1)
    {
      sub_22C25A808();
      v36 = v42 + (v41 << 6);
      goto LABEL_22;
    }
  }

LABEL_33:
  __break(1u);
}

uint64_t sub_22C24FB38(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_22BE5CE4C(&qword_27D915CC0, &qword_22C2D1AD0);
  v38 = a2;
  result = sub_22C273D14();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v8;
    return result;
  }

  v36 = v3;
  v37 = v5;
  v9 = 0;
  v10 = (v5 + 64);
  v11 = 1 << *(v5 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v5 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = result + 64;
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      sub_22C1A7AFC(0, (v35 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = *(*(v5 + 56) + 8 * v19);
    if ((v38 & 1) == 0)
    {
      v24 = v20[1];
    }

    v25 = *(v8 + 40);
    sub_22C274154();
    sub_22C272F44();
    result = sub_22C2741A4();
    v26 = -1 << *(v8 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v34 = (*(v8 + 48) + 16 * v29);
    *v34 = v21;
    v34[1] = v22;
    *(*(v8 + 56) + 8 * v29) = v23;
    ++*(v8 + 16);
    v5 = v37;
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v30 = 0;
  v31 = (63 - v26) >> 6;
  while (++v28 != v31 || (v30 & 1) == 0)
  {
    v32 = v28 == v31;
    if (v28 == v31)
    {
      v28 = 0;
    }

    v30 |= v32;
    v33 = *(v15 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

void sub_22C24FDFC()
{
  sub_22BE19460();
  v1 = v0;
  v3 = v2;
  sub_22BE23C8C();
  v67 = sub_22C26E4D4();
  v4 = sub_22BE179D8(v67);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE3C444(v9, v58);
  v10 = sub_22C26E494();
  v11 = sub_22BE179D8(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BE17A44();
  sub_22BE35E00(v14);
  v15 = *v0;
  if (*(*v0 + 24) > v0)
  {
    v16 = *(*v0 + 24);
  }

  sub_22BE5CE4C(&qword_27D915CB8, &qword_22C2D1AC8);
  sub_22BE1804C();
  v62 = v3;
  v17 = sub_22C273D14();
  if (*(v15 + 16))
  {
    v18 = 0;
    v20 = (v15 + 64);
    v19 = *(v15 + 64);
    v21 = *(v15 + 32);
    sub_22BE41800();
    v24 = v23 & v22;
    v26 = (v25 + 63) >> 6;
    v59 = (v27 + 16);
    v60 = v27;
    v61 = v15;
    v63 = (v6 + 32);
    v64 = (v27 + 32);
    v28 = v17 + 64;
    v29 = v27;
    while (v24)
    {
      v30 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
LABEL_12:
      v65 = *(v29 + 72);
      v34 = *(v15 + 48) + v65 * (v30 | (v18 << 6));
      if (v62)
      {
        (*v64)(v68, v34, v10);
        sub_22C25AD5C();
        (*(v35 + 32))();
      }

      else
      {
        (*v59)(v68, v34, v10);
        sub_22C25AD5C();
        (*(v36 + 16))();
      }

      v37 = *(v17 + 40);
      sub_22C259290(&qword_28107F310, MEMORY[0x277D78248]);
      sub_22C272ED4();
      v38 = *(v17 + 32);
      sub_22C25A4D4();
      if (((v41 << v40) & ~*(v28 + 8 * v39)) == 0)
      {
        sub_22C1AE434();
        while (++v45 != v47 || (v46 & 1) == 0)
        {
          v48 = v45 == v47;
          if (v45 == v47)
          {
            v45 = 0;
          }

          v46 |= v48;
          if (*(v28 + 8 * v45) != -1)
          {
            sub_22C25A808();
            v44 = v50 + (v49 << 6);
            goto LABEL_24;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      sub_22C25A818();
      v44 = v42 | v43;
LABEL_24:
      sub_22BE270BC();
      *(v28 + v52) |= v51 << v44;
      (*v64)(*(v17 + 48) + v65 * v44, v68, v10);
      (*v63)(*(v17 + 56) + v15 * v44, v66, v67);
      ++*(v17 + 16);
      v29 = v60;
      v15 = v61;
    }

    v31 = v18;
    while (1)
    {
      v18 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v18 >= v26)
      {
        break;
      }

      ++v31;
      if (v20[v18])
      {
        sub_22BE29270();
        v24 = v33 & v32;
        goto LABEL_12;
      }
    }

    if (v62)
    {
      v53 = *(v15 + 32);
      sub_22C25A46C();
      if (v54 >= 64)
      {
        v56 = sub_22C25A7C8();
        sub_22C1A7AFC(v56, v57, v20);
      }

      else
      {
        sub_22BE26164();
        *v20 = v55;
      }

      *(v15 + 16) = 0;
    }
  }

  *v1 = v17;
  sub_22BE1AABC();
}

uint64_t sub_22C2501DC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_22BE5CE4C(&qword_27D915CA0, &qword_22C2D1AB0);
  v38 = a2;
  result = sub_22C273D14();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v8;
    return result;
  }

  v36 = v3;
  v37 = v5;
  v9 = 0;
  v10 = (v5 + 64);
  v11 = 1 << *(v5 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v5 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = result + 64;
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      sub_22C1A7AFC(0, (v35 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = *(*(v5 + 56) + 8 * v19);
    if ((v38 & 1) == 0)
    {
      v24 = v20[1];
    }

    v25 = *(v8 + 40);
    sub_22C274154();
    sub_22C272F44();
    result = sub_22C2741A4();
    v26 = -1 << *(v8 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v34 = (*(v8 + 48) + 16 * v29);
    *v34 = v21;
    v34[1] = v22;
    *(*(v8 + 56) + 8 * v29) = v23;
    ++*(v8 + 16);
    v5 = v37;
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v30 = 0;
  v31 = (63 - v26) >> 6;
  while (++v28 != v31 || (v30 & 1) == 0)
  {
    v32 = v28 == v31;
    if (v28 == v31)
    {
      v28 = 0;
    }

    v30 |= v32;
    v33 = *(v15 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

void sub_22C2504A0()
{
  sub_22BE19460();
  v1 = v0;
  v3 = v2;
  v4 = sub_22BE23C8C();
  v65 = v5(v4);
  sub_22BE179D8(v65);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE1A174();
  sub_22C0B1ABC(v11);
  v12 = *v0;
  if (*(*v0 + 24) > v0)
  {
    v13 = *(*v0 + 24);
  }

  v14 = sub_22BE1AB74();
  sub_22BE5CE4C(v14, v15);
  sub_22C0B1AF0();
  v62 = v3;
  v16 = sub_22C273D14();
  if (!*(v12 + 16))
  {
LABEL_31:

LABEL_32:
    *v1 = v16;
    sub_22BE1AABC();
    return;
  }

  v17 = 0;
  v19 = (v12 + 64);
  v18 = *(v12 + 64);
  v20 = *(v12 + 32);
  sub_22BE41800();
  v23 = v22 & v21;
  v25 = (v24 + 63) >> 6;
  v58 = v1;
  v59 = (v7 + 16);
  v60 = v12;
  v61 = v7;
  v63 = (v7 + 32);
  v26 = v16 + 64;
  if ((v22 & v21) == 0)
  {
LABEL_6:
    v28 = v17;
    while (1)
    {
      v17 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v17 >= v25)
      {
        break;
      }

      ++v28;
      if (v19[v17])
      {
        sub_22BE29270();
        v23 = v30 & v29;
        goto LABEL_11;
      }
    }

    if ((v62 & 1) == 0)
    {

      v1 = v58;
      goto LABEL_32;
    }

    v53 = *(v12 + 32);
    sub_22C25A46C();
    v1 = v58;
    if (v54 >= 64)
    {
      v56 = sub_22C25A7C8();
      sub_22C1A7AFC(v56, v57, v19);
    }

    else
    {
      sub_22BE26164();
      *v19 = v55;
    }

    *(v12 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v27 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
LABEL_11:
    v31 = v27 | (v17 << 6);
    v32 = *(v12 + 56);
    v33 = (*(v12 + 48) + 16 * v31);
    v35 = *v33;
    v34 = v33[1];
    v36 = *(v61 + 72);
    v37 = v32 + v36 * v31;
    if (v62)
    {
      (*v63)(v64, v37, v65);
    }

    else
    {
      (*v59)(v64, v37, v65);
    }

    v38 = *(v16 + 40);
    sub_22C274154();
    sub_22C272F44();
    sub_22C2741A4();
    v39 = *(v16 + 32);
    sub_22C25A4D4();
    if (((v42 << v41) & ~*(v26 + 8 * v40)) == 0)
    {
      break;
    }

    sub_22C25A818();
    v45 = v43 | v44;
LABEL_23:
    *(v26 + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v45;
    v52 = (*(v16 + 48) + 16 * v45);
    *v52 = v35;
    v52[1] = v34;
    (*v63)(*(v16 + 56) + v36 * v45, v64, v65);
    ++*(v16 + 16);
    v12 = v60;
    if (!v23)
    {
      goto LABEL_6;
    }
  }

  sub_22C1AE434();
  while (++v46 != v48 || (v47 & 1) == 0)
  {
    v49 = v46 == v48;
    if (v46 == v48)
    {
      v46 = 0;
    }

    v47 |= v49;
    if (*(v26 + 8 * v46) != -1)
    {
      sub_22C25A808();
      v45 = v51 + (v50 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
}

void sub_22C25079C(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v27 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v27 == v5)
    {

      return;
    }

    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      sub_22C2740B4();
      __break(1u);
      goto LABEL_21;
    }

    v8 = *(i - 2);
    v7 = *(i - 1);
    v9 = *i;
    v10 = *a3;

    v12 = sub_22BE3B674(v8, v7);
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_18;
    }

    v16 = v11;
    if (v10[3] < v15)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_22BE5CE4C(&qword_27D915CE0, &unk_22C2D1AF0);
      sub_22C273C54();
      if (v16)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v20 = *a3;
    *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    v21 = (v20[6] + 16 * v12);
    *v21 = v8;
    v21[1] = v7;
    *(v20[7] + 8 * v12) = v9;
    v22 = v20[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_19;
    }

    v20[2] = v24;
    ++v5;
    a2 = 1;
  }

  sub_22C24F5F0(v15, a2 & 1);
  v17 = *a3;
  v18 = sub_22BE3B674(v8, v7);
  if ((v16 & 1) != (v19 & 1))
  {
    goto LABEL_20;
  }

  v12 = v18;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v25 = swift_allocError();
  swift_willThrow();
  v26 = v25;
  sub_22BE5CE4C(&qword_27D9078B0, &qword_22C275BB0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_21:
  sub_22C273AA4();
  MEMORY[0x2318AB8D0](0xD00000000000001BLL, 0x800000022C2DC010);
  sub_22C273C24();
  MEMORY[0x2318AB8D0](39, 0xE100000000000000);
  sub_22C273C94();
  __break(1u);
}

void sub_22C250A74(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v26 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v26 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_22C2740B4();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v11 = sub_22BE3B674(v7, v6);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_22BE5CE4C(&qword_27D915CA8, &qword_22C2D1AB8);
      sub_22C273C54();
      if (v15)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v19 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v20 = (v19[6] + 16 * v11);
    *v20 = v7;
    v20[1] = v6;
    *(v19[7] + 8 * v11) = v8;
    v21 = v19[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_20;
    }

    v19[2] = v23;
    ++v4;
    a2 = 1;
  }

  sub_22C2501DC(v14, a2 & 1);
  v16 = *a3;
  v17 = sub_22BE3B674(v7, v6);
  if ((v15 & 1) != (v18 & 1))
  {
    goto LABEL_21;
  }

  v11 = v17;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v24 = swift_allocError();
  swift_willThrow();
  v25 = v24;
  sub_22BE5CE4C(&qword_27D9078B0, &qword_22C275BB0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_22C273AA4();
  MEMORY[0x2318AB8D0](0xD00000000000001BLL, 0x800000022C2DC010);
  sub_22C273C24();
  MEMORY[0x2318AB8D0](39, 0xE100000000000000);
  sub_22C273C94();
  __break(1u);
}

uint64_t sub_22C250DB8(uint64_t a1, uint64_t a2)
{
  v3 = sub_22BE23C8C();
  v5 = v4(v3);
  sub_22BE1834C(v5);
  v7 = *(v6 + 40);
  v8 = sub_22BE19454();
  v9(v8);
  return a2;
}

uint64_t sub_22C250EF0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_22BE7431C(&qword_27D9155A0, &unk_22C2CC790);
    sub_22BE1ACEC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22C250F5C()
{
  result = qword_27D9156E8;
  if (!qword_27D9156E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9156E8);
  }

  return result;
}

uint64_t sub_22C250FBC(uint64_t a1)
{
  result = sub_22C259290(&qword_27D9156F0, type metadata accessor for Session.Event);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C251068(uint64_t a1)
{
  result = sub_22C259290(&qword_27D9156F8, type metadata accessor for Session.Transcript);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C251114(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915700, type metadata accessor for Timepoint);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C2511C0(uint64_t a1)
{
  result = sub_22C2511E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C2511E8()
{
  result = qword_27D915708;
  if (!qword_27D915708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915708);
  }

  return result;
}

unint64_t sub_22C251290(uint64_t a1)
{
  result = sub_22C2512B8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C2512B8()
{
  result = qword_27D915710;
  if (!qword_27D915710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915710);
  }

  return result;
}

uint64_t sub_22C251360(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915718, type metadata accessor for Session.Event.Payload);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C25140C(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915720, type metadata accessor for SessionStart);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C2514B8(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915728, MEMORY[0x277D1C4C8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C251564(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915730, MEMORY[0x277D1C4C0]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C251610(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915738, MEMORY[0x277D1C638]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C2516BC(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915740, MEMORY[0x277D1C618]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C251768(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915748, type metadata accessor for DateTimeContext);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C251814(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915750, type metadata accessor for UserTurnStarted);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C2518C0(uint64_t a1)
{
  result = sub_22C2518E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C2518E8()
{
  result = qword_27D915758;
  if (!qword_27D915758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915758);
  }

  return result;
}

unint64_t sub_22C251990(uint64_t a1)
{
  result = sub_22C2519B8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C2519B8()
{
  result = qword_27D915760;
  if (!qword_27D915760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915760);
  }

  return result;
}

unint64_t sub_22C251A60(uint64_t a1)
{
  result = sub_22C251A88();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C251A88()
{
  result = qword_27D915768;
  if (!qword_27D915768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915768);
  }

  return result;
}

unint64_t sub_22C251B30(uint64_t a1)
{
  result = sub_22C251B58();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C251B58()
{
  result = qword_27D915770;
  if (!qword_27D915770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915770);
  }

  return result;
}

uint64_t sub_22C251C00(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915778, type metadata accessor for Request);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C251CAC(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915780, type metadata accessor for RequestContent);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C251D58(uint64_t a1)
{
  result = sub_22C251D80();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C251D80()
{
  result = qword_27D915788;
  if (!qword_27D915788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915788);
  }

  return result;
}

uint64_t sub_22C251E28(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915790, type metadata accessor for RequestContent.TextContent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C251ED4(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915798, type metadata accessor for RequestContent.SpeechContent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C251F80(uint64_t a1)
{
  result = sub_22C259290(&qword_27D9157A0, MEMORY[0x277D1C5B8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C25202C(uint64_t a1)
{
  result = sub_22C259290(&qword_27D9157A8, MEMORY[0x277D1C5A0]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C2520D8(uint64_t a1)
{
  result = sub_22C259290(&qword_27D9157B0, MEMORY[0x277D1C568]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C252184(uint64_t a1)
{
  result = sub_22C259290(&qword_27D9157B8, MEMORY[0x277D1C570]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C252230(uint64_t a1)
{
  result = sub_22C259290(&qword_27D9157C0, type metadata accessor for ExternalAgentRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C2522DC(uint64_t a1)
{
  result = sub_22C259290(&qword_27D9157C8, type metadata accessor for RequestPrescribedPlan);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C252388(uint64_t a1)
{
  result = sub_22C2523B0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C2523B0()
{
  result = qword_27D9157D0;
  if (!qword_27D9157D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9157D0);
  }

  return result;
}

unint64_t sub_22C252458(uint64_t a1)
{
  result = sub_22C252480();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C252480()
{
  result = qword_27D9157D8;
  if (!qword_27D9157D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9157D8);
  }

  return result;
}

unint64_t sub_22C252528(uint64_t a1)
{
  result = sub_22C252550();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C252550()
{
  result = qword_27D9157E0;
  if (!qword_27D9157E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9157E0);
  }

  return result;
}

unint64_t sub_22C2525F8(uint64_t a1)
{
  result = sub_22C252620();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C252620()
{
  result = qword_27D9157E8;
  if (!qword_27D9157E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9157E8);
  }

  return result;
}

unint64_t sub_22C2526C8(uint64_t a1)
{
  result = sub_22C2526F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C2526F0()
{
  result = qword_27D9157F0;
  if (!qword_27D9157F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9157F0);
  }

  return result;
}

unint64_t sub_22C252798(uint64_t a1)
{
  result = sub_22C2527C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C2527C0()
{
  result = qword_27D9157F8;
  if (!qword_27D9157F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9157F8);
  }

  return result;
}

uint64_t sub_22C252868(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915800, type metadata accessor for RequestPrescribedPlan.OpenTool);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C252914(uint64_t a1)
{
  result = sub_22C25293C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C25293C()
{
  result = qword_27D915808;
  if (!qword_27D915808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915808);
  }

  return result;
}

unint64_t sub_22C2529E4(uint64_t a1)
{
  result = sub_22C252A0C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C252A0C()
{
  result = qword_27D915810;
  if (!qword_27D915810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915810);
  }

  return result;
}

uint64_t sub_22C252AB4(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915818, type metadata accessor for Action);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C252B60(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915820, type metadata accessor for ActionCancellation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C252C0C(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915828, type metadata accessor for ClientAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C252CB8(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915830, type metadata accessor for ClientAction.ShimParameter);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C252D64(uint64_t a1)
{
  result = sub_22C252D8C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C252D8C()
{
  result = qword_27D915838;
  if (!qword_27D915838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915838);
  }

  return result;
}

unint64_t sub_22C252E34(uint64_t a1)
{
  result = sub_22C252E5C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C252E5C()
{
  result = qword_27D915840;
  if (!qword_27D915840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915840);
  }

  return result;
}

unint64_t sub_22C252F04(uint64_t a1)
{
  result = sub_22C252F2C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C252F2C()
{
  result = qword_27D915848;
  if (!qword_27D915848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915848);
  }

  return result;
}

uint64_t sub_22C252FD4(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915850, type metadata accessor for QueryStep);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C253080(uint64_t a1)
{
  result = sub_22C2530A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C2530A8()
{
  result = qword_27D915858;
  if (!qword_27D915858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915858);
  }

  return result;
}

uint64_t sub_22C253150(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915860, type metadata accessor for QueryPayload.StringQuery);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C2531FC(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915868, type metadata accessor for QueryPayload.IdentifierQuery);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C2532A8(uint64_t a1)
{
  result = sub_22C2532D0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C2532D0()
{
  result = qword_27D915870;
  if (!qword_27D915870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915870);
  }

  return result;
}

uint64_t sub_22C253378(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915878, type metadata accessor for VariableStep);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C253424(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915880, MEMORY[0x277D1C2F0]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C2534D0(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915888, type metadata accessor for RequestContent.SystemPromptResolution);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C25357C(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915890, type metadata accessor for StatementResult);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C253628(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915898, type metadata accessor for QueryStepResults);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C2536D4(uint64_t a1)
{
  result = sub_22C259290(&qword_27D9158A0, MEMORY[0x277D1CAC0]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C253780(uint64_t a1)
{
  result = sub_22C259290(&qword_27D9158A8, MEMORY[0x277D1D0B0]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C25382C(uint64_t a1)
{
  result = sub_22C259290(&qword_27D9158B0, type metadata accessor for ActionResolverRequest);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C2538D8(uint64_t a1)
{
  result = sub_22C253900();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C253900()
{
  result = qword_27D9158B8;
  if (!qword_27D9158B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9158B8);
  }

  return result;
}

unint64_t sub_22C2539A8(uint64_t a1)
{
  result = sub_22C2539D0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C2539D0()
{
  result = qword_27D9158C0;
  if (!qword_27D9158C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9158C0);
  }

  return result;
}

unint64_t sub_22C253A78(uint64_t a1)
{
  result = sub_22C253AA0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C253AA0()
{
  result = qword_27D9158C8;
  if (!qword_27D9158C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9158C8);
  }

  return result;
}

uint64_t sub_22C253B48(uint64_t a1)
{
  result = sub_22C259290(&qword_27D9158D0, type metadata accessor for VariableSetter);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C253BF4(uint64_t a1)
{
  result = sub_22C259290(&qword_27D9158D8, type metadata accessor for RequestContent.SystemPromptResolution.UserAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C253CA0(uint64_t a1)
{
  result = sub_22C259290(&qword_27D9158E0, type metadata accessor for StatementResultPayload);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C253D4C(uint64_t a1)
{
  result = sub_22C259290(&qword_27D9158E8, MEMORY[0x277D1CA10]);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C253DF8(uint64_t a1)
{
  result = sub_22C253E20();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C253E20()
{
  result = qword_27D9158F0;
  if (!qword_27D9158F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9158F0);
  }

  return result;
}

uint64_t sub_22C253EC8(uint64_t a1)
{
  result = sub_22C259290(&qword_27D9158F8, type metadata accessor for ActionParameterContext);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C253F74(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915900, MEMORY[0x277D1CD70]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C254020(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915908, MEMORY[0x277D1CD68]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C2540CC(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915910, MEMORY[0x277D1CD58]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C254178(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915918, MEMORY[0x277D1CD50]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C254224(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915920, MEMORY[0x277D1C8D0]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C2542D0(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915928, MEMORY[0x277D1CB08]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C25437C(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915930, MEMORY[0x277D1CDF0]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C254428(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915938, MEMORY[0x277D1CDE8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C2544D4(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915940, MEMORY[0x277D1CDD8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C254580(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915948, MEMORY[0x277D1CF18]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C25462C(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915950, MEMORY[0x277D1D040]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C2546D8(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915958, MEMORY[0x277D1CE10]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C254784(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915960, type metadata accessor for Candidate);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C254830(uint64_t a1)
{
  result = sub_22C254858();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C254858()
{
  result = qword_27D915968;
  if (!qword_27D915968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915968);
  }

  return result;
}

unint64_t sub_22C254900(uint64_t a1)
{
  result = sub_22C254928();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C254928()
{
  result = qword_27D915970;
  if (!qword_27D915970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915970);
  }

  return result;
}

uint64_t sub_22C2549D0(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915978, type metadata accessor for Session.RecoverableError);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C254A7C(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915980, type metadata accessor for Session.PlanGenerationError);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C254B28(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915988, type metadata accessor for Session.PlanGenerationModelOutputError);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C254BD4(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915990, type metadata accessor for Expression);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C254C80(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915998, type metadata accessor for AnswerSynthesisExpression);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C254D2C(uint64_t a1)
{
  result = sub_22C254D54();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C254D54()
{
  result = qword_27D9159A0;
  if (!qword_27D9159A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9159A0);
  }

  return result;
}

uint64_t sub_22C254DFC(uint64_t a1)
{
  result = sub_22C259290(&qword_27D9159A8, type metadata accessor for PrefixExpression);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C254EA8(uint64_t a1)
{
  result = sub_22C259290(&qword_27D9159B0, type metadata accessor for InfixExpression);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C254F54(uint64_t a1)
{
  result = sub_22C259290(&qword_27D9159B8, type metadata accessor for IndexExpression);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C255000(uint64_t a1)
{
  result = sub_22C259290(&qword_27D9159C0, type metadata accessor for UpdateParametersExpression);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C2550AC(uint64_t a1)
{
  result = sub_22C259290(&qword_27D9159C8, type metadata accessor for UpdateParametersExpression.UpdateParameter);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C255158(uint64_t a1)
{
  result = sub_22C255180();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C255180()
{
  result = qword_27D9159D0;
  if (!qword_27D9159D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9159D0);
  }

  return result;
}

unint64_t sub_22C255228(uint64_t a1)
{
  result = sub_22C255250();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C255250()
{
  result = qword_27D9159D8;
  if (!qword_27D9159D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9159D8);
  }

  return result;
}

unint64_t sub_22C2552F8(uint64_t a1)
{
  result = sub_22C255320();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C255320()
{
  result = qword_27D9159E0;
  if (!qword_27D9159E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9159E0);
  }

  return result;
}

uint64_t sub_22C2553C8(uint64_t a1)
{
  result = sub_22C259290(&qword_27D9159E8, type metadata accessor for RetrieveSpansExpression);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C255474(uint64_t a1)
{
  result = sub_22C259290(&qword_27D9159F0, type metadata accessor for RetrieveToolsExpression);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C255520(uint64_t a1)
{
  result = sub_22C255548();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C255548()
{
  result = qword_27D9159F8;
  if (!qword_27D9159F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9159F8);
  }

  return result;
}

uint64_t sub_22C2555F0(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915A00, type metadata accessor for PickExpression);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C25569C(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915A08, type metadata accessor for ConfirmExpression);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C255748(uint64_t a1)
{
  result = sub_22C255770();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C255770()
{
  result = qword_27D915A10;
  if (!qword_27D915A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915A10);
  }

  return result;
}

uint64_t sub_22C255818(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915A18, type metadata accessor for StructuredSearchExpression);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C2558C4(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915A20, type metadata accessor for StructuredSearchExpression.StructuredSearchProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C255970(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915A28, type metadata accessor for PickOneExpression);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C255A1C(uint64_t a1)
{
  result = sub_22C255A44();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C255A44()
{
  result = qword_27D915A30;
  if (!qword_27D915A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915A30);
  }

  return result;
}

uint64_t sub_22C255AEC(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915A38, type metadata accessor for UndoExpression);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C255B98(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915A40, type metadata accessor for RejectExpression);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C255C44(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915A48, type metadata accessor for CancelExpression);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C255CF0(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915A50, type metadata accessor for OpenExpression);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C255D9C(uint64_t a1)
{
  result = sub_22C255DC4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C255DC4()
{
  result = qword_27D915A58;
  if (!qword_27D915A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915A58);
  }

  return result;
}

unint64_t sub_22C255E6C(uint64_t a1)
{
  result = sub_22C255E94();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C255E94()
{
  result = qword_27D915A60;
  if (!qword_27D915A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915A60);
  }

  return result;
}

uint64_t sub_22C255F3C(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915A68, type metadata accessor for SiriXFallbackExpression);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C255FE8(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915A70, type metadata accessor for UserConfirmExpression);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C256094(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915A78, type metadata accessor for UserDisambiguateExpression);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C256140(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915A80, type metadata accessor for ProgramStatement);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C2561EC(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915A88, MEMORY[0x277D1C338]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C256298(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915A90, MEMORY[0x277D1CC30]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C256344(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915A98, MEMORY[0x277D1CBF8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C2563F0(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915AA0, MEMORY[0x277D1C4A8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C25649C(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915AA8, MEMORY[0x277D1C550]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C256548(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915AB0, MEMORY[0x277D1CB78]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C2565F4(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915AB8, MEMORY[0x277D1CCB0]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C2566A0(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915AC0, MEMORY[0x277D1C8D8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C25674C(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915AC8, MEMORY[0x277D1CAB8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C2567F8(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915AD0, MEMORY[0x277D1CA88]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C2568A4(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915AD8, MEMORY[0x277D1CAB0]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C256950(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915AE0, MEMORY[0x277D1CA18]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C2569FC(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915AE8, MEMORY[0x277D1CAA8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C256AA8(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915AF0, MEMORY[0x277D1CA40]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C256B54(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915AF8, MEMORY[0x277D1CA58]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C256C00(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915B00, MEMORY[0x277D1CA78]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C256CAC(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915B08, MEMORY[0x277D1CA38]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C256D58(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915B10, MEMORY[0x277D1C9A8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C256E04(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915B18, MEMORY[0x277D1C928]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C256EB0(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915B20, MEMORY[0x277D1C920]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C256F5C(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915B28, MEMORY[0x277D1C948]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C257008(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915B30, MEMORY[0x277D1C980]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C2570B4(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915B38, MEMORY[0x277D1C968]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C257160(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915B40, MEMORY[0x277D1CA08]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C25720C(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915B48, type metadata accessor for AST.FlatExpr);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C2572B8(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915B50, type metadata accessor for AST.Update);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C257364(uint64_t a1)
{
  result = sub_22C25738C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C25738C()
{
  result = qword_27D915B58;
  if (!qword_27D915B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915B58);
  }

  return result;
}

uint64_t sub_22C257434(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915B60, type metadata accessor for AST.FlatValue);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C2574E0(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915B68, type metadata accessor for Action.ParameterValue);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C25758C(uint64_t a1)
{
  result = sub_22C2575B4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C2575B4()
{
  result = qword_27D915B70;
  if (!qword_27D915B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915B70);
  }

  return result;
}

uint64_t sub_22C25765C(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915B78, type metadata accessor for RetrievedContextStatement);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C257708(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915B80, type metadata accessor for DynamicEnumerationEntityStatement);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C2577B4(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915B88, type metadata accessor for SpanMatchedEntityStatement);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C257860(uint64_t a1)
{
  result = sub_22C257888();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C257888()
{
  result = qword_27D915B90;
  if (!qword_27D915B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915B90);
  }

  return result;
}

unint64_t sub_22C257930(uint64_t a1)
{
  result = sub_22C257958();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C257958()
{
  result = qword_27D915B98;
  if (!qword_27D915B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915B98);
  }

  return result;
}

uint64_t sub_22C257A00(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915BA0, type metadata accessor for ToolParameterValue);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C257AAC(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915BA8, type metadata accessor for ExternalAgentOutcome);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C257B58(uint64_t a1)
{
  result = sub_22C257B80();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C257B80()
{
  result = qword_27D915BB0;
  if (!qword_27D915BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915BB0);
  }

  return result;
}

uint64_t sub_22C257C28(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915BB8, MEMORY[0x277D1C498]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C257CD4(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915BC0, MEMORY[0x277D1C490]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C257D80(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915BC8, MEMORY[0x277D1C488]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C257E2C(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915BD0, MEMORY[0x277D1C478]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C257ED8(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915BD8, MEMORY[0x277D1CE48]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C257F84(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915BE0, MEMORY[0x277D1C458]);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C258030(uint64_t a1)
{
  result = sub_22C258058();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C258058()
{
  result = qword_27D915BE8;
  if (!qword_27D915BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915BE8);
  }

  return result;
}

unint64_t sub_22C258100(uint64_t a1)
{
  result = sub_22C258128();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C258128()
{
  result = qword_27D915BF0;
  if (!qword_27D915BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915BF0);
  }

  return result;
}

uint64_t sub_22C2581D0(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915BF8, type metadata accessor for TypeConversionRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C25827C(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915C00, type metadata accessor for TypeConversionResult);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C258328(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915C08, type metadata accessor for QueryDecorationResult);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C2583D4(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915C10, type metadata accessor for QueryDecorationPrePlannerResult);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C258480(uint64_t a1)
{
  result = sub_22C2584A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C2584A8()
{
  result = qword_27D915C18;
  if (!qword_27D915C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915C18);
  }

  return result;
}

uint64_t sub_22C258550(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915C20, MEMORY[0x277D1C440]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C2585FC(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915C28, MEMORY[0x277D1C448]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C2586A8(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915C30, type metadata accessor for RequestAmendment);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C258754(uint64_t a1)
{
  result = sub_22C25877C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C25877C()
{
  result = qword_27D915C38;
  if (!qword_27D915C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915C38);
  }

  return result;
}

unint64_t sub_22C258824(uint64_t a1)
{
  result = sub_22C25884C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C25884C()
{
  result = qword_27D915C40;
  if (!qword_27D915C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915C40);
  }

  return result;
}

unint64_t sub_22C2588F4(uint64_t a1)
{
  result = sub_22C25891C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C25891C()
{
  result = qword_27D915C48;
  if (!qword_27D915C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915C48);
  }

  return result;
}

uint64_t sub_22C2589C4(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915C50, MEMORY[0x277D1D098]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C258A70(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915C58, MEMORY[0x277D1D240]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C258B1C(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915C60, type metadata accessor for AgentPrimitiveAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C258BC8(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915C68, type metadata accessor for AgentPrimitiveAction.PrimitiveAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C258C74(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915C70, type metadata accessor for AgentHandoffRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C258D20(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915C78, type metadata accessor for AgentPassRequest);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C258DCC(uint64_t a1)
{
  result = sub_22C258DF4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C258DF4()
{
  result = qword_27D915C80;
  if (!qword_27D915C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915C80);
  }

  return result;
}

uint64_t sub_22C258E9C(uint64_t a1)
{
  result = sub_22C259290(&qword_27D915C88, type metadata accessor for AgentRequest);
  *(a1 + 8) = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for HandwrittenConversion(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for HandwrittenConversion.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_22C259254(uint64_t a1)
{
  v2 = *(a1 + 32);
  sub_22BE26164();
  result = sub_22C2739C4();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_22C259290(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_22BE1ACEC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22C259578()
{

  return sub_22BE1AE58();
}

uint64_t sub_22C2595C8()
{

  return sub_22BE1AE58();
}

uint64_t sub_22C25978C()
{
  v3 = *(v1 - 184);
  v2 = *(v1 - 176);
  return v0;
}

uint64_t sub_22C25979C()
{

  return sub_22BE1AE58();
}

uint64_t sub_22C259B30()
{
  v2 = *(v1 - 112);
  v3 = *(*(v1 - 104) + 32);
  return v0;
}

uint64_t sub_22C259BB0()
{
  result = v0;
  v3 = *(v1 - 96);
  return result;
}

uint64_t sub_22C259C30()
{

  return sub_22BE1AE58();
}

uint64_t sub_22C259C58()
{

  return sub_22BE1AE58();
}

uint64_t sub_22C259C80()
{

  return sub_22BE1AE58();
}

uint64_t sub_22C259CA8()
{

  return sub_22BE1AE58();
}

uint64_t sub_22C259CD0()
{

  return sub_22BE1AE58();
}

uint64_t sub_22C259CF8()
{

  return sub_22BE1AE58();
}

uint64_t sub_22C259D20()
{

  return sub_22BE1AE58();
}

uint64_t sub_22C259D48()
{

  return sub_22BE1AE58();
}

uint64_t sub_22C259EA0(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0;

  return swift_willThrow();
}

void *sub_22C259EF8()
{
  *v0 = v2;
  v0[1] = v1;
  return v0;
}

uint64_t sub_22C259F08(uint64_t a1)
{
  v3 = *(*(v2 - 96) + 16);
  v4 = v1 + *(a1 + 20);
  result = *(v2 - 104);
  v6 = *(v2 - 88);
  return result;
}

uint64_t sub_22C259FC4()
{
  result = v0;
  v3 = *(v1 - 72);
  return result;
}

uint64_t sub_22C25A00C()
{
  result = v0;
  v3 = *(v1 - 160);
  return result;
}

uint64_t sub_22C25A044()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  v5 = v0[3];
  v4 = v0[4];
  return 0;
}

uint64_t sub_22C25A380()
{
  v2 = *(v0 - 240);

  return sub_22BE1AE58();
}

uint64_t sub_22C25A3B4@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 96) = a1;
  *(v2 - 88) = v1;
  return 0;
}

uint64_t sub_22C25A3F0()
{
  v7 = *(v5 - 96);
  *v7 = v2;
  *(v7 + 8) = v0;
  *(v7 + 16) = v3;
  *(v7 + 24) = v4;
  *(v7 + 32) = v1;

  return type metadata accessor for RequestPrescribedPlan(0);
}

uint64_t sub_22C25A448(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0;
  *(v4 - 384) = a1;

  return swift_willThrow();
}

uint64_t sub_22C25A48C()
{
  v2 = *(v1 - 112);
  result = v0;
  v4 = *(v1 - 72);
  return result;
}

uint64_t sub_22C25A578()
{
  v2 = *(v0 - 496);

  return sub_22BE1AE58();
}

uint64_t sub_22C25A590(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 0;

  return swift_willThrow();
}

uint64_t sub_22C25A5A8()
{

  return sub_22C26E664();
}

uint64_t sub_22C25A5C4(uint64_t a1)
{
  v3 = *(v1 - 184) + *(a1 + 20);

  return _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
}

uint64_t sub_22C25A664()
{
  v2 = *(v0 - 360);

  return sub_22BE1AE58();
}

uint64_t sub_22C25A6D0()
{
  result = v0;
  v3 = *(v1 - 72);
  return result;
}

uint64_t sub_22C25A6F4()
{
  v1 = *v0;
  v2 = v0[1];
  return 0;
}

uint64_t sub_22C25A748(uint64_t a1)
{
  v3 = *(*(v2 - 96) + 32);
  result = v1 + *(a1 + 20);
  v5 = *(v2 - 120);
  return result;
}

uint64_t sub_22C25A7A0()
{
  result = v0;
  v3 = *(v1 - 88);
  return result;
}

void sub_22C25A7E8(uint64_t a1@<X8>)
{
  v1 = *(a1 - 256);
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
}

uint64_t *sub_22C25A7F8(uint64_t *result)
{
  v1 = *result;
  v2 = result[1];
  v3 = result[2];
  v4 = result[3];
  v5 = result[4];
  v6 = result[5];
  return result;
}

uint64_t *sub_22C25A828(uint64_t *result)
{
  v1 = *result;
  v2 = result[1];
  return result;
}

uint64_t sub_22C25A888()
{
  result = v0;
  v3 = *(v1 - 88);
  return result;
}

void sub_22C25A8D0(void *a1@<X8>)
{
  *a1 = v2;
  a1[1] = v1;
  v4 = *(v3 + 56);
}

uint64_t sub_22C25A8DC()
{
  v2 = *(v0 + 8);
  result = *(v1 - 152);
  v4 = *(v1 - 280);
  return result;
}

void sub_22C25A900()
{
  *v0 = v4;
  *(v0 + 8) = v1;
  *(v0 + 16) = v5;
  *(v0 + 24) = v6;
  *(v0 + 32) = v2;
  *(v0 + 40) = v7;
  *(v0 + 48) = v3;
}

uint64_t sub_22C25A93C(uint64_t result)
{
  *(v2 - 88) = v1;
  *(v2 - 72) = result;
  return result;
}

uint64_t sub_22C25A96C()
{
  *(v4 - 112) = v3;
  *(v4 - 104) = v2;
  *(v4 - 120) = v1;
  v6 = *v0;
  v7 = *(v0 + 1);
  v8 = *(v0 + 2);
}

id sub_22C25A990(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_22C24F544(a1, a2, a3, 0);
}

uint64_t sub_22C25A9B4()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
}

uint64_t sub_22C25A9D0(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 - 88);
  v5 = *(v2 - 68);

  return sub_22C1083D4(a1, a2);
}

unint64_t sub_22C25A9EC()
{
  v5 = *(v2 - 104);
  v4 = *(v2 - 96);

  return sub_22BE6045C(v4, v0, v5, v1);
}

uint64_t sub_22C25AA08()
{

  return sub_22C273074();
}

uint64_t sub_22C25AA38()
{
  v1 = *v0;
  v2 = v0[1];
  return 0;
}

uint64_t sub_22C25AA68()
{
  result = *(v0 - 288);
  v2 = *(v0 - 272);
  return result;
}

void sub_22C25AA7C()
{
  v3 = *(v2 - 96);
  *v3 = v1;
  v3[1] = v0;
}

void sub_22C25AAD0()
{
  v2 = *(v1 - 128);
  *v0 = *(v1 - 120);
  v0[1] = v2;
  v3 = *(v1 - 144);
  v0[2] = *(v1 - 136);
  v0[3] = v3;
}

uint64_t sub_22C25AAE4()
{
  result = *(v0 - 320);
  v2 = *(v0 - 312);
  return result;
}

void sub_22C25AB88(uint64_t a1@<X8>)
{
  v3 = (a1 + 16 * v1);
  v4 = *(v2 - 128);
  *v3 = *(v2 - 144);
  v3[1] = v4;
}

uint64_t sub_22C25AC9C()
{
  v1 = *v0;
  v2 = v0[1];
  return 0;
}

uint64_t sub_22C25ACD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22BE19DC4(a1, a2, a3, a4);
  v6 = v4 + *(v5 + 24);

  return _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
}

uint64_t *sub_22C25AD04(uint64_t *result)
{
  v2 = *result;
  v1 = result[1];
  v3 = *(result + 16);
  v5 = result[3];
  v4 = result[4];
  v7 = result[5];
  v6 = result[6];
  return result;
}

uint64_t sub_22C25AD2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_22BE19DC4(a1, a2, a3, a4);
  v6 = *(v4 + 24);
  return result;
}

uint64_t sub_22C25AD50()
{
  result = v0;
  v3 = *(v1 - 96);
  return result;
}

uint64_t sub_22C25ADA0(uint64_t result)
{
  v3 = *(v1 + 16);
  v4 = v2 + *(result + 20);
  return result;
}

void sub_22C25ADB4(uint64_t a1@<X8>)
{
  v3 = (a1 + 16 * v1);
  v4 = *(v2 - 96);
  *v3 = *(v2 - 72);
  v3[1] = v4;
}

uint64_t sub_22C25ADEC()
{
  v2 = *(v0 - 144);

  return sub_22BE1AE58();
}

uint64_t sub_22C25AE04(uint64_t a1)
{
  v3 = v1 + *(a1 + 28);

  return _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
}

uint64_t sub_22C25AE1C()
{
  v2 = *(v0 - 384);

  return sub_22BE1AE58();
}

uint64_t sub_22C25AE34()
{
  v3 = *v0;
  v2 = v0[1];
}

uint64_t sub_22C25AE4C()
{

  return sub_22C274004();
}

uint64_t sub_22C25AE64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_22BE19DC4(a1, a2, a3, a4);
  v6 = *(v4 + 28);
  return result;
}

uint64_t ConvertibleFromToolKitProtocol.init(toolkit:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  sub_22BE17C68();
  v39 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v6);
  v41 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v8;
  v43 = v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_22C273844();
  sub_22BE17C68();
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v16);
  v18 = &v37 - v17;
  sub_22BE17C68();
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22BE183AC();
  v26 = v24 - v25;
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v37 - v29;
  (*(v13 + 16))(v18, a1, v11, v28);
  if (sub_22BE1AEA8(v18, 1, AssociatedTypeWitness) == 1)
  {
    v31 = *(v13 + 8);
    v31(a1, v11);
    v31(v18, v11);
    v32 = 1;
    v33 = v42;
    v34 = v43;
  }

  else
  {
    v38 = a1;
    (*(v20 + 32))(v30, v18, AssociatedTypeWitness);
    (*(v20 + 16))(v26, v30, AssociatedTypeWitness);
    v35 = v44;
    v34 = v43;
    (*(v40 + 16))(v26, v43);
    if (v35)
    {
      (*(v13 + 8))(v38, v11);
      return (*(v20 + 8))(v30, AssociatedTypeWitness);
    }

    (*(v13 + 8))(v38, v11);
    (*(v20 + 8))(v30, AssociatedTypeWitness);
    v33 = v42;
    (*(v39 + 32))(v42, v41, v34);
    v32 = 0;
  }

  return sub_22BE19DC4(v33, v32, 1, v34);
}

uint64_t ToolDefinition.init(transcript:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ToolKitConversion.ToolDefinitionProviderResult();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C272674();
  sub_22BE17C68();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BE183AC();
  v40 = v14 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v38 - v17;
  sub_22C272224();
  sub_22BE17C68();
  v42 = v20;
  v43 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22BE183AC();
  v25 = (v23 - v24);
  MEMORY[0x28223BE20](v26);
  v28 = &v38 - v27;
  if (qword_27D906E20 != -1)
  {
    sub_22BE18FD4();
    swift_once();
  }

  sub_22C2742D4();
  if (v45)
  {
    v41 = v8;
    v39 = a2;
    sub_22BE49224(&v44, v46);
    v29 = a1;
    v30 = v46[4];
    sub_22BE1BD3C(v46, v46[3]);
    v31 = sub_22C272664();
    v32 = v47;
    (*(v30 + 8))(v31);
    if (v32)
    {
      (*(v10 + 8))(v29, v41);
    }

    else
    {

      v35 = v43;
      v36 = sub_22BE1AEA8(v7, 1, v43);
      v37 = v41;
      if (v36 == 1)
      {
        (*(v10 + 16))(v40, v29, v41);
        sub_22C272204();
        v7 = v25;
      }

      (*(v10 + 8))(v29, v37);
      (*(v42 + 32))(v39, v7, v35);
    }

    return sub_22BE26B64(v46);
  }

  else
  {
    sub_22C25C250(&v44);
    (*(v10 + 16))(v18, a1, v8);
    v33 = v47;
    sub_22C272204();
    if (v33)
    {
      return (*(v10 + 8))(a1, v8);
    }

    else
    {
      (*(v10 + 8))(a1, v8);
      return (*(v42 + 32))(a2, v28, v43);
    }
  }
}

uint64_t type metadata accessor for ToolKitConversion.ToolDefinitionProviderResult()
{
  result = qword_27D915D00;
  if (!qword_27D915D00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C25B8B0(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void))
{
  a2();
  v5 = a3(0);
  sub_22BE18524(v5);
  return (*(v6 + 8))(a1);
}

uint64_t Dictionary<>.init(toolkit:)()
{
  swift_getAssociatedTypeWitness();
  v0 = sub_22C272EB4();

  return v0;
}

uint64_t Array<A>.init<A>(toolkit:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22BE5CE4C(&qword_27D9078B0, &qword_22C275BB0);
  sub_22C0F0608();
  if (!v3)
  {
    sub_22C2735B4();
    sub_22BE17E90();
    swift_getWitnessTable();
    a2 = sub_22C2735C4();
  }

  sub_22BE18994();
  (*(v7 + 8))(a1, a3);
  return a2;
}

uint64_t SecureCodable.init(transcript:)(uint64_t a1, unint64_t a2)
{
  if (qword_27D906E30 != -1)
  {
    swift_once();
  }

  sub_22C2728B4();
  swift_getWitnessTable();
  sub_22C26DB54();
  return sub_22BE29DD4(a1, a2);
}

uint64_t SecureCodable.encodeTranscriptBytes()()
{
  if (qword_27D906E28 != -1)
  {
    swift_once();
  }

  swift_getWitnessTable();
  return sub_22C26DC04();
}

uint64_t sub_22C25BC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(*(AssociatedTypeWitness - 8) + 64);
  v14 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v16 = &v19 - v15;
  (*(v17 + 16))(&v19 - v15, a1, v14);
  result = (*(a5 + 16))(v16, a3, a5);
  if (v7)
  {
    *a7 = v7;
  }

  return result;
}

uint64_t Set<>.init(toolkit:)()
{
  swift_getAssociatedTypeWitness();
  sub_22C2735B4();
  sub_22BE5CE4C(&qword_27D9078B0, &qword_22C275BB0);
  swift_getWitnessTable();
  sub_22C194C60();

  if (!v0)
  {
    sub_22C2735B4();
    sub_22BE17E90();
    swift_getWitnessTable();
    return sub_22C2736A4();
  }

  return result;
}

uint64_t sub_22C25BF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  v13 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = &v18 - v14;
  (*(v16 + 16))(&v18 - v14, a1, v13);
  result = (*(a4 + 16))(v15, a3, a4);
  if (v6)
  {
    *a6 = v6;
  }

  return result;
}

uint64_t sub_22C25C02C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(*(AssociatedTypeWitness - 8) + 64);
  v11 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = v16 - v12;
  (*(v14 + 16))(v16 - v12, a1, v11);
  return (*(a6 + 16))(v13, a4, a6);
}

uint64_t sub_22C25C148()
{
  v0 = sub_22BE5CE4C(&unk_27D915D10, &qword_22C2D1D68);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_22C2742C4();
  qword_27D915CE8 = result;
  return result;
}

uint64_t static ToolKitConversion.$loadFromToolDatabase.getter()
{
  if (qword_27D906E20 != -1)
  {
    sub_22BE18FD4();
    swift_once();
  }
}

uint64_t static ToolKitConversion.loadFromToolDatabase.getter()
{
  if (qword_27D906E20 != -1)
  {
    sub_22BE18FD4();
    swift_once();
  }

  return sub_22C2742D4();
}

uint64_t sub_22C25C250(uint64_t a1)
{
  v2 = sub_22BE5CE4C(&qword_27D915CF0, &unk_22C2D1B00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C25C35C(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  *a4 = *a3;
}

uint64_t ToolKitConversion.Error.hashValue.getter()
{
  v1 = *v0;
  sub_22C274154();
  MEMORY[0x2318AC860](v1);
  return sub_22C2741A4();
}

uint64_t ToolKitProtoTypedValue.EntityValue.init(toolkit:)(uint64_t a1)
{
  v2 = sub_22C272754();
  sub_22C25C57C();
  sub_22C2703C4();
  sub_22BE18994();
  return (*(v3 + 8))(a1, v2);
}

unint64_t sub_22C25C57C()
{
  result = qword_27D915C98;
  if (!qword_27D915C98)
  {
    sub_22C272754();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915C98);
  }

  return result;
}

uint64_t sub_22C25C71C(uint64_t a1, uint64_t (*a2)(void), void (*a3)(char *))
{
  v5 = a2(0);
  sub_22BE17C68();
  v7 = v6;
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v15 - v12;
  (*(v7 + 16))(v15 - v12, a1, v5, v11);
  a3(v13);
  return (*(v7 + 8))(a1, v5);
}

uint64_t sub_22C25C880(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void))
{
  a2();
  v5 = a3(0);
  sub_22BE18524(v5);
  return (*(v6 + 8))(a1);
}

unint64_t sub_22C25C8F0()
{
  result = qword_27D915CF8;
  if (!qword_27D915CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915CF8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ToolKitConversion(_BYTE *result, int a2, int a3)
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

uint64_t sub_22C25CA58()
{
  v0 = sub_22C272224();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

_BYTE *storeEnumTagSinglePayload for ToolKitConversion.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t AsyncFIFOQueue.perform<A>(_:)()
{
  sub_22BE183F0();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  sub_22C2702A4();
  v1[7] = sub_22C25CECC();
  v7 = sub_22C2735D4();
  v1[8] = v7;
  v1[9] = v6;

  return MEMORY[0x2822009F8](sub_22C25CC44, v7, v6);
}

uint64_t sub_22C25CC44()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  v5 = *(v0 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  *(v4 + 32) = v5;
  v6 = *(MEMORY[0x277D85A40] + 4);
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *v7 = v0;
  v7[1] = sub_22C25CD48;
  v8 = *(v0 + 40);
  v9 = *(v0 + 16);

  return MEMORY[0x2822008A0](v9, v1, v2, 0x286D726F66726570, 0xEB00000000293A5FLL, sub_22C25D0A8, v4, v8);
}

uint64_t sub_22C25CD48()
{
  sub_22BE183F0();
  v3 = *(*v1 + 88);
  v2 = *v1;
  sub_22BE18C2C();
  *v4 = v2;
  v2[12] = v0;

  if (v0)
  {
    v5 = v2[8];
    v6 = v2[9];

    return MEMORY[0x2822009F8](sub_22C25CE70, v5, v6);
  }

  else
  {
    v7 = v2[10];

    sub_22BE17A94();

    return v8();
  }
}

uint64_t sub_22C25CE70()
{
  sub_22BE183F0();
  v1 = *(v0 + 80);

  sub_22BE17A94();
  v3 = *(v0 + 96);

  return v2();
}

unint64_t sub_22C25CECC()
{
  result = qword_28107F1F0[0];
  if (!qword_28107F1F0[0])
  {
    sub_22C2702A4();
    result = swift_getWitnessTable();
    atomic_store(result, qword_28107F1F0);
  }

  return result;
}

uint64_t sub_22C25CF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_22BE7431C(&qword_27D9078B0, &qword_22C275BB0);
  v9 = sub_22C273604();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v18 - v13;
  (*(v10 + 16))(&v18 - v13, a1, v9, v12);
  v15 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a5;
  *(v16 + 3) = a3;
  *(v16 + 4) = a4;
  (*(v10 + 32))(&v16[v15], v14, v9);

  sub_22C270284();
}

uint64_t sub_22C25D0B4(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v6 = *(a4 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v4[6] = swift_task_alloc();
  v8 = swift_task_alloc();
  v4[7] = v8;
  v12 = (a1 + *a1);
  v9 = a1[1];
  v10 = swift_task_alloc();
  v4[8] = v10;
  *v10 = v4;
  v10[1] = sub_22C25D214;

  return v12(v8);
}

uint64_t sub_22C25D214()
{
  sub_22BE183F0();
  v2 = *(*v1 + 64);
  v3 = *v1;
  sub_22BE18C2C();
  *v4 = v3;
  *(v5 + 72) = v0;

  if (v0)
  {
    v6 = sub_22C25D40C;
  }

  else
  {
    v6 = sub_22C25D31C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22C25D31C()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];
  (*(v3 + 16))(v0[6], v1, v2);
  sub_22BE7431C(&qword_27D9078B0, &qword_22C275BB0);
  sub_22C273604();
  sub_22C2735F4();
  (*(v3 + 8))(v1, v2);
  v6 = v0[6];
  v5 = v0[7];

  sub_22BE17A94();

  return v7();
}

uint64_t sub_22C25D40C()
{
  v2 = v0[3];
  v1 = v0[4];
  v0[2] = v0[9];
  sub_22BE7431C(&qword_27D9078B0, &qword_22C275BB0);
  sub_22C273604();
  sub_22C2735E4();
  v4 = v0[6];
  v3 = v0[7];

  sub_22BE17A94();

  return v5();
}

uint64_t sub_22C25D4C0()
{
  v2 = v0[2];
  sub_22BE7431C(&qword_27D9078B0, &qword_22C275BB0);
  v3 = *(sub_22C273604() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_22BF35C20;

  return sub_22C25D0B4(v5, v6, v0 + v4, v2);
}

void *sub_22C25D5D0(const void *a1, uint64_t a2)
{
  if (!a2)
  {
    return MEMORY[0x277D84F90];
  }

  if (a2 <= 0)
  {
    v4 = 2 * a2;
    v5 = MEMORY[0x277D84F90];
  }

  else
  {
    sub_22BE5CE4C(&unk_27D907730, &qword_22C275270);
    v4 = 2 * a2;
    v5 = swift_allocObject();
    v6 = j__malloc_size(v5);
    v5[2] = a2;
    v5[3] = 2 * ((v6 - 32) / 2);
  }

  memcpy(v5 + 4, a1, v4);
  return v5;
}

const void *sub_22C25D678(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = sub_22BEDDB7C(*(a1 + 16), 0);
  sub_22BEDEB7C();
  v4 = v3;
  sub_22BE4926C();
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v2;
}

uint64_t CNContact.toHandles.getter()
{
  v1 = v0;
  v2 = MEMORY[0x277D84F90];
  v56 = MEMORY[0x277D84F90];
  v3 = [v0 phoneNumbers];
  v4 = sub_22BE5CE4C(&unk_27D915D20, &unk_22C2D1DA0);
  v5 = sub_22C273494();

  v6 = sub_22BE69A28(v5);
  v7 = &off_278725000;
  if (v6)
  {
    v8 = v6;
    v54 = v2;
    result = sub_22C273B84();
    if (v8 < 0)
    {
      __break(1u);
      goto LABEL_27;
    }

    v52 = v4;
    v53 = v1;
    v10 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x2318AC200](v10, v5);
      }

      else
      {
        v11 = *(v5 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = [v11 v7[488]];
      if (v13)
      {
        v14 = v13;
        v15 = [v12 value];
        v16 = [v15 stringValue];

        v17 = sub_22C273024();
        v18 = v7;
        v20 = v19;

        v21 = objc_allocWithZone(MEMORY[0x277CD3E98]);
        v22 = v20;
        v7 = v18;
        sub_22C25ED7C(v17, v22, 2, v14);
      }

      else
      {
        v23 = [v12 value];
        v24 = [v23 stringValue];

        v25 = sub_22C273024();
        v27 = v26;

        v28 = objc_allocWithZone(MEMORY[0x277CD3E98]);
        sub_22BE762F0(v25, v27, 2);
      }

      ++v10;
      sub_22C273B54();
      v29 = *(v54 + 16);
      sub_22C273B94();
      sub_22C273BA4();
      sub_22C273B64();
    }

    while (v8 != v10);

    v1 = v53;
    v30 = v54;
    v2 = MEMORY[0x277D84F90];
  }

  else
  {

    v30 = MEMORY[0x277D84F90];
  }

  sub_22BE6E7F8(v30);
  v31 = [v1 emailAddresses];
  v32 = sub_22C273494();

  v33 = sub_22BE69A28(v32);
  if (!v33)
  {

    v51 = MEMORY[0x277D84F90];
LABEL_25:
    sub_22BE6E7F8(v51);
    return v56;
  }

  v34 = v33;
  v55 = v2;
  result = sub_22C273B84();
  if ((v34 & 0x8000000000000000) == 0)
  {
    v35 = 0;
    do
    {
      if ((v32 & 0xC000000000000001) != 0)
      {
        v36 = MEMORY[0x2318AC200](v35, v32);
      }

      else
      {
        v36 = *(v32 + 8 * v35 + 32);
      }

      v37 = v36;
      v38 = [v36 v7[488]];
      if (v38)
      {
        v39 = v38;
        v40 = [v37 value];
        v41 = sub_22C273024();
        v43 = v42;

        v44 = objc_allocWithZone(MEMORY[0x277CD3E98]);
        sub_22C25ED7C(v41, v43, 1, v39);
      }

      else
      {
        v45 = [v37 value];
        v46 = sub_22C273024();
        v48 = v47;

        v49 = objc_allocWithZone(MEMORY[0x277CD3E98]);
        sub_22BE762F0(v46, v48, 1);
      }

      ++v35;
      sub_22C273B54();
      v50 = *(v55 + 16);
      sub_22C273B94();
      sub_22C273BA4();
      sub_22C273B64();
    }

    while (v34 != v35);

    v51 = v55;
    goto LABEL_25;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t CNContact.toNameComponents.getter()
{
  v1 = sub_22BE5CE4C(&qword_27D907848, &qword_22C2758F0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - v6;
  v8 = sub_22C26DE64();
  v9 = sub_22BE179D8(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C26DE54();
  v16 = [v0 givenName];
  sub_22C273024();
  sub_22BE17EC0();
  sub_22BE18FE8();
  sub_22C26DDC4();
  v17 = [v0 familyName];
  sub_22C273024();
  sub_22BE17EC0();
  sub_22BE18FE8();
  sub_22C26DDD4();
  v18 = [v0 nickname];
  sub_22C273024();
  sub_22BE17EC0();
  sub_22BE18FE8();
  sub_22C26DE44();
  v19 = [v0 namePrefix];
  sub_22C273024();
  sub_22BE17EC0();
  sub_22BE18FE8();
  sub_22C26DE04();
  v20 = [v0 nameSuffix];
  sub_22C273024();
  sub_22BE17EC0();
  sub_22BE18FE8();
  sub_22C26DE14();
  v21 = [v0 middleName];
  sub_22C273024();
  sub_22BE17EC0();
  sub_22BE18FE8();
  sub_22C26DDE4();
  sub_22C26DE54();
  v22 = [v0 phoneticGivenName];
  sub_22C273024();
  sub_22BE17EC0();
  sub_22C26DDC4();
  v23 = [v0 phoneticFamilyName];
  sub_22C273024();
  sub_22BE17EC0();
  sub_22C26DDD4();
  v24 = [v0 phoneticMiddleName];
  sub_22C273024();

  sub_22C26DDE4();
  (*(v11 + 16))(v4, v15, v8);
  sub_22BE19DC4(v4, 0, 1, v8);
  sub_22C26DDF4();
  sub_22BE19DC4(v7, 0, 1, v8);
  sub_22C26DE34();
  return (*(v11 + 8))(v15, v8);
}

id CNContact.toImage.getter()
{
  v1 = sub_22C25EF84(v0);
  if (v2 >> 60 == 15)
  {
    return 0;
  }

  v4 = v1;
  v5 = v2;
  sub_22C25EFE8();
  return sub_22C25DF10(v4, v5);
}

id sub_22C25DF10(uint64_t a1, unint64_t a2)
{
  v4 = sub_22C26E014();
  v5 = [swift_getObjCClassFromMetadata() imageWithImageData_];

  sub_22BE29DD4(a1, a2);
  return v5;
}

uint64_t CNContact.toINPerson.getter()
{
  v1 = sub_22BE5CE4C(&qword_27D907848, &qword_22C2758F0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v29 - v3;
  v34 = sub_22C26DE64();
  v5 = sub_22BE179D8(v34);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x277D84F90];
  v12 = CNContact.toHandles.getter();
  v35 = v11;
  CNContact.toNameComponents.getter();
  v33 = v0;
  v13 = CNContact.toImage.getter();
  result = sub_22BE69A28(v12);
  if (!result)
  {

    v28 = MEMORY[0x277D84F90];
LABEL_12:
    (*(v7 + 8))(v35, v34);
    return v28;
  }

  v15 = result;
  if (result >= 1)
  {
    v16 = 0;
    v30 = v7;
    v31 = v12 & 0xC000000000000001;
    v17 = (v7 + 16);
    v32 = v12;
    do
    {
      if (v31)
      {
        v18 = MEMORY[0x2318AC200](v16, v12);
      }

      else
      {
        v18 = *(v12 + 8 * v16 + 32);
      }

      v19 = v18;
      v20 = v34;
      (*v17)(v4, v35, v34);
      sub_22BE19DC4(v4, 0, 1, v20);
      v21 = v19;
      v22 = v13;
      v23 = [v33 identifier];
      v24 = sub_22C273024();
      v26 = v25;

      v27 = objc_allocWithZone(MEMORY[0x277CD3E90]);
      sub_22C25EE00(v21, v4, 0, 0, v13, v24, v26, 0, 0);
      MEMORY[0x2318ABB70]();
      if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22C2734F4();
      }

      ++v16;
      sub_22C273554();

      v12 = v32;
    }

    while (v15 != v16);
    v28 = v36;

    v7 = v30;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

unint64_t static ContactHelper.fetchContactWithIdentifiers(identifiers:)(uint64_t a1)
{
  v69 = *MEMORY[0x277D85DE8];
  v2 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  v68 = MEMORY[0x277D84F90];
  sub_22BE5CE4C(&qword_27D9073A8, &qword_22C275BE0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22C2D1D90;
  v4 = *MEMORY[0x277CBD018];
  v5 = *MEMORY[0x277CBD068];
  v6 = MEMORY[0x277CBD000];
  *(v3 + 32) = *MEMORY[0x277CBD018];
  *(v3 + 40) = v5;
  v7 = *v6;
  v8 = *MEMORY[0x277CBD058];
  *(v3 + 48) = *v6;
  *(v3 + 56) = v8;
  v9 = *MEMORY[0x277CBCFF8];
  v10 = *MEMORY[0x277CBD070];
  *(v3 + 64) = *MEMORY[0x277CBCFF8];
  *(v3 + 72) = v10;
  v11 = *MEMORY[0x277CBD078];
  v12 = *MEMORY[0x277CBD0B0];
  v13 = MEMORY[0x277CBD0B8];
  *(v3 + 80) = *MEMORY[0x277CBD078];
  *(v3 + 88) = v12;
  v61 = *v13;
  v62 = *MEMORY[0x277CBD0A8];
  *(v3 + 96) = *v13;
  *(v3 + 104) = v62;
  v63 = *MEMORY[0x277CBD098];
  v64 = *MEMORY[0x277CBCFC0];
  *(v3 + 112) = *MEMORY[0x277CBD098];
  *(v3 + 120) = v64;
  v65 = *MEMORY[0x277CBD120];
  v66 = *MEMORY[0x277CBD028];
  *(v3 + 128) = *MEMORY[0x277CBD120];
  *(v3 + 136) = v66;
  v60 = a1;
  v14 = *(a1 + 16);
  if (v14)
  {
    v15 = v4;
    v16 = v5;
    v17 = v7;
    v18 = v8;
    v19 = v9;
    v20 = v10;
    v21 = v11;
    v22 = v12;
    v23 = v61;
    v24 = v62;
    v25 = v63;
    v26 = v64;
    v27 = v65;
    v28 = v66;
    v29 = (v60 + 40);
    do
    {
      v30 = *(v29 - 1);
      v31 = *v29;

      v32 = sub_22C272FF4();

      sub_22BE5CE4C(&qword_27D915DA0, &qword_22C2D1DB0);
      v33 = sub_22C273484();
      v67 = 0;
      v34 = [v2 unifiedContactWithIdentifier:v32 keysToFetch:v33 error:&v67];

      if (v34)
      {
        v35 = v67;
      }

      else
      {
        v36 = v67;
        v37 = sub_22C26DE84();

        swift_willThrow();
      }

      MEMORY[0x2318ABB70](v35);
      if (*(v68 + 16) >= *(v68 + 24) >> 1)
      {
        sub_22C2734F4();
      }

      sub_22C273554();
      v29 += 2;
      --v14;
    }

    while (v14);
    v38 = v68;
  }

  else
  {
    v39 = v4;
    v40 = v5;
    v41 = v7;
    v42 = v8;
    v43 = v9;
    v44 = v10;
    v45 = v11;
    v46 = v12;
    v47 = v61;
    v48 = v62;
    v49 = v63;
    v50 = v64;
    v51 = v65;
    v52 = v66;

    v38 = MEMORY[0x277D84F90];
  }

  v53 = 0;
  v54 = MEMORY[0x277D84F90];
  v67 = MEMORY[0x277D84F90];
  v55 = *(v38 + 16);
  while (v55 != v53)
  {
    if (v53 >= *(v38 + 16))
    {
      __break(1u);
    }

    v56 = *(v38 + 8 * v53++ + 32);
    if (v56)
    {
      v57 = v56;
      MEMORY[0x2318ABB70]();
      if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22C2734F4();
      }

      sub_22C273554();
      v54 = v67;
    }
  }

  v58 = *MEMORY[0x277D85DE8];
  return v54;
}

const void *static ContactHelper.getContactIdentifiers(matches:)(uint64_t a1)
{
  v1 = 0;
  v8 = MEMORY[0x277D84FA0];
  v2 = *(a1 + 16);
  while (v2 != v1)
  {
    v3 = *(sub_22C270FD4() - 8);
    v4 = *(v3 + 80);
    v5 = *(v3 + 72);
    sub_22C25E75C(&v8);
    ++v1;
  }

  v6 = v8;

  return sub_22C25D678(v6);
}

uint64_t sub_22C25E75C(uint64_t a1)
{
  v67 = sub_22C270AF4();
  v2 = *(v67 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v67);
  v65 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22C272804();
  v62 = *(v5 - 8);
  v63 = v5;
  v6 = *(v62 + 64);
  MEMORY[0x28223BE20](v5);
  v61 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C2727C4();
  v59 = *(v8 - 8);
  v60 = v8;
  v9 = *(v59 + 64);
  MEMORY[0x28223BE20](v8);
  v58 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22BE5CE4C(&qword_27D907400, &unk_22C274F90);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v57 - v13;
  v15 = sub_22C272874();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = (&v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v22 = &v57 - v21;
  sub_22C270FB4();
  v23 = sub_22BE1AEA8(v14, 1, v15);
  v64 = a1;
  if (v23 == 1)
  {
    sub_22C25F238(v14);
  }

  else
  {
    (*(v16 + 32))(v22, v14, v15);
    (*(v16 + 16))(v19, v22, v15);
    if ((*(v16 + 88))(v19, v15) == *MEMORY[0x277D72A58])
    {
      (*(v16 + 96))(v19, v15);
      v24 = *v19;
      v25 = swift_projectBox();
      v26 = v61;
      v27 = v62;
      v28 = v63;
      (*(v62 + 16))(v61, v25, v63);
      if ((*(v27 + 88))(v26, v28) == *MEMORY[0x277D729B0])
      {
        (*(v27 + 96))(v26, v28);
        v29 = v58;
        v30 = v59;
        v31 = v26;
        v32 = v60;
        (*(v59 + 32))(v58, v31, v60);

        v33 = sub_22C2727B4();
        v34 = sub_22C25F02C(v33);
        if (v35)
        {
          sub_22C1A7B60(v66, v34, v35, v36, v37, v38, v39, v40, v57, v58);
        }

        (*(v30 + 8))(v29, v32);
        (*(v16 + 8))(v22, v15);
      }

      else
      {
        (*(v16 + 8))(v22, v15);
        (*(v27 + 8))(v26, v28);
      }
    }

    else
    {
      v41 = *(v16 + 8);
      v41(v22, v15);
      v41(v19, v15);
    }
  }

  result = sub_22C270FC4();
  v43 = result;
  v44 = 0;
  v45 = *(result + 16);
  v46 = (v2 + 8);
  while (1)
  {
    if (v45 == v44)
    {
    }

    if (v44 >= *(v43 + 16))
    {
      break;
    }

    (*(v2 + 16))(v65, v43 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v44, v67);
    if (sub_22C270AB4() == 0x73746361746E6F43 && v47 == 0xE800000000000000)
    {

LABEL_21:

      v50 = v65;
      v51 = sub_22C270AD4();
      sub_22C1A7B60(v66, v51, v52, v52, v53, v54, v55, v56, v57, v58);

      return (*v46)(v50, v67);
    }

    v49 = sub_22C274014();

    if (v49)
    {
      goto LABEL_21;
    }

    result = (*v46)(v65, v67);
    ++v44;
  }

  __break(1u);
  return result;
}

id sub_22C25ED7C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  if (a2)
  {
    v8 = sub_22C272FF4();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v5 initWithValue:v8 type:a3 label:a4];

  return v9;
}

id sub_22C25EE00(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v16 = sub_22C26DE64();
  v17 = 0;
  if (sub_22BE1AEA8(a2, 1, v16) != 1)
  {
    v17 = sub_22C26DE24();
    (*(*(v16 - 8) + 8))(a2, v16);
  }

  if (a4)
  {
    v18 = sub_22C272FF4();
  }

  else
  {
    v18 = 0;
  }

  if (!a7)
  {
    v19 = 0;
    if (a9)
    {
      goto LABEL_8;
    }

LABEL_10:
    v20 = 0;
    goto LABEL_11;
  }

  v19 = sub_22C272FF4();

  if (!a9)
  {
    goto LABEL_10;
  }

LABEL_8:
  v20 = sub_22C272FF4();

LABEL_11:
  v21 = [v10 initWithPersonHandle:a1 nameComponents:v17 displayName:v18 image:a5 contactIdentifier:v19 customIdentifier:v20];

  return v21;
}

uint64_t sub_22C25EF84(void *a1)
{
  v1 = [a1 imageData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_22C26E034();

  return v3;
}

unint64_t sub_22C25EFE8()
{
  result = qword_27D915D30;
  if (!qword_27D915D30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D915D30);
  }

  return result;
}

uint64_t sub_22C25F02C(void *a1)
{
  v2 = [a1 contactIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_22C273024();

  return v3;
}

uint64_t (*sub_22C25F09C(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v7 = sub_22BE1C0E0(a1, a2, a3);
  sub_22BE765FC(v7);
  v8 = sub_22BE1A828();
  sub_22BE69A38(v8, v9, v10);
  if (v6)
  {
    v11 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v11 = MEMORY[0x2318AC200](v5, v4);
  }

  *v3 = v11;
  return sub_22C25F2A0;
}

void (*sub_22C25F110(uint64_t a1, uint64_t a2, uint64_t a3))(id *a1)
{
  v7 = sub_22BE1C0E0(a1, a2, a3);
  sub_22BE765FC(v7);
  v8 = sub_22BE1A828();
  sub_22BE69A38(v8, v9, v10);
  if (v6)
  {
    v11 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v11 = MEMORY[0x2318AC200](v5, v4);
  }

  *v3 = v11;
  return sub_22C25F184;
}

_BYTE *storeEnumTagSinglePayload for ContactHelper(_BYTE *result, int a2, int a3)
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

uint64_t sub_22C25F238(uint64_t a1)
{
  v2 = sub_22BE5CE4C(&qword_27D907400, &unk_22C274F90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Encodable.ifps_jsonString()()
{
  v2 = v0;
  v3 = sub_22C273064();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_22BE179EC();
  v7 = v6 - v5;
  v8 = sub_22C26DC34();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_22C26DC24();
  v11 = sub_22C26DC04();
  v13 = v12;

  if (!v1)
  {
    sub_22C273054();
    v14 = sub_22C273044();
    if (v15)
    {
      v7 = v14;
      v2 = v15;
    }

    else
    {
      v7 = 0x800000022C2D4060;
      v2 = 0x800000022C2D3FE0;
      sub_22BF103C8();
      swift_allocError();
      *v18 = 0xD00000000000007FLL;
      *(v18 + 8) = 0x800000022C2D3FE0;
      *(v18 + 16) = xmmword_22C28C730;
      *(v18 + 32) = 0x800000022C2D4060;
      swift_willThrow();
    }

    sub_22BE29DD4(v11, v13);
  }

  v16 = v7;
  v17 = v2;
  result._object = v17;
  result._countAndFlagsBits = v16;
  return result;
}

uint64_t sub_22C25F42C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = sub_22C26DBC4();
  sub_22BE17C68();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE179EC();
  v11 = v10 - v9;
  v31 = sub_22C26DBA4();
  sub_22BE17C68();
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BE179EC();
  v19 = v18 - v17;
  v20 = sub_22C26DBE4();
  sub_22BE17C68();
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22BE179EC();
  v28 = v27 - v26;
  v29 = sub_22C26DC14();
  (*(v22 + 16))(v28, a1, v20);

  sub_22C26DBF4();
  (*(v13 + 16))(v19, a2, v31);
  sub_22C26DBB4();
  (*(v5 + 16))(v11, a3, v34);
  sub_22C26DBD4();

  (*(v5 + 8))(a3, v34);
  (*(v13 + 8))(a2, v31);
  (*(v22 + 8))(a1, v20);
  return v29;
}

uint64_t sub_22C25F698(uint64_t a1, void *a2)
{
  v46 = a1;
  v47 = a2;
  v2 = sub_22C2720A4();
  v40 = *(v2 - 8);
  v41 = v2;
  v3 = *(v40 + 64);
  MEMORY[0x28223BE20](v2);
  v39[1] = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22BE5CE4C(&qword_27D9152F8, &unk_22C2CC8F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v52 = v39 - v7;
  v50 = sub_22C26E2A4();
  v45 = *(v50 - 8);
  v8 = *(v45 + 64);
  MEMORY[0x28223BE20](v50);
  v44 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_22C26E0D4();
  v10 = *(v51 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v51);
  v48 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_22C26E0B4();
  v13 = *(v49 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v49);
  v16 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22C26E094();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22C26E0A4();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = v39 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_22C26E0E4();
  v42 = *(v27 - 8);
  v43 = v27;
  v28 = *(v42 + 64);
  MEMORY[0x28223BE20](v27);
  v30 = v39 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v22;
  v32 = v48;
  (*(v23 + 104))(v26, *MEMORY[0x277CC9460], v31);
  v33 = v50;
  v34 = v17;
  v35 = v52;
  (*(v18 + 104))(v21, *MEMORY[0x277CC9458], v34);
  (*(v13 + 104))(v16, *MEMORY[0x277CC9468], v49);
  (*(v10 + 104))(v32, *MEMORY[0x277CC9480], v51);
  sub_22C26E274();
  result = sub_22BE1AEA8(v35, 1, v33);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v45 + 32))(v44, v35, v33);
    sub_22C26E0C4();
    sub_22C260048();
    v37 = v43;
    sub_22C26E144();
    v38 = v47[4];
    sub_22BE1BD3C(v47, v47[3]);
    sub_22C274224();
    sub_22BE73F10(v53, v53[3]);
    sub_22C274034();
    (*(v42 + 8))(v30, v37);

    return sub_22BE26B64(v53);
  }

  return result;
}

uint64_t sub_22C25FD58()
{
  v0 = sub_22C26DBC4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22C26DBA4();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C26DBE4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (&v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22C26DC34();
  *v13 = sub_22C25F698;
  v13[1] = 0;
  (*(v10 + 104))(v13, *MEMORY[0x277CC8770], v9);
  sub_22C26DB94();
  (*(v1 + 104))(v4, *MEMORY[0x277CC8740], v0);
  result = sub_22C25F42C(v13, v8, v4);
  qword_28108A2A0 = result;
  return result;
}

uint64_t Encodable.ifps_recode<A>()()
{
  v1 = sub_22C26DC34();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_22C26DC24();
  v4 = sub_22C26DC04();
  v6 = v5;

  if (!v0)
  {
    v8 = sub_22C26DB74();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    sub_22C26DB64();
    sub_22C26DB54();

    return sub_22BE29DD4(v4, v6);
  }

  return result;
}

unint64_t sub_22C260048()
{
  result = qword_27D915DA8;
  if (!qword_27D915DA8)
  {
    sub_22C26E0E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915DA8);
  }

  return result;
}

uint64_t sub_22C2600A0(void *a1)
{
  v2 = a1[4];
  sub_22BE1BD3C(a1, a1[3]);
  sub_22C274224();
  type metadata accessor for TranscriptProtoTranscript(0);
  sub_22C260734(&qword_27D90F360);
  v3 = sub_22C270744();
  if (!v1)
  {
    v5 = v3;
    v6 = v4;
    sub_22BE73F10(v8, v8[3]);
    sub_22BE3BE7C();
    sub_22C274044();
    sub_22BE29DD4(v5, v6);
  }

  return sub_22BE26B64(v8);
}

uint64_t CodableProtoMessage.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[4];
  sub_22BE1BD3C(a1, a1[3]);
  sub_22C274224();
  v6 = *(a3 + 8);
  _s30IntelligenceFlowPlannerSupport20GlobalToolIdentifierV6toolId09deviceIdsI0017representsBuiltInF0ACSS_SSSgSbtcfcfA1__0();
  v7 = sub_22C270744();
  if (!v3)
  {
    v9 = v7;
    v10 = v8;
    sub_22BE73F10(v12, v12[3]);
    sub_22BE3BE7C();
    sub_22C274044();
    sub_22BE29DD4(v9, v10);
  }

  return sub_22BE26B64(v12);
}

uint64_t sub_22C2602A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoTranscript(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[4];
  sub_22BE1BD3C(a1, a1[3]);
  sub_22C274204();
  if (!v2)
  {
    sub_22BE1BD3C(v15, v15[3]);
    sub_22C11E528();
    sub_22C274024();
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    sub_22C270514();
    sub_22C260734(&qword_27D90F360);
    sub_22C270734();
    sub_22C2607A8(v10, a2);
    sub_22BE26B64(v15);
  }

  return sub_22BE26B64(a1);
}

uint64_t CodableProtoMessage.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a3;
  v21 = a4;
  v7 = sub_22C270524();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = *(a2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  sub_22BE1BD3C(a1, a1[3]);
  sub_22C274204();
  if (!v4)
  {
    v19 = v9;
    v20 = a2;
    sub_22BE1BD3C(v25, v25[3]);
    sub_22C11E528();
    sub_22C274024();
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    v15 = *(v26 + 8);
    v16 = v20;
    _s30IntelligenceFlowPlannerSupport20GlobalToolIdentifierV6toolId09deviceIdsI0017representsBuiltInF0ACSS_SSSgSbtcfcfA1__0();
    sub_22C1ECB48();
    sub_22C270734();
    (*(v19 + 32))(v21, v13, v16);
    sub_22BE26B64(v25);
  }

  return sub_22BE26B64(a1);
}

uint64_t sub_22C2606A8(void *a1)
{
  a1[1] = sub_22C260734(&qword_27D90F360);
  a1[2] = sub_22C260734(&qword_27D915DB0);
  result = sub_22C260734(&qword_27D915DB8);
  a1[3] = result;
  return result;
}

uint64_t sub_22C260734(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TranscriptProtoTranscript(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22C2607A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoTranscript(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t Collection.at(_:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_22BE17C68();
  v6 = v5;
  v8 = *(v7 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  v11 = &v24[-v10];
  sub_22C2736E4();
  v12 = *(swift_getAssociatedConformanceWitness() + 8);
  swift_getAssociatedTypeWitness();
  v13 = *(swift_getAssociatedConformanceWitness() + 8);
  LOBYTE(v12) = sub_22C2733B4();
  (*(v6 + 8))(v11, AssociatedTypeWitness);
  if (v12)
  {
    v14 = sub_22C273764();
    v16 = v15;
    v17 = *(a1 + 8);
    v18 = swift_getAssociatedTypeWitness();
    (*(*(v18 - 8) + 16))(a2, v16, v18);
    v14(v24, 0);
    v19 = a2;
    v20 = 0;
    v21 = v18;
  }

  else
  {
    v22 = *(a1 + 8);
    v21 = swift_getAssociatedTypeWitness();
    v19 = a2;
    v20 = 1;
  }

  return sub_22BE19DC4(v19, v20, 1, v21);
}

uint64_t Collection.intersperse(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48 = a1;
  sub_22BE17C68();
  v45 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_22BE17C68();
  v47 = v12;
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  v46 = &v45 - v16;
  v17 = *(a3 + 8);
  v18 = swift_getAssociatedTypeWitness();
  sub_22BE1C0A4();
  v19 = sub_22C273844();
  sub_22BE17C68();
  v21 = v20;
  v23 = *(v22 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v24);
  v26 = &v45 - v25;
  sub_22BE17C68();
  v28 = v27;
  v30 = *(v29 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v31);
  v33 = &v45 - v32;
  sub_22C273734();
  if (sub_22BE1AEA8(v26, 1, v18) == 1)
  {
    (*(v21 + 8))(v26, v19);
    sub_22BE1C0A4();
    return sub_22C273524();
  }

  else
  {
    (*(v28 + 32))(v33, v26, v18);
    (*(v45 + 16))(v11, v3, a2);
    v35 = v46;
    sub_22C273744();
    v36 = sub_22C261260(v18, v18);
    v37 = *(v36 + 52);
    v38 = *(v28 + 72);
    v39 = (*(v28 + 80) + *(v36 + 48)) & ~*(v28 + 80);
    swift_allocObject();
    v40 = sub_22C2734D4();
    (*(v28 + 16))(v41, v33, v18);
    sub_22BE1C0A4();
    v42 = sub_22C2735B4();
    v50 = v40;
    MEMORY[0x28223BE20](v42);
    *(&v45 - 4) = a2;
    *(&v45 - 3) = a3;
    *(&v45 - 2) = v48;
    v43 = AssociatedTypeWitness;
    v44 = *(swift_getAssociatedConformanceWitness() + 8);
    sub_22C273364();
    (*(v47 + 8))(v35, v43);
    (*(v28 + 8))(v33, v18);
    return v51;
  }
}

uint64_t sub_22C260E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v16 - v12;
  v14 = *(v9 + 16);
  v14(&v16 - v12, a3, AssociatedTypeWitness, v11);
  sub_22C2735B4();
  sub_22C273574();
  (v14)(v13, a2, AssociatedTypeWitness);
  return sub_22C273574();
}

uint64_t Collection.sliding2Window()(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_22BE17C68();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  sub_22BE179FC();
  v15 = MEMORY[0x28223BE20](v14);
  (*(v7 + 16))(v12, v3, a1, v15);
  sub_22C273744();
  v16 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(swift_getAssociatedConformanceWitness() + 8);
  sub_22C2735C4();
  sub_22BE1C0A4();
  v19 = sub_22C273844();
  sub_22C273C14();

  sub_22C273FE4();
  v20 = *(*(v19 - 8) + 72);
  v21 = *(*(v19 - 8) + 80);
  swift_allocObject();
  sub_22C2734D4();
  sub_22BE19DC4(v22, 1, 1, AssociatedTypeWitness);
  sub_22C2735B4();
  v23 = sub_22C273514();

  v25[1] = v23;
  swift_getWitnessTable();
  sub_22C274094();
}

uint64_t sub_22C261260(uint64_t a1, uint64_t a2)
{
  if (sub_22C2612EC(a2))
  {

    return sub_22BE5CE4C(&qword_27D9073A8, &qword_22C275BE0);
  }

  else
  {

    return sub_22C273FE4();
  }
}

uint64_t sub_22C2612EC(uint64_t a1)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22C26131C(void (*a1)(__int128 *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v35 = MEMORY[0x277D84F90];
  sub_22BE71300(0, v5, 0);
  v6 = v35;
  for (i = (a3 + 56); ; i += 32)
  {
    v9 = *(i - 1);
    v10 = *i;
    v26 = *(i - 24);
    v27 = v9;
    v28 = v10;

    a1(&v29, &v26);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v11 = v29;
    v13 = v30;
    v12 = v31;
    v14 = v32;
    v15 = v33;
    v16 = v34;
    v35 = v6;
    v18 = *(v6 + 16);
    v17 = *(v6 + 24);
    if (v18 >= v17 >> 1)
    {
      v24 = v29;
      v20 = v31;
      v23 = v33;
      v22 = v34;
      sub_22BE71300(v17 > 1, v18 + 1, 1);
      v16 = v22;
      v15 = v23;
      v12 = v20;
      v11 = v24;
      v6 = v35;
    }

    *(v6 + 16) = v18 + 1;
    v19 = v6 + 56 * v18;
    *(v19 + 32) = v11;
    *(v19 + 48) = v13;
    *(v19 + 56) = v12;
    *(v19 + 64) = v14;
    *(v19 + 72) = v15;
    *(v19 + 80) = v16;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C261498(void (*a1)(uint64_t, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  updated = type metadata accessor for UpdateParametersExpression.UpdateParameter(0);
  v7 = *(updated - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](updated - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v22 = MEMORY[0x277D84F90];
    sub_22BE71838(0, v11, 0);
    v12 = v22;
    v13 = *(type metadata accessor for AST.Update(0) - 8);
    v14 = a3 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v18 = *(v13 + 72);
    while (1)
    {
      v19(v14, &v21);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v22 = v12;
      v16 = *(v12 + 16);
      v15 = *(v12 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_22BE71838(v15 > 1, v16 + 1, 1);
        v12 = v22;
      }

      *(v12 + 16) = v16 + 1;
      sub_22C265EC8(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, type metadata accessor for UpdateParametersExpression.UpdateParameter);
      v14 += v18;
      if (!--v11)
      {
        return v12;
      }
    }
  }

  return v12;
}

uint64_t sub_22C261698(void (*a1)(uint64_t, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18 = a1;
  v19 = a2;
  v17 = sub_22C26E684();
  v6 = *(v17 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v17);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v21 = MEMORY[0x277D84F90];
    sub_22BE71084();
    v11 = v21;
    v12 = *(sub_22C26E1D4() - 8);
    v13 = a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v16[1] = v6 + 32;
    v16[0] = *(v12 + 72);
    while (1)
    {
      v18(v13, &v20);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v21 = v11;
      v14 = *(v11 + 16);
      if (v14 >= *(v11 + 24) >> 1)
      {
        sub_22BE71084();
        v11 = v21;
      }

      *(v11 + 16) = v14 + 1;
      (*(v6 + 32))(v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v9, v17);
      v13 += v16[0];
      if (!--v10)
      {
        return v11;
      }
    }
  }

  return v11;
}

uint64_t sub_22C2618B4@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v31 = a2;
  v3 = type metadata accessor for Session.Event(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22BE5CE4C(qword_27D915E28, &qword_22C2D1FA8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v30 - v12);
  v14 = *(a1 + 16);

  result = sub_22C261BF4(0, v14, a1);
  v16 = result;
  v17 = 0;
  v18 = *(result + 16);
  while (1)
  {
    if (v17 == v18)
    {
      v19 = sub_22BE5CE4C(&qword_27D9072E8, &qword_22C275210);
      sub_22BE19DC4(v10, 1, 1, v19);
      v17 = v18;
      goto LABEL_7;
    }

    if ((v17 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v17 >= *(v16 + 16))
    {
      goto LABEL_14;
    }

    v20 = sub_22BE5CE4C(&qword_27D9072E8, &qword_22C275210);
    sub_22BE2B984(v16 + ((*(*(v20 - 8) + 80) + 32) & ~*(*(v20 - 8) + 80)) + *(*(v20 - 8) + 72) * v17++, v10, &qword_27D9072E8, &qword_22C275210);
    sub_22BE19DC4(v10, 0, 1, v20);
LABEL_7:
    sub_22BE73F60(v10, v13, qword_27D915E28, &qword_22C2D1FA8);
    v21 = sub_22BE5CE4C(&qword_27D9072E8, &qword_22C275210);
    if (sub_22BE1AEA8(v13, 1, v21) == 1)
    {

      v24 = sub_22BE5CE4C(&qword_27D915E20, &qword_22C2D1FA0);
      v25 = v31;
      v26 = 1;
      return sub_22BE19DC4(v25, v26, 1, v24);
    }

    v22 = *(v21 + 48);
    v23 = *v13;
    sub_22C265EC8(v13 + v22, v6, type metadata accessor for Session.Event);
    if (sub_22C26E1B4())
    {

      v27 = sub_22BE5CE4C(&qword_27D915E20, &qword_22C2D1FA0);
      v28 = *(v27 + 48);
      v29 = v31;
      *v31 = v23;
      sub_22C265EC8(v6, v29 + v28, type metadata accessor for Session.Event);
      v25 = v29;
      v26 = 0;
      v24 = v27;
      return sub_22BE19DC4(v25, v26, 1, v24);
    }

    result = sub_22C26589C(v6, type metadata accessor for Session.Event);
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_22C261BF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22BE5CE4C(&qword_27D9072E8, &qword_22C275210);
  v26 = *(v6 - 8);
  v7 = *(v26 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v28 = &v25 - v11;
  v12 = sub_22C265AC8(a1, a2, a3);

  v14 = *(v12 + 16);
  if (v14 < 2)
  {
    return v12;
  }

  v15 = 0;
  v16 = v14 >> 1;
  v17 = v14 - 1;
  v25 = v14 >> 1;
  while (1)
  {
    if (v15 == v17)
    {
      goto LABEL_11;
    }

    v18 = *(v12 + 16);
    if (v15 >= v18)
    {
      break;
    }

    v19 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    v20 = v12 + v19;
    v21 = v12;
    v22 = *(v26 + 72);
    v27 = v22 * v15;
    result = sub_22BE2B984(v20 + v22 * v15, v28, &qword_27D9072E8, &qword_22C275210);
    if (v17 >= v18)
    {
      goto LABEL_14;
    }

    v23 = v22 * v17;
    sub_22BE2B984(v20 + v22 * v17, v9, &qword_27D9072E8, &qword_22C275210);
    v12 = v21;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C265544(v21);
      v12 = v24;
    }

    result = sub_22BFC390C(v9, v12 + v19 + v27, &qword_27D9072E8, &qword_22C275210);
    if (v17 >= *(v12 + 16))
    {
      goto LABEL_15;
    }

    result = sub_22BFC390C(v28, v12 + v19 + v23, &qword_27D9072E8, &qword_22C275210);
    v16 = v25;
LABEL_11:
    ++v15;
    --v17;
    if (v16 == v15)
    {
      return v12;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t ExpressionConverter.init(transcript:)()
{
  type metadata accessor for Session.Transcript(0);
  sub_22BE1A140();
  sub_22BE19DC4(v0, v1, v2, v3);
  v4 = sub_22BE19454();
  return sub_22BFC390C(v4, v5, v6, v7);
}

uint64_t ExpressionConverter.toExpression(from:)@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X8>)
{
  v286 = a2;
  v290 = a1;
  v3 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  v4 = sub_22BE19448(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v7);
  sub_22BE19E94();
  v262 = v8;
  v9 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  v10 = sub_22BE19448(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BE17B98();
  v278 = v13;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v14);
  sub_22BE19E94();
  v279 = v15;
  v16 = sub_22BE5CE4C(&qword_27D915DC8, &qword_22C2D1E88);
  v17 = sub_22BE19448(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v277 = &v252 - v20;
  v276 = type metadata accessor for AST.Update(0);
  v21 = sub_22BE18000(v276);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22BE179EC();
  sub_22BE18950(v25 - v24);
  v26 = sub_22C26E1D4();
  v27 = sub_22BE179D8(v26);
  v283 = v28;
  v284 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22BE17B98();
  v274 = v31;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v32);
  sub_22BE19490();
  v273 = v33;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v34);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v35);
  sub_22BE19490();
  v272 = v36;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v37);
  sub_22BE19490();
  v271 = v38;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v39);
  sub_22BE19490();
  v275 = v40;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v41);
  sub_22BE19E94();
  sub_22BE18950(v42);
  v43 = sub_22C26E684();
  v44 = sub_22BE179D8(v43);
  v281 = v45;
  v282 = v44;
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v44);
  sub_22BE17B98();
  v270 = v48;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v49);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v50);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v51);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v52);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v53);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v54);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v55);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v56);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v57);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v58);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v59);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v60);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v61);
  sub_22BE19E94();
  v63 = sub_22BE18950(v62);
  v280 = type metadata accessor for AST.FlatValue(v63);
  v64 = sub_22BE18000(v280);
  v66 = *(v65 + 64);
  MEMORY[0x28223BE20](v64);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v67);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v68);
  v70 = (&v252 - v69);
  MEMORY[0x28223BE20](v71);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v72);
  v74 = &v252 - v73;
  MEMORY[0x28223BE20](v75);
  v77 = &v252 - v76;
  MEMORY[0x28223BE20](v78);
  v80 = &v252 - v79;
  MEMORY[0x28223BE20](v81);
  v83 = &v252 - v82;
  MEMORY[0x28223BE20](v84);
  v86 = &v252 - v85;
  MEMORY[0x28223BE20](v87);
  v89 = &v252 - v88;
  v90 = type metadata accessor for AST.FlatExpr(0);
  v91 = sub_22BE18000(v90);
  v93 = *(v92 + 64);
  MEMORY[0x28223BE20](v91);
  sub_22BE179EC();
  v96 = (v95 - v94);
  sub_22C2658F4(v290, v95 - v94, type metadata accessor for AST.FlatExpr);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v158 = *v96;
      v159 = *(sub_22BE5CE4C(&qword_27D90A918, &qword_22C2D1EB0) + 48);
      sub_22BE1B55C();
      sub_22C265EC8(&v96[v160], v80, v161);
      v162 = v266;
      v163 = v287;
      AST.FlatValue.toStatementId.getter(v266);
      sub_22BE18FF8();
      result = sub_22C26589C(v80, v164);
      if (!v163)
      {
        v165 = v286;
        *v286 = v158;
        v166 = type metadata accessor for PrefixExpression(0);
        (*(v281 + 32))(&v165[*(v166 + 20)], v162, v282);
        type metadata accessor for Expression(0);
        sub_22BE1ACEC();
        return swift_storeEnumTagMultiPayload();
      }

      return result;
    case 2:
      v114 = *v96;
      v127 = sub_22BE5CE4C(&qword_27D90A910, &unk_22C288B20);
      v128 = *(v127 + 64);
      sub_22C265EC8(&v96[*(v127 + 48)], v77, type metadata accessor for AST.FlatValue);
      sub_22C265EC8(&v96[v128], v74, type metadata accessor for AST.FlatValue);
      AST.InfixOp.toInfixOp.getter(v114, &v288);
      v129 = v288;
      v130 = v267;
      v131 = v287;
      AST.FlatValue.toStatementId.getter(v267);
      if (v131)
      {
        goto LABEL_15;
      }

      v132 = v254;
      AST.FlatValue.toStatementId.getter(v254);
      sub_22BE17ED8();
      sub_22C26589C(v74, v239);
      sub_22C26589C(v77, v114);
      v240 = v286;
      *v286 = v129;
      v241 = type metadata accessor for InfixExpression(0);
      v242 = v282;
      v243 = *(v281 + 32);
      v243(&v240[*(v241 + 20)], v130, v282);
      v243(&v240[*(v241 + 24)], v132, v242);
      type metadata accessor for Expression(0);
      return swift_storeEnumTagMultiPayload();
    case 3:
      v143 = &v96[*(sub_22BE5CE4C(&qword_27D90A908, &unk_22C2D1EA0) + 48)];
      v145 = *v143;
      v144 = *(v143 + 1);
      sub_22BE1B55C();
      v146 = v96;
      v147 = v263;
      sub_22C265EC8(v146, v263, v148);
      v149 = v268;
      v150 = v287;
      AST.FlatValue.toStatementId.getter(v268);
      if (v150)
      {
        sub_22BE18FF8();
        v152 = v147;
        goto LABEL_41;
      }

      *v70 = v145;
      v70[1] = v144;
      swift_storeEnumTagMultiPayload();
      v117 = v255;
      v118 = v70;
      AST.FlatValue.toStatementId.getter(v255);
      sub_22BE17ED8();
      sub_22C26589C(v70, v244);
      sub_22C26589C(v147, v144);
      v236 = *(v281 + 32);
      v237 = sub_22BE2F2B0();
      v238 = v149;
      goto LABEL_55;
    case 4:
      v113 = *(sub_22BE5CE4C(&qword_27D90A900, &unk_22C288B10) + 48);
      v114 = type metadata accessor for AST.FlatValue;
      v77 = v265;
      sub_22C265EC8(v96, v265, type metadata accessor for AST.FlatValue);
      v74 = v264;
      sub_22C265EC8(&v96[v113], v264, type metadata accessor for AST.FlatValue);
      v115 = v269;
      v116 = v287;
      AST.FlatValue.toStatementId.getter(v269);
      if (v116)
      {
LABEL_15:
        sub_22BE17ED8();
        sub_22C26589C(v74, v133);
        v134 = v77;
        v135 = v114;
        return sub_22C26589C(v134, v135);
      }

      v117 = v256;
      v118 = v74;
      AST.FlatValue.toStatementId.getter(v256);
      sub_22BE17ED8();
      sub_22C26589C(v74, v235);
      sub_22C26589C(v77, type metadata accessor for AST.FlatValue);
      v236 = *(v281 + 32);
      v237 = sub_22BE2F2B0();
      v238 = v115;
LABEL_55:
      v245 = v282;
      v236(v237, v238, v282);
      v246 = type metadata accessor for IndexExpression(0);
      v236(v118 + *(v246 + 20), v117, v245);
      type metadata accessor for Expression(0);
      sub_22BE1ACEC();
      return swift_storeEnumTagMultiPayload();
    case 5:
      v167 = *v96;
      v168 = v277;
      sub_22BF2DE78(*v96);
      if (sub_22BE1AEA8(v168, 1, v276) == 1)
      {

        sub_22BE33928(v168, &qword_27D915DC8, &qword_22C2D1E88);
        type metadata accessor for ExpressionConverterError(0);
        sub_22C265188();
        sub_22BE23BA8();
        sub_22BE196B4();
        sub_22BE25A74();
        *v169 = 0xD000000000000030;
        v169[1] = v170;
        swift_storeEnumTagMultiPayload();
        return swift_willThrow();
      }

      v208 = v260;
      sub_22C265EC8(v168, v260, type metadata accessor for AST.Update);
      v209 = sub_22BE3B180(&v287);
      v211 = sub_22C263F98(v209, v210);
      if (!v2)
      {
        MEMORY[0x28223BE20](v211);
        sub_22BE3D560();
        *(v226 - 16) = v168;
        v248 = sub_22C261498(sub_22C26587C, v227, v167);
        sub_22BE193E8();
        sub_22C26589C(v208, v249);

        v250 = sub_22BE18780();
        v251(v250);
        *(v167 + *(type metadata accessor for UpdateParametersExpression(0) + 20)) = v248;
        type metadata accessor for Expression(0);
        sub_22BE23BA8();
        return swift_storeEnumTagMultiPayload();
      }

      sub_22BE193E8();
      v152 = v208;
LABEL_41:
      sub_22C26589C(v152, v151);

    case 6:
      v184 = *v96;
      v183 = *(v96 + 1);
      v185 = *(v96 + 2);
      MEMORY[0x28223BE20](EnumCaseMultiPayload);
      sub_22BE3D560();
      *(v186 - 16) = v285;
      v187 = v287;
      v189 = sub_22C265558(sub_22C265200, v188, v185);
      if (v187)
      {
      }

      v221 = v189;

      v222 = v286;
      *v286 = v184;
      *(v222 + 1) = v183;
      *(v222 + 2) = 0;
      *(v222 + 3) = 0;
      v222[32] = 0;
      *(v222 + 5) = v221;
      type metadata accessor for Expression(0);
      sub_22BE1ACEC();
      return swift_storeEnumTagMultiPayload();
    case 7:
      v153 = *v96;
      MEMORY[0x28223BE20](EnumCaseMultiPayload);
      sub_22BE3D560();
      *(v154 - 16) = v285;
      v155 = v287;
      v157 = sub_22C261698(sub_22C2651E0, v156, v153);
      if (v155)
      {
      }

      v220 = v157;

      *v286 = v220;
      type metadata accessor for Expression(0);
      sub_22BE23BA8();
      return swift_storeEnumTagMultiPayload();
    case 8:
      v194 = &v96[*(sub_22BE5CE4C(&qword_27D90A8F8, &unk_22C2D1E90) + 48)];
      v195 = *v194;
      v196 = v194[8];
      v197 = v283;
      v198 = v284;
      v199 = v275;
      (*(v283 + 32))(v275, v96, v284);
      if (v196)
      {
        type metadata accessor for ExpressionConverterError(0);
        sub_22C265188();
        sub_22BE23BA8();
        sub_22BE196B4();
        sub_22BE25A74();
        *v200 = 0xD000000000000017;
        v200[1] = v201;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        return (*(v197 + 8))(v199, v198);
      }

      v217 = v258;
      v218 = v285;
      v219 = v287;
      sub_22C263398(v199, v258);
      if (v219)
      {
        return (*(v197 + 8))(v199, v198);
      }

      (*(v197 + 8))(v199, v198);
      v232 = *(v281 + 32);
      v233 = sub_22BE2F2B0();
      v234(v233, v217);
      *(v218 + *(type metadata accessor for PickExpression(0) + 20)) = v195;
      type metadata accessor for Expression(0);
      sub_22BE1ACEC();
      return swift_storeEnumTagMultiPayload();
    case 9:
      sub_22BE23804();
      v119 = sub_22BE26ABC();
      v120(v119);
      v121 = sub_22BE3B180(&v291);
      sub_22C263398(v121, v122);
      if (!v2)
      {
        goto LABEL_12;
      }

      goto LABEL_18;
    case 10:
      v190 = *(v96 + 1);
      v191 = v96[16];
      v192 = v96[17];
      v193 = v286;
      *v286 = *v96;
      *(v193 + 1) = v190;
      v193[16] = v191;
      v193[17] = v192 & 1;
      v193[18] = 0;
      type metadata accessor for Expression(0);
      sub_22BE23BA8();
      return swift_storeEnumTagMultiPayload();
    case 11:
      sub_22BE23804();
      v109 = sub_22BE26ABC();
      v110(v109);
      v111 = sub_22BE3B180(&v292);
      sub_22C263398(v111, v112);
      if (!v2)
      {
        goto LABEL_12;
      }

      goto LABEL_18;
    case 12:
      ResolveToolExpression.init(toolIds:)(*v96);
      *v286 = v288;
      type metadata accessor for Expression(0);
      sub_22BE23BA8();
      return swift_storeEnumTagMultiPayload();
    case 13:
      v171 = v279;
      sub_22BE73F60(v96, v279, &qword_27D9082F0, &qword_22C27AB00);
      v172 = v278;
      sub_22BE2B984(v171, v278, &qword_27D9082F0, &qword_22C27AB00);
      v173 = v284;
      if (sub_22BE1AEA8(v172, 1, v284) == 1)
      {
        sub_22BE33928(v171, &qword_27D9082F0, &qword_22C27AB00);
        sub_22BE33928(v172, &qword_27D9082F0, &qword_22C27AB00);
        v174 = v261;
        sub_22BE1A140();
        v175 = v282;
        sub_22BE19DC4(v176, v177, v178, v282);
        v179 = v286;
        sub_22BE1A140();
        sub_22BE19DC4(v180, v181, v182, v175);
        sub_22BFC390C(v174, v179, &qword_27D907240, &unk_22C2B5B80);
        type metadata accessor for Expression(0);
        sub_22BE23BA8();
        return swift_storeEnumTagMultiPayload();
      }

      v212 = v283;
      v213 = v259;
      (*(v283 + 32))(v259, v172, v173);
      v214 = v262;
      v215 = v287;
      sub_22C263398(v213, v262);
      v216 = v286;
      if (v215)
      {
        (*(v212 + 8))(v213, v173);
        return sub_22BE33928(v171, &qword_27D9082F0, &qword_22C27AB00);
      }

      (*(v212 + 8))(v213, v173);
      sub_22BE33928(v171, &qword_27D9082F0, &qword_22C27AB00);
      v228 = v282;
      sub_22BE19DC4(v214, 0, 1, v282);
      sub_22BE1A140();
      sub_22BE19DC4(v229, v230, v231, v228);
      sub_22BFC390C(v214, v216, &qword_27D907240, &unk_22C2B5B80);
      type metadata accessor for Expression(0);
      sub_22BE23BA8();
      return swift_storeEnumTagMultiPayload();
    case 14:
      sub_22BE23804();
      v105 = sub_22BE26ABC();
      v106(v105);
      v107 = sub_22BE3B180(&v293);
      sub_22C263398(v107, v108);
      if (!v2)
      {
        goto LABEL_12;
      }

      goto LABEL_18;
    case 15:
      sub_22BE23804();
      v137 = v274;
      v138 = sub_22BE26ABC();
      v139(v138);
      v140 = v287;
      sub_22C264844(v137, v270);
      if (!v140)
      {
LABEL_12:
        v123 = sub_22BE3845C();
        v124(v123);
        v125 = sub_22BE18780();
        v126(v125);
        type metadata accessor for Expression(0);
        sub_22BE23BA8();
        return swift_storeEnumTagMultiPayload();
      }

LABEL_18:
      v141 = sub_22BE3845C();
      return v142(v141);
    case 16:
    case 17:
    case 18:
    case 19:
      type metadata accessor for Expression(0);
      sub_22BE22D94();
      return swift_storeEnumTagMultiPayload();
    default:
      sub_22BE1B55C();
      sub_22C265EC8(v96, v89, v98);
      sub_22BE1C0F4();
      sub_22C2658F4(v89, v86, v99);
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        sub_22BE18FF8();
        sub_22C26589C(v89, v100);
        v101 = v282;
        v102 = *(v281 + 32);
        v103 = v257;
        v102(v257, v86, v282);
        v104 = sub_22BE2F2B0();
        v102(v104, v103, v101);
        type metadata accessor for Expression(0);
        sub_22BE1ACEC();
        return swift_storeEnumTagMultiPayload();
      }

      sub_22BE18FF8();
      sub_22C26589C(v86, v202);
      sub_22BE1C0F4();
      sub_22C2658F4(v89, v83, v203);
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        sub_22C26589C(v83, type metadata accessor for AST.FlatValue);
        v223 = v287;
        AST.FlatValue.toValueExpression.getter(&v288);
        result = sub_22C26589C(v89, type metadata accessor for AST.FlatValue);
        if (v223)
        {
          return result;
        }

        v224 = v289;
        v225 = v286;
        *v286 = v288;
        v225[16] = v224;
        type metadata accessor for Expression(0);
        sub_22BE23BA8();
        return swift_storeEnumTagMultiPayload();
      }

      v204 = v283;
      v205 = v284;
      v206 = v253;
      (*(v283 + 32))(v253, v83, v284);
      v207 = v287;
      sub_22C263398(v206, v286);
      if (!v207)
      {
        (*(v204 + 8))(v206, v205);
        sub_22BE18FF8();
        sub_22C26589C(v89, v247);
        type metadata accessor for Expression(0);
        return swift_storeEnumTagMultiPayload();
      }

      (*(v204 + 8))(v206, v205);
      sub_22BE18FF8();
      v134 = v89;
      return sub_22C26589C(v134, v135);
  }
}

uint64_t sub_22C263398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v41 = a1;
  v39 = type metadata accessor for Session.Event.Payload(0);
  v3 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v40 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for StatementResult(0);
  v5 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v37 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22BE5CE4C(&qword_27D915DC0, &qword_22C2D1E80);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v36 - v9;
  v11 = sub_22BE5CE4C(&qword_27D915E10, &qword_22C2D1F90);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = (&v36 - v13);
  v15 = sub_22BE5CE4C(&qword_27D915E18, &qword_22C2D1F98);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v36 - v17;
  v19 = type metadata accessor for Session.Event(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE2B984(v2, v10, &qword_27D915DC0, &qword_22C2D1E80);
  v23 = type metadata accessor for Session.Transcript(0);
  if (sub_22BE1AEA8(v10, 1, v23) == 1)
  {
    sub_22BE33928(v10, &qword_27D915DC0, &qword_22C2D1E80);
    v24 = v41;
LABEL_5:
    type metadata accessor for ExpressionConverterError(0);
    sub_22C265188();
    swift_allocError();
    v28 = v27;
    v29 = sub_22C26E1D4();
    (*(*(v29 - 8) + 16))(v28, v24, v29);
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v25 = *&v10[*(v23 + 32)];

  sub_22C26589C(v10, type metadata accessor for Session.Transcript);
  v24 = v41;
  sub_22C2618B4(v25, v14);

  v26 = sub_22BE5CE4C(&qword_27D915E20, &qword_22C2D1FA0);
  if (sub_22BE1AEA8(v14, 1, v26) == 1)
  {
    sub_22BE33928(v14, &qword_27D915E10, &qword_22C2D1F90);
    goto LABEL_5;
  }

  sub_22C265EC8(v14 + *(v26 + 48), &v18[*(v15 + 48)], type metadata accessor for Session.Event);
  sub_22C265EC8(&v18[*(v15 + 48)], v22, type metadata accessor for Session.Event);
  v31 = v40;
  sub_22C2658F4(&v22[*(v19 + 28)], v40, type metadata accessor for Session.Event.Payload);
  if (swift_getEnumCaseMultiPayload() == 21)
  {
    sub_22C26589C(v22, type metadata accessor for Session.Event);
    v32 = v37;
    sub_22C265EC8(v31, v37, type metadata accessor for StatementResult);
    v33 = *(v36 + 28);
    v34 = sub_22C26E684();
    (*(*(v34 - 8) + 16))(v38, v32 + v33, v34);
    return sub_22C26589C(v32, type metadata accessor for StatementResult);
  }

  else
  {
    sub_22C26589C(v31, type metadata accessor for Session.Event.Payload);
    type metadata accessor for ExpressionConverterError(0);
    sub_22C265188();
    swift_allocError();
    *v35 = 0xD000000000000027;
    v35[1] = 0x800000022C2DC170;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return sub_22C26589C(v22, type metadata accessor for Session.Event);
  }
}

void AST.FlatValue.toValueExpression.getter(uint64_t a1@<X8>)
{
  v4 = v1;
  v6 = sub_22C26E684();
  v7 = sub_22BE179D8(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE179EC();
  v14 = v13 - v12;
  v15 = type metadata accessor for AST.FlatValue(0);
  v16 = sub_22BE179D8(v15);
  v62 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BE195A8();
  MEMORY[0x28223BE20](v20);
  sub_22BE19490();
  v59 = v21;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v22);
  v24 = (&v52 - v23);
  sub_22BE1C0F4();
  sub_22C2658F4(v4, v24, v25);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      *a1 = *v24;
      *(a1 + 8) = 0;
      v42 = 1;
      goto LABEL_20;
    case 2u:
      *a1 = *v24;
      *(a1 + 8) = 0;
      v42 = 2;
      goto LABEL_20;
    case 3u:
      v43 = v24[1];
      *a1 = *v24;
      *(a1 + 8) = v43;
      v42 = 3;
      goto LABEL_20;
    case 4u:
      v30 = *v24;
      v31 = *(*v24 + 16);
      if (v31)
      {
        v57 = v14;
        v53 = a1;
        v54 = v2;
        v66 = MEMORY[0x277D84F90];
        v61 = v31;
        sub_22BE71084();
        v32 = 0;
        v63 = v66;
        v60 = v30 + ((*(v62 + 80) + 32) & ~*(v62 + 80));
        v58 = v9;
        v33 = (v9 + 32);
        v34 = v59;
        v55 = v30;
        v56 = v15;
        do
        {
          if (v32 >= *(v30 + 16))
          {
            __break(1u);
            return;
          }

          sub_22C2658F4(v60 + *(v62 + 72) * v32, v34, type metadata accessor for AST.FlatValue);
          sub_22C2658F4(v34, v3, type metadata accessor for AST.FlatValue);
          if (swift_getEnumCaseMultiPayload() != 7)
          {

            sub_22BE17ED8();
            sub_22C26589C(v3, v46);
            type metadata accessor for ExpressionConverterError(0);
            sub_22C265188();
            sub_22BE196B4();
            v48 = v47;
            v64 = 0;
            v65 = 0xE000000000000000;
            sub_22C273AA4();

            sub_22BE25A74();
            v64 = 0xD000000000000018;
            v65 = v49;
            AST.FlatValue.description.getter();
            MEMORY[0x2318AB8D0]();

            v50 = v65;
            *v48 = v64;
            v48[1] = v50;
            swift_storeEnumTagMultiPayload();
            swift_willThrow();
            sub_22C26589C(v34, type metadata accessor for AST.FlatValue);

            return;
          }

          sub_22BE18FF8();
          sub_22C26589C(v34, v35);
          v36 = *v33;
          v37 = v57;
          (*v33)(v57, v3, v6);
          v38 = v63;
          v66 = v63;
          v39 = v6;
          v40 = *(v63 + 16);
          if (v40 >= *(v63 + 24) >> 1)
          {
            sub_22BE71084();
            v34 = v59;
            v38 = v66;
          }

          ++v32;
          *(v38 + 16) = v40 + 1;
          v41 = (*(v58 + 80) + 32) & ~*(v58 + 80);
          v63 = v38;
          v36(v38 + v41 + *(v58 + 72) * v40, v37, v39);
          v6 = v39;
          v30 = v55;
        }

        while (v61 != v32);

        a1 = v53;
        v51 = v63;
      }

      else
      {
        v45 = *v24;

        v51 = MEMORY[0x277D84F90];
      }

      *a1 = v51;
      *(a1 + 8) = 0;
      v42 = 4;
LABEL_20:
      *(a1 + 16) = v42;
      return;
    case 5u:
    case 7u:
    case 8u:
      sub_22BE18FF8();
      sub_22C26589C(v24, v26);
      type metadata accessor for ExpressionConverterError(0);
      sub_22C265188();
      sub_22BE23BA8();
      sub_22BE196B4();
      v28 = v27;
      v64 = 0;
      v65 = 0xE000000000000000;
      sub_22C273AA4();

      v64 = 0x2065707954;
      v65 = 0xE500000000000000;
      AST.FlatValue.description.getter();
      MEMORY[0x2318AB8D0]();

      MEMORY[0x2318AB8D0](0xD000000000000027, 0x800000022C2DC090);
      v29 = v65;
      *v28 = v64;
      v28[1] = v29;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return;
    case 6u:
      v44 = v24[1];
      *a1 = *v24;
      *(a1 + 8) = v44;
      v42 = 5;
      goto LABEL_20;
    case 9u:
      *a1 = 0;
      *(a1 + 8) = 0;
      v42 = 6;
      goto LABEL_20;
    default:
      *a1 = *v24;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      return;
  }
}

uint64_t AST.FlatValue.toStatementId.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AST.FlatValue(0);
  v5 = sub_22BE18000(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE179EC();
  v10 = v9 - v8;
  sub_22BE1C0F4();
  sub_22C2658F4(v2, v10, v11);
  if (swift_getEnumCaseMultiPayload() == 7)
  {
    v12 = sub_22C26E684();
    sub_22BE18000(v12);
    return (*(v13 + 32))(a1, v10);
  }

  else
  {
    sub_22BE18FF8();
    sub_22C26589C(v10, v15);
    type metadata accessor for ExpressionConverterError(0);
    sub_22C265188();
    sub_22BE196B4();
    v17 = v16;
    sub_22C273AA4();

    sub_22BE25A74();
    v19 = v18;
    AST.FlatValue.description.getter();
    MEMORY[0x2318AB8D0]();

    *v17 = 0xD000000000000018;
    v17[1] = v19;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

uint64_t sub_22C263F98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22C26E1D4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AST.FlatValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C2658F4(a1, v12, type metadata accessor for AST.FlatValue);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 8)
  {
    (*(v5 + 32))(v8, v12, v4);
    sub_22C264844(v8, a2);
    return (*(v5 + 8))(v8, v4);
  }

  else if (EnumCaseMultiPayload == 7)
  {
    v14 = sub_22C26E684();
    return (*(*(v14 - 8) + 32))(a2, v12, v14);
  }

  else
  {
    type metadata accessor for ExpressionConverterError(0);
    sub_22C265188();
    swift_allocError();
    *v16 = 0xD000000000000025;
    v16[1] = 0x800000022C2DC140;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return sub_22C26589C(v12, type metadata accessor for AST.FlatValue);
  }
}

uint64_t sub_22C2641F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  v36 = a2;
  v34 = a3;
  v4 = sub_22C26E684();
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22BE5CE4C(&qword_27D915E08, &unk_22C2D1F80);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v32 - v10;
  v12 = type metadata accessor for AST.FlatValue(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v18 = &v32 - v17;
  v19 = type metadata accessor for AST.Update(0);
  v20 = *(a1 + v19[5]);
  if (*(v20 + 16) != 1)
  {
    goto LABEL_4;
  }

  sub_22BF2DEA4(v20);
  if (sub_22BE1AEA8(v11, 1, v12) == 1)
  {
    sub_22BE33928(v11, &qword_27D915E08, &unk_22C2D1F80);
LABEL_4:
    type metadata accessor for ExpressionConverterError(0);
    sub_22C265188();
    v21 = swift_allocError();
    *v22 = 0xD000000000000026;
    v22[1] = 0x800000022C2DC0E0;
    swift_storeEnumTagMultiPayload();
    result = swift_willThrow();
    goto LABEL_5;
  }

  sub_22C265EC8(v11, v18, type metadata accessor for AST.FlatValue);
  sub_22C2658F4(v18, v15, type metadata accessor for AST.FlatValue);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v25 = *v15;
    v24 = v15[1];
    v26 = v19[7];
    v27 = *(a1 + v19[6]);
    v28 = v35;
    sub_22C263F98(a1 + v26, v7);
    v21 = v28;
    sub_22C26589C(v18, type metadata accessor for AST.FlatValue);
    if (!v28)
    {
      v30 = v34;
      *v34 = v25;
      v30[1] = v24;
      v30[2] = 0;
      *(v30 + 24) = 1;
      *(v30 + 25) = v27;
      updated = type metadata accessor for UpdateParametersExpression.UpdateParameter(0);
      return (*(v33 + 32))(v30 + *(updated + 28), v7, v4);
    }
  }

  else
  {
    sub_22C26589C(v15, type metadata accessor for AST.FlatValue);
    type metadata accessor for ExpressionConverterError(0);
    sub_22C265188();
    v21 = swift_allocError();
    *v29 = 0xD000000000000029;
    v29[1] = 0x800000022C2DC110;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    result = sub_22C26589C(v18, type metadata accessor for AST.FlatValue);
  }

LABEL_5:
  *v36 = v21;
  return result;
}

uint64_t sub_22C2645B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22C26E1D4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AST.FlatValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C2658F4(a1, v12, type metadata accessor for AST.FlatValue);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 8)
  {
    (*(v5 + 32))(v8, v12, v4);
    sub_22C264844(v8, a2);
    return (*(v5 + 8))(v8, v4);
  }

  else if (EnumCaseMultiPayload == 7)
  {
    v14 = sub_22C26E684();
    return (*(*(v14 - 8) + 32))(a2, v12, v14);
  }

  else
  {
    type metadata accessor for ExpressionConverterError(0);
    sub_22C265188();
    swift_allocError();
    *v16 = 0xD000000000000025;
    v16[1] = 0x800000022C2DC140;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return sub_22C26589C(v12, type metadata accessor for AST.FlatValue);
  }
}

uint64_t sub_22C264810@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  result = sub_22C263398(a1, a3);
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

uint64_t sub_22C264844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v73 = a1;
  v74 = type metadata accessor for Expression(0);
  v2 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74);
  v4 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22BE5CE4C(&qword_27D90A8A0, &unk_22C2D1FB0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v66 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v67 = &v63 - v9;
  v75 = type metadata accessor for ProgramStatement(0);
  v10 = *(v75 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v75);
  v68 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v63 - v14;
  MEMORY[0x28223BE20](v16);
  v64 = &v63 - v17;
  v69 = type metadata accessor for Session.Event.Payload(0);
  v18 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v70 = (&v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = sub_22BE5CE4C(&qword_27D915DC0, &qword_22C2D1E80);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v63 - v22;
  v24 = sub_22BE5CE4C(&qword_27D915E10, &qword_22C2D1F90);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = (&v63 - v26);
  v28 = sub_22BE5CE4C(&qword_27D915E18, &qword_22C2D1F98);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v31 = &v63 - v30;
  v32 = type metadata accessor for Session.Event(0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v71 = &v63 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE2B984(v72, v23, &qword_27D915DC0, &qword_22C2D1E80);
  v35 = type metadata accessor for Session.Transcript(0);
  if (sub_22BE1AEA8(v23, 1, v35) == 1)
  {
    sub_22BE33928(v23, &qword_27D915DC0, &qword_22C2D1E80);
    v36 = v73;
LABEL_17:
    type metadata accessor for ExpressionConverterError(0);
    sub_22C265188();
    swift_allocError();
    v56 = v55;
    v57 = sub_22C26E1D4();
    (*(*(v57 - 8) + 16))(v56, v36, v57);
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v37 = *&v23[*(v35 + 32)];

  sub_22C26589C(v23, type metadata accessor for Session.Transcript);
  v36 = v73;
  sub_22C2618B4(v37, v27);

  v38 = sub_22BE5CE4C(&qword_27D915E20, &qword_22C2D1FA0);
  if (sub_22BE1AEA8(v27, 1, v38) == 1)
  {
    sub_22BE33928(v27, &qword_27D915E10, &qword_22C2D1F90);
    goto LABEL_17;
  }

  sub_22C265EC8(v27 + *(v38 + 48), &v31[*(v28 + 48)], type metadata accessor for Session.Event);
  v39 = &v31[*(v28 + 48)];
  v40 = v71;
  sub_22C265EC8(v39, v71, type metadata accessor for Session.Event);
  v41 = v70;
  sub_22C2658F4(v40 + *(v32 + 28), v70, type metadata accessor for Session.Event.Payload);
  result = swift_getEnumCaseMultiPayload();
  if (result != 4)
  {
    sub_22C26589C(v40, type metadata accessor for Session.Event);
    sub_22C26589C(v41, type metadata accessor for Session.Event.Payload);
    goto LABEL_17;
  }

  v43 = 0;
  v72 = v41[1];
  v44 = v41[4];
  v45 = v41[6];
  v69 = v41[3];
  v70 = v45;
  v46 = *(v44 + 16);
  v73 = MEMORY[0x277D84F90];
  while (v46 != v43)
  {
    if (v43 >= *(v44 + 16))
    {
      __break(1u);
      return result;
    }

    v47 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v48 = *(v10 + 72);
    sub_22C2658F4(v44 + v47 + v48 * v43, v15, type metadata accessor for ProgramStatement);
    sub_22C2658F4(&v15[*(v75 + 20)], v4, type metadata accessor for Expression);
    v49 = swift_getEnumCaseMultiPayload() - 5;
    sub_22C26589C(v4, type metadata accessor for Expression);
    if (v49 < 2)
    {
      sub_22C265EC8(v15, v68, type metadata accessor for ProgramStatement);
      v50 = v73;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v76 = v50;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v52 = *(v50 + 16);
        sub_22BE710CC();
        v50 = v76;
      }

      v53 = *(v50 + 16);
      v54 = v53 + 1;
      if (v53 >= *(v50 + 24) >> 1)
      {
        v73 = v53 + 1;
        v63 = v53;
        sub_22BE710CC();
        v54 = v73;
        v53 = v63;
        v50 = v76;
      }

      ++v43;
      *(v50 + 16) = v54;
      v73 = v50;
      result = sub_22C265EC8(v68, v50 + v47 + v53 * v48, type metadata accessor for ProgramStatement);
    }

    else
    {
      result = sub_22C26589C(v15, type metadata accessor for ProgramStatement);
      ++v43;
    }
  }

  v58 = v67;
  sub_22BE9586C(v73, v67);

  v59 = v66;
  sub_22BE2B984(v58, v66, &qword_27D90A8A0, &unk_22C2D1FB0);
  if (sub_22BE1AEA8(v59, 1, v75) == 1)
  {
    sub_22BE33928(v59, &qword_27D90A8A0, &unk_22C2D1FB0);
    sub_22BF103C8();
    swift_allocError();
    *v60 = 0xD000000000000080;
    *(v60 + 8) = 0x800000022C2DC1A0;
    *(v60 + 16) = xmmword_22C2D1E70;
    *(v60 + 32) = 0x800000022C2DC230;
    swift_willThrow();
    sub_22BE33928(v58, &qword_27D90A8A0, &unk_22C2D1FB0);
    return sub_22C26589C(v71, type metadata accessor for Session.Event);
  }

  else
  {
    sub_22BE33928(v58, &qword_27D90A8A0, &unk_22C2D1FB0);
    sub_22C26589C(v71, type metadata accessor for Session.Event);
    v61 = v64;
    sub_22C265EC8(v59, v64, type metadata accessor for ProgramStatement);
    v62 = sub_22C26E684();
    (*(*(v62 - 8) + 16))(v65, v61, v62);
    return sub_22C26589C(v61, type metadata accessor for ProgramStatement);
  }
}

unint64_t sub_22C265188()
{
  result = qword_27D915DD0;
  if (!qword_27D915DD0)
  {
    type metadata accessor for ExpressionConverterError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915DD0);
  }

  return result;
}

uint64_t sub_22C26521C(uint64_t a1, uint64_t a2)
{
  v43 = sub_22C26E1D4();
  v5 = sub_22BE179D8(v43);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE179EC();
  v12 = v11 - v10;
  v13 = type metadata accessor for ExpressionConverterError(0);
  v14 = sub_22BE18000(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BE195A8();
  MEMORY[0x28223BE20](v17);
  v19 = (&v42 - v18);
  v20 = sub_22BE5CE4C(&qword_27D915E00, &qword_22C2D1F78);
  v21 = sub_22BE19448(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v42 - v24;
  v27 = (&v42 + *(v26 + 56) - v24);
  sub_22C2658F4(a1, &v42 - v24, type metadata accessor for ExpressionConverterError);
  sub_22C2658F4(a2, v27, type metadata accessor for ExpressionConverterError);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v33 = sub_22BE1C424();
    sub_22C2658F4(v33, v19, v34);
    v36 = *v19;
    v35 = v19[1];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      if (v36 == *v27 && v35 == v27[1])
      {
        v40 = v27[1];
      }

      else
      {
        v38 = v27[1];
        v39 = sub_22C274014();

        if ((v39 & 1) == 0)
        {
          sub_22BE23274();
          goto LABEL_8;
        }
      }

      sub_22BE23274();
      v31 = 1;
      return v31 & 1;
    }

LABEL_7:
    sub_22BE33928(v25, &qword_27D915E00, &qword_22C2D1F78);
LABEL_8:
    v31 = 0;
    return v31 & 1;
  }

  v28 = sub_22BE1C424();
  sub_22C2658F4(v28, v2, v29);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v7 + 8))(v2, v43);
    goto LABEL_7;
  }

  v30 = v43;
  (*(v7 + 32))(v12, v27, v43);
  v31 = sub_22C26E1B4();
  v32 = *(v7 + 8);
  v32(v12, v30);
  v32(v2, v30);
  sub_22BE23274();
  return v31 & 1;
}

uint64_t sub_22C265558(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v40 = a1;
  v41 = a2;
  v38 = sub_22C26E684();
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v38);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AST.FlatValue(0);
  v39 = *(v8 - 8);
  v9 = *(v39 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE5CE4C(&qword_27D9155B8, &unk_22C2CC7B0);
  result = sub_22C273D04();
  v13 = 0;
  v42 = a3;
  v43 = result;
  v16 = *(a3 + 64);
  v15 = a3 + 64;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v36 = result + 64;
  v37 = v4;
  v35 = v4 + 32;
  if (v19)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v19));
      v44 = (v19 - 1) & v19;
LABEL_10:
      v24 = v21 | (v13 << 6);
      v25 = (*(v42 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      sub_22C2658F4(*(v42 + 56) + *(v39 + 72) * v24, v11, type metadata accessor for AST.FlatValue);

      v28 = v45;
      v40(v11);
      v45 = v28;
      if (v28)
      {
        break;
      }

      v29 = v11;
      sub_22C26589C(v11, type metadata accessor for AST.FlatValue);
      *(v36 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      v30 = v43;
      v31 = (*(v43 + 48) + 16 * v24);
      *v31 = v26;
      v31[1] = v27;
      result = (*(v37 + 32))(*(v30 + 56) + *(v37 + 72) * v24, v7, v38);
      v32 = *(v30 + 16);
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_17;
      }

      *(v30 + 16) = v34;
      v11 = v29;
      v19 = v44;
      if (!v44)
      {
        goto LABEL_5;
      }
    }

    sub_22C26589C(v11, type metadata accessor for AST.FlatValue);
    return v43;
  }

  else
  {
LABEL_5:
    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v20)
      {
        return v43;
      }

      v23 = *(v15 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v44 = (v23 - 1) & v23;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_22C26589C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22BE18000(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22C2658F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_22BE18000(v4);
  v6 = *(v5 + 16);
  v7 = sub_22BE19454();
  v8(v7);
  return a2;
}

void sub_22C265998()
{
  sub_22C265A04();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_22C265A04()
{
  if (!qword_27D915DE8)
  {
    type metadata accessor for Session.Transcript(255);
    v0 = sub_22C273844();
    if (!v1)
    {
      atomic_store(v0, &qword_27D915DE8);
    }
  }
}

uint64_t sub_22C265A5C()
{
  result = sub_22C26E1D4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

size_t sub_22C265AC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48 = sub_22BE5CE4C(&qword_27D915E18, &qword_22C2D1F98);
  v6 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v47 = &v44 - v7;
  v50 = sub_22BE5CE4C(&qword_27D9072E8, &qword_22C275210);
  v8 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v46 = (&v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v51 = v12;
  v52 = &v44 - v11;
  v13 = 0;
  v14 = 0;
  v44 = *(v12 + 80);
  result = MEMORY[0x277D84F90];
  v45 = (v44 + 32) & ~v44;
  v16 = MEMORY[0x277D84F90] + v45;
  v49 = a1 - a2;
  while (v49 + v14)
  {
    if (a2 < a1)
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if ((a1 + v14) >= a2)
    {
      goto LABEL_36;
    }

    v17 = *(a3 + 16);
    if (v14 == v17)
    {
      break;
    }

    if (v14 >= v17)
    {
      goto LABEL_37;
    }

    v53 = result;
    v18 = *(type metadata accessor for Session.Event(0) - 8);
    v19 = a3;
    v20 = a3 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v14;
    v21 = v47;
    v22 = *(v48 + 48);
    sub_22C2658F4(v20, &v47[v22], type metadata accessor for Session.Event);
    v23 = *(v50 + 48);
    v24 = v46;
    *v46 = a1 + v14;
    sub_22C265EC8(&v21[v22], v24 + v23, type metadata accessor for Session.Event);
    result = sub_22BE73F60(v24, v52, &qword_27D9072E8, &qword_22C275210);
    if (v13)
    {
      v25 = v53;
      a3 = v19;
    }

    else
    {
      v26 = v53[3];
      if (((v26 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_39;
      }

      v27 = a1;
      v28 = v26 & 0xFFFFFFFFFFFFFFFELL;
      if (v28 <= 1)
      {
        v29 = 1;
      }

      else
      {
        v29 = v28;
      }

      sub_22BE5CE4C(&qword_27D90A7F8, &unk_22C2880B0);
      v30 = *(v51 + 72);
      v31 = v45;
      v25 = swift_allocObject();
      result = j__malloc_size(v25);
      if (!v30)
      {
        goto LABEL_40;
      }

      v32 = result - v31;
      if (result - v31 == 0x8000000000000000 && v30 == -1)
      {
        goto LABEL_41;
      }

      v34 = v32 / v30;
      v25[2] = v29;
      v25[3] = 2 * (v32 / v30);
      v35 = v25 + v31;
      v36 = v53;
      v37 = v53[3];
      v38 = (v37 >> 1) * v30;
      if (v53[2])
      {
        if (v25 < v53 || v35 >= v53 + v45 + v38)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v25 != v53)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v36[2] = 0;
      }

      v16 = &v35[v38];
      v13 = (v34 & 0x7FFFFFFFFFFFFFFFLL) - (v37 >> 1);

      a3 = v19;
      a1 = v27;
    }

    v40 = __OFSUB__(v13--, 1);
    if (v40)
    {
      goto LABEL_38;
    }

    sub_22BE73F60(v52, v16, &qword_27D9072E8, &qword_22C275210);
    v16 += *(v51 + 72);
    ++v14;
    result = v25;
  }

  v41 = *(result + 24);
  if (v41 < 2)
  {
    return result;
  }

  v42 = v41 >> 1;
  v40 = __OFSUB__(v42, v13);
  v43 = v42 - v13;
  if (!v40)
  {
    *(result + 16) = v43;
    return result;
  }

LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_22C265EC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_22BE18000(v4);
  v6 = *(v5 + 32);
  v7 = sub_22BE19454();
  v8(v7);
  return a2;
}

uint64_t HashablePair.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for HashablePair();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 52), a2, a4);
}

uint64_t static HashablePair.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a5 + 8);
  if (sub_22C272FD4())
  {
    v8 = *(type metadata accessor for HashablePair() + 52);
    v9 = *(a6 + 8);
    v10 = sub_22C272FD4();
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t HashablePair.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  sub_22C272EE4();
  v6 = *(a2 + 24);
  v7 = *(a2 + 40);
  v8 = v2 + *(a2 + 52);
  return sub_22C272EE4();
}

uint64_t HashablePair.hashValue.getter(uint64_t a1)
{
  sub_22C274154();
  HashablePair.hash(into:)(v3, a1);
  return sub_22C2741A4();
}

uint64_t sub_22C266190(uint64_t a1, uint64_t a2)
{
  sub_22C274154();
  HashablePair.hash(into:)(v4, a2);
  return sub_22C2741A4();
}

uint64_t sub_22C266208(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22C266294(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= v6)
  {
    v11 = *(*(v5 - 8) + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(v5 - 8) + 64) + v10;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
LABEL_25:
    if (v6 < v9)
    {
      a1 = ((a1 + v12) & ~v10);
      v6 = *(v8 + 84);
      v5 = v7;
    }

    return sub_22BE1AEA8(a1, v6, v5);
  }

  v14 = (v12 & ~v10) + *(*(v7 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_24;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v11 + (v20 | v18) + 1;
}

void sub_22C26645C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = *(*(v7 - 8) + 84);
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = (v14 & ~v13) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  v17 = a3 >= v12;
  v18 = a3 - v12;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v22 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v12 >= a2)
  {
    switch(v19)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v9 < v11)
          {
            a1 = (&a1[v14] & ~v13);
            v9 = v11;
            v7 = v8;
          }

          sub_22BE19DC4(a1, a2, v9, v7);
        }

        break;
    }
  }

  else
  {
    v20 = ~v12 + a2;
    if (v15 < 4)
    {
      v21 = (v20 >> v16) + 1;
      if (v15)
      {
        v24 = v20 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *v6 = v24;
          v6[2] = BYTE2(v24);
        }

        else if (v15 == 2)
        {
          *v6 = v24;
        }

        else
        {
          *v6 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *v6 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        v6[v15] = v21;
        break;
      case 2:
        *&v6[v15] = v21;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&v6[v15] = v21;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_22C2666F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_22C26674C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(v4 - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_23;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_23;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 > 3)
          {
            LODWORD(v7) = 4;
          }

          switch(v7)
          {
            case 2:
              LODWORD(v7) = *a1;
              break;
            case 3:
              LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              LODWORD(v7) = *a1;
              break;
            default:
              LODWORD(v7) = *a1;
              break;
          }
        }

        return v6 + (v7 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_23:
  if (v5 < 2)
  {
    return 0;
  }

  v14 = sub_22BE1AEA8(a1, v5, v4);
  if (v14 >= 2)
  {
    return v14 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_22C2668C4(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = *(v8 + 64);
  }

  else
  {
    v11 = *(v8 + 64) + 1;
  }

  v12 = 8 * v11;
  v13 = a3 >= v10;
  v14 = a3 - v10;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v15 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v15))
      {
        v6 = 4;
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
          v6 = v16;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v10 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v9 >= 2)
          {
            v20 = a2 + 1;

            sub_22BE19DC4(a1, v20, v9, v7);
          }
        }

        break;
    }
  }

  else
  {
    v17 = ~v10 + a2;
    if (v11 < 4)
    {
      v18 = (v17 >> v12) + 1;
      if (v11)
      {
        v19 = v17 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v11 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v17;
      v18 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v11] = v18;
        break;
      case 2:
        *&a1[v11] = v18;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v18;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_22C266B34(uint64_t a1)
{
  v1 = *(a1 + 24);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_22C26E164();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22C266BBC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_22C26E164();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v9 + 80);
  if (!a2)
  {
    return 0;
  }

  v13 = v8;
  v14 = *(v6 + 64) + v12;
  if (a2 <= v11)
  {
LABEL_25:
    if (v7 >= v10)
    {
      v22 = a1;
      v10 = v7;
      v13 = v5;
    }

    else
    {
      v22 = (a1 + v14) & ~v12;
    }

    return sub_22BE1AEA8(v22, v10, v13);
  }

  v15 = (v14 & ~v12) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v18 = ((a2 - v11 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v18))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v18 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v18 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_24;
  }

LABEL_14:
  v19 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v19 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v20 = v15;
    }

    else
    {
      v20 = 4;
    }

    switch(v20)
    {
      case 2:
        v21 = *a1;
        break;
      case 3:
        v21 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v21 = *a1;
        break;
      default:
        v21 = *a1;
        break;
    }
  }

  else
  {
    v21 = 0;
  }

  return v11 + (v21 | v19) + 1;
}

void sub_22C266DDC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = sub_22C26E164();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12 <= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  v14 = *(v11 + 80);
  v15 = *(v8 + 64) + v14;
  v16 = (v15 & ~v14) + *(*(v10 - 8) + 64);
  v17 = 8 * v16;
  if (a3 <= v13)
  {
    v18 = 0;
  }

  else if (v16 <= 3)
  {
    v21 = ((a3 - v13 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v13 >= a2)
  {
    switch(v18)
    {
      case 1:
        a1[v16] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v16] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v16] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v9 >= v12)
          {
            v24 = a1;
            v25 = a2;
            v12 = v9;
            v10 = v7;
          }

          else
          {
            v24 = &a1[v15] & ~v14;
            v25 = a2;
          }

          sub_22BE19DC4(v24, v25, v12, v10);
        }

        break;
    }
  }

  else
  {
    v19 = ~v13 + a2;
    if (v16 < 4)
    {
      v20 = (v19 >> v17) + 1;
      if (v16)
      {
        v23 = v19 & ~(-1 << v17);
        bzero(a1, v16);
        if (v16 == 3)
        {
          *a1 = v23;
          a1[2] = BYTE2(v23);
        }

        else if (v16 == 2)
        {
          *a1 = v23;
        }

        else
        {
          *a1 = v19;
        }
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v19;
      v20 = 1;
    }

    switch(v18)
    {
      case 1:
        a1[v16] = v20;
        break;
      case 2:
        *&a1[v16] = v20;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v16] = v20;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_22C26709C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t Optional.if_unwrap(file:line:function:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v28 = a4;
  v27 = a3;
  sub_22BE17C68();
  v13 = v12;
  v15 = *(v14 + 64);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v19, v21, v20, v17);
  v22 = *(a6 + 16);
  if (sub_22BE1AEA8(v19, 1, v22) != 1)
  {
    return (*(*(v22 - 8) + 32))(a7, v19, v22);
  }

  (*(v13 + 8))(v19, a6);
  sub_22BF103C8();
  swift_allocError();
  *v23 = a1;
  v23[1] = a2;
  v24 = v28;
  v23[2] = v27;
  v23[3] = v24;
  v23[4] = a5;
  swift_willThrow();
}

void __swiftcall UnwrappedNilError.init(file:line:function:)(IntelligenceFlowPlannerSupport::UnwrappedNilError *__return_ptr retstr, Swift::String file, Swift::Int line, Swift::String function)
{
  retstr->file = file;
  retstr->line = line;
  retstr->function = function;
}

uint64_t Optional.asyncMap<A>(_:)()
{
  sub_22BE183F0();
  v3 = v2;
  v1[6] = v4;
  v1[7] = v0;
  v1[4] = v5;
  v1[5] = v2;
  v1[2] = v6;
  v1[3] = v7;
  sub_22BE17C68();
  v1[8] = v8;
  v10 = *(v9 + 64);
  v1[9] = sub_22BE25184();
  v1[10] = *(v3 + 16);
  sub_22BE17C68();
  v1[11] = v11;
  v13 = *(v12 + 64);
  v1[12] = sub_22BE25184();
  sub_22BE201FC();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_22C26739C()
{
  v3 = sub_22BE1A83C();
  v4(v3);
  if (sub_22BE1AEA8(v0, 1, v1) == 1)
  {
    v5 = v2[12];
    v6 = v2[6];
    v7 = v2[2];
    (*(v2[8] + 8))(v2[9], v2[5]);
    sub_22BE19DC4(v7, 1, 1, v6);

    sub_22BE1A26C();

    return v8();
  }

  else
  {
    v10 = sub_22BE1B574();
    v11(v10);
    sub_22BE19020();
    v16 = v12;
    v13 = *(v1 + 4);
    v14 = swift_task_alloc();
    v2[13] = v14;
    *v14 = v2;
    v15 = sub_22BE18798(v14);

    return v16(v15);
  }
}

uint64_t sub_22C267514()
{
  sub_22BE183F0();
  v2 = *v1;
  sub_22BE19230();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  sub_22BE19230();
  *v8 = v7;
  *(v9 + 112) = v0;

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22C267618()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[2];
  (*(v0[11] + 8))(v0[12], v0[10]);
  sub_22BE19DC4(v3, 0, 1, v2);

  sub_22BE1A26C();

  return v4();
}

uint64_t Optional.asyncFlatMap<A>(_:)()
{
  sub_22BE183F0();
  v3 = v2;
  v1[6] = v4;
  v1[7] = v0;
  v1[4] = v5;
  v1[5] = v2;
  v1[2] = v6;
  v1[3] = v7;
  sub_22BE17C68();
  v1[8] = v8;
  v10 = *(v9 + 64);
  v1[9] = sub_22BE25184();
  v1[10] = *(v3 + 16);
  sub_22BE17C68();
  v1[11] = v11;
  v13 = *(v12 + 64);
  v1[12] = sub_22BE25184();
  sub_22BE201FC();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_22C2677B0()
{
  v3 = sub_22BE1A83C();
  v4(v3);
  if (sub_22BE1AEA8(v0, 1, v1) == 1)
  {
    v5 = v2[6];
    v6 = v2[2];
    (*(v2[8] + 8))(v2[9], v2[5]);
    sub_22BE19DC4(v6, 1, 1, v5);
    v7 = v2[12];
    v8 = v2[9];

    sub_22BE1A26C();

    return v9();
  }

  else
  {
    v11 = sub_22BE1B574();
    v12(v11);
    sub_22BE19020();
    v17 = v13;
    v14 = *(v1 + 4);
    v15 = swift_task_alloc();
    v2[13] = v15;
    *v15 = v2;
    v16 = sub_22BE18798(v15);

    return v17(v16);
  }
}

uint64_t sub_22C267918()
{
  sub_22BE183F0();
  v2 = *v1;
  sub_22BE19230();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  sub_22BE19230();
  *v8 = v7;
  *(v9 + 112) = v0;

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22C267A1C()
{
  sub_22BE183F0();
  (*(v0[11] + 8))(v0[12], v0[10]);
  v1 = v0[12];
  v2 = v0[9];

  sub_22BE1A26C();

  return v3();
}

uint64_t sub_22C267A98()
{
  sub_22BE183F0();
  v1 = v0[9];
  (*(v0[11] + 8))(v0[12], v0[10]);

  v2 = v0[1];
  v3 = v0[14];

  return v2();
}

unint64_t UnwrappedNilError.description.getter()
{
  v1 = v0;
  sub_22C273AA4();

  MEMORY[0x2318AB8D0](*v1, v1[1]);
  MEMORY[0x2318AB8D0](0x203A656E696C20, 0xE700000000000000);
  v4 = v0[2];
  v2 = sub_22C273FD4();
  MEMORY[0x2318AB8D0](v2);

  MEMORY[0x2318AB8D0](0x6F6974636E756620, 0xEB00000000203A6ELL);
  MEMORY[0x2318AB8D0](v1[3], v1[4]);
  MEMORY[0x2318AB8D0](41, 0xE100000000000000);
  return 0xD000000000000012;
}

uint64_t Peekable.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for Peekable() + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_22BE19DC4(a3 + v6, 1, 1, AssociatedTypeWitness);
  v8 = *(*(a2 - 8) + 32);

  return v8(a3, a1, a2);
}

uint64_t Peekable.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_22C273844();
  v9 = sub_22BE179D8(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v9);
  v16 = &v19 - v15;
  v17 = *(a1 + 36);
  (*(v11 + 16))(&v19 - v15, v2 + v17, v8, v14);
  if (sub_22BE1AEA8(v16, 1, AssociatedTypeWitness) == 1)
  {
    (*(v11 + 8))(v16, v8);
    return sub_22C2738F4();
  }

  else
  {
    (*(*(AssociatedTypeWitness - 8) + 32))(a2, v16, AssociatedTypeWitness);
    (*(v11 + 8))(v2 + v17, v8);
    sub_22BE19DC4(v2 + v17, 1, 1, AssociatedTypeWitness);
    return sub_22BE19DC4(a2, 0, 1, AssociatedTypeWitness);
  }
}

uint64_t Peekable.peek()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = *(a1 + 16);
  v22 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_22C273844();
  v7 = sub_22BE179D8(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v22 - v16;
  v18 = *(a1 + 36);
  v19 = *(v9 + 16);
  v19(&v22 - v16, v2 + v18, v6, v15);
  if (sub_22BE1AEA8(v17, 1, AssociatedTypeWitness) == 1)
  {
    (*(v9 + 8))(v17, v6);
    sub_22C2738F4();
    (*(v9 + 40))(v2 + v18, v13, v6);
    return (v19)(v23, v2 + v18, v6);
  }

  else
  {
    v21 = v23;
    (*(*(AssociatedTypeWitness - 8) + 32))(v23, v17, AssociatedTypeWitness);
    return sub_22BE19DC4(v21, 0, 1, AssociatedTypeWitness);
  }
}

uint64_t sub_22C2680C4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    swift_getAssociatedTypeWitness();
    v3 = sub_22C273844();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v3;
}

uint64_t sub_22C268178(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v9 + 80);
  if (v10)
  {
    v14 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v14 = *(*(AssociatedTypeWitness - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = *(v6 + 64) + v13;
  if (a2 <= v12)
  {
    goto LABEL_31;
  }

  v16 = v14 + (v15 & ~v13);
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v19 = ((a2 - v12 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v19))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_30;
      }

      goto LABEL_20;
    }

    if (v19 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_30;
      }

      goto LABEL_20;
    }

    if (v19 < 2)
    {
LABEL_30:
      if (v12)
      {
LABEL_31:
        if (v7 >= v11)
        {

          return sub_22BE1AEA8(a1, v7, v5);
        }

        else
        {
          v23 = sub_22BE1AEA8((a1 + v15) & ~v13, v10, AssociatedTypeWitness);
          if (v23 >= 2)
          {
            return v23 - 1;
          }

          else
          {
            return 0;
          }
        }
      }

      return 0;
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_30;
  }

LABEL_20:
  v20 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v20 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v21 = v16;
    }

    else
    {
      v21 = 4;
    }

    switch(v21)
    {
      case 2:
        v22 = *a1;
        break;
      case 3:
        v22 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v22 = *a1;
        break;
      default:
        v22 = *a1;
        break;
    }
  }

  else
  {
    v22 = 0;
  }

  return v12 + (v22 | v20) + 1;
}

void sub_22C2683CC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = 0;
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 84);
  v14 = v13 - 1;
  if (!v13)
  {
    v14 = 0;
  }

  if (v14 <= v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v12 + 80);
  v17 = *(v8 + 64) + v16;
  v18 = v17 & ~v16;
  if (v13)
  {
    v19 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v19 = *(*(AssociatedTypeWitness - 8) + 64) + 1;
  }

  v20 = v18 + v19;
  v21 = 8 * (v18 + v19);
  if (a3 > v15)
  {
    if (v20 <= 3)
    {
      v22 = ((a3 - v15 + ~(-1 << v21)) >> v21) + 1;
      if (HIWORD(v22))
      {
        v11 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v11 = v23;
        }

        else
        {
          v11 = 0;
        }
      }
    }

    else
    {
      v11 = 1;
    }
  }

  if (v15 >= a2)
  {
    switch(v11)
    {
      case 1:
        a1[v20] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        return;
      case 2:
        *&a1[v20] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        return;
      case 3:
LABEL_60:
        __break(1u);
        return;
      case 4:
        *&a1[v20] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (!a2)
        {
          return;
        }

LABEL_32:
        if (v9 >= v14)
        {
          v31 = a1;
          v32 = a2;
          v13 = v9;
          AssociatedTypeWitness = v7;
        }

        else
        {
          v27 = (&a1[v17] & ~v16);
          if (v14 < a2)
          {
            if (v19 <= 3)
            {
              v28 = ~(-1 << (8 * v19));
            }

            else
            {
              v28 = -1;
            }

            if (v19)
            {
              v29 = v28 & (~v14 + a2);
              if (v19 <= 3)
              {
                v30 = v19;
              }

              else
              {
                v30 = 4;
              }

              bzero(v27, v19);
              switch(v30)
              {
                case 2:
                  *v27 = v29;
                  break;
                case 3:
                  *v27 = v29;
                  v27[2] = BYTE2(v29);
                  break;
                case 4:
                  *v27 = v29;
                  break;
                default:
                  *v27 = v29;
                  break;
              }
            }

            return;
          }

          v32 = (a2 + 1);
          v31 = v27;
        }

        sub_22BE19DC4(v31, v32, v13, AssociatedTypeWitness);
        break;
    }
  }

  else
  {
    v24 = ~v15 + a2;
    if (v20 < 4)
    {
      v25 = (v24 >> v21) + 1;
      if (v20)
      {
        v26 = v24 & ~(-1 << v21);
        bzero(a1, v20);
        if (v20 == 3)
        {
          *a1 = v26;
          a1[2] = BYTE2(v26);
        }

        else if (v20 == 2)
        {
          *a1 = v26;
        }

        else
        {
          *a1 = v24;
        }
      }
    }

    else
    {
      bzero(a1, v20);
      *a1 = v24;
      v25 = 1;
    }

    switch(v11)
    {
      case 1:
        a1[v20] = v25;
        break;
      case 2:
        *&a1[v20] = v25;
        break;
      case 3:
        goto LABEL_60;
      case 4:
        *&a1[v20] = v25;
        break;
      default:
        return;
    }
  }
}

uint64_t Result<>.asyncMap<A>(_:)()
{
  sub_22BE183F0();
  sub_22BE1C10C(v1, v2, v3, v4, v5);
  v0[9] = v6;
  v8 = *(v7 + 64);
  v9 = sub_22BE25184();
  sub_22BE19400(v9);
  v0[11] = v10;
  v12 = *(v11 + 64);
  v0[12] = sub_22BE25184();
  v13 = sub_22BE17D50();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_22C2687F4()
{
  v2 = sub_22BE18B98();
  v3(v2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(*(v1[5] + 24) - 8) + 32))(v1[2], v1[12], *(v1[5] + 24));
    v4 = v1[12];
    v5 = v1[10];
    v6 = v1[6];
    v7 = v1[2];
    v8 = *(v1[5] + 32);
    sub_22C2741F4();
    swift_storeEnumTagMultiPayload();

    sub_22BE17A94();

    return v9();
  }

  else
  {
    v11 = sub_22BE1B588();
    v12(v11);
    sub_22BE19020();
    v13 = *(v0 + 4);
    v14 = swift_task_alloc();
    v1[13] = v14;
    *v14 = v1;
    v15 = sub_22BE1A854(v14);

    return v16(v15);
  }
}

uint64_t sub_22C268998()
{
  sub_22BE183F0();
  v1 = *(*v0 + 104);
  v6 = *v0;

  v2 = sub_22BE17D50();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_22C268A88()
{
  v1 = v0[5];
  (*(v0[9] + 8))(v0[10], v0[8]);
  v2 = *(v1 + 24);
  v3 = v0[12];
  v4 = v0[10];
  v5 = v0[6];
  v6 = v0[2];
  v7 = *(v0[5] + 32);
  sub_22C2741F4();
  swift_storeEnumTagMultiPayload();

  sub_22BE17A94();

  return v8();
}

uint64_t Result<>.asyncFlatMap<A>(_:)()
{
  sub_22BE183F0();
  sub_22BE1C10C(v1, v2, v3, v4, v5);
  v0[9] = v6;
  v8 = *(v7 + 64);
  v9 = sub_22BE25184();
  sub_22BE19400(v9);
  v0[11] = v10;
  v12 = *(v11 + 64);
  v0[12] = sub_22BE25184();
  v13 = sub_22BE17D50();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_22C268C10()
{
  v2 = sub_22BE18B98();
  v3(v2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = v1[5];
    v4 = v1[6];
    (*(*(*(v5 + 24) - 8) + 32))(v1[2], v1[12], *(v5 + 24));
    v6 = *(v5 + 32);
    sub_22C2741F4();
    swift_storeEnumTagMultiPayload();
    v7 = v1[12];
    v8 = v1[10];

    sub_22BE17A94();

    return v9();
  }

  else
  {
    v11 = sub_22BE1B588();
    v12(v11);
    sub_22BE19020();
    v13 = *(v0 + 4);
    v14 = swift_task_alloc();
    v1[13] = v14;
    *v14 = v1;
    v15 = sub_22BE1A854(v14);

    return v16(v15);
  }
}

uint64_t sub_22C268DB0()
{
  sub_22BE183F0();
  v1 = *(*v0 + 104);
  v6 = *v0;

  v2 = sub_22BE17D50();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_22C268EA0()
{
  sub_22BE183F0();
  (*(v0[9] + 8))(v0[10], v0[8]);
  v1 = v0[12];
  v2 = v0[10];

  sub_22BE17A94();

  return v3();
}

BOOL Sequence.any(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE19414(a1, a2);
  v8 = sub_22BE1A450(v4, v5, v6, v7);
  sub_22BE17C68();
  v38[1] = v9;
  v11 = *(v10 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  v13 = *(*(sub_22BE1B59C() - 8) + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  v16 = v38 - v15;
  sub_22BE17C68();
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22BE17CBC();
  sub_22BE1BBE0();
  sub_22BE17C68();
  v38[2] = v20;
  v22 = *(v21 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v23);
  v24 = sub_22BE18BB4();
  v25(v24);
  sub_22BE1A870();
  sub_22C269CE4();
  swift_getAssociatedConformanceWitness();
  sub_22BE2329C();
  do
  {
    sub_22BE3846C();
    v26 = sub_22BE1AEA8(v16, 1, v8);
    if (v26 == 1)
    {
      break;
    }

    v27 = sub_22BE3E704();
    v28(v27);
    v29 = (v38[3])(v3);
    if (v2)
    {
      v33 = sub_22BE17EF0();
      v34(v33);
      break;
    }

    v30 = v29;
    v31 = sub_22BE17EF0();
    v32(v31);
  }

  while ((v30 & 1) == 0);
  v35 = sub_22BE3B198();
  v36(v35);
  return v26 != 1;
}

BOOL Sequence.all(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE19414(a1, a2);
  v8 = sub_22BE1A450(v4, v5, v6, v7);
  sub_22BE17C68();
  v38[1] = v9;
  v11 = *(v10 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  v13 = *(*(sub_22BE1B59C() - 8) + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  v16 = v38 - v15;
  sub_22BE17C68();
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22BE17CBC();
  sub_22BE1BBE0();
  sub_22BE17C68();
  v38[2] = v20;
  v22 = *(v21 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v23);
  v24 = sub_22BE18BB4();
  v25(v24);
  sub_22BE1A870();
  sub_22C269CE4();
  swift_getAssociatedConformanceWitness();
  sub_22BE2329C();
  do
  {
    sub_22BE3846C();
    v26 = sub_22BE1AEA8(v16, 1, v8);
    if (v26 == 1)
    {
      break;
    }

    v27 = sub_22BE3E704();
    v28(v27);
    v29 = (v38[3])(v3);
    if (v2)
    {
      v33 = sub_22BE17EF0();
      v34(v33);
      break;
    }

    v30 = v29;
    v31 = sub_22BE17EF0();
    v32(v31);
  }

  while ((v30 & 1) != 0);
  v35 = sub_22BE3B198();
  v36(v35);
  return v26 == 1;
}

uint64_t Sequence.lazyCartesianProduct<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = a1;
  sub_22BE17C68();
  v10 = v9;
  v34 = *(v11 + 64);
  MEMORY[0x28223BE20](v12);
  v32 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C273AC4();
  sub_22BE17C68();
  v36 = v14;
  v37 = v15;
  v17 = *(v16 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  v30[0] = v30 - v19;
  swift_getAssociatedTypeWitness();
  v31 = a5;
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_22C273BF4();
  sub_22C273BF4();
  swift_getWitnessTable();
  v30[1] = swift_getWitnessTable();
  sub_22C273BE4();
  swift_getWitnessTable();
  v20 = *(*(sub_22C273AC4() - 8) + 64);
  sub_22BE179FC();
  v22 = MEMORY[0x28223BE20](v21);
  MEMORY[0x2318ABA30](a2, a4, v22);
  v23 = v32;
  (*(v10 + 16))(v32, v35, a3);
  v24 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v25 = swift_allocObject();
  *(v25 + 2) = a2;
  *(v25 + 3) = a3;
  v26 = v31;
  *(v25 + 4) = a4;
  *(v25 + 5) = v26;
  (*(v10 + 32))(&v25[v24], v23, a3);
  v27 = v36;
  swift_getWitnessTable();
  v28 = v30[0];
  sub_22C273D94();

  (*(v37 + 8))(v28, v27);
  swift_getWitnessTable();
  return sub_22C273A14();
}

uint64_t sub_22C269780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v24 = a2;
  v25 = a4;
  v23 = a1;
  v26 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = &v23 - v11;
  v13 = sub_22C273AC4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v23 - v17;
  MEMORY[0x2318ABA30](a3, a5, v16);
  (*(v9 + 16))(v12, v23, AssociatedTypeWitness);
  v19 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v20 = swift_allocObject();
  v21 = v25;
  *(v20 + 2) = v24;
  *(v20 + 3) = a3;
  *(v20 + 4) = v21;
  *(v20 + 5) = a5;
  (*(v9 + 32))(&v20[v19], v12, AssociatedTypeWitness);
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  swift_getWitnessTable();
  sub_22C273D74();

  return (*(v14 + 8))(v18, v13);
}

uint64_t sub_22C269A4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = swift_getAssociatedTypeWitness();
  v8 = *(swift_getTupleTypeMetadata2() + 48);
  (*(*(AssociatedTypeWitness - 8) + 16))(a3, a2, AssociatedTypeWitness);
  v9 = *(*(v7 - 8) + 16);

  return v9(a3 + v8, a1, v7);
}

uint64_t sub_22C269C08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_22C269A4C(a1, v10, a2);
}

uint64_t sub_22C269CE4()
{
  result = v0;
  *(v2 - 72) = v1;
  return result;
}

uint64_t sub_22C269CF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v12 = MEMORY[0x277D84F90];
    sub_22BE7127C(0, v1, 0);
    v2 = v12;
    v4 = (a1 + 40);
    do
    {
      v9 = *(v4 - 1);
      v10 = *v4;

      sub_22BE5CE4C(&qword_27D907310, &unk_22C275250);
      swift_dynamicCast();
      v5 = v11;
      v7 = *(v12 + 16);
      v6 = *(v12 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_22BE7127C(v6 > 1, v7 + 1, 1);
        v5 = v11;
      }

      *(v12 + 16) = v7 + 1;
      *(v12 + 16 * v7 + 32) = v5;
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

BOOL sub_22C269E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_22C274154();
  sub_22C272F44();
  v7 = sub_22C2741A4();
  v8 = ~(-1 << *(a3 + 32));
  do
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(a3 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    v12 = (*(a3 + 48) + 16 * v9);
    if (*v12 == a1 && v12[1] == a2)
    {
      break;
    }

    v14 = sub_22C274014();
    v7 = v9 + 1;
  }

  while ((v14 & 1) == 0);
  return v11;
}

uint64_t sub_22C269EFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C272CA4();
  v5 = sub_22BE179D8(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE1C440();
  if (!v8)
  {
    return 0;
  }

  v9 = *(a2 + 40);
  sub_22BE3B1AC();
  sub_22C26D0EC(v10, v11);
  sub_22BE2B960();
  sub_22BE1A470();
  do
  {
    sub_22BE1BC00(v12);
    if (!v13)
    {
      break;
    }

    v14 = sub_22BE3848C();
    v15(v14);
    sub_22BE3B1AC();
    sub_22C26D0EC(&qword_28106DED8, v16);
    sub_22BE1A0CC();
    v17 = sub_22BE3747C();
    v18(v17);
    v12 = a2 + 1;
  }

  while ((v9 & 1) == 0);
  return v2;
}

BOOL sub_22C26A03C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_22C274154();
  sub_22C272F44();
  v7 = sub_22C2741A4();
  v8 = ~(-1 << *(a3 + 32));
  do
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(a3 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    v12 = (*(a3 + 48) + 16 * v9);
    if (*v12 == a1 && v12[1] == a2)
    {
      break;
    }

    v14 = sub_22C274014();
    v7 = v9 + 1;
  }

  while ((v14 & 1) == 0);
  return v11;
}

uint64_t sub_22C26A128(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v5 = *(a2 + 40);
    v6 = sub_22C274144();
    v7 = ~(-1 << *(a2 + 32));
    do
    {
      v8 = v6 & v7;
      v9 = (1 << (v6 & v7)) & *(a2 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
      v2 = v9 != 0;
      if (!v9)
      {
        break;
      }

      v6 = v8 + 1;
    }

    while (*(*(a2 + 48) + 8 * v8) != a1);
  }

  return v2;
}

uint64_t sub_22C26A1B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C26E1D4();
  v5 = sub_22BE179D8(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE1C440();
  if (!v8)
  {
    return 0;
  }

  v9 = *(a2 + 40);
  sub_22BE232B0();
  sub_22C26D0EC(v10, v11);
  sub_22BE2B960();
  sub_22BE1A470();
  do
  {
    sub_22BE1BC00(v12);
    if (!v13)
    {
      break;
    }

    v14 = sub_22BE3848C();
    v15(v14);
    sub_22BE232B0();
    sub_22C26D0EC(&qword_27D9071C8, v16);
    sub_22BE1A0CC();
    v17 = sub_22BE3747C();
    v18(v17);
    v12 = a2 + 1;
  }

  while ((v9 & 1) == 0);
  return v2;
}

uint64_t String.quotedForPython.getter()
{
  v0 = String.escapedForPython.getter();
  MEMORY[0x2318AB8D0](v0);

  MEMORY[0x2318AB8D0](34, 0xE100000000000000);

  return 34;
}

uint64_t String.quoted.getter()
{

  while (1)
  {
    v0 = sub_22C273204();
    if (!v1)
    {
      break;
    }

    v2 = v0;
    v3 = v1;
    v4 = v0 == 34 && v1 == 0xE100000000000000;
    if (v4 || (sub_22C274014() & 1) != 0)
    {
      MEMORY[0x2318AB8D0](92, 0xE100000000000000);
    }

    MEMORY[0x2318AB8C0](v2, v3);
  }

  MEMORY[0x2318AB8D0](34, 0xE100000000000000);
  return 34;
}

unint64_t String.toCamelCase.getter(unint64_t a1, unint64_t a2)
{

  v5 = sub_22C26BA9C(0x7FFFFFFFFFFFFFFFLL, 1u, a1, a2, v4);
  v6 = v5;
  v7 = v5[2];
  if (!v7)
  {

    return 0;
  }

  v8 = v5[4];
  v9 = v5[5];
  v11 = v5[6];
  v10 = v5[7];
  swift_bridgeObjectRetain_n();
  sub_22BE6413C(1, v8, v9);
  sub_22C2732B4();
  v12 = sub_22C272EF4();

  v36 = v12;

  v13 = sub_22C273864();
  v14 = __OFSUB__(v13, 1);
  result = v13 - 1;
  if (!v14)
  {
    sub_22C26C6B0(result, v8, v9, v11, v10);
    v16 = sub_22C2732B4();
    MEMORY[0x2318AB8D0](v16);

    sub_22C26AA08(1, v7, v6);
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v23 = (v22 >> 1) - v20;
    if (v22 >> 1 == v20)
    {
LABEL_16:

      swift_unknownObjectRelease();
      return v36;
    }

    if ((v22 >> 1) <= v20)
    {
      goto LABEL_23;
    }

    v24 = (v18 + 32 * v20 + 16);
    while (1)
    {
      v25 = *(v24 - 2);
      v26 = *(v24 - 1);
      v28 = *v24;
      v27 = v24[1];
      swift_bridgeObjectRetain_n();
      result = sub_22C273854();
      v30 = (v29 & 1) != 0 ? v26 : result;
      if (v30 >> 14 < v25 >> 14)
      {
        break;
      }

      sub_22BE3E718();
      sub_22C273874();

      sub_22C2732B4();
      v31 = sub_22C2730A4();
      v33 = v32;

      MEMORY[0x2318AB8D0](v31, v33);

      sub_22BE3E718();
      result = sub_22C273864();
      if (__OFSUB__(result, 1))
      {
        goto LABEL_19;
      }

      if (((result - 1) & 0x8000000000000000) != 0)
      {
        goto LABEL_20;
      }

      result = sub_22C26CE30(v26, 1 - result, v25, v28, v27);
      if (v34)
      {
        result = v25;
      }

      if (v26 >> 14 < result >> 14)
      {
        goto LABEL_21;
      }

      sub_22BE3E718();
      sub_22C273874();

      v35 = sub_22C2732B4();
      MEMORY[0x2318AB8D0](v35);

      v24 += 4;
      if (!--v23)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t String.unescapedForPython.getter()
{
  sub_22BE699D0();
  sub_22BE17F00();
  sub_22C273924();
  v2 = v1;
  sub_22BE19054();
  sub_22BE1942C();
  v4 = &v4;
  v5 = v0;
  sub_22BE19054();
  sub_22C26D138();
  v4 = &v4;
  v5 = v2;
  sub_22BE19054();
  sub_22BE1942C();
  v4 = &v4;
  v5 = v0;
  sub_22BE19054();
  sub_22C26D138();
  v4 = &v4;
  v5 = v2;
  sub_22BE19054();
  sub_22BE1942C();
  v4 = &v4;
  v5 = v0;
  sub_22BE19054();
  sub_22C26D138();
  v4 = &v4;
  v5 = v2;
  sub_22BE19054();
  sub_22BE1942C();
  v4 = &v4;
  v5 = v0;
  sub_22BE19054();
  sub_22BE3D554();

  return sub_22BE19454();
}

void sub_22C26A8C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_22BE26ACC(a1, a2, a3);
  if (v6)
  {
    v7 = v5 < v4;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v8 = *(*(sub_22BE5CE4C(&qword_27D9073B0, &unk_22C275320) - 8) + 80);
    sub_22BE25134();
    return;
  }

LABEL_10:
  __break(1u);
}

void sub_22C26A978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_22BE26ACC(a1, a2, a3);
  if (v7)
  {
    v8 = v6 < v4;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v9 = *(*(v5(0) - 8) + 80);
    sub_22BE25134();
    return;
  }

LABEL_10:
  __break(1u);
}

void sub_22C26AA08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_22BE26ACC(a1, a2, a3);
  if (v5)
  {
    v6 = v4 < v3;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    goto LABEL_9;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {

    return;
  }

LABEL_10:
  __break(1u);
}

uint64_t sub_22C26AA6C(uint64_t a1, unint64_t a2)
{

  v4 = sub_22BE5E230(1uLL, a1, a2);
  v6 = v5;
  v7 = sub_22C2738B4();
  if (v7)
  {
    v8 = v7;
    v16 = sub_22C26CDB4(v7, 0);
    v9 = v8 & ~(v8 >> 63);

    v10 = 4;
    while (v9)
    {
      if ((v4 ^ v6) < 0x4000)
      {
        goto LABEL_10;
      }

      v11 = &v16[v10];
      v12 = sub_22C2738C4();
      v17 = v13;
      v4 = sub_22C273884();
      *v11 = v12;
      v11[1] = v17;
      v10 += 2;
      --v9;
      if (!--v8)
      {

        v14 = v16;
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_10:

    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
LABEL_8:

    sub_22C269CF8(v14);

    sub_22BE6E3B0(&unk_283F8B3C8);

    return a1;
  }

  return result;
}

uint64_t sub_22C26AC14()
{
  v0 = sub_22C26DC94();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE952A4(v3, qword_27D915F30);
  sub_22BE199F4(v0, qword_27D915F30);
  sub_22C26DC54();
  sub_22C26DC84();
  return (*(v1 + 8))(v5, v0);
}

void *sub_22C26ACFC()
{
  result = sub_22BF398EC(0xD00000000000003ELL, 0x800000022C2DC270);
  off_28106DE20 = result;
  return result;
}

uint64_t sub_22C26AD34(int a1, uint64_t a2, unint64_t a3)
{
  v101 = a1;
  v104 = sub_22C274264();
  v5 = sub_22BE179D8(v104);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v103 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C26DC94();
  v12 = sub_22BE179D8(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v12);
  v95 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v96 = &v95 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v95 - v21;
  v23 = swift_allocObject();
  v100 = v23;
  *(v23 + 16) = MEMORY[0x277D84F90];
  v24 = (v23 + 16);
  v25 = sub_22C273174();
  sub_22C26B5DC(v25);
  v107 = a2;
  v108 = a3;
  sub_22C26DC64();
  sub_22BE699D0();
  sub_22C273914();
  sub_22BE2F120();
  v26 = *(v14 + 8);
  v99 = v11;
  v98 = v14 + 8;
  v97 = v26;
  v26(v22, v11);
  v27 = sub_22C26AA6C(&v107, a3);
  v29 = v28;
  v31 = v30;

  v32 = HIBYTE(v29) & 0xF;
  v107 = v27;
  v108 = v29;
  if ((v29 & 0x2000000000000000) == 0)
  {
    v32 = v27 & 0xFFFFFFFFFFFFLL;
  }

  v109 = 0;
  v110 = v32;
  v111 = v31;
  v112 = 0;
  v106 = v24;
  swift_beginAccess();
  v33 = 0;
  v102 = v7 + 8;
  v105 = v31;
  v34 = (v31 + 40);
  for (i = 1; ; ++i)
  {
    result = sub_22C273204();
    if (!v37)
    {
      goto LABEL_73;
    }

    v38 = v37;
    v39 = *(v105 + 16);
    if (i - 1 == v39)
    {

LABEL_73:
      v113 = 1;

      v89 = sub_22BE957F8(*v106);
      if (v90)
      {
        if (v89 == 95 && v90 == 0xE100000000000000)
        {
        }

        else
        {
          v92 = sub_22C274014();

          if ((v92 & 1) == 0)
          {
            goto LABEL_82;
          }
        }

        swift_beginAccess();
        sub_22C191398();
        swift_endAccess();
      }

LABEL_82:
      v107 = *(v100 + 16);

      v93 = sub_22BE19454();
      sub_22BE5CE4C(v93, v94);
      sub_22BEF8A28(&qword_28106DC10, &qword_27D915F48, &qword_22C2D2250);
      sub_22C2732C4();
      sub_22BE3D554();

      return sub_22BE19454();
    }

    if (i - 1 >= v39)
    {
      break;
    }

    v40 = result;
    v41 = *(v34 - 1);
    v42 = *v34;
    v112 = i;
    v43 = qword_28106DE18;

    if (v43 != -1)
    {
      sub_22BE1B5C0();
      swift_once();
    }

    v44 = off_28106DE20;
    v45 = sub_22BE1A6BC();
    if (sub_22C26A03C(v45, v46, v44))
    {
LABEL_10:
      sub_22BE1A6BC();
      if (sub_22C272F34())
      {
        v47 = sub_22BE1A6BC();
        result = sub_22C26CA68(v47, v48);
        if ((result & 0x100000000) != 0)
        {
          goto LABEL_86;
        }

        v49 = v103;
        sub_22C274274();
        v43 = v49;
        sub_22C274244();
        sub_22BE187B0();
        v50(v49, v104);
        if (v49)
        {
          goto LABEL_19;
        }
      }

      sub_22BE1A6BC();
      if (sub_22C272F24())
      {
        sub_22BE1A6BC();
        if (sub_22C272F34())
        {
          v51 = sub_22BE1A6BC();
          result = sub_22C26CA68(v51, v52);
          if ((result & 0x100000000) != 0)
          {
            goto LABEL_88;
          }

          v53 = v103;
          sub_22C274274();
          v43 = v53;
          sub_22C274254();
          sub_22BE187B0();
          v54(v53, v104);
          if (v53)
          {
            goto LABEL_19;
          }
        }

        sub_22BE1A6BC();
        if ((sub_22C272F24() & 1) == 0 || (sub_22BE1A6BC(), (sub_22C272F14() & 1) == 0))
        {
LABEL_19:
          if ((v33 & 1) == 0)
          {
            goto LABEL_32;
          }

          if (!v42)
          {
            goto LABEL_50;
          }

          v55 = sub_22BE236C8();
          if (sub_22C26A03C(v55, v56, v44))
          {
LABEL_22:
            sub_22BE236C8();
            if ((sub_22C272F34() & 1) == 0)
            {
              goto LABEL_25;
            }

            v57 = sub_22BE236C8();
            result = sub_22C26CA68(v57, v58);
            if ((result & 0x100000000) != 0)
            {
              goto LABEL_89;
            }

            v59 = v103;
            sub_22C274274();
            v43 = v59;
            sub_22C274244();
            sub_22BE187B0();
            v60(v59, v104);
            if ((v59 & 1) == 0)
            {
LABEL_25:
              sub_22BE236C8();
              if (sub_22C272F24())
              {
                sub_22BE236C8();
                v43 = sub_22C272F64();

                if (v43)
                {
LABEL_50:
                  sub_22BE1A6BC();
                  sub_22C272EF4();
                  sub_22BE2F120();
                  swift_beginAccess();
                  sub_22BE6E248(v43, v41);
LABEL_51:
                  result = swift_endAccess();
                  goto LABEL_52;
                }

LABEL_33:
                sub_22C26B640(v100);
                goto LABEL_50;
              }

LABEL_32:

              goto LABEL_33;
            }
          }

          else if (v101)
          {
            sub_22C26DC44();
            v72 = sub_22BE236C8();
            if ((sub_22BF2DC40(v72, v73) & 0x100000000) != 0)
            {

              sub_22BE1C134();
              v86();
              goto LABEL_50;
            }

            v43 = sub_22C26DC74();
            sub_22BE1C134();
            v74();
            if (v43)
            {
              goto LABEL_22;
            }
          }
        }
      }

      goto LABEL_50;
    }

    if (v101)
    {
      v43 = v96;
      sub_22C26DC44();
      v61 = sub_22BE1A6BC();
      if ((sub_22BF2DC40(v61, v62) & 0x100000000) != 0)
      {

        sub_22BE1C134();
        result = v65();
        goto LABEL_35;
      }

      v63 = sub_22C26DC74();
      sub_22BE1C134();
      v64();
      if (v63)
      {
        goto LABEL_10;
      }
    }

LABEL_35:
    v66 = *v106;
    v67 = *(*v106 + 16);
    if (v67)
    {
      v68 = (*v106 + 16 + 16 * v67);
      result = *v68;
      if (*v68 != 95 || v68[1] != 0xE100000000000000)
      {
        result = sub_22C274014();
        if ((result & 1) == 0)
        {
          swift_beginAccess();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_22BE67160();
            v66 = v87;
          }

          v70 = *(v66 + 16);
          if (v70 >= *(v66 + 24) >> 1)
          {
            sub_22BE67160();
            v66 = v88;
          }

          *(v66 + 16) = v70 + 1;
          v71 = v66 + 16 * v70;
          *(v71 + 32) = 95;
          *(v71 + 40) = 0xE100000000000000;
          *v106 = v66;
          goto LABEL_51;
        }
      }
    }

LABEL_52:
    if ((v38 & 0x2000000000000000) != 0)
    {
      v75 = HIBYTE(v38) & 0xF;
    }

    else
    {
      v75 = v40 & 0xFFFFFFFFFFFFLL;
    }

    if (!v75)
    {
      goto LABEL_84;
    }

    if ((v38 & 0x1000000000000000) != 0)
    {
      v76 = sub_22C2730F4();
    }

    else
    {
      v76 = sub_22C273A84() << 16;
    }

    if (v76 >> 14 == 4 * v75)
    {
      v77 = sub_22BE1A6BC();
      result = sub_22C26CA68(v77, v78);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_85;
      }

      v79 = v103;
      sub_22C274274();
      sub_22C274244();
      sub_22BE187B0();
      v80(v79, v104);
      if (v79)
      {
        goto LABEL_67;
      }
    }

    sub_22BE1A6BC();
    if (sub_22C272F24())
    {
      sub_22BE1A6BC();
      if ((sub_22C272F34() & 1) == 0)
      {
        goto LABEL_92;
      }

      v81 = sub_22BE1A6BC();
      result = sub_22C26CA68(v81, v82);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_87;
      }

      v83 = v103;
      sub_22C274274();
      sub_22C274254();
      sub_22BE187B0();
      v84(v83, v104);
      if ((v83 & 1) == 0)
      {
LABEL_92:
        sub_22BE1A6BC();
        if (sub_22C272F24())
        {
          sub_22BE1A6BC();
          v85 = sub_22C272F14();

          v33 = v85 ^ 1;
          goto LABEL_69;
        }
      }

LABEL_67:

      v33 = 1;
      goto LABEL_69;
    }

    v33 = 0;
LABEL_69:
    v34 += 2;
  }

  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
  return result;
}

void sub_22C26B5DC(uint64_t a1)
{
  v3 = *v1;
  if (!swift_isUniquelyReferenced_nonNull_native() || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) > a1)
    {
      v4 = *(v3 + 16);
    }

    sub_22BE67160();
    v3 = v5;
  }

  *v1 = v3;
}

uint64_t sub_22C26B640(uint64_t a1)
{
  swift_beginAccess();
  result = *(a1 + 16);
  if (*(result + 16))
  {
    v3 = sub_22BE957F8(result);
    if (!v4)
    {
LABEL_8:
      swift_beginAccess();
      sub_22BE78AD8();
      v7 = *(*(a1 + 16) + 16);
      sub_22BE78BC4(v7);
      v8 = *(a1 + 16);
      *(v8 + 16) = v7 + 1;
      v9 = v8 + 16 * v7;
      *(v9 + 32) = 95;
      *(v9 + 40) = 0xE100000000000000;
      *(a1 + 16) = v8;
      return swift_endAccess();
    }

    if (v3 != 95 || v4 != 0xE100000000000000)
    {
      v6 = sub_22C274014();

      if (v6)
      {
        return result;
      }

      goto LABEL_8;
    }
  }

  return result;
}

uint64_t String.toTitleCase.getter(uint64_t a1, unint64_t a2)
{

  v6 = sub_22C26C228(0x7FFFFFFFFFFFFFFFLL, 1u, a1, a2, v5);
  v7 = *(v6 + 16);
  if (v7)
  {
    v44 = a1;
    v45 = a2;
    v51[0] = MEMORY[0x277D84F90];
    v8 = v51;
    sub_22BE70138();
    v9 = v51[0];
    v10 = (v6 + 56);
    while (1)
    {
      v46 = v9;
      v11 = *(v10 - 3);
      v12 = *(v10 - 2);
      v13 = *(v10 - 1);
      v14 = *v10;
      swift_bridgeObjectRetain_n();
      v15 = sub_22BE23E0C();
      v17 = (v16 & 1) != 0 ? v12 : v15;
      if (v17 >> 14 < v11 >> 14)
      {
        break;
      }

      sub_22BE255CC(v11, v17);
      sub_22BE3D554();

      v18 = sub_22BE19454();
      v19 = MEMORY[0x2318AB7C0](v18);
      v2 = v20;

      v49 = v19;
      v50 = v2;
      sub_22BE699D0();
      v8 = sub_22C273904();
      v6 = v21;

      v22 = sub_22BE23E0C();
      if (v23)
      {
        v22 = v12;
      }

      if (v12 >> 14 < v22 >> 14)
      {
        goto LABEL_21;
      }

      v24 = sub_22BE255CC(v22, v12);
      v26 = v25;
      v28 = v27;
      v30 = v29;

      v31 = MEMORY[0x2318AB7C0](v24, v26, v28, v30);
      v33 = v32;

      v47 = v8;
      v48 = v6;

      v8 = &v47;
      MEMORY[0x2318AB8D0](v31, v33);

      v34 = v47;
      v2 = v48;
      v9 = v46;
      v51[0] = v46;
      v35 = *(v46 + 16);
      v6 = v35 + 1;
      if (v35 >= *(v46 + 24) >> 1)
      {
        v8 = v51;
        sub_22BE70138();
        v9 = v51[0];
      }

      *(v9 + 16) = v6;
      v36 = v9 + 16 * v35;
      *(v36 + 32) = v34;
      *(v36 + 40) = v2;
      v10 += 4;
      if (!--v7)
      {

        a1 = v44;
        a2 = v45;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    sub_22BE1B5C0();
    swift_once();
LABEL_17:
    v42 = sub_22C26A03C(v8, v6, off_28106DE20);

    if (!v42)
    {
      v49 = 95;
      v50 = 0xE100000000000000;
      MEMORY[0x2318AB8D0](v2, v13);

      return v49;
    }

    return v2;
  }

  v9 = MEMORY[0x277D84F90];
LABEL_15:
  v49 = v9;
  v37 = sub_22BE19454();
  sub_22BE5CE4C(v37, v38);
  sub_22BEF8A28(&qword_28106DBE0, &qword_27D908050, &qword_22C278EB0);
  v2 = sub_22C272FB4();
  v13 = v39;

  v40 = sub_22BF2DF7C(a1, a2);
  if (v41)
  {
    v8 = v40;
    v6 = v41;
    if (qword_28106DE18 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_22;
  }

  return v2;
}

unint64_t sub_22C26BA9C@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X8>)
{
  if (a1 < 0)
  {
LABEL_117:
    __break(1u);
LABEL_118:
    sub_22BE66CFC(a5 > 1, v8, 1, a4);
    a4 = v65;
LABEL_104:
    *(a4 + 16) = v8;
    v58 = (a4 + 32 * v7);
    v58[4] = v5;
    v58[5] = v6;
    v58[6] = v9;
    v58[7] = v10;
    return a4;
  }

  v8 = a4;
  v11 = a3;
  v12 = HIBYTE(a4) & 0xF;
  if (!a1 || ((a4 & 0x2000000000000000) != 0 ? (v9 = HIBYTE(a4) & 0xF) : (v9 = a3 & 0xFFFFFFFFFFFFLL), !v9))
  {
    if ((a4 & 0x2000000000000000) == 0)
    {
      v12 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (!v12 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v5 = sub_22C273114();
    v6 = v54;
    v9 = v55;
    v10 = v56;

    sub_22BE66CFC(0, 1, 1, MEMORY[0x277D84F90]);
    v7 = *(v57 + 16);
    a5 = *(v57 + 24);
    a4 = v57;
    v8 = v7 + 1;
    if (v7 < a5 >> 1)
    {
      goto LABEL_104;
    }

    goto LABEL_118;
  }

  v10 = 0;
  v13 = (a3 >> 59) & 1;
  v70 = v13;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v76 = 4 * v9;
  v6 = 4 << v13;
  v73 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v74 = a4 & 0xFFFFFFFFFFFFFFLL;
  a5 = MEMORY[0x277D84F90];
  v77 = MEMORY[0x277D84F90];
  v5 = 15;
  v14 = 15;
  v80 = v6;
  do
  {
    v7 = v14 & 0xC;
    v15 = (v14 & 1) == 0 || v7 == v6;
    v16 = v15;
    if (v15)
    {
      v17 = v14;
      if (v7 == v6)
      {
        v17 = sub_22C192BB0(v14, v11, v8);
      }

      v6 = v17 >> 16;
      if (v17 >> 16 >= v9)
      {
        __break(1u);
LABEL_111:
        __break(1u);
LABEL_112:
        __break(1u);
LABEL_113:
        __break(1u);
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_116:
        __break(1u);
        goto LABEL_117;
      }

      if ((v17 & 1) == 0)
      {
        v6 = sub_22C26CCB8(v17, v11, v8) >> 16;
      }
    }

    else
    {
      v6 = v14 >> 16;
      if (v14 >> 16 >= v9)
      {
        goto LABEL_111;
      }
    }

    if ((v8 & 0x1000000000000000) != 0)
    {
      sub_22C273A94();
    }

    else if ((v8 & 0x2000000000000000) != 0)
    {
      v78 = v11;
      v79 = v74;
      v19 = &v78 + v6;
      v22 = *(&v78 + v6);
      v21 = *(&v78 + v6);
      if (v22 < 0)
      {
        switch(__clz(v21 ^ 0xFF))
        {
          case 0x1Au:
LABEL_33:
            v23 = v19[1] & 0x3F | ((v21 & 0x1F) << 6);
            break;
          case 0x1Bu:
LABEL_34:
            v24 = v19[1];
            v25 = v19[2];
            break;
          case 0x1Cu:
LABEL_35:
            v26 = v19[1];
            v27 = v19[2];
            v28 = v19[3];
            break;
          default:
            break;
        }
      }
    }

    else
    {
      v18 = v73;
      if ((v11 & 0x1000000000000000) == 0)
      {
        v18 = sub_22C273B44();
      }

      v19 = (v18 + v6);
      v20 = *(v18 + v6);
      v21 = *(v18 + v6);
      if (v20 < 0)
      {
        switch(__clz(v21 ^ 0xFF))
        {
          case 0x1Au:
            goto LABEL_33;
          case 0x1Bu:
            goto LABEL_34;
          case 0x1Cu:
            goto LABEL_35;
          default:
            break;
        }
      }
    }

    if (qword_27D906E40 != -1)
    {
      swift_once();
    }

    v29 = sub_22C26DC94();
    v6 = sub_22BE199F4(v29, qword_27D915F30);
    if ((sub_22C26DC74() & 1) == 0)
    {
      v6 = v80;
      if (v16)
      {
        if (v7 == v80)
        {
          v14 = sub_22C192BB0(v14, v11, v8);
        }

        if (v9 <= v14 >> 16)
        {
          goto LABEL_112;
        }

        if ((v14 & 1) == 0)
        {
          v14 = v14 & 0xC | sub_22C26CCB8(v14, v11, v8) & 0xFFFFFFFFFFFFFFF3 | 1;
        }
      }

      else if (v9 <= v14 >> 16)
      {
        goto LABEL_113;
      }

      if ((v8 & 0x1000000000000000) != 0)
      {
        v14 = sub_22C2730F4();
        goto LABEL_93;
      }

      v41 = v14 >> 16;
      if ((v8 & 0x2000000000000000) != 0)
      {
        v78 = v11;
        v79 = v74;
        v43 = *(&v78 + v41);
      }

      else
      {
        v42 = v73;
        if ((v11 & 0x1000000000000000) == 0)
        {
          v42 = sub_22C273B44();
        }

        v43 = *(v42 + v41);
      }

      v47 = v43;
      v48 = __clz(v43 ^ 0xFF) - 24;
      if (v47 >= 0)
      {
        LOBYTE(v48) = 1;
      }

      v14 = ((v41 + v48) << 16) | 5;
      goto LABEL_92;
    }

    v30 = v9;
    a5 = v5 >> 14;
    v9 = (v5 >> 14 == v10) & a2;
    if (((v5 >> 14 == v10) & a2) == 0)
    {
      if (v10 < a5)
      {
        goto LABEL_114;
      }

      v32 = sub_22C273114();
      v71 = v33;
      v72 = v32;
      v35 = v34;
      v37 = v36;
      v38 = v77;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22BE66CFC(0, *(v77 + 16) + 1, 1, v77);
        v38 = v51;
      }

      v5 = *(v38 + 16);
      v39 = *(v38 + 24);
      a4 = v38;
      if (v5 >= v39 >> 1)
      {
        sub_22BE66CFC(v39 > 1, v5 + 1, 1, v38);
        a4 = v52;
      }

      *(a4 + 16) = v5 + 1;
      v10 = a4;
      v40 = (a4 + 32 * v5);
      v40[4] = v72;
      v40[5] = v35;
      v40[6] = v37;
      v40[7] = v71;
      if ((v8 & 0x1000000000000000) == 0)
      {
        v31 = 1;
        v6 = 1;
        v11 = a3;
        goto LABEL_65;
      }

      v11 = a3;
LABEL_64:
      v6 = v9 ^ 1;
      v31 = v70;
      goto LABEL_65;
    }

    if ((v8 & 0x1000000000000000) != 0)
    {
      v10 = v77;
      goto LABEL_64;
    }

    v6 = 0;
    v31 = 1;
    v10 = v77;
LABEL_65:
    v9 = v30;
    if (v14)
    {
      a5 = 4 << v31;
      if (v7 != a5)
      {
        if (v30 <= v14 >> 16)
        {
          goto LABEL_115;
        }

LABEL_73:
        if ((v8 & 0x1000000000000000) != 0)
        {
          goto LABEL_87;
        }

        goto LABEL_74;
      }
    }

    a5 = v80;
    if (v7 == v80)
    {
      v14 = sub_22C192BB0(v14, v11, v8);
    }

    if (v30 <= v14 >> 16)
    {
      goto LABEL_116;
    }

    if (v14)
    {
      goto LABEL_73;
    }

    v14 = v14 & 0xC | sub_22C26CCB8(v14, v11, v8) & 0xFFFFFFFFFFFFFFF3 | 1;
    if ((v8 & 0x1000000000000000) != 0)
    {
LABEL_87:
      v5 = sub_22C2730F4();
      goto LABEL_88;
    }

LABEL_74:
    v44 = v14 >> 16;
    if ((v8 & 0x2000000000000000) != 0)
    {
      v78 = v11;
      v79 = v74;
      v46 = *(&v78 + v44);
    }

    else
    {
      v45 = v73;
      if ((v11 & 0x1000000000000000) == 0)
      {
        v45 = sub_22C273B44();
      }

      v46 = *(v45 + v44);
    }

    v49 = v46;
    v50 = __clz(v46 ^ 0xFF) - 24;
    if (v49 >= 0)
    {
      LOBYTE(v50) = 1;
    }

    v5 = ((v44 + v50) << 16) | 5;
LABEL_88:
    v77 = v10;
    if (!v6)
    {
      v14 = v5;
LABEL_92:
      v6 = v80;
      goto LABEL_93;
    }

    v14 = v5;
    v6 = v80;
    if (*(v10 + 16) == a1)
    {
      break;
    }

LABEL_93:
    v10 = v14 >> 14;
    a5 = v76;
  }

  while (v14 >> 14 != v76);
  if (v5 >> 14 == v76 && (a2 & 1) != 0)
  {

    return v77;
  }

  if (v76 < v5 >> 14)
  {
    __break(1u);
  }

  else
  {
    v5 = sub_22C273114();
    v6 = v59;
    v9 = v60;
    v10 = v61;

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_107;
    }
  }

  sub_22BE66CFC(0, *(v77 + 16) + 1, 1, v77);
  v77 = v66;
LABEL_107:
  v63 = *(v77 + 16);
  v62 = *(v77 + 24);
  if (v63 >= v62 >> 1)
  {
    sub_22BE66CFC(v62 > 1, v63 + 1, 1, v77);
    v77 = v67;
  }

  result = v77;
  *(v77 + 16) = v63 + 1;
  v64 = (v77 + 32 * v63);
  v64[4] = v5;
  v64[5] = v6;
  v64[6] = v9;
  v64[7] = v10;
  return result;
}

unint64_t sub_22C26C228@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X8>)
{
  if (a1 < 0)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v8 = a4;
  v6 = a3;
  v12 = HIBYTE(a4) & 0xF;
  if (!a1 || ((a4 & 0x2000000000000000) != 0 ? (v13 = HIBYTE(a4) & 0xF) : (v13 = a3 & 0xFFFFFFFFFFFFLL), !v13))
  {
    if ((a4 & 0x2000000000000000) == 0)
    {
      v12 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (!v12 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v5 = sub_22C2732E4();
    v6 = v35;
    v9 = v36;
    v10 = v37;

    sub_22BE67BB8(0, 1, 1, MEMORY[0x277D84F90]);
    v7 = *(v38 + 16);
    a5 = *(v38 + 24);
    a4 = v38;
    v8 = v7 + 1;
    if (v7 < a5 >> 1)
    {
LABEL_43:
      *(a4 + 16) = v8;
      v39 = (a4 + 32 * v7);
      v39[4] = v5;
      v39[5] = v6;
      v39[6] = v9;
      v39[7] = v10;
      return a4;
    }

LABEL_52:
    sub_22BE67BB8(a5 > 1, v8, 1, a4);
    a4 = v47;
    goto LABEL_43;
  }

  v54 = 4 * v13;
  v14 = MEMORY[0x277D84F90];
  v15 = 15;
  while (1)
  {
    v52 = v14;
    v53 = v15;
LABEL_9:
    v10 = v15 >> 14;
    if (v15 >> 14 == v54)
    {
      break;
    }

    v16 = sub_22C2732A4();
    v5 = v17;
    if (qword_28106DE18 != -1)
    {
      swift_once();
    }

    v18 = off_28106DE20;
    if (*(off_28106DE20 + 2))
    {
      v19 = *(off_28106DE20 + 5);
      sub_22C274154();
      sub_22C272F44();
      v20 = sub_22C2741A4();
      v11 = ~(-1 << v18[32]);
      while (1)
      {
        v9 = v20 & v11;
        if (((*&v18[(((v20 & v11) >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> (v20 & v11)) & 1) == 0)
        {
          break;
        }

        v21 = (*(v18 + 6) + 16 * v9);
        if (*v21 != v16 || v21[1] != v5)
        {
          v23 = sub_22C274014();
          v20 = v9 + 1;
          if ((v23 & 1) == 0)
          {
            continue;
          }
        }

        v6 = a3;
        v15 = sub_22C273184();
        goto LABEL_9;
      }

      v6 = a3;
    }

    a5 = v53 >> 14;
    v7 = (v53 >> 14 == v10) & a2;
    if (v7 == 1)
    {
      v14 = v52;
    }

    else
    {
      if (v10 < a5)
      {
        __break(1u);
        goto LABEL_51;
      }

      v5 = sub_22C2732E4();
      v25 = v24;
      v27 = v26;
      v11 = v28;
      v29 = v52;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22BE67BB8(0, *(v52 + 16) + 1, 1, v52);
        v29 = v33;
      }

      v9 = *(v29 + 16);
      v30 = *(v29 + 24);
      v31 = v29;
      if (v9 >= v30 >> 1)
      {
        sub_22BE67BB8(v30 > 1, v9 + 1, 1, v29);
        v31 = v34;
      }

      *(v31 + 16) = v9 + 1;
      v14 = v31;
      v32 = (v31 + 32 * v9);
      v32[4] = v5;
      v32[5] = v25;
      v32[6] = v27;
      v32[7] = v11;
      v6 = a3;
    }

    v15 = sub_22C273184();
    if ((v7 & 1) == 0 && *(v14 + 16) == a1)
    {
      goto LABEL_39;
    }
  }

  v14 = v52;
  v15 = v53;
LABEL_39:
  if (v15 >> 14 == v54 && (a2 & 1) != 0)
  {

    return v14;
  }

  if (v54 < v15 >> 14)
  {
    __break(1u);
    goto LABEL_54;
  }

  v11 = v14;
  v5 = sub_22C2732E4();
  v6 = v40;
  v9 = v41;
  v14 = v42;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_54:
    sub_22BE67BB8(0, *(v11 + 16) + 1, 1, v11);
    v11 = v48;
  }

  v44 = *(v11 + 16);
  v43 = *(v11 + 24);
  if (v44 >= v43 >> 1)
  {
    sub_22BE67BB8(v43 > 1, v44 + 1, 1, v11);
    v11 = v49;
  }

  *(v11 + 16) = v44 + 1;
  v45 = (v11 + 32 * v44);
  v45[4] = v5;
  v45[5] = v6;
  v45[6] = v9;
  v45[7] = v14;
  return v11;
}

unint64_t sub_22C26C6B0(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    result = sub_22C26CE30(a3, -result, a2, a4, a5);
    if (v7)
    {
      result = a2;
    }

    if (a3 >> 14 >= result >> 14)
    {
      v8 = sub_22C273874();

      return v8;
    }
  }

  __break(1u);
  return result;
}

uint64_t String.escapedForPython.getter()
{
  sub_22BE699D0();
  sub_22BE17F00();
  sub_22C273924();
  v2 = v1;
  sub_22BE19054();
  sub_22BE1942C();
  v4 = &v4;
  v5 = v0;
  sub_22BE19054();
  sub_22C26D138();
  v4 = &v4;
  v5 = v2;
  sub_22BE19054();
  sub_22BE1942C();
  v4 = &v4;
  v5 = v0;
  sub_22BE19054();
  sub_22C26D138();
  v4 = &v4;
  v5 = v2;
  sub_22BE19054();
  sub_22BE1942C();
  v4 = &v4;
  v5 = v0;
  sub_22BE19054();
  sub_22C26D138();
  v4 = &v4;
  v5 = v2;
  sub_22BE19054();
  sub_22BE1942C();
  v4 = &v4;
  v5 = v0;
  sub_22BE19054();
  sub_22BE3D554();

  return sub_22BE19454();
}

void *String.blockIndented.getter()
{
  v1[0] = 538976288;
  v1[1] = 0xE400000000000000;
  MEMORY[0x2318AB8D0]();
  sub_22BE699D0();
  sub_22BE17F00();
  sub_22C273924();
  sub_22BE2F120();

  return v1;
}

Swift::String __swiftcall String.truncateForPrompting(allowedLength:)(Swift::Int allowedLength)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_22C273174();

  if (v6 > allowedLength)
  {
    sub_22BE22C8C();
    v8 = sub_22BE643C8(v7);
    MEMORY[0x2318AB7C0](v8);
    sub_22BE2F120();

    sub_22C2731B4();
    v9 = sub_22C2738D4();
    v4 = MEMORY[0x2318AB7C0](v9);
    v3 = v10;
  }

  v11 = v4;
  v12 = v3;
  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

unint64_t sub_22C26CA68(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    sub_22C26CBFC();
    if ((a2 & 0x1000000000000000) != 0)
    {
      v10 = sub_22C273A94();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v17[0] = a1;
        v17[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v8 = v17 + v6;
        v10 = *(v17 + v6);
        if (*(v17 + v6) < 0)
        {
          switch(__clz(v10 ^ 0xFF))
          {
            case 0x1Au:
LABEL_14:
              v10 = v8[1] & 0x3F | ((v10 & 0x1F) << 6);
              break;
            case 0x1Bu:
LABEL_15:
              v11 = v8[1];
              v12 = v8[2];
              v13 = ((v10 & 0xF) << 12) | ((v11 & 0x3F) << 6);
              goto LABEL_17;
            case 0x1Cu:
LABEL_16:
              v14 = v8[1];
              v15 = v8[2];
              v12 = v8[3];
              v13 = ((v10 & 0xF) << 18) | ((v14 & 0x3F) << 12) | ((v15 & 0x3F) << 6);
LABEL_17:
              v10 = v13 & 0xFFFFFFC0 | v12 & 0x3F;
              break;
            default:
              break;
          }
        }
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v7 = sub_22C273B44();
        }

        v8 = (v7 + v6);
        v9 = *(v7 + v6);
        v10 = *(v7 + v6);
        if (v9 < 0)
        {
          switch(__clz(v10 ^ 0xFF))
          {
            case 0x1Au:
              goto LABEL_14;
            case 0x1Bu:
              goto LABEL_15;
            case 0x1Cu:
              goto LABEL_16;
            default:
              break;
          }
        }
      }
    }
  }

  else
  {
    v10 = 0;
  }

  LOBYTE(v17[0]) = v2 == 0;
  return v10 | ((v2 == 0) << 32);
}

void sub_22C26CBFC()
{
  sub_22BE1983C();
  if (v0)
  {
    sub_22BE25BE0();
    if (!v1)
    {
      sub_22BE1AD3C();
      if (v3 > v2 >> 16)
      {
        return;
      }

      __break(1u);
    }
  }

  sub_22BE22C8C();
  sub_22C26CC70();
  if ((v4 & 1) == 0)
  {
    sub_22BE22C8C();
    sub_22C26CCB8(v5, v6, v7);
  }
}

void sub_22C26CC70()
{
  sub_22BE1983C();
  sub_22BE25BE0();
  if (v0)
  {
    sub_22BE22C8C();
    sub_22C192BB0(v3, v4, v5);
  }

  sub_22BE1AD3C();
  if (v2 <= v1 >> 16)
  {
    __break(1u);
  }
}

unint64_t sub_22C26CCB8(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v12[2] = v3;
      v12[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v12[0] = a2;
        v12[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v12 + v5) & 0xC0) == 0x80)
        {
          do
          {
            sub_22BE25848(v5);
          }

          while (v9);
          return v8 << 16;
        }
      }

      else
      {
        if ((a2 & 0x1000000000000000) != 0)
        {
          v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v7 = a2 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = result >> 16;
          v6 = sub_22C273B44();
          v5 = v11;
        }

        if (v5 != v7 && (*(v6 + v5) & 0xC0) == 0x80)
        {
          do
          {
            sub_22BE25848(v5);
          }

          while (v9);
          return v8 << 16;
        }
      }

      v8 = v5;
      return v8 << 16;
    }

    v10 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v10 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v10)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

void *sub_22C26CDB4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_22BE5CE4C(&qword_27D907308, &qword_22C275240);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

unint64_t sub_22C26CE30(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v7 = a3;
  v10 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v10) = 1;
  }

  v11 = 4 << v10;
  if ((a3 & 0xC) == 4 << v10)
  {
LABEL_65:
    v7 = sub_22C192BB0(v7, a4, a5);
  }

  v12 = a1;
  if ((a1 & 0xC) == v11)
  {
    v12 = sub_22C192BB0(a1, a4, a5);
  }

  result = sub_22BF681E0(a1, a4, a5);
  v7 >>= 14;
  if (a2 < 0)
  {
    v11 = 0;
    a1 = v12 >> 14;
    v22 = &v34 + 7;
    v23 = &v34 + 6;
    while (a1 < v7 || v7 < result >> 14)
    {
      if (result < 0x10000)
      {
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      if ((a5 & 0x1000000000000000) != 0)
      {
        v34 = v22;
        v31 = v23;
        result = sub_22C273104();
        v23 = v31;
        v22 = v34;
      }

      else
      {
        v25 = result >> 16;
        if ((a5 & 0x2000000000000000) != 0)
        {
          v35 = a4;
          v36 = a5 & 0xFFFFFFFFFFFFFFLL;
          if ((v22[v25] & 0xC0) == 0x80)
          {
            v28 = &v23[v25];
            v29 = 1;
            do
            {
              ++v29;
              v30 = *v28--;
            }

            while ((v30 & 0xC0) == 0x80);
          }

          else
          {
            v29 = 1;
          }

          v25 -= v29;
        }

        else
        {
          v26 = (a5 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a4 & 0x1000000000000000) == 0)
          {
            v33 = v23;
            v34 = v22;
            v26 = sub_22C273B44();
            v23 = v33;
            v22 = v34;
          }

          do
          {
            v27 = *(v26 - 1 + v25--) & 0xC0;
          }

          while (v27 == 128);
        }

        result = (v25 << 16) | 5;
      }

      if (--v11 <= a2)
      {
        if (a1 < v7 || result >> 14 >= v7)
        {
          return result;
        }

        return 0;
      }
    }

    return 0;
  }

  a1 = v12 >> 14;
  if (a2)
  {
    if ((a5 & 0x2000000000000000) != 0)
    {
      v14 = HIBYTE(a5) & 0xF;
    }

    else
    {
      v14 = a4 & 0xFFFFFFFFFFFFLL;
    }

    v11 = a5 & 0xFFFFFFFFFFFFFFLL;
    while (v7 < a1 || result >> 14 < v7)
    {
      v16 = result >> 16;
      if (result >> 16 >= v14)
      {
        __break(1u);
        goto LABEL_64;
      }

      if ((a5 & 0x1000000000000000) != 0)
      {
        result = sub_22C2730F4();
      }

      else
      {
        if ((a5 & 0x2000000000000000) != 0)
        {
          v35 = a4;
          v36 = a5 & 0xFFFFFFFFFFFFFFLL;
          v18 = *(&v35 + v16);
        }

        else
        {
          v17 = (a5 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a4 & 0x1000000000000000) == 0)
          {
            v17 = sub_22C273B44();
          }

          v18 = *(v17 + v16);
        }

        v19 = v18;
        v20 = __clz(v18 ^ 0xFF) - 24;
        if (v19 >= 0)
        {
          LOBYTE(v20) = 1;
        }

        result = ((v16 + v20) << 16) | 5;
      }

      if (!--a2)
      {
        goto LABEL_29;
      }
    }

    return 0;
  }

LABEL_29:
  if (v7 >= a1 && v7 < result >> 14)
  {
    return 0;
  }

  return result;
}

uint64_t sub_22C26D0EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22C26D138()
{
}

uint64_t ToolDefinition.promptDefinition.getter()
{
  v0 = sub_22C2728A4();
  v1 = sub_22BE179D8(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22BE179EC();
  v8 = v7 - v6;
  v9 = sub_22C272B14();
  v10 = sub_22BE179D8(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BE179EC();
  v17 = v16 - v15;
  v18 = sub_22C2721E4();
  MEMORY[0x2318AB8D0](v18);

  MEMORY[0x2318AB8D0](40, 0xE100000000000000);
  v19 = sub_22C272134();
  v20 = *(v19 + 16);
  if (v20)
  {
    v32 = v8;
    v33 = v0;
    v23 = *(v12 + 16);
    v21 = v12 + 16;
    v22 = v23;
    v24 = v19 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
    v25 = *(v21 + 56);
    do
    {
      v22(v17, v24, v9);
      v26 = sub_22C272B04();
      v28 = v27;
      (*(v21 - 8))(v17, v9);
      MEMORY[0x2318AB8D0](0x202C4F444F54203ALL, 0xE800000000000000);
      MEMORY[0x2318AB8D0](v26, v28);

      v24 += v25;
      --v20;
    }

    while (v20);

    v0 = v33;
    v8 = v32;
  }

  else
  {
  }

  v29 = *(sub_22C272134() + 16);

  if (v29)
  {
    sub_22BEB790C(2);
  }

  v30 = MEMORY[0x2318AB8D0](41, 0xE100000000000000);
  MEMORY[0x2318AA820](v30);
  (*(v3 + 8))(v8, v0);
  MEMORY[0x2318AB8D0](540945696, 0xE400000000000000);
  MEMORY[0x2318AB8D0](10, 0xE100000000000000);
  return 543581540;
}

uint64_t TypeIdentifier.pythonType.getter()
{
  v1 = v0;
  v2 = sub_22C272914();
  v3 = sub_22BE179D8(v2);
  v64 = v4;
  v65 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE179EC();
  v9 = v8 - v7;
  v10 = sub_22C272984();
  v11 = sub_22BE179D8(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v17 = (&v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v20 = &v64 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = (&v64 - v22);
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v64 - v26;
  v28 = *(v13 + 16);
  v28(&v64 - v26, v1, v10, v25);
  v29 = (*(v13 + 88))(v27, v10);
  if (v29 != *MEMORY[0x277D72D50])
  {
    if (v29 != *MEMORY[0x277D72D30])
    {
      if (v29 == *MEMORY[0x277D72D28])
      {
        v35 = v27;
        (v28)(v20, v27, v10);
        sub_22BE1A898();
        v42(v20, v10);
        v1 = *(*v20 + 32);
        v43 = *(*v20 + 40);
      }

      else
      {
        v35 = v27;
        if (v29 != *MEMORY[0x277D72D18])
        {
          goto LABEL_71;
        }

        (v28)(v20, v27, v10);
        sub_22BE1A898();
        v48(v20, v10);
        v49 = *v20;
        v50 = swift_projectBox();
        v52 = v64;
        v51 = v65;
        (*(v64 + 16))(v9, v50, v65);
        v1 = sub_22C272904();
        (*(v52 + 8))(v9, v51);
        v35 = v27;
      }

      goto LABEL_72;
    }

    (v28)(v17, v27, v10);
    sub_22BE1A898();
    v36(v17, v10);
    v37 = *v17;
    v38 = sub_22C272924();
    v39 = swift_projectBox();
    v40 = (*(*(v38 - 8) + 88))(v39, v38);
    if (v40 == *MEMORY[0x277D72C00])
    {

      v1 = 0x7972657551;
      v35 = v27;
      goto LABEL_72;
    }

    v44 = v40;
    v47 = v40 == *MEMORY[0x277D72BE0] || v40 == *MEMORY[0x277D72BC0] || v40 == *MEMORY[0x277D72C18] || v40 == *MEMORY[0x277D72BF8];
    v35 = v27;
    if (v47)
    {
      goto LABEL_22;
    }

    if (v40 == *MEMORY[0x277D72C20])
    {

      v1 = 0x79636E6572727543;
      goto LABEL_72;
    }

    if (v40 == *MEMORY[0x277D72BF0])
    {

      v1 = 1701603654;
      goto LABEL_72;
    }

    v56 = v40 == *MEMORY[0x277D72C28] || v40 == *MEMORY[0x277D72BB8];
    v57 = v56 || v40 == *MEMORY[0x277D72BD0];
    if (v57 || v40 == *MEMORY[0x277D72C10])
    {
      goto LABEL_22;
    }

    if (v40 == *MEMORY[0x277D72C08])
    {

      v1 = 0x6E6F73726550;
      goto LABEL_72;
    }

    if (v40 == *MEMORY[0x277D72C38])
    {

      v1 = 0x72616D6563616C50;
      goto LABEL_72;
    }

    v60 = v40 == *MEMORY[0x277D72BD8] || v40 == *MEMORY[0x277D72BE8];
    if (v60 || v40 == *MEMORY[0x277D72C30])
    {
LABEL_22:
      sub_22BE18BD4();

      goto LABEL_72;
    }

    v62 = *MEMORY[0x277D72BC8];

    if (v44 == v62)
    {
      v1 = 0x6D6572757361654DLL;
      goto LABEL_72;
    }

LABEL_71:
    sub_22BE18BD4();
    goto LABEL_72;
  }

  (v28)(v23, v27, v10);
  sub_22BE1A898();
  v30(v23, v10);
  v31 = *v23;
  v32 = sub_22C272934();
  v33 = swift_projectBox();
  v34 = (*(*(v32 - 8) + 88))(v33, v32);
  v35 = v27;
  if (v34 != *MEMORY[0x277D72CC8])
  {
    v41 = v34;
    if (v34 == *MEMORY[0x277D72CB0])
    {

      v1 = 1819242338;
      goto LABEL_72;
    }

    if (v34 == *MEMORY[0x277D72CD0])
    {

      v1 = 0x74616F6C66;
      goto LABEL_72;
    }

    if (v34 == *MEMORY[0x277D72CE0] || v34 == *MEMORY[0x277D72CB8] || v34 == *MEMORY[0x277D72C70] || v34 == *MEMORY[0x277D72CA8])
    {
      v1 = 7500915;

      goto LABEL_72;
    }

    if (v34 == *MEMORY[0x277D72C40])
    {

      v1 = 1952672100;
      goto LABEL_72;
    }

    v59 = *MEMORY[0x277D72C88];

    if (v41 == v59)
    {
      v1 = 7500915;
      goto LABEL_72;
    }

    goto LABEL_71;
  }

  v1 = 1701736270;
LABEL_72:
  (*(v13 + 8))(v35, v10);
  return v1;
}