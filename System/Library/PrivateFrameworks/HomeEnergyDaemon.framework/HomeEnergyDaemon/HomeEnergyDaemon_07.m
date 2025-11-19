void sub_22B1D3478(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, void *a7@<X7>, void **a8@<X8>, double a9@<D0>, double a10@<D1>, void *a11, uint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void **a24)
{
  v191 = a6;
  v192 = a7;
  v182 = a1;
  v183 = a8;
  v203[3] = *MEMORY[0x277D85DE8];
  v188 = sub_22B35DE9C();
  v181 = *(v188 - 8);
  v30 = *(v181 + 64);
  MEMORY[0x28223BE20](v188);
  v180 = v158 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = sub_22B36052C();
  v177 = *(v178 - 8);
  v32 = *(v177 + 64);
  MEMORY[0x28223BE20](v178);
  v175 = v158 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v173 = v158 - v35;
  MEMORY[0x28223BE20](v36);
  v174 = v158 - v37;
  MEMORY[0x28223BE20](v38);
  v176 = v158 - v39;
  v40 = type metadata accessor for CDUsageSummaryRecords();
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  v179 = v158 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA6B0, &unk_22B365850);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44 - 8);
  v184 = v158 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA688, &qword_22B365848);
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47 - 8);
  v185 = v158 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v52 = v158 - v51;
  v54 = MEMORY[0x28223BE20](v53);
  v56 = v158 - v55;
  v189 = MEMORY[0x23188EEB0](v54);
  v186 = v41;
  v57 = *(v41 + 56);
  v187 = v40;
  v57(v52, 1, 1, v40);
  v203[0] = 0;
  v193 = a2;
  v194 = a3;
  v195 = a4;
  v196 = a5;
  v197 = v191;
  v198 = v192;
  v199 = a11;
  v200 = v52;
  v201 = v203;
  v58 = v190;
  sub_22B360E7C();
  if (v58)
  {

    sub_22B123284(v52, &qword_27D8BA688, &qword_22B365848);
    objc_autoreleasePoolPop(v189);
LABEL_37:
    v157 = *MEMORY[0x277D85DE8];
    return;
  }

  v168 = a11;
  v158[1] = a2;
  v158[2] = a3;
  v158[3] = a4;
  v172 = a5;
  v171 = 0;
  v170 = a24;
  v166 = a21;
  v165 = a20;
  v164 = a19;
  v163 = a18;
  v162 = a17;
  v161 = a16;
  v160 = a15;
  v169 = a14;
  v167 = a13;
  v190 = a12;
  v59 = v184;
  sub_22B170BE0(v52, v184, &qword_27D8BA688, &qword_22B365848);
  v60 = v203[0];
  sub_22B123284(v52, &qword_27D8BA688, &qword_22B365848);
  objc_autoreleasePoolPop(v189);
  sub_22B170CD0(v59, v56, &qword_27D8BA688, &qword_22B365848);
  v61 = v185;
  sub_22B170BE0(v56, v185, &qword_27D8BA688, &qword_22B365848);
  v62 = v187;
  v63 = (*(v186 + 48))(v61, 1, v187);
  v159 = v60;
  if (v63 == 1)
  {
    sub_22B123284(v61, &qword_27D8BA688, &qword_22B365848);
    v64 = v188;
LABEL_14:
    v68 = v168;
    v76 = v182;
    goto LABEL_15;
  }

  v65 = v179;
  sub_22B1D8160(v61, v179);
  if (!v60)
  {
    sub_22B1D8310(v65);
    v64 = v188;
    goto LABEL_14;
  }

  v66 = *(v62 + 40);
  sub_22B1D81C4(&qword_28140B490, MEMORY[0x277CC9578]);
  v67 = v60;
  v64 = v188;
  if ((sub_22B36074C() & 1) == 0)
  {
    v192 = v67;
    v108 = v169;
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v109 = v178;
    v110 = __swift_project_value_buffer(v178, qword_28140BD10);
    swift_beginAccess();
    v111 = v177;
    v112 = v176;
    (*(v177 + 16))(v176, v110, v109);

    v113 = sub_22B36050C();
    v114 = sub_22B360D2C();

    if (os_log_type_enabled(v113, v114))
    {
      v115 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      v202 = v116;
      *v115 = 136315138;
      *(v115 + 4) = sub_22B1A7B20(v167, v108, &v202);
      _os_log_impl(&dword_22B116000, v113, v114, "[UsageSummaryRecords] Newer record exists for %s. Skip insert", v115, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v116);
      MEMORY[0x23188F650](v116, -1, -1);
      MEMORY[0x23188F650](v115, -1, -1);
      v117 = v192;

      (*(v111 + 8))(v176, v109);
    }

    else
    {
      v118 = v192;

      (*(v111 + 8))(v112, v109);
    }

    sub_22B1D8310(v65);
    v119 = v56;
    goto LABEL_35;
  }

  v189 = v56;
  v203[0] = 0;
  v68 = v168;
  v69 = v67;
  v70 = [v168 existingObjectWithID:v67 error:v203];
  v71 = v203[0];
  if (v70)
  {
    v72 = v70;
    sub_22B35FADC();
    v73 = swift_dynamicCastClass();
    v74 = qword_28140A0C8;
    v75 = v71;
    v76 = v182;
    if (v73)
    {
      v77 = v72;
      if (v74 != -1)
      {
        swift_once();
      }

      v78 = v178;
      v79 = __swift_project_value_buffer(v178, qword_28140BD10);
      swift_beginAccess();
      v80 = v174;
      (*(v177 + 16))(v174, v79, v78);
      v81 = v77;
      v82 = sub_22B36050C();
      v83 = sub_22B360D0C();

      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        *v84 = 138412290;
        *(v84 + 4) = v81;
        *v85 = v72;
        _os_log_impl(&dword_22B116000, v82, v83, "[UsageSummaryRecords] Got back object to update %@", v84, 0xCu);
        sub_22B123284(v85, &unk_27D8BAA90, &unk_22B362BC0);
        v86 = v85;
        v64 = v188;
        MEMORY[0x23188F650](v86, -1, -1);
        MEMORY[0x23188F650](v84, -1, -1);
      }

      else
      {

        v82 = v81;
      }

      v147 = v181;
      v148 = v180;

      (*(v177 + 8))(v80, v178);
      [v73 setBillLastPeriod_];
      v149 = sub_22B36081C();
      [v73 setCurrency_];

      v150 = sub_22B35DDDC();
      [v73 setEnd_];

      v151 = sub_22B35DCCC();
      [v73 setItems_];

      v152 = sub_22B35DDDC();
      [v73 setSourceTime_];

      v153 = sub_22B35DDDC();
      [v73 setStart_];

      sub_22B35FACC();
      [v73 setTotalConsumptionValue_];
      sub_22B35DE8C();
      v154 = sub_22B35DDDC();
      (*(v147 + 8))(v148, v64);
      [v73 setCreationDate_];

      sub_22B1D8310(v179);
      v119 = v189;
LABEL_35:
      sub_22B123284(v119, &qword_27D8BA688, &qword_22B365848);
      v107 = v183;
      v105 = v170;
      goto LABEL_36;
    }

    if (v74 != -1)
    {
      swift_once();
    }

    v136 = v178;
    v137 = __swift_project_value_buffer(v178, qword_28140BD10);
    swift_beginAccess();
    v138 = v173;
    (*(v177 + 16))(v173, v137, v136);
    v139 = v69;
    v140 = sub_22B36050C();
    v141 = sub_22B360D0C();

    if (os_log_type_enabled(v140, v141))
    {
      v142 = swift_slowAlloc();
      v143 = swift_slowAlloc();
      *v142 = 138412290;
      *(v142 + 4) = v139;
      *v143 = v159;
      v144 = v139;
      _os_log_impl(&dword_22B116000, v140, v141, "[UsageSummaryRecords] No object to update for %@", v142, 0xCu);
      sub_22B123284(v143, &unk_27D8BAA90, &unk_22B362BC0);
      v145 = v143;
      v64 = v188;
      MEMORY[0x23188F650](v145, -1, -1);
      v146 = v142;
      v68 = v168;
      MEMORY[0x23188F650](v146, -1, -1);
    }

    (*(v177 + 8))(v138, v178);
    sub_22B1D8310(v179);
    v56 = v189;
  }

  else
  {
    v120 = v203[0];
    v121 = sub_22B35DB9C();

    swift_willThrow();
    v76 = v182;
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v122 = v178;
    v123 = __swift_project_value_buffer(v178, qword_28140BD10);
    swift_beginAccess();
    v124 = v175;
    (*(v177 + 16))(v175, v123, v122);
    v125 = v69;
    v126 = v124;
    v127 = v125;
    v128 = sub_22B36050C();
    v129 = sub_22B360D0C();

    v130 = os_log_type_enabled(v128, v129);
    v56 = v189;
    if (v130)
    {
      v131 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      *v131 = 138412290;
      *(v131 + 4) = v127;
      *v132 = v159;
      v133 = v127;
      _os_log_impl(&dword_22B116000, v128, v129, "[UsageSummaryRecords] No object to update for %@", v131, 0xCu);
      sub_22B123284(v132, &unk_27D8BAA90, &unk_22B362BC0);
      v134 = v132;
      v126 = v175;
      MEMORY[0x23188F650](v134, -1, -1);
      v135 = v131;
      v64 = v188;
      MEMORY[0x23188F650](v135, -1, -1);
    }

    (*(v177 + 8))(v126, v178);
    sub_22B1D8310(v179);
    v171 = 0;
    v68 = v168;
  }

LABEL_15:
  sub_22B35FADC();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v88 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v89 = [objc_allocWithZone(ObjCClassFromMetadata) initWithContext_];

  v90 = *(v76 + 112);
  if (v90)
  {
    v91 = v89;
    [v68 assignObject:v91 toPersistentStore:v90];
    [v91 setBillLastPeriod_];
    v92 = sub_22B36081C();
    [v91 setCurrency_];

    v93 = v180;
    sub_22B35DE8C();
    v94 = sub_22B35DDDC();
    (*(v181 + 8))(v93, v64);
    [v91 setCreationDate_];

    v95 = sub_22B35DDDC();
    [v91 setEnd_];

    v96 = sub_22B35DCCC();
    [v91 setItems_];

    v97 = sub_22B36081C();
    [v91 setRecordID_];

    v98 = sub_22B35DDDC();
    [v91 setSourceTime_];

    v99 = sub_22B35DDDC();
    [v91 setStart_];

    v100 = sub_22B36081C();
    [v91 setSubscriptionID_];

    sub_22B35FACC();
    [v91 setTotalConsumptionValue_];
    v101 = sub_22B36081C();
    [v91 setUsageSummaryID_];

    v102 = sub_22B36081C();
    [v91 setUtilityID_];

    v103 = sub_22B36081C();
    [v91 setZoneName_];

    v104 = [v91 objectID];
    sub_22B123284(v56, &qword_27D8BA688, &qword_22B365848);
    v105 = v170;
    v106 = *v170;
    *v170 = v104;

    v107 = v183;
LABEL_36:
    v155 = *v105;
    *v107 = *v105;
    v156 = v155;
    goto LABEL_37;
  }

  __break(1u);
}

void sub_22B1D477C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v71 = a5;
  v67 = a1;
  v68 = a3;
  v9 = sub_22B36052C();
  v64 = *(v9 - 8);
  v65 = v9;
  v10 = *(v64 + 64);
  MEMORY[0x28223BE20](v9);
  v63 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v60 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v60 - v17;
  v19 = sub_22B35DE9C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v66 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_22B35FADC();
  v23 = sub_22B35FAAC();
  [v23 setResultType_];
  v75 = MEMORY[0x277D84F90];
  v69 = a2;
  v62 = v14;
  if (a2 && a4)
  {
    v61 = a6;
    v70 = v23;
    sub_22B128014(0, &qword_281409330, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_22B3634C0;
    v25 = MEMORY[0x277D837D0];
    *(v24 + 56) = MEMORY[0x277D837D0];
    v26 = sub_22B1280E4();
    v27 = v68;
    v28 = v69;
    *(v24 + 32) = v67;
    *(v24 + 40) = v28;
    *(v24 + 96) = v25;
    *(v24 + 104) = v26;
    *(v24 + 64) = v26;
    *(v24 + 72) = v27;
    *(v24 + 80) = a4;

    v29 = a4;

    v30 = sub_22B360CCC();
    MEMORY[0x23188E350]();
    if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22B360A7C();
    }

    sub_22B360A9C();

    v23 = v70;
    a4 = v29;
    a6 = v61;
  }

  sub_22B170BE0(v71, v18, &qword_27D8BA340, &qword_22B363FB0);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_22B123284(v18, &qword_27D8BA340, &qword_22B363FB0);
    v31 = v73;
  }

  else
  {
    v71 = a4;
    v32 = v66;
    (*(v20 + 32))(v66, v18, v19);
    sub_22B128014(0, &qword_281409330, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_22B3634B0;
    v34 = sub_22B35DDDC();
    *(v33 + 56) = sub_22B128014(0, &qword_281408558, 0x277CBEAA8);
    *(v33 + 64) = sub_22B1D7CDC();
    *(v33 + 32) = v34;
    v18 = sub_22B360CCC();
    MEMORY[0x23188E350]();
    v31 = v73;
    if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v44 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22B360A7C();
    }

    sub_22B360A9C();

    (*(v20 + 8))(v32, v19);
    a4 = v71;
  }

  v35 = objc_allocWithZone(MEMORY[0x277CCA920]);
  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  v36 = sub_22B360A3C();

  v37 = [v35 initWithType:1 subpredicates:v36];

  [v23 setPredicate_];
  v38 = sub_22B360E9C();
  if (v31)
  {

    return;
  }

  v39 = v38;
  v70 = v23;
  v71 = a4;
  if (v38 >> 62)
  {
    v40 = sub_22B36109C();
    if (!v40)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v40 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v40)
    {
      goto LABEL_21;
    }
  }

  if (v40 < 1)
  {
    __break(1u);
    goto LABEL_36;
  }

  for (i = 0; i != v40; ++i)
  {
    if ((v39 & 0xC000000000000001) != 0)
    {
      v42 = MEMORY[0x23188EAC0](i, v39);
    }

    else
    {
      v42 = *(v39 + 8 * i + 32);
    }

    v43 = v42;
    [a6 deleteObject_];
  }

LABEL_21:

  sub_22B207390(13);
  if (!v69 || !v71)
  {
    v18 = v65;
    if (qword_28140A0C8 == -1)
    {
LABEL_30:
      v54 = __swift_project_value_buffer(v18, qword_28140BD10);
      swift_beginAccess();
      v56 = v63;
      v55 = v64;
      (*(v64 + 16))(v63, v54, v18);
      v57 = sub_22B36050C();
      v58 = sub_22B360D0C();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&dword_22B116000, v57, v58, "[UsageSummaryRecords] Deleted All", v59, 2u);
        MEMORY[0x23188F650](v59, -1, -1);
      }

      (*(v55 + 8))(v56, v18);
      goto LABEL_34;
    }

LABEL_36:
    swift_once();
    goto LABEL_30;
  }

  v45 = v65;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v46 = __swift_project_value_buffer(v45, qword_28140BD10);
  swift_beginAccess();
  v47 = v64;
  v48 = v62;
  (*(v64 + 16))(v62, v46, v45);

  v49 = v71;

  v50 = sub_22B36050C();
  v51 = sub_22B360D0C();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v74 = v53;
    *v52 = 136315394;
    *(v52 + 4) = sub_22B1A7B20(v67, v69, &v74);
    *(v52 + 12) = 2080;
    *(v52 + 14) = sub_22B1A7B20(v68, v49, &v74);
    _os_log_impl(&dword_22B116000, v50, v51, "[UsageSummaryRecords] Deleted %s for utility %s", v52, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v53, -1, -1);
    MEMORY[0x23188F650](v52, -1, -1);

    (*(v47 + 8))(v62, v65);
  }

  else
  {

    (*(v47 + 8))(v48, v65);
  }

LABEL_34:
  [a6 refreshAllObjects];
}

void sub_22B1D5074(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  sub_22B35FADC();
  v13 = sub_22B35FAAC();
  if (a2)
  {
    if (a4)
    {
      sub_22B128014(0, &qword_281409330, 0x277CCAC30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_22B3634C0;
      v15 = MEMORY[0x277D837D0];
      *(v14 + 56) = MEMORY[0x277D837D0];
      v16 = sub_22B1280E4();
      *(v14 + 32) = a1;
      *(v14 + 40) = a2;
      *(v14 + 96) = v15;
      *(v14 + 104) = v16;
      *(v14 + 64) = v16;
      *(v14 + 72) = a3;
      *(v14 + 80) = a4;

      v7 = v6;
      v17 = sub_22B360CCC();
      [v13 setPredicate_];
    }
  }

  [v13 setResultType_];
  v18 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v19 = sub_22B36081C();
  v20 = [v18 initWithKey:v19 ascending:1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_22B363650;
  *(v21 + 32) = v20;
  sub_22B128014(0, &qword_281409308, 0x277CCAC98);
  v22 = v20;
  v23 = sub_22B360A3C();

  [v13 setSortDescriptors_];

  [v13 setFetchLimit_];
  v24 = sub_22B360E9C();
  if (v7)
  {
    goto LABEL_14;
  }

  if (!(v24 >> 62))
  {
    v25 = a6;
    if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

LABEL_12:

    v30 = 1;
    goto LABEL_13;
  }

  v31 = v24;
  v32 = sub_22B36109C();
  v24 = v31;
  v25 = a6;
  if (!v32)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((v24 & 0xC000000000000001) != 0)
  {
    v26 = a5;
    v27 = MEMORY[0x23188EAC0](0);
    goto LABEL_10;
  }

  if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v26 = a5;
    v27 = *(v24 + 32);
LABEL_10:
    v28 = v27;

    v29 = [v28 start];

    sub_22B35DE5C();
    v30 = 0;
    a5 = v26;
LABEL_13:
    v33 = sub_22B35DE9C();
    (*(*(v33 - 8) + 56))(v25, v30, 1, v33);
    [a5 refreshAllObjects];
LABEL_14:

    return;
  }

  __break(1u);
}

void sub_22B1D53F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v42 = a5;
  v43 = a7;
  v40 = a1;
  v41 = a3;
  v10 = sub_22B35DE9C();
  v37 = *(v10 - 8);
  v38 = v10;
  v11 = *(v37 + 64);
  MEMORY[0x28223BE20](v10);
  v36 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B35FADC();
  v13 = sub_22B35FAAC();
  [v13 setResultType_];
  v14 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v15 = sub_22B36081C();
  v16 = [v14 initWithKey:v15 ascending:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_22B363650;
  *(v17 + 32) = v16;
  sub_22B128014(0, &qword_281409308, 0x277CCAC98);
  v39 = v16;
  v18 = sub_22B360A3C();

  [v13 setSortDescriptors_];

  [v13 setFetchLimit_];
  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_22B364620;
  v20 = MEMORY[0x277D837D0];
  *(v19 + 56) = MEMORY[0x277D837D0];
  v21 = sub_22B1280E4();
  v22 = v41;
  *(v19 + 32) = v40;
  *(v19 + 40) = a2;
  *(v19 + 96) = v20;
  *(v19 + 104) = v21;
  *(v19 + 64) = v21;
  *(v19 + 72) = v22;
  *(v19 + 80) = a4;
  *(v19 + 136) = v20;
  *(v19 + 144) = v21;
  *(v19 + 112) = v42;
  *(v19 + 120) = a6;

  v23 = sub_22B360CCC();
  [v13 setPredicate_];
  v24 = v43;
  v25 = v44;
  v26 = sub_22B360E9C();
  if (v25)
  {

    return;
  }

  v28 = v36;
  v27 = v37;
  v29 = v38;
  if (!(v26 >> 62))
  {
    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    goto LABEL_11;
  }

  v33 = v26;
  v34 = sub_22B36109C();
  v26 = v33;
  if (!v34)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v26 & 0xC000000000000001) != 0)
  {
    v30 = MEMORY[0x23188EAC0](0);
    goto LABEL_8;
  }

  if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v30 = *(v26 + 32);
LABEL_8:
    v31 = v30;

    sub_22B35DE6C();
    v32 = sub_22B35DDDC();
    (*(v27 + 8))(v28, v29);
    [v31 setCreationDate_];

LABEL_11:
    sub_22B207390(14);
    v35 = v39;
    [v24 refreshAllObjects];

    return;
  }

  __break(1u);
}

void *sub_22B1D57F4()
{
  type metadata accessor for UsageSummaryRecordsManager();
  v0 = swift_allocObject();
  result = sub_22B1D5830();
  qword_28140BCE0 = v0;
  return result;
}

void *sub_22B1D5830()
{
  v1 = v0;
  swift_defaultActor_initialize();
  v0[14] = 0;
  v0[15] = 0;
  v0[16] = 0;
  if (qword_28140A888 != -1)
  {
    swift_once();
  }

  v2 = qword_27D8BB058;
  v3 = off_27D8BB060;

  v4 = sub_22B25376C(v2, v3, 0x4374686769736E49, 0xEC00000065686361);
  v6 = v5;

  v7 = v1[14];
  v8 = v1[15];
  v1[14] = v4;
  v1[15] = v6;
  sub_22B1441D8(v7, v8);
  v9 = v1[14];
  if (v9)
  {
    v10 = v1[14];

    v11 = sub_22B207EFC();

    v9 = [v11 newBackgroundContext];
    v12 = sub_22B36081C();
    [v9 setTransactionAuthor_];

    [v9 setMergePolicy_];
    [v9 setUndoManager_];
    [v9 setShouldRefreshAfterSave_];
    [v9 setStalenessInterval_];
    [v9 setShouldDeleteInaccessibleFaults_];
  }

  v13 = v1[16];
  v1[16] = v9;

  return v1;
}

uint64_t sub_22B1D59F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[22] = a6;
  v7[23] = v6;
  v7[20] = a4;
  v7[21] = a5;
  v7[18] = a2;
  v7[19] = a3;
  v7[17] = a1;
  v8 = sub_22B36052C();
  v7[24] = v8;
  v9 = *(v8 - 8);
  v7[25] = v9;
  v10 = *(v9 + 64) + 15;
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1D5ACC, v6, 0);
}

uint64_t sub_22B1D5ACC()
{
  v1 = *(v0 + 184);
  v2 = [*(v0 + 176) recordID];
  v3 = [v2 zoneID];

  v4 = [v3 zoneName];
  v5 = sub_22B36084C();
  v7 = v6;

  *(v0 + 224) = v5;
  *(v0 + 232) = v7;
  v8 = *(v1 + 112);
  *(v0 + 240) = v8;
  if (v8)
  {
    v9 = *(*(v0 + 184) + 120);
    *(v0 + 248) = v9;

    v10 = v9;
    v11 = sub_22B207EFC();
    v12 = [v11 newBackgroundContext];
    *(v0 + 256) = v12;
    v13 = sub_22B36081C();
    [v12 setTransactionAuthor_];

    [v12 setMergePolicy_];
    [v12 setUndoManager_];
    [v12 setShouldRefreshAfterSave_];
    [v12 setStalenessInterval_];
    [v12 setShouldDeleteInaccessibleFaults_];

    return MEMORY[0x2822009F8](sub_22B1D5E24, 0, 0);
  }

  else
  {

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 200);
    v14 = *(v0 + 208);
    v16 = *(v0 + 192);
    v17 = __swift_project_value_buffer(v16, qword_28140BD10);
    swift_beginAccess();
    (*(v15 + 16))(v14, v17, v16);
    v18 = sub_22B36050C();
    v19 = sub_22B360D1C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_22B116000, v18, v19, "[Dropbox Bridge] failed to get coredata model instance", v20, 2u);
      MEMORY[0x23188F650](v20, -1, -1);
    }

    v22 = *(v0 + 200);
    v21 = *(v0 + 208);
    v23 = *(v0 + 192);

    (*(v22 + 8))(v21, v23);
    sub_22B134CDC();
    swift_allocError();
    *v24 = 13;
    swift_willThrow();
    v26 = *(v0 + 208);
    v25 = *(v0 + 216);

    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_22B1D5E24()
{
  *(v0 + 112) = MEMORY[0x277D84F90];
  v3 = (v0 + 112);
  v3[1] = MEMORY[0x277D84FA0];
  v32 = (v3 + 1);
  v33 = v3;
  v4 = v3[3];
  if (v4 >> 62)
  {
LABEL_15:
    v5 = sub_22B36109C();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      v31 = v4 & 0xC000000000000001;
      v30 = v4 & 0xFFFFFFFFFFFFFF8;
      v29 = *(v34 + 136) + 32;
      while (1)
      {
        if (v31)
        {
          v7 = MEMORY[0x23188EAC0](v6, *(v34 + 136));
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_11;
          }
        }

        else
        {
          if (v6 >= *(v30 + 16))
          {
            __break(1u);
            goto LABEL_15;
          }

          v7 = *(v29 + 8 * v6);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_11:
            __break(1u);
            v14 = *(v34 + 232);
            v15 = *(v34 + 120);

            v16 = *(v34 + 128);
            objc_autoreleasePoolPop(v1);

            *(v34 + 312) = v16;
            v17 = *(v34 + 184);
            v18 = *(v34 + 112);

            return MEMORY[0x2822009F8](sub_22B1D67B4, v17, 0);
          }
        }

        v9 = v7;
        v10 = *(v34 + 256);
        v36 = *(v34 + 248);
        v11 = *(v34 + 240);
        v35 = *(v34 + 224);
        v12 = *(v34 + 160);
        v37 = *(v34 + 168);
        v13 = *(v34 + 144);
        v4 = *(v34 + 152);
        v1 = MEMORY[0x23188EEB0]();
        v28 = v10;
        v2 = v9;
        sub_22B1D1E3C(v9, v32, v11, v36, v13, v4, v12, v37, v35, *(&v35 + 1), v28, v33, v33 + 2);
        objc_autoreleasePoolPop(v1);

        ++v6;
        if (v8 == v5)
        {
          v19 = *v33;
          goto LABEL_17;
        }
      }
    }
  }

  v19 = MEMORY[0x277D84F90];
LABEL_17:
  *(v34 + 264) = v19;
  v20 = *(v34 + 256);
  v21 = *(v34 + 240);
  v22 = *(v34 + 176);
  v23 = sub_22B207EFC();
  *(v34 + 272) = v23;
  v24 = swift_task_alloc();
  *(v34 + 280) = v24;
  v24[2] = v20;
  v24[3] = v19;
  v24[4] = v23;
  v24[5] = v22;
  v25 = *(MEMORY[0x277D85A40] + 4);
  v26 = swift_task_alloc();
  *(v34 + 288) = v26;
  *v26 = v34;
  v26[1] = sub_22B1D613C;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_22B1D613C()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v10 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v4 = v2[35];
    v5 = v2[29];
    v6 = v2[15];

    v7 = sub_22B1D654C;
  }

  else
  {
    v8 = v2[35];

    v7 = sub_22B1D6280;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22B1D6280()
{
  v32 = v0;
  v1 = *(v0 + 296);
  v2 = *(v0 + 256);

  *(swift_task_alloc() + 16) = v2;
  sub_22B360E7C();
  if (v1)
  {
    v3 = *(v0 + 232);

    v4 = *(v0 + 120);

    *(v0 + 312) = v1;
    v5 = *(v0 + 184);
    v6 = *(v0 + 112);

    v7 = sub_22B1D67B4;
    v8 = v5;
  }

  else
  {

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 232);
    v10 = *(v0 + 216);
    v11 = *(v0 + 192);
    v12 = *(v0 + 200);
    v13 = __swift_project_value_buffer(v11, qword_28140BD10);
    swift_beginAccess();
    (*(v12 + 16))(v10, v13, v11);

    v14 = sub_22B36050C();
    v15 = sub_22B360D2C();

    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 264);
    v18 = *(v0 + 232);
    if (v16)
    {
      v19 = *(v0 + 224);
      v30 = *(v0 + 216);
      v21 = *(v0 + 192);
      v20 = *(v0 + 200);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v31 = v23;
      *v22 = 136315138;
      v24 = sub_22B1A7B20(v19, v18, &v31);

      *(v22 + 4) = v24;
      _os_log_impl(&dword_22B116000, v14, v15, "[UsageSummaryRecords] Added to share for %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x23188F650](v23, -1, -1);
      MEMORY[0x23188F650](v22, -1, -1);

      (*(v20 + 8))(v30, v21);
    }

    else
    {
      v25 = *(v0 + 216);
      v26 = *(v0 + 192);
      v27 = *(v0 + 200);
      v28 = *(v0 + 232);

      (*(v27 + 8))(v25, v26);
    }

    v8 = *(v0 + 184);
    *(v0 + 304) = *(v0 + 120);
    v7 = sub_22B1D65C8;
  }

  return MEMORY[0x2822009F8](v7, v8, 0);
}

uint64_t sub_22B1D654C()
{
  *(v0 + 312) = *(v0 + 296);
  v1 = *(v0 + 184);
  v2 = *(v0 + 112);

  return MEMORY[0x2822009F8](sub_22B1D67B4, v1, 0);
}

uint64_t sub_22B1D65C8()
{
  v1 = *(v0[23] + 128);
  if (v1)
  {
    v2 = v0[31];
    v3 = v0[32];
    v4 = v0[30];
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_22B144218;
    *(v6 + 24) = v5;
    v0[6] = sub_22B12819C;
    v0[7] = v6;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_22B32556C;
    v0[5] = &block_descriptor_14;
    v7 = _Block_copy(v0 + 2);
    v8 = v0[7];
    v9 = v1;

    [v9 performBlockAndWait_];

    _Block_release(v7);
    LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

    if ((v4 & 1) == 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v10 = v0[31];
  v11 = v0[30];

LABEL_5:
  v13 = v0[26];
  v12 = v0[27];

  v14 = v0[1];
  v15 = v0[38];

  return v14(v15);
}

uint64_t sub_22B1D67B4()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 240);

  v3 = *(v0 + 312);
  v5 = *(v0 + 208);
  v4 = *(v0 + 216);

  v6 = *(v0 + 8);

  return v6();
}

void sub_22B1D6838(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v31 = a5;
  v32 = a3;
  v33 = a4;
  v34 = a1;
  v9 = sub_22B36052C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v9, qword_28140BD10);
  swift_beginAccess();
  (*(v10 + 16))(v13, v14, v9);

  v15 = sub_22B36050C();
  v16 = sub_22B360D2C();

  v17 = os_log_type_enabled(v15, v16);
  v30 = a2;
  if (v17)
  {
    v18 = a2;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v29[1] = v6;
    v21 = v20;
    v35 = v20;
    *v19 = 136380675;
    *(v19 + 4) = sub_22B1A7B20(v34, v18, &v35);
    _os_log_impl(&dword_22B116000, v15, v16, "Get usagepoint for %{private}s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x23188F650](v21, -1, -1);
    MEMORY[0x23188F650](v19, -1, -1);
  }

  (*(v10 + 8))(v13, v9);
  if (*(v7 + 112))
  {
    v22 = *(v7 + 128);
    if (v22)
    {
      v23 = *(v7 + 120);
      sub_22B1231A0(*(v7 + 112), v23);
      v24 = v22;
      v25 = MEMORY[0x23188EEB0]();
      MEMORY[0x28223BE20](v25);
      v26 = v30;
      v29[-6] = v34;
      v29[-5] = v26;
      v27 = v33;
      v29[-4] = v32;
      v29[-3] = v27;
      v29[-2] = v31;
      v29[-1] = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA680, &qword_22B365840);
      sub_22B360E7C();
      objc_autoreleasePoolPop(v25);
    }

    else
    {
      sub_22B134CDC();
      swift_allocError();
      *v28 = 7;
      swift_willThrow();
    }
  }
}

uint64_t sub_22B1D6B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[10] = a6;
  v7[11] = v6;
  v7[8] = a4;
  v7[9] = a5;
  v7[6] = a2;
  v7[7] = a3;
  v7[5] = a1;
  v8 = sub_22B36052C();
  v7[12] = v8;
  v9 = *(v8 - 8);
  v7[13] = v9;
  v10 = *(v9 + 64) + 15;
  v7[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1D6C60, v6, 0);
}

