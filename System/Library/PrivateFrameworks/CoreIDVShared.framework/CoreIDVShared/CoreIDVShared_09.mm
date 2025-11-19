void *sub_225A79FA0(uint64_t a1, unint64_t a2, double a3)
{
  v160 = a2;
  v159 = a1;
  v173 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v148 = &v144 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v146 = &v144 - v10;
  MEMORY[0x28223BE20](v9, v11);
  v145 = &v144 - v12;
  v156 = sub_225CCD2E4();
  v149 = *(v156 - 8);
  MEMORY[0x28223BE20](v156, v13);
  v155 = &v144 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = type metadata accessor for DIPSignpost.Config(0);
  MEMORY[0x28223BE20](v158, v15);
  v157 = &v144 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DIPSignpost(0);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v162 = &v144 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_225CCD954();
  v21 = *(v20 - 8);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v147 = &v144 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23, v25);
  v161 = &v144 - v27;
  MEMORY[0x28223BE20](v26, v28);
  v30 = &v144 - v29;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v31 = off_28105B918;
  v32 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v33 = ((*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL);
  os_unfair_lock_lock(&v33[off_28105B918]);
  v150 = *(v21 + 16);
  v151 = v32;
  v34 = &v31[v32];
  v35 = v20;
  v150(v30, v34, v20);
  v152 = v33;
  os_unfair_lock_unlock(&v33[v31]);
  v36 = sub_225CCD934();
  v37 = sub_225CCED04();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_2259A7000, v36, v37, "SESKeystore createSEBAASCertificate", v38, 2u);
    MEMORY[0x22AA6F950](v38, -1, -1);
  }

  v39 = v35;
  v153 = *(v21 + 8);
  v154 = v21 + 8;
  (v153)(v30, v35);
  if (qword_27D73A758 != -1)
  {
    swift_once();
  }

  v40 = __swift_project_value_buffer(v158, qword_27D741868);
  v41 = v157;
  sub_2259CB588(v40, v157);
  DIPSignpost.init(_:)(v41, v162);
  v42 = getSEABASSOIDS();
  if (!v42)
  {
    sub_225CCE814();
    v42 = sub_225CCE7F4();
  }

  v43 = sub_225CCCF74();
  v44 = sub_225CCE444();
  v45 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v167 = 0;
  v46 = SESKeyAttestWithSEBAA();

  v47 = v167;
  v48 = v167;
  v49 = v48;
  if (!v46)
  {
    v53 = v161;
    if (v48)
    {
      v50 = 0;
      v158 = 0xF000000000000000;
LABEL_14:
      v54 = v152;
      os_unfair_lock_lock(&v152[v31]);
      v150(v53, &v31[v151], v39);
      os_unfair_lock_unlock(&v54[v31]);
      v55 = v49;
      v56 = sub_225CCD934();
      v57 = sub_225CCED14();

      v58 = os_log_type_enabled(v56, v57);
      v159 = v50;
      v160 = v47;
      if (v58)
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v167 = v60;
        *v59 = 136315138;
        v61 = [v55 localizedDescription];
        v62 = sub_225CCE474();
        v157 = v39;
        v63 = v62;
        v65 = v64;

        v66 = sub_2259BE198(v63, v65, &v167);

        *(v59 + 4) = v66;
        _os_log_impl(&dword_2259A7000, v56, v57, "Error from SESKeyCreateSEBAASCertificate: %s", v59, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v60);
        MEMORY[0x22AA6F950](v60, -1, -1);
        MEMORY[0x22AA6F950](v59, -1, -1);

        v67 = v161;
        v68 = v157;
      }

      else
      {

        v67 = v53;
        v68 = v39;
      }

      (v153)(v67, v68);
      v166 = v55;
      v69 = v55;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
      if (swift_dynamicCast())
      {
        v157 = 0x8000000225D1ABA0;
        v154 = "ASCertificate returned nil";
        v70 = v69;
        v71 = sub_225B2C248(MEMORY[0x277D84F90]);
        sub_2259CB5EC();
        v161 = swift_allocError();
        v73 = v72;
        swift_getErrorValue();
        v74 = v164;
        v50 = v70;
        sub_225B21FAC(v74, &v167);

        v75 = v168;
        if (v168)
        {
          v151 = v169;
          v152 = v170;
          v153 = v167;
          v76 = v171;
          v160 = v172;
        }

        else
        {
          v167 = v50;
          sub_2259D8718(0, &qword_281059A90);
          v98 = v50;
          if (swift_dynamicCast())
          {
            v99 = v163;
            v153 = v163;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_225CD30F0;
            *(inited + 32) = 20;
            v101 = [v99 code];
            v102 = MEMORY[0x277D83BF8];
            *(inited + 64) = MEMORY[0x277D83B88];
            *(inited + 72) = v102;
            *(inited + 40) = v101;
            v76 = sub_225B2C374(inited);
            swift_setDeallocating();
            sub_2259CB640(inited + 32, &qword_27D73B060);

            v103 = v98;
            v151 = 0;
            v152 = 0;
            v75 = MEMORY[0x277D84F90];
            v153 = 208;
          }

          else
          {
            v167 = v98;
            v113 = sub_225CCE954();
            v152 = v98;
            v114 = v145;
            v115 = swift_dynamicCast();
            v116 = *(v113 - 8);
            (*(v116 + 56))(v114, v115 ^ 1u, 1, v113);
            LODWORD(v116) = (*(v116 + 48))(v114, 1, v113);
            sub_2259CB640(v114, &unk_27D73B050);
            if (v116)
            {
              v117 = 208;
            }

            else
            {
              v117 = 23;
            }

            v153 = v117;
            v75 = MEMORY[0x277D84F90];
            v76 = sub_225B2C374(MEMORY[0x277D84F90]);
            v118 = v152;
            v151 = 0xD00000000000002FLL;
            v152 = v157;
          }
        }

        v119 = v154 | 0x8000000000000000;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v167 = v76;
        sub_225B2C4A0(v71, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v167);

        v121 = v167;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v75 = sub_225B29AA0(0, *(v75 + 2) + 1, 1, v75);
        }

        v123 = *(v75 + 2);
        v122 = *(v75 + 3);
        if (v123 >= v122 >> 1)
        {
          v75 = sub_225B29AA0((v122 > 1), v123 + 1, 1, v75);
        }

        *(v75 + 2) = v123 + 1;
        v124 = &v75[56 * v123];
        v125 = v157;
        *(v124 + 4) = 0xD00000000000002FLL;
        *(v124 + 5) = v125;
        *(v124 + 6) = 0xD00000000000001FLL;
        *(v124 + 7) = 0x8000000225D1A7B0;
        *(v124 + 8) = 0xD00000000000002FLL;
        *(v124 + 9) = v119;
        *(v124 + 10) = 301;
        *v73 = v153;
        v127 = v151;
        v126 = v152;
        *(v73 + 8) = v75;
        *(v73 + 16) = v127;
        *(v73 + 24) = v126;
        *(v73 + 32) = v121;
        *(v73 + 40) = v160;
        swift_willThrow();

        sub_2259B97A8(v159, v158);
        (*(v149 + 8))(v155, v156);
      }

      else
      {

        v156 = "ASCertificate returned nil";
        v157 = 0x8000000225D1AB80;
        v77 = v69;
        v78 = sub_225B2C248(MEMORY[0x277D84F90]);
        sub_2259CB5EC();
        v161 = swift_allocError();
        v50 = v79;
        swift_getErrorValue();
        v80 = v165;
        v81 = v77;
        sub_225B21FAC(v80, &v167);

        v82 = v168;
        if (v168)
        {
          v154 = v169;
          v155 = v167;
          v153 = v170;
          v83 = v171;
          v160 = v172;
        }

        else
        {
          v167 = v81;
          sub_2259D8718(0, &qword_281059A90);
          v104 = v81;
          if (swift_dynamicCast())
          {
            v105 = v166;
            v155 = v166;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
            v106 = swift_initStackObject();
            *(v106 + 16) = xmmword_225CD30F0;
            *(v106 + 32) = 20;
            v107 = [v105 code];
            v108 = MEMORY[0x277D83BF8];
            *(v106 + 64) = MEMORY[0x277D83B88];
            *(v106 + 72) = v108;
            *(v106 + 40) = v107;
            v83 = sub_225B2C374(v106);
            swift_setDeallocating();
            sub_2259CB640(v106 + 32, &qword_27D73B060);

            v109 = v104;
            v153 = 0;
            v154 = 0;
            v82 = MEMORY[0x277D84F90];
            v155 = 207;
          }

          else
          {
            v167 = v104;
            v128 = sub_225CCE954();
            v154 = v104;
            v129 = v146;
            v130 = swift_dynamicCast();
            v131 = *(v128 - 8);
            (*(v131 + 56))(v129, v130 ^ 1u, 1, v128);
            LODWORD(v131) = (*(v131 + 48))(v129, 1, v128);
            sub_2259CB640(v129, &unk_27D73B050);
            if (v131)
            {
              v132 = 207;
            }

            else
            {
              v132 = 23;
            }

            v155 = v132;
            v82 = MEMORY[0x277D84F90];
            v83 = sub_225B2C374(MEMORY[0x277D84F90]);
            v133 = v154;
            v153 = v157;
            v154 = 0xD000000000000019;
          }
        }

        v134 = v156 | 0x8000000000000000;
        v135 = swift_isUniquelyReferenced_nonNull_native();
        v167 = v83;
        sub_225B2C4A0(v78, sub_225B2AC40, 0, v135, &v167);

        v136 = v167;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v82 = sub_225B29AA0(0, *(v82 + 2) + 1, 1, v82);
        }

        v138 = *(v82 + 2);
        v137 = *(v82 + 3);
        if (v138 >= v137 >> 1)
        {
          v82 = sub_225B29AA0((v137 > 1), v138 + 1, 1, v82);
        }

        *(v82 + 2) = v138 + 1;
        v139 = &v82[56 * v138];
        v140 = v157;
        *(v139 + 4) = 0xD000000000000019;
        *(v139 + 5) = v140;
        *(v139 + 6) = 0xD00000000000001FLL;
        *(v139 + 7) = 0x8000000225D1A7B0;
        *(v139 + 8) = 0xD00000000000002FLL;
        *(v139 + 9) = v134;
        *(v139 + 10) = 303;
        v141 = v154;
        *v50 = v155;
        v50[1] = v82;
        v50[2] = v141;
        v50[3] = v153;
        v50[4] = v136;
        v50[5] = v160;
        swift_willThrow();

        sub_2259B97A8(v159, v158);
      }

LABEL_52:
      v142 = v162;
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
      sub_2259CB6A0(v142);
      return v50;
    }

LABEL_23:
    v161 = 0x8000000225D1A7B0;
    v160 = 0x8000000225D1AB50;
    v84 = MEMORY[0x277D84F90];
    v85 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v87 = v86;
    v88 = sub_225CCE954();
    v89 = *(v88 - 8);
    v90 = v148;
    (*(v89 + 56))(v148, 1, 1, v88);
    LODWORD(v88) = (*(v89 + 48))(v90, 1, v88);
    sub_2259CB640(v90, &unk_27D73B050);
    if (v88)
    {
      v91 = 207;
    }

    else
    {
      v91 = 23;
    }

    v92 = sub_225B2C374(v84);
    v93 = swift_isUniquelyReferenced_nonNull_native();
    v167 = v92;
    sub_225B2C4A0(v85, sub_225B2AC40, 0, v93, &v167);

    v50 = v167;
    v94 = sub_225B29AA0(0, 1, 1, v84);
    v96 = *(v94 + 2);
    v95 = *(v94 + 3);
    if (v96 >= v95 >> 1)
    {
      v94 = sub_225B29AA0((v95 > 1), v96 + 1, 1, v94);
    }

    *(v94 + 2) = v96 + 1;
    v97 = &v94[56 * v96];
    *(v97 + 4) = 0xD00000000000002ALL;
    *(v97 + 5) = 0x8000000225D1AB20;
    *(v97 + 6) = 0xD00000000000001FLL;
    *(v97 + 7) = v161;
    *(v97 + 8) = 0xD00000000000002FLL;
    *(v97 + 9) = v160;
    *(v97 + 10) = 308;
    *v87 = v91;
    *(v87 + 8) = v94;
    *(v87 + 16) = 0xD00000000000002ALL;
    *(v87 + 24) = 0x8000000225D1AB20;
    *(v87 + 32) = v50;
    *(v87 + 40) = 0;
    swift_willThrow();
    goto LABEL_52;
  }

  v50 = sub_225CCCFA4();
  v52 = v51;

  if (v49)
  {
    v158 = v52;
    v53 = v161;
    goto LABEL_14;
  }

  if (v52 >> 60 == 15)
  {
    goto LABEL_23;
  }

  v110 = v152;
  os_unfair_lock_lock(&v152[v31]);
  v111 = v147;
  v150(v147, &v31[v151], v39);
  os_unfair_lock_unlock(&v110[v31]);
  sub_2259CB6FC(v50, v52);
  sub_225B431EC();
  sub_2259B97A8(v50, v52);
  (v153)(v111, v39);
  v112 = v162;
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  sub_2259CB6A0(v112);
  return v50;
}

uint64_t SESKeystore.KeyDesignation.description.getter()
{
  v1 = 0x74696E65676F7250;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736270;
  }
}

uint64_t sub_225A7B224()
{
  v1 = 0x74696E65676F7250;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736270;
  }
}

uint64_t sub_225A7B280(unint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, unint64_t a5)
{
  v122 = a5;
  v113 = a4;
  v124 = a2;
  v123 = a1;
  v135 = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v8 = MEMORY[0x28223BE20](v6 - 8, v7);
  v112 = &v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v111 = &v111 - v11;
  v121 = type metadata accessor for DIPSignpost.Config(0);
  MEMORY[0x28223BE20](v121, v12);
  v14 = &v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DIPSignpost(0);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v111 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_225CCD954();
  v20 = *(v19 - 8);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v120 = &v111 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v24);
  v26 = &v111 - v25;
  v126 = *a3;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v27 = off_28105B918;
  v28 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v29 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v29));
  v30 = *(v20 + 16);
  v116 = v28;
  v115 = v20 + 16;
  v114 = v30;
  v30(v26, &v27[v28], v19);
  v117 = v29;
  os_unfair_lock_unlock(&v27[v29]);
  v31 = sub_225CCD934();
  v32 = sub_225CCED04();
  v33 = os_log_type_enabled(v31, v32);
  v125 = v18;
  if (v33)
  {
    v118 = v20;
    v119 = v19;
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v129 = v35;
    *v34 = 136315138;
    v36 = 0xEA0000000000726FLL;
    v37 = 0x74696E65676F7250;
    if (v126 != 1)
    {
      v37 = 0xD000000000000016;
      v36 = 0x8000000225D1ABD0;
    }

    if (v126)
    {
      v38 = v37;
    }

    else
    {
      v38 = 1701736270;
    }

    if (v126)
    {
      v39 = v36;
    }

    else
    {
      v39 = 0xE400000000000000;
    }

    v40 = sub_2259BE198(v38, v39, &v129);

    *(v34 + 4) = v40;
    _os_log_impl(&dword_2259A7000, v31, v32, "SESKeystore designateKey with designation %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x22AA6F950](v35, -1, -1);
    MEMORY[0x22AA6F950](v34, -1, -1);

    v20 = v118;
    v41 = *(v118 + 8);
    v19 = v119;
    v41(v26, v119);
    v18 = v125;
  }

  else
  {

    v41 = *(v20 + 8);
    v41(v26, v19);
  }

  if (qword_27D73A760 != -1)
  {
    swift_once();
  }

  v42 = __swift_project_value_buffer(v121, qword_27D741880);
  sub_2259CB588(v42, v14);
  DIPSignpost.init(_:)(v14, v18);
  if (v122 >> 60 == 15)
  {
    v43 = 0;
  }

  else
  {
    v43 = sub_225CCCF74();
  }

  v44 = sub_225CCCF74();
  v129 = 0;
  v45 = SESKeyDesignate();

  if (v129)
  {
    v126 = v129;
    v46 = v129;
    v47 = v117;
    os_unfair_lock_lock(&v27[v117]);
    v48 = v120;
    v114(v120, &v27[v116], v19);
    os_unfair_lock_unlock(&v27[v47]);
    v49 = v46;
    v50 = sub_225CCD934();
    v51 = sub_225CCED14();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v119 = v19;
      v54 = v53;
      v129 = v53;
      *v52 = 136315138;
      v55 = [v49 localizedDescription];
      v56 = sub_225CCE474();
      v118 = v20;
      v58 = v57;

      v59 = sub_2259BE198(v56, v58, &v129);

      *(v52 + 4) = v59;
      _os_log_impl(&dword_2259A7000, v50, v51, "Error from SESKeyDesignate: %s", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v54);
      MEMORY[0x22AA6F950](v54, -1, -1);
      MEMORY[0x22AA6F950](v52, -1, -1);

      v60 = v120;
      v61 = v119;
    }

    else
    {

      v60 = v48;
      v61 = v19;
    }

    v41(v60, v61);
    v63 = 0x8000000225D1AC70;
    v121 = "r but false result";
    v64 = v49;
    v122 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v65 = swift_allocError();
    v67 = v66;
    swift_getErrorValue();
    v68 = v128;
    v69 = v64;
    sub_225B21FAC(v68, &v129);

    v70 = v130;
    v124 = v65;
    v123 = 0x8000000225D1AC70;
    if (v130)
    {
      v120 = v129;
      v63 = v132;
      v119 = v131;
      v72 = v133;
      v71 = v134;
      v73 = &v138;
    }

    else
    {
      v129 = v69;
      v74 = v69;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
      sub_2259D8718(0, &qword_281059A90);
      if (swift_dynamicCast())
      {
        v75 = v127;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_225CD30F0;
        *(inited + 32) = 20;
        v77 = [v75 code];
        v78 = MEMORY[0x277D83BF8];
        *(inited + 64) = MEMORY[0x277D83B88];
        *(inited + 72) = v78;
        *(inited + 40) = v77;
        v72 = sub_225B2C374(inited);
        swift_setDeallocating();
        sub_2259CB640(inited + 32, &qword_27D73B060);

        v79 = v74;
        v119 = 0;
        v63 = 0;
        v70 = MEMORY[0x277D84F90];
        v71 = 209;
        v73 = &v137;
      }

      else
      {
        v129 = v74;
        v95 = sub_225CCE954();
        v96 = v74;
        v97 = v111;
        v98 = swift_dynamicCast();
        v99 = *(v95 - 8);
        (*(v99 + 56))(v97, v98 ^ 1u, 1, v95);
        LODWORD(v99) = (*(v99 + 48))(v97, 1, v95);
        sub_2259CB640(v97, &unk_27D73B050);
        if (v99)
        {
          v100 = 209;
        }

        else
        {
          v100 = 23;
        }

        v120 = v100;
        v70 = MEMORY[0x277D84F90];
        v72 = sub_225B2C374(MEMORY[0x277D84F90]);
        v101 = v96;
        v71 = 0xD00000000000001ALL;
        v73 = &v136;
      }
    }

    *(v73 - 32) = v71;
    v102 = v121 | 0x8000000000000000;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v129 = v72;
    sub_225B2C4A0(v122, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v129);

    v104 = v129;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v70 = sub_225B29AA0(0, *(v70 + 2) + 1, 1, v70);
    }

    v106 = *(v70 + 2);
    v105 = *(v70 + 3);
    if (v106 >= v105 >> 1)
    {
      v70 = sub_225B29AA0((v105 > 1), v106 + 1, 1, v70);
    }

    *(v70 + 2) = v106 + 1;
    v107 = &v70[56 * v106];
    v108 = v123;
    *(v107 + 4) = 0xD00000000000001ALL;
    *(v107 + 5) = v108;
    *(v107 + 6) = 0xD00000000000001FLL;
    *(v107 + 7) = 0x8000000225D1A7B0;
    *(v107 + 8) = 0xD000000000000030;
    *(v107 + 9) = v102;
    *(v107 + 10) = 384;
    *v67 = v120;
    v109 = v119;
    *(v67 + 8) = v70;
    *(v67 + 16) = v109;
    *(v67 + 24) = v63;
    *(v67 + 32) = v104;
    *(v67 + 40) = v126;
    swift_willThrow();
  }

  else
  {
    if (v45)
    {
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
      return sub_2259CB6A0(v18);
    }

    v126 = 0x8000000225D1A7B0;
    v80 = MEMORY[0x277D84F90];
    v81 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v83 = v82;
    v84 = sub_225CCE954();
    v85 = *(v84 - 8);
    v86 = v112;
    (*(v85 + 56))(v112, 1, 1, v84);
    LODWORD(v84) = (*(v85 + 48))(v86, 1, v84);
    sub_2259CB640(v86, &unk_27D73B050);
    if (v84)
    {
      v87 = 209;
    }

    else
    {
      v87 = 23;
    }

    v88 = sub_225B2C374(v80);
    v89 = swift_isUniquelyReferenced_nonNull_native();
    v129 = v88;
    sub_225B2C4A0(v81, sub_225B2AC40, 0, v89, &v129);

    v90 = v129;
    v91 = sub_225B29AA0(0, 1, 1, v80);
    v93 = *(v91 + 2);
    v92 = *(v91 + 3);
    if (v93 >= v92 >> 1)
    {
      v91 = sub_225B29AA0((v92 > 1), v93 + 1, 1, v91);
    }

    *(v91 + 2) = v93 + 1;
    v94 = &v91[56 * v93];
    *(v94 + 4) = 0xD000000000000032;
    *(v94 + 5) = 0x8000000225D1ABF0;
    *(v94 + 6) = 0xD00000000000001FLL;
    *(v94 + 7) = v126;
    *(v94 + 8) = 0xD000000000000030;
    *(v94 + 9) = 0x8000000225D1AC30;
    *(v94 + 10) = 387;
    *v83 = v87;
    *(v83 + 8) = v91;
    *(v83 + 16) = 0xD000000000000032;
    *(v83 + 24) = 0x8000000225D1ABF0;
    *(v83 + 32) = v90;
    *(v83 + 40) = 0;
    swift_willThrow();
  }

  v110 = v125;
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  return sub_2259CB6A0(v110);
}

uint64_t sub_225A7C02C(unsigned __int8 *a1)
{
  v129 = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v4 = MEMORY[0x28223BE20](v2 - 8, v3);
  v110 = &v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v6);
  v109 = &v109 - v7;
  v118 = type metadata accessor for DIPSignpost.Config(0);
  MEMORY[0x28223BE20](v118, v8);
  v117 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DIPSignpost(0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_225CCD954();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v116 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v109 - v20;
  v120 = *a1;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v22 = off_28105B918;
  v23 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v24 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v24));
  v25 = *(v15 + 16);
  v112 = v23;
  v111 = v25;
  v25(v21, &v22[v23], v14);
  v113 = v24;
  os_unfair_lock_unlock(&v22[v24]);
  v26 = sub_225CCD934();
  v27 = v15;
  v28 = sub_225CCED04();
  v29 = os_log_type_enabled(v26, v28);
  v119 = v13;
  if (v29)
  {
    v114 = v27;
    v115 = v14;
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v123 = v31;
    *v30 = 136315138;
    v32 = 0xEA0000000000726FLL;
    v33 = 0x74696E65676F7250;
    if (v120 != 1)
    {
      v33 = 0xD000000000000016;
      v32 = 0x8000000225D1ABD0;
    }

    if (v120)
    {
      v34 = v33;
    }

    else
    {
      v34 = 1701736270;
    }

    if (v120)
    {
      v35 = v32;
    }

    else
    {
      v35 = 0xE400000000000000;
    }

    v36 = sub_2259BE198(v34, v35, &v123);

    *(v30 + 4) = v36;
    _os_log_impl(&dword_2259A7000, v26, v28, "SESKeystore clearKeyDesignation with designation %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x22AA6F950](v31, -1, -1);
    MEMORY[0x22AA6F950](v30, -1, -1);

    v37 = v114;
    v38 = *(v114 + 8);
    v14 = v115;
    v38(v21, v115);
    v13 = v119;
  }

  else
  {

    v38 = *(v27 + 8);
    v38(v21, v14);
    v37 = v27;
  }

  if (qword_27D73A768 != -1)
  {
    swift_once();
  }

  v39 = __swift_project_value_buffer(v118, qword_27D741898);
  v40 = v117;
  sub_2259CB588(v39, v117);
  DIPSignpost.init(_:)(v40, v13);
  v123 = 0;
  v41 = SESKeyRemoveDesignation();
  if (v123)
  {
    v120 = v123;
    v42 = v123;
    v43 = v113;
    os_unfair_lock_lock(&v113[v22]);
    v44 = v116;
    v111(v116, &v22[v112], v14);
    os_unfair_lock_unlock(&v43[v22]);
    v45 = v42;
    v46 = sub_225CCD934();
    v47 = sub_225CCED14();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v115 = v14;
      v50 = v49;
      v123 = v49;
      *v48 = 136315138;
      v51 = [v45 localizedDescription];
      v52 = sub_225CCE474();
      v114 = v37;
      v53 = v52;
      v55 = v54;

      v56 = sub_2259BE198(v53, v55, &v123);

      *(v48 + 4) = v56;
      _os_log_impl(&dword_2259A7000, v46, v47, "Error from SESKeyRemoveDesignation: %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x22AA6F950](v50, -1, -1);
      MEMORY[0x22AA6F950](v48, -1, -1);

      v57 = v116;
      v58 = v115;
    }

    else
    {

      v57 = v44;
      v58 = v14;
    }

    v38(v57, v58);
    v60 = 0x8000000225D1ACF0;
    v115 = "sponse or an error";
    v114 = " no error but false result";
    v61 = v45;
    v116 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v62 = swift_allocError();
    v64 = v63;
    swift_getErrorValue();
    v65 = v122;
    v66 = v61;
    sub_225B21FAC(v65, &v123);

    v67 = v124;
    v118 = v62;
    v117 = 0x8000000225D1ACF0;
    if (v124)
    {
      v113 = v123;
      v60 = v126;
      v112 = v125;
      v69 = v127;
      v68 = v128;
      v70 = &v132;
    }

    else
    {
      v123 = v66;
      v71 = v66;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
      sub_2259D8718(0, &qword_281059A90);
      if (swift_dynamicCast())
      {
        v72 = v121;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_225CD30F0;
        *(inited + 32) = 20;
        v74 = [v72 code];
        v75 = MEMORY[0x277D83BF8];
        *(inited + 64) = MEMORY[0x277D83B88];
        *(inited + 72) = v75;
        *(inited + 40) = v74;
        v69 = sub_225B2C374(inited);
        swift_setDeallocating();
        sub_2259CB640(inited + 32, &qword_27D73B060);

        v76 = v71;
        v112 = 0;
        v60 = 0;
        v67 = MEMORY[0x277D84F90];
        v68 = 210;
        v70 = &v131;
      }

      else
      {
        v123 = v71;
        v92 = sub_225CCE954();
        v93 = v71;
        v94 = v109;
        v95 = swift_dynamicCast();
        v96 = *(v92 - 8);
        (*(v96 + 56))(v94, v95 ^ 1u, 1, v92);
        LODWORD(v96) = (*(v96 + 48))(v94, 1, v92);
        sub_2259CB640(v94, &unk_27D73B050);
        if (v96)
        {
          v97 = 210;
        }

        else
        {
          v97 = 23;
        }

        v113 = v97;
        v67 = MEMORY[0x277D84F90];
        v69 = sub_225B2C374(MEMORY[0x277D84F90]);
        v98 = v93;
        v68 = 0xD000000000000022;
        v70 = &v130;
      }
    }

    *(v70 - 32) = v68;
    v99 = v115 | 0x8000000000000000;
    v100 = v114 | 0x8000000000000000;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v123 = v69;
    sub_225B2C4A0(v116, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v123);

    v102 = v123;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v67 = sub_225B29AA0(0, *(v67 + 2) + 1, 1, v67);
    }

    v104 = *(v67 + 2);
    v103 = *(v67 + 3);
    if (v104 >= v103 >> 1)
    {
      v67 = sub_225B29AA0((v103 > 1), v104 + 1, 1, v67);
    }

    *(v67 + 2) = v104 + 1;
    v105 = &v67[56 * v104];
    v106 = v117;
    *(v105 + 4) = 0xD000000000000022;
    *(v105 + 5) = v106;
    *(v105 + 6) = 0xD00000000000001FLL;
    *(v105 + 7) = v99;
    *(v105 + 8) = 0xD000000000000017;
    *(v105 + 9) = v100;
    *(v105 + 10) = 405;
    *v64 = v113;
    v107 = v112;
    *(v64 + 8) = v67;
    *(v64 + 16) = v107;
    *(v64 + 24) = v60;
    *(v64 + 32) = v102;
    *(v64 + 40) = v120;
    swift_willThrow();
  }

  else
  {
    if (v41)
    {
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
      return sub_2259CB6A0(v13);
    }

    v120 = 0x8000000225D1A7B0;
    v77 = MEMORY[0x277D84F90];
    v78 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v80 = v79;
    v81 = sub_225CCE954();
    v82 = *(v81 - 8);
    v83 = v110;
    (*(v82 + 56))(v110, 1, 1, v81);
    LODWORD(v81) = (*(v82 + 48))(v83, 1, v81);
    sub_2259CB640(v83, &unk_27D73B050);
    if (v81)
    {
      v84 = 210;
    }

    else
    {
      v84 = 23;
    }

    v85 = sub_225B2C374(v77);
    v86 = swift_isUniquelyReferenced_nonNull_native();
    v123 = v85;
    sub_225B2C4A0(v78, sub_225B2AC40, 0, v86, &v123);

    v87 = v123;
    v88 = sub_225B29AA0(0, 1, 1, v77);
    v90 = *(v88 + 2);
    v89 = *(v88 + 3);
    if (v90 >= v89 >> 1)
    {
      v88 = sub_225B29AA0((v89 > 1), v90 + 1, 1, v88);
    }

    *(v88 + 2) = v90 + 1;
    v91 = &v88[56 * v90];
    *(v91 + 4) = 0xD00000000000003ALL;
    *(v91 + 5) = 0x8000000225D1AC90;
    *(v91 + 6) = 0xD00000000000001FLL;
    *(v91 + 7) = v120;
    *(v91 + 8) = 0xD000000000000017;
    *(v91 + 9) = 0x8000000225D1ACD0;
    *(v91 + 10) = 408;
    *v80 = v84;
    *(v80 + 8) = v88;
    *(v80 + 16) = 0xD00000000000003ALL;
    *(v80 + 24) = 0x8000000225D1AC90;
    *(v80 + 32) = v87;
    *(v80 + 40) = 0;
    swift_willThrow();
  }

  v108 = v119;
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  return sub_2259CB6A0(v108);
}

