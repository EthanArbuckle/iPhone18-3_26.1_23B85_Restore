uint64_t sub_22C126770(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x647261646E617473 && a2 == 0xE800000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7972657571 && a2 == 0xE500000000000000;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x79726F7369766461 && a2 == 0xE800000000000000;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000014 && 0x800000022C2DBD90 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_22C274014();

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

unint64_t sub_22C1268CC(char a1)
{
  result = 0x647261646E617473;
  switch(a1)
  {
    case 1:
      result = 0x7972657571;
      break;
    case 2:
      result = 0x79726F7369766461;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C12694C(uint64_t a1)
{
  v2 = sub_22C172784();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C126988(uint64_t a1)
{
  v2 = sub_22C172784();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C1269C4(uint64_t a1)
{
  v2 = sub_22C172730();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C126A00(uint64_t a1)
{
  v2 = sub_22C172730();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C126A44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C126770(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C126A6C(uint64_t a1)
{
  v2 = sub_22C1726DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C126AA8(uint64_t a1)
{
  v2 = sub_22C1726DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C126AE4(uint64_t a1)
{
  v2 = sub_22C1727D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C126B20(uint64_t a1)
{
  v2 = sub_22C1727D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C126B5C(uint64_t a1)
{
  v2 = sub_22C17282C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C126B98(uint64_t a1)
{
  v2 = sub_22C17282C();

  return MEMORY[0x2821FE720](a1, v2);
}

void Session.Event.Payload.QueryTrackingBehavior.encode(to:)()
{
  sub_22BE19130();
  sub_22BE3FF70();
  v2 = sub_22BE5CE4C(&qword_27D912518, &qword_22C2B7A58);
  sub_22BE179D8(v2);
  v48 = v3;
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE20168(v7, v40);
  v8 = sub_22BE5CE4C(&qword_27D912520, &qword_22C2B7A60);
  sub_22BE179D8(v8);
  v46 = v9;
  v11 = *(v10 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE181D0(v13, v41);
  v14 = sub_22BE5CE4C(&qword_27D912528, &qword_22C2B7A68);
  sub_22BE179D8(v14);
  v44 = v15;
  v17 = *(v16 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  sub_22BE2BA30(v19, v42);
  v20 = sub_22BE5CE4C(&qword_27D912530, &qword_22C2B7A70);
  sub_22BE179D8(v20);
  v22 = *(v21 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v23);
  sub_22BE1B01C();
  v24 = sub_22BE5CE4C(&qword_27D912538, &qword_22C2B7A78);
  sub_22BE1A3D8(v24);
  v26 = v25;
  v28 = *(v27 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v29);
  sub_22BE1A8B4();
  v30 = *v0;
  v32 = v1[3];
  v31 = v1[4];
  sub_22BE2018C(v1);
  sub_22C1726DC();
  sub_22BEE939C();
  sub_22C274234();
  switch(v30)
  {
    case 1:
      sub_22BE38948();
      sub_22C1727D8();
      v35 = v43;
      sub_22BE36090();
      sub_22C273EE4();
      v36 = v44;
      goto LABEL_6;
    case 2:
      sub_22C18F59C();
      sub_22C172784();
      v35 = v45;
      sub_22BE36090();
      sub_22C273EE4();
      v36 = v46;
      goto LABEL_6;
    case 3:
      sub_22BEE9478();
      sub_22C172730();
      v35 = v47;
      sub_22BE36090();
      sub_22C273EE4();
      v36 = v48;
LABEL_6:
      v34 = *(v36 + 8);
      v33 = v35;
      break;
    default:
      sub_22C17282C();
      sub_22BE36090();
      sub_22C273EE4();
      v33 = sub_22BE39058();
      break;
  }

  v34(v33);
  v37 = *(v26 + 8);
  v38 = sub_22BE38FD8();
  v39(v38);
  sub_22C18FEDC();
  sub_22BE18478();
}

void Session.Event.Payload.QueryTrackingBehavior.init(from:)()
{
  sub_22BE19130();
  sub_22BE3FF70();
  v62 = v3;
  v64 = sub_22BE5CE4C(&qword_27D912568, &qword_22C2B7A80);
  sub_22BE179D8(v64);
  v61 = v4;
  v6 = *(v5 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE1A174();
  sub_22BE3BF90(v8);
  v9 = sub_22BE5CE4C(&qword_27D912570, &qword_22C2B7A88);
  sub_22BE179D8(v9);
  v11 = *(v10 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE181D0(v13, v60);
  v14 = sub_22BE5CE4C(&qword_27D912578, &qword_22C2B7A90);
  sub_22BE179D8(v14);
  v16 = *(v15 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  sub_22BE234F4();
  v18 = sub_22BE5CE4C(&qword_27D912580, &qword_22C2B7A98);
  sub_22BE1A3D8(v18);
  v20 = *(v19 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v21);
  sub_22BE1B01C();
  v22 = sub_22BE5CE4C(&qword_27D912588, &unk_22C2B7AA0);
  sub_22BE179D8(v22);
  v63 = v23;
  v25 = *(v24 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v26);
  sub_22BE19E64();
  v27 = v2[3];
  v28 = v2[4];
  v29 = sub_22BE3C968();
  sub_22BE26950(v29, v30);
  sub_22C1726DC();
  sub_22BE23550();
  sub_22C274214();
  if (!v65)
  {
    v66 = v2;
    v31 = v0;
    v32 = sub_22C273ED4();
    sub_22BE7C5C4(v32, 0);
    sub_22C18F644();
    if (!v33)
    {
      sub_22BE38A18();
      sub_22BE3E9D8();
      if (v36 == v37)
      {
        __break(1u);
        return;
      }

      v38 = *(v35 + v34);
      sub_22BE7C5C0(v34 + 1);
      v40 = v39;
      v42 = v41;
      swift_unknownObjectRelease();
      if (v40 == v42 >> 1)
      {
        switch(v38)
        {
          case 1:
            sub_22BE38948();
            sub_22C1727D8();
            sub_22BEC000C();
            sub_22C273DE4();
            swift_unknownObjectRelease();
            goto LABEL_14;
          case 2:
            sub_22C18F59C();
            sub_22C172784();
            sub_22BE3925C();
            sub_22BEC000C();
            sub_22C273DE4();
            swift_unknownObjectRelease();
LABEL_14:
            v43 = sub_22BE2399C();
            goto LABEL_15;
          case 3:
            sub_22BEE9478();
            sub_22C172730();
            sub_22BEC000C();
            sub_22C273DE4();
            swift_unknownObjectRelease();
            v57 = *(v61 + 8);
            v58 = sub_22BF0AFB8();
            v59(v58);
            goto LABEL_16;
          default:
            sub_22C17282C();
            sub_22BEC000C();
            sub_22C273DE4();
            swift_unknownObjectRelease();
            v43 = sub_22BE2399C();
            v45 = v1;
LABEL_15:
            v44(v43, v45);
LABEL_16:
            (*(v63 + 8))(v31, v22);
            *v62 = v38;
            sub_22BE26B64(v66);
            break;
        }

        goto LABEL_10;
      }
    }

    sub_22C273B34();
    sub_22BE196B4();
    v47 = v46;
    v48 = *(sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0) + 48);
    *v47 = &type metadata for Session.Event.Payload.QueryTrackingBehavior;
    sub_22C273DF4();
    sub_22C18FE8C();
    sub_22BE1B198();
    v49 = *MEMORY[0x277D84160];
    sub_22BE18994();
    v51 = *(v50 + 104);
    v52 = sub_22BE38608();
    v53(v52);
    swift_willThrow();
    swift_unknownObjectRelease();
    v54 = *(v63 + 8);
    v55 = sub_22BF0AFB8();
    v56(v55);
    v2 = v66;
  }

  sub_22BE26B64(v2);
LABEL_10:
  sub_22BE22978();
  sub_22BE18478();
}

void static Session.Event.Payload.== infix(_:_:)()
{
  sub_22BE19460();
  v453 = v7;
  v452 = v8;
  v385 = type metadata accessor for AgentPrimitiveAction(0);
  v9 = sub_22BE18000(v385);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BE17A44();
  v411 = v12;
  sub_22BE183BC();
  v450 = sub_22C270234();
  v13 = sub_22BE179D8(v450);
  v449 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BE17A44();
  sub_22BE183BC();
  v448 = sub_22C270074();
  v17 = sub_22BE179D8(v448);
  v447 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BE17A44();
  v21 = sub_22BE183BC();
  v381 = type metadata accessor for RequestAmendment(v21);
  v22 = sub_22BE18000(v381);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22BE17A44();
  v410 = v25;
  v26 = sub_22BE183BC();
  v380 = type metadata accessor for ExecutionPreconditionEvaluatorRequest(v26);
  v27 = sub_22BE18000(v380);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22BE17A44();
  v408 = v30;
  v31 = sub_22BE183BC();
  v32 = type metadata accessor for SkipStatement(v31);
  v33 = sub_22BE19448(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  sub_22BE17A44();
  v407 = v36;
  v37 = sub_22BE183BC();
  DecorationPrePlannerResult = type metadata accessor for QueryDecorationPrePlannerResult(v37);
  v38 = sub_22BE18000(DecorationPrePlannerResult);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  sub_22BE17A44();
  v409 = v41;
  v42 = sub_22BE183BC();
  DecorationResult = type metadata accessor for QueryDecorationResult(v42);
  v44 = sub_22BE19448(DecorationResult);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  sub_22BE17A44();
  v406 = v47;
  v48 = sub_22BE183BC();
  v49 = type metadata accessor for TypeConversionResult(v48);
  v50 = sub_22BE19448(v49);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50);
  sub_22BE17A44();
  v405 = v53;
  v54 = sub_22BE183BC();
  v55 = type metadata accessor for TypeConversionRequest(v54);
  v56 = sub_22BE19448(v55);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v56);
  sub_22BE17A44();
  v404 = v59;
  v60 = sub_22BE183BC();
  v61 = type metadata accessor for ClientUndoRedoRequest(v60);
  v62 = sub_22BE19448(v61);
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v62);
  sub_22BE17A44();
  v403 = v65;
  v66 = sub_22BE183BC();
  v67 = type metadata accessor for UndoRedoRequest(v66);
  v68 = sub_22BE19448(v67);
  v70 = *(v69 + 64);
  MEMORY[0x28223BE20](v68);
  sub_22BE17A44();
  v402 = v71;
  v72 = sub_22BE183BC();
  v73 = type metadata accessor for ToolResolution(v72);
  v74 = sub_22BE19448(v73);
  v76 = *(v75 + 64);
  MEMORY[0x28223BE20](v74);
  sub_22BE17A44();
  v400 = v77;
  v78 = sub_22BE183BC();
  v384 = type metadata accessor for ExternalAgentOutcome(v78);
  v79 = sub_22BE18000(v384);
  v81 = *(v80 + 64);
  MEMORY[0x28223BE20](v79);
  sub_22BE17A44();
  v401 = v82;
  v83 = sub_22BE183BC();
  v84 = type metadata accessor for ExternalAgentRequest(v83);
  v85 = sub_22BE19448(v84);
  v87 = *(v86 + 64);
  MEMORY[0x28223BE20](v85);
  sub_22BE17A44();
  v399 = v88;
  v89 = sub_22BE183BC();
  v90 = type metadata accessor for StatementResult(v89);
  v91 = sub_22BE19448(v90);
  v93 = *(v92 + 64);
  MEMORY[0x28223BE20](v91);
  sub_22BE17A44();
  v398 = v94;
  sub_22BE183BC();
  v446 = sub_22C26F754();
  v95 = sub_22BE179D8(v446);
  v445 = v96;
  v98 = *(v97 + 64);
  MEMORY[0x28223BE20](v95);
  sub_22BE17A44();
  v99 = sub_22BE183BC();
  v100 = type metadata accessor for ActionResolverRequest(v99);
  v101 = sub_22BE19448(v100);
  v103 = *(v102 + 64);
  MEMORY[0x28223BE20](v101);
  sub_22BE17A44();
  v396 = v104;
  v105 = sub_22BE183BC();
  StepResults = type metadata accessor for QueryStepResults(v105);
  v106 = sub_22BE18000(StepResults);
  v108 = *(v107 + 64);
  MEMORY[0x28223BE20](v106);
  sub_22BE17A44();
  v397 = v109;
  sub_22BE183BC();
  v110 = type metadata accessor for SessionError();
  v111 = sub_22BE19448(v110);
  v113 = *(v112 + 64);
  MEMORY[0x28223BE20](v111);
  sub_22BE17A44();
  v395 = v114;
  v115 = sub_22BE183BC();
  v116 = type metadata accessor for Session.RecoverableError(v115);
  v117 = sub_22BE19448(v116);
  v119 = *(v118 + 64);
  MEMORY[0x28223BE20](v117);
  sub_22BE17A44();
  v394 = v120;
  v121 = sub_22BE183BC();
  v379 = type metadata accessor for VariableStep(v121);
  v122 = sub_22BE18000(v379);
  v124 = *(v123 + 64);
  MEMORY[0x28223BE20](v122);
  sub_22BE17A44();
  v393 = v125;
  v126 = sub_22BE183BC();
  Step = type metadata accessor for QueryStep(v126);
  v128 = sub_22BE19448(Step);
  v130 = *(v129 + 64);
  MEMORY[0x28223BE20](v128);
  sub_22BE17A44();
  v392 = v131;
  v132 = sub_22BE183BC();
  v133 = type metadata accessor for ClientAction(v132);
  v134 = sub_22BE19448(v133);
  v136 = *(v135 + 64);
  MEMORY[0x28223BE20](v134);
  sub_22BE17A44();
  v391 = v137;
  v138 = sub_22BE183BC();
  v139 = type metadata accessor for ActionCancellation(v138);
  v140 = sub_22BE19448(v139);
  v142 = *(v141 + 64);
  MEMORY[0x28223BE20](v140);
  sub_22BE17A44();
  v390 = v143;
  v144 = sub_22BE183BC();
  v145 = type metadata accessor for Action(v144);
  v146 = sub_22BE19448(v145);
  v148 = *(v147 + 64);
  MEMORY[0x28223BE20](v146);
  sub_22BE17A44();
  v389 = v149;
  v150 = sub_22BE183BC();
  v151 = type metadata accessor for Request(v150);
  v152 = sub_22BE19448(v151);
  v154 = *(v153 + 64);
  MEMORY[0x28223BE20](v152);
  sub_22BE17A44();
  v388 = v155;
  v156 = sub_22BE183BC();
  v157 = type metadata accessor for UserTurnStarted(v156);
  v158 = sub_22BE19448(v157);
  v160 = *(v159 + 64);
  MEMORY[0x28223BE20](v158);
  sub_22BE17A44();
  v387 = v161;
  v162 = sub_22BE183BC();
  v163 = type metadata accessor for SessionStart(v162);
  v164 = sub_22BE19448(v163);
  v166 = *(v165 + 64);
  MEMORY[0x28223BE20](v164);
  sub_22BE17A44();
  v382 = v167;
  v168 = sub_22BE183BC();
  v451 = type metadata accessor for Session.Event.Payload(v168);
  v169 = sub_22BE18000(v451);
  v171 = *(v170 + 64);
  MEMORY[0x28223BE20](v169);
  sub_22BE17B98();
  v444 = v172;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v173);
  sub_22BE19490();
  v441 = v174;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v175);
  sub_22BE19490();
  v440 = v176;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v177);
  sub_22BE19490();
  v437 = v178;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v179);
  sub_22BE19490();
  v436 = v180;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v181);
  sub_22BE19490();
  v442 = v182;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v183);
  sub_22BE19490();
  v439 = v184;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v185);
  sub_22BE19490();
  v438 = v186;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v187);
  sub_22BE19490();
  v443 = v188;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v189);
  sub_22BE19490();
  v435 = v190;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v191);
  sub_22BE19490();
  v434 = v192;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v193);
  sub_22BE19490();
  v433 = v194;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v195);
  sub_22BE19490();
  v431 = v196;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v197);
  sub_22BE19490();
  v430 = v198;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v199);
  sub_22BE19490();
  v429 = v200;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v201);
  sub_22BE19490();
  v425 = v202;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v203);
  sub_22BE19490();
  v432 = v204;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v205);
  sub_22BE19490();
  v428 = v206;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v207);
  sub_22BE19490();
  v427 = v208;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v209);
  sub_22BE19490();
  v426 = v210;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v211);
  sub_22BE19490();
  v421 = v212;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v213);
  sub_22BE19490();
  v423 = v214;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v215);
  sub_22BE19490();
  v419 = v216;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v217);
  sub_22BE19490();
  v417 = v218;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v219);
  sub_22BE19490();
  v415 = v220;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v221);
  sub_22BE19490();
  v422 = v222;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v223);
  sub_22BE19490();
  v424 = v224;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v225);
  sub_22BE19490();
  v418 = v226;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v227);
  sub_22BE19490();
  v416 = v228;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v229);
  sub_22BE19490();
  v420 = v230;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v231);
  sub_22BE19490();
  v414 = v232;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v233);
  sub_22BE19490();
  v413 = v234;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v235);
  sub_22BE19490();
  v412 = v236;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v237);
  sub_22BE25F20();
  MEMORY[0x28223BE20](v238);
  sub_22BE360F8();
  MEMORY[0x28223BE20](v239);
  sub_22BE28EF4();
  MEMORY[0x28223BE20](v240);
  sub_22BE2017C();
  MEMORY[0x28223BE20](v241);
  sub_22BE1B604();
  MEMORY[0x28223BE20](v242);
  sub_22BE1C17C();
  v243 = sub_22BE5CE4C(&qword_27D912590, &unk_22C2B7AB0);
  sub_22BE19448(v243);
  v245 = *(v244 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v246);
  sub_22BE2C64C();
  v248 = (v6 + *(v247 + 56));
  sub_22BE1A964(v452, v6);
  v249 = v453;
  v454 = v248;
  sub_22BE1A964(v249, v248);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v308 = sub_22BE17E44();
      sub_22BE1A964(v308, v1);
      if (sub_22C18E658() == 1)
      {
        sub_22BE46150();
        sub_22C171FA8(v0, v387);
        sub_22BE191CC();
        static UserTurnStarted.== infix(_:_:)();
        sub_22C171FFC();
        goto LABEL_137;
      }

      sub_22BE4875C();
      goto LABEL_174;
    case 2u:
      v300 = sub_22BE17E44();
      sub_22BE1A964(v300, v2);
      v302 = *v2;
      v301 = v2[1];
      v303 = v2[2];
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_165;
      }

      v304 = v454[2];
      if (v302 != *v454 || v301 != v454[1])
      {
        sub_22BE36680();
        if ((sub_22BE3C8EC() & 1) == 0)
        {
          goto LABEL_154;
        }
      }

      sub_22BE2590C();
      sub_22BE9FF7C();
      goto LABEL_73;
    case 3u:
      v306 = sub_22BE17E44();
      sub_22BE1A964(v306, v0);
      if (sub_22C18F40C() == 3)
      {
        sub_22BE28EA8();
        sub_22C171FA8(v1, v388);
        sub_22BE1A8C4();
        static Request.== infix(_:_:)();
        sub_22C171FFC();
        sub_22BE18040();
        goto LABEL_137;
      }

      sub_22BE26A6C();
      goto LABEL_174;
    case 4u:
      v274 = sub_22BE17E44();
      sub_22BE1A964(v274, v3);
      *(v467 + 1) = sub_22C18F994();
      if (sub_22C18E658() == 4)
      {
        v275 = v0[1];
        v459 = *v0;
        v460 = v275;
        v277 = *v0;
        v276 = v0[1];
        v461[0] = v0[2];
        *(v461 + 9) = *(v0 + 41);
        v456 = *v3;
        v457 = v3[1];
        *v458 = v3[2];
        *&v458[9] = *(v3 + 41);
        *v455 = v0[2];
        *&v455[9] = *(v0 + 41);
        static Session.Plan.== infix(_:_:)();
        sub_22C10D970(&v459);
        sub_22C10D970(&v462);
        goto LABEL_138;
      }

      sub_22C10D970(&v462);
      goto LABEL_175;
    case 5u:
      v321 = sub_22BE17E44();
      sub_22BE1A964(v321, v5);
      if (sub_22C18E658() == 5)
      {
        sub_22BE23784();
        sub_22C171FA8(v0, v389);
        sub_22C0B1B94();
        static Action.== infix(_:_:)();
        sub_22C18EBB0();
        sub_22C171FFC();
        goto LABEL_137;
      }

      sub_22BE1C3A4();
      goto LABEL_174;
    case 6u:
      v325 = sub_22BE17E44();
      sub_22BE1A964(v325, v412);
      if (sub_22C18E658() != 6)
      {
        goto LABEL_174;
      }

      sub_22C18E254();
      sub_22C171FA8(v0, v390);
      sub_22BE1C2A0();
      static ActionCancellation.== infix(_:_:)();
      goto LABEL_136;
    case 7u:
      v307 = sub_22BE17E44();
      sub_22BE1A964(v307, v413);
      if (sub_22C18E658() != 7)
      {
        goto LABEL_174;
      }

      sub_22BE3C3F8();
      sub_22C171FA8(v0, v391);
      sub_22BE1C2A0();
      static ClientAction.== infix(_:_:)();
      goto LABEL_136;
    case 8u:
      v341 = sub_22BE17E44();
      sub_22BE1A964(v341, v414);
      if (sub_22C18E658() != 8)
      {
        goto LABEL_174;
      }

      sub_22BE35FFC();
      sub_22C171FA8(v0, v392);
      sub_22BE1C2A0();
      static QueryStep.== infix(_:_:)();
      goto LABEL_136;
    case 9u:
      v284 = sub_22BE17E44();
      sub_22BE1A964(v284, v420);
      if (sub_22C18E658() != 9)
      {
        goto LABEL_174;
      }

      v285 = sub_22BE431F0();
      sub_22C171FA8(v285, v393);
      sub_22BE1C2A0();
      if (_s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0())
      {
        v286 = *(v379 + 20);
        v287 = *(v420 + v286);
        v288 = *(v393 + v286);
        sub_22BE95FFC();
      }

      goto LABEL_123;
    case 0xAu:
      v340 = sub_22BE17E44();
      sub_22BE1A964(v340, v416);
      if (sub_22C18E658() != 10)
      {
        goto LABEL_174;
      }

      sub_22BE3C4F4();
      sub_22C171FA8(v0, v394);
      sub_22BE1C2A0();
      static Session.RecoverableError.== infix(_:_:)();
      goto LABEL_136;
    case 0xBu:
      v270 = sub_22BE17E44();
      sub_22BE1A964(v270, v418);
      if (sub_22C18E658() != 11)
      {
        goto LABEL_174;
      }

      v271 = sub_22BE431F0();
      sub_22C171FA8(v271, v395);
      v272 = sub_22BE1C2A0();
      static SessionError.== infix(_:_:)(v272, v273);
      goto LABEL_136;
    case 0xCu:
      v282 = sub_22BE17E44();
      sub_22BE1A964(v282, v424);
      if (sub_22C18E658() != 12)
      {
        goto LABEL_174;
      }

      sub_22C18E29C();
      sub_22C171FA8(v0, v397);
      if (sub_22BE9FFC4(*v424, *v397))
      {
        sub_22C18F26C(StepResults);
        if (_s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0())
        {
          v283 = *(StepResults + 24);
          sub_22C26E1B4();
        }
      }

      goto LABEL_123;
    case 0xDu:
      v323 = sub_22BE17E44();
      sub_22BE1A964(v323, v422);
      if (sub_22C18E658() != 13)
      {
        goto LABEL_174;
      }

      v324 = sub_22BE431F0();
      sub_22C171FA8(v324, v396);
      sub_22BE1C2A0();
      static ActionResolverRequest.== infix(_:_:)();
      goto LABEL_136;
    case 0xEu:
      v266 = sub_22BE17E44();
      sub_22BE1A964(v266, v415);
      v267 = *v415;
      if (sub_22C18F40C() != 14)
      {
        goto LABEL_166;
      }

      v268 = *v1;
      sub_22BE18040();
      sub_22BE96440();
      goto LABEL_116;
    case 0xFu:
      if (sub_22C18FC74() != 15)
      {
        goto LABEL_175;
      }

      goto LABEL_189;
    case 0x10u:
      v261 = sub_22BE17E44();
      sub_22BE1A964(v261, v417);
      v263 = *v417;
      v262 = v417[1];
      sub_22BE29454();
      if (swift_getEnumCaseMultiPayload() != 16)
      {
        goto LABEL_166;
      }

      v264 = v454[1];
      if (v262)
      {
        if (v264)
        {
          v265 = v263 == *v454 && v262 == v264;
          if (!v265)
          {
            sub_22BE1C2A0();
            sub_22C274014();

            goto LABEL_188;
          }

LABEL_147:

          goto LABEL_148;
        }
      }

      else
      {

        if (!v264)
        {
LABEL_148:

          goto LABEL_189;
        }
      }

LABEL_188:

LABEL_189:
      sub_22BE1A7E0();
      sub_22C171FFC();
LABEL_176:
      sub_22BE1AABC();
      return;
    case 0x11u:
      v309 = sub_22BE17E44();
      sub_22BE1A964(v309, v419);
      v310 = *v419;
      v311 = v419[1];
      sub_22BE29454();
      if (swift_getEnumCaseMultiPayload() != 17)
      {
        goto LABEL_165;
      }

      v312 = *v454;
      v313 = v454[1];
      sub_22BE18040();
      sub_22BE9FED4();
      if ((v314 & 1) == 0)
      {
        goto LABEL_154;
      }

      sub_22BE2590C();
      sub_22BE9FED4();
      goto LABEL_73;
    case 0x12u:
      v326 = sub_22BE17E44();
      sub_22BE1A964(v326, v423);
      v327 = *(v423 + 8);
      v328 = *(v423 + 24);
      v329 = *(v423 + 40);
      v330 = *(v423 + 48);
      if (swift_getEnumCaseMultiPayload() == 18)
      {
        v331 = *(v423 + 32);
        v332 = *(v423 + 16);
        v333 = *v248;
        v334 = v248[1];
        v335 = v454[2];
        v336 = v454[3];
        v337 = *(v454 + 8);
        v338 = v454[5];
        v339 = v454[6];
        v462 = *v423;
        v463 = v327;
        v464 = v332;
        v465 = v328;
        v466 = v331;
        v467[0] = v329;
        v467[1] = v330;
        *&v459 = v333;
        *(&v459 + 1) = v334;
        *&v460 = v335;
        *(&v460 + 1) = v336;
        LODWORD(v461[0]) = v337;
        *(&v461[0] + 1) = v338;
        *&v461[1] = v339;
        static ToolRetrievalResponse.== infix(_:_:)(&v462);

        sub_22BE1A7E0();
        goto LABEL_139;
      }

LABEL_165:

LABEL_166:

      goto LABEL_175;
    case 0x13u:
      v359 = sub_22BE17E44();
      sub_22BE1A964(v359, v421);
      v360 = *v421;
      if (sub_22C18F40C() != 19)
      {
        goto LABEL_166;
      }

      v361 = *v1;
      sub_22BE18040();
      sub_22BE96494();