uint64_t sub_22B1D6C60()
{
  v32 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[6];
  v5 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v5, v3);

  v6 = sub_22B36050C();
  v7 = sub_22B360D2C();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[13];
  v9 = v0[14];
  v11 = v0[12];
  if (v8)
  {
    v13 = v0[5];
    v12 = v0[6];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v31 = v15;
    *v14 = 136380675;
    *(v14 + 4) = sub_22B1A7B20(v13, v12, &v31);
    _os_log_impl(&dword_22B116000, v6, v7, "Update usage summary date for %{private}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x23188F650](v15, -1, -1);
    MEMORY[0x23188F650](v14, -1, -1);
  }

  (*(v10 + 8))(v9, v11);
  v16 = v0[11];
  v17 = v16[14];
  v0[15] = v17;
  v18 = v16[15];
  v0[16] = v18;
  if (v17 && (v19 = v16[16], (v0[17] = v19) != 0))
  {
    sub_22B1231A0(v17, v18);
    v20 = v19;
    v21 = swift_task_alloc();
    v0[18] = v21;
    *v21 = v0;
    v21[1] = sub_22B1D6F00;
    v22 = v0[9];
    v23 = v0[10];
    v24 = v0[7];
    v25 = v0[8];
    v27 = v0[5];
    v26 = v0[6];

    return sub_22B1D7D68(v27, v26, v24, v25, v22, v23, v20);
  }

  else
  {
    v29 = v0[14];

    v30 = v0[1];

    return v30();
  }
}

uint64_t sub_22B1D6F00()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B1D7010, v2, 0);
}

uint64_t sub_22B1D7010()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 120);

  v3 = *(v0 + 112);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22B1D7088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[9] = a5;
  v6[10] = v5;
  v6[7] = a3;
  v6[8] = a4;
  v6[5] = a1;
  v6[6] = a2;
  v7 = sub_22B36052C();
  v6[11] = v7;
  v8 = *(v7 - 8);
  v6[12] = v8;
  v9 = *(v8 + 64) + 15;
  v6[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1D7150, v5, 0);
}

uint64_t sub_22B1D7150()
{
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_22B36050C();
  v6 = sub_22B360D2C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22B116000, v5, v6, "Delete usage point", v7, 2u);
    MEMORY[0x23188F650](v7, -1, -1);
  }

  v9 = *(v0 + 96);
  v8 = *(v0 + 104);
  v11 = *(v0 + 80);
  v10 = *(v0 + 88);

  (*(v9 + 8))(v8, v10);
  v12 = *(v11 + 112);
  if (!v12)
  {
    goto LABEL_8;
  }

  v13 = *(*(v0 + 80) + 128);
  if (v13)
  {
    v14 = *(v11 + 120);
    v15 = *(v0 + 72);
    v24 = *(v0 + 40);
    v25 = *(v0 + 56);
    sub_22B1231A0(v12, v14);
    v16 = v13;
    v17 = MEMORY[0x23188EEB0]();
    v18 = swift_task_alloc();
    *(v18 + 16) = v24;
    *(v18 + 32) = v25;
    *(v18 + 48) = v15;
    *(v18 + 56) = v16;
    sub_22B360E7C();

    objc_autoreleasePoolPop(v17);

LABEL_8:
    v19 = *(v0 + 104);

    v20 = *(v0 + 8);
    goto LABEL_10;
  }

  sub_22B134CDC();
  swift_allocError();
  *v21 = 7;
  swift_willThrow();
  v22 = *(v0 + 104);

  v20 = *(v0 + 8);
LABEL_10:

  return v20();
}

uint64_t sub_22B1D73C8(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v4 = sub_22B35DE9C();
  v2[8] = v4;
  v5 = *(v4 - 8);
  v2[9] = v5;
  v6 = *(v5 + 64) + 15;
  v2[10] = swift_task_alloc();
  v7 = sub_22B36052C();
  v2[11] = v7;
  v8 = *(v7 - 8);
  v2[12] = v8;
  v9 = *(v8 + 64) + 15;
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1D751C, v1, 0);
}

uint64_t sub_22B1D751C()
{
  v44 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[5];
  v8 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v8, v3);
  v9 = *(v6 + 16);
  v9(v4, v7, v5);
  v10 = sub_22B36050C();
  v42 = sub_22B360D2C();
  v11 = os_log_type_enabled(v10, v42);
  v13 = v0[12];
  v12 = v0[13];
  v14 = v0[10];
  v15 = v0[11];
  v17 = v0[8];
  v16 = v0[9];
  if (v11)
  {
    log = v10;
    v18 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v43 = v40;
    *v18 = 136315138;
    sub_22B1D81C4(&qword_28140B488, MEMORY[0x277CC9578]);
    v39 = v12;
    v19 = sub_22B36131C();
    v21 = v20;
    (*(v16 + 8))(v14, v17);
    v22 = sub_22B1A7B20(v19, v21, &v43);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_22B116000, log, v42, "Delete usage point older than %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x23188F650](v40, -1, -1);
    MEMORY[0x23188F650](v18, -1, -1);

    (*(v13 + 8))(v39, v15);
  }

  else
  {

    (*(v16 + 8))(v14, v17);
    (*(v13 + 8))(v12, v15);
  }

  v23 = v0[6];
  v24 = v23[14];
  if (v24)
  {
    v25 = v23[16];
    if (v25)
    {
      v26 = v23[15];
      v27 = v0[8];
      v28 = v0[9];
      v29 = v0[7];
      v9(v29, v0[5], v27);
      (*(v28 + 56))(v29, 0, 1, v27);
      sub_22B1231A0(v24, v26);
      v30 = v25;
      v31 = MEMORY[0x23188EEB0]();
      v32 = swift_task_alloc();
      *(v32 + 16) = 0u;
      *(v32 + 32) = 0u;
      *(v32 + 48) = v29;
      *(v32 + 56) = v30;
      sub_22B360E7C();
      v33 = v0[7];

      objc_autoreleasePoolPop(v31);

      sub_22B123284(v33, &qword_27D8BA340, &qword_22B363FB0);
    }
  }

  v34 = v0[13];
  v35 = v0[10];
  v36 = v0[7];

  v37 = v0[1];

  return v37();
}

uint64_t sub_22B1D78E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[9] = a5;
  v6[10] = v5;
  v6[7] = a3;
  v6[8] = a4;
  v6[5] = a1;
  v6[6] = a2;
  v7 = sub_22B36052C();
  v6[11] = v7;
  v8 = *(v7 - 8);
  v6[12] = v8;
  v9 = *(v8 + 64) + 15;
  v6[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1D79A8, v5, 0);
}

uint64_t sub_22B1D79A8()
{
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_22B36050C();
  v6 = sub_22B360D2C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22B116000, v5, v6, "Getting oldest usage summary", v7, 2u);
    MEMORY[0x23188F650](v7, -1, -1);
  }

  v9 = *(v0 + 96);
  v8 = *(v0 + 104);
  v11 = *(v0 + 80);
  v10 = *(v0 + 88);

  (*(v9 + 8))(v8, v10);
  v12 = *(v11 + 112);
  if (v12 && (v13 = *(*(v0 + 80) + 128)) != 0)
  {
    v14 = *(v11 + 120);
    v15 = *(v0 + 40);
    v24 = *(v0 + 64);
    v25 = *(v0 + 48);
    sub_22B1231A0(v12, v14);
    v16 = v13;
    v17 = MEMORY[0x23188EEB0]();
    v18 = swift_task_alloc();
    *(v18 + 16) = v25;
    *(v18 + 32) = v24;
    *(v18 + 48) = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
    sub_22B360E7C();

    objc_autoreleasePoolPop(v17);
  }

  else
  {
    v19 = *(v0 + 40);
    v20 = sub_22B35DE9C();
    (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  }

  v21 = *(v0 + 104);

  v22 = *(v0 + 8);

  return v22();
}

unint64_t sub_22B1D7CDC()
{
  result = qword_281408550;
  if (!qword_281408550)
  {
    sub_22B128014(255, &qword_281408558, 0x277CBEAA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281408550);
  }

  return result;
}

uint64_t sub_22B1D7D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  v7[6] = a2;
  v7[7] = a3;
  v7[5] = a1;
  v8 = sub_22B36052C();
  v7[12] = v8;
  v9 = *(v8 - 8);
  v7[13] = v9;
  v10 = *(v9 + 64) + 15;
  v7[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1D7E34, 0, 0);
}

uint64_t sub_22B1D7E34()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = *(v0 + 40);
  v10 = v4;
  v11 = *(v0 + 56);
  v5 = MEMORY[0x23188EEB0]();
  v6 = swift_task_alloc();
  *(v6 + 16) = v10;
  *(v6 + 32) = v11;
  *(v6 + 48) = v3;
  *(v6 + 56) = v1;
  *(v6 + 64) = v2;
  sub_22B360E7C();

  v7 = *(v0 + 112);
  objc_autoreleasePoolPop(v5);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t type metadata accessor for CDUsageSummaryRecords()
{
  result = qword_27D8BA6B8;
  if (!qword_27D8BA6B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22B1D8160(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CDUsageSummaryRecords();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B1D81C4(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_22B1D8218()
{
  v2 = *(v0 + 16);
  result = sub_22B207390(12);
  if (!v1)
  {
    return [v2 refreshAllObjects];
  }

  return result;
}

uint64_t sub_22B1D825C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22B144B30(a1, a2);
  }

  return a1;
}

uint64_t sub_22B1D8310(uint64_t a1)
{
  v2 = type metadata accessor for CDUsageSummaryRecords();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22B1D836C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA688, &qword_22B365848);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_22B1D8404()
{
  sub_22B35DE9C();
  if (v0 <= 0x3F)
  {
    sub_22B1D84D4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22B1D84D4()
{
  if (!qword_27D8BA6C8)
  {
    sub_22B35F9DC();
    v0 = sub_22B360AAC();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8BA6C8);
    }
  }
}

uint64_t sub_22B1D8544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_22B124D88;

  return v11(a1, a2, a3);
}

uint64_t sub_22B1D866C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_22B119A60;

  return v11(a1, a2, a3);
}

uint64_t sub_22B1D8794@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v25 = a1;
  v6 = sub_22B35E3DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  if (v12)
  {
    v22 = v7;
    v23 = a3;
    v14 = *(v7 + 16);
    v13 = v7 + 16;
    v24 = v14;
    v15 = (v13 - 8);
    v16 = a2 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    while (1)
    {
      v24(v11, v16, v6, v9);
      v18 = v25(v11);
      if (v3)
      {
        return (*v15)(v11, v6);
      }

      if (v18)
      {
        break;
      }

      (*v15)(v11, v6);
      v16 += v17;
      if (!--v12)
      {
        v19 = 1;
        v7 = v22;
        a3 = v23;
        return (*(v7 + 56))(a3, v19, 1, v6);
      }
    }

    v7 = v22;
    a3 = v23;
    (*(v22 + 32))(v23, v11, v6);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  return (*(v7 + 56))(a3, v19, 1, v6);
}

void sub_22B1D8968(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v286 = a8;
  v303 = a7;
  v276 = a5;
  v297 = a4;
  v277 = a3;
  v345 = a1;
  v284 = a9;
  v11 = sub_22B35DE9C();
  v329 = *(v11 - 8);
  v12 = *(v329 + 64);
  MEMORY[0x28223BE20](v11);
  v274 = &v270 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v272 = &v270 - v15;
  v275 = sub_22B35D8BC();
  v273 = *(v275 - 8);
  v16 = *(v273 + 64);
  MEMORY[0x28223BE20](v275);
  v271 = &v270 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v292 = type metadata accessor for CDTOUPeak();
  v270 = *(v292 - 8);
  v18 = *(v270 + 64);
  MEMORY[0x28223BE20](v292);
  v346 = &v270 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v344 = &v270 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA080, &unk_22B364280);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v285 = &v270 - v24;
  v302 = sub_22B35E0BC();
  v301 = *(v302 - 8);
  v25 = *(v301 + 64);
  MEMORY[0x28223BE20](v302);
  v307 = &v270 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v327 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA7C8, &qword_22B365A40);
  v305 = *(v327 - 8);
  v27 = *(v305 + 64);
  MEMORY[0x28223BE20](v327);
  v304 = &v270 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v328 = &v270 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA760, &qword_22B365A08);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v291 = &v270 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v290 = &v270 - v35;
  MEMORY[0x28223BE20](v36);
  v289 = &v270 - v37;
  MEMORY[0x28223BE20](v38);
  v321 = &v270 - v39;
  MEMORY[0x28223BE20](v40);
  v320 = &v270 - v41;
  MEMORY[0x28223BE20](v42);
  v319 = &v270 - v43;
  v325 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA7B8, &unk_22B365A30);
  v300 = *(v325 - 8);
  v44 = *(v300 + 64);
  MEMORY[0x28223BE20](v325);
  v299 = &v270 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v342 = &v270 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA798, &qword_22B365A28);
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48 - 8);
  v288 = &v270 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v287 = &v270 - v52;
  MEMORY[0x28223BE20](v53);
  v318 = &v270 - v54;
  MEMORY[0x28223BE20](v55);
  v339 = &v270 - v56;
  MEMORY[0x28223BE20](v57);
  v338 = &v270 - v58;
  MEMORY[0x28223BE20](v59);
  v337 = &v270 - v60;
  v324 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA7C0, &qword_22B3664A0);
  v298 = *(v324 - 8);
  v61 = *(v298 + 64);
  MEMORY[0x28223BE20](v324);
  v323 = &v270 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v63);
  v341 = &v270 - v64;
  v326 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA7D0, &qword_22B365A48);
  v65 = *(*(v326 - 8) + 64);
  MEMORY[0x28223BE20](v326);
  v312 = &v270 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v67);
  v310 = &v270 - v68;
  v309 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA768, &qword_22B365A10);
  v69 = *(*(v309 - 8) + 64);
  MEMORY[0x28223BE20](v309);
  v311 = (&v270 - v70);
  v317 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA7D8, &qword_22B365A50);
  v283 = *(v317 - 8);
  v71 = *(v283 + 64);
  MEMORY[0x28223BE20](v317);
  v282 = &v270 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v73);
  v334 = &v270 - v74;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA7E0, &qword_22B365A58);
  v76 = *(*(v75 - 8) + 64);
  MEMORY[0x28223BE20](v75 - 8);
  v296 = &v270 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v78);
  v293 = (&v270 - v79);
  v294 = sub_22B35E9EC();
  v306 = *(v294 - 1);
  v80 = *(v306 + 8);
  MEMORY[0x28223BE20](v294);
  v295 = &v270 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v82);
  v322 = &v270 - v83;
  v316 = sub_22B35E53C();
  v281 = *(v316 - 8);
  v84 = *(v281 + 64);
  MEMORY[0x28223BE20](v316);
  v280 = &v270 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v86);
  v336 = &v270 - v87;
  v333 = sub_22B35E4BC();
  v332 = *(v333 - 8);
  v88 = *(v332 + 64);
  MEMORY[0x28223BE20](v333);
  v315 = &v270 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v90);
  v335 = &v270 - v91;
  v331 = sub_22B35E81C();
  v330 = *(v331 - 8);
  v92 = v330[8];
  MEMORY[0x28223BE20](v331);
  v314 = &v270 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v94);
  v313 = &v270 - v95;
  MEMORY[0x28223BE20](v96);
  v343 = &v270 - v97;
  MEMORY[0x28223BE20](v98);
  v340 = &v270 - v99;
  v100 = sub_22B35E37C();
  v101 = *(v100 - 8);
  v102 = *(v101 + 64);
  MEMORY[0x28223BE20](v100);
  v350 = &v270 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v104);
  v279 = &v270 - v105;
  v108 = MEMORY[0x28223BE20](v106);
  v110 = &v270 - v109;
  v111 = *(a2 + 16);
  v308 = v11;
  if (v111)
  {
    v278 = a6;
    v113 = *(v101 + 16);
    v112 = v101 + 16;
    v347 = (*(v112 + 64) + 32) & ~*(v112 + 64);
    v114 = a2 + v347;
    v115 = *(v112 + 56);
    v349 = (v112 + 16);
    v351 = (v112 - 8);
    v352 = v113;
    v116 = MEMORY[0x277D84F90];
    v117 = a2 + v347;
    v118 = v111;
    v353 = v115;
    v348 = v112;
    (v113)(v110, a2 + v347, v100, v108);
    while (1)
    {
      v120 = *(sub_22B35E35C() + 16);

      if (v120)
      {
        v121 = *v349;
        (*v349)(v350, v110, v100);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v354 = v116;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22B355744(0, *(v116 + 16) + 1, 1);
          v116 = v354;
        }

        v124 = *(v116 + 16);
        v123 = *(v116 + 24);
        v125 = v116;
        if (v124 >= v123 >> 1)
        {
          sub_22B355744(v123 > 1, v124 + 1, 1);
          v125 = v354;
        }

        *(v125 + 16) = v124 + 1;
        v126 = v125 + v347 + v124 * v353;
        v115 = v353;
        v121(v126, v350, v100);
        v116 = v125;
      }

      else
      {
        (*v351)(v110, v100);
      }

      v117 += v115;
      if (!--v118)
      {
        break;
      }

      (v352)(v110, v117, v100, v119);
    }

    v350 = v116;
    v127 = MEMORY[0x277D84F90];
    v128 = v279;
    while (1)
    {
      (v352)(v128, v114, v100);
      v129 = sub_22B35E34C();
      (*v351)(v128, v100);
      v130 = *(v129 + 16);
      v131 = v127[2];
      v132 = v131 + v130;
      if (__OFADD__(v131, v130))
      {
        break;
      }

      v133 = swift_isUniquelyReferenced_nonNull_native();
      if (!v133 || v132 > v127[3] >> 1)
      {
        if (v131 <= v132)
        {
          v134 = v131 + v130;
        }

        else
        {
          v134 = v131;
        }

        v127 = sub_22B32D46C(v133, v134, 1, v127);
      }

      v135 = v353;
      if (*(v129 + 16))
      {
        v136 = (v127[3] >> 1) - v127[2];
        v137 = *(sub_22B35E3DC() - 8);
        if (v136 < v130)
        {
          goto LABEL_69;
        }

        v138 = (*(v137 + 80) + 32) & ~*(v137 + 80);
        v139 = *(v137 + 72);
        swift_arrayInitWithCopy();

        v135 = v353;
        if (v130)
        {
          v140 = v127[2];
          v141 = __OFADD__(v140, v130);
          v142 = v140 + v130;
          if (v141)
          {
            goto LABEL_70;
          }

          v127[2] = v142;
        }
      }

      else
      {

        if (v130)
        {
          goto LABEL_68;
        }
      }

      v114 += v135;
      if (!--v111)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v127 = MEMORY[0x277D84F90];
  v350 = MEMORY[0x277D84F90];
LABEL_29:
  v143 = MEMORY[0x23188EEB0](v107);
  v144 = type metadata accessor for SessionHalfHourlySummary(0);
  v145 = v144[9];
  sub_22B35DD3C();
  v147 = v306;
  if ((*&v146 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  if (v146 <= -9.22337204e18)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  if (v146 >= 9.22337204e18)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  sub_22B35E4CC();
  v148 = v144[10];
  sub_22B35DD3C();
  if ((*&v149 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if (v149 <= -9.22337204e18)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  if (v149 >= 9.22337204e18)
  {
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v349 = v143;
  v352 = v148;
  sub_22B35E4CC();
  v150 = v345;
  v278 = *(v345 + v144[16]);
  sub_22B35E4CC();
  v151 = (v150 + v144[11]);
  v152 = *v151;
  sub_22B1FE510(&qword_27D8BA7E8, 255, MEMORY[0x277D175B8]);
  v153 = v293;
  v154 = v294;
  sub_22B35E7FC();
  v155 = *(v147 + 6);
  if (v155(v153, 1, v154) == 1)
  {
    sub_22B35E9FC();
    if (v155(v153, 1, v154) != 1)
    {
      sub_22B123284(v153, &qword_27D8BA7E0, &qword_22B365A58);
    }
  }

  else
  {
    (*(v147 + 4))(v322, v153, v154);
  }

  v156 = v151[1];
  v157 = v296;
  sub_22B35E7FC();
  if (v155(v157, 1, v154) == 1)
  {
    sub_22B35E9FC();
    v158 = v155(v157, 1, v154) == 1;
    v159 = v297;
    v160 = v157;
    v161 = v352;
    if (!v158)
    {
      sub_22B123284(v160, &qword_27D8BA7E0, &qword_22B365A58);
    }
  }

  else
  {
    (*(v306 + 4))(v295, v157, v154);
    v159 = v297;
    v161 = v352;
  }

  sub_22B35E52C();
  sub_22B2000B4(&v145[v345], &v161[v345], v350, v159);
  v163 = v162;

  v164 = sub_22B1FE510(&qword_28140B490, 255, MEMORY[0x277CC9578]);
  v165 = v308;
  v297 = v164;
  if ((sub_22B36076C() & 1) == 0)
  {
    goto LABEL_77;
  }

  v306 = v144;
  v166 = v329;
  v167 = (v329 + 16);
  v168 = *(v329 + 16);
  v169 = v345;
  v170 = v310;
  v168(v310, &v145[v345], v165);
  v353 = v163;
  v171 = v326;
  v172 = v170 + *(v326 + 48);
  v296 = v167;
  v295 = v168;
  v168(v172, &v161[v169], v165);
  v173 = v312;
  sub_22B170BE0(v170, v312, &qword_27D8BA7D0, &qword_22B365A48);
  v351 = *(v171 + 48);
  v174 = *(v166 + 32);
  v279 = v145;
  v175 = v311;
  v174(v311, v173, v165);
  v176 = *(v166 + 8);
  v176(v351 + v173, v165);
  sub_22B170CD0(v170, v173, &qword_27D8BA7D0, &qword_22B365A48);
  v177 = v175 + *(v309 + 36);
  v178 = v173 + *(v171 + 48);
  v351 = (v166 + 32);
  v294 = v174;
  v174(v177, v178, v165);
  v329 = v166 + 8;
  v293 = v176;
  v176(v173, v165);
  sub_22B1E3CC4(v343, v353, v175, v127, v334);
  sub_22B123284(v175, &qword_27D8BA768, &qword_22B365A10);
  v179 = *(v332 + 56);
  v180 = v333;
  v179(v337, 1, 1, v333);
  v179(v338, 1, 1, v180);
  v179(v339, 1, 1, v180);
  v179(v318, 1, 1, v180);
  v179(v287, 1, 1, v180);
  v179(v288, 1, 1, v180);
  v181 = MEMORY[0x277D17508];
  v347 = sub_22B1FE510(&qword_27D8BA7A0, 255, MEMORY[0x277D17508]);
  v348 = sub_22B1FE510(&qword_27D8BA7A8, 255, v181);
  v350 = sub_22B1FE510(&qword_27D8BA7B0, 255, v181);
  sub_22B35E48C();
  v182 = v330[7];
  v183 = v331;
  v182(v319, 1, 1, v331);
  v182(v320, 1, 1, v183);
  v182(v321, 1, 1, v183);
  v182(v289, 1, 1, v183);
  v182(v290, 1, 1, v183);
  v182(v291, 1, 1, v183);
  v184 = MEMORY[0x277D17570];
  v322 = sub_22B1FE510(&qword_27D8BA770, 255, MEMORY[0x277D17570]);
  sub_22B1FE510(&qword_27D8BA778, 255, v184);
  sub_22B1FE510(&qword_27D8BA780, 255, v184);
  sub_22B35E48C();
  v179(v337, 1, 1, v180);
  v179(v338, 1, 1, v180);
  v179(v339, 1, 1, v180);
  v179(v318, 1, 1, v180);
  sub_22B35E4EC();
  if (v303)
  {

    v185 = v307;
    v186 = v292;
    v187 = v344;
  }

  else
  {
    v188 = v279;
    v189 = v345;
    v190 = v352;
    v191 = v308;
    v192 = sub_22B36076C();
    v186 = v292;
    v187 = v344;
    if ((v192 & 1) == 0)
    {
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    v193 = v310;
    v194 = v295;
    (v295)(v310, &v188[v189], v191);
    v195 = v326;
    (v194)(v193 + *(v326 + 48), &v190[v189], v191);
    v196 = v191;
    v197 = v312;
    sub_22B170BE0(v193, v312, &qword_27D8BA7D0, &qword_22B365A48);
    v198 = *(v195 + 48);
    v199 = v311;
    v200 = v294;
    (v294)(v311, v197, v196);
    v201 = v197 + v198;
    v202 = v293;
    v293(v201, v196);
    sub_22B170CD0(v193, v197, &qword_27D8BA7D0, &qword_22B365A48);
    v200(v199 + *(v309 + 36), v197 + *(v326 + 48), v196);
    v185 = v307;
    v202(v197, v196);
    v203 = v304;
    sub_22B1E02CC(v278, v353, v199, v127, v304);

    sub_22B123284(v199, &qword_27D8BA768, &qword_22B365A10);
    v204 = v305;
    v205 = v328;
    v206 = v327;
    (*(v305 + 8))(v328, v327);
    (*(v204 + 32))(v205, v203, v206);
  }

  v207 = v285;
  sub_22B170BE0(v286, v285, &unk_27D8BA080, &unk_22B364280);
  v208 = v301;
  v209 = v302;
  if ((*(v301 + 48))(v207, 1, v302) == 1)
  {
    sub_22B123284(v207, &unk_27D8BA080, &unk_22B364280);
LABEL_66:
    v259 = v330[2];
    v260 = v331;
    v259(v313, v340, v331);
    (*(v332 + 16))(v315, v335, v333);
    v259(v314, v343, v260);
    v261 = v298;
    (*(v298 + 16))(v323, v341, v324);
    v262 = v300;
    (*(v300 + 16))(v299, v342, v325);
    v263 = v305;
    v264 = v328;
    (*(v305 + 16))(v304, v328, v327);
    v265 = v283;
    (*(v283 + 16))(v282, v334, v317);
    v266 = v281;
    (*(v281 + 16))(v280, v336, v316);
    v269 = *(v345 + v306[19]);
    sub_22B35E5FC();
    (*(v263 + 8))(v264, v327);
    (*(v262 + 8))(v342, v325);
    (*(v261 + 8))(v341, v324);
    (*(v265 + 8))(v334, v317);
    (*(v266 + 8))(v336, v316);
    (*(v332 + 8))(v335, v333);
    v267 = v330[1];
    v268 = v331;
    v267(v343, v331);
    v267(v340, v268);
    objc_autoreleasePoolPop(v349);
    return;
  }

  (*(v208 + 32))(v185, v207, v209);
  v210 = *(v277 + 16);
  if (!v210)
  {
    (*(v208 + 8))(v185, v209);
    goto LABEL_66;
  }

  v211 = (*(v270 + 80) + 32) & ~*(v270 + 80);
  v212 = *(v270 + 72);
  v213 = v277 + v211;
  v214 = MEMORY[0x277D84F90];
  v215 = v279;
  do
  {
    sub_22B201F74(v213, v187, type metadata accessor for CDTOUPeak);
    if (*(*(v187 + *(v186 + 28)) + 16))
    {
      sub_22B20203C(v187, v346, type metadata accessor for CDTOUPeak);
      v216 = swift_isUniquelyReferenced_nonNull_native();
      v354 = v214;
      if ((v216 & 1) == 0)
      {
        sub_22B355788(0, *(v214 + 16) + 1, 1);
        v214 = v354;
      }

      v218 = *(v214 + 16);
      v217 = *(v214 + 24);
      if (v218 >= v217 >> 1)
      {
        sub_22B355788(v217 > 1, v218 + 1, 1);
        v214 = v354;
      }

      *(v214 + 16) = v218 + 1;
      sub_22B20203C(v346, v214 + v211 + v218 * v212, type metadata accessor for CDTOUPeak);
      v187 = v344;
    }

    else
    {
      sub_22B201FDC(v187, type metadata accessor for CDTOUPeak);
    }

    v213 += v212;
    --v210;
  }

  while (v210);
  v219 = v345;
  v220 = v308;
  v221 = v295;
  (v295)(v272, &v215[v345], v308);
  v222 = v352;
  (v221)(v274, &v352[v219], v220);
  v223 = v271;
  sub_22B35D88C();
  v224 = sub_22B200620(v223, v214, v307, v276);

  v225 = v223;
  v226 = v222;
  (*(v273 + 8))(v225, v275);
  if ((sub_22B36076C() & 1) == 0)
  {
    goto LABEL_79;
  }

  v227 = v345;
  v228 = &v215[v345];
  v229 = v310;
  (v221)(v310, v228, v220);
  v230 = v326;
  (v221)(v229 + *(v326 + 48), &v226[v227], v220);
  v231 = v312;
  sub_22B170BE0(v229, v312, &qword_27D8BA7D0, &qword_22B365A48);
  v232 = *(v230 + 48);
  v233 = v311;
  v353 = v224;
  v234 = v294;
  (v294)(v311, v231, v220);
  v235 = v293;
  v293(v231 + v232, v220);
  sub_22B170CD0(v229, v231, &qword_27D8BA7D0, &qword_22B365A48);
  v234(v233 + *(v309 + 36), v231 + *(v230 + 48), v220);
  v236 = v353;
  v235(v231, v220);
  v237 = v307;
  v238 = v299;
  sub_22B1E1858(v343, v236, v233, v307, v299);
  sub_22B123284(v233, &qword_27D8BA768, &qword_22B365A10);
  v239 = v300;
  v240 = v342;
  v241 = v325;
  (*(v300 + 8))(v342, v325);
  (*(v239 + 32))(v240, v238, v241);
  if (v303)
  {
    (*(v301 + 8))(v237, v302);

    goto LABEL_66;
  }

  v242 = v279;
  v243 = v352;
  if (sub_22B36076C())
  {
    v244 = v243;
    v245 = v345;
    v246 = v310;
    v247 = v295;
    (v295)(v310, &v242[v345], v220);
    v248 = v326;
    (v247)(v246 + *(v326 + 48), &v244[v245], v220);
    v249 = v312;
    sub_22B170BE0(v246, v312, &qword_27D8BA7D0, &qword_22B365A48);
    v250 = *(v248 + 48);
    v251 = v311;
    v252 = v294;
    (v294)(v311, v249, v220);
    v253 = v293;
    v293(v249 + v250, v220);
    sub_22B170CD0(v246, v249, &qword_27D8BA7D0, &qword_22B365A48);
    v252(v251 + *(v309 + 36), v249 + *(v248 + 48), v220);
    v253(v249, v220);
    v254 = v323;
    v255 = v307;
    sub_22B1DD9F8(v278, v353, v251, v307, v323);

    sub_22B123284(v251, &qword_27D8BA768, &qword_22B365A10);
    (*(v301 + 8))(v255, v302);
    v256 = v298;
    v257 = v341;
    v258 = v324;
    (*(v298 + 8))(v341, v324);
    (*(v256 + 32))(v257, v254, v258);
    goto LABEL_66;
  }

LABEL_80:
  __break(1u);
}

void sub_22B1DAF04(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for CDEnergyGuidanceTracker();
  v25 = *(v7 - 8);
  v8 = *(v25 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v24 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v21 - v11;
  v23 = *(a3 + 16);
  if (v23)
  {
    v13 = 0;
    v14 = MEMORY[0x277D84F90];
    v21[1] = a2;
    v22 = a3;
    v21[0] = a1;
    while (v13 < *(a3 + 16))
    {
      v15 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v16 = *(v25 + 72);
      sub_22B201F74(a3 + v15 + v16 * v13, v12, type metadata accessor for CDEnergyGuidanceTracker);
      v17 = a1(v12);
      if (v3)
      {
        sub_22B201FDC(v12, type metadata accessor for CDEnergyGuidanceTracker);

        goto LABEL_15;
      }

      if (v17)
      {
        sub_22B20203C(v12, v24, type metadata accessor for CDEnergyGuidanceTracker);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22B3556A0(0, *(v14 + 16) + 1, 1);
          v14 = v26;
        }

        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_22B3556A0(v19 > 1, v20 + 1, 1);
          v14 = v26;
        }

        *(v14 + 16) = v20 + 1;
        sub_22B20203C(v24, v14 + v15 + v20 * v16, type metadata accessor for CDEnergyGuidanceTracker);
        a3 = v22;
        a1 = v21[0];
      }

      else
      {
        sub_22B201FDC(v12, type metadata accessor for CDEnergyGuidanceTracker);
      }

      if (v23 == ++v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

void sub_22B1DB190(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for CDTOUPeak();
  v25 = *(v7 - 8);
  v8 = *(v25 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v24 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v21 - v11;
  v23 = *(a3 + 16);
  if (v23)
  {
    v13 = 0;
    v14 = MEMORY[0x277D84F90];
    v21[1] = a2;
    v22 = a3;
    v21[0] = a1;
    while (v13 < *(a3 + 16))
    {
      v15 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v16 = *(v25 + 72);
      sub_22B201F74(a3 + v15 + v16 * v13, v12, type metadata accessor for CDTOUPeak);
      v17 = a1(v12);
      if (v3)
      {
        sub_22B201FDC(v12, type metadata accessor for CDTOUPeak);

        goto LABEL_15;
      }

      if (v17)
      {
        sub_22B20203C(v12, v24, type metadata accessor for CDTOUPeak);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22B355788(0, *(v14 + 16) + 1, 1);
          v14 = v26;
        }

        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_22B355788(v19 > 1, v20 + 1, 1);
          v14 = v26;
        }

        *(v14 + 16) = v20 + 1;
        sub_22B20203C(v24, v14 + v15 + v20 * v16, type metadata accessor for CDTOUPeak);
        a3 = v22;
        a1 = v21[0];
      }

      else
      {
        sub_22B201FDC(v12, type metadata accessor for CDTOUPeak);
      }

      if (v23 == ++v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

void sub_22B1DB41C(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v39 = sub_22B35E24C();
  v7 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v36 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v38 = &v28 - v12;
  v35 = *(a3 + 16);
  if (v35)
  {
    v13 = 0;
    v32 = (v10 + 8);
    v33 = (v10 + 32);
    v34 = v10 + 16;
    v37 = MEMORY[0x277D84F90];
    v30 = a2;
    v31 = a3;
    v29 = a1;
    while (v13 < *(a3 + 16))
    {
      v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v15 = *(v10 + 72);
      v16 = a3;
      v17 = a3 + v14 + v15 * v13;
      v18 = v10;
      v19 = a1;
      v20 = v38;
      (*(v10 + 16))(v38, v17, v39, v11);
      v21 = v20;
      a1 = v19;
      v22 = v19(v21);
      if (v3)
      {
        (*v32)(v38, v39);

        return;
      }

      if (v22)
      {
        v23 = *v33;
        (*v33)(v36, v38, v39);
        v24 = v37;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22B3557CC(0, *(v24 + 16) + 1, 1);
          v24 = v40;
        }

        v27 = *(v24 + 16);
        v26 = *(v24 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_22B3557CC(v26 > 1, v27 + 1, 1);
          v24 = v40;
        }

        *(v24 + 16) = v27 + 1;
        v37 = v24;
        v23((v24 + v14 + v27 * v15), v36, v39);
        a3 = v31;
        a1 = v29;
      }

      else
      {
        (*v32)(v38, v39);
        a3 = v16;
      }

      ++v13;
      v10 = v18;
      if (v35 == v13)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v37 = MEMORY[0x277D84F90];
LABEL_14:
  }
}

void sub_22B1DB6EC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v282 = a7;
  v285 = a6;
  v258 = a5;
  v283 = a4;
  v259 = a3;
  v291 = sub_22B35DE9C();
  v11 = *(v291 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v291);
  v256 = &v252 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v254 = &v252 - v15;
  v257 = sub_22B35D8BC();
  v255 = *(v257 - 8);
  v16 = *(v255 + 64);
  MEMORY[0x28223BE20](v257);
  v253 = &v252 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v321 = type metadata accessor for CDTOUPeak();
  v252 = *(v321 - 8);
  v18 = *(v252 + 64);
  MEMORY[0x28223BE20](v321);
  v322 = &v252 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v318 = &v252 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA080, &unk_22B364280);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v281 = &v252 - v24;
  v289 = sub_22B35E0BC();
  v288 = *(v289 - 8);
  v25 = *(v288 + 64);
  MEMORY[0x28223BE20](v289);
  v319 = &v252 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA760, &qword_22B365A08);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v280 = &v252 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v279 = &v252 - v31;
  MEMORY[0x28223BE20](v32);
  v278 = &v252 - v33;
  MEMORY[0x28223BE20](v34);
  v277 = &v252 - v35;
  MEMORY[0x28223BE20](v36);
  v276 = &v252 - v37;
  MEMORY[0x28223BE20](v38);
  v275 = &v252 - v39;
  v298 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA7B8, &unk_22B365A30);
  v267 = *(v298 - 8);
  v40 = *(v267 + 64);
  MEMORY[0x28223BE20](v298);
  v266 = &v252 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v301 = &v252 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA798, &qword_22B365A28);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44 - 8);
  v274 = &v252 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v273 = &v252 - v48;
  MEMORY[0x28223BE20](v49);
  v272 = &v252 - v50;
  MEMORY[0x28223BE20](v51);
  v271 = &v252 - v52;
  MEMORY[0x28223BE20](v53);
  v270 = &v252 - v54;
  MEMORY[0x28223BE20](v55);
  v269 = &v252 - v56;
  v300 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA7C0, &qword_22B3664A0);
  v287 = *(v300 - 8);
  v57 = *(v287 + 64);
  MEMORY[0x28223BE20](v300);
  v286 = &v252 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v59);
  v316 = &v252 - v60;
  v297 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA7C8, &qword_22B365A40);
  v265 = *(v297 - 8);
  v61 = *(v265 + 64);
  MEMORY[0x28223BE20](v297);
  v264 = &v252 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v63);
  v311 = &v252 - v64;
  v304 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA7D0, &qword_22B365A48);
  v65 = *(*(v304 - 8) + 64);
  MEMORY[0x28223BE20](v304);
  v290 = &v252 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v67);
  v305 = &v252 - v68;
  v302 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA768, &qword_22B365A10);
  v69 = *(*(v302 - 8) + 64);
  MEMORY[0x28223BE20](v302);
  v303 = (&v252 - v70);
  v296 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA7D8, &qword_22B365A50);
  v263 = *(v296 - 8);
  v71 = *(v263 + 64);
  MEMORY[0x28223BE20](v296);
  v262 = &v252 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v73);
  v312 = &v252 - v74;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA7E0, &qword_22B365A58);
  v76 = *(*(v75 - 8) + 64);
  MEMORY[0x28223BE20](v75 - 8);
  v284 = (&v252 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v78);
  v299 = &v252 - v79;
  v295 = sub_22B35E53C();
  v261 = *(v295 - 8);
  v80 = *(v261 + 64);
  MEMORY[0x28223BE20](v295);
  v260 = &v252 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v82);
  v313 = &v252 - v83;
  v310 = sub_22B35E4BC();
  v309 = *(v310 - 8);
  v84 = *(v309 + 64);
  MEMORY[0x28223BE20](v310);
  v294 = &v252 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v86);
  v314 = &v252 - v87;
  v308 = sub_22B35E81C();
  v307 = *(v308 - 8);
  v88 = v307[8];
  MEMORY[0x28223BE20](v308);
  v293 = &v252 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v90);
  v292 = &v252 - v91;
  MEMORY[0x28223BE20](v92);
  v317 = &v252 - v93;
  MEMORY[0x28223BE20](v94);
  v315 = &v252 - v95;
  v96 = sub_22B35E37C();
  v97 = *(v96 - 8);
  v98 = *(v97 + 64);
  MEMORY[0x28223BE20](v96);
  v100 = &v252 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v101);
  v325 = &v252 - v102;
  v104 = MEMORY[0x28223BE20](v103);
  v106 = &v252 - v105;
  v107 = *(a2 + 16);
  v268 = a8;
  v306 = a1;
  v320 = v11;
  if (v107)
  {
    v109 = *(v97 + 16);
    v108 = v97 + 16;
    v331 = v109;
    v323 = (*(v108 + 64) + 32) & ~*(v108 + 64);
    v110 = a2 + v323;
    v111 = *(v108 + 56);
    v326 = (v108 + 16);
    v328 = (v108 - 8);
    v327 = MEMORY[0x277D84F90];
    v112 = a2 + v323;
    v113 = v107;
    v329 = v111;
    v330 = v108;
    v324 = v100;
    (v109)(v106, a2 + v323, v96, v104);
    while (1)
    {
      v115 = *(sub_22B35E35C() + 16);

      if (v115)
      {
        v116 = *v326;
        (*v326)(v100, v106, v96);
        v117 = v327;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v332 = v117;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22B355744(0, *(v117 + 2) + 1, 1);
          v117 = v332;
        }

        v120 = *(v117 + 2);
        v119 = *(v117 + 3);
        if (v120 >= v119 >> 1)
        {
          sub_22B355744(v119 > 1, v120 + 1, 1);
          v117 = v332;
        }

        *(v117 + 2) = v120 + 1;
        v327 = v117;
        v111 = v329;
        v121 = &v117[v323 + v120 * v329];
        v100 = v324;
        v116(v121, v324, v96);
      }

      else
      {
        (*v328)(v106, v96);
      }

      v112 += v111;
      if (!--v113)
      {
        break;
      }

      (v331)(v106, v112, v96, v114);
    }

    v122 = MEMORY[0x277D84F90];
    a1 = v306;
    v11 = v320;
    while (1)
    {
      v123 = v325;
      (v331)(v325, v110, v96);
      v124 = sub_22B35E34C();
      (*v328)(v123, v96);
      v125 = *(v124 + 16);
      v126 = v122[2];
      v127 = v126 + v125;
      if (__OFADD__(v126, v125))
      {
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v128 = swift_isUniquelyReferenced_nonNull_native();
      if (v128 && v127 <= v122[3] >> 1)
      {
        if (*(v124 + 16))
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v126 <= v127)
        {
          v129 = v126 + v125;
        }

        else
        {
          v129 = v126;
        }

        v122 = sub_22B32D46C(v128, v129, 1, v122);
        if (*(v124 + 16))
        {
LABEL_24:
          v130 = (v122[3] >> 1) - v122[2];
          v131 = *(sub_22B35E3DC() - 8);
          if (v130 < v125)
          {
            goto LABEL_58;
          }

          v132 = (*(v131 + 80) + 32) & ~*(v131 + 80);
          v133 = *(v131 + 72);
          swift_arrayInitWithCopy();

          if (v125)
          {
            v134 = v122[2];
            v135 = __OFADD__(v134, v125);
            v136 = v134 + v125;
            if (v135)
            {
              goto LABEL_59;
            }

            v122[2] = v136;
          }

          goto LABEL_14;
        }
      }

      if (v125)
      {
        goto LABEL_57;
      }

LABEL_14:
      v110 += v329;
      if (!--v107)
      {
        goto LABEL_29;
      }
    }
  }

  v122 = MEMORY[0x277D84F90];
  v327 = MEMORY[0x277D84F90];