uint64_t SESKeystore.DesignatedKey.publicKeyIdentifier.getter()
{
  v1 = *(v0 + 8);
  sub_2259CB710(v1, *(v0 + 16));
  return v1;
}

_BYTE *SESKeystore.DesignatedKey.init(designation:publicKeyIdentifier:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

char *sub_225A7CDC4()
{
  v133 = *MEMORY[0x277D85DE8];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v113 = &v112 - v2;
  v3 = type metadata accessor for DIPSignpost.Config(0);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v112 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DIPSignpost(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v114 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_225CCD954();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v123 = &v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v116 = &v112 - v17;
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v112 - v19;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v21 = off_28105B918;
  v22 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v23 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v23));
  v24 = v11;
  v25 = *(v11 + 16);
  v119 = v22;
  v118 = v11 + 16;
  v117 = v25;
  v25(v20, &v21[v22], v10);
  v120 = v23;
  os_unfair_lock_unlock(&v21[v23]);
  v26 = sub_225CCD934();
  v27 = sub_225CCED04();
  v28 = os_log_type_enabled(v26, v27);
  v124 = v10;
  if (v28)
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_2259A7000, v26, v27, "SESKeystore getDesignatedKeys", v29, 2u);
    v30 = v29;
    v10 = v124;
    MEMORY[0x22AA6F950](v30, -1, -1);
  }

  v31 = *(v24 + 8);
  v122 = v24 + 8;
  v121 = v31;
  (v31)(v20, v10);
  v32 = v114;
  if (qword_27D73A770 != -1)
  {
    swift_once();
  }

  v33 = __swift_project_value_buffer(v3, qword_27D7418B0);
  sub_2259CB588(v33, v6);
  DIPSignpost.init(_:)(v6, v32);
  v127 = 0;
  v34 = SESKeyGetDesignatedKeys();
  v35 = v127;
  v36 = v116;
  if (v34)
  {
    v37 = v34;
    sub_2259D8718(0, &qword_27D73BC58);
    v38 = sub_225CCE814();
    v39 = v35;

    if (!v39)
    {
      v40 = MEMORY[0x277D84F90];
      if (v38)
      {
        if (v38 >> 62)
        {
          v41 = sub_225CCF144();
          if (v41)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v41 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v41)
          {
LABEL_12:
            v113 = v21;
            v127 = v40;
            sub_2259D52E4(0, v41 & ~(v41 >> 63), 0);
            if (v41 < 0)
            {
              __break(1u);
            }

            v43 = 0;
            v40 = v127;
            v115 = v38 & 0xC000000000000001;
            *&v42 = 134217984;
            v112 = v42;
            v116 = v38;
            do
            {
              v44 = v41;
              if (v115)
              {
                v45 = MEMORY[0x22AA6DA80](v43, v38);
              }

              else
              {
                v45 = *(v38 + 8 * v43 + 32);
              }

              v46 = v45;
              v47 = [v45 designation];
              if (v47 >= 3)
              {
                v48 = v120;
                v49 = v113;
                os_unfair_lock_lock(&v120[v113]);
                v117(v123, &v49[v119], v10);
                os_unfair_lock_unlock(&v48[v49]);
                v50 = sub_225CCD934();
                v51 = sub_225CCED14();
                if (os_log_type_enabled(v50, v51))
                {
                  v52 = swift_slowAlloc();
                  *v52 = v112;
                  *(v52 + 4) = v47;
                  _os_log_impl(&dword_2259A7000, v50, v51, "Unknown SESKeyDesignation: %ld", v52, 0xCu);
                  MEMORY[0x22AA6F950](v52, -1, -1);
                }

                (v121)(v123, v124);
                LOBYTE(v47) = 0;
              }

              v53 = [v46 keyIdentifier];
              v54 = sub_225CCCFA4();
              v56 = v55;

              v127 = v40;
              v58 = *(v40 + 2);
              v57 = *(v40 + 3);
              if (v58 >= v57 >> 1)
              {
                sub_2259D52E4((v57 > 1), v58 + 1, 1);
                v40 = v127;
              }

              *(v40 + 2) = v58 + 1;
              v59 = &v40[24 * v58];
              v59[32] = v47;
              ++v43;
              *(v59 + 5) = v54;
              *(v59 + 6) = v56;
              v41 = v44;
              v10 = v124;
              v38 = v116;
            }

            while (v44 != v43);
          }
        }
      }

LABEL_45:
      v110 = v114;
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
      sub_2259CB6A0(v110);
      return v40;
    }
  }

  else
  {
    v60 = v127;
    if (!v35)
    {
      v40 = MEMORY[0x277D84F90];
      goto LABEL_45;
    }
  }

  v61 = v120;
  os_unfair_lock_lock(&v120[v21]);
  v117(v36, &v21[v119], v10);
  os_unfair_lock_unlock(&v61[v21]);

  v62 = v35;
  v63 = sub_225CCD934();
  v64 = sub_225CCED14();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v127 = v66;
    *v65 = 136315138;
    v67 = [v62 localizedDescription];
    v68 = sub_225CCE474();
    v70 = v69;

    v71 = sub_2259BE198(v68, v70, &v127);

    *(v65 + 4) = v71;
    _os_log_impl(&dword_2259A7000, v63, v64, "Error from SESKeyGetDesignatedKeys: %s", v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v66);
    MEMORY[0x22AA6F950](v66, -1, -1);
    MEMORY[0x22AA6F950](v65, -1, -1);

    v72 = v116;
    v73 = v124;
  }

  else
  {

    v72 = v36;
    v73 = v10;
  }

  (v121)(v72, v73);
  v74 = 0x8000000225D1AD20;
  v122 = "sponse or an error";
  v121 = "yGetDesignatedKeys";
  v75 = v62;
  v76 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v124 = swift_allocError();
  v78 = v77;
  swift_getErrorValue();
  v79 = v126;
  v80 = v75;
  sub_225B21FAC(v79, &v127);

  v81 = v128;
  v123 = 0x8000000225D1AD20;
  if (v128)
  {
    v120 = v127;
    v74 = v130;
    v119 = v129;
    v83 = v131;
    v82 = v132;
    v84 = &v134;
  }

  else
  {
    v127 = v80;
    v85 = v80;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    sub_2259D8718(0, &qword_281059A90);
    v86 = swift_dynamicCast();
    v115 = v35;
    if (v86)
    {
      v87 = v125;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = 20;
      v89 = [v87 code];
      v90 = MEMORY[0x277D83BF8];
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 72) = v90;
      *(inited + 40) = v89;
      v83 = sub_225B2C374(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &qword_27D73B060);

      v91 = v85;
      v74 = 0;
      v119 = 0;
      v81 = MEMORY[0x277D84F90];
      v82 = 211;
      v84 = &v136;
    }

    else
    {
      v127 = v85;
      v92 = sub_225CCE954();
      v93 = v85;
      v94 = v76;
      v95 = v113;
      v96 = swift_dynamicCast();
      v97 = *(v92 - 8);
      (*(v97 + 56))(v95, v96 ^ 1u, 1, v92);
      LODWORD(v97) = (*(v97 + 48))(v95, 1, v92);
      v98 = v95;
      v76 = v94;
      sub_2259CB640(v98, &unk_27D73B050);
      if (v97)
      {
        v99 = 211;
      }

      else
      {
        v99 = 23;
      }

      v120 = v99;
      v81 = MEMORY[0x277D84F90];
      v83 = sub_225B2C374(MEMORY[0x277D84F90]);
      v100 = v93;
      v82 = 0xD000000000000022;
      v84 = &v135;
    }
  }

  *(v84 - 32) = v82;
  v40 = (v122 | 0x8000000000000000);
  v101 = v121 | 0x8000000000000000;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v127 = v83;
  sub_225B2C4A0(v76, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v127);

  v103 = v127;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v81 = sub_225B29AA0(0, *(v81 + 2) + 1, 1, v81);
  }

  v105 = *(v81 + 2);
  v104 = *(v81 + 3);
  if (v105 >= v104 >> 1)
  {
    v81 = sub_225B29AA0((v104 > 1), v105 + 1, 1, v81);
  }

  *(v81 + 2) = v105 + 1;
  v106 = &v81[56 * v105];
  v107 = v123;
  *(v106 + 4) = 0xD000000000000022;
  *(v106 + 5) = v107;
  *(v106 + 6) = 0xD00000000000001FLL;
  *(v106 + 7) = v40;
  *(v106 + 8) = 0xD000000000000013;
  *(v106 + 9) = v101;
  *(v106 + 10) = 442;
  *v78 = v120;
  v108 = v119;
  *(v78 + 8) = v81;
  *(v78 + 16) = v108;
  *(v78 + 24) = v74;
  *(v78 + 32) = v103;
  *(v78 + 40) = v115;
  swift_willThrow();

  v109 = v114;
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  sub_2259CB6A0(v109);
  return v40;
}

unint64_t sub_225A7DAC4(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  v128 = a4;
  v127 = a3;
  v126 = a2;
  v125 = a1;
  v138 = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v8 = MEMORY[0x28223BE20](v6 - 8, v7);
  v116 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v114 = &v114 - v11;
  v124 = type metadata accessor for DIPSignpost.Config(0);
  MEMORY[0x28223BE20](v124, v12);
  v123 = &v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DIPSignpost(0);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = &v114 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_225CCD954();
  v19 = *(v18 - 8);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v23 = &v114 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v114 - v25;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v129 = v23;
  v27 = off_28105B918;
  v28 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v29 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v29));
  v30 = *(v19 + 16);
  v119 = v28;
  v118 = v19 + 16;
  v117 = v30;
  v30(v26, &v27[v28], v18);
  v120 = v29;
  os_unfair_lock_unlock(&v27[v29]);
  v31 = sub_225CCD934();
  v32 = sub_225CCED04();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v121 = a5;
    v34 = v19;
    v35 = v18;
    v36 = v17;
    v37 = v33;
    *v33 = 0;
    _os_log_impl(&dword_2259A7000, v31, v32, "SESKeystore performKeyExchange", v33, 2u);
    v38 = v37;
    v17 = v36;
    v18 = v35;
    v19 = v34;
    MEMORY[0x22AA6F950](v38, -1, -1);
  }

  v40 = *(v19 + 8);
  v39 = v19 + 8;
  v122 = v18;
  v121 = v40;
  v40(v26, v18);
  if (qword_27D73A778 != -1)
  {
    swift_once();
  }

  v41 = __swift_project_value_buffer(v124, qword_27D7418C8);
  v42 = v123;
  sub_2259CB588(v41, v123);
  DIPSignpost.init(_:)(v42, v17);
  v43 = *MEMORY[0x277CDC288];
  v44 = sub_225CCCF74();
  v45 = sub_225CCCF74();
  v46 = sub_225CCCF74();
  v132 = 0;
  v47 = SESKeyExchange();

  v48 = v132;
  v49 = v132;
  v50 = v49;
  if (v47)
  {
    v128 = v48;
    v51 = sub_225CCCFA4();
    v53 = v52;

    v54 = v129;
    if (!v50)
    {
      if (v53 >> 60 != 15)
      {
        goto LABEL_35;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v54 = v129;
    if (!v49)
    {
LABEL_18:
      v129 = 0x8000000225D1A7B0;
      v128 = 0x8000000225D1ADA0;
      v78 = MEMORY[0x277D84F90];
      v79 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v81 = v80;
      v82 = sub_225CCE954();
      v83 = *(v82 - 8);
      v84 = v116;
      (*(v83 + 56))(v116, 1, 1, v82);
      LODWORD(v82) = (*(v83 + 48))(v84, 1, v82);
      sub_2259CB640(v84, &unk_27D73B050);
      if (v82)
      {
        v85 = 212;
      }

      else
      {
        v85 = 23;
      }

      v86 = sub_225B2C374(v78);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v132 = v86;
      sub_225B2C4A0(v79, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v132);

      v88 = v132;
      v89 = sub_225B29AA0(0, 1, 1, v78);
      v51 = *(v89 + 2);
      v90 = *(v89 + 3);
      if (v51 >= v90 >> 1)
      {
        v89 = sub_225B29AA0((v90 > 1), v51 + 1, 1, v89);
      }

      *(v89 + 2) = v51 + 1;
      v91 = &v89[56 * v51];
      *(v91 + 4) = 0xD00000000000002BLL;
      *(v91 + 5) = 0x8000000225D1AD70;
      *(v91 + 6) = 0xD00000000000001FLL;
      *(v91 + 7) = v129;
      *(v91 + 8) = 0xD000000000000031;
      *(v91 + 9) = v128;
      *(v91 + 10) = 473;
      *v81 = v85;
      *(v81 + 8) = v89;
      *(v81 + 16) = 0xD00000000000002BLL;
      *(v81 + 24) = 0x8000000225D1AD70;
      *(v81 + 32) = v88;
      *(v81 + 40) = 0;
      swift_willThrow();
      goto LABEL_35;
    }

    v128 = v48;
    v51 = 0;
    v53 = 0xF000000000000000;
  }

  v55 = v120;
  os_unfair_lock_lock(&v27[v120]);
  v56 = v122;
  v117(v54, &v27[v119], v122);
  os_unfair_lock_unlock(&v27[v55]);
  v57 = v50;
  v58 = sub_225CCD934();
  v59 = sub_225CCED14();

  v60 = os_log_type_enabled(v58, v59);
  v115 = v17;
  v129 = v51;
  v127 = v53;
  if (v60)
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v132 = v62;
    *v61 = 136315138;
    v63 = [v57 localizedDescription];
    v64 = v54;
    v65 = sub_225CCE474();
    v126 = v39;
    v67 = v66;

    v68 = sub_2259BE198(v65, v67, &v132);

    *(v61 + 4) = v68;
    _os_log_impl(&dword_2259A7000, v58, v59, "Error from SESKeyExchange: %s", v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v62);
    MEMORY[0x22AA6F950](v62, -1, -1);
    MEMORY[0x22AA6F950](v61, -1, -1);

    v121(v64, v122);
  }

  else
  {

    v121(v54, v56);
  }

  v123 = "eturned a nil shared secret";
  v69 = v57;
  v124 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v126 = swift_allocError();
  v71 = v70;
  swift_getErrorValue();
  v72 = v131;
  v73 = v69;
  sub_225B21FAC(v72, &v132);

  v74 = v133;
  v125 = 0x8000000225D1ADE0;
  if (v133)
  {
    v122 = v132;
    v51 = v135;
    v121 = v134;
    v76 = v136;
    v75 = v137;
    v77 = &v141;
  }

  else
  {
    v132 = v73;
    v92 = v73;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    sub_2259D8718(0, &qword_281059A90);
    if (swift_dynamicCast())
    {
      v93 = v130;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = 20;
      v95 = [v93 code];
      v96 = MEMORY[0x277D83BF8];
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 72) = v96;
      *(inited + 40) = v95;
      v76 = sub_225B2C374(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &qword_27D73B060);

      v97 = v92;
      v51 = 0;
      v121 = 0;
      v74 = MEMORY[0x277D84F90];
      v75 = 212;
      v77 = &v140;
    }

    else
    {
      v132 = v92;
      v98 = sub_225CCE954();
      v99 = v92;
      v100 = v114;
      v101 = swift_dynamicCast();
      v102 = *(v98 - 8);
      (*(v102 + 56))(v100, v101 ^ 1u, 1, v98);
      LODWORD(v102) = (*(v102 + 48))(v100, 1, v98);
      sub_2259CB640(v100, &unk_27D73B050);
      if (v102)
      {
        v103 = 212;
      }

      else
      {
        v103 = 23;
      }

      v122 = v103;
      v74 = MEMORY[0x277D84F90];
      v76 = sub_225B2C374(MEMORY[0x277D84F90]);
      v104 = v99;
      v51 = 0x8000000225D1ADE0;
      v75 = 0xD000000000000019;
      v77 = &v139;
    }
  }

  *(v77 - 32) = v75;
  v105 = v123 | 0x8000000000000000;
  v106 = swift_isUniquelyReferenced_nonNull_native();
  v132 = v76;
  sub_225B2C4A0(v124, sub_225B2AC40, 0, v106, &v132);

  v107 = v132;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v74 = sub_225B29AA0(0, *(v74 + 2) + 1, 1, v74);
  }

  v109 = *(v74 + 2);
  v108 = *(v74 + 3);
  if (v109 >= v108 >> 1)
  {
    v74 = sub_225B29AA0((v108 > 1), v109 + 1, 1, v74);
  }

  *(v74 + 2) = v109 + 1;
  v110 = &v74[56 * v109];
  v111 = v125;
  *(v110 + 4) = 0xD000000000000019;
  *(v110 + 5) = v111;
  *(v110 + 6) = 0xD00000000000001FLL;
  *(v110 + 7) = 0x8000000225D1A7B0;
  *(v110 + 8) = 0xD000000000000031;
  *(v110 + 9) = v105;
  *(v110 + 10) = 470;
  *v71 = v122;
  v112 = v121;
  *(v71 + 8) = v74;
  *(v71 + 16) = v112;
  *(v71 + 24) = v51;
  *(v71 + 32) = v107;
  *(v71 + 40) = v128;
  swift_willThrow();

  sub_2259B97A8(v129, v127);
  v17 = v115;
LABEL_35:
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  sub_2259CB6A0(v17);
  return v51;
}

unint64_t sub_225A7E880()
{
  result = qword_27D73BC60;
  if (!qword_27D73BC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BC60);
  }

  return result;
}

unint64_t sub_225A7E8D8()
{
  result = qword_27D73BC68;
  if (!qword_27D73BC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BC68);
  }

  return result;
}

unint64_t sub_225A7E930()
{
  result = qword_27D73BC70;
  if (!qword_27D73BC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BC70);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_225A7ECF0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[24])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_225A7ED34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t AsyncCoreDataContainer.__allocating_init(contextBuilder:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  AsyncCoreDataContainer.init(contextBuilder:)(a1, a2);
  return v4;
}

void *AsyncCoreDataContainer.init(contextBuilder:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AsyncQueue();
  swift_allocObject();
  v2[2] = AsyncQueue.init()();
  v2[3] = a1;
  v2[4] = a2;
  return v2;
}

uint64_t AsyncCoreDataContainer.write<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_225A7EE64, 0, 0);
}

uint64_t sub_225A7EE64()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = swift_allocObject();
  v0[7] = v5;
  v5[2] = v2;
  v5[3] = v1;
  v5[4] = v4;
  v5[5] = v3;

  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_225A7EF68;
  v7 = v0[5];
  v8 = v0[2];

  return sub_225AFCF60(v8, &unk_225CDC510, v5, v7);
}

uint64_t sub_225A7EF68()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_225A812C8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_225A7F0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*a2 + 80);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225A7F174, 0, 0);
}

uint64_t sub_225A7F174()
{
  (*(v0[3] + 24))();
  v5 = (v0[4] + *v0[4]);
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_225A7F2D0;
  v2 = v0[8];
  v3 = v0[2];

  return v5(v3, v2);
}

uint64_t sub_225A7F2D0()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_225A812AC;
  }

  else
  {
    v2 = sub_225A812A4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t AsyncCoreDataContainer.read<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*v3 + 80);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225A7F4B4, 0, 0);
}

uint64_t sub_225A7F4B4()
{
  (*(v0[5] + 24))();
  v5 = (v0[3] + *v0[3]);
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_225A7F610;
  v2 = v0[8];
  v3 = v0[2];

  return v5(v3, v2);
}

uint64_t sub_225A7F610()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_225A7F7A4;
  }

  else
  {
    v2 = sub_225A7F724;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225A7F724()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_225A7F7A4()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t AsyncCoreDataContainer.performWrite<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_225A7F848, 0, 0);
}

uint64_t sub_225A7F848()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = swift_allocObject();
  v0[7] = v5;
  v5[2] = v2;
  v5[3] = v1;
  v5[4] = v4;
  v5[5] = v3;

  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_225A7F94C;
  v7 = v0[5];
  v8 = v0[2];

  return sub_225AFCF60(v8, &unk_225CDC530, v5, v7);
}

uint64_t sub_225A7F94C()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_225A7FA88, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_225A7FA88()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225A7FAEC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = *a2;
  v5[7] = *a2;
  v7 = *(v6 + 80);
  v5[8] = v7;
  v8 = *(v7 - 8);
  v5[9] = v8;
  v5[10] = *(v8 + 64);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225A7FBFC, 0, 0);
}

uint64_t sub_225A7FBFC()
{
  (*(v0[3] + 24))();
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[5];
  v6 = v0[6];
  v17 = v0[4];
  (*(v2 + 16))(v1, v0[12], v4);
  v7 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v8 = swift_allocObject();
  v0[13] = v8;
  *(v8 + 2) = v4;
  *(v8 + 3) = v6;
  v9 = *(v3 + 88);
  *(v8 + 4) = v9;
  *(v8 + 5) = v17;
  *(v8 + 6) = v5;
  (*(v2 + 32))(&v8[v7], v1, v4);
  v10 = *(v9 + 8);

  v16 = (v10 + *v10);
  v11 = swift_task_alloc();
  v0[14] = v11;
  *v11 = v0;
  v11[1] = sub_225A7FE54;
  v12 = v0[8];
  v13 = v0[6];
  v14 = v0[2];

  return v16(v14, sub_225A812B0, v8, v13, v12, v9);
}

uint64_t sub_225A7FE54()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_225A812A8;
  }

  else
  {
    v2 = sub_225A812CC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t AsyncCoreDataContainer.performRead<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = *v4;
  v5[7] = *v4;
  v7 = *(v6 + 80);
  v5[8] = v7;
  v8 = *(v7 - 8);
  v5[9] = v8;
  v5[10] = *(v8 + 64);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225A80094, 0, 0);
}

uint64_t sub_225A80094()
{
  (*(v0[6] + 24))();
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[4];
  v6 = v0[5];
  v17 = v0[3];
  (*(v2 + 16))(v1, v0[12], v4);
  v7 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v8 = swift_allocObject();
  v0[13] = v8;
  *(v8 + 2) = v4;
  *(v8 + 3) = v6;
  v9 = *(v3 + 88);
  *(v8 + 4) = v9;
  *(v8 + 5) = v17;
  *(v8 + 6) = v5;
  (*(v2 + 32))(&v8[v7], v1, v4);
  v10 = *(v9 + 8);

  v16 = (v10 + *v10);
  v11 = swift_task_alloc();
  v0[14] = v11;
  *v11 = v0;
  v11[1] = sub_225A802EC;
  v12 = v0[8];
  v13 = v0[5];
  v14 = v0[2];

  return v16(v14, sub_225A80A50, v8, v13, v12, v9);
}

uint64_t sub_225A802EC()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_225A804A4;
  }

  else
  {
    v2 = sub_225A8041C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225A8041C()
{
  (*(v0[9] + 8))(v0[12], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_225A804A4()
{
  (*(v0[9] + 8))(v0[12], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t AsyncCoreDataContainer.deinit()
{

  return v0;
}

uint64_t AsyncCoreDataContainer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_225A80590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_225A02E94;

  return AsyncCoreDataContainer.write<A>(_:)(a1, a2, a3, a4);
}

uint64_t sub_225A80654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_225A02E94;

  return AsyncCoreDataContainer.read<A>(_:)(a1, a2, a3);
}

uint64_t sub_225A80708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_225A02E94;

  return AsyncCoreDataContainer.performWrite<A>(_:)(a1, a2, a3, a4);
}

uint64_t sub_225A807CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2259FE39C;

  return AsyncCoreDataContainer.performRead<A>(_:)(a1, a2, a3, a4);
}

uint64_t sub_225A80890(uint64_t a1)
{
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_225A02E94;

  return sub_225A7F0A4(a1, v4, v6, v5);
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_225A80990(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2259FE39C;

  return sub_225A7FAEC(a1, v5, v7, v6, v4);
}

uint64_t dispatch thunk of AsyncCoreDataContexting.perform<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 8) + **(a6 + 8));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_225A02E94;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of AsyncCoreDataContaining.write<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 24) + **(a6 + 24));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_225A02E94;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of AsyncCoreDataContaining.read<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 32) + **(a6 + 32));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_225A02E94;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of AsyncCoreDataContaining.performWrite<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 40) + **(a6 + 40));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_225A02E94;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of AsyncCoreDataContaining.performRead<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 48) + **(a6 + 48));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_225A02E94;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t objectdestroy_13Tm()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t DeveloperTestDocumentResponseBuilder.documentType.getter()
{
  v1 = *v0;

  return v1;
}

CoreIDVShared::DeveloperTestDocumentResponseBuilder __swiftcall DeveloperTestDocumentResponseBuilder.init(documentType:payloadElements:)(Swift::String documentType, Swift::OpaquePointer payloadElements)
{
  *v2 = documentType;
  *(v2 + 16) = payloadElements;
  result.documentType = documentType;
  result.payloadElements = payloadElements;
  return result;
}

void *DeveloperTestDocumentResponseBuilder.buildResponse(requestedNamespaces:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X8>)
{
  v3 = v2;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  while (v7)
  {
LABEL_10:
    v13 = (*(a1 + 48) + 16 * (__clz(__rbit64(v7)) | (v10 << 6)));
    v15 = *v13;
    v14 = v13[1];

    v17 = sub_225A827B8(v16, v15, v14);
    v28 = v3;

    v18 = *(v17 + 16);
    v19 = v11;
    v20 = *(v11 + 16);
    v21 = v20 + v18;
    if (__OFADD__(v20, v18))
    {
      goto LABEL_24;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v21 > v19[3] >> 1)
    {
      if (v20 <= v21)
      {
        v22 = v20 + v18;
      }

      else
      {
        v22 = v20;
      }

      result = sub_225B2A114(result, v22, 1, v19);
      v19 = result;
    }

    v7 &= v7 - 1;
    if (*(v17 + 16))
    {
      if ((v19[3] >> 1) - v19[2] < v18)
      {
        goto LABEL_26;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD70);
      swift_arrayInitWithCopy();

      v11 = v19;
      v3 = v28;
      if (v18)
      {
        v23 = *(v11 + 16);
        v24 = __OFADD__(v23, v18);
        v25 = v23 + v18;
        if (v24)
        {
          goto LABEL_27;
        }

        *(v11 + 16) = v25;
      }
    }

    else
    {

      v11 = v19;
      v3 = v28;
      if (v18)
      {
        goto LABEL_25;
      }
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      DeveloperTestDocumentResponseBuilder.buildResponse(requestedElements:)(v11, a2);
    }

    v7 = *(v4 + 8 * v12);
    ++v10;
    if (v7)
    {
      v10 = v12;
      goto LABEL_10;
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
  return result;
}

uint64_t DeveloperTestDocumentResponseBuilder.buildResponse(requestedElements:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X8>)
{
  v5 = v2;
  v107 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v108 = &v103 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BC78);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v104 = &v103 - v12;
  v103 = type metadata accessor for ISO18013Response.Document(0);
  v105 = *(v103 - 8);
  MEMORY[0x28223BE20](v103, v13);
  v106 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC30);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v110 = &v103 - v17;
  v18 = sub_225CCD354();
  v111 = *(v18 - 8);
  v112 = v18;
  MEMORY[0x28223BE20](v18, v19);
  v109 = &v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BC80);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v24 = &v103 - v23;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BC88);
  v26 = MEMORY[0x28223BE20](v121, v25);
  v123 = &v103 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26, v28);
  v122 = (&v103 - v30);
  v32 = MEMORY[0x28223BE20](v29, v31);
  v118 = &v103 - v33;
  v35 = MEMORY[0x28223BE20](v32, v34);
  v37 = &v103 - v36;
  MEMORY[0x28223BE20](v35, v38);
  v114 = &v103 - v40;
  v41 = v2[1];
  v115 = *v2;
  v116 = v41;
  v42 = *(a1 + 16);
  v119 = v39;
  if (v42)
  {
    v3 = v39 + 48;
    v43 = (a1 + 56);
    v44 = MEMORY[0x277D84F90];
    v117 = v5[2];
    v113 = v37;
    do
    {
      v45 = *(v43 - 1);
      v4 = *v43;
      v46 = *(v43 - 3);
      a1 = *(v43 - 2);

      v47 = v45;
      v48 = v120;
      sub_225A821D4(v46, a1, v47, v4, v117, v24);
      if (v48)
      {
      }

      v49 = (*v3)(v24, 1, v121);
      v120 = 0;
      if (v49 == 1)
      {
        sub_2259CB640(v24, &qword_27D73BC80);
      }

      else
      {
        v50 = v114;
        v4 = &qword_27D73BC88;
        sub_2259D88EC(v24, v114, &qword_27D73BC88);
        sub_2259D88EC(v50, v118, &qword_27D73BC88);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = sub_225B29EE4(0, *(v44 + 16) + 1, 1, v44);
        }

        v52 = *(v44 + 16);
        v51 = *(v44 + 24);
        a1 = v52 + 1;
        if (v52 >= v51 >> 1)
        {
          v44 = sub_225B29EE4(v51 > 1, v52 + 1, 1, v44);
        }

        v37 = v113;
        *(v44 + 16) = a1;
        sub_2259D88EC(v118, v44 + ((*(v119 + 80) + 32) & ~*(v119 + 80)) + *(v119 + 72) * v52, &qword_27D73BC88);
      }

      v43 += 4;
      --v42;
    }

    while (v42);
  }

  else
  {
    v44 = MEMORY[0x277D84F90];
  }

  v54 = sub_225B2D578(MEMORY[0x277D84F90]);
  v118 = *(v44 + 16);
  if (v118)
  {
    v55 = 0;
    v56 = v119;
    v117 = v44 + ((*(v119 + 80) + 32) & ~*(v119 + 80));
    do
    {
      v57 = *(v44 + 16);
      if (v55 >= v57)
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v3 = v44;
      sub_225A82A04(v117 + *(v56 + 72) * v55, v37);
      v58 = v122;
      sub_225A82A04(v37, v122);
      v4 = *v58;
      a1 = v58[1];
      sub_225A82A04(v37, v123);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v124 = v54;
      v44 = sub_2259F18D4(v4, a1);
      v57 = v54[2];
      v61 = (v60 & 1) == 0;
      v62 = v57 + v61;
      if (__OFADD__(v57, v61))
      {
        goto LABEL_43;
      }

      v24 = v60;
      if (v54[3] >= v62)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v60)
          {
            goto LABEL_23;
          }
        }

        else
        {
          sub_225A447CC();
          v54 = v124;
          if (v24)
          {
            goto LABEL_23;
          }
        }
      }

      else
      {
        sub_225A413C8(v62, isUniquelyReferenced_nonNull_native);
        v54 = v124;
        v63 = sub_2259F18D4(v4, a1);
        if ((v24 & 1) != (v64 & 1))
        {
          result = sub_225CCFAC4();
          __break(1u);
          return result;
        }

        v44 = v63;
        if (v24)
        {
LABEL_23:

          goto LABEL_27;
        }
      }

      v54[(v44 >> 6) + 8] |= 1 << v44;
      v65 = (v54[6] + 16 * v44);
      *v65 = v4;
      v65[1] = a1;
      *(v54[7] + 8 * v44) = MEMORY[0x277D84F90];
      v66 = v54[2];
      v67 = __OFADD__(v66, 1);
      v57 = v66 + 1;
      if (v67)
      {
        goto LABEL_44;
      }

      v54[2] = v57;
