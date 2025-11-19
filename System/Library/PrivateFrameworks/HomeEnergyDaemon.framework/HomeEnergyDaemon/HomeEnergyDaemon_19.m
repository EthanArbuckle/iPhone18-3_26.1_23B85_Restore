void (*sub_22B2F781C(uint64_t *a1))(void *a1)
{
  v2 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = sub_22B35DE9C();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  if (v2)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v9 = v8;
  v4[6] = v8;
  (*(v7 + 16))();
  v4[7] = sub_22B30751C(v4, v9);
  return sub_22B2F7934;
}

void sub_22B2F7934(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

void sub_22B2F79AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void **a8)
{
  v53 = a6;
  v47 = a7;
  v48 = a8;
  v51 = a4;
  v52 = a5;
  v50 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD88, &qword_22B366F50);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v46 = (&v45 - v12);
  sub_22B35F4EC();
  v13 = sub_22B35F47C();
  [v13 setResultType_];
  v14 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v15 = sub_22B36081C();
  v16 = [v14 initWithKey:v15 ascending:0];

  v17 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v18 = sub_22B36081C();
  v19 = [v17 initWithKey:v18 ascending:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_22B363950;
  *(v20 + 32) = v16;
  *(v20 + 40) = v19;
  sub_22B128014(0, &qword_281409308, 0x277CCAC98);
  v49 = v16;
  v55 = v19;
  v21 = sub_22B360A3C();

  [v13 setSortDescriptors_];

  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_22B364840;
  *(v22 + 56) = MEMORY[0x277D837D0];
  *(v22 + 64) = sub_22B1280E4();
  *(v22 + 32) = a1;
  *(v22 + 40) = a2;

  v23 = sub_22B360C8C();
  *(v22 + 96) = sub_22B128014(0, &qword_281409278, 0x277CCABB0);
  *(v22 + 104) = sub_22B176FAC(&qword_27D8BAD48, &qword_281409278, 0x277CCABB0);
  *(v22 + 72) = v23;
  v24 = sub_22B35DDDC();
  v25 = sub_22B128014(0, &qword_281408558, 0x277CBEAA8);
  *(v22 + 136) = v25;
  v26 = sub_22B176FAC(&qword_281408550, &qword_281408558, 0x277CBEAA8);
  *(v22 + 144) = v26;
  *(v22 + 112) = v24;
  v27 = sub_22B35DDDC();
  *(v22 + 176) = v25;
  *(v22 + 184) = v26;
  *(v22 + 152) = v27;
  v28 = sub_22B360CCC();
  [v13 setPredicate_];
  [v13 setFetchBatchSize_];
  v29 = v54;
  v30 = sub_22B360E9C();
  if (v29)
  {

    return;
  }

  v31 = v48;
  v32 = v49;
  v34 = v46;
  v33 = v47;
  if (v30 >> 62)
  {
    v43 = v30;
    v44 = sub_22B36109C();
    v30 = v43;
    v35 = v55;
    if (v44)
    {
      goto LABEL_5;
    }

LABEL_10:

    return;
  }

  v35 = v55;
  if (!*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v30 & 0xC000000000000001) != 0)
  {
    v36 = MEMORY[0x23188EAC0](0);
    goto LABEL_8;
  }

  if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v36 = *(v30 + 32);
LABEL_8:
    v37 = v36;

    v38 = v37;
    sub_22B2F4AE8(v38, v34);
    v39 = type metadata accessor for CDIntervalBlocks();
    (*(*(v39 - 8) + 56))(v34, 0, 1, v39);
    sub_22B30D248(v34, v33);
    v40 = v38;
    v41 = [v40 objectID];

    v42 = *v31;
    *v31 = v41;

    return;
  }

  __break(1u);
}