LABEL_29:
  v137 = MEMORY[0x23188EEB0](v104);
  v138 = type metadata accessor for SessionHalfHourlySummary(0);
  v139 = v138[9];
  sub_22B35DD3C();
  v141 = v305;
  if ((*&v140 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_60;
  }

  if (v140 <= -9.22337204e18)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v140 >= 9.22337204e18)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  sub_22B35E4CC();
  v331 = v138[10];
  sub_22B35DD3C();
  if ((*&v142 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v142 <= -9.22337204e18)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (v142 >= 9.22337204e18)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v285 = v137;
  v330 = v139;
  sub_22B35E4CC();
  v323 = *(a1 + v138[17]);
  sub_22B35E4CC();
  v143 = sub_22B35E9EC();
  v144 = (a1 + v138[11]);
  v145 = *v144;
  sub_22B1FE510(&qword_27D8BA7E8, 255, MEMORY[0x277D175B8]);
  v146 = v299;
  sub_22B35E7FC();
  v147 = *(*(v143 - 8) + 48);
  if (v147(v146, 1, v143) == 1)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v148 = v11;
  v149 = v144[1];
  v150 = v284;
  sub_22B35E7FC();
  if (v147(v150, 1, v143) != 1)
  {
    sub_22B35E52C();
    v151 = v306;
    v152 = v330;
    v153 = v331;
    sub_22B2000B4(v306 + v330, &v331[v306], v327, v283);
    v329 = v154;

    v155 = sub_22B1FE510(&qword_28140B490, 255, MEMORY[0x277CC9578]);
    v156 = v291;
    v157 = sub_22B36076C();
    v158 = v304;
    if (v157)
    {
      v284 = v138;
      v326 = v155;
      v159 = *(v148 + 16);
      v160 = v151 + v152;
      v161 = v141;
      (v159)(v141, v160, v156);
      v162 = v141 + *(v158 + 48);
      v327 = v159;
      v328 = (v148 + 16);
      (v159)(v162, &v153[v151], v156);
      v163 = v290;
      sub_22B170BE0(v141, v290, &qword_27D8BA7D0, &qword_22B365A48);
      v299 = *(v158 + 48);
      v164 = (v320 + 32);
      v165 = *(v320 + 32);
      v166 = v303;
      v165(v303, v163, v156);
      v167 = *(v320 + 8);
      v320 += 8;
      v167(&v299[v163], v156);
      v168 = v161;
      v169 = v330;
      sub_22B170CD0(v168, v163, &qword_27D8BA7D0, &qword_22B365A48);
      v170 = v166 + *(v302 + 36);
      v171 = v163 + *(v158 + 48);
      v325 = v165;
      v165(v170, v171, v156);
      v324 = v167;
      v167(v163, v156);
      sub_22B1E3CC4(v317, v329, v166, v122, v312);
      sub_22B123284(v166, &qword_27D8BA768, &qword_22B365A10);
      v172 = v331;
      if (sub_22B36076C())
      {
        v173 = v305;
        v174 = v327;
        (v327)(v305, v151 + v169, v156);
        v175 = v304;
        (v174)(v173 + *(v304 + 48), &v172[v151], v156);
        sub_22B170BE0(v173, v163, &qword_27D8BA7D0, &qword_22B365A48);
        v176 = v164;
        v177 = *(v175 + 48);
        v178 = v303;
        v179 = v325;
        (v325)(v303, v163, v156);
        v180 = v163 + v177;
        v181 = v324;
        (v324)(v180, v156);
        sub_22B170CD0(v173, v163, &qword_27D8BA7D0, &qword_22B365A48);
        v182 = v178 + *(v302 + 36);
        v183 = v163 + *(v175 + 48);
        v283 = v176;
        v179(v182, v183, v156);
        v181(v163, v156);
        sub_22B1E02CC(v323, v329, v178, v122, v311);

        sub_22B123284(v178, &qword_27D8BA768, &qword_22B365A10);
        v184 = *(v309 + 56);
        v185 = v310;
        v184(v269, 1, 1, v310);
        v184(v270, 1, 1, v185);
        v184(v271, 1, 1, v185);
        v184(v272, 1, 1, v185);
        v184(v273, 1, 1, v185);
        v184(v274, 1, 1, v185);
        v186 = MEMORY[0x277D17508];
        sub_22B1FE510(&qword_27D8BA7A0, 255, MEMORY[0x277D17508]);
        sub_22B1FE510(&qword_27D8BA7A8, 255, v186);
        sub_22B1FE510(&qword_27D8BA7B0, 255, v186);
        sub_22B35E48C();
        v187 = v307[7];
        v188 = v308;
        v187(v275, 1, 1, v308);
        v187(v276, 1, 1, v188);
        v187(v277, 1, 1, v188);
        v187(v278, 1, 1, v188);
        v187(v279, 1, 1, v188);
        v187(v280, 1, 1, v188);
        v189 = MEMORY[0x277D17570];
        sub_22B1FE510(&qword_27D8BA770, 255, MEMORY[0x277D17570]);
        sub_22B1FE510(&qword_27D8BA778, 255, v189);
        sub_22B1FE510(&qword_27D8BA780, 255, v189);
        v190 = v301;
        sub_22B35E48C();
        v191 = v281;
        sub_22B170BE0(v282, v281, &unk_27D8BA080, &unk_22B364280);
        v192 = v288;
        v193 = v289;
        if ((*(v288 + 48))(v191, 1, v289) == 1)
        {
          sub_22B123284(v191, &unk_27D8BA080, &unk_22B364280);
          v194 = v298;
          v195 = v267;
          v196 = v266;
LABEL_55:
          v243 = v307[2];
          v244 = v308;
          v243(v292, v315, v308);
          (*(v309 + 16))(v294, v314, v310);
          v243(v293, v317, v244);
          v245 = v287;
          (*(v287 + 16))(v286, v316, v300);
          (*(v195 + 16))(v196, v190, v194);
          v246 = v265;
          (*(v265 + 16))(v264, v311, v297);
          v247 = v263;
          (*(v263 + 16))(v262, v312, v296);
          v248 = v261;
          (*(v261 + 16))(v260, v313, v295);
          v251 = *(v306 + v284[19]);
          sub_22B35E5FC();
          (*(v195 + 8))(v301, v298);
          (*(v245 + 8))(v316, v300);
          (*(v246 + 8))(v311, v297);
          (*(v247 + 8))(v312, v296);
          (*(v248 + 8))(v313, v295);
          (*(v309 + 8))(v314, v310);
          v249 = v307[1];
          v250 = v308;
          v249(v317, v308);
          v249(v315, v250);
          objc_autoreleasePoolPop(v285);
          return;
        }

        v197 = v190;
        v198 = v319;
        (*(v192 + 32))(v319, v191, v193);
        v199 = *(v259 + 16);
        if (!v199)
        {
          (*(v192 + 8))(v198, v193);
          v194 = v298;
          v195 = v267;
          v196 = v266;
          v190 = v197;
          goto LABEL_55;
        }

        v200 = (*(v252 + 80) + 32) & ~*(v252 + 80);
        v201 = *(v252 + 72);
        v202 = v259 + v200;
        v203 = MEMORY[0x277D84F90];
        v204 = v318;
        v205 = v305;
        do
        {
          sub_22B201F74(v202, v204, type metadata accessor for CDTOUPeak);
          if (*(*(v204 + *(v321 + 28)) + 16))
          {
            sub_22B20203C(v204, v322, type metadata accessor for CDTOUPeak);
            v206 = swift_isUniquelyReferenced_nonNull_native();
            v332 = v203;
            if ((v206 & 1) == 0)
            {
              sub_22B355788(0, *(v203 + 2) + 1, 1);
              v203 = v332;
            }

            v208 = *(v203 + 2);
            v207 = *(v203 + 3);
            if (v208 >= v207 >> 1)
            {
              sub_22B355788(v207 > 1, v208 + 1, 1);
              v203 = v332;
            }

            *(v203 + 2) = v208 + 1;
            sub_22B20203C(v322, &v203[v200 + v208 * v201], type metadata accessor for CDTOUPeak);
            v204 = v318;
            v198 = v319;
          }

          else
          {
            sub_22B201FDC(v204, type metadata accessor for CDTOUPeak);
          }

          v202 += v201;
          --v199;
        }

        while (v199);
        v209 = v306;
        v210 = v330;
        v211 = v291;
        v212 = v327;
        (v327)(v254, v306 + v330, v291);
        v213 = v331;
        (v212)(v256, &v331[v209], v211);
        v214 = v253;
        sub_22B35D88C();
        v329 = sub_22B200620(v214, v203, v198, v258);

        (*(v255 + 8))(v214, v257);
        if (sub_22B36076C())
        {
          v215 = v327;
          (v327)(v205, v209 + v210, v211);
          v216 = v304;
          (v215)(v205 + *(v304 + 48), &v213[v209], v211);
          v217 = v209;
          v218 = v290;
          sub_22B170BE0(v205, v290, &qword_27D8BA7D0, &qword_22B365A48);
          v219 = *(v216 + 48);
          v220 = v303;
          v221 = v325;
          (v325)(v303, v218, v211);
          v222 = v324;
          (v324)(v218 + v219, v211);
          v223 = v205;
          v224 = v319;
          sub_22B170CD0(v223, v218, &qword_27D8BA7D0, &qword_22B365A48);
          v221(v220 + *(v302 + 36), v218 + *(v216 + 48), v211);
          v222(v218, v211);
          v225 = v286;
          v226 = v224;
          sub_22B1DD9F8(v323, v329, v220, v224, v286);
          sub_22B123284(v220, &qword_27D8BA768, &qword_22B365A10);
          v227 = v287;
          v228 = v316;
          v229 = v300;
          (*(v287 + 8))(v316, v300);
          v230 = v228;
          v231 = v225;
          v232 = v330;
          v233 = v331;
          (*(v227 + 32))(v230, v231, v229);
          if (sub_22B36076C())
          {
            v234 = v217 + v232;
            v235 = v305;
            v236 = v327;
            (v327)(v305, v234, v211);
            v237 = v304;
            (v236)(v235 + *(v304 + 48), &v233[v217], v211);
            v238 = v226;
            sub_22B170BE0(v235, v218, &qword_27D8BA7D0, &qword_22B365A48);
            v239 = *(v237 + 48);
            v240 = v303;
            v241 = v325;
            (v325)(v303, v218, v211);
            v242 = v324;
            (v324)(v218 + v239, v211);
            sub_22B170CD0(v235, v218, &qword_27D8BA7D0, &qword_22B365A48);
            v241(v240 + *(v302 + 36), v218 + *(v237 + 48), v211);
            v242(v218, v211);
            v196 = v266;
            sub_22B1E1858(v317, v329, v240, v238, v266);

            sub_22B123284(v240, &qword_27D8BA768, &qword_22B365A10);
            (*(v288 + 8))(v238, v289);
            v195 = v267;
            v190 = v301;
            v194 = v298;
            (*(v267 + 8))(v301, v298);
            (*(v195 + 32))(v190, v196, v194);
            goto LABEL_55;
          }

          goto LABEL_69;
        }

LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

LABEL_71:
  __break(1u);
}

uint64_t sub_22B1DD90C()
{
  v0 = sub_22B35D8BC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x23188BB60](v3);
  v6 = sub_22B35D83C();
  (*(v1 + 8))(v5, v0);
  return v6 & 1;
}

uint64_t sub_22B1DD9F8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v344 = a4;
  v321 = a3;
  v345 = a2;
  v347 = a1;
  v291 = a5;
  v5 = sub_22B35E4BC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v282 = &v275 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v297 = &v275 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA3E8, &unk_22B364790);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v308 = &v275 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v316 = &v275 - v15;
  v16 = sub_22B35DDBC();
  v342 = *(v16 - 8);
  v343 = v16;
  v17 = *(v342 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v275 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v331 = &v275 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v307 = &v275 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v314 = &v275 - v26;
  v328 = sub_22B35FF8C();
  v330 = *(v328 - 8);
  v27 = *(v330 + 64);
  MEMORY[0x28223BE20](v328);
  v306 = &v275 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v327 = &v275 - v30;
  v337 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA788, &qword_22B365A18);
  v341 = *(v337 - 8);
  v31 = *(v341 + 64);
  MEMORY[0x28223BE20](v337);
  v324 = (&v275 - v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA790, &qword_22B365A20);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v338 = &v275 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v38 = (&v275 - v37);
  v346 = sub_22B35DE9C();
  v320 = *(v346 - 8);
  v39 = *(v320 + 64);
  MEMORY[0x28223BE20](v346);
  v292 = &v275 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v322 = &v275 - v42;
  MEMORY[0x28223BE20](v43);
  v334 = &v275 - v44;
  MEMORY[0x28223BE20](v45);
  v311 = &v275 - v46;
  MEMORY[0x28223BE20](v47);
  v310 = &v275 - v48;
  v313 = sub_22B35D8BC();
  v309 = *(v313 - 8);
  v49 = *(v309 + 64);
  MEMORY[0x28223BE20](v313);
  v303 = &v275 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v315 = &v275 - v52;
  MEMORY[0x28223BE20](v53);
  v312 = &v275 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA798, &qword_22B365A28);
  v56 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55 - 8);
  v290 = &v275 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v58);
  v289 = &v275 - v59;
  MEMORY[0x28223BE20](v60);
  v288 = &v275 - v61;
  MEMORY[0x28223BE20](v62);
  v287 = &v275 - v63;
  MEMORY[0x28223BE20](v64);
  v296 = &v275 - v65;
  MEMORY[0x28223BE20](v66);
  v281 = &v275 - v67;
  MEMORY[0x28223BE20](v68);
  v280 = &v275 - v69;
  MEMORY[0x28223BE20](v70);
  v279 = &v275 - v71;
  MEMORY[0x28223BE20](v72);
  v278 = &v275 - v73;
  MEMORY[0x28223BE20](v74);
  v277 = &v275 - v75;
  MEMORY[0x28223BE20](v76);
  v276 = &v275 - v77;
  MEMORY[0x28223BE20](v78);
  v286 = &v275 - v79;
  MEMORY[0x28223BE20](v80);
  v82 = &v275 - v81;
  MEMORY[0x28223BE20](v83);
  v85 = &v275 - v84;
  MEMORY[0x28223BE20](v86);
  v88 = &v275 - v87;
  MEMORY[0x28223BE20](v89);
  v91 = &v275 - v90;
  MEMORY[0x28223BE20](v92);
  v94 = &v275 - v93;
  v96 = MEMORY[0x28223BE20](v95);
  v317 = v6;
  v99 = *(v6 + 56);
  v98 = v6 + 56;
  v97 = v99;
  v298 = &v275 - v100;
  v99(v96);
  v299 = v94;
  (v99)(v94, 1, 1, v5);
  v300 = v91;
  (v99)(v91, 1, 1, v5);
  v301 = v88;
  v101 = v88;
  v102 = v5;
  (v99)(v101, 1, 1, v5);
  v302 = v85;
  v103 = v85;
  v104 = v345;
  (v99)(v103, 1, 1, v5);
  (v99)(v82, 1, 1, v5);
  v105 = v104[2];
  v304 = v5;
  v295 = v82;
  if (!v105)
  {
    v268 = v286;
    sub_22B35E4CC();
    (v97)(v268, 0, 1, v102);
    sub_22B12F2C4(v268, v82, &qword_27D8BA798, &qword_22B365A28);
    v267 = v82;
LABEL_72:
    sub_22B170BE0(v298, v268, &qword_27D8BA798, &qword_22B365A28);
    sub_22B170BE0(v299, v296, &qword_27D8BA798, &qword_22B365A28);
    sub_22B170BE0(v300, v287, &qword_27D8BA798, &qword_22B365A28);
    sub_22B170BE0(v301, v288, &qword_27D8BA798, &qword_22B365A28);
    sub_22B170BE0(v302, v289, &qword_27D8BA798, &qword_22B365A28);
    sub_22B170BE0(v267, v290, &qword_27D8BA798, &qword_22B365A28);
    v269 = MEMORY[0x277D17508];
    sub_22B1FE510(&qword_27D8BA7A0, 255, MEMORY[0x277D17508]);
    v270 = sub_22B1FE510(&qword_27D8BA7A8, 255, v269);
    v271 = sub_22B1FE510(&qword_27D8BA7B0, 255, v269);
    v273 = v270;
    v274 = v271;
    sub_22B35E48C();
    sub_22B123284(v295, &qword_27D8BA798, &qword_22B365A28);
    sub_22B123284(v302, &qword_27D8BA798, &qword_22B365A28);
    sub_22B123284(v301, &qword_27D8BA798, &qword_22B365A28);
    sub_22B123284(v300, &qword_27D8BA798, &qword_22B365A28);
    sub_22B123284(v299, &qword_27D8BA798, &qword_22B365A28);
    return sub_22B123284(v298, &qword_27D8BA798, &qword_22B365A28);
  }

  v106 = v347;
  v283 = v97;
  v284 = v98;
  v107 = v320;
  v108 = v320 + 16;
  v109 = *(v320 + 16);
  v110 = v321;
  v111 = v346;
  v109(v310, v321, v346);
  v318 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA768, &qword_22B365A10) + 36);
  v326 = v108;
  v325 = v109;
  v109(v311, v110 + v318, v111);
  sub_22B35D88C();
  v112 = sub_22B35D8AC();
  v114 = v113;
  MEMORY[0x28223BE20](v112);
  v273 = v344;
  v348 = v104;

  v115 = 0;
  sub_22B21AEB4(sub_22B201F34, (&v275 - 4));
  v116 = 0;
  v339 = v348;
  v117 = v348[2];
  v329 = v330 + 16;
  v335 = (v341 + 48);
  v336 = (v341 + 56);
  v333 = (v330 + 32);
  v340 = (v330 + 8);
  v341 = v107 + 56;
  v342 += 8;
  v323 = (v107 + 32);
  v320 = v107 + 8;
  v305 = (v309 + 48);
  v294 = (v309 + 32);
  v309 += 8;
  v118 = v106;
  v293 = (v317 + 48);
  v275 = (v317 + 16);
  v285 = (v317 + 8);
  v119 = v331;
  v120 = v314;
  v121 = v328;
  v122 = v327;
  v123 = v337;
  v124 = v338;
  v345 = v38;
  v319 = v19;
  v332 = v117;
  while (v116 == v117)
  {
    v125 = 1;
    v347 = v117;
LABEL_9:
    (*v336)(v124, v125, 1, v123);
    sub_22B170CD0(v124, v38, &qword_27D8BA790, &qword_22B365A20);
    if ((*v335)(v38, 1, v123) == 1)
    {
      (*v309)(v312, v313);

      v267 = v295;
      v268 = v286;
      goto LABEL_72;
    }

    v132 = v123;
    v133 = v19;
    v134 = *v38;
    (*v333)(v122, v38 + *(v132 + 48), v121);
    sub_22B35F55C();
    sub_22B35FF7C();
    sub_22B35DD9C();
    if (v115)
    {

      (*v342)(v119, v343);
      (*v340)(v122, v121);
      (*v341)(v120, 1, 1, v346);
      sub_22B123284(v120, &qword_27D8BA340, &qword_22B363FB0);
      v115 = 0;
      v19 = v133;
      v123 = v337;
      v124 = v338;
      v38 = v345;
      v117 = v332;
      v116 = v347;
    }

    else
    {
      v135 = *v342;
      (*v342)(v119, v343);

      v136 = *v341;
      v137 = v346;
      (*v341)(v120, 0, 1, v346);
      v138 = *v323;
      (*v323)(v334, v120, v137);
      v139 = v134 + 1;
      if (__OFADD__(v134, 1))
      {
        goto LABEL_75;
      }

      if (v139 >= v339[2])
      {
        v144 = v322;
        v325(v322, v321 + v318, v137);
        v121 = v328;
      }

      else
      {
        sub_22B35F55C();
        v140 = v328;
        if ((v139 & 0x8000000000000000) != 0)
        {
          goto LABEL_76;
        }

        if (v139 >= v339[2])
        {
          goto LABEL_77;
        }

        v141 = v330;
        v142 = v306;
        (*(v330 + 16))(v306, v339 + ((*(v141 + 80) + 32) & ~*(v141 + 80)) + *(v141 + 72) * v139, v328);
        sub_22B35FF7C();
        (*(v141 + 8))(v142, v140);
        v143 = v307;
        sub_22B35DD9C();
        v135(v133, v343);

        v145 = v346;
        v136(v143, 0, 1, v346);
        v146 = v292;
        v138(v292, v143, v145);
        if ((sub_22B35DDEC() & 1) == 0)
        {
          (*v320)(v146, v145);
          v120 = v314;
          v151 = v145;
          v121 = v328;
          v122 = v327;
          v144 = v322;
          v325(v322, v321 + v318, v151);
          goto LABEL_22;
        }

        sub_22B1FE510(&qword_28140B490, 255, MEMORY[0x277CC9578]);
        v147 = v321;
        v148 = v318;
        v149 = sub_22B36074C();
        v120 = v314;
        v121 = v328;
        if (v149)
        {
          (*v320)(v146, v145);
          v150 = v147 + v148;
          v144 = v322;
          v325(v322, v150, v145);
        }

        else
        {
          v144 = v322;
          v138(v322, v146, v145);
        }
      }

      v122 = v327;
LABEL_22:
      v38 = v345;
      v152 = v334;
      if (sub_22B35DDEC())
      {
        v317 = 0;
        v153 = v346;
        v154 = v325;
        v325(v310, v152, v346);
        v154(v311, v144, v153);
        v155 = v315;
        v156 = v316;
        sub_22B35D88C();
        sub_22B35D84C();
        v157 = v308;
        sub_22B170BE0(v156, v308, &qword_27D8BA3E8, &unk_22B364790);
        v158 = v313;
        if ((*v305)(v157, 1, v313) == 1)
        {
          sub_22B123284(v156, &qword_27D8BA3E8, &unk_22B364790);
          (*v309)(v155, v158);
          v159 = v144;
          v160 = *v320;
          (*v320)(v159, v153);
          v160(v334, v153);
          v122 = v327;
          (*v340)(v327, v121);
          sub_22B123284(v157, &qword_27D8BA3E8, &unk_22B364790);
          goto LABEL_37;
        }

        v164 = v303;
        (*v294)(v303, v157, v158);
        v165 = v158;
        sub_22B35D8AC();
        if (v166 <= 0.0)
        {
          v176 = v144;
          v177 = *v309;
          (*v309)(v164, v165);
          sub_22B123284(v316, &qword_27D8BA3E8, &unk_22B364790);
          v177(v315, v165);
          v178 = *v320;
          v179 = v176;
          v180 = v346;
          (*v320)(v179, v346);
          v178(v334, v180);
          v122 = v327;
          (*v340)(v327, v121);
LABEL_37:
          v119 = v331;
          v117 = v332;
          v19 = v319;
          v123 = v337;
          v124 = v338;
          v116 = v347;
          v115 = v317;
        }

        else
        {
          sub_22B35D8AC();
          v168 = v167 / v114 * v118;
          v115 = v334;
          v19 = v319;
          v117 = v332;
          if ((*&v168 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_78;
          }

          if (v168 <= -9.22337204e18)
          {
            goto LABEL_79;
          }

          if (v168 >= 9.22337204e18)
          {
            goto LABEL_80;
          }

          sub_22B35E4CC();
          v169 = sub_22B35FF5C();
          v170 = *v293;
          if (v169 <= 1)
          {
            v124 = v338;
            if (!v169)
            {
              v191 = v298;
              v192 = v304;
              v193 = v170(v298, 1, v304);
              v194 = v297;
              if (v193)
              {
                v195 = 0;
              }

              else
              {
                v223 = v282;
                (*v275)(v282, v191, v192);
                v195 = sub_22B35E42C();
                v224 = v223;
                v194 = v297;
                (*v285)(v224, v192);
              }

              if (__OFADD__(v195, sub_22B35E42C()))
              {
                goto LABEL_86;
              }

              v225 = v276;
              sub_22B35E4CC();
              v226 = v194;
              v227 = v304;
              (*v285)(v226, v304);
              v228 = *v309;
              v229 = v313;
              (*v309)(v303, v313);
              sub_22B123284(v316, &qword_27D8BA3E8, &unk_22B364790);
              v228(v315, v229);
              v230 = *v320;
              v231 = v346;
              (*v320)(v322, v346);
              v230(v115, v231);
              v232 = v327;
              v121 = v328;
              (*v340)(v327, v328);
              v233 = v227;
              v122 = v232;
              (v283)(v225, 0, 1, v233);
              v210 = v225;
              v211 = &v330;
              goto LABEL_69;
            }

            v172 = v297;
            if (v169 != 1)
            {
              goto LABEL_49;
            }

            v181 = v299;
            v182 = v304;
            if (v170(v299, 1, v304))
            {
              v183 = 0;
            }

            else
            {
              v245 = v282;
              (*v275)(v282, v181, v182);
              v183 = sub_22B35E42C();
              v246 = v245;
              v172 = v297;
              (*v285)(v246, v182);
            }

            if (__OFADD__(v183, sub_22B35E42C()))
            {
              goto LABEL_82;
            }

            v247 = v277;
            sub_22B35E4CC();
            v248 = v172;
            v249 = v304;
            (*v285)(v248, v304);
            v250 = *v309;
            v251 = v313;
            (*v309)(v303, v313);
            sub_22B123284(v316, &qword_27D8BA3E8, &unk_22B364790);
            v250(v315, v251);
            v252 = *v320;
            v253 = v346;
            (*v320)(v322, v346);
            v252(v115, v253);
            v254 = v327;
            v121 = v328;
            (*v340)(v327, v328);
            v255 = v249;
            v122 = v254;
            (v283)(v247, 0, 1, v255);
            v210 = v247;
            v211 = &v331;
          }

          else
          {
            v171 = v301;
            v124 = v338;
            if (v169 == 2)
            {
              v184 = v300;
              v185 = v304;
              v186 = v170(v300, 1, v304);
              v187 = v297;
              if (v186)
              {
                v188 = 0;
              }

              else
              {
                v199 = v282;
                (*v275)(v282, v184, v185);
                v188 = sub_22B35E42C();
                v200 = v199;
                v187 = v297;
                (*v285)(v200, v185);
              }

              if (__OFADD__(v188, sub_22B35E42C()))
              {
                goto LABEL_81;
              }

              v201 = v278;
              sub_22B35E4CC();
              v202 = v187;
              v203 = v304;
              (*v285)(v202, v304);
              v204 = *v309;
              v205 = v313;
              (*v309)(v303, v313);
              sub_22B123284(v316, &qword_27D8BA3E8, &unk_22B364790);
              v204(v315, v205);
              v206 = *v320;
              v207 = v346;
              (*v320)(v322, v346);
              v206(v115, v207);
              v208 = v327;
              v121 = v328;
              (*v340)(v327, v328);
              v209 = v203;
              v122 = v208;
              (v283)(v201, 0, 1, v209);
              v210 = v201;
              v211 = &v332;
            }

            else
            {
              v172 = v297;
              if (v169 != 3)
              {
                if (v169 == 4)
                {
                  v173 = v302;
                  v174 = v304;
                  if (v170(v302, 1, v304))
                  {
                    v175 = 0;
                  }

                  else
                  {
                    v234 = v282;
                    (*v275)(v282, v173, v174);
                    v175 = sub_22B35E42C();
                    v235 = v234;
                    v172 = v297;
                    (*v285)(v235, v174);
                  }

                  if (__OFADD__(v175, sub_22B35E42C()))
                  {
                    goto LABEL_85;
                  }

                  v236 = v280;
                  sub_22B35E4CC();
                  v237 = v172;
                  v238 = v304;
                  (*v285)(v237, v304);
                  v239 = *v309;
                  v240 = v313;
                  (*v309)(v303, v313);
                  sub_22B123284(v316, &qword_27D8BA3E8, &unk_22B364790);
                  v239(v315, v240);
                  v241 = *v320;
                  v242 = v346;
                  (*v320)(v322, v346);
                  v241(v115, v242);
                  v243 = v327;
                  v121 = v328;
                  (*v340)(v327, v328);
                  v244 = v238;
                  v122 = v243;
                  (v283)(v236, 0, 1, v244);
                  v210 = v236;
                  v211 = &v334;
                  goto LABEL_69;
                }

LABEL_49:
                v196 = v295;
                v197 = v304;
                if (v170(v295, 1, v304))
                {
                  v198 = 0;
                }

                else
                {
                  v256 = v282;
                  (*v275)(v282, v196, v197);
                  v198 = sub_22B35E42C();
                  v257 = v256;
                  v172 = v297;
                  (*v285)(v257, v197);
                }

                if (__OFADD__(v198, sub_22B35E42C()))
                {
                  goto LABEL_84;
                }

                v258 = v281;
                sub_22B35E4CC();
                v259 = v172;
                v260 = v304;
                (*v285)(v259, v304);
                v261 = *v309;
                v262 = v313;
                (*v309)(v303, v313);
                sub_22B123284(v316, &qword_27D8BA3E8, &unk_22B364790);
                v261(v315, v262);
                v263 = *v320;
                v264 = v346;
                (*v320)(v322, v346);
                v263(v115, v264);
                v265 = v327;
                v121 = v328;
                (*v340)(v327, v328);
                v266 = v260;
                v122 = v265;
                (v283)(v258, 0, 1, v266);
                v210 = v258;
                v211 = &v327;
                goto LABEL_69;
              }

              v189 = v304;
              if (v170(v301, 1, v304))
              {
                v190 = 0;
              }

              else
              {
                v212 = v282;
                (*v275)(v282, v171, v189);
                v190 = sub_22B35E42C();
                v213 = v212;
                v172 = v297;
                (*v285)(v213, v189);
              }

              if (__OFADD__(v190, sub_22B35E42C()))
              {
                goto LABEL_83;
              }

              v214 = v279;
              sub_22B35E4CC();
              v215 = v172;
              v216 = v304;
              (*v285)(v215, v304);
              v217 = *v309;
              v218 = v313;
              (*v309)(v303, v313);
              sub_22B123284(v316, &qword_27D8BA3E8, &unk_22B364790);
              v217(v315, v218);
              v219 = *v320;
              v220 = v346;
              (*v320)(v322, v346);
              v219(v115, v220);
              v221 = v327;
              v121 = v328;
              (*v340)(v327, v328);
              v222 = v216;
              v122 = v221;
              (v283)(v214, 0, 1, v222);
              v210 = v214;
              v211 = &v333;
            }
          }

LABEL_69:
          sub_22B12F2C4(v210, *(v211 - 32), &qword_27D8BA798, &qword_22B365A28);
          v119 = v331;
          v120 = v314;
          v123 = v337;
          v116 = v347;
          v115 = v317;
        }
      }

      else
      {
        v161 = v144;
        v162 = *v320;
        v163 = v346;
        (*v320)(v161, v346);
        v162(v152, v163);
        (*v340)(v122, v121);
        v119 = v331;
        v117 = v332;
        v19 = v319;
        v123 = v337;
        v124 = v338;
        v116 = v347;
      }
    }
  }

  if ((v116 & 0x8000000000000000) == 0)
  {
    if (v116 >= v339[2])
    {
      goto LABEL_74;
    }

    v126 = v116 + 1;
    v127 = v330;
    v128 = v339 + ((*(v127 + 80) + 32) & ~*(v127 + 80)) + *(v127 + 72) * v116;
    v129 = *(v123 + 48);
    v130 = v324;
    *v324 = v116;
    (*(v127 + 16))(&v130[v129], v128, v121);
    v131 = v130;
    v38 = v345;
    sub_22B170CD0(v131, v124, &qword_27D8BA788, &qword_22B365A18);
    v125 = 0;
    v347 = v126;
    v119 = v331;
    goto LABEL_9;
  }

  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_22B1DFE88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a2;
  v41 = sub_22B35DDBC();
  v4 = *(v41 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v41);
  v39 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v38 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v31 - v14;
  v16 = sub_22B35DE9C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v31 - v22;
  v36 = a3;
  sub_22B35F55C();
  sub_22B35FF7C();
  v24 = v40;
  sub_22B35DD9C();
  if (v24)
  {

    (*(v4 + 8))(v9, v41);
    (*(v17 + 56))(v15, 1, 1, v16);
  }

  else
  {
    v33 = v20;
    v34 = 0;
    v35 = *(v4 + 8);
    v35(v9, v41);

    v40 = *(v17 + 56);
    v40(v15, 0, 1, v16);
    v32 = *(v17 + 32);
    v32(v23, v15, v16);
    sub_22B35F55C();
    sub_22B35FF7C();
    v15 = v38;
    v25 = v34;
    sub_22B35DD9C();
    v26 = (v17 + 8);
    if (!v25)
    {
      v35(v39, v41);

      v40(v15, 0, 1, v16);
      v29 = v33;
      v32(v33, v15, v16);
      v27 = sub_22B35DDFC();
      v30 = *v26;
      (*v26)(v29, v16);
      v30(v23, v16);
      return v27 & 1;
    }

    v35(v39, v41);
    v40(v15, 1, 1, v16);
    (*v26)(v23, v16);
  }

  sub_22B123284(v15, &qword_27D8BA340, &qword_22B363FB0);
  v27 = 0;
  return v27 & 1;
}