LABEL_27:
      v68 = v54[7];
      v69 = *(v68 + 8 * v44);
      v70 = swift_isUniquelyReferenced_nonNull_native();
      *(v68 + 8 * v44) = v69;
      if ((v70 & 1) == 0)
      {
        v69 = sub_225B29F08(0, v69[2] + 1, 1, v69);
        *(v68 + 8 * v44) = v69;
      }

      v4 = v69[2];
      v71 = v69[3];
      if (v4 >= v71 >> 1)
      {
        *(v68 + 8 * v44) = sub_225B29F08(v71 > 1, v4 + 1, 1, v69);
      }

      ++v55;
      a1 = *(v121 + 48);
      sub_2259CB640(v37, &qword_27D73BC88);
      v72 = *(v68 + 8 * v44);
      *(v72 + 16) = v4 + 1;
      v24 = &qword_27D73B3D0;
      v73 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B3D0) - 8);
      sub_2259D88EC(v123 + a1, v72 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v4, &qword_27D73B3D0);
      sub_2259CB640(v122 + a1, &qword_27D73B3D0);
      v56 = v119;
      v44 = v3;
    }

    while (v118 != v55);
  }

  v74 = v110;
  sub_225CCD2F4();
  v76 = v111;
  v75 = v112;
  if ((*(v111 + 48))(v74, 1, v112))
  {

    sub_2259CB640(v74, &qword_27D73AC30);
    v24 = 0x8000000225D1AED0;
    v123 = 0x8000000225D1AF10;
    v4 = 0x8000000225D1AF50;
    v77 = MEMORY[0x277D84F90];
    v78 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v37 = v79;
    v80 = sub_225CCE954();
    v81 = *(v80 - 8);
    v82 = v108;
    (*(v81 + 56))(v108, 1, 1, v80);
    LODWORD(v80) = (*(v81 + 48))(v82, 1, v80);
    sub_2259CB640(v82, &unk_27D73B050);
    if (v80)
    {
      LOWORD(v55) = 107;
    }

    else
    {
      LOWORD(v55) = 23;
    }

    v83 = sub_225B2C374(v77);
    v84 = swift_isUniquelyReferenced_nonNull_native();
    v124 = v83;
    sub_225B2C4A0(v78, sub_225B2AC40, 0, v84, &v124);

    v44 = v124;
    v53 = sub_225B29AA0(0, 1, 1, v77);
    v3 = *(v53 + 2);
    v57 = *(v53 + 3);
    a1 = v3 + 1;
    if (v3 >= v57 >> 1)
    {
LABEL_45:
      v53 = sub_225B29AA0((v57 > 1), a1, 1, v53);
    }

    *(v53 + 2) = a1;
    v85 = &v53[56 * v3];
    *(v85 + 4) = 0xD000000000000030;
    *(v85 + 5) = v24;
    v86 = v123;
    *(v85 + 6) = 0xD000000000000038;
    *(v85 + 7) = v86;
    *(v85 + 8) = 0xD000000000000021;
    *(v85 + 9) = v4;
    *(v85 + 10) = 55;
    *v37 = v55;
    *(v37 + 1) = v53;
    *(v37 + 2) = 0xD000000000000030;
    *(v37 + 3) = v24;
    *(v37 + 4) = v44;
    *(v37 + 5) = 0;
    return swift_willThrow();
  }

  else
  {
    v88 = v109;
    (*(v76 + 32))(v109, v74, v75);
    v89 = v103;
    v90 = v106;
    v91 = &v106[*(v103 + 20)];
    v92 = type metadata accessor for ISO18013Response.IssuerSigned(0);
    (*(v76 + 16))(&v91[*(v92 + 20)], v88, v75);
    *v91 = v54;
    v93 = type metadata accessor for ISO18013Response.DeviceSigned(0);
    v94 = *(*(v93 - 8) + 56);
    v95 = v104;
    v94(v104, 1, 1, v93);
    v96 = *(v89 + 24);
    v94(&v90[v96], 1, 1, v93);
    v97 = *(v89 + 28);
    v98 = v116;
    *v90 = v115;
    *(v90 + 1) = v98;

    sub_225A82A74(v95, &v90[v96]);
    *&v90[v97] = 0;
    if (qword_27D739F60 != -1)
    {
      swift_once();
    }

    v99 = xmmword_27D73CBC8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BC90);
    v100 = (*(v105 + 80) + 32) & ~*(v105 + 80);
    v101 = swift_allocObject();
    *(v101 + 16) = xmmword_225CD30F0;
    sub_225A82B7C(v90, v101 + v100, type metadata accessor for ISO18013Response.Document);
    result = (*(v76 + 8))(v109, v75);
    v102 = v107;
    *v107 = v99;
    *(v102 + 2) = v101;
    *(v102 + 3) = 0;
    *(v102 + 32) = 0;
  }

  return result;
}

uint64_t sub_225A821D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X6>, uint64_t *a6@<X8>)
{
  v65 = a2;
  v62 = type metadata accessor for ISO18013IssuerSignedItem();
  MEMORY[0x28223BE20](v62, v12);
  v63 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B3D0);
  v15 = MEMORY[0x28223BE20](v61, v14);
  v64 = (&v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15, v17);
  v57 = &v55 - v18;
  v60 = type metadata accessor for CredentialBuilderPayloadDetails.Element(0);
  v19 = *(v60 - 8);
  v21 = MEMORY[0x28223BE20](v60, v20);
  v23 = (&v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21, v24);
  v59 = &v55 - v25;
  v26 = type metadata accessor for AnyCodable();
  v28 = MEMORY[0x28223BE20](v26 - 8, v27);
  v58 = &v55 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v30);
  v32 = &v55 - v31;
  if (!*(a5 + 16))
  {
    goto LABEL_13;
  }

  v33 = sub_2259F18D4(a1, v65);
  if ((v34 & 1) == 0)
  {
    goto LABEL_13;
  }

  v55 = a6;
  v56 = v6;
  v35 = *(*(a5 + 56) + 8 * v33);
  v36 = *(v35 + 16);

  if (!v36)
  {
LABEL_12:

    a6 = v55;
LABEL_13:
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BC88);
    return (*(*(v40 - 8) + 56))(a6, 1, 1, v40);
  }

  v38 = 0;
  while (1)
  {
    if (v38 >= *(v35 + 16))
    {
      __break(1u);
      return result;
    }

    sub_225A82BE4(v35 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v38, v23, type metadata accessor for CredentialBuilderPayloadDetails.Element);
    v39 = *v23 == a3 && v23[1] == a4;
    if (v39 || (sub_225CCF934() & 1) != 0)
    {
      break;
    }

    ++v38;
    result = sub_225A82CA4(v23, type metadata accessor for CredentialBuilderPayloadDetails.Element);
    if (v36 == v38)
    {
      goto LABEL_12;
    }
  }

  v41 = v59;
  sub_225A82B7C(v23, v59, type metadata accessor for CredentialBuilderPayloadDetails.Element);
  v42 = v58;
  sub_225A82BE4(v41 + *(v60 + 20), v58, type metadata accessor for AnyCodable);
  sub_225A82CA4(v41, type metadata accessor for CredentialBuilderPayloadDetails.Element);
  sub_225A82B7C(v42, v32, type metadata accessor for AnyCodable);
  v43 = v63;
  sub_225A82BE4(v32, &v63[*(v62 + 28)], type metadata accessor for AnyCodable);
  *v43 = 0;
  v43[1] = 0;
  v43[2] = 0xC000000000000000;
  v43[3] = a3;
  v43[4] = a4;
  sub_225CCD424();
  swift_allocObject();

  sub_225CCD414();
  v44 = v64;
  *v64 = 24;
  v45 = *(v61 + 48);
  sub_225A82BE4(v43, v44 + v45, type metadata accessor for ISO18013IssuerSignedItem);
  sub_225A82C4C();
  v46 = v56;
  v47 = sub_225CCD3F4();
  v49 = v48;

  sub_225A82CA4(v43, type metadata accessor for ISO18013IssuerSignedItem);
  sub_225A82CA4(v32, type metadata accessor for AnyCodable);
  if (v46)
  {
    return sub_225A82CA4(v44 + v45, type metadata accessor for ISO18013IssuerSignedItem);
  }

  *(v44 + 8) = v47;
  *(v44 + 16) = v49;
  v50 = v57;
  sub_2259D88EC(v44, v57, &qword_27D73B3D0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BC88);
  v52 = *(v51 + 48);
  v53 = v55;
  v54 = v65;
  *v55 = a1;
  v53[1] = v54;
  sub_2259D88EC(v50, v53 + v52, &qword_27D73B3D0);
  (*(*(v51 - 8) + 56))(v53, 0, 1, v51);
}

uint64_t sub_225A827B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (!v3)
  {
    return v4;
  }

  v6 = a1;
  v34 = MEMORY[0x277D84F90];
  sub_2259D5334(0, v3, 0);
  v4 = v34;
  v7 = v6 + 64;
  result = sub_225CCF0F4();
  v9 = result;
  v10 = 0;
  v27 = v6 + 72;
  v28 = v3;
  v29 = v6 + 64;
  while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(v6 + 32))
  {
    v12 = v9 >> 6;
    if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
    {
      goto LABEL_21;
    }

    v31 = v10;
    v32 = *(v6 + 36);
    v13 = (*(v6 + 48) + 16 * v9);
    v14 = v13[1];
    v33 = *v13;
    v15 = v6;
    v16 = a3;
    v18 = *(v34 + 16);
    v17 = *(v34 + 24);

    if (v18 >= v17 >> 1)
    {
      result = sub_2259D5334((v17 > 1), v18 + 1, 1);
    }

    *(v34 + 16) = v18 + 1;
    v19 = (v34 + 32 * v18);
    v19[4] = a2;
    v19[5] = v16;
    v19[6] = v33;
    v19[7] = v14;
    v11 = 1 << *(v15 + 32);
    if (v9 >= v11)
    {
      goto LABEL_22;
    }

    a3 = v16;
    v6 = v15;
    v7 = v29;
    v20 = *(v29 + 8 * v12);
    if ((v20 & (1 << v9)) == 0)
    {
      goto LABEL_23;
    }

    if (v32 != *(v6 + 36))
    {
      goto LABEL_24;
    }

    v21 = v20 & (-2 << (v9 & 0x3F));
    if (v21)
    {
      v11 = __clz(__rbit64(v21)) | v9 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v22 = v12 << 6;
      v23 = v12 + 1;
      v24 = (v27 + 8 * v12);
      while (v23 < (v11 + 63) >> 6)
      {
        v26 = *v24++;
        v25 = v26;
        v22 += 64;
        ++v23;
        if (v26)
        {
          result = sub_2259D8B18(v9, v32, 0);
          v11 = __clz(__rbit64(v25)) + v22;
          goto LABEL_4;
        }
      }

      result = sub_2259D8B18(v9, v32, 0);
    }

LABEL_4:
    v10 = v31 + 1;
    v9 = v11;
    if (v31 + 1 == v28)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_225A82A04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BC88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_225A82A74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BC78);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_225A82AE4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_225A82B2C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_225A82B7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_225A82BE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_225A82C4C()
{
  result = qword_27D73BC98;
  if (!qword_27D73BC98)
  {
    type metadata accessor for ISO18013IssuerSignedItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BC98);
  }

  return result;
}

