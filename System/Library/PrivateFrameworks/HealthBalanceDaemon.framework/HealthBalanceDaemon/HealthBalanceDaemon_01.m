uint64_t sub_2288CF9F4()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v1 = [v0 sleepScheduleModelWithError_];
  if (v1)
  {
    v2 = v1;
    v3 = v6[0];
    LOBYTE(v0) = [v0 hasSleepFocusMode];
    [v2 sleepEventRecord];
    [v2 sleepSettings];
    [v2 sleepSchedule];
  }

  else
  {
    v0 = v6[0];
    sub_22892DE38();

    swift_willThrow();
  }

  v4 = *MEMORY[0x277D85DE8];
  return v0 & 1;
}

id sub_2288CFB2C(uint64_t a1)
{
  v29[2] = a1;
  v32 = *MEMORY[0x277D85DE8];
  v30 = sub_22892E048();
  v2 = *(v30 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v30);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22892DEF8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v1 environmentDataSource];
  v12 = [v11 currentDate];

  sub_22892DEC8();
  v13 = [v1 environmentDataSource];
  v14 = [v13 calendarCache];

  v15 = [v14 currentCalendar];
  sub_22892E018();

  v16 = sub_22892DE58();
  v17 = sub_22892DFF8();
  v31 = 0;
  v18 = HDAnalyticsCountOfSleepDaysWithStandHoursPriorToDate();

  v19 = v31;
  if (v18)
  {
    v20 = v31;
    v21 = [v18 integerValue];

    (*(v2 + 8))(v5, v30);
    (*(v7 + 8))(v10, v6);
  }

  else
  {
    v22 = v6;
    v23 = v30;
    if (v31)
    {
      v24 = v31;
    }

    else
    {
      v25 = [objc_opt_self() hk:0 error:0 userInfo:?];
    }

    swift_willThrow();
    v26 = *(v2 + 8);
    v21 = v19;
    v26(v5, v23);
    (*(v7 + 8))(v10, v22);
  }

  v27 = *MEMORY[0x277D85DE8];
  return v21;
}

void *sub_2288CFE74@<X0>(const void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v155 = a4;
  v166 = a3;
  v202 = a1;
  v5 = MEMORY[0x277D0FFC8];
  sub_2288BF214(0, &qword_2813DE920, MEMORY[0x277D0FFC8]);
  v193 = v6;
  v199 = *(v6 - 8);
  v7 = v199[8];
  v8 = MEMORY[0x28223BE20](v6);
  v164 = &v155 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v165 = &v155 - v10;
  sub_2288B5D1C();
  v189 = v11;
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v188 = &v155 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = sub_22892E478();
  v200 = *(v187 - 8);
  v14 = *(v200 + 64);
  MEMORY[0x28223BE20](v187);
  v186 = &v155 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = sub_22892EFA8();
  v194 = *(v192 - 8);
  v16 = *(v194 + 64);
  v17 = MEMORY[0x28223BE20](v192);
  v185 = &v155 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v184 = &v155 - v19;
  v162 = sub_22892EA78();
  v183 = *(v162 - 8);
  v20 = *(v183 + 8);
  MEMORY[0x28223BE20](v162);
  v161 = &v155 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288BBFAC(0, &unk_2813DEDE0, MEMORY[0x277CCB6A8]);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v171 = &v155 - v24;
  v25 = MEMORY[0x277D100B8];
  sub_2288D3EC4(0, &qword_2813DE900, &qword_2813DE910, MEMORY[0x277D100B8]);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v174 = &v155 - v28;
  sub_2288BF214(0, &qword_2813DE910, v25);
  v173 = v29;
  v181 = *(v29 - 8);
  v30 = *(v181 + 8);
  v31 = MEMORY[0x28223BE20](v29);
  v170 = &v155 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v34 = &v155 - v33;
  sub_2288BBFAC(0, &unk_2813DFE50, MEMORY[0x277D0FFC8]);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35 - 8);
  v204 = &v155 - v37;
  v38 = sub_22892E6D8();
  v203 = *(v38 - 8);
  v39 = *(v203 + 64);
  v40 = MEMORY[0x28223BE20](v38);
  v163 = &v155 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v182 = &v155 - v42;
  sub_2288BF360();
  v44 = *(*(v43 - 8) + 64);
  v45 = MEMORY[0x28223BE20](v43 - 8);
  v168 = &v155 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x28223BE20](v45);
  v49 = &v155 - v48;
  v50 = MEMORY[0x28223BE20](v47);
  v196 = &v155 - v51;
  MEMORY[0x28223BE20](v50);
  v198 = &v155 - v52;
  sub_2288D3EC4(0, &qword_2813DE918, &qword_2813DE920, v5);
  v54 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53 - 8);
  v167 = &v155 - v55;
  v56 = sub_22892EDE8();
  v57 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56 - 8);
  v201 = (&v155 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0));
  v59 = sub_22892E778();
  v157 = *(v59 - 8);
  v60 = v157;
  v158 = v59;
  v61 = *(v157 + 64);
  v62 = MEMORY[0x28223BE20](v59);
  v210 = &v155 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v62);
  v205 = &v155 - v64;
  memcpy(v209, v202, sizeof(v209));
  v65 = a2[2];
  v175 = sub_2288E88F8();
  v66 = *(*a2 + 104);
  v191 = a2;
  swift_beginAccess();
  v67 = *(v60 + 16);
  v68 = a2 + v66;
  v69 = v205;
  v70 = v158;
  v67(v205, v68, v158);
  v71 = *v191;
  v72 = (v191 + *(*v191 + 112));
  v74 = *v72;
  v73 = v72[1];
  v195 = v74;
  v197 = v73;
  v202 = *(v191 + *(v71 + 120));
  v67(v210, v69, v70);
  v75 = type metadata accessor for SleepingSampleBaselineAccumulator();
  v76 = *(v75 + 48);
  v77 = *(v75 + 52);
  v78 = swift_allocObject();
  v79 = MEMORY[0x277D84F90];
  *(v78 + OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_baselineAggregates) = MEMORY[0x277D84F90];
  *(v78 + OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_completedDaySummaries) = v79;
  *(v78 + OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_aggregatesToComplete) = v79;

  v80 = v195;
  swift_unknownObjectRetain();
  sub_22892EDC8();
  sub_22892ED48();
  v81 = v157;
  (*(v157 + 32))(v78 + OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_queryRange, v210, v158);
  v82 = (v78 + OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_warmupProgressProvider);
  v83 = v197;
  *v82 = v80;
  v82[1] = v83;
  *(v78 + OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_outlierContextProvider) = v202;
  v156 = *(v81 + 8);
  v157 = v81 + 8;
  v156(v205, v158);
  LODWORD(v210) = 0;
  v205 = OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_completedDaySummaries;
  v197 = v199[7];
  v201 = v199 + 6;
  v191 = (v203 + 8);
  v195 = (v203 + 56);
  v179 = OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_queryRange;
  v180 = v203 + 16;
  v190 = (v203 + 32);
  v177 = (v194 + 16);
  v178 = (v200 + 8);
  v176 = (v194 + 8);
  v172 = (v181 + 48);
  v160 = (v183 + 32);
  v159 = (v183 + 8);
  v169 = (v194 + 56);
  v199 += 7;
  v183 = v34;
  v194 = v78;
  v181 = v49;
  v206 = v38;
  while (1)
  {
    v84 = v198;
    v85 = v193;
    v197(v198, 2, 2, v193);
    swift_beginAccess();
    v86 = v196;
    sub_2288D3F1C(v84, v196, sub_2288BF360);
    v200 = *v201;
    for (i = (v200)(v86, 2, v85); i == 2; i = (v200)(v86, 2, v85))
    {
      sub_2288D3FEC(v86, sub_2288BF360);
      v99 = *&v205[v78];
      v100 = *(v99 + 2);
      if (v100)
      {
        swift_beginAccess();
        v101 = (*(v203 + 80) + 32) & ~*(v203 + 80);
        (*(v203 + 16))(v204, &v99[v101], v38);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0 || (v100 - 1) > *(v99 + 3) >> 1)
        {
          v99 = sub_2288D5FD8(isUniquelyReferenced_nonNull_native, v100, 1, v99);
        }

        v103 = &v99[v101];
        v104 = v203;
        (*(v203 + 8))(v103, v38);
        v105 = *(v104 + 72);
        if (v105 > 0 || v103 >= v103 + v105 + (*(v99 + 2) - 1) * v105)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v105)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        --*(v99 + 2);
        *&v205[v78] = v99;
        swift_endAccess();
        v88 = v204;
        (*v195)(v204, 0, 1, v38);
        v202 = *v190;
        (v202)(v182, v88, v206);
        v89 = v184;
        sub_22892E5E8();
        v90 = v186;
        sub_22892E708();
        v91 = v188;
        sub_22892E438();
        (*v178)(v90, v187);
        v92 = v185;
        v93 = v192;
        (*v177)(v185, v91 + *(v189 + 36), v192);
        sub_2288D3FEC(v91, sub_2288B5D1C);
        sub_2288D3E28(&unk_2813DEE10, MEMORY[0x277CCB6A8]);
        LODWORD(v88) = sub_22892F088();
        v94 = *v176;
        (*v176)(v92, v93);
        v95 = v93;
        v78 = v194;
        v94(v89, v95);
        v96 = v198;
        sub_2288D3FEC(v198, sub_2288BF360);
        LODWORD(v210) = v88 | v210;
        v49 = v181;
        (v202)(v181);
        v38 = v206;
        v85 = v193;
        swift_storeEnumTagMultiPayload();
        v97 = 0;
        v34 = v183;
      }

      else
      {
        v106 = v204;
        (*v195)(v204, 1, 1, v38);
        sub_2288D40CC(v106, &unk_2813DFE50, MEMORY[0x277D0FFC8]);
        if (v210)
        {
          v96 = v198;
          sub_2288D3FEC(v198, sub_2288BF360);
          v97 = 1;
          LODWORD(v210) = 1;
        }

        else
        {
          v107 = v174;
          sub_22892F7A8();
          if ((*v172)(v107, 1, v173) == 1)
          {
            sub_2288D404C(v107);
            v108 = *v169;
            LODWORD(v210) = 1;
            v109 = v171;
            v108(v171, 1, 1, v192);
            v78 = v194;
            sub_2288F81BC(v109);
            sub_2288D40CC(v109, &unk_2813DEDE0, MEMORY[0x277CCB6A8]);
            v96 = v198;
            sub_2288D3FEC(v198, sub_2288BF360);
            v97 = 2;
          }

          else
          {
            v110 = MEMORY[0x277D100B8];
            sub_2288C0D18(v107, v34, &qword_2813DE910, MEMORY[0x277D100B8]);
            v111 = v170;
            sub_2288C06F8(v34, v170, &qword_2813DE910, v110);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              sub_2288C0CBC(v34, &qword_2813DE910, MEMORY[0x277D100B8]);
              v112 = v198;
              sub_2288D3FEC(v198, sub_2288BF360);
              v113 = *v111;
              v114 = *(v111 + 8);
              v96 = v112;
              *v49 = v113;
              v49[8] = v114;
              LODWORD(v210) = 1;
              swift_storeEnumTagMultiPayload();
              v97 = 0;
              v78 = v194;
            }

            else
            {
              v115 = v161;
              v116 = v111;
              v117 = v162;
              (*v160)(v161, v116, v162);
              v118 = v194;
              sub_2288F78DC(v115);
              v119 = v115;
              v78 = v118;
              (*v159)(v119, v117);
              sub_2288C0CBC(v34, &qword_2813DE910, MEMORY[0x277D100B8]);
              v96 = v198;
              sub_2288D3FEC(v198, sub_2288BF360);
              LODWORD(v210) = 0;
              v97 = 2;
            }
          }
        }
      }

      v197(v49, v97, 2, v85);
      sub_2288D3F84(v49, v96, sub_2288BF360);
      v98 = v96;
      v86 = v196;
      sub_2288D3F1C(v98, v196, sub_2288BF360);
    }

    sub_2288D3FEC(v86, sub_2288BF360);
    v120 = v168;
    sub_2288D3F84(v198, v168, sub_2288BF360);
    if ((v200)(v120, 2, v85))
    {
      v121 = 1;
      v122 = v167;
    }

    else
    {
      v122 = v167;
      sub_2288C0D18(v120, v167, &qword_2813DE920, MEMORY[0x277D0FFC8]);
      v121 = 0;
    }

    v123 = v193;
    v197(v122, v121, 1, v193);
    if ((v200)(v122, 1, v123) == 1)
    {
      v131 = v194;
      swift_setDeallocating();
      v156((v131 + OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_queryRange), v158);
      v132 = *(v131 + OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_baselineAggregates);

      v133 = *(v131 + OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_completedDaySummaries);

      v134 = *(v131 + OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_aggregatesToComplete);

      v135 = OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_signposter;
      v136 = sub_22892ED68();
      (*(*(v136 - 8) + 8))(v131 + v135, v136);
      v137 = *(v131 + OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_warmupProgressProvider);
      swift_unknownObjectRelease();
      v138 = *(v131 + OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_outlierContextProvider);

      v139 = *(*v131 + 48);
      v140 = *(*v131 + 52);
      swift_deallocClassInstance();

      return memcpy(v155, v209, 0x1B8uLL);
    }

    v124 = MEMORY[0x277D0FFC8];
    v125 = v122;
    v126 = v165;
    sub_2288C0D18(v125, v165, &qword_2813DE920, MEMORY[0x277D0FFC8]);
    v127 = v124;
    v128 = v164;
    sub_2288C06F8(v126, v164, &qword_2813DE920, v127);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    v129 = v163;
    (*v190)(v163, v128, v38);
    v130 = *(v166 + 48);
    sub_228909C20(v129);
    (*v191)(v129, v38);
    sub_2288C0CBC(v126, &qword_2813DE920, MEMORY[0x277D0FFC8]);
    v78 = v194;
  }

  v143 = *(v128 + 8);
  v207 = *v128;
  v142 = v207;
  v208 = v143;
  sub_2288B7AEC();
  swift_willThrowTypedImpl();
  swift_allocError();
  *v144 = v142;
  *(v144 + 8) = v143;
  sub_2288C0CBC(v126, &qword_2813DE920, MEMORY[0x277D0FFC8]);
  v145 = v194;
  swift_setDeallocating();
  v156((v145 + OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_queryRange), v158);
  v146 = *(v145 + OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_baselineAggregates);

  v147 = *(v145 + OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_completedDaySummaries);

  v148 = *(v145 + OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_aggregatesToComplete);

  v149 = OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_signposter;
  v150 = sub_22892ED68();
  (*(*(v150 - 8) + 8))(v145 + v149, v150);
  v151 = *(v145 + OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_warmupProgressProvider);
  swift_unknownObjectRelease();
  v152 = *(v145 + OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_outlierContextProvider);

  v153 = *(*v145 + 48);
  v154 = *(*v145 + 52);
  swift_deallocClassInstance();
}

unint64_t sub_2288D1350(void *a1)
{
  v32 = a1;
  v2 = sub_22892F3F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288BBFAC(0, &qword_2813DFEE0, MEMORY[0x277CC9578]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v46 = &v29 - v9;
  v10 = *(v1 + 16);
  v11 = [v10 profileExtensionsConformingToProtocol_];
  v12 = MEMORY[0x277D84F70];
  v13 = sub_22892F218();

  if (!*(v13 + 16))
  {

    goto LABEL_7;
  }

  sub_2288B7664(v13 + 32, v41);

  sub_2288D1A38();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    sub_2288D1A9C();
    swift_allocError();
    *v23 = 2;
    swift_willThrow();
    return v12;
  }

  v12 = v40;
  v14 = *(v1 + 112);
  v38 = *(v1 + 96);
  v39[0] = v14;
  *(v39 + 9) = *(v1 + 121);
  v15 = *(v1 + 80);
  v37[0] = *(v1 + 64);
  v37[1] = v15;
  if (*(&v38 + 1))
  {
    v30 = v1;
    v31 = v40;
    v16 = *(v1 + 80);
    v42[0] = *(v1 + 64);
    v42[1] = v16;
    v43 = *(v1 + 96);
    v44 = *(&v38 + 1);
    v17 = *(v1 + 96);
    *v45 = *(v1 + 112);
    *&v45[9] = *(v1 + 121);
    *(v36 + 9) = *(v1 + 121);
    v18 = *(v1 + 112);
    v35[2] = v17;
    v36[0] = v18;
    v35[0] = v42[0];
    v35[1] = v16;
    sub_2288D1AF0(v35, v34);
    v32 = [v32 environmentDataSource];
    sub_2288BC0FC(0, &unk_2813DEC30, 0x277CCD570);
    sub_22892F3D8();
    v19 = objc_allocWithZone(MEMORY[0x277D10718]);
    v20 = sub_22892F098();

    v21 = [v19 initWithCategory:105 domainName:v20 profile:v10];

    (*(v3 + 104))(v6, *MEMORY[0x277D10110], v2);
    sub_22892F3E8();
    (*(v3 + 8))(v6, v2);
    v12 = v46;
    v22 = v33;
    sub_22892F3B8();
    if (!v22)
    {

      v26 = [objc_msgSend(v31 getPregnancyModelProvider)];
      swift_unknownObjectRelease();
      memcpy(v34, (v30 + 144), sizeof(v34));
      v27 = v32;
      v28 = sub_2288D3424(v42, v32, v12, v26, v34);

      sub_2288D3FEC(v37, sub_2288D1B4C);
      sub_2288D40CC(v12, &qword_2813DFEE0, MEMORY[0x277CC9578]);
      v12 = sub_2288DB7D0(v28);
      swift_unknownObjectRelease();

      return v12;
    }

    sub_2288D3FEC(v37, sub_2288D1B4C);
  }

  else
  {
    sub_2288D1A9C();
    swift_allocError();
    *v24 = 0;
    swift_willThrow();
  }

  swift_unknownObjectRelease();
  return v12;
}

id sub_2288D1874(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id))
{
  v6 = a3;

  a5(v6);

  v7 = sub_22892EFB8();

  return v7;
}

uint64_t sub_2288D196C()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v6 = *(v0 + 136);
  v5 = *(v0 + 128);
  sub_2288D4128(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));
  return v0;
}

uint64_t sub_2288D19E0()
{
  sub_2288D196C();

  return swift_deallocClassInstance();
}

unint64_t sub_2288D1A38()
{
  result = qword_27D85B3B0;
  if (!qword_27D85B3B0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D85B3B0);
  }

  return result;
}

unint64_t sub_2288D1A9C()
{
  result = qword_27D85B3B8;
  if (!qword_27D85B3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D85B3B8);
  }

  return result;
}

void sub_2288D1B4C()
{
  if (!qword_2813DFCD0[0])
  {
    v0 = sub_22892F498();
    if (!v1)
    {
      atomic_store(v0, qword_2813DFCD0);
    }
  }
}