uint64_t sub_22B1E02CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (**a3)(char *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v208 = a4;
  v231 = a3;
  v222 = a1;
  v189 = a5;
  v199 = sub_22B35EE8C();
  v221 = *(v199 - 8);
  v6 = *(v221 + 64);
  MEMORY[0x28223BE20](v199);
  v198 = v185 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = sub_22B35E3DC();
  v215 = *(v214 - 8);
  v8 = *(v215 + 8);
  MEMORY[0x28223BE20](v214);
  v211 = v185 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA758, &qword_22B365A00);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v207 = v185 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v218 = v185 - v14;
  v15 = sub_22B35E4BC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v191 = v185 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v213 = v185 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA3E8, &unk_22B364790);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = v185 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v230 = v185 - v26;
  v226 = sub_22B35E24C();
  v228 = *(v226 - 8);
  v27 = *(v228 + 64);
  MEMORY[0x28223BE20](v226);
  v29 = v185 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_22B35DE9C();
  v223 = *(v30 - 8);
  v224 = v30;
  v31 = *(v223 + 64);
  MEMORY[0x28223BE20](v30);
  v216 = (v185 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v33);
  v205 = (v185 - v34);
  v229 = sub_22B35D8BC();
  v217 = *(v229 - 8);
  v35 = *(v217 + 64);
  MEMORY[0x28223BE20](v229);
  v220 = v185 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v225 = v185 - v38;
  MEMORY[0x28223BE20](v39);
  v227 = v185 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA798, &qword_22B365A28);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41 - 8);
  v188 = v185 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v187 = v185 - v45;
  MEMORY[0x28223BE20](v46);
  v186 = v185 - v47;
  MEMORY[0x28223BE20](v48);
  v197 = v185 - v49;
  MEMORY[0x28223BE20](v50);
  v185[5] = v185 - v51;
  MEMORY[0x28223BE20](v52);
  v185[4] = v185 - v53;
  MEMORY[0x28223BE20](v54);
  v185[2] = v185 - v55;
  MEMORY[0x28223BE20](v56);
  v185[1] = v185 - v57;
  MEMORY[0x28223BE20](v58);
  v185[3] = v185 - v59;
  MEMORY[0x28223BE20](v60);
  v62 = v185 - v61;
  MEMORY[0x28223BE20](v63);
  v65 = v185 - v64;
  MEMORY[0x28223BE20](v66);
  v68 = v185 - v67;
  MEMORY[0x28223BE20](v69);
  v71 = v185 - v70;
  v73 = MEMORY[0x28223BE20](v72);
  v212 = v16;
  v76 = *(v16 + 56);
  v74 = v16 + 56;
  v75 = v76;
  v209 = v185 - v77;
  v76(v73);
  v200 = v71;
  (v76)(v71, 1, 1, v15);
  v201 = v68;
  (v76)(v68, 1, 1, v15);
  (v76)(v65, 1, 1, v15);
  v78 = *(a2 + 16);
  v219 = v15;
  if (!v78)
  {
    sub_22B35E4CC();
    (v75)(v62, 0, 1, v15);
    sub_22B12F2C4(v62, v65, &qword_27D8BA798, &qword_22B365A28);
    v183 = v62;
    v182 = v65;
LABEL_53:
    sub_22B170BE0(v209, v183, &qword_27D8BA798, &qword_22B365A28);
    sub_22B170BE0(v200, v186, &qword_27D8BA798, &qword_22B365A28);
    sub_22B170BE0(v201, v187, &qword_27D8BA798, &qword_22B365A28);
    sub_22B170BE0(v182, v188, &qword_27D8BA798, &qword_22B365A28);
    v184 = MEMORY[0x277D17508];
    sub_22B1FE510(&qword_27D8BA7A0, 255, MEMORY[0x277D17508]);
    sub_22B1FE510(&qword_27D8BA7A8, 255, v184);
    sub_22B1FE510(&qword_27D8BA7B0, 255, v184);
    sub_22B35E4EC();
    sub_22B123284(v182, &qword_27D8BA798, &qword_22B365A28);
    sub_22B123284(v201, &qword_27D8BA798, &qword_22B365A28);
    sub_22B123284(v200, &qword_27D8BA798, &qword_22B365A28);
    return sub_22B123284(v209, &qword_27D8BA798, &qword_22B365A28);
  }

  v202 = v75;
  v203 = v74;
  v185[0] = v62;
  v210 = v65;
  v79 = v224;
  v80 = *(v223 + 16);
  v81 = v231;
  v80(v205, v231, v224);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA768, &qword_22B365A10);
  v80(v216, (v81 + *(v82 + 36)), v79);
  sub_22B35D88C();
  sub_22B35D8AC();
  v84 = v83;
  v85 = *(v228 + 16);
  v86 = a2 + ((*(v228 + 80) + 32) & ~*(v228 + 80));
  v231 = (v217 + 8);
  v223 = v217 + 48;
  v224 = v85;
  v216 = 0;
  v217 += 32;
  v87 = v222;
  v204 = (v215 + 48);
  v196 = (v215 + 32);
  v222 = *(v228 + 72);
  v195 = (v221 + 104);
  v194 = (v221 + 8);
  v193 = *MEMORY[0x277D07380];
  v205 = (v212 + 6);
  v190 = (v212 + 2);
  ++v212;
  v192 = (v215 + 8);
  v221 = v228 + 8;
  v206 = v24;
  v228 += 16;
  for (i = v85(v29, v86, v226); ; i = v224(v29, v86, v90))
  {
    v91 = v225;
    MEMORY[0x23188BB60](i);
    v92 = v230;
    sub_22B35D84C();
    v93 = v92;
    v94 = *v231;
    v95 = v91;
    v96 = v229;
    (*v231)(v95, v229);
    sub_22B170BE0(v93, v24, &qword_27D8BA3E8, &unk_22B364790);
    if ((*v223)(v24, 1, v96) == 1)
    {
      sub_22B123284(v93, &qword_27D8BA3E8, &unk_22B364790);
      v89 = v24;
LABEL_4:
      sub_22B123284(v89, &qword_27D8BA3E8, &unk_22B364790);
      goto LABEL_5;
    }

    v97 = v220;
    (*v217)(v220, v24, v96);
    sub_22B35D8AC();
    if (v98 <= 0.0)
    {
      (v94)(v97, v96);
      v89 = v230;
      goto LABEL_4;
    }

    result = sub_22B35D8AC();
    v101 = v100 / v84 * v87;
    if ((*&v101 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (v101 <= -9.22337204e18)
    {
      goto LABEL_55;
    }

    if (v101 >= 9.22337204e18)
    {
      goto LABEL_56;
    }

    v102 = v97;
    v215 = v94;
    v103 = v213;
    v104 = sub_22B35E4CC();
    MEMORY[0x28223BE20](v104);
    v185[-2] = v29;
    v105 = v218;
    v106 = v216;
    sub_22B1D8794(sub_22B201F14, v208, v218);
    v216 = v106;
    v107 = v207;
    sub_22B170BE0(v105, v207, &qword_27D8BA758, &qword_22B365A00);
    v108 = v214;
    if ((*v204)(v107, 1, v214) == 1)
    {
      sub_22B123284(v107, &qword_27D8BA758, &qword_22B365A00);
      v109 = v210;
      v110 = v219;
      if ((*v205)(v210, 1, v219))
      {
        v111 = 0;
      }

      else
      {
        v130 = v191;
        (*v190)(v191, v109, v110);
        v131 = sub_22B35E42C();
        v132 = v110;
        v111 = v131;
        (*v212)(v130, v132);
      }

      v133 = v103;
      v134 = sub_22B35E42C();
      v135 = __OFADD__(v111, v134);
      result = v111 + v134;
      v24 = v206;
      v94 = v215;
      if (v135)
      {
        goto LABEL_57;
      }

      v136 = v197;
      sub_22B35E4CC();
      sub_22B123284(v218, &qword_27D8BA758, &qword_22B365A00);
      v137 = v133;
      v138 = v219;
      (*v212)(v137, v219);
      (v94)(v102, v229);
      sub_22B123284(v230, &qword_27D8BA3E8, &unk_22B364790);
      (v202)(v136, 0, 1, v138);
      v139 = v136;
      v140 = v210;
      goto LABEL_50;
    }

    (*v196)(v211, v107, v108);
    v112 = v198;
    v113 = v199;
    (*v195)(v198, v193, v199);
    v114 = sub_22B35EE7C();
    (*v194)(v112, v113);
    sub_22B35E22C();
    v116 = v115;
    sub_22B35E3CC();
    if (v114)
    {
      v118 = v201;
      v94 = v215;
      if (v116 > v117)
      {
        sub_22B35E22C();
        v120 = v119;
        sub_22B35E3AC();
        v121 = *v205;
        v122 = v219;
        v24 = v206;
        if (v120 <= v123)
        {
          v118 = v200;
          if (v121(v200, 1, v219))
          {
            v149 = 0;
          }

          else
          {
            v175 = v191;
            (*v190)(v191, v118, v122);
            v176 = sub_22B35E42C();
            v177 = v122;
            v149 = v176;
            (*v212)(v175, v177);
          }

          v153 = v213;
          v178 = sub_22B35E42C();
          v135 = __OFADD__(v149, v178);
          result = v149 + v178;
          if (v135)
          {
            goto LABEL_61;
          }

          v155 = &v213;
        }

        else
        {
          if (v121(v118, 1, v219))
          {
            v124 = 0;
          }

          else
          {
            v171 = v191;
            (*v190)(v191, v118, v122);
            v172 = sub_22B35E42C();
            v173 = v122;
            v124 = v172;
            (*v212)(v171, v173);
          }

          v153 = v213;
          v174 = sub_22B35E42C();
          v135 = __OFADD__(v124, v174);
          result = v124 + v174;
          if (v135)
          {
            goto LABEL_62;
          }

          v155 = &v214;
        }

LABEL_49:
        v179 = *(v155 - 32);
        sub_22B35E4CC();
        (*v192)(v211, v214);
        sub_22B123284(v218, &qword_27D8BA758, &qword_22B365A00);
        v180 = v153;
        v181 = v219;
        (*v212)(v180, v219);
        (v94)(v220, v229);
        sub_22B123284(v230, &qword_27D8BA3E8, &unk_22B364790);
        (v202)(v179, 0, 1, v181);
        v139 = v179;
        v140 = v118;
        goto LABEL_50;
      }

      v141 = v103;
      v142 = v209;
      v143 = v219;
      v144 = (*v205)(v209, 1, v219);
      v24 = v206;
      if (v144)
      {
        v145 = 0;
      }

      else
      {
        v156 = v191;
        (*v190)(v191, v142, v143);
        v157 = sub_22B35E42C();
        v158 = v143;
        v145 = v157;
        v159 = v156;
        v141 = v213;
        (*v212)(v159, v158);
      }

      v160 = v220;
      v161 = sub_22B35E42C();
      v135 = __OFADD__(v145, v161);
      result = v145 + v161;
      if (v135)
      {
        goto LABEL_60;
      }

      v162 = &v215;
    }

    else
    {
      v125 = *v205;
      v126 = v209;
      v94 = v215;
      if (v116 > v117)
      {
        v118 = v200;
        v127 = v219;
        v128 = v125(v200, 1, v219);
        v24 = v206;
        if (v128)
        {
          v129 = 0;
        }

        else
        {
          v150 = v191;
          (*v190)(v191, v118, v127);
          v151 = sub_22B35E42C();
          v152 = v127;
          v129 = v151;
          (*v212)(v150, v152);
        }

        v153 = v213;
        v154 = sub_22B35E42C();
        v135 = __OFADD__(v129, v154);
        result = v129 + v154;
        if (v135)
        {
          goto LABEL_58;
        }

        v155 = &v217;
        goto LABEL_49;
      }

      v146 = v219;
      v147 = v125(v209, 1, v219);
      v24 = v206;
      if (v147)
      {
        v148 = 0;
      }

      else
      {
        v163 = v126;
        v164 = v191;
        (*v190)(v191, v163, v146);
        v165 = sub_22B35E42C();
        v166 = v146;
        v148 = v165;
        (*v212)(v164, v166);
      }

      v160 = v220;
      v141 = v213;
      v167 = sub_22B35E42C();
      v135 = __OFADD__(v148, v167);
      result = v148 + v167;
      if (v135)
      {
        goto LABEL_59;
      }

      v162 = &v216;
    }

    v168 = *(v162 - 32);
    sub_22B35E4CC();
    (*v192)(v211, v214);
    sub_22B123284(v218, &qword_27D8BA758, &qword_22B365A00);
    v169 = v141;
    v170 = v219;
    (*v212)(v169, v219);
    (v94)(v160, v229);
    sub_22B123284(v230, &qword_27D8BA3E8, &unk_22B364790);
    (v202)(v168, 0, 1, v170);
    v139 = v168;
    v140 = v209;
LABEL_50:
    sub_22B12F2C4(v139, v140, &qword_27D8BA798, &qword_22B365A28);
LABEL_5:
    v90 = v226;
    (*v221)(v29, v226);
    v86 += v222;
    if (!--v78)
    {
      (v94)(v227, v229);
      v182 = v210;
      v183 = v185[0];
      goto LABEL_53;
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
  return result;
}

uint64_t sub_22B1E1858@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v325 = a4;
  v310 = a3;
  v335 = a2;
  v279 = a1;
  v278 = a5;
  v5 = sub_22B35E81C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v270 = &v262 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v284 = &v262 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA3E8, &unk_22B364790);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v297 = &v262 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v313 = &v262 - v15;
  v16 = sub_22B35DDBC();
  v330 = *(v16 - 8);
  v331 = v16;
  v17 = *(v330 + 64);
  MEMORY[0x28223BE20](v16);
  v298 = &v262 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v309 = &v262 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v296 = &v262 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v307 = &v262 - v25;
  v317 = sub_22B35FF8C();
  v319 = *(v317 - 8);
  v26 = *(v319 + 64);
  MEMORY[0x28223BE20](v317);
  v295 = &v262 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v300 = &v262 - v29;
  v332 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA788, &qword_22B365A18);
  v329 = *(v332 - 8);
  v30 = v329[8];
  MEMORY[0x28223BE20](v332);
  v314 = (&v262 - v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA790, &qword_22B365A20);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v333 = &v262 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v324 = &v262 - v36;
  v334 = sub_22B35DE9C();
  v326 = *(v334 - 8);
  v37 = v326[8];
  MEMORY[0x28223BE20](v334);
  v280 = &v262 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v311 = &v262 - v40;
  MEMORY[0x28223BE20](v41);
  v43 = &v262 - v42;
  MEMORY[0x28223BE20](v44);
  v301 = &v262 - v45;
  MEMORY[0x28223BE20](v46);
  v308 = &v262 - v47;
  v303 = sub_22B35D8BC();
  v320 = *(v303 - 8);
  v48 = *(v320 + 64);
  MEMORY[0x28223BE20](v303);
  v292 = &v262 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v304 = &v262 - v51;
  MEMORY[0x28223BE20](v52);
  v302 = &v262 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA760, &qword_22B365A08);
  v55 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54 - 8);
  v277 = &v262 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57);
  v276 = &v262 - v58;
  MEMORY[0x28223BE20](v59);
  v275 = &v262 - v60;
  MEMORY[0x28223BE20](v61);
  v274 = &v262 - v62;
  MEMORY[0x28223BE20](v63);
  v287 = &v262 - v64;
  MEMORY[0x28223BE20](v65);
  v286 = &v262 - v66;
  MEMORY[0x28223BE20](v67);
  v269 = &v262 - v68;
  MEMORY[0x28223BE20](v69);
  v268 = &v262 - v70;
  MEMORY[0x28223BE20](v71);
  v267 = &v262 - v72;
  MEMORY[0x28223BE20](v73);
  v266 = &v262 - v74;
  MEMORY[0x28223BE20](v75);
  v265 = &v262 - v76;
  MEMORY[0x28223BE20](v77);
  v264 = &v262 - v78;
  MEMORY[0x28223BE20](v79);
  v81 = &v262 - v80;
  MEMORY[0x28223BE20](v82);
  v84 = &v262 - v83;
  MEMORY[0x28223BE20](v85);
  v87 = &v262 - v86;
  MEMORY[0x28223BE20](v88);
  v90 = &v262 - v89;
  MEMORY[0x28223BE20](v91);
  v93 = &v262 - v92;
  v95 = MEMORY[0x28223BE20](v94);
  v96 = v6;
  v99 = *(v6 + 56);
  v97 = v6 + 56;
  v98 = v99;
  v288 = &v262 - v100;
  v99(v95);
  v289 = v93;
  v101 = v93;
  v102 = v335;
  (v99)(v101, 1, 1, v5);
  v290 = v90;
  (v99)(v90, 1, 1, v5);
  v291 = v87;
  (v99)(v87, 1, 1, v5);
  v283 = v84;
  (v99)(v84, 1, 1, v5);
  (v99)(v81, 1, 1, v5);
  v103 = *(v102 + 16);
  v293 = v5;
  v285 = v81;
  if (!v103)
  {
    sub_22B123284(v81, &qword_27D8BA760, &qword_22B365A08);
    (*(v96 + 16))(v81, v279, v5);
    (v98)(v81, 0, 1, v5);
    v254 = v81;
LABEL_76:
    sub_22B170BE0(v288, v286, &qword_27D8BA760, &qword_22B365A08);
    sub_22B170BE0(v289, v287, &qword_27D8BA760, &qword_22B365A08);
    sub_22B170BE0(v290, v274, &qword_27D8BA760, &qword_22B365A08);
    sub_22B170BE0(v291, v275, &qword_27D8BA760, &qword_22B365A08);
    v255 = v283;
    sub_22B170BE0(v283, v276, &qword_27D8BA760, &qword_22B365A08);
    sub_22B170BE0(v254, v277, &qword_27D8BA760, &qword_22B365A08);
    v256 = MEMORY[0x277D17570];
    sub_22B1FE510(&qword_27D8BA770, 255, MEMORY[0x277D17570]);
    v257 = sub_22B1FE510(&qword_27D8BA778, 255, v256);
    v258 = sub_22B1FE510(&qword_27D8BA780, 255, v256);
    v260 = v257;
    v261 = v258;
    sub_22B35E48C();
    sub_22B123284(v285, &qword_27D8BA760, &qword_22B365A08);
    sub_22B123284(v255, &qword_27D8BA760, &qword_22B365A08);
    sub_22B123284(v291, &qword_27D8BA760, &qword_22B365A08);
    sub_22B123284(v290, &qword_27D8BA760, &qword_22B365A08);
    sub_22B123284(v289, &qword_27D8BA760, &qword_22B365A08);
    return sub_22B123284(v288, &qword_27D8BA760, &qword_22B365A08);
  }

  v273 = v96;
  v271 = v98;
  v272 = v97;
  v104 = v326;
  v105 = v326 + 2;
  v106 = v326[2];
  v107 = v310;
  v108 = v334;
  v106(v308, v310, v334);
  v109 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA768, &qword_22B365A10) + 36);
  v315[1] = v105;
  v315[0] = v106;
  v106(v301, v107 + v109, v108);
  sub_22B35D88C();
  v110 = sub_22B35D8AC();
  v112 = v111;
  MEMORY[0x28223BE20](v110);
  v260 = v325;
  v336 = v102;

  v113 = 0;
  sub_22B21AEB4(sub_22B202288, (&v262 - 4));
  v114 = 0;
  v318 = v319 + 16;
  v323 = (v329 + 7);
  v322 = (v329 + 6);
  v327 = v336;
  v115 = *(v336 + 16);
  v321 = (v319 + 32);
  v328 = (v319 + 8);
  v329 = v104 + 7;
  v330 += 8;
  v312 = (v104 + 4);
  v306 = (v104 + 1);
  v294 = (v320 + 48);
  v282 = (v320 + 32);
  v299 = (v320 + 8);
  v281 = (v273 + 6);
  v263 = (v273 + 2);
  ++v273;
  v116 = v309;
  v117 = v317;
  v118 = v300;
  v119 = v332;
  v120 = v333;
  v121 = v307;
  v305 = v109;
  v320 = v115;
  v316 = v43;
  while (v114 == v115)
  {
    v122 = 1;
    v335 = v115;
LABEL_9:
    (*v323)(v120, v122, 1, v119);
    v129 = v324;
    sub_22B170CD0(v120, v324, &qword_27D8BA790, &qword_22B365A20);
    if ((*v322)(v129, 1, v119) == 1)
    {
      (*v299)(v302, v303);

      v254 = v285;
      goto LABEL_76;
    }

    v130 = *v129;
    (*v321)(v118, &v129[*(v119 + 48)], v117);
    sub_22B35F55C();
    sub_22B35FF7C();
    sub_22B35DD9C();
    if (v113)
    {

      (*v330)(v116, v331);
      (*v328)(v118, v117);
      (*v329)(v121, 1, 1, v334);
      sub_22B123284(v121, &qword_27D8BA340, &qword_22B363FB0);
      v113 = 0;
      v119 = v332;
      v120 = v333;
      v115 = v320;
      v114 = v335;
    }

    else
    {
      v326 = 0;
      v113 = v118;
      v131 = *v330;
      (*v330)(v116, v331);

      v132 = *v329;
      v133 = v334;
      (*v329)(v121, 0, 1, v334);
      v134 = v43;
      v135 = *v312;
      (*v312)(v134, v121, v133);
      v136 = v130 + 1;
      if (__OFADD__(v130, 1))
      {
        goto LABEL_79;
      }

      if (v136 < *(v327 + 16))
      {
        v137 = v298;
        sub_22B35F55C();
        v138 = v317;
        if ((v136 & 0x8000000000000000) != 0)
        {
          goto LABEL_80;
        }

        if (v136 >= *(v327 + 16))
        {
          goto LABEL_81;
        }

        v139 = v319;
        v140 = v327 + ((*(v139 + 80) + 32) & ~*(v139 + 80)) + *(v139 + 72) * v136;
        v141 = v295;
        (*(v319 + 16))(v295, v140, v317);
        sub_22B35FF7C();
        (*(v139 + 8))(v141, v138);
        v142 = v296;
        v143 = v326;
        sub_22B35DD9C();
        if (v143)
        {

          v131(v137, v331);
          v144 = v334;
          v132(v142, 1, 1, v334);
          sub_22B123284(v142, &qword_27D8BA340, &qword_22B363FB0);
          v326 = 0;
          v121 = v307;
          v117 = v317;
          v113 = v300;
          v119 = v332;
          v145 = v308;
          v146 = v305;
          goto LABEL_22;
        }

        v326 = 0;
        v131(v137, v331);

        v149 = v334;
        v132(v142, 0, 1, v334);
        v150 = v280;
        v135(v280, v142, v149);
        v151 = sub_22B35DDEC();
        v113 = v300;
        v146 = v305;
        if (v151)
        {
          sub_22B1FE510(&qword_28140B490, 255, MEMORY[0x277CC9578]);
          v152 = v310;
          v153 = sub_22B36074C();
          v121 = v307;
          v117 = v317;
          v145 = v308;
          if (v153)
          {
            (*v306)(v150, v149);
            v154 = v152 + v146;
            v147 = v311;
            (v315[0])(v311, v154, v149);
          }

          else
          {
            v147 = v311;
            v135(v311, v150, v149);
          }

          v148 = v313;
          v119 = v332;
        }

        else
        {
          (*v306)(v150, v149);
          v121 = v307;
          v144 = v149;
          v117 = v317;
          v119 = v332;
          v145 = v308;
LABEL_22:
          v155 = v310 + v146;
          v147 = v311;
          (v315[0])(v311, v155, v144);
          v148 = v313;
        }

        v43 = v316;
        goto LABEL_24;
      }

      v147 = v311;
      (v315[0])(v311, v310 + v305, v133);
      v148 = v313;
      v117 = v317;
      v119 = v332;
      v43 = v316;
      v145 = v308;
LABEL_24:
      if ((sub_22B35DDEC() & 1) == 0)
      {
        v165 = v147;
        v166 = *v306;
        v167 = v334;
        (*v306)(v165, v334);
        v166(v43, v167);
        v118 = v113;
        (*v328)(v113, v117);
        v120 = v333;
        goto LABEL_40;
      }

      v156 = v43;
      v157 = v334;
      v158 = v315[0];
      (v315[0])(v145, v156, v334);
      v158(v301, v147, v157);
      v159 = v304;
      sub_22B35D88C();
      sub_22B35D84C();
      v160 = v297;
      sub_22B170BE0(v148, v297, &qword_27D8BA3E8, &unk_22B364790);
      v161 = v303;
      if ((*v294)(v160, 1, v303) == 1)
      {
        sub_22B123284(v148, &qword_27D8BA3E8, &unk_22B364790);
        (*v299)(v159, v161);
        v162 = v147;
        v163 = *v306;
        (*v306)(v162, v157);
        v164 = v316;
        v163(v316, v157);
        (*v328)(v113, v117);
        v118 = v113;
        sub_22B123284(v160, &qword_27D8BA3E8, &unk_22B364790);
        v119 = v332;
        v120 = v333;
        v43 = v164;
LABEL_39:
        v121 = v307;
LABEL_40:
        v115 = v320;
        v114 = v335;
        v113 = v326;
        v116 = v309;
      }

      else
      {
        v168 = v292;
        (*v282)(v292, v160, v161);
        sub_22B35D8AC();
        if (v169 <= 0.0)
        {
          v179 = v147;
          v180 = *v299;
          (*v299)(v168, v161);
          sub_22B123284(v313, &qword_27D8BA3E8, &unk_22B364790);
          v180(v304, v161);
          v181 = *v306;
          v182 = v179;
          v183 = v334;
          (*v306)(v182, v334);
          v43 = v316;
          v181(v316, v183);
          v118 = v113;
          (*v328)(v113, v117);
          v119 = v332;
          v120 = v333;
          goto LABEL_39;
        }

        sub_22B35D8AC();
        v171 = v170 / v112 * sub_22B35E42C();
        v43 = v316;
        v121 = v307;
        v116 = v309;
        if (COERCE__INT64(fabs(v171)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_82;
        }

        if (v171 <= -9.22337204e18)
        {
          goto LABEL_83;
        }

        if (v171 >= 9.22337204e18)
        {
          goto LABEL_84;
        }

        v118 = v113;
        sub_22B35E4CC();
        v172 = sub_22B35FF5C();
        v173 = *v281;
        if (v172 <= 1)
        {
          v113 = v326;
          if (!v172)
          {
            v191 = v288;
            v192 = v293;
            if (v173(v288, 1, v293))
            {
              v193 = 0;
            }

            else
            {
              v218 = v270;
              (*v263)(v270, v191, v192);
              v193 = sub_22B35E42C();
              (*v273)(v218, v192);
            }

            v219 = v284;
            if (__OFADD__(v193, sub_22B35E42C()))
            {
              goto LABEL_90;
            }

            v220 = v264;
            sub_22B35E4CC();
            v221 = v219;
            v222 = v293;
            (*v273)(v221, v293);
            v223 = *v299;
            v224 = v303;
            (*v299)(v292, v303);
            sub_22B123284(v313, &qword_27D8BA3E8, &unk_22B364790);
            v223(v304, v224);
            v225 = *v306;
            v226 = v334;
            (*v306)(v311, v334);
            v225(v43, v226);
            v117 = v317;
            (*v328)(v118, v317);
            (v271)(v220, 0, 1, v222);
            v206 = v220;
            v207 = &v319;
            goto LABEL_73;
          }

          if (v172 != 1)
          {
            goto LABEL_53;
          }

          v184 = v289;
          v185 = v293;
          if (v173(v289, 1, v293))
          {
            v186 = 0;
          }

          else
          {
            v236 = v270;
            (*v263)(v270, v184, v185);
            v186 = sub_22B35E42C();
            (*v273)(v236, v185);
          }

          v237 = v284;
          if (__OFADD__(v186, sub_22B35E42C()))
          {
            goto LABEL_86;
          }

          v238 = v265;
          sub_22B35E4CC();
          v239 = v237;
          v240 = v293;
          (*v273)(v239, v293);
          v241 = *v299;
          v242 = v303;
          (*v299)(v292, v303);
          sub_22B123284(v313, &qword_27D8BA3E8, &unk_22B364790);
          v241(v304, v242);
          v243 = *v306;
          v244 = v334;
          (*v306)(v311, v334);
          v243(v43, v244);
          v117 = v317;
          (*v328)(v118, v317);
          (v271)(v238, 0, 1, v240);
          v206 = v238;
          v207 = &v320;
        }

        else
        {
          v174 = v291;
          v175 = v290;
          v113 = v326;
          switch(v172)
          {
            case 2:
              v187 = v293;
              if (v173(v290, 1, v293))
              {
                v188 = 0;
              }

              else
              {
                v197 = v270;
                (*v263)(v270, v175, v187);
                v188 = sub_22B35E42C();
                (*v273)(v197, v187);
              }

              v198 = v284;
              if (__OFADD__(v188, sub_22B35E42C()))
              {
                goto LABEL_85;
              }

              v199 = v266;
              sub_22B35E4CC();
              v200 = v198;
              v201 = v293;
              (*v273)(v200, v293);
              v202 = *v299;
              v203 = v303;
              (*v299)(v292, v303);
              sub_22B123284(v313, &qword_27D8BA3E8, &unk_22B364790);
              v202(v304, v203);
              v204 = *v306;
              v205 = v334;
              (*v306)(v311, v334);
              v204(v43, v205);
              v117 = v317;
              (*v328)(v118, v317);
              (v271)(v199, 0, 1, v201);
              v206 = v199;
              v207 = &v321;
              break;
            case 3:
              v189 = v293;
              if (v173(v291, 1, v293))
              {
                v190 = 0;
              }

              else
              {
                v208 = v174;
                v209 = v270;
                (*v263)(v270, v208, v189);
                v190 = sub_22B35E42C();
                (*v273)(v209, v189);
              }

              v210 = v284;
              if (__OFADD__(v190, sub_22B35E42C()))
              {
                goto LABEL_87;
              }

              v211 = v267;
              sub_22B35E4CC();
              v212 = v210;
              v213 = v293;
              (*v273)(v212, v293);
              v214 = *v299;
              v215 = v303;
              (*v299)(v292, v303);
              sub_22B123284(v313, &qword_27D8BA3E8, &unk_22B364790);
              v214(v304, v215);
              v216 = *v306;
              v217 = v334;
              (*v306)(v311, v334);
              v216(v43, v217);
              v117 = v317;
              (*v328)(v118, v317);
              (v271)(v211, 0, 1, v213);
              v206 = v211;
              v207 = &v322;
              break;
            case 4:
              v176 = v283;
              v177 = v293;
              if (v173(v283, 1, v293))
              {
                v178 = 0;
              }

              else
              {
                v227 = v270;
                (*v263)(v270, v176, v177);
                v178 = sub_22B35E42C();
                (*v273)(v227, v177);
              }

              v228 = v284;
              if (__OFADD__(v178, sub_22B35E42C()))
              {
                goto LABEL_89;
              }

              v229 = v268;
              sub_22B35E4CC();
              v230 = v228;
              v231 = v293;
              (*v273)(v230, v293);
              v232 = *v299;
              v233 = v303;
              (*v299)(v292, v303);
              sub_22B123284(v313, &qword_27D8BA3E8, &unk_22B364790);
              v232(v304, v233);
              v234 = *v306;
              v235 = v334;
              (*v306)(v311, v334);
              v234(v43, v235);
              v117 = v317;
              (*v328)(v118, v317);
              (v271)(v229, 0, 1, v231);
              v206 = v229;
              v207 = v315;
              break;
            default:
LABEL_53:
              v194 = v285;
              v195 = v293;
              if (v173(v285, 1, v293))
              {
                v196 = 0;
              }

              else
              {
                v245 = v270;
                (*v263)(v270, v194, v195);
                v196 = sub_22B35E42C();
                (*v273)(v245, v195);
              }

              v246 = v284;
              if (__OFADD__(v196, sub_22B35E42C()))
              {
                goto LABEL_88;
              }

              v247 = v269;
              sub_22B35E4CC();
              v248 = v246;
              v249 = v293;
              (*v273)(v248, v293);
              v250 = *v299;
              v251 = v303;
              (*v299)(v292, v303);
              sub_22B123284(v313, &qword_27D8BA3E8, &unk_22B364790);
              v250(v304, v251);
              v252 = *v306;
              v253 = v334;
              (*v306)(v311, v334);
              v252(v43, v253);
              v117 = v317;
              (*v328)(v118, v317);
              (v271)(v247, 0, 1, v249);
              v206 = v247;
              v207 = &v316;
              break;
          }
        }

LABEL_73:
        sub_22B12F2C4(v206, *(v207 - 32), &qword_27D8BA760, &qword_22B365A08);
        v119 = v332;
        v120 = v333;
        v115 = v320;
        v114 = v335;
      }
    }
  }

  if ((v114 & 0x8000000000000000) == 0)
  {
    if (v114 >= *(v327 + 16))
    {
      goto LABEL_78;
    }

    v123 = v114 + 1;
    v124 = v319;
    v125 = v327 + ((*(v124 + 80) + 32) & ~*(v124 + 80)) + *(v124 + 72) * v114;
    v126 = *(v119 + 48);
    v127 = v314;
    *v314 = v114;
    (*(v124 + 16))(&v127[v126], v125, v117);
    v128 = v127;
    v120 = v333;
    sub_22B170CD0(v128, v333, &qword_27D8BA788, &qword_22B365A18);
    v122 = 0;
    v335 = v123;
    goto LABEL_9;
  }

  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
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
LABEL_90:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_22B1E3CC4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v216 = a4;
  v239 = a3;
  v217 = a1;
  v198 = a5;
  v207 = sub_22B35EE8C();
  v238 = *(v207 - 8);
  v6 = *(v238 + 8);
  MEMORY[0x28223BE20](v207);
  v206 = &v186 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = sub_22B35E3DC();
  v235 = *(v211 - 8);
  v8 = *(v235 + 64);
  MEMORY[0x28223BE20](v211);
  v219 = &v186 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA758, &qword_22B365A00);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v215 = &v186 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v210 = &v186 - v14;
  v223 = sub_22B35E81C();
  v15 = *(v223 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v223);
  v195 = &v186 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v220 = &v186 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA3E8, &unk_22B364790);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v230 = &v186 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v236 = &v186 - v24;
  v25 = sub_22B35E24C();
  v26 = *(v25 - 8);
  v232 = v25;
  v233 = v26;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v186 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA760, &qword_22B365A08);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v33 = &v186 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v197 = &v186 - v35;
  MEMORY[0x28223BE20](v36);
  v196 = &v186 - v37;
  MEMORY[0x28223BE20](v38);
  v40 = &v186 - v39;
  MEMORY[0x28223BE20](v41);
  v194 = &v186 - v42;
  MEMORY[0x28223BE20](v43);
  v193 = &v186 - v44;
  MEMORY[0x28223BE20](v45);
  v190 = &v186 - v46;
  MEMORY[0x28223BE20](v47);
  v189 = &v186 - v48;
  MEMORY[0x28223BE20](v49);
  v192 = &v186 - v50;
  MEMORY[0x28223BE20](v51);
  v199 = &v186 - v52;
  MEMORY[0x28223BE20](v53);
  v212 = &v186 - v54;
  MEMORY[0x28223BE20](v55);
  v213 = &v186 - v56;
  v57 = sub_22B35DE9C();
  v58 = *(v57 - 8);
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v57);
  v61 = &v186 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v62);
  v64 = &v186 - v63;
  v234 = sub_22B35D8BC();
  v65 = *(*(v234 - 8) + 64);
  MEMORY[0x28223BE20](v234);
  v224 = &v186 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v67);
  v229 = &v186 - v68;
  v71 = MEMORY[0x28223BE20](v69);
  v73 = &v186 - v72;
  v237 = a2;
  v74 = a2[2];
  if (!v74)
  {
    v182 = v15;
    v183 = *(v15 + 56);
    v184 = v223;
    v183(v40, 1, 1, v223, v71);
    (v183)(v196, 1, 1, v184);
    (v183)(v197, 1, 1, v184);
    (*(v182 + 16))(v33, v217, v184);
    (v183)(v33, 0, 1, v184);
    v185 = MEMORY[0x277D17570];
    sub_22B1FE510(&qword_27D8BA770, 255, MEMORY[0x277D17570]);
    sub_22B1FE510(&qword_27D8BA778, 255, v185);
    sub_22B1FE510(&qword_27D8BA780, 255, v185);
    return sub_22B35E4EC();
  }

  v187 = v40;
  v188 = v33;
  v75 = *(v58 + 16);
  v76 = v15;
  v77 = v239;
  v231 = v70;
  v75(v64, v239, v57, v71);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA768, &qword_22B365A10);
  (v75)(v61, v77 + *(v78 + 36), v57);
  sub_22B35D88C();
  sub_22B35D8AC();
  v80 = v79;
  v81 = *(v76 + 56);
  v76 += 56;
  v82 = v223;
  v81(v213, 1, 1, v223);
  v81(v212, 1, 1, v82);
  v208 = v81;
  v81(v199, 1, 1, v82);
  v221 = 0;
  v83 = *(v233 + 16);
  v84 = v237 + ((*(v233 + 80) + 32) & ~*(v233 + 80));
  v226 = *(v233 + 72);
  v237 = (v231 + 8);
  v227 = (v231 + 48);
  v228 = v83;
  v222 = (v231 + 32);
  v214 = (v235 + 48);
  v205 = (v235 + 32);
  v204 = *MEMORY[0x277D07380];
  v203 = (v238 + 104);
  v202 = (v238 + 8);
  v201 = (v76 - 8);
  v191 = (v76 - 40);
  v209 = v76;
  v218 = (v76 - 48);
  v85 = v211;
  v200 = (v235 + 8);
  v225 = (v233 + 8);
  v86 = &qword_27D8BA758;
  v87 = v210;
  v231 = v73;
  v233 += 16;
  while (1)
  {
    v238 = v84;
    v239 = v74;
    v90 = v85;
    v91 = v86;
    v92 = v228(v29);
    v93 = v229;
    v94 = v29;
    MEMORY[0x23188BB60](v92);
    v95 = v236;
    sub_22B35D84C();
    v96 = v234;
    v235 = *v237;
    (v235)(v93, v234);
    v97 = v230;
    sub_22B170BE0(v95, v230, &qword_27D8BA3E8, &unk_22B364790);
    if ((*v227)(v97, 1, v96) == 1)
    {
      sub_22B123284(v95, &qword_27D8BA3E8, &unk_22B364790);
      v88 = v97;
LABEL_4:
      sub_22B123284(v88, &qword_27D8BA3E8, &unk_22B364790);
      v86 = v91;
      v29 = v94;
      v85 = v90;
      goto LABEL_5;
    }

    v98 = v224;
    (*v222)(v224, v97, v96);
    sub_22B35D8AC();
    if (v99 <= 0.0)
    {
      (v235)(v98, v96);
      v88 = v236;
      goto LABEL_4;
    }

    sub_22B35D8AC();
    v101 = v100 / v80;
    result = sub_22B35E42C();
    v103 = v101 * result;
    if (COERCE__INT64(fabs(v103)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (v103 <= -9.22337204e18)
    {
      goto LABEL_51;
    }

    if (v103 >= 9.22337204e18)
    {
      goto LABEL_52;
    }

    v29 = v94;
    v86 = v91;
    v104 = v220;
    v105 = sub_22B35E4CC();
    MEMORY[0x28223BE20](v105);
    *(&v186 - 2) = v29;
    v106 = v221;
    sub_22B1D8794(sub_22B2022A4, v216, v87);
    v221 = v106;
    v107 = v215;
    sub_22B170BE0(v87, v215, v91, &qword_22B365A00);
    v85 = v90;
    if ((*v214)(v107, 1, v90) != 1)
    {
      (*v205)(v219, v107, v90);
      v108 = v206;
      v109 = v207;
      (*v203)(v206, v204, v207);
      v110 = sub_22B35EE7C();
      (*v202)(v108, v109);
      sub_22B35E22C();
      v112 = v111;
      sub_22B35E3CC();
      v89 = v239;
      if (v110)
      {
        v114 = v213;
        if (v112 > v113)
        {
          sub_22B35E22C();
          v116 = v115;
          sub_22B35E3AC();
          v117 = *v201;
          v118 = v223;
          v85 = v211;
          v87 = v210;
          if (v116 > v119)
          {
            v120 = v199;
            v121 = v117(v199, 1, v223);
            v122 = v220;
            if (v121)
            {
              v123 = 0;
            }

            else
            {
              v164 = v195;
              (*v191)(v195, v120, v118);
              v165 = sub_22B35E42C();
              v166 = v118;
              v123 = v165;
              v167 = v164;
              v122 = v220;
              (*v218)(v167, v166);
            }

            v168 = sub_22B35E42C();
            v146 = __OFADD__(v123, v168);
            result = v123 + v168;
            if (v146)
            {
              goto LABEL_57;
            }

            v169 = v190;
            sub_22B35E4CC();
            (*v200)(v219, v85);
            sub_22B123284(v87, v86, &qword_22B365A00);
            v170 = v223;
            (*v218)(v122, v223);
            (v235)(v224, v234);
            sub_22B123284(v236, &qword_27D8BA3E8, &unk_22B364790);
            v208(v169, 0, 1, v170);
            v162 = v169;
            v171 = &v231;
LABEL_46:
            v163 = *(v171 - 32);
LABEL_47:
            sub_22B12F2C4(v162, v163, &qword_27D8BA760, &qword_22B365A08);
            goto LABEL_6;
          }

          v137 = v212;
          v138 = v117(v212, 1, v223);
          v139 = v220;
          if (v138)
          {
            v140 = 0;
          }

          else
          {
            v172 = v195;
            (*v191)(v195, v137, v118);
            v173 = sub_22B35E42C();
            v174 = v118;
            v140 = v173;
            v175 = v172;
            v139 = v220;
            (*v218)(v175, v174);
          }

          v125 = v139;
          v176 = sub_22B35E42C();
          v146 = __OFADD__(v140, v176);
          result = v140 + v176;
          if (v146)
          {
            goto LABEL_56;
          }

          v147 = &v221;
LABEL_45:
          v177 = *(v147 - 32);
          sub_22B35E4CC();
          (*v200)(v219, v85);
          sub_22B123284(v87, v86, &qword_22B365A00);
          v178 = v125;
          v179 = v223;
          (*v218)(v178, v223);
          (v235)(v224, v234);
          sub_22B123284(v236, &qword_27D8BA3E8, &unk_22B364790);
          v208(v177, 0, 1, v179);
          v162 = v177;
          v171 = &v240;
          goto LABEL_46;
        }

        v130 = v223;
        v131 = (*v201)(v213, 1, v223);
        v85 = v211;
        v87 = v210;
        v125 = v220;
        if (v131)
        {
          v132 = 0;
        }

        else
        {
          v148 = v195;
          (*v191)(v195, v114, v130);
          v149 = sub_22B35E42C();
          v150 = v130;
          v132 = v149;
          v151 = v148;
          v125 = v220;
          (*v218)(v151, v150);
        }

        v152 = sub_22B35E42C();
        v146 = __OFADD__(v132, v152);
        result = v132 + v152;
        if (v146)
        {
          goto LABEL_55;
        }

        v133 = v114;
        v153 = &v224;
      }

      else
      {
        v124 = *v201;
        v125 = v220;
        if (v112 > v113)
        {
          v126 = v212;
          v127 = v223;
          v128 = v124(v212, 1, v223);
          v85 = v211;
          v87 = v210;
          if (v128)
          {
            v129 = 0;
          }

          else
          {
            v141 = v195;
            (*v191)(v195, v126, v127);
            v142 = sub_22B35E42C();
            v143 = v127;
            v129 = v142;
            v144 = v141;
            v125 = v220;
            (*v218)(v144, v143);
          }

          v145 = sub_22B35E42C();
          v146 = __OFADD__(v129, v145);
          result = v129 + v145;
          if (v146)
          {
            goto LABEL_53;
          }

          v147 = &v226;
          goto LABEL_45;
        }

        v133 = v213;
        v134 = v223;
        v135 = v124(v213, 1, v223);
        v85 = v211;
        v87 = v210;
        if (v135)
        {
          v136 = 0;
        }

        else
        {
          v154 = v195;
          (*v191)(v195, v133, v134);
          v155 = sub_22B35E42C();
          v156 = v134;
          v136 = v155;
          v157 = v154;
          v125 = v220;
          (*v218)(v157, v156);
        }

        v158 = sub_22B35E42C();
        v146 = __OFADD__(v136, v158);
        result = v136 + v158;
        if (v146)
        {
          goto LABEL_54;
        }

        v153 = &v225;
      }

      v159 = *(v153 - 32);
      sub_22B35E4CC();
      (*v200)(v219, v85);
      sub_22B123284(v87, v86, &qword_22B365A00);
      v160 = v125;
      v161 = v223;
      (*v218)(v160, v223);
      (v235)(v224, v234);
      sub_22B123284(v236, &qword_27D8BA3E8, &unk_22B364790);
      v208(v159, 0, 1, v161);
      v162 = v159;
      v163 = v133;
      goto LABEL_47;
    }

    sub_22B123284(v87, v86, &qword_22B365A00);
    (*v218)(v104, v223);
    (v235)(v224, v234);
    sub_22B123284(v236, &qword_27D8BA3E8, &unk_22B364790);
    sub_22B123284(v107, v86, &qword_22B365A00);
LABEL_5:
    v89 = v239;
LABEL_6:
    (*v225)(v29, v232);
    v84 = &v238[v226];
    v74 = v89 - 1;
    if (!v74)
    {
      sub_22B170BE0(v213, v187, &qword_27D8BA760, &qword_22B365A08);
      sub_22B170BE0(v212, v196, &qword_27D8BA760, &qword_22B365A08);
      v180 = v199;
      sub_22B170BE0(v199, v197, &qword_27D8BA760, &qword_22B365A08);
      v208(v188, 1, 1, v223);
      v181 = MEMORY[0x277D17570];
      sub_22B1FE510(&qword_27D8BA770, 255, MEMORY[0x277D17570]);
      sub_22B1FE510(&qword_27D8BA778, 255, v181);
      sub_22B1FE510(&qword_27D8BA780, 255, v181);
      sub_22B35E4EC();
      (v235)(v231, v234);
      sub_22B123284(v180, &qword_27D8BA760, &qword_22B365A08);
      sub_22B123284(v212, &qword_27D8BA760, &qword_22B365A08);
      return sub_22B123284(v213, &qword_27D8BA760, &qword_22B365A08);
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
  return result;
}

uint64_t sub_22B1E533C()
{
  v0 = sub_22B35D8BC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = v13 - v7;
  v9 = MEMORY[0x23188BCE0](v6);
  MEMORY[0x23188BB60](v9);
  v10 = sub_22B35D83C();
  v11 = *(v1 + 8);
  v11(v4, v0);
  v11(v8, v0);
  return v10 & 1;
}

uint64_t sub_22B1E5470(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 160) = a8;
  *(v9 + 168) = v8;
  *(v9 + 144) = a6;
  *(v9 + 152) = a7;
  *(v9 + 128) = a4;
  *(v9 + 136) = a5;
  *(v9 + 112) = a2;
  *(v9 + 120) = a3;
  *(v9 + 692) = a1;
  v10 = sub_22B35DF1C();
  *(v9 + 176) = v10;
  v11 = *(v10 - 8);
  *(v9 + 184) = v11;
  v12 = *(v11 + 64) + 15;
  *(v9 + 192) = swift_task_alloc();
  *(v9 + 200) = swift_task_alloc();
  *(v9 + 208) = swift_task_alloc();
  v13 = sub_22B35E6AC();
  *(v9 + 216) = v13;
  v14 = *(v13 - 8);
  *(v9 + 224) = v14;
  v15 = *(v14 + 64) + 15;
  *(v9 + 232) = swift_task_alloc();
  *(v9 + 240) = swift_task_alloc();
  v16 = sub_22B35E66C();
  *(v9 + 248) = v16;
  v17 = *(v16 - 8);
  *(v9 + 256) = v17;
  v18 = *(v17 + 64) + 15;
  *(v9 + 264) = swift_task_alloc();
  *(v9 + 272) = swift_task_alloc();
  v19 = sub_22B35E85C();
  *(v9 + 280) = v19;
  v20 = *(v19 - 8);
  *(v9 + 288) = v20;
  v21 = *(v20 + 64) + 15;
  *(v9 + 296) = swift_task_alloc();
  *(v9 + 304) = swift_task_alloc();
  v22 = sub_22B35D8BC();
  *(v9 + 312) = v22;
  v23 = *(v22 - 8);
  *(v9 + 320) = v23;
  v24 = *(v23 + 64) + 15;
  *(v9 + 328) = swift_task_alloc();
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA740, &unk_22B3659E0) - 8) + 64) + 15;
  *(v9 + 336) = swift_task_alloc();
  *(v9 + 344) = swift_task_alloc();
  v26 = sub_22B35E37C();
  *(v9 + 352) = v26;
  v27 = *(v26 - 8);
  *(v9 + 360) = v27;
  v28 = *(v27 + 64) + 15;
  *(v9 + 368) = swift_task_alloc();
  *(v9 + 376) = swift_task_alloc();
  *(v9 + 384) = swift_task_alloc();
  v29 = sub_22B36052C();
  *(v9 + 392) = v29;
  v30 = *(v29 - 8);
  *(v9 + 400) = v30;
  v31 = *(v30 + 64) + 15;
  *(v9 + 408) = swift_task_alloc();
  *(v9 + 416) = swift_task_alloc();
  v32 = sub_22B35DE9C();
  *(v9 + 424) = v32;
  v33 = *(v32 - 8);
  *(v9 + 432) = v33;
  v34 = *(v33 + 64) + 15;
  *(v9 + 440) = swift_task_alloc();
  *(v9 + 448) = swift_task_alloc();
  *(v9 + 456) = swift_task_alloc();
  *(v9 + 464) = swift_task_alloc();
  *(v9 + 472) = swift_task_alloc();
  *(v9 + 480) = swift_task_alloc();
  v35 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA3E8, &unk_22B364790) - 8) + 64) + 15;
  *(v9 + 488) = swift_task_alloc();
  *(v9 + 496) = swift_task_alloc();
  v36 = type metadata accessor for SessionHalfHourlySummary(0);
  *(v9 + 504) = v36;
  v37 = *(v36 - 8);
  *(v9 + 512) = v37;
  v38 = *(v37 + 64) + 15;
  *(v9 + 520) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1E5944, v8, 0);
}