uint64_t sub_225A82CA4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t DeveloperTestJapanNationalIDCardCredentialBuilder.isoBirthDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DeveloperTestJapanNationalIDCardCredentialBuilder() + 20);
  v4 = sub_225CCD0B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for DeveloperTestJapanNationalIDCardCredentialBuilder()
{
  result = qword_27D73BCE0;
  if (!qword_27D73BCE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DeveloperTestJapanNationalIDCardCredentialBuilder.japanBirthDate.getter()
{
  v1 = *(v0 + *(type metadata accessor for DeveloperTestJapanNationalIDCardCredentialBuilder() + 24));

  return v1;
}

uint64_t DeveloperTestJapanNationalIDCardCredentialBuilder.birthDateComponents.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DeveloperTestJapanNationalIDCardCredentialBuilder() + 28);
  v4 = sub_225CCCB74();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DeveloperTestJapanNationalIDCardCredentialBuilder.fullName.getter()
{
  v1 = *(v0 + *(type metadata accessor for DeveloperTestJapanNationalIDCardCredentialBuilder() + 32));

  return v1;
}

uint64_t DeveloperTestJapanNationalIDCardCredentialBuilder.individualNumber.getter()
{
  v1 = *(v0 + *(type metadata accessor for DeveloperTestJapanNationalIDCardCredentialBuilder() + 36));

  return v1;
}

uint64_t DeveloperTestJapanNationalIDCardCredentialBuilder.japanSex.getter()
{
  v1 = *(v0 + *(type metadata accessor for DeveloperTestJapanNationalIDCardCredentialBuilder() + 44));

  return v1;
}

uint64_t DeveloperTestJapanNationalIDCardCredentialBuilder.localGovernmentCode.getter()
{
  v1 = *(v0 + *(type metadata accessor for DeveloperTestJapanNationalIDCardCredentialBuilder() + 48));

  return v1;
}

uint64_t DeveloperTestJapanNationalIDCardCredentialBuilder.portrait.getter()
{
  v1 = v0 + *(type metadata accessor for DeveloperTestJapanNationalIDCardCredentialBuilder() + 52);
  v2 = *v1;
  sub_2259CB710(*v1, *(v1 + 8));
  return v2;
}

uint64_t DeveloperTestJapanNationalIDCardCredentialBuilder.residentAddress.getter()
{
  v1 = *(v0 + *(type metadata accessor for DeveloperTestJapanNationalIDCardCredentialBuilder() + 56));

  return v1;
}

uint64_t DeveloperTestJapanNationalIDCardCredentialBuilder.payloadElements.getter()
{
  type metadata accessor for DeveloperTestJapanNationalIDCardCredentialBuilder();
}

uint64_t DeveloperTestJapanNationalIDCardCredentialBuilder.init()@<X0>(uint64_t *a1@<X8>)
{
  v177 = sub_225CCCD84();
  v168 = *(v177 - 8);
  MEMORY[0x28223BE20](v177, v2);
  v176 = &v149 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = sub_225CCD1C4();
  v166 = *(v175 - 8);
  MEMORY[0x28223BE20](v175, v4);
  v174 = &v149 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BCA0);
  v167 = *(v173 - 8);
  v7 = MEMORY[0x28223BE20](v173, v6);
  v172 = &v149 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v171 = (&v149 - v11);
  MEMORY[0x28223BE20](v10, v12);
  v170 = &v149 - v13;
  v182 = type metadata accessor for CredentialBuilderPayloadDetails.Element(0);
  v180 = *(v182 - 8);
  MEMORY[0x28223BE20](v182, v14);
  v169 = &v149 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = sub_225CCCEA4();
  v164 = *(v179 - 8);
  MEMORY[0x28223BE20](v179, v16);
  v178 = &v149 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73E090);
  v20 = MEMORY[0x28223BE20](v18 - 8, v19);
  v163 = &v149 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v22);
  *&v183 = &v149 - v23;
  v181 = sub_225CCCB74();
  v162 = *(v181 - 8);
  MEMORY[0x28223BE20](v181, v24);
  v161 = (&v149 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD00);
  MEMORY[0x28223BE20](v26 - 8, v27);
  v157 = &v149 - v28;
  v158 = sub_225CCD0B4();
  v156 = *(v158 - 8);
  v30 = MEMORY[0x28223BE20](v158, v29);
  v160 = &v149 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v32);
  *&v159 = &v149 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BCA8);
  MEMORY[0x28223BE20](v34 - 8, v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BCB0);
  MEMORY[0x28223BE20](v36 - 8, v37);
  v39 = &v149 - v38;
  v40 = sub_225CCD1E4();
  v41 = *(v40 - 8);
  MEMORY[0x28223BE20](v40, v42);
  v44 = &v149 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_225CCD284();
  v46 = *(v45 - 8);
  MEMORY[0x28223BE20](v45, v47);
  v49 = &v149 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for DeveloperTestJapanNationalIDCardCredentialBuilder();
  v51 = (a1 + v50[6]);
  *v51 = 0x1000000000000013;
  v51[1] = 0x8000000225D1AF80;
  v152 = 0x8000000225D1AF80;
  v52 = (a1 + v50[8]);
  *v52 = 0x80E3B78FE5AA95E7;
  v52[1] = 0xAF90ADE5B18AE880;
  v53 = a1 + v50[9];
  strcpy(v53, "123466789012");
  v53[13] = 0;
  *(v53 + 7) = -5120;
  *(a1 + v50[10]) = 2;
  v54 = (a1 + v50[11]);
  *v54 = 11773413;
  v54[1] = 0xA300000000000000;
  v55 = (a1 + v50[12]);
  *v55 = 0x3436333431;
  v55[1] = 0xE500000000000000;
  v56 = (a1 + v50[14]);
  *v56 = 0x1000000000000030;
  v56[1] = 0x8000000225D1AFA0;
  v153 = 0x8000000225D1AFA0;
  (*(v41 + 104))(v44, *MEMORY[0x277CC9830], v40);
  sub_225CCD1F4();
  (*(v41 + 8))(v44, v40);
  v57 = a1;
  v58 = *(v46 + 16);
  v165 = v49;
  v59 = v49;
  v60 = v50;
  v61 = v157;
  v58(v39, v59, v45);
  v154 = v46;
  v62 = v46;
  v63 = v156;
  v64 = *(v62 + 56);
  v155 = v45;
  v65 = v45;
  v66 = v158;
  v64(v39, 0, 1, v65);
  sub_225CCD294();
  sub_225CCCB44();
  sub_225CCCAE4();
  v67 = *(v63 + 48);
  if (v67(v61, 1, v66) != 1)
  {
    v71 = v159;
    (*(v63 + 32))(v159, v61, v66);
    goto LABEL_5;
  }

  v68 = v159;
  sub_225CCD014();
  v69 = v67(v61, 1, v66);
  v70 = v68;
  if (v69 != 1)
  {
    v71 = v68;
    sub_2259CB640(v61, &unk_27D73FD00);
LABEL_5:
    v70 = v71;
  }

  v72 = v60[5];
  (*(v63 + 32))(v72 + a1, v70, v66);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AEB8);
  v73 = sub_225CCD264();
  v74 = *(v73 - 8);
  v75 = (*(v74 + 80) + 32) & ~*(v74 + 80);
  v76 = swift_allocObject();
  v159 = xmmword_225CD30F0;
  *(v76 + 16) = xmmword_225CD30F0;
  (*(v74 + 104))(v76 + v75, *MEMORY[0x277CC9988], v73);
  sub_2259F4D58(v76);
  swift_setDeallocating();
  (*(v74 + 8))(v76 + v75, v73);
  swift_deallocClassInstance();
  v77 = v160;
  _s13CoreIDVShared12DateProviderV3now10Foundation0C0Vvg_0();
  v78 = v161;
  sub_225CCD214();

  (*(v63 + 8))(v77, v66);
  v79 = sub_225CCCAF4();
  LOBYTE(v73) = v80;
  (v162[1])(v78, v181);
  if (v73)
  {
    v81 = -1;
  }

  else
  {
    v81 = v79;
  }

  v181 = v81;
  *v57 = v81;
  if (qword_28105B8B8 != -1)
  {
LABEL_27:
    swift_once();
  }

  v82 = qword_28105E338;
  v83 = sub_225CCE444();
  v84 = sub_225CCE444();
  v85 = [v82 URLForResource:v83 withExtension:v84];

  v86 = v179;
  v87 = v164;
  if (v85)
  {
    v88 = v183;
    sub_225CCCE34();

    v89 = 0;
  }

  else
  {
    v89 = 1;
    v88 = v183;
  }

  v90 = v163;
  (*(v87 + 56))(v88, v89, 1, v86);
  sub_225A33B7C(v88, v90);
  if ((*(v87 + 48))(v90, 1, v86) == 1)
  {
    v91 = 0;
    v92 = 0xC000000000000000;
  }

  else
  {
    (*(v87 + 32))(v178, v90, v86);
    v91 = sub_225CCCEC4();
    v92 = v93;
    (*(v87 + 8))(v178, v86);
    v88 = v183;
  }

  sub_2259CB640(v88, &unk_27D73E090);
  v161 = v60;
  v94 = (v57 + v60[13]);
  *v94 = v91;
  v94[1] = v92;
  v151 = v94;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BCB8);
  inited = swift_initStackObject();
  v183 = xmmword_225CD73B0;
  *(inited + 16) = xmmword_225CD73B0;
  *(inited + 32) = 0x2E6F73692E67726FLL;
  v160 = (inited + 32);
  v157 = inited;
  *(inited + 40) = 0xEF312E3032323332;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD60);
  v97 = *(v180 + 72);
  v98 = *(v180 + 80);
  v99 = (v98 + 32) & ~v98;
  v150 = 3 * v97;
  v163 = v98;
  v164 = v96;
  v100 = swift_allocObject();
  *(v100 + 16) = v183;
  v180 = v99;
  v149 = v100;
  v101 = (v100 + v99);
  v102 = v182;
  v103 = *(v63 + 16);
  v104 = v101 + *(v182 + 20);
  v162 = v57;
  v103(v104, v72 + v57, v66);
  v105 = type metadata accessor for AnyCodable();
  swift_storeEnumTagMultiPayload();
  *v101 = 0x61645F6874726962;
  v101[1] = 0xEA00000000006574;
  v179 = v97;
  v106 = (v101 + v97);
  *(v101 + v97 + *(v102 + 20)) = 2;
  swift_storeEnumTagMultiPayload();
  *v106 = 7890291;
  v106[1] = 0xE300000000000000;
  v158 = 2 * v97;
  v107 = v101 + 2 * v97;
  *&v107[*(v102 + 20)] = v181;
  v178 = v105;
  swift_storeEnumTagMultiPayload();
  strcpy(v107, "age_in_years");
  v107[13] = 0;
  *(v107 + 7) = -5120;
  v187 = MEMORY[0x277D84F90];
  v108 = 100;
  result = sub_2259D5354(0, 100, 0);
  v60 = 0;
  v110 = 0;
  v111 = v187;
  ++v168;
  ++v167;
  ++v166;
  v66 = v174;
  v57 = v171;
  while (1)
  {
    *&v183 = v108;
    if (v110)
    {
      break;
    }

    v184 = v60;
    sub_225CCD164();
    sub_225A84D38();
    v113 = v172;
    sub_225CCCBB4();
    v185 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BCC0);
    sub_2259D8B24(&qword_27D73BCC8, &qword_27D73BCC0);
    v114 = v176;
    sub_225CCCD64();
    v63 = v173;
    MEMORY[0x22AA6B410](v114, v173);
    (*v168)(v114, v177);
    v72 = v167;
    v115 = *v167;
    (*v167)(v113, v63);
    sub_225CCD134();
    v116 = v170;
    MEMORY[0x22AA6B400](v66, v63);
    (*v166)(v66, v175);
    v115(v57, v63);
    sub_2259D8B24(&qword_27D73BCD0, &qword_27D73BCA0);
    sub_225CCF084();
    v115(v116, v63);
    v117 = v185;
    v118 = v186;
    v185 = 0x7265766F5F656761;
    v186 = 0xE90000000000005FLL;
    MEMORY[0x22AA6CE70](v117, v118);

    v119 = v185;
    v120 = v186;
    v121 = v169;
    v169[*(v182 + 20)] = v181 >= v60;
    swift_storeEnumTagMultiPayload();
    *v121 = v119;
    v121[1] = v120;
    v187 = v111;
    v123 = *(v111 + 16);
    v122 = *(v111 + 24);
    if (v123 >= v122 >> 1)
    {
      sub_2259D5354(v122 > 1, v123 + 1, 1);
      v111 = v187;
    }

    *(v111 + 16) = v123 + 1;
    result = sub_225A84D8C(v121, v111 + v180 + v123 * v179);
    v110 = v60 == 99;
    if (v60 == 99)
    {
      v60 = 0;
      v112 = v183;
    }

    else
    {
      v124 = __OFADD__(v60, 1);
      v60 = (v60 + 1);
      v112 = v183;
      if (v124)
      {
        __break(1u);
        goto LABEL_27;
      }
    }

    v108 = v112 - 1;
    if (!v108)
    {
      v185 = v149;
      sub_225A8472C(v111);
      v125 = v157;
      *(v157 + 6) = v185;
      v125[7] = 0xD000000000000012;
      v125[8] = 0x8000000225D0ACF0;
      v126 = v180;
      v127 = v179;
      v128 = swift_allocObject();
      *(v128 + 16) = xmmword_225CDC6C0;
      v129 = (v128 + v126);
      v130 = v182;
      v131 = (v128 + v126 + *(v182 + 20));
      *v131 = 0x80E3B78FE5AA95E7;
      v131[1] = 0xAF90ADE5B18AE880;
      swift_storeEnumTagMultiPayload();
      *v129 = 0xD000000000000011;
      v129[1] = 0x8000000225D0B490;
      v132 = (v128 + v126 + v127);
      v133 = (v132 + *(v130 + 20));
      *v133 = 0x1000000000000013;
      v133[1] = v152;
      swift_storeEnumTagMultiPayload();
      *v132 = 0xD000000000000012;
      v132[1] = 0x8000000225D0B4B0;
      v134 = (v128 + v126 + v158);
      v135 = (v134 + *(v130 + 20));
      *v135 = 0x3436333431;
      v135[1] = 0xE500000000000000;
      swift_storeEnumTagMultiPayload();
      *v134 = 0xD000000000000016;
      v134[1] = 0x8000000225D0B470;
      v136 = (v128 + v126 + v150);
      v137 = v136 + *(v130 + 20);
      strcpy(v137, "123466789012");
      v137[13] = 0;
      *(v137 + 7) = -5120;
      swift_storeEnumTagMultiPayload();
      *v136 = 0xD000000000000019;
      v136[1] = 0x8000000225D0B4D0;
      v138 = (v128 + v126 + 4 * v127);
      v139 = (v138 + *(v130 + 20));
      *v139 = 11773413;
      v139[1] = 0xA300000000000000;
      swift_storeEnumTagMultiPayload();
      *v138 = 0x63696E755F786573;
      v138[1] = 0xEB0000000065646FLL;
      v140 = (v128 + v126 + 5 * v127);
      v141 = *v151;
      v142 = v151[1];
      v143 = (v140 + *(v130 + 20));
      *v143 = *v151;
      v143[1] = v142;
      swift_storeEnumTagMultiPayload();
      *v140 = 0x7469617274726F70;
      v140[1] = 0xE800000000000000;
      v144 = (v128 + v126 + 6 * v127);
      v145 = (v144 + *(v130 + 20));
      v146 = v153;
      *v145 = 0x1000000000000030;
      v145[1] = v146;
      swift_storeEnumTagMultiPayload();
      *v144 = 0xD000000000000018;
      v144[1] = 0x8000000225D0B410;
      v125[9] = v128;
      v125[10] = 0xD00000000000002DLL;
      v125[11] = 0x8000000225D1B000;
      v147 = swift_allocObject();
      *(v147 + 16) = v159;
      *(v147 + v126 + *(v130 + 20)) = 1;
      swift_storeEnumTagMultiPayload();
      strcpy((v147 + v126), "test_document");
      *(v147 + v126 + 14) = -4864;
      v125[12] = v147;
      sub_2259CB710(v141, v142);
      v148 = sub_225B2D58C(v125);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BCD8);
      swift_arrayDestroy();
      result = (*(v154 + 8))(v165, v155);
      *(v162 + v161[15]) = v148;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_225A8472C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_225B2A248(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for CredentialBuilderPayloadDetails.Element(0);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_225A84858(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_225B2A398(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD20);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_225A8495C(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_225B2A6D0(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BD00);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_225A84A64(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_225B29CD4(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_225A84B50(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_225B2AB30(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 24 * v7 + 32), (v6 + 32), 24 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_225A84C44(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_225B29BC8(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_225A84D38()
{
  result = qword_28105B8F0;
  if (!qword_28105B8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28105B8F0);
  }

  return result;
}

uint64_t sub_225A84D8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CredentialBuilderPayloadDetails.Element(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_225A84E18()
{
  sub_225CCD0B4();
  if (v0 <= 0x3F)
  {
    sub_225CCCB74();
    if (v1 <= 0x3F)
    {
      sub_225A84EEC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_225A84EEC()
{
  if (!qword_27D73BCF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73BCF8);
    v0 = sub_225CCE324();
    if (!v1)
    {
      atomic_store(v0, &qword_27D73BCF0);
    }
  }
}

void static DeveloperTestMDLCredentialBuilder.payloadElements.getter()
{
  v352 = sub_225CCCD84();
  v317 = *(v352 - 8);
  MEMORY[0x28223BE20](v352, v0);
  v351 = v294 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v350 = sub_225CCD1C4();
  v316 = *(v350 - 1);
  MEMORY[0x28223BE20](v350, v2);
  v349 = v294 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v348 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BCA0);
  v315 = *(v348 - 8);
  v5 = MEMORY[0x28223BE20](v348, v4);
  v347 = v294 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v346 = v294 - v9;
  MEMORY[0x28223BE20](v8, v10);
  v345 = v294 - v11;
  v356 = type metadata accessor for CredentialBuilderPayloadDetails.Element(0);
  v355 = *(v356 - 8);
  MEMORY[0x28223BE20](v356, v12);
  v344 = v294 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v357 = type metadata accessor for AnyCodable();
  v324 = *(v357 - 8);
  v15 = MEMORY[0x28223BE20](v357, v14);
  v310 = (v294 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x28223BE20](v15, v17);
  v314 = (v294 - v19);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v320 = v294 - v22;
  v24 = MEMORY[0x28223BE20](v21, v23);
  v325 = v294 - v25;
  MEMORY[0x28223BE20](v24, v26);
  v331 = (v294 - v27);
  v354 = sub_225CCCEA4();
  v342 = *(v354 - 8);
  MEMORY[0x28223BE20](v354, v28);
  v343 = v294 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73E090);
  v32 = MEMORY[0x28223BE20](v30 - 8, v31);
  v341 = v294 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v34);
  v358 = v294 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD00);
  MEMORY[0x28223BE20](v36 - 8, v37);
  v335 = v294 - v38;
  v39 = sub_225CCD1E4();
  v40 = *(v39 - 8);
  MEMORY[0x28223BE20](v39, v41);
  v43 = v294 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v353 = sub_225CCD284();
  v340 = *(v353 - 8);
  MEMORY[0x28223BE20](v353, v44);
  v46 = v294 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v336 = sub_225CCCB74();
  v334 = *(v336 - 8);
  MEMORY[0x28223BE20](v336, v47);
  v333 = v294 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v338 = sub_225CCD0B4();
  v359 = *(v338 - 8);
  v50 = MEMORY[0x28223BE20](v338, v49);
  v309 = v294 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x28223BE20](v50, v52);
  v312 = v294 - v54;
  v56 = MEMORY[0x28223BE20](v53, v55);
  v313 = v294 - v57;
  v59 = MEMORY[0x28223BE20](v56, v58);
  v319 = v294 - v60;
  v62 = MEMORY[0x28223BE20](v59, v61);
  v64 = v294 - v63;
  v66 = MEMORY[0x28223BE20](v62, v65);
  v332 = v294 - v67;
  MEMORY[0x28223BE20](v66, v68);
  v70 = v294 - v69;
  v71 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  v72 = sub_225CCE444();
  v73 = [v71 dateFromString_];

  if (!v73)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v326 = v70;
  sub_225CCD094();

  (*(v40 + 104))(v43, *MEMORY[0x277CC9830], v39);
  sub_225CCD1F4();
  (*(v40 + 8))(v43, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AEB8);
  v74 = sub_225CCD264();
  v75 = *(v74 - 8);
  v76 = (*(v75 + 80) + 32) & ~*(v75 + 80);
  v77 = swift_allocObject();
  v337 = xmmword_225CD30F0;
  *(v77 + 16) = xmmword_225CD30F0;
  (*(v75 + 104))(v77 + v76, *MEMORY[0x277CC9988], v74);
  sub_2259F4D58(v77);
  swift_setDeallocating();
  (*(v75 + 8))(v77 + v76, v74);
  swift_deallocClassInstance();
  v78 = sub_225CCE444();
  v339 = v71;
  v79 = [v71 dateFromString_];

  if (v79)
  {
    sub_225CCD094();

    v80 = v359;
    v81 = *(v359 + 32);
    v82 = v335;
    v83 = v338;
    v81(v335, v64, v338);
    (*(v80 + 56))(v82, 0, 1, v83);
    v84 = v332;
    v81(v332, v82, v83);
    v85 = v358;
  }

  else
  {
    v80 = v359;
    v86 = v335;
    v83 = v338;
    (*(v359 + 56))(v335, 1, 1, v338);
    v84 = v332;
    _s13CoreIDVShared12DateProviderV3now10Foundation0C0Vvg_0();
    v87 = (*(v80 + 48))(v86, 1, v83);
    v85 = v358;
    if (v87 != 1)
    {
      sub_2259CB640(v86, &unk_27D73FD00);
    }
  }

  _s13CoreIDVShared12DateProviderV3now10Foundation0C0Vvg_0();
  v88 = v333;
  sub_225CCD214();

  v89 = v84;
  v90 = v80 + 8;
  v91 = *(v80 + 8);
  v91(v64, v83);
  v91(v89, v83);
  (*(v340 + 8))(v46, v353);
  v92 = sub_225CCCAF4();
  v94 = v93;
  (*(v334 + 1))(v88, v336);
  v95 = 35;
  if ((v94 & 1) == 0)
  {
    v95 = v92;
  }

  v353 = v95;
  v96 = v356;
  if (qword_28105B8B8 != -1)
  {
LABEL_33:
    swift_once();
  }

  v97 = qword_28105E338;
  v98 = sub_225CCE444();
  v99 = sub_225CCE444();
  v100 = [v97 URLForResource:v98 withExtension:v99];

  if (v100)
  {
    sub_225CCCE34();

    v101 = 0;
  }

  else
  {
    v101 = 1;
  }

  v102 = v354;
  v103 = v341;
  v104 = v342;
  (*(v342 + 56))(v85, v101, 1, v354);
  sub_225A33B7C(v85, v103);
  v105 = (*(v104 + 48))(v103, 1, v102);
  v298 = v90;
  v297 = v91;
  if (v105 == 1)
  {
    v106 = 0;
    v107 = 0xF000000000000000;
  }

  else
  {
    (*(v104 + 32))(v343, v103, v102);
    v108 = (v104 + 8);
    v106 = sub_225CCCEC4();
    v110 = v109;
    (*v108)(v343, v102);
    v107 = v110;
  }

  sub_2259CB640(v358, &unk_27D73E090);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BCB8);
  inited = swift_initStackObject();
  v358 = 0xD000000000000011;
  *(inited + 32) = 0xD000000000000011;
  v296 = inited + 32;
  v330 = xmmword_225CD73B0;
  *(inited + 16) = xmmword_225CD73B0;
  v323 = inited;
  *(inited + 40) = 0x8000000225D0ACA0;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD60);
  v113 = *(v355 + 72);
  v114 = (*(v355 + 80) + 32) & ~*(v355 + 80);
  v321 = *(v355 + 80);
  v322 = v112;
  v115 = swift_allocObject();
  *(v115 + 16) = xmmword_225CDC7D0;
  v354 = v114;
  v311 = v115;
  v116 = (v115 + v114);
  v117 = (v115 + v114 + *(v96 + 5));
  *v117 = 0x796C6C654BLL;
  v117[1] = 0xE500000000000000;
  swift_storeEnumTagMultiPayload();
  *v116 = 0x616E5F6E65766967;
  v116[1] = 0xEA0000000000656DLL;
  v118 = (v116 + v113);
  v119 = (v116 + v113 + *(v96 + 5));
  *v119 = 0x616963726147;
  v119[1] = 0xE600000000000000;
  swift_storeEnumTagMultiPayload();
  *v118 = 0x6E5F796C696D6166;
  v118[1] = 0xEB00000000656D61;
  if (v107 >> 60 == 15)
  {
    goto LABEL_36;
  }

  v120 = (v116 + 2 * v113);
  v121 = v331;
  *v331 = v106;
  *(v121 + 8) = v107;
  swift_storeEnumTagMultiPayload();
  *v120 = 0x7469617274726F70;
  v120[1] = 0xE800000000000000;
  sub_225A87A00(v121, v120 + *(v96 + 5), type metadata accessor for AnyCodable);
  v308 = 2 * v113;
  v122 = (v116 + 3 * v113);
  v328 = v107;
  v123 = (v122 + *(v96 + 5));
  *v123 = 0x6E69614D20353432;
  v123[1] = 0xEF74656572745320;
  swift_storeEnumTagMultiPayload();
  v329 = v106;
  *v122 = 0xD000000000000010;
  v122[1] = 0x8000000225D0AE10;
  v124 = v116 + 4 * v113;
  v125 = &v124[*(v96 + 5)];
  *v125 = 0x78696E656F6850;
  *(v125 + 1) = 0xE700000000000000;
  swift_storeEnumTagMultiPayload();
  strcpy(v124, "resident_city");
  *(v124 + 7) = -4864;
  v305 = 4 * v113;
  v126 = v116 + 5 * v113;
  v127 = &v126[*(v96 + 5)];
  *v127 = 23105;
  *(v127 + 1) = 0xE200000000000000;
  swift_storeEnumTagMultiPayload();
  strcpy(v126, "resident_state");
  v126[15] = -18;
  v303 = 6 * v113;
  v128 = (v116 + 6 * v113);
  v129 = (v128 + *(v356 + 20));
  *v129 = 4281173;
  v129[1] = 0xE300000000000000;
  swift_storeEnumTagMultiPayload();
  *v128 = 0xD000000000000010;
  v128[1] = 0x8000000225D0AED0;
  v301 = 7 * v113;
  v130 = (v116 + 7 * v113);
  v131 = (v130 + *(v356 + 20));
  *v131 = 0x3435323538;
  v131[1] = 0xE500000000000000;
  swift_storeEnumTagMultiPayload();
  *v130 = 0xD000000000000014;
  v130[1] = 0x8000000225D0AEB0;
  v132 = &v116[v113];
  *(v132 + *(v356 + 20)) = 2;
  swift_storeEnumTagMultiPayload();
  *v132 = 7890291;
  v132[1] = 0xE300000000000000;
  v306 = 8 * v113;
  v302 = 9 * v113;
  v133 = (v116 + 9 * v113);
  v134 = (v133 + *(v356 + 20));
  *v134 = 0xD000000000000016;
  v134[1] = 0x8000000225D1B050;
  swift_storeEnumTagMultiPayload();
  *v133 = v358;
  v133[1] = 0x8000000225D0AD50;
  v135 = v356;
  v304 = 5 * v113;
  v300 = 10 * v113;
  v136 = (v116 + 10 * v113);
  v137 = (v136 + *(v356 + 20));
  *v137 = 0x58582D5858;
  v137[1] = 0xE500000000000000;
  swift_storeEnumTagMultiPayload();
  *v136 = 0xD000000000000014;
  v136[1] = 0x8000000225D0AE70;
  v295 = 11 * v113;
  v138 = (v116 + 11 * v113);
  v139 = (v138 + *(v135 + 20));
  *v139 = 22616;
  v139[1] = 0xE200000000000000;
  swift_storeEnumTagMultiPayload();
  *v138 = 0x5F676E6975737369;
  v138[1] = 0xEF7972746E756F63;
  v307 = 3 * v113;
  v299 = 12 * v113;
  v140 = (v116 + 12 * v113);
  v141 = (v140 + *(v135 + 20));
  *v141 = 4271950;
  v141[1] = 0xE300000000000000;
  swift_storeEnumTagMultiPayload();
  *v140 = 0xD000000000000016;
  v140[1] = 0x8000000225D0ADA0;
  sub_2259CB710(v329, v328);
  v327 = "Test Issuing Authority";
  v142 = sub_225CCE444();
  v143 = [v339 dateFromString_];

  if (!v143)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v144 = (v116 + 13 * v113);
  v145 = v325;
  sub_225CCD094();

  swift_storeEnumTagMultiPayload();
  *v144 = 0x645F797269707865;
  v144[1] = 0xEB00000000657461;
  sub_225A87A00(v145, v144 + *(v135 + 20), type metadata accessor for AnyCodable);
  v146 = (v116 + 14 * v113);
  v147 = (v146 + *(v135 + 20));
  *v147 = 0x3736353433323144;
  v147[1] = 0xE900000000000038;
  swift_storeEnumTagMultiPayload();
  *v146 = 0x746E656D75636F64;
  v146[1] = 0xEF7265626D756E5FLL;
  v148 = sub_225CCE444();
  v149 = [v339 dateFromString_];

  if (!v149)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v150 = (v116 + 15 * v113);
  v151 = v320;
  sub_225CCD094();

  swift_storeEnumTagMultiPayload();
  *v150 = 0x61645F6575737369;
  v150[1] = 0xEA00000000006574;
  sub_225A87A00(v151, v150 + *(v135 + 20), type metadata accessor for AnyCodable);
  v152 = &v116[2 * v113];
  v153 = (v152 + *(v135 + 20));
  *v153 = 1702194274;
  v153[1] = 0xE400000000000000;
  swift_storeEnumTagMultiPayload();
  *v152 = 0x6F6C6F635F657965;
  v152[1] = 0xEA00000000007275;
  v154 = (v116 + 17 * v113);
  v155 = (v154 + *(v135 + 20));
  *v155 = 0x6E776F7262;
  v155[1] = 0xE500000000000000;
  swift_storeEnumTagMultiPayload();
  *v154 = 0x6C6F635F72696168;
  v154[1] = 0xEB0000000072756FLL;
  v156 = (v116 + 18 * v113);
  *(v156 + *(v135 + 20)) = 160;
  swift_storeEnumTagMultiPayload();
  *v156 = 0x746867696568;
  v156[1] = 0xE600000000000000;
  v355 = v113;
  v358 = v116;
  v157 = (v116 + 19 * v113);
  *(v157 + *(v135 + 20)) = 65;
  swift_storeEnumTagMultiPayload();
  *v157 = 0x746867696577;
  v157[1] = 0xE600000000000000;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BD08);
  v159 = *(v324 + 72);
  v160 = *(v324 + 80);
  v325 = ((v160 + 32) & ~v160);
  v335 = v160;
  v336 = v158;
  v334 = &v325[v159];
  v343 = swift_allocObject();
  *(v343 + 16) = v337;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BD10);
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BD18);
  v163 = *(*(v162 - 8) + 72);
  v164 = *(*(v162 - 8) + 80);
  v165 = (v164 + 32) & ~v164;
  v294[0] = 3 * v163;
  v332 = v164;
  v333 = v161;
  v294[1] = v165 + 3 * v163;
  v166 = swift_allocObject();
  *(v166 + 16) = v330;
  v320 = v165;
  v342 = v166;
  v167 = (v166 + v165);
  v168 = (v167 + *(v162 + 48));
  *v167 = 0xD000000000000015;
  v167[1] = 0x8000000225D0AF50;
  *v168 = 68;
  v168[1] = 0xE100000000000000;
  swift_storeEnumTagMultiPayload();
  v169 = (v163 + v167);
  *v169 = 0x61645F6575737369;
  v169[1] = 0xEA00000000006574;
  v294[2] = "2052-02-10T00:00:00Z";
  v170 = sub_225CCE444();
  v171 = v339;
  v172 = [v339 dateFromString_];

  if (!v172)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v173 = *(v162 + 48);
  v174 = v319;
  sub_225CCD094();

  v175 = (v359 + 32);
  v324 = *(v359 + 32);
  (v324)(v169 + v173, v174, v338);
  swift_storeEnumTagMultiPayload();
  v331 = v163;
  v319 = (2 * v163);
  v176 = (v167 + 2 * v163);
  *v176 = 0x645F797269707865;
  v176[1] = 0xEB00000000657461;
  v177 = sub_225CCE444();
  v178 = [v171 dateFromString_];

  if (!v178)
  {
    goto LABEL_40;
  }

  v179 = v355;
  v180 = (v358 + 20 * v355);
  v341 = 0x8000000225D0AD80;
  v181 = *(v162 + 48);
  v182 = v162;
  v183 = v313;
  sub_225CCD094();

  v184 = v183;
  v185 = v338;
  v313 = v175;
  (v324)(v176 + v181, v184, v338);
  swift_storeEnumTagMultiPayload();
  v186 = sub_225B2D5A0(v342);
  swift_setDeallocating();
  v318 = v182;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v187 = v343;
  *&v325[v343] = v186;
  swift_storeEnumTagMultiPayload();
  v188 = v314;
  *v314 = v187;
  swift_storeEnumTagMultiPayload();
  v189 = v341;
  *v180 = 0xD000000000000012;
  v180[1] = v189;
  v190 = v356;
  sub_225A87A00(v188, v180 + *(v356 + 20), type metadata accessor for AnyCodable);
  v191 = v358;
  v192 = (v358 + 21 * v179);
  *&v192[*(v190 + 20)] = v353;
  swift_storeEnumTagMultiPayload();
  strcpy(v192, "age_in_years");
  v192[13] = 0;
  *(v192 + 7) = -5120;
  v193 = (v191 + 22 * v179);
  (*(v359 + 16))(&v193[*(v190 + 20)], v326, v185);
  swift_storeEnumTagMultiPayload();
  *v193 = 0x61645F6874726962;
  *(v193 + 1) = 0xEA00000000006574;
  v363 = MEMORY[0x277D84F90];
  v194 = 100;
  sub_2259D5354(0, 100, 0);
  v195 = 0;
  v196 = 0;
  v197 = v363;
  v343 = v317 + 8;
  v342 = v315 + 8;
  v341 = (v316 + 8);
  v340 = 0xE90000000000005FLL;
  v96 = v345;
  do
  {
    v359 = v194;
    if (v196)
    {
      __break(1u);
      goto LABEL_35;
    }

    LODWORD(v358) = v353 >= v195;
    v360 = v195;
    v198 = v349;
    sub_225CCD164();
    sub_225A84D38();
    v199 = v347;
    sub_225CCCBB4();
    v361 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BCC0);
    sub_2259D8B24(&qword_27D73BCC8, &qword_27D73BCC0);
    v200 = v351;
    sub_225CCCD64();
    v201 = v346;
    v202 = v348;
    MEMORY[0x22AA6B410](v200, v348);
    (*v343)(v200, v352);
    v203 = *v342;
    (*v342)(v199, v202);
    sub_225CCD134();
    MEMORY[0x22AA6B400](v198, v202);
    (*v341)(v198, v350);
    v203(v201, v202);
    sub_2259D8B24(&qword_27D73BCD0, &qword_27D73BCA0);
    sub_225CCF084();
    v203(v96, v202);
    v204 = v361;
    v205 = v362;
    v361 = 0x7265766F5F656761;
    v362 = v340;
    MEMORY[0x22AA6CE70](v204, v205);

    v206 = v361;
    v207 = v362;
    v208 = v344;
    v344[*(v356 + 20)] = v358;
    swift_storeEnumTagMultiPayload();
    *v208 = v206;
    v208[1] = v207;
    v363 = v197;
    v90 = *(v197 + 16);
    v209 = *(v197 + 24);
    v91 = (v90 + 1);
    if (v90 >= v209 >> 1)
    {
      sub_2259D5354(v209 > 1, v90 + 1, 1);
      v197 = v363;
    }

    *(v197 + 16) = v91;
    v210 = v355;
    sub_225A87A00(v208, v197 + v354 + v90 * v355, type metadata accessor for CredentialBuilderPayloadDetails.Element);
    v196 = v195 == 99;
    if (v195 == 99)
    {
      v195 = 0;
      v85 = v359;
    }

    else
    {
      v211 = __OFADD__(v195++, 1);
      v85 = v359;
      if (v211)
      {
        __break(1u);
        goto LABEL_33;
      }
    }

    v194 = v85 - 1;
  }

  while (v194);
  v361 = v311;
  sub_225A8472C(v197);
  v212 = v323;
  v323[6] = v361;
  v212[7] = 0xD000000000000017;
  v212[8] = 0x8000000225D0ACC0;
  v213 = v354;
  v214 = swift_allocObject();
  *(v214 + 16) = xmmword_225CDC7E0;
  v353 = v214;
  v215 = (v214 + v213);
  v216 = v356;
  v217 = (v214 + v213 + *(v356 + 20));
  *v217 = 78;
  v217[1] = 0xE100000000000000;
  swift_storeEnumTagMultiPayload();
  *v215 = 0xD000000000000015;
  *(v215 + 1) = 0x8000000225D0AFE0;
  v218 = &v215[v210 + *(v216 + 20)];
  *v218 = 0x796C6C654BLL;
  *(v218 + 1) = 0xE500000000000000;
  swift_storeEnumTagMultiPayload();
  strcpy(&v215[v210], "aka_given_name");
  v215[v210 + 15] = -18;
  v219 = &v215[v308];
  v220 = &v215[v308 + *(v216 + 20)];
  *v220 = 21066;
  *(v220 + 1) = 0xE200000000000000;
  swift_storeEnumTagMultiPayload();
  *v219 = 0x6675735F656D616ELL;
  *(v219 + 1) = 0xEB00000000786966;
  v221 = &v215[v307];
  v222 = &v215[v307 + *(v216 + 20)];
  *v222 = 21066;
  *(v222 + 1) = 0xE200000000000000;
  swift_storeEnumTagMultiPayload();
  *v221 = 0x666675735F616B61;
  *(v221 + 1) = 0xEA00000000007869;
  v223 = &v215[v305];
  v224 = &v215[v305 + *(v216 + 20)];
  *v224 = 78;
  *(v224 + 1) = 0xE100000000000000;
  swift_storeEnumTagMultiPayload();
  *v223 = 0xD000000000000016;
  *(v223 + 1) = 0x8000000225D0AFC0;
  v225 = &v215[v304];
  v226 = &v215[v304 + *(v216 + 20)];
  *v226 = 0x616963726147;
  *(v226 + 1) = 0xE600000000000000;
  swift_storeEnumTagMultiPayload();
  *v225 = 0x696D61665F616B61;
  *(v225 + 1) = 0xEF656D616E5F796CLL;
  v227 = &v215[v303];
  *&v215[v303 + *(v216 + 20)] = 2;
  swift_storeEnumTagMultiPayload();
  *v227 = 7890291;
  *(v227 + 1) = 0xE300000000000000;
  v228 = &v215[v301];
  *&v215[v301 + *(v216 + 20)] = 1;
  swift_storeEnumTagMultiPayload();
  strcpy(v228, "CDL_indicator");
  *(v228 + 7) = -4864;
  v229 = &v215[v306];
  v230 = &v215[v306 + *(v216 + 20)];
  *v230 = 70;
  *(v230 + 1) = 0xE100000000000000;
  swift_storeEnumTagMultiPayload();
  *&v215[8 * v210] = 0x706D6F635F534844;
  *(v229 + 1) = 0xEE0065636E61696CLL;
  v231 = &v215[v302];
  *&v215[v302 + *(v216 + 20)] = 1;
  swift_storeEnumTagMultiPayload();
  *v231 = 0x6F645F6E6167726FLL;
  *(v231 + 1) = 0xEB00000000726F6ELL;
  v232 = &v215[v300];
  *&v215[v300 + *(v216 + 20)] = 0;
  swift_storeEnumTagMultiPayload();
  *v232 = 0x6E617265746576;
  *(v232 + 1) = 0xE700000000000000;
  v358 = swift_allocObject();
  *(v358 + 16) = v337;
  v233 = swift_allocObject();
  *(v233 + 16) = v330;
  v234 = v320;
  v352 = v233;
  v235 = &v320[v233];
  *v235 = 0xD000000000000016;
  *(v235 + 1) = 0x8000000225D0B1D0;
  v359 = v235;
  v236 = v331;
  v237 = swift_allocObject();
  *(v237 + 16) = xmmword_225CD73A0;
  v351 = v237;
  v238 = &v234[v237];
  v239 = v318;
  v240 = &v238[*(v318 + 48)];
  *v238 = 0xD00000000000001BLL;
  *(v238 + 1) = 0x8000000225D0B230;
  *v240 = 68;
  *(v240 + 1) = 0xE100000000000000;
  swift_storeEnumTagMultiPayload();
  v241 = (v236 + v238);
  v242 = (v236 + v238 + *(v239 + 48));
  *v241 = 0xD000000000000022;
  v241[1] = 0x8000000225D0B250;
  *v242 = 1701736270;
  v242[1] = 0xE400000000000000;
  swift_storeEnumTagMultiPayload();
  v243 = &v319[v238];
  *v243 = 0x61645F6575737369;
  *(v243 + 1) = 0xEA00000000006574;
  v244 = sub_225CCE444();
  v245 = [v339 dateFromString_];

  if (!v245)
  {
    goto LABEL_41;
  }

  v246 = *(v239 + 48);
  v247 = v312;
  sub_225CCD094();

  v248 = v324;
  (v324)(&v243[v246], v247, v338);
  swift_storeEnumTagMultiPayload();
  v249 = &v238[v294[0]];
  *v249 = 0x645F797269707865;
  *(v249 + 1) = 0xEB00000000657461;
  v250 = sub_225CCE444();
  v251 = [v339 dateFromString_];

  if (v251)
  {
    v350 = &v215[v295];
    v349 = 0x8000000225D0AF80;
    v252 = *(v318 + 48);
    v253 = v318;
    v254 = v309;
    sub_225CCD094();

    v248(&v249[v252], v254, v338);
    swift_storeEnumTagMultiPayload();
    v255 = sub_225B2D5A0(v351);
    swift_setDeallocating();
    v256 = v253;
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v257 = v359;
    *(v359 + v252) = v255;
    swift_storeEnumTagMultiPayload();
    v258 = (v331 + v257);
    v259 = v331;
    v260 = *(v256 + 48);
    v351 = 0xD00000000000001DLL;
    *v258 = 0xD00000000000001DLL;
    v258[1] = 0x8000000225D0B1F0;
    v261 = swift_allocObject();
    *(v261 + 16) = v337;
    v262 = v320;
    v263 = v319;
    v264 = swift_allocObject();
    v348 = xmmword_225CD4890;
    *(v264 + 16) = xmmword_225CD4890;
    v265 = &v262[v264];
    v266 = &v262[v264 + v260];
    v347 = 0xD000000000000021;
    *v265 = 0xD000000000000021;
    *(v265 + 1) = 0x8000000225D0B280;
    *v266 = 1701736270;
    *(v266 + 1) = 0xE400000000000000;
    swift_storeEnumTagMultiPayload();
    v267 = &v262[v264 + v259];
    v268 = *(v256 + 48);
    v346 = 0xD000000000000028;
    *v267 = 0xD000000000000028;
    *(v267 + 1) = 0x8000000225D0B2B0;
    v269 = &v267[v268];
    *v269 = 1701736270;
    *(v269 + 1) = 0xE400000000000000;
    swift_storeEnumTagMultiPayload();
    v270 = sub_225B2D5A0(v264);
    swift_setDeallocating();
    v271 = v256;
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v272 = v325;
    *&v325[v261] = v270;
    swift_storeEnumTagMultiPayload();
    *(v258 + v260) = v261;
    swift_storeEnumTagMultiPayload();
    v273 = &v263[v359];
    v274 = *(v271 + 48);
    v275 = v271;
    *v273 = v351;
    *(v273 + 1) = 0x8000000225D0B210;
    v276 = swift_allocObject();
    *(v276 + 16) = v337;
    v277 = swift_allocObject();
    *(v277 + 16) = v348;
    v278 = &v262[v277];
    *v278 = v347;
    *(v278 + 1) = 0x8000000225D0B2E0;
    v279 = &v262[v277 + v274];
    *v279 = 1701736270;
    *(v279 + 1) = 0xE400000000000000;
    swift_storeEnumTagMultiPayload();
    v280 = &v262[v277 + v331];
    v281 = *(v275 + 48);
    *v280 = v346;
    *(v280 + 1) = 0x8000000225D0B310;
    v282 = &v280[v281];
    *v282 = 1701736270;
    *(v282 + 1) = 0xE400000000000000;
    swift_storeEnumTagMultiPayload();
    v283 = sub_225B2D5A0(v277);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    *&v272[v276] = v283;
    swift_storeEnumTagMultiPayload();
    *&v273[v274] = v276;
    swift_storeEnumTagMultiPayload();
    v284 = sub_225B2D5A0(v352);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v285 = v358;
    *&v272[v358] = v284;
    swift_storeEnumTagMultiPayload();
    v286 = v310;
    *v310 = v285;
    swift_storeEnumTagMultiPayload();
    v287 = v350;
    v288 = v349;
    *v350 = 0xD00000000000001BLL;
    *(v287 + 1) = v288;
    v289 = v356;
    sub_225A87A00(v286, &v287[*(v356 + 20)], type metadata accessor for AnyCodable);
    v290 = v323;
    v323[9] = v353;
    v290[10] = 0xD00000000000002DLL;
    v290[11] = 0x8000000225D1B000;
    v291 = v354;
    v292 = swift_allocObject();
    *(v292 + 16) = v337;
    v293 = v292 + v291;
    *(v293 + *(v289 + 20)) = 1;
    swift_storeEnumTagMultiPayload();
    strcpy(v293, "test_document");
    *(v293 + 14) = -4864;
    v290[12] = v292;
    sub_225B2D58C(v290);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BCD8);
    swift_arrayDestroy();
    sub_2259B97A8(v329, v328);

    v297(v326, v338);
    return;
  }

LABEL_42:
  __break(1u);
}