uint64_t sub_2288D1B9C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_2288D3D58((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

uint64_t sub_2288D1BE8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_2288D3D58(*(v3 + 56) + 40 * v13, v22);
    *&v24 = v16;
    *(&v24 + 1) = v15;
    sub_2288D3C20(v22, &v25);

    v18 = *(&v24 + 1);
    v19 = v24;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v21 = v1[5];
      v20 = v1[6];
      *&v22[0] = v19;
      *(&v22[0] + 1) = v18;
      v22[1] = v25;
      v22[2] = v26;
      v23 = v27;
      v21(v22);
      return sub_2288D3FEC(v22, sub_2288D3DBC);
    }

    else
    {
      *(a1 + 48) = 0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v27 = 0;
        v25 = 0u;
        v26 = 0u;
        v24 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2288D1D64(uint64_t *a1, void *a2, void *a3, int a4, void *a5, void *a6, void *a7, int a8, unsigned __int8 a9, void *a10, void *a11, void *a12, char a13, void *__src)
{
  v164 = a8;
  v165 = a7;
  v166 = a6;
  v167 = a5;
  v168 = a4;
  v162 = a2;
  v163 = a3;
  v179 = *MEMORY[0x277D85DE8];
  memcpy(v178, __src, sizeof(v178));
  v15 = MEMORY[0x277D84F98];
  v172 = MEMORY[0x277D84F98];
  v16 = a1[1];
  if (v16)
  {
    v17 = *a1;
    v176 = MEMORY[0x277D837D0];
    v177 = MEMORY[0x277D837F8];
    *&v175 = v17;
    *(&v175 + 1) = v16;
    sub_2288D3C20(&v175, v173);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v171 = v15;
    v19 = v174;
    v20 = __swift_mutable_project_boxed_opaque_existential_1(v173, v174);
    v21 = *(*(v19 - 8) + 64);
    MEMORY[0x28223BE20](v20);
    v23 = &v160 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v24 + 16))(v23);
    sub_2289066C0(v23, 0xD000000000000016, 0x8000000228933480, isUniquelyReferenced_nonNull_native, &v171, MEMORY[0x277D837D0], MEMORY[0x277D837F8]);
    __swift_destroy_boxed_opaque_existential_0(v173);
    v25 = v171;
  }

  else
  {
    sub_2289055AC(0xD000000000000016, 0x8000000228933480, &v175);
    sub_2288D40CC(&v175, &qword_2813DED60, sub_2288D3BBC);
    v25 = v172;
  }

  v161 = a12;
  v26 = MEMORY[0x277D839B0];
  v27 = MEMORY[0x277D839C8];
  v176 = MEMORY[0x277D839B0];
  v177 = MEMORY[0x277D839C8];
  LOBYTE(v175) = a13 & 1;
  sub_2288D3C20(&v175, v173);
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v171 = v25;
  v29 = __swift_mutable_project_boxed_opaque_existential_1(v173, v174);
  sub_228906204(*v29, 0xD000000000000020, 0x80000002289334A0, v28, &v171);
  __swift_destroy_boxed_opaque_existential_0(v173);
  v30 = v171;
  v170 = a1;
  v31 = *(a1 + 48);
  v176 = v26;
  v177 = v27;
  LOBYTE(v175) = v31;
  sub_2288D3C20(&v175, v173);
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v171 = v30;
  v33 = __swift_mutable_project_boxed_opaque_existential_1(v173, v174);
  sub_228906204(*v33, 0xD000000000000021, 0x80000002289334D0, v32, &v171);
  __swift_destroy_boxed_opaque_existential_0(v173);
  v34 = v171;
  v172 = v171;
  v35 = sub_22892E238();
  v36 = v35;
  if (v35 == 2)
  {
    sub_2289055AC(0xD000000000000014, 0x8000000228933500, &v175);
    sub_2288D40CC(&v175, &qword_2813DED60, sub_2288D3BBC);
    v44 = v172;
  }

  else
  {
    v176 = v26;
    v177 = v27;
    LOBYTE(v175) = v35 & 1;
    sub_2288D3C20(&v175, v173);
    v37 = swift_isUniquelyReferenced_nonNull_native();
    v171 = v34;
    v38 = v174;
    v39 = __swift_mutable_project_boxed_opaque_existential_1(v173, v174);
    v40 = *(*(v38 - 8) + 64);
    MEMORY[0x28223BE20](v39);
    v42 = &v160 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v43 + 16))(v42);
    sub_2289066C0(v42, 0xD000000000000014, 0x8000000228933500, v37, &v171, MEMORY[0x277D839B0], v27);
    __swift_destroy_boxed_opaque_existential_0(v173);
    v26 = MEMORY[0x277D839B0];
    v44 = v171;
  }

  v45 = v27;
  v176 = v26;
  v177 = v27;
  LOBYTE(v175) = v36 != 2;
  sub_2288D3C20(&v175, v173);
  v46 = swift_isUniquelyReferenced_nonNull_native();
  v171 = v44;
  v47 = __swift_mutable_project_boxed_opaque_existential_1(v173, v174);
  sub_228906204(*v47, 0x72616F626E4F7369, 0xEB00000000646564, v46, &v171);
  __swift_destroy_boxed_opaque_existential_0(v173);
  v48 = v171;
  v172 = v171;
  v49 = MEMORY[0x277D83B88];
  if (v170[9])
  {
    sub_2289055AC(0xD000000000000013, 0x8000000228933520, &v175);
    sub_2288D40CC(&v175, &qword_2813DED60, sub_2288D3BBC);
  }

  else
  {
    v50 = v170[8];
    v176 = MEMORY[0x277D83B88];
    v177 = MEMORY[0x277D83BA8];
    *&v175 = v50;
    sub_2288D3C20(&v175, v173);
    v51 = swift_isUniquelyReferenced_nonNull_native();
    v171 = v48;
    v52 = v174;
    v53 = __swift_mutable_project_boxed_opaque_existential_1(v173, v174);
    v54 = *(*(v52 - 8) + 64);
    MEMORY[0x28223BE20](v53);
    v56 = &v160 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v57 + 16))(v56);
    sub_2289066C0(v56, 0xD000000000000013, 0x8000000228933520, v51, &v171, v49, MEMORY[0x277D83BA8]);
    __swift_destroy_boxed_opaque_existential_0(v173);
    v45 = MEMORY[0x277D839C8];
    v172 = v171;
  }

  v160 = a11;
  v162 = a10;
  v58 = *MEMORY[0x277CCE518];
  *&v175 = 0;
  v59 = [v161 hk:v58 safeNumberIfExistsForKeyPath:&v175 error:a11];
  if (v59)
  {
    v60 = v59;
    v61 = v175;
    v62 = [v60 BOOLValue];

    v176 = v26;
    v177 = v45;
    LOBYTE(v175) = v62;
    sub_2288D3C20(&v175, v173);
    v63 = v172;
    v64 = swift_isUniquelyReferenced_nonNull_native();
    v171 = v63;
    v65 = v174;
    v66 = __swift_mutable_project_boxed_opaque_existential_1(v173, v174);
    v67 = *(*(v65 - 8) + 64);
    MEMORY[0x28223BE20](v66);
    v69 = &v160 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v70 + 16))(v69);
    v45 = MEMORY[0x277D839C8];
    sub_2289066C0(v69, 0xD000000000000012, 0x8000000228933540, v64, &v171, v26, MEMORY[0x277D839C8]);
    __swift_destroy_boxed_opaque_existential_0(v173);
    v172 = v171;
  }

  else
  {
    v71 = v175;
    v72 = sub_22892DE38();

    swift_willThrow();
    sub_2289055AC(0xD000000000000012, 0x8000000228933540, &v175);
    sub_2288D40CC(&v175, &qword_2813DED60, sub_2288D3BBC);
    v169 = 0;
  }

  v73 = *MEMORY[0x277CCCD28];
  *&v175 = 0;
  v74 = [v163 hk:v73 safeNumberIfExistsForKeyPath:&v175 error:?];
  if (v74)
  {
    v75 = v74;
    v76 = v175;
    v77 = [v75 &off_278609478];

    v78 = MEMORY[0x277D839B0];
    v176 = MEMORY[0x277D839B0];
    v177 = v45;
    LOBYTE(v175) = v77;
    sub_2288D3C20(&v175, v173);
    v79 = v172;
    v80 = swift_isUniquelyReferenced_nonNull_native();
    v171 = v79;
    v81 = v174;
    v82 = __swift_mutable_project_boxed_opaque_existential_1(v173, v174);
    v83 = *(*(v81 - 8) + 64);
    MEMORY[0x28223BE20](v82);
    v85 = &v160 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v86 + 16))(v85);
    v87 = v78;
    sub_2289066C0(v85, 0xD000000000000014, 0x8000000228933560, v80, &v171, v78, v45);
    __swift_destroy_boxed_opaque_existential_0(v173);
    v88 = v171;
    v172 = v171;
  }

  else
  {
    v89 = v175;
    v90 = sub_22892DE38();

    swift_willThrow();
    sub_2289055AC(0xD000000000000014, 0x8000000228933560, &v175);
    sub_2288D40CC(&v175, &qword_2813DED60, sub_2288D3BBC);
    v169 = 0;
    v88 = v172;
    v87 = MEMORY[0x277D839B0];
  }

  v91 = v45;
  v92 = *MEMORY[0x277CCBEA0];
  v93 = [v160 objectForKeyedSubscript_];
  v94 = *MEMORY[0x277CCBF38];
  v95 = [v93 isRequirementSatisfiedWithIdentifier_];

  v176 = v87;
  v177 = v91;
  LOBYTE(v175) = v95;
  sub_2288D3C20(&v175, v173);
  LOBYTE(v93) = swift_isUniquelyReferenced_nonNull_native();
  v171 = v88;
  v96 = __swift_mutable_project_boxed_opaque_existential_1(v173, v174);
  sub_228906204(*v96, 0xD000000000000012, 0x8000000228933580, v93, &v171);
  __swift_destroy_boxed_opaque_existential_0(v173);
  v97 = v171;
  v98 = [v162 objectForKeyedSubscript_];
  LOBYTE(v94) = [v98 isRequirementSatisfiedWithIdentifier_];

  v176 = v87;
  v177 = v91;
  LOBYTE(v175) = v94;
  sub_2288D3C20(&v175, v173);
  LOBYTE(v98) = swift_isUniquelyReferenced_nonNull_native();
  v171 = v97;
  v99 = __swift_mutable_project_boxed_opaque_existential_1(v173, v174);
  sub_228906204(*v99, 0xD000000000000018, 0x80000002289335A0, v98, &v171);
  __swift_destroy_boxed_opaque_existential_0(v173);
  v100 = v171;
  v176 = v87;
  v177 = v91;
  LOBYTE(v175) = v164 & 1;
  sub_2288D3C20(&v175, v173);
  LOBYTE(v94) = swift_isUniquelyReferenced_nonNull_native();
  v171 = v100;
  v101 = __swift_mutable_project_boxed_opaque_existential_1(v173, v174);
  sub_228906204(*v101, 0xD000000000000018, 0x80000002289335C0, v94, &v171);
  __swift_destroy_boxed_opaque_existential_0(v173);
  v102 = v171;
  v172 = v171;
  if (v165)
  {
    v103 = [v165 isEnabled];
    v176 = v87;
    v177 = v91;
    LOBYTE(v175) = v103;
    sub_2288D3C20(&v175, v173);
    v104 = swift_isUniquelyReferenced_nonNull_native();
    v171 = v102;
    v105 = v174;
    v106 = __swift_mutable_project_boxed_opaque_existential_1(v173, v174);
    v107 = *(*(v105 - 8) + 64);
    MEMORY[0x28223BE20](v106);
    v109 = &v160 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v110 + 16))(v109);
    sub_2289066C0(v109, 0xD000000000000016, 0x80000002289335E0, v104, &v171, v87, v91);
    __swift_destroy_boxed_opaque_existential_0(v173);
    v172 = v171;
  }

  else
  {
    sub_2289055AC(0xD000000000000016, 0x80000002289335E0, &v175);
    sub_2288D40CC(&v175, &qword_2813DED60, sub_2288D3BBC);
  }

  v111 = *(v170 + 49);
  if (v111 == 2)
  {
    sub_2289055AC(0xD00000000000001BLL, 0x8000000228933600, &v175);
    sub_2288D40CC(&v175, &qword_2813DED60, sub_2288D3BBC);
  }

  else
  {
    v176 = v87;
    v112 = MEMORY[0x277D839C8];
    v177 = MEMORY[0x277D839C8];
    LOBYTE(v175) = v111;
    sub_2288D3C20(&v175, v173);
    v113 = v172;
    v114 = swift_isUniquelyReferenced_nonNull_native();
    v171 = v113;
    v115 = v174;
    v116 = __swift_mutable_project_boxed_opaque_existential_1(v173, v174);
    v117 = *(*(v115 - 8) + 64);
    MEMORY[0x28223BE20](v116);
    v119 = &v160 - ((v118 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v120 + 16))(v119);
    sub_2289066C0(v119, 0xD00000000000001BLL, 0x8000000228933600, v114, &v171, v87, v112);
    __swift_destroy_boxed_opaque_existential_0(v173);
    v172 = v171;
  }

  LODWORD(v165) = a9;
  v121 = v166;
  if (v166)
  {
    v122 = [v166 sleepModeOptions];
    v176 = v87;
    v123 = MEMORY[0x277D839C8];
    v177 = MEMORY[0x277D839C8];
    LOBYTE(v175) = (v122 & 0x4000) != 0;
    sub_2288D3C20(&v175, v173);
    v124 = v172;
    v125 = swift_isUniquelyReferenced_nonNull_native();
    v171 = v124;
    v126 = v174;
    v127 = __swift_mutable_project_boxed_opaque_existential_1(v173, v174);
    v128 = *(*(v126 - 8) + 64);
    MEMORY[0x28223BE20](v127);
    v130 = &v160 - ((v129 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v131 + 16))(v130);
    sub_2289066C0(v130, 0xD000000000000014, 0x8000000228933620, v125, &v171, MEMORY[0x277D839B0], v123);
    __swift_destroy_boxed_opaque_existential_0(v173);
    v132 = v171;
    v133 = [v121 scheduledSleepMode];
    v176 = MEMORY[0x277D839B0];
    v177 = v123;
    LOBYTE(v175) = v133;
    sub_2288D3C20(&v175, v173);
    v134 = swift_isUniquelyReferenced_nonNull_native();
    v171 = v132;
    v135 = v174;
    v136 = __swift_mutable_project_boxed_opaque_existential_1(v173, v174);
    v137 = *(*(v135 - 8) + 64);
    MEMORY[0x28223BE20](v136);
    v139 = &v160 - ((v138 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v140 + 16))(v139);
    sub_2289066C0(v139, 0xD00000000000001CLL, 0x8000000228933640, v134, &v171, MEMORY[0x277D839B0], v123);
    __swift_destroy_boxed_opaque_existential_0(v173);
    v87 = MEMORY[0x277D839B0];
    v141 = v171;
  }

  else
  {
    sub_2289055AC(0xD000000000000014, 0x8000000228933620, v173);
    sub_2288D40CC(v173, &qword_2813DED60, sub_2288D3BBC);
    sub_2289055AC(0xD00000000000001CLL, 0x8000000228933640, v173);
    sub_2288D40CC(v173, &qword_2813DED60, sub_2288D3BBC);
    v141 = v172;
    v123 = MEMORY[0x277D839C8];
  }

  v142 = [v167 isAnySleepTrackingOnboardingCompleted];
  v176 = v87;
  v177 = v123;
  LOBYTE(v175) = v142;
  sub_2288D3C20(&v175, v173);
  v143 = swift_isUniquelyReferenced_nonNull_native();
  v171 = v141;
  v144 = __swift_mutable_project_boxed_opaque_existential_1(v173, v174);
  sub_228906204(*v144, 0xD000000000000017, 0x8000000228933660, v143, &v171);
  __swift_destroy_boxed_opaque_existential_0(v173);
  v145 = v171;
  v176 = v87;
  v177 = v123;
  LOBYTE(v175) = v168 & 1;
  sub_2288D3C20(&v175, v173);
  v146 = swift_isUniquelyReferenced_nonNull_native();
  v171 = v145;
  v147 = __swift_mutable_project_boxed_opaque_existential_1(v173, v174);
  sub_228906204(*v147, 0xD000000000000011, 0x8000000228933680, v146, &v171);
  __swift_destroy_boxed_opaque_existential_0(v173);
  v148 = v171;
  v176 = v87;
  v177 = v123;
  LOBYTE(v175) = v165 & 1;
  sub_2288D3C20(&v175, v173);
  v149 = swift_isUniquelyReferenced_nonNull_native();
  v171 = v148;
  v150 = __swift_mutable_project_boxed_opaque_existential_1(v173, v174);
  sub_228906204(*v150, 0xD000000000000017, 0x80000002289336A0, v149, &v171);
  __swift_destroy_boxed_opaque_existential_0(v173);
  v151 = v171;
  v152 = v170[7];
  v177 = MEMORY[0x277D83BA8];
  v176 = MEMORY[0x277D83B88];
  *&v175 = v152;
  sub_2288D3C20(&v175, v173);
  v153 = swift_isUniquelyReferenced_nonNull_native();
  v171 = v151;
  v154 = __swift_mutable_project_boxed_opaque_existential_1(v173, v174);
  sub_228906368(*v154, 0xD00000000000001ALL, 0x80000002289336C0, v153, &v171);
  __swift_destroy_boxed_opaque_existential_0(v173);
  v155 = v171;
  v156 = sub_228909F24();
  v157 = swift_isUniquelyReferenced_nonNull_native();
  *&v175 = v155;
  sub_2288D3108(v156, sub_2288D1B9C, 0, v157, &v175);

  result = v175;
  v159 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2288D3108(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v48 = a1;
  v49 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v50 = v8;
  v51 = 0;
  v52 = v11 & v9;
  v53 = a2;
  v54 = a3;

  sub_2288D1BE8(&v45);
  v12 = v46;
  if (!v46)
  {
    goto LABEL_25;
  }

  v13 = v45;
  sub_2288D3C20(v47, v44);
  v14 = *a5;
  result = sub_22891C740(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_228905658(v20, a4 & 1);
    v22 = *a5;
    result = sub_22891C740(v13, v12);
    if ((v21 & 1) == (v23 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_22892F858();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v27 = result;
    sub_228905C50();
    result = v27;
    v24 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v24 = *a5;
  if (v21)
  {
LABEL_11:
    v25 = result;

    v26 = (v24[7] + 40 * v25);
    __swift_destroy_boxed_opaque_existential_0(v26);
    sub_2288D3C20(v44, v26);
    goto LABEL_15;
  }

LABEL_13:
  v24[(result >> 6) + 8] |= 1 << result;
  v28 = (v24[6] + 16 * result);
  *v28 = v13;
  v28[1] = v12;
  result = sub_2288D3C20(v44, v24[7] + 40 * result);
  v29 = v24[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (!v19)
  {
    v24[2] = v30;
LABEL_15:
    sub_2288D1BE8(&v45);
    v12 = v46;
    if (v46)
    {
      v21 = 1;
      do
      {
        v13 = v45;
        sub_2288D3C20(v47, v44);
        v33 = *a5;
        result = sub_22891C740(v13, v12);
        v35 = v33[2];
        v36 = (v34 & 1) == 0;
        v19 = __OFADD__(v35, v36);
        v37 = v35 + v36;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v34;
        if (v33[3] < v37)
        {
          sub_228905658(v37, 1);
          v38 = *a5;
          result = sub_22891C740(v13, v12);
          if ((a4 & 1) != (v39 & 1))
          {
            goto LABEL_8;
          }
        }

        v40 = *a5;
        if (a4)
        {
          v31 = result;

          v32 = (v40[7] + 40 * v31);
          __swift_destroy_boxed_opaque_existential_0(v32);
          sub_2288D3C20(v44, v32);
        }

        else
        {
          v40[(result >> 6) + 8] |= 1 << result;
          v41 = (v40[6] + 16 * result);
          *v41 = v13;
          v41[1] = v12;
          result = sub_2288D3C20(v44, v40[7] + 40 * result);
          v42 = v40[2];
          v19 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v40[2] = v43;
        }

        sub_2288D1BE8(&v45);
        v12 = v46;
      }

      while (v46);
    }

LABEL_25:
    sub_2288D3D50();
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_2288D3424(uint64_t a1, void *a2, uint64_t a3, void *a4, const void *a5)
{
  v62 = a4;
  sub_2288BBFAC(0, &qword_2813DFEE0, MEMORY[0x277CC9578]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v61 - v11;
  memcpy(v68, a5, sizeof(v68));
  v13 = MEMORY[0x277D84F98];
  v69 = MEMORY[0x277D84F98];
  if (*(a1 + 24))
  {
    sub_2289055AC(6645601, 0xE300000000000000, v64);
    sub_2288D40CC(v64, &qword_2813DED60, sub_2288D3BBC);
    v14 = v69;
  }

  else
  {
    v15 = *(a1 + 16);
    *&v64[24] = MEMORY[0x277D83B88];
    *&v64[32] = MEMORY[0x277D83BA8];
    *v64 = v15;
    sub_2288D3C20(v64, v63);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v65 = v13;
    v17 = v63[3];
    v18 = __swift_mutable_project_boxed_opaque_existential_1(v63, v63[3]);
    v19 = *(*(v17 - 8) + 64);
    MEMORY[0x28223BE20](v18);
    v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v22 + 16))(v21);
    sub_2289066C0(v21, 6645601, 0xE300000000000000, isUniquelyReferenced_nonNull_native, &v65, MEMORY[0x277D83B88], MEMORY[0x277D83BA8]);
    __swift_destroy_boxed_opaque_existential_0(v63);
    v14 = v65;
  }

  v23 = *(a1 + 32);
  v24 = *(a1 + 40);
  *&v64[24] = MEMORY[0x277D837D0];
  *&v64[32] = MEMORY[0x277D837F8];
  *v64 = v23;
  *&v64[8] = v24;
  sub_2288D3C20(v64, v63);

  LOBYTE(v24) = swift_isUniquelyReferenced_nonNull_native();
  *&v65 = v14;
  v25 = v63[3];
  v26 = __swift_mutable_project_boxed_opaque_existential_1(v63, v63[3]);
  v27 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v29 = (&v61 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v30 + 16))(v29);
  sub_2289064D0(*v29, v29[1], 0x6369676F6C6F6962, 0xED00007865536C61, v24, &v65);
  __swift_destroy_boxed_opaque_existential_0(v63);
  v69 = v65;
  sub_2288D3C38(a3, v12);
  v31 = sub_22892DEF8();
  v32 = *(v31 - 8);
  v33 = 0;
  if ((*(v32 + 48))(v12, 1, v31) != 1)
  {
    v33 = sub_22892DE58();
    (*(v32 + 8))(v12, v31);
  }

  v34 = [a2 bucketedNumberOfDaysSinceDate_];

  if (v34)
  {
    v35 = sub_2288BC0FC(0, &qword_2813DEB50, 0x277CCABB0);
    *&v64[24] = v35;
    v36 = sub_2288D3CE8();
    *&v64[32] = v36;
    *v64 = v34;
    sub_2288D3C20(v64, v63);
    v37 = v69;
    v38 = swift_isUniquelyReferenced_nonNull_native();
    *&v65 = v37;
    v39 = v63[3];
    v40 = __swift_mutable_project_boxed_opaque_existential_1(v63, v63[3]);
    v41 = *(*(v39 - 8) + 64);
    MEMORY[0x28223BE20](v40);
    v43 = &v61 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v44 + 16))(v43);
    sub_2289066C0(v43, 0xD000000000000019, 0x8000000228933430, v38, &v65, v35, v36);
    __swift_destroy_boxed_opaque_existential_0(v63);
    v69 = v65;
  }

  else
  {
    sub_2289055AC(0xD000000000000019, 0x8000000228933430, v64);
    sub_2288D40CC(v64, &qword_2813DED60, sub_2288D3BBC);
  }

  if (v62)
  {
    v45 = [v62 state];
    v46 = MEMORY[0x277D839B0];
    v47 = MEMORY[0x277D839C8];
    v66 = MEMORY[0x277D839B0];
    v67 = MEMORY[0x277D839C8];
    LOBYTE(v65) = (v45 - 1) < 2;
    sub_2288D3C20(&v65, v64);
    v48 = v69;
    v49 = swift_isUniquelyReferenced_nonNull_native();
    v63[0] = v48;
    v50 = *&v64[24];
    v51 = __swift_mutable_project_boxed_opaque_existential_1(v64, *&v64[24]);
    v52 = *(*(v50 - 8) + 64);
    MEMORY[0x28223BE20](v51);
    v54 = &v61 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v55 + 16))(v54);
    sub_2289066C0(v54, 0xD000000000000016, 0x8000000228933450, v49, v63, v46, v47);
    __swift_destroy_boxed_opaque_existential_0(v64);
    v69 = v63[0];
  }

  else
  {
    sub_2289055AC(0xD000000000000016, 0x8000000228933450, v64);
    sub_2288D40CC(v64, &qword_2813DED60, sub_2288D3BBC);
  }

  memcpy(v64, v68, sizeof(v64));
  if (sub_2288D3CB8(v64) == 1)
  {
    v56 = sub_22891CBE4(MEMORY[0x277D84F90]);
  }

  else
  {
    memcpy(v63, v64, sizeof(v63));
    v56 = sub_22890A0D4();
  }

  v57 = v56;
  v58 = v69;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v63[0] = v58;
  sub_2288D3108(v57, sub_2288D1B9C, 0, v59, v63);

  return v63[0];
}

unint64_t sub_2288D3BBC()
{
  result = qword_2813DED68;
  if (!qword_2813DED68)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2813DED68);
  }

  return result;
}