uint64_t sub_22B1E5944()
{
  v1 = *(*(v0 + 112) + 16);
  *(v0 + 528) = v1;
  v2 = sub_22B32D494(0, v1, 0, MEMORY[0x277D84F90]);
  *(v0 + 64) = 0;
  v142 = (v0 + 64);
  *(v0 + 72) = 0;
  v139 = (v0 + 72);
  if (!v1)
  {
LABEL_40:

    v103 = *(v0 + 520);
    v105 = *(v0 + 488);
    v104 = *(v0 + 496);
    v106 = *(v0 + 472);
    v107 = *(v0 + 480);
    v109 = *(v0 + 456);
    v108 = *(v0 + 464);
    v111 = *(v0 + 440);
    v110 = *(v0 + 448);
    v112 = *(v0 + 416);
    v131 = *(v0 + 408);
    v132 = *(v0 + 384);
    v133 = *(v0 + 376);
    v134 = *(v0 + 368);
    v135 = *(v0 + 344);
    v136 = *(v0 + 336);
    v138 = *(v0 + 328);
    v141 = *(v0 + 304);
    v144 = *(v0 + 296);
    v148 = *(v0 + 272);
    v151 = *(v0 + 264);
    v154 = *(v0 + 240);
    v158 = *(v0 + 232);
    v162 = *(v0 + 208);
    v169 = *(v0 + 200);
    v175 = *(v0 + 192);

    v113 = *(v0 + 8);

    return v113();
  }

  v3 = 0;
  v4 = *(v0 + 512);
  v5 = *(v4 + 80);
  *(v0 + 680) = v5;
  *(v0 + 684) = *MEMORY[0x277D17598];
  *(v0 + 688) = *MEMORY[0x277D17590];
  v6 = *(v4 + 72);
  *(v0 + 536) = v6;
  while (1)
  {
    *(v0 + 560) = v2;
    *(v0 + 552) = v3;
    *(v0 + 544) = 0;
    v7 = *(v0 + 520);
    v8 = *(v0 + 504);
    v9 = *(v0 + 160);
    sub_22B201F74(*(v0 + 112) + ((v5 + 32) & ~v5) + v6 * v3, v7, type metadata accessor for SessionHalfHourlySummary);
    v10 = *v9;
    v11 = v9[1];
    v12 = (v7 + *(v8 + 80));
    v13 = *v12;
    *(v0 + 568) = *v12;
    v14 = v12[1];
    *(v0 + 576) = v14;
    v15 = v10 == v13 && v11 == v14;
    if (!v15 && (sub_22B36134C() & 1) == 0)
    {
      v114 = *(v0 + 160);

      *v114 = v13;
      v114[1] = v14;
      v115 = qword_281408750;

      if (v115 != -1)
      {
        swift_once();
      }

      v116 = *(v0 + 520);
      v117 = *(v0 + 496);
      v118 = *(v0 + 504);
      v120 = *(v0 + 472);
      v119 = *(v0 + 480);
      v121 = *(v0 + 424);
      v122 = *(v0 + 432);
      v123 = *(v0 + 320);
      v170 = *(v0 + 312);
      v172 = qword_28140BC30;
      *(v0 + 584) = qword_28140BC30;
      v124 = *(v118 + 36);
      v125 = *(v122 + 16);
      *(v0 + 592) = v125;
      v125(v119, v116 + v124, v121);
      v125(v120, v116 + *(v118 + 40), v121);
      sub_22B35D88C();
      (*(v123 + 56))(v117, 0, 1, v170);
      v69 = sub_22B1E65AC;
      goto LABEL_29;
    }

    v16 = **(v0 + 152);
    *(v0 + 616) = v16;
    if (!*(v16 + 16))
    {
      goto LABEL_26;
    }

    v163 = *(v0 + 520);
    v171 = v16;
    v17 = *(v0 + 504);
    v18 = *(v0 + 480);
    v20 = *(v0 + 424);
    v19 = *(v0 + 432);
    v21 = *(v0 + 320);
    v22 = *(v0 + 328);
    v23 = *(v0 + 312);
    v24 = (*(*(v0 + 360) + 16))(*(v0 + 376), v16 + ((*(*(v0 + 360) + 80) + 32) & ~*(*(v0 + 360) + 80)), *(v0 + 352));
    v25 = *(v17 + 36);
    MEMORY[0x23188BC90](v24);
    sub_22B35D89C();
    v26 = *(v21 + 8);
    v26(v22, v23);
    sub_22B1FE510(&qword_28140B490, 255, MEMORY[0x277CC9578]);
    v27 = sub_22B36074C();
    v28 = *(v19 + 8);
    v29 = v28(v18, v20);
    if (v27)
    {
      (*(*(v0 + 360) + 8))(*(v0 + 376), *(v0 + 352));
LABEL_26:
      if (qword_281408750 != -1)
      {
        swift_once();
      }

      v60 = *(v0 + 520);
      v61 = *(v0 + 504);
      v62 = *(v0 + 480);
      v63 = *(v0 + 488);
      v64 = *(v0 + 472);
      v65 = *(v0 + 424);
      v66 = *(v0 + 432);
      v67 = *(v0 + 320);
      v166 = *(v0 + 312);
      v172 = qword_28140BC30;
      *(v0 + 624) = qword_28140BC30;
      v68 = *(v66 + 16);
      v68(v62, v60 + *(v61 + 36), v65);
      v68(v64, v60 + *(v61 + 40), v65);
      sub_22B35D88C();
      (*(v67 + 56))(v63, 0, 1, v166);
      v69 = sub_22B1E7754;
LABEL_29:

      return MEMORY[0x2822009F8](v69, v172, 0);
    }

    v30 = *(v0 + 480);
    v31 = *(v0 + 424);
    v155 = *(v0 + 520);
    v159 = *(v0 + 376);
    v152 = v26;
    v32 = *(v0 + 360);
    v164 = *(v0 + 352);
    v33 = *(v0 + 328);
    v145 = *(v0 + 312);
    v149 = *(*(v0 + 504) + 40);
    MEMORY[0x23188BC90](v29);
    sub_22B35D86C();
    v152(v33, v145);
    v34 = sub_22B36074C();
    v28(v30, v31);
    (*(v32 + 8))(v159, v164);
    if (v34)
    {
      goto LABEL_26;
    }

    if (!*(v171 + 16))
    {
      v70 = *(v0 + 432);
      sub_22B201FDC(*(v0 + 520), type metadata accessor for SessionHalfHourlySummary);
      v71 = *(v70 + 16);
      v72 = *(v0 + 560);
      v73 = (v0 + 552);
      goto LABEL_34;
    }

    v35 = *(v0 + 688);
    v36 = *(v0 + 684);
    v37 = *(v0 + 304);
    v38 = *(v0 + 280);
    v39 = *(v0 + 288);
    (*(v39 + 16))(v37, *(v0 + 120), v38);
    v40 = (*(v39 + 88))(v37, v38);
    v41 = v40;
    if (v40 != v36 && v40 != v35)
    {
      (*(*(v0 + 288) + 8))(*(v0 + 304), *(v0 + 280));
    }

    v42 = *(v0 + 560);
    v43 = *(v0 + 692);
    v44 = *(*(v0 + 432) + 16);
    v44(*(v0 + 464), *(v0 + 112) + ((*(v0 + 680) + 32) & ~*(v0 + 680)) + *(*(v0 + 504) + 36), *(v0 + 424));
    v45 = *(v0 + 520);
    v46 = *(v0 + 464);
    v47 = *(v0 + 168);
    v48 = *(v0 + 128);
    v49 = *(v0 + 136);
    v165 = v44;
    if (v43 == 1)
    {
      sub_22B1D8968(v45, v171, v48, v142, v139, v46, v41 == v36, v49, *(v0 + 272));
      v51 = *(v42 + 16);
      v50 = *(v42 + 24);
      v52 = v51 + 1;
      if (v51 < v50 >> 1)
      {
        v2 = *(v0 + 560);
        v53 = *(v0 + 272);
        goto LABEL_20;
      }

      v59 = (v0 + 272);
    }

    else
    {
      sub_22B1DB6EC(v45, v171, v48, v142, v139, v46, v49, *(v0 + 264));
      v51 = *(v42 + 16);
      v50 = *(v42 + 24);
      v52 = v51 + 1;
      if (v51 < v50 >> 1)
      {
        v2 = *(v0 + 560);
        v53 = *(v0 + 264);
        goto LABEL_20;
      }

      v59 = (v0 + 264);
    }

    v53 = *v59;
    v2 = sub_22B32D494(v50 > 1, v52, 1, *(v0 + 560));
LABEL_20:
    v54 = *(v0 + 528);
    v55 = *(v0 + 520);
    v56 = *(v0 + 248);
    v57 = *(v0 + 256);
    v58 = *(v0 + 552) + 1;
    (*(*(v0 + 432) + 8))(*(v0 + 464), *(v0 + 424));
    *(v2 + 16) = v52;
    (*(v57 + 32))(v2 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v51, v53, v56);
    sub_22B201FDC(v55, type metadata accessor for SessionHalfHourlySummary);
    if (v58 == v54)
    {
      break;
    }

    v3 = *(v0 + 552) + 1;
    v6 = *(v0 + 536);
    LOBYTE(v5) = *(v0 + 680);
  }

  v73 = (v0 + 528);
  v71 = v165;
LABEL_34:
  v167 = *(v0 + 536);
  v173 = *v73;
  v74 = *(v0 + 528);
  v75 = *(v0 + 504);
  v76 = *(v0 + 448);
  v77 = *(v0 + 432);
  v156 = *(v0 + 456);
  v160 = *(v0 + 440);
  v78 = *(v0 + 424);
  v79 = *(v0 + 112) + ((*(v0 + 680) + 32) & ~*(v0 + 680));
  v71(v76, v79 + *(v75 + 36), v78);
  (*(v77 + 32))(v156, v76, v78);
  v71(v160, v79 + (v74 - 1) * v167 + *(v75 + 40), v78);
  if (v173 != v74)
  {
    v100 = *(v0 + 456);
    v101 = *(v0 + 424);
    v102 = *(*(v0 + 432) + 8);
    v102(*(v0 + 440), v101);
    v102(v100, v101);
    goto LABEL_40;
  }

  v80 = *(v0 + 472);
  v81 = *(v0 + 440);
  v82 = *(v0 + 424);
  v137 = *(v0 + 328);
  v157 = *(v0 + 288);
  v161 = *(v0 + 280);
  v168 = *(v0 + 296);
  v143 = *(v0 + 208);
  v146 = *(v0 + 200);
  v83 = *(v0 + 184);
  v140 = *(v0 + 176);
  v84 = *(v0 + 144);
  v150 = *(v0 + 192);
  v153 = *(v0 + 120);
  v174 = *(v0 + 692);
  v71(*(v0 + 480), *(v0 + 456), v82);
  v71(v80, v81, v82);
  sub_22B35D88C();
  v85 = *(v83 + 16);
  v85(v143, v84, v140);
  v86 = type metadata accessor for SessionKey(0);
  v85(v146, v84 + v86[5], v140);
  v87 = (v84 + v86[6]);
  v89 = *v87;
  v88 = v87[1];
  v90 = (v84 + v86[7]);
  v91 = v90[1];
  v147 = *v90;
  v85(v150, v84 + v86[9], v140);
  (*(v157 + 16))(v168, v153, v161);

  v92 = *(v0 + 328);
  v93 = *(v0 + 296);
  v95 = *(v0 + 200);
  v94 = *(v0 + 208);
  v96 = *(v0 + 192);
  if (v174 == 1)
  {
    v97 = *(v0 + 240);
    v129 = *(v0 + 296);
    sub_22B35E55C();
    if (qword_27D8B9FB8 != -1)
    {
      swift_once();
    }

    v98 = swift_task_alloc();
    *(v0 + 648) = v98;
    *v98 = v0;
    v98[1] = sub_22B1E88D0;
    v99 = *(v0 + 240);
  }

  else
  {
    v126 = *(v0 + 232);
    v130 = *(v0 + 296);
    sub_22B35E54C();
    if (qword_27D8B9FB8 != -1)
    {
      swift_once();
    }

    v127 = swift_task_alloc();
    *(v0 + 664) = v127;
    *v127 = v0;
    v127[1] = sub_22B1E8D18;
    v99 = *(v0 + 232);
  }

  return sub_22B318054(v99);
}