void sub_22B2F7EDC(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, const char *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, void *a11, char a12, const char *a13, const char *a14)
{
  v114 = a8;
  v110 = a3;
  v111 = a7;
  v104 = a6;
  v108 = a5;
  v109 = a1;
  v101 = a9;
  v103 = sub_22B35DE9C();
  v102 = *(v103 - 8);
  v16 = *(v102 + 64);
  MEMORY[0x28223BE20](v103);
  v98 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22B36052C();
  v118 = *(v18 - 8);
  v19 = v118[8];
  MEMORY[0x28223BE20](v18);
  v100 = &v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v99 = &v98 - v22;
  MEMORY[0x28223BE20](v23);
  v117 = &v98 - v24;
  v106 = sub_22B35F4EC();
  v25 = sub_22B35F47C();
  [v25 setResultType_];
  v26 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v27 = sub_22B36081C();
  v28 = [v26 initWithKey:v27 ascending:a12 & 1];

  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v29 = swift_allocObject();
  v112 = xmmword_22B363650;
  *(v29 + 16) = xmmword_22B363650;
  *(v29 + 32) = v28;
  sub_22B128014(0, &qword_281409308, 0x277CCAC98);
  v105 = v28;
  v30 = sub_22B360A3C();

  [v25 setSortDescriptors_];

  v116 = v25;
  [v25 setFetchLimit_];
  v120 = MEMORY[0x277D84F90];
  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_22B3634C0;
  v32 = MEMORY[0x277D837D0];
  *(v31 + 56) = MEMORY[0x277D837D0];
  v33 = sub_22B1280E4();
  v34 = v110;
  *(v31 + 32) = v109;
  *(v31 + 40) = a2;
  *(v31 + 96) = v32;
  *(v31 + 104) = v33;
  *(v31 + 64) = v33;
  *(v31 + 72) = v34;
  *(v31 + 80) = a4;

  v35 = sub_22B360CCC();
  MEMORY[0x23188E350]();
  if (*((v120 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v120 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v89 = v35;
    v90 = *((v120 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22B360A7C();
    v35 = v89;
  }

  v110 = v35;
  sub_22B360A9C();
  v115 = v18;
  if (v108 != 2)
  {
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_22B3634B0;
    v37 = sub_22B128014(0, &qword_281409278, 0x277CCABB0);
    v38 = sub_22B360F9C();
    *(v36 + 56) = v37;
    *(v36 + 64) = sub_22B176FAC(&qword_27D8BAD48, &qword_281409278, 0x277CCABB0);
    *(v36 + 32) = v38;
    v39 = sub_22B360CCC();
    MEMORY[0x23188E350]();
    if (*((v120 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v120 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v92 = *((v120 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22B360A7C();
    }

    sub_22B360A9C();

    v18 = v115;
  }

  v40 = v116;
  v41 = v111;
  if (v111)
  {
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_22B3634B0;
    *(v42 + 56) = MEMORY[0x277D837D0];
    *(v42 + 64) = v33;
    *(v42 + 32) = v104;
    *(v42 + 40) = v41;

    v43 = sub_22B360CCC();
    MEMORY[0x23188E350]();
    if (*((v120 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v120 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v91 = *((v120 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22B360A7C();
    }

    sub_22B360A9C();
  }

  v44 = objc_allocWithZone(MEMORY[0x277CCA920]);
  v45 = sub_22B360A3C();

  v46 = [v44 initWithType:1 subpredicates:v45];

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v47 = __swift_project_value_buffer(v18, qword_28140BD10);
  swift_beginAccess();
  v48 = v118[2];
  v48(v117, v47, v18);
  v49 = v46;
  v50 = sub_22B36050C();
  v51 = sub_22B360D2C();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *v52 = 138412290;
    *(v52 + 4) = v49;
    *v53 = v49;
    v54 = v49;
    _os_log_impl(&dword_22B116000, v50, v51, "[IntervalReadingRecords] Fetching records using predicate %@", v52, 0xCu);
    sub_22B123284(v53, &unk_27D8BAA90, &unk_22B362BC0);
    v55 = v53;
    v40 = v116;
    MEMORY[0x23188F650](v55, -1, -1);
    MEMORY[0x23188F650](v52, -1, -1);
  }

  v56 = v117;
  v117 = v118[1];
  ++v118;
  (v117)(v56, v18);
  [v40 setPredicate_];
  v57 = swift_allocObject();
  *(v57 + 16) = v112;
  v58 = *(v114 + 14);
  if (!v58)
  {
    goto LABEL_34;
  }

  *(v57 + 32) = v58;
  sub_22B128014(0, &qword_2814092F8, 0x277CBE4D0);
  v59 = v58;
  v60 = sub_22B360A3C();

  [v40 setAffectedStores_];

  v61 = v107;
  v62 = sub_22B360E9C();
  if (v61)
  {

    return;
  }

  if (v62 >> 62)
  {
    v93 = v62;
    v94 = sub_22B36109C();
    v62 = v93;
    if (v94)
    {
      goto LABEL_20;
    }

LABEL_28:

    v48(v99, v47, v115);
    v95 = sub_22B36050C();
    v96 = sub_22B360D2C();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      v40 = v116;
      _os_log_impl(&dword_22B116000, v95, v96, a14, v97, 2u);
      MEMORY[0x23188F650](v97, -1, -1);
    }

    (v117)(v99, v115);
    [a11 refreshAllObjects];
    v88 = 1;
    v85 = v101;
    v86 = v105;
    goto LABEL_31;
  }

  if (!*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_28;
  }

LABEL_20:
  if ((v62 & 0xC000000000000001) != 0)
  {
    v63 = MEMORY[0x23188EAC0](0);
    goto LABEL_23;
  }

  if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v63 = *(v62 + 32);
LABEL_23:
    v64 = v63;

    v65 = v100;
    v66 = v47;
    v67 = v115;
    v48(v100, v66, v115);
    v40 = v64;
    v68 = sub_22B36050C();
    v69 = sub_22B360D2C();

    v70 = &selRef_initWithShareURLs_invitationTokensByShareURL_;
    if (os_log_type_enabled(v68, v69))
    {
      v114 = a13;
      v71 = swift_slowAlloc();
      *&v112 = v71;
      v113 = swift_slowAlloc();
      v119 = v113;
      *v71 = 136315138;
      v72 = [v40 start];
      LODWORD(v111) = v69;
      v73 = v98;
      sub_22B35DE5C();

      sub_22B306EB4(&qword_28140B488, MEMORY[0x277CC9578]);
      v74 = v103;
      v75 = sub_22B36131C();
      v77 = v76;
      v78 = v74;
      v70 = &selRef_initWithShareURLs_invitationTokensByShareURL_;
      (*(v102 + 8))(v73, v78);
      v79 = sub_22B1A7B20(v75, v77, &v119);

      v80 = v112;
      *(v112 + 4) = v79;
      v81 = v80;
      _os_log_impl(&dword_22B116000, v68, v111, v114, v80, 0xCu);
      v82 = v113;
      __swift_destroy_boxed_opaque_existential_0(v113);
      MEMORY[0x23188F650](v82, -1, -1);
      MEMORY[0x23188F650](v81, -1, -1);

      v83 = v100;
      v84 = v115;
    }

    else
    {

      v83 = v65;
      v84 = v67;
    }

    (v117)(v83, v84);
    v85 = v101;
    v86 = v105;
    v87 = [v40 v70[5]];
    sub_22B35DE5C();

    [a11 refreshAllObjects];
    v88 = 0;
LABEL_31:

    (*(v102 + 56))(v85, v88, 1, v103);
    return;
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void sub_22B2F8AC4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5, uint64_t a6, unint64_t a7, void *a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, unint64_t a14)
{
  v21 = MEMORY[0x23188EEB0]();
  sub_22B2F8BAC(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, &v24);
  objc_autoreleasePoolPop(v21);
  if (!v23)
  {
    [a11 refreshAllObjects];
  }
}

void sub_22B2F8BAC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5, uint64_t a6, unint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, unint64_t a14, char **a15)
{
  v259 = a8;
  v256 = a7;
  v253 = a3;
  v254 = a5;
  v267[4] = *MEMORY[0x277D85DE8];
  v250 = sub_22B35DE9C();
  v252 = *(v250 - 8);
  v18 = *(v252 + 64);
  MEMORY[0x28223BE20](v250);
  v249 = (&v209 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v255 = sub_22B3603AC();
  v251 = *(v255 - 8);
  v20 = *(v251 + 64);
  MEMORY[0x28223BE20](v255);
  v261 = &v209 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v257 = sub_22B35FEBC();
  v260 = *(v257 - 8);
  v22 = *(v260 + 64);
  MEMORY[0x28223BE20](v257);
  v236 = &v209 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v227 = &v209 - v25;
  MEMORY[0x28223BE20](v26);
  v243 = &v209 - v27;
  MEMORY[0x28223BE20](v28);
  v228 = &v209 - v29;
  MEMORY[0x28223BE20](v30);
  v233 = &v209 - v31;
  MEMORY[0x28223BE20](v32);
  v258 = &v209 - v33;
  v264 = sub_22B36052C();
  v248 = *(v264 - 8);
  v34 = *(v248 + 64);
  MEMORY[0x28223BE20](v264);
  v214 = &v209 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v237 = &v209 - v37;
  MEMORY[0x28223BE20](v38);
  v232 = &v209 - v39;
  MEMORY[0x28223BE20](v40);
  v231 = &v209 - v41;
  MEMORY[0x28223BE20](v42);
  v219 = &v209 - v43;
  MEMORY[0x28223BE20](v44);
  v46 = &v209 - v45;
  v262 = sub_22B35F4EC();
  v47 = sub_22B35F47C();
  [v47 setResultType_];
  v48 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v49 = sub_22B36081C();
  v50 = [v48 initWithKey:v49 ascending:1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v51 = swift_allocObject();
  v265 = xmmword_22B363650;
  *(v51 + 16) = xmmword_22B363650;
  *(v51 + 32) = v50;
  sub_22B128014(0, &qword_281409308, 0x277CCAC98);
  v212 = v50;
  v52 = sub_22B360A3C();

  [v47 setSortDescriptors_];

  v53 = swift_allocObject();
  *(v53 + 16) = v265;
  v54 = *(a1 + 112);
  if (!v54)
  {
    __break(1u);
  }

  v213 = a11;
  *(v53 + 32) = v54;
  sub_22B128014(0, &qword_2814092F8, 0x277CBE4D0);
  v55 = v54;
  v56 = sub_22B360A3C();

  v220 = v47;
  [v47 setAffectedStores_];

  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_22B363660;
  v58 = MEMORY[0x277D837D0];
  *(v57 + 56) = MEMORY[0x277D837D0];
  v59 = sub_22B1280E4();
  v60 = v254;
  *(v57 + 32) = v253;
  *(v57 + 40) = a4;
  *(v57 + 96) = v58;
  *(v57 + 104) = v59;
  *(v57 + 64) = v59;
  *(v57 + 72) = v60;
  *(v57 + 80) = a6;
  *(v57 + 136) = v58;
  *(v57 + 144) = v59;
  v61 = v259;
  *(v57 + 112) = v256;
  *(v57 + 120) = v61;

  v62 = sub_22B35DDDC();
  v63 = sub_22B128014(0, &qword_281408558, 0x277CBEAA8);
  *(v57 + 176) = v63;
  v64 = sub_22B176FAC(&qword_281408550, &qword_281408558, 0x277CBEAA8);
  *(v57 + 184) = v64;
  *(v57 + 152) = v62;
  v65 = sub_22B35DDDC();
  *(v57 + 216) = v63;
  *(v57 + 224) = v64;
  *(v57 + 192) = v65;
  v66 = sub_22B128014(0, &qword_281409278, 0x277CCABB0);
  v67 = sub_22B360F9C();
  *(v57 + 256) = v66;
  *(v57 + 264) = sub_22B176FAC(&qword_27D8BAD48, &qword_281409278, 0x277CCABB0);
  *(v57 + 232) = v67;
  v68 = sub_22B360CCC();
  if (qword_28140A0C8 != -1)
  {
LABEL_72:
    swift_once();
  }

  v69 = v264;
  v70 = __swift_project_value_buffer(v264, qword_28140BD10);
  swift_beginAccess();
  v71 = v248;
  v72 = *(v248 + 16);
  v73 = v46;
  v247 = v70;
  v246 = v248 + 16;
  v245 = v72;
  v72(v46, v70, v69);
  v74 = v68;
  v75 = sub_22B36050C();
  v76 = sub_22B360D2C();

  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    *v77 = 138412290;
    *(v77 + 4) = v74;
    *v78 = v74;
    v79 = v74;
    _os_log_impl(&dword_22B116000, v75, v76, "[IntervalReadingRecords] Fetching records using predicate %@", v77, 0xCu);
    sub_22B123284(v78, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v78, -1, -1);
    MEMORY[0x23188F650](v77, -1, -1);
  }

  v81 = *(v71 + 8);
  v80 = v71 + 8;
  v68 = v81;
  v81(v73, v264);
  v82 = v220;
  [v220 setPredicate_];
  [v82 setFetchBatchSize_];
  v83 = v263;
  v84 = sub_22B360E9C();
  if (v83)
  {
    v86 = v83;

LABEL_65:
    *a15 = v86;
    goto LABEL_66;
  }

  v244 = v68;
  v259 = 0;
  v210 = v74;
  v211 = v84;
  if (v84 >> 62)
  {
    v87 = sub_22B36109C();
  }

  else
  {
    v87 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v46 = v219;
  if (v87)
  {
    v88 = 0;
    v218 = v211 & 0xC000000000000001;
    v217 = v211 & 0xFFFFFFFFFFFFFF8;
    v216 = v211 + 32;
    v248 = v80;
    v254 = (v251 + 8);
    v230 = a13;
    v242 = a12;
    v253 = (v252 + 8);
    *&v265 = v260 + 8;
    *&v85 = 136315138;
    v221 = v85;
    *&v85 = 136315650;
    v226 = v85;
    v241 = v260 + 16;
    v215 = v87;
    v235 = a14;
    while (1)
    {
      if (v218)
      {
        v89 = MEMORY[0x23188EAC0](v88, v211);
      }

      else
      {
        if (v88 >= *(v217 + 16))
        {
          goto LABEL_71;
        }

        v89 = *(v216 + 8 * v88);
      }

      v262 = v89;
      v90 = __OFADD__(v88, 1);
      v91 = v88 + 1;
      if (v90)
      {
        goto LABEL_70;
      }

      if (sub_22B360BFC())
      {
        break;
      }

      v222 = v91;
      sub_22B35FDCC();
      v92 = [v262 readings];
      v93 = sub_22B35DCDC();
      v95 = v94;

      v96 = sub_22B35FDBC();
      sub_22B12F174(v93, v95);
      v97 = *(v96 + 16);
      if (v97)
      {
        LODWORD(v229) = 0;
        v46 = 0;
        v256 = v96 + ((*(v260 + 80) + 32) & ~*(v260 + 80));
        LODWORD(v240) = 1;
        v263 = MEMORY[0x277D84F90];
        v99 = v257;
        v98 = v258;
        v68 = v242;
        v239 = v96;
        v238 = v97;
        while (v46 < *(v96 + 16))
        {
          v100 = *(v260 + 16);
          v100(v98, v256 + *(v260 + 72) * v46, v99);
          if ([v262 preprocessed])
          {
            (*v265)(v98, v99);
          }

          else
          {
            v267[0] = v68;

            v101 = v261;
            sub_22B35FE2C();
            v102 = v249;
            sub_22B36038C();
            v251 = *v254;
            (v251)(v101, v255);
            v103 = sub_22B206AEC(v267, v102);
            v105 = v104;
            v252 = *v253;
            (v252)(v102, v250);

            if (v105)
            {
              v106 = v231;
              v245(v231, v247, v264);
              v107 = v233;
              v100(v233, v98, v99);
              v108 = sub_22B36050C();
              v109 = sub_22B360D2C();
              if (os_log_type_enabled(v108, v109))
              {
                v110 = swift_slowAlloc();
                v225 = v110;
                v234 = swift_slowAlloc();
                v266 = v234;
                *v110 = v221;
                v111 = v261;
                sub_22B35FE2C();
                v224 = v109;
                v112 = v249;
                sub_22B36038C();
                (v251)(v111, v255);
                sub_22B306EB4(&qword_28140B488, MEMORY[0x277CC9578]);
                v113 = v250;
                v114 = sub_22B36131C();
                v116 = v115;
                (v252)(v112, v113);
                v117 = v258;
                v240 = *v265;
                v240(v233, v99);
                v118 = sub_22B1A7B20(v114, v116, &v266);

                v119 = v225;
                *(v225 + 4) = v118;
                v120 = v119;
                _os_log_impl(&dword_22B116000, v108, v224, "[IntervalReadingRecords] Processing %s failed", v119, 0xCu);
                v121 = v234;
                __swift_destroy_boxed_opaque_existential_0(v234);
                MEMORY[0x23188F650](v121, -1, -1);
                MEMORY[0x23188F650](v120, -1, -1);

                v122 = v231;
              }

              else
              {
                v117 = v98;

                v240 = *v265;
                v240(v107, v99);
                v122 = v106;
              }

              v244(v122, v264);
              sub_22B306EB4(&qword_27D8BAD50, MEMORY[0x277D074F8]);
              v140 = v259;
              v141 = sub_22B36042C();
              v259 = v140;
              if (v140)
              {
                v240(v117, v99);

LABEL_56:

                v68 = v259;
                v259 = 0;
                v82 = v220;
                v199 = v214;
                goto LABEL_57;
              }

              v143 = v141;
              v144 = v142;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v263 = sub_22B32D0BC(0, *(v263 + 2) + 1, 1, v263);
              }

              v145 = v236;
              v147 = *(v263 + 2);
              v146 = *(v263 + 3);
              v148 = v237;
              if (v147 >= v146 >> 1)
              {
                v263 = sub_22B32D0BC((v146 > 1), v147 + 1, 1, v263);
                v148 = v237;
              }

              v150 = v263;
              v149 = v264;
              *(v263 + 2) = v147 + 1;
              v151 = &v150[16 * v147];
              *(v151 + 4) = v143;
              *(v151 + 5) = v144;
              v245(v148, v247, v149);
              v152 = v227;
              v99 = v257;
              v98 = v258;
              v100(v227, v258, v257);
              v100(v145, v98, v99);
              v153 = v242;

              v154 = sub_22B36050C();
              v155 = sub_22B360D1C();

              v234 = v154;
              if (os_log_type_enabled(v154, v155))
              {
                v156 = swift_slowAlloc();
                v225 = swift_slowAlloc();
                v266 = v225;
                *v156 = v226;
                v157 = v261;
                v224 = v155;
                sub_22B35FE2C();
                v158 = v152;
                v159 = v249;
                sub_22B36038C();
                (v251)(v157, v255);
                v223 = sub_22B306EB4(&qword_28140B488, MEMORY[0x277CC9578]);
                v160 = v250;
                v161 = sub_22B36131C();
                v163 = v162;
                (v252)(v159, v160);
                v240(v158, v257);
                v164 = sub_22B1A7B20(v161, v163, &v266);

                *(v156 + 4) = v164;
                *(v156 + 12) = 2080;
                sub_22B35FDEC();
                sub_22B36038C();
                v165 = v157;
                v99 = v257;
                v98 = v258;
                (v251)(v165, v255);
                v166 = sub_22B36131C();
                v168 = v167;
                (v252)(v159, v160);
                v169 = v240;
                v240(v236, v99);
                v170 = sub_22B1A7B20(v166, v168, &v266);

                *(v156 + 14) = v170;
                *(v156 + 22) = 2080;
                v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA828, qword_22B365C20);
                v172 = v242;
                v173 = MEMORY[0x23188E390](v242, v171);
                v175 = sub_22B1A7B20(v173, v174, &v266);

                *(v156 + 24) = v175;
                v176 = v234;
                _os_log_impl(&dword_22B116000, v234, v224, "[Dropbox Bridge] %s-%s Failed to find peaks %s", v156, 0x20u);
                v177 = v225;
                swift_arrayDestroy();
                MEMORY[0x23188F650](v177, -1, -1);
                MEMORY[0x23188F650](v156, -1, -1);

                v244(v237, v264);
                v169(v98, v99);
                LODWORD(v240) = 0;
                v68 = v172;
              }

              else
              {

                v189 = v240;
                v240(v145, v99);
                v189(v152, v99);
                v244(v237, v264);
                v189(v98, v99);
                LODWORD(v240) = 0;
                v68 = v153;
              }
            }

            else
            {
              v123 = v232;
              v245(v232, v247, v264);
              v124 = v228;
              v100(v228, v98, v99);
              v125 = v235;

              v126 = sub_22B36050C();
              v127 = sub_22B360D2C();

              if (os_log_type_enabled(v126, v127))
              {
                v128 = swift_slowAlloc();
                v234 = swift_slowAlloc();
                v266 = v234;
                *v128 = v226;
                v229 = v126;
                v129 = v261;
                LODWORD(v225) = v127;
                sub_22B35FE2C();
                v130 = v249;
                sub_22B36038C();
                (v251)(v129, v255);
                sub_22B306EB4(&qword_28140B488, MEMORY[0x277CC9578]);
                v131 = v250;
                v132 = sub_22B36131C();
                v134 = v133;
                (v252)(v130, v131);
                v68 = *v265;
                (*v265)(v124, v257);
                v135 = sub_22B1A7B20(v132, v134, &v266);

                *(v128 + 4) = v135;
                *(v128 + 12) = 2048;
                *(v128 + 14) = v103;
                *(v128 + 22) = 2080;
                *(v128 + 24) = sub_22B1A7B20(v230, v125, &v266);
                v136 = v229;
                _os_log_impl(&dword_22B116000, v229, v225, "[IntervalReadingRecords] Processing %s with rank %ld for %s", v128, 0x20u);
                v137 = v234;
                swift_arrayDestroy();
                MEMORY[0x23188F650](v137, -1, -1);
                v138 = v128;
                v99 = v257;
                MEMORY[0x23188F650](v138, -1, -1);

                v139 = v232;
              }

              else
              {

                v68 = *v265;
                (*v265)(v124, v99);
                v139 = v123;
              }

              v244(v139, v264);
              sub_22B35FEAC();
              if (v103 < 0xFFFFFFFF80000000)
              {
                goto LABEL_68;
              }

              if (v103 > 0x7FFFFFFF)
              {
                goto LABEL_69;
              }

              sub_22B35FE1C();

              sub_22B35FDDC();
              sub_22B35FE8C();
              sub_22B35FE9C();
              sub_22B35FE2C();
              sub_22B35FE3C();
              sub_22B35FDEC();
              sub_22B35FDFC();
              sub_22B35FE4C();
              sub_22B35FE5C();
              sub_22B306EB4(&qword_27D8BAD50, MEMORY[0x277D074F8]);
              v178 = v259;
              v179 = sub_22B36042C();
              v259 = v178;
              if (v178)
              {

                (v68)(v243, v99);
                (v68)(v258, v99);
                goto LABEL_56;
              }

              v181 = v179;
              v182 = v180;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v263 = sub_22B32D0BC(0, *(v263 + 2) + 1, 1, v263);
              }

              v184 = *(v263 + 2);
              v183 = *(v263 + 3);
              if (v184 >= v183 >> 1)
              {
                v263 = sub_22B32D0BC((v183 > 1), v184 + 1, 1, v263);
              }

              v185 = v257;
              (v68)(v243, v257);
              v186 = v258;
              (v68)(v258, v185);
              v187 = v263;
              *(v263 + 2) = v184 + 1;
              v98 = v186;
              v188 = &v187[16 * v184];
              v99 = v185;
              *(v188 + 4) = v181;
              *(v188 + 5) = v182;
              LODWORD(v229) = 1;
              v68 = v242;
            }

            v96 = v239;
            v97 = v238;
          }

          if (v97 == ++v46)
          {
            goto LABEL_49;
          }
        }

        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      LODWORD(v229) = 0;
      LODWORD(v240) = 1;
      v263 = MEMORY[0x277D84F90];
LABEL_49:

      v190 = objc_opt_self();
      v191 = sub_22B360A3C();

      v267[0] = 0;
      v192 = [v190 archivedDataWithRootObject:v191 requiringSecureCoding:0 error:v267];

      v193 = v267[0];
      if (v192)
      {
        v194 = sub_22B35DCDC();
        v68 = v195;

        v82 = v220;
        if (v229)
        {
          v196 = v262;
          [v262 setPreprocessed_];
          v197 = sub_22B35DCCC();
          [v196 setReadings_];

          sub_22B12F174(v194, v68);
        }

        else
        {

          sub_22B12F174(v194, v68);
        }
      }

      else
      {
        v198 = v193;
        v68 = sub_22B35DB9C();

        swift_willThrow();
        v259 = 0;
        v82 = v220;
        v199 = v214;
LABEL_57:
        v245(v199, v247, v264);
        v200 = sub_22B36050C();
        v201 = sub_22B360D1C();
        if (os_log_type_enabled(v200, v201))
        {
          v202 = swift_slowAlloc();
          *v202 = 0;
          _os_log_impl(&dword_22B116000, v200, v201, "[Dropbox Bridge] Failed to process reading", v202, 2u);
          MEMORY[0x23188F650](v202, -1, -1);
        }

        v244(v199, v264);
      }

      v88 = v222;
      v46 = v219;
      if (v222 == v215)
      {
        goto LABEL_60;
      }
    }

    v245(v46, v247, v264);
    v203 = sub_22B36050C();
    v204 = sub_22B360D1C();
    if (os_log_type_enabled(v203, v204))
    {
      v205 = swift_slowAlloc();
      v206 = swift_slowAlloc();
      v267[0] = v206;
      *v205 = 136315394;
      *(v205 + 4) = sub_22B1A7B20(0xD000000000000061, 0x800000022B36DE80, v267);
      *(v205 + 12) = 2048;
      *(v205 + 14) = 589;
      _os_log_impl(&dword_22B116000, v203, v204, "[IntervalReadingRecords] Task is cancelled at marker %s:%ld", v205, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v206);
      MEMORY[0x23188F650](v206, -1, -1);
      MEMORY[0x23188F650](v205, -1, -1);
    }

    v244(v46, v264);
  }

  else
  {
LABEL_60:
  }

  v207 = v259;
  sub_22B207390(11);
  v86 = v207;

  if (v207)
  {
    goto LABEL_65;
  }

LABEL_66:
  v208 = *MEMORY[0x277D85DE8];
}

void sub_22B2FA8DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void, void, void), uint64_t *a6, uint64_t a7, void (**a8)(char *, uint64_t), void (**a9)(char *, uint64_t), uint64_t a10, void *a11, _BYTE *a12, uint64_t a13, uint64_t a14, _BYTE *a15)
{
  v221 = a6;
  v222 = a8;
  v219 = a5;
  v220 = a7;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD90, &qword_22B366F58);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v208 = v171 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v217 = v171 - v22;
  v198 = sub_22B35FEDC();
  v215 = *(v198 - 8);
  v23 = *(v215 + 64);
  MEMORY[0x28223BE20](v198);
  v207 = v171 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v223 = v171 - v26;
  MEMORY[0x28223BE20](v27);
  v216 = v171 - v28;
  v229 = sub_22B35FEBC();
  v183 = *(v229 - 8);
  v29 = *(v183 + 64);
  MEMORY[0x28223BE20](v229);
  v228 = v171 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = sub_22B35DE9C();
  v180 = *(v196 - 8);
  v31 = v180[8];
  MEMORY[0x28223BE20](v196);
  v218 = v171 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v193 = v171 - v34;
  MEMORY[0x28223BE20](v35);
  v202 = v171 - v36;
  v203 = sub_22B36052C();
  v194 = *(v203 - 8);
  v37 = *(v194 + 64);
  MEMORY[0x28223BE20](v203);
  v195 = v171 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v173 = v171 - v40;
  v42 = MEMORY[0x28223BE20](v41);
  v227 = (v171 - v43);
  v175 = MEMORY[0x23188EEB0](v42);
  v224 = sub_22B35F4EC();
  v44 = sub_22B35F47C();
  [v44 setResultType_];
  v45 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v46 = sub_22B36081C();
  v47 = [v45 initWithKey:v46 ascending:1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v48 = swift_allocObject();
  v226 = xmmword_22B363650;
  *(v48 + 16) = xmmword_22B363650;
  *(v48 + 32) = v47;
  sub_22B128014(0, &qword_281409308, 0x277CCAC98);
  v174 = v47;
  v49 = sub_22B360A3C();

  [v44 setSortDescriptors_];

  v50 = swift_allocObject();
  *(v50 + 16) = v226;
  v51 = *(a1 + 112);
  if (!v51)
  {
    __break(1u);
    return;
  }

  v181 = a11;
  *&v226 = a10;
  *(v50 + 32) = v51;
  sub_22B128014(0, &qword_2814092F8, 0x277CBE4D0);
  v52 = v51;
  v53 = sub_22B360A3C();

  v182 = v44;
  [v44 setAffectedStores_];

  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_22B363640;
  v55 = MEMORY[0x277D837D0];
  *(v54 + 56) = MEMORY[0x277D837D0];
  v56 = sub_22B1280E4();
  *(v54 + 32) = a3;
  *(v54 + 40) = a4;
  *(v54 + 96) = v55;
  *(v54 + 104) = v56;
  v58 = v219;
  v57 = v220;
  *(v54 + 64) = v56;
  *(v54 + 72) = v58;
  v59 = v222;
  *(v54 + 80) = v221;
  *(v54 + 136) = v55;
  *(v54 + 144) = v56;
  *(v54 + 112) = v57;
  *(v54 + 120) = v59;
  v201 = a4;

  v222 = a9;
  v60 = sub_22B35DDDC();
  v61 = sub_22B128014(0, &qword_281408558, 0x277CBEAA8);
  *(v54 + 176) = v61;
  v62 = sub_22B176FAC(&qword_281408550, &qword_281408558, 0x277CBEAA8);
  *(v54 + 184) = v62;
  *(v54 + 152) = v60;
  v63 = sub_22B35DDDC();
  *(v54 + 216) = v61;
  *(v54 + 224) = v62;
  *(v54 + 192) = v63;
  v64 = sub_22B360CCC();
  v65 = a3;
  if (qword_28140A0C8 != -1)
  {
    goto LABEL_57;
  }

LABEL_3:
  v66 = v203;
  v67 = __swift_project_value_buffer(v203, qword_28140BD10);
  swift_beginAccess();
  v68 = v194;
  v69 = *(v194 + 16);
  v70 = v227;
  v192 = v67;
  v191 = v194 + 16;
  v190 = v69;
  v69(v227, v67, v66);
  v71 = v64;
  v72 = sub_22B36050C();
  v73 = sub_22B360D2C();

  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    *v74 = 138412290;
    *(v74 + 4) = v71;
    *v75 = v71;
    v76 = v71;
    _os_log_impl(&dword_22B116000, v72, v73, "[IntervalReadingRecords] Fetching records using predicate %@", v74, 0xCu);
    sub_22B123284(v75, &unk_27D8BAA90, &unk_22B362BC0);
    v77 = v75;
    v66 = v203;
    MEMORY[0x23188F650](v77, -1, -1);
    v78 = v74;
    v70 = v227;
    MEMORY[0x23188F650](v78, -1, -1);
  }

  v81 = *(v68 + 8);
  v79 = v68 + 8;
  v80 = v81;
  v81(v70, v66);
  v82 = v182;
  [v182 setPredicate_];
  [v82 setFetchBatchSize_];
  v83 = v225;
  v84 = sub_22B360E9C();
  if (v83)
  {

    objc_autoreleasePoolPop(v175);
    return;
  }

  v85 = v84;
  v188 = v80;
  v171[1] = 0;
  v194 = v79;
  v86 = v180[2];
  v87 = v222;
  v88 = v196;
  v86(v202, v222, v196);
  v86(v193, v87, v88);
  if (v85 >> 62)
  {
    v89 = sub_22B36109C();
  }

  else
  {
    v89 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v172 = v71;
  swift_beginAccess();
  v91 = v196;
  if (!v89)
  {
    goto LABEL_48;
  }

  v184 = v89;
  v64 = 0;
  v204 = a14;
  v206 = a13;
  v179 = a12;
  v187 = v85 & 0xC000000000000001;
  v186 = v85 & 0xFFFFFFFFFFFFFF8;
  v171[0] = v85;
  v185 = v85 + 32;
  v178 = (v180 + 5);
  v177 = (v180 + 4);
  v214 = v183 + 16;
  v224 = v215 + 48;
  v210 = (v215 + 32);
  v209 = *MEMORY[0x277D07500];
  v213 = (v215 + 104);
  v222 = (v215 + 8);
  v212 = (v183 + 8);
  v211 = *MEMORY[0x277D07510];
  v200 = 1;
  v205 = *MEMORY[0x277D07508];
  v199 = (v180 + 1);
  v180 = ((v180 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
  *&v90 = 136315906;
  v176 = v90;
  v215 = v65;
  v92 = v198;
  v93 = v218;
  while (1)
  {
    if (v187)
    {
      v95 = MEMORY[0x23188EAC0](v64, v171[0]);
      v94 = v199;
      v96 = __OFADD__(v64, 1);
      v97 = v64 + 1;
      if (v96)
      {
LABEL_47:
        __break(1u);
LABEL_48:
        v162 = v180[1];
        v163 = 1;
        v162(v193, v91);
        goto LABEL_52;
      }
    }

    else
    {
      v94 = v199;
      if (v64 >= *(v186 + 16))
      {
        __break(1u);
LABEL_57:
        swift_once();
        goto LABEL_3;
      }

      v95 = *(v185 + 8 * v64);
      v96 = __OFADD__(v64, 1);
      v97 = v64 + 1;
      if (v96)
      {
        goto LABEL_47;
      }
    }

    v198 = v97;
    if (sub_22B360BFC())
    {
      break;
    }

    v98 = [v95 start];
    sub_22B35DE5C();

    LOBYTE(v98) = sub_22B35DE4C();
    v99 = *v94;
    (*v94)(v93, v91);
    v197 = v99;
    if (v98)
    {
      if (v200)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v100 = [v95 start];
      sub_22B35DE5C();

      LODWORD(v100) = sub_22B35DE4C();
      v99(v93, v91);
      if (v200 & v100)
      {
LABEL_20:
        v101 = [v95 end];
        sub_22B35DE5C();

        (*v178)(v202, v93, v91);
        v102 = [v95 start];
        sub_22B35DE5C();

        v103 = v193;
        v197(v193, v91);
        (*v177)(v103, v93, v91);
        v200 = 1;
        goto LABEL_21;
      }
    }

    v200 = 0;
LABEL_21:
    v104 = v203;
    v105 = v195;
    v190(v195, v192, v203);

    v106 = v95;
    v107 = sub_22B36050C();
    v108 = v201;
    v109 = v107;
    v110 = sub_22B360D2C();

    LODWORD(v225) = v110;
    v227 = v109;
    v111 = os_log_type_enabled(v109, v110);
    *&v226 = v106;
    if (v111)
    {
      v112 = swift_slowAlloc();
      v221 = swift_slowAlloc();
      v231 = v221;
      *v112 = v176;
      *(v112 + 4) = sub_22B1A7B20(v65, v108, &v231);
      *(v112 + 12) = 2080;
      v113 = [v226 start];
      sub_22B35DE5C();

      sub_22B306EB4(&qword_28140B488, MEMORY[0x277CC9578]);
      v114 = v196;
      v115 = sub_22B36131C();
      v117 = v116;
      v118 = v197;
      v197(v93, v114);
      v119 = sub_22B1A7B20(v115, v117, &v231);

      *(v112 + 14) = v119;
      *(v112 + 22) = 2080;
      v120 = [v226 end];
      sub_22B35DE5C();

      v121 = sub_22B36131C();
      v123 = v122;
      v118(v93, v114);
      v124 = sub_22B1A7B20(v121, v123, &v231);

      *(v112 + 24) = v124;
      *(v112 + 32) = 2080;
      v125 = sub_22B36131C();
      v127 = sub_22B1A7B20(v125, v126, &v231);

      *(v112 + 34) = v127;
      v128 = v227;
      _os_log_impl(&dword_22B116000, v227, v225, "[IntervalReadingRecords] All Blocks seen check for %s %s-%s wrt %s", v112, 0x2Au);
      v129 = v221;
      swift_arrayDestroy();
      MEMORY[0x23188F650](v129, -1, -1);
      MEMORY[0x23188F650](v112, -1, -1);

      v130 = v195;
      v131 = v203;
    }

    else
    {

      v130 = v105;
      v131 = v104;
    }

    v188(v130, v131);
    if (([v226 preprocessed] & 1) == 0)
    {
      *v179 = 0;
    }

    sub_22B35FDCC();
    v132 = [v226 readings];
    v133 = sub_22B35DCDC();
    v135 = v134;

    v136 = sub_22B35FDBC();
    sub_22B12F174(v133, v135);
    v137 = *(v136 + 16);
    if (v137)
    {
      v138 = (*(v183 + 80) + 32) & ~*(v183 + 80);
      v189 = v136;
      v139 = v136 + v138;
      v140 = *(v183 + 72);
      v219 = *(v183 + 16);
      v220 = v140;
      v141 = v224;
      do
      {
        v227 = v137;
        v219(v228, v139, v229);
        sub_22B35F4AC();
        v146 = v217;
        sub_22B35FECC();
        v147 = *v141;
        v148 = (*v141)(v146, 1, v92);
        v149 = v213;
        v221 = v147;
        if (v148 == 1)
        {
          v150 = *v213;
          v151 = v216;
          (*v213)(v216, v209, v92);
          if ((v147)(v146, 1, v92) != 1)
          {
            sub_22B123284(v146, &qword_27D8BAD90, &qword_22B366F58);
          }
        }

        else
        {
          v151 = v216;
          (*v210)(v216, v146, v92);
          v150 = *v149;
        }

        v152 = v223;
        v225 = v150;
        v150(v223, v211, v92);
        sub_22B306EB4(&qword_27D8BADC0, MEMORY[0x277D07518]);
        sub_22B360A1C();
        sub_22B360A1C();
        v153 = v151;
        v154 = *v222;
        (*v222)(v152, v92);
        v154(v153, v92);
        if (v231 == v230)
        {
          v142 = v228;
          sub_22B35FE4C();
          v144 = v143;
          (*v212)(v142, v229);
          v145 = &v233;
        }

        else
        {
          sub_22B35F4AC();
          v155 = v208;
          sub_22B35FECC();
          v156 = v221;
          if ((v221)(v155, 1, v92) == 1)
          {
            v157 = v156;
            v158 = v207;
            v225(v207, v209, v92);
            if ((v157)(v155, 1, v92) != 1)
            {
              sub_22B123284(v155, &qword_27D8BAD90, &qword_22B366F58);
            }
          }

          else
          {
            v158 = v207;
            (*v210)(v207, v155, v92);
          }

          v159 = v223;
          v225(v223, v205, v92);
          sub_22B360A1C();
          sub_22B360A1C();
          v154(v159, v92);
          v154(v158, v92);
          if (v231 != v230)
          {
            (*v212)(v228, v229);
            goto LABEL_30;
          }

          v160 = v228;
          sub_22B35FE4C();
          v144 = v161;
          (*v212)(v160, v229);
          v145 = &v232;
        }

        **(v145 - 32) = v144 + **(v145 - 32);
LABEL_30:
        v65 = v215;
        v93 = v218;
        v141 = v224;
        v139 += v220;
        v137 = (v227 - 1);
      }

      while (v227 != 1);
    }

    v64 = v198;
    v91 = v196;
    v66 = v203;
    if (v198 == v184)
    {
      v163 = v200;
      v162 = v197;
      v197(v193, v196);
LABEL_52:

      v170 = v175;
      goto LABEL_55;
    }
  }

  v164 = v173;
  v190(v173, v192, v66);
  v165 = sub_22B36050C();
  v166 = sub_22B360D1C();
  if (os_log_type_enabled(v165, v166))
  {
    v167 = swift_slowAlloc();
    v168 = v94;
    v169 = swift_slowAlloc();
    v231 = v169;
    *v167 = 136315394;
    *(v167 + 4) = sub_22B1A7B20(0xD00000000000008DLL, 0x800000022B36DFF0, &v231);
    *(v167 + 12) = 2048;
    *(v167 + 14) = 706;
    _os_log_impl(&dword_22B116000, v165, v166, "[IntervalReadingRecords] Task is cancelled at marker %s:%ld", v167, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v169);
    MEMORY[0x23188F650](v169, -1, -1);
    MEMORY[0x23188F650](v167, -1, -1);

    v188(v164, v66);
    v162 = *v168;
    v91 = v196;
    (*v168)(v193, v196);
  }

  else
  {

    v188(v164, v66);
    v162 = *v94;
    v91 = v196;
    (*v94)(v193, v196);
  }

  v170 = v175;
  v163 = v200;
LABEL_55:
  *a15 &= v163 & 1;
  v162(v202, v91);
  objc_autoreleasePoolPop(v170);
  [v181 refreshAllObjects];
}

uint64_t sub_22B2FC08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = a7;
  v8[18] = a8;
  v8[15] = a5;
  v8[16] = a6;
  v8[13] = a3;
  v8[14] = a4;
  v8[11] = a1;
  v8[12] = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BABD0, &unk_22B366EE0);
  v8[19] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v8[20] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BABD8, &qword_22B3669E0);
  v8[21] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v8[22] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BABE0, &unk_22B366EF0);
  v8[23] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v8[24] = swift_task_alloc();
  v15 = sub_22B3603AC();
  v8[25] = v15;
  v16 = *(v15 - 8);
  v8[26] = v16;
  v17 = *(v16 + 64) + 15;
  v8[27] = swift_task_alloc();
  v18 = sub_22B35DE9C();
  v8[28] = v18;
  v19 = *(v18 - 8);
  v8[29] = v19;
  v20 = *(v19 + 64) + 15;
  v8[30] = swift_task_alloc();
  v8[31] = swift_task_alloc();
  v8[32] = swift_task_alloc();
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();
  v8[35] = swift_task_alloc();
  v8[36] = swift_task_alloc();
  v8[37] = swift_task_alloc();
  v21 = sub_22B36052C();
  v8[38] = v21;
  v22 = *(v21 - 8);
  v8[39] = v22;
  v23 = *(v22 + 64) + 15;
  v8[40] = swift_task_alloc();
  v8[41] = swift_task_alloc();
  v8[42] = swift_task_alloc();
  v24 = sub_22B35F7CC();
  v8[43] = v24;
  v25 = *(v24 - 8);
  v8[44] = v25;
  v26 = *(v25 + 64) + 15;
  v8[45] = swift_task_alloc();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  v8[46] = v27;
  v28 = *(*(v27 - 8) + 64) + 15;
  v8[47] = swift_task_alloc();
  v8[48] = swift_task_alloc();
  v8[49] = swift_task_alloc();
  v8[50] = swift_task_alloc();
  v8[51] = swift_task_alloc();
  v29 = *(type metadata accessor for CDUsagePointRecords() - 8);
  v8[52] = v29;
  v30 = *(v29 + 64) + 15;
  v8[53] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B2FC450, 0, 0);
}

uint64_t sub_22B2FC450()
{
  if (qword_2814096B8 != -1)
  {
    swift_once();
  }

  v1 = qword_28140BCE8;
  *(v0 + 432) = qword_28140BCE8;

  return MEMORY[0x2822009F8](sub_22B2FC4E8, v1, 0);
}

uint64_t sub_22B2FC4E8()
{
  v1 = v0[54];
  sub_22B32C2B8(v0[11], v0[12], v0[13], v0[14], 0, 0);
  v0[55] = v2;
  v0[56] = 0;

  return MEMORY[0x2822009F8](sub_22B2FC6D4, 0, 0);
}

uint64_t sub_22B2FC6D4()
{
  v258 = v0;
  v1 = *(v0 + 440);
  if (!v1)
  {
    goto LABEL_50;
  }

  v2 = *(v1 + 16);
  *(v0 + 456) = v2;
  if (!v2)
  {
    goto LABEL_49;
  }

  v3 = *(v0 + 448);
  *(v0 + 464) = 0;
  if (!*(v1 + 16))
  {
LABEL_32:
    __break(1u);
LABEL_33:
    v121 = *(v0 + 440);

    if (qword_28140A0C8 != -1)
    {
LABEL_56:
      swift_once();
    }

    v122 = *(v0 + 336);
    v123 = *(v0 + 304);
    v124 = *(v0 + 312);
    v125 = __swift_project_value_buffer(v123, qword_28140BD10);
    swift_beginAccess();
    (*(v124 + 16))(v122, v125, v123);
    v126 = sub_22B36050C();
    v127 = sub_22B360D1C();
    v128 = os_log_type_enabled(v126, v127);
    v129 = *(v0 + 408);
    v253 = *(v0 + 400);
    v130 = *(v0 + 352);
    v131 = *(v0 + 360);
    v133 = *(v0 + 336);
    v132 = *(v0 + 344);
    v135 = *(v0 + 304);
    v134 = *(v0 + 312);
    if (v128)
    {
      v245 = *(v0 + 408);
      v136 = swift_slowAlloc();
      v236 = v131;
      v137 = swift_slowAlloc();
      v257[0] = v137;
      *v136 = 136315394;
      *(v136 + 4) = sub_22B1A7B20(0xD000000000000044, 0x800000022B36DDB0, v257);
      *(v136 + 12) = 2048;
      *(v136 + 14) = 850;
      _os_log_impl(&dword_22B116000, v126, v127, "[IntervalReadingRecords] Task is cancelled at marker %s:%ld", v136, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v137);
      MEMORY[0x23188F650](v137, -1, -1);
      MEMORY[0x23188F650](v136, -1, -1);

      (*(v134 + 8))(v133, v135);
      (*(v130 + 8))(v236, v132);
      sub_22B123284(v253, &qword_27D8BA340, &qword_22B363FB0);
      v138 = v245;
    }

    else
    {

      (*(v134 + 8))(v133, v135);
      (*(v130 + 8))(v131, v132);
      sub_22B123284(v253, &qword_27D8BA340, &qword_22B363FB0);
      v138 = v129;
    }

    v139 = &qword_27D8BA340;
    v140 = &qword_22B363FB0;
LABEL_38:
    sub_22B123284(v138, v139, v140);
    sub_22B30D1E8(*(v0 + 424), type metadata accessor for CDUsagePointRecords);
    goto LABEL_50;
  }

  v4 = 0;
  while (1)
  {
    v249 = v3;
    v5 = *(v0 + 424);
    v6 = *(v0 + 408);
    v7 = *(v0 + 368);
    v8 = *(v0 + 112);
    v9 = *(v0 + 120);
    v10 = *(v0 + 104);
    v231 = *(v0 + 136);
    v240 = *(v0 + 88);
    sub_22B23E004(v1 + ((*(*(v0 + 416) + 80) + 32) & ~*(*(v0 + 416) + 80)) + *(*(v0 + 416) + 72) * v4, v5);
    v11 = *(v5 + 16);
    *(v0 + 472) = v11;
    v12 = *(v5 + 24);
    *(v0 + 480) = v12;
    v13 = swift_task_alloc();
    *(v13 + 16) = v240;
    *(v13 + 32) = v10;
    *(v13 + 40) = v8;
    *(v13 + 48) = 0;
    *(v13 + 56) = v11;
    *(v13 + 64) = v12;
    *(v13 + 72) = v231;
    *(v13 + 88) = v9;
    sub_22B360E7C();
    if (v249)
    {
      v160 = *(v0 + 440);
      v161 = *(v0 + 424);

      sub_22B30D1E8(v161, type metadata accessor for CDUsagePointRecords);
      v162 = *(v0 + 424);
      v164 = *(v0 + 400);
      v163 = *(v0 + 408);
      v166 = *(v0 + 384);
      v165 = *(v0 + 392);
      v167 = *(v0 + 376);
      v168 = *(v0 + 360);
      v169 = *(v0 + 328);
      v170 = *(v0 + 336);
      v194 = *(v0 + 320);
      v196 = *(v0 + 296);
      v199 = *(v0 + 288);
      v202 = *(v0 + 280);
      v205 = *(v0 + 272);
      v209 = *(v0 + 264);
      v213 = *(v0 + 256);
      v217 = *(v0 + 248);
      v222 = *(v0 + 240);
      v229 = *(v0 + 216);
      v238 = *(v0 + 192);
      v247 = *(v0 + 176);
      v255 = *(v0 + 160);

      v171 = *(v0 + 8);
      goto LABEL_51;
    }

    v14 = *(v0 + 400);
    v15 = *(v0 + 368);
    v17 = *(v0 + 112);
    v16 = *(v0 + 120);
    v18 = *(v0 + 104);
    v241 = *(v0 + 88);
    v250 = *(v0 + 136);

    v19 = swift_task_alloc();
    *(v19 + 16) = v241;
    *(v19 + 32) = v18;
    *(v19 + 40) = v17;
    *(v19 + 48) = 0;
    *(v19 + 56) = v11;
    *(v19 + 64) = v12;
    *(v19 + 72) = v250;
    *(v19 + 88) = v16;
    sub_22B360E7C();
    v20 = *(v0 + 424);

    v21 = *(v20 + 32);
    *(v0 + 488) = v21;
    v22 = *(v21 + 16);
    *(v0 + 496) = v22;
    v23 = &qword_27D8BA340;
    if (v22)
    {
      break;
    }

LABEL_30:
    v117 = *(v0 + 456);
    v118 = *(v0 + 424);
    v119 = *(v0 + 408);
    v120 = *(v0 + 464) + 1;
    sub_22B123284(*(v0 + 400), v23, &qword_22B363FB0);
    sub_22B123284(v119, v23, &qword_22B363FB0);
    sub_22B30D1E8(v118, type metadata accessor for CDUsagePointRecords);
    if (v120 == v117)
    {
      v183 = *(v0 + 440);
LABEL_49:

LABEL_50:
      v184 = *(v0 + 424);
      v186 = *(v0 + 400);
      v185 = *(v0 + 408);
      v188 = *(v0 + 384);
      v187 = *(v0 + 392);
      v189 = *(v0 + 376);
      v190 = *(v0 + 360);
      v192 = *(v0 + 328);
      v191 = *(v0 + 336);
      v193 = *(v0 + 320);
      v197 = *(v0 + 296);
      v200 = *(v0 + 288);
      v203 = *(v0 + 280);
      v206 = *(v0 + 272);
      v210 = *(v0 + 264);
      v214 = *(v0 + 256);
      v218 = *(v0 + 248);
      v223 = *(v0 + 240);
      v230 = *(v0 + 216);
      v239 = *(v0 + 192);
      v248 = *(v0 + 176);
      v256 = *(v0 + 160);

      v171 = *(v0 + 8);
LABEL_51:

      return v171();
    }

    v3 = 0;
    v4 = *(v0 + 464) + 1;
    *(v0 + 464) = v4;
    v1 = *(v0 + 440);
    if (v4 >= *(v1 + 16))
    {
      goto LABEL_32;
    }
  }

  v24 = 0;
  *(v0 + 616) = *(*(v0 + 352) + 80);
  while (1)
  {
    *(v0 + 504) = v24;
    v25 = *(v0 + 488);
    if (v24 >= *(v25 + 16))
    {
      __break(1u);
      goto LABEL_56;
    }

    (*(*(v0 + 352) + 16))(*(v0 + 360), v25 + ((*(v0 + 616) + 32) & ~*(v0 + 616)) + *(*(v0 + 352) + 72) * v24, *(v0 + 344));
    v26 = sub_22B35F75C();
    v28 = v27;

    v29 = HIBYTE(v28) & 0xF;
    if ((v28 & 0x2000000000000000) == 0)
    {
      v29 = v26 & 0xFFFFFFFFFFFFLL;
    }

    if (v29)
    {
      break;
    }

    (*(*(v0 + 352) + 8))(*(v0 + 360), *(v0 + 344));
LABEL_9:
    v24 = *(v0 + 504) + 1;
    if (v24 == *(v0 + 496))
    {
      goto LABEL_30;
    }
  }

  if (sub_22B360BFC())
  {
    goto LABEL_33;
  }

  v30 = *(v0 + 392);
  v31 = *(v0 + 224);
  v32 = *(v0 + 232);
  sub_22B170BE0(*(v0 + 408), v30, v23, &qword_22B363FB0);
  v33 = *(v32 + 48);
  *(v0 + 512) = v33;
  *(v0 + 520) = (v32 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v33(v30, 1, v31) == 1)
  {
    v34 = *(v0 + 392);
    (*(*(v0 + 352) + 8))(*(v0 + 360), *(v0 + 344));
    sub_22B123284(v34, v23, &qword_22B363FB0);
    goto LABEL_9;
  }

  v35 = *(v0 + 392);
  v36 = *(v0 + 400);
  v37 = *(v0 + 384);
  v38 = *(v0 + 296);
  v40 = *(v0 + 224);
  v39 = *(v0 + 232);
  v41 = *(v39 + 32);
  *(v0 + 528) = v41;
  *(v0 + 536) = (v39 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v41(v38, v35, v40);
  sub_22B170BE0(v36, v37, v23, &qword_22B363FB0);
  v42 = v33(v37, 1, v40);
  v43 = *(v0 + 384);
  v44 = v23;
  v45 = *(v0 + 360);
  v46 = *(v0 + 224);
  v47 = *(v0 + 232) + 8;
  if (v42 == 1)
  {
    v49 = *(v0 + 344);
    v48 = *(v0 + 352);
    (*v47)(*(v0 + 296), *(v0 + 224));
    (*(v48 + 8))(v45, v49);
    sub_22B123284(v43, v44, &qword_22B363FB0);
    v23 = v44;
    goto LABEL_9;
  }

  v50 = *(v0 + 272);
  v51 = *(v0 + 208);
  v52 = *(v0 + 216);
  v53 = *(v0 + 200);
  v224 = v53;
  v232 = *(v0 + 296);
  v242 = v41;
  v41(*(v0 + 288), v43, v46);
  sub_22B35F79C();
  sub_22B36038C();
  v54 = *(v51 + 8);
  v54(v52, v224);
  v55 = sub_22B35DDEC();
  v56 = *v47;
  *(v0 + 544) = *v47;
  *(v0 + 552) = v47 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v233 = v56;
  v56(v50, v46);
  v57 = *(v0 + 280);
  if (v55)
  {
    (*(*(v0 + 232) + 16))(*(v0 + 280), *(v0 + 296), *(v0 + 224));
  }

  else
  {
    v58 = *(v0 + 360);
    v59 = *(v0 + 216);
    v60 = *(v0 + 200);
    sub_22B35F79C();
    sub_22B36038C();
    v54(v59, v60);
  }

  v61 = v54;
  v62 = *(v0 + 360);
  v63 = *(v0 + 288);
  v64 = *(v0 + 272);
  v65 = *(v0 + 216);
  v225 = *(v0 + 224);
  v66 = *(v0 + 200);
  sub_22B35F77C();
  sub_22B36038C();
  v61(v65, v66);
  LOBYTE(v62) = sub_22B35DDFC();
  v233(v64, v225);
  if (v62)
  {
    (*(*(v0 + 232) + 16))(*(v0 + 264), *(v0 + 288), *(v0 + 224));
  }

  else
  {
    v67 = v61;
    v68 = *(v0 + 360);
    v69 = *(v0 + 216);
    v70 = *(v0 + 200);
    sub_22B35F77C();
    sub_22B36038C();
    v67(v69, v70);
  }

  v71 = *(v0 + 360);
  v72 = *(v0 + 280);
  v73 = *(v0 + 264);
  v74 = *(v0 + 224);
  v75 = *(v0 + 232);
  v76 = *(v0 + 184);
  v77 = *(v0 + 192);
  v78 = *(v0 + 168);
  v79 = *(v0 + 176);
  v226 = *(v0 + 152);
  *(v0 + 560) = sub_22B35F75C();
  *(v0 + 568) = v80;
  v234 = *(v78 + 36);
  sub_22B35DE0C();
  v219 = *(v75 + 16);
  *(v0 + 576) = v219;
  *(v0 + 584) = (v75 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v81 = v74;
  v219(v79, v72, v74);
  v82 = *(v76 + 44);
  v83 = v76;
  *(v0 + 620) = v82;
  v84 = v77 + v82;
  v85 = *(v226 + 48);
  *(v0 + 624) = v85;
  v242(v77 + v82 + v85, v79, v81);
  v86 = *(v83 + 36);
  *(v0 + 628) = v86;
  v242(v77 + v86, v79 + v234, v81);
  v87 = *(v83 + 40);
  *(v0 + 632) = v87;
  *(v77 + v87) = 0x4143C68000000000;
  v219(v77, v84 + v85, v81);
  *v84 = 0;
  *(v84 + 8) = 0;
  *(v0 + 592) = 0;
  v88 = *(v0 + 628);
  v89 = *(v0 + 584);
  (*(v0 + 576))(*(v0 + 256), *(v0 + 192) + *(v0 + 620) + *(v0 + 624), *(v0 + 224));
  sub_22B306EB4(&qword_28140B490, MEMORY[0x277CC9578]);
  if (sub_22B36075C())
  {
    v90 = *(v0 + 552);
    (*(v0 + 544))(*(v0 + 256), *(v0 + 224));
    v91 = 1;
  }

  else
  {
    v215 = *(v0 + 552);
    v207 = *(v0 + 632);
    v211 = *(v0 + 544);
    v251 = *(v0 + 536);
    v243 = *(v0 + 528);
    v227 = *(v0 + 376);
    v235 = *(v0 + 624);
    v92 = *(v0 + 272);
    v220 = *(v0 + 256);
    v93 = *(v0 + 224);
    v94 = *(v0 + 232);
    v95 = *(v0 + 192) + *(v0 + 620);
    v97 = *(v0 + 152);
    v96 = *(v0 + 160);
    sub_22B170BE0(v95, v96, &qword_27D8BABD0, &unk_22B366EE0);
    v98 = *v96;
    v99 = *(v96 + 8);
    v100 = *(v97 + 48);
    sub_22B306EB4(&qword_27D8BABE8, MEMORY[0x277CC9578]);
    v101 = sub_22B36101C();
    LOBYTE(v99) = v102;
    v211(v96 + v100, v93);
    *v95 = v101;
    *(v95 + 8) = v99 & 1;
    (*(v94 + 40))(v95 + v235, v92, v93);
    v243(v227, v220, v93);
    v91 = 0;
  }

  v103 = *(v0 + 520);
  v104 = *(v0 + 512);
  v105 = *(v0 + 376);
  v106 = *(v0 + 224);
  (*(*(v0 + 232) + 56))(v105, v91, 1, v106);
  if (v104(v105, 1, v106) == 1)
  {
    v107 = *(v0 + 568);
    v108 = *(v0 + 552);
    v109 = *(v0 + 544);
    v110 = *(v0 + 352);
    v252 = *(v0 + 360);
    v244 = *(v0 + 344);
    v112 = *(v0 + 288);
    v111 = *(v0 + 296);
    v113 = *(v0 + 280);
    v114 = *(v0 + 264);
    v115 = *(v0 + 224);
    v116 = *(v0 + 192);

    v109(v114, v115);
    v109(v113, v115);
    v109(v112, v115);
    v109(v111, v115);
    (*(v110 + 8))(v252, v244);
    sub_22B123284(v116, &qword_27D8BABE0, &unk_22B366EF0);
    v23 = &qword_27D8BA340;
    goto LABEL_9;
  }

  v141 = *(v0 + 536);
  (*(v0 + 528))(*(v0 + 248), *(v0 + 376), *(v0 + 224));
  if (sub_22B360BFC())
  {
    v142 = *(v0 + 568);
    v143 = *(v0 + 440);

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v144 = *(v0 + 328);
    v145 = *(v0 + 304);
    v146 = *(v0 + 312);
    v147 = __swift_project_value_buffer(v145, qword_28140BD10);
    swift_beginAccess();
    (*(v146 + 16))(v144, v147, v145);
    v148 = sub_22B36050C();
    v149 = sub_22B360D1C();
    v150 = os_log_type_enabled(v148, v149);
    v151 = *(v0 + 552);
    v152 = *(v0 + 544);
    v153 = *(v0 + 408);
    v246 = *(v0 + 400);
    v154 = *(v0 + 352);
    v228 = *(v0 + 344);
    v237 = *(v0 + 360);
    v155 = *(v0 + 312);
    v204 = *(v0 + 304);
    v208 = *(v0 + 328);
    v216 = *(v0 + 288);
    v221 = *(v0 + 296);
    v212 = *(v0 + 280);
    v201 = *(v0 + 264);
    v254 = *(v0 + 248);
    v156 = *(v0 + 224);
    v157 = *(v0 + 192);
    if (v150)
    {
      v195 = *(v0 + 408);
      v158 = swift_slowAlloc();
      v198 = v157;
      v159 = swift_slowAlloc();
      v257[0] = v159;
      *v158 = 136315394;
      *(v158 + 4) = sub_22B1A7B20(0xD000000000000044, 0x800000022B36DDB0, v257);
      *(v158 + 12) = 2048;
      *(v158 + 14) = 879;
      _os_log_impl(&dword_22B116000, v148, v149, "[IntervalReadingRecords] Task is cancelled at marker %s:%ld", v158, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v159);
      MEMORY[0x23188F650](v159, -1, -1);
      MEMORY[0x23188F650](v158, -1, -1);

      (*(v155 + 8))(v208, v204);
      v152(v201, v156);
      v152(v212, v156);
      v152(v216, v156);
      v152(v221, v156);
      (*(v154 + 8))(v237, v228);
      sub_22B123284(v246, &qword_27D8BA340, &qword_22B363FB0);
      sub_22B123284(v195, &qword_27D8BA340, &qword_22B363FB0);
      v152(v254, v156);
      v139 = &qword_27D8BABE0;
      v140 = &unk_22B366EF0;
      v138 = v198;
    }

    else
    {

      (*(v155 + 8))(v208, v204);
      v152(v201, v156);
      v152(v212, v156);
      v152(v216, v156);
      v152(v221, v156);
      (*(v154 + 8))(v237, v228);
      sub_22B123284(v246, &qword_27D8BA340, &qword_22B363FB0);
      sub_22B123284(v153, &qword_27D8BA340, &qword_22B363FB0);
      v152(v254, v156);
      v139 = &qword_27D8BABE0;
      v140 = &unk_22B366EF0;
      v138 = v157;
    }

    goto LABEL_38;
  }

  v173 = *(v0 + 240);
  v172 = *(v0 + 248);
  sub_22B35DE0C();
  v174 = swift_task_alloc();
  *(v0 + 600) = v174;
  *v174 = v0;
  v174[1] = sub_22B2FD994;
  v175 = *(v0 + 568);
  v176 = *(v0 + 560);
  v178 = *(v0 + 240);
  v177 = *(v0 + 248);
  v179 = *(v0 + 128);
  v181 = *(v0 + 104);
  v180 = *(v0 + 112);

  return sub_22B3156C8(v181, v180, v177, v178, v179, v176, v175);
}

uint64_t sub_22B2FD994(uint64_t a1)
{
  v2 = *(*v1 + 600);
  v4 = *v1;
  *(*v1 + 608) = a1;

  return MEMORY[0x2822009F8](sub_22B2FDA94, 0, 0);
}

uint64_t sub_22B2FDA94()
{
  v278 = v1;
  v2 = *(v1 + 608);
  v3 = *(v1 + 592);
  if (v2)
  {
    v4 = *(v1 + 568);
    v5 = *(v1 + 560);
    v7 = *(v1 + 472);
    v6 = *(v1 + 480);
    v8 = *(v1 + 120);
    v255 = *(v1 + 88);
    v266 = *(v1 + 104);
    v9 = swift_task_alloc();
    v10 = *(v1 + 240);
    *(v9 + 16) = *(v1 + 136);
    *(v9 + 32) = v255;
    *(v9 + 48) = v266;
    *(v9 + 64) = v7;
    *(v9 + 72) = v6;
    *(v9 + 80) = vextq_s8(v10, v10, 8uLL);
    *(v9 + 96) = v8;
    *(v9 + 104) = v2;
    *(v9 + 112) = v5;
    *(v9 + 120) = v4;
    v0 = v3;
    sub_22B360E7C();

    if (v3)
    {
      if (qword_28140A0C8 != -1)
      {
LABEL_63:
        swift_once();
      }

      v12 = *(v1 + 312);
      v11 = *(v1 + 320);
      v13 = *(v1 + 304);
      v14 = __swift_project_value_buffer(v13, qword_28140BD10);
      swift_beginAccess();
      (*(v12 + 16))(v11, v14, v13);
      v15 = sub_22B36050C();
      v16 = sub_22B360D1C();
      v17 = os_log_type_enabled(v15, v16);
      v18 = *(v1 + 320);
      v19 = *(v1 + 304);
      v20 = (*(v1 + 312) + 8);
      if (v17)
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_22B116000, v15, v16, "[Dropbox Bridge] Failed to process reading", v21, 2u);
        MEMORY[0x23188F650](v21, -1, -1);
      }

      (*v20)(v18, v19);
    }

    v3 = 0;
  }

  v22 = *(v1 + 552);
  v23 = *(v1 + 544);
  v24 = *(v1 + 248);
  v25 = *(v1 + 224);
  v23(*(v1 + 240), v25);
  v23(v24, v25);
LABEL_9:
  *(v1 + 592) = v3;
  v26 = *(v1 + 628);
  v27 = *(v1 + 584);
  (*(v1 + 576))(*(v1 + 256), *(v1 + 192) + *(v1 + 620) + *(v1 + 624), *(v1 + 224));
  sub_22B306EB4(&qword_28140B490, MEMORY[0x277CC9578]);
  if (sub_22B36075C())
  {
    v28 = *(v1 + 552);
    (*(v1 + 544))(*(v1 + 256), *(v1 + 224));
    v29 = 1;
  }

  else
  {
    v227 = *(v1 + 552);
    v223 = *(v1 + 544);
    v267 = *(v1 + 536);
    v247 = *(v1 + 624);
    v256 = *(v1 + 528);
    v30 = *(v1 + 272);
    v233 = *(v1 + 256);
    v239 = *(v1 + 376);
    v31 = *(v1 + 224);
    v215 = *(v1 + 632);
    v219 = *(v1 + 232);
    v32 = *(v1 + 192) + *(v1 + 620);
    v34 = *(v1 + 152);
    v33 = *(v1 + 160);
    sub_22B170BE0(v32, v33, &qword_27D8BABD0, &unk_22B366EE0);
    v211 = *v33;
    v207 = *(v33 + 8);
    v35 = *(v34 + 48);
    sub_22B306EB4(&qword_27D8BABE8, MEMORY[0x277CC9578]);
    v36 = sub_22B36101C();
    LOBYTE(v34) = v37;
    v223(v33 + v35, v31);
    *v32 = v36;
    *(v32 + 8) = v34 & 1;
    (*(v219 + 40))(v32 + v247, v30, v31);
    v256(v239, v233, v31);
    v29 = 0;
  }

  v38 = *(v1 + 520);
  v39 = *(v1 + 512);
  v40 = *(v1 + 376);
  v41 = *(v1 + 224);
  (*(*(v1 + 232) + 56))(v40, v29, 1, v41);
  if (v39(v40, 1, v41) == 1)
  {
    v42 = *(v1 + 568);
    v43 = *(v1 + 552);
    v44 = *(v1 + 544);
    v45 = *(v1 + 352);
    v268 = *(v1 + 360);
    v46 = *(v1 + 288);
    v240 = *(v1 + 296);
    v47 = *(v1 + 280);
    v48 = *(v1 + 264);
    v49 = *(v1 + 224);
    v248 = *(v1 + 192);
    v257 = *(v1 + 344);

    v44(v48, v49);
    v44(v47, v49);
    v44(v46, v49);
    v44(v240, v49);
    (*(v45 + 8))(v268, v257);
    sub_22B123284(v248, &qword_27D8BABE0, &unk_22B366EF0);
    while (1)
    {
      while (1)
      {
        v50 = *(v1 + 504) + 1;
        if (v50 == *(v1 + 496))
        {
          while (1)
          {
            v51 = *(v1 + 456);
            v52 = *(v1 + 424);
            v0 = *(v1 + 408);
            v53 = *(v1 + 464) + 1;
            sub_22B123284(*(v1 + 400), &qword_27D8BA340, &qword_22B363FB0);
            sub_22B123284(v0, &qword_27D8BA340, &qword_22B363FB0);
            sub_22B30D1E8(v52, type metadata accessor for CDUsagePointRecords);
            if (v53 == v51)
            {
              v129 = *(v1 + 440);

              goto LABEL_40;
            }

            v54 = *(v1 + 464) + 1;
            *(v1 + 464) = v54;
            v55 = *(v1 + 440);
            if (v54 >= *(v55 + 16))
            {
              break;
            }

            v56 = *(v1 + 424);
            v57 = *(v1 + 408);
            v58 = *(v1 + 368);
            v60 = *(v1 + 112);
            v59 = *(v1 + 120);
            v61 = *(v1 + 104);
            v258 = *(v1 + 136);
            v269 = *(v1 + 88);
            sub_22B23E004(v55 + ((*(*(v1 + 416) + 80) + 32) & ~*(*(v1 + 416) + 80)) + *(*(v1 + 416) + 72) * v54, v56);
            v62 = *(v56 + 16);
            *(v1 + 472) = v62;
            v63 = *(v56 + 24);
            *(v1 + 480) = v63;
            v64 = swift_task_alloc();
            *(v64 + 16) = v269;
            *(v64 + 32) = v61;
            *(v64 + 40) = v60;
            *(v64 + 48) = 0;
            *(v64 + 56) = v62;
            *(v64 + 64) = v63;
            *(v64 + 72) = v258;
            *(v64 + 88) = v59;
            v0 = v3;
            sub_22B360E7C();
            if (v3)
            {
              v141 = *(v1 + 440);
              v142 = *(v1 + 424);

              sub_22B30D1E8(v142, type metadata accessor for CDUsagePointRecords);
              v143 = *(v1 + 424);
              v145 = *(v1 + 400);
              v144 = *(v1 + 408);
              v147 = *(v1 + 384);
              v146 = *(v1 + 392);
              v148 = *(v1 + 376);
              v149 = *(v1 + 360);
              v150 = *(v1 + 328);
              v151 = *(v1 + 336);
              v203 = *(v1 + 320);
              v205 = *(v1 + 296);
              v209 = *(v1 + 288);
              v213 = *(v1 + 280);
              v217 = *(v1 + 272);
              v221 = *(v1 + 264);
              v225 = *(v1 + 256);
              v231 = *(v1 + 248);
              v237 = *(v1 + 240);
              v245 = *(v1 + 216);
              v252 = *(v1 + 192);
              v263 = *(v1 + 176);
              v274 = *(v1 + 160);

              v140 = *(v1 + 8);
              goto LABEL_42;
            }

            v65 = *(v1 + 400);
            v66 = *(v1 + 368);
            v68 = *(v1 + 112);
            v67 = *(v1 + 120);
            v69 = *(v1 + 104);
            v259 = *(v1 + 88);
            v270 = *(v1 + 136);

            v70 = swift_task_alloc();
            *(v70 + 16) = v259;
            *(v70 + 32) = v69;
            *(v70 + 40) = v68;
            *(v70 + 48) = 0;
            *(v70 + 56) = v62;
            *(v70 + 64) = v63;
            *(v70 + 72) = v270;
            *(v70 + 88) = v67;
            sub_22B360E7C();
            v71 = *(v1 + 424);

            v3 = 0;
            v72 = *(v71 + 32);
            *(v1 + 488) = v72;
            v73 = *(v72 + 16);
            *(v1 + 496) = v73;
            if (v73)
            {
              v3 = 0;
              v50 = 0;
              *(v1 + 616) = *(*(v1 + 352) + 80);
              goto LABEL_21;
            }
          }

          __break(1u);
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        v72 = *(v1 + 488);
LABEL_21:
        *(v1 + 504) = v50;
        if (v50 >= *(v72 + 16))
        {
          goto LABEL_62;
        }

        (*(*(v1 + 352) + 16))(*(v1 + 360), v72 + ((*(v1 + 616) + 32) & ~*(v1 + 616)) + *(*(v1 + 352) + 72) * v50, *(v1 + 344));
        v74 = sub_22B35F75C();
        v76 = v75;

        v77 = HIBYTE(v76) & 0xF;
        if ((v76 & 0x2000000000000000) == 0)
        {
          v77 = v74 & 0xFFFFFFFFFFFFLL;
        }

        if (v77)
        {
          break;
        }

        (*(*(v1 + 352) + 8))(*(v1 + 360), *(v1 + 344));
      }

      if (sub_22B360BFC())
      {
        break;
      }

      v78 = *(v1 + 392);
      v79 = *(v1 + 224);
      v80 = *(v1 + 232);
      sub_22B170BE0(*(v1 + 408), v78, &qword_27D8BA340, &qword_22B363FB0);
      v81 = *(v80 + 48);
      *(v1 + 512) = v81;
      *(v1 + 520) = (v80 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      if (v81(v78, 1, v79) == 1)
      {
        v82 = *(v1 + 392);
        (*(*(v1 + 352) + 8))(*(v1 + 360), *(v1 + 344));
        v83 = v82;
      }

      else
      {
        v84 = *(v1 + 392);
        v271 = *(v1 + 400);
        v85 = *(v1 + 384);
        v86 = *(v1 + 296);
        v87 = *(v1 + 232);
        v260 = *(v1 + 224);
        v88 = *(v87 + 32);
        *(v1 + 528) = v88;
        *(v1 + 536) = (v87 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
        v88(v86, v84);
        sub_22B170BE0(v271, v85, &qword_27D8BA340, &qword_22B363FB0);
        v89 = v81(v85, 1, v260);
        v90 = *(v1 + 384);
        v91 = *(v1 + 360);
        if (v89 != 1)
        {
          v94 = *(v1 + 272);
          v96 = *(v1 + 208);
          v95 = *(v1 + 216);
          v97 = *(v1 + 200);
          v241 = v97;
          v249 = *(v1 + 296);
          v272 = *(v1 + 224);
          v261 = v88;
          v98 = *(v1 + 232) + 8;
          (v88)(*(v1 + 288), *(v1 + 384), v272);
          sub_22B35F79C();
          sub_22B36038C();
          v99 = *(v96 + 8);
          v99(v95, v241);
          v100 = sub_22B35DDEC();
          v101 = *v98;
          *(v1 + 544) = *v98;
          *(v1 + 552) = v98 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v242 = v101;
          v101(v94, v272);
          if (v100)
          {
            (*(*(v1 + 232) + 16))(*(v1 + 280), *(v1 + 296), *(v1 + 224));
          }

          else
          {
            v102 = *(v1 + 360);
            v103 = *(v1 + 216);
            v104 = *(v1 + 200);
            sub_22B35F79C();
            sub_22B36038C();
            v99(v103, v104);
          }

          v105 = v99;
          v106 = *(v1 + 360);
          v234 = *(v1 + 288);
          v107 = *(v1 + 272);
          v109 = *(v1 + 216);
          v108 = *(v1 + 224);
          v110 = *(v1 + 200);
          sub_22B35F77C();
          sub_22B36038C();
          v105(v109, v110);
          LOBYTE(v106) = sub_22B35DDFC();
          v242(v107, v108);
          v111 = *(v1 + 264);
          if (v106)
          {
            (*(*(v1 + 232) + 16))(*(v1 + 264), *(v1 + 288), *(v1 + 224));
          }

          else
          {
            v112 = *(v1 + 360);
            v113 = *(v1 + 216);
            v114 = *(v1 + 200);
            sub_22B35F77C();
            sub_22B36038C();
            v105(v113, v114);
          }

          v115 = *(v1 + 360);
          v228 = *(v1 + 264);
          v116 = *(v1 + 224);
          v117 = *(v1 + 232);
          v119 = *(v1 + 184);
          v118 = *(v1 + 192);
          v120 = *(v1 + 168);
          v121 = *(v1 + 176);
          v235 = *(v1 + 152);
          v243 = *(v1 + 280);
          *(v1 + 560) = sub_22B35F75C();
          *(v1 + 568) = v122;
          v250 = *(v120 + 36);
          sub_22B35DE0C();
          v229 = *(v117 + 16);
          *(v1 + 576) = v229;
          *(v1 + 584) = (v117 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
          v229(v121, v243, v116);
          v123 = *(v119 + 44);
          v124 = v119;
          *(v1 + 620) = v123;
          v125 = v118 + v123;
          v126 = *(v235 + 48);
          *(v1 + 624) = v126;
          v261(v118 + v123 + v126, v121, v116);
          v127 = *(v124 + 36);
          *(v1 + 628) = v127;
          v261(v118 + v127, v121 + v250, v116);
          v128 = *(v124 + 40);
          *(v1 + 632) = v128;
          *(v118 + v128) = 0x4143C68000000000;
          v229(v118, v125 + v126, v116);
          *v125 = 0;
          *(v125 + 8) = 0;
          goto LABEL_9;
        }

        v92 = *(v1 + 344);
        v93 = *(v1 + 352);
        (*(*(v1 + 232) + 8))(*(v1 + 296), *(v1 + 224));
        (*(v93 + 8))(v91, v92);
        v83 = v90;
      }

      sub_22B123284(v83, &qword_27D8BA340, &qword_22B363FB0);
    }

    v176 = *(v1 + 440);

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v177 = *(v1 + 336);
    v178 = *(v1 + 304);
    v179 = *(v1 + 312);
    v180 = __swift_project_value_buffer(v178, qword_28140BD10);
    swift_beginAccess();
    (*(v179 + 16))(v177, v180, v178);
    v181 = sub_22B36050C();
    v182 = sub_22B360D1C();
    v183 = os_log_type_enabled(v181, v182);
    v184 = *(v1 + 408);
    v276 = *(v1 + 400);
    v185 = *(v1 + 352);
    v186 = *(v1 + 360);
    v188 = *(v1 + 336);
    v187 = *(v1 + 344);
    v190 = *(v1 + 304);
    v189 = *(v1 + 312);
    if (v183)
    {
      v265 = *(v1 + 408);
      v191 = swift_slowAlloc();
      v254 = v186;
      v192 = swift_slowAlloc();
      v277[0] = v192;
      *v191 = 136315394;
      *(v191 + 4) = sub_22B1A7B20(0xD000000000000044, 0x800000022B36DDB0, v277);
      *(v191 + 12) = 2048;
      *(v191 + 14) = 850;
      _os_log_impl(&dword_22B116000, v181, v182, "[IntervalReadingRecords] Task is cancelled at marker %s:%ld", v191, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v192);
      MEMORY[0x23188F650](v192, -1, -1);
      MEMORY[0x23188F650](v191, -1, -1);

      (*(v189 + 8))(v188, v190);
      (*(v185 + 8))(v254, v187);
      sub_22B123284(v276, &qword_27D8BA340, &qword_22B363FB0);
      v175 = v265;
    }

    else
    {

      (*(v189 + 8))(v188, v190);
      (*(v185 + 8))(v186, v187);
      sub_22B123284(v276, &qword_27D8BA340, &qword_22B363FB0);
      v175 = v184;
    }

    v173 = &qword_27D8BA340;
    v174 = &qword_22B363FB0;
  }

  else
  {
    v153 = *(v1 + 536);
    (*(v1 + 528))(*(v1 + 248), *(v1 + 376), *(v1 + 224));
    if ((sub_22B360BFC() & 1) == 0)
    {
      v194 = *(v1 + 240);
      v193 = *(v1 + 248);
      sub_22B35DE0C();
      v195 = swift_task_alloc();
      *(v1 + 600) = v195;
      *v195 = v1;
      v195[1] = sub_22B2FD994;
      v196 = *(v1 + 568);
      v197 = *(v1 + 560);
      v199 = *(v1 + 240);
      v198 = *(v1 + 248);
      v200 = *(v1 + 128);
      v202 = *(v1 + 104);
      v201 = *(v1 + 112);

      return sub_22B3156C8(v202, v201, v198, v199, v200, v197, v196);
    }

    v154 = *(v1 + 568);
    v155 = *(v1 + 440);

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v156 = *(v1 + 328);
    v157 = *(v1 + 304);
    v158 = *(v1 + 312);
    v159 = __swift_project_value_buffer(v157, qword_28140BD10);
    swift_beginAccess();
    (*(v158 + 16))(v156, v159, v157);
    v160 = sub_22B36050C();
    v161 = sub_22B360D1C();
    v162 = os_log_type_enabled(v160, v161);
    v163 = *(v1 + 552);
    v164 = *(v1 + 544);
    v165 = *(v1 + 408);
    v166 = *(v1 + 352);
    v253 = *(v1 + 360);
    v264 = *(v1 + 400);
    v167 = *(v1 + 312);
    v218 = *(v1 + 304);
    v222 = *(v1 + 328);
    v168 = *(v1 + 296);
    v238 = v168;
    v246 = *(v1 + 344);
    v226 = *(v1 + 280);
    v232 = *(v1 + 288);
    v214 = *(v1 + 264);
    v275 = *(v1 + 248);
    v169 = *(v1 + 224);
    v170 = *(v1 + 192);
    if (v162)
    {
      v206 = *(v1 + 408);
      v171 = swift_slowAlloc();
      v210 = v170;
      v172 = swift_slowAlloc();
      v277[0] = v172;
      *v171 = 136315394;
      *(v171 + 4) = sub_22B1A7B20(0xD000000000000044, 0x800000022B36DDB0, v277);
      *(v171 + 12) = 2048;
      *(v171 + 14) = 879;
      _os_log_impl(&dword_22B116000, v160, v161, "[IntervalReadingRecords] Task is cancelled at marker %s:%ld", v171, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v172);
      MEMORY[0x23188F650](v172, -1, -1);
      MEMORY[0x23188F650](v171, -1, -1);

      (*(v167 + 8))(v222, v218);
      v164(v214, v169);
      v164(v226, v169);
      v164(v232, v169);
      v164(v238, v169);
      (*(v166 + 8))(v253, v246);
      sub_22B123284(v264, &qword_27D8BA340, &qword_22B363FB0);
      sub_22B123284(v206, &qword_27D8BA340, &qword_22B363FB0);
      v164(v275, v169);
      v173 = &qword_27D8BABE0;
      v174 = &unk_22B366EF0;
      v175 = v210;
    }

    else
    {

      (*(v167 + 8))(v222, v218);
      v164(v214, v169);
      v164(v226, v169);
      v164(v232, v169);
      v164(v238, v169);
      (*(v166 + 8))(v253, v246);
      sub_22B123284(v264, &qword_27D8BA340, &qword_22B363FB0);
      sub_22B123284(v165, &qword_27D8BA340, &qword_22B363FB0);
      v164(v275, v169);
      v173 = &qword_27D8BABE0;
      v174 = &unk_22B366EF0;
      v175 = v170;
    }
  }

  sub_22B123284(v175, v173, v174);
  sub_22B30D1E8(*(v1 + 424), type metadata accessor for CDUsagePointRecords);
LABEL_40:
  v130 = *(v1 + 424);
  v132 = *(v1 + 400);
  v131 = *(v1 + 408);
  v134 = *(v1 + 384);
  v133 = *(v1 + 392);
  v135 = *(v1 + 376);
  v136 = *(v1 + 360);
  v138 = *(v1 + 328);
  v137 = *(v1 + 336);
  v139 = *(v1 + 320);
  v204 = *(v1 + 296);
  v208 = *(v1 + 288);
  v212 = *(v1 + 280);
  v216 = *(v1 + 272);
  v220 = *(v1 + 264);
  v224 = *(v1 + 256);
  v230 = *(v1 + 248);
  v236 = *(v1 + 240);
  v244 = *(v1 + 216);
  v251 = *(v1 + 192);
  v262 = *(v1 + 176);
  v273 = *(v1 + 160);

  v140 = *(v1 + 8);
LABEL_42:

  return v140();
}

uint64_t sub_22B2FEF00(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v35 = a6;
  v36 = a8;
  v34 = a5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD60, &unk_22B366F18);
  v32 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v31 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v31 - v20;
  v33 = &v31 - v20;
  v22 = sub_22B360B6C();
  (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
  (*(v14 + 16))(v17, a1, v13);
  v23 = (*(v14 + 80) + 88) & ~*(v14 + 80);
  v24 = swift_allocObject();
  *(v24 + 2) = 0;
  *(v24 + 3) = 0;
  *(v24 + 4) = a2;
  *(v24 + 5) = a3;
  v25 = v34;
  v26 = v35;
  *(v24 + 6) = a4;
  *(v24 + 7) = v25;
  *(v24 + 8) = v26;
  *(v24 + 9) = a7;
  *(v24 + 10) = v36;
  (*(v14 + 32))(&v24[v23], v17, v32);
  v27 = a2;

  v28 = a4;

  v29 = a7;

  sub_22B123DF0(0, 0, v33, &unk_22B366F30, v24);
}

uint64_t sub_22B2FF148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v42 = *MEMORY[0x277D85DE8];
  *(v8 + 368) = v45;
  *(v8 + 352) = v44;
  *(v8 + 336) = a7;
  *(v8 + 344) = a8;
  *(v8 + 320) = a5;
  *(v8 + 328) = a6;
  *(v8 + 312) = a4;
  v9 = sub_22B35FD2C();
  *(v8 + 376) = v9;
  v10 = *(v9 - 8);
  *(v8 + 384) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 392) = swift_task_alloc();
  *(v8 + 400) = swift_task_alloc();
  v12 = sub_22B35FC8C();
  *(v8 + 408) = v12;
  v13 = *(v12 - 8);
  *(v8 + 416) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 424) = swift_task_alloc();
  *(v8 + 432) = swift_task_alloc();
  v15 = sub_22B36052C();
  *(v8 + 440) = v15;
  v16 = *(v15 - 8);
  *(v8 + 448) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 456) = swift_task_alloc();
  *(v8 + 464) = swift_task_alloc();
  *(v8 + 472) = swift_task_alloc();
  *(v8 + 480) = swift_task_alloc();
  *(v8 + 488) = swift_task_alloc();
  v18 = sub_22B35FB9C();
  *(v8 + 496) = v18;
  v19 = *(v18 - 8);
  *(v8 + 504) = v19;
  v20 = *(v19 + 64) + 15;
  *(v8 + 512) = swift_task_alloc();
  v21 = sub_22B3606AC();
  *(v8 + 520) = v21;
  v22 = *(v21 - 8);
  *(v8 + 528) = v22;
  v23 = *(v22 + 64) + 15;
  *(v8 + 536) = swift_task_alloc();
  v24 = sub_22B36069C();
  *(v8 + 544) = v24;
  v25 = *(v24 - 8);
  *(v8 + 552) = v25;
  v26 = *(v25 + 64) + 15;
  *(v8 + 560) = swift_task_alloc();
  *(v8 + 568) = swift_task_alloc();
  v27 = sub_22B35FC0C();
  *(v8 + 576) = v27;
  v28 = *(v27 - 8);
  *(v8 + 584) = v28;
  v29 = *(v28 + 64) + 15;
  *(v8 + 592) = swift_task_alloc();
  *(v8 + 600) = swift_task_alloc();
  *(v8 + 608) = swift_task_alloc();
  *(v8 + 616) = swift_task_alloc();
  v30 = sub_22B35DE9C();
  *(v8 + 624) = v30;
  v31 = *(v30 - 8);
  *(v8 + 632) = v31;
  v32 = *(v31 + 64) + 15;
  *(v8 + 640) = swift_task_alloc();
  *(v8 + 648) = swift_task_alloc();
  *(v8 + 656) = swift_task_alloc();
  *(v8 + 664) = swift_task_alloc();
  *(v8 + 672) = swift_task_alloc();
  *(v8 + 680) = swift_task_alloc();
  *(v8 + 688) = swift_task_alloc();
  *(v8 + 696) = swift_task_alloc();
  v33 = sub_22B3603AC();
  *(v8 + 704) = v33;
  v34 = *(v33 - 8);
  *(v8 + 712) = v34;
  v35 = *(v34 + 64) + 15;
  *(v8 + 720) = swift_task_alloc();
  *(v8 + 728) = swift_task_alloc();
  *(v8 + 736) = swift_task_alloc();
  *(v8 + 744) = swift_task_alloc();
  *(v8 + 752) = swift_task_alloc();
  *(v8 + 760) = swift_task_alloc();
  *(v8 + 768) = swift_task_alloc();
  v36 = *(*(sub_22B3603FC() - 8) + 64) + 15;
  *(v8 + 776) = swift_task_alloc();
  v37 = sub_22B35FD8C();
  *(v8 + 784) = v37;
  v38 = *(v37 - 8);
  *(v8 + 792) = v38;
  v39 = *(v38 + 64) + 15;
  *(v8 + 800) = swift_task_alloc();
  v40 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22B2FF6CC, 0, 0);
}

uint64_t sub_22B2FF6CC()
{
  v332 = v0;
  v1 = v0;
  v331 = *MEMORY[0x277D85DE8];
  sub_22B1CA368(*(v0 + 312), &v327);
  v2 = *(&v328 + 1);
  v3 = v328;
  v4 = v330;

  v324 = v0;
  if (v2 >> 60 == 15)
  {

LABEL_10:
    v24 = *(v0 + 368);
    *(v0 + 192) = MEMORY[0x277D84F90];
    *(v0 + 200) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD60, &unk_22B366F18);
    sub_22B360AEC();
    sub_22B11EDC0(v3, v2);
    goto LABEL_11;
  }

  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = *(v0 + 800);
  v6 = *(v1 + 784);
  v7 = *(v1 + 776);
  sub_22B1D825C(v3, v2);

  v329 = 0;
  v327 = 0u;
  v328 = 0u;
  sub_22B144B30(v3, v2);
  sub_22B3603EC();
  sub_22B306EB4(&qword_27D8BABF0, MEMORY[0x277D074E0]);
  sub_22B36041C();
  v323 = v3;
  v38 = *(v1 + 800);
  v39 = *(v1 + 768);
  v40 = *(v1 + 712);
  v41 = *(v1 + 704);
  v42 = *(v1 + 696);
  v43 = *(v1 + 688);
  v44 = *(v1 + 632);
  v45 = *(v1 + 624);
  sub_22B35FCBC();
  sub_22B36038C();
  v46 = v41;
  v47 = *(v40 + 8);
  v47(v39, v46);
  sub_22B35DD1C();
  sub_22B306EB4(&qword_27D8BA430, MEMORY[0x277CC9578]);
  v48 = sub_22B36078C();
  v49 = v43;
  v50 = *(v44 + 8);
  v50(v49, v45);
  v50(v42, v45);
  if (v48)
  {
    goto LABEL_28;
  }

  v51 = *(v1 + 800);
  v52 = *(v1 + 768);
  v53 = *(v1 + 704);
  v318 = v50;
  v54 = *(v1 + 696);
  v55 = *(v1 + 688);
  v56 = *(v1 + 624);
  sub_22B35FC5C();
  sub_22B36038C();
  v47(v52, v53);
  sub_22B35DD2C();
  LOBYTE(v51) = sub_22B36078C();
  v318(v55, v56);
  v318(v54, v56);
  if (v51)
  {
    goto LABEL_28;
  }

  v57 = *(v1 + 800);
  v58 = sub_22B35FC3C();
  v60 = v59;

  v61 = HIBYTE(v60) & 0xF;
  if ((v60 & 0x2000000000000000) == 0)
  {
    v61 = v58 & 0xFFFFFFFFFFFFLL;
  }

  if (!v61)
  {
    goto LABEL_28;
  }

  v62 = *(v1 + 800);
  v63 = sub_22B35FBCC();
  v65 = v64;

  v66 = HIBYTE(v65) & 0xF;
  if ((v65 & 0x2000000000000000) == 0)
  {
    v66 = v63 & 0xFFFFFFFFFFFFLL;
  }

  if (!v66)
  {
    goto LABEL_28;
  }

  v67 = *(v1 + 800);
  v68 = sub_22B35FD5C();
  v70 = v69;

  v71 = HIBYTE(v70) & 0xF;
  if ((v70 & 0x2000000000000000) == 0)
  {
    v71 = v68 & 0xFFFFFFFFFFFFLL;
  }

  if (!v71)
  {
LABEL_28:
    v100 = *(v1 + 800);
    v101 = *(v1 + 792);
    v102 = *(v1 + 784);
    v103 = *(v1 + 368);
    *(v1 + 224) = MEMORY[0x277D84F90];
    *(v1 + 232) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD60, &unk_22B366F18);
    sub_22B360AEC();
    sub_22B11EDC0(v323, v2);
    sub_22B11EDC0(v323, v2);
    (*(v101 + 8))(v100, v102);
    goto LABEL_11;
  }

  v72 = *(v324 + 800);
  v73 = *(v324 + 768);
  v315 = *(v324 + 704);
  v274 = *(v324 + 696);
  v285 = *(v324 + 624);
  v74 = *(v324 + 616);
  v75 = *(v324 + 584);
  v76 = *(v324 + 576);
  v289 = *(v324 + 568);
  v301 = *(v324 + 552);
  v305 = *(v324 + 544);
  v309 = *(v324 + 560);
  v287 = *(v324 + 536);
  v293 = *(v324 + 528);
  v277 = *(v324 + 520);
  *&v327 = 0;
  *(&v327 + 1) = 0xE000000000000000;
  sub_22B36116C();
  v77 = *(&v327 + 1);
  *(v324 + 160) = v327;
  *(v324 + 168) = v77;
  v78 = sub_22B35FCDC();
  MEMORY[0x23188E270](v78);

  MEMORY[0x23188E270](46, 0xE100000000000000);
  v79 = sub_22B35FBCC();
  MEMORY[0x23188E270](v79);

  MEMORY[0x23188E270](46, 0xE100000000000000);
  sub_22B35FC1C();
  sub_22B36122C();
  v282 = *(v75 + 8);
  v282(v74, v76);
  MEMORY[0x23188E270](46, 0xE100000000000000);
  v80 = sub_22B35FC3C();
  MEMORY[0x23188E270](v80);

  MEMORY[0x23188E270](46, 0xE100000000000000);
  v81 = sub_22B35FD5C();
  MEMORY[0x23188E270](v81);

  MEMORY[0x23188E270](46, 0xE100000000000000);
  sub_22B35FCBC();
  v82 = v274;
  sub_22B36038C();
  v47(v73, v315);
  sub_22B306EB4(&qword_28140B488, MEMORY[0x277CC9578]);
  v83 = sub_22B36131C();
  MEMORY[0x23188E270](v83);

  v318(v274, v285);
  MEMORY[0x23188E270](46, 0xE100000000000000);
  v1 = v324;
  sub_22B35FC5C();
  sub_22B36038C();
  v270 = v47;
  v47(v73, v315);
  v84 = sub_22B36131C();
  MEMORY[0x23188E270](v84);

  v318(v274, v285);
  v85 = sub_22B2F45C8(*(v1 + 160), *(v1 + 168));
  v87 = v86;
  sub_22B306EB4(&qword_27D8BAD68, MEMORY[0x277CC5540]);
  sub_22B36068C();
  sub_22B144B30(v85, v87);
  sub_22B307CD4(v85, v87);
  v272 = v85;
  v275 = v87;
  sub_22B12F174(v85, v87);
  sub_22B36067C();
  (*(v293 + 8))(v287, v277);
  (*(v301 + 16))(v309, v289, v305);
  sub_22B306EB4(&qword_27D8BAD70, MEMORY[0x277CC5290]);
  sub_22B360A0C();
  v88 = *(v324 + 184);
  v89 = *(v324 + 176);
  v90 = *(v89 + 16);
  v91 = MEMORY[0x277D84F90];
  if (v88 == v90)
  {
LABEL_26:
    v92 = *(v1 + 800);
    v93 = *(v1 + 608);
    (*(*(v1 + 552) + 8))(*(v1 + 568), *(v1 + 544));

    *(v1 + 248) = v91;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA0A0, &qword_22B362BD0);
    sub_22B30D340(&qword_27D8BAD78);
    v82 = sub_22B36073C();
    v287 = v94;

    sub_22B35FC1C();
    v95 = MEMORY[0x277D84F90];
    v325 = MEMORY[0x277D84F90];
    v326 = MEMORY[0x277D84F90];
    v96 = sub_22B35FCFC();
    v316 = *(v96 + 16);
    if (!v316)
    {

      v108 = MEMORY[0x277D84F90];
LABEL_42:
      *&v327 = v95;
      if (!*(v108 + 2))
      {
        goto LABEL_55;
      }

      if (qword_28140A0C8 == -1)
      {
LABEL_44:
        v116 = *(v1 + 488);
        v118 = *(v1 + 440);
        v117 = *(v1 + 448);
        v119 = __swift_project_value_buffer(v118, qword_28140BD10);
        swift_beginAccess();
        (*(v117 + 16))(v116, v119, v118);
        v120 = sub_22B36050C();
        v121 = sub_22B360D0C();
        if (os_log_type_enabled(v120, v121))
        {
          v122 = swift_slowAlloc();
          *v122 = 0;
          _os_log_impl(&dword_22B116000, v120, v121, "[Dropbox Bridge] Imports found. Adding to imported readings", v122, 2u);
          MEMORY[0x23188F650](v122, -1, -1);
        }

        v123 = *(v1 + 488);
        v125 = *(v1 + 440);
        v124 = *(v1 + 448);

        (*(v124 + 8))(v123, v125);
        v126 = objc_opt_self();
        v127 = sub_22B360A3C();
        *(v1 + 264) = 0;
        v128 = [v126 archivedDataWithRootObject:v127 requiringSecureCoding:0 error:v1 + 264];

        v129 = *(v1 + 264);
        v130 = *(v1 + 800);
        if (!v128)
        {
          v148 = *(v1 + 792);
          v319 = *(v1 + 784);
          v149 = *(v1 + 608);
          v150 = *(v1 + 576);
          v151 = v129;

          v152 = sub_22B35DB9C();

          swift_willThrow();
          sub_22B12F174(v272, v275);
          v153 = v323;
          sub_22B11EDC0(v323, v2);
          v282(v149, v150);
          (*(v148 + 8))(v130, v319);

          goto LABEL_69;
        }

        v311 = v82;
        v131 = *(v1 + 760);
        v132 = *(v1 + 752);
        v266 = *(v1 + 744);
        v133 = *(v1 + 704);
        v134 = *(v1 + 680);
        v279 = *(v1 + 672);
        v244 = v134;
        v246 = *(v1 + 664);
        v237 = *(v1 + 584);
        v240 = *(v1 + 576);
        v242 = *(v1 + 600);
        v135 = *(v1 + 432);
        v136 = *(v1 + 416);
        v225 = *(v1 + 400);
        v227 = *(v1 + 408);
        v230 = *(v1 + 384);
        v233 = *(v1 + 376);
        v262 = *(v1 + 344);
        v256 = *(v1 + 352);
        v259 = *(v1 + 336);
        v250 = *(v1 + 320);
        v137 = sub_22B35DCDC();
        v302 = v138;
        v306 = v137;

        v253 = sub_22B35FBCC();
        v294 = v139;
        v248 = sub_22B35FCDC();
        v290 = v140;
        sub_22B35FCBC();
        sub_22B36038C();
        v270(v131, v133);
        sub_22B35FC5C();
        sub_22B36038C();
        v270(v132, v133);
        sub_22B35FC9C();
        v235 = sub_22B35FC7C();
        (*(v136 + 8))(v135, v227);
        sub_22B35FD3C();
        v228 = sub_22B35FD1C();
        (*(v230 + 8))(v225, v233);
        (*(v237 + 104))(v242, *MEMORY[0x277D074B0], v240);
        v238 = sub_22B35FBFC();
        v282(v242, v240);
        sub_22B35FBAC();
        sub_22B36038C();
        v270(v266, v133);
        v141 = sub_22B35FD5C();
        v143 = v142;
        v144 = sub_22B35FC3C();
        v146 = v145;
        v267 = MEMORY[0x23188EEB0]();
        *(v1 + 280) = 0;
        v147 = swift_task_alloc();
        *(v147 + 16) = v250;
        *(v147 + 32) = v311;
        *(v147 + 40) = v287;
        *(v147 + 48) = v244;
        *(v147 + 56) = v279;
        *(v147 + 64) = v238;
        *(v147 + 72) = v256;
        *(v147 + 80) = v246;
        *(v147 + 88) = v306;
        *(v147 + 96) = v302;
        *(v147 + 104) = v248;
        *(v147 + 112) = v290;
        *(v147 + 120) = v235;
        *(v147 + 128) = v228;
        *(v147 + 136) = v259;
        *(v147 + 144) = v262;
        *(v147 + 152) = v141;
        *(v147 + 160) = v143;
        *(v147 + 168) = v144;
        *(v147 + 176) = v146;
        *(v147 + 184) = v253;
        *(v147 + 192) = v294;
        *(v147 + 200) = 0;
        *(v147 + 208) = v1 + 280;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA6A8, &qword_22B366F40);
        sub_22B360E7C();
        v82 = v311;
        v154 = *(v1 + 680);
        v155 = *(v1 + 672);
        v156 = *(v1 + 664);
        v157 = *(v1 + 624);

        objc_autoreleasePoolPop(v267);
        v158 = *(v1 + 272);
        v318(v156, v157);
        v318(v155, v157);
        v318(v154, v157);
        if (!v158)
        {
          sub_22B12F174(v306, v302);
          v95 = MEMORY[0x277D84F90];
          goto LABEL_53;
        }

        v155 = v158;
        MEMORY[0x23188E350]();
        v143 = v302;
        v158 = v306;
        if (*((v327 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v327 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_81;
        }

        while (1)
        {
          sub_22B360A9C();
          sub_22B12F174(v158, v143);

          v95 = v327;
LABEL_53:
          v159 = *(v1 + 360);
          swift_beginAccess();
          v160 = *(v159 + 16);
          v161 = __OFADD__(v160, 1);
          v162 = v160 + 1;
          if (!v161)
          {
            break;
          }

          __break(1u);
LABEL_81:
          sub_22B360A7C();
        }

        *(*(v1 + 360) + 16) = v162;
LABEL_55:
        v301 = *(v325 + 2);
        if (!v301)
        {

          goto LABEL_62;
        }

        v305 = v95;
        if (qword_28140A0C8 == -1)
        {
          goto LABEL_57;
        }

        goto LABEL_79;
      }

LABEL_77:
      swift_once();
      goto LABEL_44;
    }

    v278 = v2;
    v97 = 0;
    v98 = *(v1 + 504);
    v99 = *(v1 + 448);
    v310 = v96 + ((*(v98 + 80) + 32) & ~*(v98 + 80));
    while (v97 < *(v96 + 16))
    {
      v2 = v96;
      v104 = *(v1 + 608);
      v105 = *(v1 + 512);
      v106 = (*(v98 + 16))(v105, v310 + *(v98 + 72) * v97, *(v1 + 496));
      v107 = MEMORY[0x23188EEB0](v106);
      sub_22B301890(v105, v104, &v326, &v325, (v1 + 256));
      (*(v98 + 8))(*(v1 + 512), *(v1 + 496));
      objc_autoreleasePoolPop(v107);
      v96 = v2;
      if (v316 == ++v97)
      {

        v108 = v326;
        v95 = MEMORY[0x277D84F90];
        v2 = v278;
        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  if ((v88 & 0x8000000000000000) == 0)
  {
    while (v88 < *(v89 + 16))
    {
      v109 = *(v89 + 32 + v88);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
      v110 = swift_allocObject();
      *(v110 + 16) = xmmword_22B3634B0;
      *(v110 + 56) = MEMORY[0x277D84B78];
      *(v110 + 64) = MEMORY[0x277D84BC0];
      *(v110 + 32) = v109;
      v111 = sub_22B36087C();
      v82 = v112;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v91 = sub_22B32CD20(0, *(v91 + 2) + 1, 1, v91);
      }

      v114 = *(v91 + 2);
      v113 = *(v91 + 3);
      if (v114 >= v113 >> 1)
      {
        v91 = sub_22B32CD20((v113 > 1), v114 + 1, 1, v91);
      }

      ++v88;
      *(v91 + 2) = v114 + 1;
      v115 = &v91[16 * v114];
      *(v115 + 4) = v111;
      *(v115 + 5) = v82;
      v1 = v324;
      if (v90 == v88)
      {
        goto LABEL_26;
      }
    }

    goto LABEL_76;
  }

  __break(1u);
LABEL_79:
  swift_once();
LABEL_57:
  v163 = *(v1 + 480);
  v165 = *(v1 + 440);
  v164 = *(v1 + 448);
  v166 = __swift_project_value_buffer(v165, qword_28140BD10);
  swift_beginAccess();
  (*(v164 + 16))(v163, v166, v165);
  v167 = sub_22B36050C();
  v168 = sub_22B360D0C();
  if (os_log_type_enabled(v167, v168))
  {
    v169 = swift_slowAlloc();
    *v169 = 0;
    _os_log_impl(&dword_22B116000, v167, v168, "[Dropbox Bridge] Exports found. Adding to exported readings", v169, 2u);
    MEMORY[0x23188F650](v169, -1, -1);
  }

  v170 = *(v1 + 480);
  v172 = *(v1 + 440);
  v171 = *(v1 + 448);

  (*(v171 + 8))(v170, v172);
  v173 = objc_opt_self();
  v174 = sub_22B360A3C();
  *(v1 + 288) = 0;
  v175 = [v173 archivedDataWithRootObject:v174 requiringSecureCoding:0 error:v1 + 288];

  v176 = *(v1 + 288);
  v177 = *(v1 + 800);
  if (v175)
  {
    v260 = v1 + 304;
    v178 = *(v1 + 736);
    v179 = *(v1 + 728);
    v180 = *(v1 + 704);
    v181 = *(v1 + 656);
    v239 = v181;
    v241 = *(v1 + 720);
    v264 = *(v1 + 648);
    v243 = *(v1 + 640);
    v231 = *(v1 + 584);
    v234 = *(v1 + 576);
    v236 = *(v1 + 592);
    v182 = *(v1 + 424);
    v221 = *(v1 + 416);
    v222 = *(v1 + 408);
    v183 = *(v324 + 392);
    v224 = *(v324 + 384);
    v226 = *(v324 + 376);
    v251 = *(v324 + 352);
    v257 = *(v324 + 344);
    v254 = *(v324 + 336);
    v247 = *(v324 + 320);
    v295 = sub_22B35DCDC();
    v291 = v184;

    v249 = sub_22B35FBCC();
    v280 = v185;
    v245 = sub_22B35FCDC();
    v268 = v186;
    sub_22B35FCBC();
    sub_22B36038C();
    v312 = v82;
    v270(v178, v180);
    sub_22B35FC5C();
    sub_22B36038C();
    v270(v179, v180);
    sub_22B35FC9C();
    v229 = sub_22B35FC7C();
    (*(v221 + 8))(v182, v222);
    sub_22B35FD3C();
    v223 = sub_22B35FD1C();
    v187 = v183;
    v1 = v324;
    (*(v224 + 8))(v187, v226);
    (*(v231 + 104))(v236, *MEMORY[0x277D074A8], v234);
    v232 = sub_22B35FBFC();
    v282(v236, v234);
    sub_22B35FBAC();
    sub_22B36038C();
    v270(v241, v180);
    v188 = sub_22B35FD5C();
    v190 = v189;
    v191 = sub_22B35FC3C();
    v193 = v192;
    v298 = MEMORY[0x23188EEB0]();
    *(v324 + 304) = 0;
    v194 = swift_task_alloc();
    *(v194 + 16) = v247;
    *(v194 + 32) = v312;
    *(v194 + 40) = v287;
    *(v194 + 48) = v239;
    *(v194 + 56) = v264;
    *(v194 + 64) = v232;
    *(v194 + 72) = v251;
    *(v194 + 80) = v243;
    *(v194 + 88) = v295;
    *(v194 + 96) = v291;
    *(v194 + 104) = v245;
    *(v194 + 112) = v268;
    *(v194 + 120) = v229;
    *(v194 + 128) = v223;
    *(v194 + 136) = v254;
    *(v194 + 144) = v257;
    *(v194 + 152) = v188;
    *(v194 + 160) = v190;
    *(v194 + 168) = v191;
    *(v194 + 176) = v193;
    *(v194 + 184) = v249;
    *(v194 + 192) = v280;
    *(v194 + 200) = 0;
    *(v194 + 208) = v260;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA6A8, &qword_22B366F40);
    sub_22B360E7C();
    v213 = *(v324 + 656);
    v214 = *(v324 + 648);
    v215 = *(v324 + 640);
    v216 = *(v324 + 624);

    objc_autoreleasePoolPop(v298);
    v217 = *(v324 + 296);
    v318(v215, v216);
    v318(v214, v216);
    v318(v213, v216);
    if (v217)
    {
      v218 = v217;
      MEMORY[0x23188E350]();
      v195 = v301;
      v219 = v295;
      if (*((v327 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v327 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v220 = *((v327 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22B360A7C();
        v219 = v295;
      }

      sub_22B360A9C();
      sub_22B12F174(v219, v291);

      v95 = v327;
      goto LABEL_63;
    }

    sub_22B12F174(v295, v291);
    v95 = v305;
LABEL_62:
    v195 = v301;
LABEL_63:
    v307 = v95;
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v196 = *(v1 + 472);
    v197 = *(v1 + 440);
    v198 = *(v1 + 448);
    v199 = __swift_project_value_buffer(v197, qword_28140BD10);
    swift_beginAccess();
    (*(v198 + 16))(v196, v199, v197);
    v200 = sub_22B36050C();
    v201 = sub_22B360D0C();
    if (os_log_type_enabled(v200, v201))
    {
      v202 = swift_slowAlloc();
      *v202 = 67109120;
      *(v202 + 4) = v195 != 0;
      _os_log_impl(&dword_22B116000, v200, v201, "[Dropbox Bridge] continuation resume with hasExportedEnergy %{BOOL}d", v202, 8u);
      MEMORY[0x23188F650](v202, -1, -1);
    }

    v1 = v324;
    v320 = *(v324 + 800);
    v203 = v195 != 0;
    v204 = *(v324 + 792);
    v313 = *(v324 + 784);
    v299 = *(v324 + 576);
    v303 = *(v324 + 608);
    v205 = *(v324 + 472);
    v207 = *(v324 + 440);
    v206 = *(v324 + 448);
    v208 = *(v324 + 368);

    (*(v206 + 8))(v205, v207);
    *(v324 + 208) = v307;
    *(v324 + 216) = v203;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD60, &unk_22B366F18);
    sub_22B360AEC();
    sub_22B12F174(v272, v275);
    sub_22B11EDC0(v323, v2);
    sub_22B11EDC0(v323, v2);
    v282(v303, v299);
    (*(v204 + 8))(v320, v313);

    goto LABEL_11;
  }

  v209 = *(v1 + 792);
  v321 = *(v1 + 784);
  v210 = *(v1 + 608);
  v211 = *(v1 + 576);
  v212 = v176;

  v152 = sub_22B35DB9C();

  swift_willThrow();
  sub_22B12F174(v272, v275);
  v153 = v323;
  sub_22B11EDC0(v323, v2);
  v282(v210, v211);
  (*(v209 + 8))(v177, v321);

LABEL_69:

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v8 = *(v1 + 464);
  v9 = *(v1 + 440);
  v10 = *(v1 + 448);
  v11 = __swift_project_value_buffer(v9, qword_28140BD10);
  swift_beginAccess();
  (*(v10 + 16))(v8, v11, v9);
  v12 = v152;
  v13 = sub_22B36050C();
  v14 = sub_22B360D1C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    v17 = v152;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v18;
    *v16 = v18;
    _os_log_impl(&dword_22B116000, v13, v14, "[Dropbox Bridge] Failed handle IntervalReading payload %@", v15, 0xCu);
    sub_22B123284(v16, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v16, -1, -1);
    MEMORY[0x23188F650](v15, -1, -1);
  }

  v19 = *(v1 + 464);
  v20 = *(v1 + 440);
  v21 = *(v1 + 448);
  v22 = *(v1 + 368);

  (*(v21 + 8))(v19, v20);
  *(v1 + 240) = v152;
  v23 = v152;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD60, &unk_22B366F18);
  sub_22B360ADC();
  sub_22B11EDC0(v153, v2);

LABEL_11:
  v25 = *(v1 + 800);
  v26 = *(v1 + 776);
  v27 = *(v324 + 768);
  v28 = *(v324 + 760);
  v29 = *(v324 + 752);
  v30 = *(v324 + 744);
  v31 = *(v324 + 736);
  v32 = *(v324 + 728);
  v33 = *(v324 + 720);
  v34 = *(v324 + 696);
  v252 = *(v324 + 688);
  v255 = *(v324 + 680);
  v258 = *(v324 + 672);
  v261 = *(v324 + 664);
  v263 = *(v324 + 656);
  v265 = *(v324 + 648);
  v269 = *(v324 + 640);
  v271 = *(v324 + 616);
  v273 = *(v324 + 608);
  v276 = *(v324 + 600);
  v281 = *(v324 + 592);
  v283 = *(v324 + 568);
  v284 = *(v324 + 560);
  v286 = *(v324 + 536);
  v288 = *(v324 + 512);
  v292 = *(v324 + 488);
  v296 = *(v324 + 480);
  v297 = *(v324 + 472);
  v300 = *(v324 + 464);
  v304 = *(v324 + 456);
  v308 = *(v324 + 432);
  v314 = *(v324 + 424);
  v317 = *(v324 + 400);
  v322 = *(v324 + 392);

  v35 = *(v324 + 8);
  v36 = *MEMORY[0x277D85DE8];

  return v35();
}

uint64_t sub_22B301890(uint64_t a1, uint64_t a2, char **a3, char **a4, void *a5)
{
  v117 = a5;
  v114 = a4;
  v113 = a3;
  v120 = a2;
  v116 = sub_22B36052C();
  v115 = *(v116 - 8);
  v7 = *(v115 + 64);
  MEMORY[0x28223BE20](v116);
  v112 = v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v111 = v110 - v10;
  v119 = sub_22B35FC0C();
  v118 = *(v119 - 8);
  v11 = *(v118 + 64);
  MEMORY[0x28223BE20](v119);
  v13 = v110 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22B3603AC();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v110 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BADA8, &qword_22B366F70);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v130 = v110 - v20;
  v139 = sub_22B35FE7C();
  v21 = *(v139 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v139);
  v138 = v110 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v137 = v110 - v25;
  v136 = sub_22B35FB5C();
  v26 = *(v136 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v136);
  v29 = v110 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_22B35FEBC();
  v121 = *(v123 - 8);
  v30 = *(v121 + 64);
  MEMORY[0x28223BE20](v123);
  v124 = v110 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B35FEAC();
  v32 = sub_22B35FB6C();
  v33 = *(v32 + 16);
  v122 = v5;
  if (v33)
  {
    v110[1] = v17;
    v110[2] = a1;
    v35 = *(v26 + 16);
    v34 = v26 + 16;
    v135 = v35;
    v36 = (*(v34 + 64) + 32) & ~*(v34 + 64);
    v110[0] = v32;
    v37 = v32 + v36;
    v38 = *(v34 + 56);
    v133 = (v34 - 8);
    v134 = v38;
    v131 = (v21 + 32);
    v132 = (v21 + 48);
    v128 = v21;
    v125 = v21 + 8;
    v126 = (v21 + 16);
    v39 = MEMORY[0x277D84F90];
    v40 = v130;
    v127 = v34;
    v129 = v13;
    do
    {
      v41 = v136;
      v135(v29, v37, v136);
      sub_22B35FB4C();
      (*v133)(v29, v41);
      sub_22B35FE6C();
      v42 = v139;
      if ((*v132)(v40, 1, v139) == 1)
      {
        sub_22B123284(v40, &qword_27D8BADA8, &qword_22B366F70);
      }

      else
      {
        v43 = *v131;
        v44 = v137;
        (*v131)(v137, v40, v42);
        (*v126)(v138, v44, v42);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v39 = sub_22B32DA50(0, *(v39 + 2) + 1, 1, v39);
        }

        v46 = *(v39 + 2);
        v45 = *(v39 + 3);
        if (v46 >= v45 >> 1)
        {
          v39 = sub_22B32DA50(v45 > 1, v46 + 1, 1, v39);
        }

        v47 = v128;
        v48 = v139;
        (*(v128 + 8))(v137, v139);
        *(v39 + 2) = v46 + 1;
        v43(&v39[((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v46], v138, v48);
        v13 = v129;
        v40 = v130;
      }

      v37 += v134;
      --v33;
    }

    while (v33);
  }

  sub_22B35FE9C();
  sub_22B35FB2C();
  sub_22B35FE5C();
  sub_22B35FB0C();
  sub_22B35FE3C();
  sub_22B35FAEC();
  sub_22B35FDFC();
  sub_22B35FE1C();
  sub_22B35FDDC();
  v49 = v118;
  v50 = *(v118 + 104);
  v51 = v119;
  v50(v13, *MEMORY[0x277D074A0], v119);
  sub_22B306EB4(&unk_27D8BA090, MEMORY[0x277D074B8]);
  sub_22B360A1C();
  sub_22B360A1C();
  v52 = *(v49 + 8);
  v52(v13, v51);
  if (v140 == v141)
  {
    sub_22B35FB2C();
    v53 = v123;
    if (v54 >= 0.0)
    {
      v79 = v116;
      v80 = v115;
      v57 = v124;
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v81 = __swift_project_value_buffer(v79, qword_28140BD10);
      swift_beginAccess();
      v82 = v111;
      (*(v80 + 16))(v111, v81, v79);
      v83 = sub_22B36050C();
      v84 = sub_22B360D0C();
      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        *v85 = 0;
        _os_log_impl(&dword_22B116000, v83, v84, "[Dropbox Bridge] IntervalReading Record cvalue is positive but direction is net. Converting to delivered type", v85, 2u);
        MEMORY[0x23188F650](v85, -1, -1);
      }

      (*(v80 + 8))(v82, v79);
      sub_22B306EB4(&qword_27D8BAD50, MEMORY[0x277D074F8]);
      v86 = v122;
      v87 = sub_22B36042C();
      v66 = v86;
      if (!v86)
      {
        v69 = v88;
        v70 = v87;
        v89 = v113;
        v90 = *v113;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v89 = v90;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v90 = sub_22B32D0BC(0, *(v90 + 2) + 1, 1, v90);
          *v113 = v90;
        }

        v75 = *(v90 + 2);
        v92 = *(v90 + 3);
        v76 = v75 + 1;
        if (v75 >= v92 >> 1)
        {
          v108 = sub_22B32D0BC((v92 > 1), v75 + 1, 1, v90);
          *v113 = v108;
        }

        result = (*(v121 + 8))(v57, v53);
        v78 = &v141;
        goto LABEL_36;
      }
    }

    else
    {
      v55 = v116;
      v56 = v115;
      v57 = v124;
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v58 = __swift_project_value_buffer(v55, qword_28140BD10);
      swift_beginAccess();
      v59 = v112;
      (*(v56 + 16))(v112, v58, v55);
      v60 = sub_22B36050C();
      v61 = sub_22B360D0C();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&dword_22B116000, v60, v61, "[Dropbox Bridge] IntervalReading Record cvalue is negative but direction is net. Converting to reverse type", v62, 2u);
        MEMORY[0x23188F650](v62, -1, -1);
      }

      (*(v56 + 8))(v59, v55);
      sub_22B306EB4(&qword_27D8BAD50, MEMORY[0x277D074F8]);
      v63 = v122;
      v64 = sub_22B36042C();
      v66 = v63;
      if (!v63)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_39;
  }

  v50(v13, *MEMORY[0x277D074A8], v51);
  sub_22B360A1C();
  sub_22B360A1C();
  v52(v13, v51);
  v67 = v123;
  if (v140 == v141)
  {
    sub_22B306EB4(&qword_27D8BAD50, MEMORY[0x277D074F8]);
    v57 = v124;
    v68 = v122;
    v64 = sub_22B36042C();
    v53 = v67;
    v66 = v68;
    if (!v68)
    {
LABEL_21:
      v69 = v65;
      v70 = v64;
      v71 = v114;
      v72 = *v114;
      v73 = swift_isUniquelyReferenced_nonNull_native();
      *v71 = v72;
      if ((v73 & 1) == 0)
      {
        v72 = sub_22B32D0BC(0, *(v72 + 2) + 1, 1, v72);
        *v114 = v72;
      }

      v75 = *(v72 + 2);
      v74 = *(v72 + 3);
      v76 = v75 + 1;
      if (v75 >= v74 >> 1)
      {
        v107 = sub_22B32D0BC((v74 > 1), v75 + 1, 1, v72);
        *v114 = v107;
      }

      result = (*(v121 + 8))(v57, v53);
      v78 = &v142;
LABEL_36:
      v93 = **(v78 - 32);
      *(v93 + 16) = v76;
      v94 = v93 + 16 * v75;
      *(v94 + 32) = v70;
      *(v94 + 40) = v69;
      return result;
    }

    goto LABEL_39;
  }

  v50(v13, *MEMORY[0x277D074B0], v51);
  sub_22B360A1C();
  sub_22B360A1C();
  v52(v13, v51);
  if (v140 != v141)
  {
    return (*(v121 + 8))(v124, v123);
  }

  sub_22B306EB4(&qword_27D8BAD50, MEMORY[0x277D074F8]);
  v53 = v123;
  v57 = v124;
  v95 = v122;
  v96 = sub_22B36042C();
  v66 = v95;
  if (v95)
  {
LABEL_39:
    result = (*(v121 + 8))(v57, v53);
    *v117 = v66;
    return result;
  }

  v98 = v96;
  v99 = v97;
  v100 = v113;
  v101 = *v113;
  v102 = swift_isUniquelyReferenced_nonNull_native();
  *v100 = v101;
  if ((v102 & 1) == 0)
  {
    v101 = sub_22B32D0BC(0, *(v101 + 2) + 1, 1, v101);
    *v113 = v101;
  }

  v104 = *(v101 + 2);
  v103 = *(v101 + 3);
  if (v104 >= v103 >> 1)
  {
    v109 = sub_22B32D0BC((v103 > 1), v104 + 1, 1, v101);
    *v113 = v109;
  }

  result = (*(v121 + 8))(v57, v53);
  v105 = *v113;
  *(v105 + 2) = v104 + 1;
  v106 = &v105[16 * v104];
  *(v106 + 4) = v98;
  *(v106 + 5) = v99;
  return result;
}