uint64_t sub_2288D3C20(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2288D3C38(uint64_t a1, uint64_t a2)
{
  sub_2288BBFAC(0, &qword_2813DFEE0, MEMORY[0x277CC9578]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2288D3CB8(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 >= 2)
  {
    v2 = ((v1 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v2 = -2;
  }

  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

unint64_t sub_2288D3CE8()
{
  result = qword_27D85B3C8;
  if (!qword_27D85B3C8)
  {
    sub_2288BC0FC(255, &qword_2813DEB50, 0x277CCABB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D85B3C8);
  }

  return result;
}

uint64_t sub_2288D3D58(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_2288D3DBC()
{
  if (!qword_2813DED50)
  {
    sub_2288D3BBC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2813DED50);
    }
  }
}

uint64_t sub_2288D3E28(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2288D3EC4(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_2288BF214(255, a3, a4);
    v5 = sub_22892F498();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2288D3F1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2288D3F84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2288D3FEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2288D404C(uint64_t a1)
{
  sub_2288D3EC4(0, &qword_2813DE900, &qword_2813DE910, MEMORY[0x277D100B8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2288D40CC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2288BBFAC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2288D4128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HealthBalanceDailyAnalyticsEvent.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HealthBalanceDailyAnalyticsEvent.Error(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2288D42DC()
{
  result = qword_27D85B3D8;
  if (!qword_27D85B3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D85B3D8);
  }

  return result;
}

void sub_2288D4334()
{
  sub_2288BC0C8(319);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

uint64_t sub_2288D43C4@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_22892DF58();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = a1[1];
  v13 = [a2 queryUUID];
  sub_22892DF38();

  v14 = sub_22892DF18();
  (*(v7 + 8))(v10, v6);
  v15 = HKDiagnosticStringFromUUID();

  v16 = sub_22892F0C8();
  v18 = v17;

  v21 = v16;
  v22 = v18;
  MEMORY[0x22AAC3770](10272, 0xE200000000000000);
  MEMORY[0x22AAC3770](v11, v12);
  result = MEMORY[0x22AAC3770](41, 0xE100000000000000);
  v20 = v22;
  *a3 = v21;
  a3[1] = v20;
  return result;
}

uint64_t sub_2288D453C()
{
  v3 = v0 + 80;
  v2 = *(v0 + 80);
  v1 = *(v3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  return MEMORY[0x282168728](0, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_2288D45C4()
{
  swift_getObjCClassMetadata();
  sub_2288D453C();

  return swift_getObjCClassFromMetadata();
}

id sub_2288D45FC()
{
  ObjectType = swift_getObjectType();
  v2 = sub_22892EDE8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22892EDC8();
  v7 = v0;
  v8 = sub_22892EDD8();
  v9 = sub_22892F398();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v31 = v11;
    *v10 = 136446466;
    v12 = sub_22892F948();
    v14 = sub_2288B748C(v12, v13, &v31);
    v30 = v2;
    v15 = ObjectType;
    v16 = v14;

    *(v10 + 4) = v16;
    *(v10 + 12) = 2082;
    v17 = sub_2288B770C();
    v19 = sub_2288B748C(v17, v18, &v31);

    *(v10 + 14) = v19;
    ObjectType = v15;
    _os_log_impl(&dword_2288B2000, v8, v9, "[%{public}s:%{public}s] Query stopped", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAC47E0](v11, -1, -1);
    MEMORY[0x22AAC47E0](v10, -1, -1);

    (*(v3 + 8))(v6, v30);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  v20 = [v7 profile];
  if (v20)
  {
    v21 = v20;
    v22 = sub_2288B79A4();
    v24 = v23;

    if (v22)
    {
      v25 = [v7 configuration];
      v26 = [v25 shouldDeactivateAfterInitialResults];

      if (v26)
      {
        swift_unknownObjectRelease();
      }

      else
      {
        v27 = swift_getObjectType();
        v28 = (*(v24 + 8))(v27, v24);
        sub_2288E1C68(v7, v28);
        swift_unknownObjectRelease();
      }
    }
  }

  v32.receiver = v7;
  v32.super_class = ObjectType;
  return objc_msgSendSuper2(&v32, sel__queue_stop);
}

void sub_2288D48EC(void *a1)
{
  v1 = a1;
  sub_2288D45FC();
}

uint64_t sub_2288D4934()
{
  v1 = [v0 configuration];
  v2 = [v1 shouldDeactivateAfterInitialResults];

  return v2 ^ 1;
}

uint64_t sub_2288D4984(void *a1)
{
  v1 = a1;
  v2 = sub_2288D4934();

  return v2 & 1;
}

void sub_2288D49B8()
{
  swift_getObjectType();
  v1 = sub_22892EDE8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 profile];
  if (v6)
  {
    v7 = v6;
    v8 = sub_2288B7894();
    if (v8)
    {
      v9 = v8;
      v10 = sub_2288B5C2C();
      if (v10)
      {
        v23 = v10;
        sub_2288B8230(v7, v9);

        swift_unknownObjectRelease();
        v11 = v23;

        return;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  sub_22892EDC8();
  v12 = v0;
  v13 = sub_22892EDD8();
  v14 = sub_22892F378();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v24 = v16;
    *v15 = 136446466;
    v17 = sub_22892F948();
    v19 = sub_2288B748C(v17, v18, &v24);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    v20 = sub_2288B770C();
    v22 = sub_2288B748C(v20, v21, &v24);

    *(v15 + 14) = v22;
    _os_log_impl(&dword_2288B2000, v13, v14, "[%{public}s:%{public}s] Unable to requery data due to unexpected configuration", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAC47E0](v16, -1, -1);
    MEMORY[0x22AAC47E0](v15, -1, -1);
  }

  (*(v2 + 8))(v5, v1);
}

void sub_2288D4C50(uint64_t a1)
{
  v2 = v1;
  v65 = a1;
  ObjectType = swift_getObjectType();
  v3 = sub_22892EDE8();
  v67 = *(v3 - 8);
  v68 = v3;
  v4 = *(v67 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v64 = &v63 - v9;
  MEMORY[0x28223BE20](v8);
  v63 = &v63 - v10;
  sub_2288BC0C8(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SleepingSampleCacheRange();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22892EE28();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = (&v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v24 = [v1 queryQueue];
  (*(v21 + 104))(v24, *MEMORY[0x277D85200], v20);
  v25 = sub_22892EE38();
  (*(v21 + 8))(v24, v20);
  if (v25)
  {
    v26 = qword_2813DF4E0;
    swift_beginAccess();
    sub_2288BFF8C(v2 + v26, v14, sub_2288BC0C8);
    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {
      sub_2288BA76C(v14, sub_2288BC0C8);
      sub_22892EDC8();
      v27 = v2;
      v28 = sub_22892EDD8();
      v29 = sub_22892F398();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v69 = v31;
        *v30 = 136446466;
        v32 = sub_22892F948();
        v34 = sub_2288B748C(v32, v33, &v69);

        *(v30 + 4) = v34;
        *(v30 + 12) = 2082;
        v35 = sub_2288B770C();
        v37 = sub_2288B748C(v35, v36, &v69);

        *(v30 + 14) = v37;
        _os_log_impl(&dword_2288B2000, v28, v29, "[%{public}s:%{public}s] Requerying data for client for samples added (no cache range)", v30, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AAC47E0](v31, -1, -1);
        MEMORY[0x22AAC47E0](v30, -1, -1);
      }

      (*(v67 + 8))(v7, v68);
      sub_2288D49B8();
    }

    else
    {
      v38 = v19;
      sub_2288C0074(v14, v19, type metadata accessor for SleepingSampleCacheRange);
      if (sub_2288CD2A4(v65))
      {
        v39 = v63;
        sub_22892EDC8();
        v40 = v2;
        v41 = sub_22892EDD8();
        v42 = sub_22892F398();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v69 = v44;
          *v43 = 136446466;
          v45 = sub_22892F948();
          v47 = sub_2288B748C(v45, v46, &v69);

          *(v43 + 4) = v47;
          *(v43 + 12) = 2082;
          v48 = sub_2288B770C();
          v50 = sub_2288B748C(v48, v49, &v69);

          *(v43 + 14) = v50;
          _os_log_impl(&dword_2288B2000, v41, v42, "[%{public}s:%{public}s] Requerying data for client for samples added (cache range impacted)", v43, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x22AAC47E0](v44, -1, -1);
          MEMORY[0x22AAC47E0](v43, -1, -1);
        }

        (*(v67 + 8))(v39, v68);
        sub_2288D49B8();
      }

      else
      {
        v51 = v64;
        sub_22892EDC8();
        v52 = v2;
        v53 = sub_22892EDD8();
        v54 = sub_22892F368();

        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v69 = v56;
          *v55 = 136446466;
          v57 = sub_22892F948();
          v59 = sub_2288B748C(v57, v58, &v69);

          *(v55 + 4) = v59;
          *(v55 + 12) = 2082;
          v60 = sub_2288B770C();
          v62 = sub_2288B748C(v60, v61, &v69);

          *(v55 + 14) = v62;
          _os_log_impl(&dword_2288B2000, v53, v54, "[%{public}s:%{public}s] Ignoring samples added (not in cache range)", v55, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x22AAC47E0](v56, -1, -1);
          MEMORY[0x22AAC47E0](v55, -1, -1);
        }

        (*(v67 + 8))(v51, v68);
      }

      sub_2288BA76C(v38, type metadata accessor for SleepingSampleCacheRange);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_2288D5394()
{
  swift_getObjectType();
  v1 = sub_22892EDE8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22892EE28();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = (&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v10 = [v0 queryQueue];
  (*(v7 + 104))(v10, *MEMORY[0x277D85200], v6);
  v11 = sub_22892EE38();
  (*(v7 + 8))(v10, v6);
  if (v11)
  {
    sub_22892EDC8();
    v12 = v0;
    v13 = sub_22892EDD8();
    v14 = sub_22892F398();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v24 = v16;
      *v15 = 136446466;
      v17 = sub_22892F948();
      v19 = sub_2288B748C(v17, v18, &v24);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2082;
      v20 = sub_2288B770C();
      v22 = sub_2288B748C(v20, v21, &v24);

      *(v15 + 14) = v22;
      _os_log_impl(&dword_2288B2000, v13, v14, "[%{public}s:%{public}s] Requerying data for client for samples removed", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAC47E0](v16, -1, -1);
      MEMORY[0x22AAC47E0](v15, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
    sub_2288D49B8();
  }

  else
  {
    __break(1u);
  }
}

void sub_2288D5680(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  swift_unknownObjectRetain();
  v6 = a1;
  sub_2288D6E34(a4);
  swift_unknownObjectRelease();
}

id sub_2288D56F4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v9 = sub_22892DF58();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22892DF38();
  v13 = a4;
  v14 = a5;
  swift_unknownObjectRetain();
  v15 = sub_2288D7128(v12, a4, v14, a6);

  swift_unknownObjectRelease();
  return v15;
}

id sub_2288D57D8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2288D58B0@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v2 = sub_22892E048();
  v37 = *(v2 - 8);
  v38 = v2;
  v3 = *(v37 + 64);
  MEMORY[0x28223BE20](v2);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_22892EFA8();
  v40 = *(v35 - 8);
  v5 = *(v40 + 64);
  MEMORY[0x28223BE20](v35);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288B5D1C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22892E478();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = MEMORY[0x28223BE20](v12);
  v32 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v30 - v17;
  v19 = sub_22892DDC8();
  v33 = *(v19 - 8);
  v34 = v19;
  v20 = *(v33 + 64);
  MEMORY[0x28223BE20](v19);
  v31 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = OBJC_IVAR____TtC19HealthBalanceDaemon43SleepingSampleAggregateDaySummaryEnumerator_gregorianDayRange;
  v30 = v1;
  swift_beginAccess();
  v23 = v13[2];
  v23(v18, v1 + v22, v12);
  sub_22892E438();
  v24 = v13[1];
  v24(v18, v12);
  v25 = v35;
  (*(v40 + 16))(v7, v11, v35);
  sub_2288BA76C(v11, sub_2288B5D1C);
  v26 = v32;
  v23(v32, v30 + v22, v12);
  v27 = v36;
  sub_22892E468();
  v24(v26, v12);
  v28 = v31;
  sub_22892EEC8();
  (*(v37 + 8))(v27, v38);
  (*(v40 + 8))(v7, v25);
  sub_22892DD98();
  return (*(v33 + 8))(v28, v34);
}

uint64_t sub_2288D5C98@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = *v2;
  a2[3] = a1;
  a2[4] = sub_2288C1090(&qword_2813DF0F8, type metadata accessor for SleepingSampleAggregateDaySummaryEnumerator);
  *a2 = v4;
}

uint64_t sub_2288D5D34(uint64_t a1)
{
  result = sub_2288C1090(&unk_2813DF1A0, sub_2288BABAC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2288D5DD4(uint64_t a1)
{
  result = sub_2288C1090(&qword_2813DF0F8, type metadata accessor for SleepingSampleAggregateDaySummaryEnumerator);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2288D5E2C(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v23 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22892F588())
  {
    v8 = 0;
    v20 = v4 & 0xFFFFFFFFFFFFFF8;
    v21 = v4 & 0xC000000000000001;
    v19 = v4;
    while (1)
    {
      if (v21)
      {
        v9 = MEMORY[0x22AAC3CC0](v8, v4);
      }

      else
      {
        if (v8 >= *(v20 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v22 = v9;
      v12 = a2;
      v13 = a1(&v22);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        sub_22892F6A8();
        v14 = i;
        v15 = a1;
        v16 = a2;
        v17 = *(v23 + 16);
        sub_22892F6D8();
        a2 = v16;
        a1 = v15;
        i = v14;
        v4 = v19;
        sub_22892F6E8();
        sub_22892F6B8();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v23;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_20:

  return v12;
}

char *sub_2288D605C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_2288B5CB8(0, &qword_27D85B3F0, sub_2288D6B8C, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_2288D6184(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_2288D726C(0, &qword_2813DE9A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

size_t sub_2288D6310(size_t result, int64_t a2, char a3, void *a4, void (*a5)(void), uint64_t (*a6)(void))
{
  v8 = result;
  if (a3)
  {
    v9 = a4[3];
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = a4[2];
  if (v10 <= v11)
  {
    v12 = a4[2];
  }

  else
  {
    v12 = v10;
  }

  if (!v12)
  {
    v16 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  a5(0);
  v13 = *(a6(0) - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v16);
  if (!v14)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v15 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_29;
  }

  v16[2] = v11;
  v16[3] = 2 * ((result - v15) / v14);
LABEL_19:
  v18 = *(a6(0) - 8);
  if (v8)
  {
    if (v16 < a4 || (v19 = (*(v18 + 80) + 32) & ~*(v18 + 80), v16 + v19 >= a4 + v19 + *(v18 + 72) * v11))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v16 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v16;
}

size_t sub_2288D64EC(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_2288C101C();
  sub_2288BF214(0, &qword_2813DE920, MEMORY[0x277D0FFC8]);
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  sub_2288BF214(0, &qword_2813DE920, MEMORY[0x277D0FFC8]);
  v16 = *(v15 - 8);
  if (v5)
  {
    if (v13 < a4 || (v17 = (*(v16 + 80) + 32) & ~*(v16 + 80), v13 + v17 >= a4 + v17 + *(v16 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_2288D6714(char *a1, int64_t a2, char a3)
{
  result = sub_2288D67C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2288D6734(size_t a1, int64_t a2, char a3)
{
  result = sub_2288D68E0(a1, a2, a3, *v3, sub_2288D6AF0, sub_2288D6B24);
  *v3 = result;
  return result;
}

char *sub_2288D677C(char *a1, int64_t a2, char a3)
{
  result = sub_2288D6C4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2288D67C8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_2288D726C(0, &qword_2813DE950);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_2288D68E0(size_t result, int64_t a2, char a3, void *a4, void (*a5)(void), uint64_t (*a6)(void))
{
  v8 = result;
  if (a3)
  {
    v9 = a4[3];
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = a4[2];
  if (v10 <= v11)
  {
    v12 = a4[2];
  }

  else
  {
    v12 = v10;
  }

  if (!v12)
  {
    v16 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  a5(0);
  v13 = *(a6(0) - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v16);
  if (!v14)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v15 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_29;
  }

  v16[2] = v11;
  v16[3] = 2 * ((result - v15) / v14);
LABEL_19:
  v18 = *(a6(0) - 8);
  if (v8)
  {
    if (v16 < a4 || (v19 = (*(v18 + 80) + 32) & ~*(v18 + 80), v16 + v19 >= a4 + v19 + *(v18 + 72) * v11))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v16 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v16;
}

void sub_2288D6B24()
{
  if (!qword_2813DEDD0)
  {
    sub_22892EFA8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2813DEDD0);
    }
  }
}

void sub_2288D6B8C()
{
  if (!qword_27D85B3F8)
  {
    v0 = sub_22892F348();
    if (!v1)
    {
      atomic_store(v0, &qword_27D85B3F8);
    }
  }
}

char *sub_2288D6C4C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_2288D726C(0, &unk_2813DE9C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_2288D6D64()
{
  if (!qword_2813DEB20)
  {
    sub_2288BC0FC(255, &qword_2813DEB30, 0x277D82BB8);
    v0 = sub_22892F498();
    if (!v1)
    {
      atomic_store(v0, &qword_2813DEB20);
    }
  }
}

void sub_2288D6E34(char a1)
{
  swift_getObjectType();
  v3 = sub_22892EDE8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22892EE28();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v12 = [v1 queryQueue];
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  v13 = sub_22892EE38();
  (*(v9 + 8))(v12, v8);
  if (v13)
  {
    if (a1)
    {
      sub_22892EDC8();
      v14 = v1;
      v15 = sub_22892EDD8();
      v16 = sub_22892F398();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v26 = v18;
        *v17 = 136446466;
        v19 = sub_22892F948();
        v21 = sub_2288B748C(v19, v20, &v26);

        *(v17 + 4) = v21;
        *(v17 + 12) = 2082;
        v22 = sub_2288B770C();
        v24 = sub_2288B748C(v22, v23, &v26);

        *(v17 + 14) = v24;
        _os_log_impl(&dword_2288B2000, v15, v16, "[%{public}s:%{public}s] Requerying data for client for protected data availability", v17, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AAC47E0](v18, -1, -1);
        MEMORY[0x22AAC47E0](v17, -1, -1);
      }

      (*(v4 + 8))(v7, v3);
      sub_2288D49B8();
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_2288D7128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = qword_2813DF4E0;
  v12 = type metadata accessor for SleepingSampleCacheRange();
  (*(*(v12 - 8) + 56))(&v5[v11], 1, 1, v12);
  v13 = sub_22892DF18();
  v17.receiver = v5;
  v17.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v17, sel_initWithUUID_configuration_client_delegate_, v13, a2, a3, a4);

  v15 = sub_22892DF58();
  (*(*(v15 - 8) + 8))(a1, v15);
  return v14;
}

void sub_2288D726C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_22892F7F8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_2288D72B8(uint64_t a1, void *a2)
{
  v3 = v2;
  v93 = a2;
  v94 = a1;
  sub_2288B6CB4(0, &qword_2813DFEA8, MEMORY[0x277CC9A70]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v90 = &v79 - v6;
  sub_2288B6CB4(0, &qword_2813DFEB0, MEMORY[0x277CC99E8]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v81 = &v79 - v9;
  v87 = sub_22892DE18();
  v85 = *(v87 - 8);
  v10 = *(v85 + 64);
  MEMORY[0x28223BE20](v87);
  v83 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_22892E048();
  v12 = *(v80 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v80);
  v15 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22892EFA8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288B5D1C();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_22892DDC8();
  v26 = *(v25 - 8);
  v95 = v25;
  v96 = v26;
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v84 = &v79 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = &v79 - v30;
  v32 = sub_22892DEF8();
  v91 = *(v32 - 8);
  v92 = v32;
  v33 = *(v91 + 64);
  v34 = MEMORY[0x28223BE20](v32);
  v82 = &v79 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v37 = &v79 - v36;
  sub_2288BC0FC(0, &qword_2813DEC40, 0x277CCD830);
  v38 = MEMORY[0x22AAC3A10](*MEMORY[0x277CCC938]);
  v79 = v2;
  *(v2 + 16) = v38;
  v39 = OBJC_IVAR____TtC19HealthBalanceDaemon43SleepingWristTemperatureAggregateEnumerator_gregorianDayRange;
  v40 = sub_22892E478();
  v88 = *(v40 - 8);
  v89 = v40;
  (*(v88 + 16))(v3 + v39, v94);
  sub_22892E438();
  (*(v17 + 16))(v20, v24, v16);
  sub_2288BA7CC(v24, sub_2288B5D1C);
  sub_22892E468();
  sub_22892EEC8();
  v41 = v80;
  (*(v12 + 8))(v15, v80);
  (*(v17 + 8))(v20, v16);
  sub_22892DD98();
  v42 = *(v96 + 8);
  v96 += 8;
  v86 = v42;
  v42(v31, v95);
  v43 = v81;
  sub_22892E468();
  (*(v12 + 56))(v43, 0, 1, v41);
  v44 = sub_22892E058();
  (*(*(v44 - 8) + 56))(v90, 1, 1, v44);
  v45 = v83;
  sub_22892DE08();
  v46 = objc_allocWithZone(MEMORY[0x277CCDD78]);
  v90 = v37;
  v47 = v79;
  v48 = sub_22892DE58();
  v49 = sub_22892DDD8();
  v50 = [v46 initWithAnchorDate:v48 intervalComponents:v49];

  (*(v85 + 8))(v45, v87);
  *(v47 + OBJC_IVAR____TtC19HealthBalanceDaemon43SleepingWristTemperatureAggregateEnumerator_intervalCollection) = v50;
  v51 = *(v47 + 16);
  v52 = v50;
  v53 = v51;
  v54 = _HKStatisticsOptionBaselineRelativeQuantities();
  v55 = [objc_opt_self() calculatorForQuantityType:v53 intervalCollection:v52 options:v54 | 0x22 mergeStrategy:0 computationMethod:1];

  v56 = OBJC_IVAR____TtC19HealthBalanceDaemon43SleepingWristTemperatureAggregateEnumerator_calculator;
  *(v47 + OBJC_IVAR____TtC19HealthBalanceDaemon43SleepingWristTemperatureAggregateEnumerator_calculator) = v55;
  v57 = v82;
  sub_22892DED8();
  v58 = *(v47 + 16);
  v59 = v84;
  sub_22892E418();
  sub_2288DA918();
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_2289315C0;
  v61 = HDSampleEntityPredicateForDataType();
  v62 = sub_2288BC0FC(0, &qword_2813DEC18, 0x277D10B70);
  *(v60 + 56) = v62;
  *(v60 + 32) = v61;
  v63 = sub_22892DD58();
  v64 = HDSampleEntityPredicateForDateInterval();

  *(v60 + 88) = v62;
  *(v60 + 64) = v64;
  v65 = sub_22892F208();

  v66 = [objc_opt_self() predicateMatchingAllPredicates_];

  v67 = v66;
  v68 = HKRollingBaselineConfigurationForQuantityType();
  v69 = objc_allocWithZone(MEMORY[0x277D108B0]);
  v70 = v57;
  v71 = sub_22892DE58();
  v72 = v93;
  v73 = [v69 initForProfile:v93 quantityType:v58 predicate:v67 restrictedSourceEntities:0 configuration:v68 currentDate:v71];

  v86(v59, v95);
  *(v47 + OBJC_IVAR____TtC19HealthBalanceDaemon43SleepingWristTemperatureAggregateEnumerator_dataSource) = v73;
  [*(v47 + v56) setDataSource_];
  v74 = [objc_allocWithZone(MEMORY[0x277D108A8]) initWithProfile:v72 quantityType:*(v47 + 16)];
  *(v47 + OBJC_IVAR____TtC19HealthBalanceDaemon43SleepingWristTemperatureAggregateEnumerator_sourceOrderProvider) = v74;
  v75 = *(v47 + OBJC_IVAR____TtC19HealthBalanceDaemon43SleepingWristTemperatureAggregateEnumerator_calculator);
  if (v75)
  {
    [v75 setSourceOrderProvider_];
  }

  (*(v88 + 8))(v94, v89);
  v76 = v92;
  v77 = *(v91 + 8);
  v77(v70, v92);
  v77(v90, v76);
  return v47;
}

uint64_t sub_2288D7C3C()
{
  v1 = OBJC_IVAR____TtC19HealthBalanceDaemon43SleepingWristTemperatureAggregateEnumerator_gregorianDayRange;
  v2 = sub_22892E478();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC19HealthBalanceDaemon43SleepingWristTemperatureAggregateEnumerator_dataSource);
  swift_unknownObjectRelease();

  v4 = *(*v0 + 12);
  v5 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SleepingWristTemperatureAggregateEnumerator()
{
  result = qword_2813DF008;
  if (!qword_2813DF008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2288D7D74()
{
  result = sub_22892E478();
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

unint64_t sub_2288D7E74()
{
  result = qword_2813DF020;
  if (!qword_2813DF020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813DF020);
  }

  return result;
}

uint64_t sub_2288D7EC8()
{
  v1 = v0;
  aBlock[8] = *MEMORY[0x277D85DE8];
  sub_2288B5D1C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v87 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22892ED78();
  v85 = *(v5 - 8);
  v86 = v5;
  v6 = *(v85 + 64);
  MEMORY[0x28223BE20](v5);
  v84 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22892ED38();
  v93 = *(v8 - 8);
  v94 = v8;
  v9 = *(v93 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v95 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v89 = &v83 - v13;
  MEMORY[0x28223BE20](v12);
  v88 = &v83 - v14;
  v15 = sub_22892DE18();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22892DEF8();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_22892EDE8();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = sub_22892ED68();
  v91 = *(v27 - 8);
  v92 = v27;
  v28 = *(v91 + 64);
  MEMORY[0x28223BE20](v27);
  v30 = &v83 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22892EDC8();
  v96 = v30;
  sub_22892ED48();
  v31 = *(v0 + OBJC_IVAR____TtC19HealthBalanceDaemon43SleepingWristTemperatureAggregateEnumerator_intervalCollection);
  v32 = [v31 anchorDate];
  sub_22892DEC8();

  v33 = [v31 intervalComponents];
  sub_22892DDE8();

  v34 = objc_allocWithZone(MEMORY[0x277CCDA58]);
  v35 = sub_22892DE58();
  v36 = sub_22892DDD8();
  v37 = [v34 initWithAnchorDate:v35 statisticsInterval:v36];

  (*(v16 + 8))(v19, v15);
  (*(v21 + 8))(v24, v20);
  v38 = v1;
  v39 = *(v1 + OBJC_IVAR____TtC19HealthBalanceDaemon43SleepingWristTemperatureAggregateEnumerator_calculator);
  if (v39)
  {
    v40 = swift_allocObject();
    v40[2] = v37;
    aBlock[4] = sub_2288D9FE0;
    aBlock[5] = v40;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2288D88A4;
    aBlock[3] = &block_descriptor;
    v41 = _Block_copy(aBlock);
    v42 = v37;

    [v39 setStatisticsHandler_];
    _Block_release(v41);
  }

  v90 = v37;
  v43 = v88;
  sub_22892ED28();
  v44 = sub_22892ED58();
  v45 = sub_22892F428();
  if (sub_22892F478())
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    v47 = sub_22892ED18();
    _os_signpost_emit_with_name_impl(&dword_2288B2000, v44, v45, v47, "SleepingWristTemperatureAggregateEnumerator", "", v46, 2u);
    MEMORY[0x22AAC47E0](v46, -1, -1);
  }

  v48 = v93;
  v49 = v94;
  (*(v93 + 16))(v89, v43, v94);
  v50 = sub_22892EDA8();
  v51 = *(v50 + 48);
  v52 = *(v50 + 52);
  swift_allocObject();
  sub_22892ED98();
  v53 = *(v48 + 8);
  v53(v43, v49);
  if (v39)
  {
    aBlock[0] = 0;
    if (![v39 queryForInitialStatisticsWithError_])
    {
      v62 = aBlock[0];
      v63 = sub_22892DE38();

      swift_willThrow();

      aBlock[0] = v63;
      sub_2288CA734();
      sub_2288BC0FC(0, &qword_27D85B098, 0x277CCA9B8);
      swift_dynamicCast();
      (*(v91 + 8))(v96, v92);

      v64 = aBlock[6];
      v65 = swift_allocObject();
      *(v65 + 16) = v64;
      sub_2288D9E48();
      v66 = swift_allocObject();
      *(v66 + 16) = sub_2288D9FD8;
      *(v66 + 24) = v65;

      goto LABEL_15;
    }

    v54 = aBlock[0];
  }

  v55 = sub_22892ED58();
  v56 = v95;
  sub_22892ED88();
  v57 = sub_22892F418();
  if (sub_22892F478())
  {

    v58 = v84;
    sub_22892EDB8();

    v60 = v85;
    v59 = v86;
    if ((*(v85 + 88))(v58, v86) == *MEMORY[0x277D85B00])
    {
      v61 = "[Error] Interval already ended";
    }

    else
    {
      (*(v60 + 8))(v58, v59);
      v61 = "";
    }

    v67 = swift_slowAlloc();
    *v67 = 0;
    v68 = v95;
    v69 = sub_22892ED18();
    _os_signpost_emit_with_name_impl(&dword_2288B2000, v55, v57, v69, "SleepingWristTemperatureAggregateEnumerator", v61, v67, 2u);
    MEMORY[0x22AAC47E0](v67, -1, -1);
    v56 = v68;
  }

  v53(v56, v49);
  sub_2288C3FDC();
  v71 = v70;
  v72 = swift_allocBox();
  v74 = v73;
  v75 = v87;
  sub_22892E438();
  (*(v91 + 8))(v96, v92);
  sub_2288BB590(v75, v74, sub_2288B5D1C);
  v76 = *(v71 + 36);
  v77 = sub_22892EFA8();
  v78 = *(v77 - 8);
  (*(v78 + 16))(v74 + v76, v75, v77);
  sub_2288BA7CC(v75, sub_2288B5D1C);
  (*(v78 + 56))(v74 + v76, 0, 1, v77);
  v79 = swift_allocObject();
  v80 = v90;
  v79[2] = v72;
  v79[3] = v80;
  v79[4] = v38;
  sub_2288D9E48();
  v66 = swift_allocObject();
  *(v66 + 16) = sub_2288D9E3C;
  *(v66 + 24) = v79;

LABEL_15:
  v81 = *MEMORY[0x277D85DE8];
  return v66;
}

void sub_2288D88A4(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, v7);
}

id sub_2288D8928@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a1;
  sub_2288D9EFC(0, &qword_2813DE930, MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = [v14 hk_isDatabaseAccessibilityError];
  *v6 = v14;
  v6[8] = v7;
  v8 = MEMORY[0x277D0FF90];
  sub_2288DA96C(0, &qword_2813DE938, MEMORY[0x277D0FF90], sub_2288D7E74);
  v10 = v9;
  swift_storeEnumTagMultiPayload();
  sub_2288DA96C(0, &qword_2813DE938, v8, sub_2288D7E74);
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  sub_2288DA004(v6, a2);
  v11 = v14;

  return v11;
}

uint64_t sub_2288D8AB8@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v97 = a2;
  v86 = a1;
  v93 = a3;
  v79 = sub_22892E538();
  v78 = *(v79 - 8);
  v3 = *(v78 + 64);
  MEMORY[0x28223BE20](v79);
  v77 = &v73[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2288B6CB4(0, &qword_2813DFEE0, MEMORY[0x277CC9578]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v76 = &v73[-v7];
  sub_2288B6CB4(0, &qword_2813DFEF0, MEMORY[0x277CC88A8]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v75 = &v73[-v10];
  v11 = sub_22892DEF8();
  v84 = *(v11 - 8);
  v85 = v11;
  v12 = *(v84 + 64);
  MEMORY[0x28223BE20](v11);
  v81 = &v73[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v91 = sub_22892E048();
  v100 = *(v91 - 8);
  v14 = *(v100 + 64);
  MEMORY[0x28223BE20](v91);
  v94 = &v73[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v83 = sub_22892DDC8();
  v82 = *(v83 - 8);
  v16 = *(v82 + 64);
  MEMORY[0x28223BE20](v83);
  v80 = &v73[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2288C3774();
  v19 = v18 - 8;
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v73[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2288C36E0();
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v87 = &v73[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = MEMORY[0x28223BE20](v25);
  v90 = &v73[-v28];
  v29 = MEMORY[0x28223BE20](v27);
  v96 = &v73[-v30];
  MEMORY[0x28223BE20](v29);
  v32 = &v73[-v31];
  sub_2288B6CB4(0, &unk_2813DEDE0, MEMORY[0x277CCB6A8]);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v98 = &v73[-v35];
  v36 = sub_22892EFA8();
  v37 = *(v36 - 8);
  v38 = v37[8];
  v39 = MEMORY[0x28223BE20](v36);
  v88 = &v73[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v39);
  v99 = &v73[-v41];
  sub_2288C3FDC();
  v43 = v42;
  v44 = swift_projectBox();
  swift_beginAccess();
  v45 = *(v43 + 36);
  v92 = v37[7];
  (v92)(v32, 1, 1, v36);
  v46 = *(v19 + 56);
  v47 = v37;
  v89 = v45;
  sub_2288BB590(v44 + v45, v22, sub_2288C36E0);
  sub_2288BB590(v32, &v22[v46], sub_2288C36E0);
  v48 = v37[6];
  v49 = v48(v22, 1, v36);
  v95 = v47;
  if (v49 == 1)
  {
    sub_2288BA7CC(v32, sub_2288C36E0);
    if (v48(&v22[v46], 1, v36) == 1)
    {
      v50 = v94;
LABEL_9:
      sub_2288BA7CC(v22, sub_2288C36E0);
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  sub_2288BB590(v22, v96, sub_2288C36E0);
  if (v48(&v22[v46], 1, v36) == 1)
  {
    sub_2288BA7CC(v32, sub_2288C36E0);
    (v47[1])(v96, v36);
LABEL_6:
    sub_2288BA7CC(v22, sub_2288C3774);
    v50 = v94;
LABEL_7:
    v52 = v89;
    v51 = v90;
    sub_2288BB590(v44 + v89, v90, sub_2288C36E0);
    result = v48(v51, 1, v36);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    (v95[4])(v98, v51, v36);
    v22 = v87;
    sub_2288DA084(v44 + v52, v87);
    sub_2288C37D8(v22, v44 + v52);
    goto LABEL_9;
  }

  v69 = v88;
  (v47[4])(v88, &v22[v46], v36);
  sub_2288BA948(&unk_2813DEE10);
  v74 = sub_22892F088();
  v70 = v47[1];
  v70(v69, v36);
  sub_2288BA7CC(v32, sub_2288C36E0);
  v70(v96, v36);
  sub_2288BA7CC(v22, sub_2288C36E0);
  v50 = v94;
  if ((v74 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_10:
  v54 = v99;
  v55 = v100;
  v56 = v98;
  v92();
  swift_endAccess();
  if (v48(v56, 1, v36) == 1)
  {
    sub_2288C3620(v56, &unk_2813DEDE0, MEMORY[0x277CCB6A8], sub_2288B6CB4);
    sub_2288DA96C(0, &qword_2813DE938, MEMORY[0x277D0FF90], sub_2288D7E74);
    return (*(*(v57 - 8) + 56))(v93, 1, 1, v57);
  }

  else
  {
    v58 = v95;
    (v95[4])(v54, v56, v36);
    sub_22892E468();
    v59 = v80;
    sub_22892EEC8();
    v98 = *(v55 + 8);
    v100 = v55 + 8;
    v98(v50, v91);
    v60 = v81;
    sub_22892DD98();
    v61 = v82;
    v62 = v83;
    (*(v82 + 8))(v59, v83);
    v63 = sub_22892DE58();
    v65 = v84;
    v64 = v85;
    (*(v84 + 8))(v60, v85);
    v66 = [v86 statisticsForDate_];

    if (v66)
    {
      sub_22892E468();
      v67 = v93;
      v68 = v99;
      sub_2288C8DE0(v66, v99, v50, 1, 1, 1, v93);

      v98(v50, v91);
      (v58[1])(v68, v36);
    }

    else
    {
      (v58[2])(v88, v99, v36);
      sub_22892E468();
      (*(v61 + 56))(v75, 1, 1, v62);
      (*(v65 + 56))(v76, 1, 1, v64);
      (*(v78 + 104))(v77, *MEMORY[0x277D0FF70], v79);
      v67 = v93;
      sub_22892E568();
      (v58[1])(v99, v36);
    }

    sub_2288DA96C(0, &qword_2813DE938, MEMORY[0x277D0FF90], sub_2288D7E74);
    v72 = v71;
    swift_storeEnumTagMultiPayload();
    return (*(*(v72 - 8) + 56))(v67, 0, 1, v72);
  }
}

uint64_t sub_2288D96DC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = sub_2288D7EC8();

  *a1 = v4;
  return result;
}

size_t sub_2288D972C()
{
  v1 = *v0;
  v2 = sub_2288DA0E8();

  return v2;
}

uint64_t sub_2288D9788(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_2288D9EFC(0, &qword_2813DE930, MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v20 - v8;
  sub_2288DA96C(0, &qword_2813DE938, MEMORY[0x277D0FF90], sub_2288D7E74);
  v25 = v10;
  v11 = *(v10 - 8);
  v12 = v11[8];
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v15 = sub_2288D7EC8();

  v17 = 0;
  if (!a2 || !a3)
  {
LABEL_12:
    *a1 = v15;
    return v17;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v22 = a1;
    sub_22892F7A8();
    v18 = v11[6];
    v24 = v11 + 6;
    if (v18(v9, 1, v25) == 1)
    {
      v17 = 0;
LABEL_9:
      sub_2288C3620(v9, &qword_2813DE930, MEMORY[0x277D83D88], sub_2288D9EFC);
    }

    else
    {
      v17 = 0;
      v21 = a3;
      v23 = a3 - 1;
      while (1)
      {
        v19 = MEMORY[0x277D0FF90];
        sub_2288C0D84(v9, v14, &qword_2813DE938, MEMORY[0x277D0FF90], sub_2288D7E74);
        sub_2288C0D84(v14, a2, &qword_2813DE938, v19, sub_2288D7E74);
        if (v23 == v17)
        {
          break;
        }

        a2 += v11[9];
        sub_22892F7A8();
        ++v17;
        if ((v11[6])(v9, 1, v25) == 1)
        {
          goto LABEL_9;
        }
      }

      v17 = v21;
    }

    a1 = v22;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_2288D9A58(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_2288DA9EC(0, &qword_2813DE900, MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v20 - v8;
  sub_2288DA96C(0, &qword_2813DE910, MEMORY[0x277D100B8], sub_2288B7AEC);
  v25 = v10;
  v11 = *(v10 - 8);
  v12 = v11[8];
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v15 = sub_2288E88F8();

  v17 = 0;
  if (!a2 || !a3)
  {
LABEL_12:
    *a1 = v15;
    return v17;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v22 = a1;
    sub_22892F7A8();
    v18 = v11[6];
    v24 = v11 + 6;
    if (v18(v9, 1, v25) == 1)
    {
      v17 = 0;
LABEL_9:
      sub_2288C3620(v9, &qword_2813DE900, MEMORY[0x277D83D88], sub_2288DA9EC);
    }

    else
    {
      v17 = 0;
      v21 = a3;
      v23 = a3 - 1;
      while (1)
      {
        v19 = MEMORY[0x277D100B8];
        sub_2288C0D84(v9, v14, &qword_2813DE910, MEMORY[0x277D100B8], sub_2288B7AEC);
        sub_2288C0D84(v14, a2, &qword_2813DE910, v19, sub_2288B7AEC);
        if (v23 == v17)
        {
          break;
        }

        a2 += v11[9];
        sub_22892F7A8();
        ++v17;
        if ((v11[6])(v9, 1, v25) == 1)
        {
          goto LABEL_9;
        }
      }

      v17 = v21;
    }

    a1 = v22;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

unint64_t sub_2288D9D4C()
{
  result = qword_2813DED80;
  if (!qword_2813DED80)
  {
    sub_2288B5D1C();
    sub_2288BA948(&unk_2813DEE00);
    sub_2288D9DE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813DED80);
  }

  return result;
}

unint64_t sub_2288D9DE8()
{
  result = qword_2813DEDB0;
  if (!qword_2813DEDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813DEDB0);
  }

  return result;
}

void sub_2288D9E48()
{
  if (!qword_2813DEAC8)
  {
    v0 = MEMORY[0x277D844A8];
    sub_2288D9EFC(255, &qword_2813DEA30, MEMORY[0x277D844A8]);
    sub_2288D9F94(&qword_2813DEA38, &qword_2813DEA30, v0);
    v1 = sub_22892F678();
    if (!v2)
    {
      atomic_store(v1, &qword_2813DEAC8);
    }
  }
}

void sub_2288D9EFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_2288DA96C(255, &qword_2813DE938, MEMORY[0x277D0FF90], sub_2288D7E74);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2288D9F94(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_2288D9EFC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2288DA004(uint64_t a1, uint64_t a2)
{
  sub_2288D9EFC(0, &qword_2813DE930, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2288DA084(uint64_t a1, uint64_t a2)
{
  sub_2288C36E0();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

size_t sub_2288DA0E8()
{
  sub_2288D9EFC(0, &qword_2813DE930, MEMORY[0x277D83D88]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v41 - v2;
  sub_2288DA96C(0, &qword_2813DE938, MEMORY[0x277D0FF90], sub_2288D7E74);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v41 - v8;
  v10 = *(v6 + 80);
  sub_2288D7EC8();
  sub_22892F7A8();
  v47 = *(v6 + 48);
  v48 = v5;
  v44 = v6 + 48;
  v11 = v47(v3, 1, v5);
  v12 = MEMORY[0x277D84F90];
  if (v11 != 1)
  {
    v13 = 0;
    v42 = v9;
    v43 = v10;
    v19 = &qword_2813DE938;
    v20 = &type metadata for SleepingWristTemperatureAggregateEnumerator.Error;
    v45 = (v10 + 32) & ~v10;
    v46 = v3;
    v21 = MEMORY[0x277D84F90] + v45;
    v22 = MEMORY[0x277D84F90];
    v41 = v6;
    while (1)
    {
      v25 = v3;
      v26 = v19;
      v27 = v20;
      result = sub_2288C0D84(v25, v9, v19, MEMORY[0x277D0FF90], sub_2288D7E74);
      if (v13)
      {
        v12 = v22;
        v17 = __OFSUB__(v13--, 1);
        if (v17)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v28 = v22[3];
        if (((v28 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_33;
        }

        v29 = v28 & 0xFFFFFFFFFFFFFFFELL;
        if (v29 <= 1)
        {
          v30 = 1;
        }

        else
        {
          v30 = v29;
        }

        sub_2288D9EFC(0, &unk_27D85B430, MEMORY[0x277D84560]);
        v31 = *(v6 + 72);
        v32 = v45;
        v12 = swift_allocObject();
        result = _swift_stdlib_malloc_size(v12);
        if (!v31)
        {
          goto LABEL_34;
        }

        v33 = result - v32;
        if (result - v32 == 0x8000000000000000 && v31 == -1)
        {
          goto LABEL_35;
        }

        v35 = v33 / v31;
        v12[2] = v30;
        v12[3] = 2 * (v33 / v31);
        v36 = v12 + v32;
        v37 = v22[3] >> 1;
        v38 = v37 * v31;
        if (v22[2])
        {
          if (v12 < v22 || v36 >= v22 + v45 + v38)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v12 != v22)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v22[2] = 0;
        }

        v21 = &v36[v38];
        v40 = (v35 & 0x7FFFFFFFFFFFFFFFLL) - v37;

        v6 = v41;
        v9 = v42;
        v17 = __OFSUB__(v40, 1);
        v13 = v40 - 1;
        if (v17)
        {
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
          return result;
        }
      }

      sub_2288C0D84(v9, v21, v26, MEMORY[0x277D0FF90], sub_2288D7E74);
      v21 += *(v6 + 72);
      v23 = v46;
      sub_22892F7A8();
      v24 = v47(v23, 1, v48);
      v20 = v27;
      v19 = v26;
      v3 = v23;
      v22 = v12;
      if (v24 == 1)
      {
        goto LABEL_3;
      }
    }
  }

  v13 = 0;
LABEL_3:

  result = sub_2288C3620(v3, &qword_2813DE930, MEMORY[0x277D83D88], sub_2288D9EFC);
  v15 = v12[3];
  if (v15 >= 2)
  {
    v16 = v15 >> 1;
    v17 = __OFSUB__(v16, v13);
    v18 = v16 - v13;
    if (v17)
    {
      goto LABEL_36;
    }

    v12[2] = v18;
  }

  return v12;
}

size_t sub_2288DA500()
{
  sub_2288DA9EC(0, &qword_2813DE900, MEMORY[0x277D83D88]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v41 - v2;
  sub_2288DA96C(0, &qword_2813DE910, MEMORY[0x277D100B8], sub_2288B7AEC);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v41 - v8;
  v10 = *(v6 + 80);
  sub_2288E88F8();
  sub_22892F7A8();
  v47 = *(v6 + 48);
  v48 = v5;
  v44 = v6 + 48;
  v11 = v47(v3, 1, v5);
  v12 = MEMORY[0x277D84F90];
  if (v11 != 1)
  {
    v13 = 0;
    v43 = v10;
    v19 = &qword_2813DE910;
    v20 = &type metadata for SleepingSampleDaySummarySequenceError;
    v45 = (v10 + 32) & ~v10;
    v46 = v3;
    v21 = MEMORY[0x277D84F90] + v45;
    v22 = MEMORY[0x277D84F90];
    v41 = v6;
    v42 = v9;
    while (1)
    {
      v25 = v3;
      v26 = v19;
      v27 = v20;
      result = sub_2288C0D84(v25, v9, v19, MEMORY[0x277D100B8], sub_2288B7AEC);
      if (v13)
      {
        v12 = v22;
        v17 = __OFSUB__(v13--, 1);
        if (v17)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v28 = v22[3];
        if (((v28 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_33;
        }

        v29 = v28 & 0xFFFFFFFFFFFFFFFELL;
        if (v29 <= 1)
        {
          v30 = 1;
        }

        else
        {
          v30 = v29;
        }

        sub_2288DA9EC(0, &unk_27D85B440, MEMORY[0x277D84560]);
        v31 = *(v6 + 72);
        v32 = v45;
        v12 = swift_allocObject();
        result = _swift_stdlib_malloc_size(v12);
        if (!v31)
        {
          goto LABEL_34;
        }

        v33 = result - v32;
        if (result - v32 == 0x8000000000000000 && v31 == -1)
        {
          goto LABEL_35;
        }

        v35 = v33 / v31;
        v12[2] = v30;
        v12[3] = 2 * (v33 / v31);
        v36 = v12 + v32;
        v37 = v22[3] >> 1;
        v38 = v37 * v31;
        if (v22[2])
        {
          if (v12 < v22 || v36 >= v22 + v45 + v38)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v12 != v22)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v22[2] = 0;
        }

        v21 = &v36[v38];
        v40 = (v35 & 0x7FFFFFFFFFFFFFFFLL) - v37;

        v6 = v41;
        v9 = v42;
        v17 = __OFSUB__(v40, 1);
        v13 = v40 - 1;
        if (v17)
        {
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
          return result;
        }
      }

      sub_2288C0D84(v9, v21, v26, MEMORY[0x277D100B8], sub_2288B7AEC);
      v21 += *(v6 + 72);
      v23 = v46;
      sub_22892F7A8();
      v24 = v47(v23, 1, v48);
      v20 = v27;
      v19 = v26;
      v3 = v23;
      v22 = v12;
      if (v24 == 1)
      {
        goto LABEL_3;
      }
    }
  }

  v13 = 0;
LABEL_3:

  result = sub_2288C3620(v3, &qword_2813DE900, MEMORY[0x277D83D88], sub_2288DA9EC);
  v15 = v12[3];
  if (v15 >= 2)
  {
    v16 = v15 >> 1;
    v17 = __OFSUB__(v16, v13);
    v18 = v16 - v13;
    if (v17)
    {
      goto LABEL_36;
    }

    v12[2] = v18;
  }

  return v12;
}

void sub_2288DA918()
{
  if (!qword_2813DE950)
  {
    v0 = sub_22892F7F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2813DE950);
    }
  }
}

void sub_2288DA96C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    v6 = sub_22892F8D8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2288DA9EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_2288DA96C(255, &qword_2813DE910, MEMORY[0x277D100B8], sub_2288B7AEC);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2288DAAA0(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_22892F588())
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = MEMORY[0x277D84FA0];
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_7:
    v9 = -1 << *(v1 + 32);
    v5 = v1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v1 + 56);

    v7 = 0;
    goto LABEL_11;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_2288DB24C();
  v3 = sub_22892F618();
  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_4:

  sub_22892F578();
  sub_2288DB1A8();
  sub_2288DB1F4();
  result = sub_22892F2D8();
  v1 = v31;
  v5 = v32;
  v6 = v33;
  v7 = v34;
  v8 = v35;
LABEL_11:
  v12 = v3 + 56;
  while (v1 < 0)
  {
    v16 = sub_22892F5A8();
    if (!v16)
    {
LABEL_34:
      sub_2288D3D50();

      return v3;
    }

    *&v28 = v16;
    sub_2288DB1A8();
    swift_dynamicCast();
LABEL_25:
    sub_2288DB1A8();
    swift_dynamicCast();
    v20 = *(v3 + 40);
    result = sub_22892F5B8();
    v21 = -1 << *(v3 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) != 0)
    {
      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v24 = 0;
      v25 = (63 - v21) >> 6;
      do
      {
        if (++v23 == v25 && (v24 & 1) != 0)
        {
          __break(1u);
          goto LABEL_35;
        }

        v26 = v23 == v25;
        if (v23 == v25)
        {
          v23 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v23);
      }

      while (v27 == -1);
      v13 = __clz(__rbit64(~v27)) + (v23 << 6);
    }

    *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
    v14 = *(v3 + 48) + 40 * v13;
    *(v14 + 32) = v30;
    *v14 = v28;
    *(v14 + 16) = v29;
    ++*(v3 + 16);
  }

  if (v8)
  {
    v15 = v7;
LABEL_24:
    v18 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v19 = *(*(v1 + 48) + ((v15 << 9) | (8 * v18)));
    goto LABEL_25;
  }

  v17 = v7;
  while (1)
  {
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v15 >= ((v6 + 64) >> 6))
    {
      goto LABEL_34;
    }

    v8 = *(v5 + 8 * v15);
    ++v17;
    if (v8)
    {
      v7 = v15;
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

id sub_2288DADC0(uint64_t a1, uint64_t a2, void *a3)
{
  v32 = a2;
  sub_2288CD8F0(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22892DDC8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v30 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288DB154();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228930AF0;
  v31 = a3;
  v13 = [a3 metadataManager];
  v14 = *MEMORY[0x277CCE030];
  v15 = _HKBackgroundAndSedentaryPrivateHeartRateContexts();
  sub_2288DB1A8();
  sub_2288DB1F4();
  v16 = sub_22892F2A8();

  sub_2288DAAA0(v16);

  v17 = sub_22892F298();

  v18 = [v13 predicateWithMetadataKey:v14 allowedValues:v17];

  *(inited + 32) = v18;
  sub_2289174BC(v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {

    sub_2288CA8C4(v7);
    return 0;
  }

  else
  {
    v20 = v30;
    (*(v9 + 32))(v30, v7, v8);
    v21 = swift_initStackObject();
    *(v21 + 16) = xmmword_228930B00;
    v22 = v32;
    *(v21 + 32) = HDSampleEntityPredicateForDataType();
    v23 = sub_22892DD58();
    v24 = HDSampleEntityPredicateForDateInterval();

    *(v21 + 40) = v24;
    v33 = v21;
    sub_228904978(inited);
    sub_228901F80(v33);

    v25 = sub_22892F208();

    v26 = [objc_opt_self() predicateMatchingAllPredicates_];

    v27 = objc_allocWithZone(MEMORY[0x277D108A0]);
    v28 = [v27 initForProfile:v31 quantityType:v22 predicate:v26 restrictedSourceEntities:0];

    (*(v9 + 8))(v20, v8);
    return v28;
  }
}

void sub_2288DB154()
{
  if (!qword_2813DE960)
  {
    v0 = sub_22892F7F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2813DE960);
    }
  }
}

unint64_t sub_2288DB1A8()
{
  result = qword_2813DEB50;
  if (!qword_2813DEB50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813DEB50);
  }

  return result;
}

unint64_t sub_2288DB1F4()
{
  result = qword_2813DEB40;
  if (!qword_2813DEB40)
  {
    sub_2288DB1A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813DEB40);
  }

  return result;
}

void sub_2288DB24C()
{
  if (!qword_2813DEAD0)
  {
    v0 = sub_22892F628();
    if (!v1)
    {
      atomic_store(v0, &qword_2813DEAD0);
    }
  }
}

uint64_t sub_2288DB2A4(uint64_t a1)
{
  sub_2288DB300();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2288DB300()
{
  if (!qword_2813DE8B8)
  {
    v0 = sub_22892F498();
    if (!v1)
    {
      atomic_store(v0, &qword_2813DE8B8);
    }
  }
}

void sub_2288DB354()
{
  v1 = [v0 daemon];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 behavior];
    v4 = [v3 features];

    if (v4)
    {
      v5 = [v4 sleepResultsNotificationsOnWatch];

      v6 = [v2 behavior];
      v7 = [v6 isAppleWatch];

      if (v5)
      {
        if ((v7 & 1) == 0)
        {
          v8 = [v2 behavior];
          [v8 isCompanionCapable];
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_2288DB468@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = sub_22892DEF8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22892E778();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22892E478();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v30 - v18;
  sub_22892E458();
  (*(v13 + 16))(v17, v19, v12);
  v20 = v30;
  sub_22892E738();
  sub_22892E6F8();
  (*(v4 + 16))(v7, a1, v3);
  v21 = sub_2288B7B40(v20, v11, v7);
  v23 = (v13 + 8);
  if (sub_2288B79A4())
  {
    v24 = v22;
    ObjectType = swift_getObjectType();
    v26 = (*(v24 + 8))(ObjectType, v24);
    swift_unknownObjectRelease();
    sub_2288BC144(v21, a1, &v32);

    (*v23)(v19, v12);
    return sub_2288D3C20(&v32, v31);
  }

  else
  {
    sub_2288BABAC(0);
    v32 = 0u;
    v33 = 0u;
    v34 = 0;
    v28 = v31;
    v31[3] = v29;
    v28[4] = sub_2288DB788(&unk_2813DF1A0, sub_2288BABAC);
    *v28 = v21;
    result = (*v23)(v19, v12);
    if (*(&v33 + 1))
    {
      return __swift_destroy_boxed_opaque_existential_0(&v32);
    }
  }

  return result;
}

uint64_t sub_2288DB788(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2288DB7D0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_2288DDC70(0, &qword_2813DEA50);
    v2 = sub_22892F788();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        sub_2288D3D58(*(a1 + 56) + 40 * v15, v32);
        *&v31 = v17;
        *(&v31 + 1) = v18;
        v28[2] = v31;
        v29[0] = v32[0];
        v29[1] = v32[1];
        v30 = v33;
        v19 = v31;
        sub_2288D3C20(v29, v24);
        sub_2288D3BBC();

        swift_dynamicCast();
        sub_2288DDB00(&v25, v27);
        sub_2288DDB00(v27, v28);
        sub_2288DDB00(v28, &v26);
        result = sub_22891C740(v19, *(&v19 + 1));
        if (v20)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v19;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_0(v12);
          result = sub_2288DDB00(&v26, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v19;
          result = sub_2288DDB00(&v26, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_2288DBA74(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_2288DDC70(0, &qword_27D85B508);
    v2 = sub_22892F788();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(a1 + 56) + 8 * v13);
    *&v33[0] = *v14;
    *(&v33[0] + 1) = v15;

    swift_unknownObjectRetain();
    swift_dynamicCast();
    sub_2288DDA90();
    swift_dynamicCast();
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_2288DDB00(&v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_2288DDB00(v32, v33);
    v17 = *(v2 + 40);
    result = sub_22892F5B8();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_2288DDB00(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_2288DBD40(char *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_22892EA08();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22892EDE8();
  v33 = *(v9 - 8);
  v10 = *(v33 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22892EDC8();
  (*(v5 + 16))(v8, a1, v4);
  v13 = sub_22892EDD8();
  v14 = sub_22892F398();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v31 = v9;
    v16 = v15;
    v30 = swift_slowAlloc();
    v34 = v30;
    *v16 = 136446466;
    v17 = sub_22892F948();
    v19 = sub_2288B748C(v17, v18, &v34);
    ObjectType = a1;
    v20 = v19;

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    v21 = sub_22892E998();
    v23 = v22;
    (*(v5 + 8))(v8, v4);
    v24 = sub_2288B748C(v21, v23, &v34);
    a1 = ObjectType;

    *(v16 + 14) = v24;
    _os_log_impl(&dword_2288B2000, v13, v14, "[%{public}s] Posting notification (%s) and syncing a send instruction", v16, 0x16u);
    v25 = v30;
    swift_arrayDestroy();
    MEMORY[0x22AAC47E0](v25, -1, -1);
    MEMORY[0x22AAC47E0](v16, -1, -1);

    (*(v33 + 8))(v12, v31);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
    (*(v33 + 8))(v12, v9);
  }

  sub_2288DC088(a1);
  if (*(v2 + OBJC_IVAR____TtC19HealthBalanceDaemon36ImbalanceUserNotificationCoordinator_shouldIssueSendInstructionsWhenFiringVitalsOutlierNotification) == 1)
  {
    v26 = *(v2 + OBJC_IVAR____TtC19HealthBalanceDaemon36ImbalanceUserNotificationCoordinator_notificationSyncClient);
    sub_2288CB328(a1);
  }

  v27 = *(v2 + OBJC_IVAR____TtC19HealthBalanceDaemon36ImbalanceUserNotificationCoordinator_notificationSyncClient);
  sub_2288CBAB4(a1);
  return sub_2288DC9BC(a1);
}

uint64_t sub_2288DC088(uint64_t a1)
{
  v72 = sub_22892EA08();
  v71 = *(v72 - 8);
  v2 = *(v71 + 64);
  MEMORY[0x28223BE20](v72);
  v68 = v3;
  v70 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_22892E9E8();
  v66 = *(v67 - 8);
  v4 = *(v66 + 64);
  MEMORY[0x28223BE20](v67);
  v65 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_22892DEF8();
  v61 = *(v62 - 8);
  v6 = *(v61 + 64);
  MEMORY[0x28223BE20](v62);
  v60 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_22892EFA8();
  v58 = *(v59 - 8);
  v8 = *(v58 + 64);
  MEMORY[0x28223BE20](v59);
  v56 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_22892E318();
  v10 = *(v55 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v55);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_22892E968();
  v14 = *(v73 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v73);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22892E9C8();
  v18 = sub_22892F098();

  sub_22892E9B8();
  if (v19)
  {
    v20 = sub_22892F098();
  }

  else
  {
    v20 = 0;
  }

  v21 = objc_opt_self();
  v57 = v17;
  sub_22892E978();
  sub_22892E958();
  v54 = a1;
  v22 = *(v14 + 8);
  v63 = v14 + 8;
  v64 = v22;
  v22(v17, v73);
  v23 = sub_22892F098();

  v24 = [v21 createNotificationContentWithTitle:v18 body:v20 categoryIdentifier:v23];

  sub_2288BC000(0, &qword_27D85B520, sub_2288DDB6C, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2289315C0;
  v26 = *MEMORY[0x277CCE4D0];
  aBlock = sub_22892F0C8();
  v75 = v27;
  sub_22892F5D8();
  v28 = MEMORY[0x277D83B88];
  *(inited + 96) = MEMORY[0x277D83B88];
  *(inited + 72) = 15;
  v29 = v55;
  (*(v10 + 104))(v13, *MEMORY[0x277D0FDC0], v55);
  v30 = sub_22892E308();
  v32 = v31;
  (*(v10 + 8))(v13, v29);
  aBlock = v30;
  v75 = v32;
  sub_22892F5D8();
  v33 = v56;
  v34 = v54;
  sub_22892E9A8();
  v35 = sub_22892EF68();
  (*(v58 + 8))(v33, v59);
  *(inited + 168) = v28;
  *(inited + 144) = v35;
  sub_22891CFE8(inited);
  swift_setDeallocating();
  sub_2288DDB6C();
  swift_arrayDestroy();
  v36 = sub_22892EFB8();

  [v24 setUserInfo_];

  v37 = v60;
  sub_22892DEA8();
  v38 = sub_22892DE58();
  (*(v61 + 8))(v37, v62);
  [v24 setExpirationDate_];

  [v24 copy];
  sub_22892F4F8();
  swift_unknownObjectRelease();
  sub_2288BC0FC(0, &qword_27D85B500, 0x277CE1FA0);
  swift_dynamicCast();
  v39 = v80;
  v40 = v65;
  sub_22892E9F8();
  v41 = v57;
  sub_22892E9D8();
  (*(v66 + 8))(v40, v67);
  v42 = *(v69 + OBJC_IVAR____TtC19HealthBalanceDaemon36ImbalanceUserNotificationCoordinator_notificationManager);
  v43 = v71;
  v44 = v70;
  v45 = v72;
  (*(v71 + 16))(v70, v34, v72);
  v46 = (*(v43 + 80) + 24) & ~*(v43 + 80);
  v47 = (v68 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  *(v48 + 16) = v42;
  (*(v43 + 32))(v48 + v46, v44, v45);
  *(v48 + v47) = v39;
  v49 = v42;
  v50 = v39;
  sub_22892E958();
  v51 = sub_22892F098();

  v78 = sub_2288DDBD0;
  v79 = v48;
  aBlock = MEMORY[0x277D85DD0];
  v75 = 1107296256;
  v76 = sub_2288F3CC4;
  v77 = &block_descriptor_0;
  v52 = _Block_copy(&aBlock);

  [v49 removeDeliveredNotificationsWithCategoryIdentifier:v51 completionHandler:v52];
  _Block_release(v52);

  return v64(v41, v73);
}

uint64_t sub_2288DC9BC(uint64_t a1)
{
  v2 = v1;
  v50 = a1;
  v56[1] = *MEMORY[0x277D85DE8];
  ObjectType = swift_getObjectType();
  v3 = sub_22892EDE8();
  v54 = *(v3 - 8);
  v55 = v3;
  v4 = *(v54 + 64);
  MEMORY[0x28223BE20](v3);
  v53 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22892E378();
  v48 = *(v6 - 8);
  v49 = v6;
  v7 = *(v48 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22892E9E8();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_22892F3F8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288BC000(0, &qword_2813DFEE0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v47 - v22;
  v51 = v2;
  v24 = *(v2 + OBJC_IVAR____TtC19HealthBalanceDaemon36ImbalanceUserNotificationCoordinator_notificationStateKeyValueDomain);
  (*(v13 + 104))(v16, *MEMORY[0x277D10110], v12);
  sub_22892F3E8();
  (*(v13 + 8))(v16, v12);
  sub_22892F3B8();

  sub_22892E9F8();
  (*(v48 + 104))(v9, *MEMORY[0x277D0FE58], v49);
  sub_2288D3C38(v23, v21);
  v25 = sub_22892E398();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v28 = sub_22892E388();
  v29 = *(v51 + OBJC_IVAR____TtC19HealthBalanceDaemon36ImbalanceUserNotificationCoordinator_analyticsEventSubmissionManager);
  v56[0] = 0;
  if ([v29 submitEvent:v28 error:v56])
  {
    v30 = v56[0];
    sub_2288DE9B4(v23, &qword_2813DFEE0, MEMORY[0x277CC9578]);
  }

  else
  {
    v32 = v56[0];
    v33 = sub_22892DE38();

    swift_willThrow();

    sub_2288DE9B4(v23, &qword_2813DFEE0, MEMORY[0x277CC9578]);
    v34 = v53;
    sub_22892EDC8();
    v35 = v33;
    v36 = sub_22892EDD8();
    v37 = sub_22892F378();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v56[0] = v40;
      *v38 = 136446466;
      v41 = sub_22892F948();
      v43 = sub_2288B748C(v41, v42, v56);

      *(v38 + 4) = v43;
      *(v38 + 12) = 2114;
      v44 = v33;
      v45 = _swift_stdlib_bridgeErrorToNSError();
      *(v38 + 14) = v45;
      *v39 = v45;
      _os_log_impl(&dword_2288B2000, v36, v37, "[%{public}s] Error submitting notification analytic: %{public}@)", v38, 0x16u);
      sub_2288DDB10(v39);
      MEMORY[0x22AAC47E0](v39, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x22AAC47E0](v40, -1, -1);
      MEMORY[0x22AAC47E0](v38, -1, -1);
    }

    else
    {
    }

    result = (*(v54 + 8))(v34, v55);
  }

  v46 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2288DCF84(void *a1, uint64_t a2, uint64_t a3)
{
  sub_22892E998();
  v5 = sub_22892F098();

  [a1 postNotificationWithIdentifier:v5 content:a3 trigger:0 completion:0];
}

uint64_t sub_2288DD008(void *a1)
{
  v2 = v1;
  v60 = v2;
  ObjectType = swift_getObjectType();
  v5 = sub_22892EFA8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22892EDE8();
  v61 = *(v10 - 8);
  v11 = *(v61 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v59 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v55 - v14;
  sub_22892EDC8();
  v16 = a1;
  v17 = sub_22892EDD8();
  v18 = sub_22892F398();

  v19 = os_log_type_enabled(v17, v18);
  v57 = ObjectType;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v58 = v5;
    v21 = v20;
    v22 = swift_slowAlloc();
    v56 = v10;
    v23 = v22;
    v62 = v22;
    *v21 = 136446466;
    v24 = sub_22892F948();
    v26 = sub_2288B748C(v24, v25, &v62);
    v55 = v9;
    v27 = v6;
    v28 = v26;

    *(v21 + 4) = v28;
    *(v21 + 12) = 2080;
    v29 = sub_22892E0C8();
    v31 = sub_2288B748C(v29, v30, &v62);
    v32 = v61;
    v33 = v27;
    v9 = v55;

    *(v21 + 14) = v31;
    _os_log_impl(&dword_2288B2000, v17, v18, "[%{public}s] Posting notification (%s)", v21, 0x16u);
    swift_arrayDestroy();
    v34 = v23;
    v10 = v56;
    MEMORY[0x22AAC47E0](v34, -1, -1);
    v35 = v21;
    v5 = v58;
    MEMORY[0x22AAC47E0](v35, -1, -1);

    v36 = *(v32 + 8);
    v36(v15, v10);
  }

  else
  {

    v36 = *(v61 + 8);
    v36(v15, v10);
    v33 = v6;
  }

  v37 = v60;
  sub_2288DD504();
  v38 = *(v37 + OBJC_IVAR____TtC19HealthBalanceDaemon36ImbalanceUserNotificationCoordinator_contentProtectionManager);
  if (!v38)
  {
    goto LABEL_7;
  }

  v39 = v38;
  if ([v39 isProtectedDataAvailable])
  {

LABEL_7:
    v40 = *(v37 + OBJC_IVAR____TtC19HealthBalanceDaemon36ImbalanceUserNotificationCoordinator_notificationSyncClient);
    sub_22892E108();
    sub_2288CC0E0(v9);
    return (*(v33 + 8))(v9, v5);
  }

  v60 = v33;
  v58 = v5;
  sub_22892EDC8();
  v42 = v16;
  v43 = sub_22892EDD8();
  v44 = sub_22892F398();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v62 = v56;
    *v45 = 136446466;
    v46 = sub_22892F948();
    v48 = sub_2288B748C(v46, v47, &v62);

    *(v45 + 4) = v48;
    *(v45 + 12) = 2080;
    sub_22892E108();
    sub_2288DDA38();
    v49 = v58;
    v50 = sub_22892F7E8();
    v52 = v51;
    (*(v60 + 8))(v9, v49);
    v53 = sub_2288B748C(v50, v52, &v62);

    *(v45 + 14) = v53;
    _os_log_impl(&dword_2288B2000, v43, v44, "[%{public}s] Skipping hold instruction for %s due to no protected data", v45, 0x16u);
    v54 = v56;
    swift_arrayDestroy();
    MEMORY[0x22AAC47E0](v54, -1, -1);
    MEMORY[0x22AAC47E0](v45, -1, -1);
  }

  return (v36)(v59, v10);
}

void sub_2288DD504()
{
  sub_22892E0F8();
  v1 = sub_22892F098();

  sub_22892E128();
  v2 = sub_22892F098();

  v3 = sub_22892E0E8();
  v4 = MEMORY[0x277D622E0];
  if ((v3 & 1) == 0)
  {
    v4 = MEMORY[0x277D622E8];
  }

  v5 = *v4;
  sub_22892F0C8();
  v6 = objc_opt_self();
  v7 = sub_22892F098();

  v8 = [v6 createNotificationContentWithTitle:v1 body:v2 categoryIdentifier:v7];

  v9 = sub_22892E138();
  sub_2288DBA74(v9);

  v10 = sub_22892EFB8();

  [v8 setUserInfo_];

  [v8 copy];
  sub_22892F4F8();
  swift_unknownObjectRelease();
  sub_2288BC0FC(0, &qword_27D85B500, 0x277CE1FA0);
  swift_dynamicCast();
  v11 = *(v0 + OBJC_IVAR____TtC19HealthBalanceDaemon36ImbalanceUserNotificationCoordinator_notificationManager);
  sub_22892E0C8();
  v12 = sub_22892F098();

  [v11 postNotificationWithIdentifier:v12 content:v13 trigger:0 completion:0];
}

uint64_t (*sub_2288DD708(uint64_t a1, uint64_t a2))()
{
  if (a1)
  {
    v2 = a1;
    v4 = swift_allocObject();
    v5 = a2;
    v6 = v4;
    a1 = v2;
    *(v6 + 16) = v2;
    *(v6 + 24) = v5;
    v7 = sub_2288DEB24;
  }

  else
  {
    v7 = 0;
  }

  sub_2288C0764(a1);
  swift_getAtKeyPath();
  sub_2288C751C(v7);
  if (!v10)
  {
    return 0;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = v10;
  *(v8 + 24) = v11;
  return sub_2288DEB20;
}

uint64_t sub_2288DD7F8@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(uint64_t (*)(), uint64_t)@<X1>, uint64_t (**a3)()@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  if (*a1)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    v8 = sub_2288DEA2C;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  sub_2288C0764(v5);
  v9 = a2(v8, v7);
  v11 = v10;
  sub_2288C751C(v8);
  if (v9)
  {
    result = swift_allocObject();
    *(result + 16) = v9;
    *(result + 24) = v11;
    v13 = sub_2288DEA24;
  }

  else
  {
    v13 = 0;
    result = 0;
  }

  *a3 = v13;
  a3[1] = result;
  return result;
}

unint64_t sub_2288DDA38()
{
  result = qword_2813DEDF0;
  if (!qword_2813DEDF0)
  {
    sub_22892EFA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813DEDF0);
  }

  return result;
}

unint64_t sub_2288DDA90()
{
  result = qword_27D85B510;
  if (!qword_27D85B510)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D85B510);
  }

  return result;
}

_OWORD *sub_2288DDB00(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2288DDB10(uint64_t a1)
{
  sub_2288D6D64();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2288DDB6C()
{
  if (!qword_27D85B528)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D85B528);
    }
  }
}

void sub_2288DDBD0()
{
  v1 = *(sub_22892EA08() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_2288DCF84(v3, v0 + v2, v4);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2288DDC70(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_22892F798();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

id sub_2288DDCCC(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = [a1 notificationManager];
  if (v8)
  {
    v9 = v8;
    v37 = a3;
    v39 = v4;
    swift_getMetatypeMetadata();
    v10 = a1;
    sub_22892F808();
    v11 = HKCreateSerialDispatchQueue();
    swift_unknownObjectRelease();
    v12 = objc_allocWithZone(MEMORY[0x277D107B8]);
    v13 = sub_22892F098();
    v36 = [v12 initWithProfile:v10 clientIdentifier:v13 queue:v11];

    v14 = [v10 daemon];
    if (v14)
    {
      v15 = v14;
      v16 = [v14 contentProtectionManager];
    }

    else
    {
      v16 = 0;
    }

    v18 = [v10 daemon];
    if (v18)
    {
      v19 = v18;
      v20 = [v18 behavior];
      v21 = [v20 isCompanionCapable];
    }

    else
    {
      v21 = 0;
    }

    v22 = [v10 daemon];
    if (v22)
    {
      v23 = v22;
      v24 = [v22 behavior];
      v25 = [v24 isAppleWatch];
    }

    else
    {
      v25 = 0;
    }

    v26 = objc_allocWithZone(v4);
    v27 = OBJC_IVAR____TtC19HealthBalanceDaemon36ImbalanceUserNotificationCoordinator_unitTest_didProcessNotificationSyncInstruction;
    sub_2288DEA34();
    v28 = swift_allocObject();
    *(v28 + 16) = 0;
    *(v28 + 24) = 0;
    *(v28 + 32) = 0;
    *&v26[v27] = v28;
    *&v26[OBJC_IVAR____TtC19HealthBalanceDaemon36ImbalanceUserNotificationCoordinator_notificationManager] = v9;
    *&v26[OBJC_IVAR____TtC19HealthBalanceDaemon36ImbalanceUserNotificationCoordinator_notificationStateKeyValueDomain] = a2;
    *&v26[OBJC_IVAR____TtC19HealthBalanceDaemon36ImbalanceUserNotificationCoordinator_notificationSyncClient] = v36;
    *&v26[OBJC_IVAR____TtC19HealthBalanceDaemon36ImbalanceUserNotificationCoordinator_analyticsEventSubmissionManager] = v37;
    *&v26[OBJC_IVAR____TtC19HealthBalanceDaemon36ImbalanceUserNotificationCoordinator_contentProtectionManager] = v16;
    v26[OBJC_IVAR____TtC19HealthBalanceDaemon36ImbalanceUserNotificationCoordinator_shouldPostForwardedChangeNotifications] = v21;
    v26[OBJC_IVAR____TtC19HealthBalanceDaemon36ImbalanceUserNotificationCoordinator_shouldIssueSendInstructionsWhenFiringVitalsOutlierNotification] = v25;
    v38.receiver = v26;
    v38.super_class = v4;
    v29 = v9;
    v30 = a2;
    v31 = v36;
    v32 = v37;
    v33 = v16;
    v17 = objc_msgSendSuper2(&v38, sel_init);
    v34 = v17;
    [v31 setDelegate_];
  }

  else
  {

    return 0;
  }

  return v17;
}

uint64_t sub_2288DDFE0(void *a1)
{
  v2 = v1;
  v99[2] = *MEMORY[0x277D85DE8];
  ObjectType = swift_getObjectType();
  v4 = sub_22892EDE8();
  v97 = *(v4 - 8);
  v98 = v4;
  v5 = *(v97 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v96 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v87 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v87 - v11;
  sub_2288BC000(0, &unk_27D85B530, MEMORY[0x277D10090], MEMORY[0x277D83D88]);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v87 - v15;
  v17 = sub_22892EA08();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v87 - v23;
  v99[0] = 0;
  v94 = a1;
  v25 = [a1 pendingNotificationSendInstructionsWithError_];
  if (!v25)
  {
    v42 = v99[0];
    v43 = sub_22892DE38();

    swift_willThrow();
    goto LABEL_16;
  }

  v26 = v25;
  v93 = v2;
  v27 = *(v2 + OBJC_IVAR____TtC19HealthBalanceDaemon36ImbalanceUserNotificationCoordinator_shouldPostForwardedChangeNotifications);
  v28 = v99[0];
  if (v27 != 1)
  {
    goto LABEL_5;
  }

  sub_2288CCBE0(v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_2288DE9B4(v16, &unk_27D85B530, MEMORY[0x277D10090]);
LABEL_5:
    sub_22892EDC8();
    v29 = v26;
    v30 = sub_22892EDD8();
    v31 = sub_22892F398();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v99[0] = v33;
      *v32 = 136446466;
      v34 = sub_22892F948();
      v36 = sub_2288B748C(v34, v35, v99);

      *(v32 + 4) = v36;
      *(v32 + 12) = 2082;
      v37 = [v29 messageIdentifiers];
      sub_22892F2A8();

      v38 = sub_22892F2B8();
      v40 = v39;

      v41 = sub_2288B748C(v38, v40, v99);

      *(v32 + 14) = v41;
      _os_log_impl(&dword_2288B2000, v30, v31, "[%{public}s] Ignoring send instructions %{public}s", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAC47E0](v33, -1, -1);
      MEMORY[0x22AAC47E0](v32, -1, -1);
    }

    (*(v97 + 8))(v10, v98);
    goto LABEL_13;
  }

  (*(v18 + 32))(v24, v16, v17);
  sub_22892EDC8();
  (*(v18 + 16))(v22, v24, v17);
  v44 = v26;
  v45 = sub_22892EDD8();
  v46 = sub_22892F398();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v99[0] = v92;
    *v47 = 136446722;
    v48 = sub_22892F948();
    v91 = v45;
    v50 = sub_2288B748C(v48, v49, v99);
    v90 = v46;
    v51 = v50;

    *(v47 + 4) = v51;
    *(v47 + 12) = 2082;
    v52 = sub_22892E998();
    v54 = v53;
    v88 = v44;
    v55 = *(v18 + 8);
    v89 = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v55(v22, v17);
    v56 = v55;
    v57 = sub_2288B748C(v52, v54, v99);

    *(v47 + 14) = v57;
    *(v47 + 22) = 2082;
    v58 = [v88 messageIdentifiers];
    sub_22892F2A8();

    v59 = sub_22892F2B8();
    v61 = v60;

    v62 = sub_2288B748C(v59, v61, v99);

    *(v47 + 24) = v62;
    v63 = v91;
    _os_log_impl(&dword_2288B2000, v91, v90, "[%{public}s] Posting notification (%{public}s) from send instructions %{public}s", v47, 0x20u);
    v64 = v92;
    swift_arrayDestroy();
    MEMORY[0x22AAC47E0](v64, -1, -1);
    MEMORY[0x22AAC47E0](v47, -1, -1);
  }

  else
  {

    v65 = *(v18 + 8);
    v65(v22, v17);
    v56 = v65;
  }

  (*(v97 + 8))(v12, v98);
  sub_2288DC088(v24);
  v56(v24, v17);
LABEL_13:
  v99[0] = 0;
  if ([v94 markPendingNotificationInstructionsAsProcessed:v26 error:v99])
  {
    v66 = v99[0];

    v2 = v93;
    goto LABEL_19;
  }

  v67 = v99[0];
  v43 = sub_22892DE38();

  swift_willThrow();
  v2 = v93;
LABEL_16:
  v68 = v96;
  sub_22892EDC8();
  v69 = v43;
  v70 = sub_22892EDD8();
  v71 = sub_22892F378();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v99[0] = v74;
    *v72 = 136446466;
    v75 = sub_22892F948();
    v77 = v2;
    v78 = sub_2288B748C(v75, v76, v99);

    *(v72 + 4) = v78;
    v2 = v77;
    *(v72 + 12) = 2114;
    v79 = v43;
    v80 = _swift_stdlib_bridgeErrorToNSError();
    *(v72 + 14) = v80;
    *v73 = v80;
    _os_log_impl(&dword_2288B2000, v70, v71, "[%{public}s] Error processing pending send instructions: %{public}@", v72, 0x16u);
    sub_2288DDB10(v73);
    MEMORY[0x22AAC47E0](v73, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v74);
    MEMORY[0x22AAC47E0](v74, -1, -1);
    MEMORY[0x22AAC47E0](v72, -1, -1);

    (*(v97 + 8))(v96, v98);
  }

  else
  {

    (*(v97 + 8))(v68, v98);
  }

LABEL_19:
  v81 = *(v2 + OBJC_IVAR____TtC19HealthBalanceDaemon36ImbalanceUserNotificationCoordinator_unitTest_didProcessNotificationSyncInstruction);
  KeyPath = swift_getKeyPath();
  v83 = MEMORY[0x28223BE20](KeyPath);
  *(&v87 - 2) = sub_2288DE990;
  *(&v87 - 1) = v83;

  os_unfair_lock_lock((v81 + 32));
  sub_2288DE998((v81 + 16), v99);
  os_unfair_lock_unlock((v81 + 32));

  v85 = v99[0];
  if (v99[0])
  {
    (v99[0])(result);
    result = sub_2288C751C(v85);
  }

  v86 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2288DE9B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2288BC000(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_2288DEA34()
{
  if (!qword_2813DEAA0)
  {
    sub_2288BC000(255, &unk_2813DE8A0, sub_2288DEACC, MEMORY[0x277D83D88]);
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_22892F688();
    if (!v1)
    {
      atomic_store(v0, &qword_2813DEAA0);
    }
  }
}

unint64_t sub_2288DEACC()
{
  result = qword_2813DE8B0;
  if (!qword_2813DE8B0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_2813DE8B0);
  }

  return result;
}

id SleepingSampleDaySummaryCurrentValueCache.registerObserver(_:queue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();

  return sub_2288BBECC(a1, a3, v3);
}

id SleepingSampleDaySummaryCurrentValueCache.unregisterObserver(_:)(uint64_t a1)
{
  swift_getObjectType();

  return sub_2288E1C68(a1, v1);
}

uint64_t sub_2288DEBD0(uint64_t a1, uint64_t a2, int *a3)
{
  if ((sub_22892E768() & 1) == 0 || (sub_2288E1A3C(*(a1 + a3[5]), *(a2 + a3[5])) & 1) == 0 || *(a1 + a3[6]) != *(a2 + a3[6]))
  {
    return 0;
  }

  v6 = a3[7];

  return sub_22892DEB8();
}

uint64_t sub_2288DEC64()
{
  v0 = sub_22892DFB8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x277CC9830], v0);
  sub_22892DFC8();
  return (*(v1 + 8))(v4, v0);
}

id SleepingSampleDaySummaryCurrentValueCache.__allocating_init(changeDetector:gregorianCalendarProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return sub_2288E1C88(a1, a3, a4, v4, ObjectType, a2);
}

id SleepingSampleDaySummaryCurrentValueCache.init(changeDetector:gregorianCalendarProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return sub_2288E1CF8(a1, a3, a4, v4, ObjectType, a2);
}

uint64_t sub_2288DEE24@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v69 = a1;
  sub_2288BB4E0();
  v61 = v3;
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v60 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v59 = &v58 - v7;
  v8 = sub_22892EFA8();
  v64 = *(v8 - 8);
  v9 = *(v64 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v62 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v63 = &v58 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v58 - v14;
  sub_2288B5D1C();
  v17 = v16;
  v18 = *(*(v16 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v58 - v23;
  MEMORY[0x28223BE20](v22);
  v58 = &v58 - v25;
  v26 = sub_22892E048();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v58 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_22892E478();
  v66 = *(v31 - 8);
  v67 = v31;
  v32 = *(v66 + 64);
  v33 = MEMORY[0x28223BE20](v31);
  v65 = &v58 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v58 - v36;
  v38 = *(v2 + OBJC_IVAR____TtC19HealthBalanceDaemon41SleepingSampleDaySummaryCurrentValueCache_gregorianCalendarProvider);
  v39 = *(v2 + OBJC_IVAR____TtC19HealthBalanceDaemon41SleepingSampleDaySummaryCurrentValueCache_gregorianCalendarProvider + 8);
  v38(v35);
  sub_22892E458();
  (*(v27 + 8))(v30, v26);
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v41 = result;
    v42 = [result isAppleWatch];

    if (v42)
    {
LABEL_5:
      v56 = v66;
      v57 = v67;
      (*(v66 + 16))(v65, v37, v67);
      sub_22892E738();
      sub_22892E6F8();
      return (*(v56 + 8))(v37, v57);
    }

    sub_22892E438();
    v43 = v64;
    v44 = *(v64 + 16);
    v44(v15, v24, v8);
    v45 = v24;
    v46 = v43;
    sub_2288C0C14(v45, sub_2288B5D1C);
    sub_22892E438();
    v47 = v62;
    v44(v62, &v21[*(v17 + 36)], v8);
    sub_2288C0C14(v21, sub_2288B5D1C);
    v48 = v63;
    sub_22892EF78();
    v49 = *(v46 + 8);
    v49(v47, v8);
    sub_2288C0C74(&qword_2813DEE20, MEMORY[0x277CCB6A8]);
    result = sub_22892F048();
    if (result)
    {
      v50 = *(v46 + 32);
      v64 = v17;
      v51 = v59;
      v50(v59, v15, v8);
      v52 = v61;
      v50((v51 + *(v61 + 48)), v48, v8);
      v69 = v37;
      v53 = v60;
      sub_2288BFD84(v51, v60, sub_2288BB4E0);
      v54 = *(v52 + 48);
      v55 = v58;
      v50(v58, v53, v8);
      v49((v53 + v54), v8);
      sub_2288E2948(v51, v53, sub_2288BB4E0);
      v50(&v55[*(v64 + 36)], (v53 + *(v52 + 48)), v8);
      v49(v53, v8);
      v37 = v69;
      sub_22892E448();
      goto LABEL_5;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2288DF43C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28[1] = a6;
  v10 = sub_22892EDE8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State(0) + 20);
  if (sub_22892DF28())
  {
    sub_2288E27DC(a1, qword_2813DF3D0, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry);
    v16 = sub_22892E778();
    (*(*(v16 - 8) + 16))(a1, a3, v16);
    v17 = type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry(0);
    v18 = v17[7];
    v19 = sub_22892DEF8();
    (*(*(v19 - 8) + 16))(a1 + v18, a5, v19);
    *(a1 + v17[5]) = a4;
    *(a1 + v17[6]) = 0;
    (*(*(v17 - 1) + 56))(a1, 0, 1, v17);
  }

  else
  {
    sub_22892EDC8();
    v21 = sub_22892EDD8();
    v22 = sub_22892F398();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v29 = v24;
      *v23 = 136446210;
      v25 = sub_22892F948();
      v27 = sub_2288B748C(v25, v26, &v29);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_2288B2000, v21, v22, "[%{public}s] Ignoring invalidated population attempt", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x22AAC47E0](v24, -1, -1);
      MEMORY[0x22AAC47E0](v23, -1, -1);
    }

    return (*(v11 + 8))(v14, v10);
  }
}

Swift::Void __swiftcall SleepingSampleDaySummaryCurrentValueCache.sleepingSampleDataTypesAddedInDateInterval(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = *(v1 + OBJC_IVAR____TtC19HealthBalanceDaemon41SleepingSampleDaySummaryCurrentValueCache_state);
  v5 = *(*v4 + *MEMORY[0x277D841D0] + 16);
  v6 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v4 + v6));
  sub_2288E2070(v4 + v5, aBlock);
  os_unfair_lock_unlock((v4 + v6));
  v7 = aBlock[0];
  v8 = *(v2 + OBJC_IVAR____TtC19HealthBalanceDaemon41SleepingSampleDaySummaryCurrentValueCache_observers);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = v7;
  v10 = *(v8 + 16);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_2288E208C;
  *(v11 + 24) = v9;
  aBlock[4] = sub_2288E2098;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2288E19DC;
  aBlock[3] = &block_descriptor_1;
  v12 = _Block_copy(aBlock);

  [v10 notifyObservers_];
  _Block_release(v12);
}

uint64_t sub_2288DF8E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v57 = a4;
  v49 = a3;
  v50 = a2;
  sub_2288E22C4(0, qword_2813DF3D0, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v49 - v7;
  v9 = sub_22892DF58();
  v55 = *(v9 - 8);
  v56 = v9;
  v10 = *(v55 + 64);
  MEMORY[0x28223BE20](v9);
  v54 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22892EDE8();
  v52 = *(v12 - 8);
  v53 = v12;
  v13 = *(v52 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v49 - v17;
  v19 = type metadata accessor for SleepingSampleCacheRange();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry(0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v24;
  v28 = *(v24 + 48);
  if (v28(a1, 1, v23) || (sub_2288BFD84(a1, v27, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry), sub_2288DFED0(v22), sub_2288C0C14(v27, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry), v29 = sub_2288CD2A4(v50), sub_2288C0C14(v22, type metadata accessor for SleepingSampleCacheRange), !v29))
  {
    sub_2288BFFF4(a1, v8, qword_2813DF3D0, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry);
    v37 = v28(v8, 1, v23);
    result = sub_2288E27DC(v8, qword_2813DF3D0, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry);
    if (v37 != 1)
    {
      v46 = 0;
      goto LABEL_12;
    }

    sub_22892EDC8();
    v39 = sub_22892EDD8();
    v40 = sub_22892F398();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v58 = v42;
      *v41 = 136446210;
      v43 = sub_22892F948();
      v45 = sub_2288B748C(v43, v44, &v58);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_2288B2000, v39, v40, "[%{public}s] Resetting cache token for samples added while cache is empty", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x22AAC47E0](v42, -1, -1);
      MEMORY[0x22AAC47E0](v41, -1, -1);
    }

    (*(v52 + 8))(v16, v53);
  }

  else
  {
    sub_22892EDC8();
    v30 = sub_22892EDD8();
    v31 = sub_22892F398();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v58 = v33;
      *v32 = 136446210;
      v34 = sub_22892F948();
      v36 = sub_2288B748C(v34, v35, &v58);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_2288B2000, v30, v31, "[%{public}s] Evicting cache for samples added in the cached range", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x22AAC47E0](v33, -1, -1);
      MEMORY[0x22AAC47E0](v32, -1, -1);
    }

    (*(v52 + 8))(v18, v53);
  }

  sub_2288E27DC(a1, qword_2813DF3D0, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry);
  v46 = 1;
  (*(v51 + 56))(a1, 1, 1, v23);
  v47 = v54;
  sub_22892DF48();
  v48 = type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State(0);
  result = (*(v55 + 40))(a1 + *(v48 + 20), v47, v56);
LABEL_12:
  *v57 = v46;
  return result;
}

uint64_t sub_2288DFED0@<X0>(uint64_t a1@<X8>)
{
  v89 = a1;
  sub_2288C0BA8();
  v106 = v2;
  v97 = *(v2 - 8);
  v3 = *(v97 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v101 = &v85 - v7;
  v103 = sub_22892E6D8();
  v105 = *(v103 - 8);
  v8 = *(v105 + 64);
  v9 = MEMORY[0x28223BE20](v103);
  v102 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v99 = &v85 - v11;
  sub_2288E22C4(0, &qword_2813DFEE0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v86 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v87 = &v85 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v85 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v100 = &v85 - v22;
  MEMORY[0x28223BE20](v21);
  v88 = &v85 - v23;
  v104 = sub_22892E048();
  v96 = *(v104 - 1);
  v24 = *(v96 + 64);
  MEMORY[0x28223BE20](v104);
  v26 = &v85 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_22892E478();
  v92 = *(v95 - 8);
  v27 = *(v92 + 64);
  MEMORY[0x28223BE20](v95);
  v29 = &v85 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_22892EFA8();
  v91 = *(v94 - 8);
  v30 = *(v91 + 64);
  MEMORY[0x28223BE20](v94);
  v32 = &v85 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_22892DDC8();
  v33 = *(v93 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v93);
  v36 = &v85 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_22892DEF8();
  v37 = *(v107 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v107);
  v40 = &v85 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = v1;
  sub_22892E758();
  sub_22892E708();
  sub_22892E468();
  (*(v92 + 8))(v29, v95);
  sub_22892EEC8();
  (*(v96 + 8))(v26, v104);
  (*(v91 + 8))(v32, v94);
  v94 = v40;
  sub_22892DD98();
  (*(v33 + 8))(v36, v93);
  v41 = *(*(v90 + *(type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry(0) + 20)) + 16);
  v42 = (v105 + 32);
  v43 = (v105 + 8);
  v44 = (v37 + 48);
  v95 = v37;
  v45 = v37 + 56;
  v46 = v41;
  v104 = v44;
  v105 = v45;

  v96 = result;
  if (v46)
  {
    v48 = 0;
    v49 = result + ((*(v97 + 80) + 32) & ~*(v97 + 80));
    v50 = *(v97 + 72);
    v98 = v6;
    do
    {
      v53 = v101;
      sub_2288BFD84(v49, v101, sub_2288C0BA8);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v108 = *v53;
        v51 = v108;
        v109 = *(v53 + 8);
        sub_2288B7AEC();
        swift_willThrowTypedImpl();

        v52 = v100;
        (*v105)(v100, 1, 1, v107);
      }

      else
      {
        v54 = v99;
        v55 = v53;
        v56 = v103;
        (*v42)(v99, v55, v103);
        v57 = v20;
        v58 = v42;
        v59 = v50;
        v60 = v46;
        v61 = v100;
        sub_22892E5B8();
        v62 = v54;
        v52 = v61;
        v46 = v60;
        v50 = v59;
        v42 = v58;
        v20 = v57;
        v6 = v98;
        (*v43)(v62, v56);
        if ((*v104)(v52, 1, v107) != 1)
        {
          sub_2288E27DC(v52, &qword_2813DFEE0, MEMORY[0x277CC9578]);
          goto LABEL_9;
        }
      }

      sub_2288E27DC(v52, &qword_2813DFEE0, MEMORY[0x277CC9578]);
      ++v48;
      v49 += v50;
    }

    while (v46 != v48);
    v48 = v46;
LABEL_9:
    result = v96;
  }

  else
  {
    v48 = 0;
  }

  v63 = *(result + 16);
  if (v48 == v63)
  {
    v64 = v88;
    v65 = v107;
    (*v105)(v88, 1, 1, v107);

    v66 = v95;
    goto LABEL_21;
  }

  if (!v63)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    return result;
  }

  v67 = v63 - 1;
  v68 = *(v97 + 72);
  v69 = result + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + v68 * (v63 - 1);
  v70 = -v68;
  while (1)
  {
    sub_2288BFD84(v69, v6, sub_2288C0BA8);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    v108 = *v6;
    v71 = v108;
    v109 = v6[8];
    sub_2288B7AEC();
    swift_willThrowTypedImpl();

    (*v105)(v20, 1, 1, v107);
LABEL_16:
    result = sub_2288E27DC(v20, &qword_2813DFEE0, MEMORY[0x277CC9578]);
    --v67;
    v69 += v70;
    if (v67 >= v63)
    {
      __break(1u);
      goto LABEL_23;
    }
  }

  v72 = v102;
  v73 = v103;
  (*v42)(v102, v6, v103);
  sub_22892E5B8();
  (*v43)(v72, v73);
  v74 = *v104;
  if ((*v104)(v20, 1, v107) == 1)
  {
    goto LABEL_16;
  }

  v75 = MEMORY[0x277CC9578];
  sub_2288E27DC(v20, &qword_2813DFEE0, MEMORY[0x277CC9578]);
  v76 = v87;
  sub_2288E1760(v69, v87);
  v77 = v86;
  sub_2288BFFF4(v76, v86, &qword_2813DFEE0, v75);
  v65 = v107;
  result = (v74)(v77, 1, v107);
  if (result == 1)
  {
    goto LABEL_24;
  }

  v66 = v95;
  v78 = v95 + 32;
  v64 = v88;
  (*(v95 + 32))(v88, v77, v65);
  sub_2288E27DC(v76, &qword_2813DFEE0, MEMORY[0x277CC9578]);
  (*(v78 + 24))(v64, 0, 1, v65);

LABEL_21:
  v79 = v89;
  sub_2288BC0FC(0, &qword_2813DEC40, 0x277CCD830);
  v80 = MEMORY[0x22AAC3A10](*MEMORY[0x277CCC938]);
  v81 = HKRollingBaselineConfigurationForQuantityType();

  [v81 maximumWindowDuration];
  v83 = v82;

  (*(v66 + 32))(v79, v94, v65);
  v84 = type metadata accessor for SleepingSampleCacheRange();
  result = sub_2288E284C(v64, v79 + *(v84 + 20));
  *(v79 + *(v84 + 24)) = v83;
  return result;
}

uint64_t sub_2288E09D4(uint64_t *a1, uint64_t a2, char a3)
{
  v5 = *a1;
  v6 = a1[1];
  ObjectType = swift_getObjectType();
  result = (*(v6 + 8))(a2, ObjectType, v6);
  if (a3)
  {
    swift_getObjectType();
    result = swift_conformsToProtocol2();
    if (result)
    {
      v9 = v5 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      v10 = result;
      v11 = swift_getObjectType();
      v12 = *(v10 + 16);
      swift_unknownObjectRetain();
      v12(a2, v11, v10);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

Swift::Void __swiftcall SleepingSampleDaySummaryCurrentValueCache.sleepingSampleDataTypesRemoved()()
{
  ObjectType = swift_getObjectType();
  v2 = *(v0 + OBJC_IVAR____TtC19HealthBalanceDaemon41SleepingSampleDaySummaryCurrentValueCache_state);
  v3 = *(*v2 + *MEMORY[0x277D841D0] + 16);
  v4 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v2 + v4));
  sub_2288E0C0C(v2 + v3, ObjectType);
  os_unfair_lock_unlock((v2 + v4));
  v5 = *(*(v0 + OBJC_IVAR____TtC19HealthBalanceDaemon41SleepingSampleDaySummaryCurrentValueCache_observers) + 16);
  aBlock[4] = sub_22891DD34;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2288E19DC;
  aBlock[3] = &block_descriptor_6;
  v6 = _Block_copy(aBlock);

  [v5 notifyObservers_];
  _Block_release(v6);
}

uint64_t sub_2288E0C0C(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v29 = sub_22892DF58();
  v3 = *(v29 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v29);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22892EDE8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22892EDC8();
  v12 = sub_22892EDD8();
  v13 = sub_22892F398();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v27 = v8;
    v15 = v14;
    v25 = swift_slowAlloc();
    v30 = v25;
    *v15 = 136446210;
    v16 = sub_22892F948();
    v28 = a1;
    v18 = sub_2288B748C(v16, v17, &v30);
    v26 = v7;
    v19 = v18;
    a1 = v28;

    *(v15 + 4) = v19;
    _os_log_impl(&dword_2288B2000, v12, v13, "[%{public}s] Evicting cache for samples removed", v15, 0xCu);
    v20 = v25;
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x22AAC47E0](v20, -1, -1);
    MEMORY[0x22AAC47E0](v15, -1, -1);

    (*(v27 + 8))(v11, v26);
  }

  else
  {

    (*(v8 + 8))(v11, v7);
  }

  sub_2288E27DC(a1, qword_2813DF3D0, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry);
  v21 = type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry(0);
  (*(*(v21 - 8) + 56))(a1, 1, 1, v21);
  sub_22892DF48();
  v22 = type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State(0);
  return (*(v3 + 40))(a1 + *(v22 + 20), v6, v29);
}

Swift::String __swiftcall SleepingSampleDaySummaryCurrentValueCache.diagnosticDescription()()
{
  v36 = sub_22892DEF8();
  v32 = *(v36 - 8);
  v1 = *(v32 + 64);
  MEMORY[0x28223BE20](v36);
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22892E778();
  v34 = *(v4 - 8);
  v35 = v4;
  v5 = *(v34 + 64);
  MEMORY[0x28223BE20](v4);
  v33 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288E22C4(0, qword_2813DF3D0, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry, MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v32 - v9;
  v11 = type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry(0);
  v12 = *(v11 - 1);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v0 + OBJC_IVAR____TtC19HealthBalanceDaemon41SleepingSampleDaySummaryCurrentValueCache_state);
  v17 = *(*v16 + *MEMORY[0x277D841D0] + 16);
  v18 = (*(*v16 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v16 + v18));
  sub_2288BFFF4(v16 + v17, v10, qword_2813DF3D0, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry);
  os_unfair_lock_unlock((v16 + v18));
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_2288E27DC(v10, qword_2813DF3D0, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry);
    v38 = 0;
    v39 = 0xE000000000000000;
    sub_22892F648();

    v38 = 0xD000000000000014;
    v39 = 0x8000000228933B30;
    sub_22892DED8();
    v19 = v33;
    sub_2288DEE24(v3, v33);
    (*(v32 + 8))(v3, v36);
    sub_2288C0C74(&qword_27D85B3E8, MEMORY[0x277D0FFD8]);
    v20 = v35;
    v21 = sub_22892F7E8();
    MEMORY[0x22AAC3770](v21);

    (*(v34 + 8))(v19, v20);
    v22 = v38;
    v23 = v39;
  }

  else
  {
    sub_2288E2948(v10, v15, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry);
    v38 = 0;
    v39 = 0xE000000000000000;
    sub_22892F648();
    MEMORY[0x22AAC3770](0xD000000000000010, 0x8000000228933B50);
    sub_2288C0C74(&qword_27D85B3E8, MEMORY[0x277D0FFD8]);
    v24 = sub_22892F7E8();
    MEMORY[0x22AAC3770](v24);

    MEMORY[0x22AAC3770](0x2E65756C6176202CLL, 0xEF203A746E756F63);
    v37 = *(*&v15[v11[5]] + 16);
    v25 = sub_22892F7E8();
    MEMORY[0x22AAC3770](v25);

    MEMORY[0x22AAC3770](0x486568636163202CLL, 0xED0000203A737469);
    v37 = *&v15[v11[6]];
    v26 = sub_22892F7E8();
    MEMORY[0x22AAC3770](v26);

    MEMORY[0x22AAC3770](0x657461657263202CLL, 0xEB00000000203A64);
    v27 = v11[7];
    sub_2288C0C74(&qword_27D85B550, MEMORY[0x277CC9578]);
    v28 = sub_22892F7E8();
    MEMORY[0x22AAC3770](v28);

    MEMORY[0x22AAC3770](41, 0xE100000000000000);
    v22 = v38;
    v23 = v39;
    sub_2288C0C14(v15, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry);
  }

  v29 = v22;
  v30 = v23;
  result._object = v30;
  result._countAndFlagsBits = v29;
  return result;
}

id SleepingSampleDaySummaryCurrentValueCache.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SleepingSampleDaySummaryCurrentValueCache.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2288E16B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();

  return sub_2288BBECC(a1, a3, v3);
}

id sub_2288E1708(uint64_t a1)
{
  swift_getObjectType();

  return sub_2288E1C68(a1, v1);
}

uint64_t sub_2288E1760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2288C0BA8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22892E6D8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288BFD84(a1, v7, sub_2288C0BA8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *v7;
    v13 = v16;
    v17 = v7[8];
    sub_2288B7AEC();
    swift_willThrowTypedImpl();

    v14 = sub_22892DEF8();
    return (*(*(v14 - 8) + 56))(a2, 1, 1, v14);
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    sub_22892E5B8();
    return (*(v9 + 8))(v12, v8);
  }
}

uint64_t sub_2288E1958(uint64_t a1, void (*a2)(void *))
{
  swift_unknownObjectRetain();
  swift_getObjectType();
  v4 = swift_conformsToProtocol2();
  if (v4 && a1)
  {
    v6[0] = a1;
    v6[1] = v4;
    a2(v6);
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_2288E19DC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_2288E1A3C(uint64_t a1, uint64_t a2)
{
  sub_2288C0BA8();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      do
      {
        sub_2288BFD84(v14, v11, sub_2288C0BA8);
        sub_2288BFD84(v15, v8, sub_2288C0BA8);
        sub_22892E6D8();
        sub_2288C0C74(&qword_27D85B5D8, MEMORY[0x277D0FFC8]);
        sub_2288E2788();
        sub_2288B7AEC();
        v17 = sub_22892F8E8();
        sub_2288C0C14(v8, sub_2288C0BA8);
        sub_2288C0C14(v11, sub_2288C0BA8);
        if ((v17 & 1) == 0)
        {
          break;
        }

        v15 += v16;
        v14 += v16;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

id sub_2288E1C88(uint64_t a1, uint64_t a2, uint64_t a3, Class a4, uint64_t a5, uint64_t a6)
{
  v11 = objc_allocWithZone(a4);

  return sub_2288E1CF8(a1, a2, a3, v11, a5, a6);
}

id sub_2288E1CF8(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v37 = a5;
  ObjectType = swift_getObjectType();
  v12 = type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State(0);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC19HealthBalanceDaemon41SleepingSampleDaySummaryCurrentValueCache_state;
  v18 = type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry(0);
  (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
  v19 = &v16[*(v13 + 28)];
  sub_22892DF48();
  sub_2288E28E0();
  v21 = *(v20 + 52);
  v22 = (*(v20 + 48) + 3) & 0x1FFFFFFFCLL;
  v23 = swift_allocObject();
  *(v23 + ((*(*v23 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_2288E2948(v16, v23 + *(*v23 + *MEMORY[0x277D841D0] + 16), type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State);
  *&a4[v17] = v23;
  v24 = &a4[OBJC_IVAR____TtC19HealthBalanceDaemon41SleepingSampleDaySummaryCurrentValueCache_changeDetector];
  *v24 = a1;
  *(v24 + 1) = a6;
  v25 = &a4[OBJC_IVAR____TtC19HealthBalanceDaemon41SleepingSampleDaySummaryCurrentValueCache_gregorianCalendarProvider];
  *v25 = a2;
  *(v25 + 1) = a3;
  swift_unknownObjectRetain();

  sub_22892F948();
  sub_2288BC0FC(0, &unk_2813DEB10, 0x277D86200);
  v26 = sub_22892F488();
  sub_2288E22C4(0, qword_2813DFB80, sub_2288E29B0, type metadata accessor for ObserverSet);
  v27 = swift_allocObject();
  v28 = objc_allocWithZone(MEMORY[0x277CCD738]);
  v29 = sub_22892F098();

  v30 = [v28 initWithName:v29 loggingCategory:v26];

  *(v27 + 16) = v30;
  *&a4[OBJC_IVAR____TtC19HealthBalanceDaemon41SleepingSampleDaySummaryCurrentValueCache_observers] = v27;
  v38.receiver = a4;
  v38.super_class = ObjectType;
  v31 = objc_msgSendSuper2(&v38, sel_init);
  v32 = objc_opt_self();
  v33 = v31;
  v34 = [v32 sharedDiagnosticManager];
  [v34 addObject_];

  (*(a6 + 8))(v33, &protocol witness table for SleepingSampleDaySummaryCurrentValueCache, 0, v37, a6);
  swift_unknownObjectRelease();

  return v33;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2288E213C()
{
  sub_2288E22C4(319, qword_2813DF3D0, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_22892DF58();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2288E21F0()
{
  sub_22892E778();
  if (v0 <= 0x3F)
  {
    sub_2288E22C4(319, &qword_2813DECF0, sub_2288C0BA8, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_22892DEF8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2288E22C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2288E2328(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry(0);
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288E22C4(0, qword_2813DF3D0, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry, MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25 - v11;
  sub_2288E26F4();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v15 + 56);
  sub_2288BFFF4(a1, v17, qword_2813DF3D0, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry);
  sub_2288BFFF4(a2, &v17[v18], qword_2813DF3D0, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_2288BFFF4(v17, v12, qword_2813DF3D0, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      sub_2288E2948(&v17[v18], v8, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry);
      if ((sub_22892E768() & 1) != 0 && (sub_2288E1A3C(*&v12[v4[5]], *&v8[v4[5]]) & 1) != 0 && *&v12[v4[6]] == *&v8[v4[6]])
      {
        v22 = v4[7];
        v23 = sub_22892DEB8();
        sub_2288C0C14(v8, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry);
        sub_2288C0C14(v12, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry);
        sub_2288E27DC(v17, qword_2813DF3D0, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry);
        if (v23)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_2288C0C14(v8, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry);
        sub_2288C0C14(v12, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry);
        sub_2288E27DC(v17, qword_2813DF3D0, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry);
      }

LABEL_14:
      v21 = 0;
      return v21 & 1;
    }

    sub_2288C0C14(v12, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry);
LABEL_7:
    sub_2288C0C14(v17, sub_2288E26F4);
    goto LABEL_14;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  sub_2288E27DC(v17, qword_2813DF3D0, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry);
LABEL_4:
  v20 = *(type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State(0) + 20);
  v21 = sub_22892DF28();
  return v21 & 1;
}

void sub_2288E26F4()
{
  if (!qword_27D85B5D0)
  {
    sub_2288E22C4(255, qword_2813DF3D0, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D85B5D0);
    }
  }
}

unint64_t sub_2288E2788()
{
  result = qword_27D85B5E0;
  if (!qword_27D85B5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D85B5E0);
  }

  return result;
}

uint64_t sub_2288E27DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2288E22C4(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2288E284C(uint64_t a1, uint64_t a2)
{
  sub_2288E22C4(0, &qword_2813DFEE0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2288E28E0()
{
  if (!qword_2813DEAB0)
  {
    type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State(255);
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_22892F688();
    if (!v1)
    {
      atomic_store(v0, &qword_2813DEAB0);
    }
  }
}

uint64_t sub_2288E2948(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_2288E29B0()
{
  result = qword_2813DF760[0];
  if (!qword_2813DF760[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_2813DF760);
  }

  return result;
}

uint64_t sub_2288E2A3C()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_22892F098();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    v3 = sub_22892F098();
    v4 = [v2 stringForKey_];

    if (v4)
    {
      v5 = sub_22892F0C8();
      v7 = v6;

      v8 = v5 == 1095587653 && v7 == 0xE400000000000000;
      if (v8 || (sub_22892F818() & 1) != 0)
      {

        return type metadata accessor for EWMABaselineCalculator();
      }

      if (v5 != 0x6942746E65636552 || v7 != 0xEA00000000007361)
      {
        sub_22892F818();
      }
    }
  }

  return type metadata accessor for RecentBiasBaselineCalculator();
}

uint64_t sub_2288E2BCC(uint64_t a1)
{
  sub_2288DB154();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_228931940;
  v3 = objc_opt_self();
  *(v2 + 32) = [v3 activeRemoteDeviceIsPresentWhenRequiredForRegionAvailabilityOrDeviceCapabilityForFeatureWithIdentifier_];
  *(v2 + 40) = [v3 capabilityIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier_];
  sub_22892E3A8();
  v4 = sub_22892F098();

  v5 = [v3 watchAppIsInstalledForBundleIdentifier_];

  *(v2 + 48) = v5;
  *(v2 + 56) = [v3 notAgeGatedForUserDefaultsKey_];
  return v2;
}

uint64_t sub_2288E2CD0()
{
  sub_2288DB154();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_228931950;
  v1 = objc_opt_self();
  sub_2288E3AAC(0, &unk_2813DE998, type metadata accessor for HKFeatureIdentifier, MEMORY[0x277D84560]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_228931960;
  v3 = *MEMORY[0x277CCC0E8];
  *(v2 + 32) = *MEMORY[0x277CCC0E8];
  type metadata accessor for HKFeatureIdentifier(0);
  v4 = v3;
  v5 = sub_22892F208();

  v6 = [v1 onboardingRecordsArePresentForPrerequisiteFeaturesWithIdentifiers_];

  *(v0 + 32) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_228930AF0;
  *(v7 + 32) = [objc_allocWithZone(MEMORY[0x277CCD408]) initWithFeatureIdentifier:v4 isOnWhenSettingIsAbsent:0];
  sub_2288BC0FC(0, qword_2813DEB80, 0x277CCD408);
  v8 = sub_22892F208();

  v9 = [v1 prerequisiteFeaturesAreOnWithFeatureSettings_];

  *(v0 + 40) = v9;
  *(v0 + 48) = [v1 wristDetectionIsEnabledForActiveWatch];
  return v0;
}

id sub_2288E2EA8()
{
  v0 = *MEMORY[0x277CCC0F0];
  sub_2288E3AAC(0, &qword_2813DE990, sub_2288E3B10, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228931970;
  v2 = *MEMORY[0x277CCBEB0];
  *(inited + 32) = *MEMORY[0x277CCBEB0];
  sub_2288DB154();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_228930AF0;
  v4 = v2;
  sub_2288E2BCC(v0);
  sub_2288E3BE8(0, &unk_2813DEBA8, &protocolRef_HKFeatureAvailabilityRequirement);
  v5 = sub_22892F208();

  *(v3 + 32) = v5;
  v6 = *MEMORY[0x277CCBE10];
  *(inited + 40) = v3;
  *(inited + 48) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_228931950;
  v8 = v6;
  sub_2288E2BCC(v0);
  v9 = sub_22892F208();

  *(v7 + 32) = v9;
  sub_2288E2CD0();
  v10 = sub_22892F208();

  *(v7 + 40) = v10;
  v11 = objc_opt_self();
  v12 = *MEMORY[0x277CCC158];
  *(v7 + 48) = [v11 onboardingUserDefaultsKeyIsPresent_];
  v13 = *MEMORY[0x277CCBE38];
  *(inited + 56) = v7;
  *(inited + 64) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_228931950;
  v15 = v13;
  v44 = v0;
  sub_2288E2BCC(v0);
  v16 = sub_22892F208();

  *(v14 + 32) = v16;
  v17 = *MEMORY[0x277CCC250];
  *(v14 + 40) = [v11 notAgeGatedForUserDefaultsKey_];
  *(v14 + 48) = [v11 onboardingUserDefaultsKeyIsNotPresent_];
  v18 = *MEMORY[0x277CCBE50];
  *(inited + 72) = v14;
  *(inited + 80) = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_228931950;
  v20 = v18;
  sub_2288E2BCC(v0);
  v21 = sub_22892F208();

  *(v19 + 32) = v21;
  *(v19 + 40) = [v11 notAgeGatedForUserDefaultsKey_];
  *(v19 + 48) = [v11 onboardingUserDefaultsKeyIsNotPresent_];
  v22 = *MEMORY[0x277CCBE68];
  *(inited + 88) = v19;
  *(inited + 96) = v22;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_228930AF0;
  v24 = *MEMORY[0x277CCE3A8];
  v45 = *MEMORY[0x277CCE3A8];
  v25 = v22;
  *(v23 + 32) = [v11 notificationAuthorizedWithBundleIdentifier_];
  v26 = *MEMORY[0x277CCBE70];
  *(inited + 104) = v23;
  *(inited + 112) = v26;
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_228931950;
  v28 = v26;
  sub_2288E2BCC(v44);
  v29 = sub_22892F208();

  *(v27 + 32) = v29;
  *(v27 + 40) = [v11 notAgeGatedForUserDefaultsKey_];
  *(v27 + 48) = [v11 onboardingUserDefaultsKeyIsPresent_];
  v30 = *MEMORY[0x277CCBEA0];
  *(inited + 120) = v27;
  *(inited + 128) = v30;
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_228931980;
  v32 = v30;
  sub_2288E2BCC(v44);
  v33 = sub_22892F208();

  *(v31 + 32) = v33;
  sub_2288E2CD0();
  v34 = sub_22892F208();

  *(v31 + 40) = v34;
  *(v31 + 48) = [v11 notificationAuthorizedWithBundleIdentifier_];
  *(v31 + 56) = [v11 onboardingUserDefaultsKeyIsPresent_];
  *(v31 + 64) = [v11 notificationsOnForUserDefaultsKey_];
  v35 = *MEMORY[0x277CCBEA8];
  *(inited + 136) = v31;
  *(inited + 144) = v35;
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_228930B00;
  v37 = v35;
  sub_2288E2BCC(v44);
  v38 = sub_22892F208();

  *(v36 + 32) = v38;
  *(v36 + 40) = [v11 notificationsOnForUserDefaultsKey_];
  *(inited + 152) = v36;
  *(inited + 160) = sub_22892F438();
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_228930AF0;
  *(v39 + 32) = [v11 heartRateIsEnabledInPrivacy];
  *(inited + 168) = v39;
  sub_22891D2AC(inited);
  swift_setDeallocating();
  sub_2288E3B10();
  swift_arrayDestroy();
  v40 = objc_allocWithZone(MEMORY[0x277CCD420]);
  type metadata accessor for HKFeatureAvailabilityContext(0);
  sub_2288E3B80();
  sub_2288E3C48();
  v41 = sub_22892EFB8();

  v42 = [v40 initWithRequirementsByContext_];

  return v42;
}

id sub_2288E34E8(void *a1)
{
  sub_2288E3AAC(0, &unk_2813DFED0, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v36 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v36 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v36 - v13;
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v16 = result;
    v17 = [result isAppleWatch];

    if (v17)
    {
      v18 = sub_22892DF58();
      (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
    }

    else
    {
      v19 = HKNRCAPABILITY_HARMONIA();
      if (v19)
      {
        v20 = v19;
        sub_22892DF38();

        v21 = sub_22892DF58();
        (*(*(v21 - 8) + 56))(v9, 0, 1, v21);
      }

      else
      {
        v22 = sub_22892DF58();
        (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
      }

      sub_2288E38F8(v9, v12);
    }

    sub_2288E38F8(v12, v14);
    v36 = *MEMORY[0x277CCC0F0];
    v23 = sub_2288E2EA8();
    v37 = v14;
    sub_2288E398C(v14, v6);
    v24 = [objc_opt_self() uncheckedAvailability];
    v25 = [objc_allocWithZone(MEMORY[0x277D106E8]) init];
    sub_2288BC0FC(0, &unk_2813DEB10, 0x277D86200);
    v26 = sub_22892F488();
    v27 = sub_22892DF58();
    v28 = v6;
    v29 = *(v27 - 8);
    v30 = (*(v29 + 48))(v28, 1, v27);
    v31 = a1;
    v32 = 0;
    if (v30 != 1)
    {
      v32 = sub_22892DF18();
      (*(v29 + 8))(v28, v27);
    }

    v33 = objc_allocWithZone(MEMORY[0x277D106D8]);
    v34 = v36;
    v35 = [v33 initWithProfile:v31 featureIdentifier:v36 availabilityRequirements:v23 currentOnboardingVersion:1 pairedDeviceCapability:v32 regionAvailabilityProvider:v24 disableAndExpiryProvider:v25 loggingCategory:v26];

    sub_2288E3A20(v37);
    return v35;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id HKNRCAPABILITY_HARMONIA()
{
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"210C1233-537B-4A1E-8EE0-253962851B43"];

  return v0;
}

uint64_t sub_2288E38F8(uint64_t a1, uint64_t a2)
{
  sub_2288E3AAC(0, &unk_2813DFED0, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2288E398C(uint64_t a1, uint64_t a2)
{
  sub_2288E3AAC(0, &unk_2813DFED0, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2288E3A20(uint64_t a1)
{
  sub_2288E3AAC(0, &unk_2813DFED0, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2288E3AAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2288E3B10()
{
  if (!qword_2813DEBB8)
  {
    type metadata accessor for HKFeatureAvailabilityContext(255);
    sub_2288E3B80();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2813DEBB8);
    }
  }
}

void sub_2288E3B80()
{
  if (!qword_2813DED00)
  {
    sub_2288E3BE8(255, &qword_2813DEB98, &protocolRef_HKFeatureAvailabilityRequirementsProviding);
    v0 = sub_22892F288();
    if (!v1)
    {
      atomic_store(v0, &qword_2813DED00);
    }
  }
}

uint64_t sub_2288E3BE8(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3 | 1;
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_2288E3C48()
{
  result = qword_2813DEBE0;
  if (!qword_2813DEBE0)
  {
    type metadata accessor for HKFeatureAvailabilityContext(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813DEBE0);
  }

  return result;
}

char *sub_2288E3CF0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = v5;
  v43 = a4;
  ObjectType = swift_getObjectType();
  v12 = sub_22892E1E8();
  v41 = *(v12 - 8);
  v42 = v12;
  v13 = *(v41 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v5[OBJC_IVAR____TtC19HealthBalanceDaemon27SleepingSampleChangeManager_debounceQueue_removalOperation] = 0;
  v16 = sub_22892F098();
  v17 = HKCreateSerialDispatchQueue();

  *&v6[OBJC_IVAR____TtC19HealthBalanceDaemon27SleepingSampleChangeManager_debounceQueue] = v17;
  v18 = [a1 dataManager];
  *&v6[OBJC_IVAR____TtC19HealthBalanceDaemon27SleepingSampleChangeManager_dataManager] = v18;
  sub_2288BC0FC(0, &unk_2813DEB10, 0x277D86200);
  v19 = sub_22892F488();
  sub_2288E7228(0, qword_2813DFB80, sub_2288E29B0, type metadata accessor for ObserverSet);
  v20 = swift_allocObject();
  v21 = objc_allocWithZone(MEMORY[0x277CCD738]);
  v22 = sub_22892F098();
  v23 = [v21 initWithName:v22 loggingCategory:v19];

  *(v20 + 16) = v23;
  *&v6[OBJC_IVAR____TtC19HealthBalanceDaemon27SleepingSampleChangeManager_observers] = v20;
  v24 = &v6[OBJC_IVAR____TtC19HealthBalanceDaemon27SleepingSampleChangeManager_unitTest_didBeginObservingSleepingSampleDataTypes];
  *v24 = a2;
  v24[1] = a3;
  v25 = objc_opt_self();
  sub_2288C0764(a2);
  result = [v25 sharedBehavior];
  if (result)
  {
    v27 = result;
    v28 = [result isAppleInternalInstall];

    if (v28)
    {
    }

    else
    {
      v29 = 0;
    }

    *&v6[OBJC_IVAR____TtC19HealthBalanceDaemon27SleepingSampleChangeManager_settingsProvider] = v29;
    v45.receiver = v6;
    v45.super_class = ObjectType;
    v30 = objc_msgSendSuper2(&v45, sel_init);
    v31 = *&v30[OBJC_IVAR____TtC19HealthBalanceDaemon27SleepingSampleChangeManager_debounceQueue];
    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v33 = objc_allocWithZone(MEMORY[0x277CCDD98]);
    aBlock[4] = sub_2288E728C;
    aBlock[5] = v32;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2288F3CC4;
    aBlock[3] = &block_descriptor_20;
    v34 = _Block_copy(aBlock);
    v35 = v30;

    v36 = [v33 initWithMode:1 clock:1 queue:v31 delay:v34 block:a5];
    _Block_release(v34);

    v37 = *&v35[OBJC_IVAR____TtC19HealthBalanceDaemon27SleepingSampleChangeManager_debounceQueue_removalOperation];
    *&v35[OBJC_IVAR____TtC19HealthBalanceDaemon27SleepingSampleChangeManager_debounceQueue_removalOperation] = v36;

    [a1 registerProfileReadyObserver:v35 queue:0];
    if (*&v35[OBJC_IVAR____TtC19HealthBalanceDaemon27SleepingSampleChangeManager_settingsProvider])
    {
      v39 = v41;
      v38 = v42;
      (*(v41 + 104))(v15, *MEMORY[0x277D62628], v42);
      sub_22892E1F8();

      sub_2288C751C(a2);
      (*(v39 + 8))(v15, v38);
    }

    else
    {

      sub_2288C751C(a2);
    }

    return v35;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2288E4184()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_2288E41D8();
  }
}

void sub_2288E41D8()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_22892EDE8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22892EDC8();
  v7 = sub_22892EDD8();
  v8 = sub_22892F368();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    aBlock[0] = v10;
    *v9 = 136446210;
    v11 = sub_22892F948();
    v13 = sub_2288B748C(v11, v12, aBlock);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_2288B2000, v7, v8, "[%{public}s] sleeping samples removed, notifying observers", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AAC47E0](v10, -1, -1);
    MEMORY[0x22AAC47E0](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v14 = *(*(v1 + OBJC_IVAR____TtC19HealthBalanceDaemon27SleepingSampleChangeManager_observers) + 16);
  aBlock[4] = sub_22891DD34;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2288E19DC;
  aBlock[3] = &block_descriptor_23;
  v15 = _Block_copy(aBlock);

  [v14 notifyObservers_];
  _Block_release(v15);
}

id sub_2288E4424()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_22892E1E8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22892EDE8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22892EDC8();
  v13 = sub_22892EDD8();
  v14 = sub_22892F398();
  v15 = os_log_type_enabled(v13, v14);
  v33 = ObjectType;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v32 = v8;
    v17 = v16;
    v30 = v16;
    v31 = swift_slowAlloc();
    v34 = v31;
    *v17 = 136446210;
    v18 = sub_22892F948();
    v20 = v9;
    v21 = v7;
    v22 = v1;
    v23 = v4;
    v24 = v3;
    v25 = sub_2288B748C(v18, v19, &v34);

    v26 = v30;
    *(v30 + 4) = v25;
    v3 = v24;
    v4 = v23;
    v1 = v22;
    v7 = v21;
    _os_log_impl(&dword_2288B2000, v13, v14, "[%{public}s] deinit", v26, 0xCu);
    v27 = v31;
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x22AAC47E0](v27, -1, -1);
    MEMORY[0x22AAC47E0](v26, -1, -1);

    (*(v20 + 8))(v12, v32);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  sub_2288E4724();
  if (*&v1[OBJC_IVAR____TtC19HealthBalanceDaemon27SleepingSampleChangeManager_settingsProvider])
  {
    (*(v4 + 104))(v7, *MEMORY[0x277D62628], v3);
    sub_22892E208();
    (*(v4 + 8))(v7, v3);
  }

  v35.receiver = v1;
  v35.super_class = v33;
  return objc_msgSendSuper2(&v35, sel_dealloc);
}

uint64_t sub_2288E4724()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_22892EDE8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22892EDC8();
  v7 = sub_22892EDD8();
  v8 = sub_22892F398();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136446210;
    v11 = sub_22892F948();
    v13 = sub_2288B748C(v11, v12, &v24);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_2288B2000, v7, v8, "[%{public}s] stop observing sleeping sample data types", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AAC47E0](v10, -1, -1);
    MEMORY[0x22AAC47E0](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v14 = sub_2288E62B0();
  v15 = v14;
  if (v14 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22892F588())
  {
    v17 = 0;
    v18 = OBJC_IVAR____TtC19HealthBalanceDaemon27SleepingSampleChangeManager_dataManager;
    while (1)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x22AAC3CC0](v17, v15);
      }

      else
      {
        if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v19 = *(v15 + 8 * v17 + 32);
      }

      v20 = v19;
      v21 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      [*(v1 + v18) removeObserver:v1 forDataType:v19];

      ++v17;
      if (v21 == i)
      {
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }
}

uint64_t sub_2288E4A4C()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_22892EDE8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22892EDC8();
  v7 = sub_22892EDD8();
  v8 = sub_22892F398();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v9 = 136446210;
    v11 = sub_22892F948();
    v13 = sub_2288B748C(v11, v12, &v26);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_2288B2000, v7, v8, "[%{public}s] start observing sleeping sample data types", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AAC47E0](v10, -1, -1);
    MEMORY[0x22AAC47E0](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v14 = sub_2288E62B0();
  v15 = v14;
  if (v14 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22892F588())
  {
    v17 = 0;
    v18 = OBJC_IVAR____TtC19HealthBalanceDaemon27SleepingSampleChangeManager_dataManager;
    while (1)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x22AAC3CC0](v17, v15);
      }

      else
      {
        if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v19 = *(v15 + 8 * v17 + 32);
      }

      v20 = v19;
      v21 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      [*(v1 + v18) addObserver:v1 forDataType:v19];

      ++v17;
      if (v21 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  v23 = *(v1 + OBJC_IVAR____TtC19HealthBalanceDaemon27SleepingSampleChangeManager_unitTest_didBeginObservingSleepingSampleDataTypes);
  if (v23)
  {
    v24 = *(v1 + OBJC_IVAR____TtC19HealthBalanceDaemon27SleepingSampleChangeManager_unitTest_didBeginObservingSleepingSampleDataTypes + 8);
    return v23(v1);
  }

  return result;
}

uint64_t sub_2288E4D40(unint64_t a1)
{
  v2 = sub_22892DEF8();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v63 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v62 = &v54 - v6;
  isUniquelyReferenced_nonNull_native = sub_22892DDC8();
  v66 = *(isUniquelyReferenced_nonNull_native - 8);
  v8 = *(v66 + 64);
  v9 = MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
  v55 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v54 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v54 = &v54 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v54 - v16;
  v18 = sub_22891D398(MEMORY[0x277D84F90]);
  v19 = a1;
  v20 = v18;
  if (v19 >> 62)
  {
LABEL_28:
    v51 = v19;
    v52 = sub_22892F588();
    v19 = v51;
    v21 = v52;
    if (v52)
    {
      goto LABEL_3;
    }

    return v20;
  }

  v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v21)
  {
    return v20;
  }

LABEL_3:
  v22 = 0;
  v60 = v19;
  v61 = v19 & 0xC000000000000001;
  v64 = v66 + 8;
  v65 = (v66 + 16);
  v58 = v66 + 32;
  v59 = v21;
  v56 = v19 & 0xFFFFFFFFFFFFFF8;
  v57 = v66 + 40;
  v67 = v17;
  while (1)
  {
    if (v61)
    {
      v24 = MEMORY[0x22AAC3CC0](v22);
    }

    else
    {
      if (v22 >= *(v56 + 16))
      {
        goto LABEL_27;
      }

      v24 = *(v19 + 8 * v22 + 32);
    }

    v25 = v24;
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

    v68 = v22 + 1;
    v26 = [v24 startDate];
    sub_22892DEC8();

    v27 = [v25 endDate];
    sub_22892DEC8();

    sub_22892DD88();
    v28 = [v25 sampleType];
    v29 = v28;
    if (v20[2] && (v30 = sub_22891C6FC(v28), (v31 & 1) != 0))
    {
      v32 = v66;
      v33 = v54;
      (*(v66 + 16))(v54, v20[7] + *(v66 + 72) * v30, isUniquelyReferenced_nonNull_native);

      v34 = v55;
      sub_22892DDB8();
      v35 = *(v32 + 8);
      v36 = v33;
      v17 = v67;
      v35(v36, isUniquelyReferenced_nonNull_native);
      v35(v17, isUniquelyReferenced_nonNull_native);
      (*(v32 + 32))(v17, v34, isUniquelyReferenced_nonNull_native);
    }

    else
    {
    }

    v37 = [v25 sampleType];
    v38 = v13;
    v39 = v13;
    v13 = isUniquelyReferenced_nonNull_native;
    (*v65)(v39, v17, isUniquelyReferenced_nonNull_native);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v69 = v20;
    v40 = sub_22891C6FC(v37);
    v41 = v20[2];
    v42 = (v19 & 1) == 0;
    v43 = v41 + v42;
    if (__OFADD__(v41, v42))
    {
      goto LABEL_25;
    }

    v44 = v19;
    if (v20[3] < v43)
    {
      break;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_228905DEC();
    }

LABEL_21:
    isUniquelyReferenced_nonNull_native = v13;
    v20 = v69;
    v13 = v38;
    if (v44)
    {
      v23 = v66;
      (*(v66 + 40))(v69[7] + *(v66 + 72) * v40, v38, isUniquelyReferenced_nonNull_native);

      v17 = v67;
      (*(v23 + 8))(v67, isUniquelyReferenced_nonNull_native);
    }

    else
    {
      v69[(v40 >> 6) + 8] |= 1 << v40;
      *(v20[6] + 8 * v40) = v37;
      v47 = v66;
      (*(v66 + 32))(v20[7] + *(v66 + 72) * v40, v38, isUniquelyReferenced_nonNull_native);

      v17 = v67;
      (*(v47 + 8))(v67, isUniquelyReferenced_nonNull_native);
      v48 = v20[2];
      v49 = __OFADD__(v48, 1);
      v50 = v48 + 1;
      if (v49)
      {
        goto LABEL_26;
      }

      v20[2] = v50;
    }

    ++v22;
    v19 = v60;
    if (v68 == v59)
    {
      return v20;
    }
  }

  sub_228905910(v43, isUniquelyReferenced_nonNull_native);
  v45 = sub_22891C6FC(v37);
  if ((v44 & 1) == (v46 & 1))
  {
    v40 = v45;
    goto LABEL_21;
  }

  sub_2288BC0FC(0, &qword_2813DEC58, 0x277CCD8D8);
  result = sub_22892F858();
  __break(1u);
  return result;
}

id sub_2288E52F8(uint64_t a1)
{
  v2 = sub_22892EDE8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22892EDC8();
  v7 = sub_22892EDD8();
  v8 = sub_22892F368();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136446210;
    v11 = sub_22892F948();
    v13 = sub_2288B748C(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_2288B2000, v7, v8, "[%{public}s] sleeping samples removed, enqueuing observer notification", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AAC47E0](v10, -1, -1);
    MEMORY[0x22AAC47E0](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  result = *(a1 + OBJC_IVAR____TtC19HealthBalanceDaemon27SleepingSampleChangeManager_debounceQueue_removalOperation);
  if (result)
  {
    return [result execute];
  }

  return result;
}

uint64_t sub_2288E54E8(void *a1, uint64_t a2, uint64_t a3, void *a4, unint64_t *a5, uint64_t *a6, void (*a7)(uint64_t))
{
  sub_2288BC0FC(0, a5, a6);
  v10 = sub_22892F218();
  v11 = a4;
  v12 = a1;
  a7(v10);
}

void sub_2288E557C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v42 = a4;
  v43 = a5;
  v41 = a3;
  ObjectType = swift_getObjectType();
  v7 = sub_22892EDE8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22892E1E8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v16, *MEMORY[0x277D62628], v12);
  v17 = sub_22892E1D8();
  v19 = v18;
  (*(v13 + 8))(v16, v12);
  if (!a2)
  {

    v22 = 0;
LABEL_9:
    sub_2288E5C7C(v41, aBlock);
    v23 = v47;
    if (v47)
    {
      v24 = __swift_project_boxed_opaque_existential_1(aBlock, v47);
      v25 = *(v23 - 1);
      v26 = *(v25 + 64);
      MEMORY[0x28223BE20](v24);
      v28 = &v40 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v25 + 16))(v28);
      v29 = sub_22892F808();
      (*(v25 + 8))(v28, v23);
      __swift_destroy_boxed_opaque_existential_0(aBlock);
      if (v42)
      {
LABEL_11:
        type metadata accessor for NSKeyValueChangeKey(0);
        sub_2288E6FF4(&qword_27D85B140, type metadata accessor for NSKeyValueChangeKey);
        v30 = sub_22892EFB8();
LABEL_18:
        v50.receiver = v45;
        v50.super_class = ObjectType;
        objc_msgSendSuper2(&v50, sel_observeValueForKeyPath_ofObject_change_context_, v22, v29, v30, v43);

        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      v29 = 0;
      if (v42)
      {
        goto LABEL_11;
      }
    }

    v30 = 0;
    goto LABEL_18;
  }

  if (v17 == a1 && v19 == a2)
  {
  }

  else
  {
    v21 = sub_22892F818();

    if ((v21 & 1) == 0)
    {
      v22 = sub_22892F098();
      goto LABEL_9;
    }
  }

  sub_22892EDC8();
  v31 = sub_22892EDD8();
  v32 = sub_22892F398();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    aBlock[0] = v34;
    *v33 = 136446210;
    v35 = sub_22892F948();
    v37 = sub_2288B748C(v35, v36, aBlock);

    *(v33 + 4) = v37;
    _os_log_impl(&dword_2288B2000, v31, v32, "[%{public}s] Demo mode changed, notifying observers", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x22AAC47E0](v34, -1, -1);
    MEMORY[0x22AAC47E0](v33, -1, -1);
  }

  (*(v8 + 8))(v11, v7);
  v38 = *(*&v45[OBJC_IVAR____TtC19HealthBalanceDaemon27SleepingSampleChangeManager_observers] + 16);
  v48 = sub_22891DD34;
  v49 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2288E19DC;
  v47 = &block_descriptor_2;
  v39 = _Block_copy(aBlock);

  [v38 notifyObservers_];
  _Block_release(v39);
}

uint64_t sub_2288E5C7C(uint64_t a1, uint64_t a2)
{
  sub_2288DB300();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2288E5CF0(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v18[6] = *MEMORY[0x277D85DE8];
  v17 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v18[3] = &v17;
  v18[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v13 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v9 = &v16 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_2288E5E90(v9, v7, v3, a2);
  }

  else
  {
    v14 = v13;
    v15 = swift_slowAlloc();
    bzero(v15, v14);
    sub_2288E70C4(v15, v7, v18);
    v10 = v18[0];

    MEMORY[0x22AAC47E0](v15, -1, -1);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t sub_2288E5E90(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a3 >> 62)
  {
LABEL_25:
    v29 = a3 & 0xFFFFFFFFFFFFFF8;
    v23 = a3;
    v31 = sub_22892F588();
    v4 = v23;
  }

  else
  {
    v29 = a3 & 0xFFFFFFFFFFFFFF8;
    v31 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = a3;
  }

  v5 = 0;
  v6 = 0;
  v30 = v4 & 0xC000000000000001;
  v24 = v4;
  v28 = v4 + 32;
  v32 = a4 + 56;
LABEL_4:
  v26 = v5;
  while (v6 != v31)
  {
    if (v30)
    {
      v7 = MEMORY[0x22AAC3CC0](v6, v24);
    }

    else
    {
      if (v6 >= *(v29 + 16))
      {
        goto LABEL_24;
      }

      v7 = *(v28 + 8 * v6);
    }

    v8 = v7;
    if (__OFADD__(v6++, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v10 = *(a4 + 40);
    v11 = sub_22892F458();
    v12 = -1 << *(a4 + 32);
    v13 = v11 & ~v12;
    v14 = v13 >> 6;
    v15 = 1 << v13;
    if (((1 << v13) & *(v32 + 8 * (v13 >> 6))) != 0)
    {
      sub_2288BC0FC(0, &qword_2813DEC58, 0x277CCD8D8);
      v16 = *(*(a4 + 48) + 8 * v13);
      v17 = sub_22892F468();

      if ((v17 & 1) == 0)
      {
        v18 = ~v12;
        do
        {
          v13 = (v13 + 1) & v18;
          v14 = v13 >> 6;
          v15 = 1 << v13;
          if (((1 << v13) & *(v32 + 8 * (v13 >> 6))) == 0)
          {
            goto LABEL_5;
          }

          v19 = *(*(a4 + 48) + 8 * v13);
          v20 = sub_22892F468();
        }

        while ((v20 & 1) == 0);
      }

      v21 = a1[v14];
      a1[v14] = v21 | v15;
      if ((v21 & v15) == 0)
      {
        v5 = v26 + 1;
        if (!__OFADD__(v26, 1))
        {
          goto LABEL_4;
        }

        __break(1u);
        break;
      }
    }

    else
    {
LABEL_5:
    }
  }

  return sub_2288E60C8(a1, a2, v26, a4);
}

uint64_t sub_2288E60C8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_2288E70F8();
  result = sub_22892F618();
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
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(v9 + 40);
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_22892F458();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + 8 * v21) = v17;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_2288E62B0()
{
  v0 = sub_22892E508();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22892E4F8();
  v6 = *(v5 + 16);
  if (v6)
  {
    v16 = MEMORY[0x277D84F90];
    sub_22892F6C8();
    v8 = v1 + 16;
    v7 = *(v1 + 16);
    v14[1] = v5;
    v15 = v7;
    v9 = v5 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v10 = *(v1 + 72);
    v11 = (v8 - 8);
    do
    {
      v15(v4, v9, v0);
      sub_22892E4E8();
      (*v11)(v4, v0);
      sub_22892F6A8();
      v12 = *(v16 + 16);
      sub_22892F6D8();
      sub_22892F6E8();
      sub_22892F6B8();
      v9 += v10;
      --v6;
    }

    while (v6);

    return v16;
  }

  else
  {

    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_2288E6450()
{
  swift_getObjectType();
  v0 = sub_22892EDE8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22892EDC8();
  v5 = sub_22892EDD8();
  v6 = sub_22892F398();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136446210;
    v9 = sub_22892F948();
    v11 = sub_2288B748C(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_2288B2000, v5, v6, "[%{public}s] profile ready", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AAC47E0](v8, -1, -1);
    MEMORY[0x22AAC47E0](v7, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  return sub_2288E4A4C();
}

uint64_t sub_2288E660C(unint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_22892EDE8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2288E4D40(a1);
  sub_22892EDC8();
  swift_bridgeObjectRetain_n();

  v10 = sub_22892EDD8();
  v11 = sub_22892F368();

  if (os_log_type_enabled(v10, v11))
  {
    v28 = v4;
    v29 = v2;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v12 = 136446722;
    v14 = sub_22892F948();
    v16 = sub_2288B748C(v14, v15, aBlock);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2050;
    if (a1 >> 62)
    {
      v17 = sub_22892F588();
    }

    else
    {
      v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v12 + 14) = v17;

    *(v12 + 22) = 2080;
    sub_2288BC0FC(0, &qword_2813DEC58, 0x277CCD8D8);
    sub_22892DDC8();
    sub_2288E716C();

    v18 = sub_22892EFD8();
    v20 = v19;

    v21 = sub_2288B748C(v18, v20, aBlock);

    *(v12 + 24) = v21;
    _os_log_impl(&dword_2288B2000, v10, v11, "[%{public}s] sleeping samples added %{public}ld - %s, notifying observers", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AAC47E0](v13, -1, -1);
    MEMORY[0x22AAC47E0](v12, -1, -1);

    (*(v5 + 8))(v8, v28);
    v2 = v29;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    (*(v5 + 8))(v8, v4);
  }

  v22 = *(v2 + OBJC_IVAR____TtC19HealthBalanceDaemon27SleepingSampleChangeManager_observers);
  v23 = swift_allocObject();
  *(v23 + 16) = v9;
  v24 = *(v22 + 16);
  v25 = swift_allocObject();
  *(v25 + 16) = sub_2288E71D4;
  *(v25 + 24) = v23;
  aBlock[4] = sub_2288E2098;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2288E19DC;
  aBlock[3] = &block_descriptor_14;
  v26 = _Block_copy(aBlock);

  [v24 notifyObservers_];
  _Block_release(v26);
}

uint64_t sub_2288E69E4(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22892F588())
  {
    v4 = sub_2288BC0FC(0, &qword_2813DEC58, 0x277CCD8D8);
    v5 = sub_2288E716C();
    result = MEMORY[0x22AAC3930](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x22AAC3CC0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_2288F3F88(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_22892F588();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_2288E6B24()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_22892EDE8();
  v34 = *(v3 - 8);
  v35 = v3;
  v4 = *(v34 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22892EDF8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_22892EE18();
  v12 = *(v36 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v36);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);

  v17 = sub_2288E69E4(v16);

  v18 = sub_2288E62B0();
  if ((v17 & 0xC000000000000001) != 0)
  {
    if (v17 >= 0)
    {
      v17 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    v19 = sub_22892F588();
    v17 = sub_2288F424C(v17, v19);
  }

  v20 = sub_2288E5CF0(v18, v17);

  if ((v20 & 0xC000000000000001) != 0)
  {
    v21 = sub_22892F588();
  }

  else
  {
    v21 = *(v20 + 16);
  }

  if (v21 < 1)
  {
    sub_22892EDC8();
    v27 = sub_22892EDD8();
    v28 = sub_22892F368();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      aBlock[0] = v30;
      *v29 = 136446210;
      v31 = sub_22892F948();
      v33 = sub_2288B748C(v31, v32, aBlock);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_2288B2000, v27, v28, "[%{public}s] Ignoring sample removal observation for unregistered samples", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x22AAC47E0](v30, -1, -1);
      MEMORY[0x22AAC47E0](v29, -1, -1);
    }

    return (*(v34 + 8))(v6, v35);
  }

  else
  {
    v22 = *&v1[OBJC_IVAR____TtC19HealthBalanceDaemon27SleepingSampleChangeManager_debounceQueue];
    v23 = swift_allocObject();
    *(v23 + 16) = v1;
    *(v23 + 24) = ObjectType;
    aBlock[4] = sub_2288E6FEC;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2288F3CC4;
    aBlock[3] = &block_descriptor_5;
    v24 = _Block_copy(aBlock);
    v25 = v1;
    sub_22892EE08();
    v37 = MEMORY[0x277D84F90];
    sub_2288E6FF4(qword_2813DEE40, MEMORY[0x277D85198]);
    sub_2288E7228(0, &unk_27D85BD90, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_2288E703C();
    sub_22892F548();
    MEMORY[0x22AAC3A70](0, v15, v11, v24);
    _Block_release(v24);
    (*(v8 + 8))(v11, v7);
    (*(v12 + 8))(v15, v36);
  }
}

uint64_t sub_2288E6FF4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2288E703C()
{
  result = qword_27D85B7B0;
  if (!qword_27D85B7B0)
  {
    sub_2288E7228(255, &unk_27D85BD90, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D85B7B0);
  }

  return result;
}

uint64_t sub_2288E70C4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_2288E5E90(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

void sub_2288E70F8()
{
  if (!qword_27D85B7B8)
  {
    sub_2288BC0FC(255, &qword_2813DEC58, 0x277CCD8D8);
    sub_2288E716C();
    v0 = sub_22892F628();
    if (!v1)
    {
      atomic_store(v0, &qword_27D85B7B8);
    }
  }
}

unint64_t sub_2288E716C()
{
  result = qword_2813DEC50;
  if (!qword_2813DEC50)
  {
    sub_2288BC0FC(255, &qword_2813DEC58, 0x277CCD8D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813DEC50);
  }

  return result;
}

uint64_t sub_2288E71D4(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = a1[1];
  ObjectType = swift_getObjectType();
  return (*(v4 + 8))(v2, ObjectType, v4);
}

void sub_2288E7228(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2288E72B4()
{
  v1 = v0;
  aBlock[6] = *MEMORY[0x277D85DE8];
  swift_getObjectType();
  v2 = sub_22892EDE8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x277D84F90];
  v7 = swift_allocObject();
  *(v7 + 16) = &v33;
  v8 = swift_allocObject();
  v8[2] = sub_2288B3B68;
  v8[3] = v7;
  aBlock[4] = sub_2288B3B70;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2288B3B98;
  aBlock[3] = &block_descriptor_9;
  v9 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v10 = [v1 enumerateWithError:aBlock handler:v9];
  _Block_release(v9);
  v11 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (v10)
  {
    v13 = v33;
  }

  else
  {
    v14 = sub_22892DE38();

    swift_willThrow();

    sub_22892EDC8();
    v15 = v14;
    v16 = sub_22892EDD8();
    v17 = sub_22892F378();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v32 = v3;
      v20 = v19;
      v21 = swift_slowAlloc();
      aBlock[0] = v21;
      *v18 = 136446466;
      v22 = sub_22892F948();
      v24 = sub_2288B748C(v22, v23, aBlock);
      v31 = v2;
      v25 = v24;

      *(v18 + 4) = v25;
      *(v18 + 12) = 2114;
      v26 = v14;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 14) = v27;
      *v20 = v27;
      _os_log_impl(&dword_2288B2000, v16, v17, "[%{public}s Failed to enumerate sleep day summaries: %{public}@", v18, 0x16u);
      sub_2288DDB10(v20);
      MEMORY[0x22AAC47E0](v20, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x22AAC47E0](v21, -1, -1);
      MEMORY[0x22AAC47E0](v18, -1, -1);

      (*(v32 + 8))(v6, v31);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }

    v13 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];
  return v13;
}

BOOL sub_2288E76A0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (*(a1 + 8) == 1)
  {
    if (v3 == 1)
    {
LABEL_4:
      sub_2288BC0FC(0, &qword_2813DEB30, 0x277D82BB8);
      return sub_22892F468() & 1;
    }

    return 0;
  }

  return v3 == 2 && *a2 == 0;
}

id sub_2288E772C(double a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate_];
  v2 = sub_22892DFF8();
  v3 = [v1 hk:v2 morningIndexWithCalendar:?];

  return v3;
}

void *sub_2288E77AC()
{
  v17[1] = *MEMORY[0x277D85DE8];
  v17[0] = 0;
  v1 = swift_allocObject();
  *(v1 + 16) = v17;
  v2 = swift_allocObject();
  v2[2] = sub_2288E8638;
  v2[3] = v1;
  aBlock[4] = sub_2288E87A0;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2288B3B98;
  aBlock[3] = &block_descriptor_19;
  v3 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v4 = [v0 enumerateWithError:aBlock handler:v3];
  _Block_release(v3);
  v5 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (!v4)
  {
    v8 = sub_22892DE38();

    swift_willThrow();
    aBlock[0] = v8;
    v9 = v8;
    sub_2288CA734();
    sub_2288BC0FC(0, &qword_27D85B098, 0x277CCA9B8);
    if (swift_dynamicCast())
    {

      v10 = [v15 hk_isDatabaseAccessibilityError];
      sub_2288E8674();
      swift_allocError();
      *v11 = v15;
      if (v10)
      {
        *(v11 + 8) = 1;
      }

      else
      {
        *(v11 + 8) = 0;
      }

      swift_willThrow();
    }

    goto LABEL_12;
  }

  v7 = v17[0];
  if (!v17[0])
  {
    sub_2288E8674();
    swift_allocError();
    *v12 = 0;
    *(v12 + 8) = 2;
    swift_willThrow();
LABEL_12:
    v7 = v17[0];

    goto LABEL_13;
  }

LABEL_13:
  v13 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t sub_2288E7AA0(uint64_t a1, double a2)
{
  v4 = sub_22892DEF8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  sub_22892DEC8();

  v11 = v10(v8, a2);

  (*(v5 + 8))(v8, v4);
  return v11;
}

id sub_2288E7BAC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v93 = *MEMORY[0x277D85DE8];
  v84 = sub_22892E048();
  v8 = *(v84 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v84);
  v74 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288E8554(0, &qword_2813DFEA8, MEMORY[0x277CC9A70]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v66 - v12;
  sub_2288E8554(0, &qword_2813DFEB0, MEMORY[0x277CC99E8]);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v66 - v16;
  v18 = sub_22892DE18();
  v77 = *(v18 - 8);
  v78 = v18;
  v19 = *(v77 + 64);
  MEMORY[0x28223BE20](v18);
  v79 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22892DEF8();
  v75 = *(v21 - 8);
  v76 = v21;
  v22 = *(v75 + 64);
  MEMORY[0x28223BE20](v21);
  v80 = &v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_22892DDC8();
  v82 = *(v24 - 8);
  v83 = v24;
  v25 = *(v82 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v66 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_22892EF68();
  v85 = a3;
  sub_22892EEC8();
  v86 = a1;
  v28 = [a1 daemon];
  if (v28 && (v29 = v28, v30 = [v28 behavior], v29, LODWORD(v29) = objc_msgSend(v30, sel_supportsCachedSleepDaySummaryQueries), v30, v29))
  {
    v31 = [v86 sourceManager];
    aBlock = 0;
    v32 = [v31 localDeviceSourceWithError_];

    v33 = aBlock;
    if (v32)
    {
      v71 = "SleepingSampleAggregator_";
      v73 = v4;
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v70 = v32;
      v35 = ObjCClassFromMetadata;
      v36 = v33;
      v66 = v35;
      v72 = [v35 sleepAnalysisQueryDescriptorForDateInterval:0 options:32];
      v69 = sub_2288BC0FC(0, &qword_27D85B7C0, 0x277CCD9B0);
      sub_22892DD98();
      v37 = v84;
      (*(v8 + 56))(v17, 1, 1, v84);
      v38 = sub_22892E058();
      (*(*(v38 - 8) + 56))(v13, 1, 1, v38);
      sub_22892DE08();
      v39 = v74;
      (*(v8 + 16))(v74, v85, v37);
      v40 = (*(v8 + 80) + 16) & ~*(v8 + 80);
      v41 = swift_allocObject();
      v68 = v8;
      (*(v8 + 32))(v41 + v40, v39, v37);
      v42 = objc_allocWithZone(MEMORY[0x277D10840]);
      v74 = v86;
      v43 = v70;
      v71 = sub_22892F098();
      v70 = swift_getObjCClassFromMetadata();
      v69 = sub_22892DD58();
      v44 = sub_22892DE58();
      v45 = sub_22892DDD8();
      v67 = v45;
      v91 = sub_2288E85A8;
      v92 = v41;
      aBlock = MEMORY[0x277D85DD0];
      v88 = 1107296256;
      v89 = sub_2288E7AA0;
      v90 = &block_descriptor_3;
      v46 = _Block_copy(&aBlock);
      v65 = v45;
      v47 = v42;
      v48 = v74;
      v49 = v71;
      v50 = v72;
      v51 = v69;
      v52 = [v47 initWithProfile:v74 cachingIdentifier:v71 sourceEntity:v43 queryDescriptor:v72 cachedClass:v70 queryInterval:v69 anchorDate:v44 intervalComponents:v65 timeIntervalToBucketIndex:v46];
      _Block_release(v46);

      (*(v77 + 8))(v79, v78);
      (*(v75 + 8))(v80, v76);

      if (v52)
      {
        v53 = [v66 sleepTypesQueryDescriptorsForDateInterval:0 options:32];
        if (!v53)
        {
          sub_2288BC0FC(0, &qword_27D85B7C8, 0x277D10820);
          sub_22892F218();
          v53 = sub_22892F208();
        }

        [v52 setInvalidationQueryDescriptors_];
      }

      v8 = v68;
    }

    else
    {
      v63 = aBlock;
      v64 = sub_22892DE38();

      swift_willThrow();
      v52 = 0;
    }
  }

  else
  {
    v52 = 0;
  }

  v54 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v55 = v85;
  v56 = sub_22892DFF8();
  aBlock = 0;
  v88 = 0xE000000000000000;
  sub_22892F648();

  aBlock = 0xD000000000000019;
  v88 = 0x8000000228933E80;
  v57 = sub_22892EFA8();
  sub_2288DDA38();
  v58 = sub_22892F7E8();
  MEMORY[0x22AAC3770](v58);

  v59 = sub_22892F098();

  v60 = [v54 initWithProfile:v86 cachingSession:v52 gregorianCalendar:v56 morningIndexRange:v81 ascending:1 options:1 debugIdentifier:{32, v59}];

  (*(v8 + 8))(v55, v84);
  (*(*(v57 - 8) + 8))(a2, v57);
  (*(v82 + 8))(v27, v83);
  v61 = *MEMORY[0x277D85DE8];
  return v60;
}

void sub_2288E8554(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22892F498();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_2288E85A8(double a1)
{
  v2 = *(*(sub_22892E048() - 8) + 80);

  return sub_2288E772C(a1);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2288E8638(void *a1, _BYTE *a2)
{
  v4 = *(v2 + 16);
  v5 = *v4;
  *v4 = a1;
  v6 = a1;

  *a2 = 1;
}

unint64_t sub_2288E8674()
{
  result = qword_27D85B7D0;
  if (!qword_27D85B7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D85B7D0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_So27HDSleepDaySummaryEnumeratorC19HealthBalanceDaemonE5ErrorO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_2288E86E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2288E872C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_2288E8770(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_2288E87A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = OBJC_IVAR____TtC19HealthBalanceDaemon43SleepingSampleAggregateDaySummaryEnumerator_gregorianDayRange;
  v11 = sub_22892E478();
  result = (*(*(v11 - 8) + 32))(v9 + v10, a2, v11);
  *a3 = v9;
  return result;
}

uint64_t sub_2288E8858()
{
  result = sub_22892E478();
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

uint64_t sub_2288E88F8()
{
  v1 = v0;
  sub_2288B5D1C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v29[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_22892E478();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v29[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = OBJC_IVAR____TtC19HealthBalanceDaemon43SleepingSampleAggregateDaySummaryEnumerator_gregorianDayRange;
  swift_beginAccess();
  (*(v7 + 16))(v10, v1 + v11, v6);
  v12 = *(v1 + 16);
  v13 = type metadata accessor for SleepingWristTemperatureAggregateEnumerator();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  sub_2288D72B8(v10, v12);
  sub_2288C3FDC();
  v17 = v16;
  v18 = swift_allocBox();
  v20 = v19;
  swift_beginAccess();
  sub_22892E438();
  swift_endAccess();
  sub_2288BB5F8(v5, v20, sub_2288B5D1C);
  v21 = *(v17 + 36);
  v22 = sub_22892EFA8();
  v23 = *(v22 - 8);
  (*(v23 + 16))(v20 + v21, v5, v22);
  sub_2288BA82C(v5, sub_2288B5D1C);
  (*(v23 + 56))(v20 + v21, 0, 1, v22);
  v24 = sub_2288D7EC8();

  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  v26 = swift_allocObject();
  v26[2] = v25;
  v26[3] = v18;
  v26[4] = v24;
  v26[5] = v1;
  sub_2288EADC8();
  v27 = swift_allocObject();
  *(v27 + 16) = sub_2288EADBC;
  *(v27 + 24) = v26;

  return v27;
}

uint64_t sub_2288E8BD8@<X0>(uint64_t a1@<X0>, void (*a2)(_BYTE *, uint64_t)@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v124 = a3;
  v137 = a2;
  v145 = a4;
  v128 = sub_22892E048();
  v127 = *(v128 - 8);
  v5 = *(v127 + 64);
  v6 = MEMORY[0x28223BE20](v128);
  v125 = &v117[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v126 = &v117[-v8];
  v9 = sub_22892E5A8();
  v131 = *(v9 - 8);
  v10 = *(v131 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v129 = &v117[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v143 = &v117[-v13];
  sub_2288EAF58();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v136 = &v117[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2288EAFE8(0, &qword_2813DE938, MEMORY[0x277D0FF90], sub_2288D7E74);
  v135 = v17;
  v134 = *(v17 - 8);
  v18 = *(v134 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v130 = &v117[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19);
  v132 = &v117[-v21];
  sub_2288C3774();
  v23 = v22;
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v117[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2288C36E0();
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v139 = &v117[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = MEMORY[0x28223BE20](v29);
  v140 = &v117[-v32];
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v117[-v34];
  MEMORY[0x28223BE20](v33);
  v37 = &v117[-v36];
  sub_2288BF284(0);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38 - 8);
  v142 = &v117[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v41 = sub_22892EFA8();
  v42 = *(v41 - 8);
  v43 = v42[8];
  v44 = MEMORY[0x28223BE20](v41);
  v123 = &v117[-((v45 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v46 = MEMORY[0x28223BE20](v44);
  v144 = &v117[-v47];
  MEMORY[0x28223BE20](v46);
  v141 = &v117[-v48];
  sub_2288C3FDC();
  v50 = v49;
  v51 = swift_projectBox();
  swift_beginAccess();
  v122 = a1;
  v52 = *(a1 + 16);
  v53 = v145;
  if (v52)
  {
    goto LABEL_15;
  }

  v119 = v9;
  swift_beginAccess();
  v54 = *(v50 + 36);
  v121 = v42[7];
  v121(v37, 1, 1, v41);
  v55 = *(v23 + 48);
  v120 = v54;
  sub_2288BB5F8(v51 + v54, v26, sub_2288C36E0);
  sub_2288BB5F8(v37, &v26[v55], sub_2288C36E0);
  v133 = v42;
  v56 = v42[6];
  v57 = v56(v26, 1, v41);
  v138 = v56;
  if (v57 != 1)
  {
    sub_2288BB5F8(v26, v35, sub_2288C36E0);
    if (v56(&v26[v55], 1, v41) != 1)
    {
      v78 = v133;
      v79 = &v26[v55];
      v80 = v144;
      (v133[4])(v144, v79, v41);
      sub_2288BB548(&unk_2813DEE10, MEMORY[0x277CCB6A8]);
      v118 = sub_22892F088();
      v81 = v78[1];
      v81(v80, v41);
      sub_2288BA82C(v37, sub_2288C36E0);
      v81(v35, v41);
      sub_2288BA82C(v26, sub_2288C36E0);
      v60 = v41;
      v61 = v142;
      if (v118)
      {
        v58 = 1;
        v66 = v143;
        v67 = v145;
        v62 = v133;
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    sub_2288BA82C(v37, sub_2288C36E0);
    (v133[1])(v35, v41);
    v60 = v41;
    v61 = v142;
LABEL_7:
    sub_2288BA82C(v26, sub_2288C3774);
LABEL_8:
    v63 = v120;
    v64 = v140;
    sub_2288BB5F8(v51 + v120, v140, sub_2288C36E0);
    result = v138(v64, 1, v60);
    if (result == 1)
    {
      goto LABEL_25;
    }

    v62 = v133;
    (v133[4])(v61, v64, v60);
    v26 = v139;
    sub_2288BB660(v51 + v63, v139, sub_2288C36E0);
    sub_2288C37D8(v26, v51 + v63);
    v58 = 0;
    goto LABEL_10;
  }

  sub_2288BA82C(v37, sub_2288C36E0);
  v58 = 1;
  v59 = v56(&v26[v55], 1, v41);
  v60 = v41;
  v61 = v142;
  if (v59 != 1)
  {
    goto LABEL_7;
  }

  v62 = v133;
LABEL_10:
  sub_2288BA82C(v26, sub_2288C36E0);
  v66 = v143;
  v67 = v145;
LABEL_11:
  v121(v61, v58, 1, v60);
  swift_endAccess();
  v68 = v138(v61, 1, v60);
  v69 = v144;
  if (v68 == 1)
  {
    sub_2288BA82C(v61, sub_2288BF284);
    v53 = v67;
LABEL_15:
    sub_2288EAFE8(0, &qword_2813DE910, MEMORY[0x277D100B8], sub_2288B7AEC);
    v74 = v73;
    v75 = *(*(v73 - 8) + 56);
    v76 = v53;
    v77 = 1;
    return v75(v76, v77, 1, v74);
  }

  v70 = v62[4];
  v71 = v141;
  (v70)(v141, v61, v60);
  v72 = v136;
  sub_22892F7A8();
  if ((*(v134 + 48))(v72, 1, v135) == 1)
  {
    (v62[1])(v71, v60);
    sub_2288BA82C(v72, sub_2288EAF58);
    v53 = v145;
    goto LABEL_15;
  }

  v82 = v72;
  v83 = v132;
  sub_2288EB068(v82, v132);
  v84 = v130;
  sub_2288EB104(v83, v130);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2288EB2E0(v83);
    (v62[1])(v71, v60);
    v85 = *v84;
    v86 = v84[8] | 0x80;
    v108 = v145;
    *v145 = v85;
    *(v108 + 8) = v86;
    sub_2288EAFE8(0, &qword_2813DE910, MEMORY[0x277D100B8], sub_2288B7AEC);
    v110 = v109;
    swift_storeEnumTagMultiPayload();
    v75 = *(*(v110 - 8) + 56);
    v76 = v108;
LABEL_23:
    v77 = 0;
    v74 = v110;
    return v75(v76, v77, 1, v74);
  }

  v139 = v70;
  v87 = *(v131 + 32);
  v142 = (v131 + 32);
  v140 = v87;
  (v87)(v66, v84, v119);
  sub_22892E558();
  sub_2288BB548(&unk_2813DEE10, MEMORY[0x277CCB6A8]);
  v88 = sub_22892F088();
  v89 = v62[1];
  v138 = (v62 + 1);
  v137 = v89;
  result = (v89)(v69, v60);
  if (v88)
  {
    v90 = *(v124 + 16);
    v91 = v62[2];
    v92 = v123;
    v91(v123, v141, v60);
    swift_beginAccess();
    v93 = v90;
    v94 = v126;
    sub_22892E468();
    swift_endAccess();
    (*(v131 + 16))(v129, v143, v119);
    v95 = sub_2288BC0FC(0, &unk_2813DEBE8, 0x277D10868);
    v96 = v60;
    v97 = v144;
    v91(v144, v92, v96);
    v98 = v127;
    v99 = v125;
    v100 = v128;
    (*(v127 + 16))(v125, v94, v128);
    v101 = v93;
    v102 = sub_2288E7BAC(v101, v97, v99);

    (*(v98 + 8))(v94, v100);
    v147 = v95;
    v148 = &off_283BD4060;
    *&v146 = v102;
    v103 = type metadata accessor for SleepingSampleDaySummaryAggregator(0);
    v104 = *(v103 + 48);
    v105 = *(v103 + 52);
    v106 = swift_allocObject();
    v106[2] = v101;
    sub_2288D3C20(&v146, (v106 + 3));
    (v139)(v106 + OBJC_IVAR____TtC19HealthBalanceDaemonP33_162AF38C750857D76C80011061F645FA34SleepingSampleDaySummaryAggregator_morningIndex, v92, v96);
    (v140)(v106 + OBJC_IVAR____TtC19HealthBalanceDaemonP33_162AF38C750857D76C80011061F645FA34SleepingSampleDaySummaryAggregator_wristTemperature, v129, v119);
    v107 = v145;
    sub_2288E9D70(v145);

    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_0(v106 + 3);
    v111 = v137;
    v137(v106 + OBJC_IVAR____TtC19HealthBalanceDaemonP33_162AF38C750857D76C80011061F645FA34SleepingSampleDaySummaryAggregator_morningIndex, v96);
    v112 = *(v131 + 8);
    v113 = v119;
    v112(v106 + OBJC_IVAR____TtC19HealthBalanceDaemonP33_162AF38C750857D76C80011061F645FA34SleepingSampleDaySummaryAggregator_wristTemperature, v119);
    v114 = *(*v106 + 48);
    v115 = *(*v106 + 52);
    swift_deallocClassInstance();
    v112(v143, v113);
    sub_2288EB2E0(v132);
    v111(v141, v96);
    sub_2288EAFE8(0, &qword_2813DE910, MEMORY[0x277D100B8], sub_2288B7AEC);
    v110 = v116;
    swift_storeEnumTagMultiPayload();
    v75 = *(*(v110 - 8) + 56);
    v76 = v107;
    goto LABEL_23;
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}