uint64_t sub_225A87A00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t DeveloperTestPhotoIDCredentialBuilder.familyName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DeveloperTestPhotoIDCredentialBuilder.familyNameLatin1.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t DeveloperTestPhotoIDCredentialBuilder.givenName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t DeveloperTestPhotoIDCredentialBuilder.givenNameLatin1.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t DeveloperTestPhotoIDCredentialBuilder.birthDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DeveloperTestPhotoIDCredentialBuilder() + 36);
  v4 = sub_225CCD0B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for DeveloperTestPhotoIDCredentialBuilder()
{
  result = qword_27D73BD20;
  if (!qword_27D73BD20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DeveloperTestPhotoIDCredentialBuilder.birthDateComponents.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DeveloperTestPhotoIDCredentialBuilder() + 40);
  v4 = sub_225CCCB74();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DeveloperTestPhotoIDCredentialBuilder.portrait.getter()
{
  v1 = v0 + *(type metadata accessor for DeveloperTestPhotoIDCredentialBuilder() + 48);
  v2 = *v1;
  sub_2259CB710(*v1, *(v1 + 8));
  return v2;
}

uint64_t DeveloperTestPhotoIDCredentialBuilder.residentAddress.getter()
{
  v1 = *(v0 + *(type metadata accessor for DeveloperTestPhotoIDCredentialBuilder() + 52));

  return v1;
}

uint64_t DeveloperTestPhotoIDCredentialBuilder.residentCity.getter()
{
  v1 = *(v0 + *(type metadata accessor for DeveloperTestPhotoIDCredentialBuilder() + 56));

  return v1;
}

uint64_t DeveloperTestPhotoIDCredentialBuilder.residentCityLatin1.getter()
{
  v1 = *(v0 + *(type metadata accessor for DeveloperTestPhotoIDCredentialBuilder() + 60));

  return v1;
}

uint64_t DeveloperTestPhotoIDCredentialBuilder.residentPostalCode.getter()
{
  v1 = *(v0 + *(type metadata accessor for DeveloperTestPhotoIDCredentialBuilder() + 64));

  return v1;
}

uint64_t DeveloperTestPhotoIDCredentialBuilder.residentCountry.getter()
{
  v1 = *(v0 + *(type metadata accessor for DeveloperTestPhotoIDCredentialBuilder() + 68));

  return v1;
}

uint64_t DeveloperTestPhotoIDCredentialBuilder.issuingAuthority.getter()
{
  v1 = *(v0 + *(type metadata accessor for DeveloperTestPhotoIDCredentialBuilder() + 72));

  return v1;
}

uint64_t DeveloperTestPhotoIDCredentialBuilder.issuingSubdivision.getter()
{
  v1 = *(v0 + *(type metadata accessor for DeveloperTestPhotoIDCredentialBuilder() + 76));

  return v1;
}

uint64_t DeveloperTestPhotoIDCredentialBuilder.issuingCountry.getter()
{
  v1 = *(v0 + *(type metadata accessor for DeveloperTestPhotoIDCredentialBuilder() + 80));

  return v1;
}

uint64_t DeveloperTestPhotoIDCredentialBuilder.documentNumber.getter()
{
  v1 = *(v0 + *(type metadata accessor for DeveloperTestPhotoIDCredentialBuilder() + 84));

  return v1;
}

uint64_t DeveloperTestPhotoIDCredentialBuilder.personID.getter()
{
  v1 = *(v0 + *(type metadata accessor for DeveloperTestPhotoIDCredentialBuilder() + 88));

  return v1;
}

uint64_t DeveloperTestPhotoIDCredentialBuilder.birthCountry.getter()
{
  v1 = *(v0 + *(type metadata accessor for DeveloperTestPhotoIDCredentialBuilder() + 92));

  return v1;
}

uint64_t DeveloperTestPhotoIDCredentialBuilder.birthState.getter()
{
  v1 = *(v0 + *(type metadata accessor for DeveloperTestPhotoIDCredentialBuilder() + 96));

  return v1;
}

uint64_t DeveloperTestPhotoIDCredentialBuilder.birthCity.getter()
{
  v1 = *(v0 + *(type metadata accessor for DeveloperTestPhotoIDCredentialBuilder() + 100));

  return v1;
}

uint64_t DeveloperTestPhotoIDCredentialBuilder.administrativeNumber.getter()
{
  v1 = *(v0 + *(type metadata accessor for DeveloperTestPhotoIDCredentialBuilder() + 104));

  return v1;
}

uint64_t DeveloperTestPhotoIDCredentialBuilder.residentStreet.getter()
{
  v1 = *(v0 + *(type metadata accessor for DeveloperTestPhotoIDCredentialBuilder() + 108));

  return v1;
}

uint64_t DeveloperTestPhotoIDCredentialBuilder.residentHouseNumber.getter()
{
  v1 = *(v0 + *(type metadata accessor for DeveloperTestPhotoIDCredentialBuilder() + 112));

  return v1;
}

uint64_t DeveloperTestPhotoIDCredentialBuilder.residentState.getter()
{
  v1 = *(v0 + *(type metadata accessor for DeveloperTestPhotoIDCredentialBuilder() + 116));

  return v1;
}

uint64_t DeveloperTestPhotoIDCredentialBuilder.travelDocumentNumber.getter()
{
  v1 = *(v0 + *(type metadata accessor for DeveloperTestPhotoIDCredentialBuilder() + 120));

  return v1;
}

uint64_t DeveloperTestPhotoIDCredentialBuilder.payloadElements.getter()
{
  type metadata accessor for DeveloperTestPhotoIDCredentialBuilder();
}

void DeveloperTestPhotoIDCredentialBuilder.init()(void *a1@<X8>)
{
  v250 = sub_225CCCD84();
  v226 = *(v250 - 8);
  MEMORY[0x28223BE20](v250, v2);
  v249 = &v212 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v248 = sub_225CCD1C4();
  v225 = *(v248 - 8);
  MEMORY[0x28223BE20](v248, v4);
  v247 = &v212 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BCA0);
  v224 = *(v246 - 8);
  v7 = MEMORY[0x28223BE20](v246, v6);
  v245 = &v212 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v244 = &v212 - v11;
  MEMORY[0x28223BE20](v10, v12);
  v243 = &v212 - v13;
  v254 = type metadata accessor for CredentialBuilderPayloadDetails.Element(0);
  v253 = *(v254 - 8);
  MEMORY[0x28223BE20](v254, v14);
  v242 = &v212 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v255 = type metadata accessor for AnyCodable();
  v17 = MEMORY[0x28223BE20](v255, v16);
  v223 = &v212 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v227 = &v212 - v21;
  MEMORY[0x28223BE20](v20, v22);
  v228 = &v212 - v23;
  v241 = sub_225CCCEA4();
  v238 = *(v241 - 1);
  MEMORY[0x28223BE20](v241, v24);
  v240 = &v212 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73E090);
  v28 = MEMORY[0x28223BE20](v26 - 8, v27);
  v235 = &v212 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v30);
  v239 = (&v212 - v31);
  v252 = sub_225CCCB74();
  v234 = *(v252 - 8);
  MEMORY[0x28223BE20](v252, v32);
  v233 = &v212 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD00);
  MEMORY[0x28223BE20](v34 - 8, v35);
  *&v230 = &v212 - v36;
  v256 = sub_225CCD0B4();
  v251 = *(v256 - 8);
  v38 = MEMORY[0x28223BE20](v256, v37);
  v232 = &v212 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38, v40);
  v231 = &v212 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BCA8);
  MEMORY[0x28223BE20](v42 - 8, v43);
  v229 = &v212 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BCB0);
  MEMORY[0x28223BE20](v45 - 8, v46);
  v48 = &v212 - v47;
  v49 = sub_225CCD1E4();
  v50 = *(v49 - 8);
  MEMORY[0x28223BE20](v49, v51);
  v53 = &v212 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_225CCD284();
  v55 = *(v54 - 8);
  MEMORY[0x28223BE20](v54, v56);
  v58 = &v212 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = 6647620;
  a1[1] = 0xE300000000000000;
  a1[2] = 6647620;
  a1[3] = 0xE300000000000000;
  a1[4] = 1701732682;
  a1[5] = 0xE400000000000000;
  a1[6] = 1701732682;
  a1[7] = 0xE400000000000000;
  v59 = type metadata accessor for DeveloperTestPhotoIDCredentialBuilder();
  *(a1 + v59[11]) = 2;
  v60 = (a1 + v59[13]);
  *v60 = 0x6E69614D20353432;
  v60[1] = 0xEF74656572745320;
  v61 = (a1 + v59[14]);
  *v61 = 0x78696E656F6850;
  v61[1] = 0xE700000000000000;
  v62 = (a1 + v59[15]);
  *v62 = 0x78696E656F6850;
  v62[1] = 0xE700000000000000;
  v63 = (a1 + v59[16]);
  *v63 = 0x3435323538;
  v63[1] = 0xE500000000000000;
  v64 = (a1 + v59[17]);
  *v64 = 21333;
  v64[1] = 0xE200000000000000;
  v65 = (a1 + v59[18]);
  *v65 = 0xD000000000000016;
  v65[1] = 0x8000000225D1B050;
  v222 = 0x8000000225D1B050;
  v66 = (a1 + v59[19]);
  *v66 = 0x58582D5858;
  v66[1] = 0xE500000000000000;
  v67 = (a1 + v59[20]);
  *v67 = 22616;
  v67[1] = 0xE200000000000000;
  v68 = a1 + v59[21];
  strcpy(v68, "PhotoID1234567");
  v68[15] = -18;
  v69 = a1 + v59[22];
  strcpy(v69, "PersonID98765");
  *(v69 + 7) = -4864;
  v70 = (a1 + v59[23]);
  *v70 = 21333;
  v70[1] = 0xE200000000000000;
  v71 = (a1 + v59[24]);
  *v71 = 23105;
  v71[1] = 0xE200000000000000;
  v72 = (a1 + v59[25]);
  *v72 = 0x78696E656F6850;
  v72[1] = 0xE700000000000000;
  v73 = (a1 + v59[26]);
  *v73 = 0x3938373635323141;
  v73[1] = 0xE800000000000000;
  v74 = (a1 + v59[27]);
  *v74 = 0x727453206E69614DLL;
  v74[1] = 0xEB00000000746565;
  v75 = (a1 + v59[28]);
  *v75 = 3486770;
  v75[1] = 0xE300000000000000;
  v76 = (a1 + v59[29]);
  *v76 = 23105;
  v76[1] = 0xE200000000000000;
  v77 = (a1 + v59[30]);
  *v77 = 0x36353433323154;
  v77[1] = 0xE700000000000000;
  v236 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  (*(v50 + 104))(v53, *MEMORY[0x277CC9830], v49);
  sub_225CCD1F4();
  v78 = v53;
  v79 = v256;
  (*(v50 + 8))(v78, v49);
  v80 = *(v55 + 16);
  v237 = v58;
  v81 = v58;
  v82 = v251;
  v80(v48, v81, v54);
  v220 = v55;
  v83 = v55;
  v84 = v59;
  v85 = *(v83 + 56);
  v221 = v54;
  v85(v48, 0, 1, v54);
  sub_225CCD294();
  v86 = v230;
  sub_225CCCB44();
  sub_225CCCAE4();
  v87 = *(v82 + 48);
  if (v87(v86, 1, v79) == 1)
  {
    v88 = v231;
    sub_225CCD014();
    v89 = v87(v86, 1, v79);
    v90 = v88;
    if (v89 == 1)
    {
      goto LABEL_6;
    }

    v91 = v88;
    sub_2259CB640(v86, &unk_27D73FD00);
  }

  else
  {
    v91 = v231;
    (*(v82 + 32))(v231, v86, v79);
  }

  v90 = v91;
LABEL_6:
  v92 = *(v84 + 36);
  (*(v82 + 32))(&v92[a1], v90, v79);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AEB8);
  v93 = sub_225CCD264();
  v94 = *(v93 - 8);
  v95 = (*(v94 + 80) + 32) & ~*(v94 + 80);
  v96 = swift_allocObject();
  v230 = xmmword_225CD30F0;
  *(v96 + 16) = xmmword_225CD30F0;
  (*(v94 + 104))(v96 + v95, *MEMORY[0x277CC9988], v93);
  sub_2259F4D58(v96);
  swift_setDeallocating();
  (*(v94 + 8))(v96 + v95, v93);
  swift_deallocClassInstance();
  v97 = v232;
  _s13CoreIDVShared12DateProviderV3now10Foundation0C0Vvg_0();
  v231 = v92;
  v98 = v233;
  sub_225CCD214();

  (*(v82 + 8))(v97, v79);
  v99 = sub_225CCCAF4();
  LOBYTE(v93) = v100;
  (*(v234 + 8))(v98, v252);
  if (v93)
  {
    v101 = -1;
  }

  else
  {
    v101 = v99;
  }

  v252 = v101;
  a1[8] = v101;
  v102 = v239;
  if (qword_28105B8B8 != -1)
  {
LABEL_30:
    swift_once();
  }

  v103 = qword_28105E338;
  v104 = sub_225CCE444();
  v105 = sub_225CCE444();
  v106 = [v103 URLForResource:v104 withExtension:v105];

  v107 = v241;
  v108 = v238;
  if (v106)
  {
    sub_225CCCE34();

    v109 = 0;
  }

  else
  {
    v109 = 1;
  }

  v110 = v235;
  (v108[7])(v102, v109, 1, v107);
  sub_225A33B7C(v102, v110);
  if ((v108[6])(v110, 1, v107) == 1)
  {
    v111 = 0;
    v112 = 0xC000000000000000;
  }

  else
  {
    (v108[4])(v240, v110, v107);
    v111 = sub_225CCCEC4();
    v112 = v113;
    (v108[1])(v240, v107);
  }

  sub_2259CB640(v102, &unk_27D73E090);
  v233 = v84;
  v114 = (a1 + *(v84 + 48));
  *v114 = v111;
  v114[1] = v112;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BCB8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD73B0;
  *(inited + 32) = 0x2E6F73692E67726FLL;
  v232 = (inited + 32);
  v229 = inited;
  *(inited + 40) = 0xEF312E3032323332;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD60);
  v117 = *(v253 + 72);
  v118 = (*(v253 + 80) + 32) & ~*(v253 + 80);
  v234 = *(v253 + 80);
  v235 = v116;
  v119 = swift_allocObject();
  *(v119 + 16) = xmmword_225CDC850;
  v253 = v118;
  v213 = v119;
  v120 = (v119 + v118);
  v121 = v254;
  v122 = (v119 + v118 + *(v254 + 20));
  *v122 = 1701732682;
  v122[1] = 0xE400000000000000;
  swift_storeEnumTagMultiPayload();
  *v120 = 0xD000000000000012;
  v120[1] = 0x8000000225D0B380;
  v123 = (v120 + v117);
  v124 = (v120 + v117 + *(v121 + 20));
  *v124 = 1701732682;
  v124[1] = 0xE400000000000000;
  swift_storeEnumTagMultiPayload();
  *v123 = 0xD000000000000011;
  v123[1] = 0x8000000225D0B3A0;
  v125 = (v120 + 2 * v117);
  v126 = (v125 + *(v121 + 20));
  v238 = a1;
  *v126 = 6647620;
  v126[1] = 0xE300000000000000;
  swift_storeEnumTagMultiPayload();
  v241 = 0xD000000000000013;
  *v125 = 0xD000000000000013;
  v125[1] = 0x8000000225D0B340;
  v218 = 2 * v117;
  v127 = (v120 + 3 * v117);
  v128 = (v127 + *(v121 + 20));
  *v128 = 6647620;
  v128[1] = 0xE300000000000000;
  swift_storeEnumTagMultiPayload();
  *v127 = 0xD000000000000012;
  v127[1] = 0x8000000225D0B360;
  v129 = (v120 + 4 * v117);
  *(v129 + *(v121 + 20)) = 2;
  swift_storeEnumTagMultiPayload();
  *v129 = 7890291;
  v129[1] = 0xE300000000000000;
  v217 = 4 * v117;
  v219 = 5 * v117;
  v130 = v120 + 5 * v117;
  (*(v251 + 16))(&v130[*(v121 + 20)], &v231[v238], v256);
  swift_storeEnumTagMultiPayload();
  *v130 = 0x61645F6874726962;
  *(v130 + 1) = 0xEA00000000006574;
  v216 = 3 * v117;
  v215 = 6 * v117;
  v131 = (v120 + 6 * v117);
  v132 = v114[1];
  v256 = *v114;
  v133 = (v131 + *(v121 + 20));
  *v133 = v256;
  v133[1] = v132;
  swift_storeEnumTagMultiPayload();
  *v131 = 0x7469617274726F70;
  v131[1] = 0xE800000000000000;
  v214 = 7 * v117;
  v134 = (v120 + 7 * v117);
  v135 = (v134 + *(v121 + 20));
  *v135 = 0x6E69614D20353432;
  v135[1] = 0xEF74656572745320;
  swift_storeEnumTagMultiPayload();
  *v134 = 0xD000000000000018;
  v134[1] = 0x8000000225D0B410;
  v136 = &v120[v117];
  v137 = (v136 + *(v121 + 20));
  *v137 = 0x78696E656F6850;
  v137[1] = 0xE700000000000000;
  swift_storeEnumTagMultiPayload();
  *v136 = 0xD000000000000015;
  v136[1] = 0x8000000225D0B430;
  v231 = (8 * v117);
  v212 = 9 * v117;
  v138 = (v120 + 9 * v117);
  v139 = (v138 + *(v121 + 20));
  *v139 = 0x78696E656F6850;
  v139[1] = 0xE700000000000000;
  swift_storeEnumTagMultiPayload();
  *v138 = 0xD000000000000014;
  v138[1] = 0x8000000225D0B450;
  v140 = (v120 + 10 * v117);
  v141 = (v140 + *(v121 + 20));
  *v141 = 0x3435323538;
  v141[1] = 0xE500000000000000;
  swift_storeEnumTagMultiPayload();
  *v140 = 0xD000000000000014;
  v140[1] = 0x8000000225D0AEB0;
  v142 = (v120 + 11 * v117);
  v143 = (v142 + *(v121 + 20));
  *v143 = 21333;
  v143[1] = 0xE200000000000000;
  swift_storeEnumTagMultiPayload();
  *v142 = 0xD000000000000010;
  v142[1] = 0x8000000225D0AED0;
  sub_2259CB710(v256, v132);
  v144 = sub_225CCE444();
  v145 = v236;
  v146 = [v236 dateFromString_];

  if (!v146)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v147 = (v120 + 12 * v117);
  v148 = v228;
  sub_225CCD094();

  swift_storeEnumTagMultiPayload();
  *v147 = 0x61645F6575737369;
  v147[1] = 0xEA00000000006574;
  sub_225A87A00(v148, v147 + *(v121 + 20), type metadata accessor for AnyCodable);
  v149 = sub_225CCE444();
  v150 = [v145 dateFromString_];

  if (!v150)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v151 = (v120 + 13 * v117);
  v152 = v227;
  sub_225CCD094();

  swift_storeEnumTagMultiPayload();
  *v151 = 0x645F797269707865;
  v151[1] = 0xEB00000000657461;
  sub_225A87A00(v152, v151 + *(v121 + 20), type metadata accessor for AnyCodable);
  v153 = sub_225CCE444();
  v154 = [v145 dateFromString_];

  if (v154)
  {
    v155 = (v120 + 14 * v117);
    v156 = v223;
    sub_225CCD094();

    swift_storeEnumTagMultiPayload();
    *v155 = 0xD000000000000015;
    v155[1] = 0x8000000225D0AE30;
    sub_225A87A00(v156, v155 + *(v121 + 20), type metadata accessor for AnyCodable);
    v157 = (v120 + 15 * v117);
    v158 = v157 + *(v121 + 20);
    strcpy(v158, "PhotoID1234567");
    v158[15] = -18;
    swift_storeEnumTagMultiPayload();
    *v157 = 0x746E656D75636F64;
    v157[1] = 0xEF7265626D756E5FLL;
    v159 = &v120[2 * v117];
    v160 = (v159 + *(v121 + 20));
    v161 = v222;
    *v160 = 0xD000000000000016;
    v160[1] = v161;
    swift_storeEnumTagMultiPayload();
    *v159 = 0xD000000000000019;
    v159[1] = 0x8000000225D0B3D0;
    v162 = (v120 + 17 * v117);
    v163 = (v162 + *(v121 + 20));
    *v163 = 0x58582D5858;
    v163[1] = 0xE500000000000000;
    swift_storeEnumTagMultiPayload();
    *v162 = v241;
    v162[1] = 0x8000000225D0B3F0;
    v164 = (v120 + 18 * v117);
    v165 = (v164 + *(v121 + 20));
    *v165 = 22616;
    v165[1] = 0xE200000000000000;
    swift_storeEnumTagMultiPayload();
    *v164 = 0x5F676E6975737369;
    v164[1] = 0xEF7972746E756F63;
    v251 = v117;
    v166 = v120 + 19 * v117;
    *&v166[*(v121 + 20)] = v252;
    swift_storeEnumTagMultiPayload();
    strcpy(v166, "age_in_years");
    v166[13] = 0;
    *(v166 + 7) = -5120;
    v260 = MEMORY[0x277D84F90];
    v167 = 100;
    sub_2259D5354(0, 100, 0);
    v168 = 0;
    v169 = 0;
    v84 = v260;
    v241 = (v226 + 8);
    v240 = (v224 + 8);
    v239 = (v225 + 8);
    v102 = v243;
    while (1)
    {
      v256 = v167;
      if (v169)
      {
        break;
      }

      v257 = v168;
      v171 = v247;
      sub_225CCD164();
      sub_225A84D38();
      v172 = v245;
      sub_225CCCBB4();
      v258 = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BCC0);
      sub_2259D8B24(&qword_27D73BCC8, &qword_27D73BCC0);
      v173 = v249;
      sub_225CCCD64();
      v174 = v244;
      v175 = v246;
      MEMORY[0x22AA6B410](v173, v246);
      (*v241)(v173, v250);
      v176 = *v240;
      (*v240)(v172, v175);
      sub_225CCD134();
      MEMORY[0x22AA6B400](v171, v175);
      (*v239)(v171, v248);
      v176(v174, v175);
      sub_2259D8B24(&qword_27D73BCD0, &qword_27D73BCA0);
      sub_225CCF084();
      v176(v102, v175);
      v177 = v258;
      v178 = v259;
      v258 = 0x7265766F5F656761;
      v259 = 0xE90000000000005FLL;
      MEMORY[0x22AA6CE70](v177, v178);

      v179 = v258;
      v180 = v259;
      v181 = v242;
      v242[*(v254 + 20)] = v252 >= v168;
      swift_storeEnumTagMultiPayload();
      *v181 = v179;
      v181[1] = v180;
      v260 = v84;
      v183 = *(v84 + 16);
      v182 = *(v84 + 24);
      a1 = (v183 + 1);
      if (v183 >= v182 >> 1)
      {
        sub_2259D5354(v182 > 1, v183 + 1, 1);
        v84 = v260;
      }

      *(v84 + 16) = a1;
      sub_225A87A00(v181, v84 + v253 + v183 * v251, type metadata accessor for CredentialBuilderPayloadDetails.Element);
      v169 = v168 == 99;
      if (v168 == 99)
      {
        v168 = 0;
        v170 = v256;
      }

      else
      {
        v184 = __OFADD__(v168++, 1);
        v170 = v256;
        if (v184)
        {
          __break(1u);
          goto LABEL_30;
        }
      }

      v167 = v170 - 1;
      if (!v167)
      {
        v258 = v213;
        sub_225A8472C(v84);
        v185 = v229;
        *(v229 + 6) = v258;
        v185[7] = 0xD000000000000017;
        v185[8] = 0x8000000225D0AC80;
        v186 = v253;
        v187 = swift_allocObject();
        v256 = v187;
        *(v187 + 16) = xmmword_225CDC860;
        v188 = v187 + v186;
        v189 = v254;
        v190 = v187 + v186 + *(v254 + 20);
        strcpy(v190, "PersonID98765");
        *(v190 + 14) = -4864;
        swift_storeEnumTagMultiPayload();
        *v188 = 0x695F6E6F73726570;
        *(v188 + 8) = 0xE900000000000064;
        v191 = v251;
        v192 = (v188 + v251);
        v193 = (v188 + v251 + *(v189 + 20));
        *v193 = 0x78696E656F6850;
        v193[1] = 0xE700000000000000;
        swift_storeEnumTagMultiPayload();
        *v192 = 0x69635F6874726962;
        v192[1] = 0xEA00000000007974;
        v194 = (v188 + v218);
        v195 = (v188 + v218 + *(v189 + 20));
        *v195 = 23105;
        v195[1] = 0xE200000000000000;
        swift_storeEnumTagMultiPayload();
        *v194 = 0x74735F6874726962;
        v194[1] = 0xEB00000000657461;
        v196 = (v188 + v216);
        v197 = (v188 + v216 + *(v189 + 20));
        *v197 = 21333;
        v197[1] = 0xE200000000000000;
        swift_storeEnumTagMultiPayload();
        strcpy(v196, "birth_country");
        *(v196 + 7) = -4864;
        v198 = (v188 + v217);
        v199 = (v188 + v217 + *(v189 + 20));
        *v199 = 3486770;
        v199[1] = 0xE300000000000000;
        swift_storeEnumTagMultiPayload();
        *v198 = 0xD000000000000015;
        v198[1] = 0x8000000225D0B530;
        v200 = (v188 + v219);
        v201 = (v188 + v219 + *(v189 + 20));
        *v201 = 0x727453206E69614DLL;
        v201[1] = 0xEB00000000746565;
        swift_storeEnumTagMultiPayload();
        *v200 = 0x746E656469736572;
        v200[1] = 0xEF7465657274735FLL;
        v202 = (v188 + v215);
        v203 = (v188 + v215 + *(v189 + 20));
        *v203 = 23105;
        v203[1] = 0xE200000000000000;
        swift_storeEnumTagMultiPayload();
        strcpy(v202, "resident_state");
        v202[15] = -18;
        v204 = (v188 + v214);
        v205 = (v188 + v214 + *(v189 + 20));
        *v205 = 0x3938373635323141;
        v205[1] = 0xE800000000000000;
        swift_storeEnumTagMultiPayload();
        *v204 = 0xD000000000000015;
        v204[1] = 0x8000000225D0ADC0;
        v206 = &v231[v188];
        v207 = &v231[v188 + *(v189 + 20)];
        *v207 = 0x36353433323154;
        *(v207 + 1) = 0xE700000000000000;
        swift_storeEnumTagMultiPayload();
        *(v188 + 8 * v191) = 0xD000000000000016;
        *(v206 + 1) = 0x8000000225D0B550;
        v185[9] = v256;
        v185[10] = 0xD00000000000002DLL;
        v185[11] = 0x8000000225D1B000;
        v208 = v253;
        v209 = swift_allocObject();
        *(v209 + 16) = v230;
        v210 = v209 + v208;
        *(v210 + *(v189 + 20)) = 1;
        swift_storeEnumTagMultiPayload();
        strcpy(v210, "test_document");
        *(v210 + 14) = -4864;
        v185[12] = v209;
        v211 = sub_225B2D58C(v185);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BCD8);
        swift_arrayDestroy();

        (*(v220 + 8))(v237, v221);
        *(v238 + *(v233 + 31)) = v211;
        return;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

LABEL_34:
  __break(1u);
}

void sub_225A8A1D8()
{
  sub_225CCD0B4();
  if (v0 <= 0x3F)
  {
    sub_225CCCB74();
    if (v1 <= 0x3F)
    {
      sub_225A84EEC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t CredentialBuilderPayloadDetails.Element.init(elementIdentifier:elementValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  v6 = type metadata accessor for CredentialBuilderPayloadDetails.Element(0);
  return sub_225A91568(a3, a4 + *(v6 + 20), type metadata accessor for AnyCodable);
}

id IdentityCredentialPayloadBuilder.__allocating_init(with:dateProvider:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(v3);
  *&v6[OBJC_IVAR____TtC13CoreIDVShared32IdentityCredentialPayloadBuilder_randomDataSize] = 32;
  *&v6[OBJC_IVAR____TtC13CoreIDVShared32IdentityCredentialPayloadBuilder_cborDataTag] = 24;
  v7 = &v6[OBJC_IVAR____TtC13CoreIDVShared32IdentityCredentialPayloadBuilder_identifierStringData];
  *v7 = sub_2259D25B0(0x6E6564692D79656BLL, 0xEE00726569666974);
  v7[1] = v8;
  *&v6[OBJC_IVAR____TtC13CoreIDVShared32IdentityCredentialPayloadBuilder_kidRange] = xmmword_225CDC970;
  sub_225A32940(a1, &v6[OBJC_IVAR____TtC13CoreIDVShared32IdentityCredentialPayloadBuilder_delegate]);
  sub_225A32940(a2, &v6[OBJC_IVAR____TtC13CoreIDVShared32IdentityCredentialPayloadBuilder_dateProvider]);
  v11.receiver = v6;
  v11.super_class = v3;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  __swift_destroy_boxed_opaque_existential_0(a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v9;
}

id IdentityCredentialPayloadBuilder.init(with:dateProvider:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC13CoreIDVShared32IdentityCredentialPayloadBuilder_randomDataSize] = 32;
  *&v2[OBJC_IVAR____TtC13CoreIDVShared32IdentityCredentialPayloadBuilder_cborDataTag] = 24;
  v5 = &v2[OBJC_IVAR____TtC13CoreIDVShared32IdentityCredentialPayloadBuilder_identifierStringData];
  *v5 = sub_2259D25B0(0x6E6564692D79656BLL, 0xEE00726569666974);
  v5[1] = v6;
  *&v2[OBJC_IVAR____TtC13CoreIDVShared32IdentityCredentialPayloadBuilder_kidRange] = xmmword_225CDC970;
  sub_225A32940(a1, &v2[OBJC_IVAR____TtC13CoreIDVShared32IdentityCredentialPayloadBuilder_delegate]);
  sub_225A32940(a2, &v2[OBJC_IVAR____TtC13CoreIDVShared32IdentityCredentialPayloadBuilder_dateProvider]);
  v9.receiver = v2;
  v9.super_class = type metadata accessor for IdentityCredentialPayloadBuilder();
  v7 = objc_msgSendSuper2(&v9, sel_init);
  __swift_destroy_boxed_opaque_existential_0(a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

uint64_t sub_225A8A57C(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = type metadata accessor for ISO18013Package.Document();
  v2[8] = swift_task_alloc();
  v3 = sub_225CCD354();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225A8A66C, 0, 0);
}

uint64_t sub_225A8A66C()
{
  v1 = sub_225A8FB40(v0[5]);
  v0[12] = v1;
  v2 = v1;
  v0[13] = sub_225A90588(v1);
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_225A8A77C;
  v4 = v0[11];
  v5 = v0[5];

  return sub_225A8AC64(v4, v5, v2);
}

uint64_t sub_225A8A77C()
{
  *(*v1 + 120) = v0;

  if (v0)
  {

    v2 = sub_225A8ABF4;
  }

  else
  {
    v2 = sub_225A8A8A8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225A8A8A8()
{
  v25 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 64);
  (*(*(v0 + 80) + 16))(&v2[*(*(v0 + 56) + 20)], *(v0 + 88), *(v0 + 72));
  *v2 = v1;
  if (qword_27D739F40 != -1)
  {
    swift_once();
  }

  v23 = *(v0 + 120);
  v3 = *(v0 + 64);
  v4 = *(v0 + 40);
  v5 = xmmword_27D73C538;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BD60);
  v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BD68) - 8);
  v7 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_225CD30F0;
  v9 = (v8 + v7);
  v10 = v6[14];
  v11 = *(v4 + 16);
  *v9 = *(v4 + 8);
  v9[1] = v11;
  sub_225A90CF4(v3, v9 + v10, type metadata accessor for ISO18013Package.Document);

  v12 = sub_225B2DA9C(v8);
  swift_setDeallocating();
  sub_2259CB640(v9, &qword_27D73BD68);
  swift_deallocClassInstance();
  v24[0] = *v4;
  sub_225A8F648(v24);
  *(v0 + 16) = v5;
  *(v0 + 32) = v12;
  sub_225A90BDC();
  v13 = sub_225CCD3F4();
  v15 = v14;
  v17 = *(v0 + 80);
  v16 = *(v0 + 88);
  v18 = *(v0 + 64);
  v19 = *(v0 + 72);

  if (v23)
  {
    sub_225A915D0(v18, type metadata accessor for ISO18013Package.Document);
    (*(v17 + 8))(v16, v19);

    v20 = *(v0 + 8);

    return v20();
  }

  else
  {
    sub_225A915D0(v18, type metadata accessor for ISO18013Package.Document);
    (*(v17 + 8))(v16, v19);

    v22 = *(v0 + 8);

    return v22(v13, v15);
  }
}

uint64_t sub_225A8ABF4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225A8AC64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[48] = a3;
  v4[49] = v3;
  v4[46] = a1;
  v4[47] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v4[50] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC30);
  v4[51] = swift_task_alloc();
  v4[52] = swift_task_alloc();
  v5 = sub_225CCD954();
  v4[53] = v5;
  v4[54] = *(v5 - 8);
  v4[55] = swift_task_alloc();
  v6 = sub_225CCD3B4();
  v4[56] = v6;
  v4[57] = *(v6 - 8);
  v4[58] = swift_task_alloc();
  v4[59] = type metadata accessor for ISO18013MobileSecurityObject(0);
  v4[60] = swift_task_alloc();
  v4[61] = type metadata accessor for ISO18013MobileSecurityObject.ValidityInfo(0);
  v4[62] = swift_task_alloc();
  v4[63] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD00);
  v4[64] = swift_task_alloc();
  v7 = sub_225CCD0B4();
  v4[65] = v7;
  v4[66] = *(v7 - 8);
  v4[67] = swift_task_alloc();
  v4[68] = swift_task_alloc();
  v4[69] = swift_task_alloc();
  v4[70] = type metadata accessor for ISO18013MobileSecurityObject.DeviceKeyInfo(0);
  v4[71] = swift_task_alloc();
  v4[72] = swift_task_alloc();
  v8 = sub_225CCE184();
  v4[73] = v8;
  v4[74] = *(v8 - 8);
  v4[75] = swift_task_alloc();
  v9 = sub_225CCDBC4();
  v4[76] = v9;
  v4[77] = *(v9 - 8);
  v4[78] = swift_task_alloc();
  v10 = sub_225CCE174();
  v4[79] = v10;
  v4[80] = *(v10 - 8);
  v4[81] = swift_task_alloc();
  v11 = sub_225CCDBB4();
  v4[82] = v11;
  v4[83] = *(v11 - 8);
  v4[84] = swift_task_alloc();
  v12 = sub_225CCE164();
  v4[85] = v12;
  v4[86] = *(v12 - 8);
  v4[87] = swift_task_alloc();
  v4[88] = swift_task_alloc();
  v13 = sub_225CCDBA4();
  v4[89] = v13;
  v4[90] = *(v13 - 8);
  v4[91] = swift_task_alloc();
  v4[92] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B3D0);
  v4[93] = v14;
  v4[94] = *(v14 - 8);
  v4[95] = swift_task_alloc();
  v4[96] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225A8B234, 0, 0);
}