id sub_22B302704(void *a1)
{
  sub_22B207390(9);

  return [a1 refreshAllObjects];
}

void sub_22B302768(uint64_t a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, void *a7@<X7>, void **a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, unsigned __int8 a24, void **a25)
{
  v180 = a5;
  v177 = a1;
  v171 = a8;
  v190[3] = *MEMORY[0x277D85DE8];
  v176 = sub_22B35DE9C();
  v170 = *(v176 - 8);
  v30 = *(v170 + 64);
  MEMORY[0x28223BE20](v176);
  v169 = v156 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = sub_22B36052C();
  v167 = *(v166 - 8);
  v32 = *(v167 + 64);
  MEMORY[0x28223BE20](v166);
  v163 = v156 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v162 = v156 - v35;
  MEMORY[0x28223BE20](v36);
  v164 = v156 - v37;
  MEMORY[0x28223BE20](v38);
  v165 = v156 - v39;
  v40 = type metadata accessor for CDIntervalBlocks();
  v41 = *(v40 - 1);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  v168 = v156 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD80, &qword_22B366F48);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44 - 8);
  v172 = v156 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD88, &qword_22B366F50);
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47 - 8);
  v173 = v156 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v52 = v156 - v51;
  v54 = MEMORY[0x28223BE20](v53);
  v56 = v156 - v55;
  v178 = MEMORY[0x23188EEB0](v54);
  v174 = v41;
  v57 = *(v41 + 56);
  v175 = v40;
  v57(v52, 1, 1, v40);
  v190[0] = 0;
  v181 = a2;
  v182 = a3;
  v183 = a6;
  v184 = a4;
  v58 = v179;
  v185 = v180;
  v186 = a7;
  v187 = v52;
  v188 = v190;
  sub_22B360E7C();
  if (v58)
  {

    sub_22B123284(v52, &qword_27D8BAD88, &qword_22B366F50);
    objc_autoreleasePoolPop(v178);
LABEL_36:
    v155 = *MEMORY[0x277D85DE8];
    return;
  }

  v159 = a7;
  v156[0] = a4;
  v156[1] = a6;
  v157 = a2;
  v158 = a3;
  v161 = 0;
  v160 = a25;
  v156[3] = a11;
  v156[2] = a10;
  v179 = a9;
  v59 = v172;
  sub_22B170BE0(v52, v172, &qword_27D8BAD88, &qword_22B366F50);
  v60 = v190[0];
  sub_22B123284(v52, &qword_27D8BAD88, &qword_22B366F50);
  objc_autoreleasePoolPop(v178);
  sub_22B30D114(v59, v56);
  v61 = v173;
  sub_22B170BE0(v56, v173, &qword_27D8BAD88, &qword_22B366F50);
  v62 = v175;
  v63 = v56;
  if ((*(v174 + 48))(v61, 1, v175) == 1)
  {
    v178 = v60;
    sub_22B123284(v61, &qword_27D8BAD88, &qword_22B366F50);
LABEL_5:
    v64 = v177;
    goto LABEL_15;
  }

  v65 = v168;
  sub_22B30D184(v61, v168);
  v66 = v60;
  v64 = v177;
  if (v60)
  {
    v67 = v62[11];
    sub_22B306EB4(&qword_28140B490, MEMORY[0x277CC9578]);
    v68 = v60;
    v69 = v176;
    v70 = sub_22B36074C();
    v175 = v68;
    if (v70)
    {
      v190[0] = 0;
      v71 = [v159 existingObjectWithID:v68 error:v190];
      v72 = v190[0];
      if (!v71)
      {
        v178 = v60;
        v121 = v190[0];
        v122 = sub_22B35DB9C();

        swift_willThrow();
        if (qword_28140A0C8 != -1)
        {
          swift_once();
        }

        v123 = v166;
        v124 = __swift_project_value_buffer(v166, qword_28140BD10);
        swift_beginAccess();
        v125 = v167;
        v126 = v163;
        (*(v167 + 16))(v163, v124, v123);
        v127 = v175;
        v128 = sub_22B36050C();
        v129 = sub_22B360D0C();

        if (os_log_type_enabled(v128, v129))
        {
          v130 = swift_slowAlloc();
          v131 = swift_slowAlloc();
          *v130 = 138412290;
          *(v130 + 4) = v127;
          *v131 = v178;
          v132 = v127;
          _os_log_impl(&dword_22B116000, v128, v129, "[IntervalBlocks] No object to update for %@", v130, 0xCu);
          sub_22B123284(v131, &unk_27D8BAA90, &unk_22B362BC0);
          v133 = v131;
          v125 = v167;
          MEMORY[0x23188F650](v133, -1, -1);
          v134 = v130;
          v126 = v163;
          MEMORY[0x23188F650](v134, -1, -1);
        }

        (*(v125 + 8))(v126, v123);
        sub_22B30D1E8(v65, type metadata accessor for CDIntervalBlocks);
        v161 = 0;
        goto LABEL_5;
      }

      v73 = v71;
      sub_22B35F4EC();
      v74 = swift_dynamicCastClass();
      v75 = qword_28140A0C8;
      v76 = v72;
      if (!v74)
      {
        v178 = v66;
        if (v75 != -1)
        {
          swift_once();
        }

        v135 = v166;
        v136 = __swift_project_value_buffer(v166, qword_28140BD10);
        swift_beginAccess();
        v137 = v167;
        v138 = v162;
        (*(v167 + 16))(v162, v136, v135);
        v139 = v175;
        v140 = sub_22B36050C();
        v141 = sub_22B360D0C();

        if (os_log_type_enabled(v140, v141))
        {
          v142 = swift_slowAlloc();
          v143 = swift_slowAlloc();
          *v142 = 138412290;
          *(v142 + 4) = v139;
          *v143 = v178;
          v144 = v139;
          _os_log_impl(&dword_22B116000, v140, v141, "[IntervalBlocks] No object to update for %@", v142, 0xCu);
          sub_22B123284(v143, &unk_27D8BAA90, &unk_22B362BC0);
          v145 = v143;
          v137 = v167;
          MEMORY[0x23188F650](v145, -1, -1);
          v146 = v142;
          v138 = v162;
          MEMORY[0x23188F650](v146, -1, -1);
        }

        (*(v137 + 8))(v138, v135);
        sub_22B30D1E8(v65, type metadata accessor for CDIntervalBlocks);
        goto LABEL_5;
      }

      v77 = v73;
      if (v75 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v166, qword_28140BD10);
      swift_beginAccess();
      v78 = v164;
      (*(v167 + 16))();
      v79 = v77;
      v80 = sub_22B36050C();
      v81 = sub_22B360D0C();

      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v83 = v63;
        v84 = swift_slowAlloc();
        *v82 = 138412290;
        *(v82 + 4) = v79;
        *v84 = v73;
        _os_log_impl(&dword_22B116000, v80, v81, "[IntervalBlocks] Got back object to update %@", v82, 0xCu);
        sub_22B123284(v84, &unk_27D8BAA90, &unk_22B362BC0);
        v85 = v84;
        v63 = v83;
        v78 = v164;
        MEMORY[0x23188F650](v85, -1, -1);
        v86 = v82;
        v65 = v168;
        MEMORY[0x23188F650](v86, -1, -1);
      }

      else
      {

        v80 = v79;
      }

      v147 = v170;
      v148 = v169;

      (*(v167 + 8))(v78, v166);
      v149 = sub_22B35DCCC();
      [v74 setReadings_];

      v150 = sub_22B35DDDC();
      [v74 setSourceTime_];

      [v74 setPreprocessed_];
      sub_22B35DE8C();
      v151 = sub_22B35DDDC();
      (*(v147 + 8))(v148, v69);
      [v74 setCreationDate_];
      v152 = v175;
    }

    else
    {
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v110 = v166;
      v111 = __swift_project_value_buffer(v166, qword_28140BD10);
      swift_beginAccess();
      v112 = v167;
      v113 = v165;
      (*(v167 + 16))(v165, v111, v110);
      v114 = v158;

      v115 = sub_22B36050C();
      v116 = sub_22B360D2C();

      if (os_log_type_enabled(v115, v116))
      {
        v117 = swift_slowAlloc();
        v118 = swift_slowAlloc();
        v189 = v118;
        *v117 = 136315138;
        *(v117 + 4) = sub_22B1A7B20(v157, v114, &v189);
        _os_log_impl(&dword_22B116000, v115, v116, "[IntervalBlocks] Newer record exists for %s. Skip insert", v117, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v118);
        MEMORY[0x23188F650](v118, -1, -1);
        MEMORY[0x23188F650](v117, -1, -1);
        v119 = v175;

        (*(v112 + 8))(v165, v110);
      }

      else
      {
        v120 = v175;

        (*(v112 + 8))(v113, v110);
      }
    }

    sub_22B30D1E8(v65, type metadata accessor for CDIntervalBlocks);
    sub_22B123284(v63, &qword_27D8BAD88, &qword_22B366F50);
    v109 = v171;
    v107 = v160;
    goto LABEL_35;
  }

  v178 = 0;
  sub_22B30D1E8(v65, type metadata accessor for CDIntervalBlocks);