LABEL_116:

      goto LABEL_138;
    case 0x14u:
      v318 = sub_22BE17E44();
      sub_22BE1A964(v318, v426);
      if (sub_22C18E658() == 20)
      {
        v279 = v445;
        sub_22BE286F0();
        v319 = sub_22BE36680();
        v320(v319);
        sub_22BE18240();
        sub_22C26F744();
        goto LABEL_113;
      }

      v375 = sub_22BE28D70();
      v377 = v446;
      goto LABEL_173;
    case 0x15u:
      v322 = sub_22BE17E44();
      sub_22BE1A964(v322, v427);
      if (sub_22C18E658() != 21)
      {
        goto LABEL_174;
      }

      sub_22C18E26C();
      sub_22C171FA8(v0, v398);
      sub_22BE1C2A0();
      static StatementResult.== infix(_:_:)();
      goto LABEL_136;
    case 0x16u:
      v351 = sub_22BE17E44();
      sub_22BE1A964(v351, v428);
      if (sub_22C18E658() != 22)
      {
        goto LABEL_174;
      }

      v352 = sub_22BE431F0();
      sub_22C171FA8(v352, v399);
      sub_22BE1C2A0();
      static ExternalAgentRequest.== infix(_:_:)();
      goto LABEL_136;
    case 0x17u:
      v362 = sub_22BE17E44();
      sub_22BE1A964(v362, v432);
      if (sub_22C18E658() != 23)
      {
        goto LABEL_174;
      }

      v363 = sub_22BE431F0();
      sub_22C171FA8(v363, v401);
      sub_22BE1C2A0();
      if (_s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0())
      {
        sub_22C18F26C(v384);
        if (sub_22C26F884())
        {
          sub_22BE9693C(*(v432 + *(v384 + 24)), *(v401 + *(v384 + 24)));
        }
      }

      goto LABEL_123;
    case 0x18u:
      v292 = sub_22BE17E44();
      sub_22BE1A964(v292, v425);
      v294 = *v425;
      v293 = v425[1];
      v295 = v425[2];
      if (swift_getEnumCaseMultiPayload() != 24)
      {
        goto LABEL_165;
      }

      v296 = v454[2];
      if (v294 != *v454 || v293 != v454[1])
      {
        sub_22BE36680();
        if ((sub_22BE3C8EC() & 1) == 0)
        {
LABEL_154:

          goto LABEL_188;
        }
      }

      v298 = sub_22BE2590C();
      sub_22BE9693C(v298, v299);
LABEL_73:

      goto LABEL_189;
    case 0x19u:
      v289 = sub_22BE17E44();
      sub_22BE1A964(v289, v429);
      if (sub_22C18E658() != 25)
      {
        goto LABEL_174;
      }

      sub_22BE36CE8();
      sub_22C171FA8(v0, v400);
      v290 = sub_22BE1C2A0();
      static ToolResolution.== infix(_:_:)(v290, v291);
      goto LABEL_136;
    case 0x1Au:
      v374 = sub_22BE17E44();
      sub_22BE1A964(v374, v430);
      if (sub_22C18E658() != 26)
      {
        goto LABEL_174;
      }

      sub_22BE41514();
      sub_22C171FA8(v0, v402);
      sub_22BE1C2A0();
      static UndoRedoRequest.== infix(_:_:)();
      goto LABEL_136;
    case 0x1Bu:
      v255 = sub_22BE17E44();
      sub_22BE1A964(v255, v431);
      if (sub_22C18E658() != 27)
      {
        goto LABEL_174;
      }

      sub_22C18E2CC();
      sub_22C171FA8(v0, v403);
      sub_22BE1C2A0();
      static ClientUndoRedoRequest.== infix(_:_:)();
      goto LABEL_136;
    case 0x1Cu:
      v364 = sub_22BE17E44();
      sub_22BE1A964(v364, v433);
      if (sub_22C18E658() != 28)
      {
        goto LABEL_174;
      }

      sub_22BE37B38();
      sub_22C171FA8(v0, v404);
      v365 = sub_22BE1C2A0();
      static TypeConversionRequest.== infix(_:_:)(v365, v366);
      goto LABEL_136;
    case 0x1Du:
      v367 = sub_22BE17E44();
      sub_22BE1A964(v367, v434);
      if (sub_22C18E658() != 29)
      {
        goto LABEL_174;
      }

      sub_22BE22B40();
      sub_22C171FA8(v0, v405);
      v368 = sub_22BE1C2A0();
      static TypeConversionResult.== infix(_:_:)(v368, v369);
      goto LABEL_136;
    case 0x1Eu:
      v342 = sub_22BE17E44();
      sub_22BE1A964(v342, v435);
      if (sub_22C18E658() != 30)
      {
        goto LABEL_174;
      }

      sub_22BE3CA54();
      sub_22C171FA8(v0, v406);
      sub_22BE1C2A0();
      static QueryDecorationResult.== infix(_:_:)();
      goto LABEL_136;
    case 0x1Fu:
      if (sub_22C18FC74() != 31)
      {
        goto LABEL_175;
      }

      goto LABEL_189;
    case 0x20u:
      v343 = sub_22BE17E44();
      sub_22BE1A964(v343, v443);
      if (sub_22C18E658() != 32)
      {
        sub_22BE291DC();
        goto LABEL_174;
      }

      sub_22C18E23C();
      sub_22C171FA8(v0, v409);
      sub_22BE33560();
      if (_s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0())
      {
        sub_22C18FF2C(*(DecorationPrePlannerResult + 20));
        v346 = v265 && v344 == v345;
        if (v346 || (sub_22C274014() & 1) != 0)
        {
          v347 = *(DecorationPrePlannerResult + 24);
          v348 = *(v443 + v347 + 8);
          v462 = *(v443 + v347);
          LOBYTE(v463) = v348;
          v349 = (v409 + v347);
          v350 = *v349;
          LOBYTE(v349) = *(v349 + 8);
          *&v459 = v350;
          BYTE8(v459) = v349;

          static QueryDecorationPrePlannerResultPayload.== infix(_:_:)(&v462, &v459);
        }
      }

      sub_22C18EB80();
      sub_22C171FFC();
LABEL_186:
      sub_22C171FFC();
      goto LABEL_189;
    case 0x21u:
      v269 = sub_22BE17E44();
      sub_22BE1A964(v269, v438);
      if (sub_22C18E658() != 33)
      {
        goto LABEL_174;
      }

      sub_22BE1B674();
      sub_22C171FA8(v0, v407);
      sub_22BE1C2A0();
      _s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0();
LABEL_136:
      sub_22C171FFC();
      goto LABEL_137;
    case 0x22u:
      v256 = sub_22BE17E44();
      sub_22BE1A964(v256, v439);
      if (sub_22C18E658() != 34)
      {
        goto LABEL_174;
      }

      sub_22C18E2B4();
      sub_22C171FA8(v0, v408);
      sub_22BE1C2A0();
      static ExecutionPreconditionEvaluatorRequest.ActionRequest.== infix(_:_:)();
      if (v257)
      {
        v258 = *(v380 + 20);
        v259 = *(v439 + v258);
        v260 = *(v408 + v258);
        sub_22BEA33FC();
      }

LABEL_123:
      sub_22C171FFC();
      goto LABEL_186;
    case 0x23u:
      v251 = sub_22BE17E44();
      sub_22BE1A964(v251, v442);
      if (sub_22C18E658() != 35)
      {
        goto LABEL_174;
      }

      sub_22C18E2E4();
      sub_22C171FA8(v0, v410);
      sub_22BE1C2A0();
      if (sub_22C26E1B4())
      {
        sub_22C18F26C(v381);
        static RequestContent.== infix(_:_:)();
      }

      sub_22BE3255C();
      sub_22C171FFC();
      goto LABEL_186;
    case 0x24u:
      v252 = sub_22BE17E44();
      sub_22BE1A964(v252, v436);
      v254 = *v436;
      v253 = v436[1];
      if (sub_22C18F40C() != 36)
      {
        goto LABEL_166;
      }

      goto LABEL_129;
    case 0x25u:
      if (sub_22C18FC74() != 37)
      {
        goto LABEL_175;
      }

      goto LABEL_189;
    case 0x26u:
      v370 = sub_22BE17E44();
      sub_22BE1A964(v370, v437);
      v254 = *v437;
      v253 = v437[1];
      if (sub_22C18F40C() != 38)
      {
        goto LABEL_166;
      }

LABEL_129:
      v371 = *v1;
      v372 = v1[1];
      if (v254 == v371 && v253 == v372)
      {
        goto LABEL_147;
      }

      sub_22BE3C5E4();
      sub_22BE3C8EC();

      goto LABEL_188;
    case 0x27u:
      v353 = sub_22BE17E44();
      sub_22BE1A964(v353, v440);
      if (sub_22C18E658() == 39)
      {
        v279 = v447;
        sub_22BE286F0();
        v354 = sub_22BE36680();
        v355(v354);
        sub_22BE18240();
        sub_22C270054();
        goto LABEL_113;
      }

      v375 = sub_22BE28D70();
      v377 = v448;
      goto LABEL_173;
    case 0x28u:
      v278 = sub_22BE17E44();
      sub_22BE1A964(v278, v441);
      if (sub_22C18E658() == 40)
      {
        v279 = v449;
        sub_22BE286F0();
        v280 = sub_22BE36680();
        v281(v280);
        sub_22BE18240();
        sub_22C270214();
LABEL_113:
        v356 = *(v279 + 8);
        v357 = sub_22BE38970();
        v356(v357);
        v358 = sub_22BE200E0();
        v356(v358);
        goto LABEL_138;
      }

      v375 = sub_22BE28D70();
      v377 = v450;
LABEL_173:
      v376(v375, v377);
      goto LABEL_175;
    case 0x29u:
      v315 = sub_22BE17E44();
      sub_22BE1A964(v315, v444);
      if (sub_22C18E658() != 41)
      {
        goto LABEL_174;
      }

      v316 = sub_22BE431F0();
      sub_22C171FA8(v316, v411);
      v317 = *v444 == *v411 && v444[1] == v411[1];
      if (v317 || (sub_22C274014() & 1) != 0)
      {
        sub_22C18F26C(v385);
        static AgentPrimitiveAction.PrimitiveAction.== infix(_:_:)();
        sub_22C18E284();
        sub_22C171FFC();
      }

      else
      {
        sub_22C18E284();
        sub_22C171FFC();
      }

      goto LABEL_186;
    case 0x2Au:
      if (sub_22C18FC74() != 42)
      {
        goto LABEL_175;
      }

      goto LABEL_189;
    case 0x2Bu:
      if (sub_22C18FC74() != 43)
      {
        goto LABEL_175;
      }

      goto LABEL_189;
    default:
      v250 = sub_22BE17E44();
      sub_22BE1A964(v250, v4);
      if (sub_22C18E658())
      {
        sub_22BE23F00();
LABEL_174:
        sub_22C171FFC();
LABEL_175:
        sub_22C18DC5C(v6, &qword_27D912590);
      }

      else
      {
        v378 = sub_22BE431F0();
        sub_22C171FA8(v378, v382);
        static SessionStart.== infix(_:_:)();
        sub_22C171FFC();
LABEL_137:
        sub_22C171FFC();
LABEL_138:
        sub_22BE1A7E0();
LABEL_139:
        sub_22C171FFC();
      }

      goto LABEL_176;
  }
}

