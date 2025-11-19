id sub_2289F3838(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  v8 = sub_22911B88C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22911B86C();
  v13 = a3;
  v14 = a6();
  v16 = v15;
  (*(v9 + 8))(v12, v8);

  v17 = sub_22911B80C();
  sub_2289BCF3C(v14, v16);

  return v17;
}

uint64_t HKDatabase.Pruning.ClassifiedDeletedSampleInfo.init(profile:referenceDate:anchor:limit:)@<X0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v113 = a4;
  v97 = a5;
  v115[1] = *MEMORY[0x277D85DE8];
  sub_228A009B8(0, &qword_27D8638A0, MEMORY[0x277CCB3E0], MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v101 = (&v86 - v10);
  v11 = sub_22911BDDC();
  v102 = *(v11 - 8);
  v103 = v11;
  v12 = *(v102 + 64);
  MEMORY[0x28223BE20](v11);
  v96 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22911BD4C();
  v107 = *(v14 - 8);
  v108 = v14;
  v15 = *(v107 + 64);
  MEMORY[0x28223BE20](v14);
  v106 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22911BD0C();
  v99 = *(v17 - 8);
  v100 = v17;
  v18 = *(v99 + 64);
  MEMORY[0x28223BE20](v17);
  v98 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22911BE0C();
  v104 = *(v20 - 8);
  v105 = v20;
  v21 = *(v104 + 64);
  MEMORY[0x28223BE20](v20);
  v112 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22911B88C();
  v24 = *(v23 - 8);
  v25 = v24[8];
  v26 = MEMORY[0x28223BE20](v23);
  v94 = &v86 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v109 = &v86 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v110 = (&v86 - v31);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = (&v86 - v33);
  MEMORY[0x28223BE20](v32);
  v36 = (&v86 - v35);
  v95 = sub_22911BBBC();
  v93 = *(v95 - 8);
  v37 = *(v93 + 64);
  v38 = MEMORY[0x28223BE20](v95);
  v91 = &v86 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v92 = &v86 - v40;
  v42 = v24 + 2;
  v41 = v24[2];
  v114 = a2;
  v41(v36, a2, v23);
  v43 = objc_opt_self();
  v115[0] = 0;
  v44 = a1;
  v45 = [v43 deletedSamplesInProfile:v44 anchor:a3 limit:v113 error:v115];
  v46 = v115[0];
  if (v45)
  {
    v47 = v45;
    v113 = v24;
    sub_2289B3D00(0, &qword_27D8638A8, off_27860E8C0);
    v48 = sub_22911C45C();
    v49 = v46;

    v41(v34, v36, v23);
    v50 = v110;
    v41(v110, v34, v23);
    v51 = v44;
    v52 = v111;
    HKDatabase.Pruning.Show.init(profile:referenceDate:deletedSampleSyncEntityOnly:)(v51, v50, 1, v112);
    if (v52)
    {

      v53 = v113[1];
      v53(v114, v23);
      v53(v34, v23);
      result = (v53)(v36, v23);
    }

    else
    {
      v89 = v48;
      v111 = v51;
      v87 = v41;
      v88 = v42;
      v90 = v23;
      v110 = v36;
      v57 = v98;
      sub_22911BD2C();
      sub_22911BCEC();
      (*(v99 + 8))(v57, v100);
      v100 = v34;
      sub_22911B83C();
      sub_2289B3D00(0, &qword_27D8638B0, off_27860E968);
      v58 = [swift_getObjCClassFromMetadata() syncEntityIdentifier];
      [v58 entityIdentifier];
      v59 = [v58 schemaIdentifier];
      if (v59)
      {
        v60 = v59;
        sub_22911C35C();
      }

      v61 = v113;
      v62 = v106;
      sub_22911BD3C();

      v63 = v112;
      v64 = sub_22911BDFC();
      MEMORY[0x28223BE20](v64);
      *(&v86 - 2) = v62;
      v65 = v101;
      sub_2289FBD3C(sub_228A003CC, v64, v101);

      v66 = v65;
      v67 = v102;
      v68 = v103;
      if ((*(v102 + 48))(v65, 1, v103) == 1)
      {

        sub_228A03EB8(v65, &qword_27D8638A0, MEMORY[0x277CCB3E0]);
        sub_228A003EC();
        swift_allocError();
        swift_willThrow();
        v69 = v111;

        v70 = v61[1];
        v71 = v90;
        v70(v114, v90);
        v70(v100, v71);
        v70(v110, v71);
        (*(v107 + 8))(v62, v108);
        v70(v109, v71);
        result = (*(v104 + 8))(v63, v105);
      }

      else
      {
        v72 = v96;
        v73 = (*(v67 + 32))(v96, v66, v68);
        v101 = &v86;
        MEMORY[0x28223BE20](v73);
        v74 = v109;
        *(&v86 - 6) = v109;
        *(&v86 - 5) = v63;
        *(&v86 - 4) = v72;
        *(&v86 - 24) = 0;
        *(&v86 - 2) = sub_2289DA034;
        *(&v86 - 1) = 0;
        sub_2289FCC04(sub_228A00440, (&v86 - 8), v89);
        v113 = 0;

        v75 = v92;
        sub_22911BB9C();

        v76 = v61[1];
        v77 = v90;
        v76(v100, v90);
        v76(v110, v77);
        v78 = v72;
        v79 = v75;
        (*(v67 + 8))(v78, v68);
        (*(v107 + 8))(v62, v108);
        v76(v74, v77);
        (*(v104 + 8))(v112, v105);
        v80 = v93;
        v81 = v91;
        v82 = v95;
        (*(v93 + 16))(v91, v79, v95);
        v83 = v94;
        v84 = v114;
        v87(v94, v114, v77);
        sub_2289FAA44(v81, v83, v97);

        v76(v84, v77);
        result = (*(v80 + 8))(v79, v82);
      }
    }
  }

  else
  {
    v55 = v115[0];
    sub_22911B7FC();

    swift_willThrow();
    v56 = v24[1];
    v56(v114, v23);
    result = (v56)(v36, v23);
  }

  v85 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t HKDatabase.Pruning.ClassifiedDeletedSampleInfo.init(profile:referenceDate:createdOnOrAfter:createdBefore:limit:)@<X0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v132 = a1;
  v133 = a5;
  v139 = a4;
  v140 = a3;
  v141 = a2;
  v114 = a6;
  v143[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277D83D88];
  sub_228A009B8(0, &qword_27D8638A0, MEMORY[0x277CCB3E0], MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v119 = &v108 - v9;
  v126 = sub_22911BDDC();
  v120 = *(v126 - 8);
  v10 = *(v120 + 64);
  MEMORY[0x28223BE20](v126);
  v113 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22911BD4C();
  v124 = *(v12 - 8);
  v125 = v12;
  v13 = *(v124 + 64);
  MEMORY[0x28223BE20](v12);
  v123 = &v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_22911BD0C();
  v116 = *(v117 - 8);
  v15 = *(v116 + 64);
  MEMORY[0x28223BE20](v117);
  v115 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_22911BE0C();
  v121 = *(v122 - 8);
  v17 = *(v121 + 64);
  MEMORY[0x28223BE20](v122);
  v135 = &v108 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x277CC9578];
  sub_228A009B8(0, &qword_27D862B48, MEMORY[0x277CC9578], v6);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v24 = &v108 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v108 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = (&v108 - v29);
  MEMORY[0x28223BE20](v28);
  v32 = &v108 - v31;
  v33 = sub_22911B88C();
  v142 = v33;
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  v36 = MEMORY[0x28223BE20](v33);
  v110 = &v108 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v127 = &v108 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v128 = (&v108 - v41);
  v42 = MEMORY[0x28223BE20](v40);
  v136 = (&v108 - v43);
  MEMORY[0x28223BE20](v42);
  v45 = &v108 - v44;
  v112 = sub_22911BBBC();
  v111 = *(v112 - 8);
  v46 = *(v111 + 64);
  v47 = MEMORY[0x28223BE20](v112);
  v109 = &v108 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v118 = &v108 - v49;
  v50 = *(v34 + 16);
  v137 = v45;
  v130 = v50;
  v131 = v34 + 16;
  v50(v45, v141, v33);
  sub_228A03E38(v140, v32, &qword_27D862B48, v19);
  v138 = v30;
  sub_228A03E38(v139, v30, &qword_27D862B48, v19);
  v134 = v32;
  sub_228A03E38(v32, v27, &qword_27D862B48, v19);
  v51 = *(v34 + 48);
  LODWORD(v45) = v51(v27, 1, v33);
  v52 = v132;
  v53 = 0;
  v54 = v45 == 1;
  v55 = v34;
  if (!v54)
  {
    v53 = sub_22911B84C();
    (*(v34 + 8))(v27, v142);
  }

  sub_228A03E38(v138, v24, &qword_27D862B48, MEMORY[0x277CC9578]);
  if (v51(v24, 1, v142) == 1)
  {
    v56 = 0;
  }

  else
  {
    v56 = sub_22911B84C();
    (*(v34 + 8))(v24, v142);
  }

  v57 = v135;
  v58 = v136;
  v59 = objc_opt_self();
  v143[0] = 0;
  v60 = [v59 deletedSamplesInProfile:v52 createdOnOrAfter:v53 createdBefore:v56 limit:v133 error:v143];

  v61 = v143[0];
  if (!v60)
  {
    v73 = v143[0];
    sub_22911B7FC();

    swift_willThrow();
    v69 = MEMORY[0x277CC9578];
    sub_228A03EB8(v139, &qword_27D862B48, MEMORY[0x277CC9578]);
    sub_228A03EB8(v140, &qword_27D862B48, v69);
    v70 = *(v55 + 8);
    v72 = v141;
    v71 = v142;
    goto LABEL_10;
  }

  sub_2289B3D00(0, &qword_27D8638A8, off_27860E8C0);
  v62 = sub_22911C45C();
  v63 = v61;

  v64 = v142;
  v65 = v130;
  v130(v58, v137, v142);
  v66 = v128;
  v65(v128, v58, v64);
  v67 = v52;
  v68 = v129;
  HKDatabase.Pruning.Show.init(profile:referenceDate:deletedSampleSyncEntityOnly:)(v67, v66, 1, v57);
  if (v68)
  {

    v69 = MEMORY[0x277CC9578];
    sub_228A03EB8(v139, &qword_27D862B48, MEMORY[0x277CC9578]);
    sub_228A03EB8(v140, &qword_27D862B48, v69);
    v70 = *(v55 + 8);
    v71 = v142;
    v70(v141, v142);
    v72 = v58;
LABEL_10:
    v70(v72, v71);
    sub_228A03EB8(v138, &qword_27D862B48, v69);
    sub_228A03EB8(v134, &qword_27D862B48, v69);
    result = (v70)(v137, v71);
    goto LABEL_11;
  }

  v132 = v62;
  v133 = v67;
  v76 = v55;
  v77 = v115;
  v78 = v57;
  sub_22911BD2C();
  sub_22911BCEC();
  (*(v116 + 8))(v77, v117);
  sub_22911B83C();
  sub_2289B3D00(0, &qword_27D8638B0, off_27860E968);
  v79 = [swift_getObjCClassFromMetadata() syncEntityIdentifier];
  [v79 entityIdentifier];
  v80 = [v79 schemaIdentifier];
  if (v80)
  {
    v81 = v80;
    sub_22911C35C();
  }

  v82 = v123;
  sub_22911BD3C();

  v83 = sub_22911BDFC();
  MEMORY[0x28223BE20](v83);
  *(&v108 - 2) = v82;
  v84 = v119;
  sub_2289FBD3C(sub_228A03FF0, v83, v119);

  v85 = v120;
  v86 = v126;
  v87 = v76;
  if ((*(v120 + 48))(v84, 1, v126) == 1)
  {

    sub_228A03EB8(v84, &qword_27D8638A0, MEMORY[0x277CCB3E0]);
    sub_228A003EC();
    swift_allocError();
    swift_willThrow();
    v88 = v133;

    v89 = MEMORY[0x277CC9578];
    sub_228A03EB8(v139, &qword_27D862B48, MEMORY[0x277CC9578]);
    sub_228A03EB8(v140, &qword_27D862B48, v89);
    v90 = *(v76 + 8);
    v91 = v82;
    v92 = v142;
    v90(v141, v142);
    v90(v136, v92);
    sub_228A03EB8(v138, &qword_27D862B48, v89);
    sub_228A03EB8(v134, &qword_27D862B48, v89);
    v90(v137, v92);
    (*(v124 + 8))(v91, v125);
    v90(v127, v92);
    result = (*(v121 + 8))(v78, v122);
  }

  else
  {
    v93 = v84;
    v94 = v113;
    v95 = (*(v85 + 32))(v113, v93, v86);
    v96 = v85;
    MEMORY[0x28223BE20](v95);
    *(&v108 - 6) = v127;
    *(&v108 - 5) = v78;
    *(&v108 - 4) = v94;
    *(&v108 - 24) = 0;
    *(&v108 - 2) = sub_2289DA034;
    *(&v108 - 1) = 0;
    sub_2289FCC04(sub_228A03FD4, (&v108 - 8), v132);
    v129 = v68;

    v97 = v118;
    sub_22911BB9C();

    v98 = v82;
    v99 = *(v87 + 8);
    v100 = v142;
    v99(v136, v142);
    v101 = MEMORY[0x277CC9578];
    sub_228A03EB8(v138, &qword_27D862B48, MEMORY[0x277CC9578]);
    sub_228A03EB8(v134, &qword_27D862B48, v101);
    v99(v137, v100);
    (*(v96 + 8))(v94, v126);
    (*(v124 + 8))(v98, v125);
    v138 = v99;
    v99(v127, v100);
    (*(v121 + 8))(v135, v122);
    v102 = v111;
    v103 = v109;
    v104 = v112;
    (*(v111 + 16))(v109, v97, v112);
    v105 = v110;
    v106 = v141;
    v130(v110, v141, v100);
    sub_2289FAA44(v103, v105, v114);

    v107 = MEMORY[0x277CC9578];
    sub_228A03EB8(v139, &qword_27D862B48, MEMORY[0x277CC9578]);
    sub_228A03EB8(v140, &qword_27D862B48, v107);
    v138(v106, v142);
    result = (*(v102 + 8))(v118, v104);
  }

LABEL_11:
  v75 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t HKDatabase.Pruning.DeletedSampleDetail.init(profile:matchingPredicatesOnly:referenceDate:sampleUUID:filter:)@<X0>(void *a1@<X0>, int a2@<W1>, char *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v77 = a5;
  v78 = a6;
  v95 = a3;
  v76 = a2;
  v94 = a1;
  v79 = a7;
  v96[1] = *MEMORY[0x277D85DE8];
  sub_228A009B8(0, &qword_27D8638A0, MEMORY[0x277CCB3E0], MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v83 = &v71 - v10;
  v90 = sub_22911BDDC();
  v85 = *(v90 - 8);
  v11 = *(v85 + 64);
  MEMORY[0x28223BE20](v90);
  v84 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22911BD4C();
  v88 = *(v13 - 8);
  v89 = v13;
  v14 = *(v88 + 64);
  MEMORY[0x28223BE20](v13);
  v91 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22911BD0C();
  v81 = *(v16 - 8);
  v82 = v16;
  v17 = *(v81 + 64);
  MEMORY[0x28223BE20](v16);
  v80 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22911BE0C();
  v86 = *(v19 - 8);
  v87 = v19;
  v20 = *(v86 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22911B88C();
  v24 = *(v23 - 1);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v71 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = (&v71 - v30);
  MEMORY[0x28223BE20](v29);
  v33 = &v71 - v32;
  v34 = objc_opt_self();
  v93 = a4;
  v35 = sub_22911B8BC();
  v96[0] = 0;
  v36 = v34;
  v37 = v94;
  v38 = [v36 deletedSampleInProfile:v94 sampleUUID:v35 error:v96];

  if (v96[0])
  {
    v96[0];

    swift_willThrow();
    v39 = sub_22911B8DC();
    (*(*(v39 - 8) + 8))(v93, v39);
    result = (*(v24 + 8))(v95, v23);
  }

  else
  {
    v73 = v28;
    v75 = v22;
    v74 = v24;
    v41 = *(v24 + 16);
    v41(v33, v95, v23);
    if (v38)
    {
      sub_228A03A5C(0, &qword_280D679C0);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_2291640E0;
      *(v42 + 32) = v38;
    }

    else
    {
      v42 = MEMORY[0x277D84F90];
    }

    v43 = v92;
    v41(v31, v33, v23);
    v44 = v38;
    v45 = v94;
    HKDatabase.Pruning.Show.init(profile:referenceDate:deletedSampleSyncEntityOnly:)(v45, v31, 1, v75);
    if (v43)
    {

      v46 = sub_22911B8DC();
      (*(*(v46 - 8) + 8))(v93, v46);
      v47 = *(v74 + 8);
      v47(v95, v23);
      result = v47(v33, v23);
    }

    else
    {
      v71 = v45;
      v72 = v44;
      v94 = v23;
      v48 = v80;
      sub_22911BD2C();
      sub_22911BCEC();
      (*(v81 + 8))(v48, v82);
      v49 = v73;
      v92 = v33;
      sub_22911B83C();
      sub_2289B3D00(0, &qword_27D8638B0, off_27860E968);
      v50 = [swift_getObjCClassFromMetadata() syncEntityIdentifier];
      v82 = [v50 entityIdentifier];
      v51 = [v50 schemaIdentifier];
      if (v51)
      {
        v52 = v51;
        sub_22911C35C();
      }

      v53 = v74;
      v54 = v84;
      v55 = v91;
      sub_22911BD3C();

      v56 = sub_22911BDFC();
      MEMORY[0x28223BE20](v56);
      *(&v71 - 2) = v55;
      v57 = v83;
      sub_2289FBD3C(sub_228A03FF0, v56, v83);

      v58 = v85;
      v59 = v90;
      if ((*(v85 + 48))(v57, 1, v90) == 1)
      {

        sub_228A03EB8(v57, &qword_27D8638A0, MEMORY[0x277CCB3E0]);
        sub_228A003EC();
        swift_allocError();
        swift_willThrow();

        v60 = sub_22911B8DC();
        (*(*(v60 - 8) + 8))(v93, v60);
        v61 = *(v53 + 8);
        v62 = v94;
        v61(v95, v94);
        v61(v92, v62);
        (*(v88 + 8))(v91, v89);
        v61(v49, v62);
        result = (*(v86 + 8))(v75, v87);
      }

      else
      {
        v63 = (*(v58 + 32))(v54, v57, v59);
        MEMORY[0x28223BE20](v63);
        v64 = v75;
        *(&v71 - 6) = v65;
        *(&v71 - 5) = v64;
        *(&v71 - 4) = v54;
        *(&v71 - 24) = v76 & 1;
        v66 = v78;
        *(&v71 - 2) = v77;
        *(&v71 - 1) = v66;
        sub_2289FCC04(sub_228A03FD4, (&v71 - 8), v42);

        sub_22911BB9C();

        v67 = sub_22911B8DC();
        (*(*(v67 - 8) + 8))(v93, v67);
        v68 = *(v53 + 8);
        v69 = v94;
        v68(v95, v94);
        v68(v92, v69);
        (*(v58 + 8))(v54, v90);
        (*(v88 + 8))(v91, v89);
        v68(v73, v69);
        result = (*(v86 + 8))(v64, v87);
      }
    }
  }

  v70 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t HKDatabase.Pruning.DeletedSampleDetail.init(profile:matchingPredicatesOnly:referenceDate:anchor:limit:filter:)@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v72 = a6;
  v73 = a7;
  v88 = a3;
  v71 = a2;
  v74 = a8;
  v89[1] = *MEMORY[0x277D85DE8];
  sub_228A009B8(0, &qword_27D8638A0, MEMORY[0x277CCB3E0], MEMORY[0x277D83D88]);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v78 = (&v66 - v14);
  v15 = sub_22911BDDC();
  v79 = *(v15 - 8);
  v80 = v15;
  v16 = *(v79 + 64);
  MEMORY[0x28223BE20](v15);
  v70 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22911BD4C();
  v83 = *(v18 - 8);
  v84 = v18;
  v19 = *(v83 + 64);
  MEMORY[0x28223BE20](v18);
  v86 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22911BD0C();
  v76 = *(v21 - 8);
  v77 = v21;
  v22 = *(v76 + 64);
  MEMORY[0x28223BE20](v21);
  v75 = &v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_22911BE0C();
  v81 = *(v24 - 8);
  v82 = v24;
  v25 = *(v81 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v66 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_22911B88C();
  v29 = *(v28 - 8);
  v30 = v29[8];
  v31 = MEMORY[0x28223BE20](v28);
  v87 = &v66 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v35 = (&v66 - v34);
  MEMORY[0x28223BE20](v33);
  v37 = &v66 - v36;
  v38 = objc_opt_self();
  v89[0] = 0;
  v39 = [v38 deletedSamplesInProfile:a1 anchor:a4 limit:a5 error:v89];
  v40 = v89[0];
  if (v39)
  {
    v41 = v39;
    sub_2289B3D00(0, &qword_27D8638A8, off_27860E8C0);
    v85 = sub_22911C45C();
    v42 = v40;

    v43 = v29[2];
    v43(v37, v88, v28);
    v43(v35, v37, v28);
    v44 = a1;
    HKDatabase.Pruning.Show.init(profile:referenceDate:deletedSampleSyncEntityOnly:)(v44, v35, 1, v27);
    if (v8)
    {

      v45 = v29[1];
      v45(v88, v28);
      result = (v45)(v37, v28);
    }

    else
    {
      v67 = v29;
      v68 = v44;
      v48 = v75;
      v69 = v27;
      sub_22911BD2C();
      sub_22911BCEC();
      (*(v76 + 8))(v48, v77);
      v77 = v37;
      sub_22911B83C();
      sub_2289B3D00(0, &qword_27D8638B0, off_27860E968);
      v49 = [swift_getObjCClassFromMetadata() syncEntityIdentifier];
      [v49 entityIdentifier];
      v50 = [v49 schemaIdentifier];
      if (v50)
      {
        v51 = v50;
        sub_22911C35C();
      }

      v52 = v28;
      v53 = v86;
      sub_22911BD3C();

      v54 = v69;
      v55 = sub_22911BDFC();
      MEMORY[0x28223BE20](v55);
      *(&v66 - 2) = v53;
      v56 = v78;
      sub_2289FBD3C(sub_228A03FF0, v55, v78);

      v58 = v79;
      v57 = v80;
      if ((*(v79 + 48))(v56, 1, v80) == 1)
      {

        sub_228A03EB8(v56, &qword_27D8638A0, MEMORY[0x277CCB3E0]);
        sub_228A003EC();
        swift_allocError();
        swift_willThrow();

        v59 = v67[1];
        v59(v88, v52);
        v59(v77, v52);
        (*(v83 + 8))(v53, v84);
        v59(v87, v52);
        result = (*(v81 + 8))(v54, v82);
      }

      else
      {
        v60 = v70;
        v61 = (*(v58 + 32))(v70, v56, v57);
        v78 = &v66;
        MEMORY[0x28223BE20](v61);
        v62 = v87;
        *(&v66 - 6) = v87;
        *(&v66 - 5) = v54;
        *(&v66 - 4) = v60;
        *(&v66 - 24) = v71 & 1;
        v63 = v73;
        *(&v66 - 2) = v72;
        *(&v66 - 1) = v63;
        sub_2289FCC04(sub_228A03FD4, (&v66 - 8), v85);

        sub_22911BB9C();

        v64 = v67[1];
        v64(v88, v52);
        v64(v77, v52);
        (*(v58 + 8))(v60, v57);
        (*(v83 + 8))(v86, v84);
        v64(v62, v52);
        result = (*(v81 + 8))(v69, v82);
      }
    }
  }

  else
  {
    v47 = v89[0];
    sub_22911B7FC();

    swift_willThrow();
    result = (v29[1])(v88, v28);
  }

  v65 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t HKDatabase.Pruning.DeletedSampleDetail.init(profile:matchingPredicatesOnly:referenceDate:createdOnOrAfter:createdBefore:limit:filter:)@<X0>(_BYTE *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v89 = a8;
  v88 = a7;
  v105 = a6;
  v110 = a5;
  v108 = a3;
  v87 = a2;
  v106 = a1;
  v90 = a9;
  v111[1] = *MEMORY[0x277D85DE8];
  v10 = MEMORY[0x277D83D88];
  sub_228A009B8(0, &qword_27D8638A0, MEMORY[0x277CCB3E0], MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v93 = &v86[-v13];
  v14 = sub_22911BDDC();
  v95 = *(v14 - 8);
  v96 = v14;
  v15 = *(v95 + 64);
  MEMORY[0x28223BE20](v14);
  v94 = &v86[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_22911BD4C();
  v99 = *(v17 - 8);
  v100 = v17;
  v18 = *(v99 + 64);
  MEMORY[0x28223BE20](v17);
  v101 = &v86[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v92 = sub_22911BD0C();
  v91 = *(v92 - 8);
  v20 = *(v91 + 64);
  MEMORY[0x28223BE20](v92);
  v22 = &v86[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = sub_22911BE0C();
  v97 = *(v23 - 8);
  v98 = v23;
  v24 = *(v97 + 64);
  MEMORY[0x28223BE20](v23);
  v104 = &v86[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = sub_22911B88C();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v26);
  v102 = &v86[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v86[-v32];
  MEMORY[0x28223BE20](v31);
  v109 = &v86[-v34];
  v35 = MEMORY[0x277CC9578];
  sub_228A009B8(0, &qword_27D862B48, MEMORY[0x277CC9578], v10);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x28223BE20](v36 - 8);
  v40 = &v86[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v38);
  v42 = &v86[-v41];
  v107 = a4;
  sub_228A03E38(a4, &v86[-v41], &qword_27D862B48, v35);
  v43 = *(v27 + 48);
  v44 = 0;
  if (v43(v42, 1, v26) != 1)
  {
    v44 = sub_22911B84C();
    (*(v27 + 8))(v42, v26);
  }

  sub_228A03E38(v110, v40, &qword_27D862B48, MEMORY[0x277CC9578]);
  if (v43(v40, 1, v26) == 1)
  {
    v45 = 0;
  }

  else
  {
    v45 = sub_22911B84C();
    (*(v27 + 8))(v40, v26);
  }

  v46 = v109;
  v47 = v106;
  v48 = objc_opt_self();
  v111[0] = 0;
  v49 = [v48 deletedSamplesInProfile:v47 createdOnOrAfter:v44 createdBefore:v45 limit:v105 error:v111];

  v50 = v111[0];
  if (v49)
  {
    v106 = v22;
    sub_2289B3D00(0, &qword_27D8638A8, off_27860E8C0);
    v51 = sub_22911C45C();
    v52 = v50;

    v53 = v47;
    v54 = *(v27 + 16);
    v55 = v108;
    v54(v46, v108, v26);
    v54(v33, v46, v26);
    v56 = v53;
    v57 = v103;
    HKDatabase.Pruning.Show.init(profile:referenceDate:deletedSampleSyncEntityOnly:)(v56, v33, 1, v104);
    if (v57)
    {

      v58 = MEMORY[0x277CC9578];
      sub_228A03EB8(v110, &qword_27D862B48, MEMORY[0x277CC9578]);
      sub_228A03EB8(v107, &qword_27D862B48, v58);
      v59 = *(v27 + 8);
      v59(v55, v26);
      result = (v59)(v46, v26);
    }

    else
    {
      v103 = v27;
      v105 = v51;
      v63 = v106;
      sub_22911BD2C();
      sub_22911BCEC();
      (*(v91 + 8))(v63, v92);
      sub_22911B83C();
      sub_2289B3D00(0, &qword_27D8638B0, off_27860E968);
      v64 = [swift_getObjCClassFromMetadata() syncEntityIdentifier];
      [v64 entityIdentifier];
      v65 = [v64 schemaIdentifier];
      if (v65)
      {
        v66 = v65;
        sub_22911C35C();

        v67 = v108;
      }

      else
      {
        v67 = v55;
      }

      v68 = v26;
      v69 = v101;
      sub_22911BD3C();

      v70 = v104;
      v71 = sub_22911BDFC();
      MEMORY[0x28223BE20](v71);
      *&v86[-16] = v69;
      v72 = v93;
      sub_2289FBD3C(sub_228A03FF0, v71, v93);

      v73 = v95;
      v74 = v96;
      if ((*(v95 + 48))(v72, 1, v96) == 1)
      {

        sub_228A03EB8(v72, &qword_27D8638A0, MEMORY[0x277CCB3E0]);
        sub_228A003EC();
        swift_allocError();
        swift_willThrow();

        v75 = MEMORY[0x277CC9578];
        sub_228A03EB8(v110, &qword_27D862B48, MEMORY[0x277CC9578]);
        sub_228A03EB8(v107, &qword_27D862B48, v75);
        v76 = *(v103 + 8);
        v76(v67, v68);
        v76(v109, v68);
        (*(v99 + 8))(v101, v100);
        v76(v102, v68);
        result = (*(v97 + 8))(v70, v98);
      }

      else
      {
        v77 = v68;
        v78 = v67;
        v79 = v94;
        v80 = (*(v73 + 32))();
        v81 = v73;
        MEMORY[0x28223BE20](v80);
        *&v86[-48] = v102;
        *&v86[-40] = v70;
        *&v86[-32] = v79;
        v86[-24] = v87 & 1;
        v82 = v89;
        *&v86[-16] = v88;
        *&v86[-8] = v82;
        sub_2289FCC04(sub_228A03FD4, &v86[-64], v105);

        sub_22911BB9C();

        v83 = MEMORY[0x277CC9578];
        sub_228A03EB8(v110, &qword_27D862B48, MEMORY[0x277CC9578]);
        sub_228A03EB8(v107, &qword_27D862B48, v83);
        v84 = *(v103 + 8);
        v84(v78, v77);
        v84(v109, v77);
        (*(v81 + 8))(v94, v74);
        (*(v99 + 8))(v101, v100);
        v84(v102, v77);
        result = (*(v97 + 8))(v104, v98);
      }
    }
  }

  else
  {
    v61 = v111[0];
    sub_22911B7FC();

    swift_willThrow();
    v62 = MEMORY[0x277CC9578];
    sub_228A03EB8(v110, &qword_27D862B48, MEMORY[0x277CC9578]);
    sub_228A03EB8(v107, &qword_27D862B48, v62);
    result = (*(v27 + 8))(v108, v26);
  }

  v85 = *MEMORY[0x277D85DE8];
  return result;
}

HDDatabasePruningShow __swiftcall HDDatabasePruningShow.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

void HKDatabase.Pruning.Show.Configuration.init(profile:)(void *a1)
{
  v1 = [objc_opt_self() sharedBehavior];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v1;
  v3 = [v1 features];

  if (!v3)
  {
LABEL_7:
    __break(1u);
    return;
  }

  [v3 databasePruningTaskShouldUseRestrictionPredicates];

  v4 = objc_opt_self();
  [v4 recentStoreAnchorRelevanceInterval];
  [v4 pruningFrozenAnchorRelevanceInterval];
  v5 = *MEMORY[0x277CCBC20];
  [v4 canPerformRecentRecordRollWithProfile_];
  [v4 currentSyncIdentityWithProfile_];
  sub_22911BCFC();
}

void HKDatabase.Pruning.Show.SyncIdentity.init(identity:)(void *a1)
{
  v2 = sub_22911B8DC();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  MEMORY[0x28223BE20](v4);
  [a1 persitentID];
  v5 = [a1 hardwareIdentifier];
  sub_22911B8CC();

  v6 = [a1 databaseIdentifier];
  sub_22911B8CC();

  v7 = [a1 instanceDiscriminator];
  sub_22911C35C();

  sub_22911BCCC();
}

void HKDatabase.Pruning.Show.SyncEntityIdentifier.init(identifier:)(void *a1)
{
  [a1 entityIdentifier];
  v1 = [a1 schemaIdentifier];
  if (v1)
  {
    v2 = v1;
    sub_22911C35C();
  }

  sub_22911BD3C();
}

uint64_t HKDatabase.Pruning.Show.PruningRestrictionPredicate.init(storeId:predicate:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  sub_228A009B8(0, &qword_27D862B48, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v31 - v10;
  v12 = sub_22911B8DC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = *(v13 + 16);
  v34 = a1;
  v32 = v17;
  v16(v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v18 = [a2 maximumAnchor];
  v31[1] = [v18 integerValue];

  v19 = [a2 startDate];
  if (v19)
  {
    v20 = v19;
    sub_22911B86C();

    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = sub_22911B88C();
  v23 = *(*(v22 - 8) + 56);
  v24 = 1;
  v23(v11, v21, 1, v22);
  v25 = [a2 endDate];
  if (v25)
  {
    v26 = v25;
    sub_22911B86C();

    v24 = 0;
  }

  v23(v9, v24, 1, v22);
  v27 = [a2 excludedSyncIdentities];
  if (v27)
  {
    sub_2289B3D00(0, &unk_280D679B0, 0x277CCABB0);
    sub_2289B33F8(&qword_27D8638C0, &unk_280D679B0, 0x277CCABB0);
    v28 = sub_22911C51C();

    sub_2289F0A84(v28);
    sub_2289DD698(v29);
  }

  sub_22911BC9C();

  return (*(v13 + 8))(v34, v32);
}

void HKDatabase.Pruning.Show.Store.init(store:)(void *a1)
{
  sub_228A009B8(0, &qword_27D862B48, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v37[-v4];
  v6 = sub_22911B88C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v37[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_22911B8DC();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v37[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = [a1 identifier];
  sub_22911B8CC();

  v16 = [a1 type];
  v41 = [v16 integerValue];

  v17 = [a1 creationDate];
  sub_22911B86C();

  v18 = [a1 latestFrozenAnchorDate];
  if (v18)
  {
    v19 = v18;
    sub_22911B86C();

    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  (*(v7 + 56))(v5, v20, 1, v6);
  v21 = [a1 frozenAnchorMap];
  v43 = v10;
  if (v21)
  {
    v22 = v21;
    sub_2289B3D00(0, &qword_27D8638C8, off_27860F5C0);
    sub_228A038CC(0, &qword_27D8638D0, MEMORY[0x277D834F8]);
    sub_2289B33F8(&qword_27D8638D8, &qword_27D8638C8, off_27860F5C0);
    v23 = sub_22911C2CC();

    v24 = sub_2289F0DC8(v23);
    if (*(v24 + 16))
    {
      v25 = v24;
      sub_2289B36DC();
      v26 = sub_22911CA7C();
      v24 = v25;
    }

    else
    {
      v26 = MEMORY[0x277D84F98];
    }

    v44 = v26;
    sub_2289FDDD4(v24, 1, &v44);

    v40 = v44;
  }

  else
  {
    v40 = sub_2289B2B30(MEMORY[0x277D84F90]);
  }

  v27 = [a1 syncIdentity];
  v28 = v27;
  if (v27)
  {
    v39 = [v27 integerValue];
  }

  else
  {
    v39 = 0;
  }

  v29 = [a1 isSupportedShardType];
  v42 = v14;
  if (v29)
  {
    v30 = v29;
    v38 = [v29 BOOLValue];
  }

  else
  {
    v38 = 2;
  }

  v31 = [a1 activeEpoch];
  v32 = v31;
  if (v31)
  {
    [v31 integerValue];
  }

  v33 = [a1 pendingEpoch];
  v34 = v33;
  if (v33)
  {
    [v33 integerValue];
  }

  v35 = [a1 tombstoneEpoch];
  v36 = v35;
  if (v35)
  {
    [v35 integerValue];
  }

  sub_22911BD7C();
}

void HKDatabase.Pruning.Show.Entity.init(entity:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_228A0359C();
  v78 = v4;
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v77 = v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v76 = v58 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v75 = v58 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v74 = v58 - v13;
  MEMORY[0x28223BE20](v12);
  v73 = v58 - v14;
  sub_228A03620();
  v71 = *(v15 - 8);
  v72 = v15;
  v16 = *(v71 + 64);
  MEMORY[0x28223BE20](v15);
  v70 = v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228A009B8(0, &qword_27D8638F8, MEMORY[0x277CCB3C0], MEMORY[0x277D83D88]);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = v58 - v20;
  v22 = [a1 className];
  v23 = sub_22911C35C();
  v25 = v24;

  v26 = [a1 identifier];
  if (v26)
  {
    v27 = v26;
    [v27 entityIdentifier];
    v28 = [v27 schemaIdentifier];
    if (v28)
    {
      v29 = v28;
      sub_22911C35C();
    }

    sub_22911BD3C();

    v31 = sub_22911BD4C();
    (*(*(v31 - 8) + 56))(v21, 0, 1, v31);
  }

  else
  {
    v30 = sub_22911BD4C();
    (*(*(v30 - 8) + 56))(v21, 1, 1, v30);
  }

  v32 = [a1 supportsPruning];
  v66 = [a1 supportsPruningRestrictionPredicates];
  v33 = [a1 maximumPruningAnchor];
  v65 = v33;
  if (v33)
  {
    v34 = v33;
    v64 = [v33 integerValue];
  }

  else
  {
    v64 = 0;
  }

  v35 = [a1 pruningRestrictionPredicates];
  v36 = sub_22911B8DC();
  sub_2289B3D00(0, &qword_27D8638E8, off_27860F348);
  sub_228A03F88(&qword_27D8629D8, MEMORY[0x277CC95F0]);
  v37 = sub_22911C2CC();

  v38 = *(v37 + 16);
  if (v38)
  {
    v58[3] = v32;
    v59 = v25;
    v60 = v23;
    v61 = v21;
    v62 = a2;
    v63 = a1;
    v82 = MEMORY[0x277D84F90];
    sub_2289FD608(0, v38, 0);
    v39 = v82;
    v40 = -1 << *(v37 + 32);
    v41 = sub_22911C6FC();
    v68 = v36 - 8;
    v69 = v37;
    v42 = v36;
    v67 = v37 + 64;
    v43 = v74;
    do
    {
      v79 = v38;
      v44 = *(v37 + 36);
      v45 = v73;
      v80 = v44;
      v81 = v39;
      v46 = sub_2289FF084(v73, v41, v44, 0, v37);
      v47 = *(v42 - 8);
      v48 = *(v47 + 32);
      (v48)(v43, v45, v42);
      v49 = v78;
      *(v43 + *(v78 + 48)) = v46;
      v50 = *(v72 + 48);
      v51 = v75;
      sub_228A03C5C(v43, v75, sub_228A0359C);

      v52 = v70;
      v48();
      v53 = v76;
      sub_228A03C5C(v43, v76, sub_228A0359C);

      v54 = v77;
      v39 = v81;
      sub_228A03C5C(v43, v77, sub_228A0359C);
      HKDatabase.Pruning.Show.PruningRestrictionPredicate.init(storeId:predicate:)(v53, *(v54 + *(v49 + 48)), v52 + v50);
      sub_228A03F28(v43, sub_228A0359C);
      (*(v47 + 8))(v54, v42);
      v82 = v39;
      v56 = *(v39 + 16);
      v55 = *(v39 + 24);
      if (v56 >= v55 >> 1)
      {
        sub_2289FD608(v55 > 1, v56 + 1, 1);
        v39 = v82;
      }

      *(v39 + 16) = v56 + 1;
      sub_228A03864(v52, v39 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v56, sub_228A03620);
      v37 = v69;
      if (v41 < 0 || v41 >= -(-1 << *(v69 + 32)))
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        swift_unexpectedError();
        __break(1u);
        return;
      }

      if (((*(v67 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
      {
        goto LABEL_24;
      }

      if (v80 != *(v69 + 36))
      {
        goto LABEL_25;
      }

      v41 = sub_22911C71C();
      v38 = v79 - 1;
    }

    while (v79 != 1);

    a1 = v63;
    if (!*(v39 + 16))
    {
      goto LABEL_21;
    }
  }

  else
  {

    v39 = MEMORY[0x277D84F90];
    if (!*(MEMORY[0x277D84F90] + 16))
    {
LABEL_21:
      v57 = MEMORY[0x277D84F98];
      goto LABEL_22;
    }
  }

  sub_228A03690();
  v57 = sub_22911CA7C();
LABEL_22:
  v82 = v57;
  sub_2289FE668(v39, 1, &v82);
  sub_22911BDCC();
}

uint64_t sub_2289F93A0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  LOBYTE(v4) = v4();

  return v4 & 1;
}

uint64_t sub_2289F93F8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = sub_22911C35C();
  v5 = v4;

  LOBYTE(v3) = v2(v3, v5);

  return v3 & 1;
}

uint64_t sub_2289F9460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_22911B83C();
  if (__OFSUB__(*MEMORY[0x277CCBC20], 1))
  {
    __break(1u);
  }

  else
  {
    v5 = (*MEMORY[0x277CCBC20] - 1) * -24.0 * 3600.0;
    v6 = _s28DateClassificationBoundariesVMa();
    v7 = a2 + v6[5];
    sub_22911B83C();
    v8 = a2 + v6[6];
    sub_22911B83C();
    v9 = a2 + v6[7];
    sub_22911B83C();
    v10 = a2 + v6[8];
    sub_22911B83C();
    v11 = a2 + v6[9];
    sub_22911B83C();
    v12 = a2 + v6[10];
    sub_22911B83C();
    v13 = a2 + v6[11];
    sub_22911B83C();
    v14 = a2 + v6[12];
    sub_22911B83C();
    v15 = sub_22911B88C();
    v16 = *(*(v15 - 8) + 8);

    return v16(a1, v15);
  }

  return result;
}

uint64_t sub_2289F95EC(uint64_t a1)
{
  sub_228A03B58(0, &qword_27D8639C0, MEMORY[0x277D84328]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v158 = &v156 - v5;
  sub_228A03BF4();
  v178 = v6;
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v177 = &v156 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v176 = &v156 - v10;
  sub_228A03B58(0, &qword_27D8639D8, MEMORY[0x277D83D00]);
  v175 = v11;
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v160 = &v156 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v161 = &v156 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v162 = &v156 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v156 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v163 = &v156 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v164 = &v156 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v165 = &v156 - v27;
  MEMORY[0x28223BE20](v26);
  v166 = &v156 - v28;
  sub_228A03B58(0, &qword_27D8639E0, MEMORY[0x277D84340]);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v32 = &v156 - v31;
  v33 = sub_22911B88C();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  v37 = &v156 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v34;
  v40 = *(v34 + 16);
  v39 = v34 + 16;
  v41 = a1;
  v42 = v40;
  v40(v37, v41, v33);
  v174 = _s28DateClassificationBoundariesVMa();
  v43 = v174[12];
  v159 = sub_228A03F88(&qword_27D8639E8, MEMORY[0x277CC9578]);
  result = sub_22911C33C();
  if ((result & 1) == 0)
  {
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
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

  v179 = v39;
  v180 = v42;
  v42(v32, v1 + v43, v33);
  v45 = sub_228A03F88(&qword_27D8639C8, MEMORY[0x277CC9578]);
  v46 = sub_22911C31C();
  sub_228A03CC4(v32, &qword_27D8639E0, MEMORY[0x277D84340]);
  if (v46)
  {
    (*(v38 + 8))(v37, v33);
    return swift_getKeyPath();
  }

  v173 = v37;
  v47 = v174[11];
  result = sub_22911C32C();
  if ((result & 1) == 0)
  {
    goto LABEL_49;
  }

  v156 = v21;
  v48 = v1 + v43;
  v49 = v176;
  v50 = v180;
  v180(v176, v48, v33);
  v51 = v178;
  v52 = v49 + *(v178 + 48);
  v169 = v1;
  v157 = v47;
  v50(v52, v1 + v47, v33);
  v172 = v45;
  v53 = v177;
  sub_228A03C5C(v49, v177, sub_228A03BF4);
  v54 = *(v51 + 48);
  v55 = *(v38 + 32);
  v56 = v166;
  v55(v166, v53, v33);
  v57 = *(v38 + 8);
  v57(v53 + v54, v33);
  sub_228A03864(v49, v53, sub_228A03BF4);
  v58 = v56 + *(v175 + 36);
  v59 = v53 + *(v51 + 48);
  v167 = v55;
  v168 = v38 + 32;
  v55(v58, v59, v33);
  v170 = v38 + 8;
  v171 = v57;
  v57(v53, v33);
  if (sub_22911C32C())
  {
    v60 = sub_22911C31C();
    sub_228A03CC4(v56, &qword_27D8639D8, MEMORY[0x277D83D00]);
    if (v60)
    {
      goto LABEL_38;
    }
  }

  else
  {
    sub_228A03CC4(v56, &qword_27D8639D8, MEMORY[0x277D83D00]);
  }

  v61 = v174[10];
  v62 = v169;
  v63 = v157;
  result = sub_22911C32C();
  if ((result & 1) == 0)
  {
    goto LABEL_50;
  }

  v64 = v176;
  v65 = v180;
  v180(v176, v62 + v63, v33);
  v66 = v178;
  v67 = v64 + *(v178 + 48);
  v166 = v61;
  v65(v67, &v61[v62], v33);
  v68 = v177;
  sub_228A03C5C(v64, v177, sub_228A03BF4);
  v69 = *(v66 + 48);
  v70 = v165;
  v71 = v167;
  v167(v165, v68, v33);
  v72 = v171;
  v171(v68 + v69, v33);
  sub_228A03864(v64, v68, sub_228A03BF4);
  v71(v70 + *(v175 + 36), v68 + *(v66 + 48), v33);
  v72(v68, v33);
  v73 = v173;
  v74 = sub_22911C32C();
  v75 = v169;
  if (v74)
  {
    v76 = sub_22911C31C();
    sub_228A03CC4(v70, &qword_27D8639D8, MEMORY[0x277D83D00]);
    if (v76)
    {
      goto LABEL_43;
    }
  }

  else
  {
    sub_228A03CC4(v70, &qword_27D8639D8, MEMORY[0x277D83D00]);
  }

  v77 = v174[9];
  v78 = v166;
  result = sub_22911C32C();
  if ((result & 1) == 0)
  {
    goto LABEL_51;
  }

  v79 = v176;
  v80 = v180;
  v180(v176, &v78[v75], v33);
  v81 = v178;
  v82 = v79 + *(v178 + 48);
  v166 = v77;
  v80(v82, &v77[v75], v33);
  v83 = v177;
  sub_228A03C5C(v79, v177, sub_228A03BF4);
  v84 = *(v81 + 48);
  v85 = v164;
  v86 = v167;
  v167(v164, v83, v33);
  v87 = v171;
  v171(v83 + v84, v33);
  sub_228A03864(v79, v83, sub_228A03BF4);
  v86(v85 + *(v175 + 36), v83 + *(v81 + 48), v33);
  v87(v83, v33);
  if (sub_22911C32C())
  {
    v88 = sub_22911C31C();
    sub_228A03CC4(v85, &qword_27D8639D8, MEMORY[0x277D83D00]);
    if (v88)
    {
      goto LABEL_38;
    }
  }

  else
  {
    sub_228A03CC4(v85, &qword_27D8639D8, MEMORY[0x277D83D00]);
  }

  v89 = v174[8];
  v90 = v169;
  v91 = v166;
  result = sub_22911C32C();
  if ((result & 1) == 0)
  {
    goto LABEL_52;
  }

  v92 = v176;
  v93 = v180;
  v180(v176, &v91[v90], v33);
  v94 = v178;
  v95 = v92 + *(v178 + 48);
  v166 = v89;
  v93(v95, &v89[v90], v33);
  v96 = v177;
  sub_228A03C5C(v92, v177, sub_228A03BF4);
  v97 = *(v94 + 48);
  v98 = v163;
  v99 = v167;
  v167(v163, v96, v33);
  v100 = v171;
  v171(v96 + v97, v33);
  sub_228A03864(v92, v96, sub_228A03BF4);
  v99(v98 + *(v175 + 36), v96 + *(v94 + 48), v33);
  v100(v96, v33);
  v73 = v173;
  if (sub_22911C32C())
  {
    v101 = sub_22911C31C();
    sub_228A03CC4(v98, &qword_27D8639D8, MEMORY[0x277D83D00]);
    if (v101)
    {
      goto LABEL_43;
    }
  }

  else
  {
    sub_228A03CC4(v98, &qword_27D8639D8, MEMORY[0x277D83D00]);
  }

  v102 = v174[7];
  v103 = v169;
  v104 = v166;
  result = sub_22911C32C();
  if ((result & 1) == 0)
  {
    goto LABEL_53;
  }

  v105 = v176;
  v106 = v180;
  v180(v176, &v104[v103], v33);
  v107 = v178;
  v108 = v105 + *(v178 + 48);
  v166 = v102;
  v106(v108, &v102[v103], v33);
  v109 = v177;
  sub_228A03C5C(v105, v177, sub_228A03BF4);
  v110 = *(v107 + 48);
  v111 = v156;
  v112 = v167;
  v167(v156, v109, v33);
  v113 = v171;
  v171(v109 + v110, v33);
  sub_228A03864(v105, v109, sub_228A03BF4);
  v112(v111 + *(v175 + 36), v109 + *(v107 + 48), v33);
  v113(v109, v33);
  if (sub_22911C32C())
  {
    v114 = sub_22911C31C();
    sub_228A03CC4(v111, &qword_27D8639D8, MEMORY[0x277D83D00]);
    if (v114)
    {
      goto LABEL_38;
    }
  }

  else
  {
    sub_228A03CC4(v111, &qword_27D8639D8, MEMORY[0x277D83D00]);
  }

  v115 = v174[6];
  v116 = v169;
  v117 = v166;
  result = sub_22911C32C();
  if ((result & 1) == 0)
  {
    goto LABEL_54;
  }

  v118 = v176;
  v119 = v180;
  v180(v176, &v117[v116], v33);
  v120 = v178;
  v121 = v118 + *(v178 + 48);
  v166 = v115;
  v119(v121, &v115[v116], v33);
  v122 = v177;
  sub_228A03C5C(v118, v177, sub_228A03BF4);
  v123 = *(v120 + 48);
  v124 = v162;
  v125 = v167;
  v167(v162, v122, v33);
  v126 = v171;
  v171(v122 + v123, v33);
  sub_228A03864(v118, v122, sub_228A03BF4);
  v125(v124 + *(v175 + 36), v122 + *(v120 + 48), v33);
  v126(v122, v33);
  v73 = v173;
  if (sub_22911C32C())
  {
    v127 = sub_22911C31C();
    sub_228A03CC4(v124, &qword_27D8639D8, MEMORY[0x277D83D00]);
    if (v127)
    {
      goto LABEL_43;
    }
  }

  else
  {
    sub_228A03CC4(v124, &qword_27D8639D8, MEMORY[0x277D83D00]);
  }

  v128 = v174[5];
  v129 = v169;
  v130 = v166;
  result = sub_22911C32C();
  if ((result & 1) == 0)
  {
    goto LABEL_55;
  }

  v131 = &v130[v129];
  v132 = v176;
  v133 = v180;
  v180(v176, v131, v33);
  v134 = v178;
  v135 = v132 + *(v178 + 48);
  v174 = v128;
  v133(v135, v128 + v129, v33);
  v136 = v177;
  sub_228A03C5C(v132, v177, sub_228A03BF4);
  v137 = *(v134 + 48);
  v138 = v161;
  v139 = v167;
  v167(v161, v136, v33);
  v140 = v171;
  v171(v136 + v137, v33);
  sub_228A03864(v132, v136, sub_228A03BF4);
  v139(v138 + *(v175 + 36), v136 + *(v134 + 48), v33);
  v140(v136, v33);
  if (sub_22911C32C())
  {
    v141 = sub_22911C31C();
    sub_228A03CC4(v138, &qword_27D8639D8, MEMORY[0x277D83D00]);
    if (v141)
    {
LABEL_38:
      v171(v173, v33);
      return swift_getKeyPath();
    }
  }

  else
  {
    sub_228A03CC4(v138, &qword_27D8639D8, MEMORY[0x277D83D00]);
  }

  v142 = v169;
  v143 = v174;
  result = sub_22911C32C();
  if ((result & 1) == 0)
  {
    goto LABEL_56;
  }

  v144 = v176;
  v145 = v180;
  v180(v176, v143 + v142, v33);
  v146 = v178;
  v145(v144 + *(v178 + 48), v142, v33);
  v147 = v177;
  sub_228A03C5C(v144, v177, sub_228A03BF4);
  v148 = *(v146 + 48);
  v149 = v160;
  v150 = v167;
  v167(v160, v147, v33);
  v151 = v171;
  v171(v147 + v148, v33);
  sub_228A03864(v144, v147, sub_228A03BF4);
  v150(v149 + *(v175 + 36), v147 + *(v146 + 48), v33);
  v151(v147, v33);
  v73 = v173;
  if (sub_22911C32C())
  {
    v152 = sub_22911C31C();
    sub_228A03CC4(v149, &qword_27D8639D8, MEMORY[0x277D83D00]);
    if (v152)
    {
LABEL_43:
      v171(v73, v33);
      return swift_getKeyPath();
    }
  }

  else
  {
    sub_228A03CC4(v149, &qword_27D8639D8, MEMORY[0x277D83D00]);
  }

  v153 = v169;
  result = sub_22911C33C();
  if ((result & 1) == 0)
  {
    goto LABEL_57;
  }

  v154 = v158;
  v180(v158, v153, v33);
  v155 = sub_22911C32C();
  sub_228A03CC4(v154, &qword_27D8639C0, MEMORY[0x277D84328]);
  v171(v73, v33);
  if (v155)
  {
    return swift_getKeyPath();
  }

  return 0;
}

uint64_t sub_2289FAA44@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a3;
  v47 = sub_22911BB8C();
  v5 = *(v47 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v47);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22911BC3C();
  v40 = *(v9 - 8);
  v41 = v9;
  v10 = *(v40 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22911B88C();
  v14 = *(v13 - 8);
  v15 = v14[8];
  MEMORY[0x28223BE20](v13);
  v17 = v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = _s28DateClassificationBoundariesVMa();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v14[2];
  v49 = v13;
  v22(v17, a2, v13);
  v48 = v21;
  sub_2289F9460(v17, v21);
  v43 = v12;
  sub_22911BC2C();
  v23 = sub_22911BBAC();
  v24 = *(v23 + 16);
  if (v24)
  {
    v38 = a2;
    v39 = a1;
    v26 = *(v5 + 16);
    v25 = v5 + 16;
    v27 = *(v25 + 64);
    v37[1] = v23;
    v28 = v23 + ((v27 + 32) & ~v27);
    v44 = *(v25 + 56);
    v45 = v26;
    v29 = (v14 + 1);
    v46 = v25;
    v30 = (v25 - 8);
    v26(v8, v28, v47);
    while (1)
    {
      sub_22911BB4C();
      v32 = sub_2289F95EC(v17);
      v33 = *v29;
      (*v29)(v17, v49);
      if (v32)
      {
        sub_2289FAE04();
      }

      v31 = v47;
      (*v30)(v8, v47);
      v28 += v44;
      if (!--v24)
      {
        break;
      }

      v45(v8, v28, v31);
    }

    v34 = v42;
    a2 = v38;
    a1 = v39;
  }

  else
  {

    v33 = v14[1];
    v34 = v42;
  }

  v33(a2, v49);
  v35 = sub_22911BBBC();
  (*(*(v35 - 8) + 8))(a1, v35);
  (*(v40 + 32))(v34, v43, v41);
  return sub_228A03F28(v48, _s28DateClassificationBoundariesVMa);
}

void (*sub_2289FAE04())(_BYTE *, void)
{
  v0 = sub_22911BB5C() & 1;
  v1 = sub_22911BBEC();
  result = swift_modifyAtWritableKeyPath();
  if (__OFADD__(*v3, v0))
  {
    __break(1u);
    goto LABEL_7;
  }

  *v3 += v0;
  result(v13, 0);
  v1(v14, 0);
  v4 = (sub_22911BB5C() & 1) == 0;
  v5 = sub_22911BBFC();
  result = swift_modifyAtWritableKeyPath();
  if (__OFADD__(*v6, v4))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  *v6 += v4;
  result(v13, 0);
  v5(v14, 0);
  v7 = sub_22911BB6C() & 1;
  v8 = sub_22911BC0C();
  result = swift_modifyAtWritableKeyPath();
  if (__OFADD__(*v9, v7))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *v9 += v7;
  result(v13, 0);
  v8(v14, 0);
  v10 = (sub_22911BB6C() & 1) == 0;
  v11 = sub_22911BC1C();
  result = swift_modifyAtWritableKeyPath();
  if (!__OFADD__(*v12, v10))
  {
    *v12 += v10;
    result(v13, 0);
    return v11(v14, 0);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t HDDatabasePruningShowDeletedSample.classify(restrictionPredicate:activeStores:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_228A009B8(0, &qword_27D862B48, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v65 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v63 = &v61 - v10;
  v11 = sub_22911B88C();
  v66 = *(v11 - 8);
  v12 = *(v66 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v61 - v16;
  v18 = sub_22911B8DC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x22AAC5850](v21);
  v24 = sub_2289F14CC(v23, a2);
  (*(v19 + 8))(v23, v18);
  if ((v24 & 1) == 0)
  {
    v31 = sub_22911BCBC();
    (*(*(v31 - 8) + 16))(a3, a1, v31);
    v30 = MEMORY[0x277CCB398];
    goto LABEL_6;
  }

  v25 = a1;
  v26 = sub_22911BC6C();
  v27 = v64;
  if (v26)
  {
    v28 = sub_2289F16E4([v64 syncIdentity], v26);

    if (v28)
    {
      v29 = sub_22911BCBC();
      (*(*(v29 - 8) + 16))(a3, v25, v29);
      v30 = MEMORY[0x277CCB388];
LABEL_6:
      v32 = *v30;
      v33 = sub_22911BC5C();
      return (*(*(v33 - 8) + 104))(a3, v32, v33);
    }
  }

  v35 = [v27 startDate];
  v62 = a3;
  if (v35)
  {
    v36 = v35;
    sub_22911B86C();

    v37 = sub_22911B84C();
    v38 = v66;
    (*(v66 + 8))(v17, v11);
    v39 = v25;
  }

  else
  {
    v37 = 0;
    v39 = v25;
    v38 = v66;
  }

  v40 = [v27 endDate];
  if (v40)
  {
    v41 = v40;
    sub_22911B86C();

    v38 = v66;
    v42 = sub_22911B84C();
    (*(v38 + 8))(v15, v11);
  }

  else
  {
    v42 = 0;
  }

  v43 = v63;
  sub_22911BCAC();
  v44 = *(v38 + 48);
  if (v44(v43, 1, v11) == 1)
  {
    v45 = 0;
  }

  else
  {
    v46 = sub_22911B84C();
    v47 = v43;
    v45 = v46;
    (*(v38 + 8))(v47, v11);
  }

  v48 = v62;
  sub_22911BC7C();
  v49 = v65;
  if (v44(v65, 1, v11) == 1)
  {
    v50 = 0;
  }

  else
  {
    v51 = v49;
    v50 = sub_22911B84C();
    (*(v66 + 8))(v51, v11);
  }

  v52 = [objc_opt_self() datesMatchSampleStartDate:v37 sampleEndDate:v42 shardStartDate:v45 shardEndDate:v50];

  if (v52)
  {
    v53 = sub_22911BC4C();
    v54 = [v27 rowID];
    v55 = sub_22911BCBC();
    (*(*(v55 - 8) + 16))(v48, v39, v55);
    v56 = sub_22911BC5C();
    if (v53 >= v54)
    {
      v57 = MEMORY[0x277CCB3A0];
    }

    else
    {
      v57 = MEMORY[0x277CCB390];
    }

    return (*(*(v56 - 8) + 104))(v48, *v57, v56);
  }

  else
  {
    v58 = sub_22911BCBC();
    (*(*(v58 - 8) + 16))(v48, v39, v58);
    v59 = *MEMORY[0x277CCB380];
    v60 = sub_22911BC5C();
    return (*(*(v60 - 8) + 104))(v48, v59, v60);
  }
}

BOOL HKDatabase.Pruning.Show.PruningRestrictionPredicate.Classification.matches.getter()
{
  v1 = sub_22911BC5C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v0, v1);
  v6 = (*(v2 + 88))(v5, v1) == *MEMORY[0x277CCB390];
  (*(v2 + 8))(v5, v1);
  return v6;
}

uint64_t HKDatabase.Pruning.DeletedSampleDetail.DeletedSampleDetailError.hashValue.getter()
{
  sub_22911CB7C();
  MEMORY[0x22AAC6750](0);
  return sub_22911CB9C();
}

uint64_t sub_2289FB7DC()
{
  sub_22911CB7C();
  MEMORY[0x22AAC6750](0);
  return sub_22911CB9C();
}

uint64_t sub_2289FB848()
{
  sub_22911CB7C();
  MEMORY[0x22AAC6750](0);
  return sub_22911CB9C();
}

uint64_t sub_2289FB888(uint64_t a1, uint64_t a2)
{
  v3 = sub_22911BD4C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v32 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228A03DA4();
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x277CCB3C0];
  sub_228A009B8(0, &qword_27D8638F8, MEMORY[0x277CCB3C0], MEMORY[0x277D83D88]);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v33 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v32 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v32 - v20;
  sub_22911BDAC();
  (*(v4 + 16))(v19, a2, v3);
  (*(v4 + 56))(v19, 0, 1, v3);
  v22 = *(v8 + 56);
  sub_228A03E38(v21, v11, &qword_27D8638F8, v12);
  sub_228A03E38(v19, &v11[v22], &qword_27D8638F8, v12);
  v23 = *(v4 + 48);
  if (v23(v11, 1, v3) != 1)
  {
    sub_228A03E38(v11, v33, &qword_27D8638F8, MEMORY[0x277CCB3C0]);
    if (v23(&v11[v22], 1, v3) != 1)
    {
      v27 = &v11[v22];
      v28 = v32;
      (*(v4 + 32))(v32, v27, v3);
      sub_228A03F88(&qword_27D862A80, MEMORY[0x277CCB3C0]);
      v25 = sub_22911C33C();
      v29 = *(v4 + 8);
      v29(v28, v3);
      v30 = MEMORY[0x277CCB3C0];
      sub_228A03EB8(v19, &qword_27D8638F8, MEMORY[0x277CCB3C0]);
      sub_228A03EB8(v21, &qword_27D8638F8, v30);
      v29(v33, v3);
      sub_228A03EB8(v11, &qword_27D8638F8, v30);
      return v25 & 1;
    }

    v26 = MEMORY[0x277CCB3C0];
    sub_228A03EB8(v19, &qword_27D8638F8, MEMORY[0x277CCB3C0]);
    sub_228A03EB8(v21, &qword_27D8638F8, v26);
    (*(v4 + 8))(v33, v3);
    goto LABEL_6;
  }

  v24 = MEMORY[0x277CCB3C0];
  sub_228A03EB8(v19, &qword_27D8638F8, MEMORY[0x277CCB3C0]);
  sub_228A03EB8(v21, &qword_27D8638F8, v24);
  if (v23(&v11[v22], 1, v3) != 1)
  {
LABEL_6:
    sub_228A03F28(v11, sub_228A03DA4);
    v25 = 0;
    return v25 & 1;
  }

  sub_228A03EB8(v11, &qword_27D8638F8, MEMORY[0x277CCB3C0]);
  v25 = 1;
  return v25 & 1;
}

uint64_t sub_2289FBD3C@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v24 = a1;
  v6 = sub_22911BDDC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v21 = v7;
    v22 = a3;
    v13 = *(v7 + 16);
    v12 = v7 + 16;
    v23 = v13;
    v14 = (v12 - 8);
    v15 = a2 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    while (1)
    {
      v23(v10, v15, v6);
      v17 = v24(v10);
      if (v3)
      {
        return (*v14)(v10, v6);
      }

      if (v17)
      {
        break;
      }

      (*v14)(v10, v6);
      v15 += v16;
      if (!--v11)
      {
        v18 = 1;
        v7 = v21;
        a3 = v22;
        return (*(v7 + 56))(a3, v18, 1, v6);
      }
    }

    v7 = v21;
    a3 = v22;
    (*(v21 + 32))(v22, v10, v6);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  return (*(v7 + 56))(a3, v18, 1, v6);
}

id sub_2289FBF10@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t (*a6)(char *)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v103 = a7;
  v104 = a6;
  v115 = a5;
  v114 = a4;
  v112 = a2;
  v105 = a8;
  v10 = sub_22911BC5C();
  v11 = *(v10 - 8);
  v116 = v10;
  v117 = v11;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v120 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v111 = &v94 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v94 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v119 = &v94 - v21;
  MEMORY[0x28223BE20](v20);
  v118 = &v94 - v22;
  sub_228A009B8(0, &qword_27D862B48, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v108 = &v94 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v107 = &v94 - v27;
  v28 = sub_22911B8DC();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = &v94 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_22911BB8C();
  v101 = *(v102 - 8);
  v32 = *(v101 + 64);
  MEMORY[0x28223BE20](v102);
  v100 = &v94 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_22911B88C();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  v37 = MEMORY[0x28223BE20](v34);
  v39 = &v94 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v41 = &v94 - v40;
  v42 = *a1;
  v43 = [*a1 creationDate];
  sub_22911B86C();

  v106 = sub_22911B85C();
  v112 = v35;
  (*(v35 + 8))(v41, v34);
  v44 = sub_22911BDEC();
  v45 = v113;
  v122 = v114;
  v123 = v42;
  v124 = a3;
  v113 = sub_2289FCF9C(sub_228A03D20, v121, v44);

  v96 = [v42 rowID];
  v46 = [v42 identifier];
  v99 = v31;
  sub_22911B8CC();

  v47 = [v42 creationDate];
  v98 = v39;
  sub_22911B86C();

  v48 = [v42 startDate];
  v97 = v45;
  if (v48)
  {
    v49 = v107;
    v50 = v48;
    sub_22911B86C();

    v51 = 0;
    v52 = v49;
  }

  else
  {
    v51 = 1;
    v52 = v107;
  }

  v53 = *(v112 + 56);
  v54 = 1;
  v53(v52, v51, 1, v34);
  v55 = [v42 endDate];
  if (v55)
  {
    v56 = v55;
    v57 = v108;
    sub_22911B86C();

    v58 = v57;
    v54 = 0;
  }

  else
  {
    v58 = v108;
  }

  v59 = v113;
  result = (v53)(v58, v54, 1, v34);
  if (v106)
  {
    result = sub_22911BD9C();
    if (v61)
    {
      v62 = 1;
    }

    else
    {
      v63 = result;
      result = [v42 rowID];
      v62 = v63 >= result;
    }

    v95 = v62;
    v64 = *(v59 + 2);
    if (v64)
    {
      v110 = v19;
      v65 = 0;
      v114 = v117 + 16;
      v112 = v117 + 32;
      v66 = *MEMORY[0x277CCB390];
      v67 = (v117 + 8);
      while (v65 < *(v59 + 2))
      {
        v68 = v59;
        v69 = v117;
        v70 = v118;
        v71 = v116;
        (*(v117 + 16))(v118, &v68[((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v65], v116);
        v72 = v119;
        (*(v69 + 32))(v119, v70, v71);
        if ((*(v69 + 88))(v72, v71) == v66)
        {
          result = (*v67)(v72, v71);
          v94 = 0;
          v19 = v110;
          v59 = v113;
          goto LABEL_20;
        }

        ++v65;
        result = (*v67)(v72, v71);
        v59 = v113;
        if (v64 == v65)
        {
          v94 = 1;
          v19 = v110;
          goto LABEL_20;
        }
      }

      goto LABEL_37;
    }

    v94 = 1;
  }

  else
  {
    v94 = 0;
    v95 = 0;
  }

LABEL_20:
  v114 = *(v59 + 2);
  if (v114)
  {
    v73 = 0;
    v74 = v116;
    v118 = (v117 + 16);
    v110 = (v117 + 88);
    v109 = *MEMORY[0x277CCB390];
    v112 = v117 + 8;
    v119 = (v117 + 32);
    v75 = MEMORY[0x277D84F90];
    while (v73 < *(v59 + 2))
    {
      v76 = (*(v117 + 80) + 32) & ~*(v117 + 80);
      v77 = *(v117 + 72);
      v78 = *(v117 + 16);
      v78(v19, &v59[v76 + v77 * v73], v74);
      if ((v115 & 1) == 0)
      {
        goto LABEL_27;
      }

      v79 = v19;
      v80 = v111;
      v78(v111, v79, v74);
      v81 = (*v110)(v80, v74);
      v82 = *v112;
      v83 = v80;
      v19 = v79;
      v59 = v113;
      (*v112)(v83, v74);
      if (v81 != v109)
      {
        result = (v82)(v19, v74);
      }

      else
      {
LABEL_27:
        v84 = *v119;
        (*v119)(v120, v19, v74);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v125 = v75;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2289FD658(0, *(v75 + 16) + 1, 1);
          v75 = v125;
        }

        v87 = *(v75 + 16);
        v86 = *(v75 + 24);
        if (v87 >= v86 >> 1)
        {
          sub_2289FD658(v86 > 1, v87 + 1, 1);
          v75 = v125;
        }

        *(v75 + 16) = v87 + 1;
        v88 = v75 + v76 + v87 * v77;
        v74 = v116;
        result = v84(v88, v120, v116);
      }

      if (v114 == ++v73)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
    return result;
  }

LABEL_32:

  v89 = v100;
  sub_22911BB7C();
  if (v104(v89))
  {
    v90 = v101;
    v91 = v105;
    v92 = v102;
    (*(v101 + 32))(v105, v89, v102);
    v93 = 0;
  }

  else
  {
    v90 = v101;
    v92 = v102;
    (*(v101 + 8))(v89, v102);
    v93 = 1;
    v91 = v105;
  }

  return (*(v90 + 56))(v91, v93, 1, v92);
}

uint64_t sub_2289FC8E4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v26 = a1;
  sub_228A009B8(0, &qword_27D863A08, MEMORY[0x277CCB3B0], MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v24 - v7;
  v27 = sub_22911B8DC();
  v9 = *(v27 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v27);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22911BDBC();
  MEMORY[0x22AAC5930]();
  if (*(v13 + 16) && (v14 = sub_2289AD6A0(v12), (v15 & 1) != 0))
  {
    v16 = v14;
    v25 = a3;
    v17 = *(v13 + 56);
    v18 = sub_22911BCBC();
    v19 = *(v18 - 8);
    v24 = a2;
    v20 = v19;
    a3 = v25;
    (*(v19 + 16))(v8, v17 + *(v19 + 72) * v16, v18);

    v21 = (*(v20 + 56))(v8, 0, 1, v18);
    a2 = v24;
  }

  else
  {

    v22 = sub_22911BCBC();
    v21 = (*(*(v22 - 8) + 56))(v8, 1, 1, v22);
  }

  MEMORY[0x28223BE20](v21);
  *(&v24 - 2) = v26;
  *(&v24 - 1) = a2;
  sub_2289F0830(sub_228A03D40, (&v24 - 4), a3);
  sub_228A03EB8(v8, &qword_27D863A08, MEMORY[0x277CCB3B0]);
  return (*(v9 + 8))(v12, v27);
}

void *sub_2289FCC04(void (*a1)(void), uint64_t a2, unint64_t a3)
{
  sub_228A009B8(0, &qword_27D8639F0, MEMORY[0x277CCB348], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v29 - v8;
  v10 = sub_22911BB8C();
  v32 = *(v10 - 8);
  v11 = *(v32 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v38 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v31 = &v29 - v15;
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v14 = v27)
  {
    v17 = 0;
    v36 = a3 & 0xFFFFFFFFFFFFFF8;
    v37 = a3 & 0xC000000000000001;
    v33 = (v32 + 32);
    v34 = (v32 + 48);
    v39 = v14;
    v40 = MEMORY[0x277D84F90];
    v29 = a1;
    v30 = a3;
    v35 = i;
    while (1)
    {
      if (v37)
      {
        v14 = MEMORY[0x22AAC6410](v17, a3);
      }

      else
      {
        if (v17 >= *(v36 + 16))
        {
          goto LABEL_20;
        }

        v14 = *(a3 + 8 * v17 + 32);
      }

      v18 = v14;
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      v41 = v14;
      a1(&v41);
      if (v3)
      {

        return v40;
      }

      v20 = v39;
      if ((*v34)(v9, 1, v39) == 1)
      {
        v14 = sub_228A03EB8(v9, &qword_27D8639F0, MEMORY[0x277CCB348]);
      }

      else
      {
        v21 = *v33;
        v22 = v31;
        (*v33)(v31, v9, v20);
        v21(v38, v22, v20);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v40 = sub_228A0FE30(0, v40[2] + 1, 1, v40);
        }

        v24 = v40[2];
        v23 = v40[3];
        if (v24 >= v23 >> 1)
        {
          v40 = sub_228A0FE30(v23 > 1, v24 + 1, 1, v40);
        }

        v25 = v39;
        v26 = v40;
        v40[2] = v24 + 1;
        v14 = (v21)(v26 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v24, v38, v25);
        a1 = v29;
        a3 = v30;
      }

      ++v17;
      if (v19 == v35)
      {
        return v40;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    v27 = v14;
    i = sub_22911C78C();
  }

  return MEMORY[0x277D84F90];
}

char *sub_2289FCF9C(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  sub_228A009B8(0, &qword_27D863A00, MEMORY[0x277CCB3A8], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v26 - v8;
  v10 = sub_22911BC5C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v33 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v30 = &v26 - v15;
  v16 = *(a3 + 16);
  if (!v16)
  {
    return MEMORY[0x277D84F90];
  }

  v17 = *(sub_22911BD8C() - 8);
  v27 = v11;
  v31 = (v11 + 32);
  v32 = (v11 + 48);
  v18 = a3 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v19 = *(v17 + 72);
  v34 = MEMORY[0x277D84F90];
  v28 = v10;
  v29 = a1;
  v26 = v19;
  while (1)
  {
    a1(v18);
    if (v3)
    {
      break;
    }

    if ((*v32)(v9, 1, v10) == 1)
    {
      sub_228A03EB8(v9, &qword_27D863A00, MEMORY[0x277CCB3A8]);
    }

    else
    {
      v20 = v30;
      v21 = *v31;
      (*v31)(v30, v9, v10);
      v21(v33, v20, v10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_228A0FE64(0, *(v34 + 2) + 1, 1, v34);
      }

      v23 = *(v34 + 2);
      v22 = *(v34 + 3);
      if (v23 >= v22 >> 1)
      {
        v34 = sub_228A0FE64(v22 > 1, v23 + 1, 1, v34);
      }

      v24 = v34;
      *(v34 + 2) = v23 + 1;
      v10 = v28;
      v21(&v24[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v23], v33, v28);
      a1 = v29;
      v19 = v26;
    }

    v18 += v19;
    if (!--v16)
    {
      return v34;
    }
  }

  return v34;
}

size_t sub_2289FD2F8(size_t a1, int64_t a2, char a3)
{
  result = sub_2289FDBE0(a1, a2, a3, *v3, &qword_27D863930, MEMORY[0x277CCB410], MEMORY[0x277CCB410]);
  *v3 = result;
  return result;
}

size_t sub_2289FD348(size_t a1, int64_t a2, char a3)
{
  result = sub_2289FDBE0(a1, a2, a3, *v3, &qword_27D863928, MEMORY[0x277CCB430], MEMORY[0x277CCB430]);
  *v3 = result;
  return result;
}

size_t sub_2289FD398(size_t a1, int64_t a2, char a3)
{
  result = sub_2289FDBE0(a1, a2, a3, *v3, &qword_27D863938, MEMORY[0x277CCB500], MEMORY[0x277CCB500]);
  *v3 = result;
  return result;
}

size_t sub_2289FD3E8(size_t a1, int64_t a2, char a3)
{
  result = sub_2289FDBE0(a1, a2, a3, *v3, &qword_27D863920, MEMORY[0x277CCB4F8], MEMORY[0x277CCB4F8]);
  *v3 = result;
  return result;
}

size_t sub_2289FD438(size_t a1, int64_t a2, char a3)
{
  result = sub_2289FDBE0(a1, a2, a3, *v3, &qword_27D862B88, MEMORY[0x277D10A20], MEMORY[0x277D10A20]);
  *v3 = result;
  return result;
}

size_t sub_2289FD488(size_t a1, int64_t a2, char a3)
{
  result = sub_2289FDBE0(a1, a2, a3, *v3, &qword_27D863A28, MEMORY[0x277CCB3E0], MEMORY[0x277CCB3E0]);
  *v3 = result;
  return result;
}

size_t sub_2289FD4D8(size_t a1, int64_t a2, char a3)
{
  result = sub_2289FDBE0(a1, a2, a3, *v3, &qword_27D863A30, MEMORY[0x277CCB3D8], MEMORY[0x277CCB3D8]);
  *v3 = result;
  return result;
}

size_t sub_2289FD528(size_t a1, int64_t a2, char a3)
{
  result = sub_2289FDBE0(a1, a2, a3, *v3, &qword_27D863A38, MEMORY[0x277CCB3B8], MEMORY[0x277CCB3B8]);
  *v3 = result;
  return result;
}

char *sub_2289FD578(char *a1, int64_t a2, char a3)
{
  result = sub_2289FD788(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2289FD598(size_t a1, int64_t a2, char a3)
{
  result = sub_2289FDBE0(a1, a2, a3, *v3, &qword_27D863978, sub_2289B3808, sub_2289B3808);
  *v3 = result;
  return result;
}

char *sub_2289FD5E8(char *a1, int64_t a2, char a3)
{
  result = sub_2289FD890(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2289FD608(size_t a1, int64_t a2, char a3)
{
  result = sub_2289FDBE0(a1, a2, a3, *v3, &qword_27D863958, sub_228A03620, sub_228A03620);
  *v3 = result;
  return result;
}

size_t sub_2289FD658(size_t a1, int64_t a2, char a3)
{
  result = sub_2289FDBE0(a1, a2, a3, *v3, &qword_27D8639F8, MEMORY[0x277CCB3A8], MEMORY[0x277CCB3A8]);
  *v3 = result;
  return result;
}

size_t sub_2289FD6A8(size_t a1, int64_t a2, char a3)
{
  result = sub_2289FDBE0(a1, a2, a3, *v3, &qword_27D863950, MEMORY[0x277CCB448], MEMORY[0x277CCB448]);
  *v3 = result;
  return result;
}

char *sub_2289FD6F8(char *a1, int64_t a2, char a3)
{
  result = sub_2289FD9B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2289FD718(char *a1, int64_t a2, char a3)
{
  result = sub_2289FDAD0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2289FD738(size_t a1, int64_t a2, char a3)
{
  result = sub_2289FDBE0(a1, a2, a3, *v3, &qword_27D863940, MEMORY[0x277CCB510], MEMORY[0x277CCB510]);
  *v3 = result;
  return result;
}

char *sub_2289FD788(char *result, int64_t a2, char a3, char *a4)
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
    sub_228A03A5C(0, &qword_27D863988);
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

char *sub_2289FD890(char *result, int64_t a2, char a3, char *a4)
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
    sub_228A009B8(0, &qword_27D863968, sub_228A0396C, MEMORY[0x277D84560]);
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

char *sub_2289FD9B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_228A03A5C(0, &qword_27D863948);
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

char *sub_2289FDAD0(char *result, int64_t a2, char a3, char *a4)
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
    sub_228A03A5C(0, &qword_27D862B80);
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

size_t sub_2289FDBE0(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_228A009B8(0, a5, a6, MEMORY[0x277D84560]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void sub_2289FDDD4(uint64_t a1, int a2, void *a3)
{
  v7 = sub_22911BD4C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2289B3808();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v17 = v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = *(a1 + 16);
  if (!v62)
  {
    goto LABEL_23;
  }

  LODWORD(v59) = a2;
  v57[1] = v3;
  v18 = *(v14 + 48);
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v61 = *(v15 + 72);
  v63 = a1;
  v57[0] = v19;
  sub_228A03C5C(a1 + v19, v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), sub_2289B3808);
  v58 = v8;
  v64 = *(v8 + 32);
  v65 = v7;
  v64(v11, v17, v7);
  v60 = v18;
  v20 = *&v17[v18];
  v21 = *a3;
  v23 = sub_2289AD538(v11);
  v24 = v21[2];
  v25 = (v22 & 1) == 0;
  v26 = v24 + v25;
  if (__OFADD__(v24, v25))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v27 = v22;
  if (v21[3] >= v26)
  {
    if (v59)
    {
      if ((v22 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_2289B14F0();
      if ((v27 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_10;
  }

  sub_2289AE7C8(v26, v59 & 1);
  v28 = *a3;
  v29 = sub_2289AD538(v11);
  if ((v27 & 1) == (v30 & 1))
  {
    v23 = v29;
    if ((v27 & 1) == 0)
    {
LABEL_13:
      v35 = *a3;
      *(*a3 + 8 * (v23 >> 6) + 64) |= 1 << v23;
      v36 = v35[6];
      v59 = *(v58 + 72);
      v64((v36 + v59 * v23), v11, v65);
      *(v35[7] + 8 * v23) = v20;
      v37 = v35[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (!v38)
      {
        v35[2] = v39;
        v40 = v63;
        if (v62 != 1)
        {
          v41 = v63 + v61 + v57[0];
          v42 = 1;
          while (v42 < *(v40 + 16))
          {
            sub_228A03C5C(v41, v17, sub_2289B3808);
            v64(v11, v17, v65);
            v43 = *&v17[v60];
            v44 = *a3;
            v45 = sub_2289AD538(v11);
            v47 = v44[2];
            v48 = (v46 & 1) == 0;
            v38 = __OFADD__(v47, v48);
            v49 = v47 + v48;
            if (v38)
            {
              goto LABEL_24;
            }

            v50 = v46;
            if (v44[3] < v49)
            {
              sub_2289AE7C8(v49, 1);
              v51 = *a3;
              v45 = sub_2289AD538(v11);
              if ((v50 & 1) != (v52 & 1))
              {
                goto LABEL_27;
              }
            }

            if (v50)
            {
              goto LABEL_10;
            }

            v53 = *a3;
            *(*a3 + 8 * (v45 >> 6) + 64) |= 1 << v45;
            v54 = v45;
            v64((v53[6] + v59 * v45), v11, v65);
            *(v53[7] + 8 * v54) = v43;
            v55 = v53[2];
            v38 = __OFADD__(v55, 1);
            v56 = v55 + 1;
            if (v38)
            {
              goto LABEL_25;
            }

            ++v42;
            v53[2] = v56;
            v41 += v61;
            v40 = v63;
            if (v62 == v42)
            {
              goto LABEL_23;
            }
          }

          goto LABEL_26;
        }

LABEL_23:

        return;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_10:
    v31 = swift_allocError();
    swift_willThrow();

    v68 = v31;
    v32 = v31;
    sub_2289BCE8C();
    v33 = swift_dynamicCast();
    v34 = v65;
    if ((v33 & 1) == 0)
    {

      (*(v58 + 8))(v11, v34);

      return;
    }

    goto LABEL_28;
  }

LABEL_27:
  sub_22911CB1C();
  __break(1u);
LABEL_28:
  v66 = 0;
  v67 = 0xE000000000000000;
  sub_22911C83C();
  MEMORY[0x22AAC5FC0](0xD00000000000001BLL, 0x8000000229184370);
  sub_22911C94C();
  MEMORY[0x22AAC5FC0](39, 0xE100000000000000);
  sub_22911CA2C();
  __break(1u);
}

void sub_2289FE324(void *a1, char a2, void *a3)
{
  v4 = a1[2];
  if (!v4)
  {
    goto LABEL_6;
  }

  v8 = a1[4];
  v7 = a1[5];
  v9 = *a3;
  v10 = sub_2289AD60C(v8);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_2289AEB94(v15, a2 & 1);
    v17 = *a3;
    v10 = sub_2289AD60C(v8);
    if ((v16 & 1) != (v18 & 1))
    {
LABEL_5:
      sub_22911CB1C();
      __break(1u);
LABEL_6:

      return;
    }

LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v21 = v10;
  sub_2289B175C();
  v10 = v21;
  if (v16)
  {
LABEL_9:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    sub_2289BCE8C();
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_27;
  }

LABEL_12:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  *(v22[6] + 8 * v10) = v8;
  *(v22[7] + 8 * v10) = v7;
  v23 = v22[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    sub_22911C83C();
    MEMORY[0x22AAC5FC0](0xD00000000000001BLL, 0x8000000229184370);
    sub_22911C94C();
    MEMORY[0x22AAC5FC0](39, 0xE100000000000000);
    sub_22911CA2C();
    __break(1u);
    return;
  }

  v22[2] = v24;
  if (v4 != 1)
  {
    v25 = a1 + 7;
    v26 = 1;
    while (v26 < a1[2])
    {
      v27 = *(v25 - 1);
      v28 = *v25;
      v29 = *a3;
      v30 = sub_2289AD60C(v27);
      v32 = v29[2];
      v33 = (v31 & 1) == 0;
      v14 = __OFADD__(v32, v33);
      v34 = v32 + v33;
      if (v14)
      {
        goto LABEL_24;
      }

      v35 = v31;
      if (v29[3] < v34)
      {
        sub_2289AEB94(v34, 1);
        v36 = *a3;
        v30 = sub_2289AD60C(v27);
        if ((v35 & 1) != (v37 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v35)
      {
        goto LABEL_9;
      }

      v38 = *a3;
      *(*a3 + 8 * (v30 >> 6) + 64) |= 1 << v30;
      *(v38[6] + 8 * v30) = v27;
      *(v38[7] + 8 * v30) = v28;
      v39 = v38[2];
      v14 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v14)
      {
        goto LABEL_25;
      }

      ++v26;
      v38[2] = v40;
      v25 += 2;
      if (v4 == v26)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_26;
  }

LABEL_22:
}

void sub_2289FE668(uint64_t a1, char a2, uint64_t *a3)
{
  v75 = a3;
  v6 = sub_22911BCBC();
  v72 = *(v6 - 8);
  v7 = *(v72 + 64);
  MEMORY[0x28223BE20](v6);
  v73 = v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_22911B8DC();
  v71 = *(v74 - 8);
  v9 = *(v71 + 64);
  MEMORY[0x28223BE20](v74);
  v11 = v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228A03620();
  v70 = *(v12 - 8);
  v13 = *(v70 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = *(a1 + 16);
  if (!v67)
  {
    goto LABEL_24;
  }

  v63[1] = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v17 = *(v14 + 48);
  v18 = *(v70 + 80);
  v68 = a1;
  v19 = a1 + ((v18 + 32) & ~v18);
  v20 = (v71 + 32);
  v21 = (v72 + 32);
  v65 = v19;
  sub_228A03C5C(v19, v16, sub_228A03620);
  v64 = *v20;
  v64(v11, v16, v74);
  v22 = *v21;
  v66 = v17;
  v69 = v6;
  v23 = v6;
  v24 = v22;
  v22(v73, &v16[v17], v23);
  v25 = *v75;
  v27 = sub_2289AD6A0(v11);
  v28 = *(v25 + 16);
  v29 = (v26 & 1) == 0;
  v30 = v28 + v29;
  if (__OFADD__(v28, v29))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v31 = v26;
  if (*(v25 + 24) >= v30)
  {
    if (a2)
    {
      if ((v26 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_2289B18B8();
      if ((v31 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  v32 = v75;
  sub_2289AEE08(v30, a2 & 1);
  v33 = *v32;
  v34 = sub_2289AD6A0(v11);
  if ((v31 & 1) == (v35 & 1))
  {
    v27 = v34;
    if ((v31 & 1) == 0)
    {
LABEL_14:
      v38 = v74;
      v39 = *v75;
      *(*v75 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      v64((v39[6] + *(v71 + 72) * v27), v11, v38);
      v40 = v69;
      v24((v39[7] + *(v72 + 72) * v27), v73, v69);
      v41 = v39[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v39[2] = v43;
      if (v67 != 1)
      {
        v44 = 1;
        while (v44 < *(v68 + 16))
        {
          sub_228A03C5C(v65 + *(v70 + 72) * v44, v16, sub_228A03620);
          v45 = *v20;
          (*v20)(v11, v16, v74);
          v46 = *v21;
          (*v21)(v73, &v16[v66], v40);
          v47 = *v75;
          v48 = sub_2289AD6A0(v11);
          v50 = *(v47 + 16);
          v51 = (v49 & 1) == 0;
          v42 = __OFADD__(v50, v51);
          v52 = v50 + v51;
          if (v42)
          {
            goto LABEL_26;
          }

          v53 = v49;
          if (*(v47 + 24) < v52)
          {
            v54 = v75;
            sub_2289AEE08(v52, 1);
            v55 = *v54;
            v48 = sub_2289AD6A0(v11);
            if ((v53 & 1) != (v56 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v53)
          {
            goto LABEL_11;
          }

          v57 = v74;
          v58 = *v75;
          *(*v75 + 8 * (v48 >> 6) + 64) |= 1 << v48;
          v59 = v48;
          v45((v58[6] + *(v71 + 72) * v48), v11, v57);
          v60 = v58[7] + *(v72 + 72) * v59;
          v40 = v69;
          v46(v60, v73, v69);
          v61 = v58[2];
          v42 = __OFADD__(v61, 1);
          v62 = v61 + 1;
          if (v42)
          {
            goto LABEL_27;
          }

          ++v44;
          v58[2] = v62;
          if (v67 == v44)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v36 = swift_allocError();
    swift_willThrow();

    v78 = v36;
    v37 = v36;
    sub_2289BCE8C();
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v72 + 8))(v73, v69);
      (*(v71 + 8))(v11, v74);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_22911CB1C();
  __break(1u);
LABEL_29:
  v76 = 0;
  v77 = 0xE000000000000000;
  sub_22911C83C();
  MEMORY[0x22AAC5FC0](0xD00000000000001BLL, 0x8000000229184370);
  sub_22911C94C();
  MEMORY[0x22AAC5FC0](39, 0xE100000000000000);
  sub_22911CA2C();
  __break(1u);
}

void sub_2289FECC0(uint64_t a1, int a2, char a3, uint64_t a4)
{
  if (a3)
  {
    if (sub_22911C99C() == *(a4 + 36))
    {
      sub_22911C9AC();
      sub_2289B3D00(0, &unk_280D679B0, 0x277CCABB0);
      swift_dynamicCast();
      sub_2289AD650(v8);
      v6 = v5;

      if (v6)
      {
        sub_22911C97C();
        sub_22911C9CC();
        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (a1 < 0 || -(-1 << *(a4 + 32)) <= a1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (((*(a4 + 64 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a1) & 1) == 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a4 + 36) != a2)
  {
LABEL_15:
    __break(1u);
    return;
  }

  sub_22911C71C();
  v7 = *(a4 + 36);
}

void *sub_2289FEE24(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = (*(a5 + 48) + 16 * a2);
    v6 = *v5;
    v7 = v5[1];
    v8 = *(*(a5 + 56) + 8 * a2);
    *result = v8;

    v9 = v8;
    return v6;
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_2289FEEB4(void *a1, unint64_t a2, int a3, char a4, uint64_t a5)
{
  if ((a5 & 0xC000000000000001) != 0)
  {
    if (a4)
    {
      sub_22911C9DC();
      sub_2289B3D00(0, &unk_280D679B0, 0x277CCABB0);
      swift_dynamicCast();
      swift_dynamicCast();
      *a1 = v13;
      return;
    }

    goto LABEL_18;
  }

  if ((a4 & 1) == 0)
  {
LABEL_8:
    if ((a2 & 0x8000000000000000) == 0 && 1 << *(a5 + 32) > a2)
    {
      if ((*(a5 + 8 * (a2 >> 6) + 64) >> a2))
      {
        if (*(a5 + 36) == a3)
        {
          goto LABEL_12;
        }

LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        return;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (sub_22911C99C() != *(a5 + 36))
  {
    __break(1u);
    goto LABEL_15;
  }

  sub_22911C9AC();
  sub_2289B3D00(0, &unk_280D679B0, 0x277CCABB0);
  swift_dynamicCast();
  a2 = sub_2289AD650(v13);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_12:
  v10 = *(*(a5 + 48) + 8 * a2);
  v11 = *(*(a5 + 56) + 8 * a2);
  *a1 = v11;
  v10;
  v12 = v11;
}

id sub_2289FF084(id result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a5 + 36) != a3)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = result;
  v8 = *(a5 + 48);
  v9 = sub_22911B8DC();
  (*(*(v9 - 8) + 16))(v7, v8 + *(*(v9 - 8) + 72) * a2, v9);
  v10 = *(*(a5 + 56) + 8 * a2);

  return v10;
}

void *sub_2289FF154(void *a1, int a2, uint64_t a3)
{
  v7 = sub_22911B75C();
  v36 = *(v7 - 8);
  v37 = v7;
  v8 = *(v36 + 64);
  MEMORY[0x28223BE20](v7);
  v35 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_22911B73C();
  v31 = *(v33 - 8);
  v10 = *(v31 + 64);
  MEMORY[0x28223BE20](v33);
  v32 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22911B88C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (&v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = sub_22911BE0C();
  v17 = *(v34 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v34);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, a3, v12);
  HKDatabase.Pruning.Show.init(profile:referenceDate:deletedSampleSyncEntityOnly:)(a1, v16, a2, v20);
  if (!v3)
  {
    v21 = sub_22911B79C();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    sub_22911B78C();
    v24 = MEMORY[0x277CC8718];
    sub_228A009B8(0, &qword_27D863990, MEMORY[0x277CC8718], MEMORY[0x277D84560]);
    v25 = *(v31 + 72);
    v26 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_229163C50;
    sub_22911B72C();
    sub_22911B71C();
    v38 = v27;
    sub_228A03F88(&qword_27D863998, MEMORY[0x277CC8718]);
    sub_228A009B8(0, &qword_27D8639A0, v24, MEMORY[0x277D83940]);
    sub_228A03AA8();
    sub_22911C6EC();
    sub_22911B74C();
    (*(v36 + 104))(v35, *MEMORY[0x277CC8778], v37);
    sub_22911B76C();
    sub_228A03F88(&qword_27D863A40, MEMORY[0x277CCB3E8]);
    v28 = v34;
    a1 = sub_22911B77C();
    (*(v17 + 8))(v20, v28);
  }

  return a1;
}

uint64_t sub_2289FF5E4(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 16) == a1 && *(v2 + 24) == a2)
  {
    return 1;
  }

  else
  {
    return sub_22911CADC();
  }
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2289FF61C()
{
  v1 = *(v0 + 16);
  sub_2289B3D00(0, &qword_280D678B0, 0x277D82BB8);
  return sub_22911C6BC() & 1;
}

uint64_t sub_2289FF670(void *a1, uint64_t a2)
{
  v5 = sub_22911B75C();
  v27 = *(v5 - 8);
  v28 = v5;
  v6 = *(v27 + 64);
  MEMORY[0x28223BE20](v5);
  v26 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_22911B73C();
  v8 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v9 = sub_22911B88C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_22911BBDC();
  v14 = *(v25 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v25);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, a2, v9);
  HKDatabase.Pruning.ShowWithDeletedSampleInfo.init(profile:referenceDate:)(a1, v13, v17);
  if (!v2)
  {
    v23 = v14;
    v18 = sub_22911B79C();
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    sub_22911B78C();
    v29 = MEMORY[0x277D84F90];
    sub_228A03F88(&qword_27D863998, MEMORY[0x277CC8718]);
    sub_228A009B8(0, &qword_27D8639A0, MEMORY[0x277CC8718], MEMORY[0x277D83940]);
    sub_228A03AA8();
    sub_22911C6EC();
    sub_22911B74C();
    (*(v27 + 104))(v26, *MEMORY[0x277CC8778], v28);
    sub_22911B76C();
    sub_228A03F88(&qword_27D863A20, MEMORY[0x277CCB360]);
    v21 = v25;
    v9 = sub_22911B77C();
    (*(v23 + 8))(v17, v21);
  }

  return v9;
}

uint64_t sub_2289FFA68(void *a1, uint64_t a2)
{
  v5 = sub_22911B75C();
  v31 = *(v5 - 8);
  v32 = v5;
  v6 = *(v31 + 64);
  MEMORY[0x28223BE20](v5);
  v30 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22911B73C();
  v28[0] = *(v8 - 8);
  v28[1] = v8;
  v9 = *(v28[0] + 64);
  MEMORY[0x28223BE20](v8);
  v10 = sub_22911B88C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_22911BB3C();
  v15 = *(v29 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v29);
  v18 = v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a2, v10);
  HKDatabase.Pruning.DeletedSampleInfo.init(profile:referenceDate:)(a1, v14, v18);
  if (!v2)
  {
    v19 = sub_22911B79C();
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    sub_22911B78C();
    v22 = MEMORY[0x277CC8718];
    sub_228A009B8(0, &qword_27D863990, MEMORY[0x277CC8718], MEMORY[0x277D84560]);
    v23 = *(v28[0] + 72);
    v24 = (*(v28[0] + 80) + 32) & ~*(v28[0] + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_229163C50;
    sub_22911B72C();
    sub_22911B71C();
    v33 = v25;
    sub_228A03F88(&qword_27D863998, MEMORY[0x277CC8718]);
    sub_228A009B8(0, &qword_27D8639A0, v22, MEMORY[0x277D83940]);
    sub_228A03AA8();
    sub_22911C6EC();
    sub_22911B74C();
    (*(v31 + 104))(v30, *MEMORY[0x277CC8778], v32);
    sub_22911B76C();
    sub_228A03F88(&qword_27D863A18, MEMORY[0x277CCB338]);
    v26 = v29;
    a2 = sub_22911B77C();
    (*(v15 + 8))(v18, v26);
  }

  return a2;
}

uint64_t _s28DateClassificationBoundariesVMa()
{
  result = qword_27D863910;
  if (!qword_27D863910)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2289FFF34(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_22911B75C();
  v38 = *(v8 - 8);
  v39 = v8;
  v9 = *(v38 + 64);
  MEMORY[0x28223BE20](v8);
  v37 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_22911B73C();
  v34[0] = *(v35 - 8);
  v11 = *(v34[0] + 64);
  MEMORY[0x28223BE20](v35);
  v34[1] = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22911B88C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_22911BC3C();
  v18 = *(v36 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v36);
  v21 = v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, a2, v13);
  v22 = a1;
  v23 = v40;
  HKDatabase.Pruning.ClassifiedDeletedSampleInfo.init(profile:referenceDate:anchor:limit:)(v22, v17, a3, a4, v21);
  if (!v23)
  {
    v24 = v18;
    v25 = sub_22911B79C();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    sub_22911B78C();
    v28 = MEMORY[0x277CC8718];
    sub_228A009B8(0, &qword_27D863990, MEMORY[0x277CC8718], MEMORY[0x277D84560]);
    v29 = *(v34[0] + 72);
    v30 = (*(v34[0] + 80) + 32) & ~*(v34[0] + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_229163C50;
    sub_22911B72C();
    sub_22911B71C();
    v41 = v31;
    sub_228A03F88(&qword_27D863998, MEMORY[0x277CC8718]);
    sub_228A009B8(0, &qword_27D8639A0, v28, MEMORY[0x277D83940]);
    sub_228A03AA8();
    sub_22911C6EC();
    sub_22911B74C();
    (*(v38 + 104))(v37, *MEMORY[0x277CC8778], v39);
    sub_22911B76C();
    sub_228A03F88(&qword_27D8639B8, MEMORY[0x277CCB370]);
    v32 = v36;
    a3 = sub_22911B77C();
    (*(v24 + 8))(v21, v32);
  }

  return a3;
}

unint64_t sub_228A003EC()
{
  result = qword_27D8638B8;
  if (!qword_27D8638B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8638B8);
  }

  return result;
}

uint64_t (*sub_228A00458(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5))(uint64_t)
{
  v51 = a5;
  v48 = a3;
  v49 = a4;
  v47 = a2;
  v50 = a1;
  v5 = sub_22911B75C();
  v45 = *(v5 - 8);
  v46 = v5;
  v6 = *(v45 + 64);
  MEMORY[0x28223BE20](v5);
  v44 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_22911B73C();
  v40 = *(v43 - 8);
  v8 = *(v40 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277CC9578];
  sub_228A009B8(0, &qword_27D862B48, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v39 - v16;
  v18 = sub_22911B88C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_22911BC3C();
  v23 = *(v41 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v41);
  v26 = &v39 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v22, v47, v18);
  sub_228A03E38(v48, v17, &qword_27D862B48, v10);
  sub_228A03E38(v49, v15, &qword_27D862B48, v10);
  v27 = v50;
  v28 = v52;
  HKDatabase.Pruning.ClassifiedDeletedSampleInfo.init(profile:referenceDate:createdOnOrAfter:createdBefore:limit:)(v27, v22, v17, v15, v51, v26);
  if (!v28)
  {
    v29 = v23;
    v30 = sub_22911B79C();
    v31 = *(v30 + 48);
    v32 = *(v30 + 52);
    swift_allocObject();
    sub_22911B78C();
    v33 = MEMORY[0x277CC8718];
    sub_228A009B8(0, &qword_27D863990, MEMORY[0x277CC8718], MEMORY[0x277D84560]);
    v34 = *(v40 + 72);
    v35 = (*(v40 + 80) + 32) & ~*(v40 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_229163C50;
    sub_22911B72C();
    sub_22911B71C();
    v53 = v36;
    sub_228A03F88(&qword_27D863998, MEMORY[0x277CC8718]);
    sub_228A009B8(0, &qword_27D8639A0, v33, MEMORY[0x277D83940]);
    sub_228A03AA8();
    sub_22911C6EC();
    sub_22911B74C();
    (*(v45 + 104))(v44, *MEMORY[0x277CC8778], v46);
    sub_22911B76C();
    sub_228A03F88(&qword_27D8639B8, MEMORY[0x277CCB370]);
    v37 = v41;
    v10 = sub_22911B77C();
    (*(v29 + 8))(v26, v37);
  }

  return v10;
}

void sub_228A009B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

char *sub_228A00A1C(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v124 = a4;
  v126 = a3;
  v100 = a2;
  v125 = a1;
  v127[1] = *MEMORY[0x277D85DE8];
  v106 = sub_22911B75C();
  v105 = *(v106 - 8);
  v4 = *(v105 + 64);
  MEMORY[0x28223BE20](v106);
  v104 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_22911B73C();
  v101 = *(v103 - 8);
  v6 = *(v101 + 64);
  MEMORY[0x28223BE20](v103);
  v102 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228A009B8(0, &qword_27D8638A0, MEMORY[0x277CCB3E0], MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v112 = &v92 - v10;
  v11 = sub_22911BDDC();
  v113 = *(v11 - 8);
  v114 = v11;
  v12 = *(v113 + 64);
  MEMORY[0x28223BE20](v11);
  v97 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_22911BD4C();
  v110 = *(v116 - 8);
  v14 = *(v110 + 64);
  MEMORY[0x28223BE20](v116);
  v117 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22911BD0C();
  v108 = *(v16 - 8);
  v109 = v16;
  v17 = *(v108 + 64);
  MEMORY[0x28223BE20](v16);
  v107 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_22911BE0C();
  v111 = *(v115 - 8);
  v19 = *(v111 + 64);
  MEMORY[0x28223BE20](v115);
  v121 = &v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22911B8DC();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_22911B88C();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v26);
  v118 = &v92 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v119 = (&v92 - v32);
  v33 = MEMORY[0x28223BE20](v31);
  v122 = &v92 - v34;
  MEMORY[0x28223BE20](v33);
  v36 = &v92 - v35;
  v99 = sub_22911BBBC();
  v98 = *(v99 - 8);
  v37 = *(v98 + 64);
  MEMORY[0x28223BE20](v99);
  v39 = &v92 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *(v27 + 16);
  v41 = v126;
  v126 = v26;
  v40(v36, v41, v26);
  v123 = v22;
  v42 = *(v22 + 16);
  v43 = v124;
  v124 = v21;
  v42(v25, v43, v21);
  v44 = objc_opt_self();
  v45 = sub_22911B8BC();
  v127[0] = 0;
  v46 = [v44 deletedSampleInProfile:v125 sampleUUID:v45 error:v127];

  if (v127[0])
  {
    v127[0];

    swift_willThrow();
    (*(v123 + 8))(v25, v124);
    (*(v27 + 8))(v36, v126);
  }

  else
  {
    v47 = v119;
    v94 = v25;
    v93 = v39;
    v95 = v27;
    v96 = v36;
    v40(v122, v36, v126);
    v48 = v40;
    if (v46)
    {
      sub_228A03A5C(0, &qword_280D679C0);
      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_2291640E0;
      v50 = v49;
      *(v49 + 32) = v46;
    }

    else
    {
      v50 = MEMORY[0x277D84F90];
    }

    v52 = v123;
    v51 = v124;
    v53 = v122;
    v54 = v126;
    v48(v47, v122, v126);
    v55 = v46;
    v56 = v47;
    v57 = v55;
    v58 = v125;
    v59 = v120;
    HKDatabase.Pruning.Show.init(profile:referenceDate:deletedSampleSyncEntityOnly:)(v58, v56, 1, v121);
    v60 = v96;
    if (v59)
    {

      v25 = *(v95 + 8);
      (v25)(v53, v54);
      (*(v52 + 8))(v94, v51);
      (v25)(v60, v54);
    }

    else
    {
      v125 = v57;
      v61 = v107;
      sub_22911BD2C();
      sub_22911BCEC();
      (*(v108 + 8))(v61, v109);
      sub_22911B83C();
      sub_2289B3D00(0, &qword_27D8638B0, off_27860E968);
      v62 = [swift_getObjCClassFromMetadata() syncEntityIdentifier];
      [v62 entityIdentifier];
      v63 = [v62 schemaIdentifier];
      if (v63)
      {
        v64 = v63;
        sub_22911C35C();
      }

      v65 = v117;
      sub_22911BD3C();

      v66 = v121;
      v67 = sub_22911BDFC();
      MEMORY[0x28223BE20](v67);
      *(&v92 - 2) = v65;
      v68 = v112;
      sub_2289FBD3C(sub_228A03FF0, v67, v112);
      v69 = v68;

      v70 = v113;
      v71 = v114;
      if ((*(v113 + 48))(v69, 1, v114) == 1)
      {

        sub_228A03EB8(v69, &qword_27D8638A0, MEMORY[0x277CCB3E0]);
        sub_228A003EC();
        swift_allocError();
        swift_willThrow();

        v25 = *(v95 + 8);
        v72 = v126;
        (v25)(v122, v126);
        (*(v123 + 8))(v94, v124);
        (v25)(v96, v72);
        (*(v110 + 8))(v65, v116);
        (v25)(v118, v72);
        (*(v111 + 8))(v66, v115);
      }

      else
      {
        v73 = v97;
        v74 = (*(v70 + 32))(v97, v69, v71);
        MEMORY[0x28223BE20](v74);
        v75 = v118;
        *(&v92 - 6) = v118;
        *(&v92 - 5) = v66;
        *(&v92 - 4) = v73;
        *(&v92 - 24) = v100 & 1;
        *(&v92 - 2) = sub_2289DA034;
        *(&v92 - 1) = 0;
        sub_2289FCC04(sub_228A03FD4, (&v92 - 8), v50);
        v120 = 0;

        sub_22911BB9C();

        v76 = *(v95 + 8);
        v77 = v126;
        v76(v122, v126);
        (*(v123 + 8))(v94, v124);
        v76(v96, v77);
        (*(v70 + 8))(v73, v71);
        (*(v110 + 8))(v117, v116);
        v76(v75, v77);
        (*(v111 + 8))(v66, v115);
        v78 = sub_22911B79C();
        v79 = *(v78 + 48);
        v80 = *(v78 + 52);
        swift_allocObject();
        v81 = sub_22911B78C();
        v82 = MEMORY[0x277CC8718];
        sub_228A009B8(0, &qword_27D863990, MEMORY[0x277CC8718], MEMORY[0x277D84560]);
        v83 = *(v101 + 72);
        v84 = (*(v101 + 80) + 32) & ~*(v101 + 80);
        v85 = swift_allocObject();
        v85[1] = xmmword_229163C50;
        sub_22911B72C();
        sub_22911B71C();
        v127[0] = v85;
        sub_228A03F88(&qword_27D863998, MEMORY[0x277CC8718]);
        sub_228A009B8(0, &qword_27D8639A0, v82, MEMORY[0x277D83940]);
        sub_228A03AA8();
        sub_22911C6EC();
        v86 = v93;
        sub_22911B74C();
        (*(v105 + 104))(v104, *MEMORY[0x277CC8778], v106);
        v25 = v81;
        sub_22911B76C();
        sub_228A03F88(&qword_27D8639B0, MEMORY[0x277CCB350]);
        v87 = v99;
        v88 = v120;
        v89 = sub_22911B77C();
        if (!v88)
        {
          v25 = v89;
        }

        (*(v98 + 8))(v86, v87);
      }
    }
  }

  v90 = *MEMORY[0x277D85DE8];
  return v25;
}

void (*sub_228A01894(void *a1, int a2, int a3, uint64_t a4, char *a5, uint64_t a6))(char *, uint64_t)
{
  v116 = a5;
  v117 = a6;
  LODWORD(v115) = a3;
  v92 = a2;
  v118[1] = *MEMORY[0x277D85DE8];
  v8 = sub_22911B75C();
  v99 = *(v8 - 8);
  v100 = v8;
  v9 = *(v99 + 64);
  MEMORY[0x28223BE20](v8);
  v98 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_22911B73C();
  v95 = *(v97 - 8);
  v11 = *(v95 + 64);
  MEMORY[0x28223BE20](v97);
  v96 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228A009B8(0, &qword_27D8638A0, MEMORY[0x277CCB3E0], MEMORY[0x277D83D88]);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v104 = &v87 - v15;
  v16 = sub_22911BDDC();
  v105 = *(v16 - 8);
  v106 = v16;
  v17 = *(v105 + 64);
  MEMORY[0x28223BE20](v16);
  v90 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22911BD4C();
  v110 = *(v19 - 8);
  v111 = v19;
  v20 = *(v110 + 64);
  MEMORY[0x28223BE20](v19);
  v109 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22911BD0C();
  v102 = *(v22 - 8);
  v103 = v22;
  v23 = *(v102 + 64);
  MEMORY[0x28223BE20](v22);
  v101 = &v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_22911BE0C();
  v107 = *(v25 - 8);
  v108 = v25;
  v26 = *(v107 + 64);
  MEMORY[0x28223BE20](v25);
  v114 = &v87 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_22911B88C();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v28);
  v112 = &v87 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v35 = (&v87 - v34);
  v36 = MEMORY[0x28223BE20](v33);
  v38 = &v87 - v37;
  MEMORY[0x28223BE20](v36);
  v40 = &v87 - v39;
  v94 = sub_22911BBBC();
  v93 = *(v94 - 8);
  v41 = *(v93 + 64);
  MEMORY[0x28223BE20](v94);
  v91 = &v87 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *(v29 + 16);
  v43(v40, a4, v28);
  v44 = sub_2289DA034;
  if (v115)
  {
    v44 = sub_228A03FEC;
  }

  v89 = v44;
  v45 = objc_opt_self();
  v118[0] = 0;
  v115 = a1;
  v46 = [v45 deletedSamplesInProfile:a1 anchor:v116 limit:v117 error:v118];
  v47 = v118[0];
  if (v46)
  {
    v48 = v46;
    v117 = v29;
    sub_2289B3D00(0, &qword_27D8638A8, off_27860E8C0);
    v49 = sub_22911C45C();
    v50 = v47;

    v43(v38, v40, v28);
    v43(v35, v38, v28);
    v51 = v115;
    v52 = v113;
    v53 = v114;
    HKDatabase.Pruning.Show.init(profile:referenceDate:deletedSampleSyncEntityOnly:)(v51, v35, 1, v114);
    if (v52)
    {

      v54 = *(v117 + 8);
      v54(v38, v28);
      v54(v40, v28);
    }

    else
    {
      v88 = v49;
      v113 = v28;
      v116 = v40;
      v55 = v101;
      sub_22911BD2C();
      sub_22911BCEC();
      (*(v102 + 8))(v55, v103);
      v115 = v38;
      sub_22911B83C();
      sub_2289B3D00(0, &qword_27D8638B0, off_27860E968);
      v56 = [swift_getObjCClassFromMetadata() syncEntityIdentifier];
      [v56 entityIdentifier];
      v57 = [v56 schemaIdentifier];
      if (v57)
      {
        v58 = v57;
        sub_22911C35C();
      }

      v59 = v117;
      v60 = v109;
      sub_22911BD3C();

      v61 = sub_22911BDFC();
      v62 = v53;
      MEMORY[0x28223BE20](v61);
      *(&v87 - 2) = v60;
      v63 = v104;
      sub_2289FBD3C(sub_228A03FF0, v61, v104);

      v64 = v105;
      v65 = v106;
      if ((*(v105 + 48))(v63, 1, v106) == 1)
      {

        sub_228A03EB8(v63, &qword_27D8638A0, MEMORY[0x277CCB3E0]);
        sub_228A003EC();
        swift_allocError();
        swift_willThrow();
        v54 = *(v59 + 8);
        v66 = v113;
        v54(v115, v113);
        v54(v116, v66);
        (*(v110 + 8))(v60, v111);
        v54(v112, v66);
        (*(v107 + 8))(v62, v108);
      }

      else
      {
        v67 = v62;
        v68 = v90;
        v69 = (*(v64 + 32))(v90, v63, v65);
        MEMORY[0x28223BE20](v69);
        v70 = v112;
        *(&v87 - 6) = v112;
        *(&v87 - 5) = v67;
        *(&v87 - 4) = v68;
        *(&v87 - 24) = v92 & 1;
        *(&v87 - 2) = v89;
        *(&v87 - 1) = 0;
        sub_2289FCC04(sub_228A03FD4, (&v87 - 8), v88);
        v117 = 0;

        v71 = v91;
        sub_22911BB9C();
        v72 = *(v59 + 8);
        v73 = v113;
        v72(v115, v113);
        v72(v116, v73);
        (*(v64 + 8))(v68, v65);
        (*(v110 + 8))(v60, v111);
        v72(v70, v73);
        (*(v107 + 8))(v114, v108);
        v74 = sub_22911B79C();
        v75 = *(v74 + 48);
        v76 = *(v74 + 52);
        swift_allocObject();
        v77 = sub_22911B78C();
        v78 = MEMORY[0x277CC8718];
        sub_228A009B8(0, &qword_27D863990, MEMORY[0x277CC8718], MEMORY[0x277D84560]);
        v79 = *(v95 + 72);
        v80 = (*(v95 + 80) + 32) & ~*(v95 + 80);
        v81 = swift_allocObject();
        v81[1] = xmmword_229163C50;
        sub_22911B72C();
        sub_22911B71C();
        v118[0] = v81;
        sub_228A03F88(&qword_27D863998, MEMORY[0x277CC8718]);
        sub_228A009B8(0, &qword_27D8639A0, v78, MEMORY[0x277D83940]);
        sub_228A03AA8();
        sub_22911C6EC();
        sub_22911B74C();
        (*(v99 + 104))(v98, *MEMORY[0x277CC8778], v100);
        v54 = v77;
        sub_22911B76C();
        sub_228A03F88(&qword_27D8639B0, MEMORY[0x277CCB350]);
        v82 = v94;
        v83 = v117;
        v84 = sub_22911B77C();
        if (!v83)
        {
          v54 = v84;
        }

        (*(v93 + 8))(v71, v82);
      }
    }
  }

  else
  {
    v54 = v118[0];
    sub_22911B7FC();

    swift_willThrow();
    (*(v29 + 8))(v40, v28);
  }

  v85 = *MEMORY[0x277D85DE8];
  return v54;
}

uint64_t *sub_228A02588(void *a1, int a2, int a3, void (*a4)(void, void, void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v133 = a4;
  v134 = a7;
  v139 = a6;
  v136 = a5;
  LODWORD(v140) = a3;
  v110 = a2;
  v135 = a1;
  v141[1] = *MEMORY[0x277D85DE8];
  v116 = sub_22911B75C();
  v115 = *(v116 - 8);
  v7 = *(v115 + 64);
  MEMORY[0x28223BE20](v116);
  v114 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_22911B73C();
  v111 = *(v113 - 8);
  v9 = *(v111 + 64);
  MEMORY[0x28223BE20](v113);
  v112 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D83D88];
  sub_228A009B8(0, &qword_27D8638A0, MEMORY[0x277CCB3E0], MEMORY[0x277D83D88]);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v120 = &v106 - v14;
  v15 = sub_22911BDDC();
  v122 = *(v15 - 8);
  v123 = v15;
  v16 = *(v122 + 64);
  MEMORY[0x28223BE20](v15);
  v107 = &v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22911BD4C();
  v126 = *(v18 - 8);
  v127 = v18;
  v19 = *(v126 + 64);
  MEMORY[0x28223BE20](v18);
  v128 = &v106 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_22911BD0C();
  v118 = *(v119 - 8);
  v21 = *(v118 + 64);
  MEMORY[0x28223BE20](v119);
  v117 = &v106 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22911BE0C();
  v124 = *(v23 - 8);
  v125 = v23;
  v24 = *(v124 + 64);
  MEMORY[0x28223BE20](v23);
  v137 = &v106 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x277CC9578];
  sub_228A009B8(0, &qword_27D862B48, MEMORY[0x277CC9578], v11);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v31 = &v106 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v106 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v106 - v36;
  MEMORY[0x28223BE20](v35);
  v39 = &v106 - v38;
  v40 = sub_22911B88C();
  v41 = *(v40 - 8);
  v42 = v41[8];
  v43 = MEMORY[0x28223BE20](v40);
  v129 = (&v106 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = MEMORY[0x28223BE20](v43);
  v130 = (&v106 - v46);
  v47 = MEMORY[0x28223BE20](v45);
  v132 = &v106 - v48;
  MEMORY[0x28223BE20](v47);
  v50 = &v106 - v49;
  v109 = sub_22911BBBC();
  v108 = *(v109 - 8);
  v51 = *(v108 + 64);
  MEMORY[0x28223BE20](v109);
  v121 = &v106 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v41[2];
  v138 = v50;
  v54 = v133;
  v133 = v53;
  v53(v50, v54, v40);
  sub_228A03E38(v136, v39, &qword_27D862B48, v26);
  v55 = v139;
  v139 = v37;
  sub_228A03E38(v55, v37, &qword_27D862B48, v26);
  v56 = sub_2289DA034;
  if (v140)
  {
    v56 = sub_228A03FEC;
  }

  v106 = v56;
  v136 = v39;
  sub_228A03E38(v39, v34, &qword_27D862B48, v26);
  v140 = v41;
  v57 = v41[6];
  v58 = 0;
  if (v57(v34, 1, v40) != 1)
  {
    v58 = sub_22911B84C();
    (v140[1])(v34, v40);
  }

  sub_228A03E38(v139, v31, &qword_27D862B48, MEMORY[0x277CC9578]);
  if (v57(v31, 1, v40) == 1)
  {
    v59 = 0;
  }

  else
  {
    v59 = sub_22911B84C();
    (v140[1])(v31, v40);
  }

  v60 = v137;
  v61 = v135;
  v62 = objc_opt_self();
  v141[0] = 0;
  v63 = [v62 deletedSamplesInProfile:v61 createdOnOrAfter:v58 createdBefore:v59 limit:v134 error:v141];

  v64 = v141[0];
  if (v63)
  {
    sub_2289B3D00(0, &qword_27D8638A8, off_27860E8C0);
    v65 = sub_22911C45C();
    v66 = v64;

    v67 = v132;
    v68 = v133;
    v69 = v138;
    v133(v132, v138, v40);
    v70 = v130;
    v68(v130, v67, v40);
    v71 = v61;
    v72 = v131;
    HKDatabase.Pruning.Show.init(profile:referenceDate:deletedSampleSyncEntityOnly:)(v71, v70, 1, v60);
    if (v72)
    {

      v73 = v140[1];
      v73(v67, v40);
      v74 = &qword_27D862B48;
      v75 = MEMORY[0x277CC9578];
      sub_228A03EB8(v139, &qword_27D862B48, MEMORY[0x277CC9578]);
      sub_228A03EB8(v136, &qword_27D862B48, v75);
      v73(v69, v40);
    }

    else
    {
      v137 = v65;
      v78 = v117;
      sub_22911BD2C();
      sub_22911BCEC();
      (*(v118 + 8))(v78, v119);
      sub_22911B83C();
      sub_2289B3D00(0, &qword_27D8638B0, off_27860E968);
      v79 = [swift_getObjCClassFromMetadata() syncEntityIdentifier];
      [v79 entityIdentifier];
      v80 = [v79 schemaIdentifier];
      if (v80)
      {
        v81 = v80;
        sub_22911C35C();
      }

      v82 = v128;
      sub_22911BD3C();

      v83 = sub_22911BDFC();
      MEMORY[0x28223BE20](v83);
      *(&v106 - 2) = v82;
      v84 = v120;
      sub_2289FBD3C(sub_228A03FF0, v83, v120);

      v85 = v122;
      v86 = v123;
      if ((*(v122 + 48))(v84, 1, v123) == 1)
      {

        sub_228A03EB8(v84, &qword_27D8638A0, MEMORY[0x277CCB3E0]);
        sub_228A003EC();
        swift_allocError();
        swift_willThrow();
        v87 = v140[1];
        v87(v132, v40);
        v74 = &qword_27D862B48;
        v88 = MEMORY[0x277CC9578];
        sub_228A03EB8(v139, &qword_27D862B48, MEMORY[0x277CC9578]);
        sub_228A03EB8(v136, &qword_27D862B48, v88);
        v87(v138, v40);
        (*(v126 + 8))(v82, v127);
        v87(v129, v40);
        (*(v124 + 8))(v60, v125);
      }

      else
      {
        v91 = v107;
        v92 = (*(v85 + 32))(v107, v84, v86);
        MEMORY[0x28223BE20](v92);
        *(&v106 - 6) = v129;
        *(&v106 - 5) = v60;
        *(&v106 - 4) = v91;
        *(&v106 - 24) = v110 & 1;
        *(&v106 - 2) = v106;
        *(&v106 - 1) = 0;
        sub_2289FCC04(sub_228A03FD4, (&v106 - 8), v137);
        v135 = 0;

        sub_22911BB9C();
        v93 = v140[1];
        v93(v132, v40);
        v94 = MEMORY[0x277CC9578];
        sub_228A03EB8(v139, &qword_27D862B48, MEMORY[0x277CC9578]);
        sub_228A03EB8(v136, &qword_27D862B48, v94);
        v93(v138, v40);
        v74 = (v85 + 8);
        (*(v85 + 8))(v91, v86);
        (*(v126 + 8))(v128, v127);
        v93(v129, v40);
        (*(v124 + 8))(v60, v125);
        v95 = sub_22911B79C();
        v96 = *(v95 + 48);
        v97 = *(v95 + 52);
        swift_allocObject();
        sub_22911B78C();
        v98 = MEMORY[0x277CC8718];
        sub_228A009B8(0, &qword_27D863990, MEMORY[0x277CC8718], MEMORY[0x277D84560]);
        v99 = *(v111 + 72);
        v100 = (*(v111 + 80) + 32) & ~*(v111 + 80);
        v101 = swift_allocObject();
        v101[1] = xmmword_229163C50;
        sub_22911B72C();
        v102 = v121;
        sub_22911B71C();
        v141[0] = v101;
        sub_228A03F88(&qword_27D863998, MEMORY[0x277CC8718]);
        sub_228A009B8(0, &qword_27D8639A0, v98, MEMORY[0x277D83940]);
        sub_228A03AA8();
        sub_22911C6EC();
        sub_22911B74C();
        (*(v115 + 104))(v114, *MEMORY[0x277CC8778], v116);
        sub_22911B76C();
        sub_228A03F88(&qword_27D8639B0, MEMORY[0x277CCB350]);
        v103 = v109;
        v104 = v135;
        v105 = sub_22911B77C();
        if (!v104)
        {
          v74 = v105;
        }

        (*(v108 + 8))(v102, v103);
      }
    }
  }

  else
  {
    v76 = v141[0];
    sub_22911B7FC();

    swift_willThrow();
    v74 = &qword_27D862B48;
    v77 = MEMORY[0x277CC9578];
    sub_228A03EB8(v139, &qword_27D862B48, MEMORY[0x277CC9578]);
    sub_228A03EB8(v136, &qword_27D862B48, v77);
    (v140[1])(v138, v40);
  }

  v89 = *MEMORY[0x277D85DE8];
  return v74;
}

void sub_228A0359C()
{
  if (!qword_27D8638E0)
  {
    sub_22911B8DC();
    sub_2289B3D00(255, &qword_27D8638E8, off_27860F348);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D8638E0);
    }
  }
}

void sub_228A03620()
{
  if (!qword_27D8638F0)
  {
    sub_22911B8DC();
    sub_22911BCBC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D8638F0);
    }
  }
}

void sub_228A03690()
{
  if (!qword_27D862A60)
  {
    sub_22911B8DC();
    sub_22911BCBC();
    sub_228A03F88(&qword_27D8629D8, MEMORY[0x277CC95F0]);
    v0 = sub_22911CA8C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D862A60);
    }
  }
}

unint64_t sub_228A03740()
{
  result = qword_27D863900;
  if (!qword_27D863900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D863900);
  }

  return result;
}

uint64_t sub_228A037E0()
{
  result = sub_22911B88C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_228A03864(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_228A038CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_2289B3D00(255, &unk_280D679B0, 0x277CCABB0);
    v7 = sub_2289B33F8(&qword_27D8638C0, &unk_280D679B0, 0x277CCABB0);
    v8 = a3(a1, v6, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_228A0396C()
{
  if (!qword_27D863970)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D863970);
    }
  }
}

void sub_228A039C8()
{
  if (!qword_27D863980)
  {
    sub_2289B3D00(255, &unk_280D679B0, 0x277CCABB0);
    sub_2289B33F8(&qword_27D8638C0, &unk_280D679B0, 0x277CCABB0);
    v0 = sub_22911C54C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D863980);
    }
  }
}

void sub_228A03A5C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_22911CABC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_228A03AA8()
{
  result = qword_27D8639A8;
  if (!qword_27D8639A8)
  {
    sub_228A009B8(255, &qword_27D8639A0, MEMORY[0x277CC8718], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8639A8);
  }

  return result;
}

void sub_228A03B58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_22911B88C();
    v7 = sub_228A03F88(&qword_27D8639C8, MEMORY[0x277CC9578]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_228A03BF4()
{
  if (!qword_27D8639D0)
  {
    sub_22911B88C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D8639D0);
    }
  }
}

uint64_t sub_228A03C5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_228A03CC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_228A03B58(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_228A03D40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = sub_22911BD5C();
  HDDatabasePruningShowDeletedSample.classify(restrictionPredicate:activeStores:)(a1, v7, a2);
}

void sub_228A03DA4()
{
  if (!qword_27D863A10)
  {
    sub_228A009B8(255, &qword_27D8638F8, MEMORY[0x277CCB3C0], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D863A10);
    }
  }
}

uint64_t sub_228A03E38(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_228A009B8(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_228A03EB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_228A009B8(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_228A03F28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_228A03F88(unint64_t *a1, void (*a2)(uint64_t))
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

size_t sub_228A04010@<X0>(void *a1@<X8>)
{
  v3 = sub_22911B88C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_22911B8DC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v34 = sub_22911BF7C();
  v7 = *(v34 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v34);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v1 attachmentReferenceTombstones];
  if (!v11)
  {
    v18 = 0;
LABEL_16:
    *a1 = v18;
    v26 = *MEMORY[0x277CCB4A8];
    v27 = sub_22911BF0C();
    return (*(*(v27 - 8) + 104))(a1, v26, v27);
  }

  v12 = v11;
  sub_228A043DC();
  v13 = sub_22911C45C();

  if (!(v13 >> 62))
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  v14 = sub_22911C78C();
  if (!v14)
  {
LABEL_15:

    v18 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

LABEL_4:
  v35 = MEMORY[0x277D84F90];
  result = sub_2289FD3E8(0, v14 & ~(v14 >> 63), 0);
  if ((v14 & 0x8000000000000000) == 0)
  {
    v16 = 0;
    v17 = v13;
    v31 = v13 & 0xC000000000000001;
    v32 = v14;
    v18 = v35;
    v29 = a1;
    v30 = v7 + 32;
    v33 = v13;
    do
    {
      if (v31)
      {
        v19 = MEMORY[0x22AAC6410](v16, v17);
      }

      else
      {
        v19 = *(v17 + 8 * v16 + 32);
      }

      v20 = v19;
      v21 = [v19 identifier];
      sub_22911B8CC();

      v22 = [v20 schemaIdentifier];
      sub_22911C35C();

      v23 = [v20 creationDate];
      sub_22911B86C();

      sub_22911BF6C();
      v35 = v18;
      v25 = *(v18 + 16);
      v24 = *(v18 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_2289FD3E8(v24 > 1, v25 + 1, 1);
        v18 = v35;
      }

      ++v16;
      *(v18 + 16) = v25 + 1;
      (*(v7 + 32))(v18 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v25, v10, v34);
      v17 = v33;
    }

    while (v32 != v16);

    a1 = v29;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

unint64_t sub_228A043DC()
{
  result = qword_27D863A48;
  if (!qword_27D863A48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D863A48);
  }

  return result;
}

uint64_t HDKeyValueDomain.data(for:)()
{
  v11[1] = *MEMORY[0x277D85DE8];
  v1 = sub_22911C34C();
  v11[0] = 0;
  v2 = [v0 dataForKey:v1 error:v11];

  v3 = v11[0];
  if (v2)
  {
    v4 = v11[0];
    v5 = sub_22911B81C();
    v7 = v6;

    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = v11[0];
    v5 = 0;
    v7 = 0xF000000000000000;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  if ([v3 hk:11 isHealthKitErrorWithCode:?])
  {
    sub_228A04560(v5, v7);

    v5 = 0;
  }

  else
  {
    swift_willThrow();
    sub_228A04560(v5, v7);
  }

LABEL_8:
  v9 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_228A04560(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2289BCF3C(a1, a2);
  }

  return a1;
}

void HDKeyValueDomain.date(for:)(uint64_t a1@<X8>)
{
  v2 = v1;
  v20[1] = *MEMORY[0x277D85DE8];
  sub_2289DF604();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v20 - v9;
  v11 = sub_22911C34C();
  v20[0] = 0;
  v12 = [v2 dateForKey:v11 error:v20];

  v13 = v20[0];
  if (v12)
  {
    sub_22911B86C();
    v14 = v13;

    v15 = sub_22911B88C();
    (*(*(v15 - 8) + 56))(v8, 0, 1, v15);
  }

  else
  {
    v16 = sub_22911B88C();
    (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
    v17 = v13;
  }

  sub_2289BE454(v8, v10);
  if (v13)
  {
    if ([v13 hk:11 isHealthKitErrorWithCode:?])
    {
      sub_228A04C7C(v10, sub_2289DF604);

      v18 = sub_22911B88C();
      (*(*(v18 - 8) + 56))(a1, 1, 1, v18);
    }

    else
    {
      swift_willThrow();
      sub_228A04C7C(v10, sub_2289DF604);
    }
  }

  else
  {
    sub_2289BE454(v10, a1);
  }

  v19 = *MEMORY[0x277D85DE8];
}

HKQuantity_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> HDKeyValueDomain.quantity(for:unit:)(Swift::String a1, HKUnit unit)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = sub_22911C34C();
  v10[0] = 0;
  v5 = [v2 quantityForKey:v4 unit:unit.super.isa error:v10];

  if (v10[0])
  {
    v7 = v10[0];
    if ([v7 hk:11 isHealthKitErrorWithCode:?])
    {

      v5 = 0;
    }

    else
    {
      swift_willThrow();
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  v9 = v5;
  result.value.super.isa = v9;
  result.is_nil = v6;
  return result;
}

NSNumber_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> HDKeyValueDomain.number(for:)(Swift::String a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22911C34C();
  v8[0] = 0;
  v3 = [v1 numberForKey:v2 error:v8];

  if (v8[0])
  {
    v5 = v8[0];
    if ([v5 hk:11 isHealthKitErrorWithCode:?])
    {

      v3 = 0;
    }

    else
    {
      swift_willThrow();
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  v7 = v3;
  result.value.super.super.isa = v7;
  result.is_nil = v4;
  return result;
}

Swift::String_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> HDKeyValueDomain.string(for:)(Swift::String a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22911C34C();
  v14[0] = 0;
  v3 = [v1 stringForKey:v2 error:v14];

  v4 = v14[0];
  if (v3)
  {
    v5 = sub_22911C35C();
    v7 = v6;
    v8 = v4;

    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = v14[0];
    v5 = 0;
    v7 = 0;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  if ([v4 hk:11 isHealthKitErrorWithCode:?])
  {

    v5 = 0;
    v7 = 0;
  }

  else
  {
    swift_willThrow();
  }

LABEL_8:
  v10 = *MEMORY[0x277D85DE8];
  v11 = v5;
  v12 = v7;
  result.value._object = v12;
  result.value._countAndFlagsBits = v11;
  return result;
}

void HDKeyValueDomain.propertyListValue(for:)(_OWORD *a1@<X8>)
{
  v2 = v1;
  v15 = *MEMORY[0x277D85DE8];
  v4 = sub_22911C34C();
  *&v11 = 0;
  v5 = [v2 propertyListValueForKey:v4 error:&v11];

  v6 = v11;
  if (v5)
  {
    v7 = v11;
    sub_22911C6DC();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
    v8 = v6;
  }

  v13 = v11;
  v14 = v12;
  if (v6)
  {
    if ([v6 hk:11 isHealthKitErrorWithCode:?])
    {
      sub_228A04C7C(&v13, sub_228A04CDC);

      *a1 = 0u;
      a1[1] = 0u;
    }

    else
    {
      swift_willThrow();
      sub_228A04C7C(&v13, sub_228A04CDC);
    }
  }

  else
  {
    v9 = v14;
    *a1 = v13;
    a1[1] = v9;
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t sub_228A04C7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_228A04CDC()
{
  if (!qword_280D67A78)
  {
    v0 = sub_22911C6CC();
    if (!v1)
    {
      atomic_store(v0, &qword_280D67A78);
    }
  }
}

void *sub_228A04D30(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_22911C9EC();

    if (v4)
    {
      sub_2289B3D00(0, &qword_27D862A50, off_27860DB28);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_2289AD814(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

void sub_228A04DF4(uint64_t a1, void *a2)
{
  sub_228A10278(0, &qword_27D863AC0, MEMORY[0x277CCB510], MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v18 - v7;
  v9 = sub_22911C00C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    v14 = MEMORY[0x277CCB510];
    v15 = MEMORY[0x277D83D88];
    sub_228A14028(a1, &qword_27D863AC0, MEMORY[0x277CCB510], MEMORY[0x277D83D88], sub_228A10278);
    sub_2289E79E0(a2, v8);

    sub_228A14028(v8, &qword_27D863AC0, v14, v15, sub_228A10278);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;
    sub_2289B0588(v13, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v19;
  }
}

uint64_t sub_228A05020(uint64_t a1, uint64_t a2)
{
  sub_228A10278(0, &qword_27D863AC0, MEMORY[0x277CCB510], MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v21 - v7;
  v9 = sub_22911C00C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    v14 = MEMORY[0x277CCB510];
    v15 = MEMORY[0x277D83D88];
    sub_228A14028(a1, &qword_27D863AC0, MEMORY[0x277CCB510], MEMORY[0x277D83D88], sub_228A10278);
    sub_2289E7B4C(a2, v8);
    v16 = sub_22911B8DC();
    (*(*(v16 - 8) + 8))(a2, v16);
    return sub_228A14028(v8, &qword_27D863AC0, v14, v15, sub_228A10278);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v18 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v2;
    sub_2289B0708(v13, a2, isUniquelyReferenced_nonNull_native);
    v20 = sub_22911B8DC();
    result = (*(*(v20 - 8) + 8))(a2, v20);
    *v2 = v22;
  }

  return result;
}

void sub_228A052DC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v2();
}

uint64_t sub_228A05328(uint64_t *a1)
{
  v159 = sub_22911C00C();
  v2 = *(v159 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v159);
  v148 = v124 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_22911BFCC();
  v5 = *(v138 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v138);
  v128 = v124 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = sub_22911C05C();
  v8 = *(v170 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v170);
  v141 = v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = sub_22911C0AC();
  v11 = *(v189 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v189);
  v173 = v124 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22911BEBC();
  v186 = *(v14 - 8);
  v15 = *(v186 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v124 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x277D83D88];
  sub_228A10278(0, &qword_27D863B58, MEMORY[0x277CCB448], MEMORY[0x277D83D88]);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v124 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v176 = v124 - v24;
  sub_228A10278(0, &qword_27D863A88, MEMORY[0x277CCB520], v18);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v178 = v124 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v187 = v124 - v30;
  MEMORY[0x28223BE20](v29);
  v183 = v124 - v31;
  sub_228A10278(0, &qword_27D863B60, MEMORY[0x277CCB518], v18);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32 - 8);
  v143 = v124 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v168 = v124 - v37;
  MEMORY[0x28223BE20](v36);
  v161 = v124 - v38;
  sub_228A10278(0, &qword_27D863AA8, MEMORY[0x277CCB508], v18);
  v40 = *(*(v39 - 8) + 64);
  v41 = MEMORY[0x28223BE20](v39 - 8);
  v131 = v124 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v41);
  v136 = v124 - v44;
  MEMORY[0x28223BE20](v43);
  v130 = v124 - v45;
  sub_228A10278(0, &qword_27D863AC0, MEMORY[0x277CCB510], v18);
  v47 = *(*(v46 - 8) + 64);
  v48 = MEMORY[0x28223BE20](v46 - 8);
  v153 = v124 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v152 = v124 - v50;
  v150 = v2 + 16;
  v154 = (v2 + 56);
  v149 = v2 + 48;
  v147 = (v2 + 32);
  v51 = *a1;
  v182 = a1[1];
  v151 = v2;
  v146 = (v2 + 8);
  v137 = (v5 + 56);
  v169 = (v8 + 56);
  v188 = (v11 + 56);
  v52 = a1[2];
  v175 = a1[3];
  v185 = v186 + 16;
  v192 = (v186 + 48);
  v193 = (v186 + 56);
  v53 = a1[4];
  v145 = a1[5];
  v191 = (v186 + 32);
  v190 = (v186 + 8);
  v166 = v11 + 16;
  v177 = (v11 + 48);
  v54 = a1[6];
  v133 = a1[7];
  v172 = (v11 + 32);
  v167 = v11;
  v171 = (v11 + 8);
  v55 = a1[8];
  v134 = v8 + 16;
  v142 = (v8 + 48);
  v140 = (v8 + 32);
  v135 = v8;
  v139 = (v8 + 8);
  v124[1] = v5 + 16;
  v129 = (v5 + 48);
  v127 = (v5 + 32);
  v125 = v5;
  v126 = (v5 + 8);
  v194 = v51;

  v174 = v53;

  v144 = v54;

  v132 = v55;

  v57 = 0;
  v181 = 0;
  v184 = 0;
  v179 = 0;
  v58 = 0;
  v156 = 0;
  v59 = 0;
  v60 = 0;
  v165 = MEMORY[0x277D84F90];
  v180 = v52;
  while (2)
  {
    v155 = v59;
    if (v59)
    {
      v163 = v57;
      v61 = *(v59 + 16);
      v196 = v60;
      v62 = 0;
      if (v61)
      {
        v63 = v159;
        v64 = v176;
        while (v62 < v61)
        {
          v65 = v62;
          v66 = v151;
          v158 = (*(v66 + 80) + 32) & ~*(v66 + 80);
          v157 = *(v151 + 72);
          v67 = v153;
          v68 = v63;
          (*(v151 + 16))(v153, v59 + v158 + v157 * v65, v63);
          v162 = v65 + 1;
          (*(v66 + 56))(v67, 0, 1, v68);
          v69 = v67;
          v70 = v152;
          sub_228A149DC(v69, v152, &qword_27D863AC0, MEMORY[0x277CCB510]);
          if ((*(v66 + 48))(v70, 1, v68) == 1)
          {
LABEL_72:
            v52 = v180;
            goto LABEL_73;
          }

          v71 = v148;
          (*v147)(v148, v70, v68);
          v72 = sub_228A08C64(v71);
          result = (*v146)(v71, v68);
          v73 = v72;
          v74 = v165;
          v75 = v165[2];
          v160 = *(v72 + 16);
          v76 = v75 + v160;
          v77 = v182;
          if (__OFADD__(v75, v160))
          {
            goto LABEL_78;
          }

          v164 = v73;
          result = swift_isUniquelyReferenced_nonNull_native();
          if (!result || v76 > v74[3] >> 1)
          {
            if (v75 <= v76)
            {
              v78 = v76;
            }

            else
            {
              v78 = v75;
            }

            result = sub_228A0FE98(result, v78, 1, v74, &qword_27D863940, MEMORY[0x277CCB510], MEMORY[0x277CCB510]);
            v165 = result;
          }

          v52 = v180;
          v62 = v162;
          v79 = v160;
          if (*(v164 + 16))
          {
            if ((v165[3] >> 1) - v165[2] < v160)
            {
              goto LABEL_80;
            }

            swift_arrayInitWithCopy();

            v63 = v159;
            v59 = v155;
            if (v79)
            {
              v80 = v165[2];
              v81 = __OFADD__(v80, v79);
              v82 = v80 + v79;
              if (v81)
              {
                goto LABEL_81;
              }

              v165[2] = v82;
            }
          }

          else
          {

            v63 = v159;
            v59 = v155;
            if (v79)
            {
              goto LABEL_79;
            }
          }

          v61 = *(v59 + 16);
          if (v62 == v61)
          {
            goto LABEL_23;
          }
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
        return result;
      }

      v63 = v159;
      v64 = v176;
      v77 = v182;
LABEL_23:
      v162 = v62;
      v83 = v153;
      (*v154)(v153, 1, 1, v63);
      result = sub_228A14028(v83, &qword_27D863AC0, MEMORY[0x277CCB510], MEMORY[0x277D83D88], sub_228A10278);
      v60 = v196;
      v57 = v163;
    }

    else
    {
      v162 = 0;
      v64 = v176;
      v77 = v182;
    }

    v84 = v156;
    while (2)
    {
      v163 = v57;
      v156 = v84;
      if (v57)
      {
        v85 = *(v57 + 16);
        v196 = v60;
        if (v84 != v85)
        {
          v117 = v138;
          if (v84 < v85)
          {
            v118 = v125;
            v119 = v136;
            v120 = v84;
            (*(v125 + 16))(v136, v57 + ((*(v118 + 80) + 32) & ~*(v118 + 80)) + *(v118 + 72) * v84, v138);
            v156 = v120 + 1;
            (*(v118 + 56))(v119, 0, 1, v117);
            v116 = v130;
            sub_228A149DC(v119, v130, &qword_27D863AA8, MEMORY[0x277CCB508]);
            goto LABEL_68;
          }

          goto LABEL_84;
        }

        v86 = v136;
        (*v137)(v136, 1, 1, v138);
        result = sub_228A14028(v86, &qword_27D863AA8, MEMORY[0x277CCB508], MEMORY[0x277D83D88], sub_228A10278);
        v60 = v196;
      }

      v87 = v184;
LABEL_29:
      v184 = v87;
      if (!v87)
      {
        goto LABEL_32;
      }

      v88 = *(v87 + 16);
      if (v181 == v88)
      {
        v89 = v168;
        v90 = v60;
        (*v169)(v168, 1, 1, v170);
        v77 = v182;
        sub_228A14028(v89, &qword_27D863B60, MEMORY[0x277CCB518], MEMORY[0x277D83D88], sub_228A10278);
        v60 = v90;
LABEL_32:
        v52 = v180;
        if (v58)
        {
          v91 = *(v58 + 16);
          v92 = v179;
          if (v179 != v91)
          {
            goto LABEL_54;
          }

          v93 = v187;
          v94 = v60;
          (*v188)(v187, 1, 1, v189);
          sub_228A14028(v93, &qword_27D863A88, MEMORY[0x277CCB520], MEMORY[0x277D83D88], sub_228A10278);
          v60 = v94;
        }

        v95 = *(v194 + 16);
        if (v60 == v95)
        {
          v196 = v60;
          v96 = 1;
        }

        else
        {
          if ((v60 & 0x8000000000000000) != 0)
          {
LABEL_70:
            __break(1u);
LABEL_71:
            __break(1u);
            goto LABEL_72;
          }

          if (v60 >= v95)
          {
            goto LABEL_71;
          }

          v97 = v60;
          (*(v186 + 16))(v64, v194 + ((*(v186 + 80) + 32) & ~*(v186 + 80)) + *(v186 + 72) * v60, v14);
          v96 = 0;
          v196 = v97 + 1;
        }

        (*v193)(v64, v96, 1, v14);
        sub_228A149DC(v64, v23, &qword_27D863B58, MEMORY[0x277CCB448]);
        if ((*v192)(v23, 1, v14) == 1)
        {
LABEL_52:
          v102 = v189;
          (*v188)(v183, 1, 1, v189);
          goto LABEL_57;
        }

        while (1)
        {
          (*v191)(v17, v23, v14);
          v77(v195, v17);
          (*v190)(v17, v14);
          v58 = v195[0];

          if (v58)
          {
            v91 = *(v58 + 16);
            if (v91)
            {
              v92 = 0;
              v60 = v196;
LABEL_54:
              v102 = v189;
              if ((v92 & 0x8000000000000000) != 0)
              {
                __break(1u);
LABEL_75:
                __break(1u);
                goto LABEL_76;
              }

              if (v92 >= v91)
              {
                goto LABEL_75;
              }

              v196 = v60;
              v103 = v167;
              v104 = v187;
              v105 = v92;
              (*(v167 + 16))(v187, v58 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v92, v189);
              v179 = v105 + 1;
              (*(v103 + 56))(v104, 0, 1, v102);
              v52 = v180;
              sub_228A149DC(v104, v183, &qword_27D863A88, MEMORY[0x277CCB520]);
LABEL_57:
              v106 = v178;
              sub_228A149DC(v183, v178, &qword_27D863A88, MEMORY[0x277CCB520]);
              if ((*v177)(v106, 1, v102) == 1)
              {
                (*v169)(v161, 1, 1, v170);
                v77 = v182;
                goto LABEL_63;
              }

              v107 = v173;
              (*v172)(v173, v106, v102);
              v175(v195, v107);
              v64 = v176;
              (*v171)(v107, v102);
              v108 = v195[0];

              v181 = 0;
              v87 = v108;
              v77 = v182;
              v60 = v196;
              goto LABEL_29;
            }

            v99 = v187;
            (*v188)(v187, 1, 1, v189);
            sub_228A14028(v99, &qword_27D863A88, MEMORY[0x277CCB520], MEMORY[0x277D83D88], sub_228A10278);
          }

          v100 = *(v194 + 16);
          if (v196 == v100)
          {
            v98 = 1;
          }

          else
          {
            if ((v196 & 0x8000000000000000) != 0)
            {
              goto LABEL_70;
            }

            if (v196 >= v100)
            {
              goto LABEL_71;
            }

            v101 = v196;
            (*(v186 + 16))(v64, v194 + ((*(v186 + 80) + 32) & ~*(v186 + 80)) + *(v186 + 72) * v196, v14);
            v98 = 0;
            v196 = v101 + 1;
          }

          (*v193)(v64, v98, 1, v14);
          sub_228A149DC(v64, v23, &qword_27D863B58, MEMORY[0x277CCB448]);
          if ((*v192)(v23, 1, v14) == 1)
          {
            v179 = 0;
            goto LABEL_52;
          }
        }
      }

      if ((v181 & 0x8000000000000000) != 0)
      {
        goto LABEL_82;
      }

      if (v181 >= v88)
      {
        goto LABEL_83;
      }

      v196 = v60;
      v109 = v135;
      v110 = v181;
      v111 = v168;
      v112 = v170;
      (*(v135 + 16))(v168, v87 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v135 + 72) * v181, v170);
      v181 = v110 + 1;
      v77 = v182;
      (*(v109 + 56))(v111, 0, 1, v112);
      sub_228A149DC(v111, v161, &qword_27D863B60, MEMORY[0x277CCB518]);
      v52 = v180;
LABEL_63:
      v113 = v143;
      sub_228A149DC(v161, v143, &qword_27D863B60, MEMORY[0x277CCB518]);
      if ((*v142)(v113, 1, v170) != 1)
      {
        v114 = v141;
        (*v140)(v141, v113, v170);
        v145(v195, v114);
        (*v139)(v114, v170);
        v115 = v195[0];

        v84 = 0;
        v57 = v115;
        v60 = v196;
        continue;
      }

      break;
    }

    v116 = v130;
    v117 = v138;
    (*v137)(v130, 1, 1, v138);
LABEL_68:
    v121 = v131;
    sub_228A149DC(v116, v131, &qword_27D863AA8, MEMORY[0x277CCB508]);
    if ((*v129)(v121, 1, v117) != 1)
    {
      v122 = v128;
      (*v127)(v128, v121, v117);
      v133(v195, v122);
      (*v126)(v122, v117);
      v123 = v195[0];

      v59 = v123;
      v57 = v163;
      v60 = v196;
      continue;
    }

    break;
  }

LABEL_76:
  (*v154)(v152, 1, 1, v159);
LABEL_73:
  v195[0] = v194;
  v195[1] = v196;
  v195[2] = v182;
  v195[3] = v52;
  v195[4] = v58;
  v195[5] = v179;
  v195[6] = v175;
  v195[7] = v174;
  v195[8] = v184;
  v195[9] = v181;
  v195[10] = v145;
  v195[11] = v144;
  v195[12] = v163;
  v195[13] = v156;
  v195[14] = v133;
  v195[15] = v132;
  v195[16] = v155;
  v195[17] = v162;
  sub_228A14088(v195, sub_228A140E8);
  return v165;
}

unint64_t sub_228A06B90()
{
  v2 = *MEMORY[0x277D85DE8];
  result = sub_228A06C48(&qword_27D862EC8, off_27860DFC8);
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_228A06BEC()
{
  v2 = *MEMORY[0x277D85DE8];
  result = sub_228A06C48(&qword_27D862EA8, off_27860DB30);
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_228A06C48(unint64_t *a1, uint64_t *a2)
{
  v17[1] = *MEMORY[0x277D85DE8];
  sub_2289B3D00(0, a1, a2);
  v17[0] = 0;
  v4 = [v2 recordsForClass:swift_getObjCClassFromMetadata() error:v17];
  v5 = v17[0];
  if (v4)
  {
    v6 = v4;
    sub_2289B3D00(0, &qword_27D862B28, off_27860DF68);
    v7 = sub_22911C45C();
    v8 = v5;

    if (v7 >> 62)
    {

      v16 = sub_22911CA3C();
      swift_bridgeObjectRelease_n();
      v7 = v16;
    }

    else
    {
      v9 = v7 & 0xFFFFFFFFFFFFFF8;

      sub_22911CAEC();
      if (swift_dynamicCastMetatype() || (v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
      {
LABEL_4:
      }

      else
      {
        v13 = (v9 + 32);
        while (1)
        {
          v14 = *v13;
          v15 = *a2;
          objc_opt_self();
          if (!swift_dynamicCastObjCClass())
          {
            break;
          }

          ++v13;
          if (!--v12)
          {
            goto LABEL_4;
          }
        }

        v7 = v9 | 1;
      }
    }
  }

  else
  {
    v7 = v17[0];
    sub_22911B7FC();

    swift_willThrow();
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

unint64_t sub_228A06E08()
{
  v2 = *MEMORY[0x277D85DE8];
  result = sub_228A06C48(&qword_27D863B48, off_27860E150);
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_228A06E64(uint64_t a1)
{
  v2 = sub_22911BEBC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v15 = MEMORY[0x277D84F90];
    sub_2289FD6A8(0, v7, 0);
    v8 = v15;
    v9 = a1 + 32;
    do
    {
      sub_2289B3CA4(v9, v14);
      swift_dynamicCast();
      v15 = v8;
      v11 = *(v8 + 16);
      v10 = *(v8 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_2289FD6A8(v10 > 1, v11 + 1, 1);
        v8 = v15;
      }

      *(v8 + 16) = v11 + 1;
      (*(v3 + 32))(v8 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v11, v6, v2);
      v9 += 32;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t sub_228A07000(uint64_t a1)
{
  v2 = sub_22911BEBC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v19 = MEMORY[0x277D84F90];
    sub_2289FD6F8(0, v7, 0);
    v8 = v19;
    v11 = *(v3 + 16);
    v9 = v3 + 16;
    v10 = v11;
    v12 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v13 = *(v9 + 56);
    do
    {
      v10(v6, v12, v2);
      swift_dynamicCast();
      v19 = v8;
      v15 = *(v8 + 16);
      v14 = *(v8 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_2289FD6F8((v14 > 1), v15 + 1, 1);
        v8 = v19;
      }

      *(v8 + 16) = v15 + 1;
      sub_2289B3C48(&v18, (v8 + 32 * v15 + 32));
      v12 += v13;
      --v7;
    }

    while (v7);
  }

  return v8;
}

void *sub_228A07198(uint64_t a1, uint64_t *a2)
{
  v4 = sub_22911C00C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v38 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v36 = v31 - v10;
  MEMORY[0x28223BE20](v9);
  v35 = v31 - v11;
  v12 = *(a1 + 16);
  if (!v12)
  {
    return MEMORY[0x277D84F90];
  }

  v13 = *(sub_22911B8DC() - 8);
  v14 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v15 = *(v13 + 72);
  v31[1] = v5 + 16;
  v37 = v5 + 32;
  v16 = MEMORY[0x277D84F90];
  v33 = v4;
  v34 = a2;
  v32 = v5;
  do
  {
    v18 = *a2;
    if (*(*a2 + 16))
    {
      v19 = sub_2289AD6A0(v14);
      if (v20)
      {
        v21 = v5;
        v22 = v15;
        v23 = *(v21 + 72);
        v24 = *(v18 + 56) + v23 * v19;
        v25 = v36;
        (*(v21 + 16))(v36, v24, v4);
        v26 = *(v21 + 32);
        v27 = v35;
        v26(v35, v25, v4);
        v26(v38, v27, v4);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_228A0FE98(0, v16[2] + 1, 1, v16, &qword_27D863940, MEMORY[0x277CCB510], MEMORY[0x277CCB510]);
        }

        v29 = v16[2];
        v28 = v16[3];
        v15 = v22;
        if (v29 >= v28 >> 1)
        {
          v16 = sub_228A0FE98(v28 > 1, v29 + 1, 1, v16, &qword_27D863940, MEMORY[0x277CCB510], MEMORY[0x277CCB510]);
        }

        v5 = v32;
        v16[2] = v29 + 1;
        v17 = v16 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + v29 * v23;
        v4 = v33;
        v26(v17, v38, v33);
        a2 = v34;
      }
    }

    v14 += v15;
    --v12;
  }

  while (v12);
  return v16;
}

void __swiftcall HDCloudSyncPipelineStageDescription.merge(with:)(HDCloudSyncPipelineStageDescription *__return_ptr retstr, HDCloudSyncPipelineStageDescription *with)
{
  sub_228A10278(0, &qword_27D863A50, MEMORY[0x277CCB450], MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v37[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v37[-v10];
  MEMORY[0x28223BE20](v9);
  v13 = &v37[-v12];
  v14 = OBJC_IVAR___HDCloudSyncPipelineStageDescription__accountInfo;
  swift_beginAccess();
  v15 = MEMORY[0x277D84F70];
  sub_228A13FB4(with + v14, v38, &qword_280D67A78, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_228A14AE8);
  if (v39)
  {
    v16 = sub_22911BEDC();
    v17 = swift_dynamicCast();
    v18 = *(v16 - 8);
    v19 = *(v18 + 56);
    v19(v11, v17 ^ 1u, 1, v16);
    if ((*(v18 + 48))(v11, 1, v16) != 1)
    {
      (*(v18 + 32))(v13, v11, v16);
      v19(v13, 0, 1, v16);
      goto LABEL_10;
    }
  }

  else
  {
    sub_228A14028(v38, &qword_280D67A78, v15 + 8, MEMORY[0x277D83D88], sub_228A14AE8);
    v20 = sub_22911BEDC();
    (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
  }

  v21 = OBJC_IVAR___HDCloudSyncPipelineStageDescription__accountInfo;
  swift_beginAccess();
  sub_228A13FB4(v2 + v21, v38, &qword_280D67A78, v15 + 8, MEMORY[0x277D83D88], sub_228A14AE8);
  if (v39)
  {
    v22 = sub_22911BEDC();
    v23 = swift_dynamicCast();
    (*(*(v22 - 8) + 56))(v13, v23 ^ 1u, 1, v22);
  }

  else
  {
    sub_228A14028(v38, &qword_280D67A78, v15 + 8, MEMORY[0x277D83D88], sub_228A14AE8);
    v22 = sub_22911BEDC();
    (*(*(v22 - 8) + 56))(v13, 1, 1, v22);
  }

  sub_22911BEDC();
  if ((*(*(v22 - 8) + 48))(v11, 1, v22) != 1)
  {
    sub_228A14028(v11, &qword_27D863A50, MEMORY[0x277CCB450], MEMORY[0x277D83D88], sub_228A10278);
  }

LABEL_10:
  v24 = *(v2 + OBJC_IVAR___HDCloudSyncPipelineStageDescription__descriptions);

  v26 = sub_228A06E64(v25);

  v27 = *(&with->super.isa + OBJC_IVAR___HDCloudSyncPipelineStageDescription__descriptions);

  v29 = sub_228A06E64(v28);

  v38[0] = v26;
  sub_228A1011C(v29, &qword_27D863950, MEMORY[0x277CCB448], MEMORY[0x277CCB448], MEMORY[0x277CCB448]);
  v30 = v38[0];
  v31 = [objc_allocWithZone(HDCloudSyncPipelineStageDescription) init];
  v32 = MEMORY[0x277CCB450];
  v33 = MEMORY[0x277D83D88];
  sub_228A13FB4(v13, v8, &qword_27D863A50, MEMORY[0x277CCB450], MEMORY[0x277D83D88], sub_228A10278);
  v34 = v31;
  sub_228A09B68(v8);
  v35 = sub_228A07000(v30);

  sub_228A14028(v13, &qword_27D863A50, v32, v33, sub_228A10278);
  v36 = *&v34[OBJC_IVAR___HDCloudSyncPipelineStageDescription__descriptions];
  *&v34[OBJC_IVAR___HDCloudSyncPipelineStageDescription__descriptions] = v35;
}

void __swiftcall HDCloudSyncPipelineStageDescription.setAccountInfo(partition:hasValidCredentials:accountStatus:encryptionStatus:)(HDCloudSyncPipelineStageDescription *__return_ptr retstr, Swift::String partition, Swift::Bool hasValidCredentials, Swift::String accountStatus, Swift::String encryptionStatus)
{
  v23[0] = encryptionStatus._countAndFlagsBits;
  v5 = MEMORY[0x277CCB450];
  v6 = MEMORY[0x277D83D88];
  sub_228A10278(0, &qword_27D863A50, MEMORY[0x277CCB450], MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v23 - v12;

  sub_22911BECC();
  v14 = sub_22911BEDC();
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  v15 = *(v23[1] + OBJC_IVAR___HDCloudSyncPipelineStageDescription__descriptions);

  v17 = sub_228A06E64(v16);

  v18 = objc_allocWithZone(HDCloudSyncPipelineStageDescription);
  v19 = [v18 init];
  sub_228A13FB4(v13, v11, &qword_27D863A50, v5, v6, sub_228A10278);
  v20 = v19;
  sub_228A09B68(v11);
  v21 = sub_228A07000(v17);

  sub_228A14028(v13, &qword_27D863A50, v5, v6, sub_228A10278);
  v22 = *&v20[OBJC_IVAR___HDCloudSyncPipelineStageDescription__descriptions];
  *&v20[OBJC_IVAR___HDCloudSyncPipelineStageDescription__descriptions] = v21;
}

uint64_t HDCloudSyncPipelineStageDescription.serialized(prettyPrinted:)(char a1)
{
  sub_228A10278(0, &qword_27D863A50, MEMORY[0x277CCB450], MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v41 = &v35 - v4;
  v5 = sub_22911C0BC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22911B75C();
  v38 = *(v10 - 8);
  v39 = v10;
  v11 = *(v38 + 64);
  MEMORY[0x28223BE20](v10);
  v37 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22911B73C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = sub_22911B79C();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v40 = sub_22911B78C();
  if (a1)
  {
    v36 = MEMORY[0x277CC8718];
    sub_228A10278(0, &qword_27D863990, MEMORY[0x277CC8718], MEMORY[0x277D84560]);
    v19 = *(v14 + 72);
    v20 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_229163C50;
    sub_22911B72C();
    sub_22911B71C();
    v42[0] = v21;
    sub_228A1490C(&qword_27D863998, MEMORY[0x277CC8718]);
    v22 = MEMORY[0x277D83940];
    v23 = v36;
  }

  else
  {
    v42[0] = MEMORY[0x277D84F90];
    sub_228A1490C(&qword_27D863998, MEMORY[0x277CC8718]);
    v23 = MEMORY[0x277CC8718];
    v22 = MEMORY[0x277D83940];
  }

  sub_228A10278(0, &qword_27D8639A0, v23, v22);
  sub_228A03AA8();
  sub_22911C6EC();
  sub_22911B74C();
  (*(v38 + 104))(v37, *MEMORY[0x277CC8778], v39);
  sub_22911B76C();
  v24 = OBJC_IVAR___HDCloudSyncPipelineStageDescription__accountInfo;
  v25 = v42[5];
  swift_beginAccess();
  v26 = MEMORY[0x277D84F70];
  sub_228A13FB4(v25 + v24, v42, &qword_280D67A78, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_228A14AE8);
  v27 = v41;
  if (v42[3])
  {
    v28 = sub_22911BEDC();
    v29 = swift_dynamicCast();
    (*(*(v28 - 8) + 56))(v27, v29 ^ 1u, 1, v28);
  }

  else
  {
    sub_228A14028(v42, &qword_280D67A78, v26 + 8, MEMORY[0x277D83D88], sub_228A14AE8);
    v30 = sub_22911BEDC();
    (*(*(v30 - 8) + 56))(v27, 1, 1, v30);
  }

  v31 = *(v25 + OBJC_IVAR___HDCloudSyncPipelineStageDescription__descriptions);

  sub_228A06E64(v32);

  sub_22911BEEC();
  sub_228A1490C(&qword_27D863A68, MEMORY[0x277CCB528]);
  v33 = sub_22911B77C();
  (*(v6 + 8))(v9, v5);

  return v33;
}

uint64_t HDCloudSyncPipelineStageDescription.descriptionForLogs()()
{
  v58 = sub_22911BF0C();
  v52 = *(v58 - 8);
  v1 = *(v52 + 64);
  MEMORY[0x28223BE20](v58);
  v57 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_22911C00C();
  v59 = *(v56 - 8);
  v3 = *(v59 + 64);
  MEMORY[0x28223BE20](v56);
  v55 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22911C39C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228A10278(0, &qword_27D863A50, MEMORY[0x277CCB450], MEMORY[0x277D83D88]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v45 - v12;
  v14 = sub_22911C0BC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR___HDCloudSyncPipelineStageDescription__accountInfo;
  swift_beginAccess();
  v20 = MEMORY[0x277D84F70];
  sub_228A13FB4(v0 + v19, v61, &qword_280D67A78, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_228A14AE8);
  if (v62)
  {
    v21 = sub_22911BEDC();
    v22 = swift_dynamicCast();
    (*(*(v21 - 8) + 56))(v13, v22 ^ 1u, 1, v21);
  }

  else
  {
    sub_228A14028(v61, &qword_280D67A78, v20 + 8, MEMORY[0x277D83D88], sub_228A14AE8);
    v23 = sub_22911BEDC();
    (*(*(v23 - 8) + 56))(v13, 1, 1, v23);
  }

  v24 = *(v0 + OBJC_IVAR___HDCloudSyncPipelineStageDescription__descriptions);

  sub_228A06E64(v25);

  sub_22911BEEC();
  v51 = v18;
  v61[0] = sub_22911BF1C();
  v61[1] = sub_228A09044;
  v61[2] = 0;
  v62 = sub_228A09384;
  v63 = 0;
  v64 = sub_228A093B0;
  v65 = 0;
  v66 = sub_228A093DC;
  v67 = 0;
  v26 = sub_228A05328(v61);

  v27 = *(v26 + 16);
  if (v27)
  {
    v46 = v15;
    v47 = v14;
    v48 = v9;
    v49 = v6;
    v50 = v5;
    v60 = MEMORY[0x277D84F90];
    sub_2289FD718(0, v27, 0);
    v28 = v60;
    v54 = *(v59 + 16);
    v29 = (*(v59 + 80) + 32) & ~*(v59 + 80);
    v45 = v26;
    v30 = v26 + v29;
    v53 = *(v59 + 72);
    v52 += 8;
    v59 += 16;
    v31 = (v59 - 8);
    v32 = v55;
    do
    {
      v33 = v56;
      v54(v32, v30, v56);
      v34 = v57;
      sub_22911BFEC();
      v35 = sub_22911BEFC();
      v37 = v36;
      (*v52)(v34, v58);
      (*v31)(v32, v33);
      v60 = v28;
      v39 = *(v28 + 16);
      v38 = *(v28 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_2289FD718((v38 > 1), v39 + 1, 1);
        v28 = v60;
      }

      *(v28 + 16) = v39 + 1;
      v40 = v28 + 16 * v39;
      *(v40 + 32) = v35;
      *(v40 + 40) = v37;
      v30 += v53;
      --v27;
    }

    while (v27);

    v5 = v50;
    v6 = v49;
    v9 = v48;
    v14 = v47;
    v15 = v46;
  }

  else
  {

    v28 = MEMORY[0x277D84F90];
  }

  v60 = v28;
  sub_228A14AE8(0, &qword_27D863A70, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_228A102DC();
  sub_22911C30C();

  sub_22911C38C();
  v41 = sub_22911C36C();
  v43 = v42;

  (*(v6 + 8))(v9, v5);
  result = v51;
  if (v43 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    (*(v15 + 8))(v51, v14);
    return v41;
  }

  return result;
}

uint64_t sub_228A08C64(uint64_t a1)
{
  v2 = sub_22911C00C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v35 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22911BFDC();
  if (v6)
  {
    v7 = v6;
    sub_228A10278(0, &qword_27D863940, MEMORY[0x277CCB510], MEMORY[0x277D84560]);
    v8 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v36 = *(v3 + 72);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_229163C40;
    v11 = *(v3 + 16);
    v10 = v3 + 16;
    v31[0] = v9;
    v34 = v11;
    result = (v11)(v9 + v8, a1, v2);
    v33 = *(v7 + 16);
    if (v33)
    {
      v13 = 0;
      v14 = v7 + v8;
      v31[1] = v8;
      v32 = (v3 + 8);
      v15 = MEMORY[0x277D84F90];
      while (v13 < *(v7 + 16))
      {
        v16 = v35;
        v17 = v10;
        v34(v35, v14, v2);
        v18 = sub_228A08C64(v16);
        v19 = v16;
        v20 = v2;
        result = (*v32)(v19, v2);
        v21 = *(v18 + 16);
        v22 = v15[2];
        v23 = v22 + v21;
        if (__OFADD__(v22, v21))
        {
          goto LABEL_24;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if (!result || v23 > v15[3] >> 1)
        {
          if (v22 <= v23)
          {
            v24 = v22 + v21;
          }

          else
          {
            v24 = v22;
          }

          result = sub_228A0FE98(result, v24, 1, v15, &qword_27D863940, MEMORY[0x277CCB510], MEMORY[0x277CCB510]);
          v15 = result;
        }

        v2 = v20;
        if (*(v18 + 16))
        {
          if ((v15[3] >> 1) - v15[2] < v21)
          {
            goto LABEL_26;
          }

          swift_arrayInitWithCopy();

          v10 = v17;
          if (v21)
          {
            v25 = v15[2];
            v26 = __OFADD__(v25, v21);
            v27 = v25 + v21;
            if (v26)
            {
              goto LABEL_27;
            }

            v15[2] = v27;
          }
        }

        else
        {

          v10 = v17;
          if (v21)
          {
            goto LABEL_25;
          }
        }

        ++v13;
        v14 += v36;
        if (v33 == v13)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
LABEL_21:

      v37 = v31[0];
      sub_228A1011C(v15, &qword_27D863940, MEMORY[0x277CCB510], MEMORY[0x277CCB510], MEMORY[0x277CCB510]);
      return v37;
    }
  }

  else
  {
    sub_228A10278(0, &qword_27D863940, MEMORY[0x277CCB510], MEMORY[0x277D84560]);
    v28 = *(v3 + 72);
    v29 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_229163C40;
    (*(v3 + 16))(v30 + v29, a1, v2);
    return v30;
  }

  return result;
}

uint64_t sub_228A09044@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_22911C0AC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277CCB520];
  v8 = MEMORY[0x277D83D88];
  sub_228A10278(0, &qword_27D863A88, MEMORY[0x277CCB520], MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v25 - v14;
  sub_22911BE9C();
  sub_228A13FB4(v15, v13, &qword_27D863A88, v7, v8, sub_228A10278);
  if ((*(v3 + 48))(v13, 1, v2) == 1)
  {
    v16 = MEMORY[0x277CCB520];
    sub_228A14028(v15, &qword_27D863A88, MEMORY[0x277CCB520], MEMORY[0x277D83D88], sub_228A10278);
    v17 = sub_22911BEAC();
    v26 = MEMORY[0x277D84F90];
    result = sub_228A1011C(v17, &qword_27D863B50, v16, MEMORY[0x277CCB520], MEMORY[0x277CCB520]);
    v19 = v26;
  }

  else
  {
    v21 = *(v3 + 32);
    v20 = v3 + 32;
    v21(v6, v13, v2);
    v22 = MEMORY[0x277CCB520];
    sub_228A10278(0, &qword_27D863B50, MEMORY[0x277CCB520], MEMORY[0x277D84560]);
    v23 = *(v20 + 40);
    v24 = (*(v20 + 48) + 32) & ~*(v20 + 48);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_229163C40;
    v21((v19 + v24), v6, v2);
    result = sub_228A14028(v15, &qword_27D863A88, v22, MEMORY[0x277D83D88], sub_228A10278);
  }

  *a1 = v19;
  return result;
}

uint64_t sub_228A09384@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22911C09C();
  *a1 = result;
  return result;
}

uint64_t sub_228A093B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22911C04C();
  *a1 = result;
  return result;
}

uint64_t sub_228A093DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22911BFBC();
  *a1 = result;
  return result;
}

uint64_t HDCloudSyncPipelineStageDescription.copy(with:)@<X0>(void *a1@<X8>)
{
  sub_228A10278(0, &qword_27D863A50, MEMORY[0x277CCB450], MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  MEMORY[0x28223BE20](v5);
  v9 = v27 - v8 + 16;
  v10 = OBJC_IVAR___HDCloudSyncPipelineStageDescription__accountInfo;
  swift_beginAccess();
  v11 = MEMORY[0x277D84F70];
  sub_228A13FB4(v1 + v10, v27, &qword_280D67A78, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_228A14AE8);
  if (v28)
  {
    v12 = sub_22911BEDC();
    v13 = swift_dynamicCast();
    (*(*(v12 - 8) + 56))(v9, v13 ^ 1u, 1, v12);
  }

  else
  {
    sub_228A14028(v27, &qword_280D67A78, v11 + 8, MEMORY[0x277D83D88], sub_228A14AE8);
    v14 = sub_22911BEDC();
    (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  }

  v15 = *(v1 + OBJC_IVAR___HDCloudSyncPipelineStageDescription__descriptions);

  v17 = sub_228A06E64(v16);

  v18 = [objc_allocWithZone(HDCloudSyncPipelineStageDescription) init];
  v19 = MEMORY[0x277CCB450];
  v20 = MEMORY[0x277D83D88];
  sub_228A13FB4(v9, v7, &qword_27D863A50, MEMORY[0x277CCB450], MEMORY[0x277D83D88], sub_228A10278);
  v21 = v18;
  sub_228A09B68(v7);
  v22 = sub_228A07000(v17);

  sub_228A14028(v9, &qword_27D863A50, v19, v20, sub_228A10278);
  v23 = *&v21[OBJC_IVAR___HDCloudSyncPipelineStageDescription__descriptions];
  *&v21[OBJC_IVAR___HDCloudSyncPipelineStageDescription__descriptions] = v22;

  result = type metadata accessor for HDCloudSyncPipelineStageDescription(v24);
  a1[3] = result;
  *a1 = v21;
  return result;
}

uint64_t HDCloudSyncPipelineStageDescription.description.getter()
{
  v17[1] = *MEMORY[0x277D85DE8];
  v1 = sub_22911C39C();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v17[0] = 0;
  v3 = [v0 serializedPrettyPrinted:1 error:v17];
  v4 = v17[0];
  if (!v3)
  {
    v11 = v4;
    v12 = sub_22911B7FC();

    swift_willThrow();
LABEL_5:
    v16.receiver = v0;
    v16.super_class = HDCloudSyncPipelineStageDescription;
    v13 = objc_msgSendSuper2(&v16, sel_debugDescription);
    v8 = sub_22911C35C();

    goto LABEL_6;
  }

  v5 = sub_22911B81C();
  v7 = v6;

  sub_22911C38C();
  v8 = sub_22911C37C();
  v10 = v9;
  sub_2289BCF3C(v5, v7);
  if (!v10)
  {
    goto LABEL_5;
  }

LABEL_6:
  v14 = *MEMORY[0x277D85DE8];
  return v8;
}

void __swiftcall HDCloudSyncPipelineStageDescription.init()(HDCloudSyncPipelineStageDescription *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id HDCloudSyncPipelineStageDescription.init()()
{
  v1 = (v0 + OBJC_IVAR___HDCloudSyncPipelineStageDescription__accountInfo);
  *v1 = 0u;
  v1[1] = 0u;
  *(v0 + OBJC_IVAR___HDCloudSyncPipelineStageDescription__descriptions) = MEMORY[0x277D84F90];
  v3.super_class = HDCloudSyncPipelineStageDescription;
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_228A09B68(uint64_t a1)
{
  v3 = MEMORY[0x277CCB450];
  v4 = MEMORY[0x277D83D88];
  sub_228A10278(0, &qword_27D863A50, MEMORY[0x277CCB450], MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16 - v7;
  sub_228A13FB4(a1, &v16 - v7, &qword_27D863A50, v3, v4, sub_228A10278);
  v9 = sub_22911BEDC();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    v11 = MEMORY[0x277CCB450];
    v12 = MEMORY[0x277D83D88];
    sub_228A14028(a1, &qword_27D863A50, MEMORY[0x277CCB450], MEMORY[0x277D83D88], sub_228A10278);
    sub_228A14028(v8, &qword_27D863A50, v11, v12, sub_228A10278);
    v17 = 0u;
    v18 = 0u;
  }

  else
  {
    *(&v18 + 1) = v9;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v17);
    (*(v10 + 32))(boxed_opaque_existential_1, v8, v9);
    sub_228A14028(a1, &qword_27D863A50, MEMORY[0x277CCB450], MEMORY[0x277D83D88], sub_228A10278);
  }

  v14 = OBJC_IVAR___HDCloudSyncPipelineStageDescription__accountInfo;
  swift_beginAccess();
  sub_228A14A5C(&v17, v1 + v14);
  return swift_endAccess();
}

id HDCloudSyncPipelineStageDescribe.init(configuration:cloudState:respositoryDescriptionHandler:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v12[4] = a3;
  v12[5] = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_2289C6B18;
  v12[3] = &block_descriptor_11;
  v9 = _Block_copy(v12);
  v10 = [v8 initWithConfiguration:a1 cloudState:a2 respositoryDescriptionHandler:v9];

  _Block_release(v9);

  return v10;
}

{
  v7 = (v4 + OBJC_IVAR___HDCloudSyncPipelineStageDescribe_respositoryDescriptionHandler);
  *v7 = a3;
  v7[1] = a4;
  v10.super_class = HDCloudSyncPipelineStageDescribe;
  v8 = objc_msgSendSuper2(&v10, sel_initWithConfiguration_cloudState_, a1, a2);

  return v8;
}

Swift::Void __swiftcall HDCloudSyncPipelineStageDescribe.main()()
{
  v61[2] = *MEMORY[0x277D85DE8];
  v59 = sub_22911BEBC();
  v1 = *(v59 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v59);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v58 = &v51 - v6;
  sub_228A10278(0, &qword_27D863A88, MEMORY[0x277CCB520], MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v51 - v12;
  v14 = [v0 configuration];
  v15 = [v14 repository];

  v16 = [v0 configuration];
  v17 = [v16 cachedCloudState];

  aBlock[0] = 0;
  v18 = [v17 zonesByIdentifierWithError_];

  v19 = aBlock[0];
  if (v18)
  {
    v57 = v1;
    sub_2289B3D00(0, &qword_27D862A40, off_27860E1E8);
    sub_2289B3D00(0, &qword_27D862A50, off_27860DB28);
    sub_2289C83EC();
    v20 = sub_22911C2CC();
    v21 = v19;

    v22 = [v15 primaryCKContainer];
    v23 = v15;
    if (v22)
    {
      v24 = v22;
      v25 = v13;
      sub_228A0A7CC(v24, v20, v13);

      v26 = 0;
    }

    else
    {
      v26 = 1;
      v25 = v13;
    }

    v30 = sub_22911C0AC();
    (*(*(v30 - 8) + 56))(v25, v26, 1, v30);
    v61[0] = MEMORY[0x277D84F90];
    v31 = swift_allocObject();
    v31[2] = v61;
    v31[3] = v0;
    v31[4] = v20;
    v32 = swift_allocObject();
    v32[2] = sub_228A10384;
    v32[3] = v31;
    aBlock[4] = sub_228A10390;
    aBlock[5] = v32;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_228A052DC;
    aBlock[3] = &block_descriptor_6_2;
    v33 = _Block_copy(aBlock);
    v34 = v0;

    [v23 enumerateSecondaryContainersWithBlock_];
    _Block_release(v33);
    LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

    if (v33)
    {
      __break(1u);
    }

    v35 = [v23 syncCircleIdentifier];
    sub_22911C35C();
    v56 = v23;

    v55 = MEMORY[0x277CCB520];
    v54 = MEMORY[0x277D83D88];
    sub_228A13FB4(v25, v11, &qword_27D863A88, MEMORY[0x277CCB520], MEMORY[0x277D83D88], sub_228A10278);

    v36 = v58;
    sub_22911BE8C();
    v37 = [v34 respositoryDescriptionHandler];
    v52 = v34;
    v53 = v25;
    v38 = v57;
    v39 = *(v57 + 16);
    v40 = v59;
    v39(v5, v36, v59);
    v41 = [objc_allocWithZone(HDCloudSyncPipelineStageDescription) init];
    sub_228A10278(0, &qword_27D863950, MEMORY[0x277CCB448], MEMORY[0x277D84560]);
    v42 = *(v38 + 72);
    v43 = *(v38 + 80);
    v51 = v31;
    v44 = (v43 + 32) & ~v43;
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_229163C40;
    v39((v45 + v44), v5, v40);
    v46 = v41;
    v47 = sub_228A07000(v45);
    swift_setDeallocating();
    v48 = *(v38 + 8);
    v48(v45 + v44, v40);
    swift_deallocClassInstance();
    v48(v5, v40);
    v49 = *&v46[OBJC_IVAR___HDCloudSyncPipelineStageDescription__descriptions];
    *&v46[OBJC_IVAR___HDCloudSyncPipelineStageDescription__descriptions] = v47;

    v37[2](v37, v46);
    _Block_release(v37);

    [v52 finishWithSuccess:1 error:0];
    v48(v36, v40);
    sub_228A14028(v53, &qword_27D863A88, v55, v54, sub_228A10278);
  }

  else
  {
    v27 = aBlock[0];
    v28 = sub_22911B7FC();

    swift_willThrow();
    v29 = sub_22911B7EC();
    [v0 finishWithSuccess:0 error:v29];
  }

  v50 = *MEMORY[0x277D85DE8];
}

void sub_228A0A7CC(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_22911B95C();
  v57 = *(v7 - 8);
  v58 = v7;
  v8 = *(v57 + 64);
  MEMORY[0x28223BE20](v7);
  v59 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_22911C05C();
  v10 = *(v60 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v60);
  v56 = v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v55 = v54 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = v54 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = v54 - v19;
  v62 = a1;

  v22 = sub_228A13C48(v21, sub_228A103E0);
  v23 = sub_228A103E8(v22);

  v61 = a1;

  v25 = sub_228A13C48(v24, sub_228A13EE8);
  v26 = sub_228A103E8(v25);

  if ((v23 & 0x8000000000000000) == 0 && (v23 & 0x4000000000000000) == 0)
  {
    if (*(v23 + 16))
    {
      goto LABEL_4;
    }

LABEL_9:

    v28 = MEMORY[0x277D84F90];
    if ((v26 & 0x8000000000000000) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_10;
  }

  if (!sub_22911C78C())
  {
    goto LABEL_9;
  }

LABEL_4:
  v54[0] = a1;
  v54[1] = a3;
  sub_228A0B46C(v23, a2);

  v27 = HDCKDatabaseScopeToString(2);
  sub_22911C35C();

  sub_22911C03C();
  (*(v10 + 16))(v18, v20, v60);
  v28 = sub_228A0FE98(0, 1, 1, MEMORY[0x277D84F90], &qword_27D863AA0, MEMORY[0x277CCB518], MEMORY[0x277CCB518]);
  v30 = v28[2];
  v29 = v28[3];
  if (v30 >= v29 >> 1)
  {
    v28 = sub_228A0FE98(v29 > 1, v30 + 1, 1, v28, &qword_27D863AA0, MEMORY[0x277CCB518], MEMORY[0x277CCB518]);
  }

  v31 = v20;
  v32 = v60;
  (*(v10 + 8))(v31, v60);
  v28[2] = v30 + 1;
  (*(v10 + 32))(v28 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v30, v18, v32);
  a1 = v54[0];
  if ((v26 & 0x8000000000000000) != 0)
  {
LABEL_17:
    if (!sub_22911C78C())
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

LABEL_10:
  if ((v26 & 0x4000000000000000) != 0)
  {
    goto LABEL_17;
  }

  if (!*(v26 + 16))
  {
LABEL_18:

    goto LABEL_19;
  }

LABEL_12:
  sub_228A0B46C(v26, a2);

  v33 = HDCKDatabaseScopeToString(3);
  sub_22911C35C();

  v34 = v55;
  sub_22911C03C();
  v35 = v56;
  (*(v10 + 16))(v56, v34, v60);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v28 = sub_228A0FE98(0, v28[2] + 1, 1, v28, &qword_27D863AA0, MEMORY[0x277CCB518], MEMORY[0x277CCB518]);
  }

  v37 = v28[2];
  v36 = v28[3];
  if (v37 >= v36 >> 1)
  {
    v28 = sub_228A0FE98(v36 > 1, v37 + 1, 1, v28, &qword_27D863AA0, MEMORY[0x277CCB518], MEMORY[0x277CCB518]);
  }

  v38 = v60;
  (*(v10 + 8))(v34, v60);
  v28[2] = v37 + 1;
  (*(v10 + 32))(v28 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v37, v35, v38);
LABEL_19:
  v39 = [v3 profile];
  v40 = v59;
  if (!v39 || (v41 = v39, v42 = [v39 cloudSyncManager], v41, !v42) || (v43 = objc_msgSend(v42, sel_ownerIdentifierManager), v42, v44 = objc_msgSend(v43, sel_cachedOwnerIdentifierForContainer_, a1), v43, !v44))
  {
    sub_22911B93C();
    v45 = a1;
    v46 = sub_22911B94C();
    v47 = sub_22911C5EC();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v48 = 138543362;
      *(v48 + 4) = v45;
      *v49 = v45;
      v50 = v45;
      _os_log_impl(&dword_228986000, v46, v47, "Owner identifier not found for container %{public}@.", v48, 0xCu);
      sub_228A14088(v49, sub_2289C4A64);
      MEMORY[0x22AAC9830](v49, -1, -1);
      MEMORY[0x22AAC9830](v48, -1, -1);
    }

    (*(v57 + 8))(v40, v58);
    v44 = 0;
  }

  v51 = [a1 containerIdentifier];
  if (!v51)
  {
    if (!v44)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v52 = v51;
  sub_22911C35C();

  if (v44)
  {
LABEL_27:
    v53 = [v44 string];
    sub_22911C35C();
  }

LABEL_28:
  sub_22911C08C();
}

uint64_t sub_228A0AF78(void *a1, void **a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_22911C0AC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228A0A7CC(a1, a4, v11);
  v12 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_228A0FE98(0, v12[2] + 1, 1, v12, &qword_27D863B50, MEMORY[0x277CCB520], MEMORY[0x277CCB520]);
    *a2 = v12;
  }

  v15 = v12[2];
  v14 = v12[3];
  if (v15 >= v14 >> 1)
  {
    v12 = sub_228A0FE98(v14 > 1, v15 + 1, 1, v12, &qword_27D863B50, MEMORY[0x277CCB520], MEMORY[0x277CCB520]);
    *a2 = v12;
  }

  v12[2] = v15 + 1;
  return (*(v8 + 32))(v12 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v15, v11, v7);
}

id HDCloudSyncPipelineStageDescribe.init(configuration:cloudState:)(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithConfiguration:a1 cloudState:a2];

  return v4;
}

BOOL sub_228A0B264(void *a1, uint64_t a2, void *a3)
{
  v5 = [a1 containerIdentifier];
  v6 = sub_22911C35C();
  v8 = v7;

  v9 = [a3 containerIdentifier];
  if (!v9)
  {

    return 0;
  }

  v10 = v9;
  v11 = sub_22911C35C();
  v13 = v12;

  if (v6 == v11 && v8 == v13)
  {

    return [a1 scope] == 2;
  }

  v15 = sub_22911CADC();

  result = 0;
  if (v15)
  {
    return [a1 scope] == 2;
  }

  return result;
}

BOOL sub_228A0B368(void *a1, uint64_t a2, void *a3)
{
  v5 = [a1 containerIdentifier];
  v6 = sub_22911C35C();
  v8 = v7;

  v9 = [a3 containerIdentifier];
  if (!v9)
  {

    return 0;
  }

  v10 = v9;
  v11 = sub_22911C35C();
  v13 = v12;

  if (v6 == v11 && v8 == v13)
  {

    return [a1 scope] == 3;
  }

  v15 = sub_22911CADC();

  result = 0;
  if (v15)
  {
    return [a1 scope] == 3;
  }

  return result;
}

char *sub_228A0B46C(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_228A10278(0, &qword_27D863AA8, MEMORY[0x277CCB508], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v26 - v8;
  v10 = sub_22911BFCC();
  v29 = *(v10 - 8);
  v11 = *(v29 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v35 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v28 = &v26 - v14;
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22911C78C())
  {
    v16 = 0;
    v33 = a1 & 0xFFFFFFFFFFFFFF8;
    v34 = a1 & 0xC000000000000001;
    v30 = (v29 + 32);
    v31 = (v29 + 48);
    v17 = MEMORY[0x277D84F90];
    v26 = a2;
    v27 = v3;
    v32 = i;
    while (1)
    {
      if (v34)
      {
        v18 = a1;
        v19 = MEMORY[0x22AAC6410](v16, a1);
      }

      else
      {
        if (v16 >= *(v33 + 16))
        {
          goto LABEL_18;
        }

        v18 = a1;
        v19 = *(a1 + 8 * v16 + 32);
      }

      a1 = v19;
      v20 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      v36 = v19;
      sub_228A0B864(&v36, a2, v3, v9);

      if ((*v31)(v9, 1, v10) == 1)
      {
        sub_228A14028(v9, &qword_27D863AA8, MEMORY[0x277CCB508], MEMORY[0x277D83D88], sub_228A10278);
      }

      else
      {
        v21 = *v30;
        v22 = v28;
        (*v30)(v28, v9, v10);
        v21(v35, v22, v10);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_228A0FE98(0, *(v17 + 2) + 1, 1, v17, &qword_27D863AB0, MEMORY[0x277CCB508], MEMORY[0x277CCB508]);
        }

        v24 = *(v17 + 2);
        v23 = *(v17 + 3);
        if (v24 >= v23 >> 1)
        {
          v17 = sub_228A0FE98(v23 > 1, v24 + 1, 1, v17, &qword_27D863AB0, MEMORY[0x277CCB508], MEMORY[0x277CCB508]);
        }

        *(v17 + 2) = v24 + 1;
        v21(&v17[((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v24], v35, v10);
        a2 = v26;
        v3 = v27;
      }

      a1 = v18;
      ++v16;
      if (v20 == v32)
      {
        return v17;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_228A0B864@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_22911B95C();
  v108 = *(v8 - 8);
  v9 = *(v108 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v105 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v104 = &v97 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v109 = &v97 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v110 = &v97 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v103 = &v97 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v100 = &v97 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v97 - v23;
  MEMORY[0x28223BE20](v22);
  v101 = &v97 - v25;
  sub_228A10278(0, &qword_27D863AB8, MEMORY[0x277CCB4F0], MEMORY[0x277D83D88]);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v30 = &v97 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28);
  v106 = &v97 - v32;
  MEMORY[0x28223BE20](v31);
  v112 = &v97 - v33;
  v113 = sub_22911C02C();
  v102 = *(v113 - 8);
  v34 = *(v102 + 64);
  v35 = MEMORY[0x28223BE20](v113);
  v111 = &v97 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v38 = &v97 - v37;
  v39 = *a1;
  v40 = sub_228A04D30(*a1, a2);
  if (v40)
  {
    v41 = v40;
    v98 = v30;
    v99 = a4;
    v115 = a3;
    v42 = [v39 zoneIdentifier];
    v43 = v41;
    v44 = [v42 zoneName];

    sub_22911C35C();
    v97 = v39;
    v45 = [v39 zoneIdentifier];
    v46 = [v45 ownerName];

    sub_22911C35C();
    v47 = v115;
    v107 = v38;
    sub_22911C01C();
    v114 = v43;
    v48 = v116;
    v49 = sub_228A0CBC4(v43);
    if (v48)
    {
      v50 = v100;
      sub_22911B93C();
      v51 = v48;
      v52 = sub_22911B94C();
      v53 = sub_22911C5EC();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        *v54 = 138543362;
        v56 = v48;
        v57 = _swift_stdlib_bridgeErrorToNSError();
        *(v54 + 4) = v57;
        *v55 = v57;
        _os_log_impl(&dword_228986000, v52, v53, "Failed to create sync record descriptions %{public}@", v54, 0xCu);
        sub_228A14088(v55, sub_2289C4A64);
        v58 = v55;
        v47 = v115;
        MEMORY[0x22AAC9830](v58, -1, -1);
        MEMORY[0x22AAC9830](v54, -1, -1);
      }

      else
      {
      }

      (*(v108 + 8))(v50, v8);
      v100 = MEMORY[0x277D84F90];
    }

    else
    {
      v100 = v49;
    }

    v118 = sub_2289B2FC4(MEMORY[0x277D84F90]);
    v68 = v114;
    v69 = sub_228A06C48(&qword_27D863AD0, off_27860E028);
    v70 = v47;
    sub_228A12F48(v69, &v118, &qword_27D863AD0, off_27860E028);

    v73 = v68;
    v74 = sub_228A06C48(&qword_27D863AC8, off_27860E058);
    v75 = v70;
    sub_228A117E0(v74, v75, &v118);
    v108 = v76;

    v71 = sub_228A0F1EC(v73, &qword_27D863B28, off_27860DC50);
    v72 = sub_228A0F1EC(v73, &qword_27D863AE0, off_27860DD98);
    v118 = v71;
    sub_228A1011C(v72, &qword_27D863940, MEMORY[0x277CCB510], MEMORY[0x277CCB510], MEMORY[0x277CCB510]);
    v77 = v118;
    v78 = sub_228A0F1EC(v73, &qword_27D863AD8, off_27860DDC0);
    v118 = v77;
    sub_228A1011C(v78, &qword_27D863940, MEMORY[0x277CCB510], MEMORY[0x277CCB510], MEMORY[0x277CCB510]);
    v110 = v118;
    v96 = v97;
    v118 = sub_2289B2FC4(MEMORY[0x277D84F90]);
    v79 = sub_228A06C48(&qword_27D863AF0, off_27860E098);
    v80 = v47;
    sub_228A12F48(v79, &v118, &qword_27D863AF0, off_27860E098);

    v93 = sub_228A06C48(&qword_27D863AE8, off_27860E0D0);
    v94 = v80;
    v109 = sub_228A11A2C(v93, &v118);

    v95 = v106;
    v115 = sub_228A0D4C8(v73);
    sub_228A0E1D8(v73, v95);
    sub_228A149DC(v95, v112, &qword_27D863AB8, MEMORY[0x277CCB4F0]);
    v81 = sub_228A13EF0(v73);
    v116 = 0;
    v106 = v81;
    v82 = v102;
    (*(v102 + 16))(v111, v107, v113);
    v83 = HDCloudSyncZoneTypeToString([v96 type]);
    v84 = sub_22911C35C();
    v104 = v85;
    v105 = v84;

    v103 = MEMORY[0x277CCB4F0];
    v86 = MEMORY[0x277D83D88];
    v87 = v112;
    sub_228A13FB4(v112, v98, &qword_27D863AB8, MEMORY[0x277CCB4F0], MEMORY[0x277D83D88], sub_228A10278);
    v117 = v100;
    v88 = MEMORY[0x277CCB510];
    v89 = MEMORY[0x277CCB510];
    v90 = MEMORY[0x277CCB510];
    sub_228A1011C(v108, &qword_27D863940, MEMORY[0x277CCB510], MEMORY[0x277CCB510], MEMORY[0x277CCB510]);
    sub_228A1011C(v110, &qword_27D863940, v88, v89, v90);
    sub_228A1011C(v109, &qword_27D863940, v88, v89, v90);
    sub_228A1011C(v115, &qword_27D863940, v88, v89, v90);
    a4 = v99;
    sub_22911BFAC();

    sub_228A14028(v87, &qword_27D863AB8, v103, v86, sub_228A10278);
    (*(v82 + 8))(v107, v113);
    v67 = 0;
  }

  else
  {
    sub_22911B93C();
    v59 = v39;
    v60 = sub_22911B94C();
    v61 = sub_22911C5EC();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = v8;
      v64 = swift_slowAlloc();
      *v62 = 138543362;
      *(v62 + 4) = v59;
      *v64 = v59;
      v65 = v59;
      _os_log_impl(&dword_228986000, v60, v61, "Zone not found %{public}@", v62, 0xCu);
      sub_228A14088(v64, sub_2289C4A64);
      v66 = v64;
      v8 = v63;
      MEMORY[0x22AAC9830](v66, -1, -1);
      MEMORY[0x22AAC9830](v62, -1, -1);
    }

    (*(v108 + 8))(v24, v8);
    v67 = 1;
  }

  v91 = sub_22911BFCC();
  return (*(*(v91 - 8) + 56))(a4, v67, 1, v91);
}

unint64_t sub_228A0CBC4(uint64_t *a1)
{
  v3 = v1;
  v5 = sub_22911BF0C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228A10278(0, &qword_27D862B48, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v58 - v11;
  v13 = sub_22911C07C();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22911C00C();
  v18 = *(v17 - 1);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_228A06C48(&qword_27D863B30, off_27860DF80);
  if (!v2)
  {
    v23 = result;
    v71 = v21;
    v61 = 0;
    if (result >> 62)
    {
      goto LABEL_21;
    }

    v24 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24)
    {
      while (1)
      {
        v72 = v18;
        v69 = v8;
        v59 = v3;
        v60 = a1;
        v84 = MEMORY[0x277D84F90];
        a1 = &v84;
        sub_2289FD738(0, v24 & ~(v24 >> 63), 0);
        v68 = v24;
        if (v24 < 0)
        {
          break;
        }

        v25 = v84;
        sub_2289B3D00(0, &qword_27D863B30, off_27860DF80);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v18 = 0;
        v70 = v23 & 0xC000000000000001;
        v62 = v23 & 0xFFFFFFFFFFFFFF8;
        v63 = v72 + 32;
        v67 = v12;
        v76 = v16;
        v66 = v17;
        v65 = v23;
        while (!__OFADD__(v18, 1))
        {
          v75 = v18 + 1;
          if (v70)
          {
            v26 = MEMORY[0x22AAC6410](v18, v23);
          }

          else
          {
            if (v18 >= *(v62 + 16))
            {
              goto LABEL_20;
            }

            v26 = *(v23 + 8 * v18 + 32);
          }

          v27 = v26;
          v28 = [ObjCClassFromMetadata recordType];
          v29 = sub_22911C35C();
          v73 = v30;
          v74 = v29;

          v31 = [v27 recordID];
          v32 = [v31 recordName];

          sub_22911C35C();
          sub_22911C06C();
          v17 = [v27 schemaVersion];
          v33 = [v27 record];
          v34 = [v33 modificationDate];

          v35 = v25;
          if (v34)
          {
            v8 = v67;
            sub_22911B86C();

            v36 = 0;
          }

          else
          {
            v36 = 1;
            v8 = v67;
          }

          v37 = sub_22911B88C();
          (*(*(v37 - 8) + 56))(v8, v36, 1, v37);
          v80 = v27;
          sub_2289B3D00(0, &qword_27D862B28, off_27860DF68);
          sub_2289B4AE8();
          v38 = v27;
          if (!swift_dynamicCast())
          {
            goto LABEL_28;
          }

          sub_2289B4C00(v78, v81);
          v39 = v82;
          v40 = v83;
          v41 = __swift_project_boxed_opaque_existential_1(v81, v82);
          v3 = v69;
          a1 = v41;
          (*(v40 + 8))(v39, v40);
          __swift_destroy_boxed_opaque_existential_0(v81);
          v16 = v71;
          sub_22911BFFC();

          v25 = v35;
          v84 = v35;
          v12 = *(v35 + 16);
          v42 = *(v35 + 24);
          if (v12 >= v42 >> 1)
          {
            a1 = &v84;
            sub_2289FD738(v42 > 1, v12 + 1, 1);
            v25 = v84;
          }

          *(v25 + 16) = v12 + 1;
          (*(v72 + 32))(v25 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v12, v16, v66);
          ++v18;
          v23 = v65;
          if (v75 == v68)
          {

            v3 = v59;
            goto LABEL_23;
          }
        }

        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        v24 = sub_22911C78C();
        if (!v24)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_28:
      v79 = 0;
      memset(v78, 0, sizeof(v78));
      sub_228A14028(v78, &qword_27D862B38, sub_2289B4AE8, MEMORY[0x277D83D88], sub_228A10278);
      result = sub_22911CA2C();
      __break(1u);
    }

    else
    {
LABEL_22:

      v25 = MEMORY[0x277D84F90];
LABEL_23:
      v81[0] = sub_2289B2D04(MEMORY[0x277D84F90]);
      v43 = v61;
      v44 = sub_228A06C48(&qword_27D862EA8, off_27860DB30);
      if (v43)
      {
      }

      else
      {
        v45 = v44;
        v46 = v3;
        sub_228A12E44(v45, v81, sub_228A125E0);

        v47 = sub_228A06C48(&qword_27D863B48, off_27860E150);
        v48 = v46;
        v49 = sub_228A10B6C(v47, v48, v81);

        v81[0] = sub_2289B2ED8(MEMORY[0x277D84F90]);
        v50 = sub_228A06C48(&qword_27D863B40, off_27860DCA0);
        v51 = v48;
        sub_228A12E44(v50, v81, sub_228A12974);

        v52 = sub_228A06C48(&qword_27D863B38, off_27860DC98);
        v53 = v51;
        v54 = sub_228A110A0(v52, v81);

        v77 = v25;
        v55 = MEMORY[0x277CCB510];
        v56 = MEMORY[0x277CCB510];
        v57 = MEMORY[0x277CCB510];
        sub_228A1011C(v49, &qword_27D863940, MEMORY[0x277CCB510], MEMORY[0x277CCB510], MEMORY[0x277CCB510]);
        sub_228A1011C(v54, &qword_27D863940, v55, v56, v57);
        return v77;
      }
    }
  }

  return result;
}

uint64_t sub_228A0D4C8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22911BF0C();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v86 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v98 = &v82 - v8;
  sub_228A10278(0, &qword_27D862B48, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v87 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v100 = &v82 - v13;
  v14 = sub_22911C07C();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v82 - v19;
  v21 = sub_22911C00C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 8);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v82 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v82 - v27;
  v29 = v101;
  v30 = sub_228A06C48(&qword_27D863B08, off_27860DAE8);
  if (v29)
  {
    return v21;
  }

  v94 = v28;
  v101 = v20;
  v31 = v100;
  v82 = a1;
  v83 = v26;
  v84 = 0;
  v95 = v30;
  if (v30 >> 62)
  {
    goto LABEL_48;
  }

  for (i = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22911C78C())
  {
    v33 = v31;
    v96 = v22;
    v97 = v21;
    v85 = v18;
    if (i)
    {
      v110 = MEMORY[0x277D84F90];
      v34 = sub_2289FD738(0, i & ~(i >> 63), 0);
      if ((i & 0x8000000000000000) == 0)
      {
        v18 = v110;
        sub_2289B3D00(0, &qword_27D863B08, off_27860DAE8);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v35 = 0;
        v36 = v95;
        v93 = v95 & 0xC000000000000001;
        v88 = v95 & 0xFFFFFFFFFFFFFF8;
        v89 = v22 + 32;
        v92 = v2;
        v91 = i;
        while (1)
        {
          v31 = v35 + 1;
          if (__OFADD__(v35, 1))
          {
            break;
          }

          v100 = v18;
          if (v93)
          {
            v37 = MEMORY[0x22AAC6410](v35, v36);
          }

          else
          {
            v2 = v101;
            if (v35 >= *(v88 + 16))
            {
              goto LABEL_46;
            }

            v37 = *(v36 + 8 * v35 + 32);
          }

          v38 = [ObjCClassFromMetadata recordType];
          v99 = sub_22911C35C();

          v39 = [v37 recordID];
          v40 = [v39 recordName];

          sub_22911C35C();
          sub_22911C06C();
          [v37 schemaVersion];
          v41 = [v37 record];
          v42 = [v41 modificationDate];

          if (v42)
          {
            sub_22911B86C();

            v43 = 0;
          }

          else
          {
            v43 = 1;
          }

          v44 = sub_22911B88C();
          (*(*(v44 - 8) + 56))(v33, v43, 1, v44);
          v106 = v37;
          sub_2289B3D00(0, &qword_27D862B28, off_27860DF68);
          sub_2289B4AE8();
          v45 = v33;
          v46 = v37;
          if (!swift_dynamicCast())
          {
            goto LABEL_53;
          }

          sub_2289B4C00(v104, v107);
          v47 = v108;
          v48 = v109;
          __swift_project_boxed_opaque_existential_1(v107, v108);
          (*(v48 + 8))(v47, v48);
          __swift_destroy_boxed_opaque_existential_0(v107);
          v49 = v94;
          sub_22911BFFC();

          v18 = v100;
          v110 = v100;
          v51 = *(v100 + 2);
          v50 = *(v100 + 3);
          v21 = v51 + 1;
          v33 = v45;
          if (v51 >= v50 >> 1)
          {
            sub_2289FD738(v50 > 1, v51 + 1, 1);
            v49 = v94;
            v18 = v110;
          }

          *(v18 + 2) = v21;
          v22 = v96;
          (*(v96 + 4))(&v18[((v22[80] + 32) & ~v22[80]) + *(v22 + 9) * v51], v49, v97);
          ++v35;
          v2 = v92;
          v36 = v95;
          if (v31 == v91)
          {

            goto LABEL_21;
          }
        }

        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      __break(1u);
LABEL_50:
      __break(1u);
    }

    else
    {

      v18 = MEMORY[0x277D84F90];
LABEL_21:
      v21 = MEMORY[0x277D84F90];
      v110 = sub_2289B3238(MEMORY[0x277D84F90]);
      v52 = v84;
      v53 = sub_228A06C48(&qword_27D863B20, off_27860DAF8);
      if (v52)
      {

        return v21;
      }

      v54 = v53;
      v55 = v2;
      sub_228A12E44(v54, &v110, sub_228A1342C);

      v57 = sub_228A06C48(&qword_27D863B18, off_27860DAF0);
      v58 = v55;
      v2 = sub_228A11F30(v57, &v110);

      v34 = sub_228A06C48(&qword_27D863B10, off_27860DB00);
      if (!(v34 >> 62))
      {
        v31 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_27;
      }
    }

    v81 = v34;
    v31 = sub_22911C78C();
    v34 = v81;
LABEL_27:
    v84 = 0;
    if (!v31)
    {

      v60 = MEMORY[0x277D84F90];
LABEL_44:
      v102 = v18;
      v78 = MEMORY[0x277CCB510];
      v79 = MEMORY[0x277CCB510];
      v80 = MEMORY[0x277CCB510];
      sub_228A1011C(v2, &qword_27D863940, MEMORY[0x277CCB510], MEMORY[0x277CCB510], MEMORY[0x277CCB510]);
      sub_228A1011C(v60, &qword_27D863940, v78, v79, v80);
      v21 = v102;

      return v21;
    }

    v59 = v34;
    v89 = v2;
    v100 = v18;
    v106 = v21;
    sub_2289FD738(0, v31 & ~(v31 >> 63), 0);
    if (v31 < 0)
    {
      break;
    }

    v60 = v106;
    sub_2289B3D00(0, &qword_27D863B10, off_27860DB00);
    v34 = swift_getObjCClassFromMetadata();
    v92 = v34;
    v2 = 0;
    v61 = v59;
    v95 = v59 & 0xC000000000000001;
    ObjCClassFromMetadata = (v59 & 0xFFFFFFFFFFFFFF8);
    v91 = v22 + 32;
    v21 = v87;
    v94 = v59;
    v93 = v31;
    while (!__OFADD__(v2, 1))
    {
      if (v95)
      {
        v62 = MEMORY[0x22AAC6410](v2, v61);
      }

      else
      {
        if (v2 >= *(ObjCClassFromMetadata + 2))
        {
          goto LABEL_50;
        }

        v62 = *&v61[8 * v2 + 32];
      }

      v63 = v62;
      v64 = [v92 recordType];
      v65 = sub_22911C35C();
      v99 = v66;

      v67 = [v63 recordID];
      v68 = [v67 recordName];

      sub_22911C35C();
      sub_22911C06C();
      v98 = [v63 schemaVersion];
      v69 = [v63 record];
      v70 = [v69 modificationDate];

      v101 = (v2 + 1);
      v31 = v65;
      if (v70)
      {
        sub_22911B86C();

        v71 = 0;
      }

      else
      {
        v71 = 1;
      }

      v72 = sub_22911B88C();
      (*(*(v72 - 8) + 56))(v21, v71, 1, v72);
      v103 = v63;
      sub_2289B3D00(0, &qword_27D862B28, off_27860DF68);
      sub_2289B4AE8();
      v22 = v63;
      if (!swift_dynamicCast())
      {
        goto LABEL_53;
      }

      v18 = v21;
      sub_2289B4C00(v104, v107);
      v73 = v108;
      v74 = v109;
      __swift_project_boxed_opaque_existential_1(v107, v108);
      (*(v74 + 8))(v73, v74);
      __swift_destroy_boxed_opaque_existential_0(v107);
      v75 = v83;
      sub_22911BFFC();

      v106 = v60;
      v77 = *(v60 + 16);
      v76 = *(v60 + 24);
      if (v77 >= v76 >> 1)
      {
        sub_2289FD738(v76 > 1, v77 + 1, 1);
        v75 = v83;
        v60 = v106;
      }

      *(v60 + 16) = v77 + 1;
      v34 = (*(v96 + 4))(v60 + ((v96[80] + 32) & ~v96[80]) + *(v96 + 9) * v77, v75, v97);
      ++v2;
      v21 = v87;
      v61 = v94;
      if (v101 == v93)
      {

        v18 = v100;
        v2 = v89;
        goto LABEL_44;
      }
    }

LABEL_47:
    __break(1u);
LABEL_48:
    ;
  }

  __break(1u);
LABEL_53:
  v105 = 0;
  memset(v104, 0, sizeof(v104));
  sub_228A14028(v104, &qword_27D862B38, sub_2289B4AE8, MEMORY[0x277D83D88], sub_228A10278);
  result = sub_22911CA2C();
  __break(1u);
  return result;
}

uint64_t sub_228A0E1D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v10[0] = 0;
  v3 = [a1 zoneShareWithError_];
  v4 = v3;
  if (v10[0])
  {
    v10[0];

    result = swift_willThrow();
  }

  else if (v3)
  {
    v6 = v3;
    sub_228A0F760([v6 owner]);

    v7 = sub_22911BF5C();
    result = (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
  }

  else
  {
    v8 = sub_22911BF5C();
    result = (*(*(v8 - 8) + 56))(a2, 1, 1, v8);
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_228A0E320@<X0>(void **a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_22911BF0C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277D83D88];
  sub_228A10278(0, &qword_27D862B48, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v66 = &v57 - v13;
  v14 = sub_22911C07C();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v65 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22911C00C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v60 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228A10278(0, &qword_27D863AC0, MEMORY[0x277CCB510], v10);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v57 - v26;
  v28 = *a1;
  sub_2289B3D00(0, &qword_27D862EC8, off_27860DFC8);
  v29 = [swift_getObjCClassFromMetadata() recordType];
  v30 = sub_22911C35C();
  v62 = v31;
  v63 = v30;

  v32 = [v28 recordID];
  v33 = v32;
  v34 = *a2;
  if (*(v34 + 16) && (v35 = sub_2289AD774(v32), (v36 & 1) != 0))
  {
    (*(v18 + 16))(v27, *(v34 + 56) + *(v18 + 72) * v35, v17);

    v37 = *(v18 + 56);
    v38 = v27;
    v39 = 0;
  }

  else
  {

    v37 = *(v18 + 56);
    v38 = v27;
    v39 = 1;
  }

  v61 = v37;
  v37(v38, v39, 1, v17);
  sub_228A13FB4(v27, v25, &qword_27D863AC0, MEMORY[0x277CCB510], MEMORY[0x277D83D88], sub_228A10278);
  v40 = (*(v18 + 48))(v25, 1, v17);
  v64 = v18;
  if (v40 == 1)
  {
    v41 = v17;
    sub_228A14028(v27, &qword_27D863AC0, MEMORY[0x277CCB510], MEMORY[0x277D83D88], sub_228A10278);
  }

  else
  {
    v58 = a3;
    v59 = v9;
    v42 = *(v18 + 32);
    v43 = v60;
    v42(v60, v25, v17);
    v44 = MEMORY[0x277CCB510];
    sub_228A10278(0, &qword_27D863940, MEMORY[0x277CCB510], MEMORY[0x277D84560]);
    v45 = *(v18 + 72);
    v46 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_229163C40;
    v48 = v47 + v46;
    v41 = v17;
    v42(v48, v43, v17);
    a3 = v58;
    sub_228A14028(v27, &qword_27D863AC0, v44, MEMORY[0x277D83D88], sub_228A10278);
  }

  v49 = [v28 recordID];
  v50 = [v49 recordName];

  sub_22911C35C();
  sub_22911C06C();
  [v28 schemaVersion];
  v51 = [v28 record];
  v52 = [v51 modificationDate];

  if (v52)
  {
    v53 = v66;
    sub_22911B86C();

    v54 = 0;
  }

  else
  {
    v54 = 1;
    v53 = v66;
  }

  v55 = sub_22911B88C();
  (*(*(v55 - 8) + 56))(v53, v54, 1, v55);
  sub_2289B47F0();
  sub_22911BFFC();
  return v61(a3, 0, 1, v41);
}

uint64_t sub_228A0E988@<X0>(void **a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v66 = a2;
  v76 = a3;
  v4 = sub_22911BF0C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v75 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D83D88];
  sub_228A10278(0, &qword_27D862B48, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v74 = &v65 - v10;
  v11 = sub_22911C07C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v73 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_22911C00C();
  v14 = *(v69 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v69);
  v67 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22911B8DC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v68 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228A10278(0, &qword_27D8630C0, MEMORY[0x277CC95F0], v7);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v65 - v26;
  sub_228A10278(0, &qword_27D863AC0, MEMORY[0x277CCB510], v7);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v32 = &v65 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = &v65 - v33;
  v35 = *a1;
  sub_2289B3D00(0, &qword_27D863AC8, off_27860E058);
  v36 = [swift_getObjCClassFromMetadata() recordType];
  v37 = sub_22911C35C();
  v70 = v38;
  v71 = v37;

  v72 = v35;
  v39 = [v35 authorizationRecordIdentifier];
  if (v39)
  {
    v40 = v39;
    sub_22911B8CC();

    (*(v18 + 56))(v27, 0, 1, v17);
  }

  else
  {
    (*(v18 + 56))(v27, 1, 1, v17);
  }

  sub_228A13FB4(v27, v25, &qword_27D8630C0, MEMORY[0x277CC95F0], MEMORY[0x277D83D88], sub_228A10278);
  v41 = 1;
  v42 = (*(v18 + 48))(v25, 1, v17);
  v43 = v69;
  if (v42 != 1)
  {
    v44 = v68;
    (*(v18 + 32))(v68, v25, v17);
    v45 = *v66;
    if (*(*v66 + 16) && (v46 = sub_2289AD6A0(v44), (v47 & 1) != 0))
    {
      (*(v14 + 16))(v34, *(v45 + 56) + *(v14 + 72) * v46, v43);
      v41 = 0;
    }

    else
    {
      v41 = 1;
    }

    (*(v18 + 8))(v68, v17);
  }

  v48 = MEMORY[0x277D83D88];
  sub_228A14028(v27, &qword_27D8630C0, MEMORY[0x277CC95F0], MEMORY[0x277D83D88], sub_228A10278);
  (*(v14 + 56))(v34, v41, 1, v43);
  sub_228A13FB4(v34, v32, &qword_27D863AC0, MEMORY[0x277CCB510], v48, sub_228A10278);
  if ((*(v14 + 48))(v32, 1, v43) == 1)
  {
    sub_228A14028(v34, &qword_27D863AC0, MEMORY[0x277CCB510], MEMORY[0x277D83D88], sub_228A10278);
  }

  else
  {
    v50 = *(v14 + 32);
    v49 = v14 + 32;
    v51 = v67;
    v50(v67, v32, v43);
    v52 = MEMORY[0x277CCB510];
    sub_228A10278(0, &qword_27D863940, MEMORY[0x277CCB510], MEMORY[0x277D84560]);
    v53 = *(v49 + 40);
    v54 = (*(v49 + 48) + 32) & ~*(v49 + 48);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_229163C40;
    v50((v55 + v54), v51, v43);
    sub_228A14028(v34, &qword_27D863AC0, v52, MEMORY[0x277D83D88], sub_228A10278);
  }

  v56 = v74;
  v57 = v72;
  v58 = [v72 recordID];
  v59 = [v58 recordName];

  sub_22911C35C();
  sub_22911C06C();
  [v57 schemaVersion];
  v60 = [v57 record];
  v61 = [v60 modificationDate];

  if (v61)
  {
    sub_22911B86C();

    v62 = 0;
  }

  else
  {
    v62 = 1;
  }

  v63 = sub_22911B88C();
  (*(*(v63 - 8) + 56))(v56, v62, 1, v63);
  sub_2289B47F0();
  return sub_22911BFFC();
}

unint64_t sub_228A0F1EC(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v7 = v3;
  v9 = sub_22911C00C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_228A06C48(a2, a3);
  if (v4)
  {
    return a1;
  }

  if (result >> 62)
  {
    goto LABEL_17;
  }

  v15 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
LABEL_18:

    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v16 = result;
    v31 = v13;
    v34 = v4;
    v35 = MEMORY[0x277D84F90];
    result = sub_2289FD738(0, v15 & ~(v15 >> 63), 0);
    v30 = v15;
    if (v15 < 0)
    {
      break;
    }

    v17 = 0;
    a1 = v35;
    v32 = v16 & 0xC000000000000001;
    v33 = v16;
    v28 = v10;
    v29 = v9;
    v27[0] = v16 & 0xFFFFFFFFFFFFFF8;
    v27[1] = v10 + 32;
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v32)
      {
        v19 = MEMORY[0x22AAC6410](v17, v33);
      }

      else
      {
        if (v17 >= *(v27[0] + 16))
        {
          goto LABEL_16;
        }

        v19 = *(v33 + 8 * v17 + 32);
      }

      v20 = v19;
      v13 = v31;
      v10 = v7;
      v4 = v34;
      v21 = a2;
      v22 = a2;
      v23 = a3;
      sub_228A0F49C(v19, v22, a3, v31);
      v34 = v4;

      v35 = a1;
      v25 = *(a1 + 16);
      v24 = *(a1 + 24);
      v9 = v25 + 1;
      if (v25 >= v24 >> 1)
      {
        sub_2289FD738(v24 > 1, v25 + 1, 1);
        a1 = v35;
      }

      *(a1 + 16) = v9;
      result = (*(v28 + 32))(a1 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v25, v13, v29);
      ++v17;
      a3 = v23;
      a2 = v21;
      v7 = v10;
      if (v18 == v30)
      {

        return a1;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v26 = result;
    v15 = sub_22911C78C();
    result = v26;
    if (!v15)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_228A0F49C@<X0>(void *a1@<X0>, unint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t a4@<X8>)
{
  v23[1] = a4;
  v7 = sub_22911BF0C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_228A10278(0, &qword_27D862B48, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v23 - v11;
  v13 = sub_22911C07C();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  sub_2289B3D00(0, a2, a3);
  v15 = [swift_getObjCClassFromMetadata() recordType];
  sub_22911C35C();

  v16 = [a1 recordID];
  v17 = [v16 recordName];

  sub_22911C35C();
  sub_22911C06C();
  [a1 schemaVersion];
  v18 = [a1 record];
  v19 = [v18 modificationDate];

  if (v19)
  {
    sub_22911B86C();

    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  v21 = sub_22911B88C();
  (*(*(v21 - 8) + 56))(v12, v20, 1, v21);
  sub_2289B47F0();
  return sub_22911BFFC();
}

void sub_228A0F760(void *a1)
{
  v2 = [a1 userIdentity];
  [v2 hash];

  sub_22911CAAC();
  v3 = HDCKRoleToString([a1 role]);
  sub_22911C35C();

  v4 = HDCKAcceptanceStatusToString([a1 acceptanceStatus]);
  sub_22911C35C();

  v5 = HDCKPermissionToString([a1 permission]);
  sub_22911C35C();

  sub_22911BF4C();
}

void sub_228A0F8B8(id *a1@<X0>, void *a2@<X8>)
{
  v56 = a2;
  v3 = sub_22911BF5C();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x28223BE20](v3);
  v54 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v58 = &v46 - v8;
  v9 = [*a1 allParticipants];
  sub_2289B3D00(0, &qword_27D863AF8, 0x277CBC6A0);
  v10 = sub_22911C45C();

  if (v10 >> 62)
  {
LABEL_50:
    v11 = sub_22911C78C();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = MEMORY[0x277D84F90];
  if (!v11)
  {
    v59 = 0;
LABEL_43:
    v42 = v12[3];
    if (v42 < 2)
    {
LABEL_46:

      *v56 = v12;
      return;
    }

    v43 = v42 >> 1;
    v44 = __OFSUB__(v43, v59);
    v45 = v43 - v59;
    if (!v44)
    {
      v12[2] = v45;
      goto LABEL_46;
    }

    goto LABEL_52;
  }

  v52 = v4;
  v53 = v3;
  v13 = 0;
  v59 = 0;
  v14 = *(v4 + 80);
  v49 = (v14 + 32) & ~v14;
  v50 = v14;
  v15 = MEMORY[0x277D84F90] + v49;
  v55 = (v4 + 4);
  v4 = &selRef_removeFeatureSettingsValueForKey_featureIdentifier_error_;
  v16 = MEMORY[0x277D84F90];
  while (2)
  {
    v57 = v15;
    v3 = v16;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x22AAC6410](v13, v10);
      }

      else
      {
        if ((v13 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        if (v13 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_49;
        }

        v17 = *(v10 + 8 * v13 + 32);
      }

      v18 = v17;
      v19 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_48;
      }

      if ([v17 role] != 1)
      {
        break;
      }

      ++v13;
      if (v19 == v11)
      {
        v12 = v3;
        goto LABEL_43;
      }
    }

    v20 = v54;
    sub_228A0F760(v18);
    v21 = *v55;
    v22 = v20;
    v23 = v53;
    (*v55)(v58, v22, v53);
    v51 = v21;
    if (!v59)
    {
      v25 = *(v3 + 24);
      if (((v25 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_53;
      }

      v26 = v25 & 0xFFFFFFFFFFFFFFFELL;
      if (v26 <= 1)
      {
        v27 = 1;
      }

      else
      {
        v27 = v26;
      }

      sub_228A10278(0, &qword_27D863B00, MEMORY[0x277CCB4F0], MEMORY[0x277D84560]);
      v59 = v52[9];
      v28 = v49;
      v57 = v27;
      v12 = swift_allocObject();
      v29 = _swift_stdlib_malloc_size(v12);
      v30 = v59;
      if (!v59)
      {
        goto LABEL_54;
      }

      v31 = v29 - v28;
      if (v29 - v28 == 0x8000000000000000 && v59 == -1)
      {
        goto LABEL_55;
      }

      v33 = v28;
      v34 = v31 / v59;
      v12[2] = v57;
      v12[3] = 2 * (v31 / v30);
      v35 = v12 + v28;
      v36 = v3;
      v37 = *(v3 + 24) >> 1;
      v38 = v37 * v30;
      v23 = v53;
      if (!*(v3 + 16))
      {
LABEL_39:
        v57 = &v35[v38];
        v40 = (v34 & 0x7FFFFFFFFFFFFFFFLL) - v37;

        v24 = v40 - 1;
        if (!__OFSUB__(v40, 1))
        {
          goto LABEL_40;
        }

        break;
      }

      if (v12 < v3 || v35 >= v3 + v33 + v38)
      {
        v59 = *(v3 + 24) >> 1;
        v57 = v34;
        v47 = v38;
        v48 = v35;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v12 == v3)
        {
LABEL_38:
          *(v36 + 16) = 0;
          goto LABEL_39;
        }

        v59 = *(v3 + 24) >> 1;
        v57 = v34;
        v47 = v38;
        v48 = v35;
        swift_arrayInitWithTakeBackToFront();
      }

      v38 = v47;
      v35 = v48;
      v37 = v59;
      v34 = v57;
      v36 = v3;
      goto LABEL_38;
    }

    v12 = v3;
    v24 = v59 - 1;
    if (!__OFSUB__(v59, 1))
    {
LABEL_40:
      v59 = v24;
      v41 = v57;
      v51(v57, v58, v23);
      v15 = &v52[9][v41];
      v13 = v19;
      v16 = v12;
      if (v19 != v11)
      {
        continue;
      }

      goto LABEL_43;
    }

    break;
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
}

char *sub_228A0FD0C(char *result, int64_t a2, char a3, char *a4)
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
    sub_228A14AE8(0, &qword_27D863C30, MEMORY[0x277D83E40], MEMORY[0x277D84560]);
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

size_t sub_228A0FE98(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_228A10278(0, a5, a6, MEMORY[0x277D84560]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}