LABEL_15:
  v177 = v63;
  sub_22B35F4EC();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v88 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v89 = objc_allocWithZone(ObjCClassFromMetadata);
  v90 = v159;
  v91 = [v89 initWithContext_];

  v92 = *(v64 + 112);
  if (v92)
  {
    LODWORD(v175) = a24;
    v174 = a23;
    v173 = a22;
    v172 = a21;
    v168 = a20;
    v167 = a19;
    v166 = a18;
    v93 = v91;
    [v90 assignObject:v93 toPersistentStore:v92];
    v94 = sub_22B36081C();
    [v93 setRecordID_];

    v95 = sub_22B36081C();
    [v93 setMeterID_];

    v96 = sub_22B35DDDC();
    [v93 setStart_];

    v97 = sub_22B35DDDC();
    [v93 setEnd_];

    sub_22B35F4DC();
    sub_22B35F49C();
    sub_22B35F4BC();
    v98 = sub_22B35DDDC();
    [v93 setSourceTime_];

    v99 = sub_22B36081C();
    [v93 setZoneName_];

    v100 = sub_22B36081C();
    [v93 setUtilityID_];

    v101 = sub_22B36081C();
    [v93 setSubscriptionID_];

    v102 = sub_22B36081C();
    [v93 setUsagePointID_];

    v103 = v169;
    sub_22B35DE8C();
    v104 = sub_22B35DDDC();
    (*(v170 + 8))(v103, v176);
    [v93 setCreationDate_];

    v105 = sub_22B35DCCC();
    [v93 setReadings_];

    [v93 setPreprocessed_];
    v106 = [v93 objectID];

    sub_22B123284(v177, &qword_27D8BAD88, &qword_22B366F50);
    v107 = v160;
    v108 = *v160;
    *v160 = v106;

    v109 = v171;
LABEL_35:
    v153 = *v107;
    *v109 = *v107;
    v154 = v153;
    goto LABEL_36;
  }

  __break(1u);
}