uint64_t sub_22B1E65AC()
{
  v30 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[72];
  v2 = v0[52];
  v3 = v0[49];
  v4 = v0[50];
  v5 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v4 + 16))(v2, v5, v3);

  v6 = sub_22B36050C();
  v7 = sub_22B360D2C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[72];
    v9 = v0[71];
    v10 = v0[52];
    v11 = v0[49];
    v12 = v0[50];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v29 = v14;
    *v13 = 136380675;
    *(v13 + 4) = sub_22B1A7B20(v9, v8, &v29);
    _os_log_impl(&dword_22B116000, v6, v7, "Get historical guidance from cache for %{private}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x23188F650](v14, -1, -1);
    MEMORY[0x23188F650](v13, -1, -1);

    (*(v12 + 8))(v10, v11);
  }

  else
  {
    v15 = v0[52];
    v16 = v0[49];
    v17 = v0[50];

    (*(v17 + 8))(v15, v16);
  }

  v18 = *(v0[73] + 112);
  if (v18)
  {
    v28 = *(v0 + 71);
    v19 = v0[68];
    v20 = v0[62];
    v0[10] = MEMORY[0x277D84F90];
    v21 = *(v18 + 48);
    v22 = swift_task_alloc();
    *(v22 + 16) = v18;
    *(v22 + 24) = v28;
    *(v22 + 40) = v20;
    *(v22 + 48) = 0;
    *(v22 + 56) = v0 + 10;

    v23 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA750, &qword_22B3659F8);
    sub_22B360E7C();

    v24 = v0[10];
    v25 = v0[11];
  }

  else
  {
    v19 = v0[68];
    v25 = MEMORY[0x277D84F90];
  }

  v0[76] = v25;
  v0[75] = v19;
  v26 = v0[21];
  sub_22B123284(v0[62], &qword_27D8BA3E8, &unk_22B364790);

  return MEMORY[0x2822009F8](sub_22B1E68AC, v26, 0);
}

uint64_t sub_22B1E68AC()
{
  v1 = *(v0 + 608);
  v188 = *(v1 + 16);
  if (v188)
  {
    v2 = 0;
    v3 = *(v0 + 600);
    v4 = (v1 + 40);
    v5 = MEMORY[0x277D84F90];
    v183 = *(v0 + 608);
    do
    {
      if (v2 >= *(v1 + 16))
      {
        __break(1u);
LABEL_65:
        swift_once();
        goto LABEL_57;
      }

      v196 = v5;
      v10 = *(v0 + 344);
      v9 = *(v0 + 352);
      v11 = *(v4 - 1);
      v12 = *v4;
      v13 = sub_22B35D7FC();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      sub_22B144B30(v11, v12);
      sub_22B35D7EC();
      sub_22B1FE510(&qword_27D8BA748, 255, MEMORY[0x277D17FC8]);
      sub_22B35D7DC();
      if (v3)
      {
        v7 = *(v0 + 352);
        v6 = *(v0 + 360);
        v8 = *(v0 + 344);

        sub_22B12F174(v11, v12);

        (*(v6 + 56))(v8, 1, 1, v7);
        sub_22B123284(v8, &qword_27D8BA740, &unk_22B3659E0);
        v5 = v196;
        v1 = v183;
      }

      else
      {
        v16 = *(v0 + 384);
        v18 = *(v0 + 352);
        v17 = *(v0 + 360);
        v19 = *(v0 + 344);
        sub_22B12F174(v11, v12);

        (*(v17 + 56))(v19, 0, 1, v18);
        v20 = *(v17 + 32);
        v20(v16, v19, v18);
        v5 = v196;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_22B32D4BC(0, v196[2] + 1, 1, v196);
        }

        v1 = v183;
        v22 = v5[2];
        v21 = v5[3];
        if (v22 >= v21 >> 1)
        {
          v5 = sub_22B32D4BC(v21 > 1, v22 + 1, 1, v5);
        }

        v23 = *(v0 + 384);
        v24 = *(v0 + 352);
        v25 = *(v0 + 360);
        v5[2] = v22 + 1;
        v20(v5 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22, v23, v24);
      }

      v3 = 0;
      ++v2;
      v4 += 2;
    }

    while (v188 != v2);
    v166 = 0;
    v26 = *(v0 + 608);
  }

  else
  {
    v166 = *(v0 + 600);
    v5 = MEMORY[0x277D84F90];
  }

  v27 = *(v0 + 152);

  v28 = *v27;

  *v27 = v5;
  if (!v5[2])
  {
    sub_22B201FDC(*(v0 + 520), type metadata accessor for SessionHalfHourlySummary);
    v84 = *(v0 + 592);
    v85 = *(v0 + 560);
    v86 = (v0 + 552);
LABEL_41:
    v191 = *(v0 + 536);
    v199 = *v86;
    v89 = *(v0 + 528);
    v90 = *(v0 + 504);
    v91 = *(v0 + 448);
    v180 = *(v0 + 456);
    v92 = *(v0 + 432);
    v185 = *(v0 + 440);
    v93 = *(v0 + 424);
    v94 = *(v0 + 112) + ((*(v0 + 680) + 32) & ~*(v0 + 680));
    v84(v91, v94 + *(v90 + 36), v93);
    (*(v92 + 32))(v180, v91, v93);
    v84(v185, v94 + (v89 - 1) * v191 + *(v90 + 40), v93);
    if (v199 == v89)
    {
      v95 = *(v0 + 472);
      v96 = *(v0 + 440);
      v97 = *(v0 + 424);
      v162 = *(v0 + 328);
      v192 = *(v0 + 296);
      v181 = *(v0 + 288);
      v186 = *(v0 + 280);
      v167 = *(v0 + 208);
      v170 = *(v0 + 200);
      v98 = *(v0 + 184);
      v164 = *(v0 + 176);
      v99 = *(v0 + 144);
      v174 = *(v0 + 192);
      v177 = *(v0 + 120);
      v200 = *(v0 + 692);
      v84(*(v0 + 480), *(v0 + 456), v97);
      v84(v95, v96, v97);
      sub_22B35D88C();
      v100 = *(v98 + 16);
      v100(v167, v99, v164);
      v101 = type metadata accessor for SessionKey(0);
      v100(v170, v99 + v101[5], v164);
      v102 = (v99 + v101[6]);
      v104 = *v102;
      v103 = v102[1];
      v105 = (v99 + v101[7]);
      v106 = v105[1];
      v171 = *v105;
      v100(v174, v99 + v101[9], v164);
      (*(v181 + 16))(v192, v177, v186);

      v107 = *(v0 + 328);
      v108 = *(v0 + 296);
      v110 = *(v0 + 200);
      v109 = *(v0 + 208);
      v111 = *(v0 + 192);
      if (v200 == 1)
      {
        v112 = *(v0 + 240);
        v154 = *(v0 + 296);
        sub_22B35E55C();
        if (qword_27D8B9FB8 != -1)
        {
          swift_once();
        }

        v113 = swift_task_alloc();
        *(v0 + 648) = v113;
        *v113 = v0;
        v113[1] = sub_22B1E88D0;
        v114 = *(v0 + 240);
      }

      else
      {
        v130 = *(v0 + 232);
        v155 = *(v0 + 296);
        sub_22B35E54C();
        if (qword_27D8B9FB8 != -1)
        {
          swift_once();
        }

        v131 = swift_task_alloc();
        *(v0 + 664) = v131;
        *v131 = v0;
        v131[1] = sub_22B1E8D18;
        v114 = *(v0 + 232);
      }

      return sub_22B318054(v114);
    }

    else
    {
      v115 = *(v0 + 456);
      v116 = *(v0 + 424);
      v117 = *(*(v0 + 432) + 8);
      v117(*(v0 + 440), v116);
      v117(v115, v116);

      v118 = *(v0 + 520);
      v120 = *(v0 + 488);
      v119 = *(v0 + 496);
      v121 = *(v0 + 472);
      v122 = *(v0 + 480);
      v124 = *(v0 + 456);
      v123 = *(v0 + 464);
      v126 = *(v0 + 440);
      v125 = *(v0 + 448);
      v127 = *(v0 + 416);
      v156 = *(v0 + 408);
      v157 = *(v0 + 384);
      v158 = *(v0 + 376);
      v159 = *(v0 + 368);
      v160 = *(v0 + 344);
      v161 = *(v0 + 336);
      v163 = *(v0 + 328);
      v165 = *(v0 + 304);
      v168 = *(v0 + 296);
      v172 = *(v0 + 272);
      v175 = *(v0 + 264);
      v178 = *(v0 + 240);
      v182 = *(v0 + 232);
      v187 = *(v0 + 208);
      v193 = *(v0 + 200);
      v201 = *(v0 + 192);

      v128 = *(v0 + 8);

      return v128();
    }
  }

  *(v0 + 64) = 0;
  while (1)
  {
    if (!v5[2])
    {
      v87 = *(v0 + 432);
      sub_22B201FDC(*(v0 + 520), type metadata accessor for SessionHalfHourlySummary);
      v84 = *(v87 + 16);
      v88 = *(v0 + 560);
      v86 = (v0 + 552);
      goto LABEL_41;
    }

    v29 = *(v0 + 688);
    v30 = *(v0 + 684);
    v31 = *(v0 + 304);
    v32 = *(v0 + 280);
    v33 = *(v0 + 288);
    (*(v33 + 16))(v31, *(v0 + 120), v32);
    v34 = (*(v33 + 88))(v31, v32);
    v35 = v34;
    if (v34 != v30 && v34 != v29)
    {
      (*(*(v0 + 288) + 8))(*(v0 + 304), *(v0 + 280));
    }

    v37 = *(v0 + 560);
    v38 = *(v0 + 692);
    v39 = *(*(v0 + 432) + 16);
    v39(*(v0 + 464), *(v0 + 112) + ((*(v0 + 680) + 32) & ~*(v0 + 680)) + *(*(v0 + 504) + 36), *(v0 + 424));
    v40 = *(v0 + 520);
    v41 = *(v0 + 464);
    v42 = *(v0 + 168);
    v43 = *(v0 + 128);
    v44 = *(v0 + 136);
    v197 = v39;
    if (v38 == 1)
    {
      sub_22B1D8968(v40, v5, v43, (v0 + 64), (v0 + 72), v41, v35 == v30, v44, *(v0 + 272));
      v46 = *(v37 + 16);
      v45 = *(v37 + 24);
      v47 = v46 + 1;
      if (v46 < v45 >> 1)
      {
        v48 = *(v0 + 560);
        v49 = *(v0 + 272);
        goto LABEL_27;
      }

      v83 = (v0 + 272);
    }

    else
    {
      sub_22B1DB6EC(v40, v5, v43, (v0 + 64), (v0 + 72), v41, v44, *(v0 + 264));
      v46 = *(v37 + 16);
      v45 = *(v37 + 24);
      v47 = v46 + 1;
      if (v46 < v45 >> 1)
      {
        v48 = *(v0 + 560);
        v49 = *(v0 + 264);
        goto LABEL_27;
      }

      v83 = (v0 + 264);
    }

    v49 = *v83;
    v48 = sub_22B32D494(v45 > 1, v47, 1, *(v0 + 560));
LABEL_27:
    v50 = *(v0 + 528);
    v51 = *(v0 + 520);
    v52 = *(v0 + 248);
    v53 = *(v0 + 256);
    v54 = *(v0 + 552) + 1;
    (*(*(v0 + 432) + 8))(*(v0 + 464), *(v0 + 424));
    *(v48 + 16) = v47;
    (*(v53 + 32))(v48 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v46, v49, v52);
    sub_22B201FDC(v51, type metadata accessor for SessionHalfHourlySummary);
    if (v54 == v50)
    {
      v86 = (v0 + 528);
      v84 = v197;
      goto LABEL_41;
    }

    v55 = *(v0 + 552) + 1;
    *(v0 + 560) = v48;
    *(v0 + 552) = v55;
    *(v0 + 544) = v166;
    v56 = *(v0 + 520);
    v57 = *(v0 + 504);
    v58 = *(v0 + 160);
    sub_22B201F74(*(v0 + 112) + ((*(v0 + 680) + 32) & ~*(v0 + 680)) + *(v0 + 536) * v55, v56, type metadata accessor for SessionHalfHourlySummary);
    v59 = *v58;
    v60 = v58[1];
    v61 = (v56 + *(v57 + 80));
    v62 = *v61;
    *(v0 + 568) = *v61;
    v63 = v61[1];
    *(v0 + 576) = v63;
    if ((v59 != v62 || v60 != v63) && (sub_22B36134C() & 1) == 0)
    {
      v142 = *(v0 + 160);

      *v142 = v62;
      v142[1] = v63;
      v143 = qword_281408750;

      if (v143 != -1)
      {
        swift_once();
      }

      v144 = *(v0 + 520);
      v145 = *(v0 + 496);
      v146 = *(v0 + 504);
      v148 = *(v0 + 472);
      v147 = *(v0 + 480);
      v149 = *(v0 + 424);
      v150 = *(v0 + 432);
      v151 = *(v0 + 320);
      v195 = *(v0 + 312);
      v202 = qword_28140BC30;
      *(v0 + 584) = qword_28140BC30;
      v152 = *(v146 + 36);
      v153 = *(v150 + 16);
      *(v0 + 592) = v153;
      v153(v147, v144 + v152, v149);
      v153(v148, v144 + *(v146 + 40), v149);
      sub_22B35D88C();
      (*(v151 + 56))(v145, 0, 1, v195);
      v141 = sub_22B1E65AC;
      goto LABEL_58;
    }

    v64 = **(v0 + 152);
    *(v0 + 616) = v64;
    if (!v64[2])
    {
      goto LABEL_56;
    }

    v189 = *(v0 + 520);
    v198 = v64;
    v65 = *(v0 + 504);
    v66 = *(v0 + 480);
    v67 = *(v0 + 424);
    v68 = *(v0 + 432);
    v69 = *(v0 + 320);
    v70 = *(v0 + 328);
    v71 = *(v0 + 312);
    v72 = (*(*(v0 + 360) + 16))(*(v0 + 376), v64 + ((*(*(v0 + 360) + 80) + 32) & ~*(*(v0 + 360) + 80)), *(v0 + 352));
    v73 = *(v65 + 36);
    MEMORY[0x23188BC90](v72);
    sub_22B35D89C();
    v74 = *(v69 + 8);
    v74(v70, v71);
    sub_22B1FE510(&qword_28140B490, 255, MEMORY[0x277CC9578]);
    v75 = sub_22B36074C();
    v76 = *(v68 + 8);
    v77 = v76(v66, v67);
    if (v75)
    {
      break;
    }

    v179 = *(v0 + 520);
    v78 = *(v0 + 480);
    v79 = *(v0 + 424);
    v184 = *(v0 + 376);
    v176 = v74;
    v80 = *(v0 + 360);
    v190 = *(v0 + 352);
    v81 = *(v0 + 328);
    v169 = *(v0 + 312);
    v173 = *(*(v0 + 504) + 40);
    MEMORY[0x23188BC90](v77);
    sub_22B35D86C();
    v176(v81, v169);
    v82 = sub_22B36074C();
    v76(v78, v79);
    (*(v80 + 8))(v184, v190);
    v5 = v198;
    if (v82)
    {
      goto LABEL_56;
    }
  }

  (*(*(v0 + 360) + 8))(*(v0 + 376), *(v0 + 352));
LABEL_56:
  if (qword_281408750 != -1)
  {
    goto LABEL_65;
  }

LABEL_57:
  v132 = *(v0 + 520);
  v133 = *(v0 + 504);
  v134 = *(v0 + 480);
  v135 = *(v0 + 488);
  v136 = *(v0 + 472);
  v137 = *(v0 + 424);
  v138 = *(v0 + 432);
  v139 = *(v0 + 320);
  v194 = *(v0 + 312);
  v202 = qword_28140BC30;
  *(v0 + 624) = qword_28140BC30;
  v140 = *(v138 + 16);
  v140(v134, v132 + *(v133 + 36), v137);
  v140(v136, v132 + *(v133 + 40), v137);
  sub_22B35D88C();
  (*(v139 + 56))(v135, 0, 1, v194);
  v141 = sub_22B1E7754;
LABEL_58:

  return MEMORY[0x2822009F8](v141, v202, 0);
}

uint64_t sub_22B1E7754()
{
  v30 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[72];
  v3 = v0[50];
  v2 = v0[51];
  v4 = v0[49];
  v5 = __swift_project_value_buffer(v4, qword_28140BD10);
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);

  v6 = sub_22B36050C();
  v7 = sub_22B360D2C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[72];
    v9 = v0[71];
    v11 = v0[50];
    v10 = v0[51];
    v12 = v0[49];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v29 = v14;
    *v13 = 136380675;
    *(v13 + 4) = sub_22B1A7B20(v9, v8, &v29);
    _os_log_impl(&dword_22B116000, v6, v7, "Get historical guidance from cache for %{private}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x23188F650](v14, -1, -1);
    MEMORY[0x23188F650](v13, -1, -1);

    (*(v11 + 8))(v10, v12);
  }

  else
  {
    v16 = v0[50];
    v15 = v0[51];
    v17 = v0[49];

    (*(v16 + 8))(v15, v17);
  }

  v18 = *(v0[78] + 112);
  if (v18)
  {
    v28 = *(v0 + 71);
    v19 = v0[68];
    v20 = v0[61];
    v0[12] = MEMORY[0x277D84F90];
    v21 = *(v18 + 48);
    v22 = swift_task_alloc();
    *(v22 + 16) = v18;
    *(v22 + 24) = v28;
    *(v22 + 40) = v20;
    *(v22 + 48) = 0;
    *(v22 + 56) = v0 + 12;

    v23 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA750, &qword_22B3659F8);
    sub_22B360E7C();

    v24 = v0[12];
    v25 = v0[13];
  }

  else
  {
    v19 = v0[68];
    v25 = MEMORY[0x277D84F90];
  }

  v0[80] = v25;
  v0[79] = v19;
  v26 = v0[21];
  sub_22B123284(v0[61], &qword_27D8BA3E8, &unk_22B364790);

  return MEMORY[0x2822009F8](sub_22B1E7A54, v26, 0);
}