void static SessionStart.== infix(_:_:)()
{
  sub_22BE19460();
  v4 = v3;
  v6 = v5;
  v7 = sub_22C26EC34();
  v8 = sub_22BE179D8(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE17A44();
  sub_22BE3668C(v13);
  v14 = sub_22BE5CE4C(&qword_27D911C20, &qword_22C2B5060);
  sub_22BE19448(v14);
  v16 = *(v15 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  sub_22BE1A174();
  sub_22BE3BF90(v18);
  v67 = sub_22BE5CE4C(&qword_27D912598, &unk_22C2B7AC0);
  sub_22BE18000(v67);
  v20 = *(v19 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v21);
  sub_22BE1A174();
  v68 = v22;
  sub_22BE183BC();
  v23 = sub_22C26EA84();
  v24 = sub_22BE179D8(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  sub_22BE28FD8();
  v29 = sub_22BE5CE4C(&qword_27D911F60, &unk_22C2B5CD0);
  sub_22BE19448(v29);
  v31 = *(v30 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v32);
  sub_22BE25CD0();
  v33 = sub_22BE5CE4C(&qword_27D9125A0, &qword_22C2B7AD0);
  sub_22C18DFEC(v33);
  v35 = *(v34 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v36);
  sub_22BE1A8B4();
  sub_22BE3C968();
  if ((sub_22C26EC84() & 1) == 0)
  {
    goto LABEL_22;
  }

  v64 = v10;
  v65 = type metadata accessor for SessionStart(0);
  v37 = v65[5];
  v38 = *(v0 + 48);
  sub_22C18FD58();
  sub_22BE22814();
  v39 = v4;
  sub_22BE22814();
  sub_22BE181B0(v1);
  if (v40)
  {
    sub_22BE181B0(v1 + v38);
    if (v40)
    {
      sub_22C18DC5C(v1, &qword_27D911F60);
      goto LABEL_12;
    }

LABEL_10:
    v44 = &qword_27D9125A0;
LABEL_21:
    sub_22C18DC5C(v1, v44);
    goto LABEL_22;
  }

  sub_22BE38FD8();
  sub_22BE22814();
  sub_22BE181B0(v1 + v38);
  if (v40)
  {
    v41 = *(v26 + 8);
    v42 = sub_22BE431C0();
    v43(v42);
    goto LABEL_10;
  }

  (*(v26 + 32))(v2, v1 + v38, v23);
  sub_22BE41F14();
  sub_22BE20458(v45);
  v46 = sub_22C272FD4();
  v47 = *(v26 + 8);
  v47(v2, v23);
  v48 = sub_22BE431C0();
  (v47)(v48);
  sub_22C18DC5C(v1, &qword_27D911F60);
  if ((v46 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_12:
  v49 = v65[6];
  v1 = v68;
  v50 = *(v67 + 48);
  sub_22BE27B84();
  sub_22BE22814();
  sub_22BE27B84();
  sub_22BE22814();
  sub_22BE406A0();
  sub_22C18FD0C();
  sub_22BE1AB5C(v51, v52, v53);
  if (v40)
  {
    sub_22BE200F8(v68 + v50);
    if (v40)
    {
      sub_22C18DC5C(v68, &qword_27D911C20);
LABEL_24:
      v63 = *(v6 + v65[7]) ^ *(v39 + v65[7]) ^ 1u;
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  sub_22BE22814();
  sub_22BE200F8(v68 + v50);
  if (v54)
  {
    v55 = sub_22C18E474();
    v56(v55);
LABEL_20:
    v44 = &qword_27D912598;
    goto LABEL_21;
  }

  sub_22BE47DF4();
  v57(v66, v68 + v50, v49);
  sub_22C18E214();
  sub_22BE20458(v58);
  sub_22C0B1B94();
  v59 = sub_22C272FD4();
  v60 = *(v64 + 8);
  v61 = sub_22BE191CC();
  v60(v61);
  v62 = sub_22BE33BE8();
  v60(v62);
  sub_22C18DC5C(v68, &qword_27D911C20);
  if (v59)
  {
    goto LABEL_24;
  }

LABEL_22:
  sub_22BE1AABC();
}

void static UserTurnStarted.== infix(_:_:)()
{
  sub_22BE19460();
  sub_22C18E58C();
  v5 = sub_22C271394();
  v6 = sub_22BE179D8(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE197B8();
  v9 = sub_22BE5CE4C(&qword_27D9120B0, &qword_22C2B5F00);
  sub_22BE19448(v9);
  v11 = *(v10 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE19E64();
  v13 = sub_22BE5CE4C(&qword_27D9125B8, &qword_22C2B7AD8);
  sub_22C18DFEC(v13);
  v15 = *(v14 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  sub_22BE389B4();
  if (_s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0())
  {
    v17 = type metadata accessor for UserTurnStarted(0);
    sub_22C18FCBC(v17);
    v19 = *(v2 + v18);
    v20 = *(v1 + v18);
    if (v19)
    {
      if (!v20)
      {
        goto LABEL_20;
      }
    }

    else if (v20)
    {
      goto LABEL_20;
    }

    sub_22C18FF2C(*(v4 + 24));
    v23 = v23 && v21 == v22;
    if (v23 || (sub_22C274014() & 1) != 0)
    {
      v24 = *(v4 + 28);
      v25 = *(v3 + 48);
      sub_22BE3D108();
      sub_22BE22814();
      sub_22BE3D108();
      sub_22BE22814();
      sub_22BE181B0(v0);
      if (!v23)
      {
        sub_22BE191CC();
        sub_22BE22814();
        sub_22BE181B0(v0 + v25);
        if (!v26)
        {
          v29 = sub_22BE38638();
          v30(v29);
          sub_22BE3D20C();
          sub_22BE20458(v31);
          sub_22BE1AB74();
          sub_22C272FD4();
          v32 = off_27D9120B8;
          v33 = sub_22BE19454();
          v32(v33);
          v34 = sub_22BE3C5E4();
          v32(v34);
          sub_22C18DC5C(v0, &qword_27D9120B0);
          goto LABEL_20;
        }

        v27 = sub_22BE2399C();
        v28(v27, v5);
LABEL_19:
        sub_22C18DC5C(v0, &qword_27D9125B8);
        goto LABEL_20;
      }

      sub_22BE181B0(v0 + v25);
      if (!v23)
      {
        goto LABEL_19;
      }

      sub_22C18DC5C(v0, &qword_27D9120B0);
    }
  }

LABEL_20:
  sub_22BE1AABC();
}

void static Request.== infix(_:_:)()
{
  sub_22BE19460();
  v7 = v6;
  sub_22BE2021C();
  v180 = type metadata accessor for DateTimeContext();
  v8 = sub_22BE18000(v180);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE188B0();
  v11 = sub_22BE5CE4C(&qword_27D911F50, &qword_22C2B5EF0);
  sub_22BE19448(v11);
  v13 = *(v12 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22C18E504(v15);
  v179 = sub_22BE5CE4C(&qword_27D9125C8, &unk_22C2B7AE0);
  sub_22BE18000(v179);
  v17 = *(v16 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  sub_22BE3E508();
  v186 = sub_22C271394();
  v19 = sub_22BE179D8(v186);
  v183 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22BE17A44();
  v181 = v23;
  v24 = sub_22BE5CE4C(&qword_27D9120B0, &qword_22C2B5F00);
  sub_22BE19448(v24);
  v26 = *(v25 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v27);
  sub_22BE2BA30(v28, v171);
  v184 = sub_22BE5CE4C(&qword_27D9125B8, &qword_22C2B7AD8);
  sub_22BE18000(v184);
  v30 = *(v29 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v31);
  sub_22BE181D0(v32, v172);
  v190 = sub_22C26E1D4();
  v33 = sub_22BE179D8(v190);
  v188 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  sub_22BE17A44();
  sub_22BE252B8(v37);
  v38 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v38);
  v40 = *(v39 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v41);
  sub_22BE20168(v42, v173);
  v43 = sub_22BE5CE4C(&qword_27D90A8E8, &qword_22C288AF8);
  sub_22BE18000(v43);
  v45 = *(v44 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v46);
  sub_22BE1A174();
  v189 = v47;
  v48 = sub_22BE183BC();
  v49 = type metadata accessor for RequestPrescribedPlan(v48);
  v50 = sub_22C18DFEC(v49);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50);
  sub_22BE17CBC();
  v53 = sub_22BE5CE4C(&qword_27D911F58, &unk_22C2B5CC0);
  sub_22BE19448(v53);
  v55 = *(v54 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v56);
  sub_22BE1B01C();
  v57 = sub_22BE5CE4C(&qword_27D9125D0, &unk_22C2B7AF0);
  sub_22BE18000(v57);
  v59 = *(v58 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v60);
  sub_22BE1B72C();
  sub_22C18EA54();
  static RequestContent.== infix(_:_:)();
  if ((v61 & 1) == 0)
  {
    goto LABEL_23;
  }

  v62 = type metadata accessor for Request(0);
  if (*(v2 + *(v62 + 20)) != *(v7 + *(v62 + 20)))
  {
    goto LABEL_23;
  }

  v174 = v1;
  v175 = v5;
  v176 = v62;
  v177 = v2;
  v63 = *(v62 + 24);
  v64 = *(v57 + 48);
  sub_22C18F300();
  sub_22BE22814();
  sub_22BE22814();
  sub_22BE1AB5C(v0, 1, v4);
  v65 = v7;
  if (v66)
  {
    sub_22BE1AB5C(v0 + v64, 1, v4);
    if (v66)
    {
      sub_22C18DC5C(v0, &qword_27D911F58);
      goto LABEL_13;
    }

LABEL_11:
    v67 = &qword_27D9125D0;
    v68 = v0;
LABEL_22:
    sub_22C18DC5C(v68, v67);
    goto LABEL_23;
  }

  sub_22BE37490();
  sub_22BE22814();
  sub_22BE1AB5C(v0 + v64, 1, v4);
  if (v66)
  {
    sub_22C18E058();
    sub_22C171FFC();
    goto LABEL_11;
  }

  sub_22BE3A270();
  sub_22C171FA8(v0 + v64, v3);
  v69 = sub_22BE25C08();
  static RequestPrescribedPlan.== infix(_:_:)(v69, v70, v71, v72, v73, v74, v75, v76, v174, v175, v176, v2, v178, v179, v180, v181, v182, v183, v184, v185);
  v78 = v77;
  sub_22C171FFC();
  sub_22BE1AB1C();
  sub_22C171FFC();
  sub_22C18DC5C(v0, &qword_27D911F58);
  if ((v78 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_13:
  v79 = v176[7];
  v80 = *(v43 + 48);
  sub_22C0B1754();
  sub_22BE22814();
  sub_22C0B1754();
  sub_22BE22814();
  v81 = sub_22BE23E90();
  sub_22BE1AB5C(v81, v82, v190);
  if (v66)
  {
    sub_22BE1AB5C(v189 + v80, 1, v190);
    if (v66)
    {
      sub_22C18DC5C(v189, &qword_27D9082F0);
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  sub_22BE22814();
  sub_22BE1AB5C(v189 + v80, 1, v190);
  if (v83)
  {
    sub_22BE1B940();
    v84 = sub_22BE200E0();
    v85(v84);
LABEL_21:
    v67 = &qword_27D90A8E8;
    v68 = v189;
    goto LABEL_22;
  }

  sub_22C18F338();
  v86(v187, v189 + v80, v190);
  sub_22BE18B28();
  sub_22BE20458(v87);
  sub_22BE1B5E0();
  v88 = sub_22C272FD4();
  v89 = *(v188 + 8);
  v90 = sub_22BE1C2A0();
  v89(v90);
  v91 = sub_22BE200E0();
  v89(v91);
  sub_22C18DC5C(v189, &qword_27D9082F0);
  if ((v88 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_25:
  v92 = v176[8];
  v93 = *(v177 + v92);
  v94 = *(v177 + v92 + 8);
  v95 = *(v177 + v92 + 16);
  v96 = v65;
  v97 = (v65 + v92);
  v98 = v97[1];
  v99 = v97[2];
  if (!v94)
  {
    v114 = sub_22C18F248();
    sub_22BE3820C(v114, v115);
    if (!v98)
    {
      v128 = sub_22C18FE08();
      sub_22BE3820C(v128, v129);
      v130 = sub_22C18F248();
      sub_22BE37808(v130, v131);
      goto LABEL_40;
    }

    v116 = sub_22C18E7B8();
    sub_22BE3820C(v116, v117);
    goto LABEL_37;
  }

  if (!v98)
  {
    v118 = sub_22BE3C73C();
    sub_22BE3820C(v118, v119);
    v120 = sub_22C18FE08();
    sub_22BE3820C(v120, v121);
    v122 = sub_22BE3C73C();
    sub_22BE3820C(v122, v123);

LABEL_37:
    v124 = sub_22BE3C73C();
    sub_22BE37808(v124, v125);
    v126 = sub_22C18E7B8();
LABEL_38:
    sub_22BE37808(v126, v127);
    goto LABEL_23;
  }

  if (v93 != *v97 || v94 != v98)
  {
    sub_22C18EA54();
    if ((sub_22C274014() & 1) == 0)
    {
      v141 = sub_22BE3C73C();
      sub_22BE3820C(v141, v142);
      v143 = sub_22C18E7B8();
      sub_22BE3820C(v143, v144);
      v145 = sub_22BE3C73C();
      sub_22BE3820C(v145, v146);
      v147 = sub_22C18E7B8();
      sub_22BE37808(v147, v148);

      v126 = sub_22BE3C73C();
      goto LABEL_38;
    }
  }

  v101 = sub_22BE18944();
  v103 = sub_22BE9693C(v101, v102);
  v104 = sub_22BE3C73C();
  sub_22BE3820C(v104, v105);
  v106 = sub_22C18E7B8();
  sub_22BE3820C(v106, v107);
  v108 = sub_22BE3C73C();
  sub_22BE3820C(v108, v109);
  v110 = sub_22C18E7B8();
  sub_22BE37808(v110, v111);

  v112 = sub_22BE3C73C();
  sub_22BE37808(v112, v113);
  if ((v103 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_40:
  v132 = v176[9];
  v133 = *(v184 + 48);
  sub_22BE27B84();
  sub_22BE22814();
  sub_22BE27B84();
  sub_22BE22814();
  sub_22BE406A0();
  sub_22C18FD0C();
  sub_22BE1AB5C(v134, v135, v136);
  if (v66)
  {
    sub_22BE200F8(v185 + v133);
    v137 = v175;
    if (v66)
    {
      sub_22C18DC5C(v185, &qword_27D9120B0);
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  sub_22BE22814();
  sub_22BE200F8(v185 + v133);
  v137 = v175;
  if (v138)
  {
    v139 = sub_22C18E474();
    v140(v139);
LABEL_48:
    v67 = &qword_27D9125B8;
    v68 = v185;
    goto LABEL_22;
  }

  sub_22C18F338();
  v149(v181, v185 + v133, v132);
  sub_22BE3D20C();
  sub_22BE20458(v150);
  sub_22C0B1B94();
  v151 = sub_22C272FD4();
  v152 = *(v183 + 8);
  v153 = sub_22BE191CC();
  v152(v153);
  v154 = sub_22BE33BE8();
  v152(v154);
  sub_22C18DC5C(v185, &qword_27D9120B0);
  if ((v151 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_51:
  v155 = v176[10];
  v156 = (v177 + v155);
  v157 = *(v177 + v155 + 8);
  v158 = v96 + v155;
  v159 = *(v158 + 8);
  if (!v157)
  {
    if (!v159)
    {

      v161 = v176;
      goto LABEL_63;
    }

    v164 = *(v158 + 8);
LABEL_61:

    goto LABEL_23;
  }

  if (!v159)
  {
    goto LABEL_61;
  }

  sub_22BE3A508(v156);
  if (v66)
  {
    v162 = v160 == v159;
  }

  else
  {
    v162 = 0;
  }

  if (v162 || (v163 = sub_22BE2BC78(), v161 = v176, (v163 & 1) != 0))
  {
LABEL_63:
    v165 = v161[11];
    v166 = *(v179 + 48);
    sub_22BE27B84();
    sub_22BE22814();
    sub_22BE27B84();
    sub_22BE22814();
    v167 = sub_22BE26188();
    sub_22BE1AB5C(v167, v168, v180);
    if (v66)
    {
      sub_22BE1AB5C(v174 + v166, 1, v180);
      if (v66)
      {
        sub_22C18DC5C(v174, &qword_27D911F50);
        goto LABEL_23;
      }
    }

    else
    {
      sub_22BE22814();
      sub_22BE1AB5C(v174 + v166, 1, v180);
      if (!v169)
      {
        sub_22BE43230();
        sub_22C171FA8(v174 + v166, v137);
        v170 = sub_22C26E114();
        if (v170)
        {
          MEMORY[0x2318A6980](v178 + *(v180 + 20), v137 + *(v180 + 20));
          sub_22C171FFC();
          sub_22BE3C5E4();
          sub_22C171FFC();
          sub_22C18DC5C(v174, &qword_27D911F50);
          goto LABEL_23;
        }

        sub_22C171FFC();
        sub_22BE1AB74();
        sub_22C171FFC();
        v67 = &qword_27D911F50;
        goto LABEL_72;
      }

      sub_22BE379D8();
      sub_22C171FFC();
    }

    v67 = &qword_27D9125C8;
LABEL_72:
    v68 = v174;
    goto LABEL_22;
  }

LABEL_23:
  sub_22BE1AABC();
}

void static Session.Plan.== infix(_:_:)()
{
  sub_22BE22B9C();
  v1 = sub_22C18E738(v0);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v7 = *(v3 + 24);
  v6 = *(v3 + 32);
  v8 = *(v3 + 40);
  v9 = *(v3 + 48);
  LODWORD(v3) = *(v3 + 56);
  v10 = *(v2 + 16);
  v11 = *(v2 + 24);
  v13 = *(v2 + 32);
  v12 = *(v2 + 40);
  v14 = *(v2 + 48);
  v15 = v1 == *v2 && v4 == *(v2 + 8);
  v19 = *(v2 + 56);
  if (v15 || (sub_22C274014() & 1) != 0)
  {
    v16 = v5 == v10 && v7 == v11;
    if (v16 || (sub_22C18E18C(), (sub_22C274014() & 1) != 0))
    {
      v17 = sub_22BE29454();
      if ((sub_22BE964E8(v17) & 1) != 0 && v9 && v14 && (v8 != v12 || v9 != v14))
      {
        sub_22BE19454();
        sub_22C18F3BC();
      }
    }
  }

  sub_22BE234D8();
}

BOOL static Action.== infix(_:_:)()
{
  sub_22BE18378();
  if ((_s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for Action(0);
  sub_22C18E728(v1 + v5[5]);
  if (v8)
  {
    if (!v6)
    {
      return 0;
    }

    sub_22BE3A508(v7);
    v11 = v11 && v9 == v10;
    if (!v11 && (sub_22C274014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  sub_22BE43248(v5[6]);
  if (!v11)
  {
    return 0;
  }

  sub_22C18F380(v5[7]);
  sub_22BEA4440();
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  sub_22C18E728(v1 + v5[8]);
  if (v15)
  {
    if (!v13)
    {
      return 0;
    }

    sub_22BE3A508(v14);
    v18 = v11 && v16 == v17;
    if (!v18 && (sub_22C274014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  sub_22C18F2C4(v5[9]);
  v21 = v11 && v19 == v20;
  if (!v21 && (sub_22C274014() & 1) == 0)
  {
    return 0;
  }

  if (v1)
  {
    if (!v0)
    {
      return 0;
    }

    if (v5 == v2 && v1 == v0)
    {
      return v3 == v4;
    }

    sub_22BE1804C();
    sub_22C18EB68();
    if ((sub_22C274014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v0)
  {
    return 0;
  }

  return ((v3 ^ v4) & 1) == 0;
}

void static ActionCancellation.== infix(_:_:)()
{
  sub_22BE19460();
  sub_22BE23708();
  v1 = sub_22C26E684();
  v2 = sub_22BE179D8(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BE17CBC();
  v7 = sub_22BE1AEE4();
  v9 = sub_22BE5CE4C(v7, v8);
  sub_22BE19448(v9);
  v11 = *(v10 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE1B01C();
  v13 = sub_22BE5CE4C(&qword_27D9092B8, &qword_22C27FEA0);
  sub_22BE19448(v13);
  v15 = *(v14 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  sub_22BE25CD0();
  v18 = *(v17 + 56);
  sub_22BE324FC();
  sub_22BE3D108();
  sub_22BE22814();
  sub_22BE3D108();
  sub_22BE22814();
  sub_22BE181B0(v0);
  if (v19)
  {
    sub_22BE181B0(v0 + v18);
    if (v19)
    {
      sub_22C18DC5C(v0, &qword_27D907240);
LABEL_12:
      v31 = type metadata accessor for ActionCancellation(0);
      sub_22C18F344(*(v31 + 20));
      v23 = _s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  sub_22BE29454();
  sub_22BE22814();
  sub_22BE181B0(v0 + v18);
  if (v19)
  {
    v20 = *(v4 + 8);
    v21 = sub_22BE36680();
    v22(v21);
LABEL_9:
    sub_22C18DC5C(v0, &qword_27D9092B8);
    goto LABEL_10;
  }

  sub_22C18EB74();
  v24 = sub_22BE3BD64();
  v25(v24);
  sub_22BE18F44();
  sub_22BE20458(v26);
  sub_22BE25C08();
  v27 = sub_22C272FD4();
  v28 = *(v4 + 8);
  v29 = sub_22BE3C5E4();
  v28(v29);
  v30 = sub_22BE36680();
  v28(v30);
  sub_22C18DC5C(v0, &qword_27D907240);
  if (v27)
  {
    goto LABEL_12;
  }

LABEL_10:
  v23 = 0;
LABEL_13:
  sub_22BE1C1DC(v23);
  sub_22BE1AABC();
}

void static ClientAction.== infix(_:_:)()
{
  sub_22BE18378();
  if (_s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0())
  {
    v2 = type metadata accessor for ClientAction(0);
    sub_22C18F27C(v2);
    sub_22C18E1A0(v3);
    v6 = v6 && v4 == v5;
    if (v6 || (sub_22C274014() & 1) != 0)
    {
      sub_22C18F380(v1[6]);
      sub_22BEA6844();
      if (v7)
      {
        sub_22C18E728(v0 + v1[7]);
        if (v10)
        {
          if (!v8)
          {
            return;
          }

          sub_22BE3A508(v9);
          v13 = v6 && v11 == v12;
          if (!v13 && (sub_22C274014() & 1) == 0)
          {
            return;
          }
        }

        else if (v8)
        {
          return;
        }

        sub_22C18E728(v0 + v1[8]);
        if (v16)
        {
          if (!v14)
          {
            return;
          }

          sub_22BE3A508(v15);
          v19 = v6 && v17 == v18;
          if (!v19 && (sub_22C274014() & 1) == 0)
          {
            return;
          }
        }

        else if (v14)
        {
          return;
        }

        sub_22C18F380(v1[9]);

        sub_22BEA6B1C();
      }
    }
  }
}

void static QueryStep.== infix(_:_:)()
{
  sub_22BE19460();
  v3 = sub_22BE23C8C();
  v4 = type metadata accessor for ActionParameterContext(v3);
  v5 = sub_22C18DFEC(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE38390();
  v8 = sub_22BE5CE4C(&qword_27D911F48, &unk_22C2B5CB0);
  sub_22BE19448(v8);
  v10 = *(v9 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE25CD0();
  v12 = sub_22BE5CE4C(&qword_27D9125D8, &qword_22C2B7B00);
  sub_22BE18000(v12);
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE19E64();
  sub_22BE18944();
  if ((_s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    goto LABEL_14;
  }

  Step = type metadata accessor for QueryStep(0);
  v16 = Step[5];
  v17 = *(v12 + 48);
  sub_22C18F844();
  sub_22C18F844();
  sub_22BE1AB5C(v1, 1, v2);
  if (!v18)
  {
    sub_22BE2590C();
    sub_22BE22814();
    sub_22BE1AB5C(v1 + v17, 1, v2);
    if (!v18)
    {
      sub_22C171FA8(v1 + v17, v0);
      sub_22BE232C8();
      static ActionParameterContext.== infix(_:_:)();
      v20 = v19;
      sub_22C171FFC();
      sub_22BE36658();
      sub_22C171FFC();
      sub_22C18DC5C(v1, &qword_27D911F48);
      if ((v20 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_12;
    }

    sub_22C0E9830();
    sub_22C171FFC();
LABEL_10:
    sub_22C18DC5C(v1, &qword_27D9125D8);
    goto LABEL_14;
  }

  sub_22BE1AB5C(v1 + v17, 1, v2);
  if (!v18)
  {
    goto LABEL_10;
  }

  sub_22C18DC5C(v1, &qword_27D911F48);
LABEL_12:
  sub_22C18EA3C(Step[6]);
  static QueryPayload.== infix(_:_:)();
  if (v21)
  {
    sub_22C18F38C(Step[7]);
  }

LABEL_14:
  sub_22BE1AABC();
}

BOOL static Session.RecoverableError.== infix(_:_:)()
{
  sub_22BE18378();
  v2 = sub_22BE5CE4C(&qword_27D9125E0, &qword_22C2B7B08);
  sub_22BE19448(v2);
  v4 = *(v3 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE1AEF0();
  v7 = *(v6 + 56);
  sub_22BE1A964(v0, v1);
  sub_22C18FAF4();
  v8 = static Session.PlanGenerationError.== infix(_:_:)(v1);
  sub_22C171FFC();
  sub_22BE1804C();
  sub_22C171FFC();
  return v8;
}

uint64_t static QueryStepResults.== infix(_:_:)()
{
  sub_22BE18378();
  if ((sub_22BE9FFC4(*v0, *v1) & 1) == 0)
  {
    return 0;
  }

  StepResults = type metadata accessor for QueryStepResults(0);
  sub_22BE3E750(StepResults);
  if ((_s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  sub_22C18EA3C(*(StepResults + 24));

  return sub_22C26E1B4();
}

uint64_t static ActionResolverRequest.== infix(_:_:)()
{
  sub_22BE18378();
  if ((_s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for ActionResolverRequest(0);
  sub_22C18F27C(v6);
  sub_22C18F380(v7);
  sub_22BEA5C9C();
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = sub_22C18F380(v2[6]);
  if ((sub_22BF6FD98(v9, v10) & 1) == 0)
  {
    return 0;
  }

  sub_22C18F380(v2[7]);
  sub_22BEA657C();
  if ((v11 & 1) == 0)
  {
    return 0;
  }

  sub_22BE43248(v2[8]);
  if (!v15)
  {
    return 0;
  }

  sub_22BE43248(v2[9]);
  if (!v15)
  {
    return 0;
  }

  sub_22C18F2C4(v2[10]);
  v15 = v15 && v13 == v14;
  if (!v15 && (sub_22C274014() & 1) == 0)
  {
    return 0;
  }

  if (v1)
  {
    if (v0)
    {
      if (v2 != v3 || v1 != v0)
      {
        sub_22BE1804C();
        sub_22C18EB68();
        if ((sub_22C274014() & 1) == 0)
        {
          return 0;
        }

        return ((v4 ^ v5) & 1) == 0;
      }

      if (v4 == v5)
      {
        return 1;
      }
    }

    return 0;
  }

  if (v0)
  {
    return 0;
  }

  return ((v4 ^ v5) & 1) == 0;
}

void static ResponseGenerationRequest.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_22BE96440();
}

uint64_t static SafetyModeException.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_22C274014() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

void static ContextRetrieved.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  sub_22BE9FED4();
  if (v6)
  {
    sub_22BE19454();

    sub_22BE9FED4();
  }
}

void static ToolRetrievalResponse.== infix(_:_:)(uint64_t a1)
{
  v1 = sub_22C18E738(a1);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v8 = *(v3 + 40);
  v7 = *(v3 + 48);
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  v11 = *(v2 + 32);
  v13 = *(v2 + 40);
  v12 = *(v2 + 48);
  v14 = v1 == *v2 && *(v3 + 8) == *(v2 + 8);
  if (v14 || (sub_22C274014() & 1) != 0)
  {
    v15 = v4 == v9 && v5 == v10;
    if (v15 || (sub_22BE29454(), sub_22BE3D108(), (sub_22C274014() & 1) != 0))
    {
      if (v6 == v11)
      {
        sub_22BE191CC();
        sub_22BE9FB68();
        if (v16)
        {
          sub_22BE19454();

          sub_22BEA5870();
        }
      }
    }
  }
}

void static EntitySpanMatchResult.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_22BE96494();
}

void static StatementResult.== infix(_:_:)()
{
  sub_22BE19460();
  v4 = v3;
  sub_22BE17BC4();
  v5 = sub_22C26E1D4();
  v6 = sub_22BE179D8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE38390();
  v11 = sub_22BE1AEE4();
  v13 = sub_22BE5CE4C(v11, v12);
  sub_22BE19448(v13);
  v15 = *(v14 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  sub_22BE25CD0();
  v17 = sub_22BE5CE4C(&qword_27D90A8E8, &qword_22C288AF8);
  sub_22BE19448(v17);
  v19 = *(v18 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  sub_22BE19E64();
  v22 = *(v21 + 56);
  sub_22BE260B8();
  sub_22BE3D108();
  sub_22BE22814();
  sub_22BE3D108();
  sub_22BE22814();
  sub_22BE181B0(v2);
  if (!v23)
  {
    sub_22BE2590C();
    sub_22BE22814();
    sub_22BE181B0(v2 + v22);
    if (!v23)
    {
      sub_22C18EB74();
      v27(v1, v2 + v22, v5);
      sub_22BE18B28();
      sub_22BE20458(v28);
      sub_22BE232C8();
      v29 = sub_22C272FD4();
      v30 = *(v8 + 8);
      v31 = sub_22BE1804C();
      v30(v31);
      v32 = sub_22BE431C0();
      v30(v32);
      sub_22C18DC5C(v2, &qword_27D9082F0);
      if ((v29 & 1) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_11;
    }

    v24 = *(v8 + 8);
    v25 = sub_22BE431C0();
    v26(v25);
LABEL_9:
    sub_22C18DC5C(v2, &qword_27D90A8E8);
    goto LABEL_40;
  }

  sub_22BE181B0(v2 + v22);
  if (!v23)
  {
    goto LABEL_9;
  }

  sub_22C18DC5C(v2, &qword_27D9082F0);
LABEL_11:
  v33 = type metadata accessor for StatementResult(0);
  sub_22C18FE20(v33[5]);
  static StatementResultPayload.== infix(_:_:)();
  if (v34)
  {
    sub_22C18FE20(v33[6]);
    if (_s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0())
    {
      sub_22C18FE20(v33[7]);
      if (_s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0())
      {
        sub_22C18FE20(v33[8]);
        if (_s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0())
        {
          v35 = v33[9];
          v36 = *(v0 + v35);
          v37 = *(v0 + v35 + 8);
          v39 = *(v0 + v35 + 16);
          v38 = *(v0 + v35 + 24);
          v40 = *(v0 + v35 + 32);
          v41 = v4 + v35;
          v42 = *(v41 + 8);
          v43 = *(v41 + 16);
          v44 = *(v41 + 24);
          v45 = *(v41 + 32);
          if (v37)
          {
            if (v42)
            {
              v46 = v36 == *v41 && v37 == v42;
              if (v46 || (sub_22BE2590C(), sub_22BE3D108(), (sub_22C274014() & 1) != 0))
              {
                if (!v38)
                {
                  v76 = sub_22BE46550();
                  sub_22C172920(v76, v77);
                  if (!v44)
                  {
                    v92 = sub_22BE1AEE4();
                    sub_22C172920(v92, v93);
                    v94 = sub_22BE46550();
                    sub_22C172920(v94, v95);
                    v90 = sub_22BE1AEE4();
                    goto LABEL_43;
                  }

LABEL_37:
                  v78 = sub_22C18E18C();
                  sub_22C172920(v78, v79);
                  v80 = sub_22BE46550();
                  sub_22C172920(v80, v81);
                  v82 = sub_22C18E18C();
                  sub_22C1083D4(v82, v83);
LABEL_38:

                  v68 = sub_22BE3794C();
                  goto LABEL_39;
                }

                if (v44)
                {
                  if (v39 != v43 || v38 != v44)
                  {
                    sub_22BE1804C();
                    sub_22C18EA6C();
                    v98 = sub_22C274014();
                    v48 = sub_22BE3794C();
                    sub_22C172920(v48, v49);
                    v50 = sub_22C18E18C();
                    sub_22C172920(v50, v51);
                    v52 = sub_22BE3794C();
                    sub_22C172920(v52, v53);
                    v54 = sub_22C18E18C();
                    sub_22C1083D4(v54, v55);
                    if (v98)
                    {
                      goto LABEL_44;
                    }

                    goto LABEL_38;
                  }

                  v84 = sub_22BE3794C();
                  sub_22C172920(v84, v85);
                  sub_22BE1AEE4();
                  sub_22C18E8F4();
                  sub_22C172920(v86, v87);
                  v88 = sub_22BE3794C();
                  sub_22C172920(v88, v89);
                  sub_22BE1AEE4();
                  sub_22C18E8F4();
LABEL_43:
                  sub_22C1083D4(v90, v91);
LABEL_44:

                  v96 = sub_22BE3794C();
                  sub_22C1083D4(v96, v97);
                  goto LABEL_40;
                }
              }

              v70 = sub_22BE46550();
              sub_22C172920(v70, v71);
              goto LABEL_37;
            }

            v60 = sub_22BE3794C();
            sub_22C172920(v60, v61);
            sub_22C18EA6C();
            sub_22C172920(v62, v63);
            v64 = sub_22BE3794C();
            sub_22C172920(v64, v65);

LABEL_33:
            v66 = sub_22BE3794C();
            sub_22C1083D4(v66, v67);
            v68 = sub_22C18E18C();
LABEL_39:
            sub_22C1083D4(v68, v69);
            goto LABEL_40;
          }

          sub_22C18FE08();
          sub_22C18E8F4();
          sub_22C172920(v56, v57);
          if (v42)
          {
            v58 = sub_22C18E18C();
            sub_22C172920(v58, v59);
            goto LABEL_33;
          }

          sub_22C18EA6C();
          sub_22C172920(v72, v73);
          sub_22C18FE08();
          sub_22C18E8F4();
          sub_22C1083D4(v74, v75);
        }
      }
    }
  }

LABEL_40:
  sub_22BE1AABC();
}

void static ExternalAgentRequest.== infix(_:_:)()
{
  sub_22BE19460();
  sub_22BE23708();
  v3 = sub_22C26E1D4();
  v4 = sub_22BE179D8(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE17CBC();
  v9 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v9);
  v11 = *(v10 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE1B01C();
  v13 = sub_22BE5CE4C(&qword_27D90A8E8, &qword_22C288AF8);
  sub_22BE18000(v13);
  v15 = *(v14 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  sub_22BE25CD0();
  sub_22BE1B5EC();
  static RequestContent.== infix(_:_:)();
  if ((v17 & 1) == 0)
  {
    goto LABEL_25;
  }

  v75 = v6;
  v74 = type metadata accessor for ExternalAgentRequest(0);
  v18 = *(v74 + 20);
  v19 = *(v13 + 48);
  sub_22C18F844();
  sub_22C18F844();
  sub_22BE181B0(v2);
  if (v20)
  {
    sub_22BE181B0(v2 + v19);
    if (v20)
    {
      sub_22C18DC5C(v2, &qword_27D9082F0);
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  sub_22BE29454();
  sub_22BE22814();
  sub_22BE181B0(v2 + v19);
  if (v20)
  {
    v21 = sub_22BE39058();
    v22(v21, v3);
LABEL_10:
    sub_22C18DC5C(v2, &qword_27D90A8E8);
    goto LABEL_25;
  }

  sub_22C18EB74();
  v23 = sub_22BE3BD64();
  v24(v23);
  sub_22BE18B28();
  sub_22BE20458(v25);
  sub_22BE25C08();
  v26 = sub_22C272FD4();
  v27 = *(v75 + 8);
  v28 = sub_22BE3C5E4();
  v27(v28);
  v29 = sub_22BE36680();
  v27(v29);
  sub_22C18DC5C(v2, &qword_27D9082F0);
  if (v26)
  {
LABEL_12:
    v30 = *(v74 + 24);
    v31 = v1 + v30;
    v32 = *(v1 + v30);
    v33 = *(v31 + 8);
    v34 = *(v31 + 16);
    v35 = (v0 + v30);
    v36 = *v35;
    v37 = v35[1];
    v38 = v35[2];
    if (v33)
    {
      if (v37)
      {
        v39 = v32 == v36 && v33 == v37;
        if (v39 || (sub_22BE191CC(), (sub_22C274014() & 1) != 0))
        {
          v40 = sub_22BE18944();
          sub_22BE9693C(v40, v41);
          v42 = sub_22BE28728();
          sub_22BE3820C(v42, v43);
          v44 = sub_22BE29454();
          sub_22BE3820C(v44, v45);
          v46 = sub_22BE28728();
          sub_22BE3820C(v46, v47);
          v48 = sub_22BE29454();
          sub_22BE37808(v48, v49);

          v50 = sub_22BE28728();
          sub_22BE37808(v50, v51);
          goto LABEL_25;
        }

        v66 = sub_22BE28728();
        sub_22BE3820C(v66, v67);
        v68 = sub_22BE29454();
        sub_22BE3820C(v68, v69);
        v70 = sub_22BE28728();
        sub_22BE3820C(v70, v71);
        v72 = sub_22BE29454();
        sub_22BE37808(v72, v73);

        v62 = sub_22BE28728();
LABEL_24:
        sub_22BE37808(v62, v63);
        goto LABEL_25;
      }

      v56 = sub_22BE28728();
      sub_22BE3820C(v56, v57);
      sub_22BE3820C(v36, 0);
      v58 = sub_22BE28728();
      sub_22BE3820C(v58, v59);
    }

    else
    {
      v52 = sub_22C18F248();
      sub_22BE3820C(v52, v53);
      if (!v37)
      {
        sub_22BE3820C(v36, 0);
        v64 = sub_22C18F248();
        sub_22BE37808(v64, v65);
        goto LABEL_25;
      }

      v54 = sub_22BE29454();
      sub_22BE3820C(v54, v55);
    }

    v60 = sub_22BE28728();
    sub_22BE37808(v60, v61);
    v62 = sub_22BE29454();
    goto LABEL_24;
  }

LABEL_25:
  sub_22BE1AABC();
}

uint64_t static ExternalAgentOutcome.== infix(_:_:)()
{
  sub_22BE18378();
  if ((_s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v0 = type metadata accessor for ExternalAgentOutcome(0);
  sub_22BE3E750(v0);
  if ((sub_22C26F884() & 1) == 0)
  {
    return 0;
  }

  v1 = sub_22C18F380(*(v0 + 24));

  return sub_22BE9693C(v1, v2);
}

uint64_t sub_22C12BC58(uint64_t a1)
{
  v1 = sub_22C18E738(a1);
  v4 = *(v3 + 16);
  v5 = v2[2];
  v6 = v1 == *v2 && *(v3 + 8) == v2[1];
  if (!v6 && (sub_22C274014() & 1) == 0)
  {
    return 0;
  }

  v7 = sub_22BE19454();

  return v8(v7);
}

void static UndoRedoRequest.== infix(_:_:)()
{
  sub_22BE19460();
  v5 = v4;
  sub_22BE33690();
  v6 = sub_22C26E684();
  v7 = sub_22BE1BF18(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE294E0();
  v12 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  sub_22BE19448(v12);
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE20168(v16, v62);
  v66 = sub_22BE5CE4C(&qword_27D9092B8, &qword_22C27FEA0);
  sub_22BE18000(v66);
  v18 = *(v17 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  sub_22BE1A174();
  v67 = v20;
  sub_22BE183BC();
  v21 = sub_22C26E1D4();
  v22 = sub_22BE179D8(v21);
  v68 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22BE188B0();
  v26 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v26);
  v28 = *(v27 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v29);
  sub_22BE1AEF0();
  v30 = sub_22BE5CE4C(&qword_27D90A8E8, &qword_22C288AF8);
  sub_22BE18000(v30);
  v32 = *(v31 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v33);
  sub_22BE2C64C();
  v34 = *v0 == *v5 && v0[1] == v5[1];
  if (!v34 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_28;
  }

  v63 = v1;
  v64 = v9;
  v65 = type metadata accessor for UndoRedoRequest(0);
  v35 = v65[5];
  v36 = *(v30 + 48);
  sub_22C18F9C4();
  sub_22BE22814();
  sub_22BE22814();
  sub_22BE181B0(v3);
  if (!v34)
  {
    sub_22BE22814();
    sub_22BE181B0(v3 + v36);
    if (!v37)
    {
      sub_22C18F338();
      v43(v2, v3 + v36, v21);
      sub_22BE18B28();
      sub_22BE20458(v44);
      v45 = sub_22C272FD4();
      v46 = *(v68 + 8);
      v46(v2, v21);
      v47 = sub_22BE1804C();
      (v46)(v47);
      sub_22C18DC5C(v3, &qword_27D9082F0);
      if ((v45 & 1) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    v38 = *(v68 + 8);
    v39 = sub_22BE1804C();
    v40(v39);
LABEL_14:
    v41 = &qword_27D90A8E8;
    v42 = v3;
LABEL_15:
    sub_22C18DC5C(v42, v41);
    goto LABEL_28;
  }

  sub_22BE181B0(v3 + v36);
  if (!v34)
  {
    goto LABEL_14;
  }

  sub_22C18DC5C(v3, &qword_27D9082F0);
LABEL_17:
  if (*(v0 + v65[6]) == *(v5 + v65[6]))
  {
    v48 = v65[7];
    if (_s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0())
    {
      v49 = v65[8];
      v50 = *(v66 + 48);
      sub_22BE27B84();
      sub_22BE22814();
      sub_22BE27B84();
      sub_22BE22814();
      sub_22C18FD0C();
      sub_22BE1AB5C(v51, v52, v53);
      if (v34)
      {
        sub_22BE200F8(v67 + v50);
        if (v34)
        {
          sub_22C18DC5C(v67, &qword_27D907240);
          goto LABEL_28;
        }
      }

      else
      {
        sub_22BE22814();
        sub_22BE200F8(v67 + v50);
        if (!v54)
        {
          sub_22C18F338();
          v57(v63, v67 + v50, v49);
          sub_22BE18F44();
          sub_22BE20458(v58);
          sub_22BE38970();
          sub_22C272FD4();
          v59 = *(v64 + 8);
          v60 = sub_22BE191CC();
          v59(v60);
          v61 = sub_22BE25C08();
          v59(v61);
          sub_22C18DC5C(v67, &qword_27D907240);
          goto LABEL_28;
        }

        v55 = sub_22BE39058();
        v56(v55, v49);
      }

      v41 = &qword_27D9092B8;
      v42 = v67;
      goto LABEL_15;
    }
  }

LABEL_28:
  sub_22BE1AABC();
}

void static ClientUndoRedoRequest.== infix(_:_:)()
{
  sub_22BE19460();
  sub_22C18E58C();
  v5 = sub_22C26E684();
  v6 = sub_22BE179D8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE197B8();
  v11 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  sub_22BE19448(v11);
  v13 = *(v12 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE19E64();
  v15 = sub_22BE5CE4C(&qword_27D9092B8, &qword_22C27FEA0);
  sub_22C18DFEC(v15);
  v17 = *(v16 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  sub_22BE389B4();
  if (sub_22C26E1B4())
  {
    v19 = type metadata accessor for ClientUndoRedoRequest(0);
    if (*(v3 + *(v19 + 20)) == *(v2 + *(v19 + 20)))
    {
      v20 = v19;
      sub_22C18FFA8(*(v19 + 24));
      if (_s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0())
      {
        v21 = *(v20 + 28);
        v22 = *(v4 + 48);
        sub_22C19013C();
        sub_22C19005C();
        sub_22BE181B0(v1);
        if (!v23)
        {
          sub_22BE191CC();
          sub_22BE22814();
          sub_22BE181B0(v1 + v22);
          if (!v23)
          {
            sub_22C18EB74();
            v27(v0, v1 + v22, v5);
            sub_22BE18F44();
            sub_22BE20458(v28);
            sub_22BE1AB74();
            sub_22C272FD4();
            v29 = *(v8 + 8);
            v30 = sub_22BE19454();
            v29(v30);
            v31 = sub_22BE3C5E4();
            v29(v31);
            sub_22C18DC5C(v1, &qword_27D907240);
            goto LABEL_13;
          }

          v24 = *(v8 + 8);
          v25 = sub_22BE3C5E4();
          v26(v25);
LABEL_12:
          sub_22C18DC5C(v1, &qword_27D9092B8);
          goto LABEL_13;
        }

        sub_22BE181B0(v1 + v22);
        if (!v23)
        {
          goto LABEL_12;
        }

        sub_22C18DC5C(v1, &qword_27D907240);
      }
    }
  }

LABEL_13:
  sub_22BE1AABC();
}

uint64_t sub_22C12C514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(uint64_t))
{
  sub_22BE18378();
  if ((v7() & 1) == 0)
  {
    return 0;
  }

  v8 = a4(0);
  v9 = sub_22BE3E750(v8);
  if ((a5(v9) & 1) == 0)
  {
    return 0;
  }

  sub_22C18EA3C(*(v8 + 24));

  return _s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0();
}

void static QueryDecorationResult.== infix(_:_:)()
{
  sub_22BE19460();
  sub_22BE23708();
  v3 = sub_22C271A34();
  v4 = sub_22BE179D8(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE17CBC();
  v9 = sub_22BE5CE4C(&qword_27D912018, &unk_22C2B7810);
  sub_22BE19448(v9);
  v11 = *(v10 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE1B01C();
  v13 = sub_22BE5CE4C(&qword_27D9125E8, &qword_22C2B7B10);
  sub_22BE18000(v13);
  v15 = *(v14 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  sub_22BE25CD0();
  v17 = *v1;
  v18 = *v0;
  sub_22BE9FCA0();
  if ((v19 & 1) == 0)
  {
    goto LABEL_14;
  }

  v41 = v6;
  DecorationResult = type metadata accessor for QueryDecorationResult(0);
  v20 = DecorationResult[5];
  v21 = *(v13 + 48);
  sub_22C18F844();
  sub_22C18F844();
  sub_22BE181B0(v2);
  if (v22)
  {
    sub_22BE181B0(v2 + v21);
    if (v22)
    {
      sub_22C18DC5C(v2, &qword_27D912018);
      goto LABEL_12;
    }

LABEL_10:
    sub_22C18DC5C(v2, &qword_27D9125E8);
LABEL_14:
    v39 = 0;
    goto LABEL_15;
  }

  sub_22BE29454();
  sub_22BE22814();
  sub_22BE181B0(v2 + v21);
  if (v22)
  {
    v23 = sub_22BE39058();
    v24(v23, v3);
    goto LABEL_10;
  }

  sub_22C18EB74();
  v25 = sub_22BE3BD64();
  v26(v25);
  sub_22BE33C50();
  sub_22BE20458(v27);
  sub_22BE25C08();
  v28 = sub_22C272FD4();
  v29 = *(v41 + 8);
  v30 = sub_22BE3C5E4();
  v29(v30);
  v31 = sub_22BE36680();
  v29(v31);
  sub_22C18DC5C(v2, &qword_27D912018);
  if ((v28 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_12:
  v32 = DecorationResult[6];
  v33 = *(v1 + v32);
  v34 = *(v0 + v32);
  sub_22BE9FCE8();
  if ((v35 & 1) == 0)
  {
    goto LABEL_14;
  }

  v36 = DecorationResult[7];
  v37 = *(v1 + v36);
  v38 = *(v0 + v36);
  sub_22BE9FED4();
LABEL_15:
  sub_22BE1C1DC(v39);
  sub_22BE1AABC();
}

uint64_t static QueryDecorationPrePlannerResult.== infix(_:_:)()
{
  sub_22BE18378();
  if (_s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0() & 1) != 0 && ((DecorationPrePlannerResult = type metadata accessor for QueryDecorationPrePlannerResult(0), sub_22C18F27C(DecorationPrePlannerResult), sub_22C18E1A0(v4), v7) ? (v7 = v5 == v6) : (v7 = 0), v7 || (sub_22C274014()))
  {
    v8 = *(v2 + 24);
    v9 = *(v1 + v8 + 8);
    v16 = *(v1 + v8);
    v17 = v9;
    v10 = v0 + v8;
    v11 = *v10;
    LOBYTE(v10) = *(v10 + 8);
    v14 = v11;
    v15 = v10;

    v12 = static QueryDecorationPrePlannerResultPayload.== infix(_:_:)(&v16, &v14);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_22C12C99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(uint64_t))
{
  sub_22BE18378();
  if ((v6() & 1) == 0)
  {
    return 0;
  }

  v7 = a4(0);
  v8 = sub_22C18F380(*(v7 + 20));

  return a5(v8);
}

void static RequestAmendment.== infix(_:_:)()
{
  sub_22BE18378();
  if (sub_22C26E1B4())
  {
    v0 = type metadata accessor for RequestAmendment(0);
    sub_22BE3E750(v0);

    static RequestContent.== infix(_:_:)();
  }
}

uint64_t sub_22C12CAAC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x536E6F6973736573 && a2 == 0xEC00000074726174;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E72755472657375 && a2 == 0xEF64657472617453;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x800000022C2DAA80 == a2;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x74736575716572 && a2 == 0xE700000000000000;
        if (v8 || (sub_22C274014() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x616572436E616C70 && a2 == 0xEB00000000646574;
          if (v9 || (sub_22C274014() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x72436E6F69746361 && a2 == 0xED00006465746165;
            if (v10 || (sub_22C274014() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x61436E6F69746361 && a2 == 0xEE0064656C65636ELL;
              if (v11 || (sub_22C274014() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000013 && 0x800000022C2DAAB0 == a2;
                if (v12 || (sub_22C274014() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x4373656972657571 && a2 == 0xEE00646574616572;
                  if (v13 || (sub_22C274014() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x656C626169726176 && a2 == 0xEC00000074655373;
                    if (v14 || (sub_22C274014() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000010 && 0x800000022C2DAAF0 == a2;
                      if (v15 || (sub_22C274014() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6C61636974697263 && a2 == 0xED0000726F727245;
                        if (v16 || (sub_22C274014() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x616C50664F646E65 && a2 == 0xE90000000000006ELL;
                          if (v17 || (sub_22C274014() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x74616E696D726574 && a2 == 0xE900000000000065;
                            if (v18 || (sub_22C274014() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x4573656972657571 && a2 == 0xEF64657475636578;
                              if (v19 || (sub_22C274014() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD00000000000001CLL && 0x800000022C2DAB20 == a2;
                                if (v20 || (sub_22C274014() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD000000000000020 && 0x800000022C2DBDB0 == a2;
                                  if (v21 || (sub_22C274014() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD000000000000011 && 0x800000022C2DAB40 == a2;
                                    if (v22 || (sub_22C274014() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0xD000000000000013 && 0x800000022C2DAB60 == a2;
                                      if (v23 || (sub_22C274014() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0xD000000000000010 && 0x800000022C2DBDE0 == a2;
                                        if (v24 || (sub_22C274014() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0x746552736C6F6F74 && a2 == 0xEE00646576656972;
                                          if (v25 || (sub_22C274014() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0xD000000000000011 && 0x800000022C2DABA0 == a2;
                                            if (v26 || (sub_22C274014() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0xD000000000000017 && 0x800000022C2DABD0 == a2;
                                              if (v27 || (sub_22C274014() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0xD000000000000012 && 0x800000022C2DABF0 == a2;
                                                if (v28 || (sub_22C274014() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v29 = a1 == 0xD000000000000014 && 0x800000022C2DAC10 == a2;
                                                  if (v29 || (sub_22C274014() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v30 = a1 == 0xD000000000000014 && 0x800000022C2DAC30 == a2;
                                                    if (v30 || (sub_22C274014() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      v31 = a1 == 0xD000000000000023 && 0x800000022C2DAC50 == a2;
                                                      if (v31 || (sub_22C274014() & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        v32 = a1 == 0x6F7365526C6F6F74 && a2 == 0xEE006E6F6974756CLL;
                                                        if (v32 || (sub_22C274014() & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          v33 = a1 == 0x6F6465526F646E75 && a2 == 0xEF74736575716552;
                                                          if (v33 || (sub_22C274014() & 1) != 0)
                                                          {

                                                            return 28;
                                                          }

                                                          else
                                                          {
                                                            v34 = a1 == 0xD000000000000015 && 0x800000022C2DACA0 == a2;
                                                            if (v34 || (sub_22C274014() & 1) != 0)
                                                            {

                                                              return 29;
                                                            }

                                                            else
                                                            {
                                                              v35 = a1 == 0xD000000000000015 && 0x800000022C2DACC0 == a2;
                                                              if (v35 || (sub_22C274014() & 1) != 0)
                                                              {

                                                                return 30;
                                                              }

                                                              else
                                                              {
                                                                v36 = a1 == 0xD000000000000014 && 0x800000022C2DACE0 == a2;
                                                                if (v36 || (sub_22C274014() & 1) != 0)
                                                                {

                                                                  return 31;
                                                                }

                                                                else
                                                                {
                                                                  v37 = a1 == 0xD000000000000015 && 0x800000022C2DAD00 == a2;
                                                                  if (v37 || (sub_22C274014() & 1) != 0)
                                                                  {

                                                                    return 32;
                                                                  }

                                                                  else
                                                                  {
                                                                    v38 = a1 == 0xD000000000000010 && 0x800000022C2D3750 == a2;
                                                                    if (v38 || (sub_22C274014() & 1) != 0)
                                                                    {

                                                                      return 33;
                                                                    }

                                                                    else
                                                                    {
                                                                      v39 = a1 == 0xD00000000000001FLL && 0x800000022C2DAD20 == a2;
                                                                      if (v39 || (sub_22C274014() & 1) != 0)
                                                                      {

                                                                        return 34;
                                                                      }

                                                                      else
                                                                      {
                                                                        v40 = a1 == 0x7461745370696B73 && a2 == 0xED0000746E656D65;
                                                                        if (v40 || (sub_22C274014() & 1) != 0)
                                                                        {

                                                                          return 35;
                                                                        }

                                                                        else
                                                                        {
                                                                          v41 = a1 == 0xD000000000000025 && 0x800000022C2DAD50 == a2;
                                                                          if (v41 || (sub_22C274014() & 1) != 0)
                                                                          {

                                                                            return 36;
                                                                          }

                                                                          else
                                                                          {
                                                                            v42 = a1 == 0xD000000000000010 && 0x800000022C2DAD80 == a2;
                                                                            if (v42 || (sub_22C274014() & 1) != 0)
                                                                            {

                                                                              return 37;
                                                                            }

                                                                            else
                                                                            {
                                                                              v43 = a1 == 0xD000000000000014 && 0x800000022C2DADA0 == a2;
                                                                              if (v43 || (sub_22C274014() & 1) != 0)
                                                                              {

                                                                                return 38;
                                                                              }

                                                                              else
                                                                              {
                                                                                v44 = a1 == 0xD000000000000017 && 0x800000022C2DADC0 == a2;
                                                                                if (v44 || (sub_22C274014() & 1) != 0)
                                                                                {

                                                                                  return 39;
                                                                                }

                                                                                else
                                                                                {
                                                                                  v45 = a1 == 0xD000000000000010 && 0x800000022C2DADE0 == a2;
                                                                                  if (v45 || (sub_22C274014() & 1) != 0)
                                                                                  {

                                                                                    return 40;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v46 = a1 == 0xD00000000000001ALL && 0x800000022C2DAE00 == a2;
                                                                                    if (v46 || (sub_22C274014() & 1) != 0)
                                                                                    {

                                                                                      return 41;
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v47 = a1 == 0xD000000000000022 && 0x800000022C2DAE20 == a2;
                                                                                      if (v47 || (sub_22C274014() & 1) != 0)
                                                                                      {

                                                                                        return 42;
                                                                                      }

                                                                                      else if (a1 == 0xD000000000000014 && 0x800000022C2DAE50 == a2)
                                                                                      {

                                                                                        return 43;
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v49 = sub_22C274014();

                                                                                        if (v49)
                                                                                        {
                                                                                          return 43;
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          return 44;
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
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_22C12D784(uint64_t a1)
{
  v2 = sub_22C1737D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12D7C0(uint64_t a1)
{
  v2 = sub_22C1737D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12D7FC(uint64_t a1)
{
  v2 = sub_22C173828();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12D838(uint64_t a1)
{
  v2 = sub_22C173828();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12D874(uint64_t a1)
{
  v2 = sub_22C173534();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12D8B0(uint64_t a1)
{
  v2 = sub_22C173534();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12D8EC(uint64_t a1)
{
  v2 = sub_22C172964();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12D928(uint64_t a1)
{
  v2 = sub_22C172964();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12D964(uint64_t a1)
{
  v2 = sub_22C173780();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12D9A0(uint64_t a1)
{
  v2 = sub_22C173780();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12D9DC(uint64_t a1)
{
  v2 = sub_22C172F4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12DA18(uint64_t a1)
{
  v2 = sub_22C172F4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12DA54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C12CAAC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C12DA7C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22C12D77C();
  *a1 = result;
  return result;
}

uint64_t sub_22C12DAA4(uint64_t a1)
{
  v2 = sub_22BE32B90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12DAE0(uint64_t a1)
{
  v2 = sub_22BE32B90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12DB1C(uint64_t a1)
{
  v2 = sub_22C172B08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12DB58(uint64_t a1)
{
  v2 = sub_22C172B08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12DB94(uint64_t a1)
{
  v2 = sub_22C173294();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12DBD0(uint64_t a1)
{
  v2 = sub_22C173294();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12DC0C(uint64_t a1)
{
  v2 = sub_22C172DA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12DC48(uint64_t a1)
{
  v2 = sub_22C172DA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12DC84(uint64_t a1)
{
  v2 = sub_22C173630();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12DCC0(uint64_t a1)
{
  v2 = sub_22C173630();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12DCFC(uint64_t a1)
{
  v2 = sub_22C1735DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12DD38(uint64_t a1)
{
  v2 = sub_22C1735DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12DD74(uint64_t a1)
{
  v2 = sub_22C173144();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12DDB0(uint64_t a1)
{
  v2 = sub_22C173144();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12DDEC(uint64_t a1)
{
  v2 = sub_22C172CAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12DE28(uint64_t a1)
{
  v2 = sub_22C172CAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12DE64(uint64_t a1)
{
  v2 = sub_22BE48A9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12DEA0(uint64_t a1)
{
  v2 = sub_22BE48A9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12DEDC(uint64_t a1)
{
  v2 = sub_22BE45BD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12DF18(uint64_t a1)
{
  v2 = sub_22BE45BD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12DF54(uint64_t a1)
{
  v2 = sub_22C173048();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12DF90(uint64_t a1)
{
  v2 = sub_22C173048();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12DFCC(uint64_t a1)
{
  v2 = sub_22C172A0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12E008(uint64_t a1)
{
  v2 = sub_22C172A0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12E044(uint64_t a1)
{
  v2 = sub_22C1729B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12E080(uint64_t a1)
{
  v2 = sub_22C1729B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12E0BC(uint64_t a1)
{
  v2 = sub_22C17372C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12E0F8(uint64_t a1)
{
  v2 = sub_22C17372C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12E134(uint64_t a1)
{
  v2 = sub_22C173588();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12E170(uint64_t a1)
{
  v2 = sub_22C173588();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12E1AC(uint64_t a1)
{
  v2 = sub_22C172D54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12E1E8(uint64_t a1)
{
  v2 = sub_22C172D54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12E224(uint64_t a1)
{
  v2 = sub_22C172E50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12E260(uint64_t a1)
{
  v2 = sub_22C172E50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12E29C(uint64_t a1)
{
  v2 = sub_22C173684();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12E2D8(uint64_t a1)
{
  v2 = sub_22C173684();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12E314(uint64_t a1)
{
  v2 = sub_22C172C58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12E350(uint64_t a1)
{
  v2 = sub_22C172C58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12E38C(uint64_t a1)
{
  v2 = sub_22C173924();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12E3C8(uint64_t a1)
{
  v2 = sub_22C173924();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12E404(uint64_t a1)
{
  v2 = sub_22C17348C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12E440(uint64_t a1)
{
  v2 = sub_22C17348C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12E47C(uint64_t a1)
{
  v2 = sub_22C17333C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12E4B8(uint64_t a1)
{
  v2 = sub_22C17333C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12E4F4(uint64_t a1)
{
  v2 = sub_22C1733E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12E530(uint64_t a1)
{
  v2 = sub_22C1733E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12E56C(uint64_t a1)
{
  v2 = sub_22BE32DD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12E5A8(uint64_t a1)
{
  v2 = sub_22BE32DD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12E5E4(uint64_t a1)
{
  v2 = sub_22C172D00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12E620(uint64_t a1)
{
  v2 = sub_22C172D00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12E65C(uint64_t a1)
{
  v2 = sub_22C172A60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12E698(uint64_t a1)
{
  v2 = sub_22C172A60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12E6D4(uint64_t a1)
{
  v2 = sub_22C173978();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12E710(uint64_t a1)
{
  v2 = sub_22C173978();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12E74C(uint64_t a1)
{
  v2 = sub_22C17309C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12E788(uint64_t a1)
{
  v2 = sub_22C17309C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12E7C4(uint64_t a1)
{
  v2 = sub_22C1730F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12E800(uint64_t a1)
{
  v2 = sub_22C1730F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12E83C(uint64_t a1)
{
  v2 = sub_22BE46594();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12E878(uint64_t a1)
{
  v2 = sub_22BE46594();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12E8B4(uint64_t a1)
{
  v2 = sub_22C172FF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12E8F0(uint64_t a1)
{
  v2 = sub_22C172FF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12E92C(uint64_t a1)
{
  v2 = sub_22C172BB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12E968(uint64_t a1)
{
  v2 = sub_22C172BB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12E9A4(uint64_t a1)
{
  v2 = sub_22C1731EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12E9E0(uint64_t a1)
{
  v2 = sub_22C1731EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12EA1C(uint64_t a1)
{
  v2 = sub_22C172EF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12EA58(uint64_t a1)
{
  v2 = sub_22C172EF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12EA94(uint64_t a1)
{
  v2 = sub_22C172EA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12EAD0(uint64_t a1)
{
  v2 = sub_22C172EA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12EB0C(uint64_t a1)
{
  v2 = sub_22C172FA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12EB48(uint64_t a1)
{
  v2 = sub_22C172FA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12EB84(uint64_t a1)
{
  v2 = sub_22C173A20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12EBC0(uint64_t a1)
{
  v2 = sub_22C173A20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12EBFC(uint64_t a1)
{
  v2 = sub_22C1736D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12EC38(uint64_t a1)
{
  v2 = sub_22C1736D8();

  return MEMORY[0x2821FE720](a1, v2);
}

void Session.Event.Payload.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v22;
  a20 = v23;
  v741 = v21;
  v25 = v24;
  v734 = v26;
  v27 = sub_22BE5CE4C(&qword_27D9129B0, &qword_22C2B7C80);
  sub_22BE18910(v27, &v718);
  v685 = v28;
  v30 = *(v29 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v31);
  sub_22BE1A174();
  sub_22BF0AFA0(v32);
  v33 = sub_22BE5CE4C(&qword_27D9129B8, &qword_22C2B7C88);
  sub_22BE18910(v33, &v716);
  v683 = v34;
  v36 = *(v35 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v37);
  sub_22BE39404(v38);
  v39 = sub_22BE5CE4C(&qword_27D9129C0, &qword_22C2B7C90);
  sub_22BE18910(v39, &v714);
  v681 = v40;
  v42 = *(v41 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v43);
  sub_22BE44798(v44);
  v45 = sub_22BE5CE4C(&qword_27D9129C8, &qword_22C2B7C98);
  sub_22BE18910(v45, &v712);
  v679 = v46;
  v48 = *(v47 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v49);
  sub_22BE1A174();
  sub_22BE190A8(v50);
  v51 = sub_22BE5CE4C(&qword_27D9129D0, &qword_22C2B7CA0);
  sub_22BE18910(v51, &v710);
  v677 = v52;
  v54 = *(v53 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v55);
  sub_22C18E4F0(v56);
  v57 = sub_22BE5CE4C(&qword_27D9129D8, &qword_22C2B7CA8);
  sub_22BE18910(v57, &v708);
  v675 = v58;
  v60 = *(v59 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v61);
  sub_22BE1A174();
  sub_22BE190A8(v62);
  v63 = sub_22BE5CE4C(&qword_27D9129E0, &qword_22C2B7CB0);
  sub_22BE18910(v63, &v706);
  v673 = v64;
  v66 = *(v65 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v67);
  sub_22BE1A174();
  sub_22BE190A8(v68);
  v69 = sub_22BE5CE4C(&qword_27D9129E8, &qword_22C2B7CB8);
  sub_22BE18910(v69, &v704);
  v671 = v70;
  v72 = *(v71 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v73);
  sub_22BE1A174();
  sub_22BE190A8(v74);
  v75 = sub_22BE5CE4C(&qword_27D9129F0, &qword_22C2B7CC0);
  sub_22BE18910(v75, &v702);
  v669 = v76;
  v78 = *(v77 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v79);
  sub_22BE1A174();
  sub_22BE190A8(v80);
  v81 = sub_22BE5CE4C(&qword_27D9129F8, &qword_22C2B7CC8);
  sub_22BE18910(v81, &v700);
  v667 = v82;
  v84 = *(v83 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v85);
  sub_22BE1A174();
  sub_22BE190A8(v86);
  v87 = sub_22BE5CE4C(&qword_27D912A00, &qword_22C2B7CD0);
  sub_22BE18910(v87, &v698);
  v665 = v88;
  v90 = *(v89 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v91);
  sub_22BE1A174();
  sub_22BE190A8(v92);
  v93 = sub_22BE5CE4C(&qword_27D912A08, &qword_22C2B7CD8);
  sub_22BE18910(v93, &v696);
  v663 = v94;
  v96 = *(v95 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v97);
  sub_22BE1A174();
  sub_22BE190A8(v98);
  v99 = sub_22BE5CE4C(&qword_27D912A10, &qword_22C2B7CE0);
  sub_22BE18910(v99, &v694);
  v661 = v100;
  v102 = *(v101 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v103);
  sub_22BE1A174();
  sub_22BE190A8(v104);
  v105 = sub_22BE5CE4C(&qword_27D912A18, &qword_22C2B7CE8);
  sub_22BE18910(v105, &v692);
  v659 = v106;
  v108 = *(v107 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v109);
  sub_22BE1A174();
  sub_22BE190A8(v110);
  v111 = sub_22BE5CE4C(&qword_27D912A20, &qword_22C2B7CF0);
  sub_22BE18910(v111, &v690);
  v657 = v112;
  v114 = *(v113 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v115);
  sub_22BE1A174();
  sub_22BE190A8(v116);
  v117 = sub_22BE5CE4C(&qword_27D912A28, &qword_22C2B7CF8);
  sub_22BE18910(v117, &v688);
  v655 = v118;
  v120 = *(v119 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v121);
  sub_22BE1A174();
  sub_22BE190A8(v122);
  v123 = sub_22BE5CE4C(&qword_27D912A30, &qword_22C2B7D00);
  sub_22BE18910(v123, &v686);
  v653 = v124;
  v126 = *(v125 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v127);
  sub_22BE1A174();
  sub_22BE190A8(v128);
  v129 = sub_22BE5CE4C(&qword_27D912A38, &qword_22C2B7D08);
  sub_22BE18910(v129, &v684);
  v651 = v130;
  v132 = *(v131 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v133);
  sub_22BE1A174();
  sub_22BE190A8(v134);
  v135 = sub_22BE5CE4C(&qword_27D912A40, &qword_22C2B7D10);
  sub_22BE18910(v135, &v682);
  v649 = v136;
  v138 = *(v137 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v139);
  sub_22BE1A174();
  sub_22BE190A8(v140);
  v141 = sub_22BE5CE4C(&qword_27D912A48, &qword_22C2B7D18);
  sub_22BE18910(v141, &v680);
  v647 = v142;
  v144 = *(v143 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v145);
  sub_22BE1A174();
  sub_22BE190A8(v146);
  v147 = sub_22BE5CE4C(&qword_27D912A50, &qword_22C2B7D20);
  sub_22BE18910(v147, &v678);
  v645 = v148;
  v150 = *(v149 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v151);
  sub_22BE1A174();
  sub_22BE190A8(v152);
  v153 = sub_22BE5CE4C(&qword_27D912A58, &qword_22C2B7D28);
  sub_22BE18910(v153, &v676);
  v643 = v154;
  v156 = *(v155 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v157);
  sub_22BE1A174();
  sub_22BE190A8(v158);
  v159 = sub_22BE5CE4C(&qword_27D912A60, &qword_22C2B7D30);
  sub_22BE18910(v159, &v674);
  v641 = v160;
  v162 = *(v161 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v163);
  sub_22BE1A174();
  sub_22BE190A8(v164);
  v165 = sub_22BE5CE4C(&qword_27D912A68, &qword_22C2B7D38);
  sub_22BE18910(v165, &v672);
  v639 = v166;
  v168 = *(v167 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v169);
  sub_22BE1A174();
  sub_22BE190A8(v170);
  v171 = sub_22BE5CE4C(&qword_27D912A70, &qword_22C2B7D40);
  sub_22BE18910(v171, &v670);
  v637 = v172;
  v174 = *(v173 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v175);
  sub_22BE1A174();
  sub_22BE190A8(v176);
  v177 = sub_22BE5CE4C(&qword_27D912A78, &qword_22C2B7D48);
  sub_22BE18910(v177, &v668);
  v635 = v178;
  v180 = *(v179 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v181);
  sub_22BE1A174();
  sub_22BE190A8(v182);
  v183 = sub_22BE5CE4C(&qword_27D912A80, &qword_22C2B7D50);
  sub_22BE18910(v183, &v666);
  v633 = v184;
  v186 = *(v185 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v187);
  sub_22BE1A174();
  sub_22BE190A8(v188);
  v189 = sub_22BE5CE4C(&qword_27D912A88, &qword_22C2B7D58);
  sub_22BE18910(v189, &v664);
  v631 = v190;
  v192 = *(v191 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v193);
  sub_22BE1A174();
  sub_22BE190A8(v194);
  v195 = sub_22BE5CE4C(&qword_27D912A90, &qword_22C2B7D60);
  sub_22BE18910(v195, &v662);
  v629 = v196;
  v198 = *(v197 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v199);
  sub_22BE1A174();
  sub_22BE190A8(v200);
  v201 = sub_22BE5CE4C(&qword_27D912A98, &qword_22C2B7D68);
  sub_22BE18910(v201, &v660);
  v627 = v202;
  v204 = *(v203 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v205);
  sub_22BE1A174();
  sub_22BE190A8(v206);
  v733 = sub_22BE5CE4C(&qword_27D912AA0, &qword_22C2B7D70);
  sub_22BE179D8(v733);
  v738 = v207;
  v209 = *(v208 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v210);
  sub_22BE1A174();
  sub_22BE190A8(v211);
  v212 = sub_22BE5CE4C(&qword_27D912AA8, &qword_22C2B7D78);
  sub_22BE18910(v212, &v657);
  v624 = v213;
  v215 = *(v214 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v216);
  sub_22BE1A174();
  sub_22BE190A8(v217);
  v732 = sub_22BE5CE4C(&qword_27D912AB0, &qword_22C2B7D80);
  sub_22BE179D8(v732);
  v626 = v218;
  v220 = *(v219 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v221);
  sub_22BE1A174();
  sub_22BE190A8(v222);
  v223 = sub_22BE5CE4C(&qword_27D912AB8, &qword_22C2B7D88);
  sub_22BE18910(v223, &v655);
  v622 = v224;
  v226 = *(v225 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v227);
  sub_22BE1A174();
  sub_22BE190A8(v228);
  v229 = sub_22BE5CE4C(&qword_27D912AC0, &qword_22C2B7D90);
  sub_22BE18910(v229, &v653);
  v620 = v230;
  v232 = *(v231 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v233);
  sub_22BE1A174();
  sub_22BE190A8(v234);
  v235 = sub_22BE5CE4C(&qword_27D912AC8, &qword_22C2B7D98);
  sub_22BE18910(v235, &v651);
  v618 = v236;
  v238 = *(v237 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v239);
  sub_22BE1A174();
  sub_22BE190A8(v240);
  v241 = sub_22BE5CE4C(&qword_27D912AD0, &qword_22C2B7DA0);
  sub_22BE18910(v241, &v649);
  v616 = v242;
  v244 = *(v243 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v245);
  sub_22BE1A174();
  sub_22BE190A8(v246);
  v247 = sub_22BE5CE4C(&qword_27D912AD8, &qword_22C2B7DA8);
  sub_22BE18910(v247, &v647);
  v614 = v248;
  v250 = *(v249 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v251);
  sub_22BE1A174();
  sub_22BE190A8(v252);
  v253 = sub_22BE5CE4C(&qword_27D912AE0, &qword_22C2B7DB0);
  sub_22BE18910(v253, &v645);
  v612 = v254;
  v256 = *(v255 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v257);
  sub_22BE1A174();
  sub_22BE190A8(v258);
  v259 = sub_22BE5CE4C(&qword_27D912AE8, &qword_22C2B7DB8);
  sub_22BE18910(v259, &v643);
  v731 = v260;
  v262 = *(v261 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v263);
  sub_22BE1A174();
  sub_22BE190A8(v264);
  v265 = sub_22BE5CE4C(&qword_27D912AF0, &qword_22C2B7DC0);
  sub_22BE18910(v265, &v642);
  v609[11] = v266;
  v268 = *(v267 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v269);
  sub_22BE1A174();
  sub_22BE190A8(v270);
  v271 = sub_22BE5CE4C(&qword_27D912AF8, &qword_22C2B7DC8);
  sub_22BE18910(v271, &v640);
  v609[9] = v272;
  v274 = *(v273 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v275);
  sub_22BE1A174();
  sub_22BE190A8(v276);
  v277 = sub_22BE5CE4C(&qword_27D912B00, &qword_22C2B7DD0);
  sub_22BE18910(v277, &v638);
  v609[7] = v278;
  v280 = *(v279 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v281);
  sub_22BE1A174();
  sub_22BE190A8(v282);
  v283 = sub_22BE5CE4C(&qword_27D912B08, &qword_22C2B7DD8);
  sub_22BE18910(v283, &v635);
  v609[6] = v284;
  v286 = *(v285 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v287);
  sub_22BE1A174();
  sub_22BE190A8(v288);
  v739 = sub_22BE5CE4C(&qword_27D912B10, &qword_22C2B7DE0);
  sub_22BE179D8(v739);
  v735 = v289;
  v291 = *(v290 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v292);
  sub_22BE1A174();
  a10 = v293;
  v294 = sub_22BE183BC();
  v737 = type metadata accessor for Session.Event.Payload(v294);
  v295 = sub_22BE18000(v737);
  v297 = *(v296 + 64);
  MEMORY[0x28223BE20](v295);
  sub_22BE17B98();
  v736 = v298;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v299);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v300);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v301);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v302);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v303);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v304);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v305);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v306);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v307);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v308);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v309);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v310);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v311);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v312);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v313);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v314);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v315);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v316);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v317);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v318);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v319);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v320);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v321);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v322);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v323);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v324);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v325);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v326);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v327);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v328);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v329);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v330);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v331);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v332);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v333);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v334);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v335);
  sub_22BE27A50();
  MEMORY[0x28223BE20](v336);
  sub_22BE18094();
  MEMORY[0x28223BE20](v337);
  sub_22BE23858();
  MEMORY[0x28223BE20](v338);
  sub_22BE2017C();
  MEMORY[0x28223BE20](v339);
  sub_22BE25ED0();
  MEMORY[0x28223BE20](v340);
  sub_22BE2EDB8();
  v342 = v25[3];
  v341 = v25[4];
  v740 = v25;
  sub_22BE25318(v25);
  sub_22BE32B90();
  v343 = v741;
  sub_22C274214();
  if (!v343)
  {
    v600 = v20;
    v344 = v737;
    v345 = v738;
    v346 = a10;
    v347 = sub_22C273ED4();
    v348 = sub_22BE7C5C4(v347, 0);
    if (v350 == v349 >> 1)
    {
      v741 = v348;
      v351 = v735;
      v352 = v344;
    }

    else
    {
      sub_22BE38A18();
      sub_22BE3E9D8();
      if (v359 == v360)
      {
        __break(1u);
        return;
      }

      v599 = *(v358 + v357);
      v361 = sub_22BEC0558(v353, v354, v355, v356, v357);
      v362 = sub_22BE7C5C0(v361);
      v364 = v363;
      v366 = v365;
      swift_unknownObjectRelease();
      v741 = v362;
      v352 = v344;
      if (v364 == v366 >> 1)
      {
        v367 = v345;
        v368 = v731;
        v369 = v732;
        switch(v599)
        {
          case 1:
            LOBYTE(v742[0]) = 1;
            sub_22C173A20();
            sub_22C18E018(&v721);
            type metadata accessor for UserTurnStarted(0);
            sub_22C18ED9C();
            sub_22BE20458(v403);
            sub_22BE28C80(&v607);
            v404 = v609[8];
            sub_22C18EB68();
            sub_22C273EB4();
            swift_unknownObjectRelease();
            v504 = sub_22BE3A530(&v637);
            v505(v504, v404);
            sub_22BE363F8();
            v506(v346, v739);
            goto LABEL_57;
          case 2:
            LOBYTE(v742[0]) = 2;
            sub_22C173978();
            sub_22C18E018(&v720);
            sub_22C173E64();
            sub_22BE36090();
            sub_22C273EB4();
            swift_unknownObjectRelease();
            v484 = sub_22BE40C84(&v639);
            v485(v484);
            v486 = sub_22BE287C0();
            v487(v486);
            sub_22BE48898(*&v742[0]);
            *(v368 + 8) = *(v742 + 8);
            sub_22BE1B62C();
            goto LABEL_59;
          case 3:
            LOBYTE(v742[0]) = 3;
            sub_22C173924();
            sub_22BE23940(&v722);
            type metadata accessor for Request(0);
            sub_22C18E0B8();
            sub_22BE20458(v401);
            sub_22BE1C1A4(&v608);
            sub_22BE23A44();
            swift_unknownObjectRelease();
            v492 = sub_22BE361AC(&v641);
            v493(v492);
            v494 = sub_22C18DFD8();
            v495(v494);
            sub_22BE3AF28();
            goto LABEL_58;
          case 4:
            LOBYTE(v742[0]) = 4;
            sub_22C17387C();
            sub_22BE23940(&v723);
            sub_22C173E10();
            sub_22BE385D8();
            sub_22C273EB4();
            v391 = (v368 + 8);
            v392 = (v735 + 8);
            swift_unknownObjectRelease();
            (*v391)(v369, v611);
            v463 = *v392;
            v464 = sub_22BE1B328();
            v465(v464);
            v466 = v742[1];
            *v600 = v742[0];
            v600[1] = v466;
            v600[2] = *v743;
            *(v600 + 41) = *&v743[9];
            sub_22BE1B62C();
            goto LABEL_59;
          case 5:
            LOBYTE(v742[0]) = 5;
            sub_22C173828();
            sub_22C18E018(&v724);
            type metadata accessor for Action(0);
            sub_22BE415B0();
            sub_22BE20458(v407);
            sub_22BE28C80(&v610);
            sub_22BE40624();
            swift_unknownObjectRelease();
            v525 = sub_22BE40C84(&v644);
            v526(v525);
            v527 = sub_22BE287C0();
            v528(v527);
LABEL_57:
            swift_storeEnumTagMultiPayload();
            sub_22BE1A054();
            goto LABEL_60;
          case 6:
            LOBYTE(v742[0]) = 6;
            sub_22C1737D4();
            sub_22BE23940(&v725);
            type metadata accessor for ActionCancellation(0);
            sub_22C18ED00();
            sub_22BE20458(v413);
            sub_22BE1C1A4(&v611);
            sub_22BE23A44();
            swift_unknownObjectRelease();
            v533 = sub_22BE361AC(&v646);
            v534(v533);
            v535 = sub_22C18DFD8();
            v536(v535);
            sub_22BE3AF28();
            goto LABEL_58;
          case 7:
            LOBYTE(v742[0]) = 7;
            sub_22C173780();
            sub_22BE23940(&v726);
            type metadata accessor for ClientAction(0);
            sub_22BE3CE44();
            sub_22BE20458(v402);
            sub_22BE1C1A4(&v612);
            sub_22BE23A44();
            swift_unknownObjectRelease();
            v496 = sub_22BE361AC(&v648);
            v497(v496);
            v498 = sub_22C18DFD8();
            v499(v498);
            sub_22BE3AF28();
            goto LABEL_58;
          case 8:
            LOBYTE(v742[0]) = 8;
            sub_22C17372C();
            sub_22BE23940(&v727);
            type metadata accessor for QueryStep(0);
            sub_22C18ECB8();
            sub_22BE20458(v415);
            sub_22BE1C1A4(&v613);
            sub_22BE23A44();
            swift_unknownObjectRelease();
            v545 = sub_22BE361AC(&v650);
            v546(v545);
            v547 = sub_22C18DFD8();
            v548(v547);
            sub_22BE3AF28();
            goto LABEL_58;
          case 9:
            LOBYTE(v742[0]) = 9;
            sub_22C1736D8();
            sub_22BE23940(&v728);
            type metadata accessor for VariableStep(0);
            sub_22BE3B2E4();
            sub_22BE20458(v397);
            sub_22BE1C1A4(&v614);
            sub_22BE23A44();
            swift_unknownObjectRelease();
            v472 = sub_22BE361AC(&v652);
            v473(v472);
            v474 = sub_22C18DFD8();
            v475(v474);
            sub_22BE3AF28();
            goto LABEL_58;
          case 10:
            LOBYTE(v742[0]) = 10;
            sub_22C173684();
            sub_22BE23940(&v729);
            type metadata accessor for Session.RecoverableError(0);
            sub_22C18ECD0();
            sub_22BE20458(v414);
            sub_22BE1C1A4(&v615);
            sub_22BE23A44();
            swift_unknownObjectRelease();
            v541 = sub_22BE361AC(&v654);
            v542(v541);
            v543 = sub_22C18DFD8();
            v544(v543);
            sub_22BE3AF28();
            goto LABEL_58;
          case 11:
            LOBYTE(v742[0]) = 11;
            sub_22C173630();
            sub_22BE351B8(&v731);
            sub_22C18E1B4();
            type metadata accessor for SessionError();
            sub_22C18EE5C();
            sub_22BE20458(v390);
            sub_22BE1C1A4(&v616);
            sub_22C273EB4();
            swift_unknownObjectRelease();
            v459 = sub_22BE3A530(&v658);
            v460(v459, v369);
            v461 = sub_22C18DFD8();
            v462(v461);
            sub_22BE3AF28();
            goto LABEL_58;
          case 12:
            LOBYTE(v742[0]) = 12;
            sub_22C1735DC();
            sub_22BE3C6E0(&v730);
            sub_22BE3788C();
            sub_22C273DE4();
            swift_unknownObjectRelease();
            v393 = sub_22BE194B4(&v656);
            v394(v393, v625);
            v395 = sub_22BE4073C();
            v396(v395);
            sub_22BE1B73C();
            goto LABEL_41;
          case 13:
            LOBYTE(v742[0]) = 13;
            sub_22BE46594();
            sub_22C18E018(&v732);
            swift_unknownObjectRelease();
            v408 = *(v367 + 8);
            v409 = sub_22BE392D4();
            v410(v409);
            v411 = sub_22BE4073C();
            v412(v411);
            sub_22BE1B73C();
LABEL_41:
            swift_storeEnumTagMultiPayload();
            goto LABEL_61;
          case 14:
            LOBYTE(v742[0]) = 14;
            sub_22C173588();
            sub_22BE23940(&v733);
            type metadata accessor for QueryStepResults(0);
            sub_22BE3C260();
            sub_22BE20458(v389);
            sub_22BE1C1A4(&v617);
            sub_22BE23A44();
            swift_unknownObjectRelease();
            v451 = sub_22BE361AC(&v659);
            v452(v451);
            v453 = sub_22C18DFD8();
            v454(v453);
            sub_22BE3AF28();
            goto LABEL_58;
          case 15:
            LOBYTE(v742[0]) = 15;
            sub_22C173534();
            sub_22BE23940(&v734);
            type metadata accessor for ActionResolverRequest(0);
            sub_22C18ED24();
            sub_22BE20458(v400);
            sub_22BE1C1A4(&v618);
            sub_22BE23A44();
            swift_unknownObjectRelease();
            v488 = sub_22BE361AC(&v661);
            v489(v488);
            v490 = sub_22C18DFD8();
            v491(v490);
            sub_22BE3AF28();
            goto LABEL_58;
          case 16:
            LOBYTE(v742[0]) = 16;
            sub_22C17348C();
            sub_22C18E018(&v735);
            sub_22C173DBC();
            sub_22BE36090();
            sub_22C273EB4();
            swift_unknownObjectRelease();
            v447 = sub_22BE40C84(&v663);
            v448(v447);
            v449 = sub_22BE287C0();
            v450(v449);
            sub_22BE48898(*&v742[0]);
            sub_22BE1B62C();
            goto LABEL_59;
          case 17:
            LOBYTE(v742[0]) = 17;
            sub_22C1733E4();
            sub_22C18E018(&v736);
            sub_22C173D68();
            sub_22BE36090();
            sub_22C273EB4();
            swift_unknownObjectRelease();
            v511 = sub_22BE40C84(&v665);
            v512(v511);
            v513 = sub_22BE287C0();
            v514(v513);
            sub_22BE1B62C();
            goto LABEL_59;
          case 18:
            LOBYTE(v742[0]) = 18;
            sub_22C17333C();
            sub_22C18E018(&v737);
            sub_22C173D14();
            sub_22BE36090();
            sub_22C273EB4();
            swift_unknownObjectRelease();
            v537 = sub_22BE40C84(&v667);
            v538(v537);
            v539 = sub_22BE287C0();
            v540(v539);
            *v601 = v742[0];
            sub_22BE1B62C();
            goto LABEL_59;
          case 19:
            LOBYTE(v742[0]) = 19;
            sub_22C173294();
            sub_22C18E018(&v738);
            sub_22C173CC0();
            sub_22BE36090();
            sub_22C273EB4();
            swift_unknownObjectRelease();
            v565 = sub_22BE40C84(&v669);
            v566(v565);
            v567 = sub_22BE287C0();
            v568(v567);
            *v602 = v742[0];
            sub_22BE1B62C();
            goto LABEL_59;
          case 20:
            LOBYTE(v742[0]) = 20;
            sub_22C1731EC();
            sub_22C18E018(&v739);
            sub_22C173C6C();
            sub_22BE36090();
            sub_22C273EB4();
            swift_unknownObjectRelease();
            v519 = sub_22BE40C84(&v671);
            v520(v519);
            v521 = sub_22BE287C0();
            v522(v521);
            v523 = v742[1];
            v524 = *v743;
            *v603 = v742[0];
            *(v603 + 16) = v523;
            *(v603 + 32) = v524;
            *(v603 + 40) = *&v743[8];
            sub_22BE1B62C();
            goto LABEL_59;
          case 21:
            LOBYTE(v742[0]) = 21;
            sub_22C173144();
            sub_22C18E018(&v740);
            sub_22C173C18();
            sub_22BE36090();
            sub_22C273EB4();
            swift_unknownObjectRelease();
            v529 = sub_22BE40C84(&v673);
            v530(v529);
            v531 = sub_22BE287C0();
            v532(v531);
            sub_22BE48898(*&v742[0]);
            sub_22BE1B62C();
            goto LABEL_59;
          case 22:
            LOBYTE(v742[0]) = 22;
            sub_22C1730F0();
            sub_22BE23940(&v741);
            sub_22C26F754();
            sub_22C18ED84();
            sub_22BE20458(v418);
            sub_22BE1C1A4(&v619);
            sub_22BE23A44();
            swift_unknownObjectRelease();
            v557 = sub_22BE361AC(&v675);
            v558(v557);
            v559 = sub_22C18DFD8();
            v560(v559);
            sub_22BE3AF28();
            goto LABEL_58;
          case 23:
            LOBYTE(v742[0]) = 23;
            sub_22C17309C();
            sub_22BE23940(v742);
            type metadata accessor for StatementResult(0);
            sub_22C18ED54();
            sub_22BE20458(v420);
            sub_22BE1C1A4(&v620);
            sub_22BE23A44();
            swift_unknownObjectRelease();
            v573 = sub_22BE361AC(&v677);
            v574(v573);
            v575 = sub_22C18DFD8();
            v576(v575);
            sub_22BE3AF28();
            goto LABEL_58;
          case 24:
            LOBYTE(v742[0]) = 24;
            sub_22BE45BD4();
            sub_22BE23940(v742 + 8);
            type metadata accessor for ExternalAgentRequest(0);
            sub_22C18EC70();
            sub_22BE20458(v399);
            sub_22BE1C1A4(&v621);
            sub_22BE23A44();
            swift_unknownObjectRelease();
            v480 = sub_22BE361AC(&v679);
            v481(v480);
            v482 = sub_22C18DFD8();
            v483(v482);
            sub_22BE3AF28();
            goto LABEL_58;
          case 25:
            LOBYTE(v742[0]) = 25;
            sub_22BE48A9C();
            sub_22BE23940(&v742[1]);
            type metadata accessor for ExternalAgentOutcome(0);
            sub_22C18EC28();
            sub_22BE20458(v398);
            sub_22BE1C1A4(&v622);
            sub_22BE23A44();
            swift_unknownObjectRelease();
            v476 = sub_22BE361AC(&v681);
            v477(v476);
            v478 = sub_22C18DFD8();
            v479(v478);
            sub_22BE3AF28();
            goto LABEL_58;
          case 26:
            LOBYTE(v742[0]) = 26;
            sub_22C173048();
            sub_22C18E018(&v742[1] + 8);
            sub_22C173BC4();
            sub_22BE36090();
            sub_22C273EB4();
            swift_unknownObjectRelease();
            v590 = sub_22BE40C84(&v683);
            v591(v590);
            v592 = sub_22BE287C0();
            v593(v592);
            sub_22BE48898(*&v742[0]);
            *(v368 + 8) = *(v742 + 8);
            sub_22BE1B62C();
            goto LABEL_59;
          case 27:
            LOBYTE(v742[0]) = 27;
            sub_22C172FF4();
            sub_22BE23940(v743);
            type metadata accessor for ToolResolution(0);
            sub_22C18EDE4();
            sub_22BE20458(v387);
            sub_22BE1C1A4(&v623);
            sub_22BE23A44();
            swift_unknownObjectRelease();
            v439 = sub_22BE361AC(&v685);
            v440(v439);
            v441 = sub_22C18DFD8();
            v442(v441);
            sub_22BE3AF28();
            goto LABEL_58;
          case 28:
            LOBYTE(v742[0]) = 28;
            sub_22C172FA0();
            sub_22BE23940(&v743[8]);
            type metadata accessor for UndoRedoRequest(0);
            sub_22C18EBE0();
            sub_22BE20458(v421);
            sub_22BE1C1A4(&v624);
            sub_22BE23A44();
            swift_unknownObjectRelease();
            v577 = sub_22BE361AC(&v687);
            v578(v577);
            v579 = sub_22C18DFD8();
            v580(v579);
            sub_22BE3AF28();
            goto LABEL_58;
          case 29:
            LOBYTE(v742[0]) = 29;
            sub_22C172F4C();
            sub_22BE23940(&v743[16]);
            type metadata accessor for ClientUndoRedoRequest(0);
            sub_22C18EEBC();
            sub_22BE20458(v422);
            sub_22BE1C1A4(&v625);
            sub_22BE23A44();
            swift_unknownObjectRelease();
            v581 = sub_22BE361AC(&v689);
            v582(v581);
            v583 = sub_22C18DFD8();
            v584(v583);
            sub_22BE3AF28();
            goto LABEL_58;
          case 30:
            LOBYTE(v742[0]) = 30;
            sub_22C172EF8();
            sub_22BE23940(&v743[24]);
            type metadata accessor for TypeConversionRequest(0);
            sub_22C18EC10();
            sub_22BE20458(v416);
            sub_22BE1C1A4(&v626);
            sub_22BE23A44();
            swift_unknownObjectRelease();
            v549 = sub_22BE361AC(&v691);
            v550(v549);
            v551 = sub_22C18DFD8();
            v552(v551);
            sub_22BE3AF28();
            goto LABEL_58;
          case 31:
            LOBYTE(v742[0]) = 31;
            sub_22C172EA4();
            sub_22BE23940(&v744);
            type metadata accessor for TypeConversionResult(0);
            sub_22C18EBF8();
            sub_22BE20458(v405);
            sub_22BE1C1A4(&v627);
            sub_22BE23A44();
            swift_unknownObjectRelease();
            v507 = sub_22BE361AC(&v693);
            v508(v507);
            v509 = sub_22C18DFD8();
            v510(v509);
            sub_22BE3AF28();
            goto LABEL_58;
          case 32:
            LOBYTE(v742[0]) = 32;
            sub_22C172E50();
            sub_22BE23940(&v745);
            type metadata accessor for QueryDecorationResult(0);
            sub_22C18ECA0();
            sub_22BE20458(v417);
            sub_22BE1C1A4(&v628);
            sub_22BE23A44();
            swift_unknownObjectRelease();
            v553 = sub_22BE361AC(&v695);
            v554(v553);
            v555 = sub_22C18DFD8();
            v556(v555);
            sub_22BE3AF28();
            goto LABEL_58;
          case 33:
            LOBYTE(v742[0]) = 33;
            sub_22C172DA8();
            sub_22C18E018(&a9);
            sub_22C173B70();
            sub_22BE36090();
            sub_22C273EB4();
            swift_unknownObjectRelease();
            v455 = sub_22BE40C84(&v697);
            v456(v455);
            v457 = sub_22BE287C0();
            v458(v457);
            sub_22BE1B62C();
            goto LABEL_59;
          case 34:
            LOBYTE(v742[0]) = 34;
            sub_22C172D54();
            sub_22BE23940(&a10);
            type metadata accessor for QueryDecorationPrePlannerResult(0);
            sub_22C18EC88();
            sub_22BE20458(v388);
            sub_22BE1C1A4(&v629);
            sub_22BE23A44();
            swift_unknownObjectRelease();
            v443 = sub_22BE361AC(&v699);
            v444(v443);
            v445 = sub_22C18DFD8();
            v446(v445);
            sub_22BE3AF28();
            goto LABEL_58;
          case 35:
            LOBYTE(v742[0]) = 35;
            sub_22C172D00();
            sub_22BE23940(&a11);
            type metadata accessor for SkipStatement(0);
            sub_22C18EE74();
            sub_22BE20458(v385);
            sub_22BE1C1A4(&v630);
            sub_22BE23A44();
            swift_unknownObjectRelease();
            v431 = sub_22BE361AC(&v701);
            v432(v431);
            v433 = sub_22C18DFD8();
            v434(v433);
            sub_22BE3AF28();
            goto LABEL_58;
          case 36:
            LOBYTE(v742[0]) = 36;
            sub_22C172CAC();
            sub_22BE23940(&a12);
            type metadata accessor for ExecutionPreconditionEvaluatorRequest(0);
            sub_22C18EEA4();
            sub_22BE20458(v386);
            sub_22BE1C1A4(&v631);
            sub_22BE23A44();
            swift_unknownObjectRelease();
            v435 = sub_22BE361AC(&v703);
            v436(v435);
            v437 = sub_22C18DFD8();
            v438(v437);
            sub_22BE3AF28();
            goto LABEL_58;
          case 37:
            LOBYTE(v742[0]) = 37;
            sub_22C172C58();
            sub_22BE23940(&a13);
            type metadata accessor for RequestAmendment(0);
            sub_22BE31148();
            sub_22BE20458(v384);
            sub_22BE1C1A4(&v632);
            sub_22BE23A44();
            swift_unknownObjectRelease();
            v427 = sub_22BE361AC(&v705);
            v428(v427);
            v429 = sub_22C18DFD8();
            v430(v429);
            sub_22BE3AF28();
            goto LABEL_58;
          case 38:
            LOBYTE(v742[0]) = 38;
            sub_22C172BB0();
            sub_22C18E018(&a14);
            sub_22C173B1C();
            sub_22BE36090();
            sub_22C273EB4();
            swift_unknownObjectRelease();
            v585 = sub_22BE40C84(&v707);
            v586(v585);
            v587 = sub_22BE287C0();
            v588(v587);
            v589 = *(&v742[0] + 1);
            *v604 = *&v742[0];
            v604[1] = v589;
            sub_22BE1B62C();
            goto LABEL_59;
          case 39:
            LOBYTE(v742[0]) = 39;
            sub_22C172B08();
            sub_22C18E018(&a15);
            sub_22C173AC8();
            sub_22BE36090();
            sub_22C273EB4();
            swift_unknownObjectRelease();
            v561 = sub_22BE40C84(&v709);
            v562(v561);
            v563 = sub_22BE287C0();
            v564(v563);
            sub_22BE1B62C();
            goto LABEL_59;
          case 40:
            LOBYTE(v742[0]) = 40;
            sub_22C172A60();
            sub_22C18E018(&a16);
            sub_22C173A74();
            sub_22BE36090();
            sub_22C273EB4();
            swift_unknownObjectRelease();
            v467 = sub_22BE40C84(&v711);
            v468(v467);
            v469 = sub_22BE287C0();
            v470(v469);
            v471 = *(&v742[0] + 1);
            *v605 = *&v742[0];
            v605[1] = v471;
            sub_22BE1B62C();
LABEL_59:
            swift_storeEnumTagMultiPayload();
            sub_22BE1A054();
            goto LABEL_60;
          case 41:
            LOBYTE(v742[0]) = 41;
            sub_22C172A0C();
            sub_22BE23940(&a17);
            sub_22C270074();
            sub_22C18EC58();
            sub_22BE20458(v406);
            sub_22BE1C1A4(&v633);
            sub_22BE23A44();
            swift_unknownObjectRelease();
            v515 = sub_22BE361AC(&v713);
            v516(v515);
            v517 = sub_22C18DFD8();
            v518(v517);
            sub_22BE3AF28();
            goto LABEL_58;
          case 42:
            LOBYTE(v742[0]) = 42;
            sub_22C1729B8();
            sub_22BE23940(&a18);
            sub_22C270234();
            sub_22C18EDFC();
            sub_22BE20458(v419);
            sub_22BE1C1A4(&v634);
            sub_22BE23A44();
            swift_unknownObjectRelease();
            v569 = sub_22BE361AC(&v715);
            v570(v569);
            v571 = sub_22C18DFD8();
            v572(v571);
            sub_22BE3AF28();
            goto LABEL_58;
          case 43:
            LOBYTE(v742[0]) = 43;
            sub_22C172964();
            sub_22C18E1B4();
            type metadata accessor for AgentPrimitiveAction(0);
            sub_22BE3CCA4();
            sub_22BE20458(v383);
            sub_22BE23A44();
            swift_unknownObjectRelease();
            v423 = sub_22BE361AC(&v717);
            v424(v423);
            v425 = sub_22C18DFD8();
            v426(v425);
            sub_22BE3AF28();
            goto LABEL_58;
          default:
            LOBYTE(v742[0]) = 0;
            sub_22BE32DD8();
            sub_22BE23940(&v719);
            type metadata accessor for SessionStart(0);
            sub_22C18EED4();
            sub_22BE20458(v370);
            sub_22BE1C1A4(&v606);
            sub_22BE23A44();
            swift_unknownObjectRelease();
            v500 = sub_22BE361AC(&v636);
            v501(v500);
            v502 = sub_22C18DFD8();
            v503(v502);
            sub_22BE3AF28();
LABEL_58:
            swift_storeEnumTagMultiPayload();
            sub_22BE1A054();
LABEL_60:
            sub_22BE22944(v609);
            sub_22C171FA8(v594, v595);
LABEL_61:
            v596 = v740;
            sub_22BE1A054();
            v597 = sub_22BE27A44();
            sub_22C171FA8(v597, v598);
            v382 = v596;
            break;
        }

        goto LABEL_12;
      }

      v351 = v735;
    }

    sub_22C273B34();
    sub_22BE196B4();
    v372 = v371;
    v373 = *(sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0) + 48);
    *v372 = v352;
    sub_22C273DF4();
    sub_22BE1A918();
    v374 = *MEMORY[0x277D84160];
    sub_22BE18994();
    v376 = *(v375 + 104);
    v377 = sub_22BE38608();
    v378(v377);
    swift_willThrow();
    swift_unknownObjectRelease();
    v379 = *(v351 + 8);
    v380 = sub_22BE1B73C();
    v381(v380);
  }

  v382 = v740;
LABEL_12:
  sub_22BE26B64(v382);
  sub_22C18F0A4();
  sub_22BE18478();
}

void static Session.Event.== infix(_:_:)()
{
  sub_22BE19460();
  sub_22BE23708();
  v4 = sub_22C26E1D4();
  v5 = sub_22BE179D8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE18DFC();
  v10 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v10);
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE234F4();
  v14 = sub_22BE5CE4C(&qword_27D90A8E8, &qword_22C288AF8);
  sub_22BE18000(v14);
  v16 = *(v15 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  sub_22BE1B01C();
  sub_22BE1B5EC();
  if ((sub_22C26E1B4() & 1) == 0)
  {
    goto LABEL_50;
  }

  v18 = type metadata accessor for Session.Event(0);
  sub_22C18F344(*(v18 + 20));
  if ((sub_22C26E1B4() & 1) == 0)
  {
    goto LABEL_50;
  }

  v63 = v18;
  v64 = v0;
  v19 = *(v18 + 24);
  v20 = *(v14 + 48);
  sub_22C18F844();
  v21 = v64;
  sub_22C18F844();
  sub_22BE181B0(v3);
  if (!v22)
  {
    sub_22BE1B18C();
    sub_22BE22814();
    sub_22BE181B0(v3 + v20);
    if (!v22)
    {
      sub_22C18F458();
      v25(v2, v3 + v20, v4);
      sub_22BE18B28();
      sub_22BE20458(v26);
      sub_22BE33560();
      v27 = sub_22C272FD4();
      v28 = *(v7 + 8);
      v29 = sub_22BE431C0();
      v28(v29);
      v30 = sub_22BE35838();
      v28(v30);
      v21 = v64;
      sub_22C18DC5C(v3, &qword_27D9082F0);
      if ((v27 & 1) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_13;
    }

    v23 = sub_22C18E894();
    v24(v23, v4);
LABEL_11:
    sub_22C18DC5C(v3, &qword_27D90A8E8);
    goto LABEL_50;
  }

  sub_22BE181B0(v3 + v20);
  if (!v22)
  {
    goto LABEL_11;
  }

  sub_22C18DC5C(v3, &qword_27D9082F0);
LABEL_13:
  sub_22C18F344(v63[7]);
  static Session.Event.Payload.== infix(_:_:)();
  if ((v31 & 1) == 0)
  {
    goto LABEL_50;
  }

  sub_22C18E1A0(v63[8]);
  v34 = v22 && v32 == v33;
  if (!v34 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_50;
  }

  sub_22C18E1A0(v63[9]);
  v37 = v22 && v35 == v36;
  if (!v37 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_50;
  }

  sub_22C18E1A0(v63[10]);
  v40 = v22 && v38 == v39;
  if (!v40 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_50;
  }

  sub_22C18E728(v1 + v63[11]);
  if (v43)
  {
    if (!v41)
    {
      goto LABEL_50;
    }

    sub_22BE3A508(v42);
    v46 = v22 && v44 == v45;
    if (!v46 && (sub_22C274014() & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  else if (v41)
  {
    goto LABEL_50;
  }

  v47 = sub_22C18F344(v63[12]);
  if (static Timepoint.== infix(_:_:)(v47, v48))
  {
    sub_22C18E728(v1 + v63[13]);
    if (v51)
    {
      if (!v49)
      {
        goto LABEL_50;
      }

      sub_22BE3A508(v50);
      v54 = v22 && v52 == v53;
      if (!v54 && (sub_22C274014() & 1) == 0)
      {
        goto LABEL_50;
      }

LABEL_48:
      v55 = v63[14];
      v56 = *(v1 + v55 + 8);
      v57 = *(v21 + v55 + 8);
      if (v56)
      {
        if (!v57)
        {
          goto LABEL_50;
        }
      }

      else
      {
        sub_22BE35DEC();
        if (v59)
        {
          goto LABEL_50;
        }
      }

      v60 = v63[15];
      v61 = *(v1 + v60);
      v62 = *(v21 + v60);
      sub_22BEA3324();
      goto LABEL_51;
    }

    if (!v49)
    {
      goto LABEL_48;
    }
  }

LABEL_50:
  v58 = 0;
LABEL_51:
  sub_22BE1C1DC(v58);
  sub_22BE1AABC();
}

uint64_t sub_22C132CE0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6576457972657571 && a2 == 0xEC0000006449746ELL;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x64616F6C796170 && a2 == 0xE700000000000000;
        if (v8 || (sub_22C274014() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6552746E65696C63 && a2 == 0xEF64497473657571;
          if (v9 || (sub_22C274014() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6553746E65696C63 && a2 == 0xEF64496E6F697373;
            if (v10 || (sub_22C274014() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000013 && 0x800000022C2DAEA0 == a2;
              if (v11 || (sub_22C274014() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x7247746E65696C63 && a2 == 0xED0000644970756FLL;
                if (v12 || (sub_22C274014() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6E696F70656D6974 && a2 == 0xE900000000000074;
                  if (v13 || (sub_22C274014() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x7265646E6573 && a2 == 0xE600000000000000;
                    if (v14 || (sub_22C274014() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x53676E6974736F70 && a2 == 0xEB000000006E6170;
                      if (v15 || (sub_22C274014() & 1) != 0)
                      {

                        return 10;
                      }

                      else if (a1 == 0x6574616974696E69 && a2 == 0xEE00736E61705364)
                      {

                        return 11;
                      }

                      else
                      {
                        v17 = sub_22C274014();

                        if (v17)
                        {
                          return 11;
                        }

                        else
                        {
                          return 12;
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
}

uint64_t sub_22C1330B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C132CE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C1330D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22C1330A8();
  *a1 = result;
  return result;
}

uint64_t sub_22C133100(uint64_t a1)
{
  v2 = sub_22BE271CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C13313C(uint64_t a1)
{
  v2 = sub_22BE271CC();

  return MEMORY[0x2821FE720](a1, v2);
}

void Session.Event.init(from:)()
{
  sub_22BE19130();
  v6 = v5;
  v68 = v7;
  v69 = type metadata accessor for Timepoint();
  v8 = sub_22BE18000(v69);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE17A44();
  v70 = v11;
  v12 = sub_22BE183BC();
  v71 = type metadata accessor for Session.Event.Payload(v12);
  v13 = sub_22BE18000(v71);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BE1955C();
  v16 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v16);
  v18 = *(v17 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  sub_22BE1B01C();
  v20 = sub_22C26E1D4();
  v21 = sub_22BE179D8(v20);
  v77 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22BE183AC();
  sub_22BE27A50();
  MEMORY[0x28223BE20](v25);
  sub_22BE25A90();
  v72 = sub_22BE5CE4C(&qword_27D912C58, &qword_22C2B7DF8);
  sub_22BE179D8(v72);
  v27 = *(v26 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v28);
  sub_22BE25CD0();
  v29 = type metadata accessor for Session.Event(0);
  v30 = sub_22BE18000(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  sub_22BE179EC();
  v75 = v33[6];
  v76 = v33;
  v74 = v35 - v34;
  sub_22BE1A140();
  sub_22BE19DC4(v36, v37, v38, v20);
  v39 = *(v6 + 24);
  v40 = *(v6 + 32);
  v41 = sub_22C18FE2C();
  sub_22BE3C0A8(v41);
  sub_22BE271CC();
  sub_22BEC046C();
  sub_22BE2BC6C();
  sub_22C274214();
  if (v0)
  {
    sub_22C18F1A4();
    sub_22BE26B64(v73);
    sub_22C18DC5C(v74 + v75, &qword_27D9082F0);
    if (v3)
    {
      sub_22C18F2B8(v76[8]);

      if (!v2)
      {
LABEL_9:
        if (!v6)
        {
LABEL_11:

          goto LABEL_12;
        }

LABEL_10:
        v43 = *(v74 + v76[10] + 8);

        goto LABEL_11;
      }
    }

    else if (!v2)
    {
      goto LABEL_9;
    }

    sub_22C18F2B8(v76[9]);

    if (!v6)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v67 = v4;
  sub_22BE18B28();
  sub_22BE20458(v42);
  sub_22C18F744();
  sub_22C273EB4();
  v44 = *(v77 + 32);
  v45 = sub_22BE260B8();
  v47 = v46;
  (v46)(v45);
  sub_22C18FD18();
  sub_22C18F744();
  sub_22C273EB4();
  v47(v74 + v76[5], v1, v20);
  sub_22C18F744();
  sub_22C273E44();
  sub_22BE2343C();
  sub_22C18EB50();
  sub_22BE20458(v48);
  sub_22C18E618();
  sub_22C273EB4();
  v49 = v76[7];
  sub_22BE1A054();
  sub_22C171FA8(v67, v74 + v50);
  sub_22C18E81C(4);
  v51 = sub_22C273E64();
  sub_22BE37C38(v51, v52, v76[8]);
  sub_22C18E81C(5);
  v53 = sub_22C273E64();
  sub_22BE37C38(v53, v54, v76[9]);
  sub_22C18E81C(6);
  v55 = sub_22C273E64();
  sub_22BE37C38(v55, v56, v76[10]);
  sub_22C18E81C(7);
  v57 = sub_22C273E04();
  sub_22BE37C38(v57, v58, v76[11]);
  LOBYTE(v78) = 8;
  sub_22BE48880();
  sub_22BE20458(v59);
  sub_22C18E618();
  sub_22C273EB4();
  v60 = v76[12];
  sub_22BE38554();
  sub_22C171FA8(v70, v61);
  sub_22C11BDCC();
  sub_22C18F9D0();
  sub_22C273E44();
  v62 = (v74 + v76[13]);
  *v62 = v78;
  v62[1] = v79;
  sub_22C11BE20();
  sub_22C18F9D0();
  sub_22C273E44();
  v63 = v74 + v76[14];
  *v63 = v78;
  *(v63 + 8) = v79;
  sub_22BE5CE4C(&qword_27D912C50, &qword_22C2B7DF0);
  sub_22BE32284();
  sub_22C18F9D0();
  sub_22C273EB4();
  v64 = sub_22C18F1B4();
  v65(v64);
  *(v74 + v76[15]) = v78;
  v66 = sub_22BE19EBC();
  sub_22BE1A964(v66, v68);
  sub_22BE26B64(v73);
  sub_22BE26148();
  sub_22C171FFC();
LABEL_12:
  sub_22BE18478();
}

void Session.Plan.init(prompt:promptResponse:statements:overrideId:source:program:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t *a21)
{
  sub_22BE19460();
  v30 = v29;
  sub_22C18F2A8();
  sub_22BE3F3E4();
  v31 = *a21;

  v32 = *v30;
  *v28 = v27;
  *(v28 + 8) = v26;
  *(v28 + 16) = v25;
  *(v28 + 24) = v24;
  *(v28 + 32) = v23;
  *(v28 + 40) = v22;
  *(v28 + 48) = v21;
  *(v28 + 56) = v32;
  sub_22BE1AABC();
}

uint64_t sub_22C133B1C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000017 && 0x800000022C2DB2F0 == a2;
  if (v3 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7265764F6E616C70 && a2 == 0xEC00000065646972;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E616C506C6C7566 && a2 == 0xEB0000000072656ELL;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000020 && 0x800000022C2DB320 == a2;
        if (v8 || (sub_22C274014() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000016 && 0x800000022C2DB350 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_22C274014();

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

unint64_t sub_22C133CD0(char a1)
{
  result = 0x7265764F6E616C70;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6E616C506C6C7566;
      break;
    case 3:
      result = 0xD000000000000020;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    default:
      result = 0xD000000000000017;
      break;
  }

  return result;
}

uint64_t sub_22C133D98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C133B1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C133DC0(uint64_t a1)
{
  v2 = sub_22C173EB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C133DFC(uint64_t a1)
{
  v2 = sub_22C173EB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C133E38(uint64_t a1)
{
  v2 = sub_22C173FB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C133E74(uint64_t a1)
{
  v2 = sub_22C173FB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C133EB0(uint64_t a1)
{
  v2 = sub_22C174008();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C133EEC(uint64_t a1)
{
  v2 = sub_22C174008();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C133F28(uint64_t a1)
{
  v2 = sub_22C17405C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C133F64(uint64_t a1)
{
  v2 = sub_22C17405C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C133FA0(uint64_t a1)
{
  v2 = sub_22C173F0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C133FDC(uint64_t a1)
{
  v2 = sub_22C173F0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C134018(uint64_t a1)
{
  v2 = sub_22C173F60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C134054(uint64_t a1)
{
  v2 = sub_22C173F60();

  return MEMORY[0x2821FE720](a1, v2);
}

void Session.Plan.Source.encode(to:)()
{
  sub_22BE19130();
  sub_22BE3FF70();
  v2 = sub_22BE5CE4C(&qword_27D912C70, &qword_22C2B7E00);
  sub_22BE179D8(v2);
  v4 = *(v3 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE20168(v6, v42);
  v7 = sub_22BE5CE4C(&qword_27D912C78, &qword_22C2B7E08);
  sub_22BE179D8(v7);
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE181D0(v11, v43);
  v12 = sub_22BE5CE4C(&qword_27D912C80, &qword_22C2B7E10);
  sub_22BE179D8(v12);
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE2BA30(v16, v44);
  v17 = sub_22BE5CE4C(&qword_27D912C88, &qword_22C2B7E18);
  sub_22BE179D8(v17);
  v19 = *(v18 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  sub_22C18E344(v21);
  v22 = sub_22BE5CE4C(&qword_27D912C90, &qword_22C2B7E20);
  sub_22BE179D8(v22);
  v24 = *(v23 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v25);
  sub_22BE2C64C();
  v26 = sub_22BE5CE4C(&qword_27D912C98, &qword_22C2B7E28);
  sub_22BE1A3D8(v26);
  v28 = v27;
  v30 = *(v29 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v31);
  sub_22BE1A8B4();
  v32 = *v0;
  v33 = *(v1 + 24);
  v34 = *(v1 + 32);
  v35 = sub_22BE3C968();
  sub_22BE26950(v35, v36);
  sub_22C173EB8();
  sub_22BEE939C();
  sub_22C274234();
  switch(v32)
  {
    case 1:
      sub_22C174008();
      sub_22BE36090();
      sub_22C273EE4();
      goto LABEL_7;
    case 2:
      sub_22BE200EC();
      sub_22C173FB4();
      sub_22BE36090();
      sub_22C273EE4();
      goto LABEL_7;
    case 3:
      sub_22C173F60();
      sub_22BE3925C();
      sub_22BE36090();
      sub_22C273EE4();
      goto LABEL_7;
    case 4:
      sub_22C173F0C();
      sub_22BE36090();
      sub_22C273EE4();
LABEL_7:
      v37 = sub_22BE2399C();
      break;
    default:
      sub_22C17405C();
      sub_22BE36090();
      sub_22C273EE4();
      v37 = sub_22C11FDE0();
      break;
  }

  v38(v37);
  v39 = *(v28 + 8);
  v40 = sub_22BE38FD8();
  v41(v40);
  sub_22C18FEDC();
  sub_22BE18478();
}

void Session.Plan.Source.init(from:)()
{
  sub_22BE19130();
  sub_22C18F4C8();
  v67 = v2;
  v3 = sub_22BE5CE4C(&qword_27D912CD0, &qword_22C2B7E30);
  sub_22BE179D8(v3);
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE1A174();
  v7 = sub_22BE5CE4C(&qword_27D912CD8, &qword_22C2B7E38);
  sub_22BE179D8(v7);
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE1A174();
  sub_22BE3BF90(v11);
  v12 = sub_22BE5CE4C(&qword_27D912CE0, &qword_22C2B7E40);
  sub_22BE179D8(v12);
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE3C048(v16, v65);
  v17 = sub_22BE5CE4C(&qword_27D912CE8, &qword_22C2B7E48);
  sub_22BE179D8(v17);
  v19 = *(v18 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  sub_22BE1A8B4();
  v21 = sub_22BE5CE4C(&qword_27D912CF0, &qword_22C2B7E50);
  sub_22BE1A3D8(v21);
  v23 = *(v22 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v24);
  sub_22BE19E64();
  v25 = sub_22BE5CE4C(&qword_27D912CF8, &qword_22C2B7E58);
  sub_22BE179D8(v25);
  v68 = v26;
  v28 = *(v27 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v29);
  sub_22BE1B72C();
  v31 = v1[3];
  v30 = v1[4];
  sub_22BE25318(v1);
  sub_22C173EB8();
  sub_22C274214();
  if (!v69)
  {
    v32 = sub_22C273ED4();
    sub_22BE7C5C4(v32, 0);
    sub_22C18F638();
    if (v33)
    {
      v34 = v68;
    }

    else
    {
      sub_22BE32C78();
      if (v35 == v36)
      {
        __break(1u);
        return;
      }

      v66 = *(v42 + v41);
      v43 = sub_22BE3A464(v37, v38, v39, v40, v41);
      sub_22BE7C5C0(v43);
      v45 = v44;
      v47 = v46;
      swift_unknownObjectRelease();
      if (v45 == v47 >> 1)
      {
        switch(v66)
        {
          case 1:
            sub_22C174008();
            sub_22C18E870();
            swift_unknownObjectRelease();
            goto LABEL_18;
          case 2:
            sub_22BE200EC();
            sub_22C173FB4();
            sub_22C18E870();
            swift_unknownObjectRelease();
            goto LABEL_18;
          case 3:
            sub_22C173F60();
            sub_22C18E870();
            swift_unknownObjectRelease();
LABEL_18:
            v48 = sub_22BE1B5F8();
            break;
          case 4:
            sub_22C173F0C();
            sub_22C18F228();
            sub_22C273DE4();
            swift_unknownObjectRelease();
            v48 = sub_22BEC0304();
            break;
          default:
            sub_22C17405C();
            sub_22C18E870();
            swift_unknownObjectRelease();
            v48 = sub_22BE1B5F8();
            v50 = v0;
            break;
        }

        v49(v48, v50);
        v62 = *(v68 + 8);
        v63 = sub_22BE1B73C();
        v64(v63);
        *v67 = v66;
        sub_22BE26B64(v1);
        goto LABEL_13;
      }

      v34 = v68;
    }

    sub_22C273B34();
    sub_22BE196B4();
    v52 = v51;
    v53 = *(sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0) + 48);
    *v52 = &type metadata for Session.Plan.Source;
    sub_22C273DF4();
    sub_22C18FE8C();
    sub_22BE1B198();
    v54 = *MEMORY[0x277D84160];
    sub_22BE18994();
    v56 = *(v55 + 104);
    v57 = sub_22BE38608();
    v58(v57);
    swift_willThrow();
    swift_unknownObjectRelease();
    v59 = *(v34 + 8);
    v60 = sub_22BE1B73C();
    v61(v60);
  }

  sub_22BE26B64(v1);
LABEL_13:
  sub_22BE467E4();
  sub_22BE18478();
}

uint64_t Session.Plan.overrideId.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return sub_22BE19454();
}

unint64_t Session.Plan.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[4];
  v4 = *(v0 + 56);
  sub_22C273AA4();

  sub_22BE25A74();
  v5 = type metadata accessor for ProgramStatement(0);
  v6 = MEMORY[0x2318ABBB0](v3, v5);
  MEMORY[0x2318AB8D0](v6);

  sub_22C18FAC4();
  v7 = sub_22BE33FD8();
  MEMORY[0x2318AB8D0](v7);
  sub_22C18FD70();
  sub_22C18FAC4();
  v8 = sub_22C273074();
  MEMORY[0x2318AB8D0](v8);

  return 0xD000000000000011;
}

uint64_t sub_22C134C14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74706D6F7270 && a2 == 0xE600000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x655274706D6F7270 && a2 == 0xEE0065736E6F7073;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E656D6574617473 && a2 == 0xEA00000000007374;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656469727265766FLL && a2 == 0xEA00000000006449;
        if (v8 || (sub_22C274014() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_22C274014();

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

uint64_t sub_22C134DC0(char a1)
{
  result = 0x74706D6F7270;
  switch(a1)
  {
    case 1:
      result = 0x655274706D6F7270;
      break;
    case 2:
      result = 0x6E656D6574617473;
      break;
    case 3:
      result = 0x656469727265766FLL;
      break;
    case 4:
      result = 0x656372756F73;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C134E70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C134C14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C134E98(uint64_t a1)
{
  v2 = sub_22C1740B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C134ED4(uint64_t a1)
{
  v2 = sub_22C1740B0();

  return MEMORY[0x2821FE720](a1, v2);
}

void Session.Plan.encode(to:)()
{
  sub_22BE19130();
  v3 = v2;
  v4 = sub_22BE5CE4C(&qword_27D912D00, &qword_22C2B7E60);
  sub_22BE179D8(v4);
  v6 = *(v5 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE19E64();
  v8 = *v0;
  v9 = v0[1];
  v18 = v0[3];
  v19 = v0[2];
  v16 = v0[5];
  v17 = v0[4];
  v15 = v0[6];
  v14 = *(v0 + 56);
  v10 = v3[3];
  v11 = v3[4];
  sub_22BE3C0A8(v3);
  sub_22C1740B0();
  sub_22BE23550();
  sub_22BE2BC6C();
  sub_22C274234();
  sub_22C18E9AC();
  sub_22BE3AF28();
  sub_22C273F54();
  if (!v1)
  {
    sub_22C18E4E0();
    sub_22C18E514();
    sub_22C273F54();
    sub_22BE200EC();
    sub_22BE5CE4C(&qword_27D912D10, &qword_22C2B7E68);
    sub_22C174104();
    sub_22C18F608();
    sub_22C18E118();
    sub_22C273FA4();
    sub_22C18E900();
    sub_22C18E514();
    sub_22C273EF4();
    sub_22C1741B8();
    sub_22BE39020();
    sub_22C273FA4();
  }

  v12 = sub_22C18E748();
  v13(v12);
  sub_22BE35D48();
  sub_22BE18478();
}

void Session.Plan.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_22BE19130();
  sub_22C18F140();
  v16 = v15;
  v17 = sub_22BE5CE4C(&qword_27D912D30, &qword_22C2B7E70);
  sub_22BE179D8(v17);
  v19 = *(v18 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  sub_22BE23E58();
  v21 = v13[3];
  v22 = v13[4];
  sub_22C18E560(v13);
  sub_22C1740B0();
  sub_22BE3CCD4();
  sub_22C18FF90();
  sub_22C274214();
  if (v14)
  {
    sub_22BE26B64(v13);
  }

  else
  {
    sub_22BE45D74();
    v23 = sub_22C273E64();
    v36 = v24;
    LOBYTE(v40[0]) = 1;
    sub_22BE45D74();
    v25 = sub_22C273E64();
    v35 = v26;
    v33 = v25;
    sub_22BE5CE4C(&qword_27D912D10, &qword_22C2B7E68);
    sub_22C17420C();
    sub_22C18E7D8();
    sub_22C273EB4();
    v32 = v40[0];
    LOBYTE(v40[0]) = 3;
    sub_22BE45D74();
    v31 = sub_22C273E04();
    v34 = v27;
    sub_22C1742C0();
    sub_22C18F0BC();
    sub_22C273EB4();
    v28 = sub_22C18E22C();
    v29(v28);
    *&v37 = v23;
    *(&v37 + 1) = v36;
    *&v38 = v33;
    *(&v38 + 1) = v35;
    *&v39[0] = v32;
    *(&v39[0] + 1) = v31;
    *&v39[1] = v34;
    BYTE8(v39[1]) = a13;
    v30 = v38;
    *v16 = v37;
    v16[1] = v30;
    v16[2] = v39[0];
    *(v16 + 41) = *(v39 + 9);
    sub_22C174314(&v37, v40);
    sub_22BE26B64(v13);
    v40[0] = v23;
    v40[1] = v36;
    v40[2] = v33;
    v40[3] = v35;
    v40[4] = v32;
    v40[5] = v31;
    v40[6] = v34;
    v41 = a13;
    sub_22C10D970(v40);
  }

  sub_22BE19650();
  sub_22BE18478();
}

uint64_t Session.RecoverableError.error.getter()
{
  v2 = sub_22BE1A5E4();
  v3 = type metadata accessor for Session.PlanGenerationModelOutputError(v2);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE2379C();
  v6 = type metadata accessor for Session.RecoverableError(0);
  v7 = sub_22BE19448(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE18DFC();
  sub_22C18EAE4();
  v10 = sub_22BE324FC();
  sub_22BE1A964(v10, v11);
  v12 = sub_22BE29370();
  sub_22C171FA8(v12, v1);
  v13 = *(v4 + 32);
  v14 = sub_22C26E5D4();
  sub_22BE1834C(v14);
  (*(v15 + 16))(v0, v1 + v13);
  sub_22C18E39C();
  return sub_22C171FFC();
}

BOOL static Session.PlanGenerationError.== infix(_:_:)(uint64_t a1)
{
  v3 = sub_22BE5CE4C(&qword_27D912D50, &qword_22C2B7E78);
  sub_22BE19448(v3);
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE1B72C();
  v8 = (v1 + *(v7 + 56));
  sub_22BE1A964(a1, v1);
  v9 = sub_22BE1804C();
  sub_22BE1A964(v9, v10);
  v11 = *v1 == *v8 && v1[1] == v8[1];
  v14 = 0;
  if (v11 || (sub_22C274014() & 1) != 0)
  {
    v12 = v1[2] == v8[2] && v1[3] == v8[3];
    if (v12 || (sub_22C274014() & 1) != 0)
    {
      v13 = *(type metadata accessor for Session.PlanGenerationModelOutputError(0) + 24);
      if (sub_22C26E5C4())
      {
        v14 = 1;
      }
    }
  }

  sub_22C171FFC();
  sub_22BE260B8();
  sub_22C171FFC();
  return v14;
}

uint64_t sub_22C135698(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x800000022C2D9CF0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C274014();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22C135738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C135698(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22C135764(uint64_t a1)
{
  v2 = sub_22C17436C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C1357A0(uint64_t a1)
{
  v2 = sub_22C17436C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C1357DC(uint64_t a1)
{
  v2 = sub_22C1743C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C135818(uint64_t a1)
{
  v2 = sub_22C1743C0();

  return MEMORY[0x2821FE720](a1, v2);
}

void Session.RecoverableError.encode(to:)()
{
  sub_22BE19130();
  sub_22C18F804();
  v27 = sub_22BE5CE4C(&qword_27D912D58, &qword_22C2B7E80);
  sub_22BE179D8(v27);
  v2 = v1;
  v4 = *(v3 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE25CD0();
  v6 = type metadata accessor for Session.RecoverableError(0);
  v7 = sub_22BE19448(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE1955C();
  v10 = sub_22BE5CE4C(&qword_27D912D60, &qword_22C2B7E88);
  sub_22BE179D8(v10);
  v12 = v11;
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE23E58();
  v17 = v0[3];
  v16 = v0[4];
  sub_22BE41E84(v0);
  sub_22C17436C();
  sub_22BE3CCD4();
  sub_22BE40618();
  sub_22C274234();
  sub_22C18EAE4();
  v18 = sub_22C18F9B8();
  sub_22BE1A964(v18, v19);
  sub_22C1743C0();
  sub_22BE42748();
  sub_22C273EE4();
  type metadata accessor for Session.PlanGenerationError(0);
  sub_22C18EFD0();
  sub_22BE20458(v20);
  sub_22BE35E54();
  sub_22C18E69C();
  sub_22C273FA4();
  sub_22BE291DC();
  sub_22C171FFC();
  v21 = *(v2 + 8);
  v22 = sub_22BE1B328();
  v23(v22);
  v24 = *(v12 + 8);
  v25 = sub_22BE1824C();
  v26(v25);
  sub_22BEE94B0();
  sub_22BE18478();
}

void Session.RecoverableError.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v13 = sub_22C18E850(v12);
  v51 = type metadata accessor for Session.RecoverableError(v13);
  v14 = sub_22BE18000(v51);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BE17CBC();
  v17 = sub_22BE5CE4C(&qword_27D912D80, &qword_22C2B7E90);
  sub_22BE1BF18(v17);
  v19 = *(v18 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  sub_22BE1B01C();
  v21 = sub_22BE5CE4C(&qword_27D912D88, &qword_22C2B7E98);
  sub_22BE179D8(v21);
  v23 = *(v22 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v24);
  sub_22BE234F4();
  v25 = v10[3];
  v26 = v10[4];
  sub_22BE3C0A8(v10);
  sub_22C17436C();
  sub_22BE48270();
  sub_22BE2BC6C();
  sub_22C274214();
  if (a10)
  {
    goto LABEL_12;
  }

  v27 = sub_22C18F100();
  sub_22BE7C5C4(v27, 0);
  sub_22C18F644();
  if (!v28)
  {
    sub_22BE41798();
    if (v29 == v30)
    {
      __break(1u);
      return;
    }

    v32 = sub_22BE3D6C4(v31);
    sub_22BE7C5C0(v32);
    sub_22C18F14C();
    sub_22C18FFE4();
    if (v28)
    {
      sub_22C1743C0();
      sub_22BE25CA0();
      sub_22C273DE4();
      if (v11)
      {
        v33 = sub_22BE1A194();
        v34(v33, v21);
        swift_unknownObjectRelease();
      }

      else
      {
        type metadata accessor for Session.PlanGenerationError(0);
        sub_22C18EFD0();
        sub_22BE20458(v44);
        sub_22BE377D8();
        sub_22C18F218();
        swift_unknownObjectRelease();
        v45 = sub_22C18E144();
        v46(v45);
        v47 = sub_22BE391A4();
        v48(v47);
        sub_22BE3C4F4();
        v49 = sub_22C18F964();
        sub_22C171FA8(v49, v50);
      }

      goto LABEL_12;
    }

    sub_22C18FEFC();
  }

  v35 = sub_22C273B34();
  sub_22BE196B4();
  sub_22C18FA9C();
  v36 = sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0);
  sub_22C18E674(v36);
  sub_22BE1B198();
  v37 = *MEMORY[0x277D84160];
  sub_22BE1BC24(v35);
  v39 = *(v38 + 104);
  v40 = sub_22C18F298();
  v41(v40);
  swift_willThrow();
  swift_unknownObjectRelease();
  v42 = sub_22C18E3C8();
  v43(v42);
LABEL_12:
  sub_22BE26B64(v10);
  sub_22C18F0A4();
  sub_22BE18478();
}

uint64_t static Session.PlanGenerationModelOutputError.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  sub_22BE19FC4(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_22C274014() & 1) == 0)
  {
    return 0;
  }

  v7 = *(v3 + 16) == *(v2 + 16) && *(v3 + 24) == *(v2 + 24);
  if (!v7 && (sub_22C274014() & 1) == 0)
  {
    return 0;
  }

  v8 = type metadata accessor for Session.PlanGenerationModelOutputError(0);
  sub_22C18EA3C(*(v8 + 24));

  return sub_22C26E5C4();
}

uint64_t sub_22C135E5C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000022C2D9CD0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C274014();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22C135EFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C135E5C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22C135F28(uint64_t a1)
{
  v2 = sub_22C174414();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C135F64(uint64_t a1)
{
  v2 = sub_22C174414();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C135FA0(uint64_t a1)
{
  v2 = sub_22C174468();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C135FDC(uint64_t a1)
{
  v2 = sub_22C174468();

  return MEMORY[0x2821FE720](a1, v2);
}

void Session.PlanGenerationError.encode(to:)()
{
  sub_22BE19130();
  sub_22C18F804();
  v27 = sub_22BE5CE4C(&qword_27D912D98, &qword_22C2B7EA0);
  sub_22BE179D8(v27);
  v2 = v1;
  v4 = *(v3 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE25CD0();
  v6 = type metadata accessor for Session.PlanGenerationError(0);
  v7 = sub_22BE19448(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE1955C();
  v10 = sub_22BE5CE4C(&qword_27D912DA0, &qword_22C2B7EA8);
  sub_22BE179D8(v10);
  v12 = v11;
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE23E58();
  v17 = v0[3];
  v16 = v0[4];
  sub_22BE41E84(v0);
  sub_22C174414();
  sub_22BE3CCD4();
  sub_22BE40618();
  sub_22C274234();
  v18 = sub_22C18F9B8();
  sub_22BE1A964(v18, v19);
  sub_22C174468();
  sub_22BE42748();
  sub_22C273EE4();
  type metadata accessor for Session.PlanGenerationModelOutputError(0);
  sub_22C18EF88();
  sub_22BE20458(v20);
  sub_22BE35E54();
  sub_22C18E69C();
  sub_22C273FA4();
  sub_22C18E39C();
  sub_22C171FFC();
  v21 = *(v2 + 8);
  v22 = sub_22BE1B328();
  v23(v22);
  v24 = *(v12 + 8);
  v25 = sub_22BE1824C();
  v26(v25);
  sub_22BEE94B0();
  sub_22BE18478();
}

void Session.PlanGenerationError.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v13 = sub_22C18E850(v12);
  v51 = type metadata accessor for Session.PlanGenerationError(v13);
  v14 = sub_22BE18000(v51);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BE17CBC();
  v17 = sub_22BE5CE4C(&qword_27D912DC0, &qword_22C2B7EB0);
  sub_22BE1BF18(v17);
  v19 = *(v18 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  sub_22BE1B01C();
  v21 = sub_22BE5CE4C(&qword_27D912DC8, &qword_22C2B7EB8);
  sub_22BE179D8(v21);
  v23 = *(v22 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v24);
  sub_22BE234F4();
  v25 = v10[3];
  v26 = v10[4];
  sub_22BE3C0A8(v10);
  sub_22C174414();
  sub_22BE48270();
  sub_22BE2BC6C();
  sub_22C274214();
  if (a10)
  {
    goto LABEL_12;
  }

  v27 = sub_22C18F100();
  sub_22BE7C5C4(v27, 0);
  sub_22C18F644();
  if (!v28)
  {
    sub_22BE41798();
    if (v29 == v30)
    {
      __break(1u);
      return;
    }

    v32 = sub_22BE3D6C4(v31);
    sub_22BE7C5C0(v32);
    sub_22C18F14C();
    sub_22C18FFE4();
    if (v28)
    {
      sub_22C174468();
      sub_22BE25CA0();
      sub_22C273DE4();
      if (v11)
      {
        v33 = sub_22BE1A194();
        v34(v33, v21);
        swift_unknownObjectRelease();
      }

      else
      {
        type metadata accessor for Session.PlanGenerationModelOutputError(0);
        sub_22C18EF88();
        sub_22BE20458(v44);
        sub_22BE377D8();
        sub_22C18F218();
        swift_unknownObjectRelease();
        v45 = sub_22C18E144();
        v46(v45);
        v47 = sub_22BE391A4();
        v48(v47);
        v49 = sub_22C1088E8();
        sub_22C171FA8(v49, v50);
      }

      goto LABEL_12;
    }

    sub_22C18FEFC();
  }

  v35 = sub_22C273B34();
  sub_22BE196B4();
  sub_22C18FA9C();
  v36 = sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0);
  sub_22C18E674(v36);
  sub_22BE1B198();
  v37 = *MEMORY[0x277D84160];
  sub_22BE1BC24(v35);
  v39 = *(v38 + 104);
  v40 = sub_22C18F298();
  v41(v40);
  swift_willThrow();
  swift_unknownObjectRelease();
  v42 = sub_22C18E3C8();
  v43(v42);
LABEL_12:
  sub_22BE26B64(v10);
  sub_22C18F0A4();
  sub_22BE18478();
}

uint64_t Session.PlanGenerationModelOutputError.prompt.setter()
{
  sub_22BE1A8A8();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Session.PlanGenerationModelOutputError.error.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for Session.PlanGenerationModelOutputError(v0) + 24);
  return sub_22BE18504();
}

uint64_t Session.PlanGenerationModelOutputError.init(rawModelOutput:prompt:error:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  v5 = *(type metadata accessor for Session.PlanGenerationModelOutputError(0) + 24);
  v6 = sub_22C26E5D4();
  sub_22BE1834C(v6);
  v8 = *(v7 + 32);
  v9 = sub_22BE33684();

  return v10(v9);
}

uint64_t sub_22C136750(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C65646F4D776172 && a2 == 0xEE0074757074754FLL;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x74706D6F7270 && a2 == 0xE600000000000000;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_22C274014();

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

uint64_t sub_22C136860(char a1)
{
  if (!a1)
  {
    return 0x6C65646F4D776172;
  }

  if (a1 == 1)
  {
    return 0x74706D6F7270;
  }

  return 0x726F727265;
}

uint64_t sub_22C1368C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C136750(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C1368EC(uint64_t a1)
{
  v2 = sub_22C1744BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C136928(uint64_t a1)
{
  v2 = sub_22C1744BC();

  return MEMORY[0x2821FE720](a1, v2);
}

void Session.PlanGenerationModelOutputError.encode(to:)()
{
  sub_22BE2BB34();
  sub_22BE27A28();
  v2 = sub_22BE5CE4C(&qword_27D912DD8, &qword_22C2B7EC0);
  sub_22BE1BF18(v2);
  v4 = *(v3 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE25CD0();
  sub_22BE23094();
  sub_22C1744BC();
  sub_22BE33B8C();
  v6 = *v1;
  v7 = v1[1];
  sub_22C18E9AC();
  sub_22BE26108();
  sub_22C273F54();
  if (!v0)
  {
    v8 = v1[2];
    v9 = v1[3];
    sub_22C18E4E0();
    sub_22BE26108();
    sub_22C273F54();
    v10 = *(type metadata accessor for Session.PlanGenerationModelOutputError(0) + 24);
    sub_22BE200EC();
    sub_22C26E5D4();
    sub_22C18EF4C();
    sub_22BE20458(v11);
    sub_22C18EA18();
    sub_22BE31254();
    sub_22C273FA4();
  }

  v12 = sub_22BE37508();
  v13(v12);
  sub_22BEE92C0();
  sub_22BEE93D4();
}

void Session.PlanGenerationModelOutputError.init(from:)()
{
  sub_22BE19130();
  sub_22C18F710();
  v29 = v5;
  v31 = sub_22C26E5D4();
  v6 = sub_22BE179D8(v31);
  v28 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE294E0();
  v32 = sub_22BE5CE4C(&qword_27D912DE8, &qword_22C2B7EC8);
  sub_22BE179D8(v32);
  v30 = v10;
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  v14 = sub_22BE24FD8();
  v15 = type metadata accessor for Session.PlanGenerationModelOutputError(v14);
  v16 = sub_22BE29F40(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BE28FD8();
  v19 = v2[3];
  v20 = v2[4];
  sub_22C18E560(v2);
  sub_22C1744BC();
  sub_22BE3CCD4();
  sub_22C274214();
  if (v1)
  {
    sub_22BE26B64(v2);
  }

  else
  {
    sub_22C18EA24();
    sub_22C18F0BC();
    *v4 = sub_22C273E64();
    v4[1] = v21;
    sub_22BE2315C();
    sub_22C18F0BC();
    v4[2] = sub_22C273E64();
    v4[3] = v22;
    sub_22BE200EC();
    sub_22C18EF4C();
    sub_22BE20458(v23);
    sub_22C18F614();
    sub_22C273EB4();
    v24 = *(v30 + 8);
    v25 = sub_22C18EA60();
    v26(v25);
    (*(v28 + 32))(v4 + *(v0 + 24), v3, v31);
    v27 = sub_22BE29370();
    sub_22BE1A964(v27, v29);
    sub_22BE26B64(v2);
    sub_22C18E39C();
    sub_22C171FFC();
  }

  sub_22BE19650();
  sub_22BE18478();
}

uint64_t static SaltedLoggingIDScope.session(_:)(uint64_t a1)
{
  v2 = sub_22BE1A5E4();
  v3 = type metadata accessor for Session.Event(v2);
  sub_22C18F6BC(*(v3 + 36));
  if (v5)
  {
  }

  else
  {
    v6 = a1 + *(v4 + 20);
    sub_22C26E184();
  }

  sub_22BE1804C();
  sub_22C26FDA4();
}

uint64_t static SaltedLoggingIDScope.session(_:)()
{
  v0 = sub_22BE1A5E4();
  v1 = type metadata accessor for Session.Transcript(v0);
  sub_22C18F6BC(*(v1 + 20));
  if (v2)
  {
  }

  else
  {
    sub_22C26E184();
  }

  sub_22BE1804C();
  sub_22C26FDA4();
}

uint64_t SessionStart.originatingDevice.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for SessionStart(v0) + 20);
  return sub_22BE18504();
}

uint64_t SessionStart.genderSettings.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for SessionStart(v0) + 24);
  return sub_22BE18504();
}

void SessionStart.init(initialLocaleSettings:originatingDevice:shouldExecuteEventsWithUnfinishedActions:)()
{
  sub_22BE3C358();
  v2 = v1;
  v3 = sub_22C0E9824();
  v4 = type metadata accessor for SessionStart(v3);
  sub_22C18FA90(v4);
  sub_22C26EA84();
  sub_22BE1A140();
  sub_22BE19DC4(v5, v6, v7, v8);
  v9 = *(v4 + 24);
  v10 = sub_22C26EC34();
  sub_22C0E966C(v0 + v9, v11, v12, v10);
  v13 = sub_22C26ECA4();
  sub_22BE1834C(v13);
  v15 = *(v14 + 32);
  v16 = sub_22BE1A8C4();
  v17(v16);
  sub_22BE2343C();
  *(v0 + *(v4 + 28)) = v2;
  sub_22BE267B8();
}

uint64_t sub_22C1370B0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x800000022C2DA9A0 == a2;
  if (v3 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x800000022C2DA9C0 == a2;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x65537265646E6567 && a2 == 0xEE0073676E697474;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000028 && 0x800000022C2DBE00 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_22C274014();

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

uint64_t sub_22C13721C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C1370B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C137244(uint64_t a1)
{
  v2 = sub_22BE362C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C137280(uint64_t a1)
{
  v2 = sub_22BE362C4();

  return MEMORY[0x2821FE720](a1, v2);
}

void SessionStart.init(from:)()
{
  sub_22BE19130();
  v5 = v4;
  v46 = v6;
  v7 = sub_22BE5CE4C(&qword_27D911C20, &qword_22C2B5060);
  sub_22BE19448(v7);
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE2C638(v11, v46);
  v12 = sub_22BE5CE4C(&qword_27D911F60, &unk_22C2B5CD0);
  sub_22BE19448(v12);
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE34034(v16, v47);
  v51 = sub_22C26ECA4();
  v17 = sub_22BE179D8(v51);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BE17A44();
  sub_22BE3FF7C(v20);
  v52 = sub_22BE5CE4C(&qword_27D912E00, &qword_22C2B7EE0);
  sub_22BE179D8(v52);
  v50 = v21;
  v23 = *(v22 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v24);
  sub_22BE234F4();
  v25 = type metadata accessor for SessionStart(0);
  v26 = sub_22BE18000(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22BE28FD8();
  sub_22C18F32C(v29);
  v30 = sub_22C26EA84();
  v53 = v0;
  sub_22BE1A140();
  sub_22BE19DC4(v31, v32, v33, v30);
  v34 = *(v25 + 24);
  v35 = sub_22C26EC34();
  sub_22BE1A140();
  sub_22BE19DC4(v36, v37, v38, v35);
  v40 = v5[3];
  v39 = v5[4];
  sub_22BE25318(v5);
  sub_22BE362C4();
  sub_22BE48270();
  sub_22C274214();
  if (v1)
  {
    sub_22BE26B64(v5);
    sub_22C18DC5C(v3 + v53, &qword_27D911F60);
    sub_22C18DC5C(v3 + v34, &qword_27D911C20);
  }

  else
  {
    sub_22BE43270();
    sub_22BE20458(v41);
    sub_22BEE92A4();
    sub_22C18E618();
    sub_22C273EB4();
    sub_22BE27C14();
    v42(v3, v49, v51);
    sub_22BE33FE4();
    sub_22BE41F14();
    sub_22BE20458(v43);
    sub_22C18E9A0();
    sub_22C273E44();
    sub_22BE2343C();
    sub_22BE200EC();
    sub_22C18E214();
    sub_22BE20458(v44);
    sub_22C18F614();
    sub_22C273E44();
    sub_22BE2343C();
    sub_22C18E900();
    v45 = sub_22C273E74();
    (*(v50 + 8))(v2, v52);
    *(v3 + *(v25 + 28)) = v45 & 1;
    sub_22BE1A964(v3, v48);
    sub_22BE26B64(v5);
    sub_22BE23F00();
    sub_22C171FFC();
  }

  sub_22C18F0A4();
  sub_22BE18478();
}

void UserTurnStarted.turn.getter()
{
  v0 = sub_22BE1A5E4();
  v1 = type metadata accessor for UserTurnStarted(v0);
  sub_22C18F688(*(v1 + 20));
}

uint64_t sub_22C1377F0()
{
  v0 = sub_22BE2BB48();
  v2 = v1(v0);
  sub_22BE36160(*(v2 + 24));
  return sub_22BE19454();
}

uint64_t sub_22C13784C()
{
  v0 = sub_22BE1C364();
  v2 = *(v1(v0) + 28);
  sub_22C18E974();
  return sub_22BE22814();
}

uint64_t static UserTurn.== infix(_:_:)(_BYTE *a1, char *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if ((*a2 & 1) == 0)
    {
      return 0;
    }
  }

  else if (*a2)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_22C1378B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656D6574617473 && a2 == 0xEB00000000644974;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1852994932 && a2 == 0xE400000000000000;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x64496E727574 && a2 == 0xE600000000000000;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000012 && 0x800000022C2D5D40 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_22C274014();

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

unint64_t sub_22C137A10(char a1)
{
  result = 0x6E656D6574617473;
  switch(a1)
  {
    case 1:
      result = 1852994932;
      break;
    case 2:
      result = 0x64496E727574;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C137A9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C1378B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C137AC4(uint64_t a1)
{
  v2 = sub_22C174510();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C137B00(uint64_t a1)
{
  v2 = sub_22C174510();

  return MEMORY[0x2821FE720](a1, v2);
}

void UserTurnStarted.encode(to:)()
{
  sub_22BE2BB34();
  sub_22BE22950();
  v2 = sub_22BE5CE4C(&qword_27D912E18, &qword_22C2B7EE8);
  sub_22BE1BF18(v2);
  v4 = *(v3 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE19E64();
  sub_22BE23094();
  sub_22C174510();
  sub_22BE25524();
  sub_22C18E810();
  sub_22C26E684();
  sub_22BE18F44();
  sub_22BE20458(v6);
  sub_22BEE92A4();
  sub_22BE196CC();
  sub_22C273FA4();
  if (!v0)
  {
    v7 = type metadata accessor for UserTurnStarted(0);
    sub_22C18E70C(v7);
    sub_22C174564();
    sub_22BE26258();
    sub_22C18E17C();
    sub_22C273FA4();
    sub_22C18F320(*(v1 + 24));
    sub_22C18EAFC();
    sub_22BE36628();
    sub_22C273F54();
    v8 = *(v1 + 28);
    sub_22BE3418C();
    sub_22C271394();
    sub_22BE3D20C();
    sub_22BE20458(v9);
    sub_22C18FDD8();
    sub_22BE196CC();
    sub_22C273F34();
  }

  v10 = sub_22BE37A10();
  v11(v10);
  sub_22BEE92C0();
  sub_22BEE93D4();
}

void UserTurnStarted.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12)
{
  sub_22BE19130();
  sub_22C18F4C8();
  v42 = v14;
  v15 = sub_22BE5CE4C(&qword_27D9120B0, &qword_22C2B5F00);
  sub_22BE19448(v15);
  v17 = *(v16 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  sub_22BE3100C();
  v43 = sub_22C26E684();
  v19 = sub_22BE179D8(v43);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22BE294E0();
  v22 = sub_22BE5CE4C(&qword_27D912E38, &qword_22C2B7EF0);
  sub_22BE179D8(v22);
  v24 = *(v23 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v25);
  sub_22BE25CD0();
  v26 = type metadata accessor for UserTurnStarted(0);
  v27 = sub_22BE18000(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22BE197B8();
  v31 = v13[3];
  v30 = v13[4];
  sub_22BE25318(v13);
  sub_22C174510();
  sub_22BEC046C();
  sub_22C274214();
  if (v44)
  {
    sub_22BE26B64(v13);
  }

  else
  {
    sub_22BE18F44();
    sub_22BE20458(v32);
    sub_22BEE92A4();
    sub_22BE261D0();
    sub_22C273EB4();
    sub_22C18EB74();
    v33 = sub_22BE1A6BC();
    v34(v33);
    sub_22BE38948();
    sub_22C1745B8();
    sub_22C18FA0C();
    sub_22BE261D0();
    sub_22C273EB4();
    *(v12 + v26[5]) = a12;
    sub_22C18EAFC();
    v35 = sub_22C273E64();
    sub_22BE37C38(v35, v36, v26[6]);
    sub_22C271394();
    sub_22BE3418C();
    sub_22BE3D20C();
    sub_22BE20458(v37);
    sub_22C18E69C();
    sub_22C273E44();
    v38 = sub_22BE1B5F8();
    v39(v38);
    v40 = v26[7];
    sub_22BE424BC();
    v41 = sub_22BE19EBC();
    sub_22BE1A964(v41, v42);
    sub_22BE26B64(v13);
    sub_22BE4875C();
    sub_22C171FFC();
  }

  sub_22BE46D98();
  sub_22BE18478();
}

uint64_t sub_22C138104(uint64_t a1)
{
  v2 = sub_22C17460C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C138140(uint64_t a1)
{
  v2 = sub_22C17460C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C1381E4(uint64_t a1)
{
  v2 = sub_22C174660();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C138220(uint64_t a1)
{
  v2 = sub_22C174660();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C1382A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x686365657073 && a2 == 0xE600000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C274014();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22C138364(char a1)
{
  if (a1)
  {
    return 1954047348;
  }

  else
  {
    return 0x686365657073;
  }
}

uint64_t sub_22C1383B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C1382A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C1383D8(uint64_t a1)
{
  v2 = sub_22C1746B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C138414(uint64_t a1)
{
  v2 = sub_22C1746B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C138450(uint64_t a1)
{
  v2 = sub_22C1747B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C13848C(uint64_t a1)
{
  v2 = sub_22C1747B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C1384C8(uint64_t a1)
{
  v2 = sub_22C174708();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C138504(uint64_t a1)
{
  v2 = sub_22C174708();

  return MEMORY[0x2821FE720](a1, v2);
}

void UserTurn.encode(to:)()
{
  sub_22BE19130();
  sub_22C18F4C8();
  v2 = sub_22BE5CE4C(&qword_27D912E70, &qword_22C2B7F08);
  v28 = sub_22BE179D8(v2);
  v4 = *(v3 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE20168(v6, v26);
  v7 = sub_22BE5CE4C(&qword_27D912E78, &qword_22C2B7F10);
  v27 = sub_22BE179D8(v7);
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE23E58();
  v11 = sub_22BE5CE4C(&qword_27D912E80, &qword_22C2B7F18);
  sub_22BE179D8(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  sub_22BE1B01C();
  v17 = *v0;
  v18 = v1[3];
  v19 = v1[4];
  sub_22C18E560(v1);
  sub_22C1746B4();
  sub_22BE232E4();
  sub_22C274234();
  if (v17)
  {
    sub_22BE486C4();
    sub_22C174708();
    sub_22BE27168();
    sub_22C273EE4();
    sub_22C17475C();
    v20 = v28;
    sub_22C273FA4();
    v21 = sub_22BEC0304();
  }

  else
  {
    sub_22C1747B0();
    sub_22BE27168();
    sub_22C273EE4();
    sub_22C174804();
    v20 = v27;
    sub_22C273FA4();
    v21 = sub_22BE3408C();
  }

  v22(v21, v20);
  v23 = *(v13 + 8);
  v24 = sub_22BE25C08();
  v25(v24);
  sub_22BE22978();
  sub_22BE18478();
}

void UserTurn.init(from:)()
{
  sub_22BE19130();
  v48 = v1;
  v3 = v2;
  v47 = sub_22BE5CE4C(&qword_27D912EB0, &qword_22C2B7F20);
  sub_22BE179D8(v47);
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE1B01C();
  v7 = sub_22BE5CE4C(&qword_27D912EB8, &qword_22C2B7F28);
  sub_22BE1BF18(v7);
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE234F4();
  v11 = sub_22BE5CE4C(&qword_27D912EC0, &qword_22C2B7F30);
  sub_22BE179D8(v11);
  v13 = *(v12 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE25CD0();
  v15 = v3[3];
  v16 = v3[4];
  v17 = sub_22BE392D4();
  sub_22BE26950(v17, v18);
  sub_22C1746B4();
  sub_22BEC046C();
  sub_22C274214();
  if (!v0)
  {
    v49 = v3;
    v19 = sub_22C273ED4();
    sub_22BE7C5C4(v19, 0);
    if (v21 != v20 >> 1)
    {
      sub_22BE38A18();
      sub_22BE3E9D8();
      if (v28 == v29)
      {
        __break(1u);
        return;
      }

      v30 = *(v27 + v26);
      v31 = sub_22BEC0558(v22, v23, v24, v25, v26);
      sub_22BE7C5C0(v31);
      sub_22C18FFD8();
      v33 = v32;
      swift_unknownObjectRelease();
      if (!(v33 >> 1))
      {
        if (v30)
        {
          sub_22BE486C4();
          sub_22C174708();
          sub_22BE261D0();
          sub_22C273DE4();
          sub_22C174858();
          sub_22BE3788C();
          sub_22BE36514();
          sub_22C273EB4();
          sub_22C18F4B0();
          swift_unknownObjectRelease();
          v42 = sub_22BE3408C();
          v44 = v47;
        }

        else
        {
          sub_22C1747B0();
          sub_22BE261D0();
          sub_22C273DE4();
          sub_22C1748AC();
          sub_22BE42748();
          sub_22C273EB4();
          sub_22C18F4B0();
          swift_unknownObjectRelease();
          v42 = sub_22BE2B7E8();
        }

        v43(v42, v44);
        v45 = sub_22BE38A68();
        v46(v45);
        *v48 = v30;
        sub_22BE26B64(v3);
        goto LABEL_10;
      }
    }

    v34 = sub_22C273B34();
    sub_22BE196B4();
    v36 = v35;
    v37 = *(sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0) + 48);
    *v36 = &type metadata for UserTurn;
    sub_22C273DF4();
    sub_22BE1B198();
    v38 = *MEMORY[0x277D84160];
    sub_22BE1BC24(v34);
    (*(v39 + 104))(v36);
    swift_willThrow();
    swift_unknownObjectRelease();
    v40 = sub_22C18E418();
    v41(v40, v11);
    v3 = v49;
  }

  sub_22BE26B64(v3);
LABEL_10:
  sub_22BE19650();
  sub_22BE18478();
}

void SpeechPartialResult.description.getter()
{
  sub_22BE19460();
  v4 = sub_22BE5CE4C(&qword_27D912ED8, &qword_22C2B7F38);
  v5 = sub_22BE19448(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE183AC();
  sub_22BE2017C();
  MEMORY[0x28223BE20](v8);
  sub_22BE26800();
  v9 = sub_22C26EB64();
  v10 = sub_22BE1BF18(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BE17CBC();
  v15 = *v1;
  v16 = v1[1];
  v17 = v1[2];
  v18 = *(v17 + 16);
  switch(v18)
  {
    case 2:
      sub_22C18F0C8();
      MEMORY[0x2318AB8D0](8285, 0xE200000000000000);
      if (*(v17 + 16))
      {
        v25 = *(v12 + 80);
        sub_22BE19E14();
        v26 = *(v12 + 16);
        v27 = sub_22BE2590C();
        v50 = v28;
        v28(v27);
        sub_22C26EB34();
        v29 = *(v12 + 8);
        v30 = sub_22BE1AB74();
        v49 = v31;
        v31(v30);
        v32 = sub_22BE1B18C();
        MEMORY[0x2318AB8D0](v32);

        MEMORY[0x2318AB8D0](32, 0xE100000000000000);
        if (*(v17 + 16) >= 2uLL)
        {
          v33 = *(v12 + 72);
          v34 = sub_22BE38608();
          v50(v34);
          sub_22C26EB34();
          v35 = sub_22BE1AB74();
          v49(v35);
          goto LABEL_10;
        }

LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    case 1:
      sub_22C18F0C8();
      MEMORY[0x2318AB8D0](8285, 0xE200000000000000);
      if (*(v17 + 16))
      {
        v19 = *(v12 + 80);
        sub_22BE19E14();
        v20 = *(v12 + 16);
        v21 = sub_22BE38608();
        v22(v21);
        sub_22C26EB34();
        v23 = sub_22BE47E18();
        v24(v23);
LABEL_10:
        v36 = sub_22BE324FC();
        MEMORY[0x2318AB8D0](v36);
LABEL_14:

        goto LABEL_15;
      }

      __break(1u);
      goto LABEL_17;
    case 0:
      sub_22C18F0C8();
      MEMORY[0x2318AB8D0](93, 0xE100000000000000);
LABEL_15:
      sub_22C18FCD4();
      sub_22BE1AABC();
      return;
  }

  sub_22C18F0C8();
  MEMORY[0x2318AB8D0](8285, 0xE200000000000000);
  sub_22BF2DA78(v17, v3);
  v37 = sub_22BE23E90();
  sub_22BE1AB5C(v37, v38, v0);
  if (v39)
  {
    goto LABEL_19;
  }

  v40 = sub_22C26EB34();
  v42 = v41;
  v43 = *(v12 + 8);
  v44 = sub_22BE291B0();
  v43(v44);
  MEMORY[0x2318AB8D0](v40, v42);

  MEMORY[0x2318AB8D0](0x202E2E2E20, 0xE500000000000000);
  sub_22BE956EC(v17, v2);
  v45 = sub_22BE26188();
  sub_22BE1AB5C(v45, v46, v0);
  if (!v39)
  {
    sub_22C26EB34();
    v47 = sub_22BE200D4();
    v43(v47);
    v48 = sub_22BE191CC();
    MEMORY[0x2318AB8D0](v48);
    goto LABEL_14;
  }

LABEL_20:
  __break(1u);
}

uint64_t sub_22C138FF0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496E727574 && a2 == 0xE600000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736E656B6F74 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C274014();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22C1390B8(char a1)
{
  if (a1)
  {
    return 0x736E656B6F74;
  }

  else
  {
    return 0x64496E727574;
  }
}

uint64_t sub_22C1390E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C138FF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C139110(uint64_t a1)
{
  v2 = sub_22C174900();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C13914C(uint64_t a1)
{
  v2 = sub_22C174900();

  return MEMORY[0x2821FE720](a1, v2);
}

void SpeechPartialResult.encode(to:)()
{
  sub_22BE19130();
  sub_22C18FEB8();
  v2 = sub_22BE5CE4C(&qword_27D912EE0, &qword_22C2B7F40);
  sub_22BE1BF18(v2);
  v4 = *(v3 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE19E64();
  v6 = *v0;
  v7 = v0[1];
  v11 = v0[2];
  v8 = sub_22C18FE98();
  sub_22BE25318(v8);
  sub_22C174900();
  sub_22BE23550();
  sub_22BEE94BC();
  sub_22C274234();
  sub_22C18E4A8();
  sub_22BE1BB58();
  sub_22C273F54();
  if (!v1)
  {
    sub_22BE33FE4();
    sub_22BE5CE4C(&qword_27D912EF0, &qword_22C2B7F48);
    sub_22C174954();
    sub_22C18F608();
    sub_22BE41644();
    sub_22C273FA4();
  }

  v9 = sub_22BE25EE4();
  v10(v9);
  sub_22BE35D48();
  sub_22BE18478();
}

void SpeechPartialResult.init(from:)()
{
  sub_22BE19130();
  sub_22C18F140();
  v2 = sub_22BE5CE4C(&qword_27D912F08, &qword_22C2B7F50);
  sub_22BE179D8(v2);
  v4 = *(v3 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE234F4();
  sub_22BE3763C();
  sub_22C174900();
  sub_22BE33A2C();
  if (v1)
  {
    sub_22BE26B64(v0);
  }

  else
  {
    sub_22C18E4BC();
    sub_22C273E64();
    sub_22C18F4BC();
    sub_22BE5CE4C(&qword_27D912EF0, &qword_22C2B7F48);
    sub_22BE33FE4();
    sub_22C174A08();
    sub_22C18E128();
    sub_22BE23070();
    sub_22C273EB4();
    v6 = sub_22BE17B54();
    v7(v6);
    sub_22C18F564();

    sub_22C18E8D8();
  }

  sub_22BE19650();
  sub_22BE18478();
}

uint64_t Request.safetyMode.setter()
{
  v2 = sub_22BE17BC4();
  result = type metadata accessor for Request(v2);
  *(v1 + *(result + 20)) = v0;
  return result;
}

uint64_t Request.safetyMode.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for Request(v0) + 20);
  return sub_22BE18504();
}

uint64_t Request.prescribedPlan.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for Request(v0) + 24);
  return sub_22BE18504();
}

uint64_t sub_22C1395F4()
{
  v0 = sub_22BE27BE8();
  v2 = *(v1(v0) + 28);
  return sub_22BFBFC6C();
}

uint64_t Request.rewriteMetadataEventID.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for Request(v0) + 28);
  return sub_22BE18504();
}

uint64_t Request.rewriteMetadataInlined.getter()
{
  v1 = sub_22BE1A5E4();
  v2 = type metadata accessor for Request(v1);
  v3 = sub_22C18FDC4((v0 + *(v2 + 32)));

  return sub_22BE3820C(v3, v4);
}

__n128 Request.rewriteMetadataInlined.setter(__int128 *a1)
{
  v3 = sub_22C18FE64(a1);
  v4 = (v2 + *(type metadata accessor for Request(v3) + 32));
  v5 = v4[2];
  sub_22BE37808(*v4, v4[1]);
  result = v7;
  *v4 = v7;
  v4[2] = v1;
  return result;
}

uint64_t Request.rewriteMetadataInlined.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for Request(v0) + 32);
  return sub_22BE18504();
}

uint64_t Request.siriRequestContext.getter()
{
  v0 = sub_22BE1A5E4();
  v1 = type metadata accessor for Request(v0);
  sub_22BE25438(*(v1 + 36));
  return sub_22BE22814();
}

uint64_t Request.siriRequestContext.setter()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for Request(v0) + 36);
  sub_22C18F880();
  return sub_22BE2343C();
}

uint64_t Request.siriRequestContext.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for Request(v0) + 36);
  return sub_22BE18504();
}

uint64_t Request.suggestedInvocation.getter()
{
  v2 = sub_22BE1A5E4();
  v3 = (v1 + *(type metadata accessor for Request(v2) + 40));
  v4 = v3[1];
  *v0 = *v3;
  v0[1] = v4;
}

uint64_t Request.suggestedInvocation.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = type metadata accessor for Request(0);
  sub_22C18EA48(*(v4 + 40));

  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t Request.suggestedInvocation.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for Request(v0) + 40);
  return sub_22BE18504();
}

uint64_t Request.datetimeContext.getter()
{
  v0 = sub_22BE1A5E4();
  v1 = type metadata accessor for Request(v0);
  sub_22BE25438(*(v1 + 44));
  return sub_22BE22814();
}

uint64_t Request.datetimeContext.setter()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for Request(v0) + 44);
  sub_22C18F880();
  return sub_22BE2343C();
}

uint64_t Request.datetimeContext.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for Request(v0) + 44);
  return sub_22BE18504();
}

void Request.init(content:safetyMode:prescribedPlan:rewriteMetadataEventID:rewriteMetadataInlined:siriRequestContext:suggestedInvocation:)()
{
  sub_22BE19460();
  v1 = v0;
  v3 = v2;
  v42 = v4;
  v41 = v5;
  v7 = v6;
  v8 = sub_22BE5CE4C(&qword_27D911F50, &qword_22C2B5EF0);
  sub_22BE19448(v8);
  v10 = *(v9 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE25CD0();
  v44 = *v3;
  v43 = *(v3 + 2);
  v45 = v1[1];
  v46 = *v1;
  v12 = type metadata accessor for DateTimeContext();
  sub_22BE1A140();
  v16 = sub_22C18F17C(v13, v14, v15, v12);
  v17 = type metadata accessor for Request(v16);
  v18 = v17[6];
  type metadata accessor for RequestPrescribedPlan(0);
  sub_22BE1A140();
  sub_22BE19DC4(v19, v20, v21, v22);
  v23 = v17[7];
  sub_22C26E1D4();
  sub_22BE1A140();
  sub_22BE19DC4(v24, v25, v26, v27);
  v28 = (v7 + v17[8]);
  *v28 = 0;
  v28[1] = 0;
  v28[2] = 0;
  v29 = v17[9];
  sub_22C271394();
  sub_22BE1A140();
  sub_22BE19DC4(v30, v31, v32, v33);
  v34 = (v7 + v17[10]);
  *v34 = 0;
  v34[1] = 0;
  v35 = v17[11];
  sub_22BE1A140();
  sub_22BE19DC4(v36, v37, v38, v12);
  sub_22BE250EC();
  sub_22C171FA8(v41, v7);
  *(v7 + v17[5]) = v42;
  sub_22BE2343C();
  sub_22BE2343C();
  v39 = v28[2];
  sub_22BE37808(*v28, v28[1]);
  *v28 = v44;
  v28[2] = v43;
  sub_22BE2343C();
  v40 = v34[1];

  *v34 = v46;
  v34[1] = v45;
  sub_22BE2343C();
  sub_22BE1AABC();
}

void Request.init(query:safetyMode:statementId:clientQueryId:dateTimeContext:)()
{
  sub_22BE19460();
  v1 = v0;
  v3 = v2;
  v68 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_22BE5CE4C(&qword_27D911F50, &qword_22C2B5EF0);
  sub_22BE19448(v11);
  v13 = *(v12 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE1A174();
  v16 = v15;
  v17 = sub_22BE5CE4C(&qword_27D9120B0, &qword_22C2B5F00);
  sub_22BE19448(v17);
  v19 = *(v18 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  sub_22BE19E64();
  v21 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v21);
  v23 = *(v22 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v24);
  sub_22BE1A8B4();
  v25 = sub_22BE5CE4C(&qword_27D911F58, &unk_22C2B5CC0);
  sub_22BE19448(v25);
  v27 = *(v26 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v28);
  sub_22BE23E58();

  *v10 = v8;
  *(v10 + 1) = v6;
  v29 = type metadata accessor for RequestContent.TextContent(0);
  sub_22C18FE44(v29);
  v30 = sub_22C26E684();
  sub_22BE1834C(v30);
  (*(v31 + 32))(&v10[v6], v3);
  type metadata accessor for RequestContent(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for RequestPrescribedPlan(0);
  sub_22BE3AE2C();
  sub_22C18F17C(v32, v33, v34, v35);
  v36 = sub_22C26E1D4();
  sub_22BE1A140();
  sub_22C18F17C(v37, v38, v39, v36);
  v40 = sub_22C271394();
  sub_22BE1A140();
  sub_22BE19DC4(v41, v42, v43, v40);
  sub_22BE43230();
  sub_22C171FA8(v1, v16);
  type metadata accessor for DateTimeContext();
  v44 = sub_22C18F35C();
  v45 = sub_22C18F17C(v44, 0, 1, v1);
  v46 = type metadata accessor for Request(v45);
  v47 = v46[6];
  sub_22BE3AE2C();
  sub_22BE19DC4(v48, v49, v50, v51);
  v52 = v46[7];
  sub_22BE1A140();
  sub_22BE19DC4(v53, v54, v55, v36);
  v56 = &v10[v46[8]];
  *v56 = 0;
  v56[1] = 0;
  v56[2] = 0;
  v57 = v46[9];
  sub_22BE1A140();
  sub_22BE19DC4(v58, v59, v60, v40);
  v61 = &v10[v46[10]];
  *v61 = 0;
  *(v61 + 1) = 0;
  v62 = v46[11];
  sub_22BE1A140();
  sub_22BE19DC4(v63, v64, v65, v1);
  v10[v46[5]] = v68;
  sub_22BE2343C();
  sub_22BE2343C();
  v66 = v56[2];
  sub_22BE37808(*v56, v56[1]);
  *v56 = 0;
  v56[1] = 0;
  v56[2] = 0;
  sub_22BE2343C();
  v67 = *(v61 + 1);

  *v61 = 0;
  *(v61 + 1) = 0;
  sub_22BE2343C();
  sub_22BE1AABC();
}

void static RequestContent.== infix(_:_:)()
{
  sub_22BE19460();
  v42 = v5;
  v6 = sub_22BE39FFC();
  v7 = type metadata accessor for RequestContent.SystemPromptResolution(v6);
  v8 = sub_22BE19448(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE17A44();
  v41 = v11;
  v12 = sub_22BE183BC();
  v13 = type metadata accessor for RequestContent.SpeechContent(v12);
  v14 = sub_22BE19448(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BE18DFC();
  v40 = type metadata accessor for RequestContent.TextContent(0);
  v17 = sub_22BE18000(v40);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BE38390();
  v20 = type metadata accessor for RequestContent(0);
  v21 = sub_22BE18000(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22BE183AC();
  sub_22BEC0508();
  MEMORY[0x28223BE20](v24);
  sub_22BE25ED0();
  MEMORY[0x28223BE20](v25);
  sub_22BE26800();
  v26 = sub_22BE5CE4C(&qword_27D912F20, &qword_22C2B7F58);
  sub_22BE19448(v26);
  v28 = *(v27 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v29);
  sub_22BE1B72C();
  v31 = *(v30 + 56);
  sub_22BE1A964(v4, v0);
  sub_22BE1A964(v42, v0 + v31);
  sub_22BE29264();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BE19368();
      v36 = sub_22BE37490();
      sub_22BE1A964(v36, v37);
      if (sub_22C0E9D64() != 1)
      {
        sub_22BE355E4();
        goto LABEL_21;
      }

      sub_22C18DFA8();
      sub_22C171FA8(v0 + v31, v1);
      v38 = *v3 == *v1 && v3[1] == v1[1];
      if (v38 || (sub_22C274014() & 1) != 0)
      {
        v39 = *(v40 + 20);
        if (_s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0())
        {
          sub_22C18EB20();
          sub_22C171FFC();
          sub_22BE36680();
          sub_22C171FFC();
          goto LABEL_17;
        }
      }

      sub_22C18EB20();
      sub_22C171FFC();
      sub_22BE36680();
      sub_22C171FFC();
      sub_22BE23B78();
      sub_22C171FFC();
      break;
    case 2u:
      sub_22BE19368();
      v32 = sub_22BE260B8();
      sub_22BE1A964(v32, v33);
      if (sub_22C0E9D64() == 2)
      {
        sub_22BE1BB68();
        sub_22C171FA8(v0 + v31, v2);
        sub_22BE2590C();
        static RequestContent.SpeechContent.== infix(_:_:)();
        sub_22C171FFC();
        goto LABEL_8;
      }

      sub_22BE41104();
      goto LABEL_21;
    case 3u:
      sub_22BE19368();
      v34 = sub_22BE41FB4();
      sub_22BE1A964(v34, v35);
      if (sub_22C0E9D64() == 3)
      {
        sub_22C18DFC0();
        sub_22C171FA8(v0 + v31, v41);
        sub_22BE3CEF4();
        static RequestContent.SystemPromptResolution.== infix(_:_:)();
        sub_22C171FFC();
LABEL_8:
        sub_22C171FFC();
        sub_22BE23B78();
        sub_22C171FFC();
      }

      else
      {
        sub_22C18E000();
LABEL_21:
        sub_22C171FFC();
LABEL_22:
        sub_22C18DC5C(v0, &qword_27D912F20);
      }

      break;
    default:
      if (sub_22C0E9D64())
      {
        goto LABEL_22;
      }

LABEL_17:
      sub_22BE23B78();
      sub_22C171FFC();
      break;
  }

  sub_22BE1AABC();
}

uint64_t sub_22C13A254(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F4D797465666173 && a2 == 0xEA00000000006564;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6269726373657270 && a2 == 0xEE006E616C506465;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000016 && 0x800000022C2DBE30 == a2;
        if (v8 || (sub_22C274014() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000016 && 0x800000022C2DA870 == a2;
          if (v9 || (sub_22C274014() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000012 && 0x800000022C2D5D40 == a2;
            if (v10 || (sub_22C274014() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000013 && 0x800000022C2DA950 == a2;
              if (v11 || (sub_22C274014() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x656D697465746164 && a2 == 0xEF747865746E6F43)
              {

                return 7;
              }

              else
              {
                v13 = sub_22C274014();

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

unint64_t sub_22C13A4F4(char a1)
{
  result = 0x746E65746E6F63;
  switch(a1)
  {
    case 1:
      result = 0x6F4D797465666173;
      break;
    case 2:
      result = 0x6269726373657270;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0x656D697465746164;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C13A60C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C13A254(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C13A634@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22C13A4EC();
  *a1 = result;
  return result;
}

uint64_t sub_22C13A65C(uint64_t a1)
{
  v2 = sub_22C174ABC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C13A698(uint64_t a1)
{
  v2 = sub_22C174ABC();

  return MEMORY[0x2821FE720](a1, v2);
}

void Request.encode(to:)()
{
  sub_22BE2BB34();
  sub_22BE22950();
  v3 = sub_22BE5CE4C(&qword_27D912F28, &qword_22C2B7F60);
  sub_22BE1BF18(v3);
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE19E64();
  sub_22BE23094();
  sub_22C174ABC();
  sub_22BE25524();
  type metadata accessor for RequestContent(0);
  sub_22BE35880();
  sub_22BE20458(v7);
  sub_22BE196CC();
  sub_22C273FA4();
  if (!v0)
  {
    v8 = type metadata accessor for Request(0);
    sub_22C18E864(v8);
    v10 = *(v1 + v9);
    sub_22C18E17C();
    sub_22C273F64();
    v11 = v2[6];
    v12 = sub_22C18F8E0(2);
    type metadata accessor for RequestPrescribedPlan(v12);
    sub_22C18ECE8();
    sub_22BE20458(v13);
    sub_22C18E994();
    sub_22BE196CC();
    sub_22C273F34();
    v14 = v2[7];
    sub_22C18F8E0(3);
    sub_22C26E1D4();
    sub_22BE18B28();
    sub_22BE20458(v15);
    sub_22C18E994();
    sub_22BE196CC();
    sub_22C273F34();
    v26 = sub_22C18F320(v2[8]);
    v28 = v17;
    v29 = *(v16 + 16);
    sub_22BE3820C(v26, v17);
    sub_22BE48A04();
    sub_22C18E17C();
    sub_22C273F34();
    sub_22BE37808(v26, v28);
    v18 = v2[9];
    sub_22C18F8E0(5);
    sub_22C271394();
    sub_22BE3D20C();
    sub_22BE20458(v19);
    sub_22C18E994();
    sub_22BE196CC();
    sub_22C273F34();
    v20 = (v1 + v2[10]);
    v21 = v20[1];
    v27 = *v20;
    sub_22C174B10();
    sub_22C18F35C();

    sub_22C18F30C();
    sub_22C273F34();

    v22 = v2[11];
    sub_22C18F8E0(7);
    type metadata accessor for DateTimeContext();
    sub_22BE389E8();
    sub_22BE20458(v23);
    sub_22C18FDD8();
    sub_22BE196CC();
    sub_22C273F34();
  }

  v24 = sub_22BE37A10();
  v25(v24);
  sub_22BEE92C0();
  sub_22BEE93D4();
}

void Request.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v99 = v27;
  v28 = sub_22BE5CE4C(&qword_27D911F50, &qword_22C2B5EF0);
  sub_22BE19448(v28);
  v30 = *(v29 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v31);
  sub_22BE44798(v32);
  v33 = sub_22BE5CE4C(&qword_27D9120B0, &qword_22C2B5F00);
  sub_22BE19448(v33);
  v35 = *(v34 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v36);
  sub_22BE39404(v37);
  v38 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v38);
  v40 = *(v39 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v41);
  sub_22BE1A174();
  sub_22BF0AFA0(v42);
  v43 = sub_22BE5CE4C(&qword_27D911F58, &unk_22C2B5CC0);
  sub_22BE19448(v43);
  v45 = *(v44 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v46);
  sub_22BE1A174();
  v47 = sub_22BE183BC();
  v101 = type metadata accessor for RequestContent(v47);
  v48 = sub_22BE18000(v101);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  sub_22BE17A44();
  v102 = v51;
  v103 = sub_22BE5CE4C(&qword_27D912F50, &qword_22C2B7F68);
  sub_22BE179D8(v103);
  v100 = v52;
  v54 = *(v53 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v55);
  v56 = sub_22BE1AED0();
  v57 = type metadata accessor for Request(v56);
  v58 = sub_22BE29F40(v57);
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v58);
  sub_22BE188B0();
  v62 = *(v61 + 24);
  v63 = type metadata accessor for RequestPrescribedPlan(0);
  v105 = v62;
  sub_22BE1A140();
  sub_22BE19DC4(v64, v65, v66, v63);
  v67 = v20[7];
  sub_22C26E1D4();
  v108 = v67;
  sub_22BE3AE2C();
  sub_22BE19DC4(v68, v69, v70, v71);
  v72 = (v22 + v20[8]);
  *v72 = 0;
  v72[1] = 0;
  v110 = v72;
  v72[2] = 0;
  v73 = v20[9];
  v74 = sub_22C271394();
  v106 = v73;
  sub_22BE1A140();
  sub_22BE19DC4(v75, v76, v77, v74);
  v78 = (v22 + v20[10]);
  *v78 = 0;
  v78[1] = 0;
  v109 = v78;
  v79 = v20[11];
  v80 = type metadata accessor for DateTimeContext();
  v107 = v79;
  v104 = v22;
  sub_22BE1A140();
  sub_22BE19DC4(v81, v82, v83, v80);
  v84 = v26[3];
  v85 = v26[4];
  sub_22BE203C8();
  sub_22C174ABC();
  sub_22BE489BC();
  sub_22C1901D4();
  if (v21)
  {
    sub_22BE26B64(v26);
    sub_22C18DC5C(v104 + v105, &qword_27D911F58);
    sub_22C18DC5C(v104 + v108, &qword_27D9082F0);
    v87 = v110[2];
    sub_22BE37808(*v110, v110[1]);
    sub_22C18DC5C(v104 + v106, &qword_27D9120B0);
    v88 = v109[1];

    sub_22C18DC5C(v104 + v107, &qword_27D911F50);
  }

  else
  {
    sub_22BE35880();
    sub_22BE20458(v86);
    sub_22C18F94C();
    sub_22C18E9B8();
    sub_22C273EB4();
    sub_22BE250EC();
    sub_22C171FA8(v102, v104);
    *(v104 + v20[5]) = sub_22C273E74() & 1;
    sub_22C18ECE8();
    sub_22BE20458(v89);
    sub_22C18F94C();
    sub_22C273E44();
    sub_22BE2343C();
    LOBYTE(v111) = 3;
    sub_22BE18B28();
    sub_22BE20458(v90);
    sub_22C18F94C();
    sub_22C18E9B8();
    sub_22C273E44();
    sub_22BE2343C();
    sub_22C173BC4();
    sub_22C18E9B8();
    sub_22C273E44();
    v91 = v110[2];
    sub_22BE37808(*v110, v110[1]);
    *v110 = v111;
    v110[2] = v112;
    LOBYTE(v111) = 5;
    sub_22BE3D20C();
    sub_22BE20458(v92);
    sub_22C18F94C();
    sub_22C18E9B8();
    sub_22C273E44();
    sub_22BE2343C();
    sub_22C174B64();
    sub_22C18E9B8();
    sub_22C273E44();
    v93 = v109[1];

    *v109 = v111;
    sub_22BE389E8();
    sub_22BE20458(v94);
    sub_22C18F94C();
    sub_22BE236D4(&a17);
    sub_22BE3788C();
    sub_22C273E44();
    v95 = *(v100 + 8);
    v96 = sub_22BE18944();
    v97(v96);
    sub_22BE2343C();
    v98 = sub_22BE385E4();
    sub_22BE1A964(v98, v99);
    sub_22BE26B64(v26);
    sub_22BE26A6C();
    sub_22C171FFC();
  }

  sub_22BE46D98();
  sub_22BE18478();
}

uint64_t static RequestContent.TextContent.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  sub_22BE19FC4(a1, a2);
  v4 = v4 && v2 == v3;
  if (!v4 && (sub_22C274014() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for RequestContent.TextContent(0);
  sub_22BE3E750(v5);

  return _s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0();
}