void sub_22B303940(void *a1, uint64_t a2, _DWORD *a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v141 = a2;
  v142 = a4;
  v150 = sub_22B36052C();
  v10 = *(v150 - 8);
  v11 = v10[8];
  MEMORY[0x28223BE20](v150 - 8);
  v134 = &v128 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v131 = &v128 - v14;
  MEMORY[0x28223BE20](v15);
  v132 = &v128 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v128 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v135 = &v128 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v133 = &v128 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = &v128 - v26;
  v28 = sub_22B35DE9C();
  v148 = *(v28 - 8);
  v149 = v28;
  v29 = *(v148 + 64);
  MEMORY[0x28223BE20](v28);
  v130 = &v128 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v152 = &v128 - v32;
  MEMORY[0x28223BE20](v33);
  v129 = &v128 - v34;
  *&v36 = MEMORY[0x28223BE20](v35).n128_u64[0];
  v38 = &v128 - v37;
  [a1 refreshAllObjects];
  v151 = sub_22B35F4EC();
  v39 = sub_22B35F47C();
  [v39 setResultType_];
  v153 = v39;
  [v39 setFetchBatchSize_];
  v156 = MEMORY[0x277D84F90];
  v145 = a5;
  v146 = a3;
  v144 = a6;
  if (a3 && a5)
  {
    sub_22B128014(0, &qword_281409330, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_22B3634C0;
    v41 = MEMORY[0x277D837D0];
    *(v40 + 56) = MEMORY[0x277D837D0];
    v42 = sub_22B1280E4();
    v43 = v142;
    v45 = v145;
    v44 = v146;
    *(v40 + 32) = v141;
    *(v40 + 40) = v44;
    *(v40 + 96) = v41;
    *(v40 + 104) = v42;
    *(v40 + 64) = v42;
    *(v40 + 72) = v43;
    *(v40 + 80) = v45;

    v46 = sub_22B360CCC();
    MEMORY[0x23188E350]();
    if (*((v156 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v156 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v127 = *((v156 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22B360A7C();
    }

    sub_22B360A9C();

    a6 = v144;
  }

  sub_22B170BE0(a6, v27, &qword_27D8BA340, &qword_22B363FB0);
  v47 = v148;
  v48 = v149;
  v49 = *(v148 + 48);
  v137 = v148 + 48;
  v136 = v49;
  if (v49(v27, 1, v149) == 1)
  {
    sub_22B123284(v27, &qword_27D8BA340, &qword_22B363FB0);
  }

  else
  {
    v143 = v10;
    (*(v47 + 32))(v38, v27, v48);
    sub_22B128014(0, &qword_281409330, 0x277CCAC30);
    v50 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_22B3634B0;
    v52 = sub_22B35DDDC();
    *(v51 + 56) = sub_22B128014(0, &qword_281408558, 0x277CBEAA8);
    *(v51 + 64) = sub_22B176FAC(&qword_281408550, &qword_281408558, 0x277CBEAA8);
    *(v51 + 32) = v52;
    v53 = sub_22B360CCC();
    MEMORY[0x23188E350]();
    if (*((v156 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v156 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v126 = *((v156 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22B360A7C();
    }

    sub_22B360A9C();

    (*(v50 + 8))(v38, v149);
    v10 = v143;
  }

  v54 = v152;
  v55 = objc_allocWithZone(MEMORY[0x277CCA920]);
  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  v56 = sub_22B360A3C();

  v57 = [v55 initWithType:1 subpredicates:v56];

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v58 = v150;
  v59 = __swift_project_value_buffer(v150, qword_28140BD10);
  swift_beginAccess();
  v60 = v10[2];
  v139 = v10 + 2;
  v140 = v59;
  v138 = v60;
  v60(v19, v59, v58);
  v61 = v57;
  v62 = sub_22B36050C();
  v63 = sub_22B360D2C();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *v64 = 138412290;
    *(v64 + 4) = v61;
    *v65 = v61;
    v66 = v61;
    _os_log_impl(&dword_22B116000, v62, v63, "[IntervalBlocks] Deleting records using predicate %@", v64, 0xCu);
    sub_22B123284(v65, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v65, -1, -1);
    v67 = v64;
    v58 = v150;
    MEMORY[0x23188F650](v67, -1, -1);
  }

  v70 = v10[1];
  v69 = v10 + 1;
  v68 = v70;
  v70(v19, v58);
  v71 = MEMORY[0x23188EEB0]([v153 setPredicate_]);
  v72 = v147;
  v73 = sub_22B360E9C();
  if (v72)
  {
LABEL_28:
    objc_autoreleasePoolPop(v71);

    return;
  }

  v74 = v73;
  v128 = v68;
  v147 = v61;
  v143 = v69;
  while (!(v74 >> 62))
  {
    v75 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v75)
    {
      goto LABEL_29;
    }

LABEL_19:
    for (i = 0; i != v75; ++i)
    {
      if ((v74 & 0xC000000000000001) != 0)
      {
        v77 = MEMORY[0x23188EAC0](i, v74);
      }

      else
      {
        v77 = *(v74 + 8 * i + 32);
      }

      v78 = v77;
      [a1 deleteObject_];
    }

    sub_22B207390(10);
    objc_autoreleasePoolPop(v71);
    v71 = MEMORY[0x23188EEB0]();
    v74 = sub_22B360E9C();
    v54 = v152;
  }

  v79 = sub_22B36109C();
  if (v79)
  {
    v75 = v79;
    sub_22B36109C();
    if (v75 < 1)
    {
      __break(1u);
      v61 = v147;
      goto LABEL_28;
    }

    goto LABEL_19;
  }

LABEL_29:

  objc_autoreleasePoolPop(v71);
  v81 = v145;
  v80 = v146;
  if (v146 && v145)
  {
    v82 = v133;
    sub_22B170BE0(v144, v133, &qword_27D8BA340, &qword_22B363FB0);
    v83 = v149;
    v84 = v136(v82, 1, v149);
    v85 = v150;
    if (v84 == 1)
    {
      sub_22B123284(v82, &qword_27D8BA340, &qword_22B363FB0);
      v152 = 0;
      v86 = 0xE000000000000000;
    }

    else
    {
      v110 = v148;
      v111 = v129;
      (*(v148 + 32))(v129, v82, v83);
      v154 = 0x2065726F666562;
      v155 = 0xE700000000000000;
      sub_22B306EB4(&qword_28140B488, MEMORY[0x277CC9578]);
      v112 = sub_22B36131C();
      v113 = v83;
      MEMORY[0x23188E270](v112);
      v80 = v146;

      v86 = v155;
      v152 = v154;
      (*(v110 + 8))(v111, v113);
    }

    v114 = v132;
    v138(v132, v140, v85);

    v115 = v80;
    v116 = sub_22B36050C();
    v117 = sub_22B360D0C();

    if (os_log_type_enabled(v116, v117))
    {
      v118 = swift_slowAlloc();
      v151 = swift_slowAlloc();
      v154 = v151;
      *v118 = 136315650;
      *(v118 + 4) = sub_22B1A7B20(v141, v115, &v154);
      *(v118 + 12) = 2080;
      *(v118 + 14) = sub_22B1A7B20(v142, v81, &v154);
      *(v118 + 22) = 2080;
      v119 = v114;
      v120 = sub_22B1A7B20(v152, v86, &v154);

      *(v118 + 24) = v120;
      _os_log_impl(&dword_22B116000, v116, v117, "[IntervalBlocks] Deleted %s for utility %s %s", v118, 0x20u);
      v121 = v151;
      swift_arrayDestroy();
      MEMORY[0x23188F650](v121, -1, -1);
      MEMORY[0x23188F650](v118, -1, -1);

      v122 = v119;
      v123 = v150;
    }

    else
    {

      v122 = v114;
      v123 = v85;
    }

    v128(v122, v123);
  }

  else
  {
    v87 = v135;
    sub_22B170BE0(v144, v135, &qword_27D8BA340, &qword_22B363FB0);
    v88 = v149;
    v89 = v136(v87, 1, v149);
    v90 = v150;
    if (v89 == 1)
    {
      sub_22B123284(v87, &qword_27D8BA340, &qword_22B363FB0);
      v91 = v131;
      v138(v131, v140, v90);
      v92 = sub_22B36050C();
      v93 = sub_22B360D0C();
      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        *v94 = 0;
        _os_log_impl(&dword_22B116000, v92, v93, "[IntervalBlocks] Deleted All", v94, 2u);
        MEMORY[0x23188F650](v94, -1, -1);
      }

      v128(v91, v90);
    }

    else
    {
      v95 = v148;
      (*(v148 + 32))(v54, v87, v88);
      v96 = v134;
      v138(v134, v140, v90);
      v97 = v130;
      (*(v95 + 16))(v130, v54, v88);
      v98 = sub_22B36050C();
      v99 = sub_22B360D0C();
      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        v146 = v100;
        v151 = swift_slowAlloc();
        v154 = v151;
        *v100 = 136315138;
        sub_22B306EB4(&qword_28140B488, MEMORY[0x277CC9578]);
        LODWORD(v145) = v99;
        v101 = v149;
        v102 = sub_22B36131C();
        v104 = v103;
        v105 = *(v95 + 8);
        v105(v97, v101);
        v106 = sub_22B1A7B20(v102, v104, &v154);

        v107 = v146;
        *(v146 + 1) = v106;
        v108 = v107;
        _os_log_impl(&dword_22B116000, v98, v145, "[IntervalBlocks] Deleted  before %s", v107, 0xCu);
        v109 = v151;
        __swift_destroy_boxed_opaque_existential_0(v151);
        MEMORY[0x23188F650](v109, -1, -1);
        MEMORY[0x23188F650](v108, -1, -1);

        v128(v134, v150);
        v105(v152, v101);
      }

      else
      {

        v124 = *(v95 + 8);
        v125 = v149;
        v124(v97, v149);
        v128(v96, v90);
        v124(v152, v125);
      }
    }
  }

  [a1 refreshAllObjects];
}

void sub_22B304908(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v66 = a6;
  v67 = a7;
  v64 = a3;
  v58 = a8;
  v65 = sub_22B35FC0C();
  v15 = *(v65 - 8);
  v16 = *(v15 + 64);
  *&v17 = MEMORY[0x28223BE20](v65).n128_u64[0];
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = a1;
  [a1 refreshAllObjects];
  v20 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v21 = sub_22B36081C();
  v22 = [v20 initWithEntityName_];

  [v22 setResultType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD10, &qword_22B363A30);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_22B3634B0;
  *(v23 + 56) = MEMORY[0x277D837D0];
  *(v23 + 32) = 0x4449726574656DLL;
  *(v23 + 40) = 0xE700000000000000;
  v24 = sub_22B360A3C();

  [v22 setPropertiesToFetch_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_22B363650;
  v26 = *(a2 + 112);
  if (v26)
  {
    v62 = a10;
    v63 = a11;
    v61 = a9;
    *(v25 + 32) = v26;
    sub_22B128014(0, &qword_2814092F8, 0x277CBE4D0);
    v27 = v26;
    v28 = sub_22B360A3C();

    [v22 setAffectedStores_];

    [v22 setReturnsDistinctResults_];
    v29 = sub_22B128014(0, &qword_281409330, 0x277CCAC30);
    v59 = "een:importedSum:exportedSum:)";
    v60 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_22B363640;
    v31 = MEMORY[0x277D837D0];
    *(v30 + 56) = MEMORY[0x277D837D0];
    v32 = sub_22B1280E4();
    v33 = v65;
    *(v30 + 32) = v64;
    *(v30 + 40) = a4;
    *(v30 + 96) = v31;
    *(v30 + 104) = v32;
    *(v30 + 64) = v32;
    *(v30 + 72) = a5;
    *(v30 + 80) = v66;
    (*(v15 + 104))(v19, *MEMORY[0x277D074A8], v33);

    sub_22B35FBFC();
    (*(v15 + 8))(v19, v33);
    v34 = sub_22B360C8C();
    *(v30 + 136) = sub_22B128014(0, &qword_281409278, 0x277CCABB0);
    v35 = sub_22B176FAC(&qword_27D8BAD48, &qword_281409278, 0x277CCABB0);
    *(v30 + 112) = v34;
    *(v30 + 176) = v31;
    *(v30 + 184) = v32;
    v36 = v67;
    *(v30 + 144) = v35;
    *(v30 + 152) = v36;
    v37 = v62;
    *(v30 + 160) = v61;
    *(v30 + 216) = v31;
    *(v30 + 224) = v32;
    v38 = v63;
    *(v30 + 192) = v37;
    *(v30 + 200) = v38;

    v39 = sub_22B360CCC();
    [v22 setPredicate_];
    [v22 setFetchBatchSize_];
    [v22 setReturnsObjectsAsFaults_];
    sub_22B128014(0, &qword_27D8BA3D8, 0x277CBEAC0);
    v40 = v69;
    v41 = sub_22B360E9C();
    if (v40)
    {

      return;
    }

    v42 = sub_22B304F10(v41);

    if (v42)
    {
      v43 = *(v42 + 16);
      if (v43)
      {
        v68 = v43 - 1;
        v69 = MEMORY[0x277D84F90];
        for (i = 0; ; ++i)
        {
          while (1)
          {
            if (i >= *(v42 + 16))
            {
              __break(1u);
              goto LABEL_22;
            }

            v45 = *(v42 + 32 + 8 * i);
            if (*(v45 + 16))
            {
              break;
            }

LABEL_8:
            if (v43 == ++i)
            {
              goto LABEL_20;
            }
          }

          v46 = *(v42 + 32 + 8 * i);

          v47 = sub_22B33B28C(0x4449726574656DLL, 0xE700000000000000);
          if ((v48 & 1) == 0)
          {

            goto LABEL_8;
          }

          v49 = (*(v45 + 56) + 16 * v47);
          v50 = v49[1];
          v66 = *v49;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v67 = v50;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v69 = sub_22B32CD20(0, *(v69 + 2) + 1, 1, v69);
          }

          v53 = *(v69 + 2);
          v52 = *(v69 + 3);
          if (v53 >= v52 >> 1)
          {
            v69 = sub_22B32CD20((v52 > 1), v53 + 1, 1, v69);
          }

          v54 = v69;
          *(v69 + 2) = v53 + 1;
          v55 = &v54[16 * v53];
          v56 = v67;
          *(v55 + 4) = v66;
          *(v55 + 5) = v56;
          if (v68 == i)
          {
            goto LABEL_20;
          }
        }
      }

      v69 = MEMORY[0x277D84F90];
LABEL_20:

      *v58 = v69;
    }

    else
    {

      *v58 = 0;
    }
  }

  else
  {
LABEL_22:
    __break(1u);
  }
}

uint64_t sub_22B304F10(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22B36109C())
  {
    v8 = MEMORY[0x277D84F90];
    sub_22B355854(0, i & ~(i >> 63), 0);
    v4 = v8;
    if (v2)
    {
      v2 = sub_22B36109C();
      if (!v2)
      {
        return v4;
      }
    }

    else
    {
      v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v2)
      {
        return v4;
      }
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v5 = *(a1 + 32);
      goto LABEL_10;
    }

    __break(1u);
LABEL_14:
    ;
  }

  v5 = MEMORY[0x23188EAC0](0, a1);
LABEL_10:
  v6 = v5;
  sub_22B3606DC();

  return 0;
}

void sub_22B3050AC(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v63 = a7;
  v60 = a4;
  v61 = a6;
  v58 = a3;
  v59 = a5;
  v53[0] = a8;
  v62 = sub_22B35FC0C();
  v15 = *(v62 - 8);
  v16 = *(v15 + 64);
  *&v17 = MEMORY[0x28223BE20](v62).n128_u64[0];
  v19 = v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = a1;
  [a1 refreshAllObjects];
  v64 = sub_22B35F4EC();
  v20 = sub_22B35F47C();
  [v20 setResultType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD10, &qword_22B363A30);
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D837D0];
  *(v21 + 16) = xmmword_22B3634B0;
  *(v21 + 56) = v22;
  *(v21 + 32) = 0x73676E6964616572;
  *(v21 + 40) = 0xE800000000000000;
  v23 = sub_22B360A3C();

  [v20 setPropertiesToFetch_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_22B363650;
  v25 = *(a2 + 112);
  if (v25)
  {
    v56 = a12;
    v57 = a13;
    v54 = a10;
    v55 = a11;
    *(v24 + 32) = v25;
    sub_22B128014(0, &qword_2814092F8, 0x277CBE4D0);
    v26 = v25;
    v27 = sub_22B360A3C();

    [v20 setAffectedStores_];

    v28 = sub_22B128014(0, &qword_281409330, 0x277CCAC30);
    v53[1] = "AND usagePointID = %@";
    v53[2] = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_22B363660;
    v30 = MEMORY[0x277D837D0];
    *(v29 + 56) = MEMORY[0x277D837D0];
    v31 = sub_22B1280E4();
    v67 = v20;
    v32 = v31;
    v33 = v59;
    v35 = v60;
    v34 = v61;
    *(v29 + 32) = v58;
    *(v29 + 40) = v35;
    *(v29 + 96) = v30;
    *(v29 + 104) = v31;
    *(v29 + 64) = v31;
    *(v29 + 72) = v33;
    *(v29 + 80) = v34;
    v36 = v62;
    (*(v15 + 104))(v19, *MEMORY[0x277D074B0], v62);

    sub_22B35FBFC();
    (*(v15 + 8))(v19, v36);
    v37 = sub_22B360C8C();
    *(v29 + 136) = sub_22B128014(0, &qword_281409278, 0x277CCABB0);
    v38 = sub_22B176FAC(&qword_27D8BAD48, &qword_281409278, 0x277CCABB0);
    *(v29 + 112) = v37;
    *(v29 + 176) = v30;
    *(v29 + 184) = v32;
    v39 = v63;
    *(v29 + 144) = v38;
    *(v29 + 152) = v39;
    *(v29 + 160) = a9;
    *(v29 + 216) = v30;
    *(v29 + 224) = v32;
    v40 = v55;
    *(v29 + 192) = v54;
    *(v29 + 200) = v40;
    *(v29 + 256) = v30;
    *(v29 + 264) = v32;
    v41 = v67;
    v42 = v57;
    *(v29 + 232) = v56;
    *(v29 + 240) = v42;

    v43 = sub_22B360CCC();
    [v41 setPredicate_];
    [v41 setFetchBatchSize_];
    [v41 setReturnsObjectsAsFaults_];
    v44 = v66;
    v45 = sub_22B360E9C();
    if (v44)
    {
    }

    else
    {
      v46 = v45;
      if (v45 >> 62)
      {
        goto LABEL_21;
      }

      v47 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v47 >= 0x1E)
      {
        v66 = v43;
        v68 = 0;
        while (1)
        {
          v48 = 0;
          v43 = (v46 & 0xFFFFFFFFFFFFFF8);
          while (1)
          {
            if ((v46 & 0xC000000000000001) != 0)
            {
              v49 = MEMORY[0x23188EAC0](v48, v46);
            }

            else
            {
              if (v48 >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_20;
              }

              v49 = *(v46 + 8 * v48 + 32);
            }

            v50 = v49;
            v41 = (v48 + 1);
            if (__OFADD__(v48, 1))
            {
              break;
            }

            v51 = MEMORY[0x23188EEB0]();
            sub_22B305618(v50, &v68);
            objc_autoreleasePoolPop(v51);

            ++v48;
            if (v41 == v47)
            {
              v52 = v68;
              goto LABEL_17;
            }
          }

          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          if (sub_22B36109C() <= 29)
          {
            break;
          }

          v66 = v43;
          v68 = 0;
          v47 = sub_22B36109C();
          if (!v47)
          {
            v52 = 0;
LABEL_17:

            *v53[0] = v52;
            return;
          }
        }
      }

      *v53[0] = 2;
    }
  }

  else
  {
    __break(1u);
    objc_autoreleasePoolPop(v15);
    __break(1u);
  }
}

uint64_t sub_22B305618(void *a1, _BYTE *a2)
{
  v4 = sub_22B35FEBC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B35FDCC();
  v9 = [a1 readings];
  v10 = sub_22B35DCDC();
  v12 = v11;

  v13 = sub_22B35FDBC();
  result = sub_22B12F174(v10, v12);
  v15 = *(v13 + 16);
  v21 = a2;
  if (v15 <= 47)
  {
    if (v15 == 1)
    {
      v16 = 0.3;
      goto LABEL_11;
    }

LABEL_7:
    v16 = 0.01;
    goto LABEL_11;
  }

  if (v15 == 48)
  {
    v16 = 0.005;
    goto LABEL_11;
  }

  if (v15 == 96)
  {
    v16 = 0.003;
    goto LABEL_11;
  }

  if (v15 != 288)
  {
    goto LABEL_7;
  }

  v16 = 0.001;
LABEL_11:
  v17 = 0;
  while (1)
  {
    if (v15 == v17)
    {
    }

    if (v17 >= *(v13 + 16))
    {
      break;
    }

    (*(v5 + 16))(v8, v13 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v17++, v4);
    sub_22B35FE4C();
    v19 = v18;
    result = (*(v5 + 8))(v8, v4);
    if (v16 < v19)
    {

      *v21 = 1;
      return result;
    }
  }

  __break(1u);
  return result;
}

void *sub_22B30585C()
{
  type metadata accessor for IntervalBlocksManager();
  v0 = swift_allocObject();
  result = sub_22B1D5830();
  qword_28140BCF8 = v0;
  return result;
}

uint64_t sub_22B305898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

  return MEMORY[0x2822009F8](sub_22B305960, v5, 0);
}

uint64_t sub_22B305960()
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
    _os_log_impl(&dword_22B116000, v5, v6, "Delete interval readings", v7, 2u);
    MEMORY[0x23188F650](v7, -1, -1);
  }

  v9 = *(v0 + 96);
  v8 = *(v0 + 104);
  v11 = *(v0 + 80);
  v10 = *(v0 + 88);

  (*(v9 + 8))(v8, v10);
  v12 = *(v11 + 112);
  if (v12)
  {
    v13 = *(*(v0 + 80) + 128);
    if (v13)
    {
      v14 = *(v11 + 120);
      v15 = *(v0 + 72);
      v22 = *(v0 + 40);
      v23 = *(v0 + 56);
      sub_22B1231A0(v12, v14);
      v16 = v13;
      v17 = MEMORY[0x23188EEB0]();
      v18 = swift_task_alloc();
      *(v18 + 16) = v16;
      *(v18 + 24) = v22;
      *(v18 + 40) = v23;
      *(v18 + 56) = v15;
      sub_22B360E7C();

      objc_autoreleasePoolPop(v17);
    }
  }

  v19 = *(v0 + 104);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_22B305BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[15] = a5;
  v6[16] = v5;
  v6[13] = a3;
  v6[14] = a4;
  v6[11] = a1;
  v6[12] = a2;
  v7 = sub_22B36052C();
  v6[17] = v7;
  v8 = *(v7 - 8);
  v6[18] = v8;
  v9 = *(v8 + 64) + 15;
  v6[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B305CA4, v5, 0);
}