uint64_t sub_22B1E7A54()
{
  v1 = *(v0 + 640);
  v187 = *(v1 + 16);
  if (v187)
  {
    v2 = 0;
    v3 = *(v0 + 632);
    v4 = (v1 + 40);
    v5 = MEMORY[0x277D84F90];
    v182 = *(v0 + 640);
    do
    {
      if (v2 >= *(v1 + 16))
      {
        __break(1u);
LABEL_63:
        swift_once();
        goto LABEL_49;
      }

      v195 = v5;
      v9 = *(v0 + 352);
      v10 = *(v0 + 336);
      v11 = *(v4 - 1);
      v12 = *v4;
      v13 = sub_22B35D7FC();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      sub_22B144B30(v11, v12);
      sub_22B35D7EC();
      sub_22B1FE510(&qword_27D8BA748, 255, MEMORY[0x277D17FC8]);
      sub_22B35D7DC();
      if (v3)
      {
        v7 = *(v0 + 352);
        v6 = *(v0 + 360);
        v8 = *(v0 + 336);

        sub_22B12F174(v11, v12);

        (*(v6 + 56))(v8, 1, 1, v7);
        sub_22B123284(v8, &qword_27D8BA740, &unk_22B3659E0);
        v5 = v195;
        v1 = v182;
      }

      else
      {
        v16 = *(v0 + 360);
        v17 = *(v0 + 368);
        v18 = *(v0 + 352);
        v19 = *(v0 + 336);
        sub_22B12F174(v11, v12);

        (*(v16 + 56))(v19, 0, 1, v18);
        v20 = *(v16 + 32);
        v20(v17, v19, v18);
        v5 = v195;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_22B32D4BC(0, v195[2] + 1, 1, v195);
        }

        v1 = v182;
        v22 = v5[2];
        v21 = v5[3];
        if (v22 >= v21 >> 1)
        {
          v5 = sub_22B32D4BC(v21 > 1, v22 + 1, 1, v5);
        }

        v24 = *(v0 + 360);
        v23 = *(v0 + 368);
        v25 = *(v0 + 352);
        v5[2] = v22 + 1;
        v20(v5 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v22, v23, v25);
      }

      v3 = 0;
      ++v2;
      v4 += 2;
    }

    while (v187 != v2);
    v165 = 0;
    v26 = *(v0 + 640);
  }

  else
  {
    v165 = *(v0 + 632);
    v5 = MEMORY[0x277D84F90];
  }

  v27 = *(v0 + 616);
  v28 = *(v0 + 152);

  *v28 = v5;
  *(v0 + 64) = 0;
  while (1)
  {
    if (!v5[2])
    {
      v84 = *(v0 + 432);
      sub_22B201FDC(*(v0 + 520), type metadata accessor for SessionHalfHourlySummary);
      v85 = *(v84 + 16);
      v86 = *(v0 + 560);
      v87 = (v0 + 552);
      goto LABEL_39;
    }

    v29 = *(v0 + 688);
    v30 = *(v0 + 684);
    v31 = *(v0 + 304);
    v32 = *(v0 + 280);
    v33 = *(v0 + 288);
    (*(v33 + 16))(v31, *(v0 + 120), v32);
    v34 = (*(v33 + 88))(v31, v32);
    v35 = v34;
    if (v34 != v30 && v34 != v29)
    {
      (*(*(v0 + 288) + 8))(*(v0 + 304), *(v0 + 280));
    }

    v37 = *(v0 + 560);
    v38 = *(v0 + 692);
    v39 = *(*(v0 + 432) + 16);
    v39(*(v0 + 464), *(v0 + 112) + ((*(v0 + 680) + 32) & ~*(v0 + 680)) + *(*(v0 + 504) + 36), *(v0 + 424));
    v40 = *(v0 + 520);
    v41 = *(v0 + 464);
    v42 = *(v0 + 168);
    v43 = *(v0 + 128);
    v44 = *(v0 + 136);
    v196 = v39;
    if (v38 == 1)
    {
      sub_22B1D8968(v40, v5, v43, (v0 + 64), (v0 + 72), v41, v35 == v30, v44, *(v0 + 272));
      v46 = *(v37 + 16);
      v45 = *(v37 + 24);
      v47 = v46 + 1;
      if (v46 < v45 >> 1)
      {
        v48 = *(v0 + 560);
        v49 = *(v0 + 272);
        goto LABEL_26;
      }

      v83 = (v0 + 272);
    }

    else
    {
      sub_22B1DB6EC(v40, v5, v43, (v0 + 64), (v0 + 72), v41, v44, *(v0 + 264));
      v46 = *(v37 + 16);
      v45 = *(v37 + 24);
      v47 = v46 + 1;
      if (v46 < v45 >> 1)
      {
        v48 = *(v0 + 560);
        v49 = *(v0 + 264);
        goto LABEL_26;
      }

      v83 = (v0 + 264);
    }

    v49 = *v83;
    v48 = sub_22B32D494(v45 > 1, v47, 1, *(v0 + 560));
LABEL_26:
    v50 = *(v0 + 528);
    v51 = *(v0 + 520);
    v52 = *(v0 + 248);
    v53 = *(v0 + 256);
    v54 = *(v0 + 552) + 1;
    (*(*(v0 + 432) + 8))(*(v0 + 464), *(v0 + 424));
    *(v48 + 16) = v47;
    (*(v53 + 32))(v48 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v46, v49, v52);
    sub_22B201FDC(v51, type metadata accessor for SessionHalfHourlySummary);
    if (v54 == v50)
    {
      v87 = (v0 + 528);
      v85 = v196;
LABEL_39:
      v190 = *(v0 + 536);
      v198 = *v87;
      v88 = *(v0 + 528);
      v89 = *(v0 + 504);
      v90 = *(v0 + 448);
      v179 = *(v0 + 456);
      v91 = *(v0 + 432);
      v184 = *(v0 + 440);
      v92 = *(v0 + 424);
      v93 = *(v0 + 112) + ((*(v0 + 680) + 32) & ~*(v0 + 680));
      v85(v90, v93 + *(v89 + 36), v92);
      (*(v91 + 32))(v179, v90, v92);
      v85(v184, v93 + (v88 - 1) * v190 + *(v89 + 40), v92);
      if (v198 == v88)
      {
        v94 = *(v0 + 472);
        v95 = *(v0 + 440);
        v96 = *(v0 + 424);
        v161 = *(v0 + 328);
        v191 = *(v0 + 296);
        v180 = *(v0 + 288);
        v185 = *(v0 + 280);
        v166 = *(v0 + 208);
        v169 = *(v0 + 200);
        v97 = *(v0 + 184);
        v163 = *(v0 + 176);
        v98 = *(v0 + 144);
        v173 = *(v0 + 192);
        v176 = *(v0 + 120);
        v199 = *(v0 + 692);
        v85(*(v0 + 480), *(v0 + 456), v96);
        v85(v94, v95, v96);
        sub_22B35D88C();
        v99 = *(v97 + 16);
        v99(v166, v98, v163);
        v100 = type metadata accessor for SessionKey(0);
        v99(v169, v98 + v100[5], v163);
        v101 = (v98 + v100[6]);
        v103 = *v101;
        v102 = v101[1];
        v104 = (v98 + v100[7]);
        v105 = v104[1];
        v170 = *v104;
        v99(v173, v98 + v100[9], v163);
        (*(v180 + 16))(v191, v176, v185);

        v106 = *(v0 + 328);
        v107 = *(v0 + 296);
        v109 = *(v0 + 200);
        v108 = *(v0 + 208);
        v110 = *(v0 + 192);
        if (v199 == 1)
        {
          v111 = *(v0 + 240);
          v153 = *(v0 + 296);
          sub_22B35E55C();
          if (qword_27D8B9FB8 != -1)
          {
            swift_once();
          }

          v112 = swift_task_alloc();
          *(v0 + 648) = v112;
          *v112 = v0;
          v112[1] = sub_22B1E88D0;
          v113 = *(v0 + 240);
        }

        else
        {
          v139 = *(v0 + 232);
          v154 = *(v0 + 296);
          sub_22B35E54C();
          if (qword_27D8B9FB8 != -1)
          {
            swift_once();
          }

          v140 = swift_task_alloc();
          *(v0 + 664) = v140;
          *v140 = v0;
          v140[1] = sub_22B1E8D18;
          v113 = *(v0 + 232);
        }

        return sub_22B318054(v113);
      }

      else
      {
        v114 = *(v0 + 456);
        v115 = *(v0 + 424);
        v116 = *(*(v0 + 432) + 8);
        v116(*(v0 + 440), v115);
        v116(v114, v115);

        v117 = *(v0 + 520);
        v119 = *(v0 + 488);
        v118 = *(v0 + 496);
        v120 = *(v0 + 472);
        v121 = *(v0 + 480);
        v123 = *(v0 + 456);
        v122 = *(v0 + 464);
        v125 = *(v0 + 440);
        v124 = *(v0 + 448);
        v126 = *(v0 + 416);
        v155 = *(v0 + 408);
        v156 = *(v0 + 384);
        v157 = *(v0 + 376);
        v158 = *(v0 + 368);
        v159 = *(v0 + 344);
        v160 = *(v0 + 336);
        v162 = *(v0 + 328);
        v164 = *(v0 + 304);
        v167 = *(v0 + 296);
        v171 = *(v0 + 272);
        v174 = *(v0 + 264);
        v177 = *(v0 + 240);
        v181 = *(v0 + 232);
        v186 = *(v0 + 208);
        v192 = *(v0 + 200);
        v200 = *(v0 + 192);

        v127 = *(v0 + 8);

        return v127();
      }
    }

    v55 = *(v0 + 552) + 1;
    *(v0 + 560) = v48;
    *(v0 + 552) = v55;
    *(v0 + 544) = v165;
    v56 = *(v0 + 520);
    v57 = *(v0 + 504);
    v58 = *(v0 + 160);
    sub_22B201F74(*(v0 + 112) + ((*(v0 + 680) + 32) & ~*(v0 + 680)) + *(v0 + 536) * v55, v56, type metadata accessor for SessionHalfHourlySummary);
    v59 = *v58;
    v60 = v58[1];
    v61 = (v56 + *(v57 + 80));
    v62 = *v61;
    *(v0 + 568) = *v61;
    v63 = v61[1];
    *(v0 + 576) = v63;
    if ((v59 != v62 || v60 != v63) && (sub_22B36134C() & 1) == 0)
    {
      v141 = *(v0 + 160);

      *v141 = v62;
      v141[1] = v63;
      v142 = qword_281408750;

      if (v142 != -1)
      {
        swift_once();
      }

      v143 = *(v0 + 520);
      v144 = *(v0 + 496);
      v145 = *(v0 + 504);
      v147 = *(v0 + 472);
      v146 = *(v0 + 480);
      v148 = *(v0 + 424);
      v149 = *(v0 + 432);
      v150 = *(v0 + 320);
      v194 = *(v0 + 312);
      v201 = qword_28140BC30;
      *(v0 + 584) = qword_28140BC30;
      v151 = *(v145 + 36);
      v152 = *(v149 + 16);
      *(v0 + 592) = v152;
      v152(v146, v143 + v151, v148);
      v152(v147, v143 + *(v145 + 40), v148);
      sub_22B35D88C();
      (*(v150 + 56))(v144, 0, 1, v194);
      v138 = sub_22B1E65AC;
      goto LABEL_50;
    }

    v64 = **(v0 + 152);
    *(v0 + 616) = v64;
    if (!v64[2])
    {
      goto LABEL_48;
    }

    v188 = *(v0 + 520);
    v197 = v64;
    v65 = *(v0 + 504);
    v66 = *(v0 + 480);
    v68 = *(v0 + 424);
    v67 = *(v0 + 432);
    v70 = *(v0 + 320);
    v69 = *(v0 + 328);
    v71 = *(v0 + 312);
    v72 = (*(*(v0 + 360) + 16))(*(v0 + 376), v64 + ((*(*(v0 + 360) + 80) + 32) & ~*(*(v0 + 360) + 80)), *(v0 + 352));
    v73 = *(v65 + 36);
    MEMORY[0x23188BC90](v72);
    sub_22B35D89C();
    v74 = *(v70 + 8);
    v74(v69, v71);
    sub_22B1FE510(&qword_28140B490, 255, MEMORY[0x277CC9578]);
    v75 = sub_22B36074C();
    v76 = *(v67 + 8);
    v77 = v76(v66, v68);
    if (v75)
    {
      break;
    }

    v178 = *(v0 + 520);
    v78 = *(v0 + 480);
    v79 = *(v0 + 424);
    v183 = *(v0 + 376);
    v175 = v74;
    v80 = *(v0 + 360);
    v189 = *(v0 + 352);
    v81 = *(v0 + 328);
    v168 = *(v0 + 312);
    v172 = *(*(v0 + 504) + 40);
    MEMORY[0x23188BC90](v77);
    sub_22B35D86C();
    v175(v81, v168);
    v82 = sub_22B36074C();
    v76(v78, v79);
    (*(v80 + 8))(v183, v189);
    v5 = v197;
    if (v82)
    {
      goto LABEL_48;
    }
  }

  (*(*(v0 + 360) + 8))(*(v0 + 376), *(v0 + 352));
LABEL_48:
  if (qword_281408750 != -1)
  {
    goto LABEL_63;
  }

LABEL_49:
  v129 = *(v0 + 520);
  v130 = *(v0 + 504);
  v131 = *(v0 + 480);
  v132 = *(v0 + 488);
  v133 = *(v0 + 472);
  v134 = *(v0 + 424);
  v135 = *(v0 + 432);
  v136 = *(v0 + 320);
  v193 = *(v0 + 312);
  v201 = qword_28140BC30;
  *(v0 + 624) = qword_28140BC30;
  v137 = *(v135 + 16);
  v137(v131, v129 + *(v130 + 36), v134);
  v137(v133, v129 + *(v130 + 40), v134);
  sub_22B35D88C();
  (*(v136 + 56))(v132, 0, 1, v193);
  v138 = sub_22B1E7754;
LABEL_50:

  return MEMORY[0x2822009F8](v138, v201, 0);
}

uint64_t sub_22B1E88D0()
{
  v2 = *v1;
  v3 = *(*v1 + 648);
  v4 = *v1;

  if (v0)
  {
  }

  v5 = swift_task_alloc();
  *(v2 + 656) = v5;
  *v5 = v4;
  v5[1] = sub_22B1E8A14;
  v6 = *(v2 + 240);

  return sub_22B2018A0(v6);
}

uint64_t sub_22B1E8A14()
{
  v1 = *(*v0 + 656);
  v2 = *(*v0 + 168);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B1E8B24, v2, 0);
}

uint64_t sub_22B1E8B24()
{
  v1 = v0[57];
  v3 = v0[54];
  v2 = v0[55];
  v4 = v0[53];
  (*(v0[28] + 8))(v0[30], v0[27]);
  v5 = *(v3 + 8);
  v5(v2, v4);
  v5(v1, v4);
  v6 = v0[65];
  v8 = v0[61];
  v7 = v0[62];
  v9 = v0[59];
  v10 = v0[60];
  v12 = v0[57];
  v11 = v0[58];
  v14 = v0[55];
  v13 = v0[56];
  v15 = v0[52];
  v18 = v0[51];
  v19 = v0[48];
  v20 = v0[47];
  v21 = v0[46];
  v22 = v0[43];
  v23 = v0[42];
  v24 = v0[41];
  v25 = v0[38];
  v26 = v0[37];
  v27 = v0[34];
  v28 = v0[33];
  v29 = v0[30];
  v30 = v0[29];
  v31 = v0[26];
  v32 = v0[25];
  v33 = v0[24];

  v16 = v0[1];

  return v16();
}

uint64_t sub_22B1E8D18()
{
  v2 = *v1;
  v3 = *(*v1 + 664);
  v4 = *v1;

  if (v0)
  {
  }

  v5 = swift_task_alloc();
  *(v2 + 672) = v5;
  *v5 = v4;
  v5[1] = sub_22B1E8E5C;
  v6 = *(v2 + 232);

  return sub_22B2018A0(v6);
}

uint64_t sub_22B1E8E5C()
{
  v1 = *(*v0 + 672);
  v2 = *(*v0 + 168);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B1E8F6C, v2, 0);
}

uint64_t sub_22B1E8F6C()
{
  v1 = v0[57];
  v3 = v0[54];
  v2 = v0[55];
  v4 = v0[53];
  (*(v0[28] + 8))(v0[29], v0[27]);
  v5 = *(v3 + 8);
  v5(v2, v4);
  v5(v1, v4);
  v6 = v0[65];
  v8 = v0[61];
  v7 = v0[62];
  v9 = v0[59];
  v10 = v0[60];
  v12 = v0[57];
  v11 = v0[58];
  v14 = v0[55];
  v13 = v0[56];
  v15 = v0[52];
  v18 = v0[51];
  v19 = v0[48];
  v20 = v0[47];
  v21 = v0[46];
  v22 = v0[43];
  v23 = v0[42];
  v24 = v0[41];
  v25 = v0[38];
  v26 = v0[37];
  v27 = v0[34];
  v28 = v0[33];
  v29 = v0[30];
  v30 = v0[29];
  v31 = v0[26];
  v32 = v0[25];
  v33 = v0[24];

  v16 = v0[1];

  return v16();
}

uint64_t sub_22B1E9160()
{
  v1 = v0;
  v2 = sub_22B35DE9C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = *v0;
  v12 = v0[1];
  sub_22B3608FC();
  v13 = v0[2];
  v14 = v0[3];
  sub_22B3608FC();
  Events = type metadata accessor for LoadEventsProcessor.RatePlanPeriod();
  v16 = *(Events + 24);
  sub_22B1FE510(&qword_27D8BA348, 255, MEMORY[0x277CC9578]);
  sub_22B36072C();
  sub_22B170BE0(v1 + *(Events + 28), v10, &qword_27D8BA340, &qword_22B363FB0);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    return sub_22B3614BC();
  }

  (*(v3 + 32))(v6, v10, v2);
  sub_22B3614BC();
  sub_22B36072C();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_22B1E9394()
{
  v1 = v0;
  v2 = sub_22B35DE9C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  sub_22B36149C();
  v11 = *v0;
  v12 = v0[1];
  sub_22B3608FC();
  v13 = v0[2];
  v14 = v0[3];
  sub_22B3608FC();
  Events = type metadata accessor for LoadEventsProcessor.RatePlanPeriod();
  v16 = *(Events + 24);
  sub_22B1FE510(&qword_27D8BA348, 255, MEMORY[0x277CC9578]);
  sub_22B36072C();
  sub_22B170BE0(v1 + *(Events + 28), v10, &qword_27D8BA340, &qword_22B363FB0);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    sub_22B3614BC();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_22B3614BC();
    sub_22B36072C();
    (*(v3 + 8))(v6, v2);
  }

  return sub_22B3614DC();
}

uint64_t sub_22B1E95E4(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_22B35DE9C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v20 - v12;
  sub_22B36149C();
  v14 = *v2;
  v15 = v2[1];
  sub_22B3608FC();
  v16 = v2[2];
  v17 = v2[3];
  sub_22B3608FC();
  v18 = *(a2 + 24);
  sub_22B1FE510(&qword_27D8BA348, 255, MEMORY[0x277CC9578]);
  sub_22B36072C();
  sub_22B170BE0(v4 + *(a2 + 28), v13, &qword_27D8BA340, &qword_22B363FB0);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    sub_22B3614BC();
  }

  else
  {
    (*(v6 + 32))(v9, v13, v5);
    sub_22B3614BC();
    sub_22B36072C();
    (*(v6 + 8))(v9, v5);
  }

  return sub_22B3614DC();
}

uint64_t sub_22B1E982C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[14] = a4;
  v5[15] = v4;
  v5[12] = a2;
  v5[13] = a3;
  v5[11] = a1;
  v6 = type metadata accessor for SessionHalfHourlySummary(0);
  v5[16] = v6;
  v7 = *(v6 - 8);
  v5[17] = v7;
  v8 = *(v7 + 64) + 15;
  v5[18] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA6F0, &qword_22B365998) - 8) + 64) + 15;
  v5[19] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA6F8, &qword_22B3659A0);
  v5[20] = v10;
  v11 = *(v10 - 8);
  v5[21] = v11;
  v12 = *(v11 + 64) + 15;
  v5[22] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA700, &qword_22B3659A8);
  v5[23] = v13;
  v14 = *(v13 - 8);
  v5[24] = v14;
  v15 = *(v14 + 64) + 15;
  v5[25] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA708, &qword_22B3659B0);
  v5[26] = v16;
  v17 = *(v16 - 8);
  v5[27] = v17;
  v18 = *(v17 + 64) + 15;
  v5[28] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA710, &qword_22B3659B8) - 8) + 64) + 15;
  v5[29] = swift_task_alloc();
  v20 = sub_22B35E85C();
  v5[30] = v20;
  v21 = *(v20 - 8);
  v5[31] = v21;
  v22 = *(v21 + 64) + 15;
  v5[32] = swift_task_alloc();
  v23 = sub_22B36052C();
  v5[33] = v23;
  v24 = *(v23 - 8);
  v5[34] = v24;
  v25 = *(v24 + 64) + 15;
  v5[35] = swift_task_alloc();
  v26 = sub_22B35D8BC();
  v5[36] = v26;
  v27 = *(v26 - 8);
  v5[37] = v27;
  v28 = *(v27 + 64) + 15;
  v5[38] = swift_task_alloc();
  v29 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0) - 8) + 64) + 15;
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();
  Events = type metadata accessor for LoadEventsProcessor.RatePlanPeriod();
  v5[41] = Events;
  v31 = *(Events - 8);
  v5[42] = v31;
  v32 = *(v31 + 64) + 15;
  v5[43] = swift_task_alloc();
  v5[44] = swift_task_alloc();
  v33 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA080, &unk_22B364280) - 8) + 64) + 15;
  v5[45] = swift_task_alloc();
  v34 = sub_22B35E0BC();
  v5[46] = v34;
  v35 = *(v34 - 8);
  v5[47] = v35;
  v36 = *(v35 + 64) + 15;
  v5[48] = swift_task_alloc();
  v37 = sub_22B35DE9C();
  v5[49] = v37;
  v38 = *(v37 - 8);
  v5[50] = v38;
  v39 = *(v38 + 64) + 15;
  v5[51] = swift_task_alloc();
  v5[52] = swift_task_alloc();
  v5[53] = swift_task_alloc();
  v5[54] = swift_task_alloc();
  v5[55] = swift_task_alloc();
  v5[56] = swift_task_alloc();
  v5[57] = swift_task_alloc();
  v40 = sub_22B35DF1C();
  v5[58] = v40;
  v41 = *(v40 - 8);
  v5[59] = v41;
  v42 = *(v41 + 64) + 15;
  v5[60] = swift_task_alloc();
  v5[61] = swift_task_alloc();
  v43 = type metadata accessor for SessionKey(0);
  v5[62] = v43;
  v44 = *(v43 - 8);
  v5[63] = v44;
  v45 = *(v44 + 64) + 15;
  v5[64] = swift_task_alloc();
  v5[65] = swift_task_alloc();
  v5[66] = swift_task_alloc();
  v46 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA970, &unk_22B363560) - 8) + 64) + 15;
  v5[67] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1E9EA8, v4, 0);
}

uint64_t sub_22B1E9EA8()
{
  if (qword_27D8B9F88 != -1)
  {
    swift_once();
  }

  v1 = v0[67];
  v2 = v0[58];
  v3 = v0[59];
  v4 = v0[11];
  v0[68] = qword_27D8BB1B0;
  v5 = *(v3 + 16);
  v0[69] = v5;
  v0[70] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  (*(v3 + 56))(v1, 0, 1, v2);
  v6 = swift_task_alloc();
  v0[71] = v6;
  *v6 = v0;
  v6[1] = sub_22B1E9FDC;
  v7 = v0[67];
  v8 = v0[13];

  return sub_22B188EA4(v8, v7);
}

uint64_t sub_22B1E9FDC(uint64_t a1)
{
  v2 = *(*v1 + 568);
  v3 = *(*v1 + 536);
  v4 = *(*v1 + 120);
  v6 = *v1;
  *(*v1 + 576) = a1;

  sub_22B123284(v3, &qword_27D8BA970, &unk_22B363560);

  return MEMORY[0x2822009F8](sub_22B1EA120, v4, 0);
}

uint64_t sub_22B1EA120()
{
  if (qword_27D8B9FB8 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 584) = v1;
  *v1 = v0;
  v1[1] = sub_22B1EA1EC;
  v2 = *(v0 + 104);

  return sub_22B31A234(v2);
}

uint64_t sub_22B1EA1EC(uint64_t a1)
{
  v2 = *(*v1 + 584);
  v3 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 592) = a1;

  return MEMORY[0x2822009F8](sub_22B1EA304, v3, 0);
}