uint64_t sub_225A8B234()
{
  v228 = v0;
  v227 = *MEMORY[0x277D85DE8];
  v209 = *(v0 + 760);
  v207 = *(v0 + 752);
  v205 = *(v0 + 744);
  v1 = *(v0 + 720);
  v2 = *(v0 + 688);
  v3 = *(v0 + 664);
  v4 = *(v0 + 640);
  v5 = *(v0 + 616);
  v6 = *(v0 + 592);
  v7 = *(v0 + 384);
  v204 = sub_225B2D97C(MEMORY[0x277D84F90]);
  v196 = v7 + 64;
  v8 = -1 << *(v7 + 32);
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v7 + 64);
  v195 = (63 - v8) >> 6;
  v193 = (v5 + 8);
  v194 = (v6 + 8);
  v191 = (v3 + 8);
  v192 = (v4 + 8);
  v189 = (v1 + 8);
  v190 = (v2 + 8);
  v188 = v7;

  v11 = 0;
  v12 = &qword_27D73B3D0;
LABEL_6:
  if (!v10)
  {
    while (1)
    {
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v14 >= v195)
      {
        v103 = *(v0 + 376);

        v104 = type metadata accessor for CredentialBuilderPayloadDetails(0);
        v105 = (v103 + *(v104 + 44));
        v106 = *v105;
        if (*v105 == 1)
        {
          v107 = 0;
        }

        else
        {
          v107 = v105[1];
          if (v106 | v107)
          {
            v108 = v104;

            v104 = v108;
          }

          else
          {
            v107 = 0;
            v106 = 1;
          }
        }

        v109 = *(v0 + 576);
        v110 = *(v0 + 560);
        v111 = *(v0 + 528);
        v219 = *(v0 + 520);
        v223 = v104;
        v112 = *(v0 + 512);
        v113 = *(v0 + 392);
        v114 = *(v0 + 376);
        v115 = *(v104 + 40);
        v116 = sub_225CCD494();
        (*(*(v116 - 8) + 16))(v109, v114 + v115, v116);
        v117 = (v109 + *(v110 + 20));
        *v117 = v106;
        v117[1] = v107;
        *(v109 + *(v110 + 24)) = 0;
        v118 = *(v113 + OBJC_IVAR____TtC13CoreIDVShared32IdentityCredentialPayloadBuilder_dateProvider + 24);
        v119 = *(v113 + OBJC_IVAR____TtC13CoreIDVShared32IdentityCredentialPayloadBuilder_dateProvider + 32);
        __swift_project_boxed_opaque_existential_1((v113 + OBJC_IVAR____TtC13CoreIDVShared32IdentityCredentialPayloadBuilder_dateProvider), v118);
        (*(v119 + 8))(v118, v119);
        sub_225A0DE54(v114 + *(v223 + 28), v112, &unk_27D73FD00);
        v120 = *(v111 + 48);
        if (v120(v112, 1, v219) == 1)
        {
          v121 = *(v0 + 520);
          v122 = *(v0 + 512);
          (*(*(v0 + 528) + 16))(*(v0 + 544), *(v0 + 552), v121);
          if (v120(v122, 1, v121) != 1)
          {
            sub_2259CB640(*(v0 + 512), &unk_27D73FD00);
          }
        }

        else
        {
          (*(*(v0 + 528) + 32))(*(v0 + 544), *(v0 + 512), *(v0 + 520));
        }

        if (sub_225CCD044())
        {
          v123 = *(*(v0 + 528) + 32);
          v123(*(v0 + 536), *(v0 + 544), *(v0 + 520));
        }

        else
        {
          v124 = *(v0 + 552);
          v125 = *(v0 + 536);
          v126 = *(v0 + 528);
          v127 = *(v0 + 520);
          (*(v126 + 8))(*(v0 + 544), v127);
          (*(v126 + 16))(v125, v124, v127);
          v123 = *(v126 + 32);
        }

        v128 = *(v0 + 552);
        v129 = *(v0 + 544);
        v130 = *(v0 + 528);
        v131 = *(v0 + 520);
        v12 = *(v0 + 504);
        v132 = *(v0 + 488);
        v133 = *(v0 + 376);
        v123(v129, *(v0 + 536), v131);
        v134 = *(v130 + 16);
        v134(v12, v128, v131);
        v134(v12 + v132[5], v129, v131);
        v134(v12 + v132[6], v133 + *(v223 + 32), v131);
        v5 = v223;
        (*(v130 + 56))(v12 + v132[7], 1, 1, v131);
        LODWORD(v12) = *(v133 + *(v223 + 36));
        if (qword_27D739F38 == -1)
        {
          goto LABEL_112;
        }

        goto LABEL_139;
      }

      v10 = *(v196 + 8 * v14);
      ++v11;
      if (v10)
      {
        goto LABEL_11;
      }
    }

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
    swift_once();
LABEL_112:
    v135 = *(v0 + 376);
    v213 = *(&xmmword_27D73C268 + 1);
    v216 = xmmword_27D73C268;
    v211 = *&aSha256_1[8 * *(v135 + *(v5 + 52))];
    v136 = *(v0 + 496);
    v137 = *(v0 + 504);
    sub_225A90CF4(*(v0 + 576), *(v0 + 568), type metadata accessor for ISO18013MobileSecurityObject.DeviceKeyInfo);
    v138 = *(v135 + 16);
    v220 = *(v135 + 8);
    sub_225A90CF4(v137, v136, type metadata accessor for ISO18013MobileSecurityObject.ValidityInfo);
    v139 = (v135 + *(v5 + 56));
    v140 = v139[5];
    if (v140)
    {
      v141 = v139[3];
      v208 = v139[4];
      v142 = v139[2];
      v199 = *v139;
      v201 = v139[1];
      sub_2259CB710(*v139, v201);
      v203 = v142;
      v206 = v141;
      sub_2259CB710(v142, v141);
    }

    else
    {
      v199 = 0;
      v201 = 0;
      v203 = 0;
      v206 = 0;
      v208 = 0;
      v140 = 1;
    }

    v143 = v12 < 2;
    v144 = *(v0 + 568);
    v145 = *(v0 + 496);
    v147 = *(v0 + 472);
    v146 = *(v0 + 480);
    v149 = *(v0 + 456);
    v148 = *(v0 + 464);
    v210 = *(v0 + 448);
    v150 = *(v0 + 376);
    *v146 = v216;
    v146[1] = v213;
    v146[2] = v211;
    v146[3] = 0xE700000000000000;
    v146[4] = v204;
    sub_225A91568(v144, v146 + v147[7], type metadata accessor for ISO18013MobileSecurityObject.DeviceKeyInfo);
    v151 = (v146 + v147[8]);
    *v151 = v220;
    v151[1] = v138;
    sub_225A91568(v145, v146 + v147[9], type metadata accessor for ISO18013MobileSecurityObject.ValidityInfo);
    *(v146 + v147[10]) = v143;
    v152 = (v146 + v147[11]);
    *v152 = v199;
    v152[1] = v201;
    v152[2] = v203;
    v152[3] = v206;
    v152[4] = v208;
    v152[5] = v140;
    v225[0] = *v150;

    *(v0 + 776) = sub_225A8F648(v225);
    (*(v149 + 104))(v148, *MEMORY[0x277CF3970], v210);
    sub_225CCD3C4();
    sub_225A91708(&qword_27D73BDB8, type metadata accessor for ISO18013MobileSecurityObject);
    v23 = 0;
    *(v0 + 344) = sub_225CCD3F4();
    *(v0 + 352) = v153;
    sub_2259D9454();
    v154 = sub_225CCD3E4();
    *(v0 + 784) = v154;
    *(v0 + 792) = v155;
    v22 = v154;
    v5 = v155;
    v158 = *(v0 + 376);
    sub_2259BEF00(*(v0 + 344), *(v0 + 352));
    v225[0] = *v158;
    *(v0 + 800) = sub_225A8F648(v225);
    v159 = *&v158[*(v223 + 48)];
    *(v0 + 808) = v159;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AE28);
    v160 = swift_allocObject();
    *(v160 + 16) = xmmword_225CD30F0;
    *(v160 + 32) = 1;
    *(v160 + 40) = v159;
    v161 = sub_225B2C828(v160);
    swift_setDeallocating();
    swift_deallocClassInstance();
    *(v0 + 360) = v161;
    sub_2259CB710(v22, v5);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AE30);
    sub_2259DB480();
    v24 = sub_225CCD3F4();
    *(v0 + 816) = v24;
    *(v0 + 824) = v25;
    goto LABEL_123;
  }

  v14 = v11;
LABEL_11:
  v198 = v14;
  v200 = (v10 - 1) & v10;
  v15 = __clz(__rbit64(v10)) | (v14 << 6);
  v16 = (*(v188 + 48) + 16 * v15);
  v17 = v16[1];
  v197 = *v16;
  v18 = *(*(v188 + 56) + 8 * v15);
  v223 = sub_225B2D990(MEMORY[0x277D84F90]);
  v19 = v18 + 64;
  v20 = -1 << *(v18 + 32);
  if (-v20 < 64)
  {
    v21 = ~(-1 << -v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & *(v18 + 64);
  v23 = (63 - v20) >> 6;
  v202 = v17;

  v218 = v18;

  v5 = 0;
  v212 = v23;
  v215 = v18 + 64;
  while (v22)
  {
LABEL_22:
    v31 = *(v0 + 768);
    v32 = *(v0 + 760);
    v33 = *(v0 + 376);
    sub_225A0DE54(*(v218 + 56) + *(v207 + 72) * (__clz(__rbit64(v22)) | (v5 << 6)), v31, &qword_27D73B3D0);
    sub_2259D88EC(v31, v32, &qword_27D73B3D0);
    v34 = *(v209 + 8);
    v35 = *(v209 + 16);
    v36 = *(v33 + *(type metadata accessor for CredentialBuilderPayloadDetails(0) + 52));
    sub_225CCD424();
    swift_allocObject();
    sub_225CCD414();
    *(v0 + 328) = v34;
    *(v0 + 336) = v35;
    sub_2259D9454();
    v12 = sub_225CCD3E4();
    v38 = v37;

    v39 = v38 >> 62;
    if (!v36)
    {
      sub_225A91708(&qword_27D73AE10, MEMORY[0x277CC5540]);
      sub_225CCDB94();
      if (v39 > 1)
      {
        if (v39 != 2)
        {
          *(v0 + 986) = 0;
          *(v0 + 992) = 0;
          goto LABEL_66;
        }

        v43 = *(v12 + 16);
        v44 = *(v12 + 24);

        v42 = sub_225CCCA44();
        if (v42 && __OFSUB__(v43, sub_225CCCA74()))
        {
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
          goto LABEL_146;
        }

        if (__OFSUB__(v44, v43))
        {
          goto LABEL_138;
        }
      }

      else
      {
        if (!v39)
        {
          *(v0 + 972) = v12;
          *(v0 + 980) = v38;
          *(v0 + 982) = BYTE2(v38);
          *(v0 + 983) = BYTE3(v38);
          *(v0 + 984) = BYTE4(v38);
          *(v0 + 985) = BYTE5(v38);
LABEL_66:
          sub_225CCDB74();
          sub_2259BEF00(v12, v38);
          v64 = *(v0 + 704);
          v65 = *(v0 + 680);
          sub_225CCDB84();
          (*v190)(v64, v65);
          sub_225A91708(&qword_27D73AE58, MEMORY[0x277CC5290]);
          v66 = sub_225CCE154();
          v68 = sub_2259D732C(v66, v67);

          v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ADB0);
          *(v0 + 312) = v69;
          *(v0 + 320) = sub_2259D8B24(&qword_27D73ADB8, &qword_27D73ADB0);
          *(v0 + 288) = v68;
          v70 = __swift_project_boxed_opaque_existential_1((v0 + 288), v69);
          v71 = *v70;
          v72 = *(*v70 + 16);
          if (v72)
          {
            if (v72 < 0xF)
            {
              memset(v225, 0, sizeof(v225));
              v226 = v72;
              memcpy(v225, (v71 + 32), v72);
              v59 = v187 & 0xF00000000000000 | *&v225[8] | ((*&v225[12] | (v226 << 16)) << 32);
              v61 = (v0 + 712);
              v60 = (v0 + 736);
              v58 = *v225;
              v62 = v0 + 288;
              v63 = v189;
              v187 = v59;
              goto LABEL_89;
            }

            sub_225CCCA94();
            swift_allocObject();
            v73 = sub_225CCCA34();
            v74 = v73;
            if (v72 >= 0x7FFFFFFF)
            {
              sub_225CCCF14();
              v58 = swift_allocObject();
              v59 = v74 | 0x8000000000000000;
              *(v58 + 16) = 0;
              *(v58 + 24) = v72;
            }

            else
            {
              v58 = v72 << 32;
              v59 = v73 | 0x4000000000000000;
            }
          }

          else
          {
            v58 = 0;
            v59 = 0xC000000000000000;
          }

          v61 = (v0 + 712);
          v60 = (v0 + 736);
          v62 = v0 + 288;
          v63 = v189;
          goto LABEL_89;
        }

        if (v12 >> 32 < v12)
        {
          goto LABEL_135;
        }

        v42 = sub_225CCCA44();
        if (v42 && __OFSUB__(v12, sub_225CCCA74()))
        {
          goto LABEL_143;
        }
      }

      sub_225CCCA64();
      goto LABEL_66;
    }

    if (v36 == 1)
    {
      sub_225A91708(&qword_27D73AE60, MEMORY[0x277CC5550]);
      sub_225CCDB94();
      if (v39 > 1)
      {
        if (v39 != 2)
        {
          *(v0 + 958) = 0;
          *(v0 + 964) = 0;
          goto LABEL_55;
        }

        v40 = *(v12 + 16);
        v41 = *(v12 + 24);

        v42 = sub_225CCCA44();
        if (v42 && __OFSUB__(v40, sub_225CCCA74()))
        {
          goto LABEL_141;
        }

        if (__OFSUB__(v41, v40))
        {
          goto LABEL_137;
        }
      }

      else
      {
        if (!v39)
        {
          *(v0 + 944) = v12;
          *(v0 + 952) = v38;
          *(v0 + 954) = BYTE2(v38);
          *(v0 + 955) = BYTE3(v38);
          *(v0 + 956) = BYTE4(v38);
          *(v0 + 957) = BYTE5(v38);
LABEL_55:
          sub_225CCDB74();
          sub_2259BEF00(v12, v38);
          v47 = *(v0 + 648);
          v48 = *(v0 + 632);
          sub_225CCDB84();
          (*v192)(v47, v48);
          sub_225A91708(&qword_27D73AE68, MEMORY[0x277CC52C8]);
          v49 = sub_225CCE154();
          v51 = sub_2259D732C(v49, v50);

          v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ADB0);
          *(v0 + 272) = v52;
          *(v0 + 280) = sub_2259D8B24(&qword_27D73ADB8, &qword_27D73ADB0);
          *(v0 + 248) = v51;
          v53 = __swift_project_boxed_opaque_existential_1((v0 + 248), v52);
          v54 = *v53;
          v55 = *(*v53 + 16);
          if (v55)
          {
            if (v55 < 0xF)
            {
              memset(v225, 0, sizeof(v225));
              v226 = v55;
              memcpy(v225, (v54 + 32), v55);
              v59 = v186 & 0xF00000000000000 | *&v225[8] | ((*&v225[12] | (v226 << 16)) << 32);
              v61 = (v0 + 656);
              v60 = (v0 + 672);
              v58 = *v225;
              v62 = v0 + 248;
              v63 = v191;
              v186 = v59;
              goto LABEL_89;
            }

            sub_225CCCA94();
            swift_allocObject();
            v56 = sub_225CCCA34();
            v57 = v56;
            if (v55 >= 0x7FFFFFFF)
            {
              sub_225CCCF14();
              v58 = swift_allocObject();
              v59 = v57 | 0x8000000000000000;
              *(v58 + 16) = 0;
              *(v58 + 24) = v55;
            }

            else
            {
              v58 = v55 << 32;
              v59 = v56 | 0x4000000000000000;
            }
          }

          else
          {
            v58 = 0;
            v59 = 0xC000000000000000;
          }

          v61 = (v0 + 656);
          v60 = (v0 + 672);
          v62 = v0 + 248;
          v63 = v191;
          goto LABEL_89;
        }

        if (v12 >> 32 < v12)
        {
          goto LABEL_133;
        }

        v42 = sub_225CCCA44();
        if (v42 && __OFSUB__(v12, sub_225CCCA74()))
        {
          goto LABEL_145;
        }
      }

      sub_225CCCA64();
      goto LABEL_55;
    }

    sub_225A91708(&qword_27D73AE70, MEMORY[0x277CC5560]);
    sub_225CCDB94();
    if (v39 > 1)
    {
      if (v39 != 2)
      {
        *(v0 + 930) = 0;
        *(v0 + 936) = 0;
        goto LABEL_77;
      }

      v45 = *(v12 + 16);
      v46 = *(v12 + 24);

      v42 = sub_225CCCA44();
      if (v42 && __OFSUB__(v45, sub_225CCCA74()))
      {
        goto LABEL_142;
      }

      if (__OFSUB__(v46, v45))
      {
        goto LABEL_136;
      }

      goto LABEL_75;
    }

    if (v39)
    {
      if (v12 >> 32 < v12)
      {
        goto LABEL_134;
      }

      v42 = sub_225CCCA44();
      if (v42 && __OFSUB__(v12, sub_225CCCA74()))
      {
        goto LABEL_144;
      }

LABEL_75:
      sub_225CCCA64();
      goto LABEL_77;
    }

    *(v0 + 916) = v12;
    *(v0 + 924) = v38;
    *(v0 + 926) = BYTE2(v38);
    *(v0 + 927) = BYTE3(v38);
    *(v0 + 928) = BYTE4(v38);
    *(v0 + 929) = BYTE5(v38);
LABEL_77:
    sub_225CCDB74();
    sub_2259BEF00(v12, v38);
    v75 = *(v0 + 600);
    v76 = *(v0 + 584);
    sub_225CCDB84();
    (*v194)(v75, v76);
    sub_225A91708(&qword_27D73AE78, MEMORY[0x277CC52E8]);
    v77 = sub_225CCE154();
    v79 = sub_2259D732C(v77, v78);

    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ADB0);
    *(v0 + 232) = v80;
    *(v0 + 240) = sub_2259D8B24(&qword_27D73ADB8, &qword_27D73ADB0);
    *(v0 + 208) = v79;
    v81 = __swift_project_boxed_opaque_existential_1((v0 + 208), v80);
    v82 = *v81;
    v83 = *(*v81 + 16);
    if (v83)
    {
      if (v83 < 0xF)
      {
        memset(v225, 0, sizeof(v225));
        v226 = v83;
        memcpy(v225, (v82 + 32), v83);
        v59 = v185 & 0xF00000000000000 | *&v225[8] | ((*&v225[12] | (v226 << 16)) << 32);
        v61 = (v0 + 608);
        v60 = (v0 + 624);
        v58 = *v225;
        v62 = v0 + 208;
        v63 = v193;
        v185 = v59;
        goto LABEL_89;
      }

      sub_225CCCA94();
      swift_allocObject();
      v84 = sub_225CCCA34();
      v85 = v84;
      if (v83 >= 0x7FFFFFFF)
      {
        sub_225CCCF14();
        v58 = swift_allocObject();
        v59 = v85 | 0x8000000000000000;
        *(v58 + 16) = 0;
        *(v58 + 24) = v83;
      }

      else
      {
        v58 = v83 << 32;
        v59 = v84 | 0x4000000000000000;
      }
    }

    else
    {
      v58 = 0;
      v59 = 0xC000000000000000;
    }

    v61 = (v0 + 608);
    v60 = (v0 + 624);
    v62 = v0 + 208;
    v63 = v193;