uint64_t sub_22B305CA4()
{
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v4 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_22B36050C();
  v6 = sub_22B360D2C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22B116000, v5, v6, "Process Interval Blocks", v7, 2u);
    MEMORY[0x23188F650](v7, -1, -1);
  }

  v9 = v0[18];
  v8 = v0[19];
  v11 = v0[16];
  v10 = v0[17];

  (*(v9 + 8))(v8, v10);
  v12 = *(v11 + 112);
  v0[20] = v12;
  if (v12)
  {
    v13 = *(v0[16] + 120);
    v0[21] = v13;

    v14 = v13;
    v15 = sub_22B207EFC();
    v16 = [v15 newBackgroundContext];
    v0[22] = v16;
    v17 = sub_22B36081C();
    [v16 setTransactionAuthor_];

    [v16 setMergePolicy_];
    [v16 setUndoManager_];
    [v16 setShouldRefreshAfterSave_];
    [v16 setStalenessInterval_];
    [v16 setShouldDeleteInaccessibleFaults_];

    v18 = swift_task_alloc();
    v0[23] = v18;
    *v18 = v0;
    v18[1] = sub_22B305FC8;
    v19 = v0[14];
    v20 = v0[15];
    v21 = v0[12];
    v22 = v0[13];
    v23 = v0[11];

    return sub_22B2FC08C(v23, v21, v22, v19, v16, v20, v12, v14);
  }

  else
  {
    sub_22B134CDC();
    swift_allocError();
    *v25 = 13;
    swift_willThrow();
    v26 = v0[19];

    v27 = v0[1];

    return v27();
  }
}

uint64_t sub_22B305FC8()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *v1;
  *(*v1 + 192) = v0;

  v5 = *(v2 + 128);
  if (v0)
  {
    v6 = sub_22B3062D4;
  }

  else
  {
    v6 = sub_22B3060F4;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22B3060F4()
{
  v1 = *(v0[16] + 128);
  if (v1)
  {
    v2 = v0[21];
    v3 = v0[22];
    v4 = v0[20];
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
    v0[5] = &block_descriptor_25;
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

  v10 = v0[21];
  v11 = v0[20];

LABEL_5:
  v12 = v0[19];

  v13 = v0[1];

  return v13();
}

uint64_t sub_22B3062D4()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 160);

  v3 = *(v0 + 192);
  v4 = *(v0 + 152);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_22B306350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_22B306378, v5, 0);
}

uint64_t sub_22B306378()
{
  v1 = *(v0 + 56);
  v2 = v1[14];
  if (v2 && (v3 = v1[16]) != 0)
  {
    v4 = v1[15];
    v6 = *(v0 + 40);
    v5 = *(v0 + 48);
    v14 = *(v0 + 24);
    v7 = *(v0 + 16);
    v8 = swift_task_alloc();
    *(v8 + 16) = v14;
    *(v8 + 32) = v6;
    *(v8 + 40) = v5;
    *(v8 + 48) = 2;
    *(v8 + 56) = 0;
    *(v8 + 64) = 0;
    *(v8 + 72) = v2;
    *(v8 + 80) = v4;
    *(v8 + 88) = v3;
    sub_22B1231A0(v2, v4);
    v9 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
    sub_22B360E7C();
  }

  else
  {
    v10 = *(v0 + 16);
    v11 = sub_22B35DE9C();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_22B306544(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v43 - v6;
  v8 = sub_22B35DE9C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22B36052C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v13, qword_28140BD10);
  swift_beginAccess();
  (*(v14 + 16))(v17, v18, v13);
  v47 = *(v9 + 16);
  v48 = a1;
  v47(v12, a1, v8);
  v19 = sub_22B36050C();
  v20 = v9;
  v49 = v13;
  v21 = v19;
  v22 = sub_22B360D2C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v46 = v7;
    v24 = v23;
    v44 = swift_slowAlloc();
    v50 = v44;
    *v24 = 136315138;
    sub_22B306EB4(&qword_28140B488, MEMORY[0x277CC9578]);
    v45 = v14;
    v25 = v20;
    v26 = sub_22B36131C();
    v27 = v8;
    v28 = v2;
    v30 = v29;
    v31 = v12;
    v32 = v27;
    (*(v25 + 8))(v31, v27);
    v33 = sub_22B1A7B20(v26, v30, &v50);
    v2 = v28;

    *(v24 + 4) = v33;
    _os_log_impl(&dword_22B116000, v21, v22, "Delete IntervalBlocks older than %s", v24, 0xCu);
    v34 = v44;
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x23188F650](v34, -1, -1);
    v35 = v24;
    v7 = v46;
    MEMORY[0x23188F650](v35, -1, -1);

    result = (*(v45 + 8))(v17, v49);
    v37 = v28[14];
    if (!v37)
    {
      return result;
    }
  }

  else
  {

    v38 = v12;
    v32 = v8;
    (*(v20 + 8))(v38, v8);
    result = (*(v14 + 8))(v17, v49);
    v25 = v20;
    v37 = v2[14];
    if (!v37)
    {
      return result;
    }
  }

  v39 = v2[16];
  if (v39)
  {
    v40 = v2[15];
    v47(v7, v48, v32);
    (*(v25 + 56))(v7, 0, 1, v32);
    sub_22B1231A0(v37, v40);
    v41 = v39;
    v42 = MEMORY[0x23188EEB0]();
    MEMORY[0x28223BE20](v42);
    *(&v43 - 6) = v41;
    *(&v43 - 5) = 0u;
    *(&v43 - 3) = 0u;
    *(&v43 - 1) = v7;
    sub_22B360E7C();
    objc_autoreleasePoolPop(v42);

    return sub_22B123284(v7, &qword_27D8BA340, &qword_22B363FB0);
  }

  return result;
}

uint64_t sub_22B306A2C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v30 = a1;
  v9 = sub_22B36052C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v9, qword_28140BD10);
  swift_beginAccess();
  (*(v10 + 16))(v13, v14, v9);

  v15 = sub_22B36050C();
  v16 = sub_22B360D2C();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v29 = a3;
    v18 = a4;
    v19 = v17;
    v20 = swift_slowAlloc();
    v31 = v20;
    *v19 = 136380675;
    *(v19 + 4) = sub_22B1A7B20(v30, a2, &v31);
    _os_log_impl(&dword_22B116000, v15, v16, "Get intervalblock count for %{private}s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x23188F650](v20, -1, -1);
    v21 = v19;
    a4 = v18;
    a3 = v29;
    MEMORY[0x23188F650](v21, -1, -1);
  }

  (*(v10 + 8))(v13, v9);
  v22 = v5[14];
  if (!v22)
  {
    return 0;
  }

  v23 = v5[16];
  if (!v23)
  {
    return 0;
  }

  v24 = v5[15];
  sub_22B1231A0(v22, v24);
  v25 = v23;
  v26 = MEMORY[0x23188EEB0]();
  MEMORY[0x28223BE20](v26);
  *(&v28 - 6) = v30;
  *(&v28 - 5) = a2;
  *(&v28 - 4) = a3;
  *(&v28 - 3) = a4;
  *(&v28 - 2) = v25;
  sub_22B360E7C();
  objc_autoreleasePoolPop(v26);

  return v31;
}

uint64_t sub_22B306DDC@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_22B306EB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22B306EFC@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_22B30CC34(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_22B35D95C();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_22B35D90C();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_22B35DC9C();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_22B306FC4(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v22[2] = *MEMORY[0x277D85DE8];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_22B12F174(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      result = a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v3 = v22[0];
      v3[1] = v9;
      goto LABEL_22;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_22B12F174(v6, v5);
    *v3 = xmmword_22B366E20;
    sub_22B12F174(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_22B35D91C() && __OFSUB__(v6, sub_22B35D94C()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_22B35D95C();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_22B35D8FC();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_22B307468(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        result = v17;
        goto LABEL_22;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_22B12F174(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_22B366E20;
    sub_22B12F174(0, 0xC000000000000000);
    sub_22B35DC5C();
    result = sub_22B307468(v20[2], v20[3], a1);
    v10 = v21 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v20;
      v3[1] = v10;
      goto LABEL_22;
    }

    *v3 = v20;
LABEL_21:
    v3[1] = v10;
    goto LABEL_22;
  }

  memset(v22, 0, 15);
  result = a1(&v20, v22, v22);
  if (!v2)
  {
    result = v20;
  }

LABEL_22:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *sub_22B307368@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_22B30CC34(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_22B30CD8C(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_22B30CE08(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_22B3073FC(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_22B307468(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_22B35D91C();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_22B35D94C();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_22B35D93C();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

void (*sub_22B30751C(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x68uLL);
  }

  v7 = v6;
  *a1 = v6;
  v8 = sub_22B35DE9C();
  v7[8] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v7[9] = v9;
  if (v5)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(v9 + 64));
  }

  v12 = v11;
  v7[10] = v11;
  v13 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v10 + 16))(v12, a2, v8);
  v7[11] = sub_22B307CA0(v7);
  v7[12] = sub_22B3076F0(v7 + 4, v12, isUniquelyReferenced_nonNull_native);
  return sub_22B307658;
}

void sub_22B307658(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v2(v1, 0);
  free(v3);

  free(v1);
}

void (*sub_22B3076F0(void *a1, uint64_t a2, char a3))(uint64_t a1, char a2)
{
  v4 = v3;
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x78uLL);
  }

  v9 = v8;
  *a1 = v8;
  *v8 = a2;
  v8[1] = v3;
  v10 = sub_22B35DE9C();
  v9[2] = v10;
  v11 = *(v10 - 8);
  v9[3] = v11;
  if (v7)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  v9[4] = v12;
  v13 = sub_22B35F00C();
  v9[5] = v13;
  v14 = *(v13 - 8);
  v15 = v14;
  v9[6] = v14;
  v16 = *(v14 + 64);
  if (v7)
  {
    v9[7] = swift_coroFrameAlloc();
    v9[8] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v9[7] = malloc(*(v14 + 64));
    v9[8] = malloc(v16);
    v17 = malloc(v16);
  }

  v9[9] = v17;
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BADC8, &unk_22B366F90) - 8) + 64);
  if (v7)
  {
    v9[10] = swift_coroFrameAlloc();
    v9[11] = swift_coroFrameAlloc();
    v19 = swift_coroFrameAlloc();
  }

  else
  {
    v9[10] = malloc(v18);
    v9[11] = malloc(v18);
    v19 = malloc(v18);
  }

  v20 = v19;
  v9[12] = v19;
  v21 = *v4;
  v23 = sub_22B33B348(a2);
  *(v9 + 112) = v22 & 1;
  v24 = *(v21 + 16);
  v25 = (v22 & 1) == 0;
  v26 = v24 + v25;
  if (__OFADD__(v24, v25))
  {
    __break(1u);
    goto LABEL_26;
  }

  v27 = v22;
  v28 = *(v21 + 24);
  if (v28 < v26 || (a3 & 1) == 0)
  {
    if (v28 >= v26 && (a3 & 1) == 0)
    {
      sub_22B342B94();
      goto LABEL_21;
    }

    sub_22B33EAE4(v26, a3 & 1);
    v29 = *v4;
    v30 = sub_22B33B348(a2);
    if ((v27 & 1) == (v31 & 1))
    {
      v23 = v30;
      goto LABEL_21;
    }

LABEL_26:
    result = sub_22B3613BC();
    __break(1u);
    return result;
  }

LABEL_21:
  v9[13] = v23;
  if (v27)
  {
    (*(v15 + 32))(v20, *(*v4 + 56) + *(v15 + 72) * v23, v13);
    v32 = 0;
  }

  else
  {
    v32 = 1;
  }

  (*(v15 + 56))(v20, v32, 1, v13);
  return sub_22B307A20;
}

void sub_22B307A20(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = (*(*a1 + 48) + 48);
  v5 = *(*a1 + 96);
  if (a2)
  {
    v6 = v2[10];
    sub_22B170BE0(v5, v6, &qword_27D8BADC8, &unk_22B366F90);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 112);
    v9 = v2[10];
    if (v7 != 1)
    {
      v10 = v2[1];
      v11 = *(v2[6] + 32);
      v11(v2[8], v2[10], v2[5]);
      v12 = *v10;
      v13 = v2[13];
      v14 = v2[8];
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v15 = v2[7];
        v17 = v2[4];
        v16 = v2[5];
        (*(v2[3] + 16))(v17, *v2, v2[2]);
        v11(v15, v14, v16);
        sub_22B3400CC(v13, v17, v15, v12);
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v18 = v2[11];
    sub_22B170BE0(v5, v18, &qword_27D8BADC8, &unk_22B366F90);
    v19 = (*v4)(v18, 1, v3);
    v8 = *(v2 + 112);
    v9 = v2[11];
    if (v19 != 1)
    {
      v22 = v2[1];
      v11 = *(v2[6] + 32);
      v11(v2[9], v2[11], v2[5]);
      v12 = *v22;
      v13 = v2[13];
      v14 = v2[9];
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      v11(v12[7] + *(v2[6] + 72) * v13, v14, v2[5]);
      goto LABEL_10;
    }
  }

  sub_22B123284(v9, &qword_27D8BADC8, &unk_22B366F90);
  if (v8)
  {
    v20 = v2[13];
    v21 = *v2[1];
    (*(v2[3] + 8))(*(v21 + 48) + *(v2[3] + 72) * v20, v2[2]);
    sub_22B2E6670(v20, v21);
  }

LABEL_10:
  v23 = v2[11];
  v24 = v2[12];
  v26 = v2[9];
  v25 = v2[10];
  v28 = v2[7];
  v27 = v2[8];
  v29 = v2[4];
  sub_22B123284(v24, &qword_27D8BADC8, &unk_22B366F90);
  free(v24);
  free(v23);
  free(v25);
  free(v26);
  free(v27);
  free(v28);
  free(v29);

  free(v2);
}