uint64_t sub_22B1EA304()
{
  v183 = v0;
  v1 = *(v0 + 576);
  v172 = *(v0 + 504);
  v169 = *(v0 + 496);
  v2 = v1 + 56;
  v3 = -1;
  v4 = -1 << *(v1 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 56);
  v6 = (63 - v4) >> 6;
  v167 = *(v0 + 472);
  v175 = *(v0 + 576);

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  if (v5)
  {
    while (1)
    {
      v178 = v8;
LABEL_9:
      v10 = *(v0 + 560);
      v11 = *(v0 + 552);
      v12 = *(v0 + 528);
      v13 = *(v0 + 488);
      v14 = *(v0 + 464);
      sub_22B201F74(*(v175 + 48) + *(v172 + 72) * (__clz(__rbit64(v5)) | (v7 << 6)), v12, type metadata accessor for SessionKey);
      v11(v13, v12 + *(v169 + 36), v14);
      sub_22B201FDC(v12, type metadata accessor for SessionKey);
      v8 = v178;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_22B32D50C(0, v178[2] + 1, 1, v178);
      }

      v16 = v8[2];
      v15 = v8[3];
      if (v16 >= v15 >> 1)
      {
        v8 = sub_22B32D50C(v15 > 1, v16 + 1, 1, v8);
      }

      v5 &= v5 - 1;
      v17 = *(v0 + 488);
      v18 = *(v0 + 464);
      v8[2] = v16 + 1;
      (*(v167 + 32))(v8 + ((*(v167 + 80) + 32) & ~*(v167 + 80)) + *(v167 + 72) * v16, v17, v18);
      if (!v5)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_70:
      v119 = *(v0 + 712);
      v120 = *(v0 + 704);
      v121 = *(v0 + 600);

      v122 = *(v0 + 48);

      v123 = *(v0 + 56);

      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v125 = *(v0 + 272);
      v124 = *(v0 + 280);
      v126 = *(v0 + 264);
      v127 = __swift_project_value_buffer(v126, qword_28140BD10);
      swift_beginAccess();
      (*(v125 + 16))(v124, v127, v126);
      v128 = sub_22B36050C();
      v129 = sub_22B360D1C();
      if (os_log_type_enabled(v128, v129))
      {
        v130 = swift_slowAlloc();
        *v130 = 0;
        _os_log_impl(&dword_22B116000, v128, v129, "[LoadEventsProcessor] Task was cancelled", v130, 2u);
        MEMORY[0x23188F650](v130, -1, -1);
      }

      v131 = *(v0 + 576);
      v132 = *(v0 + 512);
      v133 = *(v0 + 456);
      v134 = *(v0 + 392);
      v135 = *(v0 + 400);
      v137 = *(v0 + 272);
      v136 = *(v0 + 280);
      v138 = *(v0 + 264);

      (*(v137 + 8))(v136, v138);
      (*(v135 + 8))(v133, v134);
      sub_22B201FDC(v132, type metadata accessor for SessionKey);
      goto LABEL_49;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v9);
    ++v7;
    if (v5)
    {
      v178 = v8;
      v7 = v9;
      goto LABEL_9;
    }
  }

  v19 = *(v0 + 592);
  v20 = *(v0 + 576);

  v21 = sub_22B31AA70(v8);

  v22 = *(v0 + 592);
  if (*(v19 + 16) <= v21[2] >> 3)
  {
    v182 = v21;
    sub_22B1F8348(v22);
  }

  else
  {
    v21 = sub_22B1F8BE4(*(v0 + 592), v21);
  }

  *(v0 + 600) = v21;
  if (!v21[2])
  {
    v28 = *(v0 + 576);

LABEL_48:

LABEL_49:
    v76 = *(v0 + 536);
    v77 = *(v0 + 528);
    v78 = *(v0 + 520);
    v79 = *(v0 + 512);
    v81 = *(v0 + 480);
    v80 = *(v0 + 488);
    v83 = *(v0 + 448);
    v82 = *(v0 + 456);
    v85 = *(v0 + 432);
    v84 = *(v0 + 440);
    v154 = *(v0 + 424);
    v155 = *(v0 + 416);
    v156 = *(v0 + 408);
    v157 = *(v0 + 384);
    v158 = *(v0 + 360);
    v159 = *(v0 + 352);
    v160 = *(v0 + 344);
    v161 = *(v0 + 320);
    v162 = *(v0 + 312);
    v163 = *(v0 + 304);
    v164 = *(v0 + 280);
    v165 = *(v0 + 256);
    v166 = *(v0 + 232);
    v168 = *(v0 + 224);
    v170 = *(v0 + 200);
    v173 = *(v0 + 176);
    v176 = *(v0 + 152);
    v179 = *(v0 + 144);

    v86 = *(v0 + 8);

    return v86();
  }

  v23 = *(v0 + 456);
  v24 = *(v0 + 368);
  v25 = *(v0 + 376);
  v26 = *(v0 + 360);
  v27 = *(v0 + 96);
  sub_22B35DE6C();
  sub_22B170BE0(v27, v26, &unk_27D8BA080, &unk_22B364280);
  if ((*(v25 + 48))(v26, 1, v24) == 1)
  {
    sub_22B123284(*(v0 + 360), &unk_27D8BA080, &unk_22B364280);
    goto LABEL_25;
  }

  v29 = *(v0 + 112);
  (*(*(v0 + 376) + 32))(*(v0 + 384), *(v0 + 360), *(v0 + 368));
  if (*(v29 + 16))
  {
    v182 = *(v0 + 112);

    sub_22B1FB4BC(&v182);
    v88 = v182;
    *(v0 + 608) = v182;
    v89 = v88[2];
    *(v0 + 616) = v89;
    if (v89)
    {
      v90 = MEMORY[0x277D84F98];
      *(v0 + 800) = *(*(v0 + 336) + 80);
      *(v0 + 648) = v90;
      *(v0 + 640) = 0;
      *(v0 + 632) = v90;
      *(v0 + 624) = 0;
      if (v88[2])
      {
        v91 = 0;
        do
        {
          v92 = *(v0 + 392);
          v93 = *(v0 + 400);
          v94 = *(v0 + 352);
          v95 = *(v0 + 328);
          v96 = *(v0 + 320);
          sub_22B201F74(v88 + ((*(v0 + 800) + 32) & ~*(v0 + 800)) + *(*(v0 + 336) + 72) * v91, v94, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
          v97 = *(v95 + 28);
          sub_22B170BE0(v94 + v97, v96, &qword_27D8BA340, &qword_22B363FB0);
          v98 = *(v93 + 48);
          if (v98(v96, 1, v92) == 1)
          {
            v99 = *(v0 + 392);
            v100 = *(v0 + 320);
            (*(*(v0 + 400) + 16))(*(v0 + 448), *(v0 + 456), v99);
            if (v98(v100, 1, v99) != 1)
            {
              sub_22B123284(*(v0 + 320), &qword_27D8BA340, &qword_22B363FB0);
            }
          }

          else
          {
            (*(*(v0 + 400) + 32))(*(v0 + 448), *(v0 + 320), *(v0 + 392));
          }

          v101 = *(v0 + 456);
          v102 = *(v0 + 352) + *(*(v0 + 328) + 24);
          if (sub_22B35DDFC())
          {
            v103 = *(v0 + 392);
            v104 = *(v0 + 312);
            sub_22B170BE0(v94 + v97, v104, &qword_27D8BA340, &qword_22B363FB0);
            if (v98(v104, 1, v103) == 1)
            {
              sub_22B123284(*(v0 + 312), &qword_27D8BA340, &qword_22B363FB0);
LABEL_76:
              v140 = *(v0 + 448);
              v139 = *(v0 + 456);
              v141 = *(v0 + 432);
              v181 = *(v0 + 424);
              v142 = *(v0 + 392);
              v143 = *(v0 + 400);
              v144 = *(v0 + 104);
              sub_22B1FE510(&qword_28140B490, 255, MEMORY[0x277CC9578]);
              v145 = sub_22B36075C();
              v146 = *(v143 + 16);
              if (v145)
              {
                v147 = v102;
              }

              else
              {
                v147 = v144;
              }

              v146(v141, v147, v142);
              if (sub_22B36074C())
              {
                v148 = v140;
              }

              else
              {
                v148 = v139;
              }

              v146(v181, v148, v142);
              if (qword_281408E00 == -1)
              {
LABEL_83:
                v149 = *(v0 + 352);
                v150 = qword_28140BC80;
                *(v0 + 656) = qword_28140BC80;
                *(v0 + 664) = *v149;
                *(v0 + 672) = v149[1];
                *(v0 + 680) = v149[2];
                *(v0 + 688) = v149[3];
                v151 = sub_22B1EB258;
                goto LABEL_85;
              }

LABEL_89:
              swift_once();
              goto LABEL_83;
            }

            v105 = *(v0 + 440);
            v106 = *(v0 + 392);
            v107 = *(v0 + 400);
            v108 = *(v0 + 104);
            (*(v107 + 32))(v105, *(v0 + 312), v106);
            LOBYTE(v108) = sub_22B35DDEC();
            v109 = *(v107 + 8);
            v109(v105, v106);
            if (v108)
            {
              goto LABEL_76;
            }

            v110 = *(v0 + 400);
          }

          else
          {
            v109 = *(*(v0 + 400) + 8);
          }

          v109(*(v0 + 448), *(v0 + 392));
          v111 = *(v0 + 616);
          v112 = *(v0 + 640) + 1;
          sub_22B201FDC(*(v0 + 352), type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
          if (v112 == v111)
          {
            goto LABEL_67;
          }

          v91 = *(v0 + 640) + 1;
          *(v0 + 648) = v90;
          *(v0 + 640) = v91;
          *(v0 + 632) = v90;
          *(v0 + 624) = 0;
          v88 = *(v0 + 608);
        }

        while (v91 < v88[2]);
      }

      __break(1u);
LABEL_67:
      v88 = *(v0 + 608);
    }

    v171 = *(v0 + 456);
    v113 = *(v0 + 408);
    v114 = *(v0 + 392);
    v115 = *(v0 + 376);
    v180 = *(v0 + 368);
    v116 = *(v0 + 296);
    v117 = *(v0 + 304);
    v174 = *(v0 + 384);
    v177 = *(v0 + 288);
    v118 = *(*(v0 + 400) + 16);
    v118(*(v0 + 416), *(v0 + 104), v114);
    v118(v113, v171, v114);
    sub_22B35D88C();
    v30 = sub_22B1FE5A4(MEMORY[0x277D84F98], v88, v117);

    (*(v116 + 8))(v117, v177);
    (*(v115 + 8))(v174, v180);
  }

  else
  {
    (*(*(v0 + 376) + 8))(*(v0 + 384), *(v0 + 368));
LABEL_25:
    v30 = MEMORY[0x277D84F90];
  }

  v31 = 0;
  *(v0 + 712) = MEMORY[0x277D84F98];
  *(v0 + 704) = v30;
  v32 = *(v0 + 576);
  v33 = MEMORY[0x277D84F90];
  *(v0 + 40) = 0;
  *(v0 + 48) = 0xE000000000000000;
  *(v0 + 56) = v33;
  v34 = *(v32 + 32);
  *(v0 + 818) = v34;
  v35 = 1 << v34;
  v36 = *(v32 + 56);
  if (v35 < 64)
  {
    v37 = ~(-1 << v35);
  }

  else
  {
    v37 = -1;
  }

  v38 = v37 & v36;
  *(v0 + 804) = *MEMORY[0x277D85778];
  *(v0 + 720) = 0;
  if ((v37 & v36) != 0)
  {
    goto LABEL_32;
  }

  while (2)
  {
    while (2)
    {
      while (2)
      {
        v40 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          __break(1u);
          goto LABEL_89;
        }

        if (v40 >= (((1 << *(v0 + 818)) + 63) >> 6))
        {
          v67 = *(v0 + 712);
          v68 = *(v0 + 704);
          v69 = *(v0 + 600);
          v70 = *(v0 + 576);
          v71 = *(v0 + 456);
          v72 = *(v0 + 392);
          v73 = *(v0 + 400);

          v74 = *(v0 + 48);

          v75 = *(v0 + 56);

          (*(v73 + 8))(v71, v72);

          goto LABEL_48;
        }

        v39 = *(v0 + 576);
        v38 = *(v39 + 8 * v40 + 56);
        ++v31;
        if (!v38)
        {
          continue;
        }

        break;
      }

      v31 = v40;
LABEL_37:
      *(v0 + 736) = v31;
      *(v0 + 728) = v38;
      v41 = *(v0 + 600);
      v42 = *(v0 + 520);
      v43 = *(v0 + 512);
      v44 = __clz(__rbit64(v38));
      v38 &= v38 - 1;
      sub_22B201F74(*(v39 + 48) + *(*(v0 + 504) + 72) * (v44 | (v31 << 6)), v42, type metadata accessor for SessionKey);
      sub_22B20203C(v42, v43, type metadata accessor for SessionKey);
      if (!*(v41 + 16))
      {
        goto LABEL_31;
      }

      v45 = *(v0 + 600);
      v46 = *(v0 + 512);
      v47 = *(v0 + 464);
      *(v0 + 808) = *(*(v0 + 496) + 36);
      v48 = *(v45 + 40);
      sub_22B1FE510(&unk_27D8BA320, 255, MEMORY[0x277CC95F0]);
      v49 = sub_22B36071C();
      v50 = -1 << *(v45 + 32);
      v51 = v49 & ~v50;
      if (((*(v45 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v51) & 1) == 0)
      {
LABEL_31:
        sub_22B201FDC(*(v0 + 512), type metadata accessor for SessionKey);
        if (!v38)
        {
          continue;
        }

LABEL_32:
        v39 = *(v0 + 576);
        goto LABEL_37;
      }

      break;
    }

    v52 = ~v50;
    v53 = *(*(v0 + 472) + 72);
    v54 = *(v0 + 600);
    while (1)
    {
      v55 = *(v0 + 560);
      v57 = *(v0 + 472);
      v56 = *(v0 + 480);
      v58 = *(v0 + 464);
      (*(v0 + 552))(v56, *(v54 + 48) + v51 * v53, v58);
      sub_22B1FE510(&qword_27D8BA718, 255, MEMORY[0x277CC95F0]);
      v59 = sub_22B36078C();
      (*(v57 + 8))(v56, v58);
      if (v59)
      {
        break;
      }

      v54 = *(v0 + 600);
      v51 = (v51 + 1) & v52;
      if (((*(v54 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v51) & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    if (sub_22B360BFC())
    {
      goto LABEL_70;
    }

    v60 = *(v0 + 240);
    v61 = *(v0 + 248);
    v62 = *(v0 + 232);
    v63 = (*(v0 + 512) + *(*(v0 + 496) + 32));
    v64 = *v63;
    v65 = v63[1];

    sub_22B35E83C();
    if ((*(v61 + 48))(v62, 1, v60) == 1)
    {
      v66 = *(v0 + 232);
      sub_22B201FDC(*(v0 + 512), type metadata accessor for SessionKey);
      sub_22B123284(v66, &qword_27D8BA710, &qword_22B3659B8);
      if (!v38)
      {
        continue;
      }

      goto LABEL_32;
    }

    break;
  }

  v152 = *(v0 + 544);
  v153 = *(v0 + 496);
  (*(*(v0 + 248) + 32))(*(v0 + 256), *(v0 + 232), *(v0 + 240));
  *(v0 + 812) = *(v153 + 20);
  v151 = sub_22B1EC068;
  v150 = v152;
LABEL_85:

  return MEMORY[0x2822009F8](v151, v150, 0);
}

uint64_t sub_22B1EB258()
{
  v1 = v0[82];
  v2 = v0[15];
  v0[87] = sub_22B21A278(v0[83], v0[84], v0[85], v0[86], v0[54], v0[53], 1);

  return MEMORY[0x2822009F8](sub_22B1EB2E0, v2, 0);
}

uint64_t sub_22B1EB2E0()
{
  v1 = *(v0 + 696);
  if (v1)
  {
    v2 = *(v0 + 624);
    v4 = *(v0 + 344);
    v3 = *(v0 + 352);
    v5 = swift_task_alloc();
    *(v5 + 16) = v3;
    sub_22B1DB190(sub_22B200094, v5, v1);
    v7 = v6;

    sub_22B201F74(v3, v4, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
    *(v0 + 80) = v7;

    sub_22B1FB564((v0 + 80));
    if (v2)
    {

      v8 = *(v0 + 80);
    }

    v16 = *(v0 + 632);
    v17 = *(v0 + 448);
    v19 = *(v0 + 424);
    v18 = *(v0 + 432);
    v21 = *(v0 + 392);
    v20 = *(v0 + 400);
    v22 = *(v0 + 344);

    v23 = *(v0 + 80);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_22B33F3E8(v23, v22, isUniquelyReferenced_nonNull_native);
    sub_22B201FDC(v22, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
    v15 = v16;
    v25 = *(v20 + 8);
    v25(v19, v21);
    v25(v18, v21);
    v25(v17, v21);
    v173 = 0;
    v14 = v16;
  }

  else
  {
    v10 = *(v0 + 448);
    v11 = *(v0 + 432);
    v12 = *(v0 + 392);
    v13 = *(*(v0 + 400) + 8);
    v13(*(v0 + 424), v12);
    v13(v11, v12);
    v13(v10, v12);
    v14 = *(v0 + 648);
    v15 = *(v0 + 632);
    v173 = *(v0 + 624);
  }

  while (1)
  {
    v27 = *(v0 + 616);
    v28 = *(v0 + 640) + 1;
    sub_22B201FDC(*(v0 + 352), type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
    if (v28 == v27)
    {
      break;
    }

    v29 = *(v0 + 640) + 1;
    *(v0 + 648) = v14;
    *(v0 + 640) = v29;
    *(v0 + 632) = v15;
    *(v0 + 624) = v173;
    v30 = *(v0 + 608);
    if (v29 >= *(v30 + 16))
    {
      goto LABEL_64;
    }

    v32 = *(v0 + 392);
    v31 = *(v0 + 400);
    v33 = *(v0 + 352);
    v34 = *(v0 + 328);
    v35 = *(v0 + 320);
    sub_22B201F74(v30 + ((*(v0 + 800) + 32) & ~*(v0 + 800)) + *(*(v0 + 336) + 72) * v29, v33, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
    v36 = *(v34 + 28);
    sub_22B170BE0(v33 + v36, v35, &qword_27D8BA340, &qword_22B363FB0);
    v37 = *(v31 + 48);
    if (v37(v35, 1, v32) == 1)
    {
      v38 = *(v0 + 392);
      v39 = *(v0 + 320);
      (*(*(v0 + 400) + 16))(*(v0 + 448), *(v0 + 456), v38);
      if (v37(v39, 1, v38) != 1)
      {
        sub_22B123284(*(v0 + 320), &qword_27D8BA340, &qword_22B363FB0);
      }
    }

    else
    {
      (*(*(v0 + 400) + 32))(*(v0 + 448), *(v0 + 320), *(v0 + 392));
    }

    v40 = *(v0 + 456);
    v41 = *(v0 + 352) + *(*(v0 + 328) + 24);
    if (sub_22B35DDFC())
    {
      v42 = v15;
      v43 = v14;
      v44 = *(v0 + 392);
      v45 = *(v0 + 312);
      sub_22B170BE0(v33 + v36, v45, &qword_27D8BA340, &qword_22B363FB0);
      if (v37(v45, 1, v44) == 1)
      {
        sub_22B123284(*(v0 + 312), &qword_27D8BA340, &qword_22B363FB0);
LABEL_46:
        v117 = *(v0 + 448);
        v116 = *(v0 + 456);
        v118 = *(v0 + 432);
        v175 = *(v0 + 424);
        v119 = *(v0 + 392);
        v120 = *(v0 + 400);
        v121 = *(v0 + 104);
        sub_22B1FE510(&qword_28140B490, 255, MEMORY[0x277CC9578]);
        v122 = sub_22B36075C();
        v123 = *(v120 + 16);
        if (v122)
        {
          v124 = v41;
        }

        else
        {
          v124 = v121;
        }

        v123(v118, v124, v119);
        if (sub_22B36074C())
        {
          v125 = v117;
        }

        else
        {
          v125 = v116;
        }

        v123(v175, v125, v119);
        if (qword_281408E00 == -1)
        {
LABEL_53:
          v126 = *(v0 + 352);
          v127 = qword_28140BC80;
          *(v0 + 656) = qword_28140BC80;
          *(v0 + 664) = *v126;
          *(v0 + 672) = v126[1];
          *(v0 + 680) = v126[2];
          *(v0 + 688) = v126[3];
          v128 = sub_22B1EB258;
LABEL_54:

          return MEMORY[0x2822009F8](v128, v127, 0);
        }

LABEL_65:
        swift_once();
        goto LABEL_53;
      }

      v46 = *(v0 + 440);
      v48 = *(v0 + 392);
      v47 = *(v0 + 400);
      v49 = *(v0 + 104);
      (*(v47 + 32))(v46, *(v0 + 312), v48);
      LOBYTE(v49) = sub_22B35DDEC();
      v26 = *(v47 + 8);
      v26(v46, v48);
      if (v49)
      {
        goto LABEL_46;
      }

      v50 = *(v0 + 400);
      v14 = v43;
      v15 = v42;
    }

    else
    {
      v26 = *(*(v0 + 400) + 8);
    }

    v26(*(v0 + 448), *(v0 + 392));
  }

  v51 = *(v0 + 608);
  v163 = *(v0 + 456);
  v165 = v14;
  v52 = *(v0 + 408);
  v53 = *(v0 + 392);
  v54 = *(v0 + 376);
  v167 = *(v0 + 384);
  v55 = *(v0 + 296);
  v56 = *(v0 + 304);
  v57 = *(v0 + 288);
  v169 = v57;
  v171 = *(v0 + 368);
  v58 = *(*(v0 + 400) + 16);
  v58(*(v0 + 416), *(v0 + 104), v53);
  v58(v52, v163, v53);
  sub_22B35D88C();
  v59 = sub_22B1FE5A4(v165, v51, v56);

  (*(v55 + 8))(v56, v169);
  (*(v54 + 8))(v167, v171);
  v60 = 0;
  *(v0 + 712) = v165;
  *(v0 + 704) = v59;
  v61 = *(v0 + 576);
  v62 = MEMORY[0x277D84F90];
  *(v0 + 40) = 0;
  *(v0 + 48) = 0xE000000000000000;
  *(v0 + 56) = v62;
  v63 = *(v61 + 32);
  *(v0 + 818) = v63;
  v64 = 1 << v63;
  v65 = *(v61 + 56);
  if (v64 < 64)
  {
    v66 = ~(-1 << v64);
  }

  else
  {
    v66 = -1;
  }

  v67 = v66 & v65;
  *(v0 + 804) = *MEMORY[0x277D85778];
  *(v0 + 720) = v173;
  if ((v66 & v65) != 0)
  {
    goto LABEL_26;
  }

  do
  {
LABEL_27:
    v69 = v60 + 1;
    if (__OFADD__(v60, 1))
    {
      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    if (v69 >= (((1 << *(v0 + 818)) + 63) >> 6))
    {
      v96 = *(v0 + 712);
      v97 = *(v0 + 704);
      v98 = *(v0 + 600);
      v99 = *(v0 + 576);
      v100 = *(v0 + 456);
      v101 = *(v0 + 392);
      v102 = *(v0 + 400);

      v103 = *(v0 + 48);

      v104 = *(v0 + 56);

      (*(v102 + 8))(v100, v101);

      goto LABEL_42;
    }

    v68 = *(v0 + 576);
    v67 = *(v68 + 8 * v69 + 56);
    ++v60;
  }

  while (!v67);
  v60 = v69;
  while (1)
  {
    *(v0 + 736) = v60;
    *(v0 + 728) = v67;
    v70 = *(v0 + 600);
    v71 = *(v0 + 520);
    v72 = *(v0 + 512);
    v73 = __clz(__rbit64(v67));
    v67 &= v67 - 1;
    sub_22B201F74(*(v68 + 48) + *(*(v0 + 504) + 72) * (v73 | (v60 << 6)), v71, type metadata accessor for SessionKey);
    sub_22B20203C(v71, v72, type metadata accessor for SessionKey);
    if (!*(v70 + 16))
    {
      goto LABEL_25;
    }

    v74 = *(v0 + 600);
    v75 = *(v0 + 512);
    v76 = *(v0 + 464);
    *(v0 + 808) = *(*(v0 + 496) + 36);
    v77 = *(v74 + 40);
    sub_22B1FE510(&unk_27D8BA320, 255, MEMORY[0x277CC95F0]);
    v78 = sub_22B36071C();
    v79 = -1 << *(v74 + 32);
    v80 = v78 & ~v79;
    if (((*(v74 + ((v80 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v80) & 1) == 0)
    {
LABEL_25:
      sub_22B201FDC(*(v0 + 512), type metadata accessor for SessionKey);
      if (!v67)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    v81 = ~v79;
    v82 = *(*(v0 + 472) + 72);
    v83 = *(v0 + 600);
    while (1)
    {
      v84 = *(v0 + 560);
      v86 = *(v0 + 472);
      v85 = *(v0 + 480);
      v87 = *(v0 + 464);
      (*(v0 + 552))(v85, *(v83 + 48) + v80 * v82, v87);
      sub_22B1FE510(&qword_27D8BA718, 255, MEMORY[0x277CC95F0]);
      v88 = sub_22B36078C();
      (*(v86 + 8))(v85, v87);
      if (v88)
      {
        break;
      }

      v83 = *(v0 + 600);
      v80 = (v80 + 1) & v81;
      if (((*(v83 + ((v80 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v80) & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    if (sub_22B360BFC())
    {
      break;
    }

    v89 = *(v0 + 240);
    v90 = *(v0 + 248);
    v91 = *(v0 + 232);
    v92 = (*(v0 + 512) + *(*(v0 + 496) + 32));
    v93 = *v92;
    v94 = v92[1];

    sub_22B35E83C();
    if ((*(v90 + 48))(v91, 1, v89) != 1)
    {
      v149 = *(v0 + 544);
      v150 = *(v0 + 496);
      (*(*(v0 + 248) + 32))(*(v0 + 256), *(v0 + 232), *(v0 + 240));
      *(v0 + 812) = *(v150 + 20);
      v128 = sub_22B1EC068;
      v127 = v149;
      goto LABEL_54;
    }

    v95 = *(v0 + 232);
    sub_22B201FDC(*(v0 + 512), type metadata accessor for SessionKey);
    sub_22B123284(v95, &qword_27D8BA710, &qword_22B3659B8);
    if (!v67)
    {
      goto LABEL_27;
    }

LABEL_26:
    v68 = *(v0 + 576);
  }

  v129 = *(v0 + 712);
  v130 = *(v0 + 704);
  v131 = *(v0 + 600);

  v132 = *(v0 + 48);

  v133 = *(v0 + 56);

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v135 = *(v0 + 272);
  v134 = *(v0 + 280);
  v136 = *(v0 + 264);
  v137 = __swift_project_value_buffer(v136, qword_28140BD10);
  swift_beginAccess();
  (*(v135 + 16))(v134, v137, v136);
  v138 = sub_22B36050C();
  v139 = sub_22B360D1C();
  if (os_log_type_enabled(v138, v139))
  {
    v140 = swift_slowAlloc();
    *v140 = 0;
    _os_log_impl(&dword_22B116000, v138, v139, "[LoadEventsProcessor] Task was cancelled", v140, 2u);
    MEMORY[0x23188F650](v140, -1, -1);
  }

  v141 = *(v0 + 576);
  v142 = *(v0 + 512);
  v143 = *(v0 + 456);
  v144 = *(v0 + 392);
  v145 = *(v0 + 400);
  v147 = *(v0 + 272);
  v146 = *(v0 + 280);
  v148 = *(v0 + 264);

  (*(v147 + 8))(v146, v148);
  (*(v145 + 8))(v143, v144);
  sub_22B201FDC(v142, type metadata accessor for SessionKey);
LABEL_42:
  v105 = *(v0 + 536);
  v106 = *(v0 + 528);
  v107 = *(v0 + 520);
  v108 = *(v0 + 512);
  v110 = *(v0 + 480);
  v109 = *(v0 + 488);
  v112 = *(v0 + 448);
  v111 = *(v0 + 456);
  v114 = *(v0 + 432);
  v113 = *(v0 + 440);
  v151 = *(v0 + 424);
  v152 = *(v0 + 416);
  v153 = *(v0 + 408);
  v154 = *(v0 + 384);
  v155 = *(v0 + 360);
  v156 = *(v0 + 352);
  v157 = *(v0 + 344);
  v158 = *(v0 + 320);
  v159 = *(v0 + 312);
  v160 = *(v0 + 304);
  v161 = *(v0 + 280);
  v162 = *(v0 + 256);
  v164 = *(v0 + 232);
  v166 = *(v0 + 224);
  v168 = *(v0 + 200);
  v170 = *(v0 + 176);
  v172 = *(v0 + 152);
  v174 = *(v0 + 144);

  v115 = *(v0 + 8);

  return v115();
}

uint64_t sub_22B1EC068()
{
  v1 = *(v0 + 544);
  v2 = *(v1 + 120);
  if (v2)
  {
    v3 = *(v1 + 112);
    v4 = *(v1 + 120);

    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v7 = sub_22B2A632C();
      v8 = [v7 newBackgroundContext];
      v9 = sub_22B36081C();
      [v8 setTransactionAuthor_];

      [v8 setMergePolicy_];
      [v8 setUndoManager_];
      [v8 setShouldRefreshAfterSave_];
      [v8 setStalenessInterval_];
      [v8 setShouldDeleteInaccessibleFaults_];

      v5 = v8;
    }

    v6 = *(v0 + 720);
    v10 = *(v0 + 512);
    v11 = v10 + *(v0 + 812);
    v12 = v10 + *(v0 + 808);
    *(v0 + 72) = v5;
    v13 = swift_task_alloc();
    *(v13 + 16) = v2;
    *(v13 + 24) = v12;
    *(v13 + 32) = v11;
    *(v13 + 40) = 1;
    *(v13 + 48) = v0 + 72;
    v14 = v3;
    sub_22B360E7C();

    v15 = *(v0 + 817);

    v1 = *(v0 + 544);
    if (v15)
    {
      *(v0 + 820) = 1;
      *(v0 + 760) = v6;
      v16 = sub_22B1ED390;
      goto LABEL_9;
    }
  }

  else
  {
    v6 = *(v0 + 720);
  }

  *(v0 + 744) = v6;
  v16 = sub_22B1EC2A4;
LABEL_9:

  return MEMORY[0x2822009F8](v16, v1, 0);
}

uint64_t sub_22B1EC2A4()
{
  v1 = *(v0 + 544);
  v2 = *(v1 + 120);
  if (v2)
  {
    v3 = *(v1 + 112);
    v4 = *(v1 + 120);

    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v8 = sub_22B2A632C();
      v9 = [v8 newBackgroundContext];
      v10 = sub_22B36081C();
      [v9 setTransactionAuthor_];

      [v9 setMergePolicy_];
      [v9 setUndoManager_];
      [v9 setShouldRefreshAfterSave_];
      [v9 setStalenessInterval_];
      [v9 setShouldDeleteInaccessibleFaults_];

      v5 = v9;
    }

    v11 = *(v0 + 744);
    v12 = *(v0 + 512);
    v13 = *(v0 + 120);
    v14 = v12 + *(v0 + 812);
    v15 = v12 + *(v0 + 808);
    *(v0 + 64) = v5;
    v16 = swift_task_alloc();
    *(v16 + 16) = v2;
    *(v16 + 24) = v15;
    *(v16 + 32) = v14;
    *(v16 + 40) = 0;
    *(v16 + 48) = v0 + 64;
    v17 = v3;
    sub_22B360E7C();
    *(v0 + 752) = v11;

    *(v0 + 819) = *(v0 + 816);

    v7 = sub_22B1ECC20;
    v6 = v13;
  }

  else
  {
    v6 = *(v0 + 120);
    v7 = sub_22B1EC4D8;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_22B1EC4D8()
{
  v1 = *(v0 + 744);
  v2 = *(v0 + 512);
  (*(*(v0 + 248) + 8))(*(v0 + 256), *(v0 + 240));
  sub_22B201FDC(v2, type metadata accessor for SessionKey);
  v3 = (*(v0 + 728) - 1) & *(v0 + 728);
  v4 = *(v0 + 736);
  *(v0 + 720) = v1;
  if (v3)
  {
    goto LABEL_4;
  }

LABEL_5:
  while (1)
  {
    v6 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v6 >= (((1 << *(v0 + 818)) + 63) >> 6))
    {
      v33 = *(v0 + 712);
      v34 = *(v0 + 704);
      v35 = *(v0 + 600);
      v36 = *(v0 + 576);
      v37 = *(v0 + 456);
      v38 = *(v0 + 392);
      v39 = *(v0 + 400);

      v40 = *(v0 + 48);

      v41 = *(v0 + 56);

      (*(v39 + 8))(v37, v38);

      goto LABEL_20;
    }

    v5 = *(v0 + 576);
    v3 = *(v5 + 8 * v6 + 56);
    ++v4;
    if (v3)
    {
      v4 = v6;
      while (1)
      {
        *(v0 + 736) = v4;
        *(v0 + 728) = v3;
        v7 = *(v0 + 600);
        v8 = *(v0 + 520);
        v9 = *(v0 + 512);
        v10 = __clz(__rbit64(v3));
        v3 &= v3 - 1;
        sub_22B201F74(*(v5 + 48) + *(*(v0 + 504) + 72) * (v10 | (v4 << 6)), v8, type metadata accessor for SessionKey);
        sub_22B20203C(v8, v9, type metadata accessor for SessionKey);
        if (!*(v7 + 16))
        {
          goto LABEL_3;
        }

        v11 = *(v0 + 600);
        v12 = *(v0 + 512);
        v13 = *(v0 + 464);
        *(v0 + 808) = *(*(v0 + 496) + 36);
        v14 = *(v11 + 40);
        sub_22B1FE510(&unk_27D8BA320, 255, MEMORY[0x277CC95F0]);
        v15 = sub_22B36071C();
        v16 = -1 << *(v11 + 32);
        v17 = v15 & ~v16;
        if ((*(v11 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v17))
        {
          v18 = ~v16;
          v19 = *(*(v0 + 472) + 72);
          v20 = *(v0 + 600);
          while (1)
          {
            v21 = *(v0 + 560);
            v22 = *(v0 + 472);
            v23 = *(v0 + 480);
            v24 = *(v0 + 464);
            (*(v0 + 552))(v23, *(v20 + 48) + v17 * v19, v24);
            sub_22B1FE510(&qword_27D8BA718, 255, MEMORY[0x277CC95F0]);
            v25 = sub_22B36078C();
            (*(v22 + 8))(v23, v24);
            if (v25)
            {
              break;
            }

            v20 = *(v0 + 600);
            v17 = (v17 + 1) & v18;
            if (((*(v20 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v17) & 1) == 0)
            {
              goto LABEL_3;
            }
          }

          if (sub_22B360BFC())
          {
            v54 = *(v0 + 712);
            v55 = *(v0 + 704);
            v56 = *(v0 + 600);

            v57 = *(v0 + 48);

            v58 = *(v0 + 56);

            if (qword_28140A0C8 != -1)
            {
              goto LABEL_31;
            }

            goto LABEL_24;
          }

          v27 = *(v0 + 240);
          v26 = *(v0 + 248);
          v28 = *(v0 + 232);
          v29 = (*(v0 + 512) + *(*(v0 + 496) + 32));
          v30 = *v29;
          v31 = v29[1];

          sub_22B35E83C();
          if ((*(v26 + 48))(v28, 1, v27) != 1)
          {
            v74 = *(v0 + 544);
            v75 = *(v0 + 496);
            (*(*(v0 + 248) + 32))(*(v0 + 256), *(v0 + 232), *(v0 + 240));
            *(v0 + 812) = *(v75 + 20);

            return MEMORY[0x2822009F8](sub_22B1EC068, v74, 0);
          }

          v32 = *(v0 + 232);
          sub_22B201FDC(*(v0 + 512), type metadata accessor for SessionKey);
          sub_22B123284(v32, &qword_27D8BA710, &qword_22B3659B8);
          if (!v3)
          {
            goto LABEL_5;
          }
        }

        else
        {
LABEL_3:
          sub_22B201FDC(*(v0 + 512), type metadata accessor for SessionKey);
          if (!v3)
          {
            goto LABEL_5;
          }
        }

LABEL_4:
        v5 = *(v0 + 576);
      }
    }
  }

  __break(1u);
LABEL_31:
  swift_once();
LABEL_24:
  v60 = *(v0 + 272);
  v59 = *(v0 + 280);
  v61 = *(v0 + 264);
  v62 = __swift_project_value_buffer(v61, qword_28140BD10);
  swift_beginAccess();
  (*(v60 + 16))(v59, v62, v61);
  v63 = sub_22B36050C();
  v64 = sub_22B360D1C();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 0;
    _os_log_impl(&dword_22B116000, v63, v64, "[LoadEventsProcessor] Task was cancelled", v65, 2u);
    MEMORY[0x23188F650](v65, -1, -1);
  }

  v66 = *(v0 + 576);
  v67 = *(v0 + 512);
  v68 = *(v0 + 456);
  v69 = *(v0 + 392);
  v70 = *(v0 + 400);
  v72 = *(v0 + 272);
  v71 = *(v0 + 280);
  v73 = *(v0 + 264);

  (*(v72 + 8))(v71, v73);
  (*(v70 + 8))(v68, v69);
  sub_22B201FDC(v67, type metadata accessor for SessionKey);
LABEL_20:
  v42 = *(v0 + 536);
  v43 = *(v0 + 528);
  v44 = *(v0 + 520);
  v45 = *(v0 + 512);
  v47 = *(v0 + 480);
  v46 = *(v0 + 488);
  v49 = *(v0 + 448);
  v48 = *(v0 + 456);
  v51 = *(v0 + 432);
  v50 = *(v0 + 440);
  v76 = *(v0 + 424);
  v77 = *(v0 + 416);
  v78 = *(v0 + 408);
  v79 = *(v0 + 384);
  v80 = *(v0 + 360);
  v81 = *(v0 + 352);
  v82 = *(v0 + 344);
  v83 = *(v0 + 320);
  v84 = *(v0 + 312);
  v85 = *(v0 + 304);
  v86 = *(v0 + 280);
  v87 = *(v0 + 256);
  v88 = *(v0 + 232);
  v89 = *(v0 + 224);
  v90 = *(v0 + 200);
  v91 = *(v0 + 176);
  v92 = *(v0 + 152);
  v93 = *(v0 + 144);

  v52 = *(v0 + 8);

  return v52();
}

uint64_t sub_22B1ECC20()
{
  v1 = *(v0 + 752);
  if (*(v0 + 819))
  {
    *(v0 + 820) = 0;
    *(v0 + 760) = v1;
    v2 = *(v0 + 544);
    v3 = sub_22B1ED390;
LABEL_3:

    return MEMORY[0x2822009F8](v3, v2, 0);
  }

  else
  {
    v4 = *(v0 + 512);
    (*(*(v0 + 248) + 8))(*(v0 + 256), *(v0 + 240));
    sub_22B201FDC(v4, type metadata accessor for SessionKey);
    v5 = (*(v0 + 728) - 1) & *(v0 + 728);
    v6 = *(v0 + 736);
    *(v0 + 720) = v1;
    if (v5)
    {
      goto LABEL_9;
    }

LABEL_10:
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v8 >= (((1 << *(v0 + 818)) + 63) >> 6))
      {
        v35 = *(v0 + 712);
        v36 = *(v0 + 704);
        v37 = *(v0 + 600);
        v38 = *(v0 + 576);
        v39 = *(v0 + 456);
        v40 = *(v0 + 392);
        v41 = *(v0 + 400);

        v42 = *(v0 + 48);

        v43 = *(v0 + 56);

        (*(v41 + 8))(v39, v40);

        goto LABEL_25;
      }

      v7 = *(v0 + 576);
      v5 = *(v7 + 8 * v8 + 56);
      ++v6;
      if (v5)
      {
        v6 = v8;
        while (1)
        {
          *(v0 + 736) = v6;
          *(v0 + 728) = v5;
          v9 = *(v0 + 600);
          v10 = *(v0 + 520);
          v11 = *(v0 + 512);
          v12 = __clz(__rbit64(v5));
          v5 &= v5 - 1;
          sub_22B201F74(*(v7 + 48) + *(*(v0 + 504) + 72) * (v12 | (v6 << 6)), v10, type metadata accessor for SessionKey);
          sub_22B20203C(v10, v11, type metadata accessor for SessionKey);
          if (!*(v9 + 16))
          {
            goto LABEL_8;
          }

          v13 = *(v0 + 600);
          v14 = *(v0 + 512);
          v15 = *(v0 + 464);
          *(v0 + 808) = *(*(v0 + 496) + 36);
          v16 = *(v13 + 40);
          sub_22B1FE510(&unk_27D8BA320, 255, MEMORY[0x277CC95F0]);
          v17 = sub_22B36071C();
          v18 = -1 << *(v13 + 32);
          v19 = v17 & ~v18;
          if ((*(v13 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v19))
          {
            v20 = ~v18;
            v21 = *(*(v0 + 472) + 72);
            v22 = *(v0 + 600);
            while (1)
            {
              v23 = *(v0 + 560);
              v24 = *(v0 + 472);
              v25 = *(v0 + 480);
              v26 = *(v0 + 464);
              (*(v0 + 552))(v25, *(v22 + 48) + v19 * v21, v26);
              sub_22B1FE510(&qword_27D8BA718, 255, MEMORY[0x277CC95F0]);
              v27 = sub_22B36078C();
              (*(v24 + 8))(v25, v26);
              if (v27)
              {
                break;
              }

              v22 = *(v0 + 600);
              v19 = (v19 + 1) & v20;
              if (((*(v22 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v19) & 1) == 0)
              {
                goto LABEL_8;
              }
            }

            if (sub_22B360BFC())
            {
              v55 = *(v0 + 712);
              v56 = *(v0 + 704);
              v57 = *(v0 + 600);

              v58 = *(v0 + 48);

              v59 = *(v0 + 56);

              if (qword_28140A0C8 != -1)
              {
                goto LABEL_34;
              }

              goto LABEL_29;
            }

            v29 = *(v0 + 240);
            v28 = *(v0 + 248);
            v30 = *(v0 + 232);
            v31 = (*(v0 + 512) + *(*(v0 + 496) + 32));
            v32 = *v31;
            v33 = v31[1];

            sub_22B35E83C();
            if ((*(v28 + 48))(v30, 1, v29) != 1)
            {
              v75 = *(v0 + 544);
              v76 = *(v0 + 496);
              (*(*(v0 + 248) + 32))(*(v0 + 256), *(v0 + 232), *(v0 + 240));
              *(v0 + 812) = *(v76 + 20);
              v3 = sub_22B1EC068;
              v2 = v75;
              goto LABEL_3;
            }

            v34 = *(v0 + 232);
            sub_22B201FDC(*(v0 + 512), type metadata accessor for SessionKey);
            sub_22B123284(v34, &qword_27D8BA710, &qword_22B3659B8);
            if (!v5)
            {
              goto LABEL_10;
            }
          }

          else
          {
LABEL_8:
            sub_22B201FDC(*(v0 + 512), type metadata accessor for SessionKey);
            if (!v5)
            {
              goto LABEL_10;
            }
          }

LABEL_9:
          v7 = *(v0 + 576);
        }
      }
    }

    __break(1u);
LABEL_34:
    swift_once();
LABEL_29:
    v61 = *(v0 + 272);
    v60 = *(v0 + 280);
    v62 = *(v0 + 264);
    v63 = __swift_project_value_buffer(v62, qword_28140BD10);
    swift_beginAccess();
    (*(v61 + 16))(v60, v63, v62);
    v64 = sub_22B36050C();
    v65 = sub_22B360D1C();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_22B116000, v64, v65, "[LoadEventsProcessor] Task was cancelled", v66, 2u);
      MEMORY[0x23188F650](v66, -1, -1);
    }

    v67 = *(v0 + 576);
    v68 = *(v0 + 512);
    v69 = *(v0 + 456);
    v70 = *(v0 + 392);
    v71 = *(v0 + 400);
    v73 = *(v0 + 272);
    v72 = *(v0 + 280);
    v74 = *(v0 + 264);

    (*(v73 + 8))(v72, v74);
    (*(v71 + 8))(v69, v70);
    sub_22B201FDC(v68, type metadata accessor for SessionKey);
LABEL_25:
    v44 = *(v0 + 536);
    v45 = *(v0 + 528);
    v46 = *(v0 + 520);
    v47 = *(v0 + 512);
    v49 = *(v0 + 480);
    v48 = *(v0 + 488);
    v51 = *(v0 + 448);
    v50 = *(v0 + 456);
    v53 = *(v0 + 432);
    v52 = *(v0 + 440);
    v78 = *(v0 + 424);
    v79 = *(v0 + 416);
    v80 = *(v0 + 408);
    v81 = *(v0 + 384);
    v82 = *(v0 + 360);
    v83 = *(v0 + 352);
    v84 = *(v0 + 344);
    v85 = *(v0 + 320);
    v86 = *(v0 + 312);
    v87 = *(v0 + 304);
    v88 = *(v0 + 280);
    v89 = *(v0 + 256);
    v90 = *(v0 + 232);
    v91 = *(v0 + 224);
    v92 = *(v0 + 200);
    v93 = *(v0 + 176);
    v94 = *(v0 + 152);
    v95 = *(v0 + 144);

    v54 = *(v0 + 8);

    return v54();
  }
}