LABEL_89:
    v86 = *v60;
    v87 = *v61;
    __swift_destroy_boxed_opaque_existential_0(v62);
    sub_2259BEF00(v12, v38);
    (*v63)(v86, v87);
    v88 = *(*(v0 + 760) + *(v205 + 48));
    if (v88 < 0)
    {
      goto LABEL_130;
    }

    sub_2259CB710(v58, v59);
    v89 = v223;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v225 = v223;
    v91 = sub_2259F1900(v88);
    v93 = *(v223 + 16);
    v94 = (v92 & 1) == 0;
    v95 = __OFADD__(v93, v94);
    v96 = v93 + v94;
    if (v95)
    {
      goto LABEL_131;
    }

    LODWORD(v12) = v92;
    if (*(v223 + 24) >= v96)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v102 = v91;
        sub_225A44A40();
        v91 = v102;
        v89 = *v225;
      }
    }

    else
    {
      sub_225A41748(v96, isUniquelyReferenced_nonNull_native);
      v97 = *v225;
      v91 = sub_2259F1900(v88);
      if ((v12 & 1) != (v98 & 1))
      {

        return sub_225CCFAC4();
      }

      v89 = v97;
    }

    v19 = v215;
    v223 = v89;
    if (v12)
    {
      v26 = (v89[7] + 16 * v91);
      v27 = *v26;
      v28 = v26[1];
      *v26 = v58;
      v26[1] = v59;
      sub_2259BEF00(v27, v28);
    }

    else
    {
      v89[(v91 >> 6) + 8] |= 1 << v91;
      *(v89[6] + 8 * v91) = v88;
      v99 = (v89[7] + 16 * v91);
      *v99 = v58;
      v99[1] = v59;
      v100 = v89[2];
      v95 = __OFADD__(v100, 1);
      v101 = v100 + 1;
      if (v95)
      {
        goto LABEL_132;
      }

      v89[2] = v101;
    }

    v22 &= v22 - 1;
    v29 = *(v0 + 760);
    sub_2259BEF00(v58, v59);
    v12 = &qword_27D73B3D0;
    v24 = sub_2259CB640(v29, &qword_27D73B3D0);
    v23 = v212;
  }

  while (1)
  {
    v30 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v30 >= v23)
    {

      v13 = swift_isUniquelyReferenced_nonNull_native();
      *v225 = v204;
      sub_225A04510(v223, v197, v202, v13);

      v204 = *v225;
      v11 = v198;
      v10 = v200;
      goto LABEL_6;
    }

    v22 = *(v19 + 8 * v30);
    ++v5;
    if (v22)
    {
      v5 = v30;
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_123:
  v162 = v24;
  v163 = v25;

  *(v0 + 64) = v162;
  *(v0 + 72) = v163;
  *(v0 + 80) = xmmword_225CD4150;
  *(v0 + 96) = v22;
  *(v0 + 104) = v5;
  sub_2259E44EC();
  v164 = sub_225CCD3F4();
  *(v0 + 832) = v164;
  *(v0 + 840) = v165;
  if (v23)
  {
    v221 = *(v0 + 552);
    v224 = *(v0 + 576);
    v166 = *(v0 + 528);
    v167 = *(v0 + 520);
    v214 = *(v0 + 504);
    v217 = *(v0 + 544);
    v168 = *(v0 + 480);

    sub_2259BEF00(v22, v5);
    sub_225A915D0(v168, type metadata accessor for ISO18013MobileSecurityObject);
    sub_225A915D0(v214, type metadata accessor for ISO18013MobileSecurityObject.ValidityInfo);
    v169 = *(v166 + 8);
    v169(v217, v167);
    v169(v221, v167);
    sub_225A915D0(v224, type metadata accessor for ISO18013MobileSecurityObject.DeviceKeyInfo);
    sub_2259BEF00(v162, v163);
    sub_2259BEF00(0, 0xC000000000000000);
    sub_2259BEF00(v22, v5);

    v156 = *(v0 + 8);

    return v156();
  }

  else
  {
    v38 = v164;
    v42 = v165;
    if (qword_28105B910 != -1)
    {
LABEL_146:
      swift_once();
    }

    v171 = *(v0 + 432);
    v170 = *(v0 + 440);
    v172 = *(v0 + 424);
    v173 = *(v0 + 392);
    v174 = off_28105B918;
    *(v0 + 848) = off_28105B918;
    v175 = *v174;
    v176 = *(*v174 + *MEMORY[0x277D841D0] + 16);
    *(v0 + 856) = v176;
    v177 = *(v175 + 48);
    *(v0 + 912) = v177;
    v178 = (v177 + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v174 + v178));
    v179 = *(v171 + 16);
    *(v0 + 864) = v179;
    *(v0 + 872) = (v171 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v179(v170, v174 + v176, v172);
    os_unfair_lock_unlock((v174 + v178));
    sub_2259CB710(v38, v42);
    sub_225B43440(v170, v38, v42);
    sub_2259BEF00(v38, v42);
    v180 = *(v171 + 8);
    *(v0 + 880) = v180;
    *(v0 + 888) = (v171 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v180(v170, v172);
    v181 = *(v173 + OBJC_IVAR____TtC13CoreIDVShared32IdentityCredentialPayloadBuilder_delegate + 24);
    v182 = *(v173 + OBJC_IVAR____TtC13CoreIDVShared32IdentityCredentialPayloadBuilder_delegate + 32);
    __swift_project_boxed_opaque_existential_1((v173 + OBJC_IVAR____TtC13CoreIDVShared32IdentityCredentialPayloadBuilder_delegate), v181);
    v222 = (*(v182 + 8) + **(v182 + 8));
    v183 = swift_task_alloc();
    *(v0 + 896) = v183;
    *v183 = v0;
    v183[1] = sub_225A8D0BC;
    v184 = *(v0 + 392);

    return v222(v0 + 112, v184, v38, v42, v181, v182);
  }
}

uint64_t sub_225A8D0BC()
{
  *(*v1 + 904) = v0;

  if (v0)
  {
    v2 = sub_225A8E874;
  }

  else
  {
    v2 = sub_225A8D1FC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225A8D1FC()
{
  v167 = v0;
  v166 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 808);
  v2 = *(v0 + 128);
  *(v0 + 16) = *(v0 + 112);
  *(v0 + 32) = v2;
  *(v0 + 48) = *(v0 + 144);
  if (*(v0 + 16) != v1)
  {
    v37 = *(v0 + 400);
    v38 = MEMORY[0x277D84F90];
    v39 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v19 = v40;
    v41 = sub_225CCE954();
    v42 = *(v41 - 8);
    (*(v42 + 56))(v37, 1, 1, v41);
    LODWORD(v41) = (*(v42 + 48))(v37, 1, v41);
    sub_2259CB640(v37, &unk_27D73B050);
    if (v41)
    {
      v43 = 372;
    }

    else
    {
      v43 = 23;
    }

    v150 = v43;
    v44 = sub_225B2C374(v38);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v165 = v44;
    sub_225B2C4A0(v39, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v165);

    v138 = v165;
    v25 = sub_225B29AA0(0, 1, 1, v38);
    v47 = *(v25 + 2);
    v46 = *(v25 + 3);
    if (v47 >= v46 >> 1)
    {
      v25 = sub_225B29AA0((v46 > 1), v47 + 1, 1, v25);
    }

    v28 = *(v0 + 840);
    v29 = *(v0 + 832);
    v127 = *(v0 + 816);
    v130 = *(v0 + 824);
    v30 = *(v0 + 792);
    v31 = *(v0 + 784);
    v153 = *(v0 + 576);
    v143 = *(v0 + 544);
    v147 = *(v0 + 552);
    v32 = *(v0 + 528);
    v141 = *(v0 + 504);
    v142 = *(v0 + 520);
    v135 = *(v0 + 480);
    *(v25 + 2) = v47 + 1;
    v33 = &v25[56 * v47];
    v34 = 0xD000000000000062;
    v35 = 0x8000000225D1B180;
    *(v33 + 4) = 0xD000000000000062;
    *(v33 + 5) = 0x8000000225D1B180;
    *(v33 + 6) = 0xD000000000000022;
    *(v33 + 7) = 0x8000000225D1B1F0;
    *(v33 + 8) = 0xD000000000000023;
    *(v33 + 9) = 0x8000000225D1B220;
    v36 = 177;
    goto LABEL_16;
  }

  v3 = *(v0 + 880);
  v4 = *(v0 + 864);
  v5 = *(v0 + 856);
  v6 = *(v0 + 848);
  v7 = *(v0 + 440);
  v8 = *(v0 + 424);
  v9 = (*(v0 + 912) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v6 + v9));
  v4(v7, v6 + v5, v8);
  os_unfair_lock_unlock((v6 + v9));
  sub_225A91660(v0 + 16, v0 + 160);
  sub_225B43660(v7, v0 + 16);
  sub_225A91630(v0 + 16);
  v3(v7, v8);
  if (*(v0 + 24))
  {
    v10 = *(v0 + 416);
    v11 = *(v0 + 48);
    v12 = *(v0 + 56);
    sub_2259CB710(*(v0 + 784), *(v0 + 792));

    sub_2259CB710(v11, v12);
    sub_225CCD2F4();
    v13 = sub_225CCD354();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v10, 1, v13) == 1)
    {
      v15 = *(v0 + 400);
      sub_2259CB640(*(v0 + 416), &qword_27D73AC30);
      v16 = MEMORY[0x277D84F90];
      v17 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v19 = v18;
      v20 = sub_225CCE954();
      v21 = *(v20 - 8);
      (*(v21 + 56))(v15, 1, 1, v20);
      LODWORD(v20) = (*(v21 + 48))(v15, 1, v20);
      sub_2259CB640(v15, &unk_27D73B050);
      if (v20)
      {
        v22 = 370;
      }

      else
      {
        v22 = 23;
      }

      v150 = v22;
      v23 = sub_225B2C374(v16);
      v24 = swift_isUniquelyReferenced_nonNull_native();
      *&v165 = v23;
      sub_225B2C4A0(v17, sub_225B2AC40, 0, v24, &v165);

      v138 = v165;
      v25 = sub_225B29AA0(0, 1, 1, v16);
      v27 = *(v25 + 2);
      v26 = *(v25 + 3);
      if (v27 >= v26 >> 1)
      {
        v25 = sub_225B29AA0((v26 > 1), v27 + 1, 1, v25);
      }

      v28 = *(v0 + 840);
      v29 = *(v0 + 832);
      v127 = *(v0 + 816);
      v130 = *(v0 + 824);
      v30 = *(v0 + 792);
      v31 = *(v0 + 784);
      v153 = *(v0 + 576);
      v143 = *(v0 + 544);
      v147 = *(v0 + 552);
      v32 = *(v0 + 528);
      v141 = *(v0 + 504);
      v142 = *(v0 + 520);
      v135 = *(v0 + 480);
      *(v25 + 2) = v27 + 1;
      v33 = &v25[56 * v27];
      v34 = 0xD00000000000004ALL;
      v35 = 0x8000000225D1B2C0;
      *(v33 + 4) = 0xD00000000000004ALL;
      *(v33 + 5) = 0x8000000225D1B2C0;
      *(v33 + 6) = 0xD000000000000022;
      *(v33 + 7) = 0x8000000225D1B1F0;
      *(v33 + 8) = 0xD000000000000023;
      *(v33 + 9) = 0x8000000225D1B220;
      v36 = 189;
LABEL_16:
      *(v33 + 10) = v36;
      *v19 = v150;
      *(v19 + 8) = v25;
      *(v19 + 16) = v34;
      *(v19 + 24) = v35;
      *(v19 + 32) = v138;
      *(v19 + 40) = 0;
      swift_willThrow();

      sub_2259BEF00(v29, v28);
      sub_2259BEF00(v127, v130);
      sub_2259BEF00(0, 0xC000000000000000);
      sub_2259BEF00(v31, v30);
      sub_225A91630(v0 + 16);

      sub_2259BEF00(v31, v30);
      sub_225A915D0(v135, type metadata accessor for ISO18013MobileSecurityObject);
      sub_225A915D0(v141, type metadata accessor for ISO18013MobileSecurityObject.ValidityInfo);
      v48 = *(v32 + 8);
      v48(v143, v142);
      v48(v147, v142);
      sub_225A915D0(v153, type metadata accessor for ISO18013MobileSecurityObject.DeviceKeyInfo);
LABEL_17:

      v49 = *(v0 + 8);
      goto LABEL_18;
    }

    v63 = *(v0 + 840);
    v64 = *(v0 + 832);
    v65 = *(v0 + 824);
    v66 = *(v0 + 816);
    v67 = *(v0 + 792);
    v68 = *(v0 + 784);
    v160 = *(v0 + 576);
    v156 = *(v0 + 552);
    v69 = *(v0 + 528);
    v151 = *(v0 + 520);
    v154 = *(v0 + 544);
    v144 = *(v0 + 480);
    v148 = *(v0 + 504);
    v162 = *(v0 + 416);
    v158 = *(v0 + 368);

    sub_2259BEF00(v64, v63);
    sub_2259BEF00(v66, v65);
    sub_2259BEF00(0, 0xC000000000000000);
    sub_2259BEF00(v68, v67);
    sub_225A91630(v0 + 16);

    sub_2259BEF00(v68, v67);
    sub_225A915D0(v144, type metadata accessor for ISO18013MobileSecurityObject);
    sub_225A915D0(v148, type metadata accessor for ISO18013MobileSecurityObject.ValidityInfo);
    v70 = *(v69 + 8);
    v70(v154, v151);
    v70(v156, v151);
    sub_225A915D0(v160, type metadata accessor for ISO18013MobileSecurityObject.DeviceKeyInfo);
    (*(v14 + 32))(v158, v162, v13);
  }

  else
  {
    v51 = *(v0 + 40);
    if (v51 >> 60 == 15)
    {
      v52 = *(v0 + 400);
      v53 = MEMORY[0x277D84F90];
      v54 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v19 = v55;
      v56 = sub_225CCE954();
      v57 = *(v56 - 8);
      (*(v57 + 56))(v52, 1, 1, v56);
      LODWORD(v56) = (*(v57 + 48))(v52, 1, v56);
      sub_2259CB640(v52, &unk_27D73B050);
      if (v56)
      {
        v58 = 0;
      }

      else
      {
        v58 = 23;
      }

      v150 = v58;
      v59 = sub_225B2C374(v53);
      v60 = swift_isUniquelyReferenced_nonNull_native();
      *&v165 = v59;
      sub_225B2C4A0(v54, sub_225B2AC40, 0, v60, &v165);

      v138 = v165;
      v25 = sub_225B29AA0(0, 1, 1, v53);
      v62 = *(v25 + 2);
      v61 = *(v25 + 3);
      if (v62 >= v61 >> 1)
      {
        v25 = sub_225B29AA0((v61 > 1), v62 + 1, 1, v25);
      }

      v28 = *(v0 + 840);
      v29 = *(v0 + 832);
      v127 = *(v0 + 816);
      v130 = *(v0 + 824);
      v30 = *(v0 + 792);
      v31 = *(v0 + 784);
      v153 = *(v0 + 576);
      v143 = *(v0 + 544);
      v147 = *(v0 + 552);
      v32 = *(v0 + 528);
      v141 = *(v0 + 504);
      v142 = *(v0 + 520);
      v135 = *(v0 + 480);
      *(v25 + 2) = v62 + 1;
      v33 = &v25[56 * v62];
      v34 = 0xD000000000000019;
      v35 = 0x8000000225D1B250;
      *(v33 + 4) = 0xD000000000000019;
      *(v33 + 5) = 0x8000000225D1B250;
      *(v33 + 6) = 0xD000000000000022;
      *(v33 + 7) = 0x8000000225D1B1F0;
      *(v33 + 8) = 0xD000000000000023;
      *(v33 + 9) = 0x8000000225D1B220;
      v36 = 209;
      goto LABEL_16;
    }

    v71 = *(v0 + 32);
    v165 = xmmword_225CD4150;
    sub_2259CB710(v71, v51);
    sub_225CCCFC4();
    sub_225CCCFC4();
    sub_225A91708(&qword_27D73AE10, MEMORY[0x277CC5540]);
    sub_225CCDB94();
    v159 = v71;
    v161 = v51;
    *(v0 + 1014) = 0;
    *(v0 + 1020) = 0;
    sub_225CCDB74();
    sub_2259BEF00(0, 0xC000000000000000);
    v72 = *(v0 + 792);
    v73 = *(v0 + 784);
    v74 = *(v0 + 728);
    v75 = *(v0 + 720);
    v76 = *(v0 + 712);
    v77 = *(v0 + 696);
    v78 = *(v0 + 688);
    v79 = *(v0 + 680);
    v145 = *(v0 + 408);
    sub_225CCDB84();
    (*(v78 + 8))(v77, v79);
    sub_225A91708(&qword_27D73AE58, MEMORY[0x277CC5290]);
    v80 = sub_225CCE154();
    v82 = sub_2259D732C(v80, v81);

    v83 = sub_2259D8490(v82);
    v85 = v84;

    (*(v75 + 8))(v74, v76);
    v86 = sub_225CCCFD4();
    v88 = v87;
    v89 = *(v0 + 48);
    v90 = *(v0 + 56);
    sub_2259CB710(v73, v72);
    sub_2259CB710(v86, v88);
    sub_2259CB710(v89, v90);
    sub_225CCD2F4();
    v91 = sub_225CCD354();
    v92 = *(v91 - 8);
    v157 = v88;
    v152 = v85;
    v155 = v86;
    v149 = v83;
    if ((*(v92 + 48))(v145, 1, v91) == 1)
    {
      v93 = *(v0 + 400);
      sub_2259CB640(*(v0 + 408), &qword_27D73AC30);
      v94 = MEMORY[0x277D84F90];
      v95 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v97 = v96;
      v98 = sub_225CCE954();
      v99 = *(v98 - 8);
      (*(v99 + 56))(v93, 1, 1, v98);
      LODWORD(v98) = (*(v99 + 48))(v93, 1, v98);
      sub_2259CB640(v93, &unk_27D73B050);
      if (v98)
      {
        v100 = 370;
      }

      else
      {
        v100 = 23;
      }

      v101 = sub_225B2C374(v94);
      v102 = swift_isUniquelyReferenced_nonNull_native();
      v164 = v101;
      sub_225B2C4A0(v95, sub_225B2AC40, 0, v102, &v164);

      v124 = v164;
      v103 = sub_225B29AA0(0, 1, 1, v94);
      v105 = *(v103 + 2);
      v104 = *(v103 + 3);
      v106 = v100;
      if (v105 >= v104 >> 1)
      {
        v103 = sub_225B29AA0((v104 > 1), v105 + 1, 1, v103);
      }

      v107 = *(v0 + 840);
      v108 = *(v0 + 832);
      v121 = *(v0 + 816);
      v122 = *(v0 + 824);
      v123 = *(v0 + 792);
      v109 = *(v0 + 784);
      v136 = *(v0 + 552);
      v139 = *(v0 + 576);
      v110 = *(v0 + 528);
      v131 = *(v0 + 520);
      v133 = *(v0 + 544);
      v128 = *(v0 + 504);
      v125 = *(v0 + 480);
      *(v103 + 2) = v105 + 1;
      v111 = &v103[56 * v105];
      *(v111 + 4) = 0xD000000000000042;
      *(v111 + 5) = 0x8000000225D1B270;
      *(v111 + 6) = 0xD000000000000022;
      *(v111 + 7) = 0x8000000225D1B1F0;
      *(v111 + 8) = 0xD000000000000023;
      *(v111 + 9) = 0x8000000225D1B220;
      *(v111 + 10) = 205;
      *v97 = v106;
      *(v97 + 8) = v103;
      *(v97 + 16) = 0xD000000000000042;
      *(v97 + 24) = 0x8000000225D1B270;
      *(v97 + 32) = v124;
      *(v97 + 40) = 0;
      swift_willThrow();

      sub_2259BEF00(v108, v107);
      sub_2259BEF00(v121, v122);
      sub_2259BEF00(0, 0xC000000000000000);
      sub_2259BEF00(v109, v123);
      sub_2259BEF00(v149, v85);
      sub_2259B97A8(v159, v161);
      sub_225A91630(v0 + 16);
      sub_2259BEF00(v155, v157);

      sub_2259BEF00(v109, v123);
      sub_225A915D0(v125, type metadata accessor for ISO18013MobileSecurityObject);
      sub_225A915D0(v128, type metadata accessor for ISO18013MobileSecurityObject.ValidityInfo);
      v112 = *(v110 + 8);
      v112(v133, v131);
      v112(v136, v131);
      sub_225A915D0(v139, type metadata accessor for ISO18013MobileSecurityObject.DeviceKeyInfo);
      sub_2259BEF00(v165, *(&v165 + 1));
      goto LABEL_17;
    }

    v113 = *(v0 + 840);
    v114 = *(v0 + 832);
    v115 = *(v0 + 824);
    v116 = *(v0 + 816);
    v117 = *(v0 + 792);
    v118 = *(v0 + 784);
    v137 = *(v0 + 552);
    v140 = *(v0 + 576);
    v119 = *(v0 + 528);
    v132 = *(v0 + 520);
    v134 = *(v0 + 544);
    v129 = *(v0 + 504);
    v126 = *(v0 + 480);
    v163 = *(v0 + 408);
    v146 = *(v0 + 368);

    sub_2259BEF00(v114, v113);
    sub_2259BEF00(v116, v115);
    sub_2259BEF00(0, 0xC000000000000000);
    sub_2259BEF00(v118, v117);
    sub_2259BEF00(v149, v152);
    sub_2259B97A8(v159, v161);
    sub_225A91630(v0 + 16);
    sub_2259BEF00(v155, v157);

    sub_2259BEF00(v118, v117);
    sub_225A915D0(v126, type metadata accessor for ISO18013MobileSecurityObject);
    sub_225A915D0(v129, type metadata accessor for ISO18013MobileSecurityObject.ValidityInfo);
    v120 = *(v119 + 8);
    v120(v134, v132);
    v120(v137, v132);
    sub_225A915D0(v140, type metadata accessor for ISO18013MobileSecurityObject.DeviceKeyInfo);
    sub_2259BEF00(0, 0xC000000000000000);
    (*(v92 + 32))(v146, v163, v91);
  }

  v49 = *(v0 + 8);
LABEL_18:

  return v49();
}

uint64_t sub_225A8E874()
{
  v1 = v0[105];
  v2 = v0[104];
  v3 = v0[103];
  v4 = v0[102];
  v5 = v0[99];
  v6 = v0[98];
  v15 = v0[69];
  v16 = v0[72];
  v7 = v0[66];
  v8 = v0[65];
  v13 = v0[63];
  v14 = v0[68];
  v12 = v0[60];

  sub_2259BEF00(v2, v1);
  sub_2259BEF00(v4, v3);
  sub_2259BEF00(0, 0xC000000000000000);
  sub_2259BEF00(v6, v5);

  sub_2259BEF00(v6, v5);
  sub_225A915D0(v12, type metadata accessor for ISO18013MobileSecurityObject);
  sub_225A915D0(v13, type metadata accessor for ISO18013MobileSecurityObject.ValidityInfo);
  v9 = *(v7 + 8);
  v9(v14, v8);
  v9(v15, v8);
  sub_225A915D0(v16, type metadata accessor for ISO18013MobileSecurityObject.DeviceKeyInfo);

  v10 = v0[1];

  return v10();
}

uint64_t CredentialBuilderPayloadStatusDetails.asMSOStatus.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v7 = *(v1 + 24);
  *(a1 + 24) = v7;
  *(a1 + 40) = v5;
  sub_2259CB710(v2, v3);
  sub_2259CB710(v4, v7);
}

unint64_t sub_225A8EBDC(uint64_t a1, unint64_t a2)
{
  sub_225CCF204();

  sub_225B34448(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0);
  sub_2259D8B24(&qword_281059B20, &qword_27D73DCB0);
  v4 = sub_225CCE384();
  v6 = v5;

  MEMORY[0x22AA6CE70](v4, v6);

  return 0xD00000000000001FLL;
}

unint64_t sub_225A8ECEC(uint64_t a1)
{
  sub_225CCF204();

  sub_225B34448(*(a1 + 32), *(a1 + 40));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0);
  sub_2259D8B24(&qword_281059B20, &qword_27D73DCB0);
  v2 = sub_225CCE384();
  v4 = v3;

  MEMORY[0x22AA6CE70](v2, v4);

  return 0xD000000000000024;
}

id IdentityCredentialPayloadBuilder.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id IdentityCredentialPayloadBuilder.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IdentityCredentialPayloadBuilder();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CredentialBuilderPayloadDetails.docType.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t CredentialBuilderPayloadDetails.validUntil.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CredentialBuilderPayloadDetails(0) + 32);
  v4 = sub_225CCD0B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CredentialBuilderPayloadDetails.timePolicy.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for CredentialBuilderPayloadDetails(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t CredentialBuilderPayloadDetails.deviceKey.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CredentialBuilderPayloadDetails(0) + 40);
  v4 = sub_225CCD494();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CredentialBuilderPayloadDetails.deviceKeyAuthorizations.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for CredentialBuilderPayloadDetails(0) + 44));
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;

  return sub_225A90C50(v4);
}

uint64_t CredentialBuilderPayloadDetails.digestAlgorithm.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for CredentialBuilderPayloadDetails(0);
  *a1 = *(v1 + *(result + 52));
  return result;
}

uint64_t CredentialBuilderPayloadDetails.status.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for CredentialBuilderPayloadDetails(0) + 56));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;

  return sub_225A90C98(v4, v5, v6, v7, v8, v9);
}

uint64_t CredentialBuilderPayloadDetails.KeyAuthorizations.init(namespaces:dataElements:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t CredentialBuilderPayloadDetails.Element.elementIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

__n128 CredentialBuilderPayloadDetails.init(format:docType:elements:validFrom:validUntil:timePolicy:deviceKey:deviceKeyAuthorizations:signingAlgorithm:digestAlgorithm:status:)@<Q0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, uint64_t a11, char *a12, uint64_t a13)
{
  v16 = *a7;
  v18 = *a10;
  v17 = a10[1];
  v19 = *a12;
  v20 = *(a13 + 40);
  v31 = *(a13 + 32);
  *a9 = *a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  v21 = type metadata accessor for CredentialBuilderPayloadDetails(0);
  sub_2259D88EC(a5, a9 + v21[7], &unk_27D73FD00);
  v22 = v21[8];
  v23 = sub_225CCD0B4();
  v29 = *(a13 + 16);
  v30 = *a13;
  (*(*(v23 - 8) + 32))(a9 + v22, a6, v23);
  *(a9 + v21[9]) = v16;
  v24 = v21[10];
  v25 = sub_225CCD494();
  (*(*(v25 - 8) + 32))(a9 + v24, a8, v25);
  v26 = (a9 + v21[11]);
  *v26 = v18;
  v26[1] = v17;
  *(a9 + v21[12]) = a11;
  *(a9 + v21[13]) = v19;
  v27 = a9 + v21[14];
  result = v30;
  *v27 = v30;
  *(v27 + 16) = v29;
  *(v27 + 32) = v31;
  *(v27 + 40) = v20;
  return result;
}

uint64_t CredentialBuilderSignatureDetails.issuerKey.getter()
{
  v1 = *(v0 + 16);
  sub_2259CB6FC(v1, *(v0 + 24));
  return v1;
}

uint64_t CredentialBuilderSignatureDetails.signature.getter()
{
  v1 = *(v0 + 32);
  sub_2259CB710(v1, *(v0 + 40));
  return v1;
}

double CredentialBuilderSignatureDetails.init(signingAlgorithm:issuerCertificate:signature:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  result = 0.0;
  *(a5 + 16) = xmmword_225CD3100;
  *(a5 + 32) = a3;
  *(a5 + 40) = a4;
  return result;
}

uint64_t CredentialBuilderSignatureDetails.init(signingAlgorithm:issuerKey:signature:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = 0;
  a6[2] = a2;
  a6[3] = a3;
  a6[4] = a4;
  a6[5] = a5;
  return result;
}

CoreIDVShared::CredentialBuilderPayloadFormat_optional __swiftcall CredentialBuilderPayloadFormat.init(rawValue:)(Swift::UInt rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

CoreIDVShared::CredentialBuilderTimePolicy_optional __swiftcall CredentialBuilderTimePolicy.init(rawValue:)(Swift::UInt rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t CredentialBuilderPayloadStatusDetails.identifier.getter()
{
  v1 = *v0;
  sub_2259CB710(*v0, *(v0 + 8));
  return v1;
}

uint64_t CredentialBuilderPayloadStatusDetails.certificate.getter()
{
  v1 = *(v0 + 16);
  sub_2259CB710(v1, *(v0 + 24));
  return v1;
}

uint64_t CredentialBuilderPayloadStatusDetails.uri.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t CredentialBuilderPayloadStatusDetails.init(identifier:certificate:uri:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t sub_225A8F568(uint64_t a1, uint64_t a2)
{
  result = sub_225CCCA44();
  if (!result || (result = sub_225CCCA74(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_225CCCA64();
      sub_225CCE164();
      sub_225A91708(&qword_27D73AE10, MEMORY[0x277CC5540]);
      return sub_225CCDB74();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_225A8F648(char *a1)
{
  v2 = sub_225CCF454();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *a1;
  sub_225CCD424();
  swift_allocObject();
  v8 = sub_225CCD414();
  if (v7)
  {
    if (qword_27D739F70 != -1)
    {
      swift_once();
    }

    v9 = __swift_project_value_buffer(v2, qword_27D73D120);
    (*(v3 + 16))(v6, v9, v2);
    v15 = &type metadata for ISO18013CodingKeyFormat;
    v14[0] = 1;
  }

  else
  {
    if (qword_27D739F70 != -1)
    {
      swift_once();
    }

    v10 = __swift_project_value_buffer(v2, qword_27D73D120);
    (*(v3 + 16))(v6, v10, v2);
    v15 = &type metadata for ISO18013CodingKeyFormat;
    v14[0] = 0;
  }

  v11 = sub_225CCD404();
  sub_225A0528C(v14, v6);
  v11(v13, 0);
  return v8;
}

uint64_t sub_225A8F830(size_t a1)
{
  v6 = v1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v12 = &v26 - v11;
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    v10 = sub_225B29AA0((v11 > 1), v6, 1, v10);
LABEL_10:
    *(v10 + 2) = v6;
    v21 = &v10[56 * v3];
    *(v21 + 4) = 0xD000000000000024;
    *(v21 + 5) = v5;
    v22 = v27;
    *(v21 + 6) = 0xD000000000000022;
    *(v21 + 7) = v22;
    v23 = v26;
    *(v21 + 8) = 0xD000000000000020;
    *(v21 + 9) = v23;
    *(v21 + 10) = 219;
    *v2 = v4;
    *(v2 + 8) = v10;
    *(v2 + 16) = 0xD000000000000024;
    *(v2 + 24) = v5;
    *(v2 + 32) = v12;
    *(v2 + 40) = 0;
    return swift_willThrow();
  }

  if (a1)
  {
    v13 = sub_225CCE874();
    *(v13 + 16) = a1;
    bzero((v13 + 32), a1);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  if (SecRandomCopyBytes(*MEMORY[0x277CDC540], a1, (v13 + 32)))
  {

    v5 = 0x8000000225D1B360;
    v26 = 0x8000000225D1B390;
    v27 = 0x8000000225D1B1F0;
    v14 = MEMORY[0x277D84F90];
    v15 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v2 = v16;
    v17 = sub_225CCE954();
    v18 = *(v17 - 8);
    (*(v18 + 56))(v12, 1, 1, v17);
    LODWORD(v17) = (*(v18 + 48))(v12, 1, v17);
    sub_2259CB640(v12, &unk_27D73B050);
    if (v17)
    {
      v4 = 371;
    }

    else
    {
      v4 = 23;
    }

    v19 = sub_225B2C374(v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v19;
    sub_225B2C4A0(v15, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v28);

    v12 = v28;
    v10 = sub_225B29AA0(0, 1, 1, v14);
    v3 = *(v10 + 2);
    v11 = *(v10 + 3);
    v6 = v3 + 1;
    if (v3 < v11 >> 1)
    {
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  v25 = sub_2259D8490(v13);

  return v25;
}

uint64_t sub_225A8FB40(uint64_t a1)
{
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B3D0);
  v106 = *(v112 - 8);
  v3 = MEMORY[0x28223BE20](v112, v2);
  v119 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v93 - v7;
  MEMORY[0x28223BE20](v6, v9);
  v107 = &v93 - v10;
  v111 = type metadata accessor for ISO18013IssuerSignedItem();
  v12 = MEMORY[0x28223BE20](v111, v11);
  v14 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v122 = (&v93 - v16);
  v110 = type metadata accessor for CredentialBuilderPayloadDetails.Element(0);
  v103 = *(v110 - 8);
  MEMORY[0x28223BE20](v110, v17);
  v19 = (&v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BDD0);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v22);
  v102 = (&v93 - v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BDD8);
  v26 = MEMORY[0x28223BE20](v24 - 8, v25);
  v28 = &v93 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v29);
  v117 = &v93 - v30;
  v101 = sub_225B2D788(MEMORY[0x277D84F90]);
  LOBYTE(v124) = *a1;
  v113 = sub_225A8F648(&v124);
  v31 = *(a1 + 24);
  v34 = *(v31 + 64);
  v33 = v31 + 64;
  v32 = v34;
  v35 = 1 << *(*(a1 + 24) + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & v32;
  v100 = (v35 + 63) >> 6;
  v114 = (v21 + 48);
  v115 = (v21 + 56);

  v39 = 0;
  v109 = v19;
  v105 = v20;
  v98 = v38;
  v104 = v28;
  v94 = v33;
LABEL_4:
  if (v37)
  {
    v40 = v39;
    v41 = v117;
  }

  else
  {
    v41 = v117;
    do
    {
      v40 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        goto LABEL_41;
      }

      if (v40 >= v100)
      {

        return v101;
      }

      v37 = *(v33 + 8 * v40);
      ++v39;
    }

    while (!v37);
  }

  v97 = (v37 - 1) & v37;
  v96 = v40;
  v42 = __clz(__rbit64(v37)) | (v40 << 6);
  v43 = *(v38 + 56);
  v44 = (*(v38 + 48) + 16 * v42);
  v45 = v44[1];
  v95 = *v44;
  v46 = *(v43 + 8 * v42);
  v99 = v45;

  v47 = sub_225B2D79C(MEMORY[0x277D84F90]);
  v48 = 0;
  v49 = *(v46 + 16);
  v116 = v46;
  v108 = v49;
  while (1)
  {
    if (v48 == v49)
    {
      v50 = 1;
      v120 = v49;
    }

    else
    {
      if ((v48 & 0x8000000000000000) != 0)
      {
        goto LABEL_42;
      }

      if (v48 >= *(v46 + 16))
      {
        goto LABEL_43;
      }

      v51 = v48 + 1;
      v52 = v46 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v48;
      v53 = *(v20 + 48);
      v54 = v102;
      *v102 = v48;
      sub_225A90CF4(v52, v54 + v53, type metadata accessor for CredentialBuilderPayloadDetails.Element);
      sub_2259D88EC(v54, v28, &qword_27D73BDD0);
      v50 = 0;
      v120 = v51;
    }

    (*v115)(v28, v50, 1, v20);
    sub_2259D88EC(v28, v41, &qword_27D73BDD8);
    if ((*v114)(v41, 1, v20) == 1)
    {

      v90 = v101;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v124 = v90;
      sub_225A044D0(v47, v95, v99, isUniquelyReferenced_nonNull_native);

      v101 = v124;
      v39 = v96;
      v38 = v98;
      v33 = v94;
      v37 = v97;
      goto LABEL_4;
    }

    v121 = v47;
    v55 = *v41;
    sub_225A91568(v41 + *(v20 + 48), v19, type metadata accessor for CredentialBuilderPayloadDetails.Element);
    v56 = v123;
    v57 = sub_225A8F830(0x20uLL);
    v123 = v56;
    if (v56)
    {

      sub_225A915D0(v19, type metadata accessor for CredentialBuilderPayloadDetails.Element);
LABEL_36:

      return v101;
    }

    if (v55 < 0)
    {
      break;
    }

    v59 = v57;
    v60 = v58;
    v61 = v8;
    v62 = v19;
    v64 = *v19;
    v63 = v19[1];
    v65 = v122;
    sub_225A90CF4(v62 + *(v110 + 20), v122 + *(v111 + 28), type metadata accessor for AnyCodable);
    *v65 = v55;
    v65[1] = v59;
    v65[2] = v60;
    v65[3] = v64;
    v118 = v64;
    v65[4] = v63;
    sub_225A90CF4(v65, v14, type metadata accessor for ISO18013IssuerSignedItem);
    *v61 = 24;
    v66 = *(v112 + 48);
    sub_225A90CF4(v14, &v61[v66], type metadata accessor for ISO18013IssuerSignedItem);
    sub_225A91708(&qword_27D73BC98, type metadata accessor for ISO18013IssuerSignedItem);

    v67 = v123;
    v68 = sub_225CCD3F4();
    if (v67)
    {

      sub_225A915D0(v14, type metadata accessor for ISO18013IssuerSignedItem);
      sub_225A915D0(v122, type metadata accessor for ISO18013IssuerSignedItem);

      sub_225A915D0(v109, type metadata accessor for CredentialBuilderPayloadDetails.Element);
      sub_225A915D0(&v61[v66], type metadata accessor for ISO18013IssuerSignedItem);
      goto LABEL_36;
    }

    v70 = v68;
    v71 = v69;
    v123 = 0;
    v72 = v14;
    sub_225A915D0(v14, type metadata accessor for ISO18013IssuerSignedItem);

    *(v61 + 1) = v70;
    *(v61 + 2) = v71;
    v73 = v61;
    v74 = v107;
    sub_2259D88EC(v61, v107, &qword_27D73B3D0);
    sub_2259D88EC(v74, v119, &qword_27D73B3D0);
    v75 = v121;
    v76 = swift_isUniquelyReferenced_nonNull_native();
    v124 = v75;
    v77 = v118;
    v79 = sub_2259F18D4(v118, v63);
    v80 = v75[2];
    v81 = (v78 & 1) == 0;
    v82 = v80 + v81;
    if (__OFADD__(v80, v81))
    {
      goto LABEL_40;
    }

    v83 = v78;
    if (v75[3] >= v82)
    {
      v41 = v117;
      if (v76)
      {
        v47 = v124;
        if (v78)
        {
          goto LABEL_11;
        }
      }

      else
      {
        sub_225A447F4();
        v47 = v124;
        if (v83)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
      sub_225A413F0(v82, v76);
      v84 = sub_2259F18D4(v77, v63);
      v41 = v117;
      if ((v83 & 1) != (v85 & 1))
      {
        goto LABEL_45;
      }

      v79 = v84;
      v47 = v124;
      if (v83)
      {
LABEL_11:
        sub_225A91698(v119, v47[7] + *(v106 + 72) * v79);
        sub_225A915D0(v122, type metadata accessor for ISO18013IssuerSignedItem);
        goto LABEL_12;
      }
    }

    v47[(v79 >> 6) + 8] |= 1 << v79;
    v86 = (v47[6] + 16 * v79);
    *v86 = v77;
    v86[1] = v63;
    sub_2259D88EC(v119, v47[7] + *(v106 + 72) * v79, &qword_27D73B3D0);

    sub_225A915D0(v122, type metadata accessor for ISO18013IssuerSignedItem);
    v87 = v47[2];
    v88 = __OFADD__(v87, 1);
    v89 = v87 + 1;
    if (v88)
    {
      goto LABEL_44;
    }

    v47[2] = v89;
LABEL_12:
    v19 = v109;
    sub_225A915D0(v109, type metadata accessor for CredentialBuilderPayloadDetails.Element);
    v8 = v73;
    v14 = v72;
    v28 = v104;
    v20 = v105;
    v46 = v116;
    v49 = v108;
    v48 = v120;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  result = sub_225CCFAC4();
  __break(1u);
  return result;
}

uint64_t sub_225A90588(uint64_t a1)
{
  v2 = &unk_225CDC650;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B3D0);
  v89 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v7 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v84 = &v74 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BDC0);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v14 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v87 = (&v74 - v16);
  v17 = sub_225B2D788(MEMORY[0x277D84F90]);
  v18 = a1 + 64;
  v19 = 1 << *(a1 + 32);
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & *(a1 + 64);
  v22 = (v19 + 63) >> 6;
  v76 = a1;

  v23 = 0;
  v88 = v14;
  v74 = v22;
  v75 = a1 + 64;
  v83 = v7;
LABEL_6:
  if (v21)
  {
    v81 = v17;
    v26 = v23;
LABEL_12:
    v79 = v26;
    v80 = (v21 - 1) & v21;
    v27 = __clz(__rbit64(v21)) | (v26 << 6);
    v28 = *(v76 + 56);
    v29 = (*(v76 + 48) + 16 * v27);
    v30 = v29[1];
    v77 = *v29;
    v78 = v30;
    v31 = *(v28 + 8 * v27);

    v32 = sub_225B2D79C(MEMORY[0x277D84F90]);
    v33 = 0;
    v34 = *(v31 + 64);
    v82 = v31 + 64;
    v85 = v31;
    v35 = 1 << *(v31 + 32);
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    else
    {
      v36 = -1;
    }

    v37 = v36 & v34;
    v38 = (v35 + 63) >> 6;
    v39 = v2;
    v86 = v38;
    while (v37)
    {
      v40 = v33;
LABEL_27:
      v43 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
      v44 = v43 | (v40 << 6);
      v45 = v84;
      v46 = (*(v85 + 48) + 16 * v44);
      v48 = *v46;
      v47 = v46[1];
      sub_225A0DE54(*(v85 + 56) + *(v89 + 72) * v44, v84, &qword_27D73B3D0);
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BDC8);
      v50 = *(v49 + 48);
      v51 = v88;
      *v88 = v48;
      *(v51 + 1) = v47;
      v14 = v51;
      sub_2259D88EC(v45, &v51[v50], &qword_27D73B3D0);
      (*(*(v49 - 8) + 56))(v14, 0, 1, v49);

      v42 = v40;
      v7 = v83;
LABEL_28:
      v52 = v87;
      sub_2259D88EC(v14, v87, &qword_27D73BDC0);
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BDC8);
      if ((*(*(v53 - 8) + 48))(v52, 1, v53) == 1)
      {
        v2 = v39;

        v24 = v81;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v91 = v24;
        sub_225A044D0(v32, v77, v78, isUniquelyReferenced_nonNull_native);

        v17 = v91;
        v23 = v79;
        v21 = v80;
        v22 = v74;
        v18 = v75;
        goto LABEL_6;
      }

      v90 = v42;
      v54 = v52;
      v56 = *v52;
      v55 = v52[1];
      sub_2259D88EC(v54 + *(v53 + 48), v7, &qword_27D73B3D0);
      v57 = swift_isUniquelyReferenced_nonNull_native();
      v91 = v32;
      v59 = sub_2259F18D4(v56, v55);
      v60 = v32[2];
      v61 = (v58 & 1) == 0;
      v62 = v60 + v61;
      if (__OFADD__(v60, v61))
      {
        goto LABEL_41;
      }

      v63 = v58;
      if (v32[3] >= v62)
      {
        if ((v57 & 1) == 0)
        {
          sub_225A447F4();
        }
      }

      else
      {
        sub_225A413F0(v62, v57);
        v64 = sub_2259F18D4(v56, v55);
        if ((v63 & 1) != (v65 & 1))
        {
          goto LABEL_44;
        }

        v59 = v64;
      }

      if (v63)
      {

        v32 = v91;
        sub_225A91698(v7, v91[7] + *(v89 + 72) * v59);
        v33 = v90;
        v39 = &unk_225CDC650;
      }

      else
      {
        v32 = v91;
        v91[(v59 >> 6) + 8] |= 1 << v59;
        v66 = (v32[6] + 16 * v59);
        *v66 = v56;
        v66[1] = v55;
        v67 = v32[7] + *(v89 + 72) * v59;
        v39 = &unk_225CDC650;
        sub_2259D88EC(v7, v67, &qword_27D73B3D0);
        v68 = v32[2];
        v69 = __OFADD__(v68, 1);
        v70 = v68 + 1;
        v71 = v90;
        if (v69)
        {
          goto LABEL_42;
        }

        v32[2] = v70;
        v33 = v71;
      }

      v14 = v88;
      v38 = v86;
    }

    if (v38 <= v33 + 1)
    {
      v41 = v33 + 1;
    }

    else
    {
      v41 = v38;
    }

    v42 = v41 - 1;
    while (1)
    {
      v40 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v40 >= v38)
      {
        v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BDC8);
        (*(*(v72 - 8) + 56))(v14, 1, 1, v72);
        v37 = 0;
        goto LABEL_28;
      }

      v37 = *(v82 + 8 * v40);
      ++v33;
      if (v37)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
  }

  else
  {
    while (1)
    {
      v26 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v26 >= v22)
      {

        return v17;
      }

      v21 = *(v18 + 8 * v26);
      ++v23;
      if (v21)
      {
        v81 = v17;
        goto LABEL_12;
      }
    }
  }

  __break(1u);
LABEL_44:
  result = sub_225CCFAC4();
  __break(1u);
  return result;
}

unint64_t sub_225A90BDC()
{
  result = qword_27D73BD70;
  if (!qword_27D73BD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BD70);
  }

  return result;
}

uint64_t sub_225A90C50(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_225A90C98(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
    sub_2259CB710(result, a2);
    sub_2259CB710(a3, a4);
  }

  return result;
}

uint64_t sub_225A90CF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_225A90D60()
{
  result = qword_27D73BD78;
  if (!qword_27D73BD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BD78);
  }

  return result;
}

unint64_t sub_225A90DB8()
{
  result = qword_27D73BD80;
  if (!qword_27D73BD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BD80);
  }

  return result;
}