uint64_t (*sub_22B307CA0(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_22B307CC8;
}

uint64_t sub_22B307CD4(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      sub_22B3606AC();
      sub_22B306EB4(&qword_27D8BAD68, MEMORY[0x277CC5540]);
      result = sub_22B36066C();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_22B307EB4(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22B307EB4(uint64_t a1, uint64_t a2)
{
  result = sub_22B35D91C();
  if (!result || (result = sub_22B35D94C(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_22B35D93C();
      sub_22B3606AC();
      sub_22B306EB4(&qword_27D8BAD68, MEMORY[0x277CC5540]);
      return sub_22B36066C();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22B307F94(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_22B3609AC();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x23188E2B0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_22B308010@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = sub_22B36117C();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22B308060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[37] = a7;
  v8[38] = a8;
  v8[35] = a4;
  v8[36] = a6;
  v8[33] = a2;
  v8[34] = a3;
  v8[32] = a1;
  v9 = sub_22B36052C();
  v8[39] = v9;
  v10 = *(v9 - 8);
  v8[40] = v10;
  v11 = *(v10 + 64) + 15;
  v8[41] = swift_task_alloc();
  v8[42] = swift_task_alloc();
  v8[43] = swift_task_alloc();
  v8[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B308150, 0, 0);
}

uint64_t sub_22B308150()
{
  v148 = v0;
  *(v0 + 248) = MEMORY[0x277D84F90];
  v1 = (v0 + 248);
  v2 = (v0 + 296);
  v3 = *(v0 + 256);
  v4 = swift_allocObject();
  *(v0 + 360) = v4;
  *(v4 + 16) = 0;
  if (v3 >> 62)
  {
    goto LABEL_54;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22B36109C())
  {
    *(v0 + 368) = i;
    v6 = MEMORY[0x277D84F90];
    v138 = v2;
    if (!i)
    {
      break;
    }

    v142 = v1 - 23;
    swift_beginAccess();
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    LOBYTE(v11) = 0;
    v12 = 0;
    v139 = v2 + 234;
    v132 = v2 + 233;
    v133 = v1;
    while (1)
    {
      *(v0 + 243) = v12 & 1;
      *(v0 + 242) = v11 & 1;
      *(v0 + 241) = v10 & 1;
      *(v0 + 376) = v7;
      *(v0 + 384) = v8;
      v13 = *(v0 + 256);
      if ((v13 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x23188EAC0](v9);
      }

      else
      {
        if (v9 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_52;
        }

        v14 = *(v13 + 8 * v9 + 32);
      }

      v15 = v14;
      *(v0 + 392) = v14;
      *(v0 + 400) = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (sub_22B360F5C() == 0x6C61767265746E49 && v16 == 0xED00006B636F6C42)
      {

LABEL_41:
        v73 = *(v0 + 360);
        v145 = *(v0 + 272);
        v74 = *(v0 + 264);
        v75 = swift_task_alloc();
        *(v0 + 408) = v75;
        v76 = *v2;
        *(v75 + 16) = v15;
        *(v75 + 24) = v76;
        *(v75 + 40) = v145;
        *(v75 + 56) = v74;
        *(v75 + 64) = v73;
        v77 = *(MEMORY[0x277D85A40] + 4);
        v78 = swift_task_alloc();
        *(v0 + 416) = v78;
        v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD58, &qword_22B366F10);
        *v78 = v0;
        v78[1] = sub_22B30901C;
        v80 = sub_22B30CECC;
        v81 = (v0 + 232);
        v82 = 0xD000000000000048;
        v83 = 0x800000022B36DEF0;
        v84 = v75;
        goto LABEL_47;
      }

      v18 = sub_22B36134C();

      if (v18)
      {
        goto LABEL_41;
      }

      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v19 = *(v0 + 352);
      v20 = *(v0 + 312);
      v21 = *(v0 + 320);
      v22 = __swift_project_value_buffer(v20, qword_28140BD10);
      swift_beginAccess();
      (*(v21 + 16))(v19, v22, v20);
      v23 = sub_22B36050C();
      v24 = sub_22B360D1C();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_22B116000, v23, v24, "[Dropbox Bridge] Record is not of type IntervalReading!", v25, 2u);
        MEMORY[0x23188F650](v25, -1, -1);
      }

      v26 = *(v0 + 352);
      v27 = *(v0 + 312);
      v28 = *(v0 + 320);

      (*(v28 + 8))(v26, v27);
      sub_22B134CDC();
      v29 = swift_allocError();
      *v30 = 20;
      swift_willThrow();
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v32 = *(v0 + 320);
      v31 = *(v0 + 328);
      v33 = *(v0 + 312);
      v34 = __swift_project_value_buffer(v33, qword_28140BD10);
      swift_beginAccess();
      (*(v32 + 16))(v31, v34, v33);
      v35 = v29;
      v36 = sub_22B36050C();
      v37 = sub_22B360D1C();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *v38 = 138412290;
        v40 = v29;
        v41 = _swift_stdlib_bridgeErrorToNSError();
        *(v38 + 4) = v41;
        *v39 = v41;
        _os_log_impl(&dword_22B116000, v36, v37, "[Dropbox Bridge] Skiping record. Failed handle IntervalReading payload %@", v38, 0xCu);
        sub_22B123284(v39, &unk_27D8BAA90, &unk_22B362BC0);
        MEMORY[0x23188F650](v39, -1, -1);
        MEMORY[0x23188F650](v38, -1, -1);
      }

      else
      {
      }

      (*(*(v0 + 320) + 8))(*(v0 + 328), *(v0 + 312));
      v11 = *(v0 + 242);
      v42 = *(v0 + 241);
      *(v2 + 233) = *(v0 + 242);
      *(v2 + 232) = v42;
      if (__ROR8__(0x8F5C28F5C28F5C29 * *(*(v0 + 360) + 16) + 0x51EB851EB851EB8, 2) < 0x28F5C28F5C28F5DuLL)
      {
        v43 = *(v0 + 248);
        *(v0 + 432) = v43;
        if (v43 >> 62)
        {
          v71 = v43;
          v72 = sub_22B36109C();
          v43 = v71;
          if (v72)
          {
LABEL_50:
            v93 = *(v0 + 288);
            v92 = *(v0 + 296);
            v94 = *(v0 + 264);
            v95 = v43;
            v96 = sub_22B207EFC();
            *(v0 + 440) = v96;
            v89 = swift_task_alloc();
            *(v0 + 448) = v89;
            v89[2] = v94;
            v89[3] = v95;
            v89[4] = v96;
            v89[5] = v93;
            v97 = *(MEMORY[0x277D85A40] + 4);
            v81 = swift_task_alloc();
            *(v0 + 456) = v81;
            *v81 = v0;
            v81[1] = sub_22B309FF0;
            v91 = MEMORY[0x277D84F78];
            v80 = sub_22B30D520;
            v83 = 0x800000022B36C2C0;
            goto LABEL_46;
          }
        }

        else if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_50;
        }

        v44 = *(v0 + 376);
        v45 = *(v0 + 384);
        v46 = *(v0 + 264);
        v8 = swift_allocObject();
        *(v8 + 16) = v46;
        v47 = v46;
        sub_22B144D48(v44);
        v48 = swift_allocObject();
        *(v48 + 16) = sub_22B30CEB0;
        *(v48 + 24) = v8;
        *(v0 + 96) = sub_22B128240;
        *(v0 + 104) = v48;
        *(v0 + 64) = MEMORY[0x277D85DD0];
        *(v0 + 72) = 1107296256;
        *(v0 + 80) = sub_22B32556C;
        *(v0 + 88) = &block_descriptor_62;
        v49 = _Block_copy(v142);
        v50 = *(v0 + 104);

        [v47 performBlockAndWait_];
        _Block_release(v49);
        LOBYTE(v49) = swift_isEscapingClosureAtFileLocation();

        if (v49)
        {
          goto LABEL_53;
        }

        *v1 = v6;
        if (qword_28140A0C8 != -1)
        {
          swift_once();
        }

        v51 = *(v0 + 344);
        v52 = *(v0 + 312);
        v53 = *(v0 + 320);
        v54 = *(v0 + 280);
        v55 = __swift_project_value_buffer(v52, qword_28140BD10);
        swift_beginAccess();
        (*(v53 + 16))(v51, v55, v52);

        v56 = sub_22B36050C();
        v57 = sub_22B360D2C();

        if (os_log_type_enabled(v56, v57))
        {
          v134 = *v139;
          v137 = *(v0 + 344);
          v58 = *(v0 + 320);
          v135 = *(v0 + 392);
          v136 = *(v0 + 312);
          v59 = v6;
          v61 = *(v0 + 272);
          v60 = *(v0 + 280);
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v147[0] = v63;
          *v62 = 136315394;
          v64 = v61;
          v6 = v59;
          *(v62 + 4) = sub_22B1A7B20(v64, v60, v147);
          *(v62 + 12) = 1024;
          *(v62 + 14) = v134;
          _os_log_impl(&dword_22B116000, v56, v57, "[IntervalBlocks] Added to share for %s with hasExportedEnergy %{BOOL}d", v62, 0x12u);
          __swift_destroy_boxed_opaque_existential_0(v63);
          v65 = v63;
          v1 = v133;
          MEMORY[0x23188F650](v65, -1, -1);
          v66 = v62;
          v2 = v138;
          MEMORY[0x23188F650](v66, -1, -1);

          (*(v58 + 8))(v137, v136);
          v67 = v139;
        }

        else
        {
          v68 = *(v0 + 344);
          v69 = *(v0 + 312);
          v70 = *(v0 + 320);

          (*(v70 + 8))(v68, v69);
          v67 = v132;
        }

        v11 = *v67;
        v7 = sub_22B30CEB0;
      }

      else
      {

        v7 = *(v0 + 376);
        v8 = *(v0 + 384);
      }

      v9 = *(v0 + 400);
      if (v9 == *(v0 + 368))
      {
        v6 = *v1;
        LOBYTE(i) = *(v2 + 232);
        goto LABEL_43;
      }

      v12 = *(v2 + 234);
      v10 = *(v2 + 232);
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    ;
  }

  v7 = 0;
  v8 = 0;
  v11 = 0;
LABEL_43:
  *(v0 + 244) = v11;
  *(v2 + 235) = i;
  *(v0 + 480) = v7;
  *(v0 + 488) = v8;
  *(v0 + 472) = v6;
  if (!(v6 >> 62))
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_45;
    }

LABEL_56:

    v98 = *(v0 + 264);
    v99 = swift_allocObject();
    *(v99 + 16) = v98;
    v100 = swift_allocObject();
    *(v100 + 16) = sub_22B30D52C;
    *(v100 + 24) = v99;
    *(v0 + 48) = sub_22B128240;
    *(v0 + 56) = v100;
    *(v0 + 16) = MEMORY[0x277D85DD0];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_22B32556C;
    *(v0 + 40) = &block_descriptor_49_0;
    v101 = _Block_copy(v1 - 29);
    v102 = *(v0 + 56);
    v103 = v98;

    [v103 performBlockAndWait_];
    _Block_release(v101);
    LOBYTE(v101) = swift_isEscapingClosureAtFileLocation();

    if (v101)
    {
      __break(1u);
    }

    else if (qword_28140A0C8 == -1)
    {
LABEL_58:
      v104 = *(v0 + 336);
      v105 = *(v0 + 312);
      v106 = *(v0 + 320);
      v107 = *(v0 + 280);
      v108 = __swift_project_value_buffer(v105, qword_28140BD10);
      swift_beginAccess();
      (*(v106 + 16))(v104, v108, v105);

      v109 = sub_22B36050C();
      v110 = sub_22B360D2C();

      if (os_log_type_enabled(v109, v110))
      {
        v111 = *(v0 + 244);
        v146 = *(v0 + 488);
        v143 = *(v0 + 360);
        v144 = *(v0 + 480);
        v112 = *(v0 + 320);
        v140 = *(v0 + 312);
        v141 = *(v0 + 336);
        v113 = *(v0 + 272);
        v114 = *(v0 + 280);
        v115 = swift_slowAlloc();
        v116 = swift_slowAlloc();
        v147[0] = v116;
        *v115 = 136315394;
        v117 = v114;
        v2 = v138;
        *(v115 + 4) = sub_22B1A7B20(v113, v117, v147);
        *(v115 + 12) = 1024;
        *(v115 + 14) = v111;
        _os_log_impl(&dword_22B116000, v109, v110, "[IntervalBlocks] Added to share for %s with hasExportedEnergy %{BOOL}d", v115, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v116);
        MEMORY[0x23188F650](v116, -1, -1);
        MEMORY[0x23188F650](v115, -1, -1);

        (*(v112 + 8))(v141, v140);

        v118 = v144;
      }

      else
      {
        v120 = *(v0 + 480);
        v119 = *(v0 + 488);
        v121 = *(v0 + 360);
        v122 = *(v0 + 336);
        v123 = *(v0 + 312);
        v124 = *(v0 + 320);

        (*(v124 + 8))(v122, v123);

        v118 = v120;
      }

      sub_22B144D48(v118);

      v126 = *(v0 + 344);
      v125 = *(v0 + 352);
      v128 = *(v0 + 328);
      v127 = *(v0 + 336);

      v129 = *(v0 + 8);
      v130 = *(v2 + 235);

      return v129(v130);
    }

    swift_once();
    goto LABEL_58;
  }

  if (!sub_22B36109C())
  {
    goto LABEL_56;
  }

LABEL_45:
  v86 = *(v0 + 288);
  v85 = *(v0 + 296);
  v87 = *(v0 + 264);
  v88 = sub_22B207EFC();
  *(v0 + 496) = v88;
  v89 = swift_task_alloc();
  *(v0 + 504) = v89;
  v89[2] = v87;
  v89[3] = v6;
  v89[4] = v88;
  v89[5] = v86;
  v90 = *(MEMORY[0x277D85A40] + 4);
  v81 = swift_task_alloc();
  *(v0 + 512) = v81;
  *v81 = v0;
  v81[1] = sub_22B30B064;
  v91 = MEMORY[0x277D84F78];
  v80 = sub_22B1D820C;
  v83 = 0x800000022B36C2C0;
LABEL_46:
  v79 = v91 + 8;
  v82 = 0xD000000000000044;
  v84 = v89;
LABEL_47:

  return MEMORY[0x2822008A0](v81, 0, 0, v82, v83, v80, v84, v79);
}

uint64_t sub_22B30901C()
{
  v2 = *v1;
  v3 = *(*v1 + 416);
  v7 = *v1;
  *(*v1 + 424) = v0;

  if (v0)
  {
    v4 = sub_22B30B5F4;
  }

  else
  {
    v5 = *(v2 + 408);

    v4 = sub_22B309138;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22B309138()
{
  v145 = v0;
  v2 = v0 + 232;
  v1 = *(v0 + 232);
  LOBYTE(v3) = *(v0 + 240);
  if (v1 >> 62)
  {
LABEL_52:
    v94 = v1;
    v4 = sub_22B36109C();
    v1 = v94;
  }

  else
  {
    v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = (v2 + 64);
  aBlock = (v2 - 216);
  v139 = (v2 - 168);
  if (v4)
  {
    sub_22B35506C(v1);
  }

  else
  {
  }

  v6 = v3 | *(v0 + 241);
  v136 = (v2 + 298);
  v130 = (v2 + 297);
  v7 = &unk_28140A000;
  v8 = v6;
  v9 = v6;
  v131 = (v2 + 64);
  while (1)
  {
    *(v5 + 234) = v9 & 1;
    *(v5 + 233) = v8 & 1;
    *(v5 + 232) = v6 & 1;
    if (__ROR8__(0x8F5C28F5C28F5C29 * *(*(v0 + 360) + 16) + 0x51EB851EB851EB8, 2) <= 0x28F5C28F5C28F5CuLL)
    {
      v12 = *(v0 + 248);
      *(v0 + 432) = v12;
      if (v12 >> 62)
      {
        v66 = v12;
        v67 = sub_22B36109C();
        v12 = v66;
        if (v67)
        {
LABEL_48:
          v89 = *(v0 + 288);
          v88 = *(v0 + 296);
          v90 = *(v0 + 264);
          v91 = v12;
          v92 = sub_22B207EFC();
          *(v0 + 440) = v92;
          v84 = swift_task_alloc();
          *(v0 + 448) = v84;
          v84[2] = v90;
          v84[3] = v91;
          v84[4] = v92;
          v84[5] = v89;
          v93 = *(MEMORY[0x277D85A40] + 4);
          v76 = swift_task_alloc();
          *(v0 + 456) = v76;
          *v76 = v0;
          v76[1] = sub_22B309FF0;
          v77 = sub_22B30D520;
          v78 = 0x800000022B36C2C0;
          v79 = MEMORY[0x277D84F78] + 8;
          v80 = 0xD000000000000044;
          goto LABEL_44;
        }
      }

      else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_48;
      }

      v13 = *(v0 + 376);
      v14 = *(v0 + 384);
      v15 = *(v0 + 264);
      v11 = swift_allocObject();
      *(v11 + 16) = v15;
      v16 = v15;
      sub_22B144D48(v13);
      v17 = swift_allocObject();
      *(v17 + 16) = sub_22B30CEB0;
      *(v17 + 24) = v11;
      *(v0 + 96) = sub_22B128240;
      *(v0 + 104) = v17;
      *(v0 + 64) = MEMORY[0x277D85DD0];
      *(v0 + 72) = 1107296256;
      *(v0 + 80) = sub_22B32556C;
      *(v0 + 88) = &block_descriptor_62;
      v3 = _Block_copy(v139);
      v18 = *(v0 + 104);

      [v16 performBlockAndWait_];
      _Block_release(v3);
      LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

      if (v3)
      {
        goto LABEL_50;
      }

      *(v2 + 16) = MEMORY[0x277D84F90];
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v19 = *(v0 + 344);
      v20 = *(v0 + 312);
      v21 = *(v0 + 320);
      v22 = *(v0 + 280);
      v23 = __swift_project_value_buffer(v20, qword_28140BD10);
      swift_beginAccess();
      (*(v21 + 16))(v19, v23, v20);

      v24 = sub_22B36050C();
      v25 = sub_22B360D2C();

      if (os_log_type_enabled(v24, v25))
      {
        v132 = *v136;
        v135 = *(v0 + 344);
        v26 = *(v0 + 320);
        v133 = *(v0 + 392);
        v134 = *(v0 + 312);
        v27 = v2;
        v28 = *(v0 + 272);
        v29 = *(v0 + 280);
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v144[0] = v31;
        *v30 = 136315394;
        v32 = v29;
        v2 = v27;
        *(v30 + 4) = sub_22B1A7B20(v28, v32, v144);
        *(v30 + 12) = 1024;
        *(v30 + 14) = v132;
        _os_log_impl(&dword_22B116000, v24, v25, "[IntervalBlocks] Added to share for %s with hasExportedEnergy %{BOOL}d", v30, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v31);
        MEMORY[0x23188F650](v31, -1, -1);
        v33 = v30;
        v5 = v131;
        MEMORY[0x23188F650](v33, -1, -1);

        v1 = (*(v26 + 8))(v135, v134);
        v34 = v136;
      }

      else
      {
        v35 = *(v0 + 344);
        v36 = *(v0 + 312);
        v37 = *(v0 + 320);

        v1 = (*(v37 + 8))(v35, v36);
        v34 = v130;
      }

      v8 = *v34;
      v10 = sub_22B30CEB0;
      v7 = &unk_28140A000;
    }

    else
    {

      v10 = *(v0 + 376);
      v11 = *(v0 + 384);
    }

    v3 = *(v0 + 400);
    if (v3 == *(v0 + 368))
    {
      break;
    }

    v38 = *(v5 + 232);
    *(v0 + 243) = *(v5 + 234);
    *(v0 + 242) = v8 & 1;
    *(v0 + 241) = v38;
    *(v0 + 376) = v10;
    *(v0 + 384) = v11;
    v39 = *(v0 + 256);
    if ((v39 & 0xC000000000000001) != 0)
    {
      v1 = MEMORY[0x23188EAC0](v3);
    }

    else
    {
      if (v3 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_51;
      }

      v1 = *(v39 + 8 * v3 + 32);
    }

    v40 = v1;
    *(v0 + 392) = v1;
    *(v0 + 400) = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    if (sub_22B360F5C() == 0x6C61767265746E49 && v41 == 0xED00006B636F6C42)
    {

LABEL_43:
      v82 = *(v0 + 360);
      v142 = *(v0 + 272);
      v83 = *(v0 + 264);
      v84 = swift_task_alloc();
      *(v0 + 408) = v84;
      v85 = *v5;
      v84[2] = v40;
      *(v84 + 3) = v85;
      *(v84 + 5) = v142;
      v84[7] = v83;
      v84[8] = v82;
      v86 = *(MEMORY[0x277D85A40] + 4);
      v87 = swift_task_alloc();
      *(v0 + 416) = v87;
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD58, &qword_22B366F10);
      *v87 = v0;
      v87[1] = sub_22B30901C;
      v77 = sub_22B30CECC;
      v80 = 0xD000000000000048;
      v78 = 0x800000022B36DEF0;
      v76 = v2;
LABEL_44:
      v81 = v84;
LABEL_45:

      return MEMORY[0x2822008A0](v76, 0, 0, v80, v78, v77, v81, v79);
    }

    v42 = sub_22B36134C();

    if (v42)
    {
      goto LABEL_43;
    }

    if (v7[25] != -1)
    {
      swift_once();
    }

    v43 = *(v0 + 352);
    v44 = *(v0 + 312);
    v45 = *(v0 + 320);
    v46 = __swift_project_value_buffer(v44, qword_28140BD10);
    swift_beginAccess();
    (*(v45 + 16))(v43, v46, v44);
    v47 = sub_22B36050C();
    v48 = sub_22B360D1C();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_22B116000, v47, v48, "[Dropbox Bridge] Record is not of type IntervalReading!", v49, 2u);
      MEMORY[0x23188F650](v49, -1, -1);
    }

    v50 = *(v0 + 352);
    v51 = *(v0 + 312);
    v52 = *(v0 + 320);

    (*(v52 + 8))(v50, v51);
    sub_22B134CDC();
    v53 = swift_allocError();
    *v54 = 20;
    swift_willThrow();
    if (v7[25] != -1)
    {
      swift_once();
    }

    v56 = *(v0 + 320);
    v55 = *(v0 + 328);
    v57 = *(v0 + 312);
    v58 = __swift_project_value_buffer(v57, qword_28140BD10);
    swift_beginAccess();
    (*(v56 + 16))(v55, v58, v57);
    v59 = v53;
    v60 = sub_22B36050C();
    v61 = sub_22B360D1C();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *v62 = 138412290;
      v64 = v53;
      v65 = _swift_stdlib_bridgeErrorToNSError();
      *(v62 + 4) = v65;
      *v63 = v65;
      _os_log_impl(&dword_22B116000, v60, v61, "[Dropbox Bridge] Skiping record. Failed handle IntervalReading payload %@", v62, 0xCu);
      sub_22B123284(v63, &unk_27D8BAA90, &unk_22B362BC0);
      MEMORY[0x23188F650](v63, -1, -1);
      MEMORY[0x23188F650](v62, -1, -1);
    }

    else
    {
    }

    (*(*(v0 + 320) + 8))(*(v0 + 328), *(v0 + 312));
    v9 = *(v0 + 243);
    v8 = *(v0 + 242);
    v6 = *(v0 + 241);
  }

  v68 = *(v0 + 248);
  v69 = *(v5 + 232);
  *(v0 + 244) = v8 & 1;
  *(v5 + 235) = v69;
  *(v0 + 480) = v10;
  *(v0 + 488) = v11;
  *(v0 + 472) = v68;
  if (v68 >> 62)
  {
    if (sub_22B36109C())
    {
      goto LABEL_41;
    }
  }

  else if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_41:
    v71 = *(v0 + 288);
    v70 = *(v0 + 296);
    v72 = *(v0 + 264);
    v73 = sub_22B207EFC();
    *(v0 + 496) = v73;
    v74 = swift_task_alloc();
    *(v0 + 504) = v74;
    v74[2] = v72;
    v74[3] = v68;
    v74[4] = v73;
    v74[5] = v71;
    v75 = *(MEMORY[0x277D85A40] + 4);
    v76 = swift_task_alloc();
    *(v0 + 512) = v76;
    *v76 = v0;
    v76[1] = sub_22B30B064;
    v77 = sub_22B1D820C;
    v78 = 0x800000022B36C2C0;
    v79 = MEMORY[0x277D84F78] + 8;
    v80 = 0xD000000000000044;
    v81 = v74;
    goto LABEL_45;
  }

  v95 = *(v0 + 264);
  v96 = swift_allocObject();
  *(v96 + 16) = v95;
  v97 = swift_allocObject();
  *(v97 + 16) = sub_22B30D52C;
  *(v97 + 24) = v96;
  *(v0 + 48) = sub_22B128240;
  *(v0 + 56) = v97;
  *(v0 + 16) = MEMORY[0x277D85DD0];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_22B32556C;
  *(v0 + 40) = &block_descriptor_49_0;
  v98 = _Block_copy(aBlock);
  v99 = *(v0 + 56);
  v100 = v95;

  [v100 performBlockAndWait_];
  _Block_release(v98);
  LOBYTE(v98) = swift_isEscapingClosureAtFileLocation();

  if (v98)
  {
    __break(1u);
    goto LABEL_63;
  }

  if (v7[25] != -1)
  {
LABEL_63:
    swift_once();
  }

  v101 = *(v0 + 336);
  v102 = *(v0 + 312);
  v103 = *(v0 + 320);
  v104 = *(v0 + 280);
  v105 = __swift_project_value_buffer(v102, qword_28140BD10);
  swift_beginAccess();
  (*(v103 + 16))(v101, v105, v102);

  v106 = sub_22B36050C();
  v107 = sub_22B360D2C();

  if (os_log_type_enabled(v106, v107))
  {
    v108 = *(v0 + 244);
    v143 = *(v0 + 488);
    v140 = *(v0 + 360);
    v141 = *(v0 + 480);
    v109 = *(v0 + 320);
    v137 = *(v0 + 312);
    v138 = *(v0 + 336);
    v110 = *(v0 + 272);
    v111 = *(v0 + 280);
    v112 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    v144[0] = v113;
    *v112 = 136315394;
    v114 = v111;
    v5 = v131;
    *(v112 + 4) = sub_22B1A7B20(v110, v114, v144);
    *(v112 + 12) = 1024;
    *(v112 + 14) = v108;
    _os_log_impl(&dword_22B116000, v106, v107, "[IntervalBlocks] Added to share for %s with hasExportedEnergy %{BOOL}d", v112, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v113);
    MEMORY[0x23188F650](v113, -1, -1);
    MEMORY[0x23188F650](v112, -1, -1);

    (*(v109 + 8))(v138, v137);

    v115 = v141;
  }

  else
  {
    v117 = *(v0 + 480);
    v116 = *(v0 + 488);
    v118 = *(v0 + 360);
    v119 = *(v0 + 336);
    v120 = *(v0 + 312);
    v121 = *(v0 + 320);

    (*(v121 + 8))(v119, v120);

    v115 = v117;
  }

  sub_22B144D48(v115);

  v123 = *(v0 + 344);
  v122 = *(v0 + 352);
  v125 = *(v0 + 328);
  v124 = *(v0 + 336);

  v126 = *(v0 + 8);
  v127 = *(v5 + 235);

  return v126(v127);
}

uint64_t sub_22B309FF0()
{
  v2 = *v1;
  v3 = *(*v1 + 456);
  v4 = *v1;
  *(*v1 + 464) = v0;

  v5 = *(v2 + 448);
  v6 = *(v2 + 432);

  if (v0)
  {
    v7 = sub_22B30AFA8;
  }

  else
  {
    v7 = sub_22B30A140;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22B30A140()
{
  v131 = v0;
  v1 = (v0 + 64);

  while (2)
  {
    v3 = *(v0 + 376);
    v2 = *(v0 + 384);
    v4 = *(v0 + 264);
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v6 = v4;
    sub_22B144D48(v3);
    v7 = swift_allocObject();
    *(v7 + 16) = sub_22B30CEB0;
    *(v7 + 24) = v5;
    *(v0 + 96) = sub_22B128240;
    *(v0 + 104) = v7;
    *(v0 + 64) = MEMORY[0x277D85DD0];
    *(v0 + 72) = 1107296256;
    *(v0 + 80) = sub_22B32556C;
    *(v0 + 88) = &block_descriptor_62;
    v8 = _Block_copy(v1);
    v9 = *(v0 + 104);

    [v6 performBlockAndWait_];
    _Block_release(v8);
    LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

    if (v8)
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    *(v0 + 248) = MEMORY[0x277D84F90];
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 344);
    v12 = *(v0 + 312);
    v11 = *(v0 + 320);
    v13 = *(v0 + 280);
    v14 = __swift_project_value_buffer(v12, qword_28140BD10);
    swift_beginAccess();
    (*(v11 + 16))(v10, v14, v12);

    v15 = sub_22B36050C();
    v16 = sub_22B360D2C();

    if (os_log_type_enabled(v15, v16))
    {
      v120 = *(v0 + 530);
      v123 = *(v0 + 344);
      v17 = *(v0 + 320);
      v121 = *(v0 + 392);
      v122 = *(v0 + 312);
      v19 = *(v0 + 272);
      v18 = *(v0 + 280);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v130[0] = v21;
      *v20 = 136315394;
      *(v20 + 4) = sub_22B1A7B20(v19, v18, v130);
      *(v20 + 12) = 1024;
      *(v20 + 14) = v120;
      _os_log_impl(&dword_22B116000, v15, v16, "[IntervalBlocks] Added to share for %s with hasExportedEnergy %{BOOL}d", v20, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x23188F650](v21, -1, -1);
      MEMORY[0x23188F650](v20, -1, -1);

      (*(v17 + 8))(v123, v122);
      v22 = (v0 + 530);
    }

    else
    {
      v23 = *(v0 + 344);
      v24 = *(v0 + 312);
      v25 = *(v0 + 320);

      (*(v25 + 8))(v23, v24);
      v22 = (v0 + 529);
    }

    v26 = *v22;
    v27 = *(v0 + 400);
    v28 = sub_22B30CEB0;
    if (v27 != *(v0 + 368))
    {
      v28 = sub_22B30CEB0;
      while (1)
      {
        v29 = *(v0 + 528);
        *(v0 + 243) = *(v0 + 530);
        *(v0 + 242) = v26 & 1;
        *(v0 + 241) = v29;
        *(v0 + 376) = v28;
        *(v0 + 384) = v5;
        v30 = *(v0 + 256);
        if ((v30 & 0xC000000000000001) != 0)
        {
          v31 = MEMORY[0x23188EAC0](v27);
          v4 = 0x6C61767265746E49;
        }

        else
        {
          v4 = 0x6C61767265746E49;
          if (v27 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_46;
          }

          v31 = *(v30 + 8 * v27 + 32);
        }

        *(v0 + 392) = v31;
        *(v0 + 400) = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          __break(1u);
LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        if (sub_22B360F5C() == 0x6C61767265746E49 && v32 == 0xED00006B636F6C42)
        {

LABEL_41:
          v82 = *(v0 + 360);
          v128 = *(v0 + 272);
          v83 = *(v0 + 264);
          v84 = swift_task_alloc();
          *(v0 + 408) = v84;
          v85 = *(v0 + 296);
          *(v84 + 16) = v31;
          *(v84 + 24) = v85;
          *(v84 + 40) = v128;
          *(v84 + 56) = v83;
          *(v84 + 64) = v82;
          v86 = *(MEMORY[0x277D85A40] + 4);
          v87 = swift_task_alloc();
          *(v0 + 416) = v87;
          v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD58, &qword_22B366F10);
          *v87 = v0;
          v87[1] = sub_22B30901C;
          v70 = sub_22B30CECC;
          v69 = (v0 + 232);
          v73 = 0xD000000000000048;
          v71 = 0x800000022B36DEF0;
          v74 = v84;
          goto LABEL_42;
        }

        v34 = sub_22B36134C();

        if (v34)
        {
          goto LABEL_41;
        }

        if (qword_28140A0C8 != -1)
        {
          swift_once();
        }

        v35 = *(v0 + 352);
        v36 = *(v0 + 312);
        v37 = *(v0 + 320);
        v38 = __swift_project_value_buffer(v36, qword_28140BD10);
        swift_beginAccess();
        (*(v37 + 16))(v35, v38, v36);
        v39 = sub_22B36050C();
        v40 = sub_22B360D1C();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          *v41 = 0;
          _os_log_impl(&dword_22B116000, v39, v40, "[Dropbox Bridge] Record is not of type IntervalReading!", v41, 2u);
          MEMORY[0x23188F650](v41, -1, -1);
        }

        v42 = *(v0 + 352);
        v44 = *(v0 + 312);
        v43 = *(v0 + 320);

        (*(v43 + 8))(v42, v44);
        sub_22B134CDC();
        v45 = swift_allocError();
        *v46 = 20;
        swift_willThrow();
        if (qword_28140A0C8 != -1)
        {
          swift_once();
        }

        v48 = *(v0 + 320);
        v47 = *(v0 + 328);
        v49 = *(v0 + 312);
        v50 = __swift_project_value_buffer(v49, qword_28140BD10);
        swift_beginAccess();
        (*(v48 + 16))(v47, v50, v49);
        v51 = v45;
        v52 = sub_22B36050C();
        v53 = sub_22B360D1C();

        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          *v54 = 138412290;
          v56 = v45;
          v57 = _swift_stdlib_bridgeErrorToNSError();
          *(v54 + 4) = v57;
          *v55 = v57;
          _os_log_impl(&dword_22B116000, v52, v53, "[Dropbox Bridge] Skiping record. Failed handle IntervalReading payload %@", v54, 0xCu);
          sub_22B123284(v55, &unk_27D8BAA90, &unk_22B362BC0);
          MEMORY[0x23188F650](v55, -1, -1);
          MEMORY[0x23188F650](v54, -1, -1);
        }

        else
        {
        }

        (*(*(v0 + 320) + 8))(*(v0 + 328), *(v0 + 312));
        v26 = *(v0 + 242);
        v58 = *(v0 + 241);
        *(v0 + 529) = *(v0 + 242);
        *(v0 + 528) = v58;
        if (__ROR8__(0x8F5C28F5C28F5C29 * *(*(v0 + 360) + 16) + 0x51EB851EB851EB8, 2) < 0x28F5C28F5C28F5DuLL)
        {
          break;
        }

        v28 = *(v0 + 376);
        v5 = *(v0 + 384);
        v27 = *(v0 + 400);
        if (v27 == *(v0 + 368))
        {
          goto LABEL_37;
        }
      }

      v59 = *(v0 + 248);
      *(v0 + 432) = v59;
      if (v59 >> 62)
      {
        v60 = v59;
        v61 = sub_22B36109C();
        v59 = v60;
        v1 = (v0 + 64);
        if (!v61)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v1 = (v0 + 64);
        if (!*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_34:

          continue;
        }
      }

      v63 = *(v0 + 288);
      v62 = *(v0 + 296);
      v64 = *(v0 + 264);
      v65 = v59;
      v66 = sub_22B207EFC();
      *(v0 + 440) = v66;
      v67 = swift_task_alloc();
      *(v0 + 448) = v67;
      v67[2] = v64;
      v67[3] = v65;
      v67[4] = v66;
      v67[5] = v63;
      v68 = *(MEMORY[0x277D85A40] + 4);
      v69 = swift_task_alloc();
      *(v0 + 456) = v69;
      *v69 = v0;
      v69[1] = sub_22B309FF0;
      v70 = sub_22B30D520;
      v71 = 0x800000022B36C2C0;
      v72 = MEMORY[0x277D84F78] + 8;
      v73 = 0xD000000000000044;
      v74 = v67;
      goto LABEL_42;
    }

    break;
  }

LABEL_37:
  v4 = *(v0 + 248);
  v75 = *(v0 + 528);
  *(v0 + 244) = v26;
  *(v0 + 531) = v75;
  *(v0 + 480) = v28;
  *(v0 + 488) = v5;
  *(v0 + 472) = v4;
  if (v4 >> 62)
  {
LABEL_48:
    if (sub_22B36109C())
    {
      goto LABEL_39;
    }

    goto LABEL_49;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_39:
    v76 = *(v0 + 288);
    v77 = *(v0 + 296);
    v78 = *(v0 + 264);
    v79 = sub_22B207EFC();
    *(v0 + 496) = v79;
    v80 = swift_task_alloc();
    *(v0 + 504) = v80;
    v80[2] = v78;
    v80[3] = v4;
    v80[4] = v79;
    v80[5] = v76;
    v81 = *(MEMORY[0x277D85A40] + 4);
    v69 = swift_task_alloc();
    *(v0 + 512) = v69;
    *v69 = v0;
    v69[1] = sub_22B30B064;
    v70 = sub_22B1D820C;
    v71 = 0x800000022B36C2C0;
    v72 = MEMORY[0x277D84F78] + 8;
    v73 = 0xD000000000000044;
    v74 = v80;
LABEL_42:

    return MEMORY[0x2822008A0](v69, 0, 0, v73, v71, v70, v74, v72);
  }

LABEL_49:

  v88 = *(v0 + 264);
  v89 = swift_allocObject();
  *(v89 + 16) = v88;
  v90 = swift_allocObject();
  *(v90 + 16) = sub_22B30D52C;
  *(v90 + 24) = v89;
  *(v0 + 48) = sub_22B128240;
  *(v0 + 56) = v90;
  *(v0 + 16) = MEMORY[0x277D85DD0];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_22B32556C;
  *(v0 + 40) = &block_descriptor_49_0;
  v91 = _Block_copy((v0 + 16));
  v92 = *(v0 + 56);
  v93 = v88;

  [v93 performBlockAndWait_];
  _Block_release(v91);
  LOBYTE(v91) = swift_isEscapingClosureAtFileLocation();

  if (v91)
  {
    __break(1u);
    goto LABEL_58;
  }

  if (qword_28140A0C8 != -1)
  {
LABEL_58:
    swift_once();
  }

  v94 = *(v0 + 336);
  v95 = *(v0 + 312);
  v96 = *(v0 + 320);
  v97 = *(v0 + 280);
  v98 = __swift_project_value_buffer(v95, qword_28140BD10);
  swift_beginAccess();
  (*(v96 + 16))(v94, v98, v95);

  v99 = sub_22B36050C();
  v100 = sub_22B360D2C();

  if (os_log_type_enabled(v99, v100))
  {
    v101 = *(v0 + 244);
    v129 = *(v0 + 488);
    v127 = *(v0 + 480);
    v125 = *(v0 + 336);
    v126 = *(v0 + 360);
    v102 = *(v0 + 320);
    v124 = *(v0 + 312);
    v103 = *(v0 + 272);
    v104 = *(v0 + 280);
    v105 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    v130[0] = v106;
    *v105 = 136315394;
    *(v105 + 4) = sub_22B1A7B20(v103, v104, v130);
    *(v105 + 12) = 1024;
    *(v105 + 14) = v101;
    _os_log_impl(&dword_22B116000, v99, v100, "[IntervalBlocks] Added to share for %s with hasExportedEnergy %{BOOL}d", v105, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v106);
    MEMORY[0x23188F650](v106, -1, -1);
    MEMORY[0x23188F650](v105, -1, -1);

    (*(v102 + 8))(v125, v124);

    sub_22B144D48(v127);
  }

  else
  {
    v108 = *(v0 + 480);
    v107 = *(v0 + 488);
    v109 = *(v0 + 360);
    v110 = *(v0 + 336);
    v111 = *(v0 + 312);
    v112 = *(v0 + 320);

    (*(v112 + 8))(v110, v111);

    sub_22B144D48(v108);
  }

  v114 = *(v0 + 344);
  v113 = *(v0 + 352);
  v115 = *(v0 + 328);
  v116 = *(v0 + 336);

  v117 = *(v0 + 8);
  v118 = *(v0 + 531);

  return v117(v118);
}

uint64_t sub_22B30AFA8()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 360);

  v3 = *(v0 + 464);
  v4 = *(v0 + 384);
  v6 = *(v0 + 344);
  v5 = *(v0 + 352);
  v8 = *(v0 + 328);
  v7 = *(v0 + 336);
  sub_22B144D48(*(v0 + 376));

  v9 = *(v0 + 8);

  return v9(0);
}

uint64_t sub_22B30B064()
{
  v2 = *v1;
  v3 = *(*v1 + 512);
  v8 = *v1;
  *(*v1 + 520) = v0;

  if (v0)
  {
    v4 = sub_22B30B530;
  }

  else
  {
    v5 = *(v2 + 504);
    v6 = *(v2 + 472);

    v4 = sub_22B30B18C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22B30B18C()
{
  v40 = v0;

  v1 = *(v0 + 264);
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_22B30D52C;
  *(v3 + 24) = v2;
  *(v0 + 48) = sub_22B128240;
  *(v0 + 56) = v3;
  *(v0 + 16) = MEMORY[0x277D85DD0];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_22B32556C;
  *(v0 + 40) = &block_descriptor_49_0;
  v4 = _Block_copy((v0 + 16));
  v5 = *(v0 + 56);
  v6 = v1;

  [v6 performBlockAndWait_];
  _Block_release(v4);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else if (qword_28140A0C8 == -1)
  {
    goto LABEL_3;
  }

  swift_once();
LABEL_3:
  v7 = *(v0 + 336);
  v8 = *(v0 + 312);
  v9 = *(v0 + 320);
  v10 = *(v0 + 280);
  v11 = __swift_project_value_buffer(v8, qword_28140BD10);
  swift_beginAccess();
  (*(v9 + 16))(v7, v11, v8);

  v12 = sub_22B36050C();
  v13 = sub_22B360D2C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = *(v0 + 244);
    v37 = *(v0 + 480);
    v38 = *(v0 + 488);
    v35 = *(v0 + 336);
    v36 = *(v0 + 360);
    v15 = *(v0 + 320);
    v34 = *(v0 + 312);
    v16 = *(v0 + 272);
    v17 = *(v0 + 280);
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v39 = v19;
    *v18 = 136315394;
    *(v18 + 4) = sub_22B1A7B20(v16, v17, &v39);
    *(v18 + 12) = 1024;
    *(v18 + 14) = v14;
    _os_log_impl(&dword_22B116000, v12, v13, "[IntervalBlocks] Added to share for %s with hasExportedEnergy %{BOOL}d", v18, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x23188F650](v19, -1, -1);
    MEMORY[0x23188F650](v18, -1, -1);

    (*(v15 + 8))(v35, v34);

    v20 = v37;
  }

  else
  {
    v22 = *(v0 + 480);
    v21 = *(v0 + 488);
    v23 = *(v0 + 360);
    v24 = *(v0 + 336);
    v25 = *(v0 + 312);
    v26 = *(v0 + 320);

    (*(v26 + 8))(v24, v25);

    v20 = v22;
  }

  sub_22B144D48(v20);

  v28 = *(v0 + 344);
  v27 = *(v0 + 352);
  v30 = *(v0 + 328);
  v29 = *(v0 + 336);

  v31 = *(v0 + 8);
  v32 = *(v0 + 531);

  return v31(v32);
}

uint64_t sub_22B30B530()
{
  v2 = v0[62];
  v1 = v0[63];
  v3 = v0[59];
  v4 = v0[45];

  v5 = v0[65];
  v6 = v0[61];
  v8 = v0[43];
  v7 = v0[44];
  v10 = v0[41];
  v9 = v0[42];
  sub_22B144D48(v0[60]);

  v11 = v0[1];

  return v11(0);
}

uint64_t sub_22B30B5F4()
{
  v138 = v0;
  v1 = v0 + 296;
  aBlock = (v0 + 16);
  v2 = *(v0 + 408);

  v3 = *(v0 + 424);
  v4 = &unk_28140A000;
  v135 = 138412290;
  while (1)
  {
    if (v4[25] != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 320);
    v9 = *(v0 + 328);
    v11 = *(v0 + 312);
    v12 = __swift_project_value_buffer(v11, qword_28140BD10);
    swift_beginAccess();
    (*(v10 + 16))(v9, v12, v11);
    v13 = v3;
    v14 = sub_22B36050C();
    v15 = sub_22B360D1C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = v3;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;
      _os_log_impl(&dword_22B116000, v14, v15, "[Dropbox Bridge] Skiping record. Failed handle IntervalReading payload %@", v16, 0xCu);
      sub_22B123284(v17, &unk_27D8BAA90, &unk_22B362BC0);
      MEMORY[0x23188F650](v17, -1, -1);
      MEMORY[0x23188F650](v16, -1, -1);
    }

    else
    {
    }

    (*(*(v0 + 320) + 8))(*(v0 + 328), *(v0 + 312));
    v20 = *(v0 + 242);
    v21 = *(v0 + 241);
    *(v1 + 233) = *(v0 + 242);
    *(v1 + 232) = v21;
    if (__ROR8__(0x8F5C28F5C28F5C29 * *(*(v0 + 360) + 16) + 0x51EB851EB851EB8, 2) < 0x28F5C28F5C28F5DuLL)
    {
      v24 = *(v0 + 248);
      *(v0 + 432) = v24;
      if (v24 >> 62)
      {
        v65 = v24;
        v66 = sub_22B36109C();
        v24 = v65;
        if (v66)
        {
LABEL_43:
          v87 = *(v0 + 288);
          v86 = *(v0 + 296);
          v88 = *(v0 + 264);
          v89 = v24;
          v90 = sub_22B207EFC();
          *(v0 + 440) = v90;
          v82 = swift_task_alloc();
          *(v0 + 448) = v82;
          v82[2] = v88;
          v82[3] = v89;
          v82[4] = v90;
          v82[5] = v87;
          v91 = *(MEMORY[0x277D85A40] + 4);
          v74 = swift_task_alloc();
          *(v0 + 456) = v74;
          *v74 = v0;
          v74[1] = sub_22B309FF0;
          v75 = sub_22B30D520;
          v76 = 0x800000022B36C2C0;
          v77 = MEMORY[0x277D84F78] + 8;
          v78 = 0xD000000000000044;
LABEL_39:
          v79 = v82;
          goto LABEL_40;
        }
      }

      else if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_43;
      }

      v25 = *(v0 + 376);
      v26 = *(v0 + 384);
      v27 = *(v0 + 264);
      v23 = swift_allocObject();
      *(v23 + 16) = v27;
      v28 = v27;
      sub_22B144D48(v25);
      v29 = swift_allocObject();
      *(v29 + 16) = sub_22B30CEB0;
      *(v29 + 24) = v23;
      *(v0 + 96) = sub_22B128240;
      *(v0 + 104) = v29;
      *(v0 + 64) = MEMORY[0x277D85DD0];
      *(v0 + 72) = 1107296256;
      *(v0 + 80) = sub_22B32556C;
      *(v0 + 88) = &block_descriptor_62;
      v30 = _Block_copy((v0 + 64));
      v31 = *(v0 + 104);

      [v28 performBlockAndWait_];
      _Block_release(v30);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        goto LABEL_45;
      }

      *(v0 + 248) = MEMORY[0x277D84F90];
      if (v4[25] != -1)
      {
        swift_once();
      }

      v33 = *(v0 + 344);
      v34 = *(v0 + 312);
      v35 = *(v0 + 320);
      v36 = *(v0 + 280);
      v37 = __swift_project_value_buffer(v34, qword_28140BD10);
      swift_beginAccess();
      (*(v35 + 16))(v33, v37, v34);

      v38 = sub_22B36050C();
      v39 = sub_22B360D2C();

      if (os_log_type_enabled(v38, v39))
      {
        v126 = *(v0 + 530);
        v130 = *(v0 + 344);
        v40 = *(v0 + 320);
        v127 = *(v0 + 392);
        v128 = *(v0 + 312);
        v41 = v1;
        v43 = *(v0 + 272);
        v42 = *(v0 + 280);
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v137[0] = v45;
        *v44 = 136315394;
        v46 = v43;
        v1 = v41;
        *(v44 + 4) = sub_22B1A7B20(v46, v42, v137);
        *(v44 + 12) = 1024;
        *(v44 + 14) = v126;
        _os_log_impl(&dword_22B116000, v38, v39, "[IntervalBlocks] Added to share for %s with hasExportedEnergy %{BOOL}d", v44, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v45);
        v47 = v45;
        v4 = &unk_28140A000;
        MEMORY[0x23188F650](v47, -1, -1);
        MEMORY[0x23188F650](v44, -1, -1);

        (*(v40 + 8))(v130, v128);
        v48 = (v0 + 530);
      }

      else
      {
        v49 = *(v0 + 344);
        v50 = *(v0 + 312);
        v51 = *(v0 + 320);

        (*(v51 + 8))(v49, v50);
        v48 = (v0 + 529);
      }

      v20 = *v48;
      v22 = sub_22B30CEB0;
    }

    else
    {

      v22 = *(v0 + 376);
      v23 = *(v0 + 384);
    }

    isEscapingClosureAtFileLocation = *(v0 + 400);
    if (isEscapingClosureAtFileLocation == *(v0 + 368))
    {
      break;
    }

    v52 = *(v1 + 232);
    *(v0 + 243) = *(v1 + 234);
    *(v0 + 242) = v20;
    *(v0 + 241) = v52;
    *(v0 + 376) = v22;
    *(v0 + 384) = v23;
    v53 = *(v0 + 256);
    if ((v53 & 0xC000000000000001) != 0)
    {
      v54 = MEMORY[0x23188EAC0](isEscapingClosureAtFileLocation);
    }

    else
    {
      if (isEscapingClosureAtFileLocation >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_46;
      }

      v54 = *(v53 + 8 * isEscapingClosureAtFileLocation + 32);
    }

    v55 = v54;
    *(v0 + 392) = v54;
    *(v0 + 400) = isEscapingClosureAtFileLocation + 1;
    if (__OFADD__(isEscapingClosureAtFileLocation, 1))
    {
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      if (!sub_22B36109C())
      {
        goto LABEL_48;
      }

LABEL_36:
      v69 = *(v0 + 288);
      v68 = *(v0 + 296);
      v70 = *(v0 + 264);
      v71 = sub_22B207EFC();
      *(v0 + 496) = v71;
      v72 = swift_task_alloc();
      *(v0 + 504) = v72;
      v72[2] = v70;
      v72[3] = isEscapingClosureAtFileLocation;
      v72[4] = v71;
      v72[5] = v69;
      v73 = *(MEMORY[0x277D85A40] + 4);
      v74 = swift_task_alloc();
      *(v0 + 512) = v74;
      *v74 = v0;
      v74[1] = sub_22B30B064;
      v75 = sub_22B1D820C;
      v76 = 0x800000022B36C2C0;
      v77 = MEMORY[0x277D84F78] + 8;
      v78 = 0xD000000000000044;
      v79 = v72;
LABEL_40:

      return MEMORY[0x2822008A0](v74, 0, 0, v78, v76, v75, v79, v77);
    }

    if (sub_22B360F5C() == 0x6C61767265746E49 && v56 == 0xED00006B636F6C42)
    {

LABEL_38:
      v80 = *(v0 + 360);
      v136 = *(v0 + 272);
      v81 = *(v0 + 264);
      v82 = swift_task_alloc();
      *(v0 + 408) = v82;
      v83 = *v1;
      v82[2] = v55;
      *(v82 + 3) = v83;
      *(v82 + 5) = v136;
      v82[7] = v81;
      v82[8] = v80;
      v84 = *(MEMORY[0x277D85A40] + 4);
      v85 = swift_task_alloc();
      *(v0 + 416) = v85;
      v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD58, &qword_22B366F10);
      *v85 = v0;
      v85[1] = sub_22B30901C;
      v75 = sub_22B30CECC;
      v74 = (v0 + 232);
      v78 = 0xD000000000000048;
      v76 = 0x800000022B36DEF0;
      goto LABEL_39;
    }

    v57 = sub_22B36134C();

    if (v57)
    {
      goto LABEL_38;
    }

    if (v4[25] != -1)
    {
      swift_once();
    }

    v58 = *(v0 + 352);
    v59 = *(v0 + 312);
    v60 = *(v0 + 320);
    v61 = __swift_project_value_buffer(v59, qword_28140BD10);
    swift_beginAccess();
    (*(v60 + 16))(v58, v61, v59);
    v62 = sub_22B36050C();
    v63 = sub_22B360D1C();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_22B116000, v62, v63, "[Dropbox Bridge] Record is not of type IntervalReading!", v64, 2u);
      MEMORY[0x23188F650](v64, -1, -1);
    }

    v5 = *(v0 + 352);
    v6 = *(v0 + 312);
    v7 = *(v0 + 320);

    (*(v7 + 8))(v5, v6);
    sub_22B134CDC();
    v3 = swift_allocError();
    *v8 = 20;
    swift_willThrow();
  }

  isEscapingClosureAtFileLocation = *(v0 + 248);
  v67 = *(v1 + 232);
  *(v0 + 244) = v20;
  *(v1 + 235) = v67;
  *(v0 + 480) = v22;
  *(v0 + 488) = v23;
  *(v0 + 472) = isEscapingClosureAtFileLocation;
  if (isEscapingClosureAtFileLocation >> 62)
  {
    goto LABEL_47;
  }

  if (*((isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_36;
  }

LABEL_48:

  v92 = *(v0 + 264);
  v93 = swift_allocObject();
  *(v93 + 16) = v92;
  v94 = swift_allocObject();
  *(v94 + 16) = sub_22B30D52C;
  *(v94 + 24) = v93;
  *(v0 + 48) = sub_22B128240;
  *(v0 + 56) = v94;
  *(v0 + 16) = MEMORY[0x277D85DD0];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_22B32556C;
  *(v0 + 40) = &block_descriptor_49_0;
  v95 = _Block_copy(aBlock);
  v96 = *(v0 + 56);
  v97 = v92;

  [v97 performBlockAndWait_];
  _Block_release(v95);
  LOBYTE(v95) = swift_isEscapingClosureAtFileLocation();

  if (v95)
  {
    __break(1u);
    goto LABEL_57;
  }

  v135 = v1;
  if (v4[25] != -1)
  {
LABEL_57:
    swift_once();
  }

  v98 = *(v0 + 336);
  v99 = *(v0 + 312);
  v100 = *(v0 + 320);
  v101 = *(v0 + 280);
  v102 = __swift_project_value_buffer(v99, qword_28140BD10);
  swift_beginAccess();
  (*(v100 + 16))(v98, v102, v99);

  v103 = sub_22B36050C();
  v104 = sub_22B360D2C();

  if (os_log_type_enabled(v103, v104))
  {
    v105 = *(v0 + 244);
    v133 = *(v0 + 480);
    v134 = *(v0 + 488);
    v131 = *(v0 + 336);
    v132 = *(v0 + 360);
    v106 = *(v0 + 320);
    v129 = *(v0 + 312);
    v107 = *(v0 + 272);
    v108 = *(v0 + 280);
    v109 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    v137[0] = v110;
    *v109 = 136315394;
    *(v109 + 4) = sub_22B1A7B20(v107, v108, v137);
    *(v109 + 12) = 1024;
    *(v109 + 14) = v105;
    _os_log_impl(&dword_22B116000, v103, v104, "[IntervalBlocks] Added to share for %s with hasExportedEnergy %{BOOL}d", v109, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v110);
    MEMORY[0x23188F650](v110, -1, -1);
    MEMORY[0x23188F650](v109, -1, -1);

    (*(v106 + 8))(v131, v129);

    v111 = v133;
  }

  else
  {
    v113 = *(v0 + 480);
    v112 = *(v0 + 488);
    v114 = *(v0 + 360);
    v115 = *(v0 + 336);
    v116 = *(v0 + 312);
    v117 = *(v0 + 320);

    (*(v117 + 8))(v115, v116);

    v111 = v113;
  }

  sub_22B144D48(v111);

  v119 = *(v0 + 344);
  v118 = *(v0 + 352);
  v121 = *(v0 + 328);
  v120 = *(v0 + 336);

  v122 = *(v0 + 8);
  v123 = *(v135 + 235);

  return v122(v123);
}

uint64_t sub_22B30C418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = a3;
  v4[17] = v3;
  v4[14] = a1;
  v4[15] = a2;
  v5 = sub_22B36052C();
  v4[18] = v5;
  v6 = *(v5 - 8);
  v4[19] = v6;
  v7 = *(v6 + 64) + 15;
  v4[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B30C4DC, v3, 0);
}

uint64_t sub_22B30C4DC()
{
  v1 = v0[17];
  v2 = *(v1 + 112);
  v0[21] = v2;
  if (v2)
  {
    v3 = v0[16];
    v4 = *(v1 + 120);
    v0[22] = v4;

    v5 = v4;
    v6 = [v3 recordID];
    v7 = [v6 zoneID];

    v8 = [v7 zoneName];
    v9 = sub_22B36084C();
    v11 = v10;

    v0[23] = v11;
    v12 = sub_22B207EFC();
    v13 = [v12 newBackgroundContext];
    v0[24] = v13;
    v14 = sub_22B36081C();
    [v13 setTransactionAuthor_];

    [v13 setMergePolicy_];
    [v13 setUndoManager_];
    [v13 setShouldRefreshAfterSave_];
    [v13 setStalenessInterval_];
    [v13 setShouldDeleteInaccessibleFaults_];

    v15 = swift_task_alloc();
    v0[25] = v15;
    *v15 = v0;
    v15[1] = sub_22B30C888;
    v16 = v0[15];
    v17 = v0[16];
    v18 = v0[14];

    return sub_22B308060(v18, v13, v9, v11, v16, v17, v2, v5);
  }

  else
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v21 = v0[19];
    v20 = v0[20];
    v22 = v0[18];
    v23 = __swift_project_value_buffer(v22, qword_28140BD10);
    swift_beginAccess();
    (*(v21 + 16))(v20, v23, v22);
    v24 = sub_22B36050C();
    v25 = sub_22B360D1C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_22B116000, v24, v25, "[Dropbox Bridge] failed to get coredata model instance", v26, 2u);
      MEMORY[0x23188F650](v26, -1, -1);
    }

    v28 = v0[19];
    v27 = v0[20];
    v29 = v0[18];

    (*(v28 + 8))(v27, v29);
    sub_22B134CDC();
    swift_allocError();
    *v30 = 13;
    swift_willThrow();
    v31 = v0[20];

    v32 = v0[1];

    return v32(0);
  }
}

uint64_t sub_22B30C888(char a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 104) = v1;
  *(v4 + 96) = a1;
  *(v4 + 88) = v2;
  v5 = *(v3 + 200);
  v11 = *v2;
  *(v4 + 208) = v1;

  if (v1)
  {
    v6 = *(v4 + 136);
    v7 = sub_22B30CBA4;
  }

  else
  {
    v8 = *(v4 + 184);
    v9 = *(v4 + 136);

    v7 = sub_22B30C9BC;
    v6 = v9;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_22B30C9BC()
{
  v1 = *(v0[17] + 128);
  if (v1)
  {
    v2 = v0[24];
    v3 = v0[21];
    v4 = v0[22];
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_22B1451F0;
    *(v6 + 24) = v5;
    v0[6] = sub_22B128240;
    v0[7] = v6;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_22B32556C;
    v0[5] = &block_descriptor_35;
    v7 = _Block_copy(v0 + 2);
    v8 = v0[7];
    v9 = v1;

    [v9 performBlockAndWait_];

    _Block_release(v7);
    LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

    if ((v3 & 1) == 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v11 = v0[21];
  v10 = v0[22];

LABEL_5:
  v12 = *(v0 + 96);
  v13 = v0[20];

  v14 = v0[1];

  return v14(v12);
}

uint64_t sub_22B30CBA4()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 168);
  v3 = *(v0 + 176);

  v4 = *(v0 + 208);
  v5 = *(v0 + 160);

  v6 = *(v0 + 8);

  return v6(0);
}

uint64_t sub_22B30CC34(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22B30CCEC(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = sub_22B35D95C();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_22B35D92C();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_22B35DC9C();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_22B30CD8C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_22B35D95C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_22B35D90C();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_22B35DC9C();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_22B30CE08(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_22B35D95C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_22B35D90C();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_22B30CEE0(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD60, &unk_22B366F18) - 8);
  v4 = v1[3];
  v15 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v10 = v1[8];
  v9 = v1[9];
  v11 = v1[10];
  v12 = v1 + ((*(v3 + 80) + 88) & ~*(v3 + 80));
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_22B119A60;

  return sub_22B2FF148(a1, v15, v4, v5, v6, v7, v8, v10);
}

uint64_t type metadata accessor for CDIntervalBlocks()
{
  result = qword_27D8BADD8;
  if (!qword_27D8BADD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22B30D114(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD88, &qword_22B366F50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B30D184(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CDIntervalBlocks();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B30D1E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22B30D248(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD88, &qword_22B366F50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *sub_22B30D2B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_22B3073FC(sub_22B30D320, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_22B30D340(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8BA0A0, &qword_22B362BD0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22B30D3B8()
{
  sub_22B35DE9C();
  if (v0 <= 0x3F)
  {
    sub_22B35FEFC();
    if (v1 <= 0x3F)
    {
      sub_22B35FF1C();
      if (v2 <= 0x3F)
      {
        sub_22B35FEDC();
        if (v3 <= 0x3F)
        {
          sub_22B30D4BC();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_22B30D4BC()
{
  if (!qword_27D8BADE8)
  {
    sub_22B35FEBC();
    v0 = sub_22B360AAC();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8BADE8);
    }
  }
}

void sub_22B30D5D0(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v134 = a3;
  v139 = a1;
  v146 = *MEMORY[0x277D85DE8];
  v4 = sub_22B36052C();
  v137 = *(v4 - 8);
  v138 = v4;
  v5 = *(v137 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v130[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v130[-v9];
  MEMORY[0x28223BE20](v11);
  v13 = &v130[-v12];
  MEMORY[0x28223BE20](v14);
  v16 = &v130[-v15];
  MEMORY[0x28223BE20](v17);
  v19 = &v130[-v18];
  *&v21 = MEMORY[0x28223BE20](v20).n128_u64[0];
  v23 = &v130[-v22];
  v136 = a2;
  v24 = [a2 entitlements];
  if (!v24)
  {
    goto LABEL_8;
  }

  v25 = v24;
  v26 = sub_22B3606EC();

  v140 = 0xD000000000000016;
  v141 = 0x800000022B36E2C0;
  sub_22B36110C();
  if (!*(v26 + 16) || (v27 = sub_22B33B248(v143), (v28 & 1) == 0))
  {

    sub_22B1B0560(v143);
LABEL_8:
    v144 = 0u;
    v145 = 0u;
    goto LABEL_9;
  }

  sub_22B170C58(*(v26 + 56) + 32 * v27, &v144);
  sub_22B1B0560(v143);

  if (!*(&v145 + 1))
  {
LABEL_9:
    sub_22B30EF6C(&v144);
    v30 = v139;
    goto LABEL_10;
  }

  v29 = swift_dynamicCast();
  v30 = v139;
  if (v29)
  {
    v31 = v143[0];
    v32 = v143[1];
    goto LABEL_11;
  }

LABEL_10:
  v32 = 0xEE00444920707041;
  v31 = 0x20676E697373694DLL;
LABEL_11:
  v133 = v31;
  objc_opt_self();
  v33 = swift_dynamicCastObjCClass();
  if (v33)
  {
    v34 = v30;
  }

  v35 = [v30 requestType];
  if (v35 > 4)
  {
    if (v35 == 5)
    {
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v62 = v138;
      v63 = __swift_project_value_buffer(v138, qword_28140BD10);
      swift_beginAccess();
      v64 = v137;
      (*(v137 + 16))(v16, v63, v62);
      v65 = v33;

      v66 = sub_22B36050C();
      v67 = sub_22B360CFC();

      if (os_log_type_enabled(v66, v67))
      {
        v131 = v67;
        v68 = 0xEE00797469746E45;
        v69 = 0x206E776F6E6B6E55;
        v70 = swift_slowAlloc();
        v132 = swift_slowAlloc();
        *&v144 = v132;
        *v70 = 136315394;
        v71 = sub_22B1A7B20(v133, v32, &v144);

        *(v70 + 4) = v71;
        *(v70 + 12) = 2080;
        if (v33)
        {
          v72 = [v65 entityName];
          v47 = v136;
          if (v72)
          {
            v73 = v72;
            v69 = sub_22B36084C();
            v68 = v74;
          }
        }

        else
        {
          v47 = v136;
        }

        v112 = sub_22B1A7B20(v69, v68, &v144);

        *(v70 + 14) = v112;
        _os_log_impl(&dword_22B116000, v66, v131, "[CoreDataServerHandlingPolicy] Received insert request from %s for %s", v70, 0x16u);
        v113 = v132;
        swift_arrayDestroy();
        MEMORY[0x23188F650](v113, -1, -1);
        MEMORY[0x23188F650](v70, -1, -1);

        (*(v137 + 8))(v16, v138);
        goto LABEL_79;
      }

      (*(v64 + 8))(v16, v62);
      goto LABEL_66;
    }

    if (v35 == 6)
    {
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v75 = v138;
      v76 = __swift_project_value_buffer(v138, qword_28140BD10);
      swift_beginAccess();
      v77 = v137;
      (*(v137 + 16))(v13, v76, v75);
      v78 = v33;

      v79 = sub_22B36050C();
      v80 = sub_22B360CFC();

      if (os_log_type_enabled(v79, v80))
      {
        v131 = v80;
        v81 = 0xEE00797469746E45;
        v82 = 0x206E776F6E6B6E55;
        v83 = swift_slowAlloc();
        v132 = swift_slowAlloc();
        *&v144 = v132;
        *v83 = 136315394;
        v84 = sub_22B1A7B20(v133, v32, &v144);

        *(v83 + 4) = v84;
        *(v83 + 12) = 2080;
        if (v33)
        {
          v85 = [v78 entityName];
          v47 = v136;
          if (v85)
          {
            v86 = v85;
            v82 = sub_22B36084C();
            v81 = v87;
          }
        }

        else
        {
          v47 = v136;
        }

        v114 = sub_22B1A7B20(v82, v81, &v144);

        *(v83 + 14) = v114;
        _os_log_impl(&dword_22B116000, v79, v131, "[CoreDataServerHandlingPolicy] Received update request from %s for %s", v83, 0x16u);
        v115 = v132;
        swift_arrayDestroy();
        MEMORY[0x23188F650](v115, -1, -1);
        MEMORY[0x23188F650](v83, -1, -1);

        (*(v137 + 8))(v13, v138);
        goto LABEL_79;
      }

      (*(v77 + 8))(v13, v75);
      goto LABEL_66;
    }

    v36 = v137;
    if (v35 == 7)
    {
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v37 = v138;
      v38 = __swift_project_value_buffer(v138, qword_28140BD10);
      swift_beginAccess();
      (*(v36 + 16))(v10, v38, v37);
      v39 = v33;

      v40 = sub_22B36050C();
      v41 = sub_22B360CFC();

      if (os_log_type_enabled(v40, v41))
      {
        v131 = v41;
        v42 = 0xEE00797469746E45;
        v43 = 0x206E776F6E6B6E55;
        v44 = swift_slowAlloc();
        v132 = swift_slowAlloc();
        *&v144 = v132;
        *v44 = 136315394;
        v45 = sub_22B1A7B20(v133, v32, &v144);

        *(v44 + 4) = v45;
        *(v44 + 12) = 2080;
        if (v33)
        {
          v46 = [v39 entityName];
          v47 = v136;
          if (v46)
          {
            v48 = v46;
            v43 = sub_22B36084C();
            v42 = v49;
          }
        }

        else
        {
          v47 = v136;
        }

        v119 = sub_22B1A7B20(v43, v42, &v144);

        *(v44 + 14) = v119;
        _os_log_impl(&dword_22B116000, v40, v131, "[CoreDataServerHandlingPolicy] Received delete request from %s for %s", v44, 0x16u);
        v120 = v132;
        swift_arrayDestroy();
        MEMORY[0x23188F650](v120, -1, -1);
        MEMORY[0x23188F650](v44, -1, -1);

        (*(v137 + 8))(v10, v138);
        goto LABEL_79;
      }

      (*(v36 + 8))(v10, v37);
LABEL_66:
      v47 = v136;
LABEL_79:
      v116 = v135;
      goto LABEL_80;
    }

LABEL_53:
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v100 = v138;
    v101 = __swift_project_value_buffer(v138, qword_28140BD10);
    swift_beginAccess();
    (*(v36 + 16))(v7, v101, v100);
    v102 = v33;

    v103 = sub_22B36050C();
    v104 = sub_22B360D1C();

    if (os_log_type_enabled(v103, v104))
    {
      v131 = v104;
      v105 = 0xEE00797469746E45;
      v106 = 0x206E776F6E6B6E55;
      v107 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      *&v144 = v132;
      *v107 = 136315394;
      v108 = sub_22B1A7B20(v133, v32, &v144);

      *(v107 + 4) = v108;
      *(v107 + 12) = 2080;
      if (v33)
      {
        v109 = [v102 entityName];
        v47 = v136;
        if (v109)
        {
          v110 = v109;
          v106 = sub_22B36084C();
          v105 = v111;
        }
      }

      else
      {
        v47 = v136;
      }

      v123 = sub_22B1A7B20(v106, v105, &v144);

      *(v107 + 14) = v123;
      _os_log_impl(&dword_22B116000, v103, v131, "[CoreDataServerHandlingPolicy] Received unknown request from %s for %s", v107, 0x16u);
      v124 = v132;
      swift_arrayDestroy();
      MEMORY[0x23188F650](v124, -1, -1);
      MEMORY[0x23188F650](v107, -1, -1);

      (*(v137 + 8))(v7, v138);
      goto LABEL_79;
    }

    (*(v36 + 8))(v7, v100);
    goto LABEL_66;
  }

  v36 = v137;
  if (v35 != 1)
  {
    if (v35 == 2)
    {
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v50 = v138;
      v51 = __swift_project_value_buffer(v138, qword_28140BD10);
      swift_beginAccess();
      (*(v36 + 16))(v19, v51, v50);
      v52 = v33;

      v53 = sub_22B36050C();
      v54 = sub_22B360CFC();

      if (os_log_type_enabled(v53, v54))
      {
        v131 = v54;
        v55 = 0xEE00797469746E45;
        v56 = 0x206E776F6E6B6E55;
        v57 = swift_slowAlloc();
        v132 = swift_slowAlloc();
        *&v144 = v132;
        *v57 = 136315394;
        v58 = sub_22B1A7B20(v133, v32, &v144);

        *(v57 + 4) = v58;
        *(v57 + 12) = 2080;
        if (v33)
        {
          v59 = [v52 entityName];
          v47 = v136;
          if (v59)
          {
            v60 = v59;
            v56 = sub_22B36084C();
            v55 = v61;
          }
        }

        else
        {
          v47 = v136;
        }

        v121 = sub_22B1A7B20(v56, v55, &v144);

        *(v57 + 14) = v121;
        _os_log_impl(&dword_22B116000, v53, v131, "[CoreDataServerHandlingPolicy] Received save request from %s for %s", v57, 0x16u);
        v122 = v132;
        swift_arrayDestroy();
        MEMORY[0x23188F650](v122, -1, -1);
        MEMORY[0x23188F650](v57, -1, -1);

        (*(v137 + 8))(v19, v138);
        goto LABEL_79;
      }

      (*(v36 + 8))(v19, v50);
      goto LABEL_66;
    }

    goto LABEL_53;
  }

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v88 = v138;
  v89 = __swift_project_value_buffer(v138, qword_28140BD10);
  swift_beginAccess();
  (*(v36 + 16))(v23, v89, v88);
  v90 = v33;

  v91 = sub_22B36050C();
  v92 = sub_22B360CFC();

  if (!os_log_type_enabled(v91, v92))
  {

    (*(v36 + 8))(v23, v88);
    goto LABEL_66;
  }

  v131 = v92;
  v93 = 0xEE00797469746E45;
  v94 = 0x206E776F6E6B6E55;
  v95 = swift_slowAlloc();
  v132 = swift_slowAlloc();
  *&v144 = v132;
  *v95 = 136315394;
  v96 = sub_22B1A7B20(v133, v32, &v144);

  *(v95 + 4) = v96;
  *(v95 + 12) = 2080;
  if (v33)
  {
    v97 = [v90 entityName];
    v47 = v136;
    if (v97)
    {
      v98 = v97;
      v94 = sub_22B36084C();
      v93 = v99;
    }
  }

  else
  {
    v47 = v136;
  }

  v116 = v135;
  v117 = sub_22B1A7B20(v94, v93, &v144);

  *(v95 + 14) = v117;
  _os_log_impl(&dword_22B116000, v91, v131, "[CoreDataServerHandlingPolicy] Received fetch request from %s for %s", v95, 0x16u);
  v118 = v132;
  swift_arrayDestroy();
  MEMORY[0x23188F650](v118, -1, -1);
  MEMORY[0x23188F650](v95, -1, -1);

  (*(v137 + 8))(v23, v138);
LABEL_80:
  *&v144 = 0;
  v125 = type metadata accessor for CoreDataServerHandlingPolicy();
  v142.receiver = v116;
  v142.super_class = v125;
  v126 = objc_msgSendSuper2(&v142, sel_processRequest_fromClientWithContext_error_, v139, v47, &v144);
  v127 = v144;
  if (v126)
  {
    sub_22B36102C();
    swift_unknownObjectRelease();
  }

  else
  {
    v128 = v127;
    sub_22B35DB9C();

    swift_willThrow();
  }

  v129 = *MEMORY[0x277D85DE8];
}