uint64_t dispatch thunk of IdentityCredentialPayloadBuilderDelegate.signPayload(builder:dataToSign:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 8) + **(a6 + 8));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_2259FE39C;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of IdentityCredentialPayloadBuilder.buildPayload(with:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x88);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_225A01DDC;

  return v7(a1);
}

void sub_225A910DC()
{
  sub_225A84EEC();
  if (v0 <= 0x3F)
  {
    sub_225A91220();
    if (v1 <= 0x3F)
    {
      sub_225CCD0B4();
      if (v2 <= 0x3F)
      {
        sub_225CCD494();
        if (v3 <= 0x3F)
        {
          sub_225A62224(319, &qword_27D73BD98);
          if (v4 <= 0x3F)
          {
            type metadata accessor for COSEAlgorithm(319);
            if (v5 <= 0x3F)
            {
              sub_225A62224(319, &qword_27D73BDA0);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_225A91220()
{
  if (!qword_28105B788)
  {
    sub_225CCD0B4();
    v0 = sub_225CCEFC4();
    if (!v1)
    {
      atomic_store(v0, &qword_28105B788);
    }
  }
}

uint64_t sub_225A91278(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_225A912D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_225A9135C()
{
  result = type metadata accessor for AnyCodable();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_225A913D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_225A91434(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_225A914C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_225A9150C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_225A91568(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_225A915D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_225A91698(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B3D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_225A91708(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ProofingDisplayMessageAction.title.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ProofingDisplayMessageAction.init(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73E090);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v21 - v6;
  v8 = [a1 objectID];
  v9 = [a1 title];
  if (v9)
  {
    v10 = v9;
    v11 = sub_225CCE474();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = [a1 actionType];
  v15 = [a1 actionURL];
  if (v15)
  {
    v16 = v15;
    sub_225CCCE34();

    v17 = sub_225CCCEA4();
    (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  }

  else
  {

    v18 = sub_225CCCEA4();
    (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  }

  *a2 = v8;
  a2[1] = v11;
  a2[2] = v13;
  a2[3] = v14;
  v19 = type metadata accessor for ProofingDisplayMessageAction(0);
  return sub_2259D88EC(v7, a2 + *(v19 + 28), &unk_27D73E090);
}

uint64_t ProofingDisplayMessage.title.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ProofingDisplayMessage.message.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void ProofingDisplayMessage.init(_:)(void *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73E090);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v50 - v6;
  v8 = type metadata accessor for ProofingDisplayMessageAction(0);
  v60 = *(v8 - 8);
  v61 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = [a1 objectID];
  v12 = [a1 title];
  if (v12)
  {
    v13 = v12;
    v14 = sub_225CCE474();
    v54 = v15;
    v55 = v14;
  }

  else
  {
    v54 = 0;
    v55 = 0;
  }

  v16 = [a1 message];
  if (v16)
  {
    v17 = v16;
    v18 = sub_225CCE474();
    v52 = v19;
    v53 = v18;
  }

  else
  {
    v52 = 0;
    v53 = 0;
  }

  v20 = [a1 actions];
  if (!v20)
  {

LABEL_37:
    v30 = MEMORY[0x277D84F90];
LABEL_38:
    v48 = v55;
    *a2 = v56;
    a2[1] = v48;
    v49 = v53;
    a2[2] = v54;
    a2[3] = v49;
    a2[4] = v52;
    a2[5] = v30;
    return;
  }

  v51 = a1;
  v21 = v20;
  v22 = [v20 array];

  v23 = sub_225CCE814();
  v24 = MEMORY[0x277D84F90];
  v66 = MEMORY[0x277D84F90];
  v25 = *(v23 + 16);
  if (v25)
  {
    v26 = v23 + 32;
    v27 = MEMORY[0x277D84F90];
    do
    {
      sub_2259CB810(v26, v65);
      sub_2259B9624(v65, &v63);
      type metadata accessor for StoredProofingDisplayMessageAction();
      if ((swift_dynamicCast() & 1) != 0 && v64)
      {
        MEMORY[0x22AA6D020]();
        if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v62 = v11;
          sub_225CCE844();
          v11 = v62;
        }

        sub_225CCE884();
        v27 = v66;
      }

      v26 += 32;
      --v25;
    }

    while (v25);

    if (!(v27 >> 62))
    {
LABEL_17:
      v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v28)
      {
        goto LABEL_18;
      }

      goto LABEL_36;
    }
  }

  else
  {

    v27 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_17;
    }
  }

  v28 = sub_225CCF144();
  if (!v28)
  {
LABEL_36:

    goto LABEL_37;
  }

LABEL_18:
  v59 = v27;
  *&v65[0] = v24;
  sub_2259D5398(0, v28 & ~(v28 >> 63), 0);
  if ((v28 & 0x8000000000000000) == 0)
  {
    v50 = a2;
    v29 = 0;
    v30 = *&v65[0];
    v31 = v59;
    v57 = v59 & 0xC000000000000001;
    v58 = v28;
    do
    {
      if (v57)
      {
        v32 = MEMORY[0x22AA6DA80](v29);
      }

      else
      {
        v32 = *(v31 + 8 * v29 + 32);
      }

      v33 = v32;
      v62 = [v32 objectID];
      v34 = [v33 title];
      if (v34)
      {
        v35 = v34;
        v36 = sub_225CCE474();
        v38 = v37;
      }

      else
      {
        v36 = 0;
        v38 = 0;
      }

      v39 = v11;
      v40 = [v33 actionType];
      v41 = [v33 actionURL];
      if (v41)
      {
        v42 = v41;
        sub_225CCCE34();

        v43 = 0;
        v33 = v42;
      }

      else
      {
        v43 = 1;
      }

      v44 = sub_225CCCEA4();
      (*(*(v44 - 8) + 56))(v7, v43, 1, v44);
      v11 = v39;
      v45 = v61;
      *v39 = v62;
      *(v39 + 1) = v36;
      *(v39 + 2) = v38;
      *(v39 + 3) = v40;
      sub_2259D88EC(v7, &v39[*(v45 + 28)], &unk_27D73E090);
      *&v65[0] = v30;
      v47 = *(v30 + 16);
      v46 = *(v30 + 24);
      if (v47 >= v46 >> 1)
      {
        sub_2259D5398(v46 > 1, v47 + 1, 1);
        v30 = *&v65[0];
      }

      ++v29;
      *(v30 + 16) = v47 + 1;
      sub_225A936EC(v39, v30 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v47);
      v31 = v59;
    }

    while (v58 != v29);

    a2 = v50;
    goto LABEL_38;
  }

  __break(1u);
}

uint64_t ProofingSession.country.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ProofingSession.credentialIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for ProofingSession(0) + 40));

  return v1;
}

uint64_t ProofingSession.extendedReviewURLString.getter()
{
  v1 = *(v0 + *(type metadata accessor for ProofingSession(0) + 56));

  return v1;
}

uint64_t ProofingSession.documentType.getter()
{
  v1 = *(v0 + *(type metadata accessor for ProofingSession(0) + 64));

  return v1;
}

uint64_t ProofingSession.lastExecutedActionIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for ProofingSession(0) + 72));

  return v1;
}

uint64_t ProofingSession.learnMoreURLString.getter()
{
  v1 = *(v0 + *(type metadata accessor for ProofingSession(0) + 76));

  return v1;
}

uint64_t ProofingSession.pairingID.getter()
{
  v1 = *(v0 + *(type metadata accessor for ProofingSession(0) + 84));

  return v1;
}

uint64_t ProofingSession.partnerSchemeID.getter()
{
  v1 = *(v0 + *(type metadata accessor for ProofingSession(0) + 88));

  return v1;
}

uint64_t ProofingSession.productIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for ProofingSession(0) + 92));

  return v1;
}

uint64_t ProofingSession.proofingSessionID.getter()
{
  v1 = *(v0 + *(type metadata accessor for ProofingSession(0) + 100));

  return v1;
}

uint64_t ProofingSession.provisioningCredentialID.getter()
{
  v1 = *(v0 + *(type metadata accessor for ProofingSession(0) + 108));

  return v1;
}

uint64_t ProofingSession.provisioningTargetInstanceID.getter()
{
  v1 = *(v0 + *(type metadata accessor for ProofingSession(0) + 116));

  return v1;
}

uint64_t ProofingSession.serverAttestedProvisioningData.getter()
{
  v1 = v0 + *(type metadata accessor for ProofingSession(0) + 120);
  v2 = *v1;
  sub_2259CB6FC(*v1, *(v1 + 8));
  return v2;
}

uint64_t ProofingSession.state.getter()
{
  v1 = *(v0 + *(type metadata accessor for ProofingSession(0) + 132));

  return v1;
}

uint64_t ProofingSession.supplementalProvisioningData.getter()
{
  v1 = v0 + *(type metadata accessor for ProofingSession(0) + 136);
  v2 = *v1;
  sub_2259CB6FC(*v1, *(v1 + 8));
  return v2;
}

uint64_t ProofingSession.workflowID.getter()
{
  v1 = *(v0 + *(type metadata accessor for ProofingSession(0) + 148));

  return v1;
}

uint64_t ProofingSession.livenessManualReviewEncryptedMessage.getter()
{
  v1 = v0 + *(type metadata accessor for ProofingSession(0) + 152);
  v2 = *v1;
  sub_2259CB6FC(*v1, *(v1 + 8));
  return v2;
}

uint64_t ProofingSession.piiTokenIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for ProofingSession(0) + 156));

  return v1;
}

uint64_t ProofingSession.proofingErrorMessage.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ProofingSession(0) + 160));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;

  return sub_225A93770(v4);
}

uint64_t ProofingSession.uploadAssets.getter()
{
  type metadata accessor for ProofingSession(0);
}

uint64_t ProofingSession.init(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v209 = a2;
  v3 = sub_225CCCD54();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v145 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD00);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v12 = &v145 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v145 - v14;
  v206 = [a1 objectID];
  v205 = [a1 canUploadOnExpensiveNetwork];
  v204 = [a1 cloudKitUploadsMaxRetryCount];
  v203 = [a1 connectToWifiReminderInDays];
  v16 = [a1 country];
  if (v16)
  {
    v17 = v16;
    v202 = sub_225CCE474();
    v201 = v18;
  }

  else
  {
    v202 = 0;
    v201 = 0;
  }

  v19 = [a1 createdAt];
  if (v19)
  {
    v20 = v19;
    sub_225CCD094();

    v21 = sub_225CCD0B4();
    (*(*(v21 - 8) + 56))(v15, 0, 1, v21);
  }

  else
  {
    v22 = sub_225CCD0B4();
    (*(*(v22 - 8) + 56))(v15, 1, 1, v22);
  }

  v23 = [a1 credentialIdentifier];
  if (v23)
  {
    v24 = v23;
    v200 = sub_225CCE474();
    v199 = v25;
  }

  else
  {
    v200 = 0;
    v199 = 0;
  }

  v198 = [a1 didAttemptComboProofing];
  v197 = [a1 didNotifyOnUploadsCompletion];
  v196 = [a1 didShowWifiReminderAlert];
  v26 = [a1 extendedReviewURLString];
  if (v26)
  {
    v27 = v26;
    v195 = sub_225CCE474();
    v194 = v28;
  }

  else
  {
    v195 = 0;
    v194 = 0;
  }

  v193 = [a1 hasUserConsentToShareBiomeData];
  v29 = [a1 documentType];
  if (v29)
  {
    v30 = v29;
    v192 = sub_225CCE474();
    v191 = v31;
  }

  else
  {
    v192 = 0;
    v191 = 0;
  }

  v190 = [a1 issuerCurrentCredentialCapacity];
  v32 = [a1 lastExecutedActionIdentifier];
  if (v32)
  {
    v33 = v32;
    v189 = sub_225CCE474();
    v188 = v34;
  }

  else
  {
    v189 = 0;
    v188 = 0;
  }

  v35 = [a1 learnMoreURLString];
  if (v35)
  {
    v36 = v35;
    v187 = sub_225CCE474();
    v186 = v37;
  }

  else
  {
    v187 = 0;
    v186 = 0;
  }

  v185 = [a1 manualCheckInterval];
  v38 = [a1 pairingID];
  if (v38)
  {
    v39 = v38;
    v184 = sub_225CCE474();
    v183 = v40;
  }

  else
  {
    v184 = 0;
    v183 = 0;
  }

  v41 = [a1 partnerSchemeID];
  if (v41)
  {
    v42 = v41;
    v182 = sub_225CCE474();
    v181 = v43;
  }

  else
  {
    v182 = 0;
    v181 = 0;
  }

  v44 = [a1 productIdentifier];
  if (v44)
  {
    v45 = v44;
    v180 = sub_225CCE474();
    v179 = v46;
  }

  else
  {
    v180 = 0;
    v179 = 0;
  }

  v178 = [a1 proofingActionStatus];
  v47 = [a1 proofingSessionID];
  if (v47)
  {
    v48 = v47;
    v177 = sub_225CCE474();
    v176 = v49;
  }

  else
  {
    v177 = 0;
    v176 = 0;
  }

  v50 = [a1 provisioningAttemptDate];
  if (v50)
  {
    v51 = v50;
    sub_225CCD094();

    v52 = 0;
  }

  else
  {
    v52 = 1;
  }

  v53 = sub_225CCD0B4();
  (*(*(v53 - 8) + 56))(v12, v52, 1, v53);
  v54 = [a1 provisioningCredentialID];
  if (v54)
  {
    v55 = v54;
    v175 = sub_225CCE474();
    v174 = v56;
  }

  else
  {
    v175 = 0;
    v174 = 0;
  }

  v173 = [a1 provisioningRetryTimeout];
  v57 = [a1 provisioningTargetInstanceID];
  if (v57)
  {
    v58 = v57;
    v172 = sub_225CCE474();
    v171 = v59;
  }

  else
  {
    v172 = 0;
    v171 = 0;
  }

  v60 = [a1 serverAttestedProvisioningData];
  if (v60)
  {
    v61 = v60;
    v170 = sub_225CCCFA4();
    v169 = v62;
  }

  else
  {
    v170 = 0;
    v169 = 0xF000000000000000;
  }

  v168 = [a1 shouldScheduleUploads];
  v167 = [a1 shouldShowNotificationOnWatch];
  v63 = [a1 state];
  if (v63)
  {
    v64 = v63;
    v166 = sub_225CCE474();
    v165 = v65;
  }

  else
  {
    v166 = 0;
    v165 = 0;
  }

  v66 = [a1 supplementalProvisioningData];
  if (v66)
  {
    v67 = v66;
    v164 = sub_225CCCFA4();
    v163 = v68;
  }

  else
  {
    v164 = 0;
    v163 = 0xF000000000000000;
  }

  v162 = [a1 target];
  v161 = [a1 totalUploadAssetsFileSizeInBytes];
  v69 = [a1 workflowID];
  if (v69)
  {
    v70 = v69;
    v160 = sub_225CCE474();
    v159 = v71;
  }

  else
  {
    v160 = 0;
    v159 = 0;
  }

  v72 = [a1 livenessManualReviewEncryptedMessage];
  if (v72)
  {
    v73 = v72;
    v158 = sub_225CCCFA4();
    v157 = v74;
  }

  else
  {
    v158 = 0;
    v157 = 0xF000000000000000;
  }

  v75 = [a1 piiTokenIdentifier];
  if (v75)
  {
    v76 = v75;
    v156 = sub_225CCE474();
    v155 = v77;
  }

  else
  {
    v156 = 0;
    v155 = 0;
  }

  v78 = [a1 proofingErrorMessage];
  if (v78)
  {
    ProofingDisplayMessage.init(_:)(v78, &v213);
    v153 = *(&v213 + 1);
    v154 = v213;
    v152 = v214;
    v151 = v215;
    v150 = v216;
    v149 = v217;
  }

  else
  {
    v154 = 0;
    v153 = 0;
    v152 = 0;
    v151 = 0;
    v150 = 0;
    v149 = 0;
  }

  v208 = v12;
  v79 = [a1 uploadAssets];
  v207 = v15;
  if (v79)
  {
    v147 = v4;
    v148 = a1;
    v146 = v79;
    sub_225CCEEF4();
    v80 = sub_225A937D0();
    sub_225CCF014();
    if (v215)
    {
      v81 = MEMORY[0x277D84F90];
      v210 = v80;
      do
      {
        sub_2259B9624(&v213, &v220);
        sub_2259CB810(&v220, v219);
        type metadata accessor for StoredUploadAsset();
        if (swift_dynamicCast())
        {
          v82 = v218;
          v212 = [v82 objectID];
          v83 = [v82 assetFileURL];
          if (v83)
          {
            v84 = v83;
            v211 = sub_225CCE474();
            v86 = v85;
          }

          else
          {
            v211 = 0;
            v86 = 0;
          }

          v87 = [v82 assetType];
          if (v87)
          {
            v88 = v87;
            v89 = sub_225CCE474();
            v91 = v90;
          }

          else
          {
            v89 = 0;
            v91 = 0;
          }

          v92 = v3;
          v93 = [v82 recordUUID];
          if (v93)
          {
            v94 = v93;
            v95 = sub_225CCE474();
            v97 = v96;
          }

          else
          {

            v95 = 0;
            v97 = 0;
          }

          __swift_destroy_boxed_opaque_existential_0(&v220);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v81 = sub_225B2A270(0, *(v81 + 2) + 1, 1, v81);
          }

          v99 = *(v81 + 2);
          v98 = *(v81 + 3);
          if (v99 >= v98 >> 1)
          {
            v81 = sub_225B2A270((v98 > 1), v99 + 1, 1, v81);
          }

          *(v81 + 2) = v99 + 1;
          v100 = &v81[56 * v99];
          v101 = v211;
          *(v100 + 4) = v212;
          *(v100 + 5) = v101;
          *(v100 + 6) = v86;
          *(v100 + 7) = v89;
          *(v100 + 8) = v91;
          *(v100 + 9) = v95;
          *(v100 + 10) = v97;
          v3 = v92;
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_0(&v220);
        }

        sub_225CCF014();
      }

      while (v215);
    }

    else
    {
      v81 = MEMORY[0x277D84F90];
    }

    (*(v147 + 8))(v7, v3);
  }

  else
  {

    v81 = MEMORY[0x277D84F90];
  }

  v102 = v209;
  *v209 = v206;
  *(v102 + 8) = v205;
  v103 = v203;
  v102[2] = v204;
  v102[3] = v103;
  v104 = v201;
  v102[4] = v202;
  v102[5] = v104;
  v105 = type metadata accessor for ProofingSession(0);
  sub_2259D88EC(v207, v102 + v105[9], &unk_27D73FD00);
  v106 = (v102 + v105[10]);
  v107 = v199;
  *v106 = v200;
  v106[1] = v107;
  *(v102 + v105[11]) = v198;
  *(v102 + v105[12]) = v197;
  *(v102 + v105[13]) = v196;
  v108 = (v102 + v105[14]);
  v109 = v194;
  *v108 = v195;
  v108[1] = v109;
  *(v102 + v105[15]) = v193;
  v110 = (v102 + v105[16]);
  v111 = v191;
  *v110 = v192;
  v110[1] = v111;
  *(v102 + v105[17]) = v190;
  v112 = (v102 + v105[18]);
  v113 = v188;
  *v112 = v189;
  v112[1] = v113;
  v114 = (v102 + v105[19]);
  v115 = v186;
  *v114 = v187;
  v114[1] = v115;
  *(v102 + v105[20]) = v185;
  v116 = (v102 + v105[21]);
  v117 = v183;
  *v116 = v184;
  v116[1] = v117;
  v118 = (v102 + v105[22]);
  v119 = v181;
  *v118 = v182;
  v118[1] = v119;
  v120 = (v102 + v105[23]);
  v121 = v179;
  *v120 = v180;
  v120[1] = v121;
  *(v102 + v105[24]) = v178;
  v122 = (v102 + v105[25]);
  v123 = v176;
  *v122 = v177;
  v122[1] = v123;
  result = sub_2259D88EC(v208, v102 + v105[26], &unk_27D73FD00);
  v125 = (v102 + v105[27]);
  v126 = v174;
  *v125 = v175;
  v125[1] = v126;
  *(v102 + v105[28]) = v173;
  v127 = (v102 + v105[29]);
  v128 = v171;
  *v127 = v172;
  v127[1] = v128;
  v129 = (v102 + v105[30]);
  v130 = v169;
  *v129 = v170;
  v129[1] = v130;
  *(v102 + v105[31]) = v168;
  *(v102 + v105[32]) = v167;
  v131 = (v102 + v105[33]);
  v132 = v165;
  *v131 = v166;
  v131[1] = v132;
  v133 = (v102 + v105[34]);
  v134 = v163;
  *v133 = v164;
  v133[1] = v134;
  *(v102 + v105[35]) = v162;
  *(v102 + v105[36]) = v161;
  v135 = (v102 + v105[37]);
  v136 = v159;
  *v135 = v160;
  v135[1] = v136;
  v137 = (v102 + v105[38]);
  v138 = v157;
  *v137 = v158;
  v137[1] = v138;
  v139 = (v102 + v105[39]);
  v140 = v155;
  *v139 = v156;
  v139[1] = v140;
  v141 = (v102 + v105[40]);
  v142 = v153;
  *v141 = v154;
  v141[1] = v142;
  v143 = v151;
  v141[2] = v152;
  v141[3] = v143;
  v144 = v149;
  v141[4] = v150;
  v141[5] = v144;
  *(v102 + v105[41]) = v81;
  return result;
}